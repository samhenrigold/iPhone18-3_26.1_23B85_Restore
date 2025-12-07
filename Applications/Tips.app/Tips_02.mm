uint64_t sub_100055894(uint64_t a1)
{
  v2 = type metadata accessor for BackgroundProminence();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.backgroundProminence.setter();
}

uint64_t sub_100055960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_10001B4A4(&qword_1000B46D0, &qword_10007A788);
  __chkstk_darwin(v3);
  v5 = &v54 - v4;
  v6 = sub_10001B4A4(&qword_1000B46D8, &unk_10007A790);
  __chkstk_darwin(v6 - 8);
  v67 = &v54 - v7;
  v8 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  __chkstk_darwin(v8 - 8);
  v66 = &v54 - v9;
  v10 = type metadata accessor for ConstellationContentView();
  v69 = *(v10 - 8);
  __chkstk_darwin(v10);
  v68 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConstellationContentParagraphStyle();
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001B4A4(&qword_1000B46E0, &unk_10007A7A0);
  __chkstk_darwin(v14 - 8);
  v16 = &v54 - v15;
  v17 = type metadata accessor for ConstellationContentAttributes();
  v64 = *(v17 - 8);
  v65 = v17;
  __chkstk_darwin(v17);
  v70 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BackgroundProminence();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v54 - v24;
  v26 = type metadata accessor for ChecklistItemBody(0);
  v27 = *(v26 + 20);
  v28 = *(v26 + 24);
  v63 = v26;
  v29 = *(a1 + v28);
  v59 = *(a1 + v27 + 8);
  if ([v59 isSuggestedFor:v29])
  {
    v57 = v3;
    v58 = v5;
    v56 = a1;
    sub_1000561F8(&qword_1000B4460, &qword_10007A4F0, &type metadata accessor for BackgroundProminence, v25);
    static BackgroundProminence.increased.getter();
    v30 = static BackgroundProminence.== infix(_:_:)();
    v31 = *(v20 + 8);
    v31(v23, v19);
    v31(v25, v19);
    v55 = v10;
    if (v30)
    {
      v32 = static Color.white.getter();
    }

    else
    {
      v34 = [objc_opt_self() secondaryLabelColor];
      v32 = Color.init(_:)();
    }

    v35 = v32;
    v36 = v66;
    v37 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v38 = type metadata accessor for Locale.Language();
    v72 = 0u;
    v73 = 0u;
    v74 = 0;
    (*(*(v38 - 8) + 56))(v16, 1, 1, v38);

    defaultParagraphSpacing.getter();
    (*(v60 + 104))(v62, enum case for ConstellationContentParagraphStyle.newline(_:), v61);
    ConstellationContentAttributes.init(font:foregroundColor:accentColor:titleGradientStyle:textAlignment:paragraphSpacing:paragraphStyle:numberOfLines:lineBreakMode:symbolScale:useForegroundColorForSymbol:displayLinkStyle:typeSettingLanguage:supportsLinks:)();
    v39 = v59;
    v40 = [v59 bodyContentFor:v29];
    sub_10001B4A4(&qword_1000B31C8, &qword_100078040);
    v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = [v29 language];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = [v39 assetsBaseURLFor:v29];
    v66 = v35;
    if (v42)
    {
      v43 = v42;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = type metadata accessor for URL();
    (*(*(v45 - 8) + 56))(v36, v44, 1, v45);
    v46 = [v29 assetFileInfoManager];
    v47 = v64;
    v48 = v65;
    v49 = v67;
    v50 = v70;
    (*(v64 + 16))(v67, v70, v65);
    (*(v47 + 56))(v49, 0, 1, v48);
    v51 = v68;
    ConstellationContentView.init(rawContent:language:assetsBaseURL:assetFileInfoManager:attributes:size:maxWidth:textIsSelectable:delegate:)();
    v52 = v69;
    v53 = v55;
    (*(v69 + 16))(v58, v51, v55);
    swift_storeEnumTagMultiPayload();
    sub_100057890(&qword_1000B46E8, &type metadata accessor for ConstellationContentView, &protocol conformance descriptor for ConstellationContentView);
    _ConditionalContent<>.init(storage:)();

    (*(v52 + 8))(v51, v53);
    return (*(v47 + 8))(v50, v48);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100057890(&qword_1000B46E8, &type metadata accessor for ConstellationContentView, &protocol conformance descriptor for ConstellationContentView);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000561F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001B4A4(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_10001F808(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

BOOL sub_1000563F8(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_10005685C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChecklistItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000568E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100056918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100056980(uint64_t a1)
{
  v2 = type metadata accessor for ChecklistItemBody(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000569DC()
{
  result = qword_1000B44B8;
  if (!qword_1000B44B8)
  {
    sub_10001E860(&qword_1000B44B0, &qword_10007A540);
    sub_10001E8B8(&qword_1000B44C0, &qword_1000B44C8, &qword_10007A548, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B44B8);
  }

  return result;
}

void sub_100056AA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100056ABC()
{
  v1 = type metadata accessor for ChecklistItemView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ContentSizeCategory();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100056CBC(uint64_t a1)
{
  sub_100056DA0(319, &unk_1000B45C8, &type metadata accessor for BackgroundProminence, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10003D47C(319);
    if (v2 <= 0x3F)
    {
      sub_100024368();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100056DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100056E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_10001B4A4(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100056EF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = sub_10001B4A4(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100056FB0(uint64_t a1)
{
  sub_100056DA0(319, &unk_1000B45C8, &type metadata accessor for BackgroundProminence, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10003D47C(319);
    if (v2 <= 0x3F)
    {
      sub_100024368();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100057080()
{
  result = qword_1000B4698;
  if (!qword_1000B4698)
  {
    sub_10001E860(&qword_1000B43F8, &qword_10007A468);
    sub_10005710C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4698);
  }

  return result;
}

unint64_t sub_10005710C()
{
  result = qword_1000B46A0;
  if (!qword_1000B46A0)
  {
    sub_10001E860(&qword_1000B43E8, &qword_10007A458);
    sub_100057198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B46A0);
  }

  return result;
}

unint64_t sub_100057198()
{
  result = qword_1000B46A8;
  if (!qword_1000B46A8)
  {
    sub_10001E860(&qword_1000B43F0, &qword_10007A460);
    sub_1000573B8(&qword_1000B46B0, &qword_1000B46B8, &qword_10007A6D8, sub_100057250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B46A8);
  }

  return result;
}

unint64_t sub_100057250()
{
  result = qword_1000B46C0;
  if (!qword_1000B46C0)
  {
    sub_10001E860(&qword_1000B46C8, qword_10007A6E0);
    sub_10001E8B8(&qword_1000B4420, &qword_1000B4410, &qword_10007A480, &protocol conformance descriptor for HStack<A>);
    sub_10001E8B8(&qword_1000B4428, &qword_1000B4400, &qword_10007A470, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B46C0);
  }

  return result;
}

uint64_t sub_1000573B8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100057434()
{
  result = qword_1000B4718;
  if (!qword_1000B4718)
  {
    sub_10001E860(&qword_1000B4720, &qword_10007A808);
    sub_100057890(&qword_1000B46E8, &type metadata accessor for ConstellationContentView, &protocol conformance descriptor for ConstellationContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4718);
  }

  return result;
}

unint64_t sub_1000574F4()
{
  result = qword_1000B4728;
  if (!qword_1000B4728)
  {
    sub_10001E860(&qword_1000B4700, &qword_10007A7F8);
    sub_1000575AC();
    sub_10001E8B8(&qword_1000B4768, &qword_1000B41C8, &qword_100079D98, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4728);
  }

  return result;
}

unint64_t sub_1000575AC()
{
  result = qword_1000B4730;
  if (!qword_1000B4730)
  {
    sub_10001E860(&qword_1000B46F8, &unk_10007A7B8);
    sub_100057664();
    sub_10001E8B8(&qword_1000B3830, &qword_1000B3838, &unk_100078F10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4730);
  }

  return result;
}

unint64_t sub_100057664()
{
  result = qword_1000B4738;
  if (!qword_1000B4738)
  {
    sub_10001E860(&qword_1000B46F0, &qword_10007A7B0);
    sub_10005771C();
    sub_10001E8B8(&qword_1000B4758, &qword_1000B4760, &unk_10007A810, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4738);
  }

  return result;
}

unint64_t sub_10005771C()
{
  result = qword_1000B4740;
  if (!qword_1000B4740)
  {
    sub_10001E860(&qword_1000B3D88, &qword_100079898);
    sub_1000577D4();
    sub_10001E8B8(&qword_1000B4750, &qword_1000B3D90, &qword_1000798A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4740);
  }

  return result;
}

unint64_t sub_1000577D4()
{
  result = qword_1000B4748;
  if (!qword_1000B4748)
  {
    sub_10001E860(&qword_1000B3860, &qword_100078F28);
    sub_100057890(&qword_1000B3A48, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4748);
  }

  return result;
}

uint64_t sub_100057890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000578F4()
{
  v1 = v0;
  v2 = sub_10001B4A4(&qword_1000B47B0, &qword_10007A838);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v13 - v4;
  if (*(v0 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount) == 1)
  {
    result = (*((swift_isaMask & *v0) + 0xB0))(result);
    if (result)
    {
      v6 = TPSAnalyticsViewMethodAppForeground;

      v7 = OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask;
      if (*(v0 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask))
      {

        Task.cancel()();
      }

      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      type metadata accessor for MainActor();
      v9 = v0;
      v10 = v6;
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v9;
      v12[5] = v10;
      *(v1 + v7) = sub_100058840(0, 0, v5, &unk_10007A870, v12);
    }
  }

  return result;
}

void *sub_100057AD4(void *a1)
{
  v2 = v1;
  v4 = sub_10001B4A4(&qword_1000B47B0, &qword_10007A838);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  if (*(v1 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount) == 1)
  {
    result = (*((swift_isaMask & *v1) + 0xB0))(result);
    if (result)
    {

      v8 = OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask;
      if (*(v1 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask))
      {

        Task.cancel()();
      }

      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
      type metadata accessor for MainActor();
      v10 = v1;
      v11 = a1;
      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v10;
      v13[5] = v11;
      *(v2 + v8) = sub_100058840(0, 0, v7, &unk_10007A848, v13);
    }
  }

  return result;
}

void sub_100057CAC(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask))
  {

    Task.cancel()();
  }

  if (*(v1 + OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount) == 1)
  {
    v3 = (*((swift_isaMask & *v1) + 0xB0))();
    if (v3)
    {
      v4 = v3;
      v5 = TPSAnalyticsContentStyleLandingPage;
      v6 = [v4 identifier];
      if (!v6)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = String._bridgeToObjectiveC()();
      }

      v7 = [a1 viewMethod];
      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = String._bridgeToObjectiveC()();
      }

      v8 = objc_opt_self();
      v9 = [v1 traitCollection];
      v10 = [v8 analyticsViewModeForTraitCollection:v9];

      v11 = [v8 eventWithContentID:v5 collectionID:v6 correlationID:0 clientConditionID:0 viewMethod:v7 viewMode:v10];
      [v11 log];
    }
  }
}

id sub_100057F48()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:UIApplicationWillEnterForegroundNotification object:0];
  [v1 removeObserver:v0 name:UIApplicationDidEnterBackgroundNotification object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for TipsTOCViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100058100(void *a1)
{
  *&v1[OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod] = 0;
  v1[OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount] = 1;
  *&v1[OBJC_IVAR____TtC4Tips21TipsTOCViewController_analyticsLoggingTask] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TipsTOCViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1000581B8(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TipsTOCViewController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v1[OBJC_IVAR____TtC4Tips21TipsTOCViewController_canIncreaseViewCount] = 1;
  v3 = OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod;
  v4 = *&v1[OBJC_IVAR____TtC4Tips21TipsTOCViewController_preferredViewMethod];
  if (v4)
  {
    v5 = v4;
    sub_100057AD4(v5);

    v6 = *&v1[v3];
    *&v1[v3] = 0;
  }

  else
  {
    sub_100057AD4(TPSAnalyticsViewMethodViewAppear);
  }
}

uint64_t sub_100058430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return _swift_task_switch(sub_100058524, v8, v7);
}

uint64_t sub_100058524()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_100058608;

  return sub_10005917C(v1, v3, 0, 0, 1);
}

uint64_t sub_100058608()
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
    v9 = sub_100059790;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_10005879C;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10005879C()
{
  v1 = *(v0 + 24);

  v2 = [objc_opt_self() proxyWithViewMethod:v1];
  sub_100057CAC(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100058840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001B4A4(&qword_1000B47B0, &qword_10007A838);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100058C18(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100058C88(v11);
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

      sub_100058C88(a3);

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

  sub_100058C88(a3);
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

uint64_t sub_100058B58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10005978C;

  return sub_100058430(a1, v4, v5, v7, v6);
}

uint64_t sub_100058C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B47B0, &qword_10007A838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058C88(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B47B0, &qword_10007A838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100058CF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100058DE8;

  return v6(a1);
}

uint64_t sub_100058DE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100058EE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058F18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005978C;

  return sub_100058CF0(a1, v4);
}

uint64_t sub_100058FD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100059088;

  return sub_100058CF0(a1, v4);
}

uint64_t sub_100059088()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10005917C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10005927C, 0, 0);
}

uint64_t sub_10005927C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100059634(&qword_1000B47B8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100059634(&qword_1000B47C0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10005940C;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10005940C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000595C8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000595C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100059634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005967C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000596C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100059088;

  return sub_100058430(a1, v4, v5, v7, v6);
}

unint64_t sub_100059798()
{
  result = qword_1000B47C8;
  if (!qword_1000B47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47C8);
  }

  return result;
}

unint64_t sub_1000597F0()
{
  result = qword_1000B47D0;
  if (!qword_1000B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47D0);
  }

  return result;
}

uint64_t sub_1000598A0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000598CC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10005B184(v6, qword_1000B6F00);
  sub_1000421A4(v6, qword_1000B6F00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100059AE4(uint64_t a1, uint64_t a2)
{
  v2[31] = a1;
  v2[32] = a2;
  sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v2[33] = swift_task_alloc();
  v3 = type metadata accessor for IntentSystemContext.Source();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = sub_10001B4A4(&qword_1000B4808, &qword_10007A9E0);
  v2[38] = swift_task_alloc();
  sub_10001B4A4(&qword_1000B4810, &qword_10007A9E8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v4 = type metadata accessor for IntentSystemContext();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();

  return _swift_task_switch(sub_100059D20, 0, 0);
}

uint64_t sub_100059D20()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);
  v48 = *(v0 + 328);
  v49 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  v52 = *(v0 + 296);
  v5 = *(v0 + 280);
  v50 = *(v0 + 272);
  v6 = *(v0 + 256);
  v7 = objc_opt_self();
  IntentParameter.wrappedValue.getter();

  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 URLWithTipIdentifier:0 collectionIdentifier:v8 referrer:TPSAnalyticsLaunchTypeAppShortcuts];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100046694(_swiftEmptyArrayStorage);
  *(v0 + 240) = v6;
  sub_10004E77C();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v1 + 8))(v2, v49);
  (*(v5 + 104))(v3, enum case for IntentSystemContext.Source.spotlight(_:), v50);
  (*(v5 + 56))(v3, 0, 1, v50);
  v10 = *(v52 + 48);
  sub_10005B078(v48, v4);
  sub_10005B078(v3, v4 + v10);
  v11 = *(v5 + 48);
  v12 = v4;
  if (v11(v4, 1, v50) != 1)
  {
    v15 = *(v0 + 272);
    sub_10005B078(*(v0 + 304), *(v0 + 312));
    v16 = v11(v4 + v10, 1, v15);
    v18 = *(v0 + 320);
    v17 = *(v0 + 328);
    v19 = *(v0 + 312);
    if (v16 != 1)
    {
      v53 = *(v0 + 304);
      v22 = *(v0 + 280);
      v23 = *(v0 + 288);
      v24 = *(v0 + 272);
      (*(v22 + 32))(v23, v12 + v10, v24);
      sub_10005B100();
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v22 + 8);
      v25(v23, v24);
      sub_10001F870(v18, &qword_1000B4810, &qword_10007A9E8);
      sub_10001F870(v17, &qword_1000B4810, &qword_10007A9E8);
      v25(v19, v24);
      sub_10001F870(v53, &qword_1000B4810, &qword_10007A9E8);
      if ((v51 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v21 = *(v0 + 272);
    v20 = *(v0 + 280);
    sub_10001F870(*(v0 + 320), &qword_1000B4810, &qword_10007A9E8);
    sub_10001F870(v17, &qword_1000B4810, &qword_10007A9E8);
    (*(v20 + 8))(v19, v21);
LABEL_6:
    sub_10001F870(*(v0 + 304), &qword_1000B4808, &qword_10007A9E0);
    goto LABEL_9;
  }

  v13 = *(v0 + 328);
  v14 = *(v0 + 272);
  sub_10001F870(*(v0 + 320), &qword_1000B4810, &qword_10007A9E8);
  sub_10001F870(v13, &qword_1000B4810, &qword_10007A9E8);
  if (v11(v12 + v10, 1, v14) != 1)
  {
    goto LABEL_6;
  }

  sub_10001F870(*(v0 + 304), &qword_1000B4810, &qword_10007A9E8);
LABEL_8:
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 200) = &type metadata for String;
  *(v0 + 176) = v29;
  *(v0 + 184) = v30;
  sub_10003CD0C((v0 + 176), (v0 + 208));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100045EDC((v0 + 208), v26, v28, isUniquelyReferenced_nonNull_native);

LABEL_9:
  v32 = [objc_opt_self() clientBundleIdentifier];
  if (v32)
  {
    v33 = v32;
    v34 = *(v0 + 368);
    v35 = *(v0 + 360);
    v36 = *(v0 + 264);
    (*(v34 + 16))(v36, *(v0 + 376), v35);
    (*(v34 + 56))(v36, 0, 1, v35);
    v37 = AFIsPersistentSiriAvailable();
    v38.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if ((*(v34 + 48))(v36, 1, v35) == 1)
    {
      v40 = 0;
    }

    else
    {
      v41 = *(v0 + 360);
      v42 = *(v0 + 368);
      v43 = *(v0 + 264);
      URL._bridgeToObjectiveC()(v39);
      v40 = v44;
      (*(v42 + 8))(v43, v41);
    }

    v45 = [objc_allocWithZone(INCAppLaunchRequest) initWithBundleIdentifier:v33 options:v38.super.isa URL:v40 userActivity:0 retainsSiri:v37];
    *(v0 + 384) = v45;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 400;
    *(v0 + 24) = sub_10005A380;
    v46 = swift_continuation_init();
    *(v0 + 136) = sub_10001B4A4(&qword_1000B4818, &qword_10007A9F0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10005A690;
    *(v0 + 104) = &unk_1000A41D8;
    *(v0 + 112) = v46;
    [v45 performWithCompletionHandler:v0 + 80];
    v32 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v32);
}

uint64_t sub_10005A380()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_10005A590;
  }

  else
  {
    v2 = sub_10005A490;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005A490()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  static IntentResult.result<>()();

  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005A590()
{
  v1 = v0[48];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[45];
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10005A690(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10001F8D0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10001B4A4(&qword_1000B4828, &qword_10007A9F8);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10005A75C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B2B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000421A4(v2, qword_1000B6F00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10005A814(uint64_t a1, uint64_t a2)
{
  v2 = sub_10001B4A4(&qword_1000B4830, &qword_10007AA00);
  __chkstk_darwin(v2 - 8);
  v3 = sub_10001B4A4(&qword_1000B4838, &qword_10007AA08);
  __chkstk_darwin(v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010008CC40;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_10001B4A4(&qword_1000B4210, &qword_100079E88);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10005A9B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100059088;

  return sub_100059AE4(a1, v4);
}

uint64_t sub_10005AA50@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10005AB4C();
  *a2 = result;
  return result;
}

uint64_t sub_10005AA78(uint64_t a1)
{
  v2 = sub_10004E77C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10005AB4C()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10001B4A4(&qword_1000B47F8, &qword_10007A9B8);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = v23 - v5;
  v6 = sub_10001B4A4(&unk_1000B4D80, &qword_10007A9C0);
  __chkstk_darwin(v6 - 8);
  v30 = v23 - v7;
  v29 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v8 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for LocalizedStringResource();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v23[0] = v23 - v16;
  v23[1] = sub_10001B4A4(&qword_1000B4800, &qword_10007A9C8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v18 = *(v8 + 104);
  v18(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v29);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v30, 1, 1, v13);
  v31 = 0u;
  v32 = 0u;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18(v10, v17, v29);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v19 = v24;
  IntentDialog.init(_:)();
  v20 = type metadata accessor for IntentDialog();
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 0, 1, v20);
  v21(v25, 1, 1, v20);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_100022F14();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_10005B078(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B4810, &qword_10007A9E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005B100()
{
  result = qword_1000B4820;
  if (!qword_1000B4820)
  {
    type metadata accessor for IntentSystemContext.Source();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4820);
  }

  return result;
}

uint64_t sub_10005B158@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t *sub_10005B184(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10005B214(uint64_t a1, void *a2)
{
  v4 = sub_10001B4A4(&qword_1000B4878, &unk_10007AB50);
  __chkstk_darwin(v4);
  v6 = &v16[-v5];
  type metadata accessor for CollectionListViewModel(0);
  sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel, &unk_100078420);
  v7 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v21 = v24;
  v22 = v25;
  v23 = v26;
  v17 = a1;
  v18 = a2;
  sub_10001B4A4(&qword_1000B48A8, &qword_10007ABA8);
  v8 = sub_10001E860(&qword_1000B48B0, &qword_10007ABB0);
  v9 = sub_1000603BC();
  v19 = v8;
  v20 = v9;
  swift_getOpaqueTypeConformance2();
  List.init(selection:content:)();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = &v6[*(v4 + 36)];
  *v11 = sub_100060524;
  v11[1] = v10;
  v11[2] = 0;
  v11[3] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a2;
  static Published.subscript.getter();

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  v14 = v12;
  sub_10001B4A4(&qword_1000B3390, &unk_100077F30);
  sub_1000600FC();
  sub_1000601B4();
  View.onChange<A>(of:initial:_:)();

  return sub_10001F870(v6, &qword_1000B4878, &unk_10007AB50);
}

uint64_t sub_10005B514(char *a1, char *a2)
{
  v4 = sub_10001B4A4(&qword_1000B48B0, &qword_10007ABB0);
  __chkstk_darwin(v4);
  v6 = &v11[-v5];
  sub_10005B6C0(a1, a2, &v11[-v5]);
  v7 = &v6[*(v4 + 36)];
  v8 = *(sub_10001B4A4(&qword_1000B3708, &qword_100078CC8) + 28);
  v9 = type metadata accessor for Text.Case();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *v7 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  static VerticalEdge.Set.all.getter();
  sub_1000603BC();
  View.listRowSeparator(_:edges:)();
  return sub_10001F870(v6, &qword_1000B48B0, &qword_10007ABB0);
}

uint64_t sub_10005B6C0@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v5 = sub_10001B4A4(&qword_1000B48E8, &qword_10007ACE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v69 - v7;
  v79 = sub_10001B4A4(&qword_1000B48F0, &qword_10007ACE8);
  v77 = *(v79 - 1);
  __chkstk_darwin(v79);
  v76 = &v69 - v9;
  v10 = sub_10001B4A4(&qword_1000B48F8, &qword_10007ACF0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v69 - v14;
  v15 = sub_10001B4A4(&qword_1000B4900, &qword_10007ACF8);
  v81 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v89 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v92 = &v69 - v18;
  v80 = sub_10001B4A4(&qword_1000B4908, &qword_10007AD00);
  v78 = *(v80 - 8);
  v19 = __chkstk_darwin(v80);
  v88 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v91 = &v69 - v21;
  v22 = sub_10001B4A4(&qword_1000B4910, &qword_10007AD08);
  v23 = __chkstk_darwin(v22 - 8);
  v86 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v69 - v25;
  v27 = sub_10001B4A4(&qword_1000B4918, &qword_10007AD10);
  v28 = __chkstk_darwin(v27 - 8);
  v85 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v69 - v30;
  v32 = sub_10001B4A4(&qword_1000B4920, qword_10007AD18);
  v33 = __chkstk_darwin(v32 - 8);
  v84 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v82 = &v69 - v35;
  sub_10005DC98(a1, a2);
  v83 = v31;
  sub_10005E7D0(a1, a2, v31);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v93 >> 62)
  {
    v59 = _CocoaArrayWrapper.endIndex.getter();

    if (v59)
    {
      goto LABEL_3;
    }

LABEL_8:
    v58 = 1;
    goto LABEL_9;
  }

  v36 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v36)
  {
    goto LABEL_8;
  }

LABEL_3:
  v71 = v15;
  v73 = v26;
  v70 = v13;
  v74 = v5;
  v72 = v8;
  v75 = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  *(v37 + 24) = a2;
  v38 = a2;
  sub_10001B4A4(&qword_1000B3478, &unk_1000783E0);
  sub_10001B4A4(&qword_1000B4928, &unk_10007ADC0);
  sub_10001E8B8(&qword_1000B4930, &qword_1000B3478, &unk_1000783E0, &protocol conformance descriptor for [A]);
  sub_100060814();
  ForEach<>.init(_:id:content:)();
  sub_10005C108(a1, v38, v92);
  if ([objc_opt_self() isPhoneUI])
  {
    v39 = v76;
    sub_10005C4F4(a1, v38, v76);
    v40 = v77;
    v41 = v90;
    v42 = v39;
    v43 = v79;
    (*(v77 + 32))(v90, v42, v79);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v41 = v90;
    v43 = v79;
    v40 = v77;
  }

  (*(v40 + 56))(v41, v44, 1, v43);
  v45 = v78;
  v46 = *(v78 + 16);
  v47 = v88;
  v48 = v80;
  v46(v88, v91, v80);
  v49 = v81;
  v79 = *(v81 + 16);
  v50 = v71;
  (v79)(v89, v92, v71);
  v51 = v41;
  v52 = v70;
  sub_10001F808(v51, v70, &qword_1000B48F8, &qword_10007ACF0);
  v53 = v72;
  v46(v72, v47, v48);
  v54 = sub_10001B4A4(&qword_1000B4958, &qword_10007ADE0);
  v55 = v89;
  (v79)(v53 + *(v54 + 48), v89, v50);
  sub_10001F808(v52, v53 + *(v54 + 64), &qword_1000B48F8, &qword_10007ACF0);
  sub_10001F870(v90, &qword_1000B48F8, &qword_10007ACF0);
  v56 = *(v49 + 8);
  v56(v92, v50);
  v57 = *(v45 + 8);
  v57(v91, v48);
  sub_10001F870(v52, &qword_1000B48F8, &qword_10007ACF0);
  v56(v55, v50);
  v57(v88, v48);
  v26 = v73;
  sub_100060A0C(v53, v73);
  v58 = 0;
  v5 = v74;
  v6 = v75;
LABEL_9:
  (*(v6 + 56))(v26, v58, 1, v5);
  v60 = v82;
  v61 = v84;
  sub_10001F808(v82, v84, &qword_1000B4920, qword_10007AD18);
  v62 = v83;
  v63 = v85;
  sub_10001F808(v83, v85, &qword_1000B4918, &qword_10007AD10);
  v64 = v86;
  sub_10001F808(v26, v86, &qword_1000B4910, &qword_10007AD08);
  v65 = v26;
  v66 = v87;
  sub_10001F808(v61, v87, &qword_1000B4920, qword_10007AD18);
  v67 = sub_10001B4A4(&qword_1000B4960, &qword_10007ADE8);
  sub_10001F808(v63, v66 + *(v67 + 48), &qword_1000B4918, &qword_10007AD10);
  sub_10001F808(v64, v66 + *(v67 + 64), &qword_1000B4910, &qword_10007AD08);
  sub_10001F870(v65, &qword_1000B4910, &qword_10007AD08);
  sub_10001F870(v62, &qword_1000B4918, &qword_10007AD10);
  sub_10001F870(v60, &qword_1000B4920, qword_10007AD18);
  sub_10001F870(v64, &qword_1000B4910, &qword_10007AD08);
  sub_10001F870(v63, &qword_1000B4918, &qword_10007AD10);
  return sub_10001F870(v61, &qword_1000B4920, qword_10007AD18);
}

uint64_t sub_10005C108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v3 = type metadata accessor for Prominence();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v26 = sub_10001B4A4(&qword_1000B3CE8, &qword_100079728);
  __chkstk_darwin(v26);
  v10 = &v26 - v9;
  v11 = sub_10001B4A4(&qword_1000B4980, &qword_10007AE30);
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v35 = v15;
  sub_1000235B4();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v34 = v16;
  v35 = v17;
  v20 = v19 & 1;
  v36 = v19 & 1;
  v37 = v21;
  (*(v4 + 104))(v6, enum case for Prominence.increased(_:), v3);
  View.headerProminence(_:)();
  (*(v4 + 8))(v6, v3);
  sub_100023608(v16, v18, v20);

  KeyPath = swift_getKeyPath();
  v23 = &v10[*(v26 + 36)];
  *v23 = KeyPath;
  *(v23 + 1) = 0;
  v23[16] = 1;
  v32 = v29;
  v33 = v30;
  sub_10001B4A4(&qword_1000B4988, &qword_10007AE38);
  sub_1000419B8();
  sub_100060BA8();
  Section<>.init(header:content:)();
  v24 = v27;
  Section<>.collapsible(_:)();
  return (*(v28 + 8))(v14, v24);
}

uint64_t sub_10005C4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v3 = type metadata accessor for Prominence();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v27 = sub_10001B4A4(&qword_1000B3CE8, &qword_100079728);
  __chkstk_darwin(v27);
  v10 = &v27 - v9;
  v11 = sub_10001B4A4(&qword_1000B4968, &qword_10007ADF0);
  v12 = *(v11 - 8);
  v28 = v11;
  v29 = v12;
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v35 = String.init(localized:table:bundle:locale:comment:)();
  v36 = v15;
  sub_1000235B4();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v35 = v16;
  v36 = v17;
  v20 = v19 & 1;
  LOBYTE(v37) = v19 & 1;
  v38 = v21;
  (*(v4 + 104))(v6, enum case for Prominence.increased(_:), v3);
  View.headerProminence(_:)();
  (*(v4 + 8))(v6, v3);
  sub_100023608(v16, v18, v20);

  KeyPath = swift_getKeyPath();
  v23 = &v10[*(v27 + 36)];
  *v23 = KeyPath;
  *(v23 + 1) = 0;
  v23[16] = 1;
  v33 = v30;
  v34 = v31;
  sub_10001B4A4(&qword_1000B4970, &qword_10007AE28);
  sub_1000419B8();
  v24 = sub_100060B4C();
  v35 = &type metadata for GuidedHelpListItemView;
  v36 = &type metadata for String;
  v37 = v24;
  v38 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  Section<>.init(header:content:)();
  v25 = v28;
  Section<>.collapsible(_:)();
  return (*(v29 + 8))(v14, v25);
}

uint64_t sub_10005C924(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v24 = v10;
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v14, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_1000605A4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A4370;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006055C(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v6, v4);
  (*(v25 + 8))(v9, v26);
  return (v23)(v16, v24);
}

uint64_t sub_10005CD04(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v4 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      a2;
      static Published.subscript.setter();
      return sub_10002E43C();
    }
  }

  return result;
}

uint64_t sub_10005CE18(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v45 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v46 = &v41 - v15;
  v16 = a2[1];
  if (v16)
  {
    v17 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = a4;
    static Published.subscript.getter();

    v18 = aBlock[0];
    v41 = v7;
    v42 = v6;
    v43 = v13;
    if (aBlock[0] >> 62)
    {
LABEL_21:
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (v19)
      {
LABEL_4:
        v20 = 0;
        v53 = (v18 & 0xC000000000000001);
        while (1)
        {
          if (v53)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          if (UserGuide.identifier.getter() == v17 && v16 == v24)
          {
            break;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
            goto LABEL_16;
          }

          ++v20;
          if (v23 == v19)
          {
            goto LABEL_22;
          }
        }

LABEL_16:

        v27 = v43;
        v26 = v44;
        v28 = *&v44[OBJC_IVAR___CollectionListViewModel_userGuideHandler];
        if (v28)
        {
          v29 = *&v44[OBJC_IVAR___CollectionListViewModel_userGuideHandler + 8];

          v28(v22);
          sub_10001E970(v28, v29);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v19 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_4;
      }
    }

LABEL_22:

    v27 = v43;
    v26 = v44;
    if (v17 == 0xD000000000000011 && v16 == 0x800000010008CCF0 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      v30 = *&v26[OBJC_IVAR___CollectionListViewModel_supportFlowHandler];
      if (v30)
      {
        v31 = *&v26[OBJC_IVAR___CollectionListViewModel_supportFlowHandler + 8];

        v30(0, 0);
        sub_10001E970(v30, v31);
      }

LABEL_27:
      sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
      v32 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v33 = v46;
      + infix(_:_:)();
      v34 = v48;
      v53 = *(v47 + 8);
      v53(v27, v48);
      v35 = swift_allocObject();
      *(v35 + 16) = v45;
      *(v35 + 24) = v26;
      aBlock[4] = sub_10006053C;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002086C;
      aBlock[3] = &unk_1000A4320;
      v36 = _Block_copy(aBlock);
      v37 = v26;

      v38 = v49;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10006055C(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
      sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40, &protocol conformance descriptor for [A]);
      v39 = v51;
      v40 = v42;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v36);

      (*(v41 + 8))(v39, v40);
      (*(v50 + 8))(v38, v52);
      return (v53)(v33, v34);
    }
  }

  return result;
}

uint64_t sub_10005D444(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  a2;
  static Published.subscript.setter();
  return sub_10002E43C();
}

double sub_10005D4BC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_10002FFE4())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = a2;
  }

  sub_10001B4A4(&qword_1000B4840, &qword_10007AAC8);
  sub_10001E8B8(&qword_1000B4848, &qword_1000B4840, &qword_10007AAC8, &protocol conformance descriptor for ScrollViewReader<A>);
  _ConditionalContent<>.init(storage:)();
  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_10005D5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_10005D654(a2, a3, a4);
  v6 = *(sub_10001B4A4(&qword_1000B4850, &qword_10007AAD0) + 36);
  v7 = type metadata accessor for ScrollViewProxy();
  v8 = *(*(v7 - 8) + 16);

  return v8(a4 + v6, a1, v7);
}

uint64_t sub_10005D654@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v47 = a3;
  v4 = type metadata accessor for SidebarListStyle();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10001B4A4(&qword_1000B4858, &qword_10007AAD8);
  __chkstk_darwin(v46);
  v40 = &v36 - v7;
  v44 = sub_10001B4A4(&qword_1000B4860, &qword_10007AAE0);
  __chkstk_darwin(v44);
  v45 = &v36 - v8;
  v43 = type metadata accessor for InsetGroupedListStyle();
  v37 = *(v43 - 8);
  __chkstk_darwin(v43);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001B4A4(&qword_1000B4868, &qword_10007AAE8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v42 = sub_10001B4A4(&qword_1000B4870, qword_10007AAF0);
  v15 = *(v42 - 8);
  __chkstk_darwin(v42);
  v17 = &v36 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v48;
  sub_10005B214(v41, a2);
  if (v18 == 1)
  {
    InsetGroupedListStyle.init()();
    v19 = sub_10001E860(&qword_1000B4878, &unk_10007AB50);
    v20 = sub_10001E860(&qword_1000B3390, &unk_100077F30);
    v21 = sub_1000600FC();
    v22 = sub_1000601B4();
    v48 = v19;
    v49 = v20;
    v50 = v21;
    v51 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = v43;
    View.listStyle<A>(_:)();
    (*(v37 + 8))(v10, v24);
    (*(v12 + 8))(v14, v11);
    v25 = v42;
    (*(v15 + 16))(v45, v17, v42);
    swift_storeEnumTagMultiPayload();
    v48 = v11;
    v49 = v24;
    v50 = OpaqueTypeConformance2;
    v51 = &protocol witness table for InsetGroupedListStyle;
    swift_getOpaqueTypeConformance2();
    sub_100060230();
    _ConditionalContent<>.init(storage:)();
    return (*(v15 + 8))(v17, v25);
  }

  else
  {
    SidebarListStyle.init()();
    v27 = sub_10001E860(&qword_1000B4878, &unk_10007AB50);
    v28 = sub_10001E860(&qword_1000B3390, &unk_100077F30);
    v29 = sub_1000600FC();
    v30 = sub_1000601B4();
    v48 = v27;
    v49 = v28;
    v50 = v29;
    v51 = v30;
    v31 = swift_getOpaqueTypeConformance2();
    v32 = v39;
    v33 = v40;
    View.listStyle<A>(_:)();
    (*(v38 + 8))(v6, v32);
    (*(v12 + 8))(v14, v11);
    v48 = static Color.clear.getter();
    v34 = AnyView.init<A>(_:)();
    v35 = v45;
    *(v33 + *(v46 + 36)) = v34;
    sub_10001F808(v33, v35, &qword_1000B4858, &qword_10007AAD8);
    swift_storeEnumTagMultiPayload();
    v48 = v11;
    v49 = v43;
    v50 = v31;
    v51 = &protocol witness table for InsetGroupedListStyle;
    swift_getOpaqueTypeConformance2();
    sub_100060230();
    _ConditionalContent<>.init(storage:)();
    return sub_10001F870(v33, &qword_1000B4858, &qword_10007AAD8);
  }
}

uint64_t sub_10005DC98(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001B4A4(&qword_1000B49D8, &qword_10007AFA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = sub_10001B4A4(&qword_1000B49E0, qword_10007AFB0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v15;
  if (v15)
  {
    __chkstk_darwin(v10);
    *(&v14 - 4) = v11;
    *(&v14 - 3) = v12;
    *(&v14 - 2) = a2;
    sub_10001B4A4(&qword_1000B49F8, &qword_10007B020);
    sub_100060EDC();
    Section<>.init(content:)();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_100060E4C();
    _ConditionalContent<>.init(storage:)();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100060E4C();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10005DF34(void *a1, uint64_t a2, void *a3)
{
  sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000792A0;
  *(v6 + 32) = a1;
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = a1;
  v9 = a3;
  sub_10001B4A4(&qword_1000B3468, &qword_10007AF20);
  sub_10001B4A4(&qword_1000B4A08, &qword_10007B028);
  sub_10001E8B8(&qword_1000B49C8, &qword_1000B3468, &qword_10007AF20, &protocol conformance descriptor for [A]);
  sub_1000611A0();
  sub_100060F60();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10005E094@<X0>(id *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v63 = a3;
  v61 = type metadata accessor for CollectionListItemView(0);
  __chkstk_darwin(v61);
  v6 = (v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_10001B4A4(&qword_1000B49C0, &qword_10007AF28);
  v59 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = v56 - v7;
  v8 = sub_10001B4A4(&qword_1000B4A28, &qword_10007B060);
  __chkstk_darwin(v8);
  v10 = v56 - v9;
  v11 = sub_10001B4A4(&qword_1000B2BE0, qword_10007B030);
  __chkstk_darwin(v11);
  v13 = (v56 - v12);
  v14 = sub_10001B4A4(&qword_1000B4A30, &unk_10007B068);
  v57 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v56 - v15;
  v60 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = a2;
  static Published.subscript.getter();

  if (v64 == 1)
  {
    v18 = v60;
    sub_100020A98(v17, v18, v13);
    v19 = v13 + *(v11 + 36);
    v19[32] = 0;
    *v19 = 0u;
    *(v19 + 1) = 0u;
    v20 = [v18 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    sub_100061208(v13, v16);
    v24 = &v16[*(sub_10001B4A4(&qword_1000B2BE8, &unk_100077850) + 36)];
    *v24 = v21;
    *(v24 + 1) = v23;
    v24[16] = 1;
    v25 = v57;
    (*(v57 + 2))(v10, v16, v14);
    swift_storeEnumTagMultiPayload();
    v26 = sub_1000610A4();
    v64 = v11;
    v65 = &type metadata for String;
    v66 = v26;
    v67 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v27 = sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView, &unk_100079B98);
    v64 = v61;
    v65 = &type metadata for String;
    v66 = v27;
    v67 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v25 + 1))(v16, v14);
  }

  else
  {
    v56[0] = v11;
    v56[1] = v8;
    v56[2] = v14;
    v57 = v10;
    *v6 = swift_getKeyPath();
    sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
    swift_storeEnumTagMultiPayload();
    v29 = v61;
    v30 = *(v61 + 20);
    *(v6 + v30) = swift_getKeyPath();
    sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
    swift_storeEnumTagMultiPayload();
    v31 = (v6 + v29[6]);
    type metadata accessor for CollectionListViewModel(0);
    sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel, &unk_100078420);
    v32 = v17;
    v33 = v60;
    *v31 = ObservedObject.init(wrappedValue:)();
    v31[1] = v34;
    *(v6 + v29[8]) = v33;
    v35 = v33;
    v36 = [v35 identifier];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = [v35 title];
    if (v40)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
    }

    else
    {

      v41 = 0;
      v43 = 0xE000000000000000;
    }

    v44 = (v6 + v29[7]);
    *v44 = v37;
    v44[1] = v39;
    v44[2] = v41;
    v44[3] = v43;
    v45 = [v35 identifier];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = v6;
    v50 = v58;
    sub_100060D7C(v49, v58, type metadata accessor for CollectionListItemView);
    v51 = v50 + *(sub_10001B4A4(&qword_1000B2BF0, &qword_10007AF30) + 36);
    *v51 = v46;
    *(v51 + 8) = v48;
    *(v51 + 16) = 1;
    v52 = v59;
    v53 = v62;
    (*(v59 + 16))(v57, v50, v62);
    swift_storeEnumTagMultiPayload();
    v54 = sub_1000610A4();
    v64 = v56[0];
    v65 = &type metadata for String;
    v66 = v54;
    v67 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v55 = sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView, &unk_100079B98);
    v64 = v29;
    v65 = &type metadata for String;
    v66 = v55;
    v67 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v52 + 8))(v50, v53);
  }
}

uint64_t sub_10005E7D0@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v55 = a3;
  v57 = sub_10001B4A4(&qword_1000B49D0, qword_10007AF38);
  __chkstk_darwin(v57);
  v5 = &v46 - v4;
  v6 = type metadata accessor for Prominence();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10001B4A4(&qword_1000B3CE8, &qword_100079728);
  __chkstk_darwin(v54);
  v11 = &v46 - v10;
  v12 = sub_10001B4A4(&qword_1000B49B0, &qword_10007AEE8);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  __chkstk_darwin(v12);
  v47 = &v46 - v14;
  v56 = sub_10001B4A4(&qword_1000B49B8, &qword_10007AEF0);
  v51 = *(v56 - 8);
  __chkstk_darwin(v56);
  v50 = &v46 - v15;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = a2;
  static Published.subscript.getter();

  v18 = v58;
  if (v58)
  {
    v46 = v5;
    v19 = [v58 tipIdentifiers];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = *(v20 + 16);

    if (v21)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v58 = String.init(localized:table:bundle:locale:comment:)();
      v59 = v22;
      sub_1000235B4();
      v23 = Text.init<A>(_:)();
      v25 = v24;
      v58 = v23;
      v59 = v24;
      v27 = v26 & 1;
      LOBYTE(v60) = v26 & 1;
      v61 = v28;
      (*(v7 + 104))(v9, enum case for Prominence.increased(_:), v6);
      View.headerProminence(_:)();
      (*(v7 + 8))(v9, v6);
      sub_100023608(v23, v25, v27);

      KeyPath = swift_getKeyPath();
      v30 = v48;
      v31 = v54;
      v32 = &v11[v54[9]];
      *v32 = KeyPath;
      *(v32 + 1) = 0;
      v32[16] = 1;
      __chkstk_darwin(KeyPath);
      v34 = v52;
      v33 = v53;
      *(&v46 - 4) = v18;
      *(&v46 - 3) = v34;
      *(&v46 - 2) = v33;
      v35 = sub_10001B4A4(&qword_1000B4940, &unk_10007ADD0);
      v36 = sub_1000419B8();
      v37 = sub_100060914();
      v38 = v47;
      Section<>.init(header:content:)();
      v39 = v50;
      Section<>.collapsible(_:)();
      (*(v49 + 8))(v38, v30);
      v40 = v51;
      v41 = v56;
      (*(v51 + 16))(v46, v39, v56);
      swift_storeEnumTagMultiPayload();
      v58 = v31;
      v59 = v35;
      v60 = &type metadata for EmptyView;
      v61 = v36;
      v62 = v37;
      v63 = &protocol witness table for EmptyView;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();

      return (*(v40 + 8))(v39, v41);
    }
  }

  swift_storeEnumTagMultiPayload();
  v43 = sub_10001E860(&qword_1000B4940, &unk_10007ADD0);
  v44 = sub_1000419B8();
  v45 = sub_100060914();
  v58 = v54;
  v59 = v43;
  v60 = &type metadata for EmptyView;
  v61 = v44;
  v62 = v45;
  v63 = &protocol witness table for EmptyView;
  swift_getOpaqueTypeConformance2();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10005EEA4(void *a1, uint64_t a2, void *a3)
{
  sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000792A0;
  *(v6 + 32) = a1;
  swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v8 = a1;
  v9 = a3;
  sub_10001B4A4(&qword_1000B3468, &qword_10007AF20);
  sub_10001B4A4(&qword_1000B49C0, &qword_10007AF28);
  sub_10001E8B8(&qword_1000B49C8, &qword_1000B3468, &qword_10007AF20, &protocol conformance descriptor for [A]);
  type metadata accessor for CollectionListItemView(255);
  sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView, &unk_100079B98);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10005F078@<X0>(void **a1@<X0>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a3;
  v7 = type metadata accessor for CollectionListItemView(0);
  __chkstk_darwin(v7);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  *v9 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
  swift_storeEnumTagMultiPayload();
  v11 = v7[5];
  *(v9 + v11) = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v12 = (v9 + v7[6]);
  type metadata accessor for CollectionListViewModel(0);
  sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel, &unk_100078420);
  v13 = a2;
  v14 = v10;
  *v12 = ObservedObject.init(wrappedValue:)();
  v12[1] = v15;
  *(v9 + v7[8]) = v14;
  v16 = v14;
  v17 = [v16 identifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [v16 title];
  if (v21)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {

    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v25 = (v9 + v7[7]);
  *v25 = v18;
  v25[1] = v20;
  v25[2] = v22;
  v25[3] = v24;
  v26 = [v33 identifier];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  sub_100060D7C(v9, a4, type metadata accessor for CollectionListItemView);
  result = sub_10001B4A4(&qword_1000B2BF0, &qword_10007AF30);
  v31 = a4 + *(result + 36);
  *v31 = v27;
  *(v31 + 8) = v29;
  *(v31 + 16) = 1;
  return result;
}

uint64_t sub_10005F300@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = type metadata accessor for Prominence();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001B4A4(&qword_1000B3CE8, &qword_100079728);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = sub_10001B4A4(&qword_1000B49B0, &qword_10007AEE8);
  v52 = *(v14 - 8);
  __chkstk_darwin(v14);
  v49 = &v42 - v15;
  v16 = sub_10001B4A4(&qword_1000B49B8, &qword_10007AEF0);
  v53 = *(v16 - 8);
  __chkstk_darwin(v16);
  v51 = &v42 - v17;
  v18 = *a1;
  if ([v18 isYourTips])
  {
    v19 = *(v53 + 56);

    return v19(a4, 1, 1, v16);
  }

  else
  {
    v43 = v16;
    v21 = [v18 title];
    v47 = a3;
    v48 = a4;
    v45 = v14;
    v46 = a2;
    v44 = v11;
    if (v21 || (v21 = [v18 text]) != 0)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v54 = v23;
    v55 = v25;
    sub_1000235B4();
    v26 = Text.init<A>(_:)();
    v28 = v27;
    v54 = v26;
    v55 = v27;
    v30 = v29 & 1;
    v56 = v29 & 1;
    v57 = v31;
    v32 = v50;
    (*(v8 + 104))(v10, enum case for Prominence.increased(_:), v50);
    View.headerProminence(_:)();
    (*(v8 + 8))(v10, v32);
    sub_100023608(v26, v28, v30);

    KeyPath = swift_getKeyPath();
    v34 = &v13[*(v44 + 36)];
    *v34 = KeyPath;
    *(v34 + 1) = 0;
    v34[16] = 1;
    __chkstk_darwin(KeyPath);
    v36 = v46;
    v35 = v47;
    *(&v42 - 4) = v18;
    *(&v42 - 3) = v36;
    *(&v42 - 2) = v35;
    sub_10001B4A4(&qword_1000B4940, &unk_10007ADD0);
    sub_1000419B8();
    sub_100060914();
    v37 = v49;
    Section<>.init(header:content:)();
    v38 = v51;
    v39 = v45;
    Section<>.collapsible(_:)();
    (*(v52 + 8))(v37, v39);
    v40 = v48;
    v41 = v43;
    (*(v53 + 32))(v48, v38, v43);
    return (*(v53 + 56))(v40, 0, 1, v41);
  }
}

uint64_t sub_10005F7FC(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 collections];
  sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a3;
  sub_10001B4A4(&qword_1000B3468, &qword_10007AF20);
  sub_10001B4A4(&qword_1000B49C0, &qword_10007AF28);
  sub_10001E8B8(&qword_1000B49C8, &qword_1000B3468, &qword_10007AF20, &protocol conformance descriptor for [A]);
  type metadata accessor for CollectionListItemView(255);
  sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView, &unk_100079B98);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10005F9D4@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for CollectionListItemView(0);
  __chkstk_darwin(v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  *v7 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
  swift_storeEnumTagMultiPayload();
  v9 = v5[5];
  *(v7 + v9) = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v10 = (v7 + v5[6]);
  type metadata accessor for CollectionListViewModel(0);
  sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel, &unk_100078420);
  v11 = a2;
  v12 = v8;
  *v10 = ObservedObject.init(wrappedValue:)();
  v10[1] = v13;
  *(v7 + v5[8]) = v12;
  v14 = v12;
  v15 = [v14 identifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [v14 title];
  if (v19)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {

    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = (v7 + v5[7]);
  *v23 = v16;
  v23[1] = v18;
  v23[2] = v20;
  v23[3] = v22;
  v24 = [v14 identifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = v32;
  sub_100060D7C(v7, v32, type metadata accessor for CollectionListItemView);
  result = sub_10001B4A4(&qword_1000B2BF0, &qword_10007AF30);
  v30 = v28 + *(result + 36);
  *v30 = v25;
  *(v30 + 8) = v27;
  *(v30 + 16) = 1;
  return result;
}

uint64_t sub_10005FC5C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a2;
  sub_10001B4A4(&qword_1000B3488, &qword_10007AE70);
  sub_10001B4A4(&qword_1000B49A0, &qword_10007AE78);
  sub_10001E8B8(&qword_1000B49A8, &qword_1000B3488, &qword_10007AE70, &protocol conformance descriptor for [A]);
  type metadata accessor for UserGuideListItemView(255);
  sub_10006055C(&qword_1000B4998, type metadata accessor for UserGuideListItemView, &unk_10007B5F8);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10005FE38@<X0>(void **a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UserGuideListItemView(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  *v9 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B3D30, &qword_1000797B0);
  swift_storeEnumTagMultiPayload();
  *(v9 + v7[7]) = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v11 = (v9 + v7[8]);
  type metadata accessor for CollectionListViewModel(0);
  sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel, &unk_100078420);
  v12 = a2;
  v13 = v10;
  *v11 = ObservedObject.init(wrappedValue:)();
  v11[1] = v14;
  *(v9 + v7[9]) = v13;
  v15 = UserGuide.identifier.getter();
  v17 = v16;
  sub_100060D7C(v9, a3, type metadata accessor for UserGuideListItemView);
  result = sub_10001B4A4(&qword_1000B2BF8, &qword_100077860);
  v19 = a3 + *(result + 36);
  *v19 = v15;
  *(v19 + 8) = v17;
  *(v19 + 16) = 1;
  return result;
}

uint64_t sub_100060004@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for CollectionListViewModel(0);
  sub_10006055C(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel, &unk_100078420);
  v4 = a1;
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0xD000000000000011;
  *(a2 + 24) = 0x800000010008CCF0;
  *(a2 + 32) = 1;
  return result;
}

uint64_t sub_1000600B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000600FC()
{
  result = qword_1000B4880;
  if (!qword_1000B4880)
  {
    sub_10001E860(&qword_1000B4878, &unk_10007AB50);
    sub_10001E8B8(&qword_1000B4888, &qword_1000B4890, qword_10007AB60, &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4880);
  }

  return result;
}

unint64_t sub_1000601B4()
{
  result = qword_1000B4898;
  if (!qword_1000B4898)
  {
    sub_10001E860(&qword_1000B3390, &unk_100077F30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4898);
  }

  return result;
}

unint64_t sub_100060230()
{
  result = qword_1000B48A0;
  if (!qword_1000B48A0)
  {
    sub_10001E860(&qword_1000B4858, &qword_10007AAD8);
    sub_10001E860(&qword_1000B4868, &qword_10007AAE8);
    type metadata accessor for SidebarListStyle();
    sub_10001E860(&qword_1000B4878, &unk_10007AB50);
    sub_10001E860(&qword_1000B3390, &unk_100077F30);
    sub_1000600FC();
    sub_1000601B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3C48, &qword_1000B3C50, qword_1000795E8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48A0);
  }

  return result;
}

unint64_t sub_1000603BC()
{
  result = qword_1000B48B8;
  if (!qword_1000B48B8)
  {
    sub_10001E860(&qword_1000B48B0, &qword_10007ABB0);
    sub_100060474();
    sub_10001E8B8(&qword_1000B3728, &qword_1000B3708, &qword_100078CC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48B8);
  }

  return result;
}

unint64_t sub_100060474()
{
  result = qword_1000B48C0;
  if (!qword_1000B48C0)
  {
    sub_10001E860(&qword_1000B48C8, &qword_10007ABB8);
    sub_10001E8B8(&qword_1000B48D0, &qword_1000B48D8, &unk_10007ABC0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48C0);
  }

  return result;
}

double sub_100060544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10006055C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000605D8(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t sub_1000606E8(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B48E0, &qword_10007ACD8);
  __chkstk_darwin(v2 - 8);
  sub_10006077C(a1, &v5 - v3);
  return EnvironmentValues.textCase.setter();
}

uint64_t sub_10006077C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B48E0, &qword_10007ACD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100060814()
{
  result = qword_1000B4938;
  if (!qword_1000B4938)
  {
    sub_10001E860(&qword_1000B4928, &unk_10007ADC0);
    sub_10001E860(&qword_1000B3CE8, &qword_100079728);
    sub_10001E860(&qword_1000B4940, &unk_10007ADD0);
    sub_1000419B8();
    sub_100060914();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4938);
  }

  return result;
}

unint64_t sub_100060914()
{
  result = qword_1000B4948;
  if (!qword_1000B4948)
  {
    sub_10001E860(&qword_1000B4940, &unk_10007ADD0);
    type metadata accessor for CollectionListItemView(255);
    sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView, &unk_100079B98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4948);
  }

  return result;
}

uint64_t sub_100060A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B48E8, &qword_10007ACE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100060A7C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100060AB0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100060B4C()
{
  result = qword_1000B4978;
  if (!qword_1000B4978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4978);
  }

  return result;
}

unint64_t sub_100060BA8()
{
  result = qword_1000B4990;
  if (!qword_1000B4990)
  {
    sub_10001E860(&qword_1000B4988, &qword_10007AE38);
    type metadata accessor for UserGuideListItemView(255);
    sub_10006055C(&qword_1000B4998, type metadata accessor for UserGuideListItemView, &unk_10007B5F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4990);
  }

  return result;
}

uint64_t sub_100060CA0@<X0>(uint64_t *a1@<X8>)
{
  result = UserGuide.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_100060D10(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = String._bridgeToObjectiveC()();
  [v2 setIdentifier:v3];
}

uint64_t sub_100060D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100060DF8()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100060E4C()
{
  result = qword_1000B49E8;
  if (!qword_1000B49E8)
  {
    sub_10001E860(&qword_1000B49D8, &qword_10007AFA8);
    sub_100060EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49E8);
  }

  return result;
}

unint64_t sub_100060EDC()
{
  result = qword_1000B49F0;
  if (!qword_1000B49F0)
  {
    sub_10001E860(&qword_1000B49F8, &qword_10007B020);
    sub_100060F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49F0);
  }

  return result;
}

unint64_t sub_100060F60()
{
  result = qword_1000B4A00;
  if (!qword_1000B4A00)
  {
    sub_10001E860(&qword_1000B4A08, &qword_10007B028);
    sub_10001E860(&qword_1000B2BE0, qword_10007B030);
    sub_1000610A4();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for CollectionListItemView(255);
    sub_10006055C(&qword_1000B4950, type metadata accessor for CollectionListItemView, &unk_100079B98);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A00);
  }

  return result;
}

unint64_t sub_1000610A4()
{
  result = qword_1000B4A10;
  if (!qword_1000B4A10)
  {
    sub_10001E860(&qword_1000B2BE0, qword_10007B030);
    sub_10006055C(&qword_1000B4A18, type metadata accessor for FeaturedCollectionView, &unk_100077C98);
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A10);
  }

  return result;
}

unint64_t sub_1000611A0()
{
  result = qword_1000B4A20;
  if (!qword_1000B4A20)
  {
    sub_10001AC14(255, &qword_1000B2EC8, TPSCollection_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A20);
  }

  return result;
}

uint64_t sub_100061208(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B2BE0, qword_10007B030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006127C()
{
  result = qword_1000B4A38;
  if (!qword_1000B4A38)
  {
    sub_10001E860(&unk_1000B4A40, &qword_10007B078);
    sub_10001E8B8(&qword_1000B4848, &qword_1000B4840, &qword_10007AAC8, &protocol conformance descriptor for ScrollViewReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A38);
  }

  return result;
}

void *TPSLastDisplayedContent.tipId.getter()
{
  v1 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TPSLastDisplayedContent.tipId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TPSLastDisplayedContent.collectionId.getter()
{
  v1 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100061630(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void TPSLastDisplayedContent.collectionId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id TPSLastDisplayedContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSLastDisplayedContent.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___TPSLastDisplayedContent_tipId] = 0;
  *&v0[OBJC_IVAR___TPSLastDisplayedContent_collectionId] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id TPSLastDisplayedContent.__allocating_init(collectionId:tipId:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  *&v5[OBJC_IVAR___TPSLastDisplayedContent_tipId] = 0;
  v7 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  *&v5[OBJC_IVAR___TPSLastDisplayedContent_collectionId] = 0;
  swift_beginAccess();
  *&v5[v7] = a1;
  swift_beginAccess();
  *&v5[v6] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, "init");
}

id TPSLastDisplayedContent.init(collectionId:tipId:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  *&v2[OBJC_IVAR___TPSLastDisplayedContent_tipId] = 0;
  v7 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  *&v2[OBJC_IVAR___TPSLastDisplayedContent_collectionId] = 0;
  swift_beginAccess();
  *&v2[v7] = a1;
  swift_beginAccess();
  *&v2[v6] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

Swift::Bool __swiftcall TPSLastDisplayedContent.hasContent()()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 isRunningTest];

  if (v2)
  {
    return 0;
  }

  v4 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 1;
  }

  v5 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  return *(v0 + v5) != 0;
}

uint64_t TPSLastDisplayedContent.description.getter()
{
  v1 = v0;
  v22 = 40;
  v23 = 0xE100000000000000;
  v2 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    _StringGuts.grow(_:)(16);

    strcpy(&v21, "collectionId: ");
    HIBYTE(v21._object) = -18;
    v5 = [v4 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    String.append(_:)(v21);
  }

  v10 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x203A6449706974;
    v18._object = 0xE700000000000000;
    String.append(_:)(v18);
  }

  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  return v22;
}

id TPSLastDisplayedContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall TPSLastDisplayedContent.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = String._bridgeToObjectiveC()();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = String._bridgeToObjectiveC()();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id TPSLastDisplayedContent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id TPSLastDisplayedContent.init(coder:)(void *a1)
{
  v2 = v1;
  sub_10006205C();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    v6 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v6)
    {
      v7 = v6;
      v8 = [v2 initWithCollectionId:v5 tipId:v6];

      return v8;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_10006205C()
{
  result = qword_1000B4B20;
  if (!qword_1000B4B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B4B20);
  }

  return result;
}

unint64_t sub_1000620FC()
{
  result = qword_1000B4C30;
  if (!qword_1000B4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C30);
  }

  return result;
}

uint64_t sub_100062150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100062208;

  return sub_100064870(a2, a3);
}

uint64_t sub_100062208(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_10006231C()
{
  result = qword_1000B4C38;
  if (!qword_1000B4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C38);
  }

  return result;
}

unint64_t sub_100062374()
{
  result = qword_1000B4C40;
  if (!qword_1000B4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C40);
  }

  return result;
}

uint64_t sub_1000623D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100065274;

  return sub_100064D80(a1);
}

uint64_t sub_100062478(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100065260;

  return sub_1000643A4();
}

uint64_t sub_10006251C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000625DC;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000625DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000626E0()
{
  result = qword_1000B4C50;
  if (!qword_1000B4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C50);
  }

  return result;
}

unint64_t sub_100062738()
{
  result = qword_1000B4C58;
  if (!qword_1000B4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C58);
  }

  return result;
}

unint64_t sub_100062790()
{
  result = qword_1000B4C60;
  if (!qword_1000B4C60)
  {
    sub_10001E860(&qword_1000B4C68, qword_10007B160);
    sub_100062738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C60);
  }

  return result;
}

uint64_t sub_100062814(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000620FC();
  *v5 = v2;
  v5[1] = sub_100059088;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000628C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100059088;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100062988()
{
  result = qword_1000B4C70;
  if (!qword_1000B4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C70);
  }

  return result;
}

unint64_t sub_1000629E0()
{
  result = qword_1000B4C78;
  if (!qword_1000B4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C78);
  }

  return result;
}

unint64_t sub_100062A38()
{
  result = qword_1000B4C80;
  if (!qword_1000B4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C80);
  }

  return result;
}

uint64_t sub_100062A98()
{
  v0 = sub_10001B4A4(&unk_1000B4D80, &qword_10007A9C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10005B184(v10, qword_1000B6F18);
  sub_1000421A4(v10, qword_1000B6F18);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100062D74@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a4@<X8>)
{
  v45 = a1;
  v50 = a4;
  v4 = sub_10001B4A4(&qword_1000B4D78, &unk_10007B4B0);
  v5 = __chkstk_darwin(v4 - 8);
  v51 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v41 - v7;
  v9 = sub_10001B4A4(&unk_1000B4D80, &qword_10007A9C0);
  v10 = __chkstk_darwin(v9 - 8);
  v49 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v41 - v13;
  __chkstk_darwin(v12);
  v16 = v41 - v15;
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v47 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v41 - v21;

  v48 = v22;
  LocalizedStringResource.init(stringLiteral:)();
  v46 = v18;
  v43 = *(v18 + 56);
  v43(v16, 1, 1, v17);
  v23 = type metadata accessor for DisplayRepresentation.Image();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v44 = v24 + 56;
  v25(v8, 1, 1, v23);
  v26 = [objc_opt_self() sharedInstance];
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 collectionForIdentifier:v27];

  if (v28)
  {
    v45 = v25;
    v42 = v14;
    v29 = v51;
    v30 = [v28 tocAssets];
    if (v30 && (v31 = v30, v32 = [v30 symbolId], v31, v32))
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41[0] = v34;
      v41[1] = v33;

      v35 = [v28 text];
      if (v35)
      {
        v36 = v35;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v37 = v42;
      LocalizedStringResource.init(stringLiteral:)();
      sub_10001F870(v16, &unk_1000B4D80, &qword_10007A9C0);
      v43(v37, 0, 1, v17);
      sub_100023628(v37, v16, &unk_1000B4D80, &qword_10007A9C0);
      DisplayRepresentation.Image.init(systemName:isTemplate:)();

      sub_10001F870(v8, &qword_1000B4D78, &unk_10007B4B0);
      v45(v29, 0, 1, v23);
      sub_100023628(v29, v8, &qword_1000B4D78, &unk_10007B4B0);
    }

    else
    {
    }
  }

  v38 = v46;
  v39 = v48;
  (*(v46 + 16))(v47, v48, v17);
  sub_10001F808(v16, v49, &unk_1000B4D80, &qword_10007A9C0);
  sub_10001F808(v8, v51, &qword_1000B4D78, &unk_10007B4B0);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_10001F870(v8, &qword_1000B4D78, &unk_10007B4B0);
  sub_10001F870(v16, &unk_1000B4D80, &qword_10007A9C0);
  return (*(v38 + 8))(v39, v17);
}

uint64_t sub_100063290@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_1000632A0()
{
  result = qword_1000B4C88;
  if (!qword_1000B4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C88);
  }

  return result;
}

unint64_t sub_1000632F8()
{
  result = qword_1000B4C90;
  if (!qword_1000B4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C90);
  }

  return result;
}

unint64_t sub_100063350()
{
  result = qword_1000B4C98;
  if (!qword_1000B4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C98);
  }

  return result;
}

uint64_t sub_1000633A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B2B60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000421A4(v2, qword_1000B6F18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100063450()
{
  result = qword_1000B4CA0;
  if (!qword_1000B4CA0)
  {
    sub_10001E860(&qword_1000B4CA8, &qword_10007B368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4CA0);
  }

  return result;
}

uint64_t sub_1000634B4(uint64_t a1)
{
  v2 = sub_100022F14();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100063504()
{
  result = qword_1000B4CB0;
  if (!qword_1000B4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4CB0);
  }

  return result;
}

uint64_t sub_100063564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10005978C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100063628(uint64_t a1)
{
  v2 = sub_100063350();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100063674()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100063710, v3, v2);
}

uint64_t sub_100063710()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC4Tips14ContentFetcher_appController);
  if ([v1 contentHasLoaded])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[2];
    [v1 addDelegate:v4];
    v0[7] = static MainActor.shared.getter();
    v5 = swift_task_alloc();
    v0[8] = v5;
    *(v5 + 16) = v4;
    v6 = swift_task_alloc();
    v0[9] = v6;
    *v6 = v0;
    v6[1] = sub_100063888;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_100063888()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1000639E8, v3, v2);
}

uint64_t sub_1000639E8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100063A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipsLog();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001B4A4(&qword_1000B4D70, &qword_10007B4A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_10001B4A4(&qword_1000B4D68, &qword_10007B450);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = OBJC_IVAR____TtC4Tips14ContentFetcher_continuation;
  swift_beginAccess();
  sub_10006432C(v10, a2 + v13);
  swift_endAccess();
  v14 = *(a2 + OBJC_IVAR____TtC4Tips14ContentFetcher_appController);
  LODWORD(v13) = [v14 updatingContent];
  static TipsLog.default.getter();
  v15 = (v5 + 8);
  logDebug(_:_:)();
  if (v13)
  {
    return (*v15)(v7, v4);
  }

  (*v15)(v7, v4);
  return [v14 updateContent];
}

id sub_100063CC0(void *a1, char a2)
{
  v21 = a1;
  v4 = sub_10001B4A4(&qword_1000B4D68, &qword_10007B450);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_10001B4A4(&qword_1000B4D70, &qword_10007B4A8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TipsLog();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    static TipsLog.default.getter();
    logDebug(_:_:)();
    (*(v15 + 8))(v18, v14);
    v19 = OBJC_IVAR____TtC4Tips14ContentFetcher_continuation;
    swift_beginAccess();
    sub_10001F808(v2 + v19, v13, &qword_1000B4D70, &qword_10007B4A8);
    if ((*(v5 + 48))(v13, 1, v4))
    {
      sub_10001F870(v13, &qword_1000B4D70, &qword_10007B4A8);
    }

    else
    {
      (*(v5 + 16))(v7, v13, v4);
      sub_10001F870(v13, &qword_1000B4D70, &qword_10007B4A8);
      CheckedContinuation.resume(returning:)();
      (*(v5 + 8))(v7, v4);
    }

    (*(v5 + 56))(v11, 1, 1, v4);
    swift_beginAccess();
    sub_10006432C(v11, v2 + v19);
    swift_endAccess();
    return [v21 removeDelegate:v2];
  }

  return result;
}

id sub_100064098()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentFetcher(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ContentFetcher(uint64_t a1)
{
  result = qword_1000B4D50;
  if (!qword_1000B4D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100064174(uint64_t a1)
{
  sub_100064214(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100064214(uint64_t a1)
{
  if (!qword_1000B4D60)
  {
    sub_10001E860(&qword_1000B4D68, &qword_10007B450);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B4D60);
    }
  }
}

__n128 sub_100064278(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100064284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000642CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10006432C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B4D70, &qword_10007B4A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000643C0()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[2].receiver = v1;
  v2 = type metadata accessor for ContentFetcher(0);
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC4Tips14ContentFetcher_continuation;
  v5 = sub_10001B4A4(&qword_1000B4D68, &qword_10007B450);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *&v3[OBJC_IVAR____TtC4Tips14ContentFetcher_appController] = v1;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v6 = v1;
  v0[2].super_class = objc_msgSendSuper2(v0 + 1, "init");
  v7 = swift_task_alloc();
  v0[3].receiver = v7;
  *v7 = v0;
  v7[1] = sub_10006451C;

  return sub_100063674();
}

uint64_t sub_10006451C()
{

  return _swift_task_switch(sub_100064618, 0, 0);
}

char *sub_100064618()
{
  v1 = [*(v0 + 32) tipCollections];
  if (v1)
  {
    v2 = v1;
    sub_1000203F4();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }

LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_18:
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);

    goto LABEL_19;
  }

  v3 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_17;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
  result = sub_100028B44(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v3;
  v27 = v0;
  v8 = v4;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v7 + 8 * v6 + 32);
    }

    v10 = v9;
    v11 = [v9 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = [v10 featuredTitle];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {

      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v21 = _swiftEmptyArrayStorage[2];
    v20 = _swiftEmptyArrayStorage[3];
    if (v21 >= v20 >> 1)
    {
      sub_100028B44((v20 > 1), v21 + 1, 1);
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v21 + 1;
    v22 = &_swiftEmptyArrayStorage[4 * v21];
    v22[4] = v12;
    v22[5] = v14;
    v22[6] = v17;
    v22[7] = v19;
    v7 = v3;
  }

  while (v8 != v6);
  v0 = v27;
  v23 = *(v27 + 32);

LABEL_19:
  v26 = *(v0 + 8);

  return v26(_swiftEmptyArrayStorage);
}

uint64_t sub_100064870(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for TipsLog();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v2;
  v4[1] = sub_100064970;

  return sub_1000643A4();
}

uint64_t sub_100064970(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100064AC0, 0, 0);
  }
}

void sub_100064AC0()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v26 = -v2;
    v4 = v1 + 56;
    v25 = _swiftEmptyArrayStorage;
    do
    {
      v5 = (v4 + 32 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = v0[6];
        v6 = v0[7];
        v8 = *(v5 - 3);
        v9 = *(v5 - 2);
        v11 = *(v5 - 1);
        v10 = *v5;
        v0[2] = v11;
        v0[3] = v10;
        v0[4] = v7;
        v0[5] = v6;
        sub_1000235B4();

        if (StringProtocol.localizedCaseInsensitiveContains<A>(_:)())
        {
          break;
        }

        ++v3;
        v5 += 4;
        if (v26 + v3 == 1)
        {
          goto LABEL_15;
        }
      }

      v12 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100028B44(0, v25[2] + 1, 1);
        v12 = v25;
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        sub_100028B44((v13 > 1), v14 + 1, 1);
        v12 = v25;
      }

      v12[2] = v14 + 1;
      v25 = v12;
      v15 = &v12[4 * v14];
      v15[4] = v8;
      v15[5] = v9;
      v15[6] = v11;
      v15[7] = v10;
      v4 = v1 + 56;
    }

    while (v26 + v3);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  v16 = v0[9];
  v17 = v0[10];
  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[6];

  static TipsLog.default.getter();
  _StringGuts.grow(_:)(49);

  v21._countAndFlagsBits = v20;
  v21._object = v19;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x7275746572202D20;
  v22._object = 0xED000020676E696ELL;
  String.append(_:)(v22);
  v23._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v23);

  log(_:_:)();

  (*(v16 + 8))(v17, v18);

  v24 = v0[1];

  v24(v25);
}

uint64_t sub_100064D80(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for TipsLog();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100064E40, 0, 0);
}

char *sub_100064E40(void *a1)
{
  v2 = 0;
  v3 = *(v1 + 16);
  v4 = v3 + 40;
  v5 = *(v3 + 16);
  v41 = v3 + 40;
LABEL_2:
  v6 = v4 + 16 * v2;
  while (v5 != v2)
  {
    if (v2 >= v5)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_25;
    }

    v8 = objc_opt_self();

    v9 = [v8 sharedInstance];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 collectionForIdentifier:v10];

    v6 += 16;
    ++v2;
    if (v11)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      a1 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v7;
      v4 = v41;
      goto LABEL_2;
    }
  }

  a1 = _swiftEmptyArrayStorage;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_12;
  }

LABEL_26:
  v32 = a1;
  v12 = _CocoaArrayWrapper.endIndex.getter();
  a1 = v32;
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_12:
  v13 = a1;
  result = sub_100028B44(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
    return result;
  }

  v15 = 0;
  v16 = v13;
  v42 = v13 & 0xC000000000000001;
  v17 = v12;
  do
  {
    if (v42)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = v16[v15 + 4];
    }

    v19 = v18;
    v20 = [v18 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = [v19 featuredTitle];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;
    }

    else
    {

      v26 = 0;
      v28 = 0xE000000000000000;
    }

    v30 = _swiftEmptyArrayStorage[2];
    v29 = _swiftEmptyArrayStorage[3];
    if (v30 >= v29 >> 1)
    {
      sub_100028B44((v29 > 1), v30 + 1, 1);
    }

    ++v15;
    _swiftEmptyArrayStorage[2] = v30 + 1;
    v31 = &_swiftEmptyArrayStorage[4 * v30];
    v31[4] = v21;
    v31[5] = v23;
    v31[6] = v26;
    v31[7] = v28;
    v16 = _swiftEmptyArrayStorage;
  }

  while (v17 != v15);
LABEL_27:

  v34 = v40[4];
  v33 = v40[5];
  v35 = v40[3];
  static TipsLog.default.getter();
  _StringGuts.grow(_:)(49);

  v36._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0x7275746572202D20;
  v37._object = 0xED000020676E696ELL;
  String.append(_:)(v37);
  v38._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v38);

  log(_:_:)();

  (*(v34 + 8))(v33, v35);

  v39 = v40[1];

  return v39(_swiftEmptyArrayStorage);
}

uint64_t sub_100065278(uint64_t a1)
{
  v42 = sub_10001B4A4(&qword_1000B4DB8, &qword_10007B5A0);
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = &v33 - v2;
  v4 = sub_10001B4A4(&qword_1000B4DC0, &qword_10007B5A8);
  __chkstk_darwin(v4);
  sub_10004E77C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20656D20776F6853;
  v5._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v6 = sub_100062738();
  v41 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x7370697420;
  v7._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v43 = *(v44 + 8);
  v44 += 8;
  v8 = v42;
  v43(v3, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000011;
  v9._object = 0x800000010008D010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v43(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000010;
  v11._object = 0x800000010008D030;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v40 = v6;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v43(v3, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x800000010008D050;
  v13._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v43;
  v43(v3, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x7069742077656956;
  v16._object = 0xEE0020726F662073;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15(v3, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x2077656956;
  v18._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x7370697420;
  v19._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v42;
  v43(v3, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._object = 0x800000010008D070;
  v21._countAndFlagsBits = 0xD000000000000013;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v43;
  v43(v3, v20);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x49206F6420776F48;
  v24._object = 0xED00002065737520;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 63;
  v25._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23(v3, v20);
  sub_10001B4A4(&qword_1000B4DC8, &unk_10007B5B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10007B4E0;
  v28 = v38;
  *(v27 + 32) = v39;
  *(v27 + 40) = v28;
  v29 = v36;
  *(v27 + 48) = v37;
  *(v27 + 56) = v29;
  v30 = v34;
  *(v27 + 64) = v35;
  *(v27 + 72) = v30;
  *(v27 + 80) = v33;
  *(v27 + 88) = v26;
  v31 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v31;
}

uint64_t sub_100065AE4(void *a1)
{

  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_100065B34()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100062738();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10004E77C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10001B4A4(&qword_1000B4DA8, &qword_10007B590);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077E80;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100065CA4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10001B4A4(&qword_1000B4DB0, &qword_10007B598);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10007B4F0;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_100065E44()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_10005AB4C();
  sub_10004E77C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v4 = static _AssistantIntent.Builder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10001B4A4(&qword_1000B4DA0, &qword_10007B560);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100077E80;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v6;
}

double sub_100065FC8@<D0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

id sub_1000660B8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Tips28TPSSharingActivityItemSource_assetsConfiguration);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = [v4 cacheIdentifierForType:a1];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() imageFromMemoryCacheForIdentifier:v5];

    result = v7;
    if (v7)
    {
      return result;
    }
  }

  else
  {
  }

  result = [v4 identifierForType:a1];
  if (result)
  {
    v9 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v10 getImageForIdentifier:v11];

    return v12;
  }

  return result;
}

id sub_1000662C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TPSSharingActivityItemSource();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100066364(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC4Tips28TPSSharingActivityItemSource_tip] = a1;
  v3 = a1;
  v4 = [v3 assetFileInfoManager];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for TPSUIAppController();
    v6 = static TPSUIAppController.shared.getter();
    v7 = [v3 fullContentAssets];
    v8 = [v3 language];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = [objc_opt_self() currentTraitCollection];
    [v9 userInterfaceStyle];

    v10 = dispatch thunk of TPSUIAppController.assetConfiguration(assets:language:sizeClass:style:assetFileInfoManager:)();
  }

  else
  {
    v10 = 0;
  }

  *&v2[OBJC_IVAR____TtC4Tips28TPSSharingActivityItemSource_assetsConfiguration] = v10;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for TPSSharingActivityItemSource();
  return objc_msgSendSuper2(&v12, "init");
}

id sub_1000664C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = [objc_allocWithZone(ISIcon) initWithBundleIdentifier:v1];

    v3 = [objc_allocWithZone(ISImageDescriptor) init];
    v4 = [v2 imageForDescriptor:v3];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 CGImage];
      if (v6)
      {
        v7 = v6;
        v8 = [objc_allocWithZone(UIImage) initWithCGImage:v6];

        return v8;
      }
    }
  }

  return 0;
}

id sub_100066620()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_1000664C8();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(LPLinkMetadata) init];
  v33 = [objc_allocWithZone(NSItemProvider) initWithObject:v9];
  [v10 setIconProvider:?];
  v11 = sub_1000660B8(0);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(NSItemProvider) initWithObject:v11];
    [v10 setImageProvider:v13];
  }

  v14 = *(v0 + OBJC_IVAR____TtC4Tips28TPSSharingActivityItemSource_tip);
  v15 = [v14 title];
  [v10 setTitle:v15];

  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v34 = 0xD00000000000001ELL;
  v35 = 0x800000010008C2A0;
  v16 = [v14 variantID];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  URL.init(string:)();

  v22 = 0;
  if ((*(v2 + 48))(v7, 1, v1) != 1)
  {
    URL._bridgeToObjectiveC()(v21);
    v22 = v23;
    (*(v2 + 8))(v7, v1);
  }

  [v10 setURL:v22];

  v24 = [v14 bodyText];
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v30 = [v14 bodyContent];
    if (!v30)
    {
      goto LABEL_9;
    }

    v31 = v30;
    v25 = [objc_opt_self() altTextRepresentationForContent:v30];

    if (!v25)
    {
      goto LABEL_9;
    }
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  (*(v2 + 8))(v4, v1);
  [v10 setOriginalURL:v28];

LABEL_9:
  return v10;
}

uint64_t sub_100066A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B4A4(&qword_1000B3FE8, &unk_100079B70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100066B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001B4A4(&qword_1000B3FE8, &unk_100079B70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for UserGuideListItemView(uint64_t a1)
{
  result = qword_1000B4E60;
  if (!qword_1000B4E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100066CBC(uint64_t a1)
{
  sub_100048F3C(319, &unk_1000B4058, &type metadata accessor for ContentSizeCategory);
  if (v1 <= 0x3F)
  {
    sub_100048F3C(319, &qword_1000B2F40, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_10002076C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UserGuide();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100066DC4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_100066E44(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  return sub_10002DE48();
}

uint64_t sub_100066EC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001B4A4(&qword_1000B4EA0, &qword_10007B648);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_10001B4A4(&qword_1000B4EA8, &qword_10007B650);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_10001B4A4(&qword_1000B4EB0, &qword_10007B658);
  __chkstk_darwin(v15 - 8);
  v27 = &v26 - v16;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v17 = sub_10001B4A4(&qword_1000B4EB8, qword_10007B660);
  sub_1000672FC(v2, &v10[*(v17 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v18 = sub_10001E8B8(&qword_1000B4EC0, &qword_1000B4EA0, &qword_10007B648, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v29);
  sub_10001F870(v10, &qword_1000B4EA0, &qword_10007B648);
  v19 = v28;
  static AccessibilityTraits.isButton.getter();
  v33 = v8;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v27;
  View.accessibilityAddTraits(_:)();
  (*(v30 + 8))(v19, v31);
  (*(v12 + 8))(v14, v11);
  type metadata accessor for UserGuideListItemView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = v33;
  if (v33)
  {
    v22 = 0x4030000000000000;
  }

  else
  {
    v22 = 0;
  }

  v23 = v32;
  sub_100067A08(v20, v32);
  result = sub_10001B4A4(&qword_1000B4EC8, &qword_10007B6C0);
  v25 = v23 + *(result + 36);
  *v25 = 0;
  *(v25 + 8) = v22;
  *(v25 + 16) = 0;
  *(v25 + 24) = v22;
  *(v25 + 32) = v21 ^ 1;
  return result;
}

uint64_t sub_1000672FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v62 = sub_10001B4A4(&qword_1000B4ED0, &qword_10007B6C8);
  __chkstk_darwin(v62);
  v4 = &v61 - v3;
  v5 = sub_10001B4A4(&qword_1000B4ED8, &qword_10007B6D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v61 - v6;
  v8 = sub_10001B4A4(&qword_1000B4EE0, &qword_10007B6D8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v61 - v10;
  v12 = sub_10001B4A4(&qword_1000B4EE8, &unk_10007B6E0);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v68 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v61 - v16;
  v17 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  __chkstk_darwin(v17 - 8);
  v19 = &v61 - v18;
  v61 = *(a1 + *(type metadata accessor for UserGuideListItemView(0) + 28));
  UserGuide.symbol.getter();
  v20 = Image.init(_internalSystemName:)();
  v66 = v20;
  v21 = type metadata accessor for Font.Design();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  v22 = static Font.system(size:weight:design:)();
  v64 = v22;
  sub_10001F870(v19, &qword_1000B3030, &qword_100077D50);
  KeyPath = swift_getKeyPath();
  v87[0] = v20;
  v87[1] = KeyPath;
  v87[2] = v22;
  sub_100067A78(v87, v4);
  sub_100067F5C();
  View.accessibilityHidden(_:)();
  sub_10001F870(v4, &qword_1000B4ED0, &qword_10007B6C8);
  LOBYTE(v20) = static Edge.Set.leading.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_100023628(v7, v11, &qword_1000B4ED8, &qword_10007B6D0);
  v31 = &v11[*(v9 + 44)];
  *v31 = v20;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = v63;
  sub_100023628(v11, v63, &qword_1000B4EE0, &qword_10007B6D8);
  v33 = (v32 + *(v13 + 44));
  v34 = v89;
  *v33 = v88;
  v33[1] = v34;
  v33[2] = v90;
  v75 = UserGuide.text.getter();
  v76 = v35;
  sub_1000235B4();
  v36 = Text.init<A>(_:)();
  v38 = v37;
  LOBYTE(v9) = v39;
  static Color.primary.getter();
  v40 = Text.foregroundColor(_:)();
  v42 = v41;
  LOBYTE(a1) = v43;
  v45 = v44;

  sub_100023608(v36, v38, v9 & 1);

  LOBYTE(v36) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  LOBYTE(v75) = a1 & 1;
  LOBYTE(v71) = 0;
  v54 = v68;
  sub_100023628(v32, v68, &qword_1000B4EE8, &unk_10007B6E0);
  v55 = v54;
  v56 = v67;
  sub_10001F808(v55, v67, &qword_1000B4EE8, &unk_10007B6E0);
  v57 = (v56 + *(sub_10001B4A4(&qword_1000B4F08, &unk_10007B730) + 48));
  *&v71 = v40;
  *(&v71 + 1) = v42;
  LOBYTE(v72) = a1 & 1;
  *(&v72 + 1) = *v70;
  DWORD1(v72) = *&v70[3];
  *(&v72 + 1) = v45;
  LOBYTE(v73) = v36;
  *(&v73 + 1) = *v69;
  DWORD1(v73) = *&v69[3];
  *(&v73 + 1) = v47;
  *&v74[0] = v49;
  *(&v74[0] + 1) = v51;
  *&v74[1] = v53;
  BYTE8(v74[1]) = 0;
  sub_10001F808(&v71, &v75, &qword_1000B3A30, &unk_100079258);

  v58 = v74[0];
  v57[2] = v73;
  v57[3] = v58;
  *(v57 + 57) = *(v74 + 9);
  v59 = v72;
  *v57 = v71;
  v57[1] = v59;
  v75 = v40;
  v76 = v42;
  v77 = a1 & 1;
  *v78 = *v70;
  *&v78[3] = *&v70[3];
  v79 = v45;
  v80 = v36;
  *&v81[3] = *&v69[3];
  *v81 = *v69;
  v82 = v47;
  v83 = v49;
  v84 = v51;
  v85 = v53;
  v86 = 0;
  sub_10001F870(&v75, &qword_1000B3A30, &unk_100079258);
  return sub_10001F870(v68, &qword_1000B4EE8, &unk_10007B6E0);
}

uint64_t sub_100067A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B4EB0, &qword_10007B658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067A78@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v20 = sub_10001B4A4(&qword_1000B4F10, &qword_10007B740);
  __chkstk_darwin(v20);
  v5 = (&v19 - v4);
  v6 = sub_10001B4A4(&qword_1000B39F8, &qword_100079228);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  type metadata accessor for UserGuideListItemView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v22 == 1)
  {
    v10 = UserGuide.gradient.getter();
    __chkstk_darwin(v10);
    *(&v19 - 2) = a2;
    static UnitPoint.topTrailing.getter();
    static UnitPoint.bottomLeading.getter();
    sub_10001B4A4(&qword_1000B3A08, &unk_100079238);
    sub_10003B910();
    TipGradientView.init(_:startPoint:endPoint:gradientView:)();
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B41C0, &qword_100079D90);
    sub_10001E8B8(&qword_1000B3A18, &qword_1000B39F8, &qword_100079228, &protocol conformance descriptor for TipGradientView<A>);
    sub_10004B904();
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[2];
    v15 = objc_opt_self();

    v16 = [v15 systemBlueColor];
    v17 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    *v5 = v12;
    v5[1] = v13;
    v5[2] = v14;
    v5[3] = KeyPath;
    v5[4] = v17;
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B41C0, &qword_100079D90);
    sub_10001E8B8(&qword_1000B3A18, &qword_1000B39F8, &qword_100079228, &protocol conformance descriptor for TipGradientView<A>);
    sub_10004B904();
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_100067E60@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;

  return result;
}

uint64_t sub_100067EAC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100067ED8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100067F5C()
{
  result = qword_1000B4EF0;
  if (!qword_1000B4EF0)
  {
    sub_10001E860(&qword_1000B4ED0, &qword_10007B6C8);
    sub_100067FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EF0);
  }

  return result;
}

unint64_t sub_100067FE0()
{
  result = qword_1000B4EF8;
  if (!qword_1000B4EF8)
  {
    sub_10001E860(&qword_1000B4F00, &unk_10007B720);
    sub_10001E8B8(&qword_1000B3A18, &qword_1000B39F8, &qword_100079228, &protocol conformance descriptor for TipGradientView<A>);
    sub_10004B904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4EF8);
  }

  return result;
}

uint64_t sub_100068098@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000680C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100068154()
{
  result = qword_1000B4F18;
  if (!qword_1000B4F18)
  {
    sub_10001E860(&qword_1000B4EC8, &qword_10007B6C0);
    sub_10006820C();
    sub_10001E8B8(&qword_1000B3950, &qword_1000B3958, &qword_1000790A0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4F18);
  }

  return result;
}

unint64_t sub_10006820C()
{
  result = qword_1000B4F20;
  if (!qword_1000B4F20)
  {
    sub_10001E860(&qword_1000B4EB0, &qword_10007B658);
    sub_10001E860(&qword_1000B4EA0, &qword_10007B648);
    sub_10001E8B8(&qword_1000B4EC0, &qword_1000B4EA0, &qword_10007B648, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10004ACB4(&qword_1000B3A48, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4F20);
  }

  return result;
}

uint64_t sub_100068338()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_10005B184(v0, qword_1000B4F28);
  sub_1000421A4(v0, qword_1000B4F28);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_10006839C()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_10005B184(v0, qword_1000B4F40);
  sub_1000421A4(v0, qword_1000B4F40);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_100068400()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_10005B184(v0, qword_1000B4F58);
  sub_1000421A4(v0, qword_1000B4F58);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_100068464()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_10005B184(v0, qword_1000B4F70);
  sub_1000421A4(v0, qword_1000B4F70);
  return PPTTestCase.Name.init(_:)();
}

uint64_t sub_1000684C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v38 = a2;
  v3 = type metadata accessor for ScrollVerticallyTestSupport(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10001B4A4(&qword_1000B5028, &qword_10007B810);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v29 - v7;
  v9 = sub_10001B4A4(&qword_1000B5030, &qword_10007B818);
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v32 = &v29 - v10;
  v11 = sub_10001B4A4(&qword_1000B5038, &qword_10007B820);
  v36 = *(v11 - 8);
  v37 = v11;
  __chkstk_darwin(v11);
  v39 = &v29 - v12;
  if (qword_1000B2B68 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for PPTTestCase.Name();
  sub_1000421A4(v40, qword_1000B4F28);
  sub_1000694DC(v2, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + 80);
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  v29 = v5;
  sub_100069544(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = sub_10001B4A4(&qword_1000B5040, &qword_10007B828);
  v17 = sub_10001E8B8(&qword_1000B5048, &qword_1000B5040, &qword_10007B828, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.onTest(_:handler:)();

  if (qword_1000B2B70 != -1)
  {
    swift_once();
  }

  sub_1000421A4(v40, qword_1000B4F40);
  sub_1000694DC(v2, v6);
  v18 = swift_allocObject();
  sub_100069544(v6, v18 + v14);
  v41 = v16;
  v42 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v13;
  v21 = v32;
  v20 = v33;
  View.onTest(_:handler:)();

  (*(v31 + 8))(v8, v20);
  if (qword_1000B2B78 != -1)
  {
    swift_once();
  }

  sub_1000421A4(v40, qword_1000B4F58);
  sub_1000694DC(v2, v6);
  v22 = swift_allocObject();
  sub_100069544(v6, v22 + v14);
  v41 = v20;
  v42 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v35;
  View.onTest(_:handler:)();

  (*(v34 + 8))(v21, v24);
  if (qword_1000B2B80 != -1)
  {
    swift_once();
  }

  sub_1000421A4(v40, qword_1000B4F70);
  sub_1000694DC(v2, v6);
  v25 = swift_allocObject();
  sub_100069544(v6, v25 + v14);
  v41 = v24;
  v42 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v37;
  v27 = v39;
  View.onTest(_:handler:)();

  return (*(v36 + 8))(v27, v26);
}

uint64_t sub_100068B10(uint64_t a1)
{
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ScrollVerticallyTestSupport(0);
  v30 = *(v5 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v5 - 8);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PPTTestCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v34 = v11;
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v32 = &v29 - v16;
  PPTTestCase.startTest()();
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v33 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v12 + 8);
  v17(v15, v11);
  (*(v8 + 16))(v10, a1, v7);
  v18 = v29;
  sub_1000694DC(v35, v29);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = (v9 + *(v30 + 80) + v19) & ~*(v30 + 80);
  v21 = swift_allocObject();
  (*(v8 + 32))(v21 + v19, v10, v7);
  sub_100069544(v18, v21 + v20);
  aBlock[4] = sub_100069834;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A45E8;
  v22 = _Block_copy(aBlock);

  v23 = v36;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100047AD0();
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40, &protocol conformance descriptor for [A]);
  v25 = v37;
  v24 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v32;
  v26 = v33;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v41 + 8))(v25, v24);
  (*(v39 + 8))(v23, v40);
  return (v17)(v27, v34);
}

uint64_t sub_10006907C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = *(v5 + *a4);
  sub_10001AC14(0, &qword_1000B2DA8, UIViewController_ptr);
  v6 = v10;
  sub_10001B4A4(&qword_1000B4F88, &qword_10007B788);
  if (swift_dynamicCast())
  {
    sub_1000692EC(v8, v11);
    sub_10001F8D0(v11, v11[3]);
    dispatch thunk of PPTTestHost.runTest(_:options:)();
    return sub_10001F914(v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_100069284(v8);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000691C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a1;
  sub_10006907C(v9, v11, v12, a5, a6);
}

uint64_t sub_100069284(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B4F90, &unk_10007B790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000692EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100069318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollViewProxy();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100069398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollViewProxy();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ScrollVerticallyTestSupport(uint64_t a1)
{
  result = qword_1000B4FF0;
  if (!qword_1000B4FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100069454(uint64_t a1)
{
  result = type metadata accessor for ScrollViewProxy();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000694DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollVerticallyTestSupport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrollVerticallyTestSupport(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000695AC()
{
  v1 = *(type metadata accessor for ScrollVerticallyTestSupport(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for ScrollViewProxy();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000696DC()
{
  v1 = type metadata accessor for PPTTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for ScrollVerticallyTestSupport(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = type metadata accessor for ScrollViewProxy();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100069834()
{
  type metadata accessor for PPTTestCase();
  type metadata accessor for ScrollVerticallyTestSupport(0);
  return PPTTestCase.performScrollTest(_:)();
}

double sub_1000698F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10006990C()
{
  sub_10001E860(&qword_1000B5038, &qword_10007B820);
  sub_10001E860(&qword_1000B5030, &qword_10007B818);
  sub_10001E860(&qword_1000B5028, &qword_10007B810);
  sub_10001E860(&qword_1000B5040, &qword_10007B828);
  sub_10001E8B8(&qword_1000B5048, &qword_1000B5040, &qword_10007B828, &protocol conformance descriptor for _ViewModifier_Content<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_100069A78()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000B5050 = result;
  return result;
}

uint64_t sub_100069AD0()
{
  v0 = type metadata accessor for ImageResource();
  sub_10005B184(v0, qword_1000B6F30);
  sub_1000421A4(v0, qword_1000B6F30);
  if (qword_1000B2B88 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B5050;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100069BAC(int a1, int a2, int a3, int a4)
{
  if (qword_1000B6E68 == -1)
  {
    if (qword_1000B6E70)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10006A2A8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000B6E70)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000B6E60 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10006A2C0();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000B6E50 < v11;
    if (dword_1000B6E50 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000B6E54 > a3)
      {
        return 1;
      }

      if (dword_1000B6E54 >= a3)
      {
        return dword_1000B6E58 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000B6E50 < a2;
  if (dword_1000B6E50 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100069D40(uint64_t result)
{
  v1 = qword_1000B6E70;
  if (qword_1000B6E70)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1000B6E70 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1000B6E50, &dword_1000B6E54, &dword_1000B6E58);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
    }
  }

  return result;
}

void sub_10006A0CC(void *a1, NSObject *a2)
{
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Set current tip to %@.", &v4, 0xCu);
}

void sub_10006A164(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100019DE0(&_mh_execute_header, a2, a3, "CoreSpotlight continuation with search term: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10006A1D0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100019DE0(&_mh_execute_header, a2, a3, "Handling user activity with searchableItem identifier: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10006A23C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100019DE0(&_mh_execute_header, a2, a3, "In-app search term: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}