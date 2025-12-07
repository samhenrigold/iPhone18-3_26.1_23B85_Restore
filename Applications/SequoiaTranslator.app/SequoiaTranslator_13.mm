uint64_t sub_10016E9D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10016EA20()
{
  result = qword_1003B40E0;
  if (!qword_1003B40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B40E0);
  }

  return result;
}

uint64_t sub_10016EA7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10016EAC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10016EB0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_100169AE8(a1, v4, v5, v7, v6);
}

uint64_t sub_10016EBCC(uint64_t a1)
{
  v2 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10016EC30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10016EC48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001B558;

  return sub_10016D1D8();
}

uint64_t sub_10016ED0C()
{
  v1 = type metadata accessor for LocalePair();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10016EDD8(uint64_t a1)
{
  v4 = *(type metadata accessor for LocalePair() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_1001682C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10016EF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003BA690, &unk_1002E1DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016EF7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10016EFC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_100169304(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10016F0AC(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_10016F0F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_100167B00(a1, v4, v5, v6);
}

uint64_t sub_10016F1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003AB9C0, &unk_1002D36F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016F224(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_10016C2E4(a1, v4, v5, v6);
}

uint64_t sub_10016F320()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33);
}

uint64_t sub_10016F358(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_100165838(a1, v4, v5, v6);
}

uint64_t sub_10016F454(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SpeakButtonConfiguration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10016F514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SpeakButtonConfiguration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LocalePairSpeakButtons(uint64_t a1)
{
  result = qword_1003B41E8;
  if (!qword_1003B41E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016F604(uint64_t a1)
{
  sub_10016F768(319, &unk_1003AA478, &type metadata for AudioDevice, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SpeakButtonConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_1001312D0(319);
      if (v3 <= 0x3F)
      {
        sub_10016F768(319, &qword_1003AA470, &type metadata for AudioDevice, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_10016F768(319, &qword_1003AE538, &type metadata for CGFloat, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10016F768(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10016F7D4()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for LocalePairSpeakButtons(0) + 56));
  v6 = *v5;
  v21[1] = v5[1];
  v21[2] = v6;
  sub_100005AD4(&qword_1003A9AB0, &unk_1002D32E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D1370;
  type metadata accessor for SpeakButtonConfiguration(0);
  static Locale.current.getter();
  v8 = Locale.sqDisplayName(context:in:)();
  v10 = v9;
  v11 = v2 + 8;
  v12 = *(v2 + 8);
  v21[0] = v11;
  v12(v4, v1);
  if (!v10)
  {
    v8 = 0x4E574F4E4B4E55;
    v10 = 0xE700000000000000;
  }

  *(v7 + 56) = &type metadata for String;
  v13 = sub_100031CD0();
  *(v7 + 64) = v13;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  static Locale.current.getter();
  v14 = Locale.sqDisplayName(context:in:)();
  v16 = v15;
  v12(v4, v1);
  v17 = 0x4E574F4E4B4E55;
  if (v16)
  {
    v17 = v14;
  }

  v18 = 0xE700000000000000;
  if (v16)
  {
    v18 = v16;
  }

  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v13;
  *(v7 + 72) = v17;
  *(v7 + 80) = v18;
  v21[4] = String.init(format:_:)();
  v21[5] = v19;
  sub_10001F278();
  return Text.init<A>(_:)();
}

uint64_t sub_10016FA10()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for LocalePairSpeakButtons(0) + 56));
  v6 = *v5;
  v21[1] = v5[1];
  v21[2] = v6;
  sub_100005AD4(&qword_1003A9AB0, &unk_1002D32E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D1370;
  type metadata accessor for SpeakButtonConfiguration(0);
  static Locale.current.getter();
  v8 = Locale.sqDisplayName(context:in:)();
  v10 = v9;
  v11 = v2 + 8;
  v12 = *(v2 + 8);
  v21[0] = v11;
  v12(v4, v1);
  if (!v10)
  {
    v8 = 0x4E574F4E4B4E55;
    v10 = 0xE700000000000000;
  }

  *(v7 + 56) = &type metadata for String;
  v13 = sub_100031CD0();
  *(v7 + 64) = v13;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  static Locale.current.getter();
  v14 = Locale.sqDisplayName(context:in:)();
  v16 = v15;
  v12(v4, v1);
  v17 = 0x4E574F4E4B4E55;
  if (v16)
  {
    v17 = v14;
  }

  v18 = 0xE700000000000000;
  if (v16)
  {
    v18 = v16;
  }

  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v13;
  *(v7 + 72) = v17;
  *(v7 + 80) = v18;
  v21[4] = String.init(format:_:)();
  v21[5] = v19;
  sub_10001F278();
  return Text.init<A>(_:)();
}

uint64_t sub_10016FC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v3 = type metadata accessor for PopoverAttachmentAnchor();
  v123 = *(v3 - 8);
  v124 = v3;
  __chkstk_darwin(v3);
  v122 = (&v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100005AD4(&qword_1003B4250, &qword_1002E1F88);
  v130 = *(v5 - 8);
  v131 = v5;
  __chkstk_darwin(v5);
  v121 = &v110 - v6;
  v7 = sub_100005AD4(&qword_1003B4258, &qword_1002E1F90);
  v8 = __chkstk_darwin(v7 - 8);
  v133 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v132 = &v110 - v10;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100005AD4(&qword_1003AE940, &qword_1002D9828);
  v15 = __chkstk_darwin(v139);
  v129 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v119 = &v110 - v18;
  v19 = __chkstk_darwin(v17);
  v120 = &v110 - v20;
  v21 = __chkstk_darwin(v19);
  v128 = &v110 - v22;
  __chkstk_darwin(v21);
  v140 = &v110 - v23;
  v24 = type metadata accessor for LocalePairSpeakButtons(0);
  v25 = (a1 + v24[8]);
  LODWORD(v127) = *v25;
  v136 = *(a1 + 1);
  v26 = type metadata accessor for SpeakButtonConfiguration(0);
  v27 = v26[5];
  static Locale.current.getter();
  v137 = v27;
  v28 = Locale.sqDisplayName(context:in:)();
  v30 = v29;
  v31 = *(v12 + 8);
  v117 = v14;
  v118 = v12 + 8;
  v135 = v11;
  v115 = v31;
  v31(v14, v11);
  if (v30)
  {
    v32 = v28;
  }

  else
  {
    v32 = 0x4E574F4E4B4E55;
  }

  if (!v30)
  {
    v30 = 0xE700000000000000;
  }

  v33 = (a1 + v24[12]);
  v34 = *v33;
  v35 = v33[1];
  *&v158[0] = v34;
  v114 = v35;
  *(&v158[0] + 1) = v35;
  v113 = sub_100005AD4(&qword_1003AA820, &qword_1002D8480);
  State.wrappedValue.getter();
  v36 = *(a1 + v24[13]);
  v138 = a1;
  if (*&v153 <= v36)
  {
    sub_1001708FC(&unk_1003B06F0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
    a1 = v138;
    v37 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
  }

  else
  {
    v37 = 0;
  }

  v38 = v26[6];
  v39 = &v25[v26[7]];
  v41 = *v39;
  v40 = *(v39 + 1);
  v42 = *&v25[v26[8]];
  v125 = *(a1 + v24[10]);
  v126 = v42;
  v43 = &v25[v38];
  v44 = *&v25[v38];
  v45 = *(v43 + 1);
  LOBYTE(v153) = v127;
  *(&v153 + 1) = v136;
  *(&v153 + 1) = _swiftEmptyArrayStorage;
  *&v154 = v32;
  *(&v154 + 1) = v30;
  LOBYTE(v155) = v37 & 1;
  *(&v155 + 1) = v41;
  *&v156[0] = v40;
  *(&v156[1] + 8) = v42;
  *(v156 + 8) = v125;
  *(&v156[2] + 1) = v44;
  *&v157[0] = v45;
  *(v157 + 8) = 0u;
  *(&v157[1] + 8) = 0u;
  *(&v157[2] + 8) = 0u;
  *(&v157[3] + 8) = 0u;
  *(&v157[4] + 8) = 0u;
  *(&v157[5] + 8) = 0u;
  *(&v157[6] + 1) = 0u;

  v116 = *(&v125 + 1);
  sub_10001AD18(v125, *(&v125 + 1));
  sub_10001AD18(v126, *(&v126 + 1));

  v46 = sub_10016F7D4();
  v48 = v47;
  v50 = v49;
  v51 = sub_1000917C0();
  v52 = v128;
  v127 = v51;
  View.accessibility(hint:)();
  v53 = v48;
  v54 = v138;
  sub_10002EA54(v46, v53, v50 & 1);

  v158[10] = v157[4];
  v158[11] = v157[5];
  v158[12] = v157[6];
  v159 = v157[7];
  v158[6] = v157[0];
  v158[7] = v157[1];
  v158[8] = v157[2];
  v158[9] = v157[3];
  v158[2] = v155;
  v158[3] = v156[0];
  v158[4] = v156[1];
  v158[5] = v156[2];
  v158[0] = v153;
  v158[1] = v154;
  sub_100091A60(v158);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_100009EBC(v52, &qword_1003AE940, &qword_1002D9828);
  v128 = v24;
  v55 = (v54 + v24[9]);
  sub_1001708FC(&unk_1003B06F0, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v56 = v135;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v57 = v132;
    (*(v130 + 56))(v132, 1, 1, v131);
  }

  else
  {
    v58 = *(v54 + 2);
    v111 = *v55;
    v112 = v58;
    *&v126 = *(v54 + 8);

    v59 = v117;
    static Locale.current.getter();
    v60 = Locale.sqDisplayName(context:in:)();
    v62 = v61;
    v115(v59, v56);
    if (v62)
    {
      v63 = v60;
    }

    else
    {
      v63 = 0x4E574F4E4B4E55;
    }

    v64 = 0xE700000000000000;
    if (v62)
    {
      v64 = v62;
    }

    v117 = v64;
    v118 = v63;
    *&v153 = v34;
    *(&v153 + 1) = v114;
    State.wrappedValue.getter();
    if (*&v141 <= v36)
    {
      v65 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
    }

    else
    {
      v65 = 0;
    }

    v67 = v26[7];
    v66 = v26[8];
    v68 = v26[6];
    v69 = v138 + *(v128 + 11);
    v70 = *(v69 + 48);
    v71 = *(v69 + 80);
    v151 = *(v69 + 64);
    v152[0] = v71;
    *(v152 + 9) = *(v69 + 89);
    v72 = *(v69 + 16);
    v148[0] = *v69;
    v148[1] = v72;
    v73 = *(v69 + 48);
    v75 = *v69;
    v74 = *(v69 + 16);
    v149 = *(v69 + 32);
    v150 = v73;
    *&v147[56] = v70;
    *&v147[72] = v151;
    *&v147[88] = *(v69 + 80);
    *&v147[97] = *(v69 + 89);
    *&v147[8] = v75;
    *&v147[24] = v74;
    v76 = &v55[v67];
    v77 = *v76;
    v78 = *(v76 + 1);
    v79 = &v55[v66];
    v80 = *v79;
    v81 = v79[1];
    v82 = &v55[v68];
    v83 = *&v55[v68];
    v84 = *(v82 + 1);
    *&v147[40] = v149;
    LOBYTE(v141) = v111;
    BYTE1(v141) = v136;
    BYTE2(v141) = v112;
    *(&v141 + 1) = v126;
    *&v142 = v118;
    *(&v142 + 1) = v117;
    LOBYTE(v143) = v65 & 1;
    *(&v143 + 1) = v77;
    *&v144 = v78;
    *(&v144 + 1) = v125;
    *&v145 = v116;
    *(&v145 + 1) = v80;
    *&v146 = v81;
    *(&v146 + 1) = v83;
    *v147 = v84;
    sub_10001AD18(v125, v116);

    sub_10001AD18(v80, v81);
    sub_10001F620(v148, &v153, &qword_1003A93C8, &unk_1002D9A40);
    v85 = sub_10016FA10();
    v87 = v86;
    LOBYTE(v84) = v88;
    v89 = v119;
    View.accessibility(hint:)();
    sub_10002EA54(v85, v87, v84 & 1);

    v157[4] = *&v147[64];
    v157[5] = *&v147[80];
    v157[6] = *&v147[96];
    LOBYTE(v157[7]) = v147[112];
    v157[0] = *v147;
    v157[1] = *&v147[16];
    v157[2] = *&v147[32];
    v157[3] = *&v147[48];
    v155 = v143;
    v156[0] = v144;
    v156[1] = v145;
    v156[2] = v146;
    v153 = v141;
    v154 = v142;
    sub_100091A60(&v153);
    v90 = v120;
    ModifiedContent<>.accessibilityIdentifier(_:)();
    sub_100009EBC(v89, &qword_1003AE940, &qword_1002D9828);
    if (*(v69 + 8))
    {
      v92 = *(v69 + 16);
      v91 = *(v69 + 24);
    }

    else
    {
      v93 = [objc_opt_self() mainBundle];
      v160._object = 0xE000000000000000;
      v94._countAndFlagsBits = 0x495645445F57454ELL;
      v94._object = 0xEA00000000004543;
      v95._countAndFlagsBits = 0;
      v95._object = 0xE000000000000000;
      v160._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v94, 0, v93, v95, v160);

      v92 = String.init(format:_:)();
      v91 = v96;
    }

    v57 = v132;
    *(&v142 + 1) = &type metadata for TipsHelper.AudioDeviceTip;
    *&v143 = sub_100091B30();
    *&v141 = v92;
    *(&v141 + 1) = v91;
    v97 = static Anchor.Source<A>.bounds.getter();
    v99 = v122;
    v98 = v123;
    *v122 = v97;
    v100 = v124;
    (*(v98 + 104))(v99, enum case for PopoverAttachmentAnchor.rect(_:), v124);
    sub_100091814();
    v101 = v121;
    View.popoverTip(_:isPresented:attachmentAnchor:arrowEdge:action:)();
    (*(v98 + 8))(v99, v100);
    sub_100009EBC(v90, &qword_1003AE940, &qword_1002D9828);
    sub_100009EBC(&v141, &qword_1003AE9C8, &qword_1002D9A50);
    v103 = v130;
    v102 = v131;
    (*(v130 + 32))(v57, v101, v131);
    (*(v103 + 56))(v57, 0, 1, v102);
  }

  v104 = v140;
  v105 = v129;
  sub_10001F620(v140, v129, &qword_1003AE940, &qword_1002D9828);
  v106 = v133;
  sub_100170944(v57, v133);
  v107 = v134;
  sub_10001F620(v105, v134, &qword_1003AE940, &qword_1002D9828);
  v108 = sub_100005AD4(&qword_1003B4260, &unk_1002E1F98);
  sub_100170944(v106, v107 + *(v108 + 48));
  sub_1001709B4(v57);
  sub_100009EBC(v104, &qword_1003AE940, &qword_1002D9828);
  sub_1001709B4(v106);
  return sub_100009EBC(v105, &qword_1003AE940, &qword_1002D9828);
}

uint64_t sub_1001708A8@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100005AD4(&qword_1003B4248, &qword_1002E1F80);
  return sub_10016FC4C(v2, a2 + *(v4 + 44));
}

uint64_t sub_1001708FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100170944(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B4258, &qword_1002E1F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001709B4(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B4258, &qword_1002E1F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100170A20()
{
  result = qword_1003B4268;
  if (!qword_1003B4268)
  {
    sub_100005EA8(qword_1003B4270, &qword_1002E1FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4268);
  }

  return result;
}

void sub_100170A8C(uint64_t a1)
{
  sub_1000A9B3C(319, &qword_1003AE538, &type metadata for CGFloat);
  if (v1 <= 0x3F)
  {
    sub_1000A9B3C(319, &qword_1003AC878, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100170B5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 56) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      v16 = v15 - 1;
      if (v16 < 0)
      {
        v16 = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100170D0C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 56) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

double sub_100170FE0()
{
  sub_100005AD4(&qword_1003AA820, &qword_1002D8480);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_100171090()
{
  sub_100005AD4(&qword_1003AC8F8, &qword_1002D6760);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_100171144()
{
  sub_100005AD4(&qword_1003AC8F8, &qword_1002D6760);
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_1001711F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v32[1] = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v10 = type metadata accessor for _ViewModifier_Content();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v32 - v13;
  (*(v11 + 16))(v32 - v13, a1, v10);
  (*(v7 + 16))(v9, v4, a2);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v19 = *(a2 + 16);
  v32[0] = *(a2 + 24);
  v18 = v32[0];
  *(v17 + 16) = v19;
  *(v17 + 24) = v18;
  (*(v11 + 32))(v17 + v15, v14, v10);
  (*(v7 + 32))(v17 + v16, v9, a2);
  WitnessTable = swift_getWitnessTable();
  v35 = v10;
  v36 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_100005EA8(&qword_1003B42F8, &qword_1002E2028);
  v21 = type metadata accessor for ModifiedContent();
  v22 = sub_100005EA8(&qword_1003B4300, &unk_1002E2030);
  v35 = v10;
  v36 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_1001727D0();
  v39 = OpaqueTypeConformance2;
  v40 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_100172834();
  v35 = v21;
  v36 = v22;
  v37 = v25;
  v38 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = v21;
  v36 = v22;
  v37 = v25;
  v38 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v35 = OpaqueTypeMetadata2;
  v36 = v19;
  v29 = v32[0];
  v37 = v28;
  v38 = v32[0];
  swift_getOpaqueTypeMetadata2();
  v35 = OpaqueTypeMetadata2;
  v36 = v19;
  v37 = v28;
  v38 = v29;
  swift_getOpaqueTypeConformance2();
  v33 = ScrollViewReader.init(content:)();
  v34 = v30;
  type metadata accessor for ScrollViewReader();
  swift_getWitnessTable();
  sub_10002D870();

  v33 = v35;
  v34 = v36;
  sub_10002D870();
}

uint64_t sub_10017162C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v110 = a3;
  v92 = a2;
  v105 = a1;
  v98 = a6;
  v97 = type metadata accessor for ScrollViewProxy();
  v96 = *(v97 - 8);
  v106 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a5;
  v11 = type metadata accessor for LockAutoScrollToBottom(0, a4, a5, v10);
  v112 = *(v11 - 8);
  v111 = *(v112 + 64);
  __chkstk_darwin(v11);
  v102 = v76 - v12;
  swift_getWitnessTable();
  v13 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v113 = v13;
  v114 = WitnessTable;
  v15 = WitnessTable;
  v76[2] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v78 = v76 - v16;
  sub_100005EA8(&qword_1003B42F8, &qword_1002E2028);
  v17 = type metadata accessor for ModifiedContent();
  v94 = *(v17 - 8);
  __chkstk_darwin(v17);
  v103 = v76 - v18;
  v19 = sub_100005EA8(&qword_1003B4300, &unk_1002E2030);
  v113 = v13;
  v114 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = OpaqueTypeConformance2;
  v21 = sub_1001727D0();
  v117 = OpaqueTypeConformance2;
  v118 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_100172834();
  v113 = v17;
  v114 = v19;
  v81 = v17;
  v80 = v19;
  v115 = v22;
  v116 = v23;
  v82 = v22;
  v79 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v87 = v24;
  v93 = *(v24 - 8);
  __chkstk_darwin(v24);
  v104 = v76 - v25;
  v113 = v17;
  v114 = v19;
  v115 = v22;
  v116 = v23;
  v88 = swift_getOpaqueTypeConformance2();
  v113 = v24;
  v114 = a4;
  v115 = v88;
  v116 = v9;
  v107 = v9;
  v89 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v90 = swift_getOpaqueTypeMetadata2();
  v91 = *(v90 - 8);
  v26 = __chkstk_darwin(v90);
  v84 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v86 = v76 - v28;
  v29 = v112;
  v108 = *(v112 + 16);
  v109 = v112 + 16;
  v30 = v102;
  v31 = v110;
  v108(v102, v110, v11);
  v32 = *(v29 + 80);
  v33 = (v32 + 32) & ~v32;
  v99 = v111 + v33;
  v34 = v32 | 7;
  v35 = swift_allocObject();
  *(v35 + 16) = a4;
  *(v35 + 24) = v9;
  v100 = a4;
  v101 = v33;
  v111 = *(v29 + 32);
  v111(v35 + v33, v30, v11);
  swift_checkMetadataState();
  v36 = v78;
  View.onScrollPhaseChange(_:)();

  v108(v30, v31, v11);
  v37 = swift_allocObject();
  v38 = v107;
  *(v37 + 16) = a4;
  *(v37 + 24) = v38;
  v39 = v30;
  v112 = v29 + 32;
  v111(v37 + v33, v30, v11);
  v40 = sub_1000EE164();
  v41 = OpaqueTypeMetadata2;
  sub_100172258(&type metadata for CGFloat, sub_10017213C, 0, sub_10017294C, v37, OpaqueTypeMetadata2, &type metadata for CGFloat, v77, v40);

  (*(v85 + 8))(v36, v41);
  v42 = v30;
  v43 = v110;
  v44 = v108;
  v108(v42, v110, v11);
  v76[1] = v34;
  v45 = swift_allocObject();
  v46 = v100;
  v47 = v101;
  v48 = v107;
  *(v45 + 16) = v100;
  *(v45 + 24) = v48;
  v111(v45 + v47, v39, v11);
  v44(v39, v43, v11);
  v49 = v96;
  v50 = *(v96 + 16);
  v85 = v96 + 16;
  v92 = v50;
  v51 = v95;
  v52 = v97;
  v50(v95, v105, v97);
  OpaqueTypeMetadata2 = *(v49 + 80);
  v53 = &v99[OpaqueTypeMetadata2] & ~OpaqueTypeMetadata2;
  v54 = swift_allocObject();
  *(v54 + 16) = v46;
  *(v54 + 24) = v48;
  v55 = v54 + v47;
  v56 = v102;
  v111(v55, v102, v11);
  v99 = *(v49 + 32);
  (v99)(v54 + v53, v51, v52);
  v57 = v103;
  v58 = v81;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v94 + 8))(v57, v58);
  v103 = *(v11 + 48);
  v59 = v11;
  v108(v56, v110, v11);
  v60 = v51;
  v61 = v51;
  v62 = v52;
  v92(v61, v105, v52);
  v63 = v53;
  v64 = swift_allocObject();
  v66 = v100;
  v65 = v101;
  v67 = v107;
  *(v64 + 16) = v100;
  *(v64 + 24) = v67;
  v111(v64 + v65, v56, v59);
  (v99)(v64 + v63, v60, v62);
  v68 = v104;
  v69 = v84;
  v70 = v87;
  v71 = v88;
  View.onChange<A>(of:initial:_:)();

  (*(v93 + 8))(v68, v70);
  v113 = v70;
  v114 = v66;
  v115 = v71;
  v116 = v67;
  swift_getOpaqueTypeConformance2();
  v72 = v86;
  v73 = v90;
  sub_10002D870();
  v74 = *(v91 + 8);
  v74(v69, v73);
  sub_10002D870();
  return (v74)(v72, v73);
}

uint64_t sub_1001720F8(uint64_t a1, uint64_t a2)
{
  v2 = static ScrollPhase.== infix(_:_:)();
  sub_10017119C(v2 & 1);
  result = sub_100171144();
  if (result)
  {
    return sub_1001710E8(0);
  }

  return result;
}

void sub_10017213C(CGFloat *a1@<X8>)
{
  v2 = type metadata accessor for GlobalCoordinateSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15.origin.x = v7;
  v15.origin.y = v9;
  v15.size.width = v11;
  v15.size.height = v13;
  *a1 = CGRectGetMinY(v15);
}

uint64_t sub_100172258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  _GeometryActionModifier.init(value:action:)();
  type metadata accessor for _GeometryActionModifier();
  View.modifier<A>(_:)();
}

uint64_t sub_100172334@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100170FE0();
  ScrollGeometry.containerSize.getter();
  v4 = v2 + v3;
  ScrollGeometry.contentSize.getter();
  v6 = v4 - v5;
  ScrollGeometry.contentOffset.getter();
  v8 = fabs(v6 + v7);
  sub_100005AD4(&qword_1003B4318, &unk_1002E2040);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002D1370;
  result = ScrollGeometry.contentSize.getter();
  v12 = 0.0;
  if (v8 <= 20.0)
  {
    v12 = 1.0;
  }

  *(v9 + 32) = v11;
  *(v9 + 40) = v12;
  *a1 = v9;
  return result;
}

void sub_1001723E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*a2 + 40);
    if (sub_100171090())
    {
      static UnitPoint.bottom.getter();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
    }

    else if ((sub_100171144() & 1) == 0)
    {
      sub_1001710E8(v3 == 1.0);
    }
  }
}

uint64_t sub_100172488()
{
  result = sub_100171090();
  if ((result & 1) == 0)
  {
    v1 = static Animation.linear.getter();
    __chkstk_darwin(v1);
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_100172540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for LockAutoScrollToBottom(255, v5, *(v4 + 24), a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for _ViewModifier_Content();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v6 - 8);
  v11 = (v9 + *(v8 + 64) + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  (*(v8 + 8))(v4 + v9, v7);

  (*(*(v5 - 8) + 8))(v4 + v11 + *(v6 + 48), v5);

  return _swift_deallocObject(v4, v11 + v12);
}

uint64_t sub_1001726B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = type metadata accessor for LockAutoScrollToBottom(255, v6, v7, a2);
  swift_getWitnessTable();
  v9 = *(type metadata accessor for _ViewModifier_Content() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = v3 + ((v10 + *(v9 + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80));

  return sub_10017162C(a1, (v3 + v10), v11, v6, v7, a3);
}

unint64_t sub_1001727D0()
{
  result = qword_1003B4308;
  if (!qword_1003B4308)
  {
    sub_100005EA8(&qword_1003B42F8, &qword_1002E2028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4308);
  }

  return result;
}

unint64_t sub_100172834()
{
  result = qword_1003B4310;
  if (!qword_1003B4310)
  {
    sub_100005EA8(&qword_1003B4300, &unk_1002E2030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4310);
  }

  return result;
}

uint64_t sub_1001728B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LockAutoScrollToBottom(0, *(v4 + 16), *(v4 + 24), a4);

  return sub_1001720F8(a1, a2);
}

uint64_t sub_1001729B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for LockAutoScrollToBottom(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v7 + v6[14], v5);

  return _swift_deallocObject(v4, v7 + v8);
}

uint64_t sub_100172AB8@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  type metadata accessor for LockAutoScrollToBottom(0, *(v2 + 16), *(v2 + 24), a1);

  return sub_100172334(a2);
}

void sub_100172B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for LockAutoScrollToBottom(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  type metadata accessor for ScrollViewProxy();

  sub_1001723E4(a1, a2, v4 + v8);
}

uint64_t sub_100172C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for LockAutoScrollToBottom(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);
  v9 = type metadata accessor for ScrollViewProxy();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);

  (*(*(v5 - 8) + 8))(v4 + v7 + v6[14], v5);
  (*(v10 + 8))(v4 + v11, v9);

  return _swift_deallocObject(v4, v11 + v12);
}

uint64_t sub_100172DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LockAutoScrollToBottom(0, *(v4 + 16), *(v4 + 24), a4);
  type metadata accessor for ScrollViewProxy();

  return sub_100172488();
}

uint64_t sub_100172F40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LockAutoScrollToBottom(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100005EA8(&qword_1003B42F8, &qword_1002E2028);
  type metadata accessor for ModifiedContent();
  sub_100005EA8(&qword_1003B4300, &unk_1002E2030);
  swift_getOpaqueTypeConformance2();
  sub_1001727D0();
  swift_getWitnessTable();
  sub_100172834();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollViewReader();
  return swift_getWitnessTable();
}

void sub_100173174()
{
  if (*(v0 + 16))
  {
    if (qword_1003A9248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000078E8(v1, qword_1003D27E8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_22;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Not acquiring assertion, already acquired";
LABEL_21:
    _os_log_impl(&_mh_execute_header, oslog, v2, v4, v3, 2u);

LABEL_22:

    return;
  }

  if ((sub_1001B2964() & 1) == 0)
  {
    if (qword_1003A9248 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D27E8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_22;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Not acquiring assertion, not eligible";
    goto LABEL_21;
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = SBSSecureAppTypeForIdentifier();

  if (!v6)
  {
    if (qword_1003A9248 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D27E8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_22;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Not acquiring assertion, Translate secure app type not supported";
    goto LABEL_21;
  }

  v7 = v0;
  if (qword_1003A9248 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D27E8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Acquiring secure app assertion", v11, 2u);
  }

  v12 = objc_opt_self();
  aBlock[4] = sub_100173540;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100227798;
  aBlock[3] = &unk_1003868F8;
  v13 = _Block_copy(aBlock);
  v14 = [v12 acquireSecureAppAssertionWithType:v6 errorHandler:v13];
  _Block_release(v13);
  v15 = *(v7 + 16);
  *(v7 + 16) = v14;
}

void sub_100173540(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003A9248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000078E8(v1, qword_1003D27E8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_10028D78C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error acquiring assertion: %s", v4, 0xCu);
      sub_100008664(v5);
    }

    else
    {
    }
  }
}

void sub_1001736F4()
{
  if (*(v0 + 16))
  {
    v1 = v0;
    if (qword_1003A9248 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D27E8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Releasing secure app assertion for Lock Screen", v5, 2u);
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      [v6 invalidate];
      v6 = *(v1 + 16);
    }

    *(v1 + 16) = 0;
  }

  else
  {
    if (qword_1003A9248 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000078E8(v7, qword_1003D27E8);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "Not releasing assertion, it's not acquired", v9, 2u);
    }

    v6 = oslog;
  }
}

id sub_1001738BC(char a1, id a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1003A9248 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000078E8(v3, qword_1003D27E8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to lock screen", v6, 2u);
    }
  }

  return [a2 invalidate];
}

uint64_t sub_1001739B8()
{

  return swift_deallocClassInstance();
}

double sub_100173A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_100173CEC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100173D58(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    sub_100174454();
    v37 = a1;
    v6 = sub_10000B55C();
    if (v6)
    {
      v7 = v6;
      v8 = sub_10000B55C();
      if (v8)
      {
        v9 = v8;
        v10 = sub_10000ADA0();

        v11 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v5];
        v12 = *&v7[OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_sceneContext];
        v13 = type metadata accessor for PersonalTranslatorLockScreenViewController();
        v14 = objc_allocWithZone(v13);
        *&v14[OBJC_IVAR____TtC17SequoiaTranslator42PersonalTranslatorLockScreenViewController_viewModel] = v10;
        *&v14[OBJC_IVAR____TtC17SequoiaTranslator42PersonalTranslatorLockScreenViewController_sceneContext] = v12;
        v38.receiver = v14;
        v38.super_class = v13;
        v15 = v11;

        v16 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);
        [v15 setRootViewController:v16];

        v17 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator23LockScreenSceneDelegate_window);
        *(v2 + OBJC_IVAR____TtC17SequoiaTranslator23LockScreenSceneDelegate_window) = v15;

        if (qword_1003A9200 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_1000078E8(v18, qword_1003D2710);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "LockScreenSceneDelegate will show window", v21, 2u);
        }

        [v15 makeKeyAndVisible];

        return;
      }

      if (qword_1003A9248 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000078E8(v32, qword_1003D27E8);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v39 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_10028D78C(0xD00000000000001FLL, 0x80000001002F6900, &v39);
        _os_log_impl(&_mh_execute_header, v33, v34, "%s LockScreenSceneDelegate couldn't access the view model", v35, 0xCu);
        sub_100008664(v36);

        return;
      }
    }

    else
    {
      if (qword_1003A9248 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000078E8(v28, qword_1003D27E8);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "LockScreenSceneDelegate couldn't access AppDelegate", v31, 2u);
      }
    }
  }

  else
  {
    if (qword_1003A9248 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000078E8(v22, qword_1003D27E8);
    v23 = a1;
    v37 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&_mh_execute_header, v37, v24, "LockScreenSceneDelegate: Received non-window scene %@", v25, 0xCu);
      sub_1000DDF70(v26);
    }
  }
}

unint64_t sub_100174454()
{
  result = qword_1003BB780;
  if (!qword_1003BB780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003BB780);
  }

  return result;
}

uint64_t *sub_100174560(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1001746F0()
{
  v0 = type metadata accessor for Logger();
  sub_100174560(v0, qword_1003D2848);
  sub_1000078E8(v0, qword_1003D2848);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100174790()
{
  v0 = type metadata accessor for Logger();
  sub_100174560(v0, qword_1003D2878);
  sub_1000078E8(v0, qword_1003D2878);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100174884()
{
  v0 = type metadata accessor for Logger();
  sub_100174560(v0, qword_1003D28D8);
  sub_1000078E8(v0, qword_1003D28D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100174948()
{
  v0 = type metadata accessor for Logger();
  sub_100174560(v0, qword_1003D2920);
  sub_1000078E8(v0, qword_1003D2920);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001749F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100174560(v5, a2);
  sub_1000078E8(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100174A6C()
{
  v0 = type metadata accessor for Logger();
  sub_100174560(v0, qword_1003D2950);
  sub_1000078E8(v0, qword_1003D2950);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100174AE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100174B30(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100174B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26[1] = a4;
  v7 = sub_100005AD4(&qword_1003B4510, &qword_1002E2128);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = sub_100005AD4(&qword_1003B4518, &qword_1002E2130);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v26 - v13;
  v15 = sub_100005AD4(&qword_1003B4520, &qword_1002E2138);
  __chkstk_darwin(v15);
  v17 = v26 - v16;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v18 = sub_100005AD4(&qword_1003B4528, &qword_1002E2140);
  (*(*(v18 - 8) + 16))(v10, a1, v18);
  v19 = &v10[*(v8 + 44)];
  v20 = v32;
  *(v19 + 4) = v31;
  *(v19 + 5) = v20;
  *(v19 + 6) = v33;
  v21 = v28;
  *v19 = v27;
  *(v19 + 1) = v21;
  v22 = v30;
  *(v19 + 2) = v29;
  *(v19 + 3) = v22;
  sub_100023BD4(v10, v14, &qword_1003B4510, &qword_1002E2128);
  v14[*(v12 + 44)] = 0;
  sub_100023BD4(v14, v17, &qword_1003B4518, &qword_1002E2130);
  v23 = &v17[*(v15 + 52)];
  *v23 = a2;
  *(v23 + 1) = a3;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  sub_100174F70();
  swift_bridgeObjectRetain_n();
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  return sub_100174FD4(v17);
}

void sub_100174E64()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = String._bridgeToObjectiveC()();
  [v0 setString:v1];

  v2 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:2];
  [v2 impactOccurred];
}

uint64_t sub_100174F30()
{

  return _swift_deallocObject(v0, 32);
}

unint64_t sub_100174F70()
{
  result = qword_1003B4530;
  if (!qword_1003B4530)
  {
    sub_100005EA8(&qword_1003B4520, &qword_1002E2138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4530);
  }

  return result;
}

uint64_t sub_100174FD4(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B4520, &qword_1002E2138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017503C()
{
  sub_100005EA8(&qword_1003B4520, &qword_1002E2138);
  sub_100174F70();
  return swift_getOpaqueTypeConformance2();
}

void *sub_1001750C8(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10000A37C(i, v9);
    sub_10000A2CC(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

void *sub_1001751CC(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B4590, &unk_1002E2210);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for StoredTranslationAlternative();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v24 = &v21 - v10;
  v11 = *(a1 + 16);
  v26 = _swiftEmptyArrayStorage;
  sub_1000C4D4C(0, v11, 0);
  v12 = v26;
  if (v11)
  {
    v13 = a1 + 32;
    v22 = v4;
    v23 = (v6 + 56);
    v14 = (v6 + 32);
    while (1)
    {
      sub_100031DD8(v13, v25);
      sub_100005AD4(&qword_1003AF460, &qword_1002DBAF8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v23)(v4, 0, 1, v5);
      v15 = *v14;
      v16 = v24;
      (*v14)(v24, v4, v5);
      v15(v9, v16, v5);
      v26 = v12;
      v17 = v9;
      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        sub_1000C4D4C((v18 > 1), v19 + 1, 1);
        v12 = v26;
      }

      v12[2] = v19 + 1;
      v15(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v17, v5);
      v13 += 40;
      --v11;
      v9 = v17;
      v4 = v22;
      if (!v11)
      {
        return v12;
      }
    }

    (*v23)(v4, 1, 1, v5);
    sub_1001764D8(v4);
    return 0;
  }

  return v12;
}

void _LTCombinedTranslationResult.locale.getter()
{
  v1 = [v0 localePair];
  v2 = [v1 targetLocale];

  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
}

void *_LTCombinedTranslationResult.alternatives.getter()
{
  v1 = type metadata accessor for StoredTranslationAlternative();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  v3 = [v0 paragraphResults];
  sub_10000A2CC(0, &unk_1003B9ED0, _LTTranslationResult_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v32 = v7;
      sub_1000819A8(&qword_1003AECC0, &unk_1003B9ED0, _LTTranslationResult_ptr, &protocol conformance descriptor for _LTTranslationResult);
      v10 = TranslationResult.isLowConfidence.getter();

      if ((v10 & 1) == 0)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v10 = 0;
LABEL_16:

  v11 = v31;
  v12 = [v31 disambiguableResult];
  if (v12)
  {
    v13 = v12;
    if ([v12 hasDisambiguations])
    {
      if (qword_1003A9238 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000078E8(v14, qword_1003D27B8);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
      }

      if ((v10 & 1) == 0)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
    }
  }

  v19 = [v11 translatedText];
  v20 = [v19 string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = [v11 romanization];
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v23 = v28;
  StoredTranslationAlternative.init(text:romanization:lowConfidence:)();
  sub_100005AD4(&qword_1003AF458, &qword_1002DBAF0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002D3160;
  v24 = v30;
  *(v18 + 56) = v30;
  *(v18 + 64) = sub_100176398(&qword_1003B4538, &type metadata accessor for StoredTranslationAlternative, &protocol conformance descriptor for StoredTranslationAlternative);
  v25 = sub_100050D60((v18 + 32));
  (*(v29 + 32))(v25, v23, v24);
  return v18;
}

uint64_t _LTCombinedTranslationResult.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoredDisambiguableResult();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoredTranslationResult.CodingKeys();
  v67 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v57 = &v55 - v10;
  v11 = __chkstk_darwin(v9);
  v62 = &v55 - v12;
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  v63 = v15;
  v64 = v16;
  __chkstk_darwin(v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005AD4(&qword_1003B4540, &qword_1002E2148);
  v66 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v55 - v20;
  sub_1000085CC(a1, a1[3]);
  sub_100176398(&qword_1003B4548, &type metadata accessor for StoredTranslationResult.CodingKeys, &protocol conformance descriptor for StoredTranslationResult.CodingKeys);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v61 = v2;
  v22 = [v2 localePair];
  v23 = [v22 targetLocale];

  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v67;
  v25 = *(v67 + 104);
  v25(v14, enum case for StoredTranslationResult.CodingKeys.locale(_:), v6);
  sub_100176398(&qword_1003B4550, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v68 = v19;
  v26 = v63;
  v27 = v65;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v27)
  {
    (*(v24 + 8))(v14, v6);
    (*(v64 + 8))(v18, v26);
    return (*(v66 + 8))(v21, v68);
  }

  else
  {
    v30 = *(v24 + 8);
    v29 = v24 + 8;
    v65 = v30;
    v30(v14, v6);
    (*(v64 + 8))(v18, v26);
    [v61 route];
    v25(v62, enum case for StoredTranslationResult.CodingKeys.isOffline(_:), v6);
    KeyedEncodingContainer.encode(_:forKey:)();
    v63 = v25;
    v64 = 0;
    v65(v62, v6);
    v31 = [v61 disambiguableResult];
    if (v31)
    {
      v32 = v31;
      v33 = v58;
      StoredDisambiguableResult.init(_:)();
      v34 = v57;
      v63(v57, enum case for StoredTranslationResult.CodingKeys.storedDisambiguableResult(_:), v6);
      sub_100176398(&qword_1003B4570, &type metadata accessor for StoredDisambiguableResult, &protocol conformance descriptor for StoredDisambiguableResult);
      v35 = v68;
      v36 = v60;
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      v65(v34, v6);
      (*(v59 + 8))(v33, v36);
      return (*(v66 + 8))(v21, v35);
    }

    else
    {
      v37 = _LTCombinedTranslationResult.alternatives.getter();
      v38 = sub_1001751CC(v37);

      if (v38)
      {
        v67 = v29;
        v39 = v6;
        if (qword_1003A9238 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_1000078E8(v40, qword_1003D27B8);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        v43 = os_log_type_enabled(v41, v42);
        v44 = v63;
        if (v43)
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
        }

        v69 = v38;
        v46 = v56;
        v44(v56, enum case for StoredTranslationResult.CodingKeys.alternatives(_:), v39);
        sub_100005AD4(&qword_1003B4558, qword_1002E2150);
        sub_1001763E0();
        v47 = v68;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v65(v46, v39);
        (*(v66 + 8))(v21, v47);
      }

      else
      {
        if (qword_1003A9238 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_1000078E8(v48, qword_1003D27B8);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.fault.getter();
        v51 = os_log_type_enabled(v49, v50);
        v52 = v66;
        v53 = v68;
        if (v51)
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "No result being encoded: no disambigaution and no alternatives", v54, 2u);
        }

        return (*(v52 + 8))(v21, v53);
      }
    }
  }
}

void sub_100176224()
{
  v1 = [*v0 localePair];
  v2 = [v1 targetLocale];

  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_10017633C()
{
  v1 = [*v0 disambiguableResult];

  return v1;
}

uint64_t sub_100176398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001763E0()
{
  result = qword_1003B4560;
  if (!qword_1003B4560)
  {
    sub_100005EA8(&qword_1003B4558, qword_1002E2150);
    sub_100176398(&qword_1003B4568, &type metadata accessor for StoredTranslationAlternative, &protocol conformance descriptor for StoredTranslationAlternative);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4560);
  }

  return result;
}

uint64_t sub_1001764D8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B4590, &unk_1002E2210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _LTSpeechRecognitionResult.formattedString.getter()
{
  v1 = [v0 bestTranscription];
  v2 = [v1 formattedString];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t _LTSpeechRecognitionTokensAlternative.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100005AD4(&qword_1003B4598, &qword_1002E2220);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000085CC(a1, a1[3]);
  sub_1001767B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  [v3 isLowConfidence];
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  [v3 hasSpaceAfter];
  v11[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9 = [v3 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
}

unint64_t sub_1001767B0()
{
  result = qword_1003B45A0;
  if (!qword_1003B45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B45A0);
  }

  return result;
}

uint64_t sub_100176804(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6563617053736168;
  v4 = 0xED00007265746641;
  if (v2 != 1)
  {
    v3 = 1954047348;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E6F43776F4C7369;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEF65636E65646966;
  }

  v7 = 0x6563617053736168;
  v8 = 0xED00007265746641;
  if (*a2 != 1)
  {
    v7 = 1954047348;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E6F43776F4C7369;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEF65636E65646966;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100176918()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001769CC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100176A6C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100176B1C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001795DC(*a1);
  *a2 = result;
  return result;
}

void sub_100176B4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF65636E65646966;
  v4 = 0xED00007265746641;
  v5 = 0x6563617053736168;
  if (v2 != 1)
  {
    v5 = 1954047348;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F43776F4C7369;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100176BBC()
{
  v1 = 0x6563617053736168;
  if (*v0 != 1)
  {
    v1 = 1954047348;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F43776F4C7369;
  }
}

unint64_t sub_100176C28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001795DC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100176C5C(uint64_t a1)
{
  v2 = sub_1001767B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100176C98(uint64_t a1)
{
  v2 = sub_1001767B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100176D1C()
{
  v1 = [*v0 text];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t _LTSpeechRecognitionBin.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100005AD4(&qword_1003B45B0, &qword_1002E2228);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_1000085CC(a1, a1[3]);
  sub_100176FC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  [v3 bestAlternativeIndex];
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = [v3 alternatives];
    sub_10000A2CC(0, &qword_1003B45A8, _LTSpeechRecognitionTokensAlternative_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = v10;
    v12[15] = 1;
    sub_100005AD4(&qword_1003B45C0, &qword_1002E2230);
    sub_100177014();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100176FC0()
{
  result = qword_1003B45B8;
  if (!qword_1003B45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B45B8);
  }

  return result;
}

unint64_t sub_100177014()
{
  result = qword_1003B45C8;
  if (!qword_1003B45C8)
  {
    sub_100005EA8(&qword_1003B45C0, &qword_1002E2230);
    sub_1000819A8(&qword_1003B45D0, &qword_1003B45A8, _LTSpeechRecognitionTokensAlternative_ptr, &protocol conformance descriptor for _LTSpeechRecognitionTokensAlternative);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B45C8);
  }

  return result;
}

uint64_t sub_1001770C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x65746C4174736562;
  }

  if (v2)
  {
    v4 = 0xEF65766974616E72;
  }

  else
  {
    v4 = 0x80000001002EF7E0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x65746C4174736562;
  }

  if (*a2)
  {
    v6 = 0x80000001002EF7E0;
  }

  else
  {
    v6 = 0xEF65766974616E72;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10017717C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100177210(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100177290(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100177320@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D8A8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100177380(unint64_t *a1@<X8>)
{
  v2 = 0x80000001002EF7E0;
  v3 = 0x65746C4174736562;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEF65766974616E72;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1001773D0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x65746C4174736562;
  }
}

uint64_t sub_10017741C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10037D8A8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100177480(uint64_t a1)
{
  v2 = sub_100176FC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001774BC(uint64_t a1)
{
  v2 = sub_100176FC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017758C(SEL *a1, unint64_t *a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = [v4 *a1];
  sub_10000A2CC(0, a2, a3);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = a4(v9);

  return v10;
}

uint64_t _LTSpeechRecognitionSausage.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003B45E0, &qword_1002E2238);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  sub_1000085CC(a1, a1[3]);
  sub_1001777C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = [v2 bins];
  sub_10000A2CC(0, &qword_1003B45D8, _LTSpeechRecognitionBin_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11[1] = v9;
  sub_100005AD4(&qword_1003B45F0, &qword_1002E2240);
  sub_100177814();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1001777C0()
{
  result = qword_1003B45E8;
  if (!qword_1003B45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B45E8);
  }

  return result;
}

unint64_t sub_100177814()
{
  result = qword_1003B45F8;
  if (!qword_1003B45F8)
  {
    sub_100005EA8(&qword_1003B45F0, &qword_1002E2240);
    sub_1000819A8(&qword_1003B4600, &qword_1003B45D8, _LTSpeechRecognitionBin_ptr, &protocol conformance descriptor for _LTSpeechRecognitionBin);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B45F8);
  }

  return result;
}

Swift::Int sub_1001778C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100177938(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10017798C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D8F8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100177A1C@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10037D930, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100177A80(uint64_t a1)
{
  v2 = sub_1001777C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100177ABC(uint64_t a1)
{
  v2 = sub_1001777C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100177B28(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, void *a5, uint64_t (*a6)(uint64_t))
{
  v10 = [*v6 *a3];
  sub_10000A2CC(0, a4, a5);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = a6(v11);

  return v12;
}

id _LTSpeechRecognitionResult.isLowConfidence.getter()
{
  v1 = [v0 bestTranscription];
  v2 = [v1 isLowConfidence];

  return v2;
}

uint64_t _LTSpeechRecognitionResult.sanitizedFormattedString.getter()
{
  v1 = [v0 bestTranscription];
  v2 = [v1 sanitizedFormattedString];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

Swift::Bool __swiftcall _LTSpeechRecognitionResult.isEmpty()()
{
  sub_10000A2CC(0, &unk_1003B9EE0, _LTSpeechRecognitionResult_ptr);
  sub_1000819A8(&qword_1003B4608, &unk_1003B9EE0, _LTSpeechRecognitionResult_ptr, &protocol conformance descriptor for _LTSpeechRecognitionResult);
  v0 = AnnotatedResult.displayString.getter();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  return v3 == 0;
}

void _LTSpeechRecognitionResult.sentenceConfidence.getter()
{
  v1 = [v0 bestTranscription];
  [v1 confidence];
  v3 = v2;
  v4 = v2;

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t _LTSpeechRecognitionResult.alternatives.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 bestRecognitionAlternatives];
  a1[3] = sub_10000A2CC(0, &qword_1003B4610, _LTSpeechRecognitionSausage_ptr);
  result = sub_1000819A8(&qword_1003B4618, &qword_1003B4610, _LTSpeechRecognitionSausage_ptr, &protocol conformance descriptor for _LTSpeechRecognitionSausage);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t _LTSpeechRecognitionResult.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for SpeechResultOrigin.voice(_:);
  v3 = type metadata accessor for SpeechResultOrigin();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void _LTSpeechRecognitionResult.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SpeechResultOrigin();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003B4620, qword_1002E2248);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  sub_1000085CC(a1, a1[3]);
  sub_10017856C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v2;
  v15 = [v2 bestTranscription];
  [v15 isLowConfidence];

  LOBYTE(v47) = 3;
  v16 = v45;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v16)
  {
    (*(v11 + 8))(v13, v10);
    return;
  }

  v39 = v9;
  v45 = v11;
  v17 = [v2 bestTranscription];
  v18 = v13;
  v19 = [v17 formattedString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  LOBYTE(v47) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();

  v38 = v14;
  v20 = [v14 bestTranscription];
  v21 = [v20 sanitizedFormattedString];

  v22 = v45;
  if (v21)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v47 = v23;
  v48 = v25;
  v46 = 4;
  sub_100005AD4(&qword_1003AA740, &unk_1002D42F0);
  sub_1001785C0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v26 = v38;
  v27 = [v38 locale];
  v28 = v39;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v47) = 2;
  sub_10017863C(&qword_1003B4550, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v29 = v43;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v44 + 8))(v28, v29);
  v30 = [v26 bestTranscription];
  [v30 confidence];
  v32 = v31;
  v33 = v31;

  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  v34 = v42;
  if (v32 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v36 = v40;
  v35 = v41;
  if (v32 < 9.22337204e18)
  {
    LOBYTE(v47) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    [v38 isFinal];
    LOBYTE(v47) = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v35 + 104))(v36, enum case for SpeechResultOrigin.voice(_:), v34);
    LOBYTE(v47) = 6;
    sub_10017863C(&qword_1003B4638, &type metadata accessor for SpeechResultOrigin, &protocol conformance descriptor for SpeechResultOrigin);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v35 + 8))(v36, v34);
    (*(v22 + 8))(v18, v10);
    return;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_10017856C()
{
  result = qword_1003B4628;
  if (!qword_1003B4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4628);
  }

  return result;
}

unint64_t sub_1001785C0()
{
  result = qword_1003B4630;
  if (!qword_1003B4630)
  {
    sub_100005EA8(&qword_1003AA740, &unk_1002D42F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4630);
  }

  return result;
}

uint64_t sub_10017863C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001787F0(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100178924@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100179628(*a1);
  *a2 = result;
  return result;
}

void sub_100178954(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616E69467369;
  v5 = 0xEF676E6972745364;
  v6 = 0x657474616D726F66;
  if (v2 != 5)
  {
    v6 = 0x6E696769726FLL;
    v5 = 0xE600000000000000;
  }

  v7 = 0xEF65636E65646966;
  v8 = 0x6E6F43776F4C7369;
  if (v2 != 3)
  {
    v8 = 0xD000000000000018;
    v7 = 0x80000001002EF830;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000012;
  v10 = 0x80000001002EF810;
  if (v2 != 1)
  {
    v9 = 0x656C61636F6CLL;
    v10 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100178A50()
{
  v1 = *v0;
  v2 = 0x6C616E69467369;
  v3 = 0x657474616D726F66;
  if (v1 != 5)
  {
    v3 = 0x6E696769726FLL;
  }

  v4 = 0x6E6F43776F4C7369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100178B48@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100179628(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100178B7C(uint64_t a1)
{
  v2 = sub_10017856C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100178BB8(uint64_t a1)
{
  v2 = sub_10017856C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100178BF4()
{
  v1 = [*v0 bestTranscription];
  [v1 confidence];
  v3 = v2;
  v4 = v2;

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

BOOL sub_100178C90()
{
  sub_10000A2CC(0, &unk_1003B9EE0, _LTSpeechRecognitionResult_ptr);
  sub_1000819A8(&qword_1003B4608, &unk_1003B9EE0, _LTSpeechRecognitionResult_ptr, &protocol conformance descriptor for _LTSpeechRecognitionResult);
  v0 = AnnotatedResult.displayString.getter();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  return v3 == 0;
}

uint64_t sub_100178D48@<X0>(void *a1@<X8>)
{
  v3 = [*v1 bestRecognitionAlternatives];
  a1[3] = sub_10000A2CC(0, &qword_1003B4610, _LTSpeechRecognitionSausage_ptr);
  result = sub_1000819A8(&qword_1003B4618, &qword_1003B4610, _LTSpeechRecognitionSausage_ptr, &protocol conformance descriptor for _LTSpeechRecognitionSausage);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_100178E68()
{
  v1 = [*v0 locale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_100178EC8()
{
  v1 = [*v0 bestTranscription];
  v2 = [v1 isLowConfidence];

  return v2;
}

uint64_t sub_100178F3C()
{
  v1 = [*v0 bestTranscription];
  v2 = [v1 sanitizedFormattedString];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100178FC4()
{
  v1 = [*v0 bestTranscription];
  v2 = [v1 formattedString];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001791C0()
{
  result = qword_1003B4660;
  if (!qword_1003B4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4660);
  }

  return result;
}

unint64_t sub_100179218()
{
  result = qword_1003B4668;
  if (!qword_1003B4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4668);
  }

  return result;
}

unint64_t sub_100179270()
{
  result = qword_1003B4670;
  if (!qword_1003B4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4670);
  }

  return result;
}

unint64_t sub_1001792C8()
{
  result = qword_1003B4678;
  if (!qword_1003B4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4678);
  }

  return result;
}

unint64_t sub_100179320()
{
  result = qword_1003B4680;
  if (!qword_1003B4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4680);
  }

  return result;
}

unint64_t sub_100179378()
{
  result = qword_1003B4688;
  if (!qword_1003B4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4688);
  }

  return result;
}

unint64_t sub_1001793D0()
{
  result = qword_1003B4690;
  if (!qword_1003B4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4690);
  }

  return result;
}

unint64_t sub_100179428()
{
  result = qword_1003B4698;
  if (!qword_1003B4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4698);
  }

  return result;
}

unint64_t sub_100179480()
{
  result = qword_1003B46A0;
  if (!qword_1003B46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B46A0);
  }

  return result;
}

unint64_t sub_1001794D8()
{
  result = qword_1003B46A8;
  if (!qword_1003B46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B46A8);
  }

  return result;
}

unint64_t sub_100179530()
{
  result = qword_1003B46B0;
  if (!qword_1003B46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B46B0);
  }

  return result;
}

unint64_t sub_100179588()
{
  result = qword_1003B46B8;
  if (!qword_1003B46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B46B8);
  }

  return result;
}

unint64_t sub_1001795DC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D840, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100179628(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D968, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_100179674(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100179798(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void *sub_1001798B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1000C4B8C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1000C4B8C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_10000A2CC(0, &qword_1003AEE80, _LTTranslationSense_ptr);
        v16 = sub_1000819A8(&qword_1003B4788, &qword_1003AEE80, _LTTranslationSense_ptr, &protocol conformance descriptor for _LTTranslationSense);
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100051124(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1000C4B8C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_10000A2CC(0, &qword_1003AEE80, _LTTranslationSense_ptr);
        v16 = sub_1000819A8(&qword_1003B4788, &qword_1003AEE80, _LTTranslationSense_ptr, &protocol conformance descriptor for _LTTranslationSense);
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_100051124(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100179AEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1000C4BCC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1000C4BCC((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_10000A2CC(0, &qword_1003B45D8, _LTSpeechRecognitionBin_ptr);
        v16 = sub_1000819A8(&qword_1003B4790, &qword_1003B45D8, _LTSpeechRecognitionBin_ptr, &protocol conformance descriptor for _LTSpeechRecognitionBin);
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100051124(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1000C4BCC((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_10000A2CC(0, &qword_1003B45D8, _LTSpeechRecognitionBin_ptr);
        v16 = sub_1000819A8(&qword_1003B4790, &qword_1003B45D8, _LTSpeechRecognitionBin_ptr, &protocol conformance descriptor for _LTSpeechRecognitionBin);
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_100051124(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100179D24(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1000C4C0C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1000C4C0C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_10000A2CC(0, &qword_1003B45A8, _LTSpeechRecognitionTokensAlternative_ptr);
        v16 = sub_1000819A8(&qword_1003B4798, &qword_1003B45A8, _LTSpeechRecognitionTokensAlternative_ptr, &protocol conformance descriptor for _LTSpeechRecognitionTokensAlternative);
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100051124(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1000C4C0C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_10000A2CC(0, &qword_1003B45A8, _LTSpeechRecognitionTokensAlternative_ptr);
        v16 = sub_1000819A8(&qword_1003B4798, &qword_1003B45A8, _LTSpeechRecognitionTokensAlternative_ptr, &protocol conformance descriptor for _LTSpeechRecognitionTokensAlternative);
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_100051124(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100179F5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1000C4C4C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000C4C4C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10005128C(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_10017A05C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1000C4C6C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1000C4C6C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_10000A2CC(0, &qword_1003AED08, _LTTranslationCandidate_ptr);
        v16 = sub_1000819A8(&qword_1003B47A0, &qword_1003AED08, _LTTranslationCandidate_ptr, &protocol conformance descriptor for _LTTranslationCandidate);
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100051124(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1000C4C6C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_10000A2CC(0, &qword_1003AED08, _LTTranslationCandidate_ptr);
        v16 = sub_1000819A8(&qword_1003B47A0, &qword_1003AED08, _LTTranslationCandidate_ptr, &protocol conformance descriptor for _LTTranslationCandidate);
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_100051124(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10017A294(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1000C4CAC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000C4CAC((v6 > 1), v7 + 1, 1);
        }

        ++v4;
        v8 = sub_10017C3A0(&qword_1003AC7C8, &type metadata accessor for PersistedTranslation, &unk_1002DC370);
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v9 = &_swiftEmptyArrayStorage[2 * v7];
        v9[4] = v5;
        v9[5] = v8;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        v13 = *v10;
        if (v11 >= v12 >> 1)
        {
          sub_1000C4CAC((v12 > 1), v11 + 1, 1);
        }

        v14 = sub_10017C3A0(&qword_1003AC7C8, &type metadata accessor for PersistedTranslation, &unk_1002DC370);
        _swiftEmptyArrayStorage[2] = v11 + 1;
        v15 = &_swiftEmptyArrayStorage[2 * v11];
        v15[4] = v13;
        v15[5] = v14;
        ++v10;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

char *sub_10017A46C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1000C4C4C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10000A2CC(0, &qword_1003B47A8, CAFilter_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1000C4C4C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10005128C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10000A2CC(0, &qword_1003B47A8, CAFilter_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000C4C4C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10005128C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t _LTTranslationSense.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100005AD4(&qword_1003B46C0, &unk_1002E2A50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  sub_1000085CC(a1, a1[3]);
  sub_10017C194();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = [v3 senseID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v10 = [v3 definition];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    v11 = [v3 sourceMatch];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    v12 = [v3 targetMatch];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();

    v13 = [v3 labels];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16[1] = v14;
    v18 = 4;
    sub_100005AD4(&qword_1003A95C0, &qword_1002D1A10);
    sub_10017C23C(&qword_1003B46D0, &qword_1003A95C0, &qword_1002D1A10, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    [v3 isPhrasebookMatch];
    v17 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10017AA54(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10017AB60@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10017C934(*a1);
  *a2 = result;
  return result;
}

void sub_10017AB90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x444965736E6573;
  v5 = 0x614D746567726174;
  v6 = 0xEB00000000686374;
  v7 = 0xE600000000000000;
  v8 = 0x736C6562616CLL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000001002EF8A0;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEA00000000006E6FLL;
  v10 = 0x6974696E69666564;
  if (v2 != 1)
  {
    v10 = 0x614D656372756F73;
    v9 = 0xEB00000000686374;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10017AC64()
{
  v1 = *v0;
  v2 = 0x444965736E6573;
  v3 = 0x614D746567726174;
  v4 = 0x736C6562616CLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6974696E69666564;
  if (v1 != 1)
  {
    v5 = 0x614D656372756F73;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10017AD34@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10017C934(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10017AD68(uint64_t a1)
{
  v2 = sub_10017C194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017ADA4(uint64_t a1)
{
  v2 = sub_10017C194();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017AE10()
{
  v1 = [*v0 labels];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10017AED8(SEL *a1, unint64_t *a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = [v4 *a1];
  sub_10000A2CC(0, a2, a3);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = a4(v9);

  return v10;
}

uint64_t _LTTranslationCandidate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100005AD4(&qword_1003B46D8, &unk_1002E2A60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_1000085CC(a1, a1[3]);
  sub_10017C1E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  [v3 isLowConfidence];
  LOBYTE(v23) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10 = [v3 formattedString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    v11 = [v3 sanitizedFormattedString];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v23 = v13;
    v24 = v15;
    v25 = 2;
    sub_100005AD4(&qword_1003AA740, &unk_1002D42F0);
    sub_10017C23C(&qword_1003B4630, &qword_1003AA740, &unk_1002D42F0, &protocol conformance descriptor for <A> A?);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v16 = [v3 senses];
    sub_10000A2CC(0, &qword_1003AEE80, _LTTranslationSense_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = v17;
    v25 = 3;
    sub_100005AD4(&qword_1003B46E8, &qword_1002E2A70);
    sub_10017C29C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v18 = [v3 romanization];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v23 = v20;
    v24 = v22;
    v25 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10017B320()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10017B42C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10017B524(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10017B62C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10017C980(*a1);
  *a2 = result;
  return result;
}

void sub_10017B65C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF65636E65646966;
  v4 = 0x6E6F43776F4C7369;
  v5 = 0x80000001002EF830;
  v6 = 0xD000000000000018;
  v7 = 0xEA00000000006174;
  v8 = 0x654D7365736E6573;
  if (v2 != 3)
  {
    v8 = 0x617A696E616D6F72;
    v7 = 0xEC0000006E6F6974;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x657474616D726F66;
    v3 = 0xEF676E6972745364;
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

unint64_t sub_10017B724()
{
  v1 = *v0;
  v2 = 0x6E6F43776F4C7369;
  v3 = 0xD000000000000018;
  v4 = 0x654D7365736E6573;
  if (v1 != 3)
  {
    v4 = 0x617A696E616D6F72;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657474616D726F66;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10017B7E8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10017C980(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10017B81C(uint64_t a1)
{
  v2 = sub_10017C1E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017B858(uint64_t a1)
{
  v2 = sub_10017C1E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017B8E8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_10017B948(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t _LTTranslationResult.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B4700, &qword_1002E2A78);
  v17 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_1000085CC(a1, a1[3]);
  sub_10017C34C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = [v2 locale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = 0;
  sub_10017C3A0(&qword_1003B4550, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v12 = v16[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v4);
  if (!v12)
  {
    v13 = [v2 translations];
    sub_10000A2CC(0, &qword_1003AED08, _LTTranslationCandidate_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v14;
    v19 = 1;
    sub_100005AD4(&qword_1003B4710, qword_1002E2A80);
    sub_10017C3E8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v17 + 8))(v10, v8);
}

uint64_t sub_10017BCCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74616E7265746C61;
  }

  else
  {
    v3 = 0x656C61636F6CLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEC00000073657669;
  }

  if (*a2)
  {
    v5 = 0x74616E7265746C61;
  }

  else
  {
    v5 = 0x656C61636F6CLL;
  }

  if (*a2)
  {
    v6 = 0xEC00000073657669;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10017BD78()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10017BE00(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10017BE74(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10017BEF8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DB78, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10017BF58(uint64_t *a1@<X8>)
{
  v2 = 0x656C61636F6CLL;
  if (*v1)
  {
    v2 = 0x74616E7265746C61;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEC00000073657669;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10017BF9C()
{
  if (*v0)
  {
    return 0x74616E7265746C61;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_10017BFDC@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10037DB78, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10017C040(uint64_t a1)
{
  v2 = sub_10017C34C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10017C07C(uint64_t a1)
{
  v2 = sub_10017C34C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10017C0E8(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, void *a5, uint64_t (*a6)(uint64_t))
{
  v10 = [*v6 *a3];
  sub_10000A2CC(0, a4, a5);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = a6(v11);

  return v12;
}

unint64_t sub_10017C194()
{
  result = qword_1003B46C8;
  if (!qword_1003B46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B46C8);
  }

  return result;
}

unint64_t sub_10017C1E8()
{
  result = qword_1003B46E0;
  if (!qword_1003B46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B46E0);
  }

  return result;
}

uint64_t sub_10017C23C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10017C29C()
{
  result = qword_1003B46F0;
  if (!qword_1003B46F0)
  {
    sub_100005EA8(&qword_1003B46E8, &qword_1002E2A70);
    sub_1000819A8(&qword_1003B46F8, &qword_1003AEE80, _LTTranslationSense_ptr, &protocol conformance descriptor for _LTTranslationSense);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B46F0);
  }

  return result;
}

unint64_t sub_10017C34C()
{
  result = qword_1003B4708;
  if (!qword_1003B4708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4708);
  }

  return result;
}

uint64_t sub_10017C3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10017C3E8()
{
  result = qword_1003B4718;
  if (!qword_1003B4718)
  {
    sub_100005EA8(&qword_1003B4710, qword_1002E2A80);
    sub_1000819A8(&qword_1003B4720, &qword_1003AED08, _LTTranslationCandidate_ptr, &protocol conformance descriptor for _LTTranslationCandidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4718);
  }

  return result;
}

unint64_t sub_10017C620()
{
  result = qword_1003B4740;
  if (!qword_1003B4740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4740);
  }

  return result;
}

unint64_t sub_10017C678()
{
  result = qword_1003B4748;
  if (!qword_1003B4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4748);
  }

  return result;
}

unint64_t sub_10017C6D0()
{
  result = qword_1003B4750;
  if (!qword_1003B4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4750);
  }

  return result;
}

unint64_t sub_10017C728()
{
  result = qword_1003B4758;
  if (!qword_1003B4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4758);
  }

  return result;
}

unint64_t sub_10017C780()
{
  result = qword_1003B4760;
  if (!qword_1003B4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4760);
  }

  return result;
}

unint64_t sub_10017C7D8()
{
  result = qword_1003B4768;
  if (!qword_1003B4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4768);
  }

  return result;
}

unint64_t sub_10017C830()
{
  result = qword_1003B4770;
  if (!qword_1003B4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4770);
  }

  return result;
}

unint64_t sub_10017C888()
{
  result = qword_1003B4778;
  if (!qword_1003B4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4778);
  }

  return result;
}

unint64_t sub_10017C8E0()
{
  result = qword_1003B4780;
  if (!qword_1003B4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4780);
  }

  return result;
}

unint64_t sub_10017C934(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DA30, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10017C980(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037DAE0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for RequestOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10017CA70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_10017CAF4()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9298 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D28D8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Preheating offline translation engine", v9, 2u);
  }

  v10 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v12 = Locale._bridgeToObjectiveC()().super.isa;
  v13 = [v10 initWithSourceLocale:isa targetLocale:v12];

  v14 = [objc_allocWithZone(_LTSpeechTranslationRequest) initWithLocalePair:v13];
  [v14 setForcedOfflineTranslation:1];
  [v14 setCensorSpeech:byte_1003D2A90];
  v15 = objc_opt_self();
  v16 = [v13 sourceLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = Locale._bridgeToObjectiveC()().super.isa;
  v18 = *(v3 + 8);
  v18(v5, v2);
  v19 = [v13 targetLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = Locale._bridgeToObjectiveC()().super.isa;
  v18(v5, v2);
  v27 = sub_10017D594;
  v28 = 0;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10017CA70;
  v26 = &unk_100386E90;
  v21 = _Block_copy(&aBlock);
  [v15 configInfoForLocale:v17 otherLocale:v20 completion:v21];
  _Block_release(v21);

  v27 = sub_10017D714;
  v28 = 0;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100227798;
  v26 = &unk_100386EB8;
  v22 = _Block_copy(&aBlock);
  [v1 preheatForRequest:v14 completion:v22];
  _Block_release(v22);
}

id sub_10017CEBC(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100005AD4(&qword_1003B47B0, &unk_1002E30E8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_10017D49C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A5C8;
  aBlock[3] = &unk_100386E68;
  v12 = _Block_copy(aBlock);

  [a2 setCompletionHandler:v12];
  _Block_release(v12);
  return [a3 translate:a2];
}

uint64_t sub_10017D084(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003A9298 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D28D8);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = _convertErrorToNSError(_:)();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Text translation handler returned error: %@", v5, 0xCu);
      sub_1000DDF70(v6);
    }

LABEL_20:
    sub_100005AD4(&qword_1003B47B0, &unk_1002E30E8);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
LABEL_15:
    if (qword_1003A9298 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D28D8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Text translation handler returned no text", v19, 2u);
    }

    sub_10017D540();
    swift_allocError();
    goto LABEL_20;
  }

  v8 = a1;
  v9 = [v8 translatedText];
  v10 = [v9 length];

  if (v10 <= 0)
  {

    goto LABEL_15;
  }

  if (qword_1003A9298 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000078E8(v11, qword_1003D28D8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Text translation handler returned _LTCombinedTranslationResult", v14, 2u);
  }

  sub_10017D958();
  sub_10017D9A4();
  sub_100005AD4(&qword_1003B47B0, &unk_1002E30E8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10017D408()
{
  v1 = sub_100005AD4(&qword_1003B47B0, &unk_1002E30E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10017D49C(void *a1, uint64_t a2)
{
  sub_100005AD4(&qword_1003B47B0, &unk_1002E30E8);

  return sub_10017D084(a1, a2);
}

double sub_10017D528(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10017D540()
{
  result = qword_1003B47B8;
  if (!qword_1003B47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B47B8);
  }

  return result;
}

void sub_10017D594(uint64_t a1)
{
  if (qword_1003A9298 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D28D8);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    v5 = Dictionary.description.getter();
    v7 = sub_10028D78C(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Finished preheating asset updating if needed with config info: %{public}s", v3, 0xCu);
    sub_100008664(v4);
  }
}

void sub_10017D714(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1003A9298 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000078E8(v6, qword_1003D28D8);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Finished preheating translation engine", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003A9298 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D28D8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to preheat translation engine: %@", v3, 0xCu);
    sub_1000DDF70(v4);

LABEL_10:

    return;
  }
}

unint64_t sub_10017D958()
{
  result = qword_1003B4580;
  if (!qword_1003B4580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003B4580);
  }

  return result;
}

unint64_t sub_10017D9A4()
{
  result = qword_1003B47C0;
  if (!qword_1003B47C0)
  {
    sub_10017D958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B47C0);
  }

  return result;
}

unint64_t sub_10017DA10()
{
  result = qword_1003B47C8;
  if (!qword_1003B47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B47C8);
  }

  return result;
}

uint64_t sub_10017DA74(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  result = sub_10001ABE4(v8, v9);
  if ((*(v2 + 56) & 1) == 0)
  {
    *(v2 + 56) = 1;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = v2;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    *(v12 + 48) = sub_10005E36C(0, 0, v7, &unk_1002E31F8, v14);
  }

  return result;
}

uint64_t sub_10017DBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v8;
  v4[17] = v7;

  return _swift_task_switch(sub_10017DD40, v8, v7);
}

uint64_t sub_10017DD40()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *(v1 + 40);

    v2(v4);
    sub_10001ABE4(v2, v3);
    v5 = *(v1 + 32);
    v6 = *(v1 + 40);
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    sub_10001ABE4(v5, v6);
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
    static Clock<>.continuous.getter();
    *(v0 + 40) = v7;
    *(v0 + 48) = v8;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return _swift_task_switch(sub_10017DE6C, 0, 0);
  }

  else
  {

    *(v1 + 56) = 0;

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10017DE6C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = sub_10017E330(&qword_1003B48E8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10017E330(&qword_1003B48F0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[18] = v5;
  v0[19] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_10017DFF0;
  v8 = v0[11];
  v7 = v0[12];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v7, v4);
}

uint64_t sub_10017DFF0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[11];
    v5 = v2[8];

    v3(v4, v5);
    v6 = sub_10017E164;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = v2[13];
    v9 = v2[14];
    v11 = v2[12];
    (v2[18])(v2[11], v2[8]);
    (*(v10 + 8))(v9, v11);
    v7 = v2[16];
    v8 = v2[17];
    v6 = sub_10017E378;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10017E164()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[16];
  v2 = v0[17];

  return _swift_task_switch(sub_10017E378, v1, v2);
}

uint64_t sub_10017E1D8()
{
  sub_10001ABE4(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_10017E23C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10017E27C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_10017DBE4(a1, v4, v5, v6);
}

uint64_t sub_10017E330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10017E37C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v106 = a4;
  v104 = a3;
  v109 = a2;
  v9 = type metadata accessor for TranslationTaskHint();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  v13 = type metadata accessor for MainLayoutView(0);
  v14 = v13[5];
  *(a6 + v14) = swift_getKeyPath();
  sub_100005AD4(&qword_1003AEFE0, &qword_1002DA710);
  swift_storeEnumTagMultiPayload();
  v15 = (a6 + v13[6]);
  type metadata accessor for SceneContext(0);
  sub_1001862BC(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
  *v15 = EnvironmentObject.init()();
  v15[1] = v16;
  v17 = (a6 + v13[7]);
  type metadata accessor for ConversationContext(0);
  sub_1001862BC(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);

  v105 = a5;
  *v17 = ObservedObject.init(wrappedValue:)();
  v17[1] = v18;
  *(a6 + v13[14]) = a1;
  v110 = v13;
  *(a6 + v13[12]) = v109;
  v19 = sub_100174454();

  v20 = sub_10000B55C();
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_translator);
  }

  else
  {
    v22 = [objc_allocWithZone(_LTTranslator) init];
  }

  (*(v10 + 104))(v12, enum case for TranslationTaskHint.speech(_:), v9);
  type metadata accessor for LanguagesService();
  swift_allocObject();
  v23 = LanguagesService.init(task:)();
  v24 = sub_10000B55C();
  if (v24)
  {
    v25 = v24;
    v109 = *(v24 + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_deviceHelper);
  }

  else
  {
    type metadata accessor for DeviceHelper(0);
    swift_allocObject();
    v109 = sub_1000CFCFC();
  }

  v26 = sub_10000B55C();
  if (v26)
  {
    v27 = v26;
    v28 = sub_10000AA38();
  }

  else
  {
    v29 = objc_allocWithZone(type metadata accessor for RecordingHelper());

    v28 = sub_100203D4C(v30);
  }

  v102 = v19;
  v31 = sub_10000B55C();
  if (v31)
  {
    v32 = v31;
    v33 = a1;
    v34 = sub_10000AAC4();
  }

  else
  {
    v33 = a1;
    type metadata accessor for TTSManager(0);
    swift_allocObject();
    v35 = v22;
    v32 = v28;
    v34 = sub_1002BCBDC(v35, v32);
  }

  v36 = v110[13];
  v108 = a6;
  *(a6 + v36) = v34;
  type metadata accessor for ErrorStateContext(0);
  swift_allocObject();
  swift_retain_n();
  v37 = sub_1000E9048();
  v96 = v33;
  v38 = *(v33 + 64);
  v99 = type metadata accessor for ComposeTranslationViewModel(0);
  swift_allocObject();
  v39 = v22;
  v40 = v28;

  v41 = v104;
  v42 = v106;

  v43 = sub_1000738A8(v39, v23, v38, v37, v34, v40, v41, v42);
  v100 = v39;

  v107 = v23;

  v104 = v37;
  v44 = v96;
  v45 = v41;
  v46 = v40;

  v101 = v34;

  v47 = v45;

  swift_beginAccess();
  v48 = v44[31];
  v103 = v43;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[31] = v48;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v48 = sub_10028CE7C(0, v48[2] + 1, 1, v48);
    v44[31] = v48;
  }

  v51 = v48[2];
  v50 = v48[3];
  if (v51 >= v50 >> 1)
  {
    v48 = sub_10028CE7C((v50 > 1), v51 + 1, 1, v48);
  }

  v112 = v99;
  v113 = &off_100380FA0;
  v52 = v103;
  *&v111 = v103;
  v48[2] = v51 + 1;
  sub_100051124(&v111, &v48[5 * v51 + 4]);
  v44[31] = v48;
  swift_endAccess();
  v53 = v108 + v110[8];
  *v53 = sub_100185078;
  *(v53 + 8) = v52;
  *(v53 + 16) = 0;
  v54 = v44[9];
  v97 = type metadata accessor for ConversationViewModel(0);
  v55 = objc_allocWithZone(v97);
  v56 = v109;

  v57 = v100;
  v58 = v46;
  v59 = v107;

  v60 = v104;

  v61 = v47;
  v62 = v58;
  v63 = v61;

  v64 = v56;
  v65 = v56;
  v66 = v63;
  v67 = v62;
  v68 = sub_1000B928C(v57, v59, v54, v65, v62, v101, v60, v66);
  swift_beginAccess();
  v69 = v44[31];
  v70 = v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v44[31] = v69;
  if ((v71 & 1) == 0)
  {
    v69 = sub_10028CE7C(0, v69[2] + 1, 1, v69);
    v44[31] = v69;
  }

  v73 = v69[2];
  v72 = v69[3];
  if (v73 >= v72 >> 1)
  {
    v69 = sub_10028CE7C((v72 > 1), v73 + 1, 1, v69);
  }

  v112 = v97;
  v113 = &off_100382CD8;
  *&v111 = v70;
  v69[2] = v73 + 1;
  sub_100051124(&v111, &v69[5 * v73 + 4]);
  v44[31] = v69;
  swift_endAccess();
  v74 = swift_allocObject();
  *(v74 + 16) = v70;
  v75 = v108 + v110[9];
  *v75 = sub_1001850B8;
  *(v75 + 8) = v74;
  *(v75 + 16) = 0;
  v101 = v70;
  v76 = sub_10000B55C();
  v99 = v66;
  v100 = v62;
  v98 = v57;
  if (v76)
  {
    v77 = v76;
    v78 = sub_10000ADA0();
  }

  else
  {
    v79 = v44[10];
    type metadata accessor for PersonalTranslatorViewModel(0);
    swift_allocObject();

    v80 = v57;
    v81 = v67;
    v82 = v66;
    v83 = v107;

    v77 = v82;

    v78 = sub_1001F3E2C(v80, v83, v79, v64, v81, v77);
  }

  v84 = v110;
  v85 = v108;
  v86 = (v108 + v110[10]);
  v114 = v78;
  type metadata accessor for PersonalTranslatorViewModel(0);

  State.init(wrappedValue:)();
  v87 = *(&v111 + 1);
  *v86 = v111;
  v86[1] = v87;
  type metadata accessor for PersonalTranslatorStartViewModel(0);
  swift_allocObject();

  v89 = sub_1001CBD10(v88);

  v90 = (v85 + v84[11]);
  v114 = v89;

  State.init(wrappedValue:)();
  v91 = *(&v111 + 1);
  *v90 = v111;
  v90[1] = v91;
  v92 = swift_allocObject();
  v92[2] = v78;
  v92[3] = v89;
  v102 = v89;
  v92[4] = v105;
  v92[5] = v64;
  type metadata accessor for ActivationManager();
  v109 = v64;
  v93 = swift_allocObject();
  *(v93 + 16) = &unk_1002E3278;
  *(v93 + 24) = v92;
  type metadata accessor for AppDependencyManager();

  static AppDependencyManager.shared.getter();
  v114 = 0xD000000000000023;
  v115 = 0x80000001002F6A50;
  AnyHashable.init<A>(_:)();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009EBC(&v111, &qword_1003B48F8, &qword_1002E3280);
  static AppDependencyManager.shared.getter();
  v114 = 0xD000000000000023;
  v115 = 0x80000001002F6A50;
  AnyHashable.init<A>(_:)();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009EBC(&v111, &qword_1003B48F8, &qword_1002E3280);
  type metadata accessor for AudioDeviceStatusManager();
  v94 = swift_allocObject();
  *(v94 + 16) = &unk_1002E3290;
  *(v94 + 24) = v78;

  static AppDependencyManager.shared.getter();
  v114 = 0xD00000000000002DLL;
  v115 = 0x80000001002F6A80;
  AnyHashable.init<A>(_:)();

  AppDependencyManager.add<A>(key:dependency:)();

  return sub_100009EBC(&v111, &qword_1003B48F8, &qword_1002E3280);
}

uint64_t sub_10017EF28(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 376) = a5;
  *(v6 + 384) = a6;
  *(v6 + 360) = a3;
  *(v6 + 368) = a4;
  *(v6 + 121) = a2;
  *(v6 + 352) = a1;
  v7 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 392) = v7;
  *(v6 + 400) = *(v7 - 8);
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  *(v6 + 424) = v8;
  *(v6 + 432) = *(v8 - 8);
  *(v6 + 440) = swift_task_alloc();
  sub_100005AD4(&qword_1003AFCE0, &qword_1002D5B00);
  *(v6 + 448) = swift_task_alloc();
  v9 = type metadata accessor for Locale();
  *(v6 + 456) = v9;
  *(v6 + 464) = *(v9 - 8);
  *(v6 + 472) = swift_task_alloc();
  v10 = type metadata accessor for IntentSystemContext.Source();
  *(v6 + 480) = v10;
  *(v6 + 488) = *(v10 - 8);
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = type metadata accessor for MainActor();
  *(v6 + 512) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 520) = v12;
  *(v6 + 528) = v11;

  return _swift_task_switch(sub_10017F188, v12, v11);
}

uint64_t sub_10017F188()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 121);
  if (v2 == *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isDualPressGestureIntentInitiated))
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isDualPressGestureIntentInitiated) = v2;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    *(v0 + 280) = v1;
    sub_1001862BC(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  *(v0 + 536) = 0;
  if (*(v0 + 121))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v0 + 488);
    v6 = *(v0 + 496);
    v8 = *(v0 + 480);
    (*(v7 + 16))(v6, *(v0 + 352), v8);
    v9 = (*(v7 + 88))(v6, v8);
    if (v9 == enum case for IntentSystemContext.Source.siri(_:))
    {
      v5 = 2;
      v4 = 3;
    }

    else if (v9 == enum case for IntentSystemContext.Source.shortcuts(_:) || v9 == enum case for IntentSystemContext.Source.controlCenter(_:))
    {
      v4 = 1;
      v5 = 1;
    }

    else
    {
      (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
      v5 = 2;
      v4 = 4;
    }
  }

  *(v0 + 123) = v5;
  *(v0 + 122) = v4;
  if (qword_1003A9298 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  *(v0 + 544) = sub_1000078E8(v11, qword_1003D28D8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "ActivationManager is being launched", v14, 2u);
  }

  *(v0 + 552) = [objc_allocWithZone(type metadata accessor for OnBoardingPresenter(0)) init];
  v15 = swift_task_alloc();
  *(v0 + 560) = v15;
  *v15 = v0;
  v15[1] = sub_10017F4A4;

  return sub_10019C900();
}

uint64_t sub_10017F4A4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  *(*v1 + 568) = a1;

  v4 = *(v2 + 528);
  v5 = *(v2 + 520);

  return _swift_task_switch(sub_10017F5EC, v5, v4);
}

uint64_t sub_10017F5EC()
{
  v1 = *(v0 + 568);
  if (v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "ActivationManager returning early because OnBoarding needs to be presented", v4, 2u);
    }

    v5 = sub_10017FDB8;
    goto LABEL_5;
  }

  v9 = *(v0 + 360);
  swift_getKeyPath();
  *(v0 + 576) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel___observationRegistrar;
  *(v0 + 288) = v9;
  *(v0 + 584) = sub_1001862BC(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive;
  *(v0 + 592) = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isActive;
  if ((*(v9 + v10) & 1) == 0)
  {
    *(v0 + 624) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v19;
    *(v0 + 632) = v18;
    *(v0 + 640) = v19;
    v6 = sub_100180218;
    v7 = v18;
    goto LABEL_15;
  }

  v11 = *(v0 + 360);
  swift_getKeyPath();
  *(v0 + 304) = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + v10) == 1)
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Live Translation is already active", v14, 2u);
    }

    v15 = *(v0 + 123);

    sub_1001DA594(v15, 0);
    goto LABEL_11;
  }

  if (!sub_1001C5120() || (v20 = dispatch thunk of LanguageSelectionDownloadModel.state.getter(), , v20 != 2) || !sub_1001C5164() || (v21 = dispatch thunk of LanguageSelectionDownloadModel.state.getter(), , v21 != 2))
  {
    sub_1001C8500();
    *(v0 + 664) = OBJC_IVAR____TtC17SequoiaTranslator32PersonalTranslatorStartViewModel___observationRegistrar;
    *(v0 + 672) = 0;
    v27 = *(v0 + 456);
    v28 = *(v0 + 464);
    v29 = *(v0 + 448);
    v30 = *(v0 + 368);
    swift_getKeyPath();
    *(v0 + 312) = v30;
    sub_1001862BC(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v30 + 16);
    swift_getKeyPath();
    *(v0 + 320) = v31;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
    swift_beginAccess();
    sub_1000E1D20(v31 + v32, v29);

    if ((*(v28 + 48))(v29, 1, v27) == 1)
    {
      sub_100009EBC(*(v0 + 448), &qword_1003AFCE0, &qword_1002D5B00);
    }

    else
    {
      v34 = *(v0 + 464);
      v33 = *(v0 + 472);
      v35 = *(v0 + 456);
      v36 = *(v0 + 368);
      (*(v34 + 32))(v33, *(v0 + 448), v35);
      swift_getKeyPath();
      *(v0 + 344) = v36;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v37 = LanguageSelectionViewModel.availableLanguages.getter();

      v38 = swift_task_alloc();
      *(v38 + 16) = v33;
      v39 = sub_100199188(sub_100185554, v38, v37);

      (*(v34 + 8))(v33, v35);
      if (v39)
      {
        v40 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

        if (v40 == 2)
        {
          if (sub_1001C5164())
          {
            v41 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

            if (v41 == 2)
            {

              v42 = Logger.logObject.getter();
              v43 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v42, v43))
              {
                v44 = swift_slowAlloc();
                *v44 = 134217984;
                *(v44 + 4) = 0;
                _os_log_impl(&_mh_execute_header, v42, v43, "Languages are available after %ld tries", v44, 0xCu);
              }

              swift_getKeyPath();
              swift_getKeyPath();
              *(v0 + 248) = xmmword_1002D3310;

              static Published.subscript.setter();
              v26 = 4;
              goto LABEL_34;
            }
          }
        }
      }
    }

    v45 = static Duration.seconds(_:)();
    v47 = v46;
    static Clock<>.continuous.getter();
    *(v0 + 200) = v45;
    *(v0 + 208) = v47;
    *(v0 + 176) = 0;
    *(v0 + 184) = 0;
    *(v0 + 192) = 1;
    v5 = sub_100180B48;
LABEL_5:
    v6 = v5;
    v7 = 0;
    v8 = 0;
LABEL_15:

    return _swift_task_switch(v6, v7, v8);
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Languages are available", v24, 2u);
  }

  v25 = *(v0 + 122);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 264) = 0;
  *(v0 + 272) = 3;

  static Published.subscript.setter();
  v26 = v25;
LABEL_34:
  sub_1001D796C(v26);
  sub_1001D74AC();
LABEL_11:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10017FDB8()
{
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *(v1 + 16) = 4;
  v2 = swift_task_alloc();
  *(v0 + 608) = v2;
  *v2 = v0;
  v2[1] = sub_10017FEA4;

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000017, 0x80000001002F6AB0, sub_100186814, v1, &type metadata for () + 8);
}

uint64_t sub_10017FEA4()
{

  return _swift_task_switch(sub_10017FFBC, 0, 0);
}

uint64_t sub_10017FFBC()
{
  v1 = swift_task_alloc();
  *(v0 + 616) = v1;
  *v1 = v0;
  v1[1] = sub_10018004C;

  return sub_1001E1288();
}

uint64_t sub_10018004C()
{
  v1 = *v0;

  v2 = *(v1 + 528);
  v3 = *(v1 + 520);

  return _swift_task_switch(sub_10018016C, v3, v2);
}

uint64_t sub_10018016C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100180218()
{
  v1 = v0[46];
  swift_getKeyPath();
  v0[37] = v1;
  sub_1001862BC(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[81] = *(v1 + 24);

  v2 = swift_task_alloc();
  v0[82] = v2;
  *v2 = v0;
  v2[1] = sub_100180334;

  return LanguageSelectionViewModel.restartObservation()();
}

uint64_t sub_100180334()
{
  v1 = *v0;

  v2 = *(v1 + 640);
  v3 = *(v1 + 632);

  return _swift_task_switch(sub_100180478, v3, v2);
}

uint64_t sub_100180478()
{

  v1 = *(v0 + 528);
  v2 = *(v0 + 520);

  return _swift_task_switch(sub_1001804E0, v2, v1);
}

uint64_t sub_1001804E0()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 360);
  swift_getKeyPath();
  *(v0 + 304) = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + v1) == 1)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Live Translation is already active", v5, 2u);
    }

    v6 = *(v0 + 123);

    sub_1001DA594(v6, 0);
    goto LABEL_5;
  }

  if (sub_1001C5120())
  {
    v9 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

    if (v9 == 2)
    {
      if (sub_1001C5164())
      {
        v10 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

        if (v10 == 2)
        {

          v11 = Logger.logObject.getter();
          v12 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&_mh_execute_header, v11, v12, "Languages are available", v13, 2u);
          }

          v14 = *(v0 + 122);

          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 264) = 0;
          *(v0 + 272) = 3;

          static Published.subscript.setter();
          v15 = v14;
LABEL_24:
          sub_1001D796C(v15);
          sub_1001D74AC();
LABEL_5:

          v7 = *(v0 + 8);

          return v7();
        }
      }
    }
  }

  sub_1001C8500();
  *(v0 + 664) = OBJC_IVAR____TtC17SequoiaTranslator32PersonalTranslatorStartViewModel___observationRegistrar;
  *(v0 + 672) = 0;
  v16 = *(v0 + 456);
  v17 = *(v0 + 464);
  v18 = *(v0 + 448);
  v19 = *(v0 + 368);
  swift_getKeyPath();
  *(v0 + 312) = v19;
  sub_1001862BC(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + 16);
  swift_getKeyPath();
  *(v0 + 320) = v20;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  swift_beginAccess();
  sub_1000E1D20(v20 + v21, v18);

  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_100009EBC(*(v0 + 448), &qword_1003AFCE0, &qword_1002D5B00);
  }

  else
  {
    v23 = *(v0 + 464);
    v22 = *(v0 + 472);
    v24 = *(v0 + 456);
    v25 = *(v0 + 368);
    (*(v23 + 32))(v22, *(v0 + 448), v24);
    swift_getKeyPath();
    *(v0 + 344) = v25;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = LanguageSelectionViewModel.availableLanguages.getter();

    v27 = swift_task_alloc();
    *(v27 + 16) = v22;
    v28 = sub_100199188(sub_100185554, v27, v26);

    (*(v23 + 8))(v22, v24);
    if (v28)
    {
      v29 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

      if (v29 == 2)
      {
        if (sub_1001C5164())
        {
          v30 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

          if (v30 == 2)
          {

            v31 = Logger.logObject.getter();
            v32 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = 134217984;
              *(v33 + 4) = 0;
              _os_log_impl(&_mh_execute_header, v31, v32, "Languages are available after %ld tries", v33, 0xCu);
            }

            swift_getKeyPath();
            swift_getKeyPath();
            *(v0 + 248) = xmmword_1002D3310;

            static Published.subscript.setter();
            v15 = 4;
            goto LABEL_24;
          }
        }
      }
    }
  }

  v34 = static Duration.seconds(_:)();
  v36 = v35;
  static Clock<>.continuous.getter();
  *(v0 + 200) = v34;
  *(v0 + 208) = v36;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;

  return _swift_task_switch(sub_100180B48, 0, 0);
}

uint64_t sub_100180B48()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  v4 = sub_1001862BC(&qword_1003B48E8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001862BC(&qword_1003B48F0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[85] = v5;
  v0[86] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[87] = v6;
  *v6 = v0;
  v6[1] = sub_100180CD0;
  v8 = v0[52];
  v7 = v0[53];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 22, v7, v4);
}

uint64_t sub_100180CD0()
{
  v2 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    (*(v2 + 680))(*(v2 + 416), *(v2 + 392));
    v3 = sub_100181594;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 432);
    v6 = *(v2 + 440);
    v8 = *(v2 + 424);
    (*(v2 + 680))(*(v2 + 416), *(v2 + 392));
    (*(v7 + 8))(v6, v8);
    v5 = *(v2 + 528);
    v4 = *(v2 + 520);
    v3 = sub_100180E3C;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100180E3C(uint64_t a1)
{
  if (*(v1 + 672) == 9)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Languages are not available", v4, 2u);
    }

    v5 = *(v1 + 384);

    swift_getKeyPath();
    *(v1 + 328) = v5;
    sub_1001862BC(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = (v5 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[2];
    *(v1 + 32) = v6[1];
    *(v1 + 48) = v8;
    *(v1 + 16) = v7;
    v9 = v6[3];
    v10 = v6[4];
    v11 = v6[5];
    *(v1 + 105) = *(v6 + 89);
    *(v1 + 80) = v10;
    *(v1 + 96) = v11;
    *(v1 + 64) = v9;
    if (*(v1 + 24))
    {
      v12 = *(v1 + 56);
      if (v12)
      {
        *(v1 + 216) = *(v1 + 48);
        *(v1 + 224) = v12;
        *(v1 + 232) = 45;
        *(v1 + 240) = 0xE100000000000000;
        v13 = *(v1 + 104);
        v14 = *(v1 + 112);
        sub_10001F278();

        v15 = v13;
        v16 = v14;
        if (*(StringProtocol.components<A>(separatedBy:)() + 16))
        {
          v17 = *(v1 + 360);

          swift_getKeyPath();
          *(v1 + 336) = v17;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          dispatch thunk of AudioAccessoryAssetDownLoadService.showDownloadLanguagesNotification(btAddress:)();

          sub_100009EBC(v1 + 16, &qword_1003A93C8, &unk_1002D9A40);
LABEL_24:
          v41 = sub_10018195C;
          goto LABEL_25;
        }

        sub_100009EBC(v1 + 16, &qword_1003A93C8, &unk_1002D9A40);
      }
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "No device connected not sending languages notification", v44, 2u);
    }

    goto LABEL_24;
  }

  v45 = *(v1 + 672) + 1;
  *(v1 + 672) = v45;
  v18 = *(v1 + 456);
  v19 = *(v1 + 464);
  v20 = *(v1 + 448);
  v21 = *(v1 + 368);
  swift_getKeyPath();
  *(v1 + 312) = v21;
  sub_1001862BC(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v21 + 16);
  swift_getKeyPath();
  *(v1 + 320) = v22;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__deviceOwnerLocale;
  swift_beginAccess();
  sub_1000E1D20(v22 + v23, v20);

  if ((*(v19 + 48))(v20, 1, v18) == 1)
  {
    sub_100009EBC(*(v1 + 448), &qword_1003AFCE0, &qword_1002D5B00);
LABEL_19:
    v38 = static Duration.seconds(_:)();
    v40 = v39;
    static Clock<>.continuous.getter();
    *(v1 + 200) = v38;
    *(v1 + 208) = v40;
    *(v1 + 176) = 0;
    *(v1 + 184) = 0;
    *(v1 + 192) = 1;
    v41 = sub_100180B48;
LABEL_25:

    return _swift_task_switch(v41, 0, 0);
  }

  v25 = *(v1 + 464);
  v24 = *(v1 + 472);
  v26 = *(v1 + 456);
  v27 = *(v1 + 368);
  (*(v25 + 32))(v24, *(v1 + 448), v26);
  swift_getKeyPath();
  *(v1 + 344) = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = LanguageSelectionViewModel.availableLanguages.getter();

  v29 = swift_task_alloc();
  *(v29 + 16) = v24;
  v30 = sub_100199188(sub_100185554, v29, v28);

  (*(v25 + 8))(v24, v26);
  if (!v30)
  {
    goto LABEL_19;
  }

  v31 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

  if (v31 != 2)
  {
    goto LABEL_19;
  }

  if (!sub_1001C5164())
  {
    goto LABEL_19;
  }

  v32 = dispatch thunk of LanguageSelectionDownloadModel.state.getter();

  if (v32 != 2)
  {
    goto LABEL_19;
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v33, v34, "Languages are available after %ld tries", v35, 0xCu);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 248) = xmmword_1002D3310;

  static Published.subscript.setter();
  sub_1001D796C(4);
  sub_1001D74AC();

  v36 = *(v1 + 8);

  return v36();
}

uint64_t sub_100181594()
{
  (*(v0[54] + 8))(v0[55], v0[53]);
  v1 = v0[66];
  v2 = v0[65];

  return _swift_task_switch(sub_10018160C, v2, v1);
}

uint64_t sub_10018160C()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Languages are not available", v3, 2u);
  }

  v4 = *(v0 + 384);

  swift_getKeyPath();
  *(v0 + 328) = v4;
  sub_1001862BC(&qword_1003AE978, type metadata accessor for DeviceHelper, &unk_1002DBFC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = (v4 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[2];
  *(v0 + 32) = v5[1];
  *(v0 + 48) = v7;
  *(v0 + 16) = v6;
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[5];
  *(v0 + 105) = *(v5 + 89);
  *(v0 + 80) = v9;
  *(v0 + 96) = v10;
  *(v0 + 64) = v8;
  if (*(v0 + 24))
  {
    v11 = *(v0 + 56);
    if (v11)
    {
      *(v0 + 216) = *(v0 + 48);
      *(v0 + 224) = v11;
      *(v0 + 232) = 45;
      *(v0 + 240) = 0xE100000000000000;
      v12 = *(v0 + 104);
      v13 = *(v0 + 112);
      sub_10001F278();

      v14 = v12;
      v15 = v13;
      if (*(StringProtocol.components<A>(separatedBy:)() + 16))
      {
        v16 = *(v0 + 360);

        swift_getKeyPath();
        *(v0 + 336) = v16;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        dispatch thunk of AudioAccessoryAssetDownLoadService.showDownloadLanguagesNotification(btAddress:)();

        sub_100009EBC(v0 + 16, &qword_1003A93C8, &unk_1002D9A40);
        goto LABEL_11;
      }

      sub_100009EBC(v0 + 16, &qword_1003A93C8, &unk_1002D9A40);
    }
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "No device connected not sending languages notification", v19, 2u);
  }

LABEL_11:

  return _swift_task_switch(sub_10018195C, 0, 0);
}

uint64_t sub_10018195C()
{
  v1 = swift_task_alloc();
  *(v0 + 712) = v1;
  *(v1 + 16) = 4;
  v2 = swift_task_alloc();
  *(v0 + 720) = v2;
  *v2 = v0;
  v2[1] = sub_100181A48;

  return withCheckedContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000017, 0x80000001002F6AB0, sub_1001854FC, v1, &type metadata for () + 8);
}

uint64_t sub_100181A48()
{

  return _swift_task_switch(sub_100181B60, 0, 0);
}

uint64_t sub_100181B60()
{
  v1 = swift_task_alloc();
  *(v0 + 728) = v1;
  *v1 = v0;
  v1[1] = sub_100181BF0;

  return sub_1001E0C74();
}

uint64_t sub_100181BF0()
{
  v1 = *v0;

  v2 = *(v1 + 528);
  v3 = *(v1 + 520);

  return _swift_task_switch(sub_10018016C, v3, v2);
}

uint64_t sub_100181D10(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100005AD4(&qword_1003AA3B8, &unk_1002D3EF0);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return _swift_task_switch(sub_100181DE4, v4, v3);
}

uint64_t sub_100181DE4()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v3;
  v6[5] = v2;
  v7 = sub_10005EC78(0, 0, v1, &unk_1002E32A8, v6);
  v0[9] = v7;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_100181F3C;

  return Task<>.value.getter(v0 + 11, v7, &type metadata for Bool);
}

uint64_t sub_100181F3C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100182080, v3, v2);
}

uint64_t sub_100182080()
{

  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1001820F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v6 = type metadata accessor for ContinuousClock.Instant();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v9;
  v5[19] = v8;

  return _swift_task_switch(sub_100182254, v9, v8);
}

uint64_t sub_100182254()
{
  if (qword_1003A92B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 160) = sub_1000078E8(v1, qword_1003D2920);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for device AirPods to get connected...", v4, 2u);
  }

  v5 = *(v0 + 64);

  if (v5 < 0)
  {
    __break(1u);
    return _swift_task_switch(v6, v7, v8);
  }

  if (*(v0 + 64))
  {
    *(v0 + 168) = 0;
    if (sub_1001D5750(v6))
    {

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        v12 = 1;
        goto LABEL_18;
      }

      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Connecting supported audio device took %ld tries", v11, 0xCu);
      v12 = 1;
      goto LABEL_12;
    }

    v15 = static Duration.seconds(_:)();
    v17 = v16;
    static Clock<>.continuous.getter();
    *(v0 + 40) = v15;
    *(v0 + 48) = v17;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    v6 = sub_100182524;
    v7 = 0;
    v8 = 0;

    return _swift_task_switch(v6, v7, v8);
  }

  v9 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v9, v13))
  {
    v12 = 0;
    goto LABEL_18;
  }

  v14 = swift_slowAlloc();
  *v14 = 0;
  _os_log_impl(&_mh_execute_header, v9, v13, "Failed to get AirPods connected", v14, 2u);
  v12 = 0;
LABEL_12:

LABEL_18:

  **(v0 + 56) = v12;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100182524()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = sub_1001862BC(&qword_1003B48E8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1001862BC(&qword_1003B48F0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[22] = v5;
  v0[23] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1001826A8;
  v8 = v0[13];
  v7 = v0[14];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v7, v4);
}

uint64_t sub_1001826A8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    (*(v2 + 176))(*(v2 + 104), *(v2 + 80));
    v3 = sub_100182A98;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 120);
    v6 = *(v2 + 128);
    v8 = *(v2 + 112);
    (*(v2 + 176))(*(v2 + 104), *(v2 + 80));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 144);
    v5 = *(v2 + 152);
    v3 = sub_100182808;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100182808(uint64_t a1)
{
  v2 = *(v1 + 168) + 1;
  if (v2 == *(v1 + 64))
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      v6 = 0;
      goto LABEL_17;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get AirPods connected", v5, 2u);
    v6 = 0;
LABEL_7:

LABEL_17:

    **(v1 + 56) = v6;

    v15 = *(v1 + 8);

    return v15();
  }

  *(v1 + 168) = v2;
  if (sub_1001D5750(a1))
  {

    v3 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v7))
    {
      v6 = 1;
      goto LABEL_17;
    }

    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v7, "Connecting supported audio device took %ld tries", v8, 0xCu);
    v6 = 1;
    goto LABEL_7;
  }

  if (v2 == 5)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Took a long time to get dependencies to connect AirPods. Take a look at the stacks of audiomxd (MediaExperience Routing) and audioaccessoryd (Connected Audio - Accessory Controls)", v11, 2u);
    }
  }

  v12 = static Duration.seconds(_:)();
  v14 = v13;
  static Clock<>.continuous.getter();
  *(v1 + 40) = v12;
  *(v1 + 48) = v14;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;

  return _swift_task_switch(sub_100182524, 0, 0);
}

uint64_t sub_100182A98()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[18];
  v2 = v0[19];

  return _swift_task_switch(sub_100182B0C, v1, v2);
}

uint64_t sub_100182B0C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Waiting for the next check for supported AirPods failed: %@", v3, 0xCu);
    sub_100009EBC(v4, &unk_1003AECA0, &unk_1002D3F10);
  }

  else
  {
  }

  **(v0 + 56) = 1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100182C9C@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = type metadata accessor for UUID();
  v65 = *(v2 - 8);
  v66 = v2;
  __chkstk_darwin(v2);
  v64 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OpaqueTypeConformance2 = type metadata accessor for ScenePhase();
  v58 = *(OpaqueTypeConformance2 - 8);
  __chkstk_darwin(OpaqueTypeConformance2);
  v57 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MainLayoutView(0);
  v6 = *(v5 - 8);
  v69 = (v5 - 8);
  __chkstk_darwin(v5 - 8);
  v74 = v7;
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100005AD4(&qword_1003B49F0, &qword_1002E3488);
  __chkstk_darwin(v56);
  v10 = &v51 - v9;
  v52 = &v51 - v9;
  v71 = sub_100005AD4(&qword_1003B49F8, &qword_1002E3490);
  __chkstk_darwin(v71);
  v12 = &v51 - v11;
  v60 = sub_100005AD4(&qword_1003B4A00, &qword_1002E3498);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v72 = &v51 - v13;
  v14 = sub_100005AD4(&qword_1003B4A08, &qword_1002E34A0);
  v62 = *(v14 - 8);
  v63 = v14;
  __chkstk_darwin(v14);
  v61 = &v51 - v15;
  sub_100183804(v1, v10);
  v68 = v1;
  v54 = type metadata accessor for ConversationContext(0);
  v53 = sub_1001862BC(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v70 = type metadata accessor for MainLayoutView;
  v55 = v8;
  sub_100186564(v1, v8, type metadata accessor for MainLayoutView);
  v16 = *(v6 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  sub_100185BD4(v8, v18 + v17);
  sub_100005AD4(&qword_1003B4A10, &qword_1002E34D0);
  sub_100185CA8();
  sub_100185E3C();
  v19 = v52;
  View.sheet<A>(isPresented:onDismiss:content:)();

  v20 = v68;

  sub_100009EBC(v19, &qword_1003B49F0, &qword_1002E3488);
  type metadata accessor for ConversationViewModel(0);
  sub_1001862BC(&qword_1003AE4F8, type metadata accessor for ConversationViewModel, &unk_1002DB3D0);
  v21 = StateObject.wrappedValue.getter();
  v22 = EnvironmentObject.init()();
  v24 = v23;
  LOBYTE(v78) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v8) = v75;
  v25 = *(&v75 + 1);
  v26 = &v12[*(sub_100005AD4(&qword_1003B4A58, &unk_1002E34F0) + 36)];
  *v26 = v22;
  *(v26 + 1) = v24;
  *(v26 + 2) = v21;
  v26[24] = v8;
  *(v26 + 4) = v25;
  type metadata accessor for ComposeTranslationViewModel(0);
  sub_1001862BC(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel, &unk_1002D73F8);
  v27 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC17SequoiaTranslator27ComposeTranslationViewModel_ttsManager);

  v78 = 0;
  v79 = 0;
  sub_100005AD4(&qword_1003AA748, &qword_1002E8C10);
  State.init(wrappedValue:)();
  v28 = v76;
  v29 = v75;
  v30 = v12;
  v31 = &v12[*(v71 + 36)];
  *v31 = v27;
  *(v31 + 8) = xmmword_1002E3200;
  *(v31 + 24) = v29;
  *(v31 + 5) = v28;
  v32 = v57;
  sub_100156DDC(v57);
  v33 = v55;
  sub_100186564(v20, v55, v70);
  v70 = v16;
  v34 = v17;
  v35 = swift_allocObject() + v17;
  v36 = v33;
  sub_100185BD4(v33, v35);
  v37 = sub_100185FA0();
  v38 = sub_1001862BC(&qword_1003AF010, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v39 = OpaqueTypeConformance2;
  View.onChange<A>(of:initial:_:)();

  (*(v58 + 8))(v32, v39);
  sub_1001861C8(v30);
  if (*(v20 + *(v69 + 8)))
  {
    v40 = v20;
    swift_getKeyPath();
    swift_getKeyPath();

    v41 = v64;
    static Published.subscript.getter();

    v69 = type metadata accessor for MainLayoutView;
    sub_100186564(v40, v36, type metadata accessor for MainLayoutView);
    v42 = swift_allocObject();
    sub_100185BD4(v36, v42 + v34);
    *&v75 = v71;
    *(&v75 + 1) = OpaqueTypeConformance2;
    v76 = v37;
    v77 = v38;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = sub_1001862BC(&qword_1003AFF88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = v61;
    v45 = v60;
    v46 = v66;
    v47 = v72;
    View.onChange<A>(of:initial:_:)();

    (*(v65 + 8))(v41, v46);
    (*(v59 + 8))(v47, v45);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    LOBYTE(v78) = v75;
    sub_100186564(v68, v36, v69);
    v48 = swift_allocObject();
    sub_100185BD4(v36, v48 + v34);
    *&v75 = v45;
    *(&v75 + 1) = v46;
    v76 = OpaqueTypeConformance2;
    v77 = v43;
    swift_getOpaqueTypeConformance2();
    v49 = v63;
    View.onChange<A>(of:initial:_:)();

    return (*(v62 + 8))(v44, v49);
  }

  else
  {
    type metadata accessor for SceneContext(0);
    sub_1001862BC(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100183804@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = sub_100005AD4(&qword_1003B4A98, &qword_1002E35F0);
  __chkstk_darwin(v38);
  v40 = (&v34 - v3);
  v39 = type metadata accessor for TabBarLayoutView(0);
  __chkstk_darwin(v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*(a1 + 8) == 1)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10002F620(v10, 0);
    (*(v7 + 8))(v9, v6);
    if (v45 != 1)
    {
LABEL_8:
      v12 = type metadata accessor for MainLayoutView(0);
      type metadata accessor for ConversationContext(0);
      sub_1001862BC(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
      ObservedObject.projectedValue.getter();
      swift_getKeyPath();
      ObservedObject.Wrapper.subscript.getter();

      v37 = v45;
      v13 = *(a1 + v12[12]);
      v14 = *(a1 + v12[13]);
      v35 = v47;
      *&v36 = v46;
      type metadata accessor for ComposeTranslationViewModel(0);
      sub_1001862BC(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel, &unk_1002D73F8);

      v15 = StateObject.wrappedValue.getter();
      type metadata accessor for ConversationViewModel(0);
      sub_1001862BC(&qword_1003AE4F8, type metadata accessor for ConversationViewModel, &unk_1002DB3D0);
      v16 = StateObject.wrappedValue.getter();
      v17 = (a1 + v12[11]);
      v19 = *v17;
      v18 = v17[1];
      v43 = v19;
      v44 = v18;
      sub_100005AD4(&qword_1003B4AA0, &qword_1002E35F8);
      State.wrappedValue.getter();
      v20 = v42;
      *&v5[*(v39 + 40)] = swift_getKeyPath();
      sub_100005AD4(&qword_1003B23E0, &qword_1002D6770);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PersistedTranslation();
      static PersistedTranslation.favoritedSortedByLocalePairAndCreationDateFetchRequest()();
      FetchRequest.init(fetchRequest:animation:)();
      *v5 = v37;
      v21 = v35;
      *(v5 + 2) = v36;
      *(v5 + 3) = v21;
      *(v5 + 4) = v13;
      *(v5 + 5) = v14;
      *(v5 + 6) = v15;
      *(v5 + 7) = v16;
      *(v5 + 8) = v20;
      sub_100186564(v5, v40, type metadata accessor for TabBarLayoutView);
      swift_storeEnumTagMultiPayload();
      sub_1001862BC(&qword_1003B4A30, type metadata accessor for TabBarLayoutView, &unk_1002EBE28);
      sub_100185DE8();
      _ConditionalContent<>.init(storage:)();
      return sub_1001865CC(v5);
    }
  }

  if (qword_1003A91F0 != -1)
  {
    swift_once();
  }

  if (byte_1003D26A0 == 1)
  {
    goto LABEL_8;
  }

  v23 = type metadata accessor for MainLayoutView(0);
  *&v37 = type metadata accessor for ConversationContext(0);
  sub_1001862BC(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v36 = v45;
  v24 = *(a1 + *(v23 + 48));
  v25 = *(a1 + *(v23 + 52));
  v34 = v47;
  v35 = v46;
  type metadata accessor for ComposeTranslationViewModel(0);
  sub_1001862BC(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel, &unk_1002D73F8);

  v26 = StateObject.wrappedValue.getter();
  type metadata accessor for ConversationViewModel(0);
  sub_1001862BC(&qword_1003AE4F8, type metadata accessor for ConversationViewModel, &unk_1002DB3D0);
  v27 = StateObject.wrappedValue.getter();
  v28 = EnvironmentObject.init()();
  v30 = v29;
  v31 = sub_100120D44(&off_10037DBC8);
  sub_100186628(&unk_10037DBE8);
  v32 = v40;
  *v40 = v36;
  v33 = v34;
  v32[2] = v35;
  v32[3] = v33;
  v32[4] = v28;
  v32[5] = v30;
  v32[6] = v24;
  v32[7] = v25;
  v32[8] = v26;
  v32[9] = v27;
  v32[10] = v31;
  swift_storeEnumTagMultiPayload();
  sub_1001862BC(&qword_1003B4A30, type metadata accessor for TabBarLayoutView, &unk_1002EBE28);
  sub_100185DE8();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100183FBC@<X0>(uint64_t a2@<X8>)
{
  sub_100005AD4(&qword_1003B4A88, &qword_1002E3598);
  type metadata accessor for LanguageDownloadView();
  sub_1001862BC(&qword_1003B4A90, &type metadata accessor for LanguageDownloadView, &protocol conformance descriptor for LanguageDownloadView);
  swift_getOpaqueTypeConformance2();
  NavigationView.init(content:)();
  v3 = static Color.translateAccentColor.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100005AD4(&qword_1003B4A10, &qword_1002E34D0);
  v6 = (a2 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

uint64_t sub_1001840CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v2 = type metadata accessor for MainLayoutView(0);
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  __chkstk_darwin(v2 - 8);
  v19 = type metadata accessor for CloseButtonPosition();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LanguageDownloadView.ContextView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LanguageDownloadView();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for LanguageDownloadView.ContextView.app(_:), v7);
  LanguageDownloadView.init(context:headerView:)();
  v15 = v19;
  (*(v4 + 104))(v6, enum case for CloseButtonPosition.right(_:), v19);
  sub_100186564(v21, &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MainLayoutView);
  v16 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v17 = swift_allocObject();
  sub_100185BD4(&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1001862BC(&qword_1003B4A90, &type metadata accessor for LanguageDownloadView, &protocol conformance descriptor for LanguageDownloadView);
  View.closeButton(position:enabled:action:)();

  (*(v4 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100184440(uint64_t a1)
{
  type metadata accessor for MainLayoutView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = static Published.subscript.modify();
  *v2 = !*v2;
  v1(&v4, 0);
}

uint64_t sub_1001844F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 104);
  v9(v8, enum case for ScenePhase.background(_:), v5);
  v10 = static ScenePhase.== infix(_:_:)();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (v10)
  {
    v12 = type metadata accessor for MainLayoutView(0);
    v20 = v9;
    v21 = a2;
    v19 = *(a3 + *(v12 + 32));
    type metadata accessor for ComposeTranslationViewModel(0);
    sub_1001862BC(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel, &unk_1002D73F8);
    StateObject.wrappedValue.getter();
    sub_10006C46C();

    type metadata accessor for ConversationViewModel(0);
    sub_1001862BC(&qword_1003AE4F8, type metadata accessor for ConversationViewModel, &unk_1002DB3D0);
    v9 = v20;
    v13 = StateObject.wrappedValue.getter();
    sub_1000C0ED8();
  }

  v9(v8, enum case for ScenePhase.active(_:), v5);
  v14 = static ScenePhase.== infix(_:_:)();
  result = (v11)(v8, v5);
  if (v14)
  {
    v16 = (a3 + *(type metadata accessor for MainLayoutView(0) + 40));
    v18 = *v16;
    v17 = v16[1];
    v22 = v18;
    v23 = v17;
    sub_100005AD4(&qword_1003B4A80, &qword_1002E3590);
    State.wrappedValue.getter();
    sub_1001DF1B0();
  }

  return result;
}

void sub_1001847A8()
{
  type metadata accessor for MainLayoutView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 <= 2)
  {
    if (!v8)
    {
      type metadata accessor for ComposeTranslationViewModel(0);
      sub_1001862BC(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel, &unk_1002D73F8);
      StateObject.wrappedValue.getter();
      sub_10006D044();

      v1 = v7;
      v2 = 0;
      goto LABEL_15;
    }

    if (v8 == 2)
    {
      type metadata accessor for ConversationViewModel(0);
      sub_1001862BC(&qword_1003AE4F8, type metadata accessor for ConversationViewModel, &unk_1002DB3D0);
      v0 = StateObject.wrappedValue.getter();
      sub_1000C0550();

      v1 = v7;
      v2 = 2;
LABEL_15:
      sub_10000A948(v1, v2);
      return;
    }

    goto LABEL_7;
  }

  if (v8 == 3)
  {
    sub_100005AD4(&qword_1003B4A80, &qword_1002E3590);
    State.wrappedValue.getter();
    sub_1001DEDA4();

    v1 = v7;
    v2 = 3;
    goto LABEL_15;
  }

  if (v8 != 6)
  {
LABEL_7:
    sub_10000A948(v7, v8);
  }

  if (qword_1003A9298 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000078E8(v3, qword_1003D28D8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "There was a connection issue with translationd; this issue is not surfaced in the app because the current tab doesn't have a handler", v6, 2u);
  }
}

void sub_100184A70(uint64_t a1)
{
  v2 = type metadata accessor for MainLayoutView(0);
  type metadata accessor for ConversationViewModel(0);
  sub_1001862BC(&qword_1003AE4F8, type metadata accessor for ConversationViewModel, &unk_1002DB3D0);
  v3 = StateObject.wrappedValue.getter();
  if (*(a1 + *(v2 + 24)))
  {
    v4 = v3;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_faceToFaceVisible] = v5;
  }

  else
  {
    type metadata accessor for SceneContext(0);
    sub_1001862BC(&qword_1003AC860, type metadata accessor for SceneContext, &unk_1002E8C28);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_100184BF4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001862BC(&qword_1003B3270, type metadata accessor for PersonalTranslatorStartViewModel, &unk_1002E6B6C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);

  return result;
}

double sub_100184CCC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001862BC(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);

  return result;
}

uint64_t sub_100184DA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001862BC(&qword_1003B4900, type metadata accessor for PersonalTranslatorViewModel, &unk_1002E7508);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator27PersonalTranslatorViewModel__isDualPressGestureIntentInitiated);
  return result;
}

uint64_t sub_100184EA0(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

void *sub_100184F68@<X0>(_BYTE *a1@<X8>)
{
  sub_1000E8694();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for MainLayoutView(uint64_t a1)
{
  result = qword_1003B4960;
  if (!qword_1003B4960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100185080()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001850C0()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100185110(uint64_t a1, char a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10001B558;

  return sub_10017EF28(a1, a2, v6, v7, v9, v8);
}

double sub_1001851D4@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

uint64_t sub_1001851E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100185278;

  return sub_100181D10(a1, v1);
}

uint64_t sub_100185278(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100185374()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001853B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B16C;

  return sub_1001820F4(a1, v4, v5, v7, v6);
}

uint64_t sub_100185590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003AEE88, &qword_1002E6130);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100185674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003AEE88, &qword_1002E6130);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100185740(uint64_t a1)
{
  sub_10018592C();
  if (v1 <= 0x3F)
  {
    sub_100185B38(319, &qword_1003AEF00, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10005C50C(319);
      if (v3 <= 0x3F)
      {
        sub_10018597C(319);
        if (v4 <= 0x3F)
        {
          sub_100185A10(319);
          if (v5 <= 0x3F)
          {
            sub_100185AA4(319);
            if (v6 <= 0x3F)
            {
              sub_100185B38(319, &qword_1003B4990, type metadata accessor for PersonalTranslatorViewModel, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_100185B38(319, &unk_1003B4998, type metadata accessor for PersonalTranslatorStartViewModel, &type metadata accessor for State);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for TranslationStoreCoreData();
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for TTSManager(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for TranslationSessionManager();
                      if (v11 <= 0x3F)
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
  }
}

void sub_10018592C()
{
  if (!qword_1003B4970)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B4970);
    }
  }
}

void sub_10018597C(uint64_t a1)
{
  if (!qword_1003B4978)
  {
    type metadata accessor for ConversationContext(255);
    sub_1001862BC(&unk_1003BC490, type metadata accessor for ConversationContext, &unk_1002D86C0);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B4978);
    }
  }
}

void sub_100185A10(uint64_t a1)
{
  if (!qword_1003B4980)
  {
    type metadata accessor for ComposeTranslationViewModel(255);
    sub_1001862BC(&unk_1003BC4A0, type metadata accessor for ComposeTranslationViewModel, &unk_1002D73F8);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B4980);
    }
  }
}

void sub_100185AA4(uint64_t a1)
{
  if (!qword_1003B4988)
  {
    type metadata accessor for ConversationViewModel(255);
    sub_1001862BC(&qword_1003AE4F8, type metadata accessor for ConversationViewModel, &unk_1002DB3D0);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1003B4988);
    }
  }
}

void sub_100185B38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100185BC4(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100185BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainLayoutView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100185C38@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MainLayoutView(0);

  return sub_100183FBC(a1);
}

unint64_t sub_100185CA8()
{
  result = qword_1003B4A18;
  if (!qword_1003B4A18)
  {
    sub_100005EA8(&qword_1003B49F0, &qword_1002E3488);
    sub_100185D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4A18);
  }

  return result;
}

unint64_t sub_100185D2C()
{
  result = qword_1003B4A20;
  if (!qword_1003B4A20)
  {
    sub_100005EA8(&qword_1003B4A28, &qword_1002E34D8);
    sub_1001862BC(&qword_1003B4A30, type metadata accessor for TabBarLayoutView, &unk_1002EBE28);
    sub_100185DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4A20);
  }

  return result;
}

unint64_t sub_100185DE8()
{
  result = qword_1003B4A38;
  if (!qword_1003B4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4A38);
  }

  return result;
}

unint64_t sub_100185E3C()
{
  result = qword_1003B4A40;
  if (!qword_1003B4A40)
  {
    sub_100005EA8(&qword_1003B4A10, &qword_1002E34D0);
    sub_10001BAEC(&qword_1003B4A48, &qword_1003B4A50, &unk_1002E34E0, &protocol conformance descriptor for NavigationView<A>);
    sub_10001BAEC(&qword_1003AA870, &qword_1003AA878, &qword_1002D5BE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4A40);
  }

  return result;
}

uint64_t sub_100185F20(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MainLayoutView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1001844F4(a1, a2, v6);
}

unint64_t sub_100185FA0()
{
  result = qword_1003B4A60;
  if (!qword_1003B4A60)
  {
    sub_100005EA8(&qword_1003B49F8, &qword_1002E3490);
    sub_10018602C();
    sub_100186174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4A60);
  }

  return result;
}

unint64_t sub_10018602C()
{
  result = qword_1003B4A68;
  if (!qword_1003B4A68)
  {
    sub_100005EA8(&qword_1003B4A58, &unk_1002E34F0);
    sub_100005EA8(&qword_1003B49F0, &qword_1002E3488);
    sub_100005EA8(&qword_1003B4A10, &qword_1002E34D0);
    sub_100185CA8();
    sub_100185E3C();
    swift_getOpaqueTypeConformance2();
    sub_100186120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4A68);
  }

  return result;
}

unint64_t sub_100186120()
{
  result = qword_1003B4A70;
  if (!qword_1003B4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4A70);
  }

  return result;
}

unint64_t sub_100186174()
{
  result = qword_1003B4A78;
  if (!qword_1003B4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4A78);
  }

  return result;
}

uint64_t sub_1001861C8(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B49F8, &qword_1002E3490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001862BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018630C()
{
  v1 = type metadata accessor for MainLayoutView(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  sub_10002F620(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_100005AD4(&qword_1003AEFE0, &qword_1002DA710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ScenePhase();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  sub_10011C804(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  sub_100185BC4(*(v4 + v1[9]), *(v4 + v1[9] + 8), *(v4 + v1[9] + 16));

  return _swift_deallocObject(v0, v3 + v2);
}

uint64_t sub_1001864E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MainLayoutView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100186564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001865CC(uint64_t a1)
{
  v2 = type metadata accessor for TabBarLayoutView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018667C()
{
  sub_100005EA8(&qword_1003B4A08, &qword_1002E34A0);
  sub_100005EA8(&qword_1003B4A00, &qword_1002E3498);
  type metadata accessor for UUID();
  sub_100005EA8(&qword_1003B49F8, &qword_1002E3490);
  type metadata accessor for ScenePhase();
  sub_100185FA0();
  sub_1001862BC(&qword_1003AF010, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  swift_getOpaqueTypeConformance2();
  sub_1001862BC(&qword_1003AFF88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100186854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005AD4(&qword_1003B4AA8, &qword_1002E3710);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_100005AD4(&qword_1003B4AB0, &qword_1002E3718);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v14 - v10;
  if (qword_1003A91F0 != -1)
  {
    v9 = swift_once();
  }

  if (byte_1003D26A0 == 1)
  {
    v14[1] = a2;
    __chkstk_darwin(v9);
    v14[-2] = a1;
    sub_100005AD4(&qword_1003B4AB8, &qword_1002E3720);
    sub_100187178(&qword_1003B4AC8, &qword_1003B4AB8, &qword_1002E3720);
    MaterialEffectContainer_V1<A>.init(content:)();
    (*(v8 + 16))(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_100187064();
    _ConditionalContent<>.init(storage:)();
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v13 = sub_100005AD4(&qword_1003B4AB8, &qword_1002E3720);
    (*(*(v13 - 8) + 16))(v6, a1, v13);
    swift_storeEnumTagMultiPayload();
    sub_100187064();
    sub_100187178(&qword_1003B4AC8, &qword_1003B4AB8, &qword_1002E3720);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100186B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v28 = sub_100005AD4(&qword_1003B4AD0, &unk_1002E3728);
  __chkstk_darwin(v28);
  v3 = &v24 - v2;
  v4 = type metadata accessor for Material._GlassVariant();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B2F18, &qword_1002E0330);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for MaterialEffectItemConfiguration_V1();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005AD4(&qword_1003B4AD8, &qword_1002E3738);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  if (qword_1003A91F0 != -1)
  {
    swift_once();
  }

  if (byte_1003D26A0 == 1)
  {
    MaterialEffectItemConfiguration_V1.init()();
    static Color.translateAccentColor.getter();
    v25 = v11;
    static Material._GlassVariant.widgets(tint:)();
    static Material._glass(_:)();
    (*(v5 + 8))(v7, v4);

    v18 = type metadata accessor for Material();
    (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    MaterialEffectItemConfiguration_V1.material.setter();
    sub_10013EF74();
    MaterialEffectItemConfiguration_V1.setShape<A>(_:)();
    v19 = sub_100005AD4(&qword_1003B4AE0, &qword_1002E3740);
    v20 = sub_100187178(&qword_1003B4AE8, &qword_1003B4AE0, &qword_1002E3740);
    View.materialEffectItem_v1(_:)();
    (*(v26 + 8))(v13, v25);
    (*(v15 + 16))(v3, v17, v14);
    swift_storeEnumTagMultiPayload();
    v30 = v19;
    v31 = v20;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v22 = sub_100005AD4(&qword_1003B4AE0, &qword_1002E3740);
    (*(*(v22 - 8) + 16))(v3, v27, v22);
    swift_storeEnumTagMultiPayload();
    v23 = sub_100187178(&qword_1003B4AE8, &qword_1003B4AE0, &qword_1002E3740);
    v30 = v22;
    v31 = v23;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

unint64_t sub_100187064()
{
  result = qword_1003B4AC0;
  if (!qword_1003B4AC0)
  {
    sub_100005EA8(&qword_1003B4AB0, &qword_1002E3718);
    sub_100187178(&qword_1003B4AC8, &qword_1003B4AB8, &qword_1002E3720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4AC0);
  }

  return result;
}

uint64_t sub_100187100@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_100005AD4(&qword_1003B4AB8, &qword_1002E3720);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_100187178(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001871D0()
{
  result = qword_1003B4AF0;
  if (!qword_1003B4AF0)
  {
    sub_100005EA8(&qword_1003B4AF8, &qword_1002E3748);
    sub_100187064();
    sub_100187178(&qword_1003B4AC8, &qword_1003B4AB8, &qword_1002E3720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4AF0);
  }

  return result;
}

unint64_t sub_100187278()
{
  result = qword_1003B4B00;
  if (!qword_1003B4B00)
  {
    sub_100005EA8(&qword_1003B4B08, &unk_1002E3750);
    sub_100005EA8(&qword_1003B4AE0, &qword_1002E3740);
    sub_100187178(&qword_1003B4AE8, &qword_1003B4AE0, &qword_1002E3740);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4B00);
  }

  return result;
}

unint64_t sub_10018735C()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x65766E6F4377656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E61725477656ELL;
  }
}

uint64_t sub_1001873D4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10018744C()
{
  result = qword_1003B4C08;
  if (!qword_1003B4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4C08);
  }

  return result;
}

unint64_t sub_1001874A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MenuCommandController();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100292900(_swiftEmptyArrayStorage);
  result = sub_100292914(_swiftEmptyArrayStorage);
  *(v2 + 24) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_100187500()
{
  sub_1000B0444();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100187558(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10018759C(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 8);
  v25 = *a1;
  v6 = v25;
  v7 = v26;

  v8 = v6;
  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100187B50(&v25);
    (*(v3 + 8))(v5, v2);
    v8 = v24[0];
  }

  v22 = v3;
  v10 = *(a1 + 9);
  v12 = a1[2];
  v11 = a1[3];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v8 + 16);
  *(v8 + 16) = 0x8000000000000000;
  sub_100291ABC(sub_10003BA58, v13, v10, isUniquelyReferenced_nonNull_native);
  *(v8 + 16) = v23;
  swift_endAccess();

  v16 = a1[4];
  if (v16)
  {
    v17 = a1[5];
    sub_100187A7C(&v25, v24);
    sub_10001AD18(v16, v17);
    if (!v7)
    {
      static os_log_type_t.fault.getter();
      v18 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100187B50(&v25);
      (*(v22 + 8))(v5, v2);
      v6 = v24[0];
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v17;
    swift_beginAccess();

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v6 + 24);
    *(v6 + 24) = 0x8000000000000000;
    sub_100291AD0(sub_100187BF0, v19, v10, v20);
    *(v6 + 24) = v23;
    swift_endAccess();

    return sub_10001ABE4(v16, v17);
  }

  return result;
}

uint64_t sub_1001878F4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8 = *(v0 + 9);
  v1 = v8;
  v9 = *v0;
  v10 = *(v0 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = *v0;
  *(v5 + 24) = *(v0 + 8);
  *(v5 + 25) = v1;
  *(v5 + 26) = *(v0 + 10);
  *(v5 + 32) = v0[2];
  *(v5 + 40) = v2;
  *(v5 + 48) = v3;
  *(v5 + 56) = v4;
  sub_100187A7C(&v9, &v7);

  sub_10001AD18(v3, v4);
  sub_100005AD4(&qword_1003B4C18, &unk_1002E39A0);
  sub_100187AEC();
  sub_10018744C();
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_100187A24()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100187A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B4C10, &qword_1002E3998);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100187AEC()
{
  result = qword_1003B4C20;
  if (!qword_1003B4C20)
  {
    sub_100005EA8(&qword_1003B4C18, &unk_1002E39A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B4C20);
  }

  return result;
}

uint64_t sub_100187B50(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B4C10, &qword_1002E3998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100187BB8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100187BF0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100187C24()
{
  sub_100005EA8(&qword_1003B4C18, &unk_1002E39A0);
  sub_100187AEC();
  sub_10018744C();
  return swift_getOpaqueTypeConformance2();
}

Class sub_100187CD4()
{
  sub_10000A2CC(0, &qword_1003BB710, UIKeyCommand_ptr);
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  swift__string._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x54414C534E415254;
  v2._object = 0xE900000000000045;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, swift__string);

  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 systemImageNamed:v4];

  v7 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v0 mainBundle];
  swift__stringa._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x4152454D4143;
  v9._object = 0xE600000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  swift__stringa._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, swift__stringa);

  v11 = String._bridgeToObjectiveC()();
  v12 = [v5 systemImageNamed:v11];

  v13 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v14 = [v0 mainBundle];
  swift__stringb._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x41535245564E4F43;
  v15._object = 0xEC0000004E4F4954;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  swift__stringb._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, swift__stringb);

  v17 = String._bridgeToObjectiveC()();
  v18 = [v5 systemImageNamed:v17];

  v49 = 0u;
  *&v50 = 0;
  preferredElementSize = _swiftEmptyArrayStorage;
  v19 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002DC210;
  *(v20 + 32) = v7;
  *(v20 + 40) = v13;
  *(v20 + 48) = v19;
  v52 = v20;
  *(&v50 + 1) = &type metadata for TranslateFeatures;
  v51 = sub_100009DF8();
  LOBYTE(v49) = 10;
  v21 = v7;
  v22 = v13;
  v23 = v19;
  v24 = isFeatureEnabled(_:)();
  sub_100008664(&v49);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v26 = result;
  deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();

  if ((deviceSupportsPersonalTranslator & 1) != 0 || _LTIsInternalInstall() && (v34 = [objc_opt_self() standardUserDefaults], v35 = String._bridgeToObjectiveC()(), v36 = objc_msgSend(v34, "BOOLForKey:", v35), v34, v35, v36))
  {
    v28 = [v0 mainBundle];
    swift__stringc._object = 0xE000000000000000;
    v29.value._object = 0x80000001002F0080;
    v30._countAndFlagsBits = 1163282764;
    v30._object = 0xE400000000000000;
    v29.value._countAndFlagsBits = 0xD000000000000012;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    swift__stringc._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v29, v28, v31, swift__stringc);

    v32 = String._bridgeToObjectiveC()();
    v33 = [v5 systemImageNamed:v32];
  }

  else
  {
LABEL_7:
    v37 = [v0 mainBundle];
    swift__stringd._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0x455449524F564146;
    v38._object = 0xE900000000000053;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    swift__stringd._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, swift__stringd);

    v40 = String._bridgeToObjectiveC()();
    v41 = [v5 systemImageNamed:v40];
  }

  v49 = 0u;
  v50 = 0u;
  v42 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v43 = v52;
  v44 = String._bridgeToObjectiveC()();
  if (v43 >> 62)
  {
    sub_10000A2CC(0, &unk_1003B2900, UIMenuElement_ptr);

    v45 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000A2CC(0, &unk_1003B2900, UIMenuElement_ptr);
    v45 = v43;
  }

  sub_10000A2CC(0, &qword_1003AB700, UIMenu_ptr);
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v53.value.super.isa = 0;
  v53.is_nil = v44;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v46, 0, v53, 1, 0xFFFFFFFFFFFFFFFFLL, v45, 0).super.super.isa;

  return isa;
}

void sub_100188420(void *a1)
{
  sub_10000A2CC(0, &qword_1003BB710, UIKeyCommand_ptr);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  swift__string._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x43495645445F4E4FLL;
  v4._object = 0xEE004B4E494C5F45;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, swift__string);

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  v8 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_10000A2CC(0, &qword_1003AB700, UIMenu_ptr);
  v9 = String._bridgeToObjectiveC()();
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002D95A0;
  *(v10 + 32) = v8;
  preferredElementSize = v10;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v30.value.super.isa = 0;
  v30.is_nil = v9;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v11, 0, v30, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  [a1 insertChildMenu:isa atStartOfMenuForIdentifier:UIMenuFile];

  v13 = [v2 mainBundle];
  swift__stringa._object = 0xE000000000000000;
  v14._object = 0x80000001002F6B70;
  v14._countAndFlagsBits = 0xD000000000000017;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  swift__stringa._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, swift__stringa);

  v16 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v17 = [v2 mainBundle];
  swift__stringb._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0xD00000000000001ELL;
  v18._object = 0x80000001002F6BE0;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  swift__stringb._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, swift__stringb);

  v20 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v21 = String._bridgeToObjectiveC()();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002D5560;
  *(v22 + 32) = v16;
  *(v22 + 40) = v20;
  preferredElementSizea = v22;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v31.value.super.isa = 0;
  v31.is_nil = v21;
  v24 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v31, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSizea, 0).super.super.isa;
  [a1 insertChildMenu:v24 atStartOfMenuForIdentifier:UIMenuFile];

  v28 = sub_100187CD4();
  [a1 insertChildMenu:v28 atStartOfMenuForIdentifier:UIMenuView];
}

uint64_t sub_100188870(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = "nslator14MenuController";
    if (a3 == 2)
    {
      v6 = "COMMAND_NEW_TRANSLATION";
      v7 = 0xD000000000000018;
    }

    else
    {
      v7 = 0xD000000000000017;
    }

    v13._object = 0xE000000000000000;
    v8 = v6 | 0x8000000000000000;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v5, v9, v13);

    v10 = String._bridgeToObjectiveC()();

    [a1 setTitle:v10];

    a3 &= ~2uLL;
LABEL_10:

    return [a1 setAttributes:a3 != 0];
  }

  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    [a1 setAttributes:(a3 & 0xFFFFFFFFFFFFFFFDLL) != 0];
  }

  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    goto LABEL_10;
  }

  result = static Selector.== infix(_:_:)();
  if (result)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100188A2C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100188AAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_100188C0C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
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

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t sub_100188E64(uint64_t a1)
{
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  static Alignment.center.getter();
  v11 = *(a1 + 24);
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v12[0] = v11;
  v12[1] = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  sub_10002D870();
  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_10002D870();
  return (v9)(v8, v2);
}

uint64_t sub_10018903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return static View<>._makeView(view:inputs:)(a1, a2, a3, WitnessTable, a4);
}

uint64_t sub_1001890C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return static View<>._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable, a4);
}

void (*sub_100189178(uint64_t a1, uint64_t a2))(double *a1)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  *a1 = sub_100188E54();
  return sub_1001891C0;
}

char *sub_100189290(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator29MoreHistoryCollectionViewCell_paddingDefault] = 0x4028000000000000;
  v9 = OBJC_IVAR____TtC17SequoiaTranslator29MoreHistoryCollectionViewCell_moreHistoryView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for MoreHistoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator29MoreHistoryCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v44.receiver = v4;
  v44.super_class = type metadata accessor for MoreHistoryCollectionViewCell();
  v10 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC17SequoiaTranslator29MoreHistoryCollectionViewCell_moreHistoryView;
  v12 = *&v10[OBJC_IVAR____TtC17SequoiaTranslator29MoreHistoryCollectionViewCell_moreHistoryView];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v13 contentView];
  [v14 addSubview:*&v10[v11]];

  v15 = [v13 contentView];
  v16 = [v15 trailingAnchor];

  v17 = [*&v10[v11] trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:12.0];

  LODWORD(v19) = 1148829696;
  [v18 setPriority:v19];
  v20 = [*&v10[v11] heightAnchor];
  v42 = [v20 constraintGreaterThanOrEqualToConstant:48.0];

  LODWORD(v21) = 1148829696;
  [v42 setPriority:v21];
  v43 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002D80E0;
  v23 = [*&v10[v11] topAnchor];
  v24 = [v13 contentView];
  v25 = [v24 topAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  *(v22 + 32) = v26;
  v27 = [*&v10[v11] leadingAnchor];
  v28 = [v13 contentView];
  v29 = [v28 leadingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:12.0];
  *(v22 + 40) = v30;
  *(v22 + 48) = v18;
  v31 = *&v10[v11];
  v32 = v18;
  v33 = [v31 bottomAnchor];
  v34 = [v13 contentView];
  v35 = [v34 bottomAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:-12.0];
  *(v22 + 56) = v36;
  *(v22 + 64) = v42;
  sub_100033604();
  v37 = v42;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];

  v39 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v13 action:"tapped:"];
  [v39 setNumberOfTapsRequired:1];
  [v13 addGestureRecognizer:v39];
  v40 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v13 action:"gestureUpdated:"];
  [v40 setMinimumPressDuration:0.5];
  [v13 addGestureRecognizer:v40];

  return v13;
}

id sub_100189B54()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() mainBundle];
  v8._object = 0x80000001002F6DE0;
  v2._object = 0x80000001002F6DC0;
  v2._countAndFlagsBits = 0xD000000000000011;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v8);

  v4 = String._bridgeToObjectiveC()();

  [v0 setText:v4];

  v5 = [objc_opt_self() boldSystemFontOfSize:16.0];
  [v0 setFont:v5];

  v6 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v6];

  return v0;
}

id sub_100189CD8()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  [v0 setImage:v2];
  v3 = [objc_opt_self() secondarySystemFillColor];
  [v0 setTintColor:v3];

  return v0;
}

char *sub_100189DD4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC17SequoiaTranslator15MoreHistoryView_paddingDefault] = 0x4028000000000000;
  v9 = OBJC_IVAR____TtC17SequoiaTranslator15MoreHistoryView_moreHistoryLabel;
  *&v4[v9] = sub_100189B54();
  v10 = OBJC_IVAR____TtC17SequoiaTranslator15MoreHistoryView_disclosureIndictor;
  v11 = [objc_allocWithZone(UIImageView) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12];

  [v11 setImage:v13];
  v14 = objc_opt_self();
  v15 = [v14 secondarySystemFillColor];
  [v11 setTintColor:v15];

  *&v4[v10] = v11;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for MoreHistoryView();
  v16 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v14 secondarySystemGroupedBackgroundColor];
  [v16 setBackgroundColor:v17];

  v18 = [v16 layer];
  [v18 setCornerRadius:10.0];

  v19 = OBJC_IVAR____TtC17SequoiaTranslator15MoreHistoryView_moreHistoryLabel;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC17SequoiaTranslator15MoreHistoryView_moreHistoryLabel]];
  v20 = OBJC_IVAR____TtC17SequoiaTranslator15MoreHistoryView_disclosureIndictor;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC17SequoiaTranslator15MoreHistoryView_disclosureIndictor]];
  v21 = objc_opt_self();
  sub_100005AD4(&unk_1003AFCC0, &unk_1002D54E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002D53E0;
  v23 = [*&v16[v19] leadingAnchor];
  v24 = [v16 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:12.0];

  *(v22 + 32) = v25;
  v26 = [v16 trailingAnchor];
  v27 = [*&v16[v20] trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:12.0];

  *(v22 + 40) = v28;
  v29 = *&v16[v19];
  v30 = [v21 constraintWithItem:v29 attribute:10 relatedBy:0 toItem:v16 attribute:10 multiplier:1.0 constant:0.0];

  *(v22 + 48) = v30;
  *(v22 + 56) = [v21 constraintWithItem:*&v16[v20] attribute:10 relatedBy:0 toItem:v16 attribute:10 multiplier:1.0 constant:0.0];
  sub_100033604();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 activateConstraints:isa];

  return v16;
}