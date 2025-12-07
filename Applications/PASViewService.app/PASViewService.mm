uint64_t PASVSSetupFlowController.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100006FC8(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice, &qword_1000259E8, &unk_100017410);
  sub_100006FC8(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_viewDetails, &qword_1000259F0, &unk_100017E90);
  sub_100001E70(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_delegate);
  sub_1000054E8((v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_dtoStatusProvider));
  return v0;
}

uint64_t sub_100001E28(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t PASVSSetupFlowController.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100006FC8(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice, &qword_1000259E8, &unk_100017410);
  sub_100006FC8(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_viewDetails, &qword_1000259F0, &unk_100017E90);
  sub_100001E70(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_delegate);
  sub_1000054E8((v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_dtoStatusProvider));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

Swift::Void __swiftcall PASVSSetupFlowController.initiateClientConnectionIfEligible()()
{
  v1 = v0;
  v2 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "PASVSSetupFlowController initiateClientConnectionIfEligible", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v1;
  sub_100002B58(0, 0, v4, &unk_100017430, v14);
}

uint64_t sub_100002194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_100002288, v7, v6);
}

uint64_t sub_100002288()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {

    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1000023E4;

    return sub_100015A50();
  }

  else
  {

    v4 = v0[2];
    v5 = swift_retain_n();
    sub_100006334(v5, v4, sub_1000056DC, v4);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000023E4(char a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_10000250C, v4, v3);
}

uint64_t sub_10000250C()
{
  v1 = *(v0 + 88);

  if (v1)
  {
    swift_unknownObjectRelease();
    v2 = *(v0 + 16);
    v3 = swift_retain_n();
    sub_100006334(v3, v2, sub_1000056DC, v2);
  }

  else
  {
    static PASLogger.viewService.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "PASVSSetupFlowController initiateClientConnectionIfEligible skipping local authentication per delegate", v6, 2u);
    }

    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);

    (*(v8 + 8))(v7, v9);
    v11 = [*(v10 + 32) delegate];
    if (v11)
    {
      [v11 activateClientConnection];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000026E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007348;

  return sub_100002194(a1, v4, v5, v6);
}

BOOL sub_100002798(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  v2 = v1;
  if (v1)
  {
    [v1 activateClientConnection];
    swift_unknownObjectRelease();
  }

  return v2 == 0;
}

uint64_t sub_1000027F4(char a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v26[1] = a4;
  v27 = a3;
  v5 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  __chkstk_darwin(v5 - 8);
  v7 = v26 - v6;
  v8 = sub_100001E28(&qword_100025B58, &qword_1000175B8);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - v9;
  v11 = type metadata accessor for PASLocatedExtension();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v18 = v26 - v17;
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
      swift_beginAccess();
      sub_100006F60(v20 + v21, v10, &qword_100025B58, &qword_1000175B8);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        swift_unknownObjectRelease();
        Strong = sub_100006FC8(v10, &qword_100025B58, &qword_1000175B8);
      }

      else
      {
        v26[0] = *(v12 + 32);
        (v26[0])(v18, v10, v11);
        v22 = type metadata accessor for TaskPriority();
        (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
        (*(v12 + 16))(v15, v18, v11);
        type metadata accessor for MainActor();
        v23 = static MainActor.shared.getter();
        v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        *(v25 + 24) = &protocol witness table for MainActor;
        (v26[0])(v25 + v24, v15, v11);
        sub_100002B58(0, 0, v7, &unk_1000175C0, v25);
        swift_unknownObjectRelease();

        Strong = (*(v12 + 8))(v18, v11);
      }
    }

    return v27(Strong);
  }

  return result;
}

uint64_t sub_100002B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100006F60(a3, v25 - v10, &unk_100025EC0, &qword_100017420);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006FC8(v11, &unk_100025EC0, &qword_100017420);
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

      sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);

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

  sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);
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

uint64_t sub_100002E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v39 = a3;
  v40 = a4;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v37 - v18;
  if (a2)
  {
    v37[0] = a5;
    v37[1] = a7;
    v38 = a6;
    static PASLogger.common.getter();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Local authentication failed with error %{public}@", v22, 0xCu);
      sub_100006FC8(v23, &qword_1000259F8, &qword_100017438);
    }

    (*(v14 + 8))(v17, v13);
    v25 = *(v39 + 32);
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v41 = 0xD00000000000001ELL;
    v42 = 0x800000010001AE00;
    v26._countAndFlagsBits = v40;
    v26._object = v37[0];
    String.append(_:)(v26);
    String.LocalizationValue.init(_:)();
    type metadata accessor for PASVSPrimaryViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = objc_opt_self();
    v29 = [v28 bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v30 = String._bridgeToObjectiveC()();

    String.LocalizationValue.init(_:)();
    v31 = [v28 bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v32 = String._bridgeToObjectiveC()();

    [v25 showErrorWithTitle:v30 message:v32];

    a6 = v38;
  }

  else
  {
    static PASLogger.common.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Local authentication succeeded continue with setup", v35, 2u);
    }

    (*(v14 + 8))(v19, v13);
  }

  return a6(a2 == 0);
}

uint64_t sub_100003300(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

Swift::Void __swiftcall PASVSSetupFlowController.activateClientConnection()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "PASVSSetupFlowController activateClientConnection", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 88);

  v11(sub_100004BD4, v1, ObjectType, v9);
  (*(v9 + 136))(ObjectType, v9);
}

void sub_100003554(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v91 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  __chkstk_darwin(v7 - 8);
  v86 = &v85 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v90 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v85 - v14;
  v16 = __chkstk_darwin(v13);
  v89 = &v85 - v17;
  v18 = __chkstk_darwin(v16);
  v87 = &v85 - v19;
  v20 = __chkstk_darwin(v18);
  v88 = &v85 - v21;
  __chkstk_darwin(v20);
  v23 = &v85 - v22;
  static PASLogger.viewService.getter();
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v85 = v15;
    v28 = v2;
    v29 = v10;
    v30 = v9;
    v31 = v27;
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    *(v31 + 4) = v24;
    *v32 = v24;
    v33 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "PASVSSetupFlowController SKEventHandler invoked for event: %{public}@", v31, 0xCu);
    sub_100006FC8(v32, &qword_1000259F8, &qword_100017438);

    v9 = v30;
    v10 = v29;
    v2 = v28;
    v15 = v85;
  }

  v34 = *(v10 + 8);
  v34(v23, v9);
  v35 = [v24 eventType];
  if (v35 <= 119)
  {
    if (v35 == 30)
    {
      v59 = v89;
      static PASLogger.viewService.getter();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "PASVSSetupFlowController: Exiting PASViewService", v62, 2u);
      }

      v58 = v59;
      goto LABEL_29;
    }

    if (v35 == 41)
    {
      static PASLogger.viewService.getter();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Triggering error flow", v38, 2u);
      }

      v34(v15, v9);
      v39 = *(v2 + 32);
      String.LocalizationValue.init(_:)();
      type metadata accessor for PASVSPrimaryViewController(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = objc_opt_self();
      v42 = [v41 bundleForClass:ObjCClassFromMetadata];
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v43 = String._bridgeToObjectiveC()();

      String.LocalizationValue.init(_:)();
      v44 = [v41 bundleForClass:ObjCClassFromMetadata];
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v45 = String._bridgeToObjectiveC()();

      [v39 showErrorWithTitle:v43 message:v45];

      return;
    }

    goto LABEL_13;
  }

  if (v35 != 140)
  {
    if (v35 == 120)
    {
      v46 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v48 = (*(v46 + 32))(ObjectType, v46);
      v49 = *(v2 + 32);
      if (v48 == 3)
      {
        [v49 showPinEntryError];
      }

      else
      {
        [v49 authRequested];
      }

      return;
    }

LABEL_13:
    v50 = v90;
    static PASLogger.viewService.getter();
    v51 = v24;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = v9;
      v56 = swift_slowAlloc();
      *v54 = 138543362;
      *(v54 + 4) = v51;
      *v56 = v51;
      v57 = v51;
      _os_log_impl(&_mh_execute_header, v52, v53, "PASVSSetupFlowController: Got unhandled event %{public}@", v54, 0xCu);
      sub_100006FC8(v56, &qword_1000259F8, &qword_100017438);
      v9 = v55;
    }

    v58 = v50;
    goto LABEL_29;
  }

  v63 = [v24 error];
  if (v63)
  {
    v64 = v63;
    v65 = v88;
    static PASLogger.viewService.getter();
    v66 = v64;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = v9;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138543362;
      v72 = v66;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 4) = v73;
      *v71 = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "PASVSSetupFlowController: Pairing completed with error: %{public}@", v70, 0xCu);
      sub_100006FC8(v71, &qword_1000259F8, &qword_100017438);

      v9 = v69;
    }

    else
    {
      v72 = v67;
      v67 = v66;
    }

    v58 = v65;
LABEL_29:
    v34(v58, v9);
    return;
  }

  v74 = v87;
  static PASLogger.viewService.getter();
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v75, v76, "PASVSSetupFlowController: Activating Message Session", v77, 2u);
  }

  v34(v74, v9);
  v78 = *(v2 + 24);
  v79 = swift_getObjectType();
  v80 = (*(v78 + 128))(v79, v78);
  if (v80)
  {
    v81 = v80;
    v82 = type metadata accessor for TaskPriority();
    v83 = v86;
    (*(*(v82 - 8) + 56))(v86, 1, 1, v82);
    v84 = swift_allocObject();
    v84[2] = 0;
    v84[3] = 0;
    v84[4] = v2;
    v84[5] = v81;

    sub_100002B58(0, 0, v83, &unk_100017578, v84);
  }
}

Swift::Void __swiftcall PASVSSetupFlowController.handleScannedCode(_:)(Swift::String a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(SKAuthenticationResponseEvent);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithPassword:v7];

  v9 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v9 + 144))(v8, ObjectType, v9);
  static PASLogger.viewService.getter();
  v11 = v8;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 141558274;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "PASVSSetupFlowController post pairing code: %{mask.hash}@", v14, 0x16u);
    sub_100006FC8(v15, &qword_1000259F8, &qword_100017438);
  }

  else
  {
    v16 = v12;
    v12 = v11;
  }

  (*(v3 + 8))(v5, v2);
}

Swift::Void __swiftcall PASVSSetupFlowController.enableManualPairing()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "PASVSSetupFlowController manual pairing mode enabled...", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v9 + 40))(3, ObjectType, v9);
  [*(v1 + 32) showManualPinEntry];
}

Swift::Void __swiftcall PASVSSetupFlowController.invalidateClientConnection()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "PASVSSetupFlowController Connection ended, invalidate server", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  (*(v9 + 152))(ObjectType, v9);
}

uint64_t sub_1000044D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_100004518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return _swift_task_switch(sub_100004538, 0, 0);
}

uint64_t sub_100004538()
{
  v1 = v0[19];
  v2 = *(v0[18] + 32);
  v0[2] = v0;
  v0[3] = sub_10000465C;
  v3 = swift_continuation_init();
  v0[17] = sub_100001E28(&qword_100025B38, &qword_100017580);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100004750;
  v0[13] = &unk_100020D30;
  v0[14] = v3;
  [v2 authCompleted:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000465C()
{

  return _swift_task_switch(sub_10000473C, 0, 0);
}

uint64_t sub_100004750(uint64_t a1)
{
  v1 = *sub_100006DEC((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100004798(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100004810(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004890@<X0>(void *a3@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  *a3 = v4;
  return result;
}

uint64_t sub_1000048D4(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100004910(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004964(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000049F4(void *a1, uint64_t *a2)
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

uint64_t sub_100004A7C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100004AC4@<X0>(uint64_t *a2@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100004AF0(uint64_t a1)
{
  v2 = sub_1000072CC(&qword_100025B90, &unk_1000177AC);
  v3 = sub_1000072CC(&qword_100025B98, &unk_100017700);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004B88(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100004BD8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100004CD0;

  return v6(a1);
}

uint64_t sub_100004CD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

_BYTE **sub_100004DC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100004DD8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *sub_100004E4C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100004EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100004FD0;

  return v9(a1, a2, a3);
}

uint64_t sub_100004FD0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t type metadata accessor for PASVSSetupFlowController(uint64_t a1)
{
  result = qword_100025A28;
  if (!qword_100025A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005134(uint64_t a1)
{
  sub_10000520C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000520C(uint64_t a1)
{
  if (!qword_100025DE0)
  {
    type metadata accessor for PASDevice();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100025DE0);
    }
  }
}

uint64_t sub_100005264()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000052AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000536C;

  return sub_100004518(a1, v4, v5, v7, v6);
}

uint64_t sub_10000536C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005470(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000054E8(void *a1)
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

uint64_t sub_100005534()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000556C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007348;

  return sub_100004BD8(a1, v4);
}

uint64_t sub_100005624(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000536C;

  return sub_100004BD8(a1, v4);
}

Swift::Int sub_1000056E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001E28(&qword_100025B50, &qword_1000175B0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100006EA0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100006F04(v23, &v36);
        sub_100005470(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100006EA0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_10000599C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100015328(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100005B64();
      goto LABEL_7;
    }

    sub_1000056E4(v13, a3 & 1);
    v19 = sub_100015328(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100006F04(a2, v21);
      return sub_100005AE8(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_1000054E8(v17);

  return sub_100006EA0(a1, v17);
}

_OWORD *sub_100005AE8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100006EA0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_100005B64()
{
  v1 = v0;
  sub_100001E28(&qword_100025B50, &qword_1000175B0);
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
        v18 = 40 * v17;
        sub_100006F04(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100005470(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100006EA0(v22, (*(v4 + 56) + v17));
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

unint64_t sub_100005D08(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = type metadata accessor for Logger();
  v36 = *(v37 - 8);
  v6 = __chkstk_darwin(v37);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  sub_100001E28(&qword_100025B40, &qword_1000175A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100017400;
  LODWORD(v42) = 1037;
  AnyHashable.init<A>(_:)();
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v42 = 0xD00000000000001DLL;
  v43 = 0x800000010001AE40;
  v35._countAndFlagsBits = a1;
  v14._countAndFlagsBits = a1;
  v35._object = a2;
  v14._object = a2;
  String.append(_:)(v14);
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = sub_10000FB30(inited);
  swift_setDeallocating();
  sub_100006FC8(inited + 32, &qword_100025B48, &qword_1000175A8);
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isFeatureEnabled];

  if (v22)
  {
    LODWORD(v40) = 1061;
    AnyHashable.init<A>(_:)();
    v41 = &type metadata for Bool;
    LOBYTE(v40) = 1;
    sub_100006EA0(&v40, v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v20;
    sub_10000599C(v39, &v42, isUniquelyReferenced_nonNull_native);
    sub_100006EB0(&v42);
    v20 = v38;
  }

  if (a3 == 2)
  {
    static PASLogger.viewService.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "PASVSSetupFlowController Biometric type is face id", v33, 2u);
    }

    (*(v36 + 8))(v8, v37);
  }

  else if (a3 == 1)
  {
    static PASLogger.viewService.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "PASVSSetupFlowController Biometric type is touch id", v26, 2u);
    }

    (*(v36 + 8))(v10, v37);
    LODWORD(v40) = 1030;
    AnyHashable.init<A>(_:)();
    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    *&v40 = 0xD00000000000001BLL;
    *(&v40 + 1) = 0x800000010001AE60;
    String.append(_:)(v35);
    String.LocalizationValue.init(_:)();
    v27 = [v16 bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    v28 = String.init(localized:table:bundle:locale:comment:)();
    v41 = &type metadata for String;
    *&v40 = v28;
    *(&v40 + 1) = v29;
    sub_100006EA0(&v40, v39);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v20;
    sub_10000599C(v39, &v42, v30);
    sub_100006EB0(&v42);
    return v38;
  }

  return v20;
}

void sub_100006334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a1;
  v7 = type metadata accessor for PASDeviceClass();
  v77 = *(v7 - 1);
  v78 = v7;
  __chkstk_darwin(v7);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v79 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PASDevice();
  v80 = *(v14 - 8);
  __chkstk_darwin(v14);
  v76 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v75 - v21;
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v83 = v23;
  v23[4] = a4;
  v24 = objc_allocWithZone(LAContext);

  v25 = [v24 init];
  v26 = objc_opt_self();
  v27 = [v26 sharedInstance];
  LODWORD(a2) = [v27 isFeatureEnabled];

  if (a2)
  {
    v28 = 1025;
  }

  else
  {
    v28 = 2;
  }

  aBlock = 0;
  v82 = v25;
  v29 = [v25 canEvaluatePolicy:v28 error:&aBlock];
  v30 = aBlock;
  if (!v29 || aBlock)
  {
    v42 = aBlock;
    static PASLogger.common.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543362;
      *(v45 + 4) = v42;
      *v46 = v30;
      v47 = v42;
      _os_log_impl(&_mh_execute_header, v43, v44, "Local authentication failed with error %{public}@", v45, 0xCu);
      sub_100006FC8(v46, &qword_1000259F8, &qword_100017438);
    }

    (*(v17 + 8))(v20, v16);
    v48 = OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice;
    v49 = v84;
    swift_beginAccess();
    v50 = v80;
    v51 = (*(v80 + 48))(v49 + v48, 1, v14);
    v78 = v42;
    if (v51)
    {
      v52 = 0xED00005343495254;
      v53 = 0x454D4F49425F4F4ELL;
    }

    else
    {
      v54 = v76;
      (*(v50 + 16))(v76, v49 + v48, v14);
      v53 = PASDevice.deviceBiometricKey.getter();
      v52 = v55;
      (*(v50 + 8))(v54, v14);
    }

    aBlock = 0;
    v86 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    aBlock = 0xD000000000000026;
    v86 = 0x800000010001AD70;
    v56._countAndFlagsBits = v53;
    v56._object = v52;
    String.append(_:)(v56);

    String.LocalizationValue.init(_:)();
    type metadata accessor for PASVSPrimaryViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v58 = objc_opt_self();
    v59 = [v58 bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_100006F60(v49 + OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_viewDetails, &aBlock, &qword_1000259F0, &unk_100017E90);
    v60 = v88;
    if (v88)
    {
      v61 = v89;
      sub_100006DEC(&aBlock, v88);
      (*(v61 + 1))(v60, v61);
      v63 = v62;
      sub_1000054E8(&aBlock);
      if (v63)
      {
      }
    }

    else
    {
      sub_100006FC8(&aBlock, &qword_1000259F0, &unk_100017E90);
    }

    v64 = *(v49 + 32);
    String.LocalizationValue.init(_:)();
    v65 = [v58 bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v66 = String._bridgeToObjectiveC()();

    isa = String._bridgeToObjectiveC()();

    [v64 showErrorWithTitle:v66 message:isa];
  }

  else
  {
    static PASLogger.common.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67240192;
      *(v33 + 4) = 1;
      _os_log_impl(&_mh_execute_header, v31, v32, "PASBiometryEvaluator result: %{BOOL,public}d", v33, 8u);
    }

    (*(v17 + 8))(v22, v16);
    v34 = OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice;
    v35 = v84;
    swift_beginAccess();
    v36 = v80;
    if ((*(v80 + 48))(v35 + v34, 1, v14) || (v68 = v76, (*(v36 + 16))(v76, v35 + v34, v14), v39 = PASDevice.deviceClassCodeName.getter(), v41 = v69, (*(v36 + 8))(v68, v14), !v41))
    {
      v38 = v77;
      v37 = v78;
      (*(v77 + 104))(v9, enum case for PASDeviceClass.unknown(_:), v78);
      v39 = PASDeviceClass.rawValue.getter();
      v41 = v40;
      (*(v38 + 8))(v9, v37);
    }

    v70 = [v26 sharedInstance];
    v71 = [v70 isFeatureEnabled];

    if (v71)
    {
      v72 = 1025;
    }

    else
    {
      v72 = 2;
    }

    v66 = v82;
    sub_100005D08(v39, v41, [v82 biometryType]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v73 = swift_allocObject();
    v73[2] = v35;
    v73[3] = v39;
    v73[4] = v41;
    v73[5] = sub_100006DE0;
    v73[6] = v83;
    v89 = sub_100006E78;
    v90 = v73;
    aBlock = _NSConcreteStackBlock;
    v86 = 1107296256;
    v87 = sub_100003300;
    v88 = &unk_100020DF8;
    v74 = _Block_copy(&aBlock);

    [v66 evaluatePolicy:v72 options:isa reply:v74];
    _Block_release(v74);
  }
}

uint64_t sub_100006D98(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

void *sub_100006DEC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100006E30()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_100006EA0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006F60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001E28(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006FC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001E28(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007028()
{
  v1 = type metadata accessor for PASLocatedExtension();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000070EC(uint64_t a1)
{
  v4 = *(type metadata accessor for PASLocatedExtension() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007348;

  return sub_1000141F4(a1, v6, v7, v1 + v5);
}

void sub_100007218(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000072CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000073CC()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000748C, 0, 0);
}

uint64_t sub_10000748C()
{
  v1 = v0[2];
  v2 = v1[10];
  v3 = v1[11];
  sub_100006DEC(v1 + 7, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    static PASLogger.viewService.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "PASVSProxCardValidator Suppressing Proximity Apple ID Sign In prox card - Device is in lost mode", v6, 2u);
    }

    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];

    (*(v8 + 8))(v7, v9);

    v10 = v0[1];

    return v10(0, 0, 0);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = sub_10000763C;

    return sub_1000078D8();
  }
}

uint64_t sub_10000763C(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_10000773C, 0, 0);
}

uint64_t sub_10000773C()
{
  v1 = v0[7];
  if (!v1)
  {

    v15 = 0;
    v9 = 0;
    v7 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  v2 = *(v0[2] + 136);
  if (v2)
  {
    v3 = v2;
    v4 = PASExtensionManifest.isAccountPickerAvailable.getter();

    if (v4)
    {
      v5 = [v1 username];
      if (v5)
      {
        v6 = v5;
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;
      }

      else
      {

        v7 = 0;
        v9 = 0;
      }

      goto LABEL_15;
    }
  }

  v10 = sub_100007FE8(v1);
  v11 = [v1 username];
  if (!v11)
  {

    v9 = 0;
    if (v10 != 4)
    {
      v14 = 0;
      v15 = 1;
      v7 = 0;
      goto LABEL_17;
    }

    v7 = 0;
    goto LABEL_15;
  }

  v12 = v11;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v13;

  if (v10 == 4)
  {
LABEL_15:
    v14 = 256;
    goto LABEL_16;
  }

  v14 = 0;
LABEL_16:
  v15 = 1;
LABEL_17:
  v16 = v0[1];

  return v16(v14 | v15, v7, v9);
}

uint64_t sub_1000078D8()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000079A4, 0, 0);
}

uint64_t sub_1000079A4()
{
  v1 = *(v0 + 24);
  v2 = v1[5];
  v3 = v1[6];
  sub_100006DEC(v1 + 2, v2);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_100007A5C;

  return dispatch thunk of ACAccountStoreProtocol.aa_primaryAppleAccount()(v2, v3);
}

uint64_t sub_100007A5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_100007CA8;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_100007B84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100007B84(uint64_t a1)
{
  v2 = v1[10];
  if (!v2)
  {
    static PASLogger.viewService.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v1[7];
    v7 = v1[4];
    v8 = v1[5];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "PASVSProxCardValidator Suppressing Proximity Apple ID Sign In prox card - No primary account found", v9, 2u);
    }

    (*(v8 + 8))(v6, v7);
  }

  v10 = v1[1];

  return v10(v2);
}

uint64_t sub_100007CA8(uint64_t a1)
{
  v19 = v1;
  static PASLogger.viewService.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v5 = v1[5];
    v17 = v1[6];
    v6 = v1[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    v1[2] = v4;
    swift_errorRetain();
    sub_100001E28(&qword_100025D18, &unk_100017958);
    v9 = String.init<A>(describing:)();
    v11 = sub_100014D80(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "PASVSProxCardValidator, failed trying to find local account %{public}s", v7, 0xCu);
    sub_1000054E8(v8);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v1[5];
    v12 = v1[6];
    v14 = v1[4];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v1[1];

  return v15(0);
}

uint64_t sub_100007EA0()
{
  sub_1000054E8((v0 + 16));
  sub_1000054E8((v0 + 56));
  sub_1000054E8((v0 + 96));

  return _swift_deallocClassInstance(v0, 144, 7);
}

__n128 sub_100007F14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007F28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_100007F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_100007FE8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 altDSIDForAccount:a1];

  if (!v4)
  {
    return 0;
  }

  v5 = [v2 sharedInstance];
  v6 = [v5 authKitAccountWithAltDSID:v4];

  if (!v6)
  {
    return 0;
  }

  v7 = [v2 sharedInstance];
  v8 = [v7 securityLevelForAccount:v6];

  return v8;
}

uint64_t sub_100008110@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100001E28(&qword_100025D30, &qword_1000179E0);
  v3 = v2 - 8;
  v4 = __chkstk_darwin(v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = Image.init(systemName:)();
  v10 = (v8 + *(sub_100001E28(&qword_100025D38, &qword_1000179E8) + 36));
  v11 = *(sub_100001E28(&qword_100025D40, &qword_1000179F0) + 28);
  v12 = enum case for Image.Scale.large(_:);
  v13 = type metadata accessor for Image.Scale();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *v8 = v9;
  v14 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v16 = (v8 + *(v3 + 44));
  *v16 = KeyPath;
  v16[1] = v14;
  LocalizedStringKey.init(stringLiteral:)();
  v17 = Text.init(_:tableName:bundle:comment:)();
  v19 = v18;
  LOBYTE(v12) = v20;
  v22 = v21;
  sub_10000856C(v8, v6);
  sub_10000856C(v6, a1);
  v23 = a1 + *(sub_100001E28(&qword_100025D48, &qword_100017A58) + 48);
  *v23 = v17;
  *(v23 + 8) = v19;
  *(v23 + 16) = v12 & 1;
  *(v23 + 24) = v22;
  sub_1000085DC(v17, v19, v12 & 1);

  sub_1000085EC(v8);
  sub_100008654(v17, v19, v12 & 1);

  return sub_1000085EC(v6);
}

double sub_100008394@<D0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_100001E28(&qword_100025D20, &qword_1000179D0);
  sub_100008110(a1 + *(v2 + 44));
  v3 = static Edge.Set.all.getter();
  v4 = a1 + *(sub_100001E28(&qword_100025D28, &qword_1000179D8) + 36);
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  return result;
}

uint64_t sub_100008448(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_100008514@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000856C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001E28(&qword_100025D30, &qword_1000179E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000085DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000085EC(uint64_t a1)
{
  v2 = sub_100001E28(&qword_100025D30, &qword_1000179E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100008668()
{
  result = qword_100025D50;
  if (!qword_100025D50)
  {
    sub_1000086F4(&qword_100025D28, &qword_1000179D8);
    sub_10000873C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D50);
  }

  return result;
}

uint64_t sub_1000086F4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000873C()
{
  result = qword_100025D58;
  if (!qword_100025D58)
  {
    sub_1000086F4(&unk_100025D60, &unk_100017A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D58);
  }

  return result;
}

NSString sub_1000087B4()
{
  result = String._bridgeToObjectiveC()();
  qword_100026200 = result;
  return result;
}

NSString sub_1000087EC()
{
  result = String._bridgeToObjectiveC()();
  qword_100026208 = result;
  return result;
}

id sub_1000088F8()
{
  v1 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController;
  v2 = *(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController);
  }

  else
  {
    v4 = [objc_allocWithZone(PRXCardContentViewController) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10000896C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController] = 0;
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate] = 0;
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter] = 0;
  v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_hasEligibleAccountForProxSetup] = 1;
  v3 = &v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_accountUserName];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetDevice;
  v5 = type metadata accessor for PASDevice();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetAccountOptionsType;
  v7 = type metadata accessor for PASTargetAccountOptionsType();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_proxyDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController] = 0;
  *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_pinEntryController] = 0;
  sub_100006F60(a1, &v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_viewDetails], &qword_100025E50, &qword_100017B68);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PASVSSetupEventPresenter(0);
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_100006FC8(a1, &qword_100025E50, &qword_100017B68);
  return v8;
}

void sub_100008B04()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v83 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v82 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PASDeviceClass();
  v91 = *(v6 - 8);
  __chkstk_darwin(v6);
  v85 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for PASDevice();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001E28(&qword_1000259E8, &unk_100017410);
  v10 = __chkstk_darwin(v9 - 8);
  v88 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v80 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "PASVSSetupEventPresenter: About to present prox card", v20, 2u);
  }

  (*(v15 + 8))(v17, v14);
  v21 = sub_1000088F8();
  [v21 setDismissalType:1];

  sub_1000099BC();
  v93 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController;
  v22 = *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController];
  v23 = String._bridgeToObjectiveC()();
  v99 = sub_100009744;
  v100 = 0;
  aBlock = _NSConcreteStackBlock;
  v96 = 1107296256;
  v97 = sub_10000E748;
  v98 = &unk_100021108;
  v24 = _Block_copy(&aBlock);
  v81 = objc_opt_self();
  v25 = [v81 actionWithTitle:v23 style:0 handler:v24];

  _Block_release(v24);

  [v22 setDismissButtonAction:v25];

  v26 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetDevice;
  swift_beginAccess();
  sub_100006F60(&v1[v26], v13, &qword_1000259E8, &unk_100017410);
  v27 = v90;
  v28 = v92;
  v87 = *(v90 + 48);
  v29 = v87(v13, 1, v92);
  v89 = v6;
  if (v29)
  {
    sub_100006FC8(v13, &qword_1000259E8, &unk_100017410);
    v98 = v6;
    v99 = &protocol witness table for PASDeviceClass;
    v30 = sub_10000DEC8(&aBlock);
    (*(v91 + 104))(v30, enum case for PASDeviceClass.unknown(_:), v6);
  }

  else
  {
    v31 = v84;
    (*(v27 + 16))(v84, v13, v28);
    sub_100006FC8(v13, &qword_1000259E8, &unk_100017410);
    PASDevice.deviceClass.getter();
    (*(v27 + 8))(v31, v28);
    sub_10000DF7C(v94, &aBlock);
  }

  sub_10000D4B8(&aBlock);
  v33 = v32;
  sub_1000054E8(&aBlock);
  v34 = v93;
  v35 = [*&v1[v93] contentView];
  [v35 addSubview:v33];

  v36 = [*&v1[v34] contentView];
  v37 = [v36 mainContentGuide];

  v86 = objc_opt_self();
  sub_100001E28(&qword_100025EA0, &qword_100017B90);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100017A70;
  v39 = [v33 topAnchor];
  v40 = [v37 topAnchor];
  v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40];

  *(v38 + 32) = v41;
  v42 = [v33 bottomAnchor];
  v43 = [v37 bottomAnchor];
  v44 = [v42 constraintLessThanOrEqualToAnchor:v43];

  *(v38 + 40) = v44;
  v45 = [v33 centerXAnchor];
  v46 = [v37 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v38 + 48) = v47;
  v48 = [v33 centerYAnchor];
  v49 = [v37 centerYAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v38 + 56) = v50;
  sub_10000DF2C(0, &qword_100025EA8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v86 activateConstraints:isa];

  v52 = v88;
  sub_100006F60(&v1[v26], v88, &qword_1000259E8, &unk_100017410);
  v53 = v92;
  if (v87(v52, 1, v92))
  {
    sub_100006FC8(v52, &qword_1000259E8, &unk_100017410);
    v54 = v89;
LABEL_8:
    v55 = v91;
    v56 = v85;
    (*(v91 + 104))(v85, enum case for PASDeviceClass.unknown(_:), v54);
    v57 = PASDeviceClass.rawValue.getter();
    v59 = v58;
    (*(v55 + 8))(v56, v54);

    goto LABEL_10;
  }

  v60 = v53;
  v61 = v90;
  v62 = v84;
  (*(v90 + 16))(v84, v52, v60);
  sub_100006FC8(v52, &qword_1000259E8, &unk_100017410);
  v57 = PASDevice.deviceClassCodeName.getter();
  v59 = v63;
  (*(v61 + 8))(v62, v60);
  v54 = v89;
  if (!v59)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_hasEligibleAccountForProxSetup] == 1)
  {
    sub_10000A22C(v57, v59);

    sub_10000A954();
    v64 = *&v1[v93];
    v65 = swift_allocObject();
    *(v65 + 16) = v1;
    v66 = v64;
    v67 = v1;
    v68 = String._bridgeToObjectiveC()();

    v99 = sub_10000DF74;
    v100 = v65;
    aBlock = _NSConcreteStackBlock;
    v96 = 1107296256;
    v97 = sub_10000E748;
    v98 = &unk_100021158;
    v69 = _Block_copy(&aBlock);
    v70 = [v81 actionWithTitle:v68 style:0 handler:v69];

    _Block_release(v69);
  }

  else
  {
    v71 = *&v1[v93];
    aBlock = 0;
    v96 = 0xE000000000000000;
    v66 = v71;
    _StringGuts.grow(_:)(39);

    aBlock = 0xD000000000000025;
    v96 = 0x800000010001B4F0;
    v72._countAndFlagsBits = v57;
    v72._object = v59;
    String.append(_:)(v72);

    String.LocalizationValue.init(_:)();
    type metadata accessor for PASVSPrimaryViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v74 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v70 = String._bridgeToObjectiveC()();

    [v66 setSubtitle:v70];
  }

  v75 = *&v1[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController];
  if (v75)
  {
    v76 = *&v1[v93];
    v77 = v75;
    v78 = v76;
    v79 = [v77 presentProxCardFlowWithDelegate:v1 initialViewController:v78];

    v33 = v37;
    v37 = v79;
  }
}

void sub_100009758(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000088F8();
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  [v5 showActivityIndicatorWithStatus:v8];

  v9 = *(a2 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  if (v9)
  {
    [v9 initiateClientConnectionIfEligible];
  }

  sub_10000DF2C(0, &qword_100025E58, NSDistributedNotificationCenter_ptr);
  v10 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_1000259D0 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:qword_100026200 object:0];
}

void sub_1000099BC()
{
  v1 = v0;
  v2 = type metadata accessor for PASDeviceClass();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PASDevice();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v53 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001E28(&qword_1000259E8, &unk_100017410);
  __chkstk_darwin(v6 - 8);
  v58 = &v53 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PASTargetAccountOptionsType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v54 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001E28(&qword_100025E80, &unk_100017EA0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v53 - v17;
  v19 = sub_100001E28(&qword_100025E88, &unk_100017B80);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v53 - v23;
  v25 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetAccountOptionsType;
  swift_beginAccess();
  (*(v13 + 104))(v24, enum case for PASTargetAccountOptionsType.child(_:), v12);
  (*(v13 + 56))(v24, 0, 1, v12);
  v26 = *(v16 + 56);
  v27 = v1 + v25;
  v28 = v1;
  sub_100006F60(v27, v18, &qword_100025E88, &unk_100017B80);
  sub_100006F60(v24, &v18[v26], &qword_100025E88, &unk_100017B80);
  v29 = *(v13 + 48);
  if (v29(v18, 1, v12) != 1)
  {
    sub_100006F60(v18, v22, &qword_100025E88, &unk_100017B80);
    if (v29(&v18[v26], 1, v12) != 1)
    {
      v42 = v54;
      (*(v13 + 32))(v54, &v18[v26], v12);
      sub_10000DE80(&qword_100025E90, &type metadata accessor for PASTargetAccountOptionsType, &protocol conformance descriptor for PASTargetAccountOptionsType);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = *(v13 + 8);
      v44(v42, v12);
      sub_100006FC8(v24, &qword_100025E88, &unk_100017B80);
      v44(v22, v12);
      sub_100006FC8(v18, &qword_100025E88, &unk_100017B80);
      if (v43)
      {
        goto LABEL_11;
      }

LABEL_7:
      v30 = sub_1000088F8();
      v63 = 0;
      v64 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v65 = 0xD000000000000017;
      v66 = 0x800000010001B4B0;
      v31 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetDevice;
      swift_beginAccess();
      v32 = v28 + v31;
      v33 = v58;
      sub_100006F60(v32, v58, &qword_1000259E8, &unk_100017410);
      v35 = v59;
      v34 = v60;
      if ((*(v59 + 48))(v33, 1, v60))
      {
        sub_100006FC8(v33, &qword_1000259E8, &unk_100017410);
      }

      else
      {
        v47 = v53;
        (*(v35 + 16))(v53, v33, v34);
        sub_100006FC8(v33, &qword_1000259E8, &unk_100017410);
        v39 = PASDevice.deviceClassCodeName.getter();
        v41 = v48;
        (*(v35 + 8))(v47, v34);
        if (v41)
        {
          goto LABEL_13;
        }
      }

      v36 = v55;
      v37 = v56;
      v38 = v57;
      (*(v56 + 104))(v55, enum case for PASDeviceClass.unknown(_:), v57);
      v39 = PASDeviceClass.rawValue.getter();
      v41 = v40;
      (*(v37 + 8))(v36, v38);

LABEL_13:
      v49._countAndFlagsBits = v39;
      v49._object = v41;
      String.append(_:)(v49);

      String.LocalizationValue.init(_:)();
      type metadata accessor for PASVSPrimaryViewController(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v46 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      goto LABEL_14;
    }

    sub_100006FC8(v24, &qword_100025E88, &unk_100017B80);
    (*(v13 + 8))(v22, v12);
LABEL_6:
    sub_100006FC8(v18, &qword_100025E80, &unk_100017EA0);
    goto LABEL_7;
  }

  sub_100006FC8(v24, &qword_100025E88, &unk_100017B80);
  if (v29(&v18[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_100006FC8(v18, &qword_100025E88, &unk_100017B80);
LABEL_11:
  v30 = sub_1000088F8();
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController(0);
  v45 = swift_getObjCClassFromMetadata();
  v46 = [objc_opt_self() bundleForClass:v45];
LABEL_14:
  v51 = v46;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v52 = String._bridgeToObjectiveC()();

  [v30 setTitle:v52];
}

void sub_10000A22C(uint64_t a1, void *a2)
{
  v3 = v2;
  v46._countAndFlagsBits = a1;
  v46._object = a2;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PASTargetAccountOptionsType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001E28(&qword_100025E80, &unk_100017EA0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = sub_100001E28(&qword_100025E88, &unk_100017B80);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v45 - v19;
  v21 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetAccountOptionsType;
  swift_beginAccess();
  (*(v9 + 104))(v20, enum case for PASTargetAccountOptionsType.child(_:), v8);
  (*(v9 + 56))(v20, 0, 1, v8);
  v22 = *(v12 + 56);
  sub_100006F60(v3 + v21, v14, &qword_100025E88, &unk_100017B80);
  sub_100006F60(v20, &v14[v22], &qword_100025E88, &unk_100017B80);
  v23 = *(v9 + 48);
  if (v23(v14, 1, v8) != 1)
  {
    sub_100006F60(v14, v18, &qword_100025E88, &unk_100017B80);
    if (v23(&v14[v22], 1, v8) != 1)
    {
      v30 = &v14[v22];
      v31 = v45;
      (*(v9 + 32))(v45, v30, v8);
      sub_10000DE80(&qword_100025E90, &type metadata accessor for PASTargetAccountOptionsType, &protocol conformance descriptor for PASTargetAccountOptionsType);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v9 + 8);
      v33(v31, v8);
      sub_100006FC8(v20, &qword_100025E88, &unk_100017B80);
      v33(v18, v8);
      sub_100006FC8(v14, &qword_100025E88, &unk_100017B80);
      if (v32)
      {
        goto LABEL_11;
      }

LABEL_7:
      v24 = sub_1000088F8();
      sub_100006F60(v3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_viewDetails, &v49, &qword_100025E50, &qword_100017B68);
      v25 = v51;
      if (v51)
      {
        v26 = v52;
        sub_100006DEC(&v49, v51);
        v27 = (*(v26 + 8))(v25, v26);
        v29 = v28;
        sub_1000054E8(&v49);
        if (v29)
        {
LABEL_14:
          v40 = PASBoldAppleIDPlaceholder.getter();
          v42 = v41;
          v43 = *(v3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_accountUserName);
          v44 = *(v3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_accountUserName + 8);

          v36 = sub_10000F62C(v40, v42, v43, v44, UIFontTextStyleSubheadline, v27, v29);

          [v24 setAttributedSubtitle:v36];
          goto LABEL_15;
        }
      }

      else
      {
        sub_100006FC8(&v49, &qword_100025E50, &qword_100017B68);
      }

      v49 = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v49 = 0xD00000000000001ALL;
      v50 = 0x800000010001B470;
      String.append(_:)(v46);
      String.LocalizationValue.init(_:)();
      type metadata accessor for PASVSPrimaryViewController(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v38 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      static Locale.current.getter();
      v27 = String.init(localized:table:bundle:locale:comment:)();
      v29 = v39;

      goto LABEL_14;
    }

    sub_100006FC8(v20, &qword_100025E88, &unk_100017B80);
    (*(v9 + 8))(v18, v8);
LABEL_6:
    sub_100006FC8(v14, &qword_100025E80, &unk_100017EA0);
    goto LABEL_7;
  }

  sub_100006FC8(v20, &qword_100025E88, &unk_100017B80);
  if (v23(&v14[v22], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_100006FC8(v14, &qword_100025E88, &unk_100017B80);
LABEL_11:
  v24 = sub_1000088F8();
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController(0);
  v34 = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass:v34];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v36 = String._bridgeToObjectiveC()();

  [v24 setSubtitle:v36];
LABEL_15:
}

uint64_t sub_10000A954()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PASTargetAccountOptionsType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001E28(&qword_100025E80, &unk_100017EA0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v12 = sub_100001E28(&qword_100025E88, &unk_100017B80);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetAccountOptionsType;
  swift_beginAccess();
  (*(v6 + 104))(v17, enum case for PASTargetAccountOptionsType.child(_:), v5);
  (*(v6 + 56))(v17, 0, 1, v5);
  v19 = *(v9 + 56);
  sub_100006F60(v0 + v18, v11, &qword_100025E88, &unk_100017B80);
  sub_100006F60(v17, &v11[v19], &qword_100025E88, &unk_100017B80);
  v20 = *(v6 + 48);
  if (v20(v11, 1, v5) != 1)
  {
    sub_100006F60(v11, v15, &qword_100025E88, &unk_100017B80);
    if (v20(&v11[v19], 1, v5) != 1)
    {
      v21 = v27;
      (*(v6 + 32))(v27, &v11[v19], v5);
      sub_10000DE80(&qword_100025E90, &type metadata accessor for PASTargetAccountOptionsType, &protocol conformance descriptor for PASTargetAccountOptionsType);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v6 + 8);
      v22(v21, v5);
      sub_100006FC8(v17, &qword_100025E88, &unk_100017B80);
      v22(v15, v5);
      sub_100006FC8(v11, &qword_100025E88, &unk_100017B80);
      goto LABEL_8;
    }

    sub_100006FC8(v17, &qword_100025E88, &unk_100017B80);
    (*(v6 + 8))(v15, v5);
    goto LABEL_6;
  }

  sub_100006FC8(v17, &qword_100025E88, &unk_100017B80);
  if (v20(&v11[v19], 1, v5) != 1)
  {
LABEL_6:
    sub_100006FC8(v11, &qword_100025E80, &unk_100017EA0);
    goto LABEL_8;
  }

  sub_100006FC8(v11, &qword_100025E88, &unk_100017B80);
LABEL_8:
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void sub_10000AEBC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "PASVSSetupEventPresenter: Pairing Requested", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = objc_allocWithZone(type metadata accessor for PASVSScannerCardViewController());
  v10 = sub_10000E7B0();
  *&v10[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_delegate] = *(v1 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11 = sub_1000088F8();
  v12 = [v11 navigationController];

  if (v12)
  {
    [v12 pushViewController:v10 animated:1];
  }
}

void sub_10000B0D4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = [objc_allocWithZone(PRXPasscodeEntryViewController) init];
  [v3 setNumberOfDigits:6];
  v4 = v3;
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  [v4 setTitle:v8];

  v9 = v4;
  String.LocalizationValue.init(_:)();
  v10 = [v6 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  [v9 setSubtitle:v11];

  [v9 setDismissalType:1];
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v0;
  v13 = v9;
  v14 = v0;
  v15 = String._bridgeToObjectiveC()();
  v28 = sub_10000DE38;
  v29 = v12;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10000E748;
  v27 = &unk_100021090;
  v16 = _Block_copy(&aBlock);
  v17 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v16];

  _Block_release(v16);

  [v13 setDismissButtonAction:v17];

  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v28 = sub_10000DE78;
  v29 = v18;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10000B638;
  v27 = &unk_1000210E0;
  v19 = _Block_copy(&aBlock);
  v20 = v14;

  [v13 setTextEntryCompletionHandler:v19];
  _Block_release(v19);
  v21 = sub_1000088F8();
  v22 = [v21 navigationController];

  if (v22)
  {
    [v22 pushViewController:v13 animated:1];
  }

  v23 = *&v20[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_pinEntryController];
  *&v20[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_pinEntryController] = v13;
}

void sub_10000B540(int a1, id a2, uint64_t a3)
{
  v4 = [a2 passcodeEntryView];
  [v4 endEditing:1];

  v5 = *(a3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  if (v5)
  {
    [v5 invalidateClientConnection];
  }

  exit(1);
}

void sub_10000B5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  if (v3)
  {
    swift_unknownObjectRetain();
    v4 = String._bridgeToObjectiveC()();
    [v3 handleScannedCode:v4];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000B638(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

void sub_10000B6EC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = *(v0 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_pinEntryController);
  if (v7)
  {
    v8 = v7;
    String.LocalizationValue.init(_:)();
    type metadata accessor for PASVSPrimaryViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v11 = String._bridgeToObjectiveC()();

    [v8 setSubtitle:v11];

    v12 = [v8 contentView];
    v13 = [v12 subtitleLabel];

    if (v13)
    {
      v14 = [objc_opt_self() systemRedColor];
      [v13 setTextColor:v14];
    }

    v15 = [v8 passcodeEntryView];
    v16 = String._bridgeToObjectiveC()();
    [v15 setText:v16];
  }

  else
  {
    static PASLogger.viewService.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Attempted to show PIN entry error, but no PIN entry view was found.", v19, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_10000BAA0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v5;
  v2[9] = v4;

  return _swift_task_switch(sub_10000BB94, v5, v4);
}

uint64_t sub_10000BB94()
{
  v1 = sub_1000088F8();
  v2 = [v1 navigationController];

  if (v2)
  {
    v3 = [v2 popToViewController:*(v0[3] + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController) animated:0];
  }

  static PASLogger.viewService.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "PASVSSetupEventPresenter: Pairing Completed", v6, 2u);
  }

  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  (*(v8 + 8))(v7, v10);
  v11 = *(v9 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter____lazy_storage___proxCardController);
  v12 = objc_allocWithZone(type metadata accessor for PASUISourceViewPresenter());
  v13 = v11;
  v14 = PASUISourceViewPresenter.init(sharingViewController:)();
  v15 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter;
  v16 = *(v9 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter);
  *(v9 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter) = v14;
  v17 = v14;

  swift_unknownObjectRetain();
  PASUISourceViewPresenter.delegate.setter();

  v18 = *(v9 + v15);
  v0[10] = v18;
  if (v18)
  {
    v18;
    v19 = swift_task_alloc();
    v0[11] = v19;
    *v19 = v0;
    v19[1] = sub_10000BDE8;
    v20 = v0[2];

    return PASUISourceViewPresenter.activate(withTemplate:)(v20);
  }

  else
  {

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10000BDE8(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);

  v5 = *(v3 + 72);
  v6 = *(v3 + 64);

  return _swift_task_switch(sub_10000BF30, v6, v5);
}

uint64_t sub_10000BF30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000C120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000C1BC, v5, v4);
}

uint64_t sub_10000C1BC()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_10000C280;
  v7 = v0[2];

  return sub_10000BAA0(v7);
}

uint64_t sub_10000C280()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10000C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v5[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter])
  {
    v26 = v16;
    sub_10000DF2C(0, &qword_100025E60, OS_dispatch_queue_ptr);
    v25 = v11;
    v24 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a4;
    v19[6] = v5;
    aBlock[4] = sub_10000DDE8;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C814;
    aBlock[3] = &unk_100021040;
    v20 = _Block_copy(aBlock);

    v21 = v5;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000DE80(&qword_100025E68, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100001E28(&qword_100025E70, &unk_100017B70);
    sub_10000DD3C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v25 + 8))(v13, v10);
    return (*(v26 + 8))(v18, v14);
  }

  return result;
}

void sub_10000C6E4()
{
  v4 = [objc_allocWithZone(PRXCardContentViewController) init];
  v0 = String._bridgeToObjectiveC()();
  [v4 setTitle:v0];

  v1 = String._bridgeToObjectiveC()();
  [v4 setSubtitle:v1];

  [v4 setDismissalType:1];
  v2 = sub_1000088F8();
  v3 = [v2 navigationController];

  if (v3)
  {
    [v3 pushViewController:v4 animated:1];
  }
}

uint64_t sub_10000C814(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_10000C918()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASVSSetupEventPresenter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PASVSSetupEventPresenter(uint64_t a1)
{
  result = qword_100025DD0;
  if (!qword_100025DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CAA4(uint64_t a1)
{
  sub_10000CBE0(319, &qword_100025DE0, &type metadata accessor for PASDevice);
  if (v1 <= 0x3F)
  {
    sub_10000CBE0(319, &qword_100025DE8, &type metadata accessor for PASTargetAccountOptionsType);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000CBE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000CC34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter];
    *&Strong[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_sourceViewPresenter] = 0;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3 || (v4 = v3, v5 = *(v3 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController), v6 = v5, v4, !v5))
  {
    exit(0);
  }

  v8[4] = sub_10000CD6C;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000C814;
  v8[3] = &unk_100020FF0;
  v7 = _Block_copy(v8);
  [v6 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

void sub_10000CDE0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "PASVSSetupEventPresenter:proxCardFlowDidDismiss", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  if (v9)
  {
    [v9 invalidateClientConnection];
  }

  sub_10000DF2C(0, &qword_100025E58, NSDistributedNotificationCenter_ptr);
  v10 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_1000259D8 != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:qword_100026208 object:0];

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100013A20();
    swift_unknownObjectRelease();
  }

  exit(0);
}

uint64_t sub_10000CFEC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100007348;

  return v6();
}

uint64_t sub_10000D0D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000536C;

  return v7();
}

uint64_t sub_10000D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100006F60(a3, v23 - v10, &unk_100025EC0, &qword_100017420);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100006FC8(v11, &unk_100025EC0, &qword_100017420);
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

    sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);

    return v21;
  }

LABEL_8:
  sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);
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

void sub_10000D4B8(uint64_t a1)
{
  v2 = sub_100001E28(&qword_100025EB0, &qword_100017B98);
  __chkstk_darwin(v2 - 8);
  v4 = &v25[-v3 - 8];
  v5 = type metadata accessor for PASDeviceClass();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v11 = &v25[-v10 - 8];
  sub_10000DF94(a1, v25);
  sub_100001E28(&qword_100025EB8, &unk_100017BA0);
  v12 = swift_dynamicCast();
  v13 = *(v6 + 56);
  if (v12)
  {
    v13(v4, 0, 1, v5);
    (*(v6 + 32))(v11, v4, v5);
  }

  else
  {
    v13(v4, 1, 1, v5);
    (*(v6 + 104))(v11, enum case for PASDeviceClass.unknown(_:), v5);
  }

  (*(v6 + 16))(v9, v11, v5);
  if ((*(v6 + 88))(v9, v5) == enum case for PASDeviceClass.iPad(_:))
  {
    if (qword_1000259E0 != -1)
    {
      swift_once();
    }

    v14 = qword_100026230;
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() imageNamed:v15 inBundle:v14];

    if (v16)
    {
      v17 = v16;
LABEL_13:
      v22 = [objc_allocWithZone(UIImageView) initWithImage:v17];

      v23 = v22;
      [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v23 setContentMode:1];

      (*(v6 + 8))(v11, v5);
      return;
    }

    __break(1u);
  }

  else
  {
    if (qword_1000259E0 != -1)
    {
      swift_once();
    }

    v18 = qword_100026230;
    v19 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() imageNamed:v19 inBundle:v18];

    if (v20)
    {
      v21 = *(v6 + 8);
      v17 = v20;
      v21(v9, v5);
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_10000D8D8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = v8;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "PASVSSetupEventPresenter: proximitySetupCompleted", v15, 2u);
    v8 = v22;
  }

  (*(v10 + 8))(v12, v9);
  v16 = *(v1 + OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_delegate);
  if (v16)
  {
    [v16 invalidateClientConnection];
  }

  sub_10000DF2C(0, &qword_100025E60, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10000DD1C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C814;
  aBlock[3] = &unk_100020FC8;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000DE80(&qword_100025E68, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001E28(&qword_100025E70, &unk_100017B70);
  sub_10000DD3C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v3 + 8))(v5, v2);
  return (*(v23 + 8))(v8, v24);
}

uint64_t sub_10000DCE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DD24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000DD3C()
{
  result = qword_100025E78;
  if (!qword_100025E78)
  {
    sub_1000086F4(&qword_100025E70, &unk_100017B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E78);
  }

  return result;
}

uint64_t sub_10000DDA0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000DDF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DE40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DE80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_10000DEC8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000DF2C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000DF7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000DF94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000DFF8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E040()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000536C;

  return sub_10000C120(v2, v3, v4);
}

uint64_t sub_10000E0F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007348;

  return sub_10000CFEC(v2, v3, v4);
}

uint64_t sub_10000E1B8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E1F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007348;

  return sub_10000D0D4(a1, v4, v5, v6);
}

uint64_t sub_10000E2C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E2FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100007348;

  return sub_100004BD8(a1, v4);
}

uint64_t sub_10000E3B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000536C;

  return sub_100004BD8(a1, v4);
}

uint64_t sub_10000E4AC()
{
  v0 = sub_100001E28(&qword_100025F38, qword_100017C68);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  sub_10000E68C();
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000E6E0();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000E60C();
  static App.main()();
  return 0;
}

unint64_t sub_10000E60C()
{
  result = qword_100025F30;
  if (!qword_100025F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025F30);
  }

  return result;
}

unint64_t sub_10000E68C()
{
  result = qword_100025F40;
  if (!qword_100025F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025F40);
  }

  return result;
}

unint64_t sub_10000E6E0()
{
  result = qword_100025F48;
  if (!qword_100025F48)
  {
    sub_1000086F4(&qword_100025F38, qword_100017C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025F48);
  }

  return result;
}

void sub_10000E748(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

char *sub_10000E7B0()
{
  *&v0[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_delegate] = 0;
  v1 = [objc_allocWithZone(VPScannerProxCardViewController) init];
  *&v0[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_scannerEngineVC] = v1;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for PASVSScannerCardViewController();
  v2 = objc_msgSendSuper2(&v10, "initWithScannerEngine:", v1);
  v3 = *&v2[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_scannerEngineVC];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v9[4] = sub_10000F584;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000B638;
  v9[3] = &unk_1000212E0;
  v5 = _Block_copy(v9);
  v6 = v2;
  v7 = v3;

  [v7 setScannedCodeHandler:v5];
  _Block_release(v5);

  return v6;
}

void sub_10000E8FC()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v19.receiver = v0;
  v19.super_class = type metadata accessor for PASVSScannerCardViewController();
  objc_msgSendSuper2(&v19, "viewDidLoad");
  [v0 setDismissalType:1];
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  [v0 setTitle:v6];

  String.LocalizationValue.init(_:)();
  v7 = [v4 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v8];

  String.LocalizationValue.init(_:)();
  v9 = [v4 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  String.LocalizationValue.init(_:)();
  v11 = [v4 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  String.LocalizationValue.init(_:)();
  v13 = [v4 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = String._bridgeToObjectiveC()();

  String.LocalizationValue.init(_:)();
  v15 = [v4 bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v0 dismissalConfirmationActionWithTitle:v10 message:v12 confirmButtonTitle:v14 cancelButtonTitle:v16];

  [v0 setDismissButtonAction:v17];
  v18 = sub_10000EDA8();
}

id sub_10000EDA8()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = v0;
  v7 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10000F564;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000E748;
  aBlock[3] = &unk_100021290;
  v8 = _Block_copy(aBlock);
  v9 = [objc_opt_self() actionWithTitle:v7 style:1 handler:v8];

  _Block_release(v8);

  return v9;
}

void sub_10000F014()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  [v0 showConfirmationRing];
  [*&v0[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_scannerEngineVC] stop];
  String.LocalizationValue.init(_:)();
  type metadata accessor for PASVSPrimaryViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  [v0 showActivityIndicatorWithStatus:v5];

  v6 = *&v0[OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_delegate];
  if (v6)
  {
    swift_unknownObjectRetain();
    v7 = String._bridgeToObjectiveC()();
    [v6 handleScannedCode:v7];

    swift_unknownObjectRelease();
  }
}

id sub_10000F32C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PASVSScannerCardViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10000F3D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.viewService.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "User has elected manual pairing.", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  result = *(a2 + OBJC_IVAR____TtC14PASViewService30PASVSScannerCardViewController_delegate);
  if (result)
  {
    return [result enableManualPairing];
  }

  return result;
}

uint64_t sub_10000F52C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F56C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10000F5B4()
{
  type metadata accessor for PASBundleForViewService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100026230 = result;
  return result;
}

id sub_10000F62C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v41 = a5;
  v13 = sub_100001E28(&qword_100026020, &qword_100017CC8);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v46 = a6;
  v47 = a7;
  v44 = a1;
  v45 = a2;
  v42 = a3;
  v43 = a4;
  sub_10000FA2C();
  v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = v17;
  v46 = v16;
  v47 = v17;
  v44 = a3;
  v45 = a4;
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = StringProtocol.range<A>(of:options:range:locale:)();
  v22 = v21;
  LOBYTE(a4) = v23;
  sub_100006FC8(v15, &qword_100026020, &qword_100017CC8);
  if ((a4 & 1) != 0 || (v20 ^ v22) < 0x4000)
  {
    v39 = objc_allocWithZone(NSAttributedString);
    v38 = String._bridgeToObjectiveC()();

    v37 = [v39 initWithString:v38];
  }

  else
  {
    v46 = v20;
    v47 = v22;
    v44 = v16;
    v45 = v18;

    sub_100001E28(&qword_100026030, &qword_100017CD0);
    sub_10000FA80();
    v24 = _NSRange.init<A, B>(_:in:)();
    v26 = v25;
    v27 = objc_opt_self();
    v28 = [v27 preferredFontForTextStyle:v41];
    [v28 pointSize];
    v30 = v29;

    sub_100001E28(&qword_100026040, &qword_100017CD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100017400;
    *(inited + 32) = NSFontAttributeName;
    v32 = NSFontAttributeName;
    v33 = [v27 systemFontOfSize:v30];
    *(inited + 64) = sub_10000FAE4();
    *(inited + 40) = v33;
    sub_10000FC6C(inited);
    swift_setDeallocating();
    sub_100006FC8(inited + 32, &qword_100026050, &qword_100017CE0);
    v34 = objc_allocWithZone(NSMutableAttributedString);
    v35 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10000FD94();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = [v34 initWithString:v35 attributes:isa];

    v38 = [v27 boldSystemFontOfSize:v30];
    [v37 addAttribute:v32 value:v38 range:{v24, v26}];
  }

  return v37;
}

unint64_t sub_10000FA2C()
{
  result = qword_100026028;
  if (!qword_100026028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026028);
  }

  return result;
}

unint64_t sub_10000FA80()
{
  result = qword_100026038;
  if (!qword_100026038)
  {
    sub_1000086F4(&qword_100026030, &qword_100017CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026038);
  }

  return result;
}

unint64_t sub_10000FAE4()
{
  result = qword_100026048;
  if (!qword_100026048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026048);
  }

  return result;
}

unint64_t sub_10000FB30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001E28(&qword_100025B50, &qword_1000175B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006F60(v4, v13, &qword_100025B48, &qword_1000175A8);
      result = sub_100015328(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100006EA0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10000FC6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001E28(&qword_100026058, &qword_100017CE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006F60(v4, &v12, &qword_100026050, &qword_100017CE0);
      v5 = v12;
      result = sub_10001536C(v12, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006EA0(&v13, (v3[7] + 32 * result));
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 40;
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

unint64_t sub_10000FD94()
{
  result = qword_100025B90;
  if (!qword_100025B90)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025B90);
  }

  return result;
}

uint64_t sub_10000FDEC(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v165 = a3;
  v166 = a2;
  v4 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  __chkstk_darwin(v4 - 8);
  v160 = &v147[-v5];
  v157 = sub_100001E28(&qword_100025E80, &unk_100017EA0);
  __chkstk_darwin(v157);
  v159 = &v147[-v6];
  v7 = sub_100001E28(&qword_100025E88, &unk_100017B80);
  v8 = __chkstk_darwin(v7 - 8);
  v155 = &v147[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v162 = &v147[-v11];
  __chkstk_darwin(v10);
  v158 = &v147[-v12];
  v161 = type metadata accessor for PASTargetAccountOptionsType();
  v163 = *(v161 - 8);
  v13 = __chkstk_darwin(v161);
  v154 = &v147[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v156 = &v147[-v15];
  v16 = type metadata accessor for Logger();
  v167 = *(v16 - 8);
  v168 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = &v147[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17);
  v22 = &v147[-v21];
  v23 = __chkstk_darwin(v20);
  v25 = &v147[-v24];
  v26 = __chkstk_darwin(v23);
  v153 = &v147[-v27];
  v28 = __chkstk_darwin(v26);
  v30 = &v147[-v29];
  v31 = __chkstk_darwin(v28);
  v33 = &v147[-v32];
  v34 = __chkstk_darwin(v31);
  v36 = &v147[-v35];
  __chkstk_darwin(v34);
  v37 = sub_100001E28(&qword_1000259E8, &unk_100017410);
  __chkstk_darwin(v37 - 8);
  v39 = &v147[-v38];
  type metadata accessor for PASServices();
  static PASServices.shared.getter();
  PASServices.registerSourceServices()();

  if (a1 && (v40 = [a1 userInfo]) != 0)
  {
    v41 = v40;
    v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v169 = 0x656369766564;
    v170 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v42 + 16) && (v43 = sub_100015328(&v171), (v44 & 1) != 0))
    {
      sub_100005470(*(v42 + 56) + 32 * v43, &v174);
      sub_100006EB0(&v171);
      sub_100001E28(&qword_100026128, &qword_100017EB0);
      if (swift_dynamicCast())
      {
        v45 = v169;
        v46 = objc_allocWithZone(CBDevice);

        v48 = sub_100014BB4(v47);
        v151 = v45;
        v67 = v48;
        v68 = [v48 nearbyActionDeviceClass];
        v173 = 0;
        v171 = 0u;
        v172 = 0u;
        if ([objc_opt_self() currentDevice])
        {
          v150 = v68;
          PASDevice.init(deviceClass:biometryProvider:ak_device:)();
          v70 = type metadata accessor for PASDevice();
          (*(*(v70 - 8) + 56))(v39, 0, 1, v70);
          v71 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_targetDevice;
          v72 = v164;
          swift_beginAccess();
          sub_1000159D0(v39, &v72[v71], &qword_1000259E8, &unk_100017410);
          swift_endAccess();
          static PASLogger.viewService.getter();
          v73 = v67;
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *v76 = 141558274;
            *(v76 + 4) = 1752392040;
            *(v76 + 12) = 2112;
            *(v76 + 14) = v73;
            *v77 = v73;
            v78 = v73;
            _os_log_impl(&_mh_execute_header, v74, v75, "PASVSPrimaryViewController Started CoreBluetooth device %{mask.hash}@", v76, 0x16u);
            sub_100006FC8(v77, &qword_1000259F8, &qword_100017438);

            v72 = v164;
          }

          v79 = v167 + 8;
          v152 = *(v167 + 8);
          v152(v36, v168);
          v80 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device;
          v81 = *&v72[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device];
          *&v72[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device] = v73;
          v82 = v73;

          if (*(v80 + v72))
          {
            v149 = v80;
            v83 = [v82 nearbyActionType];

            static PASLogger.viewService.getter();
            v84 = Logger.logObject.getter();
            v85 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v148 = v83;
              v88 = v87;
              *&v171 = v87;
              *v86 = 136315138;
              LOBYTE(v174) = v148;
              type metadata accessor for CBNearbyActionType(0);
              v89 = String.init<A>(describing:)();
              v91 = sub_100014D80(v89, v90, &v171);

              *(v86 + 4) = v91;
              v72 = v164;
              _os_log_impl(&_mh_execute_header, v84, v85, "PASVSPrimaryViewController received nearbyActionType: %s", v86, 0xCu);
              sub_1000054E8(v88);
              v83 = v148;
            }

            v152(v33, v168);
            v93 = v161;
            v92 = v162;
            v94 = v163;
            if (v83 != 95)
            {
              goto LABEL_38;
            }

            v95 = *(v149 + v72);
            v167 = v79;
            if (v95)
            {
              v96 = [v95 nearbyActionExtraData];
              if (v96)
              {
                v97 = v96;
                v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v100 = v99;

                isa = Data._bridgeToObjectiveC()().super.isa;
                sub_10001597C(v98, v100);
                static PASLogger.viewService.getter();
                v102 = isa;
                v103 = Logger.logObject.getter();
                v104 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v103, v104))
                {
                  v105 = swift_slowAlloc();
                  v149 = swift_slowAlloc();
                  *&v171 = v149;
                  *v105 = 136315138;
                  v106 = v102;
                  v148 = v104;
                  v107 = v106;
                  v108 = [(objc_class *)v106 description];
                  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v111 = v110;

                  v112 = v109;
                  v94 = v163;
                  v72 = v164;
                  v113 = sub_100014D80(v112, v111, &v171);
                  v93 = v161;

                  *(v105 + 4) = v113;
                  _os_log_impl(&_mh_execute_header, v103, v148, "PASVSPrimaryViewController received nearbyActionExtraData: %s", v105, 0xCu);
                  sub_1000054E8(v149);

                  v92 = v162;
                }

                v152(v30, v168);
                v114 = v102;
                v164 = v114;
                v115 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v117 = v116;

                v118 = v156;
                static PASTargetAccountOptionsType.from(deviceFlags:)();
                sub_10001597C(v115, v117);

                dispatch thunk of PASService.wrappedValue.getter();

                swift_getObjectType();
                (*(v94 + 16))(v154, v118, v93);
                *(&v172 + 1) = type metadata accessor for PASTargetAccountOptions();
                v173 = &protocol witness table for PASTargetAccountOptions;
                sub_10000DEC8(&v171);
                PASTargetAccountOptions.init(targetAccountOptionsType:)();
                dispatch thunk of PASTargetAccountOptionsProviderProtocol.setTargetAccountOptions(_:)();

                swift_unknownObjectRelease();
                (*(v94 + 8))(v118, v93);
                sub_100006FC8(&v171, &qword_100026118, &qword_100017E80);
              }
            }

            dispatch thunk of PASService.wrappedValue.getter();

            swift_getObjectType();
            dispatch thunk of PASTargetAccountOptionsProviderProtocol.targetAccountOptions.getter();
            swift_unknownObjectRelease();
            if (*(&v172 + 1))
            {
              sub_100006DEC(&v171, *(&v172 + 1));
              v119 = v158;
              dispatch thunk of PASTargetAccountOptionsProtocol.targetAccountOptionsType.getter();
              v120 = *(v94 + 56);
              v120(v119, 0, 1, v93);
              sub_1000054E8(&v171);
            }

            else
            {
              sub_100006FC8(&v171, &qword_100026118, &qword_100017E80);
              v120 = *(v94 + 56);
              v119 = v158;
              v120(v158, 1, 1, v93);
            }

            (*(v94 + 104))(v92, enum case for PASTargetAccountOptionsType.child(_:), v93);
            v120(v92, 0, 1, v93);
            v121 = *(v157 + 48);
            v122 = v159;
            sub_100006F60(v119, v159, &qword_100025E88, &unk_100017B80);
            sub_100006F60(v92, &v122[v121], &qword_100025E88, &unk_100017B80);
            v123 = *(v94 + 48);
            if (v123(v122, 1, v93) == 1)
            {
              sub_100006FC8(v92, &qword_100025E88, &unk_100017B80);
              v124 = v159;
              sub_100006FC8(v119, &qword_100025E88, &unk_100017B80);
              if (v123(&v124[v121], 1, v93) == 1)
              {
                sub_100006FC8(v124, &qword_100025E88, &unk_100017B80);
LABEL_38:

                v132 = type metadata accessor for TaskPriority();
                v133 = v160;
                (*(*(v132 - 8) + 56))(v160, 1, 1, v132);
                type metadata accessor for MainActor();
                v134 = v72;
                v136 = v165;
                v135 = v166;
                sub_1000157EC(v166, v165);
                v137 = static MainActor.shared.getter();
                v138 = swift_allocObject();
                *(v138 + 16) = v137;
                *(v138 + 24) = &protocol witness table for MainActor;
                *(v138 + 32) = v134;
                *(v138 + 40) = v150;
                *(v138 + 48) = v135;
                *(v138 + 56) = v136;
                sub_1000125E4(0, 0, v133, &unk_100017EC0, v138);
              }
            }

            else
            {
              v125 = v155;
              sub_100006F60(v122, v155, &qword_100025E88, &unk_100017B80);
              if (v123(&v122[v121], 1, v93) != 1)
              {
                v126 = v163;
                v127 = &v122[v121];
                v128 = v156;
                (*(v163 + 32))(v156, v127, v93);
                sub_100015924();
                v129 = v125;
                v130 = dispatch thunk of static Equatable.== infix(_:_:)();
                v131 = *(v126 + 8);
                v131(v128, v93);
                sub_100006FC8(v162, &qword_100025E88, &unk_100017B80);
                sub_100006FC8(v158, &qword_100025E88, &unk_100017B80);
                v131(v129, v93);
                sub_100006FC8(v122, &qword_100025E88, &unk_100017B80);
                if (v130)
                {
                  goto LABEL_38;
                }

                goto LABEL_45;
              }

              v143 = v125;
              sub_100006FC8(v162, &qword_100025E88, &unk_100017B80);
              v124 = v159;
              sub_100006FC8(v158, &qword_100025E88, &unk_100017B80);
              (*(v163 + 8))(v143, v93);
            }

            sub_100006FC8(v124, &qword_100025E80, &unk_100017EA0);
LABEL_45:
            static PASLogger.viewService.getter();
            v144 = Logger.logObject.getter();
            v145 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v144, v145))
            {
              v146 = swift_slowAlloc();
              *v146 = 0;
              _os_log_impl(&_mh_execute_header, v144, v145, "PASVSPrimaryViewController received Family action but not for child, exiting", v146, 2u);
            }

            v142 = v153;
            goto LABEL_48;
          }
        }

        else
        {
          __break(1u);
        }

        static PASLogger.viewService.getter();
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          *v141 = 0;
          _os_log_impl(&_mh_execute_header, v139, v140, "PASVSPrimaryViewController No remote device, exiting PASViewService.", v141, 2u);
        }

        v142 = v25;
LABEL_48:
        v152(v142, v168);
        exit(-1);
      }
    }

    else
    {
      sub_100006EB0(&v171);
    }

    static PASLogger.viewService.getter();

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    v59 = os_log_type_enabled(v57, v58);
    v60 = v167;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v171 = v62;
      *v61 = 141558274;
      *(v61 + 4) = 1752392040;
      *(v61 + 12) = 2080;
      v63 = Dictionary.description.getter();
      v65 = v64;

      v66 = sub_100014D80(v63, v65, &v171);

      *(v61 + 14) = v66;
      _os_log_impl(&_mh_execute_header, v57, v58, "PASVSPrimaryViewController No device to start setup: %{mask.hash}s", v61, 0x16u);
      sub_1000054E8(v62);
    }

    else
    {
    }

    result = (*(v60 + 8))(v22, v168);
    v56 = v166;
    if (v166)
    {
      return v56(result);
    }
  }

  else
  {
    static PASLogger.viewService.getter();
    v49 = a1;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 141558274;
      *(v52 + 4) = 1752392040;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v49;
      *v53 = a1;
      v54 = v49;
      _os_log_impl(&_mh_execute_header, v50, v51, "PASVSPrimaryViewController No user info dictionary to start setup: %{mask.hash}@", v52, 0x16u);
      sub_100006FC8(v53, &qword_1000259F8, &qword_100017438);
    }

    result = (*(v167 + 8))(v19, v168);
    v56 = v166;
    if (v166)
    {
      return v56(result);
    }
  }

  return result;
}

uint64_t sub_1000112B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 472) = a6;
  *(v7 + 480) = a7;
  *(v7 + 696) = a5;
  *(v7 + 464) = a4;
  v8 = type metadata accessor for Logger();
  *(v7 + 488) = v8;
  *(v7 + 496) = *(v8 - 8);
  *(v7 + 504) = swift_task_alloc();
  v9 = type metadata accessor for PASLocatedExtension();
  *(v7 + 512) = v9;
  *(v7 + 520) = *(v9 - 8);
  *(v7 + 528) = swift_task_alloc();
  *(v7 + 536) = swift_task_alloc();
  sub_100001E28(&qword_100025B58, &qword_1000175B8);
  *(v7 + 544) = swift_task_alloc();
  *(v7 + 552) = swift_task_alloc();
  *(v7 + 560) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 568) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 576) = v11;
  *(v7 + 584) = v10;

  return _swift_task_switch(sub_100011468, v11, v10);
}

uint64_t sub_100011468()
{

  dispatch thunk of PASService.wrappedValue.getter();

  v1 = v0[29];
  v2 = v0[30];
  sub_100006DEC(v0 + 26, v1);
  v3 = swift_task_alloc();
  v0[74] = v3;
  *v3 = v0;
  v3[1] = sub_10001154C;
  v4 = v0[70];

  return dispatch thunk of PASExtensionCacheProtocol.designatedExtension()(v4, v1, v2);
}

uint64_t sub_10001154C()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 576);

  return _swift_task_switch(sub_10001166C, v3, v2);
}

uint64_t sub_10001166C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 464);
  v3 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
  *(v0 + 600) = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
  swift_beginAccess();
  sub_1000159D0(v1, v2 + v3, &qword_100025B58, &qword_1000175B8);
  swift_endAccess();
  sub_1000054E8((v0 + 208));

  dispatch thunk of PASService.wrappedValue.getter();

  PASDeviceProvider.sourceDevice.getter();

  v4 = *(v0 + 272);
  if (v4)
  {
    v5 = sub_100006DEC((v0 + 248), *(v0 + 272));
    v6 = *(v4 - 8);
    v7 = swift_task_alloc();
    (*(v6 + 16))(v7, v5, v4);
    sub_100006FC8(v0 + 248, &qword_100026130, &qword_100017ED0);
    dispatch thunk of PASDeviceProtocol.deviceBiometryType.getter();
    (*(v6 + 8))(v7, v4);
  }

  else
  {
    sub_100006FC8(v0 + 248, &qword_100026130, &qword_100017ED0);
  }

  v8 = *(v0 + 552);
  v9 = *(v0 + 520);
  v10 = *(v0 + 512);
  v11 = objc_allocWithZone(type metadata accessor for PASExtensionDevicePair());
  v12 = PASExtensionDevicePair.init(targetDeviceType:sourceDeviceBiometryType:)();
  *(v0 + 608) = v12;
  sub_100006F60(v2 + v3, v8, &qword_100025B58, &qword_1000175B8);
  v13 = *(v9 + 48);
  *(v0 + 616) = v13;
  *(v0 + 624) = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v14 = v13(v8, 1, v10);
  v15 = *(v0 + 552);
  if (!v14)
  {
    v31 = *(v0 + 536);
    v32 = *(v0 + 520);
    v33 = *(v0 + 512);
    (*(v32 + 16))(v31, *(v0 + 552), v33);
    sub_100006FC8(v15, &qword_100025B58, &qword_1000175B8);
    *(v0 + 632) = PASLocatedExtension.handle.getter();
    (*(v32 + 8))(v31, v33);
    v34 = swift_task_alloc();
    *(v0 + 640) = v34;
    *v34 = v0;
    v34[1] = sub_100011D00;
    v18 = v12;

    return PASExtensionHandle.viewDetails(for:)(v18);
  }

  sub_100006FC8(*(v0 + 552), &qword_100025B58, &qword_1000175B8);
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  v16 = *(v0 + 464);
  v17 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_sourceViewDetails;
  swift_beginAccess();
  sub_1000159D0(v0 + 160, v16 + v17, &qword_100026110, &qword_100017E78);
  swift_endAccess();
  v18 = [objc_opt_self() defaultStore];
  if (!v18)
  {
    __break(1u);
    return PASExtensionHandle.viewDetails(for:)(v18);
  }

  v19 = v18;
  v20 = *(v0 + 616);
  v21 = *(v0 + 600);
  v22 = *(v0 + 544);
  v23 = *(v0 + 512);
  v24 = *(v0 + 464);
  *(v0 + 312) = sub_10000DF2C(0, &qword_100026138, ACAccountStore_ptr);
  *(v0 + 320) = &protocol witness table for ACAccountStore;
  *(v0 + 288) = v19;
  v25 = [objc_opt_self() sharedInstance];
  v26 = type metadata accessor for AccountSecurityLevelCalculator();
  v27 = swift_allocObject();
  sub_100006F60(v24 + v21, v22, &qword_100025B58, &qword_1000175B8);
  v28 = v20(v22, 1, v23);
  v29 = *(v0 + 544);
  if (v28)
  {
    sub_100006FC8(*(v0 + 544), &qword_100025B58, &qword_1000175B8);
    v30 = 0;
  }

  else
  {
    v35 = *(v0 + 528);
    v36 = *(v0 + 520);
    v37 = *(v0 + 512);
    (*(v36 + 16))(v35, *(v0 + 544), v37);
    sub_100006FC8(v29, &qword_100025B58, &qword_1000175B8);
    v30 = PASLocatedExtension.manifest.getter();
    (*(v36 + 8))(v35, v37);
  }

  *(v0 + 352) = sub_10000DF2C(0, &qword_100026140, FMDFMIPManager_ptr);
  *(v0 + 360) = &off_1000213A8;
  *(v0 + 328) = v25;
  *(v0 + 392) = v26;
  *(v0 + 400) = &off_100020F70;
  *(v0 + 368) = v27;
  type metadata accessor for PASVSProxCardValidator();
  inited = swift_initStackObject();
  *(v0 + 664) = inited;
  v39 = *(v0 + 392);
  v40 = sub_100015744(v0 + 368, v39);
  v41 = *(v39 - 8);
  v42 = swift_task_alloc();
  (*(v41 + 16))(v42, v40, v39);
  v43 = *v42;
  inited[15] = v26;
  inited[16] = &off_100020F70;
  inited[12] = v43;
  inited[17] = 0;
  sub_10000DF7C((v0 + 288), (inited + 2));
  sub_10000DF7C((v0 + 328), (inited + 7));
  inited[17] = v30;
  sub_1000054E8((v0 + 368));

  v44 = swift_task_alloc();
  *(v0 + 672) = v44;
  *v44 = v0;
  v44[1] = sub_1000121D0;

  return sub_1000073CC();
}

uint64_t sub_100011D00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 648) = v1;

  if (v1)
  {
    v5 = v4[73];
    v6 = v4[72];
    v7 = sub_100012508;
  }

  else
  {

    v4[82] = a1;
    v5 = v4[73];
    v6 = v4[72];
    v7 = sub_100011E38;
  }

  return _swift_task_switch(v7, v6, v5);
}

id sub_100011E38()
{
  v1 = *(v0 + 656);
  v2 = type metadata accessor for PASExtensionProvidedViewDetails();
  *(v0 + 160) = v1;
  *(v0 + 184) = v2;
  *(v0 + 192) = &protocol witness table for PASExtensionProvidedViewDetails;
  *(v0 + 200) = &protocol witness table for PASExtensionProvidedViewDetails;
  v3 = *(v0 + 464);
  v4 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_sourceViewDetails;
  swift_beginAccess();
  sub_1000159D0(v0 + 160, v3 + v4, &qword_100026110, &qword_100017E78);
  swift_endAccess();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v6 = result;
    v7 = *(v0 + 616);
    v8 = *(v0 + 600);
    v9 = *(v0 + 544);
    v10 = *(v0 + 512);
    v11 = *(v0 + 464);
    *(v0 + 312) = sub_10000DF2C(0, &qword_100026138, ACAccountStore_ptr);
    *(v0 + 320) = &protocol witness table for ACAccountStore;
    *(v0 + 288) = v6;
    v27 = [objc_opt_self() sharedInstance];
    v12 = type metadata accessor for AccountSecurityLevelCalculator();
    v13 = swift_allocObject();
    sub_100006F60(v11 + v8, v9, &qword_100025B58, &qword_1000175B8);
    v14 = v7(v9, 1, v10);
    v15 = *(v0 + 544);
    if (v14)
    {
      sub_100006FC8(*(v0 + 544), &qword_100025B58, &qword_1000175B8);
      v16 = 0;
    }

    else
    {
      v17 = *(v0 + 528);
      v18 = *(v0 + 520);
      v19 = *(v0 + 512);
      (*(v18 + 16))(v17, *(v0 + 544), v19);
      sub_100006FC8(v15, &qword_100025B58, &qword_1000175B8);
      v16 = PASLocatedExtension.manifest.getter();
      (*(v18 + 8))(v17, v19);
    }

    *(v0 + 352) = sub_10000DF2C(0, &qword_100026140, FMDFMIPManager_ptr);
    *(v0 + 360) = &off_1000213A8;
    *(v0 + 328) = v27;
    *(v0 + 392) = v12;
    *(v0 + 400) = &off_100020F70;
    *(v0 + 368) = v13;
    type metadata accessor for PASVSProxCardValidator();
    inited = swift_initStackObject();
    *(v0 + 664) = inited;
    v21 = *(v0 + 392);
    v22 = sub_100015744(v0 + 368, v21);
    v23 = *(v21 - 8);
    v24 = swift_task_alloc();
    (*(v23 + 16))(v24, v22, v21);
    v25 = *v24;
    inited[15] = v12;
    inited[16] = &off_100020F70;
    inited[12] = v25;
    inited[17] = 0;
    sub_10000DF7C((v0 + 288), (inited + 2));
    sub_10000DF7C((v0 + 328), (inited + 7));
    inited[17] = v16;
    sub_1000054E8((v0 + 368));

    v26 = swift_task_alloc();
    *(v0 + 672) = v26;
    *v26 = v0;
    v26[1] = sub_1000121D0;

    return sub_1000073CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000121D0(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 700) = a1;
  *(v5 + 680) = a2;
  *(v5 + 688) = a3;

  v6 = *(v4 + 584);
  v7 = *(v4 + 576);

  return _swift_task_switch(sub_100012300, v7, v6);
}

uint64_t sub_100012300()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 700);
  v4 = (*(v0 + 464) + OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v3 & 0x101010101010101;
  v4[1] = v2;
  v4[2] = v1;

  sub_100014D6C(v5, v6, v7);
  sub_100014D6C(v3 & 0x101010101010101, v2, v1);
  if ((v3 & 1) == 0)
  {
    static PASLogger.viewService.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Validator says we should not show prox card, exiting PASViewService.", v15, 2u);
    }

    v17 = *(v0 + 496);
    v16 = *(v0 + 504);
    v18 = *(v0 + 488);

    (*(v17 + 8))(v16, v18);
    exit(-1);
  }

  v8 = *(v0 + 472);

  if (v8)
  {
    (*(v0 + 472))(v9);
  }

  v10 = *(v0 + 664);

  swift_setDeallocating();
  sub_1000054E8((v10 + 16));
  sub_1000054E8((v10 + 56));
  sub_1000054E8((v10 + 96));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100012508()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000125E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100001E28(&unk_100025EC0, &qword_100017420);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100006F60(a3, v22 - v9, &unk_100025EC0, &qword_100017420);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100006FC8(v10, &unk_100025EC0, &qword_100017420);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006FC8(a3, &unk_100025EC0, &qword_100017420);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_100012960()
{
  v1 = v0;
  v115 = type metadata accessor for Logger();
  v114 = *(v115 - 8);
  v2 = __chkstk_darwin(v115);
  v4 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v105 - v5;
  v7 = sub_100001E28(&qword_1000259E8, &unk_100017410);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v116 = &v105 - v12;
  __chkstk_darwin(v11);
  v14 = &v105 - v13;
  v125 = type metadata accessor for PASDevice();
  v123 = *(v125 - 8);
  v15 = __chkstk_darwin(v125);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v110 = &v105 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v105 - v21;
  __chkstk_darwin(v20);
  v121 = &v105 - v23;
  v24 = sub_100001E28(&qword_100025E88, &unk_100017B80);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v105 - v28;
  v30 = *&v1[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device];
  if (!v30)
  {
    static PASLogger.viewService.getter();
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "No CBDevice present, unable to show prox card, exiting PASViewService.", v104, 2u);
    }

    (*(v114 + 8))(v4, v115);
    exit(-1);
  }

  v31 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_sourceViewDetails;
  swift_beginAccess();
  v119 = v31;
  sub_100006F60(&v1[v31], &v127, &qword_100026110, &qword_100017E78);
  v32 = *(&v128 + 1);
  v120 = v10;
  v113 = v17;
  v111 = v22;
  if (*(&v128 + 1))
  {
    v33 = v129;
    v34 = sub_100006DEC(&v127, *(&v128 + 1));
    *(&v132 + 1) = v32;
    v133 = v33;
    v35 = sub_10000DEC8(&v131);
    (*(*(v32 - 8) + 16))(v35, v34, v32);
    v36 = v30;
    sub_1000054E8(&v127);
  }

  else
  {
    v37 = v30;
    sub_100006FC8(&v127, &qword_100026110, &qword_100017E78);
    v131 = 0u;
    v132 = 0u;
    v133 = 0;
  }

  v38 = objc_allocWithZone(type metadata accessor for PASVSSetupEventPresenter(0));
  v39 = sub_10000896C(&v131);
  v40 = *&v39[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController];
  *&v39[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_presentingViewController] = v1;
  v122 = v1;
  v41 = v1;

  dispatch thunk of PASService.wrappedValue.getter();

  swift_getObjectType();
  dispatch thunk of PASTargetAccountOptionsProviderProtocol.targetAccountOptions.getter();
  swift_unknownObjectRelease();
  v124 = v30;
  v112 = v6;
  if (*(&v128 + 1))
  {
    sub_100006DEC(&v127, *(&v128 + 1));
    dispatch thunk of PASTargetAccountOptionsProtocol.targetAccountOptionsType.getter();
    v42 = type metadata accessor for PASTargetAccountOptionsType();
    v43 = *(v42 - 8);
    (*(v43 + 56))(v27, 0, 1, v42);
    sub_1000054E8(&v127);
    if ((*(v43 + 48))(v27, 1, v42) != 1)
    {
      (*(v43 + 32))(v29, v27, v42);
      goto LABEL_11;
    }
  }

  else
  {
    sub_100006FC8(&v127, &qword_100026118, &qword_100017E80);
    v42 = type metadata accessor for PASTargetAccountOptionsType();
    (*(*(v42 - 8) + 56))(v27, 1, 1, v42);
  }

  v44 = enum case for PASTargetAccountOptionsType.family(_:);
  type metadata accessor for PASTargetAccountOptionsType();
  v45 = *(v42 - 8);
  (*(v45 + 104))(v29, v44, v42);
  if ((*(v45 + 48))(v27, 1, v42) != 1)
  {
    sub_100006FC8(v27, &qword_100025E88, &unk_100017B80);
  }

LABEL_11:
  type metadata accessor for PASTargetAccountOptionsType();
  (*(*(v42 - 8) + 56))(v29, 0, 1, v42);
  v46 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetAccountOptionsType;
  swift_beginAccess();
  sub_1000159D0(v29, &v39[v46], &qword_100025E88, &unk_100017B80);
  swift_endAccess();
  v47 = &v41[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult];
  v48 = v41[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult + 1];
  v49 = *&v41[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult + 8];
  v50 = *&v41[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult + 16];
  v51 = (v50 != 1) & v48;
  v52 = (*&v41[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult + 2] << 16) | (*&v41[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult + 6] << 48);
  v53 = v41[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult] | (v48 << 8);
  sub_100014D58(*&v41[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult], v49, v50);
  sub_100014D6C(v53 | v52, v49, v50);
  v39[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_hasEligibleAccountForProxSetup] = v51;
  v54 = v47[2];
  if (v54 == 1 || (v55 = *v47, v56 = v47[1], sub_100014D58(*v47, v56, v47[2]), , sub_100014D6C(v55, v56, v54), !v54))
  {

    v56 = 0;
    v54 = 0xE000000000000000;
  }

  v58 = v123;
  v57 = v124;
  v59 = v122;
  v60 = &v39[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_accountUserName];
  *v60 = v56;
  v60[1] = v54;

  *&v39[OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_proxyDelegate + 8] = &off_1000213F0;
  swift_unknownObjectWeakAssign();
  v61 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_targetDevice;
  swift_beginAccess();
  sub_100006F60(&v41[v61], v14, &qword_1000259E8, &unk_100017410);
  v62 = *(v58 + 48);
  v63 = v125;
  v118 = v58 + 48;
  v117 = v62;
  if (v62(v14, 1, v125) == 1)
  {
    sub_100006FC8(v14, &qword_1000259E8, &unk_100017410);
  }

  else
  {
    v108 = v61;
    v109 = v41;
    v64 = v121;
    v107 = *(v58 + 32);
    v107(v121, v14, v63);
    v65 = v112;
    static PASLogger.common.getter();
    v66 = *(v58 + 16);
    v67 = v111;
    v66(v111, v64, v63);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v127 = v106;
      *v70 = 141558274;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2080;
      v66(v110, v67, v125);
      v71 = String.init<A>(describing:)();
      v73 = v72;
      (*(v123 + 8))(v67, v125);
      v74 = sub_100014D80(v71, v73, &v127);

      *(v70 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v68, v69, "Setting target Device to :%{mask.hash}s", v70, 0x16u);
      sub_1000054E8(v106);
      v58 = v123;

      v63 = v125;
    }

    else
    {

      (*(v58 + 8))(v67, v63);
    }

    (*(v114 + 8))(v65, v115);
    v59 = v122;
    v75 = v116;
    v107(v116, v121, v63);
    (*(v58 + 56))(v75, 0, 1, v63);
    v76 = OBJC_IVAR____TtC14PASViewService24PASVSSetupEventPresenter_targetDevice;
    swift_beginAccess();
    sub_1000159D0(v75, &v39[v76], &qword_1000259E8, &unk_100017410);
    swift_endAccess();
    v57 = v124;
    v41 = v109;
    v61 = v108;
  }

  v77 = [objc_allocWithZone(SKDevice) init];
  v78 = [v57 identifier];
  [v77 setIdentifier:v78];

  v79 = [objc_allocWithZone(SKSetupAppleIDSignInClient) init];
  [v79 setPasswordType:2];
  [v79 setPeerDevice:v77];
  [v79 setPersistentPairing:0];

  sub_100006F60(v59 + v119, &v127, &qword_100026110, &qword_100017E78);
  v80 = *(&v128 + 1);
  if (*(&v128 + 1))
  {
    v81 = v130;
    v82 = sub_100006DEC(&v127, *(&v128 + 1));
    *(&v132 + 1) = v80;
    v133 = v81;
    v83 = sub_10000DEC8(&v131);
    (*(*(v80 - 8) + 16))(v83, v82, v80);
    sub_1000054E8(&v127);
  }

  else
  {
    sub_100006FC8(&v127, &qword_100026110, &qword_100017E78);
    v131 = 0u;
    v132 = 0u;
    v133 = 0;
  }

  v84 = v79;
  v85 = v39;
  v122 = v84;
  v86 = sub_1000155CC(v84, v85, &v131);
  v87 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_flowController;
  *&v41[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_flowController] = v86;

  *&v86[OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_delegate + 8] = &off_1000213D8;
  swift_unknownObjectWeakAssign();

  v88 = v120;
  sub_100006F60(&v41[v61], v120, &qword_1000259E8, &unk_100017410);
  v89 = v125;
  if (v117(v88, 1, v125) == 1)
  {
    sub_100006FC8(v88, &qword_1000259E8, &unk_100017410);
  }

  else
  {
    v90 = v77;
    v91 = v123;
    v92 = *(v123 + 32);
    v93 = v113;
    v92(v113, v88, v89);
    v94 = *&v41[v87];
    if (v94)
    {
      v95 = v93;
      v96 = v116;
      v92(v116, v95, v89);
      (*(v91 + 56))(v96, 0, 1, v89);
      v97 = OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice;
      swift_beginAccess();

      sub_1000159D0(v96, v94 + v97, &qword_1000259E8, &unk_100017410);
      swift_endAccess();
    }

    else
    {
      (*(v91 + 8))(v93, v89);
    }

    v77 = v90;
  }

  if ([v41 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v131 = 0u;
    v132 = 0u;
  }

  v127 = v131;
  v128 = v132;
  if (!*(&v132 + 1))
  {
    sub_100006FC8(&v127, &qword_1000260E8, &unk_100017E48);
    v100 = *&v41[v87];
    if (!v100)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  sub_100001E28(&qword_1000260F0, &qword_100017E58);
  if (swift_dynamicCast())
  {
    v98 = v126;
    v99 = String._bridgeToObjectiveC()();
    [v98 setIdleTimerDisabled:1 forReason:v99];
    swift_unknownObjectRelease();
  }

  v100 = *&v41[v87];
  if (v100)
  {
LABEL_36:
    v101 = *(v100 + 32);

    [v101 showProxCard];
  }

LABEL_37:
}

void sub_100013A2C(const char *a1)
{
  v3 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PASLogger.common.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  if ([v3 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_100001E28(&qword_1000260F0, &qword_100017E58);
    if (swift_dynamicCast())
    {
      v11 = v13[1];
      v12 = String._bridgeToObjectiveC()();
      [v11 setIdleTimerDisabled:0 forReason:v12];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100006FC8(v16, &qword_1000260E8, &unk_100017E48);
  }
}

id sub_100013C58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device] = 0;
  v7 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_targetDevice;
  v8 = type metadata accessor for PASDevice();
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  *&v4[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_flowController] = 0;
  v9 = &v4[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 1;
  v10 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__targetAccountOptionsProvider;
  sub_100001E28(&qword_1000260F8, &qword_100017E60);
  swift_allocObject();
  *&v4[v10] = PASService.init()();
  v11 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__extensionCache;
  sub_100001E28(&qword_100026100, &qword_100017E68);
  swift_allocObject();
  *&v4[v11] = PASService.init()();
  v12 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__deviceProvider;
  sub_100001E28(&qword_100026108, &qword_100017E70);
  swift_allocObject();
  *&v4[v12] = PASService.init()();
  v13 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
  v14 = type metadata accessor for PASLocatedExtension();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = &v4[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_sourceViewDetails];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v4;
  v19.super_class = type metadata accessor for PASVSPrimaryViewController(0);
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v16, a3);

  return v17;
}

id sub_100013EC8(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_device] = 0;
  v4 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_targetDevice;
  v5 = type metadata accessor for PASDevice();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_flowController] = 0;
  v6 = &v2[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_validationResult];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = 1;
  v7 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__targetAccountOptionsProvider;
  sub_100001E28(&qword_1000260F8, &qword_100017E60);
  swift_allocObject();
  *&v2[v7] = PASService.init()();
  v8 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__extensionCache;
  sub_100001E28(&qword_100026100, &qword_100017E68);
  swift_allocObject();
  *&v2[v8] = PASService.init()();
  v9 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController__deviceProvider;
  sub_100001E28(&qword_100026108, &qword_100017E70);
  swift_allocObject();
  *&v2[v9] = PASService.init()();
  v10 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
  v11 = type metadata accessor for PASLocatedExtension();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v12 = &v2[OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_sourceViewDetails];
  v13 = type metadata accessor for PASVSPrimaryViewController(0);
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  v16.receiver = v2;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

id sub_1000140D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASVSPrimaryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000141F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1000142E8, v7, v6);
}

uint64_t sub_1000142E8(uint64_t a1)
{
  *(v1 + 72) = PASLocatedExtension.handle.getter();
  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  *v2 = v1;
  v2[1] = sub_100014388;

  return PASExtensionHandle.didPerformLocalAuthentication()();
}

uint64_t sub_100014388()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10001450C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1000144A4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000144A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001450C()
{

  static PASLogger.common.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "PASVSPrimaryViewController setupFlowControllerDidPerformLocalAuthentication failed to notify extension: %{public}@", v3, 0xCu);
    sub_100006FC8(v4, &qword_1000259F8, &qword_100017438);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v6 = v0[1];

  return v6();
}

void sub_1000146CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10000E748;
    v4[3] = &unk_100021450;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setEventHandler:v3];
  _Block_release(v3);
}

id sub_100014774()
{
  v1 = [v0 messageSessionTemplate];

  return v1;
}

uint64_t type metadata accessor for PASVSPrimaryViewController(uint64_t a1)
{
  result = qword_1000260D0;
  if (!qword_1000260D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100014A30(uint64_t a1)
{
  sub_100014B60(319, &qword_100025DE0, &type metadata accessor for PASDevice);
  if (v1 <= 0x3F)
  {
    sub_100014B60(319, &qword_1000260E0, &type metadata accessor for PASLocatedExtension);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100014B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_100014BB4(uint64_t a1)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

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

uint64_t sub_100014C9C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100014CFC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100014D80(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100014D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_100014D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_100014D80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014E4C(v11, 0, 0, 1, a1, a2);
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
    sub_100005470(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000054E8(v11);
  return v7;
}

unint64_t sub_100014E4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100014F58(a5, a6);
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

char *sub_100014F58(uint64_t a1, unint64_t a2)
{
  v3 = sub_100014FA4(a1, a2);
  sub_1000150D4(&off_100020CB8);
  return v3;
}

char *sub_100014FA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000151C0(v5, 0);
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
        v7 = sub_1000151C0(v10, 0);
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

uint64_t sub_1000150D4(uint64_t result)
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

  result = sub_100015234(result, v11, 1, v3);
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

void *sub_1000151C0(uint64_t a1, uint64_t a2)
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

  sub_100001E28(&qword_100026120, &qword_100017E88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100015234(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001E28(&qword_100026120, &qword_100017E88);
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

unint64_t sub_100015328(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100015400(a1, v4);
}

unint64_t sub_10001536C(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();

  return sub_1000154C8(a1, v3);
}

unint64_t sub_100015400(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100006F04(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100006EB0(v8);
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

unint64_t sub_1000154C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_1000155CC(uint64_t a1, void *a2, uint64_t a3)
{
  v11[3] = &type metadata for DTOStatusProvider;
  v11[4] = &off_100020ED8;
  type metadata accessor for PASVSSetupFlowController(0);
  v6 = swift_allocObject();
  sub_100015744(v11, &type metadata for DTOStatusProvider);
  v10[3] = &type metadata for DTOStatusProvider;
  v10[4] = &off_100020ED8;
  v7 = OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_targetDevice;
  v8 = type metadata accessor for PASDevice();
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  *&v6[OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 3) = &off_100021308;
  *(v6 + 4) = a2;
  *(v6 + 2) = a1;
  sub_10000DF94(v10, &v6[OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_dtoStatusProvider]);
  sub_100006F60(a3, &v6[OBJC_IVAR____TtC14PASViewService24PASVSSetupFlowController_viewDetails], &qword_1000259F0, &unk_100017E90);
  [a2 setDelegate:v6];
  sub_100006FC8(a3, &qword_1000259F0, &unk_100017E90);
  sub_1000054E8(v10);
  sub_1000054E8(v11);
  return v6;
}

uint64_t sub_100015744(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100015794(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000157A4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000157EC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000157FC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001584C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000536C;

  return sub_1000112B0(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_100015924()
{
  result = qword_100025E90;
  if (!qword_100025E90)
  {
    type metadata accessor for PASTargetAccountOptionsType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025E90);
  }

  return result;
}

uint64_t sub_10001597C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000159D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001E28(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100015A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015A50()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_100001E28(&qword_100025B58, &qword_1000175B8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for PASLocatedExtension();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return _swift_task_switch(sub_100015BD8, v5, v4);
}

uint64_t sub_100015BD8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC14PASViewService26PASVSPrimaryViewController_designatedExtension;
  swift_beginAccess();
  sub_100006F60(v4 + v5, v3, &qword_100025B58, &qword_1000175B8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[9];

    sub_100006FC8(v6, &qword_100025B58, &qword_1000175B8);

    v7 = v0[1];

    return v7(1);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v0[16] = PASLocatedExtension.handle.getter();
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_100015D84;

    return PASExtensionHandle.shouldPerformLocalAuthentication()();
  }
}

uint64_t sub_100015D84(char a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);
    v6 = *(v4 + 120);
    v7 = sub_100015F60;
  }

  else
  {

    *(v4 + 152) = a1 & 1;
    v5 = *(v4 + 112);
    v6 = *(v4 + 120);
    v7 = sub_100015EB8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100015EB8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100015F60()
{

  static PASLogger.common.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "PASVSPrimaryViewController setupFlowControllerShouldPerformLocalAuthentication extension failed: %{public}@", v3, 0xCu);
    sub_100006FC8(v4, &qword_1000259F8, &qword_100017438);
  }

  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];

  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);

  v12 = v0[1];

  return v12(1);
}