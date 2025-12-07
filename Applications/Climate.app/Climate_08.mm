id sub_1000ACF0C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ClimateSettingsButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1000ACF58(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for ClimateSettingsButton();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  [v7 setNeedsUpdateConfiguration];
}

id sub_1000ACFF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClimateSettingsButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000AD1C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000AD214(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = [a1 id];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v13[8] = 0;
  swift_beginAccess();
  sub_100078128(v13, v7);
  swift_endAccess();
  sub_1000BDEBC();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 colorFilterPreference];
    *(a2 + OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter) = v11;
    [a1 didUpdateColorFilterPreferenceWithFilter:v11];
  }
}

void sub_1000AD34C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1000AD488()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton);
  v2 = (*((swift_isaMask & *v1) + 0x288))();
  return (*((swift_isaMask & *v1) + 0x1F8))(v2);
}

void sub_1000AD52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for ClimateButton(0)) init];
  v3[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState] = 1;
  *&v3[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_spinningTimer] = 0;
  v7 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_indicatorView;
  v8 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v7] = v8;
  v3[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_hideSymbol] = 0;
  v89.receiver = v3;
  v89.super_class = type metadata accessor for ClimateGroupedVentsAutoModeButton(0);
  v9 = objc_msgSendSuper2(&v89, "init");
  v10 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton;
  v11 = *&v9[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton];
  v12 = &v11[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v13 = *v12;
  v14 = *(v12 + 1);
  *v12 = a1;
  *(v12 + 1) = a2;
  if (v14 && (v13 == a1 ? (v15 = v14 == a2) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v16 = v9;
  }

  else
  {
    v17 = v9;
    v18 = v11;
    ClimateButton.updateClimateConfiguration()();
  }

  v86 = objc_opt_self();
  v19 = [v86 systemGreenColor];
  v20 = &v9[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
  v21 = *&v9[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
  v22 = v9;
  v23 = v21;
  v88 = v22;
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v9[v10] setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = *&v9[v10];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 systemFontOfSize:19.0 weight:UIFontWeightRegular];
  v28 = objc_opt_self();
  v29 = [v28 configurationWithFont:v27 scale:-1];

  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000D58A0;
  *(v30 + 32) = v19;
  *(v30 + 40) = v23;
  sub_10000827C(0, &qword_1001167A8, UIColor_ptr);
  v84 = v23;
  v31 = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = [v28 configurationWithPaletteColors:isa];

  v34 = [v29 configurationByApplyingConfiguration:v33];
  (*((swift_isaMask & *v26) + 0x128))(v34);

  v35 = *v20;
  v36 = *(v20 + 1);
  v37 = *(v20 + 2);
  v38 = *&v9[v10];
  v39 = v35;
  v40 = v36;

  v41 = [v86 clearColor];
  if (!v41)
  {
    v41 = v39;
  }

  v42 = v31;

  sub_10007A4CC(v41, v42, v37);

  [*&v9[v10] setUserInteractionEnabled:0];
  [*&v9[v10] _setContinuousCornerRadius:0.0];
  [*(*&v9[v10] + OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView) removeFromSuperview];
  [v88 addSubview:*&v9[v10]];
  sub_10008F408(1);
  v44 = v43;
  v46 = v45;
  v87 = objc_opt_self();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1000D5D90;
  v48 = [*&v9[v10] centerXAnchor];
  v49 = [v88 centerXAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v47 + 32) = v50;
  v51 = [*&v9[v10] centerYAnchor];
  v52 = v88;
  v53 = [v52 centerYAnchor];
  v54 = [v51 constraintEqualToAnchor:v53];

  *(v47 + 40) = v54;
  v55 = [*&v9[v10] heightAnchor];
  v56 = [v55 constraintEqualToConstant:v46];

  *(v47 + 48) = v56;
  v57 = [*&v9[v10] widthAnchor];
  v58 = [v57 constraintEqualToConstant:v44];

  *(v47 + 56) = v58;
  sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
  v59 = Array._bridgeToObjectiveC()().super.isa;

  [v87 activateConstraints:v59];

  v60 = *&v9[v10];
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = &v60[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v63 = *v62;
  v64 = v62[1];
  *v62 = sub_1000AEF5C;
  v62[1] = v61;
  v65 = v60;

  sub_100003380(v63, v64);

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v67 = &v52[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  *v67 = sub_1000AECD4;
  v67[1] = v66;

  sub_100003380(v68, v69);

  v70 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_indicatorView;
  [v52 addSubview:*&v52[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_indicatorView]];
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1000D58A0;
  v72 = [*&v52[v70] centerYAnchor];
  v73 = [v52 centerYAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v71 + 32) = v74;
  v75 = [*&v52[v70] centerXAnchor];
  v76 = [v52 centerXAnchor];

  v77 = [v75 constraintEqualToAnchor:v76];
  *(v71 + 40) = v77;
  v78 = Array._bridgeToObjectiveC()().super.isa;

  [v87 activateConstraints:v78];

  v79 = [objc_opt_self() sharedApplication];
  v80 = [v79 delegate];

  if (v80)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v81 = sub_1000AF438();
    swift_unknownObjectRelease();
    v82 = *&v81[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v83 = v52;
    sub_1000AD348();

    sub_10001AEA0(a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000ADE94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000AECF0();
  }
}

void sub_1000ADEE8()
{
  v1 = v0[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState];
  v0[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState] = 4;
  if (v1 < 4)
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      sub_1000AE2E0();
    }
  }

  else
  {
  }

  v3 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_spinningTimer;
  [*&v0[OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_spinningTimer] invalidate];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v10[4] = sub_1000AEC7C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000AD34C;
  v10[3] = &unk_1000F9388;
  v6 = _Block_copy(v10);
  v7 = v0;

  v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:3.0];
  _Block_release(v6);
  v9 = *&v0[v3];
  *&v0[v3] = v8;
}

id sub_1000AE0CC(void *a1, uint64_t a2)
{
  result = [a1 isValid];
  if (result)
  {
    v4 = *(a2 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState);
    *(a2 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState) = 3;
    if (v4 == 3)
    {
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        sub_1000AE2E0();
      }
    }

    return sub_1000AE2E0();
  }

  return result;
}

void sub_1000AE1CC()
{
  *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ClimateButton(0)) init];
  *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState) = 1;
  *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_spinningTimer) = 0;
  v2 = OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_indicatorView;
  v3 = [objc_allocWithZone(UIActivityIndicatorView) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_hideSymbol) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000AE2E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState);
  if (v1 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState))
    {
      [*(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_spinningTimer) invalidate];
      *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_hideSymbol) = 0;
      [*(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton) setHidden:0];
      v11 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
      v9 = 1;
      swift_beginAccess();
      v12 = v11[1];
      *v11 = 0;
      v11[1] = 0;
      if (!v12)
      {
LABEL_21:
        v10 = &selRef_stopAnimating;
        goto LABEL_22;
      }

      ClimateButton.updateClimateConfiguration()();
LABEL_20:

      v9 = 1;
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if (v1 == 2)
  {
LABEL_12:
    [*(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_spinningTimer) invalidate];
    *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_hideSymbol) = 1;
    [*(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton) setHidden:1];
    v6 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
    swift_beginAccess();
    v7 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    if (!v7)
    {
      v10 = &selRef_stopAnimating;
      v9 = 1;
      goto LABEL_22;
    }

LABEL_13:
    ClimateButton.updateClimateConfiguration()();
    goto LABEL_20;
  }

  if (v1 == 3)
  {
    [*(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_spinningTimer) invalidate];
    *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_hideSymbol) = 1;
    [*(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton) setHidden:1];
    v2 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    *v2 = xmmword_1000D9340;
    if (v4)
    {
      v5 = v3 == 0x6C632E776F727261 && v4 == 0xEF657369776B636FLL;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_13;
  }

  *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_hideSymbol) = 1;
  [*(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton) setHidden:1];
  v8 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  if (v9)
  {
    ClimateButton.updateClimateConfiguration()();

    v9 = 0;
  }

  v10 = &selRef_startAnimating;
LABEL_22:
  v13 = *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_indicatorView);
  [v13 *v10];
  return [v13 setHidden:v9];
}

void sub_1000AE5A8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    __break(1u);
    return;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v7 = sub_1000AF438();
  swift_unknownObjectRelease();
  v8 = *&v7[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

  v9 = *&v8[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
  v10 = *(v1 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_primaryButton);
  v11 = [objc_opt_self() systemFontOfSize:19.0 weight:UIFontWeightRegular];
  v12 = objc_opt_self();
  v13 = [v12 configurationWithFont:v11 scale:-1];

  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  if (v9 == 2)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000D5DA0;
    v15 = objc_opt_self();
    *(v14 + 32) = [v15 labelColor];
    sub_10000827C(0, &qword_1001167A8, UIColor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v17 = [v12 configurationWithPaletteColors:isa];

    v18 = [v13 configurationByApplyingConfiguration:v17];
    (*((swift_isaMask & *v10) + 0x128))(v18);
    v19 = *(v10 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
    v20 = *(v10 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
    v31 = *(v10 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
    v21 = v19;

    v22 = [v15 labelColor];
    if (!v22)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000D58A0;
  v24 = objc_opt_self();
  *(v23 + 32) = [v24 systemGreenColor];
  *(v23 + 40) = v4;
  sub_10000827C(0, &qword_1001167A8, UIColor_ptr);
  v25 = v4;
  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = [v12 configurationWithPaletteColors:v26];

  v28 = [v13 configurationByApplyingConfiguration:v27];
  (*((swift_isaMask & *v10) + 0x128))(v28);
  v29 = *(v10 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v20 = *(v10 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  v31 = *(v10 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v21 = v29;

  v22 = [v24 systemGreenColor];
  if (v22)
  {
LABEL_6:
    v30 = v22;

    v21 = v30;
  }

LABEL_7:
  sub_10007A4CC(v31, v21, v20);
}

void sub_1000AEA34()
{
  sub_1000289EC(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_indicatorView);
}

id sub_1000AEA94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateGroupedVentsAutoModeButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateGroupedVentsAutoModeButton(uint64_t a1)
{
  result = qword_100117BF8;
  if (!qword_100117BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AEC44()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000AEC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000AEC9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AECF0()
{
  v1 = sub_1000040E8(&qword_100115840, &qword_1000D6440);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClimateButton.layoutKey.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10001AEA0(v3);
  }

  (*(v5 + 32))(v7, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState) <= 1u && *(v0 + OBJC_IVAR____TtC7Climate33ClimateGroupedVentsAutoModeButton_uiState))
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      sub_1000ADEE8();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return (*(v5 + 8))(v7, v4);
      }

      goto LABEL_11;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100037C54(2, v7);
LABEL_11:
    sub_10003869C(v7);
    swift_unknownObjectRelease();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000AEF60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AEFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000AF018()
{
  result = qword_100117C08;
  if (!qword_100117C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117C08);
  }

  return result;
}

unint64_t sub_1000AF06C(uint64_t a1)
{
  result = sub_1000AF018();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000AF094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(73);
  v5._object = 0x80000001000DEC90;
  v5._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v5);
  v6 = [a1 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x3D6B6361727420;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  sub_1000040E8(&qword_100117C38, &unk_1000D9510);
  sub_1000AF274();
  v12._countAndFlagsBits = Optional<A>.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x736572676F727020;
  v13._object = 0xEA00000000003D73;
  String.append(_:)(v13);
  v14._countAndFlagsBits = Optional<A>.description.getter();
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x3D73657461747320;
  v15._object = 0xE800000000000000;
  String.append(_:)(v15);
  sub_10007D298();
  v16._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

unint64_t sub_1000AF274()
{
  result = qword_100117C40;
  if (!qword_100117C40)
  {
    sub_10000827C(255, &qword_1001167A8, UIColor_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117C40);
  }

  return result;
}

uint64_t sub_1000AF2DC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  sub_10000827C(0, &qword_100115110, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    sub_10000827C(0, &qword_1001167A8, UIColor_ptr);
    v14 = a6;
    v15 = a2;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (!a3)
  {
    if (!a7)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!a7)
  {
    return 0;
  }

  sub_10000827C(0, &qword_1001167A8, UIColor_ptr);
  v17 = a7;
  v18 = a3;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_10:

  return sub_10007D75C(a4, a8);
}

id sub_1000AF438()
{
  v1 = OBJC_IVAR____TtC7Climate18ClimateAppDelegate____lazy_storage___coordinator;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate18ClimateAppDelegate____lazy_storage___coordinator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Climate18ClimateAppDelegate____lazy_storage___coordinator);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ClimateCoordinator(0)) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1000AF514(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClimateAppDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000AF57C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_recirculation);
  v2 = [v1 on];
  v3 = [v1 autoMode];
  v4 = [v1 onRestricted];
  v5 = [v1 onInvalid];
  v6 = [v1 onDisabled];
  if (v2)
  {
    if (v3)
    {
      if ((v4 & 1) == 0)
      {
        v7 = 3;
        if (v5)
        {
          v7 = 11;
        }

        if (v6)
        {
          return v7 | 0x10;
        }

        return v7;
      }

      v7 = 7;
      v8 = 15;
    }

    else
    {
      if ((v4 & 1) == 0)
      {
        v7 = 9;
        if (!v5)
        {
          v7 = 1;
        }

        if (v6)
        {
          return v7 | 0x10;
        }

        return v7;
      }

      v7 = 5;
      v8 = 13;
    }
  }

  else if (v3)
  {
    if (v4)
    {
      v7 = 6;
      v8 = 14;
    }

    else
    {
      v7 = 2;
      v8 = 10;
    }
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      v7 = 8;
      if (!v5)
      {
        v7 = 0;
      }

      if (v6)
      {
        return v7 | 0x10;
      }

      return v7;
    }

    v7 = 4;
    v8 = 12;
  }

  if (v5)
  {
    v7 = v8;
  }

  if (v6)
  {
    return v7 | 0x10;
  }

  return v7;
}

void sub_1000AF6B0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setOn:{objc_msgSend(a3, "on") ^ 1}];
    sub_1000AF884();
  }
}

id sub_1000AF72C()
{
  if (*(v0 + OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_style) == 4)
  {
    if (qword_100113ED0 != -1)
    {
      swift_once();
    }

    v1 = qword_10011B090;
    if (qword_100113EF0 != -1)
    {
      swift_once();
    }

    v2 = qword_10011B0E8;

    v1;
  }

  else
  {
    if (qword_100113EE0 != -1)
    {
      swift_once();
    }

    v3 = qword_10011B0B8;
    v4 = qword_10011B0C0;
    if (![objc_opt_self() systemMintColor])
    {
      v4;
    }

    v2 = v3;
  }

  return v2;
}

void sub_1000AF884()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_autoModeGlyph];
  if (v1)
  {
    v2 = v1;
    [v2 setHidden:(sub_1000AF57C() & 0x1A) != 2];
  }

  sub_1000C10C4();
  [v0 setEnabled:sub_1000AF57C() < 8];
  sub_1000AF9A0();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

void sub_1000AF9A0()
{
  if ((sub_1000AF57C() & 0x1A) == 2)
  {
    v1 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
    v2 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
    v3 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
    v4 = objc_opt_self();
    v5 = v1;
    v6 = v2;

    v7 = [v4 systemGreenColor];
    if (v7)
    {
      v8 = v7;

      v6 = v8;
    }
  }

  else
  {
    if ((sub_1000AF57C() & 0x1B) == 1)
    {
      v9 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
    }

    else
    {
      v9 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
    }

    v10 = v0 + *v9;
    v11 = *(v10 + 8);
    v3 = *(v10 + 16);
    v5 = *v10;
    v6 = v11;
  }

  sub_10007A4CC(v5, v6, v3);

  v12 = [objc_opt_self() sharedApplication];
  v13 = [v12 delegate];

  if (v13)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v14 = sub_1000AF438();
    swift_unknownObjectRelease();
    v15 = *&v14[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v16 = *&v15[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
    if (v16 == 2)
    {
      if (qword_100113EE0 != -1)
      {
        swift_once();
      }

      v17 = qword_10011B0B8;
      v18 = qword_10011B0C0;
      v19 = qword_10011B0C8;
      v20 = [objc_opt_self() labelColor];
      if (!v20)
      {
        v20 = v18;
      }

      v24 = v17;

      v21 = v24;
      v22 = v20;
      v23 = v19;
    }

    else
    {
      v21 = sub_1000AF72C();
      v20 = v22;
      v24 = v21;
    }

    sub_1000A70A8(v21, v22, v23);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000AFC4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_autoModeGlyph);
}

id sub_1000AFC8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateRecirculationServiceButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateRecirculationServiceButton(uint64_t a1)
{
  result = qword_100117D10;
  if (!qword_100117D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AFEBC(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_autoModeGlyph;
  *&v2[v5] = [objc_allocWithZone(UIImageView) init];
  *&v2[OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_recirculation] = a1;
  v2[OBJC_IVAR____TtC7Climate33ClimateRecirculationServiceButton_style] = a2;
  v50.receiver = v2;
  v50.super_class = type metadata accessor for ClimateRecirculationServiceButton(0);
  v6 = a1;
  v7 = objc_msgSendSuper2(&v50, "init");
  [v6 registerObserver:v7];
  v8 = &v7[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 1);
  *v8 = 0xD00000000000001BLL;
  *(v8 + 1) = 0x80000001000DED80;
  if (!v10 || (v9 == 0xD00000000000001BLL ? (v11 = 0x80000001000DED80 == v10) : (v11 = 0), !v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }

  if (a2 == 1)
  {
    v21 = objc_opt_self();
    v22 = v7;
    v23 = [v21 configurationWithPointSize:6 weight:14.0];
    v24 = ClimateButton.imageSymbolConfiguration.getter();
    v25 = *&v22[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
    *&v22[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v23;
    v26 = v23;

    v27 = ClimateButton.imageSymbolConfiguration.getter();
    sub_100052F1C();
    LOBYTE(v25) = static NSObject.== infix(_:_:)();

    if ((v25 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v28 = sub_1000AF72C();
    v30 = v29;
    sub_1000A70A8(v28, v29, v31);

    if (qword_100113ED8 != -1)
    {
      swift_once();
    }

    v32 = qword_10011B0A8;
    v33 = qword_10011B0B0;
    v34 = qword_10011B0A0;
    v35 = v32;

    sub_1000A70B4(v34, v35, v33);
  }

  else
  {
    if (a2 == 3)
    {
      v12 = v7;
      v13 = sub_1000AF72C();
      v15 = v14;
      sub_1000A70A8(v13, v14, v16);

      if (qword_100113ED8 != -1)
      {
        swift_once();
      }

      v17 = qword_10011B0A8;
      v18 = qword_10011B0B0;
      v19 = qword_10011B0A0;
      v20 = v17;

      sub_1000A70B4(v19, v20, v18);
    }

    else
    {
      v36 = v7;
      v19 = sub_1000AF72C();
      v20 = v37;
      sub_1000A70A8(v19, v37, v38);
    }

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v6;
    v41 = &v7[OBJC_IVAR____TtC7Climate13ClimateButton_action];
    swift_beginAccess();
    v42 = *v41;
    v43 = v41[1];
    *v41 = sub_1000B04EC;
    v41[1] = v40;
    v44 = v6;

    sub_100003380(v42, v43);
  }

  sub_1000AF884();
  v45 = [objc_opt_self() sharedApplication];
  v46 = [v45 delegate];

  if (v46)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v47 = sub_1000AF438();
    swift_unknownObjectRelease();
    v48 = *&v47[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v49 = v7;
    sub_1000AD348();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000B038C(uint64_t a1)
{
  v1 = a1;
  v2 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v3 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = v1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v2, "Recirculation did update ON: %{BOOL,public}d", v4, 8u);
  }

  sub_1000AF884();
}

uint64_t sub_1000B0474()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B04AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B04F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature);
  v2 = [v1 targetTemperatureRestricted];
  v3 = [v1 targetTemperatureInvalid];
  v4 = [v1 targetTemperatureDisabled];
  if (v2)
  {
    v5 = 4;
    if (v3)
    {
      v5 = 12;
    }

    if ((v4 & 1) == 0)
    {
      return v5;
    }

    return v5 | 0x10;
  }

  v5 = 8;
  if (!v3)
  {
    v5 = 0;
  }

  if (v4)
  {
    return v5 | 0x10;
  }

  return v5;
}

void sub_1000B0630(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000B0F6C(v3);
  }
}

void sub_1000B0684()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style])
  {
    v4 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperatureBackgroundView;
    v5 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperatureBackgroundView];
    if (v5 || (type metadata accessor for ClimateTransparentView(), v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], objc_msgSend(v6, "setTranslatesAutoresizingMaskIntoConstraints:", 0), objc_msgSend(v0, "insertSubview:atIndex:", v6, 0), v7 = *&v0[v4], *&v0[v4] = v6, v7, (v5 = *&v0[v4]) != 0))
    {
      v45[1] = v3;
      v8 = v5;
      v9 = [v8 constraints];
      v45[0] = sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 >> 62)
      {
        goto LABEL_16;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_15;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          [v8 removeConstraint:v13];

          ++v12;
          if (v15 == i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        ;
      }

LABEL_17:
      v16 = v0;

      sub_10000827C(0, &qword_100115110, NSObject_ptr);
      sub_10000827C(0, &qword_100114AB0, NSUnitTemperature_ptr);
      static Locale.current.getter();
      v17 = NSDimension.init(forLocale:)();
      v18 = [objc_opt_self() fahrenheit];
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        if (v16[OBJC_IVAR____TtC7Climate16ClimateIndicator_circleDiameter + 8])
        {
LABEL_22:

          return;
        }

        v20 = v16;
        v21 = *&v16[OBJC_IVAR____TtC7Climate16ClimateIndicator_circleDiameter];
        v22 = [v8 layer];
        [v22 setCornerRadius:v21 * 0.5];

        v23 = objc_opt_self();
        sub_1000040E8(&unk_100114770, qword_1000D58D0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1000D5D90;
        v25 = [v8 widthAnchor];
        v26 = [v25 constraintEqualToConstant:v21];

        *(v24 + 32) = v26;
        v27 = [v8 heightAnchor];
        v28 = [v27 constraintEqualToConstant:v21];

        *(v24 + 40) = v28;
        v29 = [v8 centerXAnchor];
        v30 = [v20 centerXAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];

        *(v24 + 48) = v31;
        v32 = [v8 centerYAnchor];
        v33 = [v20 centerYAnchor];
      }

      else
      {
        v34 = [v8 layer];
        [v34 setCornerRadius:6.0];

        v23 = objc_opt_self();
        sub_1000040E8(&unk_100114770, qword_1000D58D0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1000D5D90;
        v35 = [v8 widthAnchor];
        v36 = [v35 constraintEqualToConstant:40.0];

        *(v24 + 32) = v36;
        v37 = [v8 heightAnchor];
        v38 = [v37 constraintEqualToConstant:30.0];

        *(v24 + 40) = v38;
        v39 = [v8 centerXAnchor];
        v40 = [v16 centerXAnchor];
        v41 = [v39 constraintEqualToAnchor:v40];

        *(v24 + 48) = v41;
        v32 = [v8 centerYAnchor];
        v33 = [v16 centerYAnchor];
      }

      v42 = v33;
      v43 = [v32 constraintEqualToAnchor:v42];

      *(v24 + 56) = v43;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v23 activateConstraints:isa];

      goto LABEL_22;
    }
  }
}

uint64_t sub_1000B0C94(uint64_t a1)
{
  v3 = sub_1000040E8(&unk_1001153F0, qword_1000D5C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1000040E8(&unk_100114790, &qword_1000D6820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  sub_1000302F4(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100008904(v5, &unk_1001153F0, qword_1000D5C40);
  }

  (*(v7 + 32))(v12, v5, v6);
  v14 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_currentValue;
  swift_beginAccess();
  v15 = *(v7 + 16);
  v20 = v1;
  v15(v9, v1 + v14, v6);
  sub_10000A8E8(&unk_100115410, &unk_100114790, &qword_1000D6820, &protocol conformance descriptor for Measurement<A>);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v9, v6);
  if ((v16 & 1) == 0)
  {
    v15(v9, v12, v6);
    v18 = v20;
    swift_beginAccess();
    (*(v7 + 24))(v18 + v14, v9, v6);
    swift_endAccess();
    sub_1000B16F0();
    sub_1000B1C54();
    v17(v9, v6);
  }

  return (v17)(v12, v6);
}

void sub_1000B0F6C(__n128 a1)
{
  sub_1000B16F0();
  sub_1000B1584();
  sub_1000C10C4();
  v2 = *&v1[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature];
  [v2 targetTemperatureRestricted];
  [v1 setEnabled:{((objc_msgSend(v2, "targetTemperatureDisabled") | objc_msgSend(v2, "targetTemperatureInvalid")) & 1) == 0}];
  sub_1000B1C54();
  sub_1000B1014();

  ClimateButton.createEdgeInsets()();
}

void sub_1000B1014()
{
  v1 = v0;
  ClimateButton.refreshColorConfig()();
  if (v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style] != 1)
  {
    return;
  }

  v2 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_upArrow];
  if (!v2)
  {
    return;
  }

  v3 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_downArrow];
  if (!v3)
  {
    return;
  }

  v4 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature];
  v5 = v2;
  v40 = v3;
  v6 = [v4 targetTemperatureRestricted];
  v7 = [v4 targetTemperatureInvalid];
  v8 = [v4 targetTemperatureDisabled];
  if (v6)
  {
    if (v7)
    {
      v9 = 12;
    }

    else
    {
      v9 = 4;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v9 |= 0x10u;
    goto LABEL_15;
  }

  if (v7)
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_15:
  v10 = objc_opt_self();
  v11 = [v10 sharedApplication];
  v12 = [v11 delegate];

  if (!v12)
  {
    __break(1u);
    goto LABEL_38;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v13 = sub_1000AF438();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v41 != 1)
  {
    v21 = [v10 sharedApplication];
    v22 = [v21 delegate];

    if (v22)
    {
      swift_dynamicCastClassUnconditional();
      v23 = sub_1000AF438();
      swift_unknownObjectRelease();
      v24 = *&v23[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

      v25 = *&v24[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
      v26 = objc_opt_self();
      v27 = v26;
      v28 = &selRef_systemRedColor;
      if (v25 == 2)
      {
        v28 = &selRef_labelColor;
        v29 = &selRef_labelColor;
      }

      else
      {
        v29 = &selRef_systemBlueColor;
      }

      v30 = [v26 *v28];
      v31 = [v27 *v29];
      v17 = v5;
      if ((v9 & 0x10) != 0)
      {
        v32 = objc_opt_self();
        v33 = [v32 systemWhiteColor];
        [v5 setTintColor:v33];

        v34 = [v32 systemWhiteColor];
        v20 = v40;
        [v40 setTintColor:v34];
      }

      else
      {
        v20 = v40;
        if ((v9 & 4) == 0)
        {
          [v17 setTintColor:v30];
          [v40 setTintColor:v31];
LABEL_28:
          [v1 setEnabled:1];

          goto LABEL_29;
        }

        v35 = sub_10007CDE8();
        [v17 setTintColor:v35];

        v34 = sub_10007CDE8();
        [v40 setTintColor:v34];
      }

      goto LABEL_28;
    }

LABEL_38:
    __break(1u);
    return;
  }

  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  v16 = [v15 colorWithAlphaComponent:0.3];

  v17 = v5;
  [v5 setTintColor:v16];

  v18 = [v14 labelColor];
  v19 = [v18 colorWithAlphaComponent:0.3];

  v20 = v40;
  [v40 setTintColor:v19];

  [v1 setEnabled:0];
LABEL_29:
  v36 = [v17 layer];
  if ((v9 & 0x10) != 0)
  {
    v37 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  }

  else
  {
    v37 = 0;
  }

  [v36 setCompositingFilter:v37];

  v38 = [v20 layer];
  if ((v9 & 0x10) != 0)
  {
    v39 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterPlusL];
  }

  else
  {
    v39 = 0;
  }

  [v38 setCompositingFilter:v39];
}

void sub_1000B1584()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v4 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = *(v1 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperatureBackgroundView);
    if (v5)
    {
      v6 = objc_opt_self();
      v7 = v5;
      v8 = &selRef_clearColor;
      if ((v10 & 2) != 0)
      {
        v8 = &selRef_tertiarySystemFillColor;
      }

      v9 = [v6 *v8];
      [v7 setBackgroundColor:v9];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000B16F0()
{
  v1 = v0;
  v50 = sub_1000040E8(&unk_100114790, &qword_1000D6820);
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v50 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style);
  v10 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature);
  [v10 targetTemperatureRestricted];
  v11 = [v10 targetTemperatureInvalid];
  v12 = [v10 targetTemperatureDisabled];
  if (v9 != 1)
  {
    if ((v11 | v12))
    {
      v24 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
      swift_beginAccess();
      v25 = v24[1];
      *v24 = 0;
      v24[1] = 0;
      if (v25)
      {
        ClimateButton.updateClimateConfiguration()();
      }

      v26 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
      swift_beginAccess();
      v27 = *v26;
      v28 = v26[1];
      *v26 = 0xD000000000000012;
      v26[1] = 0x80000001000DB780;
      if (!v28)
      {
        goto LABEL_39;
      }

      if (v27 == 0xD000000000000012 && 0x80000001000DB780 == v28)
      {
      }

      goto LABEL_38;
    }

    v38 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
    swift_beginAccess();
    v39 = v38[1];
    *v38 = 0;
    v38[1] = 0;
    if (v39)
    {
      ClimateButton.updateClimateConfiguration()();
    }

LABEL_35:
    v41 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_currentValue;
    swift_beginAccess();
    v42 = v50;
    (*(v2 + 16))(v4, v1 + v41, v50);
    v43 = [v10 targetTemperatureRange];
    v44 = Measurement<>.readableString(in:)();
    v46 = v45;

    (*(v2 + 8))(v4, v42);
    v47 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
    swift_beginAccess();
    v48 = *v47;
    v49 = v47[1];
    *v47 = v44;
    v47[1] = v46;
    if (!v49)
    {
      goto LABEL_39;
    }

    if (v44 == v48 && v49 == v46)
    {
    }

LABEL_38:
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
    }

LABEL_39:
    ClimateButton.updateClimateConfiguration()();
  }

  if (v11)
  {
    v13 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
    swift_beginAccess();
    v14 = v13[1];
    *v13 = 0;
    v13[1] = 0;
    if (v14)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v15 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_currentValue;
    swift_beginAccess();
    v16 = v50;
    (*(v2 + 16))(v8, v1 + v15, v50);
    v17 = Measurement<>.invalidString.getter();
    v19 = v18;
    (*(v2 + 8))(v8, v16);
    v20 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
    swift_beginAccess();
    v21 = *v20;
    v22 = v20[1];
    *v20 = v17;
    v20[1] = v19;
    if (!v22)
    {
      goto LABEL_39;
    }

    if (v17 == v21 && v22 == v19)
    {
    }

    goto LABEL_38;
  }

  [v10 targetTemperatureRestricted];
  [v10 targetTemperatureInvalid];
  v30 = [v10 targetTemperatureDisabled];
  v31 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
  if (!v30)
  {
    swift_beginAccess();
    v40 = v31[1];
    *v31 = 0;
    v31[1] = 0;
    if (v40)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    goto LABEL_35;
  }

  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  *v31 = xmmword_1000D7420;
  if (!v33 || (v32 == 0x6C6C69662E6E6166 ? (v34 = v33 == 0xE800000000000000) : (v34 = 0), !v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v35 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_title);
  result = swift_beginAccess();
  v37 = v35[1];
  *v35 = 0;
  v35[1] = 0;
  if (v37)
  {
    goto LABEL_39;
  }

  return result;
}

void sub_1000B1C54()
{
  v1 = sub_1000040E8(&unk_100114790, &qword_1000D6820);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v66 - v6;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v66 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature);
  v13 = [v12 targetTemperatureRestricted];
  v14 = [v12 targetTemperatureInvalid];
  v15 = [v12 targetTemperatureDisabled];
  if (v13)
  {
    goto LABEL_5;
  }

  v16 = 8;
  if (!v14)
  {
    v16 = 0;
  }

  if (v15)
  {
LABEL_5:
    v16 = 1;
  }

  v17 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style);
  if (v17 == 1)
  {
    v18 = objc_opt_self();
    v19 = [v18 clearColor];
    v20 = [v18 labelColor];
    v21 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
    v22 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
    v23 = v21;

    v24 = [v18 labelColor];
    sub_1000040E8(&unk_100117DF0, &qword_1000D8DC0);
    inited = swift_initStackObject();
    *(inited + 32) = 8;
    v26 = inited + 32;
    *(inited + 16) = xmmword_1000D5970;
    *(inited + 40) = v19;
    *(inited + 48) = v20;
    *(inited + 56) = &_swiftEmptyDictionarySingleton;
    v27 = sub_10004F0C8(inited);
    swift_setDeallocating();
    v28 = v19;
    v29 = v20;
    sub_100008904(v26, &unk_100114760, &unk_1000D5C30);

    sub_10007A4CC(v22, v24, v27);

    return;
  }

  if (!v16)
  {
    v40 = [v12 currentTemperature];
    if (v40)
    {
      v41 = v40;
      v71 = sub_10000827C(0, &qword_100114AB0, NSUnitTemperature_ptr);
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v2 + 32))(v11, v7, v1);
      v70 = v0;
      v42 = v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig;
      v43 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
      v44 = *(v42 + 8);
      v67 = v42;
      v45 = *(v42 + 16);
      v46 = v2;
      v47 = objc_opt_self();
      v48 = v43;
      v49 = v44;
      v69 = v45;

      v50 = [v47 clearColor];
      v51 = v17 == 5 || v17 == 0;
      v52 = &selRef_labelColor;
      if (!v51)
      {
        v52 = &selRef_systemWhiteColor;
      }

      v53 = *v52;
      v68 = v47;
      v54 = [v47 v53];
      if (!v50)
      {
        v50 = v48;
      }

      v55 = [v12 targetTemperature];
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000A8E8(&qword_1001147A0, &unk_100114790, &qword_1000D6820, &protocol conformance descriptor for Measurement<A>);
      LOBYTE(v55) = dispatch thunk of static Comparable.< infix(_:_:)();
      v56 = *(v46 + 8);
      v56(v4, v1);
      if (v55)
      {
        v66 = v56;
        v71 = v54;
        v57 = *(v67 + 8);
        v58 = *(v67 + 16);
        v59 = *v67;
        v60 = v57;

        v61 = v68;
        v62 = [v68 clearColor];
        v54 = [v61 systemBlueColor];
        if (!v62)
        {
          v62 = v59;
        }

        if (v54)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v63 = [v12 targetTemperature];
        static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v63) = static Measurement.< infix<A, B>(_:_:)();
        v56(v4, v1);
        if ((v63 & 1) == 0)
        {
          v58 = v69;
          goto LABEL_39;
        }

        v66 = v56;
        v71 = v54;
        v64 = *(v67 + 8);
        v58 = *(v67 + 16);
        v59 = *v67;
        v60 = v64;

        v65 = v68;
        v62 = [v68 clearColor];
        v54 = [v65 systemRedColor];
        if (!v62)
        {
          v62 = v59;
        }

        if (v54)
        {
LABEL_32:

          v50 = v62;
          v56 = v66;
LABEL_39:
          sub_10007A4CC(v50, v54, v58);

          v56(v11, v1);
          return;
        }
      }

      v60 = v60;
      v54 = v60;
      goto LABEL_32;
    }
  }

  v30 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v31 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v32 = *(v0 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  v33 = objc_opt_self();
  v34 = v30;
  v35 = v31;

  v71 = [v33 clearColor];
  v36 = v17 == 5 || v17 == 0;
  v37 = &selRef_labelColor;
  if (!v36)
  {
    v37 = &selRef_systemWhiteColor;
  }

  v38 = [v33 *v37];
  if (!v71)
  {
    v71 = v34;
  }

  sub_10007A4CC(v71, v38, v32);

  v39 = v71;
}

void sub_1000B2398(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ClimateTemperatureIndicator(0);
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v4 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v3))
  {
    v5 = v1;
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    v7 = [v5 traitCollection];
    v8 = [v7 userInterfaceStyle];

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v4, v3, "Temperature indicator updated with user interface style: %{public}ld", v6, 0xCu);
  }

  sub_1000B1C54();
  sub_1000B1014();
}

void sub_1000B254C()
{
  v1 = [objc_opt_self() configurationWithPointSize:5 weight:12.0];
  v2 = [objc_allocWithZone(UIImageView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 systemImageNamed:v3];

  v38 = v1;
  if (v5)
  {
    v6 = [v5 imageWithConfiguration:v1];
  }

  else
  {
    v6 = 0;
  }

  [v2 setImage:v6];

  [v0 addSubview:v2];
  v7 = objc_opt_self();
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D58A0;
  v9 = [v2 topAnchor];
  v10 = [v0 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-4.0];

  *(v8 + 32) = v11;
  v12 = [v2 centerXAnchor];

  v13 = [v0 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v8 + 40) = v14;
  sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v36 = v7;
  [v7 activateConstraints:isa];

  v16 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_upArrow];
  *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_upArrow] = v2;
  v17 = v2;

  v18 = objc_opt_self();
  v19 = [v18 systemRedColor];
  v35 = v17;
  [v17 setTintColor:v19];

  v20 = [objc_allocWithZone(UIImageView) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v4 systemImageNamed:v21];

  if (v22)
  {
    v23 = v38;
    v24 = [v22 imageWithConfiguration:v38];
  }

  else
  {
    v24 = 0;
    v23 = v38;
  }

  [v20 setImage:v24];

  [v0 addSubview:v20];
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000D58A0;
  v26 = [v20 bottomAnchor];
  v27 = [v0 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:4.0];

  *(v25 + 32) = v28;
  v29 = [v20 centerXAnchor];

  v30 = [v0 centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v25 + 40) = v31;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:v32];

  v33 = *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_downArrow];
  *&v0[OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_downArrow] = v20;
  v34 = v20;

  v37 = [v18 systemBlueColor];
  [v34 setTintColor:v37];
}

void sub_1000B2AC4()
{
  sub_1000289EC(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_delegate);

  v1 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_currentValue;
  v2 = sub_1000040E8(&unk_100114790, &qword_1000D6820);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperatureBackgroundView);
}

id sub_1000B2B98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateTemperatureIndicator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateTemperatureIndicator(uint64_t a1)
{
  result = qword_100117DC8;
  if (!qword_100117DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B2CFC(uint64_t a1)
{
  sub_10002F450(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000B2DC8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000040E8(&unk_1001153F0, qword_1000D5C40);
  __chkstk_darwin(v6 - 8);
  v8 = &v57[-v7];
  v9 = sub_1000040E8(&unk_100114790, &qword_1000D6820);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v57[-v15];
  v17 = [a1 receivedAllValues];
  v18 = static os_log_type_t.debug.getter();
  if (v17)
  {
    v64 = v8;
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v19 = qword_10011B1C0;
    v20 = *(v10 + 16);
    v65 = v10 + 16;
    v20(v16, a2, v9);
    v63 = v19;
    v21 = os_log_type_enabled(v19, v18);
    v66 = v10;
    if (v21)
    {
      v22 = a1;
      v61 = a2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      *v24 = 136446978;
      sub_10000A8E8(&unk_100117DE0, &unk_100114790, &qword_1000D6820, &protocol conformance descriptor for Measurement<A>);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v20;
      v26 = v25;
      v62 = v3;
      v28 = v27;
      v58 = v18;
      v29 = *(v10 + 8);
      v59 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29(v16, v9);
      v30 = sub_10000835C(v26, v28, v67);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2082;
      v31 = [v23 targetTemperature];
      sub_10000827C(0, &qword_100114AB0, NSUnitTemperature_ptr);
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = [v23 targetTemperatureRange];
      v33 = Measurement<>.readableString(in:)();
      v35 = v34;

      v29(v12, v9);
      v36 = sub_10000835C(v33, v35, v67);

      *(v24 + 14) = v36;
      *(v24 + 22) = 1024;
      LODWORD(v36) = [v23 targetTemperatureDisabled];

      *(v24 + 24) = v36;
      *(v24 + 28) = 2082;
      v37 = v23;
      a2 = v61;
      v38 = [v37 vehicleLayoutKey];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v39;
      v3 = v62;
      v43 = sub_10000835C(v42, v41, v67);
      v20 = v60;

      *(v24 + 30) = v43;
      _os_log_impl(&_mh_execute_header, v63, v58, "Temperature indicator updated to: %{public}s, display: %{public}s, isDisabled: %{BOOL}d, for zone: %{public}s", v24, 0x26u);
      swift_arrayDestroy();
    }

    else
    {
      v29 = *(v10 + 8);
      v44.n128_f64[0] = v29(v16, v9);
    }

    v54 = v64;
    sub_1000B0F6C(v44);
    v55 = OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_currentValue;
    swift_beginAccess();
    v20(v12, v3 + v55, v9);
    sub_10000A8E8(&unk_100115410, &unk_100114790, &qword_1000D6820, &protocol conformance descriptor for Measurement<A>);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    v29(v12, v9);
    if ((v56 & 1) == 0)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100065BF4();
        swift_unknownObjectRelease();
      }
    }

    v20(v54, a2, v9);
    (*(v66 + 56))(v54, 0, 1, v9);
    sub_1000B0C94(v54);
    return sub_100008904(v54, &unk_1001153F0, qword_1000D5C40);
  }

  else
  {
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v45 = qword_10011B1C0;
    result = os_log_type_enabled(qword_10011B1C0, v18);
    if (result)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v67[0] = v48;
      *v47 = 136446210;
      v49 = [a1 vehicleLayoutKey];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_10000835C(v50, v52, v67);

      *(v47 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v45, v18, "Waiting all values for temperature, zone: %{public}s", v47, 0xCu);
      sub_100006B9C(v48);
    }
  }

  return result;
}

void sub_1000B37D0(void *a1, char a2, void *a3, char a4, unsigned __int8 a5)
{
  v60 = a3;
  v10 = sub_1000040E8(&unk_1001153F0, qword_1000D5C40);
  __chkstk_darwin(v10 - 8);
  v54 = &v51[-v11];
  v12 = sub_1000040E8(&unk_1001166C0, &unk_1000D5AE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v51[-v13];
  v15 = sub_1000040E8(&qword_1001151A0, &qword_1000D6570);
  v55 = *(v15 - 8);
  v56 = v15;
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = sub_1000040E8(&qword_1001151A8, &qword_1000D6578);
  v58 = *(v18 - 8);
  v59 = v18;
  __chkstk_darwin(v18);
  v57 = &v51[-v19];
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_upArrow) = 0;
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_downArrow) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v20 = &_swiftEmptySetSingleton;
  }

  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_cancellables) = v20;
  v21 = [objc_opt_self() celsius];
  v53 = sub_10000827C(0, &qword_100114AB0, NSUnitTemperature_ptr);
  Measurement.init(value:unit:)();
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperatureBackgroundView) = 0;
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_style) = a5;
  *(v5 + OBJC_IVAR____TtC7Climate27ClimateTemperatureIndicator_temperature) = a1;
  v22 = a1;
  v23 = sub_10001414C(a2 & (a5 != 0), v60, a4 & 1);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor:v26];

  sub_1000B0684();
  [v22 registerObserver:v25];

  v60 = v22;
  v27 = [v22 car];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 dimensionManager];

    [v29 registerObserver:v25];
  }

  if (a5 == 1)
  {
    sub_1000B254C();
  }

  else if (a5 == 5)
  {
    v30 = [v25 titleLabel];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_opt_self() monospacedDigitSystemFontOfSize:13.0 weight:UIFontWeightSemibold];
      [v31 setFont:v32];
    }
  }

  v33 = objc_opt_self();
  v34 = [v33 sharedApplication];
  v35 = [v34 delegate];

  if (v35)
  {
    v52 = a5;
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v36 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1000040E8(&unk_100117E00, &qword_1000D73A0);
    Published.projectedValue.getter();
    swift_endAccess();

    v37 = [objc_opt_self() mainRunLoop];
    v61 = v37;
    v38 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
    sub_10000827C(0, &unk_1001166E0, NSRunLoop_ptr);
    sub_10000A8E8(&unk_1001151E0, &qword_1001151A0, &qword_1000D6570, &protocol conformance descriptor for Published<A>.Publisher);
    sub_10000A7D8();
    v39 = v56;
    v40 = v57;
    Publisher.receive<A>(on:options:)();
    sub_100008904(v14, &unk_1001166C0, &unk_1000D5AE0);

    (*(v55 + 8))(v17, v39);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A8E8(&unk_100117E10, &qword_1001151A8, &qword_1000D6578, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v41 = v59;
    Publisher<>.sink(receiveValue:)();

    (*(v58 + 8))(v40, v41);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    if (v52 != 1)
    {
LABEL_14:
      v47 = [v60 targetTemperature];
      v48 = v54;
      static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = sub_1000040E8(&unk_100114790, &qword_1000D6820);
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      sub_1000B0C94(v48);
      sub_100008904(v48, &unk_1001153F0, qword_1000D5C40);
      v50 = [v25 traitCollection];
      [v25 traitCollectionDidChange:v50];

      return;
    }

    v42 = [v33 sharedApplication];
    v43 = [v42 delegate];

    if (v43)
    {
      swift_dynamicCastClassUnconditional();
      v44 = sub_1000AF438();
      swift_unknownObjectRelease();
      v45 = *&v44[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

      v46 = v25;
      sub_1000AD348();

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000B4084()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B40EC(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_10007DD80(a1);
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
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

double sub_1000B41CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_managerQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1000B6834;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B4DF4;
  aBlock[3] = &unk_1000F96F8;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000B6758(&qword_1001178B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040E8(&unk_1001159C0, &qword_1000D9A40);
  sub_1000B67A0(&qword_1001178C0, &unk_1001159C0, &qword_1000D9A40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);

  return sub_1000B4ABC();
}

void sub_1000B44DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_managerQueue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000B66F4;
  *(v3 + 24) = v2;
  v5[4] = sub_100035EE8;
  v5[5] = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000B40C4;
  v5[3] = &unk_1000F96A8;
  v4 = _Block_copy(v5);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

_BYTE *sub_1000B4638(uint64_t a1)
{
  v37 = sub_1000040E8(&qword_100117E98, &qword_1000D9750);
  __chkstk_darwin(v37);
  v2 = &v35 - v1;
  v38 = sub_1000040E8(&unk_100117EA0, &qword_1000D9758);
  __chkstk_darwin(v38);
  v4 = &v35 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = static os_log_type_t.debug.getter();
    if (qword_100113F08 != -1)
    {
LABEL_27:
      v34 = v7;
      swift_once();
      v7 = v34;
    }

    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10011B1C8, "reset", 5, 2, _swiftEmptyArrayStorage);
    v6[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated] = 0;
    v8 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingServices;
    swift_beginAccess();
    v36 = v8;
    v9 = *&v6[v8];
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;
    v7 = swift_bridgeObjectRetain_n();
    v14 = 0;
    if (v12)
    {
      while (1)
      {
        v15 = v14;
LABEL_11:
        v16 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v17 = v16 | (v15 << 6);
        v18 = *(v9 + 48);
        v19 = type metadata accessor for UUID();
        (*(*(v19 - 8) + 16))(v4, v18 + *(*(v19 - 8) + 72) * v17, v19);
        v20 = *(*(v9 + 56) + 8 * v17);
        *(v4 + *(v38 + 48)) = v20;
        [v20 unregisterObserver:v6];
        v7 = sub_100008904(v4, &unk_100117EA0, &qword_1000D9758);
        if (!v12)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v15 >= v13)
      {
        break;
      }

      v12 = *(v9 + 64 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_11;
      }
    }

    *&v6[v36] = &_swiftEmptyDictionarySingleton;

    v21 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingAccessories;
    swift_beginAccess();
    v22 = *&v6[v21];
    v23 = 1 << *(v22 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v22 + 64);
    v26 = (v23 + 63) >> 6;
    v7 = swift_bridgeObjectRetain_n();
    v27 = 0;
    if (v25)
    {
      while (1)
      {
        v28 = v27;
LABEL_21:
        v29 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v4 = v29 | (v28 << 6);
        v30 = *(v22 + 48);
        v31 = type metadata accessor for UUID();
        (*(*(v31 - 8) + 16))(v2, v30 + *(*(v31 - 8) + 72) * v4, v31);
        v32 = *(*(v22 + 56) + 8 * v4);
        *&v2[*(v37 + 48)] = v32;
        [v32 unregisterObserver:v6];
        v7 = sub_100008904(v2, &qword_100117E98, &qword_1000D9750);
        if (!v25)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_26;
      }

      if (v28 >= v26)
      {
        break;
      }

      v25 = *(v22 + 64 + 8 * v28);
      ++v27;
      if (v25)
      {
        v27 = v28;
        goto LABEL_21;
      }
    }

    *&v6[v21] = &_swiftEmptyDictionarySingleton;

    v6[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_overlayViewControllerDidLoad] = 0;
    v6[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_mainViewControllerDidLoad] = 0;
    v33 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_emitted;
    swift_beginAccess();
    *&v6[v33] = &_swiftEmptyDictionarySingleton;
  }

  return result;
}

double sub_1000B4ABC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_managerQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000B66EC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B4DF4;
  aBlock[3] = &unk_1000F9658;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1000B6758(&qword_1001178B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040E8(&unk_1001159C0, &qword_1000D9A40);
  sub_1000B67A0(&qword_1001178C0, &unk_1001159C0, &qword_1000D9A40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

void sub_1000B4D98(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000B4E38();
    sub_1000B5060();
    sub_1000B5318();
  }
}

double sub_1000B4DF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

unint64_t sub_1000B4E38()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_emitted;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!*(v3 + 16) || (result = sub_10007E128(0), (v5 & 1) == 0) || (*(*(v3 + 56) + result) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated) == 1)
    {
      if (*(v1 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_overlayViewControllerDidLoad) == 1)
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *(v1 + v2);
        *(v1 + v2) = 0x8000000000000000;
        sub_10004BF7C(1, 0, isUniquelyReferenced_nonNull_native);
        *(v1 + v2) = v13;
        swift_endAccess();
        CAFSignpostEmit_InstantOn();
        v7 = static os_log_type_t.debug.getter();
        if (qword_100113F08 != -1)
        {
          v11 = v7;
          swift_once();
          v7 = v11;
        }

        return os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10011B1C8, "emittedInstantOnSignpost", 24, 2, _swiftEmptyArrayStorage);
      }

      else
      {
        v9 = static os_log_type_t.debug.getter();
        if (qword_100113F08 != -1)
        {
          v12 = v9;
          swift_once();
          v9 = v12;
        }

        return os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_10011B1C8, "overlayViewControllerDidLoad false", 34, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      v8 = static os_log_type_t.debug.getter();
      if (qword_100113F08 != -1)
      {
        v10 = v8;
        swift_once();
        v8 = v10;
      }

      return os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10011B1C8, "climateSystemManagerCreated false", 33, 2, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

unint64_t sub_1000B5060()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_emitted;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!*(v3 + 16) || (result = sub_10007E128(1), (v5 & 1) == 0) || (*(*(v3 + 56) + result) & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated) == 1)
    {
      v6 = *(v1 + v2);
      if (*(v6 + 16) && (v7 = sub_10007E128(0), (v8 & 1) != 0) && *(*(v6 + 56) + v7) == 1)
      {
        if (*(v1 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_mainViewControllerDidLoad) == 1)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v18 = *(v1 + v2);
          *(v1 + v2) = 0x8000000000000000;
          sub_10004BF7C(1, 1, isUniquelyReferenced_nonNull_native);
          *(v1 + v2) = v18;
          swift_endAccess();
          CAFSignpostEmit_Rendered();
          v10 = static os_log_type_t.debug.getter();
          if (qword_100113F08 != -1)
          {
            v16 = v10;
            swift_once();
            v10 = v16;
          }

          return os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10011B1C8, "emittedRenderedSignpost", 23, 2, _swiftEmptyArrayStorage);
        }

        else
        {
          v13 = static os_log_type_t.debug.getter();
          if (qword_100113F08 != -1)
          {
            v17 = v13;
            swift_once();
            v13 = v17;
          }

          return os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10011B1C8, "mainViewControllerDidLoad false", 31, 2, _swiftEmptyArrayStorage);
        }
      }

      else
      {
        v12 = static os_log_type_t.debug.getter();
        if (qword_100113F08 != -1)
        {
          v15 = v12;
          swift_once();
          v12 = v15;
        }

        return os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10011B1C8, "emittedInstantOnSignpost false", 30, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      v11 = static os_log_type_t.debug.getter();
      if (qword_100113F08 != -1)
      {
        v14 = v11;
        swift_once();
        v11 = v14;
      }

      return os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10011B1C8, "climateSystemManagerCreated false", 33, 2, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

uint64_t sub_1000B5318()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_emitted;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!*(v3 + 16) || (result = sub_10007E128(2), (v5 & 1) == 0) || (*(*(v3 + 56) + result) & 1) == 0)
  {
    if (v1[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated] == 1)
    {
      v6 = *&v1[v2];
      if (*(v6 + 16) && (v7 = sub_10007E128(1), (v8 & 1) != 0) && *(*(v6 + 56) + v7) == 1)
      {
        v9 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingServices;
        swift_beginAccess();
        if (*(*&v1[v9] + 16))
        {
          v10 = static os_log_type_t.debug.getter();
          if (qword_100113F08 != -1)
          {
            swift_once();
          }

          v11 = qword_10011B1C8;
          result = os_log_type_enabled(qword_10011B1C8, v10);
          if (result)
          {
            v12 = v1;
            v13 = swift_slowAlloc();
            *v13 = 134349056;
            *(v13 + 4) = *(*&v1[v9] + 16);

            v14 = "observingServices.count=%{public}ld";
LABEL_25:
            _os_log_impl(&_mh_execute_header, v11, v10, v14, v13, 0xCu);
          }
        }

        else
        {
          v17 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingAccessories;
          swift_beginAccess();
          if (*(*&v1[v17] + 16))
          {
            v10 = static os_log_type_t.debug.getter();
            if (qword_100113F08 != -1)
            {
              swift_once();
            }

            v11 = qword_10011B1C8;
            result = os_log_type_enabled(qword_10011B1C8, v10);
            if (result)
            {
              v18 = v1;
              v13 = swift_slowAlloc();
              *v13 = 134349056;
              *(v13 + 4) = *(*&v1[v17] + 16);

              v14 = "observingAccessories.count=%{public}ld";
              goto LABEL_25;
            }
          }

          else
          {
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v24 = *&v1[v2];
            *&v1[v2] = 0x8000000000000000;
            sub_10004BF7C(1, 2, isUniquelyReferenced_nonNull_native);
            *&v1[v2] = v24;
            swift_endAccess();
            CAFSignpostEmit_Finalized();
            v20 = static os_log_type_t.debug.getter();
            if (qword_100113F08 != -1)
            {
              v23 = v20;
              swift_once();
              v20 = v23;
            }

            return os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10011B1C8, "emittedFinalizedSignpost", 24, 2, _swiftEmptyArrayStorage);
          }
        }
      }

      else
      {
        v16 = static os_log_type_t.debug.getter();
        if (qword_100113F08 != -1)
        {
          v22 = v16;
          swift_once();
          v16 = v22;
        }

        return os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10011B1C8, "emittedRenderedSignpost false", 29, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      v15 = static os_log_type_t.debug.getter();
      if (qword_100113F08 != -1)
      {
        v21 = v15;
        swift_once();
        v15 = v21;
      }

      return os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10011B1C8, "climateSystemManagerCreated false", 33, 2, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

id sub_1000B570C()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11 - 8);
  __chkstk_darwin(v11);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *&v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingServices] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingAccessories] = &_swiftEmptyDictionarySingleton;
  v10 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_managerQueue;
  v6 = sub_1000B670C();
  v9[1] = &unk_1000D96A0;
  v9[2] = v6;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_1000B6758(&qword_100117EB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000040E8(&qword_100117EB8, &qword_1000D9760);
  sub_1000B67A0(qword_100117EC0, &qword_100117EB8, &qword_1000D9760);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_emitted] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_car] = 0;
  v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_overlayViewControllerDidLoad] = 0;
  v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_mainViewControllerDidLoad] = 0;
  v0[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated] = 0;
  v7 = type metadata accessor for ClimateSignpostManager();
  v12.receiver = v0;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_1000B5A0C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClimateSignpostManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000B5AE0(uint64_t a1, unint64_t a2)
{
  v47 = type metadata accessor for UUID();
  v40 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2 >> 62)
    {
LABEL_35:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingServices;
    if (v7)
    {
      v9 = 0;
      v10 = a2 & 0xC000000000000001;
      v11 = a2 & 0xFFFFFFFFFFFFFF8;
      v39 = v40 + 16;
      v41 = (v40 + 8);
      v42 = a2 & 0xFFFFFFFFFFFFFF8;
      v45 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_observingServices;
      v46 = a2;
      v43 = a2 & 0xC000000000000001;
      v44 = v7;
      while (1)
      {
        if (v10)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_32;
          }

          v14 = *(a2 + 8 * v9 + 32);
        }

        v15 = v14;
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (([v14 receivedAllValues] & 1) == 0)
        {
          break;
        }

LABEL_8:

        ++v9;
        if (v16 == v7)
        {
          goto LABEL_25;
        }
      }

      v17 = [v15 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v18 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v4;
      v4 = isUniquelyReferenced_nonNull_native;
      v48 = *(v6 + v8);
      a2 = v48;
      v21 = v6;
      *(v6 + v8) = 0x8000000000000000;
      v22 = v20;
      v6 = sub_10007DD80(v20);
      v24 = *(a2 + 16);
      v25 = (v23 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_33;
      }

      v27 = v23;
      if (*(a2 + 24) >= v26)
      {
        if ((v4 & 1) == 0)
        {
          sub_10004DBEC();
        }

        v4 = v22;
        a2 = v48;
        if ((v27 & 1) == 0)
        {
LABEL_22:
          *(a2 + 8 * (v6 >> 6) + 64) |= 1 << v6;
          (*(v40 + 16))(*(a2 + 48) + *(v40 + 72) * v6, v4, v47);
          *(*(a2 + 56) + 8 * v6) = v18;
          v30 = *(a2 + 16);
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_34;
          }

          *(a2 + 16) = v32;
          goto LABEL_7;
        }
      }

      else
      {
        sub_1000495C0(v26, v4);
        v4 = v22;
        v28 = sub_10007DD80(v22);
        if ((v27 & 1) != (v29 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v6 = v28;
        a2 = v48;
        if ((v27 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v12 = *(a2 + 56);
      v13 = *(v12 + 8 * v6);
      *(v12 + 8 * v6) = v18;

LABEL_7:
      (*v41)(v4, v47);
      v8 = v45;
      v6 = v21;
      *(v21 + v45) = a2;
      swift_endAccess();
      [v18 registerObserver:v21];
      a2 = v46;
      v10 = v43;
      v7 = v44;
      v11 = v42;
      goto LABEL_8;
    }

LABEL_25:
    v33 = static os_log_type_t.debug.getter();
    if (qword_100113F08 != -1)
    {
      swift_once();
    }

    v34 = qword_10011B1C8;
    if (os_log_type_enabled(qword_10011B1C8, v33))
    {
      v35 = v8;
      v36 = v6;
      v37 = v6;
      v38 = swift_slowAlloc();
      *v38 = 134349056;
      swift_beginAccess();
      *(v38 + 4) = *(*(v37 + v35) + 16);

      _os_log_impl(&_mh_execute_header, v34, v33, "observingServices.count=%{public}ld", v38, 0xCu);
      v6 = v37;
    }
  }
}

void sub_1000B5FC0(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t), void (*a5)(void), const char *a6)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [a2 unregisterObserver:Strong];
    v17 = [a2 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = *a3;
    swift_beginAccess();
    v19 = sub_1000B40EC(v14, a4, a5);
    (*(v12 + 8))(v14, v11);
    swift_endAccess();

    v20 = static os_log_type_t.debug.getter();
    if (qword_100113F08 != -1)
    {
      swift_once();
    }

    v21 = qword_10011B1C8;
    if (os_log_type_enabled(qword_10011B1C8, v20))
    {
      v22 = v16;
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = *(*&v16[v18] + 16);

      _os_log_impl(&_mh_execute_header, v21, v20, a6, v23, 0xCu);
    }
  }
}

unint64_t sub_1000B62A0()
{
  result = qword_100117E88;
  if (!qword_100117E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117E88);
  }

  return result;
}

double sub_1000B62F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  __chkstk_darwin(v21);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v7 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_managerQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B4DF4;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);

  v18 = a1;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000B6758(&qword_1001178B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040E8(&unk_1001159C0, &qword_1000D9A40);
  sub_1000B67A0(&qword_1001178C0, &unk_1001159C0, &qword_1000D9A40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);

  return sub_1000B4ABC();
}

uint64_t sub_1000B65F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000B6680(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000B670C()
{
  result = qword_1001159B0;
  if (!qword_1001159B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001159B0);
  }

  return result;
}

uint64_t sub_1000B6758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B67A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000082C4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B67F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B6864(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000B694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ClimateProgressCircle(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v6.receiver = v4;
  v6.super_class = v5;
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_1000B6A08();
}

void sub_1000B69C0(void *a1)
{
  v4 = a1;
  sub_1000B694C(v4, v1, v2, v3);
}

void sub_1000B6A08()
{
  v1 = [v0 layer];
  [v1 setSublayers:0];

  sub_1000B6A68();

  sub_1000B6CBC();
}

void sub_1000B6A68()
{
  v1 = sub_1000B6C64();
  v3 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v1 startAngle:v2 endAngle:*(v0 + *((swift_isaMask & *v0) + 0x98)) clockwise:{0.0, 6.28318531}];
  v4 = *(v0 + *((swift_isaMask & *v0) + 0x78));
  v5 = [v3 CGPath];
  [v4 setPath:v5];

  v6 = *(v0 + *((swift_isaMask & *v0) + 0x68));
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  [v4 setStrokeColor:v7];

  v8 = [objc_opt_self() clearColor];
  v9 = [v8 CGColor];

  [v4 setFillColor:v9];
  v10 = [v0 layer];
  [v10 addSublayer:v4];
}

CGFloat sub_1000B6C64()
{
  [v0 bounds];
  v1 = CGRectGetWidth(v3) * 0.5;
  [v0 bounds];
  CGRectGetHeight(v4);
  return v1;
}

void sub_1000B6CBC()
{
  v1 = sub_1000B6C64();
  v3 = [objc_opt_self() bezierPathWithArcCenter:1 radius:v1 startAngle:v2 endAngle:*(v0 + *((swift_isaMask & *v0) + 0x98)) clockwise:{-1.57079633, 4.71238898}];
  v4 = *(v0 + *((swift_isaMask & *v0) + 0x80));
  [v4 setLineCap:kCALineCapRound];
  v5 = [v3 CGPath];
  [v4 setPath:v5];

  [v4 setShadowOpacity:0.0];
  v6 = [objc_opt_self() clearColor];
  v7 = [v6 CGColor];

  [v4 setFillColor:v7];
  v8 = *(v0 + *((swift_isaMask & *v0) + 0x60));
  if (v8)
  {
    v9 = [v8 CGColor];
  }

  else
  {
    v9 = 0;
  }

  [v4 setStrokeColor:v9];

  v10 = [v0 layer];
  [v10 addSublayer:v4];
}

void sub_1000B6EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ClimateProgressCircle(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v13.receiver = v4;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v7 = *(v4 + *((swift_isaMask & *v4) + 0x80));
  v8 = *(v4 + *((swift_isaMask & *v4) + 0x60));
  if (v8)
  {
    v9 = [v8 CGColor];
  }

  else
  {
    v9 = 0;
  }

  [v7 setStrokeColor:v9];

  v10 = *(v4 + *((swift_isaMask & *v4) + 0x78));
  v11 = *(v4 + *((swift_isaMask & *v4) + 0x68));
  if (v11)
  {
    v12 = [v11 CGColor];
  }

  else
  {
    v12 = 0;
  }

  [v10 setStrokeColor:v12];
}

void sub_1000B7068(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_1000B6EF8(a3, v8, v6, v7);
}

id sub_1000B70D4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for ClimateProgressCircle(0, *((swift_isaMask & *v6) + 0x50), *((swift_isaMask & *v6) + 0x58), a6);
  v16.receiver = v6;
  v16.super_class = v10;
  v11 = objc_msgSendSuper2(&v16, "hitTest:withEvent:", a1, a2, a3);
  if (v11)
  {
    sub_100005AA0();
    v12 = v11;
    v13 = v6;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {

      return 0;
    }
  }

  return v11;
}

id sub_1000B71D4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v14 = sub_1000B70D4(a5, a2, a3, v11, v12, v13);

  return v14;
}

id sub_1000B7290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ClimateProgressCircle(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1000B7300(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  v4 = *((v3 & v2) + 0x50);
  v7 = *(*(v4 - 8) + 8);
  v7(&a1[*((swift_isaMask & *a1) + 0x70)], v4);

  v7(&a1[*((swift_isaMask & *a1) + 0x88)], v4);
  v5 = &a1[*((swift_isaMask & *a1) + 0x90)];

  return (v7)(v5, v4);
}

void sub_1000B74BC()
{
  *(v0 + *((swift_isaMask & *v0) + 0x60)) = 0;
  *(v0 + *((swift_isaMask & *v0) + 0x68)) = 0;
  v1 = *((swift_isaMask & *v0) + 0x78);
  *(v0 + v1) = [objc_allocWithZone(CAShapeLayer) init];
  v2 = *((swift_isaMask & *v0) + 0x80);
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1000B761C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000C4DDC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000040E8(&qword_1001179F0, &qword_1000D90F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000B7738(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000BAE3C(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000B7830(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000BAE3C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000BBD58(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000B7A50()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_style) != 2 || (v2 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis, result = swift_beginAccess(), *(v1 + v2)))
  {
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v6 = *((swift_isaMask & *v5) + 0x118);
    v7 = v5;
    v8 = v6();

    v9 = *(v1 + v4);
    v10 = *((swift_isaMask & *v9) + 0x288);
    v11 = v9;
    if ((v8 & 0x1A) == 2)
    {
      v10(1);

      v12 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton);
      v13 = [v12 titleLabel];
      if (v13)
      {
        v14 = v13;
        v15 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightSemibold];
        [v14 setFont:v15];
      }

      v16 = &v12[OBJC_IVAR____TtC7Climate13ClimateButton_title];
      swift_beginAccess();
      v17 = *v16;
      v18 = *(v16 + 1);
      *v16 = xmmword_1000D7430;
      if (v18)
      {
        v19 = v17 == 1330926913 && v18 == 0xE400000000000000;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
        }
      }
    }

    else
    {
      v10(0);

      v20 = (*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton) + OBJC_IVAR____TtC7Climate13ClimateButton_title);
      result = swift_beginAccess();
      v21 = v20[1];
      *v20 = 0;
      v20[1] = 0;
      if (!v21)
      {
        return result;
      }
    }

    ClimateButton.updateClimateConfiguration()();
  }

  return result;
}

id sub_1000B7CEC(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

id sub_1000B7D10(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

void sub_1000B7D34()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  v2 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton) isFocused];
  v3 = objc_opt_self();
  if (v2)
  {
    v4 = &selRef__carSystemFocusColor;
  }

  else
  {
    v4 = &selRef_clearColor;
  }

  v5 = [v3 *v4];
  [v1 setBackgroundColor:v5];

  v6 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  v7 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton) isFocused];
  v8 = objc_opt_self();
  if (v7)
  {
    v9 = &selRef__carSystemFocusColor;
  }

  else
  {
    v9 = &selRef_clearColor;
  }

  v10 = [v8 *v9];
  [v6 setBackgroundColor:v10];
}

void sub_1000B7E5C()
{
  v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
  v1 = swift_beginAccess();
  v2 = *(v0 + v4);
  v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_isZeroUIReference);
  LOBYTE(v4) = (*((swift_isaMask & *v0) + 0x3A0))(v1);
  if (v2 != 1)
  {
    if (v3)
    {
      [v0 bounds];
      Width = CGRectGetWidth(v30);
      v6 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) maximum];
      goto LABEL_6;
    }

    v17 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
    v18 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) minimum];
    v19 = [v18 unsignedCharValue];

    LODWORD(v4) = v4 - v19;
    if ((v4 & 0xFFFFFF00) == 0)
    {
      [v0 bounds];
      Width = CGRectGetWidth(v32);
      v20 = [*(v0 + v17) maximum];
      [v20 floatValue];
      v15 = v21;

      v16 = [*(v0 + v17) minimum];
      goto LABEL_11;
    }

LABEL_20:
    __break(1u);
    return;
  }

  if (v3)
  {
    [v0 bounds];
    Width = CGRectGetHeight(v29);
    v6 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) maximum];
LABEL_6:
    v7 = v6;
    [v7 floatValue];
    v9 = v8;

    goto LABEL_12;
  }

  v10 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
  v11 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) minimum];
  v12 = [v11 unsignedCharValue];

  LODWORD(v4) = v4 - v12;
  if ((v4 & 0xFFFFFF00) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  [v0 bounds];
  Width = CGRectGetHeight(v31);
  v13 = [*(v0 + v10) maximum];
  [v13 floatValue];
  v15 = v14;

  v16 = [*(v0 + v10) minimum];
LABEL_11:
  v22 = v16;
  v23 = [v22 unsignedCharValue];

  v9 = v15 - v23;
LABEL_12:
  v24 = Width / v9 * v4;
  v25 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint;
  v26 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint);
  if (v26)
  {
    [v26 constant];
    if (v24 == v27)
    {
      return;
    }

    v28 = *(v0 + v25);
  }

  else
  {
    if (v24 == 0.0)
    {
      return;
    }

    v28 = 0;
  }

  [v28 setConstant:v24];
  [v0 layoutIfNeeded];
}

void sub_1000B81D4(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue);
  *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue) = a1;
  if (v2 != a1 && !(*((swift_isaMask & *v1) + 0x2E8))())
  {
    if (*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled) == 1)
    {

      sub_1000B7E5C();
    }

    else
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v7[4] = sub_1000BDDA8;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1000B4DF4;
      v7[3] = &unk_1000F98F0;
      v5 = _Block_copy(v7);
      v6 = v1;

      [v3 animateWithDuration:2 delay:v5 options:0 animations:0.25 completion:0.0];
      _Block_release(v5);
    }
  }
}

void sub_1000B839C(void *a1, double a2)
{
  v3 = *(v2 + *a1);
  *(v2 + *a1) = a2;
  if (v3 != a2)
  {
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
    swift_beginAccess();
    if (*(v2 + v4) == 1)
    {
      ClimateStepper.updateConstraintsAndArrows()();
    }
  }

  sub_1000B8F48();
}

uint64_t sub_1000B8430(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = *((swift_isaMask & *Strong) + 0x138);
  v3 = Strong;
  v4 = v2();

  return v4;
}

void sub_1000B84DC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + *a3);
    v7 = &v6[OBJC_IVAR____TtC7Climate13ClimateButton_action];
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 1);
      sub_10001B054(v8, v9);
      v10 = v6;
      v8();

      sub_100003380(v8, v9);
      v5 = v10;
    }
  }
}

id sub_1000B85CC()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for ClimateContinuousStepper(0);
  v2 = objc_msgSendSuper2(&v24, "layoutSubviews");
  if (!(*((swift_isaMask & *v0) + 0x2E8))(v2))
  {
    sub_1000B7E5C();
  }

  v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  v4 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  v5 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  ClimateButton.imageSystemName.setter(v7, v6);
  v8 = ClimateButton.imageSymbolConfiguration.getter();
  v9 = ClimateButton.imageSymbolConfiguration.getter();
  v10 = *&v3[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v3[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v8;
  v11 = v8;

  v12 = ClimateButton.imageSymbolConfiguration.getter();
  sub_10000827C(0, &qword_100116930, UIImageSymbolConfiguration_ptr);
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  [v4 imageEdgeInsets];
  [v3 setImageEdgeInsets:?];
  v13 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  v14 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  v15 = &v14[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v17 = *v15;
  v16 = v15[1];

  ClimateButton.imageSystemName.setter(v17, v16);
  v18 = ClimateButton.imageSymbolConfiguration.getter();
  v19 = ClimateButton.imageSymbolConfiguration.getter();
  v20 = *&v13[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v13[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v18;
  v21 = v18;

  v22 = ClimateButton.imageSymbolConfiguration.getter();
  LOBYTE(v20) = static NSObject.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  [v14 imageEdgeInsets];
  return [v13 setImageEdgeInsets:?];
}

void sub_1000B88AC()
{
  v1 = v0;
  type metadata accessor for ClimateMaterialView();
  v2 = [v0 traitCollection];
  v3 = [swift_getObjCClassFromMetadata() materialViewWithVisualStyleFromRecipe:4 category:2 style:4 options:0 initialWeighting:v2 compatibleWithTraitCollection:1.0];

  if (v3)
  {
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
    swift_beginAccess();
    if (*&v0[v4] == 1)
    {
      v5 = &selRef_heightAnchor;
    }

    else
    {
      v5 = &selRef_widthAnchor;
    }

    v6 = [v3 *v5];
    v7 = [v6 constraintEqualToConstant:0.0];

    v8 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint;
    v9 = *&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint];
    *&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint] = v7;

    v10 = v3;
    [v1 addSubview:v10];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setClipsToBounds:1];
    [v10 setUserInteractionEnabled:1];
    if (*&v1[v4] == 1)
    {
      v11 = &selRef_trailingAnchor;
    }

    else
    {
      v11 = &selRef_topAnchor;
    }

    sub_1000040E8(&unk_100114770, qword_1000D58D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D5BB0;
    v13 = [v10 leadingAnchor];
    v14 = [v1 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(inited + 32) = v15;
    v16 = [v10 *v11];

    v17 = [v1 *v11];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(inited + 40) = v18;
    v19 = [v10 bottomAnchor];

    v20 = [v1 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(inited + 48) = v21;
    sub_1000B7738(inited, sub_1000BB878);
    v22 = *&v1[v8];
    if (v22)
    {
      v23 = v22;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v24 = objc_opt_self();
    sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 activateConstraints:isa];

    v26 = *&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView];
    *&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView] = v3;
  }
}

void sub_1000B8CB0()
{
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5BB0;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  *(inited + 40) = v3;
  v31 = v0;
  v4 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton);
  *(inited + 48) = v4;
  v29 = objc_opt_self();
  sub_10000827C(0, &qword_100115110, NSObject_ptr);
  v30 = inited;
  v27 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView;
  v28 = inited & 0xC000000000000001;
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = 0;
  do
  {
    if (v28)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v30 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = *(v31 + v27);
    if (v11)
    {
      [v11 addSubview:v10];
    }

    v12 = &v10[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
    v13 = *&v10[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
    v14 = *&v10[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
    v15 = *&v10[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
    v16 = v10;
    v17 = v13;
    v18 = v14;

    v19 = [v29 systemBlackColor];
    if (!v19)
    {
      v19 = v18;
    }

    v21 = *v12;
    v20 = *(v12 + 1);
    v22 = *(v12 + 2);
    *v12 = v17;
    *(v12 + 1) = v19;
    *(v12 + 2) = v15;
    v23 = v17;

    v24 = v19;
    if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0)
    {

LABEL_3:
      ClimateButton.refreshColorConfig()();
      goto LABEL_4;
    }

    sub_10007DB08(v15, v22);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_4:
    ++v8;
  }

  while (v8 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1000B8F48();
}

void sub_1000B8F48()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskConstraints;
  swift_beginAccess();
  sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deactivateConstraints:isa];

  *(v1 + v3) = _swiftEmptyArrayStorage;

  v5 = ClimateStepper.constraintsForStepButtons(_:direction:)(*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton), 1);
  swift_beginAccess();
  sub_1000B7738(v5, sub_1000BB878);
  swift_endAccess();
  v6 = ClimateStepper.constraintsForStepButtons(_:direction:)(*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton), 0);
  swift_beginAccess();
  sub_1000B7738(v6, sub_1000BB878);
  swift_endAccess();
  v7 = ClimateStepper.constraintsForStepButtons(_:direction:)(*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton), 2);
  swift_beginAccess();
  sub_1000B7738(v7, sub_1000BB878);
  swift_endAccess();

  v8 = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:v8];
}

uint64_t sub_1000B9140(char a1)
{
  sub_1000040E8(&unk_100117FD0, &unk_1000D9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D97F0;
  v4 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  *(inited + 32) = v4;
  v5 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  *(inited + 40) = v5;
  v6 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  *(inited + 48) = v6;
  v7 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  *(inited + 56) = v7;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  sub_1000BD6A0(a1 & 1, inited);
  swift_setDeallocating();
  sub_1000040E8(&qword_100118240, &unk_1000D9AC0);
  return swift_arrayDestroy();
}

void sub_1000B9238(void *a1)
{
  v2 = v1;
  if (((*((swift_isaMask & *v1) + 0x138))() & 0x18) != 0)
  {
    return;
  }

  if ((*((swift_isaMask & *v1) + 0x2E8))() != 2)
  {
    v6 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
    swift_beginAccess();
    v7 = *(v1 + v6);
    [a1 translationInView:v2];
    if (v7 == 1)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if ([a1 state] == 3)
    {
      v11 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone;
      if (*(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone) == 1)
      {
        v12 = (*((swift_isaMask & *v2) + 0x3A8))(0);
        (*((swift_isaMask & *v2) + 0x430))(v12);
        *(v2 + v11) = 0;
      }

      sub_1000B9C54(v10 < 0.0);
      v13 = (*((swift_isaMask & *v2) + 0x3A0))();
      v14 = *(v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_range);
      CAFRange.minimumValue<A>()();

      if (v75 == v13)
      {
        v15 = (*((swift_isaMask & *v2) + 0x368))();
      }

      else
      {
        v15 = 0;
      }

      sub_1000B9140(v15 & 1);
      v41 = v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v42 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        (*(v42 + 8))(0, ObjectType, v42);
        swift_unknownObjectRelease();
      }

      *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_lastSlideValue) = 0;
      (*((swift_isaMask & *v2) + 0x2F0))(0);
      v44 = [objc_opt_self() sharedApplication];
      v45 = [v44 delegate];

      if (v45)
      {
        type metadata accessor for ClimateAppDelegate();
        swift_dynamicCastClassUnconditional();
        v46 = sub_1000AF438();
        swift_unknownObjectRelease();
        v47 = *&v46[OBJC_IVAR____TtC7Climate18ClimateCoordinator_continuousStepperTracker];

        sub_1000BC684(v2, v10 < 0.0, v47);

        return;
      }

      goto LABEL_53;
    }

    (*((swift_isaMask & *v2) + 0x2F0))(1);
    v16 = objc_opt_self();
    v17 = [v16 sharedApplication];
    v18 = [v17 delegate];

    if (!v18)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

    v73 = v16;
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v19 = sub_1000AF438();
    swift_unknownObjectRelease();
    v20 = *&v19[OBJC_IVAR____TtC7Climate18ClimateCoordinator_continuousStepperTracker];

    sub_1000BBEF4(v2, v20);

    v21 = v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v21 + 1);
      v23 = swift_getObjectType();
      (*(v22 + 8))(1, v23, v22);
      swift_unknownObjectRelease();
    }

    sub_1000040E8(&unk_100117FD0, &unk_1000D9920);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D97F0;
    v25 = *(v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
    *(inited + 32) = v25;
    v26 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
    *(inited + 40) = v26;
    v27 = *(v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
    *(inited + 48) = v27;
    v28 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
    *(inited + 56) = v28;
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1000BD6A0(1, inited);
    swift_setDeallocating();
    sub_1000040E8(&qword_100118240, &unk_1000D9AC0);
    swift_arrayDestroy();
    v33 = *(v2 + v6);
    v34 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_lastSlideValue);
    [v2 bounds];
    if (v33 == 1)
    {
      v39 = v34 - v10;
      Height = CGRectGetHeight(*&v35);
    }

    else
    {
      v39 = v10 - v34;
      Height = CGRectGetWidth(*&v35);
    }

    v48 = Height;
    v49 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint;
    v50 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint);
    if (v50)
    {
      [v50 constant];
      v39 = v39 + v51;
      v52 = v39;
    }

    else
    {
      v52 = v39 + 0.0;
    }

    if (v39 >= v48)
    {
      v52 = v48;
    }

    if (v52 > 0.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0.0;
    }

    v54 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_isZeroUIReference);
    v55 = v53 / v48;
    v56 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
    v57 = [*(v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) maximum];
    v58 = [v57 unsignedCharValue];

    if (v54 == 1)
    {
      v59 = v55 * v58;
    }

    else
    {
      v60 = [*(v2 + v56) minimum];
      v61 = [v60 unsignedCharValue];

      if (((v58 - v61) & 0xFFFFFF00) != 0)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v62 = v55 * (v58 - v61);
      v63 = [*(v2 + v56) minimum];
      v64 = [v63 unsignedCharValue];

      v59 = v62 + v64;
    }

    v65 = round(v59);
    if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v65 > -1.0)
    {
      if (v65 < 256.0)
      {
        v66 = v65;
        if (v66 != (*((swift_isaMask & *v2) + 0x3A0))())
        {
          if (v66)
          {
            *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone) = 0;
            v67 = (*((swift_isaMask & *v2) + 0x3A8))(v66);
            (*((swift_isaMask & *v2) + 0x430))(v67);
          }

          else
          {
            *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone) = 1;
          }
        }

        [*(v2 + v49) setConstant:v53];
        [v2 layoutIfNeeded];
        v68 = [v74 sharedApplication];
        v69 = [v68 delegate];

        if (v69)
        {
          swift_dynamicCastClassUnconditional();
          v70 = sub_1000AF438();
          swift_unknownObjectRelease();
          v71 = *&v70[OBJC_IVAR____TtC7Climate18ClimateCoordinator_continuousStepperTracker];

          sub_1000BC2B4(v2, v71, v55);

          *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_lastSlideValue) = v10;
          return;
        }

        goto LABEL_54;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v4 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    v72 = v4;
    swift_once();
    v4 = v72;
  }

  v5 = qword_10011B1C0;

  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "No interaction available when matching sibling", 46, 2, _swiftEmptyArrayStorage);
}

void sub_1000B9C54(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [v3 constant];
  if (v5 <= 0.0)
  {
    goto LABEL_8;
  }

  v6 = (*((swift_isaMask & *v1) + 0x3A0))(v4);
  v7 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
  v8 = [*(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) minimum];
  v9 = [v8 unsignedCharValue];

  v10 = [*(v1 + v7) step];
  v11 = [v10 unsignedCharValue];

  if (((v9 + v11) >> 8))
  {
    __break(1u);
  }

  else
  {
    if (v6 >= (v9 + v11) || (a1 & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = [*(v1 + v7) minimum];
    v13 = [v12 unsignedCharValue];

    v14 = [*(v1 + v7) step];
    v15 = [v14 unsignedCharValue];

    if ((((v13 + v15) >> 8) & 1) == 0)
    {
      v16 = (*((swift_isaMask & *v1) + 0x3A8))();
      (*((swift_isaMask & *v1) + 0x430))(v16);
LABEL_8:
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v1;
      v21[4] = sub_1000BDEB4;
      v21[5] = v18;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 1107296256;
      v21[2] = sub_1000B4DF4;
      v21[3] = &unk_1000F98A0;
      v19 = _Block_copy(v21);
      v20 = v1;

      [v17 animateWithDuration:v19 animations:0.25];
      _Block_release(v19);
      return;
    }
  }

  __break(1u);
}

void sub_1000B9F88()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 8);
  v2 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 16);
  v3 = *((swift_isaMask & *v0) + 0x138);
  v4 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig);
  v5 = v1;

  v7 = v3(v6);
  v8 = sub_10007E858(v7, v4, v2);

  [v0 setBackgroundColor:v8];

  sub_1000BA068();
}

void sub_1000BA068()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *((swift_isaMask & *v3) + 0x118);
  v5 = v3;
  v6 = v4();

  v8 = v6 & 0x1A;
  if (*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_style) == 2 && (v9 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis, v7 = swift_beginAccess(), !*(v1 + v9)))
  {
    v20 = *(v1 + v2);
    v21 = v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig;
    v22 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig);
    v23 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 8);
    v24 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 16);
    v25 = objc_opt_self();
    v26 = v20;
    v27 = v22;
    v28 = v23;

    v29 = &selRef_systemWhiteColor;
    if (v8 == 2)
    {
      v29 = &selRef_systemGreenColor;
    }

    v30 = [v25 *v29];
    if (v30)
    {
      v31 = v30;

      v28 = v31;
    }

    sub_10007A4CC(v27, v28, v24);

    v32 = *v21;
    v33 = *(v21 + 1);
    v34 = *(v21 + 2);
    v35 = objc_opt_self();
    v14 = v32;
    v36 = v33;

    v37 = &selRef_systemBlackColor;
    if (v8 == 2)
    {
      v37 = &selRef_systemGreenColor;
    }

    v38 = [v35 *v37];
    if (v38)
    {
      v39 = v38;

      v36 = v39;
    }

    sub_10007A4CC(v14, v36, v34);
  }

  else if (v8 == 2)
  {
    v10 = (*((swift_isaMask & *v1) + 0x138))(v7);
    v11 = [objc_opt_self() systemGreenColor];
    if ((v10 & 4) != 0)
    {
      v12 = sub_10007CDE8();

      v11 = v12;
    }

    v13 = *(v1 + v2);
    v14 = v11;
    [v13 setTitleColor:v14 forState:0];
    [*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton) setTitleColor:v14 forState:0];
  }

  else
  {
    v15 = *(v1 + v2);
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 systemWhiteColor];
    [v17 setTitleColor:v18 forState:0];

    v19 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton);
    v14 = [v16 systemBlackColor];
    [v19 setTitleColor:v14 forState:0];
  }
}

uint64_t sub_1000BA404()
{
  v1 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_trackerUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t type metadata accessor for ClimateContinuousStepper(uint64_t a1)
{
  result = qword_100117F88;
  if (!qword_100117F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BA628(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000BA720()
{
  (*((swift_isaMask & *v0) + 0x2F0))(2);
  sub_1000040E8(&unk_100117FD0, &unk_1000D9920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D97F0;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  *(inited + 56) = v5;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_1000BD6A0(1, inited);
  swift_setDeallocating();
  sub_1000040E8(&qword_100118240, &unk_1000D9AC0);
  return swift_arrayDestroy();
}

id sub_1000BA89C(double a1)
{
  result = (*((swift_isaMask & *v1) + 0x2E8))();
  if (result == 2)
  {
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
    swift_beginAccess();
    v5 = *(v1 + v4);
    [v1 bounds];
    if (v5 == 1)
    {
      Height = CGRectGetHeight(*&v6);
    }

    else
    {
      Height = CGRectGetWidth(*&v6);
    }

    [*(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint) setConstant:Height * a1];
    return [v1 layoutIfNeeded];
  }

  return result;
}

uint64_t sub_1000BA9E0(char a1)
{
  v2 = v1;
  (*((swift_isaMask & *v1) + 0x2F0))(0);
  sub_1000B9C54(a1);
  v4 = (*((swift_isaMask & *v1) + 0x3A0))();
  v5 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_range);
  CAFRange.minimumValue<A>()();

  v6 = 0;
  if (v11 == v4)
  {
    v6 = (*((swift_isaMask & *v2) + 0x368))(0);
  }

  sub_1000B9140(v6 & 1);
  v7 = v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(0, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1000BAD78(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1000BADE8()
{
  result = qword_100117FC0;
  if (!qword_100117FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117FC0);
  }

  return result;
}

uint64_t sub_1000BAE3C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void sub_1000BAEDC(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1000BB2E8(v10, v7, a3, v5);

      return;
    }
  }

  __chkstk_darwin(a1);
  v9 = &v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_1000BB05C(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

void sub_1000BB05C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  v34 = a4;
  v28 = a2;
  v29 = a1;
  v37 = type metadata accessor for UUID();
  v6 = __chkstk_darwin(v37);
  v35 = a3;
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = v5 + 16;
  v33 = v5;
  v30 = 0;
  v31 = (v5 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = v16 | (v8 << 6);
    v18 = v36;
    v19 = v37;
LABEL_11:
    v22 = v35;
    (*(v33 + 16))(v18, v35[6] + *(v33 + 72) * v17, v19, v6);
    sub_10001C1A4(v22[7] + 8 * v17, v39);
    v23 = v38;
    v24 = v34(v18, v39);
    v38 = v23;
    if (v23)
    {
      sub_100008904(v39, &unk_100117FE0, &qword_1000D6290);
      (*v31)(v18, v19);
      return;
    }

    v25 = v24;
    sub_100008904(v39, &unk_100117FE0, &qword_1000D6290);
    (*v31)(v18, v19);
    if (v25)
    {
      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1000BB378(v29, v28, v30, v35);
        return;
      }
    }
  }

  v20 = v8;
  v18 = v36;
  v19 = v37;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v21 = v10[v8];
    ++v20;
    if (v21)
    {
      v14 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1000BB2E8(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1000BB05C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1000BB378(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v40 = v37 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1000040E8(&qword_100115E90, &qword_1000D9930);
  result = static _DictionaryStorage.allocate(capacity:)();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v37[2] = v43 + 16;
  v38 = result;
  v17 = result + 64;
  v39 = a1;
  v37[0] = a4;
  v37[1] = v43 + 32;
  while (v15)
  {
    v18 = v10;
    v19 = __clz(__rbit64(v15));
    v41 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[6];
    v25 = v43;
    v24 = v44;
    v42 = *(v43 + 72);
    v26 = v40;
    (*(v43 + 16))(v40, v23 + v42 * v22, v44);
    sub_10001C1A4(a4[7] + 8 * v22, v46);
    v27 = *(v25 + 32);
    v10 = v18;
    v27(v18, v26, v24);
    sub_1000BDCE0(v46, v45);
    v14 = v38;
    sub_1000BDD50();
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(v14 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      a1 = v39;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v17 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    a1 = v39;
LABEL_26:
    *(v17 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v27((*(v14 + 48) + v31 * v42), v18, v44);
    result = sub_1000BDCE0(v45, *(v14 + 56) + 8 * v31);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37[0];
    v15 = v41;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v18 = v10;
      v19 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void (*sub_1000BB6E8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000BDEB0;
  }

  __break(1u);
  return result;
}

void (*sub_1000BB768(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000BB7E8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000BB7F0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1000BB870;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BB878(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000BDDCC(&unk_100117FF8, &qword_100117FF0, &qword_1000D9938);
          for (i = 0; i != v6; ++i)
          {
            sub_1000040E8(&qword_100117FF0, &qword_1000D9938);
            v9 = sub_1000BB6E8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BBA18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000BDDCC(&unk_100118010, &qword_100118008, &unk_1000D9940);
          for (i = 0; i != v6; ++i)
          {
            sub_1000040E8(&qword_100118008, &unk_1000D9940);
            v9 = sub_1000BB768(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000827C(0, &qword_1001167B0, CAFDefrost_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BBBB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000BDDCC(&qword_100116080, &qword_100118040, &unk_1000D7558);
          for (i = 0; i != v6; ++i)
          {
            sub_1000040E8(&qword_100118040, &unk_1000D7558);
            v9 = sub_1000BB6E8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000827C(0, &qword_100116078, CAFService_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BBD58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000BDDCC(&qword_100118028, &qword_100118020, &qword_1000D9958);
          for (i = 0; i != v6; ++i)
          {
            sub_1000040E8(&qword_100118020, &qword_1000D9958);
            v9 = sub_1000BB7F0(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000040E8(&unk_1001163C0, &qword_1000D9950);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BBEF4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 service];
  v10 = [v9 uniqueIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v11 = *(a2 + 16);
  if (!*(v11 + 16))
  {
    return (*(v5 + 8))(v8, v4);
  }

  v12 = sub_10007DD80(v8);
  if ((v13 & 1) == 0)
  {

    return (*(v5 + 8))(v8, v4);
  }

  v33 = v4;
  v14 = *(*(v11 + 56) + 8 * v12);

  __chkstk_darwin(v15);
  *(&v32 - 2) = a1;
  sub_1000BAEDC(sub_1000BDCC0, (&v32 - 4), v14);
  v17 = v16;

  v18 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  if (!v21)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      sub_10001C1A4(*(v17 + 56) + ((v23 << 9) | (8 * v24)), v34);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100008904(v34, &unk_100117FE0, &qword_1000D6290);
      if (Strong)
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_8;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v18 = v35;
  }

  while (v21);
  while (1)
  {
LABEL_8:
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v27 = _CocoaArrayWrapper.endIndex.getter();
      if (v27)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    if (v26 >= v22)
    {
      break;
    }

    v21 = *(v17 + 64 + 8 * v26);
    ++v23;
    if (v21)
    {
      v23 = v26;
      goto LABEL_6;
    }
  }

  if (v18 >> 62)
  {
    goto LABEL_30;
  }

  v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v27)
  {
LABEL_19:
    v28 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v28 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v29 = *(v18 + 8 * v28 + 32);
        swift_unknownObjectRetain();
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      [v29 siblingDidStartSliding];
      swift_unknownObjectRelease();
      ++v28;
    }

    while (v30 != v27);
  }

LABEL_31:

  v4 = v33;
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000BC2B4(void *a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 service];
  v12 = [v11 uniqueIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v13 = *(a2 + 16);
  if (!*(v13 + 16))
  {
    return (*(v7 + 8))(v10, v6);
  }

  v14 = sub_10007DD80(v10);
  if ((v15 & 1) == 0)
  {

    return (*(v7 + 8))(v10, v6);
  }

  v35 = v6;
  v16 = *(*(v13 + 56) + 8 * v14);

  __chkstk_darwin(v17);
  *(&v34 - 2) = a1;
  sub_1000BAEDC(sub_1000BDCC0, (&v34 - 4), v16);
  v19 = v18;

  v20 = _swiftEmptyArrayStorage;
  v37 = _swiftEmptyArrayStorage;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  if (!v23)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_10001C1A4(*(v19 + 56) + ((v25 << 9) | (8 * v26)), v36);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100008904(v36, &unk_100117FE0, &qword_1000D6290);
      if (Strong)
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_8;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v37;
  }

  while (v23);
  while (1)
  {
LABEL_8:
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v29)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    if (v28 >= v24)
    {
      break;
    }

    v23 = *(v19 + 64 + 8 * v28);
    ++v25;
    if (v23)
    {
      v25 = v28;
      goto LABEL_6;
    }
  }

  if (v20 >> 62)
  {
    goto LABEL_30;
  }

  v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
LABEL_19:
    v30 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v30 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v31 = *(v20 + 8 * v30 + 32);
        swift_unknownObjectRetain();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      [v31 siblingDidUpdateWithProgress:a3];
      swift_unknownObjectRelease();
      ++v30;
    }

    while (v32 != v29);
  }

LABEL_31:

  v6 = v35;
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1000BC684(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 service];
  v12 = [v11 uniqueIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_beginAccess();
  v13 = *(a3 + 16);
  if (!*(v13 + 16))
  {
    return (*(v7 + 8))(v10, v6);
  }

  v14 = sub_10007DD80(v10);
  if ((v15 & 1) == 0)
  {

    return (*(v7 + 8))(v10, v6);
  }

  v34 = v7;
  v35 = v6;
  v16 = *(*(v13 + 56) + 8 * v14);

  __chkstk_darwin(v17);
  *(&v34 - 2) = a1;
  sub_1000BAEDC(sub_1000BDCC0, (&v34 - 4), v16);
  v19 = v18;

  v20 = _swiftEmptyArrayStorage;
  v37 = _swiftEmptyArrayStorage;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  if (!v23)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_10001C1A4(*(v19 + 56) + ((v25 << 9) | (8 * v26)), v36);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100008904(v36, &unk_100117FE0, &qword_1000D6290);
      if (Strong)
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_8;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v20 = v37;
  }

  while (v23);
  while (1)
  {
LABEL_8:
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v29)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    if (v28 >= v24)
    {
      break;
    }

    v23 = *(v19 + 64 + 8 * v28);
    ++v25;
    if (v23)
    {
      v25 = v28;
      goto LABEL_6;
    }
  }

  if (v20 >> 62)
  {
    goto LABEL_30;
  }

  v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29)
  {
LABEL_19:
    v30 = 0;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v30 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v31 = *(v20 + 8 * v30 + 32);
        swift_unknownObjectRetain();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      [v31 siblingDidStopSlidingWithWasIncreasing:a2 & 1];
      swift_unknownObjectRelease();
      ++v30;
    }

    while (v32 != v29);
  }

LABEL_31:

  v7 = v34;
  v6 = v35;
  return (*(v7 + 8))(v10, v6);
}

void sub_1000BCA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, char a8, char a9)
{
  v10 = v9;
  UUID.init()();
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state) = 0;
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView) = 0;
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone) = 0;
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint) = 0;
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_lastSlideValue) = 0;
  *(v9 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled) = 0;
  v11 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton;
  v12 = type metadata accessor for ClimateMaskedStepperButton(0);
  v13 = [objc_allocWithZone(v12) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v13 layer];
  [v14 setHitTestsAsOpaque:1];

  v15 = [v13 layer];
  v16 = 0.0;
  [v15 setCornerRadius:0.0];

  *(v10 + v11) = v13;
  v17 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton;
  v18 = [objc_allocWithZone(v12) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [v18 layer];
  [v19 setHitTestsAsOpaque:1];

  v20 = [v18 layer];
  [v20 setCornerRadius:0.0];

  *(v10 + v17) = v18;
  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskConstraints) = _swiftEmptyArrayStorage;
  v21 = [objc_allocWithZone(type metadata accessor for ClimateStepperButton(0)) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v21 setUserInteractionEnabled:0];
  v22 = [v21 layer];
  [v22 setCornerRadius:0.0];

  v23 = v21;
  ClimateButton.title.setter(a3, a4);

  ClimateButton.imageSystemName.setter(a1, a2);
  v24 = [objc_allocWithZone(v12) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v24 setUserInteractionEnabled:0];
  v25 = [v24 layer];
  [v25 setCornerRadius:0.0];

  v26 = v24;
  ClimateButton.title.setter(a3, a4);

  ClimateButton.imageSystemName.setter(a1, a2);

  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton) = v26;
  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_style) = a9;
  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_isZeroUIReference) = a8;
  v27 = [a6 minimum];
  LOBYTE(v25) = [v27 unsignedCharValue];

  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue) = v25;
  *(v10 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_service) = a7;
  v28 = v23;
  v29 = a7;
  v30 = a6;
  v32 = ClimateStepper.init(primaryButton:axis:range:)(v28, a5, v30, v31);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v109 = v28;
  v34 = &v28[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v36 = *&v28[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v35 = *&v28[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];
  *v34 = sub_1000BDE58;
  v34[1] = v33;
  v37 = v32;

  sub_100003380(v36, v35);

  v38 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton;
  v39 = *&v37[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton];
  v113 = OBJC_IVAR____TtC7Climate14ClimateStepper_upButton;
  v40 = (*&v37[OBJC_IVAR____TtC7Climate14ClimateStepper_upButton] + OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock);
  v41 = *v40;
  v42 = v40[1];
  v43 = &v39[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v45 = *&v39[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v44 = *&v39[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];
  *v43 = v41;
  v43[1] = v42;
  v46 = v39;
  sub_10001B054(v41, v42);
  sub_100003380(v45, v44);

  v47 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton;
  v48 = *&v37[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton];
  v111 = OBJC_IVAR____TtC7Climate14ClimateStepper_downButton;
  v49 = (*&v37[OBJC_IVAR____TtC7Climate14ClimateStepper_downButton] + OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock);
  v50 = *v49;
  v51 = v49[1];
  v52 = &v48[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v53 = *&v48[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v54 = *&v48[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];
  *v52 = v50;
  v52[1] = v51;
  v55 = v48;
  sub_10001B054(v50, v51);
  sub_100003380(v53, v54);

  v56 = *&v37[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton];
  v57 = *v34;
  v58 = v34[1];
  v59 = &v56[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v60 = *&v56[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v61 = *&v56[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];
  *v59 = *v34;
  v59[1] = v58;
  v62 = v56;
  sub_10001B054(v57, v58);
  sub_100003380(v60, v61);

  v63 = *&v37[v38];
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = &v63[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v66 = *v65;
  v67 = v65[1];
  *v65 = sub_1000BDE60;
  v65[1] = v64;
  v68 = v63;

  sub_100003380(v66, v67);

  v69 = *&v37[v47];
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = v69;

  v72 = &v71[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v73 = *v72;
  v74 = v72[1];
  *v72 = sub_1000BDE84;
  v72[1] = v70;

  sub_100003380(v73, v74);

  *(*&v113[v37] + OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate + 8) = &off_1000F7A60;
  swift_unknownObjectWeakAssign();
  *(*&v37[v38] + OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate + 8) = &off_1000F7A60;
  swift_unknownObjectWeakAssign();
  *(*&v37[v111] + OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate + 8) = &off_1000F7A60;
  swift_unknownObjectWeakAssign();
  v75 = *&v37[v47];
  v76 = *&v37[v111];
  v77 = v75;
  v78 = v76;

  *&v77[OBJC_IVAR____TtC7Climate20ClimateStepperButton_delegate + 8] = &off_1000F7A60;
  swift_unknownObjectWeakAssign();

  v79 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v80 = *&v37[v79];
  v81 = *((swift_isaMask & *v80) + 0x158);

  v82 = v80;
  v81(a3, a4);

  ClimateButton.title.setter(a3, a4);
  v83 = *&v37[v79];

  v84 = v83;
  ClimateButton.imageSystemName.setter(a1, a2);

  ClimateButton.imageSystemName.setter(a1, a2);
  sub_1000B88AC();
  v85 = *&v37[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView];
  if (v85)
  {
    v86 = *((swift_isaMask & *v37) + 0x138);
    v87 = v85;
    if ((v86() & 0x18) == 0)
    {
      if ((v86() & 2) != 0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }
    }

    [v87 setAlpha:v16];
  }

  v88 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v37 action:"didSlide:"];
  [v37 addGestureRecognizer:v88];
  sub_1000B8CB0();
  v89 = [objc_opt_self() sharedApplication];
  v90 = [v89 delegate];

  if (v90)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v91 = sub_1000AF438();
    swift_unknownObjectRelease();

    v92 = v37;
    sub_10009DABC();

    [*&v109[OBJC_IVAR____TtC7Climate13ClimateButton_backgroundView] removeFromSuperview];
    v93 = *&v109[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
    v94 = *&v109[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
    v95 = *&v109[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
    v96 = objc_opt_self();
    v97 = v93;
    v98 = v94;

    v99 = [v96 clearColor];
    if (v99)
    {
      v100 = v99;

      v97 = v100;
    }

    sub_10007A4CC(v97, v98, v95);

    sub_1000B7A50();
    v101 = *&v92[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 8];
    v102 = *&v92[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 16];
    v103 = *((swift_isaMask & *v92) + 0x138);
    v104 = *&v92[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig];
    v105 = v101;

    v107 = v103(v106);
    v108 = sub_10007E858(v107, v104, v102);

    [v92 setBackgroundColor:v108];
    sub_1000BA068();
  }

  else
  {
    __break(1u);
  }
}

id sub_1000BD554(double a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  v4 = v3;
  [v4 setBeginTime:CACurrentMediaTime()];
  [v4 setDuration:a1];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v4 setFromValue:isa];

  v6 = Int._bridgeToObjectiveC()().super.super.isa;
  [v4 setToValue:v6];

  v7 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v8) = 1051260355;
  LODWORD(v9) = 1.0;
  v10 = [v7 initWithControlPoints:v8 :0.0 :0.0 :v9];
  [v4 setTimingFunction:v10];

  return v4;
}

void sub_1000BD6A0(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = 0.3;
  }

  else
  {
    v3 = 0.25;
  }

  v4 = sub_1000BD554(v3);
  if ([v4 toValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (*(&v28 + 1))
  {
    if (swift_dynamicCast())
    {
      v25 = v4;
      v5 = 0;
      *&v29[0] = _swiftEmptyArrayStorage;
      v6 = *(a2 + 16);
      v7 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v6 == v5)
        {
          *&v29[0] = _swiftEmptyArrayStorage;
          if (v7 >> 62)
          {
            goto LABEL_36;
          }

          v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_21;
          }

          goto LABEL_37;
        }

        if (v5 >= v6)
        {
          break;
        }

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_33;
        }

        v9 = *(a2 + 32 + 8 * v5++);
        if (v9)
        {
          v10 = v9;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v29[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = *&v29[0];
          v5 = v8;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (!v11)
        {
          break;
        }

LABEL_21:
        v12 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v13 = *(v7 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          [v13 alpha];
          if (v16 == v26)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v12;
          if (v15 == v11)
          {
            v17 = *&v29[0];
            goto LABEL_38;
          }
        }
      }

LABEL_37:
      v17 = _swiftEmptyArrayStorage;
LABEL_38:

      if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
      {
        goto LABEL_51;
      }

      for (i = *(v17 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= *(v17 + 16))
            {
              goto LABEL_50;
            }

            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v23 = [v20 layer];
          v24 = String._bridgeToObjectiveC()();
          [v23 addAnimation:v25 forKey:v24];

          [v21 setAlpha:v26];
          ++v19;
          if (v22 == i)
          {
            goto LABEL_52;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        ;
      }

LABEL_52:
    }

    else
    {
    }
  }

  else
  {

    sub_100008904(v29, &unk_1001166B0, &qword_1000D64C8);
  }
}

uint64_t sub_1000BDA60()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000BDA98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1000BDAB0()
{
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_setCurrentValueToZeroWhenSlideDone) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillViewProgressConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_lastSlideValue) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled) = 0;
  v1 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton;
  v2 = type metadata accessor for ClimateMaskedStepperButton(0);
  v3 = [objc_allocWithZone(v2) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v3 layer];
  [v4 setHitTestsAsOpaque:1];

  v5 = [v3 layer];
  [v5 setCornerRadius:0.0];

  *(v0 + v1) = v3;
  v6 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton;
  v7 = [objc_allocWithZone(v2) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v7 layer];
  [v8 setHitTestsAsOpaque:1];

  v9 = [v7 layer];
  [v9 setCornerRadius:0.0];

  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskConstraints) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000BDCE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100117FE0, &qword_1000D6290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BDD50()
{
  result = qword_100115800;
  if (!qword_100115800)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115800);
  }

  return result;
}

uint64_t sub_1000BDDCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000082C4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BDE20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000BDEBC()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v4 = sub_1000AF438();
    swift_unknownObjectRelease();
    v5 = *&v4[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus];

    v6 = [v5 currentSession];
    if (v6)
    {
      v7 = [v6 MFiCertificateSerialNumber];

      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = *(v1 + OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_pairedManager);
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v11 vehicleForCertificateSerial:isa];

      sub_1000BE620(v8, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1000BE02C()
{
  *&v0[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter] = 1;
  v1 = OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_pairedManager;
  *&v0[v1] = [objc_allocWithZone(CRPairedVehicleManager) init];
  v2 = OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_observers;
  *&v0[v2] = sub_10005013C(_swiftEmptyArrayStorage);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ClimateAccessibilityManager();
  v3 = objc_msgSendSuper2(&v9, "init");
  sub_1000BE674();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = [ObjCClassFromMetadata defaultCenter];
  v7 = String._bridgeToObjectiveC()();
  [v6 addObserver:v5 selector:"didUpdateVehicle" name:v7 object:0];

  return v5;
}

id sub_1000BE174()
{
  sub_1000BE674();
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ClimateAccessibilityManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000BE2BC()
{
  sub_1000BDEBC();
  if (v1)
  {
    v2 = &selRef_maxDefrostOn;
    v15 = v1;
    v3 = [v1 colorFilterPreference];
    v4 = OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter;
    if (v3 == *(v0 + OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter))
    {
    }

    else
    {
      v5 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
LABEL_21:
        v14 = v5;
        swift_once();
        v5 = v14;
      }

      os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, qword_10011B1C0, "Accessibility filter updated", 28, 2, _swiftEmptyArrayStorage);
      *(v0 + v4) = [v15 v2[427]];
      v6 = OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_observers;
      swift_beginAccess();
      v2 = *(v0 + v6);
      v7 = 1 << *(v2 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & v2[8];
      v10 = (v7 + 63) >> 6;
      v5 = swift_bridgeObjectRetain_n();
      v11 = 0;
      while (v9)
      {
LABEL_16:
        sub_1000BE548(&v2[7][(v11 << 9) | (8 * __clz(__rbit64(v9)))], v16);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong didUpdateColorFilterPreferenceWithFilter:*(v0 + v4)];
          swift_unknownObjectRelease();
        }

        v9 &= v9 - 1;
        v5 = sub_1000BE5B8(v16);
      }

      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        if (v12 >= v10)
        {
          break;
        }

        v9 = v2[v12 + 8];
        ++v11;
        if (v9)
        {
          v11 = v12;
          goto LABEL_16;
        }
      }
    }
  }
}

uint64_t sub_1000BE548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100116D30, &qword_1000D7250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BE5B8(uint64_t a1)
{
  v2 = sub_1000040E8(&unk_100116D30, &qword_1000D7250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000BE620(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_1000BE674()
{
  result = qword_100118088;
  if (!qword_100118088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100118088);
  }

  return result;
}

double sub_1000BE6C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate15ClimateZoneCard_zone;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateZoneCard_zoneLabel);

  sub_100071888();

  v4 = String._bridgeToObjectiveC()();

  [v3 setText:v4];

  v5 = *(v1 + OBJC_IVAR____TtC7Climate15ClimateZoneCard_servicesGrid);
  *&v5[OBJC_IVAR____TtC7Climate19ClimateZoneControls_zone] = *(v1 + v2);
  swift_retain_n();
  v6 = v5;

  sub_1000A71CC();

  return result;
}

void sub_1000BE7C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_1000BE828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = objc_allocWithZone(type metadata accessor for ClimateGlassView());
  v5 = ClimateGlassView.init(cornerRadius:cornerCurve:isTranslucent:)(kCACornerCurveContinuous, 1, 28.0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v5];
  v6 = objc_opt_self();
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000D5D90;
  v8 = [v5 leftAnchor];
  v9 = [v3 leftAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v7 + 32) = v10;
  v11 = [v5 topAnchor];
  v12 = [v3 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v7 + 40) = v13;
  v14 = [v5 bottomAnchor];
  v15 = [v3 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v7 + 48) = v16;
  v17 = [v5 rightAnchor];
  v18 = [v3 rightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v7 + 56) = v19;
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];

  [v5 setClipsToBounds:1];
  v21 = *&v3[OBJC_IVAR____TtC7Climate15ClimateZoneCard_background];
  *&v3[OBJC_IVAR____TtC7Climate15ClimateZoneCard_background] = v5;
}

void sub_1000BEB78()
{

  v1 = *(v0 + OBJC_IVAR____TtC7Climate15ClimateZoneCard_background);
}

id sub_1000BEBD8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClimateZoneCard();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000BEC9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC7Climate15ClimateZoneCard_zone);
  v4 = OBJC_IVAR____TtC7Climate11ClimateZone_key;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a1, v3 + v4, v5);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v5);
}

BOOL ClimateGlassView.isTranslucent.getter()
{
  UIView._background.getter();
  v0 = v3 != 0;
  sub_1000BF600(v2);
  return v0;
}

uint64_t ClimateGlassView.isTranslucent.setter(char a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for _Glass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static _Glass._GlassVariant.regular.getter();
    _Glass.init(_:smoothness:)();
    *(&v10 + 1) = v3;
    v11 = &protocol witness table for _Glass;
    v7 = sub_10000D830(&v9);
    (*(v4 + 32))(v7, v6, v3);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  return UIView._background.setter();
}

void (*ClimateGlassView.isTranslucent.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  v5 = *(*(type metadata accessor for _Glass._GlassVariant() - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *(v4 + 128) = v6;
  v7 = type metadata accessor for _Glass();
  *(v4 + 136) = v7;
  v8 = *(v7 - 8);
  *(v4 + 144) = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 152) = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 152) = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  *(v4 + 160) = v10;
  UIView._background.getter();
  v11 = *(v4 + 24) != 0;
  sub_1000BF600(v4);
  *(v4 + 168) = v11;
  return sub_1000BF13C;
}

void sub_1000BF13C(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2 + 5;
    if (*(*a1 + 168))
    {
      v4 = v2[18];
      v5 = v2[19];
      v6 = v2[17];
      static _Glass._GlassVariant.regular.getter();
      _Glass.init(_:smoothness:)();
      v2[8] = v6;
      v2[9] = &protocol witness table for _Glass;
LABEL_6:
      v7 = sub_10000D830(v3);
      (*(v4 + 32))(v7, v5, v6);
      goto LABEL_8;
    }
  }

  else
  {
    v3 = v2 + 10;
    if (*(*a1 + 168))
    {
      v5 = v2[20];
      v6 = v2[17];
      v4 = v2[18];
      static _Glass._GlassVariant.regular.getter();
      _Glass.init(_:smoothness:)();
      v2[13] = v6;
      v2[14] = &protocol witness table for _Glass;
      goto LABEL_6;
    }
  }

  v3[4] = 0;
  *v3 = 0u;
  *(v3 + 1) = 0u;
LABEL_8:
  v9 = v2[19];
  v8 = v2[20];
  v10 = v2[16];
  UIView._background.setter();
  free(v8);
  free(v9);
  free(v10);

  free(v2);
}

uint64_t ClimateGlassView.init()()
{
  v0 = *(swift_getObjectType() + 104);
  v1 = v0(kCACornerCurveContinuous, 1, 0.0);
  swift_deallocPartialClassInstance();
  return v1;
}

id ClimateGlassView.__allocating_init(cornerRadius:cornerCurve:isTranslucent:)(void *a1, uint64_t a2, double a3)
{
  v4 = a2;
  v7 = objc_allocWithZone(v3);
  return ClimateGlassView.init(cornerRadius:cornerCurve:isTranslucent:)(a1, v4, a3);
}

id ClimateGlassView.init(cornerRadius:cornerCurve:isTranslucent:)(void *a1, char a2, double a3)
{
  v7 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for _Glass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClimateGlassView();
  v22.receiver = v3;
  v22.super_class = v12;
  v13 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = [v13 layer];
  [v14 setCornerRadius:a3];

  v15 = [v13 layer];
  [v15 setCornerCurve:a1];

  if (a2)
  {
    static _Glass._GlassVariant.regular.getter();
    _Glass.init(_:smoothness:)();
    *(&v20 + 1) = v8;
    v21 = &protocol witness table for _Glass;
    v16 = sub_10000D830(&v19);
    (*(v9 + 32))(v16, v11, v8);
  }

  else
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
  }

  UIView._background.setter();
  v17 = [v13 layer];

  [v17 setHitTestsAsOpaque:1];
  return v13;
}

uint64_t sub_1000BF600(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_1001180D8, &qword_1000D99B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id ClimateGlassView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateGlassView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000BF7B4()
{
  sub_1000C10C4();
  v1 = *((swift_isaMask & *v0) + 0x118);
  v2 = [v0 setEnabled:(v1() & 0x18) == 0];
  if (((v1)(v2) & 0x1B) == 1)
  {
    v3 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v4 = v0 + *v3;
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v7 = *v4;
  v8 = v5;

  sub_10007A4CC(v7, v8, v6);

  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();

  return sub_1000BF8BC();
}

uint64_t sub_1000BF8BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate29ClimateAutomakerSettingButton_setting);
  if (![v1 hasSymbolName])
  {
    goto LABEL_19;
  }

  v2 = [v1 symbolName];
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 != *(v0 + OBJC_IVAR____TtC7Climate29ClimateAutomakerSettingButton_symbolName) || v6 != *(v0 + OBJC_IVAR____TtC7Climate29ClimateAutomakerSettingButton_symbolName + 8))
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return result;
    }

    v10 = [v1 symbolName];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      v15 = CAFUIImageForSymbolName();

      if (v15)
      {

        v16 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
        swift_beginAccess();
        v17 = *v16;
        v18 = v16[1];
        *v16 = v12;
        v16[1] = v14;
        if (v18 && (v12 == v17 && v18 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
        }

        goto LABEL_25;
      }
    }

LABEL_19:
    v19 = (v0 + OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName);
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    *v19 = 0xD000000000000013;
    v19[1] = 0x80000001000DF4D0;
    if (v21)
    {
      v22 = v20 == 0xD000000000000013 && 0x80000001000DF4D0 == v21;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }
    }

LABEL_25:
    ClimateButton.updateClimateConfiguration()();
  }
}

uint64_t sub_1000BFAE0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B670C();
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000C0208;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B4DF4;
  aBlock[3] = &unk_1000F9988;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003FB94();
  sub_1000040E8(&unk_1001159C0, &qword_1000D9A40);
  sub_10003FBEC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000BFEE8()
{
}

id sub_1000BFF2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateAutomakerSettingButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateAutomakerSettingButton(uint64_t a1)
{
  result = qword_100118140;
  if (!qword_100118140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C0074()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v2 = sub_1000AF438();
    swift_unknownObjectRelease();
    v3 = *&v2[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus];

    v4 = [v3 currentSession];
    if (v4)
    {
      v5 = [v4 limitUserInterfaces];
      if (v5 && (v6 = v5, v7 = [v5 BOOLValue], v6, (v7 & 1) != 0))
      {
        v8 = [v4 configuration];
        [v8 limitableUserInterfaces];
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000C01D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000C022C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000C024C@<X0>(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClimateDefrost(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v7 + 16;
  v14 = *(v7 + 16);
  v66 = a2;
  v57 = v14;
  (v14)(v13, a2, v6, v11);
  v72 = _swiftEmptyArrayStorage;
  v73 = _swiftEmptyArrayStorage;
  v69 = a1;
  if (a1 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v9;
  v65 = a3;
  v62 = v6;
  v63 = v10;
  v60 = v7;
  v61 = v13;
  v58 = v7 + 16;
  if (v17)
  {
    if (v17 < 1)
    {
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_28;
    }

    v18 = 0;
    v19 = v69;
    v20 = v69 & 0xC000000000000001;
    v21 = _swiftEmptyArrayStorage;
    v22 = &_s10Foundation11MeasurementV10CAFCombineSo17NSUnitTemperatureCRszrlE10localeStep_2by2inACyAFGSo8CAFRangeCADE0G9DirectionO_AJSo13CAFFloatRangeCSgtF_ptr;
    p_name = &ClimateAccessibilityManager.name;
    *&v16 = 138543362;
    v68 = v16;
    v70 = _swiftEmptyArrayStorage;
    v67 = v17;
    do
    {
      if (v20)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v19 + 8 * v18 + 32);
      }

      v25 = v24;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v26 = v25;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v70 = v73;
        v27 = v26;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v21 = v72;
      }

      else
      {
        v28 = static os_log_type_t.debug.getter();
        if (p_name[480] != -1)
        {
          swift_once();
        }

        v29 = qword_10011B1C0;
        if (os_log_type_enabled(qword_10011B1C0, v28))
        {
          v30 = v20;
          v31 = v21;
          v32 = p_name;
          v33 = v22;
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = v68;
          *(v34 + 4) = v25;
          *v35 = v25;
          v25 = v25;
          _os_log_impl(&_mh_execute_header, v29, v28, "unknown service: %{public}@", v34, 0xCu);
          sub_100006C40(v35);
          v19 = v69;

          v22 = v33;
          p_name = v32;
          v21 = v31;
          v20 = v30;
          v17 = v67;
        }
      }

      ++v18;
    }

    while (v17 != v18);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
    v70 = _swiftEmptyArrayStorage;
    v19 = v69;
  }

  v36 = v70;
  if (v70 >> 62)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
    v15 = v62;
    v17 = v63;
    if (v41)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v15 = v62;
    v17 = v63;
    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      (*(v60 + 8))(v66, v15);
      v37 = v64;
      v38 = v61;
      *&v61[*(v64 + 20)] = v19;
      *(v38 + *(v37 + 24)) = v21;
      *(v38 + *(v37 + 28)) = v36;
      v39 = v65;
      sub_1000505A4(v38, v65);
      (*(v17 + 56))(v39, 0, 1, v37);
      return sub_100055848(v38);
    }
  }

  LODWORD(v10) = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    goto LABEL_33;
  }

LABEL_28:
  v42 = qword_10011B1C0;
  v43 = v59;
  v44 = v66;
  v57(v59, v66, v15);
  if (os_log_type_enabled(v42, v10))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    LODWORD(v70) = v10;
    v47 = v46;
    v71 = v46;
    *v45 = 136446210;
    v48 = CAUVehicleLayoutKey.rawValue.getter();
    v50 = v49;
    v51 = *(v60 + 8);
    v51(v43, v15);
    v52 = sub_10000835C(v48, v50, &v71);

    *(v45 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v42, v70, "ClimateDefrostServices requires defrosts key=%{public}s", v45, 0xCu);
    sub_100006B9C(v47);

    v53 = v66;
  }

  else
  {
    v51 = *(v60 + 8);
    v51(v44, v15);
    v53 = v43;
  }

  v51(v53, v15);
  v55 = v64;
  v54 = v65;
  v51(v61, v15);
  return (*(v17 + 56))(v54, 1, 1, v55);
}

uint64_t type metadata accessor for ClimateDefrost(uint64_t a1)
{
  result = qword_1001181A8;
  if (!qword_1001181A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C0950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000C0A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CAUVehicleLayoutKey();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1000C0AD8(uint64_t a1)
{
  type metadata accessor for CAUVehicleLayoutKey();
  if (v1 <= 0x3F)
  {
    sub_1000C0BA4(319, &qword_1001181B8, &qword_100116078, CAFService_ptr);
    if (v2 <= 0x3F)
    {
      sub_1000C0BA4(319, &unk_1001181C0, &qword_1001167B0, CAFDefrost_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000C0BA4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_10000827C(255, a3, a4);
    v5 = type metadata accessor for Array();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1000C0BFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          sub_10000827C(0, &qword_100115400, UIView_ptr);
          sub_1000040E8(&qword_100118240, &unk_1000D9AC0);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_10000827C(0, &qword_100115400, UIView_ptr);
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_1000040E8(&qword_100118240, &unk_1000D9AC0);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_1000C0DF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000A8A20(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      sub_1000040E8(&qword_1001179F0, &qword_1000D90F0);
      sub_1000040E8(&unk_100117A00, &qword_1000D9100);
      swift_dynamicCast();
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000A8A20((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[2 * v6];
      *(v7 + 32) = v9;
      v7[5] = v10;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1000C0F2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      sub_1000040E8(&qword_100118270, &unk_1000D90E0);
      sub_10000827C(0, &qword_100115400, UIView_ptr);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000C1048(unint64_t a1)
{
  if (a1 >> 62)
  {

    sub_1000040E8(&unk_1001150F0, &qword_1000D5F10);
    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v1 = a1;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  return v1;
}

void sub_1000C10C4()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x250);
  v3 = v2();
  v5 = v4;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = (v2)(v6);
    v10 = v9;
    v11 = sub_1000C487C(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1000C487C((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[16 * v13];
    *(v14 + 4) = v8;
    *(v14 + 5) = v10;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v15 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityLabelModifier + 8);
  if (v15)
  {
    v16 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityLabelModifier);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1000C487C(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_1000C487C((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v16;
    *(v19 + 5) = v15;
  }

  if (*(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityLabelShouldIncludeStates) == 1)
  {
    v20 = (*((swift_isaMask & *v1) + 0x118))();
    v21 = ClimatePresentation.accessibilityLabel.getter(v20);
    v23 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1000C487C(0, *(v11 + 2) + 1, 1, v11);
    }

    v25 = *(v11 + 2);
    v24 = *(v11 + 3);
    if (v25 >= v24 >> 1)
    {
      v11 = sub_1000C487C((v24 > 1), v25 + 1, 1, v11);
    }

    *(v11 + 2) = v25 + 1;
    v26 = &v11[16 * v25];
    *(v26 + 4) = v21;
    *(v26 + 5) = v23;
  }

  sub_1000040E8(&qword_100115EA8, &unk_1000D9AB0);
  sub_10000A8E8(&qword_100115EE0, &qword_100115EA8, &unk_1000D9AB0, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();

  v27 = String._bridgeToObjectiveC()();

  [v1 setAccessibilityLabel:v27];
}

uint64_t sub_1000C13D4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
  if ([*(v0 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan) hasOn] && (objc_msgSend(*(v0 + v2), "on") & 1) == 0)
  {
    v12 = [*(v0 + v2) autoMode];
    v13 = [*(v0 + v2) onRestricted];
    v14 = [*(v1 + v2) onInvalid];
    LOBYTE(v8) = [*(v1 + v2) onDisabled];
    v9 = v14 == 0;
    if (v12)
    {
      if (v13)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (v13)
    {
LABEL_16:
      v10 = 4;
      v11 = 12;
      goto LABEL_17;
    }

LABEL_23:
    v10 = 8;
    if (v9)
    {
      v10 = 0;
    }

    if (v8)
    {
      return v10 | 0x10;
    }

    return v10;
  }

  v3 = *(v0 + v2);
  v4 = CAFFan.isBlowing.getter();

  v5 = [*(v1 + v2) autoMode];
  v6 = [*(v1 + v2) fanLevelRestricted];
  v7 = [*(v1 + v2) fanLevelInvalid];
  v8 = [*(v1 + v2) fanLevelDisabled];
  v9 = v7 == 0;
  if ((v4 & 1) == 0)
  {
    if (v5)
    {
      if (v6)
      {
LABEL_9:
        v10 = 6;
        v11 = 14;
        goto LABEL_17;
      }

LABEL_12:
      v10 = 2;
      v11 = 10;
      goto LABEL_17;
    }

    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      v10 = 3;
      if (v7)
      {
        v10 = 11;
      }

      if (v8)
      {
        return v10 | 0x10;
      }

      return v10;
    }

    v10 = 7;
    v11 = 15;
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      v10 = 9;
      if (!v7)
      {
        v10 = 1;
      }

      if (v8)
      {
        return v10 | 0x10;
      }

      return v10;
    }

    v10 = 5;
    v11 = 13;
  }

LABEL_17:
  if (!v9)
  {
    v10 = v11;
  }

  if (v8)
  {
    return v10 | 0x10;
  }

  return v10;
}

BOOL sub_1000C15C0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_range) minimum];
  v2 = [v1 unsignedCharValue];

  return v2 == 0;
}

unint64_t sub_1000C1634(unsigned __int8 a1)
{
  v2 = v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue];
  v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue] = a1;
  if (v2 != a1 && !v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state])
  {
    if (v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] == 1)
    {
      sub_1000B7E5C();
    }

    else
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v9[4] = sub_1000C58A4;
      v9[5] = v4;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_1000B4DF4;
      v9[3] = &unk_1000F9D20;
      v5 = _Block_copy(v9);
      v6 = v1;

      [v3 animateWithDuration:2 delay:v5 options:0 animations:0.25 completion:0.0];
      _Block_release(v5);
    }
  }

  v7 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled;
  sub_1000C1E64((v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] & 1) == 0);
  result = sub_1000C13D4();
  v1[v7] = result > 7;
  return result;
}

_BYTE *sub_1000C17E4(void *a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton;
  *(v3 + v7) = [objc_allocWithZone(type metadata accessor for ClimateStepperPowerButton(0)) init];
  *(v3 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan) = a1;
  v8 = a1;
  if ([v8 hasOn])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v8 fanLevelRange];
    v11 = [v10 minimum];

    LODWORD(v10) = [v11 unsignedCharValue];
    v9 = v10 != 0;
  }

  v12 = [v8 fanLevelRange];
  v13 = v8;
  sub_1000BCA4C(0x6C6C69662E6E6166, 0xE800000000000000, 0, 0, a2, v12, v13, v9, a3);
  v15 = v14;

  v16 = v15;
  [v13 registerObserver:v16];
  sub_1000C2390();
  sub_1000C1E64(0);
  sub_1000C1970(v16);

  return v16;
}

void sub_1000C1970(_BYTE *a1)
{
  if (sub_1000C13D4() >= 8)
  {
    v3 = [*&a1[OBJC_IVAR____TtC7Climate14ClimateStepper_range] minimum];
    v2 = [v3 unsignedCharValue];
  }

  else
  {
    v2 = sub_1000C2E60();
  }

  v4 = a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue];
  a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue] = v2;
  if (v4 != v2 && !a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state])
  {
    if (a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] == 1)
    {
      sub_1000B7E5C();
    }

    else
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = a1;
      v31 = sub_1000C58A4;
      v32 = v6;
      v27 = _NSConcreteStackBlock;
      v28 = 1107296256;
      v29 = sub_1000B4DF4;
      v30 = &unk_1000F9EB0;
      v7 = _Block_copy(&v27);
      v8 = a1;

      [v5 animateWithDuration:2 delay:v7 options:0 animations:0.25 completion:0.0];
      _Block_release(v7);
    }
  }

  v9 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled;
  sub_1000C1E64((a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] & 1) == 0);
  a1[v9] = sub_1000C13D4() > 7;
  v10 = *&a1[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
  sub_1000C10C4();
  v11 = *&v10[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  if (v11)
  {
    v12 = *&v10[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];

    v14 = v11(v13);
    sub_100003380(v11, v12);
    if ((v14 & 0x10) != 0)
    {
      v15 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = (v14 & 8) == 0;
LABEL_14:
  [v10 setEnabled:v15];
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v16 = sub_1000C13D4();
  v17 = sub_1000B7A50();
  if ((v16 & 0x1A) != 0)
  {
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    v31 = sub_1000C5894;
    v32 = v19;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1000B4DF4;
    v30 = &unk_1000F9E60;
    v20 = _Block_copy(&v27);
    v21 = a1;

    [v18 animateWithDuration:4 delay:v20 options:0 animations:0.1 completion:0.0];
LABEL_18:
    _Block_release(v20);
    goto LABEL_19;
  }

  if (v16)
  {
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    v31 = sub_1000C588C;
    v32 = v23;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1000B4DF4;
    v30 = &unk_1000F9E10;
    v20 = _Block_copy(&v27);
    v24 = a1;

    [v22 animateWithDuration:4 delay:v20 options:0 animations:0.2 completion:0.0];
    goto LABEL_18;
  }

LABEL_19:
  v25 = (*((swift_isaMask & **&a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton]) + 0x1F8))(v17);
  v26 = (*((swift_isaMask & **&a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton]) + 0x1F8))(v25);
  (*((swift_isaMask & **&a1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton]) + 0x1F8))(v26);
  ClimateStepper.updatePresentation()();
  sub_1000B7D34();
}

id sub_1000C1E64(char a1)
{
  v2 = v1;
  if (sub_1000C13D4() > 7 || *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state))
  {
    [*(v1 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton) setAlpha:0.0];
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
    swift_beginAccess();
    return [*(v2 + v4) setAlpha:1.0];
  }

  v45 = *(v1 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton);
  [v45 alpha];
  v7 = v6;
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D5B90;
  v9 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  v12 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton);
  v13 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  *(v8 + 48) = v12;
  *(v8 + 56) = v13;
  v14 = *(v1 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton);
  *(v8 + 64) = v14;
  v46 = v8;
  v15 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
  v16 = *(v1 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  if (![v16 hasOn])
  {
    goto LABEL_8;
  }

  v22 = *(v2 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_fillView);
  if (!v22)
  {
    goto LABEL_8;
  }

  v8 = v22;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v8 = v46;
LABEL_8:
    v23 = *(v2 + v15);
    v24 = CAFFan.isBlowing.getter();

    if ((v24 & 1) == 0)
    {
      break;
    }

    [*(v2 + v9) alpha];
    if (v25 >= 0.5)
    {
      break;
    }

    if (a1)
    {
      sub_1000040E8(&unk_100117FD0, &unk_1000D9920);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D5970;
      *(inited + 32) = v45;
      v27 = v45;
      sub_1000BD6A0(1, inited);
      swift_setDeallocating();
      sub_1000C5758(inited + 32);
      v28 = sub_1000C0BFC(v8);

      sub_1000BD6A0(0, v28);
LABEL_42:

      return sub_1000C4294(a1 & 1, v7);
    }

    [v45 setAlpha:0.0];
    if (v8 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (!v35)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v35 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_42;
      }
    }

    v36 = 0;
    v9 = v8 & 0xC000000000000001;
    v15 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v37 = *(v8 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v37 setAlpha:1.0];

      ++v36;
      if (v39 == v35)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v29 = *(v2 + v15);
  v30 = CAFFan.isBlowing.getter();

  if (v30)
  {
    goto LABEL_42;
  }

  [v45 alpha];
  if (v31 >= 0.5)
  {
    goto LABEL_42;
  }

  if (a1)
  {
    v32 = sub_1000C0BFC(v8);

    sub_1000BD6A0(1, v32);

    sub_1000040E8(&unk_100117FD0, &unk_1000D9920);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1000D5970;
    *(v33 + 32) = v45;
    v34 = v45;
    sub_1000BD6A0(0, v33);
    swift_setDeallocating();
    sub_1000C5758(v33 + 32);
    return sub_1000C4294(a1 & 1, v7);
  }

  if (!(v8 >> 62))
  {
    v40 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

  v40 = _CocoaArrayWrapper.endIndex.getter();
  if (v40)
  {
LABEL_28:
    v41 = 0;
    v9 = v8 & 0xC000000000000001;
    v15 = v8 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v9)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v41 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v42 = *(v8 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_38;
      }

      [v42 setAlpha:0.0];

      ++v41;
    }

    while (v44 != v40);
  }

LABEL_45:

  [v45 setAlpha:1.0];
  return sub_1000C4294(a1 & 1, v7);
}

id sub_1000C2390()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = sub_1000C5800;
  v3[1] = v2;

  sub_100003380(v4, v5);

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v1[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v8 = *&v1[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v9 = *&v1[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];
  *v7 = sub_1000C5808;
  v7[1] = v6;

  sub_100003380(v8, v9);

  [v0 addSubview:v1];
  v10 = objc_opt_self();
  sub_1000040E8(&unk_100114770, qword_1000D58D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000D5D90;
  v12 = [v1 leadingAnchor];
  v13 = [v0 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v11 + 32) = v14;
  v15 = [v1 trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v11 + 40) = v17;
  v18 = [v1 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v11 + 48) = v20;
  v21 = [v1 bottomAnchor];
  v22 = [v0 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v11 + 56) = v23;
  sub_10000827C(0, &qword_1001149C0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 activateConstraints:isa];

  return [v1 setAlpha:0.0];
}

void sub_1000C26E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
    v5 = [*(Strong + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan) hasOn];
    v6 = *&v3[v4];
    if (v5)
    {
      [v6 setOn:1];
    }

    else if (![v6 fanLevel])
    {
      v7 = *&v3[v4];
      v8 = [v7 fanLevelRange];
      v9 = [v8 minimumValue];

      v10 = [*&v3[v4] fanLevelRange];
      v11 = [v10 stepValue];

      if (((v9 + v11) >> 8))
      {
        __break(1u);
        return;
      }

      [v7 setFanLevel:(v9 + v11)];
    }

    v12 = *&v3[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
    sub_1000C10C4();
    v13 = *&v12[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
    if (v13)
    {
      v14 = *&v12[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];

      v16 = v13(v15);
      sub_100003380(v13, v14);
      if ((v16 & 0x10) != 0)
      {
        v17 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = (v16 & 8) == 0;
LABEL_12:
    [v12 setEnabled:v17];
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
    v18 = sub_1000C13D4();
    v19 = sub_1000B7A50();
    if ((v18 & 0x1A) != 0)
    {
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v3;
      v33 = sub_1000C5894;
      v34 = v21;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1000B4DF4;
      v32 = &unk_1000F9DC0;
      v22 = _Block_copy(&aBlock);
      v23 = v3;

      [v20 animateWithDuration:4 delay:v22 options:0 animations:0.1 completion:0.0];
    }

    else
    {
      if ((v18 & 1) == 0)
      {
LABEL_17:
        v27 = (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton]) + 0x1F8))(v19);
        v28 = (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton]) + 0x1F8))(v27);
        (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton]) + 0x1F8))(v28);
        ClimateStepper.updatePresentation()();
        sub_1000B7D34();

        return;
      }

      v24 = objc_opt_self();
      v25 = swift_allocObject();
      *(v25 + 16) = v3;
      v33 = sub_1000C588C;
      v34 = v25;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1000B4DF4;
      v32 = &unk_1000F9D70;
      v22 = _Block_copy(&aBlock);
      v26 = v3;

      [v24 animateWithDuration:4 delay:v22 options:0 animations:0.2 completion:0.0];
    }

    _Block_release(v22);
    goto LABEL_17;
  }
}

uint64_t sub_1000C2B38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = sub_1000C13D4();

  return v3;
}

id sub_1000C2B9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue);
  v2 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
  result = [*(v0 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan) fanLevel];
  if (v1 != result)
  {
    v4 = *(v0 + v2);

    return [v4 setFanLevel:v1];
  }

  return result;
}

void sub_1000C2C20(uint64_t a1)
{
  v3 = type metadata accessor for CAFRange.StepDirection();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
  v9 = [*(v1 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan) fanLevel];
  v10 = [*(v1 + v8) fanLevelRange];
  v11 = [v10 stepValue];

  (*(v4 + 16))(v7, a1, v3);
  v12 = (*(v4 + 88))(v7, v3);
  if (v12 == enum case for CAFRange.StepDirection.up(_:))
  {
    v13 = *(v1 + v8);
    v14 = [v13 fanLevelRange];
    v15 = [v14 maximumValue];

    if ((((v9 + v11) >> 8) & 1) == 0)
    {
      if ((v9 + v11) >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = (v9 + v11);
      }

LABEL_11:
      [v13 setFanLevel:v16];

      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (v12 == enum case for CAFRange.StepDirection.down(_:))
  {
    v13 = *(v1 + v8);
    v17 = [v13 fanLevelRange];
    v18 = [v17 minimumValue];

    if (((v9 - v11) & 0xFFFFFF00) == 0)
    {
      if ((v9 - v11) <= v18)
      {
        v16 = v18;
      }

      else
      {
        v16 = (v9 - v11);
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  (*(v4 + 8))(v7, v3);
}

id sub_1000C2E60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan;
  v3 = [*&v0[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan] fanLevel];
  v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_range;
  v5 = *&v0[OBJC_IVAR____TtC7Climate14ClimateStepper_range];
  CAFRange.maximumValue<A>()();

  if (v26 >= v3)
  {
    v14 = [*&v1[v2] fanLevel];
    v15 = *&v1[v4];
    CAFRange.minimumValue<A>()();

    if (v14 >= v25)
    {
      return [*&v1[v2] fanLevel];
    }

    else
    {
      v16 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v17 = qword_10011B1C0;
      if (os_log_type_enabled(qword_10011B1C0, v16))
      {
        v18 = v1;
        v19 = swift_slowAlloc();
        *v19 = 16908800;
        *(v19 + 4) = [*&v1[v2] fanLevel];
        *(v19 + 5) = 258;
        v20 = [*&v1[v4] minimum];
        v21 = [v20 unsignedCharValue];

        *(v19 + 7) = v21;
        _os_log_impl(&_mh_execute_header, v17, v16, "fanLevel value is out of bound. fanLevel: %{public}hhu, min range %{public}hhu", v19, 8u);
      }

      v22 = *&v1[v4];
      CAFRange.minimumValue<A>()();

      return v24;
    }
  }

  else
  {
    v6 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v7 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v6))
    {
      v8 = v1;
      v9 = swift_slowAlloc();
      *v9 = 16908800;
      *(v9 + 4) = [*&v1[v2] fanLevel];
      *(v9 + 5) = 258;
      v10 = [*&v1[v4] maximum];
      v11 = [v10 unsignedCharValue];

      *(v9 + 7) = v11;
      _os_log_impl(&_mh_execute_header, v7, v6, "fanLevel value is out of bound. fanLevel: %{public}hhu, max range %{public}hhu", v9, 8u);
    }

    v12 = *&v1[v4];
    CAFRange.maximumValue<A>()();

    return v23;
  }
}

void sub_1000C319C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton);
}

id sub_1000C31DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateFanContinuousStepper(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateFanContinuousStepper(uint64_t a1)
{
  result = qword_100118230;
  if (!qword_100118230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000C3300(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v10 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v9))
  {
    v11 = swift_slowAlloc();
    v49 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446466;
    sub_10000827C(0, &unk_1001178A0, CAFFan_ptr);
    CAFPositionedRequired.layoutKey.getter();
    v14 = CAUVehicleLayoutKey.rawValue.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_10000835C(v14, v16, &aBlock);

    *(v12 + 4) = v17;
    *(v12 + 12) = 258;
    *(v12 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v10, v9, "Fan %{public}s did update level to: %{public}hhu", v12, 0xFu);
    sub_100006B9C(v13);
  }

  v18 = *&v3[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
  sub_1000C10C4();
  v19 = *&v18[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  if (v19)
  {
    v20 = *&v18[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];

    v22 = v19(v21);
    sub_100003380(v19, v20);
    if ((v22 & 0x10) != 0)
    {
      v23 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 8) == 0;
LABEL_10:
  [v18 setEnabled:v23];
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v24 = sub_1000C13D4();
  v25 = sub_1000B7A50();
  if ((v24 & 0x1A) != 0)
  {
    v26 = objc_opt_self();
    v27 = swift_allocObject();
    *(v27 + 16) = v3;
    v54 = sub_1000C5894;
    v55 = v27;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_1000B4DF4;
    v53 = &unk_1000F9CD0;
    v28 = _Block_copy(&aBlock);
    v29 = v3;

    [v26 animateWithDuration:4 delay:v28 options:0 animations:0.1 completion:0.0];
  }

  else
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }

    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v3;
    v54 = sub_1000C588C;
    v55 = v31;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_1000B4DF4;
    v53 = &unk_1000F9C80;
    v28 = _Block_copy(&aBlock);
    v32 = v3;

    [v30 animateWithDuration:4 delay:v28 options:0 animations:0.2 completion:0.0];
  }

  _Block_release(v28);
LABEL_15:
  v33 = (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton]) + 0x1F8))(v25);
  v34 = (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton]) + 0x1F8))(v33);
  (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton]) + 0x1F8))(v34);
  ClimateStepper.updatePresentation()();
  sub_1000B7D34();
  if (sub_1000C13D4() >= 8)
  {
    v40 = [*&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_range] minimum];
    v41 = [v40 unsignedCharValue];

    v42 = v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue];
    v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue] = v41;
    if (v42 != v41 && !v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state])
    {
      if (v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] != 1)
      {
        v37 = objc_opt_self();
        v43 = swift_allocObject();
        *(v43 + 16) = v3;
        v54 = sub_1000C58A4;
        v55 = v43;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v39 = &unk_1000F9C30;
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v35 = sub_1000C2E60();
    v36 = v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue];
    v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue] = v35;
    if (v36 != v35 && !v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state])
    {
      if (v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] != 1)
      {
        v37 = objc_opt_self();
        v38 = swift_allocObject();
        *(v38 + 16) = v3;
        v54 = sub_1000C58A4;
        v55 = v38;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v39 = &unk_1000F9BE0;
LABEL_25:
        v52 = sub_1000B4DF4;
        v53 = v39;
        v44 = _Block_copy(&aBlock);
        v45 = v3;

        [v37 animateWithDuration:2 delay:v44 options:0 animations:0.25 completion:0.0];
        _Block_release(v44);
        goto LABEL_26;
      }

LABEL_23:
      sub_1000B7E5C();
    }
  }

LABEL_26:
  v46 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled;
  sub_1000C1E64((v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] & 1) == 0);
  result = sub_1000C13D4();
  v3[v46] = result > 7;
  return result;
}

void sub_1000C3AF0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v10 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v9))
  {
    v11 = swift_slowAlloc();
    v44 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock = v13;
    *v12 = 136446466;
    sub_10000827C(0, &unk_1001178A0, CAFFan_ptr);
    CAFPositionedRequired.layoutKey.getter();
    v14 = CAUVehicleLayoutKey.rawValue.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_10000835C(v14, v16, &aBlock);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1026;
    *(v12 + 14) = v44 & 1;
    _os_log_impl(&_mh_execute_header, v10, v9, "Fan %{public}s did update ON: %{BOOL,public}d", v12, 0x12u);
    sub_100006B9C(v13);
  }

  if (sub_1000C13D4() >= 8)
  {
    v19 = [*&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_range] minimum];
    v18 = [v19 unsignedCharValue];
  }

  else
  {
    v18 = sub_1000C2E60();
  }

  v20 = v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue];
  v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_currentValue] = v18;
  if (v20 != v18 && !v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_state])
  {
    if (v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] == 1)
    {
      sub_1000B7E5C();
    }

    else
    {
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      v49 = sub_1000C5750;
      v50 = v22;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_1000B4DF4;
      v48 = &unk_1000F9B40;
      v23 = _Block_copy(&aBlock);
      v24 = v3;

      [v21 animateWithDuration:2 delay:v23 options:0 animations:0.25 completion:0.0];
      _Block_release(v23);
    }
  }

  v25 = OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled;
  sub_1000C1E64((v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_wasPreviousValueDisabled] & 1) == 0);
  v3[v25] = sub_1000C13D4() > 7;
  v26 = *&v3[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
  sub_1000C10C4();
  v27 = *&v26[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  if (v27)
  {
    v28 = *&v26[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];

    v30 = v27(v29);
    sub_100003380(v27, v28);
    if ((v30 & 0x10) != 0)
    {
      v31 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = (v30 & 8) == 0;
LABEL_18:
  [v26 setEnabled:v31];
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v32 = sub_1000C13D4();
  v33 = sub_1000B7A50();
  if ((v32 & 0x1A) != 0)
  {
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    *(v35 + 16) = v3;
    v49 = sub_1000C5894;
    v50 = v35;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_1000B4DF4;
    v48 = &unk_1000F9AF0;
    v36 = _Block_copy(&aBlock);
    v37 = v3;

    [v34 animateWithDuration:4 delay:v36 options:0 animations:0.1 completion:0.0];
LABEL_22:
    _Block_release(v36);
    goto LABEL_23;
  }

  if (v32)
  {
    v38 = objc_opt_self();
    v39 = swift_allocObject();
    *(v39 + 16) = v3;
    v49 = sub_1000C588C;
    v50 = v39;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_1000B4DF4;
    v48 = &unk_1000F9AA0;
    v36 = _Block_copy(&aBlock);
    v40 = v3;

    [v38 animateWithDuration:4 delay:v36 options:0 animations:0.2 completion:0.0];
    goto LABEL_22;
  }

LABEL_23:
  v41 = (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton]) + 0x1F8))(v33);
  v42 = (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton]) + 0x1F8))(v41);
  (*((swift_isaMask & **&v3[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton]) + 0x1F8))(v42);
  ClimateStepper.updatePresentation()();
  sub_1000B7D34();
}

id sub_1000C4294(char a1, double a2)
{
  v3 = v2;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = v27 - v17;
  if ((a1 & 1) != 0 && ([*&v3[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton] alpha], v16 != a2))
  {
    sub_10000827C(0, &qword_1001159B0, OS_dispatch_queue_ptr);
    v29 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v28 = *(v12 + 8);
    v28(v14, v11);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000C57F8;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000B4DF4;
    aBlock[3] = &unk_1000F9B90;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    v27[1] = sub_10003FB94();
    sub_1000040E8(&unk_1001159C0, &qword_1000D9A40);
    sub_10000A8E8(&qword_1001178C0, &unk_1001159C0, &qword_1000D9A40, &protocol conformance descriptor for [A]);
    v25 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v29;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v24);

    (*(v33 + 8))(v7, v25);
    (*(v31 + 8))(v10, v32);
    return (v28)(v18, v11);
  }

  else
  {
    result = [*&v3[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton] alpha];
    if (v20 != a2)
    {
      sub_10000827C(0, &unk_1001159D0, UIFocusSystem_ptr);
      v21 = static UIFocusSystem.focusSystem(for:)();
      if (v21)
      {
        v22 = v21;
        if ([v21 focusedItem])
        {
          swift_unknownObjectRelease();
          [v3 _setNeedsNonDeferredFocusUpdate];
        }
      }

      return [v3 setNeedsFocusUpdate];
    }
  }

  return result;
}

void sub_1000C4734(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_10000827C(0, &unk_1001159D0, UIFocusSystem_ptr);
    v3 = static UIFocusSystem.focusSystem(for:)();
    if (v3)
    {
      v4 = v3;
      if ([v3 focusedItem])
      {
        swift_unknownObjectRelease();
        [v2 _setNeedsNonDeferredFocusUpdate];
      }
    }

    [v2 setNeedsFocusUpdate];
  }
}

void sub_1000C47F0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_fan);
  sub_10000827C(0, &unk_1001178A0, CAFFan_ptr);
  v2 = v1;
  CAFPositioned.layoutKey.getter();
}

char *sub_1000C487C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&unk_100117A20, &qword_1000D8B80);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000C4988(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000040E8(&qword_100118258, &unk_1000D9AD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      sub_1000040E8(&unk_100118260, &unk_1000D61C0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      sub_1000040E8(&unk_100118260, &unk_1000D61C0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(&unk_100118260, &unk_1000D61C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C4B08(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000040E8(&unk_100118248, &qword_1000D9AD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      sub_1000040E8(&qword_100115820, &unk_1000D61B0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      sub_1000040E8(&qword_100115820, &unk_1000D61B0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(&qword_100115820, &unk_1000D61B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C4C88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&unk_1001182A8, &qword_1000D9B18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C4DDC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000040E8(&unk_100118280, &unk_1000D9AF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(&qword_1001179F0, &qword_1000D90F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C4F10(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&unk_1001182D0, &qword_1000D9B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C5040(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000040E8(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1000C5174(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000040E8(&qword_100118278, &qword_1000D9AE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000C5268(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000040E8(&unk_1001179E0, qword_1000D5C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000040E8(&qword_100118270, &unk_1000D90E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000C539C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Climate27ClimateFanContinuousStepper_powerButton];
  sub_1000C10C4();
  v3 = *&v2[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock + 8];

    v6 = v3(v5);
    sub_100003380(v3, v4);
    if ((v6 & 0x10) != 0)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = (v6 & 8) == 0;
LABEL_6:
  [v2 setEnabled:v7];
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v8 = sub_1000C13D4();
  v9 = sub_1000B7A50();
  if ((v8 & 0x1A) != 0)
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v23 = sub_1000C5748;
    v24 = v11;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1000B4DF4;
    v22 = &unk_1000F9A50;
    v12 = _Block_copy(&v19);
    v13 = v1;

    [v10 animateWithDuration:4 delay:v12 options:0 animations:0.1 completion:0.0];
LABEL_10:
    _Block_release(v12);
    goto LABEL_11;
  }

  if (v8)
  {
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    v23 = sub_1000C5728;
    v24 = v15;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1000B4DF4;
    v22 = &unk_1000F9A00;
    v12 = _Block_copy(&v19);
    v16 = v1;

    [v14 animateWithDuration:4 delay:v12 options:0 animations:0.2 completion:0.0];
    goto LABEL_10;
  }

LABEL_11:
  v17 = (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskPrimaryButton]) + 0x1F8))(v9);
  v18 = (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskDownButton]) + 0x1F8))(v17);
  (*((swift_isaMask & **&v1[OBJC_IVAR____TtC7Climate24ClimateContinuousStepper_maskUpButton]) + 0x1F8))(v18);
  ClimateStepper.updatePresentation()();
  sub_1000B7D34();
}

uint64_t sub_1000C56F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1000C5730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000C5758(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100118240, &unk_1000D9AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C57C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000C58D0(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1000C6FAC(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1000C5950(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100050B88(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100050B88(v3, v5, v2 != 0);
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

  sub_1000C703C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_100050B88(v3, v5, v2 != 0);
  return v12;
}

Swift::Int sub_1000C5A6C(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    if (a3 == 1)
    {
      Hasher._combine(_:)(3uLL);
      v6 = a1;
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        v6 = 4;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 1;
    }

    Hasher._combine(_:)(v6);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_1000C5B40(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      Hasher._combine(_:)(3uLL);
      v4 = v2;
    }

    else if (v2 | v3)
    {
      if (v2 ^ 1 | v3)
      {
        v4 = 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    Hasher._combine(_:)(v4);
  }

  else
  {
    Hasher._combine(_:)(0);

    String.hash(into:)();
  }
}

Swift::Int sub_1000C5BF8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v4)
  {
    if (v4 == 1)
    {
      Hasher._combine(_:)(3uLL);
      v5 = v2;
    }

    else if (v2 | v3)
    {
      if (v2 ^ 1 | v3)
      {
        v5 = 4;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 1;
    }

    Hasher._combine(_:)(v5);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void sub_1000C5D28()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window);
  if (v3)
  {
    [v3 setRootViewController:*(v0 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController)];
    v3 = *(v0 + v2);
  }

  [v3 makeKeyAndVisible];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = [objc_opt_self() sharedApplication];
    v5 = [v4 delegate];

    if (v5)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v6 = sub_1000AF438();
      swift_unknownObjectRelease();
      v7 = *(v1 + v2);
      v9 = *&v6[OBJC_IVAR____TtC7Climate18ClimateCoordinator_appWindow];
      *&v6[OBJC_IVAR____TtC7Climate18ClimateCoordinator_appWindow] = v7;
      v8 = v7;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000C5E7C()
{
  v1 = OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window);
  if (v2 && (v3 = [v2 windowScene]) != 0 && (v4 = v3, v5 = objc_msgSend(v3, "screen"), v4, v5))
  {
    [v5 scale];
  }

  else
  {
    v6 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v7 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543618;
      v10 = *(v0 + v1);
      *(v8 + 4) = v10;
      *v9 = v10;
      *(v8 + 12) = 2114;
      v11 = v10;
      if (v10)
      {
        v12 = [v11 windowScene];
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v8 + 14) = v12;
      v9[1] = v13;
      _os_log_impl(&_mh_execute_header, v7, v6, "Unable to resolve the screen.  window=%{public}@ windowScene=%{public}@", v8, 0x16u);
      sub_1000040E8(&unk_1001149E0, &unk_1000D7380);
      swift_arrayDestroy();
    }
  }
}

void sub_1000C604C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      v7 = v6;
      swift_once();
      v6 = v7;
    }

    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10011B1C0, "asset library updated", 21, 2, _swiftEmptyArrayStorage);
    sub_1000C6848(a3);
  }
}

void sub_1000C61B0(void *a1)
{
  v2 = v1;
  v4 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v5 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = a1;
    *v7 = a1;
    v8 = a1;
    _os_log_impl(&_mh_execute_header, v5, v4, "Scene did disconnect scene: %{public}@", v6, 0xCu);
    sub_100008904(v7, &unk_1001149E0, &unk_1000D7380);
  }

  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 delegate];

  if (v10)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v11 = sub_1000AF438();
    swift_unknownObjectRelease();
    v12 = sub_1000445A4(v2);

    v13 = *&v2[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController];
    *&v2[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController] = v12;
    v14 = v12;

    sub_1000C5D28();
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      sub_10000827C(0, &unk_100118420, NSString_ptr);
      v17 = a1;
      v18 = NSString.init(stringLiteral:)("%p", v21);
      sub_1000040E8(&qword_100115728, &unk_1000D9E00);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000D5970;
      *(v19 + 56) = type metadata accessor for ClimateSceneDelegate();
      *(v19 + 64) = sub_1000C8D74();
      *(v19 + 32) = v2;
      v20 = v2;
      v22 = NSString.init(format:_:)();

      [v16 _unregisterSettingsDiffActionArrayForKey:v22];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000C6548(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v7 = sub_1000AF438();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v2 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_wereSteppersHidden) = (v14 & 1) == 0;
  v8 = [a1 _FBSScene];
  v9 = [v8 settings];

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 deactivationReasons];

    if ((v11 & 0x10) != 0)
    {
      return;
    }
  }

  else
  {
  }

  v12 = [v4 sharedApplication];
  v13 = [v12 delegate];

  if (!v13)
  {
LABEL_10:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  sub_1000AF438();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
}

void sub_1000C6848(void *a1)
{
  v2 = v1;
  if ([a1 hasPhysicalControlBars])
  {
    type metadata accessor for ClimatePhysicalControlBarsViewController();
    if (swift_dynamicCastClass())
    {
      return;
    }

    v3 = &v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
    v4 = *&v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
    v5 = *&v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 8];
    *&v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type] = xmmword_1000D9B60;
  }

  else
  {
    type metadata accessor for ClimateOverlayViewController(0);
    if (swift_dynamicCastClass())
    {
      return;
    }

    v3 = &v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
    v4 = *&v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
    v5 = *&v1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 8];
    *v3 = 0;
    *(v3 + 1) = 0;
  }

  v6 = v3[16];
  v3[16] = 2;
  sub_10000E1FC(v4, v5, v6);
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 delegate];

  if (v8)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v9 = sub_1000AF438();
    swift_unknownObjectRelease();
    v10 = *&v2[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window];
    if (v10)
    {
      v11 = [v10 windowScene];
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_100043688(v2, v11);

    if (v12)
    {
      v13 = *&v2[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController];
      *&v2[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController] = v12;
      v14 = v12;

      sub_1000C5D28();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1000C6A9C()
{
  *&v0[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window] = 0;
  v1 = &v0[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
  *v1 = xmmword_1000D9B70;
  v1[16] = 0;
  v0[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_wereSteppersHidden] = 0;
  v2 = OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController;
  v3 = type metadata accessor for ClimateRoleViewController();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC7Climate25ClimateRoleViewController_role];
  *v5 = 0x74657320746F6ELL;
  *(v5 + 1) = 0xE700000000000000;
  v9.receiver = v4;
  v9.super_class = v3;
  *&v0[v2] = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
  v6 = &v0[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_persistentIdentifier];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_cancellables] = &_swiftEmptySetSingleton;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ClimateSceneDelegate();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_1000C6BC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000C6D7C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000C6D98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000C6DAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000C6DF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000C6E38(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1000C6E64()
{
  result = qword_1001183F8;
  if (!qword_1001183F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001183F8);
  }

  return result;
}

void sub_1000C6EBC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1000C6F3C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void *sub_1000C6FAC(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1000C703C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000827C(0, &qword_100118408, UIOpenURLContext_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000827C(0, &qword_100118408, UIOpenURLContext_ptr);
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

uint64_t sub_1000C7260(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return a4 == a1;
      }
    }

    else if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 2 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000C7334(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = a2;
  if (__OFADD__(a2, 4))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v3 = a1;
  if (a1)
  {
    v4 = a2 + 4 < v3;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  v6 = __OFADD__(v3, 4);
  v7 = v3 + 4;
  if (v6)
  {
    goto LABEL_27;
  }

  if (v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  if (v7 >= v2)
  {
    return v8;
  }

  else
  {
    return v5;
  }
}

void sub_1000C73F8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1000040E8(&unk_1001166C0, &unk_1000D5AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v96 - v7;
  v9 = sub_1000040E8(&unk_100118440, &unk_1000D8EC0);
  v104 = *(v9 - 8);
  v105 = v9;
  __chkstk_darwin(v9);
  v11 = &v96 - v10;
  v12 = sub_1000040E8(&unk_1001166D0, qword_1000D7B20);
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v96 - v15;
  v102 = a2;
  v17 = [a2 persistentIdentifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = &v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_persistentIdentifier];
  *v21 = v18;
  v21[1] = v20;

  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {
    return;
  }

  v23 = v22;
  v98 = v8;
  v99 = v16;
  v100 = v13;
  v101 = v12;
  v106 = a1;
  CAFSignpostEmit_Scene();
  v24 = [objc_allocWithZone(UIWindow) initWithWindowScene:v23];
  v25 = OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window;
  v26 = *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window];
  *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window] = v24;

  [v106 _safeAreaInsetsForInterfaceOrientation:1];
  v29 = sub_1000C7334(v27, v28);
  v30 = objc_opt_self();
  v31 = [v30 sharedApplication];
  v32 = [v31 delegate];

  if (!v32)
  {
    __break(1u);
    goto LABEL_41;
  }

  v103 = type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v33 = sub_1000AF438();
  swift_unknownObjectRelease();
  v33[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar] = v29 & 1;

  v34 = [v106 _FBSScene];
  v35 = [v34 settings];

  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v97 = v36;
    v102 = v35;
    v37 = [v30 sharedApplication];
    v38 = [v37 delegate];

    if (v38)
    {
      swift_dynamicCastClassUnconditional();
      v39 = sub_1000AF438();
      swift_unknownObjectRelease();
      v40 = *&v3[v25];
      v41 = *&v39[OBJC_IVAR____TtC7Climate18ClimateCoordinator_overlayWindow];
      *&v39[OBJC_IVAR____TtC7Climate18ClimateCoordinator_overlayWindow] = v40;
      v42 = v40;

      v43 = [v106 _FBSScene];
      [v43 addObserver:v3];

      v44 = [v30 sharedApplication];
      v45 = [v44 delegate];

      if (v45)
      {
        swift_dynamicCastClassUnconditional();
        v46 = sub_1000AF438();
        swift_unknownObjectRelease();

        dispatch thunk of CAUAssetLibraryManager.$slimAssetLibrary.getter();

        v47 = [objc_opt_self() mainRunLoop];
        v107 = v47;
        v48 = type metadata accessor for NSRunLoop.SchedulerOptions();
        v49 = v98;
        (*(*(v48 - 8) + 56))(v98, 1, 1, v48);
        sub_10000827C(0, &unk_1001166E0, NSRunLoop_ptr);
        sub_10000A8E8(&qword_100117260, &unk_100118440, &unk_1000D8EC0, &protocol conformance descriptor for Published<A>.Publisher);
        sub_10002879C(&qword_1001166F0, &unk_1001166E0, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
        v50 = v99;
        v51 = v105;
        Publisher.receive<A>(on:options:)();
        sub_100008904(v49, &unk_1001166C0, &unk_1000D5AE0);

        (*(v104 + 8))(v11, v51);
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v53 = swift_allocObject();
        v54 = v97;
        *(v53 + 16) = v52;
        *(v53 + 24) = v54;
        sub_10000A8E8(&qword_1001166F8, &unk_1001166D0, qword_1000D7B20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v55 = v102;
        v56 = v101;
        Publisher<>.sink(receiveValue:)();

        (*(v100 + 8))(v50, v56);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        return;
      }

      goto LABEL_42;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v105 = v29;

  v57 = [objc_allocWithZone(UIWindow) initWithWindowScene:v23];
  v58 = *&v3[v25];
  *&v3[v25] = v57;
  v59 = v57;

  if (v59)
  {
    [v59 setAutoresizesSubviews:1];
  }

  v60 = *&v3[v25];
  v61 = v102;
  if (v60)
  {
    [v60 setAutoresizingMask:18];
    v60 = *&v3[v25];
  }

  [v60 makeKeyAndVisible];
  v62 = *&v3[v25];
  if (v62)
  {
    [v62 setOverrideUserInterfaceStyle:2];
    v63 = *&v3[v25];
    if (v63)
    {
      [v63 setHidden:0];
    }
  }

  v64 = [v61 role];
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;
  if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
  {

LABEL_20:
    v70 = &stru_100102000;
    v71 = *&v3[v25];
    v72 = &stru_100102000;
    if (v71 && ([v71 frame], v73 > 243.0))
    {
      v74 = 0;
      v75 = 1;
      v76 = 2;
    }

    else
    {
      v74 = 0;
      v76 = v105 & 1;
      v75 = 1;
    }

    goto LABEL_31;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v69)
  {

    goto LABEL_20;
  }

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;
  if (v77 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v79 == v80)
  {
  }

  else
  {
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v81 & 1) == 0)
    {
      v82 = [v61 role];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v83;

      v75 = 0;
      goto LABEL_30;
    }
  }

  v74 = 0;
  v76 = 2;
  v75 = 2;
LABEL_30:
  v70 = &stru_100102000;
  v72 = &stru_100102000;
LABEL_31:
  v84 = &v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
  v85 = *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
  v86 = *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 8];
  *v84 = v76;
  *(v84 + 1) = v74;
  v87 = v84[16];
  v84[16] = v75;
  sub_10000E1FC(v85, v86, v87);
  v88 = [v30 v72[121].offs];
  v89 = [v88 v70[121].name];

  if (!v89)
  {
LABEL_43:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  v90 = sub_1000AF438();
  swift_unknownObjectRelease();
  v91 = sub_100043688(v3, 0);

  if (v91)
  {
    v92 = *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController];
    *&v3[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController] = v91;
    v105 = v91;

    sub_1000C5D28();
    v93 = v105;
  }

  else
  {
    v94 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      v95 = v94;
      swift_once();
      v94 = v95;
    }

    os_log(_:dso:log:_:_:)(v94, &_mh_execute_header, qword_10011B1C0, "Unable to attach view controller", 32, 2, _swiftEmptyArrayStorage);
    v93 = v106;
  }
}

void sub_1000C7EF0()
{
  if (*(v0 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_wereSteppersHidden) == 1)
  {
    v1 = [objc_opt_self() sharedApplication];
    v2 = [v1 delegate];

    if (v2)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      sub_1000AF438();
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000C7FD8(void *a1)
{
  v2 = [a1 _FBSScene];
  v3 = [v2 settings];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = [a1 session];
    v7 = [v6 role];

    v5 = v7;
  }

  v8 = v5;
  CAFSignpostEmit_SceneWillEnterForeground();
}

void sub_1000C80E0(void *a1)
{
  v3 = sub_1000040E8(&unk_100115120, &unk_1000D64A0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v39 - v5;
  v40 = [a1 settings];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = *(v1 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController);
    type metadata accessor for ClimateOverlayViewController(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v8 persistentElements];
      if (v13)
      {
        v14 = v13;
        [v13 integerValue];

        CAUPersistentElements.init(rawValue:)();
        v15 = type metadata accessor for CAUPersistentElements();
        (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
      }

      else
      {
        v17 = type metadata accessor for CAUPersistentElements();
        (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
      }

      v18 = OBJC_IVAR____TtC7Climate28ClimateOverlayViewController_persistentElements;
      swift_beginAccess();
      sub_1000C8DC8(v6, v11 + v18);
      swift_endAccess();
      sub_10001C62C();
      sub_100008904(v6, &unk_100115120, &unk_1000D64A0);
      v19 = [objc_opt_self() sharedApplication];
      v20 = [v19 delegate];

      if (!v20)
      {
        __break(1u);
        goto LABEL_28;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v21 = sub_1000AF438();
      swift_unknownObjectRelease();

      sub_100027940(v8);
    }

    v22 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v23 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v22))
    {
      v24 = v40;
      v25 = swift_slowAlloc();
      *v25 = 134349056;
      *(v25 + 4) = [v8 deactivationReasons];

      _os_log_impl(&_mh_execute_header, v23, v22, "Scene settings updated, deactivation reasons: %{public}lu", v25, 0xCu);
    }

    v26 = [v8 deactivationReasons];
    v27 = objc_opt_self();
    v28 = [v27 sharedApplication];
    v29 = [v28 delegate];

    if (v26 != 128)
    {
      if (v29)
      {
        type metadata accessor for ClimateAppDelegate();
        swift_dynamicCastClassUnconditional();
        v35 = sub_1000AF438();
        swift_unknownObjectRelease();
        swift_getKeyPath();
        swift_getKeyPath();
        v37 = static Published.subscript.modify();
        if ((*v36 & 2) == 0)
        {
          v38 = *v36 | 2;
          goto LABEL_25;
        }

LABEL_26:
        v37(v41, 0);

        return;
      }

      goto LABEL_29;
    }

    if (v29)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v30 = sub_1000AF438();
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      v32 = static Published.subscript.modify();
      if ((*v31 & 2) != 0)
      {
        *v31 &= ~2uLL;
      }

      v32(v41, 0);

      v33 = [v27 sharedApplication];
      v34 = [v33 delegate];

      if (v34)
      {
        swift_dynamicCastClassUnconditional();
        v35 = sub_1000AF438();
        swift_unknownObjectRelease();
        swift_getKeyPath();
        swift_getKeyPath();
        v37 = static Published.subscript.modify();
        if ((*v36 & 1) == 0)
        {
          v38 = *v36 | 1;
LABEL_25:
          *v36 = v38;
          goto LABEL_26;
        }

        goto LABEL_26;
      }

      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v16 = v40;
}

void sub_1000C86F4(uint64_t a1)
{
  v3 = sub_1000040E8(&qword_100115840, &qword_1000D6440);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v16 = sub_1000C5950(a1);
  if (v16)
  {
    v51 = v1;
    v17 = v16;
    v18 = [v16 URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v10 + 32))(v15, v12, v9);
    sub_100096B2C(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v10 + 8))(v15, v9);
      sub_100008904(v5, &qword_100115840, &qword_1000D6440);
      goto LABEL_18;
    }

    v50 = v7;
    (*(v7 + 32))(v52, v5, v6);
    v19 = objc_opt_self();
    v20 = [v19 sharedApplication];
    v21 = [v20 delegate];

    if (v21)
    {
      v22 = type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v23 = sub_1000AF438();
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v24 = v53;
      if (v53)
      {
        v47 = v19;
        v48 = v22;
        v49 = v6;
        v26 = v54;
        v25 = v55;
        v27 = v56;
        v28 = v57;
        v29 = v58;
        v30 = v59;
        if (*(v58 + 16))
        {
          v31 = sub_10007DEE8(v52);
          if (v32)
          {
            v46 = *(*(v29 + 56) + 8 * v31);

            sub_1000081D8(v24, v26, v25, v27, v28, v29, v30);
            v33 = v47;
            v34 = [v47 sharedApplication];
            v35 = [v34 delegate];

            if (v35)
            {
              swift_dynamicCastClassUnconditional();
              sub_1000AF438();
              swift_unknownObjectRelease();
              swift_getKeyPath();
              swift_getKeyPath();
              v53 = 0;
              static Published.subscript.setter();
              v36 = v50;
              v37 = *(v51 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window);
              v38 = v49;
              if (v37)
              {
                v39 = [v37 rootViewController];
                if (v39)
                {
                  v40 = v39;
                  objc_opt_self();
                  v41 = swift_dynamicCastObjCClass();
                  if (v41)
                  {
                  }
                }
              }

              v42 = [v33 sharedApplication];
              v43 = [v42 delegate];

              if (v43)
              {
                swift_dynamicCastClassUnconditional();
                sub_1000AF438();
                swift_unknownObjectRelease();
                swift_getKeyPath();
                swift_getKeyPath();
                v53 = v46;
                static Published.subscript.setter();
                (*(v36 + 8))(v52, v38);
                (*(v10 + 8))(v15, v9);
                return;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            return;
          }
        }

        sub_1000081D8(v24, v26, v25, v27, v28, v29, v30);
        v6 = v49;
      }

      (*(v50 + 8))(v52, v6);
      (*(v10 + 8))(v15, v9);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_18:
  v44 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    v45 = v44;
    swift_once();
    v44 = v45;
  }

  os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, qword_10011B1C0, "No available climate zone in URL.", 33, 2, _swiftEmptyArrayStorage);
}

unint64_t sub_1000C8D74()
{
  result = qword_100118430;
  if (!qword_100118430)
  {
    type metadata accessor for ClimateSceneDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118430);
  }

  return result;
}

uint64_t sub_1000C8DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100115120, &unk_1000D64A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8E38()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C8E70()
{

  return _swift_deallocObject(v0, 32, 7);
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = Measurement._bridgeToObjectiveC()();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::String __swiftcall CAFVent.symbolName(useRightFacingSeat:)(Swift::Bool useRightFacingSeat)
{
  v1 = CAFVent.symbolName(useRightFacingSeat:)(useRightFacingSeat);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}