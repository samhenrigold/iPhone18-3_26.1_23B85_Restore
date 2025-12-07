uint64_t sub_10063D710(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 16);
  if (v2)
  {
    v4 = result;
    v5 = *(*result + 8 * v2 + 24);
    result = type metadata accessor for PrecipitationAveragesHeroChartView(0);
    v6 = *(a2 + *(result + 24) + 88);
    if (v5 < v6)
    {

      sub_10022C350(&qword_100CAB9C0, &unk_100A3A830);
      result = swift_allocObject();
      *(result + 16) = xmmword_100A2D320;
      *(result + 32) = 0;
      *(result + 40) = v6;
      *v4 = result;
    }
  }

  return result;
}

uint64_t sub_10063D7B4()
{
  v1 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for PrecipitationAveragesHeroChartView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_100643F78(v0, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrecipitationAveragesHeroChartView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_10064402C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PrecipitationAveragesHeroChartView);

  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_10022C350(&qword_100CCDBC0, &qword_100A6E888);
  type metadata accessor for Date();
  sub_100643A30();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_10063D9E4@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v3 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for PrecipitationAveragesHeroChartView(0);
  v5 = v4 - 8;
  v22 = *(v4 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10022C350(&qword_100CCDB80, &unk_100A6E7F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = v2 + *(v5 + 32);
  v14 = *(v13 + 88);
  v15 = *(v13 + 96);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.trailing.getter();
  if (v15 >= v14)
  {
    static AxisMarkValues.automatic.getter();
    sub_100643F78(v2, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrecipitationAveragesHeroChartView);
    v19 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v20 = swift_allocObject();
    sub_10064402C(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for PrecipitationAveragesHeroChartView);
    sub_10022C350(&qword_100CBAD60, &qword_100A50658);
    sub_10045349C();
    AxisMarks.init(preset:position:values:content:)();
  }

  else
  {
    sub_10022C350(&qword_100CAB9C0, &unk_100A3A830);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100A2D320;
    *(v16 + 32) = 0;
    *(v16 + 40) = v14;
    sub_100643F78(v2, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrecipitationAveragesHeroChartView);
    v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v18 = swift_allocObject();
    sub_10064402C(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PrecipitationAveragesHeroChartView);
    sub_10022C350(&qword_100CBAD60, &qword_100A50658);
    sub_10045349C();
    AxisMarks.init<A>(preset:position:values:content:)();
  }

  (*(v10 + 32))(v23, v12, v9);
  sub_10022C350(&qword_100CCDBB8, &qword_100A6E850);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10063DE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = type metadata accessor for ChartProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrecipitationAveragesHeroChartView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  sub_100643F78(a2, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrecipitationAveragesHeroChartView);
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_10064402C(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13, type metadata accessor for PrecipitationAveragesHeroChartView);
  result = (*(v7 + 32))(v15 + v14, v9, v6);
  *a3 = sub_1006438DC;
  a3[1] = v15;
  return result;
}

uint64_t sub_10063E030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = static Alignment.topLeading.getter();
  a4[1] = v8;
  v9 = sub_10022C350(&qword_100CBAD40, &qword_100A50610);
  return sub_10063E098(a2, a3, a1, a4 + *(v9 + 44));
}

uint64_t sub_10063E098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
  __chkstk_darwin(active);
  v31 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for DetailHeroChartLollipopModel(0);
  __chkstk_darwin(v32);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035B30(a1 + 16, a4);
  v11 = type metadata accessor for LollipopChartOverlayView(0);
  v12 = v11[5];
  v13 = type metadata accessor for ChartProxy();
  (*(*(v13 - 8) + 16))(a4 + v12, a2, v13);
  v14 = v11[6];
  v15 = type metadata accessor for GeometryProxy();
  (*(*(v15 - 8) + 16))(a4 + v14, a3, v15);
  v16 = a1 + *(type metadata accessor for PrecipitationAveragesHeroChartView(0) + 24);
  v17 = type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  v18 = v17[15];
  v19 = v11[7];
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 16);
  v21(a4 + v19, v16 + v18, v20);
  v21(a4 + v11[8], v16 + v17[16], v20);
  sub_100643F78(v16 + v17[14], v10, type metadata accessor for DetailHeroChartLollipopModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v31;
    sub_10064402C(v10, v31, type metadata accessor for DetailHeroChartActiveLollipopModel);
    v23 = *v25;
    v26 = v25 + *(active + 20);
    v24 = *&v26[*(type metadata accessor for LollipopMarkModel(0) + 20)];
    sub_100643FD4(v25, type metadata accessor for DetailHeroChartActiveLollipopModel);
  }

  else
  {
    sub_100643FD4(v10, type metadata accessor for DetailHeroChartLollipopModel);
    v23 = 0;
    v24 = 0;
  }

  *(a4 + v11[10]) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  result = swift_storeEnumTagMultiPayload();
  v28 = a4 + v11[9];
  *v28 = v23;
  *(v28 + 8) = v24;
  *(v28 + 16) = EnumCaseMultiPayload != 1;
  return result;
}

uint64_t sub_10063E3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v128 = a3;
  v127 = sub_10022C350(&qword_100CCDB28, &qword_100A6E7B8);
  __chkstk_darwin(v127);
  v102 = &v91 - v4;
  v98 = sub_10022C350(&qword_100CB6960, &unk_100A6E7C0);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v91 - v5;
  v101 = sub_10022C350(&qword_100CB6948, &unk_100A4A2E0);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v91 - v8;
  v92 = type metadata accessor for PeakKnockoutMark(0);
  __chkstk_darwin(v92);
  v94 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v91 - v11;
  v12 = sub_10022C350(&qword_100CCDB18, &qword_100A6E7B0);
  __chkstk_darwin(v12 - 8);
  v126 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v125 = &v91 - v15;
  v16 = sub_10022C350(&qword_100CBAE58, &unk_100A6E910);
  __chkstk_darwin(v16 - 8);
  v112 = &v91 - v17;
  v18 = sub_10022C350(&qword_100CB6950, &unk_100A50770);
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for Date();
  v129 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v22 - 8);
  v103 = &v91 - v23;
  v108 = type metadata accessor for LineMark();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10022C350(&qword_100CBAC68, &qword_100A505A0);
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v106 = &v91 - v26;
  v117 = sub_10022C350(&qword_100CCDB08, &unk_100A6E7A0);
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v107 = &v91 - v27;
  v119 = sub_10022C350(&qword_100CCDAF8, &qword_100A6E790);
  v120 = *(v119 - 8);
  __chkstk_darwin(v119);
  v109 = &v91 - v28;
  v29 = sub_10022C350(&qword_100CCDC78, &qword_100A6E920);
  v123 = *(v29 - 8);
  v124 = v29;
  __chkstk_darwin(v29);
  v122 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v113 = &v91 - v32;
  LocalizedStringKey.init(stringLiteral:)();
  v104 = a1;
  DetailChartDataElement.date.getter();
  v111 = v21;
  static PlottableValue.value(_:_:)();

  v33 = *(v129 + 8);
  v129 += 8;
  v114 = v33;
  v105 = v19;
  v33(v21, v19);
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.value.getter();
  v135[0] = v34;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v135[0] = 0x65676172657641;
  v135[1] = 0xE700000000000000;
  static PlottableValue.value(_:_:)();

  LineMark.init<A, B, C>(x:y:series:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v35 = v106;
  v36 = v108;
  ChartContent.lineStyle(_:)();
  sub_100453E98(v135);
  v37 = v36;
  (*(v110 + 8))(v25, v36);
  v38 = objc_opt_self();
  v39 = [v38 systemGray2Color];
  v134 = Color.init(uiColor:)();
  v130 = v37;
  v131 = &protocol witness table for LineMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v107;
  v42 = v115;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v116 + 8))(v35, v42);
  v130 = v42;
  v131 = &type metadata for Color;
  v132 = OpaqueTypeConformance2;
  v133 = &protocol witness table for Color;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v109;
  v45 = v117;
  ChartContent.interpolationMethod(_:)();
  (*(v118 + 8))(v41, v45);
  sub_10022C350(&qword_100CCDB00, &qword_100A6E798);
  v130 = v45;
  v131 = v43;
  swift_getOpaqueTypeConformance2();
  v130 = type metadata accessor for RectangleMark();
  v131 = &protocol witness table for RectangleMark;
  swift_getOpaqueTypeConformance2();
  v46 = v113;
  v47 = v119;
  ChartContent.mask<A>(content:)();
  (*(v120 + 8))(v44, v47);
  v48 = v111;
  DetailChartDataElement.date.getter();
  type metadata accessor for PrecipitationAveragesHeroChartView(0);
  type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  LOBYTE(v43) = static Date.== infix(_:_:)();
  v114(v48, v105);
  if (v43)
  {
    v49 = v93;
    DetailChartDataElement.date.getter();
    DetailChartDataElement.value.getter();
    v51 = v50;
    v52 = LocalizedStringKey.init(stringLiteral:)();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = LocalizedStringKey.init(stringLiteral:)();
    v60 = v92;
    *(v49 + *(v92 + 20)) = v51;
    *(v49 + v60[6]) = 0;
    v61 = v49 + v60[8];
    *v61 = v59;
    *(v61 + 8) = v62;
    *(v61 + 16) = v63 & 1;
    *(v61 + 24) = v64;
    v65 = v49 + v60[7];
    *v65 = v52;
    *(v65 + 8) = v54;
    *(v65 + 16) = v56 & 1;
    *(v65 + 24) = v58;
    v66 = v96;
    sub_10063F390(v96);
    v67 = [v38 systemGray2Color];
    v134 = Color.init(uiColor:)();
    v68 = sub_10022E824(&qword_100CB6958, &unk_100A4A2F0);
    v69 = type metadata accessor for PointMark();
    v70 = type metadata accessor for BasicChartSymbolShape();
    v71 = sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape, &protocol conformance descriptor for BasicChartSymbolShape);
    v130 = v69;
    v131 = v70;
    v132 = &protocol witness table for PointMark;
    v133 = v71;
    v72 = swift_getOpaqueTypeConformance2();
    v130 = v68;
    v131 = v72;
    swift_getOpaqueTypeConformance2();
    v73 = v95;
    v74 = v98;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v97 + 8))(v66, v74);
    v75 = v94;
    sub_100643F78(v49, v94, type metadata accessor for PeakKnockoutMark);
    v130 = v75;
    v76 = v100;
    v77 = v99;
    v78 = v101;
    (*(v100 + 16))(v99, v73, v101);
    v131 = v77;
    v79 = v102;
    sub_10063A64C(&v130, v102);
    v80 = *(v76 + 8);
    v80(v73, v78);
    sub_100643FD4(v49, type metadata accessor for PeakKnockoutMark);
    v80(v77, v78);
    sub_100643FD4(v75, type metadata accessor for PeakKnockoutMark);
    v81 = v79;
    v82 = v125;
    sub_10011C0F0(v81, v125, &qword_100CCDB28, &qword_100A6E7B8);
    v83 = v82;
    v84 = 0;
  }

  else
  {
    v82 = v125;
    v83 = v125;
    v84 = 1;
  }

  sub_10001B350(v83, v84, 1, v127);
  v86 = v122;
  v85 = v123;
  v87 = v124;
  (*(v123 + 16))(v122, v46, v124);
  v130 = v86;
  v88 = v126;
  sub_1000302D8(v82, v126, &qword_100CCDB18, &qword_100A6E7B0);
  v131 = v88;
  sub_10063A818(&v130, v128);
  sub_10003FDA0(v82, &qword_100CCDB18);
  v89 = *(v85 + 8);
  v89(v46, v87);
  sub_10003FDA0(v88, &qword_100CCDB18);
  return (v89)(v86, v87);
}

uint64_t sub_10063F390@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for BasicChartSymbolShape();
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  __chkstk_darwin(v1);
  v32 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB6950, &unk_100A50770);
  __chkstk_darwin(v4 - 8);
  v28 = v25 - v5;
  v26 = type metadata accessor for Date();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v9 - 8);
  v25[1] = v25 - v10;
  v27 = type metadata accessor for PointMark();
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CB6958, &unk_100A4A2F0);
  v14 = *(v13 - 8);
  v30 = v13;
  v31 = v14;
  __chkstk_darwin(v13);
  v16 = v25 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.date.getter();
  v17 = v26;
  static PlottableValue.value(_:_:)();

  (*(v6 + 8))(v8, v17);
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.value.getter();
  v36 = v18;
  static PlottableValue.value(_:_:)();

  PointMark.init<A, B>(x:y:)();
  v19 = v32;
  static ChartSymbolShape<>.circle.getter();
  v20 = sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape, &protocol conformance descriptor for BasicChartSymbolShape);
  v21 = v27;
  v22 = v33;
  ChartContent.symbol<A>(_:)();
  (*(v34 + 8))(v19, v22);
  (*(v29 + 8))(v12, v21);
  v36 = v21;
  v37 = v22;
  v38 = &protocol witness table for PointMark;
  v39 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v30;
  ChartContent.symbolSize(_:)();
  return (*(v31 + 8))(v16, v23);
}

uint64_t sub_10063F884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v124 = a3;
  v123 = sub_10022C350(&qword_100CCDB28, &qword_100A6E7B8);
  __chkstk_darwin(v123);
  v98 = &v88 - v4;
  v94 = sub_10022C350(&qword_100CB6960, &unk_100A6E7C0);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v88 - v5;
  v97 = sub_10022C350(&qword_100CB6948, &unk_100A4A2E0);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v88 - v8;
  v88 = type metadata accessor for PeakKnockoutMark(0);
  __chkstk_darwin(v88);
  v90 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v88 - v11;
  v12 = sub_10022C350(&qword_100CCDB18, &qword_100A6E7B0);
  __chkstk_darwin(v12 - 8);
  v122 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v121 = &v88 - v15;
  v16 = sub_10022C350(&qword_100CBAE58, &unk_100A6E910);
  __chkstk_darwin(v16 - 8);
  v111 = &v88 - v17;
  v18 = sub_10022C350(&qword_100CB6950, &unk_100A50770);
  __chkstk_darwin(v18 - 8);
  v103 = &v88 - v19;
  v20 = type metadata accessor for Date();
  v126 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v23 - 8);
  v100 = &v88 - v24;
  v107 = type metadata accessor for LineMark();
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10022C350(&qword_100CBAC68, &qword_100A505A0);
  v112 = *(v110 - 8);
  __chkstk_darwin(v110);
  v102 = &v88 - v27;
  v113 = sub_10022C350(&qword_100CCDB08, &unk_100A6E7A0);
  v114 = *(v113 - 8);
  __chkstk_darwin(v113);
  v104 = &v88 - v28;
  v115 = sub_10022C350(&qword_100CCDAF8, &qword_100A6E790);
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v105 = &v88 - v29;
  v30 = sub_10022C350(&qword_100CCDC78, &qword_100A6E920);
  v119 = *(v30 - 8);
  v120 = v30;
  __chkstk_darwin(v30);
  v118 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v125 = &v88 - v33;
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.date.getter();
  v106 = v22;
  static PlottableValue.value(_:_:)();

  v34 = *(v126 + 8);
  v126 += 8;
  v109 = v34;
  v101 = v20;
  v34(v22, v20);
  LocalizedStringKey.init(stringLiteral:)();
  v99 = a1;
  DetailChartDataElement.value.getter();
  v132[0] = v35;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  strcpy(v132, "Precipitation");
  HIWORD(v132[1]) = -4864;
  static PlottableValue.value(_:_:)();

  LineMark.init<A, B, C>(x:y:series:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v36 = v102;
  v37 = v107;
  ChartContent.lineStyle(_:)();
  sub_100453E98(v132);
  (*(v108 + 8))(v26, v37);
  v131 = static Color.cyan.getter();
  v127 = v37;
  v128 = &protocol witness table for LineMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v104;
  v40 = v110;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v112 + 8))(v36, v40);
  v127 = v40;
  v128 = &type metadata for Color;
  v129 = OpaqueTypeConformance2;
  v130 = &protocol witness table for Color;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v105;
  v43 = v113;
  ChartContent.interpolationMethod(_:)();
  (*(v114 + 8))(v39, v43);
  sub_10022C350(&qword_100CCDB00, &qword_100A6E798);
  v127 = v43;
  v128 = v41;
  swift_getOpaqueTypeConformance2();
  v127 = type metadata accessor for RectangleMark();
  v128 = &protocol witness table for RectangleMark;
  swift_getOpaqueTypeConformance2();
  v44 = v115;
  ChartContent.mask<A>(content:)();
  (*(v116 + 8))(v42, v44);
  v45 = v106;
  DetailChartDataElement.date.getter();
  type metadata accessor for PrecipitationAveragesHeroChartView(0);
  type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  LOBYTE(v41) = static Date.== infix(_:_:)();
  v109(v45, v101);
  if (v41)
  {
    v46 = v89;
    DetailChartDataElement.date.getter();
    DetailChartDataElement.value.getter();
    v48 = v47;
    v49 = LocalizedStringKey.init(stringLiteral:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = LocalizedStringKey.init(stringLiteral:)();
    v57 = v88;
    *(v46 + *(v88 + 20)) = v48;
    *(v46 + v57[6]) = 0;
    v58 = v46 + v57[8];
    *v58 = v56;
    *(v58 + 8) = v59;
    *(v58 + 16) = v60 & 1;
    *(v58 + 24) = v61;
    v62 = v46 + v57[7];
    *v62 = v49;
    *(v62 + 8) = v51;
    *(v62 + 16) = v53 & 1;
    *(v62 + 24) = v55;
    v63 = v92;
    sub_10063F390(v92);
    v131 = static Color.white.getter();
    v64 = sub_10022E824(&qword_100CB6958, &unk_100A4A2F0);
    v65 = type metadata accessor for PointMark();
    v66 = type metadata accessor for BasicChartSymbolShape();
    v67 = sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape, &protocol conformance descriptor for BasicChartSymbolShape);
    v127 = v65;
    v128 = v66;
    v129 = &protocol witness table for PointMark;
    v130 = v67;
    v68 = swift_getOpaqueTypeConformance2();
    v127 = v64;
    v128 = v68;
    swift_getOpaqueTypeConformance2();
    v69 = v91;
    v70 = v94;
    ChartContent.foregroundStyle<A>(_:)();

    (*(v93 + 8))(v63, v70);
    v71 = v90;
    sub_100643F78(v46, v90, type metadata accessor for PeakKnockoutMark);
    v127 = v71;
    v72 = v96;
    v73 = v95;
    v74 = v97;
    (*(v96 + 16))(v95, v69, v97);
    v128 = v73;
    v75 = v98;
    sub_10063A64C(&v127, v98);
    v76 = *(v72 + 8);
    v76(v69, v74);
    sub_100643FD4(v46, type metadata accessor for PeakKnockoutMark);
    v76(v73, v74);
    sub_100643FD4(v71, type metadata accessor for PeakKnockoutMark);
    v77 = v75;
    v78 = v121;
    sub_10011C0F0(v77, v121, &qword_100CCDB28, &qword_100A6E7B8);
    v79 = v78;
    v80 = 0;
  }

  else
  {
    v78 = v121;
    v79 = v121;
    v80 = 1;
  }

  sub_10001B350(v79, v80, 1, v123);
  v82 = v118;
  v81 = v119;
  v83 = v125;
  v84 = v120;
  (*(v119 + 16))(v118, v125, v120);
  v127 = v82;
  v85 = v122;
  sub_1000302D8(v78, v122, &qword_100CCDB18, &qword_100A6E7B0);
  v128 = v85;
  sub_10063A818(&v127, v124);
  sub_10003FDA0(v78, &qword_100CCDB18);
  v86 = *(v81 + 8);
  v86(v83, v84);
  sub_10003FDA0(v85, &qword_100CCDB18);
  return (v86)(v82, v84);
}

uint64_t sub_100640818()
{
  v0 = type metadata accessor for RectangleMark();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  RectangleMark.init(xStart:xEnd:yStart:yEnd:)();
  ChartContent.offset(x:yStart:yEnd:)();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_100640910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v162 = a2;
  v170 = a3;
  v4 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v4 - 8);
  v155 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v6 - 8);
  v154 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10022C350(&qword_100CCDC18, &qword_100A88170);
  v153 = *(v169 - 8);
  __chkstk_darwin(v169);
  v152 = &v135 - v8;
  v9 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v9 - 8);
  v158 = &v135 - v10;
  v161 = type metadata accessor for DetailChartDataElement();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v159 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CCDC08, &qword_100A6E8B0);
  __chkstk_darwin(v12 - 8);
  v168 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v167 = &v135 - v15;
  v16 = sub_10022C350(&qword_100CBADE0, &unk_100A506D0);
  __chkstk_darwin(v16 - 8);
  v157 = &v135 - v17;
  v18 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v18 - 8);
  v148 = type metadata accessor for AxisTick();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v142 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10022C350(&qword_100CBAE08, &unk_100A708B0);
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v145 = &v135 - v22;
  v23 = type metadata accessor for AxisGridLine();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_10022C350(&qword_100CBAD88, &unk_100A50670);
  v143 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v135 - v29;
  v166 = sub_10022C350(&qword_100CCDBE8, &unk_100A88160);
  __chkstk_darwin(v166);
  v156 = &v135 - v31;
  v32 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v32 - 8);
  v163 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v135 - v35;
  v37 = type metadata accessor for Date();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v171 = &v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v135 - v41;
  v43 = sub_10022C350(&qword_100CCDBD8, &unk_100A6E890);
  __chkstk_darwin(v43 - 8);
  v165 = &v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v164 = &v135 - v46;
  AxisValue.as<A>(_:)();
  if (sub_100024D10(v36, 1, v37) == 1)
  {
    sub_10003FDA0(v36, &unk_100CB2CF0);
LABEL_5:
    v47 = 1;
    v48 = v38;
    v49 = v171;
    v50 = v164;
    goto LABEL_17;
  }

  (*(v38 + 32))(v42, v36, v37);
  if (AxisValue.isFirst.getter())
  {
    (*(v38 + 8))(v42, v37);
    goto LABEL_5;
  }

  v141 = v42;
  v139 = v38;
  v51 = AxisValue.isLast.getter();
  v140 = a1;
  if (v51)
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B62E0(v52, v53, v54);
    v136 = v174;
    v135 = v175;
    v55 = v176;
    swift_endAccess();
    v183 = v136;
    v184 = v135;
    v185 = v55;
    AxisGridLine.init(centered:stroke:)();
    swift_beginAccess();
    v56 = sub_1004B5F70();
    swift_endAccess();
    *&v180 = v56;
    v138 = v30;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v24 + 8))(v26, v23);
    static AxisTick.Length.longestLabel.getter();
    swift_beginAccess();
    sub_1004B62E0(v57, v58, v59);
    v136 = v177;
    v135 = v178;
    v60 = v179;
    swift_endAccess();
    v180 = v136;
    v181 = v135;
    v182 = v60;
    v61 = v142;
    AxisTick.init(centered:length:stroke:)();
    swift_beginAccess();
    v62 = sub_1004B5F70();
    swift_endAccess();
    v172 = v62;
    v63 = v145;
    v64 = v148;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v147 + 8))(v61, v64);
    v65 = v143;
    v66 = v144;
    v67 = v146;
    (*(v143 + 16))(v144, v30, v146);
    v172 = v66;
    v68 = v149;
    v69 = v150;
    v70 = v151;
    (*(v149 + 16))(v150, v63, v151);
    v173 = v69;
    sub_1007FECC0(&v172, v71, v72, v73, v74, v75, v76, v77, v135, *(&v135 + 1), v136, *(&v136 + 1), v137, v138, v139, v140, v141, v142);
    v78 = *(v68 + 8);
    v78(v63, v70);
    v79 = *(v65 + 8);
    v79(v138, v67);
    v48 = v139;
    (*(v139 + 8))(v141, v37);
    v78(v69, v70);
    v79(v66, v67);
    v80 = v156;
    sub_10011C0F0(v157, v156, &qword_100CBADE0, &unk_100A506D0);
    sub_10022C350(&qword_100CCDC48, &unk_100A6E8D0);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    v112 = sub_10022C350(&qword_100CCDBF8, &unk_100A6E8A0);
    sub_10001B350(v80, 0, 1, v112);
    v49 = v171;
    goto LABEL_16;
  }

  type metadata accessor for PrecipitationAveragesHeroChartView(0);
  type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  sub_1006446D8(&qword_100CA39D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v81 = v141;
  v82 = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = v171;
  if ((v82 & 1) == 0)
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B6380(v84, v85, v86);
    v136 = v174;
    v135 = v175;
    v87 = v176;
    swift_endAccess();
    v183 = v136;
    v184 = v135;
    v185 = v87;
    AxisGridLine.init(centered:stroke:)();
    swift_beginAccess();
    v88 = sub_1004B5F70();
    swift_endAccess();
    *&v180 = v88;
    v138 = v30;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v24 + 8))(v26, v23);
    static AxisTick.Length.longestLabel.getter();
    swift_beginAccess();
    sub_1004B6380(v89, v90, v91);
    v136 = v177;
    v135 = v178;
    v92 = v179;
    swift_endAccess();
    v180 = v136;
    v181 = v135;
    v182 = v92;
    v93 = v142;
    AxisTick.init(centered:length:stroke:)();
    swift_beginAccess();
    v94 = sub_1004B5F70();
    swift_endAccess();
    v172 = v94;
    v95 = v145;
    v96 = v148;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v147 + 8))(v93, v96);
    v97 = v143;
    v98 = v144;
    v99 = v146;
    (*(v143 + 16))(v144, v30, v146);
    v172 = v98;
    v100 = v149;
    v101 = v150;
    v102 = v151;
    (*(v149 + 16))(v150, v95, v151);
    v173 = v101;
    sub_1007FECC0(&v172, v103, v104, v105, v106, v107, v108, v109, v135, *(&v135 + 1), v136, *(&v136 + 1), v137, v138, v139, v140, v141, v142);
    v110 = *(v100 + 8);
    v110(v95, v102);
    v111 = *(v97 + 8);
    v111(v138, v99);
    v48 = v139;
    (*(v139 + 8))(v141, v37);
    v110(v101, v102);
    v111(v98, v99);
    v80 = v156;
    sub_10011C0F0(v157, v156, &qword_100CBADE0, &unk_100A506D0);
    sub_10022C350(&qword_100CCDC48, &unk_100A6E8D0);
    goto LABEL_15;
  }

  v48 = v139;
  (*(v139 + 8))(v81, v37);
  v83 = sub_10022C350(&qword_100CCDBF8, &unk_100A6E8A0);
  v80 = v156;
  sub_10001B350(v156, 1, 1, v83);
LABEL_16:
  v50 = v164;
  sub_10011C0F0(v80, v164, &qword_100CCDBE8, &unk_100A88160);
  v47 = 0;
LABEL_17:
  v113 = v163;
  sub_10001B350(v50, v47, 1, v166);
  AxisValue.as<A>(_:)();
  if (sub_100024D10(v113, 1, v37) == 1)
  {
    sub_10003FDA0(v113, &unk_100CB2CF0);
LABEL_24:
    v117 = v167;
    sub_10001B350(v167, 1, 1, v169);
    goto LABEL_25;
  }

  (*(v48 + 32))(v49, v113, v37);
  type metadata accessor for PrecipitationAveragesHeroChartView(0);
  type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  v114 = static Date.== infix(_:_:)();
  if ((v114 & 1) == 0)
  {
    v114 = AxisValue.isFirst.getter();
    if ((v114 & 1) == 0)
    {
LABEL_23:
      (*(v48 + 8))(v49, v37);
      goto LABEL_24;
    }
  }

  __chkstk_darwin(v114);
  v133 = v49;
  v115 = v158;
  sub_1008DBA9C();
  v116 = v161;
  if (sub_100024D10(v115, 1, v161) == 1)
  {
    sub_10003FDA0(v115, &qword_100CAB930);
    goto LABEL_23;
  }

  (*(v160 + 32))(v159, v115, v116);
  v121 = v48;
  if (AxisValue.isFirst.getter())
  {
    v122 = static AxisValueLabelCollisionResolution.disabled.getter();
  }

  else
  {
    v122 = static AxisValueLabelCollisionResolution.automatic.getter();
  }

  __chkstk_darwin(v122);
  v123 = v159;
  static AxisValueLabelOrientation.automatic.getter();
  v133 = sub_10022C350(&qword_100CCDC20, &qword_100A6E8B8);
  v134 = sub_100643D2C();
  v131 = sub_100643D20;
  v132 = &v129;
  LOBYTE(v130) = 0;
  v129 = 0;
  v124 = v152;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  v125 = v167;
  v126 = v124;
  v127 = v169;
  (*(v153 + 32))(v167, v126, v169);
  sub_10001B350(v125, 0, 1, v127);
  v128 = v123;
  v117 = v125;
  (*(v160 + 8))(v128, v161);
  (*(v121 + 8))(v171, v37);
LABEL_25:
  v118 = v165;
  sub_1000302D8(v50, v165, &qword_100CCDBD8, &unk_100A6E890);
  v172 = v118;
  v119 = v168;
  sub_1000302D8(v117, v168, &qword_100CCDC08, &qword_100A6E8B0);
  v173 = v119;
  sub_1007FEEE8();
  sub_10003FDA0(v117, &qword_100CCDC08);
  sub_10003FDA0(v50, &qword_100CCDBD8);
  sub_10003FDA0(v119, &qword_100CCDC08);
  return sub_10003FDA0(v118, &qword_100CCDBD8);
}

uint64_t sub_100641E40()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  v4 = static Date.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

void *sub_100641F2C@<X0>(void *a2@<X8>)
{
  v4 = AxisValue.isFirst.getter();
  sub_100641F90(v4 & 1, __src);
  return memcpy(a2, __src, 0x91uLL);
}

void sub_100641F90(int a1@<W1>, uint64_t a2@<X8>)
{
  HIDWORD(v34) = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v38 = DetailChartDataElement.dateLabel.getter();
  *(&v38 + 1) = v7;
  sub_10002D5A4();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  DetailChartDataElement.date.getter();
  type metadata accessor for PrecipitationAveragesHeroChartView(0);
  type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  v13 = static Date.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  if (v13)
  {
    static Color.primary.getter();
  }

  else
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B61C0();
    swift_endAccess();
  }

  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;

  sub_10010CD64(v8, v10, v12 & 1);

  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10010CD64(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v23 &= 1u;
  v36 = v23;
  v35 = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v37[5] = v38;
  *&v37[21] = v39;
  *&v37[37] = v40;
  v27 = static Edge.Set.horizontal.getter();
  v28 = BYTE4(v34) & 1;
  EdgeInsets.init(_all:)();
  v29 = *&v37[16];
  *(a2 + 51) = *v37;
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23;
  *(a2 + 24) = v25;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 49) = v28;
  *(a2 + 50) = 0;
  *(a2 + 67) = v29;
  *(a2 + 83) = *&v37[32];
  *(a2 + 96) = *&v37[45];
  *(a2 + 104) = v27;
  *(a2 + 112) = v30;
  *(a2 + 120) = v31;
  *(a2 + 128) = v32;
  *(a2 + 136) = v33;
  *(a2 + 144) = 0;
}

uint64_t sub_1006422F4@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v1 - 8);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v3 - 8);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10022C350(&qword_100CBAD80, &qword_100A88140);
  v40 = *(v45 - 8);
  __chkstk_darwin(v45);
  v39 = &v39 - v5;
  v6 = sub_10022C350(&qword_100CBAD70, &unk_100A50660);
  __chkstk_darwin(v6 - 8);
  v46 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for AxisGridLine();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10022C350(&qword_100CBAD88, &unk_100A50670);
  v15 = *(v44 - 8);
  __chkstk_darwin(v44);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  AxisGridLine.init(centered:stroke:)();
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = sub_1004B5F70();
  swift_endAccess();
  v48 = v21;
  AxisMark.foregroundStyle<A>(_:)();

  (*(v12 + 8))(v14, v11);
  AxisValue.as<A>(_:)();
  if (v49)
  {
    v22 = 1;
LABEL_7:
    v33 = v45;
    goto LABEL_8;
  }

  v23 = *&v48;
  v24 = (v43 + *(type metadata accessor for PrecipitationAveragesHeroChartView(0) + 24));
  v25 = v24[13];
  v26 = v24[14];
  v27 = v24[15];
  v28 = AxisValue.isFirst.getter();
  v29 = AxisValue.isLast.getter();
  sub_100695870(v28 & 1, v29 & 1, v25, v26, v27, v23);
  v22 = 1;
  if (!v31)
  {
    goto LABEL_7;
  }

  v43 = &v39;
  __chkstk_darwin(v30);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v38[2] = sub_10022C350(&qword_100CBAD90, &unk_100A8C450);
  v38[3] = sub_10045362C();
  v38[0] = sub_100643A10;
  v38[1] = v38;
  v32 = v39;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();

  v33 = v45;
  (*(v40 + 32))(v10, v32, v45);
  v22 = 0;
LABEL_8:
  sub_10001B350(v10, v22, 1, v33);
  v34 = v44;
  (*(v15 + 16))(v17, v20, v44);
  v48 = v17;
  v35 = v46;
  sub_1000302D8(v10, v46, &qword_100CBAD70, &unk_100A50660);
  v49 = v35;
  sub_1007FEDB0();
  sub_10003FDA0(v10, &qword_100CBAD70);
  v36 = *(v15 + 8);
  v36(v20, v34);
  sub_10003FDA0(v35, &qword_100CBAD70);
  return (v36)(v17, v34);
}

void *sub_10064290C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  sub_10002D5A4();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_10010CD64(v4, v6, v8 & 1);

  swift_beginAccess();
  sub_1004B61C0();
  swift_endAccess();
  v14 = Text.foregroundColor(_:)();
  v30 = v16;
  v31 = v15;
  v18 = v17;

  sub_10010CD64(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v20 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  memcpy(&v32[7], __src, 0x70uLL);
  *a3 = v14;
  *(a3 + 8) = v31;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v30;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  *(a3 + 56) = v20;
  *(a3 + 64) = v22;
  *(a3 + 72) = v24;
  *(a3 + 80) = v26;
  *(a3 + 88) = v28;
  *(a3 + 96) = 0;
  return memcpy((a3 + 97), v32, 0x77uLL);
}

unint64_t sub_100642B84()
{
  result = qword_100CCDA68;
  if (!qword_100CCDA68)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCDA58, &qword_100A6E710);
    v4[0] = sub_10023FBF4(&qword_100CCDA70, &unk_100CCDA78, &unk_100A6E720, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v3, v4);
    atomic_store(result, &qword_100CCDA68);
  }

  return result;
}

unint64_t sub_100642C3C()
{
  result = qword_100CCDAD0;
  if (!qword_100CCDAD0)
  {
    v9 = v0;
    v10 = v1;
    v3 = sub_10022E824(&qword_100CCDAC8, &qword_100A6E778);
    type metadata accessor for RectangleMark();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v6 = sub_100642D48();
    v7 = v6;
    v8 = sub_100644088(&qword_100CCDB30, &qword_100CCDB38, &qword_100A6E7D0, sub_100643218);
    p_OpaqueTypeConformance2 = &OpaqueTypeConformance2;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &p_OpaqueTypeConformance2);
    atomic_store(result, &qword_100CCDAD0);
  }

  return result;
}

unint64_t sub_100642D48()
{
  result = qword_100CCDAD8;
  if (!qword_100CCDAD8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCDAE0, &qword_100A6E780);
    v4[0] = sub_100642DCC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CCDAD8);
  }

  return result;
}

unint64_t sub_100642DCC()
{
  result = qword_100CCDAE8;
  if (!qword_100CCDAE8)
  {
    v6[10] = v0;
    v6[11] = v1;
    v3 = sub_10022E824(&qword_100CCDAF0, &qword_100A6E788);
    sub_10022E824(&qword_100CCDAF8, &qword_100A6E790);
    sub_10022E824(&qword_100CCDB00, &qword_100A6E798);
    sub_10022E824(&qword_100CCDB08, &unk_100A6E7A0);
    sub_10022E824(&qword_100CBAC68, &qword_100A505A0);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    type metadata accessor for RectangleMark();
    v6[2] = OpaqueTypeConformance2;
    v6[3] = swift_getOpaqueTypeConformance2();
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = sub_100642FBC();
    v5 = v6;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v5);
    atomic_store(result, &qword_100CCDAE8);
  }

  return result;
}

unint64_t sub_100642FBC()
{
  result = qword_100CCDB10;
  if (!qword_100CCDB10)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCDB18, &qword_100A6E7B0);
    v4[0] = sub_100643040();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCDB10);
  }

  return result;
}

unint64_t sub_100643040()
{
  result = qword_100CCDB20;
  if (!qword_100CCDB20)
  {
    v6[8] = v0;
    v6[9] = v1;
    v3 = sub_10022E824(&qword_100CCDB28, &qword_100A6E7B8);
    v6[0] = sub_1006446D8(&qword_100CBAC80, type metadata accessor for PeakKnockoutMark, aUi);
    v4 = sub_10022E824(&qword_100CB6960, &unk_100A6E7C0);
    sub_10022E824(&qword_100CB6958, &unk_100A4A2F0);
    type metadata accessor for PointMark();
    type metadata accessor for BasicChartSymbolShape();
    sub_1006446D8(&qword_100CB6980, &type metadata accessor for BasicChartSymbolShape, &protocol conformance descriptor for BasicChartSymbolShape);
    swift_getOpaqueTypeConformance2();
    v5[1] = v4;
    v5[2] = &type metadata for Color;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[4] = &protocol witness table for Color;
    v6[1] = swift_getOpaqueTypeConformance2();
    v5[0] = v6;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, v5);
    atomic_store(result, &qword_100CCDB20);
  }

  return result;
}

unint64_t sub_100643218()
{
  result = qword_100CCDB40;
  if (!qword_100CCDB40)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = sub_10022E824(&qword_100CCDB48, &qword_100A6E7D8);
    v5[0] = sub_1006446D8(&qword_100CBACA8, type metadata accessor for PeakUpperMark, byte_100A8BA7C);
    v5[1] = v5[0];
    v4 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v4);
    atomic_store(result, &qword_100CCDB40);
  }

  return result;
}

uint64_t sub_1006432D4(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationAveragesHeroChartView(0);
  sub_100003810(v2);
  sub_100008550();

  return sub_10063D710(a1, v3);
}

unint64_t sub_100643380()
{
  result = qword_100CCDB70;
  if (!qword_100CCDB70)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCDB68, &qword_100A6E7E8);
    v4[0] = sub_10023FBF4(&qword_100CCDB78, &qword_100CCDB80, &unk_100A6E7F0, &protocol conformance descriptor for AxisMarks<A>);
    v4[1] = v4[0];
    result = swift_getWitnessTable(&protocol conformance descriptor for <> BuilderConditional<A, B>, v3, v4);
    atomic_store(result, &qword_100CCDB70);
  }

  return result;
}

uint64_t sub_100643430()
{
  v0 = sub_100004758();
  sub_100003810(v0);
  sub_100008550();
  v1 = sub_1000138D0();

  return sub_10063DE34(v1, v2, v3);
}

unint64_t sub_100643494()
{
  result = qword_100CCDB98;
  if (!qword_100CCDB98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCDAB0, &qword_100A6E760);
    v4[0] = sub_100643520();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCDB98);
  }

  return result;
}

unint64_t sub_100643520()
{
  result = qword_100CCDBA0;
  if (!qword_100CCDBA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCDB90, &qword_100A6E808);
    v4[0] = sub_1006435D8();
    v4[1] = sub_10023FBF4(&qword_100CBAD28, &qword_100CBAD10, &qword_100A50600, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCDBA0);
  }

  return result;
}

unint64_t sub_1006435D8()
{
  result = qword_100CCDBA8;
  if (!qword_100CCDBA8)
  {
    v6[18] = v0;
    v6[19] = v1;
    v5 = sub_10022E824(&qword_100CCDB88, &qword_100A6E800);
    v4 = sub_10022E824(&qword_100CCDAA8, &qword_100A6E758);
    v3 = sub_10022E824(&qword_100CBACE0, &qword_100A505D8);
    sub_10022E824(&qword_100CCDAA0, &qword_100A6E750);
    sub_10022E824(&qword_100CCDB68, &qword_100A6E7E8);
    sub_10022E824(&qword_100CCDA98, &qword_100A6E748);
    sub_10022E824(&qword_100CCDB58, &qword_100A6E7E0);
    sub_10022E824(&qword_100CCDA90, &qword_100A6E740);
    type metadata accessor for AutomaticScaleDomain();
    type metadata accessor for PlotDimensionScaleRange();
    sub_10022E824(&qword_100CCDA88, &qword_100A6E738);
    sub_10023FBF4(&qword_100CCDB50, &qword_100CCDA88, &qword_100A6E738, &protocol conformance descriptor for Chart<A>);
    swift_getOpaqueTypeConformance2();
    v6[6] = &protocol witness table for AutomaticScaleDomain;
    v6[7] = &protocol witness table for PlotDimensionScaleRange;
    swift_getOpaqueTypeConformance2();
    sub_10023FBF4(&qword_100CCDB60, &qword_100CCDB58, &qword_100A6E7E0, &protocol conformance descriptor for AxisMarks<A>);
    swift_getOpaqueTypeConformance2();
    sub_100643380();
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = swift_getOpaqueTypeConformance2();
    v6[5] = sub_10023FBF4(&qword_100CBACE8, &qword_100CBACE0, &qword_100A505D8, &protocol conformance descriptor for GeometryReader<A>);
    v6[0] = swift_getOpaqueTypeConformance2();
    v6[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v6);
    atomic_store(result, &qword_100CCDBA8);
  }

  return result;
}

uint64_t sub_1006438DC()
{
  sub_100004758();
  v0 = type metadata accessor for ChartProxy();
  sub_100003810(v0);
  v1 = sub_1000138D0();

  return sub_10063E030(v1, v2, v3, v4);
}

uint64_t sub_1006439B0()
{
  v0 = sub_100004758();
  sub_100003810(v0);
  sub_1000138D0();
  return sub_1006422F4(v1);
}

unint64_t sub_100643A30()
{
  result = qword_100CCDBC8;
  if (!qword_100CCDBC8)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = sub_10022E824(&qword_100CCDBC0, &qword_100A6E888);
    v5[0] = sub_100643AC4();
    v5[1] = sub_100643C50();
    v4 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v4);
    atomic_store(result, &qword_100CCDBC8);
  }

  return result;
}

unint64_t sub_100643AC4()
{
  result = qword_100CCDBD0;
  if (!qword_100CCDBD0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCDBD8, &unk_100A6E890);
    v4[0] = sub_100643B48();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCDBD0);
  }

  return result;
}

unint64_t sub_100643B48()
{
  result = qword_100CCDBE0;
  if (!qword_100CCDBE0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCDBE8, &unk_100A88160);
    v4[0] = sub_100643BCC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCDBE0);
  }

  return result;
}

unint64_t sub_100643BCC()
{
  result = qword_100CCDBF0;
  if (!qword_100CCDBF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCDBF8, &unk_100A6E8A0);
    v4[0] = sub_100453890();
    v4[1] = v4[0];
    result = swift_getWitnessTable(&protocol conformance descriptor for <> BuilderConditional<A, B>, v3, v4);
    atomic_store(result, &qword_100CCDBF0);
  }

  return result;
}

unint64_t sub_100643C50()
{
  result = qword_100CCDC00;
  if (!qword_100CCDC00)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCDC08, &qword_100A6E8B0);
    v4[0] = sub_10023FBF4(&qword_100CCDC10, &qword_100CCDC18, &qword_100A88170, &protocol conformance descriptor for AxisValueLabel<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCDC00);
  }

  return result;
}

unint64_t sub_100643D2C()
{
  result = qword_100CCDC28;
  if (!qword_100CCDC28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCDC20, &qword_100A6E8B8);
    v4[0] = sub_100643DB8();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCDC28);
  }

  return result;
}

unint64_t sub_100643DB8()
{
  result = qword_100CCDC30;
  if (!qword_100CCDC30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCDC38, &unk_100A6E8C0);
    v4[0] = sub_100643E44();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCDC30);
  }

  return result;
}

unint64_t sub_100643E44()
{
  result = qword_100CCDC40;
  if (!qword_100CCDC40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CACF40, &unk_100A3C2F0);
    v4[0] = sub_10033CBA4();
    v4[1] = &protocol witness table for _FixedSizeLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCDC40);
  }

  return result;
}

uint64_t sub_100643F00(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = sub_100004758();
  sub_100003810(v2);
  sub_100008550();
  v3 = sub_1000138D0();

  return a2(v3);
}

uint64_t sub_100643F78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100643FD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10064402C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100644088(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10[0] = a4();
    v10[1] = sub_1006446D8(&qword_100CBACB0, type metadata accessor for LollipopMark, byte_100A4A27C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> BuilderConditional<A, B>, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100644138()
{
  result = qword_100CCDCC0;
  if (!qword_100CCDCC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCDCB8, &unk_100A70770);
    v4[0] = sub_10023FBF4(&qword_100CCDCC8, &qword_100CCDCD0, &unk_100A6E9A0, &protocol conformance descriptor for Plot<A>);
    v4[1] = sub_1006441F0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> BuilderConditional<A, B>, v3, v4);
    atomic_store(result, &qword_100CCDCC0);
  }

  return result;
}

unint64_t sub_1006441F0()
{
  result = qword_100CCDCD8;
  if (!qword_100CCDCD8)
  {
    v5[6] = v0;
    v5[7] = v1;
    v3 = sub_10022E824(&qword_100CCDCE0, &unk_100A70780);
    sub_10022E824(&qword_100CCDCE8, &unk_100A6E9B0);
    sub_10023FBF4(&qword_100CCDCF0, &qword_100CCDCE8, &unk_100A6E9B0, &protocol conformance descriptor for Plot<A>);
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_1006442F4();
    v4 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v4);
    atomic_store(result, &qword_100CCDCD8);
  }

  return result;
}

unint64_t sub_1006442F4()
{
  result = qword_100CCDCF8;
  if (!qword_100CCDCF8)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CCDD00, &unk_100A70790);
    v4[1] = type metadata accessor for ChartPointMarkSeries();
    v4[2] = sub_1006446D8(&qword_100CCDD08, &type metadata accessor for ChartPointMarkSeries, &protocol conformance descriptor for ChartPointMarkSeries);
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCDCF8);
  }

  return result;
}

unint64_t sub_1006443D8()
{
  result = qword_100CCDD18;
  if (!qword_100CCDD18)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CCDD10, &unk_100A6E9C0);
    v4[1] = sub_10022E824(&qword_100CCDD20, &unk_100A707A0);
    v4[2] = sub_100644498();
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCDD18);
  }

  return result;
}

unint64_t sub_100644498()
{
  result = qword_100CCDD28;
  if (!qword_100CCDD28)
  {
    v5[9] = v0;
    v5[10] = v1;
    v3 = sub_10022E824(&qword_100CCDD20, &unk_100A707A0);
    v4 = sub_10022E824(&qword_100CCDD30, &unk_100A6E9D0);
    sub_10022E824(&qword_100CCDD38, &unk_100A707B0);
    type metadata accessor for PointMark();
    swift_getOpaqueTypeConformance2();
    v5[1] = v4;
    v5[2] = &type metadata for Text;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[4] = &protocol witness table for Text;
    v5[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v5);
    atomic_store(result, &qword_100CCDD28);
  }

  return result;
}

unint64_t sub_1006445F4()
{
  result = qword_100CCDD60;
  if (!qword_100CCDD60)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CCDD58, &qword_100A70900);
    v4[1] = type metadata accessor for ChartAreaSeries();
    v4[2] = sub_1006446D8(&qword_100CCDD68, &type metadata accessor for ChartAreaSeries, &protocol conformance descriptor for ChartAreaSeries);
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCDD60);
  }

  return result;
}

uint64_t sub_1006446D8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100644720()
{
  result = qword_100CCDD88;
  if (!qword_100CCDD88)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCDD80, &unk_100A708F0);
    v4[0] = sub_1006447A4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCDD88);
  }

  return result;
}

unint64_t sub_1006447A4()
{
  result = qword_100CCDD90;
  if (!qword_100CCDD90)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = sub_10022E824(&qword_100CCDD98, &unk_100A6EA10);
    v5[0] = sub_1006445F4();
    v5[1] = sub_1006446D8(&qword_100CCDD70, &type metadata accessor for ChartLineMark, &protocol conformance descriptor for ChartLineMark);
    v4 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v4);
    atomic_store(result, &qword_100CCDD90);
  }

  return result;
}

Swift::Int sub_10064487C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  LocationSessionTrigger.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_1006448D4()
{
  result = qword_100CCDDA0;
  if (!qword_100CCDDA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WeatherFeatureFlags, &type metadata for WeatherFeatureFlags, v0, v1);
    atomic_store(result, &qword_100CCDDA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100644A74(uint64_t a1)
{
  type metadata accessor for AppConfiguration();
  sub_10000548C();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v1);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v4 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1);

  asyncMain(block:)();
}

uint64_t sub_100644BD4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 16);
    v8 = *(result + 24);

    v9 = type metadata accessor for AppConfiguration();
    (*(*(v9 - 8) + 16))(v5, a2, v9);
    swift_storeEnumTagMultiPayload();
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_10004F034(v5, v10, v7, v8);

    sub_1000E17D8(v10);
    return sub_1000547B8(v5);
  }

  return result;
}

uint64_t sub_100644D1C()
{
  v1 = *(type metadata accessor for AppConfiguration() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100644BD4(v2, v3);
}

_BYTE *storeEnumTagSinglePayload for TimeAction(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100644E30()
{
  result = qword_100CCDE68;
  if (!qword_100CCDE68)
  {
    result = swift_getWitnessTable(byte_100A6EC04, &type metadata for TimeAction, v0, v1);
    atomic_store(result, &qword_100CCDE68);
  }

  return result;
}

uint64_t sub_100644E84(uint64_t a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for SelectedSearchResult(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  v11 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for Location();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = type metadata accessor for SearchLocation(0);
  sub_100645544(a1 + *(v19 + 32), v13);
  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_1000180EC(v13, &qword_100CA65D8, &unk_100A3D9D0);
    v21 = *(v1 + 16);
    v20 = *(v1 + 24);
    sub_1006455B4(a1, v6, type metadata accessor for SearchLocation);
    type metadata accessor for SearchViewAction(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_10004F034(v6, &v30, v21, v20);
    sub_1000180EC(&v30, &unk_100CD81B0, &unk_100A3B000);
    sub_10001F3B4();
    return sub_10004F9E8(v6, v22);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    *v10 = v24;
    v10[1] = v25;
    swift_storeEnumTagMultiPayload();
    v27 = *(v1 + 16);
    v26 = *(v1 + 24);
    v28 = *(sub_10022C350(&qword_100CC7D10, &unk_100A645F0) + 48);
    (*(v15 + 16))(v6, v18, v14);
    sub_1006455B4(v10, v6 + v28, type metadata accessor for SelectedSearchResult);
    type metadata accessor for SearchViewAction(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v32 = 0;
    v30 = 0u;
    v31 = 0u;

    sub_10004F034(v6, &v30, v27, v26);
    sub_1000180EC(&v30, &unk_100CD81B0, &unk_100A3B000);
    sub_10001F3B4();
    sub_10004F9E8(v6, v29);
    sub_10004F9E8(v10, type metadata accessor for SelectedSearchResult);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_100645238(uint64_t a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  type metadata accessor for LocationOfInterest();
  sub_1000037E8();
  (*(v9 + 16))(v6, a1);
  type metadata accessor for SearchViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_10004F034(v6, v12, v8, v7);
  sub_1000180EC(v12, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F3B4();
  return sub_10004F9E8(v6, v10);
}

uint64_t sub_100645360()
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  type metadata accessor for SearchViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v4, v9, v6, v5);
  sub_1000180EC(v9, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F3B4();
  return sub_10004F9E8(v4, v7);
}

uint64_t sub_100645450()
{

  sub_100006F14((v0 + 32));
  sub_100006F14((v0 + 72));
  return v0;
}

uint64_t sub_100645480()
{
  sub_100645450();

  return swift_deallocClassInstance();
}

uint64_t sub_100645544(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006455B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_10064565C(uint64_t a1)
{
  sub_10013D8B4(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
  if (v1 <= 0x3F)
  {
    sub_10013D8B4(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast);
    if (v2 <= 0x3F)
    {
      sub_100645788();
      if (v3 <= 0x3F)
      {
        type metadata accessor for DetailChartViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_1001B2A10(319);
          if (v5 <= 0x3F)
          {
            sub_1004DCED0();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100645788()
{
  if (!qword_100CA3C60)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA3C60);
    }
  }
}

uint64_t sub_1006457F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_1000302D8(v2, &v16 - v11, &qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    return (*(v13 + 32))(a1, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_1006459D4()
{
  v26 = sub_10022C350(&qword_100CCDFC8, &qword_100A6ED48);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v1);
  v3 = &v24 - v2;
  sub_10022C350(&qword_100CCDFD0, &unk_100A6ED50);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0 + *(type metadata accessor for DetailChart(0) + 24);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    if ((v14 & 0x100) != 0)
    {
LABEL_3:
      *v6 = static HorizontalAlignment.leading.getter();
      *(v6 + 1) = 0;
      v6[16] = 1;
      v15 = &v6[*(sub_10022C350(&qword_100CCDFE0, &qword_100A6ED68) + 44)];
      *v15 = static Alignment.topLeading.getter();
      v15[1] = v16;
      sub_10022C350(&qword_100CCDFE8, &qword_100A6ED70);
      sub_100645D8C(v0);
      sub_1002030C8(v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_10022C350(&qword_100CBB278, &unk_100A58990);
      sub_100008B68(&qword_100CCDFD8, &qword_100CCDFD0, &unk_100A6ED50);
      v17 = sub_10045AF30();
      sub_10004E818(v17);
      return sub_10020312C(v6);
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v24 = v7;
    v19 = static Log.runtimeIssuesLog.getter();
    v25 = v0;
    v20 = v19;
    os_log(_:dso:log:_:_:)();

    v0 = v25;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v14, 0);
    (*(v9 + 8))(v12, v24);
    if (BYTE1(v28) == 1)
    {
      goto LABEL_3;
    }
  }

  v21 = static Color.clear.getter();
  type metadata accessor for DetailChartViewModel(0);
  type metadata accessor for ChartViewModel(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v27[6] = v28;
  *&v27[22] = v29;
  *&v27[38] = v30;
  v22 = *&v27[16];
  *(v3 + 10) = *v27;
  *v3 = v21;
  *(v3 + 4) = 256;
  *(v3 + 26) = v22;
  *(v3 + 42) = *&v27[32];
  *(v3 + 7) = *&v27[46];
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CBB278, &unk_100A58990);
  sub_100008B68(&qword_100CCDFD8, &qword_100CCDFD0, &unk_100A6ED50);
  v23 = sub_10045AF30();
  return sub_10004E818(v23);
}

uint64_t sub_100645D8C(uint64_t a1)
{
  v2 = type metadata accessor for DetailChart(0);
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_10022C350(&qword_100CCDFF0, &qword_100A6ED78);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = v3[9];
  v10 = a1 + *(type metadata accessor for DetailChartViewModel(0) + 20) + v9;
  sub_10064AE50(v10, v8);
  v11 = v3[12];
  v12 = *(a1 + v3[13]);
  v13 = type metadata accessor for ChartView(0);
  sub_100035B30(a1 + v11, &v8[v13[7]]);
  *&v8[v13[10]] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  v14 = &v8[v13[5]];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *&v8[v13[6]] = v12;
  v15 = &v8[v13[8]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v13[9];
  *&v8[v16] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  swift_storeEnumTagMultiPayload();
  Text.Measurements.init()();
  v17 = &v8[*(sub_10022C350(&qword_100CCDFF8, &unk_100A6EE20) + 36)];
  *v17 = sub_10064C8EC;
  v17[1] = 0;
  type metadata accessor for ChartViewModel(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v8[*(v6 + 36)];
  v19 = v23[1];
  *v18 = v23[0];
  *(v18 + 1) = v19;
  *(v18 + 2) = v23[2];
  static Alignment.topLeading.getter();
  sub_10064AE50(a1, v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_10064B24C(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_10022C350(&qword_100CCE000, &qword_100A6EE38);
  sub_10064AED4();
  sub_100006F64(&qword_100CCE020, &qword_100CCE000, &qword_100A6EE38, &protocol conformance descriptor for ZStack<A>);
  View.chartOverlay<A>(alignment:content:)();

  return sub_100018144(v8, &qword_100CCDFF0, &qword_100A6ED78);
}

uint64_t sub_100646148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.topLeading.getter();
  a3[1] = v6;
  v7 = sub_10022C350(&qword_100CCE028, &qword_100A6EE40);
  return sub_1006461A8(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_1006461A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v372 = a2;
  v350 = a3;
  v346 = type metadata accessor for LocalCoordinateSpace();
  v345 = *(v346 - 8);
  __chkstk_darwin(v346);
  v344 = &v280 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetailChart(0);
  v6 = v5 - 8;
  v334 = *(v5 - 8);
  __chkstk_darwin(v5);
  v335 = v7;
  v360 = &v280 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for ChartDragGestureRecognizerRepresentable();
  v338 = *(v340 - 8);
  __chkstk_darwin(v340);
  v337 = &v280 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CCE030, &unk_100A6EE48);
  v341 = *(v9 - 8);
  v342 = v9;
  __chkstk_darwin(v9);
  v361 = &v280 - v10;
  v349 = sub_10022C350(&qword_100CB5EE0, &unk_100A49750);
  v348 = *(v349 - 8);
  __chkstk_darwin(v349);
  v347 = &v280 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v343 = &v280 - v13;
  v314 = type metadata accessor for DetailChart.LollipopOverlayView(0);
  __chkstk_darwin(v314);
  v313 = &v280 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = sub_10022C350(&qword_100CCE038, &qword_100A6EE58);
  __chkstk_darwin(v353);
  v312 = &v280 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v311 = &v280 - v17;
  v333 = type metadata accessor for DetailChartLollipopPoint();
  v18 = *(v333 - 8);
  __chkstk_darwin(v333);
  v332 = &v280 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v330 = &v280 - v21;
  v22 = sub_10022C350(&qword_100CB5ED8, &qword_100A6EE60);
  __chkstk_darwin(v22 - 8);
  v339 = &v280 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v359 = &v280 - v25;
  v26 = sub_10022C350(&qword_100CCE040, &qword_100A6EE68);
  __chkstk_darwin(v26 - 8);
  v328 = &v280 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v358 = &v280 - v29;
  v351 = type metadata accessor for ChartProxy();
  v369 = *(v351 - 8);
  __chkstk_darwin(v351);
  v329 = &v280 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = v30;
  __chkstk_darwin(v31);
  v366 = &v280 - v32;
  v327 = sub_10022C350(&qword_100CCE048, &unk_100A6EE70);
  __chkstk_darwin(v327);
  v319 = &v280 - v33;
  v34 = sub_10022C350(&qword_100CB5ED0, &unk_100A49740);
  __chkstk_darwin(v34 - 8);
  v336 = &v280 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v357 = &v280 - v37;
  v310 = sub_10022C350(&qword_100CCE050, &qword_100A6EE80);
  __chkstk_darwin(v310);
  v298 = &v280 - v38;
  v39 = type metadata accessor for IdentityTransition();
  v285 = *(v39 - 8);
  v286 = v39;
  __chkstk_darwin(v39);
  v283 = &v280 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v284 = &v280 - v42;
  v295 = sub_10022C350(&qword_100CCE058, &qword_100A6EE88);
  __chkstk_darwin(v295);
  v287 = &v280 - v43;
  v44 = type metadata accessor for ChartKind();
  v292 = *(v44 - 8);
  v293 = v44;
  __chkstk_darwin(v44);
  v294 = &v280 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10022C350(&qword_100CCE060, &qword_100A6EE90);
  __chkstk_darwin(v46 - 8);
  v297 = &v280 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v301 = &v280 - v49;
  v291 = sub_10022C350(&qword_100CCE068, &qword_100A6EE98);
  __chkstk_darwin(v291);
  v296 = &v280 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v300 = &v280 - v52;
  v53 = type metadata accessor for ChartPastDataTreatment();
  v289 = *(v53 - 8);
  v290 = v53;
  __chkstk_darwin(v53);
  v288 = &v280 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for Date();
  v307 = *(v324 - 8);
  __chkstk_darwin(v324);
  v306 = &v280 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_10022C350(&qword_100CCE070, &unk_100A6EEA0);
  __chkstk_darwin(v326);
  v308 = &v280 - v56;
  v57 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v57 - 8);
  v323 = &v280 - v58;
  v352 = type metadata accessor for DetailChartDataElement();
  v325 = *(v352 - 8);
  __chkstk_darwin(v352);
  v318 = &v280 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10022C350(&qword_100CB5EC8, &qword_100A6EEB0);
  __chkstk_darwin(v60 - 8);
  v356 = &v280 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v368 = &v280 - v63;
  v316 = type metadata accessor for UnevenRoundedRectangle();
  __chkstk_darwin(v316);
  v282 = &v280 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v305 = &v280 - v66;
  v317 = sub_10022C350(&qword_100CCE078, &qword_100A6EEB8);
  __chkstk_darwin(v317);
  v281 = &v280 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v304 = &v280 - v69;
  v70 = type metadata accessor for ChartOcclusionHashView.Style();
  __chkstk_darwin(v70 - 8);
  v315 = &v280 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = sub_10022C350(&qword_100CCE080, &unk_100A6EEC0);
  __chkstk_darwin(v354);
  v280 = &v280 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v303 = &v280 - v74;
  __chkstk_darwin(v75);
  v302 = &v280 - v76;
  v77 = sub_10022C350(&qword_100CB5EC0, &unk_100A49730);
  __chkstk_darwin(v77 - 8);
  v364 = &v280 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v299 = &v280 - v80;
  __chkstk_darwin(v81);
  v370 = &v280 - v82;
  v322 = sub_10022C350(&qword_100CCE088, &unk_100A6EED0);
  __chkstk_darwin(v322);
  v84 = &v280 - v83;
  v85 = type metadata accessor for ChartDarkeningScrim();
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v88 = &v280 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10022C350(&qword_100CB5EB0, &qword_100A49720);
  __chkstk_darwin(v89 - 8);
  v355 = &v280 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v367 = &v280 - v92;
  v93 = *(v6 + 36);
  v371 = a1;
  v94 = a1 + v93;
  v95 = *(type metadata accessor for DetailChartViewModel(0) + 20);
  v309 = v94;
  v96 = v94 + v95;
  v362 = type metadata accessor for ChartViewModel(0);
  v97 = v362[16];
  static ChartDarkeningScrim.dimmingEffect.getter();
  v98 = sub_10064B03C(&qword_100CCE090, &type metadata accessor for ChartDarkeningScrim, &protocol conformance descriptor for ChartDarkeningScrim);
  v363 = v96;
  v320 = v98;
  v321 = v97;
  LOBYTE(v96) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v99 = *(v86 + 8);
  v99(v88, v85);
  v331 = v18;
  if (v96)
  {
    static Color.black.getter();
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B6420();
    v100 = Color.opacity(_:)();

    v101 = *(sub_10022C350(&qword_100CCE0D0, &qword_100A6EF38) + 36);
    v102 = enum case for BlendMode.destinationOut(_:);
    v103 = type metadata accessor for BlendMode();
    (*(*(v103 - 8) + 104))(&v84[v101], v102, v103);
    *v84 = v100;
    *(v84 + 4) = 256;
    v104 = v322;
    v84[*(v322 + 36)] = 0;
    v105 = v367;
    sub_10011C0F0(v84, v367, &qword_100CCE088, &unk_100A6EED0);
    v106 = 0;
    v107 = v372;
  }

  else
  {
    v106 = 1;
    v105 = v367;
    v107 = v372;
    v104 = v322;
  }

  v108 = 1;
  sub_10001B350(v105, v106, 1, v104);
  static ChartDarkeningScrim.hashPatternEffect.getter();
  v109 = v363;
  v110 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v99(v88, v85);
  if (v110)
  {
    v111 = v362;
    v112 = COERCE_DOUBLE(ChartProxy.position<A>(forX:)());
    if (v113)
    {
      v112 = 0.0;
    }

    sub_100648B54(v112);
    ChartProxy.plotSize.getter();
    ChartProxy.plotSize.getter();
    static ChartOcclusionHashView.Style.default.getter();
    v114 = v303;
    ChartOcclusionHashView.init(width:height:style:)();
    v115 = static Alignment.topLeading.getter();
    v322 = v116;
    *v375 = *(v109 + v111[10]);
    ChartProxy.position<A>(forY:)();
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B5F4C();
    RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v125 = *(v316 + 20);
    v126 = enum case for RoundedCornerStyle.continuous(_:);
    v127 = type metadata accessor for RoundedCornerStyle();
    v128 = v305;
    (*(*(v127 - 8) + 104))(&v305[v125], v126, v127);
    *v128 = v118;
    v128[1] = v120;
    v128[2] = v122;
    v128[3] = v124;
    v129 = &v114[*(sub_10022C350(&qword_100CCE178, &qword_100A6EFB0) + 36)];
    v130 = *(sub_10022C350(&qword_100CCE180, &qword_100A6EFB8) + 36);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v131 = v304;
    sub_10064B24C(v128, v304);
    v132 = (v131 + *(v317 + 36));
    v133 = *(&v376[5] + 14);
    *v132 = *(&v376[4] + 14);
    v132[1] = v133;
    v132[2] = *(&v376[6] + 14);
    sub_10011C0F0(v131, v129 + v130, &qword_100CCE078, &qword_100A6EEB8);
    v134 = v322;
    *v129 = v115;
    v129[1] = v134;
    v114[*(v354 + 36)] = 0;
    v135 = v114;
    v136 = v302;
    sub_10011C0F0(v135, v302, &qword_100CCE080, &unk_100A6EEC0);
    sub_10011C0F0(v136, v370, &qword_100CCE080, &unk_100A6EEC0);
    v108 = 0;
    v107 = v372;
    v109 = v363;
  }

  sub_10001B350(v370, v108, 1, v354);
  v137 = v362;
  v138 = v323;
  sub_1000302D8(v109 + v362[21], v323, &qword_100CAB930, &qword_100A3A7C0);
  v139 = v352;
  if (sub_100024D10(v138, 1, v352) == 1)
  {
    sub_100018144(v138, &qword_100CAB930, &qword_100A3A7C0);
    v140 = 1;
    v141 = v351;
    v142 = v369;
    v143 = v368;
  }

  else
  {
    v144 = v318;
    (*(v325 + 32))(v318, v138, v139);
    v145 = v306;
    DetailChartDataElement.date.getter();
    v146 = v324;
    v147 = ChartProxy.position<A>(forX:)();
    v149 = v148;
    (*(v307 + 8))(v145, v146);
    v141 = v351;
    v142 = v369;
    if (v149 & 1) != 0 || (DetailChartDataElement.value.getter(), *v375 = v150, v151 = ChartProxy.position<A>(forY:)(), (v152))
    {
      (*(v325 + 8))(v144, v352);
      v153 = v308;
      sub_10001B350(v308, 1, 1, v310);
    }

    else
    {
      v324 = v151;
      v154 = sub_100648B54(*&v147);
      v156 = v288;
      v155 = v289;
      v157 = v290;
      (*(v289 + 104))(v288, enum case for ChartPastDataTreatment.hashed(_:), v290);
      v158 = static ChartPastDataTreatment.== infix(_:_:)();
      (*(v155 + 8))(v156, v157);
      if (v158)
      {
        ChartProxy.plotSize.getter();
        ChartProxy.plotSize.getter();
        static ChartOcclusionHashView.Style.default.getter();
        v159 = v280;
        ChartOcclusionHashView.init(width:height:style:)();
        v160 = static Alignment.topLeading.getter();
        v322 = v161;
        v323 = v160;
        *v375 = *(v109 + v137[10]);
        ChartProxy.position<A>(forY:)();
        v162 = v292;
        if (qword_100CA2198 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        sub_1004B5F4C();
        RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
        v164 = v163;
        v166 = v165;
        v168 = v167;
        v170 = v169;
        v171 = *(v316 + 20);
        v172 = enum case for RoundedCornerStyle.continuous(_:);
        v173 = type metadata accessor for RoundedCornerStyle();
        v174 = v282;
        (*(*(v173 - 8) + 104))(&v282[v171], v172, v173);
        *v174 = v164;
        v174[1] = v166;
        v174[2] = v168;
        v174[3] = v170;
        v175 = (v159 + *(sub_10022C350(&qword_100CCE178, &qword_100A6EFB0) + 36));
        v176 = *(sub_10022C350(&qword_100CCE180, &qword_100A6EFB8) + 36);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v177 = v281;
        sub_10064B24C(v174, v281);
        v178 = (v177 + *(v317 + 36));
        v179 = *(&v376[8] + 14);
        *v178 = *(&v376[7] + 14);
        v178[1] = v179;
        v178[2] = *(&v376[9] + 14);
        sub_10011C0F0(v177, v175 + v176, &qword_100CCE078, &qword_100A6EEB8);
        v180 = v322;
        *v175 = v323;
        v175[1] = v180;
        v181 = v354;
        *(v159 + *(v354 + 36)) = 0;
        v182 = v299;
        sub_10011C0F0(v159, v299, &qword_100CCE080, &unk_100A6EEC0);
        v183 = 0;
      }

      else
      {
        v183 = 1;
        v162 = v292;
        v182 = v299;
        v181 = v354;
      }

      sub_10001B350(v182, v183, 1, v181);
      static Color.black.getter();
      if (qword_100CA2198 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004B6420();
      v184 = Color.opacity(_:)();

      v185 = *(sub_10022C350(&qword_100CCE0D0, &qword_100A6EF38) + 36);
      v186 = enum case for BlendMode.destinationOut(_:);
      v187 = type metadata accessor for BlendMode();
      v188 = v300;
      (*(*(v187 - 8) + 104))(v300 + v185, v186, v187);
      *v188 = v184;
      *(v188 + 8) = 256;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v189 = (v188 + *(sub_10022C350(&qword_100CCE0D8, &qword_100A6EF40) + 36));
      v190 = *(&v376[11] + 14);
      *v189 = *(&v376[10] + 14);
      v189[1] = v190;
      v189[2] = *(&v376[12] + 14);
      *(v188 + *(v291 + 36)) = 0;
      v191 = [objc_opt_self() secondarySystemFillColor];
      v354 = Color.init(_:)();
      v192 = v362;
      v193 = v363;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *(v376 + 6) = *(&v376[13] + 14);
      *(&v376[1] + 6) = *(&v376[14] + 14);
      *(&v376[2] + 6) = *(&v376[15] + 14);
      v194 = v193 + v192[5];
      v195 = v293;
      v196 = v294;
      (*(v162 + 16))(v294, v194, v293);
      if ((*(v162 + 88))(v196, v195) == enum case for ChartKind.line(_:))
      {
        v197 = v324;
        v198 = *&v324;
        (*(v162 + 96))(v196, v195);
        v199 = sub_10022C350(&qword_100CAC400, &unk_100A3B370);
        sub_100018144(v196 + *(v199 + 48), &qword_100CAC3D8, &qword_100A6EF60);
        sub_100018144(v196, &qword_100CAC3D8, &qword_100A6EF60);
        sub_100648D38(v374);
        sub_1004B6290();
        sub_1004B6290();
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v200 = v154 - sub_1004B6290() * 0.5;
        v201 = v198 - sub_1004B6290() * 0.5;
        v202 = v284;
        IdentityTransition.init()();
        v204 = v285;
        v203 = v286;
        (*(v285 + 16))(v283, v202, v286);
        sub_10064B03C(&qword_100CCE0F0, &type metadata accessor for IdentityTransition, &protocol conformance descriptor for IdentityTransition);
        v205 = AnyTransition.init<A>(_:)();
        (*(v204 + 8))(v202, v203);
        memcpy(v373, v374, 0x70uLL);
        *&v373[14] = v200;
        *&v373[15] = v201;
        v373[16] = 0;
        v373[17] = v197;
        v373[18] = v205;
        LOBYTE(v373[19]) = 0;
        sub_10022C350(&qword_100CCE0F8, &qword_100A6EF68);
        sub_10064B474();
        v206 = v287;
        View.accessibilityHidden(_:)();
        memcpy(v375, v373, sizeof(v375));
        sub_100018144(v375, &qword_100CCE0F8, &qword_100A6EF68);
        v207 = v206;
        v208 = v301;
        sub_10011C0F0(v207, v301, &qword_100CCE058, &qword_100A6EE88);
        v209 = v208;
        v210 = 0;
      }

      else
      {
        (*(v162 + 8))(v196, v195);
        v208 = v301;
        v209 = v301;
        v210 = 1;
      }

      sub_10001B350(v209, v210, 1, v295);
      v211 = v364;
      sub_1000302D8(v182, v364, &qword_100CB5EC0, &unk_100A49730);
      v212 = v300;
      v213 = v296;
      sub_1000302D8(v300, v296, &qword_100CCE068, &qword_100A6EE98);
      v214 = v208;
      v215 = v297;
      sub_1000302D8(v214, v297, &qword_100CCE060, &qword_100A6EE90);
      v216 = v211;
      v217 = v298;
      sub_1000302D8(v216, v298, &qword_100CB5EC0, &unk_100A49730);
      v218 = sub_10022C350(&qword_100CCE0E0, &qword_100A6EF48);
      sub_1000302D8(v213, v217 + v218[12], &qword_100CCE068, &qword_100A6EE98);
      v219 = v218[16];
      v220 = v354;
      v373[0] = v354;
      LOWORD(v373[1]) = 256;
      *(&v373[1] + 2) = v376[0];
      *(&v373[3] + 2) = v376[1];
      *(&v373[5] + 2) = v376[2];
      v373[7] = *(&v376[2] + 14);
      *&v373[8] = v154;
      v373[9] = 0;
      LOBYTE(v373[10]) = 0;
      memcpy((v217 + v219), v373, 0x51uLL);
      sub_1000302D8(v215, v217 + v218[20], &qword_100CCE060, &qword_100A6EE90);
      sub_1000302D8(v373, v375, &qword_100CCE0E8, &unk_100A6EF50);
      sub_100018144(v301, &qword_100CCE060, &qword_100A6EE90);
      sub_100018144(v212, &qword_100CCE068, &qword_100A6EE98);
      sub_100018144(v299, &qword_100CB5EC0, &unk_100A49730);
      (*(v325 + 8))(v318, v352);
      sub_100018144(v215, &qword_100CCE060, &qword_100A6EE90);
      *v375 = v220;
      *&v375[8] = 256;
      *&v375[10] = v376[0];
      *&v375[26] = v376[1];
      *&v375[42] = v376[2];
      *&v375[56] = *(&v376[2] + 14);
      *&v375[64] = v154;
      *&v375[72] = 0;
      v375[80] = 0;
      sub_100018144(v375, &qword_100CCE0E8, &unk_100A6EF50);
      sub_100018144(v213, &qword_100CCE068, &qword_100A6EE98);
      sub_100018144(v364, &qword_100CB5EC0, &unk_100A49730);
      v153 = v308;
      sub_10011C0F0(v217, v308, &qword_100CCE050, &qword_100A6EE80);
      sub_10001B350(v153, 0, 1, v310);
      v107 = v372;
      v141 = v351;
      v142 = v369;
      v109 = v363;
      v137 = v362;
    }

    v143 = v368;
    sub_10011C0F0(v153, v368, &qword_100CCE070, &unk_100A6EEA0);
    v140 = 0;
  }

  v221 = 1;
  sub_10001B350(v143, v140, 1, v326);
  v222 = v137[9];
  if (*(v109 + v222))
  {
    *v375 = *(v109 + v222);
    swift_getKeyPath();
    v223 = v366;
    (*(v142 + 16))(v366, v107, v141);
    v224 = (*(v142 + 80) + 16) & ~*(v142 + 80);
    v225 = swift_allocObject();
    (*(v142 + 32))(v225 + v224, v223, v141);

    sub_10022C350(&qword_100CBAE30, &qword_100A50750);
    sub_10022C350(&qword_100CCE0B0, &qword_100A6EF28);
    sub_100006F64(&qword_100CBAE40, &qword_100CBAE30, &qword_100A50750, &protocol conformance descriptor for [A]);
    sub_10064B368();
    v226 = v319;
    v107 = v372;
    ForEach<>.init(_:id:content:)();
    *(v226 + *(sub_10022C350(&qword_100CCE0C8, &qword_100A6EF30) + 36)) = 0;
    v227 = v327;
    v228 = (v226 + *(v327 + 36));
    *v228 = sub_10064C8EC;
    v228[1] = 0;
    v229 = v357;
    sub_10011C0F0(v226, v357, &qword_100CCE048, &unk_100A6EE70);
    v221 = 0;
    v230 = v359;
    v231 = v353;
  }

  else
  {
    v230 = v359;
    v229 = v357;
    v231 = v353;
    v227 = v327;
  }

  sub_10001B350(v229, v221, 1, v227);
  v232 = v358;
  sub_100649004(v107, v358);
  v233 = v328;
  sub_1000302D8(v232, v328, &qword_100CCE040, &qword_100A6EE68);
  v234 = v107;
  v235 = v333;
  if (sub_100024D10(v233, 1, v333) == 1)
  {
    sub_100018144(v233, &qword_100CCE040, &qword_100A6EE68);
    v236 = 1;
  }

  else
  {
    v237 = v331;
    v238 = *(v331 + 32);
    v239 = v233;
    v240 = v330;
    v238(v330, v239, v235);
    (*(v237 + 16))(v332, v240, v235);
    (*(v142 + 16))(v329, v234, v141);
    if (*(v363 + v362[8]))
    {
      if (qword_100CA2198 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v241 = *&xmmword_100D90090 + *(&xmmword_100D90090 + 1) + *(&xmmword_100D90090 + 1);
    }

    else
    {
      v241 = 0.0;
    }

    (*(v331 + 8))(v330, v235);
    v242 = v314;
    v243 = v235;
    v244 = v313;
    sub_10064AE50(v309, &v313[*(v314 + 28)]);
    v238(v244, v332, v243);
    (*(v142 + 32))(v244 + v242[5], v329, v141);
    *(v244 + v242[6]) = v241;
    *(v244 + v242[8]) = 0x4034000000000000;
    *(v244 + v242[9]) = 0x4000000000000000;
    *(v244 + v242[10]) = 0x3FF0000000000000;
    v245 = v312;
    sub_10064B24C(v244, v312);
    v231 = v353;
    *(v245 + *(v353 + 36)) = 0;
    v246 = v245;
    v247 = v311;
    sub_10011C0F0(v246, v311, &qword_100CCE038, &qword_100A6EE58);
    sub_10011C0F0(v247, v230, &qword_100CCE038, &qword_100A6EE58);
    v236 = 0;
  }

  sub_10001B350(v230, v236, 1, v231);
  v363 = static Color.clear.getter();
  *v375 = v363;
  *&v375[8] = 256;
  v375[10] = 0;
  v362 = type metadata accessor for DetailChart;
  v248 = v360;
  sub_10064AE50(v371, v360);
  v354 = *(v142 + 16);
  v249 = v366;
  (v354)(v366, v372, v141);
  v250 = *(v334 + 80);
  v251 = *(v142 + 80);
  v252 = (v250 + 16) & ~v250;
  v352 = v252;
  v253 = (v335 + v251 + v252) & ~v251;
  v353 = v250 | v251;
  v254 = swift_allocObject();
  v351 = type metadata accessor for DetailChart;
  sub_10064B24C(v248, v254 + v252);
  v255 = *(v142 + 32);
  v369 = v142 + 32;
  v335 = v255;
  v255(v254 + v253, v249, v141);
  v256 = v337;
  ChartDragGestureRecognizerRepresentable.init(isRecognizedHandler:)();
  v334 = sub_10022C350(&qword_100CCE098, &unk_100A6EEE0);
  v257 = sub_10064B084();
  v258 = sub_10064B03C(&qword_100CCE0A8, &type metadata accessor for ChartDragGestureRecognizerRepresentable, &protocol conformance descriptor for ChartDragGestureRecognizerRepresentable);
  v259 = v340;
  View.gesture<A>(_:)();
  (*(v338 + 8))(v256, v259);

  v260 = v360;
  sub_10064AE50(v371, v360);
  v261 = v366;
  (v354)(v366, v372, v141);
  v262 = swift_allocObject();
  sub_10064B24C(v260, v262 + v352);
  v335(v262 + v253, v261, v141);
  v263 = v344;
  static CoordinateSpaceProtocol<>.local.getter();
  *v375 = v334;
  *&v375[8] = v259;
  *&v375[16] = v257;
  *&v375[24] = v258;
  swift_getOpaqueTypeConformance2();
  v264 = v342;
  v265 = v343;
  v266 = v346;
  v267 = v361;
  View.onContinuousHover<A>(coordinateSpace:perform:)();

  (*(v345 + 8))(v263, v266);
  (*(v341 + 8))(v267, v264);
  v268 = v355;
  sub_1000302D8(v367, v355, &qword_100CB5EB0, &qword_100A49720);
  *v375 = v268;
  v269 = v364;
  sub_1000302D8(v370, v364, &qword_100CB5EC0, &unk_100A49730);
  *&v375[8] = v269;
  v270 = v356;
  sub_1000302D8(v368, v356, &qword_100CB5EC8, &qword_100A6EEB0);
  *&v375[16] = v270;
  v271 = v357;
  v272 = v336;
  sub_1000302D8(v357, v336, &qword_100CB5ED0, &unk_100A49740);
  *&v375[24] = v272;
  v273 = v359;
  v274 = v339;
  sub_1000302D8(v359, v339, &qword_100CB5ED8, &qword_100A6EE60);
  *&v375[32] = v274;
  v275 = v348;
  v276 = v347;
  v277 = v349;
  (*(v348 + 16))(v347, v265, v349);
  *&v375[40] = v276;
  sub_1003E9048(v375);
  v278 = *(v275 + 8);
  v278(v265, v277);
  sub_100018144(v273, &qword_100CB5ED8, &qword_100A6EE60);
  sub_100018144(v358, &qword_100CCE040, &qword_100A6EE68);
  sub_100018144(v271, &qword_100CB5ED0, &unk_100A49740);
  sub_100018144(v368, &qword_100CB5EC8, &qword_100A6EEB0);
  sub_100018144(v370, &qword_100CB5EC0, &unk_100A49730);
  sub_100018144(v367, &qword_100CB5EB0, &qword_100A49720);
  v278(v276, v277);
  sub_100018144(v274, &qword_100CB5ED8, &qword_100A6EE60);
  sub_100018144(v272, &qword_100CB5ED0, &unk_100A49740);
  sub_100018144(v356, &qword_100CB5EC8, &qword_100A6EEB0);
  sub_100018144(v364, &qword_100CB5EC0, &unk_100A49730);
  return sub_100018144(v355, &qword_100CB5EB0, &qword_100A49720);
}

double sub_100648B54(double a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  sub_1006457F4(&v18 - v7);
  (*(v3 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v2);
  v9 = static LayoutDirection.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    type metadata accessor for DetailChart(0);
    type metadata accessor for DetailChartViewModel(0);
    type metadata accessor for ChartViewModel(0);
    type metadata accessor for Date();
    v11 = ChartProxy.position<A>(forX:)();
    if ((v12 & 1) == 0)
    {
      v13 = *&v11;
      v14 = COERCE_DOUBLE(ChartProxy.position<A>(forX:)());
      if ((v15 & 1) == 0)
      {
        v16 = v13;
        if (v13 <= v14)
        {
          v16 = v14;
        }

        return v16 - a1;
      }
    }
  }

  return a1;
}

uint64_t sub_100648D38@<X0>(_OWORD *a2@<X8>)
{
  v3 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F04();
  v5 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  *&v13 = KeyPath;
  *(&v13 + 1) = v3;
  LOBYTE(v14) = v5;
  *(&v14 + 1) = v6;
  *v15 = v7;
  *&v15[8] = v8;
  *&v15[16] = v9;
  v15[24] = 0;
  v10 = v14;
  *a2 = v13;
  a2[1] = v10;
  a2[2] = *v15;
  *(a2 + 41) = *&v15[9];
  v16[0] = KeyPath;
  v16[1] = v3;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = 0;
  sub_1000302D8(&v13, v12, &qword_100CCE188, &unk_100A6EFF0);
  return sub_100018144(v16, &qword_100CCE188, &unk_100A6EFF0);
}

uint64_t sub_100648E6C(uint64_t a1)
{
  v2 = type metadata accessor for ScaleLabel(0);
  __chkstk_darwin(v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.value.getter();
  v12[1] = v5;
  v6 = COERCE_DOUBLE(ChartProxy.position<A>(forY:)());
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v2[5];
  v10 = type metadata accessor for DetailChartDataElement();
  (*(*(v10 - 8) + 16))(&v4[v9], a1, v10);
  *v4 = 0x4010000000000000;
  *&v4[v2[6]] = v8;
  v4[v2[7]] = 1;
  v4[v2[8]] = 0;
  sub_10064B03C(&qword_100CCE0C0, type metadata accessor for ScaleLabel, byte_100A6F0D8);
  View.accessibilityHidden(_:)();
  return sub_10064C0F4(v4, type metadata accessor for ScaleLabel);
}

uint64_t sub_100649004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v5 = type metadata accessor for Calendar();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v49 = &v43 - v13;
  v14 = sub_10022C350(&qword_100CBFE98, &qword_100A58340);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = type metadata accessor for DetailChartDataPoint();
  v51 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for DetailChart(0);
  if (*(v3 + *(v23 + 32)))
  {
LABEL_9:
    v28 = 1;
    goto LABEL_10;
  }

  v44 = v9;
  v45 = v8;
  v46 = a2;
  v24 = *(v23 + 28);
  v43 = v3;
  v25 = v3 + v24;
  v26 = type metadata accessor for DetailChartViewModel(0);
  sub_1000302D8(v25 + *(v26 + 24), v16, &qword_100CBFE98, &qword_100A58340);
  v27 = type metadata accessor for LollipopViewModel(0);
  if (sub_100024D10(v16, 1, v27) != 1)
  {
    v29 = *(v27 + 20);
    v30 = v51;
    v31 = v17;
    (*(v51 + 16))(v19, &v16[v29], v17);
    sub_10064C0F4(v16, type metadata accessor for LollipopViewModel);
    (*(v30 + 32))(v22, v19, v17);
    type metadata accessor for ChartViewModel(0);
    if (ChartKind.isBarChart.getter())
    {
      DetailChartDataPoint.date.getter();
      static Calendar.current.getter();
      v32 = v49;
      Date.wc_addMinutes(_:calendar:)();
      (*(v47 + 8))(v7, v48);
      v34 = v44;
      v33 = v45;
      (*(v44 + 8))(v11, v45);
      a2 = v46;
    }

    else
    {
      v32 = v49;
      DetailChartDataPoint.date.getter();
      v33 = v45;
      a2 = v46;
      v34 = v44;
    }

    v35 = ChartProxy.position<A>(forX:)();
    if ((v36 & 1) == 0)
    {
      v39 = *&v35;
      v40 = DetailChartDataPoint.value.getter();
      if ((v41 & 1) != 0 || (v52 = v40, ChartProxy.position<A>(forY:)(), (v42 & 1) == 0))
      {
        sub_100648B54(v39);
        DetailChartLollipopPoint.init(x:y:)();
        (*(v34 + 8))(v32, v33);
        (*(v51 + 8))(v22, v31);
        v28 = 0;
        goto LABEL_10;
      }
    }

    (*(v34 + 8))(v32, v33);
    (*(v51 + 8))(v22, v31);
    goto LABEL_9;
  }

  sub_100018144(v16, &qword_100CBFE98, &qword_100A58340);
  v28 = 1;
  a2 = v46;
LABEL_10:
  v37 = type metadata accessor for DetailChartLollipopPoint();
  return sub_10001B350(a2, v28, 1, v37);
}

uint64_t sub_100649524(uint64_t a1, double a2)
{
  v3 = v2;
  v91 = type metadata accessor for DetailChartSelection(0);
  __chkstk_darwin(v91);
  v92 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v7 - 8);
  v94 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v95 = &v79 - v10;
  v100 = type metadata accessor for DetailChartDataElement();
  v97 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v12 - 8);
  v90 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v89 = &v79 - v15;
  __chkstk_darwin(v16);
  v98 = &v79 - v17;
  __chkstk_darwin(v18);
  v20 = &v79 - v19;
  v21 = type metadata accessor for Date();
  v102 = *(v21 - 8);
  __chkstk_darwin(v21);
  v93 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v101 = &v79 - v24;
  v25 = type metadata accessor for LayoutDirection();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v79 - v30;
  sub_1006457F4(&v79 - v30);
  v32 = *(v26 + 104);
  v87 = enum case for LayoutDirection.rightToLeft(_:);
  v88 = v26 + 104;
  v86 = v32;
  v32(v28);
  v33 = static LayoutDirection.== infix(_:_:)();
  v34 = *(v26 + 8);
  v34(v28, v25);
  v85 = v25;
  v34(v31, v25);
  v35 = 0.0;
  if (v33)
  {
    v36 = *(v3 + *(type metadata accessor for DetailChart(0) + 44));
    ChartProxy.plotSize.getter();
    v35 = v36 - v37;
  }

  v38 = a2 - v35;
  v96 = a1;
  ChartProxy.value<A>(atX:as:)();
  if (sub_100024D10(v20, 1, v21) == 1)
  {
    sub_100018144(v20, &unk_100CB2CF0, &unk_100A2D7F0);
    return sub_100649E7C();
  }

  v81 = v34;
  v40 = v101;
  v41 = v3;
  v42 = v102[4];
  v42(v101, v20, v21);
  v43 = type metadata accessor for DetailChart(0);
  v44 = *(v43 + 36);
  v45 = sub_10022C350(&qword_100CBB758, &unk_100A51060);
  v84 = v41;
  v83 = v44;
  v46 = v98;
  v82 = v45;
  State.wrappedValue.getter();
  if (sub_100024D10(v46, 1, v21) == 1)
  {
    sub_100018144(v46, &unk_100CB2CF0, &unk_100A2D7F0);
  }

  else
  {
    v80 = v28;
    v47 = v40;
    v48 = v93;
    v42(v93, v46, v21);
    Date.timeIntervalSince(_:)();
    v50 = fabs(v49);
    v51 = v102[1];
    v52 = v48;
    v40 = v47;
    v28 = v80;
    v51(v52, v21);
    if (v50 < 60.0)
    {
      return (v51)(v40, v21);
    }
  }

  v98 = v43;
  v53 = v84;
  v54 = v84 + *(v43 + 28);
  v55 = (v54 + *(type metadata accessor for DetailChartViewModel(0) + 20));
  v93 = type metadata accessor for ChartViewModel(0);
  __chkstk_darwin(v93);
  *(&v79 - 2) = v40;
  v56 = v94;
  sub_1008EFB74(sub_10064C0D4, (&v79 - 4), v57);
  v58 = v95;
  sub_10011C0F0(v56, v95, &qword_100CAB930, &qword_100A3A7C0);
  v59 = v100;
  if (sub_100024D10(v58, 1, v100) == 1)
  {
    (v102[1])(v40, v21);
    return sub_100018144(v58, &qword_100CAB930, &qword_100A3A7C0);
  }

  else
  {
    (*(v97 + 32))(v99, v58, v59);
    *&v60 = COERCE_DOUBLE(sub_10064AB78(v53, v96));
    v61 = 0.0;
    if (v62)
    {
      goto LABEL_16;
    }

    v63 = *&v60;
    sub_1006457F4(v31);
    v64 = v85;
    v86(v28, v87, v85);
    v65 = static LayoutDirection.== infix(_:_:)();
    v66 = v81;
    v81(v28, v64);
    v66(v31, v64);
    v67 = v38 < v63;
    if (v65)
    {
      v67 = v38 > v63;
    }

    if (!v67)
    {
LABEL_16:
      LODWORD(v95) = 1;
    }

    else
    {
      v61 = sub_100648B54(v63);
      LODWORD(v95) = 0;
    }

    v69 = *v55;
    v68 = v55[1];
    v70 = v92;
    v71 = v91;
    v72 = v102[2];
    v72(&v92[*(v91 + 20)], v55 + *(v93 + 18), v21);
    v73 = v71[6];
    v72(&v70[v73], v101, v21);

    DetailChartDataElement.date.getter();
    v74 = v84;
    v75 = sub_100648B54(v38);
    *v70 = v69;
    *(v70 + 1) = v68;
    *&v70[v71[8]] = v75;
    v76 = &v70[v71[9]];
    *v76 = v61;
    *(v76 + 8) = v95;
    v77 = &v70[v73];
    v78 = v89;
    v72(v89, v77, v21);
    sub_10001B350(v78, 0, 1, v21);
    sub_1000302D8(v78, v90, &unk_100CB2CF0, &unk_100A2D7F0);
    State.wrappedValue.setter();
    sub_100018144(v78, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_1000161C0((v74 + *(v98 + 10)), *(v74 + *(v98 + 10) + 24));
    sub_1003176D8(v70);
    sub_10064C0F4(v70, type metadata accessor for DetailChartSelection);
    (*(v97 + 8))(v99, v100);
    return (v102[1])(v101, v21);
  }
}

uint64_t sub_100649E7C()
{
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for Date();
  sub_10001B350(v6, 1, 1, v7);
  v8 = type metadata accessor for DetailChart(0);
  sub_1000302D8(v6, v3, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  State.wrappedValue.setter();
  sub_100018144(v6, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000161C0((v0 + *(v8 + 40)), *(v0 + *(v8 + 40) + 24));
  return sub_10031779C();
}

uint64_t sub_100649FBC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return sub_100649E7C();
  }

  else
  {
    return sub_100649524(a5, *&a1);
  }
}

uint64_t sub_100649FF8(double a1)
{
  type metadata accessor for DetailChart.LollipopOverlayView(0);
  type metadata accessor for DetailChartViewModel(0);
  type metadata accessor for ChartViewModel(0);
  if (ChartKind.isBarChart.getter())
  {
    v2 = COERCE_DOUBLE(DetailChartLollipopPoint.y.getter());
    if (v3)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = v2 + -1.0;
    }
  }

  else
  {
    *&result = a1;
  }

  return result;
}

uint64_t sub_10064A098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CCE308, &qword_100A6F158);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v55 = sub_10022C350(&qword_100CCE310, &qword_100A6F160);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v54 = &v48 - v9;
  v10 = sub_10022C350(&qword_100CCE318, &qword_100A6F168);
  __chkstk_darwin(v10 - 8);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v56 = &v48 - v13;
  v14 = sub_10022C350(&qword_100CCE320, &qword_100A6F170);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v58 = &v48 - v16;
  v17 = type metadata accessor for DetailChart.LollipopOverlayView(0);
  v18 = v1 + v17[7];
  v19 = v18 + *(type metadata accessor for DetailChartViewModel(0) + 20);
  *v62 = *(v19 + *(type metadata accessor for ChartViewModel(0) + 40));
  v20 = ChartProxy.position<A>(forY:)();
  if (v21 & 1) != 0 || (v53 = v7, v22 = sub_100649FF8(*&v20), (v23))
  {
    v24 = 1;
  }

  else
  {
    v25 = *&v22;
    DetailChartLollipopPoint.x.getter();
    if (v25 <= 0.0)
    {
      v35 = v58;
      sub_10001B350(v58, 1, 1, v4);
    }

    else
    {
      v49 = v4;
      v50 = a1;
      v27 = v26 + *(v1 + v17[10]) * -0.5;
      v28 = [objc_opt_self() systemBackgroundColor];
      v52 = Color.init(_:)();
      if (qword_100CA2198 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004B6444();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v64[3] = *&v64[27];
      *&v64[11] = *&v64[35];
      *&v64[19] = *&v64[43];
      v29 = v27 - sub_1004B6444();
      v51 = static Color.white.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *(v63 + 6) = *&v64[51];
      *(&v63[1] + 6) = *&v64[59];
      *(&v63[2] + 6) = *&v64[67];
      if (ChartKind.isBarChart.getter() & 1) != 0 || (v30 = DetailChartLollipopPoint.y.getter(), (v31))
      {
        v32 = v56;
        v33 = v56;
        v34 = 1;
      }

      else
      {
        v36 = *&v30;
        v37 = static Alignment.center.getter();
        v39 = v38;
        sub_10064A814(v62);
        memcpy(v60, v62, sizeof(v60));
        memcpy(v61, v62, sizeof(v61));
        sub_1000302D8(v60, v59, &qword_100CCE330, &qword_100A6F180);
        sub_100018144(v61, &qword_100CCE330, &qword_100A6F180);
        v40 = *(v2 + v17[8]) * 0.5;
        v41 = v27 - v40;
        v42 = v36 - v40;
        memcpy(&v59[2], v60, 0x70uLL);
        v59[0] = v37;
        v59[1] = v39;
        *&v59[16] = v41;
        *&v59[17] = v42;
        LOBYTE(v59[18]) = 0;
        sub_10022C350(&qword_100CCE338, &qword_100A6F188);
        sub_10064C3E4();
        v43 = v54;
        View.accessibilityHidden(_:)();
        memcpy(v62, v59, sizeof(v62));
        sub_100018144(v62, &qword_100CCE338, &qword_100A6F188);
        v32 = v56;
        sub_10011C0F0(v43, v56, &qword_100CCE310, &qword_100A6F160);
        v33 = v32;
        v34 = 0;
      }

      sub_10001B350(v33, v34, 1, v55);
      v44 = v57;
      sub_1000302D8(v32, v57, &qword_100CCE318, &qword_100A6F168);
      v45 = v53;
      v60[0] = v52;
      LOWORD(v60[1]) = 256;
      *(&v60[1] + 2) = *v64;
      *(&v60[3] + 2) = *&v64[8];
      *(&v60[5] + 2) = *&v64[16];
      v60[7] = *&v64[23];
      *&v60[8] = v29;
      v60[9] = 0;
      LOBYTE(v60[10]) = 0;
      memcpy(v53, v60, 0x51uLL);
      v61[0] = v51;
      LOWORD(v61[1]) = 256;
      *(&v61[1] + 2) = v63[0];
      *(&v61[3] + 2) = v63[1];
      *(&v61[5] + 2) = v63[2];
      v61[7] = *(&v63[2] + 14);
      *&v61[8] = v27;
      v61[9] = 0;
      LOBYTE(v61[10]) = 0;
      memcpy(v45 + 88, v61, 0x51uLL);
      v46 = sub_10022C350(&qword_100CCE328, &qword_100A6F178);
      sub_1000302D8(v44, &v45[*(v46 + 64)], &qword_100CCE318, &qword_100A6F168);
      sub_1000302D8(v60, v62, &qword_100CCE0E8, &unk_100A6EF50);
      sub_1000302D8(v61, v62, &qword_100CCE0E8, &unk_100A6EF50);
      sub_100018144(v32, &qword_100CCE318, &qword_100A6F168);
      sub_100018144(v44, &qword_100CCE318, &qword_100A6F168);
      v59[0] = v51;
      LOWORD(v59[1]) = 256;
      *(&v59[1] + 2) = v63[0];
      *(&v59[3] + 2) = v63[1];
      *(&v59[5] + 2) = v63[2];
      v59[7] = *(&v63[2] + 14);
      *&v59[8] = v27;
      v59[9] = 0;
      LOBYTE(v59[10]) = 0;
      sub_100018144(v59, &qword_100CCE0E8, &unk_100A6EF50);
      *v62 = v52;
      *&v62[8] = 256;
      *&v62[10] = *v64;
      *&v62[26] = *&v64[8];
      *&v62[42] = *&v64[16];
      *&v62[56] = *&v64[23];
      *&v62[64] = v29;
      *&v62[72] = 0;
      v62[80] = 0;
      sub_100018144(v62, &qword_100CCE0E8, &unk_100A6EF50);
      v35 = v58;
      sub_10011C0F0(v45, v58, &qword_100CCE308, &qword_100A6F158);
      sub_10001B350(v35, 0, 1, v49);
      a1 = v50;
    }

    sub_10011C0F0(v35, a1, &qword_100CCE320, &qword_100A6F170);
    v24 = 0;
  }

  return sub_10001B350(a1, v24, 1, v14);
}

uint64_t sub_10064A814@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for DetailChart.LollipopOverlayView(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = v19;
  v5 = v20;
  v6 = v21;
  v7 = v22;
  v8 = v23;
  v9 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v17[38] = v26;
  *&v17[22] = v25;
  *&v17[6] = v24;
  v16[72] = v19;
  v16[64] = v21;
  *v27 = v9;
  *&v27[8] = 256;
  v10 = *v17;
  *&v27[10] = *v17;
  *&v27[56] = *(&v26 + 1);
  v11 = *&v17[32];
  *&v27[42] = *&v17[32];
  v12 = *&v17[16];
  *&v27[26] = *&v17[16];
  *a2 = v18;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  v13 = *&v27[48];
  *(a2 + 80) = *&v27[32];
  *(a2 + 96) = v13;
  v14 = *&v27[16];
  *(a2 + 48) = *v27;
  *(a2 + 64) = v14;
  v28 = v9;
  v29 = 256;
  *&v32[14] = *&v17[46];
  *v32 = v11;
  v31 = v12;
  v30 = v10;
  sub_1000302D8(v27, v16, &qword_100CBB260, &qword_100A6F1A0);
  return sub_100018144(&v28, &qword_100CBB260, &qword_100A6F1A0);
}

uint64_t sub_10064A9E8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemBackgroundColor];
  result = Color.init(_:)();
  *a1 = result;
  *(a1 + 8) = 256;
  return result;
}

BOOL sub_10064AA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  Date.distance(to:)();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = fabs(v8);
  DetailChartDataElement.date.getter();
  Date.distance(to:)();
  v12 = v11;
  v9(v6, v3);
  return v10 < fabs(v12);
}

uint64_t sub_10064AB78(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = type metadata accessor for Date();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for DetailChartDataElement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for DetailChart(0) + 28);
  v22[1] = a1;
  v14 = a1 + v13;
  v15 = *(type metadata accessor for DetailChartViewModel(0) + 20);
  v16 = type metadata accessor for ChartViewModel(0);
  sub_1000302D8(v14 + v15 + *(v16 + 84), v8, &qword_100CAB930, &qword_100A3A7C0);
  if (sub_100024D10(v8, 1, v9) == 1)
  {
    sub_100018144(v8, &qword_100CAB930, &qword_100A3A7C0);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  DetailChartDataElement.date.getter();
  v17 = ChartProxy.position<A>(forX:)();
  v19 = v18;
  (*(v23 + 8))(v5, v3);
  if (v19)
  {
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  v21 = sub_100648B54(*&v17);
  (*(v10 + 8))(v12, v9);
  return *&v21;
}

uint64_t sub_10064AE50(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

unint64_t sub_10064AED4()
{
  result = qword_100CCE008;
  if (!qword_100CCE008)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCDFF0, &qword_100A6ED78);
    v4[0] = sub_10064AF60();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE008);
  }

  return result;
}

unint64_t sub_10064AF60()
{
  result = qword_100CCE010;
  if (!qword_100CCE010)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCDFF8, &unk_100A6EE20);
    v4[0] = sub_10064B03C(&qword_100CCE018, type metadata accessor for ChartView, byte_100A706AC);
    v4[1] = &protocol witness table for _TransactionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE010);
  }

  return result;
}

uint64_t sub_10064B03C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_10064B084()
{
  result = qword_100CCE0A0;
  if (!qword_100CCE0A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE098, &unk_100A6EEE0);
    v4[0] = sub_100006F64(&qword_100CBB280, &qword_100CBB288, &qword_100A6ED60, &protocol conformance descriptor for _ShapeView<A, B>);
    v4[1] = sub_100006F64(&qword_100CBDD58, &qword_100CBDD60, &qword_100A613F0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE0A0);
  }

  return result;
}

uint64_t sub_10064B16C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for DetailChart(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for ChartProxy() - 8);
  return sub_100649FBC(a1, a2, a3 & 1, v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)));
}

uint64_t sub_10064B24C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_10064B2D0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_10064B368()
{
  result = qword_100CCE0B8;
  if (!qword_100CCE0B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE0B0, &qword_100A6EF28);
    v4[0] = sub_10064B03C(&qword_100CCE0C0, type metadata accessor for ScaleLabel, byte_100A6F0D8);
    v4[1] = sub_10064B03C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE0B8);
  }

  return result;
}

unint64_t sub_10064B474()
{
  result = qword_100CCE100;
  if (!qword_100CCE100)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE0F8, &qword_100A6EF68);
    v4[0] = sub_10064B500();
    v4[1] = &protocol witness table for _AllowsHitTestingModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE100);
  }

  return result;
}

unint64_t sub_10064B500()
{
  result = qword_100CCE108;
  if (!qword_100CCE108)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE110, &qword_100A6EF70);
    v4[0] = sub_10064B5B8();
    v4[1] = sub_100006F64(&qword_100CA4620, &qword_100CA4628, &qword_100A45EA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE108);
  }

  return result;
}

unint64_t sub_10064B5B8()
{
  result = qword_100CCE118;
  if (!qword_100CCE118)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE120, &qword_100A6EF78);
    v4[0] = sub_10064B670();
    v4[1] = sub_100006F64(&qword_100CCE168, &qword_100CCE170, &unk_100A6EFA0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE118);
  }

  return result;
}

unint64_t sub_10064B670()
{
  result = qword_100CCE128;
  if (!qword_100CCE128)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE130, &qword_100A6EF80);
    v4[0] = sub_10064B6FC();
    v4[1] = &protocol witness table for _OffsetEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE128);
  }

  return result;
}

unint64_t sub_10064B6FC()
{
  result = qword_100CCE138;
  if (!qword_100CCE138)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE140, &qword_100A6EF88);
    v4[0] = sub_10064B788();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE138);
  }

  return result;
}

unint64_t sub_10064B788()
{
  result = qword_100CCE148;
  if (!qword_100CCE148)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCE150, &qword_100A6EF90);
    v4[0] = sub_100006F64(&qword_100CCE158, &qword_100CCE160, &qword_100A6EF98, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> Group<A>, v3, v4);
    atomic_store(result, &qword_100CCE148);
  }

  return result;
}

uint64_t sub_10064B838@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = type metadata accessor for BlendMode();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin(v2);
  v90 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v85);
  v86 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10022C350(&qword_100CBDCE8, &qword_100A554E0);
  __chkstk_darwin(v87);
  v88 = &v75 - v5;
  v80 = type metadata accessor for DynamicTypeSize();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DetailChartDataElement.ValueLabel();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10022C350(&qword_100CCE2E8, &qword_100A6F130);
  __chkstk_darwin(v76);
  v77 = &v75 - v15;
  v81 = sub_10022C350(&qword_100CCE2F0, &qword_100A6F138);
  __chkstk_darwin(v81);
  v83 = &v75 - v16;
  v82 = sub_10022C350(&qword_100CCE2F8, &unk_100A6F140);
  __chkstk_darwin(v82);
  v84 = &v75 - v17;
  v75 = type metadata accessor for ScaleLabel(0);
  v89 = v1;
  DetailChartDataElement.valueLabel.getter();
  v18 = static ChartValueLabel.with(label:)();
  v20 = v19;
  v22 = v21;
  (*(v12 + 8))(v14, v11);
  (*(v8 + 104))(v10, enum case for Font.TextStyle.caption2(_:), v7);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v8 + 8))(v10, v7);
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  sub_10010CD64(v18, v20, v22 & 1);

  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B6228();
  swift_endAccess();
  v28 = Text.foregroundColor(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_10010CD64(v23, v25, v27 & 1);

  v94 = v28;
  v95 = v30;
  v35 = v32 & 1;
  v96 = v32 & 1;
  v97 = v34;
  v36 = v79;
  v37 = v78;
  v38 = v80;
  (*(v79 + 104))(v78, enum case for DynamicTypeSize.medium(_:), v80);
  v39 = v77;
  View.dynamicTypeSize(_:)();
  (*(v36 + 8))(v37, v38);
  sub_10010CD64(v28, v30, v35);

  v40 = static Edge.Set.all.getter();
  v41 = v39 + *(v76 + 36);
  *v41 = v40;
  *(v41 + 8) = xmmword_100A6ECD0;
  *(v41 + 24) = xmmword_100A6ECD0;
  *(v41 + 40) = 0;
  v42 = *(v85 + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = type metadata accessor for RoundedCornerStyle();
  v45 = v86;
  (*(*(v44 - 8) + 104))(&v86[v42], v43, v44);
  __asm { FMOV            V0.2D, #4.0 }

  *v45 = _Q0;
  v51 = v75;
  v52 = v89;
  if (*(v89 + *(v75 + 28)) == 1)
  {
    v53 = [objc_opt_self() systemBackgroundColor];
    v54 = Color.init(_:)();
  }

  else
  {
    v54 = static Color.clear.getter();
  }

  v55 = v54;
  v56 = v88;
  sub_10064B24C(v45, v88);
  v57 = v87;
  *(v56 + *(v87 + 52)) = v55;
  *(v56 + *(v57 + 56)) = 256;
  v58 = static Alignment.center.getter();
  v60 = v59;
  v61 = v83;
  v62 = &v83[*(v81 + 36)];
  sub_10011C0F0(v56, v62, &qword_100CBDCE8, &qword_100A554E0);
  v63 = (v62 + *(sub_10022C350(&qword_100CBDD10, &qword_100A55508) + 36));
  *v63 = v58;
  v63[1] = v60;
  sub_10011C0F0(v39, v61, &qword_100CCE2E8, &qword_100A6F130);
  v64 = *v52;
  v65 = *(v52 + *(v51 + 24)) + 1.0;
  v66 = v84;
  sub_10011C0F0(v61, v84, &qword_100CCE2F0, &qword_100A6F138);
  v67 = v66 + *(v82 + 36);
  *v67 = v64;
  *(v67 + 8) = v65;
  LODWORD(v67) = *(v52 + *(v51 + 32));
  v69 = v90;
  v68 = v91;
  if (v67)
  {
    v70 = &enum case for BlendMode.destinationOut(_:);
  }

  else
  {
    v70 = &enum case for BlendMode.normal(_:);
  }

  v71 = v92;
  (*(v91 + 104))(v90, *v70, v92);
  v72 = sub_10022C350(&qword_100CCE300, &qword_100A6F150);
  v73 = v93;
  (*(v68 + 32))(v93 + *(v72 + 36), v69, v71);
  return sub_10011C0F0(v66, v73, &qword_100CCE2F8, &unk_100A6F140);
}

uint64_t sub_10064C0F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10064C170(uint64_t a1)
{
  result = type metadata accessor for DetailChartLollipopPoint();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ChartProxy();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DetailChartViewModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10064C240(uint64_t a1)
{
  result = type metadata accessor for DetailChartDataElement();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10064C2D8()
{
  result = qword_100CCE2D8;
  if (!qword_100CCE2D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE2E0, qword_100A6F030);
    v4[0] = sub_100006F64(&qword_100CCDFD8, &qword_100CCDFD0, &unk_100A6ED50, &protocol conformance descriptor for VStack<A>);
    v4[1] = sub_10045AF30();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE2D8);
  }

  return result;
}

unint64_t sub_10064C3E4()
{
  result = qword_100CCE340;
  if (!qword_100CCE340)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE338, &qword_100A6F188);
    v4[0] = sub_10064C470();
    v4[1] = &protocol witness table for _AllowsHitTestingModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE340);
  }

  return result;
}

unint64_t sub_10064C470()
{
  result = qword_100CCE348;
  if (!qword_100CCE348)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE350, &qword_100A6F190);
    v4[0] = sub_100006F64(&qword_100CCE358, &qword_100CCE360, &qword_100A6F198, &protocol conformance descriptor for ZStack<A>);
    v4[1] = &protocol witness table for _OffsetEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE348);
  }

  return result;
}

unint64_t sub_10064C528()
{
  result = qword_100CCE368;
  if (!qword_100CCE368)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE300, &qword_100A6F150);
    v4[0] = sub_10064C5B4();
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE368);
  }

  return result;
}

unint64_t sub_10064C5B4()
{
  result = qword_100CCE370;
  if (!qword_100CCE370)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE2F8, &unk_100A6F140);
    v4[0] = sub_10064C640();
    v4[1] = &protocol witness table for _OffsetEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE370);
  }

  return result;
}

unint64_t sub_10064C640()
{
  result = qword_100CCE378;
  if (!qword_100CCE378)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE2F0, &qword_100A6F138);
    v4[0] = sub_10064C6F8();
    v4[1] = sub_100006F64(&qword_100CBDD50, &qword_100CBDD10, &qword_100A55508, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE378);
  }

  return result;
}

unint64_t sub_10064C6F8()
{
  result = qword_100CCE380;
  if (!qword_100CCE380)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CCE2E8, &qword_100A6F130);
    v4[2] = &type metadata for Text;
    v4[3] = &protocol witness table for Text;
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE380);
  }

  return result;
}

unint64_t sub_10064C7B4()
{
  result = qword_100CCE388;
  if (!qword_100CCE388)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCE390, &qword_100A6F1A8);
    v4[0] = sub_10064C838();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCE388);
  }

  return result;
}

unint64_t sub_10064C838()
{
  result = qword_100CCE398;
  if (!qword_100CCE398)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCE320, &qword_100A6F170);
    v4[0] = sub_100006F64(&qword_100CCE3A0, &qword_100CCE308, &qword_100A6F158, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCE398);
  }

  return result;
}

uint64_t sub_10064C8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a1;
  v79 = a3;
  v80 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v8 = sub_100011330();
  *&v87 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003C38();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = (&v74 - v14);
  __chkstk_darwin(v16);
  v18 = (&v74 - v17);
  __chkstk_darwin(v19);
  v21 = (&v74 - v20);
  type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_1000037C4();
  __chkstk_darwin(v22);
  sub_100003C38();
  v86 = v23 - v24;
  __chkstk_darwin(v25);
  v82 = &v74 - v26;
  __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  v30 = &v74 - v29;
  __chkstk_darwin(v31);
  v33 = &v74 - v32;
  __chkstk_darwin(v34);
  v85 = *(a2 + 16);
  if (v85)
  {
    v75 = v36;
    v76 = &v74 - v35;
    v77 = a4;
    v81 = a2;
    sub_100014BA4();
    v83 = v37;
    v84 = v38;
    result = sub_10064F07C();
    for (i = 1; v85 != i; ++i)
    {
      if (i >= *(v81 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      sub_100014BA4();
      sub_10064F07C();
      sub_10001F3CC();
      sub_10064F07C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v41 = *v21;
      }

      else
      {
        sub_100010664();
        sub_10064F0D4();
        sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
        Measurement.value.getter();
        v41 = v42;
        sub_10001C8D8();
        sub_10064D69C(v4, v43);
      }

      sub_10001F3CC();
      sub_10064F07C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = *v18;
      }

      else
      {
        sub_100010664();
        sub_10064F0D4();
        sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
        Measurement.value.getter();
        v44 = v45;
        sub_10001C8D8();
        sub_10064D69C(v4, v46);
      }

      sub_100006400();
      if (v41 >= v44)
      {
        result = sub_10064D69C(v30, v47);
      }

      else
      {
        sub_10064D69C(v33, v47);
        sub_100004774();
        sub_1000046B4();
        result = sub_10064F0D4();
      }
    }

    sub_100004774();
    v48 = v76;
    sub_10064F0D4();
    *&v49 = sub_10064D730();
    v74 = v49;
    sub_100006400();
    sub_10064D69C(v48, v50);
    sub_100014BA4();
    result = sub_10064F07C();
    v51 = 1;
    a4 = v77;
    v52 = v81;
    while (v85 != v51)
    {
      if (v51 >= *(v52 + 16))
      {
        goto LABEL_32;
      }

      sub_100014BA4();
      sub_10064F07C();
      sub_10001F3CC();
      sub_10064F07C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = *v15;
        v54 = v15[1];

        v55 = v53 + v54;
      }

      else
      {
        sub_100010664();
        sub_10064F0D4();
        v56 = sub_10001920C();
        sub_10022C350(v56, v57);
        Measurement.value.getter();
        v55 = v58;
        sub_10001C8D8();
        sub_10064D69C(v4, v59);
      }

      sub_10001F3CC();
      sub_10064F07C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v60 = *v12;
        v61 = v12[1];

        v62 = v60 + v61;
      }

      else
      {
        sub_100010664();
        sub_10064F0D4();
        v63 = sub_10001920C();
        sub_10022C350(v63, v64);
        Measurement.value.getter();
        v62 = v65;
        sub_10001C8D8();
        sub_10064D69C(v4, v66);
      }

      sub_100006400();
      if (v55 >= v62)
      {
        result = sub_10064D69C(v86, v67);
      }

      else
      {
        sub_10064D69C(v82, v67);
        sub_100004774();
        result = sub_10064F0D4();
      }

      ++v51;
    }

    sub_100004774();
    v68 = v75;
    sub_10064F0D4();
    *&v69 = sub_10064D858();
    v87 = v69;
    sub_100006400();
    result = sub_10064D69C(v68, v70);
    v71 = v79;
    v72 = v78;
    *&v73 = v74;
    *(&v73 + 1) = v87;
  }

  else
  {

    v72 = 0;
    v52 = 0;
    v71 = 0;
    v73 = 0uLL;
  }

  *a4 = v72;
  *(a4 + 8) = v52;
  *(a4 + 16) = v71;
  *(a4 + 24) = v73;
  return result;
}

uint64_t sub_10064CF20()
{
  sub_100003A00();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[3];
  v5 = v0[3];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = v1[2] == v0[2] && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = v1[5];
  v8 = v0[5];
  if (v7)
  {
    if (v8)
    {
      v9 = v1[4] == v0[4] && v7 == v8;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

void sub_10064CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v30 = v29;
  sub_100003828();
  __chkstk_darwin(v31);
  sub_10000C8C8();
  v32 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  sub_100003810(v32);
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  v36 = sub_10022C350(&qword_100CCE3A8, &qword_100A6F1C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v37);
  sub_100019530();
  sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    v38 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
    if (static Measurement.== infix<A, B>(_:_:)())
    {
      v39 = *(v38 + 24);
      v40 = *(v36 + 48);
      sub_100272EE8(v27 + v39, v21);
      sub_100272EE8(v25 + v39, v21 + v40);
      sub_100003A40(v21);
      if (!v41)
      {
        sub_100272EE8(v21, v35);
        sub_100003A40(v21 + v40);
        if (!v41)
        {
          (*(v30 + 32))(v20, v21 + v40, v28);
          sub_100006F64(&qword_100CCE3B0, &qword_100CA53F8, &unk_100A3B3E0, &protocol conformance descriptor for Measurement<A>);
          sub_1000046B4();
          dispatch thunk of static Equatable.== infix(_:_:)();
          v42 = *(v30 + 8);
          v43 = sub_100003940();
          v42(v43);
          (v42)(v35, v28);
          sub_1000180EC(v21, qword_100CA5418, &qword_100A2F670);
          goto LABEL_12;
        }

        (*(v30 + 8))(v35, v28);
LABEL_11:
        sub_1000180EC(v21, &qword_100CCE3A8, &qword_100A6F1C0);
        goto LABEL_12;
      }

      sub_100003A40(v21 + v40);
      if (!v41)
      {
        goto LABEL_11;
      }

      sub_1000180EC(v21, qword_100CA5418, &qword_100A2F670);
    }
  }

LABEL_12:
  sub_10000536C();
}

uint64_t sub_10064D2B8(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_100003A00();
  if (*(v4 + 8) != *(v5 + 8))
  {
    return 0;
  }

  v6 = v3[3];
  v7 = v2[3];
  if (v6)
  {
    if (v7)
    {
      v8 = v3[2] == v2[2] && v6 == v7;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_10:
  if (v3[4] == v2[4] && v3[5] == v2[5])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10064D38C()
{
  sub_10000C778();
  v1 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003C38();
  v9 = (v7 - v8);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = sub_10022C350(&qword_100CCE3B8, &unk_100AA56E0);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_10000C8C8();
  v16 = (v0 + *(v15 + 56));
  sub_10064F07C();
  sub_10064F07C();
  sub_10001920C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001F3CC();
    sub_10064F07C();
    v17 = v9[1];
    v27 = *v9;
    v28 = v17;
    v29 = v9[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = v16[1];
      v30 = *v16;
      v31 = v18;
      v32 = v16[2];
      sub_10064D2B8(&v27, &v30);
      v35 = v28;
      sub_1000180EC(&v35, &qword_100CA6078, &unk_100A30870);
      v36 = v29;
      sub_1002ED110(&v36);
      v33 = v31;
      sub_1000180EC(&v33, &qword_100CA6078, &unk_100A30870);
      v34 = v32;
      sub_1002ED110(&v34);
LABEL_9:
      sub_100028880();
      sub_10064D69C(v0, v26);
      goto LABEL_10;
    }

    v36 = v9[1];
    sub_1000180EC(&v36, &qword_100CA6078, &unk_100A30870);
    v30 = v29;
    sub_1002ED110(&v30);
  }

  else
  {
    sub_10001F3CC();
    sub_10064F07C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100010664();
      sub_10064F0D4();
      sub_10064CFDC(v12, v5, v20, v21, v22, v23, v24, v25, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1));
      sub_10064D69C(v5, type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature);
      sub_10064D69C(v12, type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature);
      goto LABEL_9;
    }

    sub_10001C8D8();
    sub_10064D69C(v12, v19);
  }

  sub_1000180EC(v0, &qword_100CCE3B8, &unk_100AA56E0);
LABEL_10:
  sub_10000536C();
}

uint64_t sub_10064D69C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_10064D730()
{
  v1 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_100019530();
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = (v5 - v4);
  type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_10001F3CC();
  sub_10064F07C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
  }

  else
  {
    sub_100010664();
    sub_10001920C();
    sub_10064F0D4();
    sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
    Measurement.value.getter();
    v7 = v8;
    sub_10001C8D8();
    sub_10064D69C(v0, v9);
  }

  return v7;
}

double sub_10064D858()
{
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100019530();
  type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_10001F3CC();
  sub_10064F07C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v0;
    v7 = v0[1];

    return v6 + v7;
  }

  else
  {
    sub_100010664();
    sub_10064F0D4();
    sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
    Measurement.value.getter();
    v8 = v9;
    sub_10001C8D8();
    sub_10064D69C(v4, v10);
  }

  return v8;
}

void sub_10064D998()
{
  sub_10000C778();
  v2 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100022E2C();
  v6 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000037D8();
  v15 = sub_1000115E8();
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v17 = sub_100011330();
  type metadata accessor for ComparisonCapsuleViewModel.Row(v17);
  sub_10001F3CC();
  sub_10064F07C();
  sub_10002FDB4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_100010664();
    sub_10064F0D4();
    static WeatherFormatStyle<>.weather.getter();
    (*(v4 + 104))(v0, enum case for WeatherFormatPlaceholder.none(_:), v2);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
    sub_100114168();
    Measurement.formatted<A>(_:placeholder:unitManager:)();

    v18 = sub_1000046B4();
    v19(v18);
    (*(v8 + 8))(v12, v6);
    sub_10001C8D8();
    sub_10064D69C(v1, v20);
  }

  sub_10000536C();
}

void sub_10064DC10()
{
  sub_10000C778();
  v2 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100022E2C();
  v6 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v18 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v13 = sub_1000115E8();
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(v13);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_10001F3CC();
  sub_10064F07C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_100010664();
    sub_10064F0D4();
    static WeatherFormatStyle<>.weather.getter();
    (*(v4 + 104))(v0, enum case for WeatherFormatPlaceholder.none(_:), v2);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
    sub_100114168();
    Measurement.formatted<A>(_:placeholder:unitManager:)();

    v15 = sub_1000046B4();
    v16(v15);
    (*(v18 + 8))(v11, v6);
    sub_10001C8D8();
    sub_10064D69C(v1, v17);
  }

  sub_10000536C();
}

void sub_10064DEA4()
{
  sub_10000C778();
  type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v116 = v4;
  v117 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v114 = v6 - v5;
  v115 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v113 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v112 = v10 - v9;
  v11 = sub_10022C350(qword_100CA5418, &qword_100A2F670);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_10000C8C8();
  *&v121 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037C4();
  v118 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v120 = v110 - v15;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v17 = sub_1000115E8();
  v18 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(v17);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  v20 = v1[5];
  v122 = v1;
  v119 = v22 - v21;
  if (v20)
  {
    v23 = v1[4];
    v24 = v20;
  }

  else
  {
    if (v1[3])
    {
      v23 = v1[2];
      v24 = v1[3];
    }

    else
    {
      v23 = *v1;
      v24 = v1[1];
    }
  }

  sub_100109810();
  v26 = v25;
  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  if (v28 >= v27 >> 1)
  {
    v102 = sub_100031C84(v27);
    sub_1000252AC(v102, v28 + 1);
    v26 = v103;
  }

  *(v26 + 16) = v28 + 1;
  v29 = v26 + 16 * v28;
  *(v29 + 32) = v23;
  *(v29 + 40) = v24;
  v30 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_10001F3CC();
  v31 = v122;
  sub_10064F07C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100028880();
    sub_10064D69C(v2, v32);
  }

  else
  {
    sub_100010664();
    v33 = v119;
    sub_10064F0D4();
    sub_100272EE8(v33 + *(v18 + 24), v0);
    v34 = v121;
    if (sub_100024D10(v0, 1, v121) == 1)
    {
      sub_10001C8D8();
      sub_10064D69C(v33, v35);
      sub_1000180EC(v0, qword_100CA5418, &qword_100A2F670);
    }

    else
    {
      v111 = v30;
      (*(v118 + 32))(v120, v0, v34);
      v36 = [objc_opt_self() mainBundle];
      v124._object = 0x8000000100AD9B90;
      sub_100003CD0();
      sub_100003F1C();
      v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v39, v40, v124);
      v110[0] = v41._object;
      v110[1] = v41._countAndFlagsBits;

      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_100A2C3F0;
      v43 = v112;
      static WeatherFormatStyle<>.weather.getter();
      v45 = v116;
      v44 = v117;
      v46 = v114;
      (*(v116 + 104))(v114, enum case for WeatherFormatPlaceholder.none(_:), v117);
      type metadata accessor for UnitManager();
      static UnitManager.standard.getter();
      sub_100114168();
      v47 = v115;
      v48 = Measurement.formatted<A>(_:placeholder:unitManager:)();
      v50 = v49;

      (*(v45 + 8))(v46, v44);
      (*(v113 + 8))(v43, v47);
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = sub_100035744();
      *(v42 + 32) = v48;
      *(v42 + 40) = v50;
      v51 = String.init(format:_:)();
      v53 = v52;

      v55 = *(v26 + 16);
      v54 = *(v26 + 24);
      if (v55 >= v54 >> 1)
      {
        v108 = sub_100031C84(v54);
        sub_1000252AC(v108, v55 + 1);
        v26 = v109;
      }

      v31 = v122;
      v56 = v119;
      (*(v118 + 8))(v120, v121);
      sub_10001C8D8();
      sub_10064D69C(v56, v57);
      *(v26 + 16) = v55 + 1;
      v58 = v26 + 16 * v55;
      *(v58 + 32) = v51;
      *(v58 + 40) = v53;
      v30 = v111;
    }
  }

  if (*(v31 + *(v30 + 24)) > 2u)
  {
    sub_10064D998();
    if (!v86)
    {
      goto LABEL_26;
    }

    v60 = v85;
    v87 = v86;
    v88 = [objc_opt_self() mainBundle];
    v127._object = 0x8000000100AD9A40;
    sub_100003CD0();
    sub_100003F1C();
    NSLocalizedString(_:tableName:bundle:value:comment:)(v89, v90, v91, v92, v127);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_100A2D320;
    *(v93 + 56) = &type metadata for String;
    v94 = sub_100035744();
    *(v93 + 64) = v94;
    *(v93 + 32) = v60;
    *(v93 + 40) = v87;
    sub_10064DC10();
    *(v93 + 96) = &type metadata for String;
    *(v93 + 104) = v94;
    *(v93 + 72) = v95;
    *(v93 + 80) = v96;
    String.init(format:_:)();
    sub_100017750();
    goto LABEL_23;
  }

  v59 = objc_opt_self();
  v60 = [v59 mainBundle];
  v125._object = 0x8000000100AD9A90;
  sub_100003CD0();
  sub_100003F1C();
  NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v63, v64, v125);

  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v65 = swift_allocObject();
  v121 = xmmword_100A2C3F0;
  *(v65 + 16) = xmmword_100A2C3F0;
  sub_10064DC10();
  v67 = v66;
  v69 = v68;
  *(v65 + 56) = &type metadata for String;
  v70 = sub_100035744();
  *(v65 + 64) = v70;
  *(v65 + 32) = v67;
  *(v65 + 40) = v69;
  sub_10002FDB4();
  v71 = String.init(format:_:)();
  v73 = v72;

  v75 = *(v26 + 16);
  v74 = *(v26 + 24);
  if (v75 >= v74 >> 1)
  {
    v106 = sub_100031C84(v74);
    sub_1000252AC(v106, v75 + 1);
    v26 = v107;
  }

  *(v26 + 16) = v75 + 1;
  v76 = v26 + 16 * v75;
  *(v76 + 32) = v71;
  *(v76 + 40) = v73;
  v31 = v122;
  sub_10064D998();
  if (v77)
  {
    sub_100017750();
    v79 = [v59 *(v78 + 3744)];
    v126._object = 0x8000000100AD9B10;
    sub_100003CD0();
    sub_100003F1C();
    v126._countAndFlagsBits = 0x1000000000000077;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v80, v81, v82, v83, v126);

    v84 = swift_allocObject();
    *(v84 + 16) = v121;
    *(v84 + 56) = &type metadata for String;
    *(v84 + 64) = v70;
    *(v84 + 32) = v60;
    *(v84 + 40) = v31;
    sub_10002FDB4();
    String.init(format:_:)();
    sub_100017750();
LABEL_23:

    v98 = *(v26 + 16);
    v97 = *(v26 + 24);
    if (v98 >= v97 >> 1)
    {
      v104 = sub_100031C84(v97);
      sub_1000252AC(v104, v98 + 1);
      v26 = v105;
    }

    *(v26 + 16) = v98 + 1;
    v99 = v26 + 16 * v98;
    *(v99 + 32) = v60;
    *(v99 + 40) = v31;
  }

LABEL_26:
  v123 = v26;
  v100 = sub_100003940();
  sub_10022C350(v100, v101);
  sub_100006F64(&qword_100CB2D00, &qword_100CCC930, &qword_100A41810, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();
  sub_100017750();

  sub_100003940();
  sub_10000536C();
}

void sub_10064E7C8()
{
  sub_10000C778();
  sub_100003A00();
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v8 = v0[2];
  v7 = v0[3];
  v10 = v0[4];
  v9 = v0[5];
  v11 = *v2 == *v0 && v1[1] == v0[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v5)
  {
    if (v7)
    {
      goto LABEL_25;
    }

LABEL_15:
    if (v6)
    {
      if (!v9)
      {
        goto LABEL_25;
      }

      v13 = v4 == v10 && v6 == v9;
      if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v9)
    {
      goto LABEL_25;
    }

    type metadata accessor for ComparisonCapsuleViewModel.Row(0);
    sub_10064D38C();
    goto LABEL_25;
  }

  if (v7)
  {
    if (v3 == v8 && v5 == v7)
    {
      goto LABEL_15;
    }

    sub_10002FDB4();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  sub_10000536C();
}

uint64_t sub_10064E8F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10064D704();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10064E920@<X0>(uint64_t *a2@<X8>)
{
  switch(*v2)
  {
    case 1:
      result = static Color.primary.getter();
      v5 = &unk_100C78E28;
      v6 = &off_100C78FA8;
      goto LABEL_7;
    case 2:
      result = static Color.cyan.getter();
      v5 = &unk_100C78E50;
      v6 = &off_100C79018;
LABEL_7:
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
      return result;
    case 3:
      sub_1009A97F4(__src);
      a2[3] = &unk_100C78ED0;
      a2[4] = &off_100C79088;
      goto LABEL_5;
    default:
      sub_1009A9714(__src);
      a2[3] = &unk_100C78DD0;
      a2[4] = &off_100C78F38;
LABEL_5:
      v7 = swift_allocObject();
      *a2 = v7;
      return memcpy((v7 + 16), __src, 0x61uLL);
  }
}

BOOL sub_10064EA10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_100003A00();
  return (sub_1009EBF3C(*(v4 + 8), *(v5 + 8)) & 1) != 0 && (sub_1001D222C(*(v3 + 16), *(v2 + 16)) & 1) != 0 && *(v3 + 24) == *(v2 + 24) && *(v3 + 32) == *(v2 + 32);
}

void sub_10064EA98()
{
  sub_10000C778();
  v35 = v0;
  type metadata accessor for TimeStyle();
  sub_1000037C4();
  v33 = v4;
  v34 = v3;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v32 = v6 - v5;
  v7 = type metadata accessor for WeatherFormatPlaceholder();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_100011330();
  v11 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  type metadata accessor for ComparisonCapsuleViewModel.Row.Body(0);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v24 = sub_100022E2C();
  type metadata accessor for ComparisonCapsuleViewModel.Row(v24);
  sub_10001F3CC();
  sub_10064F07C();
  sub_1000046B4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *(v1 + 16);
    v26 = *(v1 + 24);

    if (!v26)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_100010664();
    sub_10064F0D4();
    static WeatherFormatStyle<>.weather.getter();
    (*(v9 + 104))(v2, enum case for WeatherFormatPlaceholder.none(_:), v7);
    type metadata accessor for UnitManager();
    static UnitManager.standard.getter();
    sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
    sub_100114168();
    v25 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v27 = v13;
    v26 = v28;

    (*(v9 + 8))(v2, v7);
    (*(v27 + 8))(v17, v11);
    sub_10001C8D8();
    sub_10064D69C(v22, v29);
  }

  if (*v35 == 3)
  {
    type metadata accessor for Style();
    static Style.componentTime.getter();
    sub_10000C70C(0, &qword_100CA53F0, NSDateFormatter_ptr);
    static NSDateFormatter.prevailingPeriodSymbols.getter();
    sub_10064E920(v36);
    v30 = v37;
    v31 = v38;
    sub_1000161C0(v36, v37);
    (*(v31 + 40))(v30, v31);
    TimeStyle.formatTime(_:periodSymbols:font:)();
    sub_100017750();

    (*(v33 + 8))(v32, v34);
    sub_100006F14(v36);
  }

  else
  {
    v36[0] = v25;
    v36[1] = v26;
    sub_10002D5A4();
    Text.init<A>(_:)();
    sub_100017750();
  }

LABEL_8:
  sub_100003940();
  sub_10000536C();
}

void sub_10064EEBC()
{
  sub_10000C778();
  v2 = type metadata accessor for TimeStyle();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100019530();
  if (*v0 == 3)
  {
    type metadata accessor for Style();
    static Style.componentTime.getter();
    sub_10064DC10();
    sub_10000C70C(0, &qword_100CA53F0, NSDateFormatter_ptr);
    static NSDateFormatter.prevailingPeriodSymbols.getter();
    sub_10064E920(v10);
    v6 = v11;
    v7 = v12;
    sub_1000161C0(v10, v11);
    (*(v7 + 48))(v6, v7);
    TimeStyle.formatTime(_:periodSymbols:font:)();
    sub_100037C04();

    (*(v4 + 8))(v1, v2);
    sub_100006F14(v10);
  }

  else
  {
    sub_10064DC10();
    v10[0] = v8;
    v10[1] = v9;
    sub_10002D5A4();
    Text.init<A>(_:)();
    sub_100037C04();
  }

  sub_10000536C();
}

uint64_t sub_10064F07C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10064F0D4()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10064F164(uint64_t a1)
{
  result = type metadata accessor for ComparisonCapsuleViewModel.Row.Body(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ComparisonCapsuleViewModel.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10064F2D4(uint64_t a1)
{
  result = type metadata accessor for ComparisonCapsuleViewModel.Row.Body.Temperature(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10064F33C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_10064F37C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10064F400(uint64_t a1)
{
  sub_10064F484(319);
  if (v1 <= 0x3F)
  {
    sub_10064F4EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10064F484(uint64_t a1)
{
  if (!qword_100CBB7C8)
  {
    sub_10000C70C(255, &qword_100CA51B0, NSUnitTemperature_ptr);
    v1 = type metadata accessor for Measurement();
    if (!v2)
    {
      atomic_store(v1, &qword_100CBB7C8);
    }
  }
}

void sub_10064F4EC(uint64_t a1)
{
  if (!qword_100CBB7D0)
  {
    sub_10022E824(&qword_100CA53F8, &unk_100A3B3E0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CBB7D0);
    }
  }
}

unint64_t sub_10064F554()
{
  result = qword_100CCE598;
  if (!qword_100CCE598)
  {
    result = swift_getWitnessTable(byte_100A6F330, &type metadata for ComparisonCapsuleViewModel.Kind, v0, v1);
    atomic_store(result, &qword_100CCE598);
  }

  return result;
}

double sub_10064F61C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

uint64_t sub_10064F628(uint64_t a1, uint64_t a2, int a3)
{
  v57 = a1;
  v53 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v10 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainAction(0);
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v20.n128_f64[0] = __chkstk_darwin(v19);
  v22 = &v49 - v21;
  v54 = a3;
  v55 = v23;
  if (a3)
  {
    v24 = _swiftEmptyArrayStorage;
    (*(v6 + 16))(v18, v57, v53, v20);
  }

  else
  {
    v52 = v15;
    v25 = v12;
    v26 = *&a2;
    LocationModel.identifier.getter();
    type metadata accessor for ListViewAction(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_10004FF70();
    v24 = v27;
    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      sub_10000CD44(v28 > 1, v29 + 1);
      v24 = v48;
    }

    v24[2] = v29 + 1;
    sub_1000CA208(v22, v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29);
    v50 = objc_opt_self();
    v51 = *(v6 + 16);
    v30 = v53;
    v51(&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v57, v53);
    v31 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v56;
    (*(v6 + 32))(v32 + v31, v10, v30);
    aBlock[4] = sub_1006514F4;
    v59 = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10030DC80;
    aBlock[3] = &unk_100C646C0;
    v33 = _Block_copy(aBlock);

    v12 = v25;

    v34 = [v50 scheduledTimerWithTimeInterval:0 repeats:v33 block:v26];
    _Block_release(v33);

    v15 = v52;
    (v51)(v18, v57, v30, v35);
  }

  v36 = (v54 & 1) == 0;
  v18[*(sub_10022C350(&qword_100CBBE20, &unk_100A5C410) + 48)] = v36;
  type metadata accessor for ListViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10000CD44(0, v24[2] + 1);
    v24 = v45;
  }

  v38 = v24[2];
  v37 = v24[3];
  v39 = v38 + 1;
  if (v38 >= v37 >> 1)
  {
    sub_10000CD44(v37 > 1, v38 + 1);
    v24 = v46;
  }

  v24[2] = v39;
  v40 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v41 = *(v12 + 72);
  sub_1000CA208(v18, v24 + v40 + v41 * v38);
  type metadata accessor for SearchViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v42 = v24[3];
  if ((v38 + 2) > (v42 >> 1))
  {
    sub_10000CD44(v42 > 1, v38 + 2);
    v24 = v47;
  }

  v24[2] = v38 + 2;
  sub_1000CA208(v15, v24 + v40 + v41 * v39);
  v43 = *(v56 + 16);
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  sub_10006D53C(v61, aBlock);
  v59 = v24;
  v60 = 0;
  sub_10004F1B0(aBlock, v43);
  sub_1000180EC(aBlock, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v61, &unk_100CD81B0, &unk_100A3B000);
}

uint64_t sub_10064FB94(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  LocationModel.identifier.getter();
  type metadata accessor for LocationViewerViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v5, v9, v7, v6);
  sub_1000180EC(v9, &unk_100CD81B0, &unk_100A3B000);
  return sub_1000547B8(v5);
}

uint64_t sub_10064FCB0(char a1)
{
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  sub_100024924();
  sub_100003DDC();
  v2 = sub_10000478C();
  sub_100016C88(v2, xmmword_100A2D320);
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8(v1);
  type metadata accessor for NotificationsOptInAction(0);
  swift_storeEnumTagMultiPayload();
  v3 = swift_storeEnumTagMultiPayload();
  v11 = sub_1000087C0(v3, v4, v5, v6, v7, v8, v9, v10, v20, *v22, v23, v24, v25, v26, v27, v28, v29[0], v29[1], v30);
  sub_100028614(v11, v12, v13, v14, v15, v16, v17, v18, v21, *v22, v23, v24, v25, v26, v2, v28);
  sub_1000180EC(v22, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v29, &unk_100CD81B0, &unk_100A3B000);
}

uint64_t sub_10064FE64()
{
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  sub_100024924();
  sub_100003DDC();
  v1 = sub_10000478C();
  sub_100016C88(v1, xmmword_100A2D320);
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8(v0);
  type metadata accessor for NotificationsOptInAction(0);
  swift_storeEnumTagMultiPayload();
  v2 = swift_storeEnumTagMultiPayload();
  v10 = sub_1000087C0(v2, v3, v4, v5, v6, v7, v8, v9, v19, *v21, v22, v23, v24, v25, v26, v27, v28[0], v28[1], v29);
  sub_100028614(v10, v11, v12, v13, v14, v15, v16, v17, v20, *v21, v22, v23, v24, v25, v1, v27);
  sub_1000180EC(v21, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v28, &unk_100CD81B0, &unk_100A3B000);
}

void sub_10064FF90(char a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
      v10 = *(v1 + 16);
      sub_10022C350(&qword_100CA3508, &unk_100A2D530);
      sub_100019C1C();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100A2C3F0;
      type metadata accessor for ListViewAction(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ViewAction(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_100014BBC();
      sub_10006D53C(v16, v12);
      v14 = v11;
      v15 = 0;
      sub_10004F1B0(v12, v10);
      sub_1000180EC(v12, &qword_100CA3510, &unk_100A2D540);
      sub_1000180EC(v16, &unk_100CD81B0, &unk_100A3B000);
      break;
    case 2:
      v7 = 3;
      goto LABEL_4;
    case 5:
    case 6:
      return;
    default:
      v7 = 1;
LABEL_4:
      if (sub_1008CA570(v7))
      {
        v9 = *(v1 + 16);
        v8 = *(v1 + 24);
        type metadata accessor for ListViewAction(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for ViewAction(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v13 = 0;
        memset(v12, 0, sizeof(v12));
        sub_10004F034(v6, v12, v9, v8);
        sub_1000180EC(v12, &unk_100CD81B0, &unk_100A3B000);
        sub_1000547B8(v6);
      }

      break;
  }
}

void sub_10065020C(unsigned int a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = a1;
    }

    else
    {
      v7 = 3;
    }

    if (sub_1008CA570(v7))
    {
      v9 = *(v1 + 16);
      v8 = *(v1 + 24);
      type metadata accessor for LocationViewerViewAction(0);
      sub_100003E0C();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ViewAction(0);
      sub_100003E0C();
      swift_storeEnumTagMultiPayload();
      sub_1000062B8(v6);
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_10004F034(v6, v10, v9, v8);
      sub_1000180EC(v10, &unk_100CD81B0, &unk_100A3B000);
      sub_1000547B8(v6);
    }
  }
}

uint64_t sub_100650310(uint64_t a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_10000CC9C();
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for ListViewAction(0);
  sub_100017BC0();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  sub_100017BC0();
  swift_storeEnumTagMultiPayload();
  sub_1000062B8(v2);
  sub_100014BBC();
  sub_10004F034(v2, v7, v5, v4);
  sub_1000180EC(v7, &unk_100CD81B0, &unk_100A3B000);
  return sub_1000547B8(v2);
}

uint64_t sub_1006503EC()
{
  result = sub_1008CA570(6);
  if (result)
  {
    sub_10022C350(&qword_100CA3508, &unk_100A2D530);
    type metadata accessor for MainAction(0);
    sub_100003DDC();
    sub_100019C1C();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100A2C3F0;
    type metadata accessor for ListViewAction(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    swift_storeEnumTagMultiPayload();
    v2 = swift_storeEnumTagMultiPayload();
    v10 = sub_1000087C0(v2, v3, v4, v5, v6, v7, v8, v9, v18, *v20, v21, v22, v23, v24, v25, v26, v27[0], v27[1], v28);
    sub_100028614(v10, v11, v12, v13, v14, v15, v16, v17, v19, *v20, v21, v22, v23, v24, v1, v26);
    sub_1000180EC(v20, &qword_100CA3510, &unk_100A2D540);
    return sub_1000180EC(v27, &unk_100CD81B0, &unk_100A3B000);
  }

  return result;
}

uint64_t sub_100650528(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  *v8 = a1;
  v8[1] = a2;
  type metadata accessor for LocationsAction(0);
  sub_100022CAC();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_100014BBC();
  sub_10004F034(v8, v12, v10, v9);
  sub_1000180EC(v12, &unk_100CD81B0, &unk_100A3B000);
  return sub_1000547B8(v8);
}

uint64_t sub_100650604()
{
  v2 = type metadata accessor for IndexSet.Index();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_10000CC9C();
  IndexSet.startIndex.getter();
  v6 = IndexSet.subscript.getter();
  (*(v4 + 8))(v1, v2);
  v7 = *(v0 + 16);
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  sub_100024924();
  sub_100003DDC();
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2D320;
  v13 = (v12 + v11);
  *v13 = v6;
  type metadata accessor for LocationsAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SearchViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  sub_1000062B8(v13 + v9);
  v14 = sub_100013A8C();
  sub_10006D53C(v14, v16);
  v17 = v12;
  v18 = 0;
  sub_10004F1B0(v16, v7);
  sub_1000180EC(v16, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v19, &unk_100CD81B0, &unk_100A3B000);
}

uint64_t sub_100650814(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v31 = *(v2 + 16);
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  type metadata accessor for MainAction(0);
  sub_100003DDC();
  v7 = *(v6 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100A2D320;
  type metadata accessor for ListViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10004E840();
  v11 = (v10 + v9 + v7);
  if (v5)
  {
    *v11 = a1;
    v11[1] = a2;
    type metadata accessor for SearchViewAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v12 = sub_10004E840();
    sub_1000087C0(v12, v13, v14, v15, v16, v17, v18, v19, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    v39 = v10;
    LOBYTE(v40) = 0;

    sub_10004F1B0(&v34, v32);
    sub_1000180EC(&v34, &qword_100CA3510, &unk_100A2D540);
    sub_1000180EC(&v41, &unk_100CD81B0, &unk_100A3B000);
    swift_beginAccess();
    sub_100035B30(v2 + 72, &v34);
    v20 = v37;
    v21 = v38;
    sub_1000161C0(&v34, v37);
    (*(v21 + 40))(a1, a2, v20, v21);
    return sub_100006F14(&v34);
  }

  else
  {
    type metadata accessor for SearchViewAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v23 = sub_10004E840();
    sub_1000087C0(v23, v24, v25, v26, v27, v28, v29, v30, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    v39 = v10;
    LOBYTE(v40) = 0;
    sub_10004F1B0(&v34, v33);
    sub_1000180EC(&v34, &qword_100CA3510, &unk_100A2D540);
    return sub_1000180EC(&v41, &unk_100CD81B0, &unk_100A3B000);
  }
}

uint64_t sub_100650AA4(char a1)
{
  type metadata accessor for MainAction(0);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_10000CC9C();
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  if (a1)
  {
    *v2 = 1;
    type metadata accessor for ListViewAction(0);
    sub_100017BC0();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    sub_100017BC0();
    swift_storeEnumTagMultiPayload();
    sub_1000062B8(v2);
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_10004F034(v2, v15, v7, v8);
    sub_1000180EC(v15, &unk_100CD81B0, &unk_100A3B000);
    return sub_1000547B8(v2);
  }

  else
  {
    sub_10022C350(&qword_100CA3508, &unk_100A2D530);
    v10 = *(v5 + 72);
    v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A2D320;
    v13 = (v12 + v11);
    *v13 = 0;
    type metadata accessor for ListViewAction(0);
    sub_100022CAC();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    swift_storeEnumTagMultiPayload();
    sub_1000062B8(v13);
    type metadata accessor for SearchViewAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1000062B8(&v13[v10]);
    v14 = sub_100013A8C();
    sub_10006D53C(v14, v15);
    v17 = v12;
    v18 = 0;
    sub_10004F1B0(v15, v7);
    sub_1000180EC(v15, &qword_100CA3510, &unk_100A2D540);
    return sub_1000180EC(v19, &unk_100CD81B0, &unk_100A3B000);
  }
}

uint64_t sub_100650CCC(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = result;
    swift_beginAccess();
    sub_100035B30(v2 + 72, v8);
    v6 = v9;
    v7 = v10;
    sub_1000161C0(v8, v9);
    (*(v7 + 40))(v5, a2, v6, v7);
    return sub_100006F14(v8);
  }

  return result;
}

uint64_t sub_100650D84()
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v21 = v3;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10000CC9C();
  v20 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  *(v13 - v12) = 1;
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v24 = 0;
  aBlock = 0u;
  v23 = 0u;
  sub_10004F034(v14, &aBlock, v15, v16);
  sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
  sub_1000547B8(v14);
  sub_100040690();
  v17 = static OS_dispatch_queue.main.getter();
  v24 = sub_1006514EC;
  v25 = v0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_1000742F0;
  *(&v23 + 1) = &unk_100C64670;
  v18 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v21 + 8))(v1, v2);
  return (*(v6 + 8))(v10, v20);
}

uint64_t sub_10065107C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  v2 = *(type metadata accessor for MainAction(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2D320;
  *(v4 + v3) = 1;
  type metadata accessor for ListViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10006D53C(v9, v6);
  v7 = v4;
  v8 = 0;
  sub_10004F1B0(v6, v1);
  sub_1000180EC(v6, &qword_100CA3510, &unk_100A2D540);
  return sub_1000180EC(v9, &unk_100CD81B0, &unk_100A3B000);
}

void *sub_100651234()
{

  sub_100006F14(v0 + 4);
  sub_100006F14(v0 + 9);
  sub_100006F14(v0 + 14);

  return v0;
}

uint64_t sub_100651274()
{
  sub_100651234();

  return swift_deallocClassInstance();
}

void sub_1006512D0(uint64_t a1)
{
  sub_1000161C0((v1 + 32), *(v1 + 56));

  sub_1003C17F4(a1);
}

uint64_t sub_100651314(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  *(v5 - v4) = a2;
  type metadata accessor for SearchViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_100014BBC();

  sub_1000047B4();
  sub_1000180EC(v8, &unk_100CD81B0, &unk_100A3B000);
  return sub_1000547B8(v6);
}

uint64_t sub_1006513F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  swift_errorRetain();
  CodableError.init(_:)();
  type metadata accessor for SearchViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_100014BBC();
  sub_1000047B4();
  sub_1000180EC(v7, &unk_100CD81B0, &unk_100A3B000);
  return sub_1000547B8(v5);
}

uint64_t sub_1006514F4(uint64_t a1)
{
  type metadata accessor for LocationModel();
  v3 = *(v1 + 16);

  return sub_10064FB94(a1, v3);
}

uint64_t sub_1006515A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 210))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1006515E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100651688@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_opt_self() mainBundle];
  v18._object = 0x8000000100AD9CE0;
  v7._object = 0x8000000100AD9CC0;
  v18._countAndFlagsBits = 0xD000000000000053;
  v7._countAndFlagsBits = 0xD000000000000012;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v18);

  v15 = v9;
  v16 = 0;
  v17 = 0;
  v14 = v1;
  sub_10022C350(&qword_100CCE738, &qword_100A6F600);
  sub_10051106C();
  sub_100006F64(&qword_100CCE740, &qword_100CCE738, &qword_100A6F600, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = a1 + *(sub_10022C350(&qword_100CCE748, &qword_100A6F608) + 36);
  v11 = type metadata accessor for AutomationInfoProperty(0);
  sub_1003AFC6C(v5, v10 + *(v11 + 24));
  sub_1001C9E84(v5);
  *v10 = 0;
  *(v10 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v10 + 16) = result;
  *(v10 + 24) = 0;
  return result;
}

uint64_t sub_1006518B0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v51 = v3;
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v128, v2, 0xD2uLL);
  sub_10022C350(qword_100CCE750, &qword_100A6F638);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  memcpy(v128, __src, 0xD2uLL);
  Binding.subscript.getter();

  sub_10003FDF4(__src, qword_100CCE750, &qword_100A6F638);
  v49 = v122[1];
  v50 = v122[0];
  v48 = v122[2];
  memcpy(v123, v2, 0xD2uLL);
  Binding.wrappedValue.getter();
  v46 = v126[0];
  v47 = v126[1];

  sub_1002DD1E0(v126);
  memcpy(v123, v2, 0xD2uLL);
  Binding.wrappedValue.getter();
  v44 = v127[2];
  v45 = v127[3];

  sub_1002DD1E0(v127);
  memcpy(v123, v2, 0xD2uLL);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  memcpy(v123, v128, 0xD2uLL);
  Binding.subscript.getter();

  sub_10003FDF4(v128, qword_100CCE750, &qword_100A6F638);
  v42 = v114[1];
  v43 = v114[0];
  v41 = v114[2];
  memcpy(v122, v2, 0xD2uLL);
  Binding.wrappedValue.getter();
  v39 = v129[5];
  v40 = v129[6];

  sub_1002DD1E0(v129);
  memcpy(v122, v2, 0xD2uLL);
  Binding.wrappedValue.getter();
  v37 = v130[7];
  v38 = v130[8];

  sub_1002DD1E0(v130);
  memcpy(v123, v2, 0xD2uLL);
  Binding.wrappedValue.getter();
  memcpy(v131, v122, 0xC2uLL);
  sub_1002DD1E0(v131);
  if (v131[72] == 1)
  {
    memcpy(v122, v2, 0xD2uLL);
    Binding.projectedValue.getter();
    swift_getKeyPath();
    memcpy(v122, v123, 0xD2uLL);
    Binding.subscript.getter();

    sub_10003FDF4(v123, qword_100CCE750, &qword_100A6F638);
    v54 = LOBYTE(v114[2]);
    v56 = v114[0];

    v52 = v114[1];

    v53 = &off_100C441B8;
  }

  else
  {
    v56 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
  }

  memcpy(v122, __dst, 0xD2uLL);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  memcpy(v122, v123, 0xD2uLL);
  Binding.subscript.getter();

  sub_10003FDF4(v123, qword_100CCE750, &qword_100A6F638);
  v35 = v106[1];
  v36 = v106[0];
  v34 = v106[2];
  memcpy(v114, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v32 = v116;
  v33 = v117;

  sub_1002DD1E0(v115);
  memcpy(v114, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v30 = v119;
  v31 = v120;

  sub_1002DD1E0(v118);
  memcpy(v122, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  memcpy(v121, v114, 0xC2uLL);
  sub_1002DD1E0(v121);
  if (v121[112] == 1)
  {
    memcpy(v114, __dst, 0xD2uLL);
    Binding.projectedValue.getter();
    swift_getKeyPath();
    memcpy(v114, v122, 0xD2uLL);
    Binding.subscript.getter();

    sub_10003FDF4(v122, qword_100CCE750, &qword_100A6F638);
    v29 = LOBYTE(v106[2]);
    v55 = v106[0];

    v4 = v106[1];

    v5 = &off_100C44260;
  }

  else
  {
    v55 = 0;
    v4 = 0;
    v29 = 0;
    v5 = 0;
  }

  memcpy(v114, __dst, 0xD2uLL);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  memcpy(v114, v122, 0xD2uLL);
  Binding.subscript.getter();

  sub_10003FDF4(v122, qword_100CCE750, &qword_100A6F638);
  v27 = v98[1];
  v28 = v98[0];
  v26 = v98[2];
  memcpy(v106, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v24 = v108;
  v25 = v109;

  sub_1002DD1E0(v107);
  memcpy(v106, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v22 = v111;
  v23 = v112;

  sub_1002DD1E0(v110);
  memcpy(v114, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  memcpy(v113, v106, 0xC2uLL);
  sub_1002DD1E0(v113);
  if (v113[152] == 1)
  {
    memcpy(v106, __dst, 0xD2uLL);
    Binding.projectedValue.getter();
    swift_getKeyPath();
    memcpy(v106, v114, 0xD2uLL);
    Binding.subscript.getter();

    sub_10003FDF4(v114, qword_100CCE750, &qword_100A6F638);
    v6 = LOBYTE(v98[2]);
    v21 = v98[0];

    v20 = v98[1];

    v7 = &off_100C44288;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v6 = 0;
    v7 = 0;
  }

  memcpy(v106, __dst, 0xD2uLL);
  Binding.projectedValue.getter();
  swift_getKeyPath();
  memcpy(v106, v114, 0xD2uLL);
  Binding.subscript.getter();

  sub_10003FDF4(v114, qword_100CCE750, &qword_100A6F638);
  v18 = v105[1];
  v19 = v105[0];
  v17 = v105[2];
  memcpy(v98, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v15 = v100;
  v16 = v101;

  sub_1002DD1E0(v99);
  memcpy(v98, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  v13 = v103;
  v14 = v104;

  sub_1002DD1E0(v102);
  memcpy(v106, __dst, 0xD2uLL);
  Binding.wrappedValue.getter();
  memcpy(v105, v98, 0xC2uLL);
  sub_1002DD1E0(v105);
  if (LOBYTE(v105[24]) == 1)
  {
    memcpy(v98, __dst, 0xD2uLL);
    Binding.projectedValue.getter();
    swift_getKeyPath();
    memcpy(v98, v106, 0xD2uLL);
    Binding.subscript.getter();

    sub_10003FDF4(v106, qword_100CCE750, &qword_100A6F638);
    v8 = v93;
    v9 = v91;

    v10 = v92;

    v11 = &off_100C442B0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    v11 = 0;
  }

  v98[0] = v50;
  v98[1] = v49;
  LOBYTE(v98[2]) = v48;
  v98[3] = v46;
  v98[4] = v47;
  v98[5] = v44;
  v98[6] = v45;
  v91 = v43;
  v92 = v42;
  v93 = v41;
  v94 = v39;
  v95 = v40;
  v96 = v37;
  v97 = v38;
  v106[0] = v98;
  v106[1] = &v91;
  v87 = v56;
  v88 = v52;
  v89 = v54;
  v90 = v53;
  v81[0] = v36;
  v81[1] = v35;
  v82 = v34;
  v83 = v32;
  v84 = v33;
  v85 = v30;
  v86 = v31;
  v106[2] = &v87;
  v106[3] = v81;
  v77 = v55;
  v78 = v4;
  v79 = v29;
  v80 = v5;
  v71[0] = v28;
  v71[1] = v27;
  v72 = v26;
  v73 = v24;
  v74 = v25;
  v75 = v22;
  v76 = v23;
  v106[4] = &v77;
  v106[5] = v71;
  v67 = v21;
  v68 = v20;
  v69 = v6;
  v70 = v7;
  v61[0] = v19;
  v61[1] = v18;
  v62 = v17;
  v63 = v15;
  v64 = v16;
  v65 = v13;
  v66 = v14;
  v106[6] = &v67;
  v106[7] = v61;
  v57 = v9;
  v58 = v10;
  v59 = v8;
  v60 = v11;
  v106[8] = &v57;
  sub_1003E915C(v106, v51);
  sub_100652540(v21, v20);
  sub_100652540(v55, v4);
  sub_100652540(v56, v52);
  sub_100652540(v9, v10);
  sub_100652540(v57, v58);

  sub_100652540(v67, v68);

  sub_100652540(v77, v78);

  sub_100652540(v87, v88);
}

uint64_t sub_100652540(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100652590(uint64_t a1)
{
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Array();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100652620(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      return sub_100024D10((v17 + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_100652770(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            sub_10001B350((v18 + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_10065297C()
{
  result = qword_100CCE7D8;
  if (!qword_100CCE7D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCE748, &qword_100A6F608);
    v4[0] = sub_100652A08();
    v4[1] = sub_100652ACC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCE7D8);
  }

  return result;
}

unint64_t sub_100652A08()
{
  result = qword_100CCE7E0;
  if (!qword_100CCE7E0)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CCE7E8, qword_100A6F7E8);
    v4[0] = sub_10051106C();
    v4[1] = sub_100006F64(&qword_100CCE740, &qword_100CCE738, &qword_100A6F600, &protocol conformance descriptor for TupleView<A>);
    v4[2] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CCE7E0);
  }

  return result;
}

unint64_t sub_100652ACC()
{
  result = qword_100CA3F68;
  if (!qword_100CA3F68)
  {
    v3 = type metadata accessor for AutomationInfoViewModifier(255);
    result = swift_getWitnessTable(byte_100A56C3C, v3, v0, v1);
    atomic_store(result, &qword_100CA3F68);
  }

  return result;
}

uint64_t sub_100652B40()
{
  sub_10022C350(&unk_100CB3AA0, &unk_100A55B90);
  Binding.projectedValue.getter();
  sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
  return Toggle.init(isOn:label:)();
}

uint64_t sub_100652CB4@<X0>(uint64_t a2@<X8>)
{
  sub_10002D5A4();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100652D20@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CBB908, &unk_100A511B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;

  Image.init(systemName:)();
  static Image.TemplateRenderingMode.macSafeOriginal.getter();
  v6 = type metadata accessor for Image.TemplateRenderingMode();
  sub_10001B350(v5, 0, 1, v6);
  v7 = Image.renderingMode(_:)();

  result = sub_10003FDF4(v5, &qword_100CBB908, &unk_100A511B0);
  *a2 = v7;
  return result;
}

void *sub_100652E18()
{
  type metadata accessor for Binding();

  return Binding.projectedValue.getter();
}

uint64_t sub_100652EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v72 = *(v3 - 8);
  __chkstk_darwin(v3);
  v71 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Binding();
  __chkstk_darwin(v6 - 8);
  v69 = &v48 - v7;
  v8 = type metadata accessor for Array();
  v9 = *(a1 + 32);
  v80 = &type metadata for Text;
  v81 = v5;
  v82 = &protocol witness table for Text;
  v83 = v9;
  v10 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v8);
  v80 = v8;
  v81 = v5;
  v82 = OpaqueTypeMetadata2;
  v83 = WitnessTable;
  v62 = v10;
  v84 = v10;
  v13 = type metadata accessor for ForEach();
  v66 = v13;
  v80 = &type metadata for Text;
  v81 = v5;
  v82 = &protocol witness table for Text;
  v83 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v13, &OpaqueTypeConformance2);
  v80 = &type metadata for Text;
  v81 = v5;
  v82 = v13;
  v83 = &protocol witness table for Text;
  v84 = v10;
  v85 = v64;
  v14 = type metadata accessor for Picker();
  v68 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v61 = &v48 - v16;
  v17 = swift_getWitnessTable(&protocol conformance descriptor for Picker<A, B, C>, v14, v15);
  v80 = v14;
  v81 = v3;
  v52 = v3;
  v82 = v17;
  v83 = &protocol witness table for InlinePickerStyle;
  v18 = v17;
  v53 = v17;
  v19 = swift_getOpaqueTypeMetadata2();
  v57 = v19;
  v63 = *(v19 - 8);
  __chkstk_darwin(v19);
  v51 = &v48 - v20;
  v80 = v14;
  v81 = v3;
  v82 = v18;
  v83 = &protocol witness table for InlinePickerStyle;
  v56 = swift_getOpaqueTypeConformance2();
  v80 = v19;
  v81 = v56;
  v58 = &opaque type descriptor for <<opaque return type of View.labelsHidden()>>;
  v55 = swift_getOpaqueTypeMetadata2();
  v60 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v48 - v21;
  v54 = type metadata accessor for ModifiedContent();
  v65 = *(v54 - 8);
  __chkstk_darwin(v54);
  v49 = &v48 - v22;
  sub_10022E824(&qword_100CA5110, &qword_100A2F320);
  v23 = type metadata accessor for ModifiedContent();
  v67 = *(v23 - 8);
  __chkstk_darwin(v23);
  v50 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v59 = &v48 - v26;
  LocalizedStringKey.init(stringLiteral:)();
  v27 = a1;
  v28 = v70;
  sub_100652E18();
  v29 = *(v27 + 24);
  v74 = v5;
  v75 = v29;
  v76 = v62;
  v77 = v28;
  v30 = v61;
  Picker<>.init(_:selection:content:)();
  v31 = v71;
  InlinePickerStyle.init()();
  v32 = v51;
  v33 = v52;
  View.pickerStyle<A>(_:)();
  (*(v72 + 8))(v31, v33);
  (*(v68 + 8))(v30, v14);
  v34 = v48;
  v35 = v57;
  v36 = v56;
  View.labelsHidden()();
  (*(v63 + 8))(v32, v35);
  static Edge.Set.leading.getter();
  v80 = v35;
  v81 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v49;
  v39 = v55;
  View.padding(_:_:)();
  (*(v60 + 8))(v34, v39);
  static Color.blue.getter();
  v79[0] = v37;
  v79[1] = &protocol witness table for _PaddingLayout;
  v40 = v54;
  v41 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v54, v79);
  v42 = v50;
  View.accentColor(_:)();

  (*(v65 + 8))(v38, v40);
  v43 = sub_100006F64(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v78[0] = v41;
  v78[1] = v43;
  v44 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v23, v78);
  v45 = v59;
  sub_1000833D8(v42, v23, v44);
  v46 = *(v67 + 8);
  v46(v42, v23);
  sub_1000833D8(v45, v23, v44);
  return (v46)(v45, v23);
}

uint64_t sub_1006537B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v24 = type metadata accessor for Array();
  v21[1] = &unk_100AEBB48;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v24);
  v30 = v24;
  v31 = a2;
  v32 = OpaqueTypeMetadata2;
  v33 = WitnessTable;
  v34 = a4;
  v9 = type metadata accessor for ForEach();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v29[1] = *(a1 + *(type metadata accessor for ConditionPicker(0, a2, a3, a4) + 44));
  v26 = a2;
  v27 = a3;
  v28 = a4;
  swift_getKeyPath();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;

  v30 = &type metadata for Text;
  v31 = a2;
  v32 = &protocol witness table for Text;
  v33 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  v29[0] = OpaqueTypeConformance2;
  v17 = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v9, v29);
  sub_1000833D8(v12, v9, v17);
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_1000833D8(v15, v9, v17);
  return (v18)(v15, v9);
}

uint64_t sub_100653A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a1;
  v30 = a5;
  v32 = a2;
  v31 = &type metadata for Text;
  v33 = &protocol witness table for Text;
  v34 = a4;
  v27 = &unk_100AEBB48;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  v28 = OpaqueTypeMetadata2;
  v29 = v8;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v26 = &v25 - v12;
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v13;
  sub_10002D5A4();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v31 = v14;
  v32 = v15;
  v18 = v17 & 1;
  LOBYTE(v33) = v17 & 1;
  v34 = v19;
  j___s7Weather38LocationSearchEntityFromStringResolverV23__derived_struct_equalsySbAC_ACtFZ();
  sub_10022C398();
  sub_10010CD64(v14, v16, v18);

  v31 = &type metadata for Text;
  v32 = a2;
  v33 = &protocol witness table for Text;
  v34 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v26;
  v22 = v28;
  sub_1000833D8(v10, v28, OpaqueTypeConformance2);
  v23 = *(v29 + 8);
  v23(v10, v22);
  sub_1000833D8(v21, v22, OpaqueTypeConformance2);
  return (v23)(v21, v22);
}

double sub_100653CE8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA23E0 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA23F0 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA23E8 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA23D8 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA23D0 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_100653E54(char a1, char a2, uint64_t a3)
{
  v80 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v77 = &v73 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v73 - v32;
  __chkstk_darwin(v34);
  v36 = &v73 - v35;
  sub_100653CE8(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v39, v14, &qword_100CA5008, &unk_100A2F7B0);
  v40 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v40) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v41], v24, v42);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v43);
    sub_100566A5C(v38, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v46);
      v44 = 0;
      v45 = v80;
      v47 = &v33[*(v80 + 20)];
      v48 = v82[1];
      *v47 = v82[0];
      *(v47 + 1) = v48;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v44 = 1;
  v45 = v80;
LABEL_7:
  sub_10001B350(v33, v44, 1, v45);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v38, v84);
  sub_100924AFC(v3, v84, v81);
  sub_10031694C(*(a3 + 16) + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v38, v85);
  v49 = v75;
  if (v86 & 1) != 0 || (sub_100011474(), v50 = v77, sub_1001B6FB0(v20, v77, v51), v52 = (v50 + *(v45 + 20)), v53 = v85[1], *v52 = v85[0], v52[1] = v53, sub_100035AD0(v36, v49, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v56 = v74, sub_10031694C(v54 + v55, v74, v57), sub_100566AB0(v38, v87), v58 = v78, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v56, v58, v59);
    v60 = (v58 + *(v45 + 20));
    v61 = v87[1];
    *v60 = v87[0];
    v60[1] = v61;
    sub_10001BD64();
    v64 = v76;
    sub_10031694C(v62 + v63, v76, v65);
    sub_100566AE8(v38, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v66 = v64;
      v67 = v79;
      sub_1001B6FB0(v66, v79, v68);
      v69 = (v67 + *(v45 + 20));
      v70 = v89[1];
      *v69 = v89[0];
      v69[1] = v70;
      v71 = sub_100924C14(v81, v50, v49, v58, v67);
      sub_1000180EC(v36, &qword_100CAC7F8, &qword_100A65EA0);
      return v71;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1006544D8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v135 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v30 = sub_100013600();
    sub_100003E18(v30);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_airQuality);
    *(v12 + 128) = sub_1001B38A0(v30);
    *(v12 + 136) = v31;
    *(v12 + 144) = v32;
    v132 = v13 + 2 * v14;
    v133 = v14;
    v33 = v14;
    v34 = v15;
    v35 = swift_allocObject();
    v36 = sub_10001361C(v35, xmmword_100A2D320) + v13;
    v37 = a1;
    v38 = *(a1 + 16);
    v39 = v37;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v38 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v36[v33], v7);
    *(v12 + 152) = sub_1001B38A0(v35);
    *(v12 + 160) = v40;
    *(v12 + 168) = v41;
    v134 = v34;
    v42 = swift_allocObject();
    sub_1000056EC(v42);
    v44 = v43 + v13;
    v45 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v45 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v133[v44], v7);
    *(v12 + 176) = sub_1001B38A0(v35);
    *(v12 + 184) = v46;
    *(v12 + 192) = v47;
    v48 = swift_allocObject();
    sub_1000056EC(v48);
    v50 = v49 + v13;
    v51 = v135;
    v52 = *(v135 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v53 = v133;
    sub_10031694C(v52 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v133[v50], v7);
    *(v12 + 200) = sub_1001B38A0(v35);
    *(v12 + 208) = v54;
    *(v12 + 216) = v55;
    v56 = sub_10000C998();
    sub_1000056EC(v56);
    v58 = v57 + v13;
    v59 = *(v51 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v60 = v58 + v53;
    v61 = v53;
    sub_10031694C(v59 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v60, v7);
    *(v12 + 224) = sub_1001B38A0(v35);
    *(v12 + 232) = v62;
    *(v12 + 240) = v63;
    v64 = sub_10000C998();
    sub_100003E18(v64);
    v66 = v65 + v13;
    v67 = *(v51 + 16);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v65 + v13, v7);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v66 + v61, v7);
    *(v12 + 248) = sub_1001B38A0(v64);
    *(v12 + 256) = v68;
    *(v12 + 264) = v69;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BCA0;
    v70 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v71 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v72 = *(v7 + 72);
    v73 = *(v7 + 80);
    v74 = v70;
    v75 = swift_allocObject();
    sub_10001361C(v75, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v76, v75 + v71, v77);
    *(v12 + 32) = sub_1001B38A0(v75);
    *(v12 + 40) = v78;
    *(v12 + 48) = v79;
    sub_1000167B0();
    v80 = swift_allocObject();
    sub_1000056EC(v80);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v75);
    *(v12 + 64) = v81;
    *(v12 + 72) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 80) = sub_1001B38A0(v75);
    *(v12 + 88) = v84;
    *(v12 + 96) = v85;
    sub_1000167B0();
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 104) = sub_1001B38A0(v75);
    *(v12 + 112) = v87;
    *(v12 + 120) = v88;
    sub_1000167B0();
    v89 = swift_allocObject();
    sub_1000056EC(v89);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_airQuality);
    *(v12 + 128) = sub_1001B38A0(v75);
    *(v12 + 136) = v90;
    *(v12 + 144) = v91;
    v134 = v73;
    v92 = swift_allocObject();
    sub_1000056EC(v92);
    sub_10031694C(v9, v93 + v71, v7);
    *(v12 + 152) = sub_1001B38A0(v75);
    *(v12 + 160) = v94;
    *(v12 + 168) = v95;
    v96 = v71 + 2 * v72;
    v97 = v72;
    sub_1000167B0();
    v98 = swift_allocObject();
    v99 = sub_10001361C(v98, xmmword_100A2D320);
    v133 = v9;
    v100 = v99 + v71;
    v101 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v131[0] = v97;
    sub_10031694C(v101 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v100[v97], v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v102;
    *(v12 + 192) = v103;
    v131[1] = v96;
    v104 = swift_allocObject();
    sub_100003E18(v104);
    v106 = v105 + v71;
    v107 = v135;
    v108 = *(v135 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v106 + v97, v7);
    *(v12 + 200) = sub_1001B38A0(v104);
    *(v12 + 208) = v109;
    *(v12 + 216) = v110;
    sub_1000167B0();
    v132 = v74;
    v111 = swift_allocObject();
    sub_100003E18(v111);
    v113 = v112 + v71;
    v114 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v115 = v131[0];
    sub_10031694C(v114 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v113 + v131[0], v7);
    *(v12 + 224) = sub_1001B38A0(v111);
    *(v12 + 232) = v116;
    *(v12 + 240) = v117;
    sub_1000167B0();
    v118 = swift_allocObject();
    sub_100003E18(v118);
    v120 = v119 + v71;
    v121 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v120 + v115, v7);
    *(v12 + 248) = sub_1001B38A0(v118);
    *(v12 + 256) = v122;
    *(v12 + 264) = v123;
    v124 = swift_allocObject();
    sub_100003E18(v124);
    v126 = v125 + v71;
    v127 = *(v135 + 16);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v125 + v71, v7);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v126 + v115, v7);
    *(v12 + 272) = sub_1001B38A0(v124);
    *(v12 + 280) = v128;
    *(v12 + 288) = v129;
    sub_1003169AC(v133, v7);
  }

  return v12;
}

void sub_100654DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BB80;
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A3BB90;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3BBA0;
  v20[0] = xmmword_100A3BBB0;
  v20[1] = xmmword_100A3BBC0;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BB70;
  v19[1] = xmmword_100A3BBD0;
  v18[0] = xmmword_100A2C3F0;
  v18[1] = xmmword_100A3BBC0;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBE0;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A3BB90;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBF0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC10;
  v36 = v11;
  v37 = &v10;
  sub_1000177F4(&v9, a2, a3, a4, a5, a6, a7, a8, 0, 1, 10, 11, 0, 1, 12, 13, 0, 1, 9, 10);
  qword_100D90660 = v8;
}

void sub_100654ED8()
{
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BB80;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v16 = v15;
  v17 = v14;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBA0;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC10;
  v18 = v13;
  v19 = v12;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBD0;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC10;
  v20 = v11;
  v21 = v10;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A2C3F0;
  v22 = v9;
  v23 = v8;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC00;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC20;
  v24 = v7;
  v25 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BC30;
  v26 = v5;
  v27 = v4;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC00;
  v28 = v3;
  v29 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC20;
  v30 = v1;
  sub_100555FC0();
  qword_100D90668 = v0;
}

void sub_100654FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = 2;
  v24[1] = 4;
  v25 = xmmword_100A3BC40;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC30;
  v26 = v24;
  v27 = v23;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v21[0] = xmmword_100A3BBD0;
  v21[1] = xmmword_100A3BB80;
  v28 = v22;
  v29 = v21;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BC30;
  v30 = v19;
  v31 = v18;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BB80;
  v32 = v17;
  v33 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC30;
  v34 = v15;
  v35 = v14;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BB80;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v36 = v13;
  v37 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC50;
  v38 = v11;
  v39 = &v10;
  sub_1000177F4(&v9, a2, a3, a4, a5, a6, a7, a8, 2, 4, 4, 5, 1, 2, 7, 8, 2, 3, 5, 6);
  qword_100D90670 = v8;
}

void sub_10065512C()
{
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BBD0;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BB80;
  v18 = v17;
  v19 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC50;
  v20 = v15;
  v21 = v14;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BB80;
  v22 = &v11;
  v23 = v10;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BC50;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBB0;
  v24 = v9;
  v25 = v8;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BB80;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC50;
  v26 = v7;
  v27 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC60;
  v28 = v5;
  v29 = v4;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC60;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BB80;
  v30 = v3;
  v31 = v2;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BC40;
  v32 = v1;
  sub_100555FC0();
  qword_100D90678 = v0;
}

void sub_100655260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A2D320;
  v23[1] = xmmword_100A3BBD0;
  v22[0] = xmmword_100A3BC50;
  v22[1] = xmmword_100A3BC60;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A3BC60;
  v20[1] = xmmword_100A3BC40;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BC80;
  v19[1] = xmmword_100A2C3F0;
  v18[0] = xmmword_100A3BC50;
  v18[1] = xmmword_100A3BC40;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BC90;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BBD0;
  v16[1] = xmmword_100A3BC60;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A2D320;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A3BC50;
  v13[1] = xmmword_100A3BBD0;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v36 = v11;
  v37 = &v10;
  sub_1000177F4(&v9, a2, a3, a4, a5, a6, a7, a8, 4, 5, 2, 3, 3, 4, 4, 5, 2, 3, 3, 4);
  qword_100D90680 = v8;
}

uint64_t sub_100655380(uint64_t a1, void (*a2)(char *))
{
  v38 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v41 = v6;
  __chkstk_darwin(v7);
  sub_100003878();
  v40 = v8;
  __chkstk_darwin(v9);
  sub_100003878();
  v39 = v10;
  __chkstk_darwin(v11);
  sub_100013628();
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for LocationViewComponent(0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v36 - v27;

  sub_1005D71C4(v29, a2);
  v37 = v30;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_map, v21, type metadata accessor for LocationViewComponent);
  a2(v21);
  sub_100020648();
  sub_10001B350(v28, 0, 1, v38);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_airQuality);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_nextHourPrecipitation);
  a2(v21);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_severeAlert);
  a2(v21);
  sub_100020648();
  sub_100035AD0(v28, v25, &qword_100CA5008, &unk_100A2F7B0);
  v31 = v39;
  sub_10031694C(v17, v39, type metadata accessor for LocationComponentContainerViewModel);
  v32 = v40;
  sub_10031694C(v14, v40, type metadata accessor for LocationComponentContainerViewModel);
  v33 = v41;
  sub_10031694C(v2, v41, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for SevereNhpAqiContent._Storage(0);
  swift_allocObject();
  v34 = sub_1002D9758(v37, v25, v31, v32, v33);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v17, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v28, &qword_100CA5008, &unk_100A2F7B0);
  return v34;
}

uint64_t sub_100655714(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  sub_10022C350(&qword_100CA3508, &unk_100A2D530);
  v6 = *(type metadata accessor for MainAction(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100A2D320;
  v10 = v9 + v8;
  sub_1006559C8(a1, v10);
  type metadata accessor for MoonDetailViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v10 + v7) = a2;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_10006D53C(v15, v12);
  v13 = v9;
  v14 = 0;
  sub_10004F1B0(v12, v5);
  sub_10003FDF4(v12, &qword_100CA3510, &unk_100A2D540);
  return sub_10003FDF4(v15, &unk_100CD81B0, &unk_100A3B000);
}

uint64_t sub_1006558B0(char a1)
{
  v3 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  *v5 = a1;
  type metadata accessor for MoonDetailViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v5, v9, v7, v6);
  sub_10003FDF4(v9, &unk_100CD81B0, &unk_100A3B000);
  return sub_1000547B8(v5);
}

uint64_t sub_1006559C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonDetailSelectedDate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100655A2C()
{
  static AnyTransition.opacity.getter();
  if (qword_100CA2068 != -1)
  {
    swift_once();
  }

  v0 = AnyTransition.animation(_:)();

  qword_100D90688 = v0;
  return result;
}

double sub_100655ABC()
{
  v0 = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  sub_100007074(v0, qword_100D90690);
  v1 = sub_10000703C(v0, qword_100D90690);
  sub_100655B24(v1);
  v2 = &v1[*(v0 + 20)];
  result = 0.0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  return result;
}

uint64_t sub_100655B24@<X0>(char *a1@<X8>)
{
  v2 = sub_10022C350(qword_100CCEA00, &qword_100AA6B60);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = v9[13];
  v16(&v25 - v14, enum case for DynamicTypeSize.small(_:), v8, v13);
  (v16)(v11, enum case for DynamicTypeSize.accessibility5(_:), v8);
  sub_10001F3EC();
  sub_1006560F4(v17, v18, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v20 = v9[4];
    v20(v7, v15, v8);
    v20(&v7[*(v2 + 48)], v11, v8);
    sub_100656210(v7, v4);
    v21 = *(v2 + 48);
    v20(a1, v4, v8);
    v22 = v9[1];
    v22(&v4[v21], v8);
    sub_100656280(v7, v4);
    v23 = *(v2 + 48);
    v24 = sub_10022C350(&qword_100CB7090, &unk_100A4C520);
    v20(&a1[*(v24 + 36)], &v4[v23], v8);
    return (v22)(v4, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100655DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1006560F4(&qword_100CCE9D8, type metadata accessor for LocationComponentBackgroundConfiguration, asc_100A6F9F8);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100655E64()
{
  v0 = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  sub_100007074(v0, qword_100CCE898);
  v1 = sub_10000703C(v0, qword_100CCE898);
  if (qword_100CA2400 != -1)
  {
    swift_once();
  }

  v2 = sub_10000703C(v0, qword_100D90690);

  return sub_1001A0ED4(v2, v1);
}

uint64_t sub_100655F00@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2408 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocationComponentBackgroundConfiguration(0);
  v3 = sub_10000703C(v2, qword_100CCE898);

  return sub_1001A0ED4(v3, a1);
}

BOOL sub_100655F7C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DynamicTypeSize();
  sub_10001F3EC();
  v6 = sub_1006560F4(v4, v5, &protocol conformance descriptor for DynamicTypeSize);
  if ((sub_10001C8F0(v6) & 1) == 0)
  {
    return 0;
  }

  v7 = sub_10022C350(&qword_100CB7090, &unk_100A4C520);
  if ((sub_10001067C(v7) & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for LocationComponentBackgroundConfiguration(0) + 20);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 32);
  v11 = a2 + v8;
  if ((v10 & 1) == 0)
  {
    return (*(v11 + 32) & 1) == 0 && CGRectEqualToRect(*v9, *v11);
  }

  return (*(v11 + 32) & 1) != 0;
}

BOOL sub_10065604C()
{
  type metadata accessor for DynamicTypeSize();
  sub_10001F3EC();
  v2 = sub_1006560F4(v0, v1, &protocol conformance descriptor for DynamicTypeSize);
  result = 0;
  if (sub_10001C8F0(v2))
  {
    v3 = sub_10022C350(&qword_100CB7090, &unk_100A4C520);
    if (sub_10001067C(v3))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1006560F4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_100656194(uint64_t a1)
{
  result = sub_1006561BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1006561BC()
{
  result = qword_100CCE9F8;
  if (!qword_100CCE9F8)
  {
    result = swift_getWitnessTable(byte_100A6FAD8, &type metadata for LocationComponentBackgroundConfigurationPreferenceKey, v0, v1);
    atomic_store(result, &qword_100CCE9F8);
  }

  return result;
}

uint64_t sub_100656210(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(qword_100CCEA00, &qword_100AA6B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100656280(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(qword_100CCEA00, &qword_100AA6B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006562F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return sub_100024D10((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_100656470(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 16] & ~v10;

            sub_10001B350(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1006566BC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8;
  v12 = type metadata accessor for SlowDeviceGridView(0, v10, v8, v11);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v25 - v17;
  v25[0] = *(a1 + 1);
  v20 = type metadata accessor for LocationGridDeterminationView(0, a2, v9, v19);
  (*(v5 + 16))(v7, &a1[*(v20 + 36)], a2);
  v21 = swift_unknownObjectRetain();
  sub_1006568E0(v21, v25[0], v7, a2, v9, v15);
  WitnessTable = swift_getWitnessTable(asc_100A6FC58, v12);
  sub_1000833D8(v15, v12, WitnessTable);
  v23 = *(v13 + 8);
  v23(v15, v12);
  sub_1000833D8(v18, v12, WitnessTable);
  return (v23)(v18, v12);
}

uint64_t sub_1006568E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v9 = type metadata accessor for SlowDeviceGridView(0, a4, a5, a4);
  (*(*(a4 - 8) + 32))(&a6[v9[9]], a3, a4);
  v10 = v9[10];
  memset(__src, 0, sizeof(__src));
  v15 = 255;
  v16 = 0u;
  v17 = 0u;
  sub_100656ACC(v13, __src);
  memcpy(&a6[v10], v13, 0x50uLL);
  v11 = &a6[v9[11]];
  result = swift_getKeyPath();
  *v11 = result;
  v11[72] = 0;
  return result;
}

uint64_t sub_1006569D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocationGridDeterminationView(0, v9, v10, v11);
  sub_1000833D8(a1 + *(v12 + 36), a2, a3);
  sub_1000833D8(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t *sub_100656ACC@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_10022C350(qword_100CCEA90, &qword_100A6FC28);
  State.init(wrappedValue:)();
  return memcpy(a1, __srca, 0x50uLL);
}

unint64_t sub_100656B50()
{
  result = qword_100CCEA88;
  if (!qword_100CCEA88)
  {
    IsDeviceVerySlowViewInputPredicate = type metadata accessor for IsDeviceVerySlowViewInputPredicate();
    result = swift_getWitnessTable(&protocol conformance descriptor for IsDeviceVerySlowViewInputPredicate, IsDeviceVerySlowViewInputPredicate, v0, v1);
    atomic_store(result, &qword_100CCEA88);
  }

  return result;
}

uint64_t sub_100656BA8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_100024D10((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 73;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_100656D10(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 73;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 16] & ~v10;

            sub_10001B350(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100656F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v74 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v53 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 - 8);
  v77 = *(v5 + 64);
  __chkstk_darwin(v6);
  v78 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = type metadata accessor for Optional();
  v85 = *(a1 + 24);
  v10 = v85;
  v76 = v85;
  swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v9, &v85);
  v11 = type metadata accessor for ZStack();
  v62 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v57 = v11;
  v14 = type metadata accessor for ModifiedContent();
  v70 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v75 = &v53 - v16;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for ZStack<A>, v11, v15);
  v84[0] = WitnessTable;
  v84[1] = &protocol witness table for _AppearanceActionModifier;
  v17 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v84);
  v18 = sub_10016AE88();
  v71 = v14;
  __dst[0] = v14;
  __dst[1] = &unk_100C730C0;
  v66 = v18;
  v67 = v17;
  __dst[2] = v17;
  __dst[3] = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = *(OpaqueTypeMetadata2 - 8);
  v69 = OpaqueTypeMetadata2;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v64 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.n128_f64[0] = __chkstk_darwin(v21);
  v65 = &v53 - v23;
  v24 = v8;
  v79 = v8;
  v80 = v10;
  v25 = v63;
  v81 = v63;
  j___s7SwiftUI9AlignmentV6centerACvgZ(v22);
  v26 = v13;
  ZStack.init(alignment:content:)();
  v27 = v5;
  v28 = v78;
  v29 = v61;
  v58 = *(v5 + 16);
  v59 = v5 + 16;
  v58(v78, v25, v61);
  v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v31 = swift_allocObject();
  v32 = v76;
  *(v31 + 16) = v24;
  *(v31 + 24) = v32;
  v33 = v27 + 32;
  v34 = *(v27 + 32);
  v60 = v30;
  v72 = v24;
  v73 = v33;
  v34(v31 + v30, v28, v29);
  v35 = v57;
  View.onAppear(perform:)();

  (*(v62 + 8))(v26, v35);
  v36 = *(v29 + 44);
  memcpy(__dst, (v25 + v36), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v83, (v25 + v36), sizeof(v83));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v38 = v53;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003FDF4(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v54 + 8))(v38, v55);
  }

  memcpy(v82, v83, sizeof(v82));
  v39 = v78;
  v58(v78, v25, v29);
  v40 = v60;
  v41 = swift_allocObject();
  v42 = v76;
  *(v41 + 16) = v72;
  *(v41 + 24) = v42;
  v34(v41 + v40, v39, v29);
  v43 = v71;
  v45 = v66;
  v44 = v67;
  static VerticalSizingBehaviorKey.defaultValue.getter();
  v46 = v64;
  v47 = v75;
  View.onChange<A>(of:initial:_:)();

  (*(v70 + 8))(v47, v43);
  v82[0] = v43;
  v82[1] = &unk_100C730C0;
  v82[2] = v44;
  v82[3] = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v65;
  v50 = v69;
  sub_1000833D8(v46, v69, OpaqueTypeConformance2);
  v51 = *(v68 + 8);
  v51(v46, v50);
  sub_1000833D8(v49, v50, OpaqueTypeConformance2);
  return (v51)(v49, v50);
}

uint64_t sub_100657680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v27 = *(a2 - 8);
  __chkstk_darwin(a1);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v19 = type metadata accessor for SlowDeviceGridView(0, a2, a3, v18);
  memcpy(__dst, (a1 + *(v19 + 40)), sizeof(__dst));
  sub_10022C350(&qword_100CCEB20, &unk_100A6FCB0);
  State.wrappedValue.getter();
  if (v30 == 0xFF)
  {
    v20 = 1;
  }

  else
  {
    sub_1000833D8(a1 + *(v19 + 36), a2, a3);
    v21 = v26;
    sub_1000833D8(v10, a2, a3);
    v22 = v27;
    (*(v27 + 8))(v10, a2);
    (*(v22 + 32))(v14, v21, a2);
    v20 = 0;
  }

  sub_10001B350(v14, v20, 1, a2);
  sub_1003E7FD4(v14, v17);
  v23 = *(v12 + 8);
  v23(v14, v11);
  v29 = a3;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v11, &v29);
  sub_1000833D8(v17, v11, WitnessTable);
  return (v23)(v17, v11);
}

uint64_t sub_100657968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SlowDeviceGridView(0, a2, a3, v10);
  v12 = *(v11 + 44);
  memcpy(__dst, (a1 + v12), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (a1 + v12), sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003FDF4(__dst, &qword_100CB71A8, &unk_100A4C930);
    (*(v7 + 8))(v9, v6);
  }

  v14 = *(v11 + 40);
  memcpy(v18, (a1 + v14), sizeof(v18));
  memcpy(v17, (a1 + v14), sizeof(v17));
  memcpy(v16, __src, sizeof(v16));
  sub_100657DB0(v18, v19);
  sub_10022C350(&qword_100CCEB20, &unk_100A6FCB0);
  State.wrappedValue.setter();
  memcpy(v19, v17, sizeof(v19));
  return sub_10003FDF4(v19, &qword_100CCEB20, &unk_100A6FCB0);
}

uint64_t sub_100657B98(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10078E3B8();
  v10 = *(type metadata accessor for SlowDeviceGridView(0, a4, a5, v9) + 40);
  memcpy(__dst, (a3 + v10), sizeof(__dst));
  memcpy(__src, (a3 + v10), sizeof(__src));
  memcpy(v12, a2, sizeof(v12));
  sub_100657DB0(__dst, v15);
  sub_10022C350(&qword_100CCEB20, &unk_100A6FCB0);
  State.wrappedValue.setter();
  memcpy(v15, __src, sizeof(v15));
  return sub_10003FDF4(v15, &qword_100CCEB20, &unk_100A6FCB0);
}

uint64_t sub_100657C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SlowDeviceGridView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100657968(v8, v5, v6);
}

uint64_t sub_100657D14(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for SlowDeviceGridView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_100657B98(a1, a2, v10, v7, v8);
}

uint64_t sub_100657DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CCEB20, &unk_100A6FCB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100657E48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497472616863 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574614479656BLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F697463656C6573 && a2 == 0xED0000657461446ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000100AD9D70 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F697469736F5078 && a2 == 0xE90000000000006ELL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000012 && 0x8000000100AD9D90 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10065804C(char a1)
{
  result = 0x44497472616863;
  switch(a1)
  {
    case 1:
      result = 0x6574614479656BLL;
      break;
    case 2:
      v3 = 0x7463656C6573;
      goto LABEL_5;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      v3 = 0x7469736F5078;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F69000000000000;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100658114(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for DetailChartSelection(0);
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0 || *(a1 + *(v5 + 32)) != *(a2 + *(v5 + 32)))
  {
    return 0;
  }

  v6 = *(v5 + 36);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if (v8)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1006581FC(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CCEBE0, &qword_100A6FDA8);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_100658A80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v19 = *v3;
  v20 = v11;
  v21 = 0;
  sub_100658B28();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for DetailChartSelection(0);
    v13 = v12[5];
    LOBYTE(v19) = 1;
    type metadata accessor for Date();
    sub_10005B714(&qword_100CA39B8, &protocol conformance descriptor for Date);
    sub_10001C92C(v3 + v13);
    v14 = v12[6];
    LOBYTE(v19) = 2;
    sub_10001C92C(v3 + v14);
    v15 = v12[7];
    LOBYTE(v19) = 3;
    sub_10001C92C(v3 + v15);
    v19 = *(v3 + v12[8]);
    v21 = 4;
    sub_10048F96C();
    sub_100014BCC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v3 + v12[9];
    v17 = *v16;
    LOBYTE(v16) = v16[8];
    v19 = v17;
    LOBYTE(v20) = v16;
    v21 = 5;
    sub_100014BCC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100658448@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = type metadata accessor for Date();
  sub_1000037C4();
  v34 = v4;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v33 = sub_10022C350(&qword_100CCEBC8, &qword_100A6FDA0);
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v38 = type metadata accessor for DetailChartSelection(0);
  __chkstk_darwin(v38);
  v35 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[3];
  v37 = a1;
  sub_1000161C0(a1, v14);
  sub_100658A80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(v37);
  }

  v30 = v7;
  v31 = v11;
  v41 = 0;
  sub_100658AD4();
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v40;
  v16 = v35;
  *v35 = v39;
  *(v16 + 8) = v15;
  LOBYTE(v39) = 1;
  sub_10005B714(&qword_100CA3998, &protocol conformance descriptor for Date);
  sub_100019C30();
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = sub_1000047D4(v38[5]);
  v28 = v19;
  v29 = v18;
  v19(v17);
  LOBYTE(v39) = 2;
  sub_100019C30();
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = sub_1000047D4(v38[6]);
  v28(v20);
  LOBYTE(v39) = 3;
  sub_100019C30();
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = sub_1000047D4(v38[7]);
  v28(v21);
  v41 = 4;
  sub_10048F8C0();
  sub_100006418();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v16 + v38[8]) = v39;
  v41 = 5;
  sub_100006418();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = sub_10001F41C();
  v23(v22);
  v24 = v40;
  v25 = v16 + v38[9];
  *v25 = v39;
  *(v25 + 8) = v24;
  sub_100317AB8(v16, v32);
  sub_100006F14(v37);
  return sub_100544998(v16);
}