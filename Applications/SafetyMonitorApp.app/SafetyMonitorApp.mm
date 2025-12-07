id sub_100001C74(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SecureWindow();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100001D1C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1000020A8(a1);
  (*(*(*(v2 + qword_100019DF0) - 8) + 8))(a1);
  return v5;
}

void *sub_100001DE0(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100019DF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1, a2);
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

id sub_100001F18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SecureUIHostingController(0, *((swift_isaMask & *v4) + qword_100019DF0), *((swift_isaMask & *v4) + qword_100019DF0 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100001FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SecureUIHostingController(0, *((swift_isaMask & *v4) + qword_100019DF0), *((swift_isaMask & *v4) + qword_100019DF0 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1000020A8(uint64_t a1)
{
  __chkstk_darwin(a1, a1);
  (*(v2 + 16))(&v4 - v1);
  return UIHostingController.init(rootView:)();
}

void sub_1000021D4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_1000022E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100002360(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

uint64_t sub_1000024E8@<X0>(uint64_t a1@<X8>)
{
  v2 = SessionViewModel.sessionState.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 configuration];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 conversation];

      v7 = [v6 receiverPrimaryHandles];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v11 = [v3 configuration];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 conversation];

      v14 = [v13 identifier];
      if (v14)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    type metadata accessor for SMInitiatorAlertUtilities();
    [v3 isActiveState];
    dispatch thunk of static SMInitiatorAlertUtilities.deepLinkURL(for:with:and:)();
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t sub_100002704()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2, v3);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5, v6);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchTime();
  v32 = *(v39 - 8);
  v9 = __chkstk_darwin(v39, v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_10000CCA0(0xD000000000000014, 0x80000001000100F0, aBlock);
    _os_log_impl(&_mh_execute_header, v20, v21, "#Initiator,LiveActivity,%s", v22, 0xCu);
    sub_100007AC0(v23);
  }

  (*(v16 + 8))(v19, v15);
  sub_100008C40(0, &unk_100019C50, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v32 = *(v32 + 8);
  (v32)(v11, v39);
  v25 = swift_allocObject();
  *(v25 + 16) = v1;
  aBlock[4] = sub_100008CC8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BC54;
  aBlock[3] = &unk_100014ED8;
  v26 = _Block_copy(aBlock);
  v27 = v1;

  v28 = v33;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100007C48(&unk_100019A60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007B4C(&unk_100019C60, &unk_100011460);
  sub_100008CE0(&qword_100019A70, &unk_100019C60, &unk_100011460, &protocol conformance descriptor for [A]);
  v29 = v36;
  v30 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  (*(v37 + 8))(v29, v30);
  (*(v34 + 8))(v28, v35);
  return (v32)(v14, v39);
}

uint64_t sub_100002C50(void *a1)
{
  v1 = [a1 systemApertureElementContext];
  v4[4] = sub_100002D14;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10000BC54;
  v4[3] = &unk_100014F00;
  v2 = _Block_copy(v4);
  [v1 setElementNeedsUpdateWithCoordinatedAnimations:v2];
  _Block_release(v2);
  return swift_unknownObjectRelease();
}

uint64_t sub_100002D14()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000CCA0(0xD000000000000014, 0x80000001000100F0, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "#Initiator,LiveActivity,%s, update animation called", v7, 0xCu);
    sub_100007AC0(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_100002EAC()
{
  v16 = sub_100007B4C(&qword_100019AA8, &qword_100011488);
  v1 = *(v16 - 8);
  __chkstk_darwin(v16, v2);
  v4 = &v16 - v3;
  v5 = sub_100007B4C(&qword_100019AB0, qword_100011490);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for LiveActivityElementViewController();
  v17.receiver = v0;
  v17.super_class = v10;
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v11 = [v0 view];
  if (v11)
  {
    v12 = v11;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    sub_1000033C8();
    SessionViewModel.$sessionState.getter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008CE0(&qword_100019AB8, &qword_100019AB0, qword_100011490, &protocol conformance descriptor for Published<A>.Publisher);
    Publisher<>.sink(receiveValue:)();

    (*(v6 + 8))(v9, v5);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    SessionViewModel.$localSessionState.getter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008CE0(&qword_100019AC0, &qword_100019AA8, &qword_100011488, &protocol conformance descriptor for Published<A>.Publisher);
    v13 = v16;
    Publisher<>.sink(receiveValue:)();

    (*(v1 + 8))(v4, v13);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v14 = SessionViewModel.sessionState.getter();
    v15 = SessionViewModel.localSessionState.getter();
    sub_100004410(v14, v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_100003230(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = SessionViewModel.localSessionState.getter();
    sub_100004410(v2, v5);

    v6 = SessionViewModel.localSessionState.getter();
    sub_100005B40(v2, v6);
  }
}

void sub_1000032DC(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = SessionViewModel.sessionState.getter();
    sub_100004410(v5, v2);

    v6 = SessionViewModel.sessionState.getter();
    sub_100005B40(v6, v2);
  }
}

void sub_1000033C8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &isa - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView];
  if (v6)
  {
    v7 = *&v0[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView];
    if (v7)
    {
      v8 = *&v0[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView];
      if (v8)
      {
        v9 = v8;
        v10 = v7;
        v11 = v6;
        v12 = [v0 view];
        if (v12)
        {
          v13 = v12;
          [v12 addSubview:v11];

          v14 = [v0 view];
          if (v14)
          {
            v15 = v14;
            [v14 addSubview:v10];

            v16 = [v0 view];
            if (v16)
            {
              v17 = v16;
              [v16 addSubview:v9];

              [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
              [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
              [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
              v18 = objc_opt_self();
              sub_100007B4C(&unk_100019CA0, &qword_100011458);
              v19 = swift_allocObject();
              *(v19 + 16) = xmmword_100011320;
              v20 = [v11 widthAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
              v22 = v21;
              static SafetyMonitorUIConstants.liveActivityDynamicIslandOuterEdgePadding.getter();
              v24 = v22 + v23;
              static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
              v26 = [v20 constraintEqualToConstant:v24 + v25];

              *(v19 + 32) = v26;
              v27 = [v11 heightAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
              v28 = [v27 constraintEqualToConstant:?];

              *(v19 + 40) = v28;
              v29 = [v10 widthAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
              v31 = v30;
              static SafetyMonitorUIConstants.liveActivityDynamicIslandOuterEdgePadding.getter();
              v33 = v31 + v32;
              static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
              v35 = [v29 constraintEqualToConstant:v33 + v34];

              *(v19 + 48) = v35;
              v36 = [v10 heightAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
              v37 = [v36 constraintEqualToConstant:?];

              *(v19 + 56) = v37;
              v38 = [v9 widthAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
              v39 = [v38 constraintEqualToConstant:?];

              *(v19 + 64) = v39;
              v40 = [v9 heightAnchor];
              static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
              v41 = [v40 constraintEqualToConstant:?];

              *(v19 + 72) = v41;
              sub_100008C40(0, &unk_100019A50, NSLayoutConstraint_ptr);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v18 activateConstraints:isa];

              v42 = isa;

              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_15;
      }
    }
  }

  static Logger.initiatorUI.getter();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v48 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_10000CCA0(0xD00000000000001ALL, 0x80000001000100D0, &v48);
    _os_log_impl(&_mh_execute_header, v43, v44, "#Initiator, LiveActivity, %s, Dynamic island views nil - unable to setup", v45, 0xCu);
    sub_100007AC0(v46);
  }

  (*(v2 + 8))(v5, v1);
}

void sub_1000038F0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, aBlock);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: Layout subviews", v11, 0xCu);
    sub_100007AC0(v12);
  }

  (*(v5 + 8))(v8, v4);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  aBlock[4] = sub_100008CC0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004340;
  aBlock[3] = &unk_100014E88;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  [a1 animateAlongsideTransition:v14 completion:0];
  _Block_release(v14);
}

uint64_t sub_100003B44(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v62 - v11;
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v62 - v15;
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v62 - v19;
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v62 - v23;
  v26 = __chkstk_darwin(v22, v25);
  v28 = &v62 - v27;
  __chkstk_darwin(v26, v29);
  v31 = &v62 - v30;
  v32 = *(a2 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_activeLayoutMode);
  if (v32 > 1)
  {
    switch(v32)
    {
      case 2:
        sub_100006DD4();
        sub_100005AA4(0);
        sub_100002704();
        static Logger.initiatorUI.getter();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v63 = v49;
          *v48 = 136315138;
          *(v48 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v63);
          _os_log_impl(&_mh_execute_header, v46, v47, "%s: Minimal Active Layout", v48, 0xCu);
          sub_100007AC0(v49);
        }

        return (*(v4 + 8))(v24, v3);
      case 3:
        sub_100006DD4();
        sub_100005AA4(0);
        sub_100002704();
        static Logger.initiatorUI.getter();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v63 = v61;
          *v60 = 136315138;
          *(v60 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v63);
          _os_log_impl(&_mh_execute_header, v58, v59, "%s: Compact Active Layout", v60, 0xCu);
          sub_100007AC0(v61);
        }

        return (*(v4 + 8))(v20, v3);
      case 4:
        sub_1000061BC();
        sub_100002704();
        static Logger.initiatorUI.getter();
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v63 = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v63);
          _os_log_impl(&_mh_execute_header, v38, v39, "%s: Custom Active Layout", v40, 0xCu);
          sub_100007AC0(v41);
        }

        return (*(v4 + 8))(v16, v3);
      default:
LABEL_20:
        static Logger.initiatorUI.getter();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v63 = v53;
          *v52 = 136315138;
          *(v52 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v63);
          _os_log_impl(&_mh_execute_header, v50, v51, "%s: Other Active Layout", v52, 0xCu);
          sub_100007AC0(v53);
        }

        return (*(v4 + 8))(v8, v3);
    }
  }

  else if (v32 == -1)
  {
    static Logger.initiatorUI.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v63 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v63);
      _os_log_impl(&_mh_execute_header, v42, v43, "%s: Removed Active Layout", v44, 0xCu);
      sub_100007AC0(v45);
    }

    return (*(v4 + 8))(v12, v3);
  }

  else
  {
    if (v32)
    {
      if (v32 == 1)
      {
        sub_100006DD4();
        static Logger.initiatorUI.getter();
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v63 = v36;
          *v35 = 136315138;
          *(v35 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v63);
          _os_log_impl(&_mh_execute_header, v33, v34, "%s: Inactive Active Layout", v35, 0xCu);
          sub_100007AC0(v36);
        }

        return (*(v4 + 8))(v28, v3);
      }

      goto LABEL_20;
    }

    static Logger.initiatorUI.getter();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v63 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_10000CCA0(0xD00000000000001DLL, 0x80000001000100B0, &v63);
      _os_log_impl(&_mh_execute_header, v54, v55, "%s: Initial Active Layout", v56, 0xCu);
      sub_100007AC0(v57);
    }

    return (*(v4 + 8))(v31, v3);
  }
}

uint64_t sub_100004340(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100004410(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v9, v12);
  v15 = __chkstk_darwin(v13, v14);
  __chkstk_darwin(v15, v16);
  v20 = &v180 - v19;
  v21 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView);
  if (v21)
  {
    v22 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView);
    if (v22)
    {
      v23 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView);
      if (v23)
      {
        v188 = v18;
        v185 = v17;
        v24 = objc_allocWithZone(SMContactsManager);
        v25 = v23;
        v26 = v22;
        v27 = v21;
        v28 = [v24 init];
        v194 = v27;
        v191 = v26;
        v192 = v25;
        v189 = a1;
        v196 = v6;
        if (a1)
        {
          v29 = v28;
          v30 = [a1 configuration];
          if (v30)
          {
            v31 = v30;
            v32 = [v30 conversation];
          }

          else
          {
            v32 = 0;
          }

          v28 = v29;
        }

        else
        {
          v32 = 0;
        }

        v195 = v28;
        v37 = [v28 activeSessionRecipientContactsFor:v32];

        v38 = v37;
        isa = v37;
        if (!v37)
        {
          sub_100008C40(0, &qword_100019A80, CNContact_ptr);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          isa = Array._bridgeToObjectiveC()().super.isa;

          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = Array._bridgeToObjectiveC()().super.isa;
        }

        v197 = v38;
        v193 = isa;
        sub_100008C40(0, &qword_100019A80, CNContact_ptr);
        v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v37;
        static Logger.initiatorUI.getter();
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "#Initiator, LiveActivity, Resolved contact and using contact avatar", v44, 2u);
        }

        v47 = *(v7 + 8);
        v46 = v7 + 8;
        v45 = v47;
        v47(v20, v196);
        v48 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_avatarView;
        v49 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_avatarView);
        v190 = a2;
        if (!v49)
        {

          v64 = v189;
          v65 = v197;
          goto LABEL_59;
        }

        v182 = v45;
        v183 = v46;
        *&v186 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_avatarView;
        v181 = v49;
        v187 = v49;
        v50 = [v187 contacts];
        v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v51 >> 62)
        {
          v52 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v184 = v3;
        if (v52)
        {
          v198[0] = &_swiftEmptyArrayStorage;
          sub_100008554(0, v52 & ~(v52 >> 63), 0);
          if (v52 < 0)
          {
            __break(1u);
            goto LABEL_73;
          }

          v53 = 0;
          v54 = v198[0];
          do
          {
            if ((v51 & 0xC000000000000001) != 0)
            {
              v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v55 = *(v51 + 8 * v53 + 32);
            }

            v56 = v55;
            v57 = [v55 identifier];
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            v198[0] = v54;
            v62 = v54[2];
            v61 = v54[3];
            if (v62 >= v61 >> 1)
            {
              sub_100008554((v61 > 1), v62 + 1, 1);
              v54 = v198[0];
            }

            ++v53;
            v54[2] = v62 + 1;
            v63 = &v54[2 * v62];
            *(v63 + 4) = v58;
            *(v63 + 5) = v60;
          }

          while (v52 != v53);

          v3 = v184;
        }

        else
        {

          v54 = &_swiftEmptyArrayStorage;
        }

        v66 = sub_100008680(v54);

        if (v40 >> 62)
        {
          v67 = _CocoaArrayWrapper.endIndex.getter();
          if (v67)
          {
LABEL_34:
            v198[0] = &_swiftEmptyArrayStorage;
            sub_100008554(0, v67 & ~(v67 >> 63), 0);
            if ((v67 & 0x8000000000000000) == 0)
            {
              v68 = 0;
              v69 = v198[0];
              do
              {
                if ((v40 & 0xC000000000000001) != 0)
                {
                  v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v70 = *(v40 + 8 * v68 + 32);
                }

                v71 = v70;
                v72 = [v70 identifier];
                v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v75 = v74;

                v198[0] = v69;
                v77 = v69[2];
                v76 = v69[3];
                if (v77 >= v76 >> 1)
                {
                  sub_100008554((v76 > 1), v77 + 1, 1);
                  v69 = v198[0];
                }

                ++v68;
                v69[2] = v77 + 1;
                v78 = &v69[2 * v77];
                *(v78 + 4) = v73;
                *(v78 + 5) = v75;
              }

              while (v67 != v68);

              v3 = v184;
              goto LABEL_46;
            }

LABEL_73:
            __break(1u);
            return;
          }
        }

        else
        {
          v67 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v67)
          {
            goto LABEL_34;
          }
        }

        v69 = &_swiftEmptyArrayStorage;
LABEL_46:
        v79 = sub_100008680(v69);

        v80 = sub_1000057C0(v66, v79);

        v65 = v197;
        if ((v80 & 1) == 0)
        {
          static Logger.initiatorUI.getter();
          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.default.getter();
          v99 = os_log_type_enabled(v97, v98);
          v64 = v189;
          if (v99)
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&_mh_execute_header, v97, v98, "#Initiator, LiveActivity, current contacts do not match active recipients, resetting avatar view.", v100, 2u);
          }

          v182(v188, v196);
          v48 = v186;
          v101 = *(v3 + v186);
          *(v3 + v186) = 0;

          goto LABEL_59;
        }

        v64 = v189;
        if (v189 && (v81 = [v189 configuration]) != 0 && (v82 = v81, v83 = objc_msgSend(v81, "conversation"), v82, v84 = objc_msgSend(v83, "identifier"), v83, v84))
        {
          v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v86;

          v88 = v187;
          v89 = sub_100008718(v85, v87, v187);

          if (v89)
          {
            v90 = v185;
            static Logger.initiatorUI.getter();
            v91 = Logger.logObject.getter();
            v92 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              v198[0] = v94;
              *v93 = 136315138;
              *(v93 + 4) = sub_10000CCA0(0xD000000000000029, 0x8000000100010010, v198);
              _os_log_impl(&_mh_execute_header, v91, v92, "#Initiator, LiveActivity, %s, refreshing group avatar", v93, 0xCu);
              sub_100007AC0(v94);
            }

            v182(v90, v196);
            v65 = v197;
            v95 = [v187 updateViewWithGroupIdentity:v89];
            swift_unknownObjectRelease();

            v48 = v186;
            v96 = *(v3 + v186);
            *(v3 + v186) = v181;

            goto LABEL_59;
          }
        }

        else
        {
        }

        v48 = v186;
LABEL_59:
        if (*(v3 + v48))
        {
          v102 = &SecureWindow;
          v103 = v193;
        }

        else
        {
          v104 = v48;
          v105 = [objc_allocWithZone(CNAvatarView) init];
          sub_100007B4C(&unk_100019CA0, &qword_100011458);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_100011330;
          *(v106 + 32) = [v105 descriptorForRequiredKeys];
          sub_100007B4C(&qword_100019A88, &qword_100011470);
          v107 = Array._bridgeToObjectiveC()().super.isa;

          v108 = v193;
          v109 = [v195 fetchAdditionalInfoFor:v193 keysToFetch:v107];

          if (v109)
          {

            [v105 setContacts:v109];
          }

          else
          {
            v109 = v197;
            [v105 setContacts:v197];
          }

          if (v64)
          {
            v110 = [v64 configuration];
            if (v110)
            {
              v111 = v110;
              v112 = [v110 conversation];

              v113 = [v112 identifier];
              if (v113)
              {
                v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v116 = v115;

                v117 = sub_100008718(v114, v116, v105);

                if (v117)
                {
                  v118 = [v105 updateViewWithGroupIdentity:v117];

                  swift_unknownObjectRelease();
                }
              }
            }
          }

          v119 = *(v3 + v104);
          *(v3 + v104) = v105;
          v120 = v105;

          v121 = v194;
          sub_100005978();

          v103 = v120;
          [v121 addSubview:v103];
          [(objc_class *)v103 setTranslatesAutoresizingMaskIntoConstraints:0];
          v197 = objc_opt_self();
          v122 = swift_allocObject();
          *(v122 + 16) = xmmword_100011340;
          v123 = [(objc_class *)v103 trailingAnchor];
          v124 = [v121 trailingAnchor];
          static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
          v126 = v64;
          v127 = [v123 constraintEqualToAnchor:v124 constant:-v125];

          *(v122 + 32) = v127;
          v64 = v126;
          v128 = [(objc_class *)v103 centerYAnchor];

          v129 = [v121 centerYAnchor];
          v130 = [v128 constraintEqualToAnchor:v129];

          *(v122 + 40) = v130;
          v131 = [(objc_class *)v103 widthAnchor];

          static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
          v132 = [v131 constraintEqualToConstant:?];

          *(v122 + 48) = v132;
          v133 = [(objc_class *)v103 heightAnchor];

          static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
          v134 = [v133 constraintEqualToConstant:?];

          v102 = &SecureWindow;
          *(v122 + 56) = v134;
          sub_100008C40(0, &unk_100019A50, NSLayoutConstraint_ptr);
          v65 = Array._bridgeToObjectiveC()().super.isa;

          [(objc_class *)v197 activateConstraints:v65];
        }

        v135 = v190;
        v136 = sub_100008A04(v64, v190);
        v187 = v137;
        v188 = v136;
        v138 = sub_100008AB8(v64, v135);
        v139 = String._bridgeToObjectiveC()();
        v190 = objc_opt_self();
        v140 = [v190 _systemImageNamed:v139];

        v141 = [objc_allocWithZone(UIImageView) initWithImage:v140];
        v142 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph;
        v143 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph);
        *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph) = v141;
        v144 = v141;

        v189 = sub_100008C40(0, &qword_100019A78, UIColor_ptr);
        v196 = v138;

        v145 = UIColor.init(_:)();
        [v144 setTintColor:v145];

        v146 = v191;
        sub_100005978();

        [v146 *&v102[41].ivar:*(v3 + v142) base:?size];
        [*(v3 + v142) setTranslatesAutoresizingMaskIntoConstraints:0];
        v197 = objc_opt_self();
        v191 = sub_100007B4C(&unk_100019CA0, &qword_100011458);
        v147 = swift_allocObject();
        v186 = xmmword_100011340;
        *(v147 + 16) = xmmword_100011340;
        v148 = [*(v3 + v142) leadingAnchor];
        v193 = v146;
        v149 = [v146 leadingAnchor];
        static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
        v150 = [v148 constraintEqualToAnchor:v149 constant:?];

        *(v147 + 32) = v150;
        v151 = [*(v3 + v142) centerYAnchor];
        v152 = [v146 centerYAnchor];
        v153 = [v151 constraintEqualToAnchor:v152];

        *(v147 + 40) = v153;
        v154 = [*(v3 + v142) widthAnchor];
        static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
        v155 = v102;
        v156 = [v154 constraintEqualToConstant:?];

        *(v147 + 48) = v156;
        v157 = [*(v3 + v142) heightAnchor];
        static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
        v158 = [v157 constraintEqualToConstant:?];

        *(v147 + 56) = v158;
        v185 = sub_100008C40(0, &unk_100019A50, NSLayoutConstraint_ptr);
        v159 = Array._bridgeToObjectiveC()().super.isa;

        [(objc_class *)v197 activateConstraints:v159];

        v160 = String._bridgeToObjectiveC()();

        v161 = [v190 _systemImageNamed:v160];

        v162 = [objc_allocWithZone(UIImageView) initWithImage:v161];
        v163 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph;
        v164 = *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph);
        *(v3 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph) = v162;
        v165 = v162;

        v166 = UIColor.init(_:)();
        [v165 setTintColor:v166];

        v167 = v192;
        sub_100005978();

        [v167 *&v155[41].ivar:*(v3 + v163) base:?size];
        [*(v3 + v163) setTranslatesAutoresizingMaskIntoConstraints:0];
        v168 = swift_allocObject();
        *(v168 + 16) = v186;
        v169 = [*(v3 + v163) centerXAnchor];
        v170 = [v167 centerXAnchor];
        v171 = [v169 constraintEqualToAnchor:v170];

        *(v168 + 32) = v171;
        v172 = [*(v3 + v163) centerYAnchor];
        v173 = [v167 centerYAnchor];
        v174 = [v172 constraintEqualToAnchor:v173];

        *(v168 + 40) = v174;
        v175 = [*(v3 + v163) widthAnchor];
        static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
        v176 = [v175 constraintEqualToConstant:?];

        *(v168 + 48) = v176;
        v177 = [*(v3 + v163) heightAnchor];
        static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
        v178 = [v177 constraintEqualToConstant:?];

        *(v168 + 56) = v178;
        v179 = Array._bridgeToObjectiveC()().super.isa;

        [(objc_class *)v197 activateConstraints:v179];

        return;
      }
    }
  }

  static Logger.initiatorUI.getter();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v198[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_10000CCA0(0xD000000000000029, 0x8000000100010010, v198);
    _os_log_impl(&_mh_execute_header, v33, v34, "#Initiator, LiveActivity, %s, Dynamic island views nil - unable to setup", v35, 0xCu);
    sub_100007AC0(v36);
  }

  (*(v7 + 8))(v11, v6);
}

uint64_t sub_1000057C0(uint64_t result, uint64_t a2)
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
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

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
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100005978()
{
  v1 = [v0 subviews];
  sub_100008C40(0, &qword_100019AA0, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

id sub_100005AA4(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView);
  if (v3)
  {
    [v3 setHidden:a1 & 1];
  }

  v4 = *(v1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView);
  if (v4)
  {
    [v4 setHidden:a1 & 1];
  }

  result = *(v1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView);
  if (result)
  {

    return [result setHidden:a1 & 1];
  }

  return result;
}

uint64_t sub_100005B40(void *a1, void *a2)
{
  v3 = v2;
  v37 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v35 = v12;
    v23 = v8;
    v24 = v5;
    v25 = v3;
    v26 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10000CCA0(0xD000000000000026, 0x800000010000FFE0, aBlock);
    _os_log_impl(&_mh_execute_header, v18, v19, "#Initiator, LiveActivity,%s,Updating trailing view for session state", v21, 0xCu);
    sub_100007AC0(v26);
    v3 = v25;
    v5 = v24;
    v8 = v23;
    v12 = v35;

    a1 = v36;
  }

  (*(v14 + 8))(v17, v13);
  sub_100008C40(0, &unk_100019C50, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  v28[2] = v3;
  v28[3] = a1;
  v29 = v37;
  v28[4] = v37;
  aBlock[4] = sub_100007C24;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BC54;
  aBlock[3] = &unk_100014E38;
  v30 = _Block_copy(aBlock);
  v31 = v29;
  v32 = v3;
  v33 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100007C48(&unk_100019A60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007B4C(&unk_100019C60, &unk_100011460);
  sub_100008CE0(&qword_100019A70, &unk_100019C60, &unk_100011460, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v40 + 8))(v8, v5);
  return (*(v38 + 8))(v12, v39);
}

void sub_100005FCC(uint64_t a1, id a2, id a3)
{
  sub_100008A04(a2, a3);
  sub_100008AB8(a2, a3);
  v6 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph;
  v7 = *(a1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph);
  v8 = String._bridgeToObjectiveC()();
  v9 = objc_opt_self();
  v10 = [v9 _systemImageNamed:v8];

  [v7 setImage:v10];
  v11 = *(a1 + v6);
  sub_100008C40(0, &qword_100019A78, UIColor_ptr);
  v12 = v11;

  v13 = UIColor.init(_:)();
  [v12 setTintColor:v13];

  v14 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph;
  v15 = *(a1 + OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v9 _systemImageNamed:v16];

  [v15 setImage:v17];
  v18 = *(a1 + v14);

  v19 = v18;
  v20 = UIColor.init(_:)();
  [v19 setTintColor:v20];
}

void sub_1000061BC()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  v102 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LiveActivityView();
  v103 = *(v6 - 8);
  v8 = __chkstk_darwin(v6, v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v98 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView];
  if (v19)
  {
    [v19 setHidden:1];
  }

  v20 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView];
  if (v20)
  {
    [v20 setHidden:1];
  }

  v21 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView];
  if (v21)
  {
    [v21 setHidden:1];
  }

  if (!*&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController])
  {
    v101 = v5;
    v99 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController;
    static Logger.initiatorUI.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v104 = v1;
    v100 = v2;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v105 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10000CCA0(0xD000000000000015, 0x800000010000FFC0, &v105);
      _os_log_impl(&_mh_execute_header, v22, v23, "#Initiator, LiveActivity,%s, Setting up expanded controller", v25, 0xCu);
      sub_100007AC0(v26);
      v1 = v104;
    }

    (*(v15 + 8))(v18, v14);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    LiveActivityView.init(with:onLockscreen:resizeHandler:)();
    v27 = objc_allocWithZone(sub_100007B4C(&qword_100019A20, &qword_100011440));
    v28 = v103;
    (*(v103 + 16))(v10, v13, v6);
    v29 = UIHostingController.init(rootView:)();
    (*(v28 + 8))(v13, v6);
    v30 = v29;
    [v1 addChildViewController:v30];
    v31 = [v30 view];
    if (v31)
    {
      v32 = v31;
      v33 = [objc_opt_self() clearColor];
      [v32 setBackgroundColor:v33];

      v34 = [v30 view];
      if (v34)
      {
        [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

        sub_100007B4C(&qword_100019A28, &qword_100011448);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_100011350;
        v36 = v30;
        static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
        v105 = v35;
        sub_100007C48(&qword_100019A30, &type metadata accessor for UIHostingControllerSizingOptions, &protocol conformance descriptor for UIHostingControllerSizingOptions);
        sub_100007B4C(&qword_100019A38, &qword_100011450);
        sub_100008CE0(&unk_100019A40, &qword_100019A38, &qword_100011450, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of UIHostingController.sizingOptions.setter();

        v37 = v104;
        v38 = [v104 view];
        if (v38)
        {
          v39 = v38;
          v40 = [v36 view];

          if (v40)
          {
            [v39 addSubview:v40];

            v41 = [v37 view];
            if (v41)
            {
              v42 = v41;
              v43 = [v41 window];

              if (v43)
              {

                v44 = [v36 view];
                if (!v44)
                {
LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

                v45 = [v44 widthAnchor];

                v46 = [v37 view];
                if (!v46)
                {
LABEL_46:
                  __break(1u);
                  goto LABEL_47;
                }

                v47 = v46;
                v48 = [v46 window];

                if (!v48)
                {
LABEL_47:
                  __break(1u);
                  goto LABEL_48;
                }

                v49 = [v48 widthAnchor];

                static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandSidePadding.getter();
                v51 = [v45 constraintEqualToAnchor:v49 constant:v50 * -2.0];
              }

              else
              {

                v52 = [v36 view];
                if (!v52)
                {
LABEL_48:
                  __break(1u);
                  return;
                }

                v49 = [v52 widthAnchor];

                v53 = [objc_opt_self() mainScreen];
                [v53 nativeBounds];
                v55 = v54;
                v57 = v56;
                v59 = v58;
                v61 = v60;

                v106.origin.x = v55;
                v106.origin.y = v57;
                v106.size.width = v59;
                v106.size.height = v61;
                Width = CGRectGetWidth(v106);
                static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandSidePadding.getter();
                v51 = [v49 constraintEqualToConstant:Width - (v63 + v63)];
              }

              sub_100007B4C(&unk_100019CA0, &qword_100011458);
              v64 = swift_allocObject();
              *(v64 + 16) = xmmword_100011360;
              *(v64 + 32) = v51;
              v65 = v51;
              v66 = [v36 view];

              if (v66)
              {
                v67 = [v66 topAnchor];

                v68 = [v104 view];
                if (v68)
                {
                  v69 = v68;
                  v70 = [v68 SBUISA_systemApertureObstructedAreaLayoutGuide];

                  v71 = [v70 bottomAnchor];
                  static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandTopShift.getter();
                  v73 = [v67 constraintEqualToAnchor:v71 constant:-v72];

                  *(v64 + 40) = v73;
                  v74 = [v36 view];

                  if (v74)
                  {
                    v75 = [v74 leadingAnchor];

                    v76 = [v104 view];
                    if (v76)
                    {
                      v77 = v76;
                      v78 = [v76 leadingAnchor];

                      static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandSidePadding.getter();
                      v79 = [v75 constraintEqualToAnchor:v78 constant:?];

                      *(v64 + 48) = v79;
                      v80 = [v36 view];

                      if (v80)
                      {
                        v81 = [v80 trailingAnchor];

                        v82 = [v104 view];
                        if (v82)
                        {
                          v83 = v82;
                          v84 = [v82 trailingAnchor];

                          static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandSidePadding.getter();
                          v86 = [v81 constraintEqualToAnchor:v84 constant:-v85];

                          *(v64 + 56) = v86;
                          v87 = [v36 view];

                          if (v87)
                          {
                            v88 = [v87 bottomAnchor];

                            v89 = v104;
                            v90 = [v104 view];
                            if (v90)
                            {
                              v91 = v90;
                              v92 = objc_opt_self();
                              v93 = [v91 bottomAnchor];

                              static SafetyMonitorUIConstants.liveActivityExpandedDynamicIslandSidePadding.getter();
                              v95 = [v88 constraintEqualToAnchor:v93 constant:-v94];

                              *(v64 + 64) = v95;
                              sub_100008C40(0, &unk_100019A50, NSLayoutConstraint_ptr);
                              isa = Array._bridgeToObjectiveC()().super.isa;

                              [v92 activateConstraints:isa];

                              [v36 didMoveToParentViewController:v89];
                              v97 = *&v89[v99];
                              *&v89[v99] = v36;

                              return;
                            }

                            goto LABEL_44;
                          }

LABEL_43:
                          __break(1u);
LABEL_44:
                          __break(1u);
                          goto LABEL_45;
                        }

LABEL_42:
                        __break(1u);
                        goto LABEL_43;
                      }

LABEL_41:
                      __break(1u);
                      goto LABEL_42;
                    }

LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }

LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }
}

void sub_100006D80(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100002704();
  }
}

void sub_100006DD4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController;
  v8 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController];
  if (v8)
  {
    v9 = v8;
    static Logger.initiatorUI.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10000CCA0(0xD00000000000001ALL, 0x800000010000FFA0, &v18);
      _os_log_impl(&_mh_execute_header, v10, v11, "#Initiator, LiveActivity,%s, Removing expanded controller", v12, 0xCu);
      sub_100007AC0(v13);
    }

    (*(v3 + 8))(v6, v2);
    v14 = [v9 view];
    if (v14)
    {
      v15 = v14;
      [v14 removeFromSuperview];

      [v9 didMoveToParentViewController:0];
      [v1 removeChildViewController:v9];

      v16 = *&v1[v7];
      *&v1[v7] = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100006FFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_activeLayoutMode] = 0;
  *&v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_contentRole] = 2;
  *&v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_preferredLayoutMode] = 3;
  *&v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_maximumLayoutMode] = 4;
  *&v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_preferredHeightForBottomSafeArea] = 0x4061800000000000;
  v7 = &v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_associatedScenePersistenceIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_associatedAppBundleIdentifier];
  *v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8[1] = v9;
  *&v4[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController] = 0;
  *&v4[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_avatarView] = 0;
  v10 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView;
  v11 = type metadata accessor for LiveActivityAccessoryView();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 0;
  v26.receiver = v12;
  v26.super_class = v11;
  *&v4[v10] = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView;
  v14 = objc_allocWithZone(v11);
  v14[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 1;
  v25.receiver = v14;
  v25.super_class = v11;
  *&v4[v13] = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView;
  v16 = objc_allocWithZone(v11);
  v16[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 2;
  v24.receiver = v16;
  v24.super_class = v11;
  *&v4[v15] = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel;
  type metadata accessor for SessionViewModel();
  *&v4[v17] = static SessionViewModel.shared.getter();
  v18 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph;
  *&v4[v18] = [objc_allocWithZone(UIImageView) init];
  v19 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph;
  *&v4[v19] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_cancellableSet] = &_swiftEmptySetSingleton;
  if (a2)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v23.receiver = v4;
  v23.super_class = type metadata accessor for LiveActivityElementViewController();
  v21 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", v20, a3);

  return v21;
}

id sub_1000072D0(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_maximumLayoutMode] = 4;
  *&v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_preferredHeightForBottomSafeArea] = 0x4061800000000000;
  v4 = &v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_associatedScenePersistenceIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_associatedAppBundleIdentifier];
  *v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[1] = v6;
  *&v2[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_expandedController] = 0;
  *&v2[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_avatarView] = 0;
  v7 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_leadingView;
  v8 = type metadata accessor for LiveActivityAccessoryView();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 0;
  v22.receiver = v9;
  v22.super_class = v8;
  *&v2[v7] = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingView;
  v11 = objc_allocWithZone(v8);
  v11[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 1;
  v21.receiver = v11;
  v21.super_class = v8;
  *&v2[v10] = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalView;
  v13 = objc_allocWithZone(v8);
  v13[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType] = 2;
  v20.receiver = v13;
  v20.super_class = v8;
  *&v2[v12] = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_sessionViewModel;
  type metadata accessor for SessionViewModel();
  *&v2[v14] = static SessionViewModel.shared.getter();
  v15 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_trailingGlyph;
  *&v2[v15] = [objc_allocWithZone(UIImageView) init];
  v16 = OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_minimalGlyph;
  *&v2[v16] = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC16SafetyMonitorApp33LiveActivityElementViewController_cancellableSet] = &_swiftEmptySetSingleton;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for LiveActivityElementViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithCoder:", a1);

  if (v17)
  {
  }

  return v17;
}

Swift::Int sub_100007674()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000076E8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

double sub_1000077CC()
{
  if (*(v0 + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType))
  {
    if (*(v0 + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivityAccessoryView_viewType) == 1)
    {
      static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
      v2 = v1;
      static SafetyMonitorUIConstants.liveActivityDynamicIslandOuterEdgePadding.getter();
      v4 = v2 + v3;
      static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
      v6 = v4 + v5;
    }

    else
    {
      static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
      v6 = v12;
    }

    static SafetyMonitorUIConstants.liveActivityDynamicIslandBadgeDiameter.getter();
  }

  else
  {
    static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
    v8 = v7;
    static SafetyMonitorUIConstants.liveActivityDynamicIslandOuterEdgePadding.getter();
    v10 = v8 + v9;
    static SafetyMonitorUIConstants.liveActivityDynamicIslandInnerEdgePadding.getter();
    v6 = v10 + v11;
    static SafetyMonitorUIConstants.liveActivityDynamicIslandAvatarDiameter.getter();
  }

  return v6;
}

id sub_100007898(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for LiveActivityAccessoryView.AccessoryViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiveActivityAccessoryView.AccessoryViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007A6C()
{
  result = qword_100019A18;
  if (!qword_100019A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019A18);
  }

  return result;
}

uint64_t sub_100007AC0(void *a1)
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

uint64_t sub_100007B0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007B4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007B94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007BDC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100007C90(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100008040(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_100007DE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007B4C(&qword_100019A90, &qword_100011478);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100008040(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100007DE0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000081C0();
      goto LABEL_16;
    }

    sub_10000831C(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000081C0()
{
  v1 = v0;
  sub_100007B4C(&qword_100019A90, &qword_100011478);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

Swift::Int sub_10000831C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100007B4C(&qword_100019A90, &qword_100011478);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

char *sub_100008554(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100008574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100008574(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007B4C(&qword_100019A98, &qword_100011480);
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

uint64_t sub_100008680(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100007C90(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_100008718(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SafetyMonitorUIUtilities();
  v11 = static SafetyMonitorUIUtilities.fetchChatGroupPhoto(with:)();
  if (v12 >> 60 == 15)
  {
    static Logger.initiatorUI.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_10000CCA0(0xD000000000000025, 0x8000000100010040, &v24);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_10000CCA0(a1, a2, &v24);
      _os_log_impl(&_mh_execute_header, v13, v14, "#Initiator, LiveActivity, %s, No group photo found for groupID %s.", v15, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  else
  {
    v17 = v12;
    v18 = v11;
    isa = [a3 contacts];
    if (!isa)
    {
      sub_100008C40(0, &qword_100019A80, CNContact_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v20 = objc_allocWithZone(CNGroupIdentity);
    sub_100008B84(v18, v17);
    v21 = Data._bridgeToObjectiveC()().super.isa;
    sub_100008BD8(v18, v17);
    v22 = [v20 initGroupWithName:0 photo:v21 contacts:isa];

    sub_100008BD8(v18, v17);
    return v22;
  }
}

uint64_t sub_100008A04(id a1, id a2)
{
  if (a1 && [a1 sessionState] == 4)
  {
    return static SafetyMonitorUIConstants.exclamationMarkCircleIconName.getter();
  }

  if (!a2)
  {
    goto LABEL_13;
  }

  if ([a2 unsupportedDeviceSeparationState])
  {
    return static SafetyMonitorUIConstants.exclamationMarkCircleIconName.getter();
  }

  if ([a2 userDisabledConnectivity])
  {
    return static SafetyMonitorUIConstants.antennaRadiowavesLeftAndRightSlashFillIconName.getter();
  }

LABEL_13:
  if (!a1 || ([a1 sessionState], result = SMSessionState.badgeImageName.getter(), !v5))
  {
    v6 = static SafetyMonitorUIConstants.checkMarkCircleIconName.getter();

    return v6;
  }

  return result;
}

uint64_t sub_100008AB8(id a1, id a2)
{
  if (a1 && [a1 sessionState] == 4)
  {
LABEL_5:

    return static Color.red.getter();
  }

  if (a2)
  {
    if ([a2 unsupportedDeviceSeparationState])
    {
      goto LABEL_5;
    }

    if ([a2 userDisabledConnectivity])
    {
      goto LABEL_13;
    }
  }

  if (!a1)
  {
LABEL_13:

    return static Color.checkInYellow.getter();
  }

  else
  {
    v4 = [a1 sessionState];

    return SMSessionState.badgeImageColor.getter(v4);
  }
}

uint64_t sub_100008B84(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008BD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008BEC(a1, a2);
  }

  return a1;
}

uint64_t sub_100008BEC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100008C40(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100008C88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008CE0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100007B94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100008D48()
{
  result = qword_100019AD0;
  if (!qword_100019AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AD0);
  }

  return result;
}

unint64_t sub_100008DA0()
{
  result = qword_100019AD8;
  if (!qword_100019AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AD8);
  }

  return result;
}

uint64_t sub_100008E2C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000BBF0(v0, qword_100019E00);
  sub_10000BBB8(v0, qword_100019E00);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100008EB4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for URL();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_100007B4C(&qword_100019AC8, &qword_1000116D0);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_100007B4C(&qword_100019B38, &qword_1000116D8);
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for IntentSystemContext();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for IntentSystemContext.Source();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_100007B4C(&qword_100019B40, &qword_1000116E0);
  v2[32] = swift_task_alloc();
  sub_100007B4C(&qword_100019B48, &qword_1000116E8);
  v2[33] = swift_task_alloc();
  v7 = type metadata accessor for IntentPerson.Handle.Value();
  v2[34] = v7;
  v2[35] = *(v7 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[42] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009294, v9, v8);
}

uint64_t sub_100009294()
{
  v171 = v0;
  v1 = v0[33];

  IntentParameter.wrappedValue.getter();
  v2 = type metadata accessor for IntentPerson();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2))
  {
    goto LABEL_4;
  }

  v3 = v0[32];
  IntentPerson.handle.getter();
  v4 = type metadata accessor for IntentPerson.Handle();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    sub_10000BA6C(v0[32], &qword_100019B40, &qword_1000116E0);
LABEL_4:
    sub_10000BA6C(v0[33], &qword_100019B48, &qword_1000116E8);
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v87 = v0[40];
  v86 = v0[41];
  v88 = v0[39];
  v89 = v0[34];
  v90 = v0[35];
  v91 = v0[32];
  v92 = v0[33];
  IntentPerson.Handle.value.getter();
  sub_10000BA6C(v91, &qword_100019B40, &qword_1000116E0);
  sub_10000BA6C(v92, &qword_100019B48, &qword_1000116E8);
  (*(v90 + 32))(v86, v87, v89);
  static Logger.intents.getter();
  v169 = *(v90 + 16);
  v169(v88, v86, v89);

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.debug.getter();

  v95 = os_log_type_enabled(v93, v94);
  v96 = v0[39];
  if (v95)
  {
    v97 = v0[38];
    v98 = v0[34];
    v99 = v0[35];
    v161 = v0[26];
    v165 = v0[25];
    v167 = v0[31];
    v100 = v0[9];
    v101 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    *v101 = 136315650;
    v0[7] = v100;

    v102 = String.init<A>(describing:)();
    v154 = v94;
    v104 = sub_10000CCA0(v102, v103, &v170);

    *(v101 + 4) = v104;
    *(v101 + 12) = 2080;
    *(v101 + 14) = sub_10000CCA0(0x286D726F66726570, 0xE900000000000029, &v170);
    *(v101 + 22) = 2080;
    v169(v97, v96, v98);
    v105 = String.init<A>(describing:)();
    v107 = v106;
    v108 = *(v99 + 8);
    v108(v96, v98);
    v109 = sub_10000CCA0(v105, v107, &v170);

    *(v101 + 24) = v109;
    _os_log_impl(&_mh_execute_header, v93, v154, "%s, %s: IntentPerson handle value, %s", v101, 0x20u);
    swift_arrayDestroy();

    v110 = *(v161 + 8);
    v110(v167, v165);
  }

  else
  {
    v111 = v0[34];
    v112 = v0[35];
    v113 = v0[31];
    v114 = v0[25];
    v115 = v0[26];

    v108 = *(v112 + 8);
    v108(v96, v111);
    v110 = *(v115 + 8);
    v110(v113, v114);
  }

  v116 = v0[37];
  v117 = v0[34];
  v118 = v0[35];
  v169(v116, v0[41], v117);
  v119 = (*(v118 + 88))(v116, v117);
  if (v119 == enum case for IntentPerson.Handle.Value.phoneNumber(_:))
  {
    v120 = v0[37];
    v121 = v0[34];
    v122 = v0[35];
    v108(v0[41], v121);
    (*(v122 + 96))(v120, v121);
    v5 = *(v120 + 8);
  }

  else
  {
    v123 = v0[34];
    if (v119 == enum case for IntentPerson.Handle.Value.emailAddress(_:))
    {
      v124 = v0[37];
      v125 = v0[35];
      v108(v0[41], v0[34]);
      (*(v125 + 96))(v124, v123);
      v5 = *(v124 + 8);
    }

    else
    {
      v126 = v0[41];
      if (v119 != enum case for IntentPerson.Handle.Value.applicationDefined(_:))
      {
        v162 = v110;
        v131 = v0[36];
        static Logger.intents.getter();
        v169(v131, v126, v123);

        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();

        v134 = os_log_type_enabled(v132, v133);
        v166 = v0[41];
        if (v134)
        {
          v135 = v0[38];
          v136 = v0[36];
          v137 = v0[34];
          v155 = v0[25];
          v158 = v0[30];
          v138 = v0[9];
          v139 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          *v139 = 136315650;
          v0[6] = v138;

          v140 = String.init<A>(describing:)();
          v152 = v133;
          v142 = sub_10000CCA0(v140, v141, &v170);

          *(v139 + 4) = v142;
          *(v139 + 12) = 2080;
          *(v139 + 14) = sub_10000CCA0(0x286D726F66726570, 0xE900000000000029, &v170);
          *(v139 + 22) = 2080;
          v169(v135, v136, v137);
          v143 = String.init<A>(describing:)();
          v145 = v144;
          v146 = v108;
          v108(v136, v137);
          v147 = sub_10000CCA0(v143, v145, &v170);

          *(v139 + 24) = v147;
          _os_log_impl(&_mh_execute_header, v132, v152, "%s, %s: Unknown IntentPerson handle value type, %s", v139, 0x20u);
          swift_arrayDestroy();

          v162(v158, v155);
          v108(v166, v137);
        }

        else
        {
          v148 = v0[36];
          v149 = v0[34];
          v150 = v0[30];
          v151 = v0[25];

          v146 = v108;
          v108(v148, v149);
          v162(v150, v151);
          v108(v166, v149);
        }

        v146(v0[37], v0[34]);
        goto LABEL_5;
      }

      v127 = v0[37];
      (*(v0[35] + 96))(v127, v0[34]);
      v5 = *(v127 + 8);
      v128 = objc_opt_self();
      v129 = String._bridgeToObjectiveC()();
      v130 = [v128 getSMHandleTypeWithHandle:v129];

      v108(v126, v123);
      if (!v130)
      {

        goto LABEL_5;
      }
    }
  }

LABEL_6:
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v11 = v0[18];
  v10 = v0[19];
  v0[2] = v0[9];
  sub_10000A90C();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v9 + 8))(v8, v10);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    sub_10000BA6C(v0[18], &qword_100019B38, &qword_1000116D8);
    v12 = 0;
    if (v5)
    {
LABEL_8:
      v13 = String._bridgeToObjectiveC()();

      goto LABEL_11;
    }
  }

  else
  {
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[22];
    (*(v15 + 32))(v14, v0[18], v16);
    v12 = sub_10000AFC8(v14);
    (*(v15 + 8))(v14, v16);
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v13 = 0;
LABEL_11:
  v17 = [objc_opt_self() createURLForSuggestionsWithRecipientHandle:v13 appPayloadDataString:0 givenName:0 payloadType:4 sessionStartEntryType:v12];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v0[16];
  v20 = v0[17];
  v21 = v0[15];
  v22 = v0[10];
  v23 = v0[11];
  (*(v23 + 56))(v19, v18, 1, v22);
  sub_10000B9FC(v19, v20);
  sub_10000BB14(v20, v21, &qword_100019AC8, &qword_1000116D0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000BA6C(v0[15], &qword_100019AC8, &qword_1000116D0);
    static Logger.intents.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v24, v25);
    v28 = v0[26];
    v27 = v0[27];
    v29 = v0[25];
    if (v26)
    {
      v30 = v0[9];
      v31 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *v31 = 136315394;
      v0[3] = v30;

      v32 = String.init<A>(describing:)();
      v34 = sub_10000CCA0(v32, v33, &v170);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_10000CCA0(0x286D726F66726570, 0xE900000000000029, &v170);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s, %s: Failed to generate URL", v31, 0x16u);
      swift_arrayDestroy();
    }

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v36 = v0[13];
    v35 = v0[14];
    v37 = v0[10];
    v38 = v0[11];
    (*(v38 + 32))(v35, v0[15], v37);
    static Logger.intents.getter();
    v163 = *(v38 + 16);
    v163(v36, v35, v37);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[29];
    v43 = v0[26];
    v159 = v0[25];
    v44 = v0[13];
    v45 = v0[10];
    v46 = v0[11];
    if (v41)
    {
      v47 = v0[9];
      v156 = v0[29];
      v48 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *v48 = 136315650;
      v0[5] = v47;

      v49 = String.init<A>(describing:)();
      v51 = sub_10000CCA0(v49, v50, &v170);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10000CCA0(0x286D726F66726570, 0xE900000000000029, &v170);
      *(v48 + 22) = 2080;
      sub_10000BACC(&qword_100019B50, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v168 = *(v46 + 8);
      v168(v44, v45);
      v55 = sub_10000CCA0(v52, v54, &v170);

      *(v48 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s, %s: About to open URL %s", v48, 0x20u);
      swift_arrayDestroy();

      v56 = v159;
      v160 = *(v43 + 8);
      v160(v156, v56);
    }

    else
    {

      v168 = *(v46 + 8);
      v168(v44, v45);
      v57 = v159;
      v160 = *(v43 + 8);
      v160(v42, v57);
    }

    v58 = v0[14];
    v59 = v0[12];
    v60 = v0[10];
    v61 = [objc_allocWithZone(LSApplicationWorkspace) init];
    URL._bridgeToObjectiveC()(v62);
    v64 = v63;
    sub_10000B278(&_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v61 openSensitiveURL:v64 withOptions:isa];

    static Logger.intents.getter();
    v163(v59, v58, v60);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = v0[28];
    v70 = v0[25];
    v71 = v0[14];
    v72 = v0[12];
    v73 = v0[10];
    if (v68)
    {
      v164 = v0[14];
      v74 = v0[9];
      v157 = v0[25];
      v75 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *v75 = 136315650;
      v0[4] = v74;

      v76 = String.init<A>(describing:)();
      v153 = v69;
      v78 = sub_10000CCA0(v76, v77, &v170);

      *(v75 + 4) = v78;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_10000CCA0(0x286D726F66726570, 0xE900000000000029, &v170);
      *(v75 + 22) = 2080;
      sub_10000BACC(&qword_100019B50, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v168(v72, v73);
      v82 = sub_10000CCA0(v79, v81, &v170);

      *(v75 + 24) = v82;
      _os_log_impl(&_mh_execute_header, v66, v67, "%s, %s: Did open URL %s", v75, 0x20u);
      swift_arrayDestroy();

      v160(v153, v157);
      v168(v164, v73);
    }

    else
    {

      v168(v72, v73);
      v160(v69, v70);
      v168(v71, v73);
    }
  }

  v83 = v0[17];
  static IntentResult.result<>()();
  sub_10000BA6C(v83, &qword_100019AC8, &qword_1000116D0);

  v84 = v0[1];

  return v84();
}

uint64_t sub_10000A4F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100019570 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10000BBB8(v2, qword_100019E00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000A5B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100007B4C(&qword_100019B90, &qword_100011718);
  __chkstk_darwin(v2 - 8, v3);
  v4 = sub_100007B4C(&qword_100019B98, &qword_100011720);
  __chkstk_darwin(v4, v5);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100010180;
  v6._countAndFlagsBits = 0x1000000000000014;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  sub_100007B4C(&unk_100019BA0, &qword_100011750);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10000A74C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A7EC;

  return sub_100008EB4(a1, v4);
}

uint64_t sub_10000A7EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000A8E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000B3A8();
  *a1 = result;
  return result;
}

unint64_t sub_10000A90C()
{
  result = qword_100019AE0;
  if (!qword_100019AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AE0);
  }

  return result;
}

uint64_t sub_10000A96C(uint64_t a1)
{
  v2 = sub_10000A90C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000AA58(uint64_t a1)
{
  type metadata accessor for IntentSystemContext.Source();
  sub_10000BACC(&qword_100019B68, &type metadata accessor for IntentSystemContext.Source, &protocol conformance descriptor for IntentSystemContext.Source);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000AB68(a1, v2);
}

unint64_t sub_10000AAF0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000AD28(a1, a2, v4);
}

unint64_t sub_10000AB68(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for IntentSystemContext.Source();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10000BACC(&qword_100019B70, &type metadata accessor for IntentSystemContext.Source, &protocol conformance descriptor for IntentSystemContext.Source);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10000AD28(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000ADE0(uint64_t a1)
{
  v2 = sub_100007B4C(&qword_100019B60, &qword_1000116F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007B4C(&qword_100019B78, &qword_100011700);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BB14(v10, v6, &qword_100019B60, &qword_1000116F8);
      result = sub_10000AA58(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for IntentSystemContext.Source();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_10000AFC8(uint64_t a1)
{
  sub_100007B4C(&qword_100019B58, &qword_1000116F0);
  v1 = sub_100007B4C(&qword_100019B60, &qword_1000116F8);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000114B0;
  v5 = v4 + v3;
  v6 = *(v1 + 48);
  v7 = enum case for IntentSystemContext.Source.shortcuts(_:);
  v8 = type metadata accessor for IntentSystemContext.Source();
  v9 = *(*(v8 - 8) + 104);
  v9(v5, v7, v8);
  *(v5 + v6) = 3;
  v10 = *(v1 + 48);
  v9(v5 + v2, enum case for IntentSystemContext.Source.spotlight(_:), v8);
  *(v5 + v2 + v10) = 4;
  v11 = *(v1 + 48);
  v9(v5 + 2 * v2, enum case for IntentSystemContext.Source.siri(_:), v8);
  *(v5 + 2 * v2 + v11) = 5;
  v12 = *(v1 + 48);
  v9(v5 + 3 * v2, enum case for IntentSystemContext.Source.actionButton(_:), v8);
  *(v5 + 3 * v2 + v12) = 11;
  v13 = *(v1 + 48);
  v9(v5 + 4 * v2, enum case for IntentSystemContext.Source.controlCenter(_:), v8);
  *(v5 + 4 * v2 + v13) = 12;
  v14 = *(v1 + 48);
  v9(v5 + 5 * v2, enum case for IntentSystemContext.Source.widget(_:), v8);
  *(v5 + 5 * v2 + v14) = 13;
  v15 = sub_10000ADE0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v15 + 16) && (v16 = sub_10000AA58(a1), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

unint64_t sub_10000B278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007B4C(&qword_100019B80, &qword_100011708);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BB14(v4, &v13, &qword_100019B88, &qword_100011710);
      v5 = v13;
      v6 = v14;
      result = sub_10000AAF0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000BB7C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_10000B3A8()
{
  v22 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22, v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for IntentPerson.ParameterMode();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007B4C(&qword_100019B20, &qword_1000116B0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_100007B4C(&qword_100019B28, &qword_1000116B8);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v21 - v14;
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  sub_100007B4C(&qword_100019B30, &qword_1000116C0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v17 + 56))(v15, 1, 1, v16);
  IntentDialog.init(stringLiteral:)();
  v19 = type metadata accessor for IntentDialog();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  (*(v4 + 104))(v7, enum case for IntentPerson.ParameterMode.contact(_:), v21);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v22);
  return IntentParameter<>.init(title:description:mode:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_10000B708()
{
  v0 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v0 - 8, v1);
  v10[0] = type metadata accessor for AppShortcut();
  v2 = *(v10[0] - 8);
  __chkstk_darwin(v10[0], v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = sub_10000B3A8();
  sub_100007B4C(&qword_100019B08, &qword_100011698);
  sub_100007B4C(&qword_100019B10, &qword_1000116A0);
  *(swift_allocObject() + 16) = xmmword_1000114C0;
  sub_10000A90C();
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v6 = static AppShortcutsBuilder.buildExpression(_:)();
  (*(v2 + 8))(v5, v10[0]);
  sub_100007B4C(&qword_100019B18, &qword_1000116A8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100011350;
  *(v7 + 32) = v6;
  v8 = static AppShortcutsBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10000B9FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007B4C(&qword_100019AC8, &qword_1000116D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BA6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100007B4C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000BACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000BB14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100007B4C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_10000BB7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000BB8C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000BBB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000BBF0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000BC54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_10000BCF0()
{
  v1 = OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate____lazy_storage___systemApertureElementProvider;
  v2 = *(v0 + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate____lazy_storage___systemApertureElementProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate____lazy_storage___systemApertureElementProvider);
  }

  else
  {
    type metadata accessor for LiveActivityElementViewController();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10000BEB8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2, v3);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5, v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchTime();
  v34 = *(v41 - 8);
  v9 = __chkstk_darwin(v41, v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v20 = v1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "%@,refreshSize", v23, 0xCu);
    sub_10000D248(v24);
  }

  (*(v16 + 8))(v19, v15);
  sub_100008C40(0, &unk_100019C50, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v34 = *(v34 + 8);
  (v34)(v11, v41);
  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  aBlock[4] = sub_10000CC80;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BC54;
  aBlock[3] = &unk_100014F98;
  v28 = _Block_copy(aBlock);
  v29 = v20;

  v30 = v35;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000E244(&unk_100019A60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007B4C(&unk_100019C60, &unk_100011460);
  sub_100008CE0(&qword_100019A70, &unk_100019C60, &unk_100011460, &protocol conformance descriptor for [A]);
  v31 = v38;
  v32 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v28);

  (*(v39 + 8))(v31, v32);
  (*(v36 + 8))(v30, v37);
  return (v34)(v14, v41);
}

void sub_10000C3F8(char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window;
  v8 = *&a1[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window];
  if (v8)
  {
    v9 = [v8 windowScene];
    if (v9)
    {
      v25 = v9;
      type metadata accessor for ActivityScene();
      if (swift_dynamicCastClass())
      {
        if (*&a1[v7])
        {
          v10 = [*&a1[v7] rootViewController];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 view];
            if (v12)
            {
              v13 = v12;
              [v12 sizeToFit];

              v14 = [v11 view];
              if (v14)
              {
                v15 = v14;
                [v14 bounds];

                v16 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
                ActivitySceneMetrics.init(size:cornerRadius:)();
                dispatch thunk of ActivityScene.resolvedMetrics.setter();

                goto LABEL_9;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return;
          }
        }

LABEL_9:
        v17 = v25;

        return;
      }
    }
  }

  static Logger.initiatorUI.getter();
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "%@: Unable to resize - window scene is not an ActivityScene scene", v21, 0xCu);
    sub_10000D248(v22);
  }

  (*(v3 + 8))(v6, v2);
}

void sub_10000C6CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10000BEB8();
  }
}

uint64_t sub_10000C720(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008C40(0, &unk_100019C50, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_10000E2D4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000BC54;
  aBlock[3] = &unk_100015038;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  v17 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000E244(&unk_100019A60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100007B4C(&unk_100019C60, &unk_100011460);
  sub_100008CE0(&qword_100019A70, &unk_100019C60, &unk_100011460, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v19);
}

id sub_10000CA1C(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v3 = result;
    [result sizeToFit];

    result = [a1 view];
    if (result)
    {
      v4 = result;
      [result bounds];

      v5 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
      ActivitySceneMetrics.init(size:cornerRadius:)();
      return dispatch thunk of ActivityScene.resolvedMetrics.setter();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10000CAE0()
{
  *&v0[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate____lazy_storage___systemApertureElementProvider] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_10000DF70(&_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_cancellableSet] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for LiveActivitySceneDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10000CB94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000CC48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CC88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000CCA0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000CD6C(v11, 0, 0, 1, a1, a2);
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
    sub_10000E2DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007AC0(v11);
  return v7;
}

unint64_t sub_10000CD6C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000CE78(a5, a6);
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

char *sub_10000CE78(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000CEC4(a1, a2);
  sub_10000CFF4(&off_100014C18);
  return v3;
}

char *sub_10000CEC4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000D0E0(v5, 0);
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
        v7 = sub_10000D0E0(v10, 0);
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

uint64_t sub_10000CFF4(uint64_t result)
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

  result = sub_10000D154(result, v11, 1, v3);
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

void *sub_10000D0E0(uint64_t a1, uint64_t a2)
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

  sub_100007B4C(&unk_100019CD0, &qword_1000117B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000D154(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007B4C(&unk_100019CD0, &qword_1000117B8);
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

uint64_t sub_10000D248(uint64_t a1)
{
  v2 = sub_100007B4C(&qword_100019C70, &qword_100011798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000D2B0(void *a1)
{
  v3 = type metadata accessor for Logger();
  v91 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007B4C(&unk_100019C90, &qword_1000117A8);
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin(v7, v8);
  v88 = v86 - v9;
  v10 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v10 - 8, v11);
  v12 = type metadata accessor for LiveActivityView();
  v13 = *(v12 - 8);
  v15 = __chkstk_darwin(v12, v14);
  v17 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = v86 - v19;
  type metadata accessor for ActivityScene();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v23 = a1;
    if ([v22 SBUI_isHostedBySystemAperture])
    {
      v91 = sub_10000BCF0();
      [v22 setSystemApertureElementViewControllerProvider:v91];

      v24 = v91;

      return;
    }

    v87 = v23;
    v38 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v22];
    v39 = *&v1[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window];
    *&v1[OBJC_IVAR____TtC16SafetyMonitorApp25LiveActivitySceneDelegate_window] = v38;
    v40 = v38;

    v86[1] = type metadata accessor for SessionViewModel();
    static SessionViewModel.shared.getter();
    swift_allocObject();
    v91 = v1;
    swift_unknownObjectWeakInit();
    LiveActivityView.init(with:onLockscreen:resizeHandler:)();
    v41 = objc_allocWithZone(sub_100007B4C(&qword_100019A20, &qword_100011440));
    (*(v13 + 16))(v17, v20, v12);
    v42 = UIHostingController.init(rootView:)();
    (*(v13 + 8))(v20, v12);
    v43 = v42;
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();

    v44 = v43;
    v45 = [v44 view];
    if (v45)
    {
      v46 = v45;
      v47 = [objc_opt_self() clearColor];
      [v46 setBackgroundColor:v47];

      [v40 setRootViewController:v44];
      [v40 makeKeyAndVisible];
      v48 = [v44 view];
      if (v48)
      {
        v49 = v48;
        [v48 sizeToFit];

        v50 = [v44 view];
        if (v50)
        {
          v51 = v50;
          [v50 setTranslatesAutoresizingMaskIntoConstraints:0];

          sub_100007B4C(&unk_100019CA0, &qword_100011458);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_100011340;
          v53 = [v44 view];
          if (v53)
          {
            v54 = v53;
            v55 = [v53 leftAnchor];

            v56 = v40;
            v57 = [v56 leftAnchor];
            v58 = [v55 constraintEqualToAnchor:v57];

            *(v52 + 32) = v58;
            v59 = [v44 view];
            if (v59)
            {
              v60 = v59;
              v86[0] = v22;
              v61 = [v59 rightAnchor];

              v62 = [v56 rightAnchor];
              v63 = [v61 constraintEqualToAnchor:v62];

              *(v52 + 40) = v63;
              v64 = [v44 view];
              if (v64)
              {
                v65 = v64;
                v66 = [v64 topAnchor];

                v67 = [v56 topAnchor];
                v68 = [v66 constraintEqualToAnchor:v67];

                *(v52 + 48) = v68;
                v69 = [v44 view];
                if (v69)
                {
                  v70 = v69;
                  v71 = objc_opt_self();
                  v72 = [v70 bottomAnchor];

                  v73 = [v56 bottomAnchor];
                  v74 = [v72 constraintEqualToAnchor:v73];

                  *(v52 + 56) = v74;
                  sub_100008C40(0, &unk_100019A50, NSLayoutConstraint_ptr);
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v71 activateConstraints:isa];

                  v76 = [v44 view];
                  if (v76)
                  {
                    [v76 bounds];

                    v77 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
                    ActivitySceneMetrics.init(size:cornerRadius:)();
                    v78 = v86[0];
                    dispatch thunk of ActivityScene.resolvedMetrics.setter();
                    static SessionViewModel.shared.getter();
                    sub_10000E244(&qword_100019CB0, &type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
                    v79 = ObservableObject<>.objectWillChange.getter();

                    v92[0] = v79;
                    type metadata accessor for ObservableObjectPublisher();
                    v80 = v88;
                    Publisher<>.makeConnectable()();

                    sub_100008CE0(&qword_100019CB8, &unk_100019C90, &qword_1000117A8, &protocol conformance descriptor for Publishers.MakeConnectable<A>);
                    v81 = v90;
                    v82 = ConnectablePublisher.autoconnect()();
                    (*(v89 + 8))(v80, v81);
                    v92[0] = v82;
                    v83 = swift_allocObject();
                    *(v83 + 16) = v44;
                    *(v83 + 24) = v78;
                    v84 = v87;
                    v85 = v44;
                    sub_100007B4C(&qword_100019CC0, &qword_1000117B0);
                    sub_100008CE0(&qword_100019CC8, &qword_100019CC0, &qword_1000117B0, &protocol conformance descriptor for Publishers.Autoconnect<A>);
                    Publisher<>.sink(receiveValue:)();

                    swift_beginAccess();
                    AnyCancellable.store(in:)();
                    swift_endAccess();

                    return;
                  }

                  goto LABEL_25;
                }

LABEL_24:
                __break(1u);
LABEL_25:
                __break(1u);
                return;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v90 = v3;
  static Logger.initiatorUI.getter();
  v25 = a1;
  v26 = v1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v92[0] = v31;
    *v29 = 138412546;
    *(v29 + 4) = v26;
    *v30 = v26;
    *(v29 + 12) = 2080;
    v32 = v26;
    v33 = [v25 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_10000CCA0(v34, v36, v92);

    *(v29 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "%@: Not a session scene: %s", v29, 0x16u);
    sub_10000D248(v30);

    sub_100007AC0(v31);
  }

  (*(v91 + 1))(v6, v90);
}

uint64_t sub_10000DDD8(const char *a1, ...)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.initiatorUI.getter();
  v8 = v1;
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
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 0xCu);
    sub_10000D248(v12);
  }

  (*(v4 + 8))(v7, v3);
  return sub_10000BEB8();
}

unint64_t sub_10000DF70(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100007B4C(&qword_100019C78, &qword_1000117A0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10000E244(&qword_100019C80, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_10000E244(&qword_100019C88, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10000E204()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E244(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000E28C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E2DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E344()
{
  v0 = sub_100007B4C(&qword_100019D48, &qword_100011818);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v6 - v3;
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000E528();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000E4A8();
  static App.main()();
  return 0;
}

unint64_t sub_10000E4A8()
{
  result = qword_100019D40;
  if (!qword_100019D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019D40);
  }

  return result;
}

unint64_t sub_10000E528()
{
  result = qword_100019D50;
  if (!qword_100019D50)
  {
    sub_100007B94(&qword_100019D48, &qword_100011818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019D50);
  }

  return result;
}