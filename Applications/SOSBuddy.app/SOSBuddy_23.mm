uint64_t sub_100210BB0()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_100210BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100210C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003681F0;
  if (!qword_1003681F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003681F0);
  }

  return result;
}

unint64_t sub_100210CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003681F8;
  if (!qword_1003681F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003681F8);
  }

  return result;
}

unint64_t sub_100210D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368200;
  if (!qword_100368200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368200);
  }

  return result;
}

unint64_t sub_100210D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368208;
  if (!qword_100368208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368208);
  }

  return result;
}

unint64_t sub_100210DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368210;
  if (!qword_100368210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368210);
  }

  return result;
}

unint64_t sub_100210E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368218;
  if (!qword_100368218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368218);
  }

  return result;
}

uint64_t sub_100210ED0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100210F70(__int16 a1)
{
  if ((a1 & 0xFF00) == 0x200)
  {
    v2 = 0;
    goto LABEL_3;
  }

  if (a1 > 5u)
  {
    v2 = 0;
    if (a1 - 7 >= 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (a1 - 1 >= 5)
    {
      [objc_opt_self() greenColor];
      v2 = 1;
      goto LABEL_16;
    }

    v2 = 1;
  }

  if (((1 << a1) & 0x1C) != 0)
  {
    v4 = [objc_opt_self() whiteColor];
    goto LABEL_13;
  }

  if (((1 << a1) & 0x22) != 0)
  {
    v4 = [objc_opt_self() systemOrangeColor];
LABEL_13:
    v4;
    goto LABEL_16;
  }

LABEL_3:
  v3 = a1 & 0xFF00;
  [objc_opt_self() clearColor];
  if (v3 == 512)
  {
LABEL_18:
    if (qword_100353968 == -1)
    {
      return v2;
    }

    goto LABEL_27;
  }

LABEL_16:
  if (a1 <= 8u)
  {
    if (((1 << a1) & 0x5C) != 0)
    {
      goto LABEL_18;
    }

    if (((1 << a1) & 0x22) != 0)
    {
LABEL_23:
      if (qword_100353960 == -1)
      {
        return v2;
      }

      goto LABEL_27;
    }

    if (((1 << a1) & 0x180) != 0)
    {
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }
  }

  if (qword_100353958 != -1)
  {
LABEL_27:
    swift_once();
  }

  return v2;
}

double static ConnectionAssistantDisplayState.Metrics.fullScreen.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xC046800000000000;
  *(a1 + 16) = 0xC04C000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_100290320;
  *(a1 + 48) = 0xC04C000000000000;
  *(a1 + 56) = 0xC050000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FE3333333333333;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0x3FE4CCCCCCCCCCCDLL;
  *(a1 + 96) = 1;
  result = 26.0;
  *(a1 + 104) = xmmword_100290330;
  return result;
}

double sub_100211268@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for UIMetrics();
  sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v9 = EnvironmentObject.init()();
  v11 = v10;
  State.init(wrappedValue:)();
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  type metadata accessor for CGRect(0);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  result = *&v16;
  *a6 = v9;
  *(a6 + 8) = v11;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  *(a6 + 56) = v16;
  *(a6 + 64) = *(&v16 + 1);
  *(a6 + 72) = v16;
  *(a6 + 88) = v17;
  *(a6 + 96) = v16;
  *(a6 + 112) = v17;
  *(a6 + 128) = v18;
  *(a6 + 152) = v17;
  *(a6 + 136) = v16;
  *(a6 + 168) = v18;
  *(a6 + 176) = v16;
  return result;
}

uint64_t sub_100211420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v46 = a1;
  *&v41 = *(a1 + 16);
  *&v42 = *(a1 + 32);
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368310, &qword_100290E68);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368318, &qword_100290E70);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v44 = &protocol conformance descriptor for _BackgroundModifier<A>;
  v54[32] = swift_getWitnessTable();
  v54[33] = sub_100009274(&qword_100368320, &qword_100368310, &qword_100290E68, &protocol conformance descriptor for _BackgroundModifier<A>);
  v43 = &protocol conformance descriptor for _PreferenceActionModifier<A>;
  v54[30] = swift_getWitnessTable();
  v54[31] = sub_100009274(&qword_100368328, &qword_100368318, &qword_100290E70, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v54[28] = swift_getWitnessTable();
  v54[29] = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v4 = type metadata accessor for ScrollView();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v54[0] = v4;
  v54[1] = WitnessTable;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368330, &unk_100290E78);
  v39 = *(v46 + 24);
  sub_100008CF0(&qword_10035B068, &qword_100284EA0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v38 = *(v46 + 40);
  v54[26] = v38;
  v54[27] = sub_100009274(&qword_10035B070, &qword_10035B068, &qword_100284EA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v40 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v54[24] = swift_getWitnessTable();
  v54[25] = sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368338, &qword_100290E88);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368340, &qword_100290E90);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for ZStack();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v36 - v7;
  sub_100008CF0(&qword_100368348, &qword_100290E98);
  v36[1] = type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368350, &unk_100290EA0);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v36 - v14;
  *&v16 = v41;
  *(&v16 + 1) = v39;
  *&v17 = v42;
  *(&v17 + 1) = v38;
  v41 = v16;
  v42 = v17;
  v47 = v16;
  v48 = v17;
  v49 = v3;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  v18 = swift_allocObject();
  v19 = v42;
  v18[1] = v41;
  v18[2] = v19;
  v20 = v3[9];
  v18[11] = v3[8];
  v18[12] = v20;
  v21 = v3[11];
  v18[13] = v3[10];
  v18[14] = v21;
  v22 = v3[5];
  v18[7] = v3[4];
  v18[8] = v22;
  v23 = v3[7];
  v18[9] = v3[6];
  v18[10] = v23;
  v24 = v3[1];
  v18[3] = *v3;
  v18[4] = v24;
  v25 = v3[3];
  v26 = v46;
  v18[5] = v3[2];
  v18[6] = v25;
  (*(*(v26 - 8) + 16))(v54, v3);
  v27 = swift_getWitnessTable();
  v30 = sub_100214580(v27, v28, v29);
  sub_100034C64(sub_100214570, v18, v6, &type metadata for ViewContentSizeKey, v27, v30, v12);

  (*(v37 + 8))(v8, v6);
  v31 = sub_100009274(&qword_100368360, &qword_100368348, &qword_100290E98, v44);
  v52 = v27;
  v53 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_100009274(&qword_100368368, &qword_100368350, &unk_100290EA0, v43);
  v50 = v32;
  v51 = v33;
  swift_getWitnessTable();
  sub_10009A58C();
  v34 = *(v10 + 8);
  v34(v12, v9);
  sub_10009A58C();
  return (v34)(v15, v9);
}

uint64_t sub_100211BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a5;
  v57 = a3;
  v58 = a4;
  v56 = a2;
  v47 = a1;
  v54 = a6;
  sub_100008CF0(&qword_10035B068, &qword_100284EA0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v91 = a5;
  v92 = sub_100009274(&qword_10035B070, &qword_10035B068, &qword_100284EA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  WitnessTable = swift_getWitnessTable();
  v90 = sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368338, &qword_100290E88);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368340, &qword_100290E90);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for TupleView();
  v48 = swift_getWitnessTable();
  v49 = v7;
  v53 = type metadata accessor for VStack();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v41 - v10;
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368310, &qword_100290E68);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368318, &qword_100290E70);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v55 = &protocol conformance descriptor for VStack<A>;
  v11 = swift_getWitnessTable();
  v12 = v41;
  v13 = sub_100009274(&qword_100368320, &qword_100368310, &qword_100290E68, &protocol conformance descriptor for _BackgroundModifier<A>);
  v87 = v11;
  v88 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_100009274(&qword_100368328, &qword_100368318, &qword_100290E70, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v85 = v14;
  v86 = v15;
  v83 = swift_getWitnessTable();
  v84 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v16 = type metadata accessor for ScrollView();
  v17 = swift_getWitnessTable();
  *&v93 = v16;
  *(&v93 + 1) = v17;
  swift_getOpaqueTypeMetadata2();
  *&v93 = v16;
  *(&v93 + 1) = v17;
  swift_getOpaqueTypeConformance2();
  v18 = type metadata accessor for VStack();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  v59 = v56;
  v60 = v57;
  v61 = v58;
  v62 = v12;
  v25 = v47;
  v63 = v47;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v26 = swift_getWitnessTable();
  v55 = v24;
  v43 = v26;
  sub_10009A58C();
  v42 = v19;
  v27 = *(v19 + 8);
  v45 = v19 + 8;
  v46 = v18;
  v44 = v27;
  v27(v21, v18);
  v28 = v25;
  v93 = *(v25 + 56);
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.wrappedValue.getter();
  if (v80 == 1)
  {
    v29 = static HorizontalAlignment.center.getter();
    LOBYTE(v93) = 0;
    sub_100213334(v28, v56, v57, v58, v12, &v65);
    *(&v64[4] + 7) = v69;
    *(&v64[3] + 7) = v68;
    *(&v64[7] + 7) = v72;
    *(&v64[8] + 7) = v73;
    *(&v64[9] + 7) = v74;
    *(&v64[10] + 7) = v75;
    *(&v64[5] + 7) = v70;
    *(&v64[6] + 7) = v71;
    *(v64 + 7) = v65;
    *(&v64[1] + 7) = v66;
    *(&v64[2] + 7) = v67;
    *(&v81[7] + 1) = v64[7];
    *(&v81[8] + 1) = v64[8];
    *(&v81[9] + 1) = v64[9];
    v81[10] = *(&v64[9] + 15);
    *(&v81[3] + 1) = v64[3];
    *(&v81[4] + 1) = v64[4];
    *(&v81[5] + 1) = v64[5];
    *(&v81[6] + 1) = v64[6];
    *(v81 + 1) = v64[0];
    *(&v81[1] + 1) = v64[1];
    v80 = v29;
    LOBYTE(v81[0]) = v93;
    *(&v81[2] + 1) = v64[2];
    v30 = sub_1002146DC(&v80);
    v103 = v81[9];
    v104 = v81[10];
    v105 = v82;
    v99 = v81[5];
    v100 = v81[6];
    v101 = v81[7];
    v102 = v81[8];
    v95 = v81[1];
    v96 = v81[2];
    v97 = v81[3];
    v98 = v81[4];
    v93 = v80;
    v94 = v81[0];
  }

  else
  {
    sub_1002145EC(&v93);
  }

  __chkstk_darwin(v30);
  v31 = v57;
  *(&v41 - 6) = v56;
  *(&v41 - 5) = v31;
  *(&v41 - 4) = v58;
  *(&v41 - 3) = v12;
  *(&v41 - 2) = v28;
  static HorizontalAlignment.center.getter();
  v32 = v52;
  VStack.init(alignment:spacing:content:)();
  v33 = v53;
  v34 = swift_getWitnessTable();
  v35 = v51;
  sub_10009A58C();
  v36 = v50;
  v37 = *(v50 + 8);
  v37(v32, v33);
  v38 = v46;
  (*(v42 + 16))(v21, v55, v46);
  v81[9] = v103;
  v81[10] = v104;
  v82 = v105;
  v81[5] = v99;
  v81[6] = v100;
  v81[7] = v101;
  v81[8] = v102;
  v81[1] = v95;
  v81[2] = v96;
  v81[3] = v97;
  v81[4] = v98;
  v80 = v93;
  v81[0] = v94;
  *&v65 = v21;
  *(&v65 + 1) = &v80;
  (*(v36 + 16))(v32, v35, v33);
  *&v66 = v32;
  v79[0] = v38;
  v79[1] = sub_1000040A8(&qword_100368330, &unk_100290E78);
  v79[2] = v33;
  v76 = v43;
  v77 = sub_10021462C();
  v78 = v34;
  sub_1000970F0(&v65, 3uLL, v79);
  v37(v35, v33);
  v39 = v44;
  v44(v55, v38);
  v37(v32, v33);
  return v39(v21, v38);
}

uint64_t sub_100212528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v32 = a4;
  v33 = a3;
  v34 = a1;
  v36 = a6;
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368310, &qword_100290E68);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368318, &qword_100290E70);
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v51 = sub_100009274(&qword_100368320, &qword_100368310, &qword_100290E68, &protocol conformance descriptor for _BackgroundModifier<A>);
  v48 = swift_getWitnessTable();
  v49 = sub_100009274(&qword_100368328, &qword_100368318, &qword_100290E70, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v46 = swift_getWitnessTable();
  v47 = &protocol witness table for _PaddingLayout;
  v28 = v7;
  v27 = swift_getWitnessTable();
  v8 = type metadata accessor for ScrollView();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v26 = swift_getWitnessTable();
  v42 = v8;
  v43 = v26;
  v29 = &opaque type descriptor for <<opaque return type of View.scrollDisabled(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = a2;
  v37 = a2;
  v18 = v33;
  v19 = v32;
  v38 = v33;
  v39 = v32;
  v20 = v35;
  v40 = v35;
  v41 = v34;
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  v21 = type metadata accessor for ScrollableContentWithFloatingPanelView(0, &v42);
  sub_1002131E0(v21);
  v22 = v26;
  View.scrollDisabled(_:)();
  (*(v31 + 8))(v10, v8);
  v42 = v8;
  v43 = v22;
  swift_getOpaqueTypeConformance2();
  sub_10009A58C();
  v23 = *(v30 + 8);
  v23(v13, OpaqueTypeMetadata2);
  sub_10009A58C();
  return (v23)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_10021297C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v54 = a6;
  v10 = type metadata accessor for VStack();
  v48 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = &v45 - v11;
  sub_100008CF0(&qword_100368310, &qword_100290E68);
  v12 = type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368318, &qword_100290E70);
  v49 = v12;
  v13 = type metadata accessor for ModifiedContent();
  v52 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  v47 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v53 = *(v17 - 8);
  __chkstk_darwin(v17);
  v50 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v51 = &v45 - v20;
  v55 = a2;
  v56 = a3;
  v21 = v46;
  v57 = a4;
  v58 = v46;
  v59 = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 40) = v21;
  v23 = a1[9];
  *(v22 + 176) = a1[8];
  *(v22 + 192) = v23;
  v24 = a1[11];
  *(v22 + 208) = a1[10];
  *(v22 + 224) = v24;
  v25 = a1[5];
  *(v22 + 112) = a1[4];
  *(v22 + 128) = v25;
  v26 = a1[7];
  *(v22 + 144) = a1[6];
  *(v22 + 160) = v26;
  v27 = a1[1];
  *(v22 + 48) = *a1;
  *(v22 + 64) = v27;
  v28 = a1[3];
  *(v22 + 80) = a1[2];
  *(v22 + 96) = v28;
  v66[0] = a2;
  v66[1] = a3;
  v29 = v15;
  v66[2] = a4;
  v66[3] = v21;
  v30 = type metadata accessor for ScrollableContentWithFloatingPanelView(0, v66);
  (*(*(v30 - 8) + 16))(v66, a1, v30);
  WitnessTable = swift_getWitnessTable();
  v34 = sub_100214858(WitnessTable, v32, v33);
  v35 = v45;
  sub_100034824(sub_100214828, v22, v10, &type metadata for ScrollContentFrame, WitnessTable, v34, v29);

  (*(v48 + 8))(v35, v10);
  static Edge.Set.bottom.getter();
  if (sub_1002131E0(v30))
  {
    sub_10021329C();
  }

  v36 = sub_100009274(&qword_100368320, &qword_100368310, &qword_100290E68, &protocol conformance descriptor for _BackgroundModifier<A>);
  v64 = WitnessTable;
  v65 = v36;
  v37 = swift_getWitnessTable();
  v38 = sub_100009274(&qword_100368328, &qword_100368318, &qword_100290E70, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v62 = v37;
  v63 = v38;
  v39 = v47;
  v40 = swift_getWitnessTable();
  v41 = v50;
  View.padding(_:_:)();
  (*(v52 + 8))(v29, v39);
  v60 = v40;
  v61 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v42 = v51;
  sub_10009A58C();
  v43 = *(v53 + 8);
  v43(v41, v17);
  sub_10009A58C();
  return (v43)(v42, v17);
}

uint64_t sub_100212EB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v13 - v8;
  (*(v10 + 16))(v7);
  sub_10009A58C();
  v11 = *(v3 + 8);
  v11(v5, a2);
  sub_10009A58C();
  return (v11)(v9, a2);
}

uint64_t sub_100212FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v13 = *(a1 + 112);
  v16 = *(a1 + 96);
  v17 = v13;
  v18 = *(a1 + 128);
  sub_1000040A8(&qword_100368370, &qword_100290EB8);
  State.wrappedValue.setter();
  *&v16 = a2;
  *(&v16 + 1) = a3;
  *&v17 = a4;
  *(&v17 + 1) = a5;
  v14 = type metadata accessor for ScrollableContentWithFloatingPanelView(0, &v16);
  return sub_10021308C(v14);
}

uint64_t sub_10021308C(uint64_t a1)
{
  sub_1000040A8(&qword_100356630, &qword_100290EB0);
  inited = swift_initStackObject();
  inited[1] = xmmword_100279170;
  sub_1000040A8(&qword_100368370, &qword_100290EB8);
  State.wrappedValue.getter();
  inited[2] = v3;
  inited[3] = v4;
  State.wrappedValue.getter();
  inited[4] = v3;
  inited[5] = v4;
  sub_10021EECC(inited);
  swift_setDeallocating();
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.wrappedValue.setter();
  sub_100214114();
  sub_1000040A8(&qword_100359C08, &qword_10027DE30);
  return State.wrappedValue.setter();
}

BOOL sub_1002131E0(uint64_t a1)
{
  sub_1000040A8(&qword_100368370, &qword_100290EB8);
  State.wrappedValue.getter();
  v1 = v4 + sub_10021329C();
  sub_1000040A8(&qword_100359F88, &unk_10027E5E0);
  State.wrappedValue.getter();
  return v3 < v1;
}

double sub_10021329C()
{
  sub_1000040A8(&qword_100368370, &qword_100290EB8);
  State.wrappedValue.getter();
  sub_1000040A8(&qword_100359C08, &qword_10027DE30);
  State.wrappedValue.getter();
  return v2 + v1;
}

uint64_t sub_100213334@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v14 = a2;
  *(&v14 + 1) = a3;
  *&v15 = a4;
  *(&v15 + 1) = a5;
  type metadata accessor for ScrollableContentWithFloatingPanelView(0, &v14);
  sub_10021329C();
  if (*a1)
  {
    v8 = qword_100353988;

    if (v8 != -1)
    {
      swift_once();
    }

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v9 = qword_100381C20;

    v11 = v16;
    *(a6 + 88) = v17;
    v12 = v19;
    *(a6 + 104) = v18;
    *(a6 + 120) = v12;
    *(a6 + 136) = v20;
    v13 = v15;
    *(a6 + 40) = v14;
    *(a6 + 56) = v13;
    *a6 = 0;
    *(a6 + 8) = 1;
    *(a6 + 16) = 0;
    *(a6 + 24) = 6;
    *(a6 + 32) = 0x3FF0000000000000;
    *(a6 + 72) = v11;
    *(a6 + 152) = 0;
    *(a6 + 160) = v9;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100213538@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v48 = a4;
  v56 = a6;
  sub_100008CF0(&qword_10035B068, &qword_100284EA0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  v10 = type metadata accessor for ModifiedContent();
  v78 = a5;
  v79 = sub_100009274(&qword_10035B070, &qword_10035B068, &qword_100284EA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v55 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v77 = sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v45[2] = v10;
  v45[1] = swift_getWitnessTable();
  v11 = type metadata accessor for VStack();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v45[0] = v45 - v12;
  sub_100008CF0(&qword_100368338, &qword_100290E88);
  v51 = type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368340, &qword_100290E90);
  v49 = type metadata accessor for ModifiedContent();
  v53 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = v45 - v13;
  v14 = type metadata accessor for ModifiedContent();
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v52 = v45 - v18;
  v57 = a2;
  v58 = a3;
  v19 = v48;
  v20 = v46;
  v59 = v48;
  v60 = v46;
  v61 = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  v22 = a1[9];
  *(v21 + 176) = a1[8];
  *(v21 + 192) = v22;
  v23 = a1[11];
  *(v21 + 208) = a1[10];
  *(v21 + 224) = v23;
  v24 = a1[5];
  *(v21 + 112) = a1[4];
  *(v21 + 128) = v24;
  v25 = a1[7];
  *(v21 + 144) = a1[6];
  *(v21 + 160) = v25;
  v26 = a1[1];
  *(v21 + 48) = *a1;
  *(v21 + 64) = v26;
  v27 = a1[3];
  *(v21 + 80) = a1[2];
  *(v21 + 96) = v27;
  *&v73 = a2;
  *(&v73 + 1) = a3;
  v74 = v19;
  v75 = v20;
  v28 = type metadata accessor for ScrollableContentWithFloatingPanelView(0, &v73);
  (*(*(v28 - 8) + 16))(&v73, a1, v28);
  v29 = swift_getWitnessTable();
  v32 = sub_100214714(v29, v30, v31);
  v33 = v47;
  v34 = v45[0];
  sub_100034824(sub_1002146FC, v21, v11, &type metadata for FloatingPanelFrame, v29, v32, v47);

  (*(v50 + 8))(v34, v11);
  static Edge.Set.bottom.getter();
  v73 = a1[11];
  sub_1000040A8(&qword_100359C08, &qword_10027DE30);
  State.wrappedValue.getter();
  v35 = sub_100009274(&qword_100368398, &qword_100368338, &qword_100290E88, &protocol conformance descriptor for _BackgroundModifier<A>);
  v71 = v29;
  v72 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_100009274(&qword_1003683A0, &qword_100368340, &qword_100290E90, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v69 = v36;
  v70 = v37;
  v38 = v49;
  v39 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v53 + 8))(v33, v38);
  v67 = v39;
  v68 = &protocol witness table for _PaddingLayout;
  v40 = swift_getWitnessTable();
  v41 = v52;
  sub_10009A58C();
  v42 = v54;
  v43 = *(v54 + 8);
  v43(v16, v14);
  v65 = 0;
  v66 = 1;
  *&v73 = &v65;
  (*(v42 + 16))(v16, v41, v14);
  *(&v73 + 1) = v16;
  v64[0] = &type metadata for Spacer;
  v64[1] = v14;
  v62 = &protocol witness table for Spacer;
  v63 = v40;
  sub_1000970F0(&v73, 2uLL, v64);
  v43(v41, v14);
  return (v43)(v16, v14);
}

uint64_t sub_100213BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v26 = a3;
  v29 = a4;
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008CF0(&qword_10035B068, &qword_100284EA0);
  v9 = type metadata accessor for ModifiedContent();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  type metadata accessor for AccessibilityAttachmentModifier();
  v12 = type metadata accessor for ModifiedContent();
  v28 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v25 - v17;
  (*(a1 + 32))(v16);
  v35 = *(a1 + 56);
  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.wrappedValue.getter();
  v19 = v26;
  sub_100213F60(v34, a2, v26);
  (*(v6 + 8))(v8, a2);
  v20 = sub_100009274(&qword_10035B070, &qword_10035B068, &qword_100284EA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v32 = v19;
  v33 = v20;
  WitnessTable = swift_getWitnessTable();
  View.accessibilitySortPriority(_:)();
  (*(v27 + 8))(v11, v9);
  v22 = sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v30 = WitnessTable;
  v31 = v22;
  swift_getWitnessTable();
  sub_10009A58C();
  v23 = *(v28 + 8);
  v23(v14, v12);
  sub_10009A58C();
  return (v23)(v18, v12);
}

uint64_t sub_100213F60(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t sub_100213FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v13 = *(a1 + 152);
  v16 = *(a1 + 136);
  v17 = v13;
  v18 = *(a1 + 168);
  sub_1000040A8(&qword_100368370, &qword_100290EB8);
  State.wrappedValue.setter();
  *&v16 = a2;
  *(&v16 + 1) = a3;
  *&v17 = a4;
  *(&v17 + 1) = a5;
  v14 = type metadata accessor for ScrollableContentWithFloatingPanelView(0, &v16);
  return sub_10021308C(v14);
}

uint64_t sub_100214078(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v13[4] = a1;
  *&v13[5] = a2;
  sub_1000040A8(&qword_100359F88, &unk_10027E5E0);
  State.wrappedValue.setter();
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v11 = type metadata accessor for ScrollableContentWithFloatingPanelView(0, v13);
  return sub_10021308C(v11);
}

void sub_100214114()
{
  if (*(v0 + 48))
  {
    sub_1000040A8(&qword_100359F88, &unk_10027E5E0);
    State.wrappedValue.getter();
    sub_1000040A8(&qword_100368370, &qword_100290EB8);
    State.wrappedValue.getter();
    State.wrappedValue.getter();
    v1 = *v0;
    if (*v0)
    {
      v2 = v1[9];
      v3 = v1[10];
      sub_1000088DC(v1 + 6, v2);
      (*(v3 + 104))(v2, v3);
    }

    else
    {
      type metadata accessor for UIMetrics();
      sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

void *sub_100214320(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  v4 = v6;
  if (v5 != 0.0 || v6 != 0.0)
  {
    *a1 = v5;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_100214374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001DCB90(a1, a2, a3);
  EnvironmentValues.subscript.getter();
  return v4;
}

uint64_t sub_1002143C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1002143FC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_100214430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100214478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100214580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368358;
  if (!qword_100368358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368358);
  }

  return result;
}

double sub_1002145EC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = 1;
  return result;
}

unint64_t sub_10021462C()
{
  result = qword_100368378;
  if (!qword_100368378)
  {
    sub_100008CF0(&qword_100368330, &unk_100290E78);
    sub_100009274(&qword_100368380, &qword_100368388, &qword_100290EC0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368378);
  }

  return result;
}

unint64_t sub_100214714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368390;
  if (!qword_100368390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368390);
  }

  return result;
}

uint64_t sub_1002147B8()
{

  return _swift_deallocObject(v0, 240, 7);
}

unint64_t sub_100214858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003683A8;
  if (!qword_1003683A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003683A8);
  }

  return result;
}

uint64_t sub_1002148DC(void *a1)
{
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368310, &qword_100290E68);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368318, &qword_100290E70);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100009274(&qword_100368320, &qword_100368310, &qword_100290E68, &protocol conformance descriptor for _BackgroundModifier<A>);
  swift_getWitnessTable();
  sub_100009274(&qword_100368328, &qword_100368318, &qword_100290E70, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368330, &unk_100290E78);
  sub_100008CF0(&qword_10035B068, &qword_100284EA0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_100009274(&qword_10035B070, &qword_10035B068, &qword_100284EA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_100368338, &qword_100290E88);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368340, &qword_100290E90);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_100008CF0(&qword_100368348, &qword_100290E98);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_100368350, &unk_100290EA0);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100009274(&qword_100368360, &qword_100368348, &qword_100290E98, &protocol conformance descriptor for _BackgroundModifier<A>);
  swift_getWitnessTable();
  sub_100009274(&qword_100368368, &qword_100368350, &unk_100290EA0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_100214E3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 2);
  if (v3)
  {
    v5 = v3[9];
    v6 = v3[10];
    sub_1000088DC(v3 + 6, v5);
    (*(v6 + 32))(v17, v5, v6);
    v7 = *v1;
    v18 = v1[2];
    v19 = v7;
    v8 = swift_allocObject();
    v9 = v2[1];
    v8[1] = *v2;
    v8[2] = v9;
    v8[3] = v2[2];
    sub_1000089B0(v17, v16);
    v10 = swift_allocObject();
    v11 = v2[1];
    v10[1] = *v2;
    v10[2] = v11;
    v10[3] = v2[2];
    sub_100008A18(v16, (v10 + 4));
    sub_100215C64(&v19, v14);

    sub_100032618(&v18, v14);
    sub_100215C64(&v19, v14);

    sub_100032618(&v18, v14);
    State.init(wrappedValue:)();
    result = sub_100008964(v17);
    v13 = v15;
    *a1 = v14[0];
    *(a1 + 8) = v13;
    *(a1 + 16) = sub_100215C00;
    *(a1 + 24) = v8;
    *(a1 + 32) = sub_100215C58;
    *(a1 + 40) = v10;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100215D64(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10021501C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    sub_1000089B0(v2 + 48, v9);
    v3 = v10;
    v4 = v11;
    sub_1000088DC(v9, v10);
    if (*a1)
    {
      v5 = (*(v4 + 136))(*(*(*a1 + 48) + 136), v3, v4);
      sub_100008964(v9);
      return v5 & 1;
    }

    type metadata accessor for ConnectivityModel();
    v7 = &qword_100354F78;
    v8 = type metadata accessor for ConnectivityModel;
  }

  else
  {
    type metadata accessor for UIMetrics();
    v7 = &qword_100354D40;
    v8 = type metadata accessor for UIMetrics;
  }

  sub_100215D64(v7, v8, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100215138@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a3;
  v110 = a2;
  v4 = type metadata accessor for OpacityTransition();
  v104 = *(v4 - 8);
  __chkstk_darwin(v4);
  v101 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100357818, &qword_10027B560);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v102 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v103 = &v85 - v10;
  v11 = type metadata accessor for Font.Leading();
  v89 = *(v11 - 8);
  KeyPath = v11;
  __chkstk_darwin(v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000040A8(&qword_1003683B8, &qword_1002910E0);
  __chkstk_darwin(v14 - 8);
  v100 = &v85 - v15;
  v99 = sub_1000040A8(&qword_1003683C0, &qword_1002910E8);
  __chkstk_darwin(v99);
  v17 = &v85 - v16;
  v111 = a1;
  v18 = *a1;
  if (!*a1)
  {
    type metadata accessor for ConnectivityModel();
    v83 = &qword_100354F78;
    v84 = type metadata accessor for ConnectivityModel;
LABEL_20:
    sub_100215D64(v83, v84, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_retain_n();
  v19 = sub_1001DE5B8();
  v21 = v20;

  v113 = v19;
  v108 = v4;
  if (!v19 && v21 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v22 = v111;
    v21 = v111[5];
    v113 = v111[4];
  }

  else
  {
    v22 = v111;
  }

  v112 = v21;
  v105 = v7;
  v106 = v17;
  v107 = v6;
  v23 = v22[2];
  if (!v23)
  {
    type metadata accessor for UIMetrics();
    v83 = &qword_100354D40;
    v84 = type metadata accessor for UIMetrics;
    goto LABEL_20;
  }

  v25 = *(v23 + 72);
  v24 = *(v23 + 80);
  sub_1000088DC((v23 + 48), v25);
  v26 = *(v24 + 128);
  swift_retain_n();
  v27 = v26(v18, v25, v24);

  v117[0] = v113;
  v117[1] = v112;
  sub_100031770(v28, v29, v30);

  v31 = Text.init<A>(_:)();
  v97 = v32;
  v98 = v31;
  v34 = v33;
  v96 = v35;
  v36 = v110;
  v37 = sub_1000088DC(v110, v110[3]);
  v38 = *(*v37 + 184);
  v94 = *(*v37 + 200);
  v95 = v38;
  v39 = static Edge.Set.all.getter();
  v92 = v34 & 1;
  v93 = v39;
  v116[0] = v34 & 1;
  LOBYTE(v120) = 0;
  v91 = static Edge.Set.bottom.getter();
  sub_1000088DC(v36, v36[3]);
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LOBYTE(v117[0]) = 0;
  static Font.title3.getter();
  Font.bold()();

  v49 = v89;
  v48 = KeyPath;
  (*(v89 + 104))(v13, enum case for Font.Leading.tight(_:), KeyPath);
  v88 = Font.leading(_:)();

  (*(v49 + 8))(v13, v48);
  KeyPath = swift_getKeyPath();
  v89 = swift_getKeyPath();
  v50 = *(v23 + 112);
  v110 = v27;

  v51 = v50;

  v52 = static UIContentSizeCategory.>= infix(_:_:)();

  v87 = (v52 & 1) == 0;
  v86 = swift_getKeyPath();
  v53 = v52 & 1;
  v118 = v52 & 1;
  v54 = *(v23 + 112);

  v55 = static UIContentSizeCategory.>= infix(_:_:)();

  v56 = (v55 & 1) == 0;
  v57 = swift_getKeyPath();
  v58 = *(v23 + 112);

  static Alignment.center.getter();
  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    static Alignment.center.getter();
    if (static Alignment.== infix(_:_:)())
    {
      static Alignment.leading.getter();
    }
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v119[55] = v123;
  *&v119[71] = v124;
  *&v119[87] = v125;
  *&v119[103] = v126;
  *&v119[7] = v120;
  *&v119[23] = v121;
  *&v119[39] = v122;
  v59 = *(v23 + 112);

  v60 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v60)
  {
    v61 = 1.0;
  }

  else
  {
    v61 = 0.5;
  }

  v62 = swift_getKeyPath();
  v117[0] = v98;
  v117[1] = v97;
  LOBYTE(v117[2]) = v92;
  v117[3] = v96;
  LOBYTE(v117[4]) = v93;
  *&v117[7] = v94;
  *&v117[5] = v95;
  LOBYTE(v117[9]) = 0;
  LOBYTE(v117[10]) = v91;
  v117[11] = v41;
  v117[12] = v43;
  v117[13] = v45;
  v117[14] = v47;
  LOBYTE(v117[15]) = 0;
  v117[16] = KeyPath;
  v117[17] = v88;
  v117[18] = v89;
  v117[19] = v110;
  v117[20] = v86;
  v117[21] = v87;
  LOBYTE(v117[22]) = v53;
  v117[23] = v57;
  LOBYTE(v117[24]) = v56;
  *(&v117[32] + 1) = *&v119[64];
  *(&v117[34] + 1) = *&v119[80];
  *(&v117[36] + 1) = *&v119[96];
  *(&v117[24] + 1) = *v119;
  *(&v117[26] + 1) = *&v119[16];
  *(&v117[28] + 1) = *&v119[32];
  *(&v117[30] + 1) = *&v119[48];
  v117[38] = *&v119[111];
  v117[39] = v62;
  *&v117[40] = v61;
  v63 = v112;
  if (v113 != v111[4] || v112 != v111[5])
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1000040A8(&qword_1003578A8, &unk_1002911E0);
  sub_100054434();
  v64 = v63;
  v65 = v100;
  View.accessibility(hidden:)();
  memcpy(v116, v117, sizeof(v116));
  sub_100215CFC(v116);
  v66 = v101;
  OpacityTransition.init()();
  static Animation.easeInOut.getter();
  v67 = sub_100215D64(&qword_100356B88, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v68 = v103;
  v69 = v108;
  Transition.animation(_:)();

  (*(v104 + 8))(v66, v69);
  v70 = v105;
  v71 = v107;
  (*(v105 + 16))(v102, v68, v107);
  v114 = v69;
  v115 = v67;
  swift_getOpaqueTypeConformance2();
  v72 = AnyTransition.init<A>(_:)();
  (*(v70 + 8))(v68, v71);
  v73 = v106;
  sub_10000CF4C(v65, v106, &qword_1003683B8, &qword_1002910E0);
  *(v73 + *(v99 + 36)) = v72;
  v114 = 0;
  v115 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v114 = 0x6554737574617453;
  v115 = 0xEB000000002D7478;
  v74._countAndFlagsBits = v113;
  v74._object = v64;
  String.append(_:)(v74);

  v75._countAndFlagsBits = 45;
  v75._object = 0xE100000000000000;
  String.append(_:)(v75);
  v76._countAndFlagsBits = Color.description.getter();
  String.append(_:)(v76);

  v77 = v114;
  v78 = v115;
  v79 = v73;
  v80 = v109;
  sub_10000CF4C(v79, v109, &qword_1003683C0, &qword_1002910E8);
  result = sub_1000040A8(&qword_1003683C8, &qword_100291218);
  v82 = (v80 + *(result + 52));
  *v82 = v77;
  v82[1] = v78;
  return result;
}

uint64_t sub_100215BB8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100215C08()
{

  sub_100008964((v0 + 64));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100215C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003683B0, &unk_1002910D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100215CFC(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003578A8, &unk_1002911E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100215D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100215E38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        [v5 setPreferredContentSize:{*(*(v4 + 48) + 32), *(*(v4 + 48) + 40)}];
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100215F14()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v24);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] loadView", v5, 0xCu);
    sub_100008964(v6);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    oslog = sub_10011A2C0(v2);
    [v2 setView:oslog];
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = v2;
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446210;
      v17 = v13;
      v18 = [v17 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_10017C9E8(v19, v21, &v24);

      *(v15 + 4) = v22;
      _os_log_impl(&_mh_execute_header, oslog, v14, "[%{public}s] contentProducer expired", v15, 0xCu);
      sub_100008964(v16);
    }
  }
}

void sub_100216244()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v17);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] viewDidLoad", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for BannerViewController();
  v18.receiver = v2;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, "viewDidLoad");
  [v2 setOverrideUserInterfaceStyle:2];
  v14 = *&v2[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_tapGesture];
  [v14 addTarget:v2 action:"didTap"];
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 addGestureRecognizer:v14];
  }

  else
  {
    __break(1u);
  }
}

id sub_100216570(char a1, char *a2, SEL *a3, ...)
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381CC8);
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v11 = 136446210;
    v12 = v8;
    v13 = [v12 description];
    format = a2;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a1;
    v17 = v16;

    v18 = sub_10017C9E8(v14, v17, &v23);
    a1 = v15;

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, format, v11, 0xCu);
    sub_100008964(v22);
  }

  v19 = type metadata accessor for BannerViewController();
  v24.receiver = v8;
  v24.super_class = v19;
  return objc_msgSendSuper2(&v24, *a3, a1 & 1);
}

uint64_t sub_100216790()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10017C9E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] _isSecureForRemoteViewService", v3, 0xCu);
    sub_100008964(v4);
  }

  return 1;
}

uint64_t sub_100216908()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}@] _canShowWhileLocked", v5, 0xCu);
    sub_10001DB10(v6);
  }

  return 1;
}

double sub_100216A68()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] didTap", v5, 0xCu);
    sub_100008964(v6);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001CEA70(v2);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100216C94(void *a1, double a2, double a3)
{
  v19.receiver = v3;
  v19.super_class = type metadata accessor for BannerViewController();
  objc_msgSendSuper2(&v19, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v17 = sub_100217720;
  v18 = v7;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1002301DC;
  v16 = &unk_100338CB8;
  v8 = _Block_copy(&v13);
  v9 = v3;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v17 = sub_100217744;
  v18 = v10;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1002301DC;
  v16 = &unk_100338D08;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [a1 animateAlongsideTransition:v8 completion:v11];
  _Block_release(v11);
  _Block_release(v8);
}

void sub_100216E44(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = type metadata accessor for BannerAgent();
    sub_1001CED08(v6, &off_100336CB8, a3, a4);

    swift_unknownObjectRelease();
  }
}

void sub_100216EE8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = type metadata accessor for BannerAgent();
    sub_1001CED14(v6, &off_100336CB8, a3, a4);

    swift_unknownObjectRelease();
  }
}

id sub_10021703C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BannerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100217164(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

void sub_100217450()
{
  *(v0 + OBJC_IVAR____TtC8SOSBuddy20BannerViewController_contentProducer + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8SOSBuddy20BannerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8SOSBuddy20BannerViewController_tapGesture;
  *(v0 + v1) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8SOSBuddy20BannerViewController_dismissalPreventionAssertion) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC8SOSBuddy20BannerViewController_subscriptions) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100217568()
{
  v1 = v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001CD5F8(v0);
    swift_unknownObjectRelease();
  }

  v2 = [v0 presentableDismissalPreventionContext];
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 acquireTransitionDismissalPreventionAssertionForReason:v4];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  *&v1[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_dismissalPreventionAssertion] = v5;

  swift_unknownObjectRelease();
  return result;
}

id sub_10021764C(void *a1)
{
  v2 = v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    sub_1001CDAE8(v2, a1);
    swift_unknownObjectRelease();
  }

  result = *&v2[OBJC_IVAR____TtC8SOSBuddy20BannerViewController_dismissalPreventionAssertion];
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

uint64_t sub_1002176E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10021772C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10021775C(__n128 a1)
{
  v2 = *(v1 + 32);
  if (!v2 || (v3 = v2 - 1, (*(v1 + 32) = v3) == 0))
  {
    if (*(v1 + 40) == 1)
    {
      *(v1 + 40) = 0;
      sub_1000040A8(&unk_100365610, &unk_100279630);
      sub_100018C74();
      Subject<>.send()();
    }

    if (*(v1 + 41) == 1)
    {
      *(v1 + 41) = 0;
      v4 = *(*v1 + 248);

      v4();
    }
  }
}

double sub_10021782C()
{
  sub_1000040A8(&unk_100365610, &unk_100279630);
  sub_100018C74();
  Subject<>.send()();
  return result;
}

uint64_t sub_100217874(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || (v2 = v1 - 1, (*(result + 32) = v2) == 0))
  {
    if (*(result + 40))
    {
      *(result + 40) = 0;
      v3 = result;
      sub_1000040A8(&unk_100365610, &unk_100279630);
      sub_100018C74();
      Subject<>.send()();
      result = v3;
    }

    if (*(result + 41) == 1)
    {
      *(result + 41) = 0;
      return (*(*result + 248))();
    }
  }

  return result;
}

uint64_t sub_100217928()
{

  return swift_deallocClassInstance();
}

void sub_10021798C()
{
  v1 = *(v0 + 32);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v3;
  }
}

uint64_t sub_1002179CC()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v22 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0x8000000100294A20;
    v8 = 0xD000000000000012;
  }

  v21[1] = sub_10000F574();
  v26[0] = v8;
  v26[1] = v10;

  v11._countAndFlagsBits = 7697454;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);

  static DispatchQoS.unspecified.getter();
  v26[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20, &unk_100278D40);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20, &unk_100278D40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381C80);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v1;
    v26[0] = v16;
    *v15 = 136446210;
    type metadata accessor for TelephonyUtilitiesAgent();

    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, v26);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] init", v15, 0xCu);
    sub_100008964(v16);
  }

  return v1;
}

uint64_t sub_100217DEC()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for TelephonyUtilitiesAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_100217F70()
{
  sub_100217DEC();

  return swift_deallocClassInstance();
}

double sub_100217FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100353A88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381DE8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "TelephonyUtilitiesAgent start", v9, 2u);
  }

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;

  return result;
}

uint64_t sub_1002180D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + 16);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_100218514;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100338DA8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1002183DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100218414(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v6 = *(Strong + 32);
  if (v6)
  {
    v7 = *(Strong + 24);

    sub_100218B48(v7, v6, a2, a3);
  }

  else
  {
    sub_100218858(a2, a3);
  }
}

uint64_t sub_1002184D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100218520(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100218538(uint64_t a1, uint64_t (*a2)(BOOL), uint64_t a3, const char *a4, const char *a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000F53C(v8, qword_100381C80);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {

      return a2(a1 == 0);
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, a4, v11, 0xCu);
    sub_10001DB10(v12);
  }

  else
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000F53C(v15, qword_100381C80);
    v9 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v9, v16, a5, v17, 2u);
    }
  }

  return a2(a1 == 0);
}

void sub_100218770()
{
  if (qword_100353A88 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381DE8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TelephonyUtilitiesAgent stop", v2, 2u);
  }
}

void sub_100218858(void (*a1)(void), uint64_t a2)
{
  v4 = [objc_allocWithZone(TUCallProviderManager) init];
  v5 = [v4 emergencyProvider];
  v6 = [objc_allocWithZone(TUDialRequest) initWithProvider:v5];

  [v6 setDialType:1];
  if ([v6 isValid])
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    aBlock[4] = sub_100218EF0;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100243DD8;
    aBlock[3] = &unk_100338E48;
    v9 = _Block_copy(aBlock);

    [v7 launchAppForDialRequest:v6 completion:v9];
    _Block_release(v9);
  }

  else
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F53C(v10, qword_100381C80);
    v16 = v6;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v16;
      *v14 = v16;
      v15 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to start emergency call, dial request is invalid: %{public}@", v13, 0xCu);
      sub_10001DB10(v14);
    }

    a1(0);
  }
}

void sub_100218B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = [objc_allocWithZone(TUCallProviderManager) init];
  v6 = [v22 defaultProvider];
  v7 = [objc_allocWithZone(TUDialRequest) initWithProvider:v6];

  v8 = objc_allocWithZone(TUHandle);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithType:2 value:v9];

  [v7 setHandle:v10];
  [v7 setShowUIPrompt:1];
  if ([v7 isValid])
  {
    v11 = [objc_opt_self() sharedInstance];
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    aBlock[4] = sub_100218EC4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100243DD8;
    aBlock[3] = &unk_100338DF8;
    v13 = _Block_copy(aBlock);

    [v11 launchAppForDialRequest:v7 completion:v13];
    _Block_release(v13);
  }

  else
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F53C(v14, qword_100381C80);
    v15 = v7;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v15;
      *v19 = v15;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unable to start emergency call, dial request is invalid: %{public}@", v18, 0xCu);
      sub_10001DB10(v19);

      v20 = v21;
    }

    else
    {

      v20 = v22;
    }
  }
}

uint64_t sub_100218E8C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100218F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a4;
  v50 = a2;
  v51 = a1;
  v63 = a5;
  v58 = type metadata accessor for KeyboardShortcut();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GlassProminentButtonStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000040A8(&qword_100368718, &qword_1002913F0);
  v12 = *(v53 - 8);
  __chkstk_darwin(v53);
  v14 = &v49 - v13;
  v54 = sub_1000040A8(&qword_100368720, &qword_1002913F8);
  __chkstk_darwin(v54);
  v16 = &v49 - v15;
  v60 = sub_1000040A8(&qword_100368728, &qword_100291400);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = &v49 - v17;
  v61 = sub_1000040A8(&qword_100368730, &qword_100291408);
  __chkstk_darwin(v61);
  v62 = &v49 - v18;
  if (a3)
  {
    v19 = a3[9];
    v20 = a3[10];
    sub_1000088DC(a3 + 6, v19);
    (*(v20 + 32))(v64, v19, v20);
    v21 = swift_allocObject();
    v22 = v50;
    v21[2] = v51;
    v21[3] = v22;
    v23 = v52;
    v21[4] = a3;
    v21[5] = v23;
    sub_1002199B8(v21, v24, v25);

    Button.init(action:label:)();
    GlassProminentButtonStyle.init()();
    sub_100009274(&qword_100368740, &qword_100368718, &qword_1002913F0, &protocol conformance descriptor for Button<A>);
    sub_10021AEE0(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    v26 = v53;
    View.buttonStyle<A>(_:)();
    (*(v9 + 8))(v11, v8);
    v27 = &v16[*(sub_1000040A8(&qword_100368748, &unk_100291410) + 36)];
    sub_1000040A8(&qword_100357740, &qword_10027B2A0);
    static ButtonBorderShape.capsule.getter();
    (*(v12 + 8))(v14, v26);
    *v27 = swift_getKeyPath();
    v28 = [objc_opt_self() darkGrayColor];
    v29 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    *&v66 = v29;
    v31 = AnyShapeStyle.init<A>(_:)();
    v32 = &v16[*(v54 + 36)];
    *v32 = KeyPath;
    v32[1] = v31;
    v33 = v56;
    static KeyboardShortcut.defaultAction.getter();
    sub_10021A97C();
    v34 = v55;
    View.keyboardShortcut(_:)();
    (*(v57 + 8))(v33, v58);
    sub_100008FA0(v16, &qword_100368720, &qword_1002913F8);
    v35 = *(*sub_1000088DC(v64, v65) + 216);
    v36 = *(*sub_1000088DC(v64, v65) + 216);
    static Alignment.center.getter();
    if (v35 > v36)
    {
      static os_log_type_t.fault.getter();
      v37 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v38 = v62;
    (*(v59 + 32))(v62, v34, v60);
    v39 = (v38 + *(v61 + 36));
    v40 = v71;
    v39[4] = v70;
    v39[5] = v40;
    v39[6] = v72;
    v41 = v67;
    *v39 = v66;
    v39[1] = v41;
    v42 = v69;
    v39[2] = v68;
    v39[3] = v42;
    LocalizedStringKey.init(stringLiteral:)();
    v43 = Text.init(_:tableName:bundle:comment:)();
    v45 = v44;
    v47 = v46;
    sub_10021ABAC();
    View.accessibility(label:)();
    sub_1000317C4(v43, v45, v47 & 1);

    sub_100008FA0(v38, &qword_100368730, &qword_100291408);
    return sub_100008964(v64);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10021AEE0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002197A4(void *a1, uint64_t a2)
{
  if (a1)
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();

    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10021AEE0(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002198F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UIMetrics();
  sub_10021AEE0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10021996C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1002199B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368738;
  if (!qword_100368738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368738);
  }

  return result;
}

uint64_t sub_100219A0C(void *a1, uint64_t a2)
{
  v3 = sub_1000040A8(&qword_100368778, &qword_100291520);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-1] - v4;
  v6 = sub_1000040A8(&qword_100368780, &qword_100291528);
  __chkstk_darwin(v6);
  v8 = &v18[-1] - v7;
  if (a1)
  {
    v9 = a1[9];
    v10 = a1[10];
    sub_1000088DC(a1 + 6, v9);
    (*(v10 + 32))(v18, v9, v10);
    *v5 = static VerticalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v11 = sub_1000040A8(&qword_100368788, &unk_100291530);
    sub_100219C90(a1, &v5[*(v11 + 44)]);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v5, v8, &qword_100368778, &qword_100291520);
    v12 = &v8[*(v6 + 36)];
    v13 = v24;
    *(v12 + 4) = v23;
    *(v12 + 5) = v13;
    *(v12 + 6) = v25;
    v14 = v20;
    *v12 = v19;
    *(v12 + 1) = v14;
    v15 = v22;
    *(v12 + 2) = v21;
    *(v12 + 3) = v15;
    sub_10021AD98();
    View.accessibility(hidden:)();
    sub_100008FA0(v8, &qword_100368780, &qword_100291528);
    return sub_100008964(v18);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10021AEE0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100219C90@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v89 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v89);
  v104 = &v88 - v5;
  v95 = sub_1000040A8(&qword_1003687A0, &qword_100291540);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v90 = &v88 - v6;
  v88 = sub_1000040A8(&qword_1003687A8, &qword_100291548);
  __chkstk_darwin(v88);
  v93 = &v88 - v7;
  v91 = sub_1000040A8(&qword_1003687B0, &qword_100291550);
  __chkstk_darwin(v91);
  v98 = &v88 - v8;
  v97 = sub_1000040A8(&qword_1003687B8, &qword_100291558);
  __chkstk_darwin(v97);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v88 - v12;
  __chkstk_darwin(v13);
  v99 = &v88 - v14;
  v15 = type metadata accessor for Font.Leading();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000040A8(&qword_1003687C0, &qword_100291560);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v88 - v21);
  v23 = sub_1000040A8(&qword_1003687C8, &qword_100291568);
  __chkstk_darwin(v23 - 8);
  v92 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v106 = &v88 - v26;
  if (!a1)
  {
    goto LABEL_11;
  }

  v100 = v10;
  v101 = a3;
  v27 = a1[14];
  swift_retain_n();
  v28 = v27;
  v105 = UIContentSizeCategoryAccessibilityExtraLarge;
  v29 = static UIContentSizeCategory.>= infix(_:_:)();

  v103 = a1;
  if (v29)
  {
    (*(v20 + 56))(v106, 1, 1, v19);
    v30 = enum case for Font.Leading.tight(_:);
  }

  else
  {
    v31 = a1[9];
    v32 = a1[10];
    sub_1000088DC(a1 + 6, v31);
    (*(v32 + 24))(v112, v31, v32);
    sub_100008964(v112);
    v33 = Image.init(systemName:)();
    v34 = (v22 + *(sub_1000040A8(&qword_1003584F8, &qword_10028C460) + 36));
    v35 = *(sub_1000040A8(&qword_100358500, &qword_10027CE10) + 28);
    v36 = enum case for Image.Scale.medium(_:);
    v37 = type metadata accessor for Image.Scale();
    (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
    *v34 = swift_getKeyPath();
    *v22 = v33;
    static Font.title3.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v30 = enum case for Font.Leading.tight(_:);
    (*(v16 + 104))(v18, enum case for Font.Leading.tight(_:), v15);
    v38 = Font.leading(_:)();

    (*(v16 + 8))(v18, v15);
    KeyPath = swift_getKeyPath();
    v40 = (v22 + *(sub_1000040A8(&qword_100358508, &qword_1002892B0) + 36));
    *v40 = KeyPath;
    v40[1] = v38;
    *(v22 + *(v19 + 36)) = static Color.green.getter();
    v41 = v106;
    sub_10021AE60(v22, v106);
    (*(v20 + 56))(v41, 0, 1, v19);
  }

  v42 = [objc_opt_self() mainBundle];
  v116._object = 0x80000001002A3030;
  v43._object = 0x80000001002A0080;
  v116._countAndFlagsBits = 0xD00000000000002CLL;
  v43._countAndFlagsBits = 0xD000000000000017;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v116);

  v112[0] = v45;
  sub_100031770(v46, v47, v48);
  v49 = Text.init<A>(_:)();
  v51 = v50;
  v53 = v52;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  (*(v16 + 104))(v18, v30, v15);
  Font.leading(_:)();

  (*(v16 + 8))(v18, v15);
  v54 = Text.font(_:)();
  v102 = v55;
  v57 = v56;
  v59 = v58;

  sub_1000317C4(v49, v51, v53 & 1);

  v60 = static Color.green.getter();
  v61 = swift_getKeyPath();
  v62 = v103;
  v63 = v103[14];

  LOBYTE(v49) = static UIContentSizeCategory.>= infix(_:_:)();

  v64 = swift_getKeyPath();
  v115 = v57 & 1;
  v114 = v49 & 1;
  *&v107 = v54;
  *(&v107 + 1) = v102;
  LOBYTE(v108) = v57 & 1;
  *(&v108 + 1) = v59;
  *&v109 = v61;
  *(&v109 + 1) = v60;
  *&v110 = v64;
  *(&v110 + 1) = (v49 & 1) == 0;
  v111 = v49 & 1;
  v65 = enum case for DynamicTypeSize.accessibility2(_:);
  v66 = type metadata accessor for DynamicTypeSize();
  v67 = v104;
  (*(*(v66 - 8) + 104))(v104, v65, v66);
  sub_10021AEE0(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
LABEL_11:
    type metadata accessor for UIMetrics();
    sub_10021AEE0(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  sub_1000040A8(&qword_1003687D0, &qword_100291638);
  sub_10021AF28();
  sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
  v68 = v90;
  View.dynamicTypeSize<A>(_:)();
  sub_100008FA0(v67, &qword_100354D60, &qword_100277B30);
  v112[2] = v109;
  v112[3] = v110;
  v113 = v111;
  v112[0] = v107;
  v112[1] = v108;
  sub_100008FA0(v112, &qword_1003687D0, &qword_100291638);
  v69 = swift_getKeyPath();
  v70 = v93;
  (*(v94 + 32))(v93, v68, v95);
  v71 = v70 + *(v88 + 36);
  *v71 = v69;
  *(v71 + 8) = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v72 = v98;
  sub_10000CF4C(v70, v98, &qword_1003687A8, &qword_100291548);
  v73 = (v72 + *(v91 + 36));
  v74 = v108;
  *v73 = v107;
  v73[1] = v74;
  v73[2] = v109;
  v75 = v62[14];

  LOBYTE(v70) = static UIContentSizeCategory.>= infix(_:_:)();

  if (v70)
  {
    v76 = 1.0;
  }

  else
  {
    v76 = 0.5;
  }

  v77 = swift_getKeyPath();
  v78 = v96;
  sub_10000CF4C(v72, v96, &qword_1003687B0, &qword_100291550);
  v79 = v78 + *(v97 + 36);
  *v79 = v77;
  *(v79 + 8) = v76;
  v80 = v99;
  sub_10000CF4C(v78, v99, &qword_1003687B8, &qword_100291558);
  v81 = v106;
  v82 = v92;
  sub_10021AFF0(v106, v92);
  v83 = v100;
  sub_10021B060(v80, v100);
  v84 = v101;
  *v101 = 0;
  *(v84 + 8) = 1;
  v85 = sub_1000040A8(&qword_1003687E0, &qword_1002916A8);
  sub_10021AFF0(v82, v84 + v85[12]);
  sub_10021B060(v83, v84 + v85[16]);
  v86 = v84 + v85[20];
  sub_100008FA0(v80, &qword_1003687B8, &qword_100291558);
  sub_100008FA0(v81, &qword_1003687C8, &qword_100291568);
  *v86 = 0;
  v86[8] = 1;
  sub_100008FA0(v83, &qword_1003687B8, &qword_100291558);
  return sub_100008FA0(v82, &qword_1003687C8, &qword_100291568);
}

unint64_t sub_10021A97C()
{
  result = qword_100368750;
  if (!qword_100368750)
  {
    sub_100008CF0(&qword_100368720, &qword_1002913F8);
    sub_10021AA34();
    sub_100009274(&qword_100357770, &qword_100357778, &qword_10027B310, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368750);
  }

  return result;
}

unint64_t sub_10021AA34()
{
  result = qword_100368758;
  if (!qword_100368758)
  {
    sub_100008CF0(&qword_100368748, &unk_100291410);
    sub_100008CF0(&qword_100368718, &qword_1002913F0);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100009274(&qword_100368740, &qword_100368718, &qword_1002913F0, &protocol conformance descriptor for Button<A>);
    sub_10021AEE0(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368758);
  }

  return result;
}

unint64_t sub_10021ABAC()
{
  result = qword_100368760;
  if (!qword_100368760)
  {
    sub_100008CF0(&qword_100368730, &qword_100291408);
    sub_100008CF0(&qword_100368720, &qword_1002913F8);
    sub_10021A97C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368760);
  }

  return result;
}

uint64_t sub_10021ACC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2, a3);
    a4();
    sub_10021AEE0(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10021AD98()
{
  result = qword_100368790;
  if (!qword_100368790)
  {
    sub_100008CF0(&qword_100368780, &qword_100291528);
    sub_100009274(&qword_100368798, &qword_100368778, &qword_100291520, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368790);
  }

  return result;
}

uint64_t sub_10021AE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003687C0, &qword_100291560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021AEE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10021AF28()
{
  result = qword_1003687D8;
  if (!qword_1003687D8)
  {
    sub_100008CF0(&qword_1003687D0, &qword_100291638);
    sub_1000EAFA4();
    sub_100009274(&qword_100356828, &qword_100356830, &qword_100289190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003687D8);
  }

  return result;
}

uint64_t sub_10021AFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003687C8, &qword_100291568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021B060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003687B8, &qword_100291558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021B114()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100368818, &qword_1002917E8);
  __chkstk_darwin(v2);
  v4 = (v18 - v3);
  if (qword_100353B78 != -1)
  {
    swift_once();
  }

  *v4 = xmmword_100368808;
  v5 = v4 + *(sub_1000040A8(&qword_100368820, &qword_1002917F0) + 44);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_1000040A8(&qword_100368828, &qword_1002917F8);
  sub_10021B428(v1, &v5[*(v6 + 44)]);
  v7 = swift_allocObject();
  v8 = *(v1 + 80);
  *(v7 + 80) = *(v1 + 64);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(v1 + 96);
  *(v7 + 128) = *(v1 + 112);
  v9 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v9;
  v10 = *(v1 + 48);
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = v10;
  v11 = &v5[*(sub_1000040A8(&qword_100368830, &unk_100291800) + 36)];
  *v11 = sub_10021E374;
  v11[1] = v7;
  v11[2] = 0;
  v11[3] = 0;
  v12 = *(v1 + 16);
  if (v12)
  {
    v18[3] = *(v12 + 56);
    v13 = swift_allocObject();
    v14 = *(v1 + 80);
    *(v13 + 80) = *(v1 + 64);
    *(v13 + 96) = v14;
    *(v13 + 112) = *(v1 + 96);
    *(v13 + 128) = *(v1 + 112);
    v15 = *(v1 + 16);
    *(v13 + 16) = *v1;
    *(v13 + 32) = v15;
    v16 = *(v1 + 48);
    *(v13 + 48) = *(v1 + 32);
    *(v13 + 64) = v16;
    sub_1001B1D20(v1, v19);
    sub_1001B1D20(v1, v19);
    sub_1000040A8(&qword_1003618D0, &qword_100289D90);
    sub_100009274(&qword_100368838, &qword_100368818, &qword_1002917E8, &protocol conformance descriptor for ZStack<A>);
    sub_10021E384();
    View.onChange<A>(of:initial:_:)();

    return sub_100008FA0(v4, &qword_100368818, &qword_1002917E8);
  }

  else
  {
    sub_1001B1D20(v1, v19);
    type metadata accessor for TryOutModel(0);
    sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10021B428@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = sub_1000040A8(&qword_100368858, &qword_100291818);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_1000040A8(&qword_100368860, &qword_100291820);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v44 - v10;
  __chkstk_darwin(v12);
  v48 = &v44 - v13;
  v47 = sub_1000040A8(&qword_100368868, &qword_100291828);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = static HorizontalAlignment.center.getter();
  v19 = swift_allocObject();
  v20 = *(a1 + 80);
  *(v19 + 80) = *(a1 + 64);
  *(v19 + 96) = v20;
  *(v19 + 112) = *(a1 + 96);
  *(v19 + 128) = *(a1 + 112);
  v21 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v21;
  v22 = *(a1 + 48);
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = v22;
  sub_1001B1D20(a1, v57);
  v23 = static Edge.Set.all.getter();
  v60 = 1;
  v59 = 0;
  v51 = v18;
  LOBYTE(v52) = 1;
  *(&v52 + 1) = sub_10021E45C;
  *&v53 = v19;
  BYTE8(v53) = v23;
  v54 = xmmword_1002916C0;
  v55 = xmmword_1002916D0;
  v56 = 0;
  v24 = swift_allocObject();
  v25 = *(a1 + 80);
  *(v24 + 80) = *(a1 + 64);
  *(v24 + 96) = v25;
  *(v24 + 112) = *(a1 + 96);
  *(v24 + 128) = *(a1 + 112);
  v26 = *(a1 + 16);
  *(v24 + 16) = *a1;
  *(v24 + 32) = v26;
  v27 = *(a1 + 48);
  *(v24 + 48) = *(a1 + 32);
  *(v24 + 64) = v27;
  sub_1001B1D20(a1, v57);
  sub_1000040A8(&qword_100368870, &qword_100291830);
  sub_10021E4C0();
  View.onTapGesture(count:perform:)();

  v57[3] = v54;
  v57[4] = v55;
  v58 = v56;
  v57[0] = v51;
  v57[1] = v52;
  v57[2] = v53;
  sub_100008FA0(v57, &qword_100368870, &qword_100291830);
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v28 = sub_1000040A8(&qword_100368890, &qword_100291840);
  sub_10021D1AC(a1, &v5[*(v28 + 44)]);
  type metadata accessor for KeyboardObserver(0);
  sub_10021EBDC(&qword_1003577D8, type metadata accessor for KeyboardObserver, &unk_100277B94);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v51)
  {
    v29 = 0x4030000000000000;
  }

  else
  {
    v29 = 0x403C000000000000;
  }

  v30 = static Edge.Set.all.getter();
  sub_10000CF4C(v5, v11, &qword_100368858, &qword_100291818);
  v31 = &v11[*(v7 + 44)];
  *v31 = v30;
  *(v31 + 1) = 0x4020000000000000;
  *(v31 + 2) = v29;
  *(v31 + 3) = v29;
  *(v31 + 4) = v29;
  v31[40] = 0;
  v32 = v48;
  sub_10000CF4C(v11, v48, &qword_100368860, &qword_100291820);
  v33 = v45;
  v34 = *(v45 + 16);
  v35 = v46;
  v36 = v17;
  v37 = v17;
  v38 = v47;
  v34(v46, v37, v47);
  v39 = v49;
  sub_100006C20(v32, v49, &qword_100368860, &qword_100291820);
  v40 = v50;
  v34(v50, v35, v38);
  v41 = sub_1000040A8(&qword_100368898, &qword_100291890);
  sub_100006C20(v39, &v40[*(v41 + 48)], &qword_100368860, &qword_100291820);
  sub_100008FA0(v32, &qword_100368860, &qword_100291820);
  v42 = *(v33 + 8);
  v42(v36, v38);
  sub_100008FA0(v39, &qword_100368860, &qword_100291820);
  return (v42)(v35, v38);
}

uint64_t sub_10021BA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  (*(v7 + 16))(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v6, v9);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v6);
  v12 = v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *(a2 + 80);
  *(v12 + 64) = *(a2 + 64);
  *(v12 + 80) = v13;
  *(v12 + 96) = *(a2 + 96);
  *(v12 + 112) = *(a2 + 112);
  v14 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v14;
  v15 = *(a2 + 48);
  *(v12 + 32) = *(a2 + 32);
  *(v12 + 48) = v15;
  *a3 = sub_10021E844;
  a3[1] = v11;
  return sub_1001B1D20(a2, v18);
}

uint64_t sub_10021BBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a1;
  v66 = a4;
  v57 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v57);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DragGesture();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000040A8(&qword_100368938, &qword_1002918F0);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v48 - v8;
  v9 = type metadata accessor for ScrollViewProxy();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v67 = v11;
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000040A8(&qword_100368940, &qword_1002918F8);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v14 = &v48 - v13;
  v69 = sub_1000040A8(&qword_100368948, &qword_100291900);
  __chkstk_darwin(v69);
  v50 = &v48 - v15;
  v59 = sub_1000040A8(&qword_100368950, &qword_100291908);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v48 - v16;
  static Axis.Set.vertical.getter();
  v70 = a2;
  v71 = a3;
  sub_1000040A8(&qword_100368958, &qword_100291910);
  sub_100009274(&qword_100368960, &qword_100368958, &qword_100291910, &protocol conformance descriptor for TupleView<A>);
  v52 = v14;
  ScrollView.init(_:showsIndicators:content:)();
  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = *(v17 + 32);
    v51 = *(v10 + 16);
    v19 = v12;
    v51(v12, v68, v9);
    v20 = *(v10 + 80);
    v21 = swift_allocObject();
    v22 = *(a3 + 80);
    *(v21 + 80) = *(a3 + 64);
    *(v21 + 96) = v22;
    *(v21 + 112) = *(a3 + 96);
    *(v21 + 128) = *(a3 + 112);
    v23 = *(a3 + 16);
    *(v21 + 16) = *a3;
    *(v21 + 32) = v23;
    v24 = *(a3 + 48);
    *(v21 + 48) = *(a3 + 32);
    *(v21 + 64) = v24;
    v49 = *(v10 + 32);
    v49(v21 + ((v20 + 129) & ~v20), v12, v9);
    v25 = v50;
    (*(v53 + 32))(v50, v52, v54);
    v26 = v69;
    *(v25 + *(v69 + 52)) = v18;
    v27 = (v25 + *(v26 + 56));
    *v27 = sub_10021E9E8;
    v27[1] = v21;
    v73 = *(a3 + 48);

    sub_1001B1D20(a3, v72);
    sub_1000040A8(&qword_100368930, &qword_1002918E8);
    State.wrappedValue.getter();
    v51(v12, v68, v9);
    v28 = (v20 + 16) & ~v20;
    v29 = (v67 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v49(v30 + v28, v19, v9);
    v31 = v30 + v29;
    v32 = *(a3 + 80);
    *(v31 + 64) = *(a3 + 64);
    *(v31 + 80) = v32;
    *(v31 + 96) = *(a3 + 96);
    *(v31 + 112) = *(a3 + 112);
    v33 = *(a3 + 16);
    *v31 = *a3;
    *(v31 + 16) = v33;
    v34 = *(a3 + 48);
    *(v31 + 32) = *(a3 + 32);
    *(v31 + 48) = v34;
    sub_1001B1D20(a3, v72);
    v35 = sub_100009274(&qword_100368968, &qword_100368948, &qword_100291900, &protocol conformance descriptor for SubscriptionView<A, B>);
    v36 = v56;
    v37 = v69;
    View.onChange<A>(of:initial:_:)();

    sub_100008FA0(v25, &qword_100368948, &qword_100291900);
    static CoordinateSpaceProtocol<>.local.getter();
    v38 = v60;
    DragGesture.init<A>(minimumDistance:coordinateSpace:)();
    v39 = swift_allocObject();
    v40 = *(a3 + 80);
    *(v39 + 80) = *(a3 + 64);
    *(v39 + 96) = v40;
    *(v39 + 112) = *(a3 + 96);
    *(v39 + 128) = *(a3 + 112);
    v41 = *(a3 + 16);
    *(v39 + 16) = *a3;
    *(v39 + 32) = v41;
    v42 = *(a3 + 48);
    *(v39 + 48) = *(a3 + 32);
    *(v39 + 64) = v42;
    sub_1001B1D20(a3, v72);
    sub_10021EBDC(&qword_1003688C0, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
    sub_10021EBDC(&qword_100368970, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
    v43 = v63;
    v44 = v62;
    Gesture<>.onChanged(_:)();

    (*(v61 + 8))(v38, v44);
    static GestureMask.all.getter();
    v72[0] = v37;
    v72[1] = &type metadata for Double;
    v72[2] = v35;
    v72[3] = &protocol witness table for Double;
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100368978, &qword_100368938, &qword_1002918F0, &protocol conformance descriptor for _ChangedGesture<A>);
    v45 = v59;
    v46 = v65;
    View.simultaneousGesture<A>(_:including:)();
    (*(v64 + 8))(v43, v46);
    return (*(v58 + 8))(v36, v45);
  }

  else
  {
    type metadata accessor for TryOutModel(0);
    sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10021C558@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = static HorizontalAlignment.center.getter();
  v29[0] = 1;
  sub_10021C828(a2, &v53);
  v43 = *&v54[80];
  v44 = *&v54[96];
  v45 = *&v54[112];
  v46 = *&v54[128];
  v39 = *&v54[16];
  v40 = *&v54[32];
  v41 = *&v54[48];
  v42 = *&v54[64];
  v37 = v53;
  v38 = *v54;
  v47[6] = *&v54[80];
  v47[7] = *&v54[96];
  v47[8] = *&v54[112];
  v47[9] = *&v54[128];
  v47[2] = *&v54[16];
  v47[3] = *&v54[32];
  v47[4] = *&v54[48];
  v47[5] = *&v54[64];
  v47[0] = v53;
  v47[1] = *v54;
  sub_100006C20(&v37, &v51, &qword_100368980, &qword_100291918);
  sub_100008FA0(v47, &qword_100368980, &qword_100291918);
  *&v30[103] = v43;
  *&v30[119] = v44;
  *&v30[135] = v45;
  *&v30[151] = v46;
  *&v30[39] = v39;
  *&v30[55] = v40;
  *&v30[71] = v41;
  *&v30[87] = v42;
  *&v30[7] = v37;
  *&v30[23] = v38;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = v31;
  v7 = v33;
  v8 = v35;
  v28 = v36;
  v50 = 1;
  v49 = v32;
  v48 = v34;
  v9 = Namespace.wrappedValue.getter();
  v51 = v5;
  v52[0] = 1;
  v10 = *&v30[96];
  *&v52[113] = *&v30[112];
  v11 = *&v30[112];
  *&v52[129] = *&v30[128];
  v12 = *&v30[128];
  *&v52[145] = *&v30[144];
  v13 = *&v30[32];
  *&v52[49] = *&v30[48];
  v14 = *&v30[48];
  *&v52[65] = *&v30[64];
  v15 = *&v30[64];
  *&v52[81] = *&v30[80];
  v16 = *&v30[80];
  *&v52[97] = *&v30[96];
  v17 = *&v30[16];
  *&v52[1] = *v30;
  v18 = *v30;
  *&v52[17] = *&v30[16];
  *&v52[33] = *&v30[32];
  v19 = *&v52[128];
  *(a3 + 128) = *&v52[112];
  *(a3 + 144) = v19;
  *(a3 + 160) = *&v52[144];
  v20 = *&v52[64];
  *(a3 + 64) = *&v52[48];
  *(a3 + 80) = v20;
  v21 = *&v52[96];
  *(a3 + 96) = *&v52[80];
  *(a3 + 112) = v21;
  v22 = *v52;
  *a3 = v51;
  *(a3 + 16) = v22;
  v23 = *&v52[32];
  *(a3 + 32) = *&v52[16];
  *(a3 + 48) = v23;
  *&v54[113] = v11;
  *&v54[129] = v12;
  *v55 = *&v30[144];
  *&v54[49] = v14;
  *&v54[65] = v15;
  *&v54[81] = v16;
  *&v54[97] = v10;
  *&v54[1] = v18;
  *&v54[17] = v17;
  v24 = v50;
  v25 = v49;
  v26 = v48;
  *&v52[160] = *&v30[159];
  *(a3 + 176) = *&v30[159];
  *(a3 + 184) = 0;
  *(a3 + 192) = v24;
  *(a3 + 200) = v6;
  *(a3 + 208) = v25;
  *(a3 + 216) = v7;
  *(a3 + 224) = v26;
  *(a3 + 232) = v8;
  *(a3 + 240) = v28;
  *(a3 + 248) = v9;
  v53 = v5;
  v54[0] = 1;
  *&v55[15] = *&v30[159];
  *&v54[33] = v13;
  sub_100006C20(&v51, v29, &qword_100368988, &qword_100291920);
  return sub_100008FA0(&v53, &qword_100368988, &qword_100291920);
}

uint64_t sub_10021C828@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  GeometryProxy.size.getter();
  v5 = v4;
  v36[0] = *(a1 + 32);
  sub_1000040A8(&qword_100368930, &qword_1002918E8);
  State.wrappedValue.getter();
  if (v5 - *v53 <= 0.0)
  {
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v6 = 0;
    v27 = 1;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v27 = 0;
    v28 = v56;
    v25 = v60;
    v26 = v58;
    LOBYTE(v53[0]) = 1;
    v29[0] = v57;
    LOBYTE(v45[0]) = v59;
    v6 = 1;
    v22 = v57;
    v23 = v59;
    v24 = v61;
    LOBYTE(v36[0]) = 0;
  }

  v7 = static HorizontalAlignment.center.getter();
  type metadata accessor for TryOutModel(0);
  sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
  v8 = EnvironmentObject.init()();
  v10 = v9;
  v11 = swift_allocObject();
  v12 = *(a1 + 80);
  *(v11 + 80) = *(a1 + 64);
  *(v11 + 96) = v12;
  *(v11 + 112) = *(a1 + 96);
  *(v11 + 128) = *(a1 + 112);
  v13 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v13;
  v14 = *(a1 + 48);
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = v14;
  sub_1001B1D20(a1, v36);
  v15 = static Alignment.center.getter();
  v17 = v16;
  LOBYTE(v53[0]) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10021ECA4;
  *(v18 + 24) = v11;
  v40[0] = v7;
  v40[1] = 0;
  LOBYTE(v41) = v53[0];
  *(&v41 + 1) = v8;
  *&v42 = v10;
  *(&v42 + 1) = sub_10021E088;
  *&v43 = 0;
  *(&v43 + 1) = v15;
  v44 = v17;
  v33 = v42;
  v34 = v43;
  v35 = v17;
  v31 = v7;
  v32 = v41;
  v45[0] = v7;
  v45[1] = 0;
  v46 = v53[0];
  v47 = v8;
  v48 = v10;
  v49 = sub_10021E088;
  v50 = 0;
  v51 = v15;
  v52 = v17;
  sub_100006C20(v40, v36, &qword_100368990, &qword_100291928);
  sub_100008FA0(v45, &qword_100368990, &qword_100291928);
  v53[0] = v7;
  v53[1] = v32;
  v53[2] = v33;
  v53[3] = v34;
  *&v54 = v17;
  *(&v54 + 1) = sub_10021EEC8;
  v55 = v18;
  *&v30[87] = v18;
  *&v30[55] = v34;
  *&v30[39] = v33;
  *&v30[7] = v7;
  *&v30[23] = v32;
  *&v30[71] = v54;
  *a2 = 0;
  *(a2 + 8) = v6;
  *(a2 + 16) = v28;
  *(a2 + 24) = v22;
  *(a2 + 32) = v26;
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;
  *(a2 + 56) = v24;
  *(a2 + 64) = v27;
  *(a2 + 97) = *&v30[32];
  v19 = *&v30[64];
  *(a2 + 113) = *&v30[48];
  *(a2 + 129) = v19;
  *(a2 + 144) = *&v30[79];
  v20 = *&v30[16];
  *(a2 + 65) = *v30;
  *(a2 + 81) = v20;
  v36[2] = v33;
  v36[3] = v34;
  v36[0] = v31;
  v36[1] = v32;
  v37 = v35;
  v38 = sub_10021EEC8;
  v39 = v18;
  sub_100006C20(v53, v29, &qword_100368998, &unk_100291930);
  return sub_100008FA0(v36, &qword_100368998, &unk_100291930);
}

uint64_t sub_10021CBBC(__n128 a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

void sub_10021CC2C(uint64_t *a1, void *a2)
{
  v3 = a2[2];
  if (!v3)
  {
    type metadata accessor for TryOutModel(0);
    v20 = &qword_100357990;
    v21 = type metadata accessor for TryOutModel;
    v22 = "\ts\n";
    goto LABEL_32;
  }

  v4 = *(v3 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = *(v5 + 48);
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    if (v6 >> 62)
    {
LABEL_30:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_30;
          }

          v9 = *(v6 + 8 * v8 + 32);

          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_18;
          }
        }

        if (static UUID.== infix(_:_:)())
        {
          break;
        }

        ++v8;
        if (v10 == v7)
        {
          goto LABEL_19;
        }
      }

      if (qword_100353A58 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000F53C(v11, qword_100381D58);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v23 = v15;
        *v14 = 136446210;
        v16 = (*(*v9 + 96))(v15);
        v18 = sub_10017C9E8(v16, v17, &v23);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Item to scroll to - %{public}s", v14, 0xCu);
        sub_100008964(v15);
      }

      __chkstk_darwin(v19);
      static Animation.default.getter();
      withAnimation<A>(_:_:)();

      if (!*a2)
      {
        while (1)
        {
          type metadata accessor for AppEvents();
          v20 = &qword_100354D48;
          v21 = type metadata accessor for AppEvents;
          v22 = "ɼ\t";
LABEL_32:
          sub_10021EBDC(v20, v21, v22);
          EnvironmentObject.error()();
          __break(1u);
        }
      }

      LOBYTE(v23) = 0;

      PassthroughSubject.send(_:)();
    }

    else
    {
LABEL_19:
    }
  }
}

double sub_10021D034(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 96))();
  static UnitPoint.bottom.getter();
  ScrollViewProxy.scrollTo<A>(_:anchor:)();

  return result;
}

uint64_t sub_10021D0D0(uint64_t a1, uint64_t a2)
{
  Namespace.wrappedValue.getter();
  v2 = static UnitPoint.bottom.getter();
  sub_100118EC8(v2, v3, v4);
  return ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_10021D13C(uint64_t a1, uint64_t a2)
{
  result = DragGesture.Value.translation.getter();
  if (v3 > 0.0)
  {
    sub_1000040A8(&qword_100368850, &qword_100291810);
    return FocusState.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10021D1AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v3 = sub_1000040A8(&qword_1003688A0, &qword_100291898);
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v67 = v66 - v4;
  v5 = sub_1000040A8(&qword_1003688A8, &qword_1002918A0);
  __chkstk_darwin(v5 - 8);
  v81 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = v66 - v8;
  v70 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v70);
  v9 = type metadata accessor for DragGesture();
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  __chkstk_darwin(v9);
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000040A8(&qword_1003688B0, &qword_1002918A8);
  v14 = *(v13 - 8);
  v73 = v13;
  v74 = v14;
  __chkstk_darwin(v13);
  v69 = v66 - v15;
  v16 = sub_1000040A8(&qword_1003688B8, &qword_1002918B0);
  v76 = *(v16 - 8);
  v77 = v16;
  __chkstk_darwin(v16);
  v75 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v83 = v66 - v19;
  type metadata accessor for AppEvents();
  sub_10021EBDC(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  v20 = EnvironmentObject.init()();
  v68 = v20;
  v22 = v21;
  v23 = type metadata accessor for TryOutModel(0);
  v66[0] = sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
  v66[1] = v23;
  v24 = EnvironmentObject.init()();
  v26 = v25;
  type metadata accessor for UIMetrics();
  sub_10021EBDC(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v27 = EnvironmentObject.init()();
  *&v84 = v20;
  *(&v84 + 1) = v22;
  *&v85 = v24;
  *(&v85 + 1) = v26;
  *&v86 = v27;
  *(&v86 + 1) = v28;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v29 = swift_allocObject();
  v30 = *(a1 + 80);
  *(v29 + 80) = *(a1 + 64);
  *(v29 + 96) = v30;
  *(v29 + 112) = *(a1 + 96);
  *(v29 + 128) = *(a1 + 112);
  v31 = *(a1 + 16);
  *(v29 + 16) = *a1;
  *(v29 + 32) = v31;
  v32 = *(a1 + 48);
  *(v29 + 48) = *(a1 + 32);
  *(v29 + 64) = v32;
  sub_1001B1D20(a1, &v105);
  sub_10021EBDC(&qword_1003688C0, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  v33 = v69;
  v34 = v71;
  Gesture.onEnded(_:)();

  (*(v72 + 8))(v12, v34);
  v35 = static GestureMask.all.getter();
  sub_10021E580(v35, v36, v37);
  sub_100009274(&qword_1003688D0, &qword_1003688B0, &qword_1002918A8, &protocol conformance descriptor for _EndedGesture<A>);
  v38 = v73;
  View.gesture<A>(_:including:)();
  (*(v74 + 8))(v33, v38);

  v39 = *(a1 + 16);
  if (v39)
  {
    v40 = *(v39 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
    if (v40 && (v41 = *(v40 + 16)) != 0 && *(v41 + 16) == 2)
    {
      v42 = v80;
      (*(v78 + 56))(v80, 1, 1, v79);
    }

    else
    {
      sub_10007389C(&v84);
      v43 = swift_allocObject();
      v44 = *(a1 + 80);
      *(v43 + 80) = *(a1 + 64);
      *(v43 + 96) = v44;
      *(v43 + 112) = *(a1 + 96);
      *(v43 + 128) = *(a1 + 112);
      v45 = *(a1 + 16);
      *(v43 + 16) = *a1;
      *(v43 + 32) = v45;
      v46 = *(a1 + 48);
      *(v43 + 48) = *(a1 + 32);
      *(v43 + 64) = v46;
      sub_1001B1D20(a1, &v105);
      v47 = static Alignment.center.getter();
      v49 = v48;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_10021E5D4;
      *(v50 + 24) = v43;
      v91[2] = v86;
      v91[3] = v87;
      v91[0] = v84;
      v91[1] = v85;
      *&v92 = sub_10021E088;
      *(&v92 + 1) = 0;
      *&v93 = v47;
      *(&v93 + 1) = v49;
      v99 = v84;
      v100 = v85;
      v103 = v92;
      v104 = v93;
      v101 = v86;
      v102 = v87;
      v94[2] = v86;
      v94[3] = v87;
      v94[0] = v84;
      v94[1] = v85;
      v95 = sub_10021E088;
      v96 = 0;
      v97 = v47;
      v98 = v49;
      sub_100006C20(v91, &v105, &qword_1003688D8, &qword_1002918B8);
      sub_100008FA0(v94, &qword_1003688D8, &qword_1002918B8);
      v86 = v101;
      v87 = v102;
      v88 = v103;
      v89 = v104;
      v84 = v99;
      v85 = v100;
      *&v90 = sub_10021E660;
      *(&v90 + 1) = v50;
      v105 = *(a1 + 64);
      LOBYTE(v106) = *(a1 + 80);
      sub_1000040A8(&qword_100368850, &qword_100291810);
      FocusState.projectedValue.getter();
      sub_1000040A8(&qword_1003688E0, &qword_1002918C0);
      sub_10021E668();
      v51 = v67;
      View.focused(_:)();

      v109 = v88;
      v110 = v89;
      v111 = v90;
      v105 = v84;
      v106 = v85;
      v107 = v86;
      v108 = v87;
      sub_100008FA0(&v105, &qword_1003688E0, &qword_1002918C0);
      if (qword_100353B78 != -1)
      {
        swift_once();
      }

      v52 = *(&xmmword_100368808 + 1);
      v53 = (v51 + *(sub_1000040A8(&qword_100368920, &qword_1002918D8) + 36));
      *v53 = v52;
      v53[1] = sub_10021DB98;
      v53[2] = 0;
      v54 = v79;
      v42 = v80;
      v55 = (v51 + *(v79 + 36));
      *v55 = xmmword_100368808;
      v55[1] = sub_10021DBC0;
      v55[2] = 0;
      sub_10000CF4C(v51, v42, &qword_1003688A0, &qword_100291898);
      (*(v78 + 56))(v42, 0, 1, v54);
    }

    v56 = v75;
    v57 = v76;
    v58 = *(v76 + 16);
    v59 = v83;
    v60 = v77;
    v58(v75, v83, v77);
    v61 = v81;
    sub_100006C20(v42, v81, &qword_1003688A8, &qword_1002918A0);
    v62 = v82;
    v58(v82, v56, v60);
    v63 = sub_1000040A8(&qword_100368928, &qword_1002918E0);
    sub_100006C20(v61, &v62[*(v63 + 48)], &qword_1003688A8, &qword_1002918A0);
    sub_100008FA0(v42, &qword_1003688A8, &qword_1002918A0);
    v64 = *(v57 + 8);
    v64(v59, v60);
    sub_100008FA0(v61, &qword_1003688A8, &qword_1002918A0);
    return (v64)(v56, v60);
  }

  else
  {
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10021DBE8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
    if (v2 && *(v2 + 16))
    {

      sub_10003FC00();
    }
  }

  else
  {
    type metadata accessor for TryOutModel(0);
    sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_10021DCBC(uint64_t a1, __int16 *a2, uint64_t a3)
{
  if (qword_100353A58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381D58);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v14 = v8;
    *v7 = 136446210;
    sub_1000040A8(&qword_1003618D0, &qword_100289D90);
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Demo transcript: TryOut state changed: %{public}s", v7, 0xCu);
    sub_100008964(v8);
  }

  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = *(v12 + 56);
    if (v13 >= 0x4000 && (v13 >> 9 > 0x7E || (v13 & 0xC000) != 0x4000))
    {
      v14 = *(a3 + 64);
      v15 = *(a3 + 80);
      sub_1000040A8(&qword_100368850, &qword_100291810);
      FocusState.wrappedValue.setter();
    }
  }

  else
  {
    type metadata accessor for TryOutModel(0);
    sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10021DF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10021ED10(a1, a2, a3);
  result = VerticalAlignment.init(_:)();
  qword_1003687F8 = result;
  return result;
}

uint64_t sub_10021DFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10021ED64(a1, a2, a3);
  result = HorizontalAlignment.init(_:)();
  qword_100368800 = result;
  return result;
}

uint64_t sub_10021DFF0()
{
  if (qword_100353B70 != -1)
  {
    result = swift_once();
  }

  v0 = qword_100368800;
  if (qword_100353B68 != -1)
  {
    result = swift_once();
  }

  *&xmmword_100368808 = v0;
  *(&xmmword_100368808 + 1) = qword_1003687F8;
  return result;
}

void sub_10021E088(uint64_t *a2@<X8>)
{
  v3 = static Color.clear.getter();
  GeometryProxy.size.getter();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_10021E0C8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_10021EBDC(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for TryOutModel(0);
  sub_10021EBDC(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
  v5 = EnvironmentObject.init()();
  v7 = v6;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  result = FocusState.init<>()();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = result & 1;
  *(a1 + 72) = v10;
  *(a1 + 80) = v9 & 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = sub_10004DD1C;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

__n128 sub_10021E248(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10021E274(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10021E2D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10021E384()
{
  result = qword_100368840;
  if (!qword_100368840)
  {
    v1 = sub_100008CF0(&qword_1003618D0, &qword_100289D90);
    sub_10021E408(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368840);
  }

  return result;
}

unint64_t sub_10021E408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368848;
  if (!qword_100368848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368848);
  }

  return result;
}

unint64_t sub_10021E4C0()
{
  result = qword_100368878;
  if (!qword_100368878)
  {
    sub_100008CF0(&qword_100368870, &qword_100291830);
    sub_100009274(&qword_100368880, &qword_100368888, &qword_100291838, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368878);
  }

  return result;
}

unint64_t sub_10021E580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003688C8;
  if (!qword_1003688C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003688C8);
  }

  return result;
}

uint64_t sub_10021E628()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10021E668()
{
  result = qword_1003688E8;
  if (!qword_1003688E8)
  {
    sub_100008CF0(&qword_1003688E0, &qword_1002918C0);
    sub_10021E720();
    sub_100009274(&qword_100368910, &qword_100368918, &qword_1002918D0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003688E8);
  }

  return result;
}

unint64_t sub_10021E720()
{
  result = qword_1003688F0;
  if (!qword_1003688F0)
  {
    v1 = sub_100008CF0(&qword_1003688D8, &qword_1002918B8);
    sub_10021E7D8(v1, v2, v3);
    sub_100009274(&qword_100368900, &qword_100368908, &qword_1002918C8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003688F0);
  }

  return result;
}

unint64_t sub_10021E7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003688F8;
  if (!qword_1003688F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003688F8);
  }

  return result;
}

uint64_t sub_10021E844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10021BBB8(a1, v2 + v6, v7, a2);
}

uint64_t sub_10021E8F8()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 129) & ~v3;
  v5 = *(v2 + 64);

  sub_1000502D0(*(v0 + 112), *(v0 + 120));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10021E9E8(uint64_t *a1)
{
  type metadata accessor for ScrollViewProxy();

  sub_10021CC2C(a1, (v1 + 16));
}

uint64_t sub_10021EA74(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  sub_1000502D0(*(v1 + v6 + 96), *(v1 + v6 + 104));

  return _swift_deallocObject(v1, v6 + 113, v4 | 7);
}

uint64_t sub_10021EB48()
{
  v1 = *(type metadata accessor for ScrollViewProxy() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10021D0D0(v0 + v2, v3);
}

uint64_t sub_10021EBDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10021EC40()
{

  sub_1000502D0(*(v0 + 112), *(v0 + 120));

  return _swift_deallocObject(v0, 129, 7);
}

unint64_t sub_10021ED10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003689A0;
  if (!qword_1003689A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003689A0);
  }

  return result;
}

unint64_t sub_10021ED64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003689A8;
  if (!qword_1003689A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003689A8);
  }

  return result;
}

uint64_t sub_10021EDE8()
{
  sub_100008CF0(&qword_100368818, &qword_1002917E8);
  sub_100008CF0(&qword_1003618D0, &qword_100289D90);
  sub_100009274(&qword_100368838, &qword_100368818, &qword_1002917E8, &protocol conformance descriptor for ZStack<A>);
  sub_10021E384();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10021EECC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 88;
  v5 = 1;
  do
  {
    v6 = (a1 + 32 * v5++);
    v7 = v4;
    v8 = v3;
    while (v1 != ++v8)
    {
      v9 = v7 + 32;
      v10 = CGRectIntersectsRect(*(v7 - 24), *v6);
      v7 = v9;
      if (v10)
      {
        return 1;
      }
    }

    result = 0;
    ++v3;
    v4 += 32;
  }

  while (v5 != v1);
  return result;
}

uint64_t UIContentSizeCategory.debugDescription.getter(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v4)
  {

    return 20053;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 20053;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    return 21336;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return 21336;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

    return 83;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    return 83;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

    return 77;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    return 77;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

    return 76;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    return 76;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

    return 19544;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    return 19544;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

    return 5003352;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    return 5003352;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {

    return 1280858200;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    return 1280858200;
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;
  if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
  {

    return 3233857;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    return 3233857;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {

    return 3299393;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
    return 3299393;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;
  if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
  {

    return 3364929;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
    return 3364929;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v61 == v62)
  {

    return 3430465;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v63)
  {
    return 3430465;
  }

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
  {

    return 3496001;
  }

  else
  {
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v68)
    {
      return 3496001;
    }

    else
    {
      return 63;
    }
  }
}

unint64_t sub_10021F69C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x53746E6572727563;
    v5 = 0x7361655274697865;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    if (a1 == 6)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0xD000000000000019;
    if (a1 == 4)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

void sub_10021F7D8(uint64_t a1, char a2)
{
  v3 = *(v2 + 104);
  if (a2)
  {
    if (*(v2 + 104))
    {
      return;
    }

    goto LABEL_7;
  }

  if (*(v2 + 96) != a1)
  {
    v3 = 1;
  }

  if (v3)
  {
LABEL_7:
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381CC8);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      sub_1000040A8(&qword_100358098, &qword_10028AE60);
      v8 = String.init<A>(describing:)();
      v10 = sub_10017C9E8(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Connectivity state generation = %s", v6, 0xCu);
      sub_100008964(v7);
    }

    else
    {
    }
  }
}

void sub_10021F9A4()
{
  v1 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  *(*(v0 + 56) + 32) = 0;

  *(v0 + 64) = &_swiftEmptySetSingleton;

  sub_10021FE40();
  *(v0 + 72) = 2;
  sub_10021FE40();
  *(v0 + 73) = 34144771;
  *(v0 + 80) = 0;

  *(v0 + 88) = 2;
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  sub_10021F7D8(v4, v5);
  *(v0 + 105) = 2;
  v6 = type metadata accessor for DispatchTime();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__lastMainSceneIsExpectedToBeForegoundSoonAt;
  swift_beginAccess();
  sub_10002B4A0(v3, v0 + v7);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__everSeenConnectedInCone) = 2;
  v8 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer;
  [*(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer) invalidate];
  v9 = *(v0 + v8);
  *(v0 + v8) = 0;
}

void sub_10021FB28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 64);
  v19 = v5;
  if (a1)
  {

    v5 = sub_10021FD64(v6, v5);
    v19 = v5;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    sub_100222EC0(a2);
    v5 = v19;
  }

LABEL_4:
  if (sub_100204870())
  {
  }

  else
  {
    *(v3 + 64) = v5;

    sub_10021FE40();
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000F53C(v7, qword_100381CC8);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      sub_100222FB4(v10, v11, v12);

      v13 = Set.description.getter();
      v15 = v14;

      v16 = sub_10017C9E8(v13, v15, &v18);

      *(v9 + 4) = v16;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Assertions: %{public}s", v9, 0xCu);
      sub_100008964(v10);
    }
  }
}

uint64_t sub_10021FD64(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1000FCB54(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10021FE40()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  if (v2 != 2 && (v2 & 1) != 0 || *(*(v0 + 64) + 16))
  {
    if (v1[4])
    {
      return;
    }

    v3 = v1[2];
    v4 = v1[3];
    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();

    v1[4] = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, v3, v4);
  }

  else
  {
    v1[4] = 0;
  }
}

void sub_10021FF1C(char a1)
{
  v3 = *(v1 + 72);
  if (v3 == 2 || (v3 & 1) == 0) && (a1 & 1) != 0 && ((sub_100071A54() & 1) != 0 || (sub_100071A54()))
  {
    PassthroughSubject.send(_:)();
  }

  *(v1 + 72) = a1 & 1;
  sub_10021FE40();
}

void sub_10021FFA8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(*(Strong + 64) + 96);

    swift_unknownObjectRelease();
    v4 = *(*(v3 + 48) + 136);

    v5 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__everSeenConnectedInCone;
    v6 = *(v1 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__everSeenConnectedInCone);
    if ((v6 == 2 || (v6 & 1) == 0) && !v4)
    {
      if (qword_100353A28 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000F53C(v7, qword_100381CC8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "First time user is connected and oriented, CA banner is less sticky now", v10, 2u);
      }

      v4 = 0;
      *(v1 + v5) = 1;
    }
  }

  else
  {
    v4 = 9;
  }

  if (*(v1 + 75) > 1u)
  {
    goto LABEL_14;
  }

  if (v4 == 2)
  {
    *(v1 + 75) = 2;
  }

  else
  {
    if (v4 == 9)
    {
LABEL_14:
      *(v1 + 75) = v4;
      goto LABEL_27;
    }

    *(v1 + 75) = v4;
    if (v4 != 5)
    {
      goto LABEL_27;
    }
  }

  v11 = sub_100234000(&off_1003234F8);
  aBlock[0] = v11;
  v12 = *(v1 + 76);
  if (v12 != 2 && (v12 & 1) != 0)
  {

    if (sub_10024EEA4())
    {
    }

    else
    {
      sub_1000FCB54(&v36, 4);

      v11 = aBlock[0];
    }
  }

  sub_10021FB28(v11, 0);

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381CC8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    sub_100222FB4(v17, v18, v19);

    v20 = Set.description.getter();
    v22 = v21;

    v23 = sub_10017C9E8(v20, v22, aBlock);

    *(v16 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "onConnectivityModelDidChange userActionRequired: assertions, %{public}s", v16, 0xCu);
    sub_100008964(v17);
  }

LABEL_27:
  if ((sub_10024EEA4() & 1) != 0 && (sub_100071A54() & 1) != 0 && (sub_10024EACC() & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer;
    if (!*(v1 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer))
    {
      if (qword_100353A28 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000F53C(v27, qword_100381CC8);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Dismissing CA banner cause connection assistance is not required anymore, starting a convenience timer", v30, 2u);
      }

      v31 = objc_opt_self();
      v32 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_100223008;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10008137C;
      aBlock[3] = &unk_100339378;
      v33 = _Block_copy(aBlock);

      v34 = [v31 scheduledTimerWithTimeInterval:0 repeats:v33 block:3.0];
      _Block_release(v33);
      v35 = *(v1 + v26);
      *(v1 + v26) = v34;
    }
  }

  else
  {
    v24 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer;
    [*(v1 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer) invalidate];
    v25 = *(v1 + v24);
    *(v1 + v24) = 0;
  }
}

uint64_t sub_100220518(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100220570();
  }

  return result;
}

double sub_100220570()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer;
  [*(v1 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer) invalidate];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  if ((sub_10024EEA4() & 1) != 0 && (sub_100071A54() & 1) != 0 && (sub_10024EACC() & 1) == 0)
  {
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F53C(v5, qword_100381CC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Dismissing CA banner cause connection assistance is not required anymore", v8, 2u);
    }

    v9 = sub_100234000(&off_100323C50);
    sub_10021FB28(0, v9);

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  return result;
}

void sub_100220718(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions;
  if (!*(v2 + 80) || (sub_100204870() & 1) == 0)
  {
    *(v2 + 80) = *(a1 + v4);

    v5 = sub_10022082C(a1, v2);
    v6 = v5;
    v7 = *(v2 + 88);
    if (v7 != 2 && (v7 & 1) == 0 && (v5 & 1) != 0)
    {
      v8 = sub_100234000(&off_100323548);
      v11 = v8;
      v9 = *(v2 + 76);
      if (v9 != 2 && (v9 & 1) != 0)
      {

        if (sub_10024EEA4())
        {
        }

        else
        {
          sub_1000FCB54(&v10, 4);

          v8 = v11;
        }
      }

      sub_10021FB28(v8, 0);
    }

    *(v2 + 88) = v6 & 1;
  }
}

uint64_t sub_10022082C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions;
  sub_100234014(&off_100323520);
  v5 = sub_100204870();

  if ((v5 & 1) != 0 || !*(*(a1 + v4) + 16))
  {
LABEL_13:
    v11 = 0;
    return v11 & 1;
  }

  if (sub_10024EEA4())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = Strong;
    if (Strong)
    {
      v8 = *(*(Strong + 64) + 72);

      swift_unknownObjectRelease();
      v9 = *(*(v8 + 56) + 144);

      v10 = *(a2 + 96);
      if (*(a2 + 104))
      {
        v11 = 1;
LABEL_11:
        *(a2 + 96) = v9;
        *(a2 + 104) = v7 == 0;
        sub_10021F7D8(v10, v11);
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = *(*(v12 + 64) + 72);

          swift_unknownObjectRelease();
          v14 = *(*(v13 + 56) + 136);

          if (v14 != 2)
          {
            v11 = v14 ^ 1;
            return v11 & 1;
          }
        }

        goto LABEL_13;
      }

      v11 = 0;
      if (v10 != v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      if ((*(a2 + 104) & 1) == 0)
      {
        v9 = 0;
        v10 = *(a2 + 96);
        goto LABEL_11;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

double sub_100220988(char a1)
{
  if (a1 != 2 && (a1 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (!*(*(v1 + 64) + 16))
  {
    v2 = a1;
    v3 = v1;
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381CC8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "REVIEW THIS USE CASE (not user initiated and no assertions held). Forcing currentState for now.", v7, 2u);
    }

    v1 = v3;
    a1 = v2;
  }

  if ((a1 == 2 || (a1 & 1) == 0) && *(*(v1 + 64) + 16))
  {
    v8 = &_swiftEmptySetSingleton;
  }

  else
  {
LABEL_13:
    v8 = sub_100234000(&off_1003233B8);
  }

  v12 = v8;
  v9 = *(v1 + 76);
  if (v9 != 2 && (v9 & 1) != 0)
  {

    if (sub_10024EEA4())
    {
    }

    else
    {
      sub_1000FCB54(&v11, 4);

      v8 = v12;
    }
  }

  sub_10021FB28(v8, 0);

  return result;
}

void sub_100220B48(uint64_t a1)
{
  if (a1 != 2 && (a1 & 1) == 0)
  {
    v2 = &_swiftEmptySetSingleton;
    v16 = &_swiftEmptySetSingleton;
    v3 = *(v1 + 76);
    if (v3 != 2 && (v3 & 1) != 0 && (sub_10024EEA4() & 1) == 0)
    {
      sub_1000FCB54(&v15, 4);
      v2 = v16;
    }

    if (v2[2])
    {
      sub_10021FB28(v2, 0);

      if (qword_100353A28 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000F53C(v4, qword_100381CC8);

      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v16 = v7;
        *v6 = 136446210;
        sub_100222FB4(v7, v8, v9);

        v10 = Set.description.getter();
        v12 = v11;

        v13 = sub_10017C9E8(v10, v12, &v16);

        *(v6 + 4) = v13;
        _os_log_impl(&_mh_execute_header, oslog, v5, "onScreenLockedDidChange: assertions: %{public}s", v6, 0xCu);
        sub_100008964(v7);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_100220D94()
{
  v1 = *(v0 + 105);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (sub_10024EACC())
    {
      v2 = sub_100234000(&off_100323408);
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    v16 = v2;
    v3 = *(v0 + 76);
    if (v3 != 2 && (v3 & 1) != 0)
    {

      if (sub_10024EEA4())
      {
      }

      else
      {
        sub_1000FCB54(&v15, 4);

        v2 = v16;
      }
    }

    sub_10021FB28(v2, 0);

    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000F53C(v4, qword_100381CC8);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136446210;
      sub_100222FB4(v7, v8, v9);

      v10 = Set.description.getter();
      v12 = v11;

      v13 = sub_10017C9E8(v10, v12, &v16);

      *(v6 + 4) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v5, "onGuidanceUIRequiredDidChange: assertions: %{public}s", v6, 0xCu);
      sub_100008964(v7);
    }

    else
    {
    }
  }
}

void sub_100220FE8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 17);
  v4 = v1[74];
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 65);
    v7 = sub_100071A54();
    if (v4 != 2 && ((v7 & v6 ^ v4) & 1) == 0)
    {
      goto LABEL_20;
    }

    v8 = sub_100071A54();
    v9 = (v8 ^ 1) & v6;
    if ((v8 ^ 1) & 1) == 0 && (v6)
    {
      v10 = sub_100234000(&off_1003232A0);
      v53 = v10;
      v11 = v2[76];
      if (v11 != 2 && (v11 & 1) != 0)
      {

        if (sub_10024EEA4())
        {
        }

        else
        {
          sub_1000FCB54(&v52, 4);

          v10 = v53;
        }
      }

      sub_10021FB28(v10, 0);

      if (qword_100353A28 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000F53C(v13, qword_100381CC8);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53 = v51;
        *v16 = 136446210;
        sub_100222FB4(v51, v17, v18);

        v19 = Set.description.getter();
        v21 = v20;

        v22 = sub_10017C9E8(v19, v21, &v53);

        *(v16 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "isEmergencyCallAvailable changed to true: assertions, %{public}s", v16, 0xCu);
        sub_100008964(v51);
      }

      v9 = 1;
    }

    v12 = sub_100071A54() & v9 & 1;
  }

  else
  {
    if (v4 == 2)
    {
      goto LABEL_20;
    }

    v12 = 2;
  }

  v2[74] = v12;
LABEL_20:
  v23 = v2[73];
  if (v5)
  {
    v24 = v3;
  }

  else
  {
    v24 = 3;
  }

  if (v23 != 3)
  {
    if (v23 == v24)
    {
      return;
    }

    if (v5)
    {
      if (v23 == 2)
      {
        if (v3 == 1)
        {
          v38 = sub_100234000(&off_100323318);
          v39 = sub_100234000(&off_100323340);
          sub_10021FB28(v38, v39);

          if (qword_100353A28 != -1)
          {
            swift_once();
          }

          v40 = type metadata accessor for Logger();
          sub_10000F53C(v40, qword_100381CC8);

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v53 = v44;
            *v43 = 136446210;
            sub_100222FB4(v44, v45, v46);

            v47 = Set.description.getter();
            v49 = v48;

            v50 = sub_10017C9E8(v47, v49, &v53);

            *(v43 + 4) = v50;
            _os_log_impl(&_mh_execute_header, v41, v42, "satelliteDidRecover: assertions, %{public}s", v43, 0xCu);
            sub_100008964(v44);
          }

          LOBYTE(v3) = 1;
        }
      }

      else if (v23 == 1 && v3 == 2)
      {
        v25 = sub_100234000(&off_1003232C8);
        v26 = sub_100234000(&off_1003232F0);
        sub_10021FB28(v25, v26);

        if (qword_100353A28 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000F53C(v27, qword_100381CC8);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v53 = v31;
          *v30 = 136446210;
          sub_100222FB4(v31, v32, v33);

          v34 = Set.description.getter();
          v36 = v35;

          v37 = sub_10017C9E8(v34, v36, &v53);

          *(v30 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v28, v29, "internetDidRecover: assertions, %{public}s", v30, 0xCu);
          sub_100008964(v31);
        }

        LOBYTE(v3) = 2;
      }
    }

    else
    {
      LOBYTE(v3) = 3;
    }

    goto LABEL_43;
  }

  if (v24 != 3)
  {
LABEL_43:
    v2[73] = v3;
  }
}

uint64_t sub_1002215FC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - v15;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000F53C(v17, qword_100381CC8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "mainSceneIsExpectedToBeForegroundSoon", v20, 2u);
  }

  static DispatchTime.now()();
  (*(v8 + 56))(v16, 0, 1, v7);
  v21 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__lastMainSceneIsExpectedToBeForegoundSoonAt;
  swift_beginAccess();
  sub_10002B4A0(v16, v1 + v21);
  swift_endAccess();
  sub_10000F574();
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v8 + 8);
  v30 = v7;
  v31 = v23;
  v23(v10, v7);
  v24 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100222414;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100339350;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100071864();
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
  v26 = v32;
  v27 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);

  (*(v35 + 8))(v26, v27);
  (*(v33 + 8))(v6, v34);
  return v31(v13, v30);
}

uint64_t sub_100221AFC(uint64_t a1)
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "mainSceneIsExpectedToBeForegroundSoon timeout expired", v4, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  return result;
}

uint64_t sub_100221C74()
{
  v1 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__lastMainSceneIsExpectedToBeForegoundSoonAt;
  swift_beginAccess();
  sub_1001451C0(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10012C414(v3);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  static DispatchTime.now()();
  v13 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v13)
  {
    v16 = *(v5 + 8);
    v16(v7, v4);
    v18 = 0;
  }

  else
  {
    v14 = DispatchTime.uptimeNanoseconds.getter();
    v15 = DispatchTime.uptimeNanoseconds.getter();
    v16 = *(v5 + 8);
    result = (v16)(v7, v4);
    v17 = v14 - v15;
    if (v14 < v15)
    {
      __break(1u);
      return result;
    }

    if (v17 > 0xEE6B27F)
    {
      v16(v10, v4);
      return 0;
    }

    v18 = v17 / 0xF4240uLL;
  }

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000F53C(v19, qword_100381CC8);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134349056;
    *(v22 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v20, v21, "Delaying banner, mainSceneIsExpectedToBeForegroundSoon was called %{public}llu ms ago", v22, 0xCu);
  }

  v16(v10, v4);
  return 1;
}

void *sub_100221FB4()
{

  sub_10002B558(v0 + 40);

  sub_10012C414(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__lastMainSceneIsExpectedToBeForegoundSoonAt);

  return v0;
}

uint64_t sub_100222034()
{
  sub_100221FB4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionUserAttentionTracker(uint64_t a1)
{
  result = qword_1003689D8;
  if (!qword_1003689D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002220E0(uint64_t a1)
{
  sub_10002B388(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1002221F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368D10;
  if (!qword_100368D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368D10);
  }

  return result;
}

uint64_t sub_100222248()
{
  sub_1000040A8(&unk_100365610, &unk_100279630);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  sub_1000040A8(&qword_100356508, &unk_1002797D0);
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  sub_1000040A8(&unk_100359B30, &unk_10027DCF0);
  swift_allocObject();
  *(v0 + 32) = PassthroughSubject.init()();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for PreventSuspension();
  v1 = swift_allocObject();
  v1[3] = 0x80000001002A56A0;
  v1[4] = 0;
  v1[2] = 0xD00000000000001BLL;
  *(v0 + 56) = v1;
  *(v0 + 64) = &_swiftEmptySetSingleton;
  *(v0 + 72) = 151126786;
  *(v0 + 76) = 2;
  *(v0 + 80) = 0;
  *(v0 + 88) = 2;
  *(v0 + 96) = 0;
  *(v0 + 104) = 513;
  v2 = OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__lastMainSceneIsExpectedToBeForegoundSoonAt;
  v3 = type metadata accessor for DispatchTime();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__everSeenConnectedInCone) = 2;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__explorerConnectedTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionUserAttentionTracker__initialConnectionTimer) = 0;
  return v0;
}

uint64_t sub_1002223DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10022241C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100222434(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000FDAB0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100222988(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_100222570(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100222814(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = *(v14 + 16) == v8 && *(v14 + 24) == v9;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v1;
  v19 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000FDC0C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100222B4C(v12);
  result = v18;
  *v1 = v19;
  return result;
}

uint64_t sub_10022270C(unsigned __int8 a1)
{
  v3 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 9;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 9;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000FDD5C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_100222D18(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_100222814(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_1000FCCAC(v6, v5);
  v19 = v7;
  Hasher.init(_seed:)();
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(*(v7 + 48) + 8 * v12);
      v15 = *(v14 + 16) == v8 && *(v14 + 24) == v9;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  v16 = *(*(v7 + 48) + 8 * v12);
  sub_100222B4C(v12);
  v17 = v8 == *(v16 + 16) && v9 == *(v16 + 24);
  if (v17 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *v3 = v19;
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100222988(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100222B4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100222D18(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v10);
        v11 = Hasher._finalize()() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100222EC0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_10022270C(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

unint64_t sub_100222FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368D18;
  if (!qword_100368D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368D18);
  }

  return result;
}

uint64_t sub_100223018(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id sub_10022310C()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy28ApplicationActiveStateSource_appForegroundDidChange;
  sub_1000040A8(&unk_100359B30, &unk_10027DCF0);
  swift_allocObject();
  *&v0[v1] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC8SOSBuddy28ApplicationActiveStateSource_observers] = _swiftEmptyArrayStorage;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ApplicationActiveStateSource();
  v2 = objc_msgSendSuper2(&v18, "init");
  v3 = qword_100353A10;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = v4;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10017C9E8(v12, v14, &v17);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "init: %{public}s", v8, 0xCu);
    sub_100008964(v9);
  }

  else
  {
  }

  return v4;
}

id sub_100223338()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  active = type metadata accessor for ApplicationActiveStateSource();
  v16.receiver = v2;
  v16.super_class = active;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_100223578()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "ApplicationActiveStateSource::start", v10, 2u);
  }

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  v13 = objc_opt_self();
  v14 = [v13 mainQueue];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_100223EC8;
  v30 = v15;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100223018;
  v28 = &unk_1003393C8;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v14 usingBlock:v16];
  _Block_release(v16);

  v18 = OBJC_IVAR____TtC8SOSBuddy28ApplicationActiveStateSource_observers;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v19 = [v11 defaultCenter];
  v20 = [v13 mainQueue];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_100223F08;
  v30 = v21;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100223018;
  v28 = &unk_1003393F0;
  v22 = _Block_copy(&aBlock);

  v23 = [v19 addObserverForName:UIApplicationDidEnterBackgroundNotification object:0 queue:v20 usingBlock:v22];
  _Block_release(v22);

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return 1;
}

void *sub_100223A64(uint64_t a1, uint64_t a2, const char *a3, char a4)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a3, v8, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;

    PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_100223BA4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381C80);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "ApplicationActiveStateSource::stop", v10, 2u);
  }

  v11 = OBJC_IVAR____TtC8SOSBuddy28ApplicationActiveStateSource_observers;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_14:
    *(v1 + v11) = _swiftEmptyArrayStorage;

    return;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_7:
  v14 = objc_opt_self();
  if (v13 >= 1)
  {
    v15 = v14;
    v19 = v1;

    v16 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v12 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      ++v16;
      v18 = [v15 defaultCenter];
      [v18 removeObserver:v17];
      swift_unknownObjectRelease();
    }

    while (v13 != v16);

    v1 = v19;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_100223E90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100223EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100223F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  v94 = a2;
  v112 = a5;
  v7 = sub_1000040A8(&qword_100368D58, &unk_100291D20);
  v110 = *(v7 - 8);
  v111 = v7;
  __chkstk_darwin(v7);
  v107 = (&v86 - v8);
  v9 = sub_1000040A8(&qword_100365470, &qword_10028E310);
  v104 = *(v9 - 8);
  v105 = v9;
  __chkstk_darwin(v9);
  v95 = (&v86 - v10);
  v11 = sub_1000040A8(&qword_100365478, &unk_100291D30);
  __chkstk_darwin(v11 - 8);
  v106 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v108 = &v86 - v14;
  v103 = type metadata accessor for OpacityTransition();
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000040A8(&qword_100357818, &qword_10027B560);
  v101 = *(v16 - 8);
  v102 = v16;
  __chkstk_darwin(v16);
  v98 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v99 = &v86 - v19;
  v20 = type metadata accessor for Font.Leading();
  v96 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000040A8(&qword_100368D60, &qword_100291D40);
  __chkstk_darwin(v23 - 8);
  v109 = &v86 - v24;
  if (a3)
  {
    v25 = a3[9];
    v26 = a3[10];
    sub_1000088DC(a3 + 6, v25);
    v27 = *(v26 + 16);

    v27(v153, v25, v26);
    if (a1)
    {
      v28 = *(a1 + 48);
      if (v28)
      {
        v29 = *(v28 + 24);
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = *(v28 + 16);
          if ((v30 & 0xFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_17;
          }

LABEL_9:
          v87._countAndFlagsBits = v30;

          v88 = a1;
          sub_1001DE260();
          if (v32)
          {
            v34 = v31;
          }

          else
          {
            v34 = 0;
          }

          v86 = v34;
          v35 = 0xE000000000000000;
          if (v32)
          {
            v35 = v32;
          }

          v90 = v35;
          v120[0] = v30;
          v120[1] = v29;
          v87._object = v29;
          sub_100031770(v31, v32, v33);

          v36 = Text.init<A>(_:)();
          v94 = v37;
          v39 = v38;
          static Font.body.getter();
          static Font.Weight.medium.getter();
          Font.weight(_:)();

          v40 = v96;
          (*(v96 + 104))(v22, enum case for Font.Leading.tight(_:), v20);
          Font.leading(_:)();

          (*(v40 + 8))(v22, v20);
          v41 = v39;
          v42 = v94;
          v43 = Text.font(_:)();
          v45 = v44;
          v47 = v46;
          v93 = v48;

          sub_1000317C4(v36, v42, v41 & 1);

          v49 = a3[9];
          v50 = a3[10];
          sub_1000088DC(a3 + 6, v49);
          (*(v50 + 80))(v49, v50);
          v91 = Text.foregroundColor(_:)();
          v96 = v51;
          LOBYTE(v49) = v52;
          v89 = v53;
          sub_1000317C4(v43, v45, v47 & 1);

          KeyPath = swift_getKeyPath();
          v94 = swift_getKeyPath();
          v54 = v49 & 1;
          LOBYTE(v120[0]) = v49 & 1;
          LOBYTE(v113) = 0;
          v93 = swift_getKeyPath();
          static Alignment.leading.getter();
          _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
          v55 = v97;
          OpacityTransition.init()();
          static Animation.easeInOut.getter();
          v56 = sub_1001CADA4(&qword_100356B88, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
          v57 = v99;
          v58 = v103;
          Transition.animation(_:)();

          (*(v100 + 8))(v55, v58);
          v60 = v101;
          v59 = v102;
          (*(v101 + 16))(v98, v57, v102);
          v120[0] = v58;
          v120[1] = v56;
          swift_getOpaqueTypeConformance2();
          v103 = AnyTransition.init<A>(_:)();
          (*(v60 + 8))(v57, v59);
          strcpy(v120, "GuidanceText-");
          HIWORD(v120[1]) = -4864;
          String.append(_:)(v87);

          v61 = v120[0];
          v102 = v120[1];
          v62 = *(v88 + 48);

          if (v62)
          {
            v63 = *(v62 + 72);
            if (v63)
            {

LABEL_19:
              v65 = static Alignment.top.getter();
              v66 = v95;
              *v95 = v65;
              *(v66 + 8) = v67;
              v68 = sub_1000040A8(&qword_100365498, &unk_10028E3C0);
              sub_100224BC0(v63, v153, v86, v90, v66 + *(v68 + 44));

              v69 = v108;
              sub_10000CF4C(v66, v108, &qword_100365470, &qword_10028E310);
              v70 = 0;
LABEL_21:
              (*(v104 + 56))(v69, v70, 1, v105);
              v71 = v106;
              sub_100006C20(v69, v106, &qword_100365478, &unk_100291D30);
              *(&v118[3] + 8) = v146;
              *(&v118[4] + 8) = v147;
              *(&v118[5] + 8) = v148;
              *(&v118[6] + 8) = v149;
              *(v118 + 8) = v143;
              v72 = v91;
              *&v113 = v91;
              *(&v113 + 1) = v96;
              LOBYTE(v114) = v54;
              *(&v114 + 1) = *v151;
              DWORD1(v114) = *&v151[3];
              v73 = v89;
              *(&v114 + 1) = v89;
              *&v115 = KeyPath;
              *(&v115 + 1) = 3;
              LOBYTE(v116) = 0;
              *(&v116 + 1) = *v150;
              DWORD1(v116) = *&v150[3];
              *(&v116 + 1) = v94;
              LOBYTE(v117) = 0;
              DWORD1(v117) = *&v152[3];
              *(&v117 + 1) = *v152;
              LODWORD(v105) = v54;
              *(&v117 + 1) = v93;
              *&v118[0] = 0x3FE0000000000000;
              *(&v118[1] + 8) = v144;
              *(&v118[2] + 8) = v145;
              v74 = v102;
              *(&v118[7] + 1) = v103;
              *&v119 = v61;
              v75 = v61;
              *(&v119 + 1) = v102;
              v76 = v114;
              v77 = v107;
              *v107 = v113;
              v77[1] = v76;
              v78 = v118[0];
              v77[4] = v117;
              v77[5] = v78;
              v79 = v116;
              v77[2] = v115;
              v77[3] = v79;
              v80 = v118[4];
              v77[8] = v118[3];
              v77[9] = v80;
              v81 = v118[2];
              v77[6] = v118[1];
              v77[7] = v81;
              v82 = v118[6];
              v77[10] = v118[5];
              v77[11] = v82;
              v83 = v119;
              v77[12] = v118[7];
              v77[13] = v83;
              v84 = sub_1000040A8(&qword_100368D68, &qword_100291DD8);
              sub_100006C20(v71, v77 + *(v84 + 48), &qword_100365478, &unk_100291D30);
              sub_100006C20(&v113, v120, &qword_100368D70, &unk_100291DE0);
              sub_100008FA0(v108, &qword_100365478, &unk_100291D30);
              sub_100008FA0(v71, &qword_100365478, &unk_100291D30);
              v136 = v146;
              v137 = v147;
              v138 = v148;
              v139 = v149;
              v133 = v143;
              v134 = v144;
              v120[0] = v72;
              v120[1] = v96;
              v121 = v105;
              *v122 = *v151;
              *&v122[3] = *&v151[3];
              v123 = v73;
              v124 = KeyPath;
              v125 = 3;
              v126 = 0;
              *v127 = *v150;
              *&v127[3] = *&v150[3];
              v128 = v94;
              v129 = 0;
              *&v130[3] = *&v152[3];
              *v130 = *v152;
              v131 = v93;
              v132 = 0x3FE0000000000000;
              v135 = v145;
              v140 = v103;
              v141 = v75;
              v142 = v74;
              sub_100008FA0(v120, &qword_100368D70, &unk_100291DE0);
              v64 = v109;
              sub_10000CF4C(v77, v109, &qword_100368D58, &unk_100291D20);
              (*(v110 + 56))(v64, 0, 1, v111);
              goto LABEL_22;
            }

            v63 = sub_10020327C();

            if (v63)
            {
              goto LABEL_19;
            }
          }

          v70 = 1;
          v69 = v108;
          goto LABEL_21;
        }

        if ((v29 & 0xF00000000000000) != 0)
        {
          v30 = *(v28 + 16);
          goto LABEL_9;
        }
      }

LABEL_17:

      v64 = v109;
      (*(v110 + 56))(v109, 1, 1, v111);
LABEL_22:
      sub_10000CF4C(v64, v112, &qword_100368D60, &qword_100291D40);
      return sub_100008964(v153);
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001CADA4(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for GuidanceMessagesModel();
  sub_1001CADA4(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100224BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v83._countAndFlagsBits = a3;
  v83._object = a4;
  v80 = a5;
  v79 = type metadata accessor for OpacityTransition();
  v76 = *(v79 - 8);
  __chkstk_darwin(v79);
  v75 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000040A8(&qword_100357818, &qword_10027B560);
  v77 = *(v8 - 8);
  v78 = v8;
  __chkstk_darwin(v8);
  v73 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v74 = &v66[-v11];
  v82 = type metadata accessor for Font.Leading();
  v12 = *(v82 - 8);
  __chkstk_darwin(v82);
  v14 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1000040A8(&qword_1003654A0, &unk_100291DF0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v66[-v17];
  v19 = sub_1000040A8(&qword_1003654A8, qword_10028E3D0);
  __chkstk_darwin(v19 - 8);
  v84 = &v66[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v85 = &v66[-v22];
  if (*(a1 + 16) < 2uLL)
  {
    v25 = (*(v16 + 56))(v85, 1, 1, v15);
  }

  else
  {
    v86[0] = a1;
    KeyPath = swift_getKeyPath();
    sub_1000089B0(a2, &v87);
    v23 = swift_allocObject();
    sub_100008A18(&v87._countAndFlagsBits, v23 + 16);

    v72 = sub_1000040A8(&qword_100355E30, &unk_10027A120);
    sub_1000040A8(&qword_1003654B8, &qword_10028E408);
    sub_100009274(&qword_100357870, &qword_100355E30, &unk_10027A120, &protocol conformance descriptor for [A]);
    sub_1001CABD0();
    ForEach<>.init(_:id:content:)();
    v24 = v85;
    (*(v16 + 32))(v85, v18, v15);
    v25 = (*(v16 + 56))(v24, 0, 1, v15);
  }

  v87 = v83;
  sub_100031770(v25, v26, v27);

  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  static Font.subheadline.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v33 = v82;
  (*(v12 + 104))(v14, enum case for Font.Leading.tight(_:), v82);
  Font.leading(_:)();

  (*(v12 + 8))(v14, v33);
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(v33) = v37;

  sub_1000317C4(v28, v30, v32 & 1);

  v38 = [objc_opt_self() secondaryLabelColor];
  Color.init(_:)();
  KeyPath = Text.foregroundColor(_:)();
  v82 = v39;
  v72 = v40;
  LOBYTE(v28) = v41;

  sub_1000317C4(v34, v36, v33 & 1);

  v42 = swift_getKeyPath();
  v68 = v42;
  v71 = swift_getKeyPath();
  LOBYTE(v87._countAndFlagsBits) = v28 & 1;
  LOBYTE(v36) = v28 & 1;
  v67 = v28 & 1;
  LOBYTE(v86[0]) = 0;
  v70 = swift_getKeyPath();
  v69 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v120 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v122[3] + 7) = *(&v122[10] + 8);
  *(&v122[4] + 7) = *(&v122[11] + 8);
  *(&v122[5] + 7) = *(&v122[12] + 8);
  *(&v122[6] + 7) = *(&v122[13] + 8);
  *(v122 + 7) = *(&v122[7] + 8);
  *(&v122[1] + 7) = *(&v122[8] + 8);
  *(&v122[2] + 7) = *(&v122[9] + 8);
  v51 = v75;
  OpacityTransition.init()();
  static Animation.easeInOut.getter();
  v52 = sub_1001CADA4(&qword_100356B88, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v53 = v74;
  v54 = v79;
  Transition.animation(_:)();

  (*(v76 + 8))(v51, v54);
  v56 = v77;
  v55 = v78;
  (*(v77 + 16))(v73, v53, v78);
  v87._countAndFlagsBits = v54;
  v87._object = v52;
  swift_getOpaqueTypeConformance2();
  v79 = AnyTransition.init<A>(_:)();
  (*(v56 + 8))(v53, v55);
  v87._countAndFlagsBits = 0xD000000000000010;
  v87._object = 0x8000000100298BF0;
  String.append(_:)(v83);
  v83._countAndFlagsBits = v87._object;
  v83._object = v87._countAndFlagsBits;
  v57 = v84;
  sub_100006C20(v85, v84, &qword_1003654A8, qword_10028E3D0);
  v58 = v80;
  sub_100006C20(v57, v80, &qword_1003654A8, qword_10028E3D0);
  v59 = *(sub_1000040A8(&qword_1003654B0, qword_100291E00) + 48);
  v60 = v72;
  v86[0] = KeyPath;
  v86[1] = v72;
  LOBYTE(v86[2]) = v36;
  *(&v86[2] + 1) = *v118;
  HIDWORD(v86[2]) = *&v118[3];
  v86[3] = v82;
  v86[4] = v42;
  v86[5] = 3;
  LOBYTE(v86[6]) = 0;
  *(&v86[6] + 1) = *v117;
  HIDWORD(v86[6]) = *&v117[3];
  v62 = v70;
  v61 = v71;
  v86[7] = v71;
  LOBYTE(v86[8]) = 0;
  HIDWORD(v86[8]) = *&v119[3];
  *(&v86[8] + 1) = *v119;
  v86[9] = v70;
  v86[10] = 0x3FE0000000000000;
  LOBYTE(v55) = v69;
  LOBYTE(v86[11]) = v69;
  HIDWORD(v86[11]) = *&v121[3];
  *(&v86[11] + 1) = *v121;
  v86[12] = v44;
  v86[13] = v46;
  v86[14] = v48;
  v86[15] = v50;
  LOBYTE(v86[16]) = 0;
  *(&v86[22] + 1) = v122[3];
  *(&v86[20] + 1) = v122[2];
  *(&v86[18] + 1) = v122[1];
  *(&v86[16] + 1) = v122[0];
  v86[30] = *(&v122[6] + 15);
  *(&v86[28] + 1) = v122[6];
  *(&v86[26] + 1) = v122[5];
  *(&v86[24] + 1) = v122[4];
  v63 = v79;
  v64 = v83;
  v86[31] = v79;
  v86[32] = v83._object;
  v86[33] = v83._countAndFlagsBits;
  memcpy((v58 + v59), v86, 0x110uLL);
  sub_100006C20(v86, &v87, &qword_100365490, &qword_10028E3B8);
  sub_100008FA0(v85, &qword_1003654A8, qword_10028E3D0);
  v87._countAndFlagsBits = KeyPath;
  v87._object = v60;
  v88 = v67;
  *v89 = *v118;
  *&v89[3] = *&v118[3];
  v90 = v82;
  v91 = v68;
  v92 = 3;
  v93 = 0;
  *v94 = *v117;
  *&v94[3] = *&v117[3];
  v95 = v61;
  v96 = 0;
  *&v97[3] = *&v119[3];
  *v97 = *v119;
  v98 = v62;
  v99 = 0x3FE0000000000000;
  v100 = v55;
  *&v101[3] = *&v121[3];
  *v101 = *v121;
  v102 = v44;
  v103 = v46;
  v104 = v48;
  v105 = v50;
  v106 = 0;
  v110 = v122[3];
  v109 = v122[2];
  v108 = v122[1];
  v107 = v122[0];
  *&v113[15] = *(&v122[6] + 15);
  *v113 = v122[6];
  v112 = v122[5];
  v111 = v122[4];
  v114 = v63;
  object = v64._object;
  countAndFlagsBits = v64._countAndFlagsBits;
  sub_100008FA0(&v87, &qword_100365490, &qword_10028E3B8);
  return sub_100008FA0(v84, &qword_1003654A8, qword_10028E3D0);
}

uint64_t sub_100225634@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38[1] = a2;
  v3 = type metadata accessor for Font.Leading();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v40[0] = v7;
  v40[1] = v8;
  sub_100031770(v9, v10, v11);

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v38[0] = v17;
  static Font.subheadline.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  (*(v4 + 104))(v6, enum case for Font.Leading.tight(_:), v3);
  Font.leading(_:)();

  (*(v4 + 8))(v6, v3);
  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1000317C4(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  LOBYTE(v40[0]) = v22 & 1;
  LOBYTE(v39[0]) = 0;
  v27 = swift_getKeyPath();
  v28 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v41 = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v42[6] + 7) = *&v42[21];
  *(&v42[8] + 7) = *&v42[23];
  *(&v42[10] + 7) = *&v42[25];
  *(&v42[12] + 7) = v43;
  *(v42 + 7) = *&v42[15];
  *(&v42[2] + 7) = *&v42[17];
  *(&v42[4] + 7) = *&v42[19];
  v39[0] = v18;
  v39[1] = v20;
  LOBYTE(v39[2]) = v22 & 1;
  v39[3] = v24;
  v39[4] = KeyPath;
  v39[5] = 3;
  LOBYTE(v39[6]) = 0;
  v39[7] = v26;
  LOBYTE(v39[8]) = 0;
  v39[9] = v27;
  v39[10] = 0x3FE0000000000000;
  LOBYTE(v39[11]) = v28;
  v39[12] = v30;
  v39[13] = v32;
  v39[14] = v34;
  v39[15] = v36;
  LOBYTE(v39[16]) = 0;
  *(&v39[24] + 1) = *&v42[8];
  *(&v39[26] + 1) = *&v42[10];
  *(&v39[28] + 1) = *&v42[12];
  *(&v39[16] + 1) = *v42;
  *(&v39[18] + 1) = *&v42[2];
  *(&v39[20] + 1) = *&v42[4];
  *(&v39[22] + 1) = *&v42[6];
  v39[30] = *(&v43 + 1);
  v39[31] = 0;
  LOBYTE(v39[32]) = 0;
  sub_1000040A8(&qword_1003654D0, &qword_10028E410);
  sub_1001CAC8C();
  View.accessibilityHidden(_:)();
  memcpy(v40, v39, 0x101uLL);
  return sub_100008FA0(v40, &qword_1003654D0, &qword_10028E410);
}

uint64_t sub_1002259EC()
{
  sub_100008964((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100225A30()
{
  result = qword_100368D78;
  if (!qword_100368D78)
  {
    sub_100008CF0(&qword_100368D60, &qword_100291D40);
    sub_100009274(&qword_100368D80, &qword_100368D58, &unk_100291D20, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368D78);
  }

  return result;
}

uint64_t sub_100225AE0(uint64_t a1, unint64_t a2, unint64_t a3, __n128 a4)
{
  if (a1 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v4 = a3;
  v5 = a2;
  v6 = a1;
  v56 = 0;
  v57 = 0xE000000000000000;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 != 2)
    {
      return 0;
    }

    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (!v11)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(a3);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v8 = HIDWORD(a2) - a2;
LABEL_11:
  if (v8 < 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_12:
  if (!v8)
  {
    return 0;
  }

  v12 = 0;
  v47 = a2 >> 32;
  v48 = a2;
  v49 = BYTE6(a3);
  v46 = HIDWORD(a2);
  v13 = __OFSUB__(HIDWORD(a2), a2);
  v34 = v13;
  v33 = HIDWORD(a2) - a2;
  v44 = a2 >> 16;
  v45 = a2 >> 8;
  v42 = a2 >> 40;
  v43 = a2 >> 24;
  v40 = HIBYTE(a2);
  v41 = HIWORD(a2);
  v38 = a3 >> 16;
  v39 = a3 >> 8;
  v36 = HIDWORD(a3);
  v37 = a3 >> 24;
  v35 = a3 >> 40;
  v51 = a3;
  v52 = a3 >> 62;
  v50 = v8;
  while (2)
  {
    if (v6 >= 1)
    {
      if (v7 <= 1)
      {
        if (!v7)
        {
          if (v12 >= v49)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          LOBYTE(v55._countAndFlagsBits) = v5;
          BYTE1(v55._countAndFlagsBits) = v45;
          BYTE2(v55._countAndFlagsBits) = v44;
          BYTE3(v55._countAndFlagsBits) = v43;
          BYTE4(v55._countAndFlagsBits) = v46;
          BYTE5(v55._countAndFlagsBits) = v42;
          BYTE6(v55._countAndFlagsBits) = v41;
          HIBYTE(v55._countAndFlagsBits) = v40;
          LOBYTE(v55._object) = v4;
          BYTE1(v55._object) = v39;
          BYTE2(v55._object) = v38;
          BYTE3(v55._object) = v37;
          BYTE4(v55._object) = v36;
          BYTE5(v55._object) = v35;
          v14 = *(&v55._countAndFlagsBits + v12);
LABEL_35:
          v21 = 0;
          v54 = v12 + 1;
          v55._countAndFlagsBits = 0;
          if (v6 >= 8)
          {
            v22 = 8;
          }

          else
          {
            v22 = v6;
          }

          v55._object = 0xE000000000000000;
          do
          {
            if (v21 >= v22)
            {
              __break(1u);
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

            v23 = 7 - v21;
            if ((v23 & 0xFFFFFF00) != 0)
            {
              goto LABEL_63;
            }

            ++v21;
            if (((1 << v23) & v14) == 0 || v23 > 8u)
            {
              v25 = 48;
            }

            else
            {
              v25 = 49;
            }

            v26 = 0xE100000000000000;
            String.append(_:)(*&v25);
          }

          while (v21 != v22);
          String.append(_:)(v55);

          LODWORD(v7) = v52;
          if (v52 <= 1)
          {
            v27 = v49;
            v5 = a2;
            if (v52)
            {
              v27 = v33;
              if (v34)
              {
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }
            }

            goto LABEL_57;
          }

          v5 = a2;
          if (v52 != 2)
          {
            v27 = 0;
            goto LABEL_57;
          }

          v29 = *(a2 + 16);
          v28 = *(a2 + 24);
          v11 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v11)
          {
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_57:
          v11 = __OFSUB__(v27, 1);
          v30 = v27 - 1;
          if (!v11)
          {
            if (v12 < v30)
            {
              v31._countAndFlagsBits = 32;
              v31._object = 0xE100000000000000;
              String.append(_:)(v31);
            }

            v6 -= v22;
            ++v12;
            v4 = v51;
            if (v54 != v50)
            {
              continue;
            }

            return v56;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v12 < v48 || v12 >= v47)
        {
          goto LABEL_67;
        }

        v19 = __DataStorage._bytes.getter();
        if (v19)
        {
          v16 = v19;
          v20 = __DataStorage._offset.getter();
          v18 = v12 - v20;
          if (__OFSUB__(v12, v20))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

          goto LABEL_34;
        }

        goto LABEL_77;
      }

      if (v7 == 2)
      {
        if (v12 < *(v5 + 16))
        {
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v12 >= *(v5 + 24))
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v15 = __DataStorage._bytes.getter();
        if (v15)
        {
          v16 = v15;
          v17 = __DataStorage._offset.getter();
          v18 = v12 - v17;
          if (__OFSUB__(v12, v17))
          {
            goto LABEL_70;
          }

LABEL_34:
          v14 = *(v16 + v18);
          goto LABEL_35;
        }

LABEL_78:
        __break(1u);
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    return v56;
  }
}

void sub_100225EC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
    swift_beginAccess();
    v4 = type metadata accessor for _HapticFeedback.Cached(0);
    v5 = *(v3 + *(v4 + 28));
    v6 = *(*(*(v2[8] + 96) + 48) + 136);
    if (v5 == 9)
    {
      if (((1 << v6) & 0x1DF) == 0)
      {
        if (v6 != 5)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }

LABEL_24:
      v12 = *(v2[8] + 96);

      swift_unknownObjectRelease();
      v13 = *(*(v12 + 48) + 136);

      *(v3 + *(v4 + 28)) = v13;
      return;
    }

    if (v5 == v6)
    {
LABEL_7:
      swift_unknownObjectRelease();
      return;
    }

    if (v6 <= 9)
    {
      if (((1 << v6) & 0x3D8) != 0)
      {
        goto LABEL_24;
      }

      if (v6 == 2)
      {
        if (v5 >= 2)
        {
          goto LABEL_24;
        }

LABEL_14:
        v7 = *(v2[5] + 41);
        if (v7 != 2 && (v7 & 1) != 0)
        {
          v8 = v2[31];
          v9 = v2[32];
          sub_1000088DC(v2 + 28, v8);
          if ((*(v9 + 112))(v8, v9) & 1) != 0 || (sub_100179A30(), (v10))
          {
            sub_10022649C();
          }
        }

        goto LABEL_24;
      }

      if (v6 == 5)
      {
        goto LABEL_14;
      }
    }

    if (*(*(*(v2[8] + 96) + 48) + 136))
    {
      v11 = v5 > 1;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || *(v2[5] + 40) == 6)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }
}

double sub_100226080()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((sub_10017D0A8(&off_1003238D0, *(*(*(Strong + 64) + 56) + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions), v2) & 1) != 0 || (v4 = v3[5], *(v4 + 40) == 6) || (v5 = *(v4 + 41), v5 == 2) || (v5 & 1) == 0)
    {
      v8 = 0;
    }

    else
    {
      v6 = v3[31];
      v7 = v3[32];
      sub_1000088DC(v3 + 28, v6);
      if ((*(v7 + 112))(v6, v7))
      {
        v8 = 1;
      }

      else
      {
        sub_100179A30();
        v8 = v13;
      }
    }

    v9 = v0 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
    swift_beginAccess();
    v10 = type metadata accessor for _HapticFeedback.Cached(0);
    if (sub_100071A54() & 1) != 0 && (v8)
    {
      sub_10022649C();
    }

    v11 = *(v3[8] + 56);

    swift_unknownObjectRelease();
    v12 = *(v11 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions);

    *(v9 + *(v10 + 32)) = v12;
  }

  return v2.n128_f64[0];
}

uint64_t sub_1002261EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 72);

    swift_unknownObjectRelease();
    v2 = *(v1 + 88);

    if (v2)
    {
      swift_beginAccess();
      sub_10003F3D8(v2 + 48, v24);
      v3 = v26;
      if (v26)
      {
        v4 = v27;
        v5 = sub_1000088DC(v25, v26);
        v6 = *(v3 - 8);
        v7 = __chkstk_darwin(v5);
        v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v6 + 16))(v9, v7);

        sub_10003F434(v24);
        v10 = (*(v4 + 24))(v3, v4);

        (*(v6 + 8))(v9, v3);
        v11 = 0;
        goto LABEL_9;
      }

      sub_10003F434(v24);
    }

    v10 = 0;
  }

  else
  {
    v10 = 0;
    v2 = 0;
  }

  v11 = 1;
LABEL_9:
  v12 = v23[1] + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
  swift_beginAccess();
  v13 = type metadata accessor for _HapticFeedback.Cached(0);
  v14 = v12 + *(v13 + 48);
  v15 = *(v14 + 8);
  if (v11)
  {
    if (*(v14 + 8))
    {
      goto LABEL_21;
    }

LABEL_15:
    if (v2)
    {
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {

        swift_unknownObjectRelease();
        v17 = *(v2 + 344);
        v16 = *(v17 + 56);
        v18 = *(v17 + 64);
        v19 = *(v17 + 72);
        v20 = *(v17 + 80);

LABEL_20:
        sub_1002268CC(v10, v11, v16, v18, v19, v20);
        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = 0;
    v19 = 0;
    v20 = 1;
    goto LABEL_20;
  }

  if (v10 != *v14)
  {
    v15 = 1;
  }

  if (v15)
  {
    goto LABEL_15;
  }

LABEL_21:

  v22 = v12 + *(v13 + 48);
  *v22 = v10;
  *(v22 + 8) = v11;
  return result;
}

void sub_10022649C()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v2 - 8);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v28 - v6;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v28 - v13;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v30 = sub_10000F53C(v15, qword_100381D88);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "onUserActionRequired", v18, 2u);
  }

  v19 = v1 + OBJC_IVAR____TtC8SOSBuddy15_HapticFeedback__cached;
  swift_beginAccess();
  v20 = type metadata accessor for _HapticFeedback.Cached(0);
  sub_1001451C0(v19 + *(v20 + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10012C414(v7);
LABEL_7:
    static DispatchTime.now()();
    (*(v9 + 56))(v4, 0, 1, v8);
    swift_beginAccess();
    sub_10002B4A0(v4, v19 + *(v20 + 24));
    swift_endAccess();
    sub_1000A8FD8(1);
    return;
  }

  (*(v9 + 32))(v14, v7, v8);
  static DispatchTime.now()();
  v21 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v21)
  {
    v24 = *(v9 + 8);
    v24(v11, v8);
    v24(v14, v8);
  }

  else
  {
    v28[1] = v1;
    v29 = DispatchTime.uptimeNanoseconds.getter();
    v22 = DispatchTime.uptimeNanoseconds.getter();
    v23 = *(v9 + 8);
    v23(v11, v8);
    v23(v14, v8);
    if (v29 < v22)
    {
      __break(1u);
      return;
    }

    if (v29 - v22 > 0x2CB4177F)
    {
      goto LABEL_7;
    }
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "onUserActionRequired - throttled", v27, 2u);
  }
}

void sub_1002268CC(unint64_t a1, char a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  if (a2 & 1) != 0 || (a6)
  {
    sub_100162C68();
    sub_10015C020();
    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v9 = [objc_opt_self() shouldPlayAudioDuringCountdown];
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1002269BC(a4, a5, a1);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9 ^ 1;
    }

    sub_1001628DC(v11, 0, 0);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1001A7A14(2);
    if (v9)
    {
LABEL_15:
      sub_10015BCBC(0.5);
    }
  }
}

uint64_t sub_1002269BC(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    v7 = a3 >= 1 && a3 > a1 >> 1;
    return !v7;
  }

  result = 2;
  if (a3 >= 1 && a2 < a3)
  {
    v5 = __CFADD__(a1, a2);
    v6 = a1 + a2;
    if (v5)
    {
      __break(1u);
      return result;
    }

    v7 = a3 > v6 >> 1;
    return !v7;
  }

  return result;
}

uint64_t sub_100226A00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100226A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100226ACC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = v2[9];
    v5 = v2[10];
    sub_1000088DC(v2 + 6, v4);
    v6 = *(v5 + 24);

    v6(v22, v4, v5);
    sub_100226D18(v23);

    v7 = v2[9];
    v8 = v2[10];
    sub_1000088DC(v2 + 6, v7);
    (*(v8 + 24))(v21, v7, v8);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0x402C000000000000;
    *(a1 + 16) = 0;
    v9 = sub_1000040A8(&qword_100368D88, &qword_100291EF8);
    sub_10022710C(v1, &v23[0]._countAndFlagsBits, a1 + *(v9 + 44));
    v26 = v23[0];
    sub_100032674(&v26);
    v25 = v23[1];
    sub_100032674(&v25);
    v24 = v23[2];
    sub_100032674(&v24);
    sub_100008964(v21);
    v10 = static Edge.Set.bottom.getter();
    if (qword_100353988 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = a1 + *(sub_1000040A8(&qword_100368D90, &unk_100291F00) + 36);
    *v19 = v10;
    *(v19 + 8) = v12;
    *(v19 + 16) = v14;
    *(v19 + 24) = v16;
    *(v19 + 32) = v18;
    *(v19 + 40) = 0;
    return sub_100008964(v22);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100229400(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_100226D18(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    if ((*(*(v3 + 344) + 32) & 1) == 0)
    {
      v29 = objc_opt_self();
      v30 = [v29 mainBundle];
      v46._object = 0x80000001002A5760;
      v31._object = 0x80000001002A17F0;
      v46._countAndFlagsBits = 0xD000000000000032;
      v31._countAndFlagsBits = 0xD000000000000012;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v46);
      countAndFlagsBits = v33._countAndFlagsBits;
      object = v33._object;

      v34 = [v29 mainBundle];
      v47._object = 0x80000001002A57E0;
      v35._countAndFlagsBits = 0xD000000000000030;
      v35._object = 0x80000001002A57A0;
      v47._countAndFlagsBits = 0xD000000000000035;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, v47);
      v27 = v37._countAndFlagsBits;
      v13 = v37._object;

      v22 = [v29 mainBundle];
      v23 = 0xD000000000000011;
      v42 = 0x80000001002A5820;
      v24 = 0x80000001002988E0;
      v26 = 0xD000000000000029;
      v28 = 0;
      v25 = 0;
LABEL_8:
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v23, *&v28, v22, v38, *&v26);

      a1->_countAndFlagsBits = countAndFlagsBits;
      a1->_object = object;
      a1[1]._countAndFlagsBits = v27;
      a1[1]._object = v13;
      a1[2] = v39;
      return;
    }

    if (*(v1 + 16))
    {

      v4 = sub_100067850();
      v6 = v5;

      if (!v6)
      {
        v7 = [objc_opt_self() mainBundle];
        v44._object = 0x8000000100299C00;
        v8._countAndFlagsBits = 0xD000000000000013;
        v8._object = 0x80000001002973D0;
        v9.value._object = 0x80000001002962C0;
        v44._countAndFlagsBits = 0xD000000000000038;
        v9.value._countAndFlagsBits = 0xD000000000000012;
        v10._countAndFlagsBits = 0;
        v10._object = 0xE000000000000000;
        v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v44);
        v4 = v11._countAndFlagsBits;
        v6 = v11._object;
      }

      v43 = sub_100020E70(v4, v6);
      v13 = v12;

      v14 = objc_opt_self();
      v15 = [v14 mainBundle];
      v45._object = 0x80000001002A5720;
      v16._countAndFlagsBits = 0xD000000000000018;
      v16._object = 0x80000001002A1970;
      v17.value._object = 0x80000001002962C0;
      v45._countAndFlagsBits = 0xD000000000000039;
      v17.value._countAndFlagsBits = 0xD000000000000012;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v45);
      countAndFlagsBits = v19._countAndFlagsBits;
      object = v19._object;

      v22 = [v14 mainBundle];
      v42 = 0x80000001002A1AD0;
      v23 = 0xD000000000000017;
      v24 = 0x80000001002A1AB0;
      v25 = 0x80000001002962C0;
      v26 = 0xD00000000000002FLL;
      v27 = v43;
      v28 = 0xD000000000000012;
      goto LABEL_8;
    }

    type metadata accessor for RoadsideAssistanceModel();
    v40 = &qword_100356B48;
    v41 = type metadata accessor for RoadsideAssistanceModel;
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    v40 = &qword_100354D50;
    v41 = type metadata accessor for QuestionnaireState;
  }

  sub_100229400(v40, v41, "\ts\n");
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t sub_10022710C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X2>, uint64_t a3@<X8>)
{
  v100 = a2;
  v106 = a3;
  v4 = sub_1000040A8(&qword_100357560, &unk_10027AEC0);
  __chkstk_darwin(v4 - 8);
  v93 = &v83 - v5;
  v96 = sub_1000040A8(&qword_100368D98, &qword_100291F10);
  __chkstk_darwin(v96);
  v94 = &v83 - v6;
  v98 = sub_1000040A8(&qword_100368DA0, &qword_100291F18);
  __chkstk_darwin(v98);
  v95 = &v83 - v7;
  v101 = sub_1000040A8(&qword_100368DA8, &qword_100291F20);
  v105 = *(v101 - 8);
  __chkstk_darwin(v101);
  v110 = &v83 - v8;
  v9 = sub_1000040A8(&qword_100368DB0, &qword_100291F28);
  v103 = *(v9 - 8);
  v104 = v9;
  __chkstk_darwin(v9);
  v102 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v83 - v12;
  v109 = type metadata accessor for KeyboardShortcut();
  v112 = *(v109 - 8);
  __chkstk_darwin(v109);
  v92 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for GlassProminentButtonStyle();
  v111 = *(v107 - 8);
  __chkstk_darwin(v107);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000040A8(&qword_100368DB8, &qword_100291F30);
  __chkstk_darwin(v16);
  v18 = &v83 - v17;
  v84 = sub_1000040A8(&qword_100368DC0, &qword_100291F38);
  __chkstk_darwin(v84);
  v20 = &v83 - v19;
  v21 = sub_1000040A8(&qword_100368DC8, &unk_100291F40);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v97 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v108 = &v83 - v25;
  v26 = swift_allocObject();
  v27 = *(a1 + 80);
  *(v26 + 80) = *(a1 + 64);
  *(v26 + 96) = v27;
  *(v26 + 112) = *(a1 + 96);
  v28 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v28;
  v29 = *(a1 + 48);
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = v29;
  v30 = sub_100058628(a1, v119);
  sub_100228438(v30, v31, v32);
  Button.init(action:label:)();
  v33 = &v18[*(v16 + 36)];
  v91 = sub_1000040A8(&qword_1003550A0, &qword_100277F40);
  v34 = *(v91 + 28);
  v35 = enum case for ControlSize.large(_:);
  v89 = enum case for ControlSize.large(_:);
  v88 = type metadata accessor for ControlSize();
  v36 = *(v88 - 8);
  v87 = *(v36 + 104);
  v90 = v36 + 104;
  v87(v33 + v34, v35, v88);
  *v33 = swift_getKeyPath();
  GlassProminentButtonStyle.init()();
  sub_100228D40();
  v86 = sub_100229400(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  v37 = v107;
  View.buttonStyle<A>(_:)();
  v38 = *(v111 + 8);
  v111 += 8;
  v85 = v38;
  v38(v15, v37);
  v39 = &v20[*(v84 + 36)];
  sub_1000040A8(&qword_100357740, &qword_10027B2A0);
  static ButtonBorderShape.capsule.getter();
  sub_100008FA0(v18, &qword_100368DB8, &qword_100291F30);
  *v39 = swift_getKeyPath();
  v40 = v92;
  static KeyboardShortcut.defaultAction.getter();
  sub_100228E2C();
  v41 = v108;
  View.keyboardShortcut(_:)();
  v42 = *(v112 + 8);
  v112 += 8;
  v84 = v42;
  v42(v40, v109);
  sub_100008FA0(v20, &qword_100368DC0, &qword_100291F38);
  v43 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  v119[0] = v43;
  v45 = AnyShapeStyle.init<A>(_:)();
  v46 = (v41 + *(v22 + 44));
  *v46 = KeyPath;
  v46[1] = v45;
  v47 = v93;
  static ButtonRole.destructive.getter();
  v48 = type metadata accessor for ButtonRole();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v49 = swift_allocObject();
  v50 = *(a1 + 80);
  *(v49 + 80) = *(a1 + 64);
  *(v49 + 96) = v50;
  *(v49 + 112) = *(a1 + 96);
  v51 = *(a1 + 16);
  *(v49 + 16) = *a1;
  *(v49 + 32) = v51;
  v52 = *(a1 + 48);
  *(v49 + 48) = *(a1 + 32);
  *(v49 + 64) = v52;
  v116 = a1;
  v53 = sub_100058628(a1, v119);
  sub_100228F88(v53, v54, v55);
  v56 = v94;
  Button.init(role:action:label:)();
  v57 = (v56 + *(v96 + 36));
  v87(v57 + *(v91 + 28), v89, v88);
  *v57 = swift_getKeyPath();
  v58 = v15;
  GlassProminentButtonStyle.init()();
  sub_100228FDC();
  v59 = v95;
  v60 = v107;
  View.buttonStyle<A>(_:)();
  v85(v58, v60);
  v61 = v98;
  v62 = &v59[*(v98 + 36)];
  v63 = v59;
  static ButtonBorderShape.capsule.getter();
  sub_100008FA0(v56, &qword_100368D98, &qword_100291F10);
  *v62 = swift_getKeyPath();
  static KeyboardShortcut.defaultAction.getter();
  v64 = sub_1002290C0();
  View.keyboardShortcut(_:)();
  (v84)(v40, v109);
  sub_100008FA0(v63, &qword_100368DA0, &qword_100291F18);
  v120 = *v100;
  v65 = *v100;
  v66 = v100;
  v117 = *(a1 + 64);
  v118 = v65;

  sub_1000040A8(&qword_100354AA8, &qword_10027D640);
  State.projectedValue.getter();
  v114 = v66;
  v115 = a1;
  v113 = v66;
  sub_1000040A8(&qword_100357568, &unk_10027D930);
  v119[0] = v61;
  v119[1] = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100031770(OpaqueTypeConformance2, v68, v69);
  sub_100009274(&qword_100357588, &qword_100357568, &unk_10027D930, &protocol conformance descriptor for Button<A>);
  v70 = v101;
  v71 = v99;
  v72 = v110;
  View.alert<A, B, C>(_:isPresented:actions:message:)();

  sub_100032674(&v120);
  (*(v105 + 8))(v72, v70);
  v73 = v108;
  v74 = v97;
  sub_10022920C(v108, v97);
  v75 = v102;
  v76 = v103;
  v77 = *(v103 + 16);
  v78 = v104;
  v77(v102, v71, v104);
  v79 = v106;
  sub_10022920C(v74, v106);
  v80 = sub_1000040A8(&qword_100368E20, &unk_100291FF8);
  v77((v79 + *(v80 + 48)), v75, v78);
  v81 = *(v76 + 8);
  v81(v71, v78);
  sub_100008FA0(v73, &qword_100368DC8, &unk_100291F40);
  v81(v75, v78);
  return sub_100008FA0(v74, &qword_100368DC8, &unk_100291F40);
}

uint64_t sub_100227CC8()
{
  v1 = v0;
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381E48);
  sub_100058628(v0, v22);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_100058684(v0);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22[0] = v6;
    *v5 = 136446210;
    if (!*(v0 + 48))
    {
      goto LABEL_13;
    }

    v7 = v6;

    v8 = sub_1000B9A7C();
    v10 = v9;

    v11 = sub_10017C9E8(v8, v10, v22);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] BuiltInSummaryCountdownFooterView: send now", v5, 0xCu);
    sub_100008964(v7);
  }

  if (*(v1 + 48))
  {
    v12 = *(v1 + 80);

    if ((sub_1000BB344(v12, 0, 4u) & 1) == 0)
    {
      sub_100058628(v1, v22);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      sub_100058684(v1);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v22[0] = swift_slowAlloc();
        *v15 = 136446467;
        v16 = sub_1000B9A7C();
        v18 = v17;

        v19 = sub_10017C9E8(v16, v18, v22);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2081;
        *(v15 + 14) = sub_10017C9E8(*(v12 + 16), *(v12 + 24), v22);
        _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] BuiltInSummaryCountdownFooterView: failed to record answer for %{private}s", v15, 0x16u);
        swift_arrayDestroy();

        return (*(v1 + 88))(v20);
      }
    }

    return (*(v1 + 88))(v20);
  }

LABEL_13:
  type metadata accessor for QuestionnaireState();
  sub_100229400(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100228010(void *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&qword_100354AA8, &qword_10027D640);
    return State.wrappedValue.setter();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100229400(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002280F0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 48);
  if (v2)
  {
    *a2 = *(*(v2 + 344) + 32);
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    sub_100229400(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100228174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357560, &unk_10027AEC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v7;

  static ButtonRole.destructive.getter();
  v8 = type metadata accessor for ButtonRole();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = swift_allocObject();
  v10 = *(a2 + 80);
  *(v9 + 80) = *(a2 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(a2 + 96);
  v11 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v11;
  v12 = *(a2 + 48);
  *(v9 + 48) = *(a2 + 32);
  *(v9 + 64) = v12;
  v13 = sub_100058628(a2, v18);
  sub_100031770(v13, v14, v15);
  return Button<>.init<A>(_:role:action:)();
}

uint64_t sub_1002282C8(void *a1)
{
  if (*a1)
  {

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100229400(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_100228438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368DD0;
  if (!qword_100368DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368DD0);
  }

  return result;
}

uint64_t sub_10022848C@<X0>(uint64_t a1@<X8>)
{
  v25 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v25);
  v3 = &v24 - v2;
  v26 = sub_1000040A8(&qword_100357C98, &unk_10027D5C0);
  __chkstk_darwin(v26);
  v5 = &v24 - v4;
  v27 = sub_1000040A8(&qword_100357CA0, &unk_10027C090);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  *&v28 = v8;
  *(&v28 + 1) = v9;
  v12 = v11 & 1;
  LOBYTE(v29) = v11 & 1;
  *(&v29 + 1) = v13;
  v14 = enum case for DynamicTypeSize.accessibility2(_:);
  v15 = type metadata accessor for DynamicTypeSize();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  sub_100229400(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v24 = a1;
    sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v3, &qword_100354D60, &qword_100277B30);
    sub_1000317C4(v8, v10, v12);

    KeyPath = swift_getKeyPath();
    v18 = &v5[*(v26 + 36)];
    *v18 = KeyPath;
    v18[8] = 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v5, v7, &qword_100357C98, &unk_10027D5C0);
    v19 = &v7[*(v27 + 36)];
    v20 = v33;
    *(v19 + 4) = v32;
    *(v19 + 5) = v20;
    *(v19 + 6) = v34;
    v21 = v29;
    *v19 = v28;
    *(v19 + 1) = v21;
    v22 = v31;
    *(v19 + 2) = v30;
    *(v19 + 3) = v22;
    v23 = v24;
    sub_10000CF4C(v7, v24, &qword_100357CA0, &unk_10027C090);
    result = sub_1000040A8(&qword_100357CA8, &unk_10027D5B0);
    *(v23 + *(result + 36)) = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100228864@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v29 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v29);
  v5 = &v28 - v4;
  v30 = sub_1000040A8(&qword_100357C98, &unk_10027D5C0);
  __chkstk_darwin(v30);
  v7 = &v28 - v6;
  v31 = sub_1000040A8(&qword_100357CA0, &unk_10027C090);
  __chkstk_darwin(v31);
  v9 = &v28 - v8;
  *&v32 = sub_100228C08(a1 & 1);
  *(&v32 + 1) = v10;
  sub_100031770(v32, v10, v11);
  v12 = Text.init<A>(_:)();
  v14 = v13;
  *&v32 = v12;
  *(&v32 + 1) = v13;
  v16 = v15 & 1;
  LOBYTE(v33) = v15 & 1;
  *(&v33 + 1) = v17;
  v18 = enum case for DynamicTypeSize.accessibility2(_:);
  v19 = type metadata accessor for DynamicTypeSize();
  (*(*(v19 - 8) + 104))(v5, v18, v19);
  sub_100229400(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v28 = a2;
    sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v5, &qword_100354D60, &qword_100277B30);
    sub_1000317C4(v12, v14, v16);

    KeyPath = swift_getKeyPath();
    v22 = &v7[*(v30 + 36)];
    *v22 = KeyPath;
    v22[8] = 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v7, v9, &qword_100357C98, &unk_10027D5C0);
    v23 = &v9[*(v31 + 36)];
    v24 = v37;
    *(v23 + 4) = v36;
    *(v23 + 5) = v24;
    *(v23 + 6) = v38;
    v25 = v33;
    *v23 = v32;
    *(v23 + 1) = v25;
    v26 = v35;
    *(v23 + 2) = v34;
    *(v23 + 3) = v26;
    v27 = v28;
    sub_10000CF4C(v9, v28, &qword_100357CA0, &unk_10027C090);
    result = sub_1000040A8(&qword_100357CA8, &unk_10027D5B0);
    *(v27 + *(result + 36)) = 256;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100228C08(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() mainBundle];
    v10 = 0x80000001002A1AD0;
    v2 = 0xD000000000000017;
    v3 = 0x80000001002A1AB0;
    v4 = 0xD000000000000012;
    v5 = 0x80000001002962C0;
    v6 = 0xD00000000000002FLL;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v10 = 0x80000001002A5820;
    v3 = 0x80000001002988E0;
    v6 = 0xD000000000000029;
    v2 = 0xD000000000000011;
    v4 = 0;
    v5 = 0;
  }

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, *&v4, v1, v7, *&v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t sub_100228D40()
{
  result = qword_100368DD8;
  if (!qword_100368DD8)
  {
    sub_100008CF0(&qword_100368DB8, &qword_100291F30);
    sub_100009274(&qword_100368DE0, &qword_100368DE8, &unk_100291F80, &protocol conformance descriptor for Button<A>);
    sub_100009274(&qword_100355098, &qword_1003550A0, &qword_100277F40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368DD8);
  }

  return result;
}

unint64_t sub_100228E2C()
{
  result = qword_100368DF0;
  if (!qword_100368DF0)
  {
    sub_100008CF0(&qword_100368DC0, &qword_100291F38);
    sub_100008CF0(&qword_100368DB8, &qword_100291F30);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100228D40();
    sub_100229400(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368DF0);
  }

  return result;
}

unint64_t sub_100228F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100368DF8;
  if (!qword_100368DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368DF8);
  }

  return result;
}

unint64_t sub_100228FDC()
{
  result = qword_100368E00;
  if (!qword_100368E00)
  {
    sub_100008CF0(&qword_100368D98, &qword_100291F10);
    sub_100009274(&qword_100368E08, &qword_100368E10, &qword_100291FF0, &protocol conformance descriptor for Button<A>);
    sub_100009274(&qword_100355098, &qword_1003550A0, &qword_100277F40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368E00);
  }

  return result;
}

unint64_t sub_1002290C0()
{
  result = qword_100368E18;
  if (!qword_100368E18)
  {
    sub_100008CF0(&qword_100368DA0, &qword_100291F18);
    sub_100008CF0(&qword_100368D98, &qword_100291F10);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100228FDC();
    sub_100229400(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368E18);
  }

  return result;
}

uint64_t sub_10022920C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100368DC8, &unk_100291F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022927C()
{

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_100229310()
{
  result = qword_100368E28;
  if (!qword_100368E28)
  {
    sub_100008CF0(&qword_100368D90, &unk_100291F00);
    sub_100009274(&qword_100368E30, &qword_100368E38, &qword_100292058, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100368E28);
  }

  return result;
}

uint64_t sub_100229400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100229488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v51 = a3;
  v5 = type metadata accessor for KeyboardShortcut();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Color.RGBColorSpace();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GlassProminentButtonStyle();
  v42 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000040A8(&qword_1003576A0, &qword_10027B1F8);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v43 = sub_1000040A8(&qword_100357748, &qword_100292210);
  __chkstk_darwin(v43);
  v16 = &v40 - v15;
  v17 = sub_1000040A8(&qword_100368E48, &qword_100292218);
  v50 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  if (*a1)
  {

    v20 = sub_100069C9C();

    if (v20)
    {

      sub_10008B8D4();
    }

    else if (sub_10008B8D4())
    {
      v21 = swift_allocObject();
      v40 = &v40;
      v22 = *(a1 + 48);
      *(v21 + 48) = *(a1 + 32);
      *(v21 + 64) = v22;
      *(v21 + 80) = *(a1 + 64);
      v23 = *(a1 + 16);
      *(v21 + 16) = *a1;
      *(v21 + 32) = v23;
      __chkstk_darwin(v21);
      *(&v40 - 2) = v41;
      sub_1000586D8(a1, v52);
      sub_1000040A8(&qword_1003576F8, &qword_10027B250);
      sub_100050340();
      Button.init(action:label:)();
      v24 = &v14[*(v12 + 36)];
      v25 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
      v26 = enum case for ControlSize.large(_:);
      v27 = type metadata accessor for ControlSize();
      (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
      *v24 = swift_getKeyPath();
      GlassProminentButtonStyle.init()();
      sub_100050484();
      sub_10022A1F8(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
      View.buttonStyle<A>(_:)();
      (*(v42 + 8))(v11, v9);
      v28 = &v16[*(sub_1000040A8(&qword_100357738, &qword_10027B298) + 36)];
      sub_1000040A8(&qword_100357740, &qword_10027B2A0);
      static ButtonBorderShape.capsule.getter();
      sub_10022A0A0(v14);
      *v28 = swift_getKeyPath();
      (*(v45 + 104))(v44, enum case for Color.RGBColorSpace.sRGB(_:), v46);
      v29 = Color.init(_:red:green:blue:opacity:)();
      KeyPath = swift_getKeyPath();
      v52[0] = v29;
      v31 = AnyShapeStyle.init<A>(_:)();
      v32 = &v16[*(v43 + 36)];
      *v32 = KeyPath;
      v32[1] = v31;
      v33 = v47;
      static KeyboardShortcut.defaultAction.getter();
      sub_100050604();
      View.keyboardShortcut(_:)();
      (*(v48 + 8))(v33, v49);
      sub_10022A118(v16);
      v34 = static Edge.Set.top.getter();
      v35 = &v19[*(v17 + 36)];
      *v35 = v34;
      *(v35 + 8) = 0u;
      *(v35 + 24) = 0u;
      v35[40] = 1;
      v36 = v51;
      sub_10022A180(v19, v51);
      return (*(v50 + 56))(v36, 0, 1, v17);
    }

    v38 = v51;
    v39 = *(v50 + 56);

    return v39(v38, 1, 1, v17);
  }

  else
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_10022A1F8(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_100229B94()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 48);

    if (sub_1000BB344(v1, 0, 3u))
    {

      (*(v0 + 56))(v2);
    }

    else
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000F53C(v3, qword_100381E48);
      sub_1000586D8(v0, v11);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      sub_100058734(v0);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v11[0] = swift_slowAlloc();
        *v6 = 136446467;
        v7 = sub_1000B9A7C();
        v9 = v8;

        v10 = sub_10017C9E8(v7, v9, v11);

        *(v6 + 4) = v10;
        *(v6 + 12) = 2081;
        *(v6 + 14) = sub_10017C9E8(*(v1 + 16), *(v1 + 24), v11);
        _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] QuestionnaireBodyView: failed to record skip for %{private}s", v6, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    sub_10022A1F8(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
  }
}

__n128 sub_100229DE0@<Q0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = v6 & 1;
  v10 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  *(a1 + 128) = v19;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  result = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v10;
  return result;
}

uint64_t sub_100229EF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  if (v4)
  {
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    sub_1000088DC((v4 + 48), v5);
    (*(v6 + 24))(v9, v5, v6);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v7 = sub_1000040A8(&qword_100368E40, &unk_100292200);
    sub_100229488(v10, v9, a1 + *(v7 + 44));
    return sub_100008964(v9);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10022A1F8(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10022A014()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10022A0A0(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003576A0, &qword_10027B1F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022A118(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100357748, &qword_100292210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10022A180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100368E48, &qword_100292218);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022A1F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10022A284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ValueWithHysteresis.Hysteresis(255, *(a1 + 80), *(a1 + 88), a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

char *sub_10022A3AC()
{
  v1 = *v0;

  swift_unknownObjectRelease();

  v2 = *(*v0 + 152);
  type metadata accessor for ValueWithHysteresis.Hysteresis(255, *(v1 + 80), *(v1 + 88), v3);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(&v0[v2], v4);
  v5 = *(*v0 + 168);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 8);
  v7(&v0[v5], v6);
  v7(&v0[*(*v0 + 184)], v6);
  return v0;
}

uint64_t sub_10022A518()
{
  sub_10022A3AC();

  return swift_deallocClassInstance();
}

uint64_t sub_10022A5A0(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = 0;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v14[4] = sub_10022AE68;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10008137C;
  v14[3] = &unk_1003398B0;
  v10 = _Block_copy(v14);

  v11 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:a3];

  _Block_release(v10);
  v12 = *(v3 + 16);
  *(v3 + 16) = v11;

  return v3;
}

uint64_t sub_10022A6FC(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    (a3)(v5, &off_100339848);
  }

  return result;
}

uint64_t sub_10022A778()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  return swift_deallocClassInstance();
}

void sub_10022A814(uint64_t a1)
{
  sub_10022AD8C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10022A8AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 24) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 16) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}