uint64_t sub_100279250@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v31 = sub_1000F24EC(&qword_100AD6FB8, &qword_10094AD40);
  __chkstk_darwin(v31);
  v3 = &v29 - v2;
  v32 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  __chkstk_darwin(v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InsightsYearlyEntriesView(0);
  sub_1000F24EC(&qword_100AD7000, &unk_10094AB40);
  State.wrappedValue.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100004F84(v11, &unk_100AD4790, &unk_10093B4E0);
    v17 = (v1 + *(v16 + 32));
    v18 = *v17;
    v19 = *(v17 + 8);

    if ((v19 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v20 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v29 + 8))(v8, v30);
      v18 = v34;
    }

    swift_getKeyPath();
    v34 = v18;
    sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager, &unk_100962218);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_10003ED74(v18 + v21, v5, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

    sub_1000082B4(&v5[*(v32 + 24)], v3, &qword_100AD6FB8, &qword_10094AD40);
    sub_10003F95C(v5, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
    sub_1000082B4(&v3[*(v31 + 28)], v33, &qword_100AD2688, &unk_100948C60);
    return sub_100004F84(v3, &qword_100AD6FB8, &qword_10094AD40);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v23 = (v1 + *(v16 + 32));
    v24 = *v23;
    v25 = *(v23 + 8);

    if ((v25 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v29 + 8))(v8, v30);
      v24 = v34;
    }

    swift_getKeyPath();
    v34 = v24;
    sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager, &unk_100962218);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = OBJC_IVAR____TtC7Journal19InsightsDataManager__byEntryDate;
    swift_beginAccess();
    sub_10003ED74(v24 + v27, v5, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

    sub_1000082B4(&v5[*(v32 + 28)], v3, &qword_100AD6FB8, &qword_10094AD40);
    sub_10003F95C(v5, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
    v28 = sub_1000B89AC(v15);
    sub_10003F084(v28, v33);
    sub_100004F84(v3, &qword_100AD6FB8, &qword_10094AD40);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_100279898@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for AxisTick();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADB508, &qword_10094B040);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = sub_1000F24EC(&qword_100ADB510, &qword_10094B048);
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  if (sub_100278DB8())
  {
    v14 = v27;
    v15 = *(v28 + 56);

    return v15(v14, 1, 1, v11);
  }

  else
  {
    v17 = (a1 + *(type metadata accessor for InsightsYearlyEntriesView(0) + 44));
    v18 = v17[3];
    v19 = v17[4];
    v33 = *v17;
    v34 = *(v17 + 1);
    v35 = v18;
    v36 = v19;

    AxisTick.init(centered:length:stroke:)();
    LODWORD(v29) = static HierarchicalShapeStyle.tertiary.getter();
    HIDWORD(v29) = 1056964608;
    v20 = sub_1000F24EC(&qword_100ADB490, &qword_10094AFD0);
    v26 = v11;
    v21 = v8;
    v22 = v20;
    v23 = sub_10000B58C(&qword_100ADB498, &qword_100ADB490, &qword_10094AFD0, &protocol conformance descriptor for _OpacityShapeStyle<A>);
    AxisMark.foregroundStyle<A>(_:)();
    (*(v4 + 8))(v6, v3);
    v29 = v3;
    v30 = v22;
    v31 = &protocol witness table for AxisTick;
    v32 = v23;
    swift_getOpaqueTypeConformance2();
    AxisMark.offset(x:y:)();
    (*(v21 + 8))(v10, v7);
    v24 = v27;
    v25 = v26;
    (*(v28 + 32))(v27, v13, v26);
    return (*(v28 + 56))(v24, 0, 1, v25);
  }
}

uint64_t sub_100279C50@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37[1] = a2;
  v49 = a3;
  v3 = sub_1000F24EC(&qword_100AE1670, &qword_10094AFF0);
  __chkstk_darwin(v3 - 8);
  v47 = v37 - v4;
  v5 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v5 - 8);
  v42 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v7 - 8);
  v39 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v9 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.FormatStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v44 = sub_1000F24EC(&qword_100ADB4A8, &qword_10094AFE0);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v18 = v37 - v17;
  v19 = sub_1000F24EC(&qword_100ADB4A0, &qword_10094AFD8);
  v45 = *(v19 - 8);
  v46 = v19;
  __chkstk_darwin(v19);
  v43 = v37 - v20;
  v48 = sub_1000F24EC(&qword_100ADB4C0, &qword_10094AFF8);
  v50 = *(v48 - 8);
  __chkstk_darwin(v48);
  v40 = v37 - v21;
  v22 = AxisValue.index.getter();
  result = AxisValue.count.getter();
  v24 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if (v22 == v24 && sub_10027A374() != 1)
  {
    v34 = v49;
    v35 = *(v50 + 56);
    v36 = v48;

    return v35(v34, 1, 1, v36);
  }

  else
  {
    static FormatStyle<>.dateTime.getter();
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    Date.FormatStyle.year(_:)();
    (*(v9 + 8))(v11, v38);
    (*(v13 + 8))(v15, v12);
    if (v22 == v24)
    {
      static UnitPoint.topTrailing.getter();
    }

    static AxisValueLabelCollisionResolution.greedy.getter();
    static AxisValueLabelOrientation.automatic.getter();
    sub_100041A20(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    AxisValueLabel.init<A>(format:centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
    v25 = type metadata accessor for Font.Design();
    v26 = v47;
    (*(*(v25 - 8) + 56))(v47, 1, 1, v25);
    static Font.system(size:weight:design:)();
    sub_100004F84(v26, &qword_100AE1670, &qword_10094AFF0);
    Font.bold()();

    v27 = sub_10000B58C(&qword_100ADB4B0, &qword_100ADB4A8, &qword_10094AFE0, &protocol conformance descriptor for AxisValueLabel<A>);
    v29 = v43;
    v28 = v44;
    AxisMark.font(_:)();

    (*(v41 + 8))(v18, v28);
    v53 = static HierarchicalShapeStyle.tertiary.getter();
    v51 = v28;
    v52 = v27;
    swift_getOpaqueTypeConformance2();
    v30 = v40;
    v31 = v46;
    AxisMark.foregroundStyle<A>(_:)();
    (*(v45 + 8))(v29, v31);
    v32 = v49;
    v33 = v48;
    (*(v50 + 32))(v49, v30, v48);
    return (*(v50 + 56))(v32, 0, 1, v33);
  }

  return result;
}

uint64_t sub_10027A374()
{
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Calendar();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AxisValue.as<A>(_:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100004F84(v9, &unk_100AD4790, &unk_10093B4E0);
    return 1;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    type metadata accessor for InsightsYearlyEntriesView(0);
    sub_100048878(v6);
    (*(v1 + 104))(v3, enum case for Calendar.Component.month(_:), v0);
    v15 = Calendar.component(_:from:)();
    (*(v1 + 8))(v3, v0);
    (*(v4 + 8))(v6, v17);
    (*(v11 + 8))(v13, v10);
    return v15;
  }
}

uint64_t sub_10027A6BC(uint64_t a1)
{
  v2 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for InsightsYearlyEntriesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v7 - 8);
  static AxisMarkValues.automatic(desiredCount:roundLowerBound:roundUpperBound:)();
  sub_10003ED74(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InsightsYearlyEntriesView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1002820E0(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for InsightsYearlyEntriesView);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_1000F24EC(&qword_100ADB480, &qword_10094AFC8);
  sub_100281A78();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_10027A914@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v61 = a1;
  v70 = a2;
  v69 = sub_1000F24EC(&qword_100ADB4B8, &qword_10094AFE8);
  __chkstk_darwin(v69);
  v68 = &v53 - v2;
  v56 = type metadata accessor for EnvironmentValues();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AE1670, &qword_10094AFF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v53 - v5;
  v7 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v7 - 8);
  v59 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v9 - 8);
  v57 = sub_1000F24EC(&qword_100ADB4A8, &qword_10094AFE0);
  v60 = *(v57 - 8);
  __chkstk_darwin(v57);
  v11 = &v53 - v10;
  v65 = sub_1000F24EC(&qword_100ADB4A0, &qword_10094AFD8);
  v64 = *(v65 - 1);
  __chkstk_darwin(v65);
  v58 = &v53 - v12;
  v67 = sub_1000F24EC(&qword_100ADB4C0, &qword_10094AFF8);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v74 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = &v53 - v15;
  v16 = type metadata accessor for AxisGridLine();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000F24EC(&qword_100ADB4C8, &qword_10094B000);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v72 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v82 = v79;
  v83 = v80;
  v84 = v81;
  AxisGridLine.init(centered:stroke:)();
  LODWORD(v76) = static HierarchicalShapeStyle.primary.getter();
  HIDWORD(v76) = 1028443341;
  sub_1000F24EC(&qword_100ADB490, &qword_10094AFD0);
  v24 = v57;
  sub_10000B58C(&qword_100ADB498, &qword_100ADB490, &qword_10094AFD0, &protocol conformance descriptor for _OpacityShapeStyle<A>);
  v71 = v23;
  AxisMark.foregroundStyle<A>(_:)();
  (*(v17 + 8))(v19, v16);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v25 = v61;
  v26 = v58;
  AxisValueLabel.init<>(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:)();
  v27 = type metadata accessor for Font.Design();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  static Font.system(size:weight:design:)();
  sub_100004F84(v6, &qword_100AE1670, &qword_10094AFF0);
  Font.bold()();

  v28 = sub_10000B58C(&qword_100ADB4B0, &qword_100ADB4A8, &qword_10094AFE0, &protocol conformance descriptor for AxisValueLabel<A>);
  AxisMark.font(_:)();

  (*(v60 + 8))(v11, v24);
  v29 = *(v25 + 16);
  v30 = *(v25 + 24);
  v31 = *(v25 + 32);
  if (*(v25 + 33) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v33 = v54;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v34 = sub_100280C78(v29, v30, v31, 0);
    (*(v55 + 8))(v33, v56, v34);
    v29 = v76;
    v30 = v77;
    LOBYTE(v31) = v78;
  }

  v76 = v29;
  v77 = v30;
  v78 = v31;
  sub_1000F24EC(&qword_100ADB018, qword_10094AB70);
  Binding.wrappedValue.getter();
  v35 = v75;

  if (v35 == 3 || sub_10027E578())
  {
    v36 = static HierarchicalShapeStyle.tertiary.getter();
  }

  else
  {
    v36 = static HierarchicalShapeStyle.quaternary.getter();
  }

  v75 = v36;
  v76 = v24;
  v77 = v28;
  swift_getOpaqueTypeConformance2();
  v37 = v73;
  v38 = v65;
  AxisMark.foregroundStyle<A>(_:)();
  (*(v64 + 8))(v26, v38);
  v39 = v62;
  v65 = *(v62 + 16);
  v40 = v72;
  v41 = v63;
  (v65)(v72, v71, v63);
  v42 = v66;
  v43 = *(v66 + 16);
  v44 = v74;
  v45 = v67;
  v43(v74, v37, v67);
  v46 = v68;
  (v65)(v68, v40, v41);
  v47 = v69;
  v48 = *(v69 + 48);
  v43(&v46[v48], v44, v45);
  v49 = v70;
  (*(v39 + 32))(v70, v46, v41);
  (*(v42 + 32))(v49 + *(v47 + 48), &v46[v48], v45);
  v50 = *(v42 + 8);
  v50(v73, v45);
  v51 = *(v39 + 8);
  v51(v71, v41);
  v50(v74, v45);
  return (v51)(v72, v41);
}

uint64_t sub_10027B35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_1000F24EC(&qword_100ADB430, &qword_10094AFA0) + 36));
  v5 = *(sub_1000F24EC(&qword_100AD20A8, &qword_100940250) + 28);
  v6 = enum case for ColorScheme.light(_:);
  v7 = type metadata accessor for ColorScheme();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = swift_getKeyPath();
  v8 = type metadata accessor for ChartAxisContent();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = *(sub_1000F24EC(&qword_100ADB418, &qword_10094AF98) + 36);
  v10 = enum case for BlendMode.plusDarker(_:);
  v11 = type metadata accessor for BlendMode();
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v9, v10, v11);
}

uint64_t sub_10027B4C4(uint64_t *a1)
{
  v2 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003E5564(0, *(v2 + 16) + 1, 1, v2);
    v2 = result;
  }

  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (v5 >= v4 >> 1)
  {
    result = sub_1003E5564((v4 > 1), v5 + 1, 1, v2);
    v2 = result;
  }

  *(v2 + 16) = v5 + 1;
  *(v2 + 8 * v5 + 32) = 10;
  *a1 = v2;
  return result;
}

uint64_t sub_10027B588@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v8 = *(sub_1000F24EC(a2, a3) + 36);
  v9 = enum case for BlendMode.plusLighter(_:);
  v10 = type metadata accessor for BlendMode();
  (*(*(v10 - 8) + 104))(a5 + v8, v9, v10);
  v11 = a4(0);
  v12 = *(*(v11 - 8) + 16);

  return v12(a5, a1, v11);
}

uint64_t sub_10027B664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100ADB1E8, &qword_10094ADA0);
  __chkstk_darwin(v9);
  v11 = v14 - v10;
  v12 = *(a1 + *(type metadata accessor for InsightsYearlyEntriesView(0) + 80));
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = v12;
  v11[16] = 0;
  sub_1000F24EC(&qword_100ADB200, &qword_10094ADD0);
  sub_10027B83C(a2, a1);
  static AccessibilityChildBehavior.combine.getter();
  sub_10000B58C(&qword_100ADB1F0, &qword_100ADB1E8, &qword_10094ADA0, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v6 + 8))(v8, v5);
  return sub_100004F84(v11, &qword_100ADB1E8, &qword_10094ADA0);
}

uint64_t sub_10027B83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsYearlyEntriesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  if (*(a1 + 16) >= 5uLL)
  {
    v7 = 5;
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = *(type metadata accessor for InsightsDataManager.TopAssetCategory(0) - 8);
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13[0] = a1;
  v13[1] = v9;
  v13[2] = 0;
  v13[3] = (2 * v7) | 1;
  sub_10003ED74(a2, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InsightsYearlyEntriesView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1002820E0(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for InsightsYearlyEntriesView);

  sub_1000F24EC(&qword_100ADB208, &qword_10094ADD8);
  type metadata accessor for UUID();
  sub_1000F24EC(&qword_100ADB210, &qword_10094ADE0);
  sub_10000B58C(&qword_100ADB218, &qword_100ADB208, &qword_10094ADD8, &protocol conformance descriptor for ArraySlice<A>);
  sub_100280DBC();
  sub_100041A20(&qword_100ADB258, type metadata accessor for InsightsDataManager.TopAssetCategory, &unk_100962070);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10027BAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v56 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for BlurReplaceTransition.Configuration();
  v7 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v52 = type metadata accessor for BlurReplaceTransition();
  v12 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  v51 = sub_1000F24EC(&qword_100ADB228, &qword_10094ADE8);
  __chkstk_darwin(v51);
  v18 = &v45 - v17;
  v19 = sub_1000F24EC(&qword_100ADB260, &qword_10094AE00);
  v20 = *(v19 - 8);
  v54 = v19;
  v55 = v20;
  __chkstk_darwin(v19);
  v46 = &v45 - v21;
  v49 = type metadata accessor for AttributedString();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v45 - v25;
  sub_10027C088(a1);
  *v18 = static HorizontalAlignment.leading.getter();
  *(v18 + 1) = 0xC000000000000000;
  v18[16] = 0;
  v27 = &v18[*(sub_1000F24EC(&qword_100ADB268, &qword_10094AE08) + 44)];
  v45 = v26;
  sub_10027D50C(a1, a2, v26, v27);
  static BlurReplaceTransition.Configuration.downUp.getter();
  v28 = v53;
  (*(v7 + 16))(v50, v11, v53);
  BlurReplaceTransition.init(configuration:)();
  (*(v7 + 8))(v11, v28);
  v29 = v52;
  (*(v12 + 16))(v48, v16, v52);
  sub_100041A20(&qword_100ADB270, &type metadata accessor for BlurReplaceTransition, &protocol conformance descriptor for BlurReplaceTransition);
  v30 = v29;
  v31 = AnyTransition.init<A>(_:)();
  (*(v12 + 8))(v16, v30);
  v32 = v51;
  *&v18[*(v51 + 36)] = v31;
  v33 = v56;
  static AccessibilityChildBehavior.ignore.getter();
  v34 = sub_100280EB4();
  v35 = v46;
  View.accessibilityElement(children:)();
  (*(v57 + 8))(v33, v58);
  sub_100004F84(v18, &qword_100ADB228, &qword_10094ADE8);
  v36 = v47;
  v37 = v26;
  v38 = v49;
  (*(v47 + 16))(v23, v37, v49);
  v39 = Text.init(_:)();
  v41 = v40;
  LOBYTE(v12) = v42;
  v60 = v32;
  v61 = v34;
  swift_getOpaqueTypeConformance2();
  v43 = v54;
  View.accessibilityLabel(_:)();
  sub_1000594D0(v39, v41, v12 & 1);

  (*(v55 + 8))(v35, v43);
  return (*(v36 + 8))(v45, v38);
}

uint64_t sub_10027C088(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v2);
  v3 = sub_1000F24EC(&qword_100AD1350, &unk_100949E00);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v9 = *(a1 + *(v8 + 20));
  if (v9 > 4)
  {
    if (*(a1 + *(v8 + 20)) > 7u)
    {
      if (v9 == 8)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v26._countAndFlagsBits = 23390;
        v26._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
        v35 = *(a1 + *(v8 + 24));
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v27._countAndFlagsBits = 0xD000000000000035;
        v27._object = 0x80000001008E7BC0;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
        String.LocalizationValue.init(stringInterpolation:)();
        v28 = type metadata accessor for Locale();
        (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
        swift_getKeyPath();
        v35 = _swiftEmptyArrayStorage;
        sub_100041A20(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
        sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
        sub_10000B58C(&qword_100AD1368, &qword_100AD1360, &unk_10093C020, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_100280F98();
        return AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
      }

      if (v9 == 9)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v15._countAndFlagsBits = 23390;
        v15._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
        v35 = *(a1 + *(v8 + 24));
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v11 = 0xD000000000000030;
        v12 = 0x80000001008E7B50;
      }

      else
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v32._countAndFlagsBits = 23390;
        v32._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
        v35 = *(a1 + *(v8 + 24));
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v11 = 0xD00000000000002FLL;
        v12 = 0x80000001008E7AF0;
      }
    }

    else
    {
      if (v9 == 5)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v23._countAndFlagsBits = 23390;
        v23._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
        v35 = *(a1 + *(v8 + 24));
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v24._countAndFlagsBits = 0xD000000000000035;
        v24._object = 0x80000001008E7D10;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
        String.LocalizationValue.init(stringInterpolation:)();
        v25 = type metadata accessor for Locale();
        (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
        swift_getKeyPath();
        v35 = _swiftEmptyArrayStorage;
        sub_100041A20(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
        sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
        sub_10000B58C(&qword_100AD1368, &qword_100AD1360, &unk_10093C020, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_100280F98();
        return AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
      }

      if (v9 == 6)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v10._countAndFlagsBits = 23390;
        v10._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
        v35 = *(a1 + *(v8 + 24));
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v11 = 0xD000000000000030;
        v12 = 0x80000001008E7CA0;
      }

      else
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v31._countAndFlagsBits = 23390;
        v31._object = 0xE200000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
        v35 = *(a1 + *(v8 + 24));
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v11 = 0xD000000000000033;
        v12 = 0x80000001008E7C30;
      }
    }

LABEL_10:
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v11);
    String.LocalizationValue.init(stringInterpolation:)();
    v14 = type metadata accessor for Locale();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    swift_getKeyPath();
    v35 = _swiftEmptyArrayStorage;
    sub_100041A20(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
    sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
    sub_10000B58C(&qword_100AD1368, &qword_100AD1360, &unk_10093C020, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100280F98();
    return AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
  }

  if (*(a1 + *(v8 + 20)) > 1u)
  {
    if (v9 == 2)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v20._countAndFlagsBits = 23390;
      v20._object = 0xE200000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
      v35 = *(a1 + *(v8 + 24));
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v21._countAndFlagsBits = 0xD00000000000002DLL;
      v21._object = 0x80000001008E7DE0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
      String.LocalizationValue.init(stringInterpolation:)();
      v22 = type metadata accessor for Locale();
      (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
      swift_getKeyPath();
      v35 = _swiftEmptyArrayStorage;
      sub_100041A20(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
      sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
      sub_10000B58C(&qword_100AD1368, &qword_100AD1360, &unk_10093C020, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      sub_100280F98();
      return AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
    }

    if (v9 == 3)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v13._countAndFlagsBits = 23390;
      v13._object = 0xE200000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
      v35 = *(a1 + *(v8 + 24));
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v11 = 0xD00000000000002DLL;
      v12 = 0x80000001008E7E40;
    }

    else
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v29._countAndFlagsBits = 23390;
      v29._object = 0xE200000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
      v35 = *(a1 + *(v8 + 24));
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v12 = 0x80000001008E7D80;
      v11 = 0xD00000000000002ELL;
    }

    goto LABEL_10;
  }

  if (*(a1 + *(v8 + 20)))
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 23390;
    v30._object = 0xE200000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
    v35 = *(a1 + *(v8 + 24));
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v17 = 0x80000001008E7EA0;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 23390;
    v16._object = 0xE200000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
    v35 = *(a1 + *(v8 + 24));
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v17 = 0x80000001008E7F00;
  }

  v18 = 0xD00000000000002ELL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*(&v17 - 1));
  String.LocalizationValue.init(stringInterpolation:)();
  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  swift_getKeyPath();
  v35 = _swiftEmptyArrayStorage;
  sub_100041A20(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions, &protocol conformance descriptor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360, &unk_10093C020);
  sub_10000B58C(&qword_100AD1368, &qword_100AD1360, &unk_10093C020, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100280F98();
  return AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
}

double sub_10027D50C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v67 = a2;
  v68 = a3;
  v61 = a1;
  v75 = a4;
  v73 = type metadata accessor for Font.Leading();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000F24EC(&qword_100ADB278, &qword_10094AE10);
  __chkstk_darwin(v66);
  v65 = &v59 - v5;
  v6 = type metadata accessor for AttributedString();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000F24EC(&qword_100ADB280, &qword_10094AE18);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v59 - v10;
  v11 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000F24EC(&qword_100AD1ED0, &qword_10094AE20);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v77 = *(v61 + *(type metadata accessor for InsightsDataManager.TopAssetCategory(0) + 24));
  static Locale.autoupdatingCurrent.getter();
  sub_1000F6568();
  IntegerFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Notation.compactName.getter();
  IntegerFormatStyle.notation(_:)();
  (*(v12 + 8))(v14, v11);
  (*(v17 + 8))(v19, v16);
  sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0, &qword_10094AE20, &protocol conformance descriptor for IntegerFormatStyle<A>);
  v21 = Text.init<A>(_:format:)();
  v23 = v22;
  LOBYTE(v11) = v24;
  static Font.title.getter();
  Font.bold()();

  v25 = Text.font(_:)();
  v27 = v26;
  LOBYTE(v17) = v28;

  sub_1000594D0(v21, v23, v11 & 1);

  type metadata accessor for InsightsYearlyEntriesView(0);
  v29 = Text.tracking(_:)();
  v59 = v30;
  v60 = v31;
  v61 = v32;
  sub_1000594D0(v25, v27, v17 & 1);

  (*(v63 + 16))(v62, v68, v64);
  v33 = v65;
  static Locale.autoupdatingCurrent.getter();
  *v33 = 1;
  sub_10000B58C(&qword_100ADB288, &qword_100ADB278, &qword_10094AE10, &unk_10095FDE0);
  sub_100041A20(&qword_100ADB290, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
  v34 = Text.init<A>(_:format:)();
  v36 = v35;
  LOBYTE(v14) = v37;
  v38 = v71;
  v39 = v69;
  v40 = v73;
  (*(v71 + 104))(v69, enum case for Font.Leading.tight(_:), v73);
  Font.leading(_:)();
  (*(v38 + 8))(v39, v40);
  v41 = Text.font(_:)();
  v43 = v42;
  LOBYTE(v38) = v44;
  v46 = v45;

  sub_1000594D0(v34, v36, v14 & 1);

  v77 = v41;
  v78 = v43;
  v79 = v38 & 1;
  v80 = v46;
  v47 = v76;
  View.unredacted()();
  sub_1000594D0(v41, v43, v38 & 1);

  v48 = v72;
  v49 = *(v72 + 16);
  v50 = v70;
  v51 = v74;
  v49(v70, v47, v74);
  v52 = v75;
  v53 = v29;
  *v75 = v29;
  v54 = v59;
  v52[1] = v59;
  LOBYTE(v21) = v60 & 1;
  *(v52 + 16) = v60 & 1;
  v52[3] = v61;
  v55 = v52;
  v56 = sub_1000F24EC(&qword_100ADB298, &unk_10094AE28);
  v49(v55 + *(v56 + 48), v50, v51);
  sub_1000F24DC(v53, v54, v21);
  v57 = *(v48 + 8);

  v57(v76, v51);
  v57(v50, v51);
  sub_1000594D0(v53, v54, v21);

  return result;
}

uint64_t sub_10027DD14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v44 = sub_1000F24EC(&qword_100ADB2A8, &qword_10094AE68);
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v37 - v5;
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v41 = sub_1000F24EC(&qword_100ADB2B0, &unk_10094AE70);
  v39 = *(v41 - 8);
  v9 = v39;
  __chkstk_darwin(v41);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  LocalizedStringKey.init(stringLiteral:)();
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = &v13[*(sub_1000F24EC(&unk_100AD0DB0, &qword_10093B4D8) + 36)];
  sub_100021CEC(v8, v22, &unk_100AD4790, &unk_10093B4E0);
  *(v22 + *(sub_1000F24EC(&qword_100AD0DC0, &unk_10094AE80) + 36)) = 1;
  *v13 = v14;
  *(v13 + 1) = v16;
  v13[16] = v18 & 1;
  *(v13 + 3) = v20;
  v23 = v13;
  v38 = v13;
  v51 = a1;
  swift_getKeyPath();

  sub_1000F24EC(&qword_100ADB2B8, &unk_100960760);
  sub_1000F24EC(&qword_100ADB2C0, &qword_10094AEB0);
  sub_10000B58C(&qword_100ADB2C8, &qword_100ADB2B8, &unk_100960760, &protocol conformance descriptor for [A]);
  v24 = sub_100041A20(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v47 = &type metadata for Text;
  v48 = v21;
  v49 = &protocol witness table for Text;
  v50 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v42;
  ForEach<>.init(_:id:content:)();
  v26 = *(v9 + 16);
  v28 = v40;
  v27 = v41;
  v26(v40, v23, v41);
  v29 = *(v46 + 16);
  v31 = v43;
  v30 = v44;
  v29(v43, v25, v44);
  v32 = v45;
  v26(v45, v28, v27);
  v33 = sub_1000F24EC(&qword_100ADB2D0, &qword_10094AEB8);
  v29(&v32[*(v33 + 48)], v31, v30);
  v34 = *(v46 + 8);
  v34(v25, v30);
  v35 = *(v39 + 8);
  v35(v38, v27);
  v34(v31, v30);
  return (v35)(v28, v27);
}

uint64_t sub_10027E23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v25 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v3 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v24 = *(v12 + 16);
  v24(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v11, v13);
  static FormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  Date.FormatStyle.year(_:)();
  (*(v3 + 8))(v5, v25);
  (*(v7 + 8))(v9, v6);
  sub_100041A20(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_100041A20(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v15 = Text.init<A>(_:format:)();
  v17 = v16;
  LOBYTE(v7) = v18;
  v20 = v19;
  v21 = a2 + *(sub_1000F24EC(&qword_100AD0DC8, &unk_10093B4F0) + 36);
  (v24)(v21, v26, v11);
  result = sub_1000F24EC(&qword_100AD0DD0, &unk_100954DA0);
  *(v21 + *(result + 36)) = 1;
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v20;
  return result;
}

BOOL sub_10027E578()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = *v0;
    if (v6 == 2)
    {
      return 1;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v8 = sub_1000467F0(v5, 0);
    v9 = *(v2 + 8);
    v9(v4, v1, v8);
    if (v13[15] == 2)
    {
      return 1;
    }

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v12 = sub_1000467F0(v5, 0);
    v9(v4, v1, v12);
    v6 = v13[14];
  }

  return v6 == 3;
}

uint64_t sub_10027E770@<X0>(uint64_t a1@<X8>)
{
  v28 = type metadata accessor for Font.TextStyle();
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v11 = type metadata accessor for InsightsYearlyEntriesView(0);
  v12 = v11[6];
  *(a1 + v12) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9990, &unk_100942950);
  swift_storeEnumTagMultiPayload();
  v13 = a1 + v11[7];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a1 + v11[8];
  type metadata accessor for InsightsDataManager(0);
  sub_100041A20(&qword_100AD99A0, type metadata accessor for InsightsDataManager, &unk_100962218);
  *v14 = Environment.init<A>(_:)();
  *(v14 + 8) = v15 & 1;
  v16 = a1 + v11[9];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  static Date.now.getter();
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  sub_1000082B4(v10, v7, &unk_100AD4790, &unk_10093B4E0);
  State.init(wrappedValue:)();
  sub_100004F84(v10, &unk_100AD4790, &unk_10093B4E0);
  v18 = a1 + v11[11];
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v19 = v31;
  *v18 = v30;
  *(v18 + 16) = v19;
  *(v18 + 32) = v32;
  *(a1 + v11[12]) = 0x4030000000000000;
  v29 = 0x4050000000000000;
  v20 = enum case for Font.TextStyle.title(_:);
  v21 = *(v2 + 104);
  v22 = v28;
  v21(v4, enum case for Font.TextStyle.title(_:), v28);
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a1 + v11[14]) = 0xC002666666666666;
  v23 = v11[15];
  *(a1 + v23) = static Font.headline.getter();
  v29 = 0x4046000000000000;
  v21(v4, v20, v22);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a1 + v11[17]) = 0xBFF8000000000000;
  v24 = v11[18];
  *(a1 + v24) = static Font.headline.getter();
  *(a1 + v11[19]) = 0xBFF0000000000000;
  *(a1 + v11[20]) = 0x4030000000000000;
  v25 = v11[21];
  result = static Font.footnote.getter();
  *(a1 + v25) = result;
  *(a1 + v11[22]) = 0x4054800000000000;
  return result;
}

uint64_t sub_10027EB90(unint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, double *a6, uint64_t a7, double a8)
{
  v35 = a7;
  v36 = a6;
  LODWORD(v33) = a4;
  v34 = a3;
  v11 = type metadata accessor for LayoutSubviews();
  v31 = *(v11 - 8);
  v32 = v11;
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = sub_1000F24EC(&qword_100ADB5E0, &qword_10094B3A8);
  __chkstk_darwin(v17 - 8);
  v19 = &v31 - v18;
  v20 = type metadata accessor for LayoutSubview();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100603D0C(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100004F84(v19, &qword_100ADB5E0, &qword_10094B3A8);
LABEL_7:
    type metadata accessor for InsightsYearlyEntriesView.TopLayout.Cache(0);
    v42 = a2 & 1;
    v41 = LOBYTE(v33) & 1;
    return AnyLayout.sizeThatFits(proposal:subviews:cache:)();
  }

  (*(v21 + 32))(v23, v19, v20);
  if ((a2 & 1) != 0 || (v24 = (a1 >> 52) & 0x7FF, !(v24 | a1 & 0xFFFFFFFFFFFFFLL)) || v24 == 2047)
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_7;
  }

  v26 = (*&a1 + 24.0) * 0.36 + -12.0;
  *v36 = v26;
  v40 = 0;
  v27 = LOBYTE(v33) & 1;
  v39 = LOBYTE(v33) & 1;
  LayoutSubview.sizeThatFits(_:)();
  v33 = *&a1 - v26;
  v28 = v31;
  v29 = a5;
  v30 = v32;
  (*(v31 + 16))(v13, v29, v32);
  sub_1007A7250(1);
  type metadata accessor for InsightsYearlyEntriesView.TopLayout.Cache(0);
  v38 = 0;
  v37 = v27;
  AnyLayout.sizeThatFits(proposal:subviews:cache:)();
  (*(v28 + 8))(v16, v30);
  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_10027EF78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LayoutSubviews();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v13 - v10;
  (*(v5 + 16))(v7, a1, v4, v9);
  sub_1007A7250(1);
  type metadata accessor for InsightsYearlyEntriesView.TopLayout.Cache(0);
  AnyLayout.makeCache(subviews:)();
  result = (*(v5 + 8))(v11, v4);
  *a2 = 0x4059000000000000;
  return result;
}

uint64_t sub_10027F0C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LayoutSubviews();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v12 - v9;
  (*(v4 + 16))(v6, a2, v3, v8);
  sub_1007A7250(1);
  type metadata accessor for InsightsYearlyEntriesView.TopLayout.Cache(0);
  AnyLayout.updateCache(_:subviews:)();
  return (*(v4 + 8))(v10, v3);
}

void (*sub_10027F23C(uint64_t *a1))(void *a1)
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
  return sub_100113D90;
}

BOOL sub_10027F2C8()
{
  v25 = type metadata accessor for Calendar.Component();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v21 = &v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for Calendar();
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  type metadata accessor for InsightsYearlyEntriesView(0);
  sub_1000F24EC(&qword_100AD7000, &unk_10094AB40);
  State.wrappedValue.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100004F84(v6, &unk_100AD4790, &unk_10093B4E0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    sub_100048878(v3);
    static Date.now.getter();
    v16 = v21;
    v15 = v22;
    v17 = v25;
    (*(v22 + 104))(v21, enum case for Calendar.Component.year(_:), v25);
    v18 = Calendar.compare(_:to:toGranularity:)();
    (*(v15 + 8))(v16, v17);
    v19 = *(v8 + 8);
    v19(v10, v7);
    (*(v23 + 8))(v3, v24);
    v19(v13, v7);
    return v18 == 0;
  }
}

uint64_t sub_10027F644()
{
  v1 = sub_1000F24EC(&qword_100AD6548, &qword_100945218);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v86 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v84 = v74 - v5;
  __chkstk_darwin(v6);
  v85 = v74 - v7;
  __chkstk_darwin(v8);
  v83 = v74 - v9;
  v10 = sub_1000F24EC(&qword_100ADAF88, &qword_10094AB38);
  __chkstk_darwin(v10 - 8);
  v12 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v82 = v74 - v14;
  __chkstk_darwin(v15);
  v89 = v74 - v16;
  __chkstk_darwin(v17);
  v88 = v74 - v18;
  v19 = type metadata accessor for Locale();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v20 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v74[3] = String.init(localized:table:bundle:locale:comment:)();
  v74[2] = v21;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v23;
  type metadata accessor for InsightsYearlyEntriesChartRepresentable(0);
  Date.timeIntervalSinceReferenceDate.getter();
  v26 = v25;
  sub_1000F24EC(&qword_100AD2688, &unk_100948C60);
  Date.timeIntervalSinceReferenceDate.getter();
  v28 = v27;
  result = sub_1000065A8(0, &qword_100ADAF90, AXNumericDataAxisDescriptor_ptr);
  if (v26 <= v28)
  {
    v74[4] = result;
    v74[1] = AXNumericDataAxisDescriptor.init(title:range:gridlinePositions:valueDescriptionProvider:)();
    v30 = *v0;
    v31 = *(*v0 + 16);
    v90 = *v0;
    if (v31)
    {
      v32 = v88;
      sub_1000082B4(v30 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v88, &qword_100AD6548, &qword_100945218);
      v33 = 0;
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v33 = 1;
      v32 = v88;
    }

    v35 = v89;
    v80 = *(v2 + 56);
    v81 = v2 + 56;
    v80(v32, v33, 1, v1);
    sub_100021CEC(v32, v35, &qword_100ADAF88, &qword_10094AB38);
    v78 = *(v2 + 48);
    v79 = v2 + 48;
    v36 = v78(v35, 1, v1);
    v87 = v2;
    v89 = v1;
    v74[5] = v24;
    if (v36 != 1)
    {
      v77 = v12;
      v74[0] = v22;
      v37 = v83;
      sub_100021CEC(v35, v83, &qword_100AD6548, &qword_100945218);
      v38 = v85;
      sub_1000082B4(v37, v85, &qword_100AD6548, &qword_100945218);
      v39 = *(v1 + 48);
      v41 = *(v38 + v39);
      v40 = *(v38 + v39 + 8);
      v42 = v84;
      v43 = &v84[v39];
      v44 = type metadata accessor for Date();
      v45 = *(v44 - 8);
      v75 = *(v45 + 32);
      v76 = v44;
      v74[6] = v45 + 32;
      v75(v42, v38);
      *v43 = v41;
      *(v43 + 1) = v40;
      v46 = v90;
      swift_bridgeObjectRetain_n();
      sub_100004F84(v42, &qword_100AD6548, &qword_100945218);
      result = sub_100004F84(v37, &qword_100AD6548, &qword_100945218);
      v47 = v46;
      v48 = *(v46 + 16);
      v49 = v84;
      while (1)
      {
        v50 = v82;
        if (v34 == v48)
        {
          v51 = 1;
          v52 = v48;
          v1 = v89;
          v53 = v77;
        }

        else
        {
          if ((v34 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v1 = v89;
          v53 = v77;
          if (v34 >= *(v47 + 16))
          {
            goto LABEL_26;
          }

          sub_1000082B4(v47 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v34, v82, &qword_100AD6548, &qword_100945218);
          v51 = 0;
          v52 = v34 + 1;
        }

        v80(v50, v51, 1, v1);
        sub_100021CEC(v50, v53, &qword_100ADAF88, &qword_10094AB38);
        if (v78(v53, 1, v1) == 1)
        {
          break;
        }

        v54 = v83;
        v88 = v52;
        sub_100021CEC(v53, v83, &qword_100AD6548, &qword_100945218);
        v55 = v85;
        sub_1000082B4(v54, v85, &qword_100AD6548, &qword_100945218);
        v56 = *(v1 + 48);
        v58 = *(v55 + v56);
        v57 = *(v55 + v56 + 8);
        v59 = (v49 + v56);
        (v75)(v49, v55, v76);
        *v59 = v58;
        v59[1] = v57;
        sub_100004F84(v49, &qword_100AD6548, &qword_100945218);
        v34 = v88;
        result = sub_100004F84(v54, &qword_100AD6548, &qword_100945218);
        if (v40 <= v57)
        {
          v40 = v57;
        }

        v47 = v90;
      }

      result = swift_bridgeObjectRelease_n();
      if (v40 < 0)
      {
        goto LABEL_28;
      }
    }

    result = AXNumericDataAxisDescriptor.init(title:range:gridlinePositions:valueDescriptionProvider:)();
    v91 = _swiftEmptyArrayStorage;
    v60 = v90;
    v61 = *(v90 + 16);
    if (!v61)
    {
LABEL_23:
      v69 = objc_allocWithZone(AXDataSeriesDescriptor);
      v70 = String._bridgeToObjectiveC()();

      sub_1000065A8(0, &qword_100ADAF98, AXDataPoint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v72 = [v69 initWithName:v70 isContinuous:0 dataPoints:isa];

      sub_1000065A8(0, &qword_100ADAFA0, AXChartDescriptor_ptr);
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_100941D50;
      *(v73 + 32) = v72;
      return AXChartDescriptor.init(title:summary:xAxis:yAxis:additionalAxes:series:)();
    }

    v88 = result;
    v62 = 0;
    v63 = v86 + 8;
    while (v62 < *(v60 + 16))
    {
      v64 = v86;
      sub_1000082B4(v60 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v62, v86, &qword_100AD6548, &qword_100945218);
      v65 = *(v63 + *(v1 + 48));
      sub_1000065A8(0, &qword_100ADAF98, AXDataPoint_ptr);
      Date.timeIntervalSinceReferenceDate.getter();
      v66 = v65;
      v67 = v65;
      AXDataPoint.init(x:y:additionalValues:label:)(v68, *&v66, 0, _swiftEmptyArrayStorage);
      sub_100004F84(v64, &qword_100AD6548, &qword_100945218);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v62;
      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = v89;
      v60 = v90;
      if (v61 == v62)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100280080(double a1)
{
  v1 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v23 = type metadata accessor for Date();
  v17 = *(v23 - 8);
  __chkstk_darwin(v23);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init(timeIntervalSinceReferenceDate:)();
  static FormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  Date.FormatStyle.year(_:)();
  (*(v4 + 8))(v6, v22);
  v20 = *(v8 + 8);
  v20(v10, v7);
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.FormatStyle.month(_:)();
  (*(v24 + 8))(v3, v25);
  v20(v13, v7);
  sub_100041A20(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v20(v16, v7);
  (*(v17 + 8))(v19, v23);
  return v26;
}

unint64_t sub_10028046C()
{
  result = qword_100ADAF80;
  if (!qword_100ADAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADAF80);
  }

  return result;
}

void sub_1002804E8(uint64_t a1)
{
  sub_100280704(319, qword_100AD9860, &type metadata for InsightsLayoutMetrics.Style);
  if (v1 <= 0x3F)
  {
    sub_100280750(319, &qword_100ADB010, &qword_100ADB018, qword_10094AB70, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100087D38(319, &qword_100AF70F0, &type metadata accessor for Calendar);
      if (v3 <= 0x3F)
      {
        sub_100280704(319, &qword_100ADB020, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_100087D38(319, &qword_100AD9938, type metadata accessor for InsightsDataManager);
          if (v5 <= 0x3F)
          {
            sub_100280704(319, &unk_100ADB028, &type metadata for DynamicGridSizeClass);
            if (v6 <= 0x3F)
            {
              sub_100280750(319, &unk_100AD7098, &unk_100AD4790, &unk_10093B4E0, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_1001E6300(319);
                if (v8 <= 0x3F)
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

void sub_100280704(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100280750(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000F2A18(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1002807D0()
{
  result = qword_100ADB0D0;
  if (!qword_100ADB0D0)
  {
    sub_1000F2A18(&qword_100ADB0A8, &unk_10094ABD0);
    sub_100280888();
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8, &qword_100940250, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB0D0);
  }

  return result;
}

unint64_t sub_100280888()
{
  result = qword_100ADB0D8;
  if (!qword_100ADB0D8)
  {
    sub_1000F2A18(&qword_100ADB0C0, &unk_10094AC20);
    sub_10000B58C(&qword_100ADB0E0, &qword_100ADB0E8, &qword_10094AC60, &protocol conformance descriptor for VStack<A>);
    sub_10000B58C(&qword_100AD2428, &qword_100AD2430, &qword_1009408B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB0D8);
  }

  return result;
}

unint64_t sub_10028096C()
{
  result = qword_100ADB110;
  if (!qword_100ADB110)
  {
    sub_1000F2A18(&qword_100ADB0B0, &qword_10094ABE0);
    sub_100280A24();
    sub_10000B58C(&qword_100ADB138, &qword_100ADB140, &qword_10095A350, &protocol conformance descriptor for _ContainerValueWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB110);
  }

  return result;
}

unint64_t sub_100280A24()
{
  result = qword_100ADB118;
  if (!qword_100ADB118)
  {
    sub_1000F2A18(&qword_100ADB0F8, &unk_10094AC90);
    sub_1000F2A18(&qword_100AD0DA0, &qword_10093B4C8);
    sub_1000F2A18(&qword_100ADB0A8, &unk_10094ABD0);
    sub_1000F2A18(&qword_100ADB0A0, &qword_10094ABC8);
    sub_1002807D0();
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0, &qword_10094ABC8, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    sub_100280BD0();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100ADB128, &qword_100ADB130, &unk_10094ACD0, &protocol conformance descriptor for _ContainerValueWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB118);
  }

  return result;
}

unint64_t sub_100280BD0()
{
  result = qword_100ADB120;
  if (!qword_100ADB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB120);
  }

  return result;
}

unint64_t sub_100280C24()
{
  result = qword_100ADB1B8;
  if (!qword_100ADB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB1B8);
  }

  return result;
}

double sub_100280C78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }

  return result;
}

BOOL sub_100280CB8(char *a1, char *a2)
{
  v5 = *(type metadata accessor for Calendar() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Calendar.Component() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1008BEBDC(a1, a2, v2 + v6, v9);
}

unint64_t sub_100280DBC()
{
  result = qword_100ADB220;
  if (!qword_100ADB220)
  {
    sub_1000F2A18(&qword_100ADB210, &qword_10094ADE0);
    sub_1000F2A18(&qword_100ADB228, &qword_10094ADE8);
    sub_100280EB4();
    swift_getOpaqueTypeConformance2();
    sub_100041A20(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB220);
  }

  return result;
}

unint64_t sub_100280EB4()
{
  result = qword_100ADB230;
  if (!qword_100ADB230)
  {
    sub_1000F2A18(&qword_100ADB228, &qword_10094ADE8);
    sub_10000B58C(&qword_100ADB238, &qword_100ADB240, &unk_10094ADF0, &protocol conformance descriptor for VStack<A>);
    sub_10000B58C(&qword_100ADB248, &qword_100ADB250, &qword_10096F330, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB230);
  }

  return result;
}

unint64_t sub_100280F98()
{
  result = qword_100ADB2A0;
  if (!qword_100ADB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB2A0);
  }

  return result;
}

unint64_t sub_100280FF4()
{
  result = qword_100ADB378;
  if (!qword_100ADB378)
  {
    sub_1000F2A18(&qword_100ADB370, &qword_10094AF50);
    sub_10000B58C(&qword_100ADB380, &qword_100ADB388, &qword_10094AF58, &protocol conformance descriptor for VectorizedRulePlotContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB378);
  }

  return result;
}

unint64_t sub_1002810AC()
{
  result = qword_100ADB3A0;
  if (!qword_100ADB3A0)
  {
    sub_1000F2A18(&qword_100ADB390, &qword_10094AF60);
    sub_100281164();
    sub_10000B58C(&qword_100ADB3D8, &qword_100ADB3E0, &qword_10094AF80, &protocol conformance descriptor for AxisMarks<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB3A0);
  }

  return result;
}

unint64_t sub_100281164()
{
  result = qword_100ADB3A8;
  if (!qword_100ADB3A8)
  {
    sub_1000F2A18(&qword_100ADB3B0, &qword_10094AF68);
    sub_10000B58C(&qword_100ADB3B8, &qword_100ADB3C0, &qword_10094AF70, &protocol conformance descriptor for AxisMarks<A>);
    sub_10000B58C(&qword_100ADB3C8, &qword_100ADB3D0, &qword_10094AF78, &protocol conformance descriptor for AxisMarks<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB3A8);
  }

  return result;
}

unint64_t sub_100281244()
{
  result = qword_100ADB3F0;
  if (!qword_100ADB3F0)
  {
    sub_1000F2A18(&qword_100ADB3E8, &qword_10094AF88);
    sub_100041A20(&qword_100ADB3F8, &type metadata accessor for ChartAxisContent, &protocol conformance descriptor for ChartAxisContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB3F0);
  }

  return result;
}

unint64_t sub_100281300()
{
  result = qword_100ADB400;
  if (!qword_100ADB400)
  {
    sub_1000F2A18(&qword_100AD2688, &unk_100948C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB400);
  }

  return result;
}

unint64_t sub_100281384()
{
  result = qword_100ADB420;
  if (!qword_100ADB420)
  {
    sub_1000F2A18(&qword_100ADB418, &qword_10094AF98);
    sub_100281410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB420);
  }

  return result;
}

unint64_t sub_100281410()
{
  result = qword_100ADB428;
  if (!qword_100ADB428)
  {
    sub_1000F2A18(&qword_100ADB430, &qword_10094AFA0);
    sub_100041A20(&qword_100ADB3F8, &type metadata accessor for ChartAxisContent, &protocol conformance descriptor for ChartAxisContent);
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8, &qword_100940250, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB428);
  }

  return result;
}

unint64_t sub_1002814F8()
{
  result = qword_100ADB440;
  if (!qword_100ADB440)
  {
    sub_1000F2A18(&qword_100ADB438, &qword_10094AFA8);
    sub_100041A20(&qword_100ADB448, &type metadata accessor for ChartPlotContent, &protocol conformance descriptor for ChartPlotContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB440);
  }

  return result;
}

unint64_t sub_1002815B4()
{
  result = qword_100ADB458;
  if (!qword_100ADB458)
  {
    sub_1000F2A18(&qword_100ADB320, &qword_10094AF08);
    sub_100281640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB458);
  }

  return result;
}

unint64_t sub_100281640()
{
  result = qword_100ADB460;
  if (!qword_100ADB460)
  {
    sub_1000F2A18(&qword_100ADB318, &qword_10094AF00);
    sub_10000B58C(&qword_100ADB468, &qword_100ADB450, &unk_10094AFB0, &protocol conformance descriptor for IDView<A, B>);
    sub_10000B58C(&qword_100AD21E0, &qword_100AD21E8, &unk_100940500, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB460);
  }

  return result;
}

uint64_t sub_100281724()
{
  v1 = type metadata accessor for InsightsYearlyEntriesView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1000467F0(*v2, *(v2 + 8));
  sub_100280C78(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 33));
  v3 = v1[6];
  sub_1000F24EC(&qword_100AD9990, &unk_100942950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Calendar();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1000467F0(*(v2 + v1[7]), *(v2 + v1[7] + 8));

  sub_1000467F0(*(v2 + v1[9]), *(v2 + v1[9] + 8));
  v5 = v2 + v1[10];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_1000F24EC(&qword_100AD7000, &unk_10094AB40);

  v8 = v1[13];
  v9 = sub_1000F24EC(&qword_100AD7DC8, &qword_100946C30);
  v10 = *(*(v9 - 8) + 8);
  v10(v2 + v8, v9);

  v10(v2 + v1[16], v9);

  return swift_deallocObject();
}

uint64_t sub_1002819E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for InsightsYearlyEntriesView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_100281A78()
{
  result = qword_100ADB488;
  if (!qword_100ADB488)
  {
    sub_1000F2A18(&qword_100ADB480, &qword_10094AFC8);
    type metadata accessor for AxisGridLine();
    sub_1000F2A18(&qword_100ADB490, &qword_10094AFD0);
    sub_10000B58C(&qword_100ADB498, &qword_100ADB490, &qword_10094AFD0, &protocol conformance descriptor for _OpacityShapeStyle<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000F2A18(&qword_100ADB4A0, &qword_10094AFD8);
    sub_1000F2A18(&qword_100ADB4A8, &qword_10094AFE0);
    sub_10000B58C(&qword_100ADB4B0, &qword_100ADB4A8, &qword_10094AFE0, &protocol conformance descriptor for AxisValueLabel<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB488);
  }

  return result;
}

unint64_t sub_100281C60()
{
  result = qword_100ADB4E0;
  if (!qword_100ADB4E0)
  {
    sub_1000F2A18(&qword_100ADB4D8, &qword_10094B010);
    sub_1000F2A18(&qword_100ADB4A0, &qword_10094AFD8);
    sub_1000F2A18(&qword_100ADB4A8, &qword_10094AFE0);
    sub_10000B58C(&qword_100ADB4B0, &qword_100ADB4A8, &qword_10094AFE0, &protocol conformance descriptor for AxisValueLabel<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB4E0);
  }

  return result;
}

unint64_t sub_100281DAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_100281FD4(a1, a3, a4);
  v8 = sub_100281FD4(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_100281FD4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10028206C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1005773A8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10028206C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1005770D0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002820E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100282160()
{
  result = qword_100ADB500;
  if (!qword_100ADB500)
  {
    sub_1000F2A18(&qword_100ADB4F8, &qword_10094B038);
    sub_1000F2A18(&qword_100ADB508, &qword_10094B040);
    type metadata accessor for AxisTick();
    sub_1000F2A18(&qword_100ADB490, &qword_10094AFD0);
    sub_10000B58C(&qword_100ADB498, &qword_100ADB490, &qword_10094AFD0, &protocol conformance descriptor for _OpacityShapeStyle<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB500);
  }

  return result;
}

unint64_t sub_1002822B0()
{
  result = qword_100ADB560;
  if (!qword_100ADB560)
  {
    sub_1000F2A18(&qword_100ADB550, &qword_10094B0F0);
    sub_10028233C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB560);
  }

  return result;
}

unint64_t sub_10028233C()
{
  result = qword_100ADB568;
  if (!qword_100ADB568)
  {
    sub_1000F2A18(&qword_100ADB548, &qword_10094B0E8);
    sub_1002823C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB568);
  }

  return result;
}

unint64_t sub_1002823C8()
{
  result = qword_100ADB570;
  if (!qword_100ADB570)
  {
    sub_1000F2A18(&qword_100ADB540, &qword_10094B0E0);
    sub_100282480();
    sub_10000B58C(&qword_100AD21A8, &qword_100AD21B0, &qword_10094B160, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB570);
  }

  return result;
}

unint64_t sub_100282480()
{
  result = qword_100ADB578;
  if (!qword_100ADB578)
  {
    sub_1000F2A18(&qword_100ADB580, &qword_10094B198);
    sub_100282538();
    sub_10000B58C(&qword_100ADB5A8, &qword_100ADB5B0, &qword_10094B1B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB578);
  }

  return result;
}

unint64_t sub_100282538()
{
  result = qword_100ADB588;
  if (!qword_100ADB588)
  {
    sub_1000F2A18(&qword_100ADB590, &unk_10094B1A0);
    sub_10000B58C(&qword_100ADB598, &qword_100ADB5A0, &qword_10094FCC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB588);
  }

  return result;
}

unint64_t sub_1002825F0()
{
  result = qword_100ADB5D0;
  if (!qword_100ADB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB5D0);
  }

  return result;
}

unint64_t sub_100282658()
{
  result = qword_100ADB5D8;
  if (!qword_100ADB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB5D8);
  }

  return result;
}

uint64_t sub_1002826AC(uint64_t a1, double *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v41 = a3;
  v42 = a2;
  v13 = type metadata accessor for LayoutSubviews();
  v39 = *(v13 - 8);
  v40 = v13;
  __chkstk_darwin(v13);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v18 = type metadata accessor for LayoutDirection();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v37 - v23;
  v25 = sub_1000F24EC(&qword_100ADB5E0, &qword_10094B3A8);
  __chkstk_darwin(v25 - 8);
  v27 = &v37 - v26;
  sub_100603D0C(&v37 - v26);
  v28 = type metadata accessor for LayoutSubview();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_100004F84(v27, &qword_100ADB5E0, &qword_10094B3A8);
  }

  else
  {
    v45.origin.x = a4;
    v45.origin.y = a5;
    v45.size.width = a6;
    v45.size.height = a7;
    CGRectGetMinX(v45);
    v46.origin.x = a4;
    v46.origin.y = a5;
    v46.size.width = a6;
    v46.size.height = a7;
    CGRectGetMaxY(v46);
    static UnitPoint.bottomLeading.getter();
    v47.origin.x = a4;
    v47.origin.y = a5;
    v47.size.width = a6;
    v47.size.height = a7;
    CGRectGetHeight(v47);
    LOBYTE(slice.origin.x) = 0;
    LOBYTE(remainder.origin.x) = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    (*(v29 + 8))(v27, v28);
  }

  v30 = *v42;
  LayoutSubviews.layoutDirection.getter();
  (*(v19 + 104))(v21, enum case for LayoutDirection.leftToRight(_:), v18);
  v31 = static LayoutDirection.== infix(_:_:)();
  v32 = *(v19 + 8);
  v32(v21, v18);
  v32(v24, v18);
  memset(&slice, 0, sizeof(slice));
  if (v31)
  {
    v33 = CGRectMinXEdge;
  }

  else
  {
    v33 = CGRectMaxXEdge;
  }

  memset(&remainder, 0, sizeof(remainder));
  v48.origin.x = a4;
  v48.origin.y = a5;
  v48.size.width = a6;
  v48.size.height = a7;
  CGRectDivide(v48, &slice, &remainder, v30, v33);
  v35 = v39;
  v34 = v40;
  (*(v39 + 16))(v38, a1, v40);
  sub_1007A7250(1);
  type metadata accessor for InsightsYearlyEntriesView.TopLayout.Cache(0);
  LOBYTE(slice.origin.x) = 0;
  LOBYTE(remainder.origin.x) = 0;
  AnyLayout.placeSubviews(in:proposal:subviews:cache:)();
  return (*(v35 + 8))(v17, v34);
}

uint64_t sub_100282BA4(uint64_t a1)
{
  result = type metadata accessor for AnyLayout.Cache();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100282C30()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal5Asset_context);
  v2 = v1;
  return v1;
}

uint64_t sub_100282C60(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_context);
  if (v2)
  {
    __chkstk_darwin(a1);
    v4 = v3;
    sub_1000F24EC(&qword_100AD38E8, &qword_100941FB8);
    NSManagedObjectContext.performAndWait<A>(_:)();

    LOBYTE(v2) = v6;
  }

  return v2 & 1;
}

uint64_t sub_100282D18(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 16) = v3;
  *(v4 + 89) = a3;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v4 + 24) = v6;
  *(v4 + 32) = *(v6 - 8);
  *(v4 + 40) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v4 + 48) = v7;
  *(v4 + 56) = v9;

  return _swift_task_switch(sub_100282E18, v7, v9);
}

uint64_t sub_100282E18()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC7Journal5Asset_context];
  *(v0 + 64) = v2;
  v3 = *(v0 + 40);
  if (v2)
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 89);
    v7 = swift_allocObject();
    *(v0 + 72) = v7;
    *(v7 + 16) = v1;
    *(v7 + 24) = v6;
    (*(v5 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
    v2;
    v8 = v1;
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    v10 = sub_1000F24EC(&qword_100AD38E0, &qword_100954620);
    *v9 = v0;
    v9[1] = sub_100282FC0;
    v11 = *(v0 + 40);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 88, v11, sub_10029A780, v7, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100282FC0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[8];
    (*(v2[4] + 8))(v2[5], v2[3]);

    v5 = v2[6];
    v6 = v2[7];

    return _swift_task_switch(sub_100283114, v5, v6);
  }
}

uint64_t sub_100283114()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100283174()
{
  v1 = type metadata accessor for AssetSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = v12 - v7;
  (*(v2 + 16))(v12 - v7, v0 + OBJC_IVAR____TtC7Journal5Asset_source, v1, v6);
  (*(v2 + 104))(v4, enum case for AssetSource.automatic(_:), v1);
  sub_100034178(&qword_100ADB838, &type metadata accessor for AssetSource, &protocol conformance descriptor for AssetSource);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v8, v1);

  return v9 & 1;
}

void sub_10028336C()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v0 postNotificationName:v1 object:isa];
}

uint64_t sub_100283488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (!v23)
  {
    sub_100004F84(aBlock, &qword_100AD13D0, &unk_100942DB0);
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_100004F84(v10, &qword_100AD1420, &unk_10093C080);
  }

  v15 = swift_dynamicCast();
  (*(v12 + 56))(v10, v15 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100004F84(v10, &qword_100AD1420, &unk_10093C080);
  }

  (*(v12 + 32))(v14, v10, v11);
  if (static UUID.== infix(_:_:)())
  {
    v16 = *&v4[OBJC_IVAR____TtC7Journal5Asset_context];
    if (v16)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v4;
      v24 = a3;
      v25 = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      v23 = a4;
      v18 = _Block_copy(aBlock);
      v19 = v16;
      v20 = v7;

      [v19 performBlock:v18];
      _Block_release(v18);
    }
  }

  return (*(v12 + 8))(v14, v11);
}

id sub_10028376C(void *a1)
{
  v2 = v1;
  v70 = type metadata accessor for AssetType();
  v4 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100ADB870, &qword_10094B5B8);
  __chkstk_darwin(v6 - 8);
  v65 = &v56 - v7;
  v63 = type metadata accessor for JournalAppVersion();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v9 - 8);
  v68 = &v56 - v10;
  v11 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v11 - 8);
  v64 = &v56 - v12;
  v62 = type metadata accessor for AssetSource();
  v13 = *(v62 - 8);
  __chkstk_darwin(v62);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR____TtC7Journal5Asset_context);
  *(v2 + OBJC_IVAR____TtC7Journal5Asset_context) = a1;
  v21 = a1;

  type metadata accessor for JournalEntryAssetMO();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v21];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v22 setId:isa];

  Date.init()();
  v24 = Date._bridgeToObjectiveC()().super.isa;
  v66 = v17;
  v67 = v16;
  v58 = *(v17 + 8);
  v59 = v17 + 8;
  v58(v19, v16);
  [v22 setCreatedDate:v24];

  v25 = OBJC_IVAR____TtC7Journal5Asset_type;
  AssetType.rawValue.getter();
  v26 = String._bridgeToObjectiveC()();

  [v22 setAssetType:v26];

  v27 = *(v2 + OBJC_IVAR____TtC7Journal5Asset_title);
  if (v27)
  {
    v56 = v25;
    v57 = v4;
    v28 = v27;
    v29 = NSAttributedString.getAttributedStringAsData()();
    v31 = v30;

    if (v31 >> 60 == 15)
    {
      v32 = 0;
    }

    else
    {
      v32 = Data._bridgeToObjectiveC()().super.isa;
      sub_10003A5C8(v29, v31);
    }

    v25 = v56;
    v4 = v57;
  }

  else
  {
    v32 = 0;
  }

  v33 = v64;
  [v22 setTitle:v32];

  v34 = v62;
  (*(v13 + 16))(v15, v2 + OBJC_IVAR____TtC7Journal5Asset_source, v62);
  AssetSource.rawValue.getter();
  (*(v13 + 8))(v15, v34);
  v35 = String._bridgeToObjectiveC()();

  [v22 setSource:v35];

  v36 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
  swift_beginAccess();
  sub_1000082B4(v2 + v36, v33, &qword_100AD1420, &unk_10093C080);
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  v39 = 0;
  if ((*(v38 + 48))(v33, 1, v37) != 1)
  {
    v39 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v33, v37);
  }

  [v22 setSuggestionId:v39];

  v40 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
  swift_beginAccess();
  v41 = v68;
  sub_1000082B4(v2 + v40, v68, &unk_100AD4790, &unk_10093B4E0);
  v42 = v67;
  v43 = 0;
  if ((*(v66 + 48))(v41, 1, v67) != 1)
  {
    v43 = Date._bridgeToObjectiveC()().super.isa;
    v58(v41, v42);
  }

  [v22 setSuggestionDate:v43];

  [v22 setIsHidden:*(v2 + OBJC_IVAR____TtC7Journal5Asset_isHidden)];
  v45 = v69;
  v44 = v70;
  (*(v4 + 16))(v69, v2 + v25, v70);
  v46 = (*(v4 + 88))(v45, v44);
  v47 = &enum case for JournalAppVersion.none(_:);
  if (v46 == enum case for AssetType.photo(_:) || v46 == enum case for AssetType.livePhoto(_:) || v46 == enum case for AssetType.video(_:) || v46 == enum case for AssetType.music(_:) || v46 == enum case for AssetType.podcast(_:) || v46 == enum case for AssetType.book(_:) || v46 == enum case for AssetType.audio(_:) || v46 == enum case for AssetType.visit(_:) || v46 == enum case for AssetType.multiPinMap(_:) || v46 == enum case for AssetType.genericMap(_:) || v46 == enum case for AssetType.link(_:) || v46 == enum case for AssetType.contact(_:) || v46 == enum case for AssetType.workoutIcon(_:) || v46 == enum case for AssetType.workoutRoute(_:) || v46 == enum case for AssetType.reflection(_:) || v46 == enum case for AssetType.stateOfMind(_:) || v46 == enum case for AssetType.motionActivity(_:) || v46 == enum case for AssetType.thirdPartyMedia(_:) || v46 == enum case for AssetType.placeholder(_:) || v46 == enum case for AssetType.streakEvent(_:) || (v47 = &enum case for JournalAppVersion.fall2025(_:), v46 == enum case for AssetType.drawing(_:)) || v46 == enum case for AssetType.confetti(_:))
  {
    v49 = v61;
    v50 = v65;
    v51 = v63;
    (*(v61 + 104))(v65, *v47, v63);
    (*(v49 + 56))(v50, 0, 1, v51);
    v52 = v60;
    (*(v49 + 32))(v60, v50, v51);
    [v22 setMinimumSupportedAppVersion:JournalAppVersion.rawValue.getter()];
    (*(v49 + 8))(v52, v51);
    goto LABEL_36;
  }

  if (v46 == enum case for AssetType.unknown(_:))
  {
    v48 = v65;
    (*(v61 + 56))(v65, 1, 1, v63);
    sub_100004F84(v48, &qword_100ADB870, &qword_10094B5B8);
LABEL_36:
    v53 = *(v2 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    *(v2 + OBJC_IVAR____TtC7Journal5Asset_assetMO) = v22;
    v54 = v22;

    return v54;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100284150(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 233) = a5;
  *(v7 + 232) = a4;
  *(v7 + 80) = a3;
  v9 = type metadata accessor for UIImageReader();
  *(v7 + 104) = v9;
  *(v7 + 112) = *(v9 - 8);
  *(v7 + 120) = swift_task_alloc();
  v10 = type metadata accessor for UIImageReader.Configuration();
  *(v7 + 128) = v10;
  *(v7 + 136) = *(v10 - 8);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  *(v7 + 160) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v7 + 168) = v11;
  *(v7 + 176) = *(v11 - 8);
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *(v7 + 200) = v12;
  *(v7 + 208) = v14;

  return _swift_task_switch(sub_100284360, v12, v14);
}

uint64_t sub_100284360()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = sub_10005DE5C(*(v0 + 80), *(v0 + 232) & 1, v3);
  if ((*(v2 + 48))(v3, 1, v1, v4) == 1)
  {
    sub_100004F84(*(v0 + 160), &unk_100AD6DD0, &qword_1009437C0);

    v5 = *(v0 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v0 + 233);
    (*(*(v0 + 176) + 32))(*(v0 + 192), *(v0 + 160), *(v0 + 168));
    UIImageReader.Configuration.init()();
    UIImageReader.Configuration.prefersHighDynamicRange.setter();
    if (sub_100512604(v7))
    {
      v8 = *(v0 + 88);
      sub_10029D254();
      UIImageReader.Configuration.preferredThumbnailSize.setter();
      [v8 displayScale];
      v10 = v9;
      v11 = UIImageReader.Configuration.preferredThumbnailSize.modify();
      *v12 = v10 * *v12;
      v11(v0 + 16, 0);
      [v8 displayScale];
      v14 = v13;
      v15 = UIImageReader.Configuration.preferredThumbnailSize.modify();
      *(v16 + 8) = v14 * *(v16 + 8);
      v15(v0 + 48, 0);
    }

    (*(*(v0 + 136) + 16))(*(v0 + 144), *(v0 + 152), *(v0 + 128));
    UIImageReader.init(configuration:)();
    v17 = swift_task_alloc();
    *(v0 + 216) = v17;
    *v17 = v0;
    v17[1] = sub_1002845E0;
    v18 = *(v0 + 192);

    return UIImageReader.image(contentsOf:)(v18);
  }
}

uint64_t sub_1002845E0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 224) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return _swift_task_switch(sub_100284708, v4, v3);
}

uint64_t sub_100284708()
{
  v42 = v0;
  if (v0[28])
  {
    v1 = v0[24];
    v2 = v0[21];
    v3 = v0[22];
    v4 = v0[19];
    v5 = v0[16];
    v6 = v0[17];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v6 + 8))(v4, v5);
    (*(v3 + 8))(v1, v2);
    v7 = v0[28];
  }

  else
  {
    if (qword_100ACFB80 != -1)
    {
      swift_once();
    }

    v8 = v0[23];
    v9 = v0[24];
    v10 = v0[21];
    v11 = v0[22];
    v12 = type metadata accessor for Logger();
    sub_10000617C(v12, qword_100ADB678);
    (*(v11 + 16))(v8, v9, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[23];
    v17 = v0[24];
    v18 = v0[21];
    v19 = v0[22];
    v20 = v0[19];
    v21 = v0[17];
    v22 = v0[14];
    v39 = v0[15];
    v40 = v0[16];
    v38 = v0[13];
    if (v15)
    {
      v35 = v14;
      v23 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41 = v34;
      *v23 = 136315138;
      sub_100034178(&qword_100ADEFD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v18;
      v36 = v18;
      v37 = v20;
      v26 = v24;
      v28 = v27;
      v29 = *(v19 + 8);
      v29(v16, v25);
      v30 = sub_100008458(v26, v28, &v41);

      *(v23 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v13, v35, "getImageStoredInFile can't create image from %s", v23, 0xCu);
      sub_10000BA7C(v34);

      (*(v22 + 8))(v39, v38);
      (*(v21 + 8))(v37, v40);
      v29(v17, v36);
    }

    else
    {

      v31 = *(v19 + 8);
      v31(v16, v18);
      (*(v22 + 8))(v39, v38);
      (*(v21 + 8))(v20, v40);
      v31(v17, v18);
    }

    v7 = 0;
  }

  v32 = v0[1];

  return v32(v7);
}

uint64_t sub_100284A94(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v66 = v3;
  v67 = v4;
  __chkstk_darwin(v3);
  v6 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000F24EC(&unk_100AD5BE0, &unk_100940CD8);
  __chkstk_darwin(v7);
  v65 = &v58[-v8];
  v9 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v58[-v13];
  v15 = type metadata accessor for AssetSource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v58[-v20];
  sub_1000082B4(a1, &v70, &qword_100AD13D0, &unk_100942DB0);
  if (v72)
  {
    type metadata accessor for Asset(0);
    if (swift_dynamicCast())
    {
      v64 = v6;
      v22 = v68;
      ObjectType = swift_getObjectType();
      if (ObjectType == swift_getObjectType() && (static UUID.== infix(_:_:)() & 1) != 0)
      {
        v60 = v14;
        v61 = v11;
        type metadata accessor for AssetType();
        sub_100034178(&qword_100AD5B40, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
        v62 = v1;
        dispatch thunk of RawRepresentable.rawValue.getter();
        v63 = v22;
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v70 == v68 && v71 == v69)
        {
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v26 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v27 = *(v16 + 16);
        v27(v21, &v62[OBJC_IVAR____TtC7Journal5Asset_source], v15);
        v27(v18, &v63[OBJC_IVAR____TtC7Journal5Asset_source], v15);
        sub_100034178(&qword_100ADB838, &type metadata accessor for AssetSource, &protocol conformance descriptor for AssetSource);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v70 == v68 && v71 == v69)
        {
          v28 = *(v16 + 8);
          v28(v18, v15);
          v28(v21, v15);

          v30 = v60;
          v29 = v61;
        }

        else
        {
          v59 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v31 = *(v16 + 8);
          v31(v18, v15);
          v31(v21, v15);

          v30 = v60;
          v29 = v61;
          if ((v59 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v32 = v62;
        v33 = *&v62[OBJC_IVAR____TtC7Journal5Asset_title];
        v34 = *&v63[OBJC_IVAR____TtC7Journal5Asset_title];
        if (v33)
        {
          if (!v34)
          {
            goto LABEL_28;
          }

          sub_1000065A8(0, &qword_100AE4890, NSAttributedString_ptr);
          v35 = v34;
          v36 = v33;
          v37 = static NSObject.== infix(_:_:)();
          v32 = v62;
          v38 = v37;

          if ((v38 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (v34)
        {
          goto LABEL_28;
        }

        v39 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
        swift_beginAccess();
        sub_1000082B4(&v32[v39], v30, &unk_100AD4790, &unk_10093B4E0);
        v40 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
        v41 = v63;
        swift_beginAccess();
        v42 = *(v7 + 48);
        v43 = v65;
        sub_1000082B4(v30, v65, &unk_100AD4790, &unk_10093B4E0);
        v44 = &v41[v40];
        v45 = v43;
        sub_1000082B4(v44, &v43[v42], &unk_100AD4790, &unk_10093B4E0);
        v46 = *(v67 + 48);
        v47 = v43;
        v48 = v66;
        if (v46(v47, 1, v66) == 1)
        {
          sub_100004F84(v30, &unk_100AD4790, &unk_10093B4E0);
          if (v46(v45 + v42, 1, v48) == 1)
          {
            v49 = sub_100004F84(v45, &unk_100AD4790, &unk_10093B4E0);
LABEL_30:
            v55 = (*((swift_isaMask & *v32) + 0x200))(v49);
            v56 = v63;
            v57 = (*((swift_isaMask & *v63) + 0x200))();

            v24 = v55 ^ v57 ^ 1;
            return v24 & 1;
          }

          goto LABEL_27;
        }

        sub_1000082B4(v45, v29, &unk_100AD4790, &unk_10093B4E0);
        if (v46(v45 + v42, 1, v48) == 1)
        {
          sub_100004F84(v30, &unk_100AD4790, &unk_10093B4E0);
          (*(v67 + 8))(v29, v48);
LABEL_27:
          sub_100004F84(v45, &unk_100AD5BE0, &unk_100940CD8);
          goto LABEL_28;
        }

        v50 = v67;
        v51 = v64;
        (*(v67 + 32))(v64, v45 + v42, v48);
        sub_100034178(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = v62;
        v53 = v52;
        v54 = *(v50 + 8);
        v54(v51, v48);
        sub_100004F84(v30, &unk_100AD4790, &unk_10093B4E0);
        v54(v29, v48);
        v49 = sub_100004F84(v45, &unk_100AD4790, &unk_10093B4E0);
        if (v53)
        {
          goto LABEL_30;
        }

LABEL_28:

        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_100004F84(&v70, &qword_100AD13D0, &unk_100942DB0);
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

Swift::Int sub_1002853DC()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7];
  v9 = type metadata accessor for AssetSource();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Hasher.init()();
  type metadata accessor for UUID();
  sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for AssetType();
  sub_100034178(&qword_100ADFEE0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  dispatch thunk of Hashable.hash(into:)();
  (*(v10 + 16))(v12, v0 + OBJC_IVAR____TtC7Journal5Asset_source, v9);
  sub_100034178(&qword_100ADB830, &type metadata accessor for AssetSource, &protocol conformance descriptor for AssetSource);
  dispatch thunk of Hashable.hash(into:)();
  (*(v10 + 8))(v12, v9);
  v13 = *(v0 + OBJC_IVAR____TtC7Journal5Asset_title);
  if (v13)
  {
    Hasher._combine(_:)(1u);
    v14 = v13;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v15 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
  swift_beginAccess();
  sub_1000082B4(v1 + v15, v8, &unk_100AD4790, &unk_10093B4E0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_100034178(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher.finalize()();
}

uint64_t sub_1002857EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v3)
  {
    result = [v3 isSlim];
  }

  else
  {
    result = 2;
  }

  *a2 = result;
  return result;
}

char *sub_10028583C@<X0>(char *result@<X0>, char a2@<W1>, BOOL *a3@<X8>)
{
  v4 = *&result[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  if (v4)
  {
    result = [*&result[OBJC_IVAR____TtC7Journal5Asset_assetMO] setIsSlim:a2 & 1];
  }

  *a3 = v4 == 0;
  return result;
}

char *sub_1002858A0@<X0>(char *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *&result[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  if (v3)
  {
    result = [*&result[OBJC_IVAR____TtC7Journal5Asset_assetMO] setIsHidden:result[OBJC_IVAR____TtC7Journal5Asset_isHidden]];
  }

  *a2 = v3 == 0;
  return result;
}

id sub_100285908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC7Journal5Asset_sourceAttachments] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7Journal5Asset_attachments] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7Journal5Asset_attachmentIdsMissingFile] = _swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC7Journal5Asset_context] = 0;
  *&v3[OBJC_IVAR____TtC7Journal5Asset_assetMO] = 0;
  *&v3[OBJC_IVAR____TtC7Journal5Asset_title] = 0;
  v6 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 56))(&v3[v6], 1, 1, v7);
  v9 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  v11 = &v3[OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryPath];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryURL;
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  v14 = &v3[OBJC_IVAR____TtC7Journal5Asset_thumbnailCacheKey];
  *v14 = 0;
  v14[1] = 0;
  v3[OBJC_IVAR____TtC7Journal5Asset_isHidden] = 0;
  v15 = OBJC_IVAR____TtC7Journal5Asset_delegates;
  *&v3[v15] = [objc_opt_self() weakObjectsHashTable];
  v16 = &v3[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v3[OBJC_IVAR____TtC7Journal5Asset_didUpdateMediaFile];
  *v17 = 0;
  v17[1] = 0;
  (*(v8 + 16))(&v3[OBJC_IVAR____TtC7Journal5Asset_id], a1, v7);
  v18 = OBJC_IVAR____TtC7Journal5Asset_type;
  v19 = type metadata accessor for AssetType();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v3[v18], a2, v19);
  v21 = OBJC_IVAR____TtC7Journal5Asset_source;
  v22 = type metadata accessor for AssetSource();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v3[v21], a3, v22);
  v27.receiver = v3;
  v27.super_class = type metadata accessor for Asset(0);
  v24 = objc_msgSendSuper2(&v27, "init");
  (*(v23 + 8))(a3, v22);
  (*(v20 + 8))(a2, v19);
  (*(v8 + 8))(a1, v7);
  return v24;
}

void sub_100285C70(uint64_t a1)
{
  sub_100059FA4();
  v2 = [*(a1 + OBJC_IVAR____TtC7Journal5Asset_delegates) allObjects];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7 && v6)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(ObjectType, v8);
    }

    swift_unknownObjectRelease();
  }

LABEL_13:

  v10 = a1 + OBJC_IVAR____TtC7Journal5Asset_didUpdate;
  v11 = *(a1 + OBJC_IVAR____TtC7Journal5Asset_didUpdate);
  if (v11)
  {
    v12 = *(v10 + 8);

    v11(v13);

    sub_100004DF8(v11, v12);
  }
}

void sub_100285E34(uint64_t a1)
{
  sub_100059FA4();
  v2 = *(a1 + OBJC_IVAR____TtC7Journal5Asset_didUpdateMediaFile);
  if (v2)
  {
    v3 = *(a1 + OBJC_IVAR____TtC7Journal5Asset_didUpdateMediaFile + 8);

    v2(v4);

    sub_100004DF8(v2, v3);
  }
}

uint64_t sub_100285EBC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_100285FAC(void *a1, char a2)
{
  v3 = a2 & 1;
  result = [a1 isBeingEdited];
  if (result != v3)
  {
    return [a1 setIsBeingEdited:v3];
  }

  return result;
}

double sub_100286008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v20 = a2;
  v21 = a7;
  v12 = sub_1000F24EC(&qword_100AE9470, &qword_10095DB60);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v20 - v15;
  (*(v13 + 16))(&v20 - v15, a1, v12, v14);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  sub_100076220(a3, a4, a5 & 1, a6, v21, sub_10008E31C, v18);

  return result;
}

uint64_t sub_100286180(void *a1)
{
  v1 = a1;
  sub_1000F24EC(&qword_100AE9470, &qword_10095DB60);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1002861D0@<X0>(_BYTE *a2@<X8>)
{
  result = JournalEntryMO.isRecentlyDeleted.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1002862B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7Journal5Asset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_100286374(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1000958AC(0);
    if (v5 && (v6 = v5, v7 = [v5 data], v6, v7))
    {
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {

      v8 = 0;
      v10 = 0xF000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  *a2 = v8;
  a2[1] = v10;
}

uint64_t sub_10028642C()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B43D4();
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_1000065A8(0, &qword_100ADB798, AVMutableMovie_ptr);
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    v11 = [v7 initWithURL:v9 options:0];

    v12 = [v11 tracks];
    sub_1000065A8(0, &qword_100ADB7A0, AVMutableMovieTrack_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = v4;
    v35 = v3;
    v32 = v11;
    v33 = v6;
    if (v13 >> 62)
    {
      goto LABEL_23;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
LABEL_24:

      (*(v34 + 8))(v33, v35);
      return 0;
    }

LABEL_5:
    v15 = 0;
    v36 = v13 & 0xFFFFFFFFFFFFFF8;
    v37 = v13 & 0xC000000000000001;
    while (1)
    {
      if (v37)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v36 + 16))
        {
          goto LABEL_22;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v14 = _CocoaArrayWrapper.endIndex.getter();
        if (!v14)
        {
          goto LABEL_24;
        }

        goto LABEL_5;
      }

      v19 = [v16 mediaType];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
      if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      if ([v17 isEnabled])
      {

        [v17 naturalSize];
        v27 = v26;
        v29 = v28;
        [v17 preferredTransform];
        v39.width = v27;
        v39.height = v29;
        v30 = *&CGSizeApplyAffineTransform(v39, &v38);

        (*(v34 + 8))(v33, v35);
        return v30 & 0x7FFFFFFFFFFFFFFFLL;
      }

LABEL_8:

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_24;
      }
    }
  }

  sub_100004F84(v2, &unk_100AD6DD0, &qword_1009437C0);
  return 0;
}

void sub_100286860(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = [v3 managedObjectContext];
  if (!v7)
  {
    if (qword_100ACFB80 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000617C(v10, qword_100ADB678);
    v11 = v3;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = v11;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Context is nil when calling setAttachmentData() in %@", v13, 0xCu);
      sub_100004F84(v14, &unk_100AD4BB0, &unk_100941E50);
    }

    goto LABEL_16;
  }

  oslog = v7;
  if (a2 >> 60 != 15)
  {
    sub_100049ED8(a1, a2);
    v16 = sub_1000958AC(a3);
    if (!v16)
    {
      type metadata accessor for JournalEntryAssetAttachmentMO();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:oslog];
      isa = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)v9 setData:isa];

      if (a3 < -32768)
      {
        __break(1u);
      }

      else if (a3 < 0x8000)
      {
        [(objc_class *)v9 setIndex:a3];
        [v3 addDataAttachmentsObject:v9];
        sub_10003A5C8(a1, a2);
        goto LABEL_14;
      }

      __break(1u);
      return;
    }

    v17 = v16;
    v9 = Data._bridgeToObjectiveC()().super.isa;
    [v17 setData:v9];
    sub_10003A5C8(a1, a2);

LABEL_14:
    goto LABEL_15;
  }

  v8 = sub_1000958AC(a3);
  if (v8)
  {
    v9 = v8;
    [(objc_class *)v8 setData:0];
    goto LABEL_14;
  }

LABEL_15:
  [v3 setIsUploadedToCloud:0];
LABEL_16:
}

void sub_100286B14(void *a3@<X8>)
{
  type metadata accessor for JournalEntryAssetMO();
  sub_100034178(&qword_100AD6A88, &type metadata accessor for JournalEntryAssetMO, &protocol conformance descriptor for JournalEntryAssetMO);
  v5 = static Identifiable<>.fetch(id:context:)();
  if (!v3)
  {
    v6 = v5;
    if (v5)
    {
      v7 = sub_100039CE0();
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
  }
}

double sub_100286D40(uint64_t a1, char a2, void (*a3)(uint64_t *))
{
  if (a2)
  {
    v6 = a1;
    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
  }

  v6 = v4;
  a3(&v6);

  return result;
}

uint64_t sub_100286DC0(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

uint64_t sub_100286DEC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100290728(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100286F3C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100034178(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1002908A8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10028721C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v53 = sub_1000F24EC(&qword_100AD6BD8, &unk_100945810);
  __chkstk_darwin(v53);
  v5 = &v38 - v4;
  v6 = type metadata accessor for AssetSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AEED30, &qword_100941FB0);
  v48 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v52 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v38 - v13;
  __chkstk_darwin(v14);
  v39 = &v38 - v15;
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v40 = v2;
  v55 = *v2;
  Hasher.init(_seed:)();
  v54 = a2;
  sub_1000082B4(a2, v18, &unk_100AEED30, &qword_100941FB0);
  v19 = *(v7 + 48);
  if (v19(v18, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v9, v18, v6);
    Hasher._combine(_:)(1u);
    sub_100034178(&qword_100ADB830, &type metadata accessor for AssetSource, &protocol conformance descriptor for AssetSource);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  v20 = Hasher._finalize()();
  v21 = -1 << *(v55 + 32);
  v22 = v20 & ~v21;
  v51 = v55 + 56;
  if (((*(v55 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_14:
    v33 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v54;
    v36 = v39;
    sub_1000082B4(v54, v39, &unk_100AEED30, &qword_100941FB0);
    v56 = *v33;
    sub_100290B70(v36, v22, isUniquelyReferenced_nonNull_native);
    *v33 = v56;
    sub_100021CEC(v35, v41, &unk_100AEED30, &qword_100941FB0);
    return 1;
  }

  v49 = v19;
  v50 = v7 + 48;
  v43 = v9;
  v47 = ~v21;
  v42 = (v7 + 32);
  v48 = *(v48 + 72);
  v45 = (v7 + 8);
  v23 = v46;
  while (1)
  {
    v24 = v48 * v22;
    sub_1000082B4(*(v55 + 48) + v48 * v22, v23, &unk_100AEED30, &qword_100941FB0);
    v25 = *(v53 + 48);
    sub_1000082B4(v23, v5, &unk_100AEED30, &qword_100941FB0);
    sub_1000082B4(v54, &v5[v25], &unk_100AEED30, &qword_100941FB0);
    v26 = v49;
    if (v49(v5, 1, v6) == 1)
    {
      break;
    }

    sub_1000082B4(v5, v52, &unk_100AEED30, &qword_100941FB0);
    if (v26(&v5[v25], 1, v6) == 1)
    {
      v23 = v46;
      sub_100004F84(v46, &unk_100AEED30, &qword_100941FB0);
      (*v45)(v52, v6);
      goto LABEL_7;
    }

    v27 = v6;
    v28 = v52;
    v29 = v43;
    (*v42)(v43, &v5[v25], v27);
    sub_100034178(&qword_100AD6BF0, &type metadata accessor for AssetSource, &protocol conformance descriptor for AssetSource);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *v45;
    v31 = v29;
    v32 = v28;
    v6 = v27;
    (*v45)(v31, v27);
    v23 = v46;
    sub_100004F84(v46, &unk_100AEED30, &qword_100941FB0);
    v30(v32, v6);
    sub_100004F84(v5, &unk_100AEED30, &qword_100941FB0);
    if (v44)
    {
      goto LABEL_16;
    }

LABEL_8:
    v22 = (v22 + 1) & v47;
    if (((*(v51 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_100004F84(v23, &unk_100AEED30, &qword_100941FB0);
  if (v26(&v5[v25], 1, v6) != 1)
  {
LABEL_7:
    sub_100004F84(v5, &qword_100AD6BD8, &unk_100945810);
    goto LABEL_8;
  }

  sub_100004F84(v5, &unk_100AEED30, &qword_100941FB0);
LABEL_16:
  sub_100004F84(v54, &unk_100AEED30, &qword_100941FB0);
  sub_1000082B4(*(v55 + 48) + v24, v41, &unk_100AEED30, &qword_100941FB0);
  return 0;
}

uint64_t sub_1002878C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100034178(&qword_100ADB710, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100034178(&qword_100ADB718, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1002911D8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100287C04(double *a1, double a2, double a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  sub_1006D3064(a2, a3);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a2 && v12[1] == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
    a2 = *v12;
    a3 = v12[1];
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_100291630(v10, isUniquelyReferenced_nonNull_native, a2, a3);
    *v3 = v16;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_100287D3C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AssetType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100034178(&qword_100ADFEE0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100034178(&qword_100ADC690, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100291798(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10028805C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v53 = sub_1000F24EC(&unk_100ADC680, &unk_10094C550);
  __chkstk_darwin(v53);
  v5 = &v38 - v4;
  v6 = type metadata accessor for AssetType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AE4290, &qword_100945270);
  v48 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v52 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v38 - v13;
  __chkstk_darwin(v14);
  v39 = &v38 - v15;
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v40 = v2;
  v55 = *v2;
  Hasher.init(_seed:)();
  v54 = a2;
  sub_1000082B4(a2, v18, &qword_100AE4290, &qword_100945270);
  v19 = *(v7 + 48);
  if (v19(v18, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v9, v18, v6);
    Hasher._combine(_:)(1u);
    sub_100034178(&qword_100ADFEE0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  v20 = Hasher._finalize()();
  v21 = -1 << *(v55 + 32);
  v22 = v20 & ~v21;
  v51 = v55 + 56;
  if (((*(v55 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_14:
    v33 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v54;
    v36 = v39;
    sub_1000082B4(v54, v39, &qword_100AE4290, &qword_100945270);
    v56 = *v33;
    sub_100291A60(v36, v22, isUniquelyReferenced_nonNull_native);
    *v33 = v56;
    sub_100021CEC(v35, v41, &qword_100AE4290, &qword_100945270);
    return 1;
  }

  v49 = v19;
  v50 = v7 + 48;
  v43 = v9;
  v47 = ~v21;
  v42 = (v7 + 32);
  v48 = *(v48 + 72);
  v45 = (v7 + 8);
  v23 = v46;
  while (1)
  {
    v24 = v48 * v22;
    sub_1000082B4(*(v55 + 48) + v48 * v22, v23, &qword_100AE4290, &qword_100945270);
    v25 = *(v53 + 48);
    sub_1000082B4(v23, v5, &qword_100AE4290, &qword_100945270);
    sub_1000082B4(v54, &v5[v25], &qword_100AE4290, &qword_100945270);
    v26 = v49;
    if (v49(v5, 1, v6) == 1)
    {
      break;
    }

    sub_1000082B4(v5, v52, &qword_100AE4290, &qword_100945270);
    if (v26(&v5[v25], 1, v6) == 1)
    {
      v23 = v46;
      sub_100004F84(v46, &qword_100AE4290, &qword_100945270);
      (*v45)(v52, v6);
      goto LABEL_7;
    }

    v27 = v6;
    v28 = v52;
    v29 = v43;
    (*v42)(v43, &v5[v25], v27);
    sub_100034178(&qword_100ADC690, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *v45;
    v31 = v29;
    v32 = v28;
    v6 = v27;
    (*v45)(v31, v27);
    v23 = v46;
    sub_100004F84(v46, &qword_100AE4290, &qword_100945270);
    v30(v32, v6);
    sub_100004F84(v5, &qword_100AE4290, &qword_100945270);
    if (v44)
    {
      goto LABEL_16;
    }

LABEL_8:
    v22 = (v22 + 1) & v47;
    if (((*(v51 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_100004F84(v23, &qword_100AE4290, &qword_100945270);
  if (v26(&v5[v25], 1, v6) != 1)
  {
LABEL_7:
    sub_100004F84(v5, &unk_100ADC680, &unk_10094C550);
    goto LABEL_8;
  }

  sub_100004F84(v5, &qword_100AE4290, &qword_100945270);
LABEL_16:
  sub_100004F84(v54, &qword_100AE4290, &qword_100945270);
  sub_1000082B4(*(v55 + 48) + v24, v41, &qword_100AE4290, &qword_100945270);
  return 0;
}

uint64_t sub_100288704(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  v6 = *a2;
  v7 = *(a2 + 8);
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v5 + 48) + 88 * v10);
      v13 = *v12 == v6 && v12[1] == v7;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_1001A911C(a2);
    v18 = *(v5 + 48) + 88 * v10;
    v19 = *(v18 + 16);
    v28[0] = *v18;
    v28[1] = v19;
    v21 = *(v18 + 48);
    v20 = *(v18 + 64);
    v22 = *(v18 + 80);
    v28[2] = *(v18 + 32);
    v29 = v22;
    v28[3] = v21;
    v28[4] = v20;
    v23 = *(v18 + 16);
    *a1 = *v18;
    *(a1 + 16) = v23;
    v24 = *(v18 + 32);
    v25 = *(v18 + 48);
    v26 = *(v18 + 64);
    *(a1 + 80) = *(v18 + 80);
    *(a1 + 48) = v25;
    *(a1 + 64) = v26;
    *(a1 + 32) = v24;
    sub_1001A9170(v28, v27);
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *v2;
    sub_1001A9170(a2, v28);
    sub_1002920C8(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v27[0];
    v15 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v15;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    v16 = *(a2 + 16);
    result = 1;
    *a1 = *a2;
    *(a1 + 16) = v16;
  }

  return result;
}

uint64_t sub_1002888C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TokenTypeIdentifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100034178(&qword_100AE0030, &type metadata accessor for TokenTypeIdentifier, &protocol conformance descriptor for TokenTypeIdentifier);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100034178(&qword_100ADB848, &type metadata accessor for TokenTypeIdentifier, &protocol conformance descriptor for TokenTypeIdentifier);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100292274(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100288BA4(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = _s14SuggestionInfoVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v22 = &v21 - v9;
  v23 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v25 = v4;
  type metadata accessor for Date();
  sub_100034178(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    do
    {
      sub_100068B30(*(v10 + 48) + v15 * v13, v7, _s14SuggestionInfoVMa);
      if (static UUID.== infix(_:_:)())
      {
        v16 = static Date.== infix(_:_:)();
        sub_1000691A0(v7, _s14SuggestionInfoVMa);
        if (v16)
        {
          sub_1000691A0(a2, _s14SuggestionInfoVMa);
          sub_100068B30(*(v10 + 48) + v15 * v13, v24, _s14SuggestionInfoVMa);
          return 0;
        }
      }

      else
      {
        sub_1000691A0(v7, _s14SuggestionInfoVMa);
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v18 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v22;
  sub_100068B30(a2, v22, _s14SuggestionInfoVMa);
  v26 = *v18;
  sub_10029253C(v20, v13, isUniquelyReferenced_nonNull_native);
  *v18 = v26;
  sub_100048F04(a2, v24, _s14SuggestionInfoVMa);
  return 1;
}

uint64_t sub_100288EF4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v8 = *v2;
  Hasher.init(_seed:)();
  v21 = v4;
  type metadata accessor for UUID();
  sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v9 = a2;
  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      sub_100068B30(*(v8 + 48) + v14 * v12, v7, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      v15 = static UUID.== infix(_:_:)();
      sub_1000691A0(v7, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1000691A0(a2, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
    sub_100068B30(*(v8 + 48) + v14 * v12, v20, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
    return 0;
  }

  else
  {
LABEL_5:
    v16 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100068B30(v9, v7, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
    v22 = *v16;
    sub_100292850(v7, v12, isUniquelyReferenced_nonNull_native);
    *v16 = v22;
    sub_100048F04(v9, v20, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
    return 1;
  }
}

uint64_t sub_1002891A0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Transcriber.TranscriptionOption();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100034178(&qword_100ADB7C0, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100034178(&qword_100ADB7C8, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100292AE0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1002894A8(uint64_t a1, _BYTE *a2)
{
  v78 = a1;
  v90 = type metadata accessor for SidebarPreferences.Brick();
  v92 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = type metadata accessor for UUID();
  v91 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_1000F24EC(&qword_100AD4C60, &qword_100943670);
  __chkstk_darwin(v79);
  v7 = &v69[-v6];
  v8 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v85 = &v69[-v12];
  v95 = sub_1000F24EC(&qword_100AD4B48, &qword_100943548);
  __chkstk_darwin(v95);
  v14 = &v69[-v13];
  v15 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v94 = *(v15 - 8);
  __chkstk_darwin(v15);
  v89 = &v69[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v88 = &v69[-v18];
  __chkstk_darwin(v19);
  v21 = &v69[-v20];
  __chkstk_darwin(v22);
  v24 = &v69[-v23];
  __chkstk_darwin(v25);
  v76 = &v69[-v26];
  v77 = v2;
  v27 = *v2;
  Hasher.init(_seed:)();
  sub_100029840(v98);
  v28 = Hasher._finalize()();
  v96 = v27;
  v29 = *(v27 + 32);
  v30 = v27 + 56;
  v31 = -1 << v29;
  v32 = v28 & ~v31;
  if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
  {
LABEL_32:
    v64 = v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v76;
    sub_100068B30(a2, v76, type metadata accessor for AppNavigationSidebarController.Item);
    v98[0] = *v64;
    sub_100292DA8(v66, v32, isUniquelyReferenced_nonNull_native);
    *v64 = v98[0];
    sub_100048F04(a2, v78, type metadata accessor for AppNavigationSidebarController.Item);
    return 1;
  }

  v93 = ~v31;
  v87 = (v92 + 8);
  v94 = *(v94 + 72);
  v82 = (v92 + 32);
  v72 = (v91 + 8);
  v71 = (v91 + 32);
  v83 = v7;
  v75 = v10;
  v91 = v21;
  v86 = a2;
  v81 = v30;
  v80 = v15;
  while (1)
  {
    v33 = *(v96 + 48);
    v92 = v94 * v32;
    sub_100068B30(v33 + v94 * v32, v24, type metadata accessor for AppNavigationSidebarController.Item);
    v34 = &v14[*(v95 + 48)];
    sub_100068B30(v24, v14, type metadata accessor for AppNavigationSidebarController.Item);
    sub_100068B30(a2, v34, type metadata accessor for AppNavigationSidebarController.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v36 = v88;
      sub_100068B30(v14, v88, type metadata accessor for AppNavigationSidebarController.Item);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1000691A0(v24, type metadata accessor for AppNavigationSidebarController.Item);
        (*v87)(v36, v90);
LABEL_4:
        sub_100004F84(v14, &qword_100AD4B48, &qword_100943548);
        goto LABEL_5;
      }

      v37 = v84;
      v38 = v90;
      (*v82)(v84, v34, v90);
      sub_100034178(&unk_100AD4B50, &type metadata accessor for SidebarPreferences.Brick, &protocol conformance descriptor for SidebarPreferences.Brick);
      v39 = v36;
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v40 = *v87;
      (*v87)(v37, v38);
      sub_1000691A0(v24, type metadata accessor for AppNavigationSidebarController.Item);
      v42 = v97;
      v41 = v98[0];
      v40(v39, v38);
      if (v41 == v42)
      {
        v68 = v14;
        a2 = v86;
        goto LABEL_37;
      }

      sub_1000691A0(v14, type metadata accessor for AppNavigationSidebarController.Item);
      v7 = v83;
      v21 = v91;
      a2 = v86;
      v30 = v81;
    }

    else
    {
      v43 = v89;
      sub_100068B30(v14, v89, type metadata accessor for AppNavigationSidebarController.Item);
      v44 = *v43;
      v45 = v43[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1000691A0(v24, type metadata accessor for AppNavigationSidebarController.Item);

        v21 = v91;
        goto LABEL_4;
      }

      v46 = *v34;
      v47 = v34[1];
      if (v44 == v46 && v45 == v47)
      {

        sub_1000691A0(v24, type metadata accessor for AppNavigationSidebarController.Item);
LABEL_35:
        v68 = a2;
        a2 = v14;
        goto LABEL_37;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000691A0(v24, type metadata accessor for AppNavigationSidebarController.Item);
      if (v49)
      {
        goto LABEL_35;
      }

      sub_1000691A0(v14, type metadata accessor for AppNavigationSidebarController.Item);
      v21 = v91;
    }

LABEL_5:
    v32 = (v32 + 1) & v93;
    if (((*(v30 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  sub_100068B30(v14, v21, type metadata accessor for AppNavigationSidebarController.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1000691A0(v24, type metadata accessor for AppNavigationSidebarController.Item);
    sub_1000691A0(v21, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    goto LABEL_4;
  }

  v50 = v34;
  v51 = v85;
  sub_100048F04(v50, v85, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v52 = v21;
  v53 = *(v79 + 48);
  sub_100068B30(v52, v7, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_100068B30(v51, &v7[v53], type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v54 = sub_1000F24EC(&qword_100AD47A0, &qword_100941E20);
  v55 = *(*(v54 - 8) + 48);
  v56 = v55(v7, 2, v54);
  if (!v56)
  {
    sub_100068B30(v7, v75, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (v55(&v7[v53], 2, v54))
    {
      sub_1000691A0(v85, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_1000691A0(v24, type metadata accessor for AppNavigationSidebarController.Item);
      (*v72)(v75, v74);
      a2 = v86;
      goto LABEL_28;
    }

    v58 = &v7[v53];
    v59 = v73;
    v60 = v74;
    (*v71)(v73, v58, v74);
    v61 = v75;
    v70 = static UUID.== infix(_:_:)();
    v62 = *v72;
    v63 = v59;
    v7 = v83;
    (*v72)(v63, v60);
    sub_1000691A0(v85, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    sub_1000691A0(v24, type metadata accessor for AppNavigationSidebarController.Item);
    v62(v61, v60);
    a2 = v86;
    if (v70)
    {
      goto LABEL_36;
    }

    sub_1000691A0(v7, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
LABEL_29:
    v21 = v91;
    sub_1000691A0(v91, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    sub_1000691A0(v14, type metadata accessor for AppNavigationSidebarController.Item);
    goto LABEL_5;
  }

  if (v56 == 1)
  {
    sub_1000691A0(v85, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    sub_1000691A0(v24, type metadata accessor for AppNavigationSidebarController.Item);
    v57 = v55(&v7[v53], 2, v54) == 1;
  }

  else
  {
    sub_1000691A0(v85, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    sub_1000691A0(v24, type metadata accessor for AppNavigationSidebarController.Item);
    v57 = v55(&v7[v53], 2, v54) == 2;
  }

  a2 = v86;
  if (!v57)
  {
LABEL_28:
    sub_100004F84(v7, &qword_100AD4C60, &qword_100943670);
    goto LABEL_29;
  }

LABEL_36:
  sub_1000691A0(v7, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_1000691A0(v91, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v68 = v14;
LABEL_37:
  sub_1000691A0(v68, type metadata accessor for AppNavigationSidebarController.Item);
  sub_1000691A0(a2, type metadata accessor for AppNavigationSidebarController.Item);
  sub_100068B30(*(v96 + 48) + v92, v78, type metadata accessor for AppNavigationSidebarController.Item);
  return 0;
}

uint64_t sub_10028A184(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_1000065A8(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_10028B8A0(v15, result + 1, a5, a6, a3, a4);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_10028FF04(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_1002906A4(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_1000065A8(0, a3, a4);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_1002914A0(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10028A474(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DenylistDescriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100034178(&qword_100ADB800, &type metadata accessor for DenylistDescriptor, &protocol conformance descriptor for DenylistDescriptor);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100034178(&qword_100ADB808, &type metadata accessor for DenylistDescriptor, &protocol conformance descriptor for DenylistDescriptor);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100293B88(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10028A770(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_1003E44D0(a2);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_100293E50(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
    goto LABEL_48;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE400000000000000;
    v11 = 1954047348;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v11 = 0x64724F7465737361;
        v10 = 0xED0000676E697265;
        break;
      case 2:
        v11 = 0xD000000000000015;
        v10 = 0x80000001008DC330;
        break;
      case 3:
        v10 = 0xE500000000000000;
        v11 = 0x656C746974;
        break;
      case 4:
        v11 = 0x7461447972746E65;
        v10 = 0xE900000000000065;
        break;
      case 5:
        v10 = 0xE800000000000000;
        v11 = 0x6449656C646E7562;
        break;
      case 6:
        v10 = 0xEA00000000006574;
        v11 = 0x6144656C646E7562;
        break;
      case 7:
        v11 = 0x72756F5365746164;
        v10 = 0xEA00000000006563;
        break;
      case 8:
        v10 = 0xE700000000000000;
        v11 = 0x64656767616C66;
        break;
      case 9:
        v10 = 0xE600000000000000;
        v11 = 0x74706D6F7270;
        break;
      case 0xA:
        v11 = 0xD000000000000013;
        v10 = 0x80000001008DC390;
        break;
      case 0xB:
        v11 = 0xD000000000000011;
        v10 = 0x80000001008DC3B0;
        break;
      case 0xC:
        v10 = 0xE500000000000000;
        v11 = 0x726568746FLL;
        break;
      default:
        break;
    }

    v12 = 0xE400000000000000;
    v13 = 1954047348;
    switch(a2)
    {
      case 1:
        v12 = 0xED0000676E697265;
        if (v11 == 0x64724F7465737361)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      case 2:
        v12 = 0x80000001008DC330;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 3:
        v12 = 0xE500000000000000;
        if (v11 != 0x656C746974)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 4:
        v12 = 0xE900000000000065;
        if (v11 != 0x7461447972746E65)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 5:
        v12 = 0xE800000000000000;
        if (v11 != 0x6449656C646E7562)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 6:
        v12 = 0xEA00000000006574;
        if (v11 != 0x6144656C646E7562)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 7:
        v12 = 0xEA00000000006563;
        if (v11 != 0x72756F5365746164)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 8:
        v12 = 0xE700000000000000;
        if (v11 != 0x64656767616C66)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 9:
        v12 = 0xE600000000000000;
        if (v11 != 0x74706D6F7270)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 10:
        v13 = 0xD000000000000013;
        v12 = 0x80000001008DC390;
        goto LABEL_38;
      case 11:
        v12 = 0x80000001008DC3B0;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      case 12:
        v12 = 0xE500000000000000;
        if (v11 != 0x726568746FLL)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      default:
LABEL_38:
        if (v11 != v13)
        {
          goto LABEL_40;
        }

LABEL_39:
        if (v10 != v12)
        {
LABEL_40:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            goto LABEL_47;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_45;
          }

          continue;
        }

LABEL_47:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_48:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_10028AC2C(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void, __n128))
{
  v6 = v5;
  v9 = *v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    sub_100294340(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_10028ADE8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  Character.hash(into:)();
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

    sub_10029454C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10028AF38(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100034178(&qword_100ADB7E8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100034178(&unk_100ADE5B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1002946CC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10028B254(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_10028BAE8(v15, result + 1, a4, a5, a6);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_10028FF04(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_1002906A4(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_100293A04(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_10028B4B8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100034178(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100034178(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100294994(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10028B798(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100294C5C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_10028B8A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_1000F24EC(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000065A8(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_10028FF04(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v10;
}

Swift::Int sub_10028BAE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    sub_1000F24EC(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_10028FF04(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v8;
}

void sub_10028BCE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000F24EC(&qword_100ADB738, &qword_10094B4D8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
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
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10028BF40(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000F24EC(&qword_100ADB708, &qword_10094B4B0);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_10028C29C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for AssetSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AEED30, &qword_100941FB0);
  v46 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = *v1;
  sub_1000F24EC(&qword_100ADB868, &qword_10094B5B0);
  v12 = static _SetStorage.resize(original:capacity:move:)();
  v13 = v12;
  v49 = v11;
  if (*(v11 + 16))
  {
    v45 = v3;
    v39 = v1;
    v14 = 0;
    v15 = (v49 + 56);
    v16 = 1 << *(v49 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v49 + 56);
    v19 = (v16 + 63) >> 6;
    v43 = v10;
    v44 = (v4 + 48);
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v20 = v12 + 56;
    v21 = v47;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = *(v49 + 48);
      v48 = *(v46 + 72);
      sub_100021CEC(v26 + v48 * (v23 | (v14 << 6)), v10, &unk_100AEED30, &qword_100941FB0);
      Hasher.init(_seed:)();
      sub_1000082B4(v10, v21, &unk_100AEED30, &qword_100941FB0);
      v27 = v45;
      if ((*v44)(v21, 1, v45) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v28 = v42;
        (*v41)(v42, v21, v27);
        Hasher._combine(_:)(1u);
        sub_100034178(&qword_100ADB830, &type metadata accessor for AssetSource, &protocol conformance descriptor for AssetSource);
        dispatch thunk of Hashable.hash(into:)();
        (*v40)(v28, v27);
      }

      v29 = Hasher._finalize()();
      v30 = -1 << *(v13 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v10 = v43;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v21 = v47;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_34:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v21 = v47;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_100021CEC(v10, *(v13 + 48) + v22 * v48, &unk_100AEED30, &qword_100941FB0);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v49 + 32);
    if (v37 >= 64)
    {
      bzero(v15, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    v2 = v39;
    *(v49 + 16) = 0;
  }

  *v2 = v13;
}

void sub_10028C764(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Calendar.Component();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000F24EC(&qword_100ADB720, &qword_10094B4B8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100034178(&qword_100ADB710, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_10028CAC0(uint64_t a1)
{
  v2 = *v1;
  sub_1000F24EC(&qword_100ADB740, &qword_10094B4E0);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      if (v18 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }

      Hasher._combine(_:)(*&v20);
      if (v19 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v19;
      }

      Hasher._combine(_:)(*&v21);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v4 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v2 + 32);
    if (v30 >= 64)
    {
      bzero((v2 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v30;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

void sub_10028CD40(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for AssetType();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000F24EC(&qword_100ADB780, &qword_10094B518);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100034178(&qword_100ADFEE0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_10028D09C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for AssetType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE4290, &qword_100945270);
  v46 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v47 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = *v1;
  sub_1000F24EC(&qword_100ADB7B0, &qword_10094B538);
  v12 = static _SetStorage.resize(original:capacity:move:)();
  v13 = v12;
  v49 = v11;
  if (*(v11 + 16))
  {
    v45 = v3;
    v39 = v1;
    v14 = 0;
    v15 = (v49 + 56);
    v16 = 1 << *(v49 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v49 + 56);
    v19 = (v16 + 63) >> 6;
    v43 = v10;
    v44 = (v4 + 48);
    v40 = (v4 + 8);
    v41 = (v4 + 32);
    v20 = v12 + 56;
    v21 = v47;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = *(v49 + 48);
      v48 = *(v46 + 72);
      sub_100021CEC(v26 + v48 * (v23 | (v14 << 6)), v10, &qword_100AE4290, &qword_100945270);
      Hasher.init(_seed:)();
      sub_1000082B4(v10, v21, &qword_100AE4290, &qword_100945270);
      v27 = v45;
      if ((*v44)(v21, 1, v45) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v28 = v42;
        (*v41)(v42, v21, v27);
        Hasher._combine(_:)(1u);
        sub_100034178(&qword_100ADFEE0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
        dispatch thunk of Hashable.hash(into:)();
        (*v40)(v28, v27);
      }

      v29 = Hasher._finalize()();
      v30 = -1 << *(v13 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v10 = v43;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v21 = v47;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_34:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v21 = v47;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_100021CEC(v10, *(v13 + 48) + v22 * v48, &qword_100AE4290, &qword_100945270);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v49 + 32);
    if (v37 >= 64)
    {
      bzero(v15, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    v2 = v39;
    *(v49 + 16) = 0;
  }

  *v2 = v13;
}

void sub_10028D578(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000F24EC(&qword_100ADB858, &qword_10094B5A0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 88 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v32 = *(v18 + 48);
      v33 = *(v18 + 64);
      v34 = *(v18 + 80);
      v30 = *(v18 + 16);
      v31 = *(v18 + 32);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 88 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 48) = v32;
      *(v14 + 64) = v33;
      *(v14 + 80) = v34;
      *(v14 + 16) = v30;
      *(v14 + 32) = v31;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10028D810(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for TokenTypeIdentifier();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000F24EC(&qword_100ADB850, &qword_10094B598);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100034178(&qword_100AE0030, &type metadata accessor for TokenTypeIdentifier, &protocol conformance descriptor for TokenTypeIdentifier);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_10028DB6C(uint64_t a1)
{
  v2 = v1;
  v3 = _s14SuggestionInfoVMa(0);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000F24EC(&qword_100ADB758, &qword_10094B4F0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      sub_100048F04(v20 + v21 * (v17 | (v9 << 6)), v5, _s14SuggestionInfoVMa);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Date();
      sub_100034178(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      dispatch thunk of Hashable.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100048F04(v5, *(v8 + 48) + v16 * v21, _s14SuggestionInfoVMa);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_10028DF20(uint64_t a1)
{
  v2 = v1;
  v3 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000F24EC(&qword_100ADB7F8, &qword_10094B568);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      sub_100048F04(v20 + v21 * (v17 | (v9 << 6)), v5, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100048F04(v5, *(v8 + 48) + v16 * v21, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_10028E280(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Transcriber.TranscriptionOption();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000F24EC(&qword_100ADB7D0, &qword_10094B548);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100034178(&qword_100ADB7C0, &type metadata accessor for Transcriber.TranscriptionOption, &protocol conformance descriptor for Transcriber.TranscriptionOption);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_10028E5DC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for SidebarPreferences.Brick();
  v7 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v9 - 8);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = &v53 - v12;
  v13 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v65 = *(v13 - 8);
  v66 = v13;
  __chkstk_darwin(v13);
  v68 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v53 - v16;
  v17 = *v1;
  sub_1000F24EC(&qword_100ADB840, &qword_10094B590);
  v18 = static _SetStorage.resize(original:capacity:move:)();
  v19 = v17;
  v20 = v18;
  if (*(v19 + 16))
  {
    v55 = v6;
    v56 = v3;
    v57 = v2;
    v21 = 0;
    v22 = (v19 + 56);
    v23 = 1 << *(v19 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v19 + 56);
    v26 = (v23 + 63) >> 6;
    v58 = (v7 + 8);
    v59 = (v7 + 32);
    v54 = (v4 + 32);
    v53 = (v4 + 8);
    v27 = v18 + 56;
    v64 = v19;
    v28 = v67;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_15:
      v33 = *(v65 + 72);
      sub_100048F04(*(v19 + 48) + v33 * (v30 | (v21 << 6)), v28, type metadata accessor for AppNavigationSidebarController.Item);
      Hasher.init(_seed:)();
      sub_100068B30(v28, v68, type metadata accessor for AppNavigationSidebarController.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v35 = v60;
          v36 = v61;
          (*v59)(v60, v68, v61);
          Hasher._combine(_:)(1uLL);
          sub_100034178(&unk_100AD4B30, &type metadata accessor for SidebarPreferences.Brick, &protocol conformance descriptor for SidebarPreferences.Brick);
          dispatch thunk of Hashable.hash(into:)();
          (*v58)(v35, v36);
        }

        else
        {
          Hasher._combine(_:)(2uLL);
          String.hash(into:)();
        }

        v28 = v67;
      }

      else
      {
        v37 = v63;
        sub_100048F04(v68, v63, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        Hasher._combine(_:)(0);
        v38 = v62;
        sub_100068B30(v37, v62, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        v39 = sub_1000F24EC(&qword_100AD47A0, &qword_100941E20);
        v40 = (*(*(v39 - 8) + 48))(v38, 2, v39);
        if (v40)
        {
          Hasher._combine(_:)(v40 != 1);
        }

        else
        {
          v41 = v55;
          v42 = v56;
          (*v54)(v55, v62, v56);
          Hasher._combine(_:)(2uLL);
          sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          dispatch thunk of Hashable.hash(into:)();
          v43 = v41;
          v28 = v67;
          (*v53)(v43, v42);
        }

        sub_1000691A0(v63, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      }

      v44 = Hasher._finalize()();
      v45 = -1 << *(v20 + 32);
      v46 = v44 & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v27 + 8 * (v46 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v45) >> 6;
        v19 = v64;
        while (++v47 != v49 || (v48 & 1) == 0)
        {
          v50 = v47 == v49;
          if (v47 == v49)
          {
            v47 = 0;
          }

          v48 |= v50;
          v51 = *(v27 + 8 * v47);
          if (v51 != -1)
          {
            v29 = __clz(__rbit64(~v51)) + (v47 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v29 = __clz(__rbit64((-1 << v46) & ~*(v27 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
      v19 = v64;
LABEL_7:
      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      sub_100048F04(v28, *(v20 + 48) + v29 * v33, type metadata accessor for AppNavigationSidebarController.Item);
      ++*(v20 + 16);
    }

    v31 = v21;
    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v21 >= v26)
      {
        break;
      }

      v32 = v22[v21];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v25 = (v32 - 1) & v32;
        goto LABEL_15;
      }
    }

    v52 = 1 << *(v19 + 32);
    if (v52 >= 64)
    {
      bzero(v22, ((v52 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v52;
    }

    v2 = v57;
    *(v19 + 16) = 0;
  }

  *v2 = v20;
}

void sub_10028ED54(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for DenylistDescriptor();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000F24EC(&qword_100ADB810, &qword_10094B570);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100034178(&qword_100ADB800, &type metadata accessor for DenylistDescriptor, &protocol conformance descriptor for DenylistDescriptor);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_10028F0B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000F24EC(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_10028F2F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000F24EC(&qword_100ADB818, &qword_10094B578);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v13 = Hasher._finalize()();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10028F6D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000F24EC(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_10028F948(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000F24EC(&qword_100ADB770, &qword_10094B508);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      Character.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10028FBA8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for URL();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000F24EC(&qword_100ADB7F0, &qword_10094B560);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100034178(&qword_100ADB7E8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_10028FF04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000F24EC(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_100290124(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Date();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000F24EC(&qword_100ADB7A8, &qword_10094B530);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_100034178(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100290480(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000F24EC(&qword_100ADB880, &qword_10094B678);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1002906A4(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100290728(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10028BCE0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100294D7C();
      goto LABEL_16;
    }

    sub_1002961B8(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1002908A8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10028BF40(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100295E40(&type metadata accessor for UUID, &qword_100ADB708, &qword_10094B4B0);
      goto LABEL_12;
    }

    sub_1002963F0(v11 + 1);
  }

  v13 = *v3;
  sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100034178(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100290B70(uint64_t a1, unint64_t a2, char a3)
{
  v53 = a1;
  v52 = sub_1000F24EC(&qword_100AD6BD8, &unk_100945810);
  __chkstk_darwin(v52);
  v7 = &v38 - v6;
  v8 = type metadata accessor for AssetSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&unk_100AEED30, &qword_100941FB0);
  v43 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  v40 = v3;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v39 = v18;
      sub_10028C29C(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        sub_10029506C(&unk_100AEED30, &qword_100941FB0, &qword_100ADB868, &qword_10094B5B0);
        goto LABEL_21;
      }

      v39 = v18;
      sub_10029670C(v21 + 1);
    }

    v51 = *v3;
    Hasher.init(_seed:)();
    sub_1000082B4(v53, v20, &unk_100AEED30, &qword_100941FB0);
    v49 = *(v9 + 48);
    v50 = v9 + 48;
    if (v49(v20, 1, v8) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v23 = v44;
      (*(v9 + 32))(v44, v20, v8);
      Hasher._combine(_:)(1u);
      sub_100034178(&qword_100ADB830, &type metadata accessor for AssetSource, &protocol conformance descriptor for AssetSource);
      dispatch thunk of Hashable.hash(into:)();
      (*(v9 + 8))(v23, v8);
    }

    v24 = Hasher._finalize()();
    v25 = -1 << *(v51 + 32);
    a2 = v24 & ~v25;
    v48 = v51 + 56;
    if ((*(v51 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v47 = ~v25;
      v41 = (v9 + 32);
      v26 = *(v43 + 72);
      v45 = (v9 + 8);
      v46 = v26;
      v42 = v16;
      do
      {
        sub_1000082B4(*(v51 + 48) + v46 * a2, v16, &unk_100AEED30, &qword_100941FB0);
        v31 = *(v52 + 48);
        sub_1000082B4(v16, v7, &unk_100AEED30, &qword_100941FB0);
        sub_1000082B4(v53, &v7[v31], &unk_100AEED30, &qword_100941FB0);
        v32 = v49;
        if (v49(v7, 1, v8) == 1)
        {
          sub_100004F84(v16, &unk_100AEED30, &qword_100941FB0);
          if (v32(&v7[v31], 1, v8) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1000082B4(v7, v13, &unk_100AEED30, &qword_100941FB0);
          if (v32(&v7[v31], 1, v8) != 1)
          {
            v27 = v44;
            (*v41)(v44, &v7[v31], v8);
            sub_100034178(&qword_100AD6BF0, &type metadata accessor for AssetSource, &protocol conformance descriptor for AssetSource);
            v28 = dispatch thunk of static Equatable.== infix(_:_:)();
            v29 = *v45;
            v30 = v27;
            v16 = v42;
            (*v45)(v30, v8);
            sub_100004F84(v16, &unk_100AEED30, &qword_100941FB0);
            v29(v13, v8);
            sub_100004F84(v7, &unk_100AEED30, &qword_100941FB0);
            if (v28)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          sub_100004F84(v16, &unk_100AEED30, &qword_100941FB0);
          (*v45)(v13, v8);
        }

        sub_100004F84(v7, &qword_100AD6BD8, &unk_100945810);
LABEL_14:
        a2 = (a2 + 1) & v47;
      }

      while (((*(v48 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v33 = *v40;
  *(*v40 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100021CEC(v53, *(v33 + 48) + *(v43 + 72) * a2, &unk_100AEED30, &qword_100941FB0);
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
LABEL_24:
    sub_100004F84(v7, &unk_100AEED30, &qword_100941FB0);
LABEL_25:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v37;
  }

  return result;
}

uint64_t sub_1002911D8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10028C764(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100295E40(&type metadata accessor for Calendar.Component, &qword_100ADB720, &qword_10094B4B8);
      goto LABEL_12;
    }

    sub_100296B88(v11 + 1);
  }

  v13 = *v3;
  sub_100034178(&qword_100ADB710, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100034178(&qword_100ADB718, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002914A0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_10028FF04(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100295BA4(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_100299F84(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1000065A8(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t sub_100291630(unint64_t result, char a2, double a3, double a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a2 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    sub_10028CAC0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = result;
      sub_100294F14();
      result = v9;
      goto LABEL_15;
    }

    sub_100296EA4(v7 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  sub_1006D3064(a3, a4);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  result = v11 & ~v12;
  if ((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * result);
      if (*v14 == a3 && v14[1] == a4)
      {
        goto LABEL_18;
      }

      result = (result + 1) & v13;
    }

    while (((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_15:
  v16 = *v4;
  *(*v4 + 8 * (result >> 6) + 56) |= 1 << result;
  v17 = (*(v16 + 48) + 16 * result);
  *v17 = a3;
  v17[1] = a4;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100291798(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for AssetType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10028CD40(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100295E40(&type metadata accessor for AssetType, &qword_100ADB780, &qword_10094B518);
      goto LABEL_12;
    }

    sub_1002970E8(v11 + 1);
  }

  v13 = *v3;
  sub_100034178(&qword_100ADFEE0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100034178(&qword_100ADC690, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100291A60(uint64_t a1, unint64_t a2, char a3)
{
  v53 = a1;
  v52 = sub_1000F24EC(&unk_100ADC680, &unk_10094C550);
  __chkstk_darwin(v52);
  v7 = &v38 - v6;
  v8 = type metadata accessor for AssetType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AE4290, &qword_100945270);
  v43 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  v21 = *(*v3 + 16);
  v22 = *(*v3 + 24);
  v40 = v3;
  if (v22 <= v21 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v39 = v18;
      sub_10028D09C(v21 + 1);
    }

    else
    {
      if (v22 > v21)
      {
        sub_10029506C(&qword_100AE4290, &qword_100945270, &qword_100ADB7B0, &qword_10094B538);
        goto LABEL_21;
      }

      v39 = v18;
      sub_100297404(v21 + 1);
    }

    v51 = *v3;
    Hasher.init(_seed:)();
    sub_1000082B4(v53, v20, &qword_100AE4290, &qword_100945270);
    v49 = *(v9 + 48);
    v50 = v9 + 48;
    if (v49(v20, 1, v8) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v23 = v44;
      (*(v9 + 32))(v44, v20, v8);
      Hasher._combine(_:)(1u);
      sub_100034178(&qword_100ADFEE0, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
      dispatch thunk of Hashable.hash(into:)();
      (*(v9 + 8))(v23, v8);
    }

    v24 = Hasher._finalize()();
    v25 = -1 << *(v51 + 32);
    a2 = v24 & ~v25;
    v48 = v51 + 56;
    if ((*(v51 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v47 = ~v25;
      v41 = (v9 + 32);
      v26 = *(v43 + 72);
      v45 = (v9 + 8);
      v46 = v26;
      v42 = v16;
      do
      {
        sub_1000082B4(*(v51 + 48) + v46 * a2, v16, &qword_100AE4290, &qword_100945270);
        v31 = *(v52 + 48);
        sub_1000082B4(v16, v7, &qword_100AE4290, &qword_100945270);
        sub_1000082B4(v53, &v7[v31], &qword_100AE4290, &qword_100945270);
        v32 = v49;
        if (v49(v7, 1, v8) == 1)
        {
          sub_100004F84(v16, &qword_100AE4290, &qword_100945270);
          if (v32(&v7[v31], 1, v8) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1000082B4(v7, v13, &qword_100AE4290, &qword_100945270);
          if (v32(&v7[v31], 1, v8) != 1)
          {
            v27 = v44;
            (*v41)(v44, &v7[v31], v8);
            sub_100034178(&qword_100ADC690, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
            v28 = dispatch thunk of static Equatable.== infix(_:_:)();
            v29 = *v45;
            v30 = v27;
            v16 = v42;
            (*v45)(v30, v8);
            sub_100004F84(v16, &qword_100AE4290, &qword_100945270);
            v29(v13, v8);
            sub_100004F84(v7, &qword_100AE4290, &qword_100945270);
            if (v28)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          sub_100004F84(v16, &qword_100AE4290, &qword_100945270);
          (*v45)(v13, v8);
        }

        sub_100004F84(v7, &unk_100ADC680, &unk_10094C550);
LABEL_14:
        a2 = (a2 + 1) & v47;
      }

      while (((*(v48 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v33 = *v40;
  *(*v40 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100021CEC(v53, *(v33 + 48) + *(v43 + 72) * a2, &qword_100AE4290, &qword_100945270);
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
LABEL_24:
    sub_100004F84(v7, &qword_100AE4290, &qword_100945270);
LABEL_25:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v37;
  }

  return result;
}

void sub_1002920C8(uint64_t *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10028D578(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100295278();
      goto LABEL_16;
    }

    sub_100297880(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = *result;
  v10 = result[1];
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v8 + 32);
  a2 = v11 & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v8 + 48) + 88 * a2);
      v15 = *v14 == v9 && v14[1] == v10;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = *(v16 + 48) + 88 * a2;
  v18 = *(result + 1);
  *v17 = *result;
  *(v17 + 16) = v18;
  *(v17 + 80) = result[10];
  v19 = *(result + 4);
  *(v17 + 48) = *(result + 3);
  *(v17 + 64) = v19;
  *(v17 + 32) = *(result + 2);
  v20 = *(v16 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v16 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100292274(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for TokenTypeIdentifier();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10028D810(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100295E40(&type metadata accessor for TokenTypeIdentifier, &qword_100ADB850, &qword_10094B598);
      goto LABEL_12;
    }

    sub_100297AFC(v11 + 1);
  }

  v13 = *v3;
  sub_100034178(&qword_100AE0030, &type metadata accessor for TokenTypeIdentifier, &protocol conformance descriptor for TokenTypeIdentifier);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100034178(&qword_100ADB848, &type metadata accessor for TokenTypeIdentifier, &protocol conformance descriptor for TokenTypeIdentifier);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10029253C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s14SuggestionInfoVMa(0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_10028DB6C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100295414();
      goto LABEL_15;
    }

    sub_100297E18(v10 + 1);
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_100034178(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v25 + 72);
    do
    {
      sub_100068B30(*(v12 + 48) + v16 * a2, v9, _s14SuggestionInfoVMa);
      if (static UUID.== infix(_:_:)())
      {
        v17 = static Date.== infix(_:_:)();
        sub_1000691A0(v9, _s14SuggestionInfoVMa);
        if (v17)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_1000691A0(v9, _s14SuggestionInfoVMa);
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v18 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100048F04(a1, *(v18 + 48) + *(v25 + 72) * a2, _s14SuggestionInfoVMa);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_100292850(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10028DF20(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100295620();
      goto LABEL_12;
    }

    sub_10029819C(v10 + 1);
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100034178(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v25 + 72);
    do
    {
      sub_100068B30(*(v12 + 48) + v16 * a2, v9, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      v17 = static UUID.== infix(_:_:)();
      sub_1000691A0(v9, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100048F04(a1, *(v18 + 48) + *(v25 + 72) * a2, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}