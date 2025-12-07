void sub_10009BA68(uint64_t a1)
{
  if (!qword_10021C7B8)
  {
    type metadata accessor for DynamicTypeSize();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10021C7B8);
    }
  }
}

uint64_t sub_10009BB1C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for DynamicTypeSize();
  sub_1000758A8(v5, a2);
  v6 = sub_10001FDF4(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

uint64_t sub_10009BBBC()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_10021C738 = result;
  return result;
}

uint64_t sub_10009BBF4()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_10021C740 = result;
  return result;
}

uint64_t sub_10009BCDC@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlainButtonStyle();
  v7 = *(v6 - 8);
  v42 = v6;
  v43 = v7;
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlayButtonView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_100009F70(&qword_10021C7E8, &qword_1001B3168);
  v36 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = sub_100009F70(&qword_10021C7F0, &qword_1001B3170);
  v17 = *(v16 - 8);
  v37 = v16;
  v38 = v17;
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  v39 = sub_100009F70(&qword_10021C7F8, &qword_1001B3178);
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v21 = &v35 - v20;
  v40 = sub_100009F70(&qword_10021C800, &qword_1001B3180);
  __chkstk_darwin(v40);
  v23 = &v35 - v22;
  sub_10009DBCC(v1, &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v25 = swift_allocObject();
  sub_10009DD4C(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v51 = v1;
  sub_100009F70(&qword_10021C808, &qword_1001B3188);
  sub_10009DE1C();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v26 = sub_10000D1EC(&qword_10021C858, &qword_10021C7E8, &qword_1001B3168, &protocol conformance descriptor for Button<A>);
  v27 = sub_10009E78C(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v28 = v42;
  View.buttonStyle<A>(_:)();
  (*(v43 + 8))(v9, v28);
  (*(v36 + 8))(v15, v13);
  v29 = v44;
  static AccessibilityChildBehavior.ignore.getter();
  v52 = v13;
  v53 = v28;
  v54 = v26;
  v55 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v37;
  View.accessibilityElement(children:)();
  (*(v45 + 8))(v29, v46);
  (*(v38 + 8))(v19, v31);
  v32 = v47;
  static AccessibilityTraits.isButton.getter();
  v52 = v31;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  View.accessibilityAddTraits(_:)();
  (*(v48 + 8))(v32, v49);
  (*(v41 + 8))(v21, v33);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  return sub_10009E030(v23);
}

uint64_t sub_10009C37C@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100009F70(&qword_10021C860, &qword_1001B31B0);
  v5 = __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = sub_100009F70(&qword_10021C830, &qword_1001B31A0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v51 = sub_100009F70(&qword_10021C828, &qword_1001B3198);
  __chkstk_darwin(v51);
  v14 = (&v46 - v13);
  *v14 = static Alignment.center.getter();
  v14[1] = v15;
  v16 = v14 + *(sub_100009F70(&qword_10021C868, &qword_1001B31B8) + 44);
  v50 = a1;
  sub_10009C9A4(a1, v16);
  if (qword_1002183B0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for DynamicTypeSize();
  v18 = sub_10001FDF4(v17, qword_10021C6F8);
  if (qword_1002183C0 != -1)
  {
    swift_once();
  }

  v19 = sub_10001FDF4(v17, qword_10021C718);
  sub_10009E78C(&qword_10021C870, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = *(v17 - 8);
  v49 = a2;
  v48 = v14;
  v21 = v20;
  v22 = *(v20 + 16);
  v47 = v10;
  v22(v9, v18, v17);
  v22(&v9[*(v4 + 48)], v19, v17);
  sub_10000D58C(v9, v7, &qword_10021C860, &qword_1001B31B0);
  v23 = *(v4 + 48);
  v24 = *(v21 + 32);
  v24(v12, v7, v17);
  v25 = v12;
  v26 = *(v21 + 8);
  v26(&v7[v23], v17);
  sub_10000F618(v9, v7, &qword_10021C860, &qword_1001B31B0);
  v24((v25 + *(v47 + 36)), &v7[*(v4 + 48)], v17);
  v26(v7, v17);
  v14 = v49;
  sub_10000D1EC(&qword_10021C838, &qword_10021C828, &qword_1001B3198, &protocol conformance descriptor for ZStack<A>);
  sub_10000D1EC(&qword_10021C840, &qword_10021C830, &qword_1001B31A0, &protocol conformance descriptor for ClosedRange<A>);
  v27 = v48;
  View.dynamicTypeSize<A>(_:)();
  sub_10000D52C(v25, &qword_10021C830, &qword_1001B31A0);
  sub_10000D52C(v27, &qword_10021C828, &qword_1001B3198);
  sub_10009D6C8();
  LOBYTE(v25) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v14 + *(sub_100009F70(&qword_10021C820, &qword_1001B3190) + 36);
  *v36 = v25;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v17 = static Alignment.center.getter();
  v9 = v37;
  if (qword_1002183D8 != -1)
  {
LABEL_9:
    swift_once();
  }

  v38 = Color.opacity(_:)();
  v39 = static Alignment.center.getter();
  v41 = v40;
  *&v55 = v17;
  *(&v55 + 1) = v9;
  *&v56 = 11;
  WORD4(v56) = 256;
  *(&v56 + 10) = v53;
  HIWORD(v56) = v54;
  *&v57 = v38;
  WORD4(v57) = 256;
  *&v58 = v39;
  *(&v58 + 1) = v40;
  v42 = (v14 + *(sub_100009F70(&qword_10021C808, &qword_1001B3188) + 36));
  v43 = v56;
  *v42 = v55;
  v42[1] = v43;
  v44 = v58;
  v42[2] = v57;
  v42[3] = v44;
  v59[0] = v17;
  v59[1] = v9;
  v59[2] = 11;
  v60 = 256;
  v61 = v53;
  v62 = v54;
  v63 = v38;
  v64 = 256;
  v65 = v39;
  v66 = v41;
  sub_10000D58C(&v55, v52, &qword_10021C850, &qword_1001B31A8);
  return sub_10000D52C(v59, &qword_10021C850, &qword_1001B31A8);
}

uint64_t sub_10009C9A4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v136 = a2;
  v131 = sub_100009F70(&qword_10021C890, &qword_1001B31D0);
  __chkstk_darwin(v131);
  v129 = &v108 - v2;
  v3 = sub_100009F70(&qword_10021C898, &qword_1001B31D8);
  __chkstk_darwin(v3 - 8);
  v127 = &v108 - v4;
  v125 = sub_100009F70(&qword_10021C8A0, &qword_1001B31E0);
  __chkstk_darwin(v125);
  v124 = &v108 - v5;
  v123 = sub_100009F70(&qword_10021C8A8, &qword_1001B31E8);
  __chkstk_darwin(v123);
  v122 = &v108 - v6;
  v120 = sub_100009F70(&qword_10021C8B0, &qword_1001B31F0);
  v7 = __chkstk_darwin(v120);
  v135 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v118 = &v108 - v10;
  __chkstk_darwin(v9);
  v139 = &v108 - v11;
  v12 = sub_100009F70(&qword_10021C8B8, &qword_1001B31F8);
  __chkstk_darwin(v12);
  v14 = (&v108 - v13);
  v15 = sub_100009F70(&qword_10021C8C0, &qword_1001B3200);
  v16 = __chkstk_darwin(v15 - 8);
  v130 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v109 = &v108 - v18;
  v138 = sub_100009F70(&qword_10021C8C8, &qword_1001B3208);
  v19 = __chkstk_darwin(v138);
  v126 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v108 - v21;
  v137 = sub_100009F70(&qword_10021C8D0, &qword_1001B3210);
  v23 = __chkstk_darwin(v137);
  v121 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v108 - v25;
  v119 = sub_100009F70(&qword_10021C8D8, &qword_1001B3218);
  v27 = __chkstk_darwin(v119);
  v133 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v134 = &v108 - v30;
  v31 = __chkstk_darwin(v29);
  v117 = &v108 - v32;
  v33 = __chkstk_darwin(v31);
  v128 = &v108 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v108 - v36;
  __chkstk_darwin(v35);
  v140 = &v108 - v38;
  v39 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v40 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v115 = sub_100009F70(&qword_10021C8E0, &qword_1001B3250);
  v42 = (v14 + *(v115 + 36));
  v114 = sub_100009F70(&qword_10021C8E8, &qword_1001B3258);
  v43 = *(v114 + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v44 = type metadata accessor for SymbolRenderingMode();
  v45 = *(v44 - 8);
  v46 = *(v45 + 56);
  v113 = v44;
  v112 = v46;
  v111 = v45 + 56;
  (v46)(v42 + v43, 0, 1);
  *v42 = swift_getKeyPath();
  *v14 = v39;
  v14[1] = KeyPath;
  v14[2] = v40;
  *(v14 + *(v12 + 36)) = static Color.white.getter();
  v47 = sub_10009E170();
  v48 = v109;
  v132 = v12;
  v110 = v47;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v14, &qword_10021C8B8, &qword_1001B31F8);
  v49 = *v116;
  v50 = 0.0;
  if (v49 == 2)
  {
    v51 = 1.0;
  }

  else
  {
    v51 = 0.0;
  }

  sub_10000F618(v48, v22, &qword_10021C8C0, &qword_1001B3200);
  *&v22[*(v138 + 36)] = v51;
  static UnitPoint.center.getter();
  v53 = v52;
  v55 = v54;
  sub_10000F618(v22, v26, &qword_10021C8C8, &qword_1001B3208);
  v56 = &v26[*(v137 + 36)];
  *v56 = v51;
  *(v56 + 1) = v51;
  *(v56 + 2) = v53;
  *(v56 + 3) = v55;
  if (qword_1002183D0 != -1)
  {
    swift_once();
  }

  v57 = qword_10021C738;
  sub_10000F618(v26, v37, &qword_10021C8D0, &qword_1001B3210);
  v58 = v119;
  v59 = &v37[*(v119 + 36)];
  *v59 = v57;
  v59[8] = v49 == 2;
  sub_10000F618(v37, v140, &qword_10021C8D8, &qword_1001B3218);

  v60 = v129;
  ProgressView<>.init<>()();
  v61 = static Color.white.getter();
  v62 = swift_getKeyPath();
  v63 = (v60 + *(sub_100009F70(&qword_10021C918, &qword_1001B32C8) + 36));
  *v63 = v62;
  v63[1] = v61;
  *(v60 + *(sub_100009F70(&qword_10021C920, &qword_1001B32D0) + 36)) = 257;
  v64 = (v60 + *(v131 + 36));
  v65 = *(sub_100009F70(&qword_10021BF68, &qword_1001B25D8) + 28);
  v66 = enum case for ControlSize.small(_:);
  v67 = type metadata accessor for ControlSize();
  (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
  *v64 = swift_getKeyPath();
  sub_10009E3A8();
  v68 = v127;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v60, &qword_10021C890, &qword_1001B31D0);
  if (v49 == 1)
  {
    v69 = 1.0;
  }

  else
  {
    v69 = 0.0;
  }

  v70 = v124;
  sub_10000F618(v68, v124, &qword_10021C898, &qword_1001B31D8);
  *(v70 + *(v125 + 36)) = v69;
  static UnitPoint.center.getter();
  v72 = v71;
  v74 = v73;
  v75 = v70;
  v76 = v122;
  sub_10000F618(v75, v122, &qword_10021C8A0, &qword_1001B31E0);
  v77 = v76 + *(v123 + 36);
  *v77 = v69;
  *(v77 + 8) = v69;
  *(v77 + 16) = v72;
  *(v77 + 24) = v74;
  v78 = v76;
  v79 = v118;
  sub_10000F618(v78, v118, &qword_10021C8A8, &qword_1001B31E8);
  v80 = v79 + *(v120 + 36);
  *v80 = v57;
  *(v80 + 8) = v49 == 1;
  sub_10000F618(v79, v139, &qword_10021C8B0, &qword_1001B31F0);
  v116 = v57;

  v81 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v82 = Font.weight(_:)();

  v83 = swift_getKeyPath();
  v84 = (v14 + *(v115 + 36));
  v85 = *(v114 + 28);
  static SymbolRenderingMode.hierarchical.getter();
  v112(v84 + v85, 0, 1, v113);
  *v84 = swift_getKeyPath();
  *v14 = v81;
  v14[1] = v83;
  v14[2] = v82;
  *(v14 + *(v132 + 36)) = static Color.white.getter();
  v86 = v130;
  View.accessibilityIdentifier(_:)();
  sub_10000D52C(v14, &qword_10021C8B8, &qword_1001B31F8);
  v87 = v49 == 3 || v49 == 0;
  v88 = v87;
  if (v87)
  {
    v50 = 1.0;
  }

  v89 = v126;
  sub_10000F618(v86, v126, &qword_10021C8C0, &qword_1001B3200);
  *(v89 + *(v138 + 36)) = v50;
  static UnitPoint.center.getter();
  v91 = v90;
  v93 = v92;
  v94 = v89;
  v95 = v121;
  sub_10000F618(v94, v121, &qword_10021C8C8, &qword_1001B3208);
  v96 = v95 + *(v137 + 36);
  *v96 = v50;
  *(v96 + 8) = v50;
  *(v96 + 16) = v91;
  *(v96 + 24) = v93;
  v97 = v95;
  v98 = v117;
  sub_10000F618(v97, v117, &qword_10021C8D0, &qword_1001B3210);
  v99 = v98 + *(v58 + 36);
  *v99 = v57;
  *(v99 + 8) = v88;
  v100 = v128;
  sub_10000F618(v98, v128, &qword_10021C8D8, &qword_1001B3218);
  v101 = v134;
  sub_10000D58C(v140, v134, &qword_10021C8D8, &qword_1001B3218);
  v102 = v139;
  v103 = v135;
  sub_10000D58C(v139, v135, &qword_10021C8B0, &qword_1001B31F0);
  v104 = v133;
  sub_10000D58C(v100, v133, &qword_10021C8D8, &qword_1001B3218);
  v105 = v136;
  sub_10000D58C(v101, v136, &qword_10021C8D8, &qword_1001B3218);
  v106 = sub_100009F70(&qword_10021C958, &unk_1001B3310);
  sub_10000D58C(v103, v105 + *(v106 + 48), &qword_10021C8B0, &qword_1001B31F0);
  sub_10000D58C(v104, v105 + *(v106 + 64), &qword_10021C8D8, &qword_1001B3218);

  sub_10000D52C(v100, &qword_10021C8D8, &qword_1001B3218);
  sub_10000D52C(v102, &qword_10021C8B0, &qword_1001B31F0);
  sub_10000D52C(v140, &qword_10021C8D8, &qword_1001B3218);
  sub_10000D52C(v104, &qword_10021C8D8, &qword_1001B3218);
  sub_10000D52C(v103, &qword_10021C8B0, &qword_1001B31F0);
  return sub_10000D52C(v101, &qword_10021C8D8, &qword_1001B3218);
}

double sub_10009D6C8()
{
  v0 = sub_100009F70(&qword_10021C878, &qword_1001B31C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = sub_100009F70(&qword_10021C880, &qword_1001B31C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayButtonView(0);
  sub_1000248B8(v9);
  if (qword_1002183B0 != -1)
  {
    swift_once();
  }

  v10 = sub_10001FDF4(v6, qword_10021C6F8);
  sub_10009E78C(&qword_10021C888, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v11 = v6;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = *(v7 + 16);
  v12(v5, v10, v6);
  sub_10009E78C(&qword_10021C870, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v13 = dispatch thunk of static Comparable.< infix(_:_:)();
  sub_10000D52C(v5, &qword_10021C880, &qword_1001B31C8);
  if ((v13 & 1) == 0)
  {
    if (qword_1002183C0 != -1)
    {
      swift_once();
    }

    v16 = sub_10001FDF4(v6, qword_10021C718);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v12(v2, v16, v6);
      v17 = dispatch thunk of static Comparable.<= infix(_:_:)();
      sub_10000D52C(v2, &qword_10021C878, &qword_1001B31C0);
      (*(v7 + 8))(v9, v6);
      v18 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      v2 = v18;
      if ((v17 & 1) == 0)
      {
        [v18 scaledValueForValue:1.0];
        v15 = v21;
        goto LABEL_14;
      }

      if (qword_1002183C8 == -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_12:
    v19 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:qword_10021C730];
    [v2 scaledValueForValue:v19 compatibleWithTraitCollection:1.0];
    v15 = v20;

    v2 = v19;
    goto LABEL_14;
  }

  (*(v7 + 8))(v9, v6);
  v11 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  if (qword_1002183B8 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:qword_10021C710];
  [v11 scaledValueForValue:v2 compatibleWithTraitCollection:1.0];
  v15 = v14;

LABEL_14:
  return v15;
}

uint64_t sub_10009DBCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009DC30()
{
  v1 = (type metadata accessor for PlayButtonView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_100009F70(&qword_100219728, &qword_1001AE678);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DynamicTypeSize();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10009DD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10009DE1C()
{
  result = qword_10021C810;
  if (!qword_10021C810)
  {
    sub_10000B3DC(&qword_10021C808, &qword_1001B3188);
    sub_10009DED4();
    sub_10000D1EC(&qword_10021C848, &qword_10021C850, &qword_1001B31A8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C810);
  }

  return result;
}

unint64_t sub_10009DED4()
{
  result = qword_10021C818;
  if (!qword_10021C818)
  {
    sub_10000B3DC(&qword_10021C820, &qword_1001B3190);
    sub_10000B3DC(&qword_10021C828, &qword_1001B3198);
    sub_10000B3DC(&qword_10021C830, &qword_1001B31A0);
    sub_10000D1EC(&qword_10021C838, &qword_10021C828, &qword_1001B3198, &protocol conformance descriptor for ZStack<A>);
    sub_10000D1EC(&qword_10021C840, &qword_10021C830, &qword_1001B31A0, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C818);
  }

  return result;
}

uint64_t sub_10009E030(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021C800, &qword_1001B3180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009E0C4(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021B4D8, &qword_1001B1000);
  __chkstk_darwin(v2 - 8);
  sub_10000D58C(a1, &v5 - v3, &qword_10021B4D8, &qword_1001B1000);
  return EnvironmentValues.symbolRenderingMode.setter();
}

unint64_t sub_10009E170()
{
  result = qword_10021C8F0;
  if (!qword_10021C8F0)
  {
    sub_10000B3DC(&qword_10021C8B8, &qword_1001B31F8);
    sub_10009E228();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8, &unk_1001AD240, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C8F0);
  }

  return result;
}

unint64_t sub_10009E228()
{
  result = qword_10021C8F8;
  if (!qword_10021C8F8)
  {
    sub_10000B3DC(&qword_10021C8E0, &qword_1001B3250);
    sub_10009E2E0();
    sub_10000D1EC(&qword_10021C910, &qword_10021C8E8, &qword_1001B3258, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C8F8);
  }

  return result;
}

unint64_t sub_10009E2E0()
{
  result = qword_10021C900;
  if (!qword_10021C900)
  {
    sub_10000B3DC(&qword_10021C908, &qword_1001B3290);
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8, &unk_1001ADC10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C900);
  }

  return result;
}

unint64_t sub_10009E3A8()
{
  result = qword_10021C928;
  if (!qword_10021C928)
  {
    sub_10000B3DC(&qword_10021C890, &qword_1001B31D0);
    sub_10009E460();
    sub_10000D1EC(&qword_10021C950, &qword_10021BF68, &qword_1001B25D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C928);
  }

  return result;
}

unint64_t sub_10009E460()
{
  result = qword_10021C930;
  if (!qword_10021C930)
  {
    sub_10000B3DC(&qword_10021C920, &qword_1001B32D0);
    sub_10009E4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C930);
  }

  return result;
}

unint64_t sub_10009E4EC()
{
  result = qword_10021C938;
  if (!qword_10021C938)
  {
    sub_10000B3DC(&qword_10021C918, &qword_1001B32C8);
    sub_10000D1EC(&qword_10021C940, &qword_10021C948, &qword_1001B3308, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10000D1EC(&qword_100219128, &qword_100219130, &qword_1001ADD38, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021C938);
  }

  return result;
}

unint64_t sub_10009E5D4()
{
  result = qword_10021C960[0];
  if (!qword_10021C960[0])
  {
    sub_10000B3DC(&qword_10021C800, &qword_1001B3180);
    sub_10000B3DC(&qword_10021C7F0, &qword_1001B3170);
    sub_10000B3DC(&qword_10021C7E8, &qword_1001B3168);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_10021C858, &qword_10021C7E8, &qword_1001B3168, &protocol conformance descriptor for Button<A>);
    sub_10009E78C(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10009E78C(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021C960);
  }

  return result;
}

uint64_t sub_10009E78C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009E7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10009E810(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10009E858(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10009E8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v29 = a1;
  v30 = a7;
  v24 = a6;
  type metadata accessor for SafeAreaModifier(255, a5, a6, a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000B3DC(&qword_100219110, &unk_1001B33D0);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  v35 = sub_100018EC8();
  WitnessTable = swift_getWitnessTable();
  v25 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  v23[1] = swift_getWitnessTable();
  v23[2] = type metadata accessor for _BackgroundModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  v15 = swift_allocObject();
  v16 = v24;
  v15[2] = a5;
  v15[3] = v16;
  v17 = v27;
  v15[4] = v26;
  v15[5] = v17;
  v15[6] = v28;

  v33 = GeometryReader.init(content:)();
  v34 = v18;
  static Alignment.center.getter();
  v19 = swift_getWitnessTable();
  View.background<A>(_:alignment:)();

  v20 = swift_getWitnessTable();
  v31 = v19;
  v32 = v20;
  swift_getWitnessTable();
  sub_100157EFC();
  v21 = *(v9 + 8);
  v21(v12, v8);
  sub_100157EFC();
  return (v21)(v14, v8);
}

uint64_t sub_10009EC50@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23[4] = a3;
  v25 = a1;
  v26 = a6;
  v23[1] = a4;
  v23[2] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v23 - v8;
  v23[0] = sub_10000B3DC(&qword_100219110, &unk_1001B33D0);
  v23[3] = type metadata accessor for _PreferenceWritingModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v23 - v15;
  v17 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v30 = v17;
  v18 = GeometryProxy.safeAreaInsets.getter();
  a2(v18);
  v19 = sub_100018EC8();
  View.preference<A>(key:value:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v27 = v19;
  v28 = WitnessTable;
  swift_getWitnessTable();
  sub_100157EFC();
  v21 = *(v11 + 8);
  v21(v14, v10);
  sub_100157EFC();
  return (v21)(v16, v10);
}

uint64_t sub_10009EF38()
{

  return swift_deallocObject();
}

uint64_t sub_10009EF88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SafeAreaModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000B3DC(&qword_100219110, &unk_1001B33D0);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  sub_100018EC8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10009F130@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v6 = v2;
  sub_10009FEF8(&qword_10021CB88, type metadata accessor for VenueController, &unk_1001B3430);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController__result;
  swift_beginAccess();
  return sub_10009FFA4(v6 + v4, a2);
}

uint64_t sub_10009F1F8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController__result;
  swift_beginAccess();
  sub_10009FF40(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10009F264(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_100009F70(&qword_10021B370, &qword_1001B3F70);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_100009F70(&qword_10021CB80, &qword_1001B3458);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for VenueController.Result(0);
  v3[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v7;
  v3[18] = v6;

  return _swift_task_switch(sub_10009F400, v7, v6);
}

uint64_t sub_10009F400()
{
  v1 = v0[15];
  v2 = v0[7];
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[19] = OBJC_IVAR____TtC15ShazamEventsApp15VenueController___observationRegistrar;
  v0[2] = v2;
  v0[20] = sub_10009FEF8(&qword_10021CB88, type metadata accessor for VenueController, &unk_1001B3430);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10009FE78(v1);
  v4 = type metadata accessor for Music();
  sub_10009FEF8(&qword_10021B378, &type metadata accessor for Music, &protocol conformance descriptor for Music);
  static EventService.RequestType<>.music.getter();
  v5 = swift_task_alloc();
  v0[21] = v5;
  sub_10009FEF8(&qword_10021CB90, &type metadata accessor for Music, &protocol conformance descriptor for Music);
  *v5 = v0;
  v5[1] = sub_10009F638;
  v6 = v0[10];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[13];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v9, v7, v8, v6, v0 + 2, 0, v4, v0 + 2);
}

uint64_t sub_10009F638()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  v3 = v2[18];
  v4 = v2[17];
  if (v0)
  {
    v5 = sub_10009F94C;
  }

  else
  {
    v5 = sub_10009F7C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10009F7C0()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[7];

  v6 = *(sub_100009F70(&qword_10021CB98, &qword_1001B3488) + 48);
  Venue.Schedule.venue.getter();
  *(v1 + v6) = Venue.Schedule.events.getter();
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v1;
  v0[4] = v5;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  (*(v4 + 8))(v2, v3);
  sub_10009FE78(v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10009F94C()
{
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[7];

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[3] = v3;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10009FE78(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10009FA9C()
{
  v1 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10009FE78(v0 + OBJC_IVAR____TtC15ShazamEventsApp15VenueController__result);
  v3 = OBJC_IVAR____TtC15ShazamEventsApp15VenueController___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_10009FBB0(uint64_t a1)
{
  result = type metadata accessor for EventService();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for VenueController.Result(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10009FD24(uint64_t a1)
{
  sub_10009FD98(319);
  if (v1 <= 0x3F)
  {
    sub_10009FE14();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10009FD98(uint64_t a1)
{
  if (!qword_10021CB40)
  {
    type metadata accessor for Venue();
    sub_10000B3DC(&qword_10021CB48, &qword_1001B3428);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10021CB40);
    }
  }
}

unint64_t sub_10009FE14()
{
  result = qword_10021CB50;
  if (!qword_10021CB50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10021CB50);
  }

  return result;
}

uint64_t sub_10009FE78(uint64_t a1)
{
  v2 = type metadata accessor for VenueController.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009FEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009FF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VenueController.Result(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009FFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VenueController.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A0020(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Calendar();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TimeZone();
  v38 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v34 - v13;
  v34 = type metadata accessor for Date();
  v15 = *(v34 - 8);
  v16 = __chkstk_darwin(v34);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v34 - v19;
  static Date.now.getter();
  v21 = *(a2 + 168);
  v37 = v2;
  v21(a1, a2);
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  v23 = v38;
  v35 = v10;
  v24 = TimeZone.secondsFromGMT(for:)();
  v25 = v40;
  static Calendar.current.getter();
  v26 = v39;
  Calendar.timeZone.getter();
  v27 = v41;
  (*(v42 + 8))(v25, v43);
  v28 = TimeZone.secondsFromGMT(for:)();
  v29 = *(v23 + 8);
  result = v29(v26, v27);
  if (__OFSUB__(v24, v28))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v29(v35, v27);
    v31 = *(v15 + 8);
    v32 = v34;
    v31(v18, v34);
    v33 = sub_1000A0424(v20, a1, v36);
    v31(v20, v32);
    return (v33 & 1) == 0;
  }

  return result;
}

uint64_t sub_1000A0424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = type metadata accessor for Date();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DateInterval();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v18 - v13;
  (*(a3 + 168))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1000FBF34(AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  DateInterval.end.getter();
  (*(v8 + 8))(v10, v19);
  v16 = static Date.> infix(_:_:)();
  (*(v5 + 8))(v7, v21);
  return v16 & 1;
}

uint64_t sub_1000A06D0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000A0764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1000A0830()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A0914(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000A09E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000A0AC4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A1E04(*a1);
  *a2 = result;
  return result;
}

void sub_1000A0AF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x656D614E65676170;
  v7 = 0xEA0000000000656DLL;
  v8 = 0x614E656C75646F6DLL;
  if (v2 != 3)
  {
    v8 = 0x6341656C75646F6DLL;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4449656C646E7562;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

id sub_1000A0B9C()
{
  v0 = objc_allocWithZone(NSString);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithString:v1];

  return v2;
}

unint64_t sub_1000A0C64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A1E50(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A0C94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A0D18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000A0CC4()
{
  result = qword_10021CBA0;
  if (!qword_10021CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CBA0);
  }

  return result;
}

uint64_t sub_1000A0D18(char a1)
{
  result = 0x746E657665;
  switch(a1)
  {
    case 1:
      result = 0x756D2D746E657665;
      break;
    case 2:
      result = 0x70732D746E657665;
      break;
    case 3:
      result = 0x68742D746E657665;
      break;
    case 4:
      result = 0x61642D746E657665;
      break;
    case 5:
      result = 0x72612D746E657665;
      break;
    case 6:
      v3 = 0x45746E657665;
      goto LABEL_15;
    case 7:
      result = 0x747369747261;
      break;
    case 8:
      result = 0x7245747369747261;
      break;
    case 9:
      result = 0x65756E6576;
      break;
    case 10:
      v3 = 0x4565756E6576;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7272000000000000;
      break;
    case 11:
      result = 0x7374656B636974;
      break;
    case 12:
      result = 0x737265746C6966;
      break;
    case 13:
      result = 0x746E65746E6F63;
      break;
    case 14:
      result = 0x45746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A0F3C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_1000A0FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A106C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int sub_1000A10DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000A1144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A2398(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000A1174@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000A11A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000A11A0(char a1)
{
  result = 0x7261626C6F6F74;
  switch(a1)
  {
    case 1:
      result = 0x726564616568;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x42746E65746E6F63;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6C75646F4D707061;
      break;
    case 7:
      result = 0x707041636973756DLL;
      break;
    case 8:
      result = 0x70417374726F7073;
      break;
    case 9:
      result = 0x737265746C6966;
      break;
    case 10:
      result = 0x694C73746E657665;
      break;
    case 11:
      result = 0x646F4D636973756DLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x7473694C746573;
      break;
    case 14:
      result = 0x507473694C746573;
      break;
    case 15:
      result = 0x736F65646976;
      break;
    case 16:
      result = 0x7473696C79616C70;
      break;
    case 17:
      result = 0x676E696D6F637075;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1000A13FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  (a3)(*v3, a2);
  v4 = objc_allocWithZone(NSString);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  return v6;
}

uint64_t sub_1000A147C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    v3 = 0x686372616573;
    switch(a1)
    {
      case 1:
        v3 = 0x6572616873;
        break;
      case 2:
        v3 = 0x7373696D736964;
        break;
      case 3:
        v3 = 0x656B636954746567;
        break;
      case 4:
        v3 = 0x6C61436F54646461;
        break;
      case 5:
        v3 = 0x7370614D776F6873;
        break;
      case 6:
        v3 = 0x64616F6C6E776F64;
        break;
      case 7:
        v5 = 0x657461657263;
        goto LABEL_34;
      case 8:
        v3 = 0x7070416E65706FLL;
        break;
      case 9:
        v3 = 0x6973754D6E65706FLL;
        break;
      case 10:
        v3 = 0x726F70536E65706FLL;
        break;
      case 11:
        v3 = 0xD000000000000011;
        break;
      case 12:
        v3 = 0xD000000000000012;
        break;
      case 13:
        v3 = 0x6E6576456E65706FLL;
        break;
      case 14:
        v3 = 0x746C69466E65706FLL;
        break;
      case 15:
        v3 = 0xD000000000000011;
        break;
      case 16:
      case 32:
        v3 = 0xD000000000000013;
        break;
      case 17:
        v3 = 0x676E6F536E65706FLL;
        break;
      case 18:
        v3 = 0x656469566E65706FLL;
        break;
      case 19:
        v3 = 2036427888;
        break;
      case 20:
        v3 = 0x6573756170;
        break;
      case 21:
        v3 = 0x6C69467465736572;
        break;
      case 22:
        v3 = 0x61577463656C6573;
        break;
      case 23:
        v5 = 0x7463656C6573;
LABEL_34:
        v3 = v5 & 0xFFFFFFFFFFFFLL | 0x6157000000000000;
        break;
      case 24:
        v3 = 0xD000000000000011;
        break;
      case 25:
        v3 = 0x65726F4D776F6873;
        break;
      case 26:
        v3 = 0x6F68506570697773;
        break;
      case 27:
        v3 = 0x6E6F536570697773;
        break;
      case 28:
        v3 = 0x6469566570697773;
        break;
      case 29:
        v3 = 0x6C61576570697773;
        break;
      case 30:
        v3 = 0x7461576570697773;
        break;
      case 31:
        v3 = 0x706C6C6157657375;
        break;
      default:
        break;
    }
  }

  else
  {
    v3 = a1;
  }

  sub_1000109A4(a1, a2, a3);
  return v3;
}

id sub_1000A191C()
{
  sub_1000A147C(*v0, *(v0 + 8), *(v0 + 16));
  v1 = objc_allocWithZone(NSString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  return v3;
}

uint64_t sub_1000A199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v28 = type metadata accessor for Art();
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Dance();
  v26 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Theater();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Sport();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Music();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a2;
  v34[4] = a3;
  v18 = sub_100043D3C(v34);
  (*(*(a2 - 8) + 16))(v18, v32, a2);
  sub_10005DA94(v34, v33);
  sub_100009F70(&qword_10021CBF8, &qword_1001B3680);
  if (swift_dynamicCast())
  {
    (*(v15 + 8))(v17, v14);
    v19 = 1;
  }

  else if (swift_dynamicCast())
  {
    (*(v11 + 8))(v13, v10);
    v19 = 2;
  }

  else if (swift_dynamicCast())
  {
    (*(v29 + 8))(v9, v7);
    v19 = 3;
  }

  else
  {
    v21 = v30;
    v20 = v31;
    if (swift_dynamicCast())
    {
      (*(v26 + 8))(v21, v20);
      v19 = 4;
    }

    else
    {
      v23 = v27;
      v22 = v28;
      if (swift_dynamicCast())
      {
        (*(v25 + 8))(v23, v22);
        v19 = 5;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  sub_100021498(v33);
  sub_100021498(v34);
  return v19;
}

unint64_t sub_1000A1E04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100209580, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000A1E50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100209618, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A1E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000A1EE4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000A1F34(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_1000A1F50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsKey(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A20D8()
{
  result = qword_10021CC00;
  if (!qword_10021CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CC00);
  }

  return result;
}

uint64_t sub_1000A2130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000A217C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1000A21C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1000A21EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000A2280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A2344()
{
  result = qword_10021CC58[0];
  if (!qword_10021CC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021CC58);
  }

  return result;
}

unint64_t sub_1000A2398(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000A2404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v5 = (a2 + *(type metadata accessor for LocationModule(0, *(v3 + 80), *(v3 + 88), v4) + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.init()();
  *v5 = result;
  v5[1] = v7;
  return result;
}

void sub_1000A252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  if (v4 <= 0x3F)
  {
    sub_10000B304(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A25D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(255, *(a3 + 16), *(a3 + 24), a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000A26C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(255, *(a4 + 16), *(a4 + 24), a4);
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1000A27CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_1000A280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_1000A2858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for LocationViewModel(255, v7, v6, v8);
  v9 = type metadata accessor for Bindable();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v42 = sub_100009F70(&qword_10021CCE0, &qword_1001B39E8);
  __chkstk_darwin(v42);
  v14 = &v40 - v13;
  v43 = sub_100009F70(&qword_10021CCE8, &qword_1001B39F0);
  __chkstk_darwin(v43);
  v16 = &v40 - v15;
  v17 = sub_100009F70(&qword_10021CCF0, &qword_1001B39F8);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  __chkstk_darwin(v17);
  v41 = &v40 - v19;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0x4024000000000000;
  v14[16] = 0;
  v20 = sub_100009F70(&qword_10021CCF8, &qword_1001B3A00);
  sub_1000A2CE8(v2, v7, v6, &v14[*(v20 + 44)]);
  sub_1000A280C(a1, v21, v22, v23);
  v50 = v7;
  v51 = v6;
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v10 + 8))(v12, v9);
  v27 = sub_1000A27CC(a1, v24, v25, v26);
  v28 = *(v27 + *(*v27 + 120));

  sub_1000A3A44();
  View.mapItemDetailSheet(isPresented:item:displaysMap:)();

  sub_10000D52C(v14, &qword_10021CCE0, &qword_1001B39E8);
  LOBYTE(v14) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = v43;
  v30 = &v16[*(v43 + 36)];
  *v30 = v14;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  v35 = v46;
  static AccessibilityChildBehavior.contain.getter();
  v36 = sub_1000A3AA8();
  v37 = v41;
  View.accessibilityElement(children:)();
  (*(v47 + 8))(v35, v48);
  sub_1000A3B70(v16);
  v52 = v29;
  v53 = v36;
  swift_getOpaqueTypeConformance2();
  v38 = v44;
  View.accessibilityIdentifier(_:)();
  return (*(v45 + 8))(v37, v38);
}

uint64_t sub_1000A2CE8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v106 = a1;
  v118 = a4;
  v111 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v111);
  v115 = (&v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = a2;
  v104 = a3;
  v8 = type metadata accessor for LocationModule(0, a2, a3, v7);
  v105 = v8;
  v102 = *(v8 - 8);
  v100 = *(v102 + 64);
  __chkstk_darwin(v8);
  v101 = &v100 - v9;
  v109 = sub_100009F70(&qword_10021CD10, &qword_1001B3A40);
  __chkstk_darwin(v109);
  v114 = &v100 - v10;
  v110 = sub_100009F70(&qword_10021CD18, &qword_1001B3A48);
  v11 = __chkstk_darwin(v110);
  v117 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v112 = &v100 - v14;
  __chkstk_darwin(v13);
  v116 = &v100 - v15;
  v119 = type metadata accessor for AccessibilityTraits();
  v113 = *(v119 - 8);
  __chkstk_darwin(v119);
  v108 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100009F70(&qword_10021AFA8, &unk_1001B6A30);
  v17 = __chkstk_darwin(v107);
  v19 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v120 = &v100 - v20;
  sub_1000A27CC(v8, v21, v22, v23);

  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  v28 = v27;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v29 = Text.font(_:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_10000D60C(v24, v26, v28 & 1);

  LOBYTE(v24) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v121) = v33 & 1;
  v126 = 0;
  *&v122 = v29;
  *(&v122 + 1) = v31;
  LOBYTE(v123) = v33 & 1;
  *(&v123 + 1) = v35;
  LOBYTE(v124) = v24;
  *(&v124 + 1) = v36;
  *v125 = v37;
  *&v125[8] = v38;
  *&v125[16] = v39;
  v125[24] = 0;
  sub_100009F70(&qword_10021AFE8, &qword_1001B0A38);
  sub_100071294();
  v40 = v105;
  View.accessibilityIdentifier(_:)();
  v127[2] = v124;
  *v128 = *v125;
  *&v128[9] = *&v125[9];
  v127[0] = v122;
  v127[1] = v123;
  v41 = v106;
  sub_10000D52C(v127, &qword_10021AFE8, &qword_1001B0A38);
  v42 = v108;
  static AccessibilityTraits.isHeader.getter();
  ModifiedContent<>.accessibility(addTraits:)();
  v113[1](v42, v119);
  v113 = v19;
  sub_10000D52C(v19, &qword_10021AFA8, &unk_1001B6A30);
  sub_1000A27CC(v40, v43, v44, v45);
  v46 = sub_1000C6E88();
  v48 = v47;

  v52 = sub_1000A27CC(v40, v49, v50, v51);
  v53 = *(v52 + *(*v52 + 120));
  v54 = v53;

  sub_1000A27CC(v40, v55, v56, v57);
  if (*&v41[*(v40 + 36)])
  {

    v59 = sub_1000C6EFC(v58);

    v108 = v46;
    v107 = v48;
    if (v59)
    {
      v60 = v102;
      v61 = v101;
      (*(v102 + 16))(v101, v41, v40);
      v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v63 = swift_allocObject();
      v64 = v104;
      *(v63 + 16) = v103;
      *(v63 + 24) = v64;
      (*(v60 + 32))(v63 + v62, v61, v40);
      v119 = sub_1000A3DA8;
    }

    else
    {
      v119 = 0;
      v63 = 0;
    }

    v106 = v53;
    v121 = 0;
    sub_100009F70(&qword_10021CD20, &qword_1001B3A50);
    State.init(wrappedValue:)();
    v104 = *(&v122 + 1);
    v105 = v122;
    v121 = 0;
    State.init(wrappedValue:)();
    v65 = v122;
    if (qword_100218430 != -1)
    {
      swift_once();
    }

    v66 = qword_100230600;
    v67 = v114;
    v68 = &v114[*(v109 + 36)];
    v69 = v111;
    v70 = *(v111 + 20);
    v71 = enum case for RoundedCornerStyle.continuous(_:);
    v72 = type metadata accessor for RoundedCornerStyle();
    v73 = *(*(v72 - 8) + 104);
    v73(v68 + v70, v71, v72);
    *v68 = v66;
    v68[1] = v66;
    *(v68 + *(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)) = 256;
    v74 = v107;
    *v67 = v108;
    *(v67 + 8) = v74;
    v75 = v119;
    *(v67 + 16) = v106;
    *(v67 + 24) = v75;
    v76 = v105;
    *(v67 + 32) = v63;
    *(v67 + 40) = v76;
    *(v67 + 48) = v104;
    *(v67 + 56) = v65;
    v77 = v115;
    v73(v115 + *(v69 + 20), v71, v72);
    *v77 = v66;
    v77[1] = v66;
    v78 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v79 = Color.init(uiColor:)();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v80 = v112;
    v81 = &v112[*(v110 + 36)];
    sub_1000A3BD8(v77, v81);
    v82 = v81 + *(sub_100009F70(&qword_10021BE20, &unk_1001B9BF0) + 36);
    v83 = v123;
    *v82 = v122;
    *(v82 + 16) = v83;
    *(v82 + 32) = v124;
    v84 = sub_100009F70(&qword_10021BE28, &unk_1001B2460);
    *(v81 + *(v84 + 52)) = v79;
    *(v81 + *(v84 + 56)) = 256;
    v85 = static Alignment.center.getter();
    v87 = v86;
    sub_1000A3C3C(v77);
    v88 = (v81 + *(sub_100009F70(&qword_10021BE30, &unk_1001B9C00) + 36));
    *v88 = v85;
    v88[1] = v87;
    v89 = static Alignment.center.getter();
    v91 = v90;
    v92 = (v81 + *(sub_100009F70(&qword_10021BDF8, &qword_1001B2420) + 36));
    *v92 = v89;
    v92[1] = v91;
    sub_10000F618(v67, v80, &qword_10021CD10, &qword_1001B3A40);
    v93 = v116;
    sub_10000F618(v80, v116, &qword_10021CD18, &qword_1001B3A48);
    v94 = v120;
    v95 = v113;
    sub_10000D58C(v120, v113, &qword_10021AFA8, &unk_1001B6A30);
    v96 = v117;
    sub_10000D58C(v93, v117, &qword_10021CD18, &qword_1001B3A48);
    v97 = v118;
    sub_10000D58C(v95, v118, &qword_10021AFA8, &unk_1001B6A30);
    v98 = sub_100009F70(&qword_10021CD28, &qword_1001B3A58);
    sub_10000D58C(v96, v97 + *(v98 + 48), &qword_10021CD18, &qword_1001B3A48);
    sub_10000D52C(v93, &qword_10021CD18, &qword_1001B3A48);
    sub_10000D52C(v94, &qword_10021AFA8, &unk_1001B6A30);
    sub_10000D52C(v96, &qword_10021CD18, &qword_1001B3A48);
    return sub_10000D52C(v95, &qword_10021AFA8, &unk_1001B6A30);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_1000A3884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LocationModule(0, a2, a3, a4);
  sub_1000A27CC(v5, v6, v7, v8);
  sub_1000C7028(1);

  sub_1000A27CC(v5, v9, v10, v11);
  if (*(a1 + *(v5 + 36)))
  {

    sub_1000C716C(v12);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000A3978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C73E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A39D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C73E8();
  *a1 = result & 1;
  return result;
}

__n128 sub_1000A3A38(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1000A3A44()
{
  result = qword_10021CD00;
  if (!qword_10021CD00)
  {
    sub_10000B3DC(&qword_10021CCE0, &qword_1001B39E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CD00);
  }

  return result;
}

unint64_t sub_1000A3AA8()
{
  result = qword_10021CD08;
  if (!qword_10021CD08)
  {
    sub_10000B3DC(&qword_10021CCE8, &qword_1001B39F0);
    sub_10000B3DC(&qword_10021CCE0, &qword_1001B39E8);
    sub_1000A3A44();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CD08);
  }

  return result;
}

uint64_t sub_1000A3B70(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021CCE8, &qword_1001B39F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A3BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A3C3C(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A3C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LocationModule(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  type metadata accessor for LocationViewModel(255, v5, v6, v9);
  v10 = type metadata accessor for Bindable();
  (*(*(v10 - 8) + 8))(v4 + v8, v10);

  return swift_deallocObject();
}

void sub_1000A3DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for LocationModule(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_1000A3884(v9, v5, v6, v7);
}

unint64_t sub_1000A3E30()
{
  result = qword_10021CD30;
  if (!qword_10021CD30)
  {
    sub_10000B3DC(&qword_10021CD38, &unk_1001B3A60);
    sub_10000B3DC(&qword_10021CCE8, &qword_1001B39F0);
    sub_1000A3AA8();
    swift_getOpaqueTypeConformance2();
    sub_1000A3F28(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CD30);
  }

  return result;
}

uint64_t sub_1000A3F28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A3F84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009F70(&qword_10021CD40, &unk_1001B3A70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A4054(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009F70(&qword_10021CD40, &unk_1001B3A70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CircularProgressViewStyle(uint64_t a1)
{
  result = qword_10021CDA0;
  if (!qword_10021CDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A4150(uint64_t a1)
{
  sub_1000A41CC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000A41CC(uint64_t a1)
{
  if (!qword_10021CDB0)
  {
    sub_1000A4228();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &qword_10021CDB0);
    }
  }
}

unint64_t sub_1000A4228()
{
  result = qword_10021CDB8;
  if (!qword_10021CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CDB8);
  }

  return result;
}

__n128 sub_1000A4298@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = ProgressViewStyleConfiguration.fractionCompleted.getter();
  if (v5)
  {
    sub_1000A4A90(&v63);
  }

  else
  {
    v6 = *&v4;
    v7 = static Alignment.center.getter();
    v9 = v8;
    sub_1000A4564(a1, &v78, v6);
    v34 = v84;
    v35 = v85;
    v30 = v80;
    v31 = v81;
    v32 = v82;
    v33 = v83;
    v28 = v78;
    v29 = v79;
    v37[6] = v84;
    v37[7] = v85;
    v37[2] = v80;
    v37[3] = v81;
    v37[4] = v82;
    v37[5] = v83;
    v36 = v86;
    v38 = v86;
    v37[0] = v78;
    v37[1] = v79;
    sub_10000D58C(&v28, &v63, &qword_10021CE38, &qword_1001B3B38);
    sub_10000D52C(v37, &qword_10021CE38, &qword_1001B3B38);
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v32;
    v44 = v33;
    v39 = v28;
    v40 = v29;
    type metadata accessor for CircularProgressViewStyle(0);
    sub_100009F70(&qword_10021CD40, &unk_1001B3A70);
    ScaledMetric.wrappedValue.getter();
    v10 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    LOBYTE(v78) = 0;
    static UnitPoint.center.getter();
    *&v63 = v7;
    *(&v63 + 1) = v9;
    v70 = v45;
    v71 = v46;
    *&v72 = v47;
    v66 = v41;
    v67 = v42;
    v68 = v43;
    v69 = v44;
    v64 = v39;
    v65 = v40;
    BYTE8(v72) = v10;
    *&v73 = v12;
    *(&v73 + 1) = v14;
    *&v74 = v16;
    *(&v74 + 1) = v18;
    LOBYTE(v75) = 0;
    *(&v75 + 1) = 0xBFF921FB54442D18;
    *&v76 = v19;
    *(&v76 + 1) = v20;
    sub_1000A4BE0(&v63);
  }

  v60 = v75;
  v61 = v76;
  v62 = v77;
  v56 = v71;
  v57 = v72;
  v58 = v73;
  v59 = v74;
  v52 = v67;
  v53 = v68;
  v54 = v69;
  v55 = v70;
  v48 = v63;
  v49 = v64;
  v50 = v65;
  v51 = v66;
  sub_100009F70(&qword_10021CE08, &qword_1001B3B20);
  sub_1000A4A9C();
  _ConditionalContent<>.init(storage:)();
  v21 = v91;
  *(a2 + 192) = v90;
  *(a2 + 208) = v21;
  *(a2 + 224) = v92;
  v22 = v87;
  *(a2 + 128) = v86;
  *(a2 + 144) = v22;
  v23 = v89;
  *(a2 + 160) = v88;
  *(a2 + 176) = v23;
  v24 = v83;
  *(a2 + 64) = v82;
  *(a2 + 80) = v24;
  v25 = v85;
  *(a2 + 96) = v84;
  *(a2 + 112) = v25;
  v26 = v79;
  *a2 = v78;
  *(a2 + 16) = v26;
  result = v81;
  *(a2 + 32) = v80;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1000A4564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v10 = static HierarchicalShapeStyle.primary.getter();
  type metadata accessor for CircularProgressViewStyle(0);
  sub_100009F70(&qword_10021CD40, &unk_1001B3A70);
  ScaledMetric.wrappedValue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = static Alignment.center.getter();
  v8 = v7;
  v11 = *a1;
  v12 = Color.opacity(_:)();
  ScaledMetric.wrappedValue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v22[0] = v19;
  v22[1] = v20;
  *&v23 = v21;
  DWORD2(v23) = v10;
  WORD6(v23) = 256;
  *&v24 = v6;
  *(&v24 + 1) = v8;
  v13 = v23;
  v14 = v24;
  *(&v26 + 1) = a3;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = v11;
  *&v15[56] = v18;
  *(a2 + 128) = v11;
  v25 = v12;
  *&v26 = 0;
  *v15 = v12;
  *&v15[40] = v17;
  *&v15[24] = v27;
  *&v15[8] = v26;
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 96) = *&v15[32];
  *(a2 + 112) = *&v15[48];
  *(a2 + 64) = *v15;
  *(a2 + 80) = *&v15[16];
  v31[0] = 0;
  *&v31[1] = a3;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v11;

  sub_10000D58C(v22, v36, &qword_10021CE40, &qword_1001B3B40);
  sub_10000D58C(&v26, v36, &qword_10021CE48, &qword_1001B3B48);
  sub_10000D52C(v31, &qword_10021CE48, &qword_1001B3B48);
  v36[0] = v19;
  v36[1] = v20;
  v37 = v21;
  v38 = v10;
  v39 = 256;
  v40 = v6;
  v41 = v8;
  v42 = v12;
  return sub_10000D52C(v36, &qword_10021CE40, &qword_1001B3B40);
}

uint64_t sub_1000A47EC(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_1000A48B4@<X0>(uint64_t a1@<X8>)
{
  sub_1000A4298(v1, v16);
  sub_100009F70(&qword_10021CDE8, &qword_1001B3AD8);
  sub_1000A4A14();
  _ContainerRoundedRectangularShapeModifier.init(shape:)();
  v3 = v16[13];
  *(a1 + 192) = v16[12];
  *(a1 + 208) = v3;
  *(a1 + 224) = v17;
  v4 = v16[9];
  *(a1 + 128) = v16[8];
  *(a1 + 144) = v4;
  v5 = v16[11];
  *(a1 + 160) = v16[10];
  *(a1 + 176) = v5;
  v6 = v16[5];
  *(a1 + 64) = v16[4];
  *(a1 + 80) = v6;
  v7 = v16[7];
  *(a1 + 96) = v16[6];
  *(a1 + 112) = v7;
  v8 = v16[1];
  *a1 = v16[0];
  *(a1 + 16) = v8;
  v9 = v16[3];
  *(a1 + 32) = v16[2];
  *(a1 + 48) = v9;
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(sub_100009F70(&qword_10021CDF8, &qword_1001B3B10) + 36));
  v12 = *(sub_100009F70(&qword_10021CE00, &qword_1001B3B18) + 28);
  v13 = enum case for LayoutDirection.leftToRight(_:);
  v14 = type metadata accessor for LayoutDirection();
  result = (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  return result;
}

unint64_t sub_1000A4A14()
{
  result = qword_10021CDF0;
  if (!qword_10021CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CDF0);
  }

  return result;
}

unint64_t sub_1000A4A9C()
{
  result = qword_10021CE10;
  if (!qword_10021CE10)
  {
    sub_10000B3DC(&qword_10021CE08, &qword_1001B3B20);
    sub_1000A4B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE10);
  }

  return result;
}

unint64_t sub_1000A4B28()
{
  result = qword_10021CE18;
  if (!qword_10021CE18)
  {
    sub_10000B3DC(&qword_10021CE20, &qword_1001B3B28);
    sub_10000D1EC(&qword_10021CE28, &qword_10021CE30, &qword_1001B3B30, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE18);
  }

  return result;
}

unint64_t sub_1000A4BEC()
{
  result = qword_10021CE50;
  if (!qword_10021CE50)
  {
    sub_10000B3DC(&qword_10021CDF8, &qword_1001B3B10);
    sub_1000A4CA4();
    sub_10000D1EC(&qword_10021CE90, &qword_10021CE00, &qword_1001B3B18, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE50);
  }

  return result;
}

unint64_t sub_1000A4CA4()
{
  result = qword_10021CE58;
  if (!qword_10021CE58)
  {
    sub_10000B3DC(&qword_10021CDE8, &qword_1001B3AD8);
    sub_1000A4D5C();
    sub_10000D1EC(&qword_10021CE80, &qword_10021CE88, &unk_1001B3B60, &protocol conformance descriptor for _ContainerRoundedRectangularShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE58);
  }

  return result;
}

unint64_t sub_1000A4D5C()
{
  result = qword_10021CE60;
  if (!qword_10021CE60)
  {
    sub_10000B3DC(&qword_10021CE68, &qword_1001B3B50);
    sub_1000A4DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE60);
  }

  return result;
}

unint64_t sub_1000A4DE0()
{
  result = qword_10021CE70;
  if (!qword_10021CE70)
  {
    sub_10000B3DC(&qword_10021CE78, &qword_1001B3B58);
    sub_1000A4A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CE70);
  }

  return result;
}

uint64_t sub_1000A4EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1000A4F44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000A4F58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000A4FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000A5044@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_100009F70(&qword_10021CEE0, &qword_1001B3C88);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v66 - v5;
  v7 = *v2;
  v85 = v2[1];
  v86 = v7;

  v8 = LocalizedStringKey.init(stringLiteral:)();
  v83 = v9;
  v84 = v8;
  v11 = v10;
  v82 = v12;
  v13 = LocalizedStringKey.init(stringLiteral:)();
  v80 = v14;
  v81 = v13;
  v16 = v15;
  v79 = v17;
  type metadata accessor for CGSize(0);
  v102 = 0uLL;
  State.init(wrappedValue:)();
  v73 = *(&v91 + 1);
  v74 = v91;
  v78 = v92;
  static Alignment.center.getter();
  v76 = v11 & 1;
  v77 = v16 & 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v75 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v71 = v19;
  v72 = v18;
  v69 = v21;
  v70 = v20;
  v104 = 0;
  v68 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v105 = 0;
  v67 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v106 = 0;
  v38 = static Alignment.center.getter();
  v66 = v39;
  v40 = &v6[*(v4 + 44)];
  v41 = static Alignment.bottom.getter();
  v43 = v42;
  sub_1000A54A4(v2, &v102);
  v98 = v102;
  v99[0] = *v103;
  *(v99 + 10) = *&v103[10];
  v100 = v102;
  v101[0] = *v103;
  *(v101 + 10) = *&v103[10];
  sub_1000A5664(&v98, &v88);
  sub_10000D52C(&v100, &qword_10021CEE8, &qword_1001B3C90);
  v89 = v98;
  v90[0] = v99[0];
  *(v90 + 10) = *(v99 + 10);
  *&v88 = v41;
  *(&v88 + 1) = v43;
  sub_100009F70(&qword_10021CEF0, &qword_1001B3C98);
  sub_10000D1EC(&qword_10021CEF8, &qword_10021CEF0, &qword_1001B3C98, &protocol conformance descriptor for ZStack<A>);
  View.accessibilityHidden(_:)();
  v102 = v88;
  *v103 = v89;
  *&v103[16] = v90[0];
  *&v103[26] = *(v90 + 10);
  sub_10000D52C(&v102, &qword_10021CEF0, &qword_1001B3C98);
  v44 = &v40[*(sub_100009F70(&qword_10021CF00, &qword_1001B3CA0) + 36)];
  v45 = v66;
  *v44 = v38;
  v44[1] = v45;
  v46 = v73;
  *(v6 + 10) = v74;
  *(v6 + 11) = v46;
  v47 = v94;
  *(v6 + 136) = v93;
  v48 = v91;
  *(v6 + 120) = v92;
  *(v6 + 104) = v48;
  v49 = v96;
  *(v6 + 200) = v97;
  v50 = v95;
  *(v6 + 184) = v49;
  v51 = v83;
  *v6 = v84;
  *(v6 + 1) = v51;
  v6[16] = v76;
  v52 = v81;
  *(v6 + 3) = v82;
  *(v6 + 4) = v52;
  *(v6 + 5) = v80;
  v6[48] = v77;
  v53 = v85;
  v54 = v86;
  *(v6 + 7) = v79;
  *(v6 + 8) = v54;
  *(v6 + 9) = v53;
  *(v6 + 12) = v78;
  *(v6 + 168) = v50;
  *(v6 + 152) = v47;
  v6[216] = v75;
  *&v49 = v71;
  *(v6 + 28) = v72;
  *(v6 + 29) = v49;
  *&v49 = v69;
  *(v6 + 30) = v70;
  *(v6 + 31) = v49;
  v6[256] = 0;
  LOBYTE(v53) = v67;
  v6[264] = v68;
  *(v6 + 34) = v23;
  *(v6 + 35) = v25;
  *(v6 + 36) = v27;
  *(v6 + 37) = v29;
  v6[304] = 0;
  v6[312] = v53;
  *(v6 + 40) = v31;
  *(v6 + 41) = v33;
  *(v6 + 42) = v35;
  *(v6 + 43) = v37;
  v6[352] = 0;
  LOBYTE(v41) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v87;
  sub_1000A56D4(v6, v87);
  result = sub_100009F70(&qword_10021CF08, &qword_1001B3CA8);
  v65 = v63 + *(result + 36);
  *v65 = v41;
  *(v65 + 8) = v56;
  *(v65 + 16) = v58;
  *(v65 + 24) = v60;
  *(v65 + 32) = v62;
  *(v65 + 40) = 0;
  return result;
}

uint64_t sub_1000A54A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = v8;
    v10 = Color.init(cgColor:)();
  }

  else
  {
    v10 = static Color.blue.getter();
  }

  v11 = v10;
  Image.init(_:bundle:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v12 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v11;
  *(a2 + 8) = 256;
  *(a2 + 16) = 16;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 257;
  return result;
}

uint64_t sub_1000A5664(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021CEE8, &qword_1001B3C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A56D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021CEE0, &qword_1001B3C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A5748()
{
  result = qword_10021CF10;
  if (!qword_10021CF10)
  {
    sub_10000B3DC(&qword_10021CF08, &qword_1001B3CA8);
    sub_1000A57D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF10);
  }

  return result;
}

unint64_t sub_1000A57D4()
{
  result = qword_10021CF18;
  if (!qword_10021CF18)
  {
    sub_10000B3DC(&qword_10021CEE0, &qword_1001B3C88);
    sub_1000A588C();
    sub_10000D1EC(&qword_10021CF68, &qword_10021CF00, &qword_1001B3CA0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF18);
  }

  return result;
}

unint64_t sub_1000A588C()
{
  result = qword_10021CF20;
  if (!qword_10021CF20)
  {
    sub_10000B3DC(&qword_10021CF28, &qword_1001B3CB0);
    sub_1000A5918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF20);
  }

  return result;
}

unint64_t sub_1000A5918()
{
  result = qword_10021CF30;
  if (!qword_10021CF30)
  {
    sub_10000B3DC(&qword_10021CF38, &qword_1001B3CB8);
    sub_1000A59A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF30);
  }

  return result;
}

unint64_t sub_1000A59A4()
{
  result = qword_10021CF40;
  if (!qword_10021CF40)
  {
    sub_10000B3DC(&qword_10021CF48, &qword_1001B3CC0);
    sub_1000A5A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF40);
  }

  return result;
}

unint64_t sub_1000A5A30()
{
  result = qword_10021CF50;
  if (!qword_10021CF50)
  {
    sub_10000B3DC(&qword_10021CF58, &qword_1001B3CC8);
    sub_1000A5ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF50);
  }

  return result;
}

unint64_t sub_1000A5ABC()
{
  result = qword_10021CF60;
  if (!qword_10021CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF60);
  }

  return result;
}

uint64_t sub_1000A5B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TimeZone();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A5C28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TimeZone();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for DesignTimeTime(uint64_t a1)
{
  result = qword_10021CFC8;
  if (!qword_10021CFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A5D70(uint64_t a1)
{
  result = type metadata accessor for DateInterval();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimeZone();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A5DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000A5E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for TimeZone();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_1000A5ED0()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  sub_1000A6280(&qword_10021D010, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1000A6280(&qword_10021D018, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000A5FBC(uint64_t a1)
{
  type metadata accessor for DateInterval();
  sub_1000A6280(&qword_10021D010, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1000A6280(&qword_10021D018, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000A6090()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  sub_1000A6280(&qword_10021D010, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1000A6280(&qword_10021D018, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000A6178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static DateInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static TimeZone.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_1000A6228(uint64_t a1)
{
  result = sub_1000A6280(&qword_10021D008, type metadata accessor for DesignTimeTime, &unk_1001B3D08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000A6280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A62C8(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000A637C()
{
  sub_1000A6D08();
}

uint64_t sub_1000A63A4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[4];
  v10[6] = a1;
  v10[7] = v5;
  type metadata accessor for Array();
  v10[5] = *(*(*(v4 + 88) + 8) + 8);
  swift_getWitnessTable();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    v2[4] = a1;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v10[2] = v2;
    v10[3] = a1;
    sub_1000A65B0(v9, sub_1000A6DFC, v10, &type metadata for () + 8);
  }
}

uint64_t sub_1000A6678()
{
  KeyPath = swift_getKeyPath();
  sub_1000A6520(KeyPath);

  return *(v0 + 40);
}

double sub_1000A66EC(char a1)
{
  v2 = *v1;
  v12 = *(v1 + 40);
  v3 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + 40) = v3;
  }

  else
  {
    __chkstk_darwin(v4);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v3;
    sub_1000A65B0(v7, sub_1000A6EF4, v8, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_1000A6830()
{
  sub_1000A688C();

  return LocalizedStringKey.init(stringLiteral:)();
}

BOOL sub_1000A688C()
{
  sub_1000A6D08();

  v0 = Array.count.getter();

  return v0 > 1;
}

BOOL sub_1000A68F0()
{
  sub_1000A6D08();

  v0 = Array.count.getter();

  return v0 == 1;
}

uint64_t sub_1000A6954(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

void sub_1000A69C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 15;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = xmmword_1001B3D70;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001666DC(1, 5, 1, inited);
  v12 = v8;
  sub_1000109BC(&aBlock, v19);
  sub_1000EB0D0(4, v19, &v12, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001BDDE0;
  v10[4] = v8;
  v17 = sub_100010AAC;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000DCA40;
  v16 = &unk_10020D748;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_1000A6C28()
{

  v1 = qword_10021D020;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000A6C98()
{
  sub_1000A6C28();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A6D08()
{
  KeyPath = swift_getKeyPath();
  sub_1000A6520(KeyPath);

  return *(v0 + 32);
}

uint64_t sub_1000A6D7C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000A6D08();
}

__n128 sub_1000A6DF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000A6DFC()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_1000A6E38()
{

  return swift_deallocObject();
}

uint64_t sub_1000A6E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A6E90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A6678();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A6F08@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v6 = v2;
  sub_1000A88D8(&qword_10021B990, type metadata accessor for ArtistController, &unk_1001B3EE8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC15ShazamEventsApp16ArtistController__state;
  swift_beginAccess();
  return sub_100080978(v6 + v4, a2);
}

uint64_t sub_1000A6FD0(uint64_t a1, uint64_t a2)
{
  v3[197] = v2;
  v3[191] = a2;
  v3[185] = a1;
  v3[198] = sub_100009F70(&unk_10021D210, &qword_1001B3EE0);
  v3[199] = swift_task_alloc();
  v4 = sub_100009F70(&qword_100219FE8, &unk_1001B0DB0);
  v3[200] = v4;
  v3[201] = *(v4 - 8);
  v3[202] = swift_task_alloc();
  v3[203] = type metadata accessor for ArtistController.State(0);
  v3[204] = swift_task_alloc();
  v3[205] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[206] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[207] = v6;
  v3[208] = v5;

  return _swift_task_switch(sub_1000A7154, v6, v5);
}

uint64_t sub_1000A7154()
{
  v1 = v0[205];
  v2 = v0[197];
  v3 = v0[191];
  v4 = v0[185];
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v0[209] = OBJC_IVAR____TtC15ShazamEventsApp16ArtistController___observationRegistrar;
  v0[167] = v2;
  v0[210] = sub_1000A88D8(&qword_10021B990, type metadata accessor for ArtistController, &unk_1001B3EE8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000816D0(v1);
  v6 = swift_allocObject();
  v0[211] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;

  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v8 = swift_allocObject();
  v0[212] = v8;
  *(v8 + 16) = &unk_1001B3F50;
  *(v8 + 24) = v7;

  swift_asyncLet_begin();
  v9 = v0[202];

  return _swift_asyncLet_get_throwing(v0 + 2, v9, sub_1000A73B4, v0 + 162);
}

uint64_t sub_1000A73B4()
{
  *(v1 + 1704) = v0;
  if (v0)
  {
    v2 = *(v1 + 1664);
    v3 = *(v1 + 1656);

    return _swift_task_switch(sub_1000A7704, v3, v2);
  }

  else
  {
    v4 = *(v1 + 1632);
    v5 = *(v1 + 1616);
    v6 = *(v1 + 1608);
    v7 = *(v1 + 1600);
    *(v1 + 1712) = *(sub_100009F70(&qword_10021B998, &qword_1001B17D0) + 48);
    (*(v6 + 16))(v4, v5, v7);

    return _swift_asyncLet_get(v1 + 656);
  }
}

uint64_t sub_1000A74C8()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1576);
  sub_1000A8868(*(v0 + 1592), v1 + *(v0 + 1712));
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 1432) = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000816D0(v1);

  return _swift_asyncLet_finish(v0 + 656, v4);
}

uint64_t sub_1000A7650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A777C()
{
  v1 = v0[213];
  v2 = v0[205];
  v3 = v0[197];

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[173] = v3;
  swift_errorRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000816D0(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000A78F4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15ShazamEventsApp16ArtistController__state;
  swift_beginAccess();
  sub_1000A8920(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1000A7960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_100009F70(&qword_10021B370, &qword_1001B3F70);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000A7A30, 0, 0);
}

uint64_t sub_1000A7A30()
{
  v1 = type metadata accessor for Music();
  v2 = sub_1000A88D8(&qword_10021B378, &type metadata accessor for Music, &protocol conformance descriptor for Music);
  static EventService.RequestType<>.music.getter();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1000A7B50;
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return EventService.schedule<A>(participantIdentifier:ofType:)(v7, v5, v6, v4, v1, v2);
}

uint64_t sub_1000A7B50()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(v5 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1000A7CF8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000A7CF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A7D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  type metadata accessor for AppleMusicFetcher();
  v4[3] = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1000A7E34;

  return sub_10018482C(a1, a3, a4);
}

uint64_t sub_1000A7E34()
{

  if (v0)
  {

    v1 = sub_1000A7FF0;
  }

  else
  {

    v1 = sub_1000A7F54;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000A7F54()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Artist();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000A7FF0()
{

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Artist();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000A8094(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000A818C;

  return v6(a1);
}

uint64_t sub_1000A818C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000A8284()
{
  sub_1000816D0(v0 + OBJC_IVAR____TtC15ShazamEventsApp16ArtistController__state);
  v1 = OBJC_IVAR____TtC15ShazamEventsApp16ArtistController_service;
  v2 = type metadata accessor for EventService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15ShazamEventsApp16ArtistController___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1000A8398(uint64_t a1)
{
  result = type metadata accessor for ArtistController.State(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EventService();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1000A84C8(uint64_t a1)
{
  sub_10009FE14();
  if (v1 <= 0x3F)
  {
    sub_1000A853C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000A853C(uint64_t a1)
{
  if (!qword_10021D208)
  {
    sub_10000B3DC(&qword_100219FE8, &unk_1001B0DB0);
    sub_10000B3DC(&unk_10021D210, &qword_1001B3EE0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10021D208);
    }
  }
}

uint64_t sub_1000A85D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D890;

  return sub_1000A7960(a1, v4, v5, v6);
}

uint64_t sub_1000A8684()
{

  return swift_deallocObject();
}

uint64_t sub_1000A86C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D890;

  return sub_1000A7D5C(a1, v4, v5, v6);
}

uint64_t sub_1000A8778()
{

  return swift_deallocObject();
}

uint64_t sub_1000A87B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000214E4;

  return sub_1000A8094(a1, v4);
}

uint64_t sub_1000A8868(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&unk_10021D210, &qword_1001B3EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A88D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A8920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistController.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A89F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v12 = *(v11 + 88);
  v20[0] = *(v11 + 80);
  v20[1] = a4;
  v20[2] = v12;
  v20[3] = a5;
  v13 = type metadata accessor for HeaderModule(0, v20);
  v14 = (a6 + v13[13]);
  *v14 = a2;
  v14[1] = a3;
  v15 = v13[14];
  *(a6 + v15) = swift_getKeyPath();
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  swift_storeEnumTagMultiPayload();
  v16 = v13[15];
  *(a6 + v16) = swift_getKeyPath();
  sub_100009F70(&qword_100219720, &qword_1001B23D0);
  swift_storeEnumTagMultiPayload();
  v17 = (a6 + v13[16]);
  type metadata accessor for RemoteViewConfiguration();
  sub_1000B0EDC(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.init()();
  *v17 = result;
  v17[1] = v19;
  return result;
}

double sub_1000A8C04()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 281.0;
  if (v1 == 1)
  {
    return 380.0;
  }

  return result;
}

void sub_1000A8D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeaderViewModel(255, *(a1 + 16), *(a1 + 32), a4);
  type metadata accessor for Bindable();
  if (v4 <= 0x3F)
  {
    sub_100018E0C();
    if (v5 <= 0x3F)
    {
      sub_1000A91D8(319, &qword_100218D70, &type metadata accessor for OpenURLAction);
      if (v6 <= 0x3F)
      {
        sub_1000A91D8(319, &qword_10021BD18, &type metadata accessor for ContentSizeCategory);
        if (v7 <= 0x3F)
        {
          sub_10000B304(319);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000A8E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeaderViewModel(255, *(a3 + 16), *(a3 + 32), a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_3:

    return v10(v11, a2, v9);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + *(a3 + 52));
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = *(v15 + 48);
      v11 = a1 + *(a3 + 56);
      goto LABEL_3;
    }

    v16 = sub_100009F70(&qword_10021BCA8, &qword_1001B2338);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 60);

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1000A9038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for HeaderViewModel(255, *(a4 + 16), *(a4 + 32), a4);
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
    return result;
  }

  v13 = sub_100009F70(&qword_100218D00, &unk_1001AD7D0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 56);
    goto LABEL_3;
  }

  v15 = sub_100009F70(&qword_10021BCA8, &qword_1001B2338);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + *(a4 + 60);

  return v16(v17, a2, a2, v15);
}

void sub_1000A91D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000A9270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeaderViewModel(255, *(a1 + 16), *(a1 + 32), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_1000A92B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeaderViewModel(255, *(a1 + 16), *(a1 + 32), a4);
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_1000A9304@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v95 = type metadata accessor for TaskPriority();
  v94 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v93 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(a1 - 1);
  v99 = v91[8];
  __chkstk_darwin(v3);
  v101 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = "troller";
  v6 = a1[2];
  v7 = a1[4];
  type metadata accessor for HeaderViewModel(255, v6, v7, v8);
  v97 = type metadata accessor for Bindable();
  v90 = *(v97 - 1);
  __chkstk_darwin(v97);
  v74 = &v68 - v9;
  v89 = a1;
  *&v103 = a1[3];
  v10 = a1[5];
  v111 = v103;
  v112 = v10;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021D2C8, &qword_1001B4048);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for ZStack();
  WitnessTable = swift_getWitnessTable();
  v111 = v11;
  v112 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021D2D0, &qword_1001B4050);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10000B3DC(&qword_10021D2D8, &qword_1001B4058);
  sub_10000B3DC(&qword_10021D2E0, &qword_1001B4060);
  swift_getTupleTypeMetadata3();
  v76 = type metadata accessor for TupleView();
  v75 = swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v88 = *(v13 - 8);
  __chkstk_darwin(v13);
  v69 = &v68 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v111 = AssociatedTypeWitness;
  v112 = v16;
  v113 = AssociatedConformanceWitness;
  v114 = v18;
  v19 = type metadata accessor for TicketView(255, &v111);
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v111 = v13;
  v112 = v19;
  v73 = v13;
  v70 = v19;
  v113 = v20;
  v114 = v21;
  v22 = v20;
  v72 = v20;
  v71 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = OpaqueTypeMetadata2;
  v84 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v98 = &v68 - v24;
  v111 = v13;
  v112 = v19;
  v113 = v22;
  v114 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = OpaqueTypeMetadata2;
  v112 = OpaqueTypeConformance2;
  v83 = &unk_1001C2954;
  v81 = swift_getOpaqueTypeMetadata2();
  v86 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v68 - v25;
  v85 = type metadata accessor for ModifiedContent();
  v87 = *(v85 - 8);
  v26 = __chkstk_darwin(v85);
  v80 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v82 = &v68 - v28;
  static HorizontalAlignment.center.getter();
  *&v29 = v6;
  *(&v29 + 1) = v103;
  *&v30 = v7;
  *(&v30 + 1) = v10;
  v102 = v30;
  v103 = v29;
  v106 = v29;
  v107 = v30;
  v31 = v100;
  v108 = v100;
  VStack.init(alignment:spacing:content:)();
  v32 = v74;
  v33 = v89;
  sub_1000A92B4(v89, v34, v35, v36);
  v104 = v103;
  v105 = v102;
  swift_getKeyPath();
  v37 = v97;
  Bindable<A>.subscript.getter();

  (*(v90 + 8))(v32, v37);
  LODWORD(v76) = v113;
  v38 = v91;
  v97 = v91[2];
  v39 = v101;
  (v97)(v101, v31, v33);
  v40 = *(v38 + 80);
  v90 = (v40 + 48) & ~v40;
  v41 = swift_allocObject();
  v42 = v102;
  *(v41 + 16) = v103;
  *(v41 + 32) = v42;
  v43 = v38[4];
  v43(v41 + ((v40 + 48) & ~v40), v39, v33);
  v44 = v43;
  v91 = v43;
  swift_checkMetadataState();
  v45 = v73;
  v46 = v69;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v88 + 8))(v46, v45);
  v47 = v101;
  (v97)(v101, v100, v33);
  type metadata accessor for MainActor();
  v48 = static MainActor.shared.getter();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = &protocol witness table for MainActor;
  v50 = v102;
  *(v49 + 32) = v103;
  *(v49 + 48) = v50;
  v44(v49 + ((v40 + 64) & ~v40), v47, v33);
  v51 = v93;
  v52 = v79;
  v53 = OpaqueTypeConformance2;
  j___sScP13userInitiatedScPvgZ();
  v54 = v77;
  v55 = v49;
  v56 = v98;
  sub_100009FB8(0, v51, 0xD000000000000022, (v92 | 0x8000000000000000), 131, &unk_1001B40A8, v55, v77, v52, v53);
  (*(v94 + 8))(v51, v95);
  (*(v84 + 8))(v56, v52);
  v57 = v101;
  (v97)(v101, v100, v33);
  v58 = v90;
  v59 = swift_allocObject();
  v60 = v102;
  *(v59 + 16) = v103;
  *(v59 + 32) = v60;
  (v91)(v59 + v58, v57, v33);
  v111 = v52;
  v112 = v53;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v80;
  v63 = v81;
  View.onDisappear(perform:)();

  (*(v86 + 8))(v54, v63);
  v109 = v61;
  v110 = &protocol witness table for _AppearanceActionModifier;
  v64 = v85;
  swift_getWitnessTable();
  v65 = v82;
  sub_100157EFC();
  v66 = *(v87 + 8);
  v66(v62, v64);
  sub_100157EFC();
  return (v66)(v65, v64);
}

uint64_t sub_1000A9FE8@<X0>(void (*a1)(void, void)@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a4;
  v126 = a1;
  v120 = a6;
  v90 = sub_100009F70(&qword_10021D2E8, &qword_1001B40B0);
  __chkstk_darwin(v90);
  v88 = (&v87 - v9);
  v93 = sub_100009F70(&qword_10021D2F0, &qword_1001B40B8);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v87 - v10;
  v124 = sub_100009F70(&qword_10021D2F8, &qword_1001B40C0);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v89 = &v87 - v11;
  v118 = sub_100009F70(&qword_10021D2E0, &qword_1001B4060);
  v12 = __chkstk_darwin(v118);
  v119 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v125 = &v87 - v14;
  v110 = type metadata accessor for AccessibilityTraits();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v106 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for AccessibilityChildBehavior();
  v130 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100009F70(&qword_10021D300, &qword_1001B40C8);
  __chkstk_darwin(v103);
  v100 = (&v87 - v17);
  v104 = sub_100009F70(&qword_10021D308, &qword_1001B40D0);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v87 - v18;
  v129 = sub_100009F70(&qword_10021D310, &qword_1001B40D8);
  __chkstk_darwin(v129);
  v102 = &v87 - v19;
  v117 = sub_100009F70(&qword_10021D2D8, &qword_1001B4058);
  v116 = *(v117 - 8);
  v20 = __chkstk_darwin(v117);
  v115 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v128 = &v87 - v22;
  v146 = a3;
  v147 = a5;
  v94 = a5;
  v97 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021D2C8, &qword_1001B4048);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v98 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  v23 = type metadata accessor for ZStack();
  v114 = &protocol conformance descriptor for ZStack<A>;
  WitnessTable = swift_getWitnessTable();
  v146 = v23;
  v147 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021D2D0, &qword_1001B4050);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v25 = type metadata accessor for ZStack();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v87 - v30;
  static Alignment.bottomTrailing.getter();
  v32 = a2;
  v95 = a2;
  v136 = a2;
  v137 = a3;
  v33 = a3;
  v96 = a3;
  v34 = v99;
  v138 = v99;
  v139 = a5;
  v35 = v126;
  v140 = v126;
  ZStack.init(alignment:content:)();
  v36 = swift_getWitnessTable();
  v113 = v31;
  v107 = v36;
  sub_100157EFC();
  v108 = v26;
  v37 = *(v26 + 8);
  v127 = v29;
  v114 = v25;
  v112 = v26 + 8;
  v111 = v37;
  v37(v29, v25);
  v38 = static HorizontalAlignment.center.getter();
  v39 = v100;
  *v100 = v38;
  *(v39 + 8) = 0x4008000000000000;
  *(v39 + 16) = 0;
  v40 = sub_100009F70(&qword_10021D318, &qword_1001B40E0);
  v41 = v94;
  sub_1000AC728(v35, v32, v33, v34, v94, v39 + *(v40 + 44));
  v42 = v121;
  static AccessibilityChildBehavior.combine.getter();
  v43 = sub_10000D1EC(&qword_10021D320, &qword_10021D300, &qword_1001B40C8, &protocol conformance descriptor for VStack<A>);
  v44 = v101;
  v45 = v103;
  View.accessibilityElement(children:)();
  v46 = v130[1];
  ++v130;
  v87 = v46;
  v46(v42, v122);
  sub_10000D52C(v39, &qword_10021D300, &qword_1001B40C8);
  v47 = v106;
  static AccessibilityTraits.isHeader.getter();
  v146 = v45;
  v147 = v43;
  v48 = v41;
  swift_getOpaqueTypeConformance2();
  v49 = v102;
  v50 = v104;
  View.accessibilityAddTraits(_:)();
  (*(v109 + 8))(v47, v110);
  (*(v105 + 8))(v44, v50);
  v51 = v95;
  v131 = v95;
  v52 = v96;
  v132 = v96;
  v133 = v34;
  v134 = v48;
  v53 = v126;
  v135 = v126;
  v54 = sub_100009F70(&qword_10021D328, &qword_1001B40E8);
  v55 = sub_1000AF82C();
  v56 = sub_10000D1EC(&qword_10021D338, &qword_10021D328, &qword_1001B40E8, v98);
  v110 = v54;
  v109 = v55;
  v106 = v56;
  View.accessibilityLabel<A>(content:)();
  sub_10000D52C(v49, &qword_10021D310, &qword_1001B40D8);
  v57 = v51;
  v146 = v51;
  v147 = v52;
  v58 = v34;
  v148 = v34;
  v149 = v48;
  v59 = type metadata accessor for HeaderModule(0, &v146);
  v60 = v53;
  sub_1000A9270(v59, v61, v62, v63);
  LOBYTE(v54) = sub_10007AD44();

  v64 = 1;
  if (v54)
  {
    v65 = static HorizontalAlignment.center.getter();
    v66 = v88;
    *v88 = v65;
    *(v66 + 8) = 0x4020000000000000;
    *(v66 + 16) = 0;
    v67 = sub_100009F70(&qword_10021D360, &qword_1001B40F8);
    sub_1000AD16C(v53, v51, v52, v34, v48, v66 + *(v67 + 44));
    v68 = v121;
    static AccessibilityChildBehavior.combine.getter();
    v69 = sub_10000D1EC(&qword_10021D350, &qword_10021D2E8, &qword_1001B40B0, &protocol conformance descriptor for VStack<A>);
    v70 = v91;
    v71 = v90;
    View.accessibilityElement(children:)();
    v87(v68, v122);
    v72 = sub_10000D52C(v66, &qword_10021D2E8, &qword_1001B40B0);
    v130 = &v87;
    __chkstk_darwin(v72);
    *(&v87 - 6) = v57;
    *(&v87 - 5) = v52;
    *(&v87 - 4) = v58;
    *(&v87 - 3) = v48;
    *(&v87 - 2) = v60;
    sub_100009F70(&qword_10021D348, &qword_1001B40F0);
    v146 = v71;
    v147 = v69;
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021D358, &qword_10021D348, &qword_1001B40F0, &protocol conformance descriptor for TupleView<A>);
    v73 = v89;
    v74 = v93;
    View.accessibilityLabel<A>(content:)();
    (*(v92 + 8))(v70, v74);
    (*(v123 + 32))(v125, v73, v124);
    v64 = 0;
  }

  v75 = v125;
  (*(v123 + 56))(v125, v64, 1, v124);
  v76 = v127;
  v77 = v113;
  v78 = v114;
  (*(v108 + 16))(v127, v113, v114);
  v145[0] = v76;
  v79 = v116;
  v80 = v115;
  v81 = v128;
  v82 = v117;
  (*(v116 + 16))(v115, v128, v117);
  v145[1] = v80;
  v83 = v119;
  sub_10000D58C(v75, v119, &qword_10021D2E0, &qword_1001B4060);
  v144[0] = v78;
  v144[1] = v82;
  v144[2] = v118;
  v141 = v107;
  v145[2] = v83;
  v146 = v129;
  v147 = v110;
  v148 = v109;
  v149 = v106;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v143 = sub_1000AF958();
  sub_100151024(v145, 3uLL, v144);
  sub_10000D52C(v75, &qword_10021D2E0, &qword_1001B4060);
  v84 = *(v79 + 8);
  v84(v81, v82);
  v85 = v111;
  v111(v77, v78);
  sub_10000D52C(v83, &qword_10021D2E0, &qword_1001B4060);
  v84(v80, v82);
  return v85(v127, v78);
}

uint64_t sub_1000AAF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v132 = a4;
  v130 = a2;
  v119 = a1;
  v129 = a6;
  v145 = a2;
  v146 = a3;
  *&v131 = a3;
  v147 = a4;
  v148 = a5;
  v135 = type metadata accessor for HeaderModule(0, &v145);
  v113 = *(v135 - 8);
  v110[1] = *(v113 + 64);
  __chkstk_darwin(v135);
  v111 = v110 - v8;
  v112 = type metadata accessor for PlayButtonView(0);
  __chkstk_darwin(v112);
  v115 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100009F70(&qword_10021D418, &qword_1001B41D0);
  __chkstk_darwin(v125);
  v116 = v110 - v10;
  v134 = sub_100009F70(&qword_10021D420, &qword_1001B41D8);
  v127 = *(v134 - 8);
  v11 = __chkstk_darwin(v134);
  v118 = v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v117 = v110 - v13;
  v126 = sub_100009F70(&qword_10021D2D0, &qword_1001B4050);
  v14 = __chkstk_darwin(v126);
  v128 = v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v133 = v110 - v16;
  v124 = type metadata accessor for AccessibilityChildBehavior();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v18 = v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = a3;
  v146 = a5;
  v121 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021D2C8, &qword_1001B4048);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for ZStack();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v110 - v21;
  v23 = swift_getWitnessTable();
  v145 = v19;
  v146 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v136 = *(OpaqueTypeMetadata2 - 8);
  v25 = __chkstk_darwin(OpaqueTypeMetadata2);
  v27 = (v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v29 = v110 - v28;
  static Alignment.topLeading.getter();
  v137 = v130;
  v138 = v131;
  v139 = v132;
  v140 = a5;
  v114 = a5;
  v30 = v119;
  v141 = v119;
  v31 = v134;
  ZStack.init(alignment:content:)();
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  v123[1](v18, v124);
  (*(v20 + 8))(v22, v19);
  v145 = v19;
  v146 = v23;
  v32 = v133;
  v33 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = v29;
  v120 = OpaqueTypeConformance2;
  sub_100157EFC();
  v36 = v136 + 8;
  v35 = *(v136 + 8);
  v123 = v27;
  v124 = OpaqueTypeMetadata2;
  v121 = v35;
  v35(v27, OpaqueTypeMetadata2);
  sub_1000A9270(v135, v37, v38, v39);
  LOBYTE(v18) = sub_10007B0DC();

  if (v18)
  {
    v43 = v135;
    sub_1000A9270(v135, v40, v41, v42);
    v44 = sub_10007B138();

    v45 = v113;
    v46 = v111;
    (*(v113 + 16))(v111, v30, v43);
    v47 = (*(v45 + 80) + 48) & ~*(v45 + 80);
    v48 = swift_allocObject();
    v49 = v131;
    *(v48 + 2) = v130;
    *(v48 + 3) = v49;
    v50 = v114;
    *(v48 + 4) = v132;
    *(v48 + 5) = v50;
    (*(v45 + 32))(&v48[v47], v46, v43);
    v51 = v115;
    *v115 = v44;
    *(v51 + 8) = sub_1000B1130;
    *(v51 + 16) = v48;
    v52 = *(v112 + 20);
    *(v51 + v52) = swift_getKeyPath();
    sub_100009F70(&qword_100219728, &qword_1001AE678);
    swift_storeEnumTagMultiPayload();
    sub_100009F70(&qword_100218DC0, &qword_1001AD860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001ACB00;
    LOBYTE(v43) = static Edge.Set.bottom.getter();
    *(inited + 32) = v43;
    v54 = static Edge.Set.trailing.getter();
    *(inited + 33) = v54;
    v55 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v43)
    {
      v55 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v56 = Edge.Set.init(rawValue:)();
    v110[0] = v36;
    if (v56 != v54)
    {
      v55 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = v116;
    sub_1000B125C(v51, v116, type metadata accessor for PlayButtonView);
    v66 = v65 + *(v125 + 36);
    *v66 = v55;
    *(v66 + 8) = v58;
    *(v66 + 16) = v60;
    *(v66 + 24) = v62;
    *(v66 + 32) = v64;
    *(v66 + 40) = 0;
    v67 = v135;
    sub_1000A9270(v135, v68, v69, v70);

    v132 = sub_100009F70(&qword_100219EF8, &qword_1001AF310);
    v71 = swift_allocObject();
    v131 = xmmword_1001AEB90;
    *(v71 + 16) = xmmword_1001AEB90;
    sub_1000A9270(v67, v72, v73, v74);
    v75 = sub_10007AC24();
    v77 = v76;

    *(v71 + 56) = &type metadata for String;
    v130 = sub_100096600();
    *(v71 + 64) = v130;
    *(v71 + 32) = v75;
    *(v71 + 40) = v77;
    v78 = String.init(format:_:)();
    v80 = v79;

    v145 = v78;
    v146 = v80;
    sub_1000A9270(v67, v81, v82, v83);
    sub_10007B138();

    sub_1000B0E20();
    v115 = sub_100027068();
    v84 = v118;
    View.accessibilityLabel<A>(_:isEnabled:)();

    sub_10000D52C(v65, &qword_10021D418, &qword_1001B41D0);
    sub_1000A9270(v67, v85, v86, v87);

    v88 = swift_allocObject();
    *(v88 + 16) = v131;
    sub_1000A9270(v67, v89, v90, v91);
    v92 = sub_10007AC24();
    v94 = v93;

    v95 = v130;
    *(v88 + 56) = &type metadata for String;
    *(v88 + 64) = v95;
    *(v88 + 32) = v92;
    *(v88 + 40) = v94;
    v96 = String.init(format:_:)();
    v98 = v97;

    v145 = v96;
    v146 = v98;
    sub_1000A9270(v67, v99, v100, v101);
    sub_10007B138();

    v102 = v117;
    v31 = v134;
    ModifiedContent<>.accessibilityLabel<A>(_:isEnabled:)();

    sub_10000D52C(v84, &qword_10021D420, &qword_1001B41D8);
    v32 = v133;
    sub_10000F618(v102, v133, &qword_10021D420, &qword_1001B41D8);
    v33 = 0;
  }

  (*(v127 + 56))(v32, v33, 1, v31);
  v103 = v123;
  v104 = WitnessTable;
  v105 = v124;
  (*(v136 + 16))(v123, WitnessTable, v124);
  v145 = v103;
  v106 = v128;
  sub_10000D58C(v32, v128, &qword_10021D2D0, &qword_1001B4050);
  v146 = v106;
  v144[0] = v105;
  v144[1] = v126;
  v142 = v120;
  v143 = sub_1000B0CBC();
  sub_100151024(&v145, 2uLL, v144);
  sub_10000D52C(v32, &qword_10021D2D0, &qword_1001B4050);
  v107 = v104;
  v108 = v121;
  v121(v107, v105);
  sub_10000D52C(v106, &qword_10021D2D0, &qword_1001B4050);
  return v108(v103, v105);
}

uint64_t sub_1000ABC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  WitnessTable = a4;
  v85 = a6;
  v82 = sub_100009F70(&qword_10021D448, &qword_1001B4210);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v70 = &v68 - v10;
  v81 = sub_100009F70(&qword_10021D2C8, &qword_1001B4048);
  v11 = __chkstk_darwin(v81);
  v84 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v68 - v13;
  v79 = type metadata accessor for AccessibilityTraits();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for AccessibilityChildBehavior();
  v89 = *(v86 - 8);
  v15 = __chkstk_darwin(v86);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(a3 - 8);
  __chkstk_darwin(v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v93 = a3;
  *(&v93 + 1) = a5;
  v73 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v22 = &v68 - v21;
  type metadata accessor for AccessibilityAttachmentModifier();
  v72 = type metadata accessor for ModifiedContent();
  v87 = *(v72 - 8);
  v23 = __chkstk_darwin(v72);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v68 - v27;
  __chkstk_darwin(v26);
  v88 = &v68 - v29;
  *&v93 = a2;
  *(&v93 + 1) = a3;
  *&v94 = WitnessTable;
  *(&v94 + 1) = a5;
  v71 = type metadata accessor for HeaderModule(0, &v93);
  (*(a1 + *(v71 + 52)))();
  static AccessibilityChildBehavior.ignore.getter();
  View.accessibilityElement(children:)();
  v30 = *(v89 + 8);
  v69 = v17;
  v89 += 8;
  v68 = v30;
  v30(v17, v86);
  (*(v74 + 8))(v19, a3);
  v31 = v76;
  static AccessibilityTraits.isImage.getter();
  *&v93 = a3;
  *(&v93 + 1) = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v77 + 8))(v31, v79);
  (*(v75 + 8))(v22, OpaqueTypeMetadata2);
  v33 = v72;
  v34 = v71;
  sub_1000A9270(v71, v35, v36, v37);
  v38 = sub_10007AA74();
  v40 = v39;

  *&v93 = v38;
  *(&v93 + 1) = v40;
  sub_100027068();
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  v41 = *(v87 + 8);
  v41(v25, v33);
  v42 = sub_1000B0EDC(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v98 = OpaqueTypeConformance2;
  v99 = v42;
  WitnessTable = swift_getWitnessTable();
  sub_100157EFC();
  v79 = v28;
  v41(v28, v33);
  sub_1000A9270(v34, v43, v44, v45);
  LOBYTE(v40) = sub_10007A818();

  if (v40)
  {
    v49 = sub_1000A9270(v34, v46, v47, v48);
    v50 = (v49 + *(*v49 + 176));
    v51 = *v50;
    v52 = v50[1];

    v53 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v96) = 0;
    *&v90 = v51;
    *(&v90 + 1) = v52;
    LOBYTE(v91) = v53;
    *(&v91 + 1) = v54;
    *v92 = v55;
    *&v92[8] = v56;
    *&v92[16] = v57;
    v92[24] = 0;
    v58 = v69;
    static AccessibilityChildBehavior.ignore.getter();
    sub_100009F70(&qword_10021D458, &qword_1001B4218);
    sub_1000B18D8(&qword_10021D460, &qword_10021D458, &qword_1001B4218, sub_1000B13B8);
    v59 = v70;
    View.accessibilityElement(children:)();
    v68(v58, v86);
    v93 = v90;
    v94 = v91;
    *v95 = *v92;
    *&v95[9] = *&v92[9];
    sub_10000D52C(&v93, &qword_10021D458, &qword_1001B4218);
    v60 = v80;
    v61 = v83;
    v62 = v59;
    v63 = v82;
    (*(v80 + 32))(v83, v62, v82);
    (*(v60 + 56))(v61, 0, 1, v63);
  }

  else
  {
    v61 = v83;
    (*(v80 + 56))(v83, 1, 1, v82);
  }

  v64 = v79;
  v65 = v88;
  (*(v87 + 16))(v79, v88, v33);
  *&v93 = v64;
  v66 = v84;
  sub_10000D58C(v61, v84, &qword_10021D2C8, &qword_1001B4048);
  *(&v93 + 1) = v66;
  *&v90 = v33;
  *(&v90 + 1) = v81;
  v96 = WitnessTable;
  v97 = sub_1000B12C4();
  sub_100151024(&v93, 2uLL, &v90);
  sub_10000D52C(v61, &qword_10021D2C8, &qword_1001B4048);
  v41(v65, v33);
  sub_10000D52C(v66, &qword_10021D2C8, &qword_1001B4048);
  return (v41)(v64, v33);
}

void sub_1000AC630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v6 = type metadata accessor for HeaderModule(0, v14);
  sub_1000A9270(v6, v7, v8, v9);
  sub_10007B974();

  sub_1000A9270(v6, v10, v11, v12);
  if (*(a1 + *(v6 + 64)))
  {

    sub_10007C19C(v13);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000B0EDC(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000AC728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v96 = a6;
  v11 = sub_100009F70(&qword_10021D3E0, &qword_1001B4148);
  v12 = __chkstk_darwin(v11 - 8);
  v95 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v94 = &v75 - v14;
  v15 = type metadata accessor for ContentSizeCategory();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v75 - v20;
  v22 = sub_100009F70(&qword_10021D3E8, &qword_1001B4150);
  v91 = *(v22 - 8);
  v92 = v22;
  v23 = __chkstk_darwin(v22);
  v93 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v85 = &v75 - v26;
  __chkstk_darwin(v25);
  v97 = &v75 - v27;
  *&v110 = a2;
  *(&v110 + 1) = a3;
  *&v111 = a4;
  *(&v111 + 1) = a5;
  v86 = type metadata accessor for HeaderModule(0, &v110);
  v90 = a1;
  sub_1000A9270(v86, v28, v29, v30);
  sub_10007C928();

  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v31 = Text.font(_:)();
  v88 = v32;
  v89 = v31;
  v34 = v33;
  v87 = v35;

  KeyPath = swift_getKeyPath();
  v37 = v86;
  v80 = *(v86 + 60);
  sub_100024890(v21);
  v38 = *(v16 + 104);
  v79 = enum case for ContentSizeCategory.accessibilityMedium(_:);
  v77 = v16 + 104;
  v78 = v38;
  v38(v19);
  LOBYTE(a5) = sub_1000B06A0(v21, v19);
  v39 = *(v16 + 8);
  v82 = v19;
  v39(v19, v15);
  v81 = v21;
  v83 = v16 + 8;
  v84 = v15;
  v39(v21, v15);
  if (a5)
  {
    v40 = 3;
  }

  else
  {
    v40 = 2;
  }

  v41 = swift_getKeyPath();
  v116 = v34 & 1;
  v115 = 0;
  *&v105 = v89;
  *(&v105 + 1) = v88;
  LOBYTE(v106) = v34 & 1;
  *(&v106 + 1) = v87;
  *&v107 = KeyPath;
  BYTE8(v107) = 1;
  *&v108 = v41;
  *(&v108 + 1) = v40;
  v109 = 0;
  v42 = sub_100009F70(&qword_10021D3F0, &qword_1001B41B8);
  v43 = sub_1000B0B1C();
  View.accessibilityIdentifier(_:)();
  v112 = v107;
  v113 = v108;
  v114 = v109;
  v110 = v105;
  v111 = v106;
  sub_10000D52C(&v110, &qword_10021D3F0, &qword_1001B41B8);
  sub_1000A9270(v37, v44, v45, v46);
  sub_10007C9B4();
  v48 = v47;

  if (v48)
  {
    v87 = v43;
    v88 = v42;
    v89 = v39;
    static Font.subheadline.getter();
    v49 = Text.font(_:)();
    v51 = v50;
    v53 = v52;

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    *&v105 = qword_100230570;

    v86 = Text.foregroundStyle<A>(_:)();
    v76 = v54;
    v56 = v55;
    v58 = v57;
    sub_10000D60C(v49, v51, v53 & 1);

    v59 = swift_getKeyPath();
    v60 = v81;
    sub_100024890(v81);
    v61 = v82;
    v62 = v84;
    v78(v82, v79, v84);
    v63 = sub_1000B06A0(v60, v61);
    v64 = v89;
    v89(v61, v62);
    v64(v60, v62);
    if (v63)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v66 = swift_getKeyPath();
    v104 = v56 & 1;
    v103 = 0;
    *&v98 = v86;
    *(&v98 + 1) = v76;
    LOBYTE(v99) = v56 & 1;
    *(&v99 + 1) = v58;
    *&v100 = v59;
    BYTE8(v100) = 1;
    *&v101 = v66;
    *(&v101 + 1) = v65;
    v102 = 0;
    v67 = v85;
    View.accessibilityIdentifier(_:)();
    v107 = v100;
    v108 = v101;
    v109 = v102;
    v105 = v98;
    v106 = v99;
    sub_10000D52C(&v105, &qword_10021D3F0, &qword_1001B41B8);
    v68 = v94;
    sub_10000F618(v67, v94, &qword_10021D3E8, &qword_1001B4150);
    (*(v91 + 56))(v68, 0, 1, v92);
  }

  else
  {
    v68 = v94;
    (*(v91 + 56))(v94, 1, 1, v92);
  }

  v69 = v97;
  v70 = v93;
  sub_10000D58C(v97, v93, &qword_10021D3E8, &qword_1001B4150);
  v71 = v95;
  sub_10000D58C(v68, v95, &qword_10021D3E0, &qword_1001B4148);
  v72 = v96;
  sub_10000D58C(v70, v96, &qword_10021D3E8, &qword_1001B4150);
  v73 = sub_100009F70(&qword_10021D410, &qword_1001B41C8);
  sub_10000D58C(v71, v72 + *(v73 + 48), &qword_10021D3E0, &qword_1001B4148);
  sub_10000D52C(v68, &qword_10021D3E0, &qword_1001B4148);
  sub_10000D52C(v69, &qword_10021D3E8, &qword_1001B4150);
  sub_10000D52C(v71, &qword_10021D3E0, &qword_1001B4148);
  return sub_10000D52C(v70, &qword_10021D3E8, &qword_1001B4150);
}

uint64_t sub_1000ACEFC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v6 = type metadata accessor for HeaderModule(0, &v34);
  sub_1000A9270(v6, v7, v8, v9);
  v10 = sub_10007C928();
  v12 = v11;

  v34 = v10;
  v35 = v12;
  sub_100027068();
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v33 = v16;
  v18 = v17;
  sub_1000A9270(v6, v14, v16, v17);
  v19 = sub_10007CB50();
  v21 = v20;

  if (v21)
  {
    v34 = v19;
    v35 = v21;
    Text.init<A>(_:)();
  }

  else
  {
    sub_1000A9270(v6, v22, v23, v24);
    v25 = sub_10007C9B4();
    v27 = v26;

    if (!v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = -1;
      goto LABEL_6;
    }

    v34 = v25;
    v35 = v27;
    Text.init<A>(_:)();
  }

  _ConditionalContent<>.init(storage:)();
  v28 = v34;
  v27 = v35;
  v29 = v36;
  v30 = v37;
  v31 = v38;
  sub_1000B05BC(v34, v35, v36, v37);
LABEL_6:
  sub_10000D5FC(v13, v15, v33 & 1);

  sub_1000B05A4(v28, v27, v29, v30, v31);
  sub_1000B05F8(v28, v27, v29, v30, v31);
  LOBYTE(v34) = v33 & 1;
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v33 & 1;
  *(a5 + 24) = v18;
  *(a5 + 32) = v28;
  *(a5 + 40) = v27;
  *(a5 + 48) = v29;
  *(a5 + 56) = v30;
  *(a5 + 64) = v31;
  sub_1000B05F8(v28, v27, v29, v30, v31);
  sub_10000D60C(v13, v15, v33 & 1);
}

uint64_t sub_1000AD16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v120 = a6;
  v100 = type metadata accessor for AttributionModule(0);
  __chkstk_darwin(v100);
  v99 = (&v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100009F70(&qword_10021D378, &qword_1001B4110);
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v98 = &v94 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = type metadata accessor for Optional();
  v94 = *(v95 - 8);
  v15 = __chkstk_darwin(v95);
  v101 = &v94 - v16;
  v116 = AssociatedTypeWitness;
  v115 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v15);
  v102 = &v94 - v17;
  v18 = sub_100009F70(&qword_10021D380, &qword_1001B4118);
  v19 = __chkstk_darwin(v18 - 8);
  v117 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v121 = &v94 - v21;
  v112 = type metadata accessor for GlassProminentButtonStyle();
  v113 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v131 = a2;
  *(&v131 + 1) = a3;
  *&v132 = a4;
  *(&v132 + 1) = a5;
  v23 = type metadata accessor for HeaderModule(0, &v131);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v94 - v25;
  v108 = sub_100009F70(&qword_10021D388, &qword_1001B4120);
  __chkstk_darwin(v108);
  v103 = &v94 - v27;
  v110 = sub_100009F70(&qword_10021D390, &qword_1001B4128);
  v111 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v94 - v28;
  v29 = sub_100009F70(&qword_10021D398, &qword_1001B4130);
  v30 = __chkstk_darwin(v29 - 8);
  v114 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v104 = &v94 - v32;
  v33 = *(v24 + 16);
  v105 = a1;
  v106 = v23;
  v33(v26, a1, v23);
  v34 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = a2;
  *(v35 + 3) = a3;
  *(v35 + 4) = a4;
  *(v35 + 5) = a5;
  (*(v24 + 32))(&v35[v34], v26, v23);
  v122 = a2;
  v123 = a3;
  v124 = a4;
  v125 = a5;
  v126 = a1;
  sub_100009F70(&qword_10021D3A0, &qword_1001B7DA0);
  sub_1000AFBA4();
  v36 = v103;
  Button.init(action:label:)();
  v97 = a2;
  v96 = a4;
  sub_1000A8C04();
  static Alignment.center.getter();
  v37 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v38 = v108;
  v39 = (v36 + *(v108 + 36));
  v40 = v132;
  *v39 = v131;
  v39[1] = v40;
  v39[2] = v133;
  v41 = v109;
  GlassProminentButtonStyle.init()();
  v42 = sub_1000AFC30();
  v43 = sub_1000B0EDC(&qword_10021D3C8, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  v44 = v107;
  v45 = v112;
  View.buttonStyle<A>(_:)();
  v46 = v104;
  (*(v113 + 8))(v41, v45);
  sub_10000D52C(v36, &qword_10021D388, &qword_1001B4120);
  v127 = v38;
  v128 = v45;
  v47 = v121;
  v129 = v42;
  v130 = v43;
  swift_getOpaqueTypeConformance2();
  v48 = v110;
  View.accessibilityIdentifier(_:)();
  (*(v111 + 8))(v44, v48);
  v49 = v106;
  v53 = sub_1000A9270(v106, v50, v51, v52);
  LOBYTE(v48) = sub_10007AE84(v53);

  if (v48)
  {
    sub_1000A9270(v49, v54, v55, v56);
    v57 = v101;
    sub_10007B068();

    if ((*(v115 + 48))(v57, 1, v116) == 1)
    {
      (*(v94 + 8))(v57, v95);
      v37 = 1;
    }

    else
    {
      v58 = v57;
      v59 = v116;
      (*(v115 + 32))(v102, v58, v116);
      sub_1000A9270(v49, v60, v61, v62);
      v113 = sub_10007AA00();
      v112 = v63;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v111 = (*(AssociatedConformanceWitness + 16))(v59, AssociatedConformanceWitness);
      v110 = v65;
      v66 = type metadata accessor for AttributionViewModel(0);
      v67 = *(v66 + 32);
      v68 = type metadata accessor for URL();
      v69 = v99;
      (*(*(v68 - 8) + 56))(v99 + v67, 1, 1, v68);
      sub_1000A9270(v49, v70, v71, v72);
      LODWORD(v109) = sub_10007BA8C(v73);

      v74 = objc_opt_self();
      v75 = [v74 mainBundle];
      v134._object = 0xE000000000000000;
      v76._countAndFlagsBits = 0xD000000000000031;
      v76._object = 0x80000001001BFEF0;
      v77._countAndFlagsBits = 0;
      v77._object = 0xE000000000000000;
      v134._countAndFlagsBits = 0;
      v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v76, 0, v75, v77, v134);

      *v69 = v78;
      v79 = [v74 mainBundle];
      v135._object = 0xE000000000000000;
      v80._countAndFlagsBits = 0xD00000000000002CLL;
      v80._object = 0x80000001001BFF30;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      v135._countAndFlagsBits = 0;
      v82 = NSLocalizedString(_:tableName:bundle:value:comment:)(v80, 0, v79, v81, v135);

      v69[1] = v82;
      v83 = v112;
      v69[2]._countAndFlagsBits = v113;
      v69[2]._object = v83;
      v84 = v110;
      v69[3]._countAndFlagsBits = v111;
      v69[3]._object = v84;
      v85 = *(v66 + 36);
      v47 = v121;
      *(&v69->_countAndFlagsBits + v85) = v109;
      v86 = (&v69->_countAndFlagsBits + *(v100 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_1000B0EDC(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
      *v86 = EnvironmentObject.init()();
      v86[1] = v87;
      sub_1000B0EDC(&qword_10021D3D8, type metadata accessor for AttributionModule, &unk_1001BCF74);
      v88 = v98;
      View.accessibilityIdentifier(_:)();
      sub_1000AFCE8(v69);
      (*(v115 + 8))(v102, v116);
      sub_10000F618(v88, v47, &qword_10021D378, &qword_1001B4110);
      v37 = 0;
    }
  }

  (*(v118 + 56))(v47, v37, 1, v119);
  v89 = v114;
  sub_10000D58C(v46, v114, &qword_10021D398, &qword_1001B4130);
  v90 = v117;
  sub_10000D58C(v47, v117, &qword_10021D380, &qword_1001B4118);
  v91 = v120;
  sub_10000D58C(v89, v120, &qword_10021D398, &qword_1001B4130);
  v92 = sub_100009F70(&qword_10021D3D0, &qword_1001B4140);
  sub_10000D58C(v90, v91 + *(v92 + 48), &qword_10021D380, &qword_1001B4118);
  sub_10000D52C(v47, &qword_10021D380, &qword_1001B4118);
  sub_10000D52C(v46, &qword_10021D398, &qword_1001B4130);
  sub_10000D52C(v90, &qword_10021D380, &qword_1001B4118);
  return sub_10000D52C(v89, &qword_10021D398, &qword_1001B4130);
}

void sub_1000ADE80(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OpenURLAction();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v40 = *(a1 + 16);
  v41 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v39 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v9);
  v14 = &v38 - v13;
  sub_1000A9270(a1, v15, v16, v17);
  v18 = sub_10007AFA0();

  sub_1000A9270(a1, v19, v20, v21);
  if (v18)
  {
    v38 = v3;
    v22 = sub_10007ACD0();

    v47 = v22;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v39 + 8))(v11, v8);

      return;
    }

    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);

    v27 = v42;
    sub_100023FD4(v42);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = v44;
    (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    OpenURLAction.callAsFunction(_:)();
    (*(v46 + 8))(v29, v38);
    (*(v43 + 8))(v27, v45);
    sub_1000A9270(a1, v30, v31, v32);
    v33 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v35 = *(v1 + *(a1 + 64));
    if (v35)
    {
      v36 = v33;
      v37 = v34;

      sub_10007BE34(v36, v37, v35);

      (*(v12 + 8))(v14, AssociatedTypeWitness);
      return;
    }

LABEL_11:
    type metadata accessor for RemoteViewConfiguration();
    sub_1000B0EDC(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  sub_100079E60(1);

  sub_1000A9270(a1, v23, v24, v25);
  if (!*(v1 + *(a1 + 64)))
  {
    goto LABEL_11;
  }

  sub_10007BAD4(v26);
}

__n128 sub_1000AE3D4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v32 = a1;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  v6 = type metadata accessor for HeaderModule(0, &v32);
  sub_1000A9270(v6, v7, v8, v9);

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  static Font.body.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10000D60C(v10, v12, v14 & 1);

  LOBYTE(v10) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v31[55] = v35;
  *&v31[71] = v36;
  *&v31[87] = v37;
  *&v31[103] = v38;
  *&v31[7] = v32;
  *&v31[23] = v33;
  *&v31[39] = v34;
  *a5 = v15;
  *(a5 + 8) = v17;
  *(a5 + 16) = v19 & 1;
  *(a5 + 24) = v21;
  *(a5 + 32) = v10;
  *(a5 + 40) = v23;
  *(a5 + 48) = v25;
  *(a5 + 56) = v27;
  *(a5 + 64) = v29;
  *(a5 + 72) = 0;
  *(a5 + 137) = *&v31[64];
  *(a5 + 153) = *&v31[80];
  *(a5 + 169) = *&v31[96];
  *(a5 + 184) = *&v31[111];
  *(a5 + 73) = *v31;
  *(a5 + 89) = *&v31[16];
  result = *&v31[32];
  *(a5 + 105) = *&v31[32];
  *(a5 + 121) = *&v31[48];
  return result;
}

uint64_t sub_1000AE634@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v94 = a5;
  v9 = type metadata accessor for AttributionModule(0);
  v92 = *(v9 - 8);
  v93 = v9;
  __chkstk_darwin(v9);
  v84 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v77[-v14];
  v86 = AssociatedTypeWitness;
  v88 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v13);
  v85 = &v77[-v16];
  v17 = sub_100009F70(&qword_10021D368, &qword_1001B4100);
  v18 = __chkstk_darwin(v17 - 8);
  v91 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v77[-v20];
  v95[0] = a1;
  v95[1] = a2;
  v83 = a3;
  v95[2] = a3;
  v95[3] = a4;
  v22 = type metadata accessor for HeaderModule(0, v95);
  sub_1000A9270(v22, v23, v24, v25);

  v26 = Text.init(_:tableName:bundle:comment:)();
  v89 = v27;
  v90 = v26;
  v87 = v28;
  v30 = v29;
  v31 = sub_1000A9270(v22, v27, v28, v29);
  LOBYTE(AssociatedTypeWitness) = sub_10007AE84(v31);

  if (AssociatedTypeWitness)
  {
    sub_1000A9270(v22, v32, v33, v34);
    sub_10007B068();

    if ((*(v88 + 48))(v15, 1, v86) != 1)
    {
      v37 = v15;
      v38 = v86;
      (*(v88 + 32))(v85, v37, v86);
      sub_1000A9270(v22, v39, v40, v41);
      v42 = sub_10007AA00();
      v81 = v43;
      v82 = v42;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v83 = (*(AssociatedConformanceWitness + 16))(v38, AssociatedConformanceWitness);
      v80 = v45;
      v79 = type metadata accessor for AttributionViewModel(0);
      v46 = *(v79 + 32);
      v47 = type metadata accessor for URL();
      v48 = v84;
      (*(*(v47 - 8) + 56))(v84 + v46, 1, 1, v47);
      sub_1000A9270(v22, v49, v50, v51);
      v78 = sub_10007BA8C(v52);

      v53 = objc_opt_self();
      v54 = [v53 mainBundle];
      v96._object = 0xE000000000000000;
      v55._countAndFlagsBits = 0xD000000000000031;
      v55._object = 0x80000001001BFEF0;
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      v96._countAndFlagsBits = 0;
      v57 = NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v96);

      *v48 = v57;
      v58 = [v53 mainBundle];
      v97._object = 0xE000000000000000;
      v59._object = 0x80000001001BFF30;
      v59._countAndFlagsBits = 0xD00000000000002CLL;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      v97._countAndFlagsBits = 0;
      v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v97);

      v48[1] = v61;
      v62 = v81;
      v48[2]._countAndFlagsBits = v82;
      v48[2]._object = v62;
      v63 = v79;
      v64 = v80;
      v48[3]._countAndFlagsBits = v83;
      v48[3]._object = v64;
      *(&v48->_countAndFlagsBits + *(v63 + 36)) = v78;
      v65 = v93;
      v66 = (&v48->_countAndFlagsBits + *(v93 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_1000B0EDC(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
      v67 = EnvironmentObject.init()();
      v69 = v68;
      (*(v88 + 8))(v85, v38);
      *v66 = v67;
      v66[1] = v69;
      sub_1000B125C(v48, v21, type metadata accessor for AttributionModule);
      v36 = v65;
      v35 = 0;
      goto LABEL_6;
    }

    v81[1](v15, v82);
  }

  v35 = 1;
  v36 = v93;
LABEL_6:
  (*(v92 + 56))(v21, v35, 1, v36);
  v70 = v91;
  sub_10000D58C(v21, v91, &qword_10021D368, &qword_1001B4100);
  v71 = v94;
  v73 = v89;
  v72 = v90;
  *v94 = v90;
  v71[1] = v73;
  v74 = v87 & 1;
  *(v71 + 16) = v87 & 1;
  v71[3] = v30;
  v75 = sub_100009F70(&qword_10021D370, &qword_1001B4108);
  sub_10000D58C(v70, v71 + *(v75 + 48), &qword_10021D368, &qword_1001B4100);
  sub_10000D5FC(v72, v73, v74);

  sub_10000D52C(v21, &qword_10021D368, &qword_1001B4100);
  sub_10000D52C(v70, &qword_10021D368, &qword_1001B4100);
  sub_10000D60C(v72, v73, v74);
}

uint64_t sub_1000AED4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v50 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  __chkstk_darwin(v10 - 8);
  v49 = &v43 - v11;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v51 = AssociatedTypeWitness;
  v52 = v12;
  v53 = AssociatedConformanceWitness;
  v54 = v14;
  v46 = v14;
  v47 = AssociatedConformanceWitness;
  v15 = v14;
  v16 = type metadata accessor for TicketViewModel(0, &v51);
  __chkstk_darwin(v16 - 8);
  v45 = &v43 - v17;
  v51 = AssociatedTypeWitness;
  v52 = v12;
  v53 = AssociatedConformanceWitness;
  v54 = v15;
  v18 = type metadata accessor for TicketView(0, &v51);
  v48 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v24 = type metadata accessor for HeaderModule(0, &v51);
  sub_1000A9270(v24, v25, v26, v27);
  v28 = sub_10007AA00();
  v43 = v29;
  v44 = v28;

  sub_1000A9270(v24, v30, v31, v32);
  v33 = v49;
  sub_10007B068();

  sub_1000A9270(v24, v34, v35, v36);
  v37 = sub_10007ACD0();

  v38 = v45;
  v40 = v46;
  v39 = v47;
  sub_1000979A0(v44, v43, v33, v37, AssociatedTypeWitness, v12, v47, v46, v45);
  sub_10009504C(v38, AssociatedTypeWitness, v12, v39, v40, v21);
  swift_getWitnessTable();
  sub_100157EFC();
  v41 = *(v48 + 8);
  v41(v21, v18);
  sub_100157EFC();
  return (v41)(v23, v18);
}

uint64_t sub_1000AF0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a3;
  type metadata accessor for MainActor();
  v7[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AF148, v9, v8);
}

uint64_t sub_1000AF148()
{
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);

  *(v0 + 16) = v12;
  *(v0 + 32) = v11;
  v1 = type metadata accessor for HeaderModule(0, v0 + 16);
  sub_1000A9270(v1, v2, v3, v4);
  v5 = sub_10007B0DC();

  if (v5)
  {
    sub_1000A9270(v1, v6, v7, v8);
    sub_10007B904();
  }

  v9 = *(v0 + 8);

  return v9();
}

double sub_1000AF210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v5 = type metadata accessor for HeaderModule(0, v14);
  sub_1000A9270(v5, v6, v7, v8);
  v9 = sub_10007B0DC();

  if (v9)
  {
    sub_1000A9270(v5, v10, v11, v12);
    sub_10007BA20();
  }

  return result;
}

uint64_t sub_1000AF2B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100079DEC();
  *a1 = result & 1;
  return result;
}

__n128 sub_1000AF314(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1000AF324@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8[0] = v1[2];
  v3 = v8[0];
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  type metadata accessor for HeaderModule(0, v8);

  return sub_1000AED4C(v3, v4, v5, v6, a1);
}

uint64_t sub_1000AF3D0()
{
  v11 = *(v0 + 48);
  v13[0] = *(v0 + 32);
  v12 = *&v13[0];
  v13[1] = v11;
  v1 = type metadata accessor for HeaderModule(0, v13);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  type metadata accessor for HeaderViewModel(255, v12, v11, v4);
  v5 = type metadata accessor for Bindable();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  v6 = *(v1 + 56);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for OpenURLAction();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 60);
  sub_100009F70(&qword_100219720, &qword_1001B23D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ContentSizeCategory();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000AF5E4()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for HeaderModule(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v0[2];
  v9 = v0[3];
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_1000AF6F8;

  return sub_1000AF0A8(v8, v9, v0 + v7, v3, v2, v4, v5);
}

uint64_t sub_1000AF6F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000AF82C()
{
  result = qword_10021D330;
  if (!qword_10021D330)
  {
    sub_10000B3DC(&qword_10021D310, &qword_1001B40D8);
    sub_10000B3DC(&qword_10021D300, &qword_1001B40C8);
    sub_10000D1EC(&qword_10021D320, &qword_10021D300, &qword_1001B40C8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000B0EDC(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D330);
  }

  return result;
}

unint64_t sub_1000AF958()
{
  result = qword_10021D340;
  if (!qword_10021D340)
  {
    sub_10000B3DC(&qword_10021D2E0, &qword_1001B4060);
    sub_10000B3DC(&qword_10021D2F0, &qword_1001B40B8);
    sub_10000B3DC(&qword_10021D348, &qword_1001B40F0);
    sub_10000B3DC(&qword_10021D2E8, &qword_1001B40B0);
    sub_10000D1EC(&qword_10021D350, &qword_10021D2E8, &qword_1001B40B0, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10000D1EC(&qword_10021D358, &qword_10021D348, &qword_1001B40F0, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D340);
  }

  return result;
}

void sub_1000AFAF8()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v1 = v6;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for HeaderModule(0, &v6);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v5 = type metadata accessor for HeaderModule(0, &v6);
  sub_1000ADE80(v5);
}

unint64_t sub_1000AFBA4()
{
  result = qword_10021D3A8;
  if (!qword_10021D3A8)
  {
    sub_10000B3DC(&qword_10021D3A0, &qword_1001B7DA0);
    sub_100071294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D3A8);
  }

  return result;
}

unint64_t sub_1000AFC30()
{
  result = qword_10021D3B0;
  if (!qword_10021D3B0)
  {
    sub_10000B3DC(&qword_10021D388, &qword_1001B4120);
    sub_10000D1EC(&qword_10021D3B8, &qword_10021D3C0, &qword_1001B4138, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D3B0);
  }

  return result;
}

uint64_t sub_1000AFCE8(uint64_t a1)
{
  v2 = type metadata accessor for AttributionModule(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AFD44()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_10021D240 = result;
  return result;
}

uint64_t sub_1000AFE2C@<X0>(uint64_t a3@<X8>)
{
  v47 = a3;
  v3 = sub_100009F70(&qword_10021D470, &qword_1001B42A0);
  __chkstk_darwin(v3);
  v5 = &v45 - v4;

  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v6 = Text.font(_:)();
  v8 = v7;
  v10 = v9;

  v48 = static Color.white.getter();
  v11 = Text.foregroundStyle<A>(_:)();
  v45 = v12;
  v46 = v11;
  v14 = v13;
  v16 = v15;
  sub_10000D60C(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v6) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v14 &= 1u;
  v51 = v14;
  v50 = 0;
  v49 = 0;
  v26 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v52 = 0;
  v35 = static Alignment.center.getter();
  v36 = &v5[*(v3 + 36)];
  *v36 = v35;
  v36[1] = v37;
  v38 = sub_100009F70(&qword_10021D478, &qword_1001B42A8);
  sub_1000B00F8(v36 + *(v38 + 44));
  v39 = static Alignment.center.getter();
  v41 = v40;
  v42 = (v36 + *(sub_100009F70(&qword_10021D480, &qword_1001B42B0) + 36));
  *v42 = v39;
  v42[1] = v41;
  v43 = v45;
  *v5 = v46;
  *(v5 + 1) = v43;
  v5[16] = v14;
  *(v5 + 3) = v16;
  *(v5 + 4) = KeyPath;
  *(v5 + 5) = 1;
  v5[48] = 0;
  v5[56] = v6;
  *(v5 + 8) = v19;
  *(v5 + 9) = v21;
  *(v5 + 10) = v23;
  *(v5 + 11) = v25;
  v5[96] = 0;
  v5[104] = v26;
  *(v5 + 14) = v28;
  *(v5 + 15) = v30;
  *(v5 + 16) = v32;
  *(v5 + 17) = v34;
  v5[144] = 0;
  sub_1000B17F4();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v5, &qword_10021D470, &qword_1001B42A0);
}

uint64_t sub_1000B00F8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v30 = sub_100009F70(&qword_10021B648, &qword_1001B1320);
  v1 = __chkstk_darwin(v30);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_100009F70(&qword_10021D4B8, &qword_1001B42C0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v29 - v10);
  v12 = &v29 + *(v9 + 44) - v10;
  v13 = type metadata accessor for RoundedRectangle();
  v14 = *(v13 + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  v17 = *(*(v16 - 8) + 104);
  v17(&v12[v14], v15, v16);
  __asm { FMOV            V0.2D, #12.0 }

  v29 = _Q0;
  *v12 = _Q0;
  *&v12[*(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)] = 256;
  *v11 = 11;
  v17(&v4[*(v13 + 20)], v15, v16);
  *v4 = v29;
  if (qword_1002183E0 != -1)
  {
    swift_once();
  }

  v23 = Color.opacity(_:)();
  v24 = v30;
  *&v4[*(v30 + 52)] = v23;
  *&v4[*(v24 + 56)] = 256;
  sub_10000D58C(v11, v8, &qword_10021D4B8, &qword_1001B42C0);
  v25 = v31;
  sub_10000D58C(v4, v31, &qword_10021B648, &qword_1001B1320);
  v26 = v32;
  sub_10000D58C(v8, v32, &qword_10021D4B8, &qword_1001B42C0);
  v27 = sub_100009F70(&qword_10021D4C0, &qword_1001B42C8);
  sub_10000D58C(v25, v26 + *(v27 + 48), &qword_10021B648, &qword_1001B1320);
  sub_10000D52C(v4, &qword_10021B648, &qword_1001B1320);
  sub_10000D52C(v11, &qword_10021D4B8, &qword_1001B42C0);
  sub_10000D52C(v25, &qword_10021B648, &qword_1001B1320);
  return sub_10000D52C(v8, &qword_10021D4B8, &qword_1001B42C0);
}

uint64_t sub_1000B041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1000B04EC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000B0550@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000B05A4(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1000B05BC(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1000B05BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10000D5FC(a1, a2, a3 & 1);
}

uint64_t sub_1000B05F8(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1000B0610(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1000B0610(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10000D60C(a1, a2, a3 & 1);
}

uint64_t sub_1000B064C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

BOOL sub_1000B06A0(uint64_t a1, uint64_t a2)
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
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 >= v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 >= v16;
}

uint64_t sub_1000B0AB8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1000B0B1C()
{
  result = qword_10021D3F8;
  if (!qword_10021D3F8)
  {
    sub_10000B3DC(&qword_10021D3F0, &qword_1001B41B8);
    sub_1000B0BD4();
    sub_10000D1EC(&qword_100219800, &qword_100219808, &qword_1001B26F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D3F8);
  }

  return result;
}

unint64_t sub_1000B0BD4()
{
  result = qword_10021D400;
  if (!qword_10021D400)
  {
    sub_10000B3DC(&qword_10021D408, &qword_1001B41C0);
    sub_10000D1EC(&qword_10021A638, &qword_10021A640, &qword_1001AFD50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D400);
  }

  return result;
}

unint64_t sub_1000B0CBC()
{
  result = qword_10021D428;
  if (!qword_10021D428)
  {
    sub_10000B3DC(&qword_10021D2D0, &qword_1001B4050);
    sub_1000B0D6C(&qword_10021D430, &qword_10021D420, &qword_1001B41D8, sub_1000B0E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D428);
  }

  return result;
}

uint64_t sub_1000B0D6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    sub_1000B0EDC(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B0E20()
{
  result = qword_10021D438;
  if (!qword_10021D438)
  {
    sub_10000B3DC(&qword_10021D418, &qword_1001B41D0);
    sub_1000B0EDC(&qword_10021D440, type metadata accessor for PlayButtonView, &unk_1001B3118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D438);
  }

  return result;
}

uint64_t sub_1000B0EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B0F24()
{
  v10 = *(v0 + 32);
  v12[0] = *(v0 + 16);
  v11 = *&v12[0];
  v12[1] = v10;
  v1 = type metadata accessor for HeaderModule(0, v12);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));
  type metadata accessor for HeaderViewModel(255, v11, v10, v3);
  v4 = type metadata accessor for Bindable();
  (*(*(v4 - 8) + 8))(v2, v4);

  v5 = *(v1 + 56);
  sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 60);
  sub_100009F70(&qword_100219720, &qword_1001B23D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ContentSizeCategory();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000B1148(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for HeaderModule(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1000B125C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B12C4()
{
  result = qword_10021D450;
  if (!qword_10021D450)
  {
    sub_10000B3DC(&qword_10021D2C8, &qword_1001B4048);
    sub_10000B3DC(&qword_10021D458, &qword_1001B4218);
    sub_1000B18D8(&qword_10021D460, &qword_10021D458, &qword_1001B4218, sub_1000B13B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D450);
  }

  return result;
}

unint64_t sub_1000B13B8()
{
  result = qword_10021D468;
  if (!qword_10021D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D468);
  }

  return result;
}

uint64_t sub_1000B141C(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021D2C8, &qword_1001B4048);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021D2D0, &qword_1001B4050);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10000B3DC(&qword_10021D2D8, &qword_1001B4058);
  sub_10000B3DC(&qword_10021D2E0, &qword_1001B4060);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v1 = type metadata accessor for VStack();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for TicketView(255, &AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v4 = swift_getWitnessTable();
  AssociatedTypeWitness = v1;
  v9 = v2;
  AssociatedConformanceWitness = WitnessTable;
  v11 = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  AssociatedTypeWitness = v1;
  v9 = v2;
  AssociatedConformanceWitness = WitnessTable;
  v11 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  AssociatedTypeWitness = OpaqueTypeMetadata2;
  v9 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = OpaqueTypeMetadata2;
  v9 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

unint64_t sub_1000B17F4()
{
  result = qword_10021D488;
  if (!qword_10021D488)
  {
    sub_10000B3DC(&qword_10021D470, &qword_1001B42A0);
    sub_1000B18D8(&qword_10021D490, &qword_10021D498, &qword_1001B42B8, sub_1000B195C);
    sub_10000D1EC(&qword_10021D4B0, &qword_10021D480, &qword_1001B42B0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D488);
  }

  return result;
}

uint64_t sub_1000B18D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000B19DC(void *a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        sub_100010780(319);
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                type metadata accessor for ObservationRegistrar();
                if (v8 <= 0x3F)
                {
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000B1CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1000B8B50(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1000B1D44()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_1000B2B3C();
  v8 = *(AssociatedTypeWitness - 8);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return (*(*(v1 + 8) + 136))(v2);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v7, AssociatedTypeWitness);
    return v11;
  }
}

uint64_t sub_1000B1FE4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_1000B79A0(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_1000B2280@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  sub_1000B2B3C();
  v7 = *(AssociatedTypeWitness - 8);
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, v3);
    swift_getAssociatedConformanceWitness();
    v8 = swift_getAssociatedTypeWitness();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v7 + 8))(v6, AssociatedTypeWitness);
  }
}

uint64_t sub_1000B251C(char a1)
{
  if (a1)
  {
    v1 = sub_1000B1D44();
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_1000B7630(v1, v2);
}

uint64_t sub_1000B2554@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  v4 = *(*v1 + 176);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_1000B2694()
{
  v1 = *(v0 + *(*v0 + 248));

  return v1;
}

void *sub_1000B26FC()
{
  sub_1000B9C80(v3);
  if (!v3[3] || !v3[1])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100009F70(&qword_10021C438, &qword_1001BD7E0);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001ACB00;
  sub_10008319C(v3, &v2);
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  sub_1000831F8(v3);
  return v0;
}

uint64_t sub_1000B2898()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  (*(v9 + 16))(&v16 - v10, v0 + *(v1 + 208), v8);
  v12 = *(v3 - 8);
  if ((*(v12 + 48))(v11, 1, v3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v13 = 0;
  }

  else
  {
    (*(v2 + 104))(v3, v2);
    (*(v12 + 8))(v11, v3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = sub_100061120(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
  }

  return v13 & 1;
}

uint64_t sub_1000B2B3C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = v10 - v5;
  (*(v1 + 88))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  v10[1] = v8;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
}

void sub_1000B2D5C(uint64_t a1)
{
  v42 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = *(v2 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001AD7C0;
  v14 = *(v7 + 8);
  v15 = sub_1000A199C(v1 + *(v2 + 200), v3, v14);
  *(v13 + 56) = &type metadata for AnalyticsPageName;
  *(v13 + 64) = &off_10021CBA8;
  *(v13 + 32) = v15;
  *(v13 + 96) = &type metadata for AnalyticsModuleName;
  *(v13 + 104) = &off_10021CC30;
  *(v13 + 72) = 3;
  sub_1000B3374(v12);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v16 = 12;
  }

  else
  {
    v16 = 11;
  }

  v17 = v12;
  v18 = v40;
  (*(v10 + 8))(v17, v9);
  *(v13 + 136) = &type metadata for AnalyticsModuleAction;
  *(v13 + 144) = &off_10021CC08;
  *(v13 + 112) = v16;
  *(v13 + 120) = 0;
  *(v13 + 128) = 3;
  v48 = v13;
  v19 = v1 + *(*v1 + 208);
  v20 = v41;
  (*(v18 + 16))(v6, v19, v41);
  v21 = *(v3 - 8);
  v22 = &type metadata for AnalyticsString;
  v23 = &off_10021CBD0;
  if ((*(v21 + 48))(v6, 1, v3) == 1)
  {
    (*(v18 + 8))(v6, v20);
  }

  else
  {
    v24 = (*(v14 + 120))(v3, v14);
    v26 = v25;
    (*(v21 + 8))(v6, v3);
    v28 = *(v13 + 16);
    v27 = *(v13 + 24);
    if (v28 >= v27 >> 1)
    {
      v13 = sub_1001666DC((v27 > 1), v28 + 1, 1, v13);
    }

    v45 = &type metadata for AnalyticsString;
    v46 = &off_10021CBD0;
    LOBYTE(aBlock) = 0;
    *(&aBlock + 1) = v24;
    v44 = v26;
    *(v13 + 16) = v28 + 1;
    sub_100071318(&aBlock, v13 + 40 * v28 + 32);
  }

  if (*(v42 + 72))
  {
    v29 = *(v42 + 64);
    v30 = *(v42 + 72);
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v45 = &type metadata for AnalyticsString;
  v46 = &off_10021CBD0;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v29;
  v44 = v30;
  v48 = v13;
  v31 = *(v13 + 16);
  v32 = *(v13 + 24);

  if (v31 >= v32 >> 1)
  {
    v13 = sub_1001666DC((v32 > 1), v31 + 1, 1, v13);
    v48 = v13;
    v22 = v45;
    v23 = v46;
  }

  v33 = sub_100031420(&aBlock, v22);
  __chkstk_darwin(v33);
  v35 = &v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  sub_1000EB0D0(v31, v35, &v48, v22, v23);
  sub_100021498(&aBlock);
  v37 = String._bridgeToObjectiveC()();
  v38 = swift_allocObject();
  v38[2] = 0xD00000000000001ELL;
  v38[3] = 0x80000001001BDDE0;
  v38[4] = v13;
  v46 = sub_100038F2C;
  v47 = v38;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v44 = sub_1000DCA40;
  v45 = &unk_10020DAB8;
  v39 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v39);
}

uint64_t sub_1000B3374@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = v18 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - v11;
  (*(v10 + 16))(v18 - v11, v1 + *(v2 + 208), v9);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v12, 1, v4) == 1)
  {
    (*(v10 + 8))(v12, v9);
    swift_getAssociatedConformanceWitness();
    v14 = swift_getAssociatedTypeWitness();
    return (*(*(v14 - 8) + 56))(v18[0], 1, 1, v14);
  }

  else
  {
    (*(v3 + 104))(v4, v3);
    (*(v13 + 8))(v12, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    v18[1] = v17;
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
  }
}

uint64_t sub_1000B3788@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  v4 = *(*v1 + 184);
  swift_beginAccess();
  return sub_10000F680(v1 + v4, a1);
}

uint64_t sub_1000B3840()
{
  v0 = sub_1000B9F74();

  return v0;
}

void *sub_1000B3878()
{
  v0 = sub_1000B9BF0();
  v1 = v0;
  return v0;
}

uint64_t sub_1000B38A4@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  sub_1000B79A0(&v13 - v8);
  if ((*(v3 + 48))(v9, 1, AssociatedTypeWitness))
  {
    (*(v7 + 8))(v9, v6);
    v10 = type metadata accessor for URL();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 16))(v5, v9, AssociatedTypeWitness);
    (*(v7 + 8))(v9, v6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v3 + 8))(v5, AssociatedTypeWitness);
  }
}

uint64_t sub_1000B3B34()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_1000B79A0(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_1000B3DD0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_1000B79A0(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_1000B406C()
{
  sub_1000BA110();
}

uint64_t sub_1000B4094@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  v4 = *(*v1 + 136);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_1000B41F8()
{
  v0 = sub_1000B9B5C();

  return v0;
}

uint64_t sub_1000B4230()
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  return *(v0 + *(*v0 + 152));
}

double sub_1000B42C0(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v17 = *(v1 + v4);
  v16 = a1;
  v5 = v3[5];
  v14 = v3[6];
  v15 = v5;
  v13 = v3[7];
  sub_10001EBF4();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *(v1 + v4) = a1;
  }

  else
  {
    __chkstk_darwin(v6);
    v10 = v14;
    v12 = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v11 = v1;
    LOBYTE(v12) = a1;
    sub_1000B7490(v9, sub_1000BB504, &v10, &type metadata for () + 8);
  }

  return result;
}

void sub_1000B4430(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v11 = (*(*(*(*v5 + 104) + 8) + 120))(*(*v5 + 80));
  v13 = v12;
  v14 = sub_1000A199C(v5 + *(*v5 + 200), *(*v5 + 80), *(*(*v5 + 104) + 8));
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v14;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = a1;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  if (*(a5 + 72))
  {
    v16 = *(a5 + 64);
    v17 = *(a5 + 72);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v24 = v16;
  v25 = v17;

  sub_1000109A4(a2, a3, a4);

  v18 = sub_1001666DC(1, 5, 1, inited);
  v22 = v18;
  sub_1000109BC(&aBlock, v29);
  sub_1000EB0D0(4, v29, &v22, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = 0xD00000000000001ELL;
  v20[3] = 0x80000001001BDDE0;
  v20[4] = v18;
  v27 = sub_100010AAC;
  v28 = v20;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000DCA40;
  v26 = &unk_10020DA68;
  v21 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v21);
}

uint64_t sub_1000B476C@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_1000B485C(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(*(*v1 + 104) + 8) + 120))(*(*v1 + 80));
  v6 = v5;
  v7 = sub_1000A199C(v2 + *(*v2 + 200), *(*v2 + 80), *(*(*v2 + 104) + 8));
  sub_1000DCEDC(v4, v6, v7, a1);
}

uint64_t sub_1000B4960()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*(*v0 + 104) + 8);
  v1[4] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v5;
  v1[10] = v4;

  return _swift_task_switch(sub_1000B4A9C, v5, v4);
}

uint64_t sub_1000B4A9C()
{
  if (sub_1000B9BF0())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    (*(*(*(**(v0 + 16) + 104) + 8) + 176))(*(**(v0 + 16) + 80));
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_1000B4C18;
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);

    return sub_10019C8F0(v5, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_1000B4C18(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);

  v7 = (v6 + 8);
  v8 = v4[7];
  v9 = v4[5];
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = v5[9];
    v11 = v5[10];
    v12 = sub_1000B4E38;
  }

  else
  {
    v5[12] = a1;
    (*v7)(v8, v9);
    v10 = v5[9];
    v11 = v5[10];
    v12 = sub_1000B4DC0;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_1000B4DC0()
{
  v1 = *(v0 + 96);

  sub_1000B8028(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B4E38()
{

  sub_1000B8028(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B4EAC()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = *(*(v2 + 104) + 8);
  v4 = *(v2 + 80);
  v7 = (*(v3 + 184) + **(v3 + 184));
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_1000B502C;

  return v7(v4, v3);
}

uint64_t sub_1000B502C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1000B521C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_1000B51AC;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1000B51AC()
{
  v1 = *(v0 + 56);

  sub_1000B77B8(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B521C()
{
  v15 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v4 = 136315394;
    v7 = sub_1000B562C();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 45;
      v9 = 0xE100000000000000;
    }

    v10 = sub_10005D4E8(v7, v9, &v14);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch schedule for artist: %s, error: %@", v4, 0x16u);
    sub_10000D52C(v5, &qword_10021B938, &unk_1001B16A0);

    sub_100021498(v6);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000B5458()
{
  v0 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  sub_1000B38A4(v3);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_10000D52C(v3, qword_100218748, &unk_1001AD110);
    v8 = 1;
  }

  else
  {
    sub_1000B26FC();
    URL.appending(queryItems:)();

    (*(v7 + 8))(v3, v6);
    v8 = 0;
  }

  (*(v7 + 56))(v5, v8, 1, v6);
  return sub_1000B7D78(v5);
}

uint64_t sub_1000B55F0(uint64_t a1)
{
  sub_1000BA8F0(a1);
  if (!v1)
  {
    sub_1000B881C();
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000B562C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  sub_1000B2B3C();
  v5 = *(AssociatedTypeWitness - 8);
  if ((*(v5 + 48))(v4, 1, AssociatedTypeWitness) == 1)
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v4, AssociatedTypeWitness);
    return v8;
  }
}

uint64_t sub_1000B5858(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 112);
  v3[6] = *(v4 + 88);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v7;
  v3[13] = v6;

  return _swift_task_switch(sub_1000B59A4, v7, v6);
}

uint64_t sub_1000B59A4()
{
  v10 = v0[5];

  v1 = ResourceID.init(_:)();
  v3 = v2;
  v0[14] = v2;
  v9 = (*(v10 + 48) + **(v10 + 48));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1000B5B0C;
  v5 = v0[10];
  v7 = v0[5];
  v6 = v0[6];

  return v9(v5, v1, v3, v6, v7);
}

uint64_t sub_1000B5B0C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1000B5D04;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1000B5C28;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000B5C28()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_1000BAA10(v1);
  (*(v3 + 8))(v1, v2, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000B5D04()
{
  v13 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10001FDF4(v1, qword_100230610);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_10005D4E8(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch music artist for artist: %s, error: %@", v6, 0x16u);
    sub_10000D52C(v7, &qword_10021B938, &unk_1001B16A0);

    sub_100021498(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000B5F34(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 120);
  v3[6] = *(v4 + 96);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[13] = v7;
  v3[14] = v6;

  return _swift_task_switch(sub_1000B608C, v7, v6);
}

uint64_t sub_1000B608C(uint64_t a1)
{
  v2 = v1[3];
  if (v2)
  {
    v22 = v1[5];
    v3 = sub_1000B881C();
    v5 = v4;
    v1[15] = v4;
    v21 = (*(v22 + 24) + **(v22 + 24));
    v6 = swift_task_alloc();
    v1[16] = v6;
    *v6 = v1;
    v6[1] = sub_1000B62F4;
    v7 = v1[11];
    v9 = v1[5];
    v8 = v1[6];
    v10 = v1[2];

    return v21(v7, v10, v2, v3, v5, v8, v9);
  }

  else
  {
    v12 = sub_1000B881C();
    v1[18] = v13;
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = swift_task_alloc();
      v1[19] = v16;
      *v16 = v1;
      v16[1] = sub_1000B6530;
      v17 = v1[10];
      v19 = v1[5];
      v18 = v1[6];

      return sub_100020BB8(v17, v14, v15, v18, v19);
    }

    else
    {

      v20 = v1[1];

      return v20();
    }
  }
}

uint64_t sub_1000B62F4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1000B676C;
  }

  else
  {
    v5 = sub_1000B644C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B644C()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_1000BAEB0(v1);
  (*(v3 + 8))(v1, v2, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000B6530()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1000B6A24;
  }

  else
  {
    v5 = sub_1000B6688;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B6688()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_1000BAEB0(v1);
  (*(v2 + 8))(v1, v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000B676C()
{
  v19 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_10005D4E8(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1000B881C();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_10005D4E8(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_10000D52C(v8, &qword_10021B938, &unk_1001B16A0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000B6A24()
{
  v19 = v0;

  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10001FDF4(v2, qword_100230610);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_10005D4E8(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1000B881C();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_10005D4E8(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_10000D52C(v8, &qword_10021B938, &unk_1001B16A0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000B6CDC()
{
  v1[42] = v0;
  v1[43] = *v0;
  v2 = type metadata accessor for URLComponents();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[47] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[48] = v4;
  v1[49] = v3;

  return _swift_task_switch(sub_1000B6DF8, v4, v3);
}

uint64_t sub_1000B6DF8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_1000B6F24;

  return sub_10013AF88(v0 + 144, v4, v6);
}

uint64_t sub_1000B6F24()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return _swift_task_switch(sub_1000B7044, v3, v2);
}

uint64_t sub_1000B7044()
{

  sub_1000B81FC((v0 + 18));
  sub_1000B9C80((v0 + 10));
  if (v0[13] && v0[17])
  {
    sub_100009F70(&qword_10021C438, &qword_1001BD7E0);
    type metadata accessor for URLQueryItem();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1001ACB00;
    sub_10008319C((v0 + 10), (v0 + 34));
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    sub_1000831F8((v0 + 10));
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = v2[2];

  if (v3)
  {
    URLComponents.init()();
    sub_1000B9C80((v0 + 2));
    if (v0[5] && v0[9])
    {
      sub_100009F70(&qword_10021C438, &qword_1001BD7E0);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1001ACB00;
      sub_10008319C((v0 + 2), (v0 + 26));
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      sub_1000831F8((v0 + 2));
    }

    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[44];
    URLComponents.queryItems.setter();
    v7 = URLComponents.percentEncodedQuery.getter();
    sub_1000B8358(v7, v8);
    (*(v5 + 8))(v4, v6);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000B73C8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000B7568(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000B7630(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 144));
  v7 = v6[1];
  v23 = *v6;
  v24 = v7;
  v21 = a1;
  v22 = a2;
  v8 = v5[5];
  v19 = v5[6];
  v20 = v8;
  v18 = v5[7];
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v9)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v9);
    v13 = v20;
    v17 = *(&v18 + 1);
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v14 = v2;
    v15 = a1;
    v16 = a2;
    sub_1000B7490(v12, sub_1000BB5B4, &v13, &type metadata for () + 8);
  }
}

uint64_t sub_1000B77B8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *(v1 + v4);
  v15 = a1;
  v16 = v5;
  v6 = *(v3 + 96);
  v13 = *(v3 + 80);
  type metadata accessor for Array();
  v12 = *(v3 + 104);
  v14 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    *(v1 + v4) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    v11[0] = v6;
    v11[1] = v12;
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v1;
    v11[3] = a1;
    sub_1000B7490(v10, sub_100031BA4, v11, &type metadata for () + 8);
  }
}

uint64_t sub_1000B79A0@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  v4 = *(*v1 + 168);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_1000B7AF4(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 168);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000B7BEC(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000B7CE4(uint64_t a1)
{
  v2 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000F680(a1, &v6 - v3);
  return sub_1000B7D78(v4);
}

uint64_t sub_1000B7D78(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = *(v4 + 184);
  swift_beginAccess();
  sub_10000F680(v1 + v8, v7);
  v9 = *(v4 + 80);
  v17 = *(v4 + 96);
  v18 = v9;
  v16 = *(v4 + 112);
  sub_1000BA1A0();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = sub_10000D52C(v7, qword_100218748, &unk_1001AD110);
  if (v10)
  {
    swift_beginAccess();
    sub_1000BA254(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    v12 = v17;
    *(&v16 - 3) = v18;
    *(&v16 - 2) = v12;
    *(&v16 - 1) = v16;
    KeyPath = swift_getKeyPath();
    v14 = __chkstk_darwin(KeyPath);
    *(&v16 - 2) = v2;
    *(&v16 - 1) = a1;
    sub_1000B7490(v14, sub_1000BA2F8, (&v16 - 2), &type metadata for () + 8);
  }

  return sub_10000D52C(a1, qword_100218748, &unk_1001AD110);
}

uint64_t sub_1000B7FB0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  sub_1000BA254(a2, a1 + v4);
  return swift_endAccess();
}

void sub_1000B8028(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 192);
  v6 = *(v2 + v5);
  v18 = a1;
  v19 = v6;
  v17 = *(v4 + 80);
  sub_100009F70(&qword_10021D568, &qword_1001B47A0);
  v7 = *(v4 + 96);
  v15 = *(v4 + 112);
  v16 = v7;
  sub_1000BB21C();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    v9 = *(v2 + v5);
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v8);
    v12 = v16;
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v13 = v2;
    v14 = a1;
    sub_1000B7490(v11, sub_1000BB3DC, &v12, &type metadata for () + 8);
  }
}

double sub_1000B81B0@<D0>(_OWORD *a1@<X8>)
{
  sub_1000B9C80(v6);
  sub_10008319C(v6, &v5);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

double sub_1000B81FC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v10 = *(*v1 + 80);
  v11 = v4;
  v12 = *(v3 + 112);
  KeyPath = swift_getKeyPath();
  v8 = v1;
  v9 = a1;
  sub_1000B7490(KeyPath, sub_1000B9DE8, &v7, &type metadata for () + 8);
  sub_1000831F8(a1);

  return result;
}

uint64_t sub_1000B82B4(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + *(*a1 + 232));
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_10008319C(a2, &v6);
}

uint64_t sub_1000B8358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3 + *(v6 + 240);
  v23 = *v7;
  v21 = a1;
  v22 = a2;
  v20 = *(v6 + 80);
  sub_100009F70(&qword_100219F00, &qword_1001AF350);
  v8 = *(v6 + 96);
  v18 = *(v6 + 112);
  v19 = v8;
  sub_10007CA7C();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v9)
  {
    *v7 = a1;
    *(v7 + 1) = a2;
  }

  else
  {
    __chkstk_darwin(v9);
    v13 = v20;
    v17 = *(&v18 + 1);
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v14 = v3;
    v15 = a1;
    v16 = a2;
    sub_1000B7490(v12, sub_1000BAE58, &v13, &type metadata for () + 8);
  }
}

uint64_t sub_1000B84F4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*v2 + 104) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v24 - v8;
  v10 = sub_1000B878C();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_100009F70(&qword_100219EF8, &qword_1001AF310);
    v14 = swift_allocObject();
    v24[1] = a2;
    v15 = v14;
    *(v14 + 16) = xmmword_1001ACB00;
    (*(v4 + 168))(v5, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = sub_1000FC8F4(AssociatedTypeWitness, AssociatedConformanceWitness);
    v19 = v18;
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    v15[7] = &type metadata for String;
    v20 = sub_100096600();
    v15[4] = v17;
    v15[5] = v19;
    v15[12] = &type metadata for String;
    v15[13] = v20;
    v15[8] = v20;
    v15[9] = v12;
    v15[10] = v13;
    return String.init(format:_:)();
  }

  else
  {
    (*(v4 + 168))(v5, v4);
    v22 = swift_getAssociatedConformanceWitness();
    v23 = sub_1000FC8F4(AssociatedTypeWitness, v22);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    return v23;
  }
}

id sub_1000B878C()
{
  result = sub_1000B9BF0();
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v1 = result;
      v2 = [result cityName];

      if (v2)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000B881C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v18 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  (*(v4 + 16))(v6, v0 + *(v1 + 208), v3);
  v12 = *(v2 - 8);
  if ((*(v12 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  sub_1000755BC(v2, v7, v11);
  (*(v12 + 8))(v6, v2);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v11, v9);
    return 0;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v13 + 8))(v11, AssociatedTypeWitness);
  return v16;
}

uint64_t sub_1000B8B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v79 = a3;
  v73 = a2;
  v72 = a1;
  v5 = *v4;
  v6 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v6 - 8);
  v8 = &v69 - v7;
  v9 = v5[10];
  v78 = type metadata accessor for Optional();
  v77 = *(v78 - 8);
  v10 = __chkstk_darwin(v78);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v69 - v12;
  v14 = v5[16];
  v69 = *(v9 - 8);
  v15 = v69 + 56;
  v16 = *(v69 + 56);
  v16(v4 + v14, 1, 1, v9);
  v75 = v15;
  v74 = v16;
  v16(v13, 1, 1, v9);
  v17 = *(*v4 + 136);
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 32))(v4 + v17, v13, v18);
  v19 = (v4 + *(*v4 + 144));
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(v4 + *(*v4 + 152)) = 1;
  *(v4 + *(*v4 + 160)) = static Array._allocateUninitialized(_:)();
  v20 = *(*v4 + 168);
  v71 = v5[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v4 + v20, 1, 1, AssociatedTypeWitness);
  v22 = *(*v4 + 176);
  v70 = v5[12];
  v23 = swift_getAssociatedTypeWitness();
  (*(*(v23 - 8) + 56))(v4 + v22, 1, 1, v23);
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_1000B9AEC(v8, v4 + *(*v4 + 184));
  *(v4 + *(*v4 + 192)) = 0;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  memset(v86, 0, sizeof(v86));
  sub_10008319C(&v82, v81);
  sub_1000831F8(v86);
  v25 = (v4 + *(*v4 + 232));
  v26 = v85;
  v25[2] = v84;
  v25[3] = v26;
  v27 = v83;
  *v25 = v82;
  v25[1] = v27;
  v28 = (v4 + *(*v4 + 240));
  *v28 = 0;
  v28[1] = 0;
  v29 = v4 + *(*v4 + 248);
  *v29 = LocalizedStringKey.init(stringLiteral:)();
  *(v29 + 8) = v30;
  *(v29 + 16) = v31 & 1;
  *(v29 + 24) = v32;
  v33 = (v4 + *(*v4 + 256));
  v34 = objc_opt_self();
  v35 = [v34 mainBundle];
  v87._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD00000000000002ALL;
  v36._object = 0x80000001001BF370;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v87);

  *v33 = v38;
  v39 = (v4 + *(*v4 + 264));
  v40 = [v34 mainBundle];
  v88._object = 0xE000000000000000;
  v41 = v69;
  v42._countAndFlagsBits = 0xD00000000000002DLL;
  v42._object = 0x80000001001C0290;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v88._countAndFlagsBits = 0;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v40, v43, v88);

  *v39 = v44;
  v45 = (v4 + *(*v4 + 272));
  v46 = [v34 mainBundle];
  v89._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD00000000000003ALL;
  v47._object = 0x80000001001C02C0;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v89._countAndFlagsBits = 0;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v89);

  *v45 = v49;
  v50 = (v4 + *(*v4 + 280));
  *v50 = 0xD000000000000010;
  v50[1] = 0x80000001001C0300;
  v51 = (v4 + *(*v4 + 288));
  v52 = [v34 mainBundle];
  v90._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD000000000000029;
  v53._object = 0x80000001001C0320;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v90);

  *v51 = v55;
  v56 = (v4 + *(*v4 + 296));
  v57 = [v34 mainBundle];
  v91._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0xD000000000000037;
  v58._object = 0x80000001001C0350;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v91);

  *v56 = v60;
  v61 = v72;
  v62 = v73;
  ObservationRegistrar.init()();
  (*(v41 + 16))(v4 + *(*v4 + 200), v61, v9);
  v63 = *(v41 + 48);
  if (v63(v62, 1, v9) == 1)
  {
    v64 = v76;
    (*(v41 + 32))(v76, v61, v9);
    v65 = v63(v62, 1, v9);
    v66 = v78;
    v67 = v77;
    if (v65 != 1)
    {
      (*(v77 + 8))(v62, v78);
    }
  }

  else
  {
    (*(v41 + 8))(v61, v9);
    v64 = v76;
    (*(v41 + 32))(v76, v62, v9);
    v66 = v78;
    v67 = v77;
  }

  v74(v64, 0, 1, v9);
  (*(v67 + 32))(v4 + *(*v4 + 208), v64, v66);
  (*(*(v71 - 8) + 32))(v4 + *(*v4 + 216), v79);
  (*(*(v70 - 8) + 32))(v4 + *(*v4 + 224), v80);
  return v4;
}

char *sub_1000B9574()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v2], v4);
  v5(&v0[*(*v0 + 136)], v4);

  v6 = *(*v0 + 168);
  v7 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(&v0[v6], v8);
  v9 = *(*v0 + 176);
  v10 = *(v1 + 96);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(&v0[v9], v11);
  sub_10000D52C(&v0[*(*v0 + 184)], qword_100218748, &unk_1001AD110);

  (*(*(v3 - 8) + 8))(&v0[*(*v0 + 200)], v3);
  v5(&v0[*(*v0 + 208)], v4);
  (*(*(v7 - 8) + 8))(&v0[*(*v0 + 216)], v7);
  (*(*(v10 - 8) + 8))(&v0[*(*v0 + 224)], v10);

  v12 = *(*v0 + 304);
  v13 = type metadata accessor for ObservationRegistrar();
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  return v0;
}

uint64_t sub_1000B9A7C()
{
  sub_1000B9574();

  return swift_deallocClassInstance();
}

uint64_t sub_1000B9AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(qword_100218748, &unk_1001AD110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B9B5C()
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  return *(v0 + *(*v0 + 144));
}

uint64_t sub_1000B9BF0()
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  return *(v0 + *(*v0 + 192));
}

__n128 sub_1000B9C80@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  v4 = v1 + *(*v1 + 232);
  v5 = *(v4 + 16);
  *a1 = *v4;
  *(a1 + 16) = v5;
  result = *(v4 + 32);
  v7 = *(v4 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_1000B9D2C@<X0>(_OWORD *a1@<X8>)
{
  sub_1000B9C80(v6);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  return sub_10008319C(v6, &v5);
}

double sub_1000B9D7C(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_10008319C(v5, &v4);
  return sub_1000B81FC(v5);
}

__n128 sub_1000B9DD4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1000B9E04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_1000A0020(*(*v4 + 80), *(*(*v4 + 104) + 8));
  sub_1000B881C();
  v11 = v10;
  if (v10)
  {
  }

  v12 = sub_1000B2898();
  v13 = [a4 isHidden];
  v14 = *(a1 + 72);
  if (!v14)
  {
    v15 = 0;
    v16 = 0;
    if ((v11 != 0 || (v9 & 1) == 0) | (v12 | v13) & 1)
    {
      return v16 & 1;
    }

    goto LABEL_13;
  }

  if (*(a1 + 64) == a2 && v14 == a3)
  {
    if (!((v11 != 0 || (v9 & 1) == 0) | (v12 | v13) & 1))
    {
      v15 = 1;
LABEL_13:
      v16 = v15 ^ 1;
      return v16 & 1;
    }
  }

  else
  {
    v17 = v11 != 0;
    v18 = v13;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (!((v17 || (v9 & 1) == 0) | (v12 | v18) & 1))
    {
      v15 = v19;
      goto LABEL_13;
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1000B9F74()
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  return *(v0 + *(*v0 + 240));
}

uint64_t sub_1000BA018(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (!v2 || !*(v2 + 16))
  {
    goto LABEL_7;
  }

  v4 = sub_1000D8558(a2);
  if ((v5 & 1) == 0)
  {

LABEL_7:
    v7 = 1;
    return v7 & 1;
  }

  v6 = *(*(v2 + 56) + v4);

  if (v6 <= 1 || v6 == 2)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v9 ^ 1;
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1000BA110()
{
  KeyPath = swift_getKeyPath();
  sub_1000B7328(KeyPath);

  return *(v0 + *(*v0 + 160));
}

unint64_t sub_1000BA1A0()
{
  result = qword_10021D558;
  if (!qword_10021D558)
  {
    sub_10000B3DC(qword_100218748, &unk_1001AD110);
    sub_1000BB2D0(&qword_10021D560, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D558);
  }

  return result;
}

uint64_t sub_1000BA254(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(qword_100218748, &unk_1001AD110);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1000BA368(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 128);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v20 = *(v5 + 88);
  v12 = *(v5 + 104);
  v13 = *(v4 + 120);
  v19 = v12;
  v21 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v19 - 6) = v6;
    v16 = v19;
    *(&v19 - 40) = v20;
    *(&v19 - 24) = v16;
    *(&v19 - 1) = v13;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = a1;
    sub_1000B7490(v18, sub_1000BB46C, (&v19 - 2), &type metadata for () + 8);
  }

  return result;
}

double sub_1000BA62C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 136);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v20 = *(v5 + 88);
  v12 = *(v5 + 104);
  v13 = *(v4 + 120);
  v19 = v12;
  v21 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v19 - 6) = v6;
    v16 = v19;
    *(&v19 - 40) = v20;
    *(&v19 - 24) = v16;
    *(&v19 - 1) = v13;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = a1;
    sub_1000B7490(v18, sub_1000BB43C, (&v19 - 2), &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_1000BA8F0(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 48;
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 8);
      if (*(v4 - 16) && *(v4 - 16) != 2)
      {

        return v5;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v6)
      {
        return v5;
      }

      ++v3;

      v4 += 24;
      if (v2 == v3)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

double sub_1000BAA10(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = v3[21];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v19 = v3[10];
  v20 = *(v4 + 6);
  v12 = v3[15];
  v13 = v21;
  v22 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v3)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v18 - 6) = v19;
    *(&v18 - 5) = v6;
    *(&v18 - 2) = v20;
    *(&v18 - 2) = v5;
    *(&v18 - 1) = v12;
    KeyPath = swift_getKeyPath();
    v17 = __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v13;
    sub_1000B7490(v17, sub_1000BAD3C, (&v18 - 4), &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_1000BAD58@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000BA110();
}

uint64_t sub_1000BADCC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000B9F74();
  a1[1] = v2;
}

uint64_t sub_1000BAE0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000B8358(v1, v2);
}

uint64_t sub_1000BAE58()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 240));
  *v2 = v0[3];
  v2[1] = v1;
}

double sub_1000BAEB0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 96);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = *(v4 + 176);
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v12, v8);
  v13 = *(v5 + 104);
  v19 = *(v5 + 80);
  v20 = v13;
  v21 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v5) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v9 + 8))(v11, v8);
  if (v5)
  {
    swift_beginAccess();
    (*(v9 + 24))(v2 + v12, a1, v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    v16 = v20;
    *(&v19 - 3) = v19;
    *(&v19 - 4) = v7;
    *(&v19 - 24) = v16;
    *(&v19 - 1) = v6;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = a1;
    sub_1000B7490(v18, sub_1000BB200, (&v19 - 2), &type metadata for () + 8);
  }

  return result;
}

unint64_t sub_1000BB21C()
{
  result = qword_10021D570;
  if (!qword_10021D570)
  {
    sub_10000B3DC(&qword_10021D568, &qword_1001B47A0);
    sub_1000BB2D0(&qword_10021D578, sub_1000BB318, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D570);
  }

  return result;
}