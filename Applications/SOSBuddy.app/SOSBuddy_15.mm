uint64_t sub_10014C984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_1003609A8, &qword_100288648);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-1] - v5;
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7[9];
    v9 = v7[10];
    sub_1000088DC(v7 + 6, v8);
    (*(v9 + 24))(v21, v8, v9);
    v10 = sub_10014CB74();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    *v6 = static HorizontalAlignment.center.getter();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v17 = sub_1000040A8(&qword_1003609B0, &qword_100288650);
    sub_10014D0D4(v10, v12, v14, v16, v2, &v6[*(v17 + 44)]);

    sub_10014DC80(v6, v2, v21, a1);
    sub_100008FA0(v6, &qword_1003609A8, &qword_100288648);
    LOBYTE(v10) = static Edge.Set.bottom.getter();
    v18 = a1 + *(sub_1000040A8(&qword_1003609B8, &qword_100288658) + 36);
    *v18 = v10;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 1;
    return sub_100008964(v21);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014E03C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014CB74()
{
  v1 = v0[4];
  if (v1)
  {
    if (*(*(v1 + 344) + 32))
    {
      if (*v0)
      {

        countAndFlagsBits = sub_100067850();
        object = v3;

        if (!object)
        {
          v5 = [objc_opt_self() mainBundle];
          v49._object = 0x8000000100299C00;
          v6._countAndFlagsBits = 0xD000000000000013;
          v6._object = 0x80000001002973D0;
          v7.value._object = 0x80000001002962C0;
          v49._countAndFlagsBits = 0xD000000000000038;
          v7.value._countAndFlagsBits = 0xD000000000000012;
          v8._countAndFlagsBits = 0;
          v8._object = 0xE000000000000000;
          v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v49);
          countAndFlagsBits = v9._countAndFlagsBits;
          object = v9._object;
        }

        v10 = objc_opt_self();
        v11 = [v10 mainBundle];
        v50._object = 0x800000010029F740;
        v12._countAndFlagsBits = 0x206F7420646E6553;
        v12._object = 0xED00003F40243125;
        v50._countAndFlagsBits = 0xD000000000000128;
        v13._countAndFlagsBits = 0;
        v13._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v50);

        sub_1000040A8(&qword_100355E48, &unk_100279210);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_100279160;
        *(v14 + 56) = &type metadata for String;
        *(v14 + 64) = sub_1000218DC(v14, v15, v16);
        *(v14 + 32) = countAndFlagsBits;
        *(v14 + 40) = object;
        v17 = String.init(format:_:)();

        v18 = [v10 mainBundle];
        v51._object = 0x800000010029F8B0;
        v19._countAndFlagsBits = 0xD000000000000033;
        v19._object = 0x800000010029F870;
        v51._countAndFlagsBits = 0xD0000000000000CFLL;
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v51);

        return v17;
      }

      type metadata accessor for RoadsideAssistanceModel();
      v39 = &qword_100356B48;
      v40 = type metadata accessor for RoadsideAssistanceModel;
    }

    else
    {
      v21 = objc_opt_self();

      v22 = [v21 mainBundle];
      v52._object = 0x800000010029F9A0;
      v23._countAndFlagsBits = 0xD00000000000001BLL;
      v23._object = 0x800000010029F980;
      v52._countAndFlagsBits = 0xD0000000000000BCLL;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v52);
      v17 = v25._countAndFlagsBits;

      v26 = v0[2];
      if (v26)
      {
        sub_1000089B0(v26 + 48, v46);
        v27 = v47;
        v28 = v48;
        sub_1000088DC(v46, v47);
        swift_beginAccess();
        sub_10003F3D8(v1 + 48, v42);
        v29 = v44;
        if (v44)
        {
          v30 = v45;
          v31 = sub_1000088DC(v43, v44);
          v41[1] = v41;
          v41[2] = v25._object;
          v32 = *(v29 - 8);
          v33 = __chkstk_darwin(v31);
          v35 = v41 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v32 + 16))(v35, v33);
          sub_10003F434(v42);
          v36 = (*(v30 + 24))(v29, v30);

          (*(v32 + 8))(v35, v29);
          v37 = v36 & ~(v36 >> 63);
        }

        else
        {

          sub_10003F434(v42);
          v37 = 30;
        }

        (*(v28 + 208))(v37, v27, v28);
        sub_100008964(v46);
        return v17;
      }

      type metadata accessor for UIMetrics();
      v39 = &qword_100354D40;
      v40 = type metadata accessor for UIMetrics;
    }
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    v39 = &qword_100354D50;
    v40 = type metadata accessor for QuestionnaireState;
  }

  sub_10014E03C(v39, v40);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10014D0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v90 = a5;
  *&v103 = a3;
  *(&v103 + 1) = a4;
  v107 = a6;
  v8 = sub_1000040A8(&qword_1003609D0, &unk_100288670);
  __chkstk_darwin(v8 - 8);
  v106 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v89 - v11;
  v109 = type metadata accessor for AccessibilityTraits();
  v111 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Font.Leading();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000040A8(&qword_100356C40, &qword_10027A390);
  __chkstk_darwin(v17 - 8);
  v104 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v110 = &v89 - v20;
  *&v117 = a1;
  *(&v117 + 1) = a2;
  v24 = sub_100031770(v21, v22, v23);

  v99 = v24;
  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  static Font.largeTitle.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v30 = *(v14 + 104);
  v97 = enum case for Font.Leading.tight(_:);
  v98 = v14 + 104;
  v96 = v30;
  v30(v16);
  Font.leading(_:)();

  v32 = *(v14 + 8);
  v31 = v14 + 8;
  v100 = v16;
  v102 = v13;
  v94 = v32;
  v32(v16, v13);
  v95 = Text.font(_:)();
  v92 = v34;
  v93 = v33;
  v91 = v35;

  sub_1000317C4(v25, v27, v29 & 1);

  v36 = *(v90 + 16);
  if (v36)
  {
    v37 = *(v36 + 72);
    v38 = *(v36 + 80);
    sub_1000088DC((v36 + 48), v37);
    v39 = *(v38 + 24);
    swift_retain_n();
    v39(&v117, v37, v38);
    sub_100008964(&v117);
    v40 = *(v36 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v42 = *(v36 + 72);
    v43 = *(v36 + 80);
    sub_1000088DC((v36 + 48), v42);
    (*(v43 + 24))(&v117, v42, v43);
    static Alignment.leading.getter();
    sub_100008964(&v117);
    v44 = *(v36 + 112);
    v45 = static UIContentSizeCategory.>= infix(_:_:)();
    v101 = v31;
    if (v45)
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v127[55] = v132;
    *&v127[71] = v133;
    *&v127[87] = v134;
    *&v127[103] = v135;
    *&v127[7] = v129;
    *&v127[23] = v130;
    v46 = v91 & 1;
    v128 = v91 & 1;
    *&v127[39] = v131;
    v47 = *(v36 + 112);

    v48 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v48)
    {
      v49 = 1.0;
    }

    else
    {
      v49 = 0.5;
    }

    v50 = swift_getKeyPath();
    *(&v119[4] + 9) = *&v127[64];
    *(&v119[5] + 9) = *&v127[80];
    *(&v119[6] + 9) = *&v127[96];
    *(v119 + 9) = *v127;
    *(&v119[1] + 9) = *&v127[16];
    *(&v119[2] + 9) = *&v127[32];
    *&v117 = v95;
    *(&v117 + 1) = v93;
    LOBYTE(v118) = v46;
    *(&v118 + 1) = v92;
    *&v119[0] = KeyPath;
    BYTE8(v119[0]) = 0;
    *(&v119[3] + 9) = *&v127[48];
    *(&v119[7] + 1) = *&v127[111];
    *&v120 = v50;
    *(&v120 + 1) = v49;
    v51 = v108;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100356C48, &unk_10027A5D0);
    sub_10003BE30();
    View.accessibility(addTraits:)();
    v52 = *(v111 + 8);
    v111 += 8;
    v95 = v52;
    v52(v51, v109);
    v126[8] = v119[6];
    v126[9] = v119[7];
    v126[10] = v120;
    v126[4] = v119[2];
    v126[5] = v119[3];
    v126[6] = v119[4];
    v126[7] = v119[5];
    v126[0] = v117;
    v126[1] = v118;
    v126[2] = v119[0];
    v126[3] = v119[1];
    sub_100008FA0(v126, &qword_100356C48, &unk_10027A5D0);
    v117 = v103;

    v53 = Text.init<A>(_:)();
    v55 = v54;
    v57 = v56;
    v99 = v58;
    static Font.body.getter();
    v59 = v100;
    v60 = v102;
    v96(v100, v97, v102);
    Font.leading(_:)();

    v61 = v59;
    v62 = v36;
    v94(v61, v60);
    v63 = Text.font(_:)();
    *&v103 = v64;
    *(&v103 + 1) = v63;
    v66 = v65;
    v102 = v67;

    sub_1000317C4(v53, v55, v57 & 1);

    v68 = *(v36 + 72);
    v69 = *(v62 + 80);
    sub_1000088DC((v62 + 48), *(v62 + 72));
    (*(v69 + 24))(&v117, v68, v69);
    sub_100008964(&v117);
    v70 = *(v62 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    v71 = swift_getKeyPath();
    static Alignment.center.getter();
    v72 = *(v62 + 72);
    v73 = *(v62 + 80);
    sub_1000088DC((v62 + 48), v72);
    (*(v73 + 24))(&v117, v72, v73);
    static Alignment.leading.getter();
    sub_100008964(&v117);
    v74 = *(v62 + 112);
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v123[55] = v139;
    *&v123[71] = v140;
    *&v123[87] = v141;
    *&v123[103] = v142;
    *&v123[7] = v136;
    *&v123[23] = v137;
    v124 = v66 & 1;
    *&v123[39] = v138;
    v75 = *(v62 + 112);

    v76 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v76)
    {
      v77 = 1.0;
    }

    else
    {
      v77 = 0.5;
    }

    v78 = swift_getKeyPath();
    v79 = static Edge.Set.top.getter();
    *(&v114[4] + 9) = *&v123[64];
    *(&v114[5] + 9) = *&v123[80];
    *(&v114[6] + 9) = *&v123[96];
    *(v114 + 9) = *v123;
    *(&v114[1] + 9) = *&v123[16];
    *(&v114[2] + 9) = *&v123[32];
    v125 = 1;
    *&v112 = *(&v103 + 1);
    *(&v112 + 1) = v103;
    LOBYTE(v113) = v66 & 1;
    *(&v113 + 1) = v102;
    *&v114[0] = v71;
    BYTE8(v114[0]) = 0;
    *(&v114[3] + 9) = *&v123[48];
    *(&v114[7] + 1) = *&v123[111];
    *&v115 = v78;
    *(&v115 + 1) = v77;
    LOBYTE(v116[0]) = v79;
    *(v116 + 8) = 0u;
    *(&v116[1] + 8) = 0u;
    BYTE8(v116[2]) = 1;
    v80 = v108;
    static AccessibilityTraits.updatesFrequently.getter();
    sub_1000040A8(&qword_100356C70, &qword_10027A408);
    sub_10014E0D4(&qword_1003609D8, &qword_100356C70, &qword_10027A408, sub_10003BE30);
    v81 = v105;
    View.accessibility(addTraits:)();
    v95(v80, v109);
    v120 = v115;
    v121 = v116[0];
    v122[0] = v116[1];
    *(v122 + 9) = *(&v116[1] + 9);
    v119[4] = v114[4];
    v119[5] = v114[5];
    v119[6] = v114[6];
    v119[7] = v114[7];
    v119[0] = v114[0];
    v119[1] = v114[1];
    v119[2] = v114[2];
    v119[3] = v114[3];
    v117 = v112;
    v118 = v113;
    sub_100008FA0(&v117, &qword_100356C70, &qword_10027A408);
    v82 = v110;
    v83 = v104;
    sub_100006C20(v110, v104, &qword_100356C40, &qword_10027A390);
    v84 = v106;
    sub_100006C20(v81, v106, &qword_1003609D0, &unk_100288670);
    v85 = v107;
    sub_100006C20(v83, v107, &qword_100356C40, &qword_10027A390);
    v86 = sub_1000040A8(&qword_1003609E0, &unk_1002886E0);
    sub_100006C20(v84, v85 + *(v86 + 48), &qword_1003609D0, &unk_100288670);
    v87 = v85 + *(v86 + 64);
    *v87 = 0;
    *(v87 + 8) = 1;
    sub_100008FA0(v81, &qword_1003609D0, &unk_100288670);
    sub_100008FA0(v82, &qword_100356C40, &qword_10027A390);
    sub_100008FA0(v84, &qword_1003609D0, &unk_100288670);
    return sub_100008FA0(v83, &qword_100356C40, &qword_10027A390);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014E03C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014DC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000040A8(&qword_1003609C0, &qword_100288660);
  __chkstk_darwin(v8);
  v10 = v35 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = *(v11 + 112);

    v13 = v12;
    v14 = static UIContentSizeCategory.>= infix(_:_:)();

    v15 = 0.0;
    if ((v14 & 1) == 0)
    {
      v15 = *(*sub_1000088DC(a3, a3[3]) + 24) * 0.245;
    }

    v16 = *(v11 + 112);

    v17 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v17)
    {
      v18 = INFINITY;
    }

    else
    {
      v18 = *(*sub_1000088DC(a3, a3[3]) + 24) * 0.245;
    }

    static Alignment.center.getter();
    if (v15 > v18)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_100006C20(a1, v10, &qword_1003609A8, &qword_100288648);
    v20 = &v10[*(v8 + 36)];
    v21 = v35[5];
    *(v20 + 4) = v35[4];
    *(v20 + 5) = v21;
    *(v20 + 6) = v35[6];
    v22 = v35[1];
    *v20 = v35[0];
    *(v20 + 1) = v22;
    v23 = v35[3];
    *(v20 + 2) = v35[2];
    *(v20 + 3) = v23;
    v24 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_10014DFBC(v10, a4);
    result = sub_1000040A8(&qword_1003609C8, &qword_100288668);
    v34 = a4 + *(result + 36);
    *v34 = v24;
    *(v34 + 8) = v26;
    *(v34 + 16) = v28;
    *(v34 + 24) = v30;
    *(v34 + 32) = v32;
    *(v34 + 40) = 0;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014E03C(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014DFBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003609C0, &qword_100288660);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014E03C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_10014E0D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10014E188()
{
  result = qword_1003609F8;
  if (!qword_1003609F8)
  {
    sub_100008CF0(&qword_1003609C0, &qword_100288660);
    sub_100009274(&qword_100360A00, &qword_1003609A8, &qword_100288648, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003609F8);
  }

  return result;
}

uint64_t sub_10014E364()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    [v2 frame];
    type metadata accessor for CGRect(0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "SizeReaderView frame: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  v10 = *&v2[OBJC_IVAR____TtC8SOSBuddy16SizeReaderUIView__onSizeChanged];

  v11 = [v2 frame];
  v10(v11, v12, v13);
}

id sub_10014E54C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SizeReaderUIView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10014E5B8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 2);
  v3 = *(v0 + 3);
  v5 = type metadata accessor for SizeReaderUIView();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8SOSBuddy16SizeReaderUIView__onSizeChanged];
  *v7 = v4;
  *(v7 + 1) = v3;
  v10.receiver = v6;
  v10.super_class = v5;

  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, v1, v2);
  [v8 setAutoresizingMask:{16, v10.receiver, v10.super_class}];
  return v8;
}

uint64_t sub_10014E6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10014E804(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10014E710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10014E804(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10014E774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10014E804(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10014E7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100360A38;
  if (!qword_100360A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360A38);
  }

  return result;
}

unint64_t sub_10014E804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100360A40;
  if (!qword_100360A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360A40);
  }

  return result;
}

uint64_t sub_10014E860()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.body.getter();
  Font.bold()();

  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  v4 = Font.leading(_:)();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_10014EA50()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x800000010029F8B0;
  v1._object = 0x800000010029F870;
  v5._countAndFlagsBits = 0xD0000000000000CFLL;
  v1._countAndFlagsBits = 0xD000000000000033;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10014EB04(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  a3(a1, a2);
  a4();
  v5 = Font.weight(_:)();

  return v5;
}

uint64_t sub_10014EB50(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 9u)
  {
    goto LABEL_9;
  }

  if (((1 << a2) & 0x1D8) != 0)
  {
    return 0;
  }

  if (((1 << a2) & 0x24) != 0)
  {
    v4 = sub_1000ECF0C();
    v5 = [objc_opt_self() mainBundle];
    if (v4 == 2)
    {
      v6 = 0xD000000000000017;
      v16 = 0x800000010029FE40;
      v7 = 0x800000010029FE20;
      v8 = 0xD00000000000005FLL;
    }

    else
    {
      v6 = 0xD00000000000001ALL;
      v16 = 0x800000010029FEC0;
      v7 = 0x800000010029FEA0;
      v8 = 0xD000000000000059;
    }

    goto LABEL_18;
  }

  if (a2 == 9)
  {
    v9 = *(a1 + *(type metadata accessor for TransmissionProgress(0) + 28));
    v10 = [objc_opt_self() mainBundle];
  }

  else
  {
LABEL_9:
    v11 = sub_1000ECF0C();
    v9 = *(a1 + *(type metadata accessor for TransmissionProgress(0) + 28));
    if (v11 == 2)
    {
      v5 = [objc_opt_self() mainBundle];
      if (v9 == 100)
      {
        v16 = 0x800000010029FFA0;
        v6 = 0x6E6F697461636F4CLL;
        v7 = 0xED0000746E657320;
        v8 = 0xD00000000000005CLL;
      }

      else
      {
        v16 = 0x800000010029FF40;
        v7 = 0x800000010029FF20;
        v8 = 0xD00000000000005ALL;
        v6 = 0x1000000000000013;
      }

      goto LABEL_18;
    }

    v10 = [objc_opt_self() mainBundle];
  }

  v5 = v10;
  if (v9 == 100)
  {
    v16 = 0x80000001002A0040;
    v8 = 0xD00000000000003DLL;
    v6 = 1953391955;
    v7 = 0xE400000000000000;
LABEL_18:
    v12.super.isa = v5;
    v13 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_19;
  }

  v16 = 0x80000001002A0000;
  v6 = 0xE2676E69646E6553;
  v7 = 0xAA0000000000A680;
  v12.super.isa = v5;
  v13 = 0;
  v14 = 0xE000000000000000;
  v8 = 0xD00000000000003BLL;
LABEL_19:
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, 0, v12, *&v13, *&v8)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10014EE44(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 2)
  {
    if (*a1)
    {
      v3 = v1 == 1;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v5 = [objc_opt_self() mainBundle];
      v6 = 0xD00000000000001BLL;
      v19 = 0x800000010029FD60;
      v7 = 0x800000010029FD40;
      v13 = 0xD00000000000003ELL;
      goto LABEL_34;
    }

    goto LABEL_11;
  }

  if (v1 > 0xC)
  {
    goto LABEL_25;
  }

  if (((1 << v1) & 0xF30) != 0)
  {
LABEL_11:
    type metadata accessor for ConnectionClosed(0);
    if (sub_100071A54())
    {
      v4 = "nce via Satellite Ended";
      v5 = [objc_opt_self() mainBundle];
      v6 = 0xD000000000000021;
    }

    else
    {
      if (sub_100071A54())
      {
        v5 = [objc_opt_self() mainBundle];
        v8 = 0xD000000000000012;
        v6 = 0xD000000000000027;
        v19 = 0x800000010029FC60;
        v7 = 0x800000010029FDC0;
        v9 = 0x80000001002962C0;
        goto LABEL_17;
      }

      if ((sub_100071A54() & 1) == 0)
      {
        v14 = sub_100071A54();
        v5 = [objc_opt_self() mainBundle];
        if (v14)
        {
          v6 = 0xD00000000000001BLL;
          v19 = 0x800000010029FD60;
          v7 = 0x800000010029FD40;
          v13 = 0xD00000000000003ELL;
          goto LABEL_34;
        }

        v6 = 0xD00000000000001ALL;
        v19 = 0x800000010029FC60;
        v7 = 0x800000010029FC40;
        goto LABEL_14;
      }

      v4 = "r closed the FindMy connection";
      v5 = [objc_opt_self() mainBundle];
      v6 = 0xD000000000000019;
    }

    v19 = 0x800000010029FC60;
    v7 = v4 | 0x8000000000000000;
LABEL_14:
    v8 = 0;
    v9 = 0;
LABEL_17:
    v10.super.isa = v5;
    v11 = 0;
    v12 = 0xE000000000000000;
    v13 = 0xD000000000000037;
LABEL_36:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v8, v10, *&v11, *(&v19 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (((1 << v1) & 0x1080) == 0)
  {
    if (v1 == 6)
    {
      v2 = sub_100020AC8();
      goto LABEL_26;
    }

LABEL_25:
    v2 = sub_100020C00();
    goto LABEL_26;
  }

  type metadata accessor for ConnectionClosed(0);
  if ((sub_100071A54() & 1) == 0)
  {
    if (sub_100071A54())
    {
      v5 = [objc_opt_self() mainBundle];
      v8 = 0xD000000000000012;
      v13 = 0xD000000000000022;
      v6 = 0xD000000000000032;
      v19 = 0x8000000100295150;
      v7 = 0x800000010029FD00;
      v9 = 0x80000001002962C0;
LABEL_35:
      v10.super.isa = v5;
      v11 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_36;
    }

    v16 = sub_100071A54();
    v5 = [objc_opt_self() mainBundle];
    if (v16)
    {
      v17 = "tion is Not Available";
      v13 = 0xD000000000000022;
      v6 = 0xD000000000000024;
    }

    else
    {
      v17 = "r closed the connection";
      v13 = 0xD000000000000022;
      v6 = 0xD000000000000025;
    }

    v19 = 0x8000000100295150;
    v7 = v17 | 0x8000000000000000;
LABEL_34:
    v8 = 0;
    v9 = 0;
    goto LABEL_35;
  }

  v2 = sub_100020D38();
LABEL_26:
  countAndFlagsBits = v2;

  return countAndFlagsBits;
}

uint64_t sub_10014F28C(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v1 = sub_100020AC8();
      goto LABEL_6;
    }

LABEL_7:
    v3 = [objc_opt_self() mainBundle];
    v7._object = 0x800000010029FC60;
    v4._object = 0x800000010029FC40;
    v7._countAndFlagsBits = 0xD000000000000037;
    v4._countAndFlagsBits = 0xD00000000000001ALL;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v7)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (a1 - 1 >= 2)
  {
    goto LABEL_7;
  }

  v1 = sub_100020D38();
LABEL_6:
  countAndFlagsBits = v1;

  return countAndFlagsBits;
}

uint64_t sub_10014F380(unsigned __int8 a1)
{
  result = 0;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return result;
    }

    v3 = [objc_opt_self() mainBundle];
    v9 = 0x800000010029FBE0;
    v5 = 0x800000010029FBC0;
    v6 = 0xD00000000000005FLL;
    v4 = 0xD00000000000001FLL;
  }

  else
  {
    if (a1 - 2 < 2)
    {
      return result;
    }

    v3 = [objc_opt_self() mainBundle];
    v9 = 0x8000000100299CB0;
    v4 = 0xD000000000000026;
    v5 = 0x8000000100299D00;
    v6 = 0xD000000000000048;
  }

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v3, v7, *&v6)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10014F4B8(uint64_t a1)
{
  if (!a1)
  {
    v1 = [objc_opt_self() mainBundle];
    v11 = 0x8000000100296930;
    v2 = 0xD000000000000014;
    v3 = 0x8000000100296910;
LABEL_5:
    v4 = 0xD00000000000008ALL;
    goto LABEL_6;
  }

  if ((sub_100071A54() & 1) == 0)
  {
    if (sub_100071A54())
    {
      v1 = [objc_opt_self() mainBundle];
      v11 = 0x8000000100299C00;
      v2 = 0xD000000000000013;
      v3 = 0x80000001002973D0;
      v6 = 0x80000001002962C0;
      v4 = 0xD000000000000038;
      v5 = 0xD000000000000012;
      goto LABEL_7;
    }

    v10 = sub_100071A54();
    v1 = [objc_opt_self() mainBundle];
    if (v10)
    {
      v11 = 0x800000010029FB70;
      v3 = 0x800000010029C8E0;
      v4 = 0xD00000000000004ELL;
      v2 = 0xD000000000000012;
      goto LABEL_6;
    }

    v11 = 0x8000000100296930;
    v2 = 0xD000000000000014;
    v3 = 0x8000000100296910;
    goto LABEL_5;
  }

  v1 = [objc_opt_self() mainBundle];
  v11 = 0x8000000100299C40;
  v2 = 0x636E656772656D45;
  v3 = 0xED0000534F532079;
  v4 = 0xD000000000000032;
LABEL_6:
  v5 = 0;
  v6 = 0;
LABEL_7:
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, *&v5, v1, v7, *&v4)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10014F6FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    return 0;
  }

  else
  {
    return (*(a4 + 200))(*(*(a1 + 344) + 32), a3, a4);
  }
}

uint64_t sub_10014F7AC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for CABannerView(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000040A8(&qword_100354F50, &qword_100277D40);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
    swift_beginAccess();
    sub_100006C20(a1 + v16, v11, &qword_100354F50, &qword_100277D40);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_100008FA0(v11, &qword_100354F50, &qword_100277D40);
      v17 = 1;
    }

    else
    {
      sub_10014FBCC(v11, v15, type metadata accessor for ConnectionAssistantBanner.Mode);
      sub_100151360(v15, v8 + *(v5 + 24), type metadata accessor for ConnectionAssistantBanner.Mode);
      type metadata accessor for AppEvents();
      sub_10014FB84(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
      *v8 = EnvironmentObject.init()();
      v8[1] = v18;
      type metadata accessor for UIMetrics();
      sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      v19 = EnvironmentObject.init()();
      v21 = v20;
      sub_100158C50(v15, type metadata accessor for ConnectionAssistantBanner.Mode);
      v8[2] = v19;
      v8[3] = v21;
      sub_10014FBCC(v8, a3, type metadata accessor for CABannerView);
      v17 = 0;
    }

    return (*(v6 + 56))(a3, v17, 1, v5);
  }

  else
  {
    type metadata accessor for BannerAppearanceModel(0);
    sub_10014FB84(&qword_100354F20, type metadata accessor for BannerAppearanceModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014FB84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014FBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10014FC48(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_10014FD14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10014FDB8(uint64_t a1)
{
  sub_10007B2FC(319);
  if (v1 <= 0x3F)
  {
    sub_10014FE54(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ConnectionAssistantBanner.Mode(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10014FE54(uint64_t a1)
{
  if (!qword_100359948)
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100359948);
    }
  }
}

unint64_t sub_10014FEEC()
{
  result = qword_100360AE0;
  if (!qword_100360AE0)
  {
    sub_100008CF0(&qword_100360AE8, &qword_1002888D8);
    sub_10014FB84(&qword_100360AF0, type metadata accessor for CABannerView, &unk_1002888E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360AE0);
  }

  return result;
}

uint64_t sub_10014FFBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CABannerView(0);
  type metadata accessor for ConnectionAssistantBanner.Mode(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppEvents();
  sub_10014FB84(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  *a1 = EnvironmentObject.init()();
  a1[1] = v2;
  type metadata accessor for UIMetrics();
  sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  result = EnvironmentObject.init()();
  a1[2] = result;
  a1[3] = v4;
  return result;
}

uint64_t sub_1001500A0()
{
  v1 = sub_1000040A8(&qword_100360AF8, &qword_100288930);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - v3;
  v5 = *(v0 + 16);
  if (v5)
  {
    sub_1000089B0(v5 + 48, v10);
    v6 = v11;
    v7 = v12;
    sub_1000088DC(v10, v11);
    (*(v7 + 8))(v13, v6, v7);
    sub_100008964(v10);
    v8 = static Axis.Set.vertical.getter();
    __chkstk_darwin(v8);
    v10[-2] = v0;
    v10[-1] = v13;
    sub_1000040A8(&qword_100360B00, &qword_100288938);
    sub_1001511F0();
    ScrollView.init(_:showsIndicators:content:)();
    sub_100009274(&qword_100360B40, &qword_100360AF8, &qword_100288930, &protocol conformance descriptor for ScrollView<A>);
    View.scrollDisabled(_:)();
    (*(v2 + 8))(v4, v1);
    return sub_100008964(v13);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100150304@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CABannerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = sub_1000040A8(&qword_100360B48, &qword_100288958);
  sub_1001504C8(a1, (a3 + *(v9 + 44)));
  *(a3 + *(sub_1000040A8(&qword_100360B18, &qword_100288940) + 36)) = 256;
  v10 = sub_1000088DC(a2, a2[3]);
  v11 = *(*v10 + 16);
  v12 = *(*v10 + 24);
  sub_100151360(a1, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CABannerView);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_10014FBCC(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for CABannerView);
  v15 = static Alignment.center.getter();
  v17 = v16;
  result = sub_1000040A8(&qword_100360B00, &qword_100288938);
  v19 = (a3 + *(result + 36));
  *v19 = v11;
  v19[1] = v12;
  v19[2] = sub_10015153C;
  v19[3] = v14;
  v19[4] = v15;
  v19[5] = v17;
  return result;
}

void *sub_1001504C8@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = sub_1000040A8(&qword_100360B50, &qword_100288960);
  __chkstk_darwin(v5);
  v7 = v53 - v6;
  v8 = sub_1000040A8(&qword_100360B58, &qword_100288968);
  __chkstk_darwin(v8);
  v10 = v53 - v9;
  v11 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  __chkstk_darwin(v11);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for CABannerView(0) + 24);
  swift_storeEnumTagMultiPayload();
  v15 = sub_1001B49E4(a1 + v14, v13);
  sub_100158C50(v13, type metadata accessor for ConnectionAssistantBanner.Mode);
  if (v15)
  {
    type metadata accessor for ConnectivityModel();
    sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
    v16 = EnvironmentObject.init()();
    v64 = v17;
    v65 = v16;
    type metadata accessor for ConnectionModel(0);
    sub_10014FB84(&qword_100354F88, type metadata accessor for ConnectionModel, "\ts\n");
    v18 = EnvironmentObject.init()();
    v62 = v19;
    v63 = v18;
    type metadata accessor for GeoLocationModel();
    sub_10014FB84(&qword_10035F1D0, type metadata accessor for GeoLocationModel, "\ts\n");
    v20 = EnvironmentObject.init()();
    v60 = v21;
    v61 = v20;
    type metadata accessor for GuidanceMessagesModel();
    sub_10014FB84(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
    v22 = EnvironmentObject.init()();
    v58 = v23;
    v59 = v22;
    type metadata accessor for GuidanceModel(0);
    sub_10014FB84(&qword_100354F80, type metadata accessor for GuidanceModel, "\ts\n");
    v24 = EnvironmentObject.init()();
    v56 = v25;
    v57 = v24;
    type metadata accessor for PartnerModel();
    sub_10014FB84(&qword_1003561A8, type metadata accessor for PartnerModel, "\ts\n");
    v26 = EnvironmentObject.init()();
    v54 = v27;
    v55 = v26;
    type metadata accessor for StewieModel(0);
    sub_10014FB84(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
    v28 = EnvironmentObject.init()();
    v30 = v29;
    type metadata accessor for TimeZoneModel(0);
    sub_10014FB84(&qword_10035F220, type metadata accessor for TimeZoneModel, "\ts\n");
    v31 = EnvironmentObject.init()();
    v53[1] = a3;
    v33 = v32;
    type metadata accessor for TryOutModel(0);
    v53[0] = v5;
    sub_10014FB84(&qword_100357990, type metadata accessor for TryOutModel, "\ts\n");
    v34 = EnvironmentObject.init()();
    v36 = v35;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v37 = EnvironmentObject.init()();
    v38 = v64;
    *v10 = v65;
    *(v10 + 1) = v38;
    v39 = v62;
    *(v10 + 2) = v63;
    *(v10 + 3) = v39;
    v40 = v60;
    *(v10 + 4) = v61;
    *(v10 + 5) = v40;
    v41 = v58;
    *(v10 + 6) = v59;
    *(v10 + 7) = v41;
    v42 = v56;
    *(v10 + 8) = v57;
    *(v10 + 9) = v42;
    v43 = v54;
    *(v10 + 10) = v55;
    *(v10 + 11) = v43;
    *(v10 + 12) = v28;
    *(v10 + 13) = v30;
    *(v10 + 14) = v31;
    *(v10 + 15) = v33;
    *(v10 + 16) = v34;
    *(v10 + 17) = v36;
    *(v10 + 18) = v37;
    *(v10 + 19) = v44;
    *(v10 + 10) = 0u;
    *(v10 + 11) = 0u;
    v45 = swift_storeEnumTagMultiPayload();
    sub_100158BDC(v45, v46, v47);
    sub_100009274(&qword_100360B70, &qword_100360B50, &qword_100288960, &protocol conformance descriptor for HStack<A>);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v7 = static VerticalAlignment.top.getter();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v49 = sub_1000040A8(&qword_100360B60, &qword_100288970);
    sub_100150A74(a1, &v7[*(v49 + 44)]);
    sub_100006C20(v7, v10, &qword_100360B50, &qword_100288960);
    v50 = swift_storeEnumTagMultiPayload();
    sub_100158BDC(v50, v51, v52);
    sub_100009274(&qword_100360B70, &qword_100360B50, &qword_100288960, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_100008FA0(v7, &qword_100360B50, &qword_100288960);
  }
}

uint64_t sub_100150A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000040A8(&qword_100360B78, &qword_100288978);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for CABannerStaticContentLeadingView(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v25 - v16);
  v18 = type metadata accessor for CABannerView(0);
  sub_100151360(a1 + *(v18 + 24), v17 + *(v12 + 28), type metadata accessor for ConnectionAssistantBanner.Mode);
  type metadata accessor for UIMetrics();
  sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  *v17 = EnvironmentObject.init()();
  v17[1] = v19;
  *v10 = static VerticalAlignment.top.getter();
  *(v10 + 1) = 0x4020000000000000;
  v10[16] = 0;
  v20 = sub_1000040A8(&qword_100360B80, &qword_100288980);
  sub_100150D40(a1, &v10[*(v20 + 44)]);
  v21 = static Edge.Set.all.getter();
  v22 = &v10[*(v5 + 44)];
  *v22 = v21;
  *(v22 + 8) = xmmword_100287330;
  *(v22 + 24) = xmmword_100288820;
  v22[40] = 0;
  sub_100151360(v17, v14, type metadata accessor for CABannerStaticContentLeadingView);
  sub_100006C20(v10, v7, &qword_100360B78, &qword_100288978);
  sub_100151360(v14, a2, type metadata accessor for CABannerStaticContentLeadingView);
  v23 = sub_1000040A8(&qword_100360B88, &qword_100288988);
  sub_100006C20(v7, a2 + *(v23 + 48), &qword_100360B78, &qword_100288978);
  sub_100008FA0(v10, &qword_100360B78, &qword_100288978);
  sub_100158C50(v17, type metadata accessor for CABannerStaticContentLeadingView);
  sub_100008FA0(v7, &qword_100360B78, &qword_100288978);
  return sub_100158C50(v14, type metadata accessor for CABannerStaticContentLeadingView);
}

uint64_t sub_100150D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for CABannerStaticContentTrailingView(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100360B90, &qword_100288990);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = *(sub_1000040A8(&qword_100360B98, &qword_100288998) + 44);
  v16 = *(type metadata accessor for CABannerView(0) + 24);
  sub_100151360(a1 + v16, &v14[v15], type metadata accessor for ConnectionAssistantBanner.Mode);
  sub_100151360(a1 + v16, v8, type metadata accessor for ConnectionAssistantBanner.Mode);
  sub_100006C20(v14, v11, &qword_100360B90, &qword_100288990);
  sub_100151360(v8, v5, type metadata accessor for CABannerStaticContentTrailingView);
  v17 = v21;
  sub_100006C20(v11, v21, &qword_100360B90, &qword_100288990);
  v18 = sub_1000040A8(&qword_100360BA0, &unk_1002889A0);
  sub_100151360(v5, v17 + *(v18 + 48), type metadata accessor for CABannerStaticContentTrailingView);
  sub_100158C50(v8, type metadata accessor for CABannerStaticContentTrailingView);
  sub_100008FA0(v14, &qword_100360B90, &qword_100288990);
  sub_100158C50(v5, type metadata accessor for CABannerStaticContentTrailingView);
  return sub_100008FA0(v11, &qword_100360B90, &qword_100288990);
}

void *sub_100150F90(void *result, double a2, double a3)
{
  v3 = result;
  if (a2 != 0.0 || a3 != 0.0)
  {
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v6 = ceil(a3);
    v7 = type metadata accessor for Logger();
    sub_10000F53C(v7, qword_100381CC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v10 = 136446466;
      v18 = a2;
      v19 = a3;
      type metadata accessor for CGSize(0);
      v11 = String.init<A>(describing:)();
      v13 = sub_10017C9E8(v11, v12, &v17);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2082;
      v18 = a2;
      v19 = v6;
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, &v17);

      *(v10 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v8, v9, "Banner content changed, size: %{public}s, reporting: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    if (*v3)
    {
      v18 = a2;
      v19 = v6;

      PassthroughSubject.send(_:)();
    }

    else
    {
      type metadata accessor for AppEvents();
      sub_10014FB84(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1001511F0()
{
  result = qword_100360B08;
  if (!qword_100360B08)
  {
    sub_100008CF0(&qword_100360B00, &qword_100288938);
    sub_1001512A8();
    sub_100009274(&qword_100360B30, &qword_100360B38, &qword_100288950, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360B08);
  }

  return result;
}

unint64_t sub_1001512A8()
{
  result = qword_100360B10;
  if (!qword_100360B10)
  {
    sub_100008CF0(&qword_100360B18, &qword_100288940);
    sub_100009274(&qword_100360B20, &qword_100360B28, &qword_100288948, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360B10);
  }

  return result;
}

uint64_t sub_100151360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001513C8()
{
  v1 = (type metadata accessor for CABannerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  type metadata accessor for ConnectionAssistantBanner.Mode(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void *sub_10015153C(double a1, double a2)
{
  v5 = *(type metadata accessor for CABannerView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100150F90(v6, a1, a2);
}

uint64_t sub_1001515B4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v112 = sub_1000040A8(&qword_100360DF8, &unk_100288B68);
  __chkstk_darwin(v112);
  v4 = &v96 - v3;
  v99 = type metadata accessor for SymbolVariants();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1000040A8(&qword_10035B5E0, &unk_1002831D0);
  __chkstk_darwin(v100);
  v98 = &v96 - v6;
  v105 = sub_1000040A8(&qword_100360E00, &qword_100288B78);
  __chkstk_darwin(v105);
  v104 = (&v96 - v7);
  v107 = sub_1000040A8(&qword_100360E08, &qword_100288B80);
  __chkstk_darwin(v107);
  v109 = (&v96 - v8);
  v102 = sub_1000040A8(&qword_100360E10, &qword_100288B88);
  __chkstk_darwin(v102);
  v103 = &v96 - v9;
  v108 = sub_1000040A8(&qword_100360E18, &qword_100288B90);
  __chkstk_darwin(v108);
  v106 = &v96 - v10;
  v101 = sub_1000040A8(&qword_100360E20, &qword_100288B98);
  __chkstk_darwin(v101);
  v12 = &v96 - v11;
  v13 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  __chkstk_darwin(v13);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1000040A8(&qword_100360E28, &unk_100288BA0);
  __chkstk_darwin(v111);
  v110 = &v96 - v16;
  v17 = *v1;
  if (*v1)
  {
    sub_1000089B0(v17 + 48, &v141);
    v18 = *(&v142 + 1);
    v19 = v143;
    sub_1000088DC(&v141, *(&v142 + 1));
    (*(v19 + 8))(v150, v18, v19);
    sub_100008964(&v141);
    v20 = *(v17 + 112);
    v21 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v21)
    {
      v22 = static HorizontalAlignment.center.getter();
      v23 = static Edge.Set.leading.getter();
      EdgeInsets.init(_all:)();
      LOBYTE(v141) = 1;
      LOBYTE(v132) = 0;
      *v4 = v22;
      *(v4 + 1) = 0;
      v4[16] = 1;
      v4[24] = v23;
      *(v4 + 4) = v24;
      *(v4 + 5) = v25;
      *(v4 + 6) = v26;
      *(v4 + 7) = v27;
      v4[64] = 0;
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_10035C7C0, &unk_10028DB40);
      sub_10015984C();
      sub_1000D0804();
      _ConditionalContent<>.init(storage:)();
      return sub_100008964(v150);
    }

    v28 = type metadata accessor for CABannerStaticContentLeadingView(0);
    sub_100151360(v2 + *(v28 + 20), v15, type metadata accessor for ConnectionAssistantBanner.Mode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          sub_100159414(&v141);
          v129 = v147;
          v130 = v148;
          v131[0] = v149[0];
          *(v131 + 10) = *(v149 + 10);
          v125 = v143;
          v126 = v144;
          v127 = v145;
          v128 = v146;
          v123 = v141;
          v124 = v142;
          sub_1000040A8(&qword_100360E30, &unk_10028D8B0);
          sub_100159420();
          _ConditionalContent<>.init(storage:)();
          v90 = v139;
          v91 = v109;
          v109[6] = v138;
          v91[7] = v90;
          v91[8] = v140[0];
          *(v91 + 138) = *(v140 + 10);
          v92 = v135;
          v91[2] = v134;
          v91[3] = v92;
          v93 = v137;
          v91[4] = v136;
          v91[5] = v93;
          v94 = v133;
          *v91 = v132;
          v91[1] = v94;
          swift_storeEnumTagMultiPayload();
          sub_1000040A8(&qword_100360E40, &qword_100288BB0);
          sub_1001594AC();
          sub_1001597C0();
          v55 = v110;
          _ConditionalContent<>.init(storage:)();
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      v70 = static HorizontalAlignment.leading.getter();
      v71 = v104;
      *v104 = v70;
      v71[1] = 0;
      *(v71 + 16) = 0;
      sub_1000089B0(v17 + 48, &v141);
      v72 = *(&v142 + 1);
      v73 = v143;
      sub_1000088DC(&v141, *(&v142 + 1));
      (*(v73 + 40))(v72, v73);
      v74 = static Font.largeTitle.getter();
      sub_1000040A8(&qword_100360EB0, &qword_10028D8E0);
      v75 = Image.init(systemName:)();
      KeyPath = swift_getKeyPath();
      *&v132 = v75;
      *(&v132 + 1) = KeyPath;
      *&v133 = v74;

      v77 = v96;
      static SymbolVariants.fill.getter();
      sub_1000040A8(&qword_100355050, &unk_100283230);
      sub_10000C700();
      v78 = v98;
      View.symbolVariant(_:)();
      (*(v97 + 8))(v77, v99);

      *(v78 + *(v100 + 36)) = static Color.green.getter();
      sub_1000A4A68();
      v79 = v104;
      View.accessibility(hidden:)();
      sub_100008FA0(v78, &qword_10035B5E0, &unk_1002831D0);

      sub_100008964(&v141);
      v80 = static Edge.Set.all.getter();
      v81 = v79 + *(sub_1000040A8(&qword_100360E88, &qword_100288BC8) + 36);
      *v81 = v80;
      __asm { FMOV            V0.2D, #16.0 }

      *(v81 + 8) = _Q0;
      *(v81 + 24) = _Q0;
      *(v81 + 40) = 0;
      v83 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v84 = v79 + *(v105 + 36);
      *v84 = v83;
      *(v84 + 8) = v85;
      *(v84 + 16) = v86;
      *(v84 + 24) = v87;
      *(v84 + 32) = v88;
      *(v84 + 40) = 0;
      sub_100006C20(v79, v103, &qword_100360E00, &qword_100288B78);
      swift_storeEnumTagMultiPayload();
      sub_100159538();
      sub_10015967C();
      v89 = v106;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v89, v109, &qword_100360E18, &qword_100288B90);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360E40, &qword_100288BB0);
      sub_1001594AC();
      sub_1001597C0();
      v55 = v110;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v89, &qword_100360E18, &qword_100288B90);
      v67 = v79;
      v68 = &qword_100360E00;
      v69 = &qword_100288B78;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_100158C50(v15, type metadata accessor for ConnectionClosed);
        }

LABEL_10:
        type metadata accessor for ConnectionClosedModel(0);
        sub_10014FB84(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel, "\ts\n");
        v113 = EnvironmentObject.init()();
        v106 = v30;
        type metadata accessor for ConnectivityModel();
        sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
        v31 = EnvironmentObject.init()();
        v104 = v32;
        v105 = v31;
        type metadata accessor for GuidanceModel(0);
        sub_10014FB84(&qword_100354F80, type metadata accessor for GuidanceModel, "\ts\n");
        v103 = EnvironmentObject.init()();
        v34 = v33;
        type metadata accessor for OrientationModel();
        sub_10014FB84(&qword_10035B1B0, type metadata accessor for OrientationModel, "\ts\n");
        v35 = EnvironmentObject.init()();
        v37 = v36;
        type metadata accessor for StewieModel(0);
        sub_10014FB84(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
        v38 = EnvironmentObject.init()();
        v40 = v39;
        type metadata accessor for UIMetrics();
        sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
        v41 = EnvironmentObject.init()();
        v43 = v42;
        v44 = static Edge.Set.all.getter();
        LOBYTE(v132) = 0;
        *&v114 = v113;
        *(&v114 + 1) = v106;
        *&v115 = v105;
        *(&v115 + 1) = v104;
        *&v116 = v103;
        *(&v116 + 1) = v34;
        *&v117 = v35;
        *(&v117 + 1) = v37;
        *&v118 = v38;
        *(&v118 + 1) = v40;
        *&v119 = v41;
        *(&v119 + 1) = v43;
        LOBYTE(v120) = 2;
        v121 = 0;
        LOBYTE(v122[0]) = v44;
        DWORD1(v122[0]) = *(&v141 + 3);
        *(v122 + 1) = v141;
        __asm { FMOV            V0.2D, #16.0 }

        *(v122 + 8) = _Q0;
        *(&v122[1] + 8) = _Q0;
        BYTE8(v122[2]) = 0;
        *(v149 + 9) = *(&v122[1] + 9);
        v148 = v122[0];
        v149[0] = v122[1];
        v141 = v114;
        v142 = v115;
        v146 = v119;
        v147 = v120;
        v144 = v117;
        v145 = v118;
        v143 = v116;
        sub_1001598D8(&v141);
        v129 = v147;
        v130 = v148;
        v131[0] = v149[0];
        *(v131 + 10) = *(v149 + 10);
        v125 = v143;
        v126 = v144;
        v127 = v145;
        v128 = v146;
        v123 = v141;
        v124 = v142;
        sub_100006C20(&v114, &v132, &qword_100360E30, &unk_10028D8B0);
        sub_1000040A8(&qword_100360E30, &unk_10028D8B0);
        sub_100159420();
        _ConditionalContent<>.init(storage:)();
        v50 = v139;
        v51 = v109;
        v109[6] = v138;
        v51[7] = v50;
        v51[8] = v140[0];
        *(v51 + 138) = *(v140 + 10);
        v52 = v135;
        v51[2] = v134;
        v51[3] = v52;
        v53 = v137;
        v51[4] = v136;
        v51[5] = v53;
        v54 = v133;
        *v51 = v132;
        v51[1] = v54;
        swift_storeEnumTagMultiPayload();
        sub_1000040A8(&qword_100360E40, &qword_100288BB0);
        sub_1001594AC();
        sub_1001597C0();
        v55 = v110;
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v114, &qword_100360E30, &unk_10028D8B0);
LABEL_15:
        sub_100006C20(v55, v4, &qword_100360E28, &unk_100288BA0);
        swift_storeEnumTagMultiPayload();
        sub_1000040A8(&qword_10035C7C0, &unk_10028DB40);
        sub_10015984C();
        sub_1000D0804();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(v55, &qword_100360E28, &unk_100288BA0);
        return sub_100008964(v150);
      }

      *v12 = static HorizontalAlignment.center.getter();
      *(v12 + 1) = 0;
      v12[16] = 0;
      v56 = sub_1000040A8(&qword_100360EB8, &unk_10028D920);
      sub_100152538(&v12[*(v56 + 44)]);
      v57 = static Edge.Set.all.getter();
      v58 = &v12[*(sub_1000040A8(&qword_100360E60, &qword_100288BB8) + 36)];
      *v58 = v57;
      __asm { FMOV            V0.2D, #16.0 }

      *(v58 + 8) = _Q0;
      *(v58 + 24) = _Q0;
      v58[40] = 0;
      v60 = static Edge.Set.top.getter();
      EdgeInsets.init(_all:)();
      v61 = &v12[*(v101 + 36)];
      *v61 = v60;
      *(v61 + 1) = v62;
      *(v61 + 2) = v63;
      *(v61 + 3) = v64;
      *(v61 + 4) = v65;
      v61[40] = 0;
      sub_100006C20(v12, v103, &qword_100360E20, &qword_100288B98);
      swift_storeEnumTagMultiPayload();
      sub_100159538();
      sub_10015967C();
      v66 = v106;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v66, v109, &qword_100360E18, &qword_100288B90);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360E40, &qword_100288BB0);
      sub_1001594AC();
      sub_1001597C0();
      v55 = v110;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v66, &qword_100360E18, &qword_100288B90);
      v67 = v12;
      v68 = &qword_100360E20;
      v69 = &qword_100288B98;
    }

    sub_100008FA0(v67, v68, v69);
    goto LABEL_15;
  }

  type metadata accessor for UIMetrics();
  sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100152538@<X0>(uint64_t a2@<X8>)
{
  v39 = a2;
  v2 = type metadata accessor for SymbolVariants();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000040A8(&qword_10035D250, &qword_100288C10);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v29 = &v29 - v6;
  v37 = sub_1000040A8(&qword_100360EC0, &unk_10028D930);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v31 = &v29 - v7;
  v34 = sub_1000040A8(&qword_10035D258, &qword_100283210) - 8;
  __chkstk_darwin(v34);
  v33 = &v29 - v8;
  v32 = sub_1000040A8(&qword_100360EC8, &unk_10028D940);
  __chkstk_darwin(v32);
  v30 = &v29 - v9;
  v10 = Image.init(_internalSystemName:)();
  v11 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v40 = v10;
  v41 = KeyPath;
  v42 = v11;
  static SymbolVariants.circle.getter();
  v13 = sub_1000040A8(&qword_100355050, &unk_100283230);
  v14 = sub_10000C700();
  View.symbolVariant(_:)();
  v15 = *(v3 + 8);
  v15(v5, v2);

  static SymbolVariants.fill.getter();
  v40 = v13;
  v41 = v14;
  swift_getOpaqueTypeConformance2();
  v16 = v31;
  v17 = v36;
  v18 = v29;
  View.symbolVariant(_:)();
  v15(v5, v2);
  (*(v38 + 8))(v18, v17);
  v19 = static Color.white.getter();
  v20 = static Color.red.getter();
  v21 = v33;
  (*(v35 + 32))(v33, v16, v37);
  v22 = (v21 + *(v34 + 44));
  *v22 = v19;
  v22[1] = v20;
  v23 = v30;
  v24 = &v30[*(v32 + 36)];
  v25 = *(sub_1000040A8(&qword_100358500, &qword_10027CE10) + 28);
  v26 = enum case for Image.Scale.large(_:);
  v27 = type metadata accessor for Image.Scale();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  sub_10000CF4C(v21, v23, &qword_10035D258, &qword_100283210);
  sub_100159910();
  View.accessibility(hidden:)();
  return sub_100008FA0(v23, &qword_100360EC8, &unk_10028D940);
}

void *sub_100152A04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for CABannerConnectionClosedView(0);
  __chkstk_darwin(v3);
  v5 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ConnectionClosed(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000040A8(&qword_100360D78, &qword_100288B30);
  __chkstk_darwin(v62);
  v64 = (&v58 - v9);
  v59 = sub_1000040A8(&qword_100360D80, &qword_100288B38);
  __chkstk_darwin(v59);
  v11 = &v58 - v10;
  v12 = sub_1000040A8(&qword_100360D88, &qword_100288B40);
  __chkstk_darwin(v12);
  v14 = (&v58 - v13);
  v60 = sub_1000040A8(&qword_100360D90, &qword_100288B48);
  __chkstk_darwin(v60);
  v16 = &v58 - v15;
  v63 = sub_1000040A8(&qword_100360D98, &qword_100288B50);
  __chkstk_darwin(v63);
  v61 = &v58 - v17;
  v18 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  __chkstk_darwin(v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100151360(a1, v20, type metadata accessor for ConnectionAssistantBanner.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      type metadata accessor for UIMetrics();
      sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      *v14 = EnvironmentObject.init()();
      v14[1] = v39;
      v40 = swift_storeEnumTagMultiPayload();
      sub_100159200(v40, v41, v42);
      sub_10014FB84(&qword_100360DC8, type metadata accessor for CABannerConnectionClosedView, &unk_100288E80);

      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v16, v11, &qword_100360D90, &qword_100288B48);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360DD8, &qword_100288B60);
      sub_100159144();
      sub_100159254();
      v43 = v61;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v16, &qword_100360D90, &qword_100288B48);
      sub_100006C20(v43, v64, &qword_100360D98, &qword_100288B50);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360DA8, &qword_100288B58);
      sub_1001590B8();
      sub_100159388();
      _ConditionalContent<>.init(storage:)();

      return sub_100008FA0(v43, &qword_100360D98, &qword_100288B50);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_10014FBCC(v20, v8, type metadata accessor for ConnectionClosed);
      sub_100151360(v8, v5 + *(v3 + 20), type metadata accessor for ConnectionClosed);
      type metadata accessor for UIMetrics();
      sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      *v5 = EnvironmentObject.init()();
      v5[1] = v24;
      sub_100151360(v5, v14, type metadata accessor for CABannerConnectionClosedView);
      v25 = swift_storeEnumTagMultiPayload();
      sub_100159200(v25, v26, v27);
      sub_10014FB84(&qword_100360DC8, type metadata accessor for CABannerConnectionClosedView, &unk_100288E80);
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v16, v11, &qword_100360D90, &qword_100288B48);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360DD8, &qword_100288B60);
      sub_100159144();
      sub_100159254();
      v28 = v61;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v16, &qword_100360D90, &qword_100288B48);
      sub_100006C20(v28, v64, &qword_100360D98, &qword_100288B50);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360DA8, &qword_100288B58);
      sub_1001590B8();
      sub_100159388();
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v28, &qword_100360D98, &qword_100288B50);
      sub_100158C50(v5, type metadata accessor for CABannerConnectionClosedView);
      return sub_100158C50(v8, type metadata accessor for ConnectionClosed);
    }

    v48 = *v20;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v45 = EnvironmentObject.init()();
    *&v66 = v45;
    *(&v66 + 1) = v46;
    LOWORD(v67) = v48;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v44 = *v20;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v45 = EnvironmentObject.init()();
    *&v66 = v45;
    *(&v66 + 1) = v46;
    LOBYTE(v67) = v44;
    BYTE1(v67) = 1;
LABEL_11:
    v49 = sub_1001592E0(v45, v46, v47);
    sub_100159334(v49, v50, v51);

    _ConditionalContent<>.init(storage:)();
    v52 = v70;
    v53 = BYTE1(v70);
    *v11 = v69;
    v11[16] = v52;
    v11[17] = v53;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100360DD8, &qword_100288B60);
    sub_100159144();
    sub_100159254();
    v54 = v61;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v54, v64, &qword_100360D98, &qword_100288B50);
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100360DA8, &qword_100288B58);
    sub_1001590B8();
    sub_100159388();
    _ConditionalContent<>.init(storage:)();

    return sub_100008FA0(v54, &qword_100360D98, &qword_100288B50);
  }

  if (EnumCaseMultiPayload == 4)
  {
    type metadata accessor for ConnectivityModel();
    sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
    v30 = EnvironmentObject.init()();
    v32 = v31;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v33 = EnvironmentObject.init()();
    *&v66 = v30;
    *(&v66 + 1) = v32;
    *&v67 = v33;
    *(&v67 + 1) = v34;
    v68 = 0;
    sub_100159064(v33, v34, v35);

    _ConditionalContent<>.init(storage:)();
    v36 = v71;
    v37 = v70;
    v38 = v64;
    *v64 = v69;
    v38[1] = v37;
    *(v38 + 32) = v36;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100360DA8, &qword_100288B58);
    sub_1001590B8();
    sub_100159388();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
    v68 = 1;
    sub_100159064(EnumCaseMultiPayload, v22, v23);
    _ConditionalContent<>.init(storage:)();
    v55 = v71;
    v56 = v70;
    v57 = v64;
    *v64 = v69;
    v57[1] = v56;
    *(v57 + 32) = v55;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100360DA8, &qword_100288B58);
    sub_1001590B8();
    sub_100159388();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100153570()
{
  v1 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v1);
  v3 = &v11 - v2;
  v4 = sub_1000040A8(&qword_100360D60, &qword_100288B20);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_1000040A8(&qword_100360D68, &qword_100288B28);
  sub_100152A04(v0, &v6[*(v7 + 44)]);
  v8 = enum case for DynamicTypeSize.xxLarge(_:);
  v9 = type metadata accessor for DynamicTypeSize();
  (*(*(v9 - 8) + 104))(v3, v8, v9);
  sub_10014FB84(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100009274(&qword_100360D70, &qword_100360D60, &qword_100288B20, &protocol conformance descriptor for VStack<A>);
    sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v3, &qword_100354D60, &qword_100277B30);
    return sub_100008FA0(v6, &qword_100360D60, &qword_100288B20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001537E0@<X0>(void *a1@<X8>)
{
  v80 = a1;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v82 = v1;
  v83 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  if (*v1)
  {
    v73 = *v1;
    sub_1000089B0(v5 + 48, &v107);
    v6 = v110;
    v7 = v111;
    sub_1000088DC(&v107, v110);
    (*(v7 + 8))(v170, v6, v7);
    sub_100008964(&v107);
    v8 = [objc_opt_self() mainBundle];
    v178._object = 0x80000001002A0100;
    v9._object = 0x80000001002A00E0;
    v178._countAndFlagsBits = 0xD00000000000003DLL;
    v9._countAndFlagsBits = 0xD000000000000010;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v178);

    v107 = v11;
    v79 = sub_100031770(v12, v13, v14);
    v15 = Text.init<A>(_:)();
    v17 = v16;
    LOBYTE(v7) = v18;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    LODWORD(v77) = enum case for Font.Leading.tight(_:);
    v19 = *(v3 + 104);
    v78 = v3 + 104;
    v81 = v19;
    v20 = v83;
    v19(v83);
    Font.leading(_:)();

    v21 = *(v3 + 8);
    v75 = v3 + 8;
    v76 = v21;
    v21(v20, v2);
    v22 = Text.font(_:)();
    v74 = v2;
    v24 = v23;
    v26 = v25;

    sub_1000317C4(v15, v17, v7 & 1);

    v27 = v73;
    sub_1000089B0(v73 + 48, &v107);
    v28 = v110;
    v29 = v111;
    sub_1000088DC(&v107, v110);
    (*(v29 + 96))(v28, v29);
    v30 = Text.foregroundColor(_:)();
    v89 = v31;
    v90 = v30;
    LOBYTE(v28) = v32;
    v84 = v33;
    sub_1000317C4(v22, v24, v26 & 1);

    sub_100008964(&v107);
    KeyPath = swift_getKeyPath();
    v88 = swift_getKeyPath();
    v85 = v28 & 1;
    LOBYTE(v107._countAndFlagsBits) = v28 & 1;
    LOBYTE(v98) = 0;
    v86 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_1000089B0(v27 + 48, &v107);
    v34 = v110;
    v35 = v111;
    sub_1000088DC(&v107, v110);
    v36 = type metadata accessor for CABannerConnectionClosedView(0);
    *&v98 = (*(v35 + 152))(v82 + *(v36 + 20), v34, v35);
    *(&v98 + 1) = v37;
    v38 = Text.init<A>(_:)();
    v40 = v39;
    LOBYTE(v34) = v41;
    sub_100008964(&v107);
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v42 = v83;
    v43 = v74;
    v81(v83, v77, v74);
    Font.leading(_:)();

    v76(v42, v43);
    v44 = Text.font(_:)();
    v46 = v45;
    LOBYTE(v42) = v47;

    sub_1000317C4(v38, v40, v34 & 1);

    static Color.white.getter();
    v48 = Text.foregroundColor(_:)();
    v81 = v49;
    v82 = v50;
    LOBYTE(v34) = v51;

    sub_1000317C4(v44, v46, v42 & 1);

    v52 = swift_getKeyPath();
    v83 = swift_getKeyPath();
    LOBYTE(v107._countAndFlagsBits) = v34 & 1;
    LODWORD(v74) = v34 & 1;
    LOBYTE(v98) = 0;
    v53 = swift_getKeyPath();
    LOBYTE(v44) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v157 = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v159[55] = v174;
    *&v159[71] = v175;
    *&v159[87] = v176;
    *&v159[103] = v177;
    *&v159[7] = v171;
    *&v159[23] = v172;
    *&v159[39] = v173;
    type metadata accessor for ConnectionModel(0);
    sub_10014FB84(&qword_100354F88, type metadata accessor for ConnectionModel, "\ts\n");
    v78 = EnvironmentObject.init()();
    v79 = v62;
    type metadata accessor for ConnectivityModel();
    sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
    v76 = EnvironmentObject.init()();
    v77 = v63;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v64 = EnvironmentObject.init()();
    v75 = v65;
    *&v92 = v90;
    *(&v92 + 1) = v89;
    LOBYTE(v93) = v85;
    *(&v93 + 1) = *v168;
    DWORD1(v93) = *&v168[3];
    *(&v93 + 1) = v84;
    *&v94 = KeyPath;
    *(&v94 + 1) = 2;
    LOBYTE(v95) = 0;
    *(&v95 + 1) = *v167;
    DWORD1(v95) = *&v167[3];
    *(&v95 + 1) = v88;
    LOBYTE(v96) = 0;
    *(&v96 + 1) = *v169;
    DWORD1(v96) = *&v169[3];
    *(&v96 + 1) = v86;
    *v97 = 0x3FE0000000000000;
    *&v97[72] = v164;
    *&v97[56] = v163;
    *&v97[88] = v165;
    *&v97[104] = v166;
    *&v97[8] = v160;
    *&v97[24] = v161;
    *&v97[40] = v162;
    v91[2] = v94;
    v91[3] = v95;
    v91[0] = v92;
    v91[1] = v93;
    v91[6] = *&v97[16];
    v91[7] = *&v97[32];
    v91[4] = v96;
    v91[5] = *v97;
    v91[10] = *&v97[80];
    v91[11] = *&v97[96];
    v91[8] = *&v97[48];
    v91[9] = *&v97[64];
    *&v98 = v48;
    *(&v98 + 1) = v81;
    LOBYTE(v99) = v34 & 1;
    *(&v99 + 1) = *v155;
    DWORD1(v99) = *&v155[3];
    *(&v99 + 1) = v82;
    *&v100 = v52;
    *(&v101 + 1) = *v154;
    *(&v100 + 1) = 3;
    LOBYTE(v101) = 0;
    DWORD1(v101) = *&v154[3];
    *(&v101 + 1) = v83;
    LOBYTE(v102) = 0;
    DWORD1(v102) = *&v156[3];
    *(&v102 + 1) = *v156;
    *(&v102 + 1) = v53;
    *&v103 = 0x3FE0000000000000;
    LOBYTE(v35) = v44;
    BYTE8(v103) = v44;
    HIDWORD(v103) = *&v158[3];
    *(&v103 + 9) = *v158;
    *&v104 = v55;
    *(&v104 + 1) = v57;
    *&v105 = v59;
    *(&v105 + 1) = v61;
    v106[0] = 0;
    *&v106[49] = *&v159[48];
    *&v106[33] = *&v159[32];
    *&v106[17] = *&v159[16];
    *&v106[1] = *v159;
    *&v106[112] = *&v159[111];
    *&v106[97] = *&v159[96];
    *&v106[81] = *&v159[80];
    *&v106[65] = *&v159[64];
    *(&v91[18] + 8) = v104;
    *(&v91[19] + 8) = v105;
    *(&v91[16] + 8) = v102;
    *(&v91[17] + 8) = v103;
    *(&v91[22] + 8) = *&v106[32];
    *(&v91[23] + 8) = *&v106[48];
    *(&v91[20] + 8) = *v106;
    *(&v91[21] + 8) = *&v106[16];
    *(&v91[25] + 8) = *&v106[80];
    *(&v91[26] + 8) = *&v106[96];
    *(&v91[24] + 8) = *&v106[64];
    *(&v91[15] + 8) = v101;
    *(&v91[14] + 8) = v100;
    *(&v91[13] + 8) = v99;
    *(&v91[12] + 8) = v98;
    *&v91[12] = *(&v166 + 1);
    *(&v91[27] + 1) = *&v106[112];
    sub_100006C20(&v92, &v107, &qword_100360FC8, &unk_10028DDE0);
    sub_100006C20(&v98, &v107, &qword_100360FD0, &qword_100289080);

    v66 = v78;

    v67 = v76;

    sub_100008964(v170);
    v68 = v80;
    memcpy(v80, v91, 0x1C0uLL);
    v69 = v79;
    v68[56] = v66;
    v68[57] = v69;
    v70 = v77;
    v68[58] = v67;
    v68[59] = v70;
    v71 = v75;
    v68[60] = v64;
    v68[61] = v71;

    v107._countAndFlagsBits = v48;
    v107._object = v81;
    v108 = v74;
    *v109 = *v155;
    *&v109[3] = *&v155[3];
    v110 = v82;
    v111 = v52;
    v112 = 3;
    v113 = 0;
    *v114 = *v154;
    *&v114[3] = *&v154[3];
    v115 = v83;
    v116 = 0;
    *&v117[3] = *&v156[3];
    *v117 = *v156;
    v118 = v53;
    v119 = 0x3FE0000000000000;
    v120 = v35;
    *&v121[3] = *&v158[3];
    *v121 = *v158;
    v122 = v55;
    v123 = v57;
    v124 = v59;
    v125 = v61;
    v126 = 0;
    v130 = *&v159[48];
    v129 = *&v159[32];
    v128 = *&v159[16];
    v127 = *v159;
    *&v133[15] = *&v159[111];
    *v133 = *&v159[96];
    v132 = *&v159[80];
    v131 = *&v159[64];
    sub_100008FA0(&v107, &qword_100360FD0, &qword_100289080);
    v134[0] = v90;
    v134[1] = v89;
    v135 = v85;
    *v136 = *v168;
    *&v136[3] = *&v168[3];
    v137 = v84;
    v138 = KeyPath;
    v139 = 2;
    v140 = 0;
    *v141 = *v167;
    *&v141[3] = *&v167[3];
    v142 = v88;
    v143 = 0;
    *&v144[3] = *&v169[3];
    *v144 = *v169;
    v145 = v86;
    v146 = 0x3FE0000000000000;
    v150 = v163;
    v151 = v164;
    v152 = v165;
    v153 = v166;
    v147 = v160;
    v148 = v161;
    v149 = v162;
    return sub_100008FA0(v134, &qword_100360FC8, &unk_10028DDE0);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100154440@<X0>(void *a1@<X0>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v79 = a3;
  v80 = a4;
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v86 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1[9];
    v9 = a1[10];
    sub_1000088DC(a1 + 6, v8);
    v10 = *(v9 + 8);
    swift_retain_n();
    v10(v168, v8, v9);
    v11 = [objc_opt_self() mainBundle];
    v176._object = 0x80000001002A0100;
    v12._object = 0x80000001002A00E0;
    v176._countAndFlagsBits = 0xD00000000000003DLL;
    v12._countAndFlagsBits = 0xD000000000000010;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v176);

    v105 = v14;
    v78 = sub_100031770(v15, v16, v17);
    v18 = Text.init<A>(_:)();
    v88 = v19;
    LOBYTE(v9) = v20;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v75 = enum case for Font.Leading.tight(_:);
    v21 = *(v6 + 104);
    v76 = v6 + 104;
    v77 = v21;
    v22 = v86;
    v21(v86);
    Font.leading(_:)();

    v23 = *(v6 + 8);
    v73 = v6 + 8;
    v74 = v23;
    v23(v22, v5);
    v24 = v9;
    v25 = v88;
    v26 = Text.font(_:)();
    v72 = v5;
    v27 = v26;
    v29 = v28;
    LOBYTE(v22) = v30;
    v87 = v31;

    sub_1000317C4(v18, v25, v24 & 1);

    v32 = a1[9];
    v33 = a1[10];
    sub_1000088DC(a1 + 6, v32);
    (*(v33 + 96))(v32, v33);
    v34 = Text.foregroundColor(_:)();
    v83 = v35;
    v84 = v34;
    v82 = v36;
    LOBYTE(v32) = v37;
    sub_1000317C4(v27, v29, v22 & 1);

    KeyPath = swift_getKeyPath();
    v81 = swift_getKeyPath();
    LODWORD(v87) = v32 & 1;
    LOBYTE(v105._countAndFlagsBits) = v32 & 1;
    LOBYTE(v96) = 0;
    v88 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

    v38 = a1[9];
    v39 = a1[10];
    sub_1000088DC(a1 + 6, v38);
    v105._countAndFlagsBits = (*(v39 + 168))(v79, v38, v39);
    v105._object = v40;
    v41 = Text.init<A>(_:)();
    v43 = v42;
    v45 = v44;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v46 = v86;
    v47 = v72;
    v77(v86, v75, v72);
    Font.leading(_:)();

    v74(v46, v47);
    v48 = Text.font(_:)();
    v50 = v49;
    LOBYTE(v46) = v51;

    sub_1000317C4(v41, v43, v45 & 1);

    static Color.white.getter();
    v52 = Text.foregroundColor(_:)();
    v77 = v52;
    v86 = v53;
    LOBYTE(v38) = v54;
    v56 = v55;

    sub_1000317C4(v48, v50, v46 & 1);

    v57 = swift_getKeyPath();
    v58 = swift_getKeyPath();
    LOBYTE(v105._countAndFlagsBits) = v38 & 1;
    LOBYTE(v41) = v38 & 1;
    LODWORD(v78) = v38 & 1;
    LOBYTE(v96) = 0;
    v59 = swift_getKeyPath();
    v79 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v155 = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v157[55] = v172;
    *&v157[71] = v173;
    *&v157[87] = v174;
    *&v157[103] = v175;
    *&v157[7] = v169;
    *&v157[23] = v170;
    *&v157[39] = v171;
    *&v90 = v84;
    *(&v90 + 1) = v82;
    LOBYTE(v91) = v87;
    DWORD1(v91) = *&v166[3];
    *(&v91 + 1) = *v166;
    *(&v91 + 1) = v83;
    *&v92 = KeyPath;
    *(&v92 + 1) = 2;
    LOBYTE(v93) = 0;
    *(&v93 + 1) = *v165;
    DWORD1(v93) = *&v165[3];
    *(&v93 + 1) = v81;
    LOBYTE(v94) = 0;
    *(&v94 + 1) = *v167;
    DWORD1(v94) = *&v167[3];
    *(&v94 + 1) = v88;
    *v95 = 0x3FE0000000000000;
    *&v95[104] = v164;
    *&v95[8] = v158;
    *&v95[40] = v160;
    *&v95[24] = v159;
    *&v95[88] = v163;
    *&v95[72] = v162;
    *&v95[56] = v161;
    v89[2] = v92;
    v89[3] = v93;
    v89[0] = v90;
    v89[1] = v91;
    v89[6] = *&v95[16];
    v89[7] = *&v95[32];
    v89[4] = v94;
    v89[5] = *v95;
    v89[10] = *&v95[80];
    v89[11] = *&v95[96];
    v89[8] = *&v95[48];
    v89[9] = *&v95[64];
    *&v96 = v52;
    v68 = v86;
    *(&v96 + 1) = v86;
    LOBYTE(v97) = v41;
    *(&v97 + 1) = *v153;
    DWORD1(v97) = *&v153[3];
    v69 = v56;
    *(&v97 + 1) = v56;
    *&v98 = v57;
    *(&v99 + 1) = *v152;
    *(&v98 + 1) = 3;
    LOBYTE(v99) = 0;
    DWORD1(v99) = *&v152[3];
    *(&v99 + 1) = v58;
    LOBYTE(v100) = 0;
    DWORD1(v100) = *&v154[3];
    *(&v100 + 1) = *v154;
    *(&v100 + 1) = v59;
    *&v101 = 0x3FE0000000000000;
    LOBYTE(v56) = v79;
    BYTE8(v101) = v79;
    HIDWORD(v101) = *&v156[3];
    *(&v101 + 9) = *v156;
    *&v102 = v61;
    *(&v102 + 1) = v63;
    *&v103 = v65;
    *(&v103 + 1) = v67;
    v104[0] = 0;
    *&v104[49] = *&v157[48];
    *&v104[33] = *&v157[32];
    *&v104[17] = *&v157[16];
    *&v104[1] = *v157;
    *&v104[112] = *(&v175 + 1);
    *&v104[97] = *&v157[96];
    *&v104[81] = *&v157[80];
    *&v104[65] = *&v157[64];
    *(&v89[18] + 8) = v102;
    *(&v89[19] + 8) = v103;
    *(&v89[16] + 8) = v100;
    *(&v89[17] + 8) = v101;
    *(&v89[22] + 8) = *&v104[32];
    *(&v89[23] + 8) = *&v104[48];
    *(&v89[20] + 8) = *v104;
    *(&v89[21] + 8) = *&v104[16];
    *(&v89[25] + 8) = *&v104[80];
    *(&v89[26] + 8) = *&v104[96];
    *(&v89[24] + 8) = *&v104[64];
    *(&v89[15] + 8) = v99;
    *(&v89[14] + 8) = v98;
    *(&v89[13] + 8) = v97;
    *(&v89[12] + 8) = v96;
    *&v89[12] = *(&v164 + 1);
    *(&v89[27] + 1) = *&v104[112];
    sub_100006C20(&v90, &v105, &qword_100360FC8, &unk_10028DDE0);
    sub_100006C20(&v96, &v105, &qword_100360FD0, &qword_100289080);
    sub_100008964(v168);
    memcpy(v80, v89, 0x1C0uLL);
    v105._countAndFlagsBits = v77;
    v105._object = v68;
    v106 = v78;
    *v107 = *v153;
    *&v107[3] = *&v153[3];
    v108 = v69;
    v109 = v57;
    v110 = 3;
    v111 = 0;
    *v112 = *v152;
    *&v112[3] = *&v152[3];
    v113 = v58;
    v114 = 0;
    *&v115[3] = *&v154[3];
    *v115 = *v154;
    v116 = v59;
    v117 = 0x3FE0000000000000;
    v118 = v56;
    *&v119[3] = *&v156[3];
    *v119 = *v156;
    v120 = v61;
    v121 = v63;
    v122 = v65;
    v123 = v67;
    v124 = 0;
    v128 = *&v157[48];
    v127 = *&v157[32];
    v126 = *&v157[16];
    v125 = *v157;
    *&v131[15] = *&v157[111];
    *v131 = *&v157[96];
    v130 = *&v157[80];
    v129 = *&v157[64];
    sub_100008FA0(&v105, &qword_100360FD0, &qword_100289080);
    v132[0] = v84;
    v132[1] = v82;
    v133 = v87;
    *v134 = *v166;
    *&v134[3] = *&v166[3];
    v135 = v83;
    v136 = KeyPath;
    v137 = 2;
    v138 = 0;
    *v139 = *v165;
    *&v139[3] = *&v165[3];
    v140 = v81;
    v141 = 0;
    *&v142[3] = *&v167[3];
    *v142 = *v167;
    v143 = v88;
    v144 = 0x3FE0000000000000;
    v148 = v161;
    v149 = v162;
    v150 = v163;
    v151 = v164;
    v145 = v158;
    v146 = v159;
    v147 = v160;
    return sub_100008FA0(v132, &qword_100360FC8, &unk_10028DDE0);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100154F48@<X0>(void *a1@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v50) = a3;
  v51 = type metadata accessor for Font.Leading();
  v6 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1[9];
    v10 = a1[10];
    sub_1000088DC(a1 + 6, v9);
    v11 = *(v10 + 8);

    v11(v54, v9, v10);

    v12 = a1[9];
    v13 = a1[10];
    sub_1000088DC(a1 + 6, v12);
    *&v55 = (*(v13 + 216))(v50 & 1, v12, v13);
    *(&v55 + 1) = v14;
    sub_100031770(v55, v14, v15);
    v50 = Text.init<A>(_:)();
    v17 = v16;
    v19 = v18;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v20 = v51;
    (*(v6 + 104))(v8, enum case for Font.Leading.tight(_:), v51);
    Font.leading(_:)();

    (*(v6 + 8))(v8, v20);
    LOBYTE(v20) = v19;
    v21 = v50;
    v22 = Text.font(_:)();
    v24 = v23;
    v26 = v25;
    v48 = v27;

    sub_1000317C4(v21, v17, v20 & 1);

    static Color.white.getter();
    v28 = Text.foregroundColor(_:)();
    v50 = v29;
    v51 = v28;
    LOBYTE(v17) = v30;
    v49 = v31;

    sub_1000317C4(v22, v24, v26 & 1);

    KeyPath = swift_getKeyPath();
    v33 = swift_getKeyPath();
    LOBYTE(v20) = v17 & 1;
    LOBYTE(v55) = v17 & 1;
    v52 = 0;
    v34 = swift_getKeyPath();
    LOBYTE(v13) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v52 = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    result = sub_100008964(v54);
    *&v53[55] = v58;
    *&v53[71] = v59;
    *&v53[87] = v60;
    *&v53[103] = v61;
    *&v53[7] = v55;
    *&v53[23] = v56;
    *&v53[39] = v57;
    v44 = v50;
    *a4 = v51;
    *(a4 + 8) = v44;
    *(a4 + 16) = v20;
    *(a4 + 24) = v49;
    *(a4 + 32) = KeyPath;
    *(a4 + 40) = 3;
    *(a4 + 48) = 0;
    *(a4 + 56) = v33;
    *(a4 + 64) = 0;
    *(a4 + 72) = v34;
    *(a4 + 80) = 0x3FE0000000000000;
    *(a4 + 88) = v13;
    *(a4 + 96) = v36;
    *(a4 + 104) = v38;
    *(a4 + 112) = v40;
    *(a4 + 120) = v42;
    *(a4 + 128) = 0;
    v45 = *&v53[80];
    *(a4 + 193) = *&v53[64];
    *(a4 + 209) = v45;
    *(a4 + 225) = *&v53[96];
    *(a4 + 240) = *&v53[111];
    v46 = *&v53[16];
    *(a4 + 129) = *v53;
    *(a4 + 145) = v46;
    v47 = *&v53[48];
    *(a4 + 161) = *&v53[32];
    *(a4 + 177) = v47;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001553B8@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v52 = type metadata accessor for Font.Leading();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1[9];
    v9 = a1[10];
    sub_1000088DC(a1 + 6, v8);
    (*(v9 + 8))(v55, v8, v9);
    v10 = [objc_opt_self() mainBundle];
    v63._object = 0x8000000100296DF0;
    v11._object = 0x8000000100296DC0;
    v63._countAndFlagsBits = 0xD000000000000067;
    v11._countAndFlagsBits = 0xD00000000000002FLL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v63);

    v56 = v13;
    sub_100031770(v14, v15, v16);
    v51 = Text.init<A>(_:)();
    v18 = v17;
    LOBYTE(v8) = v19;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v20 = v52;
    (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v52);
    Font.leading(_:)();

    (*(v5 + 8))(v7, v20);
    LOBYTE(v20) = v8;
    v21 = v51;
    v22 = Text.font(_:)();
    v24 = v23;
    v26 = v25;
    v49 = v27;

    sub_1000317C4(v21, v18, v20 & 1);

    static Color.white.getter();
    v28 = Text.foregroundColor(_:)();
    v51 = v29;
    v52 = v28;
    LOBYTE(v18) = v30;
    v50 = v31;

    sub_1000317C4(v22, v24, v26 & 1);

    KeyPath = swift_getKeyPath();
    v33 = swift_getKeyPath();
    LOBYTE(v20) = v18 & 1;
    LOBYTE(v56._countAndFlagsBits) = v18 & 1;
    v53 = 0;
    v34 = swift_getKeyPath();
    v35 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v53 = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    result = sub_100008964(v55);
    *&v54[55] = v59;
    *&v54[71] = v60;
    *&v54[87] = v61;
    *&v54[103] = v62;
    *&v54[7] = v56;
    *&v54[23] = v57;
    *&v54[39] = v58;
    v45 = v51;
    *a3 = v52;
    *(a3 + 8) = v45;
    *(a3 + 16) = v20;
    *(a3 + 24) = v50;
    *(a3 + 32) = KeyPath;
    *(a3 + 40) = 3;
    *(a3 + 48) = 0;
    *(a3 + 56) = v33;
    *(a3 + 64) = 0;
    *(a3 + 72) = v34;
    *(a3 + 80) = 0x3FE0000000000000;
    *(a3 + 88) = v35;
    *(a3 + 96) = v37;
    *(a3 + 104) = v39;
    *(a3 + 112) = v41;
    *(a3 + 120) = v43;
    *(a3 + 128) = 0;
    v46 = *&v54[80];
    *(a3 + 193) = *&v54[64];
    *(a3 + 209) = v46;
    *(a3 + 225) = *&v54[96];
    *(a3 + 240) = *&v54[111];
    v47 = *&v54[16];
    *(a3 + 129) = *v54;
    *(a3 + 145) = v47;
    v48 = *&v54[48];
    *(a3 + 161) = *&v54[32];
    *(a3 + 177) = v48;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10015585C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  v71 = a2;
  v8 = type metadata accessor for Font.Leading();
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = a3[9];
    v12 = a3[10];
    sub_1000088DC(a3 + 6, v11);
    v13 = *(v12 + 8);

    v13(v127, v11, v12);
    if (a1)
    {
      v72 = a1;

      v14 = sub_1001DE5B8();
      v16 = v15;

      v101 = v14;
      v102 = v16;
      sub_100031770(v17, v18, v19);
      v20 = Text.init<A>(_:)();
      v70 = v21;
      v71 = v20;
      v23 = v22;
      static Font.footnote.getter();
      static Font.Weight.medium.getter();
      Font.weight(_:)();

      v25 = v73;
      v24 = v74;
      (*(v73 + 104))(v10, enum case for Font.Leading.tight(_:), v74);
      Font.leading(_:)();

      (*(v25 + 8))(v10, v24);
      LOBYTE(v24) = v23;
      v27 = v70;
      v26 = v71;
      v28 = Text.font(_:)();
      v68 = v30;
      v69 = v29;
      v32 = v31;

      sub_1000317C4(v26, v27, v24 & 1);

      v33 = a3[9];
      v34 = a3[10];
      sub_1000088DC(a3 + 6, v33);
      (*(v34 + 128))(v72, v33, v34);

      v35 = v69;
      v64 = Text.foregroundColor(_:)();
      v73 = v36;
      v74 = v37;
      v39 = v38;
      sub_1000317C4(v28, v35, v32 & 1);

      KeyPath = swift_getKeyPath();
      v70 = KeyPath;
      v72 = swift_getKeyPath();
      LOBYTE(v33) = v39 & 1;
      v125 = v39 & 1;
      LODWORD(v69) = v39 & 1;
      v123 = 0;
      v62 = swift_getKeyPath();
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      type metadata accessor for GuidanceMessagesModel();
      sub_10014FB84(&qword_100357820, type metadata accessor for GuidanceMessagesModel, "\ts\n");
      v66 = EnvironmentObject.init()();
      v71 = v41;
      type metadata accessor for UIMetrics();
      sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      v42 = EnvironmentObject.init()();
      v68 = v43;
      type metadata accessor for ConnectionModel(0);
      sub_10014FB84(&qword_100354F88, type metadata accessor for ConnectionModel, "\ts\n");
      v44 = EnvironmentObject.init()();
      v67 = v45;
      type metadata accessor for ConnectivityModel();
      sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
      v46 = EnvironmentObject.init()();
      v65 = v47;
      v48 = EnvironmentObject.init()();
      v63 = v49;
      v50 = v64;
      *&v82 = v64;
      *(&v82 + 1) = v73;
      LOBYTE(v83) = v33;
      *(&v83 + 1) = *v124;
      DWORD1(v83) = *&v124[3];
      *(&v83 + 1) = v74;
      *&v84 = KeyPath;
      *(&v84 + 1) = 2;
      LOBYTE(v85) = 0;
      *(&v85 + 1) = *v122;
      DWORD1(v85) = *&v122[3];
      *(&v85 + 1) = v72;
      LOBYTE(v86) = 0;
      *(&v86 + 1) = *v126;
      DWORD1(v86) = *&v126[3];
      v51 = v62;
      *(&v86 + 1) = v62;
      *v87 = 0x3FE0000000000000;
      *&v87[72] = v79;
      *&v87[56] = v78;
      *&v87[88] = v80;
      *&v87[104] = v81;
      *&v87[8] = v75;
      *&v87[24] = v76;
      *&v87[40] = v77;
      v88 = v82;
      v91 = v85;
      v92 = v86;
      v89 = v83;
      v90 = v84;
      v95 = *&v87[32];
      v96 = *&v87[48];
      v93 = *v87;
      v94 = *&v87[16];
      v100 = *(&v81 + 1);
      v98 = *&v87[80];
      v99 = *&v87[96];
      v97 = *&v87[64];
      sub_100006C20(&v82, &v101, &qword_100360FC8, &unk_10028DDE0);

      v52 = v66;

      sub_100008964(v127);
      v53 = v99;
      *(a5 + 160) = v98;
      *(a5 + 176) = v53;
      v54 = v100;
      v55 = v95;
      *(a5 + 96) = v94;
      *(a5 + 112) = v55;
      v56 = v97;
      *(a5 + 128) = v96;
      *(a5 + 144) = v56;
      v57 = v91;
      *(a5 + 32) = v90;
      *(a5 + 48) = v57;
      v58 = v93;
      *(a5 + 64) = v92;
      *(a5 + 80) = v58;
      v59 = v89;
      *a5 = v88;
      *(a5 + 16) = v59;
      *(a5 + 192) = v54;
      *(a5 + 200) = v52;
      *(a5 + 208) = v71;
      *(a5 + 216) = v42;
      v60 = v67;
      *(a5 + 224) = v68;
      *(a5 + 232) = v44;
      *(a5 + 240) = v60;
      *(a5 + 248) = v46;
      *(a5 + 256) = v65;
      *(a5 + 264) = v48;
      *(a5 + 272) = v63;

      v118 = v78;
      v119 = v79;
      v120 = v80;
      v121 = v81;
      v115 = v75;
      v116 = v76;
      v101 = v50;
      v102 = v73;
      v103 = v69;
      *v104 = *v124;
      *&v104[3] = *&v124[3];
      v105 = v74;
      v106 = v70;
      v107 = 2;
      v108 = 0;
      *v109 = *v122;
      *&v109[3] = *&v122[3];
      v110 = v72;
      v111 = 0;
      *&v112[3] = *&v126[3];
      *v112 = *v126;
      v113 = v51;
      v114 = 0x3FE0000000000000;
      v117 = v77;
      return sub_100008FA0(&v101, &qword_100360FC8, &unk_10028DDE0);
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for ConnectivityModel();
  sub_10014FB84(&qword_100354F78, type metadata accessor for ConnectivityModel, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100156084@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_1000040A8(&qword_100361058, &qword_1002892C0);
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v47 = (&v47 - v4);
  v5 = sub_1000040A8(&qword_100361060, &unk_1002892C8);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v49 = &v47 - v6;
  v7 = sub_1000040A8(&qword_100354FD8, &qword_100277EF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for TransmissionProgress(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000040A8(&qword_100361068, &qword_1002892D8);
  __chkstk_darwin(v13 - 8);
  v52 = &v47 - v14;
  v15 = v1[4];
  if (v15)
  {
    v16 = v15[9];
    v17 = v15[10];
    sub_1000088DC(v15 + 6, v16);
    v18 = *(v17 + 8);

    v18(v59, v16, v17);
    if (*v1)
    {

      sub_1001DDADC(v9);

      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_100008FA0(v9, &qword_100354FD8, &qword_100277EF0);
        v19 = v52;
        (*(v53 + 56))(v52, 1, 1, v54);
LABEL_12:
        sub_10000CF4C(v19, v55, &qword_100361068, &qword_1002892D8);
        return sub_100008964(v59);
      }

      v20 = v48;
      sub_10014FBCC(v9, v48, type metadata accessor for TransmissionProgress);
      sub_1000089B0((v15 + 6), v56);

      v21 = v57;
      v22 = v58;
      sub_1000088DC(v56, v57);
      v23 = v1[2];
      if (v23)
      {
        v24 = (*(v22 + 144))(v20, *(*(v23 + 48) + 136), v21, v22);
        v26 = v25;
        sub_100008964(v56);
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v28 = static HorizontalAlignment.leading.getter();
          v29 = v47;
          *v47 = v28;
          *(v29 + 8) = 0;
          *(v29 + 16) = 0;
          v30 = sub_1000040A8(&qword_100361070, &qword_1002892E0);
          sub_1001566B0(v2, v20, v59, v24, v26, (v29 + *(v30 + 44)));

          v31 = static Edge.Set.top.getter();
          EdgeInsets.init(_all:)();
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v40 = v29 + *(sub_1000040A8(&qword_100361078, &qword_1002892E8) + 36);
          *v40 = v31;
          *(v40 + 8) = v33;
          *(v40 + 16) = v35;
          *(v40 + 24) = v37;
          *(v40 + 32) = v39;
          *(v40 + 40) = 0;
          v41 = v51;
          *(v29 + *(v51 + 36)) = 256;
          v42 = v49;
          sub_10000CF4C(v29, v49, &qword_100361058, &qword_1002892C0);
          v43 = 0;
        }

        else
        {

          v43 = 1;
          v41 = v51;
          v42 = v49;
        }

        (*(v50 + 56))(v42, v43, 1, v41);
        v19 = v52;
        sub_10000CF4C(v42, v52, &qword_100361060, &unk_1002892C8);
        (*(v53 + 56))(v19, 0, 1, v54);
        sub_100158C50(v20, type metadata accessor for TransmissionProgress);
        goto LABEL_12;
      }

      type metadata accessor for ConnectivityModel();
      v45 = &qword_100354F78;
      v46 = type metadata accessor for ConnectivityModel;
    }

    else
    {
      type metadata accessor for ConnectionModel(0);
      v45 = &qword_100354F88;
      v46 = type metadata accessor for ConnectionModel;
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    v45 = &qword_100354D40;
    v46 = type metadata accessor for UIMetrics;
  }

  sub_10014FB84(v45, v46, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void *sub_1001566B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *&v186 = a4;
  *(&v186 + 1) = a5;
  v174 = a2;
  v190 = a6;
  v184 = sub_1000040A8(&qword_100361080, &unk_1002892F0);
  __chkstk_darwin(v184);
  v180 = &v172 - v8;
  v9 = sub_1000040A8(&qword_100354FA0, &unk_1002851D0);
  v175 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v172 - v10;
  v12 = sub_1000040A8(&qword_10035E908, &unk_100289300);
  v178 = *(v12 - 8);
  __chkstk_darwin(v12);
  v177 = &v172 - v13;
  v176 = sub_1000040A8(&qword_10035E910, &qword_1002851E0);
  __chkstk_darwin(v176);
  v179 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v172 - v16;
  __chkstk_darwin(v18);
  v185 = &v172 - v19;
  v187 = sub_1000040A8(&qword_100361088, &qword_100289310);
  __chkstk_darwin(v187);
  v21 = &v172 - v20;
  v181 = sub_1000040A8(&qword_100361090, &qword_100289318);
  __chkstk_darwin(v181);
  v182 = (&v172 - v22);
  v188 = sub_1000040A8(&qword_100361098, &qword_100289320);
  __chkstk_darwin(v188);
  v183 = &v172 - v23;
  v24 = type metadata accessor for Font.Leading();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v30 = &v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a1[2];
  if (!v32)
  {
    type metadata accessor for ConnectivityModel();
    v170 = &qword_100354F78;
    v171 = type metadata accessor for ConnectivityModel;
    goto LABEL_10;
  }

  v33 = 1 << *(*(v32 + 48) + 136);
  v189 = v21;
  if ((v33 & 0x1D8) != 0)
  {
    v215 = v186;
    v34 = v26;
    v35 = v30;
    sub_100031770(v26, v27, v28);

    v36 = Text.init<A>(_:)();
    v38 = v37;
    v40 = v39;
    *(&v186 + 1) = v41;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    (*(v25 + 104))(v35, enum case for Font.Leading.tight(_:), v34);
    Font.leading(_:)();

    (*(v25 + 8))(v35, v34);
    v42 = Text.font(_:)();
    v44 = v43;
    v46 = v45;

    sub_1000317C4(v36, v38, v40 & 1);

    v47 = [objc_opt_self() secondaryLabelColor];
    Color.init(_:)();
    v48 = Text.foregroundColor(_:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;

    sub_1000317C4(v42, v44, v46 & 1);

    KeyPath = swift_getKeyPath();
    v56 = swift_getKeyPath();
    LOBYTE(v215) = v52 & 1;
    LOBYTE(v213[0]) = 0;
    v57 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v215 = v48;
    *(&v215 + 1) = v50;
    LOBYTE(v216) = v52 & 1;
    *(&v216 + 1) = v54;
    *&v217 = KeyPath;
    *(&v217 + 1) = 1;
    LOBYTE(v218) = 0;
    *(&v218 + 1) = v56;
    LOBYTE(v219) = 0;
    *(&v219 + 1) = v57;
    *&v220 = 0x3FE0000000000000;
    WORD4(v222[1]) = 256;
    v58 = v222[0];
    v59 = v182;
    v182[6] = v221;
    v59[7] = v58;
    *(v59 + 122) = *(v222 + 10);
    v60 = v218;
    v59[2] = v217;
    v59[3] = v60;
    v61 = v220;
    v59[4] = v219;
    v59[5] = v61;
    v62 = v216;
    *v59 = v215;
    v59[1] = v62;
    swift_storeEnumTagMultiPayload();
    sub_100006C20(&v215, v213, &qword_1003610B0, &qword_100289338);
    sub_1000040A8(&qword_1003610B0, &qword_100289338);
    sub_100009274(&qword_1003610B8, &qword_100361080, &unk_1002892F0, &protocol conformance descriptor for TupleView<A>);
    sub_10015A674();
    v63 = v183;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v63, v189, &qword_100361098, &qword_100289320);
    swift_storeEnumTagMultiPayload();
    sub_10015A78C();
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(&v215, &qword_1003610B0, &qword_100289338);
    v64 = v63;
    v65 = &qword_100361098;
    v66 = &qword_100289320;
    return sub_100008FA0(v64, v65, v66);
  }

  if ((v33 & 0x203) != 0)
  {
    v172 = v30;
    v173 = v26;
    v67 = type metadata accessor for TransmissionProgress(0);
    *&v215 = *(v174 + *(v67 + 28));
    BYTE8(v215) = 0;
    *&v213[0] = 0x4059000000000000;
    sub_100108848(v67, v68, v69);
    ProgressView.init<A>(value:total:)();
    v70 = a3[3];
    v71 = a3[4];
    v72 = sub_1000088DC(a3, v70);
    *(&v216 + 1) = v70;
    *&v217 = *(v71 + 8);
    v73 = sub_10007E56C(&v215);
    (*(*(v70 - 8) + 16))(v73, v72, v70);
    v74 = sub_100009274(&qword_100355088, &qword_100354FA0, &unk_1002851D0, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10010889C(v74, v75, v76);
    v77 = v177;
    View.progressViewStyle<A>(_:)();
    sub_1001088F0(&v215);
    (*(v175 + 8))(v11, v9);
    v79 = a3[3];
    v78 = a3[4];
    sub_1000088DC(a3, v79);
    (*(*(v78 + 8) + 8))(v79);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v178 + 32))(v17, v77, v12);
    v80 = &v17[*(v176 + 36)];
    v81 = v223[7];
    *(v80 + 4) = v223[6];
    *(v80 + 5) = v81;
    *(v80 + 6) = v223[8];
    v82 = v223[3];
    *v80 = v223[2];
    *(v80 + 1) = v82;
    v83 = v223[5];
    *(v80 + 2) = v223[4];
    *(v80 + 3) = v83;
    v84 = sub_10000CF4C(v17, v185, &qword_10035E910, &qword_1002851E0);
    v215 = v186;
    sub_100031770(v84, v85, v86);

    v87 = Text.init<A>(_:)();
    v89 = v88;
    LOBYTE(v71) = v90;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v92 = v172;
    v91 = v173;
    (*(v25 + 104))(v172, enum case for Font.Leading.tight(_:), v173);
    Font.leading(_:)();

    (*(v25 + 8))(v92, v91);
    v93 = Text.font(_:)();
    v95 = v94;
    LOBYTE(v92) = v96;

    sub_1000317C4(v87, v89, v71 & 1);

    v97 = [objc_opt_self() secondaryLabelColor];
    Color.init(_:)();
    v98 = Text.foregroundColor(_:)();
    v100 = v99;
    LOBYTE(v71) = v101;
    v103 = v102;

    sub_1000317C4(v93, v95, v92 & 1);

    v104 = swift_getKeyPath();
    v105 = swift_getKeyPath();
    LOBYTE(v215) = v71 & 1;
    LOBYTE(v213[0]) = 0;
    v106 = swift_getKeyPath();
    v107 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v115 = v114;
    LOBYTE(v215) = 0;
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v203[7] = v223[9];
    *&v203[23] = v223[10];
    *&v203[39] = v224;
    *&v204 = v98;
    *(&v204 + 1) = v100;
    LOBYTE(v205) = v71 & 1;
    *(&v205 + 1) = v103;
    *&v206 = v104;
    *(&v206 + 1) = 1;
    LOBYTE(v207) = 0;
    *(&v207 + 1) = v105;
    LOBYTE(v208) = 0;
    *(&v208 + 1) = v106;
    *&v209 = 0x3FE0000000000000;
    BYTE8(v209) = v107;
    *&v210 = v109;
    *(&v210 + 1) = v111;
    *&v211 = v113;
    *(&v211 + 1) = v115;
    LOBYTE(v212[0]) = 0;
    *(v212 + 1) = *v203;
    *(&v212[1] + 1) = *&v203[16];
    *(&v212[2] + 1) = *&v203[32];
    *&v212[3] = *(&v224 + 1);
    WORD4(v212[3]) = 256;
    v116 = v179;
    sub_100006C20(v185, v179, &qword_10035E910, &qword_1002851E0);
    v200 = v212[0];
    v201 = v212[1];
    v202[0] = v212[2];
    *(v202 + 10) = *(&v212[2] + 10);
    v196 = v208;
    v197 = v209;
    v198 = v210;
    v199 = v211;
    v192 = v204;
    v193 = v205;
    v194 = v206;
    v195 = v207;
    v117 = v180;
    sub_100006C20(v116, v180, &qword_10035E910, &qword_1002851E0);
    v118 = (v117 + *(sub_1000040A8(&qword_1003610A0, &qword_100289328) + 48));
    v119 = v200;
    v213[8] = v200;
    v213[9] = v201;
    v120 = v202[0];
    v214[0] = v202[0];
    *(v214 + 10) = *(v202 + 10);
    v121 = v196;
    v122 = v196;
    v213[4] = v196;
    v213[5] = v197;
    v123 = v198;
    v124 = v198;
    v213[6] = v198;
    v213[7] = v199;
    v125 = v192;
    v126 = v192;
    v213[0] = v192;
    v213[1] = v193;
    v213[2] = v194;
    v213[3] = v195;
    v127 = v201;
    v128 = v201;
    v118[8] = v200;
    v118[9] = v127;
    v118[10] = v120;
    *(v118 + 170) = *(v202 + 10);
    v129 = v197;
    v130 = v197;
    v118[4] = v121;
    v118[5] = v129;
    v131 = v199;
    v132 = v199;
    v118[6] = v123;
    v118[7] = v131;
    v133 = v193;
    v134 = v194;
    v135 = v193;
    v136 = v194;
    *v118 = v125;
    v118[1] = v133;
    v137 = v195;
    v138 = v195;
    v118[2] = v134;
    v118[3] = v137;
    v222[1] = v119;
    v222[2] = v128;
    v223[0] = v202[0];
    *(v223 + 10) = *(v202 + 10);
    v219 = v122;
    v220 = v130;
    v221 = v124;
    v222[0] = v132;
    v215 = v126;
    v216 = v135;
    v217 = v136;
    v218 = v138;
    sub_100006C20(&v204, v191, &qword_1003610A8, &qword_100289330);
    sub_100006C20(v213, v191, &qword_1003610A8, &qword_100289330);
    sub_100008FA0(&v215, &qword_1003610A8, &qword_100289330);
    sub_100008FA0(v116, &qword_10035E910, &qword_1002851E0);
    sub_100006C20(v117, v182, &qword_100361080, &unk_1002892F0);
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_1003610B0, &qword_100289338);
    sub_100009274(&qword_1003610B8, &qword_100361080, &unk_1002892F0, &protocol conformance descriptor for TupleView<A>);
    sub_10015A674();
    v139 = v183;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v139, v189, &qword_100361098, &qword_100289320);
    swift_storeEnumTagMultiPayload();
    sub_10015A78C();
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(&v204, &qword_1003610A8, &qword_100289330);
    sub_100008FA0(v139, &qword_100361098, &qword_100289320);
    sub_100008FA0(v117, &qword_100361080, &unk_1002892F0);
    v64 = v185;
    v65 = &qword_10035E910;
    v66 = &qword_1002851E0;
    return sub_100008FA0(v64, v65, v66);
  }

  v215 = v186;
  sub_100031770(v26, v27, v28);

  v141 = Text.init<A>(_:)();
  v143 = v142;
  v145 = v144;
  v147 = a3[3];
  v146 = a3[4];
  sub_1000088DC(a3, v147);
  (*(*(v146 + 8) + 32))(v147);
  *&v186 = Text.font(_:)();
  *(&v186 + 1) = v148;
  v150 = v149;
  v152 = v151;

  sub_1000317C4(v141, v143, v145 & 1);

  v153 = v31[4];
  if (!v153)
  {
    while (1)
    {
      type metadata accessor for UIMetrics();
      v170 = &qword_100354D40;
      v171 = type metadata accessor for UIMetrics;
LABEL_10:
      sub_10014FB84(v170, v171, "\ts\n");
      EnvironmentObject.error()();
      __break(1u);
    }
  }

  v154 = v153[9];
  v155 = v153[10];
  sub_1000088DC(v153 + 6, v154);
  (*(v155 + 128))(v32, v154, v155);

  v156 = v186;
  v157 = Text.foregroundColor(_:)();
  v159 = v158;
  v161 = v160;
  v163 = v162;
  sub_1000317C4(v156, v150, v152 & 1);

  v164 = swift_getKeyPath();
  v165 = swift_getKeyPath();
  v166 = v161 & 1;
  LOBYTE(v213[0]) = v161 & 1;
  LOBYTE(v204) = 0;
  v167 = swift_getKeyPath();
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v168 = v216;
  v169 = v189;
  *(v189 + 88) = v215;
  *v169 = v157;
  *(v169 + 8) = v159;
  *(v169 + 16) = v166;
  *(v169 + 24) = v163;
  *(v169 + 32) = v164;
  *(v169 + 40) = 1;
  *(v169 + 48) = 0;
  *(v169 + 56) = v165;
  *(v169 + 64) = 0;
  *(v169 + 72) = v167;
  *(v169 + 80) = 0x3FE0000000000000;
  *(v169 + 104) = v168;
  *(v169 + 120) = v217;
  *(v169 + 136) = 256;
  swift_storeEnumTagMultiPayload();
  sub_1000040A8(&qword_1003610B0, &qword_100289338);
  sub_10015A78C();
  sub_10015A674();
  return _ConditionalContent<>.init(storage:)();
}

double sub_10015795C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100151360(v2, v6, type metadata accessor for ConnectionAssistantBanner.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x19) != 0)
  {
    type metadata accessor for AppEvents();
    sub_10014FB84(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    v10 = EnvironmentObject.init()();
    v12 = v11;
    type metadata accessor for StewieModel(0);
    sub_10014FB84(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
    v13 = EnvironmentObject.init()();
    v15 = v14;
    type metadata accessor for UIMetrics();
    sub_10014FB84(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    EnumCaseMultiPayload = EnvironmentObject.init()();
    *&v20 = v10;
    *(&v20 + 1) = v12;
    *&v21 = v13;
    *(&v21 + 1) = v15;
    *&v22 = EnumCaseMultiPayload;
    *(&v22 + 1) = v8;
    v23 = 0;
  }

  else
  {
    if (((1 << EnumCaseMultiPayload) & 0x24) == 0)
    {
      EnumCaseMultiPayload = sub_100158C50(v6, type metadata accessor for ConnectionClosed);
    }

    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v23 = 1;
  }

  sub_100158FF0(EnumCaseMultiPayload, v8, v9);
  _ConditionalContent<>.init(storage:)();
  result = *&v24;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  *a1 = v24;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v19;
  return result;
}

uint64_t sub_100157BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v61 = a1;
  v4 = type metadata accessor for KeyboardShortcut();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v55 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for BorderlessButtonStyle();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000040A8(&qword_100360F88, &qword_100288FC0);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v9 = &v46 - v8;
  v53 = sub_1000040A8(&qword_100360F90, &qword_100288FC8);
  v49 = *(v53 - 8);
  __chkstk_darwin(v53);
  v11 = &v46 - v10;
  v12 = sub_1000040A8(&qword_100360F98, &qword_100288FD0);
  v56 = *(v12 - 8);
  v57 = v12;
  __chkstk_darwin(v12);
  v54 = &v46 - v13;
  v60 = sub_1000040A8(&qword_100360FA0, &qword_100288FD8);
  v14 = *(v60 - 8);
  __chkstk_darwin(v60);
  v52 = &v46 - v15;
  v16 = sub_1000040A8(&qword_100360FA8, &qword_100288FE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v46 - v17;
  v19 = *(v2 + 32);
  if (!v19)
  {
    type metadata accessor for UIMetrics();
    v44 = &qword_100354D40;
    v45 = type metadata accessor for UIMetrics;
LABEL_11:
    sub_10014FB84(v44, v45, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v21 = v19[9];
  v20 = v19[10];
  sub_1000088DC(v19 + 6, v21);
  (*(v20 + 8))(v66, v21, v20);
  v22 = *(v2 + 16);
  if (!v22)
  {
    type metadata accessor for StewieModel(0);
    v44 = &qword_1003561B8;
    v45 = type metadata accessor for StewieModel;
    goto LABEL_11;
  }

  if (*(v22 + 64) && (v23 = *(v22 + 121), (sub_100071A54() & 1) != 0) && (v23 & 1) != 0)
  {
    v67 = *v3;
    v24 = swift_allocObject();
    v46 = &v46;
    v25 = v3[1];
    v24[1] = *v3;
    v24[2] = v25;
    v24[3] = v3[2];
    __chkstk_darwin(v24);
    v26 = sub_100006C20(&v67, &v62, &qword_100357580, &unk_10027AEE0);
    sub_10015A058(v26, v27, v28);

    Button.init(action:label:)();
    BorderlessButtonStyle.init()();
    v29 = sub_100009274(&qword_100360FB8, &qword_100360F88, &qword_100288FC0, &protocol conformance descriptor for Button<A>);
    v30 = sub_10014FB84(&qword_100360FC0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v31 = v48;
    v32 = v51;
    View.buttonStyle<A>(_:)();
    (*(v50 + 8))(v7, v32);
    (*(v47 + 8))(v9, v31);
    v33 = v55;
    static KeyboardShortcut.defaultAction.getter();
    v62 = v31;
    v63 = v32;
    v64 = v29;
    v65 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v54;
    v36 = v53;
    View.keyboardShortcut(_:)();
    (*(v58 + 8))(v33, v59);
    (*(v49 + 8))(v11, v36);
    LocalizedStringKey.init(stringLiteral:)();
    v37 = Text.init(_:tableName:bundle:comment:)();
    v39 = v38;
    LOBYTE(v33) = v40;
    v62 = v36;
    v63 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v41 = v52;
    v42 = v57;
    View.accessibility(label:)();
    sub_1000317C4(v37, v39, v33 & 1);

    (*(v56 + 8))(v35, v42);
    sub_10000CF4C(v41, v18, &qword_100360FA0, &qword_100288FD8);
    (*(v14 + 56))(v18, 0, 1, v60);
  }

  else
  {
    (*(v14 + 56))(v18, 1, 1, v60);
  }

  sub_10000CF4C(v18, v61, &qword_100360FA8, &qword_100288FE0);
  return sub_100008964(v66);
}

uint64_t sub_1001583F8(uint64_t *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10014FB84(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10015855C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_1000040A8(&qword_100361048, &unk_1002892A0);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v50 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (&v46 - v5);
  v7 = Image.init(systemName:)();
  v8 = (v6 + *(sub_1000040A8(&qword_1003584F8, &qword_10028C460) + 36));
  v9 = v6;
  v10 = *(sub_1000040A8(&qword_100358500, &qword_10027CE10) + 28);
  v11 = enum case for Image.Scale.large(_:);
  v12 = type metadata accessor for Image.Scale();
  (*(*(v12 - 8) + 104))(v8 + v10, v11, v12);
  *v8 = swift_getKeyPath();
  v48 = v9;
  *v9 = v7;
  static Font.title.getter();
  static Font.Weight.semibold.getter();
  v13 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v15 = (v9 + *(sub_1000040A8(&qword_100358508, &qword_1002892B0) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = static Color.green.getter();
  v17 = static Color.white.getter();
  v18 = (v9 + *(v2 + 44));
  *v18 = v16;
  v18[1] = v17;
  LocalizedStringKey.init(stringLiteral:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  LOBYTE(v13) = v22;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  sub_1000317C4(v19, v21, v13 & 1);

  static Color.white.getter();
  v28 = Text.foregroundColor(_:)();
  v47 = v29;
  LOBYTE(v21) = v30;
  v32 = v31;

  sub_1000317C4(v23, v25, v27 & 1);

  v33 = swift_getKeyPath();
  v46 = v33;
  v34 = swift_getKeyPath();
  v35 = v21 & 1;
  LOBYTE(v60[0]) = v21 & 1;
  LOBYTE(v54) = 0;
  v36 = swift_getKeyPath();
  v37 = v48;
  v38 = v50;
  sub_100006C20(v48, v50, &qword_100361048, &unk_1002892A0);
  v39 = v38;
  v40 = v49;
  sub_100006C20(v39, v49, &qword_100361048, &unk_1002892A0);
  v41 = v40 + *(sub_1000040A8(&qword_100361050, &qword_1002892B8) + 48);
  *&v54 = v28;
  v42 = v47;
  *(&v54 + 1) = v47;
  LOBYTE(v55) = v35;
  *(&v55 + 1) = *v52;
  DWORD1(v55) = *&v52[3];
  *(&v55 + 1) = v32;
  *&v56 = v33;
  *(&v56 + 1) = 1;
  LOBYTE(v57) = 0;
  *(&v57 + 1) = *v51;
  DWORD1(v57) = *&v51[3];
  *(&v57 + 1) = v34;
  LOBYTE(v58) = 1;
  *(&v58 + 1) = *v53;
  DWORD1(v58) = *&v53[3];
  *(&v58 + 1) = v36;
  v59 = 0x3FE0000000000000;
  *(v41 + 80) = 0x3FE0000000000000;
  v43 = v57;
  *(v41 + 32) = v56;
  *(v41 + 48) = v43;
  v44 = v55;
  *v41 = v54;
  *(v41 + 16) = v44;
  *(v41 + 64) = v58;
  sub_100006C20(&v54, v60, &qword_100361018, qword_10028E420);
  sub_100008FA0(v37, &qword_100361048, &unk_1002892A0);
  v60[0] = v28;
  v60[1] = v42;
  v61 = v35;
  *v62 = *v52;
  *&v62[3] = *&v52[3];
  v63 = v32;
  v64 = v46;
  v65 = 1;
  v66 = 0;
  *v67 = *v51;
  *&v67[3] = *&v51[3];
  v68 = v34;
  v69 = 1;
  *&v70[3] = *&v53[3];
  *v70 = *v53;
  v71 = v36;
  v72 = 0x3FE0000000000000;
  sub_100008FA0(v60, &qword_100361018, qword_10028E420);
  return sub_100008FA0(v50, &qword_100361048, &unk_1002892A0);
}

uint64_t sub_100158A9C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_1000040A8(&qword_100361040, &qword_100289298);
  return sub_10015855C(a2 + *(v3 + 44));
}

uint64_t sub_100158B14(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.imageScale.setter();
}

unint64_t sub_100158BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100360B68;
  if (!qword_100360B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360B68);
  }

  return result;
}

uint64_t sub_100158C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100158D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100158D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100158E28(uint64_t a1)
{
  result = type metadata accessor for ConnectionAssistantBanner.Mode(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100158F04()
{
  sub_100008CF0(&qword_100360AF8, &qword_100288930);
  sub_100009274(&qword_100360B40, &qword_100360AF8, &qword_100288930, &protocol conformance descriptor for ScrollView<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100158FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100360D58;
  if (!qword_100360D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360D58);
  }

  return result;
}

unint64_t sub_100159064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100360DA0;
  if (!qword_100360DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DA0);
  }

  return result;
}

unint64_t sub_1001590B8()
{
  result = qword_100360DB0;
  if (!qword_100360DB0)
  {
    sub_100008CF0(&qword_100360D98, &qword_100288B50);
    sub_100159144();
    sub_100159254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DB0);
  }

  return result;
}

unint64_t sub_100159144()
{
  result = qword_100360DB8;
  if (!qword_100360DB8)
  {
    v1 = sub_100008CF0(&qword_100360D90, &qword_100288B48);
    sub_100159200(v1, v2, v3);
    sub_10014FB84(&qword_100360DC8, type metadata accessor for CABannerConnectionClosedView, &unk_100288E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DB8);
  }

  return result;
}

unint64_t sub_100159200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100360DC0;
  if (!qword_100360DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DC0);
  }

  return result;
}

unint64_t sub_100159254()
{
  result = qword_100360DD0;
  if (!qword_100360DD0)
  {
    v1 = sub_100008CF0(&qword_100360DD8, &qword_100288B60);
    v6 = sub_1001592E0(v1, v2, v3);
    sub_100159334(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DD0);
  }

  return result;
}

unint64_t sub_1001592E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100360DE0;
  if (!qword_100360DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DE0);
  }

  return result;
}

unint64_t sub_100159334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100360DE8;
  if (!qword_100360DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DE8);
  }

  return result;
}

unint64_t sub_100159388()
{
  result = qword_100360DF0;
  if (!qword_100360DF0)
  {
    v1 = sub_100008CF0(&qword_100360DA8, &qword_100288B58);
    sub_100159064(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360DF0);
  }

  return result;
}

unint64_t sub_100159420()
{
  result = qword_100360E38;
  if (!qword_100360E38)
  {
    v1 = sub_100008CF0(&qword_100360E30, &unk_10028D8B0);
    sub_1000A11AC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E38);
  }

  return result;
}

unint64_t sub_1001594AC()
{
  result = qword_100360E48;
  if (!qword_100360E48)
  {
    sub_100008CF0(&qword_100360E18, &qword_100288B90);
    sub_100159538();
    sub_10015967C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E48);
  }

  return result;
}

unint64_t sub_100159538()
{
  result = qword_100360E50;
  if (!qword_100360E50)
  {
    sub_100008CF0(&qword_100360E20, &qword_100288B98);
    sub_1001595C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E50);
  }

  return result;
}

unint64_t sub_1001595C4()
{
  result = qword_100360E58;
  if (!qword_100360E58)
  {
    sub_100008CF0(&qword_100360E60, &qword_100288BB8);
    sub_100009274(&qword_100360E68, &qword_100360E70, &qword_100288BC0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E58);
  }

  return result;
}

unint64_t sub_10015967C()
{
  result = qword_100360E78;
  if (!qword_100360E78)
  {
    sub_100008CF0(&qword_100360E00, &qword_100288B78);
    sub_100159708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E78);
  }

  return result;
}

unint64_t sub_100159708()
{
  result = qword_100360E80;
  if (!qword_100360E80)
  {
    sub_100008CF0(&qword_100360E88, &qword_100288BC8);
    sub_100009274(&qword_100360E90, &qword_100360E98, &unk_100288BD0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360E80);
  }

  return result;
}

unint64_t sub_1001597C0()
{
  result = qword_100360EA0;
  if (!qword_100360EA0)
  {
    sub_100008CF0(&qword_100360E40, &qword_100288BB0);
    sub_100159420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360EA0);
  }

  return result;
}

unint64_t sub_10015984C()
{
  result = qword_100360EA8;
  if (!qword_100360EA8)
  {
    sub_100008CF0(&qword_100360E28, &unk_100288BA0);
    sub_1001594AC();
    sub_1001597C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360EA8);
  }

  return result;
}

unint64_t sub_100159910()
{
  result = qword_100360ED0;
  if (!qword_100360ED0)
  {
    sub_100008CF0(&qword_100360EC8, &unk_10028D940);
    sub_1000E0724();
    sub_100009274(&qword_100358528, &qword_100358500, &qword_10027CE10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360ED0);
  }

  return result;
}

uint64_t sub_100159A00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_100159A5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100159AEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 2147483646)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    v6 = v5 - 1;
    if (v6 < 0)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = a4(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_100159BD4(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_100159C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_10014FE54(319);
  if (v5 <= 0x3F)
  {
    a4(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100159D34()
{
  result = qword_100360F68;
  if (!qword_100360F68)
  {
    v1 = sub_100008CF0(&qword_100360F70, &qword_100288DD0);
    sub_100158FF0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360F68);
  }

  return result;
}

uint64_t sub_100159DC0()
{
  sub_100008CF0(&qword_100360D60, &qword_100288B20);
  sub_100008CF0(&qword_100354D60, &qword_100277B30);
  sub_100009274(&qword_100360D70, &qword_100360D60, &qword_100288B20, &protocol conformance descriptor for VStack<A>);
  sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100159EB4()
{
  result = qword_100360F78;
  if (!qword_100360F78)
  {
    sub_100008CF0(&qword_100360F80, &qword_100288DD8);
    sub_10015984C();
    sub_1000D0804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360F78);
  }

  return result;
}

uint64_t sub_100159FE8()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10015A058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100360FB0;
  if (!qword_100360FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360FB0);
  }

  return result;
}

uint64_t sub_10015A0C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10015A10C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10015A1C8()
{
  result = qword_100360FE0;
  if (!qword_100360FE0)
  {
    sub_100008CF0(&qword_100360FA0, &qword_100288FD8);
    sub_100008CF0(&qword_100360F90, &qword_100288FC8);
    sub_100008CF0(&qword_100360F88, &qword_100288FC0);
    type metadata accessor for BorderlessButtonStyle();
    sub_100009274(&qword_100360FB8, &qword_100360F88, &qword_100288FC0, &protocol conformance descriptor for Button<A>);
    sub_10014FB84(&qword_100360FC0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10014FB84(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360FE0);
  }

  return result;
}

unint64_t sub_10015A3C8()
{
  result = qword_100360FF8;
  if (!qword_100360FF8)
  {
    sub_100008CF0(&qword_100360FD0, &qword_100289080);
    sub_10015A454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100360FF8);
  }

  return result;
}

unint64_t sub_10015A454()
{
  result = qword_100361000;
  if (!qword_100361000)
  {
    sub_100008CF0(&qword_100361008, &unk_100289170);
    sub_10015A4E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361000);
  }

  return result;
}

unint64_t sub_10015A4E0()
{
  result = qword_100361010;
  if (!qword_100361010)
  {
    sub_100008CF0(&qword_100361018, qword_10028E420);
    sub_100108AB0();
    sub_100009274(&qword_100356C58, &qword_100356C60, &unk_100281850, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361010);
  }

  return result;
}

unint64_t sub_10015A674()
{
  result = qword_1003610C0;
  if (!qword_1003610C0)
  {
    sub_100008CF0(&qword_1003610B0, &qword_100289338);
    sub_10015A700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003610C0);
  }

  return result;
}

unint64_t sub_10015A700()
{
  result = qword_1003610C8;
  if (!qword_1003610C8)
  {
    sub_100008CF0(&qword_1003610D0, &qword_100289340);
    sub_10015A4E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003610C8);
  }

  return result;
}

unint64_t sub_10015A78C()
{
  result = qword_1003610D8;
  if (!qword_1003610D8)
  {
    sub_100008CF0(&qword_100361098, &qword_100289320);
    sub_100009274(&qword_1003610B8, &qword_100361080, &unk_1002892F0, &protocol conformance descriptor for TupleView<A>);
    sub_10015A674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003610D8);
  }

  return result;
}

uint64_t sub_10015A8CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10015A978()
{
  result = qword_100361100;
  if (!qword_100361100)
  {
    sub_100008CF0(&qword_100361058, &qword_1002892C0);
    sub_10015AA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361100);
  }

  return result;
}

unint64_t sub_10015AA04()
{
  result = qword_100361108;
  if (!qword_100361108)
  {
    sub_100008CF0(&qword_100361078, &qword_1002892E8);
    sub_100009274(&qword_100361110, &qword_100361118, &unk_100289350, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361108);
  }

  return result;
}

uint64_t sub_10015AB4C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CircularProgressViewStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100354FA0, &unk_1002851D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1000040A8(&qword_100361150, &qword_100289448);
  ProgressView<>.init<>()();
  CircularProgressViewStyle.init()();
  sub_100009274(&qword_100355088, &qword_100354FA0, &unk_1002851D0, &protocol conformance descriptor for ProgressView<A, B>);
  sub_10015B2A8(&qword_100355090, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
  View.progressViewStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = [objc_opt_self() mainBundle];
  v22._object = 0x8000000100299C40;
  v11._countAndFlagsBits = 0x636E656772656D45;
  v11._object = 0xED0000534F532079;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0xD000000000000032;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v22);

  v14 = (a1 + *(sub_1000040A8(&qword_100361128, &qword_1002893F0) + 36));
  v15 = v14 + *(sub_1000040A8(&qword_10035B5A8, &unk_100282010) + 36);
  v16 = sub_1000040A8(&qword_10035B5B8, &qword_100280B60);
  v17 = *(v16 + 36);
  v18 = type metadata accessor for ToolbarItemPlacement();
  result = (*(*(v18 - 8) + 56))(&v15[v17], 1, 1, v18);
  *v15 = 1;
  v20 = &v15[*(v16 + 40)];
  *v20 = sub_10015AEB8;
  v20[1] = 0;
  *v14 = v13;
  return result;
}

void *sub_10015AEB8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_10015B2A8(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for StewieModel(0);
  sub_10015B2A8(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
  v5 = EnvironmentObject.init()();
  v7 = v6;
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_10015AFC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100361120, &qword_1002893E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-1] - v5;
  v7 = *v1;
  sub_1000040A8(&qword_100361128, &qword_1002893F0);
  sub_10015B1BC();
  NavigationStack.init<>(root:)();
  if (v7)
  {
    v8 = v7[9];
    v9 = v7[10];
    sub_1000088DC(v7 + 6, v8);
    (*(v9 + 24))(v15, v8, v9);
    v10 = static Color.white.getter();
    sub_100008964(v15);
    KeyPath = swift_getKeyPath();
    (*(v4 + 32))(a1, v6, v3);
    result = sub_1000040A8(&qword_100361148, &unk_100289438);
    v13 = (a1 + *(result + 36));
    *v13 = KeyPath;
    v13[1] = v10;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10015B2A8(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_10015B1BC()
{
  result = qword_100361130;
  if (!qword_100361130)
  {
    sub_100008CF0(&qword_100361128, &qword_1002893F0);
    sub_100009274(&qword_100361138, &qword_100361140, &unk_1002893F8, &protocol conformance descriptor for VStack<A>);
    sub_100009274(&qword_10035B5A0, &qword_10035B5A8, &unk_100282010, &unk_100284C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361130);
  }

  return result;
}

uint64_t sub_10015B2A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10015B2F4()
{
  result = qword_100361158;
  if (!qword_100361158)
  {
    sub_100008CF0(&qword_100361148, &unk_100289438);
    sub_100009274(&qword_100361160, &qword_100361120, &qword_1002893E8, &protocol conformance descriptor for NavigationStack<A, B>);
    sub_100009274(&qword_100355068, &qword_100355070, &qword_100279CE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361158);
  }

  return result;
}

uint64_t sub_10015B3D8()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
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

  v22[1] = sub_10000F574();
  v27[0] = v8;
  v27[1] = v10;

  v11._countAndFlagsBits = 0x67416863726F542ELL;
  v11._object = 0xEB00000000746E65;
  String.append(_:)(v11);

  static DispatchQoS.unspecified.getter();
  v27[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20, &unk_100278D40);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20, &unk_100278D40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v24 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = v12;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381D88);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v1;
    v27[0] = v17;
    *v16 = 136446210;
    type metadata accessor for TorchAgent();

    v18 = String.init<A>(describing:)();
    v20 = sub_10017C9E8(v18, v19, v27);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] init", v16, 0xCu);
    sub_100008964(v17);
  }

  return v1;
}

uint64_t sub_10015B814()
{
  v1 = v0;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381D88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for TorchAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_10015B998()
{
  sub_10015B814();

  return swift_deallocClassInstance();
}

uint64_t sub_10015B9F0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A68 == -1)
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
  sub_10000F53C(v7, qword_100381D88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Stopping TorchAgent", v10, 2u);
  }

  v11 = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10015D4D8;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1000EC2C8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193668;
  aBlock[3] = &unk_100333330;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v11, v13);
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015BCBC(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  __chkstk_darwin(v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10015D4CC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_1003332E0;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

uint64_t sub_10015BFB8(uint64_t a1, double a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10015C670(a2);
  }

  return result;
}

uint64_t sub_10015C020()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10015D4C4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100333290;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_10015C2F4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 32);
    v3 = *(result + 40);

    if ((v3 & 1) == 0)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        sub_10015CE34(v2);
      }
    }
  }

  return result;
}

NSObject *sub_10015C38C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1, v3);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v0 + 24);
  if (!v8)
  {
    v10 = [objc_opt_self() defaultDeviceWithMediaType:AVMediaTypeVideo];
    if (v10)
    {
      v8 = v10;
      if ([v10 hasTorch])
      {
        v11 = *(v0 + 24);
        *(v0 + 24) = v8;
        v12 = v8;

        return v8;
      }

      if (qword_100353A68 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000F53C(v16, qword_100381D88);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "AVCaptureDevice does not support torch functionality", v19, 2u);
      }

LABEL_15:
      return 0;
    }

    if (qword_100353A68 == -1)
    {
LABEL_8:
      v13 = type metadata accessor for Logger();
      sub_10000F53C(v13, qword_100381D88);
      v8 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v8, v14, "Failed to create AVCaptureDevice", v15, 2u);
      }

      goto LABEL_15;
    }

LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  v9 = v8;
  return v8;
}

void sub_10015C670(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchTime();
  v46 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  p_isa = type metadata accessor for DispatchPredicate();
  v16 = *(p_isa - 1);
  v17 = __chkstk_darwin(p_isa);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + 16);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), p_isa, v17);
  v45 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, p_isa);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v21 = sub_10015C38C();
  if (!v21)
  {
    return;
  }

  p_isa = &v21->isa;
  v44 = v4;
  if (qword_100353A68 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v22 = type metadata accessor for Logger();
  sub_10000F53C(v22, qword_100381D88);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v23, v24, "torchOn for %f seconds", v25, 0xCu);
  }

  aBlock[0] = 0;
  if ([p_isa lockForConfiguration:aBlock])
  {
    v26 = aBlock[0];
    [p_isa setTorchMode:1];
    [p_isa unlockForConfiguration];
    v27 = *(v2 + 48);
    v28 = v27 + 1;
    if (v27 == -1)
    {
      __break(1u);
    }

    *(v2 + 48) = v28;
    *(v2 + 32) = v28;
    *(v2 + 40) = 0;
    static DispatchTime.now()();
    + infix(_:_:)();
    v43 = v14;
    v46 = *(v46 + 8);
    (v46)(v11, v50);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v28;
    aBlock[4] = sub_10015D4A4;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100333268;
    v31 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v51 = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
    v32 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v43;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v31);

    (*(v49 + 8))(v6, v32);
    (*(v47 + 8))(v9, v48);
    (v46)(v33, v50);
  }

  else
  {
    v34 = aBlock[0];
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315138;
      v51 = v35;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
      v40 = String.init<A>(describing:)();
      v42 = sub_10017C9E8(v40, v41, aBlock);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to turn torch on: %s", v38, 0xCu);
      sub_100008964(v39);
    }

    else
    {
    }
  }
}

uint64_t sub_10015CDD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10015CE34(a2);
  }

  return result;
}

void sub_10015CE34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_4;
  }

  v11 = *(v2 + 24);
  if (!v11)
  {
    return;
  }

  v12 = qword_100353A68;
  v4 = v11;
  if (v12 != -1)
  {
    goto LABEL_18;
  }

LABEL_4:
  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381D88);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v14, v15, "torchOff with version %llu", v16, 0xCu);
  }

  if ((*(v2 + 40) & 1) != 0 || *(v2 + 32) != a1)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v18, v19, "Torch version %llu has already expired", v20, 0xCu);
    }
  }

  else
  {
    v31 = 0;
    if ([v4 lockForConfiguration:&v31])
    {
      v17 = v31;
      [v4 setTorchMode:0];
      [v4 unlockForConfiguration];

      *(v2 + 32) = 0;
      *(v2 + 40) = 1;
    }

    else
    {
      v21 = v31;
      v22 = _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v25 = 136315138;
        v30 = v22;
        swift_errorRetain();
        sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
        v27 = String.init<A>(describing:)();
        v29 = sub_10017C9E8(v27, v28, &v31);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to turn torch off: %s", v25, 0xCu);
        sub_100008964(v26);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10015D274()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    if (qword_100353A68 == -1)
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
  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381D88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting TorchAgent", v8, 2u);
  }

  return 1;
}

uint64_t sub_10015D434()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015D46C()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10015D4AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10015D4D8()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    sub_10015CE34(*(v0 + 32));
  }
}

void *sub_10015D518(char a1)
{
  v8 = &_swiftEmptySetSingleton;
  if (a1)
  {
    sub_1000FC78C(&v7, 0);
    if ((a1 & 8) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_3;
  }

  sub_1000FC78C(&v6, 1);
  if ((a1 & 2) == 0)
  {
LABEL_4:
    if ((a1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_1000FC78C(&v4, 4);
    if ((a1 & 0x30) == 0)
    {
      return v8;
    }

    goto LABEL_6;
  }

LABEL_10:
  sub_1000FC78C(&v5, 3);
  if ((a1 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((a1 & 0x30) != 0)
  {
LABEL_6:
    sub_1000FC78C(&v3, 2);
  }

  return v8;
}

uint64_t sub_10015D5FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  if (v2)
  {
    v4 = v2[9];
    v5 = v2[10];
    sub_1000088DC(v2 + 6, v4);
    (*(v5 + 24))(v25, v4, v5);
    v20 = static HorizontalAlignment.center.getter();
    v24 = 0;
    v6 = *v1;
    v28 = v1[1];
    v29[0] = v6;
    sub_1000089B0(v25, &v22);
    v7 = swift_allocObject();
    v8 = v1[1];
    v7[1] = *v1;
    v7[2] = v8;
    v7[3] = v1[2];
    sub_100008A18(&v22, (v7 + 4));
    sub_1000089B0(v25, v21);
    v9 = swift_allocObject();
    sub_100008A18(v21, v9 + 16);
    v10 = v1[1];
    *(v9 + 56) = *v1;
    *(v9 + 72) = v10;
    *(v9 + 88) = v1[2];
    sub_100006C20(v29, v26, &qword_100357580, &unk_10027AEE0);
    sub_100006C20(&v28, v26, &qword_1003612A0, &qword_100289530);

    sub_100006C20(v29, v26, &qword_100357580, &unk_10027AEE0);
    sub_100006C20(&v28, v26, &qword_1003612A0, &qword_100289530);

    sub_10013A3F0();
    *&v23[135] = v26[8];
    *&v23[151] = v26[9];
    *&v23[167] = v26[10];
    *&v23[71] = v26[4];
    *&v23[87] = v26[5];
    *&v23[103] = v26[6];
    *&v23[119] = v26[7];
    *&v23[7] = v26[0];
    *&v23[23] = v26[1];
    *&v23[39] = v26[2];
    *&v23[183] = v27;
    *&v23[55] = v26[3];
    v11 = v24;
    v12 = swift_allocObject();
    v13 = v1[1];
    v12[1] = *v1;
    v12[2] = v13;
    v12[3] = v1[2];
    v14 = *&v23[144];
    *(a1 + 145) = *&v23[128];
    *(a1 + 161) = v14;
    *(a1 + 177) = *&v23[160];
    *(a1 + 192) = *&v23[175];
    v15 = *&v23[80];
    *(a1 + 81) = *&v23[64];
    *(a1 + 97) = v15;
    v16 = *&v23[112];
    *(a1 + 113) = *&v23[96];
    *(a1 + 129) = v16;
    v17 = *&v23[16];
    *(a1 + 17) = *v23;
    *(a1 + 33) = v17;
    v18 = *&v23[48];
    *(a1 + 49) = *&v23[32];
    *a1 = v20;
    *(a1 + 8) = 0;
    *(a1 + 16) = v11;
    *(a1 + 65) = v18;
    *(a1 + 208) = sub_1001607C4;
    *(a1 + 216) = v12;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    sub_100006C20(v29, &v22, &qword_100357580, &unk_10027AEE0);
    sub_100006C20(&v28, &v22, &qword_1003612A0, &qword_100289530);

    return sub_100008964(v25);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100161A88(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10015D9C4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_1000040A8(&qword_100357B78, &unk_10027BEC0);
  sub_10015DA64(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = static Edge.Set.all.getter();
  v7 = a3 + *(sub_1000040A8(&qword_100357B80, &unk_1002896B0) + 36);
  *v7 = a2;
  result = 0.0;
  *(v7 + 8) = xmmword_100277A70;
  *(v7 + 24) = xmmword_100277A70;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_10015DA64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v116 = a3;
  v4 = sub_1000040A8(&qword_100357B88, &unk_10027BED0);
  __chkstk_darwin(v4 - 8);
  v114 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = (&v99 - v7);
  v8 = sub_1000040A8(&qword_100357B90, &unk_1002896C0);
  __chkstk_darwin(v8 - 8);
  v115 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v121 = (&v99 - v11);
  v12 = type metadata accessor for AccessibilityTraits();
  v109 = *(v12 - 8);
  v110 = v12;
  __chkstk_darwin(v12);
  v108 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Font.Leading();
  v105 = *(v14 - 8);
  v106 = v14;
  __chkstk_darwin(v14);
  v104 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000040A8(&qword_100357B98, &qword_10027BEE0);
  __chkstk_darwin(v16 - 8);
  v113 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v120 = &v99 - v19;
  v20 = type metadata accessor for Image.ResizingMode();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000040A8(&qword_100357BD8, qword_1002896D0);
  v102 = *(v24 - 8);
  v103 = v24;
  __chkstk_darwin(v24);
  v101 = &v99 - v25;
  v26 = sub_1000040A8(&qword_100357BA0, &qword_10027BEE8);
  __chkstk_darwin(v26 - 8);
  v111 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v119 = &v99 - v29;
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = v30[14];
    v117 = v30;
    swift_retain_n();
    v32 = v31;
    v107 = UIContentSizeCategoryAccessibilityExtraLarge;
    v33 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v33)
    {
      (*(v102 + 56))(v119, 1, 1, v103);
    }

    else
    {
      Image.init(_:bundle:)();
      (*(v21 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v20);
      v34 = Image.resizable(capInsets:resizingMode:)();

      (*(v21 + 8))(v23, v20);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v142[27] = *&v142[83];
      *&v142[35] = *&v142[91];
      *&v142[43] = *&v142[99];
      *&v142[51] = *&v142[107];
      *&v142[3] = *&v142[59];
      *&v142[11] = *&v142[67];
      LOBYTE(v122) = 1;
      *&v142[19] = *&v142[75];
      v35 = sub_1000088DC(v118, v118[3]);
      v36 = *(*v35 + 32);
      v99 = *(*v35 + 48);
      v100 = v36;
      v37 = static Edge.Set.all.getter();
      LOBYTE(v143[0]) = 0;
      v123 = v34;
      LOWORD(v124[0]) = 1;
      *(&v124[4] + 2) = *&v142[32];
      *(&v124[5] + 2) = *&v142[40];
      *(&v124[6] + 2) = *&v142[48];
      *&v124[7] = *&v142[55];
      *(v124 + 2) = *v142;
      *(&v124[1] + 2) = *&v142[8];
      *(&v124[2] + 2) = *&v142[16];
      *(&v124[3] + 2) = *&v142[24];
      BYTE8(v124[7]) = v37;
      v124[8] = v100;
      v125 = v99;
      LOBYTE(v126[0]) = 0;
      sub_1000040A8(&qword_100357BA8, &qword_10027BEF0);
      sub_10005D0EC();
      v38 = v101;
      View.accessibility(hidden:)();
      v135 = v124[7];
      v136 = v124[8];
      v137 = v125;
      LOBYTE(v138[0]) = v126[0];
      v131 = v124[3];
      v132 = v124[4];
      v133 = v124[5];
      v134 = v124[6];
      v127 = v123;
      v128 = v124[0];
      v129 = v124[1];
      v130 = v124[2];
      sub_100008FA0(&v127, &qword_100357BA8, &qword_10027BEF0);
      v39 = v119;
      sub_1001618E4(v38, v119);
      (*(v102 + 56))(v39, 0, 1, v103);
    }

    LocalizedStringKey.init(stringLiteral:)();
    v40 = Text.init(_:tableName:bundle:comment:)();
    v42 = v41;
    v44 = v43;
    static Font.largeTitle.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v46 = v104;
    v45 = v105;
    v47 = v106;
    (*(v105 + 104))(v104, enum case for Font.Leading.tight(_:), v106);
    Font.leading(_:)();

    (*(v45 + 8))(v46, v47);
    v48 = Text.font(_:)();
    v50 = v49;
    LOBYTE(v46) = v51;

    sub_1000317C4(v40, v42, v44 & 1);

    static Color.white.getter();
    v52 = Text.foregroundColor(_:)();
    v105 = v53;
    v106 = v52;
    v55 = v54;
    v57 = v56;

    sub_1000317C4(v48, v50, v46 & 1);

    v58 = v117;
    v59 = v117[9];
    v60 = v117[10];
    sub_1000088DC(v117 + 6, v59);
    (*(v60 + 24))(&v127, v59, v60);
    sub_100008964(&v127);
    v61 = v58[14];
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v63 = v58[9];
    v64 = v58[10];
    sub_1000088DC(v58 + 6, v63);
    (*(v64 + 24))(&v127, v63, v64);
    static Alignment.leading.getter();
    sub_100008964(&v127);
    v65 = v58[14];
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v139[55] = v143[3];
    *&v139[71] = v143[4];
    *&v139[87] = v143[5];
    *&v139[103] = v143[6];
    *&v139[7] = v143[0];
    *&v139[23] = v143[1];
    v140 = v55 & 1;
    *&v139[39] = v143[2];
    v66 = static Edge.Set.all.getter();
    *(&v124[5] + 9) = *&v139[64];
    *(&v124[6] + 9) = *&v139[80];
    *(&v124[7] + 9) = *&v139[96];
    *(&v124[1] + 9) = *v139;
    *(&v124[2] + 9) = *&v139[16];
    *(&v124[3] + 9) = *&v139[32];
    v141 = 0;
    *&v123 = v106;
    *(&v123 + 1) = v105;
    LOBYTE(v124[0]) = v55 & 1;
    *(&v124[0] + 1) = v57;
    *&v124[1] = KeyPath;
    BYTE8(v124[1]) = 0;
    *(&v124[8] + 1) = *&v139[111];
    *(&v124[4] + 9) = *&v139[48];
    LOBYTE(v125) = v66;
    *(&v125 + 1) = 0;
    *&v126[0] = 0;
    *(v126 + 8) = xmmword_10027BC80;
    BYTE8(v126[1]) = 0;
    v67 = v108;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100357BE0, &unk_10027BF10);
    sub_10005D288();
    View.accessibility(addTraits:)();
    (*(v109 + 8))(v67, v110);
    v136 = v124[8];
    v137 = v125;
    v138[0] = v126[0];
    *(v138 + 9) = *(v126 + 9);
    v133 = v124[5];
    v134 = v124[6];
    v135 = v124[7];
    v129 = v124[1];
    v130 = v124[2];
    v131 = v124[3];
    v132 = v124[4];
    v127 = v123;
    v128 = v124[0];
    sub_100008FA0(&v127, &qword_100357BE0, &unk_10027BF10);
    sub_1000040A8(&qword_100359B28, &qword_100287830);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1002811A0;
    v69 = objc_opt_self();
    v70 = [v69 mainBundle];
    v71._countAndFlagsBits = 0xD00000000000001FLL;
    v144._object = 0x8000000100298DD0;
    v71._object = 0x8000000100298DB0;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v144._countAndFlagsBits = 0xD000000000000058;
    v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v144);

    *(v68 + 32) = v73;
    v74 = [v69 mainBundle];
    v75._countAndFlagsBits = 0xD000000000000022;
    v145._object = 0x8000000100298DD0;
    v75._object = 0x8000000100298E30;
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    v145._countAndFlagsBits = 0xD000000000000058;
    v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v145);

    *(v68 + 48) = v77;
    v78 = [v69 mainBundle];
    v79._countAndFlagsBits = 0xD00000000000002FLL;
    v146._object = 0x8000000100298DD0;
    v79._object = 0x8000000100296DC0;
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    v146._countAndFlagsBits = 0xD000000000000058;
    v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v78, v80, v146);

    *(v68 + 64) = v81;
    v82 = static VerticalAlignment.top.getter();
    v83 = v121;
    *v121 = v82;
    v83[1] = 0;
    *(v83 + 16) = 1;
    v117 = (v83 + *(sub_1000040A8(&qword_100357C00, &qword_10027BF40) + 44));
    v84 = static HorizontalAlignment.leading.getter();
    v85 = v112;
    *v112 = v84;
    *(v85 + 8) = 0;
    *(v85 + 16) = 0;
    v110 = *(sub_1000040A8(&qword_100357C08, &unk_10027BF48) + 44);
    v122 = v68;
    v109 = swift_getKeyPath();
    sub_1000089B0(v118, &v123);
    v86 = swift_allocObject();
    sub_100008A18(&v123, v86 + 16);
    *(v86 + 56) = 10649826;
    *(v86 + 64) = 0xA300000000000000;

    sub_1000040A8(&qword_100355E30, &unk_10027A120);
    sub_1000040A8(&qword_100357C10, &qword_10027BF78);
    sub_100009274(&qword_100357870, &qword_100355E30, &unk_10027A120, &protocol conformance descriptor for [A]);
    sub_100009274(&qword_100357C18, &qword_100357C10, &qword_10027BF78, &protocol conformance descriptor for TupleView<A>);
    ForEach<>.init(_:id:content:)();
    v87 = v114;
    sub_100006C20(v85, v114, &qword_100357B88, &unk_10027BED0);
    v88 = v117;
    sub_100006C20(v87, v117, &qword_100357B88, &unk_10027BED0);
    v89 = v88 + *(sub_1000040A8(&qword_100357C20, &qword_10027BF80) + 48);
    *v89 = 0;
    v89[8] = 0;
    sub_100008FA0(v85, &qword_100357B88, &unk_10027BED0);
    sub_100008FA0(v87, &qword_100357B88, &unk_10027BED0);

    v90 = v119;
    v91 = v111;
    sub_100006C20(v119, v111, &qword_100357BA0, &qword_10027BEE8);
    v92 = v120;
    v93 = v113;
    sub_100006C20(v120, v113, &qword_100357B98, &qword_10027BEE0);
    v94 = v121;
    v95 = v115;
    sub_100006C20(v121, v115, &qword_100357B90, &unk_1002896C0);
    v96 = v116;
    sub_100006C20(v91, v116, &qword_100357BA0, &qword_10027BEE8);
    v97 = sub_1000040A8(&qword_100357C28, &qword_10027BF88);
    sub_100006C20(v93, v96 + *(v97 + 48), &qword_100357B98, &qword_10027BEE0);
    sub_100006C20(v95, v96 + *(v97 + 64), &qword_100357B90, &unk_1002896C0);
    sub_100008FA0(v94, &qword_100357B90, &unk_1002896C0);
    sub_100008FA0(v92, &qword_100357B98, &qword_10027BEE0);
    sub_100008FA0(v90, &qword_100357BA0, &qword_10027BEE8);
    sub_100008FA0(v95, &qword_100357B90, &unk_1002896C0);
    sub_100008FA0(v93, &qword_100357B98, &qword_10027BEE0);
    return sub_100008FA0(v91, &qword_100357BA0, &qword_10027BEE8);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100161A88(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10015EB2C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1000040A8(&qword_100357C30, &qword_10027BF90);
  __chkstk_darwin(v9 - 8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v12);
  v14 = &v24[-v13 - 8];
  v16 = *a1;
  v15 = a1[1];
  *v14 = static VerticalAlignment.firstTextLineCenter.getter();
  *(v14 + 1) = 0x4024000000000000;
  v14[16] = 0;
  v17 = sub_1000040A8(&qword_100357C38, &qword_10027BF98);
  sub_10015EDA4(a3, a4, v16, v15, &v14[*(v17 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v25 = 1;
  *&v24[39] = v28;
  sub_100006C20(v14, v11, &qword_100357C30, &qword_10027BF90);
  sub_100006C20(v11, a5, &qword_100357C30, &qword_10027BF90);
  v18 = a5 + *(sub_1000040A8(&qword_100357C40, &unk_10027BFA0) + 48);
  v19 = *&v24[80];
  *(v18 + 73) = *&v24[64];
  *(v18 + 89) = v19;
  *(v18 + 105) = *&v24[96];
  v20 = *&v24[16];
  *(v18 + 9) = *v24;
  *(v18 + 25) = v20;
  v21 = *&v24[48];
  *(v18 + 41) = *&v24[32];
  *v18 = 0;
  *(v18 + 8) = 1;
  *(v18 + 120) = *&v24[111];
  *(v18 + 57) = v21;
  sub_100008FA0(v14, &qword_100357C30, &qword_10027BF90);
  return sub_100008FA0(v11, &qword_100357C30, &qword_10027BF90);
}

uint64_t sub_10015EDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v7 = sub_1000040A8(&qword_100357C48, &qword_10028EF90);
  __chkstk_darwin(v7 - 8);
  v56 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v52 - v10;
  v60 = a1;
  v61 = a2;
  sub_100031770(v11, v12, v13);

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.title2.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_1000317C4(v14, v16, v18 & 1);

  static Color.gray.getter();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  LOBYTE(v14) = v27;
  v29 = v28;

  sub_1000317C4(v19, v21, v23 & 1);

  v60 = v24;
  v61 = v26;
  v62 = v14 & 1;
  v64 = v29;
  View.accessibility(hidden:)();
  sub_1000317C4(v24, v26, v14 & 1);

  v60 = v52;
  v61 = v53;

  v30 = Text.init<A>(_:)();
  v32 = v31;
  LOBYTE(v24) = v33;
  static Font.title2.getter();
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(v29) = v37;

  sub_1000317C4(v30, v32, v24 & 1);

  static Color.gray.getter();
  v38 = Text.foregroundColor(_:)();
  v40 = v39;
  LOBYTE(v21) = v41;
  v53 = v42;

  sub_1000317C4(v34, v36, v29 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v60) = v21 & 1;
  v44 = v55;
  v45 = v56;
  sub_100006C20(v55, v56, &qword_100357C48, &qword_10028EF90);
  v46 = v45;
  v47 = v54;
  sub_100006C20(v46, v54, &qword_100357C48, &qword_10028EF90);
  v48 = (v47 + *(sub_1000040A8(&qword_100357C50, &qword_10027BFB0) + 48));
  *&v58 = v38;
  *(&v58 + 1) = v40;
  v59[0] = v21 & 1;
  *&v59[1] = v57[0];
  *&v59[4] = *(v57 + 3);
  v49 = v53;
  *&v59[8] = v53;
  *&v59[16] = KeyPath;
  *&v59[24] = 0;
  v59[26] = 1;
  *(v48 + 27) = *&v59[11];
  v50 = *v59;
  *v48 = v58;
  v48[1] = v50;
  sub_100006C20(&v58, &v60, &qword_100357C58, &qword_10027BFB8);
  sub_100008FA0(v44, &qword_100357C48, &qword_10028EF90);
  v60 = v38;
  v61 = v40;
  v62 = v21 & 1;
  *v63 = v57[0];
  *&v63[3] = *(v57 + 3);
  v64 = v49;
  v65 = KeyPath;
  v66 = 0;
  v67 = 1;
  sub_100008FA0(&v60, &qword_100357C58, &qword_10027BFB8);
  return sub_100008FA0(v56, &qword_100357C48, &qword_10028EF90);
}

double sub_10015F184@<D0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = sub_1000040A8(&qword_1003612A8, &qword_100289538);
  sub_10015F224(a2, (a3 + *(v5 + 44)));
  LOBYTE(a2) = static Edge.Set.all.getter();
  v6 = a3 + *(sub_1000040A8(&qword_1003612B0, &qword_100289540) + 36);
  *v6 = a2;
  result = 0.0;
  *(v6 + 8) = xmmword_100277A70;
  *(v6 + 24) = xmmword_100277A70;
  *(v6 + 40) = 0;
  return result;
}

uint64_t sub_10015F224@<X0>(__int128 *a1@<X1>, _OWORD *a2@<X8>)
{
  v129 = a1;
  v154 = a2;
  v3 = type metadata accessor for KeyboardShortcut();
  v152 = *(v3 - 8);
  v153 = v3;
  __chkstk_darwin(v3);
  v151 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1000040A8(&qword_1003612B8, &qword_100289548);
  __chkstk_darwin(v124);
  v125 = &v123 - v5;
  v148 = sub_1000040A8(&qword_1003612C0, &qword_100289550);
  __chkstk_darwin(v148);
  v126 = &v123 - v6;
  v142 = sub_1000040A8(&qword_1003612C8, &qword_100289558);
  __chkstk_darwin(v142);
  v147 = &v123 - v7;
  v8 = type metadata accessor for BorderedProminentButtonStyle();
  v131 = *(v8 - 8);
  v132 = v8;
  __chkstk_darwin(v8);
  v130 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1000040A8(&qword_1003612D0, &qword_100289560);
  __chkstk_darwin(v136);
  v123 = &v123 - v10;
  v155 = sub_1000040A8(&qword_1003612D8, &qword_100289568);
  __chkstk_darwin(v155);
  v134 = &v123 - v11;
  v140 = sub_1000040A8(&qword_1003612E0, &qword_100289570);
  __chkstk_darwin(v140);
  v133 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v138 = &v123 - v14;
  v146 = sub_1000040A8(&qword_1003612E8, &qword_100289578);
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v139 = &v123 - v15;
  v137 = sub_1000040A8(&qword_1003612F0, &qword_100289580);
  __chkstk_darwin(v137);
  v145 = &v123 - v16;
  v143 = sub_1000040A8(&qword_1003612F8, &qword_100289588);
  __chkstk_darwin(v143);
  v150 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v141 = &v123 - v19;
  __chkstk_darwin(v20);
  v149 = &v123 - v21;
  v22 = type metadata accessor for Font.Leading();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() mainBundle];
  v208._object = 0x8000000100298C40;
  v27._object = 0x8000000100298C20;
  v208._countAndFlagsBits = 0xD000000000000069;
  v27._countAndFlagsBits = 0xD00000000000001DLL;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v208);

  v166 = v29;
  sub_100031770(v30, v31, v32);
  v33 = Text.init<A>(_:)();
  v35 = v34;
  v37 = v36;
  static Font.footnote.getter();
  (*(v23 + 104))(v25, enum case for Font.Leading.tight(_:), v22);
  Font.leading(_:)();

  (*(v23 + 8))(v25, v22);
  v38 = Text.font(_:)();
  v40 = v39;
  LOBYTE(v25) = v41;

  sub_1000317C4(v33, v35, v37 & 1);

  static Color.gray.getter();
  v135 = Text.foregroundColor(_:)();
  v158 = v42;
  v159 = v43;
  v45 = v44;

  v46 = v40;
  v47 = v129;
  sub_1000317C4(v38, v46, v25 & 1);

  v48 = *(v47 + 4);
  if (!v48)
  {
    type metadata accessor for UIMetrics();
    sub_100161A88(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
LABEL_11:
    type metadata accessor for RoadsideAssistanceModel();
    sub_100161A88(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v49 = *(v48 + 112);

  v50 = v49;
  v127 = static UIContentSizeCategory.>= infix(_:_:)();

  KeyPath = swift_getKeyPath();
  v51 = *(v48 + 112);

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
  *&v192[55] = v203;
  *&v192[71] = v204;
  *&v192[87] = v205;
  *&v192[103] = v206;
  *&v192[7] = v200;
  *&v192[23] = v201;
  v156 = v45 & 1;
  v194 = v45 & 1;
  *&v192[39] = v202;
  v52 = static Edge.Set.top.getter();
  v195 = 1;
  v53 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v197 = 0;
  v207 = *v47;
  v62 = *(v47 + 2);
  v63 = swift_allocObject();
  v64 = v47[1];
  v63[1] = *v47;
  v63[2] = v64;
  v63[3] = v47[2];

  v65 = sub_100006C20(&v207, &v166, &qword_100357580, &unk_10027AEE0);
  sub_1001613DC(v65, v66, v67);

  v68 = v134;
  Button.init(action:label:)();
  v69 = (v68 + *(v155 + 36));
  v70 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
  v71 = enum case for ControlSize.large(_:);
  v72 = type metadata accessor for ControlSize();
  (*(*(v72 - 8) + 104))(v69 + v70, v71, v72);
  *v69 = swift_getKeyPath();
  if (!v62)
  {
    goto LABEL_11;
  }

  v128 = v52;
  LODWORD(v129) = v53;
  if (*(v62 + 250))
  {

    v73 = v130;
    BorderedProminentButtonStyle.init()();
    sub_1001614F8();
    sub_100161A88(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    v74 = v123;
    v75 = v132;
    View.buttonStyle<A>(_:)();
    (*(v131 + 8))(v73, v75);
    v76 = (v74 + *(v136 + 36));
    sub_1000040A8(&qword_100357740, &qword_10027B2A0);
    static ButtonBorderShape.capsule.getter();
    *v76 = swift_getKeyPath();
    sub_100006C20(v74, v147, &qword_1003612D0, &qword_100289560);
    swift_storeEnumTagMultiPayload();
    sub_1001615DC();
    sub_100161720();
    v77 = v133;
    _ConditionalContent<>.init(storage:)();
    v78 = v74;
    v79 = &qword_1003612D0;
    v80 = &qword_100289560;
  }

  else
  {
    v81 = v125;
    v82 = &v125[*(v124 + 36)];
    sub_1000040A8(&qword_100357740, &qword_10027B2A0);

    static ButtonBorderShape.roundedRectangle.getter();
    *v82 = swift_getKeyPath();
    sub_100006C20(v68, v81, &qword_1003612D8, &qword_100289568);
    v83 = v130;
    BorderedProminentButtonStyle.init()();
    sub_100161440();
    sub_100161A88(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    v84 = v126;
    v85 = v132;
    View.buttonStyle<A>(_:)();
    (*(v131 + 8))(v83, v85);
    sub_100008FA0(v81, &qword_1003612B8, &qword_100289548);
    v86 = static Edge.Set.bottom.getter();
    v87 = v147;
    v88 = v84 + *(v148 + 36);
    *v88 = v86;
    *(v88 + 8) = 0u;
    *(v88 + 24) = 0u;
    *(v88 + 40) = 1;
    sub_100006C20(v84, v87, &qword_1003612C0, &qword_100289550);
    swift_storeEnumTagMultiPayload();
    sub_1001615DC();
    sub_100161720();
    v77 = v133;
    _ConditionalContent<>.init(storage:)();
    v78 = v84;
    v79 = &qword_1003612C0;
    v80 = &qword_100289550;
  }

  sub_100008FA0(v78, v79, v80);
  sub_100008FA0(v68, &qword_1003612D8, &qword_100289568);
  v89 = (v127 & 1) == 0;
  LODWORD(v155) = v89;
  v90 = v138;
  sub_10000CF4C(v77, v138, &qword_1003612E0, &qword_100289570);
  v91 = v151;
  static KeyboardShortcut.defaultAction.getter();
  sub_100161838();
  v92 = v139;
  View.keyboardShortcut(_:)();
  (*(v152 + 8))(v91, v153);
  sub_100008FA0(v90, &qword_1003612E0, &qword_100289570);
  v93 = static Color.green.getter();
  v94 = swift_getKeyPath();
  v166._countAndFlagsBits = v93;
  v95 = AnyShapeStyle.init<A>(_:)();
  v96 = v145;
  (*(v144 + 32))(v145, v92, v146);
  v97 = (v96 + *(v137 + 36));
  *v97 = v94;
  v97[1] = v95;
  v98 = *(v62 + 250);

  v99 = swift_getKeyPath();
  v100 = swift_allocObject();
  *(v100 + 16) = v98;
  v101 = v141;
  sub_10000CF4C(v96, v141, &qword_1003612F0, &qword_100289580);
  v102 = (v101 + *(v143 + 36));
  *v102 = v99;
  v102[1] = sub_100073CA8;
  v102[2] = v100;
  v103 = v149;
  sub_10000CF4C(v101, v149, &qword_1003612F8, &qword_100289588);
  v104 = v150;
  sub_100006C20(v103, v150, &qword_1003612F8, &qword_100289588);
  v105 = v135;
  *&v160 = v135;
  *(&v160 + 1) = v158;
  LOBYTE(v161) = v156;
  *(&v161 + 1) = *v193;
  DWORD1(v161) = *&v193[3];
  *(&v161 + 1) = v159;
  *&v162[0] = KeyPath;
  BYTE8(v162[0]) = v89;
  *(&v162[4] + 9) = *&v192[64];
  *(&v162[5] + 9) = *&v192[80];
  *(&v162[6] + 9) = *&v192[96];
  *(&v162[7] + 1) = *&v192[111];
  *(v162 + 9) = *v192;
  *(&v162[1] + 9) = *&v192[16];
  *(&v162[2] + 9) = *&v192[32];
  *(&v162[3] + 9) = *&v192[48];
  v107 = v128;
  v106 = v129;
  LOBYTE(v163[0]) = v128;
  *(v163 + 1) = *v196;
  DWORD1(v163[0]) = *&v196[3];
  *(&v163[1] + 8) = 0u;
  *(v163 + 8) = 0u;
  BYTE8(v163[2]) = 1;
  *(&v163[2] + 9) = *v199;
  HIDWORD(v163[2]) = *&v199[3];
  LOBYTE(v164) = v129;
  *(&v164 + 1) = *v198;
  DWORD1(v164) = *&v198[3];
  *(&v164 + 1) = v55;
  *&v165[0] = v57;
  *(&v165[0] + 1) = v59;
  *&v165[1] = v61;
  BYTE8(v165[1]) = 0;
  v108 = v160;
  v109 = v161;
  v110 = v162[1];
  v111 = v154;
  v154[2] = v162[0];
  v111[3] = v110;
  *v111 = v108;
  v111[1] = v109;
  v112 = v162[2];
  v113 = v162[3];
  v114 = v162[5];
  v111[6] = v162[4];
  v111[7] = v114;
  v111[4] = v112;
  v111[5] = v113;
  v115 = v162[6];
  v116 = v162[7];
  v117 = v163[1];
  v111[10] = v163[0];
  v111[11] = v117;
  v111[8] = v115;
  v111[9] = v116;
  v118 = v163[2];
  v119 = v164;
  v120 = v165[0];
  *(v111 + 233) = *(v165 + 9);
  v111[13] = v119;
  v111[14] = v120;
  v111[12] = v118;
  v121 = sub_1000040A8(&qword_100361340, &qword_100289698);
  sub_100006C20(v104, v111 + *(v121 + 48), &qword_1003612F8, &qword_100289588);
  sub_100006C20(&v160, &v166, &qword_100357B70, &unk_1002896A0);
  sub_100008FA0(v103, &qword_1003612F8, &qword_100289588);
  sub_100008FA0(v104, &qword_1003612F8, &qword_100289588);
  v176 = *&v192[64];
  v177 = *&v192[80];
  *v178 = *&v192[96];
  v172 = *v192;
  v173 = *&v192[16];
  v174 = *&v192[32];
  v166._countAndFlagsBits = v105;
  v166._object = v158;
  v167 = v156;
  *v168 = *v193;
  *&v168[3] = *&v193[3];
  v169 = v159;
  v170 = KeyPath;
  v171 = v155;
  *&v178[15] = *&v192[111];
  v175 = *&v192[48];
  v179 = v107;
  *v180 = *v196;
  *&v180[3] = *&v196[3];
  v181 = 0u;
  v182 = 0u;
  v183 = 1;
  *v184 = *v199;
  *&v184[3] = *&v199[3];
  v185 = v106;
  *&v186[3] = *&v198[3];
  *v186 = *v198;
  v187 = v55;
  v188 = v57;
  v189 = v59;
  v190 = v61;
  v191 = 0;
  return sub_100008FA0(&v166, &qword_100357B70, &unk_1002896A0);
}

uint64_t *sub_1001603C4(uint64_t *result)
{
  v1 = result[2];
  if (!v1)
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_100161A88(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  if (!*(v1 + 104))
  {
    return result;
  }

  if (!*result)
  {
LABEL_7:
    type metadata accessor for AppEvents();
    sub_100161A88(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  PassthroughSubject.send(_:)();

  sub_1000BAC9C();

  PassthroughSubject.send(_:)();
}

uint64_t sub_100160548@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RoadsideAssistanceModel();
  sub_100161A88(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1001605B8(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_100161A88(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_7;
  }

  if (!*(v1 + 104))
  {
    return result;
  }

  if (!*result)
  {
LABEL_7:
    type metadata accessor for AppEvents();
    sub_100161A88(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  PassthroughSubject.send(_:)();
}

uint64_t sub_100160708()
{

  sub_100008964((v0 + 64));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100160764()
{
  sub_100008964((v0 + 16));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1001607CC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v69 = type metadata accessor for CircularProgressViewStyle();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000040A8(&qword_100354FA0, &unk_1002851D0);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v63 - v4;
  v83 = sub_1000040A8(&qword_100357C88, &unk_10027C080);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v70 = &v63 - v5;
  v6 = sub_1000040A8(&qword_100357C90, &unk_1002897B0);
  __chkstk_darwin(v6 - 8);
  v85 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v63 - v9;
  v72 = sub_1000040A8(&qword_100354D60, &qword_100277B30);
  __chkstk_darwin(v72);
  v11 = &v63 - v10;
  v73 = sub_1000040A8(&qword_100357C98, &unk_10027D5C0);
  __chkstk_darwin(v73);
  v13 = &v63 - v12;
  v75 = sub_1000040A8(&qword_100357CA0, &unk_10027C090);
  __chkstk_darwin(v75);
  v79 = &v63 - v14;
  v77 = sub_1000040A8(&qword_100357CA8, &unk_10027D5B0);
  __chkstk_darwin(v77);
  v76 = &v63 - v15;
  v78 = sub_1000040A8(&qword_100357CB0, &unk_10027C0A0);
  __chkstk_darwin(v78);
  v17 = &v63 - v16;
  v18 = sub_1000040A8(&qword_100357CB8, &unk_1002897C0);
  __chkstk_darwin(v18 - 8);
  v81 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v74 = &v63 - v21;
  LocalizedStringKey.init(stringLiteral:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  *&v87 = v22;
  *(&v87 + 1) = v23;
  v26 = v25 & 1;
  LOBYTE(v88) = v25 & 1;
  *(&v88 + 1) = v27;
  v28 = enum case for DynamicTypeSize.accessibility2(_:);
  v29 = type metadata accessor for DynamicTypeSize();
  (*(*(v29 - 8) + 104))(v11, v28, v29);
  sub_100161A88(&qword_100354D68, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v71 = a2;
    sub_100009274(&qword_100354D78, &qword_100354D60, &qword_100277B30, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v11, &qword_100354D60, &qword_100277B30);
    sub_1000317C4(v22, v24, v26);

    KeyPath = swift_getKeyPath();
    v32 = &v13[*(v73 + 36)];
    *v32 = KeyPath;
    v33 = 1;
    v32[8] = 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v34 = v79;
    sub_10000CF4C(v13, v79, &qword_100357C98, &unk_10027D5C0);
    v35 = (v34 + *(v75 + 36));
    v36 = v92;
    v35[4] = v91;
    v35[5] = v36;
    v35[6] = v93;
    v37 = v88;
    *v35 = v87;
    v35[1] = v37;
    v38 = v90;
    v35[2] = v89;
    v35[3] = v38;
    v39 = v76;
    sub_10000CF4C(v34, v76, &qword_100357CA0, &unk_10027C090);
    *(v39 + *(v77 + 36)) = 256;
    v40 = v80;
    if (v80)
    {
      v41 = 0.0;
    }

    else
    {
      v41 = 1.0;
    }

    sub_10000CF4C(v39, v17, &qword_100357CA8, &unk_10027D5B0);
    *&v17[*(v78 + 36)] = v41;
    sub_10005D448();
    v42 = v74;
    View.accessibilityHidden(_:)();
    sub_100008FA0(v17, &qword_100357CB0, &unk_10027C0A0);
    v43 = v83;
    v44 = v84;
    if (v40)
    {
      v45 = v64;
      ProgressView<>.init<>()();
      v46 = v67;
      CircularProgressViewStyle.init()();
      sub_100009274(&qword_100355088, &qword_100354FA0, &unk_1002851D0, &protocol conformance descriptor for ProgressView<A, B>);
      sub_100161A88(&qword_100355090, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
      v47 = v70;
      v48 = v66;
      v49 = v69;
      View.progressViewStyle<A>(_:)();
      (*(v68 + 8))(v46, v49);
      (*(v65 + 8))(v45, v48);
      v50 = (v47 + *(sub_1000040A8(&qword_100354FA8, &qword_100277EC0) + 36));
      v51 = *(sub_1000040A8(&qword_1003550A0, &qword_100277F40) + 28);
      v52 = enum case for ControlSize.small(_:);
      v53 = type metadata accessor for ControlSize();
      (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
      *v50 = swift_getKeyPath();
      v54 = [objc_opt_self() labelColor];
      v55 = Color.init(uiColor:)();
      v56 = swift_getKeyPath();
      v86 = v55;
      v57 = AnyShapeStyle.init<A>(_:)();
      v58 = (v47 + *(v43 + 36));
      *v58 = v56;
      v58[1] = v57;
      sub_10000CF4C(v47, v44, &qword_100357C88, &unk_10027C080);
      v33 = 0;
    }

    (*(v82 + 56))(v44, v33, 1, v43);
    v59 = v81;
    sub_100006C20(v42, v81, &qword_100357CB8, &unk_1002897C0);
    v60 = v85;
    sub_100006C20(v44, v85, &qword_100357C90, &unk_1002897B0);
    v61 = v71;
    sub_100006C20(v59, v71, &qword_100357CB8, &unk_1002897C0);
    v62 = sub_1000040A8(&qword_100357CE0, &unk_10027C0B0);
    sub_100006C20(v60, v61 + *(v62 + 48), &qword_100357C90, &unk_1002897B0);
    sub_100008FA0(v44, &qword_100357C90, &unk_1002897B0);
    sub_100008FA0(v42, &qword_100357CB8, &unk_1002897C0);
    sub_100008FA0(v60, &qword_100357C90, &unk_1002897B0);
    return sub_100008FA0(v59, &qword_100357CB8, &unk_1002897C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001612D0@<X0>(uint64_t *a2@<X8>)
{
  if (*v2)
  {
    v4 = *(*v2 + 250);
    *a2 = static Alignment.center.getter();
    a2[1] = v5;
    v6 = sub_1000040A8(&qword_100357C80, &unk_10027C070);
    return sub_1001607CC(v4, a2 + *(v6 + 44));
  }

  else
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_100161A88(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10016138C()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1001613DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100361300;
  if (!qword_100361300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361300);
  }

  return result;
}

unint64_t sub_100161440()
{
  result = qword_100361308;
  if (!qword_100361308)
  {
    sub_100008CF0(&qword_1003612B8, &qword_100289548);
    sub_1001614F8();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361308);
  }

  return result;
}

unint64_t sub_1001614F8()
{
  result = qword_100361310;
  if (!qword_100361310)
  {
    sub_100008CF0(&qword_1003612D8, &qword_100289568);
    sub_100009274(&qword_100361318, &qword_100361320, &qword_100289630, &protocol conformance descriptor for Button<A>);
    sub_100009274(&qword_100355098, &qword_1003550A0, &qword_100277F40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361310);
  }

  return result;
}

unint64_t sub_1001615DC()
{
  result = qword_100361328;
  if (!qword_100361328)
  {
    sub_100008CF0(&qword_1003612D0, &qword_100289560);
    sub_100008CF0(&qword_1003612D8, &qword_100289568);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_1001614F8();
    sub_100161A88(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740, &qword_10027B2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361328);
  }

  return result;
}

unint64_t sub_100161720()
{
  result = qword_100361330;
  if (!qword_100361330)
  {
    sub_100008CF0(&qword_1003612C0, &qword_100289550);
    sub_100008CF0(&qword_1003612B8, &qword_100289548);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_100161440();
    sub_100161A88(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361330);
  }

  return result;
}

unint64_t sub_100161838()
{
  result = qword_100361338;
  if (!qword_100361338)
  {
    sub_100008CF0(&qword_1003612E0, &qword_100289570);
    sub_1001615DC();
    sub_100161720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361338);
  }

  return result;
}

uint64_t sub_1001618E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100357BD8, qword_1002896D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161954()
{
  sub_100008964((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1001619B4()
{
  result = qword_100361348;
  if (!qword_100361348)
  {
    sub_100008CF0(&qword_100361350, &qword_100289748);
    sub_100009274(&qword_100361358, &qword_100361360, &qword_100289750, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361348);
  }

  return result;
}

uint64_t sub_100161A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100161C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100361368;
  if (!qword_100361368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361368);
  }

  return result;
}

unint64_t sub_100161CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100161CF4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100161CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100361370;
  if (!qword_100361370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361370);
  }

  return result;
}

uint64_t sub_100161D48()
{
  sub_1000040A8(&qword_10035DBF0, &unk_1002902F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100279160;
  v1 = [objc_opt_self() mainBundle];
  v6._object = 0x800000010029CA60;
  v2._object = 0x800000010029CA40;
  v6._countAndFlagsBits = 0xD00000000000003CLL;
  v2._countAndFlagsBits = 0xD000000000000019;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v6);

  *(v0 + 32) = v4;
  *(v0 + 48) = 256;
  return v0;
}

uint64_t sub_100161E34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100161E54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 49) = v3;
  return result;
}

void sub_100161EA0(char a1, double a2)
{
  if (a1)
  {
    v3 = *(v2 + 24);
    if (*(v2 + 32))
    {
      v3 = a2;
    }

    *(v2 + 24) = v3;
    *(v2 + 32) = 0;
    v4 = *(v2 + 8);
    if (*(v2 + 48))
    {
      v5 = a2 - v3 - *(v2 + 16);
    }

    else
    {
      v5 = a2 - *(v2 + 40) - v4 * ceil((v3 - *(v2 + 40)) / v4) - *(v2 + 16);
    }

    if (v5 < 0.0)
    {
      v5 = 0.0;
    }

    fmod(v5, v4);
  }

  else
  {
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
  }
}

float sub_100161F44(char a1, double a2)
{
  if (a1)
  {
    v3 = *(v2 + 24);
    if (*(v2 + 32))
    {
      v3 = a2;
    }

    *(v2 + 24) = v3;
    *(v2 + 32) = 0;
    if (*(v2 + 48))
    {
      v4 = a2 - v3;
      v5 = *(v2 + 8);
      v6 = v4 - *(v2 + 16);
    }

    else
    {
      v8 = *(v2 + 40);
      v9 = v3 - v8;
      v5 = *(v2 + 8);
      v6 = a2 - v8 - v5 * ceil(v9 / v5) - *(v2 + 16);
    }

    if (v6 < 0.0)
    {
      v6 = 0.0;
    }

    return 0.5 - cos((v6 + v6) * 3.14159265 / v5) * 0.5;
  }

  else
  {
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
    return *v2;
  }
}

void *sub_100161FFC()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
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

  v22[1] = sub_10000F574();
  v27[0] = v8;
  v27[1] = v10;

  v11._object = 0x80000001002A04B0;
  v11._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v11);

  static DispatchQoS.unspecified.getter();
  v27[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20, &unk_100278D40);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20, &unk_100278D40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v24 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v12;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381D88);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v1;
    v27[0] = v17;
    *v16 = 136446210;
    type metadata accessor for ToneLibraryAgent();

    v18 = String.init<A>(describing:)();
    v20 = sub_10017C9E8(v18, v19, v27);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}s] init", v16, 0xCu);
    sub_100008964(v17);
  }

  return v1;
}

id *sub_10016242C()
{
  v1 = v0;
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381D88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for ToneLibraryAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1001625B8()
{
  sub_10016242C();

  return swift_deallocClassInstance();
}

uint64_t sub_100162610()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A68 == -1)
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
  sub_10000F53C(v7, qword_100381D88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Stopping ToneLibraryAgent", v10, 2u);
  }

  v11 = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001647F8;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1000EC2C8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100193668;
  aBlock[3] = &unk_1003337B0;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v11, v13);
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001628DC(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  aBlock[4] = sub_1001647E8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100333760;
  v16 = _Block_copy(aBlock);

  sub_10001D9B4(a2, a3);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_100162BEC(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100162F94(a2 & 1, a3, a4);
  }

  return result;
}

uint64_t sub_100162C68()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100164798;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100333710;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_100162F3C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100163EDC();
  }

  return result;
}

void sub_100162F94(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v86 = *(v12 - 8);
  v87 = v12;
  __chkstk_darwin(v12);
  v85 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v4[2];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14, v16);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    if (qword_100353A68 == -1)
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
  v21 = type metadata accessor for Logger();
  sub_10000F53C(v21, qword_100381D88);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v92 = a2;
  v83 = v9;
  v84 = v8;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    LOBYTE(v93) = a1 & 1;
    v27 = String.init<A>(describing:)();
    v29 = sub_10017C9E8(v27, v28, &aBlock);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Play %s", v25, 0xCu);
    sub_100008964(v26);
  }

  sub_100163EDC();
  v30 = [objc_allocWithZone(TLAlertConfiguration) initWithType:22];
  [v30 setTopic:TLAlertTopicSOSCountdownTick];
  [v30 setShouldIgnoreRingerSwitch:1];
  [v30 setMaximumDuration:0.85];
  if (a1)
  {
    [v30 setToneIdentifier:TLToneIdentifierNone];
    [v30 setMaximumDuration:0.85];
  }

  v31 = [objc_opt_self() alertWithConfiguration:v30];
  if (v31)
  {
    v32 = v31;
    v82 = a3;
    v33 = [objc_allocWithZone(TLAlertActivationAssertion) initWithAlert:v31];
    v34 = v4[4];
    v4[4] = v33;
    v35 = v33;

    [v35 acquire];
    sub_10016436C();
    v36 = v30;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v81 = v36;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock = v41;
      *v40 = 136315138;
      v42 = v36;
      v43 = [v42 description];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10017C9E8(v44, v46, &aBlock);

      *(v40 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v37, v38, "Playing alert with configuration: %s", v40, 0xCu);
      sub_100008964(v41);
    }

    v48 = v4[3];
    v4[3] = v32;
    v49 = v32;
    v80 = v49;

    v50 = dispatch_group_create();
    dispatch_group_enter(v50);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 1;
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = v50;
    v98 = sub_1001646D8;
    v99 = v52;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_100163BE0;
    v97 = &unk_100333670;
    v53 = _Block_copy(&aBlock);

    v54 = v50;

    [v49 playWithCompletionHandler:v53];
    _Block_release(v53);
    sub_10000F574();
    v56 = v85;
    v55 = v86;
    v57 = v87;
    (*(v86 + 104))(v85, enum case for DispatchQoS.QoSClass.userInitiated(_:), v87);
    v79 = static OS_dispatch_queue.global(qos:)();
    (*(v55 + 8))(v56, v57);
    v58 = swift_allocObject();
    swift_weakInit();
    v59 = swift_allocObject();
    v59[2] = v54;
    v59[3] = v58;
    v60 = v92;
    v61 = v82;
    v59[4] = v92;
    v59[5] = v61;
    v59[6] = v51;
    v98 = sub_100164788;
    v99 = v59;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_1001D2438;
    v97 = &unk_1003336E8;
    v62 = _Block_copy(&aBlock);

    v63 = v54;

    sub_10001D9B4(v60, v61);
    v64 = v88;
    static DispatchQoS.unspecified.getter();
    v93 = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
    v65 = v90;
    v66 = v84;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v67 = v79;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v62);

    (*(v83 + 8))(v65, v66);
    (*(v89 + 8))(v64, v91);
  }

  else
  {
    v68 = v30;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock = v72;
      *v71 = 136315138;
      v73 = v68;
      v74 = [v73 description];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78 = sub_10017C9E8(v75, v77, &aBlock);

      *(v71 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v69, v70, "Failed to create alert with configuration: %s", v71, 0xCu);
      sub_100008964(v72);
    }

    if (v92)
    {
      v92(0);
    }
  }
}

void sub_100163A14(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381D88);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315138;
    swift_beginAccess();
    v12 = *(a3 + 24);
    v16[1] = *(a3 + 16);
    v17 = v12;
    sub_1000040A8(&qword_100361490, &qword_100289980);
    v13 = String.init<A>(describing:)();
    v15 = sub_10017C9E8(v13, v14, v16);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Played alert with completion: %s", v10, 0xCu);
    sub_100008964(v11);
  }

  swift_beginAccess();
  *(a3 + 16) = a1;
  *(a3 + 24) = 0;
  dispatch_group_leave(a4);
}

void sub_100163BE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100163C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  static DispatchTime.now()();
  + infix(_:_:)();
  v14 = *(v8 + 8);
  v14(v10, v7);
  OS_dispatch_group.wait(timeout:)();
  v14(v13, v7);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    swift_beginAccess();
    if (*(a5 + 24))
    {
      result = 0;
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      result = *(a5 + 16) < 2uLL;
      if (!a3)
      {
        return result;
      }
    }

    return a3(result);
  }

  if (qword_100353A68 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F53C(v16, qword_100381D88);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Timed out waiting for playback to complete", v19, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100162C68();
  }

  if (a3)
  {
    result = 0;
    return a3(result);
  }

  return result;
}

void sub_100163EDC()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v2[2];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v10 = v2[3];
  p_base_meths = &ConnectionClosedModel.base_meths;
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = qword_100353A68;
  v7 = v10;
  if (v11 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381D88);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Stopping current alert", v15, 2u);
  }

  [v7 stop];
  v16 = v2[3];
  v2[3] = 0;

LABEL_7:
  v17 = v2[4];
  if (v17)
  {
    v18 = p_base_meths[333];
    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000F53C(v20, qword_100381D88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Releasing alert activation assertion", v23, 2u);
    }

    [v19 relinquish];
    v24 = v2[4];
    v2[4] = 0;
  }
}

uint64_t sub_1001641AC()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    if (qword_100353A68 == -1)
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
  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381D88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting ToneLibraryAgent", v8, 2u);
  }

  return 1;
}

void sub_10016436C()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = String._bridgeToObjectiveC()();

  v17 = 0;
  v5 = [v1 setAttribute:v4 forKey:AVSystemController_AllowAppToInitiatePlaybackTemporarilyAttribute error:&v17];

  v6 = v17;
  if (v5)
  {

    v7 = v6;
  }

  else
  {
    v8 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100353A68 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F53C(v9, qword_100381D88);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error temporarily blessing app for playback initialization: %{public}s", v12, 0xCu);
      sub_100008964(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_100164698()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1001646E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001646F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100164730()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001647A0()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100164820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100361498;
  if (!qword_100361498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100361498);
  }

  return result;
}

uint64_t ConnectionAssistantRenderer.__allocating_init(style:device:pixelFormat:)(char a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConnectionAssistantRenderer.init(style:device:pixelFormat:)(a1 & 1, a2, a3);
  return v6;
}

void *ConnectionAssistantRenderer.init(style:device:pixelFormat:)(char a1, void *a2, uint64_t a3)
{
  v5 = v3;
  type metadata accessor for ConnectionAssistantRenderer.Buffers();
  swift_allocObject();
  v9 = swift_unknownObjectRetain();
  v10 = ConnectionAssistantRenderer.Buffers.init(device:)(v9);
  if (!v4)
  {
    v3[2] = v10;
    v11 = qword_100353B88;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v43[6] = xmmword_100382050;
    v43[7] = *&qword_100382060;
    v43[8] = xmmword_100382070;
    v43[2] = xmmword_100382010;
    v43[3] = *&dword_100382020;
    v43[4] = xmmword_100382030;
    v43[5] = xmmword_100382040;
    v43[0] = static ConnectionAssistantRenderer.RenderPipelines.Constants.default;
    v43[1] = xmmword_100382000;
    type metadata accessor for ConnectionAssistantRenderer.RenderPipelines();
    swift_allocObject();
    v12 = ConnectionAssistantRenderer.RenderPipelines.init(device:constants:pixelFormat:)(a2, v43, a3);
    v3[3] = v12;
    v13 = v3[2];
    v14 = v12;
    type metadata accessor for ConnectionAssistantStarsRenderer();
    swift_allocObject();
    swift_unknownObjectRetain();

    v5[4] = ConnectionAssistantStarsRenderer.init(device:buffers:renderPipelines:)(a2, v13, v14);
    v15 = v5[2];
    v16 = v5[3];
    if (a1)
    {
      v17 = type metadata accessor for ConnectionAssistantEarthTexturedRenderer();
      swift_allocObject();
      swift_unknownObjectRetain();

      v18 = ConnectionAssistantEarthTexturedRenderer.init(device:buffers:renderPipelines:)(a2, v15, v16);
      v19 = &off_1003280D8;
    }

    else
    {
      v17 = type metadata accessor for ConnectionAssistantEarthRenderer();
      swift_allocObject();
      swift_unknownObjectRetain();

      v18 = ConnectionAssistantEarthRenderer.init(device:buffers:renderPipelines:)(a2, v15, v16);
      v19 = &off_100331920;
    }

    v41 = v17;
    v42 = v19;
    *&v40 = v18;
    sub_100008A18(&v40, (v5 + 5));
    v21 = v5[2];
    v22 = v5[3];
    swift_unknownObjectRetain();

    v25 = [a2 newBufferWithLength:80 options:1];
    if (v25)
    {
      swift_unknownObjectRelease();
      v5[10] = v21;
      v5[11] = v22;
      v5[12] = v25;
      v27 = v5[2];
      v26 = v5[3];
      swift_unknownObjectRetain();

      v5[13] = sub_1001C86CC(a2, v27, v26);
      v5[14] = v29;
      v5[15] = v30;
      v5[16] = v31;
      v32 = v5[2];
      v33 = v5[3];
      swift_unknownObjectRetain();

      v34 = [a2 newBufferWithLength:96 options:1];
      if (v34)
      {
        v37 = v34;
        swift_unknownObjectRelease();
        v5[17] = v32;
        v5[18] = v33;
        v5[19] = v37;
        v38 = v5[2];
        v39 = v5[3];
        type metadata accessor for ConnectionAssistantSatelliteRenderer();
        swift_allocObject();

        v5[20] = ConnectionAssistantSatelliteRenderer.init(device:buffers:renderPipelines:)(a2, v38, v39);
        return v5;
      }

      sub_100022AD4(0, v35, v36);
      swift_allocError();
      swift_willThrow();

      swift_unknownObjectRelease_n();
      v28 = 1;
      LODWORD(v25) = 1;
    }

    else
    {
      sub_100022AD4(0, v23, v24);
      swift_allocError();
      swift_willThrow();

      swift_unknownObjectRelease_n();
      v28 = 0;
    }

    sub_100008964(v5 + 5);
    if (v28)
    {
      swift_unknownObjectRelease();

      if ((v25 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (!v25)
    {
      goto LABEL_12;
    }

    swift_unknownObjectRelease();

    goto LABEL_12;
  }

  swift_unknownObjectRelease();
LABEL_12:
  type metadata accessor for ConnectionAssistantRenderer();
  swift_deallocPartialClassInstance();
  return v5;
}

void ConnectionAssistantRenderer.render(dt:earth:camera:commandBuffer:renderPassDescriptor:)(uint64_t a1, float32x4_t *a2, id a3, void *a4, double a5)
{
  LOBYTE(v242) = 1;
  v224 = 0u;
  v225 = 0u;
  v226 = 0u;
  v223 = 2000;
  v227 = 0;
  v228 = 1;
  v230 = 0;
  v229 = 0;
  v231 = 1;
  v232 = xmmword_10027DDA0;
  v161 = *(a1 + 32);
  v162 = *a1;
  v10 = [a3 computeCommandEncoder];
  if (v10)
  {
    v11 = v10;
    ConnectionAssistantStarsRenderer.compute(dt:stars:computeCommandEncoder:)(&v223, v10, a5);
    if ((*(a1 + 273) & 1) == 0)
    {
      v12 = *(a1 + 240);
      v221[4] = *(a1 + 224);
      v221[5] = v12;
      v221[6] = *(a1 + 256);
      v222 = *(a1 + 272);
      v13 = *(a1 + 176);
      v221[0] = *(a1 + 160);
      v221[1] = v13;
      v14 = *(a1 + 208);
      v221[2] = *(a1 + 192);
      v221[3] = v14;
      sub_1001C8800(v221, v183);
      ConnectionAssistantStarsRenderer.compute(dt:stars:computeCommandEncoder:)(v183, v11, a5);
    }

    v15 = *(a1 + 480);
    v239 = *(a1 + 464);
    v240 = v15;
    *v241 = *(a1 + 496);
    v16 = *(a1 + 416);
    v235 = *(a1 + 400);
    v236 = v16;
    v17 = *(a1 + 448);
    v237 = *(a1 + 432);
    v238 = v17;
    v18 = *(a1 + 384);
    v233 = *(a1 + 368);
    v234 = v18;
    *&v241[15] = *(a1 + 511);
    if (sub_1000E45DC(&v233) != 1)
    {
      v217 = v239;
      v218 = v240;
      v219 = *v241;
      v220 = *&v241[16];
      v213 = v235;
      v214 = v236;
      v215 = v237;
      v216 = v238;
      v211 = v233;
      v212 = v234;
      ConnectionAssistantSatellite.cone(camera:earth:)(a2, a1, v184);
      if ((v186 & 1) == 0)
      {
        v193[4] = v184[4];
        v193[5] = v184[5];
        v193[6] = v184[6];
        v194 = v185;
        v193[0] = v184[0];
        v193[1] = v184[1];
        v193[2] = v184[2];
        v193[3] = v184[3];
        sub_1001C8800(v193, v187);
        ConnectionAssistantStarsRenderer.compute(dt:stars:computeCommandEncoder:)(v187, v11, a5);
      }
    }

    [v11 endEncoding];
    swift_unknownObjectRelease();
  }

  v19 = [a4 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:0];

  if (v20)
  {
    v21 = [v20 texture];

    if (v21)
    {
      v22 = [a3 renderCommandEncoderWithDescriptor:a4];
      if (v22)
      {
        v23 = v22;
        v24 = String._bridgeToObjectiveC()();
        [v23 setLabel:v24];

        v25 = *a2[1].i64;
        v242 = 0uLL;
        v158 = *a2;
        v243 = vcvtq_f64_s64(*a2);
        *v244 = xmmword_10027F380;
        [v23 setViewport:&v242];
        [v23 setCullMode:0];
        v26 = *(*(v163 + 16) + 32);
        v27 = 1.0;
        v28.i32[0] = 1.0;
        if (v158.i64[0])
        {
          v28.i32[0] = 1.0;
          if (v158.i64[1])
          {
            v29 = v158.i64[0] / v158.i64[1];
            v27 = fminf(v29, 1.0);
            v28.f32[0] = fmaxf(v29, 1.0);
          }
        }

        v28.f32[1] = 1.0 / v27;
        v157 = v28;
        v30 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(v158.i64[0], v158.i64[1], v25);
        v159 = matrix_identity_float4x4.columns[0];
        v149 = matrix_identity_float4x4.columns[2];
        v152 = matrix_identity_float4x4.columns[1];
        v144 = matrix_identity_float4x4.columns[3];
        v31 = [swift_unknownObjectRetain_n() contents];
        v32 = v26;
        *v31->f32 = v157;
        v31->f32[2] = v30;
        v31[1] = v159;
        v31[2] = v152;
        v31[3] = v149;
        v31[4] = v144;
        swift_unknownObjectRelease();
        v33 = *(v163 + 32);
        v34 = v33[9];
        v160 = a2;
        v156 = v21;
        if (v34)
        {
          v35 = v33[10];
          v36 = v33[11];
          v38 = v33[7];
          v37 = v33[8];
          swift_unknownObjectRetain();
          sub_1000231A8(v37, v34, v35, v36);
          v39 = [v38 contents];
          v40 = v38;
          *v39 = 1065353216;
          v150 = a2[21];
          v153 = a2[20];
          v141 = a2[23];
          v145 = a2[22];
          v41 = v33[6];
          v42 = [swift_unknownObjectRetain() contents];
          v43 = v41;
          *v42->f32 = v162;
          v42[2] = v157;
          v42[3].f32[0] = v30;
          *v42[4].f32 = v153;
          *v42[6].f32 = v150;
          *v42[8].f32 = v145;
          *v42[10].f32 = v141;
          v44 = sub_100254A80(0);
          if (v44)
          {
            v45 = v44;
            v46 = String._bridgeToObjectiveC()();
            [v23 setLabel:v46];

            [v23 setRenderPipelineState:v45];
            [v23 setVertexBuffer:v33[6] offset:0 atIndex:0];
            [v23 setVertexBuffer:v34 offset:0 atIndex:1];
            [v23 setVertexBuffer:v36 offset:0 atIndex:2];
            [v23 setFragmentBuffer:v33[7] offset:0 atIndex:0];
            [v23 drawPrimitives:3 vertexStart:0 vertexCount:v35];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          a2 = v160;
          v21 = v156;
        }

        v151 = v25;
        v47 = *(v163 + 64);
        v48 = *(v163 + 72);
        sub_1000088DC((v163 + 40), v47);
        (*(v48 + 8))(a1, a2, v23, v47, v48);
        if ((*(a1 + 273) & 1) == 0)
        {
          v49 = *(a1 + 240);
          v209[4] = *(a1 + 224);
          v209[5] = v49;
          v209[6] = *(a1 + 256);
          v210 = *(a1 + 272);
          v50 = *(a1 + 176);
          v209[0] = *(a1 + 160);
          v209[1] = v50;
          v51 = *(a1 + 208);
          v209[2] = *(a1 + 192);
          v209[3] = v51;
          ConnectionAssistantConeRenderer.render(cone:parameters:camera:destination:renderCommandEncoder:)(v209, a2, v21, v23, *(v163 + 104), *(v163 + 112), *(v163 + 120), *(v163 + 128), v162, v161);
        }

        if ((*(a1 + 148) & 1) == 0)
        {
          v53 = *(a1 + 112);
          v52 = *(a1 + 128);
          v54 = *(a1 + 144);
          v55 = *(a1 + 96);
          v204 = *(a1 + 80);
          v205 = v55;
          v139 = v204;
          v142 = v53;
          v206 = v53;
          v207 = v52;
          v146 = v52;
          v208 = v54;
          v56 = *(v163 + 80);
          v154 = *(v163 + 96);
          v57 = ConnectionAssistantLocationDot.project(from:camera:)(v160, v162);
          if ((v60 & 0x100000000) == 0)
          {
            v61 = v60;
            v62 = vmulq_f32(v139, v139);
            *&v63 = v62.f32[2] + vaddv_f32(*v62.f32);
            *v62.f32 = vrsqrte_f32(v63);
            *v62.f32 = vmul_f32(*v62.f32, vrsqrts_f32(v63, vmul_f32(*v62.f32, *v62.f32)));
            v64 = vsubq_f32(0, v160[5]);
            v64.f32[2] = 0.0 - COERCE_FLOAT(v160[5].i64[1]);
            v65 = vmulq_f32(vmulq_n_f32(v139, vmul_f32(*v62.f32, vrsqrts_f32(v63, vmul_f32(*v62.f32, *v62.f32))).f32[0]), v64);
            v65.f32[0] = fminf(fmaxf(((v65.f32[2] + vaddv_f32(*v65.f32)) + 0.05) / 0.1, 0.0), 1.0);
            v66 = v54 * ((v65.f32[0] * v65.f32[0]) * ((v65.f32[0] * -2.0) + 3.0));
            v67 = v59;
            v68 = v58;
            v69 = v57;
            v70 = [swift_unknownObjectRetain() contents];
            v71 = v56;
            v72 = v69;
            v73 = v68;
            v74 = v154;
            v70->f32[0] = v30;
            *v70[2].f32 = v142;
            v70[4] = v72;
            v70[5].i32[0] = v68;
            *v70[6].f32 = v146;
            v70[8] = v67;
            v70[9].i32[0] = v61;
            v70[9].f32[1] = v66;
            v75 = sub_100254A80(4);
            if (v75)
            {
              v76 = v75;
              v77 = String._bridgeToObjectiveC()();
              [v23 setLabel:v77];

              [v23 setRenderPipelineState:v76];
              v78.i32[0] = v73;
              v79.i32[0] = v61;
              v80 = ConnectionAssistantLocationDot.Projection.boundingBox.getter(v72, v78, v67, v79);
              *&v242 = sub_1000FFA74([v156 width], objc_msgSend(v156, "height"), v80, v81, v157);
              *(&v242 + 1) = v82;
              v243.f64[0] = v83;
              v243.f64[1] = v84;
              [v23 setScissorRect:&v242];
              [v23 setVertexBuffer:*(v71 + 24) offset:0 atIndex:0];
              [v23 setVertexBuffer:*(v71 + 32) offset:0 atIndex:1];
              [v23 setFragmentBuffer:v154 offset:0 atIndex:0];
              [v23 drawPrimitives:4 vertexStart:0 vertexCount:4];
              swift_unknownObjectRelease();
            }
          }
        }

        v155 = v30;
        if ((*(a1 + 356) & 1) == 0)
        {
          v85 = *(a1 + 288);
          v86 = *(a1 + 292);
          v87 = *(a1 + 304);
          v88 = *(a1 + 308);
          v89 = *(a1 + 312);
          v90 = *(a1 + 316);
          v91 = *(a1 + 320);
          v92 = *(a1 + 324);
          v93 = *(a1 + 328);
          v94 = *(a1 + 336);
          v95 = *(a1 + 352);
          v96 = *(a1 + 332);
          v97 = *(a1 + 296);
          v170 = v85;
          v171 = v86;
          v172 = v97;
          v173 = v87;
          v174 = v88;
          v175 = v89;
          v176 = v90;
          v177 = v91;
          v178 = v92;
          v147 = v93;
          v179 = v93;
          v180 = v96;
          v143 = v94;
          v181 = v94;
          v140 = v95;
          v182 = v95;
          v138 = *(v163 + 136);
          v98 = *(v163 + 152);
          v99 = ConnectionAssistantArrow.project(center:camera:)(v160, v162);
          if ((v100 & 0x100000000) == 0)
          {
            v101 = v99;
            v102 = *&v100;
            v103 = [swift_unknownObjectRetain() contents];
            v104 = v98;
            v103->f32[0] = v155;
            v103->i32[1] = v85;
            v103[1].i32[0] = v86;
            v103[2] = v101;
            v103[3].f32[0] = v102;
            v103[3].i32[1] = v87;
            v103[4].i32[0] = v88;
            v103[4].i32[1] = v89;
            v103[5].i32[0] = v90;
            v103[5].i32[1] = v91;
            v103[6].i32[0] = v92;
            v103[6].i32[1] = v147;
            *v103[8].f32 = v143;
            v103[10].i32[0] = v140;
            v105 = sub_100254A80(6);
            if (v105)
            {
              v106 = v105;
              v107 = String._bridgeToObjectiveC()();
              [v23 setLabel:v107];

              [v23 setRenderPipelineState:v106];
              v108 = ConnectionAssistantArrow.boundingBox(pointSize:projection:)(v155, v101, v102);
              *&v242 = sub_1000FFA74([v156 width], objc_msgSend(v156, "height"), v108, v109, v157);
              *(&v242 + 1) = v110;
              v243.f64[0] = v111;
              v243.f64[1] = v112;
              [v23 setScissorRect:&v242];
              [v23 setVertexBuffer:*(v138 + 24) offset:0 atIndex:0];
              [v23 setVertexBuffer:*(v138 + 32) offset:0 atIndex:1];
              [v23 setFragmentBuffer:v98 offset:0 atIndex:0];
              [v23 drawPrimitives:4 vertexStart:0 vertexCount:4];
              swift_unknownObjectRelease();
            }
          }
        }

        v113 = *(a1 + 480);
        *&v244[64] = *(a1 + 464);
        *&v244[80] = v113;
        *&v244[96] = *(a1 + 496);
        v114 = *(a1 + 416);
        *v244 = *(a1 + 400);
        *&v244[16] = v114;
        v115 = *(a1 + 448);
        *&v244[32] = *(a1 + 432);
        *&v244[48] = v115;
        v116 = *(a1 + 384);
        v242 = *(a1 + 368);
        v243 = v116;
        *&v244[111] = *(a1 + 511);
        if (sub_1000E45DC(&v242) != 1)
        {
          v118 = *(&v242 + 2);
          v119 = *v244;
          v201 = *&v244[52];
          v202 = *&v244[68];
          v203[0] = *&v244[84];
          *(v203 + 14) = *&v244[98];
          v198 = *&v244[4];
          v199 = *&v244[20];
          v200 = *&v244[36];
          v195 = v242;
          v148 = v243;
          v196 = v243;
          v197 = *v244;
          v120 = *(v163 + 160);
          ConnectionAssistantSatellite.cone(camera:earth:)(v160, a1, v188);
          if ((v190 & 1) == 0)
          {
            v191[4] = v188[4];
            v191[5] = v188[5];
            v191[6] = v188[6];
            v192 = v189;
            v191[0] = v188[0];
            v191[1] = v188[1];
            v191[2] = v188[2];
            v191[3] = v188[3];
            ConnectionAssistantConeRenderer.render(cone:parameters:camera:destination:renderCommandEncoder:)(v191, v160, v156, v23, *(v120 + 40), *(v120 + 48), *(v120 + 56), *(v120 + 64), v162, v161);
          }

          *v121.i64 = ConnectionAssistantSatellite.center(camera:earthCenter:)(v160, v162);
          v117 = ConnectionAssistantCamera.projectUV(point:)(v121).n64_f64[0];
          if ((v123 & 1) == 0)
          {
            v124 = v122.n64_f64[0];
            v125 = *(v120 + 72);
            v126 = [swift_unknownObjectRetain() contents];
            v127 = v125;
            *v126 = v148;
            LODWORD(v126[1].f64[0]) = v119;
            sub_1000E6B38(v151, v118);
            v128 = *(v120 + 112);
            if (v128)
            {
              v129 = *(v120 + 96);
              v130 = *(v120 + 104);
              swift_unknownObjectRetain();
              v131 = sub_100254A80(7);
              if (v131)
              {
                v132 = v131;
                v133 = String._bridgeToObjectiveC()();
                [v23 setLabel:v133];

                [v23 setRenderPipelineState:v132];
                v164 = 0;
                v165 = 0;
                *&v166 = [v156 width];
                *(&v166 + 1) = [v156 height];
                [v23 setScissorRect:&v164];
                [v23 setVertexBuffer:*(*(v120 + 24) + 24) offset:0 atIndex:0];
                *&v134 = ConnectionAssistantSatellite.model(projectedCenter:textureSize:camera:)(v129, v130, v160, v124);
                v164 = v157;
                *&v165 = v155;
                v166 = v134;
                v167 = v135;
                v168 = v136;
                v169 = v137;
                [v23 setVertexBytes:&v164 length:80 atIndex:1];
                [v23 setFragmentBuffer:*(v120 + 72) offset:0 atIndex:0];
                [v23 setFragmentTexture:v128 atIndex:0];
                [v23 drawPrimitives:4 vertexStart:0 vertexCount:4];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }
          }
        }

        [v23 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void *ConnectionAssistantRenderer.deinit()
{

  sub_100008964((v0 + 40));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t ConnectionAssistantRenderer.__deallocating_deinit()
{
  ConnectionAssistantRenderer.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_100165EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003614A0;
  if (!qword_1003614A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003614A0);
  }

  return result;
}

void sub_100165F14(char a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *v1;
  if (a1 == 2)
  {
    v5 = String._bridgeToObjectiveC()();
    [v4 removeObjectForKey:v5];

    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381C80);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10017C9E8(v3, v2, &v20);
      _os_log_impl(&_mh_execute_header, oslog, v7, "UserDefaults: %{public}s removed", v8, 0xCu);
      sub_100008964(v9);
    }

    else
    {
    }
  }

  else
  {
    LOBYTE(v20) = a1 & 1;
    v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v11 = String._bridgeToObjectiveC()();
    [v4 setObject:v10 forKey:v11];
    swift_unknownObjectRelease();

    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F53C(v12, qword_100381C80);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_10017C9E8(v3, v2, &v20);
      *(v15 + 12) = 2082;
      v16 = String.init<A>(describing:)();
      v18 = sub_10017C9E8(v16, v17, &v20);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v13, v14, "UserDefaults: %{public}s = %{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_100166274()
{
  v1 = v0;
  v118 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for DispatchQoS();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchPredicate();
  v127 = *(v4 - 8);
  __chkstk_darwin(v4);
  v119 = (v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchTime();
  v112 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v108 - v10;
  __chkstk_darwin(v12);
  v110 = v108 - v13;
  __chkstk_darwin(v14);
  v111 = v108 - v15;
  __chkstk_darwin(v16);
  v19 = v108 - v18;
  if (qword_100353A10 != -1)
  {
    v107 = v17;
    swift_once();
    v17 = v107;
  }

  v120 = v4;
  v108[0] = v8;
  v122 = v11;
  v124 = v17;
  v20 = type metadata accessor for Logger();
  v21 = sub_10000F53C(v20, qword_100381C80);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "SOSBuddyEnvironment start", v24, 2u);
  }

  v123 = v19;
  static DispatchTime.now()();
  v25 = v1[31];
  v26 = v1[32];
  sub_1000088DC(v1 + 28, v25);
  (*(v26 + 56))(v1, &off_100333A98, v25, v26);
  v27 = v1[40];
  *(v27 + 112) = &off_100333AE8;
  v126 = v27;
  swift_unknownObjectWeakAssign();
  *(*sub_1000088DC(v1 + 34, v1[37]) + 56) = &off_100333B20;
  v121 = v1;
  swift_unknownObjectWeakAssign();
  v28 = 0;
  *&v29 = 136315650;
  v128 = v29;
  do
  {
    v41 = *(&off_100321440 + v28 + 32);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v30 = v21;
      v31 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v31 = v128;
      v32 = StaticString.description.getter();
      v34 = sub_10017C9E8(v32, v33, aBlock);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      v35 = StaticString.description.getter();
      v37 = sub_10017C9E8(v35, v36, aBlock);

      *(v31 + 14) = v37;
      *(v31 + 22) = 1024;
      *(&v135 + 1) = &type metadata for UIFeatureFlags;
      *&v136 = sub_10017E6B8(v38, v39, v40);
      LOBYTE(v134) = v41;
      LOBYTE(v34) = isFeatureEnabled(_:)();
      sub_100008964(&v134);
      *(v31 + 24) = v34 & 1;
      _os_log_impl(&_mh_execute_header, v42, v43, "Feature flag: (%s-%s) -> %{BOOL}d", v31, 0x1Cu);
      swift_arrayDestroy();

      v21 = v30;
    }

    else
    {
    }

    ++v28;
  }

  while (v28 != 4);
  v44 = v121;
  sub_100170010();
  v45 = v44[31];
  v46 = v44[32];
  sub_1000088DC(v44 + 28, v45);
  (*(v46 + 64))(v45, v46);
  sub_1000291EC();
  sub_1000088DC(v44 + 34, v44[37]);
  sub_1001A6C8C();
  v47 = v44[20];
  sub_100075454();
  sub_100109B88();
  v48 = sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  v49 = static OS_dispatch_queue.main.getter();
  v50 = v119;
  *v119 = v49;
  v51 = v127;
  v52 = *(v127 + 104);
  LODWORD(v128) = enum case for DispatchPredicate.onQueue(_:);
  v53 = v120;
  v126 = v52;
  v125 = v127 + 104;
  v52(v50);
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  v56 = *(v51 + 8);
  v54 = v51 + 8;
  v55 = v56;
  result = v56(v50, v53);
  if ((v45 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v109 = v47;
  v58 = v44[43];
  v59 = v44[22];
  v60 = v55;
  v61 = v54;
  *v50 = static OS_dispatch_queue.main.getter();
  v126(v50, v128, v53);
  v62 = _dispatchPreconditionTest(_:)();
  v127 = v61;
  result = v60(v50, v53);
  if ((v62 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v108[2] = v21;
  v63 = v59;
  swift_unknownObjectWeakAssign();
  v64 = v60;
  v65 = v53;
  *(v58 + 24) = 1;
  v66 = v44[8];
  v67 = v48;
  v68 = v66[7];
  v69 = v66[8];

  sub_100045B84(v68, v69);

  sub_10012CDDC();
  sub_100089D44();
  sub_1001E5084();
  v70 = v44[9];
  v71 = v66[13];
  v72 = *(v71 + 48);
  v73 = *(v71 + 56);

  sub_10017DA80(v72, v73, v44, v70);

  v74 = v44[14];
  v75 = v66[13];
  v76 = *(v75 + 56);
  *(v74 + 256) = *(v75 + 48);
  *(v74 + 264) = v76;

  v77 = v63;

  *(v74 + 56) = &off_1003339F8;
  swift_unknownObjectWeakAssign();
  *(v74 + 72) = &off_10033A078;
  swift_unknownObjectWeakAssign();

  *(v74 + 88) = &off_100333A88;
  swift_unknownObjectWeakAssign();
  v78 = *(v74 + 312);
  v134 = *(v74 + 296);
  v135 = v78;
  v79 = *(v74 + 344);
  v136 = *(v74 + 328);
  v137 = v79;
  *(v74 + 296) = 0;
  *(v74 + 304) = xmmword_10027C550;
  *(v74 + 320) = xmmword_10027C550;
  *(v74 + 344) = 0;
  *(v74 + 352) = 0;
  *(v74 + 336) = 1;
  sub_10006BAFC(&v134);
  sub_10011358C();
  sub_10008329C();
  sub_10014ACE0();
  sub_1000F983C();
  v108[1] = v67;
  *v50 = static OS_dispatch_queue.main.getter();
  v80 = v65;
  v126(v50, v128, v65);
  LOBYTE(v65) = _dispatchPreconditionTest(_:)();
  result = v64(v50, v80);
  if (v65)
  {
    sub_100081824();
    sub_100023E94();
    sub_100085A04();
    sub_10001812C();
    sub_1000088DC(v44 + 34, v44[37]);
    sub_1001A73E8();
    sub_1000E2638();
    v81 = v44[31];
    v82 = v44[32];
    sub_1000088DC(v44 + 28, v81);
    sub_1000089B0(v109 + 48, aBlock);
    v83 = v130;
    v84 = v131;
    sub_1000088DC(aBlock, v130);
    (*(v84 + 1))(v133, v83, v84);
    v85 = sub_1000088DC(v133, v133[3]);
    (*(v82 + 80))(v44, v81, v82, *(*v85 + 16), *(*v85 + 24));
    sub_100008964(v133);
    sub_100008964(aBlock);
    sub_100217FC8(0, 0);
    sub_10024718C(1);
    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();
    v86 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000019, 0x80000001002A0910);
    v126 = static OS_dispatch_queue.main.getter();
    v87 = v110;
    static DispatchTime.now()();
    v88 = v111;
    + infix(_:_:)();
    v89 = v112;
    v127 = *(v112 + 8);
    (v127)(v87, v124);
    v131 = sub_10017E67C;
    v132 = v86;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    v130 = &unk_1003342A0;
    v90 = _Block_copy(aBlock);
    *&v128 = v86;

    v91 = v113;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100071864();
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
    v92 = v115;
    v93 = v124;
    v94 = v118;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v95 = v126;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v90);

    (*(v117 + 8))(v92, v94);
    v96 = v91;
    v97 = v127;
    (*(v114 + 8))(v96, v116);
    v97(v88, v93);
    v98 = v122;
    v99 = v123;
    (*(v89 + 16))(v122, v123, v93);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v99 = swift_slowAlloc();
      *v99 = 134217984;
      v102 = v108[0];
      static DispatchTime.now()();
      v103 = DispatchTime.uptimeNanoseconds.getter();
      if (DispatchTime.uptimeNanoseconds.getter() >= v103)
      {
        v97(v102, v93);
        v105 = 0;
      }

      else
      {
        v98 = DispatchTime.uptimeNanoseconds.getter();
        v104 = DispatchTime.uptimeNanoseconds.getter();
        v97(v102, v93);
        v105 = v98 - v104;
        if (v98 < v104)
        {
          __break(1u);
          goto LABEL_17;
        }
      }

      v106 = v105 / 0xF4240;
      v97(v122, v93);
      *(v99 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v100, v101, "SOSBuddyEnvironment started in %llu ms", v99, 0xCu);

      v99 = v123;
      goto LABEL_20;
    }

LABEL_17:
    v97(v98, v93);

LABEL_20:
    v97(v99, v93);
    return 1;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100167184()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = (v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46[0] = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v46 - v8;
  __chkstk_darwin(v10);
  v12 = v46 - v11;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v47 = v9;
  v13 = type metadata accessor for Logger();
  v46[1] = sub_10000F53C(v13, qword_100381C80);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "SOSBuddyEnvironment stop", v16, 2u);
  }

  v48 = v5;

  static DispatchTime.now()();
  *(*sub_1000088DC((v1 + 272), *(v1 + 296)) + 64) = 0;

  *(*(v1 + 320) + 120) = 0;

  v17 = *(v1 + 248);
  v18 = *(v1 + 256);
  sub_1000088DC((v1 + 224), v17);
  (*(v18 + 72))(v17, v18);
  swift_beginAccess();
  *(v1 + 352) = &_swiftEmptySetSingleton;

  v49 = *(v1 + 64);
  if (*(*(v49 + 32) + 64) && (sub_100071A54() & 1) != 0)
  {
    sub_100245850(3, sub_100245F40, 0);
  }

  sub_100218770();
  sub_100018420();
  v19 = *(v1 + 136);
  v20 = *(v19 + 32);
  sub_100017564();

  *(v19 + 40) = 0;

  sub_1000241C0();
  v21 = *(v1 + 144);
  *(v21 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__mainSceneIsForeground) = 2;
  *(v21 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__screenLocked) = 2;
  v22 = OBJC_IVAR____TtC8SOSBuddy11TryOutModel__connected;
  v23 = *(v21 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__connected);
  if (v23 != 2)
  {
    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  *(v21 + v22) = 2;
  sub_10026A880(v23);
  sub_100267BD0();
  sub_100029DB4();
  sub_1000F9848();
  sub_100146A14();
  sub_1000832A8();
  sub_1000610A4();
  sub_100061FC4();
  sub_10025DDD8();
  sub_1001E53F8();
  sub_10001E730();
  sub_100223BA4();
  v24 = *(v1 + 248);
  v25 = *(v1 + 256);
  sub_1000088DC((v1 + 224), v24);
  (*(v25 + 88))(v24, v25);
  sub_1000088DC((v1 + 272), *(v1 + 296));
  sub_1001A7750();
  sub_100144374();
  sub_10024718C(4);
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  v28 = v50;
  v27 = v51;
  *v50 = v26;
  v29 = v52;
  (*(v27 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v52);
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  result = (*(v27 + 8))(v28, v29);
  if (v24)
  {
    sub_100109B88();
    sub_1001D0230();
    sub_1000E2840();
    *(v1 + 368) = 1538;
    swift_beginAccess();
    sub_100165F14(0);
    swift_endAccess();
    v32 = v47;
    v31 = v48;
    (*(v48 + 16))(v47, v12, v4);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      v42 = *(v31 + 8);
      v42(v32, v4);
LABEL_18:

      return (v42)(v12, v4);
    }

    v35 = v12;
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    v37 = v46[0];
    static DispatchTime.now()();
    v38 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() >= v38)
    {
      v44 = v37;
      v42 = *(v31 + 8);
      v42(v44, v4);
      v43 = 0;
LABEL_17:
      v45 = v43;
      v42(v32, v4);
      *(v36 + 4) = v45 / 0xF4240;
      _os_log_impl(&_mh_execute_header, v33, v34, "SOSBuddyEnvironment stopped in %llu ms", v36, 0xCu);

      v12 = v35;
      goto LABEL_18;
    }

    v39 = DispatchTime.uptimeNanoseconds.getter();
    v40 = DispatchTime.uptimeNanoseconds.getter();
    v41 = v37;
    v42 = *(v31 + 8);
    result = (v42)(v41, v4);
    v43 = v39 - v40;
    if (v39 >= v40)
    {
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10016787C(uint64_t a1)
{
  v2 = v1;
  v57 = type metadata accessor for URL();
  v4 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A10 != -1)
  {
LABEL_34:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_10000F53C(v6, qword_100381C80);

  v54 = v7;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v53 = v2;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v63[0] = v12;
    *v11 = 136446210;
    sub_10001D630(0, &qword_10035E8E0, UIOpenURLContext_ptr);
    v13 = v4;
    sub_10006AFB8(&qword_100356900, &qword_10035E8E0, UIOpenURLContext_ptr, &protocol conformance descriptor for NSObject);
    v14 = Set.description.getter();
    v16 = sub_10017C9E8(v14, v15, v63);

    *(v11 + 4) = v16;
    v4 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "handleURLContexts: %{public}s]", v11, 0xCu);
    sub_100008964(v12);

    v2 = v53;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10001D630(0, &qword_10035E8E0, UIOpenURLContext_ptr);
    sub_10006AFB8(&qword_100356900, &qword_10035E8E0, UIOpenURLContext_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v63[0];
    v18 = v63[1];
    v20 = v63[2];
    v19 = v63[3];
    v21 = v63[4];
  }

  else
  {
    v22 = -1 << *(a1 + 32);
    v18 = a1 + 56;
    v20 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(a1 + 56);

    v19 = 0;
  }

  v51[1] = v20;
  v25 = (v20 + 64) >> 6;
  v56 = (v4 + 8);
  *&v17 = 136446210;
  v52 = v17;
  v58 = v18;
  v55 = a1;
  while ((a1 & 0x8000000000000000) == 0)
  {
    v26 = v19;
    v27 = v21;
    v28 = v19;
    if (!v21)
    {
      while (1)
      {
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v28 >= v25)
        {
          return sub_10006AFFC(a1);
        }

        v27 = *(v18 + 8 * v28);
        ++v26;
        if (v27)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_18:
    v29 = (v27 - 1) & v27;
    v30 = *(*(a1 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v30)
    {
      return sub_10006AFFC(a1);
    }

LABEL_22:
    v59 = v29;
    v32 = [v30 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = *(v2 + 328);
    swift_beginAccess();
    v4 = *(v33 + 40);
    v34 = *(v33 + 48);
    v35 = *(v33 + 24);

    v36 = String._bridgeToObjectiveC()();
    v37 = [v35 objectForKey:v36];

    if (v37)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1000456C8(v61, v62);
    }

    else
    {
      memset(v62, 0, sizeof(v62));
    }

    sub_1000040A8(&qword_1003577F8, &unk_10027B490);
    if (swift_dynamicCast())
    {

      v34 = v61[0];
    }

    else
    {
      v61[0] = 2;
    }

    v38 = v60;
    v39 = sub_10013E088(v34, v60);
    (*v56)(v38, v57);
    if (v39)
    {
    }

    else
    {
      v40 = v30;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v4 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *&v62[0] = v43;
        *v4 = v52;
        v44 = v40;
        v45 = [v44 description];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v49 = sub_10017C9E8(v46, v48, v62);

        *(v4 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v41, v42, "Failed to handle URL [%{public}s]", v4, 0xCu);
        sub_100008964(v43);
        v2 = v53;
      }

      else
      {
      }
    }

    v19 = v28;
    v18 = v58;
    v21 = v59;
    a1 = v55;
  }

  v31 = __CocoaSet.Iterator.next()();
  if (v31)
  {
    *v61 = v31;
    sub_10001D630(0, &qword_10035E8E0, UIOpenURLContext_ptr);
    swift_dynamicCast();
    v30 = *&v62[0];
    v28 = v19;
    v29 = v21;
    if (*&v62[0])
    {
      goto LABEL_22;
    }
  }

  return sub_10006AFFC(a1);
}

uint64_t sub_100167F4C(int a1)
{
  v2 = v1;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleMainSceneActiveChange: %{BOOL,public}d", v7, 8u);
  }

  v8 = *(v2 + 32);
  v9 = *(v8 + 80);
  if (v9 == 2 || ((v9 ^ a1) & 1) != 0)
  {
    sub_1000040A8(&unk_100365610, &unk_100279630);
    sub_100009274(&qword_10035CF00, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }

  *(v8 + 80) = a1 & 1;
  return sub_10012CEE0(v9);
}

uint64_t sub_1001680D0(uint64_t a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requesting OffTheGrid mode", v5, 2u);
  }

  v6 = *(a1 + 152);

  return sub_1000243C4(1, 2, v6);
}

void sub_1001681CC()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "OffTheGrid mode request done", v2, 2u);
  }
}

uint64_t sub_1001682B4(uint64_t a1)
{
  v2 = v1;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requesting OffTheGrid mode", v7, 2u);
  }

  type metadata accessor for PreventSuspensionAssertion();
  swift_allocObject();
  v8 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000021, 0x80000001002A08E0);
  sub_1000264D0(1, a1, *(v2 + 152), v8);
}