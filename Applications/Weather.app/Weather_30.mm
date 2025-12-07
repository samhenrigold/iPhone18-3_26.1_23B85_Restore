uint64_t sub_1003200EC()
{
  v1 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v1 - 8);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + *(type metadata accessor for FeelsLikeComponentViewModel(0) + 28));
  v12 = v11[1];
  v37 = *v11;
  v38 = v12;
  sub_10002D5A4();

  v13 = Text.init<A>(_:)();
  v34 = v14;
  v35 = v13;
  v16 = v15;
  v36 = v17;
  v18 = static Font.subheadline.getter();
  v33 = static Font.footnote.getter();
  v19 = v0 + *(type metadata accessor for FeelsLikeComponentView(0) + 28);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v20, 0);
    (*(v8 + 8))(v10, v7);
    LOBYTE(v20) = v37;
  }

  v22 = enum case for Font.Leading.tight(_:);
  v23 = type metadata accessor for Font.Leading();
  (*(*(v23 - 8) + 104))(v6, v22, v23);
  sub_10001B350(v6, 0, 1, v23);
  sub_1000955E0(v6, v3, &qword_100CACFF0, &unk_100A48000);

  v24 = v33;

  sub_1001C987C(v18, v24, v20 & 1, v3);
  v25 = v35;
  v26 = v16;
  v27 = v34;
  v28 = Text.font(_:)();
  v31 = v29;
  v32 = v28;

  sub_10010CD64(v25, v27, v26 & 1);

  sub_1000180EC(v6, &qword_100CACFF0, &unk_100A48000);
  return v32;
}

uint64_t sub_100320448@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  type metadata accessor for AccessibilityChildBehavior();
  sub_1000037C4();
  v32 = v4;
  v33 = v3;
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CACEC8, &qword_100A3C228);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_10022C350(&qword_100CACED0, &qword_100A3C230);
  sub_1000037E8();
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v31 = sub_10022C350(&qword_100CACED8, &qword_100A3C238);
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = &v31 - v21;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v23 = &v17[*(sub_10022C350(&qword_100CACEE0, &qword_100A3C240) + 44)];
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v24 = sub_10022C350(&qword_100CACEE8, &qword_100A3C248);
  sub_100320860(v2, &v13[*(v24 + 44)]);
  *&v13[*(v8 + 44)] = 0x3FF0000000000000;
  sub_1000955E0(v13, v10, &qword_100CACEC8, &qword_100A3C228);
  sub_1000955E0(v10, v23, &qword_100CACEC8, &qword_100A3C228);
  v25 = v23 + *(sub_10022C350(&qword_100CACEF0, &qword_100A3C250) + 48);
  *v25 = 0;
  *(v25 + 8) = 0;
  sub_1000180EC(v13, &qword_100CACEC8, &qword_100A3C228);
  sub_1000180EC(v10, &qword_100CACEC8, &qword_100A3C228);
  static AccessibilityChildBehavior.combine.getter();
  v26 = sub_100006F64(&qword_100CACEF8, &qword_100CACED0, &qword_100A3C230, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v32 + 8))(v6, v33);
  sub_1000180EC(v17, &qword_100CACED0, &qword_100A3C230);
  v35 = v14;
  v36 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  v28 = v31;
  View.accessibilityRespondsToUserInteraction(_:)();
  (*(v19 + 8))(v22, v28);
  v29 = v27 + *(sub_10022C350(&qword_100CACF00, &qword_100A3C258) + 36);
  type metadata accessor for AutomationInfoProperty(0);
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AutomationInfo(0);
  swift_storeEnumTagMultiPayload();
  *v29 = 0;
  *(v29 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v29 + 16) = result;
  *(v29 + 24) = 0;
  return result;
}

uint64_t sub_100320860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v85 = sub_10022C350(&qword_100CACF08, &qword_100A3C288);
  __chkstk_darwin(v85);
  v86 = &v77 - v3;
  v82 = sub_10022C350(&qword_100CACF10, &qword_100A3C290);
  __chkstk_darwin(v82);
  *&v84 = &v77 - v4;
  v83 = sub_10022C350(&qword_100CACF18, &qword_100A3C298);
  __chkstk_darwin(v83);
  v78 = (&v77 - v5);
  v6 = sub_10022C350(&qword_100CACF20, &qword_100A3C2A0);
  __chkstk_darwin(v6 - 8);
  v77 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v77 - v9;
  v87 = sub_10022C350(&qword_100CACF28, &qword_100A3C2A8);
  __chkstk_darwin(v87);
  *(&v84 + 1) = &v77 - v10;
  v11 = sub_10022C350(&qword_100CACF30, &unk_100A3C2B0);
  __chkstk_darwin(v11);
  v13 = &v77 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v79 = *(v14 - 8);
  v80 = v14;
  __chkstk_darwin(v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
  __chkstk_darwin(v17 - 8);
  v19 = &v77 - v18;
  v20 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  __chkstk_darwin(v20);
  v22 = (&v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for FeelsLikeComponentViewModel(0);
  sub_1000955E0(a1 + *(v23 + 24), v19, &qword_100CACF38, &unk_100A47BB0);
  if (sub_100024D10(v19, 1, v20) != 1)
  {
    sub_1003227B4(v19, v22);
    v36 = a1 + *(type metadata accessor for FeelsLikeComponentView(0) + 20);
    v37 = *v36;
    if (*(v36 + 8) == 1)
    {
      if ((v37 & 1) == 0)
      {
LABEL_6:
        sub_10031F358(&v102);
        v86 = v11;
        v39 = *(&v102 + 1);
        v38 = v102;
        v40 = v103;
        v79 = *(&v103 + 1);
        v41 = *v104;
        v42 = v81;
        sub_10031FBD0(a1, v22, v81);
        v43 = sub_1003200EC();
        v45 = v44;
        v80 = v22;
        v47 = v46;
        v49 = v48;
        KeyPath = swift_getKeyPath();
        LOBYTE(v102) = v47 & 1;
        LOBYTE(v99) = 0;
        *&v96 = v43;
        *(&v96 + 1) = v45;
        LOBYTE(v97) = v47 & 1;
        *(&v97 + 1) = v49;
        *v98 = KeyPath;
        *&v98[8] = 3;
        v98[16] = 0;
        *&v98[17] = 256;
        v51 = v77;
        sub_1000955E0(v42, v77, &qword_100CACF20, &qword_100A3C2A0);
        v90 = v96;
        v91 = v97;
        *v92 = *v98;
        *&v92[15] = *&v98[15];
        v52 = v78;
        v53 = v79;
        *v78 = __PAIR128__(v39, v38);
        *(v52 + 16) = v40;
        *(v52 + 24) = v53;
        *(v52 + 32) = v41;
        v54 = sub_10022C350(&qword_100CACF78, &qword_100A3C308);
        sub_1000955E0(v51, v52 + *(v54 + 48), &qword_100CACF20, &qword_100A3C2A0);
        v55 = v52 + *(v54 + 64);
        v56 = v90;
        v57 = v91;
        v99 = v90;
        v100 = v91;
        v58 = *v92;
        v101[0] = *v92;
        v59 = *&v92[15];
        *(v101 + 15) = *&v92[15];
        *v55 = v90;
        *(v55 + 16) = v57;
        *(v55 + 32) = v58;
        *(v55 + 47) = v59;
        v102 = v56;
        v103 = v57;
        *v104 = v58;
        *&v104[15] = v59;
        sub_10010CD54(v38, v39, v40);

        sub_1000955E0(&v96, v89, &qword_100CACF40, &unk_100A3C2F0);
        sub_10010CD54(v38, v39, v40);

        sub_1000955E0(&v99, v89, &qword_100CACF40, &unk_100A3C2F0);
        sub_1000180EC(&v102, &qword_100CACF40, &unk_100A3C2F0);
        sub_1000180EC(v51, &qword_100CACF20, &qword_100A3C2A0);
        sub_10010CD64(v38, v39, v40);

        sub_1000955E0(v52, v84, &qword_100CACF18, &qword_100A3C298);
        swift_storeEnumTagMultiPayload();
        sub_100006F64(&qword_100CACF58, &qword_100CACF18, &qword_100A3C298, &protocol conformance descriptor for TupleView<A>);
        sub_100006F64(&qword_100CACF60, &qword_100CACF08, &qword_100A3C288, &protocol conformance descriptor for ViewThatFits<A>);
        v60 = *(&v84 + 1);
        _ConditionalContent<>.init(storage:)();
        sub_1000180EC(&v96, &qword_100CACF40, &unk_100A3C2F0);
        v61 = v39;
        v62 = v60;
        sub_10010CD64(v38, v61, v40);

        v22 = v80;
        sub_1000180EC(v52, &qword_100CACF18, &qword_100A3C298);
        v63 = v81;
        v64 = &qword_100CACF20;
        v65 = &qword_100A3C2A0;
LABEL_11:
        sub_1000180EC(v63, v64, v65);
        sub_1000955E0(v62, v13, &qword_100CACF28, &qword_100A3C2A8);
        swift_storeEnumTagMultiPayload();
        sub_10022C350(&qword_100CACF48, &unk_100A78250);
        sub_1003226D0();
        sub_100006F64(&qword_100CACF68, &qword_100CACF48, &unk_100A78250, &protocol conformance descriptor for TupleView<A>);
        _ConditionalContent<>.init(storage:)();
        sub_1000180EC(v62, &qword_100CACF28, &qword_100A3C2A8);
        return sub_100322878(v22, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v73 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v37, 0);
      (*(v79 + 8))(v16, v80);
      if ((v102 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v74 = static Axis.Set.vertical.getter();
    v75 = v86;
    *v86 = v74;
    v76 = sub_10022C350(&qword_100CACF70, &qword_100A3C300);
    sub_100321568(a1, v22, v75 + *(v76 + 44));
    sub_1000955E0(v75, v84, &qword_100CACF08, &qword_100A3C288);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CACF58, &qword_100CACF18, &qword_100A3C298, &protocol conformance descriptor for TupleView<A>);
    sub_100006F64(&qword_100CACF60, &qword_100CACF08, &qword_100A3C288, &protocol conformance descriptor for ViewThatFits<A>);
    v62 = *(&v84 + 1);
    _ConditionalContent<>.init(storage:)();
    v63 = v75;
    v64 = &qword_100CACF08;
    v65 = &qword_100A3C288;
    goto LABEL_11;
  }

  v86 = v11;
  sub_1000180EC(v19, &qword_100CACF38, &unk_100A47BB0);
  sub_10031F358(&v102);
  v84 = v102;
  LODWORD(v83) = v103;
  v85 = *(&v103 + 1);
  v24 = *v104;
  v25 = sub_10031F048();
  v26 = sub_1003200EC();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = swift_getKeyPath();
  v34 = a1 + *(type metadata accessor for FeelsLikeComponentView(0) + 20);
  v35 = *v34;
  if (*(v34 + 8) == 1)
  {
    v105 = v35 & 1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v82 = v13;
    v66 = static Log.runtimeIssuesLog.getter();
    v13 = v82;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v35, 0);
    (*(v79 + 8))(v16, v80);
    LOBYTE(v35) = v105;
  }

  *&v96 = v26;
  *(&v96 + 1) = v28;
  LOBYTE(v97) = v30 & 1;
  *(&v97 + 1) = *v89;
  DWORD1(v97) = *&v89[3];
  *(&v97 + 1) = v32;
  *v98 = v33;
  *&v98[8] = 4;
  *&v98[16] = 0;
  v98[18] = (v35 & 1) == 0;
  *&v104[15] = *&v98[15];
  *v104 = *v98;
  v103 = v97;
  v102 = v96;
  *(v101 + 15) = *&v98[15];
  v101[0] = *v98;
  v100 = v97;
  v99 = v96;
  v107 = v30 & 1;
  v106 = 0;
  v67 = v83;
  v95 = v83;
  v94 = 0;
  *(&v93[3] + 6) = *&v98[15];
  *(&v93[2] + 7) = *v98;
  *(&v93[1] + 7) = v97;
  *(v93 + 7) = v96;
  v68 = v83;
  LODWORD(v82) = 0;
  v69 = v84;
  sub_10010CD54(v84, *(&v84 + 1), v83);
  v70 = v85;

  sub_1000955E0(&v96, &v90, &qword_100CACF40, &unk_100A3C2F0);
  sub_10010CD54(v69, *(&v69 + 1), v67);

  sub_1000955E0(&v99, &v90, &qword_100CACF40, &unk_100A3C2F0);
  sub_1000180EC(&v102, &qword_100CACF40, &unk_100A3C2F0);
  sub_10010CD64(v69, *(&v69 + 1), v67);

  *v13 = v69;
  v13[16] = v68;
  *(v13 + 3) = v70;
  *(v13 + 4) = v24;
  *(v13 + 5) = v25;
  v13[48] = v82;
  v71 = v93[1];
  *(v13 + 49) = v93[0];
  *(v13 + 65) = v71;
  *(v13 + 81) = v93[2];
  *(v13 + 91) = *(&v93[2] + 10);
  swift_storeEnumTagMultiPayload();
  sub_10022C350(&qword_100CACF48, &unk_100A78250);
  sub_1003226D0();
  sub_100006F64(&qword_100CACF68, &qword_100CACF48, &unk_100A78250, &protocol conformance descriptor for TupleView<A>);
  _ConditionalContent<>.init(storage:)();
  sub_1000180EC(&v96, &qword_100CACF40, &unk_100A3C2F0);
  sub_10010CD64(v69, *(&v69 + 1), v67);
}

uint64_t sub_100321568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_10022C350(&qword_100CACF20, &qword_100A3C2A0);
  __chkstk_darwin(v5 - 8);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  v10 = sub_10022C350(&qword_100CACFB0, &qword_100A3C358);
  __chkstk_darwin(v10 - 8);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = sub_10022C350(&qword_100CACFB8, &qword_100A3C360);
  __chkstk_darwin(v15 - 8);
  v49 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  v20 = sub_10022C350(&qword_100CACFC0, &qword_100A3C368);
  __chkstk_darwin(v20 - 8);
  v52 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v44 - v23;
  *v24 = static HorizontalAlignment.leading.getter();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = sub_10022C350(&qword_100CACFC8, &qword_100A3C370);
  sub_100321A58(a1, a2, &v24[*(v25 + 44)]);
  *v19 = static HorizontalAlignment.leading.getter();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v47 = v19;
  v26 = sub_10022C350(&qword_100CACFD0, &qword_100A3C378);
  sub_100321CBC(a1, a2, &v19[*(v26 + 44)]);
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v46 = v14;
  v27 = &v14[*(sub_10022C350(&qword_100CACFD8, &qword_100A3C380) + 44)];
  sub_10031F358(v53);
  v29 = v53[0];
  v28 = v53[1];
  v30 = v54;
  v31 = v55;
  v32 = v56;
  v45 = v9;
  sub_10031FBD0(a1, a2, v9);
  v33 = v48;
  sub_1000955E0(v9, v48, &qword_100CACF20, &qword_100A3C2A0);
  *v27 = v29;
  *(v27 + 1) = v28;
  v27[16] = v30;
  *(v27 + 3) = v31;
  *(v27 + 4) = v32;
  v34 = sub_10022C350(&qword_100CACFE0, &qword_100A3C388);
  sub_1000955E0(v33, &v27[*(v34 + 48)], &qword_100CACF20, &qword_100A3C2A0);
  sub_10010CD54(v29, v28, v30);

  sub_1000180EC(v45, &qword_100CACF20, &qword_100A3C2A0);
  sub_1000180EC(v33, &qword_100CACF20, &qword_100A3C2A0);
  sub_10010CD64(v29, v28, v30);

  v35 = v52;
  sub_1000955E0(v24, v52, &qword_100CACFC0, &qword_100A3C368);
  v36 = v47;
  v37 = v49;
  sub_1000955E0(v47, v49, &qword_100CACFB8, &qword_100A3C360);
  v38 = v46;
  v39 = v50;
  sub_1000955E0(v46, v50, &qword_100CACFB0, &qword_100A3C358);
  v40 = v35;
  v41 = v51;
  sub_1000955E0(v40, v51, &qword_100CACFC0, &qword_100A3C368);
  v42 = sub_10022C350(&qword_100CACFE8, &unk_100A3C390);
  sub_1000955E0(v37, v41 + *(v42 + 48), &qword_100CACFB8, &qword_100A3C360);
  sub_1000955E0(v39, v41 + *(v42 + 64), &qword_100CACFB0, &qword_100A3C358);
  sub_1000180EC(v38, &qword_100CACFB0, &qword_100A3C358);
  sub_1000180EC(v36, &qword_100CACFB8, &qword_100A3C360);
  sub_1000180EC(v24, &qword_100CACFC0, &qword_100A3C368);
  sub_1000180EC(v39, &qword_100CACFB0, &qword_100A3C358);
  sub_1000180EC(v37, &qword_100CACFB8, &qword_100A3C360);
  return sub_1000180EC(v52, &qword_100CACFC0, &qword_100A3C368);
}

uint64_t sub_100321A58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CACF20, &qword_100A3C2A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  sub_10031F358(v38);
  v12 = v38[0];
  v13 = v38[1];
  v30 = v38[0];
  v14 = v39;
  v15 = v40;
  v32 = v40;
  v16 = v41;
  sub_10031FBD0(a1, a2, v11);
  v33 = sub_1003200EC();
  v18 = v17;
  v34 = v19;
  v35 = v20;
  KeyPath = swift_getKeyPath();
  LOBYTE(v38[0]) = v14;
  v37 = v8;
  sub_1000955E0(v11, v8, &qword_100CACF20, &qword_100A3C2A0);
  *a3 = v12;
  *(a3 + 8) = v13;
  v21 = v13;
  v36 = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  v22 = sub_10022C350(&qword_100CACFF8, &qword_100A3C3A0);
  sub_1000955E0(v8, a3 + *(v22 + 48), &qword_100CACF20, &qword_100A3C2A0);
  v23 = a3 + *(v22 + 64);
  v24 = v33;
  *v23 = v33;
  *(v23 + 8) = v18;
  v25 = v34 & 1;
  *(v23 + 16) = v34 & 1;
  v27 = v30;
  v26 = KeyPath;
  *(v23 + 24) = v35;
  *(v23 + 32) = v26;
  *(v23 + 40) = 3;
  *(v23 + 48) = 0;
  sub_10010CD54(v27, v21, v14);

  sub_10010CD54(v24, v18, v25);

  sub_1000180EC(v11, &qword_100CACF20, &qword_100A3C2A0);
  sub_10010CD64(v24, v18, v25);

  sub_1000180EC(v37, &qword_100CACF20, &qword_100A3C2A0);
  sub_10010CD64(v27, v36, v38[0]);
}

uint64_t sub_100321CBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v5 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v5 - 8);
  v86 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v70 - v8;
  v92 = type metadata accessor for Font.Leading();
  v81 = *(v92 - 8);
  __chkstk_darwin(v92);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FeelsLikeComponentVarianceView(0);
  __chkstk_darwin(v78);
  v90 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = &v70 - v12;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&qword_100CACF80, &qword_100A3C310);
  __chkstk_darwin(v17);
  v89 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v70 - v20;
  sub_10031F358(&v94);
  v85 = v94;
  v84 = v95;
  v83 = v96;
  v82 = v97;
  v22 = v98;
  v79 = a2;
  sub_10031F9A4(a2, v21);
  v75 = static Font.headline.getter();
  v74 = static Font.subheadline.getter();
  v23 = a1 + *(type metadata accessor for FeelsLikeComponentView(0) + 28);
  v24 = *v23;
  v77 = *(v23 + 8);
  v72 = v13;
  v71 = v14;
  v70 = v16;
  v80 = v24;
  if (v77 == 1)
  {
    v26 = v24;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v14 + 8))(v16, v13);
    v26 = v94;
  }

  v27 = *(v17 + 36);
  v87 = v21;
  v28 = &v21[v27];
  v29 = type metadata accessor for FontWithSmallVariantModifier(0);
  v30 = *(v29 + 24);
  v31 = enum case for Font.Leading.tight(_:);
  v32 = v81;
  v33 = v81[13];
  v34 = v92;
  (v33)(v28 + v30, enum case for Font.Leading.tight(_:), v92);
  sub_10001B350(v28 + v30, 0, 1, v34);
  v35 = v74;
  *v28 = v75;
  v28[1] = v35;
  *(v28 + *(v29 + 28)) = v26 & 1;
  v36 = sub_10031F048();
  v37 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  v38 = v93;
  sub_100322818(v79 + *(v37 + 20), v93 + *(v78 + 20), type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance);
  *v38 = swift_getKeyPath();
  *(v38 + 8) = 0;
  v39 = sub_10031F048();
  v40 = (a1 + *(type metadata accessor for FeelsLikeComponentViewModel(0) + 28));
  v41 = v40[1];
  v94 = *v40;
  v95 = v41;
  sub_10002D5A4();

  v75 = Text.init<A>(_:)();
  v74 = v42;
  v73 = v43;
  v78 = v44;
  static Font.footnote.getter();
  v45 = v76;
  (v33)(v76, v31, v34);
  v46 = Font.leading(_:)();

  v47 = v32[1];
  v47(v45, v34);
  static Font.caption2.getter();
  LODWORD(v79) = v31;
  v81 = v33;
  (v33)(v45, v31, v34);
  v48 = Font.leading(_:)();

  v47(v45, v34);
  if (v77)
  {
    v49 = v80;
  }

  else
  {
    v50 = v80;

    static os_log_type_t.fault.getter();
    v51 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v52 = v70;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v50, 0);
    (*(v71 + 8))(v52, v72);
    v49 = v94;
  }

  v53 = v88;
  v54 = v92;
  (v81)(v88, v79, v92);
  sub_10001B350(v53, 0, 1, v54);
  v55 = v86;
  sub_1000955E0(v53, v86, &qword_100CACFF0, &unk_100A48000);

  sub_1001C987C(v46, v48, v49 & 1, v55);
  v56 = v73;
  v57 = v75;
  v58 = v74;
  v86 = Text.font(_:)();
  v60 = v59;
  v62 = v61;
  v92 = v63;

  sub_10010CD64(v57, v58, v56 & 1);

  sub_1000180EC(v53, &qword_100CACFF0, &unk_100A48000);
  KeyPath = swift_getKeyPath();
  v105 = v85;
  v106 = v84;
  v107 = v83;
  v108 = v82;
  v109 = v22;
  v110 = &v105;
  v65 = v87;
  v66 = v89;
  sub_1000955E0(v87, v89, &qword_100CACF80, &qword_100A3C310);
  v103 = v36;
  v104 = 0;
  v111 = v66;
  v112 = &v103;
  v67 = v93;
  v68 = v90;
  sub_100322818(v93, v90, type metadata accessor for FeelsLikeComponentVarianceView);
  v101 = v39;
  v102 = 0;
  v113 = v68;
  v114 = &v101;
  v94 = v86;
  v95 = v60;
  v96 = v62 & 1;
  v97 = v92;
  v98 = KeyPath;
  v99 = 3;
  v100 = 0;
  v115 = &v94;
  sub_1003E8408();
  sub_100322878(v67, type metadata accessor for FeelsLikeComponentVarianceView);
  sub_1000180EC(v65, &qword_100CACF80, &qword_100A3C310);
  sub_10010CD64(v94, v95, v96);

  sub_100322878(v68, type metadata accessor for FeelsLikeComponentVarianceView);
  sub_1000180EC(v66, &qword_100CACF80, &qword_100A3C310);
  sub_10010CD64(v105, v106, v107);
}

unint64_t sub_1003226D0()
{
  result = qword_100CACF50;
  if (!qword_100CACF50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CACF28, &qword_100A3C2A8);
    v4[0] = sub_100006F64(&qword_100CACF58, &qword_100CACF18, &qword_100A3C298, &protocol conformance descriptor for TupleView<A>);
    v4[1] = sub_100006F64(&qword_100CACF60, &qword_100CACF08, &qword_100A3C288, &protocol conformance descriptor for ViewThatFits<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CACF50);
  }

  return result;
}

uint64_t sub_1003227B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100322818(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100322878(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1003228D0()
{
  result = qword_100CACF98;
  if (!qword_100CACF98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CACF90, &qword_100A3C348);
    v4[0] = sub_10032295C();
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CACF98);
  }

  return result;
}

unint64_t sub_10032295C()
{
  result = qword_100CACFA0;
  if (!qword_100CACFA0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CACFA8, &qword_100A3C350);
    v4[0] = sub_100322A14();
    v4[1] = sub_100006F64(&qword_100CA3ED0, &qword_100CA3ED8, &qword_100A2DF80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CACFA0);
  }

  return result;
}

unint64_t sub_100322A14()
{
  result = qword_100CA4098;
  if (!qword_100CA4098)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CA40A0, &unk_100A2E150);
    v4[0] = &protocol witness table for Text;
    v4[1] = &protocol witness table for _OffsetEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA4098);
  }

  return result;
}

unint64_t sub_100322A98()
{
  result = qword_100CAD000;
  if (!qword_100CAD000)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CACF00, &qword_100A3C258);
    v4[0] = sub_100322B54();
    v4[1] = sub_100322C80(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD000);
  }

  return result;
}

unint64_t sub_100322B54()
{
  result = qword_100CAD008;
  if (!qword_100CAD008)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CAD010, &unk_100A3C3A8);
    v4[2] = sub_10022E824(&qword_100CACED0, &qword_100A3C230);
    v4[3] = sub_100006F64(&qword_100CACEF8, &qword_100CACED0, &qword_100A3C230, &protocol conformance descriptor for HStack<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_100322C80(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD008);
  }

  return result;
}

uint64_t sub_100322C80(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

BOOL sub_100322CC8(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  sub_10022C350(a1, a2);
  sub_100006F64(a3, a1, a2, &protocol conformance descriptor for Forecast<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  return v8 == v7;
}

BOOL sub_100322D64()
{
  type metadata accessor for LayoutSubviews();
  sub_10032A560(&qword_100CAD308, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  return v2 == v1;
}

uint64_t sub_100322E00()
{
  v0 = type metadata accessor for Location();
  sub_100007074(v0, qword_100CAD018);
  sub_10000703C(v0, qword_100CAD018);
  return static Location.london.getter();
}

_UNKNOWN **sub_100322E58@<X0>(void *a1@<X8>)
{
  result = sub_100322E4C();
  *a1 = result;
  return result;
}

uint64_t sub_100322E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v37 = a2;
  v31 = a3;
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v3 - 8);
  v34 = &v28 - v4;
  v35 = type metadata accessor for TimeZone();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateComponents();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Calendar();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  static Calendar.current.getter();
  sub_10022C350(&qword_100CA53E8, &unk_100A2F650);
  v15 = type metadata accessor for Calendar.Component();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A3C3F0;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, enum case for Calendar.Component.year(_:), v15);
  v21(v20 + v17, enum case for Calendar.Component.month(_:), v15);
  v21(v20 + 2 * v17, enum case for Calendar.Component.day(_:), v15);
  v21(v20 + 3 * v17, enum case for Calendar.Component.hour(_:), v15);
  v21(v20 + 4 * v17, enum case for Calendar.Component.minute(_:), v15);
  v21(v20 + 5 * v17, enum case for Calendar.Component.second(_:), v15);
  sub_10004BCB0(v19);
  Calendar.dateComponents(_:from:)();
  v22 = v34;

  static Calendar.current.getter();
  (*(v33 + 16))(v32, v37, v35);
  Calendar.timeZone.setter();
  Calendar.date(from:)();
  v23 = type metadata accessor for Date();
  result = sub_100024D10(v22, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v25 = *(v9 + 8);
    v26 = v11;
    v27 = v28;
    v25(v26, v28);
    (*(v29 + 8))(v8, v30);
    v25(v14, v27);
    return (*(*(v23 - 8) + 32))(v31, v22, v23);
  }

  return result;
}

uint64_t sub_100323320(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_10022C350(&qword_100CAD290, &qword_100A3C630);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_10022C350(&qword_100CAD040, &qword_100A958E0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = sub_10022C350(&qword_100CAD2A0, &qword_100A3C640);
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  sub_10022C350(&qword_100CAD048, &unk_100A3C410);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for TimeZone();
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[33] = v6;
  v2[34] = *(v6 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[38] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[39] = v8;
  v2[40] = v7;

  return _swift_task_switch(sub_1003235E0, v8, v7);
}

uint64_t sub_1003235E0()
{
  v1 = *(v0 + 152);
  v2 = type metadata accessor for DebugWeatherCacheTestingView(0);
  *(v0 + 328) = v2;
  v3 = (v1 + *(v2 + 40));
  v4 = *v3;
  *(v0 + 336) = *v3;
  v5 = v3[1];
  *(v0 + 344) = v5;
  v6 = v3[2];
  *(v0 + 352) = v6;
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 72) = 0;
  *(v0 + 64) = 0;
  *(v0 + 360) = sub_10022C350(&qword_100CAD228, &unk_100A3C600);
  State.wrappedValue.setter();
  v7 = (v1 + *(v2 + 36));
  v8 = *v7;
  *(v0 + 451) = *v7;
  v9 = *(v7 + 1);
  *(v0 + 80) = v8;
  *(v0 + 368) = v9;
  *(v0 + 88) = v9;
  *(v0 + 448) = 1;

  *(v0 + 376) = sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.setter();
  v31 = v2;
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  State.wrappedValue.getter();
  if (qword_100CA1F00 != -1)
  {
    sub_1000167D8(&qword_100CA1F00);
  }

  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  v12 = *(v0 + 272);
  v13 = *(v0 + 256);
  v29 = *(v0 + 264);
  v30 = *(v0 + 280);
  v14 = *(v0 + 240);
  v15 = *(v0 + 248);
  v28 = v14;
  v16 = *(v0 + 152);
  v17 = type metadata accessor for Location();
  sub_10000703C(v17, qword_100CAD018);
  Location.timeZone.getter();
  sub_100322E80(v11, v13, v10);
  v18 = *(v15 + 8);
  v18(v13, v14);
  v19 = *(v12 + 8);
  *(v0 + 384) = v19;
  *(v0 + 392) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v11, v29);
  State.wrappedValue.getter();
  Location.timeZone.getter();
  sub_100322E80(v11, v13, v30);
  v18(v13, v28);
  v19(v11, v29);
  v20 = *(v16 + 8);
  *(v0 + 96) = *v16;
  *(v0 + 104) = v20;
  sub_10022C350(&qword_100CAD1E8, &qword_100A3C5E0);
  State.wrappedValue.getter();
  v21 = *(v16 + *(v31 + 52));
  if (*(v0 + 449))
  {
    static WeatherQuery<A>.hourly(startDate:endDate:)();
    v22 = swift_task_alloc();
    *(v0 + 424) = v22;
    v23 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
    *(v0 + 432) = v23;
    *v22 = v0;
    v22[1] = sub_100323C70;
    v24 = *(v0 + 192);
    v25 = *(v0 + 176);
  }

  else
  {
    static WeatherQuery<A>.daily(startDate:endDate:)();
    v26 = swift_task_alloc();
    *(v0 + 400) = v26;
    v23 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
    *(v0 + 408) = v23;
    *v26 = v0;
    v26[1] = sub_100323998;
    v24 = *(v0 + 232);
    v25 = *(v0 + 216);
  }

  return WeatherService.weather<A>(for:including:)(v24, v21, v25, v23);
}

uint64_t sub_100323998()
{
  sub_100008188();
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  *(*v1 + 416) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 320);
  v7 = *(v2 + 312);
  if (v0)
  {
    v8 = sub_100323F48;
  }

  else
  {
    v8 = sub_100323B2C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100323B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10002FDF4();
  sub_1000250C0();
  v15 = v14[51];
  v16 = v14[48];
  sub_1000496D8();
  v17 = v14[33];
  v18 = v14[29];

  v19 = sub_10000E91C();
  sub_10001B350(v19, v20, v21, v15);
  sub_100020E8C();
  sub_10022C350(&qword_100CAD058, &qword_100A3C438);
  State.wrappedValue.setter();
  sub_1000180EC(v18, &qword_100CAD048, &unk_100A3C410);
  v16(a10, v17);
  v16(a11, v17);
  sub_10001BDB8();

  sub_100003B14();
  sub_100031504();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100323C70()
{
  sub_100008188();
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  *(*v1 + 440) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 320);
  v7 = *(v2 + 312);
  if (v0)
  {
    v8 = sub_100324068;
  }

  else
  {
    v8 = sub_100323E04;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100323E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10002FDF4();
  sub_1000250C0();
  v15 = v14[54];
  v16 = v14[48];
  sub_1000496D8();
  v17 = v14[33];
  v18 = v14[24];

  v19 = sub_10000E91C();
  sub_10001B350(v19, v20, v21, v15);
  sub_100020E8C();
  sub_10022C350(&qword_100CAD060, &unk_100A3C440);
  State.wrappedValue.setter();
  sub_1000180EC(v18, &qword_100CAD040, &qword_100A958E0);
  v16(a10, v17);
  v16(a11, v17);
  sub_10001BDB8();

  sub_100003B14();
  sub_100031504();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100323F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10002FDF4();
  sub_1000250C0();
  v15 = *(v14 + 384);
  sub_1000496D8();
  v16 = *(v14 + 264);

  sub_1000747C0("Error using WDS.");

  State.wrappedValue.setter();

  v15(a10, v16);
  v15(a11, v16);
  sub_10001BDB8();

  sub_100003B14();
  sub_100031504();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100324068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10002FDF4();
  sub_1000250C0();
  v15 = *(v14 + 384);
  sub_1000496D8();
  v16 = *(v14 + 264);

  sub_1000747C0("Error using WDS.");

  State.wrappedValue.setter();

  v15(a10, v16);
  v15(a11, v16);
  sub_10001BDB8();

  sub_100003B14();
  sub_100031504();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100324188()
{
  v1 = sub_10022C350(&qword_100CAD040, &qword_100A958E0);
  __chkstk_darwin(v1 - 8);
  v69 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v68 = &v61 - v4;
  v5 = sub_10022C350(&qword_100CAD290, &qword_100A3C630);
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v74 = &v61 - v6;
  v7 = sub_10022C350(&qword_100CAD298, &qword_100A3C638);
  __chkstk_darwin(v7 - 8);
  v77 = &v61 - v8;
  v79 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  v67 = *(v79 - 8);
  __chkstk_darwin(v79);
  v66 = &v61 - v9;
  v10 = sub_10022C350(&qword_100CAD048, &unk_100A3C410);
  __chkstk_darwin(v10 - 8);
  v65 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = &v61 - v13;
  v72 = sub_10022C350(&qword_100CAD2A0, &qword_100A3C640);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v61 - v14;
  v15 = sub_10022C350(&qword_100CAD2A8, &qword_100A3C648);
  __chkstk_darwin(v15 - 8);
  v73 = &v61 - v16;
  v78 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v63 = *(v78 - 8);
  __chkstk_darwin(v78);
  v62 = &v61 - v17;
  v18 = type metadata accessor for TimeZone();
  v86 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Date();
  v21 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v61 - v24;
  __chkstk_darwin(v26);
  v28 = &v61 - v27;
  v29 = (v0 + *(type metadata accessor for DebugWeatherCacheTestingView(0) + 40));
  v31 = *v29;
  v30 = v29[1];
  v32 = v29[2];
  v80 = v31;
  v81 = v30;
  v91 = v31;
  v92 = v30;
  v82 = v32;
  v93 = v32;
  v89 = 0;
  v90 = 0;
  v83 = sub_10022C350(&qword_100CAD228, &unk_100A3C600);
  State.wrappedValue.setter();
  v84 = sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  State.wrappedValue.getter();
  if (qword_100CA1F00 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Location();
  sub_10000703C(v33, qword_100CAD018);
  Location.timeZone.getter();
  sub_100322E80(v25, v20, v28);
  v88 = v28;
  v34 = *(v86 + 1);
  v34(v20, v18);
  v86 = v18;
  v35 = *(v21 + 8);
  v35(v25, v87);
  State.wrappedValue.getter();
  Location.timeZone.getter();
  v36 = v85;
  sub_100322E80(v25, v20, v85);
  v34(v20, v86);
  v37 = v87;
  v86 = v35;
  v35(v25, v87);
  v38 = *(v0 + 8);
  LOBYTE(v91) = *v0;
  v92 = v38;
  sub_10022C350(&qword_100CAD1E8, &qword_100A3C5E0);
  State.wrappedValue.getter();
  if ((v89 & 1) == 0)
  {
    v45 = v70;
    static WeatherQuery<A>.daily(startDate:endDate:)();
    v46 = v73;
    WeatherService.cachedWeather<A>(for:including:options:)();
    (*(v71 + 8))(v45, v72);
    v47 = sub_10022C350(&qword_100CAD2B8, &unk_100A3C658);
    if (sub_100024D10(v46, 1, v47) == 1)
    {
      v48 = &qword_100CAD2A8;
      v49 = &qword_100A3C648;
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v55 = v63;
        v56 = v62;
        v57 = v78;
        (*(v63 + 32))(v62, v46, v78);
        v58 = v64;
        (*(v55 + 16))(v64, v56, v57);
        sub_10001B350(v58, 0, 1, v57);
        sub_100035AD0(v58, v65, &qword_100CAD048, &unk_100A3C410);
        sub_10022C350(&qword_100CAD058, &qword_100A3C438);
        State.wrappedValue.setter();
        sub_1000180EC(v58, &qword_100CAD048, &unk_100A3C410);
        (*(v55 + 8))(v56, v57);
        goto LABEL_17;
      }

      v48 = &qword_100CAD2B8;
      v49 = &unk_100A3C658;
    }

    sub_1000180EC(v46, v48, v49);
    v91 = v80;
    v92 = v81;
    v93 = v82;
    v89 = 0xD000000000000012;
    v90 = 0x8000000100AC09B0;
    State.wrappedValue.setter();
LABEL_17:
    v54 = v36;
    goto LABEL_18;
  }

  v39 = v74;
  v40 = v36;
  static WeatherQuery<A>.hourly(startDate:endDate:)();
  v41 = v77;
  WeatherService.cachedWeather<A>(for:including:options:)();
  (*(v75 + 8))(v39, v76);
  v42 = sub_10022C350(&qword_100CAD2B0, &qword_100A3C650);
  if (sub_100024D10(v41, 1, v42) == 1)
  {
    v43 = &qword_100CAD298;
    v44 = &qword_100A3C638;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v50 = v67;
      v51 = v66;
      v52 = v79;
      (*(v67 + 32))(v66, v41, v79);
      v53 = v68;
      (*(v50 + 16))(v68, v51, v52);
      sub_10001B350(v53, 0, 1, v52);
      sub_100035AD0(v53, v69, &qword_100CAD040, &qword_100A958E0);
      sub_10022C350(&qword_100CAD060, &unk_100A3C440);
      State.wrappedValue.setter();
      sub_1000180EC(v53, &qword_100CAD040, &qword_100A958E0);
      (*(v50 + 8))(v51, v52);
      goto LABEL_15;
    }

    v43 = &qword_100CAD2B0;
    v44 = &qword_100A3C650;
  }

  sub_1000180EC(v41, v43, v44);
  v91 = v80;
  v92 = v81;
  v93 = v82;
  v89 = 0xD000000000000012;
  v90 = 0x8000000100AC09B0;
  State.wrappedValue.setter();
LABEL_15:
  v54 = v40;
LABEL_18:
  v59 = v86;
  v86(v54, v37);
  return v59(v88, v37);
}

double sub_100324CB8@<D0>(uint64_t a1@<X8>)
{
  sub_10022C350(&qword_100CAD168, &qword_100A3C568);
  sub_100329C04();
  List<>.init(content:)();
  v2 = static Edge.Set.all.getter();
  v3 = a1 + *(sub_10022C350(&qword_100CAD188, &qword_100A3C578) + 36);
  *v3 = v2;
  result = 0.0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_100324D64(uint64_t a1)
{
  sub_10022C350(&qword_100CAD180, &qword_100A3C570);
  sub_100006F64(&qword_100CAD178, &qword_100CAD180, &qword_100A3C570, &protocol conformance descriptor for VStack<A>);
  return Section<>.init(content:)();
}

uint64_t sub_100324E08@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10022C350(&qword_100CAD190, &qword_100A3C580);
  return sub_100324E60(a1, a2 + *(v4 + 44));
}

uint64_t sub_100324E60@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v280 = a2;
  v279 = sub_10022C350(&qword_100CAD198, &unk_100A3C588);
  __chkstk_darwin(v279);
  v269 = &v251 - v3;
  v293 = type metadata accessor for DebugWeatherCacheTestingView(0);
  v265 = *(v293 - 8);
  __chkstk_darwin(v293);
  v266 = v4;
  v267 = &v251 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v298 = *(v295 - 8);
  __chkstk_darwin(v295);
  v268 = &v251 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v272 = &v251 - v7;
  v8 = type metadata accessor for HourWeather();
  __chkstk_darwin(v8 - 8);
  v253 = &v251 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CAD040, &qword_100A958E0);
  __chkstk_darwin(v10 - 8);
  v259 = &v251 - v11;
  v261 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  v257 = *(v261 - 8);
  __chkstk_darwin(v261);
  v256 = &v251 - v12;
  v13 = type metadata accessor for DayWeather();
  __chkstk_darwin(v13 - 8);
  v252 = &v251 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CAD048, &unk_100A3C410);
  __chkstk_darwin(v15 - 8);
  v258 = &v251 - v16;
  v260 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v255 = *(v260 - 8);
  __chkstk_darwin(v260);
  v254 = &v251 - v17;
  v274 = sub_10022C350(&qword_100CAD1A0, &qword_100A3C598);
  __chkstk_darwin(v274);
  v275 = &v251 - v18;
  v276 = sub_10022C350(&qword_100CAD1A8, &qword_100A3C5A0);
  v271 = *(v276 - 8);
  __chkstk_darwin(v276);
  v270 = &v251 - v19;
  v20 = sub_10022C350(&qword_100CAD1B0, &qword_100A3C5A8);
  __chkstk_darwin(v20 - 8);
  v278 = &v251 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v306 = &v251 - v23;
  v24 = type metadata accessor for BorderedProminentButtonStyle();
  v25 = *(v24 - 8);
  v291 = v24;
  v292 = v25;
  __chkstk_darwin(v24);
  v289 = &v251 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_10022C350(&qword_100CAD1B8, &unk_100A3C5B0);
  __chkstk_darwin(v290);
  v288 = (&v251 - v27);
  v313 = sub_10022C350(&qword_100CAD1C0, &unk_100A49500);
  v277 = *(v313 - 8);
  __chkstk_darwin(v313);
  v305 = &v251 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v308 = &v251 - v30;
  v31 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v31 - 8);
  v287 = &v251 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10022C350(&qword_100CAD1C8, &qword_100A3C5C0);
  __chkstk_darwin(v33 - 8);
  v286 = &v251 - v34;
  v312 = sub_10022C350(&qword_100CAD1D0, &qword_100A3C5C8);
  v318 = *(v312 - 8);
  __chkstk_darwin(v312);
  v304 = &v251 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v303 = &v251 - v37;
  __chkstk_darwin(v38);
  v317 = &v251 - v39;
  __chkstk_darwin(v40);
  v316 = &v251 - v41;
  v42 = type metadata accessor for Divider();
  v296 = *(v42 - 8);
  v297 = v42;
  __chkstk_darwin(v42);
  v302 = &v251 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v310 = &v251 - v45;
  __chkstk_darwin(v46);
  v309 = &v251 - v47;
  __chkstk_darwin(v48);
  v307 = &v251 - v49;
  __chkstk_darwin(v50);
  v314 = &v251 - v51;
  __chkstk_darwin(v52);
  v315 = &v251 - v53;
  v54 = type metadata accessor for SegmentedPickerStyle();
  v55 = *(v54 - 8);
  v284 = v54;
  v285 = v55;
  __chkstk_darwin(v54);
  v57 = &v251 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10022C350(&qword_100CAD1D8, &qword_100A3C5D0);
  v59 = *(v58 - 8);
  v282 = v58;
  v283 = v59;
  __chkstk_darwin(v58);
  v61 = &v251 - v60;
  v311 = sub_10022C350(&qword_100CAD1E0, &qword_100A3C5D8);
  v301 = *(v311 - 8);
  __chkstk_darwin(v311);
  v300 = &v251 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v65 = &v251 - v64;
  v299 = LocalizedStringKey.init(stringLiteral:)();
  v281 = v66;
  v294 = a1;
  v67 = *(a1 + 1);
  v264 = *a1;
  v323[0] = v264;
  v263 = v67;
  *&v323[8] = v67;
  v262 = sub_10022C350(&qword_100CAD1E8, &qword_100A3C5E0);
  State.projectedValue.getter();
  sub_10022C350(&qword_100CAD1F0, &qword_100A3C5E8);
  sub_100329CC8();
  sub_100006F64(&qword_100CAD200, &qword_100CAD1F0, &qword_100A3C5E8, &protocol conformance descriptor for TupleView<A>);
  Picker<>.init(_:selection:content:)();
  SegmentedPickerStyle.init()();
  sub_100006F64(&qword_100CAD208, &qword_100CAD1D8, &qword_100A3C5D0, &protocol conformance descriptor for Picker<A, B, C>);
  v299 = v65;
  v68 = v282;
  v69 = v284;
  View.pickerStyle<A>(_:)();
  (*(v285 + 8))(v57, v69);
  (*(v283 + 8))(v61, v68);
  Divider.init()();
  v70 = LocalizedStringKey.init(stringLiteral:)();
  v74 = Text.init(_:tableName:bundle:comment:)(v70, v72, v71 & 1, v73, 0, 0, 0, 0, 0, 256);
  v76 = v75;
  LOBYTE(v68) = v77;
  static Font.caption2.getter();
  v78 = Text.font(_:)();
  v282 = v79;
  v283 = v78;
  LODWORD(v281) = v80;
  v284 = v81;

  sub_10010CD64(v74, v76, v68 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v82 = v293;
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  v83 = v294;
  State.projectedValue.getter();
  sub_1003274B0();
  DatePicker<>.init(_:selection:displayedComponents:)();
  v285 = LocalizedStringKey.init(stringLiteral:)();
  State.projectedValue.getter();
  sub_1003274B0();
  DatePicker<>.init(_:selection:displayedComponents:)();
  Divider.init()();
  v84 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v249) = 256;
  v88 = Text.init(_:tableName:bundle:comment:)(v84, v86, v85 & 1, v87, 0, 0, 0, 0, 0, v249);
  v285 = v89;
  v286 = v88;
  v273 = v90;
  v287 = v91;
  v92 = static VerticalAlignment.center.getter();
  v93 = v288;
  *v288 = v92;
  v93[1] = 0;
  *(v93 + 16) = 1;
  v94 = sub_10022C350(&qword_100CAD210, &unk_100A3C5F0);
  sub_100327630(v83, v93 + *(v94 + 44));
  v95 = v289;
  BorderedProminentButtonStyle.init()();
  sub_100006F64(&qword_100CAD218, &qword_100CAD1B8, &unk_100A3C5B0, &protocol conformance descriptor for HStack<A>);
  sub_10032A560(&qword_100CAD220, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v96 = v291;
  View.buttonStyle<A>(_:)();
  (*(v292 + 8))(v95, v96);
  sub_1000180EC(v93, &qword_100CAD1B8, &unk_100A3C5B0);
  Divider.init()();
  v97 = v83;
  v98 = v83 + *(v82 + 36);
  v99 = *v98;
  v100 = *(v98 + 8);
  LOBYTE(__src[0]) = v99;
  *(&__src[0] + 1) = v100;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  if (v323[0] == 1)
  {
    v101 = v270;
    ProgressView<>.init<>()();
    v102 = v271;
    v103 = v276;
    (*(v271 + 16))(v275, v101, v276);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CAD270, &qword_100CAD1A8, &qword_100A3C5A0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100006F64(&qword_100CAD278, &qword_100CAD198, &unk_100A3C588, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    (*(v102 + 8))(v101, v103);
    v104 = v296;
    v105 = v297;
    v106 = v309;
    v107 = v284;
LABEL_24:
    v228 = v300;
    (*(v301 + 16))(v300, v299, v311);
    *&__src[0] = v228;
    v229 = v104;
    v230 = *(v104 + 16);
    v230(v106, v315, v105);
    *v323 = v283;
    *&v323[8] = v282;
    v323[16] = v281 & 1;
    *&v323[24] = v107;
    *(&__src[0] + 1) = v106;
    *&__src[1] = v323;
    v231 = *(v318 + 16);
    v232 = v303;
    v233 = v312;
    v231();
    *(&__src[1] + 1) = v232;
    v234 = v304;
    (v231)(v304, v317, v233);
    *&__src[2] = v234;
    v235 = v310;
    v230(v310, v314, v105);
    *v322 = v286;
    *&v322[8] = v285;
    v322[16] = v273 & 1;
    *&v322[24] = v287;
    *(&__src[2] + 1) = v235;
    *&__src[3] = v322;
    v236 = v105;
    v237 = v277;
    v238 = v305;
    v239 = v308;
    (*(v277 + 16))(v305, v308, v313);
    *(&__src[3] + 1) = v238;
    v240 = v302;
    v241 = v307;
    v230(v302, v307, v236);
    *&__src[4] = v240;
    v242 = v306;
    v243 = v278;
    sub_100035AD0(v306, v278, &qword_100CAD1B0, &qword_100A3C5A8);
    *(&__src[4] + 1) = v243;
    sub_1003E852C();
    sub_1000180EC(v242, &qword_100CAD1B0, &qword_100A3C5A8);
    v244 = *(v229 + 8);
    v244(v241, v236);
    v307 = *(v237 + 8);
    (v307)(v239, v313);
    v244(v314, v236);
    v245 = *(v318 + 8);
    v318 += 8;
    v246 = v312;
    v245(v317, v312);
    v245(v316, v246);
    v244(v315, v236);
    v247 = *(v301 + 8);
    v247(v299, v311);
    sub_1000180EC(v243, &qword_100CAD1B0, &qword_100A3C5A8);
    v244(v302, v236);
    (v307)(v305, v313);
    sub_10010CD64(*v322, *&v322[8], v322[16]);

    v244(v310, v236);
    v248 = v312;
    v245(v304, v312);
    v245(v303, v248);
    sub_10010CD64(*v323, *&v323[8], v323[16]);

    v244(v309, v236);
    return (v247)(v300, v311);
  }

  v108 = v83 + *(v82 + 40);
  v109 = *(v108 + 16);
  __src[0] = *v108;
  *&__src[1] = v109;
  sub_10022C350(&qword_100CAD228, &unk_100A3C600);
  State.wrappedValue.getter();
  if (*&v323[8])
  {
    __src[0] = *v323;
    sub_10002D5A4();
    v110 = Text.init<A>(_:)();
    v322[0] = v111 & 1;
    LOBYTE(v321[0]) = 0;
    *v323 = v110;
    *&v323[8] = v112;
    v323[16] = v111 & 1;
    *&v323[24] = v113;
    v323[98] = 0;
    sub_10022C350(&qword_100CAD250, &qword_100A3C618);
    sub_100329DD4();
    _ConditionalContent<>.init(storage:)();
    v114 = v309;
    v115 = v310;
LABEL_23:
    Divider.init()();
    LocalizedStringKey.init(stringLiteral:)();
    v214 = v267;
    sub_100329E58(v97, v267);
    v215 = (*(v265 + 80) + 16) & ~*(v265 + 80);
    v216 = swift_allocObject();
    sub_100329EBC(v214, v216 + v215);
    v217 = v272;
    Button<>.init(_:action:)();
    memcpy(v321, __src, 0x63uLL);
    v218 = v297;
    v219 = *(v296 + 16);
    v219(v115, v114, v297);
    v220 = *(v298 + 16);
    v221 = v268;
    v220(v268, v217, v295);
    memcpy(v322, v321, sizeof(v322));
    v222 = v269;
    memcpy(v269, v321, 0x63uLL);
    v223 = sub_10022C350(&qword_100CAD260, &qword_100A3C620);
    v219(&v222[*(v223 + 48)], v115, v218);
    v224 = &v222[*(v223 + 64)];
    v225 = v295;
    v220(v224, v221, v295);
    sub_100035AD0(__src, v323, &qword_100CAD268, &qword_100A3C628);
    sub_100035AD0(v322, v323, &qword_100CAD268, &qword_100A3C628);
    v226 = *(v298 + 8);
    v298 += 8;
    v226(v221, v225);
    v104 = v296;
    v227 = *(v296 + 8);
    v227(v115, v218);
    memcpy(v323, v321, sizeof(v323));
    sub_1000180EC(v323, &qword_100CAD268, &qword_100A3C628);
    sub_100035AD0(v222, v275, &qword_100CAD198, &unk_100A3C588);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CAD270, &qword_100CAD1A8, &qword_100A3C5A0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_100006F64(&qword_100CAD278, &qword_100CAD198, &unk_100A3C588, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(__src, &qword_100CAD268, &qword_100A3C628);
    v106 = v309;
    sub_1000180EC(v222, &qword_100CAD198, &unk_100A3C588);
    v226(v272, v295);
    v105 = v297;
    v227(v106, v297);
    v107 = v284;
    goto LABEL_24;
  }

  LOBYTE(__src[0]) = v264;
  *(&__src[0] + 1) = v263;
  State.wrappedValue.getter();
  v115 = v310;
  if ((v323[0] & 1) == 0)
  {
    sub_10022C350(&qword_100CAD058, &qword_100A3C438);
    v118 = v258;
    State.wrappedValue.getter();
    v119 = v260;
    if (sub_100024D10(v118, 1, v260) == 1)
    {
      sub_1000180EC(v118, &qword_100CAD048, &unk_100A3C410);
    }

    else
    {
      v130 = v254;
      v131 = v255;
      (*(v255 + 32))(v254, v118, v119);
      if (!sub_100322CC8(&qword_100CA7000, &unk_100A3E7F0, &qword_100CA7018))
      {
        v178 = v252;
        Forecast.subscript.getter();
        v179 = sub_100328180(v178);
        v292 = v180;
        v293 = v179;
        v182 = v181;
        v289 = v183;
        v184 = LocalizedStringKey.init(stringLiteral:)();
        LOWORD(v250) = 256;
        v288 = Text.init(_:tableName:bundle:comment:)(v184, v186, v185 & 1, v187, 0, 0, 0, 0, 0, v250);
        v271 = v188;
        v190 = v189;
        v290 = v191;
        sub_100006F64(&qword_100CA7018, &qword_100CA7000, &unk_100A3E7F0, &protocol conformance descriptor for Forecast<A>);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        v192 = dispatch thunk of Collection.distance(from:to:)();
        v155 = __OFSUB__(v192, 1);
        result = v192 - 1;
        if (v155)
        {
          goto LABEL_26;
        }

        Forecast.subscript.getter();
        v193 = sub_100328180(v178);
        v195 = v194;
        v258 = v196;
        LOBYTE(v321[0]) = v182 & 1;
        v197 = v190 & 1;
        v325 = v190 & 1;
        v324 = v182 & 1;
        LODWORD(v291) = v182 & 1;
        v320 = v190 & 1;
        v199 = v198 & 1;
        v319 = v198 & 1;
        LODWORD(v263) = v197;
        v264 = v199;
        v200 = v293;
        sub_10010CD54(v293, v292, v182 & 1);
        v201 = v289;

        v202 = v288;
        v203 = v271;
        v204 = v197;
        LODWORD(v270) = v197;
        sub_10010CD54(v288, v271, v197);

        LODWORD(v262) = v199;
        sub_10010CD54(v193, v195, v199);
        v205 = v258;

        v206 = v200;
        v207 = v292;
        sub_10010CD54(v206, v292, v291);

        sub_10010CD54(v202, v203, v204);
        v208 = v290;

        v261 = v193;
        v259 = v195;
        sub_10010CD54(v193, v195, v199);

        sub_10010CD64(v193, v195, v199);
        v209 = v205;

        v210 = v288;
        sub_10010CD64(v288, v203, v325);

        v211 = v293;
        sub_10010CD64(v293, v207, v321[0]);

        v322[0] = 0;
        *v323 = v211;
        *&v323[8] = v207;
        v323[16] = v291;
        *&v323[24] = v201;
        *&v323[32] = v210;
        *&v323[40] = v203;
        v323[48] = v263;
        *&v323[56] = v208;
        v212 = v261;
        v213 = v259;
        *&v323[64] = v261;
        *&v323[72] = v259;
        v323[80] = v264;
        *&v323[88] = v209;
        v323[96] = 0;
        sub_10022C350(&qword_100CAD230, &qword_100A9AE20);
        sub_100006F64(&qword_100CAD238, &qword_100CAD230, &qword_100A9AE20, &protocol conformance descriptor for TupleView<A>);
        _ConditionalContent<>.init(storage:)();
        sub_10010CD64(v212, v213, v262);

        sub_10010CD64(v210, v203, v270);

        sub_10010CD64(v293, v292, v291);

        (*(v255 + 8))(v254, v260);
        memcpy(v323, __src, 0x61uLL);
        v97 = v294;
        v115 = v310;
LABEL_21:
        memcpy(__src, v323, 0x61uLL);
        LOBYTE(v321[0]) = 0;
        BYTE1(__src[6]) = 0;
        goto LABEL_22;
      }

      (*(v131 + 8))(v130, v119);
    }

    v132 = LocalizedStringKey.init(stringLiteral:)();
    LOWORD(v250) = 256;
    v136 = Text.init(_:tableName:bundle:comment:)(v132, v134, v133 & 1, v135, 0, 0, 0, 0, 0, v250);
    v325 = v137 & 1;
    v324 = 1;
    *&__src[0] = v136;
    *(&__src[0] + 1) = v138;
    LOBYTE(__src[1]) = v137 & 1;
    *(&__src[1] + 1) = v321[0];
    DWORD1(__src[1]) = *(v321 + 3);
    *(&__src[1] + 1) = v139;
    __src[2] = *v322;
    __src[3] = *&v322[16];
    __src[4] = *&v322[32];
    __src[5] = *&v322[48];
    LOBYTE(__src[6]) = 1;
    sub_10022C350(&qword_100CAD230, &qword_100A9AE20);
    sub_100006F64(&qword_100CAD238, &qword_100CAD230, &qword_100A9AE20, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    goto LABEL_21;
  }

  sub_10022C350(&qword_100CAD060, &unk_100A3C440);
  v116 = v259;
  State.wrappedValue.getter();
  v117 = v261;
  if (sub_100024D10(v116, 1, v261) == 1)
  {
    sub_1000180EC(v116, &qword_100CAD040, &qword_100A958E0);
LABEL_12:
    v122 = LocalizedStringKey.init(stringLiteral:)();
    LOWORD(v250) = 256;
    v126 = Text.init(_:tableName:bundle:comment:)(v122, v124, v123 & 1, v125, 0, 0, 0, 0, 0, v250);
    v325 = v127 & 1;
    v324 = 1;
    *&__src[0] = v126;
    *(&__src[0] + 1) = v128;
    LOBYTE(__src[1]) = v127 & 1;
    *(&__src[1] + 1) = v321[0];
    DWORD1(__src[1]) = *(v321 + 3);
    *(&__src[1] + 1) = v129;
    __src[2] = *v322;
    __src[3] = *&v322[16];
    __src[4] = *&v322[32];
    __src[5] = *&v322[48];
    LOBYTE(__src[6]) = 1;
    sub_10022C350(&qword_100CAD230, &qword_100A9AE20);
    sub_100006F64(&qword_100CAD238, &qword_100CAD230, &qword_100A9AE20, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
LABEL_18:
    memcpy(__src, v323, 0x61uLL);
    LOBYTE(v321[0]) = 1;
    BYTE1(__src[6]) = 1;
LABEL_22:
    sub_10022C350(&qword_100CAD240, &qword_100A3C610);
    sub_100329D1C();
    _ConditionalContent<>.init(storage:)();
    v114 = v309;
    memcpy(v323, v322, 0x62uLL);
    LOBYTE(v321[0]) = 1;
    v323[98] = 1;
    sub_10022C350(&qword_100CAD250, &qword_100A3C618);
    sub_100329DD4();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_23;
  }

  v120 = v256;
  v121 = v257;
  (*(v257 + 32))(v256, v116, v117);
  if (sub_100322CC8(&qword_100CA7030, &qword_100A32000, &qword_100CA7040))
  {
    (*(v121 + 8))(v120, v117);
    goto LABEL_12;
  }

  v140 = v253;
  Forecast.subscript.getter();
  v141 = sub_1003288EC(v140);
  v292 = v142;
  v293 = v141;
  v144 = v143;
  v289 = v145;
  v146 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v250) = 256;
  v288 = Text.init(_:tableName:bundle:comment:)(v146, v148, v147 & 1, v149, 0, 0, 0, 0, 0, v250);
  v271 = v150;
  v152 = v151;
  v290 = v153;
  sub_100006F64(&qword_100CA7040, &qword_100CA7030, &qword_100A32000, &protocol conformance descriptor for Forecast<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v154 = dispatch thunk of Collection.distance(from:to:)();
  v155 = __OFSUB__(v154, 1);
  result = v154 - 1;
  if (!v155)
  {
    Forecast.subscript.getter();
    v157 = sub_1003288EC(v140);
    v159 = v158;
    v258 = v160;
    LOBYTE(v321[0]) = v144 & 1;
    v161 = v152 & 1;
    v325 = v152 & 1;
    v324 = v144 & 1;
    LODWORD(v291) = v144 & 1;
    v320 = v152 & 1;
    v163 = v162 & 1;
    v319 = v162 & 1;
    LODWORD(v263) = v161;
    v264 = v163;
    v164 = v293;
    sub_10010CD54(v293, v292, v144 & 1);
    v165 = v289;

    v166 = v288;
    v167 = v271;
    v168 = v161;
    LODWORD(v270) = v161;
    sub_10010CD54(v288, v271, v161);

    LODWORD(v262) = v163;
    sub_10010CD54(v157, v159, v163);
    v169 = v258;

    v170 = v164;
    v171 = v292;
    sub_10010CD54(v170, v292, v291);

    sub_10010CD54(v166, v167, v168);
    v172 = v290;

    v259 = v159;
    v260 = v157;
    sub_10010CD54(v157, v159, v163);

    sub_10010CD64(v157, v159, v163);
    v173 = v169;

    v174 = v288;
    sub_10010CD64(v288, v167, v325);

    v175 = v293;
    sub_10010CD64(v293, v171, v321[0]);

    v322[0] = 0;
    *v323 = v175;
    *&v323[8] = v171;
    v323[16] = v291;
    *&v323[24] = v165;
    *&v323[32] = v174;
    *&v323[40] = v167;
    v323[48] = v263;
    *&v323[56] = v172;
    v177 = v259;
    v176 = v260;
    *&v323[64] = v260;
    *&v323[72] = v259;
    v323[80] = v264;
    *&v323[88] = v173;
    v323[96] = 0;
    sub_10022C350(&qword_100CAD230, &qword_100A9AE20);
    sub_100006F64(&qword_100CAD238, &qword_100CAD230, &qword_100A9AE20, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10010CD64(v176, v177, v262);

    sub_10010CD64(v174, v167, v270);

    sub_10010CD64(v293, v292, v291);

    (*(v257 + 8))(v256, v261);
    memcpy(v323, __src, 0x61uLL);
    v97 = v294;
    v115 = v310;
    goto LABEL_18;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1003271F0@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CAD2E0, &qword_100A3C6A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v34[-v7];
  __chkstk_darwin(v9);
  v11 = &v34[-v10];
  __chkstk_darwin(v12);
  v14 = &v34[-v13];
  v15 = LocalizedStringKey.init(stringLiteral:)();
  *v14 = Text.init(_:tableName:bundle:comment:)(v15, v17, v16 & 1, v18, 0, 0, 0, 0, 0, 256);
  *(v14 + 1) = v19;
  v14[16] = v20 & 1;
  *(v14 + 3) = v21;
  *(v14 + 16) = 256;
  v22 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v33) = 256;
  *v11 = Text.init(_:tableName:bundle:comment:)(v22, v24, v23 & 1, v25, 0, 0, 0, 0, 0, v33);
  *(v11 + 1) = v26;
  v11[16] = v27 & 1;
  *(v11 + 3) = v28;
  *(v11 + 16) = 257;
  v29 = *(v3 + 16);
  v29(v8, v14, v2);
  v29(v5, v11, v2);
  v29(a1, v8, v2);
  v30 = sub_10022C350(&qword_100CAD2E8, &qword_100A3C6A8);
  v29(&a1[*(v30 + 48)], v5, v2);
  v31 = *(v3 + 8);
  v31(v11, v2);
  v31(v14, v2);
  v31(v5, v2);
  return (v31)(v8, v2);
}

uint64_t sub_1003274B0()
{
  sub_10022C350(&qword_100CAD2C0, &qword_100A3C690);
  type metadata accessor for DatePickerComponents();
  *(swift_allocObject() + 16) = xmmword_100A2D320;
  static DatePickerComponents.hourAndMinute.getter();
  static DatePickerComponents.date.getter();
  sub_10032A560(&qword_100CAD2C8, &type metadata accessor for DatePickerComponents, &protocol conformance descriptor for DatePickerComponents);
  sub_10022C350(&qword_100CAD2D0, &qword_100A3C698);
  sub_100006F64(&qword_100CAD2D8, &qword_100CAD2D0, &qword_100A3C698, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100327630@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for DebugWeatherCacheTestingView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = v36 - v10;
  __chkstk_darwin(v11);
  v44 = v36 - v12;
  __chkstk_darwin(v13);
  v38 = v36 - v14;
  __chkstk_darwin(v15);
  v43 = v36 - v16;
  __chkstk_darwin(v17);
  v37 = v36 - v18;
  v19 = LocalizedStringKey.init(stringLiteral:)();
  v36[1] = v20;
  v36[2] = v19;
  sub_100329E58(a1, v6);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v36[3] = v5;
  v22 = swift_allocObject();
  sub_100329EBC(v6, v22 + v21);
  Button<>.init(_:action:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_100329E58(a1, v6);
  v23 = swift_allocObject();
  sub_100329EBC(v6, v23 + v21);
  Button<>.init(_:action:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_100329E58(a1, v6);
  v24 = swift_allocObject();
  sub_100329EBC(v6, v24 + v21);
  v25 = v38;
  Button<>.init(_:action:)();
  v26 = *(v42 + 16);
  v27 = v44;
  v28 = v37;
  v26(v44, v37, v7);
  v29 = v39;
  v30 = v43;
  v26(v39, v43, v7);
  v31 = v40;
  v26(v40, v25, v7);
  v32 = v41;
  v26(v41, v27, v7);
  v33 = sub_10022C350(&qword_100CAD288, &unk_100A97D30);
  v26(&v32[*(v33 + 48)], v29, v7);
  v26(&v32[*(v33 + 64)], v31, v7);
  v34 = *(v42 + 8);
  v34(v25, v7);
  v34(v30, v7);
  v34(v28, v7);
  v34(v31, v7);
  v34(v29, v7);
  return (v34)(v44, v7);
}

uint64_t sub_100327B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100327BB8, v6, v5);
}

uint64_t sub_100327BB8()
{
  sub_100003B08();
  type metadata accessor for DebugWeatherCacheTestingView(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = sub_1000370DC(v1);

  return sub_100323320(v2);
}

uint64_t sub_100327C50()
{
  sub_100003B08();
  v1 = *v0;
  v2 = *v0;
  sub_100003AF8();
  *v3 = v2;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_10032A5A8, v5, v4);
}

uint64_t sub_100327D64(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DebugWeatherCacheTestingView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  sub_10000E830(v9, v11, v12, v10);
  sub_100329E58(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = &protocol witness table for MainActor;
  sub_100329EBC(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_1006C0138();
}

uint64_t sub_100327EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100327F7C, v6, v5);
}

uint64_t sub_100327F7C()
{
  sub_100003B08();
  type metadata accessor for DebugWeatherCacheTestingView(0);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = sub_1000370DC(v1);

  return sub_100323320(v2);
}

uint64_t sub_100328014()
{
  sub_100003B08();
  v1 = *v0;
  v2 = *v0;
  sub_100003AF8();
  *v3 = v2;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_100328128, v5, v4);
}

uint64_t sub_100328128()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

uint64_t sub_100328CE4(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAD040, &qword_100A958E0);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_10022C350(&qword_100CAD048, &unk_100A3C410);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  v14 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_10001B350(v13, 1, 1, v14);
  v15 = type metadata accessor for DebugWeatherCacheTestingView(0);
  sub_100035AD0(v13, v10, &qword_100CAD048, &unk_100A3C410);
  sub_10022C350(&qword_100CAD058, &qword_100A3C438);
  State.wrappedValue.setter();
  sub_1000180EC(v13, &qword_100CAD048, &unk_100A3C410);
  v16 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_10001B350(v7, 1, 1, v16);
  sub_100035AD0(v7, v4, &qword_100CAD040, &qword_100A958E0);
  sub_10022C350(&qword_100CAD060, &unk_100A3C440);
  State.wrappedValue.setter();
  sub_1000180EC(v7, &qword_100CAD040, &qword_100A958E0);
  v17 = (a1 + *(v15 + 40));
  v18 = *(v17 + 2);
  v21 = *v17;
  v22 = v18;
  v20[0] = 0;
  v20[1] = 0;
  sub_10022C350(&qword_100CAD228, &unk_100A3C600);
  return State.wrappedValue.setter();
}

uint64_t sub_100328F54@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CAD030, &unk_100A3C400);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v110 = v4;
  sub_1000038CC();
  v5 = type metadata accessor for WeatherServiceCaching.Options();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000038E4();
  v109 = v7;
  v8 = sub_10022C350(&qword_100CAD038, &unk_100A95810);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v108 = v10;
  v11 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v107 = v13;
  sub_1000038CC();
  v14 = type metadata accessor for WeatherServiceCaching();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000038E4();
  v106 = v16;
  v105 = sub_10022C350(&qword_100CAD040, &qword_100A958E0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003C38();
  v104 = v18 - v19;
  __chkstk_darwin(v20);
  v103 = &v90 - v21;
  v102 = sub_10022C350(&qword_100CAD048, &unk_100A3C410);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003C38();
  v101 = v23 - v24;
  __chkstk_darwin(v25);
  v100 = &v90 - v26;
  sub_1000038CC();
  type metadata accessor for Calendar();
  sub_1000037C4();
  v98 = v28;
  v99 = v27;
  __chkstk_darwin(v27);
  sub_1000038E4();
  v97 = v29;
  sub_1000038CC();
  v30 = type metadata accessor for TimeZone();
  v91 = v30;
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  sub_1000037D8();
  v34 = v33 - v32;
  v35 = type metadata accessor for Date();
  sub_1000037C4();
  v111 = v36;
  __chkstk_darwin(v37);
  sub_100003C38();
  v96 = v38 - v39;
  __chkstk_darwin(v40);
  __chkstk_darwin(v41);
  v43 = &v90 - v42;
  LOBYTE(v112) = 0;
  State.init(wrappedValue:)();
  v44 = *(&v114 + 1);
  *a1 = v114;
  *(a1 + 8) = v44;
  v45 = type metadata accessor for DebugWeatherCacheTestingView(0);
  v93 = *(v45 + 20);
  v94 = v45;
  Date.init()();
  static TimeZone.current.getter();
  Date.startOfDay(timeZone:)();
  v46 = v31 + 8;
  v47 = *(v31 + 8);
  v92 = v46;
  v47(v34, v30);
  v48 = v111;
  v49 = *(v111 + 8);
  v50 = sub_10001148C();
  v49(v50);
  v51 = *(v48 + 16);
  v111 = v48 + 16;
  v95 = v51;
  v52 = sub_100020E44();
  v53(v52);
  sub_10001148C();
  State.init(wrappedValue:)();
  (v49)(v43, v35);
  v93 = *(v45 + 24);
  v54 = v96;
  Date.init()();
  static TimeZone.current.getter();
  Date.startOfDay(timeZone:)();
  v55 = v34;
  v56 = v91;
  v47(v55, v91);
  (v49)(v54, v35);
  v57 = v97;
  static Calendar.current.getter();
  Date.addDays(_:calendar:)();
  (*(v98 + 8))(v57, v99);
  v58 = sub_10001148C();
  v49(v58);
  v59 = sub_100020E44();
  v95(v59);
  sub_10001148C();
  State.init(wrappedValue:)();
  (v49)(v43, v35);
  v60 = v94;
  v61 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v62 = v100;
  sub_10000E830(v100, v63, v64, v61);
  sub_100035AD0(v62, v101, &qword_100CAD048, &unk_100A3C410);
  State.init(wrappedValue:)();
  sub_1000180EC(v62, &qword_100CAD048, &unk_100A3C410);
  v65 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  v66 = v103;
  sub_10000E830(v103, v67, v68, v65);
  sub_100035AD0(v66, v104, &qword_100CAD040, &qword_100A958E0);
  State.init(wrappedValue:)();
  sub_1000180EC(v66, &qword_100CAD040, &qword_100A958E0);
  v69 = a1 + v60[9];
  LOBYTE(v112) = 0;
  State.init(wrappedValue:)();
  v70 = *(&v114 + 1);
  *v69 = v114;
  *(v69 + 8) = v70;
  v71 = a1 + v60[10];
  v112 = 0;
  v113 = 0;
  sub_10022C350(&qword_100CA6078, &unk_100A30870);
  State.init(wrappedValue:)();
  v72 = v115;
  *v71 = v114;
  *(v71 + 16) = v72;
  v73 = v60[11];
  type metadata accessor for WeatherService();
  static WeatherServiceCaching.disabled.getter();
  *(a1 + v73) = WeatherService.__allocating_init(caching:)();
  v74 = v60[12];
  *(a1 + v74) = static WeatherService.shared.getter();
  v75 = v60[13];
  if (qword_100CA1F00 != -1)
  {
    sub_1000167D8(&qword_100CA1F00);
  }

  v76 = type metadata accessor for Location();
  sub_10000703C(v76, qword_100CAD018);
  Location.coordinate.getter();
  v78 = v77;
  Location.coordinate.getter();
  *(a1 + v75) = [objc_allocWithZone(CLLocation) initWithLatitude:v78 longitude:v79];
  Location.timeZone.getter();
  v80 = sub_10000E91C();
  sub_10001B350(v80, v81, v82, v56);
  v83 = type metadata accessor for WeatherServiceLocationOptions();
  sub_10000E830(v108, v84, v85, v83);
  static WeatherServiceCaching.Options.reloadIgnoringLocalCacheData.getter();
  v86 = type metadata accessor for WeatherNetworkActivity();
  sub_10000E830(v110, v87, v88, v86);
  return WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:)();
}

uint64_t type metadata accessor for DebugWeatherCacheTestingView(uint64_t a1)
{
  result = qword_100CAD0C0;
  if (!qword_100CAD0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DebugWeatherCacheTestingView.RequestType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_100329908(uint64_t a1)
{
  sub_100329AF4(319, &qword_100CAD0D0, &type metadata for DebugWeatherCacheTestingView.RequestType);
  if (v1 <= 0x3F)
  {
    sub_100329A9C(319);
    if (v2 <= 0x3F)
    {
      sub_100082768(319, &qword_100CAD0E0, &qword_100CAD048, &unk_100A3C410);
      if (v3 <= 0x3F)
      {
        sub_100082768(319, &qword_100CAD0E8, &qword_100CAD040, &qword_100A958E0);
        if (v4 <= 0x3F)
        {
          sub_100329AF4(319, &qword_100CA6D40, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            sub_100082768(319, &qword_100CAD0F0, &qword_100CA6078, &unk_100A30870);
            if (v6 <= 0x3F)
            {
              type metadata accessor for WeatherService();
              if (v7 <= 0x3F)
              {
                sub_1001A388C();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for WeatherServiceFetchOptions();
                  if (v9 <= 0x3F)
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
}

void sub_100329A9C(uint64_t a1)
{
  if (!qword_100CAD0D8)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100CAD0D8);
    }
  }
}

void sub_100329AF4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100329BA8()
{
  result = qword_100CAD160;
  if (!qword_100CAD160)
  {
    result = swift_getWitnessTable(byte_100A3C540, &type metadata for DebugWeatherCacheTestingView.RequestType, v0, v1);
    atomic_store(result, &qword_100CAD160);
  }

  return result;
}

unint64_t sub_100329C04()
{
  result = qword_100CAD170;
  if (!qword_100CAD170)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CAD168, &qword_100A3C568);
    v4[0] = &protocol witness table for EmptyView;
    v4[1] = sub_100006F64(&qword_100CAD178, &qword_100CAD180, &qword_100A3C570, &protocol conformance descriptor for VStack<A>);
    v4[2] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CAD170);
  }

  return result;
}

unint64_t sub_100329CC8()
{
  result = qword_100CAD1F8;
  if (!qword_100CAD1F8)
  {
    result = swift_getWitnessTable(aI_28, &type metadata for DebugWeatherCacheTestingView.RequestType, v0, v1);
    atomic_store(result, &qword_100CAD1F8);
  }

  return result;
}

unint64_t sub_100329D1C()
{
  result = qword_100CAD248;
  if (!qword_100CAD248)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD240, &qword_100A3C610);
    v4[0] = sub_100006F64(&qword_100CAD238, &qword_100CAD230, &qword_100A9AE20, &protocol conformance descriptor for TupleView<A>);
    v4[1] = &protocol witness table for Text;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD248);
  }

  return result;
}

unint64_t sub_100329DD4()
{
  result = qword_100CAD258;
  if (!qword_100CAD258)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD250, &qword_100A3C618);
    v4[0] = sub_100329D1C();
    v4[1] = v4[0];
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD258);
  }

  return result;
}

uint64_t sub_100329E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugWeatherCacheTestingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100329EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugWeatherCacheTestingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100329F20()
{
  v1 = type metadata accessor for DebugWeatherCacheTestingView(0);
  sub_100003810(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_100328CE4(v3);
}

uint64_t sub_100329F9C(uint64_t a1)
{
  v3 = type metadata accessor for DebugWeatherCacheTestingView(0);
  sub_100003810(v3);
  return sub_100327D64(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

uint64_t sub_10032A02C()
{
  v0 = type metadata accessor for DebugWeatherCacheTestingView(0);
  sub_100003810(v0);
  return sub_100324188();
}

uint64_t sub_10032A084()
{
  sub_100008188();
  v1 = type metadata accessor for DebugWeatherCacheTestingView(0);
  sub_100003810(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = sub_10000C9B8(v2);

  return sub_100327EE4(v3, v4, v5, v6);
}

uint64_t sub_10032A158()
{
  type metadata accessor for DebugWeatherCacheTestingView(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v1 + v3;

  type metadata accessor for Date();
  sub_1000037E8();
  v6 = *(v5 + 8);
  v7 = sub_10000C918();
  v6(v7);
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  sub_10002FE10();
  v8 = sub_10000C918();
  v6(v8);

  v9 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  if (!sub_100020660(v9))
  {
    sub_100003B20();
    v10 = sub_10000C918();
    v11(v10);
  }

  sub_10022C350(&qword_100CAD058, &qword_100A3C438);
  sub_10002FE10();
  v12 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  if (!sub_100020660(v12))
  {
    sub_100003B20();
    v13 = sub_10000C918();
    v14(v13);
  }

  sub_10022C350(&qword_100CAD060, &unk_100A3C440);
  sub_10002FE10();

  v15 = *(v0 + 56);
  type metadata accessor for WeatherServiceFetchOptions();
  sub_1000037E8();
  (*(v16 + 8))(v4 + v15);
  sub_10004190C();

  return swift_deallocObject();
}

uint64_t sub_10032A3D4()
{
  sub_100008188();
  v1 = type metadata accessor for DebugWeatherCacheTestingView(0);
  sub_100003810(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = sub_10000C9B8(v2);

  return sub_100327B20(v3, v4, v5, v6);
}

unint64_t sub_10032A4A8()
{
  result = qword_100CAD2F0;
  if (!qword_100CAD2F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD188, &qword_100A3C578);
    v4[0] = sub_100006F64(&qword_100CAD2F8, &qword_100CAD300, &qword_100A3C6B0, &protocol conformance descriptor for List<A, B>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD2F0);
  }

  return result;
}

uint64_t sub_10032A560(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t property wrapper backing initializer of WeatherAsyncImage.loadingState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for WeatherAsyncImage.LoadingState(0, a2, a3, a4);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  v9 = __chkstk_darwin(v8);
  (*(v7 + 16))(&v12 - v10, a1, v5, v9);
  State.init(wrappedValue:)();
  return (*(v7 + 8))(a1, v5);
}

uint64_t _s7Weather0A10AsyncImageV13_loadingState33_511D3CCAD74339EA7557309BE8DB11CCLL7SwiftUI0E0VyAC07LoadingE0AELLVyx_GGvpfi_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  v5 = type metadata accessor for WeatherAsyncImage.LoadingState(0, a1, a2, a3);
  type metadata accessor for URL();
  sub_100003934();
  result = sub_10001B350(v6, v7, v8, v9);
  *(a4 + *(v5 + 40)) = 0x8000000000000000;
  return result;
}

uint64_t WeatherAsyncImage.init<>(url:scale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_10022C350(&qword_100CAD310, &unk_100A3C6C0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v27 - v11);
  v13 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  sub_100035AD0(a1, &v27 - v15, &qword_100CB3AB0, &unk_100A2FB80);
  v17 = type metadata accessor for URL();
  sub_100003934();
  sub_10001B350(v18, v19, v20, v17);
  v21 = sub_10022C350(&qword_100CAD318, &qword_100A3C6D0);
  *v12 = 0;
  sub_100003934();
  sub_10001B350(v22, v23, v24, v17);
  *(v12 + *(v6 + 40)) = 0x8000000000000000;
  sub_100035AD0(v12, v9, &qword_100CAD310, &unk_100A3C6C0);
  State.init(wrappedValue:)();
  sub_1000180EC(a1, &qword_100CB3AB0, &unk_100A2FB80);
  sub_1000180EC(v12, &qword_100CAD310, &unk_100A3C6C0);
  result = sub_10032A9F8(v16, a2);
  *(a2 + v21[9]) = a3;
  *(a2 + v21[10]) = 0;
  v26 = (a2 + v21[11]);
  *v26 = sub_10032A924;
  v26[1] = 0;
  return result;
}

uint64_t sub_10032A924@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 >> 62)
  {
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA2600 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    if (v4 == 1)
    {
      result = Image.init(systemName:)();
    }

    else
    {
      result = Image.init(_:bundle:)();
    }
  }

  else
  {
  }

  *a2 = result;
  return result;
}

uint64_t sub_10032A9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WeatherAsyncImagePhase.image.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
  }

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2600 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v2 == 1)
  {
    return Image.init(systemName:)();
  }

  else
  {
    return 0;
  }
}

uint64_t WeatherAsyncImage.init(url:scale:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = type metadata accessor for WeatherAsyncImage.LoadingState(0, a5, a6, a4);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = (&v30 - v18);
  type metadata accessor for URL();
  sub_100003934();
  sub_10001B350(v20, v21, v22, v23);
  v25 = type metadata accessor for WeatherAsyncImage(0, a5, a6, v24);
  _s7Weather0A10AsyncImageV13_loadingState33_511D3CCAD74339EA7557309BE8DB11CCLL7SwiftUI0E0VyAC07LoadingE0AELLVyx_GGvpfi_0(a5, a6, v26, v19);
  property wrapper backing initializer of WeatherAsyncImage.loadingState(v19, a5, a6, v27);
  result = sub_10032A9F8(a1, a7);
  *(a7 + v25[9]) = a8;
  *(a7 + v25[10]) = a2;
  v29 = (a7 + v25[11]);
  *v29 = a3;
  v29[1] = a4;
  return result;
}

uint64_t sub_10032AC4C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (WeatherAsyncImagePhase.image.getter(a1))
  {
    (*(v6 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v4);
    v10 = Image.resizable(capInsets:resizingMode:)();
    (*(v6 + 8))(v9, v4);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    memcpy(&v16[6], __src, 0x70uLL);
    v13[0] = v10;
    v13[1] = 0;
    LOWORD(v13[2]) = 257;
    memcpy(&v13[2] + 2, v16, 0x76uLL);
    memcpy(v15, v13, 0x88uLL);
    sub_10032E038(v15);
    memcpy(v14, v15, 0x89uLL);
    sub_100028244();
    sub_100028244();
    sub_10022C350(&qword_100CAD558, &unk_100A3C960);
    sub_10032DF28();
    _ConditionalContent<>.init(storage:)();

    sub_1000180EC(v13, &qword_100CAD558, &unk_100A3C960);
    sub_1000180EC(v13, &qword_100CAD558, &unk_100A3C960);
  }

  else
  {
    static Color.white.getter();
    v11 = Color.opacity(_:)();

    v15[0] = v11;
    sub_10032DF1C(v15);
    memcpy(v14, v15, 0x89uLL);
    sub_10022C350(&qword_100CAD558, &unk_100A3C960);
    sub_10032DF28();
    _ConditionalContent<>.init(storage:)();
  }

  memcpy(v14, v16, 0x89uLL);
  memcpy(a2, v16, 0x89uLL);
  memcpy(v15, v16, 0x89uLL);
  sub_100035AD0(v14, v13, &qword_100CAD578, &unk_100A3C970);
  return sub_1000180EC(v15, &qword_100CAD578, &unk_100A3C970);
}

uint64_t sub_10032AF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  __chkstk_darwin(v5);
  v60 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v51 = &v48[-v9];
  v10 = sub_10022C350(qword_100CAD4D0, &unk_100A3EA40);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v48[-v12];
  v14 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v14 - 8);
  v57 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v53 = &v48[-v17];
  __chkstk_darwin(v18);
  v20 = &v48[-v19];
  v21 = *(a3 + 24);
  v58 = *(a3 + 16);
  v59 = v21;
  v23 = type metadata accessor for WeatherAsyncImage.LoadingState(0, v58, v21, v22);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v56 = &v48[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v48[-v27];
  v52 = a3;
  v29 = *(a3 + 48);
  v30 = type metadata accessor for State();
  v61 = v3;
  v54 = v30;
  State.wrappedValue.getter();
  sub_100035AD0(v28 + *(v23 + 36), v20, &qword_100CB3AB0, &unk_100A2FB80);
  v55 = *(v24 + 8);
  v55(v28, v23);
  v31 = *(v11 + 56);
  v32 = v62;
  sub_100035AD0(v20, v13, &qword_100CB3AB0, &unk_100A2FB80);
  v33 = v63;
  sub_100035AD0(v32, &v13[v31], &qword_100CB3AB0, &unk_100A2FB80);
  if (sub_100024D10(v13, 1, v33) == 1)
  {
    sub_1000180EC(v20, &qword_100CB3AB0, &unk_100A2FB80);
    if (sub_100024D10(&v13[v31], 1, v33) == 1)
    {
      return sub_1000180EC(v13, &qword_100CB3AB0, &unk_100A2FB80);
    }
  }

  else
  {
    v35 = v53;
    sub_100035AD0(v13, v53, &qword_100CB3AB0, &unk_100A2FB80);
    if (sub_100024D10(&v13[v31], 1, v33) != 1)
    {
      v39 = v64;
      v40 = *(v64 + 32);
      v50 = v29;
      v41 = v51;
      v40(v51, &v13[v31], v33);
      sub_10032DEB8(qword_100CAD328, &protocol conformance descriptor for URL);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v39 + 8);
      v42(v41, v33);
      sub_1000180EC(v20, &qword_100CB3AB0, &unk_100A2FB80);
      v42(v35, v33);
      result = sub_1000180EC(v13, &qword_100CB3AB0, &unk_100A2FB80);
      if (v49)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1000180EC(v20, &qword_100CB3AB0, &unk_100A2FB80);
    (*(v64 + 8))(v35, v33);
  }

  sub_1000180EC(v13, qword_100CAD4D0, &unk_100A3EA40);
LABEL_7:
  v36 = v61;
  v37 = v56;
  State.wrappedValue.getter();
  if (*v37)
  {
    v38 = *v37;
    v55(v37, v23);
    [v38 cancel];
  }

  else
  {
    v55(v37, v23);
  }

  v43 = v64;
  v44 = v60;
  v45 = v57;
  sub_100035AD0(v32, v57, &qword_100CB3AB0, &unk_100A2FB80);
  if (sub_100024D10(v45, 1, v33) == 1)
  {
    sub_1000180EC(v45, &qword_100CB3AB0, &unk_100A2FB80);
    __chkstk_darwin(*(v36 + *(v52 + 40)));
    v46 = v59;
    *&v48[-32] = v58;
    *&v48[-24] = v46;
    *&v48[-16] = v36;
    return withTransaction<A>(_:_:)();
  }

  else
  {
    (*(v43 + 32))(v44, v45, v33);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA2600 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    sub_10032B80C(v47, v65, v44, v36, v58, v59);
    (*(v43 + 8))(v44, v33);
  }
}

uint64_t sub_10032B658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v9 = type metadata accessor for WeatherAsyncImage.LoadingState(0, a2, a3, v8);
  __chkstk_darwin(v9);
  v11 = (&v16 - v10);
  type metadata accessor for WeatherAsyncImage(0, a2, a3, v12);
  type metadata accessor for State();
  State.wrappedValue.getter();

  *v11 = 0;
  State.wrappedValue.setter();
  v13 = type metadata accessor for URL();
  sub_10001B350(v7, 1, 1, v13);
  State.wrappedValue.getter();
  sub_10032A9F8(v7, v11 + *(v9 + 36));
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  v14 = *(v9 + 40);
  sub_10032D76C(*(v11 + v14));
  *(v11 + v14) = 0x8000000000000000;
  return State.wrappedValue.setter();
}

void sub_10032B80C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a4;
  v56 = a3;
  v8 = a2;
  v44 = a2;
  v10 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v10 - 8);
  v54 = &v42 - v11;
  v47 = a5;
  v48 = a6;
  v12 = a6;
  v53 = type metadata accessor for WeatherAsyncImage.LoadingState(0, a5, a6, v13);
  __chkstk_darwin(v53);
  v15 = (&v42 - v14);
  v46 = type metadata accessor for URL();
  v16 = *(v46 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v46);
  v42 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WeatherAsyncImage(0, a5, v12, v18);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v42 - v22;
  v45 = a1;
  swift_beginAccess();
  v43 = (*(a1 + 16) < 1) & v8;
  v50 = [objc_opt_self() sharedSession];
  v24 = v56;
  URL._bridgeToObjectiveC()(v25);
  v49 = v26;
  (*(v20 + 16))(v23, v55, v19);
  v27 = *(v16 + 16);
  v51 = v16 + 16;
  v52 = v27;
  v28 = v46;
  v27(&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v46);
  v29 = (*(v20 + 80) + 33) & ~*(v20 + 80);
  v30 = (v21 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v16 + 80) + v30 + 9) & ~*(v16 + 80);
  v32 = swift_allocObject();
  v33 = v48;
  *(v32 + 16) = v47;
  *(v32 + 24) = v33;
  *(v32 + 32) = v43;
  (*(v20 + 32))(v32 + v29, v23, v19);
  v34 = v32 + v30;
  *v34 = v45;
  *(v34 + 8) = v44;
  (*(v16 + 32))(v32 + v31, v42, v28);
  aBlock[4] = sub_10032DD4C;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10032CB38;
  aBlock[3] = &unk_100C4EDC8;
  v35 = _Block_copy(aBlock);

  v37 = v49;
  v36 = v50;
  v38 = [v50 downloadTaskWithURL:v49 completionHandler:v35];
  _Block_release(v35);

  v39 = v53;
  type metadata accessor for State();
  v40 = v38;
  State.wrappedValue.getter();

  *v15 = v38;
  State.wrappedValue.setter();
  v41 = v54;
  v52(v54, v56, v28);
  sub_10001B350(v41, 0, 1, v28);
  State.wrappedValue.getter();
  sub_10032A9F8(v41, v15 + *(v39 + 36));
  State.wrappedValue.setter();
  [v40 resume];
}

uint64_t sub_10032BCE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v17 - 8);
  v51 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v22 = type metadata accessor for URL();
  __chkstk_darwin(v22);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    v47 = v27;
    v48 = v25;
    v49 = a5;
    v50 = a6;
    v28 = v23;
    sub_100035AD0(a1, v21, &qword_100CB3AB0, &unk_100A2FB80);
    if (sub_100024D10(v21, 1, v28) == 1)
    {
      sub_1000180EC(v21, &qword_100CB3AB0, &unk_100A2FB80);
    }

    else
    {
      v46 = a1;
      v29 = v47;
      v30 = v48;
      (*(v48 + 32))(v47, v21, v28);
      URL._bridgeToObjectiveC()(v31);
      v33 = v32;
      v34 = CGImageSourceCreateWithURL(v32, 0);

      if (v34)
      {
        if (CGImageSourceGetCount(v34) > 0)
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v34, 0, 0);
          if (ImageAtIndex)
          {
            v37 = ImageAtIndex;
            v38 = type metadata accessor for WeatherAsyncImage(0, a9, a10, v36);
            v39 = v49;
            __chkstk_darwin(*(v49 + *(v38 + 40)));
            *(&v45 - 8) = a9;
            *(&v45 - 7) = a10;
            v40 = v47;
            v41 = v50;
            *(&v45 - 6) = v47;
            *(&v45 - 5) = v41;
            *(&v45 - 4) = v39;
            *(&v45 - 3) = v37;
            *(&v45 - 2) = v34;
            withTransaction<A>(_:_:)();

            return (*(v48 + 8))(v40, v28);
          }
        }

        (*(v48 + 8))(v47, v28);
      }

      else
      {
        (*(v30 + 8))(v29, v28);
      }

      a1 = v46;
    }

    v43 = v51;
    sub_100035AD0(a1, v51, &qword_100CB3AB0, &unk_100A2FB80);
    sub_100024D10(v43, 1, v28);
    sub_1000180EC(v43, &qword_100CB3AB0, &unk_100A2FB80);
    a5 = v49;
    a6 = v50;
  }

  v44 = type metadata accessor for WeatherAsyncImage(0, a9, a10, v24);
  __chkstk_darwin(*(a5 + *(v44 + 40)));
  *(&v45 - 8) = a9;
  *(&v45 - 7) = a10;
  *(&v45 - 6) = a6;
  *(&v45 - 5) = a1;
  *(&v45 - 32) = a7 & 1;
  *(&v45 - 3) = a8;
  *(&v45 - 2) = a5;
  *(&v45 - 1) = a3;
  return withTransaction<A>(_:_:)();
}

uint64_t sub_10032C0B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a7;
  v41 = a6;
  v42 = a5;
  v9 = a4;
  v45 = a3;
  v44 = type metadata accessor for WeatherAsyncImage.LoadingState(0, a6, a7, a4);
  __chkstk_darwin(v44);
  v43 = &v36[-v12];
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100CA27A8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000703C(v17, qword_100D90D50);
  (*(v14 + 16))(v16, a1, v13);
  swift_retain_n();
  v18 = a2;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v7;
    v22 = v21;
    v38 = swift_slowAlloc();
    v46 = v38;
    *v22 = 136315394;
    sub_10032DEB8(&qword_100CA5728, &protocol conformance descriptor for URL);
    v37 = v20;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v8;
    v24 = v9;
    v26 = v25;
    (*(v14 + 8))(v16, v13);
    v27 = sub_100078694(v23, v26, &v46);
    v9 = v24;
    v8 = v39;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2048;
    swift_beginAccess();
    v28 = *(v18 + 16);

    *(v22 + 14) = v28;

    _os_log_impl(&_mh_execute_header, v19, v37, "Successfully loaded image for URL=%s. retryCount=%ld", v22, 0x16u);
    sub_100006F14(v38);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  type metadata accessor for WeatherAsyncImage(0, v41, v8, v29);
  sub_10032C48C(0);
  v30 = v9;
  v31 = Image.init(decorative:scale:orientation:)();
  v32 = v44;
  type metadata accessor for State();
  v33 = v43;
  State.wrappedValue.getter();
  v34 = *(v32 + 40);
  sub_10032D76C(*&v33[v34]);
  *&v33[v34] = v31;
  return State.wrappedValue.setter();
}

uint64_t sub_10032C48C(size_t index)
{
  v2 = CGImageSourceCopyPropertiesAtIndex(v1, index, 0);
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, kCGImagePropertyOrientation);

    if (Value)
    {
      v5 = Value;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static Int._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  return 8;
}

void sub_10032C554(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v57 = a4;
  v58 = a6;
  LODWORD(v56) = a3;
  v13 = type metadata accessor for WeatherAsyncImage.LoadingState(0, a7, a8, a4);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v16 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  swift_beginAccess();
  if (*(a1 + 16) > 2)
  {
    v57 = v13;
    if (qword_100CA27A8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000703C(v35, qword_100D90D50);
    sub_100035AD0(a2, v18, &qword_100CB3AB0, &unk_100A2FB80);
    swift_retain_n();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v55 = v8;
      v39 = v38;
      v56 = swift_slowAlloc();
      v59[0] = v56;
      *v39 = 136446466;
      v40 = sub_1002786E8();
      v54 = v9;
      v42 = v41;
      sub_1000180EC(v18, &qword_100CB3AB0, &unk_100A2FB80);
      v43 = sub_100078694(v40, v42, v59);
      v9 = v54;

      *(v39 + 4) = v43;
      *(v39 + 12) = 2048;
      swift_beginAccess();
      v44 = *(a1 + 16);

      *(v39 + 14) = v44;

      _os_log_impl(&_mh_execute_header, v36, v37, "Max retries hit, failed to load image for URL=%{public}s. retryCount=%ld", v39, 0x16u);
      sub_100006F14(v56);

      v8 = v55;
    }

    else
    {

      sub_1000180EC(v18, &qword_100CB3AB0, &unk_100A2FB80);
    }

    v49 = v57;
    v50 = v58;
    if (!v58)
    {
      v51 = type metadata accessor for WeatherAsyncImage.LoadingError(0, v9, v8, v45);
      swift_getWitnessTable(byte_100A3C920, v51);
      v50 = swift_allocError();
    }

    v52 = v50 | 0x4000000000000000;
    type metadata accessor for WeatherAsyncImage(0, v9, v8, v45);
    swift_errorRetain();
    type metadata accessor for State();
    State.wrappedValue.getter();
    v53 = *(v49 + 40);
    sub_10032D76C(*&v15[v53]);
    *&v15[v53] = v52;
    State.wrappedValue.setter();
  }

  else
  {
    if (qword_100CA27A8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000703C(v22, qword_100D90D50);
    sub_100035AD0(a2, v21, &qword_100CB3AB0, &unk_100A2FB80);
    swift_retain_n();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v55 = v8;
      v26 = v25;
      v27 = swift_slowAlloc();
      v54 = v9;
      v28 = a5;
      v29 = v27;
      v60[0] = v27;
      *v26 = 136446466;
      v30 = sub_1002786E8();
      v32 = v31;
      sub_1000180EC(v21, &qword_100CB3AB0, &unk_100A2FB80);
      v33 = sub_100078694(v30, v32, v60);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2048;
      swift_beginAccess();
      v34 = *(a1 + 16);

      *(v26 + 14) = v34;

      _os_log_impl(&_mh_execute_header, v23, v24, "Retrying - failed to load image for URL=%{public}s. retryCount=%ld", v26, 0x16u);
      sub_100006F14(v29);
      a5 = v28;
      v9 = v54;

      v8 = v55;
    }

    else
    {

      sub_1000180EC(v21, &qword_100CB3AB0, &unk_100A2FB80);
    }

    swift_beginAccess();
    v46 = *(a1 + 16);
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      __break(1u);
    }

    else
    {
      *(a1 + 16) = v48;
      sub_10032B80C(a1, v56 & 1, v57, a5, v9, v8);
    }
  }
}

uint64_t sub_10032CB38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for URL();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = 1;
  }

  sub_10001B350(v10, v13, 1, v12);

  v14 = a3;
  v15 = a4;
  v11(v10, a3, a4);

  return sub_1000180EC(v10, &qword_100CB3AB0, &unk_100A2FB80);
}

uint64_t WeatherAsyncImage.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  sub_1000037C4();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  v52 = v9;
  v51 = v10;
  v12 = type metadata accessor for WeatherAsyncImage.LoadingState(0, v9, v10, v11);
  sub_1000037C4();
  v14 = v13;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v19 = type metadata accessor for WeatherAsyncImage.Inner(255, v9, v10, v18);
  v20 = type metadata accessor for ModifiedContent();
  v21 = sub_10022E824(&qword_100CB3AB0, &unk_100A2FB80);
  v60 = v21;
  v22 = sub_10000FC60();
  WitnessTable = swift_getWitnessTable(v22, v19);
  v82[0] = WitnessTable;
  v82[1] = &protocol witness table for _AppearanceActionModifier;
  v23 = sub_100007E30();
  v56 = v20;
  v24 = swift_getWitnessTable(v23, v20, v82);
  v59 = v24;
  v58 = sub_10032D6AC();
  v75 = v20;
  v76 = v21;
  v77 = v24;
  v78 = v58;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v61 = v25;
  __chkstk_darwin(v26);
  v53 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v57 = &v51 - v29;
  type metadata accessor for State();
  v30 = v64;
  State.wrappedValue.getter();
  v31 = *&v17[*(v12 + 40)];
  sub_10032D74C(v31);
  (*(v14 + 8))(v17, v12);
  v32 = v30;
  v33 = (v30 + *(a1 + 44));
  v34 = *v33;
  v35 = v33[1];
  v72 = v31;
  v73 = v34;
  v74 = v35;
  v36 = v55;
  (*(v4 + 16))(v55, v32, a1);
  v37 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v38 = swift_allocObject();
  v39 = v52;
  v40 = v51;
  *(v38 + 16) = v52;
  *(v38 + 24) = v40;
  (*(v4 + 32))(v38 + v37, v36, a1);
  v65 = 0;
  v66 = 0;
  v67 = sub_10032D78C;
  v68 = v38;

  swift_checkMetadataState();
  View.modifier<A>(_:)();

  sub_10032D76C(v31);

  v41 = v75;
  v42 = v78;
  v55 = v80;
  v65 = v75;
  v66 = v76;
  v67 = v77;
  v68 = v78;
  v69 = v79;
  v70 = v80;
  v71 = v81;
  sub_10032D2BC(v64, v39, v40, v43);
  swift_checkMetadataState();
  v44 = v53;
  View.onChange<A>(of:initial:_:)();

  sub_10032D76C(v41);

  sub_10002B028(v42);
  sub_10002B028(v55);
  v45 = v61;
  v46 = *(v61 + 16);
  v47 = v57;
  v48 = OpaqueTypeMetadata2;
  v46(v57, v44, OpaqueTypeMetadata2);
  v49 = *(v45 + 8);
  v49(v44, v48);
  v46(v63, v47, v48);
  return (v49)(v47, v48);
}

void sub_10032D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for WeatherAsyncImage.LoadingState(0, a2, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v13 - v8);
  type metadata accessor for WeatherAsyncImage(0, a2, a3, v10);
  type metadata accessor for State();
  State.wrappedValue.getter();
  if (*v9)
  {
    v11 = *(v7 + 8);
    v12 = *v9;
    v11(v9, v6);
    [v12 cancel];
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t (*sub_10032D2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WeatherAsyncImage(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_10032DC94;
}

uint64_t sub_10032D444@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, char *a5@<X8>)
{
  v19 = a5;
  __chkstk_darwin(a1);
  v7 = type metadata accessor for _UnaryViewAdaptor();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  a2(a1, v12);
  _UnaryViewAdaptor.init(_:)();
  swift_getWitnessTable(&protocol conformance descriptor for _UnaryViewAdaptor<A>, v7);
  v15 = *(v8 + 16);
  v15(v14, v10, v7);
  v16 = *(v8 + 8);
  v16(v10, v7);
  v15(v19, v14, v7);
  return (v16)(v14, v7);
}

unint64_t WeatherAsyncImagePhase.error.getter(unint64_t a1)
{
  if (a1 >> 62 != 1)
  {
    return 0;
  }

  v1 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  swift_errorRetain();
  return v1;
}

unint64_t sub_10032D6AC()
{
  result = qword_100CAD320;
  if (!qword_100CAD320)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CB3AB0, &unk_100A2FB80);
    v4[0] = sub_10032DEB8(qword_100CAD328, &protocol conformance descriptor for URL);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CAD320);
  }

  return result;
}

unint64_t sub_10032D74C(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return swift_errorRetain();
  }

  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_10032D76C(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  if (!(result >> 62))
  {
  }

  return result;
}

void sub_10032D78C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_100008194();
  v7 = type metadata accessor for WeatherAsyncImage(v3, v4, v5, v6);
  sub_100003810(v7);
  v10 = v0 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_10032D188(v10, v1, v2, v8);
}

void sub_10032D848(uint64_t a1)
{
  sub_10000D420(319, &qword_100CAD3B0, &type metadata accessor for URL);
  if (v2 <= 0x3F)
  {
    sub_10013DB50();
    if (v4 <= 0x3F)
    {
      type metadata accessor for WeatherAsyncImage.LoadingState(255, *(a1 + 16), *(a1 + 24), v3);
      type metadata accessor for State();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10032D950(unint64_t *a1)
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

uint64_t sub_10032D978(uint64_t a1, unsigned int a2)
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

uint64_t sub_10032D9CC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t *sub_10032DA2C(unint64_t *result, uint64_t a2)
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

uint64_t sub_10032DA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10032DAA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10032DAE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10032DB20(uint64_t a1)
{
  sub_10000D420(319, &qword_100CAD4C0, sub_10032DC0C);
  if (v1 <= 0x3F)
  {
    sub_10000D420(319, &qword_100CAD3B0, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10032DC0C()
{
  result = qword_100CAD4C8;
  if (!qword_100CAD4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CAD4C8);
  }

  return result;
}

uint64_t sub_10032DC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = type metadata accessor for WeatherAsyncImage(0, v7, v8, a4);
  sub_100003810(v9);
  v11 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_10032D3F4(a1, a2, v11, v7, v8);
}

uint64_t sub_10032DD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = *(type metadata accessor for WeatherAsyncImage(0, v8, v9, a4) - 8);
  v11 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = type metadata accessor for URL();
  sub_100003810(v13);
  return sub_10032BCE0(a1, a2, a3, *(v4 + 32), v4 + v11, *(v4 + v12), *(v4 + v12 + 8), v4 + ((v12 + *(v14 + 80) + 9) & ~*(v14 + 80)), v8, v9);
}

uint64_t sub_10032DEB8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for URL();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10032DF28()
{
  result = qword_100CAD560;
  if (!qword_100CAD560)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD558, &unk_100A3C960);
    v4[0] = sub_10032DFB4();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD560);
  }

  return result;
}

unint64_t sub_10032DFB4()
{
  result = qword_100CAD568;
  if (!qword_100CAD568)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CAD570, &qword_100A992B0);
    v4[0] = &protocol witness table for Image;
    v4[1] = &protocol witness table for _AspectRatioLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD568);
  }

  return result;
}

uint64_t sub_10032E088(uint64_t a1)
{
  result = type metadata accessor for Text.Measurements();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10032E120@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v9[2] = v1 + *(type metadata accessor for ConditionDetailLegendView(0) + 20);
  v4 = sub_1008EEF10(sub_10032E810, v9, v3);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_10032E1CC(v3, v5, v6, v7, v4, a1);
}

uint64_t sub_10032E1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v24 = a4;
  v22 = a2;
  v23 = a3;
  v8 = type metadata accessor for GridItem.Size();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10022C350(&qword_100CAD610, &qword_100A3CA00);
  type metadata accessor for GridItem();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100A2D320;
  v21 = xmmword_100A3C980;
  *v11 = xmmword_100A3C980;
  v13 = enum case for GridItem.Size.flexible(_:);
  v14 = *(v9 + 104);
  v14(v11, enum case for GridItem.Size.flexible(_:), v8);
  GridItem.init(_:spacing:alignment:)();
  *v11 = v21;
  v14(v11, v13, v8);
  GridItem.init(_:spacing:alignment:)();
  *(a6 + 32) = v12;
  v26 = 0;
  State.init(wrappedValue:)();
  v15 = v28;
  *(a6 + 40) = v27;
  *(a6 + 48) = v15;
  v16 = type metadata accessor for MeasuredConditionDetailLegendView(0);
  v17 = *(v16 + 28);
  *(a6 + v17) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  result = swift_storeEnumTagMultiPayload();
  v20 = v22;
  v19 = v23;
  *a6 = a1;
  *(a6 + 8) = v20;
  *(a6 + 16) = v19;
  *(a6 + 24) = v24;
  *(a6 + *(v16 + 32)) = v25;
  return result;
}

double sub_10032E454(Swift::String *a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v5 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v5 - 8);
  v33 = &v32 - v6;
  v36 = type metadata accessor for Text.Measurements.Context();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(a1[1]);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  v13 = LocalizedStringKey.init(stringInterpolation:)();
  v17 = Text.init(_:tableName:bundle:comment:)(v13, v15, v14 & 1, v16, 0, 0, 0, 0, 0, 256);
  v19 = v18;
  v21 = v20;
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004726C8();
  swift_endAccess();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  sub_10010CD64(v17, v19, v21 & 1);

  v27 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v33, 1, 1, v27);
  v28 = type metadata accessor for Text.Suffix();
  sub_10001B350(v35, 1, 1, v28);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v30 = v29;
  sub_10010CD64(v22, v24, v26 & 1);

  (*(v34 + 8))(v8, v36);
  return v30;
}

uint64_t sub_10032E864@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for CoordinateSpace();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v33 - v7;
  v8 = type metadata accessor for MeasuredConditionDetailLegendView(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CAD6E0, &qword_100A3CAB8);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_10022C350(&qword_100CAD6E8, &qword_100A3CAC0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v33 - v16;
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v18 = sub_10022C350(&qword_100CAD6F0, &qword_100A3CAC8);
  sub_10032ECD8(v2, &v13[*(v18 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v13, v17, &qword_100CAD6E0, &qword_100A3CAB8);
  memcpy(&v17[*(v15 + 44)], __src, 0x70uLL);
  sub_100331F70(v2, v10, type metadata accessor for MeasuredConditionDetailLegendView);
  v19 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v20 = swift_allocObject();
  sub_10033202C(v10, v20 + v19, type metadata accessor for MeasuredConditionDetailLegendView);
  v21 = v34;
  (*(v4 + 104))(v34, enum case for CoordinateSpace.global(_:), v3);
  v22 = v35;
  (*(v4 + 16))(v35, v21, v3);
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = swift_allocObject();
  (*(v4 + 32))(v24 + v23, v22, v3);
  v25 = static Alignment.center.getter();
  v27 = v26;
  (*(v4 + 8))(v21, v3);
  v28 = v36;
  sub_10011C0F0(v17, v36, &qword_100CAD6E8, &qword_100A3CAC0);
  v29 = (v28 + *(sub_10022C350(&qword_100CAD6F8, &qword_100A3CAD0) + 36));
  *v29 = sub_100331898;
  v29[1] = v24;
  v29[2] = v25;
  v29[3] = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100331808;
  *(v30 + 24) = v20;
  result = sub_10022C350(&qword_100CAD700, &qword_100A3CAD8);
  v32 = (v28 + *(result + 36));
  *v32 = sub_100331938;
  v32[1] = v30;
  return result;
}

uint64_t sub_10032ECD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = type metadata accessor for MeasuredConditionDetailLegendView(0);
  v85 = *(v3 - 8);
  __chkstk_darwin(v3);
  v86 = v4;
  v87 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10022C350(&qword_100CAD710, &qword_100A3CAE8);
  __chkstk_darwin(v99);
  v96 = (&v80 - v5);
  v101 = sub_10022C350(&qword_100CAD718, &qword_100A3CAF0);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v80 - v6;
  v114 = sub_10022C350(&qword_100CAD720, &qword_100A3CAF8);
  __chkstk_darwin(v114);
  v97 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = &v80 - v9;
  v83 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v83);
  v84 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10022C350(&qword_100CAD728, &qword_100A3CB00);
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v88 = &v80 - v11;
  v94 = sub_10022C350(&qword_100CAD730, &qword_100A3CB08);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v80 - v12;
  v107 = sub_10022C350(&qword_100CAD738, &qword_100A3CB10);
  __chkstk_darwin(v107);
  v89 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v95 = &v80 - v15;
  v112 = sub_10022C350(&qword_100CAD740, &qword_100A3CB18);
  __chkstk_darwin(v112);
  v113 = &v80 - v16;
  v104 = sub_10022C350(&qword_100CAD748, &qword_100A3CB20);
  __chkstk_darwin(v104);
  v105 = &v80 - v17;
  v111 = sub_10022C350(&qword_100CAD750, &qword_100A3CB28);
  __chkstk_darwin(v111);
  v106 = &v80 - v18;
  v19 = type metadata accessor for AccessibilityChildBehavior();
  v109 = *(v19 - 8);
  v110 = v19;
  __chkstk_darwin(v19);
  v108 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CAD758, &qword_100A3CB30);
  __chkstk_darwin(v21);
  v23 = &v80 - v22;
  v81 = sub_10022C350(&qword_100CAD760, &qword_100A3CB38);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v25 = &v80 - v24;
  v103 = sub_10022C350(&qword_100CAD768, &qword_100A3CB40);
  __chkstk_darwin(v103);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v82 = &v80 - v29;
  v30 = type metadata accessor for ContentSizeCategory();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v80 - v35;
  sub_10009ECC8();
  (*(v31 + 32))(v33, v36, v30);
  v37 = (*(v31 + 88))(v33, v30);
  if (v37 != enum case for ContentSizeCategory.extraSmall(_:) && v37 != enum case for ContentSizeCategory.small(_:) && v37 != enum case for ContentSizeCategory.medium(_:) && v37 != enum case for ContentSizeCategory.large(_:) && v37 != enum case for ContentSizeCategory.extraLarge(_:) && v37 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v37 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v37 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v37 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v37 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v37 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v37 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      *v23 = static HorizontalAlignment.leading.getter();
      *(v23 + 1) = 0;
      v23[16] = 1;
      sub_10022C350(&qword_100CAD820, &qword_100A3CB80);
      v118 = *a1;

      v102 = sub_10022C350(&qword_100CAD778, &qword_100A3CB50);
      v101 = sub_10022C350(&qword_100CAD828, &qword_100A3CB88);
      sub_100006F64(&qword_100CAD788, &qword_100CAD778, &qword_100A3CB50, &protocol conformance descriptor for [A]);
      sub_100006F64(&qword_100CAD830, &qword_100CAD828, &qword_100A3CB88, &protocol conformance descriptor for HStack<A>);
      sub_1003319B0(&qword_100CAD798, type metadata accessor for ConditionDetailLegend, "پ ");
      ForEach<>.init(_:content:)();
      v48 = v108;
      static AccessibilityChildBehavior.contain.getter();
      v49 = sub_100006F64(&qword_100CAD7B8, &qword_100CAD758, &qword_100A3CB30, &protocol conformance descriptor for VStack<A>);
      View.accessibilityElement(children:)();
      (*(v109 + 8))(v48, v110);
      sub_1000180EC(v23, &qword_100CAD758, &qword_100A3CB30);
      v50 = a1[2];
      v118 = a1[1];
      v119 = v50;
      v120 = v21;
      v121 = v49;
      swift_getOpaqueTypeConformance2();
      sub_10002D5A4();
      v51 = v81;
      View.accessibilityLabel<A>(_:)();
      (*(v80 + 8))(v25, v51);
      v52 = v82;
      ModifiedContent<>.accessibilityRespondsToUserInteraction(_:)();
      v53 = &qword_100CAD768;
      v54 = &qword_100A3CB40;
      sub_1000180EC(v27, &qword_100CAD768, &qword_100A3CB40);
      sub_1000302D8(v52, v105, &qword_100CAD768, &qword_100A3CB40);
      swift_storeEnumTagMultiPayload();
      sub_100331A84();
      sub_100331BB0();
      v55 = v106;
      goto LABEL_39;
    }

    (*(v31 + 8))(v33, v30);
  }

  if (!sub_100330064())
  {
    v66 = static VerticalAlignment.center.getter();
    v67 = v96;
    *v96 = v66;
    *(v67 + 8) = 0;
    *(v67 + 16) = 0;
    sub_10022C350(&qword_100CAD770, &qword_100A3CB48);
    v118 = *a1;
    v68 = v87;
    sub_100331F70(a1, v87, type metadata accessor for MeasuredConditionDetailLegendView);
    v69 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v70 = swift_allocObject();
    sub_10033202C(v68, v70 + v69, type metadata accessor for MeasuredConditionDetailLegendView);

    sub_10022C350(&qword_100CAD778, &qword_100A3CB50);
    sub_10022C350(&qword_100CAD780, &qword_100A3CB58);
    sub_100006F64(&qword_100CAD788, &qword_100CAD778, &qword_100A3CB50, &protocol conformance descriptor for [A]);
    sub_100006F64(&qword_100CAD790, &qword_100CAD780, &qword_100A3CB58, &protocol conformance descriptor for TupleView<A>);
    sub_1003319B0(&qword_100CAD798, type metadata accessor for ConditionDetailLegend, "پ ");
    ForEach<>.init(_:content:)();
    v71 = v108;
    static AccessibilityChildBehavior.contain.getter();
    v72 = sub_100006F64(&qword_100CAD7A0, &qword_100CAD710, &qword_100A3CAE8, &protocol conformance descriptor for HStack<A>);
    v73 = v98;
    v74 = v99;
    View.accessibilityElement(children:)();
    (*(v109 + 8))(v71, v110);
    sub_1000180EC(v67, &qword_100CAD710, &qword_100A3CAE8);
    v75 = a1[2];
    v118 = a1[1];
    v119 = v75;
    v120 = v74;
    v121 = v72;
    swift_getOpaqueTypeConformance2();
    sub_10002D5A4();
    v76 = v97;
    v77 = v101;
    View.accessibilityLabel<A>(_:)();
    (*(v100 + 8))(v73, v77);
    v78 = v102;
    ModifiedContent<>.accessibilityRespondsToUserInteraction(_:)();
    v53 = &qword_100CAD720;
    v54 = &qword_100A3CAF8;
    sub_1000180EC(v76, &qword_100CAD720, &qword_100A3CAF8);
    sub_1000302D8(v78, v113, &qword_100CAD720, &qword_100A3CAF8);
    swift_storeEnumTagMultiPayload();
    sub_1003319F8();
    sub_100331CDC();
    _ConditionalContent<>.init(storage:)();
    v65 = v78;
    return sub_1000180EC(v65, v53, v54);
  }

  static HorizontalAlignment.leading.getter();
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100466878();
  v120 = _swiftEmptyArrayStorage;
  sub_1003319B0(&qword_100CAD7D8, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_10022C350(&qword_100CAD7E0, &qword_100A3CB60);
  sub_100006F64(&qword_100CAD7E8, &qword_100CAD7E0, &qword_100A3CB60, &protocol conformance descriptor for [A]);
  v56 = dispatch thunk of SetAlgebra.init<A>(_:)();
  __chkstk_darwin(v56);
  sub_10022C350(&qword_100CAD7F0, &qword_100A3CB68);
  sub_100331E10();
  v57 = v88;
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  v58 = v108;
  static AccessibilityChildBehavior.contain.getter();
  v59 = sub_100006F64(&qword_100CAD7C8, &qword_100CAD728, &qword_100A3CB00, &protocol conformance descriptor for LazyVGrid<A>);
  v60 = v91;
  v61 = v92;
  View.accessibilityElement(children:)();
  (*(v109 + 8))(v58, v110);
  (*(v90 + 8))(v57, v61);
  v62 = a1[2];
  v120 = a1[1];
  v121 = v62;
  v116 = v61;
  v117 = v59;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v63 = v89;
  v64 = v94;
  View.accessibilityLabel<A>(_:)();
  (*(v93 + 8))(v60, v64);
  v52 = v95;
  ModifiedContent<>.accessibilityRespondsToUserInteraction(_:)();
  v53 = &qword_100CAD738;
  v54 = &qword_100A3CB10;
  sub_1000180EC(v63, &qword_100CAD738, &qword_100A3CB10);
  sub_1000302D8(v52, v105, &qword_100CAD738, &qword_100A3CB10);
  swift_storeEnumTagMultiPayload();
  sub_100331A84();
  sub_100331BB0();
  v55 = v106;
LABEL_39:
  _ConditionalContent<>.init(storage:)();
  sub_1000302D8(v55, v113, &qword_100CAD750, &qword_100A3CB28);
  swift_storeEnumTagMultiPayload();
  sub_1003319F8();
  sub_100331CDC();
  _ConditionalContent<>.init(storage:)();
  sub_1000180EC(v55, &qword_100CAD750, &qword_100A3CB28);
  v65 = v52;
  return sub_1000180EC(v65, v53, v54);
}

uint64_t sub_100330010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CAD838, &qword_100A3CB90);
  return sub_1003302E8(a1, a2 + *(v4 + 44));
}

BOOL sub_100330064()
{
  v1 = *(v0 + *(type metadata accessor for MeasuredConditionDetailLegendView(0) + 32));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = 0.0;
    v5 = v2;
    do
    {
      v6 = *v3++;
      v4 = v4 + v6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0.0;
  }

  v7 = (v2 - 1) * 8.0 + v4;
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  State.wrappedValue.getter();
  return v9 < v7;
}

uint64_t sub_10033011C(uint64_t a1)
{
  sub_10022C350(&qword_100CAD808, &qword_100A3CB70);
  sub_100331EA0();
  return Section<>.init(content:)();
}

uint64_t sub_10033018C(uint64_t *a1)
{

  sub_10022C350(&qword_100CAD778, &qword_100A3CB50);
  sub_10022C350(&qword_100CAD818, &qword_100A3CB78);
  sub_100006F64(&qword_100CAD788, &qword_100CAD778, &qword_100A3CB50, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CAD810, &qword_100CAD818, &qword_100A3CB78, &protocol conformance descriptor for TupleView<A>);
  sub_1003319B0(&qword_100CAD798, type metadata accessor for ConditionDetailLegend, "پ ");
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1003302E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LegendView(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_100331F70(a1, &v15 - v9, type metadata accessor for ConditionDetailLegend);
  v11 = *(v5 + 28);
  *&v10[v11] = swift_getKeyPath();
  sub_10022C350(&qword_100CAD840, &qword_100A3CBC8);
  swift_storeEnumTagMultiPayload();
  v12 = *(v5 + 32);
  *&v10[v12] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  swift_storeEnumTagMultiPayload();
  sub_100331F70(v10, v7, type metadata accessor for LegendView);
  sub_100331F70(v7, a2, type metadata accessor for LegendView);
  v13 = a2 + *(sub_10022C350(&qword_100CAD848, &qword_100A3CC08) + 48);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_100331FD4(v10, type metadata accessor for LegendView);
  return sub_100331FD4(v7, type metadata accessor for LegendView);
}

uint64_t sub_1003304A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v42 = a3;
  v4 = type metadata accessor for ConditionDetailLegend(0);
  __chkstk_darwin(v4);
  v38 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10022C350(&qword_100CAD850, &qword_100A3CC10);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = sub_10022C350(&qword_100CAD858, &qword_100A3CC18);
  __chkstk_darwin(v10 - 8);
  v39 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v18 = type metadata accessor for LegendView(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v41 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  sub_100331F70(a1, &v37 - v22, type metadata accessor for ConditionDetailLegend);
  v24 = *(v19 + 28);
  *&v23[v24] = swift_getKeyPath();
  sub_10022C350(&qword_100CAD840, &qword_100A3CBC8);
  swift_storeEnumTagMultiPayload();
  v25 = *(v19 + 32);
  *&v23[v25] = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  v26 = v40;
  swift_storeEnumTagMultiPayload();
  sub_100331F70(a1, v17, type metadata accessor for ConditionDetailLegend);
  sub_10001B350(v17, 0, 1, v4);
  sub_1002F54A0(*v26);
  v27 = *(v7 + 56);
  sub_1000302D8(v17, v9, &qword_100CAD858, &qword_100A3CC18);
  sub_1000302D8(v14, &v9[v27], &qword_100CAD858, &qword_100A3CC18);
  if (sub_100024D10(v9, 1, v4) == 1)
  {
    sub_1000180EC(v14, &qword_100CAD858, &qword_100A3CC18);
    sub_1000180EC(v17, &qword_100CAD858, &qword_100A3CC18);
    if (sub_100024D10(&v9[v27], 1, v4) == 1)
    {
      sub_1000180EC(v9, &qword_100CAD858, &qword_100A3CC18);
LABEL_9:
      v30 = *(v26 + 24);
      v29 = v30 ^ 1;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v28 = v39;
  sub_1000302D8(v9, v39, &qword_100CAD858, &qword_100A3CC18);
  if (sub_100024D10(&v9[v27], 1, v4) == 1)
  {
    sub_1000180EC(v14, &qword_100CAD858, &qword_100A3CC18);
    sub_1000180EC(v17, &qword_100CAD858, &qword_100A3CC18);
    sub_100331FD4(v28, type metadata accessor for ConditionDetailLegend);
LABEL_6:
    sub_1000180EC(v9, &qword_100CAD850, &qword_100A3CC10);
    goto LABEL_7;
  }

  v31 = v38;
  sub_10033202C(&v9[v27], v38, type metadata accessor for ConditionDetailLegend);
  v32 = sub_100280C18(v28, v31);
  sub_100331FD4(v31, type metadata accessor for ConditionDetailLegend);
  sub_1000180EC(v14, &qword_100CAD858, &qword_100A3CC18);
  sub_1000180EC(v17, &qword_100CAD858, &qword_100A3CC18);
  sub_100331FD4(v28, type metadata accessor for ConditionDetailLegend);
  sub_1000180EC(v9, &qword_100CAD858, &qword_100A3CC18);
  if (v32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v29 = 0;
  v30 = 1;
LABEL_10:
  v33 = v41;
  sub_100331F70(v23, v41, type metadata accessor for LegendView);
  v34 = v42;
  sub_100331F70(v33, v42, type metadata accessor for LegendView);
  v35 = v34 + *(sub_10022C350(&qword_100CAD860, &qword_100A3CC20) + 48);
  *v35 = 0;
  *(v35 + 8) = v30;
  *(v35 + 9) = v29;
  sub_100331FD4(v23, type metadata accessor for LegendView);
  return sub_100331FD4(v33, type metadata accessor for LegendView);
}

uint64_t sub_1003309D4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  CGRectGetWidth(*&a2);
  sub_10022C350(&qword_100CAD708, &qword_100A3CAE0);
  return State.wrappedValue.setter();
}

void *sub_100330A38@<X0>(void *a1@<X8>)
{
  v38 = a1;
  v2 = sub_10022C350(&qword_100CAD9A0, &qword_100A3CD10);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for ConditionDetailLegendForeground.LegendGradient(0);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RedactionReasons();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for ConditionDetailLegendForeground(0);
  __chkstk_darwin(v15);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for ConditionDetailLegend(0);
  sub_100331F70(v1 + *(v18 + 24), v17, type metadata accessor for ConditionDetailLegendForeground);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10033202C(v17, v7, type metadata accessor for ConditionDetailLegendForeground.LegendGradient);
    v19 = static Alignment.center.getter();
    v21 = v20;
    v22 = Image.init(systemName:)();
    type metadata accessor for LegendView(0);
    sub_1001C7668();
    v23 = type metadata accessor for ColorSchemeContrast();
    sub_10001B350(v4, 0, 1, v23);
    DetailChartGradientModel.linearGradient(minValue:maxValue:colorSchemeContrast:)();
    v24 = v41;
    sub_1000180EC(v4, &qword_100CAD9A0, &qword_100A3CD10);
    v25 = *&v7[*(v5 + 24)];
    v39 = 1;
    *&__dst[0] = v19;
    *(&__dst[0] + 1) = v21;
    *&__dst[1] = v22;
    *(&__dst[1] + 1) = v24;
    __dst[3] = v43;
    __dst[2] = v42;
    *&__dst[4] = v25;
    BYTE8(__dst[4]) = 1;
    sub_10022C350(&qword_100CAD9A8, &qword_100A3CD18);
    sub_10022C350(&qword_100CAD9B0, &qword_100A3CD20);
    sub_100332538();
    sub_100006F64(&qword_100CAD9E0, &qword_100CAD9B0, &qword_100A3CD20, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100331FD4(v7, type metadata accessor for ConditionDetailLegendForeground.LegendGradient);
  }

  else
  {
    v26 = *v17;
    v27 = Image.init(systemName:)();
    KeyPath = swift_getKeyPath();

    v29 = static Alignment.center.getter();
    v37 = v30;
    type metadata accessor for LegendView(0);
    sub_1009E94C4();
    static RedactionReasons.placeholder.getter();
    sub_1003319B0(&qword_100CAD9E8, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    v31 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v32 = *(v9 + 8);
    v32(v11, v8);
    v32(v14, v8);
    if (v31)
    {

      v33 = 256;
      v34 = v26;
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }

    LOBYTE(v41) = 0;
    *&__dst[0] = v27;
    *(&__dst[0] + 1) = KeyPath;
    *&__dst[1] = v26;
    *(&__dst[1] + 1) = v34;
    LOWORD(__dst[2]) = v33;
    *(&__dst[2] + 1) = v29;
    *&__dst[3] = v37;
    BYTE8(__dst[4]) = 0;

    sub_10022C350(&qword_100CAD9A8, &qword_100A3CD18);
    sub_10022C350(&qword_100CAD9B0, &qword_100A3CD20);
    sub_100332538();
    sub_100006F64(&qword_100CAD9E0, &qword_100CAD9B0, &qword_100A3CD20, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
  }

  memcpy(__dst, __src, 0x49uLL);
  return memcpy(v38, __dst, 0x49uLL);
}

uint64_t sub_100330FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CAD960, &qword_100A3CCA8);
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v32 = sub_10022C350(&qword_100CAD968, &qword_100A3CCB0);
  __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v29 = &v27 - v12;
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = sub_100466878();
  v14 = static VerticalAlignment.center.getter();
  LOBYTE(v34) = 0;
  sub_10033146C(v1, __src);
  memcpy(v38, __src, sizeof(v38));
  memcpy(v39, __src, sizeof(v39));
  sub_1000302D8(v38, v36, &qword_100CAD970, &qword_100A3CCB8);
  sub_1000180EC(v39, &qword_100CAD970, &qword_100A3CCB8);
  memcpy(&v37[7], v38, 0x70uLL);
  v15 = v34;
  swift_beginAccess();
  v16 = sub_1004726C8();
  swift_endAccess();
  KeyPath = swift_getKeyPath();
  v36[0] = v14;
  *&v36[1] = v13;
  LOBYTE(v36[2]) = v15;
  memcpy(&v36[2] + 1, v37, 0x77uLL);
  v36[17] = KeyPath;
  v36[18] = v16;
  static AccessibilityChildBehavior.ignore.getter();
  v18 = sub_10022C350(&qword_100CAD978, &qword_100A3CCF0);
  v19 = sub_100332454();
  View.accessibilityElement(children:)();
  (*(v27 + 8))(v5, v28);
  memcpy(__src, v36, 0x98uLL);
  sub_1000180EC(__src, &qword_100CAD978, &qword_100A3CCF0);
  v20 = *(v2 + 24);
  v36[0] = *(v2 + 16);
  v36[1] = v20;
  v34 = v18;
  v35 = v19;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v21 = v31;
  View.accessibilityLabel<A>(_:)();
  (*(v30 + 8))(v8, v21);
  v22 = (v2 + *(type metadata accessor for ConditionDetailLegend(0) + 28));
  v24 = *v22;
  v23 = v22[1];
  v36[0] = v24;
  v36[1] = v23;
  v25 = v29;
  ModifiedContent<>.accessibilityValue<A>(_:)();
  sub_1000180EC(v10, &qword_100CAD968, &qword_100A3CCB0);
  ModifiedContent<>.accessibilityRespondsToUserInteraction(_:)();
  return sub_1000180EC(v25, &qword_100CAD968, &qword_100A3CCB0);
}

uint64_t sub_10033146C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100330A38(__src);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v22[0] = v4;
  v22[1] = v5;
  sub_10002D5A4();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Color.secondary.getter();
  v11 = Text.foregroundColor(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v6, v8, v10 & 1);

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v21, __src, 0x49uLL);
  memcpy(v22, __src, 0x49uLL);
  memcpy(a2, v22, 0x50uLL);
  *(a2 + 80) = v11;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15 & 1;
  *(a2 + 104) = v17;
  sub_1000302D8(v21, v23, &qword_100CAD998, &qword_100A3CD08);
  sub_10010CD54(v11, v13, v15 & 1);

  sub_10010CD64(v11, v13, v15 & 1);

  memcpy(v23, __dst, 0x49uLL);
  return sub_1000180EC(v23, &qword_100CAD998, &qword_100A3CD08);
}

void sub_10033163C(uint64_t a1)
{
  sub_1003321AC(319, &qword_100CAD688, &type metadata accessor for GridItem, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100331798(319, &qword_100CAD690, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_1003321AC(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100331798(319, &unk_100CAD698, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100331798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CGFloat);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100331808(double a1, double a2, double a3, double a4)
{
  v9 = *(type metadata accessor for MeasuredConditionDetailLegendView(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1003309D4(v10, a1, a2, a3, a4);
}

void sub_100331898()
{
  type metadata accessor for CoordinateSpace();
  sub_100005614();

  sub_1007A1D44(v0);
}

uint64_t sub_100331940()
{
  type metadata accessor for MeasuredConditionDetailLegendView(0);
  v0 = sub_100005614();

  return sub_1003304A0(v0, v1, v2);
}

uint64_t sub_1003319B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1003319F8()
{
  result = qword_100CAD7A8;
  if (!qword_100CAD7A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD750, &qword_100A3CB28);
    v4[0] = sub_100331A84();
    v4[1] = sub_100331BB0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD7A8);
  }

  return result;
}

unint64_t sub_100331A84()
{
  result = qword_100CAD7B0;
  if (!qword_100CAD7B0)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CAD768, &qword_100A3CB40);
    v4[2] = sub_10022E824(&qword_100CAD758, &qword_100A3CB30);
    v4[3] = sub_100006F64(&qword_100CAD7B8, &qword_100CAD758, &qword_100A3CB30, &protocol conformance descriptor for VStack<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1003319B0(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD7B0);
  }

  return result;
}

unint64_t sub_100331BB0()
{
  result = qword_100CAD7C0;
  if (!qword_100CAD7C0)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CAD738, &qword_100A3CB10);
    v4[2] = sub_10022E824(&qword_100CAD728, &qword_100A3CB00);
    v4[3] = sub_100006F64(&qword_100CAD7C8, &qword_100CAD728, &qword_100A3CB00, &protocol conformance descriptor for LazyVGrid<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1003319B0(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD7C0);
  }

  return result;
}

unint64_t sub_100331CDC()
{
  result = qword_100CAD7D0;
  if (!qword_100CAD7D0)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CAD720, &qword_100A3CAF8);
    v4[2] = sub_10022E824(&qword_100CAD710, &qword_100A3CAE8);
    v4[3] = sub_100006F64(&qword_100CAD7A0, &qword_100CAD710, &qword_100A3CAE8, &protocol conformance descriptor for HStack<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1003319B0(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD7D0);
  }

  return result;
}

unint64_t sub_100331E10()
{
  result = qword_100CAD7F8;
  if (!qword_100CAD7F8)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CAD7F0, &qword_100A3CB68);
    v4[0] = &protocol witness table for EmptyView;
    v4[1] = sub_100331EA0();
    v4[2] = &protocol witness table for EmptyView;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Section<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CAD7F8);
  }

  return result;
}

unint64_t sub_100331EA0()
{
  result = qword_100CAD800;
  if (!qword_100CAD800)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CAD808, &qword_100A3CB70);
    v4[0] = sub_100006F64(&qword_100CAD810, &qword_100CAD818, &qword_100A3CB78, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CAD800);
  }

  return result;
}

uint64_t sub_100331F70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100331FD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10033202C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_1003320B0(uint64_t a1)
{
  type metadata accessor for ConditionDetailLegend(319);
  if (v1 <= 0x3F)
  {
    sub_1003321AC(319, &qword_100CAD8E0, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1003321AC(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003321AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100332210()
{
  result = qword_100CAD920;
  if (!qword_100CAD920)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD700, &qword_100A3CAD8);
    v4[0] = sub_1003322C8();
    v4[1] = sub_100006F64(&qword_100CAD950, &qword_100CAD958, qword_100A3CC50, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD920);
  }

  return result;
}

unint64_t sub_1003322C8()
{
  result = qword_100CAD928;
  if (!qword_100CAD928)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD6F8, &qword_100A3CAD0);
    v4[0] = sub_100332380();
    v4[1] = sub_100006F64(&qword_100CAD940, &qword_100CAD948, &qword_100A3CC48, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD928);
  }

  return result;
}

unint64_t sub_100332380()
{
  result = qword_100CAD930;
  if (!qword_100CAD930)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD6E8, &qword_100A3CAC0);
    v4[0] = sub_100006F64(&qword_100CAD938, &qword_100CAD6E0, &qword_100A3CAB8, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD930);
  }

  return result;
}

unint64_t sub_100332454()
{
  result = qword_100CAD980;
  if (!qword_100CAD980)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD978, &qword_100A3CCF0);
    v4[0] = sub_100006F64(&qword_100CAD988, &qword_100CAD990, &unk_100A3CCF8, &protocol conformance descriptor for HStack<A>);
    v4[1] = sub_100006F64(&qword_100CA53B8, &qword_100CA53C0, &unk_100A2F5E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD980);
  }

  return result;
}

unint64_t sub_100332538()
{
  result = qword_100CAD9B8;
  if (!qword_100CAD9B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD9A8, &qword_100A3CD18);
    v4[0] = sub_1003325F0();
    v4[1] = sub_100006F64(&qword_100CAD9D0, &qword_100CAD9D8, &qword_100A3CD38, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD9B8);
  }

  return result;
}

unint64_t sub_1003325F0()
{
  result = qword_100CAD9C0;
  if (!qword_100CAD9C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CAD9C8, &unk_100A3CD28);
    v4[0] = &protocol witness table for Image;
    v4[1] = sub_100006F64(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD9C0);
  }

  return result;
}

unint64_t sub_1003326A8()
{
  result = qword_100CAD9F0;
  if (!qword_100CAD9F0)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = sub_10022E824(&qword_100CAD968, &qword_100A3CCB0);
    v4[2] = sub_10022E824(&qword_100CAD978, &qword_100A3CCF0);
    v4[3] = sub_100332454();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_1003319B0(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CAD9F0);
  }

  return result;
}

uint64_t LocationSearchEntityFromStringResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  type metadata accessor for LocalizedStringResource();
  v3[20] = sub_1000134B0();
  sub_10022C350(&qword_100CAD9F8, &unk_100A6BF10);
  v3[21] = sub_1000134B0();
  v4 = sub_10022C350(&qword_100CADA00, &unk_100A3CD80);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = sub_1000134B0();
  v5 = sub_10022C350(&qword_100CADA08, &unk_100A6BF20);
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = sub_1000134B0();

  return _swift_task_switch(sub_10033291C, 0, 0);
}

uint64_t sub_10033291C()
{
  sub_10022C350(&qword_100CADA10, &qword_100A3CD90);
  Regex.init(_regexString:version:)();
  Regex.wholeMatch(in:)();
  v1 = v0[21];
  v2 = v0[22];
  if (sub_100024D10(v1, 1, v2) == 1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
    sub_100332D80(v0[21]);
LABEL_3:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_4;
  }

  (*(v0[23] + 32))(v0[24], v1, v2);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v10 = Double.init(_:)();
  v12 = v11;
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v13 = Double.init(_:)();
  v15 = v14;
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  if (v0[13])
  {
    v16 = static String._fromSubstring(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v20 = v0[26];
  v19 = v0[27];
  v26 = v0[24];
  v27 = v0[25];
  v21 = v0[23];
  v25 = v0[22];
  if (v12 & 1) != 0 || (v15)
  {

    (*(v21 + 8))(v26, v25);
    (*(v20 + 8))(v19, v27);
    goto LABEL_3;
  }

  v4 = v0[19];
  sub_100332DE8();
  v22 = [objc_allocWithZone(CLLocation) initWithLatitude:*&v10 longitude:*&v13];

  v23 = sub_1001476E4(v22, v16, v18, 0);
  if (!v18)
  {
    v16 = 11565;
    v18 = 0xE200000000000000;
  }

  sub_10022C350(&qword_100CA2DA8, &unk_100A6BEF0);
  LocalizedStringResource.init(stringLiteral:)();
  v5 = EntityProperty<>.init(title:)();
  sub_10022C350(&qword_100CA2DB0, &unk_100A2C500);

  LocalizedStringResource.init(stringLiteral:)();
  v6 = EntityProperty<>.init(title:)();
  v0[14] = v16;
  v0[15] = v18;

  EntityProperty.wrappedValue.setter();
  v0[16] = v23;
  v24 = v23;
  EntityProperty.wrappedValue.setter();

  (*(v21 + 8))(v26, v25);
  (*(v20 + 8))(v19, v27);

  v3 = v0[18];
LABEL_4:
  v7 = v0[17];

  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = 0;
  v8 = v0[1];

  return v8();
}

uint64_t sub_100332D80(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAD9F8, &unk_100A6BF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100332DE8()
{
  result = qword_100CADA18;
  if (!qword_100CADA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CADA18);
  }

  return result;
}

uint64_t sub_100332E64(uint64_t a1, uint64_t *a2)
{
  *(v2 + 56) = a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_100332F08;

  return LocationSearchEntityFromStringResolver.resolve(from:context:)(v2 + 16, v4, v3);
}

uint64_t sub_100332F08()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 56);
    v5 = *(v2 + 16);
    v6 = *(v2 + 32);
    *(v4 + 32) = *(v2 + 48);
    *v4 = v5;
    *(v4 + 16) = v6;
  }

  v7 = *(v3 + 8);

  return v7();
}

unint64_t sub_10033305C()
{
  result = qword_100CADA20;
  if (!qword_100CADA20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntityFromStringResolver, &type metadata for LocationSearchEntityFromStringResolver, v0, v1);
    atomic_store(result, &qword_100CADA20);
  }

  return result;
}

unint64_t sub_1003330B4()
{
  result = qword_100CADA28;
  if (!qword_100CADA28)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_100CADA28);
  }

  return result;
}

unint64_t sub_10033310C()
{
  result = qword_100CADA38;
  if (!qword_100CADA38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocationSearchEntityFromStringResolver, &type metadata for LocationSearchEntityFromStringResolver, v0, v1);
    atomic_store(result, &qword_100CADA38);
  }

  return result;
}

Swift::Void __swiftcall WeatherConditionBackgroundManager.windowDidBecomeFocused(isInitialUpdate:)(Swift::Bool isInitialUpdate)
{
  if (WeatherConditionBackgroundManager.isVfxSceneLoaded.getter())
  {
    if (qword_100CA26E8 != -1)
    {
      sub_10001E858(&qword_100CA26E8);
    }

    v1 = type metadata accessor for Logger();
    sub_10000703C(v1, qword_100D90B20);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Window did become focused. VFXScene is loaded and will be played.", v4, 2u);
    }

    WeatherConditionBackgroundManager.play(_:)(1);
  }

  else
  {
    if (qword_100CA26E8 != -1)
    {
      sub_10001E858(&qword_100CA26E8);
    }

    v5 = type metadata accessor for Logger();
    sub_10000703C(v5, qword_100D90B20);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Window did become focused. VFXScene is not loaded yet.", v7, 2u);
    }
  }
}

Swift::Void __swiftcall WeatherConditionBackgroundManager.windowDidLoseFocus(isInitialUpdate:)(Swift::Bool isInitialUpdate)
{
  if (qword_100CA26E8 != -1)
  {
    sub_10001E858(&qword_100CA26E8);
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90B20);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = WeatherConditionBackgroundManager.isVfxSceneLoaded.getter() & 1;

    _os_log_impl(&_mh_execute_header, v3, v4, "Window did lose focus. VFXScene will be paused. isVfxSceneLoaded=%{BOOL}d", v5, 8u);
  }

  else
  {
  }

  v6 = WeatherConditionBackgroundManager.isVfxSceneLoaded.getter() & ~isInitialUpdate & 1;

  WeatherConditionPlaybackCoordinatorType.pause(_:)(v6);
}

uint64_t sub_1003334A0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003334B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003334E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 90))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_100333538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1003335B4(double *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 3))
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(a1 + 2);
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    sub_10010CD54(*a2, v7, *(a2 + 16) & 1);

    v31 = v5 & 1;
    v9 = static Text.== infix(_:_:)();
    sub_10010CD64(v6, v7, v8 & 1);

    if ((v9 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v10 = *(a1 + 32);
    v11 = *(a1 + 5);
    v12 = *(a1 + 6);
    v14 = a1[7];
    v13 = a1[8];
    v15 = *(a2 + 32);
    v16 = *(a2 + 40);
    v17 = *(a2 + 48);
    v19 = *(a2 + 56);
    v18 = *(a2 + 64);
    v20 = *(a2 + 89);
    if (*(a1 + 89))
    {
      *v24 = *(a1 + 33);
      *&v24[3] = *(a1 + 9);
      v29 = *(a1 + 9);
      v30 = *(a1 + 88);
      v23 = v10;
      v25 = v11;
      v26 = v12;
      v27 = v14;
      v28 = v13;
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      *v32 = *(a2 + 33);
      *&v32[3] = *(a2 + 36);
      v37 = *(a2 + 72);
      v38 = *(a2 + 88);
      v31 = v15;
      v33 = v16;
      v34 = v17;
      v35 = v19;
      v36 = v18;
      if (!sub_1007467B8(&v23, &v31))
      {
        return 0;
      }
    }

    else
    {
      if ((*(a2 + 89) & 1) != 0 || v10 != v15 || (sub_1009EBF3C(v11, v16) & 1) == 0 || (sub_1001D222C(v12, v17) & 1) == 0)
      {
        return 0;
      }

      if (v14 != v19 || v13 != v18)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL sub_10033376C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *(a1 + 3);
  v6 = *(a1 + 4);
  if ((a1[57] & 1) == 0)
  {
    if ((a2[57] & 1) == 0 && v3 == *a2)
    {
      v10 = *(a2 + 2);
      v11 = *(a2 + 3);
      v12 = *(a2 + 4);
      if ((sub_1009EBF3C(v4, *(a2 + 1)) & 1) != 0 && (sub_1001D222C(v5, v10) & 1) != 0 && v7 == v11 && v6 == v12)
      {
        return 1;
      }
    }

    return 0;
  }

  v17 = v3;
  *v18 = *(a1 + 1);
  *&v18[3] = *(a1 + 1);
  v19 = v4;
  v20 = v5;
  v21 = v7;
  v22 = v6;
  v23 = *(a1 + 40);
  v24 = a1[56];
  if ((a2[57] & 1) == 0)
  {
    return 0;
  }

  v8 = *(a2 + 1);
  v15[0] = *a2;
  v15[1] = v8;
  v16[0] = *(a2 + 2);
  *(v16 + 9) = *(a2 + 41);
  return sub_1007467B8(&v17, v15);
}

__n128 sub_100333874(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100333890(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 58))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 57);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003338D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

void sub_100333940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 1;
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    v3 = -1;
LABEL_4:
    sub_100333960(a1, v3);
    return;
  }

  sub_100335BD0(a1, a2, a3);
}

void sub_100333960(uint64_t a1, uint64_t a2)
{
  v240 = a2;
  v236 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v236);
  v252 = &v202 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v248);
  v251 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v264);
  v250 = &v202 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v6);
  v8 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v243);
  v10 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v233);
  v249 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v231);
  v237 = &v202 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v232 = &v202 - v14;
  __chkstk_darwin(v15);
  v219 = &v202 - v16;
  v17 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v17 - 8);
  v230 = &v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v229 = &v202 - v20;
  v21 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v21 - 8);
  v218 = &v202 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v265 = &v202 - v24;
  v25 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v25 - 8);
  v217 = &v202 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v263 = &v202 - v28;
  v29 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v29 - 8);
  v235 = &v202 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v262 = &v202 - v32;
  v33 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v33 - 8);
  v234 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v261 = &v202 - v36;
  v37 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v37 - 8);
  v215 = &v202 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v260 = &v202 - v40;
  v41 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v41 - 8);
  v214 = &v202 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v259 = &v202 - v44;
  v45 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v45 - 8);
  v213 = &v202 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v258 = &v202 - v48;
  v257 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v257);
  *(&v212 + 1) = &v202 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v241);
  v247 = &v202 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  __chkstk_darwin(v51 - 8);
  v228 = &v202 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v256 = &v202 - v54;
  v55 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v55 - 8);
  v226 = &v202 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v255 = &v202 - v58;
  v59 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v59 - 8);
  v225 = &v202 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v246 = &v202 - v62;
  __chkstk_darwin(v63);
  v239 = &v202 - v64;
  v65 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  __chkstk_darwin(v65 - 8);
  v224 = &v202 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v254 = (&v202 - v68);
  v69 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v69);
  v216 = &v202 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v267 = &v202 - v72;
  __chkstk_darwin(v73);
  v227 = (&v202 - v74);
  v75 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  __chkstk_darwin(v75 - 8);
  v222 = &v202 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v221 = &v202 - v78;
  v79 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v79 - 8);
  v211 = &v202 - v80;
  v210 = type metadata accessor for CurrentLocation();
  __chkstk_darwin(v210);
  v209 = &v202 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = type metadata accessor for Location.Identifier();
  v270 = *(v272 - 8);
  __chkstk_darwin(v272);
  v271 = &v202 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for LocationModel();
  v273 = *(v244 - 8);
  __chkstk_darwin(v244);
  v84 = &v202 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v85);
  v87 = &v202 - v86;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active);
  v220 = &v202 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v253 = &v202 - v90;
  __chkstk_darwin(v91);
  v93 = &v202 - v92;
  v94 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v94);
  v245 = &v202 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v96);
  v98 = (&v202 - v97);
  v266 = v69;
  v242 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1000A06D8();
  v223 = v94;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1003376D0(v98, type metadata accessor for ViewState.SecondaryViewState);
LABEL_14:

    return;
  }

  v99 = *v98;
  v100 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  if (!*(*(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + *(v6 + 36)) + 16))
  {

    goto LABEL_14;
  }

  v204 = v84;
  v207 = v10;
  v208 = v8;
  v206 = a1;
  *&v212 = v99;
  v202 = OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState;
  sub_1000A06D8();
  v101 = sub_1000E0924();
  v103 = v102;
  sub_1003376D0(v93, type metadata accessor for LocationViewerActiveLocationState);
  v205 = v6;
  v104 = *(v6 + 24);
  v203 = v100;
  v105 = *(v100 + v104);
  v268 = *(v105 + 16);
  v269 = v273 + 16;
  v106 = v270 + 1;
  v270 = (v273 + 8);

  v107 = 0;
  v108 = v244;
  v109 = v271;
  while (1)
  {
    if (v268 == v107)
    {
      v107 = -1;
      goto LABEL_17;
    }

    if (v107 >= *(v105 + 16))
    {
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    (*(v273 + 16))(v87, v105 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * v107, v108);
    LocationModel.identifier.getter();
    v110 = Location.Identifier.id.getter();
    v112 = v111;
    (*v106)(v109, v272);
    v113 = v110 == v101 && v112 == v103;
    if (v113)
    {
      break;
    }

    v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v270)(v87, v108);
    if (v114)
    {
      goto LABEL_17;
    }

    ++v107;
  }

  (*v270)(v87, v108);
LABEL_17:

  v115 = v107 + v240;
  v116 = v266;
  v117 = v267;
  v118 = v239;
  v119 = active;
  if (__OFADD__(v107, v240))
  {
    goto LABEL_85;
  }

  if ((v115 & 0x8000000000000000) == 0 || (v120 = v206 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment, swift_beginAccess(), *(v120 + 1) - 1 > 1))
  {
    v125 = *(v105 + 16);
    v126 = v125 - 1;
    if (v115 < (v125 - 1))
    {
      v126 = v115;
    }

    v127 = v126 & ~(v126 >> 63);
    if (v127 < v125)
    {
      v128 = v273;
      v129 = v204;
      v130 = v244;
      (*(v273 + 16))(v204, v105 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v273 + 72) * v127, v244);

      v124 = v253;
      LocationModel.identifier.getter();
      (*(v128 + 8))(v129, v130);
      goto LABEL_26;
    }

LABEL_86:
    __break(1u);
    return;
  }

  v121 = v211;
  sub_100095588();
  if (sub_100024D10(v121, 1, v210) == 1)
  {
    sub_1000180EC(v121, &unk_100CE49F0, &unk_100A3AFA0);
    v122 = 1;
    v123 = v241;
    v124 = v253;
    goto LABEL_27;
  }

  v200 = v209;
  sub_1000A07E0();
  v124 = v253;
  CurrentLocation.identifier.getter();
  sub_1003376D0(v200, &type metadata accessor for CurrentLocation);
LABEL_26:
  v122 = 0;
  v123 = v241;
LABEL_27:
  v131 = v222;
  v132 = v220;
  sub_10001B350(v124, v122, 1, v272);
  v133 = v221;
  sub_1000A06D8();
  sub_10001B350(v133, 0, 1, v119);
  sub_100051BBC();
  if (sub_100024D10(v131, 1, v119) == 1)
  {
    sub_1000A06D8();
    if (sub_100024D10(v131, 1, v119) != 1)
    {
      sub_1000180EC(v131, &qword_100CA65B8, &unk_100A313D0);
    }
  }

  else
  {
    sub_1000A07E0();
  }

  v134 = *(v212 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
  v135 = *(v212 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
  v136 = *(v212 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
  v137 = *(v212 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
  v138 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v212);
  type metadata accessor for LocationViewerViewState._Storage(0);
  swift_allocObject();
  v139 = sub_10003DDB8(v132, v138, v134, v137, v135, v136);
  sub_1000A06D8();
  v140 = v254;
  *v254 = v139;
  v141 = v223;
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v140, 0, 1, v141);
  v142 = type metadata accessor for SearchViewState(0);
  sub_10001B350(v118, 1, 1, v142);
  sub_10001B350(v255, 1, 1, v123);
  sub_10001B350(v256, 1, 1, v257);
  v143 = *v117;
  v144 = v141;
  v145 = v224;
  sub_100095588();
  if (sub_100024D10(v145, 1, v144) == 1)
  {
    sub_1000A06D8();
    v146 = sub_100024D10(v145, 1, v144);

    v147 = v206;
    if (v146 != 1)
    {
      sub_1000180EC(v145, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_1000A07E0();

    v147 = v206;
  }

  LODWORD(v273) = *(v117 + v116[6]);
  v148 = [objc_opt_self() currentDevice];
  v149 = [v148 userInterfaceIdiom];

  sub_1000180EC(v254, &qword_100CA6608, &unk_100A31430);
  sub_1003376D0(v253, type metadata accessor for LocationViewerActiveLocationState);
  if (v149 && *(v117 + v116[9] + 8) == 2)
  {
    v150 = 1;
  }

  else
  {
    v150 = *(v117 + v116[7]);
  }

  v151 = v225;
  sub_100051BBC();
  v152 = sub_100024D10(v151, 1, v142);
  v153 = v230;
  if (v152 == 1)
  {
    sub_100095588();
    if (sub_100024D10(v151, 1, v142) != 1)
    {
      sub_1000180EC(v151, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    v154 = v246;
    sub_1000A07E0();
    v155 = v154;
    v123 = v241;
    sub_10001B350(v155, 0, 1, v142);
  }

  v156 = v226;
  sub_100051BBC();
  v157 = sub_100024D10(v156, 1, v123);
  v158 = v257;
  if (v157 == 1)
  {
    sub_1000A06D8();
    if (sub_100024D10(v156, 1, v123) != 1)
    {
      sub_1000180EC(v156, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_1000A07E0();
  }

  v159 = v228;
  sub_100051BBC();
  if (sub_100024D10(v159, 1, v158) == 1)
  {
    v160 = v267;
    sub_1000A06D8();
    if (sub_100024D10(v159, 1, v158) != 1)
    {
      sub_1000180EC(v159, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_1000A07E0();
    v160 = v267;
  }

  v161 = *(v160 + v116[11]);
  sub_1003376D0(v160, type metadata accessor for ViewState);
  v162 = v227;
  *v227 = v143;
  sub_1000A07E0();
  *(v162 + v116[6]) = v273;
  *(v162 + v116[7]) = v150;
  sub_100051BBC();
  sub_1000A07E0();
  sub_1000A07E0();
  *(v162 + v116[11]) = v161;
  v163 = v233;
  sub_10001B350(v258, 1, 1, v233);
  v164 = v243;
  sub_10001B350(v259, 1, 1, v243);
  v165 = v205;
  sub_10001B350(v260, 1, 1, v205);
  sub_10001B350(v261, 1, 1, v264);
  sub_10001B350(v262, 1, 1, v248);
  v166 = v236;
  sub_10001B350(v263, 1, 1, v236);
  v167 = v265;
  sub_1000A07E0();
  sub_10001B350(v167, 0, 1, v116);
  v168 = v231;
  sub_10001B350(v229, 1, 1, v231);
  v169 = v232;
  sub_1000A06D8();
  sub_100051BBC();
  if (sub_100024D10(v153, 1, v168) == 1)
  {
    sub_1000180EC(v153, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1003376D0(v169, type metadata accessor for ModalViewState);
    sub_1000A07E0();
  }

  v170 = v213;
  sub_1000A07E0();
  v171 = *(v147 + 16);
  LODWORD(v273) = *(v147 + 24);
  sub_100051BBC();
  v172 = sub_100024D10(v170, 1, v163);
  v272 = v171;
  if (v172 == 1)
  {
    sub_1000A06D8();
    v173 = sub_100024D10(v170, 1, v163);

    v113 = v173 == 1;
    v164 = v243;
    v174 = v215;
    v175 = v214;
    if (!v113)
    {
      sub_1000180EC(v170, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1000A07E0();

    v174 = v215;
    v175 = v214;
  }

  sub_100051BBC();
  if (sub_100024D10(v175, 1, v164) == 1)
  {
    swift_beginAccess();
    sub_1000A06D8();
    v176 = sub_100024D10(v175, 1, v164);
    v177 = v218;
    if (v176 != 1)
    {
      sub_1000180EC(v175, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_1000A07E0();
    v177 = v218;
  }

  sub_100051BBC();
  if (sub_100024D10(v174, 1, v165) == 1)
  {
    sub_1000A06D8();
    if (sub_100024D10(v174, 1, v165) != 1)
    {
      sub_1000180EC(v174, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1000A07E0();
  }

  v178 = v234;
  sub_100051BBC();
  v179 = v264;
  if (sub_100024D10(v178, 1, v264) == 1)
  {
    sub_1000A06D8();
    v180 = sub_100024D10(v178, 1, v179);
    v181 = v217;
    v182 = v248;
    if (v180 != 1)
    {
      sub_1000180EC(v178, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1000A07E0();
    v181 = v217;
    v182 = v248;
  }

  v183 = v235;
  sub_100051BBC();
  if (sub_100024D10(v183, 1, v182) == 1)
  {
    sub_1000A06D8();
    if (sub_100024D10(v183, 1, v182) != 1)
    {
      sub_1000180EC(v183, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1000A07E0();
  }

  sub_100051BBC();
  if (sub_100024D10(v181, 1, v166) == 1)
  {
    sub_1000A06D8();
    v184 = sub_100024D10(v181, 1, v166);
    v185 = v216;
    if (v184 != 1)
    {
      sub_1000180EC(v181, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1000A07E0();
    v185 = v216;
  }

  sub_100051BBC();
  v186 = v266;
  if (sub_100024D10(v177, 1, v266) == 1)
  {
    sub_1000A06D8();
    v187 = sub_100024D10(v177, 1, v186);
    v188 = v185;
    if (v187 != 1)
    {
      sub_1000180EC(v177, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1000A07E0();
    v188 = v185;
  }

  v189 = v237;
  sub_1000A07E0();
  v191 = *(v147 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v190 = *(v147 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v193 = *(v147 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v192 = *(v147 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v194 = v147 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v195 = v147;
  v196 = *(v147 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v198 = *(v194 + 8);
  v197 = *(v194 + 16);
  v199 = *(v195 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v201) = v196;
  sub_10003E038(v272, v273, v249, v207, v208, v250, v251, v252, v188, v189, v191, v190, v193, v192, v201, v198, v197, v199, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218);
}

uint64_t sub_100335BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v178 = a3;
  v175 = a2;
  v212 = type metadata accessor for TimeState(0);
  __chkstk_darwin(v212);
  v218 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for NotificationsOptInState(0);
  __chkstk_darwin(v211);
  v217 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for NotificationsState(0);
  __chkstk_darwin(v191);
  v216 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v7);
  v215 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for EnvironmentState(0);
  __chkstk_darwin(v195);
  v214 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for AppConfigurationState(0);
  __chkstk_darwin(v186);
  v213 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v183);
  v193 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v184 = &v164 - v13;
  __chkstk_darwin(v14);
  v16 = &v164 - v15;
  v17 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  __chkstk_darwin(v17 - 8);
  v19 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v180 = &v164 - v21;
  v22 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  __chkstk_darwin(v22 - 8);
  v24 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v192 = &v164 - v26;
  v27 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  __chkstk_darwin(v27 - 8);
  v190 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v209 = &v164 - v30;
  v31 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  __chkstk_darwin(v31 - 8);
  v189 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v208 = &v164 - v34;
  v35 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  __chkstk_darwin(v35 - 8);
  v188 = &v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v207 = &v164 - v38;
  v39 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  __chkstk_darwin(v39 - 8);
  v185 = &v164 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v206 = &v164 - v42;
  v43 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  __chkstk_darwin(v43 - 8);
  v181 = &v164 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v205 = &v164 - v46;
  v47 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  __chkstk_darwin(v47 - 8);
  v179 = &v164 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v204 = &v164 - v50;
  v203 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v203);
  v177 = &v164 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v173);
  v176 = &v164 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v170);
  v202 = &v164 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  __chkstk_darwin(v54 - 8);
  *(&v174 + 1) = &v164 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v200 = &v164 - v57;
  v58 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v58 - 8);
  v172 = &v164 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v199 = &v164 - v61;
  v62 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v62 - 8);
  v171 = &v164 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v201 = &v164 - v65;
  __chkstk_darwin(v66);
  v198 = &v164 - v67;
  v68 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  __chkstk_darwin(v68 - 8);
  v169 = &v164 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v197 = &v164 - v71;
  v72 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v72);
  v187 = &v164 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v219 = &v164 - v75;
  __chkstk_darwin(v76);
  *&v174 = &v164 - v77;
  __chkstk_darwin(v78);
  v80 = (&v164 - v79);
  v194 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1000A06D8();
  v81 = *v80;
  v82 = *(v80 + *(v72 + 36) + 8) == 1;
  v220 = v72;
  v210 = v7;
  v182 = v19;
  if (v82)
  {
    v83 = objc_opt_self();

    v84 = [v83 currentDevice];
    [v84 userInterfaceIdiom];

    v85 = *(v80 + *(v72 + 28));
    sub_1003376D0(v80, type metadata accessor for ViewState);
    if (v85 == 1)
    {

      return a1;
    }
  }

  else
  {

    sub_1003376D0(v80, type metadata accessor for ViewState);
  }

  v167 = v24;
  v168 = v16;
  v164 = *(v81 + 16);
  v86 = *(v81 + 24);
  v196 = a1;
  v87 = *(v81 + 25);
  v88 = *(v81 + 26);
  v89 = *(v81 + 40);
  v166 = *(v81 + 32);
  v90 = *(v81 + 72);
  v91 = *(v81 + 80);
  v92 = *(v81 + 88);
  v93 = *(v81 + 89);
  v94 = *(v81 + 27);
  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v165 = v91;
  v95 = v166;
  v166 = v89;
  v96 = sub_100042DA8(v164, v86, v87, v88, v94, v95, v89, v175, v178, 1, v90, v91, v92, v93);
  v97 = v219;
  sub_1000A06D8();
  v98 = v170;
  sub_10001B350(v197, 1, 1, v170);
  v99 = type metadata accessor for SearchViewState(0);
  sub_10001B350(v198, 1, 1, v99);
  v100 = v173;
  sub_10001B350(v199, 1, 1, v173);
  sub_10001B350(v200, 1, 1, v203);
  v101 = v169;
  sub_100095588();
  if (sub_100024D10(v101, 1, v98) == 1)
  {
    v102 = v220;
    sub_1000A06D8();
    v103 = sub_100024D10(v101, 1, v98);

    swift_retain_n();

    v82 = v103 == 1;
    v104 = v102;
    v105 = v101;
    v106 = v191;
    v107 = v96;
    v108 = &MainInitialStateProvider;
    if (!v82)
    {
      sub_1000180EC(v105, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_1000A07E0();

    swift_retain_n();

    v106 = v191;
    v104 = v220;
    v107 = v96;
    v108 = &MainInitialStateProvider;
  }

  LODWORD(v178) = *(v97 + *(v104 + 24));
  v109 = [objc_opt_self() currentDevice];
  v110 = [v109 v108[51].base_props];
  v191 = v107;

  v111 = v220;
  sub_1000180EC(v197, &qword_100CA6608, &unk_100A31430);
  if (v110 && *(v97 + v111[9] + 8) == 2)
  {
    v112 = 1;
  }

  else
  {
    v112 = *(v97 + v111[7]);
  }

  v113 = v171;
  sub_100051BBC();
  if (sub_100024D10(v113, 1, v99) == 1)
  {
    sub_100095588();
    if (sub_100024D10(v113, 1, v99) != 1)
    {
      sub_1000180EC(v113, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    v114 = v201;
    sub_1000A07E0();
    sub_10001B350(v114, 0, 1, v99);
  }

  v115 = v172;
  sub_100051BBC();
  v116 = sub_100024D10(v115, 1, v100);
  v117 = v203;
  if (v116 == 1)
  {
    sub_1000A06D8();
    v118 = sub_100024D10(v115, 1, v100);
    v119 = v196;
    if (v118 != 1)
    {
      sub_1000180EC(v115, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_1000A07E0();
    v119 = v196;
  }

  v120 = *(&v174 + 1);
  sub_100051BBC();
  if (sub_100024D10(v120, 1, v117) == 1)
  {
    sub_1000A06D8();
    if (sub_100024D10(v120, 1, v117) != 1)
    {
      sub_1000180EC(v120, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_1000A07E0();
  }

  v121 = *(v219 + v111[11]);
  sub_1003376D0(v219, type metadata accessor for ViewState);
  v122 = v174;
  *v174 = v191;
  sub_1000A07E0();
  *(v122 + v111[6]) = v178;
  *(v122 + v111[7]) = v112;
  sub_100051BBC();
  sub_1000A07E0();
  sub_1000A07E0();

  *(v122 + v111[11]) = v121;
  v123 = v186;
  sub_10001B350(v204, 1, 1, v186);
  v124 = v195;
  sub_10001B350(v205, 1, 1, v195);
  sub_10001B350(v206, 1, 1, v210);
  v125 = v106;
  sub_10001B350(v207, 1, 1, v106);
  sub_10001B350(v208, 1, 1, v211);
  sub_10001B350(v209, 1, 1, v212);
  v126 = v192;
  sub_1000A07E0();
  sub_10001B350(v126, 0, 1, v111);
  v127 = v183;
  sub_10001B350(v180, 1, 1, v183);
  v128 = v184;
  sub_1000A06D8();
  v129 = v182;
  sub_100051BBC();
  if (sub_100024D10(v129, 1, v127) == 1)
  {
    sub_1000180EC(v129, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1003376D0(v128, type metadata accessor for ModalViewState);
    sub_1000A07E0();
  }

  sub_1000A07E0();
  v130 = *(v119 + 16);
  LODWORD(v203) = *(v119 + 24);
  v131 = v179;
  sub_100051BBC();
  v132 = sub_100024D10(v131, 1, v123);
  v133 = v181;
  if (v132 == 1)
  {
    sub_1000A06D8();
    v134 = sub_100024D10(v131, 1, v123);

    v82 = v134 == 1;
    v124 = v195;
    v135 = v185;
    if (!v82)
    {
      sub_1000180EC(v131, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1000A07E0();

    v135 = v185;
  }

  sub_100051BBC();
  if (sub_100024D10(v133, 1, v124) == 1)
  {
    swift_beginAccess();
    sub_1000A06D8();
    v136 = sub_100024D10(v133, 1, v124);
    v137 = v190;
    v138 = v188;
    if (v136 != 1)
    {
      sub_1000180EC(v133, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_1000A07E0();
    v137 = v190;
    v138 = v188;
  }

  sub_100051BBC();
  v139 = v210;
  if (sub_100024D10(v135, 1, v210) == 1)
  {
    sub_1000A06D8();
    if (sub_100024D10(v135, 1, v139) != 1)
    {
      sub_1000180EC(v135, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1000A07E0();
  }

  sub_100051BBC();
  if (sub_100024D10(v138, 1, v125) == 1)
  {
    sub_1000A06D8();
    v140 = sub_100024D10(v138, 1, v125);
    v141 = v212;
    if (v140 != 1)
    {
      sub_1000180EC(v138, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1000A07E0();
    v141 = v212;
  }

  v142 = v189;
  sub_100051BBC();
  v143 = v211;
  if (sub_100024D10(v142, 1, v211) == 1)
  {
    sub_1000A06D8();
    v144 = sub_100024D10(v142, 1, v143);
    v145 = v187;
    if (v144 != 1)
    {
      sub_1000180EC(v142, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1000A07E0();
    v145 = v187;
  }

  sub_100051BBC();
  if (sub_100024D10(v137, 1, v141) == 1)
  {
    sub_1000A06D8();
    if (sub_100024D10(v137, 1, v141) != 1)
    {
      sub_1000180EC(v137, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1000A07E0();
  }

  v146 = v167;
  sub_100051BBC();
  v147 = v220;
  v148 = sub_100024D10(v146, 1, v220);
  v219 = v130;
  if (v148 == 1)
  {
    sub_1000A06D8();
    v149 = v145;
    if (sub_100024D10(v146, 1, v147) != 1)
    {
      sub_1000180EC(v146, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1000A07E0();
    v149 = v145;
  }

  v150 = v193;
  sub_1000A07E0();
  v152 = *(v119 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v151 = *(v119 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v154 = *(v119 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v153 = *(v119 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v155 = v119 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v156 = v119;
  v157 = *(v119 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v159 = *(v155 + 8);
  v158 = *(v155 + 16);
  v160 = *(v156 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v163) = v157;
  sub_10003E038(v219, v203, v213, v214, v215, v216, v217, v218, v149, v150, v152, v151, v154, v153, v163, v159, v158, v160, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180);
  a1 = v161;

  return a1;
}

uint64_t sub_1003376D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100337728@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_100035AD0(v2, &v16 - v11, &unk_100CE1000, &qword_100A447D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
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

uint64_t sub_100337908(uint64_t a1)
{
  v2 = type metadata accessor for LocationViewObserverViewState.Reason(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_10001B350(v4, 2, 4, v5);
  v6 = type metadata accessor for LocationViewObserverView(0);
  type metadata accessor for LocationViewObserverViewState();
  sub_100067294(&qword_100CADCD8, type metadata accessor for LocationViewObserverViewState, byte_100A3D210);
  StateObject.wrappedValue.getter();
  sub_100338B6C(0, a1 + v6[6], *(a1 + v6[7]), *(a1 + v6[7] + 8), *(a1 + v6[9]), v4);

  return sub_100339ADC(v4);
}

uint64_t sub_100337A60(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LocationViewObserverViewState.Reason(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_10001B350(v5, 3, 4, v6);
  v7 = type metadata accessor for LocationViewObserverView(0);
  type metadata accessor for LocationViewObserverViewState();
  sub_100067294(&qword_100CADCD8, type metadata accessor for LocationViewObserverViewState, byte_100A3D210);
  StateObject.wrappedValue.getter();
  sub_100338B6C(0, a2 + v7[6], *(a2 + v7[7]), *(a2 + v7[7] + 8), *(a2 + v7[9]), v5);

  return sub_100339ADC(v5);
}

uint64_t sub_100337BB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LocationViewObserverViewState.Reason(0);
  __chkstk_darwin(v3 - 8);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Location.Identifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  active = type metadata accessor for ActiveLocationModel(0);
  __chkstk_darwin(active - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v38);
  v37 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  __chkstk_darwin(v19);
  v21 = &v34 - v20;
  v22 = type metadata accessor for LocationViewObserverView(0);
  v23 = v22[6];
  v36 = v6;
  v24 = *(v6 + 16);
  v39 = v23;
  v24(v21, a2 + v23, v5);
  sub_10001B350(v21, 0, 1, v5);
  v41 = a2;
  sub_1000E7B34();
  sub_1000E90D8(v14, v18);
  v25 = *(v9 + 56);
  sub_100035AD0(v21, v11, &qword_100CADBA0, &qword_100A3D250);
  sub_100035AD0(v18, &v11[v25], &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v11, 1, v5) != 1)
  {
    v27 = v37;
    sub_100035AD0(v11, v37, &qword_100CADBA0, &qword_100A3D250);
    if (sub_100024D10(&v11[v25], 1, v5) != 1)
    {
      v28 = v35;
      v29 = v36;
      (*(v36 + 32))(v35, &v11[v25], v5);
      sub_100067294(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v29 + 8);
      v30(v28, v5);
      sub_100018144(v18, &qword_100CADBA0, &qword_100A3D250);
      sub_100018144(v21, &qword_100CADBA0, &qword_100A3D250);
      v30(v37, v5);
      sub_100018144(v11, &qword_100CADBA0, &qword_100A3D250);
      goto LABEL_8;
    }

    sub_100018144(v18, &qword_100CADBA0, &qword_100A3D250);
    sub_100018144(v21, &qword_100CADBA0, &qword_100A3D250);
    (*(v36 + 8))(v27, v5);
    goto LABEL_6;
  }

  sub_100018144(v18, &qword_100CADBA0, &qword_100A3D250);
  sub_100018144(v21, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(&v11[v25], 1, v5) != 1)
  {
LABEL_6:
    sub_100018144(v11, &qword_100CADD58, &unk_100A3E650);
    v26 = 0;
    goto LABEL_8;
  }

  sub_100018144(v11, &qword_100CADBA0, &qword_100A3D250);
  v26 = 1;
LABEL_8:
  v31 = v40;
  sub_10001B350(v40, 4, 4, v38);
  v32 = v41;
  type metadata accessor for LocationViewObserverViewState();
  sub_100067294(&qword_100CADCD8, type metadata accessor for LocationViewObserverViewState, byte_100A3D210);
  StateObject.wrappedValue.getter();
  sub_100338B6C(v26 & 1, v32 + v39, *(v32 + v22[7]), *(v32 + v22[7] + 8), *(v32 + v22[9]), v31);

  return sub_100339ADC(v31);
}

uint64_t sub_100338150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v4 = type metadata accessor for LocationViewObserverViewState.Reason(0);
  __chkstk_darwin(v4 - 8);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScenePhase();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = &v41 - v9;
  v10 = type metadata accessor for Location.Identifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v41 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v47 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v47);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v41 - v20;
  v22 = type metadata accessor for LocationViewObserverView(0);
  v23 = v22[6];
  v24 = *(v11 + 16);
  v50 = a3;
  v48 = v23;
  v25 = a3 + v23;
  v26 = v46;
  v24(v21, v25, v10);
  sub_10001B350(v21, 0, 1, v10);
  v27 = *(v14 + 56);
  sub_100035AD0(v21, v16, &qword_100CADBA0, &qword_100A3D250);
  sub_100035AD0(v26, &v16[v27], &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v16, 1, v10) == 1)
  {
    sub_100018144(v21, &qword_100CADBA0, &qword_100A3D250);
    if (sub_100024D10(&v16[v27], 1, v10) == 1)
    {
      sub_100018144(v16, &qword_100CADBA0, &qword_100A3D250);
      v28 = v50;
LABEL_8:
      v33 = v42;
      sub_100337728(v42);
      v35 = v43;
      v34 = v44;
      v36 = v45;
      (*(v44 + 104))(v43, enum case for ScenePhase.background(_:), v45);
      sub_100067294(&qword_100CE11D0, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v34 + 8);
      v38(v35, v36);
      v38(v33, v36);
      v29 = v37 ^ 1;
      goto LABEL_10;
    }
  }

  else
  {
    sub_100035AD0(v16, v18, &qword_100CADBA0, &qword_100A3D250);
    if (sub_100024D10(&v16[v27], 1, v10) != 1)
    {
      v30 = v41;
      (*(v11 + 32))(v41, &v16[v27], v10);
      sub_100067294(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v11 + 8);
      v32(v30, v10);
      sub_100018144(v21, &qword_100CADBA0, &qword_100A3D250);
      v32(v18, v10);
      sub_100018144(v16, &qword_100CADBA0, &qword_100A3D250);
      v28 = v50;
      if ((v31 & 1) == 0)
      {
        v29 = 0;
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_100018144(v21, &qword_100CADBA0, &qword_100A3D250);
    (*(v11 + 8))(v18, v10);
  }

  sub_100018144(v16, &qword_100CADD58, &unk_100A3E650);
  v29 = 0;
  v28 = v50;
LABEL_10:
  v39 = v49;
  sub_100035AD0(v26, v49, &qword_100CADBA0, &qword_100A3D250);
  sub_10001B350(v39, 0, 4, v47);
  type metadata accessor for LocationViewObserverViewState();
  sub_100067294(&qword_100CADCD8, type metadata accessor for LocationViewObserverViewState, byte_100A3D210);
  StateObject.wrappedValue.getter();
  sub_100338B6C(v29 & 1, v28 + v48, *(v28 + v22[7]), *(v28 + v22[7] + 8), *(v28 + v22[9]), v39);

  return sub_100339ADC(v39);
}

unint64_t sub_1003387AC()
{
  v1 = v0;
  v2 = type metadata accessor for LocationViewObserverViewState.Reason(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100339B38(v1, v4, type metadata accessor for LocationViewObserverViewState.Reason);
  v5 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  v6 = sub_100024D10(v4, 4, v5);
  result = 0x7261657070416E6FLL;
  switch(v6)
  {
    case 1:
      return result;
    case 2:
      result = 0x7070617369446E6FLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      sub_100339ADC(v4);
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_100338918()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for LocationViewObserverViewState.Reason(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100339B38(v1, v10, type metadata accessor for LocationViewObserverViewState.Reason);
  if (sub_100024D10(v10, 4, v2))
  {
    sub_100339ADC(v10);
  }

  else
  {
    sub_1000E90D8(v10, v7);
    sub_100035AD0(v7, v4, &qword_100CADBA0, &qword_100A3D250);
    v11 = type metadata accessor for Location.Identifier();
    if (sub_100024D10(v4, 1, v11) != 1)
    {
      sub_100067294(&qword_100CADBA8, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
      v12 = ShortDescribable.description.getter();
      sub_100018144(v7, &qword_100CADBA0, &qword_100A3D250);
      (*(*(v11 - 8) + 8))(v4, v11);
      return v12;
    }

    sub_100018144(v7, &qword_100CADBA0, &qword_100A3D250);
    sub_100018144(v4, &qword_100CADBA0, &qword_100A3D250);
  }

  return 0;
}

void sub_100338B6C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v117 = a5;
  v106 = a4;
  v115 = a3;
  v119 = a1;
  v9 = a1 & 1;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v113 = *(v10 - 8);
  v114 = v10;
  __chkstk_darwin(v10);
  v111 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchQoS();
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationViewModel(0);
  v103 = *(v13 - 8);
  __chkstk_darwin(v13);
  v104 = v14;
  v105 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for DispatchTime();
  v108 = *(v116 - 8);
  __chkstk_darwin(v116);
  v102 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v91 - v17;
  v18 = type metadata accessor for LocationViewObserverViewState.Reason(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v91 - v22;
  v120 = type metadata accessor for UUID();
  v24 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  __chkstk_darwin(v25);
  v27 = &v91 - v26;
  __chkstk_darwin(v28);
  v30 = &v91 - v29;
  __chkstk_darwin(v31);
  v118 = v6;
  if (*(v6 + 16) != v9 && *(a2 + *(v13 + 52)) == 1)
  {
    v96 = v34;
    v100 = v33;
    v99 = a2;
    v35 = &v91 - v32;
    UUID.init()();
    if (qword_100CA27C0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v37 = sub_10000703C(v36, qword_100D90D98);
    v38 = v100;
    v39 = *(v100 + 16);
    v101 = v35;
    v40 = v35;
    v41 = v120;
    v98 = v100 + 16;
    v97 = v39;
    v39(v30, v40, v120);
    sub_100339B38(a6, v23, type metadata accessor for LocationViewObserverViewState.Reason);
    sub_100339B38(a6, v20, type metadata accessor for LocationViewObserverViewState.Reason);
    v94 = v37;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v93 = v43;
      v45 = v44;
      v95 = swift_slowAlloc();
      aBlock[0] = v95;
      *v45 = 136316163;
      sub_100067294(&qword_100CADB98, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v92 = v42;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = *(v38 + 8);
      v49(v30, v120);
      v50 = sub_100078694(v46, v48, aBlock);

      *(v45 + 4) = v50;
      *(v45 + 12) = 1024;
      v51 = v119;
      *(v45 + 14) = v119 & 1;
      *(v45 + 18) = 2080;
      v52 = sub_1003387AC();
      v54 = v53;
      sub_100339ADC(v23);
      v55 = sub_100078694(v52, v54, aBlock);

      *(v45 + 20) = v55;
      *(v45 + 28) = 2160;
      *(v45 + 30) = 1752392040;
      *(v45 + 38) = 2081;
      v56 = sub_100338918();
      if (v57)
      {
        v58 = v56;
      }

      else
      {
        v58 = 1701736302;
      }

      if (v57)
      {
        v59 = v57;
      }

      else
      {
        v59 = 0xE400000000000000;
      }

      sub_100339ADC(v20);
      v60 = sub_100078694(v58, v59, aBlock);

      *(v45 + 40) = v60;
      v41 = v120;
      v61 = v92;
      _os_log_impl(&_mh_execute_header, v92, v93, "%s: Processing change in location view visibility. Visible=%{BOOL}d, Reason: %s, Arg=%{private,mask.hash}s", v45, 0x30u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100339ADC(v20);
      sub_100339ADC(v23);
      v49 = *(v38 + 8);
      v49(v30, v41);
      v51 = v119;
    }

    v62 = v99;
    if (v51)
    {
      v95 = v49;
      v97(v27, v101, v41);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        aBlock[0] = v66;
        *v65 = 136315138;
        sub_100067294(&qword_100CADB98, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v70 = v100;
        v94 = (v100 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v95(v27, v120);
        v71 = sub_100078694(v67, v69, aBlock);

        *(v65 + 4) = v71;
        v41 = v120;
        _os_log_impl(&_mh_execute_header, v63, v64, "%s: Deferring view session start", v65, 0xCu);
        sub_100006F14(v66);

        v62 = v99;
      }

      else
      {

        v70 = v100;
        v94 = (v100 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v95(v27, v41);
      }

      sub_100040690();
      v100 = static OS_dispatch_queue.main.getter();
      v73 = v102;
      static DispatchTime.now()();
      v74 = v107;
      + infix(_:_:)();
      v108 = *(v108 + 8);
      (v108)(v73, v116);
      v75 = v96;
      v97(v96, v101, v41);
      v76 = v105;
      sub_100339B38(v62, v105, type metadata accessor for LocationViewModel);
      v77 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v78 = (v24 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
      v79 = (*(v103 + 80) + v78 + 16) & ~*(v103 + 80);
      v80 = (v104 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      v82 = v41;
      v83 = v81;
      (*(v70 + 32))(v81 + v77, v75, v82);
      v84 = (v83 + v78);
      v85 = v106;
      *v84 = v115;
      v84[1] = v85;
      sub_10015CED4(v76, v83 + v79, type metadata accessor for LocationViewModel);
      *(v83 + v80) = v117;
      aBlock[4] = sub_100339B98;
      aBlock[5] = v83;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000742F0;
      aBlock[3] = &unk_100C4F010;
      v86 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      v87 = v109;
      static DispatchQoS.unspecified.getter();
      v121 = _swiftEmptyArrayStorage;
      sub_100067294(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
      sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
      v88 = v111;
      v89 = v114;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v90 = v100;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v86);

      (*(v113 + 8))(v88, v89);
      (*(v110 + 8))(v87, v112);
      (v108)(v74, v116);
      v95(v101, v120);

      v51 = v119;
    }

    else
    {
      sub_10078D97C(v99);
      *(v117 + 72) = 0;
      sub_1009DBEE8(v72);
      v49(v101, v41);
    }

    *(v118 + 16) = v51 & 1;
  }
}

uint64_t sub_100339800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA27C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000703C(v12, qword_100D90D98);
  (*(v9 + 16))(v11, a1, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a4;
    v16 = v15;
    v24 = swift_slowAlloc();
    v26 = v24;
    *v16 = 136315138;
    sub_100067294(&qword_100CADB98, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v9 + 8))(v11, v8);
    v20 = sub_100078694(v17, v19, &v26);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: Tracking view session start", v16, 0xCu);
    sub_100006F14(v24);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v21 = sub_10078D828();
  *(a5 + 72) = 1;
  return sub_1009DBEE8(v21);
}

uint64_t sub_100339ADC(uint64_t a1)
{
  v2 = type metadata accessor for LocationViewObserverViewState.Reason(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100339B38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100339B98()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for LocationViewModel(0) - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);

  return sub_100339800(v0 + v2, v7, v8, v0 + v5, v6);
}

uint64_t sub_100339CCC(uint64_t a1)
{
  sub_100009BA0(319, &qword_100CADC30, &type metadata accessor for Location.Identifier, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_100339D7C()
{
  type metadata accessor for LocationViewObserverView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_100003D98();
    (*(v4 + 8))(v3);
  }

  else
  {
  }

  sub_10003BCD8();
  v5 = v3 + *(v0 + 24);
  v6 = type metadata accessor for Location.Identifier();
  sub_1000037E8();
  v8 = *(v7 + 8);
  v9 = (v7 + 8);
  v8(v5, v6);
  v10 = type metadata accessor for LocationViewModel(0);
  v11 = v10[5];
  if (!sub_100024D10(v5 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = v5 + v10[6];

  sub_10016AD1C(*(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40));

  v13 = v5 + v10[9];
  v14 = type metadata accessor for LocationFooterViewModel(0);
  if (!sub_1000057B4(v14))
  {

    if (*(v13 + 24))
    {
    }

    v15 = v13 + v9[9];

    v16 = *(type metadata accessor for LearnMoreAttributorViewModel(0) + 24);
    v17 = type metadata accessor for URL();
    if (!sub_100024D10(v15 + v16, 1, v17))
    {
      sub_100003B20();
      (*(v18 + 8))(v15 + v16, v17);
    }

    v19 = v9[11];
    v20 = type metadata accessor for LocationOfInterest();
    if (!sub_100024D10(v13 + v19, 1, v20))
    {
      sub_100003B20();
      (*(v21 + 8))(v13 + v19, v20);
    }

    v22 = v13 + v9[14];
    v23 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
    if (!sub_1000057B4(v23))
    {
      v24 = v9[5];
      type metadata accessor for Location();
      sub_100003D98();
      (*(v25 + 8))(v22 + v24);
      (*(*(v20 - 8) + 8))(v22 + v9[6], v20);
    }
  }

  v26 = v10[19];
  type metadata accessor for Date();
  sub_100003D98();
  (*(v27 + 8))(v5 + v26);
  v28 = v10[20];
  v29 = type metadata accessor for ForegroundEffect();
  if (!sub_100024D10(v5 + v28, 1, v29))
  {
    sub_100003B20();
    (*(v30 + 8))(v5 + v28, v29);
  }

  v31 = (v5 + v10[26]);
  v32 = type metadata accessor for PreviewLocation(0);
  if (!sub_1000057B4(v32))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        type metadata accessor for Location();
        goto LABEL_22;
      case 2u:
        type metadata accessor for LocationOfInterest();
LABEL_22:
        sub_100003D98();
        (*(v33 + 8))(v31);
        break;
      case 3u:

        v35 = *(type metadata accessor for SearchLocation(0) + 32);
        v36 = type metadata accessor for Location();
        if (!sub_100024D10(v31 + v35, 1, v36))
        {
          sub_100003B20();
          (*(v37 + 8))(v31 + v35);
        }

        break;
      case 4u:

        break;
      default:
        break;
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10033A348(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_100019410();
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10033A3C0()
{
  sub_100019410();
  v0 = sub_1000081A4();

  return sub_100338150(v0, v1, v2);
}

uint64_t sub_10033A424()
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
  sub_100007074(v6, static OpenUnitsConfigurationIntent.title);
  sub_10000703C(v6, static OpenUnitsConfigurationIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10033A674()
{
  v0 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100007074(v10, static OpenUnitsConfigurationIntent.description);
  sub_10000703C(v10, static OpenUnitsConfigurationIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t sub_10033A990()
{
  v0 = type metadata accessor for IntentModes.ForegroundMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IntentModes();
  sub_100007074(v4, static OpenUnitsConfigurationIntent.supportedModes);
  sub_10000703C(v4, static OpenUnitsConfigurationIntent.supportedModes);
  sub_10022C350(&qword_100CADDB8, &unk_100A3D510);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  static IntentModes.ForegroundMode.immediate.getter();
  static IntentModes.foreground(_:)();
  (*(v1 + 8))(v3, v0);
  v7[1] = v5;
  sub_10033BE2C();
  sub_10022C350(&qword_100CADDC8, &unk_100A545B0);
  sub_100006F64(&qword_100CADDD0, &qword_100CADDC8, &unk_100A545B0, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10033ABC4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = a2(0);

  return sub_10000703C(v6, a3);
}

uint64_t sub_10033AC58@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = sub_10000703C(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t OpenNotificationsConfigurationIntent.init()()
{
  sub_10022C350(&qword_100CA2D38, &unk_100A2C480);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  return AppDependency.__allocating_init(key:manager:)();
}

uint64_t OpenUnitsConfigurationIntent.perform()()
{
  sub_100003B08();
  v0[7] = v1;
  v0[8] = v2;
  v3 = type metadata accessor for WeatherIntentType();
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_10033AE28, 0, 0);
}

uint64_t sub_10033AE28()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  AppDependency.wrappedValue.getter();
  v4 = v0[5];
  v5 = v0[6];
  sub_1000161C0(v0 + 2, v4);
  (*(v2 + 104))(v1, enum case for WeatherIntentType.openUnitsConfiguration(_:), v3);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_10033AF20;
  v7 = v0[11];

  return dispatch thunk of WeatherIntentHandlerType.handleIntent(_:)(v7, v4, v5);
}

uint64_t sub_10033AF20()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10033B108;
  }

  else
  {
    v5 = sub_10033B090;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10033B090()
{
  sub_100003B08();
  sub_100006F14((v0 + 16));
  static IntentResult.result<>()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033B108()
{
  sub_100003B08();
  sub_100006F14((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10033B178()
{
  result = qword_100CADD60;
  if (!qword_100CADD60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenUnitsConfigurationIntent, &type metadata for OpenUnitsConfigurationIntent, v0, v1);
    atomic_store(result, &qword_100CADD60);
  }

  return result;
}

unint64_t sub_10033B1D0()
{
  result = qword_100CADD68;
  if (!qword_100CADD68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenUnitsConfigurationIntent, &type metadata for OpenUnitsConfigurationIntent, v0, v1);
    atomic_store(result, &qword_100CADD68);
  }

  return result;
}

unint64_t sub_10033B290()
{
  result = qword_100CADD70;
  if (!qword_100CADD70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenUnitsConfigurationIntent, &type metadata for OpenUnitsConfigurationIntent, v0, v1);
    atomic_store(result, &qword_100CADD70);
  }

  return result;
}

uint64_t sub_10033B340@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = a1();
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v5, v6);
}

uint64_t sub_10033B3D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10033B470;

  return OpenUnitsConfigurationIntent.perform()();
}

uint64_t sub_10033B470()
{
  sub_100003B08();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10033B560@<X0>(uint64_t *a1@<X8>)
{
  result = OpenNotificationsConfigurationIntent.init()();
  *a1 = result;
  return result;
}

uint64_t sub_10033B588(uint64_t a1)
{
  v2 = sub_10033B290();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10033B5C4()
{
  type metadata accessor for _AssistantIntent();
  sub_10000548C();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CA2D38, &unk_100A2C480);
  type metadata accessor for AppDependencyManager();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  static AppDependencyManager.shared.getter();
  *&v10[0] = AppDependency.__allocating_init(key:manager:)();
  sub_10033B290();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v6 = static _AssistantIntent.Builder.buildExpression(_:)();
  (*(v2 + 8))(v5, v0);
  sub_10022C350(&qword_100CADD98, &qword_100A3D4F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  *(v7 + 32) = v6;
  v8 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10033B760()
{
  v36 = sub_10022C350(&qword_100CADDA0, &qword_100A3D4F8);
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v2 = &v25 - v1;
  v3 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CADDA8, &qword_100A3D500);
  __chkstk_darwin(v7);
  sub_10033B290();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x206E65704FLL;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v29 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v33 = *(v4 + 104);
  v26 = v3;
  v33(v6);
  v25 = v4 + 104;
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v9 = *(v4 + 8);
  v27 = v4 + 8;
  v28 = v9;
  v9(v6, v3);
  v10._countAndFlagsBits = 0xD000000000000013;
  v10._object = 0x8000000100AC0B40;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11 = *(v0 + 8);
  v12 = v36;
  v11(v2, v36);
  v34 = v11;
  v35 = v0 + 8;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v11(v2, v12);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000014;
  v13._object = 0x8000000100AC0B80;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v29;
  v15 = v26;
  (v33)(v6, v29, v26);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v16 = v28;
  v28(v6, v15);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v2, v36);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0xD000000000000022;
  v18._object = 0x8000000100AC0BA0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  (v33)(v6, v14, v15);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v16(v6, v15);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v2, v36);
  sub_10022C350(&qword_100CADDB0, &qword_100A3D508);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100A3B020;
  v22 = v31;
  *(v21 + 32) = v32;
  *(v21 + 40) = v22;
  *(v21 + 48) = v30;
  *(v21 + 56) = v20;
  v23 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v23;
}

uint64_t sub_10033BC5C()
{
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  sub_10000548C();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033B290();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v6 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  (*(v2 + 8))(v5, v0);
  sub_10022C350(&qword_100CADD88, &unk_100A3D4E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  *(v7 + 32) = v6;
  v8 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10033BD8C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2C3F0;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

unint64_t sub_10033BE2C()
{
  result = qword_100CADDC0;
  if (!qword_100CADDC0)
  {
    v3 = type metadata accessor for IntentModes();
    result = swift_getWitnessTable(&protocol conformance descriptor for IntentModes, v3, v0, v1);
    atomic_store(result, &qword_100CADDC0);
  }

  return result;
}

uint64_t type metadata accessor for SearchResultRowView(uint64_t a1)
{
  result = qword_100CADE30;
  if (!qword_100CADE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10033BEF8(uint64_t a1)
{
  result = sub_100284708();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SearchLocation(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10033BFB0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  v36 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for SearchResultButtonStyle(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SearchResultRowView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = sub_10022C350(&qword_100CADE70, &qword_100A3D598);
  sub_1000037C4();
  v37 = v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  sub_10022C350(&qword_100CADE78, &qword_100A3D5A0);
  sub_1000037C4();
  v39 = v16;
  v40 = v17;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  sub_10033CC5C(v1, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResultRowView);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_10033CA54(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v43 = v1;
  sub_10022C350(&qword_100CADE80, &qword_100A3D5A8);
  sub_10033CB20();
  Button.init(action:label:)();
  v22 = *(v1 + *(v8 + 36));
  *v6 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v23 = v38;
  *(v6 + *(v38 + 20)) = v22;
  v24 = sub_100006F64(&qword_100CADEB0, &qword_100CADE70, &qword_100A3D598, &protocol conformance descriptor for Button<A>);
  v25 = sub_10033CFA0(&qword_100CADEB8, type metadata accessor for SearchResultButtonStyle, asc_100AA47C0);
  View.buttonStyle<A>(_:)();
  sub_10033CCBC(v6, type metadata accessor for SearchResultButtonStyle);
  (*(v37 + 8))(v15, v11);
  v26 = v1 + *(v8 + 28);
  v28 = *(v26 + 48);
  v48 = *(v26 + 40);
  v27 = v48;
  v49 = v28;

  v44 = v11;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  swift_getOpaqueTypeConformance2();
  sub_10002D5A4();
  v29 = v41;
  v30 = v39;
  View.accessibilityLabel<A>(_:)();
  (*(v40 + 8))(v19, v30);
  v31 = v36;
  *v36 = v27;
  *(v31 + 8) = v28;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v32 = v29 + *(sub_10022C350(&qword_100CADEC0, &qword_100A3D5F8) + 36);
  v33 = type metadata accessor for AutomationInfoProperty(0);
  sub_10033CC5C(v31, v32 + *(v33 + 24), type metadata accessor for AutomationInfo);
  sub_10033CCBC(v31, type metadata accessor for AutomationInfo);
  *v32 = 0;
  *(v32 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v32 + 16) = result;
  *(v32 + 24) = 0;
  return result;
}

uint64_t sub_10033C4DC(char *a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  sub_1000161C0(a1, v2);
  v4 = type metadata accessor for SearchResultRowView(0);
  return (*(v3 + 8))(&a1[*(v4 + 20)], v2, v3);
}

double sub_10033C540@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for SearchResultRowView(0) + 20);
  v5 = *(v3 + 40);
  v4 = *(v3 + 48);
  *&v15 = v5;
  *(&v15 + 1) = v4;
  sub_10002D5A4();
  v6 = StringProtocol.localizedStandardRange<A>(of:)();
  if (v8)
  {
    *&v15 = v5;
    *(&v15 + 1) = v4;

    v9 = Text.init<A>(_:)();
    v11 = v10;
    v13 = v12;
    static Color.secondary.getter();
    Text.foregroundColor(_:)();

    sub_10010CD64(v9, v11, v13 & 1);
  }

  else
  {
    sub_10033C75C(v5, v4, v6, v7);
  }

  swift_getKeyPath();
  sub_10022C350(&qword_100CADE98, &unk_100A3D5B0);
  sub_10033CBA4();
  _ConditionalContent<>.init(storage:)();
  *a2 = v15;
  *(a2 + 16) = v16;
  result = *&v17;
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  return result;
}

uint64_t sub_10033C75C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  String.subscript.getter();
  sub_10033CD14();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Color.secondary.getter();
  v10 = Text.foregroundColor(_:)();
  v38 = v11;
  v39 = v10;
  v37 = v12;

  sub_10010CD64(v5, v7, v9 & 1);

  String.subscript.getter();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  static Color.primary.getter();
  v18 = Text.foregroundColor(_:)();
  v20 = v19;
  v22 = v21;

  sub_10010CD64(v13, v15, v17 & 1);

  v23 = static Text.+ infix(_:_:)();
  v40 = v24;
  v41 = v23;
  v36 = v25;
  sub_10010CD64(v18, v20, v22 & 1);

  sub_10010CD64(v39, v38, v37 & 1);

  sub_100407AA4(a4, a1, a2);
  v26 = Text.init<A>(_:)();
  v28 = v27;
  LOBYTE(v13) = v29;
  static Color.secondary.getter();
  v30 = Text.foregroundColor(_:)();
  v32 = v31;
  v34 = v33;

  sub_10010CD64(v26, v28, v13 & 1);

  v44 = static Text.+ infix(_:_:)();
  sub_10010CD64(v30, v32, v34 & 1);

  sub_10010CD64(v41, v40, v36 & 1);

  return v44;
}

uint64_t sub_10033CA54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultRowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033CAB8()
{
  v1 = *(type metadata accessor for SearchResultRowView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_10033C4DC(v2);
}

unint64_t sub_10033CB20()
{
  result = qword_100CADE88;
  if (!qword_100CADE88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CADE80, &qword_100A3D5A8);
    v4[0] = sub_10033CBA4();
    v4[1] = v4[0];
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CADE88);
  }

  return result;
}

unint64_t sub_10033CBA4()
{
  result = qword_100CADE90;
  if (!qword_100CADE90)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CADE98, &unk_100A3D5B0);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_100006F64(&qword_100CADEA0, &qword_100CADEA8, &qword_100A490C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CADE90);
  }

  return result;
}

uint64_t sub_10033CC5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10033CCBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10033CD14()
{
  result = qword_100CADEC8;
  if (!qword_100CADEC8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Substring, &type metadata for Substring, v0, v1);
    atomic_store(result, &qword_100CADEC8);
  }

  return result;
}

unint64_t sub_10033CD68()
{
  result = qword_100CADED0;
  if (!qword_100CADED0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CADEC0, &qword_100A3D5F8);
    v4[0] = sub_10033CE24();
    v4[1] = sub_10033CFA0(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CADED0);
  }

  return result;
}

unint64_t sub_10033CE24()
{
  result = qword_100CADED8;
  if (!qword_100CADED8)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CADEE0, qword_100A3D658);
    v4[2] = sub_10022E824(&qword_100CADE70, &qword_100A3D598);
    v4[3] = type metadata accessor for SearchResultButtonStyle(255);
    v4[4] = sub_100006F64(&qword_100CADEB0, &qword_100CADE70, &qword_100A3D598, &protocol conformance descriptor for Button<A>);
    v4[5] = sub_10033CFA0(&qword_100CADEB8, type metadata accessor for SearchResultButtonStyle, asc_100AA47C0);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10033CFA0(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CADED8);
  }

  return result;
}

uint64_t sub_10033CFA0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_10033CFE8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C430F0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10033D034(char a1)
{
  result = 1768319351;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0x6163696669746F6ELL;
      break;
    case 4:
      result = 0x72656874616577;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0x436C6F72746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10033D13C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10033CFE8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10033D16C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10033D034(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10033D248@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CADEF0, &qword_100A3D708);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v3;
  a2[4] = sub_10033D630();
  v7 = sub_100042FB0(a2);
  return (*(v4 + 32))(v7, v6, v3);
}

uint64_t sub_10033D554(uint64_t a1)
{
  sub_10033D694();

  return ShortDescribable.description.getter();
}

uint64_t sub_10033D590@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1007862E0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10033D5DC()
{
  result = qword_100CADEE8;
  if (!qword_100CADEE8)
  {
    result = swift_getWitnessTable(asc_100A3D6B0, &type metadata for SystemSettingLocation, v0, v1);
    atomic_store(result, &qword_100CADEE8);
  }

  return result;
}

unint64_t sub_10033D630()
{
  result = qword_100CADEF8;
  if (!qword_100CADEF8)
  {
    v3 = sub_10022E824(&qword_100CADEF0, &qword_100A3D708);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CADEF8);
  }

  return result;
}

unint64_t sub_10033D694()
{
  result = qword_100CADF00;
  if (!qword_100CADF00)
  {
    result = swift_getWitnessTable(byte_100A3D6D8, &type metadata for SystemSettingLocation, v0, v1);
    atomic_store(result, &qword_100CADF00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemSettingLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SystemSettingLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10033D850()
{
  result = qword_100CADF08;
  if (!qword_100CADF08)
  {
    result = swift_getWitnessTable(aA_27, &type metadata for SystemSettingLocation, v0, v1);
    atomic_store(result, &qword_100CADF08);
  }

  return result;
}

unint64_t sub_10033D8A4()
{
  result = qword_100CADF10[0];
  if (!qword_100CADF10[0])
  {
    result = swift_getWitnessTable(byte_100A3D728, &type metadata for SystemSettingLocation, v0, v1);
    atomic_store(result, qword_100CADF10);
  }

  return result;
}

id sub_10033D8F8()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = *(v0 + 8);
  }

  else
  {
    v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
    *(v0 + 8) = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

uint64_t sub_10033D978@<X0>(uint64_t a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for LocationViewComponentContainerDescriptor(0, a2, a3, a4);
  v6 = sub_100588E2C(v5);
  if (v6)
  {
    sub_1001B3B30(v6 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, a1);

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for LocationComponentContainerViewModel(0);

  return sub_10001B350(a1, v7, 1, v8);
}

uint64_t sub_10033DA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v309 = a1;
  v310 = a5;
  v308 = a3;
  v271 = a6;
  v8 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v8 - 8);
  v254 = v251 - v9;
  v252 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v252);
  sub_100003848();
  v281 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v269 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100003878();
  v268 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_100003878();
  v278 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_100003878();
  v266 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_100003878();
  v275 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v263 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v261 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v273 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v258 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v272 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v255 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v251[0] = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v251 - v36;
  v38 = *(a4 - 8);
  __chkstk_darwin(v39);
  sub_100003848();
  v270 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v290 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v289 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v288 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  sub_100003878();
  v287 = v48;
  sub_10000386C();
  __chkstk_darwin(v49);
  sub_100003878();
  v286 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_100003878();
  v285 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_100003878();
  v284 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v283 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v282 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_100003878();
  v267 = v60;
  sub_10000386C();
  __chkstk_darwin(v61);
  sub_100003878();
  v280 = v62;
  sub_10000386C();
  __chkstk_darwin(v63);
  sub_100003878();
  v265 = v64;
  sub_10000386C();
  __chkstk_darwin(v65);
  sub_100003878();
  v305 = v66;
  sub_10000386C();
  __chkstk_darwin(v67);
  sub_100003878();
  v264 = v68;
  sub_10000386C();
  __chkstk_darwin(v69);
  sub_100003878();
  v304 = v70;
  sub_10000386C();
  __chkstk_darwin(v71);
  sub_100003878();
  v262 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v303 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v260 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v302 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v259 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v300 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v257 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v299 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v256 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v298 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v253 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v297 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v251[3] = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v296 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v251[2] = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v295 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v251[1] = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v294 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  v109 = v251 - v108;
  __chkstk_darwin(v110);
  v112 = v251 - v111;
  v301 = type metadata accessor for Optional();
  v274 = *(v301 - 8);
  __chkstk_darwin(v301);
  sub_100003848();
  v279 = v113;
  sub_10000386C();
  __chkstk_darwin(v114);
  sub_100003878();
  v293 = v115;
  sub_10000386C();
  __chkstk_darwin(v116);
  v118 = v251 - v117;
  __chkstk_darwin(v119);
  v292 = v251 - v120;
  v121 = a2;
  sub_100566A40(a2, v328);
  v306 = v118;
  v307 = v109;
  v291 = v112;
  if (v329)
  {
    v122 = 1;
  }

  else
  {
    v123 = v328[3];
    v124 = v328[2];
    v125 = v38;
    v126 = v328[1];
    v277 = v121;
    v127 = v328[0];
    sub_1001B3B30(v309 + OBJC_IVAR____TtCV7Weather18ElevatedAqiContent8_Storage_airQuality, v37);
    v128 = v123;
    v109 = v307;
    v308(v37, v127, v126, v124, v128);
    sub_1001B4354(v37);
    v129 = v310;
    sub_1000833D8(v109, a4, v310);
    v130 = *(v125 + 8);
    v130(v109, a4);
    v131 = sub_100005480();
    v132 = v129;
    v118 = v306;
    sub_1000833D8(v131, v133, v132);
    v134 = sub_100005480();
    (v130)(v134);
    v38 = v125;
    v121 = v277;
    (*(v125 + 32))(v118, v109, a4);
    v122 = 0;
  }

  sub_10001B350(v118, v122, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v135, v136);
  v276 = *(v274 + 8);
  v277 = v274 + 8;
  v276(v118, v301);
  v137 = OBJC_IVAR____TtCV7Weather18ElevatedAqiContent8_Storage_map;
  v138 = v309;
  swift_beginAccess();
  v139 = v138 + v137;
  v140 = v254;
  sub_10026E174(v139, v254);
  if (sub_100024D10(v140, 1, v252) == 1)
  {
    sub_10026E1E4(v140);
LABEL_8:
    v142 = 1;
    v143 = v306;
    goto LABEL_10;
  }

  v141 = v251[0];
  sub_10026E24C(v140, v251[0]);
  sub_100566A5C(v121, v330);
  if (v331)
  {
    sub_1001B4354(v141);
    goto LABEL_8;
  }

  v144 = sub_100028198();
  v145(v144);
  sub_1001B4354(v141);
  v146 = v310;
  sub_1000833D8(v109, a4, v310);
  v147 = *(v38 + 8);
  v147(v307, a4);
  v148 = sub_100005480();
  sub_1000833D8(v148, v149, v146);
  v150 = sub_100005480();
  (v147)(v150);
  v143 = v306;
  (*(v38 + 32))(v306, v307, a4);
  v142 = 0;
LABEL_10:
  sub_10001B350(v143, v142, 1, a4);
  sub_100007FFC();
  sub_1003E7FD4(v151, v152);
  v276(v143, v301);
  sub_10001420C();
  v154 = v255;
  sub_1001B3B30(v153 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v255);
  sub_100566A78(v121, v332);
  if (v333)
  {
    goto LABEL_28;
  }

  v308(v154, v332[0], v332[1], v332[2], v332[3]);
  sub_1001B4354(v154);
  v155 = sub_100005480();
  sub_1000833D8(v155, v156, v310);
  v157 = *(v38 + 8);
  v158 = sub_100005480();
  v157(v158);
  sub_10001420C();
  sub_1001B3B30(v159 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v272);
  sub_100566A94(v121, v334);
  if (v335)
  {
    goto LABEL_28;
  }

  v160 = v272;
  v308(v272, v334[0], v334[1], v334[2], v334[3]);
  sub_1001B4354(v160);
  v161 = sub_100005480();
  sub_1000833D8(v161, v162, v310);
  v163 = sub_100005480();
  v157(v163);
  sub_10001420C();
  v165 = v258;
  sub_1001B3B30(v164 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v258);
  sub_100566AB0(v121, v336);
  if (v337)
  {
    goto LABEL_31;
  }

  v166 = sub_10001926C();
  v167(v166);
  sub_1001B4354(v165);
  v168 = sub_100005480();
  sub_1000833D8(v168, v169, v310);
  v170 = sub_100005480();
  v157(v170);
  sub_10001420C();
  sub_1001B3B30(v171 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v273);
  sub_100566ACC(v121, v338);
  if (v339)
  {
    goto LABEL_28;
  }

  v172 = v273;
  v308(v273, v338[0], v338[1], v338[2], v338[3]);
  sub_1001B4354(v172);
  v173 = sub_100005480();
  sub_1000833D8(v173, v174, v310);
  v175 = sub_100005480();
  v157(v175);
  sub_10001420C();
  v177 = v261;
  sub_1001B3B30(v176 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v261);
  sub_100566AE8(v121, v340);
  if (v341)
  {
    goto LABEL_31;
  }

  v178 = sub_10001926C();
  v179(v178);
  sub_1001B4354(v177);
  v180 = sub_100005480();
  sub_1000833D8(v180, v181, v310);
  v182 = sub_100005480();
  v157(v182);
  sub_10001420C();
  v184 = v263;
  sub_1001B3B30(v183 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v263);
  sub_100566B04(v121, v342);
  if (v343)
  {
    goto LABEL_28;
  }

  v185 = sub_100028198();
  v186(v185);
  sub_1001B4354(v184);
  sub_100007FFC();
  sub_1000833D8(v187, v188, v189);
  v190 = sub_100005474();
  v157(v190);
  sub_10001420C();
  sub_1001B3B30(v191 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v275);
  sub_100566B20(v121, v344);
  if (v345)
  {
    goto LABEL_28;
  }

  v192 = v275;
  v193 = sub_100028198();
  v194(v193);
  sub_1001B4354(v192);
  sub_100007FFC();
  sub_1000833D8(v195, v196, v197);
  v198 = sub_100005474();
  v157(v198);
  sub_10001420C();
  v200 = v266;
  sub_1001B3B30(v199 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v266);
  sub_100566B3C(v121, v346);
  if (v347)
  {
LABEL_31:
    sub_100013470();
    goto LABEL_32;
  }

  v201 = sub_10001926C();
  v202(v201);
  sub_1001B4354(v200);
  v203 = sub_100005480();
  sub_1000833D8(v203, v204, v310);
  v205 = sub_100005480();
  v157(v205);
  sub_10001420C();
  sub_1001B3B30(v206 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v278);
  sub_100566B58(v121, v348);
  if ((v349 & 1) == 0)
  {
    v207 = v278;
    v308(v278, v348[0], v348[1], v348[2], v348[3]);
    sub_1001B4354(v207);
    v208 = sub_100005480();
    sub_1000833D8(v208, v209, v310);
    v210 = sub_100005480();
    v157(v210);
    sub_10001420C();
    v212 = v268;
    sub_1001B3B30(v211 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v268);
    sub_100566B74(v121, &v350);
    if ((v351 & 1) == 0)
    {
      v213 = sub_10001926C();
      v214(v213);
      sub_1001B4354(v212);
      v215 = sub_100005480();
      sub_1000833D8(v215, v216, v310);
      v217 = sub_100005480();
      v157(v217);
      sub_10001420C();
      v219 = v269;
      sub_1001B3B30(v218 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v269);
      sub_100566B90(v121, &v352);
      if ((v353 & 1) == 0)
      {
        v220 = sub_100028198();
        v221(v220);
        sub_1001B4354(v219);
        sub_100007FFC();
        sub_1000833D8(v222, v223, v224);
        v225 = sub_100005474();
        v157(v225);
        sub_10001420C();
        sub_1001B3B30(v226 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v281);
        sub_100566BAC(v121, v354);
        if ((v355 & 1) == 0)
        {
          v227 = v267;
          v228 = v281;
          v308(v281, v354[0], v354[1], v354[2], v354[3]);
          sub_1001B4354(v228);
          v229 = v310;
          sub_1000833D8(v227, a4, v310);
          (v157)(v227, a4);
          v230 = *(v274 + 16);
          v231 = v306;
          v232 = v301;
          v230(v306, v292, v301);
          v327[0] = v231;
          v233 = v279;
          v230(v279, v293, v232);
          v327[1] = v233;
          v234 = *(v38 + 16);
          v235 = v291;
          v234(v291, v294, a4);
          v327[2] = v235;
          v236 = v307;
          v234(v307, v295, a4);
          v327[3] = v236;
          v237 = v282;
          v234(v282, v296, a4);
          v327[4] = v237;
          v238 = v283;
          v234(v283, v297, a4);
          v327[5] = v238;
          v239 = v284;
          v234(v284, v298, a4);
          v327[6] = v239;
          v240 = v285;
          v234(v285, v299, a4);
          v327[7] = v240;
          v241 = v286;
          v234(v286, v300, a4);
          v327[8] = v241;
          v242 = v287;
          v234(v287, v302, a4);
          v327[9] = v242;
          v243 = v288;
          v234(v288, v303, a4);
          v327[10] = v243;
          v244 = v289;
          v234(v289, v304, a4);
          v327[11] = v244;
          v245 = v290;
          v234(v290, v305, a4);
          v327[12] = v245;
          v246 = v270;
          v234(v270, v280, a4);
          v327[13] = v246;
          v247 = v246;
          v326[0] = v232;
          v326[1] = v232;
          v326[2] = a4;
          v326[3] = a4;
          v326[4] = a4;
          v326[5] = a4;
          v326[6] = a4;
          v326[7] = a4;
          v326[8] = a4;
          v326[9] = a4;
          v326[10] = a4;
          v326[11] = a4;
          v326[12] = a4;
          v326[13] = a4;
          v311 = v229;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v232, &v311);
          v313 = WitnessTable;
          v314 = v229;
          v315 = v229;
          v316 = v229;
          v317 = v229;
          v318 = v229;
          v319 = v229;
          v320 = v229;
          v321 = v229;
          v322 = v229;
          v323 = v229;
          v324 = v229;
          v325 = v229;
          sub_10012E24C(v327, 14, v326);
          v248 = sub_100005474();
          v157(v248);
          (v157)(v305, a4);
          (v157)(v304, a4);
          (v157)(v303, a4);
          (v157)(v302, a4);
          (v157)(v300, a4);
          (v157)(v299, a4);
          (v157)(v298, a4);
          (v157)(v297, a4);
          (v157)(v296, a4);
          (v157)(v295, a4);
          (v157)(v294, a4);
          v249 = v276;
          v276(v293, v232);
          v249(v292, v232);
          (v157)(v247, a4);
          (v157)(v290, a4);
          (v157)(v289, a4);
          (v157)(v288, a4);
          (v157)(v287, a4);
          (v157)(v286, a4);
          (v157)(v285, a4);
          (v157)(v284, a4);
          (v157)(v283, a4);
          (v157)(v282, a4);
          (v157)(v307, a4);
          (v157)(v291, a4);
          v249(v279, v232);
          return (v249)(v306, v232);
        }
      }
    }

    goto LABEL_31;
  }

LABEL_28:
  sub_10001E640();
LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10033F05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10033F108(uint64_t a1)
{
  v3 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(v5, a1, v8);
  type metadata accessor for ConditionDetailViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10004F034(v5, v10, v7, v6);
  sub_1000E17D8(v10);
  return sub_1000547B8(v5);
}

uint64_t SidebarVisibilityMonitor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_10033F290(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  v10 = v9;
  v65 = a6;
  v66 = a8;
  v68 = a5;
  v63 = a3;
  v59 = a1;
  v15 = type metadata accessor for SavedLocation();
  v67 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  sub_1000037D8();
  v69 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v17 = v16;
  __chkstk_darwin(v18);
  v57 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v55 - v21;
  v58 = type metadata accessor for LocationsState(0) - 8;
  __chkstk_darwin(v58);
  sub_1000037D8();
  v24 = v23 - v22;
  *(v10 + 184) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v63;
  *(v10 + 40) = a4;
  v25 = v65;
  *(v10 + 48) = v68;
  *(v10 + 56) = v25;
  sub_100035B30(a7, v10 + 64);
  sub_100035B30(v66, v10 + 104);
  v61 = a9;
  sub_100035B30(a9, v10 + 144);
  v26 = a7[3];
  v68 = a7[4];
  v63 = sub_1000161C0(a7, v26);
  sub_1000672DC(&qword_100CAE110, v27, type metadata accessor for SavedLocationsMonitor, protocol conformance descriptor for SavedLocationsMonitor);

  v62 = a4;

  dispatch thunk of SavedLocationsManagerType.addObserver(_:)();
  v63 = v10;

  v60 = a2;
  v59(&v70, v28);
  sub_10033FEE4(v70 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v24, type metadata accessor for LocationsState);

  v29 = *(v24 + *(v58 + 28));

  sub_10033FF44(v24, type metadata accessor for LocationsState);
  v30 = *(v29 + 16);
  v64 = a7;
  if (v30)
  {
    sub_100019430();
    v31 = v70;
    sub_100011468();
    v59 = v29;
    v33 = v29 + v32;
    v68 = *(v34 + 72);
    v35 = v56;
    do
    {
      sub_1000057EC();
      SavedLocation.identifier.getter();
      sub_1000081BC();
      v70 = v31;
      v36 = *(v31 + 16);
      if (v36 >= *(v31 + 24) >> 1)
      {
        sub_10003DC90();
        v31 = v70;
      }

      *(v31 + 16) = v36 + 1;
      sub_100011468();
      (*(v17 + 32))(v31 + v37 + *(v17 + 72) * v36, v35, v69);
      v33 += v68;
      --v30;
    }

    while (v30);

    a7 = v64;
  }

  else
  {
  }

  v38 = sub_100003ED0(a7);
  v39 = *(v38 + 16);
  v40 = v67;
  if (v39)
  {
    sub_100019430();
    v41 = v70;
    sub_100011468();
    v59 = v38;
    v43 = v38 + v42;
    v44 = *(v40 + 72);
    v67 = v17 + 32;
    v68 = v44;
    v45 = v57;
    do
    {
      sub_1000057EC();
      SavedLocation.identifier.getter();
      sub_1000081BC();
      v70 = v41;
      v46 = *(v41 + 16);
      if (v46 >= *(v41 + 24) >> 1)
      {
        sub_10003DC90();
        v41 = v70;
      }

      *(v41 + 16) = v46 + 1;
      sub_100011468();
      (*(v17 + 32))(v41 + v47 + *(v17 + 72) * v46, v45, v69);
      v43 += v68;
      --v39;
    }

    while (v39);

    a7 = v64;
  }

  else
  {
  }

  sub_1000B9770();
  v49 = v48;

  if (v49)
  {

    v50 = v63;
  }

  else
  {
    v51 = sub_100003ED0(a7);
    v50 = v63;
    sub_1000D7EE0(v51);
  }

  v52 = v66;
  v53 = v61;

  sub_100006F14(v53);
  sub_100006F14(v52);
  sub_100006F14(a7);
  return v50;
}

void *SavedLocationsMonitor.deinit()
{

  sub_100006F14(v0 + 8);
  sub_100006F14(v0 + 13);
  sub_100006F14(v0 + 18);
  return v0;
}

uint64_t SavedLocationsMonitor.__deallocating_deinit()
{
  SavedLocationsMonitor.deinit();

  return swift_deallocClassInstance();
}