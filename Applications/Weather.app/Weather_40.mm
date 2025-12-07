uint64_t sub_1004324E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ComparisonBarChartView(0) + 20));
  v13[0] = v3[2];
  *(v13 + 9) = *(v3 + 41);
  v4 = v3[1];
  v12[0] = *v3;
  v12[1] = v4;
  KeyPath = swift_getKeyPath();
  v15 = 0;
  v6 = v3[1];
  *(v14 + 7) = *v3;
  *(&v14[1] + 7) = v6;
  *(&v14[2] + 7) = v3[2];
  v7 = *(&v14[2] + 7);
  v14[3] = *(v3 + 41);
  v16[0] = *(v14 + 7);
  v16[1] = v6;
  v17[0] = v7;
  *(v17 + 9) = v14[3];
  v8 = swift_getKeyPath();
  v9 = v3[1];
  *(v18 + 7) = *v3;
  v19 = 0;
  *(&v18[1] + 7) = v9;
  *(&v18[2] + 7) = v3[2];
  v18[3] = *(v3 + 41);
  __src[0] = KeyPath;
  LOBYTE(__src[1]) = 0;
  *(&__src[1] + 1) = v14[0];
  *(&__src[3] + 1) = v14[1];
  *(&__src[5] + 1) = v14[2];
  *(&__src[7] + 1) = v14[3];
  memcpy(v11, __src, 0x49uLL);
  v21[0] = v8;
  LOBYTE(v21[1]) = 0;
  *(&v21[1] + 1) = v18[0];
  *(&v21[3] + 1) = v18[1];
  *(&v21[5] + 1) = v18[2];
  *(&v21[7] + 1) = v18[3];
  memcpy(&v11[80], v21, 0x49uLL);
  memcpy(a2, v11, 0x99uLL);
  v22 = v8;
  v23 = 0;
  v24 = v18[0];
  v25 = v18[1];
  v26 = v18[2];
  v27 = v18[3];
  sub_100433C88(v12, &v28);
  sub_100433C88(v16, &v28);
  sub_100433CE4(__src, &v28);
  sub_100433D1C(v21, &v28);
  sub_100433D54(&v22);
  v28 = KeyPath;
  v29 = 0;
  v30 = v14[0];
  v31 = v14[1];
  v32 = v14[2];
  v33 = v14[3];
  return sub_100433D84(&v28);
}

void sub_1004326DC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = (a1 + 40);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v5 == v4)
    {

      __chkstk_darwin(v14);
      v17[2] = a2;
      v15 = sub_100744E68(sub_1004373E0, v17, v7);

      sub_10087B54C(v15);

      v16 = type metadata accessor for Text.Measurements();
      (*(*(v16 - 8) + 8))(a2, v16);
      return;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v9 = *(v6 - 1);
    v8 = *v6;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100109810();
      v7 = v12;
    }

    v10 = v7[2];
    if (v10 >= v7[3] >> 1)
    {
      sub_100109810();
      v7 = v13;
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = v9;
    v11[5] = v8;
    v6 += 7;
    ++v4;
  }

  __break(1u);
}

uint64_t sub_1004328A0(uint64_t a1)
{
  v2 = type metadata accessor for ComparisonBarChartView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v9[1] = *(a1 + *(v5 + 28));
  swift_getKeyPath();
  sub_100433E10(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_100433E74(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  sub_10022C350(&qword_100CB90D0, &unk_100A4D698);
  sub_10022C350(&qword_100CB9098, &qword_100A4D628);
  sub_100006F64(&qword_100CB90D8, &qword_100CB90D0, &unk_100A4D698, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CB9090, &qword_100CB9098, &qword_100A4D628, &protocol conformance descriptor for TupleView<A>);
  return ForEach<>.init(_:id:content:)();
}

void sub_100432A94(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v103 = a3;
  v5 = type metadata accessor for Font.TextStyle();
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin(v5);
  v100 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10022C350(&qword_100CB90E0, &qword_100A4D6A8);
  __chkstk_darwin(v99);
  v110 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v112 = (&v98 - v9);
  v10 = a1[1];
  v155 = *a1;
  v156 = v10;
  v157 = a1[2];
  v158 = *(a1 + 48);
  v105 = type metadata accessor for ComparisonBarChartView(0);
  v106 = a2;
  v11 = (a2 + *(v105 + 20));
  v12 = *(v11 + 2);
  v13 = 1.0;
  v111 = v11;
  if (v12)
  {
    v14 = v11[5];
    if (v14 > 0.0)
    {
      v13 = *&v157 / v14;
    }
  }

  v129 = v155;
  v15 = sub_10002D5A4();

  v98 = v15;
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.subheadline.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  LOBYTE(v15) = v24;

  sub_10010CD64(v16, v18, v20 & 1);

  LODWORD(v129) = static HierarchicalShapeStyle.primary.getter();
  v25 = Text.foregroundStyle<A>(_:)();
  v107 = v26;
  v108 = v25;
  v104 = v27;
  v109 = v28;
  sub_10010CD64(v21, v23, v15 & 1);

  v30 = 0;
  v31 = *v111;
  v32 = *(*v111 + 16);
  v33 = (*v111 + 40);
  v34 = _swiftEmptyArrayStorage;
  while (v32 != v30)
  {
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
      return;
    }

    v36 = *(v33 - 1);
    v35 = *v33;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100109810();
      v34 = isUniquelyReferenced_nonNull_native;
    }

    v37 = v34[2];
    if (v37 >= v34[3] >> 1)
    {
      sub_100109810();
      v34 = isUniquelyReferenced_nonNull_native;
    }

    v34[2] = v37 + 1;
    v38 = &v34[2 * v37];
    v38[4] = v36;
    v38[5] = v35;
    v33 += 7;
    ++v30;
  }

  __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  *(&v98 - 2) = v39;
  v40 = sub_100744E68(sub_100436C9C, (&v98 - 4), v34);

  sub_10087B54C(v40);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v104 &= 1u;
  v152 = v104;
  LODWORD(v106) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v105 = v47;
  v153 = 0;
  v48 = *(type metadata accessor for RoundedRectangle() + 20);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v50 = type metadata accessor for RoundedCornerStyle();
  v51 = v112;
  (*(*(v50 - 8) + 104))(v112 + v48, v49, v50);
  __asm { FMOV            V0.2D, #4.0 }

  *v51 = _Q0;
  v57 = *(&v157 + 1);
  *(v51 + *(sub_10022C350(&qword_100CB90E8, &qword_100A4D6B0) + 36)) = v57;
  v58 = v13;
  *(v51 + *(sub_10022C350(&qword_100CB90F0, &qword_100A4D6B8) + 36)) = v13;

  v59 = static Alignment.leading.getter();
  v61 = v60;
  v62 = v51 + *(sub_10022C350(&qword_100CB90F8, &qword_100A4D6C0) + 36);
  sub_100433428(&v155);
  v63 = &v62[*(sub_10022C350(&qword_100CB9100, &qword_100A4D6C8) + 36)];
  *v63 = v59;
  v63[1] = v61;
  *(v51 + *(v99 + 36)) = 0;
  v64 = *&v157;
  v129 = v156;

  v65 = Text.init<A>(_:)();
  v67 = v66;
  v69 = v68;
  LODWORD(v129) = static HierarchicalShapeStyle.primary.getter();
  v70 = Text.foregroundStyle<A>(_:)();
  v72 = v71;
  v74 = v73;
  sub_10010CD64(v65, v67, v69 & 1);

  v76 = v100;
  v75 = v101;
  v77 = v102;
  (*(v101 + 104))(v100, enum case for Font.TextStyle.title3(_:), v102);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v75 + 8))(v76, v77);
  v78 = Text.font(_:)();
  v101 = v79;
  v102 = v80;
  v82 = v81;

  sub_10010CD64(v70, v72, v74 & 1);

  if (*(v111 + 2))
  {
    LODWORD(v111) = v64 == v111[5];
  }

  else
  {
    LODWORD(v111) = 0;
  }

  LODWORD(v100) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v82 & 1;
  v147 = v82 & 1;
  v143 = 0;
  v92 = v110;
  sub_1000955E0(v112, v110, &qword_100CB90E0, &qword_100A4D6A8);
  *&v113[0] = v108;
  *(&v113[0] + 1) = v107;
  LOBYTE(v113[1]) = v104;
  *(&v113[1] + 1) = *v151;
  DWORD1(v113[1]) = *&v151[3];
  *(&v113[1] + 1) = v109;
  v113[2] = v148;
  v113[3] = v149;
  v113[4] = v150;
  LOBYTE(v113[5]) = v106;
  DWORD1(v113[5]) = *&v154[3];
  *(&v113[5] + 1) = *v154;
  *(&v113[5] + 1) = v42;
  *&v113[6] = v44;
  *(&v113[6] + 1) = v46;
  *&v113[7] = v105;
  BYTE8(v113[7]) = 0;
  v93 = v103;
  memcpy(v103, v113, 0x79uLL);
  v94 = sub_10022C350(&qword_100CB9108, &unk_100A4D6D0);
  sub_1000955E0(v92, &v93[*(v94 + 48)], &qword_100CB90E0, &qword_100A4D6A8);
  v95 = *(v94 + 64);
  v97 = v101;
  v96 = v102;
  v114[0] = v78;
  v114[1] = v101;
  LOBYTE(v114[2]) = v91;
  *(&v114[2] + 1) = *v146;
  HIDWORD(v114[2]) = *&v146[3];
  v114[3] = v102;
  LOBYTE(v94) = v111;
  LOBYTE(v114[4]) = v111;
  *(&v114[4] + 1) = *v145;
  HIDWORD(v114[4]) = *&v145[3];
  *&v114[5] = v58;
  LOBYTE(v92) = v100;
  LOBYTE(v114[6]) = v100;
  HIDWORD(v114[6]) = *&v144[3];
  *(&v114[6] + 1) = *v144;
  v114[7] = v84;
  v114[8] = v86;
  v114[9] = v88;
  v114[10] = v90;
  LOBYTE(v114[11]) = 0;
  memcpy(&v93[v95], v114, 0x59uLL);
  sub_1000955E0(v113, &v129, &qword_100CB9110, &unk_100A506F0);
  sub_1000955E0(v114, &v129, &qword_100CB9118, &qword_100A4D6E0);
  sub_1000180EC(v112, &qword_100CB90E0, &qword_100A4D6A8);
  v115[0] = v78;
  v115[1] = v97;
  v116 = v91;
  *v117 = *v146;
  *&v117[3] = *&v146[3];
  v118 = v96;
  v119 = v94;
  *v120 = *v145;
  *&v120[3] = *&v145[3];
  v121 = v58;
  v122 = v92;
  *v123 = *v144;
  *&v123[3] = *&v144[3];
  v124 = v84;
  v125 = v86;
  v126 = v88;
  v127 = v90;
  v128 = 0;
  sub_1000180EC(v115, &qword_100CB9118, &qword_100A4D6E0);
  sub_1000180EC(v110, &qword_100CB90E0, &qword_100A4D6A8);
  *&v129 = v108;
  *(&v129 + 1) = v107;
  v130 = v104;
  *v131 = *v151;
  *&v131[3] = *&v151[3];
  v132 = v109;
  v133 = v148;
  v134 = v149;
  v135 = v150;
  v136 = v106;
  *&v137[3] = *&v154[3];
  *v137 = *v154;
  v138 = v42;
  v139 = v44;
  v140 = v46;
  v141 = v105;
  v142 = 0;
  sub_1000180EC(&v129, &qword_100CB9110, &unk_100A506F0);
}

uint64_t sub_100433428(uint64_t a1)
{
  v2 = *(a1 + 8);
  __dst[0] = *a1;
  __dst[1] = v2;
  sub_10002D5A4();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.subheadline.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_10010CD64(v3, v5, v7 & 1);

  if (*(a1 + 48))
  {
    v13 = [objc_opt_self() systemBackgroundColor];
    Color.init(_:)();
  }

  else
  {
    static Color.secondary.getter();
  }

  v14 = Text.foregroundColor(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_10010CD64(v8, v10, v12 & 1);

  v21 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v34 = v18 & 1;
  v33 = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v35[39] = v38;
  *&v35[23] = v37;
  *&v35[7] = v36;
  __src[0] = v14;
  __src[1] = v16;
  LOBYTE(__src[2]) = v18 & 1;
  __src[3] = v20;
  LOBYTE(__src[4]) = v21;
  __src[5] = v23;
  __src[6] = v25;
  __src[7] = v27;
  __src[8] = v29;
  LOBYTE(__src[9]) = 0;
  *(&__src[9] + 1) = *v35;
  *(&__src[11] + 1) = *&v35[16];
  *(&__src[13] + 1) = *&v35[32];
  __src[15] = *(&v38 + 1);
  LOWORD(__src[16]) = 257;
  sub_10022C350(&qword_100CB9120, &qword_100A4D6E8);
  sub_100436CB8();
  View.accessibility(hidden:)();
  memcpy(__dst, __src, 0x82uLL);
  return sub_1000180EC(__dst, &qword_100CB9120, &qword_100A4D6E8);
}

uint64_t sub_100433690(uint64_t a1)
{
  type metadata accessor for ComparisonBarChartView(0);
  swift_getKeyPath();

  sub_10022C350(&qword_100CB90D0, &unk_100A4D698);
  sub_10022C350(&qword_100CB90B0, &qword_100A4D630);
  sub_100006F64(&qword_100CB90D8, &qword_100CB90D0, &unk_100A4D698, &protocol conformance descriptor for [A]);
  sub_100433B9C();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004337A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CB90B0, &qword_100A4D630);
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(v3 + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  (*(*(v15 - 8) + 104))(&v5[v13], v14, v15);
  __asm { FMOV            V0.2D, #4.0 }

  *v5 = _Q0;
  v23 = v9;
  v24 = v10;
  sub_10043706C(&qword_100CA47B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  sub_10002D5A4();

  View.accessibilityLabel<A>(_:)();
  sub_100433DB4(v5);
  v23 = v11;
  v24 = v12;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  return sub_1000180EC(v8, &qword_100CB90B0, &qword_100A4D630);
}

unint64_t sub_1004339B0()
{
  result = qword_100CB9068;
  if (!qword_100CB9068)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB9048, &qword_100A4D5F8);
    v4[0] = sub_100006F64(&qword_100CB9070, &qword_100CB9078, &qword_100A4D618, &protocol conformance descriptor for _LayoutRoot<A>);
    v4[1] = sub_100433A68();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _VariadicView.Tree<A, B>, v3, v4);
    atomic_store(result, &qword_100CB9068);
  }

  return result;
}

unint64_t sub_100433A68()
{
  result = qword_100CB9080;
  if (!qword_100CB9080)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CB9088, &qword_100A4D620);
    v4[0] = sub_100006F64(&qword_100CB9090, &qword_100CB9098, &qword_100A4D628, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CB9080);
  }

  return result;
}

unint64_t sub_100433B18()
{
  result = qword_100CB90A0;
  if (!qword_100CB90A0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CB9060, &qword_100A4D610);
    v4[0] = sub_100433B9C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CB90A0);
  }

  return result;
}

unint64_t sub_100433B9C()
{
  result = qword_100CB90A8;
  if (!qword_100CB90A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB90B0, &qword_100A4D630);
    v4[0] = sub_10043706C(&qword_100CA47B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    v4[1] = sub_10043706C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB90A8);
  }

  return result;
}

uint64_t sub_100433DB4(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100433E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComparisonBarChartView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100433E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComparisonBarChartView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100433ED8(__int128 *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for ComparisonBarChartView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100432A94(a1, v6, a2);
}

double sub_100433F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v5 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v5 - 8);
  v29 = &v27 - v6;
  v7 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v7 - 8);
  v28 = &v27 - v8;
  v9 = type metadata accessor for Text.Measurements.Context();
  v30 = *(v9 - 8);
  v31 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  sub_10002D5A4();

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.subheadline.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10010CD64(v12, v14, v16 & 1);

  v22 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v28, 1, 1, v22);
  v23 = type metadata accessor for Text.Suffix();
  sub_10001B350(v29, 1, 1, v23);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v25 = v24;
  sub_10010CD64(v17, v19, v21 & 1);

  (*(v30 + 8))(v11, v31);
  return v25 + 6.0;
}

uint64_t sub_100434248()
{
  result = sub_100322D64();
  if ((result & 1) == 0)
  {
    type metadata accessor for LayoutSubviews();
    sub_10043706C(&qword_100CAD308, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    result = dispatch thunk of Collection.distance(from:to:)();
    if (result == 3 * (result / 3))
    {
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      return dispatch thunk of Collection.distance(from:to:)();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10043439C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v126 = sub_10022C350(&qword_100CB9158, &qword_100A4DA08);
  __chkstk_darwin(v126);
  v145 = (&v124 - v16);
  v17 = sub_10022C350(&qword_100CB9160, &qword_100A4DA10);
  __chkstk_darwin(v17 - 8);
  v143 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v142 = (&v124 - v20);
  __chkstk_darwin(v21);
  v146 = &v124 - v22;
  __chkstk_darwin(v23);
  *&v148 = &v124 - v24;
  v25 = sub_10022C350(&qword_100CB9168, &qword_100A4DA18);
  __chkstk_darwin(v25 - 8);
  v133 = &v124 - v26;
  v134 = sub_10022C350(&qword_100CB9170, &qword_100A4DA20);
  __chkstk_darwin(v134);
  v28 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v151 = &v124 - v30;
  v31 = type metadata accessor for LayoutSubviews();
  v135 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v124 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10022C350(&qword_100CB9178, &qword_100A4DA28);
  __chkstk_darwin(v34);
  *&v36 = &v124 - v35;
  v37 = type metadata accessor for LayoutSubview();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v141 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v136 = &v124 - v41;
  __chkstk_darwin(v42);
  v147 = &v124 - v43;
  __chkstk_darwin(v44);
  v138 = &v124 - v45;
  __chkstk_darwin(v46);
  v48 = &v124 - v47;
  __chkstk_darwin(v49);
  *&v149 = &v124 - v50;
  __chkstk_darwin(v51);
  *&v140 = &v124 - v52;
  __chkstk_darwin(v53);
  v127 = &v124 - v54;
  v55 = sub_10043706C(&qword_100CAD308, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v158 = v55;
  v56 = dispatch thunk of Collection.distance(from:to:)();
  if (v56 == 3 * (v56 / 3))
  {
    v156 = v37;
    v152 = v28;
    v162.origin.x = a1;
    v162.origin.y = a2;
    v162.size.width = a3;
    v162.size.height = a4;
    Width = CGRectGetWidth(v162);
    v58 = *(v135 + 16);
    v150 = a10;
    v130 = v135 + 16;
    v129 = v58;
    v58(v33, a10, v31);
    v59 = sub_10043706C(&qword_100CB9180, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
    v132 = v33;
    v128 = v59;
    dispatch thunk of Sequence.makeIterator()();
    v131 = v34;
    v60 = *(v34 + 36);
    v155 = (v38 + 16);
    v61 = (v38 + 32);
    v157 = (v38 + 8);
    v159 = v31;
    for (i = v156; ; (*v157)(v48, i))
    {
      dispatch thunk of Collection.endIndex.getter();
      if (*(*&v36 + v60) == *&v160)
      {
        break;
      }

      v63 = dispatch thunk of Collection.subscript.read();
      v64 = *v155;
      v65 = v149;
      (*v155)(COERCE_DOUBLE(*&v149));
      v63(&v160, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v66 = *v61;
      (*v61)(v48, COERCE_DOUBLE(*&v65), i);
      sub_1004370B4();
      LayoutSubview.subscript.getter();
      if (LOBYTE(v160))
      {
        v144 = v64;
        sub_1000180EC(*&v36, &qword_100CB9178, &qword_100A4DA28);
        v67 = v140;
        (v66)(*&v140, v48, i);
        (v66)(v127, *&v67, i);
        static ProposedViewSize.unspecified.getter();
        LOBYTE(v160) = v68 & 1;
        v161[0] = v69 & 1;
        LayoutSubview.sizeThatFits(_:)();
        v71 = v70;
        v139 = Width - v70;
        v72 = v133;
        v73 = v159;
        v129(v133, v150, v159);
        v74 = *(v135 + 32);
        v135 += 32;
        v125 = v74;
        v74(v132, v72, v73);
        v75 = v151;
        dispatch thunk of Sequence.makeIterator()();
        v36 = 0.0;
        v137 = *(v134 + 36);
        *(v75 + v137) = 0;
        v76 = &qword_100CB9160;
        *&v149 = *(v131 + 36);
        v77 = v126;
        v153 = v66;
        v154 = v38 + 32;
        while (1)
        {
          dispatch thunk of Collection.endIndex.getter();
          if (*(v75 + *&v149) == *&v160)
          {
            v78 = v146;
            sub_10001B350(v146, 1, 1, v77);
            v79 = v153;
            v80 = v150;
            v81 = v156;
          }

          else
          {
            v82 = v76;
            v83 = v75;
            v140 = v36;
            v84 = dispatch thunk of Collection.subscript.read();
            v85 = v138;
            v81 = v156;
            (v144)(v138);
            v84(&v160, 0);
            v86 = v140;
            dispatch thunk of Collection.formIndex(after:)();
            v87 = *(v77 + 48);
            v88 = v145;
            *v145 = v86;
            (v153)(v88 + v87, v85, v81);
            v89 = __OFADD__(*&v86, 1);
            *&v36 = *&v86 + 1;
            if (v89)
            {
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            *(v83 + v137) = v36;
            v78 = v146;
            sub_10002F758(v88, v146, &qword_100CB9158, &qword_100A4DA08);
            sub_10001B350(v78, 0, 1, v77);
            v80 = v150;
            v76 = v82;
            v79 = v153;
          }

          v90 = v78;
          v91 = v148;
          sub_10002F758(v90, *&v148, v76, &qword_100A4DA10);
          v92 = sub_100024D10(*&v91, 1, v77);
          v93 = v147;
          if (v92 == 1)
          {
            break;
          }

          v94 = **&v91;
          (v79)(v147, *&v91 + *(v77 + 48), v81);
          if (v94 % 3 == 2 && (LayoutSubview.subscript.getter(), (LOBYTE(v160) & 1) == 0))
          {
            sub_100437108();
            LayoutSubview.subscript.getter();
            v140 = a5;
            v95 = v139;
            v96 = v139 * v160;
            static ProposedViewSize.unspecified.getter();
            LOBYTE(v160) = v97 & 1;
            v161[0] = v98 & 1;
            LayoutSubview.sizeThatFits(_:)();
            v100 = v99;
            (*v157)(v93, v81);
            if (v95 < v96 + v100)
            {
              v95 = v95 - (v100 - v71);
            }

            v139 = v95;
            a5 = v140;
          }

          else
          {
            (*v157)(v93, v81);
          }

          v75 = v151;
        }

        sub_1000180EC(v151, &qword_100CB9170, &qword_100A4DA20);
        v163.origin.x = a1;
        v163.origin.y = a2;
        v163.size.width = a3;
        v163.size.height = a4;
        MinY = CGRectGetMinY(v163);
        v102 = v133;
        v103 = v159;
        v129(v133, v80, v159);
        v125(v132, v102, v103);
        v104 = v152;
        dispatch thunk of Sequence.makeIterator()();
        v105 = 0;
        v151 = *(v134 + 36);
        *(v104 + v151) = 0;
        v106 = *(v131 + 36);
        v150 = *&a5;
        v149 = a5 + 16.0;
        v107 = 0.0;
        while (1)
        {
          v108 = v152;
          v36 = *&v159;
          dispatch thunk of Collection.endIndex.getter();
          if (*(v108 + v106) == *&v160)
          {
            v109 = v143;
            sub_10001B350(v143, 1, 1, v77);
          }

          else
          {
            v110 = dispatch thunk of Collection.subscript.read();
            v111 = v136;
            (v144)(v136);
            v110(&v160, 0);
            dispatch thunk of Collection.formIndex(after:)();
            v112 = *(v77 + 48);
            v113 = v145;
            *v145 = v105;
            (v79)(v113 + v112, v111, v81);
            v89 = __OFADD__(v105++, 1);
            if (v89)
            {
              goto LABEL_34;
            }

            *(v108 + v151) = v105;
            v114 = v113;
            v109 = v143;
            sub_10002F758(v114, v143, &qword_100CB9158, &qword_100A4DA08);
            sub_10001B350(v109, 0, 1, v77);
          }

          v115 = v142;
          sub_10002F758(v109, v142, &qword_100CB9160, &qword_100A4DA10);
          v116 = sub_100024D10(v115, 1, v77);
          v117 = v141;
          if (v116 == 1)
          {
            break;
          }

          v118 = *v115;
          (v79)(v141, v115 + *(v77 + 48), v81);
          if (v118 % 3 == 1)
          {
            sub_100437108();
            LayoutSubview.subscript.getter();
            v122 = v139 * v160;
            v165.origin.x = a1;
            v165.origin.y = a2;
            v165.size.width = a3;
            v165.size.height = a4;
            CGRectGetMinX(v165);
            static UnitPoint.topLeading.getter();
            LOBYTE(v160) = 0;
            v161[0] = 0;
            LayoutSubview.place(at:anchor:proposal:)();
            (*v157)(v117, v81);
            if (v107 <= v122)
            {
              v107 = v122;
            }
          }

          else
          {
            static ProposedViewSize.unspecified.getter();
            LOBYTE(v160) = v119 & 1;
            v161[0] = v120 & 1;
            LayoutSubview.sizeThatFits(_:)();
            if (v118 % 3)
            {
              v166.origin.x = a1;
              v166.origin.y = a2;
              v166.size.width = a3;
              v166.size.height = a4;
              v148 = v107 + CGRectGetMinX(v166);
              static UnitPoint.topLeading.getter();
              LOBYTE(v160) = 0;
              v161[0] = 0;
              LayoutSubview.place(at:anchor:proposal:)();
              (*v157)(v117, v81);
              MinY = v149 + MinY;
            }

            else
            {
              v107 = v121;
              v164.origin.x = a1;
              v164.origin.y = a2;
              v164.size.width = a3;
              v164.size.height = a4;
              CGRectGetMinX(v164);
              static UnitPoint.topLeading.getter();
              LOBYTE(v160) = 0;
              v161[0] = 0;
              LayoutSubview.place(at:anchor:proposal:)();
              (*v157)(v117, v81);
            }
          }
        }

        sub_1000180EC(v152, &qword_100CB9170, &qword_100A4DA20);
        return (*v157)(v127, v81);
      }
    }
  }

  else
  {
LABEL_35:
    __break(1u);
  }

  result = sub_1000180EC(*&v36, &qword_100CB9178, &qword_100A4DA28);
  __break(1u);
  return result;
}

void (*sub_100435458(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

uint64_t sub_1004354CC@<X0>(uint64_t a1@<X8>)
{
  *a1 = static Alignment.bottomLeading.getter();
  *(a1 + 8) = v4;
  *(a1 + 16) = 0x402E000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x4020000000000000;
  *(a1 + 40) = 0;
  sub_10022C350(&qword_100CB91E8, &qword_100A4DAA0);
  v9 = v2[2];
  v8 = v9;
  swift_getKeyPath();
  v5 = swift_allocObject();
  memcpy((v5 + 16), v2, 0x49uLL);
  sub_1000955E0(&v9, v7, &qword_100CB90D0, &unk_100A4D698);
  sub_100433CE4(v2, v7);
  sub_10022C350(&qword_100CB90D0, &unk_100A4D698);
  sub_10022C350(&qword_100CB91F0, &qword_100A4DAA8);
  sub_100006F64(&qword_100CB90D8, &qword_100CB90D0, &unk_100A4D698, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CB91F8, &qword_100CB91F0, &qword_100A4DAA8, &protocol conformance descriptor for GridRow<A>);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100435688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  *a3 = 0;
  *(a3 + 8) = 1;
  v6 = sub_10022C350(&qword_100CB91F0, &qword_100A4DAA8);
  return sub_100435700(v8, a2, (a3 + *(v6 + 36)));
}

uint64_t sub_100435700@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v73 = a2;
  v80 = a3;
  v4 = sub_10022C350(&qword_100CB91B0, &unk_100A4DA40);
  v81 = *(v4 - 8);
  v82 = v4;
  __chkstk_darwin(v4);
  v79 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v83 = &v68 - v7;
  v8 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v8 - 8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v68 - v12;
  v70 = type metadata accessor for EnvironmentValues();
  v69 = *(v70 - 1);
  __chkstk_darwin(v70);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Font.TextStyle();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a1;
  v20 = *a1;
  v21 = a1[1];
  v84 = v20;
  v85 = v21;
  v22 = sub_10002D5A4();

  v77 = v22;
  v23 = Text.init<A>(_:)();
  v74 = v24;
  v75 = v23;
  v26 = v25;
  v76 = v27;
  v28 = *(v17 + 104);
  v28(v19, enum case for Font.TextStyle.title3(_:), v16);
  static Font.Weight.medium.getter();
  v72 = static Font.system(_:weight:)();
  v29 = *(v17 + 8);
  v29(v19, v16);
  v28(v19, enum case for Font.TextStyle.body(_:), v16);
  static Font.Weight.medium.getter();
  v71 = static Font.system(_:weight:)();
  v29(v19, v16);
  v92 = *(v73 + 8);
  v30 = *v73;
  v91 = *v73;
  if (v92 != 1)
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v91, &qword_100CB91B8, &qword_100A4DA50);
    (*(v69 + 8))(v15, v70);
    LOBYTE(v30) = v84;
  }

  v32 = enum case for Font.Leading.tight(_:);
  v33 = type metadata accessor for Font.Leading();
  (*(*(v33 - 8) + 104))(v13, v32, v33);
  sub_10001B350(v13, 0, 1, v33);
  sub_1000955E0(v13, v10, &qword_100CACFF0, &unk_100A48000);
  v34 = v10;
  v35 = v72;

  v36 = v71;

  sub_1001C987C(v35, v36, v30 & 1, v34);
  v37 = v75;
  v70 = v13;
  v38 = v74;
  v39 = Text.font(_:)();
  v41 = v40;
  v43 = v42;
  v73 = v44;

  sub_10010CD64(v37, v38, v26 & 1);

  sub_1000180EC(v70, &qword_100CACFF0, &unk_100A48000);
  LODWORD(v84) = static HierarchicalShapeStyle.primary.getter();
  v74 = Text.foregroundStyle<A>(_:)();
  v46 = v45;
  LODWORD(v75) = v47;
  v76 = v48;
  sub_10010CD64(v39, v41, v43 & 1);

  v49 = v78[3];
  v84 = v78[2];
  v85 = v49;

  v50 = Text.init<A>(_:)();
  v52 = v51;
  LOBYTE(v41) = v53;
  v55 = v54;
  KeyPath = swift_getKeyPath();
  v57 = static HierarchicalShapeStyle.secondary.getter();
  v84 = v50;
  v85 = v52;
  v86 = v41 & 1;
  v87 = v55;
  v88 = KeyPath;
  v89 = 0x3FE0000000000000;
  v90 = v57;
  sub_10022C350(&qword_100CB91C0, &qword_100A4DA88);
  sub_100437164();
  v58 = v83;
  View.monospacedDigit()();
  sub_10010CD64(v50, v52, v41 & 1);

  v60 = v81;
  v59 = v82;
  v61 = *(v81 + 16);
  v62 = v79;
  v61(v79, v58, v82);
  v63 = v80;
  v64 = v74;
  *v80 = v74;
  v63[1] = v46;
  LOBYTE(v41) = v75 & 1;
  *(v63 + 16) = v75 & 1;
  v63[3] = v76;
  *(v63 + 16) = 257;
  v65 = sub_10022C350(&qword_100CB9200, &qword_100A4DAB0);
  v61(v63 + *(v65 + 48), v62, v59);
  sub_10010CD54(v64, v46, v41);
  v66 = *(v60 + 8);

  v66(v83, v59);
  v66(v62, v59);
  sub_10010CD64(v64, v46, v41);
}

uint64_t sub_100435E7C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_10022C350(&qword_100CB9198, &qword_100A4DA30);
  v8 = v2[2];
  v7 = v8;
  swift_getKeyPath();
  v4 = swift_allocObject();
  memcpy((v4 + 16), v2, 0x49uLL);
  sub_1000955E0(&v8, v6, &qword_100CB90D0, &unk_100A4D698);
  sub_100433D1C(v2, v6);
  sub_10022C350(&qword_100CB90D0, &unk_100A4D698);
  sub_10022C350(&qword_100CB91A0, &qword_100A4DA38);
  sub_100006F64(&qword_100CB90D8, &qword_100CB90D0, &unk_100A4D698, &protocol conformance descriptor for [A]);
  sub_100006F64(&qword_100CB91A8, &qword_100CB91A0, &qword_100A4DA38, &protocol conformance descriptor for TupleView<A>);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100436028@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a3;
  v99 = sub_10022C350(&qword_100CB91B0, &unk_100A4DA40);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v105 = &v86 - v7;
  v8 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v8 - 8);
  v103 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v86 - v11;
  v87 = type metadata accessor for EnvironmentValues();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Font.TextStyle();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 24);
  v104 = *(a1 + 16);
  v94 = v21;
  v22 = *(a1 + 32);
  v95 = *(a1 + 40);
  v102 = *(a1 + 48);
  v101 = v19;
  v110 = *&v19;
  v111 = v20;
  v23 = sub_10002D5A4();
  v100 = v20;

  v89 = v23;
  v91 = Text.init<A>(_:)();
  v90 = v24;
  v26 = v25;
  v92 = v27;
  v28 = *(v16 + 104);
  v28(v18, enum case for Font.TextStyle.title3(_:), v15);
  static Font.Weight.medium.getter();
  v88 = static Font.system(_:weight:)();
  v29 = *(v16 + 8);
  v29(v18, v15);
  v28(v18, enum case for Font.TextStyle.body(_:), v15);
  static Font.Weight.medium.getter();
  v30 = static Font.system(_:weight:)();
  v29(v18, v15);
  v124 = *(a2 + 8);
  v93 = *&a2;
  v31 = *a2;
  v123 = v31;
  if (v124 != 1)
  {

    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(&v123, &qword_100CB91B8, &qword_100A4DA50);
    (*(v86 + 8))(v14, v87);
    LOBYTE(v31) = LOBYTE(v110);
  }

  v33 = enum case for Font.Leading.tight(_:);
  v34 = type metadata accessor for Font.Leading();
  (*(*(v34 - 8) + 104))(v12, v33, v34);
  sub_10001B350(v12, 0, 1, v34);
  v35 = v103;
  sub_1000955E0(v12, v103, &qword_100CACFF0, &unk_100A48000);
  v36 = v88;

  sub_1001C987C(v36, v30, v31 & 1, v35);
  v37 = v91;
  v38 = v26;
  v39 = v90;
  v40 = Text.font(_:)();
  v87 = v41;
  v43 = v42;
  v86 = v44;

  sub_10010CD64(v37, v39, v38 & 1);

  sub_1000180EC(v12, &qword_100CACFF0, &unk_100A48000);
  LODWORD(v110) = static HierarchicalShapeStyle.primary.getter();
  v45 = v87;
  v92 = Text.foregroundStyle<A>(_:)();
  v91 = v46;
  LODWORD(v90) = v47;
  v103 = v48;
  sub_10010CD64(v40, v45, v43 & 1);

  v110 = v104;
  v49 = v94;
  v111 = *&v94;

  *&v50 = COERCE_DOUBLE(Text.init<A>(_:)());
  v52 = v51;
  LOBYTE(v45) = v53;
  v55 = v54;
  KeyPath = swift_getKeyPath();
  v57 = static HierarchicalShapeStyle.secondary.getter();
  v110 = *&v50;
  v111 = v52;
  LOBYTE(v112) = v45 & 1;
  v113 = v55;
  v114 = KeyPath;
  v115 = 0x3FE0000000000000;
  v116 = v57;
  sub_10022C350(&qword_100CB91C0, &qword_100A4DA88);
  sub_100437164();
  View.monospacedDigit()();
  sub_10010CD64(v50, v52, v45 & 1);

  v58 = *(*&v93 + 16);
  v59 = *(v58 + 16);
  if (!v59)
  {
    v68 = v100;
    if (v100)
    {
      v93 = v22;
      v62 = 0;
      *&v61 = 0.0;
LABEL_12:
      v69 = v68;

      sub_1004372D4(v101, v69);
      sub_1004372D4(v61, v62);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v60 = v58 + 56 * v59;
  v61 = *(v60 - 24);
  v62 = *(v60 - 16);
  v64 = *(v60 - 8);
  v63 = *v60;
  v66 = *(v60 + 8);
  v65 = *(v60 + 16);
  v67 = *(v60 + 24);

  v68 = v100;
  if (!v100)
  {
    if (v62)
    {
      goto LABEL_11;
    }

LABEL_14:

    sub_1004372D4(v101, 0);
LABEL_15:
    v104 = 0.0;
    v101 = 0;
    v100 = 0;
    v95 = 0.0;
    v94 = 0.0;
    v93 = 0.0;
    v89 = 0;
    v102 = 1;
    goto LABEL_16;
  }

  if (!v62)
  {
LABEL_11:
    v93 = v22;
    goto LABEL_12;
  }

  v110 = *&v61;
  v111 = v62;
  v112 = v64;
  v113 = v63;
  v114 = v66;
  v115 = v65;
  LOBYTE(v116) = v67;
  *&v125[0] = v101;
  *&v125[1] = v100;
  v125[2] = v104;
  v125[3] = v49;
  v125[4] = v22;
  v125[5] = v95;
  v126 = v102;

  sub_100437324(v61, v62);
  LODWORD(v93) = sub_100746A5C(v125, &v110);
  sub_1004372D4(v61, v62);
  sub_1004372D4(v61, v62);
  sub_1004372D4(v101, v100);
  if (LOBYTE(v93))
  {
    goto LABEL_15;
  }

LABEL_13:
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v102 = 0;
  v104 = v117;
  v101 = v119;
  v100 = v121;
  v95 = v122;
  v108 = 1;
  v107 = v118;
  v106 = v120;
  v89 = 1;
  *&v93 = v118;
  *&v94 = v120;
  v109 = 0;
LABEL_16:
  v70 = v98;
  v71 = *(v98 + 16);
  v72 = v97;
  v73 = v99;
  v71(v97, v105, v99);
  v74 = v96;
  v75 = v92;
  v76 = v91;
  *v96 = v92;
  v74[1] = v76;
  v77 = v90 & 1;
  *(v74 + 16) = v90 & 1;
  v74[3] = v103;
  *(v74 + 16) = 257;
  v78 = sub_10022C350(&qword_100CB91E0, &qword_100A4DA98);
  v71(v74 + *(v78 + 48), v72, v73);
  v79 = v74 + *(v78 + 64);
  v80 = v89;
  *v79 = 0;
  *(v79 + 1) = v80;
  v81 = *&v93;
  *(v79 + 2) = v104;
  *(v79 + 3) = v81;
  v82 = v94;
  *(v79 + 4) = v101;
  *(v79 + 5) = v82;
  v83 = v95;
  *(v79 + 6) = v100;
  *(v79 + 7) = v83;
  v79[64] = v102;
  sub_10010CD54(v75, v76, v77);
  v84 = *(v70 + 8);

  v84(v105, v73);
  v84(v72, v73);
  sub_10010CD64(v75, v76, v77);
}

unint64_t sub_100436CB8()
{
  result = qword_100CB9128;
  if (!qword_100CB9128)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB9120, &qword_100A4D6E8);
    v4[0] = sub_100436D44();
    v4[1] = &protocol witness table for _FixedSizeLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB9128);
  }

  return result;
}

unint64_t sub_100436D44()
{
  result = qword_100CB9130;
  if (!qword_100CB9130)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB9138, &unk_100A4D6F0);
    v4[0] = sub_100287740();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB9130);
  }

  return result;
}

uint64_t sub_100436E10(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_100436E50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100436EB4()
{
  result = qword_100CB9140;
  if (!qword_100CB9140)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = sub_10022E824(&qword_100CB9148, qword_100A4D838);
    v4 = sub_100006F64(&qword_100CB90C0, &qword_100CB90B8, &qword_100A4D638, &protocol conformance descriptor for ViewThatFits<A>);
    v5[2] = sub_10022E824(&qword_100CB9048, &qword_100A4D5F8);
    v5[3] = sub_10022E824(&qword_100CB9060, &qword_100A4D610);
    v5[4] = sub_1004339B0();
    v5[5] = sub_100433B18();
    v5[0] = v4;
    v5[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CB9140);
  }

  return result;
}

unint64_t sub_100437018()
{
  result = qword_100CB9150;
  if (!qword_100CB9150)
  {
    result = swift_getWitnessTable(byte_100A4D8E0, &type metadata for ComparisonChartLayout, v0, v1);
    atomic_store(result, &qword_100CB9150);
  }

  return result;
}

uint64_t sub_10043706C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1004370B4()
{
  result = qword_100CB9188;
  if (!qword_100CB9188)
  {
    result = swift_getWitnessTable(byte_100A4D9D8, &type metadata for IsMaxValueText, v0, v1);
    atomic_store(result, &qword_100CB9188);
  }

  return result;
}

unint64_t sub_100437108()
{
  result = qword_100CB9190;
  if (!qword_100CB9190)
  {
    result = swift_getWitnessTable(aA_38, &type metadata for Percentage, v0, v1);
    atomic_store(result, &qword_100CB9190);
  }

  return result;
}

unint64_t sub_100437164()
{
  result = qword_100CB91C8;
  if (!qword_100CB91C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB91C0, &qword_100A4DA88);
    v4[0] = sub_10043721C();
    v4[1] = sub_100006F64(&qword_100CA3ED0, &qword_100CA3ED8, &qword_100A2DF80, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB91C8);
  }

  return result;
}

unint64_t sub_10043721C()
{
  result = qword_100CB91D0;
  if (!qword_100CB91D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB91D8, &qword_100A4DA90);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_100006F64(&qword_100CA40A8, &qword_100CA40B0, &qword_100A5B520, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB91D0);
  }

  return result;
}

uint64_t sub_1004372D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100437324(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100437374()
{
  sub_1000E4DF8(*(v0 + 16), *(v0 + 24));

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10043743C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 26))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_100437490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100437520()
{
  v1 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v30 = v3[2];
  v31 = v0;
  v30(&v30 - v9, v0, v1, v8);
  v11 = v3[11];
  v12 = v11(v10, v1);
  v13 = enum case for DetailCondition.conditions(_:);
  v14 = v3[1];
  v14(v10, v1);
  if (v12 == v13)
  {
    sub_10022C350(&qword_100CB9368, &qword_100A4DCB0);
    sub_100017580();
    v15 = type metadata accessor for DetailChartCondition();
    sub_1000037C4();
    v17 = v16;
    v19 = *(v18 + 72);
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100A2D320;
    v22 = v21 + v20;
  }

  else
  {
    (v30)(v6, v31, v1);
    v23 = v11(v6, v1);
    v24 = enum case for DetailCondition.precipitationTotal(_:);
    v14(v6, v1);
    sub_10022C350(&qword_100CB9368, &qword_100A4DCB0);
    sub_100017580();
    type metadata accessor for DetailChartCondition();
    sub_1000037C4();
    v17 = v26;
    v19 = *(v27 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    if (v23 != v24)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100A2C3F0;
      sub_100437830(v21 + v28);
      return v21;
    }

    v15 = v25;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100A2D320;
    v22 = v21 + v28;
  }

  sub_100437830(v22);
  (*(v17 + 104))(v22 + v19, enum case for DetailChartCondition.chanceOfRain(_:), v15);
  return v21;
}

uint64_t sub_100437830@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TemperatureChartKind();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  (*(v15 + 16))(v18 - v17, v2, v13);
  v20 = (*(v15 + 88))(v19, v13);
  if (v20 == enum case for DetailCondition.conditions(_:))
  {
    (*(v15 + 96))(v19, v13);
    (*(v6 + 32))(v12, v19, v4);
    (*(v6 + 16))(v9, v12, v4);
    v21 = (*(v6 + 88))(v9, v4);
    if (v21 == enum case for TemperatureChartKind.actual(_:))
    {
      v22 = &enum case for DetailChartCondition.temperature(_:);
LABEL_8:
      (*(v6 + 8))(v12, v4);
      goto LABEL_9;
    }

    if (v21 == enum case for TemperatureChartKind.feelsLike(_:))
    {
      v22 = &enum case for DetailChartCondition.temperatureFeelsLike(_:);
      goto LABEL_8;
    }

    while (1)
    {
LABEL_20:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  if (v20 != enum case for DetailCondition.humidity(_:))
  {
    if (v20 == enum case for DetailCondition.pressure(_:))
    {
      v22 = &enum case for DetailChartCondition.pressure(_:);
      goto LABEL_9;
    }

    if (v20 == enum case for DetailCondition.precipitationTotal(_:))
    {
      v22 = &enum case for DetailChartCondition.precipitationTotal(_:);
      goto LABEL_9;
    }

    if (v20 == enum case for DetailCondition.uvIndex(_:))
    {
      v22 = &enum case for DetailChartCondition.uvIndex(_:);
      goto LABEL_9;
    }

    if (v20 == enum case for DetailCondition.visibility(_:))
    {
      v22 = &enum case for DetailChartCondition.visibility(_:);
      goto LABEL_9;
    }

    if (v20 == enum case for DetailCondition.wind(_:))
    {
      v22 = &enum case for DetailChartCondition.wind(_:);
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v22 = &enum case for DetailChartCondition.humidity(_:);
LABEL_9:
  v23 = *v22;
  type metadata accessor for DetailChartCondition();
  sub_1000037E8();
  return (*(v24 + 104))(a1, v23);
}

uint64_t sub_100437B94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64657463656C6573 && a2 == 0xEC00000065746144;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6552656372756F73 && a2 == 0xEA00000000007463;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000100AC79F0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x797A614C64616F6CLL && a2 == 0xEF746E65746E6F43)
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

unint64_t sub_100437DA0(char a1)
{
  result = 0x6F697469646E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461636F6CLL;
      break;
    case 2:
      result = 0x64657463656C6573;
      break;
    case 3:
      result = 0x6552656372756F73;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x797A614C64616F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100437E74(uint64_t a1, uint64_t a2)
{
  v68 = type metadata accessor for DetailChartSelection(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v67 = v10;
  v11 = sub_10022C350(&qword_100CB0D18, &unk_100A41060);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v69 = v13;
  v14 = type metadata accessor for Date();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v21);
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v62 - v23;
  v25 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = &v62 - v27;
  if ((static DetailCondition.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v65 = v16;
  v29 = v11;
  v30 = type metadata accessor for ConditionDetailViewState(0);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v62 = v7;
  v63 = v30;
  v66 = a2;
  v31 = *(v30 + 24);
  v32 = *(v25 + 48);
  v64 = a1;
  sub_1000955E0(a1 + v31, v28, &unk_100CB2CF0, &unk_100A2D7F0);
  v33 = v66 + v31;
  v34 = v66;
  sub_1000955E0(v33, &v28[v32], &unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003A40(v28);
  if (v36)
  {
    sub_100003A40(&v28[v32]);
    if (v36)
    {
      v35 = v29;
      sub_1000180EC(v28, &unk_100CB2CF0, &unk_100A2D7F0);
      goto LABEL_16;
    }
  }

  else
  {
    sub_1000955E0(v28, v24, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_100003A40(&v28[v32]);
    if (!v36)
    {
      v35 = v29;
      v42 = v65;
      (*(v65 + 32))(v20, &v28[v32], v14);
      sub_10001C218();
      sub_1004392CC(v43, v44, &protocol conformance descriptor for Date);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v42 + 8);
      v46(v20, v14);
      v46(v24, v14);
      sub_1000180EC(v28, &unk_100CB2CF0, &unk_100A2D7F0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_16:
      v48 = v63;
      v47 = v64;
      v49 = *(v63 + 28);
      v50 = (v64 + v49);
      v51 = *(v64 + v49 + 32);
      v52 = v34 + v49;
      if (v51)
      {
        if ((*(v52 + 32) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((*(v52 + 32) & 1) != 0 || !CGRectEqualToRect(*v50, *v52))
      {
        goto LABEL_13;
      }

      v53 = *(v48 + 32);
      v54 = *(v35 + 48);
      v55 = v69;
      sub_1000955E0(v47 + v53, v69, &qword_100CB0BA8, &unk_100A40F80);
      v56 = v66 + v53;
      v57 = v66;
      sub_1000955E0(v56, v55 + v54, &qword_100CB0BA8, &unk_100A40F80);
      if (sub_100024D10(v55, 1, v68) == 1)
      {
        sub_100003A40(v55 + v54);
        if (!v36)
        {
          goto LABEL_28;
        }

        sub_1000180EC(v55, &qword_100CB0BA8, &unk_100A40F80);
      }

      else
      {
        v58 = v67;
        sub_1000955E0(v55, v67, &qword_100CB0BA8, &unk_100A40F80);
        sub_100003A40(v55 + v54);
        if (v36)
        {
          sub_100439214();
LABEL_28:
          v37 = &qword_100CB0D18;
          v38 = &unk_100A41060;
          v39 = v55;
          goto LABEL_12;
        }

        v59 = v55 + v54;
        v60 = v62;
        sub_1004390F8(v59, v62);
        v61 = sub_100658114(v58, v60);
        sub_100439214();
        sub_100439214();
        sub_1000180EC(v55, &qword_100CB0BA8, &unk_100A40F80);
        if ((v61 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v40 = *(v47 + *(v48 + 36)) ^ *(v57 + *(v48 + 36)) ^ 1;
      return v40 & 1;
    }

    (*(v65 + 8))(v24, v14);
  }

  v37 = qword_100CA4F80;
  v38 = &unk_100A580C0;
  v39 = v28;
LABEL_12:
  sub_1000180EC(v39, v37, v38);
LABEL_13:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_100438400(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB9390, &unk_100A4DCC0);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v26[-v9];
  sub_1000161C0(a1, a1[3]);
  sub_10043915C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  type metadata accessor for DetailCondition();
  sub_100014674();
  sub_1004392CC(v11, v12, &protocol conformance descriptor for DetailCondition);
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for ConditionDetailViewState(0);
    LOBYTE(v27) = 1;
    type metadata accessor for Location();
    sub_100022BE8();
    sub_1004392CC(v14, v15, &protocol conformance descriptor for Location);
    sub_1000058DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v27) = 2;
    type metadata accessor for Date();
    sub_10001C218();
    sub_1004392CC(v16, v17, &protocol conformance descriptor for Date);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = (v3 + *(v13 + 28));
    v19 = *(v18 + 32);
    v20 = v18[1];
    v27 = *v18;
    v28 = v20;
    v29 = v19;
    v26[15] = 3;
    type metadata accessor for CGRect(0);
    sub_100019768();
    sub_1004392CC(v21, v22, &protocol conformance descriptor for CGRect);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v27) = 4;
    type metadata accessor for DetailChartSelection(0);
    sub_10000420C();
    sub_1004392CC(v23, v24, aI_38);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v27) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100438704@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_10022C350(&qword_100CB0BA8, &unk_100A40F80);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v61 = v5;
  v6 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v62 = v8;
  v67 = type metadata accessor for Location();
  sub_1000037C4();
  v63 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for DetailCondition();
  sub_1000037C4();
  v68 = v15;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v64 = sub_10022C350(&qword_100CB9370, &qword_100A4DCB8);
  sub_1000037C4();
  v21 = v20;
  sub_100003828();
  __chkstk_darwin(v22);
  v24 = &v59 - v23;
  v66 = type metadata accessor for ConditionDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = v27 - v26;
  v29 = a1[3];
  v70 = a1;
  sub_1000161C0(a1, v29);
  sub_10043915C();
  v65 = v24;
  v30 = v69;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    return sub_100006F14(v70);
  }

  v69 = v21;
  LOBYTE(v71) = 0;
  sub_100014674();
  sub_1004392CC(v31, v32, &protocol conformance descriptor for DetailCondition);
  sub_100013808();
  v33 = v64;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v14;
  v35 = v28;
  (*(v68 + 32))(v28, v19, v34);
  LOBYTE(v71) = 1;
  sub_100022BE8();
  sub_1004392CC(v36, v37, &protocol conformance descriptor for Location);
  sub_100013808();
  v38 = v67;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v63 + 32))(v28 + v66[5], v13, v38);
  type metadata accessor for Date();
  LOBYTE(v71) = 2;
  sub_10001C218();
  sub_1004392CC(v39, v40, &protocol conformance descriptor for Date);
  sub_100013808();
  v41 = v62;
  sub_1000749E0(v42, v43);
  sub_10002F758(v41, v35 + v66[6], &unk_100CB2CF0, &unk_100A2D7F0);
  type metadata accessor for CGRect(0);
  v74 = 3;
  sub_100019768();
  v46 = sub_1004392CC(v44, v45, &protocol conformance descriptor for CGRect);
  sub_1000749E0(v46, &v74);
  v47 = v73;
  v48 = v35 + v66[7];
  v49 = v72;
  *v48 = v71;
  *(v48 + 16) = v49;
  *(v48 + 32) = v47;
  type metadata accessor for DetailChartSelection(0);
  LOBYTE(v71) = 4;
  sub_10000420C();
  sub_1004392CC(v50, v51, a1_16);
  sub_100013808();
  v52 = v61;
  sub_1000749E0(v53, v54);
  sub_10002F758(v52, v35 + v66[8], &qword_100CB0BA8, &unk_100A40F80);
  LOBYTE(v71) = 5;
  v55 = v65;
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100020724();
  v57(v55, v33);
  *(v35 + v66[9]) = v56 & 1;
  sub_1004391B0(v35, v60);
  sub_100006F14(v70);
  return sub_100439214();
}

uint64_t sub_100438DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100437B94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100438E1C(uint64_t a1)
{
  v2 = sub_10043915C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100438E58(uint64_t a1)
{
  v2 = sub_10043915C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100438EF8@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0x6F697469646E6F63;
  *(inited + 40) = 0xE90000000000006ELL;
  v4 = type metadata accessor for DetailCondition();
  *(inited + 72) = v4;
  v5 = sub_100043010((inited + 48));
  (*(*(v4 - 8) + 16))(v5, v1, v4);
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB93A8, &qword_100A4DCD0);
  a1[4] = sub_100439268();
  sub_100043010(a1);
  v6 = sub_100017580();
  type metadata accessor for ConditionDetailViewState(v6);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100439044(uint64_t a1)
{
  sub_1004392CC(&qword_100CB93B8, type metadata accessor for ConditionDetailViewState, byte_100A4DBB4);

  return ShortDescribable.description.getter();
}

uint64_t sub_1004390F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChartSelection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10043915C()
{
  result = qword_100CB9378;
  if (!qword_100CB9378)
  {
    result = swift_getWitnessTable(aU_45, &type metadata for ConditionDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9378);
  }

  return result;
}

uint64_t sub_1004391B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConditionDetailViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100439214()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_100439268()
{
  result = qword_100CB93B0;
  if (!qword_100CB93B0)
  {
    v3 = sub_10022E824(&qword_100CB93A8, &qword_100A4DCD0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB93B0);
  }

  return result;
}

uint64_t sub_1004392CC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

_BYTE *storeEnumTagSinglePayload for ConditionDetailViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1004393F4()
{
  result = qword_100CB93C0;
  if (!qword_100CB93C0)
  {
    result = swift_getWitnessTable(byte_100A4DD74, &type metadata for ConditionDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB93C0);
  }

  return result;
}

unint64_t sub_10043944C()
{
  result = qword_100CB93C8;
  if (!qword_100CB93C8)
  {
    result = swift_getWitnessTable(byte_100A4DCE4, &type metadata for ConditionDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB93C8);
  }

  return result;
}

unint64_t sub_1004394A4()
{
  result = qword_100CB93D0;
  if (!qword_100CB93D0)
  {
    result = swift_getWitnessTable(byte_100A4DD0C, &type metadata for ConditionDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB93D0);
  }

  return result;
}

uint64_t sub_1004394F8(uint64_t result)
{
  if (*(v1 + 121))
  {
    if (*(v1 + 121) == 1)
    {
      __chkstk_darwin(result);
      type metadata accessor for UnfairLock();

      Lock.sync<A>(_:)();
    }

    else if (*(v1 + 120) == 1)
    {
      *(v1 + 112) = result;
    }

    else
    {
      *(v1 + 120) = 1;

      return sub_100439684(result);
    }
  }

  return result;
}

uint64_t sub_100439640(uint64_t a1, uint64_t a2)
{
  *(a1 + 112) = a2;
}

uint64_t sub_100439684(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100439C10;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C57108;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15[1] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_100439900(void *a1, char *a2)
{
  if (qword_100CA2778 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000703C(v4, qword_100D90CC0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Processing main state for diagnostics", v7, 2u);
  }

  sub_1000161C0(a1 + 7, a1[10]);
  sub_10031BBFC(a2, v9);
  sub_1000161C0(a1 + 2, a1[5]);
  sub_1009A12B0(a2, v9);
  sub_100439C18(v9);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_100439A8C(uint64_t result)
{
  v1 = *(result + 112);
  if (v1)
  {
    *(result + 112) = 0;
    sub_100439684(v1);
  }

  else
  {
    *(result + 120) = 0;
  }

  return result;
}

uint64_t sub_100439AE4()
{
  sub_100380A7C();

  return swift_deallocClassInstance();
}

void sub_100439B18()
{
  if (*(v0 + 121) == 1)
  {
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
  }
}

uint64_t sub_100439BB0(uint64_t result)
{
  v1 = *(result + 112);
  if (v1)
  {
    *(result + 112) = 0;
    sub_100439684(v1);
  }

  return result;
}

uint64_t sub_100439CA0(uint64_t a1)
{
  result = type metadata accessor for Published();
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

uint64_t sub_100439D4C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v16 - v9;
  (*(v1 + *(v11 + 52)))(v12, v8);
  v13 = *(a1 + 32);
  sub_1000833D8(v6, v3, v13);
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_1000833D8(v10, v3, v13);
  return (v14)(v10, v3);
}

uint64_t sub_100439E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for ThrottleFrequentUpdateView.ContentView(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t sub_100439F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  sub_1000037C4();
  v49 = v5;
  v52 = *(v6 + 64);
  __chkstk_darwin(v7);
  v47 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  __chkstk_darwin(v9);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v13 + 16);
  *&v14 = v45;
  *(&v14 + 1) = v10;
  v56 = *(v13 + 32);
  v58 = v56;
  v57 = v14;
  updated = type metadata accessor for ThrottleFrequentUpdateView.ContentView(0, &v57);
  sub_1000037C4();
  v53 = v16;
  __chkstk_darwin(v17);
  v55 = v42 - v18;
  v19 = sub_10001EC8C();
  WitnessTable = swift_getWitnessTable(v19, updated);
  *&v57 = updated;
  *(&v57 + 1) = v10;
  *&v58 = WitnessTable;
  v20 = *(&v56 + 1);
  *(&v58 + 1) = *(&v56 + 1);
  v48 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_1000037C4();
  v50 = v21;
  v51 = v22;
  __chkstk_darwin(v21);
  v43 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v46 = v42 - v25;
  v42[1] = v20;
  v27 = type metadata accessor for ThrottleFrequentUpdateViewViewModel(0, v10, v20, v26);
  swift_getWitnessTable(byte_100A4DFDC, v27);
  StateObject.wrappedValue.getter();
  sub_10043A3EC();

  v28 = v12;
  v29 = v45;
  sub_100439E94(v28, *v3, v3[1], v45, v10, v56, v20, v55);
  v42[2] = *(a1 + 56);
  v30 = v49;
  v31 = v47;
  (*(v49 + 16))(v47, v3, a1);
  v32 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  *(v33 + 24) = v10;
  *(v33 + 32) = v56;
  (*(v30 + 32))(v33 + v32, v31, a1);
  v34 = WitnessTable;
  static VerticalSizingBehaviorKey.defaultValue.getter();

  v35 = v43;
  v36 = v55;
  View.onChange<A>(of:initial:_:)();

  (*(v53 + 8))(v36, updated);
  *&v57 = updated;
  *(&v57 + 1) = v10;
  *&v58 = v34;
  *(&v58 + 1) = *(&v56 + 1);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v46;
  v39 = v50;
  sub_1000833D8(v35, v50, OpaqueTypeConformance2);
  v40 = *(v51 + 8);
  v40(v35, v39);
  sub_1000833D8(v38, v39, OpaqueTypeConformance2);
  return (v40)(v38, v39);
}

uint64_t sub_10043A400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  __chkstk_darwin(a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ThrottleFrequentUpdateViewViewModel(0, v11, v12, v10);
  swift_getWitnessTable(byte_100A4DFDC, updated);
  StateObject.wrappedValue.getter();
  (*(v7 + 16))(v9, a2, a5);
  sub_10043A6F0(v9, &unk_100A4E0F0, &unk_100A4E128);
}

uint64_t sub_10043A554(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10043A60C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_10043A6F0(v3, &unk_100A4E0F0, &unk_100A4E128);
}

uint64_t sub_10043A6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 80);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = v12 - v7;
  v12[2] = v5;
  v13 = *(v9 + 88);
  v10 = v13;
  swift_getKeyPath();
  v12[0] = v5;
  v12[1] = v10;
  swift_getKeyPath();
  (*(v6 + 16))(v8, a1, v5);

  static Published.subscript.setter();
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_10043A850()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Published();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + *(*v0 + 104), v2);

  return v0;
}

uint64_t sub_10043A92C()
{
  sub_10043A850();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for ThrottleUpdateType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10043AA78()
{
  result = qword_100CB95C0[0];
  if (!qword_100CB95C0[0])
  {
    result = swift_getWitnessTable(aM_45, &type metadata for ThrottleUpdateType, v0, v1);
    atomic_store(result, qword_100CB95C0);
  }

  return result;
}

unint64_t sub_10043AACC(uint64_t a1)
{
  result = sub_10013DB50();
  if (v4 <= 0x3F)
  {
    updated = type metadata accessor for ThrottleFrequentUpdateViewViewModel(255, *(a1 + 24), *(a1 + 40), v3);
    swift_getWitnessTable(byte_100A4DFDC, updated);
    result = type metadata accessor for StateObject();
    if (v6 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10043ABB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
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

  v10 = ((v7 + 33) & ~v7) + *(*(v4 - 8) + 64);
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
        return sub_100024D10((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 17) & ~v7, v6, v4);
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

void sub_10043AD38(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
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
  v11 = ((v10 + 33) & ~v10) + *(*(v6 - 8) + 64);
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
            v22 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 17) & ~v10;

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

uint64_t sub_10043AFD4(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for ThrottleFrequentUpdateView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_10043A400(a1, a2, v10, v5, v6);
}

unint64_t sub_10043B090(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_10013DB50();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10043B118(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_100024D10(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
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
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_10043B254(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_10001B350(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_10043B43C(uint64_t a1)
{
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CB9760, &qword_100A4E200);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

void *sub_10043B4EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9768, &qword_100A4E208);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4A70, &qword_100A4E220);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for WeatherMenuInteractor();
      v21[3] = v12;
      v21[4] = &off_100C6A790;
      v21[0] = v11;
      v13 = type metadata accessor for WeatherMenuModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C6A790;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C799F0;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10043B768()
{
  sub_10022C350(&qword_100CB9768, &qword_100A4E208);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB9770, &qword_100A4E210);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB9778, &qword_100A4E218);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4A70, &qword_100A4E220);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB9780, &qword_100A4E228);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_10043B8D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v33)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v34;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&unk_100CAF440, &qword_100A3EDA8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v32)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB97A8, &qword_100A4E250);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB97B0, &qword_100A60C00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v6 = v27;
  if (!v27)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v28;
  v24 = v33;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9780, &qword_100A4E228);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v26)
  {
    v7 = sub_10002D7F8(v31, v32);
    v8 = __chkstk_darwin(v7);
    v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = sub_10002D7F8(v29, v30);
    v13 = __chkstk_darwin(v12);
    v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_10002D7F8(v25, v26);
    v18 = __chkstk_darwin(v17);
    v20 = (&v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = sub_10043C5C0(v24, v5, *v10, *v15, v6, v23, *v20);
    sub_100006F14(v25);
    sub_100006F14(v29);
    sub_100006F14(v31);
    result = type metadata accessor for WeatherMenuInteractor();
    a2[3] = result;
    a2[4] = &off_100C6A790;
    *a2 = v22;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_10043BCE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v35)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9788, &unk_100A4E230);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v33)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9790, &unk_100A9F1C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v31)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9798, &unk_100A4E240);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v29)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB97A0, &unk_100A4FE50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v27)
  {
    v5 = sub_10002D7F8(v32, v33);
    v6 = __chkstk_darwin(v5);
    v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v30, v31);
    v11 = __chkstk_darwin(v10);
    v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v28, v29);
    v16 = __chkstk_darwin(v15);
    v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_10002D7F8(v26, v27);
    v21 = __chkstk_darwin(v20);
    v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23, v21);
    v25 = sub_10043C8D8(&v34, *v8, v13, *v18, v23);
    sub_100006F14(v26);
    sub_100006F14(v28);
    sub_100006F14(v30);
    sub_100006F14(v32);
    result = type metadata accessor for WeatherMenuViewModelFactory();
    a2[3] = result;
    a2[4] = &off_100C6A0B0;
    *a2 = v25;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_10043C16C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v22;
  v4 = v23;
  v6 = v21;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9770, &qword_100A4E210);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v18, v19);
  v16 = type metadata accessor for WeatherMenuInputFactory();
  v17 = &off_100C60730;
  v15[0] = v7;
  sub_100035B30(v15, v14);
  v8 = swift_allocObject();
  sub_100013188(v14, v8 + 16);

  sub_100006F14(v15);
  sub_100006F14(v18);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10043C5B0;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9778, &qword_100A4E218);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v10 = *sub_1000161C0(v18, v19);
    v16 = type metadata accessor for WeatherMenuViewModelFactory();
    v17 = &off_100C6A0B0;
    v15[0] = v10;
    sub_100035B30(v15, v14);
    v11 = swift_allocObject();
    sub_100013188(v14, v11 + 16);

    sub_100006F14(v15);
    sub_100006F14(v18);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10009F868;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10043C5B8;
    *(v13 + 24) = v11;
    sub_10022C350(&qword_100CA4A70, &qword_100A4E220);
    swift_allocObject();
    return sub_10024AE04(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F81C, v12, sub_1000E87D0, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10043C524@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_10043C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v37 = a5;
  v38 = a6;
  v12 = *a7;
  v13 = type metadata accessor for DebugPresenter();
  v45[3] = v13;
  v45[4] = &off_100C5F738;
  v45[0] = a3;
  v14 = type metadata accessor for ToolbarAddButtonInteractor();
  v43 = v14;
  v44 = &off_100C60958;
  v42[0] = a4;
  v40 = v12;
  v41 = &off_100C50220;
  v39[0] = a7;
  type metadata accessor for WeatherMenuInteractor();
  v15 = swift_allocObject();
  v16 = sub_10002D7F8(v45, v13);
  v17 = __chkstk_darwin(v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = sub_10002D7F8(v42, v43);
  v22 = __chkstk_darwin(v21);
  v24 = (&v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = sub_10002D7F8(v39, v40);
  v27 = __chkstk_darwin(v26);
  v29 = (&v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = *v19;
  v32 = *v24;
  v33 = *v29;
  v15[7] = v13;
  v15[8] = &off_100C5F738;
  v15[4] = v31;
  v15[12] = v14;
  v15[13] = &off_100C60958;
  v15[9] = v32;
  v15[19] = v12;
  v15[20] = &off_100C50220;
  v15[2] = a1;
  v15[3] = a2;
  v34 = v38;
  v15[14] = v37;
  v15[15] = v34;
  v15[16] = v33;
  sub_100006F14(v39);
  sub_100006F14(v42);
  sub_100006F14(v45);
  return v15;
}

void *sub_10043C8D8(__int128 *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for LocationViewDescriptor();
  v51[3] = v10;
  v51[4] = &off_100C76318;
  v51[0] = a2;
  v49 = &type metadata for MapOverlayKindProvider;
  v50 = &off_100C5C7B0;
  v48[0] = swift_allocObject();
  memcpy((v48[0] + 16), a3, 0x50uLL);
  v11 = type metadata accessor for LocationFinder();
  v46 = v11;
  v47 = &off_100C5EE88;
  v45[0] = a4;
  v43 = &type metadata for AddLocationContextHelper;
  v44 = &off_100C59608;
  v12 = swift_allocObject();
  v42[0] = v12;
  v13 = *(a5 + 16);
  *(v12 + 16) = *a5;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a5 + 32);
  type metadata accessor for WeatherMenuViewModelFactory();
  v14 = swift_allocObject();
  v15 = sub_10002D7F8(v51, v10);
  v16 = __chkstk_darwin(v15);
  v18 = (&v42[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_10002D7F8(v48, v49);
  v21 = __chkstk_darwin(v20);
  v23 = &v42[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v21);
  v25 = sub_10002D7F8(v45, v46);
  v26 = __chkstk_darwin(v25);
  v28 = (&v42[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = sub_10002D7F8(v42, v43);
  v31 = __chkstk_darwin(v30);
  v33 = &v42[-1] - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v31);
  v35 = *v18;
  v36 = *v28;
  v14[10] = v10;
  v14[11] = &off_100C76318;
  v14[7] = v35;
  v14[15] = &type metadata for MapOverlayKindProvider;
  v14[16] = &off_100C5C7B0;
  v37 = swift_allocObject();
  v14[12] = v37;
  memcpy((v37 + 16), v23, 0x50uLL);
  v14[20] = v11;
  v14[21] = &off_100C5EE88;
  v14[17] = v36;
  v14[25] = &type metadata for AddLocationContextHelper;
  v14[26] = &off_100C59608;
  v38 = swift_allocObject();
  v14[22] = v38;
  v39 = *(v33 + 1);
  *(v38 + 16) = *v33;
  *(v38 + 32) = v39;
  *(v38 + 48) = *(v33 + 4);
  sub_100013188(a1, (v14 + 2));
  sub_100006F14(v42);
  sub_100006F14(v45);
  sub_100006F14(v48);
  sub_100006F14(v51);
  return v14;
}

void (*sub_10043CD34())()
{
  v1 = v0;
  type metadata accessor for Location();
  sub_1000037C4();
  v75 = v3;
  v76 = v2;
  __chkstk_darwin(v2);
  v74 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  sub_1000037C4();
  v73 = v6;
  __chkstk_darwin(v7);
  v71 = v8;
  v72 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v69 - v10;
  v11 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v11 - 8);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v69 - v15;
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  __chkstk_darwin(v23);
  v25 = &v69 - v24;
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  if (Location.kind.getter())
  {
    Location.coordinate.getter();
    v30 = v29;
    v32 = v31;
    v33 = Location.preciseName.getter();
    if (!v34)
    {
      v33 = Location.name.getter();
    }

    v35 = v33;
    v36 = v34;
    v37 = objc_allocWithZone(_MKURLBuilder);
    v38 = sub_10043D8A8(v30, v32, v35, v36);
    if (v38)
    {
      v39 = v38;
      v40 = [v38 buildForWeb];

      if (v40)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      sub_10001C230(v22, v41);
      sub_10043D988(v22, v25);
    }

    else
    {
      sub_10001C230(v25, 1);
    }
  }

  else
  {
    v42 = Location.searchTitle.getter();
    if (v43)
    {
      v44 = v42;
      v45 = v43;
      v69 = v0;
      v46 = Location.searchSubtitle.getter();
      if (v47)
      {
        v48 = v46;
        v49 = v47;
        v77 = v44;
        v78 = v45;
        v50._countAndFlagsBits = 44;
        v50._object = 0xE100000000000000;
        String.append(_:)(v50);
        v51._countAndFlagsBits = v48;
        v51._object = v49;
        String.append(_:)(v51);

        v44 = v77;
        v45 = v78;
      }

      v1 = v69;
    }

    else
    {
      v44 = Location.name.getter();
      v45 = v52;
    }

    v53 = objc_allocWithZone(_MKURLBuilder);
    v54 = sub_10043D924(v44, v45);
    if (v54)
    {
      v55 = v54;
      Location.coordinate.getter();
      [v55 setSearchLocation:? span:?];

      v56 = [v55 buildForWeb];
      if (v56)
      {
        v57 = v56;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v58 = 0;
      }

      else
      {

        v58 = 1;
      }

      sub_10001C230(v16, v58);
      sub_10043D988(v16, v19);
    }

    else
    {
      sub_10001C230(v19, 1);
    }

    v25 = v19;
  }

  sub_10043D988(v25, v28);
  sub_1000E594C(v28, v13);
  if (sub_100024D10(v13, 1, v5) == 1)
  {
    sub_1000E6774(v13);
    sub_10000C70C(0, &qword_100CAD0F8, CLLocation_ptr);
    (*(v75 + 16))(v74, v1, v76);
    v59 = CLLocation.init(_:)();
    v60 = [objc_allocWithZone(MKMapItem) initWithCLLocation:v59];

    sub_1000E6774(v28);
    *(swift_allocObject() + 16) = v60;
    return sub_10043D9F8;
  }

  else
  {
    sub_1000E6774(v28);
    v63 = v73 + 32;
    v62 = *(v73 + 32);
    v64 = v70;
    v62(v70, v13, v5);
    v65 = v72;
    v62(v72, v64, v5);
    v66 = (*(v63 + 48) + 16) & ~*(v63 + 48);
    v67 = swift_allocObject();
    v62((v67 + v66), v65, v5);
    return sub_10043DA00;
  }
}

void sub_10043D2D4()
{
  v0 = objc_opt_self();
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  [v0 _openDefaultNavigationWithURL:v2 fromScene:0 completionHandler:0];
}

void sub_10043D344(uint64_t result)
{
  if (result)
  {
    sub_10043D370();
  }
}

void sub_10043D370()
{
  v1 = objc_opt_self();
  sub_10022C350(&qword_100CB97B8, &unk_100A579C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100A2C3F0;
  *(v2 + 56) = sub_10000C70C(0, &qword_100CB97C0, MKMapItem_ptr);
  *(v2 + 32) = v0;
  v3 = v0;
  v4 = Dictionary.init(dictionaryLiteral:)();

  sub_10043DA60(v2, v4, 0, 0, v1);
}

uint64_t sub_10043D444(uint64_t a1)
{
  if (Location.kind.getter())
  {
    return 0;
  }

  result = Location.searchTitle.getter();
  if (!v2)
  {
    return Location.name.getter();
  }

  return result;
}

uint64_t sub_10043D478(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  v1 = dispatch thunk of LocationMetadataManagerType.availableCountryCode(for:)();
  v3 = v1;
  if (!v2)
  {
    sub_1000885AC(v1, 0);
    return 0;
  }

  v4 = v2;
  if (v2 == 1)
  {
    return 0;
  }

  if (v1 == 20035 && v2 == 0xE200000000000000)
  {
    sub_1000885AC(20035, 0xE200000000000000);
    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000885AC(v3, v4);
    return v6 & 1;
  }
}

uint64_t sub_10043D538@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v4 - 8);
  v6 = v36 - v5;
  v7 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v36 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = v36 - v18;
  v38 = 0.0;
  v39 = 0.0;
  if (![a1 w_getCoordinate:{&v38, v17}])
  {
    goto LABEL_6;
  }

  v20 = [a1 w_mapItem];
  v37 = a2;
  v21 = v20;
  v22 = [v20 timeZone];

  a2 = v37;
  if (!v22)
  {
    goto LABEL_6;
  }

  static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 32))(v19, v15, v7);
  v23 = sub_10081261C([a1 w_mapItem]);
  if (!v24)
  {
    (*(v9 + 8))(v19, v7);
LABEL_6:

    v33 = 1;
    goto LABEL_7;
  }

  v36[5] = v23;
  v36[3] = CLLocationCoordinate2D.id.getter();
  v36[4] = v25;
  (*(v9 + 16))(v12, v19, v7);
  v26 = v38;
  v27 = v39;
  static WeatherClock.date.getter();
  v28 = type metadata accessor for Date();
  sub_10001B350(v6, 0, 1, v28);
  v29 = [a1 title];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36[1] = v31;
  v36[2] = v30;

  v32 = [a1 subtitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  a2 = v37;
  Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:)(v26, v27);

  (*(v9 + 8))(v19, v7);
  v33 = 0;
LABEL_7:
  v34 = type metadata accessor for Location();
  return sub_10001B350(a2, v33, 1, v34);
}

id sub_10043D8A8(double a1, double a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initForCoordinate:v7 label:{a1, a2}];

  return v8;
}

id sub_10043D924(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initForSearch:v3];

  return v4;
}

uint64_t sub_10043D988(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10043DA00()
{
  type metadata accessor for URL();

  sub_10043D2D4();
}

void sub_10043DA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = Dictionary._bridgeToObjectiveC()().super.isa;

  [a5 _openDefaultNavigationWithItems:isa launchOptions:v9 fromScene:a3 completionHandler:a4];
}

uint64_t sub_10043DB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v47 = a4;
  v5 = sub_10022C350(&qword_100CA65C0, &unk_100A313E0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v45 = type metadata accessor for SelectedSearchResult(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v46 = v10;
  v11 = sub_10022C350(&qword_100CA65D0, &unk_100A313F0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v42 - v22;
  v24 = type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = v27 - v26;
  sub_100035AD0(a1, v23, &qword_100CA65C8, &unk_100A31670);
  if (sub_100024D10(v23, 1, v24) == 1)
  {
    v29 = v42;
    sub_100441150(v42, v28);
    v30 = sub_100024D10(v23, 1, v24);
    v31 = v29;
    if (v30 != 1)
    {
      sub_1000180EC(v23, &qword_100CA65C8, &unk_100A31670);
    }
  }

  else
  {
    sub_100016974();
    sub_100441058(v23, v28);
    v31 = v42;
  }

  sub_100035AD0(v43, v14, &qword_100CA65D0, &unk_100A313F0);
  v32 = sub_100024D10(v14, 1, v15);
  v33 = v46;
  if (v32 == 1)
  {
    type metadata accessor for LocationPreviewViewState(0);
    sub_10001ECA4();
    sub_100441150(v31 + v34, v19);
    v35 = sub_100024D10(v14, 1, v15);
    v36 = v45;
    if (v35 != 1)
    {
      sub_1000180EC(v14, &qword_100CA65D0, &unk_100A313F0);
    }
  }

  else
  {
    sub_10001468C();
    sub_100441058(v14, v19);
    v36 = v45;
  }

  sub_100035AD0(v44, v8, &qword_100CA65C0, &unk_100A313E0);
  if (sub_100024D10(v8, 1, v36) == 1)
  {
    v37 = type metadata accessor for LocationPreviewViewState(0);
    sub_100441150(v31 + *(v37 + 24), v33);
    if (sub_100024D10(v8, 1, v36) != 1)
    {
      sub_1000180EC(v8, &qword_100CA65C0, &unk_100A313E0);
    }
  }

  else
  {
    sub_10003C4B4();
    sub_100441058(v8, v33);
  }

  sub_100016974();
  v38 = v47;
  sub_100441058(v28, v47);
  type metadata accessor for LocationPreviewViewState(0);
  sub_10001468C();
  sub_100441058(v19, v38 + v39);
  sub_10003C4B4();
  return sub_100441058(v33, v38 + v40);
}

uint64_t sub_10043DF68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C77656976657270 && a2 == 0xEF6E6F697461636FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6569566C61646F6DLL && a2 == 0xEE00657461745377;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x8000000100AC7B60 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10043E090(char a1)
{
  if (!a1)
  {
    return 0x4C77656976657270;
  }

  if (a1 == 1)
  {
    return 0x6569566C61646F6DLL;
  }

  return 0xD000000000000014;
}

uint64_t sub_10043E10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10043DF68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10043E134(uint64_t a1)
{
  v2 = sub_1004410B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10043E170(uint64_t a1)
{
  v2 = sub_1004410B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10043E1AC()
{
  v2 = type metadata accessor for NewsArticle(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = (v5 - v4);
  v7 = type metadata accessor for ConditionDetailViewState(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  sub_10000C790();
  v9 = type metadata accessor for URL();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  sub_10001ECA4();
  sub_100441150(v1, v19);
  v20 = 1701736302;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000085F0();
      sub_100441058(v19, v0);
      _StringGuts.grow(_:)(19);

      type metadata accessor for DetailCondition();
      sub_100441108(&qword_100CB0D58, &type metadata accessor for DetailCondition, &protocol conformance descriptor for DetailCondition);
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v20 = 0xD000000000000011;
      sub_10006958C();
      v27 = v0;
      goto LABEL_9;
    case 2u:
      v20 = 0xD000000000000010;
      sub_10001C248();
      v27 = v19;
      goto LABEL_9;
    case 3u:
      sub_10001C248();
      sub_100441000(v19, v22);
      v23 = 11;
      goto LABEL_5;
    case 4u:
      sub_10001C248();
      sub_100441000(v19, v28);
      return 0xD000000000000013;
    case 5u:
      sub_100441000(v19, type metadata accessor for LocationPreviewModalViewState);
      return 0x617465446E6F6F6DLL;
    case 6u:
      sub_100005D6C();
      sub_100441058(v19, v6);
      strcpy(v30, "newsArticle: ");
      HIWORD(v30[1]) = -4864;
      String.append(_:)(*v6);
      v20 = v30[0];
      sub_100031D20();
      v27 = v6;
LABEL_9:
      sub_100441000(v27, v26);
      break;
    case 7u:
      sub_100441000(v19, type metadata accessor for LocationPreviewModalViewState);
      v20 = 0x7365676172657661;
      break;
    case 8u:
      sub_10001C248();
      sub_100441000(v19, v24);
      v23 = 5;
LABEL_5:
      v20 = v23 | 0xD000000000000010;
      break;
    case 9u:
      return v20;
    default:
      (*(v11 + 32))(v15, v19, v9);
      v30[0] = 0x203A6C7275;
      v30[1] = 0xE500000000000000;
      v21._countAndFlagsBits = URL.absoluteString.getter();
      String.append(_:)(v21);

      v20 = 0x203A6C7275;
      (*(v11 + 8))(v15, v9);
      break;
  }

  return v20;
}

uint64_t sub_10043E5E4@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v3 = sub_1000038D8();
  v104 = type metadata accessor for HomeAndWorkRefinementViewState(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v101 = v5;
  v6 = sub_1000038CC();
  v103 = type metadata accessor for AveragesDetailViewState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v106 = v8;
  v9 = sub_1000038CC();
  v102 = type metadata accessor for NewsArticle(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v100 = v11;
  v12 = sub_1000038CC();
  v98 = type metadata accessor for MoonDetailViewState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v99 = v14;
  v15 = sub_1000038CC();
  v96 = type metadata accessor for SunriseSunsetDetailViewState(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  v97 = v17;
  v18 = sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v95 = v20;
  v21 = sub_1000038CC();
  v92 = type metadata accessor for AirQualityDetailViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000038E4();
  v93 = v23;
  v24 = sub_1000038CC();
  v90 = type metadata accessor for ConditionDetailViewState(v24);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000038E4();
  v91 = v26;
  sub_1000038CC();
  v27 = type metadata accessor for URL();
  sub_1000037C4();
  v89 = v28;
  __chkstk_darwin(v29);
  sub_1000037D8();
  sub_10000C790();
  sub_10022C350(&qword_100CB9978, &qword_100A4E4B0);
  sub_1000037C4();
  v105 = v30;
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &v86 - v32;
  v34 = type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000037D8();
  v38 = v37 - v36;
  v39 = v2[3];
  v109 = v2;
  sub_1000161C0(v2, v39);
  sub_100441210();
  v40 = v108;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v40)
  {
    v42 = v109;
  }

  else
  {
    v86 = v1;
    v87 = v27;
    v88 = v38;
    v108 = v34;
    v41 = v107;
    v115[4] = 0;
    sub_100441264();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v33;
    switch(v115[5])
    {
      case 1:
        v110 = 1;
        sub_100037178();
        sub_100441108(v68, v69, &protocol conformance descriptor for URL);
        v70 = v86;
        v71 = v87;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v72 = sub_100013814();
        v73(v72);
        v44 = v88;
        (*(v89 + 32))(v88, v70, v71);
        goto LABEL_16;
      case 2:
        v111 = 2;
        sub_1000B994C();
        sub_100441108(v56, v57, asc_100A4DC5C);
        sub_1000315C4(v90, &v111);
        v58 = sub_100013814();
        v59(v58);
        sub_1000085F0();
        sub_100037AB0();
        goto LABEL_16;
      case 3:
        v112[0] = 3;
        sub_1000163A8();
        sub_100441108(v60, v61, aK_4);
        sub_1000315C4(v92, v112);
        v62 = sub_100013814();
        v63(v62);
        sub_1000178F0();
        sub_100037AB0();
        goto LABEL_16;
      case 4:
        v113 = 4;
        sub_10003A204();
        sub_100441108(v48, v49, byte_100AA50A8);
        sub_1000315C4(HourPrecipitationDetailViewState, &v113);
        v50 = sub_100013814();
        v51(v50);
        sub_1000497C4();
        sub_100037AB0();
        goto LABEL_16;
      case 5:
        v114 = 5;
        sub_100024150();
        sub_100441108(v74, v75, byte_100AA2800);
        sub_1000315C4(v96, &v114);
        v76 = sub_100013814();
        v77(v76);
        sub_10004E5C0();
        sub_100037AB0();
        goto LABEL_16;
      case 6:
        v115[0] = 6;
        sub_10002FEE4();
        sub_100441108(v78, v79, byte_100A473F4);
        sub_1000315C4(v98, v115);
        v80 = sub_100013814();
        v81(v80);
        sub_100074A04();
        sub_100037AB0();
        goto LABEL_16;
      case 7:
        v115[1] = 7;
        sub_10003BDF0();
        sub_100441108(v64, v65, byte_100A962A4);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v66 = sub_100013814();
        v67(v66);
        sub_100005D6C();
        sub_100037AB0();
        goto LABEL_16;
      case 8:
        v115[2] = 8;
        sub_100036D2C();
        sub_100441108(v82, v83, byte_100A3F4B8);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v84 = sub_100013814();
        v85(v84);
        sub_10000CB14();
        sub_100037AB0();
        goto LABEL_16;
      case 9:
        v115[3] = 9;
        sub_100071CD8();
        sub_100441108(v52, v53, aQ_49);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v54 = sub_100013814();
        v55(v54);
        sub_1000246F4();
        sub_100037AB0();
LABEL_16:
        v47 = v109;
        break;
      default:
        v45 = sub_100013814();
        v46(v45);
        v47 = v109;
        v44 = v88;
        break;
    }

    swift_storeEnumTagMultiPayload();
    sub_10001468C();
    sub_100441058(v44, v41);
    v42 = v47;
  }

  return sub_100006F14(v42);
}

uint64_t sub_10043EE58()
{
  v3 = sub_1000038D8();
  v94[7] = type metadata accessor for HomeAndWorkRefinementViewState(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v102 = v5;
  v6 = sub_1000038CC();
  v94[6] = type metadata accessor for AveragesDetailViewState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v101 = v8;
  v9 = sub_1000038CC();
  v94[5] = type metadata accessor for MoonDetailViewState(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v100 = v11;
  v12 = sub_1000038CC();
  v94[4] = type metadata accessor for NewsArticle(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v99 = v14;
  v15 = sub_1000038CC();
  v94[3] = type metadata accessor for SunriseSunsetDetailViewState(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  v98 = v17;
  v18 = sub_1000038CC();
  v94[2] = type metadata accessor for NextHourPrecipitationDetailViewState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v97 = v20;
  v21 = sub_1000038CC();
  v94[1] = type metadata accessor for AirQualityDetailViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000038E4();
  v96 = v23;
  v24 = sub_1000038CC();
  v94[0] = type metadata accessor for ConditionDetailViewState(v24);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000037D8();
  v28 = v27 - v26;
  v29 = type metadata accessor for URL();
  sub_1000037C4();
  v95 = v30;
  __chkstk_darwin(v31);
  sub_1000037D8();
  v34 = v33 - v32;
  type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000037D8();
  sub_10000C790();
  sub_10022C350(&qword_100CB99D0, &qword_100A4E4B8);
  sub_1000037C4();
  v106 = v36;
  v107 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  v40 = v94 - v39;
  sub_1000161C0(v1, v1[3]);
  sub_100441210();
  v105 = v40;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10001ECA4();
  sub_100441150(v103, v0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000085F0();
      sub_100441058(v0, v28);
      sub_1000D4214();
      v73 = v106;
      v74 = v104;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v74)
      {
        HIBYTE(v108) = 2;
        sub_1000B994C();
        sub_100441108(v75, v76, asc_100A4DC34);
        sub_1000214AC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      sub_10006958C();
      sub_100441000(v28, v77);
      v55 = sub_100024168();
      v57 = v73;
      return v56(v55, v57);
    case 2u:
      sub_1000178F0();
      v47 = v96;
      sub_100441058(v0, v96);
      v58 = sub_1000D4214();
      sub_100020730(v58, v59, v60, &type metadata for LocationPreviewModalViewState.CodingType, v58);
      if (!v2)
      {
        HIBYTE(v108) = 3;
        sub_1000163A8();
        sub_100441108(v61, v62, aK_5);
        sub_1000284AC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v53 = type metadata accessor for AirQualityDetailViewState;
      goto LABEL_30;
    case 3u:
      sub_1000497C4();
      v47 = v97;
      sub_100441058(v0, v97);
      v63 = sub_1000D4214();
      sub_100020730(v63, v64, v65, &type metadata for LocationPreviewModalViewState.CodingType, v63);
      if (!v2)
      {
        HIBYTE(v108) = 4;
        sub_10003A204();
        sub_100441108(v66, v67, byte_100AA5080);
        sub_1000284AC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v53 = type metadata accessor for NextHourPrecipitationDetailViewState;
      goto LABEL_30;
    case 4u:
      sub_10004E5C0();
      v47 = v98;
      sub_100441058(v0, v98);
      v48 = sub_1000D4214();
      sub_100020730(v48, v49, v50, &type metadata for LocationPreviewModalViewState.CodingType, v48);
      if (!v2)
      {
        HIBYTE(v108) = 5;
        sub_100024150();
        sub_100441108(v51, v52, byte_100AA27D8);
        sub_1000284AC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v53 = type metadata accessor for SunriseSunsetDetailViewState;
      goto LABEL_30;
    case 5u:
      sub_100074A04();
      v47 = v100;
      sub_100441058(v0, v100);
      v78 = sub_1000D4214();
      sub_100020730(v78, v79, v80, &type metadata for LocationPreviewModalViewState.CodingType, v78);
      if (!v2)
      {
        HIBYTE(v108) = 6;
        sub_10002FEE4();
        sub_100441108(v81, v82, byte_100A473CC);
        sub_1000284AC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v53 = type metadata accessor for MoonDetailViewState;
      goto LABEL_30;
    case 6u:
      sub_100005D6C();
      v47 = v99;
      sub_100441058(v0, v99);
      v83 = sub_1000D4214();
      sub_100020730(v83, v84, v85, &type metadata for LocationPreviewModalViewState.CodingType, v83);
      if (!v2)
      {
        HIBYTE(v108) = 7;
        sub_10003BDF0();
        sub_100441108(v86, v87, byte_100A9627C);
        sub_1000284AC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v53 = type metadata accessor for NewsArticle;
      goto LABEL_30;
    case 7u:
      sub_10000CB14();
      v47 = v101;
      sub_100441058(v0, v101);
      v68 = sub_1000D4214();
      sub_100020730(v68, v69, v70, &type metadata for LocationPreviewModalViewState.CodingType, v68);
      if (!v2)
      {
        HIBYTE(v108) = 8;
        sub_100036D2C();
        sub_100441108(v71, v72, byte_100A3F490);
        sub_1000284AC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v53 = type metadata accessor for AveragesDetailViewState;
      goto LABEL_30;
    case 8u:
      sub_1000246F4();
      v47 = v102;
      sub_100441058(v0, v102);
      v88 = sub_1000D4214();
      sub_100020730(v88, v89, v90, &type metadata for LocationPreviewModalViewState.CodingType, v88);
      if (!v2)
      {
        HIBYTE(v108) = 9;
        sub_100071CD8();
        sub_100441108(v91, v92, byte_100A6B0E8);
        sub_1000284AC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v53 = type metadata accessor for HomeAndWorkRefinementViewState;
LABEL_30:
      sub_100441000(v47, v53);
      goto LABEL_31;
    case 9u:
      v108 = 0;
      sub_1004412B8();
      v54 = v106;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v55 = sub_100024168();
      v57 = v54;
      return v56(v55, v57);
    default:
      v41 = v95;
      (*(v95 + 32))(v34, v0, v29);
      v42 = sub_1000D4214();
      sub_100020730(v42, v43, v44, &type metadata for LocationPreviewModalViewState.CodingType, v42);
      if (!v2)
      {
        HIBYTE(v108) = 1;
        sub_100037178();
        sub_100441108(v45, v46, &protocol conformance descriptor for URL);
        sub_1000214AC();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v41 + 8))(v34, v29);
LABEL_31:
      v55 = sub_100024168();
      v57 = v28;
      return v56(v55, v57);
  }
}

unint64_t sub_10043F724(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C43A90, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void sub_10043F778(char a1)
{
  switch(a1)
  {
    case 6:
      sub_1000D3EAC();
      break;
    case 7:
      sub_100018340();
      break;
    case 8:
      sub_10001C260();
      break;
    default:
      return;
  }
}

unint64_t sub_10043F888(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C43BA0, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

void sub_10043F8D4(char a1)
{
  switch(a1)
  {
    case 3:
      sub_10001C260();
      break;
    case 6:
      sub_1000D3EAC();
      break;
    case 7:
      sub_100018340();
      break;
    default:
      return;
  }
}

uint64_t sub_10043F9F0(uint64_t a1, uint64_t a2)
{
  v127 = a1;
  v128 = a2;
  v113 = type metadata accessor for HomeAndWorkRefinementViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v121 = v3;
  v4 = sub_1000038CC();
  v5 = type metadata accessor for AveragesDetailViewState(v4);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000038E4();
  v120 = v7;
  v8 = sub_1000038CC();
  v9 = type metadata accessor for NewsArticle(v8);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000038E4();
  v118 = v11;
  v12 = sub_1000038CC();
  v13 = type metadata accessor for MoonDetailViewState(v12);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000038E4();
  v116 = v15;
  v16 = sub_1000038CC();
  v110 = type metadata accessor for SunriseSunsetDetailViewState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000038E4();
  v119 = v18;
  v19 = sub_1000038CC();
  v109[1] = type metadata accessor for NextHourPrecipitationDetailViewState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v117 = v21;
  v22 = sub_1000038CC();
  v112 = type metadata accessor for AirQualityDetailViewState(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000038E4();
  v115 = v24;
  v25 = sub_1000038CC();
  v26 = type metadata accessor for ConditionDetailViewState(v25);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_1000038E4();
  v114 = v28;
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  v124 = v30;
  v125 = v29;
  __chkstk_darwin(v29);
  sub_1000038E4();
  v111 = v31;
  v32 = sub_1000038CC();
  type metadata accessor for LocationPreviewModalViewState(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  v126 = v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = v109 - v36;
  __chkstk_darwin(v38);
  v40 = (v109 - v39);
  __chkstk_darwin(v41);
  v43 = v109 - v42;
  __chkstk_darwin(v44);
  v123 = v109 - v45;
  __chkstk_darwin(v46);
  v122 = v109 - v47;
  __chkstk_darwin(v48);
  v50 = v109 - v49;
  __chkstk_darwin(v51);
  v53 = v109 - v52;
  __chkstk_darwin(v54);
  v56 = v109 - v55;
  v57 = sub_10022C350(&qword_100CB9910, &qword_100A4E480);
  sub_100003810(v57);
  sub_100003828();
  __chkstk_darwin(v58);
  v60 = v109 - v59;
  v62 = *(v61 + 56);
  sub_100441150(v127, v109 - v59);
  sub_100441150(v128, &v60[v62]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10001ECA4();
      sub_100441150(v60, v53);
      if (sub_1000A7C48() == 1)
      {
        sub_1000085F0();
        v79 = v114;
        sub_100441058(&v60[v62], v114);
        v76 = sub_100437E74(v53, v79);
        v77 = type metadata accessor for ConditionDetailViewState;
        sub_100441000(v79, type metadata accessor for ConditionDetailViewState);
        v78 = v53;
        goto LABEL_28;
      }

      sub_10006958C();
      v88 = v53;
      goto LABEL_46;
    case 2u:
      sub_10001ECA4();
      sub_100441150(v60, v50);
      if (sub_1000A7C48() != 2)
      {
        v87 = type metadata accessor for AirQualityDetailViewState;
        v88 = v50;
        goto LABEL_46;
      }

      sub_1000178F0();
      v69 = &v60[v62];
      v70 = v115;
      sub_100441058(v69, v115);
      if ((static Location.== infix(_:_:)() & 1) == 0 || v50[*(v112 + 20)] != *(v70 + *(v112 + 20)))
      {
        goto LABEL_14;
      }

      v97 = *(v112 + 24);
      v98 = v50[v97 + 32];
      v99 = v70 + v97;
      if (v98)
      {
        if (*(v99 + 32))
        {
          goto LABEL_63;
        }

LABEL_14:
        sub_100011584();
        sub_100441000(v70, v71);
        v72 = v50;
        goto LABEL_54;
      }

      if ((*(v99 + 32) & 1) != 0 || !sub_10003B9F4(v99))
      {
        goto LABEL_14;
      }

LABEL_63:
      sub_100011584();
      sub_100441000(v70, v101);
      v94 = v50;
LABEL_64:
      v102 = v43;
LABEL_77:
      sub_100441000(v94, v102);
LABEL_78:
      sub_10001C248();
      sub_100441000(v60, v108);
      v76 = 1;
      return v76 & 1;
    case 3u:
      sub_10001ECA4();
      v63 = v122;
      sub_100441150(v60, v122);
      if (sub_1000A7C48() != 3)
      {
        v86 = type metadata accessor for NextHourPrecipitationDetailViewState;
        goto LABEL_45;
      }

      sub_1000497C4();
      sub_100441058(&v60[v62], v117);
      if ((static Location.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_59;
      }

      sub_100071730();
      if (v74)
      {
        sub_10000EA24();
        if (v43)
        {
LABEL_66:
          v104 = type metadata accessor for NextHourPrecipitationDetailViewState;
LABEL_76:
          v102 = v104;
          v94 = v63;
          goto LABEL_77;
        }
      }

      else if (v43)
      {
LABEL_59:
        sub_10000EA24();
      }

      else
      {
        v103 = sub_10003B9F4(v73);
        sub_10000EA24();
        if (v103)
        {
          goto LABEL_66;
        }
      }

      v100 = type metadata accessor for NextHourPrecipitationDetailViewState;
      goto LABEL_70;
    case 4u:
      sub_10001ECA4();
      v63 = v123;
      sub_100441150(v60, v123);
      if (sub_1000A7C48() != 4)
      {
        v86 = type metadata accessor for SunriseSunsetDetailViewState;
        goto LABEL_45;
      }

      sub_10004E5C0();
      v64 = &v60[v62];
      v65 = v119;
      sub_100441058(v64, v119);
      if ((static Location.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_53;
      }

      v66 = *(v110 + 20);
      v67 = *(v63 + v66 + 32);
      v68 = v65 + v66;
      if (v67)
      {
        if ((*(v68 + 32) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else if ((*(v68 + 32) & 1) != 0 || !sub_10003B9F4(v68))
      {
        goto LABEL_53;
      }

      if (*(v63 + *(v110 + 24)) == *(v65 + *(v110 + 24)))
      {
        sub_1000251EC();
        sub_100441000(v65, v93);
        v94 = v63;
        goto LABEL_64;
      }

LABEL_53:
      sub_1000251EC();
      sub_100441000(v65, v95);
      v72 = v63;
LABEL_54:
      v96 = v43;
      goto LABEL_71;
    case 5u:
      sub_10001ECA4();
      sub_100441150(v60, v43);
      if (sub_1000A7C48() == 5)
      {
        sub_100074A04();
        v80 = v116;
        sub_100441058(&v60[v62], v116);
        v76 = sub_1003C55BC(v43, v80);
        sub_100441000(v80, type metadata accessor for MoonDetailViewState);
        v78 = v43;
        v81 = type metadata accessor for MoonDetailViewState;
        goto LABEL_29;
      }

      v87 = type metadata accessor for MoonDetailViewState;
      v88 = v43;
      goto LABEL_46;
    case 6u:
      sub_10001ECA4();
      sub_100441150(v60, v40);
      if (sub_1000A7C48() == 6)
      {
        sub_100005D6C();
        v82 = v118;
        sub_100441058(&v60[v62], v118);
        v76 = sub_1008BE2A4(v40, v82);
        v77 = type metadata accessor for NewsArticle;
        sub_100441000(v82, type metadata accessor for NewsArticle);
        v78 = v40;
        goto LABEL_28;
      }

      sub_100031D20();
      v88 = v40;
      goto LABEL_46;
    case 7u:
      sub_10001ECA4();
      sub_100441150(v60, v37);
      if (sub_1000A7C48() != 7)
      {
        v87 = type metadata accessor for AveragesDetailViewState;
        v88 = v37;
        goto LABEL_46;
      }

      sub_10000CB14();
      v75 = v120;
      sub_100441058(&v60[v62], v120);
      v76 = sub_10035E570(v37, v75);
      v77 = type metadata accessor for AveragesDetailViewState;
      sub_100441000(v75, type metadata accessor for AveragesDetailViewState);
      v78 = v37;
LABEL_28:
      v81 = v77;
LABEL_29:
      sub_100441000(v78, v81);
      goto LABEL_30;
    case 8u:
      sub_10001ECA4();
      v63 = v126;
      sub_100441150(v60, v126);
      if (sub_1000A7C48() != 8)
      {
        v86 = type metadata accessor for HomeAndWorkRefinementViewState;
LABEL_45:
        v87 = v86;
        v88 = v63;
LABEL_46:
        sub_100441000(v88, v87);
LABEL_47:
        sub_1000180EC(v60, &qword_100CB9910, &qword_100A4E480);
        goto LABEL_72;
      }

      sub_1000246F4();
      sub_100441058(&v60[v62], v121);
      if ((static Location.== infix(_:_:)() & 1) == 0 || (static LocationOfInterest.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_68;
      }

      sub_100071730();
      if (v85)
      {
        sub_10002C6FC();
        if (v43)
        {
          goto LABEL_75;
        }
      }

      else if (v43)
      {
LABEL_68:
        sub_10002C6FC();
      }

      else
      {
        v107 = sub_10003B9F4(v84);
        sub_10002C6FC();
        if (v107)
        {
LABEL_75:
          v104 = type metadata accessor for HomeAndWorkRefinementViewState;
          goto LABEL_76;
        }
      }

      v100 = type metadata accessor for HomeAndWorkRefinementViewState;
LABEL_70:
      v96 = v100;
      v72 = v63;
LABEL_71:
      sub_100441000(v72, v96);
      sub_10001C248();
      sub_100441000(v60, v105);
LABEL_72:
      v76 = 0;
      return v76 & 1;
    case 9u:
      if (sub_1000A7C48() == 9)
      {
        goto LABEL_78;
      }

      goto LABEL_47;
    default:
      sub_10001ECA4();
      sub_100441150(v60, v56);
      if (sub_1000A7C48())
      {
        (*(v124 + 8))(v56, v125);
        goto LABEL_47;
      }

      v90 = v124;
      v89 = v125;
      v91 = v111;
      (*(v124 + 32))(v111, &v60[v62], v125);
      v76 = static URL.== infix(_:_:)();
      v92 = *(v90 + 8);
      v92(v91, v89);
      v92(v56, v89);
LABEL_30:
      sub_10001C248();
      sub_100441000(v60, v83);
      return v76 & 1;
  }
}

uint64_t sub_10044047C(uint64_t a1, uint64_t a2)
{
  sub_1006E6E98();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for LocationPreviewViewState(0);
  if ((sub_10043F9F0(a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);

  return sub_1009614B0(a1 + v6, a2 + v6);
}

uint64_t sub_100440500(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB9940, &unk_100A4E490);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1004410B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v33[1] = 0;
  type metadata accessor for PreviewLocation(0);
  sub_100020F68();
  sub_100441108(v11, v12, byte_100A79960);
  sub_1000214AC();
  sub_100005AE0(v3, v13, v14, v15, v16);
  if (!v2)
  {
    v17 = type metadata accessor for LocationPreviewViewState(0);
    v18 = *(v17 + 20);
    v33[0] = 1;
    type metadata accessor for LocationPreviewModalViewState(0);
    sub_100041A14();
    v21 = sub_100441108(v19, v20, byte_100A4E2BC);
    sub_100005AE0(v3 + v18, v33, v22, v23, v21);
    v24 = *(v17 + 24);
    v32 = 2;
    type metadata accessor for SelectedSearchResult(0);
    sub_10003046C();
    v27 = sub_100441108(v25, v26, byte_100A9C078);
    sub_100005AE0(v3 + v24, &v32, v28, v29, v27);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_100440704@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v36 = type metadata accessor for SelectedSearchResult(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v35 = v5;
  v6 = sub_1000038CC();
  type metadata accessor for LocationPreviewModalViewState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  type metadata accessor for PreviewLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v38 = v12;
  v40 = sub_10022C350(&qword_100CB9918, &qword_100A4E488);
  sub_1000037C4();
  v37 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  sub_10000C790();
  v18 = a1[3];
  v42 = a1;
  sub_1000161C0(a1, v18);
  sub_1004410B4();
  v39 = v16;
  v19 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return sub_100006F14(v42);
  }

  v20 = v37;
  v21 = v2;
  v45 = 0;
  sub_100020F68();
  sub_100441108(v22, v23, byte_100A79988);
  sub_1000214AC();
  v24 = v38;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100016974();
  sub_100441058(v24, v21);
  v44 = 1;
  sub_100041A14();
  sub_100441108(v25, v26, byte_100A4E2E4);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10001468C();
  sub_100441058(v10, v21 + v27);
  v43 = 2;
  sub_10003046C();
  sub_100441108(v28, v29, byte_100A9C0A0);
  v30 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v39, v40);
  sub_10003C4B4();
  sub_100441058(v30, v21 + v31);
  sub_100441150(v21, v34);
  sub_100006F14(v42);
  return sub_100441000(v21, type metadata accessor for LocationPreviewViewState);
}

unint64_t sub_100440B40@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10043F724(*a1);
  *a2 = result;
  return result;
}

void sub_100440B70(void *a1@<X8>)
{
  sub_10043F778(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_100440BB8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10043F770(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100440BE0(uint64_t a1)
{
  v2 = sub_100441210();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100440C1C(uint64_t a1)
{
  v2 = sub_100441210();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100440C7C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10043F888(*a1);
  *a2 = result;
  return result;
}

void sub_100440CAC(void *a1@<X8>)
{
  sub_10043F8D4(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_100440DF4@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  strcpy((inited + 32), "modalViewState");
  *(inited + 47) = -18;
  type metadata accessor for LocationPreviewViewState(0);
  v3 = sub_10043E1AC();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB9960, &unk_100A4E4A0);
  a1[4] = sub_1004411AC();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100440F1C(uint64_t a1)
{
  sub_100441108(&qword_100CB9970, type metadata accessor for LocationPreviewViewState, byte_100A4E3D4);

  return ShortDescribable.description.getter();
}

uint64_t sub_100441000(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100441058(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1004410B4()
{
  result = qword_100CB9920;
  if (!qword_100CB9920)
  {
    result = swift_getWitnessTable(a1_17, &type metadata for LocationPreviewViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9920);
  }

  return result;
}

uint64_t sub_100441108(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100441150(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_1004411AC()
{
  result = qword_100CB9968;
  if (!qword_100CB9968)
  {
    v3 = sub_10022E824(&qword_100CB9960, &unk_100A4E4A0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB9968);
  }

  return result;
}

unint64_t sub_100441210()
{
  result = qword_100CB9980;
  if (!qword_100CB9980)
  {
    result = swift_getWitnessTable(byte_100A4E770, &type metadata for LocationPreviewModalViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9980);
  }

  return result;
}

unint64_t sub_100441264()
{
  result = qword_100CB9988;
  if (!qword_100CB9988)
  {
    result = swift_getWitnessTable(a9_15, &type metadata for LocationPreviewModalViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CB9988);
  }

  return result;
}

unint64_t sub_1004412B8()
{
  result = qword_100CB99D8;
  if (!qword_100CB99D8)
  {
    result = swift_getWitnessTable(aQ_50, &type metadata for LocationPreviewModalViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CB99D8);
  }

  return result;
}

_BYTE *sub_10044131C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationPreviewViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1004414D8()
{
  result = qword_100CB9A20;
  if (!qword_100CB9A20)
  {
    result = swift_getWitnessTable(byte_100A4E568, &type metadata for LocationPreviewViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9A20);
  }

  return result;
}

unint64_t sub_100441530()
{
  result = qword_100CB9A28;
  if (!qword_100CB9A28)
  {
    result = swift_getWitnessTable(byte_100A4E658, &type metadata for LocationPreviewModalViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9A28);
  }

  return result;
}

unint64_t sub_100441588()
{
  result = qword_100CB9A30;
  if (!qword_100CB9A30)
  {
    result = swift_getWitnessTable(asc_100A4E6F8, &type metadata for LocationPreviewModalViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CB9A30);
  }

  return result;
}

unint64_t sub_1004415E0()
{
  result = qword_100CB9A38;
  if (!qword_100CB9A38)
  {
    result = swift_getWitnessTable(aQ_51, &type metadata for LocationPreviewModalViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9A38);
  }

  return result;
}

unint64_t sub_100441638()
{
  result = qword_100CB9A40;
  if (!qword_100CB9A40)
  {
    result = swift_getWitnessTable(byte_100A4E5B8, &type metadata for LocationPreviewModalViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9A40);
  }

  return result;
}

unint64_t sub_100441690()
{
  result = qword_100CB9A48;
  if (!qword_100CB9A48)
  {
    result = swift_getWitnessTable(asc_100A4E4D8, &type metadata for LocationPreviewViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9A48);
  }

  return result;
}

unint64_t sub_1004416E8()
{
  result = qword_100CB9A50;
  if (!qword_100CB9A50)
  {
    result = swift_getWitnessTable(byte_100A4E500, &type metadata for LocationPreviewViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9A50);
  }

  return result;
}

unint64_t sub_10044173C()
{
  result = qword_100CB9A58;
  if (!qword_100CB9A58)
  {
    result = swift_getWitnessTable(byte_100A4E680, &type metadata for LocationPreviewModalViewState.CodingType, v0, v1);
    atomic_store(result, &qword_100CB9A58);
  }

  return result;
}

uint64_t sub_100441798()
{
  v0 = type metadata accessor for Locale();
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  sub_1000037D8();
  v2 = sub_100008154();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10001E840();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100441868(char a1)
{
  v2 = type metadata accessor for Locale();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = sub_100008154();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  switch(a1)
  {
    case 3:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      sub_10001E840();
      break;
    default:
      sub_100005728();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      sub_10001E840();
      break;
  }

  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_1004419CC(char a1)
{
  v2 = type metadata accessor for Locale();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v4 = sub_100008154();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  if (((1 << a1) & 0x15) == 0)
  {
    sub_100005728();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10001E840();
  return String.init(localized:table:bundle:locale:comment:)();
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsNotificationOptInTipViewViewModel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100441BC8()
{
  result = qword_100CB9A60;
  if (!qword_100CB9A60)
  {
    result = swift_getWitnessTable(asc_100A4E884, &type metadata for PredictedLocationsNotificationOptInTipViewViewModel, v0, v1);
    atomic_store(result, &qword_100CB9A60);
  }

  return result;
}

unint64_t sub_100441C54()
{
  result = qword_100CB9B08;
  if (!qword_100CB9B08)
  {
    result = swift_getWitnessTable(byte_100A4EA00, &type metadata for PredictedLocationsNotificationOptInUserStatus, v0, v1);
    atomic_store(result, &qword_100CB9B08);
  }

  return result;
}

uint64_t sub_100441CA8(uint64_t a1)
{
  v2 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v19[-v9];
  v11 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v12 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
  v13 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn;
  v20 = *(v11 + 2);
  LOBYTE(v11) = *(v11 + 1);
  v14 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  LOBYTE(v13) = *(v13 + *(type metadata accessor for NotificationsOptInState(0) + 52));
  v15 = type metadata accessor for NotificationsState(0);
  (*(v4 + 16))(v10, v12 + *(v15 + 28), v2);
  sub_100443A64(&qword_100CB9BD0, &protocol conformance descriptor for PredictedLocationsNotificationSubscription.Kind);
  dispatch thunk of SetAlgebra.init()();
  sub_100443A64(&qword_100CE3030, &protocol conformance descriptor for PredictedLocationsNotificationSubscription.Kind);
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v7, v2);
  v16(v10, v2);
  v17 = sub_100441ECC(v11, v14, v20, v13, (v12 & 1) == 0);

  return v17;
}

uint64_t sub_100441ECC(char a1, char a2, char a3, char a4, char a5)
{
  if (qword_100CA26D0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000703C(v8, qword_100D90AD8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v11 = 136446978;
    sub_10014228C();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = sub_100078694(v12, v13, &v33);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    sub_1001426A4();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = sub_100078694(v15, v16, &v33);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2082;
    sub_10017D588();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_100078694(v18, v19, &v33);

    *(v11 + 24) = v20;
    *(v11 + 32) = 1024;
    *(v11 + 34) = a5 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Determining predicted locations notification opt-in status, locationAuthorization=%{public}s, notificationsAuthorization=%{public}s, predictedLocationsAuthorization=%{public}s, didEnablePredictedLocationNotifications=%{BOOL}d", v11, 0x26u);
    swift_arrayDestroy();
    sub_100003884(v31);
    sub_100003884(v11);
  }

  v21 = a5 & 1;
  if (a5)
  {
    v22 = 6;
  }

  else
  {
    v22 = 5;
  }

  if (!v21 && (a4 & 1) == 0)
  {
    v22 = 0;
    switch(a1)
    {
      case 1:
        v22 = 1;
        break;
      case 2:
        v22 = 0x3020402u >> (8 * a2);
        break;
      default:
        break;
    }
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    v27 = String.init<A>(describing:)();
    v29 = sub_100078694(v27, v28, &v33);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "User predicted locations notification opt-in status is: %s", v25, 0xCu);
    sub_100006F14(v26);
    sub_100003884(v26);
    sub_100003884(v25);
  }

  return v22;
}

uint64_t sub_10044221C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000034 && 0x8000000100AC80B0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000038 && 0x8000000100AC80F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000004ALL && 0x8000000100AC8130 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000004ELL && 0x8000000100AC8180 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001DLL && 0x8000000100AC81D0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x8000000100AC81F0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E49646574706FLL && a2 == 0xE700000000000000)
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

unint64_t sub_100442450(char a1)
{
  result = 0x6E49646574706FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000038;
      break;
    case 2:
      result = 0xD00000000000004ALL;
      break;
    case 3:
      result = 0xD00000000000004ELL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      return result;
    default:
      result = 0xD000000000000034;
      break;
  }

  return result;
}

uint64_t sub_100442548(void *a1, uint64_t a2)
{
  v61 = a2;
  sub_10022C350(&qword_100CB9B90, &qword_100A4EA70);
  sub_1000037C4();
  v59 = v4;
  v60 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v58 = v6;
  sub_10022C350(&qword_100CB9B98, &qword_100A4EA78);
  sub_1000037C4();
  v56 = v8;
  v57 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v55 = v10;
  sub_10022C350(&qword_100CB9BA0, &qword_100A4EA80);
  sub_1000037C4();
  v53 = v12;
  v54 = v11;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v52 = v14;
  sub_10022C350(&qword_100CB9BA8, &qword_100A4EA88);
  sub_1000037C4();
  v50 = v16;
  v51 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v49 = v18;
  sub_10022C350(&qword_100CB9BB0, &qword_100A4EA90);
  sub_1000037C4();
  v47 = v20;
  v48 = v19;
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  v46 = v22;
  sub_10022C350(&qword_100CB9BB8, &qword_100A4EA98);
  sub_1000037C4();
  v44 = v24;
  v45 = v23;
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v42 - v26;
  v28 = sub_10022C350(&qword_100CB9BC0, &qword_100A4EAA0);
  sub_1000037C4();
  v43 = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = &v42 - v31;
  v33 = sub_10022C350(&qword_100CB9BC8, &qword_100A4EAA8);
  sub_1000037C4();
  v35 = v34;
  sub_100003828();
  __chkstk_darwin(v36);
  v38 = &v42 - v37;
  sub_1000161C0(a1, a1[3]);
  sub_1004437C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v61)
  {
    case 1:
      v63 = 1;
      sub_1004439BC();
      sub_100008608(&type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserNeedsToGiveAlwaysLocationPermissionInWarmingSheetCodingKeys, &v63);
      v40 = v44;
      v39 = v45;
      goto LABEL_9;
    case 2:
      v64 = 2;
      sub_100443968();
      v27 = v46;
      sub_100008608(&type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserWithAlwaysLocationAccessNeedsToGiveNotificationPermissionInSettingsCodingKeys, &v64);
      v40 = v47;
      v39 = v48;
      goto LABEL_9;
    case 3:
      v65 = 3;
      sub_100443914();
      v27 = v49;
      sub_100008608(&type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserWithAlwaysLocationAccessNeedsToGiveNotificationPermissionInWarmingSheetCodingKeys, &v65);
      v40 = v50;
      v39 = v51;
      goto LABEL_9;
    case 4:
      v66 = 4;
      sub_1004438C0();
      v27 = v52;
      sub_100008608(&type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserMeetingAllRequirementsCodingKeys, &v66);
      v40 = v53;
      v39 = v54;
      goto LABEL_9;
    case 5:
      v67 = 5;
      sub_10044386C();
      v27 = v55;
      sub_100008608(&type metadata for PredictedLocationsNotificationOptInUserStatus.FeatureAcknowledgedCodingKeys, &v67);
      v40 = v56;
      v39 = v57;
      goto LABEL_9;
    case 6:
      v68 = 6;
      sub_100443818();
      v27 = v58;
      sub_100008608(&type metadata for PredictedLocationsNotificationOptInUserStatus.OptedInCodingKeys, &v68);
      v40 = v59;
      v39 = v60;
LABEL_9:
      (*(v40 + 8))(v27, v39);
      break;
    default:
      v62 = 0;
      sub_100443A10();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v43 + 8))(v32, v28);
      break;
  }

  return (*(v35 + 8))(v38, v33);
}

uint64_t sub_100442AD0(void *a1)
{
  sub_10022C350(&qword_100CB9B10, &qword_100A4EA28);
  sub_1000037C4();
  v81 = v2;
  v82 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v87 = v5;
  sub_10022C350(&qword_100CB9B18, &qword_100A4EA30);
  sub_1000037C4();
  v79 = v6;
  v80 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v86 = v9;
  sub_10022C350(&qword_100CB9B20, &qword_100A4EA38);
  sub_1000037C4();
  v77 = v10;
  v78 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v84 = v13;
  v73 = sub_10022C350(&qword_100CB9B28, &qword_100A4EA40);
  sub_1000037C4();
  v76 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v83 = v16;
  sub_10022C350(&qword_100CB9B30, &qword_100A4EA48);
  sub_1000037C4();
  v74 = v18;
  v75 = v17;
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  v85 = v20;
  sub_10022C350(&qword_100CB9B38, &qword_100A4EA50);
  sub_1000037C4();
  v71 = v22;
  v72 = v21;
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v65 - v24;
  v26 = sub_10022C350(&qword_100CB9B40, &qword_100A4EA58);
  sub_1000037C4();
  v70 = v27;
  sub_100003828();
  __chkstk_darwin(v28);
  v30 = &v65 - v29;
  v31 = sub_10022C350(&qword_100CB9B48, &unk_100A4EA60);
  sub_1000037C4();
  v33 = v32;
  sub_100003828();
  __chkstk_darwin(v34);
  v36 = &v65 - v35;
  v37 = a1[3];
  v88 = a1;
  sub_1000161C0(a1, v37);
  sub_1004437C4();
  v38 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    return sub_100006F14(v88);
  }

  v68 = v30;
  v67 = v26;
  v69 = v25;
  v39 = v85;
  v40 = v86;
  v41 = v87;
  v89 = v33;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v44 == v45 >> 1)
  {
LABEL_8:
    v52 = type metadata accessor for DecodingError();
    swift_allocError();
    v54 = v53;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v54 = &type metadata for PredictedLocationsNotificationOptInUserStatus;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v52 - 8) + 104))(v54, enum case for DecodingError.typeMismatch(_:), v52);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v89 + 8))(v36, v31);
    return sub_100006F14(v88);
  }

  v66 = v31;
  if (v44 >= (v45 >> 1))
  {
    __break(1u);
    return result;
  }

  v65 = *(v43 + v44);
  sub_100618E7C();
  v47 = v46;
  v49 = v48;
  swift_unknownObjectRelease();
  if (v47 != v49 >> 1)
  {
    v31 = v66;
    goto LABEL_8;
  }

  switch(v65)
  {
    case 1:
      v91 = 1;
      sub_1004439BC();
      v39 = v69;
      sub_100010004(&type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserNeedsToGiveAlwaysLocationPermissionInWarmingSheetCodingKeys, &v91);
      swift_unknownObjectRelease();
      v59 = v71;
      v58 = v72;
      goto LABEL_14;
    case 2:
      v92 = 2;
      sub_100443968();
      sub_100010004(&type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserWithAlwaysLocationAccessNeedsToGiveNotificationPermissionInSettingsCodingKeys, &v92);
      swift_unknownObjectRelease();
      v59 = v74;
      v58 = v75;
LABEL_14:
      (*(v59 + 8))(v39, v58);
      goto LABEL_18;
    case 3:
      v93 = 3;
      sub_100443914();
      v60 = v83;
      sub_100010004(&type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserWithAlwaysLocationAccessNeedsToGiveNotificationPermissionInWarmingSheetCodingKeys, &v93);
      swift_unknownObjectRelease();
      (*(v76 + 8))(v60, v73);
      goto LABEL_18;
    case 4:
      v94[0] = 4;
      sub_1004438C0();
      v55 = v84;
      sub_100010004(&type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserMeetingAllRequirementsCodingKeys, v94);
      swift_unknownObjectRelease();
      v56 = v77;
      v57 = v78;
      goto LABEL_17;
    case 5:
      v94[1] = 5;
      sub_10044386C();
      v61 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v80 + 8))(v40, v79);
      v62 = sub_1000146A4();
      v64 = v61;
      break;
    case 6:
      v95 = 6;
      sub_100443818();
      v55 = v41;
      sub_100010004(&type metadata for PredictedLocationsNotificationOptInUserStatus.OptedInCodingKeys, &v95);
      swift_unknownObjectRelease();
      v56 = v81;
      v57 = v82;
LABEL_17:
      (*(v57 + 8))(v55, v56);
LABEL_18:
      v62 = sub_1000146A4();
      v64 = v41;
      break;
    default:
      v90 = 0;
      sub_100443A10();
      v50 = v68;
      v51 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v70 + 8))(v50, v67);
      v62 = sub_1000146A4();
      v64 = v51;
      break;
  }

  v63(v62, v64);
  sub_100006F14(v88);
  return v65;
}

uint64_t sub_10044336C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10044221C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100443394@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100442448();
  *a1 = result;
  return result;
}

uint64_t sub_1004433BC(uint64_t a1)
{
  v2 = sub_1004437C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004433F8(uint64_t a1)
{
  v2 = sub_1004437C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100443434(uint64_t a1)
{
  v2 = sub_10044386C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100443470(uint64_t a1)
{
  v2 = sub_10044386C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004434AC(uint64_t a1)
{
  v2 = sub_1004438C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004434E8(uint64_t a1)
{
  v2 = sub_1004438C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100443524(uint64_t a1)
{
  v2 = sub_100443A10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100443560(uint64_t a1)
{
  v2 = sub_100443A10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10044359C(uint64_t a1)
{
  v2 = sub_1004439BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004435D8(uint64_t a1)
{
  v2 = sub_1004439BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100443614(uint64_t a1)
{
  v2 = sub_100443968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100443650(uint64_t a1)
{
  v2 = sub_100443968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10044368C(uint64_t a1)
{
  v2 = sub_100443914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004436C8(uint64_t a1)
{
  v2 = sub_100443914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100443704(uint64_t a1)
{
  v2 = sub_100443818();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100443740(uint64_t a1)
{
  v2 = sub_100443818();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10044377C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100442AD0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1004437C4()
{
  result = qword_100CB9B50;
  if (!qword_100CB9B50)
  {
    result = swift_getWitnessTable(aE_43, &type metadata for PredictedLocationsNotificationOptInUserStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9B50);
  }

  return result;
}

unint64_t sub_100443818()
{
  result = qword_100CB9B58;
  if (!qword_100CB9B58)
  {
    result = swift_getWitnessTable(byte_100A4F13C, &type metadata for PredictedLocationsNotificationOptInUserStatus.OptedInCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9B58);
  }

  return result;
}

unint64_t sub_10044386C()
{
  result = qword_100CB9B60;
  if (!qword_100CB9B60)
  {
    result = swift_getWitnessTable(byte_100A4F0EC, &type metadata for PredictedLocationsNotificationOptInUserStatus.FeatureAcknowledgedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9B60);
  }

  return result;
}

unint64_t sub_1004438C0()
{
  result = qword_100CB9B68;
  if (!qword_100CB9B68)
  {
    result = swift_getWitnessTable(aU_46, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserMeetingAllRequirementsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9B68);
  }

  return result;
}

unint64_t sub_100443914()
{
  result = qword_100CB9B70;
  if (!qword_100CB9B70)
  {
    result = swift_getWitnessTable(byte_100A4F04C, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserWithAlwaysLocationAccessNeedsToGiveNotificationPermissionInWarmingSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9B70);
  }

  return result;
}

unint64_t sub_100443968()
{
  result = qword_100CB9B78;
  if (!qword_100CB9B78)
  {
    result = swift_getWitnessTable(byte_100A4EFFC, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserWithAlwaysLocationAccessNeedsToGiveNotificationPermissionInSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9B78);
  }

  return result;
}

unint64_t sub_1004439BC()
{
  result = qword_100CB9B80;
  if (!qword_100CB9B80)
  {
    result = swift_getWitnessTable(aE_44, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserNeedsToGiveAlwaysLocationPermissionInWarmingSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9B80);
  }

  return result;
}

unint64_t sub_100443A10()
{
  result = qword_100CB9B88;
  if (!qword_100CB9B88)
  {
    result = swift_getWitnessTable(byte_100A4EF5C, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserNeedsToGiveAlwaysLocationPermissionInSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9B88);
  }

  return result;
}

uint64_t sub_100443A64(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_100443AA8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100443BF8()
{
  result = qword_100CB9BE0;
  if (!qword_100CB9BE0)
  {
    result = swift_getWitnessTable(byte_100A4EF34, &type metadata for PredictedLocationsNotificationOptInUserStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9BE0);
  }

  return result;
}

unint64_t sub_100443C50()
{
  result = qword_100CB9BE8;
  if (!qword_100CB9BE8)
  {
    result = swift_getWitnessTable(byte_100A4EE54, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserNeedsToGiveAlwaysLocationPermissionInSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9BE8);
  }

  return result;
}

unint64_t sub_100443CA8()
{
  result = qword_100CB9BF0;
  if (!qword_100CB9BF0)
  {
    result = swift_getWitnessTable(aU_47, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserNeedsToGiveAlwaysLocationPermissionInSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9BF0);
  }

  return result;
}

unint64_t sub_100443D00()
{
  result = qword_100CB9BF8;
  if (!qword_100CB9BF8)
  {
    result = swift_getWitnessTable(byte_100A4EE04, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserNeedsToGiveAlwaysLocationPermissionInWarmingSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9BF8);
  }

  return result;
}

unint64_t sub_100443D58()
{
  result = qword_100CB9C00;
  if (!qword_100CB9C00)
  {
    result = swift_getWitnessTable(byte_100A4EE2C, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserNeedsToGiveAlwaysLocationPermissionInWarmingSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C00);
  }

  return result;
}

unint64_t sub_100443DB0()
{
  result = qword_100CB9C08;
  if (!qword_100CB9C08)
  {
    result = swift_getWitnessTable(asc_100A4EDB4, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserWithAlwaysLocationAccessNeedsToGiveNotificationPermissionInSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C08);
  }

  return result;
}

unint64_t sub_100443E08()
{
  result = qword_100CB9C10;
  if (!qword_100CB9C10)
  {
    result = swift_getWitnessTable(byte_100A4EDDC, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserWithAlwaysLocationAccessNeedsToGiveNotificationPermissionInSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C10);
  }

  return result;
}

unint64_t sub_100443E60()
{
  result = qword_100CB9C18;
  if (!qword_100CB9C18)
  {
    result = swift_getWitnessTable(asc_100A4ED64, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserWithAlwaysLocationAccessNeedsToGiveNotificationPermissionInWarmingSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C18);
  }

  return result;
}

unint64_t sub_100443EB8()
{
  result = qword_100CB9C20;
  if (!qword_100CB9C20)
  {
    result = swift_getWitnessTable(aE_45, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserWithAlwaysLocationAccessNeedsToGiveNotificationPermissionInWarmingSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C20);
  }

  return result;
}

unint64_t sub_100443F10()
{
  result = qword_100CB9C28;
  if (!qword_100CB9C28)
  {
    result = swift_getWitnessTable(byte_100A4ED14, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserMeetingAllRequirementsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C28);
  }

  return result;
}

unint64_t sub_100443F68()
{
  result = qword_100CB9C30;
  if (!qword_100CB9C30)
  {
    result = swift_getWitnessTable(byte_100A4ED3C, &type metadata for PredictedLocationsNotificationOptInUserStatus.NewUserMeetingAllRequirementsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C30);
  }

  return result;
}

unint64_t sub_100443FC0()
{
  result = qword_100CB9C38;
  if (!qword_100CB9C38)
  {
    result = swift_getWitnessTable(byte_100A4ECC4, &type metadata for PredictedLocationsNotificationOptInUserStatus.FeatureAcknowledgedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C38);
  }

  return result;
}

unint64_t sub_100444018()
{
  result = qword_100CB9C40;
  if (!qword_100CB9C40)
  {
    result = swift_getWitnessTable(byte_100A4ECEC, &type metadata for PredictedLocationsNotificationOptInUserStatus.FeatureAcknowledgedCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C40);
  }

  return result;
}

unint64_t sub_100444070()
{
  result = qword_100CB9C48;
  if (!qword_100CB9C48)
  {
    result = swift_getWitnessTable(aM_46, &type metadata for PredictedLocationsNotificationOptInUserStatus.OptedInCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C48);
  }

  return result;
}

unint64_t sub_1004440C8()
{
  result = qword_100CB9C50;
  if (!qword_100CB9C50)
  {
    result = swift_getWitnessTable(a5_21, &type metadata for PredictedLocationsNotificationOptInUserStatus.OptedInCodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C50);
  }

  return result;
}

unint64_t sub_100444120()
{
  result = qword_100CB9C58;
  if (!qword_100CB9C58)
  {
    result = swift_getWitnessTable(asc_100A4EEA4, &type metadata for PredictedLocationsNotificationOptInUserStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C58);
  }

  return result;
}

unint64_t sub_100444178()
{
  result = qword_100CB9C60;
  if (!qword_100CB9C60)
  {
    result = swift_getWitnessTable(byte_100A4EECC, &type metadata for PredictedLocationsNotificationOptInUserStatus.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB9C60);
  }

  return result;
}

uint64_t sub_1004441F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_100024D10(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_100024D10(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_100444334(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_10001B350(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_100444548@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, double)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentState(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v18, v7);
  v10 = v18[0];
  v11 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  sub_1000690C8(v10 + v11, v9);

  LODWORD(v10) = v9[3];
  sub_10006912C(v9);
  if (v10 == 4)
  {
    type metadata accessor for Date();
    sub_100003A9C();
    (*(v12 + 16))(a3, a1);
    v13 = &enum case for NextHourPrecipitationChartViewModel.LeadingPrecipitationValue.relativeToFirstDataPoint(_:);
  }

  else
  {
    v13 = &enum case for NextHourPrecipitationChartViewModel.LeadingPrecipitationValue.relativeToCurrentTime(_:);
  }

  v14 = *v13;
  type metadata accessor for NextHourPrecipitationChartViewModel.LeadingPrecipitationValue();
  sub_100003A9C();
  return (*(v15 + 104))(a3, v14);
}

_BYTE *storeEnumTagSinglePayload for LocationFooterViewModel.LearnMorePosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100444788()
{
  result = qword_100CB9E58;
  if (!qword_100CB9E58)
  {
    result = swift_getWitnessTable(asc_100A4F3D4, &type metadata for LocationFooterViewModel.LearnMorePosition, v0, v1);
    atomic_store(result, &qword_100CB9E58);
  }

  return result;
}

uint64_t sub_1004447E0(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1004448B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_100007FD0();
  v51 = v4;
  v53 = *(v5 + 64);
  __chkstk_darwin(v6);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = &v60;
  v9 = *(v8 + 16);
  sub_100007FD0();
  v44 = v10;
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 24);
  sub_100007FD0();
  v54 = v16;
  __chkstk_darwin(v17);
  v56 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(v19 + 32);
  v20 = *(v57 + 8);
  v58 = v15;
  v59 = v9;
  v46 = v20;
  v47 = *(&v57 + 1);
  *v21 = *(&v57 + 1);
  v61 = v20;
  v49 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_100007FD0();
  v50 = v23;
  __chkstk_darwin(v24);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v45 = &v43 - v28;
  v29 = *(v2 + *(a1 + 52));
  sub_100444CD0(a1, v13);
  v29(v13);
  (*(v44 + 8))(v13, v9);
  v30 = v51;
  v31 = v48;
  (*(v51 + 16))(v48, v2, a1);
  v32 = v30;
  v33 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v34 = swift_allocObject();
  *&v35 = v9;
  *(&v35 + 1) = v15;
  v36 = v57;
  *(v34 + 16) = v35;
  *(v34 + 32) = v36;
  (*(v32 + 32))(v34 + v33, v31, a1);
  v37 = v46;
  v38 = v56;
  View.onChange<A>(of:initial:_:)();

  (*(v54 + 8))(v38, v15);
  v58 = v15;
  v59 = v9;
  *v52 = *(&v57 + 1);
  v61 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v45;
  sub_1000833D8(v26, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v41 = *(v50 + 8);
  v41(v26, OpaqueTypeMetadata2);
  sub_1000833D8(v40, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v41)(v40, OpaqueTypeMetadata2);
}

uint64_t sub_100444CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional();
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = *(v6 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 32);
  v28 = *(v15 + 16);
  v28(v6, v15, v12);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v10 + 8))(v14, v6);
  if ((v16 & 1) == 0)
  {
    return (*(v10 + 16))(a2, v3, v6);
  }

  v18 = a2;
  v19 = (v3 + *(a1 + 56));
  v21 = *v19;
  v20 = v19[1];
  v31 = v21;
  v32 = v20;
  type metadata accessor for CachableViewStorage(255, v6, v15, v17);
  type metadata accessor for State();
  State.wrappedValue.getter();
  v22 = v33;
  v23 = *(*v33 + 96);
  swift_beginAccess();
  v25 = v29;
  v24 = v30;
  (*(v29 + 16))(v9, v22 + v23, v30);

  if (sub_100024D10(v9, 1, v6) != 1)
  {
    return (*(v10 + 32))(v18, v9, v6);
  }

  (v28)(v6, v15);
  result = sub_100024D10(v9, 1, v6);
  if (result != 1)
  {
    return (*(v25 + 8))(v9, v24);
  }

  return result;
}

uint64_t sub_100444FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v31 = a3;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v15 = *(a4 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a6 + 16))(a4, a6, v17);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v15 + 8))(v19, a4);
  if ((v20 & 1) == 0)
  {
    v33 = a4;
    v34 = a5;
    v35 = a6;
    v36 = v30;
    v22 = type metadata accessor for CachableView(0, &v33);
    v23 = (v31 + *(v22 + 56));
    v25 = *v23;
    v24 = v23[1];
    v33 = v25;
    v34 = v24;
    type metadata accessor for CachableViewStorage(255, a4, a6, v26);
    type metadata accessor for State();
    State.wrappedValue.getter();
    v27 = v32;
    (*(v15 + 16))(v14, a2, a4);
    sub_10001B350(v14, 0, 1, a4);
    v28 = *(*v27 + 96);
    swift_beginAccess();
    (*(v12 + 40))(v27 + v28, v14, v11);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100445220()
{
  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1004452F0()
{
  sub_100445220();

  return swift_deallocClassInstance();
}

unint64_t sub_10044535C(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = sub_10013DB50();
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for CachableViewStorage(255, v2, *(a1 + 32), v5);
      v2 = type metadata accessor for State();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100445428(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_100024D10(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
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
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_10044556C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
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
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_10001B350(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1004457A8(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for CachableView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_100444FA8(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_100445864()
{
  v1 = OBJC_IVAR____TtC7WeatherP33_DCB4A35BA7D947470CCA6740CC343B3315VisibilityState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisibilityState(uint64_t a1)
{
  result = qword_100CB9FA8;
  if (!qword_100CB9FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100445954(uint64_t a1)
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

uint64_t sub_1004459FC(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  ObservationRegistrar.init()();
  return v1;
}

unint64_t sub_100445A68()
{
  result = qword_100CBA120;
  if (!qword_100CBA120)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBA118, &qword_100A4F698);
    v4[0] = sub_100445B20();
    v4[1] = sub_100006F64(&qword_100CBA150, &qword_100CBA158, &qword_100A4F6E0, &protocol conformance descriptor for _OverlayPreferenceModifier<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBA120);
  }

  return result;
}

unint64_t sub_100445B20()
{
  result = qword_100CBA128;
  if (!qword_100CBA128)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBA110, &qword_100A4F690);
    v4[0] = sub_100445BD8();
    v4[1] = sub_100006F64(&qword_100CBA140, &qword_100CBA148, &qword_100A4F6D8, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBA128);
  }

  return result;
}

unint64_t sub_100445BD8()
{
  result = qword_100CBA130;
  if (!qword_100CBA130)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBA100, &qword_100A4F680);
    v4[0] = sub_100006F64(&qword_100CBA138, &qword_100CBA0F8, &qword_100A4F678, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBA130);
  }

  return result;
}

unint64_t sub_100445C94(uint64_t a1)
{
  result = sub_100445CBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100445CBC()
{
  result = qword_100CBA178;
  if (!qword_100CBA178)
  {
    result = swift_getWitnessTable(byte_100A4F6E8, &type metadata for NeedsVisibilityDetectionComputationPreferenceKey, v0, v1);
    atomic_store(result, &qword_100CBA178);
  }

  return result;
}

uint64_t sub_100445D34(uint64_t a1)
{
  ProxyContainer.public.getter();
  sub_10022C350(&qword_100CBA2C0, &qword_100A4F7F8);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

void *sub_100445DE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA2C8, &qword_100A4F800);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4A80, &qword_100A2ED60);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = sub_10002D7F8(v22, v23);
      v7 = __chkstk_darwin(v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for GeneralConfigurationInteractor();
      v21[3] = v12;
      v21[4] = &off_100C57E28;
      v21[0] = v11;
      v13 = type metadata accessor for GeneralConfigurationModule();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, v12);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[5] = v12;
      v14[6] = &off_100C57E28;
      v14[2] = v20;
      v14[7] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C57D28;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100446060()
{
  sub_10022C350(&qword_100CBA2C8, &qword_100A4F800);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CBA2D0, &qword_100A4F808);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CBA2D8, &unk_100A4F810);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4A80, &qword_100A2ED60);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_10044618C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5)
  {
    v4 = type metadata accessor for GeneralConfigurationInteractor();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    a2[3] = v4;
    a2[4] = &off_100C57E28;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100446270@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_1004462C0(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v23;
  v4 = v24;
  v6 = v22;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA2D0, &qword_100A4F808);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v19, v20);
  v17 = type metadata accessor for GeneralConfigurationInputFactory();
  v18 = &off_100C57EF0;
  v16[0] = v7;
  sub_100035B30(v16, v15);
  v8 = swift_allocObject();
  sub_100013188(v15, v8 + 16);

  sub_100006F14(v16);
  sub_100006F14(v19);
  v9 = swift_allocObject();
  *(v9 + 16) = static VerticalSizingBehaviorKey.defaultValue.getter;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA2D8, &unk_100A4F810);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v20)
  {
    v10 = *sub_1000161C0(v19, v20);
    v17 = type metadata accessor for GeneralConfigurationViewModelFactory();
    v18 = &off_100C57E40;
    v16[0] = v10;
    sub_100035B30(v16, v15);
    v11 = swift_allocObject();
    sub_100013188(v15, v11 + 16);

    sub_100006F14(v16);
    sub_100006F14(v19);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10044665C;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100446624;
    *(v13 + 24) = v9;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100446678;
    *(v14 + 24) = v12;
    sub_10022C350(&qword_100CA4A80, &qword_100A2ED60);
    swift_allocObject();
    return sub_10024AFB0(v3, v6, v5, v4, sub_100266DE8, 0, sub_1004466D8, v13, sub_1004466E0, v14);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100446624@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_100446678@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1004466A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  result = sub_100318B14(*a1, a2, a3);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1004466E0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_100318BE4(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_100446738()
{
  result = qword_100CBA380;
  if (!qword_100CBA380)
  {
    v3 = type metadata accessor for GeneralConfigurationInteractor();
    result = swift_getWitnessTable(byte_100A4F870, v3, v0, v1);
    atomic_store(result, &qword_100CBA380);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeneralConfigurationViewModel(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10044688C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000100AC83B0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = a1;
  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CBA428, &qword_100A4FA78);
  a2[4] = sub_100446A24();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_100446990(uint64_t a1)
{
  sub_100446A88();

  return ShortDescribable.description.getter();
}

unint64_t sub_1004469D0()
{
  result = qword_100CBA420;
  if (!qword_100CBA420)
  {
    result = swift_getWitnessTable(byte_100A4F9F0, &type metadata for GeneralConfigurationViewModel, v0, v1);
    atomic_store(result, &qword_100CBA420);
  }

  return result;
}

unint64_t sub_100446A24()
{
  result = qword_100CBA430;
  if (!qword_100CBA430)
  {
    v3 = sub_10022E824(&qword_100CBA428, &qword_100A4FA78);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CBA430);
  }

  return result;
}

unint64_t sub_100446A88()
{
  result = qword_100CBA438;
  if (!qword_100CBA438)
  {
    result = swift_getWitnessTable(aA_39, &type metadata for GeneralConfigurationViewModel, v0, v1);
    atomic_store(result, &qword_100CBA438);
  }

  return result;
}

BOOL sub_100446B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverviewTableViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CBA4D8, &unk_100A4FB40);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_10022C350(&qword_100CBA578, &unk_100A4FBA0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  if ((static OverviewTableViewModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for MoonCompactOverviewTableViewModel(0) + 20);
  v15 = *(v11 + 48);
  sub_100446E20(a1 + v14, v13);
  sub_100446E20(a2 + v14, &v13[v15]);
  sub_100003A40(v13);
  if (v16)
  {
    sub_100003A40(&v13[v15]);
    if (v16)
    {
      sub_10003FDF4(v13, &qword_100CBA4D8, &unk_100A4FB40);
      return 1;
    }

    goto LABEL_10;
  }

  sub_100446E20(v13, v10);
  sub_100003A40(&v13[v15]);
  if (v16)
  {
    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_10003FDF4(v13, &qword_100CBA578, &unk_100A4FBA0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_100446E90();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_10003FDF4(v13, &qword_100CBA4D8, &unk_100A4FB40);
  return (v18 & 1) != 0;
}

uint64_t sub_100446E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CBA4D8, &unk_100A4FB40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100446E90()
{
  result = qword_100CBA580;
  if (!qword_100CBA580)
  {
    v3 = type metadata accessor for OverviewTableViewModel();
    result = swift_getWitnessTable(&protocol conformance descriptor for OverviewTableViewModel, v3, v0, v1);
    atomic_store(result, &qword_100CBA580);
  }

  return result;
}

void sub_100446F50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for OverviewTableViewModel();
  if (v7 <= 0x3F)
  {
    sub_100446FEC(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100446FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_100447044()
{
  result = qword_100CBA628;
  if (!qword_100CBA628)
  {
    result = swift_getWitnessTable(aY_59, &type metadata for WindowResizeEnvironmentKey, v0, v1);
    atomic_store(result, &qword_100CBA628);
  }

  return result;
}

uint64_t sub_1004470F4()
{
  sub_1004473FC();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10044716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100447294();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1004471D0()
{
  sub_1003C0D58();
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t sub_100447218(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  sub_10002D7F8(a1, v3);
  return sub_100447098(a2, v3, v4);
}

uint64_t sub_100447264@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004471D0();
  *a1 = result;
  return result;
}

unint64_t sub_100447294()
{
  result = qword_100CBA630;
  if (!qword_100CBA630)
  {
    result = swift_getWitnessTable(asc_100A4FD34, &type metadata for SceneResizeReason, v0, v1);
    atomic_store(result, &qword_100CBA630);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SceneResizeReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1004473FC()
{
  result = qword_100CBA638;
  if (!qword_100CBA638)
  {
    result = swift_getWitnessTable(asc_100A4FBD0, &type metadata for WindowResizeEnvironmentKey, v0, v1);
    atomic_store(result, &qword_100CBA638);
  }

  return result;
}

void *sub_100447450@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA708, &qword_100A4FE00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4AB8, &qword_100A2ED90);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4460, &unk_100A6B650);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v6 = v20;
  if (!v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v21;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4468, &unk_100A4FE60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v8 = type metadata accessor for LocationPreviewModule();
    ObjectType = swift_getObjectType();
    v10 = sub_10002D7F8(v22, v23);
    v11 = __chkstk_darwin(v10);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v11);
    v15 = type metadata accessor for LocationPreviewInteractor();
    v16 = sub_1005518E0(v13, v5, v6, &v18, v8, v15, ObjectType, &off_100C7B9E8, v7);
    result = sub_100006F14(v22);
    a2[3] = v8;
    a2[4] = &off_100C5E1D8;
    *a2 = v16;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1004476D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB9798, &unk_100A4E240);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v31)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA738, &qword_100A4FE40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v29)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA740, &qword_100A4FE48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA730, &unk_100A4FE30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v25)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB97A0, &unk_100A4FE50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    v5 = sub_10002D7F8(v30, v31);
    v6 = __chkstk_darwin(v5);
    v8 = (&v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v26, v27);
    v11 = __chkstk_darwin(v10);
    v13 = (&v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v22, v23);
    v16 = __chkstk_darwin(v15);
    v18 = &v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18, v16);
    v20 = sub_100448C9C(*v8, &v28, *v13, &v24, v18);
    sub_100006F14(v22);
    sub_100006F14(v26);
    sub_100006F14(v30);
    result = type metadata accessor for LocationPreviewViewModelFactory(0);
    a2[3] = result;
    a2[4] = &off_100C5EC78;
    *a2 = v20;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100447AB4()
{
  sub_10022C350(&qword_100CBA700, &qword_100A4FDF8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CBA708, &qword_100A4FE00);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CBA710, &qword_100A4FE08);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4AB8, &qword_100A2ED90);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100447BE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = &type metadata for LocationPreviewTracker;
    a2[4] = &off_100C684F8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100447C50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v70)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA700, &qword_100A4FDF8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v69)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA718, &unk_100A4FE10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v67)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB2FD8, &qword_100A45760);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v65)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA720, &unk_100A4FE20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WeatherDataUpdater();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v51 = result;
  v52 = v71;
  v53 = v70;
  v54 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA728, &unk_100A60C40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v61)
  {
    v5 = sub_10002D7F8(v68, v69);
    v50 = v46;
    v6 = __chkstk_darwin(v5);
    v8 = (v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = sub_10002D7F8(v64, v65);
    v49 = v46;
    v11 = __chkstk_darwin(v10);
    v13 = (v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_10002D7F8(v60, v61);
    v48 = v46;
    v16 = __chkstk_darwin(v15);
    v18 = (v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v8;
    v21 = *v13;
    v22 = *v18;
    v59[3] = &type metadata for LocationPreviewTracker;
    v59[4] = &off_100C684F8;
    v59[0] = v20;
    v23 = type metadata accessor for LocalSearchRequestManager();
    v58[3] = v23;
    v58[4] = &off_100C6CB98;
    v58[0] = v21;
    v24 = type metadata accessor for NetworkActivityManager();
    v56 = v24;
    v57 = &off_100C55440;
    v55[0] = v22;
    v47 = type metadata accessor for LocationPreviewInteractor();
    v25 = swift_allocObject();
    v26 = sub_10002D7F8(v59, &type metadata for LocationPreviewTracker);
    v46[2] = v46;
    v27 = __chkstk_darwin(v26);
    v29 = (v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = sub_10002D7F8(v58, v23);
    v46[1] = v46;
    v32 = __chkstk_darwin(v31);
    v34 = (v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34, v32);
    v36 = sub_10002D7F8(v55, v56);
    v37 = __chkstk_darwin(v36);
    v39 = (v46 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39, v37);
    v41 = *v29;
    v42 = *v34;
    v43 = *v39;
    v25[7] = &type metadata for LocationPreviewTracker;
    v25[8] = &off_100C684F8;
    v25[4] = v41;
    v25[17] = v23;
    v25[18] = &off_100C6CB98;
    v25[14] = v42;
    v25[28] = v24;
    v25[29] = &off_100C55440;
    v25[25] = v43;
    v44 = v52;
    v25[2] = v53;
    v25[3] = v44;
    sub_100013188(&v66, (v25 + 9));
    sub_100013188(&v62, (v25 + 19));
    v25[24] = v51;
    sub_100006F14(v55);
    sub_100006F14(v58);
    sub_100006F14(v59);
    sub_100006F14(v60);
    sub_100006F14(v64);
    result = sub_100006F14(v68);
    v45 = v54;
    v54[3] = v47;
    v45[4] = &off_100C7B9E8;
    *v45 = v25;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10044839C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocationPreviewInputFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C53EA8;
  *a1 = result;
  return result;
}

void *sub_1004483E4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v22;
  v4 = v23;
  v6 = v21;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA710, &qword_100A4FE08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v18, v19);
  v16 = type metadata accessor for LocationPreviewInputFactory();
  v17 = &off_100C53EA8;
  v15[0] = v7;
  sub_100035B30(v15, v14);
  v8 = swift_allocObject();
  sub_100013188(v14, v8 + 16);

  sub_100006F14(v15);
  sub_100006F14(v18);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100448C8C;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA6F0, &qword_100A4FDE8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v19)
  {
    v10 = *sub_1000161C0(v18, v19);
    v16 = type metadata accessor for LocationPreviewViewModelFactory(0);
    v17 = &off_100C5EC78;
    v15[0] = v10;
    sub_100035B30(v15, v14);
    v11 = swift_allocObject();
    sub_100013188(v14, v11 + 16);

    sub_100006F14(v15);
    sub_100006F14(v18);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10009F868;
    *(v12 + 24) = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100448C94;
    *(v13 + 24) = v11;
    sub_10022C350(&qword_100CA4AB8, &qword_100A2ED90);
    swift_allocObject();
    return sub_10024B158(v3, v6, v5, v4, sub_1004486E4, 0, sub_10009F81C, v12, sub_1000E87D0, v13);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1004486E4(uint64_t a1)
{
  v2 = type metadata accessor for MainAction(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = type metadata accessor for ModalViewState(0);
  __chkstk_darwin(v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC7E4(*(a1 + 64) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v17, type metadata accessor for ModalViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_1000DFED8(v17, type metadata accessor for ModalViewState);
  if (EnumCaseMultiPayload == 6)
  {
    return 0;
  }

  v20 = 0;
  v21 = *(a1 + 40);
  v22 = *(v21 + 16);
  while (1)
  {
    if (v22 == v20)
    {
      return 0;
    }

    if (v20 >= *(v21 + 16))
    {
      break;
    }

    sub_1000BC7E4(v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v14, type metadata accessor for MainAction);
    v23 = swift_getEnumCaseMultiPayload();
    switch(v23)
    {
      case 7:
        sub_1000BC7E4(v14, v11, type metadata accessor for MainAction);
        type metadata accessor for ModalViewAction(0);
        if (swift_getEnumCaseMultiPayload())
        {
          v27 = type metadata accessor for ModalViewAction;
        }

        else
        {
          type metadata accessor for LocationPreviewViewAction(0);
          v29 = swift_getEnumCaseMultiPayload();
          if (v29 == 2)
          {
            goto LABEL_31;
          }

          if (v29 == 1)
          {
            v37 = type metadata accessor for Location();
            (*(*(v37 - 8) + 8))(v11, v37);
            goto LABEL_31;
          }

          v27 = type metadata accessor for LocationPreviewViewAction;
        }

        v25 = v27;
        v26 = v11;
LABEL_23:
        sub_1000DFED8(v26, v25);
        break;
      case 8:
        sub_1000BC7E4(v14, v5, type metadata accessor for MainAction);
        type metadata accessor for LocationViewAction(0);
        v24 = swift_getEnumCaseMultiPayload();
        if (v24 == 2)
        {
          v35 = type metadata accessor for LocationFooterAction;
LABEL_28:
          v33 = v35;
          v34 = v5;
          goto LABEL_30;
        }

        if (v24 == 1)
        {
          v36 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
          sub_1001AEDF4(&v5[*(v36 + 64)]);
          v35 = type metadata accessor for LocationComponentAction;
          goto LABEL_28;
        }

        v25 = type metadata accessor for LocationViewAction;
        v26 = v5;
        goto LABEL_23;
      case 9:
        sub_1000BC7E4(v14, v8, type metadata accessor for MainAction);
        type metadata accessor for WeatherDataAction(0);
        v28 = swift_getEnumCaseMultiPayload();
        if (v28 == 4)
        {

          v30 = sub_10022C350(&qword_100CAC0C8, &unk_100A3AFC0);
          v31 = v30[12];
          v32 = v30[16];
          sub_1000DFED8(&v8[v30[20]], type metadata accessor for NewsDataModel);
          sub_1000DFED8(&v8[v32], type metadata accessor for PreprocessedWeatherData);
          v33 = type metadata accessor for WeatherData;
          v34 = &v8[v31];
LABEL_30:
          sub_1000DFED8(v34, v33);
LABEL_31:
          sub_1000DFED8(v14, type metadata accessor for MainAction);
          return 0;
        }

        if (!v28)
        {
          v33 = type metadata accessor for WeatherDataAction;
          v34 = v8;
          goto LABEL_30;
        }

        v25 = type metadata accessor for WeatherDataAction;
        v26 = v8;
        goto LABEL_23;
      case 19:
        goto LABEL_31;
    }

    result = sub_1000DFED8(v14, type metadata accessor for MainAction);
    ++v20;
  }

  __break(1u);
  return result;
}

void *sub_100448C9C(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v36 = a4;
  v9 = type metadata accessor for LocationFinder();
  v43[3] = v9;
  v43[4] = &off_100C5EE88;
  v43[0] = a1;
  v10 = type metadata accessor for WeatherConditionBackgroundTimeDataFactory();
  v41 = v10;
  v42 = &off_100C58978;
  v40[0] = a3;
  v38 = &type metadata for AddLocationContextHelper;
  v39 = &off_100C59608;
  v11 = swift_allocObject();
  v37[0] = v11;
  v12 = *(a5 + 16);
  *(v11 + 16) = *a5;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a5 + 32);
  type metadata accessor for LocationPreviewViewModelFactory(0);
  v13 = swift_allocObject();
  v14 = sub_10002D7F8(v43, v9);
  v15 = __chkstk_darwin(v14);
  v17 = (&v37[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = sub_10002D7F8(v40, v41);
  v20 = __chkstk_darwin(v19);
  v22 = (&v37[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = sub_10002D7F8(v37, v38);
  v25 = __chkstk_darwin(v24);
  v27 = &v37[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v25);
  v29 = *v17;
  v30 = *v22;
  v13[5] = v9;
  v13[6] = &off_100C5EE88;
  v13[2] = v29;
  v13[15] = v10;
  v13[16] = &off_100C58978;
  v13[12] = v30;
  v13[25] = &type metadata for AddLocationContextHelper;
  v13[26] = &off_100C59608;
  v31 = swift_allocObject();
  v13[22] = v31;
  v32 = *(v27 + 1);
  *(v31 + 16) = *v27;
  *(v31 + 32) = v32;
  *(v31 + 48) = *(v27 + 4);
  v33 = OBJC_IVAR____TtC7Weather31LocationPreviewViewModelFactory____lazy_storage___locationAnimationKind;
  v34 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_10001B350(v13 + v33, 1, 1, v34);
  *(v13 + OBJC_IVAR____TtC7Weather31LocationPreviewViewModelFactory____lazy_storage___permitDuplicateLocations) = 2;
  sub_100013188(a2, (v13 + 7));
  sub_100013188(v36, (v13 + 17));
  sub_100006F14(v37);
  sub_100006F14(v40);
  sub_100006F14(v43);
  return v13;
}