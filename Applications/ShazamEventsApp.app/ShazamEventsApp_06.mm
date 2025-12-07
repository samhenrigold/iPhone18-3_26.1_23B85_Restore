uint64_t sub_1000BB2D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000BB318()
{
  result = qword_1002231A0;
  if (!qword_1002231A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002231A0);
  }

  return result;
}

id sub_1000BB364@<X0>(void *a1@<X8>)
{
  v2 = sub_1000B9BF0();
  *a1 = v2;

  return v2;
}

void sub_1000BB3A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000B8028(v1);
}

void sub_1000BB3DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 192);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

uint64_t sub_1000BB48C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BB4A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B4230();
  *a1 = result;
  return result;
}

uint64_t sub_1000BB528@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000B9B5C();
  a1[1] = v2;
}

uint64_t sub_1000BB568(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000B7630(v1, v2);
}

uint64_t sub_1000BB5B4()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 144));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1000BB640(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000BB658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000BB6A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000BB71C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for AccessibilityActionKind();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AccessibilityChildBehavior();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009F70(&qword_10021D580, &qword_1001B4768);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v40 = sub_100009F70(&qword_10021D588, &qword_1001B4770);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v12 = &v37 - v11;
  v41 = sub_100009F70(&qword_10021D590, &qword_1001B4778);
  __chkstk_darwin(v41);
  v14 = &v37 - v13;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v15 = sub_100009F70(&qword_10021D598, &qword_1001B4780);
  sub_1000BBCD8(v2, &v10[*(v15 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v16 = sub_10000D1EC(&qword_10021D5A0, &qword_10021D580, &qword_1001B4768, &protocol conformance descriptor for VStack<A>);
  View.accessibilityElement(children:)();
  (*(v5 + 8))(v7, v39);
  sub_10000D52C(v10, &qword_10021D580, &qword_1001B4768);
  v17 = swift_allocObject();
  v18 = *(v2 + 48);
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(v2 + 64);
  v19 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v19;
  sub_1000BD6FC(v2, v46);
  v20 = v37;
  static AccessibilityActionKind.default.getter();
  v46[0] = v8;
  v46[1] = v16;
  swift_getOpaqueTypeConformance2();
  v21 = v40;
  View.accessibilityAction(_:_:)();

  (*(v42 + 8))(v20, v43);
  (*(v38 + 8))(v12, v21);
  v22 = static Alignment.center.getter();
  v24 = v23;
  v25 = &v14[*(sub_100009F70(&qword_10021D5A8, &qword_1001B4788) + 36)];
  *v25 = static Alignment.center.getter();
  v25[1] = v26;
  v27 = sub_100009F70(&qword_10021D5B0, &qword_1001B4790);
  sub_1000BC9E0(v2, (v25 + *(v27 + 44)));
  v28 = (v25 + *(sub_100009F70(&qword_10021D5B8, &qword_1001B4798) + 36));
  *v28 = v22;
  v28[1] = v24;
  v29 = swift_allocObject();
  v30 = *(v2 + 48);
  *(v29 + 48) = *(v2 + 32);
  *(v29 + 64) = v30;
  *(v29 + 80) = *(v2 + 64);
  v31 = *(v2 + 16);
  *(v29 + 16) = *v2;
  *(v29 + 32) = v31;
  v32 = &v14[*(v41 + 36)];
  *v32 = sub_1000BCDF8;
  v32[1] = 0;
  v32[2] = sub_1000BD734;
  v32[3] = v29;
  v47[0] = *(v2 + 16);
  v45 = v47[0];
  v33 = swift_allocObject();
  v34 = *(v2 + 48);
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = v34;
  *(v33 + 80) = *(v2 + 64);
  v35 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v35;
  sub_1000BD6FC(v2, v46);
  sub_1000BD6FC(v2, v46);
  sub_10000D58C(v47, v46, &qword_10021D568, &qword_1001B47A0);
  sub_100009F70(&qword_10021D568, &qword_1001B47A0);
  sub_1000BD7AC();
  sub_1000BB21C();
  View.onChange<A>(of:initial:_:)();

  sub_10000D52C(v47, &qword_10021D568, &qword_1001B47A0);
  return sub_10000D52C(v14, &qword_10021D590, &qword_1001B4778);
}

uint64_t sub_1000BBCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = sub_100009F70(&qword_10021D620, &qword_1001B47F8);
  v4 = __chkstk_darwin(v3 - 8);
  v103 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v102 = &v88 - v6;
  v7 = type metadata accessor for RoundedCornerStyle();
  v93 = *(v7 - 8);
  v94 = v7;
  __chkstk_darwin(v7);
  v91 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Image.ResizingMode();
  v9 = *(v90 - 8);
  __chkstk_darwin(v90);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100009F70(&qword_10021D628, &qword_1001B4800);
  __chkstk_darwin(v92);
  v13 = (&v88 - v12);
  v99 = sub_100009F70(&qword_10021D630, &qword_1001B4808);
  __chkstk_darwin(v99);
  v95 = &v88 - v14;
  v97 = sub_100009F70(&qword_10021D638, &qword_1001B4810);
  __chkstk_darwin(v97);
  v98 = &v88 - v15;
  v16 = type metadata accessor for OpacityTransition();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v88 - v21;
  v96 = sub_100009F70(&qword_10021D640, &qword_1001B4818);
  __chkstk_darwin(v96);
  v89 = &v88 - v23;
  v24 = sub_100009F70(&qword_10021D648, &qword_1001B4820);
  v25 = __chkstk_darwin(v24 - 8);
  v101 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v88 - v27;
  v100 = a1;
  v111 = *(a1 + 40);
  sub_100009F70(&qword_10021D600, &unk_1001BC670);
  State.wrappedValue.getter();
  v105 = v28;
  if (v106)
  {
    v89 = v106;
    Image.init(uiImage:)();
    v29 = v90;
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v90);
    v88 = Image.resizable(capInsets:resizingMode:)();

    (*(v9 + 8))(v11, v29);
    OpacityTransition.init()();
    (*(v17 + 16))(v20, v22, v16);
    sub_1000BEF78(&qword_10021D618, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v30 = AnyTransition.init<A>(_:)();
    (*(v17 + 8))(v22, v16);
    if (qword_100218430 != -1)
    {
      swift_once();
    }

    v32 = v93;
    v31 = v94;
    v33 = v91;
    (*(v93 + 104))(v91, enum case for RoundedCornerStyle.continuous(_:), v94);
    v34 = v13 + *(sub_100009F70(&qword_10021D6A8, &qword_1001B4850) + 36);
    v35 = type metadata accessor for UnevenRoundedRectangle();
    (*(v32 + 16))(&v34[*(v35 + 20)], v33, v31);
    RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    (*(v32 + 8))(v33, v31);
    *v34 = v37;
    *(v34 + 1) = v39;
    *(v34 + 2) = v41;
    *(v34 + 3) = v43;
    *&v34[*(sub_100009F70(&qword_10021D6C8, &unk_1001B4860) + 36)] = 256;
    *v13 = v88;
    v13[1] = v30;
    *(v13 + *(v92 + 36)) = 1;
    sub_1000BF1E8();
    v44 = v95;
    View.accessibilityIdentifier(_:)();
    sub_10000D52C(v13, &qword_10021D628, &qword_1001B4800);
    v45 = static Alignment.center.getter();
    v47 = v46;
    sub_100009F70(&qword_1002199C0, &qword_1001B2480);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1001ACB00;
    *(v48 + 32) = static Color.clear.getter();
    *(v48 + 40) = static Color.white.getter();
    static UnitPoint.bottom.getter();
    Gradient.init(colors:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v49 = v119;
    v50 = v98;
    v51 = v44 + *(v99 + 36);
    *v51 = v45;
    *(v51 + 8) = v47;
    *(v51 + 16) = v49;
    v52 = v121;
    *(v51 + 24) = v120;
    *(v51 + 40) = v52;
    sub_10000D58C(v44, v50, &qword_10021D630, &qword_1001B4808);
    swift_storeEnumTagMultiPayload();
    sub_1000BF104();
    sub_1000BF3E4();
    _ConditionalContent<>.init(storage:)();

    sub_10000D52C(v44, &qword_10021D630, &qword_1001B4808);
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v53 = v119;
    v54 = v120;
    v55 = v121;
    v95 = *(&v121 + 1);
    v93 = *(&v120 + 1);
    v94 = v122;
    OpacityTransition.init()();
    (*(v17 + 16))(v20, v22, v16);
    sub_1000BEF78(&qword_10021D618, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v56 = AnyTransition.init<A>(_:)();
    (*(v17 + 8))(v22, v16);
    v118 = v54;
    v117 = v55;
    *&v111 = 6;
    *(&v111 + 1) = v53;
    LOBYTE(v112) = v54;
    *(&v112 + 1) = v106;
    DWORD1(v112) = *(&v106 + 3);
    *(&v112 + 1) = v93;
    LOBYTE(v113) = v55;
    *(&v113 + 1) = v116[0];
    DWORD1(v113) = *(v116 + 3);
    *(&v113 + 1) = v95;
    *&v114 = v94;
    *(&v114 + 1) = v56;
    sub_100009F70(&qword_10021D650, &qword_1001B4828);
    sub_1000BEFC0();
    v57 = v89;
    View.accessibilityHidden(_:)();

    v58 = static Alignment.center.getter();
    v60 = v59;
    sub_100009F70(&qword_1002199C0, &qword_1001B2480);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1001ACB00;
    *(v61 + 32) = static Color.clear.getter();
    *(v61 + 40) = static Color.white.getter();
    static UnitPoint.bottom.getter();
    Gradient.init(colors:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v62 = v123;
    v63 = &v57[*(v96 + 36)];
    *v63 = v58;
    *(v63 + 1) = v60;
    *(v63 + 2) = v62;
    v64 = v125;
    *(v63 + 24) = v124;
    *(v63 + 40) = v64;
    sub_10000D58C(v57, v98, &qword_10021D640, &qword_1001B4818);
    swift_storeEnumTagMultiPayload();
    sub_1000BF104();
    sub_1000BF3E4();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v57, &qword_10021D640, &qword_1001B4818);
  }

  v65 = v100;
  v66 = v100[1];
  v99 = *v100;
  v67 = v100[2];

  v68 = sub_10016E564(v67);
  v70 = v69;
  v71 = v65[3];
  v72 = v65[4];
  sub_100009F70(&qword_100218DC0, &qword_1001AD860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  sub_1000BF57C(v71, v72);
  v74 = static Edge.Set.horizontal.getter();
  *(inited + 32) = v74;
  v75 = static Edge.Set.bottom.getter();
  *(inited + 33) = v75;
  v76 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v74)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v75)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  v77 = v105;
  EdgeInsets.init(_all:)();
  LOBYTE(v116[0]) = 0;
  *&v106 = v99;
  *(&v106 + 1) = v66;
  *&v107 = v68;
  *(&v107 + 1) = v70;
  *&v108 = v71;
  *(&v108 + 1) = v72;
  LOBYTE(v109) = v76;
  *(&v109 + 1) = v78;
  *&v110[0] = v79;
  *(&v110[0] + 1) = v80;
  *&v110[1] = v81;
  BYTE8(v110[1]) = 0;
  sub_100009F70(&qword_10021D6F8, &qword_1001B4880);
  sub_1000BFAA0(&qword_10021D700, &qword_10021D6F8, &qword_1001B4880, sub_1000BF58C);
  v82 = v102;
  View.accessibilityIdentifier(_:)();
  v113 = v108;
  v114 = v109;
  v115[0] = v110[0];
  *(v115 + 9) = *(v110 + 9);
  v111 = v106;
  v112 = v107;
  sub_10000D52C(&v111, &qword_10021D6F8, &qword_1001B4880);
  v83 = v101;
  sub_10000D58C(v77, v101, &qword_10021D648, &qword_1001B4820);
  v84 = v103;
  sub_10000D58C(v82, v103, &qword_10021D620, &qword_1001B47F8);
  v85 = v104;
  sub_10000D58C(v83, v104, &qword_10021D648, &qword_1001B4820);
  v86 = sub_100009F70(&qword_10021D710, &qword_1001B4888);
  sub_10000D58C(v84, v85 + *(v86 + 48), &qword_10021D620, &qword_1001B47F8);
  sub_10000D52C(v82, &qword_10021D620, &qword_1001B47F8);
  sub_10000D52C(v77, &qword_10021D648, &qword_1001B4820);
  sub_10000D52C(v84, &qword_10021D620, &qword_1001B47F8);
  return sub_10000D52C(v83, &qword_10021D648, &qword_1001B4820);
}

double sub_1000BC9E0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100009F70(&qword_10021D608, &qword_1001B47E8);
  v5 = __chkstk_darwin(v4 - 8);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v27 = &v26 - v7;
  v8 = type metadata accessor for OpacityTransition();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for Image.ResizingMode();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 40);
  sub_100009F70(&qword_10021D600, &unk_1001BC670);
  State.wrappedValue.getter();
  if (v29)
  {
    v26 = v29;
    Image.init(uiImage:)();
    (*(v16 + 104))(v18, enum case for Image.ResizingMode.stretch(_:), v15);
    v19 = Image.resizable(capInsets:resizingMode:)();

    (*(v16 + 8))(v18, v15);
    OpacityTransition.init()();
    (*(v9 + 16))(v12, v14, v8);
    sub_1000BEF78(&qword_10021D618, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v20 = AnyTransition.init<A>(_:)();

    (*(v9 + 8))(v14, v8);

    v21 = 257;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v20 = 0;
  }

  *&v30 = 6;
  sub_100019990();
  v22 = v27;
  View.accessibilityHidden(_:)();
  v23 = v28;
  sub_10000D58C(v22, v28, &qword_10021D608, &qword_1001B47E8);
  *a2 = v19;
  a2[1] = 0;
  a2[2] = v21;
  a2[3] = v20;
  v24 = sub_100009F70(&qword_10021D610, &qword_1001B47F0);
  sub_10000D58C(v23, a2 + *(v24 + 48), &qword_10021D608, &qword_1001B47E8);
  sub_1000BEEF8(v19, 0, v21, v20);
  sub_1000BEF38(v19, 0, v21, v20);
  sub_10000D52C(v22, &qword_10021D608, &qword_1001B47E8);
  sub_10000D52C(v23, &qword_10021D608, &qword_1001B47E8);
  return sub_1000BEF38(v19, 0, v21, v20);
}

void sub_1000BCE24(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = *a1;
  v20 = *(a2 + 7);
  v18[0] = *(a2 + 7);
  v19 = v7;
  sub_100009F70(&qword_10021D5F8, &qword_1001B47C0);
  State.wrappedValue.setter();
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v18[0] = v20;
  State.wrappedValue.getter();
  v11 = v19;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = v10;

  sub_1000BD6FC(a2, v18);
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = *a2;
  *(v15 + 72) = *(a2 + 1);
  v17 = *(a2 + 3);
  *(v15 + 88) = *(a2 + 2);
  *(v15 + 104) = v17;
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = v9;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 120) = a2[8];
  *(v15 + 56) = v16;
  *(v15 + 128) = v11;
  *(v15 + 136) = 0x4063400000000000;
  sub_10013F12C(0, 0, v6, &unk_1001B47E0, v15);
}

void sub_1000BD00C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[2];
  v17[0] = *(a3 + 7);
  sub_100009F70(&qword_10021D5F8, &qword_1001B47C0);
  State.wrappedValue.getter();
  v10 = v18;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = v9;

  sub_1000BD6FC(a3, v17);
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = *a3;
  *(v14 + 72) = *(a3 + 1);
  v16 = *(a3 + 3);
  *(v14 + 88) = *(a3 + 2);
  *(v14 + 104) = v16;
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v8;
  *(v14 + 40) = v7;
  *(v14 + 48) = v9;
  *(v14 + 120) = a3[8];
  *(v14 + 56) = v15;
  *(v14 + 128) = v10;
  *(v14 + 136) = 0x4063400000000000;
  sub_10013F12C(0, 0, v6, &unk_1001B47D0, v14);
}

uint64_t sub_1000BD1BC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 72) = type metadata accessor for MainActor();
  *(v9 + 80) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 88) = v11;
  *(v9 + 96) = v10;

  return _swift_task_switch(sub_1000BD25C, v11, v10);
}

uint64_t sub_1000BD25C()
{
  *(v0 + 16) = *(*(v0 + 48) + 40);
  sub_100009F70(&qword_10021D600, &unk_1001BC670);
  State.wrappedValue.getter();
  v1 = *(v0 + 32);
  *(v0 + 104) = v1;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1000BD33C;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);

  return sub_10016E640(v1, v5, v3, v4);
}

uint64_t sub_1000BD33C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    a1 = 0;
  }

  *(v4 + 120) = 0;
  *(v4 + 128) = a1;

  return _swift_task_switch(sub_1000BD464, 0, 0);
}

uint64_t sub_1000BD464(uint64_t a1)
{
  *(v1 + 136) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BD4F0, v3, v2);
}

uint64_t sub_1000BD4F0()
{
  v1 = v0[16];
  v2 = v0[6];

  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v4 = v0[11];
  v5 = v0[12];

  return _swift_task_switch(sub_1000BD5BC, v4, v5);
}

uint64_t sub_1000BD5BC()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BD624(uint64_t a1, void *a2)
{
  v2 = a2;
  sub_100009F70(&qword_10021D600, &unk_1001BC670);
  return State.wrappedValue.setter();
}

uint64_t sub_1000BD6CC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1000BD73C()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1000BD7AC()
{
  result = qword_10021D5C0;
  if (!qword_10021D5C0)
  {
    sub_10000B3DC(&qword_10021D590, &qword_1001B4778);
    sub_1000BD864();
    sub_10000D1EC(&qword_10021D5E8, &qword_10021D5F0, &unk_1001B47B0, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D5C0);
  }

  return result;
}

unint64_t sub_1000BD864()
{
  result = qword_10021D5C8;
  if (!qword_10021D5C8)
  {
    sub_10000B3DC(&qword_10021D5A8, &qword_1001B4788);
    sub_1000BD91C();
    sub_10000D1EC(&qword_10021D5E0, &qword_10021D5B8, &qword_1001B4798, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D5C8);
  }

  return result;
}

unint64_t sub_1000BD91C()
{
  result = qword_10021D5D0;
  if (!qword_10021D5D0)
  {
    sub_10000B3DC(&qword_10021D5D8, &qword_1001B47A8);
    sub_10000B3DC(&qword_10021D580, &qword_1001B4768);
    sub_10000D1EC(&qword_10021D5A0, &qword_10021D580, &qword_1001B4768, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000BEF78(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D5D0);
  }

  return result;
}

uint64_t sub_1000BDA48(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[16];
  v10 = v1[17];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000214E4;

  return sub_1000BD1BC(v9, v10, a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_1000BDB30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v65 = type metadata accessor for AccessibilityTraits();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_10021D718, &qword_1001B4940);
  __chkstk_darwin(v7);
  v9 = &v58 - v8;
  v10 = sub_100009F70(&qword_10021D720, &qword_1001B4948);
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  v13 = sub_100009F70(&qword_10021D728, &qword_1001B4950);
  v14 = *(v13 - 8);
  v58 = v13;
  v59 = v14;
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v17 = sub_100009F70(&qword_10021D730, &unk_1001B4958);
  sub_1000BE120(v2, &v9[*(v17 + 44)]);
  v9[*(v7 + 36)] = 0;
  v18 = *v2;
  v67 = *(v2 + 1);
  v68 = v18;
  v19 = v2[4];
  v20 = v2[5];
  v21 = swift_allocObject();
  v22 = *(v2 + 1);
  v21[1] = *v2;
  v21[2] = v22;
  v21[3] = *(v2 + 2);
  sub_1000BF7C4(&v68, v66);
  sub_10000D58C(&v67, v66, &qword_100219F00, &qword_1001AF350);
  sub_1000BF57C(v19, v20);
  sub_1000BF820();
  View.onTapGesture(count:perform:)();

  sub_10000D52C(v9, &qword_10021D718, &qword_1001B4940);
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v12[*(sub_100009F70(&qword_10021D750, &qword_1001B4978) + 36)];
  *v31 = v2;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v2) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v12[*(sub_100009F70(&qword_10021D758, &qword_1001B4980) + 36)];
  *v40 = v2;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v2) = static Edge.Set.trailing.getter();
  v41 = &v12[*(sub_100009F70(&qword_10021D760, &qword_1001B4988) + 36)];
  *v41 = v2;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  v41[40] = 1;
  v42 = [objc_opt_self() tertiarySystemBackgroundColor];
  v43 = Color.init(uiColor:)();
  LOBYTE(v9) = static Edge.Set.all.getter();
  v44 = &v12[*(sub_100009F70(&qword_10021D768, &qword_1001B4990) + 36)];
  *v44 = v43;
  v44[8] = v9;
  v45 = &v12[*(v10 + 36)];
  v46 = *(type metadata accessor for RoundedRectangle() + 20);
  v47 = enum case for RoundedCornerStyle.continuous(_:);
  v48 = type metadata accessor for RoundedCornerStyle();
  (*(*(v48 - 8) + 104))(&v45[v46], v47, v48);
  __asm { FMOV            V0.2D, #10.0 }

  *v45 = _Q0;
  *&v45[*(sub_100009F70(&qword_100218928, &unk_1001ADC30) + 36)] = 256;
  static AccessibilityChildBehavior.combine.getter();
  v54 = sub_1000BF904();
  View.accessibilityElement(children:)();
  (*(v60 + 8))(v6, v61);
  sub_10000D52C(v12, &qword_10021D720, &qword_1001B4948);
  v55 = v62;
  static AccessibilityTraits.isButton.getter();
  v66[0] = v10;
  v66[1] = v54;
  swift_getOpaqueTypeConformance2();
  v56 = v58;
  View.accessibilityAddTraits(_:)();
  (*(v63 + 8))(v55, v65);
  return (*(v59 + 8))(v16, v56);
}

uint64_t sub_1000BE120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v2 = sub_100009F70(&qword_10021D798, &qword_1001B4998);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v53 = sub_100009F70(&qword_10021D7A0, &unk_1001B49A0) - 8;
  v5 = __chkstk_darwin(v53);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v47 = &v45 - v8;
  __chkstk_darwin(v7);
  v49 = &v45 - v9;
  v10 = sub_100009F70(&qword_10021B4D8, &qword_1001B1000);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v46 = sub_100009F70(&qword_10021D7A8, &qword_1001B49B0);
  __chkstk_darwin(v46);
  v14 = &v45 - v13;
  v15 = sub_100009F70(&qword_10021D7B0, &qword_1001B49B8);
  v16 = __chkstk_darwin(v15 - 8);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v45 - v18;
  Image.init(systemName:)();
  static SymbolRenderingMode.palette.getter();
  v20 = type metadata accessor for SymbolRenderingMode();
  (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
  v21 = Image.symbolRenderingMode(_:)();

  sub_10000D52C(v12, &qword_10021B4D8, &qword_1001B1000);
  v22 = static Color.white.getter();
  v23 = static Color.blue.getter();
  v24 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  *&v54 = v21;
  *(&v54 + 1) = v22;
  *&v55 = v23;
  *(&v55 + 1) = KeyPath;
  *&v56 = v24;
  sub_100009F70(&qword_10021D7B8, &unk_1001B49F0);
  sub_1000BFC24();
  View.accessibilityIdentifier(_:)();

  v14[*(v46 + 36)] = 1;
  sub_1000BFCDC();
  v26 = v19;
  View.accessibilityHidden(_:)();
  sub_10000D52C(v14, &qword_10021D7A8, &qword_1001B49B0);
  *v4 = static HorizontalAlignment.leading.getter();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v27 = sub_100009F70(&qword_10021D7E0, &qword_1001B4A08);
  v28 = v48;
  sub_1000BE81C(v48, &v4[*(v27 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v47;
  sub_10000F618(v4, v47, &qword_10021D798, &qword_1001B4998);
  v30 = (v29 + *(v53 + 44));
  v31 = v59;
  v30[4] = v58;
  v30[5] = v31;
  v30[6] = v60;
  v32 = v55;
  *v30 = v54;
  v30[1] = v32;
  v33 = v57;
  v30[2] = v56;
  v30[3] = v33;
  v34 = v49;
  sub_10000F618(v29, v49, &qword_10021D7A0, &unk_1001B49A0);
  if (v28[4])
  {
    v35 = Image.init(systemName:)();
    static Font.body.getter();
    static Font.Weight.semibold.getter();
    v53 = Font.weight(_:)();

    v36 = swift_getKeyPath();
    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v37 = Color.opacity(_:)();
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v53 = 0;
    v37 = 0;
  }

  v38 = v50;
  sub_10000D58C(v26, v50, &qword_10021D7B0, &qword_1001B49B8);
  v39 = v51;
  sub_10000D58C(v34, v51, &qword_10021D7A0, &unk_1001B49A0);
  v40 = v52;
  sub_10000D58C(v38, v52, &qword_10021D7B0, &qword_1001B49B8);
  v41 = sub_100009F70(&qword_10021D7E8, &qword_1001B4A10);
  sub_10000D58C(v39, v40 + *(v41 + 48), &qword_10021D7A0, &unk_1001B49A0);
  v42 = (v40 + *(v41 + 64));
  v43 = v53;
  sub_1000BFD94(v35, v36, v53, v37);
  sub_1000BFDF8(v35, v36, v43, v37);
  *v42 = v35;
  v42[1] = v36;
  v42[2] = v43;
  v42[3] = v37;
  sub_10000D52C(v34, &qword_10021D7A0, &unk_1001B49A0);
  sub_10000D52C(v26, &qword_10021D7B0, &qword_1001B49B8);
  sub_1000BFDF8(v35, v36, v43, v37);
  sub_10000D52C(v39, &qword_10021D7A0, &unk_1001B49A0);
  return sub_10000D52C(v38, &qword_10021D7B0, &qword_1001B49B8);
}

uint64_t sub_1000BE81C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_100009F70(&qword_10021D7F0, &unk_1001B4A18);
  v4 = __chkstk_darwin(v3 - 8);
  v53 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = v47 - v6;
  v7 = sub_100009F70(&qword_1002197C0, &qword_1001AE810);
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = __chkstk_darwin(v7);
  v48 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v47 - v10;

  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  KeyPath = swift_getKeyPath();
  v55 = v12;
  v56 = v14;
  v20 = v16 & 1;
  v57 = v16 & 1;
  v58 = v18;
  v59 = KeyPath;
  v21 = 1;
  v60 = 1;
  v61 = 0;
  v22 = sub_100009F70(&qword_1002197F0, &unk_1001AE860);
  v23 = sub_10002764C();
  v51 = v11;
  v47[0] = v23;
  v47[1] = v22;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v12, v14, v20);

  v24 = a1[3];
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    v21 = 1;
LABEL_9:
    v41 = v52;
    v42 = v54;
    v27 = v48;
    goto LABEL_10;
  }

  v26 = qword_100218338;

  v27 = v48;
  if (v26 != -1)
  {
    swift_once();
  }

  v55 = qword_100230570;

  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  v32 = v31;

  static Font.caption.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_10000D60C(v28, v30, v32 & 1);

  v40 = swift_getKeyPath();
  v55 = v33;
  v56 = v35;
  v37 &= 1u;
  v57 = v37;
  v58 = v39;
  v59 = v40;
  v60 = 1;
  v61 = 0;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v33, v35, v37);

  v41 = v52;
  sub_10000F618(v27, v52, &qword_1002197C0, &qword_1001AE810);
  v21 = 0;
  v42 = v54;
LABEL_10:
  (*(v49 + 56))(v41, v21, 1, v50);
  v43 = v51;
  sub_10000D58C(v51, v27, &qword_1002197C0, &qword_1001AE810);
  v44 = v53;
  sub_10000D58C(v41, v53, &qword_10021D7F0, &unk_1001B4A18);
  sub_10000D58C(v27, v42, &qword_1002197C0, &qword_1001AE810);
  v45 = sub_100009F70(&qword_10021D7F8, &qword_1001B4A58);
  sub_10000D58C(v44, v42 + *(v45 + 48), &qword_10021D7F0, &unk_1001B4A18);
  sub_10000D52C(v41, &qword_10021D7F0, &unk_1001B4A18);
  sub_10000D52C(v43, &qword_1002197C0, &qword_1001AE810);
  sub_10000D52C(v44, &qword_10021D7F0, &unk_1001B4A18);
  return sub_10000D52C(v27, &qword_1002197C0, &qword_1001AE810);
}

uint64_t sub_1000BED90()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000BEE10(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[16];
  v10 = v1[17];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000D890;

  return sub_1000BD1BC(v9, v10, a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_1000BEEF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

double sub_1000BEF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1000BEF78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000BEFC0()
{
  result = qword_10021D658;
  if (!qword_10021D658)
  {
    sub_10000B3DC(&qword_10021D650, &qword_1001B4828);
    sub_1000BF078();
    sub_10000D1EC(&qword_10021D670, &qword_10021D678, &unk_1001B4838, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D658);
  }

  return result;
}

unint64_t sub_1000BF078()
{
  result = qword_10021D660;
  if (!qword_10021D660)
  {
    sub_10000B3DC(&qword_10021D668, &qword_1001B4830);
    sub_100019990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D660);
  }

  return result;
}

unint64_t sub_1000BF104()
{
  result = qword_10021D680;
  if (!qword_10021D680)
  {
    sub_10000B3DC(&qword_10021D630, &qword_1001B4808);
    sub_1000BF4C8(&qword_10021D688, &qword_10021D690, &qword_1001B4848, sub_1000BF1E8);
    sub_10000D1EC(&qword_10021D6D0, &qword_10021D6D8, &qword_1001B9010, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D680);
  }

  return result;
}

unint64_t sub_1000BF1E8()
{
  result = qword_10021D698;
  if (!qword_10021D698)
  {
    sub_10000B3DC(&qword_10021D628, &qword_1001B4800);
    sub_1000BF274();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D698);
  }

  return result;
}

unint64_t sub_1000BF274()
{
  result = qword_10021D6A0;
  if (!qword_10021D6A0)
  {
    sub_10000B3DC(&qword_10021D6A8, &qword_1001B4850);
    sub_1000BF32C();
    sub_10000D1EC(&qword_10021D6C0, &qword_10021D6C8, &unk_1001B4860, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D6A0);
  }

  return result;
}

unint64_t sub_1000BF32C()
{
  result = qword_10021D6B0;
  if (!qword_10021D6B0)
  {
    sub_10000B3DC(&qword_10021D6B8, &qword_1001B4858);
    sub_10000D1EC(&qword_10021D670, &qword_10021D678, &unk_1001B4838, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D6B0);
  }

  return result;
}

unint64_t sub_1000BF3E4()
{
  result = qword_10021D6E0;
  if (!qword_10021D6E0)
  {
    sub_10000B3DC(&qword_10021D640, &qword_1001B4818);
    sub_1000BF4C8(&qword_10021D6E8, &qword_10021D6F0, &unk_1001B4870, sub_1000BEFC0);
    sub_10000D1EC(&qword_10021D6D0, &qword_10021D6D8, &qword_1001B9010, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D6E0);
  }

  return result;
}

uint64_t sub_1000BF4C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B3DC(a2, a3);
    a4();
    sub_1000BEF78(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BF57C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000BF58C()
{
  result = qword_10021D708;
  if (!qword_10021D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D708);
  }

  return result;
}

__n128 sub_1000BF5E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000BF5F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000BF63C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000BF698()
{
  sub_10000B3DC(&qword_10021D590, &qword_1001B4778);
  sub_10000B3DC(&qword_10021D568, &qword_1001B47A0);
  sub_1000BD7AC();
  sub_1000BB21C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BF744()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000BF794()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1000BF820()
{
  result = qword_10021D738;
  if (!qword_10021D738)
  {
    sub_10000B3DC(&qword_10021D718, &qword_1001B4940);
    sub_10000D1EC(&qword_10021D740, &qword_10021D748, &unk_1001B4968, &protocol conformance descriptor for HStack<A>);
    sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D738);
  }

  return result;
}

unint64_t sub_1000BF904()
{
  result = qword_10021D770;
  if (!qword_10021D770)
  {
    sub_10000B3DC(&qword_10021D720, &qword_1001B4948);
    sub_1000BF9BC();
    sub_10000D1EC(&qword_100218920, &qword_100218928, &unk_1001ADC30, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D770);
  }

  return result;
}

unint64_t sub_1000BF9BC()
{
  result = qword_10021D778;
  if (!qword_10021D778)
  {
    sub_10000B3DC(&qword_10021D768, &qword_1001B4990);
    sub_1000BFAA0(&qword_10021D780, &qword_10021D760, &qword_1001B4988, sub_1000BFB24);
    sub_10000D1EC(&qword_1002188F0, &qword_1002188F8, &unk_1001ADC20, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D778);
  }

  return result;
}

uint64_t sub_1000BFAA0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1000BFB54()
{
  result = qword_10021D790;
  if (!qword_10021D790)
  {
    sub_10000B3DC(&qword_10021D750, &qword_1001B4978);
    sub_10000B3DC(&qword_10021D718, &qword_1001B4940);
    sub_1000BF820();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D790);
  }

  return result;
}

unint64_t sub_1000BFC24()
{
  result = qword_10021D7C0;
  if (!qword_10021D7C0)
  {
    sub_10000B3DC(&qword_10021D7B8, &unk_1001B49F0);
    sub_1000778C4();
    sub_10000D1EC(&qword_1002188D0, &qword_1002188D8, &unk_1001ADC10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D7C0);
  }

  return result;
}

unint64_t sub_1000BFCDC()
{
  result = qword_10021D7C8;
  if (!qword_10021D7C8)
  {
    sub_10000B3DC(&qword_10021D7A8, &qword_1001B49B0);
    sub_1000BF4C8(&qword_10021D7D0, &qword_10021D7D8, &qword_1001B4A00, sub_1000BFC24);
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D7C8);
  }

  return result;
}

uint64_t sub_1000BFD94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

double sub_1000BFDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1000BFE64()
{
  result = qword_10021D800;
  if (!qword_10021D800)
  {
    sub_10000B3DC(&qword_10021D808, &unk_1001B4A60);
    sub_10000B3DC(&qword_10021D720, &qword_1001B4948);
    sub_1000BF904();
    swift_getOpaqueTypeConformance2();
    sub_1000BEF78(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D800);
  }

  return result;
}

uint64_t sub_1000BFF68(uint64_t a1)
{
  result = sub_1000C0950(&qword_10021D810, &type metadata accessor for Dance, &unk_1001B4AA0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000BFFC4()
{
  result = qword_10021D818;
  if (!qword_10021D818)
  {
    sub_10000B3DC(&qword_10021D820, &qword_1001B4A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D818);
  }

  return result;
}

uint64_t sub_1000C0190()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_100009F70(&qword_10021D8F8, &qword_1001B4AE0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Venue();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_100009F70(&qword_10021D900, &qword_1001B4AE8);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000C037C, 0, 0);
}

uint64_t sub_1000C037C()
{
  if (qword_100218350 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = type metadata accessor for EventService();
  sub_10001FDF4(v4, qword_100230588);
  Dance.venue.getter();
  v5 = Venue.id.getter();
  v7 = v6;
  v0[15] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for Dance();
  sub_1000C0950(&qword_10021D908, &type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  static EventService.RequestType.dance.getter();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000C0534;
  v10 = v0[14];
  v11 = v0[8];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v10, v5, v7, v11, v0 + 2, 0, v8, v0 + 2);
}

uint64_t sub_1000C0534()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_10001FB0C;
  }

  else
  {
    v3 = sub_1000C06B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C06B8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = Venue.Schedule.events.getter();
  (*(v2 + 8))(v1, v3);
  static Date.now.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_1000FAD8C(sub_1000C0998, v8, v7);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000C07FC@<X0>(uint64_t *a1@<X8>)
{
  result = Dance.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000C0840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001FC70;

  return sub_1000C0190();
}

uint64_t sub_1000C08CC(uint64_t a1)
{
  *(a1 + 8) = sub_1000C0950(&qword_10021D8E8, &type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  result = sub_1000C0950(&qword_10021D8F0, &type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000C0950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C09CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000C0A8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DesignTimeTicketAttribution(uint64_t a1)
{
  result = qword_10021D968;
  if (!qword_10021D968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_1000C0B7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000C0DF4(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000C0C24(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000C0DF4(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000C0CB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000C0DF4(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000C0D9C(uint64_t a1)
{
  result = sub_1000C0DF4(&qword_10021D9A8, type metadata accessor for DesignTimeTicketAttribution, &unk_1001B4B34);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C0DF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C0E4C()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v3, v0);
  result = ResourceID.init(_:)();
  qword_1002305D0 = result;
  *algn_1002305D8 = v5;
  return result;
}

Swift::Int sub_1000C0F38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000C0F84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000C0FD0()
{
  result = qword_10021D9B0;
  if (!qword_10021D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D9B0);
  }

  return result;
}

unint64_t sub_1000C1024(uint64_t a1)
{
  *(a1 + 8) = sub_1000C1054();
  result = sub_1000C10A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000C1054()
{
  result = qword_10021D9B8;
  if (!qword_10021D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D9B8);
  }

  return result;
}

unint64_t sub_1000C10A8()
{
  result = qword_10021D9C0[0];
  if (!qword_10021D9C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021D9C0);
  }

  return result;
}

uint64_t sub_1000C10FC()
{
  type metadata accessor for PinnedScrollableViews();
  sub_1000C5A78(&qword_10021DAA8, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_1000C117C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UpcomingViewModel(0, a4, a5, a4);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14 = type metadata accessor for UpcomingModule(0, a4, a5, v13);
  v15 = (a6 + *(v14 + 36));
  type metadata accessor for RemoteViewConfiguration();
  sub_1000C5A78(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.init()();
  *v15 = result;
  v15[1] = v17;
  v18 = a6 + *(v14 + 40);
  *v18 = a2;
  *(v18 + 8) = a3 & 1;
  return result;
}

void sub_1000C129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UpcomingViewModel(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_10000B304(319);
    if (v5 <= 0x3F)
    {
      sub_100050558();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000C133C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = 5;
  }

  else
  {
    v10 = 6;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  if (v8 >= a2)
  {
    goto LABEL_36;
  }

  v12 = ((((v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-49 - v9) | v11))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v13 = (a2 - v8 + 255) >> 8;
  if (v12 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v12];
      if (!*&a1[v12])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v17 = *&a1[v12];
      if (!v17)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v16 || (v17 = a1[v12]) == 0)
  {
LABEL_36:
    if (v8 == 0x7FFFFFFF)
    {
      v21 = *(a1 + 1);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v22 = (*(v4 + 48))((v9 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v19 = (v17 - 1) << (8 * v12);
  if (v12 <= 3)
  {
    v20 = *a1;
  }

  else
  {
    v19 = 0;
    v20 = *a1;
  }

  return v8 + (v20 | v19) + 1;
}

void sub_1000C1524(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v7 + 80);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = ((((-2 - ((((-49 - v12) | v12) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v12) | v12) - v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 < a3)
  {
    v15 = (a3 - v11 + 255) >> 8;
    if (v14 <= 3)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v11 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v14] = 0;
    }

    else if (v6)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if (v11 == 0x7FFFFFFF)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }
    }

    else
    {
      v20 = *(v7 + 56);
      v21 = (v12 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + (v12 | 7) + 32) & ~(v12 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12;
      v22 = a2 + 1;

      v20(v21, v22);
    }

    return;
  }

  v18 = ~v11 + a2;
  bzero(a1, v14);
  if (v14 <= 3)
  {
    v19 = (v18 >> 8) + 1;
  }

  else
  {
    v19 = 1;
  }

  if (v14 <= 3)
  {
    *a1 = v18;
    if (v6 > 1)
    {
LABEL_29:
      if (v6 == 2)
      {
        *&a1[v14] = v19;
      }

      else
      {
        *&a1[v14] = v19;
      }

      return;
    }
  }

  else
  {
    *a1 = v18;
    if (v6 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v6)
  {
    a1[v14] = v19;
  }
}

double sub_1000C17B8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 0.85;
  if (v1 == 1)
  {
    return 0.45;
  }

  return result;
}

uint64_t sub_1000C1828(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + *(a1 + 36));
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 40);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100027EB0(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000C5A78(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000C1AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  sub_10000B3DC(&qword_10021DA48, &qword_1001B4D00);
  v4 = *(a1 + 16);
  type metadata accessor for Array();
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021DA50, &qword_1001B4D08);
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v18 = sub_1000C5148();
  swift_getWitnessTable();
  type metadata accessor for LazyHGrid();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v21 = WitnessTable;
  v22 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v7 = type metadata accessor for VStack();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  static HorizontalAlignment.leading.getter();
  v16[4] = v4;
  v16[5] = v5;
  v17 = v2;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_100157EFC();
  v14 = *(v8 + 8);
  v14(v11, v7);
  sub_100157EFC();
  return (v14)(v13, v7);
}

uint64_t sub_1000C1F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v127 = a4;
  v126 = type metadata accessor for ContentMarginPlacement();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for ScrollIndicatorVisibility();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v8 - 8);
  v120 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v121 = *(v10 - 8);
  __chkstk_darwin(v10);
  v117 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_10000B3DC(&qword_10021DA50, &qword_1001B4D08);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v136 = v12;
  v137 = AssociatedTypeWitness;
  v138 = v14;
  v139 = WitnessTable;
  v140 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v135 = sub_1000C5148();
  swift_getWitnessTable();
  v17 = type metadata accessor for LazyHGrid();
  v18 = swift_getWitnessTable();
  v136 = v17;
  v137 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v136 = v17;
  v137 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = type metadata accessor for ScrollView();
  v98 = *(v19 - 8);
  __chkstk_darwin(v19);
  v95 = &v90 - v20;
  v21 = swift_getWitnessTable();
  v136 = v19;
  v137 = v10;
  v93 = v10;
  v138 = v21;
  v139 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v22 = v21;
  v94 = v21;
  v23 = swift_getOpaqueTypeMetadata2();
  v111 = *(v23 - 8);
  __chkstk_darwin(v23);
  v90 = &v90 - v24;
  v136 = v19;
  v137 = v10;
  v138 = v22;
  v139 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v25 = swift_getOpaqueTypeConformance2();
  v136 = v23;
  v137 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v110 = *(v26 - 8);
  __chkstk_darwin(v26);
  v102 = &v90 - v27;
  v115 = v23;
  v136 = v23;
  v137 = v25;
  v104 = v25;
  v28 = swift_getOpaqueTypeConformance2();
  v136 = v26;
  v137 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v109 = *(v29 - 8);
  __chkstk_darwin(v29);
  v108 = &v90 - v30;
  v114 = v26;
  v136 = v26;
  v137 = v28;
  v103 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v113 = v29;
  v136 = v29;
  v137 = v31;
  v106 = v31;
  v101 = swift_getOpaqueTypeMetadata2();
  v112 = *(v101 - 8);
  v32 = __chkstk_darwin(v101);
  v119 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v105 = &v90 - v35;
  __chkstk_darwin(v34);
  v116 = &v90 - v36;
  v37 = sub_100009F70(&qword_10021DA88, &qword_1001B4D28);
  __chkstk_darwin(v37 - 8);
  v39 = &v90 - v38;
  v40 = sub_100009F70(&qword_10021DA48, &qword_1001B4D00);
  v41 = __chkstk_darwin(v40);
  v107 = &v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v45 = &v90 - v44;
  __chkstk_darwin(v43);
  v47 = &v90 - v46;
  *v39 = static HorizontalAlignment.leading.getter();
  *(v39 + 1) = 0x4024000000000000;
  v39[16] = 0;
  v48 = sub_100009F70(&qword_10021DA90, &unk_1001B4D30);
  v49 = v99;
  sub_1000C2DA8(a1, a2, &v39[*(v48 + 44)]);
  LOBYTE(v26) = static Edge.Set.leading.getter();
  v91 = type metadata accessor for UpcomingModule(0, a2, v49, v50);
  sub_1000C1828(v91);
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v39;
  v60 = a1;
  v61 = v90;
  sub_10000F618(v59, v45, &qword_10021DA88, &qword_1001B4D28);
  v100 = v40;
  v62 = &v45[*(v40 + 36)];
  *v62 = v26;
  v63 = v118;
  *(v62 + 1) = v52;
  *(v62 + 2) = v54;
  *(v62 + 3) = v56;
  *(v62 + 4) = v58;
  v62[40] = 0;
  v92 = v47;
  sub_10000F618(v45, v47, &qword_10021DA48, &qword_1001B4D00);
  v64 = static Axis.Set.horizontal.getter();
  v129 = a2;
  v130 = v49;
  v131 = v60;
  v65 = v95;
  sub_1001511F4(v64, sub_1000C5390, v128, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v66 = v117;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v67 = v93;
  View.scrollTargetBehavior<A>(_:)();
  (*(v121 + 8))(v66, v67);
  (*(v98 + 8))(v65, v19);
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390, &qword_1001B6A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v19) = static Axis.Set.vertical.getter();
  *(inited + 32) = v19;
  v69 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v69;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v19)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v69)
  {
    Axis.Set.init(rawValue:)();
  }

  v70 = v102;
  v71 = v115;
  View.scrollIndicators(_:axes:)();
  (*(v122 + 8))(v63, v123);
  (*(v111 + 8))(v61, v71);
  static Edge.Set.leading.getter();
  v72 = v91;
  sub_1000C1828(v91);
  v73 = v124;
  static ContentMarginPlacement.scrollContent.getter();
  v74 = v108;
  v75 = v114;
  View.contentMargins(_:_:for:)();
  v76 = *(v125 + 8);
  v77 = v126;
  v76(v73, v126);
  (*(v110 + 8))(v70, v75);
  static Edge.Set.trailing.getter();
  sub_1000C1828(v72);
  static ContentMarginPlacement.scrollContent.getter();
  v78 = v105;
  v79 = v113;
  v80 = v106;
  View.contentMargins(_:_:for:)();
  v76(v73, v77);
  (*(v109 + 8))(v74, v79);
  v136 = v79;
  v137 = v80;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = v116;
  v83 = v101;
  sub_100157EFC();
  v84 = v112;
  v85 = *(v112 + 8);
  v85(v78, v83);
  v86 = v92;
  v87 = v107;
  sub_10000D58C(v92, v107, &qword_10021DA48, &qword_1001B4D00);
  v136 = v87;
  v88 = v119;
  (*(v84 + 16))(v119, v82, v83);
  v137 = v88;
  v134[0] = v100;
  v134[1] = v83;
  v132 = sub_1000C539C();
  v133 = v81;
  sub_100151024(&v136, 2uLL, v134);
  v85(v82, v83);
  sub_10000D52C(v86, &qword_10021DA48, &qword_1001B4D00);
  v85(v88, v83);
  return sub_10000D52C(v87, &qword_10021DA48, &qword_1001B4D00);
}

uint64_t sub_1000C2DA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v40 = a1;
  v41 = a2;
  v47 = a4;
  v45 = sub_100009F70(&qword_10021DAD0, &qword_1001B4D58) - 8;
  v4 = __chkstk_darwin(v45);
  v46 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v44 = &v36 - v6;
  v7 = type metadata accessor for AccessibilityTraits();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for AccessibilityChildBehavior();
  v9 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021DAD8, &qword_1001B4D60);
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = sub_100009F70(&qword_10021DAE0, &qword_1001B4D68);
  v36 = *(v15 - 8);
  v37 = v15;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  v18 = sub_100009F70(&qword_10021DAE8, &qword_1001B4D70);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v36 - v22;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0x4000000000000000;
  v14[16] = 0;
  v24 = sub_100009F70(&qword_10021DAF0, &qword_1001B4D78);
  sub_1000C32D0(v40, &v14[*(v24 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v25 = sub_10000D1EC(&qword_10021DAF8, &qword_10021DAD8, &qword_1001B4D60, &protocol conformance descriptor for VStack<A>);
  View.accessibilityElement(children:)();
  (*(v9 + 8))(v11, v38);
  sub_10000D52C(v14, &qword_10021DAD8, &qword_1001B4D60);
  v26 = v39;
  static AccessibilityTraits.isHeader.getter();
  v48 = v12;
  v49 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v37;
  View.accessibilityAddTraits(_:)();
  (*(v42 + 8))(v26, v43);
  (*(v36 + 8))(v17, v27);
  v28 = v44;
  Divider.init()();
  v29 = static SafeAreaRegions.container.getter();
  v30 = static Edge.Set.horizontal.getter();
  v31 = v28 + *(v45 + 44);
  *v31 = v29;
  *(v31 + 8) = v30;
  sub_10000D58C(v23, v21, &qword_10021DAE8, &qword_1001B4D70);
  v32 = v46;
  sub_10000D58C(v28, v46, &qword_10021DAD0, &qword_1001B4D58);
  v33 = v47;
  sub_10000D58C(v21, v47, &qword_10021DAE8, &qword_1001B4D70);
  v34 = sub_100009F70(&qword_10021DB00, &qword_1001B4D80);
  sub_10000D58C(v32, v33 + *(v34 + 48), &qword_10021DAD0, &qword_1001B4D58);
  sub_10000D52C(v28, &qword_10021DAD0, &qword_1001B4D58);
  sub_10000D52C(v23, &qword_10021DAE8, &qword_1001B4D70);
  sub_10000D52C(v32, &qword_10021DAD0, &qword_1001B4D58);
  return sub_10000D52C(v21, &qword_10021DAE8, &qword_1001B4D70);
}

uint64_t sub_1000C32D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_100009F70(&qword_10021DB08, &qword_1001B4D88);
  v4 = __chkstk_darwin(v3 - 8);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v51 - v6;
  v7 = sub_100009F70(&qword_10021DB10, &qword_1001B4D90);
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = __chkstk_darwin(v7);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v52 = a1;
  v12 = a1[1];
  v60 = *a1;
  v61 = v12;
  v13 = sub_100027068();

  v51 = v13;
  v14 = Text.init<A>(_:)();
  v16 = v15;
  LOBYTE(v13) = v17;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_10000D60C(v14, v16, v13 & 1);

  v60 = v18;
  v61 = v20;
  v62 = v22 & 1;
  v63 = v24;
  v55 = v11;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v18, v20, v22 & 1);

  v25 = v52[3];
  if (v25)
  {
    v60 = v52[2];
    v61 = v25;

    v26 = Text.init<A>(_:)();
    v28 = v27;
    v30 = v29;
    static Font.subheadline.getter();
    v31 = Text.font(_:)();
    v33 = v32;
    v35 = v34;

    sub_10000D60C(v26, v28, v30 & 1);

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v60 = qword_100230570;

    v36 = Text.foregroundStyle<A>(_:)();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_10000D60C(v31, v33, v35 & 1);

    v60 = v36;
    v61 = v38;
    v62 = v40 & 1;
    v63 = v42;
    v43 = v56;
    View.accessibilityIdentifier(_:)();
    sub_10000D60C(v36, v38, v40 & 1);

    v44 = v57;
    sub_10000F618(v43, v57, &qword_10021DB10, &qword_1001B4D90);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v43 = v56;
    v44 = v57;
  }

  (*(v53 + 56))(v44, v45, 1, v54);
  v46 = v55;
  sub_10000D58C(v55, v43, &qword_10021DB10, &qword_1001B4D90);
  v47 = v58;
  sub_10000D58C(v44, v58, &qword_10021DB08, &qword_1001B4D88);
  v48 = v59;
  sub_10000D58C(v43, v59, &qword_10021DB10, &qword_1001B4D90);
  v49 = sub_100009F70(&qword_10021DB18, &qword_1001B4D98);
  sub_10000D58C(v47, v48 + *(v49 + 48), &qword_10021DB08, &qword_1001B4D88);
  sub_10000D52C(v44, &qword_10021DB08, &qword_1001B4D88);
  sub_10000D52C(v46, &qword_10021DB10, &qword_1001B4D90);
  sub_10000D52C(v47, &qword_10021DB08, &qword_1001B4D88);
  return sub_10000D52C(v43, &qword_10021DB10, &qword_1001B4D90);
}

uint64_t sub_1000C37EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v7 - 8);
  v34 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_10000B3DC(&qword_10021DA50, &qword_1001B4D08);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = v9;
  v41 = AssociatedTypeWitness;
  v42 = v11;
  v43 = WitnessTable;
  v44 = AssociatedConformanceWitness;
  v29[1] = type metadata accessor for ForEach();
  v39 = sub_1000C5148();
  v29[0] = swift_getWitnessTable();
  v14 = type metadata accessor for LazyHGrid();
  v33 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v17 = swift_getWitnessTable();
  v40 = v14;
  v41 = v17;
  v30 = v17;
  v31 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  v19 = __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v29 - v22;
  v25 = type metadata accessor for UpcomingViewModel(0, a2, a3, v24);
  sub_1000F733C(v25);
  static VerticalAlignment.top.getter();
  v36 = a2;
  v37 = a3;
  v38 = a1;
  sub_1000C10FC();
  LazyHGrid.init(rows:alignment:spacing:pinnedViews:content:)();
  v26 = v30;
  View.scrollTargetLayout(isEnabled:)();
  (*(v33 + 8))(v16, v14);
  v40 = v14;
  v41 = v26;
  swift_getOpaqueTypeConformance2();
  sub_100157EFC();
  v27 = *(v32 + 8);
  v27(v21, OpaqueTypeMetadata2);
  sub_100157EFC();
  return (v27)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1000C3BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v36 = a3;
  v38 = type metadata accessor for UpcomingModule(0, a2, a3, a4);
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = &v30 - v9;
  v10 = type metadata accessor for Array();
  v35 = v10;
  v30 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = AssociatedTypeWitness;
  v12 = sub_10000B3DC(&qword_10021DA50, &qword_1001B4D08);
  v33 = v12;
  WitnessTable = swift_getWitnessTable();
  v32 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v10;
  v42 = AssociatedTypeWitness;
  v43 = v12;
  v44 = WitnessTable;
  v45 = AssociatedConformanceWitness;
  v15 = type metadata accessor for ForEach();
  v37 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v41 = *(a1 + 40);
  v21 = v31;
  v22 = a1;
  v23 = v38;
  (*(v8 + 16))(v31, v22, v38);
  v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v25 = swift_allocObject();
  v26 = v36;
  *(v25 + 16) = a2;
  *(v25 + 24) = v26;
  (*(v8 + 32))(v25 + v24, v21, v23);
  v27 = sub_1000C5148();

  ForEach<>.init(_:content:)();
  v40 = v27;
  swift_getWitnessTable();
  sub_100157EFC();
  v28 = *(v37 + 8);
  v28(v18, v15);
  sub_100157EFC();
  return (v28)(v20, v15);
}

uint64_t sub_1000C3F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v94 = a2;
  v97 = a5;
  v98 = a1;
  v7 = type metadata accessor for PlainButtonStyle();
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = __chkstk_darwin(v7);
  v85 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(a3 - 8);
  __chkstk_darwin(v8);
  v75 = v10;
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for UpcomingModule(0, a3, a4, v11);
  v73 = *(v74 - 8);
  v71 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v70 - v12;
  v82 = sub_100009F70(&qword_10021DA78, &qword_1001B4D20);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v70 - v13;
  v88 = sub_100009F70(&qword_10021DA70, &qword_1001B4D18);
  v83 = *(v88 - 8);
  __chkstk_darwin(v88);
  v81 = &v70 - v14;
  v15 = sub_100009F70(&qword_10021DAB0, &qword_1001B4D40);
  v86 = *(v15 - 8);
  v87 = v15;
  __chkstk_darwin(v15);
  v84 = &v70 - v16;
  v17 = sub_100009F70(&qword_10021DA68, &qword_1001B4D10);
  v95 = *(v17 - 8);
  v96 = v17;
  __chkstk_darwin(v17);
  v80 = &v70 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v22 = &v70 - v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v25 = *(v92 - 8);
  __chkstk_darwin(v92);
  v27 = &v70 - v26;
  v28 = *(a4 + 176);
  v93 = a3;
  v91 = a4;
  v28(a3, a4);
  (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v20 + 8))(v22, AssociatedTypeWitness);
  v29 = *(v24 - 8);
  if ((*(v29 + 48))(v27, 1, v24) == 1)
  {
    (*(v25 + 8))(v27, v92);
LABEL_5:
    v68 = 1;
    v67 = v97;
    return (*(v95 + 56))(v67, v68, 1, v96);
  }

  v30 = swift_getAssociatedConformanceWitness();
  v31 = (*(v30 + 24))(v24, v30);
  v33 = v32;
  (*(v29 + 8))(v27, v24);
  if (!v33)
  {
    goto LABEL_5;
  }

  v34 = v73;
  v35 = v72;
  v36 = v74;
  (*(v73 + 16))(v72, v94, v74);
  v37 = v77;
  v38 = *(v77 + 16);
  v39 = v76;
  v92 = v33;
  v40 = v93;
  v38(v76, v98);
  v41 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v42 = *(v37 + 80);
  v43 = v71 + v42 + v41;
  v71 = v31;
  v44 = v43 & ~v42;
  v45 = swift_allocObject();
  v46 = v91;
  *(v45 + 16) = v40;
  *(v45 + 24) = v46;
  (*(v34 + 32))(v45 + v41, v35, v36);
  v47 = (*(v37 + 32))(v45 + v44, v39, v40);
  __chkstk_darwin(v47);
  *(&v70 - 6) = v40;
  *(&v70 - 5) = v46;
  v48 = v98;
  *(&v70 - 4) = v94;
  *(&v70 - 3) = v48;
  v49 = v92;
  *(&v70 - 2) = v71;
  *(&v70 - 1) = v49;
  sub_100009F70(&qword_10021DAB8, &unk_1001B4D48);
  sub_1000C5990();
  v50 = v78;
  Button.init(action:label:)();

  v51 = v85;
  PlainButtonStyle.init()();
  v52 = sub_10000D1EC(&qword_10021DA80, &qword_10021DA78, &qword_1001B4D20, &protocol conformance descriptor for Button<A>);
  v53 = sub_1000C5A78(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v54 = v81;
  v55 = v82;
  v56 = v90;
  View.buttonStyle<A>(_:)();
  (*(v89 + 8))(v51, v56);
  (*(v79 + 8))(v50, v55);
  LODWORD(v92) = static Axis.Set.horizontal.getter();
  static Alignment.leading.getter();
  v57 = swift_allocObject();
  v58 = v93;
  *(v57 + 16) = v93;
  *(v57 + 24) = v46;
  v99 = v55;
  v100 = v56;
  v101 = v52;
  v102 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v84;
  v61 = v88;
  View.containerRelativeFrame(_:alignment:_:)();

  (*(v83 + 8))(v54, v61);
  v63 = type metadata accessor for UpcomingViewModel(0, v58, v46, v62);
  sub_1000F7778(v98, v63);
  v99 = v61;
  v100 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v64 = v80;
  v65 = v87;
  View.accessibilitySortPriority(_:)();
  (*(v86 + 8))(v60, v65);
  v66 = v97;
  sub_10000F618(v64, v97, &qword_10021DA68, &qword_1001B4D10);
  v67 = v66;
  v68 = 0;
  return (*(v95 + 56))(v67, v68, 1, v96);
}

void sub_1000C4A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  v12 = *(a3 - 8);
  (*(v12 + 16))(&v17 - v10, a2, a3);
  (*(v12 + 56))(v11, 0, 1, a3);
  v14 = type metadata accessor for UpcomingViewModel(0, a3, a4, v13);
  sub_1000F7A90(v11);
  (*(v9 + 8))(v11, v8);
  if (*(a1 + *(type metadata accessor for UpcomingModule(0, a3, a4, v15) + 36)))
  {

    sub_1000F749C(v16, v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000C5A78(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000C4C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v65 = a2;
  v62 = a7;
  v12 = type metadata accessor for DateInterval();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v58 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v17 = &v48 - v16;
  v64 = a5;
  v18 = swift_getAssociatedTypeWitness();
  v63 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  v57 = type metadata accessor for UpcomingModuleItem(0);
  __chkstk_darwin(v57);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 32) == 1)
  {
    v23 = v64;
    v56 = (*(a6 + 136))(v64, a6);
    v61 = v24;
    v53 = *(a6 + 168);
    (v53)(v23, a6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = sub_1000FC968(v18, AssociatedConformanceWitness);
    v54 = v26;
    v55 = v25;
    v27 = *(v63 + 8);
    v27(v20, v18);
    v28 = v23;
    v29 = v18;
    v30 = v53;
    (v53)(v28, a6);
    v31 = sub_1000FCDF0(v29, AssociatedConformanceWitness);
    v33 = v32;
    v27(v20, v29);
    v34 = v31;
  }

  else
  {
    AssociatedConformanceWitness = v18;
    v56 = a3;
    v51 = *(a6 + 176);
    v35 = v51;
    v61 = a4;

    v53 = v20;
    v50 = v15;
    v36 = v64;
    v35(v64, a6);
    v37 = swift_getAssociatedConformanceWitness();
    v49 = *(v37 + 48);
    v38 = v49(AssociatedTypeWitness, v37);
    v54 = v39;
    v55 = v38;
    v50 = *(v50 + 8);
    (v50)(v17, AssociatedTypeWitness);
    v40 = v36;
    v29 = AssociatedConformanceWitness;
    v51(v40, a6);
    v34 = v49(AssociatedTypeWitness, v37);
    v33 = v41;
    (v50)(v17, AssociatedTypeWitness);
    v20 = v53;
    v30 = *(a6 + 168);
  }

  (v30)(v64, a6);
  v42 = swift_getAssociatedConformanceWitness();
  v43 = v58;
  sub_1000FBF34(v29, v42, v58);
  (*(v63 + 8))(v20, v29);
  DateInterval.start.getter();
  (*(v59 + 8))(v43, v60);
  v44 = v61;
  v45 = v62;
  *v22 = v56;
  v22[1] = v44;
  v46 = v54;
  v22[2] = v55;
  v22[3] = v46;
  v22[4] = v34;
  v22[5] = v33;
  sub_1000C6584(v22, v45);
  result = sub_100009F70(&qword_10021DAB8, &unk_1001B4D48);
  *(v45 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_1000C5148()
{
  result = qword_10021DA58;
  if (!qword_10021DA58)
  {
    sub_10000B3DC(&qword_10021DA50, &qword_1001B4D08);
    sub_1000C51CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DA58);
  }

  return result;
}

unint64_t sub_1000C51CC()
{
  result = qword_10021DA60;
  if (!qword_10021DA60)
  {
    sub_10000B3DC(&qword_10021DA68, &qword_1001B4D10);
    sub_10000B3DC(&qword_10021DA70, &qword_1001B4D18);
    sub_10000B3DC(&qword_10021DA78, &qword_1001B4D20);
    type metadata accessor for PlainButtonStyle();
    sub_10000D1EC(&qword_10021DA80, &qword_10021DA78, &qword_1001B4D20, &protocol conformance descriptor for Button<A>);
    sub_1000C5A78(&qword_100218810, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000C5A78(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DA60);
  }

  return result;
}

unint64_t sub_1000C539C()
{
  result = qword_10021DA98;
  if (!qword_10021DA98)
  {
    sub_10000B3DC(&qword_10021DA48, &qword_1001B4D00);
    sub_10000D1EC(&qword_10021DAA0, &qword_10021DA88, &qword_1001B4D28, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DA98);
  }

  return result;
}

uint64_t sub_1000C5460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for UpcomingModule(0, v5, v6, a4);
  v8 = v4 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));

  v10 = v8 + *(type metadata accessor for UpcomingViewModel(0, v5, v6, v9) + 48);

  type metadata accessor for Optional();
  v11 = *(type metadata accessor for Binding() + 32);
  v12 = *(v5 - 8);
  if (!(*(v12 + 48))(v10 + v11, 1, v5))
  {
    (*(v12 + 8))(v10 + v11, v5);
  }

  sub_100027EB0(*(v8 + *(v7 + 40)), *(v8 + *(v7 + 40) + 8));

  return swift_deallocObject();
}

uint64_t sub_1000C5604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for UpcomingModule(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000C3F4C(a1, v9, v6, v7, a3);
}

uint64_t sub_1000C56A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for UpcomingModule(0, v5, v6, a4);
  v8 = *(*(v7 - 8) + 80);
  v16 = *(*(v7 - 8) + 64);
  v9 = (v8 + 32) & ~v8;
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);

  v13 = v4 + v9 + *(type metadata accessor for UpcomingViewModel(0, v5, v6, v12) + 48);

  type metadata accessor for Optional();
  v14 = *(type metadata accessor for Binding() + 32);
  if (!(*(v10 + 48))(v13 + v14, 1, v5))
  {
    (*(v10 + 8))(v13 + v14, v5);
  }

  sub_100027EB0(*(v4 + v9 + *(v7 + 40)), *(v4 + v9 + *(v7 + 40) + 8));
  (*(v10 + 8))(v4 + ((v9 + v16 + v11) & ~v11), v5);

  return swift_deallocObject();
}

void sub_1000C58A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for UpcomingModule(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v4 + ((v8 + *(v7 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  sub_1000C4A10(v4 + v8, v9, v5, v6);
}

unint64_t sub_1000C5990()
{
  result = qword_10021DAC0;
  if (!qword_10021DAC0)
  {
    sub_10000B3DC(&qword_10021DAB8, &unk_1001B4D48);
    sub_1000C5A78(&qword_10021DAC8, type metadata accessor for UpcomingModuleItem, &unk_1001B4DB4);
    sub_10000D1EC(&qword_100219D48, &qword_100219D50, &unk_1001AFCC0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DAC0);
  }

  return result;
}

uint64_t sub_1000C5A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for UpcomingModuleItem(uint64_t a1)
{
  result = qword_10021DB78;
  if (!qword_10021DB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C5B50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_10021DBC0, &qword_1001B4E10);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_100009F70(&qword_10021DBC8, &qword_1001B4E18);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_100009F70(&qword_10021DBD0, &qword_1001B4E20);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = sub_100009F70(&qword_10021DBD8, &qword_1001B4E28);
  v16 = __chkstk_darwin(v15 - 8);
  v43 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v20 = type metadata accessor for CalendarIcon(0);
  v21 = v20 - 8;
  v22 = __chkstk_darwin(v20);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v42 - v25;
  v27 = *(type metadata accessor for UpcomingModuleItem(0) + 28);
  v28 = type metadata accessor for Date();
  (*(*(v28 - 8) + 16))(v26, a1 + v27, v28);
  v29 = *(v21 + 28);
  *&v26[v29] = swift_getKeyPath();
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  swift_storeEnumTagMultiPayload();
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v30 = sub_100009F70(&qword_10021DBE0, &qword_1001B4E68);
  sub_1000C60D0(a1, &v7[*(v30 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000F618(v7, v10, &qword_10021DBC0, &qword_1001B4E10);
  v31 = &v10[*(v8 + 36)];
  v32 = v56;
  *(v31 + 4) = v55;
  *(v31 + 5) = v32;
  *(v31 + 6) = v57;
  v33 = v52;
  *v31 = v51;
  *(v31 + 1) = v33;
  v34 = v54;
  *(v31 + 2) = v53;
  *(v31 + 3) = v34;
  v35 = v42;
  static AccessibilityChildBehavior.combine.getter();
  v36 = sub_1000C6B58();
  View.accessibilityElement(children:)();
  (*(v46 + 8))(v35, v47);
  sub_10000D52C(v10, &qword_10021DBC8, &qword_1001B4E18);
  v49 = v8;
  v50 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v44;
  View.accessibilityIdentifier(_:)();
  (*(v45 + 8))(v14, v37);
  sub_1000C6C10(v26, v24);
  v38 = v43;
  sub_10000D58C(v19, v43, &qword_10021DBD8, &qword_1001B4E28);
  v39 = v48;
  sub_1000C6C10(v24, v48);
  v40 = sub_100009F70(&qword_10021DBF8, &unk_1001B4E70);
  sub_10000D58C(v38, v39 + *(v40 + 48), &qword_10021DBD8, &qword_1001B4E28);
  sub_10000D52C(v19, &qword_10021DBD8, &qword_1001B4E28);
  sub_1000C6C74(v26);
  sub_10000D52C(v38, &qword_10021DBD8, &qword_1001B4E28);
  return sub_1000C6C74(v24);
}

uint64_t sub_1000C60D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v44 = sub_100009F70(&qword_1002197C0, &qword_1001AE810);
  v3 = __chkstk_darwin(v44);
  v48 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v47 = v43 - v6;
  v7 = __chkstk_darwin(v5);
  v46 = v43 - v8;
  __chkstk_darwin(v7);
  v10 = v43 - v9;

  static Font.body.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  KeyPath = swift_getKeyPath();
  v50 = v11;
  v51 = v13;
  v19 = v15 & 1;
  v52 = v15 & 1;
  v53 = v17;
  v54 = KeyPath;
  v55 = 1;
  v56 = 0;
  v20 = sub_100009F70(&qword_1002197F0, &unk_1001AE860);
  v21 = sub_10002764C();
  v45 = v10;
  v43[0] = v21;
  v43[1] = v20;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v11, v13, v19);

  static Font.subheadline.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v50 = qword_100230570;

  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10000D60C(v22, v24, v26 & 1);

  v34 = swift_getKeyPath();
  v50 = v27;
  v51 = v29;
  v31 &= 1u;
  v52 = v31;
  v53 = v33;
  v54 = v34;
  v55 = 1;
  v56 = 0;
  v35 = v47;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v27, v29, v31);

  v36 = a1[5];
  v50 = a1[4];
  v51 = v36;
  sub_100027068();
  v37 = v46;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_10000D52C(v35, &qword_1002197C0, &qword_1001AE810);
  v38 = v45;
  sub_10000D58C(v45, v35, &qword_1002197C0, &qword_1001AE810);
  v39 = v48;
  sub_10000D58C(v37, v48, &qword_1002197C0, &qword_1001AE810);
  v40 = v49;
  sub_10000D58C(v35, v49, &qword_1002197C0, &qword_1001AE810);
  v41 = sub_100009F70(&qword_10021DC00, &qword_1001B4EB0);
  sub_10000D58C(v39, v40 + *(v41 + 48), &qword_1002197C0, &qword_1001AE810);
  sub_10000D52C(v37, &qword_1002197C0, &qword_1001AE810);
  sub_10000D52C(v38, &qword_1002197C0, &qword_1001AE810);
  sub_10000D52C(v39, &qword_1002197C0, &qword_1001AE810);
  return sub_10000D52C(v35, &qword_1002197C0, &qword_1001AE810);
}

uint64_t sub_1000C6530@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100009F70(&qword_10021DBB8, &qword_1001B4E08);
  return sub_1000C5B50(v2, a2 + *(v4 + 44));
}

uint64_t sub_1000C6584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UpcomingModuleItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C65FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000C66BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000C6760(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C67E4(uint64_t *a1)
{
  sub_10000B3DC(&qword_10021DA48, &qword_1001B4D00);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000B3DC(&qword_10021DA50, &qword_1001B4D08);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  sub_1000C5148();
  swift_getWitnessTable();
  type metadata accessor for LazyHGrid();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

unint64_t sub_1000C6B58()
{
  result = qword_10021DBE8;
  if (!qword_10021DBE8)
  {
    sub_10000B3DC(&qword_10021DBC8, &qword_1001B4E18);
    sub_10000D1EC(&qword_10021DBF0, &qword_10021DBC0, &qword_1001B4E10, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DBE8);
  }

  return result;
}

uint64_t sub_1000C6C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarIcon(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C6C74(uint64_t a1)
{
  v2 = type metadata accessor for CalendarIcon(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C6D1C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000C6E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = swift_allocObject();
  sub_1000C75D4(a1, a2, a3, a4, v5);
  return v10;
}

uint64_t sub_1000C6EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 88);
  if (v3 && *(v3 + 16))
  {

    v4 = sub_1000D8558(2);
    if (v5)
    {
      v6 = *(*(v3 + 56) + v4);

      if (v6 <= 1 && v6)
      {

        v7 = 0;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v8 ^ 1;
      }
    }

    else
    {

      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & (*(v2 + *(*v2 + 120)) != 0);
}

double sub_1000C7028(char a1)
{
  v2 = *v1;
  v12 = *(v1 + 16);
  v3 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + 16) = v3;
  }

  else
  {
    __chkstk_darwin(v4);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v3;
    sub_1000C74FC(v7, sub_100031DC4, v8, &type metadata for () + 8);
  }

  return result;
}

void sub_1000C716C(uint64_t a1)
{
  sub_100009F70(qword_100218F38, &unk_1001ADA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001AD8A0;
  v5 = v1[3];
  v4 = v1[4];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_10021CBD0;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v6 = *(v1 + *(*v1 + 136));
  if (v6 == 15)
  {
    LOBYTE(v6) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_10021CBA8;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_10021CC30;
  *(inited + 112) = 4;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_10021CC08;
  *(inited + 152) = xmmword_1001B4EC0;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v15 = v7;
  v16 = v8;

  v9 = sub_1001666DC(1, 5, 1, inited);
  v13 = v9;
  sub_1000109BC(&aBlock, v20);
  sub_1000EB0D0(4, v20, &v13, &type metadata for AnalyticsString, &off_10021CBD0);
  sub_100010A18(&aBlock);
  v10 = String._bridgeToObjectiveC()();
  v11 = swift_allocObject();
  v11[2] = 0xD00000000000001ELL;
  v11[3] = 0x80000001001BDDE0;
  v11[4] = v9;
  v18 = sub_100010AAC;
  v19 = v11;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1000DCA40;
  v17 = &unk_10020DF60;
  v12 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

uint64_t sub_1000C73E8()
{
  KeyPath = swift_getKeyPath();
  sub_1000C745C(KeyPath);

  return *(v0 + 16);
}

uint64_t *sub_1000C75D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *v5;
  *(v5 + 16) = 0;
  v12 = v5 + *(v11 + 128);
  *v12 = LocalizedStringKey.init(stringLiteral:)();
  *(v12 + 8) = v13;
  *(v12 + 16) = v14 & 1;
  *(v12 + 24) = v15;
  ObservationRegistrar.init()();
  v5[3] = a1;
  v5[4] = a2;
  (*(*(*(v11 + 80) - 8) + 32))(v5 + *(*v5 + 112), a3);
  *(v5 + *(*v5 + 120)) = a4;
  *(v5 + *(*v5 + 136)) = a5;
  return v5;
}

char *sub_1000C7714()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  v2 = *(*v0 + 144);
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1000C7828()
{
  sub_1000C7714();

  return swift_deallocClassInstance();
}

__n128 sub_1000C78AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000C78B8()
{

  return swift_deallocObject();
}

uint64_t sub_1000C78F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000C7910(uint64_t a1)
{
  v1 = *(a1 + 32);
  v12 = *(a1 + 16);
  v13 = v1;
  type metadata accessor for PromotionalAssetsViewModel(255, &v12);
  v2 = type metadata accessor for State();
  if (v3 <= 0x3F)
  {
    *&v12 = v2;
    sub_10000B304(319);
    if (v5 <= 0x3F)
    {
      *(&v12 + 1) = v4;
      sub_1000617D8(319, &qword_10021A308, &type metadata accessor for DismissAction);
      if (v7 <= 0x3F)
      {
        *&v13 = v6;
        sub_1000617D8(319, &qword_1002198B8, &type metadata accessor for ColorScheme);
        if (v9 <= 0x3F)
        {
          *(&v13 + 1) = v8;
          sub_100022910(319);
          if (v11 <= 0x3F)
          {
            v14 = v10;
            v15 = v10;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000C7A40(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100009F70(&qword_100218950, &unk_1001B5000);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[14];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_100009F70(&qword_100219838, &qword_1001B2330);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[15];
    goto LABEL_9;
  }

  v14 = sub_100009F70(&qword_1002195B8, &unk_1001B5010);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[16]];

  return v15(v16, a2, v14);
}

char *sub_1000C7BE4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_100009F70(&qword_100218950, &unk_1001B5000);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[14];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_100009F70(&qword_100219838, &qword_1001B2330);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[15];
    goto LABEL_7;
  }

  v14 = sub_100009F70(&qword_1002195B8, &unk_1001B5010);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[16]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000C7DD0@<X0>(uint64_t a1@<X8>)
{
  result = sub_10001B30C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000C7ED4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v14 = a1;
  State.init(wrappedValue:)();
  v4 = *(&v13[0] + 1);
  *a2 = *&v13[0];
  a2[1] = v4;
  type metadata accessor for RemoteViewConfiguration();
  sub_1000D3348(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  a2[2] = EnvironmentObject.init()();
  a2[3] = v5;
  v6 = *(v3 + 96);
  v13[0] = *(v3 + 80);
  v13[1] = v6;
  v7 = type metadata accessor for PromotionalAssetsView(0, v13);
  v8 = v7[14];
  *(a2 + v8) = swift_getKeyPath();
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  swift_storeEnumTagMultiPayload();
  v9 = v7[15];
  *(a2 + v9) = swift_getKeyPath();
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  swift_storeEnumTagMultiPayload();
  v10 = v7[16];
  *(a2 + v10) = swift_getKeyPath();
  sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
  swift_storeEnumTagMultiPayload();
  v11 = v7[17];
  *(a2 + v11) = swift_getKeyPath();
  return swift_storeEnumTagMultiPayload();
}

double sub_1000C8088@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1000C809C(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  type metadata accessor for PromotionalAssetsViewModel(255, v5);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return *&v5[0];
}

uint64_t sub_1000C80F8(uint64_t a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  type metadata accessor for PromotionalAssetsViewModel(255, v5);
  type metadata accessor for State();
  State.projectedValue.getter();
  return *&v5[0];
}

uint64_t sub_1000C8158(uint64_t a1)
{
  if (static Solarium.isEnabled.getter())
  {
    v2 = 0;
  }

  else
  {
    sub_1000C809C(a1);
    sub_10001A39C();

    v2 = static Visibility.== infix(_:_:)() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1000C81B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v182 = a2;
  v191 = sub_100009F70(&qword_100219278, qword_1001AFC50);
  v3 = __chkstk_darwin(v191);
  v181 = &v140 - v4;
  v198 = *(a1 - 1);
  v193 = *(v198 + 64);
  __chkstk_darwin(v3);
  v195 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CoordinateSpace();
  v185 = *(v6 - 8);
  v186 = v6;
  __chkstk_darwin(v6);
  v184 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for NavigationPath();
  *&v196 = a1[4];
  *&v197 = a1[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  type metadata accessor for _ConditionalContent();
  v11 = type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1000D29C4();
  v231 = WitnessTable;
  v232 = v13;
  v230 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v218 = v11;
  v219 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20, &qword_1001B5178);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28, &qword_1001B5180);
  v218 = type metadata accessor for ModifiedContent();
  v15 = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView(255, v15, v16, v17);
  sub_10000B3DC(&qword_10021DD30, &qword_1001B5188);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38, &qword_1001B5190);
  type metadata accessor for ModifiedContent();
  v219 = type metadata accessor for Optional();
  v194 = a1;
  v18 = a1[5];
  v180 = a1[3];
  v183 = v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v22 = type metadata accessor for SetlistView(255, v19, v20, v21);
  v23 = swift_getWitnessTable();
  v226 = v22;
  v227 = v23;
  swift_getOpaqueTypeMetadata2();
  v179 = type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD40, &qword_1001B5198);
  type metadata accessor for _ConditionalContent();
  v220 = type metadata accessor for Optional();
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v226 = AssociatedTypeWitness;
  v227 = v24;
  v228 = AssociatedConformanceWitness;
  v229 = v25;
  type metadata accessor for PhoneWallpapersWatchFacesView(255, &v226);
  type metadata accessor for PhoneWallpaperView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v26);
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView(255, v24, v25, v27);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  v221 = type metadata accessor for Optional();
  v222 = sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v28 = type metadata accessor for ScrollView();
  v29 = swift_getWitnessTable();
  v218 = v28;
  v219 = v29;
  swift_getOpaqueTypeMetadata2();
  v30 = type metadata accessor for ModifiedContent();
  v218 = v28;
  v219 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v225 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v190 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v31 = swift_getWitnessTable();
  v218 = v30;
  v219 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v218 = v30;
  v219 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_100027068();
  v218 = OpaqueTypeMetadata2;
  v219 = &type metadata for String;
  v220 = v33;
  v221 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v36 = sub_10000B3DC(&qword_10021DD48, &qword_1001B51A8);
  v218 = OpaqueTypeMetadata2;
  v219 = &type metadata for String;
  v220 = v33;
  v221 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v218 = v35;
  v219 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v218 = &type metadata for Solarium;
  v219 = &protocol witness table for Solarium;
  v39 = swift_getOpaqueTypeConformance2();
  v218 = v35;
  v219 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v218 = v35;
  v219 = v36;
  v220 = v38;
  v221 = v37;
  v222 = v39;
  v223 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v218 = v35;
  v219 = v36;
  v220 = v38;
  v221 = v37;
  v222 = v39;
  v223 = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_10001EA38();
  v218 = v41;
  v219 = &type metadata for CGFloat;
  v220 = v42;
  v221 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v45 = sub_10000B3DC(&qword_10021DD50, &qword_1001B51B0);
  v218 = v41;
  v219 = &type metadata for CGFloat;
  v220 = v42;
  v221 = v43;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_10000D1EC(&qword_10021DD58, &qword_10021DD50, &qword_1001B51B0, &protocol conformance descriptor for TupleToolbarContent<A>);
  v218 = v44;
  v219 = v45;
  v220 = v46;
  v221 = v47;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD60, &qword_1001B51B8);
  v48 = type metadata accessor for ModifiedContent();
  v218 = v44;
  v219 = v45;
  v220 = v46;
  v221 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_10000D1EC(&qword_10021DD68, &qword_10021DD60, &qword_1001B51B8, &protocol conformance descriptor for _AnimationModifier<A>);
  v216 = v49;
  v217 = v50;
  v168 = v48;
  v167 = swift_getWitnessTable();
  v51 = type metadata accessor for NavigationStack();
  v171 = *(v51 - 8);
  __chkstk_darwin(v51);
  v161 = &v140 - v52;
  sub_10000B3DC(&qword_10021DD70, &qword_1001B51C0);
  v53 = type metadata accessor for ModifiedContent();
  v174 = *(v53 - 8);
  __chkstk_darwin(v53);
  v160 = &v140 - v54;
  sub_10000B3DC(&qword_10021DD78, &qword_1001B51C8);
  v144 = v53;
  v55 = type metadata accessor for ModifiedContent();
  v172 = *(v55 - 8);
  __chkstk_darwin(v55);
  v170 = &v140 - v56;
  sub_10000B3DC(&qword_10021DD80, &qword_1001B51D0);
  v145 = v55;
  v57 = type metadata accessor for ModifiedContent();
  v175 = *(v57 - 8);
  __chkstk_darwin(v57);
  v169 = &v140 - v58;
  sub_10000B3DC(&qword_10021DD88, &unk_1001B51D8);
  v147 = v57;
  v59 = type metadata accessor for ModifiedContent();
  v176 = *(v59 - 8);
  __chkstk_darwin(v59);
  v189 = &v140 - v60;
  v151 = v59;
  v61 = type metadata accessor for ModifiedContent();
  v177 = *(v61 - 8);
  __chkstk_darwin(v61);
  v188 = &v140 - v62;
  v156 = v61;
  v63 = type metadata accessor for ModifiedContent();
  v178 = *(v63 - 8);
  __chkstk_darwin(v63);
  v173 = &v140 - v64;
  v65 = swift_getWitnessTable();
  v141 = v65;
  v66 = sub_10000D1EC(&qword_10021DD90, &qword_10021DD70, &qword_1001B51C0, &unk_1001ADCE8);
  v214 = v65;
  v215 = v66;
  v67 = swift_getWitnessTable();
  v142 = v67;
  v68 = sub_10000D1EC(&qword_10021DD98, &qword_10021DD78, &qword_1001B51C8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v212 = v67;
  v213 = v68;
  v69 = swift_getWitnessTable();
  v143 = v69;
  v70 = sub_10000D1EC(&qword_10021DDA0, &qword_10021DD80, &qword_1001B51D0, &unk_1001B3380);
  v210 = v69;
  v211 = v70;
  v71 = swift_getWitnessTable();
  v146 = v71;
  v72 = sub_10000D1EC(&qword_10021DDA8, &qword_10021DD88, &unk_1001B51D8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v208 = v71;
  v209 = v72;
  v148 = swift_getWitnessTable();
  v206 = v148;
  v207 = &protocol witness table for _AppearanceActionModifier;
  v155 = swift_getWitnessTable();
  v204 = v155;
  v205 = &protocol witness table for _AppearanceActionModifier;
  v73 = swift_getWitnessTable();
  v74 = sub_10001E89C();
  v152 = v63;
  v153 = v73;
  v75 = v191;
  v218 = v63;
  v219 = v191;
  v220 = v73;
  v221 = v74;
  v76 = v74;
  v163 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v77 = swift_getOpaqueTypeMetadata2();
  v158 = v77;
  v166 = *(v77 - 8);
  __chkstk_darwin(v77);
  v187 = &v140 - v78;
  v218 = v63;
  v219 = v75;
  v220 = v73;
  v221 = v76;
  v149 = v76;
  v157 = swift_getOpaqueTypeConformance2();
  v218 = v77;
  v219 = v75;
  v220 = v157;
  v221 = v76;
  v159 = swift_getOpaqueTypeMetadata2();
  v164 = *(v159 - 8);
  __chkstk_darwin(v159);
  v150 = &v140 - v79;
  v165 = type metadata accessor for ModifiedContent();
  v179 = *(v165 - 8);
  v80 = __chkstk_darwin(v165);
  v154 = &v140 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v162 = &v140 - v82;
  *&v83 = v197;
  *(&v83 + 1) = v180;
  *&v84 = v196;
  *(&v84 + 1) = v183;
  v196 = v84;
  v197 = v83;
  v199 = v83;
  v200 = v84;
  v85 = v192;
  v201 = v192;
  v86 = v161;
  NavigationStack.init<>(root:)();
  v87 = sub_1000D2A30();
  v180 = v87;
  v89 = v184;
  v88 = v185;
  v90 = v186;
  v185[13](v184, enum case for CoordinateSpace.local(_:), v186);
  v91 = v160;
  sub_10007EDF4(&type metadata for PromotionalAssetsViewSizePreferenceKey, v89, sub_1000D4C30, 0, v51, &type metadata for PromotionalAssetsViewSizePreferenceKey, v141, v87, v160);
  (v88[1])(v89, v90);
  (*(v171 + 8))(v86, v51);
  v92 = v198;
  v93 = *(v198 + 16);
  v183 = v198 + 16;
  v184 = v93;
  v95 = v194;
  v94 = v195;
  (v93)(v195, v85, v194);
  v186 = *(v92 + 80);
  v96 = (v186 + 48) & ~v186;
  v97 = swift_allocObject();
  v98 = v196;
  *(v97 + 16) = v197;
  *(v97 + 32) = v98;
  v99 = *(v92 + 32);
  v198 = v92 + 32;
  v185 = v99;
  (v99)(v97 + v96, v94, v95);
  sub_1000D3348(&qword_10021DDB8, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v100 = v170;
  v101 = v144;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v174 + 8))(v91, v101);
  v180 = sub_1000D2B34();
  v102 = v169;
  v103 = v145;
  v104 = sub_10007EFB4(&type metadata for PromotionalAssetsViewSafeAreaPreferenceKey, sub_1000D2498, 0, v145, &type metadata for PromotionalAssetsViewSafeAreaPreferenceKey, v143, v180);
  (*(v172 + 8))(v100, v103, v104);
  v105 = v195;
  v106 = v192;
  v107 = v184;
  (v184)(v195, v192, v95);
  v171 = v96;
  v108 = swift_allocObject();
  v109 = v196;
  *(v108 + 16) = v197;
  *(v108 + 32) = v109;
  (v185)(v108 + v96, v105, v95);
  sub_10001E738();
  v110 = v147;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v175 + 8))(v102, v110);
  v111 = v195;
  (v107)(v195, v106, v95);
  v112 = v171;
  v113 = swift_allocObject();
  v114 = v196;
  *(v113 + 16) = v197;
  *(v113 + 32) = v114;
  v115 = v185;
  (v185)(v113 + v112, v111, v95);
  v116 = v189;
  v117 = v151;
  View.onAppear(perform:)();

  (*(v176 + 8))(v116, v117);
  v118 = v194;
  (v184)(v111, v106, v194);
  v119 = swift_allocObject();
  v120 = v196;
  *(v119 + 16) = v197;
  *(v119 + 32) = v120;
  v115(v119 + v112, v111, v118);
  v121 = v173;
  v122 = v156;
  v123 = v188;
  View.onDisappear(perform:)();

  (*(v177 + 8))(v123, v122);
  v124 = v181;
  sub_100023FFC(v181);
  v125 = v152;
  v126 = v191;
  v127 = v149;
  View.onChange<A>(of:initial:_:)();
  sub_10000D52C(v124, &qword_100219278, qword_1001AFC50);
  (*(v178 + 8))(v121, v125);
  sub_100023FFC(v124);
  v128 = v150;
  v130 = v157;
  v129 = v158;
  v131 = v187;
  View.onChange<A>(of:initial:_:)();
  sub_10000D52C(v124, &qword_100219278, qword_1001AFC50);
  (*(v166 + 8))(v131, v129);
  v218 = v129;
  v219 = v126;
  v220 = v130;
  v221 = v127;
  v132 = swift_getOpaqueTypeConformance2();
  v133 = v154;
  v134 = v159;
  View.accessibilityIdentifier(_:)();
  (*(v164 + 8))(v128, v134);
  v135 = sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v202 = v132;
  v203 = v135;
  v136 = v165;
  swift_getWitnessTable();
  v137 = v162;
  sub_100157EFC();
  v138 = *(v179 + 8);
  v138(v133, v136);
  sub_100157EFC();
  return (v138)(v137, v136);
}

uint64_t sub_1000C9AA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v192 = a3;
  v191 = a1;
  v185 = a6;
  v183 = sub_100009F70(&qword_100219278, qword_1001AFC50);
  __chkstk_darwin(v183);
  v184 = &v128 - v10;
  v194 = a2;
  v195 = a3;
  v196 = a4;
  v197 = a5;
  v187 = type metadata accessor for PromotionalAssetsView(0, &v194);
  v182 = *(v187 - 8);
  v180 = *(v182 + 64);
  __chkstk_darwin(v187);
  v181 = &v128 - v11;
  v186 = sub_100009F70(&qword_10021DD48, &qword_1001B51A8);
  v179 = *(v186 - 8);
  __chkstk_darwin(v186);
  v178 = &v128 - v12;
  v13 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v176 = *(v13 - 8);
  v177 = v13;
  __chkstk_darwin(v13);
  v175 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScrollIndicatorVisibility();
  v173 = *(v15 - 8);
  v174 = v15;
  __chkstk_darwin(v15);
  v131 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = a2;
  v189 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  type metadata accessor for _ConditionalContent();
  v20 = type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1000D29C4();
  v207 = WitnessTable;
  v208 = v22;
  v206 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v194 = v20;
  v195 = v23;
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20, &qword_1001B5178);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28, &qword_1001B5180);
  v194 = type metadata accessor for ModifiedContent();
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView(255, v24, v25, v26);
  sub_10000B3DC(&qword_10021DD30, &qword_1001B5188);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38, &qword_1001B5190);
  type metadata accessor for ModifiedContent();
  v195 = type metadata accessor for Optional();
  v190 = a5;
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v30 = type metadata accessor for SetlistView(255, v27, v28, v29);
  v31 = swift_getWitnessTable();
  v202 = v30;
  v203 = v31;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD40, &qword_1001B5198);
  type metadata accessor for _ConditionalContent();
  v196 = type metadata accessor for Optional();
  v32 = swift_getAssociatedTypeWitness();
  v33 = swift_getAssociatedConformanceWitness();
  v202 = AssociatedTypeWitness;
  v203 = v32;
  v204 = AssociatedConformanceWitness;
  v205 = v33;
  type metadata accessor for PhoneWallpapersWatchFacesView(255, &v202);
  type metadata accessor for PhoneWallpaperView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v34);
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView(255, v32, v33, v35);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v36 = v186;
  type metadata accessor for _ConditionalContent();
  v197 = type metadata accessor for Optional();
  v198 = sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  *&v130 = type metadata accessor for VStack();
  v129 = swift_getWitnessTable();
  v37 = type metadata accessor for ScrollView();
  v133 = *(v37 - 8);
  __chkstk_darwin(v37);
  v128 = &v128 - v38;
  v39 = swift_getWitnessTable();
  v194 = v37;
  v195 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v168 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v164 = &v128 - v41;
  v170 = v42;
  v43 = type metadata accessor for ModifiedContent();
  v171 = *(v43 - 8);
  __chkstk_darwin(v43);
  v167 = &v128 - v44;
  v134 = v37;
  v194 = v37;
  v195 = v39;
  v132 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v200 = OpaqueTypeConformance2;
  v201 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v45 = swift_getWitnessTable();
  v194 = v43;
  v195 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v163 = *(v46 - 8);
  __chkstk_darwin(v46);
  v160 = &v128 - v47;
  v140 = v43;
  v194 = v43;
  v195 = v45;
  v146 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_100027068();
  v194 = v46;
  v195 = &type metadata for String;
  v196 = v48;
  v197 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v169 = *(v50 - 8);
  __chkstk_darwin(v50);
  v165 = &v128 - v51;
  v166 = v46;
  v194 = v46;
  v195 = &type metadata for String;
  v151 = v48;
  v196 = v48;
  v197 = v49;
  v149 = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v194 = v50;
  v195 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v194 = &type metadata for Solarium;
  v195 = &protocol witness table for Solarium;
  v54 = swift_getOpaqueTypeConformance2();
  v194 = v50;
  v195 = v52;
  v55 = swift_getOpaqueTypeConformance2();
  v194 = v50;
  v195 = v36;
  v196 = v53;
  v197 = v52;
  v198 = v54;
  v199 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v159 = *(v56 - 8);
  __chkstk_darwin(v56);
  v155 = v52;
  v156 = &v128 - v57;
  v172 = v50;
  v194 = v50;
  v195 = v36;
  v138 = v53;
  v139 = v54;
  v196 = v53;
  v197 = v52;
  v198 = v54;
  v199 = v55;
  v135 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_10001EA38();
  v194 = v56;
  v195 = &type metadata for CGFloat;
  v196 = v58;
  v197 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v153 = *(v60 - 8);
  __chkstk_darwin(v60);
  v145 = &v128 - v61;
  v62 = sub_10000B3DC(&qword_10021DD50, &qword_1001B51B0);
  v162 = v56;
  v194 = v56;
  v195 = &type metadata for CGFloat;
  v141 = v58;
  v196 = v58;
  v197 = v59;
  v136 = v59;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_10000D1EC(&qword_10021DD58, &qword_10021DD50, &qword_1001B51B0, &protocol conformance descriptor for TupleToolbarContent<A>);
  v158 = v60;
  v194 = v60;
  v195 = v62;
  v148 = v62;
  v65 = v128;
  v143 = v63;
  v196 = v63;
  v197 = v64;
  v137 = v64;
  v66 = swift_getOpaqueTypeMetadata2();
  v150 = *(v66 - 8);
  __chkstk_darwin(v66);
  v142 = &v128 - v67;
  sub_10000B3DC(&qword_10021DD60, &qword_1001B51B8);
  v154 = v66;
  v161 = type metadata accessor for ModifiedContent();
  v157 = *(v161 - 8);
  v68 = __chkstk_darwin(v161);
  v147 = &v128 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v152 = &v128 - v70;
  v193[2] = v188;
  v193[3] = v192;
  v193[4] = v189;
  v193[5] = v190;
  v193[6] = v191;
  v71 = static Axis.Set.vertical.getter();
  sub_1001511F4(v71, sub_1000D2C98, v193, v130, v129);
  v72 = v131;
  static ScrollIndicatorVisibility.never.getter();
  sub_100009F70(&qword_10021A390, &qword_1001B6A40);
  inited = swift_initStackObject();
  v130 = xmmword_1001ACB00;
  *(inited + 16) = xmmword_1001ACB00;
  LOBYTE(v55) = static Axis.Set.vertical.getter();
  *(inited + 32) = v55;
  v74 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v74;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v55)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v74)
  {
    Axis.Set.init(rawValue:)();
  }

  v75 = v164;
  v76 = v134;
  View.scrollIndicators(_:axes:)();
  (*(v173 + 8))(v72, v174);
  (*(v133 + 8))(v65, v76);
  sub_100009F70(&qword_100218DC0, &qword_1001AD860);
  v77 = swift_initStackObject();
  *(v77 + 16) = v130;
  v78 = static Edge.Set.top.getter();
  *(v77 + 32) = v78;
  v79 = static Edge.Set.bottom.getter();
  *(v77 + 33) = v79;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v78)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v79)
  {
    Edge.Set.init(rawValue:)();
  }

  static SafeAreaRegions.all.getter();
  v80 = v167;
  v81 = v170;
  View.ignoresSafeArea(_:edges:)();
  (*(v168 + 8))(v75, v81);
  v83 = v175;
  v82 = v176;
  v84 = v177;
  (*(v176 + 104))(v175, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v177);
  v85 = v160;
  v86 = v140;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v82 + 8))(v83, v84);
  (*(v171 + 8))(v80, v86);
  sub_1000C809C(v187);
  v87 = sub_10001DC3C();
  v89 = v88;

  v194 = v87;
  v195 = v89;
  v91 = v165;
  v90 = v166;
  View.navigationTitle<A>(_:)();

  (*(v163 + 8))(v85, v90);
  Solarium.init()();
  v92 = v178;
  v93 = static ViewInputPredicate.! prefix(_:)();
  __chkstk_darwin(v93);
  v94 = v188;
  v95 = v192;
  *(&v128 - 6) = v188;
  *(&v128 - 5) = v95;
  v96 = v95;
  v97 = v190;
  *(&v128 - 4) = v189;
  *(&v128 - 3) = v97;
  swift_checkMetadataState();
  v127 = v135;
  v98 = v156;
  v99 = v172;
  v100 = v186;
  View.staticIf<A, B>(_:then:)();
  (*(v179 + 8))(v92, v100);
  (*(v169 + 8))(v91, v99);
  v102 = v181;
  v101 = v182;
  v103 = v191;
  v104 = v187;
  (*(v182 + 16))(v181, v191, v187);
  v105 = (*(v101 + 80) + 48) & ~*(v101 + 80);
  v106 = swift_allocObject();
  *(v106 + 2) = v94;
  *(v106 + 3) = v96;
  v108 = v189;
  v107 = v190;
  *(v106 + 4) = v189;
  *(v106 + 5) = v107;
  (*(v101 + 32))(&v106[v105], v102, v104);
  v127 = v136;
  v109 = v145;
  v110 = v162;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v111 = (*(v159 + 8))(v98, v110);
  __chkstk_darwin(v111);
  v112 = v192;
  *(&v128 - 6) = v188;
  *(&v128 - 5) = v112;
  *(&v128 - 4) = v108;
  *(&v128 - 3) = v107;
  v127 = v103;
  v114 = v142;
  v113 = v143;
  v115 = v158;
  v116 = v148;
  v117 = v137;
  View.toolbar<A>(content:)();
  (*(v153 + 8))(v109, v115);
  static Animation.easeInOut.getter();
  v118 = v184;
  sub_100023FFC(v184);
  v194 = v115;
  v195 = v116;
  v196 = v113;
  v197 = v117;
  v119 = swift_getOpaqueTypeConformance2();
  sub_10001E89C();
  v120 = v147;
  v121 = v154;
  View.animation<A>(_:value:)();

  sub_10000D52C(v118, &qword_100219278, qword_1001AFC50);
  (*(v150 + 8))(v114, v121);
  v122 = sub_10000D1EC(&qword_10021DD68, &qword_10021DD60, &qword_1001B51B8, &protocol conformance descriptor for _AnimationModifier<A>);
  v193[8] = v119;
  v193[9] = v122;
  v123 = v161;
  swift_getWitnessTable();
  v124 = v152;
  sub_100157EFC();
  v125 = *(v157 + 8);
  v125(v120, v123);
  sub_100157EFC();
  return (v125)(v124, v123);
}

uint64_t sub_1000CB0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v30 = a4;
  v31 = a1;
  v32 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  v39[5] = swift_getWitnessTable();
  v39[6] = sub_1000D29C4();
  v39[4] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20, &qword_1001B5178);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28, &qword_1001B5180);
  v39[7] = type metadata accessor for ModifiedContent();
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView(255, v11, v12, v13);
  sub_10000B3DC(&qword_10021DD30, &qword_1001B5188);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38, &qword_1001B5190);
  type metadata accessor for ModifiedContent();
  v39[8] = type metadata accessor for Optional();
  v14 = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView(255, v14, v15, v16);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD40, &qword_1001B5198);
  type metadata accessor for _ConditionalContent();
  v39[9] = type metadata accessor for Optional();
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v39[0] = AssociatedTypeWitness;
  v39[1] = v17;
  v39[2] = AssociatedConformanceWitness;
  v39[3] = v18;
  type metadata accessor for PhoneWallpapersWatchFacesView(255, v39);
  type metadata accessor for PhoneWallpaperView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView(255, v17, v18, v20);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  v39[10] = type metadata accessor for Optional();
  v39[11] = sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v21 = type metadata accessor for VStack();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v30 - v26;
  static HorizontalAlignment.leading.getter();
  v34 = a2;
  v35 = a3;
  v36 = v30;
  v37 = v33;
  v38 = v31;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_100157EFC();
  v28 = *(v22 + 8);
  v28(v25, v21);
  sub_100157EFC();
  return (v28)(v27, v21);
}

uint64_t sub_1000CB74C@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v554 = a5;
  v557 = a1;
  v521 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v524 = swift_getAssociatedConformanceWitness();
  v525 = v9;
  type metadata accessor for TourPhotosView(255, v9, v524, v10);
  type metadata accessor for _ConditionalContent();
  v11 = type metadata accessor for Group();
  WitnessTable = swift_getWitnessTable();
  v624 = sub_1000D29C4();
  v622 = swift_getWitnessTable();
  v538 = swift_getWitnessTable();
  *&v604 = v11;
  *(&v604 + 1) = v538;
  v542 = &opaque type descriptor for <<opaque return type of View.onScrollVisibilityChange(threshold:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20, &qword_1001B5178);
  v539 = OpaqueTypeMetadata2;
  v13 = type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28, &qword_1001B5180);
  v544 = v13;
  v552 = type metadata accessor for ModifiedContent();
  v541 = *(v552 - 8);
  v14 = __chkstk_darwin(v552);
  v551 = v498 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v520 = v15;
  v16 = __chkstk_darwin(v14);
  v545 = v498 - v17;
  v547 = *(v13 - 8);
  v18 = __chkstk_darwin(v16);
  v550 = v498 - v19;
  v540 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(v18);
  v549 = v498 - v20;
  v21 = swift_checkMetadataState();
  v537 = *(v21 - 8);
  __chkstk_darwin(v21);
  v536 = v498 - v22;
  v558 = a2;
  v556 = a3;
  v559 = a3;
  v560 = a4;
  v23 = v554;
  v561 = v554;
  v24 = v557;
  v562 = v557;
  swift_checkMetadataState();
  Group<A>.init(content:)();
  *&v604 = a2;
  v553 = a2;
  *(&v604 + 1) = a3;
  v605 = a4;
  v543 = a4;
  v606 = v23;
  v25 = type metadata accessor for PromotionalAssetsView(0, &v604);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v548 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = v498 - v548;
  v29 = *(v26 + 16);
  v532 = (v26 + 16);
  v533 = v27;
  v531 = v29;
  v30 = v24;
  v32 = v31;
  (v29)(v498 - v548, v30);
  v546 = *(v26 + 80);
  v529 = &v27[(v546 + 48) & ~v546];
  v530 = ((v546 + 48) & ~v546);
  v33 = v530;
  v34 = swift_allocObject();
  v35 = v556;
  *(v34 + 16) = a2;
  *(v34 + 24) = v35;
  *(v34 + 32) = a4;
  *(v34 + 40) = v23;
  v36 = *(v26 + 32);
  v37 = v32;
  v36(&v33[v34], v28, v32);
  v38 = v21;
  v39 = v538;
  v40 = v536;
  View.onScrollVisibilityChange(threshold:_:)();

  v41 = v40;
  v42 = v38;
  (*(v537 + 8))(v41, v38);
  v43 = type metadata accessor for CoordinateSpace();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v536 = v45;
  v516 = ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = (v498 - v516);
  *&v604 = v42;
  *(&v604 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = sub_1000D30F8();
  v542 = v48;
  v49 = *(v44 + 104);
  LODWORD(v514) = enum case for CoordinateSpace.local(_:);
  v515 = v44 + 104;
  v513 = v49;
  v49(v46);
  v50 = v539;
  v51 = v48;
  v52 = v549;
  sub_10007EDF4(&type metadata for TourPhotosViewSizePreferenceKey, v46, sub_1000D4C30, 0, v539, &type metadata for TourPhotosViewSizePreferenceKey, OpaqueTypeConformance2, v51, v550);
  v53 = *(v44 + 8);
  v537 = v44 + 8;
  v538 = v43;
  v512 = v53;
  (v53)(v46, v43);
  v54 = (*(v540 + 1))(v52, v50);
  __chkstk_darwin(v54);
  v55 = v498 - v548;
  v531(v498 - v548, v557, v37);
  v56 = swift_allocObject();
  v57 = v556;
  *(v56 + 16) = v553;
  *(v56 + 24) = v57;
  v58 = v554;
  *(v56 + 32) = v543;
  *(v56 + 40) = v58;
  v522 = v36;
  v523 = (v26 + 32);
  v36(&v530[v56], v55, v37);
  v59 = sub_10000D1EC(&qword_10021DDF8, &qword_10021DD20, &qword_1001B5178, &unk_1001ADCE8);
  v620 = OpaqueTypeConformance2;
  v621 = v59;
  v60 = v544;
  v61 = swift_getWitnessTable();
  v62 = sub_1000D3348(&qword_10021DDB8, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v63 = v545;
  v542 = v62;
  v64 = v550;
  View.onPreferenceChange<A>(_:perform:)();
  v65 = v37;

  (*(v547 + 8))(v64, v60);
  v66 = sub_10000D1EC(&qword_10021DE00, &qword_10021DD28, &qword_1001B5180, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v618 = v61;
  v619 = v66;
  v67 = v552;
  v517 = swift_getWitnessTable();
  sub_100157EFC();
  v518 = v541[1];
  v519 = v541 + 1;
  v518(v63, v67);
  v68 = swift_getAssociatedTypeWitness();
  v69 = swift_getAssociatedConformanceWitness();
  v71 = type metadata accessor for FeaturedVideosView(255, v68, v69, v70);
  sub_10000B3DC(&qword_10021DD30, &qword_1001B5188);
  v544 = v71;
  v72 = type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38, &qword_1001B5190);
  v73 = type metadata accessor for ModifiedContent();
  v74 = type metadata accessor for Optional();
  v550 = *(v74 - 8);
  v540 = *(v550 + 64);
  __chkstk_darwin(v74);
  v549 = v75;
  v76 = (v498 - v75);
  v555 = v65;
  sub_1000C809C(v65);
  LOBYTE(v63) = sub_10001BF70();

  v545 = v76;
  v527 = v73;
  v528 = v74;
  v526 = v72;
  if (v63)
  {
    v539 = v498;
    v511 = *(v73 - 8);
    v510 = v511[8];
    v78 = __chkstk_darwin(v77);
    v507 = (v498 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
    v508 = v498;
    v509 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
    v80 = __chkstk_darwin(v78);
    v504 = v498 - v81;
    v506 = v498;
    v505 = *(v72 - 8);
    v82 = __chkstk_darwin(v80);
    v547 = v498 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
    v503 = v498;
    v502 = *(v544 - 8);
    __chkstk_darwin(v82);
    v501 = v498 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for FeaturedVideosViewModel(0, v68, v69, v85);
    v86 = v555;
    sub_1000C809C(v555);
    v87 = sub_10001BA10();
    v89 = v88;

    sub_1000C809C(v86);
    v90 = sub_10001BF90();

    sub_1000C809C(v86);
    v91 = sub_10001B9D4();

    v500 = sub_1000A6954(v87, v89, v90, v91);
    v92 = sub_1000C80F8(v86);
    v498[3] = v93;
    v498[4] = v92;
    v94 = v93;
    v96 = v95;
    v498[2] = v95;
    __chkstk_darwin(v92);
    v97 = v553;
    v98 = v554;
    v99 = v556;
    v498[-4] = v553;
    v498[-3] = v99;
    v100 = v543;
    v498[-2] = v543;
    v498[-1] = v98;
    v498[1] = swift_getKeyPath();
    v599 = v92;
    v600 = v94;
    v601 = v96;
    type metadata accessor for Optional();
    v101 = type metadata accessor for Binding();
    v499 = v498;
    __chkstk_darwin(v101 - 8);
    v103 = v498 - v102;
    *&v604 = v97;
    *(&v604 + 1) = v99;
    v605 = v100;
    v606 = v98;
    type metadata accessor for PromotionalAssetsViewModel(255, &v604);
    type metadata accessor for Binding();
    Binding.subscript.getter();

    __chkstk_darwin(v104);
    v106 = v498 - v105;
    (*(*(v68 - 8) + 56))(v498 - v105, 1, 1, v68);
    v107 = v501;
    v108 = sub_1001217A0(v500, v103, v106, v501);
    __chkstk_darwin(v108);
    v109 = (v498 - v516);
    v110 = v544;
    v111 = swift_getWitnessTable();
    v112 = sub_1000D35D0();
    v113 = v538;
    (v513)(v109, v514, v538);
    sub_10007EDF4(&type metadata for FeaturedVideosViewSizePreferenceKey, v109, sub_1000D4C30, 0, v110, &type metadata for FeaturedVideosViewSizePreferenceKey, v111, v112, v547);
    (v512)(v109, v113);
    v114 = v502[1](v107, v110);
    __chkstk_darwin(v114);
    v115 = v498 - v548;
    v116 = v555;
    v531(v498 - v548, v557, v555);
    v117 = swift_allocObject();
    v118 = v556;
    *(v117 + 16) = v553;
    *(v117 + 24) = v118;
    *(v117 + 32) = v543;
    *(v117 + 40) = v98;
    v522(&v530[v117], v115, v116);
    v119 = sub_10000D1EC(&qword_10021DE08, &qword_10021DD30, &qword_1001B5188, &unk_1001ADCE8);
    v565 = v111;
    v121 = v526;
    v120 = v527;
    v566 = v119;
    v122 = swift_getWitnessTable();
    v123 = v504;
    v124 = v547;
    View.onPreferenceChange<A>(_:perform:)();

    (*(v505 + 8))(v124, v121);
    v125 = sub_10000D1EC(&qword_10021DE10, &qword_10021DD38, &qword_1001B5190, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    v563 = v122;
    v564 = v125;
    swift_getWitnessTable();
    v126 = v507;
    sub_100157EFC();
    v127 = v511;
    v128 = v511[1];
    v129 = v128(v123, v120);
    __chkstk_darwin(v129);
    v130 = v498 - v509;
    sub_100157EFC();
    v131 = v128(v126, v120);
    __chkstk_darwin(v131);
    v132 = (v498 - v549);
    (*(v127 + 32))(v498 - v549, v130, v120);
    (*(v127 + 56))(v132, 0, 1, v120);
    sub_100150FB8(v132, v545);
    (*(v550 + 8))(v132, v528);
  }

  else
  {
    __chkstk_darwin(v77);
    v133 = (v498 - v549);
    (*(*(v73 - 8) + 56))(v498 - v549, 1, 1, v73);
    v134 = swift_getWitnessTable();
    v135 = sub_10000D1EC(&qword_10021DE08, &qword_10021DD30, &qword_1001B5188, &unk_1001ADCE8);
    v616 = v134;
    v617 = v135;
    v136 = swift_getWitnessTable();
    v137 = sub_10000D1EC(&qword_10021DE10, &qword_10021DD38, &qword_1001B5190, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    v614 = v136;
    v615 = v137;
    swift_getWitnessTable();
    sub_100150FB8(v133, v76);
    (*(v550 + 8))(v133, v74);
  }

  v138 = v555;
  v139 = v556;
  v140 = v553;
  v141 = swift_getAssociatedTypeWitness();
  v513 = swift_getAssociatedConformanceWitness();
  v143 = type metadata accessor for SetlistView(255, v141, v513, v142);
  v537 = swift_getWitnessTable();
  v538 = v143;
  *&v604 = v143;
  *(&v604 + 1) = v537;
  v144 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v145 = type metadata accessor for ModifiedContent();
  v146 = sub_10000B3DC(&qword_10021DD40, &qword_1001B5198);
  v542 = v145;
  v515 = v146;
  v539 = type metadata accessor for _ConditionalContent();
  v147 = type metadata accessor for Optional();
  v516 = v498;
  v548 = *(v147 - 8);
  v549 = v147;
  v536 = *(v548 + 64);
  __chkstk_darwin(v147);
  v547 = v498 - v148;
  sub_1000C809C(v138);
  v149 = sub_10001C958();

  if (v149)
  {
    v512 = v144;
    v150 = swift_checkMetadataState();
    v514 = v498;
    v151 = *(v150 - 8);
    v508 = *(v151 + 64);
    __chkstk_darwin(v150);
    v509 = v152;
    v153 = v498 - v152;
    sub_1000C809C(v138);
    v154 = type metadata accessor for Optional();
    v155 = *(v154 - 8);
    __chkstk_darwin(v154);
    v157 = v498 - v156;
    sub_10001C8E4(v498 - v156);

    if ((*(v151 + 48))(v157, 1, v150) != 1)
    {
      v510 = v151;
      v511 = v153;
      v201 = (*(v151 + 32))(v153, v157, v150);
      v556 = v498;
      v554 = *(v542 - 1);
      v553 = *(v554 + 8);
      v202 = __chkstk_darwin(v201);
      v546 = (v203 + 15) & 0xFFFFFFFFFFFFFFF0;
      v533 = v498 - v546;
      v543 = v498;
      v204 = __chkstk_darwin(v202);
      v530 = v498 - v205;
      v532 = v498;
      v531 = *(v512 - 1);
      __chkstk_darwin(v204);
      v522 = (v498 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0));
      v506 = swift_checkMetadataState();
      v529 = v498;
      v523 = *(v506 - 1);
      __chkstk_darwin(v506);
      v208 = (v498 - v207);
      v507 = v150;
      v513 = type metadata accessor for SetlistViewModel(0, v150, v513, v209);
      v210 = v555;
      sub_1000C809C(v555);
      v211 = sub_10001BA10();
      v504 = v212;
      v505 = v211;

      sub_1000C809C(v210);
      v213 = sub_10001C31C();
      v215 = v214;

      __chkstk_darwin(v216);
      v217 = v498 - v509;
      (*(v510 + 16))(v498 - v509, v511, v150);
      sub_1000C809C(v210);
      v218 = sub_10001CC28();

      v219 = sub_100037514(v505, v504, v213, v215, v217, v218 & 1);
      sub_100049C48(v219, v208);
      v220 = type metadata accessor for AccessibilityChildBehavior();
      v221 = *(v220 - 8);
      __chkstk_darwin(v220);
      v223 = v498 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
      static AccessibilityChildBehavior.contain.getter();
      v224 = v522;
      v225 = v506;
      v226 = v537;
      View.accessibilityElement(children:)();
      (*(v221 + 8))(v223, v220);
      (v523[1])(v208, v225);
      *&v604 = v225;
      *(&v604 + 1) = v226;
      v227 = swift_getOpaqueTypeConformance2();
      v228 = v530;
      v229 = v512;
      View.accessibilityIdentifier(_:)();
      (*(v531 + 1))(v224, v229);
      v230 = sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
      v569 = v227;
      v570 = v230;
      v231 = v542;
      v232 = swift_getWitnessTable();
      v233 = v533;
      sub_100157EFC();
      v234 = *(v554 + 1);
      v235 = v234(v228, v231);
      v554 = v498;
      __chkstk_darwin(v235);
      v236 = v498 - v546;
      v237 = sub_100157EFC();
      __chkstk_darwin(v237);
      v239 = v498 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0);
      v240 = sub_1000D3214();
      *&v604 = &type metadata for SetlistLoadingView;
      *(&v604 + 1) = v240;
      v241 = swift_getOpaqueTypeConformance2();
      sub_100061878(v236, v231, v515, v232, v241);
      v234(v236, v231);
      v234(v233, v231);
      (*(v510 + 8))(v511, v507);
      (*(*(v539 - 1) + 56))(v239, 0, 1, v539);
      v567 = v232;
      v568 = v241;
      swift_getWitnessTable();
      sub_100150FB8(v239, v547);
      (*(v548 + 8))(v239, v549);
      goto LABEL_15;
    }

    (*(v155 + 8))(v157, v154);
    v138 = v555;
    v139 = v556;
    v140 = v553;
  }

  v158 = v557;
  sub_1000C809C(v138);
  if (!v158[2])
  {
LABEL_36:
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D3348(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v160 = sub_10001D7A4(v159);

  if ((v160 & 1) == 0)
  {
    __chkstk_darwin(v161);
    v193 = v498 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(*(v539 - 1) + 56))(v193, 1, 1, v539);
    *&v604 = v538;
    *(&v604 + 1) = v537;
    v194 = swift_getOpaqueTypeConformance2();
    v195 = sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v612 = v194;
    v613 = v195;
    v196 = swift_getWitnessTable();
    v197 = sub_1000D3214();
    *&v604 = &type metadata for SetlistLoadingView;
    *(&v604 + 1) = v197;
    v198 = swift_getOpaqueTypeConformance2();
    v610 = v196;
    v611 = v198;
    swift_getWitnessTable();
    sub_100150FB8(v193, v547);
    (*(v548 + 8))(v193, v549);
    v200 = v524;
    v199 = v525;
    goto LABEL_16;
  }

  v514 = v498;
  v508 = ~v546;
  v513 = *(v515 - 8);
  v162 = __chkstk_darwin(v161);
  v512 = v498 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  v511 = v498;
  __chkstk_darwin(v162);
  v510 = v498 - v164;
  v165 = v557;
  sub_1000C809C(v138);
  LODWORD(v509) = sub_10001C91C();

  v507 = v498;
  v167 = v533;
  __chkstk_darwin(v166);
  v168 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v169 = v531;
  v531(v498 - v168, v165, v138);
  v170 = swift_allocObject();
  *(v170 + 16) = v140;
  *(v170 + 24) = v139;
  v171 = v543;
  v172 = v554;
  *(v170 + 32) = v543;
  *(v170 + 40) = v172;
  v529 = v170;
  v173 = (v522)(&v530[v170], v498 - v168, v138);
  v530 = v498;
  __chkstk_darwin(v173);
  v174 = v498 - v168;
  v169(v498 - v168, v165, v138);
  type metadata accessor for MainActor();
  v175 = static MainActor.shared.getter();
  v176 = (v546 + 64) & v508;
  v177 = swift_allocObject();
  *(v177 + 2) = v175;
  *(v177 + 3) = &protocol witness table for MainActor;
  v178 = v556;
  *(v177 + 4) = v553;
  *(v177 + 5) = v178;
  v179 = v554;
  *(v177 + 6) = v171;
  *(v177 + 7) = v179;
  v522(&v177[v176], v174, v138);
  v180 = type metadata accessor for TaskPriority();
  v181 = *(v180 - 8);
  v182 = *(v181 + 64);
  __chkstk_darwin(v180);
  v183 = (v182 + 15) & 0xFFFFFFFFFFFFFFF0;
  v184 = v498 - v183;
  static TaskPriority.userInitiated.getter();
  if (sub_1001A7444(2, 26, 4, 0))
  {
    v553 = type metadata accessor for _TaskModifier2();
    v554 = v498;
    v556 = v498;
    v546 = *(v553 - 1);
    __chkstk_darwin(v553);
    v186 = v498 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v604 = 0;
    *(&v604 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    *&v604 = 0xD000000000000038;
    *(&v604 + 1) = 0x80000001001C0630;
    v599 = 109;
    v187._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v187);

    v543 = v498;
    __chkstk_darwin(v188);
    (*(v181 + 16))(v498 - v183, v498 - v183, v180);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v181 + 8))(v498 - v183, v180);
    v189 = sub_100009F70(&qword_1002184C8, &unk_1001B52A0);
    v190 = v510;
    (*(v546 + 32))(v510 + *(v189 + 36), v186, v553);
  }

  else
  {
    v242 = sub_100009F70(&qword_1002184D0, &qword_1001ACB50);
    v190 = v510;
    v243 = (v510 + *(v242 + 36));
    v244 = type metadata accessor for _TaskModifier();
    (*(v181 + 32))(&v243[*(v244 + 20)], v184, v180);
    *v243 = &unk_1001B5298;
    *(v243 + 1) = v177;
  }

  *v190 = v509 & 1;
  v191 = v529;
  *(v190 + 8) = sub_1000D3390;
  *(v190 + 16) = v191;
  v246 = v512;
  v245 = v513;
  v247 = v515;
  v248 = (*(v513 + 4))(v512, v190, v515);
  __chkstk_darwin(v248);
  v250 = v498 - ((v249 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v604 = v538;
  *(&v604 + 1) = v537;
  v251 = swift_getOpaqueTypeConformance2();
  v252 = sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v573 = v251;
  v574 = v252;
  v253 = v542;
  v254 = swift_getWitnessTable();
  v255 = sub_1000D3214();
  *&v604 = &type metadata for SetlistLoadingView;
  *(&v604 + 1) = v255;
  v256 = swift_getOpaqueTypeConformance2();
  sub_100061970(v246, v253, v247, v254, v256);
  (*(v245 + 8))(v246, v247);
  (*(*(v539 - 1) + 56))(v250, 0, 1, v539);
  v571 = v254;
  v572 = v256;
  swift_getWitnessTable();
  sub_100150FB8(v250, v547);
  (*(v548 + 8))(v250, v549);
LABEL_15:
  v200 = v524;
  v199 = v525;
LABEL_16:
  v257 = swift_getAssociatedTypeWitness();
  v258 = swift_getAssociatedConformanceWitness();
  *&v604 = v199;
  *(&v604 + 1) = v257;
  v605 = v200;
  v606 = v258;
  v259 = type metadata accessor for PhoneWallpapersWatchFacesView(255, &v604);
  v523 = type metadata accessor for PhoneWallpaperView(255, v199, v200, v260);
  v261 = type metadata accessor for Optional();
  v522 = v258;
  v531 = type metadata accessor for WatchFacesView(255, v257, v258, v262);
  v529 = type metadata accessor for Optional();
  v530 = v261;
  swift_getTupleTypeMetadata2();
  v263 = type metadata accessor for TupleView();
  v546 = v259;
  v264 = type metadata accessor for _ConditionalContent();
  v265 = type metadata accessor for Optional();
  v532 = v498;
  v554 = v265;
  v556 = *(v265 - 8);
  v266 = v556[8];
  v267 = (v266 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v265);
  v553 = v498 - v267;
  v268 = v555;
  sub_1000C809C(v555);
  v269 = [objc_opt_self() currentDevice];
  v270 = [v269 userInterfaceIdiom];

  AssociatedConformanceWitness = v263;
  AssociatedTypeWitness = v264;
  v533 = v266;
  if (v270)
  {
    v543 = v498;
    __chkstk_darwin(v271);
    (*(*(v264 - 8) + 56))(v498 - v267, 1, 1, v264);
    v272 = swift_getWitnessTable();
    v273 = swift_getWitnessTable();
    v608 = v272;
    v609 = v273;
    swift_getWitnessTable();
    sub_100150FB8(v498 - v267, v553);
    (v556[1])(v498 - v267, v554);
  }

  else
  {
    v511 = v257;
    v274 = v530;
    v543 = v498;
    v515 = *(v264 - 8);
    __chkstk_darwin(v271);
    v513 = v275;
    v276 = v498 - ((v275 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000C809C(v268);
    v277 = sub_10001CFF4();

    v279 = v268;
    v514 = v276;
    if (v277)
    {
      v512 = v498;
      v280 = v546;
      v531 = *(v546 - 8);
      v530 = *(v531 + 8);
      v281 = __chkstk_darwin(v278);
      v529 = ((v282 + 15) & 0xFFFFFFFFFFFFFFF0);
      v510 = v498 - v529;
      v523 = v498;
      __chkstk_darwin(v281);
      v509 = v498 - v283;
      sub_1000C809C(v268);
      v284 = sub_10001BA10();
      v507 = v285;
      v508 = v284;

      sub_1000C809C(v268);
      v286 = sub_10001C31C();
      v505 = v287;
      v506 = v286;

      type metadata accessor for PhoneWallpaperViewModel(0, v525, v524, v288);
      sub_1000C809C(v268);
      v289 = sub_10001BA10();
      v291 = v290;

      sub_1000C809C(v268);
      v292 = sub_10001D264();

      sub_1000C809C(v268);
      sub_10001BD34();
      v294 = v293;

      sub_1000C809C(v268);
      v295 = sub_10001A584();

      sub_1000C809C(v268);
      v296 = sub_10001D0BC();

      v525 = sub_100099B88(v289, v291, v292, v296, v294, v295);
      type metadata accessor for WatchFacesViewModel(0, v511, v522, v297);
      sub_1000C809C(v268);
      v298 = sub_10001BA10();
      v300 = v299;

      sub_1000C809C(v268);
      v301 = sub_10001D0DC();

      sub_1000C809C(v268);
      sub_10001BD34();
      v303 = v302;

      sub_1000C809C(v268);
      v304 = sub_10001A584();

      sub_1000C809C(v268);
      v305 = sub_10001D0BC();

      v306 = sub_1000EC04C(v298, v300, v301, v305, v303, v304);
      v307 = v509;
      sub_10018BC28(v508, v507, v506, v505, v525, v306, v509);
      v308 = swift_getWitnessTable();
      v309 = v510;
      sub_100157EFC();
      v310 = *(v531 + 1);
      v311 = v310(v307, v280);
      __chkstk_darwin(v311);
      v312 = (v498 - v529);
      sub_100157EFC();
      v313 = AssociatedConformanceWitness;
      v314 = swift_getWitnessTable();
      v315 = v514;
      sub_100061878(v312, v280, v313, v308, v314);
      v310(v312, v280);
      v316 = v310(v309, v280);
      v317 = v315;
    }

    else
    {
      v318 = *(v274 - 1);
      v319 = *(v318 + 64);
      __chkstk_darwin(v278);
      v320 = (v319 + 15) & 0xFFFFFFFFFFFFFFF0;
      sub_1000C809C(v279);
      v321 = sub_10001CD08();

      v512 = v498;
      v509 = v318;
      v510 = v498 - v320;
      v508 = v319;
      if (v321)
      {
        v507 = v498;
        v323 = v523;
        v506 = *(v523 - 1);
        v505 = v506[8];
        v324 = __chkstk_darwin(v322);
        v502 = (v498 - ((v325 + 15) & 0xFFFFFFFFFFFFFFF0));
        v503 = v498;
        v504 = (v325 + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v324);
        v327 = v498 - v326;
        v328 = v279;
        v329 = v525;
        v501 = type metadata accessor for PhoneWallpaperViewModel(0, v525, v524, v330);
        sub_1000C809C(v328);
        v331 = sub_10001BA10();
        v499 = v332;
        v500 = v331;

        sub_1000C809C(v328);
        v333 = sub_10001D264();

        sub_1000C809C(v328);
        sub_10001BD34();
        v335 = v334;

        sub_1000C809C(v328);
        v336 = sub_10001A584();

        sub_1000C809C(v328);
        v337 = sub_10001D0BC();
        v524 = v320;
        v338 = v337;

        v339 = sub_100099B88(v500, v499, v333, v338, v335, v336);
        v340 = type metadata accessor for Optional();
        __chkstk_darwin(v340 - 8);
        v342 = v498 - v341;
        (*(*(v329 - 1) + 56))(v498 - v341, 1, 1, v329);
        v343 = v327;
        sub_100006C94(v339, v342, v327);
        swift_getWitnessTable();
        v344 = v502;
        v345 = v343;
        sub_100157EFC();
        v346 = v506;
        v347 = v506[1];
        v348 = v347(v345, v323);
        v525 = v498;
        __chkstk_darwin(v348);
        v349 = v498 - v504;
        sub_100157EFC();
        v350 = v347(v344, v323);
        __chkstk_darwin(v350);
        v351 = (v498 - v524);
        (*(v346 + 32))(v498 - v524, v349, v323);
        (*(v346 + 56))(v351, 0, 1, v323);
        sub_100150FB8(v351, v510);
        v352 = (*(v509 + 8))(v351, v274);
        v279 = v328;
      }

      else
      {
        __chkstk_darwin(v322);
        (*(*(v523 - 1) + 56))(v498 - v320, 1, 1, v523);
        swift_getWitnessTable();
        sub_100150FB8(v498 - v320, v498 - v320);
        v352 = (*(v318 + 8))(v498 - v320, v274);
      }

      v353 = v529;
      v354 = v531;
      v355 = v511;
      v511 = v498;
      v524 = *(v529 - 1);
      v356 = *(v524 + 8);
      __chkstk_darwin(v352);
      v357 = (v356 + 15) & 0xFFFFFFFFFFFFFFF0;
      v525 = (v498 - v357);
      sub_1000C809C(v279);
      v358 = sub_10001CD28();

      if (v358)
      {
        v506 = v498;
        v507 = *(v354 - 1);
        v505 = v507[8];
        v360 = __chkstk_darwin(v359);
        v362 = v498 - ((v361 + 15) & 0xFFFFFFFFFFFFFFF0);
        v503 = v498;
        v504 = (v361 + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v360);
        v363 = v279;
        v365 = v498 - v364;
        v502 = type metadata accessor for WatchFacesViewModel(0, v355, v366, v367);
        v522 = ((v356 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1000C809C(v363);
        v368 = sub_10001BA10();
        v500 = v369;
        v501 = v368;

        sub_1000C809C(v363);
        v370 = sub_10001D0DC();

        sub_1000C809C(v363);
        sub_10001BD34();
        v372 = v371;

        sub_1000C809C(v363);
        v373 = sub_10001A584();

        sub_1000C809C(v363);
        LOBYTE(v363) = sub_10001D0BC();

        v374 = sub_1000EC04C(v501, v500, v370, v363 & 1, v372, v373);
        v375 = type metadata accessor for Optional();
        __chkstk_darwin(v375 - 8);
        v377 = v498 - v376;
        (*(*(v355 - 8) + 56))(v498 - v376, 1, 1, v355);
        sub_10001555C(v374, v377, v365);
        swift_getWitnessTable();
        v378 = v362;
        sub_100157EFC();
        v379 = v507;
        v380 = v507[1];
        v381 = v380(v365, v531);
        __chkstk_darwin(v381);
        v382 = v498 - v504;
        sub_100157EFC();
        v383 = v380(v378, v531);
        v384 = v531;
        __chkstk_darwin(v383);
        v385 = (v498 - v522);
        (*(v379 + 32))(v498 - v522, v382, v384);
        v386 = v379;
        v274 = v530;
        (*(v386 + 56))(v385, 0, 1, v384);
        sub_100150FB8(v385, v525);
        v387 = *(v524 + 1);
        v507 = ((v524 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v522 = v387;
        v388 = (v387)(v385, v353);
      }

      else
      {
        __chkstk_darwin(v359);
        (*(*(v354 - 1) + 56))(v498 - v357, 1, 1, v354);
        swift_getWitnessTable();
        sub_100150FB8(v498 - v357, v525);
        v389 = *(v524 + 1);
        v507 = ((v524 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v522 = v389;
        v388 = (v389)(v498 - v357, v353);
      }

      v390 = v353;
      v531 = v498;
      v391 = AssociatedConformanceWitness;
      v505 = *(AssociatedConformanceWitness - 8);
      v392 = __chkstk_darwin(v388);
      v394 = v498 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0);
      v506 = v498;
      __chkstk_darwin(v392);
      v396 = v498 - ((v395 + 15) & 0xFFFFFFFFFFFFFFF0);
      v397 = v509;
      v398 = (*(v509 + 16))(v396, v510, v274);
      v508 = v498;
      *&v604 = v396;
      __chkstk_darwin(v398);
      v399 = v356 + 15;
      v400 = v391;
      v401 = v498 - (v399 & 0xFFFFFFFFFFFFFFF0);
      (*(v524 + 2))(v401, v525, v390);
      *(&v604 + 1) = v401;
      v599 = v274;
      v600 = v390;
      v578 = swift_getWitnessTable();
      v594 = swift_getWitnessTable();
      v577 = swift_getWitnessTable();
      v595 = swift_getWitnessTable();
      sub_100151024(&v604, 2uLL, &v599);
      v402 = v390;
      v403 = v522;
      (v522)(v401, v402);
      v404 = *(v397 + 8);
      v404(v396, v274);
      v405 = v546;
      v406 = swift_getWitnessTable();
      v407 = swift_getWitnessTable();
      v317 = v514;
      sub_100061970(v394, v405, v400, v406, v407);
      (*(v505 + 8))(v394, v400);
      v403(v525, v529);
      v316 = (v404)(v510, v530);
    }

    __chkstk_darwin(v316);
    v409 = v498 - ((v408 + 15) & 0xFFFFFFFFFFFFFFF0);
    v410 = swift_getWitnessTable();
    v411 = swift_getWitnessTable();
    v575 = v410;
    v576 = v411;
    v412 = AssociatedTypeWitness;
    swift_getWitnessTable();
    sub_100157EFC();
    v413 = v515;
    v414 = (*(v515 + 8))(v317, v412);
    v415 = v533;
    __chkstk_darwin(v414);
    (*(v413 + 32))(v498 - ((v415 + 15) & 0xFFFFFFFFFFFFFFF0), v409, v412);
    (*(v413 + 56))(v498 - ((v415 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v412);
    sub_100150FB8(v498 - ((v415 + 15) & 0xFFFFFFFFFFFFFFF0), v553);
    (v556[1])(v498 - ((v415 + 15) & 0xFFFFFFFFFFFFFFF0), v554);
  }

  v416 = sub_100009F70(&qword_10021A880, &qword_1001B51A0);
  v529 = *(*(v416 - 8) + 64);
  __chkstk_darwin(v416);
  v543 = (v498 - v417);
  v418 = v555;
  v419 = v557;
  sub_1000C809C(v555);
  if (!v419[2])
  {
    goto LABEL_36;
  }

  v530 = v416;
  v531 = v498;

  v421 = sub_10001EF0C(v420);
  v423 = v422;

  if (!v423)
  {
    goto LABEL_33;
  }

  v424 = HIBYTE(v423) & 0xF;
  if ((v423 & 0x2000000000000000) == 0)
  {
    v424 = v421 & 0xFFFFFFFFFFFFLL;
  }

  if (!v424)
  {
    v458 = type metadata accessor for AppModule(0);
    v456 = v543;
    v457 = (*(*(v458 - 8) + 56))(v543, 1, 1, v458);
  }

  else
  {
LABEL_33:
    v425 = type metadata accessor for AppModule(0);
    v525 = v498;
    v426 = *(v425 - 8);
    __chkstk_darwin(v425);
    v428 = v498 - ((v427 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1000C809C(v418);
    v429 = sub_10001BA10();
    v522 = v430;
    v523 = v429;

    sub_1000C809C(v418);
    v431 = sub_100009F70(qword_100218748, &unk_1001AD110);
    v524 = v498;
    __chkstk_darwin(v431 - 8);
    v432 = v418;
    v434 = v498 - v433;
    sub_10001BA88();

    sub_1000C809C(v432);

    v436 = sub_10001EF0C(v435);
    v438 = v437;

    type metadata accessor for AppViewModel(0);
    v439 = swift_allocObject();
    v440 = v439 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_subheaderTitle;
    *v440 = LocalizedStringKey.init(stringLiteral:)();
    *(v440 + 8) = v441;
    *(v440 + 16) = v442 & 1;
    *(v440 + 24) = v443;
    v444 = v439 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_descriptionTitle;
    *v444 = LocalizedStringKey.init(stringLiteral:)();
    *(v444 + 8) = v445;
    *(v444 + 16) = v446 & 1;
    *(v444 + 24) = v447;
    ObservationRegistrar.init()();
    *(v439 + 16) = 0;
    v448 = v522;
    *(v439 + 24) = v523;
    *(v439 + 32) = v448;
    sub_1000B9AEC(v434, v439 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_eventURL);
    v449 = (v439 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_queryAppID);
    *v449 = v436;
    v449[1] = v438;
    *(v439 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_shouldShowDiscoveryDetail) = 1;
    *(v439 + OBJC_IVAR____TtC15ShazamEventsApp12AppViewModel_analyticsPageNameType) = 13;
    KeyPath = swift_getKeyPath();
    *v428 = v439;
    v600 = 0;
    v599 = 0;
    sub_100009F70(&qword_100219F00, &qword_1001AF350);
    State.init(wrappedValue:)();
    v451 = v605;
    *(v428 + 8) = v604;
    *(v428 + 3) = v451;
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D3348(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    *(v428 + 4) = EnvironmentObject.init()();
    *(v428 + 5) = v452;
    v453 = *(v425 + 28);
    *&v428[v453] = swift_getKeyPath();
    sub_100009F70(&qword_100218DF8, &qword_1001AEBD0);
    swift_storeEnumTagMultiPayload();
    v454 = &v428[*(v425 + 32)];
    *v454 = KeyPath;
    v454[8] = 0;
    v455 = v428;
    v456 = v543;
    sub_1000D3274(v455, v543);
    v457 = (*(v426 + 56))(v456, 0, 1, v425);
  }

  v557 = v498;
  __chkstk_darwin(v457);
  v460 = (v498 - ((v459 + 15) & 0xFFFFFFFFFFFFFFF0));
  v525 = v460;
  v461 = v552;
  v462 = (v541[2])(v460, v551);
  v555 = v498;
  *&v604 = v460;
  __chkstk_darwin(v462);
  v464 = v498 - ((v463 + 15) & 0xFFFFFFFFFFFFFFF0);
  v540 = v464;
  v465 = v528;
  v466 = (*(v550 + 16))(v464, v545);
  v541 = v498;
  *(&v604 + 1) = v464;
  __chkstk_darwin(v466);
  v468 = v498 - ((v467 + 15) & 0xFFFFFFFFFFFFFFF0);
  v524 = v468;
  v469 = v549;
  v470 = (*(v548 + 16))(v468, v547, v549);
  v536 = v498;
  v605 = v468;
  __chkstk_darwin(v470);
  v472 = v498 - ((v471 + 15) & 0xFFFFFFFFFFFFFFF0);
  v523 = v472;
  v473 = v556;
  v475 = v553;
  v474 = v554;
  v476 = (v556[2])(v472, v553, v554);
  v533 = v498;
  v606 = v472;
  __chkstk_darwin(v476);
  v478 = v498 - ((v477 + 15) & 0xFFFFFFFFFFFFFFF0);
  v529 = v478;
  sub_1000D32D8(v456, v478);
  v607 = v478;
  v599 = v461;
  v600 = v465;
  v479 = v465;
  v601 = v469;
  v602 = v474;
  v603 = v530;
  v594 = v517;
  v480 = swift_getWitnessTable();
  v481 = sub_10000D1EC(&qword_10021DE08, &qword_10021DD30, &qword_1001B5188, &unk_1001ADCE8);
  v592 = v480;
  v593 = v481;
  v482 = swift_getWitnessTable();
  v483 = sub_10000D1EC(&qword_10021DE10, &qword_10021DD38, &qword_1001B5190, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  v590 = v482;
  v591 = v483;
  v589 = swift_getWitnessTable();
  v595 = swift_getWitnessTable();
  v587 = v538;
  v588 = v537;
  v484 = swift_getOpaqueTypeConformance2();
  v485 = sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v585 = v484;
  v586 = v485;
  v486 = swift_getWitnessTable();
  v487 = sub_1000D3214();
  v587 = &type metadata for SetlistLoadingView;
  v588 = v487;
  v488 = swift_getOpaqueTypeConformance2();
  v583 = v486;
  v584 = v488;
  v582 = swift_getWitnessTable();
  v596 = swift_getWitnessTable();
  v489 = swift_getWitnessTable();
  v490 = swift_getWitnessTable();
  v580 = v489;
  v581 = v490;
  v579 = swift_getWitnessTable();
  v597 = swift_getWitnessTable();
  v598 = sub_100058F24();
  sub_100151024(&v604, 5uLL, &v599);
  sub_10000D52C(v543, &qword_10021A880, &qword_1001B51A0);
  v491 = v473[1];
  v556 = v473 + 1;
  v491(v475, v474);
  v492 = *(v548 + 8);
  v492(v547, v469);
  v493 = *(v550 + 8);
  v494 = v479;
  v493(v545, v479);
  v495 = v552;
  v496 = v518;
  v518(v551, v552);
  sub_10000D52C(v529, &qword_10021A880, &qword_1001B51A0);
  v491(v523, v554);
  v492(v524, v549);
  v493(v540, v494);
  return v496(v525, v495);
}

uint64_t sub_1000CFDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v88 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for TourPhotosView(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v85 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v82 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = v77 - v17;
  v89 = v18;
  v92 = type metadata accessor for _ConditionalContent();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = v77 - v19;
  v83 = a2;
  *&v105 = a2;
  *(&v105 + 1) = a3;
  v86 = a3;
  v87 = a4;
  *&v106 = a4;
  *(&v106 + 1) = a5;
  v20 = a5;
  v21 = type metadata accessor for PromotionalAssetsView(0, &v105);
  sub_1000C809C(v21);
  LOBYTE(a5) = sub_10001CCE8();

  if (a5)
  {
    type metadata accessor for TourPhotosViewModel(0, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
    sub_1000C809C(v21);
    v23 = sub_10001BA10();
    v81 = v24;

    sub_1000C809C(v21);
    v25 = sub_10001CE6C();

    sub_1000C809C(v21);
    v26 = sub_10001C31C();
    v28 = v27;

    sub_1000C809C(v21);
    v29 = sub_10001A584();

    sub_1000C809C(v21);
    sub_10001BAFC();
    v31 = v30;

    sub_1000C809C(v21);
    v32 = sub_10001D3EC();

    v81 = sub_100075A7C(v23, v81, v25, v26, v28, v32 & 1, v29, v31);
    v33 = sub_1000C80F8(v21);
    v35 = v34;
    v37 = v36;
    __chkstk_darwin(v33);
    v38 = v83;
    v39 = v86;
    v77[-4] = v83;
    v77[-3] = v39;
    v40 = v87;
    v77[-2] = v87;
    v77[-1] = v20;
    v77[2] = a1;
    v41 = v40;
    swift_getKeyPath();
    *&v101 = v33;
    *(&v101 + 1) = v35;
    *&v102 = v37;
    *&v105 = v38;
    *(&v105 + 1) = v39;
    *&v106 = v41;
    *(&v106 + 1) = v20;
    type metadata accessor for PromotionalAssetsViewModel(255, &v105);
    v77[1] = type metadata accessor for Binding();
    Binding.subscript.getter();

    v80 = *(&v105 + 1);
    v42 = v105;
    v79 = v106;
    v78 = BYTE8(v106);

    v43 = sub_1000C80F8(v21);
    v45 = v44;
    v47 = v46;
    __chkstk_darwin(v43);
    v77[-4] = v38;
    v77[-3] = v39;
    v77[-2] = v41;
    v77[-1] = v20;
    swift_getKeyPath();
    v96 = v43;
    v97 = v45;
    v98 = v47;
    Binding.subscript.getter();

    v48 = v93;
    v49 = v94;
    v50 = v95;

    v51 = v82;
    sub_10012E5C0(v81, v42, v80, v79, v78, v48, v49, v82, v50);
    v52 = v89;
    WitnessTable = swift_getWitnessTable();
    v54 = v84;
    sub_100157EFC();
    v55 = *(v85 + 8);
    v55(v51, v52);
    sub_100157EFC();
    v56 = sub_1000D29C4();
    v57 = v90;
    sub_100061878(v51, v52, &type metadata for TourPhotosDefaultView, WitnessTable, v56);
    v55(v51, v52);
    v55(v54, v52);
  }

  else
  {
    sub_1000C809C(v21);
    v58 = sub_10001C31C();
    v60 = v59;

    sub_1000C809C(v21);
    v61 = sub_10001C548();

    sub_1000C809C(v21);
    v62 = sub_10001D3EC();

    sub_1000C809C(v21);
    v63 = sub_10001A95C();
    v65 = v64;
    v67 = v66;
    v69 = v68;

    *&v101 = v58;
    *(&v101 + 1) = v60;
    *&v102 = v61;
    BYTE8(v102) = v62 & 1;
    *&v103 = v63;
    *(&v103 + 1) = v65;
    *&v104 = v67;
    *(&v104 + 1) = v69;
    v70 = v89;
    v71 = swift_getWitnessTable();
    v72 = sub_1000D29C4();
    v57 = v90;
    sub_100061970(&v101, v70, &type metadata for TourPhotosDefaultView, v71, v72);
    v105 = v101;
    v106 = v102;
    v107 = v103;
    v108 = v104;
    sub_1000D3DBC(&v105);
  }

  v73 = swift_getWitnessTable();
  v74 = sub_1000D29C4();
  v99 = v73;
  v100 = v74;
  v75 = v92;
  swift_getWitnessTable();
  sub_100157EFC();
  return (*(v91 + 8))(v57, v75);
}

double sub_1000D0620(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  v7 = type metadata accessor for PromotionalAssetsView(0, v9);
  sub_1000C809C(v7);
  sub_10001D8CC((a1 & 1) == 0);

  return result;
}

void sub_1000D0684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(double))
{
  v8 = *(a1 + 8);
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v9 = type metadata accessor for PromotionalAssetsView(0, v10);
  sub_1000C809C(v9);
  a7(v8);
}

double sub_1000D06EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v9 = type metadata accessor for PromotionalAssetsView(0, v24);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = sub_100009F70(&qword_10021F7D0, &qword_1001AD340);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a1, v9);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v17;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  v20 = v23;
  *(v19 + 6) = a4;
  *(v19 + 7) = v20;
  (*(v10 + 32))(&v19[v18], v12, v9);
  sub_10013F12C(0, 0, v15, &unk_1001B52F8, v19);

  return result;
}

uint64_t sub_1000D090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  type metadata accessor for MainActor();
  v8[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[12] = v10;
  v8[13] = v9;

  return _swift_task_switch(sub_1000D09AC, v10, v9);
}

uint64_t sub_1000D09AC()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v1 = type metadata accessor for PromotionalAssetsView(0, v0 + 16);
  *(v0 + 112) = sub_1000C809C(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000D0A64;

  return sub_10001D4E4();
}

uint64_t sub_1000D0A64()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000D4C34, v3, v2);
}

uint64_t sub_1000D0BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a3;
  type metadata accessor for MainActor();
  v7[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[12] = v9;
  v7[13] = v8;

  return _swift_task_switch(sub_1000D0C48, v9, v8);
}

uint64_t sub_1000D0C48()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  v1 = type metadata accessor for PromotionalAssetsView(0, v0 + 16);
  *(v0 + 112) = sub_1000C809C(v1);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1000D0D00;

  return sub_10001D4E4();
}

uint64_t sub_1000D0D00()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1000D0E44, v3, v2);
}

uint64_t sub_1000D0E44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D0EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a3;
  v44 = a5;
  v45 = a2;
  v46 = a1;
  v47 = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  v50[5] = swift_getWitnessTable();
  v50[6] = sub_1000D29C4();
  v50[4] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20, &qword_1001B5178);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28, &qword_1001B5180);
  v51 = type metadata accessor for ModifiedContent();
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView(255, v12, v13, v14);
  sub_10000B3DC(&qword_10021DD30, &qword_1001B5188);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38, &qword_1001B5190);
  type metadata accessor for ModifiedContent();
  v52 = type metadata accessor for Optional();
  v15 = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView(255, v15, v16, v17);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD40, &qword_1001B5198);
  type metadata accessor for _ConditionalContent();
  v53 = type metadata accessor for Optional();
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v50[0] = AssociatedTypeWitness;
  v50[1] = v18;
  v50[2] = AssociatedConformanceWitness;
  v50[3] = v19;
  type metadata accessor for PhoneWallpapersWatchFacesView(255, v50);
  type metadata accessor for PhoneWallpaperView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView(255, v18, v19, v21);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  v54 = type metadata accessor for Optional();
  v55 = sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v22 = type metadata accessor for ScrollView();
  WitnessTable = swift_getWitnessTable();
  v51 = v22;
  v52 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for ModifiedContent();
  v51 = v22;
  v52 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v25 = swift_getWitnessTable();
  v51 = v24;
  v52 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = v24;
  v52 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_100027068();
  v51 = OpaqueTypeMetadata2;
  v52 = &type metadata for String;
  v53 = v27;
  v54 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v51 = OpaqueTypeMetadata2;
  v52 = &type metadata for String;
  v53 = v27;
  v54 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v51 = v29;
  v52 = v30;
  v42[1] = &opaque type descriptor for <<opaque return type of View.toolbarBackgroundVisibility(_:for:)>>;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = v42 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = v42 - v36;
  v51 = v43;
  v52 = a4;
  v53 = v44;
  v54 = a6;
  v38 = type metadata accessor for PromotionalAssetsView(0, &v51);
  sub_1000C809C(v38);
  sub_10001A39C();

  sub_100009F70(&qword_10021A898, &qword_1001B01C0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001AEB90;
  static ToolbarPlacement.navigationBar.getter();
  v39 = swift_checkMetadataState();
  View.toolbarBackgroundVisibility(_:for:)();

  v51 = v39;
  v52 = v30;
  swift_getOpaqueTypeConformance2();
  sub_100157EFC();
  v40 = *(v32 + 8);
  v40(v35, v31);
  sub_100157EFC();
  return (v40)(v37, v31);
}

double sub_1000D173C@<D0>(double *a1@<X8>)
{
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  ScrollGeometry.contentOffset.getter();
  result = v3 + v4;
  *a1 = v3 + v4;
  return result;
}

void sub_1000D177C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a2;
  v10[0] = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  v8 = type metadata accessor for PromotionalAssetsView(0, v10);
  sub_1000C809C(v8);
  sub_100019F10(v7);

  sub_1000C809C(v8);
  if (v7 > 0.0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  sub_10001A424(v9);
}

uint64_t sub_1000D1814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a5;
  v60 = a1;
  v64 = a6;
  v68 = sub_100009F70(&qword_10021DDC8, &qword_1001B51E8);
  __chkstk_darwin(v68);
  v67 = &v53 - v9;
  v10 = sub_100009F70(&qword_10021A8B0, &qword_1001B51F0);
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10);
  v63 = &v53 - v11;
  v61 = sub_100009F70(&qword_10021DDD0, &qword_1001B51F8);
  v12 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v53 - v13;
  v14 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v14 - 8);
  v69 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009F70(&qword_10021DDD8, &unk_1001B5200);
  v58 = *(v16 - 8);
  __chkstk_darwin(v16);
  v57 = &v53 - v17;
  v18 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v18 - 8);
  v20 = &v53 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100009F70(&qword_10021DDE0, &unk_1001B5210);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v62 = &v53 - v29;
  v70 = a2;
  v71 = a3;
  v74 = a2;
  v75 = a3;
  v72 = a4;
  v76 = a4;
  v30 = v60;
  v77 = v73;
  v31 = type metadata accessor for PromotionalAssetsView(0, &v74);
  sub_1000C809C(v31);
  sub_10001BA88();

  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000D52C(v20, qword_100218748, &unk_1001AD110);
    (*(v12 + 56))(v28, 1, 1, v61);
    v32 = sub_10000D1EC(&qword_10021DDE8, &qword_10021DDD8, &unk_1001B5200, &protocol conformance descriptor for ToolbarItem<A, B>);
    v74 = v16;
    v75 = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v62;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000D2D94(v28);
  }

  else
  {
    v34 = *(v22 + 32);
    v55 = v24;
    v56 = v21;
    v34(v24, v20, v21);
    v54 = v16;
    v35 = v61;
    v36 = static ToolbarItemPlacement.topBarLeading.getter();
    __chkstk_darwin(v36);
    v37 = v71;
    *(&v53 - 6) = v70;
    *(&v53 - 5) = v37;
    v38 = v73;
    *(&v53 - 4) = v72;
    *(&v53 - 3) = v38;
    *(&v53 - 2) = v24;
    *(&v53 - 1) = v30;
    type metadata accessor for ShareButton(0);
    sub_1000D3348(&qword_10021A8F8, type metadata accessor for ShareButton, &unk_1001B8324);
    v39 = v57;
    ToolbarItem<>.init(placement:content:)();
    v40 = sub_10000D1EC(&qword_10021DDE8, &qword_10021DDD8, &unk_1001B5200, &protocol conformance descriptor for ToolbarItem<A, B>);
    v41 = v59;
    v42 = v54;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v12 + 16))(v28, v41, v35);
    (*(v12 + 56))(v28, 0, 1, v35);
    v74 = v42;
    v75 = v40;
    swift_getOpaqueTypeConformance2();
    v33 = v62;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000D2D94(v28);
    (*(v12 + 8))(v41, v35);
    (*(v58 + 8))(v39, v42);
    (*(v22 + 8))(v55, v56);
  }

  v43 = static ToolbarItemPlacement.topBarTrailing.getter();
  __chkstk_darwin(v43);
  v44 = v71;
  *(&v53 - 6) = v70;
  *(&v53 - 5) = v44;
  v45 = v73;
  *(&v53 - 4) = v72;
  *(&v53 - 3) = v45;
  *(&v53 - 2) = v30;
  sub_100042DC4();
  v46 = v63;
  ToolbarItem<>.init(placement:content:)();
  v47 = v67;
  v48 = *(v68 + 48);
  sub_1000D2E0C(v33, v67);
  v49 = v65;
  v50 = v47 + v48;
  v51 = v66;
  (*(v65 + 16))(v50, v46, v66);
  TupleToolbarContent.init(_:)();
  (*(v49 + 8))(v46, v51);
  return sub_1000D2D94(v33);
}

uint64_t sub_1000D2014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a2;
  v23 = a6;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v12 = type metadata accessor for PromotionalAssetsView(0, v24);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 16))(a7, a1, v16);
  (*(v13 + 16))(v15, v22, v12);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  v19 = v23;
  *(v18 + 4) = a5;
  *(v18 + 5) = v19;
  (*(v13 + 32))(&v18[v17], v15, v12);
  result = type metadata accessor for ShareButton(0);
  v21 = (a7 + *(result + 20));
  *v21 = sub_1000D2E8C;
  v21[1] = v18;
  return result;
}

uint64_t sub_1000D21C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v22 = a4;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  v23[0] = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = v22;
  v16 = type metadata accessor for PromotionalAssetsView(0, v23);
  LOBYTE(a1) = sub_1000C8158(v16);
  sub_100024868(v15);
  v17 = *(v10 + 32);
  v17(v13, v15, v9);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  result = (v17)(v19 + v18, v13, v9);
  *a5 = 0;
  *(a5 + 1) = a1 & 1;
  *(a5 + 8) = sub_10004329C;
  *(a5 + 16) = v19;
  return result;
}

void sub_1000D2364(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100009F70(&qword_100219278, qword_1001AFC50);
  __chkstk_darwin(v11 - 8);
  v13 = v17 - v12;
  v14 = *a1;
  v15 = a1[1];
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v16 = type metadata accessor for PromotionalAssetsView(0, v17);
  sub_1000C809C(v16);
  sub_10001A60C(v14);

  sub_1000C809C(v16);
  sub_10001A7F8(v15);

  sub_1000C809C(v16);
  sub_100023FFC(v13);
  sub_10001ACBC(v13);
}

void sub_1000D2498(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void sub_1000D24A4(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v10 = type metadata accessor for PromotionalAssetsView(0, v11);
  sub_1000C809C(v10);
  sub_10001A9EC(v6, v7, v8, v9);
}

void sub_1000D251C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v6 = type metadata accessor for PromotionalAssetsView(0, v11);
  sub_1000C809C(v6);
  v7 = sub_10001BA10();
  v9 = v8;

  v10 = *(a1 + 16);
  if (v10)
  {

    sub_1000DCEDC(v7, v9, 13, v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D3348(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

void sub_1000D2614(uint64_t a1, void **a2, uint64_t a3, Class (*a4)(uint64_t a1), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  aBlock = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v12 = type metadata accessor for PromotionalAssetsView(0, &aBlock);
  sub_1000C809C(v12);
  v13 = sub_10001BA10();
  v15 = v14;

  v16 = *(a1 + 16);
  if (v16)
  {
    sub_100009F70(qword_100218F38, &unk_1001ADA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001AD8A0;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_10021CBD0;
    *(inited + 32) = 0;
    *(inited + 40) = v13;
    *(inited + 48) = v15;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_10021CBA8;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_10021CC30;
    *(inited + 112) = 0;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_10021CC08;
    *(inited + 152) = a9;
    *(inited + 168) = 3;
    if (*(v16 + 72))
    {
      v18 = *(v16 + 64);
      v19 = *(v16 + 72);
    }

    else
    {
      v18 = 0;
      v19 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    v28 = v18;
    v29 = v19;

    v20 = sub_1001666DC(1, 5, 1, inited);
    v25 = v20;
    sub_1000109BC(&aBlock, v26);
    sub_1000EB0D0(4, v26, &v25, &type metadata for AnalyticsString, &off_10021CBD0);
    sub_100010A18(&aBlock);
    v21 = String._bridgeToObjectiveC()();
    v22 = swift_allocObject();
    v22[2] = 0xD00000000000001ELL;
    v22[3] = 0x80000001001BDDE0;
    v22[4] = v20;
    v31 = a7;
    v32 = v22;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1000DCA40;
    v30 = a8;
    v23 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v23);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D3348(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_1000D293C(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

unint64_t sub_1000D29C4()
{
  result = qword_10021DD18;
  if (!qword_10021DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DD18);
  }

  return result;
}

unint64_t sub_1000D2A30()
{
  result = qword_10021DDB0;
  if (!qword_10021DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DDB0);
  }

  return result;
}

void sub_1000D2A88(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for PromotionalAssetsView(0, v9) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  sub_1000D2364(a1, v8, v3, v4, v5, v6);
}

unint64_t sub_1000D2B34()
{
  result = qword_10021DDC0;
  if (!qword_10021DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DDC0);
  }

  return result;
}

void sub_1000D2B88(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for PromotionalAssetsView(0, v9) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  sub_1000D24A4(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_1000D2C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000D2CC0(uint64_t a1, double *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v11[0] = v2[2];
  v5 = v11[0];
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v9 = *(type metadata accessor for PromotionalAssetsView(0, v11) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  sub_1000D177C(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1000D2D94(uint64_t a1)
{
  v2 = sub_100009F70(&qword_10021DDE0, &unk_1001B5210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D2E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021DDE0, &unk_1001B5210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000D2EBC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v14[0] = v4[2];
  v8 = v14[0];
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v12 = *(type metadata accessor for PromotionalAssetsView(0, v14) - 8);
  sub_1000D2614(v4 + ((*(v12 + 80) + 48) & ~*(v12 + 80)), v8, v9, v10, v11, a1, a2, a3, a4);
}

uint64_t sub_1000D2F7C()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_1000D304C(char a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for PromotionalAssetsView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1000D0620(a1, v8, v3, v4, v5, v6);
}

unint64_t sub_1000D30F8()
{
  result = qword_10021DDF0;
  if (!qword_10021DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DDF0);
  }

  return result;
}

void sub_1000D3164(uint64_t a1, void (*a2)(double))
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10[0] = v2[2];
  v5 = v10[0];
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  v9 = *(type metadata accessor for PromotionalAssetsView(0, v10) - 8);
  sub_1000D0684(a1, v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80)), v5, v6, v7, v8, a2);
}

unint64_t sub_1000D3214()
{
  result = qword_10021DE18;
  if (!qword_10021DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DE18);
  }

  return result;
}

uint64_t sub_1000D3274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppModule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D32D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021A880, &qword_1001B51A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D3348(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D33A8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for PromotionalAssetsView(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_1000D345C()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for PromotionalAssetsView(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v0[2];
  v9 = v0[3];
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_1000AF6F8;

  return sub_1000D0BA8(v8, v9, v0 + v7, v3, v2, v4, v5);
}

__n128 sub_1000D35C4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_1000D35D0()
{
  result = qword_10021DE20;
  if (!qword_10021DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DE20);
  }

  return result;
}

uint64_t sub_1000D3624()
{
  v1 = *(v0 + 32);
  v15[0] = *(v0 + 16);
  v15[1] = v1;
  v2 = type metadata accessor for PromotionalAssetsView(0, v15);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));

  v4 = v2[14];
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v2[15];
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v2[16];
  sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v2[17];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v3 + v11, 1, v12))
    {
      (*(v13 + 8))(v3 + v11, v12);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D3964()
{
  v1 = *(v0 + 48);
  v16[0] = *(v0 + 32);
  v16[1] = v1;
  v2 = type metadata accessor for PromotionalAssetsView(0, v16);
  v3 = (*(*(v2 - 1) + 80) + 64) & ~*(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  v5 = v2[14];
  sub_100009F70(&qword_100219710, &qword_1001B29A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v2[15];
  sub_100009F70(&qword_100219718, &qword_1001B1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  v9 = v2[16];
  sub_100009F70(&qword_1002196E8, &unk_1001AFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v4 + v9, 1, v10))
    {
      (*(v11 + 8))(v4 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v2[17];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v4 + v12, 1, v13))
    {
      (*(v14 + 8))(v4 + v12, v13);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000D3C94(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for PromotionalAssetsView(0, (v2 + 2)) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  v2[6] = v12;
  *v12 = v2;
  v12[1] = sub_1000D4C18;

  return sub_1000D090C(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_1000D3E10@<X0>(uint64_t a1@<X8>)
{
  result = sub_10001B30C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000D3F24(uint64_t *a1)
{
  type metadata accessor for NavigationPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TourPhotosView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  v15[5] = swift_getWitnessTable();
  v15[6] = sub_1000D29C4();
  v15[4] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD20, &qword_1001B5178);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD28, &qword_1001B5180);
  type metadata accessor for ModifiedContent();
  v4 = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeaturedVideosView(255, v4, v5, v6);
  sub_10000B3DC(&qword_10021DD30, &qword_1001B5188);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD38, &qword_1001B5190);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistView(255, v7, v8, v9);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD40, &qword_1001B5198);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v15[0] = AssociatedTypeWitness;
  v15[1] = v10;
  v15[2] = AssociatedConformanceWitness;
  v15[3] = v11;
  type metadata accessor for PhoneWallpapersWatchFacesView(255, v15);
  type metadata accessor for PhoneWallpaperView(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  type metadata accessor for Optional();
  type metadata accessor for WatchFacesView(255, v10, v11, v13);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  sub_10000B3DC(&qword_10021A880, &qword_1001B51A0);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_100027068();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD48, &qword_1001B51A8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_10001EA38();
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD50, &qword_1001B51B0);
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_10021DD58, &qword_10021DD50, &qword_1001B51B0, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeMetadata2();
  sub_10000B3DC(&qword_10021DD60, &qword_1001B51B8);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10000D1EC(&qword_10021DD68, &qword_10021DD60, &qword_1001B51B8, &protocol conformance descriptor for _AnimationModifier<A>);
  swift_getWitnessTable();
  type metadata accessor for NavigationStack();
  sub_10000B3DC(&qword_10021DD70, &qword_1001B51C0);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD78, &qword_1001B51C8);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD80, &qword_1001B51D0);
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_10021DD88, &unk_1001B51D8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10000B3DC(&qword_100219278, qword_1001AFC50);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021DD90, &qword_10021DD70, &qword_1001B51C0, &unk_1001ADCE8);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021DD98, &qword_10021DD78, &qword_1001B51C8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021DDA0, &qword_10021DD80, &qword_1001B51D0, &unk_1001B3380);
  swift_getWitnessTable();
  sub_10000D1EC(&qword_10021DDA8, &qword_10021DD88, &unk_1001B51D8, &protocol conformance descriptor for _PreferenceActionModifier<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10001E89C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_1000D3348(&qword_100218698, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  return swift_getWitnessTable();
}

unint64_t sub_1000D4B44(uint64_t a1)
{
  result = sub_1000D30F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D4B6C(uint64_t a1)
{
  result = sub_1000D35D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D4B94(uint64_t a1)
{
  result = sub_1000D2A30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D4BBC(uint64_t a1)
{
  result = sub_1000D2B34();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_1000D4C38(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000D4C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1000D4CAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000D4D34@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_10021DE28, &qword_1001B56A8);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_100009F70(&qword_10021DE30, &qword_1001B56B0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v12 = sub_100009F70(&qword_10021DE38, &qword_1001B56B8);
  sub_1000D4FDC(v1, &v7[*(v12 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v13 = sub_10000D1EC(&qword_10021DE40, &qword_10021DE28, &qword_1001B56A8, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v16 + 8))(v4, v17);
  sub_10000D52C(v7, &qword_10021DE28, &qword_1001B56A8);
  v19 = v5;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000D4FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_100009F70(&qword_10021DE48, &qword_1001B56C0);
  __chkstk_darwin(v3 - 8);
  v78 = (&v74 - v4);
  v77 = sub_100009F70(&qword_10021DE50, &qword_1001B56C8);
  v5 = __chkstk_darwin(v77);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v79 = &v74 - v8;
  __chkstk_darwin(v7);
  v80 = &v74 - v9;
  v83 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v83);
  v11 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009F70(qword_100218748, &unk_1001AD110);
  __chkstk_darwin(v16 - 8);
  v18 = &v74 - v17;
  v75 = sub_100009F70(&qword_10021DE58, &qword_1001B56D0);
  v19 = __chkstk_darwin(v75);
  v76 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v74 - v21;
  v23 = *(a1 + 88);
  v84 = a1;
  v24 = *(a1 + 96);
  if (v24 == 1)
  {
    v25 = *&v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v23, 0);
    (*(v13 + 8))(v15, v12);
    v25 = *&v87;
  }

  v27 = v25 * 48.0;
  if (COERCE__INT64(fabs(v25 * 48.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v24)
  {
    v28 = *&v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100027EB0(v23, 0);
    v30 = *(v13 + 8);
    v13 += 8;
    v30(v15, v12);
    v28 = *&v87;
  }

  v31 = v28 * 48.0;
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_100157F1C(v27, v31, v18);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_100009F70(&qword_10021DE60, &qword_1001B56D8);
  sub_1000D6CDC();
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = &v22[*(sub_100009F70(&qword_10021DEA0, &qword_1001B56F8) + 36)];
  v33 = v85[1];
  *v32 = v85[0];
  *(v32 + 1) = v33;
  *(v32 + 2) = v85[2];
  v22[*(sub_100009F70(&qword_10021DEA8, &qword_1001B5700) + 36)] = 1;
  v34 = *(v83 + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  v13 = *(*(v12 - 8) + 104);
  (v13)(v11 + v34, v18, v12);
  __asm { FMOV            V0.2D, #6.0 }

  v74 = _Q0;
  *v11 = _Q0;
  static Color.black.getter();
  v40 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v41 = &v22[*(sub_100009F70(&qword_10021DEB0, &qword_1001B5708) + 36)];
  sub_1000A3BD8(v11, v41);
  v42 = v41 + *(sub_100009F70(&qword_10021BE20, &unk_1001B9BF0) + 36);
  v43 = v85[4];
  *v42 = v85[3];
  *(v42 + 16) = v43;
  *(v42 + 32) = v86;
  v44 = sub_100009F70(&qword_10021BE28, &unk_1001B2460);
  *(v41 + *(v44 + 52)) = v40;
  *(v41 + *(v44 + 56)) = 256;
  v45 = static Alignment.center.getter();
  v47 = v46;
  sub_1000A3C3C(v11);
  v48 = (v41 + *(sub_100009F70(&qword_10021BE30, &unk_1001B9C00) + 36));
  *v48 = v45;
  v48[1] = v47;
  v49 = static Alignment.center.getter();
  v51 = v50;
  v52 = (v41 + *(sub_100009F70(&qword_10021BDF8, &qword_1001B2420) + 36));
  *v52 = v49;
  v52[1] = v51;
  v23 = static Alignment.center.getter();
  v11 = v53;
  v54 = 0;
  KeyPath = 0;
  if (*(v84 + 80) == 1)
  {
    if (qword_100218450 == -1)
    {
LABEL_15:
      v56 = qword_100230608;
      type metadata accessor for PlaybackViewModel(0);
      v54 = swift_allocObject();

      ObservationRegistrar.init()();
      *(v54 + 16) = v56;
      KeyPath = swift_getKeyPath();
      goto LABEL_16;
    }

LABEL_23:
    swift_once();
    goto LABEL_15;
  }

LABEL_16:
  v57 = &v22[*(sub_100009F70(&qword_10021DEB8, &qword_1001B5710) + 36)];
  *v57 = v54;
  *(v57 + 1) = KeyPath;
  v57[16] = 0;
  *(v57 + 3) = v23;
  *(v57 + 4) = v11;
  v58 = &v22[*(v75 + 36)];
  (v13)(&v58[*(v83 + 20)], v18, v12);
  *v58 = v74;
  v59 = static HorizontalAlignment.leading.getter();
  v60 = v78;
  *v78 = v59;
  *(v60 + 8) = 0;
  *(v60 + 16) = 0;
  v61 = sub_100009F70(&qword_10021DEC0, &qword_1001B5718);
  sub_1000D657C(v84, v60 + *(v61 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v62 = v79;
  sub_10000F618(v60, v79, &qword_10021DE48, &qword_1001B56C0);
  v63 = (v62 + *(v77 + 36));
  v64 = v90;
  v65 = v92;
  v66 = v93;
  v63[4] = v91;
  v63[5] = v65;
  v63[6] = v66;
  v67 = v88;
  *v63 = v87;
  v63[1] = v67;
  v63[2] = v89;
  v63[3] = v64;
  v68 = v80;
  sub_10000F618(v62, v80, &qword_10021DE50, &qword_1001B56C8);
  v69 = v76;
  sub_10000D58C(v22, v76, &qword_10021DE58, &qword_1001B56D0);
  v70 = v81;
  sub_10000D58C(v68, v81, &qword_10021DE50, &qword_1001B56C8);
  v71 = v82;
  sub_10000D58C(v69, v82, &qword_10021DE58, &qword_1001B56D0);
  v72 = sub_100009F70(&qword_10021DEC8, &qword_1001B5720);
  sub_10000D58C(v70, v71 + *(v72 + 48), &qword_10021DE50, &qword_1001B56C8);
  sub_10000D52C(v68, &qword_10021DE50, &qword_1001B56C8);
  sub_10000D52C(v22, &qword_10021DE58, &qword_1001B56D0);
  sub_10000D52C(v70, &qword_10021DE50, &qword_1001B56C8);
  return sub_10000D52C(v69, &qword_10021DE58, &qword_1001B56D0);
}

uint64_t sub_1000D5A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v31 = sub_100009F70(&qword_10021DE98, &qword_1001B56F0);
  __chkstk_darwin(v31);
  v3 = (&v30 - v2);
  v37 = sub_100009F70(&qword_10021DEF0, &qword_1001B57A0);
  __chkstk_darwin(v37);
  v35 = &v30 - v4;
  v33 = sub_100009F70(&qword_10021DEF8, &qword_1001B57A8);
  __chkstk_darwin(v33);
  v6 = &v30 - v5;
  v38 = sub_100009F70(&qword_10021DE78, &qword_1001B56E0);
  __chkstk_darwin(v38);
  v34 = &v30 - v7;
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009F70(&qword_10021DE88, &qword_1001B56E8);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for AsyncImagePhase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v32, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
    v20 = Image.resizable(capInsets:resizingMode:)();
    (*(v9 + 8))(v11, v8);
    v39 = v20;
    View.accessibilityIdentifier(_:)();

    sub_10000D58C(v14, v6, &qword_10021DE88, &qword_1001B56E8);
    swift_storeEnumTagMultiPayload();
    sub_1000D6E20();
    sub_10000D1EC(&qword_10021DE90, &qword_10021DE98, &qword_1001B56F0, &protocol conformance descriptor for ZStack<A>);
    v21 = v34;
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v21, v35, &qword_10021DE78, &qword_1001B56E0);
    swift_storeEnumTagMultiPayload();
    sub_1000D6D68();
    _ConditionalContent<>.init(storage:)();

    sub_10000D52C(v21, &qword_10021DE78, &qword_1001B56E0);
    v22 = v14;
    v23 = &qword_10021DE88;
    v24 = &qword_1001B56E8;
  }

  else
  {
    v25 = v34;
    v26 = v35;
    if (v19 == enum case for AsyncImagePhase.failure(_:))
    {
      (*(v16 + 8))(v18, v15);
    }

    else if (v19 != enum case for AsyncImagePhase.empty(_:))
    {
      swift_storeEnumTagMultiPayload();
      sub_1000D6D68();
      _ConditionalContent<>.init(storage:)();
      return (*(v16 + 8))(v18, v15);
    }

    *v3 = static Alignment.center.getter();
    v3[1] = v27;
    v28 = sub_100009F70(&qword_10021DF00, &qword_1001B57B0);
    sub_1000D60F0(v3 + *(v28 + 44));
    sub_10000D58C(v3, v6, &qword_10021DE98, &qword_1001B56F0);
    swift_storeEnumTagMultiPayload();
    sub_1000D6E20();
    sub_10000D1EC(&qword_10021DE90, &qword_10021DE98, &qword_1001B56F0, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000D58C(v25, v26, &qword_10021DE78, &qword_1001B56E0);
    swift_storeEnumTagMultiPayload();
    sub_1000D6D68();
    _ConditionalContent<>.init(storage:)();
    sub_10000D52C(v25, &qword_10021DE78, &qword_1001B56E0);
    v22 = v3;
    v23 = &qword_10021DE98;
    v24 = &qword_1001B56F0;
  }

  return sub_10000D52C(v22, v23, v24);
}

uint64_t sub_1000D60F0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Image.ResizingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009F70(&qword_10021DF08, &qword_1001B57B8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_100009F70(&qword_10021DF10, &qword_1001B57C0);
  v12 = __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = *(type metadata accessor for RoundedRectangle() + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #6.0 }

  *v16 = _Q0;
  if (qword_100218340 != -1)
  {
    swift_once();
  }

  v25 = qword_100230578;
  KeyPath = swift_getKeyPath();
  v27 = &v16[*(v11 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;

  Image.init(systemName:)();
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v28 = Image.resizable(capInsets:resizingMode:)();

  (*(v2 + 8))(v4, v1);
  v29 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v39 = 1;
  v34 = v28;
  LOWORD(v35) = 1;
  *(&v35 + 1) = v29;
  sub_100009F70(&qword_10021DF18, &qword_1001B57F8);
  sub_1000D6FF8();
  View.accessibilityIdentifier(_:)();
  v40[3] = v37;
  v40[4] = v38;
  v40[1] = v35;
  v40[2] = v36;
  v40[0] = v34;
  sub_10000D52C(v40, &qword_10021DF18, &qword_1001B57F8);
  sub_10000D58C(v16, v14, &qword_10021DF10, &qword_1001B57C0);
  sub_10000D58C(v10, v8, &qword_10021DF08, &qword_1001B57B8);
  v30 = v33;
  sub_10000D58C(v14, v33, &qword_10021DF10, &qword_1001B57C0);
  v31 = sub_100009F70(&qword_10021DF38, &qword_1001B5808);
  sub_10000D58C(v8, v30 + *(v31 + 48), &qword_10021DF08, &qword_1001B57B8);
  sub_10000D52C(v10, &qword_10021DF08, &qword_1001B57B8);
  sub_10000D52C(v16, &qword_10021DF10, &qword_1001B57C0);
  sub_10000D52C(v8, &qword_10021DF08, &qword_1001B57B8);
  return sub_10000D52C(v14, &qword_10021DF10, &qword_1001B57C0);
}

uint64_t sub_1000D657C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_100009F70(&qword_1002197C0, &qword_1001AE810);
  v4 = __chkstk_darwin(v3 - 8);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v38 - v6;
  v7 = sub_100009F70(&qword_10021DED0, &qword_1001B5758);
  v8 = __chkstk_darwin(v7 - 8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  *v11 = static VerticalAlignment.lastTextBaseline.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = sub_100009F70(&qword_10021DED8, &qword_1001B5760);
  sub_1000D6978(a1, &v11[*(v12 + 44)]);
  v13 = *(a1 + 24);
  v43 = *(a1 + 16);
  v44 = v13;
  sub_100027068();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.subheadline.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_10000D60C(v14, v16, v18 & 1);

  if (qword_100218338 != -1)
  {
    swift_once();
  }

  v43 = qword_100230570;

  v24 = Text.foregroundStyle<A>(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10000D60C(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  v43 = v24;
  v44 = v26;
  v28 &= 1u;
  v45 = v28;
  v46 = v30;
  v47 = KeyPath;
  v48 = 1;
  v49 = 0;
  sub_100009F70(&qword_1002197F0, &unk_1001AE860);
  sub_10002764C();
  v32 = v40;
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v24, v26, v28);

  v33 = v39;
  sub_10000D58C(v11, v39, &qword_10021DED0, &qword_1001B5758);
  v34 = v42;
  sub_10000D58C(v32, v42, &qword_1002197C0, &qword_1001AE810);
  v35 = v41;
  sub_10000D58C(v33, v41, &qword_10021DED0, &qword_1001B5758);
  v36 = sub_100009F70(&qword_10021DEE0, &qword_1001B5798);
  sub_10000D58C(v34, v35 + *(v36 + 48), &qword_1002197C0, &qword_1001AE810);
  sub_10000D52C(v32, &qword_1002197C0, &qword_1001AE810);
  sub_10000D52C(v11, &qword_10021DED0, &qword_1001B5758);
  sub_10000D52C(v34, &qword_1002197C0, &qword_1001AE810);
  return sub_10000D52C(v33, &qword_10021DED0, &qword_1001B5758);
}

uint64_t sub_1000D6978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for Text.Suffix();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100009F70(&qword_1002197C0, &qword_1001AE810);
  __chkstk_darwin(v28);
  v6 = &v28 - v5;
  v7 = *(a1 + 8);
  v32 = *a1;
  v33 = v7;
  sub_100027068();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  LOBYTE(v7) = v11;
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v32 = v8;
  v33 = v10;
  v34 = v7 & 1;
  v35 = v13;
  v36 = KeyPath;
  v37 = 1;
  v38 = 0;
  sub_100009F70(&qword_1002197F0, &unk_1001AE860);
  sub_10002764C();
  View.accessibilityIdentifier(_:)();
  sub_10000D60C(v8, v10, v7 & 1);

  if (*(a1 + 32) == 1)
  {
    static Font.subheadline.getter();
    v15 = Text.font(_:)();
    v17 = v16;
    v19 = v18;

    if (qword_100218338 != -1)
    {
      swift_once();
    }

    v32 = qword_100230570;

    v20 = Text.foregroundStyle<A>(_:)();
    v21 = v15;
    v22 = v20;
    v24 = v23;
    v26 = v25;
    sub_10000D60C(v21, v17, v19 & 1);

    static Text.Suffix.alwaysVisible(_:)();
    sub_10000D60C(v22, v24, v26 & 1);
  }

  else
  {
    static Text.Suffix.none.getter();
  }

  sub_1000D6F64();
  View.textSuffix(_:)();
  (*(v29 + 8))(v4, v31);
  return sub_10000D52C(v6, &qword_1002197C0, &qword_1001AE810);
}

unint64_t sub_1000D6CDC()
{
  result = qword_10021DE68;
  if (!qword_10021DE68)
  {
    sub_10000B3DC(&qword_10021DE60, &qword_1001B56D8);
    sub_1000D6D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DE68);
  }

  return result;
}

unint64_t sub_1000D6D68()
{
  result = qword_10021DE70;
  if (!qword_10021DE70)
  {
    sub_10000B3DC(&qword_10021DE78, &qword_1001B56E0);
    sub_1000D6E20();
    sub_10000D1EC(&qword_10021DE90, &qword_10021DE98, &qword_1001B56F0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DE70);
  }

  return result;
}

unint64_t sub_1000D6E20()
{
  result = qword_10021DE80;
  if (!qword_10021DE80)
  {
    sub_10000B3DC(&qword_10021DE88, &qword_1001B56E8);
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DE80);
  }

  return result;
}

uint64_t sub_1000D6EAC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000D6F04@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000D6F64()
{
  result = qword_10021DEE8;
  if (!qword_10021DEE8)
  {
    sub_10000B3DC(&qword_1002197C0, &qword_1001AE810);
    sub_10002764C();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DEE8);
  }

  return result;
}

unint64_t sub_1000D6FF8()
{
  result = qword_10021DF20;
  if (!qword_10021DF20)
  {
    sub_10000B3DC(&qword_10021DF18, &qword_1001B57F8);
    sub_1000D7084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DF20);
  }

  return result;
}

unint64_t sub_1000D7084()
{
  result = qword_10021DF28;
  if (!qword_10021DF28)
  {
    sub_10000B3DC(&qword_10021DF30, &qword_1001B5800);
    sub_100079534();
    sub_10000D1EC(&qword_1002188E0, &qword_1002188E8, &unk_1001AD240, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DF28);
  }

  return result;
}

unint64_t sub_1000D7140()
{
  result = qword_10021DF40;
  if (!qword_10021DF40)
  {
    sub_10000B3DC(&qword_10021DF48, &unk_1001B5810);
    sub_10000B3DC(&qword_10021DE28, &qword_1001B56A8);
    sub_10000D1EC(&qword_10021DE40, &qword_10021DE28, &qword_1001B56A8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DF40);
  }

  return result;
}

uint64_t sub_1000D7284@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = type metadata accessor for UUID();
  v1 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DesignTimeImage(0);
  __chkstk_darwin(v4);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100009F70(qword_100218748, &unk_1001AD110);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  URL.init(string:)();
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  result = v15(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL.init(string:)();
    result = v15(v10, 1, v13);
    if (result != 1)
    {
      UUID.init()();
      UUID.uuidString.getter();
      (*(v1 + 8))(v3, v23);
      *v6 = ResourceID.init(_:)();
      v6[1] = v17;
      v19 = v4[6];
      v18 = v4[7];
      v20 = *(v14 + 32);
      v20(v6 + v4[5], v10, v13);
      *(v6 + v19) = 0;
      *(v6 + v18) = 0;
      v21 = v24;
      UUID.init()();
      v22 = type metadata accessor for DesignTimeWatchFace(0);
      v20((v21 + *(v22 + 20)), v12, v13);
      return sub_100028E88(v6, v21 + *(v22 + 24));
    }
  }

  __break(1u);
  return result;
}

void sub_1000D7574(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1000D7A00(&qword_10021DF98, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for DesignTimeWatchFace(0);
  type metadata accessor for URL();
  sub_1000D7A00(&qword_1002191D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v3 = v1 + *(v2 + 24);
  String.hash(into:)();
  v4 = type metadata accessor for DesignTimeImage(0);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v3 + *(v4 + 24)))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_1000D7A00(&qword_1002194F8, type metadata accessor for CGColor, &unk_1001ACFAC);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v3 + *(v4 + 28)));
}

uint64_t sub_1000D773C(uint64_t a1)
{
  *(a1 + 8) = sub_1000D7A00(&qword_10021DF88, type metadata accessor for DesignTimeWatchFace, &unk_1001B5874);
  result = sub_1000D7A00(&qword_10021DF90, type metadata accessor for DesignTimeWatchFace, &unk_1001B583C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeWatchFace(uint64_t a1)
{
  result = qword_10021E000;
  if (!qword_10021E000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D7854@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_1000D7904()
{
  Hasher.init(_seed:)();
  sub_1000D7574(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000D7948()
{
  Hasher.init(_seed:)();
  sub_1000D7574(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000D7984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_100022244((a1 + v6), (a2 + v6));
}

uint64_t sub_1000D7A00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D7A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D7AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for DesignTimeImage(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000D7C14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for DesignTimeImage(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1000D7D60(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for DesignTimeImage(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000D7DFC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

double sub_1000D7E70(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000D8630(v14), (v5 & 1) == 0))
  {

    sub_1000D8674(v14);
LABEL_8:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_9;
  }

  sub_1000363B0(*(v3 + 56) + 32 * v4, &v15);
  sub_1000D8674(v14);

  if (!*(&v16 + 1))
  {
LABEL_9:
    sub_1000D83F4(&v15);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v7 = v14[0];
    v6 = v14[1];
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for RemoteViewConfiguration();
    sub_1000D86C8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v12 = v14[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v14[0] = v12;

    static Published.subscript.setter();
    sub_100035DB0(v7, v6);

    return result;
  }

LABEL_10:
  if (qword_100218470 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10001FDF4(v8, qword_100230610);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "User activity missing remote configuration", v11, 2u);
  }

  return result;
}

uint64_t sub_1000D81E8()
{
  v1 = OBJC_IVAR____TtC15ShazamEventsApp20ShazamEventsAppModel__remoteViewConfiguration;
  v2 = sub_100009F70(&qword_10021E118, &unk_1001B59C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShazamEventsAppModel(uint64_t a1)
{
  result = qword_10021E070;
  if (!qword_10021E070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D82F8(uint64_t a1)
{
  sub_1000D8390(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000D8390(uint64_t a1)
{
  if (!qword_10021E080)
  {
    sub_10000B3DC(&unk_10021E088, &qword_1001B5918);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10021E080);
    }
  }
}

uint64_t sub_1000D83F4(uint64_t a1)
{
  v2 = sub_100009F70(&unk_10021F7F0, &qword_1001B03B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000D845C(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v4;
}

uint64_t sub_1000D84DC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1000D8558(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100083D04(*(v1 + 40), a1);

  return sub_1000D8728(v2, v3);
}

unint64_t sub_1000D85A0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000D8998(a1, v2);
}

unint64_t sub_1000D8630(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000D8A9C(a1, v4);
}

unint64_t sub_1000D86C8()
{
  result = qword_10021E110;
  if (!qword_10021E110)
  {
    type metadata accessor for RemoteViewConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E110);
  }

  return result;
}

unint64_t sub_1000D8728(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x7261646E656C6163;
          }

          else
          {
            v8 = 0x6E6F697461636F6CLL;
          }

          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xE300000000000000;
          v8 = 7368801;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE700000000000000;
          v8 = 0x7473696C746573;
        }

        else
        {
          v9 = 0xE800000000000000;
          v8 = 0x676E696D6F637075;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x636973756DLL;
        }

        else
        {
          v8 = 0x7473696C79616C70;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE900000000000073;
        }
      }

      v10 = 0x676E696D6F637075;
      if (v6 == 5)
      {
        v10 = 0x7473696C746573;
      }

      v11 = 0xE700000000000000;
      if (v6 != 5)
      {
        v11 = 0xE800000000000000;
      }

      v12 = 0x7473696C79616C70;
      if (v6 == 3)
      {
        v12 = 0x636973756DLL;
      }

      v13 = 0xE900000000000073;
      if (v6 == 3)
      {
        v13 = 0xE500000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x7261646E656C6163;
      if (v6 != 1)
      {
        v14 = 0x6E6F697461636F6CLL;
      }

      v15 = 0xE800000000000000;
      if (!v6)
      {
        v14 = 7368801;
        v15 = 0xE300000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000D8998(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000D8A9C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000D8B64(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000D8674(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000D8BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000D8C98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ArtistEventRowViewModel(uint64_t a1)
{
  result = qword_10021E178;
  if (!qword_10021E178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D8D88(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D8E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RoundedRectangle();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100009F70(&qword_10021E1B8, &qword_1001B5AA8);
  __chkstk_darwin(v10);
  v12 = &v40[-v11];
  *v12 = static Alignment.center.getter();
  v12[1] = v13;
  v14 = sub_100009F70(&qword_10021E1C0, &qword_1001B5AB0);
  sub_1000D91B0(a1, a2, a3, v12 + *(v14 + 44));
  v15 = v12 + *(sub_100009F70(&qword_10021E1C8, &qword_1001B5AB8) + 36);
  *v15 = 0x3FFC71C71C71C71CLL;
  *(v15 + 4) = 0;
  v16 = *(v7 + 28);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(&v9[v16], v17, v18);
  __asm { FMOV            V0.2D, #24.0 }

  *v9 = _Q0;
  static Color.black.getter();
  v24 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v25 = v12 + *(sub_100009F70(&qword_10021E1D0, &qword_1001B5AC0) + 36);
  sub_1000A3BD8(v9, v25);
  v26 = v25 + *(sub_100009F70(&qword_10021BE20, &unk_1001B9BF0) + 36);
  v27 = v41;
  *v26 = *&v40[8];
  *(v26 + 16) = v27;
  *(v26 + 32) = v42;
  v28 = sub_100009F70(&qword_10021BE28, &unk_1001B2460);
  *(v25 + *(v28 + 52)) = v24;
  *(v25 + *(v28 + 56)) = 256;
  v29 = static Alignment.center.getter();
  v31 = v30;
  sub_1000A3C3C(v9);
  v32 = (v25 + *(sub_100009F70(&qword_10021BE30, &unk_1001B9C00) + 36));
  *v32 = v29;
  v32[1] = v31;
  v33 = static Alignment.center.getter();
  v35 = v34;
  v36 = (v25 + *(sub_100009F70(&qword_10021BDF8, &qword_1001B2420) + 36));
  *v36 = v33;
  v36[1] = v35;
  static Color.black.getter();
  v37 = Color.opacity(_:)();

  v38 = v12 + *(sub_100009F70(&qword_10021E1D8, &qword_1001B5AC8) + 36);
  *v38 = v37;
  *(v38 + 8) = xmmword_1001B59F0;
  *(v38 + 3) = 0x4024000000000000;
  *(v12 + *(v10 + 36)) = 1;
  sub_1000D98D4();
  View.accessibilityIdentifier(_:)();
  return sub_10000D52C(v12, &qword_10021E1B8, &qword_1001B5AA8);
}

uint64_t sub_1000D91B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46[1] = a1;
  v51 = a4;
  v47 = type metadata accessor for Image.ResizingMode();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_10021E210, &qword_1001B5AD8);
  __chkstk_darwin(v7 - 8);
  v9 = v46 - v8;
  v49 = sub_100009F70(&qword_10021E218, &qword_1001B5AE0) - 8;
  v10 = __chkstk_darwin(v49);
  v50 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v46 - v12;
  v14 = sub_100009F70(&qword_10021E220, &qword_1001B5AE8);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v48 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v46 - v18;
  v20 = *(type metadata accessor for RoundedRectangle() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #24.0 }

  *v19 = _Q0;

  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v28 = &v19[*(v15 + 60)];
  v29 = v53;
  *v28 = v52;
  *(v28 + 1) = v29;
  *(v28 + 4) = v54;
  *&v19[*(v15 + 64)] = 256;

  Image.init(systemName:)();
  v30 = enum case for Image.TemplateRenderingMode.original(_:);
  v31 = type metadata accessor for Image.TemplateRenderingMode();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v9, v30, v31);
  (*(v32 + 56))(v9, 0, 1, v31);
  Image.renderingMode(_:)();

  sub_10000D52C(v9, &qword_10021E210, &qword_1001B5AD8);
  v33 = v47;
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v47);
  v34 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v33);
  v55 = v34;
  LOWORD(v56) = 1;
  *(&v56 + 1) = 0x3FFC71C71C71C71CLL;
  LOWORD(v57) = 0;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_100009F70(&qword_10021E228, &qword_1001B5AF0);
  sub_1000D9B5C();
  View.containerRelativeFrame(_:alignment:_:)();

  sub_100009F70(&qword_1002199C0, &qword_1001B2480);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1001ACB00;
  static Color.white.getter();
  v36 = Color.opacity(_:)();

  *(v35 + 32) = v36;
  *(v35 + 40) = static Color.white.getter();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  static Color.white.getter();
  Color.opacity(_:)();

  v37 = &v13[*(sub_100009F70(&qword_10021E238, &qword_1001B5AF8) + 36)];
  sub_100009F70(&qword_10021E240, &qword_1001B5B00);
  static ShadowStyle.inner(color:radius:x:y:)();

  v38 = v56;
  *v37 = v55;
  *(v37 + 1) = v38;
  *(v37 + 4) = v57;
  static Color.black.getter();
  Color.opacity(_:)();

  sub_100009F70(&qword_10021E248, &qword_1001B5B08);
  static ShadowStyle.inner(color:radius:x:y:)();

  static Color.black.getter();
  v39 = Color.opacity(_:)();

  v40 = v48;
  v41 = &v13[*(v49 + 44)];
  *v41 = v39;
  *(v41 + 8) = xmmword_1001B5A00;
  *(v41 + 3) = 0x4010000000000000;
  sub_1000D9BE8(v19, v40);
  v42 = v50;
  sub_1000D9C58(v13, v50);
  v43 = v51;
  sub_1000D9BE8(v40, v51);
  v44 = sub_100009F70(&qword_10021E250, &qword_1001B5B10);
  sub_1000D9C58(v42, v43 + *(v44 + 48));
  sub_10000D52C(v13, &qword_10021E218, &qword_1001B5AE0);
  sub_10000D52C(v19, &qword_10021E220, &qword_1001B5AE8);
  sub_10000D52C(v42, &qword_10021E218, &qword_1001B5AE0);
  return sub_10000D52C(v40, &qword_10021E220, &qword_1001B5AE8);
}

unint64_t sub_1000D98D4()
{
  result = qword_10021E1E0;
  if (!qword_10021E1E0)
  {
    sub_10000B3DC(&qword_10021E1B8, &qword_1001B5AA8);
    sub_1000D9960();
    sub_10002D070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E1E0);
  }

  return result;
}

unint64_t sub_1000D9960()
{
  result = qword_10021E1E8;
  if (!qword_10021E1E8)
  {
    sub_10000B3DC(&qword_10021E1D8, &qword_1001B5AC8);
    sub_1000D99EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E1E8);
  }

  return result;
}

unint64_t sub_1000D99EC()
{
  result = qword_10021E1F0;
  if (!qword_10021E1F0)
  {
    sub_10000B3DC(&qword_10021E1D0, &qword_1001B5AC0);
    sub_1000D9AA4();
    sub_10000D1EC(&qword_10021BDF0, &qword_10021BDF8, &qword_1001B2420, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E1F0);
  }

  return result;
}

unint64_t sub_1000D9AA4()
{
  result = qword_10021E1F8;
  if (!qword_10021E1F8)
  {
    sub_10000B3DC(&qword_10021E1C8, &qword_1001B5AB8);
    sub_10000D1EC(&qword_10021E200, &qword_10021E208, &qword_1001B5AD0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E1F8);
  }

  return result;
}

unint64_t sub_1000D9B5C()
{
  result = qword_10021E230;
  if (!qword_10021E230)
  {
    sub_10000B3DC(&qword_10021E228, &qword_1001B5AF0);
    sub_100079534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E230);
  }

  return result;
}

uint64_t sub_1000D9BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021E220, &qword_1001B5AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D9C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009F70(&qword_10021E218, &qword_1001B5AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D9CCC()
{
  result = qword_10021E258;
  if (!qword_10021E258)
  {
    sub_10000B3DC(&qword_10021E260, &qword_1001B5B18);
    sub_1000D98D4();
    sub_100027BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E258);
  }

  return result;
}

Swift::Int sub_1000D9D68()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000D9DF4(uint64_t a1)
{
  v2 = *(v1 + 24);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000D9E70()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000D9EF8(uint64_t *a1, void *a2)
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

unint64_t sub_1000D9F9C()
{
  result = qword_10021E268;
  if (!qword_10021E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E268);
  }

  return result;
}

unint64_t sub_1000D9FF0(uint64_t a1)
{
  result = sub_1000DA018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA018()
{
  result = qword_10021E270;
  if (!qword_10021E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E270);
  }

  return result;
}

uint64_t sub_1000DA06C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000DA0B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1000DA108()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1000E7418(v4, v1);
  sub_1000E7418(v4, v2);
  return Hasher._finalize()();
}

void sub_1000DA15C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1000E7418(a1, v3);

  sub_1000E7418(a1, v4);
}

Swift::Int sub_1000DA19C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1000E7418(v4, v1);
  sub_1000E7418(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_1000DA1EC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1000E59A8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1000E59A8(v2, v3);
}

unint64_t sub_1000DA24C()
{
  result = qword_10021E278;
  if (!qword_10021E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E278);
  }

  return result;
}

unint64_t sub_1000DA2A4()
{
  result = qword_10021E280;
  if (!qword_10021E280)
  {
    type metadata accessor for DesignTimeArtist(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E280);
  }

  return result;
}

unint64_t sub_1000DA2FC(uint64_t a1)
{
  result = sub_1000DA324();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000DA324()
{
  result = qword_10021E2B8;
  if (!qword_10021E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E2B8);
  }

  return result;
}

uint64_t sub_1000DA378()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100009F70(&qword_10021E2C0, &qword_1001B5CF8);
  v4 = (type metadata accessor for DesignTimeArtist(0) - 8);
  v5 = *(*v4 + 72);
  v6 = *(*v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v44 = v7;
  v45 = v6;
  v42 = v5;
  v43 = 2 * v5;
  v8 = v5;
  v9 = swift_allocObject();
  v47 = v9;
  *(v9 + 16) = xmmword_1001AD7C0;
  v10 = (v9 + v7);
  UUID.init()();
  UUID.uuidString.getter();
  v11 = *(v1 + 8);
  v50 = v1 + 8;
  v51 = v0;
  v41 = v11;
  v11(v3, v0);
  v12 = ResourceID.init(_:)();
  v14 = v13;
  v15 = v4[8];
  v40 = v4;
  sub_1000214E8(&v10[v15]);
  v48 = type metadata accessor for DesignTimeImage(0);
  v49 = *(*(v48 - 8) + 56);
  v49(&v10[v15], 0, 1, v48);
  *v10 = v12;
  *(v10 + 1) = v14;
  *(v10 + 2) = 0x676147207964614CLL;
  *(v10 + 3) = 0xE900000000000061;
  v16 = &v10[v8];
  UUID.init()();
  UUID.uuidString.getter();
  v17 = v0;
  v18 = v41;
  v41(v3, v17);
  v19 = ResourceID.init(_:)();
  v21 = v20;
  v22 = v4[8];
  sub_1000214E8(&v16[v22]);
  v23 = &v16[v22];
  v24 = v48;
  v25 = v49;
  v49(v23, 0, 1, v48);
  *v16 = v19;
  *(v16 + 1) = v21;
  strcpy(v16 + 16, "Maggie Rogers");
  *(v16 + 15) = -4864;
  v26 = &v10[v43];
  UUID.init()();
  UUID.uuidString.getter();
  v18(v3, v51);
  v27 = ResourceID.init(_:)();
  v29 = v28;
  v30 = v40;
  v31 = v40[8];
  sub_1000214E8(&v26[v31]);
  v25(&v26[v31], 0, 1, v24);
  *v26 = v27;
  *(v26 + 1) = v29;
  *(v26 + 2) = 0x45206E61766C7953;
  *(v26 + 3) = 0xEB000000006F7373;
  v32 = v44;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1001AEB90;
  v34 = (v33 + v32);
  UUID.init()();
  UUID.uuidString.getter();
  v18(v3, v51);
  v35 = ResourceID.init(_:)();
  v37 = v36;
  v38 = v30[8];
  sub_1000216E0(&v34[v38]);
  v49(&v34[v38], 0, 1, v48);
  *v34 = v35;
  *(v34 + 1) = v37;
  *(v34 + 2) = 0x676147207964614CLL;
  *(v34 + 3) = 0xE900000000000061;
  return v47;
}

uint64_t sub_1000DA7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009F70(&qword_100218950, &unk_1001B5000);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000DA888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009F70(&qword_100218950, &unk_1001B5000);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for LoadingView(uint64_t a1)
{
  result = qword_10021E340;
  if (!qword_10021E340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DA998(uint64_t a1)
{
  sub_1000391A4(319);
  if (v1 <= 0x3F)
  {
    sub_10000B304(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000DAA38()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10021E2C8 = result;
  unk_10021E2D0 = v1;
  byte_10021E2D8 = v2 & 1;
  qword_10021E2E0 = v3;
  return result;
}

uint64_t sub_1000DAA80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_100009F70(&qword_10021E398, &qword_1001B5D70);
  sub_1000DAB0C(a1, (a2 + *(v5 + 44)));
  v6 = static SafeAreaRegions.all.getter();
  v7 = static Edge.Set.all.getter();
  result = sub_100009F70(&qword_10021E378, &qword_1001B5D60);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  v9[8] = v7;
  return result;
}

double sub_1000DAB0C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v2 = sub_100009F70(&qword_10021E3A0, &qword_1001B5D78);
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  v28 = sub_100009F70(&qword_10021E3A8, &qword_1001B5D80);
  __chkstk_darwin(v28);
  v6 = &v24 - v5;
  v7 = sub_100009F70(&qword_10021E3B0, &qword_1001B5D88);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = [objc_opt_self() systemGroupedBackgroundColor];
  v26 = Color.init(uiColor:)();
  if (qword_1002183F0 != -1)
  {
    swift_once();
  }

  ProgressView<>.init<>(_:)();
  sub_10000D1EC(&qword_10021E3B8, &qword_10021E3A0, &qword_1001B5D78, &protocol conformance descriptor for ProgressView<A, B>);
  v15 = v25;
  View.accessibilityIdentifier(_:)();
  v16 = (*(v24 + 8))(v4, v15);
  __chkstk_darwin(v16);
  *(&v24 - 2) = v27;
  sub_100009F70(&qword_10021E3C0, &qword_1001BA350);
  sub_1000DB850();
  v17 = sub_10000B3DC(&qword_10021A8B8, &qword_1001B01D0);
  v18 = sub_1000DB938();
  v30 = v17;
  v31 = v18;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  sub_1000DBA2C(v6);
  v19 = *(v8 + 16);
  v19(v11, v13, v7);
  v20 = v29;
  *v29 = v26;
  v21 = sub_100009F70(&qword_10021E3D8, &qword_1001B5D90);
  v19(v20 + *(v21 + 48), v11, v7);
  v22 = *(v8 + 8);

  v22(v13, v7);
  v22(v11, v7);

  return result;
}

uint64_t sub_1000DAF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100009F70(&qword_10021A8A8, &qword_1001BA440);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v27 = sub_100009F70(&qword_10021A8B0, &qword_1001B51F0);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - v9;
  v28 = sub_100009F70(&qword_10021A8B8, &qword_1001B01D0);
  v11 = __chkstk_darwin(v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = *(type metadata accessor for LoadingView(0) + 20);
  v26 = a1;
  v17 = *(a1 + v16);
  if (v17)
  {
    v30 = v15;
    if (*(v17 + 88) && (*(v17 + 80) & 1) != 0)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*(v4 + 56))(v13, 1, 1, v3);
        v19 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
        v31 = v27;
        v32 = v19;
        swift_getOpaqueTypeConformance2();
        v20 = v30;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_1000DBA94(v13);
LABEL_8:
        sub_1000DB938();
        static ToolbarContentBuilder.buildBlock<A>(_:)();
        return sub_1000DBA94(v20);
      }
    }

    else
    {
    }

    v21 = static ToolbarItemPlacement.topBarTrailing.getter();
    v22 = v27;
    __chkstk_darwin(v21);
    *(&v25 - 2) = v26;
    sub_100042DC4();
    ToolbarItem<>.init(placement:content:)();
    v23 = sub_10000D1EC(&qword_10021A8E0, &qword_10021A8B0, &qword_1001B51F0, &protocol conformance descriptor for ToolbarItem<A, B>);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v4 + 16))(v13, v6, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    v31 = v22;
    v32 = v23;
    swift_getOpaqueTypeConformance2();
    v20 = v30;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000DBA94(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v22);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1000A3F28(&qword_100218568, type metadata accessor for RemoteViewConfiguration, &unk_1001BB390);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000DB43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009F70(&qword_100219710, &qword_1001B29A0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_1000DBB04(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v11 + 32);
    v17(v16, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v6, v23);
    v17 = *(v11 + 32);
  }

  v17(v14, v16, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  result = (v17)(v20 + v19, v14, v10);
  *a2 = 0;
  *(a2 + 8) = sub_10004329C;
  *(a2 + 16) = v20;
  return result;
}