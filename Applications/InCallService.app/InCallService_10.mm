void sub_1001FDAA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator_coordinator);
  if (v1)
  {
    v3 = v1;
    sub_100196364();
    v2 = sub_1001FD988();
    sub_1001FD594((v2 & 1) == 0);
  }
}

void sub_1001FDB24()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_100196830();
  }
}

double sub_1001FDB8C()
{
  swift_getKeyPath();
  sub_1001FF820();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

uint64_t sub_1001FDC48(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__viewControllers;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void sub_1001FDFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100008E10();
  v28 = v24;
  v30 = v29;
  sub_1001FDB8C();
  sub_1000142A8();
  while (v26 + v27 != -1)
  {
    if (++v27 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v32 = v31 + 16;
    v33 = *(v25 + v31);
    sub_100007BC4();
    v34 = v33;
    v35 = static NSObject.== infix(_:_:)();

    v31 = v32;
    if (v35)
    {

      if (qword_1003A9FB8 != -1)
      {
        sub_1000078D4(&qword_1003A9FB8);
      }

      v36 = type metadata accessor for Logger();
      sub_1000058D0(v36, &unk_1003B8978);
      v37 = v30;
      v38 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (sub_100012B38())
      {
        sub_100005384();
        v39 = sub_100025300();
        sub_100005CD0(v39, 5.7779e-34);
        sub_100009708(&_mh_execute_header, v40, v41, "EnhancedEmergency: tried to add media request view controller that was already added: %@");
        sub_100153D2C(v39);
        sub_1000053DC();
        sub_100005340();
      }

      goto LABEL_14;
    }
  }

  if (qword_1003A9FB8 == -1)
  {
    goto LABEL_11;
  }

LABEL_16:
  sub_1000078D4(&qword_1003A9FB8);
LABEL_11:
  v42 = type metadata accessor for Logger();
  sub_1000058D0(v42, &unk_1003B8978);
  v43 = v30;
  v44 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100012B38())
  {
    sub_100005384();
    v45 = sub_100025300();
    sub_100005CD0(v45, 5.7779e-34);
    sub_100009708(&_mh_execute_header, v46, v47, "EnhancedEmergency: add media request view controller: %@");
    sub_100153D2C(v45);
    sub_1000053DC();
    sub_100005340();
  }

  swift_getKeyPath();
  sub_1001FF820();
  v48 = v43;
  sub_100008C74();
  sub_10000C5B0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = sub_100008A94();
  sub_10000C5B0();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v50 = OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__viewControllers;
  sub_1000086F0(v28 + OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__viewControllers, v51);
  sub_1002168B4(v52);
  sub_10000894C();
  sub_100006F20(v49 + 1);
  *(v28 + v50) = v53;
  swift_endAccess();
  sub_100008A94();
  sub_100008174();
  sub_10000FFFC(v54);

LABEL_14:
  sub_1001FEF10();
  sub_10000681C();
}

void sub_1001FE2D8(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001FF878(v3);
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_10003D890((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_1001FE3CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100008E10();
  v25 = v24;
  v27 = v26;
  sub_1001FDB8C();
  v29 = v28;
  v30 = 0;
  v31 = 0;
  v32 = *(v28 + 16);
  while (v32 != v31)
  {
    if (v31 >= *(v29 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v33 = *(v29 + v30 + 32);
    sub_100007BC4();
    v34 = v33;
    v35 = static NSObject.== infix(_:_:)();

    if (v35)
    {

      if (qword_1003A9FB8 != -1)
      {
        sub_1000078D4(&qword_1003A9FB8);
      }

      v42 = type metadata accessor for Logger();
      sub_1000058D0(v42, &unk_1003B8978);
      v43 = v27;
      v44 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (sub_100012B38())
      {
        sub_100005384();
        v45 = sub_100025300();
        sub_100005CD0(v45, 5.7779e-34);
        sub_100009708(&_mh_execute_header, v46, v47, "EnhancedEmergency: insert web view controller under button controls: %@");
        sub_100153D2C(v45);
        sub_1000053DC();
        sub_100005340();
      }

      swift_getKeyPath();
      sub_1001FF820();
      v48 = v43;
      sub_100008174();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_100008D98();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v49 = OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__viewControllers;
      sub_1000086F0(v25 + OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__viewControllers, v50);
      v51 = *(v25 + v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + v49) = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001FF878(v51);
        v51 = v55;
        *(v25 + v49) = v55;
      }

      if (v31 >= *(v51 + 16))
      {
        __break(1u);
      }

      else
      {
        v53 = v51 + v30;
        v54 = *(v51 + v30 + 32);
        *(v53 + 32) = v43;
        *(v53 + 40) = 0;
        *(v25 + v49) = v51;
        swift_endAccess();

        swift_getKeyPath();
        sub_100008D98();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        sub_10000681C();
      }

      return;
    }

    ++v31;
    v30 += 16;
  }

  if (qword_1003A9FB8 == -1)
  {
    goto LABEL_7;
  }

LABEL_21:
  sub_1000078D4(&qword_1003A9FB8);
LABEL_7:
  v36 = type metadata accessor for Logger();
  sub_1000058D0(v36, &unk_1003B8978);
  v56 = v27;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    sub_100005384();
    v39 = sub_1000059A8();
    *v27 = 138412290;
    *(v27 + 1) = v56;
    *v39 = v56;
    v56;
    _os_log_impl(&_mh_execute_header, v37, v38, "EnhancedEmergency: tried to insert web view controller under button controls, but it was already gone: %@", v27, 0xCu);
    sub_100153D2C(v39);
    sub_100005BB8(v39);
    sub_100005368();
  }

  sub_10000681C();
}

double sub_1001FE77C(void *a1, const char *a2, const char *a3, ...)
{
  v4 = v3;
  sub_1001FDB8C();
  v7 = v6;
  v8 = 0;
  v9 = *(v6 + 16);
  v10 = 32;
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v11 = *(v7 + v10);
    sub_1000064BC(0, &qword_1003AB7A0, NSObject_ptr);
    v12 = v11;
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {

      if (qword_1003A9FB8 != -1)
      {
        sub_1000078D4(&qword_1003A9FB8);
      }

      v19 = type metadata accessor for Logger();
      sub_1000058D0(v19, &unk_1003B8978);
      v20 = a1;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_100005384();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v20;
        *v24 = v20;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, a2, v23, 0xCu);
        sub_100153D2C(v24);
        sub_100005BB8(v24);
        sub_100005BB8(v23);
      }

      swift_getKeyPath();
      sub_1001FF820();
      sub_10000C5B0();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_10000C5B0();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      sub_1001FE2D8(v8);
      v27 = v26;
      swift_endAccess();

      v31[0] = v4;
      swift_getKeyPath();
      sub_10000FFFC(v31);

      return result;
    }

    ++v8;
    v10 += 16;
  }

  if (qword_1003A9FB8 == -1)
  {
    goto LABEL_7;
  }

LABEL_18:
  sub_1000078D4(&qword_1003A9FB8);
LABEL_7:
  v14 = type metadata accessor for Logger();
  sub_1000058D0(v14, &unk_1003B8978);
  v15 = a1;
  osloga = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(osloga, v16))
  {
    sub_100005384();
    v17 = sub_1000059A8();
    sub_10000883C(v17, 5.7779e-34);
    _os_log_impl(&_mh_execute_header, osloga, v16, a3, v8, 0xCu);
    sub_100153D2C(v17);
    sub_100005340();
    sub_100005368();
  }

  return result;
}

void sub_1001FEF78(const char *a1, char a2)
{
  if (qword_1003A9FB8 != -1)
  {
    sub_1000078D4(&qword_1003A9FB8);
  }

  v4 = type metadata accessor for Logger();
  sub_1000058D0(v4, &unk_1003B8978);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
    sub_1000053DC();
  }

  sub_1001FD4D8(a2 & 1);
}

void sub_1001FF0A8()
{
  if (qword_1003A9FB8 != -1)
  {
    sub_1000078D4(&qword_1003A9FB8);
  }

  v0 = type metadata accessor for Logger();
  sub_1000058D0(v0, &unk_1003B8978);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "EnhancedEmergency: request haptic", v3, 2u);
    sub_100005368();
  }

  v4 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  [v4 notificationOccurred:0];
}

void sub_1001FF1FC(const char *a1, char a2, char a3)
{
  if (qword_1003A9FB8 != -1)
  {
    sub_1000078D4(&qword_1003A9FB8);
  }

  v6 = type metadata accessor for Logger();
  sub_1000058D0(v6, &unk_1003B8978);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
    sub_100005BB8(v9);
  }

  sub_1001FD4B0(a2 & 1);

  sub_1001FD594(a3 & 1);
}

id sub_1001FF344()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 frontmostAudioOrVideoCall];

  return v1;
}

uint64_t sub_1001FF404(uint64_t a1)
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

uint64_t sub_1001FF4BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001FF4FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001FF54C()
{
  sub_1001FF820();
  sub_100025C28();
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1001FF5D4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000064BC(0, &qword_1003B0550, UIViewController_ptr);
  v4 = a3;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008A14(v6, &unk_1003B8978);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Attempted to update wrapped emergency view controller.", v8, 2u);
    }
  }
}

uint64_t sub_1001FF730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001FFA7C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001FF794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001FFA7C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001FF7F8(uint64_t a1)
{
  sub_1001FFA7C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1001FF820()
{
  result = qword_1003AE870;
  if (!qword_1003AE870)
  {
    type metadata accessor for ClarityUIEnhancedEmergencyCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE870);
  }

  return result;
}

unint64_t sub_1001FF924()
{
  result = qword_1003AE880;
  if (!qword_1003AE880)
  {
    sub_100155B7C(&qword_1003AE878, &qword_1002FF7E8);
    sub_1001FF9B0();
    sub_1001FFA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE880);
  }

  return result;
}

unint64_t sub_1001FF9B0()
{
  result = qword_1003AE888;
  if (!qword_1003AE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE888);
  }

  return result;
}

unint64_t sub_1001FFA04()
{
  result = qword_1003AE890;
  if (!qword_1003AE890)
  {
    sub_100155B7C(&qword_1003AE898, &qword_1002FF7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE890);
  }

  return result;
}

unint64_t sub_1001FFA7C()
{
  result = qword_1003AE8A0;
  if (!qword_1003AE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE8A0);
  }

  return result;
}

id sub_1001FFAD8()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed:v0];

  return v1;
}

id sub_1001FFB3C(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PHCallTranslationController____lazy_storage___viewModel] = 0;
  *&v3[OBJC_IVAR___PHCallTranslationController____lazy_storage___button] = 0;
  v3[OBJC_IVAR___PHCallTranslationController_updateVisibility] = 0;
  v3[OBJC_IVAR___PHCallTranslationController_hasTranslationActivity] = 0;
  sub_100006D28();
  sub_100006D28();
  swift_unknownObjectWeakInit();
  sub_100006D28();
  sub_100006D28();
  *&v3[OBJC_IVAR___PHCallTranslationController_currentCall] = 0;
  *&v3[OBJC_IVAR___PHCallTranslationController_currentWorker] = 0;
  *&v3[OBJC_IVAR___PHCallTranslationController_currentTask] = 0;
  *&v3[OBJC_IVAR___PHCallTranslationController_translationStateCancellable] = 0;
  v8 = OBJC_IVAR___PHCallTranslationController_moreMenuViewModel;
  type metadata accessor for CallTranslationMoreMenuViewModel();
  memset(&v12[1], 0, 32);
  v13 = 0;
  swift_allocObject();
  *&v3[v8] = CallTranslationMoreMenuViewModel.init(service:)();
  Logger.init(subsystem:category:)();
  swift_unknownObjectWeakAssign();
  v9 = &v3[OBJC_IVAR___PHCallTranslationController_translationStateDidChange];
  *v9 = a2;
  v9[1] = a3;
  v12[0].receiver = v3;
  v12[0].super_class = ObjectType;
  v10 = [(objc_super *)v12 init];

  return v10;
}

uint64_t sub_1001FFD6C(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakAssign();
  *(v2 + OBJC_IVAR___PHCallTranslationController_updateVisibility) = a2;
  return result;
}

double sub_1001FFDD8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PHCallTranslationController_currentWorker);
  *(v1 + OBJC_IVAR___PHCallTranslationController_currentWorker) = a1;

  if (v2)
  {
    CallTranslationWorker.stopTranslation()();
  }

  sub_1002014E0();

  return result;
}

uint64_t sub_1001FFE84()
{
  if (!*(v0 + OBJC_IVAR___PHCallTranslationController_currentWorker))
  {
    return 0;
  }

  v1 = CallTranslationWorker.hasTranslationActivity.getter();

  return v1 & 1;
}

void sub_1001FFED4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10001F8D4();
  v7 = [v6 superview];

  if (v7)
  {

    sub_100007F98();

LABEL_4:
    [v8 v9];
    return;
  }

  swift_unknownObjectWeakAssign();
  type metadata accessor for Features();
  v11 = static Features.shared.getter();
  v12 = Features.isMoreMenuEnabled.getter();

  if (v12)
  {
    sub_100007F98();
    return;
  }

  if (a2)
  {
    sub_100007F98();

    goto LABEL_4;
  }

  v14 = OBJC_IVAR___PHCallTranslationController____lazy_storage___button;
  [*(v3 + OBJC_IVAR___PHCallTranslationController____lazy_storage___button) setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [a1 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  [v15 addSubview:*(v3 + v14)];

  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002F96C0;
  v18 = [*(v3 + v14) topAnchor];
  v19 = [a1 view];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = [v19 readableContentGuide];

  v22 = [v21 topAnchor];
  v23 = [v18 constraintEqualToAnchor:v22];

  *(v17 + 32) = v23;
  v24 = [*(v3 + v14) leadingAnchor];
  v25 = [a1 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v26 readableContentGuide];

  v29 = [v28 leadingAnchor];
  v30 = [v24 constraintEqualToAnchor:v29];

  *(v17 + 40) = v30;
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];
  sub_100007F98();
}

uint64_t sub_1002002AC()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AE988, qword_1002FF9A8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR___PHCallTranslationController____lazy_storage___viewModel;
  if (*(v1 + OBJC_IVAR___PHCallTranslationController____lazy_storage___viewModel))
  {
    v9 = *(v1 + OBJC_IVAR___PHCallTranslationController____lazy_storage___viewModel);
  }

  else
  {
    type metadata accessor for LanguageSelectionViewModel();
    static Locale.current.getter();
    v10 = type metadata accessor for Locale();
    sub_100006848(v7, 0, 1, v10);
    static Locale.current.getter();
    sub_100006848(v5, 0, 1, v10);
    v9 = LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:)();
    *(v1 + v8) = v9;
  }

  return v9;
}

void *sub_1002003F4()
{
  v0 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v0 - 8);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3);
  v4 = sub_10014EA98(&qword_1003AE988, qword_1002FF9A8);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v7 = type metadata accessor for CallTranslationLanguagePicker();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_100006848(v6, 1, 1, v3);
    sub_1002002AC();
    v17[1] = v2;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = v12;

    static Locale.current.getter();
    CallTranslationLanguagePicker.init(current:possibleLocale:viewModel:useTranslationPicker:shouldShowCancelButton:languageSelected:wantsToDismiss:)();

    sub_100201D78(&qword_1003AE990, &type metadata accessor for CallTranslationLanguagePicker, &protocol conformance descriptor for CallTranslationLanguagePicker);
    v16 = View.inLockScreenHostingController()();
    [v16 setModalPresentationStyle:1];
    [v16 setOverrideUserInterfaceStyle:2];
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
    [v15 presentViewController:v16 animated:1 completion:0];

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_100200720(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  [a3 dismissViewControllerAnimated:1 completion:0];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1002007A8(a2, a1);
  }
}

double sub_1002007A8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR___PHCallTranslationController_currentWorker))
  {

    if ((CallTranslationWorker.hasTranslationActivity.getter() & 1) == 0)
    {
      CallTranslationWorker.startTranslation(local:remote:)();
    }
  }

  return result;
}

void sub_100200824(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1002003F4();
  }
}

void sub_100200878(char a1)
{
  (*(v1 + OBJC_IVAR___PHCallTranslationController_translationStateDidChange))();
  if ((a1 & 1) == 0 || (sub_1002008F0() & 1) == 0)
  {

    sub_1002010D4(a1 & 1);
  }
}

uint64_t sub_1002008F0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if (!*(v0 + OBJC_IVAR___PHCallTranslationController_currentWorker))
    {

      return 0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      Strong = CallTranslationWorker.createTranscriptsViewController()().super.super.isa;
      swift_unknownObjectWeakAssign();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      result = [Strong view];
      if (result)
      {
        v4 = result;
        v5 = [result superview];

        if (v5)
        {

          return 0;
        }

        [v2 addChildViewController:Strong];
        result = [Strong view];
        if (result)
        {
          v30 = result;
          sub_100201368(result, &selRef_callTranslationControllerWithShouldAddTranslationViewToHost_);

          [Strong didMoveToParentViewController:v2];

          return 1;
        }

        goto LABEL_35;
      }

      __break(1u);
    }

    else
    {
      result = [Strong view];
      if (result)
      {
        v6 = result;
        [result removeFromSuperview];

        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          result = [v2 view];
          if (!result)
          {
            goto LABEL_41;
          }
        }

        v7 = result;
        [v2 addChildViewController:Strong];
        result = [Strong view];
        if (result)
        {
          v8 = result;
          [result setTranslatesAutoresizingMaskIntoConstraints:0];

          v9 = swift_unknownObjectWeakLoadStrong();
          result = [Strong view];
          v10 = result;
          if (v9)
          {
            if (!result)
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v48 = v7;
            [v7 addSubview:result];

            sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_1002FB360;
            result = [Strong view];
            if (!result)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v12 = result;
            v13 = [result leadingAnchor];

            v14 = [v9 leadingAnchor];
            v15 = [v13 constraintEqualToAnchor:v14];

            *(v11 + 32) = v15;
            result = [Strong view];
            if (!result)
            {
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v16 = result;
            v17 = [result trailingAnchor];

            v18 = [v9 trailingAnchor];
            v19 = [v17 constraintEqualToAnchor:v18];

            *(v11 + 40) = v19;
            result = [Strong view];
            if (!result)
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            v20 = result;
            v21 = [result topAnchor];

            v22 = [v9 topAnchor];
            v23 = [v21 constraintEqualToAnchor:v22 constant:10.0];

            *(v11 + 48) = v23;
            result = [Strong view];
            if (!result)
            {
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            v24 = result;
            v25 = objc_opt_self();
            v26 = [v24 bottomAnchor];

            v27 = [v9 bottomAnchor];
            v28 = [v26 constraintEqualToAnchor:v27];

            *(v11 + 56) = v28;
            sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
            v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

            [v25 activateConstraints:v29.super.isa];

            v7 = v48;
          }

          else
          {
            if (!result)
            {
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            [v7 addSubview:result];

            sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1002FB360;
            result = [Strong view];
            if (!result)
            {
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            v32 = result;
            v33 = [result leadingAnchor];

            v34 = [v7 leadingAnchor];
            v35 = [v33 constraintEqualToAnchor:v34];

            *(v31 + 32) = v35;
            result = [Strong view];
            if (!result)
            {
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v36 = result;
            v37 = [result trailingAnchor];

            v38 = [v7 trailingAnchor];
            v39 = [v37 constraintEqualToAnchor:v38];

            *(v31 + 40) = v39;
            result = [Strong view];
            if (!result)
            {
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v40 = result;
            v41 = [result centerYAnchor];

            v42 = [v7 centerYAnchor];
            v43 = [v41 constraintEqualToAnchor:v42];

            *(v31 + 48) = v43;
            result = [Strong view];
            if (!result)
            {
LABEL_46:
              __break(1u);
              return result;
            }

            v44 = result;
            v45 = objc_opt_self();
            v46 = [v44 heightAnchor];

            v47 = [v46 constraintEqualToConstant:300.0];
            *(v31 + 56) = v47;
            sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
            v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

            [v45 activateConstraints:v29.super.isa];
          }

          [Strong didMoveToParentViewController:v2];

          return 0;
        }

        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

void sub_1002010D4(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*(v1 + OBJC_IVAR___PHCallTranslationController_updateVisibility) == 1)
  {
    v15 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = [v15 view];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        [v4 callTranslationControllerWithShouldRemoveTranslationViewFromHost:v5];
        swift_unknownObjectRelease();

        Strong = v15;
        goto LABEL_6;
      }

      __break(1u);
    }

    else if (v5)
    {
      [v5 setHidden:0];

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v15;
      v9 = a1 & 1;
      *(v8 + 24) = a1 & 1;
      v20 = sub_100201D50;
      v21 = v8;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_10002E570;
      v19 = &unk_10035FE50;
      v10 = _Block_copy(&aBlock);
      v11 = v15;

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v9;
      v20 = sub_100201D5C;
      v21 = v12;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_100164920;
      v19 = &unk_10035FEA0;
      v13 = _Block_copy(&aBlock);
      v14 = v11;

      [v7 animateWithDuration:4 delay:v10 options:v13 animations:0.2 completion:0.0];

      _Block_release(v13);
      _Block_release(v10);
      return;
    }

    __break(1u);
    return;
  }

LABEL_6:
}

double sub_100201368(uint64_t a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong *a2];

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002013DC(void *a1, char a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = 0.0;
    if (a2)
    {
      v4 = 1.0;
    }

    v5 = v3;
    [v3 setAlpha:v4];
  }

  else
  {
    __break(1u);
  }
}

void sub_100201454(char a1, id a2, char a3)
{
  if (a1)
  {
    v4 = [a2 view];
    if (v4)
    {
      v5 = v4;
      [v4 setHidden:(a3 & 1) == 0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002014E0()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AC968, &qword_1002FD498);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_10014EA98(&qword_1003AE968, &qword_1002FF990);
  v6 = __chkstk_darwin(v5);
  v9 = &v14 - v8;
  if (*(v0 + OBJC_IVAR___PHCallTranslationController_currentWorker))
  {
    v16 = v6;
    v17 = v7;

    v15 = CallTranslationWorker.hasTranslationActivityPublisher.getter();
    v19 = v15;
    v10 = [objc_opt_self() mainRunLoop];
    v18 = v10;
    v11 = type metadata accessor for NSRunLoop.SchedulerOptions();
    sub_100006848(v4, 1, 1, v11);
    sub_10014EA98(&qword_1003AE970, &unk_1002FF998);
    sub_1000064BC(0, &qword_1003AC978, NSRunLoop_ptr);
    sub_100027E08(&qword_1003AE978, &qword_1003AE970, &unk_1002FF998, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1001B95E8();
    Publisher.receive<A>(on:options:)();
    sub_10000830C(v4, &qword_1003AC968, &qword_1002FD498);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100027E08(&qword_1003AE980, &qword_1003AE968, &qword_1002FF990, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v12 = v16;
    v13 = Publisher<>.sink(receiveValue:)();

    (*(v17 + 8))(v9, v12);
    *(v1 + OBJC_IVAR___PHCallTranslationController_translationStateCancellable) = v13;
  }

  else
  {

    sub_10020180C(0);
  }
}

void sub_10020180C(char a1)
{
  v2 = *(v1 + OBJC_IVAR___PHCallTranslationController_hasTranslationActivity);
  *(v1 + OBJC_IVAR___PHCallTranslationController_hasTranslationActivity) = a1;
  sub_100201880(v2);
}

void sub_100201824(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10020180C(v2);
  }
}

void sub_100201880(uint64_t result)
{
  v2 = OBJC_IVAR___PHCallTranslationController_hasTranslationActivity;
  if (v1[OBJC_IVAR___PHCallTranslationController_hasTranslationActivity] != (result & 1))
  {
    v3 = v1;
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3[v2];

      _os_log_impl(&_mh_execute_header, v5, v6, "hasTranslationActivity changed to %{BOOL}d", v7, 8u);
    }

    else
    {

      v5 = v4;
    }

    v8 = v3[v2];
    v9 = sub_10001F8D4();
    v10 = v9;
    v11 = (v8 & 1) != 0 || *(&v4->isa + OBJC_IVAR___PHCallTranslationController_currentWorker) == 0;
    [v9 setHidden:v11];

    sub_100200878(v3[v2]);
  }
}

double sub_100201A5C(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t type metadata accessor for CallTranslationController(uint64_t a1)
{
  result = qword_1003AE950;
  if (!qword_1003AE950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100201C6C(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100201D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NSString sub_100201DC8()
{
  result = String._bridgeToObjectiveC()();
  qword_1003AE9A0 = result;
  return result;
}

NSString sub_100201E00()
{
  result = String._bridgeToObjectiveC()();
  qword_1003AE9A8 = result;
  return result;
}

uint64_t sub_100201E38(void *a1)
{
  type metadata accessor for DeclineCallService();
  v2 = swift_allocObject();
  sub_1002025F4(a1);
  return v2;
}

id sub_100201ED8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeclineCallServiceFactory();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100201F30(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeclineCallServiceFactory();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100201FA4()
{
  v0 = objc_opt_self();

  return [v0 setShouldForceDismiss];
}

id sub_100201FDC()
{
  v0 = objc_opt_self();

  return [v0 setShouldLockDeviceOnNextDismiss];
}

double sub_100202014(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 currentInCallScene];
      if (v6)
      {
        v7 = v6;
        [v6 requestTransitionToPresentationMode:0 isUserInitiated:0 analyticsSource:a1];
      }
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002020F8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 209) = a3;
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;
  type metadata accessor for MainActor();
  *(v3 + 160) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 168) = v5;
  *(v3 + 176) = v4;

  return _swift_task_switch(sub_100202194, v5, v4);
}

uint64_t sub_100202194()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];
  *(v0 + 184) = v2;

  if (!v2)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_9:

    goto LABEL_10;
  }

  v4 = [v3 answeringMachine];
  *(v0 + 192) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 209);
    v7 = String._bridgeToObjectiveC()();
    *(v0 + 200) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_100202428;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_10014EA98(&qword_1003AEB28, &qword_1002FFA88);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1002025B0;
    *(v0 + 104) = &unk_10035FF90;
    *(v0 + 112) = v8;
    [v5 screenCallWithUUID:v7 manualScreening:v6 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  swift_unknownObjectRelease();
LABEL_10:
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v9 = type metadata accessor for Logger();
  sub_1000058D0(v9, &unk_1003B8850);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (sub_10000843C(v11))
  {
    v12 = sub_100005924();
    sub_100005DF4(v12);
    sub_10000C5C0(&_mh_execute_header, v13, v14, "AudioCallViewControllerCallManager: could not screen because there is no answering machine");
    sub_100005368();
  }

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_100202428()
{
  sub_100006610();
  sub_1000058C4();
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_100202528, v2, v1);
}

uint64_t sub_100202528()
{
  sub_1000058A8();
  v1 = *(v0 + 200);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002025B0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *sub_100008878((a1 + 32), *(a1 + 56));

  return sub_10021A980(v3, v2);
}

void *sub_1002025F4(uint64_t a1)
{
  v1[3] = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  v1[4] = sub_100201F88;
  v1[5] = 0;
  v1[6] = sub_100201FA4;
  v1[7] = 0;
  v1[8] = sub_100201FDC;
  v1[9] = 0;
  v1[10] = sub_100202014;
  v1[11] = 0;
  v1[12] = &unk_1002FFA80;
  v1[13] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t sub_10020269C()
{
  sub_100006610();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 92) = v3;
  *(v1 + 16) = v4;
  type metadata accessor for MainActor();
  *(v1 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 48) = v6;
  *(v1 + 56) = v5;

  return _swift_task_switch(sub_100202738, v6, v5);
}

void sub_100202738()
{
  v1 = *(*(v0 + 32) + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    if (([*(v0 + 16) isScreening] & 1) == 0)
    {
      v26 = *(v0 + 16);
      *(v0 + 64) = *(*(v0 + 32) + 104);

      v27 = [v26 callUUID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      *(v0 + 72) = v29;
      v30 = swift_task_alloc();
      *(v0 + 80) = v30;
      *v30 = v0;
      v30[1] = sub_100202B90;
      sub_1000059C4();

      __asm { BRAA            X3, X16 }
    }

    if (![*(v0 + 16) isScreening] || objc_msgSend(*(v0 + 16), "isScreening") && objc_msgSend(*(v0 + 16), "resolvedStatus") == 4)
    {
      if (qword_1003A9F50 != -1)
      {
        sub_10000706C(&qword_1003A9F50);
      }

      v3 = *(v0 + 16);
      v4 = type metadata accessor for Logger();
      sub_1000058D0(v4, &unk_1003B8850);
      v5 = v3;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 16);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v47 = v10;
        *v9 = 136315394;
        *(v0 + 96) = [v8 isScreening];
        v11 = String.init<A>(reflecting:)();
        sub_100008ADC(v11, v12, &v47);

        *(v0 + 88) = sub_10003621C();
        type metadata accessor for TUCallStatus(0);
        v13 = String.init<A>(reflecting:)();
        v15 = sub_100008ADC(v13, v14, &v47);

        *(v9 + 14) = v15;
        sub_100008E54(&_mh_execute_header, v16, v17, "DeclineCallService: Disconnecting call because screening did not start, isScreening: %s resolvedStatus: %s");
        swift_arrayDestroy();
        sub_100005BB8(v10);
        sub_100005BB8(v9);
      }

      v18 = sub_100005CEC();
      [v18 disconnectCall:v19 withReason:v20];
    }

    else
    {
      if (qword_1003A9F50 != -1)
      {
        sub_10000706C(&qword_1003A9F50);
      }

      v33 = type metadata accessor for Logger();
      sub_1000058D0(v33, &unk_1003B8850);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = sub_100005924();
        *v36 = 0;
        sub_1000054BC(&_mh_execute_header, v37, v38, "DeclineCallService: Not disconnecting call because it is an active call");
        sub_100005BB8(v36);
      }

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (sub_10000843C(v40))
      {
        v41 = sub_100005924();
        sub_100005DF4(v41);
        sub_10000C5C0(&_mh_execute_header, v42, v43, "DeclineCallService: user declined to answer call, dismiss ICS for call screening");
        sub_100005368();
      }

      v44 = *(v0 + 24);
      v45 = *(v0 + 32);

      v46 = *(v45 + 80);

      v46(v44);
    }
  }

  else
  {
    v21 = *(v0 + 32);
    v22 = *(v0 + 92);
    v23 = *(v0 + 16);

    [*(v21 + 16) disconnectCall:v23 withReason:v22];
  }

  sub_10000535C();
  sub_1000059C4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100202B90()
{
  sub_1000058A8();
  sub_1000054B0();
  *(v0 + 97) = v1;

  sub_1000253A0();
  v3 = *(v2 + 56);
  v4 = *(v0 + 48);

  return _swift_task_switch(sub_100202CEC, v4, v3);
}

void sub_100202CEC()
{
  v1 = *(v0 + 97);

  if ((v1 & 1) == 0)
  {
    if (qword_1003A9F50 != -1)
    {
      sub_10000706C(&qword_1003A9F50);
    }

    v2 = type metadata accessor for Logger();
    sub_1000058D0(v2, &unk_1003B8850);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (sub_10000843C(v4))
    {
      v5 = sub_100005924();
      sub_100005DF4(v5);
      sub_10000C5C0(&_mh_execute_header, v6, v7, "DeclineCallService: Failed to send call to screening");
      sub_100005368();
    }
  }

  if (![*(v0 + 16) isScreening] || objc_msgSend(*(v0 + 16), "isScreening") && objc_msgSend(*(v0 + 16), "resolvedStatus") == 4)
  {
    if (qword_1003A9F50 != -1)
    {
      sub_10000706C(&qword_1003A9F50);
    }

    v8 = *(v0 + 16);
    v9 = type metadata accessor for Logger();
    sub_1000058D0(v9, &unk_1003B8850);
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 16);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v39 = v15;
      *v14 = 136315394;
      *(v0 + 96) = [v13 isScreening];
      v16 = String.init<A>(reflecting:)();
      sub_100008ADC(v16, v17, &v39);

      *(v0 + 88) = sub_10003621C();
      type metadata accessor for TUCallStatus(0);
      v18 = String.init<A>(reflecting:)();
      v20 = sub_100008ADC(v18, v19, &v39);

      *(v14 + 14) = v20;
      sub_100008E54(&_mh_execute_header, v21, v22, "DeclineCallService: Disconnecting call because screening did not start, isScreening: %s resolvedStatus: %s");
      swift_arrayDestroy();
      sub_100005BB8(v15);
      sub_100005BB8(v14);
    }

    [sub_100005CEC() disconnectCall:? withReason:?];
  }

  else
  {
    if (qword_1003A9F50 != -1)
    {
      sub_10000706C(&qword_1003A9F50);
    }

    v23 = type metadata accessor for Logger();
    sub_1000058D0(v23, &unk_1003B8850);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_100005924();
      *v26 = 0;
      sub_1000054BC(&_mh_execute_header, v27, v28, "DeclineCallService: Not disconnecting call because it is an active call");
      sub_100005BB8(v26);
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (sub_10000843C(v30))
    {
      v31 = sub_100005924();
      sub_100005DF4(v31);
      sub_10000C5C0(&_mh_execute_header, v32, v33, "DeclineCallService: user declined to answer call, dismiss ICS for call screening");
      sub_100005368();
    }

    v34 = *(v0 + 24);
    v35 = *(v0 + 32);

    v36 = *(v35 + 80);

    v36(v34);
  }

  sub_10000535C();
  sub_1000059C4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1002030E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100203180, v7, v6);
}

uint64_t sub_100203180()
{
  sub_1000058A8();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v1);
  v4 = v3;
  v5 = v2;

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100203250;

  return sub_10020269C();
}

uint64_t sub_100203250()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = v1[7];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_100006870();
  *v6 = v5;

  v7 = sub_100030298();
  v8(v7);
  _Block_release(v2);
  sub_10000535C();

  return v9();
}

uint64_t sub_1002033A8()
{

  return v0;
}

uint64_t sub_1002033F8()
{
  sub_1002033A8();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_100203450()
{
  sub_100006610();
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1002034E4, v3, v2);
}

uint64_t sub_1002034E4()
{
  sub_1000058A8();
  v1 = *(v0[2] + 16);
  v0[6] = v1;
  v2 = [v1 frontmostCall];
  v0[7] = v2;
  if (v2)
  {
    if (qword_1003AA0D0 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10020368C;

    return sub_10020269C();
  }

  else
  {

    if (qword_1003A9F50 != -1)
    {
      sub_10000706C(&qword_1003A9F50);
    }

    v5 = type metadata accessor for Logger();
    sub_1000058D0(v5, &unk_1003B8850);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (sub_10000843C(v7))
    {
      v8 = sub_100005924();
      sub_100005DF4(v8);
      sub_10000C5C0(&_mh_execute_header, v9, v10, "Was told to decline answering frontmost call but no frontmost call was found.");
      sub_100005368();
    }

    sub_10000535C();

    return v11();
  }
}

uint64_t sub_10020368C()
{
  sub_100006610();
  sub_1000054B0();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;

  sub_1000253A0();
  v5 = *(v4 + 40);
  v6 = *(v0 + 32);

  return _swift_task_switch(sub_100203798, v6, v5);
}

uint64_t sub_100203798()
{
  sub_100006610();
  v1 = v0[6];

  if ([v1 currentCallCount] < 2)
  {
    v2 = v0[7];
  }

  else
  {
    v2 = v0[7];
    [*(v0[2] + 24) reportMultipleCallsWaitingUIAction:5];
  }

  sub_10000535C();

  return v3();
}

uint64_t sub_1002038B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020394C, v4, v3);
}

uint64_t sub_10020394C()
{
  sub_100006610();
  v1 = v0[2];

  v0[5] = _Block_copy(v1);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1002039FC;

  return sub_100203450();
}

uint64_t sub_1002039FC()
{
  sub_100006610();
  sub_1000058C4();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_100006870();
  *v4 = v3;

  v5 = sub_100030298();
  v6(v5);
  _Block_release(v2);
  sub_10000535C();

  return v7();
}

uint64_t sub_100203B1C()
{
  sub_100006610();
  v1[2] = v2;
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v4;
  v1[6] = v3;

  return _swift_task_switch(sub_100203BB0, v4, v3);
}

uint64_t sub_100203BB0()
{
  sub_1000058A8();
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = sub_100008A14(v1, &unk_1003B8850);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_10000843C(v3))
  {
    v4 = sub_100005924();
    sub_100005DF4(v4);
    sub_10000C5C0(&_mh_execute_header, v5, v6, "DeclineCallService: Disconnecting active call due to lock event or button press");
    sub_100005368();
  }

  v7 = *(v0 + 24);

  v8 = *(v7 + 16);
  v9 = [v8 resolvedIncomingCall];
  *(v0 + 64) = v9;
  v10 = [v8 currentAudioAndVideoCallCount];
  *(v0 + 72) = v10;
  if (v9)
  {
    v11 = *(v0 + 16);
    v9;
    [v11 resolvedCallStatus];
    if (qword_1003AA0C8 != -1)
    {
      sub_100026FD8(&qword_1003AA0C8);
    }

    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *v12 = v0;
    v12[1] = sub_100203E98;
LABEL_13:

    return sub_10020269C();
  }

  if (v10 == 1)
  {
    if (qword_1003AA0C8 != -1)
    {
      sub_100026FD8(&qword_1003AA0C8);
    }

    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = sub_100204098;
    goto LABEL_13;
  }

  [v8 disconnectCurrentCall];
  if (*(v0 + 72) <= 1)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (sub_10000843C(v16))
    {
      v17 = sub_100005924();
      sub_100005DF4(v17);
      sub_10000C5C0(&_mh_execute_header, v18, v19, "... and requesting lock on next dismiss");
      sub_100005368();
    }

    v20 = *(v0 + 24);

    v21 = *(v20 + 64);

    v21(v22);
  }

  sub_10000535C();

  return v23();
}

uint64_t sub_100203E98()
{
  sub_100006610();
  sub_1000054B0();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;

  sub_1000253A0();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return _swift_task_switch(sub_100203FA4, v6, v5);
}

uint64_t sub_100203FA4()
{
  sub_1000058A8();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  v3 = *(v2 + 48);

  v3(v4);

  if (*(v0 + 72) <= 1)
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_10000C5C0(&_mh_execute_header, v8, v9, "... and requesting lock on next dismiss");
      sub_100005368();
    }

    v10 = *(v0 + 24);

    v11 = *(v10 + 64);

    v11(v12);
  }

  sub_10000535C();

  return v13();
}

uint64_t sub_100204098()
{
  sub_100006610();
  sub_1000054B0();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;

  sub_1000253A0();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return _swift_task_switch(sub_1002041A4, v6, v5);
}

uint64_t sub_1002041A4()
{
  sub_1000058A8();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_10000843C(v2))
  {
    v3 = sub_100005924();
    sub_100005DF4(v3);
    sub_10000C5C0(&_mh_execute_header, v4, v5, "... and requesting lock on next dismiss");
    sub_100005368();
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 64);

  v7(v8);

  sub_10000535C();

  return v9();
}

uint64_t sub_1002042F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100204390, v5, v4);
}

uint64_t sub_100204390()
{
  sub_1000058A8();
  v2 = v0[2];
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100204454;

  return sub_100203B1C();
}

uint64_t sub_100204454()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  v6 = sub_100030298();
  v7(v6);
  _Block_release(v2);
  sub_10000535C();

  return v8();
}

uint64_t sub_100204594()
{
  sub_1000058A8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008208;

  return sub_1002042F4(v2, v3, v4);
}

uint64_t sub_100204644()
{
  sub_1000058A8();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100008204;

  return sub_1002038B4(v2, v3);
}

uint64_t sub_1002046EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008204;

  return sub_1002030E0(v2, v3, v4, v6, v5);
}

void *sub_1002047E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService27AmbientCompactSceneDelegate_window);
  v2 = v1;
  return v1;
}

uint64_t sub_100204874(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13InCallService27AmbientCompactSceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC13InCallService27AmbientCompactSceneDelegate_window) = a1;
  return _objc_release_x1(a1, v2);
}

void sub_100204888(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for ActivityScene();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for SecureWindow());
  v12 = a1;
  v13 = [v11 initWithWindowScene:v10];
  v14 = *(v2 + OBJC_IVAR____TtC13InCallService27AmbientCompactSceneDelegate_window);
  *(v2 + OBJC_IVAR____TtC13InCallService27AmbientCompactSceneDelegate_window) = v13;
  v15 = v13;

  v16 = v15;
  v17 = [v10 coordinateSpace];

  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  swift_unknownObjectRelease();
  [v16 setFrame:{v19, v21, v23, v25}];

  v30[15] = 0;
  State.init(wrappedValue:)();
  v26 = objc_allocWithZone(sub_10014EA98(&qword_1003AEB68, &qword_1002FFAB0));
  v27 = LockScreenHostingController.init(rootView:)();
  v28 = [v27 view];
  if (!v28)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v29 = v28;
  [v28 setBackgroundColor:0];

  [v16 setRootViewController:v27];
  [v16 makeKeyAndVisible];
}

id sub_100204BF4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13InCallService27AmbientCompactSceneDelegate_window] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_100204C90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100204CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100204D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1;
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = sub_10014EA98(&qword_1003AEB70, &qword_1002FFB48);
  sub_100204EC0(v4, a2, (a3 + *(v7 + 44)));
  v8 = [objc_opt_self() defaultCenter];
  v9 = sub_10014EA98(&qword_1003AEB78, &qword_1002FFB50);
  NSNotificationCenter.publisher(for:object:)();

  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a2;
  v11 = (a3 + *(v9 + 56));
  *v11 = sub_100205508;
  v11[1] = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = a2;
  v13 = (a3 + *(sub_10014EA98(&unk_1003AEB80, &qword_1002FFB58) + 36));
  *v13 = sub_100205514;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  return swift_retain_n();
}

void *sub_100204EC0@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = a3;
  v5 = sub_10014EA98(&qword_1003AEB90, &qword_1002FFB60);
  __chkstk_darwin(v5);
  v7 = (&v29 - v6);
  v36 = type metadata accessor for SymbolEffectOptions();
  v8 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PulseSymbolEffect();
  v35 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10014EA98(&qword_1003AEB98, &qword_1002FFB68);
  __chkstk_darwin(v14);
  v16 = (&v29 - v15);
  v39 = a1;
  v40 = a2;
  sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  State.wrappedValue.getter();
  LODWORD(a2) = v38;
  v17 = Image.init(systemName:)();
  if (a2 == 1)
  {
    v33 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    PulseSymbolEffect.init()();
    static SymbolEffectOptions.repeating.getter();
    v34 = v14;
    v18 = v16 + *(v14 + 36);
    v19 = type metadata accessor for _IndefiniteSymbolEffectModifier();
    v30 = v17;
    v31 = v5;
    v20 = v19;
    v21 = v8;
    v22 = *(v8 + 16);
    v23 = v36;
    v22(&v18[*(v19 + 20)], v10, v36);
    sub_100205694(&qword_1003AEBD0, &type metadata accessor for PulseSymbolEffect, &protocol conformance descriptor for PulseSymbolEffect);
    dispatch thunk of SymbolEffect.configuration.getter();
    (*(v21 + 8))(v10, v23);
    (*(v35 + 8))(v13, v11);
    v18[*(v20 + 24)] = 1;
    v25 = KeyPath;
    v24 = v33;
    *v16 = v30;
    v16[1] = v25;
    v16[2] = v24;
    sub_1002056DC(v16, v7);
    swift_storeEnumTagMultiPayload();
    sub_10014EA98(&qword_1003AEBA0, &unk_1002FFBA0);
    sub_100205520();
    sub_1002055DC();
    _ConditionalContent<>.init(storage:)();
    return sub_1000306A4(v16, &qword_1003AEB98, &qword_1002FFB68);
  }

  else
  {
    v27 = static Color.green.getter();
    v28 = swift_getKeyPath();
    *v7 = v17;
    v7[1] = v28;
    v7[2] = v27;
    swift_storeEnumTagMultiPayload();
    sub_10014EA98(&qword_1003AEBA0, &unk_1002FFBA0);
    sub_100205520();
    sub_1002055DC();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_1002052E8(uint64_t a1, char a2, uint64_t a3)
{
  Notification.object.getter();
  if (v7)
  {
    sub_1000064BC(0, &qword_1003ADBE0, TUCall_ptr);
    if (swift_dynamicCast())
    {
      sub_1002053A0(v5, a2 & 1, a3);
    }
  }

  else
  {
    sub_1000306A4(v6, &unk_1003AAF50, &qword_1002FB170);
  }
}

uint64_t sub_1002053A0(void *a1, char a2, uint64_t a3)
{
  v3 = [a1 recordingSession];
  if (v3)
  {
    v4 = v3;
    [v3 recordingState];
  }

  sub_10014EA98(&qword_1003AFBC0, &qword_1002FEA20);
  return State.wrappedValue.setter();
}

void sub_100205448(char a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 frontmostCall];

  if (v5)
  {
    sub_1002053A0(v5, a1 & 1, a2);
  }
}

unint64_t sub_100205520()
{
  result = qword_1003AEBA8;
  if (!qword_1003AEBA8)
  {
    sub_100155B7C(&qword_1003AEB98, &qword_1002FFB68);
    sub_1002055DC();
    sub_100205694(&qword_1003AEBC8, &type metadata accessor for _IndefiniteSymbolEffectModifier, &protocol conformance descriptor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEBA8);
  }

  return result;
}

unint64_t sub_1002055DC()
{
  result = qword_1003AEBB0;
  if (!qword_1003AEBB0)
  {
    sub_100155B7C(&qword_1003AEBA0, &unk_1002FFBA0);
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0, &qword_1003005C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEBB0);
  }

  return result;
}

uint64_t sub_100205694(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002056DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AEB98, &qword_1002FFB68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10020574C()
{
  result = qword_1003AEBD8;
  if (!qword_1003AEBD8)
  {
    sub_100155B7C(&unk_1003AEB80, &qword_1002FFB58);
    sub_100027E08(&unk_1003AEBE0, &qword_1003AEB78, &qword_1002FFB50, &protocol conformance descriptor for SubscriptionView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEBD8);
  }

  return result;
}

id sub_100205804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath:v2];

  return v3;
}

void sub_100205874(void *a1)
{
  sub_1001A9300();
  v2 = sub_100205804(0x7974696361706FLL, 0xE700000000000000);
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setFromValue:isa];

  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setToValue:v4];

  v5 = objc_opt_self();
  v9 = v2;
  v6 = [v5 functionWithName:kCAMediaTimingFunctionEaseIn];
  [v9 setTimingFunction:v6];

  [v9 setDuration:0.5];
  v7 = objc_opt_self();
  [v7 begin];
  [v7 setDisableActions:1];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  v8 = [a1 layer];
  sub_100205B38(v9, 0x6E416E4965646166, 0xEF6E6F6974616D69, v8);

  [v7 commit];
}

id sub_100205A88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerTransitionAnimation();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100205AE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerTransitionAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100205B38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 addAnimation:a1 forKey:v6];
}

uint64_t type metadata accessor for IncomingCallBanner(uint64_t a1)
{
  result = qword_1003AEC28;
  if (!qword_1003AEC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100205C50(void *a1)
{
  v3 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for CarPlayIncomingCallView();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  *(v1 + qword_1003AEC20) = a1;
  v11 = objc_opt_self();
  v12 = a1;
  v13 = [v11 sharedInstance];
  v26[4] = sub_100206314();
  v26[5] = &protocol witness table for TUCallCenter;
  v26[1] = v13;
  CarPlayIncomingCallView.init(call:callCenter:onTap:)();
  (*(v5 + 16))(v8, v10, v4);
  v14 = UIHostingController.init(rootView:)();
  v15 = [v14 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = v15;
  [v15 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v18 = v17;
  v20 = v19;

  [v14 setPreferredContentSize:{v18, v20}];
  v21 = v14;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v22 = [v21 view];
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = v22;
  v24 = [objc_opt_self() clearColor];
  [v23 setBackgroundColor:v24];

  v25 = [v21 view];
  if (v25)
  {
    sub_100206358(0xD00000000000001BLL, 0x80000001002ACD20, v25);

    (*(v5 + 8))(v10, v4);
    return;
  }

LABEL_7:
  __break(1u);
}

double sub_100205F7C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      [v3 showCarPlayUIWithActivation:1];
    }

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_100206108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IncomingCallBanner(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100206160(void *a1)
{
  sub_100206198();

  return a1;
}

id sub_1002061A0(void *a1)
{
  v1 = a1;
  sub_100206208();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

unint64_t sub_100206208()
{
  v1 = [*(v0 + qword_1003AEC20) uniqueProxyIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD000000000000014;
}

id sub_1002062A8()
{
  sub_1002062F8();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

unint64_t sub_100206314()
{
  result = qword_1003AAC20;
  if (!qword_1003AAC20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AAC20);
  }

  return result;
}

void sub_100206358(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setAccessibilityIdentifier:v4];
}

id sub_100206510(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1000064BC(0, &qword_1003AB7A0, NSObject_ptr);
    Dictionary._bridgeToObjectiveC()();
    sub_10000594C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1002065A8(void **a1, uint64_t a2, void **a3)
{

  v7 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100211AA0())
  {
    v8 = sub_100190988();
    v21 = swift_slowAlloc();
    aBlock = a1;
    *v8 = 136315394;
    v23 = a2;

    v9 = String.init<A>(reflecting:)();
    sub_100008ADC(v9, v10, &v21);
    sub_100211A30();
    *(v8 + 4) = v3;
    *(v8 + 12) = 2080;
    aBlock = a3;

    sub_10014EA98(&qword_1003AE0F8, &qword_1002FEEE0);
    v11 = String.init<A>(reflecting:)();
    sub_100008ADC(v11, v12, &v21);
    sub_100211A30();
    *(v8 + 14) = v3;
    sub_1000085F4();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    swift_arrayDestroy();
    sub_100006A58();
    sub_1000053DC();
  }

  v18 = String._bridgeToObjectiveC()();
  sub_100005C44();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  v26 = sub_1001A6000;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100206510;
  v25 = &unk_1003604E0;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

double sub_1002067C4@<D0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  sub_10014EA98(&qword_1003AF000, &qword_1002FFF50);
  v4 = type metadata accessor for MessageStoreQuery();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002FB510;
  v9 = (v8 + v7);
  v10 = swift_allocObject();
  *(v10 + 16) = *(v1 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_providers);
  *v9 = v10;
  v11 = *(v5 + 104);
  v11(v9, enum case for MessageStoreQuery.providers(_:), v4);
  v12 = swift_allocObject();
  *(v12 + 16) = *(v1 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageTypes);
  *(v9 + v6) = v12;
  v11((v9 + v6), enum case for MessageStoreQuery.types(_:), v4);
  *(v3 + 16) = v8;
  *a1 = v3;
  v11(a1, enum case for MessageStoreQuery.and(_:), v4);

  return result;
}

double sub_10020698C()
{
  v1 = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;
  type metadata accessor for Logger();
  sub_100006B9C();
  (*(v2 + 8))(v0 + v1);
  sub_1002115E4(v0 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_analyticsReporter);
  sub_1000081F4(*(v0 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_onVoicemailsChanged), *(v0 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_onVoicemailsChanged + 8));
  sub_100005B2C((v0 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageStoreController));

  return result;
}

id sub_100206A6C()
{
  ObjectType = swift_getObjectType();
  sub_100008878(&v0[OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageStoreController], *&v0[OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageStoreController + 24]);

  MessageStoreController.removeDelegate(_:)();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100206C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100190A04();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;

  v29 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100211AA0())
  {
    v30 = sub_100005384();
    a10 = sub_100005D4C();
    *v30 = 136315138;
    v31 = sub_1001C029C(v28, v26);
    sub_100008ADC(v31, v32, &a10);
    sub_100211A30();
    *(v30 + 4) = v22;
    sub_1000085F4();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    sub_1000054DC();
    sub_1000053DC();
  }

  sub_100005C44();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = v28;
  *(v39 + 32) = v26;

  dispatch thunk of TaskQueue.async(_:)();

  sub_100007F98();

  return result;
}

uint64_t sub_100206D90(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100206E5C, v5, v4);
}

uint64_t sub_100206E5C()
{
  sub_100006610();
  sub_1000055CC(*(v0 + 56) + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_onVoicemailsChanged);
    if (v3)
    {
      v3();
    }

    v4 = *(v0 + 49);
    *(v0 + 40) = *(v0 + 64);
    *(v0 + 48) = v4;
    PassthroughSubject.send(_:)();
  }

  sub_10000535C();

  return v5();
}

uint64_t sub_100206F10()
{
  sub_100006610();
  v1[99] = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v2, v3);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[100] = v4;
  v1[101] = v5;
  v6 = sub_10000CDF8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100206FBC()
{
  sub_1000058A8();
  v0[102] = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000843C(v2))
  {
    v3 = sub_100005924();
    sub_100005DF4(v3);
    sub_100007388();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100005368();
  }

  v9 = v0[99];

  sub_100005C44();
  v10 = swift_allocObject();
  v0[103] = v10;
  *(v10 + 16) = v9;
  v11 = v9;
  sub_10014EA98(&qword_1003AEFF8, &qword_1002FFF28);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_1002070DC, v0 + 82);
}

uint64_t sub_1002070DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000058A8();
  v15 = v14[87];
  v14[104] = v15;

  v16 = swift_task_alloc();
  v14[105] = v16;
  v17 = sub_10014EA98(&qword_1003AB0A8, &unk_1002FFF30);
  v18 = sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
  *v16 = v14;
  v16[1] = sub_1002071CC;

  return Task.value.getter(v14 + 93, v15, v17, v18, &protocol self-conformance witness table for Error, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1002071CC()
{
  sub_1000058A8();
  v2 = *v1;
  sub_1000058F8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 848) = v0;

  v5 = *(v2 + 808);
  v6 = *(v2 + 800);
  if (v0)
  {
    v7 = sub_10020757C;
  }

  else
  {
    v7 = sub_100207318;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100207318()
{
  sub_100154224();
  v1 = *(v0 + 744);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100014274(v3))
  {
    v4 = sub_100005384();
    *v4 = 134349056;
    *(v4 + 4) = sub_100017230(v1);

    sub_100007F88();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    sub_100005340();
  }

  else
  {
  }

  v10 = sub_100017230(v1);
  if (!v10)
  {

    v27 = _swiftEmptyArrayStorage;
LABEL_15:
    *(v0 + 856) = v27;
    v14 = sub_100207500;
    v12 = v0 + 16;
    v13 = v0 + 696;
    v15 = v0 + 752;

    return _swift_asyncLet_finish(v12, v13, v14, v15);
  }

  v11 = v10;
  v30 = _swiftEmptyArrayStorage;
  v12 = specialized ContiguousArray.reserveCapacity(_:)();
  if (v11 < 0)
  {
    goto LABEL_20;
  }

  v16 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_12;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v17 = *(v1 + 8 * v16 + 32);
LABEL_12:
    ++v16;
    v18 = objc_allocWithZone(type metadata accessor for FTMessage());
    sub_100008524();
    sub_1001BBA38();
    UniqueAndReserveCapacityIfNot = specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100211C10(UniqueAndReserveCapacityIfNot, v20, v21, v22, v23, v24, v25, v26, v29, v30);
    sub_1002119B8();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = specialized ContiguousArray._endMutation()();
    if (v11 == v16)
    {

      v27 = v30;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return _swift_asyncLet_finish(v12, v13, v14, v15);
}

uint64_t sub_10020751C()
{
  sub_100006610();

  sub_100026F44();
  v2 = *(v0 + 856);

  return v1(v2);
}

uint64_t sub_1002075B8()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

uint64_t sub_100207614(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1002076B0, 0, 0);
}

uint64_t sub_1002076B0()
{
  sub_1000058A8();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  sub_100006848(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v6 = v2;
  *v3 = sub_10016EEE8();

  sub_10000535C();

  return v7();
}

uint64_t sub_100207790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = type metadata accessor for MessageFetchOptions();
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for MessageStoreQuery();
  v4[10] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v4[11] = Request;
  v4[12] = *(Request - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100207908, 0, 0);
}

uint64_t sub_100207908()
{
  sub_1001541FC();
  sub_100154224();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = sub_1002067C4(*(v0 + 80));
  (*(v3 + 104))(v1, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v2, v5);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100007E04();
  sub_100211640(v6, v7);
  sub_10014EA98(&qword_1003AA8E8, &unk_1002FABB0);
  sub_100155B18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000A538();
  MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
  sub_10021199C((v4 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageStoreController));
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_100207A88;
  sub_100211950(*(v0 + 104));
  sub_1000087B4();

  return MessageStoreController.getMessages(fetchRequest:)(v9);
}

uint64_t sub_100207A88()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000068BC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v4;
  *(v2 + 128) = v0;

  if (v0)
  {
    v5 = sub_100207CB4;
  }

  else
  {
    v5 = sub_100207B90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100207B90()
{
  sub_100006880();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000843C(v2))
  {
    v3 = sub_100005384();
    v4 = sub_100211CA0(v3, 3.9122e-34);
    sub_100211C88(v4);
    sub_100008DB0(&_mh_execute_header, v5, v6, "Loading FTMessages gave us %{public}ld message(s).");
    sub_100005340();
  }

  else
  {
  }

  v7 = v0[15];
  v8 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);
  *v8 = v7;

  sub_10000535C();

  return v9();
}

uint64_t sub_100207CB4()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_100005384();
    v4 = sub_100008A70();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    sub_100008DB0(&_mh_execute_header, v6, v7, "Error loading FTMessages %@");
    sub_100153D2C(v4);
    sub_1000053DC();
    sub_100005340();
  }

  swift_willThrow();

  sub_10000535C();

  return v8();
}

uint64_t sub_100207E14()
{
  sub_100006610();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for MessageStoreQuery();
  v1[4] = v3;
  sub_100006998(v3);
  v1[5] = v4;
  v5 = sub_10021195C();
  v6 = sub_100211D00(v5);
  v1[7] = v6;
  sub_100006998(v6);
  v1[8] = v7;
  v1[9] = sub_10021195C();
  v8 = type metadata accessor for MessageID.Value(0);
  v1[10] = v8;
  sub_100005568(v8);
  v1[11] = sub_10021195C();
  v1[12] = type metadata accessor for VoicemailActor();
  v1[13] = swift_initStaticObject();
  v9 = swift_task_alloc();
  v1[14] = v9;
  *v9 = v1;
  v9[1] = sub_100207F74;
  sub_10000C1D8();

  return sub_1002121A0();
}

uint64_t sub_100207F74()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = v1;
  sub_1000058F8();
  *v3 = v2;
  v4 = *v0;
  sub_100006870();
  *v5 = v4;
  v2[15] = v6;

  sub_100007A14();
  sub_100211640(v7, v8);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v2[16] = v9;
  v2[17] = v10;
  v11 = sub_10000CDF8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1002080C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001541FC();
  sub_100154224();
  if (v12[15])
  {
    sub_100211A84();

    sub_100026F44();
    sub_1000087B4();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
  }

  else
  {
    sub_100153C6C(v12[2] + OBJC_IVAR___MPMessageID_value, v12[11]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = v12[11];
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v12[8];
      v24 = v12[9];
      v26 = v12[6];
      v27 = v12[7];
      v28 = v12[4];
      v29 = v12[5];
      (*(v25 + 32))(v24, v23, v27);
      sub_100005C44();
      v30 = swift_allocObject();
      sub_10014EA98(&qword_1003AA8D8, &qword_100300270);
      v31 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1002FAB60;
      (*(v25 + 16))(v32 + v31, v24, v27);
      *(v30 + 16) = v32;
      *v26 = v30;
      (*(v29 + 104))(v26, enum case for MessageStoreQuery.recordUUID(_:), v28);
      v33 = swift_task_alloc();
      v12[18] = v33;
      *v33 = v12;
      v34 = sub_100208368;
    }

    else
    {
      v35 = *v23;
      sub_100005C44();
      v36 = swift_allocObject();
      sub_10014EA98(&qword_1003AEFE0, &qword_1002FFEF8);
      result = swift_allocObject();
      *(result + 16) = xmmword_1002FAB60;
      if (v35 >> 31)
      {
        __break(1u);
        return result;
      }

      v38 = v12[5];
      v37 = v12[6];
      v39 = v12[4];
      *(result + 32) = v35;
      *(v36 + 16) = result;
      *v37 = v36;
      (*(v38 + 104))(v37, enum case for MessageStoreQuery.voicemailID(_:), v39);
      v33 = swift_task_alloc();
      v12[20] = v33;
      *v33 = v12;
      v34 = sub_100208568;
    }

    v33[1] = v34;
    sub_100211950(v12[6]);
    sub_1000087B4();

    return sub_100208750();
  }
}

uint64_t sub_100208368()
{
  sub_1000303E4();
  sub_100006880();
  v1 = *v0;
  sub_1000058F8();
  *v3 = v2;
  v4 = v1[6];
  v5 = v1[5];
  v6 = v1[4];
  v7 = *v0;
  sub_1000068BC();
  *v8 = v7;
  *(v10 + 152) = v9;

  (*(v5 + 8))(v4, v6);
  sub_100008BAC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1002084DC()
{
  sub_1000058A8();
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[19];
  sub_100211A84();

  sub_100026F44();

  return v2(v1);
}

uint64_t sub_100208568()
{
  sub_1000303E4();
  sub_100006880();
  v1 = *v0;
  sub_1000058F8();
  *v3 = v2;
  v4 = v1[6];
  v5 = v1[5];
  v6 = v1[4];
  v7 = *v0;
  sub_1000068BC();
  *v8 = v7;
  *(v10 + 168) = v9;

  (*(v5 + 8))(v4, v6);
  sub_100008BAC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1002086DC()
{
  sub_1000058A8();
  v1 = *(v0 + 168);
  sub_100211A84();

  sub_100026F44();

  return v2(v1);
}

uint64_t sub_100208750()
{
  sub_100006610();
  v1[3] = v2;
  v1[4] = v0;
  v3 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v1[5] = v3;
  sub_100006998(v3);
  v1[6] = v4;
  v1[7] = sub_10021195C();
  Options = type metadata accessor for MessageFetchOptions();
  v1[8] = Options;
  sub_100006998(Options);
  v1[9] = v6;
  v1[10] = sub_10021195C();
  v7 = type metadata accessor for MessageStoreQuery();
  v1[11] = v7;
  sub_100006998(v7);
  v1[12] = v8;
  v1[13] = sub_100211A48();
  v1[14] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v1[15] = Request;
  sub_100006998(Request);
  v1[16] = v10;
  v1[17] = sub_10021195C();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v11, v12);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[18] = v13;
  v1[19] = v14;
  v15 = sub_10000CDF8();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100208934()
{
  sub_100179558();
  sub_100211ADC();
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v16 = v0[4];
  v8 = *(v3 + 16);
  v0[20] = v8;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v2);
  sub_10014EA98(&qword_1003AEFE8, &qword_1002FFF10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002FAB60;
  static MessageFetchOptions.includeProtectedApps.getter();
  v0[2] = v9;
  sub_100007E04();
  sub_100211640(v10, v11);
  sub_10014EA98(&qword_1003AA8E8, &unk_1002FABB0);
  sub_100155B18();
  sub_100211AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v4, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v6);
  MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
  sub_10021199C((v16 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageStoreController));
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_100208B14;
  sub_100211950(v0[17]);
  sub_100008D44();

  return MessageStoreController.getMessages(fetchRequest:)(v13);
}

uint64_t sub_100208B14()
{
  sub_1000058A8();
  v2 = *v1;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_1000068BC();
  *v6 = v5;
  *(v8 + 184) = v7;
  *(v8 + 192) = v0;

  v9 = *(v2 + 152);
  v10 = *(v2 + 144);
  if (v0)
  {
    v11 = sub_100208DF8;
  }

  else
  {
    v11 = sub_100208C48;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100208C48()
{
  sub_1000303E4();
  sub_100006880();
  v1 = v0[23];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v2 = sub_100017230(v1);
  v3 = v0[23];
  if (v2)
  {
    v4 = v3 & 0xC000000000000001;
    sub_100017238(0, (v3 & 0xC000000000000001) == 0, v3);
    if (v4)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v0[23] + 32);
    }

    v6 = v0[4];

    v7 = objc_allocWithZone(type metadata accessor for FTMessage());
    v8 = v5;
    v9 = sub_1001BBA38();
    v10 = *(v6 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageTypes);
    v11 = dispatch thunk of Message.messageType.getter();
    if (sub_10024BCB8(v11, v10))
    {
      sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1002FBD90;
      *(v12 + 32) = v9;
      v13 = v9;
      sub_100019DBC();
      sub_10020B2D8(v12, v14, 1);
    }
  }

  else
  {
  }

  sub_100026F44();
  sub_100008BAC();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_100208DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100179558();
  a21 = v23;
  a22 = v24;
  sub_100211ADC();
  a20 = v22;
  v25 = v22[20];
  v26 = v22[13];
  v27 = v22[11];
  v28 = v22[3];
  (*(v22[16] + 8))(v22[17], v22[15]);
  v25(v26, v28, v27);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100211AF4();

  v30 = os_log_type_enabled(v29, v28);
  v32 = v22[12];
  v31 = v22[13];
  v33 = v22[11];
  if (v30)
  {
    v34 = sub_100190988();
    a9 = sub_100008A70();
    a10 = sub_100005D4C();
    a11 = a10;
    *v34 = 136446466;
    sub_100211640(&qword_1003AEFF0, &type metadata accessor for MessageStoreQuery);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v32 + 8))(v31, v33);
    v38 = sub_100008ADC(v35, v37, &a11);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2112;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v39;
    *a9 = v39;
    _os_log_impl(&_mh_execute_header, v29, v28, "FaceTimeVoiceMailManager failed to retrieve message for query %{public}s because the message store threw an error %@", v34, 0x16u);
    sub_100153D2C(a9);
    sub_100005BB8(a9);
    sub_100005B2C(a10);
    sub_100005BB8(a10);
    sub_1000053DC();
  }

  else
  {

    (*(v32 + 8))(v31, v33);
  }

  sub_100026F44();
  sub_100008D44();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100209070(uint64_t a1)
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

uint64_t sub_100209138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002091FC, v5, v4);
}

uint64_t sub_1002091FC()
{
  sub_1000058A8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1002092B0;
  sub_100211950(*(v0 + 16));

  return sub_100207E14();
}

uint64_t sub_1002092B0()
{
  sub_1000058A8();
  v2 = v1;
  sub_1000058C4();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[2];
  v7 = *v0;
  sub_100006870();
  *v8 = v7;

  v4[2](v4, v2);
  _Block_release(v4);
  swift_unknownObjectRelease();
  sub_10000535C();

  return v9();
}

uint64_t sub_100209404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002094CC, v7, v6);
}

void sub_1002094CC()
{
  sub_1000058A8();
  if (sub_100034484())
  {
    sub_100211B0C();
    sub_100211860();
    sub_100209C40(v2, v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100005368();
    }

    v13 = *(v1 + 16);

    sub_100211928();
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v14;
  }

  sub_10000535C();

  v16();
}

double sub_1002095E0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v6 = sub_100005568(v5);
  __chkstk_darwin(v6);
  v7 = sub_100211B70();
  sub_1000067D8(v2, v8, v9, v7);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  sub_100007A14();
  v13 = sub_100211640(v11, v12);
  sub_1001906BC();
  v14 = swift_allocObject();
  v14[2] = inited;
  v14[3] = v13;
  v14[4] = v3;
  v14[5] = a1;

  sub_100211A60();

  return result;
}

uint64_t sub_1002096E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002097A8, v7, v6);
}

void sub_1002097A8()
{
  sub_1000058A8();
  if (sub_100034484())
  {
    sub_100211B0C();
    sub_1002118D8();
    sub_100209C40(v2, v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100005368();
    }

    v13 = *(v1 + 16);

    sub_100211928();
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v14;
  }

  sub_10000535C();

  v16();
}

uint64_t sub_1002098BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100209984, v7, v6);
}

void sub_100209984()
{
  sub_1000058A8();
  if (sub_100034484())
  {
    sub_100211B0C();
    sub_1002118C0();
    sub_100209C40(v2, v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100005368();
    }

    v13 = *(v1 + 16);

    sub_100211928();
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v14;
  }

  sub_10000535C();

  v16();
}

uint64_t sub_100209A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100209B60, v7, v6);
}

void sub_100209B60()
{
  sub_1000058A8();
  if (sub_100034484())
  {
    sub_100211B0C();
    sub_1002118A8();
    sub_100209C40(v2, v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100005368();
    }

    v13 = *(v1 + 16);

    sub_100211928();
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v14;
  }

  sub_10000535C();

  v16();
}

double sub_100209C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v5 = type metadata accessor for Logger();
  sub_10000688C();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v11 = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;
  sub_100005C44();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + v11, v5);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v7 + 32))(v14 + v13, v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  dispatch thunk of TaskQueue.async(_:)();

  return result;
}

uint64_t sub_100209E10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  (a4)(0, a2);
  sub_100008524();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002095E0(v4);
}

uint64_t sub_100209E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100209F64, v6, v5);
}

void sub_100209F64()
{
  sub_1000058A8();
  v1 = sub_100034484();
  if (v1)
  {
    v2 = v1;
    sub_100211890();
    sub_10020A044(v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100005368();
    }

    v13 = *(v0 + 16);

    sub_100211928();
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v14;
  }

  sub_10000535C();

  v16();
}

double sub_10020A044(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  sub_10000688C();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;
  sub_100005C44();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + v9, v3);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  dispatch thunk of TaskQueue.async(_:)();

  return result;
}

double sub_10020A1E0(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v3 = sub_100005568(v2);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for TaskPriority();
  sub_1000067D8(v5, v7, v8, v6);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  sub_100007A14();
  v12 = sub_100211640(v10, v11);
  v13 = swift_allocObject();
  v13[2] = inited;
  v13[3] = v12;
  v13[4] = v1;

  sub_1001621BC();

  return result;
}

uint64_t sub_10020A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020A3B8, v6, v5);
}

void sub_10020A3B8()
{
  sub_1000058A8();
  v1 = sub_100034484();
  if (v1)
  {
    v2 = v1;
    sub_100211878();
    sub_10020A044(v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100005368();
    }

    v13 = *(v0 + 16);

    sub_100211928();
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v14;
  }

  sub_10000535C();

  v16();
}

double sub_10020A4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_10020A1E0(a3);

  return result;
}

uint64_t sub_10020A50C()
{
  swift_unknownObjectWeakDestroy();
  v1 = OBJC_IVAR____TtC13InCallServiceP33_5D9AA20B476DB76FF92BC55EE5B9E59120MessageStoreDelegate_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10020A5D8(uint64_t a1)
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

uint64_t sub_10020A680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020A74C, v5, v4);
}

uint64_t sub_10020A74C()
{
  v91 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = Logger.logObject.getter();
  if (Strong)
  {
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = sub_100005384();
      v90 = sub_100005D4C();
      *v4 = 136315138;
      type metadata accessor for Message();
      v5 = Array.description.getter();
      v7 = sub_100008ADC(v5, v6, &v90);

      *(v4 + 4) = v7;
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      sub_10000870C();
      sub_100005368();
    }

    v13 = *(v0 + 184);
    v14 = *&Strong[OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageTypes];
    v90 = _swiftEmptyArrayStorage;
    v15 = sub_100017230(v13);
    v16 = v13 & 0xC000000000000001;

    for (i = 0; v15 != i; ++i)
    {
      sub_100017238(i, v16 == 0, *(v0 + 184));
      if (v16)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v13 + 32 + 8 * i);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:

        sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
        sub_100008524();
        v78 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_42;
      }

      v20 = dispatch thunk of Message.messageType.getter();
      if (sub_10024BCB8(v20, v14))
      {
        UniqueAndReserveCapacityIfNot = specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100211BB0(UniqueAndReserveCapacityIfNot, v22, v23, v24, v25, v26, v27, v28, v81, v82, v83, *(&v83 + 1), v84, v85, v86, v87, v88, v90);
        sub_1002119B8();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }
    }

    v29 = v90;
    v30 = sub_100017230(v90);
    v31 = v30;
    v89 = v29;
    if (v30)
    {
      if (v30 < 1)
      {
        goto LABEL_47;
      }

      v32 = 0;
      v87 = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_analyticsReporter;
      v33 = v29 & 0xC000000000000001;
      v84 = "message_file_size";
      v85 = 0x80000001002ACE70;
      v83 = xmmword_1002FB3B0;
      v86 = v29 & 0xC000000000000001;
      v82 = v0;
      do
      {
        if (v33)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v34 = *(v29 + 8 * v32 + 32);
        }

        v35 = v34;
        v36 = dispatch thunk of Message.fileSize.getter();
        if ((v37 & 1) == 0)
        {
          v16 = v36;
          sub_10014EA98(&qword_1003AEFD8, &unk_1002FFEE8);
          v38 = v31;
          v39 = Strong;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002FB3B0;
          *(inited + 32) = 0x6D766C5F7369;
          *(inited + 40) = 0xE600000000000000;
          sub_1000064BC(0, &qword_1003AB080, NSNumber_ptr);
          dispatch thunk of Message.messageType.getter();
          v41 = MessageType.rawValue.getter();
          v42 = v41 == MessageType.rawValue.getter();
          *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(v42);
          *(inited + 56) = 0x6D76765F7369;
          *(inited + 64) = 0xE600000000000000;
          dispatch thunk of Message.messageType.getter();
          v43 = MessageType.rawValue.getter();
          v44 = v43 == MessageType.rawValue.getter();
          *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(v44);
          *(inited + 80) = 0x6E6F697461727564;
          *(inited + 88) = 0xE800000000000000;
          dispatch thunk of Message.duration.getter();
          *(inited + 96) = [objc_allocWithZone(NSNumber) initWithDouble:round(v45)];
          *(inited + 104) = 0xD000000000000011;
          *(inited + 112) = 0x80000001002ACE70;
          *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v16];
          Strong = v39;
          v31 = v38;
          v29 = v89;
          v46 = Dictionary.init(dictionaryLiteral:)();
          sub_1002520B8(v46);
          v48 = v47;

          sub_1002065A8(0xD00000000000002DLL, 0x80000001002ACE90, v48);
          v33 = v86;
        }

        ++v32;
      }

      while (v31 != v32);
    }

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = sub_100005384();
      v52 = v31;
      v53 = sub_100005D4C();
      v90 = v53;
      *v51 = 136315138;
      type metadata accessor for Message();
      v54 = Array.description.getter();
      sub_100008ADC(v54, v55, &v90);
      sub_100211A30();
      *(v51 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v49, v50, "messageStoreDidAddMessages(filtered): %s", v51, 0xCu);
      sub_100005B2C(v53);
      v56 = v53;
      v31 = v52;
      sub_100005BB8(v56);
      sub_1000053DC();
    }

    if (!v31)
    {

      goto LABEL_43;
    }

    v57 = v89;
    v58 = sub_100017230(v89);
    if (!v58)
    {

      v72 = _swiftEmptyArrayStorage;
LABEL_40:
      if (v72 >> 62)
      {
        goto LABEL_48;
      }

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v78 = v72;
LABEL_42:

      sub_100019DBC();
      sub_10020B2D8(v78, v79, 1);

      goto LABEL_43;
    }

    v59 = v58;
    v90 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v59 & 0x8000000000000000) == 0)
    {
      v61 = 0;
      do
      {
        if ((v57 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v62 = *(v57 + 8 * v61 + 32);
        }

        ++v61;
        v63 = objc_allocWithZone(type metadata accessor for FTMessage());
        sub_100008524();
        sub_1001BBA38();
        v64 = specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100211BB0(v64, v65, v66, v67, v68, v69, v70, v71, v81, v82, v83, *(&v83 + 1), v84, v85, v86, v87, v89, v90);
        sub_1002119B8();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v59 != v61);

      v72 = v90;
      goto LABEL_40;
    }

    __break(1u);
  }

  else
  {
    v73 = static os_log_type_t.error.getter();
    if (sub_10000843C(v73))
    {
      v74 = sub_100005384();
      v75 = sub_100211CA0(v74, 3.852e-34);
      sub_100211C88(v75);
      sub_100008DB0(&_mh_execute_header, v76, v77, "ignoring %ld added messages, no more self");
      sub_100005340();
    }

    else
    {
    }

    Strong = v2;
LABEL_43:

    sub_10000535C();

    return v80();
  }

  return result;
}

uint64_t sub_10020AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020AF00, v5, v4);
}

uint64_t sub_10020B500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020B5CC, v5, v4);
}

uint64_t sub_10020B9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020BAD8, v6, v5);
}

uint64_t sub_10020BFD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020C098, v4, v3);
}

uint64_t sub_10020C1CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020C294, v4, v3);
}

void sub_10020C3C8(uint64_t a1)
{
  sub_1002063D4();
  if (!v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_100008ADC(0x654D3C7961727241, 0xEE003E6567617373, &v6);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      sub_100005B2C(v5);
    }
  }
}

double sub_10020C50C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a1)
  {
    return sub_100206C28(0, 3, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  return result;
}

uint64_t sub_10020C574()
{
  sub_100006610();
  v1[5] = v2;
  v1[6] = v0;
  v3 = type metadata accessor for UUID();
  v1[7] = v3;
  sub_100006998(v3);
  v1[8] = v4;
  v1[9] = sub_10021195C();
  v5 = type metadata accessor for MessageStoreQuery();
  v1[10] = v5;
  sub_100006998(v5);
  v1[11] = v6;
  v1[12] = sub_10021195C();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v7, v8);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[13] = v9;
  v1[14] = v10;
  v11 = sub_10000CDF8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10020C6B4()
{
  sub_100006610();
  sub_10020C3C8(*(v0 + 40));
  *(v0 + 120) = v1;
  if (sub_100017230(v1))
  {
    v2 = sub_100008184();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {

    sub_10000535C();

    return v5();
  }
}

uint64_t sub_10020C768()
{
  sub_100006610();
  v1 = type metadata accessor for MainActor();
  *(v0 + 128) = sub_100211CD0(v1);
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v2 = sub_100005B78();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10020C7E0()
{
  sub_1000058A8();

  v2 = sub_100211B18();
  sub_10020CE60(v2);
  if (v0)
  {
  }

  else
  {
    v4 = *(v1 + 104);
    v5 = *(v1 + 112);

    return _swift_task_switch(sub_10020C87C, v4, v5);
  }
}

uint64_t sub_10020CB84()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
    v7 = v3[13];
    v8 = v3[14];

    return _swift_task_switch(sub_10020CCE8, v7, v8);
  }

  else
  {
    (*(v3[11] + 8))(v3[12], v3[10]);

    sub_10000535C();

    return v9();
  }
}

uint64_t sub_10020CCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001541FC();
  sub_100154224();

  swift_errorRetain();
  v12 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100211AB8();

  if (sub_100190744())
  {
    v13 = sub_100190988();
    v14 = sub_100008A70();
    a9 = sub_100005D4C();
    *v13 = 136315394;
    Array.description.getter();
    sub_100211A14();
    v15 = sub_100211AD0();
    sub_100008ADC(v15, v16, v17);

    sub_100211C50();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    sub_100007F88();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_100153D2C(v14);
    sub_100006A58();
    sub_10000870C();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_1000087B4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

void sub_10020CE60(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        ++v3;
        atomic_store(1u, (specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyIsDeleted));
        swift_unknownObjectRelease();
      }

      else
      {
        v4 = *(a1 + 32 + 8 * v3++);
        atomic_store(1u, (v4 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyIsDeleted));
      }
    }

    while (v3 != v2);
  }
}

uint64_t sub_10020CF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020D018, v5, v4);
}

uint64_t sub_10020D018()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_10020C574();
}

uint64_t sub_10020D0D0()
{
  sub_100006610();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  sub_100005568(v3);
  v1[4] = sub_10021195C();
  v4 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  sub_100005568(v4);
  v1[5] = sub_100211A48();
  v5 = swift_task_alloc();
  v6 = sub_100211D00(v5);
  v1[7] = v6;
  sub_100005568(v6);
  v1[8] = sub_10021195C();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v7, v8);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[9] = v9;
  v1[10] = v10;
  v11 = sub_10000CDF8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10020D1F8()
{
  v16 = v0;
  v1 = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;
  v0[11] = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;

  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100211CB8();
  if (sub_100190744())
  {
    v3 = sub_100190988();
    v15 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = sub_1000303F8();
    *(v3 + 4) = sub_100008ADC(v4, v5, &v15);
    *(v3 + 12) = 2080;
    sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
    v6 = Array.description.getter();
    v8 = sub_100008ADC(v6, v7, &v15);

    *(v3 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v1, "%s: Setting messages as read %s", v3, 0x16u);
    swift_arrayDestroy();
    sub_100005340();
    sub_100005BB8(v3);
  }

  sub_10020C3C8(v0[2]);
  v0[12] = v9;
  if (sub_100017230(v9))
  {
    v10 = sub_100008184();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {

    sub_10000535C();

    return v13();
  }
}

uint64_t sub_10020D3E8()
{
  sub_100006610();
  v1 = type metadata accessor for MainActor();
  *(v0 + 104) = sub_100211CD0(v1);
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v2 = sub_100005B78();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10020D460()
{
  sub_1000058A8();

  v2 = sub_100211B18();
  sub_10020DB14(v2);
  if (v0)
  {
  }

  else
  {
    v4 = *(v1 + 72);
    v5 = *(v1 + 80);

    return _swift_task_switch(sub_10020D4FC, v4, v5);
  }
}

uint64_t sub_10020D80C()
{
  sub_1000058A8();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  v2[16] = v0;

  if (v0)
  {

    v5 = v2[9];
    v6 = v2[10];

    return _swift_task_switch(sub_10020D990, v5, v6);
  }

  else
  {

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_10020D990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001541FC();
  sub_100154224();

  swift_errorRetain();
  v12 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100211AB8();

  if (sub_100190744())
  {
    v13 = sub_100190988();
    v14 = sub_100008A70();
    a9 = sub_100005D4C();
    sub_100211910(4.8151e-34);
    type metadata accessor for FTMessage();
    Array.description.getter();
    sub_100211A14();
    v15 = sub_100211AD0();
    sub_100008ADC(v15, v16, v17);

    sub_100211C50();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    sub_100007F88();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_100153D2C(v14);
    sub_100006A58();
    sub_10000870C();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_1000087B4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

void sub_10020DB14(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      sub_1001BA644(1);
    }
  }
}

uint64_t sub_10020DBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020DCB0, v5, v4);
}

uint64_t sub_10020DCB0()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_10020D0D0();
}

uint64_t sub_10020DD68()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_10000535C();

  return v6();
}

uint64_t sub_10020DEB0()
{
  sub_100006610();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  sub_100005568(v3);
  v1[4] = sub_10021195C();
  v4 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  sub_100005568(v4);
  v1[5] = sub_100211A48();
  v5 = swift_task_alloc();
  v6 = sub_100211D00(v5);
  v1[7] = v6;
  sub_100006998(v6);
  v1[8] = v7;
  v1[9] = sub_100211A48();
  v1[10] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v8, v9);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[11] = v10;
  v1[12] = v11;
  v12 = sub_10000CDF8();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10020E00C()
{
  sub_1000058A8();
  sub_10020C3C8(*(v0 + 16));
  *(v0 + 104) = v1;
  if (sub_100017230(v1))
  {
    v2 = sub_100008184();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {

    sub_100211934();

    sub_10000535C();

    return v5();
  }
}

uint64_t sub_10020E0DC()
{
  sub_100006610();
  v1 = type metadata accessor for MainActor();
  *(v0 + 112) = sub_100211CD0(v1);
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v2 = sub_100005B78();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10020E154()
{
  sub_1000058A8();

  v2 = sub_100211B18();
  sub_10020F550(v2, 2);
  if (v0)
  {
  }

  else
  {
    v4 = *(v1 + 88);
    v5 = *(v1 + 96);

    return _swift_task_switch(sub_10020E1F4, v4, v5);
  }
}

uint64_t sub_10020E4B4()
{
  sub_1000058A8();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;
  v3[18] = v0;

  if (v0)
  {
    v7 = v3[11];
    v8 = v3[12];

    return _swift_task_switch(sub_10020E60C, v7, v8);
  }

  else
  {

    sub_10000535C();

    return v9();
  }
}

void *sub_10020E60C()
{
  v31 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 120);
    v4 = sub_100190988();
    v5 = sub_100008A70();
    v29 = sub_100005D4C();
    *v4 = 136315394;
    v6 = sub_100017230(v3);
    if (v6)
    {
      v7 = v6;
      v30 = _swiftEmptyArrayStorage;
      result = sub_10021D79C(0, v6 & ~(v6 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      v25 = v5;
      v26 = v2;
      v27 = v1;
      v9 = 0;
      v10 = *(v0 + 120);
      v11 = *(v0 + 64);
      v12 = v30;
      v13 = v10 & 0xC000000000000001;
      v28 = v10 + 32;
      do
      {
        if (v13)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v28 + 8 * v9);
        }

        v15 = v14;
        MessageUpdate.recordUUID.getter();

        v30 = v12;
        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          sub_10021D79C((v16 > 1), v17 + 1, 1);
          v12 = v30;
        }

        ++v9;
        v12[2] = v17 + 1;
        sub_100211B00();
        (*(v11 + 32))(v12 + v18 + *(v11 + 72) * v17);
      }

      while (v7 != v9);

      v1 = v27;
      v2 = v26;
      v5 = v25;
    }

    else
    {
    }

    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_100008ADC(v19, v21, &v29);

    *(v4 + 4) = v22;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v23;
    *v5 = v23;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as deleted with error: %@", v4, 0x16u);
    sub_100153D2C(v5);
    sub_100005BB8(v5);
    sub_1000054DC();
    sub_100005368();
  }

  else
  {
  }

  sub_100211934();

  sub_10000535C();

  return v24();
}

uint64_t sub_10020E948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020EA0C, v5, v4);
}

uint64_t sub_10020EA0C()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_10020DEB0();
}

uint64_t sub_10020EAC4()
{
  sub_100006610();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_10014EA98(&qword_1003AAF20, &unk_1002FABA0);
  sub_100005568(v3);
  v1[4] = sub_10021195C();
  v4 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  sub_100005568(v4);
  v1[5] = sub_100211A48();
  v5 = swift_task_alloc();
  v6 = sub_100211D00(v5);
  v1[7] = v6;
  sub_100006998(v6);
  v1[8] = v7;
  v1[9] = sub_100211A48();
  v1[10] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v8, v9);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[11] = v10;
  v1[12] = v11;
  v12 = sub_10000CDF8();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10020EC20()
{
  sub_1000058A8();
  sub_10020C3C8(*(v0 + 16));
  *(v0 + 104) = v1;
  if (sub_100017230(v1))
  {
    v2 = sub_100008184();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {

    sub_100211934();

    sub_10000535C();

    return v5();
  }
}

uint64_t sub_10020ECF0()
{
  sub_100006610();
  v1 = type metadata accessor for MainActor();
  *(v0 + 112) = sub_100211CD0(v1);
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v2 = sub_100005B78();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10020ED68()
{
  sub_1000058A8();

  v2 = sub_100211B18();
  sub_10020F550(v2, 1);
  if (v0)
  {
  }

  else
  {
    v4 = *(v1 + 88);
    v5 = *(v1 + 96);

    return _swift_task_switch(sub_10020EE08, v4, v5);
  }
}

uint64_t sub_10020F0AC()
{
  sub_1000058A8();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  v2[19] = v0;

  if (v0)
  {

    v5 = v2[11];
    v6 = v2[12];

    return _swift_task_switch(sub_10020F23C, v5, v6);
  }

  else
  {

    v7 = v4[1];

    return v7();
  }
}

void *sub_10020F23C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v4 = sub_100190988();
    v5 = sub_100008A70();
    sub_100005D4C();
    *v4 = 136315394;
    if (v3)
    {
      v26 = v5;
      v6 = v0[15];
      result = sub_10021D79C(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        return result;
      }

      v24 = v2;
      v25 = v1;
      v8 = 0;
      v9 = v0[13];
      v10 = v0[8];
      v11 = v9 & 0xC000000000000001;
      v27 = v9 + 32;
      do
      {
        if (v11)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = *(v27 + 8 * v8);
        }

        v13 = v12;
        dispatch thunk of Message.recordUUID.getter();

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_10021D79C((v14 > 1), v15 + 1, 1);
        }

        v16 = v0[15];
        ++v8;
        _swiftEmptyArrayStorage[2] = v15 + 1;
        sub_100211B00();
        (*(v10 + 32))(_swiftEmptyArrayStorage + v17 + *(v10 + 72) * v15);
      }

      while (v8 != v16);

      v1 = v25;
      v2 = v24;
      v5 = v26;
    }

    else
    {
    }

    Array.description.getter();
    sub_100211A14();
    v18 = sub_100211AD0();
    v21 = sub_100008ADC(v18, v19, v20);

    *(v4 + 4) = v21;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v22;
    *v5 = v22;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as undeleted with error: %@", v4, 0x16u);
    sub_100153D2C(v5);
    sub_100005BB8(v5);
    sub_10000870C();
    sub_100005368();
  }

  else
  {
  }

  sub_100211934();

  sub_10000535C();

  return v23();
}

void sub_10020F550(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      sub_1001BA504(a2);
    }
  }
}

uint64_t sub_10020F634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020F6F8, v5, v4);
}

uint64_t sub_10020F6F8()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_10020EAC4();
}

uint64_t sub_10020F7B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = type metadata accessor for VoicemailActor();
  v2[4] = swift_initStaticObject();
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_10020F860;

  return sub_10021270C();
}

uint64_t sub_10020F860()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000068BC();
  *v2 = v1;
  v3 = *v0;
  sub_100006870();
  *v4 = v3;
  *(v6 + 48) = v5;

  sub_100007A14();
  sub_100211640(v7, v8);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v9 = sub_100005B78();

  return _swift_task_switch(v9, v10, v11);
}

void sub_10020F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001541FC();
  sub_100154224();
  v13 = *(v12 + 48);
  v14 = *(v12 + 16);
  v15 = sub_100017230(v13);
  v16 = 0;
  v17 = (v14 + 16);
  while (v15 != v16)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v18 = *(v13 + 32 + 8 * v16);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if ((*v17)(*(v12 + 16), v18))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_1001A6010();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v16;
  }

  v19 = *(v12 + 16);

  _Block_release(v19);
  sub_100026F44();
  sub_1000087B4();

  v22(v20, v21, v22, v23, v24, v25, v26, v27, _swiftEmptyArrayStorage, a10, a11, a12);
}

uint64_t sub_10020FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020FC38, v5, v4);
}

uint64_t sub_10020FC38()
{
  sub_1000058A8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = v3;
  *(v0 + 48) = _Block_copy(v1);
  _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v6 = sub_100154230(v5);
  *v6 = v7;
  v6[1] = sub_10020FD10;
  v8 = sub_100211950(*(v0 + 32));

  return sub_10020F7B0(v8, v3);
}

uint64_t sub_10020FD10()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058C4();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = *v0;
  sub_100006870();
  *v6 = v5;

  _Block_release(v3);

  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  sub_100008BAC();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_10020FE94(uint64_t a1)
{
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = sub_100005924();
    *v2 = 0;
    sub_100006D40(&_mh_execute_header, v3, v4, "VoiceMail rating: We failed to rate becuase we do not support it for FTMessages yet.", v5, v6, v7, v8, v9, oslog);
    sub_100005BB8(v2);
  }
}

uint64_t sub_10020FFE8()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;

  return sub_10020C574();
}

double sub_1002100B8(uint64_t a1)
{
  v4 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v5 = sub_100005568(v4);
  __chkstk_darwin(v5);
  v6 = sub_100211B70();
  sub_1000067D8(v2, v7, v8, v6);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  sub_100007A14();
  v12 = sub_100211640(v10, v11);
  sub_1001906BC();
  v13 = swift_allocObject();
  v13[2] = inited;
  v13[3] = v12;
  v13[4] = v1;
  v13[5] = a1;
  v14 = v1;

  sub_100211A60();

  return result;
}

uint64_t sub_1002101B0()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008208;

  return sub_10020D0D0();
}

uint64_t sub_100210280()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;

  return sub_10020DEB0();
}

uint64_t sub_100210350()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;

  return sub_10020EAC4();
}

uint64_t sub_100210420(void *a1)
{
  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = a1;
  sub_1002100B8(v2);
}

uint64_t sub_1002104F4(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100210560()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_100210350();
}

uint64_t sub_1002105EC()
{
  sub_1000058A8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_100008BA0(v3);
  *v4 = v5;
  v4[1] = sub_100008204;
  v6 = sub_10000C1D8();

  return sub_100206D90(v6, v1, v2);
}

uint64_t sub_100210688()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_100210280();
}

uint64_t sub_100210714()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_1002101B0();
}

uint64_t sub_1002107A0()
{
  swift_unknownObjectRelease();

  sub_1001906BC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1002107E4()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_10020FFE8();
}

uint64_t sub_100210870()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100210900()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100210990()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100210A20()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100210AB0()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100210B40()
{
  sub_1000058A8();
  sub_10000804C();
  v1 = swift_task_alloc();
  v2 = sub_100005B88(v1);
  *v2 = v3;
  v4 = sub_100006D10(v2);

  return sub_10020A2F0(v4, v5, v6, v0);
}

uint64_t sub_100210BD0()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100005568(v0);
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v2[1] = sub_100008204;
  v4 = sub_10000C1D8();

  return sub_10020C1CC(v4, v5);
}

uint64_t sub_100210C98()
{
  swift_unknownObjectRelease();

  v0 = sub_10000FF5C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100210CD0()
{
  sub_1000058A8();
  sub_10000804C();
  v1 = swift_task_alloc();
  v2 = sub_100005B88(v1);
  *v2 = v3;
  v4 = sub_100006D10(v2);

  return sub_100209E9C(v4, v5, v6, v0);
}

uint64_t sub_100210D60()
{
  v1 = type metadata accessor for Logger();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100210E18()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100005568(v0);
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v2[1] = sub_100008204;
  v4 = sub_10000C1D8();

  return sub_10020BFD0(v4, v5);
}

uint64_t sub_100210EE0()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_100209A98(v3, v4, v5, v6, v7);
}

uint64_t sub_100210F6C()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100006998(v0);
  sub_100007220();
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v4 = sub_100026FF8(v2);

  return sub_10020B9A4(v4, v5, v6);
}

unint64_t sub_100211044(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100211054()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_1002098BC(v3, v4, v5, v6, v7);
}

uint64_t sub_1002110E0()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100006998(v0);
  sub_100007220();
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v4 = sub_100026FF8(v2);

  return sub_10020B500(v4, v5, v6);
}

unint64_t sub_1002111B8()
{
  result = qword_1003AEFD0;
  if (!qword_1003AEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEFD0);
  }

  return result;
}

uint64_t sub_10021120C()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_1002096E0(v3, v4, v5, v6, v7);
}

uint64_t sub_100211298()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100006998(v0);
  sub_100007220();
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v4 = sub_100026FF8(v2);

  return sub_10020AE34(v4, v5, v6);
}

uint64_t sub_100211370()
{
  swift_unknownObjectRelease();

  sub_1001906BC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1002113B4()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_100209404(v3, v4, v5, v6, v7);
}

uint64_t sub_100211440()
{
  v1 = type metadata accessor for Logger();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_10021150C()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100006998(v0);
  sub_100007220();
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v4 = sub_100026FF8(v2);

  return sub_10020A680(v4, v5, v6);
}

uint64_t sub_1002115E4(uint64_t a1)
{
  v2 = type metadata accessor for VoiceMailAnalyticsLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100211640(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100008524();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100211684()
{
  sub_100006610();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_100005B88(v4);
  *v5 = v6;
  v5[1] = sub_100008204;

  return sub_100207614(v2, v3);
}

uint64_t sub_100211718()
{
  sub_1000058A8();
  sub_10000804C();
  v1 = swift_task_alloc();
  v2 = sub_100005B88(v1);
  *v2 = v3;
  v4 = sub_100006D10(v2);

  return sub_100207790(v4, v5, v6, v0);
}

uint64_t sub_1002117A8()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

double sub_1002118F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(v22 - 80);

  return sub_100206C28(v24, 2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_100211934()
{
}

uint64_t sub_10021195C()
{

  return swift_task_alloc();
}

uint64_t sub_1002119C4()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_1002119E0()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

id sub_1002119FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(a18 + 8 * v18);

  return v20;
}

uint64_t sub_100211A14()
{
}

uint64_t sub_100211A30()
{
}

uint64_t sub_100211A48()
{

  return swift_task_alloc();
}

void sub_100211A60()
{

  sub_1001621BC();
}

uint64_t sub_100211A84()
{
}

BOOL sub_100211AA0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100211AB8()
{
}

uint64_t sub_100211B70()
{

  return type metadata accessor for TaskPriority();
}

double sub_100211B90()
{

  return result;
}

uint64_t sub_100211BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

unint64_t sub_100211BD0()
{
  v4 = *(v0 + 56);

  return sub_100017238(v1, v2 == 0, v4);
}

uint64_t sub_100211BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_100211C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

double sub_100211C30()
{

  return result;
}

uint64_t sub_100211C50()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t sub_100211C70()
{
}

uint64_t sub_100211C88(uint64_t a1)
{
  *(v1 + 4) = a1;
}

uint64_t sub_100211CA0(float *a1, float a2)
{
  *a1 = a2;

  return sub_100017230(v2);
}

uint64_t sub_100211CB8()
{
}

uint64_t sub_100211CD0(uint64_t a1)
{

  return static MainActor.shared.getter();
}

uint64_t sub_100211CE8()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t sub_100211D00(uint64_t a1)
{
  *(v1 + 48) = a1;

  return type metadata accessor for UUID();
}

void sub_100211D18(uint64_t a1, void *a2, void *a3)
{
  v30 = sub_100017230(a1);
  v6 = 0;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1 & 0xC000000000000001;
  v27 = a1 + 32;
  while (1)
  {
    if (v6 == v30)
    {

      return;
    }

    if (v29)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_25;
      }

      v7 = *(v27 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      break;
    }

    swift_beginAccess();
    v11 = a2[2];
    v10 = a2[3];
    v12 = v10 + 32;
    v13 = *(v10 + 16);
    if (!v11)
    {
      for (i = 0; v13 != i; ++i)
      {
        type metadata accessor for MessageID(0);
        v19 = *(v12 + 8 * i);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          v18 = 0;
          goto LABEL_15;
        }
      }

LABEL_9:
      swift_endAccess();
      goto LABEL_21;
    }

    i = sub_1002186EC(v8, v12, v13, (v11 + 16), v11 + 32);
    v16 = v15;
    v18 = v17;

    if (v16)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_100218968(i, v18);

    v22 = a2[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2[4] = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_10003C270(v22);
      a2[4] = v22;
    }

    v24 = *(v22 + 16);
    if (i >= v24)
    {
      goto LABEL_26;
    }

    v25 = v24 - 1;
    memmove((v22 + 8 * i + 32), (v22 + 8 * i + 40), 8 * (v24 - 1 - i));
    *(v22 + 16) = v25;
    specialized ContiguousArray._endMutation()();
    swift_endAccess();
    swift_unknownObjectRelease();
    v26 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_21:
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

double sub_100211F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_100006848(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_100300078;
  v9[5] = v8;
  sub_1002165E8(0, 0, v6, &unk_100300088, v9);

  return result;
}

void sub_100212084(uint64_t a1)
{
  sub_100017230(a1);
  type metadata accessor for MessageID(0);
  sub_10021A41C(&qword_1003AEFC8, type metadata accessor for MessageID, &protocol conformance descriptor for NSObject);
  v5[1] = Set.init(minimumCapacity:)();
  v2 = sub_100017230(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_10019F56C(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1002121A0()
{
  sub_100006610();
  v1[3] = v2;
  v1[4] = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10000C600();
  sub_10021A41C(v3, v4, &unk_1002FDCD8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v6;
  v1[6] = v5;

  return _swift_task_switch(sub_100212254, v6, v5);
}

uint64_t sub_100212254()
{
  sub_1000058A8();
  v1 = *(v0[4] + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state);
  v0[7] = v1;
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = v0[3];

      sub_100214714(v2);
    }

    v5 = sub_1000302CC();

    return v6(v5);
  }

  else
  {

    v3 = swift_task_alloc();
    v0[8] = v3;
    v4 = type metadata accessor for CachedVoicemailManager.Cache();
    *v3 = v0;
    v3[1] = sub_10021238C;

    return Task<>.value.getter(v0 + 2, v1, v4);
  }
}

uint64_t sub_10021238C()
{
  sub_100006610();
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_1002124A0, v5, v4);
}

uint64_t sub_1002124A0()
{
  sub_1000058A8();
  v1 = sub_100214714(*(v0 + 24));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100212520()
{
  _StringGuts.grow(_:)(26);
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_serviceName);

  v2._object = 0x80000001002AD060;
  v2._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v2);
  return v1;
}

double sub_1002125B0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state) = a1;

  sub_100214EF0();

  return result;
}

uint64_t sub_100212610()
{
  v1 = v0 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager__estimatedCount;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager__estimatedCount));
  v2 = *(v1 + 8);
  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_100212650(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager__estimatedCount;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager__estimatedCount));
  *(v3 + 8) = a1;
  os_unfair_lock_unlock(v3);
  v4 = [objc_allocWithZone(NSUserDefaults) init];
  v5 = sub_100212610();
  sub_100212520();
  v6 = String._bridgeToObjectiveC()();

  [v4 setInteger:v5 forKey:v6];
}

uint64_t sub_10021270C()
{
  sub_100006610();
  v1[7] = v0;
  sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  v1[8] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  v1[9] = swift_initStaticObject();
  sub_10000C600();
  v1[10] = sub_10021A41C(v2, v3, &unk_1002FDCD8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v5;
  v1[12] = v4;

  return _swift_task_switch(sub_100212800, v5, v4);
}

uint64_t sub_100212800()
{
  v44 = v0;
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_100008A14(v1, &unk_1003B8850);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10000843C(v3))
  {
    v4 = sub_100005384();
    v5 = swift_slowAlloc();
    v43 = v5;
    *v4 = 136315138;
    v6 = sub_100007A2C();
    *(v4 + 4) = sub_100008ADC(v6, v7, &v43);
    sub_100007388();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100005B2C(v5);
    sub_100005340();
    sub_100005368();
  }

  v13 = v0[7];
  v14 = *(v13 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state);
  v0[14] = v14;
  if (v14 >> 62)
  {
    if (v14 >> 62 == 1)
    {
      v15 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;

      sub_1000303B0(v13 + v15);
      v16 = *(v13 + v15);
      v17 = *(v16 + 16);
      if (v17)
      {

        v18 = v16 + 40;
        do
        {
          v19 = *(v18 - 8);
          v43 = (v14 & 0x3FFFFFFFFFFFFFFFLL);

          v19(&v43);

          v18 += 16;
          --v17;
        }

        while (v17);

        v16 = *(v13 + v15);
      }

      *(v13 + v15) = _swiftEmptyArrayStorage;

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (sub_100005908(v21))
      {
        sub_100005384();
        v43 = sub_1000089F8();
        *v16 = 136315138;
        v22 = sub_100007A2C();
        *(v16 + 4) = sub_100008ADC(v22, v23, &v43);
        sub_100005414(&_mh_execute_header, v24, v25, "CachedVoicemailManager: %s returning voicemails");
        sub_10000870C();
        sub_100005340();
      }

      sub_100214610();

      v26 = sub_1000302CC();

      return v27(v26);
    }

    v34 = v0[9];
    v33 = v0[10];
    v35 = v0[8];
    v36 = type metadata accessor for TaskPriority();
    sub_100006848(v35, 1, 1, v36);
    sub_100005C44();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008C18();
    v38 = swift_allocObject();
    v38[2] = v34;
    v38[3] = v33;
    v38[4] = v37;
    sub_100162974();
    v40 = v39;
    v0[16] = v39;

    sub_1002125B0(v41);
    v42 = swift_task_alloc();
    v0[17] = v42;
    v30 = type metadata accessor for CachedVoicemailManager.Cache();
    *v42 = v0;
    v42[1] = sub_100212E84;
    v31 = v0 + 6;
    v32 = v40;
  }

  else
  {

    v29 = swift_task_alloc();
    v0[15] = v29;
    v30 = type metadata accessor for CachedVoicemailManager.Cache();
    *v29 = v0;
    v29[1] = sub_100212BEC;
    v31 = v0 + 5;
    v32 = v14;
  }

  return Task<>.value.getter(v31, v32, v30);
}

uint64_t sub_100212BEC()
{
  sub_100006610();
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return _swift_task_switch(sub_100212D00, v5, v4);
}

uint64_t sub_100212D00()
{
  v18 = v0;

  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;
  sub_1000303B0(v2 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue);
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v17 = v1;

      v7(&v17);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (sub_100005908(v9))
  {
    sub_100005384();
    v17 = sub_1000089F8();
    *v2 = 136315138;
    v10 = sub_100007A2C();
    *(v2 + 4) = sub_100008ADC(v10, v11, &v17);
    sub_100005414(&_mh_execute_header, v12, v13, "CachedVoicemailManager: %s returning voicemails");
    sub_10000870C();
    sub_100005340();
  }

  sub_100214610();

  v14 = sub_1000302CC();

  return v15(v14);
}

uint64_t sub_100212E84()
{
  sub_100006610();
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return _swift_task_switch(sub_100212F98, v5, v4);
}

uint64_t sub_100212F98()
{
  v18 = v0;

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;
  sub_1000303B0(v2 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue);
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v17 = v1;

      v7(&v17);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (sub_100005908(v9))
  {
    sub_100005384();
    v17 = sub_1000089F8();
    *v2 = 136315138;
    v10 = sub_100007A2C();
    *(v2 + 4) = sub_100008ADC(v10, v11, &v17);
    sub_100005414(&_mh_execute_header, v12, v13, "CachedVoicemailManager: %s returning voicemails");
    sub_10000870C();
    sub_100005340();
  }

  sub_100214610();

  v14 = sub_1000302CC();

  return v15(v14);
}

uint64_t sub_100213114(uint64_t a1)
{
  v4 = *(v2 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state) >> 62;
  if (v4)
  {
    if (v4 == 1)
    {

      sub_100214B6C(a1, 1);
    }

    else
    {
      sub_1002111B8();
      swift_willThrowTypedImpl();
      return 0;
    }
  }

  else
  {
    sub_100005C44();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;
    sub_1000086F0(v2 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue, v7);

    sub_1002168CC(sub_10023FD0C);
    v8 = *(*(v2 + v6) + 16);
    sub_10021699C(v8, sub_10023FD0C);
    v9 = *(v2 + v6);
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = sub_10021A464;
    *(v10 + 40) = v5;
    *(v2 + v6) = v9;
    swift_endAccess();
    v1 = 1;
    sub_1002111B8();
    swift_willThrowTypedImpl();
  }

  return v1;
}

uint64_t sub_10021347C(uint64_t a1)
{
  v2 = v1;
  sub_100005C44();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = *(v2 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state);
  if (v5 >> 62)
  {
    if (v5 >> 62 == 1)
    {

      sub_100215EF0(v5 & 0x3FFFFFFFFFFFFFFFLL, a1);
    }

    else
    {
      sub_1002111B8();

      swift_willThrowTypedImpl();

      return 0;
    }
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10021A3E0;
    *(v6 + 24) = v4;
    v7 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;
    sub_1000086F0(v2 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue, v8);

    sub_1002168CC(sub_10023FD0C);
    v9 = *(*(v2 + v7) + 16);
    sub_10021699C(v9, sub_10023FD0C);
    v10 = *(v2 + v7);
    *(v10 + 16) = v9 + 1;
    v11 = v10 + 16 * v9;
    *(v11 + 32) = sub_10021A3E8;
    *(v11 + 40) = v6;
    *(v2 + v7) = v10;
    swift_endAccess();
    a1 = 1;
    sub_1002111B8();
    swift_willThrowTypedImpl();
  }

  return a1;
}

uint64_t sub_100213648()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003AF008);
  v1 = sub_100008A14(v0, qword_1003AF008);
  if (qword_1003A9F50 != -1)
  {
    swift_once();
  }

  v2 = sub_100008A14(v0, &unk_1003B8850);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100213710(uint64_t a1, char a2)
{
  v6 = sub_100017230(a1);
  v7 = _swiftEmptyArrayStorage;
  v110 = a2;
  if (!v6)
  {
LABEL_10:
    type metadata accessor for MessageID(0);
    sub_10014EA98(&qword_1003AF190, &qword_1003000E0);
    sub_10021A41C(&qword_1003AEFC8, type metadata accessor for MessageID, &protocol conformance descriptor for NSObject);
    v2 = Dictionary.init(dictionaryLiteral:)();
    v14 = 0;
    v115 = v7[2];
    v15 = v7 + 5;
    v113 = v7;
    while (v115 != v14)
    {
      if (v14 >= v7[2])
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v3 = *v15;
      v16 = *(v2 + 16);
      v17 = *(v15 - 1);
      swift_unknownObjectRetain_n();
      v18 = v17;
      if (v16 && (v19 = sub_1001701D8(), (v20 & 1) != 0))
      {
        v116[0] = *(*(v2 + 56) + 8 * v19);
        swift_unknownObjectRetain();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v116[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v2;
        v22 = sub_1001701D8();
        v24 = *(v2 + 16);
        v25 = (v23 & 1) == 0;
        v2 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_105;
        }

        v26 = v22;
        v27 = v23;
        sub_10014EA98(&qword_1003AF198, &qword_1003000E8);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v2))
        {
          v28 = sub_1001701D8();
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_110;
          }

          v26 = v28;
        }

        v2 = v117;
        if (v27)
        {
          *(v117[7] + 8 * v26) = v116[0];

          swift_unknownObjectRelease();
        }

        else
        {
          v117[(v26 >> 6) + 8] |= 1 << v26;
          *(*(v2 + 48) + 8 * v26) = v18;
          *(*(v2 + 56) + 8 * v26) = v21;
          v42 = *(v2 + 16);
          v40 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v40)
          {
            goto LABEL_106;
          }

          *(v2 + 16) = v43;
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();

        v7 = v113;
      }

      else
      {
        sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1002FBD90;
        *(v30 + 32) = v3;
        swift_unknownObjectRetain();
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = v2;
        v32 = sub_1001701D8();
        v34 = *(v2 + 16);
        v35 = (v33 & 1) == 0;
        v2 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_102;
        }

        isUniquelyReferenced_nonNull_native = v32;
        v36 = v33;
        sub_10014EA98(&qword_1003AF198, &qword_1003000E8);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v31, v2))
        {
          v37 = sub_1001701D8();
          v7 = v113;
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_110;
          }

          isUniquelyReferenced_nonNull_native = v37;
        }

        else
        {
          v7 = v113;
        }

        v2 = v116[0];
        if (v36)
        {
          *(*(v116[0] + 56) + 8 * isUniquelyReferenced_nonNull_native) = v30;

          swift_unknownObjectRelease();
        }

        else
        {
          *(v116[0] + 8 * (isUniquelyReferenced_nonNull_native >> 6) + 64) |= 1 << isUniquelyReferenced_nonNull_native;
          *(*(v2 + 48) + 8 * isUniquelyReferenced_nonNull_native) = v18;
          *(*(v2 + 56) + 8 * isUniquelyReferenced_nonNull_native) = v30;
          v39 = *(v2 + 16);
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_104;
          }

          *(v2 + 16) = v41;
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      v15 += 2;
      ++v14;
    }

    v3 = (v2 + 64);
    v44 = 1 << *(v2 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v2 + 64);
    v47 = (v44 + 63) >> 6;

    v48 = 0;
    isUniquelyReferenced_nonNull_native = _swiftEmptyArrayStorage;
    while (v46)
    {
LABEL_45:
      v50 = (v48 << 9) | (8 * __clz(__rbit64(v46)));
      v51 = *(*(v2 + 48) + v50);
      v52 = *(*(v2 + 56) + v50);
      if (v52 >> 62)
      {
        v53 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46 &= v46 - 1;
      if (v53 > 1)
      {
        v54 = v51;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10023FECC();
          isUniquelyReferenced_nonNull_native = v57;
        }

        v55 = *(isUniquelyReferenced_nonNull_native + 16);
        if (v55 >= *(isUniquelyReferenced_nonNull_native + 24) >> 1)
        {
          sub_10023FECC();
          isUniquelyReferenced_nonNull_native = v58;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v55 + 1;
        v56 = isUniquelyReferenced_nonNull_native + 16 * v55;
        *(v56 + 32) = v54;
        *(v56 + 40) = v52;
        v7 = v113;
      }
    }

    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_101;
      }

      if (v49 >= v47)
      {
        break;
      }

      v46 = v3[v49];
      ++v48;
      if (v46)
      {
        v48 = v49;
        goto LABEL_45;
      }
    }

    if (!*(isUniquelyReferenced_nonNull_native + 16))
    {

      if (qword_1003AA0D8 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_100008A14(v68, qword_1003AF008);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "CachedVoicemailManager.Cache.init(voicemails:) without duplicate keys", v71, 2u);
      }

LABEL_97:
      sub_1002142F4(v7);
      v102 = v101;
      v104 = v103;
      v106 = v105;
      type metadata accessor for CachedVoicemailManager.Cache();
      v107 = swift_allocObject();
      v107[2] = v102;
      v107[3] = v104;
      v107[4] = v106;
      if (v110)
      {
        swift_beginAccess();
        sub_100214AC8(sub_100214958, 0);
        swift_endAccess();
      }

      return v107;
    }

    if (qword_1003AA0D8 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_108;
  }

  v8 = v6;
  v116[0] = _swiftEmptyArrayStorage;
  sub_10021D7BC(0, v6 & ~(v6 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v116[0];
    v10 = a1;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v10 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      v3 = [v11 identifier];
      v116[0] = v7;
      isUniquelyReferenced_nonNull_native = v7[2];
      v12 = v7[3];
      if (isUniquelyReferenced_nonNull_native >= v12 >> 1)
      {
        sub_10021D7BC((v12 > 1), isUniquelyReferenced_nonNull_native + 1, 1);
        v10 = a1;
        v7 = v116[0];
      }

      ++v9;
      v7[2] = isUniquelyReferenced_nonNull_native + 1;
      v13 = &v7[2 * isUniquelyReferenced_nonNull_native];
      v13[4] = v3;
      v13[5] = v11;
    }

    while (v8 != v9);
    goto LABEL_10;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  swift_once();
LABEL_56:
  v59 = type metadata accessor for Logger();
  sub_100008A14(v59, qword_1003AF008);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v112 = v61;
    v62 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    *v62 = 136315394;
    v63 = *(isUniquelyReferenced_nonNull_native + 16);
    v114 = v62;
    if (v63)
    {
      v117 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v64 = (isUniquelyReferenced_nonNull_native + 32);
      v65 = v63;
      do
      {
        v66 = *v64;
        v64 += 2;
        v67 = v66;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v65;
      }

      while (v65);
      v62 = v114;
    }

    v72 = Array.description.getter();
    v74 = v73;

    v75 = sub_100008ADC(v72, v74, v116);

    *(v62 + 4) = v75;
    *(v62 + 12) = 2080;
    if (v63)
    {
      v109 = v60;
      v117 = _swiftEmptyArrayStorage;
      sub_10021D7DC(0, v63, 0);
      v76 = 40;
      v77 = v117;
      do
      {
        v78 = *(isUniquelyReferenced_nonNull_native + v76);
        v117 = v77;
        v80 = v77[2];
        v79 = v77[3];

        if (v80 >= v79 >> 1)
        {
          sub_10021D7DC((v79 > 1), v80 + 1, 1);
          v77 = v117;
        }

        v77[2] = v80 + 1;
        v77[v80 + 4] = v78;
        v76 += 16;
        --v63;
      }

      while (v63);

      v60 = v109;
      v62 = v114;
    }

    else
    {
    }

    v81 = Array.description.getter();
    v83 = v82;

    v84 = sub_100008ADC(v81, v83, v116);

    *(v62 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v60, v112, "CachedVoicemailManager.Cache.init(voicemails:) with duplicate keys: %s, voicemails: %s", v62, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v85 = 1 << *(v2 + 32);
  v86 = -1;
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  v87 = v86 & *(v2 + 64);
  v88 = (v85 + 63) >> 6;

  v89 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    do
    {
      if (!v87)
      {
        while (1)
        {
          v90 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            goto LABEL_103;
          }

          if (v90 >= v88)
          {

            goto LABEL_97;
          }

          v87 = v3[v90];
          ++v89;
          if (v87)
          {
            v89 = v90;
            break;
          }
        }
      }

      v91 = (v89 << 9) | (8 * __clz(__rbit64(v87)));
      v92 = *(*(v2 + 48) + v91);
      v93 = *(*(v2 + 56) + v91);
      if (v93 >> 62)
      {
        v94 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v87 &= v87 - 1;
    }

    while (!v94);
    if ((v93 & 0xC000000000000001) == 0)
    {
      break;
    }

    v98 = v92;

    v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_89:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10023FDEC();
      v7 = v99;
    }

    isUniquelyReferenced_nonNull_native = v7[2];
    if (isUniquelyReferenced_nonNull_native >= v7[3] >> 1)
    {
      sub_10023FDEC();
      v7 = v100;
    }

    v7[2] = isUniquelyReferenced_nonNull_native + 1;
    v97 = &v7[2 * isUniquelyReferenced_nonNull_native];
    v97[4] = v92;
    v97[5] = v95;
  }

  if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v95 = *(v93 + 32);
    v96 = v92;
    swift_unknownObjectRetain();
    goto LABEL_89;
  }

  __break(1u);
LABEL_110:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002142F4(uint64_t a1)
{
  v9 = sub_100218188(_swiftEmptyArrayStorage, sub_100240350, sub_10021957C);
  sub_100218188(_swiftEmptyArrayStorage, sub_100240350, sub_1002196F0);
  sub_100218808(*(a1 + 16), 0);
  specialized ContiguousArray.reserveCapacity(_:)();
  v2 = 0;
  v3 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    v5 = *(i - 8);
    v6 = v9[2];
    v7 = v5;
    swift_unknownObjectRetain();
    sub_100218660(v7, (v9 + 4), v6);
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_10021822C(v5, 0);
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    swift_unknownObjectRelease();

    ++v2;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

void *sub_1002144EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      v5 = v4;
      v2 = sub_100240350();
      sub_10021957C(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

void *sub_100214580(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10023FFAC(*(a1 + 16), 0);
  sub_100219938(&v7, v3 + 4, v2, a1);
  v5 = v4;
  sub_10016D304(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void sub_100214610()
{
  swift_beginAccess();
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[2];
    v4 = v0[3];
    v5 = sub_100240350();
    v6 = sub_100219870(&v7, v5 + 32, v2, v3, v4, v1);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    if (v6 == v2)
    {
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_100214714(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  v6 = sub_1002147AC(a1, v3, v4, v5);

  return v6;
}

unint64_t sub_1002147AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = &v10;
  v5 = sub_10021834C(sub_100219F64, v9, a3);
  v6 = 0;
  if ((v7 & 1) == 0)
  {
    return sub_100218944(v5, a4);
  }

  return v6;
}

unint64_t sub_100214824(uint64_t a1, void *a2)
{
  v3 = v2;
  v7 = *v2;
  v6 = v2[1];
  v18 = a2;
  v17[2] = v7;
  v17[3] = v6;
  v17[4] = &v18;
  v8 = sub_10021834C(sub_10021A658, v17, v6);
  if (v10)
  {
    sub_10021822C(a2, v9);
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v11 = 0;
LABEL_8:
    specialized ContiguousArray._endMutation()();
    return v11;
  }

  v12 = v8;
  v15 = v3[2];
  v13 = v3 + 2;
  v14 = v15;
  v11 = sub_100218944(v8, v15);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v15;
  if ((result & 1) == 0)
  {
    result = sub_10003C270(v14);
    v14 = result;
    *v13 = result;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(v14 + 16))
  {
    *(v14 + 8 * v12 + 32) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100214958(uint64_t a1, id *a2, uint64_t a3, void **a4)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *a4;
  v14 = [*a2 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [v13 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v15) = static Date.> infix(_:_:)();
  v16 = *(v7 + 8);
  v16(v10, v6);
  v16(v12, v6);
  return v15 & 1;
}

void sub_100214AC8(uint64_t (*a1)(id *, uint64_t *, void **, uint64_t *), uint64_t a2)
{
  v6 = v2[2];
  sub_100219E40(*v2, v2[1], v6);
  v9 = v7;
  sub_1002169E4(&v9, a1, a2);
  if (v3)
  {
    goto LABEL_4;
  }

  v8 = *(v9 + 2);
  if (v8 == *(v6 + 16))
  {
    sub_100219214((v9 + 32), v8, v2);
LABEL_4:

    return;
  }

  __break(1u);
}

void sub_100214B6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_100017230(a1);
  v6 = 0;
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1 & 0xC000000000000001;
  v24 = a1 + 32;
  while (v6 != v5)
  {
    if (v26)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v25 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v24 + 8 * v6);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v9 = [v7 identifier];
    swift_beginAccess();
    v11 = v3[2];
    v10 = v3[3];
    v12 = v10 + 32;
    v13 = *(v10 + 16);
    if (!v11)
    {
      swift_unknownObjectRetain();
      for (i = 0; v13 != i; ++i)
      {
        type metadata accessor for MessageID(0);
        v21 = *(v12 + 8 * i);
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          goto LABEL_9;
        }
      }

      v18 = 0;
LABEL_19:
      sub_10021822C(v9, v18);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_20;
    }

    swift_unknownObjectRetain();

    i = sub_1002186EC(v9, v12, v13, (v11 + 16), v11 + 32);
    v16 = v15;
    v18 = v17;

    if (v16)
    {
      goto LABEL_19;
    }

LABEL_9:

    v19 = v3[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[4] = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_10003C270(v19);
      v3[4] = v19;
    }

    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }

    if (i >= *(v19 + 16))
    {
      goto LABEL_28;
    }

    *(v19 + 8 * i + 32) = v7;
    swift_unknownObjectRelease();
LABEL_20:
    specialized ContiguousArray._endMutation()();
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    swift_beginAccess();
    sub_100214AC8(sub_100214958, 0);
    swift_endAccess();
  }
}

void *sub_100214DF4(uint64_t a1, char a2)
{
  v6 = _swiftEmptyArrayStorage;

  sub_100211D18(a1, v2, &v6);
  if (a2)
  {
    swift_beginAccess();
    sub_100214AC8(sub_100214958, 0);
    swift_endAccess();
  }

  return v6;
}

uint64_t sub_100214E94()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

double sub_100214EF0()
{
  if (*(v0 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state) >> 62 == 1)
  {

    sub_100214610();
    v2 = sub_100017230(v1);

    sub_100212650(v2);
  }

  return result;
}

uint64_t sub_10021500C()
{
  sub_100006610();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10000C600();
  sub_10021A41C(v0, v1, &unk_1002FDCD8);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002150BC, v3, v2);
}

uint64_t sub_1002150BC()
{
  sub_1000058A8();
  if (qword_1003AA0D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, qword_1003AF008);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (sub_10000843C(v3))
  {
    *swift_slowAlloc() = 0;
    sub_100007388();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100005368();
  }

  v9 = *(v0 + 8);

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_1002151B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10021A41C(&qword_1003AA7B8, type metadata accessor for VoicemailActor, &unk_1002FDCD8);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100215280, v6, v5);
}

uint64_t sub_100215280()
{
  v23 = v0;
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = sub_100008A14(v1, &unk_1003B8850);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10000843C(v3))
  {
    v4 = sub_100005384();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    v6 = sub_100007A2C();
    *(v4 + 4) = sub_100008ADC(v6, v7, &v22);
    sub_100007388();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100005B2C(v5);
    sub_100005340();
    sub_100005368();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v21 = (*((swift_isaMask & *Strong) + 0xC0) + **((swift_isaMask & *Strong) + 0xC0));
    v14 = swift_task_alloc();
    *(v0 + 88) = v14;
    *v14 = v0;
    v14[1] = sub_1002154F4;

    return v21();
  }

  else
  {
    type metadata accessor for CachedVoicemailManager.Cache();
    sub_100008C18();
    v16 = swift_allocObject();
    sub_1002142F4(_swiftEmptyArrayStorage);
    v16[2] = v17;
    v16[3] = v18;
    v16[4] = v19;
    **(v0 + 40) = v16;
    sub_10000535C();

    return v20();
  }
}

uint64_t sub_1002154F4()
{
  sub_1000058A8();
  v3 = v2;
  sub_1000058C4();
  v5 = v4;
  v6 = *v1;
  sub_100006870();
  *v7 = v6;
  v5[12] = v0;

  if (v0)
  {
    v8 = v5[7];
    v9 = v5[8];
    v10 = sub_100215718;
  }

  else
  {
    v5[13] = v3;
    v5[14] = type metadata accessor for CachedVoicemailManager.Cache();
    v8 = v5[7];
    v9 = v5[8];
    v10 = sub_100215614;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100215614()
{
  v15 = v0;
  v1 = *(v0 + 72);
  v2 = sub_100213710(*(v0 + 104), 1);

  sub_1002125B0(v3 | 0x4000000000000000);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = sub_100005908(v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    sub_100005384();
    v14 = sub_1000089F8();
    *v1 = 136315138;
    v8 = sub_100007A2C();
    *(v1 + 4) = sub_100008ADC(v8, v9, &v14);
    sub_100005414(&_mh_execute_header, v10, v11, "CachedVoicemailManager: %s returning cache from a task");
    sub_10000870C();
    sub_100005340();
  }

  **(v0 + 40) = v2;
  sub_10000535C();

  return v12();
}

uint64_t sub_100215718()
{
  sub_1000058A8();
  v1 = *(v0 + 80);
  type metadata accessor for CachedVoicemailManager.Cache();
  sub_100008C18();
  v2 = swift_allocObject();
  sub_1002142F4(_swiftEmptyArrayStorage);
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = v5;

  **(v0 + 40) = v2;
  sub_10000535C();

  return v6();
}

uint64_t sub_100215830(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_10021A41C(&qword_1003AA7B8, type metadata accessor for VoicemailActor, &unk_1002FDCD8);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002158F0, v4, v3);
}

uint64_t sub_1002158F0()
{
  sub_100006610();
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_100215990;

  return sub_10021270C();
}

uint64_t sub_100215990()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  sub_10000535C();

  return v7();
}

uint64_t sub_100215B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_10021A41C(&qword_1003AA7B8, type metadata accessor for VoicemailActor, &unk_1002FDCD8);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100215C40, v5, v4);
}

uint64_t sub_100215C40()
{
  sub_1000058A8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_100215CF8;

  return sub_1002121A0();
}

uint64_t sub_100215CF8()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[2];
  v5 = *v0;
  sub_100006870();
  *v6 = v5;

  v7 = sub_1000085C0();
  v8(v7);
  _Block_release(v2);
  swift_unknownObjectRelease();
  sub_10000535C();

  return v9();
}

uint64_t sub_100215E74(uint64_t a1, uint64_t a2)
{
  sub_100214DF4(a2, 1);
}

BOOL sub_100215EB0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

void sub_100215EF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100017230(a2);
  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v7 = v2 & 0xFFFFFFFFFFFFFF8;
  v8 = &selRef_greenTea3PUIHardwareEventHandler;
  v23 = v2 & 0xC000000000000001;
  v24 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v4 == v5)
    {
      swift_beginAccess();
      sub_100214AC8(sub_100214958, 0);
      swift_endAccess();
      return;
    }

    if (v6)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_18;
      }

      v9 = *(v2 + 8 * v5 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    v10 = [v9 v8[171]];
    swift_beginAccess();
    v11 = sub_100214824(v9, v10);
    swift_endAccess();

    if (v11)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1003AA0D8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100008A14(v12, qword_1003AF008);
      swift_unknownObjectRetain();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27[0] = v26;
        *v15 = 136315138;
        swift_unknownObjectRetain();
        sub_10014EA98(&qword_1003AA7A8, &qword_1002FA968);
        v16 = String.init<A>(reflecting:)();
        log = v13;
        v18 = v8;
        v19 = a1;
        v20 = v2;
        v21 = v4;
        v22 = sub_100008ADC(v16, v17, v27);
        v6 = v23;

        *(v15 + 4) = v22;
        v4 = v21;
        v2 = v20;
        a1 = v19;
        v8 = v18;
        _os_log_impl(&_mh_execute_header, log, v14, "CachedVoicemailmanager: Told to update message but no message was found with id: %s", v15, 0xCu);
        sub_100005B2C(v26);

        v7 = v24;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_100216224()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedVoicemailManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100216304(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_10021632C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100216380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1002163E0(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_100216418(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100008204;

  return v6();
}

uint64_t sub_100216500(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100008208;

  return v7();
}

uint64_t sub_1002165E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_100163918(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100006AC0(v11, 1, v12) == 1)
  {
    sub_100006AE8(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_100006AE8(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006AE8(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1002168CC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_100216928(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

uint64_t sub_10021699C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1002169E4(char **a1, uint64_t (*a2)(id *, uint64_t *, void **, uint64_t *), uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_100218BA0(v6);
  }

  v7 = *(v6 + 2);
  v8[0] = (v6 + 32);
  v8[1] = v7;
  sub_100216A68(v8, a2, a3);
  *a1 = v6;
}

void sub_100216A68(uint64_t *a1, uint64_t (*a2)(id *, uint64_t *, void **, uint64_t *), uint64_t a3)
{
  v6 = a1[1];
  v7 = _minimumMergeRunLength(_:)(v6);
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10014EA98(&unk_1003AF320, &qword_100300048);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11[0] = (v10 + 4);
      v11[1] = v9;
      sub_100216CDC(v11, v12, a1, v8, a2, a3);
      v10[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    sub_100216B8C(0, v6, 1, a1, a2);
  }
}

void sub_100216B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 16 * a3 - 16;
    v9 = a1 - a3;
LABEL_3:
    v20 = v8;
    v21 = a3;
    v10 = *(v7 + 16 * a3);
    v19 = v9;
    while (1)
    {
      v11 = *v8;
      v12 = *(v8 + 8);
      v26 = *(&v10 + 1);
      v27 = v10;
      v24 = v12;
      v25 = v11;
      v23 = v10;
      swift_unknownObjectRetain();
      v13 = v11;
      swift_unknownObjectRetain();
      v14 = v6;
      v15 = a5(&v27, &v26, &v25, &v24);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v14)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        v6 = 0;
LABEL_11:
        a3 = v21 + 1;
        v8 = v20 + 16;
        v9 = v19 - 1;
        if (v21 + 1 != a2)
        {
          goto LABEL_3;
        }

        return;
      }

      if (!v7)
      {
        __break(1u);
        return;
      }

      v16 = *v8;
      v10 = *(v8 + 16);
      *v8 = v10;
      *(v8 + 16) = v16;
      v8 -= 16;
      v17 = __CFADD__(v9++, 1);
      v6 = 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_100216CDC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id *, uint64_t *, void **, uint64_t *), uint64_t a6)
{
  v7 = v6;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v118 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_96;
    }

    goto LABEL_137;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v118 = v8;
      v112 = v10;
      v13 = v9;
      v14 = v9 + 1;
      v15 = *a3 + 16 * v12;
      v16 = *(v15 + 8);
      v17 = *a3 + 16 * v9;
      v18 = *v17;
      v19 = *(v17 + 8);
      v124 = *v15;
      v122 = v18;
      v123 = v16;
      v121 = v19;
      v20 = v124;
      swift_unknownObjectRetain();
      v21 = v18;
      swift_unknownObjectRetain();
      v115 = a5(&v124, &v123, &v122, &v121);
      if (v7)
      {
LABEL_105:

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v22 = (v17 + 24);
      v23 = v13 + 2;
      v12 = v14;
      v24 = v118;
      while (1)
      {
        v25 = v23;
        if (v12 + 1 >= v24)
        {
          break;
        }

        v26 = v12;
        v27 = v22[2];
        v28 = *(v22 - 1);
        v29 = *v22;
        v124 = v22[1];
        v122 = v28;
        v123 = v27;
        v121 = v29;
        v30 = v124;
        swift_unknownObjectRetain();
        v31 = v28;
        swift_unknownObjectRetain();
        LOBYTE(v28) = a5(&v124, &v123, &v122, &v121);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v32 = v115 ^ v28;
        v22 += 2;
        v12 = v26 + 1;
        v23 = v25 + 1;
        v7 = 0;
        v24 = v118;
        if (v32)
        {
          goto LABEL_10;
        }
      }

      v12 = v24;
LABEL_10:
      if (v115)
      {
        v11 = v13;
        if (v12 < v13)
        {
          goto LABEL_131;
        }

        v10 = v112;
        if (v13 < v12)
        {
          if (v24 >= v25)
          {
            v33 = v25;
          }

          else
          {
            v33 = v24;
          }

          v34 = 16 * v33 - 16;
          v35 = v12;
          v36 = v13;
          v37 = 16 * v13;
          do
          {
            if (v36 != --v35)
            {
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_135;
              }

              v39 = *(v38 + v37);
              *(v38 + v37) = *(v38 + v34);
              *(v38 + v34) = v39;
            }

            ++v36;
            v34 -= 16;
            v37 += 16;
          }

          while (v36 < v35);
        }
      }

      else
      {
        v11 = v13;
        v10 = v112;
      }
    }

    v40 = a3[1];
    if (v12 >= v40)
    {
      goto LABEL_31;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_127;
    }

    if (v12 - v11 >= a4)
    {
      goto LABEL_31;
    }

    v41 = v11 + a4;
    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      return;
    }

    if (v41 >= v40)
    {
      v41 = a3[1];
    }

    if (v41 < v11)
    {
      goto LABEL_130;
    }

    if (v12 != v41)
    {
      v111 = v11;
      v113 = v10;
      v86 = *a3;
      v87 = *a3 + 16 * v12 - 16;
      v88 = v11 - v12;
      v107 = v41;
      v117 = *a3;
      v118 = v7;
      do
      {
        v89 = *(v86 + 16 * v12);
        v108 = v88;
        v109 = v87;
        while (1)
        {
          v90 = v12;
          v91 = *v87;
          v92 = *(v87 + 8);
          v123 = *(&v89 + 1);
          v124 = v89;
          v122 = v91;
          v121 = v92;
          v20 = v89;
          swift_unknownObjectRetain();
          v21 = v91;
          swift_unknownObjectRetain();
          v93 = a5(&v124, &v123, &v122, &v121);
          if (v118)
          {
            goto LABEL_105;
          }

          v94 = v93;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if ((v94 & 1) == 0)
          {
            break;
          }

          v86 = v117;
          if (!v117)
          {
            goto LABEL_134;
          }

          v12 = v90;
          v95 = *v87;
          v89 = *(v87 + 16);
          *v87 = v89;
          *(v87 + 16) = v95;
          v87 -= 16;
          if (__CFADD__(v88++, 1))
          {
            goto LABEL_91;
          }
        }

        v12 = v90;
        v86 = v117;
LABEL_91:
        ++v12;
        v87 = v109 + 16;
        v88 = v108 - 1;
      }

      while (v12 != v107);
      v12 = v107;
      v11 = v111;
      v10 = v113;
      v7 = 0;
    }

LABEL_31:
    if (v12 < v11)
    {
      goto LABEL_126;
    }

    v116 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10023F7F4();
      v10 = v97;
    }

    v42 = *(v10 + 2);
    v43 = v42 + 1;
    if (v42 >= *(v10 + 3) >> 1)
    {
      sub_10023F7F4();
      v10 = v98;
    }

    *(v10 + 2) = v43;
    v44 = v10 + 32;
    v45 = &v10[16 * v42 + 32];
    *v45 = v11;
    *(v45 + 1) = v12;
    v118 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (v42)
    {
      break;
    }

LABEL_80:
    v8 = a3[1];
    v9 = v116;
    if (v116 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v46 = v43 - 1;
    v47 = &v44[16 * v43 - 16];
    v48 = &v10[16 * v43];
    if (v43 >= 4)
    {
      v53 = &v44[16 * v43];
      v54 = *(v53 - 8);
      v55 = *(v53 - 7);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_114;
      }

      v58 = *(v53 - 6);
      v57 = *(v53 - 5);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_115;
      }

      v60 = *(v48 + 1);
      v61 = v60 - *v48;
      if (__OFSUB__(v60, *v48))
      {
        goto LABEL_117;
      }

      v59 = __OFADD__(v51, v61);
      v62 = v51 + v61;
      if (v59)
      {
        goto LABEL_120;
      }

      if (v62 >= v56)
      {
        v76 = *v47;
        v75 = *(v47 + 1);
        v59 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v51 < v77)
        {
          v46 = v43 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_51;
    }

    if (v43 == 3)
    {
      v49 = *(v10 + 4);
      v50 = *(v10 + 5);
      v59 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      v52 = v59;
LABEL_51:
      if (v52)
      {
        goto LABEL_116;
      }

      v64 = *v48;
      v63 = *(v48 + 1);
      v65 = __OFSUB__(v63, v64);
      v66 = v63 - v64;
      v67 = v65;
      if (v65)
      {
        goto LABEL_119;
      }

      v68 = *(v47 + 1);
      v69 = v68 - *v47;
      if (__OFSUB__(v68, *v47))
      {
        goto LABEL_122;
      }

      if (__OFADD__(v66, v69))
      {
        goto LABEL_124;
      }

      if (v66 + v69 >= v51)
      {
        if (v51 < v69)
        {
          v46 = v43 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    if (v43 < 2)
    {
      goto LABEL_118;
    }

    v71 = *v48;
    v70 = *(v48 + 1);
    v59 = __OFSUB__(v70, v71);
    v66 = v70 - v71;
    v67 = v59;
LABEL_66:
    if (v67)
    {
      goto LABEL_121;
    }

    v73 = *v47;
    v72 = *(v47 + 1);
    v59 = __OFSUB__(v72, v73);
    v74 = v72 - v73;
    if (v59)
    {
      goto LABEL_123;
    }

    if (v74 < v66)
    {
      goto LABEL_80;
    }

LABEL_73:
    if (v46 - 1 >= v43)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_132;
    }

    v78 = v10;
    v10 = &v44[16 * v46 - 16];
    v79 = *v10;
    v80 = v46;
    v81 = &v44[16 * v46];
    v82 = *(v81 + 1);
    sub_1002174A0((*a3 + 16 * *v10), (*a3 + 16 * *v81), (*a3 + 16 * v82), v118, a5);
    if (v7)
    {
      goto LABEL_104;
    }

    if (v82 < v79)
    {
      goto LABEL_108;
    }

    v7 = v44;
    v83 = *(v78 + 2);
    if (v80 > v83)
    {
      goto LABEL_109;
    }

    *v10 = v79;
    *(v10 + 1) = v82;
    if (v80 >= v83)
    {
      goto LABEL_110;
    }

    v84 = v80;
    v43 = v83 - 1;
    memmove(v81, v81 + 16, 16 * (v83 - 1 - v84));
    v10 = v78;
    *(v78 + 2) = v83 - 1;
    v85 = v83 > 2;
    v44 = v7;
    v7 = 0;
    if (!v85)
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
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
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  v10 = sub_100217808(v10);
LABEL_96:
  v99 = v10;
  v100 = (v10 + 16);
  for (i = *(v10 + 2); ; *v100 = i)
  {
    v10 = (i - 2);
    if (i < 2)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v102 = &v99[16 * i];
    v103 = *v102;
    v104 = &v100[2 * i];
    v105 = v104[1];
    sub_1002174A0((*a3 + 16 * *v102), (*a3 + 16 * *v104), (*a3 + 16 * v105), v118, a5);
    if (v7)
    {
      break;
    }

    if (v105 < v103)
    {
      goto LABEL_111;
    }

    if (v10 >= *v100)
    {
      goto LABEL_112;
    }

    *v102 = v103;
    *(v102 + 1) = v105;
    v106 = *v100 - i;
    if (*v100 < i)
    {
      goto LABEL_113;
    }

    i = *v100 - 1;
    memmove(v104, v104 + 2, 16 * v106);
  }

LABEL_104:
}

uint64_t sub_1002174A0(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(id *, uint64_t *, void **, uint64_t *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 16;
  v10 = (a3 - a2) / 16;
  if (v9 >= v10)
  {
    sub_100240348(a2, (a3 - a2) / 16, a4);
    v11 = (v5 + 16 * v10);
    v26 = -v5;
    __srca = v5;
    v50 = v8;
    v48 = -v5;
LABEL_15:
    v49 = v7 - 16;
    v6 -= 16;
    v27 = &v11[v26];
    v52 = v7;
    while (1)
    {
      if (v11 <= v5 || v7 <= v8)
      {
LABEL_29:
        v39 = &v11[-v5] / 16;
        v40 = v7 < v5 || v7 >= v5 + 16 * v39;
        if (v40 || v7 != v5)
        {
          v41 = 16 * v39;
          v42 = v7;
          v43 = v5;
          goto LABEL_47;
        }

        return 1;
      }

      v54 = v27;
      v29 = v11;
      v31 = *(v11 - 1);
      v30 = v11 - 16;
      v32 = *(v7 - 2);
      v33 = *(v7 - 1);
      v62 = *(v11 - 2);
      v60 = v32;
      v61 = v31;
      v59 = v33;
      v34 = v62;
      swift_unknownObjectRetain();
      v35 = v32;
      swift_unknownObjectRetain();
      v36 = a5(&v62, &v61, &v60, &v59);
      if (v58)
      {
        break;
      }

      v37 = v36;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v38 = v6 + 16;
      if (v37)
      {
        v8 = v50;
        v25 = v38 == v52;
        v26 = v48;
        v7 = v49;
        v5 = __srca;
        v11 = v29;
        if (!v25)
        {
          *v6 = *v49;
          v7 = v49;
        }

        goto LABEL_15;
      }

      v7 = v52;
      if (v29 != v38)
      {
        *v6 = *v30;
      }

      v6 -= 16;
      v27 = v54 - 16;
      v11 = v30;
      v5 = __srca;
      v8 = v50;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v42 = v52;
    v44 = v54 / 16;
    v43 = __srca;
    if (v52 < __srca || v52 >= &__srca[16 * (v54 / 16)])
    {
      goto LABEL_46;
    }

LABEL_45:
    if (v42 == v43)
    {
      return 1;
    }

    goto LABEL_46;
  }

  sub_100240348(a1, (a2 - a1) / 16, a4);
  v11 = (v5 + 16 * v9);
  v51 = v6;
  for (i = v11; ; v11 = i)
  {
    if (v5 >= v11 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_29;
    }

    v13 = v8;
    v14 = *v7;
    v15 = *(v7 + 1);
    v16 = v7;
    v17 = *v5;
    v18 = *(v5 + 8);
    __src = v5;
    v62 = v14;
    v60 = v17;
    v61 = v15;
    v59 = v18;
    v19 = v14;
    swift_unknownObjectRetain();
    v20 = v17;
    swift_unknownObjectRetain();
    v21 = a5(&v62, &v61, &v60, &v59);
    if (v58)
    {
      break;
    }

    v22 = v21;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v23 = v13;
    if (v22)
    {
      v24 = v16;
      v7 = v16 + 16;
      v25 = v13 == v16;
      v5 = __src;
    }

    else
    {
      v24 = __src;
      v5 = (__src + 16);
      v25 = v13 == __src;
      v7 = v16;
    }

    v6 = v51;
    if (!v25)
    {
      *v23 = *v24;
    }

    v8 = (v23 + 1);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v43 = v5;
  v44 = &i[-v5] / 16;
  v42 = v13;
  if (v13 >= v5 && v13 < v5 + 16 * v44)
  {
    goto LABEL_45;
  }

LABEL_46:
  v41 = 16 * v44;
LABEL_47:
  memmove(v42, v43, v41);
  return 1;
}