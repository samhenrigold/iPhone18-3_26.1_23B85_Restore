uint64_t sub_1007C35B8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = SunriseSunsetViewModel.description.getter();
  v7 = v6;
  v8 = SunriseSunsetViewModel.timePeriodSymbols.getter();
  v9 = sub_1007C48B8(v15, v7, v8);
  v11 = v10;
  LOBYTE(v15) = v12;
  v30 = v13;

  KeyPath = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v14 = v15 & 1;
  v35[128] = v15 & 1;
  v35[120] = 0;
  LODWORD(v15) = static Edge.Set.horizontal.getter();
  v16 = v1 + *(type metadata accessor for SunriseSunsetComponentView(0) + 28);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v26 = v2;
    v18 = static Log.runtimeIssuesLog.getter();
    v27 = v15;
    v15 = v11;
    v19 = v18;
    os_log(_:dso:log:_:_:)();

    v11 = v15;
    LOBYTE(v15) = v27;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v17, 0);
    (*(v3 + 8))(v5, v26);
  }

  EdgeInsets.init(_all:)();
  v35[136] = 0;
  v34[0] = v9;
  v34[1] = v11;
  LOBYTE(v34[2]) = v14;
  v34[3] = v30;
  v34[4] = KeyPath;
  v34[5] = 1;
  LOBYTE(v34[6]) = 0;
  v34[7] = v28;
  v34[8] = 0x3FE0000000000000;
  LOBYTE(v34[9]) = v15;
  v34[10] = v20;
  v34[11] = v21;
  v34[12] = v22;
  v34[13] = v23;
  LOBYTE(v34[14]) = 0;
  v32 = SunriseSunsetViewModel.description.getter();
  v33 = v24;
  sub_10022C350(&qword_100CD8808, &qword_100A827A0);
  sub_1007C5184(&unk_100CD8810);
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();

  memcpy(v35, v34, 0x71uLL);
  return sub_10003FDA0(v35, &qword_100CD8808);
}

uint64_t sub_1007C38B0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CD8790, &qword_100A826C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_10022C350(&qword_100CD8798, &qword_100A826D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  *v14 = static VerticalAlignment.lastTextBaseline.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = sub_10022C350(&qword_100CD87A0, &qword_100A826D8);
  sub_1007C3AF0(&v14[*(v15 + 44)]);
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v16 = sub_10022C350(&qword_100CD87A8, &qword_100A826E0);
  sub_1007C3DD8(&v8[*(v16 + 44)]);
  sub_1000302D8(v14, v11, &qword_100CD8798, &qword_100A826D0);
  sub_1000302D8(v8, v5, &qword_100CD8790, &qword_100A826C8);
  sub_1000302D8(v11, a2, &qword_100CD8798, &qword_100A826D0);
  v17 = sub_10022C350(&qword_100CD87B0, &qword_100A826E8);
  sub_1000302D8(v5, a2 + *(v17 + 48), &qword_100CD8790, &qword_100A826C8);
  sub_10003FDA0(v8, &qword_100CD8790);
  sub_10003FDA0(v14, &qword_100CD8798);
  sub_10003FDA0(v5, &qword_100CD8790);
  return sub_10003FDA0(v11, &qword_100CD8798);
}

uint64_t sub_1007C3AF0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_10022C350(&qword_100CD8828, &qword_100A827B8);
  __chkstk_darwin(v1);
  v3 = &v26 - v2;
  v4 = sub_10022C350(&qword_100CD8830, &qword_100A827C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_10022C350(&qword_100CD8838, &qword_100A827C8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  sub_1007C2CF0(&v26 - v15);
  *&v16[*(v11 + 44)] = 257;
  v17 = SunriseSunsetViewModel.description.getter();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_1007C35B8(v3);
    *&v3[*(v1 + 36)] = 257;
    sub_10011C0F0(v3, v9, &qword_100CD8828, &qword_100A827B8);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_10001B350(v9, v21, 1, v1);
  sub_1000302D8(v16, v13, &qword_100CD8838, &qword_100A827C8);
  sub_1000302D8(v9, v6, &qword_100CD8830, &qword_100A827C0);
  v22 = v27;
  sub_1000302D8(v13, v27, &qword_100CD8838, &qword_100A827C8);
  v23 = sub_10022C350(&qword_100CD8840, &qword_100A827D0);
  sub_1000302D8(v6, v22 + *(v23 + 48), &qword_100CD8830, &qword_100A827C0);
  v24 = v22 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 0;
  sub_10003FDA0(v9, &qword_100CD8830);
  sub_10003FDA0(v16, &qword_100CD8838);
  sub_10003FDA0(v6, &qword_100CD8830);
  return sub_10003FDA0(v13, &qword_100CD8838);
}

uint64_t sub_1007C3DD8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_10022C350(&qword_100CD87B8, &qword_100A826F0);
  __chkstk_darwin(v1 - 8);
  v40 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v39 = &v39 - v4;
  v42 = sub_10022C350(&qword_100CD87C0, &qword_100A826F8);
  __chkstk_darwin(v42);
  v6 = &v39 - v5;
  v7 = sub_10022C350(&qword_100CD87C8, &qword_100A82700);
  __chkstk_darwin(v7 - 8);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v12 = sub_10022C350(&qword_100CD87D0, &qword_100A82708);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v18 = sub_10022C350(&qword_100CD87D8, &qword_100A82710);
  __chkstk_darwin(v18 - 8);
  v41 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v23 = 1;
  v22[16] = 1;
  v24 = &v22[*(sub_10022C350(&qword_100CD87E0, &qword_100A82718) + 44)];
  sub_1007C2CF0(v17);
  sub_1000302D8(v17, v14, &qword_100CD87D0, &qword_100A82708);
  sub_1000302D8(v14, v24, &qword_100CD87D0, &qword_100A82708);
  v25 = v24 + *(sub_10022C350(&qword_100CD87E8, &qword_100A82720) + 48);
  *v25 = 0;
  *(v25 + 8) = 0;
  sub_10003FDA0(v17, &qword_100CD87D0);
  sub_10003FDA0(v14, &qword_100CD87D0);
  v26 = SunriseSunsetViewModel.description.getter();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v30 = &v6[*(sub_10022C350(&qword_100CD87F0, &qword_100A82728) + 44)];
    v31 = v39;
    sub_1007C35B8(v39);
    v32 = v40;
    sub_1000302D8(v31, v40, &qword_100CD87B8, &qword_100A826F0);
    sub_1000302D8(v32, v30, &qword_100CD87B8, &qword_100A826F0);
    v33 = v30 + *(sub_10022C350(&qword_100CD87F8, &qword_100A82730) + 48);
    *v33 = 0;
    *(v33 + 8) = 0;
    sub_10003FDA0(v31, &qword_100CD87B8);
    sub_10003FDA0(v32, &qword_100CD87B8);
    sub_10011C0F0(v6, v11, &qword_100CD87C0, &qword_100A826F8);
    v23 = 0;
  }

  sub_10001B350(v11, v23, 1, v42);
  v34 = v41;
  sub_1000302D8(v22, v41, &qword_100CD87D8, &qword_100A82710);
  v35 = v43;
  sub_1000302D8(v11, v43, &qword_100CD87C8, &qword_100A82700);
  v36 = v44;
  sub_1000302D8(v34, v44, &qword_100CD87D8, &qword_100A82710);
  v37 = sub_10022C350(&qword_100CD8800, &qword_100A82738);
  sub_1000302D8(v35, v36 + *(v37 + 48), &qword_100CD87C8, &qword_100A82700);
  sub_10003FDA0(v11, &qword_100CD87C8);
  sub_10003FDA0(v22, &qword_100CD87D8);
  sub_10003FDA0(v35, &qword_100CD87C8);
  return sub_10003FDA0(v34, &qword_100CD87D8);
}

uint64_t sub_1007C42D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v4 = type metadata accessor for TypesettingLanguageAwareLineHeightRatio();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeStyle();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Font.Leading();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContentSizeCategory();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  v21 = type metadata accessor for SunriseSunsetComponentView(0);
  sub_10009ECC8();
  (*(v15 + 104))(v17, enum case for ContentSizeCategory.extraExtraLarge(_:), v14);
  v22 = sub_1005B51FC(v20, v17);
  v23 = *(v15 + 8);
  v23(v17, v14);
  v23(v20, v14);
  v24 = v3 + *(v21 + 28);
  v25 = *v24;
  v26 = *(v24 + 8);
  if (!v22)
  {
    if (v26)
    {
      if (v25)
      {
        goto LABEL_11;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v25, 0);
      (*(v39 + 8))(v13, v40);
      if (v53 == 1)
      {
        goto LABEL_11;
      }
    }

    static Font.largeTitle.getter();
    goto LABEL_13;
  }

  if (!v26)
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v25, 0);
    (*(v39 + 8))(v13, v40);
    if (v52 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    static Font.title2.getter();
    goto LABEL_13;
  }

  if (v25)
  {
    goto LABEL_11;
  }

LABEL_9:
  static Font.title.getter();
LABEL_13:
  v30 = v41;
  v29 = v42;
  (*(v41 + 104))(v10, enum case for Font.Leading.tight(_:), v42);
  Font.leading(_:)();

  (*(v30 + 8))(v10, v29);
  type metadata accessor for Style();

  v31 = v43;
  static Style.componentTime.getter();
  v32 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v34 = v33;
  LOBYTE(v30) = v35;

  (*(v44 + 8))(v31, v45);
  v36 = v49;
  static TypesettingLanguageAwareLineHeightRatio.disable.getter();
  v37 = Text.typesettingLanguageAwareLineHeightRatio(_:isEnabled:)();
  sub_10010CD64(v32, v34, v30 & 1);

  (*(v50 + 8))(v36, v51);
  return v37;
}

uint64_t sub_1007C48B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v4 = type metadata accessor for TimeStyle();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Font.Leading();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContentSizeCategory();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = type metadata accessor for SunriseSunsetComponentView(0);
  sub_10009ECC8();
  (*(v13 + 104))(v15, enum case for ContentSizeCategory.extraExtraLarge(_:), v12);
  v20 = sub_1005B51FC(v18, v15);
  v21 = *(v13 + 8);
  v21(v15, v12);
  v21(v18, v12);
  v22 = v3 + *(v19 + 28);
  v23 = *v22;
  v24 = *(v22 + 8);
  if (!v20)
  {
    if (v24)
    {
      if (v23)
      {
        goto LABEL_11;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v23, 0);
      (*(v32 + 8))(v11, v33);
      if (v43 == 1)
      {
        goto LABEL_11;
      }
    }

    static Font.subheadline.getter();
    goto LABEL_13;
  }

  if (!v24)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v23, 0);
    (*(v32 + 8))(v11, v33);
    if (v42 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    static Font.footnote.getter();
    goto LABEL_13;
  }

  if (v23)
  {
    goto LABEL_11;
  }

LABEL_9:
  static Font.caption2.getter();
LABEL_13:
  v28 = v34;
  v27 = v35;
  (*(v34 + 104))(v8, enum case for Font.Leading.tight(_:), v35);
  Font.leading(_:)();

  (*(v28 + 8))(v8, v27);
  type metadata accessor for Style();

  v29 = v36;
  static Style.componentTime.getter();
  v30 = TimeStyle.formatTime(_:periodSymbols:font:)();

  (*(v40 + 8))(v29, v41);
  return v30;
}

unint64_t sub_1007C4DE8()
{
  result = qword_100CD8760;
  if (!qword_100CD8760)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CD8768, &unk_100A826B0);
    v4[2] = sub_10022E824(&qword_100CD8730, &qword_100A82668);
    v4[3] = sub_1005F6F6C(&unk_100CD8750);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1007C5414(&qword_100CE1750);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD8760);
  }

  return result;
}

unint64_t sub_1007C4F14(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    sub_10022E824(v6, v7);
    v8 = v5();
    v16 = sub_1007C5414(&qword_100CA3F68);
    result = sub_100004AE0(v16, v9, v10, v11, v12, v13, v14, v15, v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1007C4FA4()
{
  result = qword_100CD8778;
  if (!qword_100CD8778)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CD8718, &qword_100A82650);
    v4[2] = sub_10022E824(&qword_100CD8708, &qword_100A82640);
    v4[3] = sub_1005F6F6C(&unk_100CD8780);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1007C5414(&qword_100CE1750);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD8778);
  }

  return result;
}

uint64_t sub_1007C50D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1007C512C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1007C5184(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    sub_10022E824(v6, v7);
    v8 = v5();
    result = sub_100004AE0(v8, v9, v10, v11, v12, v13, v14, v15, v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1007C51E4()
{
  result = qword_100CD8880;
  if (!qword_100CD8880)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD8860, &qword_100A827F0);
    v4[0] = sub_1007C5270();
    v4[1] = &protocol witness table for _AspectRatioLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD8880);
  }

  return result;
}

unint64_t sub_1007C5270()
{
  result = qword_100CD8888;
  if (!qword_100CD8888)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD8858, &qword_100A827E8);
    v4[0] = sub_1007C532C();
    v4[1] = sub_1007C5414(&qword_100CE1750);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD8888);
  }

  return result;
}

unint64_t sub_1007C532C()
{
  result = qword_100CD8890;
  if (!qword_100CD8890)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD8898, &qword_100A82810);
    v4[0] = sub_1007C5414(&unk_100CD88A0);
    v4[1] = sub_1005F6F6C(&unk_100CD88A8);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD8890);
  }

  return result;
}

unint64_t sub_1007C5414(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1007C5458()
{
  result = qword_100CD88C0;
  if (!qword_100CD88C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD88C8, &qword_100A82858);
    v4[0] = sub_1007C4F14(&unk_100CD8758);
    v4[1] = sub_1007C4F14(&unk_100CD8770);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD88C0);
  }

  return result;
}

uint64_t sub_1007C555C()
{
  v1 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  [v1 setFormatOptions:1907];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v3 = [v1 stringFromDate:isa];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_1007C5638()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1007C56C4;

  return Date.urlRepresentationParameter.getter();
}

uint64_t sub_1007C56C4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1007C57C8()
{
  if (*(v0 + 40))
  {
    sub_1007C581C();
  }

  swift_unknownObjectRelease();
  sub_10002B028(*(v0 + 64));
  return v0;
}

void sub_1007C581C()
{
  v1 = v0[2];
  if (v1)
  {
    prefs = v1;
    UnfairLock.lock()();
    v2 = v0[5];
    v0[5] = 0;

    v0[7] = 0;
    swift_unknownObjectRelease();
    SCPreferencesSetDispatchQueue(prefs, 0);
    SCPreferencesSetCallback(prefs, 0, 0);
    UnfairLock.unlock()();
  }
}

uint64_t sub_1007C58B8()
{
  sub_1007C57C8();

  return swift_deallocClassInstance();
}

void sub_1007C58EC(const __SCPreferences *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    sub_1000DCF3C(a1);
  }

  else
  {
    if (qword_100CA2748 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000703C(v4, qword_100D90C30);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Missing context", v6, 2u);
    }
  }
}

void sub_1007C5A14(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  sub_1007C58EC(v5, a2, a3);
}

NSString sub_1007C5A70()
{

  type metadata accessor for AirplaneModeMonitor();
  _print_unlocked<A, B>(_:_:)();

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_1007C5B30(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v90 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v84 = v8 - v7;
  sub_1000038CC();
  type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v82 = v10;
  v83 = v9;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v80 = v12 - v11;
  v13 = sub_1000038CC();
  v79[1] = type metadata accessor for WeatherData(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v81 = v16 - v15;
  v17 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v17 - 8);
  v19 = v79 - v18;
  v88 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003C38();
  v85 = v21 - v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  v86 = v79 - v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  v87 = v79 - v26;
  v27 = sub_1000038CC();
  State = type metadata accessor for VisibleLocationWeatherLoadState(v27);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = v31 - v30;
  v33 = type metadata accessor for Location.Identifier();
  sub_1000037E8();
  (*(v34 + 16))(v32, a1, v33);
  sub_10001B350(v32, 0, 1, v33);
  LODWORD(a1) = *(a1 + *(type metadata accessor for LocationViewModel(0) + 56));
  v35 = (v32 + State[6]);
  StatusLog = type metadata accessor for VisibleLocationWeatherLoadStatusLog(0);
  *v35 = 0u;
  v35[1] = 0u;
  Date.init()();
  v37 = v35 + StatusLog[9];
  *v37 = 0;
  v37[8] = 1;
  v38 = v35 + StatusLog[10];
  *v38 = 0;
  v38[8] = 1;
  Date.init()();
  *(v32 + State[5]) = _swiftEmptyArrayStorage;
  *(v32 + State[7]) = a1;
  v39 = v2 + OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState;
  sub_100017BD8(v2 + OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState, v91);
  sub_1007C6DC0(v32, v39);
  v40 = *(v90 + 24);
  v41 = v39 + State[6] + StatusLog[8];
  v79[0] = v4;
  v40(v41, v89, v4);
  v42 = swift_endAccess();
  if (a1 == 3)
  {
    v43 = v39 + State[6] + StatusLog[9];
    *v43 = 0;
    *(v43 + 8) = 0;
  }

  (*(v2 + 16))(v91, v42);
  v44 = *(v91[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v45 = Location.Identifier.id.getter();
  sub_1000864C0(v45, v46, v44);

  v47 = v88;
  if (sub_100024D10(v19, 1, v88) == 1)
  {
    return sub_1000180EC(v19, &qword_100CA37B0, &unk_100A2D740);
  }

  sub_100049CAC();
  v49 = v87;
  sub_10010714C(v19, v87, v50);
  sub_1000067D4();
  v51 = v86;
  sub_1007C6D08(v49, v86, v52);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v53 = *(v51 + 16);
    v54 = *(v51 + 24);

    sub_100017BD8(v39, v91);
    v55 = State[5];
    sub_10051A990();
    v56 = *(*(v39 + v55) + 16);
    sub_100278A30(v56);
    v57 = *(v39 + v55);
    *(v57 + 16) = v56 + 1;
    v58 = v57 + 16 * v56;
    *(v58 + 32) = v53;
    *(v58 + 40) = v54;
    *(v39 + v55) = v57;
    swift_endAccess();
    sub_10001F7F4();
    v60 = v49;
  }

  else
  {
    sub_10001F7F4();
    sub_1007C6D68(v51, v61);
    sub_1000067D4();
    v62 = v85;
    sub_1007C6D08(v49, v85, v63);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v64 = *(sub_10022C350(&qword_100CA75D8, &unk_100A32600) + 48);
      sub_100019F14();
      v65 = v81;
      sub_10010714C(v62, v81, v66);
      sub_100028B40();
      sub_1007C6D68(v62 + v47, v67);
      sub_10002322C();
      sub_1007C6D68(v62 + v64, v68);
      v69 = v80;
      WeatherDataModel.currentWeather.getter();
      v70 = v84;
      CurrentWeather.date.getter();
      (*(v82 + 8))(v69, v83);
      Date.distance(to:)();
      v72 = v71;
      (*(v90 + 8))(v70, v79[0]);
      sub_100008EE8();
      sub_1007C6D68(v65, v73);
      sub_10001F7F4();
      result = sub_1007C6D68(v49, v74);
      v75 = v39 + State[6];
      v76 = v75 + StatusLog[10];
      *v76 = v72;
      *(v76 + 8) = 0;
      v77 = v75 + StatusLog[9];
      *v77 = 0;
      *(v77 + 8) = 0;
      *(v39 + State[7]) = 3;
      return result;
    }

    sub_100016F10();
    sub_1007C6D68(v49, v78);
    v60 = v62;
    v59 = v51;
  }

  return sub_1007C6D68(v60, v59);
}

void sub_1007C6158(uint64_t a1, int a2)
{
  LODWORD(v105) = a2;
  v94 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v96 = v8 - v7;
  v9 = sub_1000038CC();
  v95 = type metadata accessor for WeatherData(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v97 = v12 - v11;
  v13 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v13 - 8);
  v103 = &v93 - v14;
  v15 = sub_1000038CC();
  v102 = type metadata accessor for LocationWeatherDataState(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_100003C38();
  v98 = v17 - v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  v100 = &v93 - v20;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v108 = v22;
  v109 = v21;
  __chkstk_darwin(v21);
  sub_100003C38();
  v99 = v23 - v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  v107 = &v93 - v26;
  sub_1000038CC();
  v27 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_1000037D8();
  v33 = v32 - v31;
  v34 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  v35 = v34 - 8;
  __chkstk_darwin(v34);
  v37 = &v93 - v36;
  v38 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v38 - 8);
  sub_100003C38();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  v44 = &v93 - v43;
  v101 = v2;
  v45 = v2 + OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState;
  swift_beginAccess();
  v46 = *(v29 + 16);
  v104 = a1;
  v46(v44, a1, v27);
  sub_10001B350(v44, 0, 1, v27);
  v47 = *(v35 + 56);
  v106 = v45;
  sub_1000952C4(v45, v37);
  sub_1000952C4(v44, &v37[v47]);
  sub_10000C814(v37);
  if (!v48)
  {
    sub_1000952C4(v37, v41);
    sub_10000C814(&v37[v47]);
    if (!v48)
    {
      (*(v29 + 32))(v33, &v37[v47], v27);
      sub_1000E8FAC();
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      v53 = *(v29 + 8);
      v53(v33, v27);
      sub_1000180EC(v44, &qword_100CADBA0, &qword_100A3D250);
      v53(v41, v27);
      sub_1000180EC(v37, &qword_100CADBA0, &qword_100A3D250);
      if ((v52 & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    sub_1000180EC(v44, &qword_100CADBA0, &qword_100A3D250);
    (*(v29 + 8))(v41, v27);
LABEL_9:
    v49 = &qword_100CADD58;
    v50 = &unk_100A3E650;
    v51 = v37;
LABEL_10:
    sub_1000180EC(v51, v49, v50);
    return;
  }

  sub_1000180EC(v44, &qword_100CADBA0, &qword_100A3D250);
  sub_10000C814(&v37[v47]);
  if (!v48)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v37, &qword_100CADBA0, &qword_100A3D250);
LABEL_12:
  v54 = v107;
  static Date.now.getter();
  v55 = v106;
  sub_100017BD8(v106, v110);
  sub_1004BD224(v54);
  State = type metadata accessor for VisibleLocationWeatherLoadState(0);
  v57 = v105;
  *(v55 + *(State + 28)) = v105;
  v58 = v57;
  v60 = v108;
  v59 = v109;
  (*(v108 + 24))(v55 + *(State + 32), v54, v109);
  swift_endAccess();
  if (v58 == 3)
  {
    v61 = v55 + *(State + 24);
    StatusLog = type metadata accessor for VisibleLocationWeatherLoadStatusLog(0);
    v63 = StatusLog;
    if (*(v61 + *(StatusLog + 36) + 8) == 1)
    {
      v64 = v61 + *(StatusLog + 32);
      v65 = v99;
      (*(v60 + 16))(v99, v64, v59);
      Date.distance(to:)();
      (*(v60 + 8))(v65, v59);
      sub_10003C7F4(*(State + 24));
    }

    v105 = v63;
    (*(v101 + 16))(v110);
    v66 = *(v110[0] + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

    v67 = Location.Identifier.id.getter();
    v68 = v103;
    sub_1000864C0(v67, v69, v66);

    if (sub_100024D10(v68, 1, v102) == 1)
    {
      v70 = sub_100069A50();
      v71(v70);
      v49 = &qword_100CA37B0;
      v50 = &unk_100A2D740;
      v51 = v68;
      goto LABEL_10;
    }

    sub_100049CAC();
    v72 = v100;
    sub_10010714C(v68, v100, v73);
    sub_1000067D4();
    v74 = v98;
    sub_1007C6D08(v72, v98, v75);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100016F10();
      sub_1007C6D68(v72, v86);
      v87 = sub_100069A50();
      v88(v87);
      sub_1007C6D68(v74, State);
      return;
    }

    v76 = *(sub_10022C350(&qword_100CA75D8, &unk_100A32600) + 48);
    sub_100019F14();
    v77 = v97;
    sub_10010714C(v74, v97, v78);
    sub_100028B40();
    sub_1007C6D68(v74 + v72, v79);
    sub_10002322C();
    sub_1007C6D68(v74 + v76, v80);
    if (*(v55 + *(State + 24) + *(v105 + 40) + 8) == 1)
    {
      v81 = v96;
      WeatherDataModel.currentWeather.getter();
      v82 = v99;
      CurrentWeather.date.getter();
      (*(v5 + 8))(v81, v94);
      Date.distance(to:)();
      v83 = *(v60 + 8);
      v83(v82, v59);
      sub_100008EE8();
      sub_1007C6D68(v77, v84);
      sub_10001F7F4();
      sub_1007C6D68(v100, v85);
      v83(v54, v59);
      sub_10003C7F4(*(State + 24));
      return;
    }

    sub_100008EE8();
    sub_1007C6D68(v77, v89);
    sub_10001F7F4();
    sub_1007C6D68(v100, v90);
  }

  v91 = sub_100069A50();
  v92(v91);
}

double sub_1007C69C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  State = type metadata accessor for VisibleLocationWeatherLoadState(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = v4 + OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState;
  swift_beginAccess();
  sub_100074FB8();
  sub_1007C6D08(v20, v19, v21);
  if (sub_100024D10(v19, 1, v8))
  {
    sub_100010B94();
    sub_1007C6D68(v19, v22);
    return result;
  }

  v34 = a4;
  (*(v10 + 16))(v14, v19, v8);
  sub_100010B94();
  sub_1007C6D68(v19, v24);
  v25 = Location.Identifier.id.getter();
  v27 = v26;
  (*(v10 + 8))(v14, v8);
  if (v25 == a1 && v27 == a2)
  {

    goto LABEL_10;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_10:
    sub_100017BD8(v20, v36);
    v30 = *(State + 20);
    sub_100538558(a3, v34);
    sub_10051A990();
    v31 = *(*(v20 + v30) + 16);
    sub_100278A30(v31);
    v32 = *(v20 + v30);
    *(v32 + 16) = v31 + 1;
    v33 = v32 + 16 * v31;
    *(v33 + 32) = a3;
    *(v33 + 40) = v34;
    *(v20 + v30) = v32;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1007C6C04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState;
  sub_100017BD8(v2 + OBJC_IVAR____TtC7Weather33VisibleLocationWeatherLoadMonitor_loadState, v8);
  sub_1004BD224(a1);
  swift_endAccess();
  sub_100074FB8();
  return sub_1007C6D08(v2 + v5, a2, v6);
}

uint64_t sub_1007C6C7C()
{

  sub_100010B94();
  sub_1007C6D68(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1007C6D08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1007C6D68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1007C6DC0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for VisibleLocationWeatherLoadState(0);
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t sub_1007C6E34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for LocationViewComponentContainerDescriptor(0, a1, a2, a3);
  v6 = sub_100588E2C(v5);
  if (v6)
  {
    sub_1001B3B30(v6 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, a4);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for LocationComponentContainerViewModel(0);

  return sub_10001B350(a4, v7, 1, v8);
}

uint64_t sub_1007C6EC4@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD8AA0, &qword_100A829F8);
  a1[4] = sub_1007C6FEC();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1007C6F58(uint64_t a1)
{
  sub_1007C7050();

  return ShortDescribable.description.getter();
}

unint64_t sub_1007C6F98()
{
  result = qword_100CD8A98;
  if (!qword_100CD8A98)
  {
    result = swift_getWitnessTable(a1_30, &type metadata for VFXTestViewAction, v0, v1);
    atomic_store(result, &qword_100CD8A98);
  }

  return result;
}

unint64_t sub_1007C6FEC()
{
  result = qword_100CD8AA8;
  if (!qword_100CD8AA8)
  {
    v3 = sub_10022E824(&qword_100CD8AA0, &qword_100A829F8);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD8AA8);
  }

  return result;
}

unint64_t sub_1007C7050()
{
  result = qword_100CD8AB0;
  if (!qword_100CD8AB0)
  {
    result = swift_getWitnessTable(byte_100A829C8, &type metadata for VFXTestViewAction, v0, v1);
    atomic_store(result, &qword_100CD8AB0);
  }

  return result;
}

uint64_t sub_1007C7134()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90B08);
  sub_100049CC4();
  return sub_100074FD0();
}

uint64_t sub_1007C7224()
{
  sub_100046E64();
  result = OS_os_log.init(subsystem:category:)();
  qword_100D90B98 = result;
  return result;
}

uint64_t sub_1007C7288()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90BB8);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007C72EC()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90BD0);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007C7350()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90C48);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007C7460()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90D08);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007C74E8()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90D98);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

_BYTE *storeEnumTagSinglePayload for LocationViewModel.ContentStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1007C7640(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44FE0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007C768C(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 0x7469577974706D65;
      break;
    case 2:
      result = 0x656E696C66666FLL;
      break;
    case 3:
      result = 0x6574616C75706F70;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1007C7734@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007C7640(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007C7764@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007C768C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1007C7794()
{
  v102 = type metadata accessor for LocationComponentViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v108 = v3 - v2;
  v4 = sub_1000038CC();
  v101 = type metadata accessor for LocationComponentContainerViewModel(v4);
  sub_1000037C4();
  v107 = v5;
  __chkstk_darwin(v6);
  v8 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v91 - v10;
  v12 = *(v0 + *(type metadata accessor for LocationViewModel(0) + 28));
  v94 = *(v12 + 16);
  if (v94)
  {
    v13 = 0;
    v93 = v12 + 32;
    v91[3] = 0x8000000100ABAF60;
    v91[2] = 0x8000000100ABAC40;
    v91[1] = 0x8000000100ABAF40;
    v91[0] = 0x8000000100ABACA0;
    v98 = xmmword_100A2C3F0;
    v97 = _swiftEmptyArrayStorage;
    v99 = v11;
    v100 = v8;
    v92 = v12;
    while (v13 < *(v12 + 16))
    {
      v96 = v13;
      v14 = (v93 + 24 * v13);
      v15 = *v14;
      v16 = *(*v14 + 16);
      if (v16)
      {
        v17 = v14[2];
        v110 = _swiftEmptyArrayStorage;

        v95 = v17;

        sub_1006A82F4(0, v16, 0);
        v18 = 0;
        v19 = v110;
        v20 = *(v107 + 80);
        v21 = (v20 + 32) & ~v20;
        v103 = v15 + v21;
        v104 = v20;
        v105 = v16;
        v106 = v15;
LABEL_6:
        if (v18 >= *(v15 + 16))
        {
          __break(1u);
          break;
        }

        v22 = v18 + 1;
        sub_1007C8640(v103 + *(v107 + 72) * v18, v11);
        sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
        v23 = swift_allocObject();
        *(v23 + 16) = v98;
        sub_1007C8640(v11, v23 + v21);
        v109 = _swiftEmptyArrayStorage;
        sub_10000369C(0, 1, 0);
        v24 = v109;
        sub_1007C8640(v23 + v21, v8);
        sub_100010BB4();
        sub_1007C8640(&v8[v25], v108);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_10001CD8C();
            sub_100141B3C(v8, v54);
            sub_10001F820();
            sub_100141B3C(v108, v55);
            v32 = 0x726F46796C696164;
            v35 = 1935762277;
            goto LABEL_20;
          case 2u:
            sub_10001CD8C();
            sub_100141B3C(v8, v45);
            sub_10001F820();
            sub_100141B3C(v108, v46);
            v31 = 0xE900000000000065;
            v32 = 0x6B694C736C656566;
            goto LABEL_33;
          case 3u:
            sub_10001CD8C();
            sub_100141B3C(v8, v49);
            sub_10001F820();
            sub_100141B3C(v108, v50);
            v32 = 0x6F46796C72756F68;
            v31 = 0xEE00747361636572;
            goto LABEL_33;
          case 4u:
            sub_10001F820();
            sub_100141B3C(v108, v38);
            sub_10001CD8C();
            sub_100141B3C(v8, v39);
            v31 = 0xE800000000000000;
            v32 = 0x79746964696D7568;
            goto LABEL_33;
          case 5u:
            sub_10001CD8C();
            sub_100141B3C(v8, v58);
            sub_10001F820();
            sub_100141B3C(v108, v59);
            v31 = 0xE300000000000000;
            v32 = 7364973;
            goto LABEL_33;
          case 6u:
            sub_10001CD8C();
            sub_100141B3C(v8, v62);
            sub_10001F820();
            sub_100141B3C(v108, v63);
            v31 = 0xE400000000000000;
            v32 = 1852796781;
            goto LABEL_33;
          case 7u:
            sub_10001CD8C();
            sub_100141B3C(v8, v51);
            sub_10001F820();
            sub_100141B3C(v108, v52);
            v32 = 0x697472417377656ELL;
            v53 = 6646883;
            goto LABEL_26;
          case 8u:
            sub_10001CD8C();
            sub_100141B3C(v8, v68);
            sub_10001F820();
            sub_100141B3C(v108, v69);
            v32 = 0xD000000000000015;
            v44 = &v111;
            goto LABEL_32;
          case 9u:
            sub_10001CD8C();
            sub_100141B3C(v8, v42);
            sub_10001F820();
            sub_100141B3C(v108, v43);
            v32 = 0xD000000000000012;
            v44 = &v112;
            goto LABEL_32;
          case 0xAu:
            sub_10001F820();
            sub_100141B3C(v108, v66);
            sub_10001CD8C();
            sub_100141B3C(v8, v67);
            v32 = 0xD000000000000012;
            v44 = &v113;
            goto LABEL_32;
          case 0xBu:
            sub_10001CD8C();
            sub_100141B3C(v8, v36);
            sub_10001F820();
            sub_100141B3C(v108, v37);
            v31 = 0xE800000000000000;
            v32 = 0x6572757373657270;
            goto LABEL_33;
          case 0xCu:
            sub_10001CD8C();
            sub_100141B3C(v8, v40);
            v32 = 0x655774726F706572;
            v41 = 0x7265687461;
            goto LABEL_21;
          case 0xDu:
            sub_10001CD8C();
            sub_100141B3C(v8, v60);
            sub_10001F820();
            sub_100141B3C(v108, v61);
            v32 = 0x6C41657265766573;
            v53 = 7631461;
LABEL_26:
            v31 = v53 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            goto LABEL_33;
          case 0xEu:
            sub_10001CD8C();
            sub_100141B3C(v8, v33);
            sub_10001F820();
            sub_100141B3C(v108, v34);
            v32 = 0x53657369726E7573;
            v35 = 1702063733;
LABEL_20:
            v41 = v35 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_21:
            v31 = v41 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            goto LABEL_33;
          case 0xFu:
            sub_10001F820();
            sub_100141B3C(v108, v47);
            sub_10001CD8C();
            sub_100141B3C(v8, v48);
            v31 = 0xE800000000000000;
            v32 = 0x7365676172657661;
            goto LABEL_33;
          case 0x10u:
            sub_10001CD8C();
            sub_100141B3C(v8, v29);
            sub_10001F820();
            sub_100141B3C(v108, v30);
            v31 = 0xE700000000000000;
            v32 = 0x7865646E497675;
            goto LABEL_33;
          case 0x11u:
            sub_10001F820();
            sub_100141B3C(v108, v56);
            sub_10001CD8C();
            sub_100141B3C(v8, v57);
            v28 = 0x696269736976;
            goto LABEL_23;
          case 0x12u:
            sub_10001CD8C();
            sub_100141B3C(v8, v64);
            sub_10001F820();
            sub_100141B3C(v108, v65);
            v31 = 0xE400000000000000;
            v32 = 1684957559;
            goto LABEL_33;
          case 0x13u:
            sub_10001CD8C();
            sub_100141B3C(v8, v70);
            v32 = 0xD00000000000001BLL;
            v44 = &v114;
LABEL_32:
            v31 = *(v44 - 32);
            goto LABEL_33;
          default:
            sub_10001CD8C();
            sub_100141B3C(v8, v26);
            sub_10001F820();
            sub_100141B3C(v108, v27);
            v28 = 0x617551726961;
LABEL_23:
            v32 = v28 & 0xFFFFFFFFFFFFLL | 0x696C000000000000;
            v31 = 0xEA00000000007974;
LABEL_33:
            v72 = v24[2];
            v71 = v24[3];
            if (v72 >= v71 >> 1)
            {
              sub_10000369C((v71 > 1), v72 + 1, 1);
              v24 = v109;
            }

            v24[2] = v72 + 1;
            v73 = &v24[2 * v72];
            v73[4] = v32;
            v73[5] = v31;
            v109 = v24;
            sub_10022C350(&qword_100CCC930, &qword_100A41810);
            sub_100006F64(&qword_100CB2D00, &qword_100CCC930, &qword_100A41810, &protocol conformance descriptor for [A]);
            v74 = BidirectionalCollection<>.joined(separator:)();
            v76 = v75;

            sub_10001CD8C();
            v11 = v99;
            sub_100141B3C(v99, v77);
            v110 = v19;
            v79 = v19[2];
            v78 = v19[3];
            if (v79 >= v78 >> 1)
            {
              sub_1006A82F4((v78 > 1), v79 + 1, 1);
              v19 = v110;
            }

            v19[2] = v79 + 1;
            v80 = &v19[3 * v79];
            v80[4] = v23;
            v80[5] = v74;
            v80[6] = v76;
            v18 = v22;
            v81 = v105 == v22;
            v8 = v100;
            v15 = v106;
            if (!v81)
            {
              goto LABEL_6;
            }

            break;
        }
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v82 = v19[2];
      v83 = v97[2];
      if (__OFADD__(v83, v82))
      {
        goto LABEL_56;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v97;
      if (!isUniquelyReferenced_nonNull_native || v83 + v82 > v97[3] >> 1)
      {
        sub_1001B4454();
        v85 = v86;
      }

      v87 = v19[2];
      v97 = v85;
      if (v87)
      {
        if ((v85[3] >> 1) - v85[2] < v82)
        {
          goto LABEL_58;
        }

        swift_arrayInitWithCopy();

        if (v82)
        {
          v88 = v97[2];
          v89 = __OFADD__(v88, v82);
          v90 = v88 + v82;
          if (v89)
          {
            goto LABEL_59;
          }

          v97[2] = v90;
        }
      }

      else
      {

        if (v82)
        {
          goto LABEL_57;
        }
      }

      v13 = v96 + 1;
      v12 = v92;
      if (v96 + 1 == v94)
      {
        return;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {
    v97 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1007C8094(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for LocationComponentViewModel(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(v10 + 16);
  if (v11 == 2)
  {
    v12 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      if (v12 >= v9)
      {
        type metadata accessor for LocationComponentContainerViewModel(0);
        sub_100003928();
        sub_100010BB4();
        v35 = v13;
        sub_1007C8640(v13 + v14, v8);
        v15 = sub_1001B3DAC();
        v17 = v16;
        sub_10001F820();
        sub_100141B3C(v8, v18);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100016F28();
        sub_100239B9C(0, 1, v9, v9 + 1, v15, v17, v19);

        *a1 = v36;
        if (*(v10 + 16) >= 2uLL)
        {
          sub_100010BB4();
          sub_1007C8640(v35 + v20, v8);
          v21 = sub_1001B3DAC();
          v23 = v22;
          sub_10001F820();
          sub_100141B3C(v8, v24);
          swift_isUniquelyReferenced_nonNull_native();
          sub_100016F28();
          sub_100239B9C(1, 2, v9, v12, v21, v23, v25);

          *a1 = v36;
          return result;
        }

        goto LABEL_14;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 == 1)
  {
    if (!__OFADD__(v9, 1))
    {
      if (v9 + 1 >= v9)
      {
        v27 = type metadata accessor for LocationComponentContainerViewModel(0);
        sub_100003810(v27);
        sub_100010BB4();
        sub_1007C8640(v29 + v28, v8);
        v30 = sub_1001B3DAC();
        v32 = v31;
        sub_10001F820();
        sub_100141B3C(v8, v33);
        swift_isUniquelyReferenced_nonNull_native();
        sub_100016F28();
        sub_100239B9C(0, 2, v9, v9 + 1, v30, v32, v34);

        *a1 = v36;
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007C83A0@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3BBA0;
  *(inited + 32) = 0x6E6F697461636F6CLL;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = Location.Identifier.id.getter();
  *(inited + 56) = v4;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x726564616568;
  *(inited + 88) = 0xE600000000000000;
  v5 = type metadata accessor for LocationViewModel(0);
  memcpy(__dst, (v1 + *(v5 + 24)), 0x9AuLL);
  *(inited + 120) = &type metadata for LocationHeaderViewModel;
  v6 = swift_allocObject();
  *(inited + 96) = v6;
  memcpy((v6 + 16), __dst, 0x9AuLL);
  *(inited + 128) = 1937207154;
  *(inited + 136) = 0xE400000000000000;
  v7 = *(v1 + *(v5 + 28));
  *(inited + 168) = sub_10022C350(&qword_100CD47E0, &qword_100A83D20);
  *(inited + 144) = v7;
  sub_100151784(__dst, &v9);

  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD8BF0, &unk_100A82B80);
  a1[4] = sub_100006F64(&qword_100CD8BF8, &qword_100CD8BF0, &unk_100A82B80, &protocol conformance descriptor for ShortDescription<A>);
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1007C858C(uint64_t a1)
{
  sub_100164738(&qword_100CD8C00, type metadata accessor for LocationViewModel, aQ_66);

  return ShortDescribable.description.getter();
}

uint64_t sub_1007C8640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1007C869C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = type metadata accessor for WeatherDescription();
  sub_1000037C4();
  v5 = v4;
  v44 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v45 = v8 - v7;
  v9 = type metadata accessor for UVIndex();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = type metadata accessor for UVIndexComponentViewModel(0);
  v17 = (v16 - 8);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = a1 + *(type metadata accessor for UVIndexComponent(0) + 20);
  CurrentWeather.uvIndex.getter();
  v22 = UVIndex.value.getter();
  (*(v11 + 8))(v15, v9);
  v23 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
  v24 = (v21 + *(v23 + 20));
  v25 = v24[1];
  v43 = *v24;
  (*(v5 + 16))(v45, v21, v46);
  v26 = (v21 + *(v23 + 24));
  v28 = *v26;
  v27 = v26[1];
  sub_100119F7C();

  v29 = static NSDateFormatter.prevailingPeriodSymbols.getter();
  *v20 = v22;
  *(v20 + 8) = fmin(v22 / 11.0, 1.0);
  *(v20 + 16) = v43;
  *(v20 + 24) = v25;
  (*(v44 + 32))(v20 + v17[9], v45, v46);
  v30 = (v20 + v17[10]);
  *v30 = v28;
  v30[1] = v27;
  *(v20 + v17[11]) = v29;
  v31 = [objc_opt_self() mainBundle];
  v47._object = 0x8000000100ADF050;
  v32._countAndFlagsBits = 0x7865646E49205655;
  v32._object = 0xE800000000000000;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD00000000000003ALL;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v47);

  *a2 = v34;
  strcpy((a2 + 16), "sun.max.fill");
  *(a2 + 29) = 0;
  *(a2 + 30) = -5120;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v35 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1007C8AD0(v20, a2 + v35[5]);
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v36 = a2 + v35[8];
  v37 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
  v38 = enum case for DetailCondition.uvIndex(_:);
  v39 = type metadata accessor for DetailCondition();
  (*(*(v39 - 8) + 104))(v36, v38, v39);
  *(v36 + v37) = 0;
  v40 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v36, 0, 1, v40);
  sub_10013D288();
  v41 = Dictionary.init(dictionaryLiteral:)();
  result = sub_1007C8B34(v20);
  *(a2 + v35[6]) = 256;
  *(a2 + v35[7]) = v41;
  return result;
}

uint64_t sub_1007C8AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UVIndexComponentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007C8B34(uint64_t a1)
{
  v2 = type metadata accessor for UVIndexComponentViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1007C8BB8(uint64_t a1)
{
  type metadata accessor for CurrentWeather();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel(319);
    if (v2 <= 0x3F)
    {
      sub_1000F432C(319);
      if (v3 <= 0x3F)
      {
        sub_1000F4460(319);
        if (v4 <= 0x3F)
        {
          sub_1007C8C94(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1007C8C94(uint64_t a1)
{
  if (!qword_100CB0C70)
  {
    type metadata accessor for WeatherChanges();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB0C70);
    }
  }
}

uint64_t sub_1007C8CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherChanges();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_10022C350(&qword_100CB0D10, &qword_100A82CA0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  if ((static CurrentWeather.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v18 = type metadata accessor for HourlyForecastComponent(0);
  if (!sub_100411C04(a1 + *(v18 + 20), a2 + *(v18 + 20)))
  {
    goto LABEL_13;
  }

  v31 = v10;
  v32 = v6;
  v33 = v4;
  type metadata accessor for HourWeather();
  v34 = v18;
  sub_1000F429C(&qword_100CB0C20, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
  sub_1000F429C(&qword_100CB0C28, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
  sub_1000F429C(&qword_100CB0C30, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
  if ((static Forecast.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for DayWeather();
  sub_1000F429C(&qword_100CB0C50, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  sub_1000F429C(&qword_100CB0C58, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  sub_1000F429C(&qword_100CB0C60, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
  if ((static Forecast.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = v34;
  v20 = *(v34 + 32);
  v21 = *(v14 + 48);
  sub_1007CA0B4(a1 + v20, v17);
  sub_1007CA0B4(a2 + v20, &v17[v21]);
  v22 = v33;
  if (sub_100024D10(v17, 1, v33) != 1)
  {
    sub_1007CA0B4(v17, v13);
    if (sub_100024D10(&v17[v21], 1, v22) != 1)
    {
      v24 = v31;
      v23 = v32;
      (*(v32 + 32))(v31, &v17[v21], v22);
      sub_10001F838();
      sub_1000F429C(v25, v26, &protocol conformance descriptor for WeatherChanges);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v23 + 8);
      v28(v24, v22);
      v28(v13, v22);
      sub_1000180EC(v17, &qword_100CACDF8, &unk_100A3E410);
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    (*(v32 + 8))(v13, v22);
LABEL_10:
    sub_1000180EC(v17, &qword_100CB0D10, &qword_100A82CA0);
    goto LABEL_13;
  }

  if (sub_100024D10(&v17[v21], 1, v22) != 1)
  {
    goto LABEL_10;
  }

  sub_1000180EC(v17, &qword_100CACDF8, &unk_100A3E410);
LABEL_12:
  if (*(a1 + *(v19 + 36)) == *(a2 + *(v19 + 36)))
  {
    v29 = *(a1 + *(v19 + 40)) ^ *(a2 + *(v19 + 40)) ^ 1;
    return v29 & 1;
  }

LABEL_13:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1007C918C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  sub_100003828();
  __chkstk_darwin(v3);
  v52 = &v50 - v4;
  v60 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  v58 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v53 = &v50 - v7;
  v61 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_1000037C4();
  v59 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  v54 = &v50 - v10;
  type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v62 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  sub_10022C350(&qword_100CD8D50, &qword_100A82CA8);
  sub_1000037C4();
  v55 = v21;
  v56 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v50 - v24;
  v63 = type metadata accessor for HourlyForecastComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = v28 - v27;
  v30 = a1[3];
  v65 = a1;
  sub_1000161C0(a1, v30);
  sub_1007CA124();
  v57 = v25;
  v31 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    return sub_100006F14(v65);
  }

  v72 = 0;
  sub_100008F1C();
  sub_1000F429C(v32, v33, &protocol conformance descriptor for CurrentWeather);
  v34 = v55;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v29;
  (*(v62 + 32))(v29, v20, v15);
  v71 = 1;
  sub_100014ED8();
  sub_1000F429C(v36, v37, byte_100A4B5A0);
  v38 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v63;
  sub_1007CA178(v14, v35 + *(v63 + 20));
  v70 = 2;
  sub_100008F34(&qword_100CD8D68, &qword_100CA7030, &qword_100A32000);
  v40 = v54;
  v41 = v61;
  sub_10002324C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v59 + 32))(v35 + v39[6], v40, v41);
  v69 = 3;
  sub_100008F34(&qword_100CD8D70, &qword_100CA7000, &unk_100A3E7F0);
  v42 = v53;
  v43 = v60;
  sub_10002324C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v58 + 32))(v35 + v39[7], v42, v43);
  type metadata accessor for WeatherChanges();
  v68 = 4;
  sub_10001F838();
  sub_1000F429C(v44, v45, &protocol conformance descriptor for WeatherChanges);
  v46 = v52;
  sub_10002324C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1007CA1DC(v46, v35 + v39[8]);
  v67 = 5;
  *(v35 + v39[9]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v66 = 6;
  LOBYTE(v43) = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = sub_100010BCC();
  v48(v47, v38);
  *(v35 + v39[10]) = v43 & 1;
  sub_1007CA24C(v35, v51);
  sub_100006F14(v65);
  return sub_1007CA2B0(v35, type metadata accessor for HourlyForecastComponent);
}

uint64_t sub_1007C9930(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x57746E6572727563 && a2 == 0xEE00726568746165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100AC8430 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F46796C72756F68 && a2 == 0xEE00747361636572;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F46796C696164 && a2 == 0xED00007473616365;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4372656874616577 && a2 == 0xEE007365676E6168;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F726548776F6873 && a2 == 0xEE00676E69727453;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E696C66664F7369 && a2 == 0xE900000000000065)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1007C9B98(char a1)
{
  result = 0x57746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6F46796C72756F68;
      break;
    case 3:
      result = 0x726F46796C696164;
      break;
    case 4:
      result = 0x4372656874616577;
      break;
    case 5:
      result = 0x6F726548776F6873;
      break;
    case 6:
      result = 0x6E696C66664F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1007C9CA8(void *a1)
{
  v3 = sub_10022C350(&qword_100CD8D80, &qword_100A82CB0);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  sub_1000161C0(a1, a1[3]);
  sub_1007CA124();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = 0;
  type metadata accessor for CurrentWeather();
  sub_100008F1C();
  sub_1000F429C(v9, v10, &protocol conformance descriptor for CurrentWeather);
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v11 = type metadata accessor for HourlyForecastComponent(0);
    v23 = 1;
    type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
    sub_100014ED8();
    sub_1000F429C(v12, v13, byte_100A4B578);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[1] = v11;
    v22 = 2;
    sub_10022C350(&qword_100CA7030, &qword_100A32000);
    sub_100004B14(&qword_100CD8D90);
    sub_100016834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v21 = 3;
    sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
    sub_100004B14(&qword_100CD8D98);
    sub_100016834();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = 4;
    type metadata accessor for WeatherChanges();
    sub_10001F838();
    sub_1000F429C(v14, v15, &protocol conformance descriptor for WeatherChanges);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = 5;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = 6;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1007C9FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007C9930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007CA008(uint64_t a1)
{
  v2 = sub_1007CA124();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007CA044(uint64_t a1)
{
  v2 = sub_1007CA124();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007CA0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007CA124()
{
  result = qword_100CD8D58;
  if (!qword_100CD8D58)
  {
    result = swift_getWitnessTable(aU_61, &type metadata for HourlyForecastComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD8D58);
  }

  return result;
}

uint64_t sub_1007CA178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007CA1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007CA24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyForecastComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007CA2B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for HourlyForecastComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1007CA3E8()
{
  result = qword_100CD8DA8;
  if (!qword_100CD8DA8)
  {
    result = swift_getWitnessTable(byte_100A82D54, &type metadata for HourlyForecastComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD8DA8);
  }

  return result;
}

unint64_t sub_1007CA440()
{
  result = qword_100CD8DB0;
  if (!qword_100CD8DB0)
  {
    result = swift_getWitnessTable(byte_100A82CC4, &type metadata for HourlyForecastComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD8DB0);
  }

  return result;
}

unint64_t sub_1007CA498()
{
  result = qword_100CD8DB8;
  if (!qword_100CD8DB8)
  {
    result = swift_getWitnessTable(byte_100A82CEC, &type metadata for HourlyForecastComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD8DB8);
  }

  return result;
}

double sub_1007CA508()
{
  v1 = type metadata accessor for AppConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((v0 + 16), *(v0 + 40));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.reverseGeocodingRefreshTimeInterval.getter();
  v6 = v5;
  (*(v2 + 8))(v4, v1);
  return v6;
}

double sub_1007CA604@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_100035AD0((v1 + 10), &v5, &qword_100CD8DC0, &qword_100A82DF8);
  if (*(&v6 + 1) == 1)
  {
    sub_1000180EC(&v5, &qword_100CD8DC0, &qword_100A82DF8);
    sub_1007CA6E4(v1, a1);
    sub_100035AD0(a1, &v5, &qword_100CD8E98, &qword_100A82EF8);
    swift_beginAccess();
    sub_1007CBF00(&v5, (v1 + 10));
    swift_endAccess();
  }

  else
  {
    result = *&v5;
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1007CA6E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = __chkstk_darwin(v4);
  (a1[15])(v9, v5);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Geocoding.clearGeocodingCacheOnNextLaunch.getter();
  SettingReader.read<A>(_:)();

  sub_1000161C0(v9, v9[3]);
  dispatch thunk of GeocodeStoreType.deleteAllLocations(satisfying:)();
  if (v8 == 1)
  {
    static Settings.Geocoding.clearGeocodingCacheOnNextLaunch.getter();
    sub_1007CBF74(&qword_100CD8EA0, v6, type metadata accessor for LocalSearchRequestManager, protocol conformance descriptor for LocalSearchRequestManager);
    Updatable.save<A>(setting:value:)();
  }

  sub_100035B30(v9, a2);
  return sub_100006F14(v9);
}

BOOL sub_1007CAA44()
{
  v0 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  Location.lastRefreshDate.getter();
  if (sub_100024D10(v2, 1, v3) == 1)
  {
    sub_1000180EC(v2, &unk_100CB2CF0, &unk_100A2D7F0);
    return 1;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    v11 = sub_1007CA508();
    static WeatherClock.date.getter();
    Date.timeIntervalSince(_:)();
    v13 = v12;
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
    return v11 <= v13;
  }
}

uint64_t LocalSearchRequestManager.__allocating_init(service:store:appConfigurationManager:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  LocalSearchRequestManager.init(service:store:appConfigurationManager:queue:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t LocalSearchRequestManager.init(service:store:appConfigurationManager:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_1000037C4();
  v19 = v11;
  v20 = v10;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v18 = v13 - v12;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  sub_1000037D8();
  type metadata accessor for PromiseDeduperFlags();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  sub_1007CBF74(&qword_100CA2E08, 255, &type metadata accessor for PromiseDeduperFlags, &protocol conformance descriptor for PromiseDeduperFlags);
  sub_10022C350(&qword_100CA2E10, &qword_100A82DF0);
  sub_100067638(&qword_100CA2E18, &qword_100CA2E10, &qword_100A82DF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10022C350(&qword_100CA2E20, &unk_100A2C550);
  swift_allocObject();
  *(v6 + 72) = PromiseDeduper.init(options:)();
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 104) = xmmword_100A2C400;
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 120) = a3;
  *(v6 + 128) = a4;
  sub_100035B30(a5, v6 + 16);
  if (!a6)
  {
    sub_100040690();
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    sub_1007CBF74(&qword_100CA2E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
    sub_100067638(&qword_100CA2E60, &qword_100CA2E58, &qword_100A2C5A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v19 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v20);
    a6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    swift_unknownObjectRelease();
  }

  sub_100006F14(a5);
  *(v6 + 136) = a6;
  return v6;
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;
  type metadata accessor for Location();

  v6 = firstly<A, B>(on:disposeOn:closure:)();

  return v6;
}

uint64_t sub_1007CB1CC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = type metadata accessor for Location();
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v27 = v25 - v15;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Geocoding.bypassGeocodingCache.getter();
  SettingReader.read<A>(_:)();

  if (v32[0])
  {
    goto LABEL_9;
  }

  v26 = v11;
  v29 = a2;
  sub_1007CA604(v32);
  if (!v33)
  {
    sub_1000180EC(v32, &qword_100CD8E98, &qword_100A82EF8);
    sub_10001B350(v10, 1, 1, v26);
    goto LABEL_8;
  }

  sub_100035B30(v32, v30);
  sub_1000180EC(v32, &qword_100CD8E98, &qword_100A82EF8);
  v25[1] = v7;
  sub_1000161C0(v30, v31);
  dispatch thunk of GeocodeStoreType.queryLocation(for:)();
  sub_100006F14(v30);
  v16 = v26;
  if (sub_100024D10(v10, 1, v26) == 1)
  {
LABEL_8:
    sub_1000180EC(v10, &qword_100CA65D8, &unk_100A3D9D0);
    a2 = v29;
    goto LABEL_9;
  }

  v17 = v27;
  v18 = v28;
  (*(v28 + 32))(v27, v10, v16);
  if (!sub_1007CAA44())
  {
    (*(v18 + 16))(v13, v17, v16);
    sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
    swift_allocObject();
    v23 = Promise.init(value:)();
    (*(v18 + 8))(v17, v16);
    return v23;
  }

  v19 = sub_1007CA604(v32);
  if (v33)
  {
    sub_100035B30(v32, v30);
    sub_1000180EC(v32, &qword_100CD8E98, &qword_100A82EF8);
    sub_1000161C0(v30, v31);
    dispatch thunk of GeocodeStoreType.deleteLocation(for:)();
    (*(v18 + 8))(v17, v16);
    sub_100006F14(v30);
  }

  else
  {
    (*(v18 + 8))(v17, v16, v19);
    sub_1000180EC(v32, &qword_100CD8E98, &qword_100A82EF8);
  }

  a2 = v29;
LABEL_9:
  v20 = a1[8];
  ObjectType = swift_getObjectType();
  (*(v20 + 8))(a2, a3, ObjectType, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;

  v23 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v23;
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v7[5] = v3;
  type metadata accessor for Location();

  v8 = a1;

  v9 = firstly<A, B>(on:disposeOn:closure:)();

  return v9;
}

uint64_t sub_1007CB7C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v32 = *a5;
  v9 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Location();
  v30 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v29 = &v29 - v16;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.Geocoding.bypassGeocodingCache.getter();
  SettingReader.read<A>(_:)();

  if (v35[0])
  {
    goto LABEL_11;
  }

  v31 = a1;
  sub_1007CA604(v35);
  if (!v36)
  {
    sub_1000180EC(v35, &qword_100CD8E98, &qword_100A82EF8);
    sub_10001B350(v11, 1, 1, v12);
    goto LABEL_8;
  }

  sub_100035B30(v35, v33);
  sub_1000180EC(v35, &qword_100CD8E98, &qword_100A82EF8);
  sub_1000161C0(v33, v34);
  v17 = v12;
  dispatch thunk of GeocodeStoreType.queryLocation(for:)();
  sub_100006F14(v33);
  if (sub_100024D10(v11, 1, v12) == 1)
  {
LABEL_8:
    v21 = &qword_100CA65D8;
    v22 = &unk_100A3D9D0;
    v23 = v11;
LABEL_9:
    sub_1000180EC(v23, v21, v22);
    goto LABEL_10;
  }

  v19 = v29;
  v18 = v30;
  (*(v30 + 32))(v29, v11, v17);
  if (!sub_1007CAA44())
  {
    (*(v18 + 16))(v14, v19, v17);
    sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
    swift_allocObject();
    v27 = Promise.init(value:)();
    (*(v18 + 8))(v19, v17);
    return v27;
  }

  v20 = sub_1007CA604(v35);
  if (!v36)
  {
    (*(v18 + 8))(v19, v17, v20);
    v21 = &qword_100CD8E98;
    v22 = &qword_100A82EF8;
    v23 = v35;
    goto LABEL_9;
  }

  sub_100035B30(v35, v33);
  sub_1000180EC(v35, &qword_100CD8E98, &qword_100A82EF8);
  sub_1000161C0(v33, v34);
  dispatch thunk of GeocodeStoreType.deleteLocation(for:)();
  (*(v18 + 8))(v19, v17);
  sub_100006F14(v33);
LABEL_10:
  a1 = v31;
LABEL_11:
  v24 = a3[8];
  ObjectType = swift_getObjectType();
  (*(v24 + 16))(a4, a1, a2, ObjectType, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;

  v27 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v27;
}

uint64_t sub_1007CBC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Location();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_1007CA604(v15);
  if (v16)
  {
    sub_100035B30(v15, v14);
    sub_1000180EC(v15, &qword_100CD8E98, &qword_100A82EF8);
    v17 = v4;
    sub_1000161C0(v14, v14[3]);
    dispatch thunk of GeocodeStoreType.saveLocation(_:for:)();
    sub_100006F14(v14);
  }

  else
  {
    sub_1000180EC(v15, &qword_100CD8E98, &qword_100A82EF8);
  }

  (*(v8 + 16))(v12, a1, v6);
  sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
  swift_allocObject();
  return Promise.init(value:)();
}

uint64_t LocalSearchRequestManager.deinit()
{
  sub_100006F14((v0 + 16));
  swift_unknownObjectRelease();

  sub_1000180EC(v0 + 80, &qword_100CD8DC0, &qword_100A82DF8);

  return v0;
}

uint64_t LocalSearchRequestManager.__deallocating_deinit()
{
  LocalSearchRequestManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1007CBF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD8DC0, &qword_100A82DF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007CBF74(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1007CC044@<X0>(_BYTE *a2@<X8>)
{
  *a2 = static Axis.Set.horizontal.getter();
  v4 = sub_10022C350(&qword_100CD8F38, &qword_100A82F80);
  return sub_1007CC090(v2, &a2[*(v4 + 44)]);
}

uint64_t sub_1007CC090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CD8F40, &qword_100A82F88);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for WindCompassAndTableView(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  sub_1007CC5A0(a1, &v19 - v14);
  *v9 = static Axis.Set.vertical.getter();
  v16 = sub_10022C350(&qword_100CD8F48, &qword_100A82F90);
  sub_1007CC2B8(a1, &v9[*(v16 + 44)]);
  sub_1007CC5A0(v15, v12);
  sub_1000302D8(v9, v6, &qword_100CD8F40, &qword_100A82F88);
  sub_1007CC5A0(v12, a2);
  v17 = sub_10022C350(&qword_100CD8F50, &qword_100A82F98);
  sub_1000302D8(v6, a2 + *(v17 + 48), &qword_100CD8F40, &qword_100A82F88);
  sub_1000180EC(v9, &qword_100CD8F40, &qword_100A82F88);
  sub_1007CC618(v15, type metadata accessor for WindCompassAndTableView);
  sub_1000180EC(v6, &qword_100CD8F40, &qword_100A82F88);
  return sub_1007CC618(v12, type metadata accessor for WindCompassAndTableView);
}

uint64_t sub_1007CC2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WindDataTableView(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v24[-v9];
  v11 = type metadata accessor for WindCompassAndTableView(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v24[-v15];
  sub_1007CC5A0(a1, &v24[-v15]);
  sub_1007CC5A0(a1, &v10[v5[11]]);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v17 = v5[7];
  *&v10[v17] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  swift_storeEnumTagMultiPayload();
  v18 = &v10[v5[8]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &v10[v5[9]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v10[v5[10]];
  KeyPath = swift_getKeyPath();
  v24[8] = 0;
  *v20 = KeyPath;
  v20[72] = 0;
  sub_1007CC5A0(v16, v13);
  sub_1007CC5A0(v10, v7);
  sub_1007CC5A0(v13, a2);
  v22 = sub_10022C350(&qword_100CD8F58, &unk_100A83080);
  sub_1007CC5A0(v7, a2 + *(v22 + 48));
  sub_1007CC618(v10, type metadata accessor for WindDataTableView);
  sub_1007CC618(v16, type metadata accessor for WindCompassAndTableView);
  sub_1007CC618(v7, type metadata accessor for WindDataTableView);
  return sub_1007CC618(v13, type metadata accessor for WindCompassAndTableView);
}

uint64_t sub_1007CC5A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1007CC618(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1007CC698(uint64_t a1)
{
  sub_10009BE44(319, &qword_100CACE80, &type metadata for SizingBehavior);
  if (v1 <= 0x3F)
  {
    sub_10013BCD0(319);
    if (v2 <= 0x3F)
    {
      sub_10009BE44(319, &qword_100CE0E20, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_10009BE44(319, &qword_100CB7100, &unk_100C730C0);
        if (v4 <= 0x3F)
        {
          type metadata accessor for WindComponentViewModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1007CC7BC(uint64_t a1)
{
  result = type metadata accessor for WindComponentViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1007CC844@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CB7028, &qword_100A83220);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for HorizontalABWithB1x1RatioLayout(0);
  v8 = (v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v18 - v12);
  sub_100046E64();
  *v13 = OS_os_log.init(subsystem:category:)();
  v14 = v8[7];
  *(v13 + v14) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  *(v13 + v8[8]) = 0x4059000000000000;
  v15 = v13 + v8[9];
  *v15 = 0;
  v15[8] = 1;
  *(v13 + v8[10]) = 0x4030000000000000;
  sub_1007CEC48(v13, v10);
  sub_1007CC5A0(v10, v6);
  sub_1000302D8(v6, a1, &qword_100CB7028, &qword_100A83220);
  v16 = sub_10022C350(&qword_100CD9148, &qword_100A83260);
  sub_1007CCA98(v2, a1 + *(v16 + 44));
  sub_1000180EC(v6, &qword_100CB7028, &qword_100A83220);
  return sub_1007CC618(v10, type metadata accessor for HorizontalABWithB1x1RatioLayout);
}

uint64_t sub_1007CCA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherWindComponentCompassContainerView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v28[-v9];
  v11 = type metadata accessor for WindDataTableView(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v28[-v16];
  sub_1007CC5A0(a1, &v28[v12[11] - v16]);
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v12[7];
  *&v17[v18] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  swift_storeEnumTagMultiPayload();
  v19 = &v17[v12[8]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v17[v12[9]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v17[v12[10]];
  KeyPath = swift_getKeyPath();
  v28[8] = 0;
  *v21 = KeyPath;
  v21[72] = 0;
  v23 = *(type metadata accessor for WindComponentViewModel(0) + 68);
  v24 = *(v5 + 28);
  v25 = type metadata accessor for WindComponentCompassViewModel();
  (*(*(v25 - 8) + 16))(&v10[v24], a1 + v23, v25);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  sub_1007CC5A0(v17, v14);
  sub_1007CC5A0(v10, v7);
  sub_1007CC5A0(v14, a2);
  v26 = sub_10022C350(&qword_100CD9150, &qword_100A83268);
  sub_1007CC5A0(v7, a2 + *(v26 + 48));
  sub_1007CC618(v10, type metadata accessor for WeatherWindComponentCompassContainerView);
  sub_1007CC618(v17, type metadata accessor for WindDataTableView);
  sub_1007CC618(v7, type metadata accessor for WeatherWindComponentCompassContainerView);
  return sub_1007CC618(v14, type metadata accessor for WindDataTableView);
}

uint64_t sub_1007CCDD4@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CD90A0, &qword_100A83170);
  return sub_1007CCE24(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_1007CCE24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for WindDataTableView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_10022C350(&qword_100CD90A8, &qword_100A83178);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v28 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &KeyPath - v11;
  v13 = a1 + *(v4 + 44);
  v14 = type metadata accessor for WindComponentViewModel(0);
  sub_1002EE4F8(*(v13 + *(v14 + 72)));
  v30 = v15;
  KeyPath = swift_getKeyPath();
  sub_1007CC5A0(a1, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1007CEC48(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1007CE978;
  *(v18 + 24) = v17;
  sub_10022C350(&qword_100CD90B0, &qword_100A831A0);
  sub_10022C350(&qword_100CD90B8, &qword_100A831A8);
  sub_100006F64(&qword_100CD90C0, &qword_100CD90B0, &qword_100A831A0, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CD90C8, &qword_100CD90B8, &qword_100A831A8, &protocol conformance descriptor for TupleView<A>);
  ForEach<>.init(_:id:content:)();
  v19 = *(v8 + 16);
  v20 = v28;
  v19(v28, v12, v7);
  v21 = v29;
  *v29 = 0;
  *(v21 + 8) = 1;
  v22 = v21;
  v23 = sub_10022C350(&qword_100CD90D0, &unk_100A831B0);
  v19(&v22[*(v23 + 48)], v20, v7);
  v24 = &v22[*(v23 + 64)];
  *v24 = 0;
  v24[8] = 1;
  v25 = *(v8 + 8);
  v25(v12, v7);
  return (v25)(v20, v7);
}

uint64_t sub_1007CD1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v104 = a5;
  v107 = a4;
  v105 = a3;
  v106 = a2;
  v103 = a7;
  v93 = type metadata accessor for PrimaryDividerStyle();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Divider();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10022C350(&qword_100CA7280, &unk_100A49700);
  v87 = *(v100 - 8);
  __chkstk_darwin(v100);
  v86 = &v85 - v11;
  v12 = sub_10022C350(&qword_100CB6FB8, &qword_100A831C0);
  __chkstk_darwin(v12 - 8);
  v102 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v101 = &v85 - v15;
  v16 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  v94 = type metadata accessor for AccessibilityChildBehavior();
  v17 = *(v94 - 8);
  __chkstk_darwin(v94);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CD90D8, &qword_100A831C8);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v85 - v22;
  v24 = sub_10022C350(&qword_100CD90E0, &qword_100A831D0);
  __chkstk_darwin(v24);
  v26 = &v85 - v25;
  v97 = sub_10022C350(&qword_100CD90E8, &qword_100A831D8);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v28 = &v85 - v27;
  v29 = sub_10022C350(&qword_100CD90F0, &qword_100A831E0);
  __chkstk_darwin(v29 - 8);
  v99 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v95 = &v85 - v32;
  sub_1007CDD90(a1);
  *v23 = static VerticalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v33 = sub_10022C350(&qword_100CD90F8, &qword_100A831E8);
  sub_1007CDE24(v106, v105, v107, v104, a6, &v23[*(v33 + 44)]);
  LOBYTE(a1) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v23[*(sub_10022C350(&qword_100CD9100, &qword_100A831F0) + 36)];
  *v42 = a1;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v43 = &v23[*(v21 + 44)];
  *v43 = a1;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  v98 = a6;
  sub_1007CE6A4();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v23, v26, &qword_100CD90D8, &qword_100A831C8);
  memcpy(&v26[*(v24 + 36)], __src, 0x70uLL);
  static AccessibilityChildBehavior.ignore.getter();
  v48 = sub_1007CEA30();
  View.accessibilityElement(children:)();
  (*(v17 + 8))(v19, v94);
  sub_1000180EC(v26, &qword_100CD90E0, &qword_100A831D0);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
  v50._countAndFlagsBits = v106;
  v50._object = v105;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v50);
  v51._countAndFlagsBits = 8250;
  v51._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v51);
  v52._countAndFlagsBits = v107;
  v53 = v104;
  v52._object = v104;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v52);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v54);
  LocalizedStringKey.init(stringInterpolation:)();
  v108 = v24;
  v109 = v48;
  swift_getOpaqueTypeConformance2();
  v55 = v95;
  v56 = v97;
  View.accessibilityLabel(_:)();

  (*(v96 + 8))(v28, v56);
  v57 = v98 + *(type metadata accessor for WindDataTableView(0) + 36);
  v58 = type metadata accessor for WindComponentViewModel(0);
  v59 = sub_1002F563C(*(v57 + *(v58 + 72)));
  v61 = v59;
  v63 = v62;
  v65 = v64;
  v66 = v105;
  v67 = v107;
  v68 = v106;
  if (!v60)
  {

    sub_1001A6184(v68, v66);
    sub_1001A6184(v61, 0);
    v70 = v101;
LABEL_17:
    v75 = v88;
    Divider.init()();
    v76 = v90;
    static DividerStyle<>.primary.getter();
    sub_1007CEC00(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_1007CEC00(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle, &protocol conformance descriptor for PrimaryDividerStyle);
    v77 = v86;
    v78 = v91;
    v79 = v93;
    View.dividerStyle<A>(_:)();
    (*(v92 + 8))(v76, v79);
    (*(v89 + 8))(v75, v78);
    v74 = v100;
    (*(v87 + 32))(v70, v77, v100);
    v73 = 0;
    goto LABEL_18;
  }

  v69 = v59 == v106 && v60 == v105;
  v70 = v101;
  if (!v69 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_17;
  }

  if (v63 == v67 && v65 == v53)
  {
  }

  else
  {
    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v72 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v73 = 1;
  v74 = v100;
LABEL_18:
  sub_10001B350(v70, v73, 1, v74);
  v80 = v99;
  sub_1000302D8(v55, v99, &qword_100CD90F0, &qword_100A831E0);
  v81 = v102;
  sub_1000302D8(v70, v102, &qword_100CB6FB8, &qword_100A831C0);
  v82 = v103;
  sub_1000302D8(v80, v103, &qword_100CD90F0, &qword_100A831E0);
  v83 = sub_10022C350(&qword_100CD9130, &unk_100A83200);
  sub_1000302D8(v81, v82 + *(v83 + 48), &qword_100CB6FB8, &qword_100A831C0);
  sub_1000180EC(v70, &qword_100CB6FB8, &qword_100A831C0);
  sub_1000180EC(v55, &qword_100CD90F0, &qword_100A831E0);
  sub_1000180EC(v81, &qword_100CB6FB8, &qword_100A831C0);
  return sub_1000180EC(v80, &qword_100CD90F0, &qword_100A831E0);
}

double sub_1007CDD90(uint64_t a1)
{
  v2 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  type metadata accessor for WindDataTableView(0);
  type metadata accessor for WindComponentViewModel(0);
  v3 = 10.0;
  if (!v2)
  {
    v3 = 6.0;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_1007CDE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v83 = a5;
  v87 = a4;
  v86 = a3;
  v100 = a6;
  v8 = type metadata accessor for ColorSchemeContrast();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v93 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v75 - v11;
  v96 = sub_10022C350(&qword_100CD9138, &qword_100A83210);
  __chkstk_darwin(v96);
  v99 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v75 - v14;
  __chkstk_darwin(v15);
  v98 = &v75 - v16;
  v77 = type metadata accessor for EnvironmentValues();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Font.TextStyle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a1;
  v102 = a2;
  v22 = sub_10002D5A4();

  v82 = v22;
  v23 = Text.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  v28 = *(v19 + 104);
  v81 = enum case for Font.TextStyle.subheadline(_:);
  v80 = v19 + 104;
  v79 = v28;
  v28(v21);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v29 = *(v19 + 8);
  v85 = v18;
  v84 = v19 + 8;
  v78 = v29;
  v29(v21, v18);
  v30 = Text.font(_:)();
  v32 = v31;
  LOBYTE(v22) = v33;

  v34 = v23;
  v35 = v83;
  sub_10010CD64(v34, v25, v27 & 1);

  LODWORD(v101) = static HierarchicalShapeStyle.primary.getter();
  v36 = Text.foregroundStyle<A>(_:)();
  v89 = v37;
  v90 = v36;
  v88 = v38;
  v91 = v39;
  sub_10010CD64(v30, v32, v22 & 1);

  v40 = *v35;
  if (*(v35 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v75;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v40, 0);
    (*(v76 + 8))(v42, v77);
    LOBYTE(v40) = v101;
  }

  v101 = v86;
  v102 = v87;

  v43 = Text.init<A>(_:)();
  v45 = v44;
  v47 = v46;
  v48 = v85;
  v79(v21, v81, v85);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v78(v21, v48);
  v86 = Text.font(_:)();
  v50 = v49;
  LODWORD(v85) = v51;
  v87 = v52;

  sub_10010CD64(v43, v45, v47 & 1);

  v53 = type metadata accessor for WindDataTableView(0);
  v54 = v92;
  sub_1001C7668();
  v55 = v93;
  v56 = v94;
  v57 = v95;
  (*(v94 + 104))(v93, enum case for ColorSchemeContrast.increased(_:), v95);
  LOBYTE(v43) = static ColorSchemeContrast.== infix(_:_:)();
  v58 = *(v56 + 8);
  v58(v55, v57);
  v58(v54, v57);
  v59 = 1.0;
  if ((v43 & 1) == 0)
  {
    v60 = v35 + *(v53 + 24);
    v61 = *v60;
    if (*(v60 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v62 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v63 = v75;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v61, 0);
      (*(v76 + 8))(v63, v77);
      LOBYTE(v61) = v101;
    }

    if (v61)
    {
      v59 = 1.0;
    }

    else
    {
      v59 = 0.27;
    }
  }

  v64 = *(v96 + 36);
  v65 = enum case for BlendMode.plusLighter(_:);
  v66 = type metadata accessor for BlendMode();
  v67 = v97;
  (*(*(v66 - 8) + 104))(&v97[v64], v65, v66);
  *v67 = v86;
  *(v67 + 8) = v50;
  *(v67 + 16) = v85 & 1;
  *(v67 + 24) = v87;
  *(v67 + 32) = v59;
  v68 = v98;
  sub_10011C0F0(v67, v98, &qword_100CD9138, &qword_100A83210);
  v69 = v99;
  sub_1000302D8(v68, v99, &qword_100CD9138, &qword_100A83210);
  v70 = v100;
  v72 = v89;
  v71 = v90;
  *v100 = v90;
  v70[1] = v72;
  LOBYTE(v65) = v88 & 1;
  *(v70 + 16) = v88 & 1;
  v70[3] = v91;
  *(v70 + 32) = 0;
  *(v70 + 33) = (v40 & 1) == 0;
  v70[5] = 0x4024000000000000;
  *(v70 + 48) = 0;
  v73 = sub_10022C350(&qword_100CD9140, &qword_100A83218);
  sub_1000302D8(v69, v70 + *(v73 + 64), &qword_100CD9138, &qword_100A83210);
  sub_10010CD54(v71, v72, v65);

  sub_1000180EC(v68, &qword_100CD9138, &qword_100A83210);
  sub_1000180EC(v69, &qword_100CD9138, &qword_100A83210);
  sub_10010CD64(v71, v72, v65);
}

double sub_1007CE6A4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() wu_systemUsesExuberatedLineHeight])
  {
    v5 = v0 + *(type metadata accessor for WindDataTableView(0) + 28);
    v6 = *v5;
    if (*(v5 + 8) == 1)
    {
      result = 0.0;
      if (v6)
      {
        return result;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v8 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v6, 0);
      (*(v2 + 8))(v4, v1);
      result = 0.0;
      if (__dst[0])
      {
        return result;
      }
    }
  }

  v9 = *(type metadata accessor for WindDataTableView(0) + 32);
  memcpy(__dst, (v0 + v9), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (v0 + v9), sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v14, __src, sizeof(v14));
  v11 = sub_10014B28C() < 188.0;
  result = 40.0;
  if (v11)
  {
    return 32.0;
  }

  return result;
}

uint64_t sub_1007CE978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(type metadata accessor for WindDataTableView(0) - 8);
  v14 = v6 + ((*(v13 + 80) + 16) & ~*(v13 + 80));

  return sub_1007CD1CC(a1, a2, a3, a4, a5, v14, a6);
}

unint64_t sub_1007CEA30()
{
  result = qword_100CD9108;
  if (!qword_100CD9108)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD90E0, &qword_100A831D0);
    v4[0] = sub_1007CEABC();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9108);
  }

  return result;
}

unint64_t sub_1007CEABC()
{
  result = qword_100CD9110;
  if (!qword_100CD9110)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD90D8, &qword_100A831C8);
    v4[0] = sub_1007CEB48();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9110);
  }

  return result;
}

unint64_t sub_1007CEB48()
{
  result = qword_100CD9118;
  if (!qword_100CD9118)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9100, &qword_100A831F0);
    v4[0] = sub_100006F64(&qword_100CD9120, &qword_100CD9128, &qword_100A831F8, &protocol conformance descriptor for HStack<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9118);
  }

  return result;
}

uint64_t sub_1007CEC00(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1007CEC48(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

unint64_t sub_1007CECA0()
{
  result = qword_100CD9168;
  if (!qword_100CD9168)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD9148, &qword_100A83260);
    v4[0] = sub_100006F64(&qword_100CD9170, &qword_100CB7028, &qword_100A83220, &protocol conformance descriptor for _LayoutRoot<A>);
    v4[1] = sub_100006F64(&qword_100CD9178, &qword_100CD9180, &qword_100A83278, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v3, v4);
    atomic_store(result, &qword_100CD9168);
  }

  return result;
}

uint64_t sub_1007CEE4C()
{
  sub_10022C350(&qword_100CAC610, &unk_100A56560);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v6 - v1;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_10030FE60(v2);
  return v4;
}

uint64_t sub_1007CEF24()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_1000037D8();
  v4 = v3 - v2;
  Tips.Action.init(id:perform:_:)();
  sub_10022C350(&qword_100CA55B0, &unk_100A416A0);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  (*(v1 + 32))(v6 + v5, v4, v0);
  v7 = static Tips.ActionBuilder.buildFinalResult(_:)();
  swift_setDeallocating();
  sub_1005C1E40();
  return v7;
}

uint64_t sub_1007CF0A4()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)(v4, v6, v5 & 1, v7, 0, 0, 0, "Title of an action in a tip that redirect user to settings app.", 63, 2);
  v10 = v9;
  v12 = v11;
  (*(v1 + 104))(v3, enum case for Font.TextStyle.body(_:), v0);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v1 + 8))(v3, v0);
  v13 = Text.font(_:)();

  sub_10010CD64(v8, v10, v12 & 1);

  return v13;
}

uint64_t sub_1007CF270()
{
  sub_10022C350(&qword_100CA5570, &unk_100A2FA70);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578, &unk_100A41670);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580, &unk_100A2FA80);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588, &unk_100A41680);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_1007CF724()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_100007074(v0, qword_100D90DC8);
  sub_10000703C(v0, qword_100D90DC8);
  sub_10022C350(&qword_100CA55A8, &qword_100A2FAA0);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1007CF874()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA27D0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D90DC8);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_1007CFAA4@<X0>(uint64_t *a2@<X8>)
{
  sub_100235AF0();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1007CFAE8()
{
  result = qword_100CD9188;
  if (!qword_100CD9188)
  {
    result = swift_getWitnessTable(byte_100A83294, &type metadata for HomeAndWorkAddedTip, v0, v1);
    atomic_store(result, &qword_100CD9188);
  }

  return result;
}

uint64_t sub_1007CFB3C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v1577 = a3;
  v1579 = a2;
  v1513 = a1;
  v3 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003990(&v1367 - v5);
  v6 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_10000E70C();
  sub_100003990(v11);
  v12 = sub_10022C350(&qword_100CB0250, &qword_100A3FF58);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v1578 = type metadata accessor for SearchViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v23 = sub_100003918(v22);
  v24 = type metadata accessor for SearchLocation(v23);
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000037D8();
  sub_100003918(v27 - v26);
  v1550 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v1514 = v28;
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = sub_100003918(v31 - v30);
  v1572 = type metadata accessor for TimeState(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_10000E70C();
  v38 = sub_100003918(v37);
  v1575 = type metadata accessor for NotificationsOptInState(v38);
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_10000E70C();
  v44 = sub_100003918(v43);
  v1574 = type metadata accessor for NotificationsState(v44);
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_10000E70C();
  v50 = sub_100003918(v49);
  v1571 = type metadata accessor for LocationsState(v50);
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_10000E70C();
  v56 = sub_100003918(v55);
  v1573 = type metadata accessor for EnvironmentState(v56);
  sub_1000037E8();
  __chkstk_darwin(v57);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_10000E70C();
  v62 = sub_100003918(v61);
  v1569 = type metadata accessor for AppConfigurationState(v62);
  sub_1000037E8();
  __chkstk_darwin(v63);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_10000E70C();
  v68 = sub_100003918(v67);
  v1566 = type metadata accessor for ModalViewState(v68);
  sub_1000037E8();
  __chkstk_darwin(v69);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_10000E70C();
  v81 = sub_100003918(v80);
  v1516 = type metadata accessor for SelectedSearchResult(v81);
  sub_1000037E8();
  __chkstk_darwin(v82);
  sub_1000037D8();
  sub_100003918(v84 - v83);
  v1564 = type metadata accessor for Location();
  sub_1000037C4();
  v1557 = v85;
  __chkstk_darwin(v86);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_10000E70C();
  sub_100003990(v88);
  v89 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v90 = sub_100003810(v89);
  __chkstk_darwin(v90);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_10000E70C();
  v1563 = v99;
  v1568 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v100);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_10000E70C();
  v107 = sub_100003918(v106);
  v1570 = type metadata accessor for DisplayMetrics(v107);
  sub_1000037E8();
  __chkstk_darwin(v108);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_10000E70C();
  v115 = sub_100003918(v114);
  v1567 = type metadata accessor for ViewState.SecondaryViewState(v115);
  sub_1000037E8();
  __chkstk_darwin(v116);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_10000E70C();
  sub_100003990(v123);
  v124 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v125 = sub_100003810(v124);
  __chkstk_darwin(v125);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v131);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_10000E70C();
  sub_100003990(v138);
  v139 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v140 = sub_100003810(v139);
  __chkstk_darwin(v140);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_10000E70C();
  sub_100003990(v153);
  v154 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v155 = sub_100003810(v154);
  __chkstk_darwin(v155);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v175);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_10000E70C();
  sub_100003990(v183);
  v184 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v185 = sub_100003810(v184);
  __chkstk_darwin(v185);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_10000E70C();
  sub_100003990(v201);
  v202 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v203 = sub_100003810(v202);
  __chkstk_darwin(v203);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_10000E70C();
  sub_100003990(v217);
  v218 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v219 = sub_100003810(v218);
  __chkstk_darwin(v219);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_10000E70C();
  sub_100003990(v233);
  v234 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v235 = sub_100003810(v234);
  __chkstk_darwin(v235);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v236);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v237);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_10000E70C();
  sub_100003990(v249);
  v250 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v251 = sub_100003810(v250);
  __chkstk_darwin(v251);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v253);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v254);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v263);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v264);
  sub_10000E70C();
  sub_100003990(v265);
  v266 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v267 = sub_100003810(v266);
  __chkstk_darwin(v267);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v268);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v275);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v276);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v277);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v278);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_10000E70C();
  sub_100003990(v281);
  v282 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v283 = sub_100003810(v282);
  __chkstk_darwin(v283);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v284);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v289);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v290);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v291);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v292);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v293);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v294);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v295);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  sub_10000E70C();
  sub_100003990(v297);
  v298 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v299 = sub_100003810(v298);
  __chkstk_darwin(v299);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v300);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v301);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v302);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v303);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v304);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v305);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v306);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v307);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v308);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v309);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v310);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v311);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v312);
  sub_10000E70C();
  v314 = sub_100003918(v313);
  v1576 = type metadata accessor for ViewState(v314);
  sub_1000037E8();
  __chkstk_darwin(v315);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v316);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v317);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v318);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v319);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v320);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v321);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v322);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v323);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v324);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v325);
  v327 = (&v1367 - v326);
  __chkstk_darwin(v328);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v329);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v330);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v331);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v332);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v333);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v334);
  v336 = (&v1367 - v335);
  v337 = type metadata accessor for CodableError();
  sub_1000037C4();
  v339 = v338;
  __chkstk_darwin(v340);
  sub_1000037D8();
  v343 = (v342 - v341);
  v1565 = type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v344);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v345);
  v347 = (&v1367 - v346);
  __chkstk_darwin(v348);
  v350 = &v1367 - v349;
  __chkstk_darwin(v351);
  v353 = (&v1367 - v352);
  type metadata accessor for SearchViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v354);
  sub_1000037D8();
  v357 = (v356 - v355);
  sub_1007D9B48();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v488 = *v357;
      sub_10000CEC0();
      sub_100087FF4(v489);
      sub_1007D9B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload < 2)
      {
        sub_100011840();
        sub_1000B0004(v350, v1213);
      }

      else if (EnumCaseMultiPayload - 3 < 2)
      {

        v358 = v1579;
        goto LABEL_288;
      }

      *v353 = v488;
      swift_storeEnumTagMultiPayload();
      v486 = v353;
      v487 = 0;
      goto LABEL_284;
    case 2u:
      v445 = *v357;
      v444 = v357[1];
      sub_10000CEC0();
      sub_100087FF4(v446);
      sub_1007D9B48();
      v447 = swift_getEnumCaseMultiPayload();
      v448 = v1579;
      if ((v447 - 2) >= 3)
      {
        if (v447)
        {
          *v353 = *v347;
        }

        else
        {
          sub_100011840();
          sub_1000B0004(v347, v449);
        }
      }

      swift_storeEnumTagMultiPayload();
      v358 = sub_1007D76EC(v353, v445, v444, v448);

      goto LABEL_285;
    case 3u:
      sub_10022C350(&qword_100CC7D10, &unk_100A645F0);
      v451 = *(v1557 + 32);
      v1557 += 32;
      v1577 = v451;
      v451(v1510, v357, v1564);
      sub_100052488();
      sub_1007D9BA0();
      v452 = sub_100003BCC(v1489);
      sub_10001B350(v452, v453, v454, v1569);
      v455 = sub_100003BCC(&v1495);
      sub_10001B350(v455, v456, v457, v1573);
      v458 = sub_100003BCC(&v1504);
      sub_10001B350(v458, v459, v460, v1571);
      v461 = sub_100003BCC(&v1510);
      sub_10001B350(v461, v462, v463, v1574);
      v464 = sub_100003BCC(&v1517);
      sub_10001B350(v464, v465, v466, v1575);
      v467 = sub_100003BCC(&v1524);
      sub_1000C8F88(v467, v468, v469);
      sub_10001F850();
      v470 = v1579;
      v1565 = v471;
      sub_100042230();
      sub_1007D9B48();
      v472 = sub_100020EE4(&v1508);
      sub_1000B7C18(v472, v473, v474);
      v475 = sub_100003BCC(&v1513);
      sub_10001B350(v475, v476, v477, v1578);
      v478 = sub_1000B9A6C(v1440);
      sub_10001B350(v478, v479, v480, v1570);
      sub_1000C8850();
      sub_10001B350(v481, v482, v483, v484);
      v485 = *v336;
      sub_1000BAF48();
      sub_100003A40(v337);
      if (v364)
      {
        v938 = v1576;
        sub_100019F48();
        sub_1007D9B48();
        sub_1000D4314();

        v939 = v1431;
        v940 = v1408;
        if (v339 != 1)
        {
          sub_1000180EC(v337, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();

        v938 = v1576;
        v939 = v1431;
        v940 = v1408;
      }

      LODWORD(v1567) = *(v336 + v938[6]);
      v941 = [objc_opt_self() currentDevice];
      v942 = [v941 userInterfaceIdiom];

      if (v942 && *(v336 + v938[9] + 8) == 2)
      {
        v943 = 1;
      }

      else
      {
        v943 = *(v336 + v938[7]);
      }

      v944 = v1577;
      sub_1000180EC(v1480[1], &qword_100CA6608, &unk_100A31430);
      sub_100030224(&v1513);
      sub_100051BBC();
      v945 = sub_1000162A4();
      v946 = v1578;
      sub_10001627C(v945, v947);
      if (v364)
      {
        sub_100087FF4(v938[8]);
        sub_100095588();
        sub_100005404(v940);
        if (!v364)
        {
          sub_1000180EC(v940, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100004B40();
        sub_1000131DC();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v948, v949, v950, v946);
      }

      sub_100037814();
      sub_100051BBC();
      v951 = sub_1000201BC();
      sub_10001627C(v951, v952);
      if (v364)
      {
        sub_100075000();
        sub_100087FF4(v953);
        sub_1007D9B48();
        sub_100005404(v353);
        if (!v364)
        {
          sub_1000180EC(v353, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      v954 = sub_100007FC4();
      sub_10001627C(v954, v955);
      if (v364)
      {
        sub_100028B60();
        sub_100087FF4(v956);
        sub_100021424();
        sub_1007D9B48();
        sub_100005404(v939);
        v957 = v1396;
        if (!v364)
        {
          sub_1000180EC(v939, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_100021424();
        sub_1007D9BA0();
        v957 = v1396;
      }

      v958 = *(v1553 + v938[11]);
      sub_10001CDA4();
      sub_1000B0004(v959, v960);
      v961 = v1430;
      *v1430 = v485;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v961 + v938[6]) = v1567;
      *(v961 + v938[7]) = v943;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();
      *(v961 + v938[11]) = v958;
      sub_10000E7B0();
      sub_10001B350(v962, v963, v964, v938);
      v965 = v1442;
      v944(v1442, v1510, v1564);
      type metadata accessor for PreviewLocation(0);
      swift_storeEnumTagMultiPayload();
      v966 = *(type metadata accessor for LocationPreviewViewState(0) + 20);
      type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      sub_100052488();
      sub_1007D9BA0();
      v967 = v1566;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v968, v969, v970, v967);
      sub_10004EAA8();
      sub_100042230();
      sub_1007D9B48();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v966);
      if (v364)
      {
        sub_1000180EC(v966, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000253DC();
        sub_1000B0004(v944, v971);
        sub_100010BDC();
        sub_1007D9BA0();
      }

      sub_1001721F4();
      v972 = v1392;
      sub_100010BDC();
      sub_1007D9BA0();
      v973 = *(v470 + 16);
      LODWORD(v1577) = *(v470 + 24);
      sub_100042230();
      sub_100051BBC();
      sub_100005404(v944);
      v1578 = v973;
      if (v364)
      {
        sub_10003A34C();
        sub_1007D9B48();
        v974 = sub_100024D10(v944, 1, v965);

        v975 = v944;
        v976 = v1405;
        if (v974 != 1)
        {
          sub_1000180EC(v975, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000300CC();
        sub_1007D9BA0();

        v976 = v1405;
      }

      sub_1000C893C(&v1495);
      sub_100051BBC();
      sub_100003BFC(v972);
      if (v364)
      {
        sub_10002014C(v470 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100031F70();
        sub_1007D9B48();
        sub_100003BFC(v972);
        v977 = v1425;
        v978 = v1417;
        if (!v364)
        {
          sub_1000180EC(v972, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100024A5C();
        sub_1007D9BA0();
        v977 = v1425;
        v978 = v1417;
      }

      sub_100051BBC();
      sub_100003A40(v957);
      if (v364)
      {
        sub_100018744();
        sub_1007D9B48();
        sub_100003A40(v957);
        if (!v364)
        {
          sub_1000180EC(v957, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10003181C();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      sub_1000038B4(v976, 1, v1574);
      if (v364)
      {
        sub_100052138();
        sub_1007D9B48();
        sub_100003A40(v976);
        v979 = v1433;
        if (!v364)
        {
          sub_1000180EC(v976, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100037D68();
        sub_1007D9BA0();
        v979 = v1433;
      }

      sub_100030224(&v1517);
      sub_100051BBC();
      v980 = sub_1000162A4();
      v981 = v1575;
      sub_1000038B4(v980, v982, v1575);
      if (v364)
      {
        sub_10000EDC0();
        sub_1007D9B48();
        v983 = sub_1000162A4();
        sub_1000038B4(v983, v984, v981);
        if (!v364)
        {
          sub_1000180EC(v978, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10002CAB4();
        sub_1007D9BA0();
      }

      sub_1000436AC(&v1524);
      sub_100051BBC();
      sub_10000554C(v977);
      if (v364)
      {
        sub_100020B80();
        sub_1007D9B48();
        sub_10000554C(v977);
        if (!v364)
        {
          sub_1000180EC(v977, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10003C81C();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      sub_100003BDC(v979);
      if (v364)
      {
        sub_10001F850();
        sub_1007D9B48();
        sub_100003BDC(v979);
        if (!v364)
        {
          sub_1000180EC(v979, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100017DF4();
        sub_1007D9BA0();
      }

      sub_100010BDC();
      sub_1000113EC();
      sub_1007D9BA0();
      v985 = sub_100087104();
      sub_100003B6C(v985);
      v751 = sub_100030540();
      v752 = v1577;
      v753 = v1521;
      v754 = v1524;
      v755 = v1527;
      v756 = v1529[1];
      v757 = v1529[5];
      v758 = &v1556;
      goto LABEL_276;
    case 4u:
      (*(v1514 + 32))(v1549, v357, v1550);
      static Solarium.isEnabled.getter();
      v376 = sub_100003BCC(&v1571);
      v377 = v1578;
      sub_10001B350(v376, v378, v379, v1578);
      v380 = sub_100003BCC(v1490);
      sub_10001B350(v380, v381, v382, v1569);
      v383 = sub_100003BCC(v1493);
      sub_10001B350(v383, v384, v385, v1573);
      v386 = sub_100003BCC(v1499);
      sub_10001B350(v386, v387, v388, v1571);
      v389 = sub_100003BCC(&v1503);
      sub_10001B350(v389, v390, v391, v1574);
      v392 = sub_100003BCC(&v1506);
      sub_10001B350(v392, v393, v394, v1575);
      v395 = sub_100003BCC(&v1511);
      sub_1000C8F88(v395, v396, v397);
      sub_10001F850();
      v398 = v1552;
      sub_1007D9B48();
      v399 = sub_1000B9A6C(v1422);
      sub_1000B7C18(v399, v400, v401);
      v402 = sub_100003BCC(&v1523);
      v403 = v1570;
      sub_10001B350(v402, v404, v405, v1570);
      v406 = sub_100003BCC(&v1526);
      sub_10001B350(v406, v407, v408, v1568);
      v409 = *v398;
      sub_1000BAF48();
      sub_100003A40(v337);
      if (v364)
      {
        v763 = v1576;
        sub_100019F48();
        sub_1007D9B48();
        sub_1000D4314();

        v764 = v1409;
        if (v339 != 1)
        {
          sub_1000180EC(v337, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();

        v763 = v1576;
        v764 = v1409;
      }

      v765 = v1552;
      LODWORD(v1577) = *(v1552 + v763[6]);
      v766 = [objc_opt_self() currentDevice];
      v767 = [v766 userInterfaceIdiom];

      if (v767 && *(v765 + v763[9] + 8) == 2)
      {
        v768 = 1;
      }

      else
      {
        v768 = *(v765 + v763[7]);
      }

      sub_1000180EC(v353, &qword_100CA6608, &unk_100A31430);
      sub_1000870F8(&v1571);
      sub_100095588();
      v769 = sub_100007FC4();
      sub_1000038B4(v769, v770, v377);
      v771 = v1423;
      if (v364)
      {
        sub_100087FF4(v763[8]);
        sub_100095588();
        v772 = sub_100007FC4();
        sub_1000038B4(v772, v773, v377);
        if (!v364)
        {
          sub_1000180EC(v764, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100004B40();
        sub_1000519E0();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v774, v775, v776, v377);
      }

      sub_1000436AC(&v1523);
      sub_100051BBC();
      sub_100003BDC(v771);
      if (v364)
      {
        sub_100075000();
        v777 = v1552;
        sub_1007D9B48();
        sub_100003BDC(v771);
        if (!v364)
        {
          sub_1000180EC(v771, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
        v777 = v1552;
      }

      sub_1000325C0();
      sub_100051BBC();
      sub_10001627C(v403, 1);
      if (v364)
      {
        sub_100028B60();
        sub_1007D9B48();
        sub_100005404(v403);
        if (!v364)
        {
          sub_1000180EC(v403, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_1007D9BA0();
      }

      v778 = *(v777 + v763[11]);
      sub_10001CDA4();
      sub_1000B0004(v777, v779);
      v780 = v1410;
      *v1410 = v409;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v780 + v763[6]) = v1577;
      *(v780 + v763[7]) = v768;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();
      *(v780 + v763[11]) = v778;
      sub_10000E7B0();
      sub_10001B350(v781, v782, v783, v763);
      v784 = v1514;
      v785 = *(v1514 + 16);
      v786 = v1563;
      sub_100020FE8();
      v787 = v1550;
      v785();
      type metadata accessor for PreviewLocation(0);
      swift_storeEnumTagMultiPayload();
      v788 = type metadata accessor for LocationPreviewViewState(0);
      type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      (v785)(v786 + *(v788 + 24), v409, v787);
      swift_storeEnumTagMultiPayload();
      v789 = v1566;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v790, v791, v792, v789);
      sub_10006A8E0();
      v1367 = v780;
      v1368 = v786;
      v793 = sub_100088338();
      v794 = v1465;
      v795 = v1468;
      v796 = v1473;
      v797 = v1476;
      v798 = v1479;
      v799 = v1481;
      v801 = sub_1000D2C20(v793, v800, v1465, v1468, v1473, v1476, v1479, v1481, v1367, v1368, v1369, v1370, v1371, v1372, v1373, v1374, v1375, v1376, v1377);
      sub_1000180EC(v786, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v780, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v799, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v798, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v797, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v796, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v795, &qword_100CA6638, &unk_100A31460);
      v802 = v794;
      v358 = v801;
      sub_1000180EC(v802, &qword_100CA6640, qword_100A32640);
      sub_1000180EC(v1541, &qword_100CA6600, &unk_100A5C400);
      (*(v784 + 8))(v1549, v1550);
      return v358;
    case 5u:
      sub_1007D9BA0();
      static Solarium.isEnabled.getter();
      v491 = sub_100003BCC(&v1577);
      sub_10001B350(v491, v492, v493, v1578);
      v494 = sub_100003BCC(&v1566);
      sub_10001B350(v494, v495, v496, v1569);
      v497 = sub_100003BCC(&v1567);
      sub_10001B350(v497, v498, v499, v1573);
      v500 = sub_100003BCC(&v1569);
      sub_10001B350(v500, v501, v502, v1571);
      v503 = sub_100003BCC(&v1570);
      sub_10001B350(v503, v504, v505, v1574);
      v506 = sub_100003BCC(&v1572);
      sub_10001B350(v506, v507, v508, v1575);
      v509 = sub_100003BCC(&v1574);
      sub_1000C8F88(v509, v510, v511);
      sub_10001F850();
      v512 = v1579;
      v1565 = v513;
      sub_1000131DC();
      sub_1007D9B48();
      v514 = sub_100020EE4(&v1516);
      sub_1000B7C18(v514, v515, v516);
      v517 = sub_100003BCC(&v1573);
      sub_10001B350(v517, v518, v519, v1570);
      v520 = sub_100003BCC(&v1575);
      sub_10001B350(v520, v521, v522, v1568);
      v523 = *v343;
      sub_1000BAF48();
      sub_100003A40(v337);
      if (v364)
      {
        v986 = v1576;
        sub_100019F48();
        sub_1007D9B48();
        sub_1000D4314();

        v987 = v1439;
        v988 = v1432;
        v989 = v1412;
        if (v339 != 1)
        {
          sub_1000180EC(v337, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();

        v986 = v1576;
        v987 = v1439;
        v988 = v1432;
        v989 = v1412;
      }

      v990 = v1458;
      v991 = *(v1458 + v986[6]);
      v992 = [objc_opt_self() currentDevice];
      v993 = v990;
      v994 = [v992 userInterfaceIdiom];

      if (v994 && *(v993 + v986[9] + 8) == 2)
      {
        v995 = 1;
      }

      else
      {
        v995 = *(v993 + v986[7]);
      }

      sub_1000870F8(&v1577);
      sub_100095588();
      v996 = sub_100007FC4();
      v997 = v1578;
      sub_10001627C(v996, v998);
      if (v364)
      {
        sub_100095588();
        sub_100005404(v989);
        if (!v364)
        {
          sub_1000180EC(v989, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100004B40();
        sub_1000519E0();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v999, v1000, v1001, v997);
      }

      sub_1000519E0();
      sub_100095588();
      v1002 = sub_100007FC4();
      sub_10001627C(v1002, v1003);
      if (v364)
      {
        sub_100075000();
        sub_1007D9B48();
        sub_100005404(v989);
        if (!v364)
        {
          sub_1000180EC(v989, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
      }

      sub_100095588();
      sub_10001627C(v988, 1);
      if (v364)
      {
        sub_100028B60();
        sub_1007D9B48();
        sub_100005404(v988);
        v1004 = v1390;
        if (!v364)
        {
          sub_1000180EC(v988, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_1007D9BA0();
        v1004 = v1390;
      }

      v1005 = *(v993 + v986[11]);
      v1006 = v1546;
      *v1546 = v523;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v1006 + v986[6]) = v991;
      *(v1006 + v986[7]) = v995;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();
      *(v1006 + v986[11]) = v1005;
      sub_1000180EC(v1545, &qword_100CA65F0, &unk_100A5C3F0);
      sub_1000180EC(v1543, &qword_100CA65F8, &dword_100A31420);
      sub_1000180EC(v1484, &qword_100CA6608, &unk_100A31430);
      sub_10001CDA4();
      sub_1000B0004(v993, v1007);
      sub_10000E7B0();
      sub_10001B350(v1008, v1009, v1010, v986);
      v1011 = v1551;
      sub_1000131DC();
      sub_1007D9B48();
      type metadata accessor for PreviewLocation(0);
      swift_storeEnumTagMultiPayload();
      v1012 = type metadata accessor for LocationPreviewViewState(0);
      type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      v1013 = (v991 + *(v1012 + 24));
      v1014 = *(v1011 + 48);
      *v1013 = *(v1011 + 40);
      v1013[1] = v1014;
      swift_storeEnumTagMultiPayload();
      v1015 = v1566;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v1016, v1017, v1018, v1015);
      sub_10004EAA8();
      sub_100021424();
      sub_1007D9B48();
      sub_1000BAF48();
      sub_1000D4314();

      if (v1015 == 1)
      {
        sub_1000180EC(v1011, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000253DC();
        sub_1000B0004(v987, v1019);
        sub_100010BDC();
        sub_1007D9BA0();
      }

      sub_1001721F4();
      v1020 = v1401;
      v1021 = v1394;
      sub_100010BDC();
      sub_1007D9BA0();
      v1022 = *(v512 + 16);
      LODWORD(v1577) = *(v512 + 24);
      sub_1000870F8(&v1566);
      sub_100095588();
      sub_100005404(v1004);
      v1023 = v1418;
      if (v364)
      {
        sub_10003A34C();
        sub_1007D9B48();
        v1024 = sub_100007FC4();
        v1026 = sub_100024D10(v1024, v1025, v1011);

        if (v1026 != 1)
        {
          sub_1000180EC(v1004, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000300CC();
        sub_1007D9BA0();
      }

      sub_1000C893C(&v1567);
      sub_100095588();
      sub_100003BFC(v1021);
      if (v364)
      {
        sub_10002014C(v512 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100031F70();
        sub_1007D9B48();
        sub_100003BFC(v1021);
        v1027 = v1426;
        v1028 = v1406;
        if (!v364)
        {
          sub_1000180EC(v1021, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100024A5C();
        sub_1007D9BA0();
        v1027 = v1426;
        v1028 = v1406;
      }

      sub_100095588();
      sub_100003A40(v1020);
      if (v364)
      {
        sub_100018744();
        sub_1007D9B48();
        sub_100003A40(v1020);
        v1029 = v1434;
        if (!v364)
        {
          sub_1000180EC(v1020, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10003181C();
        sub_1007D9BA0();
        v1029 = v1434;
      }

      sub_100030224(&v1570);
      sub_100095588();
      v1030 = sub_1000162A4();
      sub_1000038B4(v1030, v1031, v1574);
      if (v364)
      {
        sub_100052138();
        sub_1007D9B48();
        sub_100003BDC(v1028);
        if (!v364)
        {
          sub_1000180EC(v1028, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100037D68();
        sub_1007D9BA0();
      }

      sub_100095588();
      v1032 = sub_100016298();
      sub_100036E54(v1032, v1033);
      if (v364)
      {
        sub_10000EDC0();
        sub_1007D9B48();
        sub_100003BFC(v1023);
        if (!v364)
        {
          sub_1000180EC(v1023, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10002CAB4();
        sub_1007D9BA0();
      }

      sub_1000436AC(&v1574);
      sub_100095588();
      sub_10000554C(v1027);
      if (v364)
      {
        sub_100020B80();
        sub_1007D9B48();
        sub_10000554C(v1027);
        if (!v364)
        {
          sub_1000180EC(v1027, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10003C81C();
        sub_1007D9BA0();
      }

      sub_100095588();
      sub_1000868B8();
      v1578 = v1022;
      if (v364)
      {
        sub_10001F850();
        sub_1007D9B48();
        sub_1000868B8();
        if (!v364)
        {
          sub_1000180EC(v1029, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100017DF4();
        sub_1007D9BA0();
      }

      sub_100010BDC();
      sub_1000113EC();
      sub_1007D9BA0();
      sub_100087240();
      sub_100021DD8();
      v1034 = sub_100087104();
      sub_100003B6C(v1034);
      v1035 = sub_100030540();
      sub_10003E038(v1035, v1577, v1523, v1525[1], v1529[0], v1529[3], v1529[6], v1530[1], v1367, v1368, v1369, v1370, v1371, v1372, v1373, v1374, v1375, v1376, v1377, v1378, v1379, v1380, v1381, v1382, v1383, v1384, v1385, v1386, v1387, v1388, v1389, v1390, v1391, v1392, v1393);
      v358 = v1036;

      sub_1000180EC(v1517, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1546, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1544, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1542, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1540, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1539, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1537, &qword_100CA6638, &unk_100A31460);
      sub_1000180EC(v1536, &qword_100CA6640, qword_100A32640);
      sub_1000180EC(v1547, &qword_100CA6600, &unk_100A5C400);
      v936 = type metadata accessor for SearchLocation;
      v937 = v1551;
      goto LABEL_286;
    case 6u:
      v549 = v1557;
      v358 = v1512;
      v550 = v1564;
      (*(v1557 + 32))(v1512, v357, v1564);
      v551 = v1579 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_100020FE8();
      sub_100095588();
      v552 = v1578;
      sub_1000038B4(v347, 1, v1578);
      if (v364)
      {
        sub_1000180EC(v347, &qword_100CA6600, &unk_100A5C400);
        v553 = sub_100049D00();
        sub_10001B350(v553, v554, v555, v1574);
        v556 = sub_100003BCC(&v1581);
        sub_10001B350(v556, v557, v558, v1575);
        v559 = sub_100003BCC(&v1580);
        sub_10001B350(v559, v560, v561, v1572);
        sub_10001F850();
        sub_1000519E0();
        sub_1007D9B48();
        v562 = v1532;
        sub_100003934();
        sub_10001B350(v563, v564, v565, v1567);
        v566 = v1533;
        swift_storeEnumTagMultiPayload();
        v567 = v549;
        (*(v549 + 16))(&v566[*(v552 + 28)], v358, v550);
        sub_10000E7B0();
        sub_10001B350(v568, v569, v570, v550);
        *v566 = 0;
        *(v566 + 1) = 0xE000000000000000;
        v566[*(v552 + 24)] = 0;
        v571 = sub_10000FEF4();
        sub_10001B350(v571, v572, v573, v552);
        v574 = v1559;
        sub_100003934();
        sub_1000888F0(v575, v576, v577);
        v579 = *(v578 - 256);
        sub_1000C8850();
        sub_10001B350(v580, v581, v582, v583);
        v584 = v1534;
        sub_1000519D4();
        sub_10081B470();
        sub_1000180EC(v579, &qword_100CA65F0, &unk_100A5C3F0);
        sub_1000180EC(v574, &qword_100CA65F8, &dword_100A31420);
        sub_1000180EC(v566, &qword_100CA6600, &unk_100A5C400);
        sub_1000180EC(v562, &qword_100CA6608, &unk_100A31430);
        sub_10001CDA4();
        sub_1000B0004(v358, v585);
        sub_10000E7B0();
        sub_10001B350(v586, v587, v588, v1576);
        v589 = v1563;
        v590 = sub_100016A04();
        sub_10001B350(v590, v591, v592, v1566);
        sub_10006A8E0();
        v1367 = v584;
        v1368 = v589;
        v593 = sub_100052768();
        v595 = *(v594 - 256);
        v596 = v1560;
        v597 = v1561;
        v598 = v1562;
        v599 = v1556;
        v600 = v1555;
        sub_1000D2C20(v593, v601, v595, v1560, v1561, v1562, v1556, v1555, v1367, v1368, v1369, v1370, v1371, v1372, v1373, v1374, v1375, v1376, v1377);
        sub_1000378A4();
        sub_1000180EC(v589, &qword_100CA65E8, &unk_100A31410);
        sub_1000180EC(v584, &qword_100CA6610, &unk_100A32610);
        sub_1000180EC(v600, &qword_100CA6618, &unk_100A31440);
        sub_1000180EC(v599, &qword_100CA6620, &unk_100A32620);
        sub_1000180EC(v598, &qword_100CA6628, &unk_100A31450);
        sub_1000180EC(v597, &qword_100CA6630, &unk_100A32630);
        sub_1000180EC(v596, &qword_100CA6638, &unk_100A31460);
        sub_1000180EC(v595, &qword_100CA6640, qword_100A32640);
        (*(v567 + 8))(v1512, v1564);
      }

      else
      {
        sub_100004B40();
        sub_1000113EC();
        sub_1007D9BA0();
        v1061 = sub_100049D00();
        sub_10001B350(v1061, v1062, v1063, v1574);
        v1064 = sub_100003BCC(&v1581);
        sub_10001B350(v1064, v1065, v1066, v1575);
        v1067 = sub_100003BCC(&v1580);
        sub_10001B350(v1067, v1068, v1069, v1572);
        sub_10001F850();
        sub_1000131DC();
        sub_1007D9B48();
        v1070 = v1532;
        sub_100003934();
        sub_10001B350(v1071, v1072, v1073, v1567);
        v1074 = sub_100020EE4(v1480);
        sub_10001B350(v1074, v1075, v1076, v1565);
        v1077 = sub_1000E3254();
        v1078(v1077);
        v1079 = sub_10000FEF4();
        sub_10001B350(v1079, v1080, v1081, v550);
        v1082 = v1533;
        sub_10036871C();
        sub_1000180EC(v347, &qword_100CA65D8, &unk_100A3D9D0);
        sub_1000180EC(v550, &qword_100CB0250, &qword_100A3FF58);
        sub_10000E7B0();
        sub_10001B350(v1083, v1084, v1085, v552);
        v1086 = sub_100020EE4(&v1583);
        sub_1000888F0(v1086, v1087, v1088);
        v1090 = *(v1089 - 256);
        sub_1000C8850();
        sub_10001B350(v1091, v1092, v1093, v1094);
        sub_100171230();
        sub_1000519D4();
        sub_10081B470();
        sub_1000180EC(v1090, &qword_100CA65F0, &unk_100A5C3F0);
        sub_1000180EC(v550, &qword_100CA65F8, &dword_100A31420);
        sub_1000180EC(v1082, &qword_100CA6600, &unk_100A5C400);
        sub_1000180EC(v1070, &qword_100CA6608, &unk_100A31430);
        sub_10001CDA4();
        sub_1000B0004(v551, v1095);
        sub_10000E7B0();
        sub_10001B350(v1096, v1097, v1098, v1576);
        v1099 = v1563;
        v1100 = sub_100016A04();
        sub_10001B350(v1100, v1101, v1102, v1566);
        sub_10006A8E0();
        v1367 = v552;
        v1368 = v1099;
        v1103 = sub_100052768();
        v1105 = *(v1104 - 256);
        v1106 = v1560;
        v1107 = v1561;
        v1108 = v1562;
        v1109 = v1556;
        v1110 = v549;
        v1111 = v1555;
        sub_1000D2C20(v1103, v1112, v1105, v1560, v1561, v1562, v1556, v1555, v1367, v1368, v1369, v1370, v1371, v1372, v1373, v1374, v1375, v1376, v1377);
        sub_1000378A4();
        sub_1000180EC(v1099, &qword_100CA65E8, &unk_100A31410);
        sub_1000180EC(v552, &qword_100CA6610, &unk_100A32610);
        sub_1000180EC(v1111, &qword_100CA6618, &unk_100A31440);
        sub_1000180EC(v1109, &qword_100CA6620, &unk_100A32620);
        sub_1000180EC(v1108, &qword_100CA6628, &unk_100A31450);
        sub_1000180EC(v1107, &qword_100CA6630, &unk_100A32630);
        sub_1000180EC(v1106, &qword_100CA6638, &unk_100A31460);
        sub_1000180EC(v1105, &qword_100CA6640, qword_100A32640);
        sub_100023260();
        sub_1000B0004(v1446, v1113);
        (*(v1110 + 8))(v1512, v1564);
      }

      return v358;
    case 7u:
      swift_storeEnumTagMultiPayload();
      v486 = v353;
      v487 = 0xE000000000000000;
LABEL_284:
      v358 = sub_1007D76EC(v486, 0, v487, v1579);
LABEL_285:
      sub_100011840();
      v937 = v353;
      goto LABEL_286;
    case 8u:
      sub_10001F850();
      v358 = v1579;
      sub_1007D9B48();
      v637 = *v336;
      v638 = v1576;
      if (*(v336 + v1576[9] + 8) == 1)
      {
        v639 = objc_opt_self();

        v640 = [v639 currentDevice];
        [v640 userInterfaceIdiom];

        LODWORD(v640) = *(v336 + *(v638 + 28));
        sub_10001CDA4();
        sub_1000B0004(v336, v641);
        v364 = v640 == 1;
        v643 = v1574;
        v642 = v1575;
        v644 = v1573;
        if (v364)
        {
          goto LABEL_113;
        }
      }

      else
      {

        sub_10001CDA4();
        sub_1000B0004(v336, v1163);
        v643 = v1574;
        v642 = v1575;
        v644 = v1573;
      }

      v1164 = sub_100003BCC(v1469);
      sub_10001B350(v1164, v1165, v1166, v1569);
      v1167 = sub_100003BCC(&v1470);
      sub_10001B350(v1167, v1168, v1169, v644);
      v1170 = sub_100003BCC(&v1471);
      sub_10001B350(v1170, v1171, v1172, v1571);
      v1173 = sub_100003BCC(v1472);
      sub_10001B350(v1173, v1174, v1175, v643);
      v1176 = sub_100003BCC(&v1473);
      sub_10001B350(v1176, v1177, v1178, v642);
      v1179 = sub_100003BCC(v1474);
      sub_10001B350(v1179, v1180, v1181, v1572);
      sub_10001F850();
      sub_1007D9B48();
      v1182 = *(v637 + 16);
      LODWORD(v1572) = *(v637 + 24);
      v1183 = *(v637 + 25);
      v1184 = *(v637 + 26);
      v1185 = *(v637 + 32);
      v1186 = *(v637 + 40);
      v1573 = v1182;
      v1574 = v1185;
      v1188 = *(v637 + 48);
      v1187 = *(v637 + 56);
      v1189 = v637;
      v1190 = *(v637 + 72);
      v1191 = *(v1189 + 80);
      v1192 = *(v1189 + 88);
      v1193 = *(v1189 + 89);
      v1577 = v1189;
      v1194 = *(v1189 + 27);
      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      v1575 = v1191;
      v1195 = sub_100042DA8(v1573, v1572, v1183, v1184, v1194, v1574, v1186, v1188, v1187, 0, v1190, v1191, v1192, v1193);
      sub_100003934();
      v1196 = v1567;
      sub_10001B350(v1197, v1198, v1199, v1567);
      v1200 = sub_100003BCC(v1475);
      v1201 = v1578;
      sub_10001B350(v1200, v1202, v1203, v1578);
      v1204 = sub_100003BCC(v1477);
      sub_10001B350(v1204, v1205, v1206, v1570);
      v1207 = sub_100003BCC(v1478);
      v1208 = v1568;
      sub_10001B350(v1207, v1209, v1210, v1568);
      sub_1000BAF48();
      sub_10000554C(v1191);
      v1574 = v1195;
      if (v364)
      {
        v1214 = v1576;
        sub_100019F48();
        sub_100087FF4(v1211);
        sub_1007D9B48();
        v1212 = sub_100024D10(v1191, 1, v1196);

        v1215 = v1384;
        v1216 = v1383;
        if (v1212 != 1)
        {
          sub_1000180EC(v1191, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();

        v1214 = v1576;
        v1215 = v1384;
        v1216 = v1383;
      }

      v1217 = v1455;
      LODWORD(v1575) = *(v1455 + v1214[6]);
      v1218 = sub_1000B010C();
      sub_1000180EC(v1452, &qword_100CA6608, &unk_100A31430);
      sub_100051BBC();
      v1219 = sub_100016298();
      sub_1000038B4(v1219, v1220, v1201);
      v358 = v1208;
      if (v364)
      {
        sub_100095588();
        v1221 = sub_100016298();
        sub_1000038B4(v1221, v1222, v1201);
        if (!v364)
        {
          sub_1000180EC(v1216, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100004B40();
        sub_100021424();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v1223, v1224, v1225, v1201);
      }

      sub_1000C893C(v1477);
      sub_100051BBC();
      sub_100003BDC(v1215);
      v1226 = v1563;
      if (v364)
      {
        sub_100075000();
        sub_1007D9B48();
        sub_100003BDC(v1215);
        v1227 = v1574;
        if (!v364)
        {
          sub_1000180EC(v1215, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
        v1227 = v1574;
      }

      sub_100020FE8();
      sub_100051BBC();
      if (sub_100024D10(v1215, 1, v1208) == 1)
      {
        sub_100028B60();
        sub_1007D9B48();
        sub_1000038B4(v1215, 1, v1208);
        if (!v364)
        {
          sub_1000180EC(v1215, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_1007D9BA0();
      }

      v1228 = *(v1217 + v1214[11]);
      sub_10001CDA4();
      sub_1000B0004(v1217, v1229);
      v1230 = v1382;
      *v1382 = v1227;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v1230 + v1214[6]) = v1575;
      *(v1230 + v1214[7]) = v1218 & 1;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();

      *(v1230 + v1214[11]) = v1228;
      v1231 = sub_10000FEF4();
      sub_10001B350(v1231, v1232, v1233, v1214);
      sub_100003934();
      sub_10001B350(v1234, v1235, v1236, v1566);
      sub_10006A8E0();
      v1367 = v1230;
      v1368 = v1226;
      v1237 = sub_100088338();
      v827 = v1447;
      v1238 = v1448;
      v1239 = v1449;
      v1240 = v1450;
      v1241 = v1451;
      v1242 = v1453;
      sub_1000D2C20(v1237, v1243, v1447, v1448, v1449, v1450, v1451, v1453, v1367, v1368, v1369, v1370, v1371, v1372, v1373, v1374, v1375, v1376, v1377);
      sub_1000378A4();

      sub_1000180EC(v1226, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1230, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1242, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1241, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1240, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1239, &qword_100CA6630, &unk_100A32630);
      v1060 = v1238;
LABEL_302:
      sub_1000180EC(v1060, &qword_100CA6638, &unk_100A31460);
      v1244 = v827;
      goto LABEL_306;
    case 9u:
      v435 = &_s7SwiftUI23_LazyLayout_Subviews_V1V0E8IteratorVMa_ptr_0;
      sub_10001F850();
      v358 = v1579;
      sub_1007D9B48();
      v436 = *v327;
      v437 = v1576;
      if (*(v327 + v1576[9] + 8) == 1)
      {
        v438 = objc_opt_self();

        v439 = [v438 currentDevice];
        [v439 userInterfaceIdiom];

        v435 = *(v327 + *(v437 + 28));
        sub_10001CDA4();
        sub_1000B0004(v327, v440);
        v442 = v1574;
        v441 = v1575;
        v443 = v1578;
        if (v435 == 1)
        {
          goto LABEL_113;
        }
      }

      else
      {

        sub_10001CDA4();
        sub_1000B0004(v327, v838);
        v442 = v1574;
        v441 = v1575;
        v443 = v1578;
      }

      v839 = sub_100049D00();
      sub_10001B350(v839, v840, v841, v442);
      v842 = sub_100071608(&v1581);
      sub_10001B350(v842, v843, v844, v441);
      v845 = sub_1000B9A6C(&v1580);
      sub_10001B350(v845, v846, v847, v1572);
      sub_10001F850();
      sub_1000113EC();
      sub_1007D9B48();
      sub_1000519D4();
      sub_100615B60(v848, v849, v850, v851, 3, 0, 0, 0, 1, 0, 0, 0, 2, 2, v436);
      v852 = v1532;
      v853 = sub_100016A04();
      sub_10001B350(v853, v854, v855, v1567);
      v1577 = v436;
      v856 = v1533;
      sub_100003934();
      sub_10001B350(v857, v858, v859, v443);
      v860 = sub_100020FBC(&v1583);
      sub_1000888F0(v860, v861, v862);
      v864 = *(v863 - 256);
      sub_1000C8850();
      sub_10001B350(v865, v866, v867, v868);
      v869 = v1531;
      sub_1000884B0();
      sub_10081B470();

      sub_1000180EC(v864, &qword_100CA65F0, &unk_100A5C3F0);
      sub_1000180EC(v442, &qword_100CA65F8, &dword_100A31420);
      sub_1000180EC(v856, &qword_100CA6600, &unk_100A5C400);
      sub_1000180EC(v852, &qword_100CA6608, &unk_100A31430);
      sub_1000B0004(v435, type metadata accessor for ViewState);
      v870 = v1534;
      sub_10081C1F4(v1534);
      sub_1000B0004(v869, type metadata accessor for ViewState);
      sub_10000E7B0();
      sub_10001B350(v871, v872, v873, v1576);
      v874 = v1563;
      v875 = v1566;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v876, v877, v878, v875);
      sub_1000201D4();
      v879 = sub_100052768();
      v881 = *(v880 - 256);
      v882 = v1560;
      v883 = v1561;
      v884 = v1562;
      sub_1000D2C20(v879, v885, v881, v1560, v1561, v1562, &MainInitialStateProvider, v437, v870, v874, v1354, v1355, v1356, v1357, v1359, v1361, v1363, v1365, v358);
      sub_1000378A4();

      sub_1000180EC(v874, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v870, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v437, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(&MainInitialStateProvider, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v884, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v883, &qword_100CA6630, &unk_100A32630);
      v886 = v882;
      goto LABEL_305;
    case 0xAu:
      v602 = v1443;
      v603 = v1579;
      sub_1007D95D8(v1579, v1443);
      v604 = sub_100003BCC(v1486);
      sub_10001B350(v604, v605, v606, v1569);
      v607 = sub_100003BCC(v1494);
      sub_10001B350(v607, v608, v609, v1573);
      v610 = sub_100003BCC(&v1501);
      sub_10001B350(v610, v611, v612, v1571);
      v613 = sub_100003BCC(&v1509);
      sub_10001B350(v613, v614, v615, v1574);
      v616 = sub_100003BCC(&v1515);
      sub_10001B350(v616, v617, v618, v1575);
      v619 = sub_100003BCC(&v1522);
      sub_1000C8F88(v619, v620, v621);
      sub_10001F850();
      v1565 = v622;
      sub_1000325C0();
      sub_1007D9B48();
      v623 = sub_100020EE4(v1507);
      sub_1000B7C18(v623, v624, v625);
      sub_100020FE8();
      sub_1007D9B48();
      v626 = sub_10000FEF4();
      sub_10001B350(v626, v627, v628, v1578);
      v629 = v1420;
      sub_100003934();
      sub_10001B350(v630, v631, v632, v1570);
      v633 = sub_100003BCC(&v1527);
      sub_10001B350(v633, v634, v635, v1568);
      v636 = *v357;
      sub_1000BAF48();
      sub_100003A40(v337);
      if (v364)
      {
        v1114 = v1576;
        sub_100019F48();
        sub_1007D9B48();
        sub_1000D4314();

        v1115 = v1438;
        v1116 = v1413;
        if (v339 != 1)
        {
          sub_1000180EC(v337, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();

        v1114 = v1576;
        v1115 = v1438;
        v1116 = v1413;
      }

      v1117 = *(v1554 + v1114[6]);
      LODWORD(v1577) = sub_1000B010C();
      sub_1000180EC(v1480[0], &qword_100CA6608, &unk_100A31430);
      sub_100023260();
      sub_1000B0004(v602, v1118);
      sub_100051BBC();
      v1119 = sub_1000201BC();
      v1120 = v1578;
      sub_1000038B4(v1119, v1121, v1578);
      if (v364)
      {
        sub_100095588();
        v1122 = sub_1000201BC();
        sub_1000038B4(v1122, v1123, v1120);
        if (!v364)
        {
          sub_1000180EC(v1116, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100004B40();
        sub_100037814();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v1124, v1125, v1126, v1120);
      }

      sub_1000519E0();
      sub_100051BBC();
      v1127 = sub_100007FC4();
      v1128 = v1570;
      sub_1000038B4(v1127, v1129, v1570);
      if (v364)
      {
        sub_100075000();
        sub_100087FF4(v1130);
        sub_1007D9B48();
        v1131 = sub_100007FC4();
        sub_1000038B4(v1131, v1132, v1128);
        if (!v364)
        {
          sub_1000180EC(v629, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
      }

      sub_100021424();
      sub_100051BBC();
      sub_100003BFC(v1128);
      if (v364)
      {
        sub_100028B60();
        sub_100087FF4(v1133);
        sub_1007D9B48();
        sub_100003BFC(v1128);
        v1134 = v1404;
        v1135 = v1577;
        if (!v364)
        {
          sub_1000180EC(v1128, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_1007D9BA0();
        v1134 = v1404;
        v1135 = v1577;
      }

      v1136 = *(v1554 + v1114[11]);
      sub_10001CDA4();
      sub_1000B0004(v1137, v1138);
      v1139 = v1428;
      *v1428 = v636;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v1139 + v1114[6]) = v1117;
      *(v1139 + v1114[7]) = v1135 & 1;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();
      *(v1139 + v1114[11]) = v1136;
      sub_10000E7B0();
      sub_10001B350(v1140, v1141, v1142, v1114);
      v1143 = v1441;
      sub_100003934();
      sub_10001B350(v1144, v1145, v1146, v1566);
      sub_10004EAA8();
      sub_1000325C0();
      sub_1007D9B48();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v1143);
      if (v364)
      {
        sub_1000180EC(v1143, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000253DC();
        sub_1000B0004(v1115, v1147);
        sub_100010BDC();
        sub_1007D9BA0();
      }

      sub_1001721F4();
      v1148 = v1391;
      sub_100010BDC();
      sub_1007D9BA0();
      v1149 = *(v603 + 16);
      LODWORD(v1577) = *(v603 + 24);
      sub_1000325C0();
      sub_100051BBC();
      sub_100005404(v1115);
      v1578 = v1149;
      if (v364)
      {
        sub_10003A34C();
        sub_1007D9B48();
        v1150 = sub_100024D10(v1115, 1, v1117);

        if (v1150 != 1)
        {
          sub_1000180EC(v1115, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000300CC();
        sub_1007D9BA0();
      }

      sub_1000C893C(v1494);
      sub_100051BBC();
      sub_100003BFC(v1148);
      v1151 = v1134;
      if (v364)
      {
        sub_10002014C(v603 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100031F70();
        sub_1007D9B48();
        sub_100003BFC(v1148);
        v1152 = v1421;
        v1153 = v1416;
        v1154 = v1395;
        if (!v364)
        {
          sub_1000180EC(v1148, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100024A5C();
        sub_1007D9BA0();
        v1152 = v1421;
        v1153 = v1416;
        v1154 = v1395;
      }

      sub_100051BBC();
      sub_100003A40(v1154);
      if (v364)
      {
        sub_100018744();
        sub_1007D9B48();
        sub_100003A40(v1154);
        v1155 = v1429;
        if (!v364)
        {
          sub_1000180EC(v1154, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10003181C();
        sub_1007D9BA0();
        v1155 = v1429;
      }

      sub_1000870F8(&v1509);
      sub_100051BBC();
      v1156 = sub_100007FC4();
      v1157 = v1574;
      sub_1000038B4(v1156, v1158, v1574);
      if (v364)
      {
        sub_100052138();
        sub_1007D9B48();
        v1159 = sub_100007FC4();
        sub_1000038B4(v1159, v1160, v1157);
        if (!v364)
        {
          sub_1000180EC(v1151, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100037D68();
        sub_1007D9BA0();
      }

      sub_100030224(&v1515);
      sub_100051BBC();
      sub_100003BDC(v1153);
      if (v364)
      {
        sub_10000EDC0();
        sub_1007D9B48();
        sub_100003BDC(v1153);
        if (!v364)
        {
          sub_1000180EC(v1153, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10002CAB4();
        sub_1007D9BA0();
      }

      sub_1000436AC(&v1522);
      sub_100051BBC();
      sub_10000554C(v1152);
      if (v364)
      {
        sub_100020B80();
        sub_1007D9B48();
        sub_10000554C(v1152);
        if (!v364)
        {
          sub_1000180EC(v1152, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10003C81C();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      sub_1000868B8();
      if (v364)
      {
        sub_10001F850();
        sub_1007D9B48();
        sub_1000868B8();
        if (!v364)
        {
          sub_1000180EC(v1155, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100017DF4();
        sub_1007D9BA0();
      }

      sub_100010BDC();
      sub_1000113EC();
      sub_1007D9BA0();
      sub_100087240();
      sub_100021DD8();
      v1161 = sub_100087104();
      sub_100003B6C(v1161);
      v751 = sub_100030540();
      v752 = v1577;
      v753 = v1519;
      v754 = v1520;
      v755 = v1522;
      v756 = v1525[0];
      v757 = v1528;
      v758 = &v1551;
      goto LABEL_276;
    case 0xBu:
      sub_10004EAA8();
      v358 = v1579;
      sub_100020FE8();
      sub_1007D9B48();
      sub_100010BDC();
      sub_100020FE8();
      sub_1007D9BA0();
      v372 = v1566;
      v373 = 1 << swift_getEnumCaseMultiPayload();
      v374 = v1578;
      v375 = v1415;
      if ((v373 & 0x3D) != 0)
      {
        v371 = type metadata accessor for ModalViewState;
        goto LABEL_11;
      }

      if ((v373 & 0x82) != 0)
      {
        goto LABEL_288;
      }

      v1296 = sub_100003BCC(&v1396);
      sub_10001B350(v1296, v1297, v1298, v1569);
      v1299 = sub_100003BCC(v1397);
      sub_10001B350(v1299, v1300, v1301, v1573);
      v1302 = sub_100003BCC(v1398);
      sub_10001B350(v1302, v1303, v1304, v1571);
      v1305 = sub_100003BCC(v1399);
      sub_10001B350(v1305, v1306, v1307, v1574);
      v1308 = sub_100003BCC(v1400);
      sub_10001B350(v1308, v1309, v1310, v1575);
      v1311 = sub_100003BCC(&v1401);
      sub_1000C8F88(v1311, v1312, v1313);
      sub_10001F850();
      sub_1007D9B48();
      v1314 = sub_100003BCC(&v1402);
      sub_100042790(v1314, v1315, v1316);
      sub_1000113EC();
      sub_100095588();
      sub_100003BFC(v339);
      if (v364)
      {
        sub_1000180EC(v339, &qword_100CA6600, &unk_100A5C400);
        v1325 = 1;
      }

      else
      {
        v1317 = sub_100020FBC(v1480);
        sub_10001B350(v1317, v1318, v1319, v1565);
        v1320 = v1454;
        v1321 = sub_100016A04();
        sub_10001B350(v1321, v1322, v1323, v1564);
        sub_1000E15A8();
        sub_10036871C();
        sub_1000180EC(v1320, &qword_100CA65D8, &unk_100A3D9D0);
        sub_1000180EC(v336, &qword_100CB0250, &qword_100A3FF58);
        sub_100023260();
        sub_1000B0004(v339, v1324);
        v1325 = 0;
      }

      v1326 = v1568;
      v1327 = v1563;
      v1328 = v1558;
      sub_10001B350(v375, v1325, 1, v374);
      v1329 = sub_100071608(&v1583);
      sub_10001B350(v1329, v1330, v1331, v1570);
      sub_100003934();
      sub_10001B350(v1332, v1333, v1334, v1326);
      v1335 = v1368;
      v1336 = v1377;
      sub_1000884B0();
      v1337 = v1370;
      sub_10081B470();
      sub_1000180EC(v1328, &qword_100CA65F0, &unk_100A5C3F0);
      sub_1000180EC(v374, &qword_100CA65F8, &dword_100A31420);
      sub_1000180EC(v375, &qword_100CA6600, &unk_100A5C400);
      sub_1000180EC(v1336, &qword_100CA6608, &unk_100A31430);
      sub_10001CDA4();
      sub_1000B0004(v1337, v1338);
      sub_10000E7B0();
      sub_10001B350(v1339, v1340, v1341, v327);
      sub_100003934();
      sub_10001B350(v1342, v1343, v1344, v372);
      sub_1000201D4();
      v1345 = sub_100088338();
      v1346 = v1371;
      v1347 = v1372;
      v1348 = v1373;
      v1349 = v1374;
      v1350 = v1375;
      v1351 = v1376;
      sub_1000D2C20(v1345, v1352, v1371, v1372, v1373, v1374, v1375, v1376, v1335, v1327, v1354, v1355, v1356, v1357, v1358, v1360, v1362, v1364, v358);
      sub_1000378A4();
      sub_1000180EC(v1327, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1335, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1351, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1350, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1349, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1348, &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1347, &qword_100CA6638, &unk_100A31460);
      v1244 = v1346;
      goto LABEL_306;
    case 0xCu:
      v410 = sub_100003BCC(v1483);
      sub_10001B350(v410, v411, v412, v1569);
      v413 = sub_100003BCC(v1485);
      sub_10001B350(v413, v414, v415, v1573);
      v416 = sub_100003BCC(v1488);
      sub_10001B350(v416, v417, v418, v1571);
      v419 = sub_100003BCC(v1492);
      sub_10001B350(v419, v420, v421, v1574);
      v422 = sub_100003BCC(v1497);
      sub_10001B350(v422, v423, v424, v1575);
      v425 = sub_100003BCC(&v1502);
      sub_1000C8F88(v425, v426, v427);
      v428 = v1579;
      v430 = v1579 + v429;
      sub_10001F850();
      sub_1007D9B48();
      v431 = sub_1000B9A6C(&v1425);
      sub_100042790(v431, v432, v433);
      sub_1000113EC();
      sub_100095588();
      v434 = v1578;
      sub_100036E54(v339, 1);
      if (v364)
      {
        sub_1000180EC(v339, &qword_100CA6600, &unk_100A5C400);
        sub_10003BBCC();
        v358 = v1414;
      }

      else
      {
        v803 = sub_100020FBC(v1480);
        sub_10001B350(v803, v804, v805, v1565);
        v430 = v1454;
        v806 = sub_100016A04();
        sub_10001B350(v806, v807, v808, v1564);
        v358 = v1414;
        sub_1000E15A8();
        sub_10036871C();
        sub_1000180EC(v430, &qword_100CA65D8, &unk_100A3D9D0);
        sub_1000180EC(v336, &qword_100CB0250, &qword_100A3FF58);
        sub_100023260();
        sub_1000B0004(v339, v809);
        sub_10003BBCC();
      }

      sub_10001B350(v358, v810, 1, v434);
      sub_100003934();
      sub_10001B350(v811, v812, v813, v336);
      v814 = sub_100071608(&v1582);
      sub_10001B350(v814, v815, v816, v339);
      sub_100013370();
      v817 = v1457;
      sub_10081B470();
      sub_1000180EC(v434, &qword_100CA65F0, &unk_100A5C3F0);
      sub_1000180EC(v357, &qword_100CA65F8, &dword_100A31420);
      sub_1000180EC(v358, &qword_100CA6600, &unk_100A5C400);
      sub_1000180EC(v353, &qword_100CA6608, &unk_100A31430);
      sub_10001CDA4();
      sub_1000B0004(v817, v818);
      sub_10000E7B0();
      sub_10001B350(v819, v820, v821, v327);
      sub_100003934();
      sub_10001B350(v822, v823, v824, v430);
      v1366 = v428;
      sub_1000201D4();
      v1353 = v336;
      v825 = sub_100088338();
      v827 = v1460;
      v828 = v1460;
      v829 = v1462;
      v830 = v1462;
      v831 = v1464;
      v832 = v1464;
      v833 = v1467;
      v834 = v1467;
      v835 = v1471;
      v836 = v1471;
      v837 = &v1502;
      goto LABEL_231;
    case 0xDu:
      v524 = sub_100003BCC(v1482);
      sub_10001B350(v524, v525, v526, v1569);
      v527 = sub_100003BCC(&v1484);
      sub_10001B350(v527, v528, v529, v1573);
      v530 = sub_100003BCC(v1487);
      sub_10001B350(v530, v531, v532, v1571);
      v533 = sub_100003BCC(v1491);
      sub_10001B350(v533, v534, v535, v1574);
      v536 = sub_100003BCC(v1496);
      sub_10001B350(v536, v537, v538, v1575);
      v539 = sub_100003BCC(v1500);
      sub_1000C8F88(v539, v540, v541);
      v542 = v1579;
      v544 = v1579 + v543;
      sub_10001F850();
      sub_1007D9B48();
      v545 = sub_1000B9A6C(v1424);
      sub_100042790(v545, v546, v547);
      sub_1000113EC();
      sub_100095588();
      v548 = v1578;
      sub_100036E54(v339, 1);
      if (v364)
      {
        sub_1000180EC(v339, &qword_100CA6600, &unk_100A5C400);
        sub_10003BBCC();
        v358 = v1411;
      }

      else
      {
        v1037 = sub_100020FBC(v1480);
        sub_10001B350(v1037, v1038, v1039, v1565);
        v544 = v1454;
        v1040 = sub_100016A04();
        sub_10001B350(v1040, v1041, v1042, v1564);
        v358 = v1411;
        sub_1000E15A8();
        sub_10036871C();
        sub_1000180EC(v544, &qword_100CA65D8, &unk_100A3D9D0);
        sub_1000180EC(v336, &qword_100CB0250, &qword_100A3FF58);
        sub_100023260();
        sub_1000B0004(v339, v1043);
        sub_10003BBCC();
      }

      sub_10001B350(v358, v1044, 1, v548);
      sub_100003934();
      sub_10001B350(v1045, v1046, v1047, v336);
      v1048 = sub_100071608(&v1582);
      sub_10001B350(v1048, v1049, v1050, v339);
      sub_100013370();
      v1051 = v1456;
      sub_10081B470();
      sub_1000180EC(v548, &qword_100CA65F0, &unk_100A5C3F0);
      sub_1000180EC(v357, &qword_100CA65F8, &dword_100A31420);
      sub_1000180EC(v358, &qword_100CA6600, &unk_100A5C400);
      sub_1000180EC(v353, &qword_100CA6608, &unk_100A31430);
      sub_10001CDA4();
      sub_1000B0004(v1051, v1052);
      sub_10000E7B0();
      sub_10001B350(v1053, v1054, v1055, v327);
      sub_100003934();
      sub_10001B350(v1056, v1057, v1058, v544);
      v1366 = v542;
      sub_1000201D4();
      v1353 = v336;
      v825 = sub_100088338();
      v827 = v1459;
      v828 = v1459;
      v829 = v1461;
      v830 = v1461;
      v831 = v1463;
      v832 = v1463;
      v833 = v1466;
      v834 = v1466;
      v835 = v1470;
      v836 = v1470;
      v837 = v1500;
LABEL_231:
      v1059 = *(v837 - 32);
      sub_1000D2C20(v825, v826, v828, v830, v832, v834, v836, v1059, v1353, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v1354, v1355, v1356, v1357, v1358, v1360, v1362, v1364, v1366);
      sub_1000378A4();
      sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v336, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1059, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v835, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v833, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v831, &qword_100CA6630, &unk_100A32630);
      v1060 = v829;
      goto LABEL_302;
    case 0xEu:
      sub_10001F850();
      v358 = v1579;
      sub_1000113EC();
      sub_1007D9B48();
      v369 = v1576;
      sub_100019F48();
      sub_100020FE8();
      sub_1007D9B48();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10001CDA4();
        sub_1000B0004(v339, v370);
        v371 = type metadata accessor for ViewState.SecondaryViewState;
LABEL_11:
        sub_1000B0004(v347, v371);
        goto LABEL_288;
      }

      v759 = *v347;
      if (*(v339 + *(v369 + 36) + 8) == 1)
      {
        v337 = sub_1000B010C();
        sub_10001CDA4();
        sub_1000B0004(v339, v760);
        v762 = v1574;
        v761 = v1575;
        if ((v337 & 1) == 0)
        {
LABEL_113:

          goto LABEL_288;
        }
      }

      else
      {
        sub_10001CDA4();
        sub_1000B0004(v339, v1245);
        v762 = v1574;
        v761 = v1575;
      }

      v1246 = sub_100049D00();
      sub_10001B350(v1246, v1247, v1248, v762);
      v1249 = sub_100003BCC(&v1581);
      sub_10001B350(v1249, v1250, v1251, v761);
      v1252 = sub_1000B9A6C(&v1580);
      sub_10001B350(v1252, v1253, v1254, v1572);
      sub_10001F850();
      v1255 = v1531;
      sub_1007D9B48();
      type metadata accessor for LocationViewerActiveLocationState(0);
      v1256 = sub_100020EE4(v1403);
      sub_10001B350(v1256, v1257, v1258, v1259);
      v1260 = sub_10089E844(v337, 3, 1, 4, 2, 3, v759);
      sub_1000180EC(v337, &qword_100CA65B8, &unk_100A313D0);
      v1577 = v759;
      v1261 = v1532;
      *v1532 = v1260;
      v1262 = v1567;
      swift_storeEnumTagMultiPayload();
      v1263 = sub_10000FEF4();
      sub_10001B350(v1263, v1264, v1265, v1262);
      v1266 = v1533;
      sub_100003934();
      sub_10001B350(v1267, v1268, v1269, v1578);
      v1270 = v1559;
      sub_100003934();
      sub_1000888F0(v1271, v1272, v1273);
      v1275 = sub_100020EE4(v1274);
      sub_10001B350(v1275, v1276, v1277, v1568);
      sub_100171230();
      sub_1000884B0();
      sub_10081B470();
      sub_1000180EC(v337, &qword_100CA65F0, &unk_100A5C3F0);
      sub_1000180EC(v1270, &qword_100CA65F8, &dword_100A31420);
      sub_1000180EC(v1266, &qword_100CA6600, &unk_100A5C400);
      sub_1000180EC(v1261, &qword_100CA6608, &unk_100A31430);
      sub_10001CDA4();
      sub_1000B0004(v1255, v1278);
      sub_10000E7B0();
      sub_10001B350(v1279, v1280, v1281, v369);
      v1282 = v1563;
      sub_100003934();
      sub_10001B350(v1283, v1284, v1285, v1566);
      sub_1000201D4();
      sub_100052768();
      v881 = *(v1286 - 256);
      sub_1000C908C();
      v1288 = *(v1287 - 256);
      sub_1000D2C20(v1289, v1290, v1291, v1292, v1293, v1294, v1288, v353, v762, v1282, v1354, v1355, v1356, v1357, v1358, v1360, v1362, v1364, v358);
      sub_1000378A4();

      sub_1000180EC(v1282, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v762, &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v353, &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1288, &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v369, &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1270, &qword_100CA6630, &unk_100A32630);
      v886 = v337;
LABEL_305:
      sub_1000180EC(v886, &qword_100CA6638, &unk_100A31460);
      v1244 = v881;
LABEL_306:
      sub_1000180EC(v1244, &qword_100CA6640, qword_100A32640);
      break;
    case 0xFu:
      v358 = v1579;
      sub_1000113EC();
      sub_100095588();
      v450 = v1578;
      sub_100036E54(v339, 1);
      if (v364)
      {
        sub_1000180EC(v339, &qword_100CA6600, &unk_100A5C400);
LABEL_288:
      }

      else
      {
        sub_100004B40();
        sub_100042230();
        sub_1007D9BA0();
        v887 = sub_100049D00();
        sub_10001B350(v887, v888, v889, v1574);
        v890 = sub_100003BCC(&v1581);
        sub_10001B350(v890, v891, v892, v1575);
        v893 = sub_100003BCC(&v1580);
        sub_10001B350(v893, v894, v895, v1572);
        sub_10001F850();
        sub_100021424();
        sub_1007D9B48();
        v896 = sub_1000B9A6C(&v1562);
        sub_10001B350(v896, v897, v898, v1567);
        v900 = *v336;
        v899 = v336[1];
        sub_10000CEC0();
        v901 = v1533;
        sub_1007D9B48();
        v902 = *(v336 + *(v450 + 24));
        sub_100003934();
        sub_10001B350(v903, v904, v905, v1564);
        *v901 = v900;
        *(v901 + 1) = v899;
        v901[*(v450 + 24)] = v902;
        sub_10000E7B0();
        sub_10001B350(v906, v907, v908, v450);
        v909 = sub_100071608(&v1583);
        sub_1000888F0(v909, v910, v911);
        v913 = sub_100020EE4(v912);
        sub_10001B350(v913, v914, v915, v1568);

        v916 = v1534;
        sub_1000519D4();
        sub_10081B470();
        sub_1000180EC(v902, &qword_100CA65F0, &unk_100A5C3F0);
        sub_1000180EC(v450, &qword_100CA65F8, &dword_100A31420);
        sub_1000180EC(v901, &qword_100CA6600, &unk_100A5C400);
        sub_1000180EC(v353, &qword_100CA6608, &unk_100A31430);
        sub_10001CDA4();
        sub_1000B0004(v327, v917);
        sub_10000E7B0();
        sub_10001B350(v918, v919, v920, v1576);
        v921 = v1563;
        v922 = sub_100016A04();
        sub_10001B350(v922, v923, v924, v1566);
        sub_1000201D4();
        sub_100052768();
        v926 = *(v925 - 256);
        sub_1000C908C();
        v928 = *(v927 - 256);
        v929 = v1555;
        sub_1000D2C20(v930, v931, v932, v933, v934, v935, v928, v1555, v916, v921, v1354, v1355, v1356, v1357, v1358, v1360, v1362, v1364, v358);
        sub_1000378A4();
        sub_1000180EC(v921, &qword_100CA65E8, &unk_100A31410);
        sub_1000180EC(v916, &qword_100CA6610, &unk_100A32610);
        sub_1000180EC(v929, &qword_100CA6618, &unk_100A31440);
        sub_1000180EC(v928, &qword_100CA6620, &unk_100A32620);
        sub_1000180EC(v450, &qword_100CA6628, &unk_100A31450);
        sub_1000180EC(v327, &qword_100CA6630, &unk_100A32630);
        sub_1000180EC(v902, &qword_100CA6638, &unk_100A31460);
        sub_1000180EC(v926, &qword_100CA6640, qword_100A32640);
        sub_100023260();
        v937 = v336;
LABEL_286:
        sub_1000B0004(v937, v936);
      }

      break;
    case 0x10u:
      v360 = (v1579 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_1000131DC();
      sub_100095588();
      v361 = sub_1000162A4();
      v362 = v1578;
      sub_1000038B4(v361, v363, v1578);
      if (v364)
      {
        v365 = v1548;
        swift_storeEnumTagMultiPayload();
        sub_100003934();
        v651 = v1564;
        sub_10001B350(v366, v367, v368, v1564);
        *v365 = 0;
        v365[1] = 0xE000000000000000;
        *(v365 + *(v362 + 24)) = 0;
        sub_10000554C(v343);
        v645 = v1571;
        v646 = v1572;
        v647 = v1574;
        v648 = v1575;
        v649 = v1573;
        v650 = v1569;
        v652 = v1445;
        if (!v364)
        {
          sub_1000180EC(v343, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100004B40();
        sub_1007D9BA0();
        v645 = v1571;
        v646 = v1572;
        v647 = v1574;
        v648 = v1575;
        v649 = v1573;
        v650 = v1569;
        v651 = v1564;
        v652 = v1445;
      }

      v653 = sub_100003BCC(v1498);
      sub_10001B350(v653, v654, v655, v650);
      v656 = sub_100003BCC(&v1505);
      sub_10001B350(v656, v657, v658, v649);
      v659 = sub_100003BCC(&v1512);
      sub_10001B350(v659, v660, v661, v645);
      v662 = sub_100003BCC(v1518);
      sub_10001B350(v662, v663, v664, v647);
      v665 = sub_100003BCC(v1525);
      sub_10001B350(v665, v666, v667, v648);
      v668 = sub_100003BCC(&v1528);
      sub_10001B350(v668, v669, v670, v646);
      sub_10001F850();
      sub_100037814();
      sub_1007D9B48();
      v671 = sub_100003BCC(&v1568);
      v672 = v1567;
      sub_10001B350(v671, v673, v674, v1567);
      v675 = v1565;
      swift_storeEnumTagMultiPayload();
      v676 = sub_10000FEF4();
      sub_10001B350(v676, v677, v678, v675);
      sub_100003934();
      sub_10001B350(v679, v680, v681, v651);
      sub_1000113EC();
      sub_100051BBC();
      sub_100003BFC(v649);
      v1577 = v360;
      if (v364)
      {
        sub_10000CEC0();
        v683 = v1548;
        sub_1007D9B48();
        sub_100003BFC(v649);
        v682 = v1568;
        v684 = v1579;
        v685 = v1576;
        if (!v364)
        {
          sub_1000180EC(v649, &qword_100CB0250, &qword_100A3FF58);
        }
      }

      else
      {
        sub_1000C8A84();
        sub_1007D9BA0();
        v682 = v1568;
        v683 = v1548;
        v684 = v1579;
        v685 = v1576;
      }

      v686 = *(v683 + *(v1578 + 24));
      sub_1000519E0();
      sub_100051BBC();
      v687 = sub_100007FC4();
      sub_1000038B4(v687, v688, v651);
      if (v364)
      {
        sub_100020FE8();
        sub_100095588();
        v689 = sub_100007FC4();
        sub_1000038B4(v689, v690, v651);
        if (!v364)
        {
          sub_1000180EC(v652, &qword_100CA65D8, &unk_100A3D9D0);
        }
      }

      else
      {
        v691 = sub_1000E3254();
        v692(v691);
        v693 = sub_10000FEF4();
        sub_10001B350(v693, v694, v695, v651);
      }

      v696 = v1495;
      *v1495 = 0;
      *(v696 + 8) = 0xE000000000000000;
      v697 = v1578;
      sub_1000C8A84();
      sub_1007D9BA0();
      *(v696 + *(v697 + 24)) = v686;
      sub_100051BBC();
      sub_10000E7B0();
      sub_10001B350(v698, v699, v700, v697);
      v701 = sub_100003BCC(v1529);
      sub_10001B350(v701, v702, v703, v1570);
      v704 = sub_100003BCC(v1530);
      sub_10001B350(v704, v705, v706, v682);
      v707 = *v648;
      sub_100021424();
      sub_100095588();
      sub_100005404(v696);
      if (v364)
      {
        sub_100019F48();
        sub_1007D9B48();
        v708 = sub_100016298();
        v710 = sub_100024D10(v708, v709, v672);

        if (v710 != 1)
        {
          sub_1000180EC(v696, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();
      }

      LODWORD(v1568) = *(v648 + v685[6]);
      v711 = sub_1000B010C();
      sub_1000180EC(v1538, &qword_100CA6608, &unk_100A31430);
      sub_100023260();
      sub_1000B0004(v1548, v712);
      sub_100021424();
      sub_100051BBC();
      v713 = sub_100016298();
      v714 = v1578;
      sub_10001627C(v713, v715);
      if (v364)
      {
        sub_100095588();
        sub_100005404(v696);
        if (!v364)
        {
          sub_1000180EC(v696, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100004B40();
        sub_100037814();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v716, v717, v718, v714);
      }

      sub_100037814();
      sub_100051BBC();
      v719 = sub_1000201BC();
      sub_10001627C(v719, v720);
      if (v364)
      {
        sub_100075000();
        sub_100087FF4(v721);
        sub_1007D9B48();
        sub_100005404(v648);
        v722 = v1569;
        if (!v364)
        {
          sub_1000180EC(v648, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
        v722 = v1569;
      }

      sub_100037814();
      sub_100051BBC();
      sub_100003BFC(v648);
      if (v364)
      {
        sub_100028B60();
        sub_100087FF4(v723);
        sub_1007D9B48();
        sub_100003BFC(v648);
        if (!v364)
        {
          sub_1000180EC(v648, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_1007D9BA0();
      }

      v724 = *(v1535 + v685[11]);
      sub_10001CDA4();
      sub_1000B0004(v725, v726);
      v727 = v1436;
      *v1436 = v707;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v727 + v685[6]) = v1568;
      *(v727 + v685[7]) = v711 & 1;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();
      *(v727 + v685[11]) = v724;
      sub_10000E7B0();
      sub_10001B350(v728, v729, v730, v685);
      v731 = v1444;
      sub_100003934();
      sub_10001B350(v732, v733, v734, v1566);
      sub_10004EAA8();
      sub_100021424();
      sub_1007D9B48();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v731);
      if (v364)
      {
        sub_1000180EC(v731, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000253DC();
        sub_1000B0004(v696, v735);
        sub_100010BDC();
        sub_1007D9BA0();
      }

      v736 = v1407;
      v737 = v1402;
      v738 = v1393;
      sub_100010BDC();
      sub_1007D9BA0();
      v739 = *(v684 + 16);
      LODWORD(v1573) = *(v684 + 24);
      sub_1000870F8(v1498);
      sub_100051BBC();
      sub_100005404(v738);
      v1578 = v739;
      if (v364)
      {
        sub_10003A34C();
        sub_1007D9B48();
        v740 = sub_100007FC4();
        v742 = sub_100024D10(v740, v741, v722);

        v743 = v1435;
        if (v742 != 1)
        {
          sub_1000180EC(v738, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000300CC();
        sub_1007D9BA0();

        v743 = v1435;
      }

      sub_1000C893C(&v1505);
      sub_100051BBC();
      sub_100003BFC(v737);
      if (v364)
      {
        sub_10002014C(v684 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_100031F70();
        sub_1007D9B48();
        sub_100003BFC(v737);
        v744 = v1427;
        v745 = v1419;
        if (!v364)
        {
          sub_1000180EC(v737, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100024A5C();
        sub_1007D9BA0();
        v744 = v1427;
        v745 = v1419;
      }

      sub_100051BBC();
      sub_100003A40(v736);
      if (v364)
      {
        sub_100018744();
        sub_1007D9B48();
        sub_100003A40(v736);
        v746 = v1437;
        if (!v364)
        {
          sub_1000180EC(v736, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10003181C();
        sub_1007D9BA0();
        v746 = v1437;
      }

      sub_100030224(v1518);
      sub_100051BBC();
      sub_10000554C(v745);
      if (v364)
      {
        sub_100052138();
        sub_1007D9B48();
        sub_10000554C(v745);
        if (!v364)
        {
          sub_1000180EC(v745, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100037D68();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      v747 = sub_100016298();
      sub_100036E54(v747, v748);
      if (v364)
      {
        sub_10000EDC0();
        sub_1007D9B48();
        sub_100003BFC(v744);
        if (!v364)
        {
          sub_1000180EC(v744, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_10002CAB4();
        sub_1007D9BA0();
      }

      sub_1000436AC(&v1528);
      sub_100051BBC();
      v749 = v1572;
      sub_1000038B4(v743, 1, v1572);
      if (v364)
      {
        sub_100020B80();
        sub_1007D9B48();
        sub_1000038B4(v743, 1, v749);
        if (!v364)
        {
          sub_1000180EC(v743, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_10003C81C();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      sub_1000868B8();
      if (v364)
      {
        sub_10001F850();
        sub_1007D9B48();
        sub_1000868B8();
        if (!v364)
        {
          sub_1000180EC(v746, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100017DF4();
        sub_1007D9BA0();
      }

      sub_100010BDC();
      sub_1000113EC();
      sub_1007D9BA0();
      sub_100087240();
      sub_100021DD8();
      v750 = sub_100087104();
      sub_100003B6C(v750);
      v751 = sub_100030540();
      v752 = v1573;
      v753 = v1529[4];
      v754 = v1529[7];
      v755 = v1530[2];
      v756 = v1530[3];
      v757 = v1530[4];
      v758 = &v1560;
LABEL_276:
      sub_10003E038(v751, v752, v753, v754, v755, v756, v757, *(v758 - 32), v1367, v1368, v1369, v1370, v1371, v1372, v1373, v1374, v1375, v1376, v1377, v1378, v1379, v1380, v1381, v1382, v1383, v1384, v1385, v1386, v1387, v1388, v1389, v1390, v1391, v1392, v1393);
      v358 = v1162;

      return v358;
    default:
      (*(v339 + 32))(v343, v357, v337);
      (*(v339 + 16))(v353, v343, v337);
      swift_storeEnumTagMultiPayload();
      v358 = sub_1007D76EC(v353, 0, 0, v1579);
      sub_100011840();
      sub_1000B0004(v353, v359);
      (*(v339 + 8))(v343, v337);
      return v358;
  }

  return v358;
}

uint64_t sub_1007D76EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v225 = a2;
  v204 = a1;
  v244 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v244);
  v250 = &v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v7);
  v249 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v242);
  v248 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v241);
  v247 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v240);
  v246 = &v191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v238);
  v245 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v214);
  v223 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v216 = &v191 - v15;
  __chkstk_darwin(v16);
  v243 = &v191 - v17;
  v18 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v18 - 8);
  v213 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v212 = &v191 - v21;
  v208 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v208);
  v210 = &v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v231);
  v234 = &v191 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v201 + 1) = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(*(&v201 + 1));
  v233 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  __chkstk_darwin(v25 - 8);
  v207 = &v191 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v230 = &v191 - v28;
  v29 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v29 - 8);
  v205 = &v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v203 = &v191 - v32;
  v33 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  __chkstk_darwin(v33 - 8);
  *&v201 = &v191 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v202 = &v191 - v36;
  v37 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v37 - 8);
  v221 = &v191 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v220 = &v191 - v40;
  v41 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v41 - 8);
  v219 = &v191 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v239 = &v191 - v44;
  v45 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v45 - 8);
  v217 = &v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v237 = &v191 - v48;
  v49 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v49 - 8);
  v215 = &v191 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v236 = &v191 - v52;
  v53 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v53 - 8);
  v211 = &v191 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v235 = &v191 - v56;
  v57 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v57 - 8);
  v209 = &v191 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v232 = &v191 - v60;
  v61 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v61 - 8);
  v206 = &v191 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v229 = &v191 - v64;
  v65 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v65 - 8);
  v67 = &v191 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v251 = &v191 - v69;
  v70 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v70);
  v218 = &v191 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v253 = &v191 - v73;
  __chkstk_darwin(v74);
  v76 = (&v191 - v75);
  v77 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v77 - 8);
  v200 = &v191 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v228 = &v191 - v80;
  __chkstk_darwin(v81);
  v227 = (&v191 - v82);
  __chkstk_darwin(v83);
  v226 = &v191 - v84;
  __chkstk_darwin(v85);
  v87 = &v191 - v86;
  __chkstk_darwin(v88);
  v90 = (&v191 - v89);
  v252 = v70;
  v222 = v67;
  if (a3)
  {
    v199 = a3;
  }

  else
  {
    sub_100095588();
    v91 = type metadata accessor for SearchViewState(0);
    if (sub_100024D10(v90, 1, v91) == 1)
    {
      sub_1000180EC(v90, &qword_100CA6600, &unk_100A5C400);
      v225 = 0;
      v199 = 0xE000000000000000;
    }

    else
    {
      v92 = v90[1];
      v225 = *v90;
      v199 = v92;

      sub_1000B0004(v90, type metadata accessor for SearchViewState);
    }
  }

  v224 = a4;
  v93 = a4 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1007D9B48();
  v94 = *v76;
  v95 = v252;
  if (*(v76 + v252[9] + 8) == 1)
  {
    v96 = v7;
    v97 = objc_opt_self();

    v98 = [v97 currentDevice];
    [v98 userInterfaceIdiom];

    LODWORD(v98) = *(v76 + v95[7]);
    sub_1000B0004(v76, type metadata accessor for ViewState);
    v99 = v241;
    v100 = v94;
    if (v98 == 1)
    {

      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      v100 = sub_100042DA8(0, 0, 1, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 1, 0);
    }

    v7 = v96;
    v101 = v242;
    v102 = v238;
  }

  else
  {

    sub_1000B0004(v76, type metadata accessor for ViewState);
    v99 = v241;
    v101 = v242;
    v102 = v238;
    v100 = v94;
  }

  v103 = v226;
  sub_100095588();
  v104 = type metadata accessor for SearchViewState(0);
  if (sub_100024D10(v87, 1, v104) == 1)
  {
    sub_1000180EC(v87, &qword_100CA6600, &unk_100A5C400);
    HIDWORD(v196) = 0;
  }

  else
  {
    HIDWORD(v196) = v87[*(v104 + 24)];
    sub_1000B0004(v87, type metadata accessor for SearchViewState);
  }

  v105 = static Solarium.isEnabled.getter();
  v226 = v104;
  if ((v105 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100095588();
  if (sub_100024D10(v103, 1, v104) == 1)
  {
    sub_1000180EC(v103, &qword_100CA6600, &unk_100A5C400);
LABEL_17:
    v106 = type metadata accessor for Location();
    sub_10001B350(v222, 1, 1, v106);
    goto LABEL_19;
  }

  sub_100095588();
  sub_1000B0004(v103, type metadata accessor for SearchViewState);
LABEL_19:
  sub_100051BBC();
  sub_10001B350(v229, 1, 1, v102);
  sub_10001B350(v232, 1, 1, v240);
  sub_10001B350(v235, 1, 1, v99);
  sub_10001B350(v236, 1, 1, v101);
  v222 = v7;
  sub_10001B350(v237, 1, 1, v7);
  sub_10001B350(v239, 1, 1, v244);
  v192 = v93;
  sub_1007D9B48();
  v193 = *(v100 + 16);
  v107 = *(v100 + 24);
  v108 = *(v100 + 25);
  v109 = *(v100 + 26);
  v110 = *(v100 + 56);
  v197 = *(v100 + 48);
  v111 = *(v100 + 64);
  v113 = *(v100 + 72);
  v112 = *(v100 + 80);
  v114 = *(v100 + 88);
  v115 = *(v100 + 89);
  v198 = v100;
  v116 = *(v100 + 27);
  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v194 = v112;
  v189 = v111;
  v195 = v110;
  v117 = v109;
  v118 = v225;
  v119 = v199;
  v120 = sub_100042DA8(v193, v107, v108, v117, v116, v225, v199, v197, v110, v189, v113, v112, v114, v115);
  v121 = v202;
  v122 = *(&v201 + 1);
  sub_10001B350(v202, 1, 1, *(&v201 + 1));
  v123 = v226;
  v124 = v227;
  sub_1007D9B48();
  sub_100095588();
  *v124 = v118;
  v124[1] = v119;
  *(v124 + *(v123 + 24)) = BYTE4(v196);
  sub_10001B350(v124, 0, 1, v123);
  sub_10001B350(v203, 1, 1, v231);
  v125 = v208;
  sub_10001B350(v230, 1, 1, v208);
  v126 = v201;
  sub_100095588();
  v127 = sub_100024D10(v126, 1, v122);
  v197 = v120;
  if (v127 == 1)
  {
    v128 = v252;
    v129 = v125;
    v130 = v253;
    sub_1007D9B48();
    v131 = sub_100024D10(v126, 1, v122);

    v132 = v131 == 1;
    v133 = v220;
    v134 = v130;
    v125 = v129;
    v135 = &MainInitialStateProvider;
    if (!v132)
    {
      sub_1000180EC(v126, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_1007D9BA0();

    v133 = v220;
    v128 = v252;
    v134 = v253;
    v135 = &MainInitialStateProvider;
  }

  LODWORD(v252) = *(v134 + v128[6]);
  v136 = [objc_opt_self() currentDevice];
  v137 = [v136 v135[51].base_props];

  v138 = v253;
  sub_1000180EC(v121, &qword_100CA6608, &unk_100A31430);
  sub_1000180EC(v251, &qword_100CA65D8, &unk_100A3D9D0);
  v139 = v224;
  if (v137 && *(v138 + v128[9] + 8) == 2)
  {
    v140 = 1;
  }

  else
  {
    v140 = *(v138 + v128[7]);
  }

  LODWORD(v251) = v140;
  v141 = v200;
  sub_100051BBC();
  v142 = v226;
  v143 = sub_100024D10(v141, 1, v226);
  v144 = v231;
  if (v143 == 1)
  {
    sub_100095588();
    if (sub_100024D10(v141, 1, v142) != 1)
    {
      sub_1000180EC(v141, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    v145 = v228;
    sub_1007D9BA0();
    sub_10001B350(v145, 0, 1, v142);
  }

  v146 = v205;
  sub_100051BBC();
  if (sub_100024D10(v146, 1, v144) == 1)
  {
    sub_1007D9B48();
    v147 = sub_100024D10(v146, 1, v144);
    v148 = v211;
    if (v147 != 1)
    {
      sub_1000180EC(v146, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_1007D9BA0();
    v148 = v211;
  }

  v149 = v207;
  sub_100051BBC();
  if (sub_100024D10(v149, 1, v125) == 1)
  {
    sub_1007D9B48();
    if (sub_100024D10(v149, 1, v125) != 1)
    {
      sub_1000180EC(v149, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_1007D9BA0();
  }

  v150 = *(v253 + v128[11]);
  sub_1000B0004(v253, type metadata accessor for ViewState);
  *v133 = v197;
  sub_1007D9BA0();
  *(v133 + v128[6]) = v252;
  *(v133 + v128[7]) = v251;
  sub_100051BBC();
  sub_1007D9BA0();
  sub_1007D9BA0();

  *(v133 + v128[11]) = v150;
  sub_10001B350(v133, 0, 1, v128);
  v151 = v214;
  sub_10001B350(v212, 1, 1, v214);
  v152 = v216;
  sub_1007D9B48();
  v153 = v213;
  sub_100051BBC();
  if (sub_100024D10(v153, 1, v151) == 1)
  {
    sub_1000180EC(v153, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000B0004(v152, type metadata accessor for ModalViewState);
    sub_1007D9BA0();
  }

  v154 = v240;
  v155 = v217;
  v156 = v238;
  v157 = v209;
  v158 = v206;
  sub_1007D9BA0();
  v159 = *(v139 + 16);
  LODWORD(v252) = *(v139 + 24);
  sub_100051BBC();
  v160 = sub_100024D10(v158, 1, v156);
  v253 = v159;
  if (v160 == 1)
  {
    sub_1007D9B48();
    v161 = sub_100024D10(v158, 1, v156);

    if (v161 != 1)
    {
      sub_1000180EC(v158, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1007D9BA0();
  }

  sub_100051BBC();
  v162 = sub_100024D10(v157, 1, v154);
  v163 = v241;
  if (v162 == 1)
  {
    swift_beginAccess();
    sub_1007D9B48();
    v164 = sub_100024D10(v157, 1, v154);
    v165 = v242;
    v166 = v218;
    if (v164 != 1)
    {
      sub_1000180EC(v157, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_1007D9BA0();
    v165 = v242;
    v166 = v218;
  }

  sub_100051BBC();
  if (sub_100024D10(v148, 1, v163) == 1)
  {
    sub_1007D9B48();
    v167 = sub_100024D10(v148, 1, v163);
    v168 = v219;
    if (v167 != 1)
    {
      sub_1000180EC(v148, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1007D9BA0();
    v168 = v219;
  }

  v169 = v215;
  sub_100051BBC();
  if (sub_100024D10(v169, 1, v165) == 1)
  {
    sub_1007D9B48();
    v170 = sub_100024D10(v169, 1, v165);
    v171 = v221;
    if (v170 != 1)
    {
      sub_1000180EC(v169, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1007D9BA0();
    v171 = v221;
  }

  sub_100051BBC();
  v172 = v222;
  if (sub_100024D10(v155, 1, v222) == 1)
  {
    sub_1007D9B48();
    if (sub_100024D10(v155, 1, v172) != 1)
    {
      sub_1000180EC(v155, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1007D9BA0();
  }

  sub_100051BBC();
  v173 = v244;
  if (sub_100024D10(v168, 1, v244) == 1)
  {
    sub_1007D9B48();
    if (sub_100024D10(v168, 1, v173) != 1)
    {
      sub_1000180EC(v168, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1007D9BA0();
  }

  sub_100051BBC();
  if (sub_100024D10(v171, 1, v128) == 1)
  {
    sub_1007D9B48();
    v174 = v166;
    if (sub_100024D10(v171, 1, v128) != 1)
    {
      sub_1000180EC(v171, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1007D9BA0();
    v174 = v166;
  }

  v175 = v223;
  sub_1007D9BA0();
  v177 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v176 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v179 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v178 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v180 = v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v181 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v182 = v139;
  v184 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v183 = *(v180 + 16);
  v185 = *(v182 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v190) = v181;
  sub_10003E038(v253, v252, v245, v246, v247, v248, v249, v250, v174, v175, v177, v176, v179, v178, v190, v184, v183, v185, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
  v187 = v186;

  return v187;
}

uint64_t sub_1007D95D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a1;
  v36 = type metadata accessor for SearchViewState.ViewState(0);
  __chkstk_darwin(v36);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v4 - 8);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v33 = &v31 - v7;
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10022C350(&qword_100CB0250, &qword_100A3FF58);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v17 - 8);
  v19 = &v31 - v18;
  v20 = type metadata accessor for SearchViewState(0);
  __chkstk_darwin(v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewState(0);
  sub_100095588();
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_1000180EC(v19, &qword_100CA6600, &unk_100A5C400);
    swift_storeEnumTagMultiPayload();
    v23 = *(v20 + 28);
    v24 = type metadata accessor for Location();
    result = sub_10001B350(a2 + v23, 1, 1, v24);
    *a2 = 0;
    a2[1] = 0xE000000000000000;
    *(a2 + *(v20 + 24)) = 0;
  }

  else
  {
    sub_1007D9BA0();
    v26 = v36;
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v16, 0, 1, v26);
    v27 = type metadata accessor for Location();
    sub_10001B350(v10, 1, 1, v27);
    sub_100051BBC();
    if (sub_100024D10(v13, 1, v26) == 1)
    {
      sub_1007D9B48();
      v28 = sub_100024D10(v13, 1, v26);
      v30 = v32;
      v29 = v33;
      if (v28 != 1)
      {
        sub_1000180EC(v13, &qword_100CB0250, &qword_100A3FF58);
      }
    }

    else
    {
      sub_1007D9BA0();
      v30 = v32;
      v29 = v33;
    }

    sub_100051BBC();
    if (sub_100024D10(v30, 1, v27) == 1)
    {
      sub_100095588();
      sub_1000B0004(v22, type metadata accessor for SearchViewState);
      if (sub_100024D10(v30, 1, v27) != 1)
      {
        sub_1000180EC(v30, &qword_100CA65D8, &unk_100A3D9D0);
      }
    }

    else
    {
      sub_1000B0004(v22, type metadata accessor for SearchViewState);
      (*(*(v27 - 8) + 32))(v29, v30, v27);
      sub_10001B350(v29, 0, 1, v27);
    }

    *a2 = 0;
    a2[1] = 0xE000000000000000;
    sub_1007D9BA0();
    *(a2 + *(v20 + 24)) = 0;
    return sub_100051BBC();
  }

  return result;
}

uint64_t sub_1007D9B48()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1007D9BA0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1007D9BF8()
{
  result = sub_1007D9C78(1);
  v1 = result;
  if (qword_100CA27E8 != -1)
  {
    result = swift_once();
  }

  v2 = *&qword_100CD9228;
  if (*&qword_100CD9228 <= 0.9)
  {
    v2 = 0.9;
  }

  qword_100D90DE0 = v1;
  qword_100D90DE8 = *&v2;
  return result;
}

uint64_t sub_1007D9C78(uint64_t a1)
{
  sub_1007D9F50();
  sub_1007D9FF4();
  AnyTransition.combined(with:)();

  sub_1007D9F50();
  sub_1007D9FF4();
  AnyTransition.combined(with:)();

  v1 = static AnyTransition.asymmetric(insertion:removal:)();

  return v1;
}

uint64_t sub_1007D9DA8()
{
  v0 = sub_1007D9C78(1);
  result = sub_1007D9C78(0);
  qword_100D90DF0 = v0;
  *algn_100D90DF8 = result;
  return result;
}

uint64_t sub_1007D9DE4()
{
  if (qword_100CA27F0 != -1)
  {
    result = swift_once();
  }

  v0 = *&qword_100CD9230;
  if (*&qword_100CD9230 <= 0.33)
  {
    v0 = 0.33;
  }

  qword_100CD9228 = *&v0;
  return result;
}

void sub_1007D9E48()
{
  v0 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:220.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  [v0 ts_settlingDuration];
  v2 = v1;

  qword_100CD9230 = v2;
}

uint64_t sub_1007D9EBC()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100CD9238 = result;
  return result;
}

uint64_t sub_1007D9EF0()
{
  static Animation.timingCurve(_:_:_:_:duration:)();
  v0 = Animation.delay(_:)();

  qword_100CD9240 = v0;
  return result;
}

uint64_t sub_1007D9F50()
{
  sub_10001F868();
  static AnyTransition.scale(scale:anchor:)();
  if (v1)
  {
    if (*v0 != -1)
    {
      swift_once();
    }
  }

  v2 = AnyTransition.animation(_:)();

  return v2;
}

uint64_t sub_1007D9FF4()
{
  sub_10001F868();
  static AnyTransition.opacity.getter();
  if (v1)
  {
    if (*v0 != -1)
    {
      swift_once();
    }
  }

  v2 = AnyTransition.animation(_:)();

  return v2;
}

uint64_t sub_1007DA084()
{
  result = sub_1007DA0B4();
  qword_100CD9248 = result;
  return result;
}

uint64_t sub_1007DA12C()
{
  result = static Animation.timingCurve(_:_:_:_:duration:)();
  qword_100CD9250 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for NotificationSettingsViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_1007DA248(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ELL && 0x8000000100ADF2D0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000100ADF2F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1007DA320(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_1007DA358(void *a1, unsigned int a2)
{
  v4 = sub_10022C350(&qword_100CD9288, &qword_100A83540);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v11[-v8];
  sub_1000161C0(a1, a1[3]);
  sub_1007DA9C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1007DA4B0(void *a1)
{
  v3 = sub_10022C350(&qword_100CD9278, &qword_100A83538);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1007DA9C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006F14(a1);
  }

  v13[15] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[14] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v5 + 8))(v8, v3);
  sub_100006F14(a1);
  if (v10)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFFFE | v9 & 1;
}

uint64_t sub_1007DA65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007DA248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007DA684(uint64_t a1)
{
  v2 = sub_1007DA9C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007DA6C0(uint64_t a1)
{
  v2 = sub_1007DA9C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007DA6FC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007DA4B0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1007DA734(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1007DA358(a1, v2 | *v1);
}

uint64_t sub_1007DA764@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10077DFAC(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1007DA7CC@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD9260, &qword_100A83530);
  a1[4] = sub_1007DA90C();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1007DA878(uint64_t a1)
{
  sub_1007DA970();

  return ShortDescribable.description.getter();
}

unint64_t sub_1007DA8B8()
{
  result = qword_100CD9258;
  if (!qword_100CD9258)
  {
    result = swift_getWitnessTable(byte_100A834D8, &type metadata for NotificationSettingsViewState, v0, v1);
    atomic_store(result, &qword_100CD9258);
  }

  return result;
}

unint64_t sub_1007DA90C()
{
  result = qword_100CD9268;
  if (!qword_100CD9268)
  {
    v3 = sub_10022E824(&qword_100CD9260, &qword_100A83530);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CD9268);
  }

  return result;
}

unint64_t sub_1007DA970()
{
  result = qword_100CD9270;
  if (!qword_100CD9270)
  {
    result = swift_getWitnessTable(aY_75, &type metadata for NotificationSettingsViewState, v0, v1);
    atomic_store(result, &qword_100CD9270);
  }

  return result;
}

unint64_t sub_1007DA9C4()
{
  result = qword_100CD9280;
  if (!qword_100CD9280)
  {
    result = swift_getWitnessTable(byte_100A8360C, &type metadata for NotificationSettingsViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD9280);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationSettingsViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1007DAAF8()
{
  result = qword_100CD9290;
  if (!qword_100CD9290)
  {
    result = swift_getWitnessTable(byte_100A835E4, &type metadata for NotificationSettingsViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD9290);
  }

  return result;
}

unint64_t sub_1007DAB50()
{
  result = qword_100CD9298;
  if (!qword_100CD9298)
  {
    result = swift_getWitnessTable(byte_100A83554, &type metadata for NotificationSettingsViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD9298);
  }

  return result;
}

unint64_t sub_1007DABA8()
{
  result = qword_100CD92A0;
  if (!qword_100CD92A0)
  {
    result = swift_getWitnessTable(aU_74, &type metadata for NotificationSettingsViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CD92A0);
  }

  return result;
}

uint64_t sub_1007DABFC()
{
  sub_10022C350(&qword_100CD9348, &qword_100A836E0);
  sub_1007DB0A0();
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_1007DAC54(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapPerformanceTestConditions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10022C350(&qword_100CD9350, &qword_100A836E8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v20[-v8];
  v10 = sub_10022C350(&qword_100CAE2A0, qword_100A96750);
  __chkstk_darwin(v10 - 8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v20[-v14];
  CurrentValueSubject.value.getter();
  v16 = *(v7 + 56);
  sub_1003416A8(a1, v9);
  sub_1003416A8(v15, &v9[v16]);
  sub_100005404(v9);
  if (v18)
  {
    sub_10003FDF4(v15, &qword_100CAE2A0, qword_100A96750);
    sub_100005404(&v9[v16]);
    if (v18)
    {
      return sub_10003FDF4(v9, &qword_100CAE2A0, qword_100A96750);
    }

    goto LABEL_9;
  }

  sub_1003416A8(v9, v12);
  sub_100005404(&v9[v16]);
  if (v18)
  {
    sub_10003FDF4(v15, &qword_100CAE2A0, qword_100A96750);
    (*(v3 + 8))(v12, v2);
LABEL_9:
    sub_10003FDF4(v9, &qword_100CD9350, &qword_100A836E8);
    return CurrentValueSubject.send(_:)();
  }

  (*(v3 + 32))(v5, &v9[v16], v2);
  sub_1007DB048();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v3 + 8);
  v19(v5, v2);
  sub_10003FDF4(v15, &qword_100CAE2A0, qword_100A96750);
  v19(v12, v2);
  result = sub_10003FDF4(v9, &qword_100CAE2A0, qword_100A96750);
  if ((v21 & 1) == 0)
  {
    return CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1007DAF84()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CAE2A0, qword_100A96750);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for WeatherMapPerformanceTestConditions();
  sub_10001B350(v4, 1, 1, v5);
  sub_10022C350(&qword_100CD9348, &qword_100A836E0);
  swift_allocObject();
  *(v1 + 16) = CurrentValueSubject.init(_:)();
  return v1;
}

unint64_t sub_1007DB048()
{
  result = qword_100CD9358;
  if (!qword_100CD9358)
  {
    v3 = type metadata accessor for WeatherMapPerformanceTestConditions();
    result = swift_getWitnessTable(&protocol conformance descriptor for WeatherMapPerformanceTestConditions, v3, v0, v1);
    atomic_store(result, &qword_100CD9358);
  }

  return result;
}

unint64_t sub_1007DB0A0()
{
  result = qword_100CD9360;
  if (!qword_100CD9360)
  {
    v3 = sub_10022E824(&qword_100CD9348, &qword_100A836E0);
    result = swift_getWitnessTable(&protocol conformance descriptor for CurrentValueSubject<A, B>, v3, v0, v1);
    atomic_store(result, &qword_100CD9360);
  }

  return result;
}

void sub_1007DB1BC()
{
  sub_10000FE4C();
  EnvironmentValues.displayScale.getter();
  *v0 = v1;
}

uint64_t sub_1007DB208()
{
  sub_10000FE4C();
  v1 = sub_10014E940(v0);
  return sub_100005F94(v1);
}

uint64_t sub_1007DB230()
{
  sub_10000FE4C();
  v0 = sub_100198BD0();
  return sub_100005F94(v0);
}

uint64_t sub_1007DB27C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;
  v7 = type metadata accessor for ContentSizeCategory();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = *(type metadata accessor for DetermineWhetherLocationContentWantsGridViewModifier(0) + 20);
  v33 = v0;
  sub_1000302D8(v0 + v14, v6, &qword_100CAD618, &qword_100A4C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
    v17 = v34;
    v16 = v35;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v17 = v34;
    v16 = v35;
    (*(v34 + 8))(v3, v35);
    v15 = *(v8 + 32);
  }

  v15(v10, v13, v7);
  v19 = (*(v8 + 88))(v10, v7);
  if (v19 != enum case for ContentSizeCategory.extraSmall(_:) && v19 != enum case for ContentSizeCategory.small(_:) && v19 != enum case for ContentSizeCategory.medium(_:) && v19 != enum case for ContentSizeCategory.large(_:) && v19 != enum case for ContentSizeCategory.extraLarge(_:) && v19 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v19 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v19 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v19 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v19 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v19 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      return 0;
    }

    (*(v8 + 8))(v10, v7);
  }

  memcpy(__dst, v33, 0x49uLL);
  if (__dst[9])
  {
    memcpy(v36, v33, sizeof(v36));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v17 + 8))(v3, v16);
  }

  if (v36[48])
  {
    return 1;
  }

  if (qword_100CA2820 != -1)
  {
    swift_once();
  }

  return byte_100CD9418;
}

double sub_1007DB74C()
{
  sub_1007E84D0();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1007DB7C4@<X0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1007DB8C0();
  v5 = v4;
  sub_10022C350(&qword_100CDA008, &qword_100A85060);
  sub_1000037E8();
  v6 = sub_1000053B8();
  v7(v6);
  result = sub_10022C350(&qword_100CDA010, &qword_100A85068);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v5;
  return result;
}

uint64_t sub_1007DB8C0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 8))
  {
    v11 = *(v0 + 24);
    v10 = *(v0 + 16);
    if (v11 != 1)
    {

      static os_log_type_t.fault.getter();
      v5 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(&v10, &qword_100CC09F8, &qword_100A85070);
      (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    v15 = *(v0 + 24);
    v14 = *(v0 + 16);
    if (v15 != 1)
    {

      static os_log_type_t.fault.getter();
      v6 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(&v14, &qword_100CC09F8, &qword_100A85070);
      (*(v2 + 8))(v4, v1);
    }

    v13 = *(v0 + 80);
    v7 = *(v0 + 48);
    v12[0] = *(v0 + 32);
    v12[1] = v7;
    v12[2] = *(v0 + 64);
    if ((v13 & 1) == 0)
    {

      static os_log_type_t.fault.getter();
      v8 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(v12, &qword_100CDA018, &qword_100A85078);
      (*(v2 + 8))(v4, v1);
    }
  }

  return static Solarium.isEnabled.getter();
}

void sub_1007DBC30()
{
  sub_10000C778();
  v3 = v2;
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10000CC9C();
  v6 = type metadata accessor for LocationContentView(0);
  sub_1000302D8(v0 + *(v6 + 52), v1, &qword_100CB3278, &qword_100A70D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100149618(v1, v3);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v8 = sub_1000053B8();
    v9(v8);
  }

  sub_10000536C();
}

uint64_t sub_1007DBDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(v155) = a8;
  v160 = a7;
  v128 = a6;
  LODWORD(v153) = a4;
  v126 = a1;
  v159 = a9;
  v132 = a14;
  v131 = a13;
  v120 = type metadata accessor for EnvironmentValues();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Location.Identifier();
  v144 = *(v140 - 8);
  __chkstk_darwin(v140);
  v143 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WeatherActivity(0);
  __chkstk_darwin(v20 - 8);
  v150 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v161);
  v141 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v137 = &v118 - v24;
  v139 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v139);
  v138 = (&v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = type metadata accessor for PrimaryDividerStyle();
  v135 = *(v134 - 8);
  __chkstk_darwin(v134);
  v130 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_10022C350(&qword_100CD96D8, &qword_100A839E8);
  __chkstk_darwin(v133);
  v129 = &v118 - v27;
  v136 = sub_10022C350(&qword_100CD96E0, &qword_100A839F0) - 8;
  __chkstk_darwin(v136);
  v162 = (&v118 - v28);
  v142 = sub_10022C350(&qword_100CD96E8, &qword_100A839F8);
  __chkstk_darwin(v142);
  v147 = &v118 - v29;
  v146 = sub_10022C350(&qword_100CD96F0, &qword_100A83A00);
  __chkstk_darwin(v146);
  v148 = &v118 - v30;
  v145 = sub_10022C350(&qword_100CD96F8, &qword_100A83A08);
  __chkstk_darwin(v145);
  v151 = &v118 - v31;
  v149 = sub_10022C350(&qword_100CD9700, &qword_100A83A10);
  __chkstk_darwin(v149);
  v154 = &v118 - v32;
  v163 = sub_10022C350(&qword_100CD9708, &qword_100A83A18);
  __chkstk_darwin(v163);
  v158 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v152 = &v118 - v35;
  __chkstk_darwin(v36);
  v156 = &v118 - v37;
  v38 = type metadata accessor for LocationContentTopHeaderView(0);
  __chkstk_darwin(v38);
  v157 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v118 - v41;
  v127 = *(a1 + 8);
  sub_100140210();
  v43 = &v42[v38[5]];
  v124 = a2;
  *v43 = a2;
  *(v43 + 1) = a3;
  v44 = a3;
  v125 = a3;
  v45 = v153 & 1;
  v43[16] = v45;
  v123 = v45;
  v122 = a5;
  *(v43 + 3) = a5;
  v46 = &v42[v38[6]];
  v47 = v128;
  v48 = v160;
  *v46 = v128;
  *(v46 + 1) = v48;
  v121 = v155 & 1;
  v46[16] = v155 & 1;
  *(v46 + 3) = a10;
  v49 = &v42[v38[7]];
  *v49 = a11;
  *(v49 + 1) = a12;
  v50 = v131;
  v51 = v132;
  *(v49 + 2) = v131;
  *(v49 + 3) = v51;
  v155 = v38[8];
  sub_10010CD54(a2, v44, v45);

  v52 = v48;
  LODWORD(v48) = v121;
  sub_10010CD54(v47, v52, v121);

  sub_100148118(a11, a12, v50, v51);
  Text.Measurements.init()();
  v53 = v38[9];
  *&v42[v53] = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  swift_storeEnumTagMultiPayload();
  v54 = &v42[v38[10]];
  KeyPath = swift_getKeyPath();
  v168 = 0;
  *v54 = KeyPath;
  v54[72] = 0;
  v56 = &v42[v38[11]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = v38[12];
  *&v42[v57] = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  swift_storeEnumTagMultiPayload();
  v58 = &v42[v38[13]];
  *v58 = swift_getKeyPath();
  v58[8] = 0;
  v153 = v38;
  v59 = v38[14];
  v155 = v42;
  v60 = &v42[v59];
  *v60 = swift_getKeyPath();
  v60[8] = 0;
  v61 = v129;
  v62 = v126;
  sub_10014815C(v124, v125, v123, v122, v47, v160, v48, a10, v129, a11, a12, v50, v51);
  v63 = v130;
  static DividerStyle<>.primary.getter();
  sub_1007E7990();
  sub_10008152C(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle, &protocol conformance descriptor for PrimaryDividerStyle);
  v64 = v162;
  v65 = v134;
  View.dividerStyle<A>(_:)();
  v66 = v137;
  (*(v135 + 8))(v63, v65);
  v67 = v140;
  sub_100018144(v61, &qword_100CD96D8, &qword_100A839E8);
  sub_100140210();
  v68 = (v66 + *(v161 + 24));
  v70 = *v68;
  v69 = v68[1];

  sub_100147C14(v66, type metadata accessor for LocationViewModel);
  v71 = v138;
  *v138 = v70;
  *(v71 + 8) = v69;
  type metadata accessor for AutomationViewInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v72 = v64 + *(v136 + 44);
  v73 = type metadata accessor for AutomationInfoProperty(0);
  sub_1001495C0(v71, &v72[*(v73 + 24)]);
  sub_100147C14(v71, type metadata accessor for AutomationInfo);
  *v72 = 0;
  *(v72 + 1) = 0xE000000000000000;
  *(v72 + 2) = swift_getKeyPath();
  v72[24] = 0;
  v74 = v141;
  sub_100140210();
  v75 = v144;
  v76 = *(v144 + 16);
  v77 = v143;
  v76(v143, v74, v67);
  sub_100147C14(v74, type metadata accessor for LocationViewModel);
  Location.Identifier.kind.getter();
  (*(v75 + 8))(v77, v67);
  v78 = Location.Identifier.Kind.rawValue.getter();
  v80 = v79;
  if (v78 == Location.Identifier.Kind.rawValue.getter() && v80 == v81)
  {
  }

  else
  {
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v83 & 1) == 0)
    {
      sub_100140210();
      v84 = v150;
      v76(v150, v66, v67);
      sub_100147C14(v66, type metadata accessor for LocationViewModel);
      v85 = 0;
      goto LABEL_9;
    }
  }

  v85 = 2;
  v84 = v150;
LABEL_9:
  sub_10001B350(v84, v85, 2, v67);
  v86 = v147;
  sub_100149618(v84, &v147[*(v142 + 36)]);
  sub_10011C0F0(v162, v86, &qword_100CD96E0, &qword_100A839F0);
  v87 = swift_getKeyPath();
  v88 = *(v62 + 144);
  if (*(v62 + 152) != 1)
  {

    static os_log_type_t.fault.getter();
    v89 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v90 = v118;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v88, 0);
    (*(v119 + 8))(v90, v120);
    LOBYTE(v88) = v167[0];
  }

  v91 = v148;
  sub_10011C0F0(v86, v148, &qword_100CD96E8, &qword_100A839F8);
  v92 = v91 + *(v146 + 36);
  *v92 = v87;
  *(v92 + 8) = v88 & 1;
  v93 = swift_getKeyPath();
  sub_100140210();
  v94 = v161;
  v95 = *(v161 + 80);
  v96 = v151;
  v97 = &v151[*(v145 + 36)];
  v98 = sub_10022C350(&qword_100CD9768, &unk_100A83B58);
  sub_1000302D8(v66 + v95, v97 + *(v98 + 28), &qword_100CA60E8, &unk_100A5A9F0);
  v162 = type metadata accessor for LocationViewModel;
  sub_100147C14(v66, type metadata accessor for LocationViewModel);
  *v97 = v93;
  sub_10011C0F0(v91, v96, &qword_100CD96F0, &qword_100A83A00);
  v99 = swift_getKeyPath();
  sub_100140210();
  LOBYTE(v95) = *(v66 + *(v94 + 84));
  sub_100147C14(v66, type metadata accessor for LocationViewModel);
  v100 = v96;
  v101 = v154;
  sub_10011C0F0(v100, v154, &qword_100CD96F8, &qword_100A83A08);
  v102 = v101 + *(v149 + 36);
  *v102 = v99;
  *(v102 + 8) = v95;
  sub_100140210();
  v103 = static Alignment.center.getter();
  v161 = v104;
  v105 = v152;
  v106 = &v152[*(v163 + 36)];
  sub_1001495C0(v66, v106);
  v107 = (v106 + *(type metadata accessor for ForegroundEffectConfigurationView(0) + 20));

  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  sub_100006F64(&qword_100CA4B68, &qword_100CA4B60, &qword_100A2EE20, asc_100AA1480);
  v108 = ObservedObject.init(wrappedValue:)();
  v110 = v109;
  sub_100147C14(v66, v162);
  *v107 = v108;
  v107[1] = v110;
  v111 = (v106 + *(sub_10022C350(&qword_100CD9770, &qword_100A83B98) + 36));
  v112 = v161;
  *v111 = v103;
  v111[1] = v112;
  sub_10011C0F0(v101, v105, &qword_100CD9700, &qword_100A83A10);
  v113 = v156;
  sub_10011C0F0(v105, v156, &qword_100CD9708, &qword_100A83A18);
  v114 = v155;
  v115 = v157;
  sub_1001495C0(v155, v157);
  v167[0] = v115;
  v116 = v158;
  sub_1000302D8(v113, v158, &qword_100CD9708, &qword_100A83A18);
  v167[1] = v116;
  v166[0] = v153;
  v166[1] = v163;
  v164 = sub_10008152C(&qword_100CD9778, type metadata accessor for LocationContentTopHeaderView, byte_100A84D8C);
  v165 = sub_1007E7CB4();
  sub_10012E24C(v167, 2, v166);
  sub_100018144(v113, &qword_100CD9708, &qword_100A83A18);
  sub_100147C14(v114, type metadata accessor for LocationContentTopHeaderView);
  sub_100018144(v116, &qword_100CD9708, &qword_100A83A18);
  return sub_100147C14(v115, type metadata accessor for LocationContentTopHeaderView);
}

void sub_1007DCE74(void *a1, int a2)
{
  v4 = type metadata accessor for LocationViewModel(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Location.Identifier();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationContentView(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA26A8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90A60);
  sub_1001495C0(a1, v12);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v16 = os_log_type_enabled(v14, v15);
  v37 = v6;
  if (!v16)
  {

    sub_100147C14(v12, type metadata accessor for LocationContentView);
    if ((a2 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v17 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v40 = v35;
  *v17 = 141558275;
  *(v17 + 4) = 1752392040;
  *(v17 + 12) = 2081;
  sub_100140210();
  v36 = a2;
  v18 = v38;
  v19 = a1;
  v20 = v39;
  (*(v38 + 16))(v9, v6, v39);
  sub_100147C14(v6, type metadata accessor for LocationViewModel);
  sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  v23 = v22;
  v24 = v18;
  LOBYTE(v18) = v36;
  v25 = v20;
  a1 = v19;
  (*(v24 + 8))(v9, v25);
  sub_100147C14(v12, type metadata accessor for LocationContentView);
  v26 = sub_100078694(v21, v23, &v40);

  *(v17 + 14) = v26;
  _os_log_impl(&_mh_execute_header, v14, v15, "LocationContentView.onAppear, Location=%{private,mask.hash}s", v17, 0x16u);
  sub_100006F14(v35);

  if (v18)
  {
LABEL_7:
    v27 = a1[15];
    v28 = a1[16];
    sub_1000161C0(a1 + 12, v27);
    (*(v28 + 16))(v27, v28);
    sub_1000161C0(a1 + 7, a1[10]);
    v29 = v37;
    sub_100140210();
    v31 = v38;
    v30 = v39;
    (*(v38 + 16))(v9, v29, v39);
    sub_100147C14(v29, type metadata accessor for LocationViewModel);
    v32 = Location.Identifier.id.getter();
    v34 = v33;
    (*(v31 + 8))(v9, v30);
    sub_100194F6C(v32, v34);
  }
}

void sub_1007DD2E0()
{
  sub_10000C778();
  v3 = v2;
  v4 = sub_1000038D8();
  v5 = type metadata accessor for LocationViewModel(v4);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  sub_10000CC9C();
  v14 = sub_100016F3C();
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  if (qword_100CA26A8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000703C(v18, qword_100D90A60);
  sub_100017E10();
  sub_1001495C0(v0, v17);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v28 = v3;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v29 = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    sub_100140210();
    (*(v12 + 16))(v1, v9, v10);
    sub_100010BF4();
    sub_100147C14(v9, v23);
    sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v12 + 8))(v1, v10);
    sub_10002CACC();
    v27 = sub_100078694(v24, v26, &v29);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, v28, v21, 0x16u);
    sub_100006F14(v22);
  }

  else
  {

    sub_10002CACC();
  }

  sub_10000536C();
}