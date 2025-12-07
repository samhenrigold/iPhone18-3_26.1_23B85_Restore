uint64_t sub_10001A464()
{

  return _swift_deallocObject(v0, 129, 7);
}

unint64_t sub_10001A4FC()
{
  result = qword_100173170;
  if (!qword_100173170)
  {
    sub_100007CCC(&qword_100173150, &qword_1001191C8);
    sub_1000199C8(&qword_100173178, &qword_100173160, &qword_1001191D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173170);
  }

  return result;
}

uint64_t sub_10001A5B4()
{
  sub_100007CCC(&qword_100173150, &qword_1001191C8);
  sub_100007CCC(&qword_100173148, &qword_1001191C0);
  sub_10001A4FC();
  sub_1000199C8(&unk_100173180, &qword_100173148, &qword_1001191C0, &protocol conformance descriptor for _EndedGesture<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001A67C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10001CD9C(a1);
  (*(*(*(v2 + qword_10017F1C0) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_10001A6FC()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100173190);
  v1 = sub_100007D20(v0, qword_100173190);
  if (qword_1001721F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F2F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10001AAEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10001AC34(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_10017F1C0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7, v6);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_10001AD6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_10017F1C0), *((swift_isaMask & *v4) + qword_10017F1C0 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_10001AE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureHostingController(0, *((swift_isaMask & *v4) + qword_10017F1C0), *((swift_isaMask & *v4) + qword_10017F1C0 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_10001AF20(void *a1)
{
  v1 = a1;
  sub_10001AF64();
  v3 = v2;

  return v3;
}

void sub_10001AF7C(void *a1, double a2, double a3)
{
  v3 = a1;
  sub_10001AFDC();
}

void sub_10001AFF4(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v4);
  v33 = *a1;
  v5 = *(a1 + 3);
  v6 = objc_allocWithZone(sub_1000077C8(&unk_100173470, &qword_100119520));
  v7 = a1[1];
  v30 = *a1;
  v31 = v7;
  v32 = *(a1 + 32);
  sub_100007BA4(&v33, v29, &qword_100172FD8, &qword_100118E18);
  v8 = v5;
  v9 = UIHostingController.init(rootView:)();
  sub_1000077C8(&unk_100173440, &unk_1001194C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001186F0;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  *&v30 = v10;
  sub_10001F3B8(&unk_100178CE0, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  sub_1000077C8(&unk_100173450, &unk_100122380);
  sub_1000199C8(&unk_100178CF0, &unk_100173450, &unk_100122380, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v2[qword_1001732C0] = v9;
  v11 = v9;
  v28.receiver = v2;
  v28.super_class = sub_1000077C8(&qword_100173468, &qword_100119518);
  v12 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  v15 = qword_1001732C0;
  v16 = [*(v12 + qword_1001732C0) view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = v16;
  [v14 addSubview:v16];

  [v12 addChildViewController:*(v12 + v15)];
  v18 = [v12 view];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = objc_opt_self();
  v21 = [v20 clearColor];
  [v19 setBackgroundColor:v21];

  v22 = v11;
  v23 = [v22 view];
  if (!v23)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v20 clearColor];
  [v24 setBackgroundColor:v25];

  v26 = [v12 view];
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  v27 = [v22 view];
  if (v27)
  {
    sub_1000159AC(&v33, &qword_100172FD8, &qword_100118E18);

    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_10001B444(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v4);
  v5 = objc_allocWithZone(sub_1000077C8(&qword_100173438, &qword_1001194B8));
  v6 = a1;
  v7 = UIHostingController.init(rootView:)();
  sub_1000077C8(&unk_100173440, &unk_1001194C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001186F0;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v27 = v8;
  sub_10001F3B8(&unk_100178CE0, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
  sub_1000077C8(&unk_100173450, &unk_100122380);
  sub_1000199C8(&unk_100178CF0, &unk_100173450, &unk_100122380, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v2[qword_1001732C0] = v7;
  v9 = v7;
  v26.receiver = v2;
  v26.super_class = sub_1000077C8(&qword_100173430, &qword_1001194B0);
  v10 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  v11 = [v10 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = qword_1001732C0;
  v14 = [*&v10[qword_1001732C0] view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v12 addSubview:v14];

  [v10 addChildViewController:*&v10[v13]];
  v16 = [v10 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v19 = [v18 clearColor];
  [v17 setBackgroundColor:v19];

  v20 = v9;
  v21 = [v20 view];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = v21;
  v23 = [v18 clearColor];
  [v22 setBackgroundColor:v23];

  v24 = [v10 view];
  if (!v24)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [v20 view];
  if (v25)
  {

    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_10001B8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LiveActivitiesHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v45.receiver = v4;
  v45.super_class = v5;
  objc_msgSendSuper2(&v45, "viewWillLayoutSubviews");
  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001191F0;
  v7 = *(v4 + qword_1001732C0);
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
    sub_1000165C4(0, &qword_100173390, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v6, v38, v39, v40, v41, v42, v43, v44;
    [v34 activateConstraints:isa];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_10001BC64(void *a1)
{
  v4 = a1;
  sub_10001B8C4(v4, v1, v2, v3);
}

void sub_10001BCAC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LiveActivitiesHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v6;
  objc_msgSendSuper2(&v7, "viewIsAppearing:", a1 & 1);
  sub_10001BDE4();
}

void sub_10001BD30(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_10001BCAC(a3, v6, v4, v5);
}

void sub_10001BD84(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_10001EE78();
  swift_unknownObjectRelease();
}

void sub_10001BDE4()
{
  [v0 preferredContentSize];
  if (v1 == 0.0 && v2 == 0.0)
  {
    if (qword_1001721F8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007D20(v3, qword_10017F2F0);
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
        if (qword_1001721F8 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100007D20(v12, qword_10017F2F0);
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

    if (qword_1001721F8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100007D20(v18, qword_10017F2F0);
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

void sub_10001C168(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_10001EE7C();
}

id sub_10001C1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LiveActivitiesHostingController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10001C290(void *a1)
{
  *&v1[qword_100178B60] = 0;
  *&v1[qword_100178B68] = 2;
  *&v1[qword_100178B70] = 4;
  *&v1[qword_100178B78] = 4;
  v3 = &v1[qword_100178B80];
  *v3 = 0;
  v3[1] = 0;
  v4 = SBUISystemApertureElementIdentifierAirDrop;
  *&v1[qword_100178B88] = SBUISystemApertureElementIdentifierAirDrop;
  v1[qword_100178B90] = 1;
  v5 = qword_100178B98;
  v6 = objc_allocWithZone(type metadata accessor for SystemApertureElementTransitionCoordinator());
  v7 = v4;
  *&v1[v5] = [v6 init];
  *&v1[qword_100178BA0] = 0;
  v8 = qword_100178BA8;
  type metadata accessor for SystemApertureLayoutState(0);
  v9 = swift_allocObject();
  __asm { FMOV            V0.2D, #17.0 }

  v102 = _Q0;
  v103 = _Q0;
  Published.init(initialValue:)();
  v101 = 0uLL;
  LOBYTE(v102) = 0;
  Published.init(initialValue:)();
  *&v1[v8] = v9;
  *&v1[qword_100178BB0] = 0;
  *&v1[qword_100178BB8] = 0;
  *&v1[qword_100178BC0] = 0;
  *&v1[qword_100178BC8] = 0;
  *&v1[qword_100178BD0] = 0;
  *&v1[qword_100178BD8] = 0;
  *&v1[qword_100178BE0] = 1;
  v15 = sub_1000077C8(&qword_100173398, &qword_100119418);
  v98.receiver = v1;
  v98.super_class = v15;
  v16 = objc_msgSendSuper2(&v98, "initWithNibName:bundle:", 0, 0);
  v84 = a1;
  sub_1000F00EC(a1, v99);
  v17 = *&v16[qword_100178BA8];
  sub_10001F3B8(&qword_1001733A0, type metadata accessor for SystemApertureLayoutState, &unk_100119AC0);

  v18 = static ObservableObject.environmentStore.getter();
  v91 = v99[0];
  v92 = v99[1];
  v93 = v99[2];
  v94 = v100;
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = qword_100178B98;
  v22 = *&v16[qword_100178B98];
  v103 = v93;
  v104 = v94;
  v101 = v91;
  v102 = v92;
  *&v105 = v18;
  *(&v105 + 1) = v17;
  *&v106 = KeyPath;
  BYTE8(v106) = 1;
  HIDWORD(v106) = *&v90[3];
  *(&v106 + 9) = *v90;
  *&v107 = v20;
  *(&v107 + 1) = v22;
  v95 = v105;
  v96 = v106;
  v97 = v107;
  v23 = v22;
  sub_10001EFC8(v99, v90);
  sub_100007BA4(&v101, v90, &qword_1001733A8, &qword_100119478);
  sub_1000077C8(&qword_1001733A8, &qword_100119478);
  sub_10001F024();
  AnyView.init<A>(_:)();
  v24 = type metadata accessor for SystemApertureAccessoryViewController();
  v25 = objc_allocWithZone(v24);
  v85 = type metadata accessor for SystemApertureAccessoryView();
  v26 = objc_allocWithZone(v85);

  *&v25[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] = sub_100107CC4(v27);
  v89.receiver = v25;
  v89.super_class = v24;
  v28 = objc_msgSendSuper2(&v89, "initWithNibName:bundle:", 0, 0);
  v29 = *(*&v28[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController);
  v30 = v28;
  [v30 addChildViewController:v29];

  v31 = *&v16[qword_100178BA0];
  *&v16[qword_100178BA0] = v30;
  v32 = v30;

  v33 = *&v16[v21];
  *(&v92 + 1) = v15;
  *&v93 = &off_100161F88;
  *&v91 = v16;
  v34 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_delegate;
  swift_beginAccess();
  v35 = v33;
  sub_10001F2A0(&v91, v33 + v34);
  swift_endAccess();

  v36 = v16;
  [v36 addChildViewController:v32];
  v37 = [v36 view];
  if (!v37)
  {
    __break(1u);
    goto LABEL_19;
  }

  v38 = v37;
  v39 = [v32 view];

  if (!v39)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v38 addSubview:v39];

  [v32 didMoveToParentViewController:v36];
  v40 = objc_allocWithZone(v24);
  v41 = objc_allocWithZone(v85);
  v42 = swift_retain_n();
  *&v40[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] = sub_100107CC4(v42);
  v88.receiver = v40;
  v88.super_class = v24;
  v43 = objc_msgSendSuper2(&v88, "initWithNibName:bundle:", 0, 0);
  v44 = OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view;
  v45 = *(*&v43[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController);
  v46 = v43;
  [v46 addChildViewController:v45];

  v47 = *&v36[qword_100178BB8];
  *&v36[qword_100178BB8] = v46;
  v48 = v46;

  v49 = *&v43[v44];
  v50 = *&v36[qword_100178BB0];
  *&v36[qword_100178BB0] = v49;
  v51 = v49;

  [v36 addChildViewController:v48];
  v52 = [v36 view];

  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v53 = [v48 view];

  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v52 addSubview:v53];

  [v48 didMoveToParentViewController:v36];
  v54 = objc_allocWithZone(v24);
  v55 = objc_allocWithZone(v85);
  v56 = swift_retain_n();
  *&v54[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] = sub_100107CC4(v56);
  v87.receiver = v54;
  v87.super_class = v24;
  v57 = objc_msgSendSuper2(&v87, "initWithNibName:bundle:", 0, 0);
  v58 = OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view;
  v59 = *(*&v57[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController);
  v60 = v57;
  [v60 addChildViewController:v59];

  v61 = *&v36[qword_100178BC8];
  *&v36[qword_100178BC8] = v60;
  v62 = v60;

  v63 = *&v57[v58];
  v64 = *&v36[qword_100178BC0];
  *&v36[qword_100178BC0] = v63;
  v65 = v63;

  [v36 addChildViewController:v62];
  v66 = [v36 view];

  if (!v66)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v67 = [v62 view];

  if (!v67)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v66 addSubview:v67];

  [v62 didMoveToParentViewController:v36];
  v68 = objc_allocWithZone(v24);
  v69 = objc_allocWithZone(v85);
  v70 = swift_retain_n();
  *&v68[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] = sub_100107CC4(v70);
  v86.receiver = v68;
  v86.super_class = v24;
  v71 = objc_msgSendSuper2(&v86, "initWithNibName:bundle:", 0, 0);
  v72 = OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view;
  v73 = *(*&v71[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController);
  v74 = v71;
  [v74 addChildViewController:v73];

  v75 = *&v36[qword_100178BD8];
  *&v36[qword_100178BD8] = v74;
  v76 = v74;

  v77 = *&v71[v72];
  v78 = *&v36[qword_100178BD0];
  *&v36[qword_100178BD0] = v77;
  v79 = v77;

  [v36 addChildViewController:v76];
  v80 = [v36 view];

  if (!v80)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v81 = [v76 view];

  if (!v81)
  {
LABEL_25:
    __break(1u);
    return;
  }

  [v80 addSubview:v81];
  [v76 didMoveToParentViewController:v36];

  sub_1000159AC(&v101, &qword_1001733A8, &qword_100119478);
  if (v100)
  {
    v82 = *&v36[qword_100178BE0];
    if ((v82 & 8) == 0)
    {
      *&v36[qword_100178BE0] = v82 | 8;
    }
  }

  if (BYTE1(v100))
  {
    v83 = *&v36[qword_100178BE0];
    if ((v83 & 0x40) == 0)
    {
      *&v36[qword_100178BE0] = v83 | 0x40;
    }
  }

  sub_10001F310(v99);
  if (*(&v100 + 1) != *&v36[qword_100178B70])
  {
    *&v36[qword_100178B70] = *(&v100 + 1);
  }
}

void *sub_10001CC50@<X0>(_BYTE *a1@<X8>)
{
  sub_10001F364();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

void *sub_10001CCEC@<X0>(void *a1@<X8>)
{
  sub_100007690();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10001CD3C(uint64_t *a1)
{
  sub_100007690();
  swift_unknownObjectRetain();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_10001CD9C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return UIHostingController.init(rootView:)();
}

id sub_10001CE84(uint64_t a1)
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173190);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v8 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v9 = sub_10003E81C(v7, v8, &v20);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating AirDropTransfer system aperture view controller for transfer ID: %s", v5, 0xCu);
    sub_100007920(v6);
  }

  v17 = objc_allocWithZone(type metadata accessor for AirDropSystemApertureViewController());

  return sub_1000659BC(v18);
}

void sub_10001D014(uint64_t a1)
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173190);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v23 = v6;
    *v5 = 136315138;
    v7 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v8 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v9 = sub_10003E81C(v7, v8, &v23);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating AirDropTransfer hosting controller for transfer ID: %s", v5, 0xCu);
    sub_100007920(v6);
  }

  type metadata accessor for AirDropTransferSession(0);
  sub_10001F3B8(&qword_100173460, type metadata accessor for AirDropTransferSession, &unk_10011D344);

  v17 = ObservedObject.init(wrappedValue:)();
  v19 = v18;
  v20 = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
  if (qword_100172140 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = v23;
  *&v23 = v17;
  *(&v23 + 1) = v19;
  v24 = 0;
  v25 = v20;
  v26 = v21;
  v22 = objc_allocWithZone(sub_1000077C8(&qword_100173468, &qword_100119518));
  sub_10001AFF4(&v23);
}

uint64_t sub_10001D2D0(void *a1, const char *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100007D20(v10, qword_100173190);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    type metadata accessor for UUID();
    v34 = a3;
    v16 = a4;
    v17 = a5;
    v18 = a2;
    sub_10001F3B8(&qword_1001770E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v22 = sub_10003E81C(v19, v20, &v35);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v14 + 4) = v22;
    v30 = v18;
    a5 = v17;
    a4 = v16;
    a3 = v34;
    _os_log_impl(&_mh_execute_header, v12, v13, v30, v14, 0xCu);
    sub_100007920(v15);
  }

  v31 = objc_allocWithZone(sub_1000077C8(a3, a4));
  v32 = v11;
  return a5(v11);
}

uint64_t sub_10001D4D4(const char *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100007D20(v8, qword_100173190);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 2u);
  }

  v12 = objc_allocWithZone(sub_1000077C8(a2, a3));
  return a4(0);
}

double sub_10001D5E8(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100007D20(v6, qword_100173190);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v268[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v7 role];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10003E81C(v13, v15, v268);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass() && (swift_getKeyPath(), dispatch thunk of ActivityScene.subscript.getter(), , (v31 = v270) != 0))
    {
      v32 = v269;
    }

    else
    {
      0, v24, v25, v26, v27, v28, v29, v30;
      v31 = 0xE500000000000000;
      v32 = 0x3E6C696E3CLL;
    }

    v33 = sub_10003E81C(v32, v31, v268);
    v31, v34, v35, v36, v37, v38, v39, v40;
    *(v11 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v9, v10, "SessionSceneDelegate: Scene will connect called with role: %s, activity identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  type metadata accessor for ActivityScene();
  v41 = swift_dynamicCastClass();
  if (!v41)
  {
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "SessionSceneDelegate: Received a UIScene that is not of type SessionScene.", v70, 2u);
    }

    goto LABEL_16;
  }

  v42 = v41;
  v43 = v8;
  v44 = [v43 session];
  v45 = [v44 role];

  v46 = static UISceneSessionRole.activityBanner.getter();
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v47;
  v53 = v50;
  if (v52 == v51 && v49 == v50)
  {

    v49, v54, v55, v56, v57, v58, v59, v60;
    v53, v61, v62, v63, v64, v65, v66, v67;
  }

  else
  {
    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v49, v73, v74, v75, v76, v77, v78, v79;
    v53, v80, v81, v82, v83, v84, v85, v86;
    if ((v72 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (qword_100172250 != -1)
  {
    swift_once();
  }

  *(qword_10017F390 + 48) = 1;
LABEL_21:
  v87 = v43;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();

  v266 = v3;
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v269 = v91;
    *v90 = 136315138;
    v92 = [v42 description];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96 = sub_10003E81C(v93, v95, &v269);
    v95, v97, v98, v99, v100, v101, v102, v103;
    *(v90 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v88, v89, "SessionSceneDelegate: Connecting session scene: %s", v90, 0xCu);
    sub_100007920(v91);
  }

  swift_getKeyPath();
  dispatch thunk of ActivityScene.subscript.getter();

  v104 = v270;
  if (v270)
  {
    v105 = v269;
    if (qword_100172150 != -1)
    {
      swift_once();
    }

    v106 = qword_10017F1E0;
    sub_100026D10(v105, v104);
    v108 = v107;
    v109 = *(v106 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator);
    v110 = sub_10009DBB0(v105, v104);

    v104, v111, v112, v113, v114, v115, v116, v117;
    if (v108 | v110)
    {
      goto LABEL_36;
    }

LABEL_33:
    v264 = v110;
    v132 = v108;
    v133 = v87;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v263 = v87;
      v137 = swift_slowAlloc();
      *v136 = 138412290;
      *(v136 + 4) = v42;
      *v137 = v42;
      v138 = v133;
      _os_log_impl(&_mh_execute_header, v134, v135, "Unable to find an AirDrop transfer, nearby sharing interaction, or background activity to represent with session scene: %@", v136, 0xCu);
      sub_1000159AC(v137, &qword_100172EB0, &qword_100119410);
    }

    v108 = v132;
    v110 = v264;
    goto LABEL_36;
  }

  v118 = v87;
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v121 = 138412290;
    *(v121 + 4) = v42;
    *v122 = v42;
    v123 = v118;
    _os_log_impl(&_mh_execute_header, v119, v120, "Falling back to first AirDrop transfer for session scene with missing activity ID: %@", v121, 0xCu);
    sub_1000159AC(v122, &qword_100172EB0, &qword_100119410);
  }

  if (qword_100172150 != -1)
  {
    swift_once();
  }

  v106 = qword_10017F1E0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v124 = v269;
  v108 = sub_1000F92B4(v269);
  v124, v125, v126, v127, v128, v129, v130, v131;
  v110 = 0;
  if (!v108)
  {
    goto LABEL_33;
  }

LABEL_36:
  v139 = v87;
  v140 = [v42 SBUI_isHostedBySystemAperture];
  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.default.getter();
  v143 = os_log_type_enabled(v141, v142);
  if (!v140)
  {
    if (v143)
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&_mh_execute_header, v141, v142, "SessionSceneDelegate: Received ActivityKit scene not hosted in system aperture", v146, 2u);
    }

    if (qword_100172150 != -1)
    {
      swift_once();
    }

    if (*(*(v106 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator) + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity))
    {
      v147 = sub_10001D4D4("Creating live activities view controller for nearby sharing interaction failure", &qword_100173430, &qword_1001194B0, sub_10001B444);
LABEL_71:
      v197 = objc_allocWithZone(type metadata accessor for SFSecureWindow());
      v198 = v147;
      v199 = [v197 initWithWindowScene:v42];

      [v199 setRootViewController:v198];
      [v199 makeKeyAndVisible];

      v200 = *(v266 + OBJC_IVAR____TtC9AirDropUI20SessionSceneDelegate_window);
      *(v266 + OBJC_IVAR____TtC9AirDropUI20SessionSceneDelegate_window) = v199;

      return result;
    }

    if (v110)
    {
      v168 = v110;
      v147 = sub_10001D2D0(v168, "Creating live activities view controller for nearby sharing interaction with ID: %s", &qword_100173430, &qword_1001194B0, sub_10001B444);

      goto LABEL_71;
    }

    sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
    v193 = static NSUserDefaults.airdrop.getter();
    v194 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();

    if (v108 && (v194 & 1) != 0)
    {

      sub_10001D014(v195);
      v147 = v196;

      goto LABEL_71;
    }

    v213 = v139;
    v214 = Logger.logObject.getter();
    v215 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v214, v215))
    {
      v216 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      *v216 = 138412290;
      *(v216 + 4) = v42;
      *v217 = v42;
      v218 = v213;
      _os_log_impl(&_mh_execute_header, v214, v215, "Unable to find an AirDrop transfer or a nearby sharing interaction to represent with session scene: %@", v216, 0xCu);
      sub_1000159AC(v217, &qword_100172EB0, &qword_100119410);
    }

    v219 = [v213 session];
    v220 = [v219 role];

    v221 = static UISceneSessionRole.activityBanner.getter();
    v222 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v224 = v223;
    v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v227 = v222;
    v228 = v225;
    if (v227 == v226 && v224 == v225)
    {

      v224, v229, v230, v231, v232, v233, v234, v235;
      v228, v236, v237, v238, v239, v240, v241, v242;
    }

    else
    {
      v248 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v224, v249, v250, v251, v252, v253, v254, v255;
      v228, v256, v257, v258, v259, v260, v261, v262;
      if ((v248 & 1) == 0)
      {
LABEL_92:

        return result;
      }
    }

    if (qword_100172250 != -1)
    {
      swift_once();
    }

    sub_1000FD910(0);

    goto LABEL_92;
  }

  if (v143)
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&_mh_execute_header, v141, v142, "SessionSceneDelegate: Received ActivityKit scene hosted by system aperture", v144, 2u);
  }

  swift_getKeyPath();
  dispatch thunk of ActivityScene.subscript.getter();

  v145 = v270;
  if (v270)
  {
    v265 = v269;
  }

  else
  {
    v148 = [v42 session];
    v149 = [v148 persistentIdentifier];

    v265 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v145 = v150;
  }

  if (qword_100172150 != -1)
  {
    swift_once();
  }

  v151 = &qword_100173000;
  if (!*(*(v106 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator) + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity))
  {
    v169 = OBJC_IVAR____TtC9AirDropUI20SessionSceneDelegate_systemApertureElementProvidersByID;
    swift_beginAccess();
    v177 = *(v266 + v169);
    if (*v177->connection)
    {

      v178 = sub_10003EEC0(v265, v145);
      if (v179)
      {
        v152 = *(*v177->nearbySharingInteractionCoordinator + 8 * v178);
        swift_unknownObjectRetain_n();
        v177, v186, v187, v188, v189, v190, v191, v192;
        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v153, v154))
        {
          goto LABEL_54;
        }

        v155 = swift_slowAlloc();
        *v155 = 0;
        v156 = "SessionSceneDelegate: using cachedSystemApertureElementProvider";
        goto LABEL_53;
      }

      v177, v179, v180, v181, v182, v183, v184, v185;
    }

    if (v110)
    {
      v201 = v42;
      v202 = v110;
      v203 = v108;
      v204 = v202;
      v205 = v202;
      v152 = sub_10001D2D0(v205, "Creating system aperture view controller for nearby sharing interaction with ID: %s", &qword_100173398, &qword_100119418, sub_10001C290);
      swift_unknownObjectRetain();
      v206 = Logger.logObject.getter();
      v207 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        *v208 = 0;
        _os_log_impl(&_mh_execute_header, v206, v207, "SessionSceneDelegate: using nearbySharingInteractionViewModel", v208, 2u);
      }

      v108 = v203;
      v110 = v204;
      v42 = v201;
      v151 = &qword_100173000;
      goto LABEL_55;
    }

    if (v108)
    {

      v152 = sub_10001CE84(v209);
      swift_unknownObjectRetain();
      v210 = Logger.logObject.getter();
      v211 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v210, v211))
      {
        v212 = swift_slowAlloc();
        *v212 = 0;
        _os_log_impl(&_mh_execute_header, v210, v211, "SessionSceneDelegate: using airDropTransferSession", v212, 2u);
      }

      goto LABEL_55;
    }

    v145, v170, v171, v172, v173, v174, v175, v176;

    v243 = v139;
    v68 = Logger.logObject.getter();
    v244 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v244))
    {
      v245 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      *v245 = 138412290;
      *(v245 + 4) = v42;
      *v246 = v42;
      v247 = v243;
      _os_log_impl(&_mh_execute_header, v68, v244, "Unable to find an AirDrop transfer or a nearby sharing interaction to show in system aperture scene: %@", v245, 0xCu);
      sub_1000159AC(v246, &qword_100172EB0, &qword_100119410);

      return result;
    }

LABEL_16:
    return result;
  }

  v152 = sub_10001D4D4("Creating system aperture view controller for nearby sharing interaction failure", &qword_100173398, &qword_100119418, sub_10001C290);
  swift_unknownObjectRetain();
  v153 = Logger.logObject.getter();
  v154 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    *v155 = 0;
    v156 = "SessionSceneDelegate: using boop failure";
LABEL_53:
    _os_log_impl(&_mh_execute_header, v153, v154, v156, v155, 2u);
  }

LABEL_54:

LABEL_55:
  swift_getObjectType();
  v157 = swift_conformsToProtocol2();
  if (v157)
  {
    v158 = v152;
  }

  else
  {
    v158 = 0;
  }

  if (v108)
  {
    if (v158)
    {
      *(v108 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate + 8) = v157;
      swift_unknownObjectWeakAssign();
    }
  }

  [v42 setSystemApertureElementViewControllerProvider:{v152, v263}];

  v159 = v151[54];
  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v267 = *(v266 + v159);
  *(v266 + v159) = 0x8000000000000000;
  sub_100041268(v152, v265, v145, isUniquelyReferenced_nonNull_native);
  v145, v161, v162, v163, v164, v165, v166, v167;
  *(v266 + v159) = v267;
  swift_endAccess();

  swift_unknownObjectRelease_n();

  return result;
}

void sub_10001E7CC(void *a1)
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173190);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = [v3 session];
    v8 = [v7 role];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10003E81C(v9, v11, &v89);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass() && (swift_getKeyPath(), dispatch thunk of ActivityScene.subscript.getter(), , (v27 = v91) != 0))
    {
      v28 = v90;
    }

    else
    {
      0, v20, v21, v22, v23, v24, v25, v26;
      v27 = 0xE500000000000000;
      v28 = 0x3E6C696E3CLL;
    }

    v29 = sub_10003E81C(v28, v27, &v89);
    v27, v30, v31, v32, v33, v34, v35, v36;
    *(v6 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v4, v5, "SessionSceneDelegate: sceneDidDisconnect with role: %s, activity identifier: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v37 = [v3 session];
  v38 = [v37 role];

  v39 = static UISceneSessionRole.activityBanner.getter();
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v40;
  v46 = v43;
  if (v45 == v44 && v42 == v43)
  {

    v42, v47, v48, v49, v50, v51, v52, v53;
    v46, v54, v55, v56, v57, v58, v59, v60;
  }

  else
  {
    v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v42, v62, v63, v64, v65, v66, v67, v68;
    v46, v69, v70, v71, v72, v73, v74, v75;
    if ((v61 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (qword_100172250 != -1)
  {
    swift_once();
  }

  sub_1000FD910(0);

LABEL_17:
  type metadata accessor for ActivityScene();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    v76 = v3;
    dispatch thunk of ActivityScene.subscript.getter();

    v77 = v91;
    if (v91)
    {
      v78 = v90;
      if (qword_100172150 != -1)
      {
        swift_once();
      }

      v79 = *(qword_10017F1E0 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator);
      sub_1000968A8(v78, v77);
      v77, v80, v81, v82, v83, v84, v85, v86;
    }
  }

  else
  {
    v76 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v76, v87, "SessionSceneDelegate: Received a UIScene that is not of type SessionScene.", v88, 2u);
    }
  }
}

void sub_10001EC68(void *a1, const char *a2, ...)
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_100173190);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v9 = [v5 session];
    v10 = [v9 role];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10003E81C(v11, v13, &v23);
    v13, v15, v16, v17, v18, v19, v20, v21;
    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0xCu);
    sub_100007920(v8);
  }
}

void *sub_10001EED8@<X0>(_BYTE *a1@<X8>)
{
  sub_10001F364();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

void *sub_10001EF74@<X0>(void *a1@<X8>)
{
  sub_100007690();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10001F024()
{
  result = qword_1001733B0;
  if (!qword_1001733B0)
  {
    sub_100007CCC(&qword_1001733A8, &qword_100119478);
    sub_10001F0DC();
    sub_1000199C8(&qword_100173400, &qword_100173408, &unk_1001194A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001733B0);
  }

  return result;
}

unint64_t sub_10001F0DC()
{
  result = qword_1001733B8;
  if (!qword_1001733B8)
  {
    sub_100007CCC(&qword_1001733C0, &qword_100119480);
    sub_10001F194();
    sub_1000199C8(&qword_1001733F0, &qword_1001733F8, &qword_100119498, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001733B8);
  }

  return result;
}

unint64_t sub_10001F194()
{
  result = qword_1001733C8;
  if (!qword_1001733C8)
  {
    sub_100007CCC(&unk_1001733D0, &qword_100119488);
    sub_10001F24C();
    sub_1000199C8(&qword_1001733E0, &qword_1001733E8, &qword_100119490, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001733C8);
  }

  return result;
}

unint64_t sub_10001F24C()
{
  result = qword_100178160;
  if (!qword_100178160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178160);
  }

  return result;
}

uint64_t sub_10001F2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100173410, &qword_1001182F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001F364()
{
  result = qword_100173420;
  if (!qword_100173420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173420);
  }

  return result;
}

uint64_t sub_10001F3B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001F43C(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return String.init<A>(reflecting:)();
}

uint64_t sub_10001F4F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10001F518(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001F52C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001F574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001F5EC()
{
  v2 = sub_1000077C8(&qword_1001734E0, &qword_100119600);
  __chkstk_darwin(v2);
  v4 = (v20 - v3);
  v5 = sub_1000077C8(&qword_1001734E8, &qword_100119608);
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_1000077C8(&qword_1001734F0, &qword_100119610);
  __chkstk_darwin(v8);
  v10 = (v20 - v9);
  if (*(v1 + 40))
  {
    if (*(v1 + 16))
    {
      v11 = 106.0;
    }

    else
    {
      v11 = 70.0;
    }
  }

  else
  {
    v11 = 50.0;
  }

  if (*(v1 + 32) == 1)
  {
    sub_10001F8C8(v10, v11);
    sub_100007BA4(v10, v7, &qword_1001734F0, &qword_100119610);
    swift_storeEnumTagMultiPayload();
    sub_1000210F0();
    sub_100021938();
    _ConditionalContent<>.init(storage:)();
    v12 = v10;
    v13 = &qword_1001734F0;
    v14 = &qword_100119610;
  }

  else
  {
    *v4 = static Alignment.bottomTrailing.getter();
    v4[1] = v15;
    v16 = sub_1000077C8(&qword_1001734F8, &qword_100119618);
    sub_1000208CC(v1, v4 + *(v16 + 44), v11);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v17 = (v4 + *(v2 + 36));
    v18 = v20[1];
    *v17 = v20[0];
    v17[1] = v18;
    v17[2] = v20[2];
    sub_100007BA4(v4, v7, &qword_1001734E0, &qword_100119600);
    swift_storeEnumTagMultiPayload();
    sub_1000210F0();
    sub_100021938();
    _ConditionalContent<>.init(storage:)();
    v12 = v4;
    v13 = &qword_1001734E0;
    v14 = &qword_100119600;
  }

  return sub_1000159AC(v12, v13, v14);
}

uint64_t sub_10001F8C8@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v87 = a1;
  v73 = sub_1000077C8(&qword_100173610, &qword_1001196A8);
  __chkstk_darwin(v73);
  v74 = &v64 - v3;
  v86 = sub_1000077C8(&qword_1001735F0, &qword_100119698);
  __chkstk_darwin(v86);
  v75 = &v64 - v4;
  v82 = sub_1000077C8(&qword_1001735E0, &qword_100119690);
  __chkstk_darwin(v82);
  v72 = &v64 - v5;
  v84 = sub_1000077C8(&qword_100173618, &qword_1001196B0);
  __chkstk_darwin(v84);
  v85 = &v64 - v6;
  v77 = sub_1000077C8(&qword_100173620, &qword_1001196B8);
  __chkstk_darwin(v77);
  v78 = &v64 - v7;
  v83 = sub_1000077C8(&qword_100173510, &qword_100119620);
  __chkstk_darwin(v83);
  v79 = &v64 - v8;
  v81 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v81);
  v71 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000077C8(&qword_100173570, &qword_100119650);
  __chkstk_darwin(v14);
  v16 = &v64 - v15;
  v66 = sub_1000077C8(&qword_100173560, &qword_100119648);
  __chkstk_darwin(v66);
  v18 = &v64 - v17;
  v65 = sub_1000077C8(&qword_100173550, &qword_100119640);
  __chkstk_darwin(v65);
  v80 = &v64 - v19;
  v20 = sub_1000077C8(&qword_100173540, &qword_100119638);
  __chkstk_darwin(v20 - 8);
  v68 = &v64 - v21;
  v69 = sub_1000077C8(&qword_100173530, &qword_100119630);
  __chkstk_darwin(v69);
  v67 = &v64 - v22;
  v76 = sub_1000077C8(&qword_100173520, &qword_100119628);
  __chkstk_darwin(v76);
  v70 = &v64 - v23;
  v88 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v95 == 1 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v95))
  {
    v75 = v95;
    Image.init(uiImage:)();
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v24 = Image.resizable(capInsets:resizingMode:)();

    (*(v11 + 8))(v13, v10);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v91) = 1;
    *&v89[6] = v95;
    *&v89[22] = v96;
    *&v89[38] = v97;
    if (sub_10007A24C())
    {
      v25 = 15.0;
    }

    else
    {
      v25 = 0.0;
    }

    v26 = static Alignment.center.getter();
    v28 = v27;
    v29 = &v16[*(v14 + 36)];
    sub_100020C10(v29);
    v30 = (v29 + *(sub_1000077C8(&qword_1001735A8, &unk_100119670) + 36));
    *v30 = v26;
    v30[1] = v28;
    *(v16 + 8) = *&v89[46];
    *(v16 + 50) = *&v89[32];
    v31 = *v89;
    *(v16 + 34) = *&v89[16];
    *v16 = v24;
    *(v16 + 1) = 0;
    *(v16 + 8) = 257;
    *(v16 + 18) = v31;
    *(v16 + 9) = v25;
    v16[80] = 0;
    sub_100021A84(v16, v18, &qword_100173570, &qword_100119650);
    *&v18[*(v66 + 36)] = 0;
    v32 = v80;
    v33 = &v80[*(v65 + 36)];
    v34 = *(v81 + 20);
    v35 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = type metadata accessor for RoundedCornerStyle();
    v37 = *(*(v36 - 8) + 104);
    v37(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #11.0 }

    *v33 = _Q0;
    v43 = sub_1000077C8(&qword_100177710, &qword_100119680);
    *&v33[*(v43 + 36)] = 256;
    sub_100021A84(v18, v32, &qword_100173560, &qword_100119648);
    if (qword_100172140 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v100 == 1)
    {
      v44 = static Color.green.getter();
    }

    else
    {
      v44 = static Color.clear.getter();
    }

    v55 = v68;
    v56 = v80;
    sub_100020ED4(v44, v68);

    sub_1000159AC(v56, &qword_100173550, &qword_100119640);
    v57 = 11.0;
    if (*(v88 + 40))
    {
      if (*(v88 + 16))
      {
        v57 = 16.0;
      }

      else
      {
        v57 = 11.0;
      }
    }

    v58 = v71;
    v37(v71 + *(v81 + 20), v35, v36);
    *v58 = v57;
    v58[1] = v57;
    v59 = v67;
    v60 = &v67[*(v69 + 36)];
    sub_100021A10(v58, v60);
    *(v60 + *(v43 + 36)) = 256;
    sub_100021A84(v55, v59, &qword_100173540, &qword_100119638);
    sub_100021294();
    v61 = v70;
    View.accessibilityHidden(_:)();
    sub_1000159AC(v59, &qword_100173530, &qword_100119630);
    v48 = &qword_100173520;
    v49 = &qword_100119628;
    sub_100007BA4(v61, v78, &qword_100173520, &qword_100119628);
    swift_storeEnumTagMultiPayload();
    sub_100021208();
    sub_100021820();
    v62 = v79;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v62, v85, &qword_100173510, &qword_100119620);
    swift_storeEnumTagMultiPayload();
    sub_10002117C();
    sub_1000218AC();
    _ConditionalContent<>.init(storage:)();

    sub_1000159AC(v62, &qword_100173510, &qword_100119620);
    v51 = v61;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v95 == 1 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v95))
    {
      v45 = v95;
      Image.init(uiImage:)();
      (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
      v46 = Image.resizable(capInsets:resizingMode:)();

      (*(v11 + 8))(v13, v10);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v90[38] = v102;
      *&v90[22] = v101;
      *&v90[6] = v100;
      *&v92[2] = *v90;
      v94 = 1;
      v91 = v46;
      *v92 = 1;
      *&v92[18] = *&v90[16];
      *&v92[34] = *&v90[32];
      *&v92[48] = *(&v102 + 1);
      sub_1000077C8(&qword_100173590, &unk_100119660);
      sub_1000216B8();
      v47 = v72;
      View.accessibilityHidden(_:)();
      v96 = *v92;
      v97 = *&v92[16];
      v98 = *&v92[32];
      v99 = *&v92[48];
      v95 = v91;
      sub_1000159AC(&v95, &qword_100173590, &unk_100119660);
      v48 = &qword_1001735E0;
      v49 = &qword_100119690;
      sub_100007BA4(v47, v78, &qword_1001735E0, &qword_100119690);
      swift_storeEnumTagMultiPayload();
      sub_100021208();
      sub_100021820();
      v50 = v79;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v50, v85, &qword_100173510, &qword_100119620);
      swift_storeEnumTagMultiPayload();
      sub_10002117C();
      sub_1000218AC();
      _ConditionalContent<>.init(storage:)();

      sub_1000159AC(v50, &qword_100173510, &qword_100119620);
      v51 = v47;
    }

    else
    {
      if (*(v88 + 32) == 1)
      {
        swift_storeEnumTagMultiPayload();
        sub_100021820();
        v52 = v75;
        _ConditionalContent<>.init(storage:)();
      }

      else
      {
        Image.init(systemName:)();
        (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
        v53 = Image.resizable(capInsets:resizingMode:)();

        (*(v11 + 8))(v13, v10);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v94 = 1;
        *&v93[22] = v101;
        *&v93[38] = v102;
        *&v93[6] = v100;
        v91 = v53;
        *v92 = 1;
        *&v92[2] = *v93;
        *&v92[18] = *&v93[16];
        *&v92[34] = *&v93[32];
        *&v92[48] = *(&v102 + 1);
        sub_1000077C8(&qword_100173590, &unk_100119660);
        sub_1000216B8();
        v54 = v72;
        View.accessibilityHidden(_:)();
        v96 = *v92;
        v97 = *&v92[16];
        v98 = *&v92[32];
        v99 = *&v92[48];
        v95 = v91;
        sub_1000159AC(&v95, &qword_100173590, &unk_100119660);
        sub_100007BA4(v54, v74, &qword_1001735E0, &qword_100119690);
        swift_storeEnumTagMultiPayload();
        sub_100021820();
        v52 = v75;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v54, &qword_1001735E0, &qword_100119690);
      }

      v48 = &qword_1001735F0;
      v49 = &qword_100119698;
      sub_100007BA4(v52, v85, &qword_1001735F0, &qword_100119698);
      swift_storeEnumTagMultiPayload();
      sub_10002117C();
      sub_1000218AC();
      _ConditionalContent<>.init(storage:)();
      v51 = v52;
    }
  }

  return sub_1000159AC(v51, v48, v49);
}

uint64_t sub_1000208CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29[-7] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000077C8(&qword_1001734F0, &qword_100119610);
  __chkstk_darwin(v10 - 8);
  v12 = &v29[-7] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29[-7] - v14;
  sub_10001F8C8((&v29[-7] - v14), a3);
  sub_100021C28(a1[3], a1[4], a1[1]);
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v16 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v9, v6);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v32[0]) = 1;
  *&v29[3] = *&v29[27];
  *&v29[11] = *&v29[35];
  *&v29[19] = *&v29[43];
  sub_100007BA4(v15, v12, &qword_1001734F0, &qword_100119610);
  sub_100007BA4(v12, a2, &qword_1001734F0, &qword_100119610);
  v17 = a2 + *(sub_1000077C8(&qword_100173638, &qword_100119850) + 48);
  v30[0] = v16;
  v30[1] = 0;
  *v31 = 257;
  *&v31[2] = *v29;
  *&v31[18] = *&v29[8];
  *&v31[34] = *&v29[16];
  *&v31[48] = *&v29[23];
  __asm { FMOV            V0.2D, #2.0 }

  v28 = _Q0;
  *&v31[56] = _Q0;
  v23 = *v31;
  *v17 = v16;
  *(v17 + 16) = v23;
  v24 = *&v31[16];
  v25 = *&v31[32];
  v26 = *&v31[48];
  *(v17 + 80) = *&v31[64];
  *(v17 + 48) = v25;
  *(v17 + 64) = v26;
  *(v17 + 32) = v24;
  sub_100007BA4(v30, v32, &qword_100173640, &qword_100119858);
  sub_1000159AC(v15, &qword_1001734F0, &qword_100119610);
  v32[0] = v16;
  v32[1] = 0;
  v33 = 257;
  v34 = *v29;
  v35 = *&v29[8];
  *v36 = *&v29[16];
  *&v36[7] = *&v29[23];
  *&v36[11] = v28;
  sub_1000159AC(v32, &qword_100173640, &qword_100119858);
  return sub_1000159AC(v12, &qword_1001734F0, &qword_100119610);
}

uint64_t sub_100020C10@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000077C8(&qword_100173630, &qword_1001213D0);
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v19 - v7);
  if (sub_10007A24C())
  {
    v9 = Image.init(systemName:)();
    v10 = static Font.title.getter();
    KeyPath = swift_getKeyPath();
    (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
    v12 = Color.init(_:white:opacity:)();
    v13 = swift_getKeyPath();
    v14 = *(v6 + 36);
    v15 = enum case for BlendMode.multiply(_:);
    v16 = type metadata accessor for BlendMode();
    (*(*(v16 - 8) + 104))(v8 + v14, v15, v16);
    *v8 = v9;
    v8[1] = KeyPath;
    v8[2] = v10;
    v8[3] = v13;
    v8[4] = v12;
    sub_100021A84(v8, a1, &qword_100173630, &qword_1001213D0);
    return (*(v20 + 56))(a1, 0, 1, v6);
  }

  else
  {
    v18 = *(v20 + 56);

    return v18(a1, 1, 1, v6);
  }
}

uint64_t sub_100020ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v7 = v30;
  v8 = v30 * 0.5;
  v9 = v31;
  v10 = DWORD1(v31);
  v11 = *(&v31 + 1);
  v12 = v32;

  v13 = static Alignment.center.getter();
  v15 = v14;
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v37 = *v29;
  v38 = *&v29[16];
  v35 = v33[0];
  v36 = v31;
  *&v39 = v13;
  *(&v39 + 1) = v14;
  sub_100007BA4(v4, a2, &qword_100173550, &qword_100119640);
  v16 = (a2 + *(sub_1000077C8(&qword_100173540, &qword_100119638) + 36));
  v17 = *&v29[16];
  v16[2] = *v29;
  v16[3] = v17;
  v16[4] = v39;
  v18 = v36;
  *v16 = v35;
  v16[1] = v18;
  v40[2] = *v29;
  v40[3] = *&v29[16];
  v40[0] = v27;
  v40[1] = v28;
  v41 = v13;
  v42 = v15;
  sub_100007BA4(v33, v20, &qword_100173628, &unk_1001197E0);
  sub_100007BA4(&v35, v20, &qword_1001735C8, &qword_100119688);
  sub_1000159AC(v40, &qword_1001735C8, &qword_100119688);
  *v20 = v8;
  *&v20[1] = v7;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = a1;
  v26 = 256;
  return sub_1000159AC(v20, &qword_100173628, &unk_1001197E0);
}

unint64_t sub_1000210F0()
{
  result = qword_100173500;
  if (!qword_100173500)
  {
    sub_100007CCC(&qword_1001734F0, &qword_100119610);
    sub_10002117C();
    sub_1000218AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173500);
  }

  return result;
}

unint64_t sub_10002117C()
{
  result = qword_100173508;
  if (!qword_100173508)
  {
    sub_100007CCC(&qword_100173510, &qword_100119620);
    sub_100021208();
    sub_100021820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173508);
  }

  return result;
}

unint64_t sub_100021208()
{
  result = qword_100173518;
  if (!qword_100173518)
  {
    sub_100007CCC(&qword_100173520, &qword_100119628);
    sub_100021294();
    sub_1000217C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173518);
  }

  return result;
}

unint64_t sub_100021294()
{
  result = qword_100173528;
  if (!qword_100173528)
  {
    sub_100007CCC(&qword_100173530, &qword_100119630);
    sub_10002134C();
    sub_1000199C8(&qword_1001735B8, &qword_100177710, &qword_100119680, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173528);
  }

  return result;
}

unint64_t sub_10002134C()
{
  result = qword_100173538;
  if (!qword_100173538)
  {
    sub_100007CCC(&qword_100173540, &qword_100119638);
    sub_100021404();
    sub_1000199C8(&qword_1001735C0, &qword_1001735C8, &qword_100119688, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173538);
  }

  return result;
}

unint64_t sub_100021404()
{
  result = qword_100173548;
  if (!qword_100173548)
  {
    sub_100007CCC(&qword_100173550, &qword_100119640);
    sub_1000214BC();
    sub_1000199C8(&qword_1001735B8, &qword_100177710, &qword_100119680, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173548);
  }

  return result;
}

unint64_t sub_1000214BC()
{
  result = qword_100173558;
  if (!qword_100173558)
  {
    sub_100007CCC(&qword_100173560, &qword_100119648);
    sub_100021574();
    sub_1000199C8(&qword_1001735B0, &qword_1001785A0, &qword_100121590, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173558);
  }

  return result;
}

unint64_t sub_100021574()
{
  result = qword_100173568;
  if (!qword_100173568)
  {
    sub_100007CCC(&qword_100173570, &qword_100119650);
    sub_10002162C();
    sub_1000199C8(&qword_1001735A0, &qword_1001735A8, &unk_100119670, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173568);
  }

  return result;
}

unint64_t sub_10002162C()
{
  result = qword_100173578;
  if (!qword_100173578)
  {
    sub_100007CCC(&qword_100173580, &qword_100119658);
    sub_1000216B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173578);
  }

  return result;
}

unint64_t sub_1000216B8()
{
  result = qword_100173588;
  if (!qword_100173588)
  {
    sub_100007CCC(&qword_100173590, &unk_100119660);
    sub_100021744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173588);
  }

  return result;
}

unint64_t sub_100021744()
{
  result = qword_100173598;
  if (!qword_100173598)
  {
    sub_100007CCC(&qword_100177A40, &unk_1001204E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173598);
  }

  return result;
}

unint64_t sub_1000217C8()
{
  result = qword_1001735D0;
  if (!qword_1001735D0)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001735D0);
  }

  return result;
}

unint64_t sub_100021820()
{
  result = qword_1001735D8;
  if (!qword_1001735D8)
  {
    sub_100007CCC(&qword_1001735E0, &qword_100119690);
    sub_1000216B8();
    sub_1000217C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001735D8);
  }

  return result;
}

unint64_t sub_1000218AC()
{
  result = qword_1001735E8;
  if (!qword_1001735E8)
  {
    sub_100007CCC(&qword_1001735F0, &qword_100119698);
    sub_100021820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001735E8);
  }

  return result;
}

unint64_t sub_100021938()
{
  result = qword_1001735F8;
  if (!qword_1001735F8)
  {
    sub_100007CCC(&qword_1001734E0, &qword_100119600);
    sub_1000199C8(&qword_100173600, &qword_100173608, &qword_1001196A0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001735F8);
  }

  return result;
}

uint64_t sub_100021A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021A84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000077C8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100021AEC(uint64_t a1)
{
  v1 = type metadata accessor for ImageResource();
  __chkstk_darwin(v1 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6)
  {
    return Image.init(uiImage:)();
  }

  type metadata accessor for AirDropSystemApertureIconView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  ImageResource.init(name:bundle:)();
  v5 = Image.init(_:)();

  return v5;
}

uint64_t sub_100021C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a2 && a2 != 2)
  {
    if (a2 == 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if (qword_1001721F8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100007D20(v5, qword_10017F2F0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Corner icon for apps on preview image is not yet implemented!", v8, 2u);
    }

    v3 = a3;
  }

  return sub_100021AEC(v3);
}

uint64_t sub_100021D8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100021DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_100021E40(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_100021E84()
{
  result = qword_100173648;
  if (!qword_100173648)
  {
    sub_100007CCC(&qword_100173650, qword_1001198F8);
    sub_1000210F0();
    sub_100021938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173648);
  }

  return result;
}

uint64_t sub_100021F38(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_100021FA4()
{
  type metadata accessor for AirDropUISettings(0);
  v0 = swift_allocObject();
  Published.init(initialValue:)();
  result = Published.init(initialValue:)();
  qword_10017F1D0 = v0;
  return result;
}

uint64_t sub_10002202C()
{
  v1 = OBJC_IVAR____TtC9AirDropUI17AirDropUISettings__expandWhenCancelled;
  v2 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9AirDropUI17AirDropUISettings__showsDebugBackgrounds, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirDropUISettings(uint64_t a1)
{
  result = qword_100173690;
  if (!qword_100173690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022158(uint64_t a1)
{
  sub_1000221E8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000221E8()
{
  if (!qword_1001736A0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1001736A0);
    }
  }
}

uint64_t sub_100022244@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000222A4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) ^ *(a2 + 16) ^ 1u;
  }

  return 0;
}

double sub_1000222E0@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_100022364(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return static EdgeInsets.== infix(_:_:)(a1[2], a1[3], a1[4], a1[5], a2[2], a2[3], a2[4], a2[5]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100022394()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002240C()
{
  v1 = OBJC_IVAR____TtC9AirDropUI25SystemApertureLayoutState__metrics;
  v2 = sub_1000077C8(&qword_100173870, &qword_100119B88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9AirDropUI25SystemApertureLayoutState__context;
  v4 = sub_1000077C8(&qword_100173878, &qword_100119B90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SystemApertureLayoutState(uint64_t a1)
{
  result = qword_100173768;
  if (!qword_100173768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022554(uint64_t a1)
{
  sub_10002263C(319, &qword_100173778, &type metadata for SystemApertureLayoutState.Metrics);
  if (v1 <= 0x3F)
  {
    sub_10002263C(319, &unk_100173780, &type metadata for SystemApertureLayoutState.Context);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002263C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SystemApertureLayoutState.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemApertureLayoutState.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100022730(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100022750(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100022798@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SystemApertureLayoutState(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000227F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v43 = a1;
  v45 = a2;
  v3 = sub_1000077C8(&qword_100173880, &qword_100119DC0);
  __chkstk_darwin(v3);
  v5 = &v38 - v4;
  v6 = sub_1000077C8(&qword_100173888, &qword_100119DC8);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = sub_1000077C8(&qword_100173890, &qword_100119DD0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = *v2;
  v14 = *(v2 + 8);
  v15 = sub_1000614C4(*v2, v14);
  v44 = v9;
  if ((v15 & 1) == 0)
  {
    v46 = *(v2 + 16);
    v47 = *(v2 + 24);
    v51 = *(v2 + 32);
    v41 = *(v2 + 56);
    v22 = swift_allocObject();
    v23 = *(v2 + 16);
    v22[1] = *v2;
    v22[2] = v23;
    v24 = *(v2 + 48);
    v22[3] = *(v2 + 32);
    v22[4] = v24;
    v25 = sub_1000077C8(&qword_100173898, &qword_100119DD8);
    (*(*(v25 - 8) + 16))(v5, v43, v25);
    v26 = &v5[*(v3 + 36)];
    *v26 = 0;
    *(v26 + 1) = 0;
    *(v26 + 2) = sub_100023CD4;
    *(v26 + 3) = v22;
    sub_100007BA4(v5, v8, &qword_100173880, &qword_100119DC0);
    swift_storeEnumTagMultiPayload();
    sub_100023CFC(v13, v14);
    sub_100007BA4(&v46, &v48, &qword_1001738A0, &qword_100119DE0);
    sub_100007BA4(&v51, &v48, &qword_1001738A8, &qword_100119DE8);
    v27 = sub_1000199C8(&qword_1001738B0, &qword_100173898, &qword_100119DD8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v28 = sub_100023D08();

    *&v48 = v25;
    *(&v48 + 1) = &type metadata for SystemApertureLayoutState.Context;
    v49 = v27;
    v50 = v28;
    swift_getOpaqueTypeConformance2();
    sub_100023D5C();
    _ConditionalContent<>.init(storage:)();
    return sub_1000159AC(v5, &qword_100173880, &qword_100119DC0);
  }

  v40 = v10;
  v41 = v6;
  v16 = *(v2 + 16);
  v17 = *(v2 + 24);
  v18 = *(v2 + 32);
  v39 = *(v2 + 40);
  v19 = sub_1000614C4(v16, v17 & 1);
  v42 = v3;
  if (v19)
  {
    if (!v18)
    {
      type metadata accessor for SystemApertureLayoutState(0);
      sub_100023EAC();
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v20 = v48;
    v21 = v49;
  }

  else
  {
    v21 = 0;
    v20 = 0uLL;
  }

  v48 = v20;
  LOBYTE(v49) = v21;
  *&v51 = v18;
  *(&v51 + 1) = v39;
  v30 = swift_allocObject();
  v31 = *(v2 + 16);
  v30[1] = *v2;
  v30[2] = v31;
  v32 = *(v2 + 48);
  v30[3] = *(v2 + 32);
  v30[4] = v32;
  sub_100023CFC(v13, v14);
  sub_100023CFC(v16, v17 & 1);
  sub_100007BA4(&v51, &v46, &qword_1001738A8, &qword_100119DE8);

  v33 = sub_1000077C8(&qword_100173898, &qword_100119DD8);
  v34 = sub_1000199C8(&qword_1001738B0, &qword_100173898, &qword_100119DD8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v35 = sub_100023D08();
  View.onChange<A>(of:initial:_:)();

  v36 = v40;
  v37 = v44;
  (*(v40 + 16))(v8, v12, v44);
  swift_storeEnumTagMultiPayload();
  *&v48 = v33;
  *(&v48 + 1) = &type metadata for SystemApertureLayoutState.Context;
  v49 = v34;
  v50 = v35;
  swift_getOpaqueTypeConformance2();
  sub_100023D5C();
  _ConditionalContent<>.init(storage:)();
  return (*(v36 + 8))(v12, v37);
}

uint64_t sub_100022DC4(uint64_t a1, char a2, double a3, double a4, uint64_t a5, char a6)
{
  v8 = sub_1000077C8(&unk_100173930, qword_100119F90);
  __chkstk_darwin(v8 - 8);
  v10 = &v16[-v9];
  v11 = type metadata accessor for LayoutSubview();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000F931C(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000159AC(v10, &unk_100173930, qword_100119F90);
  }

  (*(v12 + 32))(v14, v10, v11);
  v16[24] = a2 & 1;
  v16[16] = a6 & 1;
  LayoutSubview.sizeThatFits(_:)();
  static UnitPoint.topLeading.getter();
  v16[8] = 0;
  v16[0] = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100022FF4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_1000077C8(&unk_100173930, qword_100119F90);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7];
  v9 = type metadata accessor for LayoutSubview();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000F931C(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000159AC(v8, &unk_100173930, qword_100119F90);
  }

  (*(v10 + 32))(v12, v8, v9);
  v14[8] = a2 & 1;
  v14[0] = a4 & 1;
  LayoutSubview.sizeThatFits(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t (*sub_1000232AC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100023334;
}

void sub_100023334(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void *sub_100023380(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = sub_1000077C8(&qword_1001738C8, &qword_100119DF0);
  __chkstk_darwin(v10);
  v12 = v22 - v11;
  v13 = sub_1000077C8(&qword_1001738D0, &qword_100119DF8);
  __chkstk_darwin(v13);
  v15 = v22 - v14;
  if (sub_1000614C4(a2, a3 & 1))
  {
    if (!a4)
    {
      type metadata accessor for SystemApertureLayoutState(0);
      sub_100023EAC();
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*v22 >= 1.0 && *(v22 + 1) >= 1.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v16 = v22[1];
      v17 = v22[2];
      *v15 = v22[0];
      *(v15 + 1) = v16;
      *(v15 + 2) = v17;
      v18 = *(v13 + 44);
      v19 = sub_1000077C8(&qword_1001738D8, &qword_100119E00);
      (*(*(v19 - 8) + 16))(&v15[v18], a1, v19);
      sub_100007BA4(v15, v12, &qword_1001738D0, &qword_100119DF8);
      swift_storeEnumTagMultiPayload();
      sub_100023F04();
      sub_1000199C8(&qword_1001738F8, &qword_1001738D8, &qword_100119E00, &protocol conformance descriptor for _ViewModifier_Content<A>);
      _ConditionalContent<>.init(storage:)();
      return sub_1000159AC(v15, &qword_1001738D0, &qword_100119DF8);
    }
  }

  v21 = sub_1000077C8(&qword_1001738D8, &qword_100119E00);
  (*(*(v21 - 8) + 16))(v12, a1, v21);
  swift_storeEnumTagMultiPayload();
  sub_100023F04();
  sub_1000199C8(&qword_1001738F8, &qword_1001738D8, &qword_100119E00, &protocol conformance descriptor for _ViewModifier_Content<A>);
  return _ConditionalContent<>.init(storage:)();
}

double sub_10002373C@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1000237C4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100023848(void *a1, uint64_t a2)
{
  v3 = [a1 activeLayoutMode];
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 SBUISA_systemApertureObstructedAreaLayoutGuide];

    [v6 layoutFrame];
    v8 = v7;
    v10 = v9;

    if (v3 == 4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v22[0] != v8 || v22[1] != v10)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v12 = static Published.subscript.modify();
        *v13 = v8;
        v13[1] = v10;
        v12(v22, 0);
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*&v22[0] != v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v14 = static Published.subscript.modify();
      *v15 = v3;
      v14(v22, 0);

      v16 = [objc_msgSend(a1 "systemApertureElementContext")];
      swift_unknownObjectRelease();
      if (v16)
      {
        v17 = [v16 fromLayoutMode];
        swift_getKeyPath();
        swift_getKeyPath();
        v18 = static Published.subscript.modify();
        *(v19 + 8) = v17;
        v18(v22, 0);

        LOBYTE(v17) = [v16 isUserInitiated];
        swift_getKeyPath();
        swift_getKeyPath();
        v20 = static Published.subscript.modify();
        *(v21 + 16) = v17;
        v20(v22, 0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_100023BC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100023BD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100023C1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100023CC8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100023CFC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100023D08()
{
  result = qword_1001738B8;
  if (!qword_1001738B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001738B8);
  }

  return result;
}

unint64_t sub_100023D5C()
{
  result = qword_1001738C0;
  if (!qword_1001738C0)
  {
    sub_100007CCC(&qword_100173880, &qword_100119DC0);
    sub_1000199C8(&qword_1001738B0, &qword_100173898, &qword_100119DD8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001738C0);
  }

  return result;
}

uint64_t sub_100023E14()
{
  sub_100023CC8(*(v0 + 16), *(v0 + 24));
  sub_100023CC8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100023E6C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3 && *(a2 + 16) != 0)
  {
    return (*(v2 + 64))(a1);
  }

  return a1;
}

unint64_t sub_100023EAC()
{
  result = qword_1001733A0;
  if (!qword_1001733A0)
  {
    type metadata accessor for SystemApertureLayoutState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001733A0);
  }

  return result;
}

unint64_t sub_100023F04()
{
  result = qword_1001738E0;
  if (!qword_1001738E0)
  {
    sub_100007CCC(&qword_1001738D0, &qword_100119DF8);
    sub_1000199C8(&qword_1001738E8, &qword_1001738F0, &qword_100119E08, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_1000199C8(&qword_1001738F8, &qword_1001738D8, &qword_100119E00, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001738E0);
  }

  return result;
}

uint64_t sub_100023FFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10002405C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1000240C4()
{
  result = qword_100173900;
  if (!qword_100173900)
  {
    sub_100007CCC(&qword_100173908, &qword_100119E80);
    sub_100007CCC(&qword_100173898, &qword_100119DD8);
    sub_1000199C8(&qword_1001738B0, &qword_100173898, &qword_100119DD8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100023D08();
    swift_getOpaqueTypeConformance2();
    sub_100023D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173900);
  }

  return result;
}

unint64_t sub_1000241D8()
{
  result = qword_100173910;
  if (!qword_100173910)
  {
    sub_100007CCC(&qword_100173918, qword_100119E88);
    sub_100023F04();
    sub_1000199C8(&qword_1001738F8, &qword_1001738D8, &qword_100119E00, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173910);
  }

  return result;
}

unint64_t sub_100024294()
{
  result = qword_100173920;
  if (!qword_100173920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173920);
  }

  return result;
}

unint64_t sub_1000242EC()
{
  result = qword_100173928;
  if (!qword_100173928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173928);
  }

  return result;
}

uint64_t type metadata accessor for RemoteAlertSceneDelegate(uint64_t a1)
{
  result = qword_100173970;
  if (!qword_100173970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002467C(uint64_t a1, uint64_t a2)
{
  sub_100024718(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100024718(uint64_t a1, uint64_t a2)
{
  if (!qword_100173980)
  {
    type metadata accessor for SFRemoteAlertPresentationRequest();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &qword_100173980);
    }
  }
}

void sub_10002487C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for SFRemoteAlertPresentationRequest();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100007D20(v9, qword_10017F338);
  (*(v6 + 16))(v8, a1, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v37 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    v15 = SFRemoteAlertPresentationRequest.id.getter();
    v36 = a1;
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    v18 = sub_10003E81C(v15, v17, aBlock);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Presenting view controller in remote alert for request: %s", v13, 0xCu);
    sub_100007920(v14);

    v3 = v37;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v26 = [v3 view];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 window];

    if (v28)
    {
      v29 = SFRemoteAlertPresentationRequest.viewControllerToPresent.getter();
      v30 = SFRemoteAlertPresentationRequest.animated.getter();
      v31 = swift_allocObject();
      *(v31 + 16) = v28;
      aBlock[4] = sub_10002532C;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100106B40;
      aBlock[3] = &unk_10015DC08;
      v32 = _Block_copy(aBlock);
      v33 = v28;

      [v3 presentViewController:v29 animated:v30 & 1 completion:v32];
      _Block_release(v32);
    }

    else
    {
      v29 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v29, v34, "Attempting to present without window", v35, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100024C50(void *a1)
{
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_10017F338);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Keeping window: %@ alive until presented", v5, 0xCu);
    sub_1000159AC(v6, &qword_100172EB0, &qword_100119410);
  }
}

void sub_100024D9C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    if (v9)
    {
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a2;
      v10[4] = a3;
      v10[5] = v3;
      aBlock[4] = sub_1000253EC;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100106B40;
      aBlock[3] = &unk_10015DC80;
      v11 = _Block_copy(aBlock);
      v12 = v9;
      sub_1000253F8(a2, a3);
      v13 = v3;

      v18.receiver = v13;
      v18.super_class = type metadata accessor for RemoteAlertRootViewController();
      objc_msgSendSuper2(&v18, "dismissViewControllerAnimated:completion:", a1 & 1, v11);
      _Block_release(v11);
    }

    else
    {
      if (qword_100172210 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100007D20(v14, qword_10017F338);
      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v15, "Attempting to dismiss without window", v16, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100024FE0(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];

  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100007D20(v6, qword_10017F338);
  v7 = a1;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v7;
    *v10 = v7;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Keeping window: %@ alive until dismissal ends", v9, 0xCu);
    sub_1000159AC(v10, &qword_100172EB0, &qword_100119410);
  }
}

id sub_100025280(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000252F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025334(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10002534C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10002535C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002539C()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000253F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100025408()
{
  result = qword_100173A20;
  if (!qword_100173A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100173A20);
  }

  return result;
}

unint64_t sub_100025454()
{
  result = qword_100173A28;
  if (!qword_100173A28)
  {
    sub_100025408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173A28);
  }

  return result;
}

uint64_t sub_1000254AC(uint64_t (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

void sub_1000254E8(void *a1)
{
  v3 = sub_1000077C8(&unk_100173A30, &qword_10011A018);
  __chkstk_darwin(v3 - 8);
  v5 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v115 - v7;
  v9 = type metadata accessor for SFRemoteAlertPresentationRequest();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v115 - v14;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = a1;
    v19 = [v17 configurationIdentifier];
    if (v19)
    {
      v20 = v19;
      v122 = v1;
      v123 = v18;
      v121 = v5;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      type metadata accessor for AUIRemoteAlertPresentationManager(0);
      v24 = sub_100078F40();
      dispatch thunk of SFRemoteAlertPresentationManager.presentationRequest(for:)();

      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_1000159AC(v8, &unk_100173A30, &qword_10011A018);
        if (qword_100172210 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100007D20(v32, qword_10017F338);

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        v23, v35, v36, v37, v38, v39, v40, v41;
        if (os_log_type_enabled(v33, v34))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v124[0] = v50;
          *v49 = 136315138;
          v51 = sub_10003E81C(v21, v23, v124);
          v23, v52, v53, v54, v55, v56, v57, v58;
          *(v49 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v33, v34, "Could not find a remote alert presentation request for ID: %s", v49, 0xCu);
          sub_100007920(v50);
        }

        else
        {
          v23, v42, v43, v44, v45, v46, v47, v48;
        }
      }

      else
      {
        v23, v25, v26, v27, v28, v29, v30, v31;
        v120 = *(v10 + 32);
        v120(v15, v8, v9);
        if (qword_100172210 != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        v82 = sub_100007D20(v81, qword_10017F338);
        (*(v10 + 16))(v12, v15, v9);
        v83 = v123;
        v119 = v82;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();

        v86 = os_log_type_enabled(v84, v85);
        v123 = v83;
        if (v86)
        {
          v87 = swift_slowAlloc();
          v118 = v10 + 32;
          v88 = v87;
          v89 = swift_slowAlloc();
          v116 = v89;
          v117 = swift_slowAlloc();
          v124[0] = v117;
          *v88 = 138412546;
          *(v88 + 4) = v17;
          *v89 = v17;
          *(v88 + 12) = 2080;
          v90 = v83;
          v91 = SFRemoteAlertPresentationRequest.id.getter();
          v93 = v92;
          (*(v10 + 8))(v12, v9);
          v94 = sub_10003E81C(v91, v93, v124);
          v93, v95, v96, v97, v98, v99, v100, v101;
          *(v88 + 14) = v94;
          _os_log_impl(&_mh_execute_header, v84, v85, "Configuring remote alert scene: %@ for request with ID: %s", v88, 0x16u);
          sub_1000159AC(v116, &qword_100172EB0, &qword_100119410);

          sub_100007920(v117);
        }

        else
        {

          (*(v10 + 8))(v12, v9);
        }

        v102 = SFRemoteAlertPresentationRequest.contentOverlaysStatusBar.getter();
        v103 = v122;
        if (v102)
        {
          if ([v17 respondsToSelector:"setContentOverlaysStatusBar:animationSettings:"])
          {
            [v17 setContentOverlaysStatusBar:1 animationSettings:0];
          }

          else
          {
            v104 = Logger.logObject.getter();
            v105 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              *v106 = 0;
              _os_log_impl(&_mh_execute_header, v104, v105, "Wanted to set contentOverlaysStatusBar to true, but this version of SpringBoard does not support it.", v106, 2u);
            }

            v103 = v122;
          }
        }

        [v17 setAllowsAlertStacking:1];
        [v17 setOrientationChangedEventsDisabled:1];
        v107 = [objc_allocWithZone(type metadata accessor for SFSecureWindow()) initWithWindowScene:v17];
        v108 = type metadata accessor for RemoteAlertRootViewController();
        v109 = objc_allocWithZone(v108);
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        v125.receiver = v109;
        v125.super_class = v108;
        v110 = objc_msgSendSuper2(&v125, "initWithNibName:bundle:", 0, 0);
        v111 = v107;
        [v111 setRootViewController:v110];
        [v111 makeKeyAndVisible];

        v112 = *(v103 + OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_window);
        *(v103 + OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_window) = v111;

        v113 = v121;
        v120(v121, v15, v9);
        (*(v10 + 56))(v113, 0, 1, v9);
        v114 = OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_presentationRequest;
        swift_beginAccess();
        sub_1000268D8(v113, v103 + v114);
        swift_endAccess();
      }

      return;
    }

    if (qword_100172210 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_100007D20(v75, qword_10017F338);
    v76 = v18;
    v123 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v123, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      *(v78 + 4) = v17;
      *v79 = v17;
      v76 = v76;
      _os_log_impl(&_mh_execute_header, v123, v77, "Could not find configuration identifier on remote alert scene: %@", v78, 0xCu);
      sub_1000159AC(v79, &qword_100172EB0, &qword_100119410);
    }
  }

  else
  {
    if (qword_100172210 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100007D20(v59, qword_10017F338);
    v60 = a1;
    v123 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v123, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v124[0] = v63;
      *v62 = 136315138;
      swift_getObjectType();
      v64 = _typeName(_:qualified:)();
      v66 = v65;
      v67 = sub_10003E81C(v64, v65, v124);
      v66, v68, v69, v70, v71, v72, v73, v74;
      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v123, v61, "Cannot configure scene, expected a remote alert scene but got a scene of type: %s", v62, 0xCu);
      sub_100007920(v63);

      return;
    }
  }

  v80 = v123;
}

void sub_100025EC4()
{
  v1 = v0;
  v2 = sub_1000077C8(&unk_100173A30, &qword_10011A018);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for SFRemoteAlertPresentationRequest();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100007D20(v9, qword_10017F338);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RemoteAlertSceneDelegate: sceneDidBecomeActive", v12, 2u);
  }

  v13 = *(v1 + OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_window);
  if (v13)
  {
    v14 = [v13 rootViewController];
    if (v14)
    {
      v22 = v14;
      type metadata accessor for RemoteAlertRootViewController();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = [v15 presentedViewController];
        if (!v16)
        {
          v18 = OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_presentationRequest;
          swift_beginAccess();
          sub_100026868(v1 + v18, v4);
          if ((*(v6 + 48))(v4, 1, v5) == 1)
          {

            sub_1000159AC(v4, &unk_100173A30, &qword_10011A018);
          }

          else
          {
            (*(v6 + 32))(v8, v4, v5);
            sub_10002487C(v8, v19);

            (*(v6 + 8))(v8, v5);
          }

          return;
        }

        v21 = v16;

        v17 = v21;
      }

      else
      {
        v17 = v22;
      }
    }
  }
}

void sub_1000261DC(const char *a1)
{
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_10017F338);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_1000262CC(void *a1, uint64_t a2)
{
  if (qword_100172210 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_100007D20(v4, qword_10017F338);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    a2, v7, v8, v9, v10, v11, v12, v13;
    if (os_log_type_enabled(v5, v6))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v84[0] = v15;
      *v14 = 136315138;
      sub_100025408();
      sub_100025454();
      v16 = Set.description.getter();
      v18 = v17;
      v19 = sub_10003E81C(v16, v17, v84);
      v18, v20, v21, v22, v23, v24, v25, v26;
      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v5, v6, "RemoteAlertSceneDelegate: handle buttonActions: %s", v14, 0xCu);
      sub_100007920(v15);
    }

    v27 = [a1 configurationIdentifier];
    if (!v27)
    {
      v44 = a1;
      oslog = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v44;
        *v47 = v44;
        v48 = v44;
        _os_log_impl(&_mh_execute_header, oslog, v45, "Could not find configuration identifier on remote alert scene: %@", v46, 0xCu);
        sub_1000159AC(v47, &qword_100172EB0, &qword_100119410);
      }

      goto LABEL_31;
    }

    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    type metadata accessor for AUIRemoteAlertPresentationManager(0);
    v32 = sub_100078F40();
    v33 = dispatch thunk of SFRemoteAlertPresentationManager.presentationHandle(for:)();

    if (!v33)
    {
      break;
    }

    v31, v34, v35, v36, v37, v38, v39, v40;
    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100025408();
      sub_100025454();
      Set.Iterator.init(_cocoa:)();
      a2 = v84[0];
      v41 = v84[1];
      v42 = v84[2];
      v43 = v84[3];
      a1 = v84[4];
    }

    else
    {
      v74 = -1 << *(a2 + 32);
      v41 = a2 + 56;
      v42 = ~v74;
      v75 = -v74;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      else
      {
        v76 = -1;
      }

      a1 = (v76 & *(a2 + 56));

      v43 = 0;
    }

    while (a2 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100025408(), swift_dynamicCast(), v81 = v83, v79 = v43, v80 = a1, !v83))
      {
LABEL_29:
        sub_100026860(a2);

        return;
      }

LABEL_27:
      if ([v81 events] == 16)
      {
        dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
      }

      else
      {
        [v81 sendResponseWithUnHandledEvents:{objc_msgSend(v81, "events")}];
      }

      v43 = v79;
      a1 = v80;
    }

    v77 = v43;
    v78 = a1;
    v79 = v43;
    if (a1)
    {
LABEL_23:
      v80 = ((v78 - 1) & v78);
      v81 = *(*(a2 + 48) + ((v79 << 9) | (8 * __clz(__rbit64(v78)))));
      if (!v81)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v79 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v79 >= ((v42 + 64) >> 6))
      {
        goto LABEL_29;
      }

      v78 = *(v41 + 8 * v79);
      ++v77;
      if (v78)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  oslog = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  v31, v50, v51, v52, v53, v54, v55, v56;
  if (os_log_type_enabled(oslog, v49))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v84[0] = v65;
    *v64 = 136315138;
    v66 = sub_10003E81C(v29, v31, v84);
    v31, v67, v68, v69, v70, v71, v72, v73;
    *(v64 + 4) = v66;
    _os_log_impl(&_mh_execute_header, oslog, v49, "Could not find a remote alert presentation request for ID: %s", v64, 0xCu);
    sub_100007920(v65);

    return;
  }

  v31, v57, v58, v59, v60, v61, v62, v63;
LABEL_31:
}

uint64_t sub_100026868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100173A30, &qword_10011A018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000268D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100173A30, &qword_10011A018);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100026950(uint64_t a1)
{
  v52 = type metadata accessor for UUID();
  v3 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v5 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v41 = v1;
    v57 = &_swiftEmptyArrayStorage;
    sub_10000E474(0, v7, 0);
    v8 = v57;
    v9 = a1 + 64;
    v10 = _HashTable.startBucket.getter();
    v11 = 0;
    v46 = (v3 + 8);
    v47 = v5 + 16;
    v48 = v5;
    v44 = a1 + 64;
    v45 = v5 + 8;
    v42 = a1 + 72;
    v43 = v7;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      v15 = *(a1 + 36);
      v53 = v11;
      v54 = v15;
      v16 = v48;
      v17 = *(a1 + 48) + *(v48 + 72) * v10;
      v18 = *(v48 + 16);
      v56 = v8;
      v20 = v49;
      v19 = v50;
      v18(v49, v17, v50);
      v21 = v51;
      SFAirDrop.TransferIdentifier.id.getter();
      v22 = UUID.uuidString.getter();
      v55 = v23;
      (*v46)(v21, v52);
      v24 = v20;
      v8 = v56;
      (*(v16 + 8))(v24, v19);
      v57 = v8;
      v31 = *v8->connection;
      v30 = *v8->airdropClient;
      if (v31 >= v30 >> 1)
      {
        sub_10000E474((v30 > 1), v31 + 1, 1);
        v8 = v57;
      }

      *v8->connection = v31 + 1;
      v32 = v8 + 16 * v31;
      v33 = v55;
      *(v32 + 4) = v22;
      *(v32 + 5) = v33;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_22;
      }

      v9 = v44;
      v34 = *(v44 + 8 * v14);
      if ((v34 & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v54 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v35 = v34 & (-2 << (v10 & 0x3F));
      if (v35)
      {
        v12 = __clz(__rbit64(v35)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v43;
      }

      else
      {
        v36 = v14 << 6;
        v37 = v14 + 1;
        v13 = v43;
        v38 = (v42 + 8 * v14);
        while (v37 < (v12 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            sub_100047AC0(v10, v54, 0, v25, v26, v27, v28, v29);
            v12 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        sub_100047AC0(v10, v54, 0, v25, v26, v27, v28, v29);
      }

LABEL_4:
      v11 = v53 + 1;
      v10 = v12;
      if (v53 + 1 == v13)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_100026D10(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v41)
  {
    if (*(v41 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity))
    {

      v3 = Activity.id.getter();
      v5 = v4;

      v12 = a2;
      if (v3 == a1 && v5 == a2)
      {
LABEL_26:
        v5, v6, v7, v12, v8, v9, v10, v11;
        return;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = 0;
  v23 = 1 << *(v41 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v41 + 64);
  v26 = (v23 + 63) >> 6;
  while (v25)
  {
LABEL_17:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    if (*(*(*(v41 + 56) + ((v22 << 9) | (8 * v28))) + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity))
    {

      v29 = Activity.id.getter();
      v5 = v30;

      if (v29 == a1 && v5 == a2)
      {

        goto LABEL_26;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5, v33, v34, v35, v36, v37, v38, v39;
      if (v32)
      {
LABEL_24:

        return;
      }
    }
  }

  while (1)
  {
    v27 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v27 >= v26)
    {
      goto LABEL_24;
    }

    v25 = *(v41 + 64 + 8 * v27);
    ++v22;
    if (v25)
    {
      v22 = v27;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100026F94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100027008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100041560(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_10003EF38(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100041F3C();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100040C24(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1000271C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10004172C(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_10003EDEC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1000421BC();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100040F48(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1000273B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_10004190C(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    v11 = type metadata accessor for UUID();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v4 = v24;
  }

  else
  {
    v13 = sub_10003EDEC(a2);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v7;
      if (!v16)
      {
        sub_1000426C4(a3, a4);
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = type metadata accessor for UUID();
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      sub_100040F48(v15, v17);
      result = (v21)(a2, v19);
      *v7 = v17;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_100027594()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100173A40);
  v1 = sub_100007D20(v0, qword_100173A40);
  if (qword_100172200 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F308);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10002765C()
{
  result = [objc_allocWithZone(type metadata accessor for AirDropTransferSessionsController(0)) init];
  qword_10017F1E0 = result;
  return result;
}

void sub_100027690(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100027710(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100027788()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_1000277FC(__n128 a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v3 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v3 - 8);
  v59 = &v55 - v4;
  v60 = type metadata accessor for SFAirDropClient.Identifier();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000077C8(&qword_100173D98, &qword_10011A650);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v55 - v9;
  v11 = sub_1000077C8(&qword_100173DA0, &qword_10011A658);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_listener] = 0;
  *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_connection] = 0;
  *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient] = 0;
  v15 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator;
  if (qword_1001721F0 != -1)
  {
    swift_once();
  }

  v16 = qword_10017F2E8;
  *&v2[v15] = qword_10017F2E8;
  v57 = v15;
  v17 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController__airDropSessionsByID;
  v18 = v16;
  aBlock[0] = sub_1000A8368(&_swiftEmptyArrayStorage);
  sub_1000077C8(&qword_100173AF8, &qword_10011A080);
  Published.init(initialValue:)();
  (*(v12 + 32))(&v2[v17], v14, v11);
  v19 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController__bannerAirDropSession;
  aBlock[0] = 0;
  sub_1000077C8(&qword_100173B08, &unk_10011A088);
  Published.init(initialValue:)();
  (*(v8 + 32))(&v2[v19], v10, v7);
  *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersBeingEnded] = &_swiftEmptyArrayStorage;
  v20 = objc_allocWithZone(UNUserNotificationCenter);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithBundleIdentifier:v21];

  *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_userNotificationsCenter] = v22;
  *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_interventionTasks] = sub_1000A846C(&_swiftEmptyArrayStorage);
  type metadata accessor for SFAirDropClient();
  (*(v58 + 104))(v6, enum case for SFAirDropClient.Identifier.airdropUI(_:), v60);
  v23 = SFAirDropClient.__allocating_init(identifier:)();
  *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airdropClient] = v23;
  v24 = type metadata accessor for TaskPriority();
  v25 = *(*(v24 - 1) + 56);
  v26 = v59;
  v25(v59, 1, 1, v24);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v23;
  swift_retain_n();
  *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersMonitorTask] = sub_1000E1D14(0, 0, v26, &unk_10011A668, v27);
  v28 = *&v2[v57];
  *&v28[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_airDropClient] = v23;
  swift_retain_n();
  v29 = v28;

  sub_1000952E4();

  type metadata accessor for SFLockStateMonitor();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_lockStateMonitor] = SFLockStateMonitor.init()();
  v30 = [objc_opt_self() sharedApplication];
  v31 = [v30 userInterfaceLayoutDirection];

  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v32 = objc_allocWithZone(type metadata accessor for SFUIContactIconProvider());
    *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_contactIconProvider] = SFUIContactIconProvider.init(diameter:layoutDirection:)();
    v33 = [objc_opt_self() mainScreen];
    v34 = [v33 traitCollection];

    v35 = [v34 userInterfaceStyle];
    v36 = [objc_allocWithZone(SFUIPeopleSuggestionImageProvider) initWithTargetSize:v31 layoutDirection:v35 userInterfaceStyle:{1.0, 1.0}];
    *&v2[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_appCornerIconProvider] = v36;
    v37 = ObjectType;
    v62.receiver = v2;
    v62.super_class = ObjectType;
    v38 = objc_msgSendSuper2(&v62, "init");
    v25(v26, 1, 1, v24);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = &unk_10011A678;
    *(v40 + 24) = v39;
    v41 = v38;
    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v26, &qword_100172F50, &qword_10011E500);
    sub_100047F70(&qword_100173DA8, type metadata accessor for AirDropTransferSessionsController, &unk_10011A098);
    v26 = v41;

    dispatch thunk of SFLockStateMonitor.delegate.setter();

    v42 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_userNotificationsCenter;
    v43 = *&v26[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_userNotificationsCenter];
    [v43 setDelegate:v26];

    v24 = &v55;
    __chkstk_darwin([*&v26[v42] setWantsNotificationResponsesDelivered]);
    *(&v55 - 2) = v26;
    *(&v55 - 1) = v37;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_100047800;
    *(v44 + 24) = &v55 - 4;
    aBlock[4] = sub_100047588;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005A770;
    aBlock[3] = &unk_10015E088;
    v45 = _Block_copy(aBlock);
    v46 = objc_opt_self();

    v47 = [v46 listenerWithConfigurator:v45];
    _Block_release(v45);

    LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

    if ((v45 & 1) == 0)
    {
      v24 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_listener;
      v48 = *&v26[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_listener];
      *&v26[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_listener] = v47;

      if (qword_100172148 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_6:
  v49 = type metadata accessor for Logger();
  sub_100007D20(v49, qword_100173A40);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "AirDropTransferSessionsController listener is activating...", v52, 2u);
  }

  result = *(v24 + v26);
  if (result)
  {
    [result activate];
    sub_1000284BC(v54);

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000281C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BCF0;

  return SFAirDropClient.registerTransfersMonitor()(a1);
}

uint64_t sub_100028260(uint64_t a1)
{
  *(v1 + 40) = a1;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000282F8, v3, v2);
}

uint64_t sub_1000282F8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_100172250 != -1)
    {
      v9 = Strong;
      swift_once();
      Strong = v9;
    }

    v2 = qword_10017F390;
    v3 = *(Strong + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator);
    v4 = Strong;

    v5 = v3;

    v6 = *(v2 + 16);
    *(v2 + 16) = v5;
  }

  v7 = *(v0 + 8);

  return v7();
}

id sub_1000283FC(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t sub_1000284BC(__n128 a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = ObjectType;
  v8 = v1;
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v5, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_10002861C(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000286B4, v3, v2);
}

uint64_t sub_1000286B4()
{

  sub_100028718();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100028718()
{
  v1 = v0;
  if (qword_100172250 != -1)
  {
    swift_once();
  }

  v2 = sub_1000F9F88();

  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v4 = *(v2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
    v78 = *(v2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v79 = v4;

    v5._countAndFlagsBits = 45;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 0x732D72656E6E6162;
    v6._object = 0xEE006E6F69737365;
    String.append(_:)(v6);
    v8 = v78;
    v7 = v79;
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100007D20(v9, qword_100173A40);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v77 = v78;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v78 = v13;
      *v12 = 136315138;
      v15 = *v3;
      v14 = v3[1];

      v16 = sub_10003E81C(v15, v14, &v78);
      v14, v17, v18, v19, v20, v21, v22, v23;
      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Banner session updated for transfer %s", v12, 0xCu);
      sub_100007920(v13);

      v8 = v77;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v78)
    {
      v43 = *(qword_10017F390 + 32);
      type metadata accessor for AirDropTransferSession(0);
      swift_allocObject();

      v44 = sub_1000841B4(v2, v8, v7, v43);

      swift_getKeyPath();
      swift_getKeyPath();
      v78 = v44;
      v45 = v1;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v53 = v78;
      if (v78)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v55 = Strong;
          v56 = *(qword_10017F390 + 32);

          sub_100068D80(v53, v8, v7, v56, 1);
        }
      }

      v7, v46, v47, v48, v49, v50, v51, v52;
      v31 = Logger.logObject.getter();
      v75 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v31, v75, "Banner session newly created", v76, 2u);
      }

      goto LABEL_33;
    }

    if (sub_100081358(v2))
    {
      v7, v24, v25, v26, v27, v28, v29, v30;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v31, v32))
      {
LABEL_26:

LABEL_33:

        return;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Skipping update because session is the same";
    }

    else
    {
      v57 = swift_unknownObjectWeakLoadStrong();
      v58 = *(qword_10017F390 + 32);

      if (v57)
      {
        sub_100068D80(v2, v8, v7, v58, 0);
      }

      else
      {
        sub_10007E610(v2, v8, v7, v58);
      }

      v7, v59, v60, v61, v62, v63, v64, v65;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_26;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Banner session update(with:) run";
    }

    _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

    goto LABEL_26;
  }

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100007D20(v35, qword_100173A40);
  v36 = v0;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v78 = v40;
    *v39 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v80)
    {

      v41 = 0xE700000000000000;
      v42 = 0x6465766F6D6572;
    }

    else
    {
      v41 = 0xE90000000000006ELL;
      v42 = 0x776F687320746F6ELL;
    }

    v66 = sub_10003E81C(v42, v41, &v78);
    v41, v67, v68, v69, v70, v71, v72, v73;
    *(v39 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v37, v38, "Banner session %s", v39, 0xCu);
    sub_100007920(v40);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v78 = 0;
  v74 = v36;
  static Published.subscript.setter();
}

uint64_t sub_100028E70(uint64_t a1, uint64_t a2)
{
  v2[25] = a2;
  v3 = type metadata accessor for SFAirDropSend.Transfer.State();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropSend.Request();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  sub_1000077C8(&unk_100173C50, &qword_10011D9D0);
  v2[32] = swift_task_alloc();
  v5 = type metadata accessor for SFAirDrop.DisplayPriority();
  v2[33] = v5;
  v2[34] = *(v5 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[40] = v7;
  v2[41] = *(v7 - 8);
  v2[42] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.TransferType();
  v2[43] = v8;
  v2[44] = *(v8 - 8);
  v2[45] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[46] = v9;
  v2[47] = *(v9 - 8);
  v2[48] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Transfer();
  v2[49] = v10;
  v2[50] = *(v10 - 8);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDropClient.Identifier();
  v2[60] = v11;
  v2[61] = *(v11 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[64] = v12;
  v2[65] = *(v12 - 8);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDrop.Transfers();
  v2[75] = v13;
  v2[76] = *(v13 - 8);
  v2[77] = swift_task_alloc();
  sub_1000077C8(&qword_100173E10, &qword_10011A6A0);
  v2[78] = swift_task_alloc();
  v14 = sub_1000077C8(&qword_100173D80, &qword_100120890);
  v2[79] = v14;
  v2[80] = *(v14 - 8);
  v2[81] = swift_task_alloc();
  v2[82] = type metadata accessor for MainActor();
  v2[83] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[84] = v16;
  v2[85] = v15;

  return _swift_task_switch(sub_1000294B4, v16, v15);
}

uint64_t sub_1000294B4()
{
  v1 = *(v0[25] + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersMonitorTask);
  v0[86] = v1;

  v2 = swift_task_alloc();
  v0[87] = v2;
  v3 = sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  v0[88] = v3;
  *v2 = v0;
  v2[1] = sub_100029598;
  v4 = v0[81];
  v5 = v0[79];

  return Task.value.getter(v4, v1, v5, v3, &protocol self-conformance witness table for Error);
}

uint64_t sub_100029598()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {

    v3 = *(v2 + 680);
    v4 = *(v2 + 672);
    v5 = sub_10002C844;
  }

  else
  {
    v3 = *(v2 + 680);
    v4 = *(v2 + 672);
    v5 = sub_1000296BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000296BC()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);

  v4 = SFXPCResilientAsyncSequence.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  *(v0 + 168) = v4;
  *(v0 + 720) = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersBeingEnded;
  *(v0 + 752) = enum case for SFAirDropClient.Identifier.airdropUI(_:);
  *(v0 + 728) = static MainActor.shared.getter();
  v5 = sub_1000077C8(&qword_100173E18, &qword_10011A6A8);
  v6 = sub_1000199C8(&qword_100173E20, &qword_100173E18, &qword_10011A6A8, &protocol conformance descriptor for SFXPCResilientAsyncSequence<A>.AsyncIterator);
  v7 = swift_task_alloc();
  *(v0 + 736) = v7;
  *v7 = v0;
  v7[1] = sub_10002981C;
  v8 = *(v0 + 624);

  return dispatch thunk of AsyncIteratorProtocol.next()(v8, v5, v6);
}

uint64_t sub_10002981C()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  v3 = *(v2 + 728);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10002C458;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1000299B4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1000299B4()
{

  v1 = *(v0 + 680);
  v2 = *(v0 + 672);

  return _swift_task_switch(sub_100029A1C, v2, v1);
}

uint64_t sub_100029A1C()
{
  v603 = v0;
  v1 = v0;
  v2 = *(v0 + 624);
  v3 = *(v0 + 608);
  v4 = *(v1 + 600);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {

    if (qword_100172148 != -1)
    {
      goto LABEL_118;
    }

    goto LABEL_3;
  }

  (*(v3 + 32))(*(v1 + 616), v2, v4);
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v525 = v1 + 152;
  v526 = v1 + 136;
  v11 = type metadata accessor for Logger();
  sub_100007D20(v11, qword_100173A40);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "AirDropTransferSessionController transfers CHANGED", v14, 2u);
  }

  v15 = SFAirDrop.Transfers.receiveTransfers.getter();
  v568 = v15 + 64;
  v572 = v15;
  v16 = -1 << *(v15 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v596 = v17 & *(v15 + 64);
  swift_beginAccess();
  v18 = 0;
  v19 = (63 - v16) >> 6;
  v588 = *(v1 + 744);
  v601 = v1;
  v570 = v19;
  while (1)
  {
    v21 = v596;
    v592 = v12;
    if (!v596)
    {
      break;
    }

    v22 = v18;
LABEL_23:
    v597 = *(v1 + 752);
    v23 = *(v1 + 592);
    v24 = *(v1 + 584);
    v25 = *(v601 + 520);
    v26 = *(v601 + 512);
    v27 = *(v601 + 504);
    v28 = *(v601 + 496);
    v29 = *(v601 + 488);
    v30 = *(v601 + 480);
    v574 = v22;
    v576 = *(v25 + 16);
    v576(v23, *(v572 + 56) + *(v25 + 72) * (__clz(__rbit64(v21)) | (v22 << 6)), v26);
    (*(v25 + 32))(v24, v23, v26);
    v1 = v601;
    SFAirDropReceive.Transfer.presenter.getter();
    (*(v29 + 104))(v28, v597, v30);
    LOBYTE(v24) = static SFAirDropClient.Identifier.== infix(_:_:)();
    v31 = *(v29 + 8);
    v596 = (v21 - 1) & v21;
    v31(v28, v30);
    v31(v27, v30);
    v32 = *(v601 + 584);
    if (v24)
    {
      v34 = *(v601 + 376);
      v33 = *(v601 + 384);
      v36 = *(v601 + 360);
      v35 = *(v601 + 368);
      v37 = *(v601 + 344);
      v38 = *(v601 + 352);
      SFAirDropReceive.Transfer.askRequest.getter();
      SFAirDropReceive.AskRequest.type.getter();
      (*(v34 + 8))(v33, v35);
      v39 = SFAirDrop.TransferType.isOnlyExchange.getter();
      (*(v38 + 8))(v36, v37);
      if (v39)
      {
        v576(*(v601 + 552), *(v601 + 584), *(v601 + 512));
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        v42 = os_log_type_enabled(v40, v41);
        v43 = *(v601 + 584);
        v44 = *(v601 + 552);
        v45 = *(v601 + 520);
        v46 = *(v601 + 512);
        if (v42)
        {
          v577 = *(v601 + 584);
          v47 = *(v601 + 336);
          v48 = *(v601 + 328);
          v49 = *(v601 + 320);
          v50 = swift_slowAlloc();
          v562 = swift_slowAlloc();
          v602[0] = v562;
          *v50 = 136315138;
          v555 = v41;
          SFAirDropReceive.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
          v51 = dispatch thunk of CustomStringConvertible.description.getter();
          v53 = v52;
          (*(v48 + 8))(v47, v49);
          v1 = v601;
          v54 = *(v45 + 8);
          v54(v44, v46);
          v55 = sub_10003E81C(v51, v53, v602);
          v53, v56, v57, v58, v59, v60, v61, v62;
          *(v50 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v40, v555, "AirDropTransferSessionController transfers skipped, transfer is of type onlyExchange, not monitoring on AirDropUI {id: %s}", v50, 0xCu);
          sub_100007920(v562);

          v54(v577, v46);
        }

        else
        {

          v145 = *(v45 + 8);
          v145(v44, v46);
          v145(v43, v46);
        }

        goto LABEL_17;
      }

      v100 = *(v601 + 328);
      v99 = *(v601 + 336);
      v101 = *(v601 + 320);
      v102 = *(*(v601 + 200) + *(v601 + 720));

      SFAirDropReceive.Transfer.id.getter();
      v103 = SFAirDrop.TransferIdentifier.stringValue.getter();
      v105 = v104;
      v593 = *(v100 + 8);
      v593(v99, v101);
      *(v601 + 136) = v103;
      *(v601 + 144) = v105;
      v106 = swift_task_alloc();
      *(v106 + 16) = v526;
      LOBYTE(v99) = sub_1000882CC(sub_1000478B4, v106, v102);
      v102, v107, v108, v109, v110, v111, v112, v113;
      v105, v114, v115, v116, v117, v118, v119, v120;

      v121 = *(v601 + 584);
      if (v99)
      {
        v576(*(v601 + 560), *(v601 + 584), *(v601 + 512));
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.default.getter();
        v124 = os_log_type_enabled(v122, v123);
        v125 = *(v601 + 584);
        v126 = *(v601 + 560);
        v127 = *(v601 + 520);
        v128 = *(v601 + 512);
        if (v124)
        {
          v557 = *(v601 + 512);
          v129 = *(v601 + 336);
          v578 = *(v601 + 584);
          v130 = *(v601 + 320);
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v602[0] = v132;
          *v131 = 136315138;
          log = v123;
          SFAirDropReceive.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
          v133 = dispatch thunk of CustomStringConvertible.description.getter();
          v135 = v134;
          v593(v129, v130);
          v136 = *(v127 + 8);
          v136(v126, v557);
          v137 = sub_10003E81C(v133, v135, v602);
          v135, v138, v139, v140, v141, v142, v143, v144;
          *(v131 + 4) = v137;
          _os_log_impl(&_mh_execute_header, v122, log, "AirDropTransferSessionController transfer update for %s skipped, this transfer is being ended to save live activity space", v131, 0xCu);
          sub_100007920(v132);

          v136(v578, v557);
        }

        else
        {

          v180 = *(v127 + 8);
          v180(v126, v128);
          v180(v125, v128);
        }

        v18 = v574;
        v12 = v588;
        v19 = v570;
      }

      else
      {
        v146 = *(v601 + 568);
        v147 = *(v601 + 512);
        v576(*(v601 + 576), *(v601 + 584), v147);
        v576(v146, v121, v147);
        v148 = Logger.logObject.getter();
        v149 = static os_log_type_t.debug.getter();
        v150 = os_log_type_enabled(v148, v149);
        v151 = *(v601 + 576);
        v152 = *(v601 + 568);
        v153 = *(v601 + 520);
        v154 = *(v601 + 512);
        if (v150)
        {
          loga = v149;
          v155 = *(v601 + 336);
          v156 = *(v601 + 320);
          v537 = *(v601 + 304);
          v529 = *(v601 + 312);
          v533 = *(v601 + 296);
          v524 = swift_slowAlloc();
          v542 = v148;
          v602[0] = swift_slowAlloc();
          *v524 = 136315394;
          SFAirDropReceive.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
          v157 = dispatch thunk of CustomStringConvertible.description.getter();
          v158 = v152;
          v160 = v159;
          v593(v155, v156);
          v558 = *(v153 + 8);
          v558(v151, v154);
          v161 = sub_10003E81C(v157, v160, v602);
          v160, v162, v163, v164, v165, v166, v167, v168;
          *(v524 + 4) = v161;
          *(v524 + 12) = 2080;
          SFAirDropReceive.Transfer.state.getter();
          sub_100047F70(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
          v169 = dispatch thunk of CustomStringConvertible.description.getter();
          v171 = v170;
          (*(v537 + 8))(v529, v533);
          v558(v158, v154);
          v172 = sub_10003E81C(v169, v171, v602);
          v171, v173, v174, v175, v176, v177, v178, v179;
          *(v524 + 14) = v172;
          _os_log_impl(&_mh_execute_header, v542, loga, "AirDropTransferSessionController receive transfer {id: %s, state: %s}", v524, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v181 = *(v153 + 8);
          v181(v152, v154);
          v558 = v181;
          v181(v151, v154);
        }

        v182 = sub_10002CBA0(*(v601 + 584), 0, 0);
        v12 = v588;
        v183 = *(v601 + 584);
        v184 = *(v601 + 512);
        if (!v588)
        {
          v207 = *(v601 + 312);
          v208 = *(v601 + 304);
          v209 = *(v601 + 296);
          v210 = *(v601 + 288);
          v211 = *(v601 + 280);
          v212 = *(v601 + 272);
          v564 = *(v601 + 264);
          v580 = *(v601 + 256);
          v592 = 0;
          v213 = v182;
          SFAirDropReceive.Transfer.state.getter();
          sub_10007BEA8(v207);
          (*(v208 + 8))(v207, v209);
          v1 = v601;
          SFAirDropReceive.Transfer.displayPriority.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          (*(v212 + 16))(v211, v210, v564);

          static Published.subscript.setter();
          (*(v212 + 8))(v210, v564);
          SFAirDropReceive.Transfer.cancelAction.getter();
          v558(v183, v184);
          v214 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
          swift_beginAccess();
          sub_1000478DC(v580, v213 + v214, &unk_100173C50, &qword_10011D9D0);
          swift_endAccess();

          v588 = 0;
          goto LABEL_17;
        }

        v576(*(v601 + 528), *(v601 + 584), *(v601 + 512));
        swift_errorRetain();
        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.error.getter();

        v187 = os_log_type_enabled(v185, v186);
        v188 = *(v601 + 584);
        v189 = *(v601 + 528);
        v190 = *(v601 + 512);
        if (v187)
        {
          v547 = *(v601 + 512);
          v191 = *(v601 + 336);
          v192 = *(v601 + 320);
          v589 = *(v601 + 584);
          v193 = v12;
          v194 = swift_slowAlloc();
          logb = swift_slowAlloc();
          v579 = swift_slowAlloc();
          v602[0] = v579;
          *v194 = 136315394;
          SFAirDropReceive.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
          v195 = dispatch thunk of CustomStringConvertible.description.getter();
          v543 = v186;
          v197 = v196;
          v593(v191, v192);
          v558(v189, v547);
          v198 = sub_10003E81C(v195, v197, v602);
          v197, v199, v200, v201, v202, v203, v204, v205;
          *(v194 + 4) = v198;
          *(v194 + 12) = 2112;
          swift_errorRetain();
          v206 = _swift_stdlib_bridgeErrorToNSError();
          *(v194 + 14) = v206;
          logb->isa = v206;
          _os_log_impl(&_mh_execute_header, v185, v543, "Failed to update transfer %s: %@", v194, 0x16u);
          sub_1000159AC(logb, &qword_100172EB0, &qword_100119410);

          sub_100007920(v579);

          v558(v589, v547);
          v588 = 0;
          v18 = v574;
          v12 = v193;
        }

        else
        {

          v558(v189, v190);
          v558(v188, v190);
          v588 = 0;
          v18 = v574;
        }

        v19 = v570;
      }
    }

    else
    {
      v63 = *(v601 + 536);
      v64 = *(v601 + 512);
      v576(*(v601 + 544), *(v601 + 584), v64);
      v576(v63, v32, v64);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      v67 = os_log_type_enabled(v65, v66);
      v68 = *(v601 + 584);
      v69 = *(v601 + 544);
      v70 = *(v601 + 536);
      v71 = *(v601 + 520);
      v72 = *(v601 + 512);
      if (v67)
      {
        v541 = *(v601 + 504);
        v546 = *(v601 + 480);
        v532 = *(v601 + 512);
        v73 = *(v601 + 336);
        v74 = *(v601 + 328);
        v528 = *(v601 + 320);
        v536 = *(v601 + 536);
        v75 = swift_slowAlloc();
        v602[0] = swift_slowAlloc();
        *v75 = 136315394;
        v556 = v66;
        SFAirDropReceive.Transfer.id.getter();
        sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        v563 = v68;
        v78 = v77;
        (*(v74 + 8))(v73, v528);
        v1 = v601;
        v79 = *(v71 + 8);
        v79(v69, v532);
        v80 = sub_10003E81C(v76, v78, v602);
        v78, v81, v82, v83, v84, v85, v86, v87;
        *(v75 + 4) = v80;
        *(v75 + 12) = 2080;
        SFAirDropReceive.Transfer.presenter.getter();
        sub_100047F70(&qword_100173E30, &type metadata accessor for SFAirDropClient.Identifier, &protocol conformance descriptor for SFAirDropClient.Identifier);
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v89;
        v31(v541, v546);
        v79(v536, v532);
        v91 = sub_10003E81C(v88, v90, v602);
        v90, v92, v93, v94, v95, v96, v97, v98;
        *(v75 + 14) = v91;
        _os_log_impl(&_mh_execute_header, v65, v556, "AirDropTransferSessionController transfer update for %s skipped, presenter is %s", v75, 0x16u);
        swift_arrayDestroy();

        v79(v563, v532);
      }

      else
      {

        v20 = *(v71 + 8);
        v20(v70, v72);
        v20(v69, v72);
        v20(v68, v72);
      }

LABEL_17:
      v18 = v574;
      v12 = v592;
      v19 = v570;
    }
  }

  while (1)
  {
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_113;
    }

    if (v22 >= v19)
    {
      break;
    }

    v21 = *(v568 + 8 * v22);
    ++v18;
    if (v21)
    {
      goto LABEL_23;
    }
  }

  v215 = SFAirDrop.Transfers.sendTransfers.getter();
  v216 = v215 + 64;
  v573 = v215;
  v217 = -1 << *(v215 + 32);
  if (-v217 < 64)
  {
    v218 = ~(-1 << -v217);
  }

  else
  {
    v218 = -1;
  }

  v598 = v218 & *(v215 + 64);
  swift_beginAccess();
  v219 = 0;
  v220 = (63 - v217) >> 6;
  v569 = v220;
  v571 = v216;
  v221 = v598;
  if (v598)
  {
    while (2)
    {
      v222 = v219;
LABEL_52:
      v599 = *(v1 + 752);
      v224 = *(v1 + 496);
      v223 = *(v1 + 504);
      v225 = *(v1 + 480);
      v226 = *(v1 + 488);
      v228 = *(v1 + 464);
      v227 = *(v1 + 472);
      v229 = *(v601 + 400);
      v230 = *(v601 + 392);
      v575 = v222;
      v581 = *(v229 + 16);
      v581(v227, *(v573 + 56) + *(v229 + 72) * (__clz(__rbit64(v221)) | (v222 << 6)), v230);
      (*(v229 + 32))(v228, v227, v230);
      v1 = v601;
      SFAirDropSend.Transfer.presenter.getter();
      (*(v226 + 104))(v224, v599, v225);
      LOBYTE(v228) = static SFAirDropClient.Identifier.== infix(_:_:)();
      v231 = *(v226 + 8);
      v600 = (v221 - 1) & v221;
      v231(v224, v225);
      v231(v223, v225);
      v232 = *(v601 + 464);
      if (v228)
      {
        v234 = *(v601 + 352);
        v233 = *(v601 + 360);
        v235 = *(v601 + 344);
        v237 = *(v601 + 240);
        v236 = *(v601 + 248);
        v238 = *(v601 + 232);
        SFAirDropSend.Transfer.sendRequest.getter();
        SFAirDropSend.Request.type.getter();
        (*(v237 + 8))(v236, v238);
        v239 = SFAirDrop.TransferType.isOnlyExchange.getter();
        (*(v234 + 8))(v233, v235);
        if (v239)
        {
          v581(*(v601 + 432), *(v601 + 464), *(v601 + 392));
          v240 = Logger.logObject.getter();
          v241 = static os_log_type_t.default.getter();
          v242 = os_log_type_enabled(v240, v241);
          v243 = *(v601 + 464);
          v244 = *(v601 + 432);
          v246 = *(v601 + 392);
          v245 = *(v601 + 400);
          if (v242)
          {
            v582 = *(v601 + 464);
            v247 = *(v601 + 336);
            v248 = *(v601 + 328);
            v249 = *(v601 + 320);
            v250 = swift_slowAlloc();
            v565 = swift_slowAlloc();
            v602[0] = v565;
            *v250 = 136315138;
            v559 = v241;
            SFAirDropSend.Transfer.id.getter();
            sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
            v251 = dispatch thunk of CustomStringConvertible.description.getter();
            v253 = v252;
            (*(v248 + 8))(v247, v249);
            v1 = v601;
            v254 = *(v245 + 8);
            v254(v244, v246);
            v255 = sub_10003E81C(v251, v253, v602);
            v253, v256, v257, v258, v259, v260, v261, v262;
            *(v250 + 4) = v255;
            _os_log_impl(&_mh_execute_header, v240, v559, "AirDropTransferSessionController transfers skipped, transfer is of type onlyExchange, not monitoring on AirDropUI {id: %s}", v250, 0xCu);
            sub_100007920(v565);

            v254(v582, v246);
          }

          else
          {

            v347 = *(v245 + 8);
            v347(v244, v246);
            v347(v243, v246);
          }

          break;
        }

        v296 = *(v601 + 328);
        v295 = *(v601 + 336);
        v297 = *(v601 + 320);
        v298 = *(*(v601 + 200) + *(v601 + 720));

        SFAirDropSend.Transfer.id.getter();
        v299 = SFAirDrop.TransferIdentifier.stringValue.getter();
        v301 = v300;
        v567 = *(v296 + 8);
        v567(v295, v297);
        *(v601 + 152) = v299;
        *(v601 + 160) = v301;
        v302 = swift_task_alloc();
        *(v302 + 16) = v525;
        LOBYTE(v295) = sub_1000882CC(sub_1000482CC, v302, v298);
        v298, v303, v304, v305, v306, v307, v308, v309;
        v301, v310, v311, v312, v313, v314, v315, v316;

        v317 = *(v601 + 464);
        if (v295)
        {
          v581(*(v601 + 440), *(v601 + 464), *(v601 + 392));
          v318 = Logger.logObject.getter();
          v319 = static os_log_type_t.default.getter();
          v320 = os_log_type_enabled(v318, v319);
          v321 = *(v601 + 464);
          v322 = *(v601 + 440);
          v323 = *(v601 + 392);
          v324 = *(v601 + 400);
          if (v320)
          {
            v584 = *(v601 + 392);
            v325 = *(v601 + 336);
            v594 = *(v601 + 464);
            v326 = *(v601 + 320);
            v327 = swift_slowAlloc();
            v328 = swift_slowAlloc();
            v602[0] = v328;
            *v327 = 136315138;
            v560 = v319;
            SFAirDropSend.Transfer.id.getter();
            sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
            v329 = dispatch thunk of CustomStringConvertible.description.getter();
            v331 = v330;
            v567(v325, v326);
            v332 = *(v324 + 8);
            v332(v322, v584);
            v333 = sub_10003E81C(v329, v331, v602);
            v331, v334, v335, v336, v337, v338, v339, v340;
            *(v327 + 4) = v333;
            _os_log_impl(&_mh_execute_header, v318, v560, "AirDropTransferSessionController transfer update for %s skipped, this transfer is being ended to save live activity space", v327, 0xCu);
            sub_100007920(v328);

            v332(v594, v584);
          }

          else
          {

            v382 = *(v324 + 8);
            v382(v322, v323);
            v382(v321, v323);
          }

          v219 = v575;
LABEL_75:
          v220 = v569;
          v216 = v571;
          v221 = v600;
          if (!v600)
          {
            goto LABEL_49;
          }

          continue;
        }

        v348 = *(v601 + 448);
        v349 = *(v601 + 392);
        v581(*(v601 + 456), *(v601 + 464), v349);
        v581(v348, v317, v349);
        v350 = Logger.logObject.getter();
        v351 = static os_log_type_t.debug.getter();
        v352 = os_log_type_enabled(v350, v351);
        v353 = *(v601 + 448);
        v354 = *(v601 + 456);
        v355 = *(v601 + 392);
        v356 = *(v601 + 400);
        if (v352)
        {
          v531 = *(v601 + 448);
          v357 = *(v601 + 336);
          v358 = *(v601 + 320);
          buf = *(v601 + 224);
          v539 = *(v601 + 208);
          v545 = *(v601 + 216);
          v359 = swift_slowAlloc();
          v602[0] = swift_slowAlloc();
          *v359 = 136315394;
          v549 = v350;
          SFAirDropSend.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
          v360 = dispatch thunk of CustomStringConvertible.description.getter();
          v535 = v351;
          v362 = v361;
          v567(v357, v358);
          v561 = *(v356 + 8);
          v561(v354, v355);
          v363 = sub_10003E81C(v360, v362, v602);
          v362, v364, v365, v366, v367, v368, v369, v370;
          *(v359 + 4) = v363;
          *(v359 + 12) = 2080;
          SFAirDropSend.Transfer.state.getter();
          sub_100047F70(&qword_100173E38, &type metadata accessor for SFAirDropSend.Transfer.State, &protocol conformance descriptor for SFAirDropSend.Transfer.State);
          v371 = dispatch thunk of CustomStringConvertible.description.getter();
          v373 = v372;
          (v545[1].isa)(buf, v539);
          v561(v531, v355);
          v374 = sub_10003E81C(v371, v373, v602);
          v373, v375, v376, v377, v378, v379, v380, v381;
          *(v359 + 14) = v374;
          _os_log_impl(&_mh_execute_header, v549, v535, "AirDropTransferSessionController send transfer {id: %s, state: %s}", v359, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v383 = *(v356 + 8);
          v383(v353, v355);
          v561 = v383;
          v383(v354, v355);
        }

        sub_10002F48C(*(v601 + 464), 0, 0);
        v384 = *(v601 + 464);
        v385 = *(v601 + 392);
        if (v588)
        {
          v581(*(v601 + 408), v384, v385);
          swift_errorRetain();
          v386 = Logger.logObject.getter();
          v387 = static os_log_type_t.error.getter();

          v388 = os_log_type_enabled(v386, v387);
          v389 = *(v601 + 464);
          v390 = *(v601 + 408);
          v391 = *(v601 + 392);
          if (v388)
          {
            v590 = *(v601 + 464);
            v392 = *(v601 + 336);
            v393 = *(v601 + 320);
            v394 = *(v601 + 392);
            v395 = swift_slowAlloc();
            v550 = swift_slowAlloc();
            v585 = swift_slowAlloc();
            v602[0] = v585;
            *v395 = 136315394;
            SFAirDropSend.Transfer.id.getter();
            sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
            v396 = dispatch thunk of CustomStringConvertible.description.getter();
            v540 = v387;
            v398 = v397;
            v567(v392, v393);
            v561(v390, v394);
            v399 = sub_10003E81C(v396, v398, v602);
            v398, v400, v401, v402, v403, v404, v405, v406;
            *(v395 + 4) = v399;
            *(v395 + 12) = 2112;
            swift_errorRetain();
            v407 = _swift_stdlib_bridgeErrorToNSError();
            *(v395 + 14) = v407;
            v550->isa = v407;
            _os_log_impl(&_mh_execute_header, v386, v540, "Failed to update transfer %s: %@", v395, 0x16u);
            sub_1000159AC(v550, &qword_100172EB0, &qword_100119410);

            sub_100007920(v585);

            v561(v590, v394);
          }

          else
          {

            v561(v390, v391);
            v561(v389, v391);
          }
        }

        else
        {
          v409 = *(v601 + 280);
          v408 = *(v601 + 288);
          v410 = *(v601 + 272);
          v411 = *(v601 + 224);
          v412 = *(v601 + 216);
          v413 = *(v601 + 208);
          v586 = *(v601 + 264);
          SFAirDropSend.Transfer.state.getter();
          sub_10007D528(v411);
          (*(v412 + 8))(v411, v413);
          v1 = v601;
          SFAirDropSend.Transfer.displayPriority.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          (*(v410 + 16))(v409, v408, v586);
          static Published.subscript.setter();
          (*(v410 + 8))(v408, v586);
          v561(v384, v385);
        }

        v588 = 0;
      }

      else
      {
        v263 = *(v601 + 416);
        v264 = *(v601 + 392);
        v581(*(v601 + 424), *(v601 + 464), v264);
        v581(v263, v232, v264);
        v265 = Logger.logObject.getter();
        v266 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v265, v266))
        {
          v267 = *(v601 + 504);
          v566 = *(v601 + 464);
          v268 = *(v601 + 424);
          v538 = *(v601 + 416);
          v544 = *(v601 + 480);
          v583 = *(v601 + 400);
          v534 = *(v601 + 392);
          logc = v265;
          v269 = *(v601 + 336);
          v270 = *(v601 + 328);
          v271 = *(v601 + 320);
          v272 = swift_slowAlloc();
          v602[0] = swift_slowAlloc();
          *v272 = 136315394;
          v548 = v266;
          SFAirDropSend.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
          v273 = dispatch thunk of CustomStringConvertible.description.getter();
          v275 = v274;
          (*(v270 + 8))(v269, v271);
          v1 = v601;
          v530 = *(v583 + 8);
          v530(v268, v534);
          v276 = sub_10003E81C(v273, v275, v602);
          v275, v277, v278, v279, v280, v281, v282, v283;
          *(v272 + 4) = v276;
          *(v272 + 12) = 2080;
          SFAirDropSend.Transfer.presenter.getter();
          sub_100047F70(&qword_100173E30, &type metadata accessor for SFAirDropClient.Identifier, &protocol conformance descriptor for SFAirDropClient.Identifier);
          v284 = dispatch thunk of CustomStringConvertible.description.getter();
          v286 = v285;
          v231(v267, v544);
          v530(v538, v534);
          v287 = sub_10003E81C(v284, v286, v602);
          v286, v288, v289, v290, v291, v292, v293, v294;
          *(v272 + 14) = v287;
          _os_log_impl(&_mh_execute_header, logc, v548, "AirDropTransferSessionController transfer update for %s skipped, presenter is %s", v272, 0x16u);
          swift_arrayDestroy();

          v530(v566, v534);
        }

        else
        {
          v341 = *(v601 + 464);
          v343 = *(v601 + 416);
          v342 = *(v601 + 424);
          v345 = *(v601 + 392);
          v344 = *(v601 + 400);

          v346 = *(v344 + 8);
          v346(v343, v345);
          v346(v342, v345);
          v346(v341, v345);
        }
      }

      break;
    }

    v219 = v575;
    goto LABEL_75;
  }

LABEL_49:
  while (1)
  {
    v222 = v219 + 1;
    if (__OFADD__(v219, 1))
    {
      break;
    }

    if (v222 >= v220)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_100088378(*(v1 + 192));
      v415 = v414;
      v416 = SFAirDrop.Transfers.receiveTransfers.getter();
      v417 = v588;
      sub_100026950(v416);
      v419 = v418;
      v416, v420, v421, v422, v423, v424, v425, v426;
      v427 = sub_1000A613C(v419, v415);
      v419, v428, v429, v430, v431, v432, v433, v434;
      v435 = SFAirDrop.Transfers.sendTransfers.getter();
      sub_100026950(v435);
      v437 = v436;
      v435, v438, v439, v440, v441, v442, v443, v444;
      v445 = sub_1000A613C(v437, v427);
      v437, v446, v447, v448, v449, v450, v451, v452;
      v453 = v445 + 56;
      v454 = -1;
      v455 = -1 << v445[32];
      if (-v455 < 64)
      {
        v454 = ~(-1 << -v455);
      }

      v456 = v454 & *(v445 + 7);
      v457 = (63 - v455) >> 6;
      v595 = v445;

      v458 = 0;
      v587 = v457;
      v591 = v445 + 56;
      while (v456)
      {
LABEL_86:
        v467 = (*(v595 + 6) + ((v458 << 10) | (16 * __clz(__rbit64(v456)))));
        v468 = *v467;
        v469 = v467[1];
        swift_bridgeObjectRetain_n();
        v470 = Logger.logObject.getter();
        v471 = static os_log_type_t.default.getter();
        v469, v472, v473, v474, v475, v476, v477, v478;
        if (os_log_type_enabled(v470, v471))
        {
          v479 = swift_slowAlloc();
          v480 = v469;
          v481 = swift_slowAlloc();
          v602[0] = v481;
          *v479 = 136315138;
          *(v479 + 4) = sub_10003E81C(v468, v480, v602);
          _os_log_impl(&_mh_execute_header, v470, v471, "AirDropTransferSessionController transfers removing %s", v479, 0xCu);
          sub_100007920(v481);
          v469 = v480;
        }

        v482 = *(v1 + 720);
        v483 = *(v1 + 200);
        sub_10002FCDC(v468, v469);
        swift_beginAccess();

        sub_100044D28((v483 + v482), v468, v469);
        if (v417)
        {

          return swift_endAccess();
        }

        v492 = v484;
        v493 = *(v1 + 720);
        v494 = *(v1 + 200);
        v469, v485, v486, v487, v488, v489, v490, v491;
        v495 = *(v494 + v493);
        v496 = *v495->connection;
        if (v496 < v492)
        {
          goto LABEL_115;
        }

        if (v492 < 0)
        {
          goto LABEL_116;
        }

        if (__OFADD__(v496, v492 - v496))
        {
          goto LABEL_117;
        }

        v497 = *(v1 + 720);
        v498 = *(v1 + 200);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v498 + v497) = v495;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v492 > *v495->airdropClient >> 1)
        {
          v504 = *(v601 + 720);
          v505 = *(v601 + 200);
          if (v496 <= v492)
          {
            v506 = v492;
          }

          else
          {
            v506 = v496;
          }

          v495 = sub_1000A59C4(isUniquelyReferenced_nonNull_native, v506, 1, v495, v500, v501, v502, v503);
          *(v505 + v504) = v495;
        }

        swift_arrayDestroy();
        v1 = v601;
        if (v496 != v492)
        {
          memmove(&v495->airDropClient[16 * v492], &v495->airDropClient[16 * v496], 16 * (*v495->connection - v496));
          v507 = *v495->connection;
          v508 = __OFADD__(v507, v492 - v496);
          v509 = v507 - (v496 - v492);
          if (v508)
          {
            __break(1u);
LABEL_102:

            sub_100028718();
            sub_1000077C8(&unk_100173E40, &qword_10011A6F8);
            v510 = static Activity.activities.getter();
            if (v510 >> 62)
            {
              v523 = v510;
              v518 = _CocoaArrayWrapper.endIndex.getter();
              v510 = v523;
            }

            else
            {
              v518 = *((v510 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v510, v511, v512, v513, v514, v515, v516, v517;
            if (v518 > 8)
            {
              sub_10003036C();
            }

            (*(*(v1 + 608) + 8))(*(v1 + 616), *(v1 + 600));
            *(v1 + 728) = static MainActor.shared.getter();
            v519 = sub_1000077C8(&qword_100173E18, &qword_10011A6A8);
            v520 = sub_1000199C8(&qword_100173E20, &qword_100173E18, &qword_10011A6A8, &protocol conformance descriptor for SFXPCResilientAsyncSequence<A>.AsyncIterator);
            v521 = swift_task_alloc();
            *(v1 + 736) = v521;
            *v521 = v1;
            v521[1] = sub_10002981C;
            v522 = *(v1 + 624);

            return dispatch thunk of AsyncIteratorProtocol.next()(v522, v519, v520);
          }

          *v495->connection = v509;
        }

        v456 &= v456 - 1;
        *(*(v601 + 200) + *(v601 + 720)) = v495;
        swift_endAccess();
        v469, v459, v460, v461, v462, v463, v464, v465;
        v417 = 0;
        v457 = v587;
        v453 = v591;
      }

      while (1)
      {
        v466 = v458 + 1;
        if (__OFADD__(v458, 1))
        {
          goto LABEL_114;
        }

        if (v466 >= v457)
        {
          goto LABEL_102;
        }

        v456 = *&v453[8 * v466];
        ++v458;
        if (v456)
        {
          v458 = v466;
          goto LABEL_86;
        }
      }
    }

    v221 = *(v216 + 8 * v222);
    ++v219;
    if (v221)
    {
      goto LABEL_52;
    }
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  swift_once();
LABEL_3:
  v5 = type metadata accessor for Logger();
  sub_100007D20(v5, qword_100173A40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "AirDropTransferSessionController transfers ENDED", v8, 2u);
  }

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_10002C458()
{
  v0[23] = v0[93];
  swift_willThrowTypedImpl();

  v1 = v0[85];
  v2 = v0[84];

  return _swift_task_switch(sub_10002C4E0, v2, v1);
}

uint64_t sub_10002C4E0()
{
  v20 = v0;

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100173A40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    v9 = sub_10003E81C(v6, v7, &v19);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "AirDropTransferSessionController transfers FAILED {error: %s}", v4, 0xCu);
    sub_100007920(v5);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10002C844()
{
  v20 = v0;

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100007D20(v1, qword_100173A40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    v9 = sub_10003E81C(v6, v7, &v19);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "AirDropTransferSessionController transfers FAILED {error: %s}", v4, 0xCu);
    sub_100007920(v5);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10002CBA0(uint64_t a1, uint64_t a2, _TtC9AirDropUI33AirDropTransferSessionsController *a3)
{
  v335 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v334 = *(v335 - 8);
  __chkstk_darwin(v335);
  v332 = &v323[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v333 = &v323[-v8];
  v331 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v330 = *(v331 - 8);
  __chkstk_darwin(v331);
  v329 = &v323[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v338 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v337 = *(v338 - 8);
  __chkstk_darwin(v338);
  v336 = &v323[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000077C8(&unk_100176550, &qword_10011E720);
  __chkstk_darwin(v11 - 8);
  v340 = &v323[-v12];
  v343 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v342 = *(v343 - 8);
  __chkstk_darwin(v343);
  v326 = &v323[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v325 = v13;
  __chkstk_darwin(v14);
  v339 = &v323[-v15];
  v16 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v16 - 8);
  v341 = &v323[-v17];
  v388 = type metadata accessor for SFAirDropSend.Transfer.State();
  v387 = *(v388 - 8);
  __chkstk_darwin(v388);
  v344 = &v323[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v384 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v367 = *(v384 - 1);
  __chkstk_darwin(v384);
  v366 = &v323[-v19];
  v365 = sub_1000077C8(&qword_100173D48, &unk_10011A530);
  v364 = *(v365 - 8);
  __chkstk_darwin(v365);
  v363 = &v323[-v20];
  v362 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  __chkstk_darwin(v362);
  v358 = &v323[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v357 = &v323[-v23];
  v386 = sub_1000077C8(&qword_100173D58, &unk_10011A540);
  v385 = *(v386 - 1);
  __chkstk_darwin(v386);
  v356 = &v323[-v24];
  v355 = sub_1000077C8(&qword_100173D60, &qword_10011D3A0);
  v354 = *(v355 - 8);
  __chkstk_darwin(v355);
  v353 = &v323[-v25];
  v380 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v397 = *(v380 - 8);
  __chkstk_darwin(v380);
  v361 = &v323[-v26];
  v392 = type metadata accessor for SFAirDrop.DisplayPriority();
  v391 = *(v392 - 8);
  __chkstk_darwin(v392);
  v371 = &v323[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v370 = &v323[-v29];
  __chkstk_darwin(v30);
  v399 = &v323[-v31];
  v390 = type metadata accessor for DeviceLockState();
  v389 = *(v390 - 8);
  __chkstk_darwin(v390);
  v369 = &v323[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v368 = &v323[-v34];
  __chkstk_darwin(v35);
  v398 = &v323[-v36];
  v383 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v383);
  v372 = &v323[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  v382 = &v323[-v39];
  __chkstk_darwin(v40);
  v381 = &v323[-v41];
  __chkstk_darwin(v42);
  v402 = &v323[-v43];
  v408 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v400 = *(v408 - 1);
  __chkstk_darwin(v408);
  v373 = &v323[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v45);
  v360 = &v323[-v46];
  __chkstk_darwin(v47);
  v359 = &v323[-v48];
  __chkstk_darwin(v49);
  v51 = &v323[-v50];
  __chkstk_darwin(v52);
  v54 = &v323[-v53];
  __chkstk_darwin(v55);
  v401 = &v323[-v56];
  v375 = type metadata accessor for SFAirDropReceive.AskRequest();
  v374 = *(v375 - 8);
  __chkstk_darwin(v375);
  v328 = &v323[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v327 = v57;
  __chkstk_darwin(v58);
  v396 = &v323[-v59];
  v60 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v63 = &v323[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    v395 = a2;
    v64 = a3;
  }

  else
  {
    SFAirDropReceive.Transfer.id.getter();
    v395 = SFAirDrop.TransferIdentifier.stringValue.getter();
    v65 = v63;
    v64 = v66;
    (*(v61 + 8))(v65, v60);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v74 = v406;
  if (!*v406->connection || (v75 = sub_10003EEC0(v395, v64), (v67 & 1) == 0))
  {
    v74, v67, v68, v69, v70, v71, v72, v73;
    SFAirDropReceive.Transfer.askRequest.getter();
    SFAirDropReceive.AskRequest.contactIdentifier.getter();
    v376 = v3;
    if (v85)
    {
      v85, v85, v86, v87, v88, v89, v90, v91;
    }

    else if ((SFAirDropReceive.AskRequest.senderIsMe.getter() & 1) == 0)
    {
      v324 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
LABEL_11:

      v351 = SFAirDropReceive.AskRequest.senderIsMe.getter();
      v350 = SFAirDropReceive.AskRequest.senderCompositeName.getter();
      v349 = v92;
      SFAirDropReceive.Transfer.state.getter();
      v345 = *(v387 + 56);
      v93 = v388;
      v345(v402, 1, 1, v388);
      SFAirDropReceive.Transfer.state.getter();
      v378 = COERCE_DOUBLE(SFAirDropReceive.Transfer.State.currentProgressCount.getter());
      v94 = v400 + 8;
      v95 = *(v400 + 8);
      v96 = v408;
      v95(v54);
      v393 = v95;
      v394 = v94;
      SFAirDropReceive.Transfer.state.getter();
      v377 = COERCE_DOUBLE(SFAirDropReceive.Transfer.State.totalProgressCount.getter());
      (v95)(v51, v96);
      dispatch thunk of SFLockStateMonitor.lockState.getter();
      SFAirDropReceive.Transfer.displayPriority.getter();
      v352 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
      type metadata accessor for AirDropTransferSession(0);
      v97 = v64;
      v98 = swift_allocObject();
      Date.init()();
      v379 = v97;
      v99 = (v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
      v347 = v99;
      *v99 = 0;
      v99[1] = 0;
      v100 = (v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
      v348 = (v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
      *v100 = 0;
      v100[1] = 0;
      v101 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
      v102 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v102 - 8) + 56))(v98 + v101, 1, 1, v102);
      v103 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
      LOBYTE(v406) = 0;
      v104 = v361;
      Published.init(initialValue:)();
      v105 = *(v397 + 4);
      v397 += 32;
      v346 = v105;
      v105(v98 + v103, v104, v380);
      v106 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
      v406 = 0;
      v407 = 0;
      sub_1000077C8(&qword_100172AA0, &unk_1001187F0);
      v107 = v353;
      Published.init(initialValue:)();
      (*(v354 + 32))(v98 + v106, v107, v355);
      v108 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
      v355 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
      v109 = v381;
      v345(v381, 1, 1, v93);
      v110 = v109;
      sub_100007BA4(v109, v382, &qword_100172FD0, &qword_10011A210);
      v111 = v356;
      Published.init(initialValue:)();
      sub_1000159AC(v110, &qword_100172FD0, &qword_10011A210);
      (*(v385 + 32))(v98 + v108, v111, v386);
      v112 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
      v113 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
      v114 = v357;
      (*(*(v113 - 8) + 56))(v357, 1, 1, v113);
      sub_100007BA4(v114, v358, &qword_100173D50, &unk_10011D120);
      v115 = v363;
      Published.init(initialValue:)();
      sub_1000159AC(v114, &qword_100173D50, &unk_10011D120);
      (*(v364 + 32))(v98 + v112, v115, v365);
      v116 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
      v406 = 0;
      v117 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
      v118 = v366;
      v365 = v117;
      Published.init(initialValue:)();
      v119 = v367[4];
      v120 = v384;
      (v119)(v98 + v116, v118, v384);
      v367 = v119;
      v121 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage;
      v406 = 0;
      Published.init(initialValue:)();
      (v119)(v98 + v121, v118, v120);
      v122 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage;
      LOBYTE(v406) = 0;
      Published.init(initialValue:)();
      v123 = v380;
      v124 = v346;
      v346(v98 + v122, v104, v380);
      v125 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage;
      LOBYTE(v406) = 1;
      Published.init(initialValue:)();
      v124(v98 + v125, v104, v123);
      v77 = v98;
      v126 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage;
      v406 = 0;
      Published.init(initialValue:)();
      v127 = v384;
      v128 = v367;
      (v367)(v98 + v126, v118, v384);
      v129 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage;
      v406 = 0;
      Published.init(initialValue:)();
      v128(v98 + v129, v118, v127);
      *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions) = &_swiftEmptyArrayStorage;
      *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs) = &_swiftEmptyArrayStorage;
      v380 = v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate;
      *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate + 8) = 0;
      swift_unknownObjectWeakInit();
      *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate + 8) = 0;
      swift_unknownObjectWeakInit();
      *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = 0;
      v130 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
      v131 = type metadata accessor for Date();
      v132 = *(*(v131 - 8) + 56);
      v132(v98 + v130, 1, 1, v131);
      v132(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime, 1, 1, v131);
      v133 = (v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v134 = v379;
      *v133 = v395;
      v133[1] = v134;
      *(v98 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) = v351 & 1;
      v135 = v347;
      v136 = v347[1];
      v137 = v349;
      *v347 = v350;
      v135[1] = v137;
      v136, v138, v139, v140, v141, v142, v143, v144;
      v145 = v348;
      v146 = v348[1];
      *v348 = 0;
      v145[1] = 0;
      v146, v147, v148, v149, v150, v151, v152, v153;
      v154 = v400 + 16;
      v155 = *(v400 + 16);
      v156 = v359;
      v157 = v408;
      (v155)(v359, v401, v408);
      swift_beginAccess();
      v400 = v154;
      v384 = v155;
      (v155)(v360, v156, v157);
      Published.init(initialValue:)();
      v393(v156, v157);
      swift_endAccess();
      v158 = v381;
      sub_100007BA4(v402, v381, &qword_100172FD0, &qword_10011A210);
      v159 = v355;
      swift_beginAccess();
      (*(v385 + 8))(v98 + v159, v386);
      sub_100007BA4(v158, v382, &qword_100172FD0, &qword_10011A210);
      Published.init(initialValue:)();
      sub_1000159AC(v158, &qword_100172FD0, &qword_10011A210);
      swift_endAccess();
      swift_beginAccess();
      v404 = v378;
      Published.init(initialValue:)();
      swift_endAccess();
      swift_beginAccess();
      v404 = v377;
      Published.init(initialValue:)();
      swift_endAccess();
      swift_beginAccess();
      LOBYTE(v404) = v352 & 1;
      Published.init(initialValue:)();
      swift_endAccess();
      v160 = v389;
      v161 = *(v389 + 16);
      v162 = v368;
      v163 = v390;
      v161(v368, v398, v390);
      swift_beginAccess();
      v161(v369, v162, v163);
      Published.init(initialValue:)();
      v165 = *(v160 + 8);
      v164 = v160 + 8;
      v397 = v165;
      (v165)(v162, v163);
      swift_endAccess();
      v166 = [objc_opt_self() mainScreen];
      [v166 bounds];
      v168 = v167;
      v170 = v169;
      v172 = v171;
      v174 = v173;

      v409.origin.x = v168;
      v409.origin.y = v170;
      v409.size.width = v172;
      v409.size.height = v174;
      v175 = CGRectGetWidth(v409) + -24.0;
      swift_beginAccess();
      v404 = v175;
      Published.init(initialValue:)();
      swift_endAccess();
      v176 = v391;
      v177 = *(v391 + 16);
      v178 = v370;
      v179 = v392;
      v177(v370, v399, v392);
      swift_beginAccess();
      v177(v371, v178, v179);
      Published.init(initialValue:)();
      v181 = *(v176 + 8);
      v180 = v176 + 8;
      v386 = v181;
      (v181)(v178, v179);
      swift_endAccess();
      *(v380 + 8) = &off_10015DCA8;
      swift_unknownObjectWeakAssign();
      *(v77 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) = SBUIIsSystemApertureEnabled();
      v182 = COERCE_DOUBLE([objc_opt_self() progressWithTotalUnitCount:*&v377]);
      swift_beginAccess();
      v404 = v182;
      sub_1000165C4(0, &qword_100173D70, NSProgress_ptr);
      Published.init(initialValue:)();
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v183 = v387;

      v184 = v406;
      [(AirDropTransferSessionsController *)v406 setCompletedUnitCount:*&v378];

      v185 = v388;
      v186 = v372;
      sub_100007BA4(v402, v372, &qword_100172FD0, &qword_10011A210);
      if ((*(v183 + 48))(v186, 1, v185) == 1)
      {
        sub_1000159AC(v186, &qword_100172FD0, &qword_10011A210);
        v187 = v401;
        sub_10007C0CC(v401);
      }

      else
      {
        v188 = v344;
        (*(v183 + 32))(v344, v186, v185);
        sub_10007DABC(v188);
        (*(v183 + 8))(v188, v185);
        v187 = v401;
      }

      v189 = v373;
      v190 = v408;
      if (qword_1001721E0 != -1)
      {
        swift_once();
      }

      v191 = type metadata accessor for Logger();
      sub_100007D20(v191, qword_100175480);
      (v384)(v189, v187, v190);

      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v406 = swift_slowAlloc();
        *v194 = 136315650;
        v196 = *(v77 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
        v195 = *(v77 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

        v197 = sub_10003E81C(v196, v195, &v406);
        v389 = v164;
        v391 = v180;
        v198 = v197;
        v195, v199, v200, v201, v202, v203, v204, v205;
        *(v194 + 4) = v198;
        *(v194 + 12) = 2048;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v206 = v404;
        [*&v404 fractionCompleted];
        v208 = v207;

        *(v194 + 14) = v208;
        *(v194 + 22) = 2080;
        sub_100047F70(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
        v209 = v408;
        v210 = dispatch thunk of CustomStringConvertible.description.getter();
        v212 = v211;
        v393(v189, v209);
        v213 = sub_10003E81C(v210, v212, &v406);
        v212, v214, v215, v216, v217, v218, v219, v220;
        *(v194 + 24) = v213;
        _os_log_impl(&_mh_execute_header, v192, v193, "Transfer session created for transfer %s with completed: %f, transferState: %s", v194, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v393(v189, v190);
      }

      v221 = v376;
      v222 = v396;
      v223 = sub_10007B6A8(0, 0);
      if (v221)
      {
        v379, v224, v225, v226, v227, v228, v229, v230;

        (v386)(v399, v392);
        (v397)(v398, v390);
        sub_1000159AC(v402, &qword_100172FD0, &qword_10011A210);
        v393(v401, v408);
        (*(v374 + 8))(v222, v375);
        return v77;
      }

      v231 = v223;
      v376 = 0;
      (v386)(v399, v392);
      (v397)(v398, v390);
      sub_1000159AC(v402, &qword_100172FD0, &qword_10011A210);
      v393(v401, v408);
      *(v77 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = v231;

      v232 = SFAirDropReceive.AskRequest.previewImage.getter();
      if (v232)
      {
        v233 = v232;
        v234 = [objc_allocWithZone(UIImage) initWithCGImage:v232];
        swift_getKeyPath();
        swift_getKeyPath();
        v406 = v234;

        v235 = v234;
        static Published.subscript.setter();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v406) = v324 & 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v236 = v379;

      v237 = static Published.subscript.modify();
      v239 = v238;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v404 = *v239;
      *v239 = 0x8000000000000000;
      v241 = v395;
      sub_1000413E4(v77, v395, v236, isUniquelyReferenced_nonNull_native);
      v236, v242, v243, v244, v245, v246, v247, v248;
      *v239 = v404;
      v237(&v406, 0);

      v249 = SFAirDropReceive.AskRequest.contactIdentifier.getter();
      v251 = v341;
      if (v250)
      {
        v252 = v249;
        v253 = v250;
        v254 = type metadata accessor for TaskPriority();
        (*(*(v254 - 8) + 56))(v251, 1, 1, v254);
        v255 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v256 = swift_allocObject();
        v256[2] = v255;
        v256[3] = v252;
        v256[4] = v253;
        v256[5] = v241;
        v256[6] = v236;

        static Task<>.noThrow(priority:operation:)();

        sub_1000159AC(v251, &qword_100172F50, &qword_10011E500);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v406)
      {

        v257 = v395;
        v258 = v379;
      }

      else
      {
        v259 = type metadata accessor for TaskPriority();
        (*(*(v259 - 8) + 56))(v251, 1, 1, v259);
        v260 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v261 = v374;
        v262 = v328;
        v263 = v375;
        (*(v374 + 16))(v328, v396, v375);
        v264 = (*(v261 + 80) + 24) & ~*(v261 + 80);
        v265 = (v327 + v264 + 7) & 0xFFFFFFFFFFFFFFF8;
        v266 = swift_allocObject();
        *(v266 + 16) = v260;
        (*(v261 + 32))(v266 + v264, v262, v263);
        v267 = (v266 + v265);
        v257 = v395;
        v258 = v379;
        *v267 = v395;
        v267[1] = v258;

        static Task<>.noThrow(priority:operation:)();

        sub_1000159AC(v251, &qword_100172F50, &qword_10011E500);
      }

      v268 = type metadata accessor for TaskPriority();
      v269 = *(v268 - 8);
      v408 = *(v269 + 56);
      v402 = (v269 + 56);
      (v408)(v251, 1, 1, v268);
      v270 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v271 = swift_allocObject();
      v271[2] = v270;
      v271[3] = v257;
      v271[4] = v258;
      static Task<>.noThrow(priority:operation:)();

      sub_1000159AC(v251, &qword_100172F50, &qword_10011E500);
      v272 = v340;
      sub_100097458(v340);
      v273 = v342;
      v274 = v343;
      if ((*(v342 + 48))(v272, 1, v343) == 1)
      {
        (*(v374 + 8))(v396, v375);
        sub_1000159AC(v272, &unk_100176550, &qword_10011E720);
        return v77;
      }

      v275 = v339;
      v401 = *(v273 + 32);
      (v401)(v339, v272, v274);
      v276 = v329;
      SFAirDrop.NearbySharingInteraction.state.getter();
      v277 = v330;
      v278 = v331;
      if ((*(v330 + 88))(v276, v331) != enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
      {
        (*(v273 + 8))(v275, v274);
        (*(v374 + 8))(v396, v375);
        (*(v277 + 8))(v276, v278);
        return v77;
      }

      (*(v277 + 96))(v276, v278);
      (*(v337 + 32))(v336, v276, v338);
      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      (*(v334 + 104))(v332, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:), v335);
      sub_100047F70(&unk_100173E70, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v279 = v407;
      v280 = v405;
      if (v406 == *&v404 && v407 == v405)
      {
        v281 = *(v334 + 8);
        v282 = v335;
        v281(v332, v335);
        v281(v333, v282);
        v279, v283, v284, v285, v286, v287, v288, v289;
        v280, v290, v291, v292, v293, v294, v295, v296;
      }

      else
      {
        v297 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v298 = *(v334 + 8);
        v299 = v335;
        v298(v332, v335);
        v298(v333, v299);
        v279, v300, v301, v302, v303, v304, v305, v306;
        v280, v307, v308, v309, v310, v311, v312, v313;
        if ((v297 & 1) == 0)
        {
          (*(v337 + 8))(v336, v338);
          (*(v342 + 8))(v339, v343);
          goto LABEL_39;
        }
      }

      v314 = v341;
      (v408)(v341, 1, 1, v268);
      v315 = v342;
      v316 = v326;
      v317 = v343;
      (*(v342 + 16))(v326, v339, v343);
      v318 = (*(v315 + 80) + 40) & ~*(v315 + 80);
      v319 = swift_allocObject();
      v319[2] = 0;
      v319[3] = 0;
      v320 = v403;
      v319[4] = v403;
      (v401)(v319 + v318, v316, v317);
      v321 = v320;
      sub_1000E1D28(0, 0, v314, &unk_10011A7F8, v319);

      (*(v337 + 8))(v336, v338);
      (*(v315 + 8))(v339, v317);
LABEL_39:
      (*(v374 + 8))(v396, v375);
      return v77;
    }

    v324 = 1;
    goto LABEL_11;
  }

  v76 = v75;
  v64, v67, v68, v69, v70, v71, v72, v73;
  v77 = *(*v74->nearbySharingInteractionCoordinator + 8 * v76);

  v74, v78, v79, v80, v81, v82, v83, v84;
  return v77;
}

void *sub_10002F48C(char *a1, uint64_t a2, _TtC9AirDropUI33AirDropTransferSessionsController *a3)
{
  v6 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v6 - 8);
  v110 = &v107 - v7;
  v8 = type metadata accessor for SFAirDropSend.Request();
  v111 = *(v8 - 8);
  v112 = v8;
  __chkstk_darwin(v8);
  v108 = v9;
  v109 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v116 = &v107 - v11;
  v12 = type metadata accessor for SFAirDrop.DisplayPriority();
  __chkstk_darwin(v12 - 8);
  v120 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DeviceLockState();
  __chkstk_darwin(v14 - 8);
  v119 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for SFAirDropSend.Transfer.State();
  v16 = *(v117 - 8);
  __chkstk_darwin(v117);
  v18 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v107 - v20;
  __chkstk_darwin(v22);
  v118 = &v107 - v23;
  v24 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v28 = a2;
    v29 = a1;
    v122 = v28;
    v30 = a3;
  }

  else
  {
    v29 = a1;
    SFAirDropSend.Transfer.id.getter();
    v122 = SFAirDrop.TransferIdentifier.stringValue.getter();
    v32 = v31;
    (*(v25 + 8))(v27, v24);
    v30 = v32;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v40 = v124;
  if (*v124->connection && (v41 = sub_10003EEC0(v122, v30), (v33 & 1) != 0))
  {
    v42 = v41;
    v30, v33, v34, v35, v36, v37, v38, v39;
    v43 = *(*v40->nearbySharingInteractionCoordinator + 8 * v42);

    v40, v44, v45, v46, v47, v48, v49, v50;
  }

  else
  {
    v40, v33, v34, v35, v36, v37, v38, v39;

    v51 = SFAirDropSend.Transfer.receiverName.getter();
    v114 = v52;
    v115 = v51;
    v53 = v118;
    SFAirDropSend.Transfer.state.getter();
    SFAirDropSend.Transfer.state.getter();
    v113 = SFAirDropSend.Transfer.State.currentProgressCount.getter();
    v54 = v30;
    v55 = *(v16 + 8);
    v56 = v117;
    v55(v21, v117);
    SFAirDropSend.Transfer.state.getter();
    v43 = SFAirDropSend.Transfer.State.totalProgressCount.getter();
    v55(v18, v56);
    v57 = v123;
    v58 = v119;
    dispatch thunk of SFLockStateMonitor.lockState.getter();
    v59 = v120;
    SFAirDropSend.Transfer.displayPriority.getter();
    v60 = v57;
    v61 = v121;
    v62 = v122;
    v63 = sub_100085BD4(v122, v54, v115, v114, v53, v113, v43, v58, v59, v60, &off_10015DCA8);
    if (v61)
    {
      v54, v64, v65, v66, v67, v68, v69, v70;
    }

    else
    {
      v43 = v63;
      v121 = 0;
      v71 = v116;
      SFAirDropSend.Transfer.sendRequest.getter();
      v72 = sub_1000449C8();
      v119 = *(v111 + 8);
      v120 = (v111 + 8);
      (v119)(v71, v112);
      swift_getKeyPath();
      swift_getKeyPath();
      v124 = v72;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v124) = 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();

      v73 = static Published.subscript.modify();
      v118 = v29;
      v74 = v73;
      v75 = v54;
      v77 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125 = *v77;
      *v77 = 0x8000000000000000;
      v122 = v62;
      sub_1000413E4(v43, v62, v75, isUniquelyReferenced_nonNull_native);
      v123 = v75;
      v75, v79, v80, v81, v82, v83, v84, v85;
      *v77 = v125;
      v74(&v124, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v93 = v124;
      if (v124)
      {
        v123, v86, v87, v88, v89, v90, v91, v92;
      }

      else
      {
        v94 = v116;
        SFAirDropSend.Transfer.sendRequest.getter();
        v95 = type metadata accessor for TaskPriority();
        v96 = v110;
        (*(*(v95 - 8) + 56))(v110, 1, 1, v95);
        v97 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v98 = v111;
        v99 = v112;
        v100 = v109;
        (*(v111 + 16))(v109, v94, v112);
        v101 = (*(v98 + 80) + 24) & ~*(v98 + 80);
        v102 = (v108 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
        v103 = swift_allocObject();
        *(v103 + 16) = v97;
        (*(v98 + 32))(v103 + v101, v100, v99);
        v104 = (v103 + v102);
        v105 = v123;
        *v104 = v122;
        v104[1] = v105;
        static Task<>.noThrow(priority:operation:)();

        sub_1000159AC(v96, &qword_100172F50, &qword_10011E500);
        (v119)(v116, v99);
      }
    }
  }

  return v43;
}

void sub_10002FCDC(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2)
{
  v3 = v2;
  v6 = sub_1000077C8(&unk_100173C70, &qword_10011A2E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v62 - v7;
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v66 = *(v9 - 8);
  __chkstk_darwin(v9);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v62 - v12;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100007D20(v14, qword_100173A40);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  a2, v17, v18, v19, v20, v21, v22, v23;
  v24 = os_log_type_enabled(v15, v16);
  v65 = v13;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v67[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10003E81C(a1, a2, v67);
    _os_log_impl(&_mh_execute_header, v15, v16, "End session for transfer identifier: %s.", v25, 0xCu);
    sub_100007920(v26);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34 = v67[0];
  if (*(v67[0] + 16) && (v35 = sub_10003EEC0(a1, a2), (v27 & 1) != 0))
  {
    v63 = v9;
    v36 = *(*v34->nearbySharingInteractionCoordinator + 8 * v35);

    v34, v37, v38, v39, v40, v41, v42, v43;
    v62 = v36;
    sub_100080300();
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = static Published.subscript.modify();
    sub_10003F508(a1, a2);

    v44(v67, 0);

    SFAirDrop.TransferIdentifier.init(_:)();
    v56 = v66;
    v57 = v63;
    (*(v66 + 56))(v8, 0, 1, v63);
    v58 = v65;
    (*(v56 + 32))(v65, v8, v57);
    v59 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_interventionTasks;
    swift_beginAccess();
    if (*(*(v3 + v59) + 16) && (sub_10003EF38(v58), (v60 & 1) != 0))
    {
      swift_endAccess();

      Task.cancel()();
    }

    else
    {
      swift_endAccess();
    }

    v61 = v64;
    (*(v56 + 16))(v64, v58, v57);
    swift_beginAccess();
    sub_100027008(0, v61);
    swift_endAccess();

    (*(v56 + 8))(v58, v57);
  }

  else
  {
    v34, v27, v28, v29, v30, v31, v32, v33;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    a2, v47, v48, v49, v50, v51, v52, v53;
    if (os_log_type_enabled(v45, v46))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v67[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_10003E81C(a1, a2, v67);
      _os_log_impl(&_mh_execute_header, v45, v46, "AirDrop transfer session not active for ID: %s, returning", v54, 0xCu);
      sub_100007920(v55);
    }
  }
}

void sub_10003036C()
{
  v0 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  __chkstk_darwin(v0 - 8);
  v186 = v181 - v1;
  v185 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v200 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = v181 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = v2;
  __chkstk_darwin(v3);
  v197 = v181 - v4;
  v5 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v199 = *(v5 - 8);
  __chkstk_darwin(v5);
  v196 = v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v195 = v181 - v8;
  __chkstk_darwin(v9);
  KeyPath = (v181 - v10);
  v202 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v191 = *(v202 - 8);
  __chkstk_darwin(v202);
  v13 = v181 - v12;
  v14 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v181 - v16;
  v18 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  __chkstk_darwin(v18 - 8);
  v213 = v181 - v19;
  v218 = type metadata accessor for Date();
  v20 = *(v218 - 8);
  __chkstk_darwin(v218);
  v206 = v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v205 = (v181 - v23);
  v217 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v24 = *(v217 - 8);
  __chkstk_darwin(v217);
  v214 = v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v181 - v27;
  if (qword_100172148 != -1)
  {
LABEL_85:
    swift_once();
  }

  v211 = v17;
  v212 = v14;
  v201 = v13;
  v194 = KeyPath;
  v188 = v5;
  v29 = type metadata accessor for Logger();
  sub_100007D20(v29, qword_100173A40);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "We have too many live activities. Transitioning oldest transfers in .waitingForOpenResponse state to completed successfully", v32, 2u);
  }

  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  static Published.subscript.getter();

  v33 = 0;
  v34 = v220;
  v5 = v220 + 64;
  v35 = *(v220 + 64);
  v219 = &_swiftEmptyArrayStorage;
  v36 = 1 << *(v220 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v17 = v37 & v35;
  v14 = (v36 + 63) >> 6;
  v216 = (v24 + 88);
  v215 = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
  v209 = (v24 + 96);
  v210 = (v24 + 8);
  v190 = v15;
  v207 = (v20 + 6);
  v208 = (v15 + 8);
  v203 = (v20 + 4);
  v193 = (v20 + 1);
  v204 = v220;
  v192 = v28;
  while (v17)
  {
    v15 = v33;
LABEL_13:
    v38 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(v34[7] + ((v15 << 9) | (8 * v38)));
    swift_getKeyPath();
    v13 = swift_getKeyPath();

    static Published.subscript.getter();

    KeyPath = v217;
    v39 = (*v216)(v28, v217);
    if (v39 == v215)
    {
      (*v209)(v28, KeyPath);
      v40 = sub_1000077C8(&qword_100173078, &unk_100118F60);
      *&v28[v40[12]], v41, v42, v43, v44, v45, v46, v47;
      *&v28[v40[16]], v48, v49, v50, v51, v52, v53, v54;
      (*v208)(&v28[v40[20]], v212);
      v55 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v55 - 8) + 8))(v28, v55);
      v56 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
      swift_beginAccess();
      v57 = v24 + v56;
      KeyPath = v213;
      v13 = &unk_100174FA0;
      v20 = &qword_10011A700;
      sub_100007BA4(v57, v213, &unk_100174FA0, &qword_10011A700);
      if ((*v207)(KeyPath, 1, v218) == 1)
      {

        sub_1000159AC(KeyPath, &unk_100174FA0, &qword_10011A700);
        v33 = v15;
      }

      else
      {
        v58 = v218;
        v20 = v205;
        (*v203)(v205, KeyPath, v218);
        v13 = v206;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v60 = v59;
        KeyPath = *v193;
        (*v193)(v13, v58);
        (KeyPath)(v20, v58);
        if (v60 <= 7.0)
        {
        }

        else
        {
          KeyPath = &v219;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v13 = *(v219 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v33 = v15;
        v34 = v204;
        v28 = v192;
      }
    }

    else
    {

      (*v210)(v28, KeyPath);
      v33 = v15;
    }
  }

  while (1)
  {
    v15 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_85;
    }

    if (v15 >= v14)
    {
      break;
    }

    v17 = *(v5 + 8 * v15);
    ++v33;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  v219 = sub_1000446CC(v61);
  sub_100042A20(&v219);

  v62 = v219;
  v63 = v219 < 0 || (v219 & 0x4000000000000000) != 0;
  if (v63)
  {
    v179 = _CocoaArrayWrapper.endIndex.getter();
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);

      __break(1u);
      return;
    }

    if (v179 >= 5)
    {
      v180 = 5;
    }

    else
    {
      v180 = v179;
    }

    if (v179 >= 0)
    {
      i = v180;
    }

    else
    {
      i = 5;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= i)
    {
      goto LABEL_28;
    }

LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v64 = *(v219 + 16);
  if (v64 >= 5)
  {
    i = 5;
  }

  else
  {
    i = *(v219 + 16);
  }

  if (v64 < i)
  {
    goto LABEL_94;
  }

LABEL_28:
  if ((v62 & 0xC000000000000001) != 0 && i)
  {
    type metadata accessor for AirDropTransferSession(0);

    _ArrayBuffer._typeCheckSlowPath(_:)(0);
    if (i != 1)
    {
      _ArrayBuffer._typeCheckSlowPath(_:)(1);
      if (i != 2)
      {
        _ArrayBuffer._typeCheckSlowPath(_:)(2);
        if (i != 3)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(3);
          if (i != 4)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(4);
            if (i != 5)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(5);
              _ArrayBuffer._typeCheckSlowPath(_:)(6);
            }
          }
        }
      }
    }
  }

  else
  {
  }

  if (v63)
  {
    v66 = _CocoaArrayWrapper.subscript.getter();
    v24 = v67;
    v69 = v68;
    i = v70;

    v62 = v66;
    if ((i & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v69 = 0;
    v24 = v62 + 32;
    i = (2 * i) | 1;
    if ((i & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v72 = swift_dynamicCastClass();
  if (!v72)
  {
    swift_unknownObjectRelease();
    v72 = &_swiftEmptyArrayStorage;
  }

  v73 = *v72->connection;

  if (__OFSUB__(i >> 1, v69))
  {
    goto LABEL_98;
  }

  if (v73 != (i >> 1) - v69)
  {
    goto LABEL_99;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (i)
  {
    goto LABEL_49;
  }

  for (i = &_swiftEmptyArrayStorage; ; i = v71)
  {
    swift_unknownObjectRelease();
LABEL_49:
    LODWORD(v20) = i < 0 || (i & 0x4000000000000000) != 0;
    if (v20 == 1)
    {
LABEL_95:
      v69 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v69 = *(i + 16);
    }

    v74 = &_swiftEmptyArrayStorage;
    v218 = i;
    if (v69)
    {
      v219 = &_swiftEmptyArrayStorage;
      v62 = &v219;
      sub_10000E474(0, v69 & ~(v69 >> 63), 0);
      if (v69 < 0)
      {
        __break(1u);
        goto LABEL_97;
      }

      v75 = 0;
      v74 = v219;
      v76 = i & 0xC000000000000001;
      do
      {
        if (v76)
        {
          v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v77 = *(i + 8 * v75 + 32);
        }

        v78 = *(v77 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
        v79 = *(v77 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

        v219 = v74;
        v81 = *v74->connection;
        v80 = *v74->airdropClient;
        if (v81 >= v80 >> 1)
        {
          sub_10000E474((v80 > 1), v81 + 1, 1);
          v74 = v219;
        }

        ++v75;
        *v74->connection = v81 + 1;
        v82 = v74 + 16 * v81;
        *(v82 + 4) = v78;
        *(v82 + 5) = v79;
        i = v218;
      }

      while (v69 != v75);
    }

    v83 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersBeingEnded;
    v62 = v198;
    swift_beginAccess();
    v84 = *(v62 + v83);
    *(v62 + v83) = v74;
    v84, v85, v86, v87, v88, v89, v90, v91;
    if (v20)
    {
      v92 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v92 = *(i + 16);
    }

    v24 = v188;
    v93 = v202;
    v94 = v201;
    if (!v92)
    {
      goto LABEL_83;
    }

    if (v92 >= 1)
    {
      break;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_unknownObjectRelease_n();
LABEL_41:
    sub_10004293C(v62, v24, v69, i);
  }

  v95 = 0;
  v213 = i & 0xC000000000000001;
  v207 = (v190 + 32);
  v206 = (v191 + 88);
  LODWORD(v205) = enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:);
  v204 = (v191 + 8);
  v203 = (v191 + 96);
  v193 = (v199 + 16);
  v192 = (v199 + 32);
  v191 = v199 + 88;
  LODWORD(v190) = enum case for SFAirDrop.AcceptAction.single<A>(_:);
  v189 = (v199 + 8);
  v182 = (v199 + 96);
  v181[2] = v200 + 32;
  v181[1] = v200 + 16;
  v181[0] = v200 + 8;
  do
  {
    if (v213)
    {
      v96 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v96 = *(i + 8 * v95 + 32);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v97 = v214;
    static Published.subscript.getter();

    v98 = v217;
    v99 = (*v216)(v97, v217);
    if (v99 == v215)
    {
      (*v209)(v97, v98);
      v100 = sub_1000077C8(&qword_100173078, &unk_100118F60);
      *&v97[v100[12]], v101, v102, v103, v104, v105, v106, v107;
      *&v97[v100[16]], v108, v109, v110, v111, v112, v113, v114;
      v115 = &v97[v100[20]];
      v116 = v211;
      v117 = v212;
      (*v207)(v211, v115, v212);
      v118 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v118 - 8) + 8))(v97, v118);
      SFAirDrop.PermissionRequest.style.getter();
      v119 = (*v206)(v94, v93);
      if (v119 == v205)
      {
        (*v203)(v94, v93);
        v94[1], v120, v121, v122, v123, v124, v125, v126;
        v94[3], v127, v128, v129, v130, v131, v132, v133;
        v134 = v94[4];
        v135 = *(sub_1000077C8(&qword_100173CC0, qword_10011D010) + 80);
        v136 = type metadata accessor for SFAirDrop.DeclineAction();
        (*(*(v136 - 8) + 8))(v94 + v135, v136);
        if (*v134->connection)
        {
          v137 = v199;
          v138 = *(v199 + 16);
          v139 = v195;
          v138(v195, v134 + ((*(v199 + 80) + 32) & ~*(v199 + 80)), v24);
          v134, v140, v141, v142, v143, v144, v145, v146;
          v147 = v194;
          (*(v137 + 32))(v194, v139, v24);
          v148 = v196;
          v138(v196, v147, v24);
          v149 = (*(v137 + 88))(v148, v24);
          if (v149 == v190)
          {
            (*v182)(v148, v24);
            v150 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
            v187 = *(v200 + 32);
            v151 = v200;
            v152 = v197;
            v153 = v185;
            v187(v197, v148, v185);
            v154 = type metadata accessor for UUID();
            (*(*(v154 - 8) + 8))(&v148[v150], v154);
            v155 = type metadata accessor for TaskPriority();
            v156 = v186;
            (*(*(v155 - 8) + 56))(v186, 1, 1, v155);
            v157 = v151;
            v158 = *(v151 + 16);
            v159 = v183;
            v158(v183, v152, v153);
            v160 = (*(v157 + 80) + 16) & ~*(v157 + 80);
            v161 = swift_allocObject();
            v187((v161 + v160), v159, v153);
            static Task<>.noThrow(priority:operation:)();

            sub_1000159AC(v156, &qword_100172F50, &qword_10011E500);
            v162 = *(v96 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
            v163 = *(v96 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

            sub_10002FCDC(v162, v163);

            v163, v164, v165, v166, v167, v168, v169, v170;
            v24 = v188;
            (*(v200 + 8))(v197, v153);
            (*v189)(v147, v24);
            (*v208)(v211, v212);
          }

          else
          {

            v178 = *v189;
            (*v189)(v147, v24);
            (*v208)(v211, v212);
            v178(v148, v24);
          }

          v93 = v202;
          v94 = v201;
          i = v218;
        }

        else
        {
          (*v208)(v211, v212);
          v134, v171, v172, v173, v174, v175, v176, v177;

          i = v218;
        }
      }

      else
      {
        (*v208)(v116, v117);

        (*v204)(v94, v93);
      }
    }

    else
    {

      (*v210)(v97, v98);
    }

    ++v95;
  }

  while (v92 != v95);
LABEL_83:
}

id sub_100031838(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AirDropTransferSessionsController(uint64_t a1)
{
  result = qword_100173AE0;
  if (!qword_100173AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031A48(uint64_t a1)
{
  sub_100031B98(319, &qword_100173AF0, &qword_100173AF8, &qword_10011A080);
  if (v1 <= 0x3F)
  {
    sub_100031B98(319, &qword_100173B00, &qword_100173B08, &unk_10011A088);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100031B98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100007CCC(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100031BEC@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100031C2C(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() interfaceWithIdentifier:v4];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropUIServer];
  [v5 setServer:v7];

  v8 = [v6 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropUIClient];
  [v5 setClient:v8];

  [v5 setClientMessagingExpectation:0];
  sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  [a1 setTargetQueue:v9];

  v10 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v10];

  [a1 setInterface:v5];
  [a1 setInterfaceTarget:a2];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_100047590;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100059234;
  v19 = &unk_10015DF70;
  v12 = _Block_copy(&v16);

  [a1 setActivationHandler:v12];
  _Block_release(v12);
  v20 = sub_100032190;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100059234;
  v19 = &unk_10015DF98;
  v13 = _Block_copy(&v16);
  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v20 = sub_1000475D0;
  v21 = v14;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100059234;
  v19 = &unk_10015DFE8;
  v15 = _Block_copy(&v16);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
}

void sub_100031FB0(void *a1, uint64_t a2)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "AirDropTransferSessionsController: connection activated from client!", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a1 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v10[0] = v11;
    v10[1] = v12;
    if (*(&v12 + 1))
    {
      sub_1000077C8(&qword_100173D88, &qword_10011A648);
      if (swift_dynamicCast())
      {
        *&v8[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient] = v9;

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      sub_1000159AC(v10, &qword_1001746C0, &qword_10011A510);
    }
  }
}

id sub_100032190(void *a1)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirDropTransferSessionsController: connection interrupted, reconnecting", v5, 2u);
  }

  return [a1 activate];
}

uint64_t sub_100032288(uint64_t a1, uint64_t a2)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirDropTransferSessionsController: connection invalidated", v5, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = *&Strong[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_connection];
  *&Strong[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_connection] = 0;

  v8 = swift_unknownObjectUnownedLoadStrong();
  *&v8[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient] = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_100032448()
{
  v1[2] = v0;
  v2 = sub_1000077C8(&qword_100173D80, &qword_100120890);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100032514, 0, 0);
}

uint64_t sub_100032514()
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_100007D20(v1, qword_100173A40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "waiting for userInteractionmodels START", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersMonitorTask);
  v0[7] = v6;

  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  *v7 = v0;
  v7[1] = sub_1000326B4;
  v9 = v0[5];
  v10 = v0[3];

  return Task.value.getter(v9, v6, v10, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000326B4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    v3 = sub_1000328EC;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_10003280C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003280C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "waiting for userInteractionmodels END", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1000328EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100032AC4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100032B6C;

  return sub_100032448();
}

uint64_t sub_100032B6C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id sub_100032CF0(uint64_t a1, _TtC9AirDropUI33AirDropTransferSessionsController *a2, _TtC9AirDropUI33AirDropTransferSessionsController *a3, void *a4, void *a5, void (*a6)(char *, void *, uint64_t), unsigned __int8 *a7, _TtC9AirDropUI33AirDropTransferSessionsController *a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12)
{
  v13 = v12;
  v258 = a8;
  v287 = a7;
  v286 = a6;
  v296 = a3;
  v303 = type metadata accessor for SFAirDropSend.Transfer.State();
  v302 = *(v303 - 8);
  __chkstk_darwin(v303);
  v260 = &v257 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v282 = *(v283 - 8);
  __chkstk_darwin(v283);
  v272 = &v257 - v19;
  v281 = sub_1000077C8(&qword_100173D48, &unk_10011A530);
  v280 = *(v281 - 8);
  __chkstk_darwin(v281);
  v279 = &v257 - v20;
  v275 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  __chkstk_darwin(v275);
  v273 = &v257 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v271 = &v257 - v23;
  v301 = sub_1000077C8(&qword_100173D58, &unk_10011A540);
  v300 = *(v301 - 1);
  __chkstk_darwin(v301);
  v270 = &v257 - v24;
  v269 = sub_1000077C8(&qword_100173D60, &qword_10011D3A0);
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v267 = &v257 - v25;
  v278 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v305 = *(v278 - 8);
  __chkstk_darwin(v278);
  v274 = &v257 - v26;
  v310 = type metadata accessor for SFAirDrop.DisplayPriority();
  v313 = *(v310 - 8);
  __chkstk_darwin(v310);
  v289 = &v257 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v288 = &v257 - v29;
  __chkstk_darwin(v30);
  v308 = &v257 - v31;
  v304 = type metadata accessor for DeviceLockState();
  v309 = *(v304 - 8);
  __chkstk_darwin(v304);
  v285 = &v257 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v284 = &v257 - v34;
  __chkstk_darwin(v35);
  v307 = &v257 - v36;
  v299 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  __chkstk_darwin(v299);
  v291 = &v257 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v298 = &v257 - v39;
  __chkstk_darwin(v40);
  v297 = &v257 - v41;
  __chkstk_darwin(v42);
  v312 = &v257 - v43;
  v306 = type metadata accessor for SFAirDropReceive.Transfer.State();
  listener = *(v306 - 8);
  __chkstk_darwin(v306);
  v292 = &v257 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v277 = &v257 - v46;
  __chkstk_darwin(v47);
  v276 = &v257 - v48;
  __chkstk_darwin(v49);
  v311 = (&v257 - v50);
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v293 = a12;
  v290 = type metadata accessor for Logger();
  v51 = sub_100007D20(v290, qword_100173A40);

  v52 = a5;
  v259 = v51;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  a2, v55, v56, v57, v58, v59, v60, v61;
  if (os_log_type_enabled(v53, v54))
  {
    v62 = a4;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v315 = v65;
    *v63 = 136315394;
    *(v63 + 4) = sub_10003E81C(a1, a2, &v315);
    *(v63 + 12) = 2112;
    *(v63 + 14) = v52;
    *v64 = v52;
    v66 = v52;
    _os_log_impl(&_mh_execute_header, v53, v54, "Start session with identifier: %s, itemCount: %@", v63, 0x16u);
    sub_1000159AC(v64, &qword_100172EB0, &qword_100119410);

    sub_100007920(v65);

    a4 = v62;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v74 = v315;
  if (*v315->connection)
  {
    v75 = a1;
    sub_10003EEC0(a1, a2);
    v77 = v76;
    v74, v76, v78, v79, v80, v81, v82, v83;
    if (v77)
    {

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      a2, v86, v87, v88, v89, v90, v91, v92;
      if (os_log_type_enabled(v84, v85))
      {
        v93 = swift_slowAlloc();
        v94 = a4;
        v95 = swift_slowAlloc();
        v315 = v95;
        *v93 = 136315138;
        *(v93 + 4) = sub_10003E81C(v75, a2, &v315);
        _os_log_impl(&_mh_execute_header, v84, v85, "Tried to start a session with an existing transfer: %s. Ending existing session, and starting new one", v93, 0xCu);
        sub_100007920(v95);
        a4 = v94;
      }

      sub_10002FCDC(v75, a2);
    }
  }

  else
  {
    v315, v67, v68, v69, v70, v71, v72, v73;
    v75 = a1;
  }

  v295 = v75;
  v96 = [a4 unsignedIntegerValue];
  v264 = [(AirDropTransferSessionsController *)v296 BOOLValue];
  *v311 = v96;
  (listener[1].super.isa)();
  v296 = a2;
  v97 = *(v302 + 56);
  v98 = v303;
  v97(v312, 1, 1, v303);
  v266 = COERCE_DOUBLE([v52 integerValue]);
  dispatch thunk of SFLockStateMonitor.lockState.getter();
  (*(v313 + 104))(v308, enum case for SFAirDrop.DisplayPriority.normal(_:), v310);
  v265 = [v293 BOOLValue];
  type metadata accessor for AirDropTransferSession(0);
  v99 = swift_allocObject();
  Date.init()();
  v100 = (v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v262 = (v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  *v100 = 0;
  v100[1] = 0;
  v294 = v13;
  v101 = (v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v263 = v101;
  *v101 = 0;
  v101[1] = 0;
  v102 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
  v103 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v103 - 8) + 56))(v99 + v102, 1, 1, v103);
  v104 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
  LOBYTE(v315) = 0;
  v105 = v274;
  Published.init(initialValue:)();
  v261 = *(v305 + 4);
  v305 += 32;
  v106 = v278;
  v261(v99 + v104, v105, v278);
  v107 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
  v315 = 0;
  v316 = 0;
  sub_1000077C8(&qword_100172AA0, &unk_1001187F0);
  v108 = v267;
  Published.init(initialValue:)();
  (*(v268 + 32))(v99 + v107, v108, v269);
  v109 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v269 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v110 = v297;
  v97(v297, 1, 1, v98);
  sub_100007BA4(v110, v298, &qword_100172FD0, &qword_10011A210);
  v111 = v270;
  Published.init(initialValue:)();
  sub_1000159AC(v110, &qword_100172FD0, &qword_10011A210);
  (*(v300 + 32))(v99 + v109, v111, v301);
  v112 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
  v113 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v114 = v271;
  (*(*(v113 - 8) + 56))(v271, 1, 1, v113);
  sub_100007BA4(v114, v273, &qword_100173D50, &unk_10011D120);
  v115 = v279;
  Published.init(initialValue:)();
  sub_1000159AC(v114, &qword_100173D50, &unk_10011D120);
  (*(v280 + 32))(v99 + v112, v115, v281);
  v116 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
  v315 = 0;
  v117 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
  v118 = v272;
  v281 = v117;
  Published.init(initialValue:)();
  v119 = *(v282 + 4);
  v120 = v283;
  v119(v99 + v116, v118, v283);
  v282 = v119;
  v121 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage;
  v315 = 0;
  Published.init(initialValue:)();
  v119(v99 + v121, v118, v120);
  v122 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage;
  LOBYTE(v315) = 0;
  Published.init(initialValue:)();
  v123 = v261;
  v261(v99 + v122, v105, v106);
  v124 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage;
  LOBYTE(v315) = 1;
  Published.init(initialValue:)();
  v123(v99 + v124, v105, v106);
  v125 = v99;
  v126 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage;
  v315 = 0;
  Published.init(initialValue:)();
  v127 = v282;
  v282(v99 + v126, v118, v120);
  v128 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage;
  v315 = 0;
  Published.init(initialValue:)();
  v127(v99 + v128, v118, v120);
  *(v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions) = &_swiftEmptyArrayStorage;
  *(v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs) = &_swiftEmptyArrayStorage;
  v129 = v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate;
  *(v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = 0;
  v130 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  v131 = type metadata accessor for Date();
  v132 = *(*(v131 - 8) + 56);
  v132(v99 + v130, 1, 1, v131);
  v132(v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime, 1, 1, v131);
  v133 = (v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v134 = v296;
  *v133 = v295;
  v133[1] = v134;
  *(v99 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) = v264;
  v135 = v262;
  v136 = v262[1];
  v137 = v287;
  *v262 = v286;
  v135[1] = v137;

  v136, v138, v139, v140, v141, v142, v143, v144;
  v145 = v263;
  v146 = v263[1];
  *v263 = 0;
  v145[1] = 0;

  v146, v147, v148, v149, v150, v151, v152, v153;
  v154 = listener;
  connection = listener->connection;
  v156 = *listener->connection;
  v157 = v276;
  v158 = v306;
  v156(v276, v311, v306);
  swift_beginAccess();
  v287 = connection;
  v286 = v156;
  v156(v277, v157, v158);
  Published.init(initialValue:)();
  v159 = *v154->listener;
  listener = v154->listener;
  v305 = v159;
  (v159)(v157, v158);
  swift_endAccess();
  v160 = v297;
  sub_100007BA4(v312, v297, &qword_100172FD0, &qword_10011A210);
  v161 = v269;
  swift_beginAccess();
  (*(v300 + 8))(v125 + v161, v301);
  sub_100007BA4(v160, v298, &qword_100172FD0, &qword_10011A210);
  Published.init(initialValue:)();
  sub_1000159AC(v160, &qword_100172FD0, &qword_10011A210);
  swift_endAccess();
  swift_beginAccess();
  v317 = 0.0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v162 = v266;
  v317 = v266;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v317) = v265;
  Published.init(initialValue:)();
  swift_endAccess();
  v163 = v309;
  v164 = *(v309 + 16);
  v165 = v284;
  v166 = v304;
  v164(v284, v307, v304);
  swift_beginAccess();
  v164(v285, v165, v166);
  Published.init(initialValue:)();
  v167 = *(v163 + 8);
  v309 = v163 + 8;
  v301 = v167;
  v167(v165, v166);
  swift_endAccess();
  v168 = [objc_opt_self() mainScreen];
  [v168 bounds];
  v170 = v169;
  v172 = v171;
  v174 = v173;
  v176 = v175;

  v318.origin.x = v170;
  v318.origin.y = v172;
  v318.size.width = v174;
  v318.size.height = v176;
  v177 = CGRectGetWidth(v318) + -24.0;
  swift_beginAccess();
  v317 = v177;
  Published.init(initialValue:)();
  swift_endAccess();
  v178 = v313;
  v179 = *(v313 + 16);
  v180 = v288;
  v181 = v310;
  v179(v288, v308, v310);
  swift_beginAccess();
  v179(v289, v180, v181);
  Published.init(initialValue:)();
  v182 = *(v178 + 8);
  v313 = v178 + 8;
  v182(v180, v181);
  swift_endAccess();
  *(v129 + 8) = &off_10015DCA8;
  swift_unknownObjectWeakAssign();
  *(v125 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) = SBUIIsSystemApertureEnabled();
  v183 = COERCE_DOUBLE([objc_opt_self() progressWithTotalUnitCount:*&v162]);
  swift_beginAccess();
  v317 = v183;
  sub_1000165C4(0, &qword_100173D70, NSProgress_ptr);
  v184 = v302;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v185 = v303;

  v186 = v315;
  [(AirDropTransferSessionsController *)v315 setCompletedUnitCount:0];

  v187 = v291;
  sub_100007BA4(v312, v291, &qword_100172FD0, &qword_10011A210);
  if ((*(v184 + 48))(v187, 1, v185) == 1)
  {
    sub_1000159AC(v187, &qword_100172FD0, &qword_10011A210);
    v188 = v311;
    sub_10007C0CC(v311);
  }

  else
  {
    v189 = v260;
    (*(v184 + 32))(v260, v187, v185);
    sub_10007DABC(v189);
    (*(v184 + 8))(v189, v185);
    v188 = v311;
  }

  v190 = v292;
  v191 = v306;
  if (qword_1001721E0 != -1)
  {
    swift_once();
  }

  sub_100007D20(v290, qword_100175480);
  v286(v190, v188, v191);

  v192 = Logger.logObject.getter();
  v193 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v192, v193))
  {
    v194 = swift_slowAlloc();
    v315 = swift_slowAlloc();
    *v194 = 136315650;
    v195 = *(v125 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v196 = *(v125 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v197 = sub_10003E81C(v195, v196, &v315);
    v196, v198, v199, v200, v201, v202, v203, v204;
    *(v194 + 4) = v197;
    *(v194 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v205 = v317;
    [*&v317 fractionCompleted];
    v207 = v206;

    *(v194 + 14) = v207;
    *(v194 + 22) = 2080;
    sub_100047F70(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State, &protocol conformance descriptor for SFAirDropReceive.Transfer.State);
    v208 = dispatch thunk of CustomStringConvertible.description.getter();
    v210 = v209;
    v211 = v190;
    v212 = v305;
    (v305)(v211, v191);
    v213 = sub_10003E81C(v208, v210, &v315);
    v210, v214, v215, v216, v217, v218, v219, v220;
    *(v194 + 24) = v213;
    _os_log_impl(&_mh_execute_header, v192, v193, "Transfer session created for transfer %s with completed: %f, transferState: %s", v194, 0x20u);
    swift_arrayDestroy();

    v188 = v311;
  }

  else
  {

    v221 = v190;
    v212 = v305;
    (v305)(v221, v191);
  }

  v222 = sub_10007B6A8(0, 0);
  v182(v308, v310);
  v301(v307, v304);
  sub_1000159AC(v312, &qword_100172FD0, &qword_10011A210);
  v212(v188, v191);
  *(v125 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = v222;

  swift_getKeyPath();
  swift_getKeyPath();
  v223 = v296;

  v224 = static Published.subscript.modify();
  v226 = v225;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v317 = *v226;
  *v226 = 0x8000000000000000;
  sub_1000413E4(v125, v295, v223, isUniquelyReferenced_nonNull_native);
  v223, v228, v229, v230, v231, v232, v233, v234;
  *v226 = v317;
  v224(&v315, 0);

  if (a9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v315 = v258;
    v316 = a9;

    static Published.subscript.setter();
  }

  if (a11 >> 60 == 15)
  {
    goto LABEL_28;
  }

  sub_1000156D8(a10, a11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v237 = sub_100003C74(isa);

  if (!v237)
  {
    v235 = sub_100015660(a10, a11);
    goto LABEL_28;
  }

  CGImageGetSizeAfterOrientation();
  v238 = Logger.logObject.getter();
  v239 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v238, v239))
  {
LABEL_26:

    v254 = [objc_allocWithZone(UIImage) initWithCGImage:v237];
    swift_getKeyPath();
    swift_getKeyPath();
    v315 = v254;

    v255 = v254;
    static Published.subscript.setter();
    sub_100015660(a10, a11);

LABEL_28:
    v256 = [v293 BOOLValue];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v315) = v256;
    return static Published.subscript.setter();
  }

  v240 = swift_slowAlloc();
  listener = swift_slowAlloc();
  v315 = listener;
  *v240 = 136315138;
  result = BSNSStringFromCGSize();
  if (result)
  {
    v242 = result;
    v243 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v245 = v244;

    v246 = sub_10003E81C(v243, v245, &v315);
    v245, v247, v248, v249, v250, v251, v252, v253;
    *(v240 + 4) = v246;
    _os_log_impl(&_mh_execute_header, v238, v239, "Transfer session contains preview image of size: %s", v240, 0xCu);
    sub_100007920(listener);

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_100034D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100034E14, 0, 0);
}

uint64_t sub_100034E14()
{
  SFAirDrop.NearbySharingInteraction.id.getter();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100034EC8;
  v2 = *(v0 + 48);

  return SFAirDropClient.endNearbySharingInteraction(_:)(v2);
}

uint64_t sub_100034EC8()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(v5 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100035070, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100035070()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000350D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[5] = a2;
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[11] = v8;
  v6[12] = v7;

  return _swift_task_switch(sub_100035174, v8, v7);
}

uint64_t sub_100035174()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_contactIconProvider);
    v0[14] = v2;
    v8 = (&async function pointer to dispatch thunk of SFUIContactIconProvider.icon(for:) + async function pointer to dispatch thunk of SFUIContactIconProvider.icon(for:));
    v2;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_1000352A4;
    v5 = v0[6];
    v4 = v0[7];

    return v8(v5, v4);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000352A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = *(v4 + 88);
    v6 = *(v4 + 96);
    v7 = sub_100035484;
  }

  else
  {

    *(v4 + 136) = a1;
    v5 = *(v4 + 88);
    v6 = *(v4 + 96);
    v7 = sub_1000353D4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000353D4()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[8];

  v5 = v1;
  sub_1000364F8(v1, v4, v3, &unk_10011A810, &unk_10011A838);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100035484()
{
  v24 = v0;
  v1 = v0[14];

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v2, v6, v7, v8, v9, v10, v11, v12;

  v13 = os_log_type_enabled(v4, v5);
  v14 = v0[13];
  if (v13)
  {
    v16 = v0[6];
    v15 = v0[7];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23 = v19;
    *v17 = 136315394;
    *(v17 + 4) = sub_10003E81C(v16, v15, &v23);
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v20;
    *v18 = v20;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get contact image for %s: %@", v17, 0x16u);
    sub_1000159AC(v18, &qword_100172EB0, &qword_100119410);

    sub_100007920(v19);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000356B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_100035750, v6, v5);
}

uint64_t sub_100035750()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_appCornerIconProvider);
    v0[12] = v2;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    v0[13] = v4;
    v2;
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_100035890;

    return SFUIPeopleSuggestionImageProvider.previewCornerIcon(for:)(v3, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100035890(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v12 = *(v4 + 72);
    v13 = *(v4 + 80);
    v14 = sub_100035A74;
  }

  else
  {
    v15 = *(v4 + 96);
    *(v4 + 104), v5, v6, v7, v8, v9, v10, v11;

    *(v4 + 128) = a1;
    v12 = *(v4 + 72);
    v13 = *(v4 + 80);
    v14 = sub_1000359C4;
  }

  return _swift_task_switch(v14, v12, v13);
}

uint64_t sub_1000359C4()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[6];

  v5 = v1;
  sub_1000364F8(v1, v4, v3, &unk_10011A858, &unk_10011A880);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100035A74()
{
  v1 = v0[12];
  v2 = v0[13];

  v2, v3, v4, v5, v6, v7, v8, v9;

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100007D20(v10, qword_100173A40);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[11];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failed to get image for AirDrop: %@", v15, 0xCu);
    sub_1000159AC(v16, &qword_100172EB0, &qword_100119410);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100035C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v6 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v8;
  v5[14] = v7;

  return _swift_task_switch(sub_100035D34, v8, v7);
}

uint64_t sub_100035D34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = SFAirDropReceive.AskRequest.files.getter();
    v10 = v2;
    v11 = *v2->connection;
    if (v11)
    {
      v12 = v0[10];
      sub_10000E494(0, v11, 0);
      v13 = *(v12 + 16);
      v12 += 16;
      v66 = v10;
      v14 = v10 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v67 = *(v12 + 56);
      v69 = v13;
      v15 = (v12 - 8);
      do
      {
        v16 = v0[11];
        v17 = v0[9];
        v69(v16, v14, v17);
        v18 = SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
        v20 = v19;
        (*v15)(v16, v17);
        v29 = *_swiftEmptyArrayStorage.connection;
        v28 = *_swiftEmptyArrayStorage.airdropClient;
        if (v29 >= v28 >> 1)
        {
          sub_10000E494((v28 > 1), v29 + 1, 1);
        }

        *_swiftEmptyArrayStorage.connection = v29 + 1;
        v30 = &_swiftEmptyArrayStorage + 16 * v29;
        *(v30 + 4) = v18;
        *(v30 + 5) = v20;
        v14 += v67;
        --v11;
      }

      while (v11);
      v66, v21, v22, v23, v24, v25, v26, v27;
    }

    else
    {
      v2, v3, v4, v5, v6, v7, v8, v9;
    }

    v0[16] = &_swiftEmptyArrayStorage;
    v33 = SFAirDropReceive.AskRequest.files.getter();
    v41 = v33;
    v42 = *v33->connection;
    if (v42)
    {
      v43 = v0[10];
      sub_10000E494(0, v42, 0);
      v44 = *(v43 + 16);
      v43 += 16;
      v65 = v41;
      v45 = v41 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
      v68 = *(v43 + 56);
      v70 = v44;
      v46 = (v43 - 8);
      do
      {
        v47 = v0[11];
        v48 = v0[9];
        v70(v47, v45, v48);
        v49 = SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter();
        v51 = v50;
        (*v46)(v47, v48);
        v60 = *_swiftEmptyArrayStorage.connection;
        v59 = *_swiftEmptyArrayStorage.airdropClient;
        if (v60 >= v59 >> 1)
        {
          sub_10000E494((v59 > 1), v60 + 1, 1);
        }

        *_swiftEmptyArrayStorage.connection = v60 + 1;
        v61 = &_swiftEmptyArrayStorage + 16 * v60;
        *(v61 + 4) = v49;
        *(v61 + 5) = v51;
        v45 += v68;
        --v42;
      }

      while (v42);
      v65, v52, v53, v54, v55, v56, v57, v58;
    }

    else
    {
      v33, v34, v35, v36, v37, v38, v39, v40;
    }

    v0[17] = &_swiftEmptyArrayStorage;
    type metadata accessor for SFAirDropUtilities();
    v62 = swift_task_alloc();
    v0[18] = v62;
    *v62 = v0;
    v62[1] = sub_1000360C4;
    v63.n128_u64[0] = 0x405A800000000000;
    v64.n128_u64[0] = 0x405A800000000000;

    return static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)(0, &_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage, v63, v64);
  }

  else
  {

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1000360C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v12 = *(v4 + 104);
    v13 = *(v4 + 112);
    v14 = sub_1000362B4;
  }

  else
  {
    v15 = *(v4 + 128);
    *(v4 + 136), v5, v6, v7, v8, v9, v10, v11;
    v15, v16, v17, v18, v19, v20, v21, v22;
    *(v4 + 160) = a1;
    v12 = *(v4 + 104);
    v13 = *(v4 + 112);
    v14 = sub_1000361FC;
  }

  return _swift_task_switch(v14, v12, v13);
}

uint64_t sub_1000361FC()
{
  v1 = v0[20];
  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v1;
  sub_1000364F8(v1, v4, v3, &unk_10011A780, &unk_10011A7A8);

  v6 = v0[1];

  return v6();
}