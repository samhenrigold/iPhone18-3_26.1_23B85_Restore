id sub_1001E41C0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___continueButton] = 0;
  *&v1[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___spinnerButton] = 0;
  *&v1[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___cancelButton] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_horizontalLayouts] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_verticalLayouts] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_type] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EmergencyActionButtonsWaitingView();
  v3 = objc_msgSendSuper2(&v5, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001E4380();

  return v3;
}

void sub_1001E42B4()
{
  *(v0 + OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___continueButton) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___spinnerButton) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___cancelButton) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_horizontalLayouts) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_verticalLayouts) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001E4380()
{
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1002FED20;
  v2 = sub_1001E3BC0();
  v3 = [v2 leadingAnchor];

  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:20.0];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___cancelButton;
  v7 = [*&v0[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___cancelButton] trailingAnchor];
  v8 = [v0 centerXAnchor];
  v9 = sub_100009664();
  v11 = [v9 v10];

  *(v1 + 40) = v11;
  v12 = [*&v0[v6] bottomAnchor];
  v13 = [v0 bottomAnchor];
  v14 = sub_100009664();
  v16 = [v14 v15];

  *(v1 + 48) = v16;
  v17 = sub_1001E31FC();
  v18 = [v17 leadingAnchor];

  v19 = [v0 centerXAnchor];
  sub_1000080AC();
  v21 = [v18 v20];

  *(v1 + 56) = v21;
  v22 = OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___continueButton;
  v23 = [*&v0[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___continueButton] trailingAnchor];
  v24 = [v0 trailingAnchor];
  v25 = sub_100009664();
  v27 = [v25 v26];

  *(v1 + 64) = v27;
  v28 = [*&v0[v22] bottomAnchor];
  v29 = [v0 bottomAnchor];
  v30 = sub_100009664();
  v32 = [v30 v31];

  *(v1 + 72) = v32;
  v33 = [v0 heightAnchor];
  v34 = [*&v0[v22] heightAnchor];
  v35 = sub_100009664();
  v37 = [v35 v36];

  *(v1 + 80) = v37;
  *&v0[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_horizontalLayouts] = v1;

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1002FED20;
  v39 = [*&v0[v6] leadingAnchor];
  v40 = [v0 leadingAnchor];
  sub_1000080AC();
  v41 = sub_10000C4A0();
  v43 = [v41 v42];

  *(v38 + 32) = v43;
  v44 = [*&v0[v6] trailingAnchor];
  v45 = [v0 trailingAnchor];
  sub_1000080AC();
  v46 = sub_10000C4A0();
  v48 = [v46 v47];

  *(v38 + 40) = v48;
  v49 = [*&v0[v6] bottomAnchor];
  v50 = [v0 bottomAnchor];
  v51 = sub_10000C4A0();
  v53 = [v51 v52];

  *(v38 + 48) = v53;
  v54 = [*&v0[v22] leadingAnchor];
  v55 = [v0 leadingAnchor];
  sub_1000080AC();
  v56 = sub_10000C4A0();
  v58 = [v56 v57];

  *(v38 + 56) = v58;
  v59 = [*&v0[v22] trailingAnchor];
  v60 = [v0 trailingAnchor];
  sub_1000080AC();
  v61 = sub_10000C4A0();
  v63 = [v61 v62];

  *(v38 + 64) = v63;
  v64 = [*&v0[v22] bottomAnchor];
  v65 = [*&v0[v6] topAnchor];
  sub_1000080AC();
  v66 = sub_10000C4A0();
  v68 = [v66 v67];

  *(v38 + 72) = v68;
  v69 = [v0 topAnchor];
  v70 = [*&v0[v22] topAnchor];
  v71 = sub_10000C4A0();
  v73 = [v71 v72];

  *(v38 + 80) = v73;
  *&v0[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_verticalLayouts] = v38;

  v74 = [v0 traitCollection];
  [v74 isPreferredContentSizeCategoryAccessible];

  v75 = objc_opt_self();
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v75 activateConstraints:isa];
}

void sub_1001E4A00(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EmergencyActionButtonsWaitingView();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  [v3 isPreferredContentSizeCategoryAccessible];

  v4 = objc_opt_self();
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 deactivateConstraints:isa];

  v6 = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:v6];
}

void sub_1001E4BB0()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, &unk_1003B8820);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    v7 = String.init<A>(reflecting:)();
    v9 = sub_100008ADC(v7, v8, aBlock);

    *(v5 + 4) = v9;
    sub_100007F34();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100005B2C(v6);

    sub_10000558C();
  }

  v15 = *&v2[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView_type];
  if (v15 == 1)
  {
    v16 = [objc_opt_self() sharedInstance];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1001E5690;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100164920;
      aBlock[3] = &unk_10035F288;
      v19 = _Block_copy(aBlock);

      [v17 requestPasscodeUnlockWithCompletion:v19];
      _Block_release(v19);
LABEL_12:

      return;
    }

    __break(1u);
  }

  else if (!v15)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong requestContinue];
      swift_unknownObjectRelease();
    }

    v17 = sub_1001E31FC();
    [v17 setUserInteractionEnabled:0];
    goto LABEL_12;
  }

  aBlock[0] = v15;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void sub_1001E4E5C(char a1, uint64_t a2)
{
  if ((a1 & 1) != 0 && (swift_beginAccess(), (v2 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v3 = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong requestContinue];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    v3 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, v6, "EnhancedEmergency: passcode unlock failed or self doesn't exist", v7, 2u);
    }
  }
}

double sub_1001E4FE4()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, &unk_1003B8820);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136315138;
    v17 = v6;
    v7 = String.init<A>(reflecting:)();
    v9 = sub_100008ADC(v7, v8, &v17);

    *(v5 + 4) = v9;
    sub_100007F34();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_100005B2C(v6);

    sub_10000558C();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong requestCancel];
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001E51A0()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_100007F34();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_10000558C();
  }

  v10 = sub_1001E3860();
  [v1 addSubview:v10];

  v11 = objc_opt_self();
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002FB360;
  v13 = OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___spinnerButton;
  v14 = [*&v1[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___spinnerButton] topAnchor];
  v15 = sub_1001E31FC();
  v16 = [v15 topAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v12 + 32) = v17;
  v18 = [*&v1[v13] bottomAnchor];
  v19 = OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___continueButton;
  v20 = sub_100006E88([*&v1[OBJC_IVAR____TtC13InCallService33EmergencyActionButtonsWaitingView____lazy_storage___continueButton] bottomAnchor]);

  *(v12 + 40) = v20;
  v21 = [*&v1[v13] leadingAnchor];
  v22 = sub_100006E88([*&v1[v19] leadingAnchor]);

  *(v12 + 48) = v22;
  v23 = [*&v1[v13] trailingAnchor];
  v24 = sub_100006E88([*&v1[v19] trailingAnchor]);

  *(v12 + 56) = v24;
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];

  v26 = *&v1[v19];

  return [v26 setAlpha:0.0];
}

void sub_1001E549C()
{
  v0 = sub_1001E31FC();
  [v0 setAlpha:1.0];

  v1 = sub_1001E3860();
  [v1 removeFromSuperview];
}

id sub_1001E5544(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EmergencyActionButtonsWaitingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001E563C()
{
  result = qword_1003ADE30;
  if (!qword_1003ADE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADE30);
  }

  return result;
}

unint64_t sub_1001E5698()
{
  result = qword_1003ADE40;
  if (!qword_1003ADE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ADE40);
  }

  return result;
}

void sub_1001E56EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setAccessibilityLabel:v4];
}

double AudioCallServicesManager.__allocating_init(call:callCenter:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  result = 0.0;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return result;
}

void sub_1001E57B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      AudioCallServicesManager.acceptControlService.getter();
      sub_100009598();
      type metadata accessor for AcceptControlService();
      sub_1001E6CCC(&unk_1003AD930, type metadata accessor for AcceptControlService, &protocol conformance descriptor for AcceptControlService);
      sub_100008680();
      v10 = type metadata accessor for AudioCallAcceptControlViewModel();
      sub_1000080B8(v10);
      sub_10000A4C0();
      AudioCallAcceptControlViewModel.init(service:)();
      sub_100026F9C();
      v11 = &unk_1003AE0A0;
      v12 = &type metadata accessor for AudioCallAcceptControlViewModel;
      v13 = &protocol conformance descriptor for AudioCallAcceptControlViewModel;
      goto LABEL_16;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v5 = type metadata accessor for Logger();
      sub_100008A14(v5, &unk_1003B8820);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_7;
      }

      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      v9 = "StackedControlButtonViewModel PHBottomBarActionType is not implemented %ld";
      goto LABEL_6;
    case 7:
      AudioCallServicesManager.declineControlService.getter();
      sub_100009598();
      type metadata accessor for DeclineControlService();
      sub_1001E6CCC(&qword_1003AD928, type metadata accessor for DeclineControlService, &protocol conformance descriptor for DeclineControlService);
      sub_100008680();
      v17 = type metadata accessor for AudioCallDeclineControlViewModel();
      sub_1000080B8(v17);
      sub_10000A4C0();
      AudioCallDeclineControlViewModel.init(service:)();
      sub_100026F9C();
      v11 = &unk_1003AE0B8;
      v12 = &type metadata accessor for AudioCallDeclineControlViewModel;
      v13 = &protocol conformance descriptor for AudioCallDeclineControlViewModel;
      goto LABEL_16;
    case 9:
      AudioCallServicesManager.messageControlService.getter();
      sub_100009598();
      type metadata accessor for MessageControlService();
      sub_1001E6CCC(&qword_1003AE090, type metadata accessor for MessageControlService, &protocol conformance descriptor for MessageControlService);
      sub_100008680();
      v16 = type metadata accessor for AudioCallMessageControlViewModel();
      sub_1000080B8(v16);
      sub_10000A4C0();
      AudioCallMessageControlViewModel.init(service:)();
      sub_100026F9C();
      v11 = &unk_1003AE098;
      v12 = &type metadata accessor for AudioCallMessageControlViewModel;
      v13 = &protocol conformance descriptor for AudioCallMessageControlViewModel;
      goto LABEL_16;
    case 24:
      AudioCallServicesManager.voicemailControlService.getter();
      sub_100009598();
      type metadata accessor for VoicemailControlService();
      sub_1001E6CCC(&qword_1003AE0A8, type metadata accessor for VoicemailControlService, &protocol conformance descriptor for VoicemailControlService);
      sub_100008680();
      v14 = type metadata accessor for AudioCallVoicemailControlViewModel();
      sub_1000080B8(v14);
      sub_10000A4C0();
      AudioCallVoicemailControlViewModel.init(service:)();
      sub_100026F9C();
      v11 = &unk_1003AE0B0;
      v12 = &type metadata accessor for AudioCallVoicemailControlViewModel;
      v13 = &protocol conformance descriptor for AudioCallVoicemailControlViewModel;
LABEL_16:
      *(a2 + 32) = sub_1001E6CCC(v11, v12, v13);
      *a2 = v2;
      return;
    default:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v15 = type metadata accessor for Logger();
      sub_100008A14(v15, &unk_1003B8820);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_7;
      }

      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      v9 = "unknown PHBottomBarActionType %ld";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 0xCu);

LABEL_7:

      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
  }
}

void sub_1001E5BA0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a1)
  {
    case 0:
      AudioCallServicesManager.muteControlService.getter();
      sub_100009598();
      v29 = type metadata accessor for MuteControlService();
      sub_1001E6CCC(&qword_1003AE080, type metadata accessor for MuteControlService, &protocol conformance descriptor for MuteControlService);
      sub_100006EA8();
      v26 = type metadata accessor for AudioCallMuteControlViewModel();
      sub_1000080B8(v26);
      sub_1000071A8();
      AudioCallMuteControlViewModel.init(service:)();
      sub_100026F9C();
      v8 = &unk_1003AE088;
      v9 = &type metadata accessor for AudioCallMuteControlViewModel;
      v10 = &protocol conformance descriptor for AudioCallMuteControlViewModel;
      goto LABEL_20;
    case 1:
      AudioCallServicesManager.keypadControlService.getter();
      sub_100009598();
      v29 = type metadata accessor for KeypadControlService();
      sub_1001E6CCC(&qword_1003AE040, type metadata accessor for KeypadControlService, &protocol conformance descriptor for KeypadControlService);
      sub_100006EA8();
      v11 = type metadata accessor for AudioCallKeypadControlViewModel();
      swift_allocObject();
      sub_1000071A8();
      v3 = AudioCallKeypadControlViewModel.init(service:)();
      sub_1001E6BF4(a2, v28);
      v12 = v29;
      if (v29)
      {
        v13 = v31;
        v14 = sub_100008878(v28, v29);
        *(&v33 + 1) = v12;
        v34 = v13;
        v15 = sub_10015DFA8(&v32);
        (*(*(v12 - 8) + 16))(v15, v14, v12);
        sub_100005B2C(v28);
      }

      else
      {
        sub_1001E6C64(v28);
        v32 = 0u;
        v33 = 0u;
        v34 = 0;
      }

      AudioCallKeypadControlViewModel.presentationDelegate.setter();
      *(a3 + 24) = v11;
      v8 = &unk_1003AE048;
      v9 = &type metadata accessor for AudioCallKeypadControlViewModel;
      v10 = &protocol conformance descriptor for AudioCallKeypadControlViewModel;
      goto LABEL_20;
    case 2:
    case 3:
      AudioCallServicesManager.audioControlService.getter();
      sub_100009598();
      v29 = type metadata accessor for AudioRouteService();
      v30 = &protocol witness table for AudioRouteService;
      v28[0] = v3;
      v7 = type metadata accessor for AudioCallAudioControlViewModel();
      sub_1000080B8(v7);
      sub_1000071A8();
      AudioCallAudioControlViewModel.init(audioRouteService:)();
      sub_100026F9C();
      v8 = &unk_1003AE038;
      v9 = &type metadata accessor for AudioCallAudioControlViewModel;
      v10 = &protocol conformance descriptor for AudioCallAudioControlViewModel;
      goto LABEL_20;
    case 4:
      AudioCallServicesManager.addCallControlService.getter();
      sub_100009598();
      v29 = type metadata accessor for AddCallControlService();
      sub_1001E6CCC(&qword_1003AE060, type metadata accessor for AddCallControlService, &protocol conformance descriptor for AddCallControlService);
      sub_100006EA8();
      v21 = type metadata accessor for AudioCallAddCallControlViewModel();
      swift_allocObject();
      sub_1000071A8();
      v3 = AudioCallAddCallControlViewModel.init(service:)();
      sub_1001E6BF4(a2, v28);
      v22 = v29;
      if (v29)
      {
        v23 = v30;
        v24 = sub_100008878(v28, v29);
        *(&v33 + 1) = v22;
        v34 = v23;
        v25 = sub_10015DFA8(&v32);
        (*(*(v22 - 8) + 16))(v25, v24, v22);
        sub_100005B2C(v28);
      }

      else
      {
        sub_1001E6C64(v28);
        v32 = 0u;
        v33 = 0u;
        v34 = 0;
      }

      AudioCallAddCallControlViewModel.presentationDelegate.setter();
      *(a3 + 24) = v21;
      v8 = &unk_1003AE068;
      v9 = &type metadata accessor for AudioCallAddCallControlViewModel;
      v10 = &protocol conformance descriptor for AudioCallAddCallControlViewModel;
      goto LABEL_20;
    case 5:
      AudioCallServicesManager.faceTimeControlService.getter();
      sub_100009598();
      v29 = type metadata accessor for FaceTimeControlService();
      sub_1001E6CCC(&qword_1003AE050, type metadata accessor for FaceTimeControlService, &protocol conformance descriptor for FaceTimeControlService);
      sub_100006EA8();
      v27 = type metadata accessor for AudioCallFaceTimeControlViewModel();
      sub_1000080B8(v27);
      sub_1000071A8();
      AudioCallFaceTimeControlViewModel.init(service:)();
      sub_100026F9C();
      v8 = &unk_1003AE058;
      v9 = &type metadata accessor for AudioCallFaceTimeControlViewModel;
      v10 = &protocol conformance descriptor for AudioCallFaceTimeControlViewModel;
      goto LABEL_20;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
      goto LABEL_2;
    case 15:
      AudioCallServicesManager.endControlService.getter();
      sub_100009598();
      v29 = type metadata accessor for EndControlService();
      sub_1001E6CCC(&qword_1003AE070, type metadata accessor for EndControlService, &protocol conformance descriptor for EndControlService);
      sub_100006EA8();
      v16 = type metadata accessor for AudioCallEndControlViewModel();
      sub_1000080B8(v16);
      sub_1000071A8();
      AudioCallEndControlViewModel.init(service:)();
      sub_100026F9C();
      v8 = &unk_1003AE078;
      v9 = &type metadata accessor for AudioCallEndControlViewModel;
      v10 = &protocol conformance descriptor for AudioCallEndControlViewModel;
LABEL_20:
      *(a3 + 32) = sub_1001E6CCC(v8, v9, v10);
      *a3 = v3;
      break;
    default:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v17 = type metadata accessor for Logger();
      sub_100008A14(v17, &unk_1003B8820);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        *(v20 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v18, v19, "unknown PHAudioCallControlType %lu", v20, 0xCu);
      }

LABEL_2:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      break;
  }
}

void *AudioCallServicesManager.presentingViewController.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *AudioCallServicesManager.muteControlService.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    type metadata accessor for MuteControlService();
    swift_allocObject();
    v1 = MuteControlService.init(call:)(v3);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t AudioCallServicesManager.muteControlService.modify(uint64_t a1)
{
  sub_1000069FC(a1);
  *v1 = AudioCallServicesManager.muteControlService.getter();
  return sub_100008040();
}

uint64_t AudioCallServicesManager.endControlService.getter()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = *(v0 + 24);
    type metadata accessor for EndControlService();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v0 + 48) = v1;
    v3 = v2;
  }

  return v1;
}

uint64_t AudioCallServicesManager.endControlService.modify(uint64_t a1)
{
  sub_1000069FC(a1);
  *v1 = AudioCallServicesManager.endControlService.getter();
  return sub_100008040();
}

void *AudioCallServicesManager.addCallControlService.getter()
{
  if (v0[7])
  {
    v1 = v0[7];
  }

  else
  {
    v2 = v0;
    v3 = v0[2];
    v4 = v0[3];
    type metadata accessor for AddCallControlService();
    swift_allocObject();
    v1 = AddCallControlService.init(call:callCenter:)(v3, v4);
    v2[7] = v1;
  }

  return v1;
}

uint64_t AudioCallServicesManager.addCallControlService.modify(uint64_t a1)
{
  sub_1000069FC(a1);
  *v1 = AudioCallServicesManager.addCallControlService.getter();
  return sub_100008040();
}

void *AudioCallServicesManager.faceTimeControlService.getter()
{
  if (v0[8])
  {
    v1 = v0[8];
  }

  else
  {
    v2 = v0;
    v3 = v0[2];
    v4 = v0[3];
    type metadata accessor for FaceTimeControlService();
    swift_allocObject();
    v1 = FaceTimeControlService.init(call:callCenter:)(v3, v4);
    v2[8] = v1;
  }

  return v1;
}

uint64_t AudioCallServicesManager.faceTimeControlService.modify(uint64_t a1)
{
  sub_1000069FC(a1);
  *v1 = AudioCallServicesManager.faceTimeControlService.getter();
  return sub_100008040();
}

uint64_t AudioCallServicesManager.keypadControlService.getter()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    v4 = type metadata accessor for KeypadControlService();
    sub_100007324(v4);
    v1 = KeypadControlService.init(call:)(v3);
    *(v2 + 72) = v1;
  }

  return v1;
}

uint64_t AudioCallServicesManager.keypadControlService.modify(uint64_t a1)
{
  sub_1000069FC(a1);
  *v1 = AudioCallServicesManager.keypadControlService.getter();
  return sub_100008040();
}

id AudioCallServicesManager.audioControlService.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = v0;
    type metadata accessor for AudioRouteService();
    type metadata accessor for CallCenterFacade();
    static CallCenterFacade.shared.getter();
    v4 = AudioRouteService.__allocating_init(callCenter:)();
    v5 = *(v0 + 80);
    *(v3 + 80) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t AudioCallServicesManager.audioControlService.setter(uint64_t a1)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;
  return _objc_release_x1(a1, v2);
}

uint64_t AudioCallServicesManager.audioControlService.modify(uint64_t a1)
{
  sub_1000069FC(a1);
  *v1 = AudioCallServicesManager.audioControlService.getter();
  return sub_100008040();
}

void sub_1001E668C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    AudioCallServicesManager.audioControlService.setter(v3);
  }

  else
  {
    AudioCallServicesManager.audioControlService.setter(v2);
  }
}

uint64_t AudioCallServicesManager.messageControlService.getter()
{
  if (v0[11])
  {
    v1 = v0[11];
  }

  else
  {
    v2 = v0;
    v3 = v0[2];
    v4 = v0[3];
    type metadata accessor for MessageControlService();
    swift_allocObject();
    v5 = v3;
    v6 = v4;
    MessageControlService.init(call:callCenter:)();
    v1 = v7;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[11] = v1;
  }

  return v1;
}

uint64_t AudioCallServicesManager.messageControlService.modify(uint64_t a1)
{
  sub_1000069FC(a1);
  *v1 = AudioCallServicesManager.messageControlService.getter();
  return sub_100008040();
}

uint64_t AudioCallServicesManager.acceptControlService.getter()
{
  if (v0[12])
  {
    v1 = v0[12];
  }

  else
  {
    v2 = v0[2];
    v3 = v0[3];
    v4 = type metadata accessor for AcceptControlService();
    v1 = sub_100007324(v4);
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    v0[12] = v1;
    v5 = v2;
    v6 = v3;
  }

  return v1;
}

uint64_t AudioCallServicesManager.acceptControlService.modify(uint64_t a1)
{
  sub_1000069FC(a1);
  *v1 = AudioCallServicesManager.acceptControlService.getter();
  return sub_100008040();
}

uint64_t AudioCallServicesManager.declineControlService.getter()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 24);
    v4 = type metadata accessor for DeclineControlService();
    sub_100007324(v4);
    v1 = DeclineControlService.init(callCenter:)(v3);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t AudioCallServicesManager.declineControlService.modify(uint64_t a1)
{
  sub_1000069FC(a1);
  *v1 = AudioCallServicesManager.declineControlService.getter();
  return sub_100008040();
}

uint64_t AudioCallServicesManager.voicemailControlService.getter()
{
  if (v0[14])
  {
    v1 = v0[14];
  }

  else
  {
    v2 = v0[2];
    v3 = v0[3];
    v4 = type metadata accessor for VoicemailControlService();
    v1 = sub_100007324(v4);
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    v0[14] = v1;
    v5 = v2;
    v6 = v3;
  }

  return v1;
}

uint64_t AudioCallServicesManager.voicemailControlService.modify(uint64_t a1)
{
  sub_1000069FC(a1);
  *v1 = AudioCallServicesManager.voicemailControlService.getter();
  return sub_100008040();
}

void sub_1001E6A84(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

uint64_t AudioCallServicesManager.init(call:callCenter:presentingViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

id *AudioCallServicesManager.deinit()
{

  return v0;
}

uint64_t AudioCallServicesManager.__deallocating_deinit()
{
  AudioCallServicesManager.deinit();

  return _swift_deallocClassInstance(v0, 120, 7);
}

uint64_t sub_1001E6BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AD8F8, &qword_1002FE7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E6C64(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AD8F8, &qword_1002FE7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001E6CCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001E6D48()
{
  v1 = v0;
  v2 = [v0 callCenter];
  v3 = [v2 currentCallGroups];

  sub_1000064BC(0, &qword_1003AAF18, TUCallGroup_ptr);
  sub_100006628();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_100017230(v4);
  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    v9 = [v7 status];

    v6 = (v6 + 1);
    if (v9 == 1)
    {

      v10 = [v0 callCenter];
      v11 = [v10 currentCallGroups];

      sub_100006628();
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = sub_100017230(v12);
      v6 = 0;
      while (v13 != v6)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v14 = *(v12 + 8 * v6 + 32);
        }

        v15 = v14;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_56;
        }

        v16 = [v14 status];

        v6 = (v6 + 1);
        if (v16 == 4)
        {
          break;
        }
      }

      v1 = v0;
      break;
    }
  }

  v17 = [v1 callCenter];
  v18 = [v17 currentCallGroups];

  sub_100006628();
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_100017230(v19);
  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (v20 == v21)
    {

      v27 = [v0 callCenter];
      v19 = [v27 callWithStatus:2];

      v28 = [v0 callCenter];
      v29 = [v28 callWithStatus:1];

      v30 = [v0 callCenter];
      v31 = [v30 callWithStatus:3];

      if (v29)
      {
        v20 = v29;
        if (v19)
        {
          if (v31)
          {
LABEL_38:

            goto LABEL_46;
          }

LABEL_41:
          v21 = v29;
          v32 = [v0 callCenter];
          v33 = [v32 canGroupCall:v20 withCall:v19];

          if ((v33 & 1) == 0)
          {

            return;
          }

          if (([v20 isRTT] & 1) == 0)
          {
            v6 = &selRef_isEqualToCall_;
            if (([v20 isTTY] & 1) == 0 && (objc_msgSend(v19, "isRTT") & 1) == 0)
            {
              goto LABEL_53;
            }
          }

LABEL_46:
          return;
        }
      }

      else if (v19)
      {
        v20 = v19;
        if (v31)
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }

      return;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      sub_100006628();
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v6 = v23;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (sub_100006CB0() == 1 || sub_100006CB0() == 2 || sub_100006CB0() == 3)
    {

      v24 = 1;
    }

    else
    {
      v26 = sub_100006CB0();

      v24 = v26 == 4;
    }

    ++v21;
    v25 = __OFADD__(v22, v24);
    v22 += v24;
    if (v25)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  [v19 v6[164]];
}

id sub_1001E721C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {

    return [v0 updateLayoutSupplementalButtons];
  }

  else
  {
    sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    v9 = static OS_dispatch_queue.main.getter();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1001E7594;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002E570;
    aBlock[3] = &unk_10035F2D8;
    v11 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100158FC0();
    sub_10014EA98(&unk_1003AAAC0, &unk_1002FB790);
    sub_100032638();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);

    v12 = sub_100006628();
    v13(v12);
    return (*(v4 + 8))(v7, v2);
  }
}

void sub_1001E74F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong updateLayoutSupplementalButtons];
  }
}

id sub_1001E759C()
{
  v1 = OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews;
  type metadata accessor for UUID();
  sub_1001E8C28();
  *&v0[v1] = Dictionary.init(dictionaryLiteral:)();
  v0[OBJC_IVAR___ICSCallAnalyticsLogger_answeredBannerAnalyticsView] = 2;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for CallAnalyticsLogger();
  v2 = objc_msgSendSuper2(&v14, "init");
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultCenter];
  sub_1000071B4(v5, v6, v7, v8, TUCallCenterCallStatusChangedNotification);

  v9 = [v3 defaultCenter];
  sub_1000071B4(v9, v10, v11, v12, TUCallCenterVideoCallStatusChangedNotification);

  return v4;
}

void sub_1001E76E0()
{
  sub_100005D28();
  v2 = v0;
  v4 = v3;
  type metadata accessor for UUID();
  sub_10000C454();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100005BD0();
  v10 = v9 - v8;
  if (v4)
  {
    v11 = v4;
    v12 = [v11 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews;
    sub_1000080D4(v2 + OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews);
    v14 = *(v2 + v13);

    v15 = sub_10000A9DC(v10, v14);

    v16 = *(v6 + 8);
    v16(v10, v1);
    if ((v15 & 0xFF00) == 0x200)
    {
      v17 = v11;
      if (sub_1001F05BC(v17) != 4)
      {
        v26 = v16;
        if (qword_1003A9F98 != -1)
        {
          sub_1000076C0(&qword_1003A9F98);
        }

        v25 = qword_1003B8928;
        sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1002FAB60;
        v19 = [v17 uniqueProxyIdentifierUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = UUID.uuidString.getter();
        v22 = v21;
        v26(v10, v1);
        *(v18 + 56) = &type metadata for String;
        *(v18 + 64) = sub_10002BBB4();
        *(v18 + 32) = v20;
        *(v18 + 40) = v22;
        v23 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("ICSCallAnalytics: creating a new incoming call analytics view for call: %@", 74, 2, &_mh_execute_header, v25, v23, v18);

        v24 = [v17 uniqueProxyIdentifierUUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100025B68(v2 + v13);
        swift_isUniquelyReferenced_nonNull_native();
        v27 = *(v2 + v13);
        sub_1002315E8();
        *(v2 + v13) = v27;
        v26(v10, v1);
        swift_endAccess();
      }
    }
  }

  sub_100007B28();
}

uint64_t sub_1001E7A50(char a1)
{
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0(&qword_1003A9F98);
  }

  v3 = qword_1003B8928;
  v4 = static os_log_type_t.default.getter();
  result = os_log(_:dso:log:type:_:)("ICSCallAnalytics: creating a new answered banner analytics view", 63, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR___ICSCallAnalyticsLogger_answeredBannerAnalyticsView) = a1 & 1;
  return result;
}

void sub_1001E7B34()
{
  sub_100005D28();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  type metadata accessor for UUID();
  sub_10000C454();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100005BD0();
  v15 = v14 - v13;
  v16 = sub_1001F0788(v6);
  sub_1001B7320(v4, v9);
  if (sub_100006AC0(v9, 1, v1) == 1)
  {
    sub_1000306A4(v9, &qword_1003AAB40, &unk_1002FAAB0);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v1);
    v17 = OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews;
    sub_1000080D4(v2 + OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews);
    v18 = *(v2 + v17);

    v19 = sub_10000A9DC(v15, v18);
    v27 = v20;

    if ((v19 & 0xFF00) != 0x200)
    {
      sub_100025B68(v2 + v17);
      swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v2 + v17);
      sub_1002315E8();
      *(v2 + v17) = v28;
      swift_endAccess();
      v25 = sub_100006A08();
      v26(v25);
      goto LABEL_8;
    }

    v21 = sub_100006A08();
    v22(v21);
  }

  v23 = OBJC_IVAR___ICSCallAnalyticsLogger_answeredBannerAnalyticsView;
  v24 = *(v2 + OBJC_IVAR___ICSCallAnalyticsLogger_answeredBannerAnalyticsView);
  if (v24 != 2)
  {
    sub_1001E8864(v24 & 1, v16);
    *(v2 + v23) = 2;
  }

LABEL_8:
  sub_100007B28();
}

void sub_1001E7E78()
{
  sub_100005D28();
  v2 = v1;
  v3 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000A4CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  sub_100005BD0();
  v8 = v7 - v6;
  sub_1001B7320(v2, v0);
  if (sub_100006AC0(v0, 1, v4) == 1)
  {
    sub_1000306A4(v0, &qword_1003AAB40, &unk_1002FAAB0);
  }

  else
  {
    (*(v5 + 32))(v8, v0, v4);
    v9 = OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews;
    sub_1000080D4(v0 + OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews);
    v10 = *(v0 + v9);

    v11 = sub_10000A9DC(v8, v10);

    if ((v11 & 0xFF00) != 0x200)
    {
      sub_100025B68(v0 + v9);
      swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v0 + v9);
      sub_1002315E8();
      *(v0 + v9) = v12;
      swift_endAccess();
    }

    (*(v5 + 8))(v8, v4);
  }

  sub_100007B28();
}

void sub_1001E815C()
{
  sub_100005D28();
  v2 = v0;
  v4 = v3;
  v5 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  __chkstk_darwin(v5 - 8);
  sub_10000A4CC();
  sub_10000C454();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005BD0();
  v11 = v10 - v9;
  sub_1001B7320(v4, v0);
  if (sub_100006AC0(v0, 1, v1) == 1)
  {
    sub_1000306A4(v0, &qword_1003AAB40, &unk_1002FAAB0);
  }

  else
  {
    (*(v7 + 32))(v11, v0, v1);
    v12 = OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews;
    sub_1000080D4(v0 + OBJC_IVAR___ICSCallAnalyticsLogger_incomingCallAnalyticsViews);
    v13 = *(v0 + v12);

    v14 = sub_10000A9DC(v11, v13);

    if ((v14 & 0xFF00) != 0x200)
    {
      sub_100025B68(v2 + v12);
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v2 + v12);
      sub_1002315E8();
      *(v2 + v12) = v17;
      swift_endAccess();
    }

    v15 = sub_100006A08();
    v16(v15);
  }

  sub_100007B28();
}

uint64_t sub_1001E842C()
{
  v1 = OBJC_IVAR___ICSCallAnalyticsLogger_answeredBannerAnalyticsView;
  v2 = *(v0 + OBJC_IVAR___ICSCallAnalyticsLogger_answeredBannerAnalyticsView);
  if (v2 != 2)
  {
    result = sub_1001E8864(v2 & 1, 0xAu);
    *(v0 + v1) = 2;
  }

  return result;
}

uint64_t sub_1001E85FC(unsigned int a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 a5)
{
  v6 = a4;
  v9 = a1;
  v10 = (a1 >> 8) & 1;
  v20 = (a4 >> 8) & 1;
  sub_10014EA98(&qword_1003AE108, &qword_1002FEEE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FEEB0;
  sub_100009670();
  *(v12 + 32) = 0xD000000000000015;
  *(v12 + 40) = v13;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v6];
  strcpy((inited + 56), "BannersEnabled");
  *(inited + 71) = -18;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:v10];
  *(inited + 80) = 0x657079546C6C6143;
  *(inited + 88) = 0xE800000000000000;
  [objc_allocWithZone(NSNumber) initWithInteger:v9];
  sub_100009670();
  *(inited + 96) = v14;
  *(inited + 104) = 0xD00000000000001DLL;
  *(inited + 112) = v15;
  [objc_allocWithZone(NSNumber) initWithInteger:a3];
  sub_100009670();
  *(inited + 120) = v16;
  *(inited + 128) = 0xD00000000000001FLL;
  *(inited + 136) = v17;
  *(inited + 144) = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  *(inited + 152) = 0x6974756C6F736552;
  *(inited + 160) = 0xEA00000000006E6FLL;
  *(inited + 168) = [objc_allocWithZone(NSNumber) initWithInteger:a5];
  strcpy((inited + 176), "RingerWasMuted");
  *(inited + 191) = -18;
  *(inited + 192) = [objc_allocWithZone(NSNumber) initWithBool:v20];
  sub_1000064BC(0, &qword_1003AB7A0, NSObject_ptr);
  v18 = Dictionary.init(dictionaryLiteral:)();
  sub_1001E898C(0xD000000000000025, 0x80000001002AB810, v18);
}

uint64_t sub_1001E8864(char a1, unsigned __int8 a2)
{
  sub_10014EA98(&qword_1003AE108, &qword_1002FEEE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FB510;
  sub_100009670();
  *(v5 + 32) = 0xD000000000000015;
  *(v5 + 40) = v6;
  [objc_allocWithZone(NSNumber) initWithInteger:a2];
  sub_100009670();
  *(inited + 48) = v7;
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = v8;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  sub_1000064BC(0, &qword_1003AB7A0, NSObject_ptr);
  v9 = Dictionary.init(dictionaryLiteral:)();
  sub_1001E898C(0xD000000000000026, 0x80000001002AB7A0, v9);
}

void sub_1001E898C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0(&qword_1003A9F98);
  }

  v6 = qword_1003B8928;
  sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002FB510;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10002BBB4();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 96) = sub_10014EA98(&qword_1003AE0F8, &qword_1002FEEE0);
  *(v7 + 104) = sub_1001E8BC4();
  *(v7 + 72) = a3;

  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("ICSCallAnalytics: logging core analytics view %@ with dictionary %@", 67, 2, &_mh_execute_header, v6, v8, v7);

  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v12[4] = sub_1001A6000;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100206510;
  v12[3] = &unk_10035F328;
  v11 = _Block_copy(v12);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

id sub_1001E8B5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallAnalyticsLogger();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001E8BC4()
{
  result = qword_1003AE100;
  if (!qword_1003AE100)
  {
    sub_100155B7C(&qword_1003AE0F8, &qword_1002FEEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE100);
  }

  return result;
}

unint64_t sub_1001E8C28()
{
  result = qword_1003AB0B0;
  if (!qword_1003AB0B0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AB0B0);
  }

  return result;
}

id sub_1001E8CC4()
{
  if (![v0 isViewLoaded])
  {
    return 0;
  }

  v1 = sub_1001E8D24();
  v2 = [v1 contentView];

  return v2;
}

id sub_1001E8D24()
{
  v1 = OBJC_IVAR___PHAudioCallBackgroundGradientViewController____lazy_storage___backgroundEffectView;
  v2 = *(v0 + OBJC_IVAR___PHAudioCallBackgroundGradientViewController____lazy_storage___backgroundEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PHAudioCallBackgroundGradientViewController____lazy_storage___backgroundEffectView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIVisualEffectView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

Swift::Void __swiftcall AudioCallBackgroundGradientViewController.viewDidLoad()()
{
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, "viewDidLoad");
  v1 = [objc_opt_self() effectWithBlurRadius:100.0];
  static CallsColorMatrix.background.getter();
  v2 = static ColorMatrixConvertion.colorEffect(_:)();
  v3 = v2;
  if (v1)
  {
    if (v2)
    {
      v4 = v1;
      v5 = v3;
      v6 = sub_1001E8D24();
      sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1002F96C0;
      *(v7 + 32) = v4;
      *(v7 + 40) = v5;
      sub_1000064BC(0, &unk_1003AAFA0, UIVisualEffect_ptr);
      v8 = v4;
      v9 = v5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v6 setBackgroundEffects:isa];
    }
  }

  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_1001E8D24();
  [v12 addSubview:v13];

  v14 = OBJC_IVAR___PHAudioCallBackgroundGradientViewController____lazy_storage___backgroundEffectView;
  [*&v0[OBJC_IVAR___PHAudioCallBackgroundGradientViewController____lazy_storage___backgroundEffectView] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002FB360;
  v16 = [*&v0[v14] leadingAnchor];
  v17 = sub_1000078F4();
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = sub_10000C4AC();
  *(v15 + 32) = v20;
  v21 = [*&v0[v14] trailingAnchor];
  v22 = sub_1000078F4();
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = sub_10000C4AC();
  *(v15 + 40) = v25;
  v26 = [*&v0[v14] topAnchor];
  v27 = sub_1000078F4();
  if (!v27)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = sub_10000C4AC();
  *(v15 + 48) = v30;
  v31 = [*&v0[v14] bottomAnchor];
  v32 = sub_1000078F4();
  if (v32)
  {
    v33 = v32;
    v34 = objc_opt_self();
    v35 = [v33 bottomAnchor];

    v36 = [v13 constraintEqualToAnchor:v35];
    *(v15 + 56) = v36;
    sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v34 activateConstraints:v37];

    return;
  }

LABEL_14:
  __break(1u);
}

id AudioCallBackgroundGradientViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PHAudioCallBackgroundGradientViewController____lazy_storage___backgroundEffectView] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id AudioCallBackgroundGradientViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id AudioCallBackgroundGradientViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___PHAudioCallBackgroundGradientViewController____lazy_storage___backgroundEffectView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1001E93FC()
{
  v1 = v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  sub_1001E945C((v1 + 8), v0, &v3);
  os_unfair_lock_unlock(v1);
  return v3;
}

uint64_t sub_1001E945C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (v5)
  {
    v6 = a1[1];
    *a3 = v5;
    a3[1] = v6;
  }

  else
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "VoicemailAccountManagerDecorator: Creating VMD", v10, 2u);
    }

    v11 = *(a2 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_vmdFactory);
    v12 = sub_1001E95EC();
    v13 = v11();
    v15 = v14;

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "VoicemailAccountManagerDecorator: Created VMD", v18, 2u);
    }

    *a1 = v13;
    a1[1] = v15;
    *a3 = v13;
    a3[1] = v15;
  }

  return swift_unknownObjectRetain();
}

id sub_1001E95EC()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_allocWithZone(type metadata accessor for VoicemailDelegateDecorator(0));
  v3 = v0;
  v4 = sub_100159030(&unk_1002FEFA0, v1);
  v5 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables];
  os_unfair_lock_lock(&v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables]);
  sub_1001E9ABC(v5 + 1, v4);
  os_unfair_lock_unlock(v5);
  return v4;
}

uint64_t sub_1001E96A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_10014EA98(&qword_1003AC878, &qword_1002FD200);
  v3[6] = swift_task_alloc();
  v3[7] = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001E978C, 0, 0);
}

uint64_t sub_1001E978C()
{
  v21 = v0;
  v1 = v0[2];
  sub_1001B7320(v0[3], v0[9]);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = v0[8];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    sub_1001B7320(v6, v7);
    v12 = v8;
    v13 = String.init<A>(describing:)();
    v15 = v14;
    sub_10000830C(v6, &qword_1003AAB40, &unk_1002FAAB0);
    v16 = sub_100008ADC(v13, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "VoicemailAccountManagerDecorator: processing update %@, uuid: %s", v9, 0x16u);
    sub_10000830C(v10, &qword_1003B0230, &qword_1002FC550);
    sub_1000053DC();
    sub_100005B2C(v11);
    sub_100005340();
  }

  else
  {

    sub_10000830C(v6, &qword_1003AAB40, &unk_1002FAAB0);
  }

  v0[10] = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100153804();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001E99CC, v18, v17);
}

uint64_t sub_1001E99F8()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 48);
  *v1 = v3;
  sub_1001B7320(v2, v1 + v4);
  v5 = v3;
  PassthroughSubject.send(_:)();
  sub_10000830C(v1, &qword_1003AC878, &qword_1002FD200);

  v6 = v0[1];

  return v6();
}

_OWORD *sub_1001E9ABC(uint64_t *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v9 = a2;
  v4 = a2;
  sub_10021689C(v5);
  v6 = *(*a1 + 16);
  sub_10021696C(v6);
  v7 = *a1;
  *(v7 + 16) = v6 + 1;
  result = sub_100034DBC(&v9, (v7 + 32 * v6 + 32));
  *a1 = v7;
  return result;
}

void sub_1001E9BB0()
{
  sub_100005984();
  sub_1001E93FC();
  v3 = sub_10000733C();
  (*(v0 + 40))(v3, v0);
  sub_1000071D4();
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8850);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    swift_slowAlloc();
    v24 = sub_1000089F8();
    *v2 = 136315394;
    sub_1001E93FC();
    v8 = sub_10014EA98(&qword_1003AE1A0, &unk_1002FF600);
    v10 = sub_100005480(v8, v9);
    v18 = sub_100005498(v10, v11, v12, v13, v14, v15, v16, v17);

    *(v2 + 4) = v18;
    *(v2 + 12) = 1024;
    *(v2 + 14) = v0 & 1;
    sub_100026FA8();
    _os_log_impl(v19, v20, v21, v22, v23, 0x12u);
    sub_100005B2C(v24);
    sub_1000053DC();
    sub_100005340();
  }

  sub_100005C78();
}

void sub_1001E9D44(const char *a1, ...)
{
  sub_100005984();
  v4 = v3;
  sub_1001E93FC();
  v5 = sub_10000733C();
  (*(v1 + 32))(v5, v1);
  sub_1000071D4();
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v6 = type metadata accessor for Logger();
  sub_100008A14(v6, &unk_1003B8850);
  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315394;
    sub_1001E93FC();
    v11 = sub_10014EA98(&qword_1003AE1A0, &unk_1002FF600);
    v13 = sub_100005480(v11, v12);
    v21 = sub_100005498(v13, v14, v15, v16, v17, v18, v19, v20);

    *(v10 + 4) = v21;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, v4, v10, 0x12u);
    sub_100005B2C(v22);

    sub_1000053DC();
  }

  sub_100005C78();
}

void sub_1001E9EF0()
{
  sub_100005984();
  sub_1001E93FC();
  v3 = sub_10000733C();
  (*(v0 + 56))(v3, v0);
  sub_1000071D4();
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8850);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    swift_slowAlloc();
    v23 = sub_1000089F8();
    *v2 = 136315394;
    sub_1001E93FC();
    v8 = sub_10014EA98(&qword_1003AE1A0, &unk_1002FF600);
    v10 = sub_100005480(v8, v9);
    sub_100005498(v10, v11, v12, v13, v14, v15, v16, v17);

    sub_1000361FC();
    sub_100026FA8();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    sub_100005B2C(v23);
    sub_1000053DC();
    sub_100005340();
  }

  sub_100005C78();
}

void sub_1001EA06C()
{
  sub_100005984();
  sub_1001E93FC();
  v3 = sub_10000733C();
  v4 = (*(v0 + 64))(v3, v0);
  swift_unknownObjectRelease();
  sub_100017230(v4);

  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v5 = type metadata accessor for Logger();
  sub_100008A14(v5, &unk_1003B8850);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    swift_slowAlloc();
    v24 = sub_1000089F8();
    *v2 = 136315394;
    sub_1001E93FC();
    v9 = sub_10014EA98(&qword_1003AE1A0, &unk_1002FF600);
    v11 = sub_100005480(v9, v10);
    sub_100005498(v11, v12, v13, v14, v15, v16, v17, v18);

    sub_1000361FC();
    sub_100026FA8();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_100005B2C(v24);
    sub_1000053DC();
    sub_100005340();
  }

  sub_100005C78();
}

void *sub_1001EA234()
{
  v36 = type metadata accessor for UUID();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v1;
  sub_1001E93FC();
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v8 + 64))(ObjectType, v8);
  sub_1000071D4();
  v10 = sub_100017230(v0);
  if (v10)
  {
    v11 = v10;
    v39 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = 0;
      v33 = v0 & 0xC000000000000001;
      v34 = v11;
      v14 = (v3 + 8);
      v35 = v0;
      do
      {
        if (v33)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v15 = *(v0 + 8 * v13 + 32);
        }

        v16 = v15;
        ++v13;
        v17 = [v15 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001E93FC();
        v19 = v18;
        v20 = swift_getObjectType();
        v38 = (*(v19 + 88))(v6, v20, v19);
        swift_unknownObjectRelease();
        v21 = *v14;
        v22 = v36;
        (*v14)(v6, v36);
        v23 = [v16 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001E93FC();
        v25 = v24;
        v26 = swift_getObjectType();
        LOBYTE(v25) = (*(v25 + 96))(v6, v26, v25);
        swift_unknownObjectRelease();
        v21(v6, v22);
        v27 = [v16 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001E93FC();
        v29 = v28;
        v30 = swift_getObjectType();
        LOBYTE(v29) = (*(v29 + 104))(v6, v30, v29);
        swift_unknownObjectRelease();
        v21(v6, v22);
        v31 = objc_allocWithZone(type metadata accessor for VoicemailAccount(0));
        sub_10015E9E8(v16, v38 & 1, v25 & 1, v29 & 1);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v0 = v35;
      }

      while (v34 != v13);

      return v39;
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1001EA574(char a1)
{
  v2 = sub_1001E93FC();
  sub_10000A4EC(v2);
  sub_1000080F0();
  v3 = sub_10000967C();
  v4(v3);
  sub_1000071D4();
  return a1 & 1;
}

uint64_t sub_1001EA5C4(char a1)
{
  v2 = sub_1001E93FC();
  sub_10000A4EC(v2);
  sub_1000080F0();
  v3 = sub_10000967C();
  v4(v3);
  sub_1000071D4();
  return a1 & 1;
}

uint64_t sub_1001EA614(char a1)
{
  v2 = sub_1001E93FC();
  sub_10000A4EC(v2);
  sub_1000080F0();
  v3 = sub_10000967C();
  v4(v3);
  sub_1000071D4();
  return a1 & 1;
}

uint64_t sub_1001EA698()
{
  sub_1001E93FC();
  v1 = sub_10000733C();
  (*(v0 + 72))(v1, v0);
  sub_1000071D4();
  return v0 & 1;
}

uint64_t sub_1001EA720()
{
  sub_1001E93FC();
  v1 = sub_10000733C();
  (*(v0 + 80))(v1, v0);
  sub_1000071D4();
  return v0;
}

id sub_1001EA764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v2[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger;
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_100008A14(v9, &unk_1003B8850);
  (*(*(v9 - 8) + 16))(&v3[v8], v10, v9);
  v11 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher;
  sub_10014EA98(&qword_1003AC868, &qword_1002FD1F8);
  swift_allocObject();
  *&v3[v11] = PassthroughSubject.init()();
  v12 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables];
  *v12 = 0;
  *(v12 + 1) = _swiftEmptyArrayStorage;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_vmdFactory];
  *v14 = sub_1001EBE74;
  v14[1] = v13;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

id sub_1001EA934(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);

  return v2;
}

uint64_t sub_1001EA9BC(char a1)
{
  v2 = sub_1001E93FC();
  sub_10000A4EC(v2);
  sub_1000080F0();
  v3 = sub_10000967C();
  v4(v3);
  sub_1000071D4();
  return a1 & 1;
}

uint64_t sub_1001EAA24()
{
  v3 = sub_100005CB0();
  sub_10000688C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100008690();
  v7 = v1;
  v8 = v0(v2);

  (*(v5 + 8))(v2, v3);
  return v8 & 1;
}

uint64_t sub_1001EAAE4(uint64_t a1)
{
  v2 = sub_1001E93FC();
  sub_10000A4EC(v2);
  sub_1000080F0();
  v3 = sub_10000967C();
  v4(v3);
  sub_1000071D4();
  return a1;
}

uint64_t sub_1001EAB4C(uint64_t a1)
{
  v2 = sub_1001E93FC();
  sub_10000A4EC(v2);
  sub_1000080F0();
  v3 = sub_10000967C();
  v4(v3);
  sub_1000071D4();
  return a1;
}

uint64_t sub_1001EABB4()
{
  v3 = sub_100005CB0();
  sub_10000688C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100008690();
  v7 = v1;
  v8 = v0(v2);

  (*(v5 + 8))(v2, v3);
  return v8;
}

double sub_1001EAC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1001E93FC();
  v11 = v10;
  ObjectType = swift_getObjectType();
  (*(v11 + 136))(a1, a2, a3, a4, a5, ObjectType, v11);

  swift_unknownObjectRelease();
  return result;
}

double sub_1001EAE70()
{
  v0 = sub_1001E93FC();
  sub_10000A4EC(v0);
  sub_1000080F0();
  v1 = sub_10000967C();
  v3 = v2(v1);
  swift_unknownObjectRelease();
  return v3;
}

double sub_1001EAFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001E93FC();
  v7 = v6;
  ObjectType = swift_getObjectType();
  (*(v7 + 152))(a1, a2, a3, ObjectType, v7);

  swift_unknownObjectRelease();
  return result;
}

double sub_1001EB180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001E93FC();
  v9 = v8;
  ObjectType = swift_getObjectType();
  (*(v9 + 160))(a1, a2, a3, a4, ObjectType, v9);

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1001EB35C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v23 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = type metadata accessor for TaskPriority();
  sub_100006848(v11, 1, 1, v13);
  (*(v6 + 16))(v8, v2 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger, v5);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v15 = sub_100153804();
  v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = inited;
  *(v18 + 3) = v15;
  *(v18 + 4) = v2;
  (*(v6 + 32))(&v18[v16], v8, v23);
  *&v18[v17] = v12;
  v19 = v2;

  sub_1001625C0();
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v20 = AnyCancellable.init(_:)();

  return v20;
}

uint64_t sub_1001EB5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  v7 = type metadata accessor for Logger();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100153804();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001EB6C4, v10, v9);
}

uint64_t sub_1001EB6C4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v13 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher);
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v6;

  sub_10014EA98(&qword_1003AC868, &qword_1002FD1F8);
  sub_1001B5FB4();
  v10 = Publisher<>.sink(receiveValue:)();

  *v13 = v10;

  v11 = v0[1];

  return v11();
}

double sub_1001EB844(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "VoicemailAccountManagerDecorator: processing listener.", v7, 2u);
  }

  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = *a1;
  v10 = *(sub_10014EA98(&qword_1003AC878, &qword_1002FD200) + 48);

  v8(v9, &a1[v10]);

  return result;
}

uint64_t type metadata accessor for VoicemailAccountManagerWithDelegateDecorator(uint64_t a1)
{
  result = qword_1003AE188;
  if (!qword_1003AE188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001EBB34(uint64_t a1)
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

uint64_t sub_1001EBBF4(uint64_t a1)
{
  v4 = *(type metadata accessor for Logger() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1001559CC;

  return sub_1001EB5C4(a1, v6, v7, v8, v1 + v5, v9);
}

double sub_1001EBD24(char *a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001EB844(a1, v1 + v4, v5);
}

uint64_t sub_1001EBDC0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1001EBEA4;

  return sub_1001E96A0(a1, a2, v6);
}

id sub_1001EBEA8()
{
  result = [objc_allocWithZone(type metadata accessor for CarPlayBannerManager()) init];
  qword_1003B8AE0 = result;
  return result;
}

id sub_1001EBED8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13InCallService20CarPlayBannerManager____lazy_storage___bannerSource;
  v3 = *(v0 + OBJC_IVAR____TtC13InCallService20CarPlayBannerManager____lazy_storage___bannerSource);
  v4 = v3;
  if (v3 == 1)
  {
    sub_1000064BC(0, &qword_1003AE250, BNBannerSource_ptr);
    v4 = sub_1001EBF80(1, 0xD000000000000017, 0x80000001002A6B40);
    v5 = *(v1 + v2);
    *(v1 + v2) = v4;
    v6 = v4;
    sub_1001638E4(v5);
  }

  sub_100164030(v3);
  return v4;
}

id sub_1001EBF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() bannerSourceForDestination:a1 forRequesterIdentifier:v4];

  return v5;
}

char *sub_1001EC004()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC13InCallService20CarPlayBannerManager____lazy_storage___bannerSource] = 1;
  v2 = OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_callCenter;
  *&v1[v2] = [objc_opt_self() sharedInstance];
  v3 = OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_carPlayObserver;
  sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.main.getter();
  v4 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  *&v1[v3] = CPCarPlayObserver.init(queue:)();
  *&v1[OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_presentedBanner] = 0;
  *&v1[OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_cancellable] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for CarPlayBannerManager();
  v5 = objc_msgSendSuper2(&v11, "init");
  v6 = *&v5[OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_carPlayObserver];
  sub_100027DC0(&qword_1003AE258, v7, type metadata accessor for CarPlayBannerManager, &unk_1002FEFD8);
  v8 = v5;
  v9 = v6;
  dispatch thunk of CPCarPlayObserver.delegate.setter();

  return v8;
}

double sub_1001EC184()
{
  sub_10014EA98(&qword_1003AE220, &qword_1002FDB20);
  sub_100005BE0();
  __chkstk_darwin(v1);
  v3 = &v36 - v2;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  sub_10000688C();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  sub_10014EA98(&qword_1003AE228, &unk_1003017D0);
  sub_10000688C();
  v37 = v14;
  v38 = v13;
  sub_100005BE0();
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  sub_10014EA98(&qword_1003AE230, &unk_1002FF050);
  sub_10000688C();
  v39 = v19;
  v40 = v18;
  sub_100005BE0();
  __chkstk_darwin(v20);
  v22 = &v36 - v21;
  v23 = [objc_allocWithZone(TUFeatureFlags) init];
  v24 = [v23 carPlayBannersEnabled];

  if (v24)
  {
    v26 = objc_opt_self();
    v36 = v0;
    v27 = [v26 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    v28 = [v26 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    sub_100027DC0(&qword_1003B0A90, 255, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
    Publisher.merge(with:)();
    v29 = *(v6 + 8);
    v29(v10, v4);
    v29(v12, v4);
    sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
    v30 = static OS_dispatch_queue.main.getter();
    v41 = v30;
    v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    sub_100006848(v3, 1, 1, v31);
    sub_100027E08(&qword_1003AE238, &qword_1003AE228, &unk_1003017D0, &protocol conformance descriptor for Publishers.MergeMany<A>);
    sub_100027E50();
    v32 = v38;
    Publisher.receive<A>(on:options:)();
    sub_1001C5174(v3);

    (*(v37 + 8))(v17, v32);
    swift_allocObject();
    v33 = v36;
    swift_unknownObjectWeakInit();
    sub_100027E08(&qword_1003AE248, &qword_1003AE230, &unk_1002FF050, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v34 = v40;
    v35 = Publisher<>.sink(receiveValue:)();

    (*(v39 + 8))(v22, v34);
    *(v33 + OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_cancellable) = v35;
  }

  return result;
}

double sub_1001EC62C()
{
  sub_100035CF8(0);
  *(v0 + OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_cancellable) = 0;

  return result;
}

uint64_t sub_1001EC668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v8;
  v5[9] = v7;

  return _swift_task_switch(sub_1001EC75C, v8, v7);
}

uint64_t sub_1001EC75C()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1001EC828;

  return sub_1000251F4();
}

uint64_t sub_1001EC828()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1001ED2C4;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1001EC9BC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1001EC9BC()
{
  v1 = *(v0 + 24);

  sub_100035CF8(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1001ECA38(void *a1)
{
  v2 = v1;
  v4 = sub_1001EBED8();
  if (v4)
  {
    v5 = v4;
    v6 = objc_allocWithZone(type metadata accessor for IncomingCallBanner(0));
    sub_100205C50(a1);
    v8 = v7;
    sub_10014EA98(&unk_1003AE210, &unk_1002FF030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002FAB60;
    *(inited + 32) = 0xD000000000000020;
    *(inited + 40) = 0x80000001002ABB90;
    v10 = objc_allocWithZone(NSNumber);
    v11 = v8;
    *(inited + 48) = [v10 initWithBool:1];
    sub_10014EA98(&unk_1003AE200, &unk_1002FF020);
    v12 = Dictionary.init(dictionaryLiteral:)();
    v32 = 0;
    LOBYTE(v10) = sub_1001ED088(v8, 1, v12, &v32, v5);

    if (v10)
    {
      v13 = v32;

      v14 = *(v2 + OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_presentedBanner);
      *(v2 + OBJC_IVAR____TtC13InCallService20CarPlayBannerManager_presentedBanner) = v8;
    }

    else
    {
      v18 = v32;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C(&qword_1003A9F40);
      }

      v19 = type metadata accessor for Logger();
      sub_100008A14(v19, &unk_1003B8820);
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v32 = v23;
        *v22 = 136315138;
        swift_errorRetain();
        sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
        v24 = String.init<A>(describing:)();
        v26 = sub_100008ADC(v24, v25, &v32);

        *(v22 + 4) = v26;
        sub_100007B68();
        _os_log_impl(v27, v28, v29, v30, v22, 0xCu);
        sub_100005B2C(v23);
        sub_100005BB8(v23);
        sub_100005BB8(v22);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C(&qword_1003A9F40);
    }

    v15 = type metadata accessor for Logger();
    sub_100008A14(v15, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = sub_100005924();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "CarPlayBannerManager: Unable to obtain banner source", v17, 2u);
      sub_100005BB8(v17);
    }
  }
}

id sub_1001ECE0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayBannerManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001ECEE0()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v0 = type metadata accessor for Logger();
  sub_100008A14(v0, &unk_1003B8820);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_100005924();
    *v3 = 0;
    sub_100007B68();
    _os_log_impl(v4, v5, v6, v7, v3, 2u);
    sub_100005BB8(v3);
  }

  sub_1001EC184();

  sub_100027F4C();
}

double sub_1001ECFB0()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C(&qword_1003A9F40);
  }

  v0 = type metadata accessor for Logger();
  sub_100008A14(v0, &unk_1003B8820);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_100005924();
    *v3 = 0;
    sub_100007B68();
    _os_log_impl(v4, v5, v6, v7, v3, 2u);
    sub_100005BB8(v3);
  }

  return sub_1001EC62C();
}

id sub_1001ED088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10014EA98(&unk_1003AE200, &unk_1002FF020);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [a5 postPresentable:a1 options:a2 userInfo:isa error:a4];

  return v10;
}

id sub_1001ED130(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = String._bridgeToObjectiveC()();

  sub_10014EA98(&unk_1003AE200, &unk_1002FF020);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [a7 revokePresentableWithRequestIdentifier:v11 reason:a3 animated:a4 & 1 userInfo:isa error:a6];

  return v13;
}

uint64_t sub_1001ED204(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001559CC;

  return sub_1001EC668(a1, v4, v5, v7, v6);
}

id sub_1001ED2C8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100008878(&v0[OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_alert], *&v0[OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_alert + 24]);
  v8[3] = ObjectType;
  v8[4] = &off_10035F530;
  v8[0] = v0;
  v3 = *v2;
  v4 = *sub_100008878(v8, ObjectType);
  v5 = v0;
  v6 = sub_1001EE920(v4, v3);
  sub_100005B2C(v8);
  return v6;
}

uint64_t sub_1001ED360()
{
  sub_100006610();
  v1[7] = v2;
  v1[8] = v0;
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v4;
  v1[11] = v3;

  return _swift_task_switch(sub_1001ED3F4, v4, v3);
}

uint64_t sub_1001ED3F4()
{
  v1 = v0[7];
  sub_1001EE878();
  v2 = sub_1001ED8A0();
  v0[12] = v2;
  v3 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v4 = sub_1001EE7AC(v2, 0xD00000000000001BLL, 0x80000001002ABC70);
  v0[13] = v4;
  v5 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v0[14] = v5;
  v6 = [objc_opt_self() newHandleWithDefinition:v4 configurationContext:v5];
  v0[15] = v6;
  sub_10015E008(v1, (v0 + 2));
  v7 = v0[5];
  v8 = sub_10015E208((v0 + 2), v7);
  v9 = *(v7 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v7);
  v11 = sub_1001EEC34(*v10, v6);
  v0[16] = v11;
  sub_100005B2C(v0 + 2);

  v11;
  sub_1001ED904(v11);
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1001ED61C;

  return sub_1001ED95C();
}

uint64_t sub_1001ED61C()
{
  sub_1000058A8();
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1001ED80C;
  }

  else
  {
    v5 = sub_1001ED754;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001ED754()
{
  sub_1000058A8();
  v1 = *(v0 + 64);

  v2 = *(v1 + 16);
  v3 = (v0 + 128);
  if (v2)
  {
    v4 = *v3;
    if (*v3 == v2)
    {
      sub_1001ED904(0);
      v4 = *(v0 + 128);
    }

    v3 = (v0 + 104);
  }

  else
  {
    v4 = *(v0 + 104);
  }

  v5 = *v3;
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);

  sub_10000535C();

  return v8();
}

uint64_t sub_1001ED80C()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);

  sub_10000535C();

  return v5();
}

id sub_1001ED8A0()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() identityForApplicationJobLabel:v0];

  return v1;
}

void sub_1001ED904(void *a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v2 = a1;
  sub_1001EDDAC(v3);
}

uint64_t sub_1001ED95C()
{
  sub_100006610();
  v1[10] = v0;
  v1[11] = type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v3;
  v1[14] = v2;

  return _swift_task_switch(sub_1001ED9F4, v3, v2);
}

uint64_t sub_1001ED9F4()
{
  sub_100006610();
  v1 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  *(v0 + 120) = v1;
  sub_1001EE8BC(0xD00000000000001BLL, 0x80000001002ABC70, v1);
  v2 = static MainActor.shared.getter();
  *(v0 + 128) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return _swift_task_switch(sub_1001EDAC0, v3, v5);
}

uint64_t sub_1001EDAC0()
{
  sub_1000058A8();
  v1 = v0 + 2;
  v2 = v0[15];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1001EDB98;
  *(v3 + OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_continueation) = swift_continuation_init();
  v4 = *(v3 + OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_handle);
  [v4 registerObserver:v3];
  [v4 activateWithContext:v2];

  return _swift_continuation_await(v1);
}

uint64_t sub_1001EDB98(__n128 a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 136) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1001EDD48;
  }

  else
  {

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1001EDCE0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001EDCE0()
{
  sub_100006610();

  sub_10000535C();

  return v1();
}

uint64_t sub_1001EDD48()
{
  sub_100006610();
  v1 = *(v0 + 120);

  sub_10000535C();

  return v2();
}

void sub_1001EDDAC(char *a1)
{
  if (a1 && *&a1[OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_continueation])
  {
    sub_1001EE824();
    v2 = swift_allocError();
    *v3 = 1;
    v4 = a1;
    sub_1001EDE60(v2);
  }
}

void sub_1001EDE60(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_continueation;
  if (*&v1[OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_continueation])
  {
    v5 = *&v1[OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_handle];
    [v5 unregisterObserver:v1];
    if (a1)
    {
      swift_errorRetain();
      if (qword_1003AA0A8 != -1)
      {
        sub_100007910(&qword_1003AA0A8);
      }

      v6 = type metadata accessor for Logger();
      sub_100008A14(v6, qword_1003AE260);
      swift_errorRetain();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v7, v8))
      {
        osloga = v5;
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v27 = v10;
        *v9 = 136315138;
        swift_errorRetain();
        sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
        v11 = String.init<A>(reflecting:)();
        v13 = sub_100008ADC(v11, v12, &v27);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v7, v8, "Alert shows error. %s", v9, 0xCu);
        sub_100005B2C(v10);
        sub_100005BB8(v10);
        v14 = v9;
        v5 = osloga;
        sub_100005BB8(v14);
      }

      sub_10014EA98(&qword_1003AAC00, &qword_1002FB100);
      swift_allocError();
      *v15 = a1;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      if (qword_1003AA0A8 != -1)
      {
        sub_100007910(&qword_1003AA0A8);
      }

      v21 = type metadata accessor for Logger();
      sub_100008A14(v21, qword_1003AE260);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Alert completed.", v24, 2u);
        sub_100005BB8(v24);
      }

      swift_continuation_throwingResume();
    }

    *&v2[v3] = 0;
    [v5 invalidate];
  }

  else
  {
    if (qword_1003AA0A8 != -1)
    {
      sub_100007910(&qword_1003AA0A8);
    }

    v16 = type metadata accessor for Logger();
    sub_100008A14(v16, qword_1003AE260);
    v17 = v1;
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100008ADC(0xD00000000000001BLL, 0x80000001002ABC70, &v27);
      _os_log_impl(&_mh_execute_header, oslog, v18, "Alert has already finished. %s", v19, 0xCu);
      sub_100005B2C(v20);
      sub_100005BB8(v20);
      sub_100005BB8(v19);
    }

    else
    {
    }
  }
}

uint64_t EndControlService.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

double sub_1001EE294()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  if (qword_1003AA0A8 != -1)
  {
    sub_100007910(&qword_1003AA0A8);
  }

  v5 = type metadata accessor for Logger();
  sub_100008A14(v5, qword_1003AE260);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Alert deactivate", v8, 2u);
    sub_100005BB8(v8);
  }

  v9 = type metadata accessor for TaskPriority();
  sub_100006848(v4, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v1;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_1001621BC();

  return result;
}

uint64_t sub_1001EE438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001EE4D0, v6, v5);
}

uint64_t sub_1001EE4D0()
{
  sub_100006610();
  v1 = *(v0 + 16);

  if (*(v1 + OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_continueation))
  {
    sub_1001EE824();
    v2 = swift_allocError();
    *v3 = 0;
    sub_1001EDE60(v2);
  }

  sub_10000535C();

  return v4();
}

uint64_t sub_1001EE67C()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003AE260);
  sub_100008A14(v0, qword_1003AE260);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001EE6FC()
{
  sub_1000058A8();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1001DC164;

  return sub_1001EE438(v3, v4, v5, v6);
}

id sub_1001EE7AC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithSceneProvidingProcess:a1 configurationIdentifier:v5];

  return v6;
}

unint64_t sub_1001EE824()
{
  result = qword_1003AE3C0;
  if (!qword_1003AE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE3C0);
  }

  return result;
}

unint64_t sub_1001EE878()
{
  result = qword_1003AE3D0;
  if (!qword_1003AE3D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AE3D0);
  }

  return result;
}

void sub_1001EE8BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setReason:v4];
}

id sub_1001EE920(void *a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003ADD58, &qword_1002FEC98);
  v5 = __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for DialInterventionView(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = type metadata accessor for RemoteAlertHandler();
  v27[4] = &off_10035F530;
  v27[0] = a1;
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v23 = *(a2 + 16);
  sub_10015E008(v27, (v12 + 32));
  v15 = a1;

  swift_unknownObjectRetain();
  sub_1001E258C(v9);
  *v12 = v13;
  *(v12 + 1) = v14;
  *(v12 + 1) = v23;
  sub_1001EED44(v9, v7);
  State.init(wrappedValue:)();
  sub_1001EEDB4(v9);
  v16 = &v12[*(v10 + 36)];
  v24 = 1;
  State.init(wrappedValue:)();
  v17 = v26;
  *v16 = v25;
  *(v16 + 1) = v17;
  sub_1001EEE1C();
  v18 = View.inLockScreenHostingController()();
  sub_1001EEE74(v12);
  v19 = v18;
  result = [v19 view];
  if (result)
  {
    v21 = result;
    v22 = [objc_opt_self() clearColor];
    [v21 setBackgroundColor:v22];

    sub_100005B2C(v27);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001EEB88(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v10[3] = type metadata accessor for DialInterventionAlert();
  v10[4] = &off_10035F160;
  v10[0] = a1;
  *&a3[OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_continueation] = 0;
  sub_10015E008(v10, &a3[OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_alert]);
  *&a3[OBJC_IVAR____TtC13InCallService18RemoteAlertHandler_handle] = a2;
  v9.receiver = a3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  sub_100005B2C(v10);
  return v7;
}

id sub_1001EEC34(uint64_t a1, uint64_t a2)
{
  v13 = type metadata accessor for DialInterventionAlert();
  v14 = &off_10035F160;
  v12[0] = a1;
  v4 = objc_allocWithZone(type metadata accessor for RemoteAlertHandler());
  v5 = sub_10015E208(v12, v13);
  __chkstk_darwin(v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_1001EEB88(*v7, a2, v4);
  sub_100005B2C(v12);
  return v9;
}

uint64_t sub_1001EED44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003ADD58, &qword_1002FEC98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001EEDB4(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003ADD58, &qword_1002FEC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001EEE1C()
{
  result = qword_1003AE3E0;
  if (!qword_1003AE3E0)
  {
    type metadata accessor for DialInterventionView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE3E0);
  }

  return result;
}

uint64_t sub_1001EEE74(uint64_t a1)
{
  v2 = type metadata accessor for DialInterventionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for RemoteAlertController.AlertError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001EEFB0()
{
  result = qword_1003AE3E8[0];
  if (!qword_1003AE3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003AE3E8);
  }

  return result;
}

uint64_t sub_1001EF00C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001EF098(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_100006AC0(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1001EF260(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_100006848(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1001EF580(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v13 = (v6 + 32);
    v14 = a2;
    do
    {
      if (a2 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v13;
      }

      v17 = *v12++;
      v16 = v17;
      v18 = *v5++;
      (*(*(v16 - 8) + 16))(&v11[v15], v18);
      v13 += 4;
      --v14;
    }

    while (v14);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1001EF6FC(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1();
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  v14[3] = a8;
  type metadata accessor for ClarityUITitleHeader(0, v14);
  return a3();
}

uint64_t sub_1001EF788@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v3 = a1[2];
  v4 = a1[3];
  v52 = a1[4];
  v51 = a1[5];
  v5 = type metadata accessor for Label();
  type metadata accessor for MultimodalNavigationTitleLabelStyle();
  v69 = v5;
  v70 = v2;
  v71 = sub_1000080FC();
  v72 = sub_1001F03E8();
  sub_10000C4C8();
  sub_100006A14();
  swift_getOpaqueTypeMetadata2();
  sub_100006A14();
  swift_getTupleTypeMetadata2();
  v44[2] = type metadata accessor for TupleView();
  v44[1] = sub_100025B84();
  v6 = type metadata accessor for HStack();
  sub_10000688C();
  v8 = v7;
  sub_100005BE0();
  __chkstk_darwin(v9);
  v11 = v44 - v10;
  sub_100155B7C(&qword_1003AC2D0, &qword_1002FCCB0);
  v12 = type metadata accessor for ModifiedContent();
  sub_10000688C();
  v48 = v13;
  sub_100005BE0();
  __chkstk_darwin(v14);
  v16 = v44 - v15;
  v17 = type metadata accessor for ModifiedContent();
  sub_10000688C();
  v50 = v18;
  sub_100005BE0();
  __chkstk_darwin(v19);
  v44[0] = v44 - v20;
  v21 = type metadata accessor for ModifiedContent();
  sub_10000688C();
  v53 = v22;
  sub_100005BE0();
  __chkstk_darwin(v23);
  v45 = v44 - v24;
  v25 = type metadata accessor for ModifiedContent();
  sub_10000688C();
  v47 = v26;
  v28 = __chkstk_darwin(v27);
  v46 = v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v49 = v44 - v30;
  v56 = v3;
  v57 = v4;
  v58 = v52;
  v59 = v51;
  v60 = v54;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  static Font.clarityUINavigationTitle.getter();
  sub_100006EB8();
  WitnessTable = swift_getWitnessTable();
  View.font(_:)();

  (*(v8 + 8))(v11, v6);
  static Edge.Set.top.getter();
  static ClarityUIMetrics.titleTopPadding.getter();
  v32 = sub_1001F0458();
  v67 = WitnessTable;
  v68 = v32;
  v33 = swift_getWitnessTable();
  v34 = v44[0];
  View.padding(_:_:)();
  (*(v48 + 8))(v16, v12);
  static Edge.Set.bottom.getter();
  static ClarityUIMetrics.titleBottomPadding.getter();
  v65 = v33;
  v66 = &protocol witness table for _PaddingLayout;
  v35 = swift_getWitnessTable();
  v36 = v45;
  View.padding(_:_:)();
  (*(v50 + 8))(v34, v17);
  static Edge.Set.horizontal.getter();
  static ClarityUIMetrics.titleHorizontalPadding.getter();
  v63 = v35;
  v64 = &protocol witness table for _PaddingLayout;
  v37 = swift_getWitnessTable();
  v38 = v46;
  View.padding(_:_:)();
  (*(v53 + 8))(v36, v21);
  v61 = v37;
  v62 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v39 = v47;
  v40 = *(v47 + 16);
  v41 = v49;
  v40(v49, v38, v25);
  v42 = *(v39 + 8);
  v42(v38, v25);
  v40(v55, v41, v25);
  return (v42)(v41, v25);
}

uint64_t sub_1001EFD9C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v33 = a4;
  v32 = a3;
  v36 = a1;
  v39 = a6;
  v10 = type metadata accessor for MultimodalNavigationTitleLabelStyle();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v13 = type metadata accessor for Label();
  v37 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  WitnessTable = swift_getWitnessTable();
  v31 = WitnessTable;
  v17 = sub_1001F03E8();
  v55 = v13;
  v56 = v10;
  v57 = WitnessTable;
  v58 = v17;
  v35 = &opaque type descriptor for <<opaque return type of View.labelStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  v20 = __chkstk_darwin(OpaqueTypeMetadata2);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v30 - v23;
  v45 = a2;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v49 = v36;
  v40 = a2;
  v41 = v32;
  v42 = v33;
  v43 = v34;
  v44 = v36;
  Label.init(title:icon:)();
  MultimodalNavigationTitleLabelStyle.init()();
  v25 = v31;
  View.labelStyle<A>(_:)();
  (*(v38 + 8))(v12, v10);
  (*(v37 + 8))(v15, v13);
  v55 = v13;
  v56 = v10;
  v57 = v25;
  v58 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = *(v19 + 16);
  v27(v24, v22, OpaqueTypeMetadata2);
  v28 = *(v19 + 8);
  v28(v22, OpaqueTypeMetadata2);
  v27(v22, v24, OpaqueTypeMetadata2);
  v53 = 0;
  v54 = 0;
  v55 = v22;
  v56 = &v53;
  v52[0] = OpaqueTypeMetadata2;
  v52[1] = &type metadata for Spacer;
  v50 = OpaqueTypeConformance2;
  v51 = &protocol witness table for Spacer;
  sub_1001EF580(&v55, 2, v52);
  v28(v24, OpaqueTypeMetadata2);
  return (v28)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_1001F01D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_1001F02C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v13 = type metadata accessor for ClarityUITitleHeader(0, v16);
  v14 = *(v6 + 16);
  v14(v8, a1 + *(v13 + 52), a2);
  v14(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

unint64_t sub_1001F03E8()
{
  result = qword_1003AE470;
  if (!qword_1003AE470)
  {
    type metadata accessor for MultimodalNavigationTitleLabelStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE470);
  }

  return result;
}

unint64_t sub_1001F0458()
{
  result = qword_1003AC2C8;
  if (!qword_1003AC2C8)
  {
    sub_100155B7C(&qword_1003AC2D0, &qword_1002FCCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC2C8);
  }

  return result;
}

__n128 sub_1001F0508(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1001F051C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 26))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 1);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1001F0568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001F05BC(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isFaceTimeProvider];

  if (v3)
  {
    v4 = [a1 isVideo];

    if (v4)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v6 = [a1 provider];
    v7 = [v6 isTelephonyProvider];

    if (v7)
    {

      return 0;
    }

    else
    {
      v8 = [a1 provider];
      v9 = [v8 isSystemProvider];

      if (v9)
      {
        if (qword_1003A9F98 != -1)
        {
          swift_once();
        }

        v10 = qword_1003B8928;
        sub_10014EA98(&qword_1003AB478, qword_1002FBDC0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1002FAB60;
        v12 = [a1 provider];
        *(v11 + 56) = sub_1001F0D58();
        *(v11 + 64) = sub_1001F0D9C();
        *(v11 + 32) = v12;
        v13 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("ICSCallAnalytics: unable to determine analytics call type from provider %@", 74, 2, &_mh_execute_header, v10, v13, v11);

        return 4;
      }

      else
      {

        return 3;
      }
    }
  }
}

uint64_t sub_1001F0788(void *a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C4E0();
  sub_100006ED0();
  v6 = v6 && v1 == v5;
  if (v6)
  {

    return 0;
  }

  sub_100007930(v4);
  sub_100007EF8();

  if (v2)
  {

    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C4E0();
  sub_100006ED0();
  if (v6 && v1 == v10)
  {

    return 1;
  }

  sub_100007930(v9);
  sub_100007EF8();

  if (v2)
  {

    return 1;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C4E0();
  sub_100006ED0();
  if (v6 && v1 == v13)
  {

    return 2;
  }

  sub_100007930(v12);
  sub_100007EF8();

  if (v2)
  {

    return 2;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C4E0();
  sub_100006ED0();
  if (v6 && v1 == v16)
  {

    return 3;
  }

  sub_100007930(v15);
  sub_100007EF8();

  if (v2)
  {

    return 3;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C4E0();
  sub_100006ED0();
  if (v6 && v1 == v19)
  {

    return 4;
  }

  sub_100007930(v18);
  sub_100007EF8();

  if (v2)
  {

    return 4;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C4E0();
  sub_100006ED0();
  if (v6 && v1 == v22)
  {

    return 5;
  }

  sub_100007930(v21);
  sub_100007EF8();

  if (v2)
  {

    return 5;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C4E0();
  sub_100006ED0();
  if (v6 && v1 == v25)
  {

    return 6;
  }

  sub_100007930(v24);
  sub_100007EF8();

  if (v2)
  {

    return 6;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C4E0();
  sub_100006ED0();
  if (v6 && v1 == v28)
  {

    return 7;
  }

  sub_100007930(v27);
  sub_100007EF8();

  if (v2)
  {

    return 7;
  }

  v30 = a1;
  v31 = String._bridgeToObjectiveC()();
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v32 == v35 && v34 == v36)
  {

    goto LABEL_84;
  }

  v38 = sub_100025BAC(v35);

  if (v38)
  {
LABEL_84:

    return 8;
  }

  v39 = v30;
  v40 = String._bridgeToObjectiveC()();
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v41 == v44 && v43 == v45)
  {

    goto LABEL_86;
  }

  v47 = sub_100025BAC(v44);

  if (v47)
  {
LABEL_86:

    return 9;
  }

  v48 = String._bridgeToObjectiveC()();
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {

    v7 = 13;
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v54)
    {
      v7 = 13;
    }

    else
    {
      v7 = 11;
    }
  }

  return v7;
}

uint64_t sub_1001F0C4C(void *a1)
{
  if ([a1 status] == 6)
  {
    v2 = [a1 disconnectedReason];

    if (v2 >= 7)
    {
      return 0;
    }

    else
    {
      return (0x5000201010400uLL >> (8 * v2));
    }
  }

  else
  {
    v4 = [a1 status];

    if (v4 == 1)
    {
      return 3;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1001F0CE0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1001F0CF0(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

unint64_t sub_1001F0D00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001F0CE0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001F0D2C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001F0CF0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001F0D58()
{
  result = qword_1003AE478;
  if (!qword_1003AE478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AE478);
  }

  return result;
}

unint64_t sub_1001F0D9C()
{
  result = qword_1003AE480;
  if (!qword_1003AE480)
  {
    sub_1001F0D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE480);
  }

  return result;
}

uint64_t sub_1001F0DF4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1001F0E7C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001F0F54(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1001F0FDC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001F10B8()
{
  result = qword_1003AE488;
  if (!qword_1003AE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE488);
  }

  return result;
}

unint64_t sub_1001F1110()
{
  result = qword_1003AE490;
  if (!qword_1003AE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE490);
  }

  return result;
}

uint64_t PHPTTFullScreenContainerViewController.pttViewController(bannnerPresentationManager:)()
{
  result = CNKBannerPresentationManager.conversationControlsManager.getter();
  if (result)
  {
    v1 = objc_allocWithZone(type metadata accessor for PushToTalkFullScreenViewController());
    return PushToTalkFullScreenViewController.init(conversationControlsManager:)();
  }

  return result;
}

void sub_1001F1214(void *a1, id a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = [a2 buttonsForAmbientTransition];
  if (v9)
  {
    v10 = v9;
    sub_10014EA98(&unk_1003AE4D0, &qword_1002FF418);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = [a1 buttonsForAmbientTransition];
  if (v12)
  {
    v13 = v12;
    sub_10014EA98(&unk_1003AE4D0, &qword_1002FF418);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v15 = sub_100017230(v11);
  v16 = 0;
  v17 = v11 & 0xC000000000000001;
  while (v15 != v16)
  {
    sub_100017238(v16, v17 == 0, v11);
    if (v17)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    ObjectType = swift_getObjectType();
    sub_1001F1578(1, a3 & 1, ObjectType);
    swift_unknownObjectRelease();
    ++v16;
  }

  v19 = sub_100017230(v14);
  v20 = 0;
  v21 = v14 & 0xC000000000000001;
  while (v19 != v20)
  {
    sub_100017238(v20, v21 == 0, v14);
    if (v21)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v20, 1))
    {
      goto LABEL_25;
    }

    v22 = swift_getObjectType();
    sub_1001F1578(0, a3 & 1, v22);
    swift_unknownObjectRelease();
    ++v20;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v14;
  v24 = a3 & 1;
  *(v23 + 24) = a3 & 1;

  sub_1001F1A28(sub_1001F2A50, v23, 0, 0, 0.0);

  v25 = swift_allocObject();
  *(v25 + 16) = v11;
  *(v25 + 24) = v24;
  sub_100006BE8();
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;

  sub_1001F1A28(sub_1001F2A74, v25, sub_100164B4C, v26, 0.171428571);

  v27 = swift_allocObject();
  *(v27 + 16) = v11;
  *(v27 + 24) = v24;
  *(v27 + 32) = v14;
  sub_1001F1A28(sub_1001F2A98, v27, 0, 0, 0.0);
}

void sub_1001F1578(char a1, char a2, uint64_t a3)
{
  v4 = [v3 ambientButtonParts];
  if (v4)
  {
    v5 = v4;
    sub_1001F2928();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_100017230(v6);
    for (i = 0; v7 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = [v9 view];
      if (!v11)
      {
        goto LABEL_22;
      }

      v12 = v11;
      [v11 _removeAllAnimations:1];
    }

    Scale = sub_1001F23D0(a1 & 1, a2 & 1);
    if (v14)
    {
      if (Scale)
      {
        sub_100025BD0();
        v19 = 0;
      }

      else
      {
        sub_100025BD0();
      }

      sub_1001F24BC(v15, v16, v17, v18, v19, 0, 0);
    }

    else
    {
      if (a1)
      {
        Scale = CGAffineTransformMakeScale(&v30, *&Scale, *&Scale);
        v20 = *&v30.a;
        v21 = *&v30.c;
        v22 = *&v30.tx;
      }

      else
      {
        v20 = *&CGAffineTransformIdentity.a;
        v21 = *&CGAffineTransformIdentity.c;
        v22 = *&CGAffineTransformIdentity.tx;
      }

      *&v30.a = v20;
      *&v30.c = v21;
      *&v30.tx = v22;
      v23 = __chkstk_darwin(Scale);
      __chkstk_darwin(v23);
      sub_100006EDC();
      *(sub_1000086BC(&unk_10035F978) + 16) = a1 & 1;
      sub_10000C4FC(sub_1001F2ABC, v24, sub_1001F2ABC, v25, v26, v27, sub_1001F296C);
    }
  }

  else
  {
LABEL_23:
    __break(1u);
  }
}

double sub_1001F1850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  Scale = sub_1001F23D0(a1, a2);
  if (v6)
  {
    if (Scale)
    {
      v7 = sub_1000086BC(&unk_10035F928);
      *(v7 + 16) = v3 & 1;
      sub_100025BD0();
      sub_1001F24BC(v8, v9, v10, v11, v12, v7, 0);
    }
  }

  else
  {
    if (v3)
    {
      v13 = *&CGAffineTransformIdentity.a;
      v14 = *&CGAffineTransformIdentity.c;
      v15 = *&CGAffineTransformIdentity.tx;
    }

    else
    {
      Scale = CGAffineTransformMakeScale(&v21, *&Scale, *&Scale);
      v13 = *&v21.a;
      v14 = *&v21.c;
      v15 = *&v21.tx;
    }

    *&v21.a = v13;
    *&v21.c = v14;
    *&v21.tx = v15;
    v16 = __chkstk_darwin(Scale);
    __chkstk_darwin(v16);
    sub_100006EDC();
    *(sub_1000086BC(&unk_10035F950) + 16) = v3 & 1;
    sub_10000C4FC(sub_1001F2ABC, v17, sub_1001F28EC, v18, v19, v20, sub_1001F2908);
  }

  return result;
}

void sub_1001F1A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v19 = sub_100193050;
  v20 = v11;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10002E570;
  v18 = &unk_10035F8A0;
  v12 = _Block_copy(&v15);

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v19 = sub_1001F28E8;
  v20 = v13;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100164920;
  v18 = &unk_10035F8F0;
  v14 = _Block_copy(&v15);
  sub_10017A4B4(a3, a4);

  [v10 _animateUsingSpringWithDuration:0 delay:v12 options:v14 mass:0.36 stiffness:a5 damping:1.0 initialVelocity:300.0 animations:50.0 completion:0.0];
  _Block_release(v14);
  _Block_release(v12);
}

void sub_1001F1BF4(uint64_t a1, char a2, char a3)
{
  v6 = sub_100017230(a1);
  for (i = 0; v6 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    ObjectType = swift_getObjectType();
    sub_1001F1850(a3 & 1, a2 & 1, ObjectType);
    swift_unknownObjectRelease();
  }
}

void sub_1001F1CBC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_100017230(a1);
  for (i = 0; v6 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    ObjectType = swift_getObjectType();
    sub_1001F1E10(1, a2 & 1, ObjectType);
    swift_unknownObjectRelease();
  }

  v9 = sub_100017230(a3);
  for (j = 0; v9 != j; ++j)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      swift_unknownObjectRetain();
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_20;
    }

    v11 = swift_getObjectType();
    sub_1001F1E10(0, a2 & 1, v11);
    swift_unknownObjectRelease();
  }
}

double sub_1001F1E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = sub_1001F23D0(a1, a2);
  if ((v6 & 1) != 0 && !v4)
  {
    *(sub_1000086BC(&unk_10035FAE0) + 16) = v3 & 1;
    sub_100025BD0();
    sub_1001F24BC(v7, v8, v9, v10, 0, 0, v11);
  }

  return result;
}

double sub_1001F1FB0()
{
  v3 = sub_100006A20();
  sub_1001F1578(1, 0, v3);
  sub_100005C44();
  *(swift_allocObject() + 16) = v0;
  sub_100006BE8();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  swift_unknownObjectRetain();
  sub_10017A4B4(v2, v1);
  sub_100009690(sub_1001F29D8, v6, v5, sub_1001F2AB8);

  return result;
}

double sub_1001F2164()
{
  v3 = sub_100006A20();
  sub_1001F1578(0, 0, v3);
  sub_100005C44();
  *(swift_allocObject() + 16) = v0;
  sub_100006BE8();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  swift_unknownObjectRetain();
  sub_10017A4B4(v2, v1);
  sub_100009690(sub_1001F23C8, v6, v5, sub_1001F2AB8);

  return result;
}

id sub_1001F2318()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientAnimationCoordinator();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001F2370()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientAnimationCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F23D0(char a1, char a2)
{
  v3 = v2;
  v6 = [v3 ambientButtonType];
  if (v6 == 2)
  {
    if (a1 & 1) != 0 && (a2)
    {
      return 0;
    }
  }

  else if (v6 == 1 && (a1 & 1) == 0)
  {
    return 1;
  }

  return 0x3FECCCCCCCCCCCCDLL;
}

id sub_1001F2448(void *a1, char a2)
{
  sub_1001F2974(0x7974696361706FLL, 0xE700000000000000, a1);
  v4 = 0.0;
  if ((a2 & 1) == 0)
  {
    [a1 alpha];
  }

  return [a1 setAlpha:v4];
}

void sub_1001F24BC(void (*a1)(void), uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(void))
{
  v9 = [v7 ambientButtonParts];
  if (!v9)
  {
    goto LABEL_33;
  }

  v10 = v9;
  sub_1001F2928();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = sub_100017230(v11);
  if (!v12)
  {
LABEL_24:

    return;
  }

  v13 = v12;
  v14 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v15 = *(v11 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (a7)
    {
      v18 = [v15 view];
      if (!v18)
      {
        goto LABEL_29;
      }

      v19 = v18;
      a7();
    }

    v20 = [v16 type];
    if (v20 == 2)
    {
      if (a5)
      {
        v25 = [v16 view];
        if (!v25)
        {
          goto LABEL_32;
        }

        v22 = v25;
        v23 = a5;
LABEL_22:
        v23();
      }
    }

    else
    {
      if (v20 == 1)
      {
        v24 = [v16 view];
        if (!v24)
        {
          goto LABEL_31;
        }

        v22 = v24;
        v23 = a3;
        goto LABEL_22;
      }

      if (!v20)
      {
        v21 = [v16 view];
        if (!v21)
        {
          goto LABEL_30;
        }

        v22 = v21;
        v23 = a1;
        goto LABEL_22;
      }
    }

    ++v14;
    if (v17 == v13)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

id sub_1001F26C4(void *a1)
{
  v4[0] = 0x3FF0000000000000;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3FF0000000000000;
  v4[4] = 0;
  v4[5] = 0;
  [a1 setTransform:v4];
  v2 = [objc_opt_self() systemGreenColor];
  [a1 setBackgroundColor:v2];

  return [a1 setAlpha:1.0];
}

id sub_1001F275C(void *a1)
{
  CGAffineTransformMakeTranslation(&v4, -2.0, 2.0);
  CGAffineTransformRotate(&v3, &v4, -2.43);
  v4 = v3;
  [a1 setTransform:&v4];
  return [a1 setAlpha:1.0];
}

id sub_1001F27F0(void *a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return [a1 setTransform:v4];
}

void sub_1001F2830(void *a1)
{
  v2 = [objc_opt_self() systemRedColor];
  [a1 setBackgroundColor:v2];
}

id sub_1001F28A4(void *a1)
{
  v1 = *&CGAffineTransformIdentity.c;
  v3[0] = *&CGAffineTransformIdentity.a;
  v3[1] = v1;
  v3[2] = *&CGAffineTransformIdentity.tx;
  return [a1 setTransform:v3];
}

id sub_1001F2908(void *a1)
{
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v2 = 1.0;
  }

  return [a1 setAlpha:v2];
}

unint64_t sub_1001F2928()
{
  result = qword_1003AE4C8;
  if (!qword_1003AE4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AE4C8);
  }

  return result;
}

void sub_1001F2974(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 _removePropertyAnimationsForLayerKeyPath:v4];
}

uint64_t sub_1001F29E0()
{
  if (*(v0 + 16))
  {
  }

  sub_100006BE8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1001F2A1C(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

void sub_1001F2AC0(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [objc_opt_self() sharedInstance];
    v6 = [v3 frontmostAudioOrVideoCall];

    if (v6)
    {
      v4 = [v6 provider];
      v5 = [v4 supportsDynamicSystemUI];

      if (v5)
      {
        [a2 requestTransitionToPresentationMode:0 isUserInitiated:0 analyticsSource:0];
      }
    }
  }
}

id sub_1001F2C18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicSystemUIPresentationStyleHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001F2C70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicSystemUIPresentationStyleHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001F2D40(void (*a1)(void))
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v2 - 8);
  sub_100005BD0();
  a1();
  v4[3] = type metadata accessor for _Glass();
  v4[4] = &protocol witness table for _Glass;
  sub_10015DFA8(v4);
  _Glass.init(_:smoothness:)(0.0);
  return UIView._background.setter();
}

Swift::Void __swiftcall UIView.applyClearGlassBackgroundWithTintColor(_:)(UIColor a1)
{
  v4 = type metadata accessor for _Glass();
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100005BD0();
  sub_100008128();
  v8 = type metadata accessor for _Glass._GlassVariant();
  sub_10000688C();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000C520();
  __chkstk_darwin(v12);
  sub_100025BDC();
  _Glass._GlassVariant.excludingShadow()();
  v13 = *(v10 + 8);
  v13(v1, v8);
  (*(v10 + 16))(v1, v3, v8);
  _Glass.init(_:smoothness:)(0.0);
  v14[3] = v4;
  v14[4] = &protocol witness table for _Glass;
  sub_10015DFA8(v14);
  _Glass.tint(_:)();
  (*(v6 + 8))(v2, v4);
  UIView._background.setter();
  v13(v3, v8);
}

Swift::Void __swiftcall UIView.applyRegularGlassBackground()()
{
  v1 = type metadata accessor for _Glass._GlassVariant.Size();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100005BD0();
  v7 = v6 - v5;
  v8 = type metadata accessor for _Glass._GlassVariant();
  sub_10000688C();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000C520();
  __chkstk_darwin(v12);
  static _Glass._GlassVariant.regular.getter();
  (*(v3 + 104))(v7, enum case for _Glass._GlassVariant.Size.large(_:), v1);
  _Glass._GlassVariant.size(_:)();
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v0, v8);
  v13[3] = type metadata accessor for _Glass();
  v13[4] = &protocol witness table for _Glass;
  sub_10015DFA8(v13);
  _Glass.init(_:smoothness:)(0.0);
  UIView._background.setter();
}

Swift::Void __swiftcall UIView.applyRegularGlassBackgroundWithTintColor(_:)(UIColor a1)
{
  v3 = v1;
  v4 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v4 - 8);
  sub_100005BD0();
  v5 = type metadata accessor for _Glass();
  sub_10000688C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100005BD0();
  sub_100008128();
  sub_1001F3424();
  v9 = [objc_opt_self() clearColor];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {

    [v3 applyClearGlassBackground];
  }

  else
  {
    static _Glass._GlassVariant.regular.getter();
    _Glass.init(_:smoothness:)(0.0);
    v11[3] = v5;
    v11[4] = &protocol witness table for _Glass;
    sub_10015DFA8(v11);
    _Glass.tint(_:)();
    (*(v7 + 8))(v2, v5);
    UIView._background.setter();
  }
}

unint64_t sub_1001F3424()
{
  result = qword_1003B0520;
  if (!qword_1003B0520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B0520);
  }

  return result;
}

Swift::Void __swiftcall UIView.applyDiscreetRegularGlassBackgroundWithTintColor(_:)(UIColor a1)
{
  v1 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v1 - 8);
  sub_100005BD0();
  v2 = type metadata accessor for _Glass();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100005BD0();
  v8 = v7 - v6;
  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)(0.0);
  v9[3] = v2;
  v9[4] = &protocol witness table for _Glass;
  sub_10015DFA8(v9);
  _Glass.tint(_:)();
  (*(v4 + 8))(v8, v2);
  UIView._background.setter();
}

Swift::Void __swiftcall UIView.applySmallClearGlassBackground()()
{
  v2 = type metadata accessor for _Glass._GlassVariant.Size();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100005BD0();
  sub_100008128();
  v6 = type metadata accessor for _Glass._GlassVariant();
  sub_10000688C();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000C520();
  __chkstk_darwin(v10);
  v12 = &v15[-1] - v11;
  static _Glass._GlassVariant.clear.getter();
  (*(v4 + 104))(v1, enum case for _Glass._GlassVariant.Size.small(_:), v2);
  _Glass._GlassVariant.size(_:)();
  (*(v4 + 8))(v1, v2);
  v13 = *(v8 + 8);
  v13(v0, v6);
  (*(v8 + 16))(v0, v12, v6);
  v15[3] = type metadata accessor for _Glass();
  v15[4] = &protocol witness table for _Glass;
  sub_10015DFA8(v15);
  _Glass.init(_:smoothness:)(0.0);
  UIView._background.setter();
  v13(v12, v6);
}

Swift::Void __swiftcall UIView.applySmallClearGlassBackgroundWithTintColor(_:)(UIColor a1)
{
  v26[1] = a1.super.isa;
  v26[0] = type metadata accessor for _Glass();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100005BD0();
  v8 = v7 - v6;
  v9 = type metadata accessor for _Glass._GlassVariant.Size();
  sub_10000688C();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100005BD0();
  v15 = v14 - v13;
  v16 = type metadata accessor for _Glass._GlassVariant();
  sub_10000688C();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_10000C520();
  v21 = __chkstk_darwin(v20);
  v23 = v26 - v22;
  __chkstk_darwin(v21);
  sub_100025BDC();
  (*(v11 + 104))(v15, enum case for _Glass._GlassVariant.Size.small(_:), v9);
  _Glass._GlassVariant.size(_:)();
  (*(v11 + 8))(v15, v9);
  v24 = *(v18 + 8);
  v24(v1, v16);
  _Glass._GlassVariant.excludingShadow()();
  v24(v23, v16);
  (*(v18 + 16))(v23, v2, v16);
  _Glass.init(_:smoothness:)(0.0);
  v25 = v26[0];
  v27[3] = v26[0];
  v27[4] = &protocol witness table for _Glass;
  sub_10015DFA8(v27);
  _Glass.tint(_:)();
  (*(v4 + 8))(v8, v25);
  UIView._background.setter();
  v24(v2, v16);
}

id sub_1001F3C3C()
{
  v0 = sub_10014EA98(&qword_1003AAA90, qword_1002FAD50);
  __chkstk_darwin(v0 - 8);
  v2 = v24 - v1;
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10014EA98(&qword_1003ADE38, &qword_1002FF4B0);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  (*(v8 + 104))(v10, enum case for UIButton.Configuration.CornerStyle.large(_:), v7);
  UIButton.Configuration.cornerStyle.setter();
  v15 = objc_opt_self();
  v16 = [v15 secondarySystemBackgroundColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v17 = [v15 systemBlueColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v18 = [objc_opt_self() configurationWithScale:1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  sub_1001FD2AC(0xD000000000000016, 0x80000001002ABFA0);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v19 = type metadata accessor for AttributedString();
  sub_100006848(v6, 0, 1, v19);
  UIButton.Configuration.attributedTitle.setter();
  v20 = UIButton.Configuration.attributedTitle.modify();
  if (!sub_100006AC0(v21, 1, v19))
  {
    v24[1] = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightBold];
    sub_1001E5698();
    AttributedString.subscript.setter();
  }

  v20(v25, 0);
  UIButton.Configuration.contentInsets.setter();
  v22 = [objc_opt_self() buttonWithType:1];
  (*(v12 + 16))(v2, v14, v11);
  sub_100006848(v2, 0, 1, v11);
  UIButton.configuration.setter();
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  (*(v12 + 8))(v14, v11);
  return v22;
}

id sub_1001F40E0()
{
  v0 = sub_10014EA98(&qword_1003AAA90, qword_1002FAD50);
  __chkstk_darwin(v0 - 8);
  v2 = v24 - v1;
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10014EA98(&qword_1003ADE38, &qword_1002FF4B0);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  (*(v8 + 104))(v10, enum case for UIButton.Configuration.CornerStyle.large(_:), v7);
  UIButton.Configuration.cornerStyle.setter();
  v15 = objc_opt_self();
  v16 = [v15 secondarySystemBackgroundColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v17 = [v15 systemBlueColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v18 = [objc_opt_self() configurationWithScale:1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  sub_1001FD2AC(0xD00000000000001BLL, 0x80000001002ABFC0);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v19 = type metadata accessor for AttributedString();
  sub_100006848(v6, 0, 1, v19);
  UIButton.Configuration.attributedTitle.setter();
  v20 = UIButton.Configuration.attributedTitle.modify();
  if (!sub_100006AC0(v21, 1, v19))
  {
    v24[1] = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightBold];
    sub_1001E5698();
    AttributedString.subscript.setter();
  }

  v20(v25, 0);
  UIButton.Configuration.contentInsets.setter();
  v22 = [objc_opt_self() buttonWithType:1];
  (*(v12 + 16))(v2, v14, v11);
  sub_100006848(v2, 0, 1, v11);
  UIButton.configuration.setter();
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  (*(v12 + 8))(v14, v11);
  return v22;
}

id sub_1001F4580(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1001F45E0()
{
  v0 = sub_10014EA98(&qword_1003AAA90, qword_1002FAD50);
  __chkstk_darwin(v0 - 8);
  v2 = v24 - v1;
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10014EA98(&qword_1003ADE38, &qword_1002FF4B0);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  (*(v8 + 104))(v10, enum case for UIButton.Configuration.CornerStyle.large(_:), v7);
  UIButton.Configuration.cornerStyle.setter();
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v17 = [v15 systemBlueColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98, UIImage_ptr);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v18 = [objc_opt_self() configurationWithScale:1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  sub_1001FD2AC(0x5F5353494D534944, 0xEE004E4F49544341);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v19 = type metadata accessor for AttributedString();
  sub_100006848(v6, 0, 1, v19);
  UIButton.Configuration.attributedTitle.setter();
  v20 = UIButton.Configuration.attributedTitle.modify();
  if (!sub_100006AC0(v21, 1, v19))
  {
    v24[1] = [objc_opt_self() systemFontOfSize:12.0];
    sub_1001E5698();
    AttributedString.subscript.setter();
  }

  v20(v25, 0);
  v22 = [objc_opt_self() buttonWithType:1];
  (*(v12 + 16))(v2, v14, v11);
  sub_100006848(v2, 0, 1, v11);
  UIButton.configuration.setter();
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  (*(v12 + 8))(v14, v11);
  return v22;
}

id sub_1001F4A64(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___soundButton] = 0;
  *&v4[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___callAgainButton] = 0;
  *&v4[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___cancelButton] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_1001F4B10();

  return v10;
}

void sub_1001F4B10()
{
  v1 = sub_1001F4580(&OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___cancelButton, sub_1001F45E0);
  [v0 addSubview:v1];

  v2 = [objc_allocWithZone(UIStackView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setAxis:1];
  [v2 setSpacing:8.0];
  [v0 addSubview:v2];
  [v2 setAlignment:3];
  [v2 setDistribution:0];
  [v2 setPreservesSuperviewLayoutMargins:1];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:1 forAxis:v3];
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = sub_1001FD2AC(0x52454C415F524143, 0xEF454C5449545F54);
  sub_10021BFD8(v5, v6, v4);
  v7 = objc_opt_self();
  v8 = [v7 systemFontOfSize:20.0 weight:UIFontWeightBold];
  [v4 setFont:v8];

  [v4 setTextAlignment:1];
  [v4 setNumberOfLines:0];
  v9 = objc_opt_self();
  v10 = [v9 dynamicLabelColor];
  [v4 setTextColor:v10];

  LODWORD(v11) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v11];
  [v2 addArrangedSubview:v4];
  v12 = [objc_allocWithZone(UILabel) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = sub_1001FD2AC(0xD000000000000012, 0x80000001002AC010);
  sub_10021BFD8(v13, v14, v12);
  v15 = [v7 systemFontOfSize:12.0];
  [v12 setFont:v15];

  [v12 setNumberOfLines:0];
  [v12 setTextAlignment:1];
  v16 = [v9 dynamicLabelColor];
  [v4 setTextColor:v16];

  v61 = v12;
  LODWORD(v17) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v17];
  [v2 addArrangedSubview:v12];
  v18 = [objc_allocWithZone(UIStackView) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setAxis:0];
  [v18 setSpacing:8.0];
  [v18 setAlignment:3];
  [v18 setDistribution:0];
  [v0 addSubview:v18];
  v19 = sub_1001F4580(&OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___soundButton, sub_1001F3C3C);
  [v18 addArrangedSubview:v19];

  v20 = sub_1001F4580(&OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___callAgainButton, sub_1001F40E0);
  [v18 addArrangedSubview:v20];

  v60 = objc_opt_self();
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002FF450;
  v22 = [v0 layoutMarginsGuide];
  v23 = [v22 topAnchor];

  v24 = OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___cancelButton;
  v25 = [*&v0[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___cancelButton] topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];

  *(v21 + 32) = v26;
  v27 = [v0 layoutMarginsGuide];
  v28 = [v27 leadingAnchor];

  v29 = [*&v0[v24] leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:12.0];

  *(v21 + 40) = v30;
  v31 = [v2 topAnchor];
  v32 = [*&v0[v24] bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v21 + 48) = v33;
  v34 = [v0 layoutMarginsGuide];
  v35 = [v34 leadingAnchor];

  v36 = [v2 leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:-20.0];

  *(v21 + 56) = v37;
  v38 = [v0 layoutMarginsGuide];
  v39 = [v38 trailingAnchor];

  v40 = [v2 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:20.0];

  *(v21 + 64) = v41;
  v42 = [v0 layoutMarginsGuide];
  v43 = [v42 leadingAnchor];

  v44 = [v18 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-20.0];

  *(v21 + 72) = v45;
  v46 = [v0 layoutMarginsGuide];
  v47 = [v46 trailingAnchor];

  v48 = [v18 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:20.0];

  *(v21 + 80) = v49;
  v50 = [v0 layoutMarginsGuide];
  v51 = [v50 bottomAnchor];

  v52 = [v18 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:20.0];

  *(v21 + 88) = v53;
  v54 = [v2 bottomAnchor];

  v55 = [v18 topAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:-20.0];

  *(v21 + 96) = v56;
  v57 = [*&v0[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___callAgainButton] heightAnchor];
  v58 = [*&v0[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___soundButton] heightAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v21 + 104) = v59;
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v60 activateConstraints:isa];
}

void sub_1001F552C()
{
  *(v0 + OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___soundButton) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___callAgainButton) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___cancelButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1001F56E8(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

id sub_1001F5730()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for CarPlayAlertView();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void sub_1001F5788()
{
  type metadata accessor for CarPlayAlertView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView:v1];
}

void sub_1001F5830()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    v4 = sub_1001F5730();
    if (v4)
    {
      v5 = v4;
      sub_100006EF0();
      v8 = sub_1001F4580(v6, v7);
      sub_1000086D4(v8, v9, v10, "playSound");

      sub_10000C53C();
      v13 = sub_1001F4580(v11, v12);
      sub_1000086D4(v13, v14, v15, "callAgain");

      sub_100007954();
      v18 = sub_1001F4580(v16, v17);
      sub_1000086D4(v18, v19, v20, "closeAlert");
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1001F59AC(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a1 & 1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alertViewWillDismiss];
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001F5A74(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10014EA98(&qword_1003AAA90, qword_1002FAD50);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  sub_100005E0C();
  v108 = v10;
  sub_100008138();
  __chkstk_darwin(v11);
  sub_100005E0C();
  v103 = v12;
  sub_100008138();
  __chkstk_darwin(v13);
  sub_100005E0C();
  v102 = v14;
  sub_100008138();
  __chkstk_darwin(v15);
  sub_100005E0C();
  v105 = v16;
  sub_100008138();
  __chkstk_darwin(v17);
  sub_100005E0C();
  v107 = v18;
  sub_100008138();
  __chkstk_darwin(v19);
  sub_100005E0C();
  v101 = v20;
  sub_100008138();
  __chkstk_darwin(v21);
  sub_100005E0C();
  v100 = v22;
  sub_100008138();
  v24 = __chkstk_darwin(v23);
  v26 = &v100 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v100 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v100 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v100 - v34;
  __chkstk_darwin(v33);
  v37 = &v100 - v36;
  v110.receiver = v2;
  v110.super_class = ObjectType;
  objc_msgSendSuper2(&v110, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v38 = sub_1001F5730();
  if (v38)
  {
    v39 = v38;
    v106 = v9;
    v104 = v32;
    v109 = a1;
    v40 = [a1 nextFocusedView];
    sub_10000C53C();
    v43 = sub_1001F4580(v41, v42);
    v44 = v43;
    if (v40)
    {
      sub_1000064BC(0, &qword_1003AAAD0, UIView_ptr);
      v45 = static NSObject.== infix(_:_:)();

      v46 = v107;
      if (v45)
      {
        v47 = OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___callAgainButton;
        v48 = *&v39[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___callAgainButton];
        UIButton.configuration.getter();
        type metadata accessor for UIButton.Configuration();
        if (sub_100006A40(v37))
        {
          v49 = v104;
          sub_100158DE8(v37, v104);
          sub_100007354();

          sub_100158E58(v37);
        }

        else
        {
          v58 = [objc_opt_self() systemBlueColor];
          UIButton.Configuration.baseBackgroundColor.setter();
          UIButton.configuration.setter();

          v49 = v104;
        }

        v59 = *&v39[v47];
        sub_10000A504();
        v60 = sub_1000096B0();
        v57 = v108;
        if (v60)
        {
          sub_1000071EC();
          sub_100007354();

          sub_100158E58(v35);
        }

        else
        {
          v61 = [objc_opt_self() systemWhiteColor];
          UIButton.Configuration.baseForegroundColor.setter();
          UIButton.configuration.setter();
        }

        v54 = v106;
        goto LABEL_19;
      }
    }

    else
    {

      v46 = v107;
    }

    v50 = OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___callAgainButton;
    v51 = *&v39[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___callAgainButton];
    UIButton.configuration.getter();
    v52 = type metadata accessor for UIButton.Configuration();
    if (sub_100006AC0(v29, 1, v52))
    {
      v49 = v104;
      sub_100158DE8(v29, v104);
      sub_100007354();

      sub_100158E58(v29);
    }

    else
    {
      v53 = [objc_opt_self() secondarySystemBackgroundColor];
      UIButton.Configuration.baseBackgroundColor.setter();
      UIButton.configuration.setter();

      v49 = v104;
    }

    v54 = v106;
    v55 = *&v39[v50];
    UIButton.configuration.getter();
    if (sub_100006AC0(v26, 1, v52))
    {
      sub_100158DE8(v26, v49);
      sub_100007354();

      sub_100158E58(v26);
    }

    else
    {
      v56 = [objc_opt_self() systemBlueColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    v57 = v108;
LABEL_19:
    v62 = v109;
    v63 = [v109 nextFocusedView];
    sub_100006EF0();
    v66 = sub_1001F4580(v64, v65);
    v67 = v66;
    if (v63)
    {
      sub_1000064BC(0, &qword_1003AAAD0, UIView_ptr);
      v68 = static NSObject.== infix(_:_:)();

      if (v68)
      {
        v69 = OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___soundButton;
        v70 = *&v39[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___soundButton];
        v71 = v100;
        UIButton.configuration.getter();
        type metadata accessor for UIButton.Configuration();
        if (sub_100006A40(v71))
        {
          sub_100158DE8(v71, v49);
          UIButton.configuration.setter();

          sub_100158E58(v71);
        }

        else
        {
          v78 = [objc_opt_self() systemBlueColor];
          UIButton.Configuration.baseBackgroundColor.setter();
          UIButton.configuration.setter();
        }

        v79 = *&v39[v69];
        v80 = v101;
        sub_10000A504();
        if (sub_1000096B0())
        {
          sub_1000071EC();
          sub_100026FB8();

          sub_100158E58(v80);
        }

        else
        {
          v81 = [objc_opt_self() systemWhiteColor];
          UIButton.Configuration.baseForegroundColor.setter();
          UIButton.configuration.setter();
        }

        v54 = v106;
        goto LABEL_36;
      }
    }

    else
    {
    }

    v72 = OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___soundButton;
    v73 = *&v39[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___soundButton];
    UIButton.configuration.getter();
    type metadata accessor for UIButton.Configuration();
    if (sub_100006A40(v46))
    {
      sub_100158DE8(v46, v49);
      UIButton.configuration.setter();

      sub_100158E58(v46);
    }

    else
    {
      v74 = [objc_opt_self() secondarySystemBackgroundColor];
      UIButton.Configuration.baseBackgroundColor.setter();
      UIButton.configuration.setter();
    }

    v75 = *&v39[v72];
    v76 = v105;
    sub_10000A504();
    if (sub_1000096B0())
    {
      sub_1000071EC();
      sub_100026FB8();

      sub_100158E58(v76);
    }

    else
    {
      v77 = [objc_opt_self() systemBlueColor];
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }

    v62 = v109;
LABEL_36:
    v82 = [v62 nextFocusedView];
    sub_100007954();
    v85 = sub_1001F4580(v83, v84);
    v86 = v85;
    if (v82)
    {
      sub_1000064BC(0, &qword_1003AAAD0, UIView_ptr);
      v87 = static NSObject.== infix(_:_:)();

      if (v87)
      {
        v88 = OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___cancelButton;
        v89 = *&v39[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___cancelButton];
        v90 = v102;
        UIButton.configuration.getter();
        type metadata accessor for UIButton.Configuration();
        if (sub_100006A40(v90))
        {
          sub_100158DE8(v90, v49);
          sub_100026FB8();

          sub_100158E58(v90);
        }

        else
        {
          v97 = [objc_opt_self() systemBlueColor];
          UIButton.Configuration.baseBackgroundColor.setter();
          UIButton.configuration.setter();
        }

        v94 = *&v39[v88];
        v98 = v103;
        sub_10000A504();
        if (sub_1000096B0())
        {
          sub_1000071EC();
          sub_100026FB8();

          v95 = v98;
          goto LABEL_50;
        }

        v99 = [objc_opt_self() systemWhiteColor];
        UIButton.Configuration.baseForegroundColor.setter();
LABEL_52:
        UIButton.configuration.setter();

        return;
      }
    }

    else
    {
    }

    v91 = OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___cancelButton;
    v92 = *&v39[OBJC_IVAR____TtC13InCallService16CarPlayAlertView____lazy_storage___cancelButton];
    UIButton.configuration.getter();
    type metadata accessor for UIButton.Configuration();
    if (sub_100006A40(v57))
    {
      sub_100158DE8(v57, v49);
      sub_100026FB8();

      sub_100158E58(v57);
    }

    else
    {
      v93 = [objc_opt_self() clearColor];
      UIButton.Configuration.baseBackgroundColor.setter();
      UIButton.configuration.setter();
    }

    v94 = *&v39[v91];
    UIButton.configuration.getter();
    if (sub_100006A40(v54))
    {
      sub_100158DE8(v54, v49);
      sub_100026FB8();

      v95 = v54;
LABEL_50:
      sub_100158E58(v95);
      return;
    }

    v96 = [objc_opt_self() systemBlueColor];
    UIButton.Configuration.baseForegroundColor.setter();
    goto LABEL_52;
  }
}

double sub_1001F6534(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong *a1];

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001F6648(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_1001F6758(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1001F6838()
{
  result = [objc_opt_self() tu_contactStore];
  qword_1003AE5D8 = result;
  return result;
}

uint64_t sub_1001F6874()
{
  if (qword_1003AA0B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1003AE5D8;
  type metadata accessor for ContactKeys();
  v1 = v0;
  static ContactKeys.poster.getter();
  type metadata accessor for ContactsService();
  swift_allocObject();
  result = ContactsService.init(contactStore:keys:)();
  qword_1003AE5E0 = result;
  return result;
}

void sub_1001F6914()
{
  if ([v0 isViewLoaded])
  {
    v1 = [v0 existingPrioritizedCall];
    if (v1)
    {
      v2 = v1;
      v3 = [v0 contactForCall:v1];
      if (v3 || (sub_1001F6A18(), v3))
      {
        v7 = v3;
        v4 = [v0 posterViewController];
        if (v4)
        {
        }

        else
        {
          sub_1001F6C98(v7);
          sub_1001F71D0();
          v5 = sub_1001C4570();
        }

        [v0 updatePosterSaliencyRect];
        sub_1001F768C();
        sub_1001F776C(v7);

        v6 = v7;
      }

      else
      {
        v6 = v2;
      }
    }
  }
}

void sub_1001F6A18()
{
  v1 = v0;
  v2 = [v0 existingPrioritizedCall];
  if (!v2 || !sub_1002402A8(v2))
  {
    v8 = [v0 existingPrioritizedCall];
    v9 = v8;
    if (!v8)
    {
      return;
    }

    v10 = [v8 handle];

    if (!v10)
    {
      return;
    }

    sub_1000064BC(0, &qword_1003AAF78, CNMutableContact_ptr);
    v7 = CNMutableContact.init(handle:)();
    if (!v7)
    {
      return;
    }

LABEL_10:
    v11 = v7;
    v12 = [v11 givenName];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16)
    {
      v17 = [v1 getParticipantsView_WaitingOrNot];
      v18 = [v17 singleCallLabelView];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 participantMarqueeLabel];

        if (!v20)
        {
          __break(1u);
          return;
        }

        sub_1001F8A08(v20);
        if (v21)
        {
          v22 = String._bridgeToObjectiveC()();

          [v11 setGivenName:v22];
        }
      }

      v11 = v17;
    }

    return;
  }

  v3 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 predicateForContactsWithIdentifiers:isa];

  if (qword_1003AA0B8 != -1)
  {
    swift_once();
  }

  v6 = ContactsService.findContact(predicate:)(v5);
  v7 = [objc_allocWithZone(CNMutableContact) initWithContact:v6];

  if (v7)
  {
    goto LABEL_10;
  }
}

void sub_1001F6C98(void *a1)
{
  v2 = v1;
  v4 = [v2 layoutGuidesProvider];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (qword_1003AA0B0 != -1)
  {
    swift_once();
  }

  v6 = qword_1003AE5D8;
  v7 = [v5 sensitiveContentWarningCenteringLayoutGuide];
  type metadata accessor for PosterViewController.Model();
  swift_allocObject();
  v8 = a1;
  PosterViewController.Model.init(contact:contactStore:contactNameLayoutGuide:externalTextViewController:prefersHorizontalTextLayout:sensitiveContentWarningCenteringLayoutGuide:showContactNameInPoster:)();
  v9 = objc_allocWithZone(type metadata accessor for PosterViewController());
  v46 = PosterViewController.init(model:)();
  v10 = [v46 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  PosterViewController.showTextInPoster(_:)(0);
  [v2 addChildViewController:v46];
  v12 = [v2 backgroundController];
  v13 = [v46 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [*&v12[OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_backgroundContainer] addSubview:v13];

  v48.value.super.super.isa = v2;
  PosterViewController.didMove(toParent:)(v48);
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002FB360;
  v16 = [v46 view];
  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v2 view];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v15 + 32) = v22;
  v23 = [v46 view];
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v2 view];
  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor:v28];
  *(v15 + 40) = v29;
  v30 = [v46 view];
  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v2 view];
  if (!v33)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v34 = v33;
  v35 = [v33 trailingAnchor];

  v36 = [v32 constraintEqualToAnchor:v35];
  *(v15 + 48) = v36;
  v37 = [v46 view];
  if (!v37)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = [v2 view];
  if (!v40)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v41 = v40;
  v42 = [v40 bottomAnchor];

  v43 = [v39 constraintEqualToAnchor:v42];
  *(v15 + 56) = v43;
  v44 = objc_opt_self();
  sub_1000064BC(0, &qword_1003AAF70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v44 activateConstraints:isa];

  [v2 setPosterViewController:v46];
}

void sub_1001F71D0()
{
  v1 = sub_10014EA98(&qword_1003AE220, &qword_1002FDB20);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_10014EA98(&qword_1003AE618, &qword_1002FF4D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_10014EA98(&qword_1003AE620, &qword_1002FF4D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = [v0 posterViewController];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for PosterViewController();
    if (swift_dynamicCastClass())
    {
      v26 = v0;
      PosterViewController.$currentPosterType.getter();
      sub_1000064BC(0, &qword_1003AAAB0, OS_dispatch_queue_ptr);
      v14 = static OS_dispatch_queue.main.getter();
      v27 = v9;
      v28 = v14;
      v15 = v14;
      v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      sub_100006848(v3, 1, 1, v16);
      sub_100027E08(&qword_1003AE628, &qword_1003AE618, &qword_1002FF4D0, &protocol conformance descriptor for Published<A>.Publisher);
      sub_100027E50();
      Publisher.receive<A>(on:options:)();
      sub_1000306A4(v3, &qword_1003AE220, &qword_1002FDB20);

      (*(v5 + 8))(v7, v4);
      swift_allocObject();
      v17 = v26;
      swift_unknownObjectWeakInit();
      sub_100027E08(&qword_1003AE630, &qword_1003AE620, &qword_1002FF4D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v18 = Publisher<>.sink(receiveValue:)();

      (v27[1].isa)(v11, v8);
      sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1002FBD90;
      *(v19 + 32) = v18;
      objc_allocWithZone(type metadata accessor for Subscriptions());

      v20 = sub_1001F87A4(v19);
      [v17 setPosterTypeCancellable:v20];

      return;
    }
  }

  if (qword_1003A9F70 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008A14(v21, &unk_1003B88B0);
  v27 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v27, v22, "Unable to update poster saliency rect because posterViewController is nil.", v23, 2u);
  }

  v24 = v27;
}

void sub_1001F768C()
{
  v1 = [v0 posterViewController];
  if (v1)
  {
    v2 = v1;
    v5 = [v1 view];
    if (v5)
    {
      v3 = [v0 callDisplayStyleManager];
      v4 = [v3 callDisplayStyle];

      [v5 setHidden:v4 == 0];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1001F776C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PosterSlot();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 callDisplayStyleManager];
  v9 = [v8 callDisplayStyle];

  if (v9 != 3)
  {
    type metadata accessor for PosterDataService();
    v11 = qword_1003AA0B0;
    v12 = a1;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_1003AE5D8;
    PosterDataService.__allocating_init(contact:contactStore:)();
    (*(v5 + 104))(v7, enum case for PosterSlot.current(_:), v4);
    v14 = PosterDataService.posterConfiguration(for:)();
    (*(v5 + 8))(v7, v4);
    if (v14)
    {
    }

    else
    {
    }
  }

  return result;
}

void sub_1001F79C4()
{
  if (qword_1003A9F70 != -1)
  {
    sub_10000796C(&qword_1003A9F70);
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, &unk_1003B88B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Transition to new poster if needed.", v4, 2u);
    sub_100005BB8(v4);
  }

  v5 = [v0 posterViewController];
  if (v5)
  {
    v8 = v5;
    type metadata accessor for PosterViewController();
    if (swift_dynamicCastClass())
    {
      PosterViewController.acceptAndTransitionToNewPoster()();
      goto LABEL_11;
    }
  }

  v8 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    sub_100005BB8(v7);
  }

LABEL_11:
}

void sub_1001F7BA0()
{
  v1 = v0;
  if (![v0 isViewLoaded])
  {
    goto LABEL_8;
  }

  v2 = [v0 posterViewController];
  if (!v2)
  {
    goto LABEL_8;
  }

  v46 = v2;
  type metadata accessor for PosterViewController();
  if (!swift_dynamicCastClass())
  {

LABEL_8:
    if (qword_1003A9F70 != -1)
    {
      sub_10000796C(&qword_1003A9F70);
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B88B0);
    v47 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v47, v5, "Unable to update poster saliency rect because posterViewController is nil.", v6, 2u);
      sub_100005BB8(v6);
    }

    goto LABEL_12;
  }

  v3 = [v0 posterSaliencyRectLayoutGuide];
  if (!v3)
  {
LABEL_12:
    sub_1000096CC();

    return;
  }

  v45 = v3;
  PosterViewController.saliencyRect.getter();
  sub_100008144();
  [v45 layoutFrame];
  v50.origin.x = sub_100006E1C();
  if (CGRectEqualToRect(v50, v57))
  {

    goto LABEL_12;
  }

  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 userInterfaceLayoutDirection];

  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_31;
  }

  v12 = v11;
  [v11 bounds];
  sub_100008144();

  v51.origin.x = sub_100006E1C();
  Width = CGRectGetWidth(v51);
  v14 = [v1 view];
  if (!v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v15 = v14;
  [v14 bounds];
  sub_100008144();

  v52.origin.x = sub_100006E1C();
  Height = CGRectGetHeight(v52);
  [v45 layoutFrame];
  if (v10 != 1 || Height >= Width)
  {
    goto LABEL_24;
  }

  v18 = [v1 view];
  if (!v18)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v19 = v18;
  [v18 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v53.origin.x = v21;
  v53.origin.y = v23;
  v53.size.width = v25;
  v53.size.height = v27;
  CGRectGetWidth(v53);
  v54.origin.x = sub_10000C554();
  CGRectGetWidth(v54);
  v55.origin.x = sub_10000C554();
  CGRectGetWidth(v55);
  v56.origin.x = sub_10000C554();
  CGRectGetHeight(v56);
LABEL_24:
  PosterViewController.saliencyRect.setter();
  v28 = PosterViewController.occlusionRects.modify();
  v30 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v30;
  sub_100231790(0x736C6F72746E6F63, 0xEC00000061657241, isUniquelyReferenced_nonNull_native, 0.0, 0.0, 0.0, 0.0);
  *v30 = v48;
  v28(v49, 0);
  if (qword_1003A9F70 != -1)
  {
    sub_10000796C(&qword_1003A9F70);
  }

  v32 = type metadata accessor for Logger();
  sub_100008A14(v32, &unk_1003B88B0);
  v33 = v46;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48 = v37;
    *v36 = 136315138;
    PosterViewController.saliencyRect.getter();
    v49[0] = v38;
    v49[1] = v39;
    v49[2] = v40;
    v49[3] = v41;
    type metadata accessor for CGRect(0);
    v42 = String.init<A>(reflecting:)();
    v44 = sub_100008ADC(v42, v43, &v48);

    *(v36 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "Updating poster saliency rect with: %s", v36, 0xCu);
    sub_100005B2C(v37);
    sub_100005BB8(v37);
    sub_100005BB8(v36);
  }

  else
  {
  }

  sub_1000096CC();
}

void sub_1001F80E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10014EA98(&qword_1003AE638, &qword_1002FF4E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v35 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong layoutGuidesProvider];
    if (!v17)
    {
LABEL_17:

      return;
    }

    v18 = v17;
    sub_1001F8998(a1, v14);
    v19 = type metadata accessor for PosterType();
    if (sub_100006AC0(v14, 1, v19) != 1)
    {
      sub_1001F8998(v14, v12);
      v21 = *(v19 - 8);
      v22 = (*(v21 + 88))(v12, v19);
      if (v22 == enum case for PosterType.photo(_:))
      {
        v20 = &selRef_photoPosterLayoutGuide;
        goto LABEL_9;
      }

      if (v22 == enum case for PosterType.memoji(_:))
      {
        v20 = &selRef_memojiPosterLayoutGuide;
        goto LABEL_9;
      }

      (*(v21 + 8))(v12, v19);
    }

    v20 = &selRef_monogramPosterLayoutGuide;
LABEL_9:
    v23 = [v18 *v20];
    [v16 setPosterSaliencyRectLayoutGuide:v23];

    sub_1000306A4(v14, &qword_1003AE638, &qword_1002FF4E0);
    if (qword_1003A9F70 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008A14(v24, &unk_1003B88B0);
    sub_1001F8998(a1, v9);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v25, v26))
    {

      sub_1000306A4(v9, &qword_1003AE638, &qword_1002FF4E0);
      return;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 136315138;
    sub_1001F8998(v9, v6);
    if (sub_100006AC0(v6, 1, v19) == 1)
    {
      sub_1000306A4(v6, &qword_1003AE638, &qword_1002FF4E0);
      sub_1000306A4(v9, &qword_1003AE638, &qword_1002FF4E0);
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    else
    {
      v31 = PosterType.description.getter();
      v36 = v32;
      (*(*(v19 - 8) + 8))(v6, v19);
      v37 = v31;
      v38 = v36;
      v30 = String.init<A>(reflecting:)();
      v29 = v33;
      sub_1000306A4(v9, &qword_1003AE638, &qword_1002FF4E0);
    }

    v34 = sub_100008ADC(v30, v29, &v39);

    *(v27 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Poster type: %s", v27, 0xCu);
    sub_100005B2C(v28);

    goto LABEL_17;
  }
}

void sub_1001F8584()
{
  v1 = [v0 posterViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for PosterViewController();
    if (swift_dynamicCastClass())
    {
      PosterViewController.activatePoster(_:)(0);
    }
  }
}

void sub_1001F8658()
{
  v1 = [v0 posterViewController];
  if (!v1)
  {
    return;
  }

  v6 = v1;
  type metadata accessor for PosterViewController();
  if (swift_dynamicCastClass())
  {
    v2 = [v0 view];
    if (v2)
    {
      v3 = v2;
      [v2 setNeedsLayout];

      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 layoutIfNeeded];

        PosterViewController.activatePoster(_:)(1);
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_6:
}

id sub_1001F87A4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13InCallServiceP33_22DD7D36B791DB91ED677251C840B84113Subscriptions_cancellables] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

void sub_1001F87F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallServiceP33_22DD7D36B791DB91ED677251C840B84113Subscriptions_cancellables);
  v2 = sub_100017230(v1);

  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    AnyCancellable.cancel()();
  }
}

uint64_t sub_1001F8998(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AE638, &qword_1002FF4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001F8A08(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void DisplayHandler<>.callDisplayStyleDidChange(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 subviews];

    sub_1001F8CAC();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_100017230(v6);
    v8 = 0;
    while (v7 != v8)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (swift_dynamicCastObjCProtocolConditional())
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v8;
      }

      else
      {

        ++v8;
      }
    }

    v11 = sub_100017230(_swiftEmptyArrayStorage);
    for (i = 0; v11 != i; ++i)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v13 = _swiftEmptyArrayStorage[i + 4];
        swift_unknownObjectRetain();
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_25;
      }

      [v13 callDisplayStyleDidChangeFromStyle:a1 toStyle:a2];
      swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_27:
    __break(1u);
  }
}

unint64_t sub_1001F8CAC()
{
  result = qword_1003AAAD0;
  if (!qword_1003AAAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AAAD0);
  }

  return result;
}

double sub_1001F8D94(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void *sub_1001F8E10()
{
  v1 = *(v0 + OBJC_IVAR___PHInCallAudioButtonsViewController_prioritizedCall);
  v2 = v1;
  return v1;
}

uint64_t sub_1001F8E9C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PHInCallAudioButtonsViewController_prioritizedCall);
  *(v1 + OBJC_IVAR___PHInCallAudioButtonsViewController_prioritizedCall) = a1;
  return _objc_release_x1(a1, v2);
}

void sub_1001F8EB0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AudioCallView();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___PHInCallAudioButtonsViewController_hostingController] = 0;
  *&v1[OBJC_IVAR___PHInCallAudioButtonsViewController_prioritizedCall] = 0;
  v51.receiver = v1;
  v51.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v51, "initWithNibName:bundle:", 0, 0);
  (*(v6 + 16))(v8, a1, v5);
  v10 = objc_allocWithZone(sub_10014EA98(&qword_1003AE680, &unk_1002FF540));
  v11 = UIHostingController.init(rootView:)();
  v12 = *&v9[OBJC_IVAR___PHInCallAudioButtonsViewController_hostingController];
  *&v9[OBJC_IVAR___PHInCallAudioButtonsViewController_hostingController] = v11;
  v13 = v11;

  v14 = v13;
  [v9 addChildViewController:v14];
  v15 = sub_100006F08();
  if (!v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  v17 = sub_10000798C();
  if (!v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  [v16 addSubview:v17];

  v19 = sub_10000798C();
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  UIHostingController.safeAreaRegions.setter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v20 = sub_10000798C();

  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = [objc_opt_self() clearColor];
  [v20 setBackgroundColor:v21];

  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002FB360;
  v23 = sub_10000798C();

  if (!v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v50 = v5;
  v24 = [v23 topAnchor];

  v25 = sub_100006F08();
  if (!v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v25;
  v49 = a1;
  v27 = [v25 topAnchor];

  v28 = sub_10000C568();
  *(v22 + 32) = v28;
  v29 = sub_10000798C();

  if (!v29)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = [v29 bottomAnchor];

  v31 = sub_100006F08();
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = sub_10000C568();
  *(v22 + 40) = v34;
  v35 = sub_10000798C();

  if (!v35)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v36 = [v35 leadingAnchor];

  v37 = sub_100006F08();
  if (!v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = v37;
  v39 = [v37 leadingAnchor];

  v40 = sub_10000C568();
  *(v22 + 48) = v40;
  v41 = sub_10000798C();

  if (!v41)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v42 = [v41 trailingAnchor];

  v43 = sub_100006F08();
  if (v43)
  {
    v44 = v43;
    v45 = objc_opt_self();
    v46 = [v44 trailingAnchor];

    v47 = [v42 constraintEqualToAnchor:v46];
    *(v22 + 56) = v47;
    sub_100162160();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 activateConstraints:isa];

    [v14 didMoveToParentViewController:v9];
    (*(v6 + 8))(v49, v50);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1001F9474(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___PHInCallAudioButtonsViewController_hostingController] = 0;
  *&v1[OBJC_IVAR___PHInCallAudioButtonsViewController_prioritizedCall] = 0;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  if (objc_msgSendSuper2(&v5, "initWithCoder:", a1))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

void sub_1001F9668(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1001F96D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1001F9748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10014EA98(&qword_1003AAB40, &unk_1002FAAB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  sub_1001B7320(a2, &v11 - v7);
  v9 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100006AC0(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, a1, isa);
}

void sub_1001F98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100005984();
  a21 = v24;
  a22 = v25;
  v26 = sub_10003027C();
  v27 = (*(v23 + 40))(v26, v23);
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v28 = type metadata accessor for Logger();
  sub_100008A14(v28, &unk_1003B8850);
  v29 = v22;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    swift_slowAlloc();
    v32 = sub_10000A51C();
    a12 = v32;
    sub_100007204(4.8151e-34, v32, v33);
    v34 = sub_10014EA98(&qword_1003AE1A0, &unk_1002FF600);
    v36 = sub_100005480(v34, v35);
    sub_100008ADC(v36, v37, &a12);
    sub_100036210();

    *(v29 + 4) = v23;
    *(v29 + 6) = 1024;
    *(v29 + 14) = v27 & 1;
    sub_1000085F4();
    _os_log_impl(v38, v39, v40, v41, v42, 0x12u);
    sub_100005B2C(v32);
    sub_100006A58();
    sub_100005BB8(v29);
  }

  sub_100005C78();
}

void sub_1001F9A60(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v26 = va_arg(va1, void *);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);
  v32 = va_arg(va1, void);
  v33 = va_arg(va1, void);
  v34 = va_arg(va1, void);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  sub_100005984();
  v36 = v8;
  v37 = v9;
  v11 = v10;
  v12 = *&v7[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 32))(ObjectType, v12);
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v15 = type metadata accessor for Logger();
  sub_100008A14(v15, &unk_1003B8850);
  v16 = v7;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315394;
    swift_unknownObjectRetain();
    v21 = sub_10014EA98(&qword_1003AE1A0, &unk_1002FF600);
    v23 = sub_100005480(v21, v22);
    v25 = sub_100008ADC(v23, v24, va);

    *(v19 + 4) = v25;
    *(v19 + 12) = 1024;
    *(v19 + 14) = v14 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, v11, v19, 0x12u);
    sub_100005B2C(v20);
    sub_100005BB8(v20);
    sub_100006A58();
  }

  sub_100005C78();
}

void sub_1001F9C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100005984();
  a21 = v24;
  a22 = v25;
  v26 = sub_10003027C();
  (*(v23 + 56))(v26, v23);
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v27 = type metadata accessor for Logger();
  sub_100008A14(v27, &unk_1003B8850);
  v28 = v22;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    swift_slowAlloc();
    v31 = sub_10000A51C();
    a12 = v31;
    sub_100007204(4.8151e-34, v31, v32);
    v33 = sub_10014EA98(&qword_1003AE1A0, &unk_1002FF600);
    v35 = sub_100005480(v33, v34);
    sub_100008ADC(v35, v36, &a12);
    sub_100036210();

    sub_100008C60();
    sub_1000085F4();
    _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
    sub_100005B2C(v31);
    sub_100006A58();
    sub_100005BB8(v28);
  }

  sub_100005C78();
}

void sub_1001F9DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100005984();
  a21 = v24;
  a22 = v25;
  v26 = sub_10003027C();
  v27 = (*(v23 + 64))(v26, v23);
  sub_100017230(v27);

  if (qword_1003A9F50 != -1)
  {
    sub_10000706C(&qword_1003A9F50);
  }

  v28 = type metadata accessor for Logger();
  sub_100008A14(v28, &unk_1003B8850);
  v29 = v22;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    swift_slowAlloc();
    v32 = sub_10000A51C();
    a12 = v32;
    sub_100007204(4.8151e-34, v32, v33);
    v34 = sub_10014EA98(&qword_1003AE1A0, &unk_1002FF600);
    v36 = sub_100005480(v34, v35);
    sub_100008ADC(v36, v37, &a12);
    sub_100036210();

    sub_100008C60();
    sub_1000085F4();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    sub_100005B2C(v32);
    sub_100006A58();
    sub_100005BB8(v29);
  }

  sub_100005C78();
}

void *sub_1001F9F60()
{
  v39 = type metadata accessor for UUID();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000736C();
  v8 = v0[8];
  v37 = v7;
  v38 = v1;
  v40 = v0;
  v9 = v8(v7, v0);
  v10 = sub_100017230(v9);
  if (v10)
  {
    v11 = v10;
    v43 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = 0;
      v14 = v40[11];
      v15 = v40[12];
      v32 = v40 + 12;
      v33 = v14;
      v34 = v40 + 11;
      v35 = v11;
      v16 = v40[13];
      v30 = v40 + 13;
      v31 = v15;
      v28 = v9 & 0xC000000000000001;
      v29 = v16;
      v27 = (v3 + 8);
      v36 = v9;
      do
      {
        if (v28)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v17 = *(v9 + 8 * v13 + 32);
        }

        v18 = v17;
        ++v13;
        v19 = [v17 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = v33(v6, v37, v40);
        v20 = *v27;
        v21 = v39;
        (*v27)(v6, v39);
        v22 = [v18 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = sub_10000B4B0();
        v41 = v31(v23);
        v20(v6, v21);
        v24 = [v18 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = sub_10000B4B0();
        LOBYTE(v24) = v29(v25);
        v20(v6, v21);
        v26 = objc_allocWithZone(type metadata accessor for VoicemailAccount(0));
        sub_10015E9E8(v18, v42 & 1, v41 & 1, v24 & 1);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 = v36;
      }

      while (v35 != v13);

      return v43;
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1001FA268()
{
  sub_10000C584();
  sub_1000080F0();
  v0 = sub_10000967C();
  return v1(v0) & 1;
}

uint64_t sub_1001FA2B8()
{
  sub_10000C584();
  sub_1000080F0();
  v0 = sub_10000967C();
  return v1(v0) & 1;
}

uint64_t sub_1001FA308()
{
  sub_10000C584();
  sub_1000080F0();
  v0 = sub_10000967C();
  return v1(v0) & 1;
}

char *sub_1001FA454(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher;
  sub_10014EA98(&qword_1003AC868, &qword_1002FD1F8);
  swift_allocObject();
  *&v1[v4] = PassthroughSubject.init()();
  *&v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_cancellables] = _swiftEmptyArrayStorage;
  v5 = &v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  *v5 = a1;
  *(v5 + 1) = &off_10035FB20;
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v24, "init");
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = type metadata accessor for VoicemailDelegateDecorator(0);
  v10 = objc_allocWithZone(v9);
  v11 = v7;
  v12 = sub_100159030(&unk_1002FF5F8, v8);
  v13 = *&v11[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  v14 = swift_getObjectType();
  v15 = *(v13 + 16);
  swift_unknownObjectRetain();
  v16 = v12;
  v15(v12, v14, v13);
  swift_unknownObjectRelease();
  v23 = v9;
  *&v22 = v16;
  v17 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_cancellables;
  swift_beginAccess();
  sub_10021689C(v18);
  v19 = *(*&v11[v17] + 16);
  sub_10021696C(v19);
  v20 = *&v11[v17];
  *(v20 + 16) = v19 + 1;
  sub_100034DBC(&v22, (v20 + 32 * v19 + 32));
  *&v11[v17] = v20;
  swift_endAccess();

  return v11;
}

uint64_t sub_1001FA658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_10014EA98(&qword_1003AC878, &qword_1002FD200);
  v4 = swift_task_alloc();
  v5 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher;
  v3[6] = v4;
  v3[7] = v5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100153804();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001FA738, v7, v6);
}

uint64_t sub_1001FA764()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 48);
  *v1 = v3;
  sub_1001B7320(v2, v1 + v4);
  v5 = v3;
  PassthroughSubject.send(_:)();
  sub_1001FBDD4(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001FA86C()
{
  sub_10000C584();
  sub_1000080F0();
  v0 = sub_10000967C();
  return v1(v0) & 1;
}

uint64_t sub_1001FA8D4()
{
  v3 = sub_100005CB0();
  sub_10000688C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100008690();
  v7 = v1;
  v8 = v0(v2);

  (*(v5 + 8))(v2, v3);
  return v8 & 1;
}

uint64_t sub_1001FA994()
{
  sub_10000C584();
  sub_1000080F0();
  v0 = sub_10000967C();
  return v1(v0);
}

uint64_t sub_1001FA9F8()
{
  sub_10000C584();
  sub_1000080F0();
  v0 = sub_10000967C();
  return v1(v0);
}

uint64_t sub_1001FAA5C()
{
  v3 = sub_100005CB0();
  sub_10000688C();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100008690();
  v7 = v1;
  v8 = v0(v2);

  (*(v5 + 8))(v2, v3);
  return v8;
}

uint64_t sub_1001FAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v11 + 136))(a1, a2, a3, a4, a5, ObjectType, v11);
}

uint64_t sub_1001FAD0C()
{
  sub_10000C584();
  sub_1000080F0();
  v0 = sub_10000967C();
  return v1(v0);
}

uint64_t sub_1001FAE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v7 + 152))(a1, a2, a3, ObjectType, v7);
}

uint64_t sub_1001FAFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v9 + 160))(a1, a2, a3, a4, ObjectType, v9);
}

uint64_t sub_1001FB1CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10014EA98(&qword_1003AA7B0, &qword_1002FA970);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = type metadata accessor for TaskPriority();
  sub_100006848(v7, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = sub_100153804();
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v2;
  v12[5] = v8;
  v13 = v2;

  sub_1001625C0();
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v14 = AnyCancellable.init(_:)();

  return v14;
}

uint64_t sub_1001FB348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100153804();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001FB3E4, v7, v6);
}

uint64_t sub_1001FB3E4()
{
  v1 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher);

  sub_10014EA98(&qword_1003AC868, &qword_1002FD1F8);
  sub_1001B5FB4();
  v2 = Publisher<>.sink(receiveValue:)();

  *v1 = v2;
  v3 = v0[1];

  return v3();
}

double sub_1001FB60C(uint64_t a1)
{
  [v1 setDelegate:a1];

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1001FB6BC()
{
  v1 = [v0 accounts];
  sub_1001FBE3C();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1001FB740()
{
  v1 = [v0 transcriptionProgress];

  return v1;
}

id sub_1001FB77C()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isCallVoicemailSupportedForAccountUUID:isa];

  return v3;
}

id sub_1001FB7CC()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isAccountSubscribed:isa];

  return v3;
}

id sub_1001FB81C()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isGreetingChangeSupportedForAccountUUID:isa];

  return v3;
}

id sub_1001FB86C()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isPasscodeChangeSupportedForAccountUUID:isa];

  return v3;
}

id sub_1001FB8BC()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 maximumPasscodeLengthForAccountUUID:isa];

  return v3;
}

id sub_1001FB90C()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 minimumPasscodeLengthForAccountUUID:isa];

  return v3;
}

double sub_1001FB95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = String._bridgeToObjectiveC()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1001B4EE8;
  v13[3] = &unk_10035FD30;
  v11 = _Block_copy(v13);

  [v6 setPasscode:v9 forAccountUUID:isa completion:v11];
  _Block_release(v11);

  return result;
}

double sub_1001FBA44()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 maximumGreetingDurationForAccountUUID:isa];
  v4 = v3;

  return v4;
}

double sub_1001FBA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001B5370;
  v10[3] = &unk_10035FD08;
  v8 = _Block_copy(v10);

  [v4 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);

  return result;
}

uint64_t sub_1001FBB90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001EBEA4;

  return sub_1001FB348(a1, v4, v5, v7, v6);
}

uint64_t sub_1001FBC50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1001559CC;
  v7 = sub_100036210();

  return sub_1001FA658(v7, a2, v5);
}

double sub_1001FBCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1001B4EE8;
  v12[3] = &unk_10035FCE0;
  v10 = _Block_copy(v12);

  [v5 setGreeting:a1 forAccountUUID:isa completion:v10];
  _Block_release(v10);

  return result;
}

uint64_t sub_1001FBDD4(uint64_t a1)
{
  v2 = sub_10014EA98(&qword_1003AC878, &qword_1002FD200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001FBE3C()
{
  result = qword_1003AE6C8;
  if (!qword_1003AE6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AE6C8);
  }

  return result;
}

id sub_1001FBE90(void *a1)
{
  v3 = OBJC_IVAR___ICSCoverViewController_windowLayoutGuide;
  *&v1[v3] = [objc_allocWithZone(UILayoutGuide) init];
  *&v1[OBJC_IVAR___ICSCoverViewController_layoutGuideConstraints] = _swiftEmptyArrayStorage;
  v4 = &v1[OBJC_IVAR___ICSCoverViewController_currentViewFrame];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  *&v1[OBJC_IVAR___ICSCoverViewController_callDisplayStyleManager] = a1;
  v5 = objc_allocWithZone(type metadata accessor for CallParticipantsViewController());
  v6 = a1;
  result = [v5 initWithCallDisplayStyleManager:v6];
  if (result)
  {
    *&v1[OBJC_IVAR___ICSCoverViewController_callParticipantsViewController] = result;
    v9.receiver = v1;
    v9.super_class = type metadata accessor for CoverViewController();
    v8 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001FBFB4()
{
  v1 = OBJC_IVAR___ICSCoverViewController_windowLayoutGuide;
  *(v0 + v1) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR___ICSCoverViewController_layoutGuideConstraints) = _swiftEmptyArrayStorage;
  v2 = v0 + OBJC_IVAR___ICSCoverViewController_currentViewFrame;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001FC08C()
{
  v36.receiver = v0;
  v36.super_class = type metadata accessor for CoverViewController();
  objc_msgSendSuper2(&v36, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR___ICSCoverViewController_windowLayoutGuide];
  [v1 addLayoutGuide:v3];

  sub_1001FC4CC();
  v4 = *&v0[OBJC_IVAR___ICSCoverViewController_callParticipantsViewController];
  [v0 addChildViewController:v4];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  v7 = sub_100006BD0();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  [v6 addSubview:v7];

  v9 = sub_100006BD0();
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v4 didMoveToParentViewController:v0];
  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002FB360;
  v12 = sub_100006BD0();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v3 topAnchor];
  v16 = sub_100008158();

  *(v11 + 32) = v16;
  v17 = sub_100006BD0();
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v19 = [v17 bottomAnchor];

  v20 = [v3 bottomAnchor];
  v21 = sub_100008158();

  *(v11 + 40) = v21;
  v22 = sub_100006BD0();
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v3 leadingAnchor];
  v26 = sub_100008158();

  *(v11 + 48) = v26;
  v27 = sub_100006BD0();
  if (!v27)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = v27;
  v29 = objc_opt_self();
  v30 = [v28 trailingAnchor];

  v31 = [v3 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v11 + 56) = v32;
  sub_100162160();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:isa];

  v34 = sub_100006BD0();
  if (v34)
  {
    v35 = v34;
    [v34 layoutIfNeeded];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1001FC4CC()
{
  [*&v0[OBJC_IVAR___ICSCoverViewController_callDisplayStyleManager] miniWindowCutoutFrame];
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  v54.size.width = 0.0;
  v54.size.height = 0.0;
  if (CGRectEqualToRect(v46, v54) || (v5 = &v0[OBJC_IVAR___ICSCoverViewController_currentViewFrame], (v0[OBJC_IVAR___ICSCoverViewController_currentViewFrame + 32] & 1) == 0) && (v47.origin.x = sub_1000079A4(), CGRectEqualToRect(v47, v55)))
  {
    sub_100025BFC();
    return;
  }

  *v5 = x;
  v5[1] = y;
  v5[2] = width;
  v5[3] = height;
  *(v5 + 32) = 0;
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  [v6 frame];

  v48.origin.x = sub_1000079A4();
  MinY = CGRectGetMinY(v48);
  v49.origin.x = sub_1000079A4();
  MinX = CGRectGetMinX(v49);
  v50.origin.x = sub_1000096F4();
  CGRectGetHeight(v50);
  v51.origin.x = sub_1000079A4();
  CGRectGetMaxY(v51);
  v52.origin.x = sub_1000096F4();
  v8 = CGRectGetWidth(v52);
  v53.origin.x = sub_1000079A4();
  MaxX = CGRectGetMaxX(v53);
  v10 = objc_opt_self();
  v11 = OBJC_IVAR___ICSCoverViewController_layoutGuideConstraints;
  sub_100162160();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 deactivateConstraints:isa];

  sub_10014EA98(&unk_1003AAAA0, &qword_1002F96D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002FB360;
  v14 = *&v0[OBJC_IVAR___ICSCoverViewController_windowLayoutGuide];
  v15 = [v14 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = sub_10000C5A0();
  v21 = [v19 v20];

  *(v13 + 32) = v21;
  v22 = [v14 bottomAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = [v23 bottomAnchor];

  v26 = sub_10000C5A0();
  v28 = [v26 v27];

  *(v13 + 40) = v28;
  v29 = [v14 leadingAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v31 = v30;
  v32 = [v30 leadingAnchor];

  v33 = sub_10000C5A0();
  v35 = [v33 v34];

  *(v13 + 48) = v35;
  v36 = [v14 trailingAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v38 = v37;
  v39 = [v37 trailingAnchor];

  v40 = [v36 constraintEqualToAnchor:v39 constant:-(v8 - MaxX)];
  *(v13 + 56) = v40;
  *&v0[v11] = v13;

  v45 = Array._bridgeToObjectiveC()().super.isa;

  [v10 activateConstraints:v45];
  sub_100025BFC();
}

id sub_1001FC974()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoverViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001FCA38(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13InCallService32RemoteAlertHostingViewController_alert] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

id sub_1001FCAFC(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  if (qword_1003AA0C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, qword_1003AE720);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Showing Remote Alert", v7, 2u);
  }

  return [v2 presentViewController:*&v2[OBJC_IVAR____TtC13InCallService32RemoteAlertHostingViewController_alert] animated:1 completion:0];
}

uint64_t sub_1001FCD08()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003AE720);
  sub_100008A14(v0, qword_1003AE720);
  return Logger.init(subsystem:category:)();
}

id sub_1001FCD88()
{
  v1 = [v0 existingPrioritizedCall];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isOutgoing];

  return v3;
}

BOOL sub_1001FCDE4()
{
  v1 = [v0 callDisplayStyleManager];
  v2 = [v1 callDisplayStyle];

  return v2 == 4;
}

void sub_1001FCE38(double a1, double a2)
{
  if (![v2 isViewLoaded] || (iPadAudioCallViewController.isFullScreen.getter() & 1) == 0 && !sub_1001FCDE4() && (sub_1001FCD88() & 1) == 0)
  {
LABEL_36:
    sub_1000079B8();
    return;
  }

  v5 = [v2 middleViewState];
  [v2 currentState];
  v6 = 0.0;
  v7 = v5 == 2 && a2 < a1;
  v8 = 0.0;
  if (!v7)
  {
    v6 = 1.0;
    v8 = [v2 currentState] == 3 ? 0.0 : 1.0;
    if ([v2 currentState] != 3)
    {
      v6 = 0.0;
    }
  }

  v9 = [v2 callParticipantsViewController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 view];

    if (!v11)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    [v11 setAlpha:v8];
  }

  v12 = [v2 callWaitingParticipantsViewController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 view];

    if (v14)
    {
      [v14 setAlpha:v6];

      goto LABEL_20;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

LABEL_20:
  v15 = [v2 participantsViewConstraints];
  sub_100162160();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = sub_100017230(v16);
  v18 = 0;
  v19 = fmax(v8, v6) > 0.0;
  while (v17 != v18)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v20 = *(v16 + 8 * v18 + 32);
    }

    v21 = v20;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    [v20 setActive:v19];

    ++v18;
  }

  if (v8 <= 0.0)
  {
    goto LABEL_36;
  }

  v22 = [v2 callParticipantsViewController];
  if (!v22)
  {
    goto LABEL_36;
  }

  v23 = v22;
  v24 = [v22 view];

  if (!v24)
  {
    goto LABEL_36;
  }

  v25 = [v2 view];
  if (!v25)
  {
    goto LABEL_41;
  }

  v26 = v25;
  v27 = [v2 buttonsViewController];
  v30 = [v27 view];

  if (!v30)
  {
    goto LABEL_42;
  }

  [v26 insertSubview:v24 belowSubview:v30];

  sub_1000079B8();
}

uint64_t sub_1001FD1F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_1000079DC(a1, a2, 0x65536C6C61436E49, 0xED00006563697672);

  return v6;
}

uint64_t sub_1001FD2AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_1000079DC(a1, a2, 0xD000000000000012, 0x80000001002AC670);

  return v6;
}

id sub_1001FD37C()
{
  type metadata accessor for Features();
  v0 = static Features.shared.getter();
  v1 = Features.isEnhancedEmergencyEnabled.getter();

  result = 0;
  if (v1)
  {
    return [objc_allocWithZone(type metadata accessor for EnhancedEmergencyCoordinator()) init];
  }

  return result;
}

char *sub_1001FD3D8()
{
  v1 = OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator_coordinator;
  *&v0[v1] = sub_1001FD37C();
  v0[OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__showsVideoStreamingButton] = 0;
  v0[OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__showsMediaUploadButton] = 0;
  v0[OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__isVideoStreamingOn] = 0;
  v0[OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__shouldHideVideoStreamingControls] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__viewControllers] = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ClarityUIEnhancedEmergencyCoordinator(0);
  v2 = objc_msgSendSuper2(&v4, "init");
  if (*&v2[OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator_coordinator])
  {
    swift_unknownObjectWeakAssign();
  }

  return v2;
}

void sub_1001FD500(char a1, void *a2, uint64_t a3)
{
  if (*(v3 + *a2) == (a1 & 1))
  {
    *(v3 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100024804();
    sub_1001FF54C();
  }
}

void sub_1001FD5BC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__shouldHideVideoStreamingControls) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__shouldHideVideoStreamingControls) = a1 & 1;

    sub_1001FD99C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100024804();
    sub_1001FF54C();
  }
}

uint64_t sub_1001FD67C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1001FF54C();
}

id sub_1001FD714()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator_coordinator];
  if (v2)
  {
    v3 = v2;
    sub_1001943E0();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ClarityUIEnhancedEmergencyCoordinator(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for ClarityUIEnhancedEmergencyCoordinator(uint64_t a1)
{
  result = qword_1003AE860;
  if (!qword_1003AE860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001FD880()
{
  sub_1001FDB8C();
  v1 = sub_1001FD918(v0);

  if (!v1)
  {
    return 0;
  }

  sub_10014EA98(&qword_1003AE878, &qword_1002FF7E8);
  sub_1001FF924();
  return AnyView.init<A>(_:)();
}

void *sub_1001FD918(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);
  v5 = v4;
  return v4;
}

void sub_1001FD99C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator_coordinator);
  if (v1)
  {
    v2 = v1;
    v2[OBJC_IVAR___PHEnhancedEmergencyCoordinator_shouldHideVideoStreamingControls] = sub_1001FDA20() & 1;
    sub_100193FE4();
  }
}

uint64_t sub_1001FDA34(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1001FF820();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}