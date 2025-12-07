uint64_t sub_100001DC0()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005A168);
  v1 = sub_100005D84(v0, qword_10005A168);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000021D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of APUISystemApertureElement._state()
{
  type metadata accessor for APUISystemApertureLayoutState(0);
  sub_100004B50(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);

  return EnvironmentObject.init()();
}

id variable initialization expression of APUISystemApertureElementHostingController.expandedUITransitionCoordinator()
{
  v0 = objc_allocWithZone(type metadata accessor for APUISystemApertureElementTransitionCoordinator());

  return [v0 init];
}

uint64_t variable initialization expression of APUISystemApertureElementHostingController.expandedUIHostingControllerLayoutState()
{
  type metadata accessor for APUISystemApertureLayoutState(0);
  v0 = swift_allocObject();
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  return v0;
}

void sub_1000023D8(uint64_t a1)
{
  *&v1[direct field offset for APUISystemApertureElementHostingController.activeLayoutMode] = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.contentRole] = 2;
  *&v1[direct field offset for APUISystemApertureElementHostingController.preferredLayoutMode] = 3;
  *&v1[direct field offset for APUISystemApertureElementHostingController.maximumLayoutMode] = 4;
  v3 = &v1[direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.elementIdentifier] = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress] = &_swiftEmptySetSingleton;
  v4 = qword_10005AA50;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for APUISystemApertureElementTransitionCoordinator()) init];
  *&v1[qword_10005AA58] = 0;
  v5 = qword_10005AA60;
  type metadata accessor for APUISystemApertureLayoutState(0);
  v6 = swift_allocObject();
  v112 = xmmword_10003DD50;
  v113 = xmmword_10003DD50;
  Published.init(initialValue:)();
  v111 = 0uLL;
  LOBYTE(v112) = 0;
  Published.init(initialValue:)();
  *&v1[v5] = v6;
  *&v1[direct field offset for APUISystemApertureElementHostingController.leadingView] = 0;
  *&v1[qword_10005AA68] = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.trailingView] = 0;
  *&v1[qword_10005AA70] = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.minimalView] = 0;
  *&v1[qword_10005AA78] = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.presentationBehaviors] = 1;
  v106.receiver = v1;
  v106.super_class = sub_100005D3C(&unk_10005A5C0, &qword_10003E480);
  v7 = objc_msgSendSuper2(&v106, "initWithNibName:bundle:", 0, 0);
  sub_100007FC8(a1, v107);
  v8 = *&v7[qword_10005AA60];
  sub_100004B50(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);

  v9 = static ObservableObject.environmentStore.getter();
  v99 = v107[2];
  v100 = v108;
  v101 = v109;
  *&v102 = v110;
  v97 = v107[0];
  v98 = v107[1];
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = *&v7[qword_10005AA50];
  v111 = v97;
  v112 = v98;
  v114 = v100;
  v115 = v101;
  v113 = v99;
  *&v116 = v102;
  *(&v116 + 1) = v9;
  *&v117 = v8;
  *(&v117 + 1) = KeyPath;
  LOBYTE(v118) = 1;
  *(&v118 + 1) = *v96;
  DWORD1(v118) = *&v96[3];
  *(&v118 + 1) = v11;
  v119 = v12;
  v102 = v116;
  v103 = v117;
  v104 = v118;
  v105 = v12;
  v13 = v12;
  sub_100005E7C(v107, v96);
  sub_1000064B0(&v111, v96, &qword_10005A5D0, &unk_10003E4E0);
  sub_100005D3C(&qword_10005A5D0, &unk_10003E4E0);
  sub_100005ED8();
  AnyView.init<A>(_:)();
  v14 = type metadata accessor for APUISystemApertureAccessoryViewController();
  v15 = objc_allocWithZone(v14);
  v16 = type metadata accessor for APUISystemApertureAccessoryView();
  v17 = objc_allocWithZone(v16);

  *&v15[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v18);
  v95.receiver = v15;
  v95.super_class = v14;
  v19 = objc_msgSendSuper2(&v95, "initWithNibName:bundle:", 0, 0);

  v20 = *&v7[qword_10005AA58];
  *&v7[qword_10005AA58] = v19;
  v21 = v19;

  v22 = v7;
  v23 = v21;
  [v22 addChildViewController:v23];
  v24 = [v22 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_42;
  }

  v25 = v24;
  v26 = [v23 view];

  if (!v26)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v25 addSubview:v26];

  [v23 didMoveToParentViewController:v22];
  v27 = objc_allocWithZone(v14);
  v28 = objc_allocWithZone(v16);
  v29 = swift_retain_n();
  *&v27[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v29);
  v94.receiver = v27;
  v94.super_class = v14;
  v30 = objc_msgSendSuper2(&v94, "initWithNibName:bundle:", 0, 0);

  v31 = *&v22[qword_10005AA68];
  *&v22[qword_10005AA68] = v30;
  v32 = v30;

  v33 = *&v32[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v34 = direct field offset for APUISystemApertureElementHostingController.leadingView;
  swift_beginAccess();
  v35 = *&v22[v34];
  *&v22[v34] = v33;
  v36 = v33;

  v37 = v32;
  [v22 addChildViewController:v37];
  v38 = [v22 view];

  if (!v38)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v91 = v23;
  v39 = [v37 view];

  if (!v39)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v38 addSubview:v39];

  [v37 didMoveToParentViewController:v22];
  v40 = objc_allocWithZone(v14);
  v41 = objc_allocWithZone(v16);
  v42 = swift_retain_n();
  *&v40[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v42);
  v93.receiver = v40;
  v93.super_class = v14;
  v43 = objc_msgSendSuper2(&v93, "initWithNibName:bundle:", 0, 0);

  v44 = *&v22[qword_10005AA70];
  *&v22[qword_10005AA70] = v43;
  v45 = v43;

  v46 = *&v45[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v47 = direct field offset for APUISystemApertureElementHostingController.trailingView;
  swift_beginAccess();
  v48 = *&v22[v47];
  *&v22[v47] = v46;
  v49 = v46;

  v50 = v45;
  [v22 addChildViewController:v50];
  v51 = [v22 view];

  if (!v51)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v52 = [v50 view];

  if (!v52)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v51 addSubview:v52];

  [v50 didMoveToParentViewController:v22];
  v53 = objc_allocWithZone(v14);
  v54 = objc_allocWithZone(v16);
  v55 = swift_retain_n();
  *&v53[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v55);
  v92.receiver = v53;
  v92.super_class = v14;
  v56 = objc_msgSendSuper2(&v92, "initWithNibName:bundle:", 0, 0);

  v57 = *&v22[qword_10005AA78];
  *&v22[qword_10005AA78] = v56;
  v58 = v56;

  v59 = *&v58[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v60 = direct field offset for APUISystemApertureElementHostingController.minimalView;
  swift_beginAccess();
  v61 = *&v22[v60];
  *&v22[v60] = v59;
  v62 = v59;

  v63 = v58;
  [v22 addChildViewController:v63];
  v64 = [v22 view];

  if (!v64)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v65 = [v63 view];

  if (!v65)
  {
LABEL_48:
    __break(1u);
    return;
  }

  [v64 addSubview:v65];

  [v63 didMoveToParentViewController:v22];
  if (v108)
  {
    v66 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v67 = *&v22[v66];
    if ((v67 & 8) == 0)
    {
      *&v22[v66] = v67 | 8;
    }
  }

  if (BYTE1(v108))
  {
    v68 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v69 = *&v22[v68];
    if ((v69 & 0x10) == 0)
    {
      *&v22[v68] = v69 | 0x10;
    }
  }

  if (BYTE2(v108))
  {
    v70 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v71 = *&v22[v70];
    if ((v71 & 0x40) == 0)
    {
      *&v22[v70] = v71 | 0x40;
    }
  }

  if (BYTE3(v108))
  {
    v72 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v73 = *&v22[v72];
    if ((v73 & 2) == 0)
    {
      *&v22[v72] = v73 | 2;
    }
  }

  v74 = *(&v108 + 1);
  v75 = direct field offset for APUISystemApertureElementHostingController.elementIdentifier;
  swift_beginAccess();
  v76 = *&v22[v75];
  if (!v74)
  {
    if (!v76)
    {
      goto LABEL_31;
    }

LABEL_30:
    *&v22[v75] = v74;
    v82 = v74;

    goto LABEL_31;
  }

  if (!v76)
  {
    goto LABEL_30;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;
  if (v77 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v79 == v80)
  {

    goto LABEL_31;
  }

  v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v81 & 1) == 0)
  {
    v76 = *&v22[v75];
    goto LABEL_30;
  }

LABEL_31:
  v83 = v109;
  v84 = &v22[direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier];
  swift_beginAccess();
  v85 = *(v84 + 1);
  if (*(&v83 + 1))
  {
    v86 = v91;
    if (v85 && (v83 == *v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_38;
    }
  }

  else
  {
    v86 = v91;
    if (!v85)
    {
      goto LABEL_38;
    }
  }

  *v84 = v83;

LABEL_38:
  v87 = v110;
  v88 = direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress;
  swift_beginAccess();
  v89 = *&v22[v88];

  v90 = sub_10000DBC8(v87, v89);

  sub_10000619C(&v111, &qword_10005A5D0, &unk_10003E4E0);
  if (v90)
  {

    sub_1000061FC(v107);
  }

  else
  {
    *&v22[v88] = v87;

    sub_1000061FC(v107);
  }
}

uint64_t variable initialization expression of APUIRemoteAlertPresentationRequest.id()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v4 = UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id variable initialization expression of APUIUIViewController.homeScreenService()
{
  v0 = objc_allocWithZone(SBSHomeScreenService);

  return [v0 init];
}

double variable initialization expression of APUISystemApertureElementTransitionCoordinator.delegate@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of APUISystemApertureElementTransitionCoordinator.screenWidth()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  return v2;
}

double variable initialization expression of APUISystemApertureElementTransitionCoordinator.animationPositionTransformYOffset()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  return v2 / 3.0;
}

double variable initialization expression of APUISystemApertureElementTransitionCoordinator.cornerRadius()
{
  v0 = [objc_opt_self() sharedInstanceForEmbeddedDisplay];
  [v0 maximumContinuousCornerRadius];
  v2 = v1;

  return v2;
}

double variable initialization expression of APUISystemApertureElementTransitionCoordinator.systemApertureEdgeInset()
{
  v0 = [objc_opt_self() sharedInstanceForEmbeddedDisplay];
  [v0 minimumScreenEdgeInsets];
  v2 = v1;

  return v2;
}

void sub_10000323C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v8);
  v9 = objc_allocWithZone(sub_100005D3C(&qword_10005A640, &qword_10003E518));
  v60 = a2;
  v61 = a3 & 1;
  sub_100006258(a1, a2);
  v10 = UIHostingController.init(rootView:)();
  sub_100005D3C(&qword_10005A648, &unk_10003E520);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10003DD60;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v59 = v11;
  sub_100004B50(&qword_10005A650, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  sub_100005D3C(&qword_10005A658, qword_10003ED60);
  sub_100006260(&qword_10005A660, &qword_10005A658, qword_10003ED60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v4[qword_10005C450] = v10;
  v12 = v10;
  v58.receiver = v4;
  v58.super_class = sub_100005D3C(&qword_10005A638, &qword_10003E510);
  v13 = objc_msgSendSuper2(&v58, "initWithNibName:bundle:", 0, 0);
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = qword_10005C450;
  v17 = [*&v13[qword_10005C450] view];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  [v15 addSubview:v17];

  [v13 addChildViewController:*&v13[v16]];
  v19 = [v13 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v21 clearColor];
  [v20 setBackgroundColor:v22];

  v23 = v12;
  v24 = [v23 view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  v26 = [v21 clearColor];
  [v25 setBackgroundColor:v26];

  v27 = [v23 view];
  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10003DD70;
  v30 = [v23 view];
  if (!v30)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = [v13 view];
  if (!v33)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v34 = v33;
  v35 = [v33 topAnchor];

  v36 = [v32 constraintEqualToAnchor:v35];
  *(v29 + 32) = v36;
  v37 = [v23 view];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = v37;
  v39 = [v37 leadingAnchor];

  v40 = [v13 view];
  if (!v40)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v41 = v40;
  v42 = [v40 leadingAnchor];

  v43 = [v39 constraintEqualToAnchor:v42];
  *(v29 + 40) = v43;
  v44 = [v23 view];
  if (!v44)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = [v13 view];
  if (!v47)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = [v46 constraintEqualToAnchor:v49];
  *(v29 + 48) = v50;
  v51 = [v23 view];

  if (!v51)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v52 = [v51 bottomAnchor];

  v53 = [v13 view];
  if (v53)
  {
    sub_1000062A8(a1, a2);
    v54 = objc_opt_self();
    v55 = [v53 bottomAnchor];

    v56 = [v52 constraintEqualToAnchor:v55];
    *(v29 + 56) = v56;
    sub_1000062B0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v54 activateConstraints:isa];

    return;
  }

LABEL_27:
  __break(1u);
}

BOOL sub_100003958(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000039BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000039D8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003A50(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003AD0@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003B28@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_100003B88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100003BB4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100003C78(void *a1, uint64_t *a2)
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

uint64_t sub_100003D04(uint64_t a1)
{
  v2 = sub_100004B50(&qword_10005A578, type metadata accessor for STBackgroundActivityIdentifier, &unk_10003E05C);
  v3 = sub_100004B50(&qword_10005A580, type metadata accessor for STBackgroundActivityIdentifier, &unk_10003E004);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003DC0(uint64_t a1)
{
  v2 = sub_100004B50(&qword_10005A568, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_10003E19C);
  v3 = sub_100004B50(&qword_10005A570, type metadata accessor for SBUISystemApertureElementIdentifier, &unk_10003E144);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003E7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100005D04(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100003EBC@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003F04(uint64_t a1)
{
  v2 = sub_100004B50(&qword_10005A6B0, type metadata accessor for ProgressUserInfoKey, &unk_10003E6B8);
  v3 = sub_100004B50(&qword_10005A6B8, type metadata accessor for ProgressUserInfoKey, &unk_10003E60C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003FC0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100003FFC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004050(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

void sub_1000040C4(uint64_t a1)
{
  if (qword_10005A160 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005D84(v1, qword_10005A168);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    type metadata accessor for UUID();
    sub_100004B50(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_100029504(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating system aperture view controller for background activity with ID: %s", v4, 0xCu);
    sub_100005E20(v5);
  }

  v9 = objc_allocWithZone(sub_100005D3C(&unk_10005A5C0, &qword_10003E480));

  sub_1000023D8(v10);
}

void sub_10000429C(uint64_t a1)
{
  if (qword_10005A160 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005A168);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for UUID();
    sub_100004B50(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_100029504(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating live activities view controller for background activity with ID: %s", v5, 0xCu);
    sub_100005E20(v6);
  }

  v10 = objc_allocWithZone(sub_100005D3C(&qword_10005A638, &qword_10003E510));

  sub_10000323C(sub_100006250, a1, 0);
}

unint64_t sub_100004490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D3C(&unk_10005A5B0, &qword_10003E440);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100029C3C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000045B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D3C(&qword_10005A5A8, &qword_10003E438);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100029C3C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1000046E0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = sub_100005D3C(a2, a3);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_100005D3C(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_1000064B0(v16, v12, a2, v27);
      result = sub_100029BB8(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

unint64_t sub_1000048C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D3C(&qword_10005A678, &qword_10003E538);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100029C3C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

__n128 sub_1000049EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000049F8(uint64_t a1, int a2)
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

uint64_t sub_100004A18(uint64_t result, int a2, int a3)
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

uint64_t sub_100004B50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100004E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D3C(&qword_10005A6C0, &qword_10003E700);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000064B0(v4, &v13, &qword_10005A6C8, &unk_10003E708);
      v5 = v13;
      v6 = v14;
      result = sub_100029C3C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006518(&v15, (v3[7] + 32 * result));
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

void sub_100004F50(void *a1, void *a2)
{
  v3 = v2;
  if (qword_10005A160 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005D84(v6, qword_10005A168);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v7 role];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100029504(v13, v15, v70);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass() && (swift_getKeyPath(), dispatch thunk of ActivityScene.subscript.getter(), , (v17 = v72) != 0))
    {
      v18 = v71;
    }

    else
    {

      v17 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    v19 = sub_100029504(v18, v17, v70);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "SessionSceneDelegate: Scene will connect called with role: %s, activity identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for ActivityScene();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    v44 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v44, v49, "SessionSceneDelegate: Received a UIScene that is not of type SessionScene.", v50, 2u);
    }

LABEL_26:

    return;
  }

  v21 = v20;
  v22 = v8;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v69 = v3;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v71 = v26;
    *v25 = 136315138;
    v27 = [v21 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_100029504(v28, v30, &v71);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "SessionSceneDelegate: Connecting session scene: %s", v25, 0xCu);
    sub_100005E20(v26);
  }

  swift_getKeyPath();
  dispatch thunk of ActivityScene.subscript.getter();

  v32 = v72;
  if (!v72)
  {
    goto LABEL_21;
  }

  v33 = v71;
  if (qword_10005A1A0 != -1)
  {
    v68 = v71;
    swift_once();
    v33 = v68;
  }

  v34 = sub_100018B68(v33, v32);

  if (!v34)
  {
LABEL_21:
    v43 = v22;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v21;
      *v47 = v21;
      v48 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "Unable to find a background activity to represent with session scene: %@", v46, 0xCu);
      sub_10000619C(v47, &qword_10005BC80, &qword_10003E860);

      return;
    }

    goto LABEL_26;
  }

  swift_unknownObjectWeakAssign();
  v35 = v22;
  v36 = [v21 SBUI_isHostedBySystemAperture];
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  if (v36)
  {
    if (v39)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "SessionSceneDelegate: Received ActivityKit scene hosted by system aperture", v40, 2u);
    }

    swift_getKeyPath();
    dispatch thunk of ActivityScene.subscript.getter();

    v41 = v72;
    if (v72)
    {
      v42 = v71;
    }

    else
    {
      v56 = [v21 session];
      v57 = [v56 persistentIdentifier];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v58;
    }

    v59 = OBJC_IVAR____TtC18ActivityProgressUI20SessionSceneDelegate_systemApertureElementProvidersByID;
    swift_beginAccess();
    v60 = *(v69 + v59);
    if (*(v60 + 16))
    {

      v61 = sub_100029C3C(v42, v41);
      if (v62)
      {
        v63 = *(*(v60 + 56) + 8 * v61);
        swift_unknownObjectRetain_n();

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v64, v65, "SessionSceneDelegate: using cachedSystemApertureElementProvider", v66, 2u);
        }

        goto LABEL_38;
      }
    }

    sub_1000040C4(v34);
    v63 = v67;
    swift_unknownObjectRetain();
LABEL_38:
    [v21 setSystemApertureElementViewControllerProvider:v63];

    swift_beginAccess();
    sub_100027628(v63, v42, v41);
    swift_endAccess();

    swift_unknownObjectRelease();
    return;
  }

  if (v39)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "SessionSceneDelegate: Received ActivityKit scene not hosted in system aperture", v51, 2u);
  }

  sub_10000429C(v34);
  v53 = v52;
  v54 = [objc_allocWithZone(type metadata accessor for APUISecureWindow()) initWithWindowScene:v21];

  [v54 setRootViewController:v53];
  [v54 makeKeyAndVisible];

  v55 = *(v69 + OBJC_IVAR____TtC18ActivityProgressUI20SessionSceneDelegate_window);
  *(v69 + OBJC_IVAR____TtC18ActivityProgressUI20SessionSceneDelegate_window) = v54;
}

void sub_1000057D8(void *a1)
{
  if (qword_10005A160 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005A168);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = [v3 session];
    v8 = [v7 role];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100029504(v9, v11, &v19);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass() && (swift_getKeyPath(), dispatch thunk of ActivityScene.subscript.getter(), , (v13 = v18) != 0))
    {
      v14 = v17;
    }

    else
    {

      v13 = 0xE500000000000000;
      v14 = 0x3E6C696E3CLL;
    }

    v15 = sub_100029504(v14, v13, &v19);

    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "SessionSceneDelegate: sceneDidBecomeActive with role: %s, activity identifier: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  v16 = qword_10005C670;
  if (*(qword_10005C670 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_shouldPlayHapticOnSceneActivation) == 1)
  {
    *(qword_10005C670 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_shouldPlayHapticOnSceneActivation) = 0;
    [*(v16 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_hapticGenerator) notificationOccurred:0];
  }
}

void sub_100005A8C(void *a1, const char *a2, ...)
{
  if (qword_10005A160 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005D84(v4, qword_10005A168);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [v5 session];
    v9 = [v8 role];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100029504(v10, v12, &v20);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass() && (swift_getKeyPath(), dispatch thunk of ActivityScene.subscript.getter(), , (v14 = v19) != 0))
    {
      v15 = v18;
    }

    else
    {

      v14 = 0xE500000000000000;
      v15 = 0x3E6C696E3CLL;
    }

    v16 = sub_100029504(v15, v14, &v20);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100005D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100005D3C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005D84(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005DBC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100005E20(void *a1)
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

unint64_t sub_100005ED8()
{
  result = qword_10005A5D8;
  if (!qword_10005A5D8)
  {
    sub_100005F90(&qword_10005A5D0, &unk_10003E4E0);
    sub_100005FD8();
    sub_100006260(&qword_10005A628, &qword_10005A630, &qword_10003EB10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A5D8);
  }

  return result;
}

uint64_t sub_100005F90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005FD8()
{
  result = qword_10005A5E0;
  if (!qword_10005A5E0)
  {
    sub_100005F90(&qword_10005A5E8, &unk_10003EAF0);
    sub_100006090();
    sub_100006260(&qword_10005A618, &qword_10005A620, &unk_10003E500, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A5E0);
  }

  return result;
}

unint64_t sub_100006090()
{
  result = qword_10005A5F0;
  if (!qword_10005A5F0)
  {
    sub_100005F90(&qword_10005A5F8, &unk_10003E4F0);
    sub_100006148();
    sub_100006260(&qword_10005A608, &qword_10005A610, &unk_10003EB00, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A5F0);
  }

  return result;
}

unint64_t sub_100006148()
{
  result = qword_10005A600;
  if (!qword_10005A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A600);
  }

  return result;
}

uint64_t sub_10000619C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005D3C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006260(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005F90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000062B0()
{
  result = qword_10005A670;
  if (!qword_10005A670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005A670);
  }

  return result;
}

__n128 sub_100006310(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006330(uint64_t a1, int a2)
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

uint64_t sub_100006350(uint64_t result, int a2, int a3)
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

void sub_10000638C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000064B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005D3C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100006518(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006594()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005A790);
  v1 = sub_100005D84(v0, qword_10005A790);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000665C()
{
  type metadata accessor for PillActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_10005C620 = v0;
  return result;
}

uint64_t sub_100006698()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000066F8()
{
  if (qword_10005A188 != -1)
  {
    swift_once();
  }
}

void *sub_10000675C()
{
  v0[2] = String._bridgeToObjectiveC()();
  BSAuditTokenForCurrentProcess();
  v0[3] = [objc_allocWithZone(STActivityAttribution) initWithAuditToken:aBlock];
  v1 = [objc_allocWithZone(STBackgroundActivitiesStatusDomainPublisher) init];
  v0[4] = v1;
  v0[5] = 0;
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006890;
  aBlock[3] = &unk_1000520F0;
  v2 = _Block_copy(aBlock);
  v3 = v1;
  [v3 handleUserInteractionsWithBlock:v2];
  _Block_release(v2);

  return v0;
}

void sub_100006890(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000068F8()
{
  v0 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v11[1] + 16);

  if (v3)
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = qword_10005A188;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_10005C620;
    v9 = sub_100007A28();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = v6;

    sub_100018ED4(0, 0, v2, &unk_10003E870, v10);
  }

  return result;
}

uint64_t sub_100006B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10005A188 != -1)
  {
    swift_once();
  }

  v5 = qword_10005C620;

  return _swift_task_switch(sub_100006BA4, v5, 0);
}

uint64_t sub_100006BA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!Strong[5])
    {
      v2 = [objc_allocWithZone(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution) initWithBackgroundActivityIdentifier:Strong[2] activityAttribution:Strong[3] showsWhenForeground:1];
      sub_100006C70(v2);
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100006C70(void *a1)
{
  v2 = v1;
  if (qword_10005A180 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005D84(v4, qword_10005A790);
  v5 = a1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = *(v2 + 40);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v10;
    v9[1] = a1;
    v11 = v5;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Updating status pill attribution from %@ to %@", v8, 0x16u);
    sub_100005D3C(&qword_10005BC80, &qword_10003E860);
    swift_arrayDestroy();
  }

  v23 = *(v2 + 32);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100007C6C;
  *(v15 + 24) = v14;
  v28 = sub_100007C84;
  v29 = v15;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1000073E8;
  v27 = &unk_100052050;
  v16 = _Block_copy(&aBlock);
  v17 = v5;

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  v28 = sub_100007D04;
  v29 = v19;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_100007578;
  v27 = &unk_1000520A0;
  v20 = _Block_copy(&aBlock);
  v21 = v17;

  [v23 updateVolatileData:v16 completion:v20];
  _Block_release(v20);
  _Block_release(v16);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100006FF8()
{
  v0 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v11[1] + 16);

  if (!v3)
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = qword_10005A188;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_10005C620;
    v9 = sub_100007A28();
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = v9;
    v10[4] = v6;

    sub_100018ED4(0, 0, v2, &unk_10003E858, v10);
  }

  return result;
}

uint64_t sub_10000720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10005A188 != -1)
  {
    swift_once();
  }

  v5 = qword_10005C620;

  return _swift_task_switch(sub_1000072A4, v5, 0);
}

uint64_t sub_1000072A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 40))
    {
      sub_100006C70(0);
    }
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000733C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40))
    {
      [a1 removeAttribution:?];
    }

    if (a4)
    {
      [a1 addAttribution:a4];
    }

    [a2 setUserInitiated:1];
  }

  return result;
}

void sub_1000073E8(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

void sub_100007454(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 40);
    *(Strong + 40) = a2;
    v5 = a2;

    if (qword_10005A180 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005D84(v6, qword_10005A790);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Updated status pill attribution", v9, 2u);
    }
  }
}

uint64_t sub_100007578(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id *sub_1000075BC()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = qword_10005A180;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005D84(v5, qword_10005A790);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v2;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Status pill controller deinitialized with non-nil attribution: %@, removing...", v9, 0xCu);
    sub_100007E58(v10);
  }

  v12 = v1[4];
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = swift_allocObject();
  v15 = sub_100007E48;
  *(v14 + 16) = sub_100007E48;
  *(v14 + 24) = v13;
  v25 = sub_100007ED0;
  v26 = v14;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000073E8;
  v24 = &unk_100052168;
  v16 = _Block_copy(&v21);
  v17 = v6;
  v18 = v12;

  v25 = sub_1000078E4;
  v26 = 0;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100007578;
  v24 = &unk_100052190;
  v19 = _Block_copy(&v21);
  [v18 updateVolatileData:v16 completion:v19];

  _Block_release(v19);
  _Block_release(v16);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
LABEL_8:
    v15 = 0;
    v13 = 0;
  }

  sub_100007E00(v15, v13);
  return v1;
}

void sub_1000078E4()
{
  if (qword_10005A180 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005D84(v0, qword_10005A790);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Status pill attribution removed", v2, 2u);
  }
}

uint64_t sub_1000079CC()
{
  sub_1000075BC();

  return swift_deallocClassInstance();
}

unint64_t sub_100007A28()
{
  result = qword_10005A900;
  if (!qword_10005A900)
  {
    type metadata accessor for PillActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A900);
  }

  return result;
}

uint64_t sub_100007A84()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007B74;

  return sub_10000720C(a1, v4, v5, v6);
}

uint64_t sub_100007B74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007CC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007D0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007D4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007EE0;

  return sub_100006B0C(a1, v4, v5, v6);
}

uint64_t sub_100007E00(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100007E10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007E58(uint64_t a1)
{
  v2 = sub_100005D3C(&qword_10005BC80, &qword_10003E860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007F44@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_100007FC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100013584();
  v17 = v4;
  if (v5 == 0xD000000000000011 && 0x8000000100044410 == v4)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  type metadata accessor for APUISystemApertureLayoutState(0);
  sub_1000085F8();
  v6 = EnvironmentObject.init()();
  v16 = v7;
  *&v35 = sub_1000088C4;
  *(&v35 + 1) = a1;
  LOBYTE(v36) = 0;
  sub_100008650();

  v8 = AnyView.init<A>(_:)();
  sub_1000082E0(a1, &v35);
  sub_100005D3C(&qword_10005A910, &qword_10003E910);
  sub_1000086A4();
  v9 = AnyView.init<A>(_:)();
  *&v35 = sub_1000088C4;
  *(&v35 + 1) = a1;
  LOBYTE(v36) = 0;
  sub_100008784();

  v10 = AnyView.init<A>(_:)();
  sub_1000082E0(a1, &v35);
  v11 = AnyView.init<A>(_:)();

  *&v20 = v6;
  *(&v20 + 1) = v16;
  *&v21 = v8;
  *(&v21 + 1) = v9;
  *&v22 = v10;
  *(&v22 + 1) = v11;
  LODWORD(v23) = 257;
  *(&v23 + 1) = 0;
  *&v24 = v5;
  *(&v24 + 1) = v17;
  v25 = &_swiftEmptySetSingleton;
  v26[0] = v6;
  v26[1] = v16;
  v26[2] = v8;
  v26[3] = v9;
  v26[4] = v10;
  v26[5] = v11;
  v27 = 257;
  v28 = 0;
  v29 = v5;
  v30 = v17;
  v31 = &_swiftEmptySetSingleton;
  sub_100005E7C(&v20, &v35);
  sub_1000061FC(v26);
  sub_100005D3C(&qword_10005A930, &qword_10003E918);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10003DD60;
  *(v12 + 32) = String._bridgeToObjectiveC()();
  v13 = sub_10001679C(v12);
  swift_setDeallocating();
  sub_1000087D8(v12 + 32);
  swift_deallocClassInstance();

  v37 = v22;
  v38 = v23;
  v39 = v24;
  v35 = v20;
  v36 = v21;
  *v34 = v22;
  *&v34[16] = v23;
  *&v34[32] = v24;
  v32 = v20;
  v33 = v21;
  *&v34[48] = v13;
  v40 = v13;
  sub_100005E7C(&v32, v19);
  sub_1000061FC(&v35);
  v14 = v33;
  *a2 = v32;
  *(a2 + 16) = v14;
  *(a2 + 32) = *v34;
  *(a2 + 47) = *&v34[15];
  *(a2 + 51) = v18 & 1;
  *(a2 + 52) = *&v34[20];
  result = *&v34[36];
  *(a2 + 68) = *&v34[36];
  *(a2 + 84) = *&v34[52];
  return result;
}

__n128 sub_1000082E0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_7;
  }

  (*(v5 + 16))(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
  v10 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (!*(v11 + 16))
  {
LABEL_6:
    (*(v5 + 8))(v7, v4);
LABEL_7:
    v23 = 1;
    HIBYTE(v22) = 1;
    sub_100008730();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_8;
  }

  v12 = sub_100029BB8(v7);
  if ((v13 & 1) == 0)
  {

    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  v17[16] = 0;
  v17[8] = 0;
  v23 = 0;
  *&v24 = sub_100006250;
  *(&v24 + 1) = v14;
  v25.n128_u8[0] = 0;
  v25.n128_u64[1] = sub_1000088C4;
  *&v26 = a1;
  BYTE8(v26) = 0;
  v27 = xmmword_10003E900;
  v28 = 1;
  sub_100008730();

  _ConditionalContent<>.init(storage:)();
  (*(v5 + 8))(v7, v4);
  v26 = v20;
  v27 = v21;
  v28 = v22;
  v24 = v18;
  v25 = v19;
LABEL_8:
  v15 = v27;
  *(a2 + 32) = v26;
  *(a2 + 48) = v15;
  *(a2 + 64) = v28;
  result = v25;
  *a2 = v24;
  *(a2 + 16) = result;
  return result;
}

double sub_10000859C@<D0>(uint64_t a1@<X8>)
{
  sub_100007FC8(*v1, v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

unint64_t sub_1000085F8()
{
  result = qword_10005A250;
  if (!qword_10005A250)
  {
    type metadata accessor for APUISystemApertureLayoutState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A250);
  }

  return result;
}

unint64_t sub_100008650()
{
  result = qword_10005A908;
  if (!qword_10005A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A908);
  }

  return result;
}

unint64_t sub_1000086A4()
{
  result = qword_10005A918;
  if (!qword_10005A918)
  {
    sub_100005F90(&qword_10005A910, &qword_10003E910);
    sub_100008730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A918);
  }

  return result;
}

unint64_t sub_100008730()
{
  result = qword_10005A920;
  if (!qword_10005A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A920);
  }

  return result;
}

unint64_t sub_100008784()
{
  result = qword_10005A928;
  if (!qword_10005A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A928);
  }

  return result;
}

uint64_t sub_1000087D8(uint64_t a1)
{
  type metadata accessor for STBackgroundActivityIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100008848(uint64_t a1)
{
  result = sub_100008870();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100008870()
{
  result = qword_10005A938;
  if (!qword_10005A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A938);
  }

  return result;
}

void sub_1000088C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progressMicaView);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 publishedObjectWithName:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100009E1C(0, &qword_10005A9B8, CAShapeLayer_ptr);
    if (swift_dynamicCast())
    {
      [*(v0 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress) fractionCompleted];
      [v5 setStrokeStart:1.0 - v4];
    }
  }

  else
  {
    sub_100009798(v8);
  }

  sub_100009170();
}

void sub_100008A04(id a1)
{
  if (a1)
  {
    v3 = [a1 identifier];
    v4 = (v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction);
    v5 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction);
    if (!v5)
    {
      if (!v3)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v4 = (v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction);
    v5 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction);
    if (!v5)
    {
      return;
    }

    v3 = 0;
  }

  v6 = [v5 identifier];
  v7 = v6;
  if (!v3)
  {
    if (!v6)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!v6)
  {
LABEL_15:
    v7 = v3;
LABEL_17:

LABEL_18:
    if (*v4)
    {
      v14 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton);
      v15 = *v4;
      [v14 addAction:v15 forControlEvents:0x2000];
      [v14 setHidden:0];
    }

    if (a1)
    {
      v16 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton);
      v17 = a1;
      [v16 removeAction:? forControlEvents:?];
      if (!*v4)
      {
        [v16 setHidden:1];
      }
    }

    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v10 != v11)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return;
    }

    goto LABEL_18;
  }
}

uint64_t sub_100008C2C()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_100008C74(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  v4 = 1;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_100009170();
  if (*(v1 + v3) == 1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction) == 0;
  }

  return [*(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton) setHidden:v4];
}

uint64_t (*sub_100008D0C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = APUISystemApertureView.expanded.modify(v3);
  return sub_100008D80;
}

void sub_100008D80(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    sub_100009170();
    v5 = *(v4 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton);
    v6 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
    swift_beginAccess();
    v7 = *(v4 + v6) != 1 || *(v3[4] + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction) == 0;
    [v5 setHidden:v7];
  }

  free(v3);
}

void sub_100008F04()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = objc_opt_self();
  v5 = &selRef_systemWhiteColor;
  if (v3 != 2)
  {
    v5 = &selRef_systemBlackColor;
  }

  v6 = [v4 *v5];
  v7 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.701960784 blue:0.301960784 alpha:1.0];
  v8 = v7;
  if (v1[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled])
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = kCAFilterMultiplyColor;
  v11 = objc_allocWithZone(CAFilter);
  v12 = v9;
  v13 = [v11 initWithType:v10];
  [v13 setName:v10];
  v14 = [v12 CGColor];
  v15 = String._bridgeToObjectiveC()();
  [v13 setValue:v14 forKey:v15];

  v16 = [*&v1[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progressMicaView] layer];
  sub_100005D3C(&qword_10005A9A0, &qword_10003EA58);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10003DD60;
  *(v17 + 56) = sub_100009E1C(0, &qword_10005A9A8, CAFilter_ptr);
  *(v17 + 32) = v13;
  v18 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setFilters:isa];
}

void sub_100009170()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  swift_beginAccess();
  if (v0[v3] == 1)
  {
    if ((v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled] & 1) == 0)
    {
      v4 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress;
      if (([*&v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress] isIndeterminate] & 1) == 0)
      {
        [*&v0[v4] fractionCompleted];
        if (v5 >= 0.00001)
        {
          [*&v0[v4] fractionCompleted];
          if (v12 >= 1.0)
          {
            v13 = *&v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton];
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            v14 = String._bridgeToObjectiveC()();

            [v13 setAccessibilityLabel:v14];
          }
        }
      }
    }
  }

  else
  {
    if ((v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled] & 1) == 0)
    {
      v6 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress;
      if (([*&v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress] isIndeterminate] & 1) == 0)
      {
        [*&v0[v6] fractionCompleted];
        if (v7 >= 0.00001)
        {
          [*&v0[v6] fractionCompleted];
        }
      }
    }

    String.LocalizationValue.init(_:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v8 = String._bridgeToObjectiveC()();

    [v0 setAccessibilityLabel:v8];

    [objc_msgSend(v0 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    v9 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_didPostAccessibilityLayoutChangeNotification;
    if ((v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_didPostAccessibilityLayoutChangeNotification] & 1) == 0)
    {
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v0);
      v0[v9] = 1;
    }
  }

  v10 = *&v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progressMicaView];
  v11 = String._bridgeToObjectiveC()();

  [v10 setState:v11];
}

void sub_100009674()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton);
}

id sub_1000096D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundActivityProgressMicaView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100009798(uint64_t a1)
{
  v2 = sub_100005D3C(&qword_10005A9B0, &qword_10003EA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100009824(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v7 - 8);
  v8 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress;
  *&v3[v8] = [objc_opt_self() progressWithTotalUnitCount:1000];
  v9 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction;
  *&v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction] = 0;
  v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_isTouchingDownButton] = 0;
  v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_didPostAccessibilityLayoutChangeNotification] = 0;
  type metadata accessor for BackgroundActivitySession(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v12 = objc_allocWithZone(BSUICAPackageView);
  v13 = v11;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 initWithPackageName:v14 inBundle:v13];

  v37 = v13;
  if (v15)
  {
    v16 = v15;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v16 setFrame:{0.0, 0.0, 23.0, 23.0}];

    v17 = String._bridgeToObjectiveC()();
    [v16 setState:v17];

    *&v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progressMicaView] = v16;
    sub_100009E1C(0, &qword_10005A9C0, UIButton_ptr);
    v18 = v16;
    static UIButton.Configuration.plain()();
    v19 = a2;
    v20 = UIButton.init(configuration:primaryAction:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v21 = String._bridgeToObjectiveC()();

    [v20 setAccessibilityLabel:v21];

    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton] = v20;
    v22 = *&v3[v9];
    *&v3[v9] = a2;
    v23 = v19;
    v24 = v20;

    v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled] = 0;
    v38.receiver = v3;
    v38.super_class = type metadata accessor for BackgroundActivityProgressMicaView();
    v25 = objc_msgSendSuper2(&v38, "init");
    [v25 addSubview:v18];
    [v25 addSubview:v24];
    APUISystemApertureView.createConstraints(forSubview:offset:alignedToEdge:)(v18, a1, 0.0);
    sub_100009E1C(0, &qword_10005A670, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v25 addConstraints:isa];

    APUISystemApertureView.createConstraints(forSubview:offset:alignedToEdge:)(v24, a1, 0.0);
    v27 = Array._bridgeToObjectiveC()().super.isa;

    [v25 addConstraints:v27];

    v28 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton;
    v29 = *&v25[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton];
    if (a2)
    {
      v30 = v23;
      [v29 addAction:v30 forControlEvents:{0x2000, v18}];
      v31 = *&v25[v28];
      v32 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
      swift_beginAccess();
      [v31 setHidden:(v25[v32] & 1) == 0];
    }

    else
    {
      [*&v25[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton] setHidden:{1, v18}];
    }

    v33 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton;
    [*&v25[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton] addTarget:v25 action:"touchedDownCancelButton" forControlEvents:17];
    [*&v25[v33] addTarget:v25 action:"touchedUpCancelButton" forControlEvents:480];
    sub_100008F04();
    sub_100005D3C(&unk_10005A9C8, &qword_10003EA68);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10003DD60;
    *(v34 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
    *(v34 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100009E1C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t APUISystemApertureElement.init<A, B, C>(expanded:compactLeading:compactTrailing:)@<X0>(void (*a1)(void)@<X0>, void (*a3)(void)@<X2>, void (*a4)(void)@<X4>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = __chkstk_darwin(a1);
  v15 = __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  type metadata accessor for APUISystemApertureLayoutState(0);
  sub_10000E4DC(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
  v16 = EnvironmentObject.init()();
  v22 = v17;
  v23 = v16;
  a1();
  v18 = AnyView.init<A>(_:)();
  a3();
  v19 = AnyView.init<A>(_:)();
  a4();
  v20 = AnyView.init<A>(_:)();
  a3();
  result = AnyView.init<A>(_:)();
  *a8 = v23;
  *(a8 + 8) = v22;
  *(a8 + 16) = v18;
  *(a8 + 24) = v19;
  *(a8 + 32) = v20;
  *(a8 + 40) = result;
  *(a8 + 48) = 0;
  *(a8 + 56) = 0;
  *(a8 + 64) = 0;
  *(a8 + 72) = 0;
  *(a8 + 80) = &_swiftEmptySetSingleton;
  return result;
}

double APUISystemApertureElement.showsOnCoverSheet(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v13 = *v2;
  v14 = v5;
  v15 = *(v2 + 32);
  v6 = *(v2 + 65);
  v11 = *(v2 + 49);
  v12[0] = v6;
  *(v12 + 15) = *(v2 + 80);
  sub_100005E7C(v2, v10);
  v7 = v14;
  *a2 = v13;
  *(a2 + 16) = v7;
  *(a2 + 32) = v15;
  *(a2 + 48) = a1;
  result = *&v11;
  v9 = v12[0];
  *(a2 + 49) = v11;
  *(a2 + 65) = v9;
  *(a2 + 80) = *(v12 + 15);
  return result;
}

double APUISystemApertureElement.disablesTapToApp(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v13 = *v2;
  v14 = v5;
  v15 = *(v2 + 32);
  v16 = *(v2 + 48);
  v6 = *(v2 + 66);
  v11 = *(v2 + 50);
  v12[0] = v6;
  *(v12 + 14) = *(v2 + 80);
  sub_100005E7C(v2, v10);
  v7 = v14;
  *a2 = v13;
  *(a2 + 16) = v7;
  *(a2 + 32) = v15;
  result = *&v11;
  v9 = v12[0];
  *(a2 + 50) = v11;
  *(a2 + 48) = v16;
  *(a2 + 49) = a1;
  *(a2 + 66) = v9;
  *(a2 + 80) = *(v12 + 14);
  return result;
}

double APUISystemApertureElement.associatedAppBundleIdentifier(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + 16);
  v16 = *v4;
  v17 = v8;
  v9 = *(v4 + 48);
  v18 = *(v4 + 32);
  v10 = *(v4 + 64);
  v19 = v9;
  v20 = v10;
  v11 = *(v4 + 80);
  sub_100005E7C(v4, v27);

  sub_10000619C(&v20, &qword_10005A9D8, &qword_10003EA78);
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v24 = v19;
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v26 = v11;
  v27[0] = v16;
  v27[1] = v17;
  v27[2] = v18;
  v27[3] = v19;
  v28 = a1;
  v29 = a2;
  v30 = v11;
  sub_100005E7C(&v21, v15);
  sub_1000061FC(v27);
  v12 = v24;
  *(a3 + 32) = v23;
  *(a3 + 48) = v12;
  *(a3 + 64) = v25;
  *(a3 + 80) = v26;
  result = *&v21;
  v14 = v22;
  *a3 = v21;
  *(a3 + 16) = v14;
  return result;
}

double APUISystemApertureElement.suppressingBackgroundActivities(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18 = *(v3 + 80);
  v6 = *(v3 + 32);
  v7 = *(v3 + 64);
  v16 = *(v3 + 48);
  v17 = v7;
  v8 = *v3;
  v14 = *(v3 + 16);
  v15 = v6;
  v13 = v8;
  sub_100005E7C(v3, v25);

  sub_10000619C(&v18, &qword_10005A9E0, &qword_10003EA80);
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v19 = v13;
  v20 = v14;
  v24 = a1;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[0] = v13;
  v25[1] = v14;
  v26 = a1;
  sub_100005E7C(&v19, v12);
  sub_1000061FC(v25);
  v9 = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v9;
  *(a2 + 64) = v23;
  *(a2 + 80) = v24;
  result = *&v19;
  v11 = v20;
  *a2 = v19;
  *(a2 + 16) = v11;
  return result;
}

double APUISystemApertureElement.showsOverAssociatedAppBundleIdentifier(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v14 = *v2;
  v15 = v5;
  v16[0] = *(v2 + 32);
  *(v16 + 15) = *(v2 + 47);
  v6 = *(v2 + 68);
  v11 = *(v2 + 52);
  v12 = v6;
  v13 = *(v2 + 84);
  sub_100005E7C(v2, v10);
  v7 = v15;
  *a2 = v14;
  *(a2 + 16) = v7;
  *(a2 + 32) = v16[0];
  result = *&v11;
  v9 = v12;
  *(a2 + 52) = v11;
  *(a2 + 47) = *(v16 + 15);
  *(a2 + 51) = a1;
  *(a2 + 68) = v9;
  *(a2 + 84) = v13;
  return result;
}

uint64_t EnvironmentValues.isHostedBySystemAperture.getter()
{
  sub_10000C8BC();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t (*EnvironmentValues.isHostedBySystemAperture.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10000C8BC();
  EnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return sub_10000A578;
}

uint64_t APUISystemApertureElement.init<A, B, C, D>(expanded:compactLeading:compactTrailing:minimal:)@<X0>(void (*a1)(void)@<X0>, void (*a3)(void)@<X2>, void (*a5)(void)@<X4>, void (*a7)(void)@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = __chkstk_darwin(a1);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  type metadata accessor for APUISystemApertureLayoutState(0);
  sub_10000E4DC(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
  v21 = EnvironmentObject.init()();
  v23 = v22;
  a1();
  v24 = AnyView.init<A>(_:)();
  a3();
  v25 = AnyView.init<A>(_:)();
  a5();
  v26 = AnyView.init<A>(_:)();
  a7();
  result = AnyView.init<A>(_:)();
  *a9 = v21;
  *(a9 + 8) = v23;
  *(a9 + 16) = v24;
  *(a9 + 24) = v25;
  *(a9 + 32) = v26;
  *(a9 + 40) = result;
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  *(a9 + 80) = &_swiftEmptySetSingleton;
  return result;
}

double APUISystemApertureElement.init<A, B>(expanded:compactLeading:)@<D0>(void (*a1)(void)@<X0>, void (*a3)(void)@<X2>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  APUISystemApertureElement.init<A, B, C>(expanded:compactLeading:compactTrailing:)(a1, a3, nullsub_1, v12, &type metadata for EmptyView, a6, a7, &protocol witness table for EmptyView);
  v9 = v12[3];
  *(a8 + 32) = v12[2];
  *(a8 + 48) = v9;
  *(a8 + 64) = v12[4];
  *(a8 + 80) = v13;
  result = *v12;
  v11 = v12[1];
  *a8 = v12[0];
  *(a8 + 16) = v11;
  return result;
}

double APUISystemApertureElement.init<A>(expanded:)@<D0>(void (*a1)(void)@<X0>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  APUISystemApertureElement.init<A, B, C>(expanded:compactLeading:compactTrailing:)(a1, nullsub_1, nullsub_1, v9, &type metadata for EmptyView, a4, &protocol witness table for EmptyView, &protocol witness table for EmptyView);
  v6 = v9[3];
  *(a5 + 32) = v9[2];
  *(a5 + 48) = v6;
  *(a5 + 64) = v9[4];
  *(a5 + 80) = v10;
  result = *v9;
  v8 = v9[1];
  *a5 = v9[0];
  *(a5 + 16) = v8;
  return result;
}

double APUISystemApertureElement.undimsScreenIfNecessary(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v13 = *v2;
  v14 = v5;
  v15 = *(v2 + 32);
  v16 = *(v2 + 48);
  v6 = *(v2 + 67);
  v11 = *(v2 + 51);
  v12[0] = v6;
  *(v12 + 13) = *(v2 + 80);
  sub_100005E7C(v2, v10);
  v7 = v14;
  *a2 = v13;
  *(a2 + 16) = v7;
  *(a2 + 32) = v15;
  result = *&v11;
  v9 = v12[0];
  *(a2 + 51) = v11;
  *(a2 + 48) = v16;
  *(a2 + 50) = a1;
  *(a2 + 67) = v9;
  *(a2 + 80) = *(v12 + 13);
  return result;
}

double APUISystemApertureElement.elementIdentifier(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v3 + 56);
  v19 = *(v3 + 48);
  v20 = v6;
  v7 = *(v3 + 16);
  v16 = *v3;
  v8 = *(v3 + 32);
  v17 = v7;
  v18 = v8;
  v14 = *(v3 + 64);
  v15 = *(v3 + 80);
  sub_100005E7C(v3, v27);
  v9 = a1;
  sub_10000619C(&v20, &qword_10005A9F0, &qword_10003EA88);
  v25 = v14;
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v26 = v15;
  *&v24 = v19;
  *(&v24 + 1) = a1;
  v27[1] = v17;
  v27[2] = v18;
  v27[0] = v16;
  v28 = v19;
  v29 = a1;
  v31 = v15;
  v30 = v14;
  sub_100005E7C(&v21, v13);
  sub_1000061FC(v27);
  v10 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v10;
  *(a2 + 64) = v25;
  *(a2 + 80) = v26;
  result = *&v21;
  v12 = v22;
  *a2 = v21;
  *(a2 + 16) = v12;
  return result;
}

uint64_t APUISystemApertureElementHostingController.activeLayoutMode.getter()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.activeLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t APUISystemApertureElementHostingController.activeLayoutMode.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.activeLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t APUISystemApertureElementHostingController.contentRole.getter()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.contentRole;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t APUISystemApertureElementHostingController.contentRole.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.contentRole;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t APUISystemApertureElementHostingController.preferredLayoutMode.getter()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.preferredLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t APUISystemApertureElementHostingController.preferredLayoutMode.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.preferredLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t APUISystemApertureElementHostingController.maximumLayoutMode.getter()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.maximumLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t APUISystemApertureElementHostingController.maximumLayoutMode.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.maximumLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10000B010()
{
  sub_10000DDFC();
  if (v0)
  {

    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t APUISystemApertureElementHostingController.associatedAppBundleIdentifier.getter()
{
  v0 = sub_10000DDFC();

  return v0;
}

void sub_10000B0B4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  APUISystemApertureElementHostingController.associatedAppBundleIdentifier.setter(v4, v6);
}

uint64_t APUISystemApertureElementHostingController.associatedAppBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_10000B1F4()
{
  v0 = sub_10000DE44();

  return v0;
}

void *APUISystemApertureElementHostingController.elementIdentifier.getter()
{
  v0 = sub_10000DE44();
  v1 = v0;
  return v0;
}

void sub_10000B254(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  APUISystemApertureElementHostingController.elementIdentifier.setter(a3);
}

void APUISystemApertureElementHostingController.elementIdentifier.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.elementIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Class sub_10000B368()
{
  sub_10000DE88();
  type metadata accessor for STBackgroundActivityIdentifier(0);
  sub_10000E4DC(&qword_10005A578, type metadata accessor for STBackgroundActivityIdentifier, &unk_10003E05C);

  v0.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

uint64_t APUISystemApertureElementHostingController.backgroundActivitiesToSuppress.getter()
{
  sub_10000DE88();
}

void sub_10000B438(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for STBackgroundActivityIdentifier(0);
  sub_10000E4DC(&qword_10005A578, type metadata accessor for STBackgroundActivityIdentifier, &unk_10003E05C);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = a1;
  APUISystemApertureElementHostingController.backgroundActivitiesToSuppress.setter(v4);
}

uint64_t APUISystemApertureElementHostingController.backgroundActivitiesToSuppress.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_10000B5A4()
{
  v0 = sub_10000DECC();

  return v0;
}

void *APUISystemApertureElementHostingController.leadingView.getter()
{
  v0 = sub_10000DECC();
  v1 = v0;
  return v0;
}

void sub_10000B604(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  APUISystemApertureElementHostingController.leadingView.setter(a3);
}

void APUISystemApertureElementHostingController.leadingView.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.leadingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10000B718()
{
  v0 = sub_10000DF10();

  return v0;
}

void *APUISystemApertureElementHostingController.trailingView.getter()
{
  v0 = sub_10000DF10();
  v1 = v0;
  return v0;
}

void sub_10000B778(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  APUISystemApertureElementHostingController.trailingView.setter(a3);
}

void APUISystemApertureElementHostingController.trailingView.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.trailingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10000B88C()
{
  v0 = sub_10000DF54();

  return v0;
}

void *APUISystemApertureElementHostingController.minimalView.getter()
{
  v0 = sub_10000DF54();
  v1 = v0;
  return v0;
}

void sub_10000B8EC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  APUISystemApertureElementHostingController.minimalView.setter(a3);
}

void APUISystemApertureElementHostingController.minimalView.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.minimalView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10000BA00()
{
  v0 = sub_10000DF98();

  return v0;
}

id APUISystemApertureElementHostingController.systemApertureElementViewController.getter()
{
  v0 = sub_10000DF98();

  return v0;
}

uint64_t APUISystemApertureElementHostingController.presentationBehaviors.getter()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10000BAD0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  APUISystemApertureElementHostingController.presentationBehaviors.setter(a3);
}

uint64_t APUISystemApertureElementHostingController.presentationBehaviors.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_10000BB7C(v4);
}

uint64_t sub_10000BB7C(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
  result = swift_beginAccess();
  if (*&v1[v3] != a1)
  {
    [objc_msgSend(v1 "systemApertureElementContext")];
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*APUISystemApertureElementHostingController.presentationBehaviors.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return sub_10000BC98;
}

void sub_10000BC98(char **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 9);
  v3 = *(*a1 + 10);
  v5 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
  swift_beginAccess();
  v6 = *(v3 + v5);
  *(v3 + v5) = v4;
  sub_10000BB7C(v6);

  free(v2);
}

void APUISystemApertureElementHostingController.init(elementProvider:)(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.activeLayoutMode) = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.contentRole) = 2;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.preferredLayoutMode) = 3;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.maximumLayoutMode) = 4;
  v5 = (v1 + direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.elementIdentifier) = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress) = &_swiftEmptySetSingleton;
  v6 = qword_10005AA50;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for APUISystemApertureElementTransitionCoordinator()) init];
  *(v1 + qword_10005AA58) = 0;
  v7 = qword_10005AA60;
  type metadata accessor for APUISystemApertureLayoutState(0);
  v8 = swift_allocObject();
  v118 = xmmword_10003DD50;
  v119 = xmmword_10003DD50;
  Published.init(initialValue:)();
  v117 = 0uLL;
  LOBYTE(v118) = 0;
  Published.init(initialValue:)();
  *(v1 + v7) = v8;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.leadingView) = 0;
  *(v1 + qword_10005AA68) = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.trailingView) = 0;
  *(v1 + qword_10005AA70) = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.minimalView) = 0;
  *(v1 + qword_10005AA78) = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.presentationBehaviors) = 1;
  v9 = *((v4 & v3) + 0x98);
  v11 = type metadata accessor for APUISystemApertureElementHostingController(0, v9, *((v4 & v3) + 0xA0), v10);
  v112.receiver = v1;
  v112.super_class = v11;
  v12 = objc_msgSendSuper2(&v112, "initWithNibName:bundle:", 0, 0);
  v96 = v9;
  v97 = a1;
  dispatch thunk of View.body.getter();
  v13 = *&v12[qword_10005AA60];
  sub_10000E4DC(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);

  v14 = static ObservableObject.environmentStore.getter();
  v105 = v113[2];
  v106 = v114;
  v107 = v115;
  *&v108 = v116;
  v103 = v113[0];
  v104 = v113[1];
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = *&v12[qword_10005AA50];
  v117 = v103;
  v118 = v104;
  v120 = v106;
  v121 = v107;
  v119 = v105;
  *&v122 = v108;
  *(&v122 + 1) = v14;
  *&v123 = v13;
  *(&v123 + 1) = KeyPath;
  LOBYTE(v124) = 1;
  *(&v124 + 1) = *v102;
  DWORD1(v124) = *&v102[3];
  *(&v124 + 1) = v16;
  v125 = v17;
  v108 = v122;
  v109 = v123;
  v110 = v124;
  v111 = v17;
  v18 = v17;
  sub_100005E7C(v113, v102);
  sub_10000E0A8(&v117, v102);
  sub_100005D3C(&qword_10005A5D0, &unk_10003E4E0);
  sub_100005ED8();
  AnyView.init<A>(_:)();
  v19 = type metadata accessor for APUISystemApertureAccessoryViewController();
  v20 = objc_allocWithZone(v19);
  v21 = type metadata accessor for APUISystemApertureAccessoryView();
  v22 = objc_allocWithZone(v21);

  *&v20[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v23);
  v101.receiver = v20;
  v101.super_class = v19;
  v24 = objc_msgSendSuper2(&v101, "initWithNibName:bundle:", 0, 0);

  v25 = *&v12[qword_10005AA58];
  *&v12[qword_10005AA58] = v24;
  v26 = v24;

  v27 = v12;
  v28 = v26;
  [v27 addChildViewController:v28];
  v29 = [v27 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_42;
  }

  v30 = v29;
  v31 = [v28 view];

  if (!v31)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v30 addSubview:v31];

  [v28 didMoveToParentViewController:v27];
  v32 = objc_allocWithZone(v19);
  v33 = objc_allocWithZone(v21);
  v34 = swift_retain_n();
  *&v32[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v34);
  v100.receiver = v32;
  v100.super_class = v19;
  v35 = objc_msgSendSuper2(&v100, "initWithNibName:bundle:", 0, 0);

  v36 = *&v27[qword_10005AA68];
  *&v27[qword_10005AA68] = v35;
  v37 = v35;

  v38 = *&v37[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v39 = direct field offset for APUISystemApertureElementHostingController.leadingView;
  swift_beginAccess();
  v40 = *&v27[v39];
  *&v27[v39] = v38;
  v41 = v38;

  v42 = v37;
  [v27 addChildViewController:v42];
  v43 = [v27 view];

  if (!v43)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v95 = v28;
  v44 = [v42 view];

  if (!v44)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v43 addSubview:v44];

  [v42 didMoveToParentViewController:v27];
  v45 = objc_allocWithZone(v19);
  v46 = objc_allocWithZone(v21);
  v47 = swift_retain_n();
  *&v45[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v47);
  v99.receiver = v45;
  v99.super_class = v19;
  v48 = objc_msgSendSuper2(&v99, "initWithNibName:bundle:", 0, 0);

  v49 = *&v27[qword_10005AA70];
  *&v27[qword_10005AA70] = v48;
  v50 = v48;

  v51 = *&v50[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v52 = direct field offset for APUISystemApertureElementHostingController.trailingView;
  swift_beginAccess();
  v53 = *&v27[v52];
  *&v27[v52] = v51;
  v54 = v51;

  v55 = v50;
  [v27 addChildViewController:v55];
  v56 = [v27 view];

  if (!v56)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v57 = [v55 view];

  if (!v57)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v56 addSubview:v57];

  [v55 didMoveToParentViewController:v27];
  v58 = objc_allocWithZone(v19);
  v59 = objc_allocWithZone(v21);
  v60 = swift_retain_n();
  *&v58[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v60);
  v98.receiver = v58;
  v98.super_class = v19;
  v61 = objc_msgSendSuper2(&v98, "initWithNibName:bundle:", 0, 0);

  v62 = *&v27[qword_10005AA78];
  *&v27[qword_10005AA78] = v61;
  v63 = v61;

  v64 = *&v63[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v65 = direct field offset for APUISystemApertureElementHostingController.minimalView;
  swift_beginAccess();
  v66 = *&v27[v65];
  *&v27[v65] = v64;
  v67 = v64;

  v68 = v63;
  [v27 addChildViewController:v68];
  v69 = [v27 view];

  if (!v69)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v70 = [v68 view];

  if (!v70)
  {
LABEL_48:
    __break(1u);
    return;
  }

  [v69 addSubview:v70];

  [v68 didMoveToParentViewController:v27];
  if (v114 == 1)
  {
    v71 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v72 = *&v27[v71];
    if ((v72 & 8) == 0)
    {
      *&v27[v71] = v72 | 8;
    }
  }

  if (BYTE1(v114) == 1)
  {
    v73 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v74 = *&v27[v73];
    if ((v74 & 0x10) == 0)
    {
      *&v27[v73] = v74 | 0x10;
    }
  }

  if (BYTE2(v114) == 1)
  {
    v75 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v76 = *&v27[v75];
    if ((v76 & 0x40) == 0)
    {
      *&v27[v75] = v76 | 0x40;
    }
  }

  if (BYTE3(v114) == 1)
  {
    v77 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v78 = *&v27[v77];
    if ((v78 & 2) == 0)
    {
      *&v27[v77] = v78 | 2;
    }
  }

  v79 = *(&v114 + 1);
  v80 = direct field offset for APUISystemApertureElementHostingController.elementIdentifier;
  swift_beginAccess();
  v81 = *&v27[v80];
  if (!v79)
  {
    if (!v81)
    {
      goto LABEL_31;
    }

LABEL_30:
    *&v27[v80] = v79;
    v87 = v79;

    goto LABEL_31;
  }

  if (!v81)
  {
    goto LABEL_30;
  }

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;
  if (v82 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v84 == v85)
  {

    goto LABEL_31;
  }

  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v86 & 1) == 0)
  {
    v81 = *&v27[v80];
    goto LABEL_30;
  }

LABEL_31:
  v88 = v115;
  v89 = &v27[direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier];
  swift_beginAccess();
  v90 = *(v89 + 1);
  if (*(&v88 + 1))
  {
    if (v90 && (v88 == *v89 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_38;
    }
  }

  else if (!v90)
  {
    goto LABEL_38;
  }

  *v89 = v88;

LABEL_38:
  v91 = v116;
  v92 = direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress;
  swift_beginAccess();
  v93 = *&v27[v92];

  v94 = sub_10000DBC8(v91, v93);

  sub_10000619C(&v117, &qword_10005A5D0, &unk_10003E4E0);
  (*(*(v96 - 8) + 8))(v97);
  if (v94)
  {

    sub_1000061FC(v113);
  }

  else
  {
    *&v27[v92] = v91;

    sub_1000061FC(v113);
  }
}

unint64_t sub_10000C8BC()
{
  result = qword_10005A9E8;
  if (!qword_10005A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A9E8);
  }

  return result;
}

void *sub_10000C910@<X0>(_BYTE *a1@<X8>)
{
  sub_10000C8BC();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

void *sub_10000C9AC@<X0>(void *a1@<X8>)
{
  sub_10000E524();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10000C9FC(uint64_t *a1)
{
  sub_10000E524();
  swift_unknownObjectRetain();
  return EnvironmentValues.subscript.setter();
}

id APUISystemApertureElementHostingController.layoutSystemApertureAccessoryViews()()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.activeLayoutMode;
  swift_beginAccess();
  if (*&v0[v1] != 4)
  {
    v18 = direct field offset for APUISystemApertureElementHostingController.activeLayoutMode;
    swift_beginAccess();
    if (*&v0[v18] == 3)
    {
      v19 = direct field offset for APUISystemApertureElementHostingController.leadingView;
      swift_beginAccess();
      v20 = *&v0[v19];
      if (v20)
      {
        v21 = v20;
        result = [v0 view];
        if (!result)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v22 = result;
        v23 = [result SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

        [v23 layoutFrame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v54.origin.x = v25;
        v54.origin.y = v27;
        v54.size.width = v29;
        v54.size.height = v31;
        MidX = CGRectGetMidX(v54);
        [v21 center];
        [v21 setCenter:MidX];
      }

      v33 = direct field offset for APUISystemApertureElementHostingController.trailingView;
      swift_beginAccess();
      v34 = *&v0[v33];
      if (v34)
      {
        v15 = v34;
        result = [v0 view];
        if (result)
        {
          v35 = result;
          v36 = [result SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

          [v36 layoutFrame];
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v55.origin.x = v38;
          v55.origin.y = v40;
          v55.size.width = v42;
          v55.size.height = v44;
          v16 = CGRectGetMidX(v55);
          [v15 center];
          goto LABEL_15;
        }

LABEL_27:
        __break(1u);
        return result;
      }
    }

    goto LABEL_16;
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v0[qword_10005AA58];
  if (!v12)
  {
    goto LABEL_16;
  }

  result = [v12 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = result;
  [result frame];
  [v13 setFrame:?];

  v14 = *&v0[qword_10005AA58];
  if (v14)
  {
    result = [v14 view];
    if (result)
    {
      v15 = result;
      v52.origin.x = v5;
      v52.origin.y = v7;
      v52.size.width = v9;
      v52.size.height = v11;
      v16 = CGRectGetMidX(v52);
      v53.origin.x = v5;
      v53.origin.y = v7;
      v53.size.width = v9;
      v53.size.height = v11;
      MidY = CGRectGetMidY(v53);
LABEL_15:
      [v15 setCenter:{v16, MidY}];

      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_16:
  v45 = direct field offset for APUISystemApertureElementHostingController.activeLayoutMode;
  swift_beginAccess();
  v46 = *&v0[v45];
  v47 = direct field offset for APUISystemApertureElementHostingController.leadingView;
  swift_beginAccess();
  v48 = *&v0[v47];
  if (v48)
  {
    [v48 setHidden:v46 == 4];
  }

  v49 = direct field offset for APUISystemApertureElementHostingController.trailingView;
  swift_beginAccess();
  v50 = *&v0[v49];
  if (v50)
  {
    [v50 setHidden:v46 == 4];
  }

  v51 = direct field offset for APUISystemApertureElementHostingController.minimalView;
  swift_beginAccess();
  result = *&v0[v51];
  if (result)
  {
    return [result setHidden:v46 == 4];
  }

  return result;
}

void APUISystemApertureElementHostingController.viewWillLayoutSubviews(with:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_10000E198;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10000CFE0;
  v6[3] = &unk_100052238;
  v4 = _Block_copy(v6);
  v5 = v1;

  [a1 animateAlongsideTransition:v4 completion:0];
  _Block_release(v4);
}

id sub_10000CF1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + qword_10005AA60);
  type metadata accessor for APUISystemApertureElementHostingController(0, *((swift_isaMask & *a2) + 0x98), *((swift_isaMask & *a2) + 0xA0), a4);

  sub_100026EE0(a2, v5);

  v6 = *(a2 + qword_10005AA50);
  sub_10002F478(a2, v6);

  return APUISystemApertureElementHostingController.layoutSystemApertureAccessoryViews()();
}

uint64_t sub_10000CFE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_10000D040(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  APUISystemApertureElementHostingController.viewWillLayoutSubviews(with:)(a3);
  swift_unknownObjectRelease();
}

void sub_10000D0B4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  _s18ActivityProgressUI42APUISystemApertureElementHostingControllerC29preferredContentSizeDidChange08forChildJ9ContainerySo09UIContentP0_p_tF_0();
  swift_unknownObjectRelease();
}

id APUISystemApertureElementHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_10000D1C8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_10000E304();
}

void sub_10000D238()
{

  v1 = *(v0 + qword_10005AA78);
}

id APUISystemApertureElementHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for APUISystemApertureElementHostingController(0, *((swift_isaMask & *v4) + 0x98), *((swift_isaMask & *v4) + 0xA0), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10000D38C(uint64_t a1)
{

  v2 = *(a1 + qword_10005AA78);
}

char *sub_10000D47C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v3);
  v4 = objc_allocWithZone(sub_100005D3C(&qword_10005ABD0, &unk_10003ED50));

  v5 = UIHostingController.init(rootView:)();
  sub_100005D3C(&qword_10005A648, &unk_10003E520);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10003DD60;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v21 = v6;
  sub_10000E4DC(&qword_10005A650, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  sub_100005D3C(&qword_10005A658, qword_10003ED60);
  sub_100006260(&qword_10005A660, &qword_10005A658, qword_10003ED60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v2[OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController] = v5;
  v7 = v5;
  [v7 preferredContentSize];
  v9 = v8;
  v11 = v10;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for APUISystemApertureAccessoryView();
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, v9, v11);
  v13 = OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController;
  result = [*&v12[OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController] view];
  if (result)
  {
    v15 = result;
    [v12 addSubview:result];

    if (SBSIsSystemApertureAvailable())
    {
LABEL_5:

      return v12;
    }

    v16 = objc_opt_self();
    v17 = [v16 clearColor];
    [v12 setBackgroundColor:v17];

    result = [*&v12[v13] view];
    if (result)
    {
      v18 = result;
      v19 = [v16 clearColor];
      [v18 setBackgroundColor:v19];

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10000DB80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000DBC8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v13;
      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DDFC()
{
  v1 = v0 + direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_10000DE44()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.elementIdentifier;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000DE88()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000DECC()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.leadingView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000DF10()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.trailingView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000DF54()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.minimalView;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_10000DFB8@<X0>(_BYTE *a1@<X8>)
{
  sub_10000C8BC();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

void *sub_10000E054@<X0>(void *a1@<X8>)
{
  sub_10000E524();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10000E0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005D3C(&qword_10005A5D0, &unk_10003E4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E160()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E1A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id _s18ActivityProgressUI42APUISystemApertureElementHostingControllerC29preferredContentSizeDidChange08forChildJ9ContainerySo09UIContentP0_p_tF_0()
{
  [v0 preferredContentSize];
  v2 = v1;
  v4 = v3;
  v5 = *&v0[qword_10005AA58];
  if (v5)
  {
    [*(*(v5 + OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view) + OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController) preferredContentSize];
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  [v0 setPreferredContentSize:{v6, v7}];
  result = [v0 preferredContentSize];
  if (v2 != v10 || v4 != v9)
  {
    v12 = [v0 systemApertureElementContext];
    v14[4] = nullsub_1;
    v14[5] = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_100007578;
    v14[3] = &unk_100052408;
    v13 = _Block_copy(v14);
    [v12 setElementNeedsUpdateWithCoordinatedAnimations:v13];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_10000E360(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000E384(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000E3CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000E4DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000E524()
{
  result = qword_10005ABD8;
  if (!qword_10005ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ABD8);
  }

  return result;
}

id sub_10000E648()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_10000E73C()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005AC70);
  v1 = sub_100005D84(v0, qword_10005AC70);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000E810@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_10000E84C(uint64_t a1)
{
  v2 = sub_100015AD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E888(uint64_t a1)
{
  v2 = sub_100015AD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E8EC(void *a1)
{
  v2 = sub_100005D3C(&qword_10005B290, &qword_10003F0E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100015A8C(a1, a1[3]);
  sub_100015AD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10000EA6C(void *a1, uint64_t a2)
{
  v4 = sub_100005D3C(&qword_10005B2C8, &qword_10003F100);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_100015A8C(a1, a1[3]);
  sub_100016B4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_100005D3C(&qword_10005B2B0, &qword_10003F0F8);
  sub_100016BE8(&qword_10005B2D0, &qword_10005B2D8, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10000EC50(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10000ECBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Swift::Int sub_10000ED44()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000EDB0(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000EE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6564496B736174 && a2 == 0xEF73726569666974)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000EEB0(uint64_t a1)
{
  v2 = sub_100016B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EEEC(uint64_t a1)
{
  v2 = sub_100016B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000EF28@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100016990(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000EF84(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10000F02C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

id sub_10000F0AC()
{
  v1 = [v0 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_100016BA0(&qword_10005A6B0, type metadata accessor for ProgressUserInfoKey, &unk_10003E6B8);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = @"HideProgressCircleInUI";
  v4 = sub_100029CB4(@"HideProgressCircleInUI");
  if ((v5 & 1) == 0)
  {

LABEL_6:

    return 0;
  }

  sub_100016CE8(*(v2 + 56) + 32 * v4, v9);

  sub_100009E1C(0, &unk_10005B640, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v6 = [v8 BOOLValue];

    return v6;
  }

  return 0;
}

uint64_t sub_10000F20C()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__taskIdentifier;
  v2 = sub_100005D3C(&qword_10005B3A0, &qword_10003F510);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__bundleID;
  v4 = sub_100005D3C(&qword_10005B3A8, &qword_10003F518);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__title, v4);
  v5(v0 + OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__subtitle, v4);
  v6 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__progress;
  v7 = sub_100005D3C(&qword_10005B3B0, &qword_10003F520);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__icon;
  v9 = sub_100005D3C(&unk_10005B660, &qword_10003F528);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__iconImageOverride;
  v11 = sub_100005D3C(&qword_10005B3B8, &qword_10003F530);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__shouldHideProgressUI;
  v13 = sub_100005D3C(&qword_10005B3C0, &qword_10003F538);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__canceling, v13);
  v14(v0 + OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__failed, v13);
  v15 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__startTime;
  v16 = sub_100005D3C(&qword_10005B3C8, &qword_10003F540);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  return v0;
}

void sub_10000F508(uint64_t a1)
{
  sub_10000F894(319, &qword_10005AD18, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_10000F848(319, &qword_10005AD20, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10000F78C(319);
      if (v3 <= 0x3F)
      {
        sub_10000F7F4(319, &qword_10005AD38, &qword_10005AD40, "ʎ");
        if (v4 <= 0x3F)
        {
          sub_10000F7F4(319, &qword_10005AD48, &unk_10005B650, &qword_10003FCE0);
          if (v5 <= 0x3F)
          {
            sub_10000F848(319, &qword_10005AD50, &type metadata for Bool);
            if (v6 <= 0x3F)
            {
              sub_10000F894(319, &unk_10005AD58, &type metadata accessor for Date);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000F78C(uint64_t a1)
{
  if (!qword_10005AD28)
  {
    sub_100009E1C(255, &qword_10005AD30, NSProgress_ptr);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10005AD28);
    }
  }
}

void sub_10000F7F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100005F90(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10000F848(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000F894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000F8E8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BackgroundActivitySessionTask(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10000F93C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10000F9AC()
{
  _StringGuts.grow(_:)(69);
  v1._countAndFlagsBits = 0xD000000000000026;
  v1._object = 0x8000000100045180;
  String.append(_:)(v1);
  type metadata accessor for Date();
  sub_100016BA0(&qword_10005B390, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3D6469202CLL;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  type metadata accessor for UUID();
  sub_100016BA0(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._object = 0x80000001000451B0;
  v5._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v5);
  if (*(v0 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 93;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0;
}

uint64_t sub_10000FB88(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v7 = type metadata accessor for APKDeviceLockState();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  Date.init()();
  UUID.init()();
  *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_assertion) = 0;
  v14 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle;
  *(v4 + v14) = SBSIsSystemApertureAvailable();
  *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession) = a2;
  v15 = *(v8 + 16);
  v44 = a3;
  v15(v13, a3, v7);
  swift_beginAccess();
  v15(v11, v13, v7);
  Published.init(initialValue:)();
  v16 = *(v8 + 8);
  v42 = v7;
  v43 = v8 + 8;
  v17 = v7;
  v18 = v16;
  v16(v13, v17);
  swift_endAccess();
  if (a2)
  {
    *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier) = sub_100004594(&_swiftEmptyArrayStorage);
    *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers) = &_swiftEmptyArrayStorage;
    sub_10001196C(v45);
  }

  else
  {
    sub_100005D3C(&qword_10005B2E0, &qword_10003F108);
    v19 = v45;
    v20 = (sub_100005D3C(&qword_10005A588, &qword_10003F110) - 8);
    v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
    v22 = swift_allocObject();
    v40 = xmmword_10003DD60;
    *(v22 + 16) = xmmword_10003DD60;
    v23 = v22 + v21;
    v24 = v20[14];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v23 + v24) = v19;

    v25 = sub_100004594(v22);
    swift_setDeallocating();
    sub_10000619C(v23, &qword_10005A588, &qword_10003F110);
    swift_deallocClassInstance();
    *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier) = v25;
    sub_100005D3C(&qword_10005B2E8, &qword_10003F160);
    type metadata accessor for UUID();
    v26 = swift_allocObject();
    *(v26 + 16) = v40;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers) = v26;
  }

  if (qword_10005A190 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100005D84(v27, qword_10005AC70);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46 = v31;
    *v30 = 136315138;
    swift_beginAccess();
    type metadata accessor for UUID();

    v32 = Array.description.getter();
    v34 = v33;

    v35 = sub_100029504(v32, v34, &v46);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Background activity session created for task identifiers %s", v30, 0xCu);
    sub_100005E20(v31);
  }

  v36 = v41;
  v37 = sub_10001068C();
  if (v36)
  {

    v18(v44, v42);
  }

  else
  {
    v38 = v37;
    v18(v44, v42);

    *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity) = v38;
  }

  return v4;
}

uint64_t sub_1000101A0()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005D3C(&qword_10005B2F0, &qword_10003F168);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  if (*(v0 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity))
  {
    v9 = sub_100005D3C(&qword_10005B2F8, &unk_10003F170);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

    (*(v3 + 8))(v5, v2);
    sub_10000619C(v8, &qword_10005B2F0, &qword_10003F168);
  }

  v10 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_startTime;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_id;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);

  v14 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession__lockState;
  v15 = sub_100005D3C(&qword_10005B398, &qword_10003F508);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);

  swift_unknownObjectWeakDestroy();
  return v1;
}

uint64_t sub_100010480(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_100010504(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001053C(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_10000F894(319, &unk_10005B078, &type metadata accessor for APKDeviceLockState);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10001068C()
{
  v1 = v0;
  v2 = sub_100005D3C(&qword_10005B370, &qword_10003F388);
  __chkstk_darwin(v2 - 8);
  v54 = v53 - v3;
  v4 = sub_100005D3C(&qword_10005B2F8, &unk_10003F170);
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v6 = v53 - v5;
  v55 = type metadata accessor for ActivityPresentationOptions();
  v7 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005A190 != -1)
  {
    swift_once();
  }

  v59 = v9;
  v10 = type metadata accessor for Logger();
  v11 = sub_100005D84(v10, qword_10005AC70);

  v53[1] = v11;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    v60[0] = v53[0];
    *v14 = 136315138;
    swift_beginAccess();
    type metadata accessor for UUID();

    v15 = Array.description.getter();
    v17 = v16;

    v18 = sub_100029504(v15, v17, v60);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Creating ActivityKit activity for task identifiers: %s", v14, 0xCu);
    sub_100005E20(v53[0]);
  }

  v19 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);
  sub_100005D3C(&qword_10005B380, &qword_10003F4B0);
  v20 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10003DD60;
  v24 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:);
  if (!v19)
  {
    v24 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:);
  }

  (*(v21 + 104))(v23 + v22, *v24, v20);
  v25 = v59;
  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.shouldShowSystemAperture.setter();
  ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
  v26 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v27 = *(v1 + v26);
  sub_100005D3C(&qword_10005B388, &qword_10003F4B8);
  v61 = v27;
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 56))(v54, 1, 1, v28);
  sub_1000157FC();
  sub_100015854();
  sub_1000158AC();

  v29 = v25;
  ActivityContent.init(state:staleDate:relevanceScore:)();
  v30 = v58;
  v31 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
  if (v30)
  {
    (*(v56 + 8))(v6, v57);
    (*(v7 + 8))(v25, v55);

    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v31;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v61 = v36;
      *v35 = 136315138;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = sub_100029504(v37, v38, &v61);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error requesting activity %s", v35, 0xCu);
      sub_100005E20(v36);

      v31 = v34;
    }

    swift_willThrow();
  }

  else
  {
    v58 = v7;
    (*(v56 + 8))(v6, v57);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v57 = v31;
      v44 = v43;
      v61 = v43;
      *v42 = 136315138;
      v45 = Activity.id.getter();
      v47 = sub_100029504(v45, v46, &v61);

      *(v42 + 4) = v47;
      v29 = v59;
      _os_log_impl(&_mh_execute_header, v40, v41, "Requested activity successfully: %s", v42, 0xCu);
      sub_100005E20(v44);
      v31 = v57;
    }

    Activity.id.getter();
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v31;
    *(v49 + 24) = v48;
    objc_allocWithZone(type metadata accessor for ProminentPresentationAssertion());

    v50 = ProminentPresentationAssertion.init(explanation:activityIdentifier:duration:invalidationHandler:)();
    (*(v58 + 8))(v29, v55);

    v51 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_assertion);
    *(v1 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_assertion) = v50;
  }

  return v31;
}

void sub_100010EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10005A190 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005D84(v4, qword_10005AC70);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    v9 = Activity.id.getter();
    v11 = sub_100029504(v9, v10, v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Prominent assertion invalidated: %s", v7, 0xCu);
    sub_100005E20(v8);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_assertion);
    *(Strong + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_assertion) = 0;
  }
}

void sub_1000110B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  if (*(*(v5 + v8) + 16))
  {

    sub_100029BB8(a2);
    if (v9)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v11)
      {
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v10 = a1;

        static Published.subscript.setter();
        type metadata accessor for BackgroundActivitySession(0);
        sub_100016BA0(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
        ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10001125C(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  result = swift_beginAccess();
  if (*(*(v2 + v5) + 16))
  {

    sub_100029BB8(a2);
    if (v7)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_100009E1C(0, &qword_10005AD30, NSProgress_ptr);
      v8 = static NSObject.== infix(_:_:)();

      if ((v8 & 1) == 0)
      {
        if (qword_10005A190 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_100005D84(v9, qword_10005AC70);

        v10 = a1;
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v23 = v22;
          *v13 = 136315394;
          type metadata accessor for UUID();
          type metadata accessor for BackgroundActivitySessionTask(0);
          sub_100016BA0(&qword_10005B288, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

          v14 = Dictionary.description.getter();
          v16 = v15;

          v17 = sub_100029504(v14, v16, &v23);

          *(v13 + 4) = v17;
          *(v13 + 12) = 2112;
          *(v13 + 14) = v10;
          *v21 = v10;
          v18 = v10;
          _os_log_impl(&_mh_execute_header, v11, v12, "Updating progress for task identifiers %s to: %@", v13, 0x16u);
          sub_10000619C(v21, &qword_10005BC80, &qword_10003E860);

          sub_100005E20(v22);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v19 = v23;
        [v23 setTotalUnitCount:{objc_msgSend(v10, "totalUnitCount")}];

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v20 = v23;
        [v23 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount")}];

        LOBYTE(v20) = sub_10000F0AC();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v23) = v20 & 1;

        static Published.subscript.setter();
        type metadata accessor for BackgroundActivitySession(0);
        sub_100016BA0(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
        ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100011718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  result = swift_beginAccess();
  if (*(*(v5 + v11) + 16))
  {

    sub_100029BB8(a5);
    if ((v13 & 1) == 0)
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v16 == a1 && v17 == a2)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
LABEL_13:
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
        swift_getKeyPath();
        swift_getKeyPath();

        return static Published.subscript.setter();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v16 == a3 && v17 == a4)
    {
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10001196C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v12 = *(v2 + v11);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v13 = sub_100011ED8(v10, v12);

  v34 = *(v5 + 8);
  v35 = v4;
  v33 = v5 + 8;
  result = v34(v10, v4);
  if (!v13)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = *(v2 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v11) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_100016120(0, v15[2] + 1, 1, v15);
      *(v2 + v11) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_100016120((v17 > 1), v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    v19 = v35;
    (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v8, v35);
    *(v2 + v11) = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
    swift_beginAccess();

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v2 + v20);
    *(v2 + v20) = 0x8000000000000000;
    sub_100022C1C(a1, v10, v21);
    v34(v10, v19);
    *(v2 + v20) = v36;
    swift_endAccess();
    sub_10001398C();
    if (qword_10005A190 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100005D84(v22, qword_10005AC70);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37[0] = v32;
      *v25 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_100016BA0(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = v35;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v34(v10, v26);
      v30 = sub_100029504(v27, v29, v37);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Updating Jindo with new task identifier: %s", v25, 0xCu);
      sub_100005E20(v32);
    }

    type metadata accessor for BackgroundActivitySession(0);
    sub_100016BA0(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();
  }

  return result;
}

BOOL sub_100011ED8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for UUID();
    ++v2;
    sub_100016BA0(&qword_10005BBA0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_100011FE4(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v4 = v3;
  v88 = a2;
  v89 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v82 = *(v6 - 8);
  __chkstk_darwin(v6);
  v80 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchTimeInterval();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for DispatchTime();
  v77 = *(v87 - 8);
  v10 = __chkstk_darwin(v87);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = &v69 - v13;
  v14 = type metadata accessor for Date();
  v85 = *(v14 - 8);
  v86 = v14;
  v15 = __chkstk_darwin(v14);
  v84 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v83 = &v69 - v17;
  v18 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v18 - 8);
  v72 = &v69 - v19;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v24 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v69 - v25;
  v27 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  result = swift_beginAccess();
  v29 = *(v4 + v27);
  if (*(v29 + 16))
  {

    v30 = sub_100029BB8(a1);
    if (v31)
    {
      v71 = v12;
      v70 = v6;
      v32 = *(*(v29 + 56) + 8 * v30);

      v33 = *(v21 + 16);
      v33(v26, a1, v20);
      v33(v24, v26, v20);
      v34 = v32;
      v35 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v4;
      (*(v21 + 32))(v36 + v35, v26, v20);
      v37 = (v36 + ((v22 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
      v39 = v88;
      v38 = v89;
      *v37 = v88;
      v37[1] = v38;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000177A8(v39, v38);

      static Published.subscript.getter();

      v40 = aBlock[0];
      LODWORD(v35) = [aBlock[0] isFinished];

      if (!v35 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v41 = aBlock[0], v42 = [aBlock[0] isCancelled], v41, (v42 & 1) != 0))
      {
        sub_1000131D0(v4, v24, v39, v38);

        return (*(v21 + 8))(v24, v20);
      }

      (*(v21 + 8))(v24, v20);
      v43 = *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity);
      if (v43)
      {
        v44 = type metadata accessor for TaskPriority();
        v45 = v72;
        (*(*(v44 - 8) + 56))(v72, 1, 1, v44);
        type metadata accessor for MainActor();
        swift_retain_n();

        v46 = static MainActor.shared.getter();
        v47 = swift_allocObject();
        v47[2] = v46;
        v47[3] = &protocol witness table for MainActor;
        v47[4] = v34;
        v47[5] = v43;
        sub_100018ED4(0, 0, v45, &unk_10003F378, v47);
      }

      v48 = v83;
      Date.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      v49 = v84;
      static Published.subscript.getter();

      Date.timeIntervalSince(_:)();
      v51 = v50;
      v52 = v50;
      v53 = *(v85 + 8);
      v54 = v49;
      v55 = v86;
      v53(v54, v86);
      result = (v53)(v48, v55);
      v56 = v71;
      if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v51 > -9.22337204e18)
      {
        if (v51 < 9.22337204e18)
        {
          v57 = v51;
          v69 = v34;
          if (v51 > 3)
          {
            v58 = 10;
LABEL_16:
            sub_100009E1C(0, &qword_10005B680, OS_dispatch_queue_ptr);
            v88 = static OS_dispatch_queue.main.getter();
            static DispatchTime.now()();
            v59 = v73;
            *v73 = v58;
            v60 = v74;
            v61 = v75;
            (*(v74 + 104))(v59, enum case for DispatchTimeInterval.seconds(_:), v75);
            v62 = v76;
            + infix(_:_:)();
            (*(v60 + 8))(v59, v61);
            v89 = *(v77 + 8);
            v89(v56, v87);
            v63 = swift_allocObject();
            v63[2] = sub_100017714;
            v63[3] = v36;
            aBlock[4] = sub_100017854;
            aBlock[5] = v63;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100007578;
            aBlock[3] = &unk_100052548;
            v64 = _Block_copy(aBlock);

            v65 = v78;
            static DispatchQoS.unspecified.getter();
            v90 = &_swiftEmptyArrayStorage;
            sub_100016BA0(&qword_10005B300, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_100005D3C(&qword_10005BD10, &qword_100040A60);
            sub_100006260(&qword_10005B308, &qword_10005BD10, &qword_100040A60, &protocol conformance descriptor for [A]);
            v66 = v80;
            v67 = v70;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v68 = v88;
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            _Block_release(v64);

            (*(v82 + 8))(v66, v67);
            (*(v79 + 8))(v65, v81);
            v89(v62, v87);
          }

          v58 = 3 - v57;
          if (!__OFSUB__(3, v57))
          {
            goto LABEL_16;
          }

          goto LABEL_20;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_100012AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  sub_100005D3C(&qword_10005B368, &qword_10003F380);
  v5[6] = swift_task_alloc();
  sub_100005D3C(&qword_10005B370, &qword_10003F388);
  v5[7] = swift_task_alloc();
  v6 = sub_100005D3C(&qword_10005B2F8, &unk_10003F170);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for AlertConfiguration.AlertSound();
  v5[11] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for AlertConfiguration();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v9;
  v5[19] = v8;

  return _swift_task_switch(sub_100012D08, v9, v8);
}

uint64_t sub_100012D08()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[7];
  v9 = v0[6];
  v10 = v0[14];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  static AlertConfiguration.AlertSound.default.getter();
  AlertConfiguration.init(title:body:sound:)();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1000157FC();
  sub_100015854();
  sub_1000158AC();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  (*(v1 + 16))(v9, v2, v10);
  (*(v1 + 56))(v9, 0, 1, v10);
  v11 = (&async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:) + async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:));
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_100012F40;
  v6 = v0[10];
  v7 = v0[6];

  return v11(v6, v7);
}

uint64_t sub_100012F40()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 48);

  sub_10000619C(v5, &qword_10005B368, &qword_10003F380);
  (*(v3 + 8))(v2, v4);
  v6 = *(v1 + 152);
  v7 = *(v1 + 144);

  return _swift_task_switch(sub_1000130F0, v7, v6);
}

uint64_t sub_1000130F0()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_1000131D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v27[1] = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v11 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v12 = sub_1000162F8(sub_100017984, v28);
  v13 = *(*(a1 + v11) + 16);
  if (v13 < v12)
  {
    __break(1u);
  }

  else
  {
    sub_100017210(v12, v13);
    swift_endAccess();
    v11 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
    swift_beginAccess();
    sub_1000191C4(a2);
    swift_endAccess();

    sub_10001398C();
    if (qword_10005A190 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  sub_100005D84(v14, qword_10005AC70);
  (*(v8 + 16))(v10, a2, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27[0] = a3;
    v19 = v18;
    v30[0] = v18;
    *v17 = 136315138;
    sub_100016BA0(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v7;
    v22 = v11;
    v24 = v23;
    (*(v8 + 8))(v10, v21);
    v25 = sub_100029504(v20, v24, v30);
    v11 = v22;

    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Updating Jindo with removed task identifier: %s", v17, 0xCu);
    sub_100005E20(v19);
    a3 = v27[0];
  }

  else
  {

    v26 = (*(v8 + 8))(v10, v7);
  }

  if (*(*(a1 + v11) + 16))
  {
    type metadata accessor for BackgroundActivitySession(0);
    sub_100016BA0(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();
  }

  if (a3)
  {
    a3(v26);
  }
}

uint64_t sub_100013584()
{
  v1 = 0xD00000000000002DLL;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle) != 1)
  {
    return v1;
  }

  v6 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (!*(v7 + 16))
  {
    return v1;
  }

  (*(v3 + 16))(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
  v8 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  if (!*(*(v0 + v8) + 16))
  {
LABEL_21:
    (*(v3 + 8))(v5, v2);
    return v1;
  }

  sub_100029BB8(v5);
  if ((v9 & 1) == 0)
  {

    goto LABEL_21;
  }

  v24 = v3;
  v25 = 0x8000000100045120;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v30;
  v27 = v29;
  v11 = *(v0 + v8);
  v28 = &_swiftEmptyArrayStorage;
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v26 = v11;

  v17 = 0;
  while (v15)
  {
    v18 = v17;
LABEL_14:
    v15 &= v15 - 1;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v29 == v27 && v30 == v10)
    {

      v17 = v18;
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v17 = v18;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  if ((v28 & 0x8000000000000000) == 0 && (v28 & 0x4000000000000000) == 0)
  {
    v21 = *(v28 + 16);
    goto LABEL_26;
  }

LABEL_30:
  v21 = _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
  v1 = 0xD00000000000002DLL;
  v22 = v24;

  (*(v22 + 8))(v5, v2);
  if (v21 <= 0)
  {
    return v27;
  }

  return v1;
}

void sub_10001398C()
{
  v0 = sub_100013584();
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = [Strong systemApertureElementViewControllerProvider], v4, v5))
  {
    v10 = [v5 systemApertureElementViewController];
    swift_unknownObjectRelease();
    sub_100005D3C(&unk_10005A5C0, &qword_10003E480);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = (v6 + direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier);
      swift_beginAccess();
      v8 = v7[1];
      if (v8 && (*v7 == v0 ? (v9 = v8 == v2) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {
        *v7 = v0;
        v7[1] = v2;
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_100013B28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100009E1C(0, &qword_10005B680, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v14 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v12 + 32))(v15 + v14, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v15 + ((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  aBlock[4] = sub_100016E14;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007578;
  aBlock[3] = &unk_100052480;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100016BA0(&qword_10005B300, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005D3C(&qword_10005BD10, &qword_100040A60);
  sub_100006260(&qword_10005B308, &qword_10005BD10, &qword_100040A60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v20;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v7, v5);
  (*(v21 + 8))(v10, v22);
}

void sub_100013EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v98 = a3;
  v5 = type metadata accessor for UUID();
  v97 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v96 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v7;
  __chkstk_darwin(v6);
  v94 = &v84 - v8;
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v93 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v88 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  v89 = *(v14 - 8);
  __chkstk_darwin(v14);
  v92 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100005D3C(&qword_10005B310, &qword_10003F180);
  v90 = *(v91 - 8);
  v16 = __chkstk_darwin(v91);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v84 - v20;
  __chkstk_darwin(v19);
  v23 = &v84 - v22;
  v24 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v25 = *(a1 + v24);
  if (*(v25 + 16))
  {

    v87 = a2;
    v26 = sub_100029BB8(a2);
    if (v27)
    {
      v85 = v5;
      v86 = a1;
      v28 = *(*(v25 + 56) + 8 * v26);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v29 = aBlock;
      v30 = [aBlock isCancelled];

      if (v30 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , (aBlock))
      {
      }

      else
      {
        v84 = v28;
        if ((v98 - 1) >= 6)
        {
          if (v98)
          {
            aBlock = 0;
            v100 = 0xE000000000000000;
            _StringGuts.grow(_:)(22);

            aBlock = 0x20746E657645;
            v100 = 0xE600000000000000;
            v82._countAndFlagsBits = 0x6E776F6E6B6E75;
            v82._object = 0xE700000000000000;
            String.append(_:)(v82);

            v83._countAndFlagsBits = 0x70757320746F6E20;
            v83._object = 0xEE00646574726F70;
            String.append(_:)(v83);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v31 = aBlock;
            [aBlock fractionCompleted];
            v33 = v32;

            v105 = v33;
            v34 = v92;
            static Locale.autoupdatingCurrent.getter();
            sub_100016F1C();
            FloatingPointFormatStyle.Percent.init(locale:)();
            static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
            v35 = v91;
            FloatingPointFormatStyle.Percent.precision(_:)();
            (*(v88 + 8))(v13, v11);
            v36 = *(v90 + 8);
            v36(v18, v35);
            static Locale.current.getter();
            FloatingPointFormatStyle.Percent.locale(_:)();
            (*(v89 + 8))(v34, v14);
            v36(v21, v35);
            sub_100006260(&qword_10005B320, &qword_10005B310, &qword_10003F180, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
            BinaryFloatingPoint.formatted<A>(_:)();
            v36(v23, v35);
            v37 = aBlock;
            v38 = v100;
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            sub_100005D3C(&qword_10005B328, &qword_10003F260);
            v39 = swift_allocObject();
            v98 = xmmword_10003ED90;
            *(v39 + 16) = xmmword_10003ED90;
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v40 = aBlock;
            v41 = v100;
            *(v39 + 56) = &type metadata for String;
            v42 = sub_100016F78();
            *(v39 + 32) = v40;
            *(v39 + 40) = v41;
            *(v39 + 96) = &type metadata for String;
            *(v39 + 104) = v42;
            *(v39 + 64) = v42;
            *(v39 + 72) = v37;
            *(v39 + 80) = v38;
            v91 = String.init(format:_:)();
            v90 = v43;

            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v44 = String.init(localized:table:bundle:locale:comment:)();
            v46 = v45;
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v47 = String.init(localized:table:bundle:locale:comment:)();
            v49 = v48;
            sub_100005D3C(&qword_10005B338, &qword_10003F2B0);
            v50 = swift_allocObject();
            *(v50 + 16) = v98;
            *(v50 + 32) = v44;
            *(v50 + 40) = v46;
            *(v50 + 48) = v47;
            *(v50 + 56) = v49;
            sub_100005D3C(&qword_10005B340, &qword_10003F2B8);
            inited = swift_initStackObject();
            *(inited + 16) = v98;
            *(inited + 32) = v44;
            *(inited + 40) = v46;
            sub_100009E1C(0, &unk_10005B640, NSNumber_ptr);

            *(inited + 48) = NSNumber.init(integerLiteral:)(1);
            *(inited + 56) = v47;
            *(inited + 64) = v49;
            *(inited + 72) = NSNumber.init(integerLiteral:)(2);
            sub_1000045B8(inited);
            swift_setDeallocating();
            sub_100005D3C(&qword_10005B348, &qword_10003F2C0);
            swift_arrayDestroy();
            v52 = v97;
            v53 = v94;
            v54 = v85;
            *&v98 = *(v97 + 16);
            (v98)(v94, v87, v85);
            v55 = (*(v52 + 80) + 24) & ~*(v52 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = 0;
            (*(v52 + 32))(v56 + v55, v53, v54);
            v57 = objc_allocWithZone(APKActivityProgressEventAction);
            v58 = String._bridgeToObjectiveC()();

            isa = Array._bridgeToObjectiveC()().super.isa;

            v60 = Dictionary._bridgeToObjectiveC()().super.isa;

            v103 = sub_100017054;
            v104 = v56;
            aBlock = _NSConcreteStackBlock;
            v100 = 1107296256;
            v101 = sub_1000160CC;
            v102 = &unk_1000524D0;
            v61 = _Block_copy(&aBlock);
            v62 = [v57 initWithType:0 title:v58 buttons:isa buttonToResults:v60 handler:v61];

            _Block_release(v61);

            if (qword_10005A190 != -1)
            {
              swift_once();
            }

            v63 = type metadata accessor for Logger();
            sub_100005D84(v63, qword_10005AC70);
            v64 = v96;
            (v98)(v96, v87, v54);
            v65 = v62;
            v66 = Logger.logObject.getter();
            v67 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v66, v67))
            {
              v68 = v64;
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              aBlock = v71;
              *v69 = 138412546;
              *(v69 + 4) = v65;
              *v70 = v65;
              *(v69 + 12) = 2080;
              sub_100016BA0(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v72 = v65;
              v73 = dispatch thunk of CustomStringConvertible.description.getter();
              v75 = v74;
              (*(v97 + 8))(v68, v54);
              v76 = sub_100029504(v73, v75, &aBlock);

              *(v69 + 14) = v76;
              _os_log_impl(&_mh_execute_header, v66, v67, "Sending event action: %@ for identifier: %s", v69, 0x16u);
              sub_10000619C(v70, &qword_10005BC80, &qword_10003E860);

              sub_100005E20(v71);
            }

            else
            {

              (*(v97 + 8))(v64, v54);
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v78 = Strong;
              v79 = [Strong _FBSScene];

              sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
              v80 = swift_initStackObject();
              *(v80 + 16) = xmmword_10003EDA0;
              *(v80 + 32) = v65;
              v65 = v65;
              sub_1000172D0(v80);
              swift_setDeallocating();
              swift_arrayDestroy();
              sub_100009E1C(0, &qword_10005B350, BSAction_ptr);
              sub_1000175C0();
              v81 = Set._bridgeToObjectiveC()().super.isa;

              [v79 sendActions:v81];
            }
          }
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(aBlock) = 1;
          static Published.subscript.setter();
        }
      }
    }

    else
    {
    }
  }
}

void sub_100014E34(Swift::Int a1, Swift::Int a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005A190 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005D84(v10, qword_10005AC70);
  (*(v7 + 16))(v9, a3, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v11, v12))
  {

    (*(v7 + 8))(v9, v6);
    goto LABEL_32;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 136315650;
  v30 = a1;
  v31 = v14;
  v29[0] = v14;
  v29[1] = a3;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v15 = 0xEC00000073736572;
        v16 = 0x676F7250776F6C73;
        goto LABEL_21;
      case 1:
        v15 = 0xE800000000000000;
        v16 = 0x6E69617244436F53;
        goto LABEL_21;
      case 2:
        v15 = 0x8000000100045070;
        v16 = 0xD000000000000011;
        goto LABEL_21;
    }

LABEL_17:
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    goto LABEL_21;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v15 = 0x8000000100045010;
      v16 = 0xD000000000000016;
      goto LABEL_21;
    }

    if (a2 == 6)
    {
      v16 = 0xD000000000000010;
      v15 = 0x8000000100044FF0;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (a2 == 3)
  {
    v15 = 0x8000000100045050;
    v16 = 0xD000000000000014;
  }

  else
  {
    v15 = 0x8000000100045030;
    v16 = 0xD000000000000012;
  }

LABEL_21:
  v17 = sub_100029504(v16, v15, &v31);

  *(v13 + 4) = v17;
  *(v13 + 12) = 2080;
  sub_100016BA0(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  v21 = sub_100029504(v18, v20, &v31);

  *(v13 + 14) = v21;
  *(v13 + 22) = 2080;
  a1 = v30;
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v22 = 0xE600000000000000;
      v23 = 0x6465696E6564;
      goto LABEL_31;
    }

    if (v30 == 3)
    {
      v22 = 0xED00006465776F6CLL;
      v23 = 0x6C41737961776C61;
      goto LABEL_31;
    }

LABEL_28:
    v22 = 0xE700000000000000;
    v23 = 0x6E776F6E6B6E75;
    goto LABEL_31;
  }

  if (!v30)
  {
    v22 = 0xEC00000064656E69;
    v23 = 0x6D72657465646E75;
    goto LABEL_31;
  }

  if (v30 != 1)
  {
    goto LABEL_28;
  }

  v22 = 0xE700000000000000;
  v23 = 0x6465776F6C6C61;
LABEL_31:
  v24 = sub_100029504(v23, v22, &v31);

  *(v13 + 24) = v24;
  _os_log_impl(&_mh_execute_header, v11, v12, "Activity event %s for identifier: %s received result %s", v13, 0x20u);
  swift_arrayDestroy();

LABEL_32:
  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  v25 = *(qword_10005C670 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient);
  if (v25)
  {
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    sub_100009E1C(0, &unk_10005B640, NSNumber_ptr);
    v27 = NSNumber.init(integerLiteral:)(a2).super.super.isa;
    v28 = NSNumber.init(integerLiteral:)(a1).super.super.isa;
    [v25 eventResultReceivedForActivity:isa event:v27 result:v28];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000153A0()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100005D3C(&qword_10005B2F0, &qword_10003F168);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v27[-v8];
  v10 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity;
  if (*(v0 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity))
  {
    v11 = qword_10005A190;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005D84(v12, qword_10005AC70);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = v3;
      v16 = v15;
      v29 = swift_slowAlloc();
      v32 = v29;
      *v16 = 136315394;
      v28 = v14;
      v17 = Activity.id.getter();
      v19 = sub_100029504(v17, v18, &v32);
      v31 = v2;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      swift_beginAccess();
      type metadata accessor for UUID();

      v21 = Array.description.getter();
      v23 = v22;

      v24 = v21;
      v2 = v31;
      v25 = sub_100029504(v24, v23, &v32);

      *(v16 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v13, v28, "Ending activity %s for task identifiers: %s", v16, 0x16u);
      swift_arrayDestroy();

      v3 = v30;
    }

    v26 = sub_100005D3C(&qword_10005B2F8, &unk_10003F170);
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

    (*(v3 + 8))(v5, v2);
    sub_10000619C(v9, &qword_10005B2F0, &qword_10003F168);
    *(v1 + v10) = 0;
  }

  return result;
}

unint64_t sub_10001574C()
{
  result = qword_10005B258;
  if (!qword_10005B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B258);
  }

  return result;
}

unint64_t sub_1000157A4()
{
  result = qword_10005B260;
  if (!qword_10005B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B260);
  }

  return result;
}

unint64_t sub_1000157FC()
{
  result = qword_10005B268;
  if (!qword_10005B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B268);
  }

  return result;
}

unint64_t sub_100015854()
{
  result = qword_10005B270;
  if (!qword_10005B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B270);
  }

  return result;
}

unint64_t sub_1000158AC()
{
  result = qword_10005B278;
  if (!qword_10005B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B278);
  }

  return result;
}

unint64_t sub_100015904()
{
  result = qword_10005B280;
  if (!qword_10005B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B280);
  }

  return result;
}

uint64_t sub_1000159A0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for BackgroundActivitySession(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100015A04@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_100015A8C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100015AD0()
{
  result = qword_10005B298;
  if (!qword_10005B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B298);
  }

  return result;
}

uint64_t sub_100015B60@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_100015BE0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100015CA0@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_100015D30(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return static Published.subscript.setter();
}

uint64_t sub_100015DE0@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_100015E70(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100015EE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100015F58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v17 - v13;
  v15 = *(v9 + 16);
  v15(&v17 - v13, a1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v15(v12, v14, v8);

  static Published.subscript.setter();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_1000160CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void *sub_100016120(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005D3C(&qword_10005B2E8, &qword_10003F160);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1000162F8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - v11;
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_10001669C(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v9;
    v42 = v12;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_100016788(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001669C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void *sub_10001679C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D3C(&qword_10005B3D0, &qword_10003F548);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100016990(void *a1)
{
  v3 = sub_100005D3C(&qword_10005B2A0, &qword_10003F0F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_100015A8C(a1, a1[3]);
  sub_100016B4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005E20(a1);
  }

  else
  {
    sub_100005D3C(&qword_10005B2B0, &qword_10003F0F8);
    sub_100016BE8(&qword_10005B2B8, &qword_10005B2C0, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100005E20(a1);
  }

  return v7;
}

unint64_t sub_100016B4C()
{
  result = qword_10005B2A8;
  if (!qword_10005B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B2A8);
  }

  return result;
}

uint64_t sub_100016BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100016BE8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005F90(&qword_10005B2B0, &qword_10003F0F8);
    sub_100016BA0(a2, &type metadata accessor for UUID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100016CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100016D44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100016E14()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100013EF8(v3, v0 + v2, v4);
}

uint64_t sub_100016EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100016F1C()
{
  result = qword_10005B318;
  if (!qword_10005B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B318);
  }

  return result;
}

unint64_t sub_100016F78()
{
  result = qword_10005B330;
  if (!qword_10005B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B330);
  }

  return result;
}

uint64_t sub_100016FCC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100017054(Swift::Int a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100014E34(a1, v4, v5);
}

unint64_t sub_1000170C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for UUID();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100017210(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100016120(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1000170C8(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1000172D0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100005D3C(&qword_10005B360, &unk_10003F2C8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009E1C(0, &qword_10005B350, BSAction_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009E1C(0, &qword_10005B350, BSAction_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_1000175C0()
{
  result = qword_10005B358;
  if (!qword_10005B358)
  {
    sub_100009E1C(255, &qword_10005B350, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B358);
  }

  return result;
}

uint64_t sub_100017630()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_100017714()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  sub_1000131D0(v3, v0 + v2, v5, v6);
}

uint64_t sub_1000177A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001781C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001787C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000178C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007B74;

  return sub_100012AD8(a1, v4, v5, v7, v6);
}

uint64_t sub_100017AB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017AE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for BackgroundActivityAttributes.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BackgroundActivityAttributes.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100017C3C()
{
  result = qword_10005B3D8;
  if (!qword_10005B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3D8);
  }

  return result;
}

unint64_t sub_100017C94()
{
  result = qword_10005B3E0;
  if (!qword_10005B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3E0);
  }

  return result;
}

unint64_t sub_100017CEC()
{
  result = qword_10005B3E8;
  if (!qword_10005B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3E8);
  }

  return result;
}

unint64_t sub_100017D44()
{
  result = qword_10005B3F0;
  if (!qword_10005B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3F0);
  }

  return result;
}

unint64_t sub_100017D9C()
{
  result = qword_10005B3F8;
  if (!qword_10005B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3F8);
  }

  return result;
}

__n128 sub_100017E10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_100017E24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100017E6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100017EC8()
{
  result = qword_10005B400;
  if (!qword_10005B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B400);
  }

  return result;
}

uint64_t sub_100017F1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = (a4 >> 8) & 1;
  v5 = sub_1000180C8(a2, a3, a4 & 0x10101);
  objc_allocWithZone(type metadata accessor for BackgroundActivityProgressMicaView());
  v6 = v5;
  sub_100009824(8, v5);
  v8 = v7;
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100018A34();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v8 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress);
  *(v8 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress) = v14;
  v10 = v14;

  sub_1000088C8();
  v11 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  v12 = 1;
  swift_beginAccess();
  *(v8 + v11) = v4;
  sub_100009170();
  if (*(v8 + v11) == 1)
  {
    v12 = *(v8 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction) == 0;
  }

  [*(v8 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton) setHidden:v12];

  return v8;
}

uint64_t sub_1000180C8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x100) == 0)
  {
    return 0;
  }

  v17 = v8;
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100018A34();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18)
  {
    return 0;
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v18;
  v12 = [v18 isCancellable];

  if (!v12)
  {
    return 0;
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v18;
  v14 = [v18 isFinished];

  result = 0;
  if ((v14 & 1) == 0)
  {
    sub_100018A9C();
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    UUID.uuidString.getter();
    (*(v7 + 8))(v10, v17);
    String._bridgeToObjectiveC()();

    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    *(v16 + 32) = a3 & 1;
    *(v16 + 33) = 1;
    *(v16 + 34) = BYTE2(a3) & 1;
    sub_100006258(a1, a2);
    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

void sub_100018468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100018A34();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v19 == 1)
  {
    *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled) = 1;
    v9 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress;
    v10 = *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress);
    [v10 setCompletedUnitCount:0];
    v11 = *(a1 + v9);
    *(a1 + v9) = v10;
    v12 = v10;

    sub_1000088C8();
    sub_100009170();
    sub_100008F04();
  }

  else
  {
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress);
    *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress) = v18;
    v14 = v18;

    sub_1000088C8();
  }

  v15 = sub_1000180C8(a3, a4, a5 & 0x10101);
  v16 = *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction);
  *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction) = v15;
  v17 = v15;
  sub_100008A04(v16);
}

uint64_t sub_100018680(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  sub_100005D3C(&qword_10005B2E8, &qword_10003F160);
  type metadata accessor for UUID();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10003DD60;
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100018A34();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000192B8(v4);
}

uint64_t sub_100018818(uint64_t a1)
{
  if (*(v1 + 18))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_100017F1C(a1, *v1, *(v1 + 8), v2 | v3 | *(v1 + 16));
}

void sub_100018854(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v2 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_100018468(a1, a2, *v2, *(v2 + 8), v3 | v4 | *(v2 + 16));
}

uint64_t sub_1000188F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000189E0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100018954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000189E0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000189B8(uint64_t a1)
{
  sub_1000189E0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000189E0()
{
  result = qword_10005B408;
  if (!qword_10005B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B408);
  }

  return result;
}

unint64_t sub_100018A34()
{
  result = qword_10005B410;
  if (!qword_10005B410)
  {
    type metadata accessor for BackgroundActivitySessionTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B410);
  }

  return result;
}

unint64_t sub_100018A9C()
{
  result = qword_10005B418;
  if (!qword_10005B418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005B418);
  }

  return result;
}

uint64_t sub_100018AF0()
{
  sub_1000062A8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 35, 7);
}

uint64_t sub_100018B68(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = *(v21 + 16);
  if (v4)
  {
    v5 = sub_1000219D4(*(v21 + 16), 0);
    v6 = sub_100023598(&v21, (v5 + 32), v4, v21);
    sub_1000236EC(v21);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_5:
  v21 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v20)
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v5 = v21;
  }

  if (v5 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        goto LABEL_19;
      }

      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v9 = *(v5 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

LABEL_19:
      if (*(v9 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity))
      {

        v11 = a1;
        v12 = a2;
        v13 = Activity.id.getter();
        v15 = v14;

        v16 = v13;
        a2 = v12;
        if (v16 == v11 && v15 == v12)
        {

LABEL_27:

          return v9;
        }

        a1 = v11;
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          goto LABEL_27;
        }
      }

      ++v8;
      if (v10 == i)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_31:

  return 0;
}

uint64_t sub_100018E60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100018ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100021A5C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000619C(v11, &qword_10005B590, &qword_10003E800);
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

      sub_10000619C(a3, &qword_10005B590, &qword_10003E800);

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

  sub_10000619C(a3, &qword_10005B590, &qword_10003E800);
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

uint64_t sub_1000191D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = sub_100029BB8(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000231B0(a2, a3);
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  sub_100022780(v9, v11);
  *v6 = v11;
  return v14;
}

void sub_1000192B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005D84(v8, qword_10005B420);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v5;
    v13 = v12;
    v37[0] = v12;
    *v11 = 136315138;
    v14 = Array.description.getter();
    v16 = sub_100029504(v14, v15, v37);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Requested cancel for task identifiers: %s", v11, 0xCu);
    sub_100005E20(v13);
    v5 = v35;
  }

  v34 = a1;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(v5 + 16);
    v35 = v5 + 16;
    v36 = v18;
    v19 = v34 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    v18(v7, v19, v4);
    while (1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v21 = v38;
      if (*(v38 + 16) && (v22 = sub_100029BB8(v7), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);

        v25 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
        swift_beginAccess();
        if (*(*(v24 + v25) + 16))
        {

          sub_100029BB8(v7);
          if (v26)
          {

            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v38) = 1;
            static Published.subscript.setter();
          }

          else
          {
          }
        }
      }

      else
      {
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v27 = v38;
      if (v38)
      {
        v28 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
        swift_beginAccess();
        if (!*(*(v27 + v28) + 16))
        {
          goto LABEL_8;
        }

        sub_100029BB8(v7);
        if (v29)
        {

          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v38) = 1;
          static Published.subscript.setter();
LABEL_8:

          goto LABEL_9;
        }
      }

LABEL_9:
      (*(v5 + 8))(v7, v4);
      v19 += v20;
      if (!--v17)
      {
        break;
      }

      v36(v7, v19, v4);
    }
  }

  v30 = *(v2 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient);
  if (v30)
  {
    v31 = objc_allocWithZone(APKActivityProgressTasksSpecifier);
    swift_unknownObjectRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v33 = [v31 initWithTaskIdentifiers:isa];

    [v30 cancelActivities:v33];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000197B0()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005B420);
  v1 = sub_100005D84(v0, qword_10005B420);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100019878()
{
  result = [objc_allocWithZone(type metadata accessor for BackgroundActivitySessionsController(0)) init];
  qword_10005C670 = result;
  return result;
}

uint64_t sub_1000198AC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10001992C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000199A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_100019A18()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v32 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v31[1] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100005D3C(&qword_10005B670, &qword_10003FD88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - v8;
  v10 = sub_100005D3C(&qword_10005B678, &qword_10003FD90);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v31 - v12;
  *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener] = 0;
  *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_connection] = 0;
  *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient] = 0;
  v14 = OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController__backgroundActivitySessionsByTaskID;
  aBlock[0] = sub_1000046BC(&_swiftEmptyArrayStorage);
  sub_100005D3C(&qword_10005B4B8, &qword_10003F9E0);
  Published.init(initialValue:)();
  (*(v11 + 32))(&v0[v14], v13, v10);
  v15 = OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController__groupJindoSession;
  aBlock[0] = 0;
  sub_100005D3C(&qword_10005B4C8, &qword_10003F9E8);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v0[v15], v9, v6);
  v16 = OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_hapticGenerator;
  *&v0[v16] = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_shouldPlayHapticOnSceneActivation] = 0;
  v17 = OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_queue;
  sub_100009E1C(0, &qword_10005B680, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000247B8(&qword_10005B688, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005D3C(&qword_10005B690, qword_10003FD98);
  sub_100024754();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v33 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for APKLockStateMonitor();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_lockStateMonitor] = APKLockStateMonitor.init()();
  type metadata accessor for BackgroundActivitySystemPillController();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_pillController] = sub_10000675C();
  v18 = ObjectType;
  v40.receiver = v0;
  v40.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v40, "init");
  sub_1000247B8(&qword_10005B6A0, type metadata accessor for BackgroundActivitySessionsController, &unk_10003FA10);
  v20 = v19;

  dispatch thunk of APKLockStateMonitor.delegate.setter();

  v37 = v20;
  v38 = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100024800;
  *(v21 + 24) = &v36;
  aBlock[4] = sub_100024854;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024850;
  aBlock[3] = &unk_100052A60;
  v22 = _Block_copy(aBlock);
  v23 = objc_opt_self();

  v24 = [v23 listenerWithConfigurator:v22];
  _Block_release(v22);

  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v18 = OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener;
    v25 = *&v20[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener];
    *&v20[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener] = v24;

    if (qword_10005A198 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v26 = type metadata accessor for Logger();
  sub_100005D84(v26, qword_10005B420);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "BackgroundActivitySessionsController listener is activating...", v29, 2u);
  }

  result = *&v20[v18];
  if (result)
  {
    [result activate];

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10001A144(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

void sub_10001A228()
{
  v1 = *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener];
  if (v1)
  {
    ObjectType = swift_getObjectType();
    [v1 invalidate];
    v3.receiver = v0;
    v3.super_class = ObjectType;
    objc_msgSendSuper2(&v3, "dealloc");
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for BackgroundActivitySessionsController(uint64_t a1)
{
  result = qword_10005B4A0;
  if (!qword_10005B4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001A498(uint64_t a1)
{
  sub_10000F7F4(319, &qword_10005B4B0, &qword_10005B4B8, &qword_10003F9E0);
  if (v1 <= 0x3F)
  {
    sub_10000F7F4(319, &qword_10005B4C0, &qword_10005B4C8, &qword_10003F9E8);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10001A5C8(uint64_t a1)
{
  v1 = type metadata accessor for APKDeviceLockState();
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v29[2] && (sub_100029BB8(v10), (v11 & 1) != 0))
  {
    KeyPath = *(v5 + 8);
    v12 = KeyPath;

    v12(v10, v4);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = v29;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10001125C(v13, v8);

    return (KeyPath)(v8, v4);
  }

  else
  {

    v15 = *(v5 + 8);
    v16 = v10;
    v17 = v4;
    v15(v16, v4);
    dispatch thunk of APKLockStateMonitor.lockState.getter();
    type metadata accessor for BackgroundActivitySession(0);
    swift_allocObject();

    v19 = v28;
    result = sub_10000FB88(v18, 0, v3);
    if (!v19)
    {
      v20 = result;
      v28 = 0;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      KeyPath = swift_getKeyPath();
      swift_getKeyPath();

      v26 = static Published.subscript.modify();
      v21 = v15;
      v23 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v23;
      *v23 = 0x8000000000000000;
      sub_100022C30(v20, v8, isUniquelyReferenced_nonNull_native, &qword_10005A5A0, &qword_10003E430);
      v21(v8, v17);
      *v23 = v30;
      v26(&v29, 0);

      sub_1000068F8();
    }
  }

  return result;
}

uint64_t sub_10001AA34(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for APKDeviceLockState();
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v13)
  {
    sub_10001196C(a1);
  }

  else
  {
    dispatch thunk of APKLockStateMonitor.lockState.getter();
    type metadata accessor for BackgroundActivitySession(0);
    swift_allocObject();

    result = sub_10000FB88(v9, 1, v7);
    if (!v2)
    {
      v10 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      v13 = v10;
      v11 = v3;
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t sub_10001ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001AC48, v8, v7);
}

uint64_t sub_10001AC48()
{
  v1 = v0[7];

  if (!v1)
  {
    v12 = v0[4];
    v11 = v0[5];
    v13 = objc_allocWithZone(ISIcon);
    v14 = String._bridgeToObjectiveC()();
    v5 = [v13 initWithBundleIdentifier:v14];

    if (v12 == 0xD000000000000026 && 0x8000000100045470 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v15 = String._bridgeToObjectiveC()();
      v10 = [objc_opt_self() imageNamed:v15];

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v2 = v0[6] == 0xD000000000000013 && 0x80000001000454A0 == v0[7];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v16 = objc_allocWithZone(ISIcon);
    v17 = String._bridgeToObjectiveC()();
    v5 = [v16 initWithType:v17];

    goto LABEL_14;
  }

  v3 = objc_allocWithZone(ISIcon);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithBundleIdentifier:v4];

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  if (!v7)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v8 = [v7 imageWithRenderingMode:2];

  v9 = [objc_opt_self() whiteColor];
  v10 = [v8 imageWithTintColor:v9];

LABEL_15:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0[2] + 16) && (sub_100029BB8(v0[3]), (v18 & 1) != 0))
  {
    v19 = v0[3];

    sub_10001108C(v5, v19);
    sub_1000110A0(v10, v19);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v0[2])
  {
    v20 = v0[3];
    sub_10001108C(v5, v20);
    sub_1000110A0(v10, v20);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10001B02C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = *v36;
  if (!*(*v36 + 16))
  {
  }

  v11 = sub_100029BB8(a1);
  if ((v12 & 1) == 0)
  {
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v15 = *(v13 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_100029BB8(a1);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v36[0] != 1 || (a2 & 1) != 0)
      {
        v35 = v18;
        if (qword_10005A198 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100005D84(v20, qword_10005B420);
        (*(v7 + 16))(v9, a1, v6);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v33 = v23;
          v34 = swift_slowAlloc();
          *v36 = v34;
          *v23 = 136315138;
          sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v24 = dispatch thunk of CustomStringConvertible.description.getter();
          v26 = v25;
          (*(v7 + 8))(v9, v6);
          v27 = sub_100029504(v24, v26, v36);

          v28 = v33;
          *(v33 + 1) = v27;
          _os_log_impl(&_mh_execute_header, v21, v22, "Ending session for task identifier %s", v28, 0xCu);
          sub_100005E20(v34);
        }

        else
        {

          (*(v7 + 8))(v9, v6);
        }

        sub_1000153A0();
        swift_getKeyPath();
        swift_getKeyPath();
        v29 = static Published.subscript.modify();
        sub_1000191D8(a1, &qword_10005A5A0, &qword_10003E430);

        v29(v36, 0);

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v30 = *v36;
        if (*v36)
        {
          v31 = swift_allocObject();
          *(v31 + 16) = v30;
          *(v31 + 24) = v3;

          v32 = v3;
          sub_100011FE4(a1, sub_1000237D8, v31);
        }

        sub_100006FF8();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10001B550(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  result = swift_beginAccess();
  if (!*(*(a1 + v4) + 16))
  {
    sub_1000153A0();
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = a2;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10001B5F0()
{
  v43 = type metadata accessor for UUID();
  v1 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005D3C(&qword_10005B5B0, &qword_10003FB80);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v31 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v0;
  static Published.subscript.getter();
  v9 = v8;

  v11 = 0;
  v12 = *(v44 + 64);
  v32 = v44 + 64;
  v36 = v1;
  v37 = v44;
  v13 = 1 << *(v44 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v33 = v1 + 16;
  v34 = v9;
  v40 = (v1 + 8);
  v41 = (v1 + 32);
  v35 = v6;
  v39 = v16;
  if ((v14 & v12) != 0)
  {
    while (1)
    {
      v17 = v11;
LABEL_12:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v36;
      v23 = v37;
      (*(v36 + 16))(v42, *(v37 + 48) + *(v36 + 72) * v21, v43);
      v24 = *(*(v23 + 56) + 8 * v21);
      v25 = sub_100005D3C(&qword_10005B5B8, &qword_10003FB88);
      v26 = *(v25 + 48);
      v6 = v35;
      (*(v22 + 32))();
      *&v6[v26] = v24;
      (*(*(v25 - 8) + 56))(v6, 0, 1, v25);

      v19 = v17;
      v9 = v34;
LABEL_13:
      sub_100023720(v6, v9);
      v27 = sub_100005D3C(&qword_10005B5B8, &qword_10003FB88);
      if ((*(*(v27 - 8) + 48))(v9, 1, v27) == 1)
      {
      }

      v28 = v42;
      v29 = v43;
      (*v41)(v42, v9, v43);
      sub_10001B02C(v28, 0);
      result = (*v40)(v28, v29);
      v11 = v19;
      v16 = v39;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v16 <= v11 + 1)
    {
      v18 = v11 + 1;
    }

    else
    {
      v18 = v16;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        v30 = sub_100005D3C(&qword_10005B5B8, &qword_10003FB88);
        (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v32 + 8 * v17);
      ++v11;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}