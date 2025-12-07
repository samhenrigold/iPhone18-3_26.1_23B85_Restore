double sub_10002C788@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    v7 = *a1;
    v8 = *(a2 + 40);
    v9 = *(a3 + 16);
    v37 = *(a2 + 32);

    v36 = v8;

    if (v9 && (v10 = sub_1001921F0(), (v11 & 1) != 0))
    {
      v12 = (*(a3 + 56) + 16 * v10);
      v13 = *v12;
      v34 = v12[1];

      v35 = v13;
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    v14 = *(a2 + 56);
    v33 = *(a2 + 48);
    v15 = *(a2 + 80);
    v49 = *(a2 + 64);
    v50 = v15;
    *&v51 = *(a2 + 96);

    sub_1000040A8(&qword_100356698, &qword_1002862B0);
    FocusState.projectedValue.getter();
    v32 = *v38;
    v17 = *&v38[16];
    v16 = *&v38[24];
    type metadata accessor for AppEvents();
    sub_100031E6C(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

    v18 = EnvironmentObject.init()();
    v20 = v19;
    type metadata accessor for UIMetrics();
    sub_100031E6C(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v21 = EnvironmentObject.init()();
    v23 = v22;
    sub_1000040A8(&qword_1003566A0, &qword_100279AF0);
    State.init(wrappedValue:)();
    *v38 = v18;
    *&v38[8] = v20;
    *&v38[16] = v21;
    *&v38[24] = v23;
    *&v38[32] = v37;
    *&v38[40] = v36;
    *&v38[48] = v7;
    *&v38[56] = v35;
    *&v38[64] = v34;
    *&v38[72] = v33;
    *&v38[88] = v32;
    *&v38[80] = v14;
    *&v38[104] = v17;
    *&v38[112] = v16;
    *&v38[120] = v49;
    v39 = v50;
    sub_10003150C(v38);
  }

  else
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v41 = 1;
    *&v40[55] = v45;
    *&v40[71] = v46;
    *&v40[87] = v47;
    *&v40[103] = v48;
    *&v40[7] = v42;
    *&v40[23] = v43;
    *&v40[39] = v44;
    *v38 = 0;
    v38[8] = 1;
    *&v38[57] = *&v40[48];
    *&v38[41] = *&v40[32];
    *&v38[25] = *&v40[16];
    *&v38[9] = *v40;
    *&v38[120] = *(&v48 + 1);
    *&v38[105] = *&v40[96];
    *&v38[89] = *&v40[80];
    *&v38[73] = *&v40[64];
    sub_10002CF18(v38);
  }

  v24 = sub_1000040A8(&qword_100356680, &qword_100279AD0);
  sub_10002CDC8(v24, v25, v26);
  sub_10002CE1C();
  _ConditionalContent<>.init(storage:)();
  v27 = v56;
  *(a4 + 96) = v55;
  *(a4 + 112) = v27;
  *(a4 + 128) = v57;
  *(a4 + 144) = v58;
  v28 = v52;
  *(a4 + 32) = v51;
  *(a4 + 48) = v28;
  v29 = v54;
  *(a4 + 64) = v53;
  *(a4 + 80) = v29;
  result = *&v49;
  v31 = v50;
  *a4 = v49;
  *(a4 + 16) = v31;
  return result;
}

uint64_t sub_10002CB18(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 144);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:
      sub_1000040A8(&qword_100356698, &qword_1002862B0);
      return FocusState.wrappedValue.setter();
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002CC58()
{

  sub_100008964((v0 + 128));

  return _swift_deallocObject(v0, 168, 7);
}

unint64_t sub_10002CCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356660;
  if (!qword_100356660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356660);
  }

  return result;
}

unint64_t sub_10002CD3C()
{
  result = qword_100356668;
  if (!qword_100356668)
  {
    v1 = sub_100008CF0(&qword_100356650, &qword_100279AC8);
    sub_10002CDC8(v1, v2, v3);
    sub_10002CE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356668);
  }

  return result;
}

unint64_t sub_10002CDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356670;
  if (!qword_100356670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356670);
  }

  return result;
}

unint64_t sub_10002CE1C()
{
  result = qword_100356678;
  if (!qword_100356678)
  {
    sub_100008CF0(&qword_100356680, &qword_100279AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356678);
  }

  return result;
}

uint64_t sub_10002CEA0()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10002CF24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 24))(v16, v5, v6);
    v7 = static HorizontalAlignment.center.getter();
    v13 = 0;
    sub_10002D0A4(v2, v16, __src);
    memcpy(__dst, __src, 0x249uLL);
    memcpy(v15, __src, 0x249uLL);
    sub_100006C20(__dst, &v10, &qword_1003566C8, &qword_100279C20);
    sub_100008FA0(v15, &qword_1003566C8, &qword_100279C20);
    memcpy(&v12[7], __dst, 0x249uLL);
    v8 = v13;
    *a1 = v7;
    *(a1 + 8) = 0x4020000000000000;
    *(a1 + 16) = v8;
    memcpy((a1 + 17), v12, 0x250uLL);
    return sub_100008964(v16);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100031E6C(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002D0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v96 = a2;
  v99 = a3;
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v113 = *(a1 + 48);
  v11 = *(v113 + 32);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v97 = v6;
  v94 = v10;
  v95 = v5;
  if (v14)
  {
    *v168 = v12;
    *&v168[8] = v13;
    sub_100031770(v6, v7, v8);

    v15 = Text.init<A>(_:)();
    v110 = v16;
    v111 = v15;
    v18 = v17;
    v109 = v19;
    static Font.headline.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    (*(v5 + 104))(v10, enum case for Font.Leading.tight(_:), v4);
    Font.leading(_:)();

    (*(v5 + 8))(v10, v4);
    v21 = v110;
    v20 = v111;
    v114 = Text.font(_:)();
    v115 = v22;
    v112 = v23;
    v25 = v24;

    sub_1000317C4(v20, v21, v18 & 1);

    KeyPath = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v175[55] = v190;
    *&v175[71] = v191;
    *&v175[87] = v192;
    *&v175[103] = v193;
    *&v175[7] = v187;
    *&v175[23] = v188;
    v167[0] = v25 & 1;
    *&v175[39] = v189;
    v27 = swift_getKeyPath();
    *&v168[105] = *&v175[64];
    *&v168[121] = *&v175[80];
    *&v168[137] = *&v175[96];
    *&v168[41] = *v175;
    *&v168[57] = *&v175[16];
    *&v168[73] = *&v175[32];
    *v168 = v114;
    *&v168[8] = v112;
    v168[16] = v25 & 1;
    *&v168[24] = v115;
    *&v168[32] = KeyPath;
    v168[40] = 0;
    *&v168[89] = *&v175[48];
    *&v168[152] = *&v175[111];
    *&v168[160] = v27;
    *&v168[168] = 0x3FE0000000000000;
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
    v183 = *&v168[112];
    v184 = *&v168[128];
    v185 = *&v168[144];
    v186 = *&v168[160];
    v180 = *&v168[64];
    v181 = *&v168[80];
    v182 = *&v168[96];
    v176 = *v168;
    v177 = *&v168[16];
    v178 = *&v168[32];
    v179 = *&v168[48];
  }

  else
  {
    sub_100031DE4(&v176);
  }

  v28 = *(a1 + 40);
  *v167 = *(a1 + 120);
  *&v167[16] = *(a1 + 136);
  sub_1000040A8(&qword_1003566D8, &qword_100279C88);
  State.projectedValue.getter();
  v29 = *v168;
  v30 = *&v168[8];
  v32 = *&v168[16];
  v31 = *&v168[24];
  v33 = swift_allocObject();
  v34 = *(a1 + 48);
  v33[3] = *(a1 + 32);
  v33[4] = v34;
  v35 = *(a1 + 128);
  v33[8] = *(a1 + 112);
  v33[9] = v35;
  v36 = *(a1 + 96);
  v33[6] = *(a1 + 80);
  v33[7] = v36;
  v33[5] = *(a1 + 64);
  v37 = *(a1 + 16);
  v33[1] = *a1;
  v33[2] = v37;
  if (*(v28 + 32) == 2 && *(v113 + 40) == 1)
  {
    type metadata accessor for MainActor();
    v114 = v29;
    sub_1000317F0(a1, v168);
    sub_1000317F0(a1, v168);

    v38 = v113;

    v39 = static MainActor.shared.getter();
    v40 = swift_allocObject();
    v112 = v31;
    v115 = v32;
    *(v40 + 16) = v39;
    *(v40 + 24) = &protocol witness table for MainActor;
    v41 = *(a1 + 112);
    *(v40 + 128) = *(a1 + 96);
    *(v40 + 144) = v41;
    *(v40 + 160) = *(a1 + 128);
    v42 = *(a1 + 48);
    *(v40 + 64) = *(a1 + 32);
    *(v40 + 80) = v42;
    v43 = *(a1 + 80);
    *(v40 + 96) = *(a1 + 64);
    *(v40 + 112) = v43;
    v44 = *(a1 + 16);
    *(v40 + 32) = *a1;
    *(v40 + 48) = v44;
    *(v40 + 176) = v28;
    *(v40 + 184) = v38;
    sub_1000317F0(a1, v168);

    v45 = v114;

    v46 = static MainActor.shared.getter();
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *(v47 + 24) = &protocol witness table for MainActor;
    v48 = *(a1 + 112);
    *(v47 + 128) = *(a1 + 96);
    *(v47 + 144) = v48;
    *(v47 + 160) = *(a1 + 128);
    v49 = *(a1 + 48);
    *(v47 + 64) = *(a1 + 32);
    *(v47 + 80) = v49;
    v50 = *(a1 + 80);
    *(v47 + 96) = *(a1 + 64);
    *(v47 + 112) = v50;
    v51 = *(a1 + 16);
    *(v47 + 32) = *a1;
    *(v47 + 48) = v51;
    *(v47 + 176) = v28;
    *(v47 + 184) = v45;
    v52 = v115;
    *(v47 + 192) = v30;
    *(v47 + 200) = v52;
    *(v47 + 208) = v112;
    *(v47 + 216) = sub_1000317E8;
    *(v47 + 224) = v33;
    *(v47 + 232) = v38;
    Binding.init(get:set:)();

    v53 = *&v168[8];
    v112 = *v168;
    v115 = *&v168[16];
    v54 = *&v168[24];
  }

  else
  {
    *v167 = 0;
    *&v167[8] = 0xE000000000000000;
    sub_1000317F0(a1, v168);
    static Binding.constant(_:)();

    v53 = *&v168[8];
    v112 = *v168;
    v54 = *&v168[24];
    v115 = *&v168[16];
  }

  v55 = swift_allocObject();
  v56 = *(a1 + 48);
  v55[3] = *(a1 + 32);
  v55[4] = v56;
  v57 = *(a1 + 128);
  v55[8] = *(a1 + 112);
  v55[9] = v57;
  v58 = *(a1 + 96);
  v55[6] = *(a1 + 80);
  v55[7] = v58;
  v55[5] = *(a1 + 64);
  v59 = *(a1 + 16);
  v55[1] = *a1;
  v55[2] = v59;
  v60 = *(v113 + 24);
  v111 = *(v113 + 16);
  v62 = *(a1 + 88);
  v61 = *(a1 + 96);
  v63 = *(a1 + 112);
  v107 = *(a1 + 104);
  v114 = v63;
  sub_1000317F0(a1, v168);
  v106 = type metadata accessor for UIMetrics();
  v105 = sub_100031E6C(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v64 = v112;

  v110 = v60;

  v109 = v62;

  v108 = v61;

  v98 = v55;

  v102 = EnvironmentObject.init()();
  v106 = v65;
  *v167 = 0;
  *&v167[8] = 0xE000000000000000;
  State.init(wrappedValue:)();
  v104 = *&v168[8];
  v105 = *v168;
  v103 = *&v168[16];
  v171 = v64;
  v172 = v53;
  v173 = v115;
  v174 = v54;
  v100 = v54;
  sub_1000040A8(&qword_1003566E0, &qword_100279C90);
  Binding.wrappedValue.getter();
  v66 = v169;
  v67 = v170;
  v101 = v53;
  if ((v170 & 0x1000000000000000) != 0)
  {
    v68 = String.UTF8View._foreignCount()();
  }

  else
  {

    if ((v67 & 0x2000000000000000) != 0)
    {
      v68 = HIBYTE(v67) & 0xF;
    }

    else
    {
      v68 = v66 & 0xFFFFFFFFFFFFLL;
    }
  }

  v69 = *(v113 + 48);
  v70 = v97;
  if (v68 >= v69)
  {
    v73 = static VerticalAlignment.center.getter();
    v150[0] = 0;
    sub_10002ED60(v168);
    v164 = *&v168[192];
    v165 = *&v168[208];
    v160 = *&v168[128];
    v161 = *&v168[144];
    v162 = *&v168[160];
    v163 = *&v168[176];
    v156 = *&v168[64];
    v157 = *&v168[80];
    v158 = *&v168[96];
    v159 = *&v168[112];
    v152 = *v168;
    v153 = *&v168[16];
    v154 = *&v168[32];
    v155 = *&v168[48];
    v118[12] = *&v168[192];
    v118[13] = *&v168[208];
    v118[8] = *&v168[128];
    v118[9] = *&v168[144];
    v118[10] = *&v168[160];
    v118[11] = *&v168[176];
    v118[4] = *&v168[64];
    v118[5] = *&v168[80];
    v118[6] = *&v168[96];
    v118[7] = *&v168[112];
    v118[0] = *v168;
    v118[1] = *&v168[16];
    v166 = *&v168[224];
    *&v118[14] = *&v168[224];
    v118[2] = *&v168[32];
    v118[3] = *&v168[48];
    sub_100006C20(&v152, v167, &qword_1003566E8, &qword_100279C98);
    sub_100008FA0(v118, &qword_1003566E8, &qword_100279C98);
    *(&v151[11] + 7) = v163;
    *(&v151[12] + 7) = v164;
    *(&v151[13] + 7) = v165;
    *(&v151[14] + 7) = v166;
    *(&v151[7] + 7) = v159;
    *(&v151[8] + 7) = v160;
    *(&v151[9] + 7) = v161;
    *(&v151[10] + 7) = v162;
    *(&v151[3] + 7) = v155;
    *(&v151[4] + 7) = v156;
    *(&v151[5] + 7) = v157;
    *(&v151[6] + 7) = v158;
    *(v151 + 7) = v152;
    *(&v151[1] + 7) = v153;
    *(&v151[2] + 7) = v154;
    *&v167[193] = v151[11];
    *&v167[209] = v151[12];
    *&v167[225] = v151[13];
    *&v167[240] = *(&v151[13] + 15);
    *&v167[129] = v151[7];
    *&v167[145] = v151[8];
    *&v167[161] = v151[9];
    *&v167[177] = v151[10];
    *&v167[65] = v151[3];
    *&v167[81] = v151[4];
    *&v167[97] = v151[5];
    *&v167[113] = v151[6];
    *&v167[17] = v151[0];
    *&v167[33] = v151[1];
    *v167 = v73;
    *&v167[8] = 0x4010000000000000;
    v167[16] = v150[0];
    *&v167[49] = v151[2];
    sub_100031830(v167);
    memcpy(v150, v167, 0x101uLL);
    sub_1000040A8(&qword_1003566F0, &qword_100279CA0);
    sub_1000040A8(&qword_1003566F8, &qword_100279CA8);
    sub_100009274(&qword_100356700, &qword_1003566F0, &qword_100279CA0, &protocol conformance descriptor for HStack<A>);
    sub_100031838();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *&v152 = v112;
    *(&v152 + 1) = v101;
    *&v153 = v115;
    *(&v153 + 1) = v100;
    Binding.wrappedValue.getter();
    v71 = v130[0];
    if ((*(&v130[0] + 1) & 0x1000000000000000) != 0)
    {
      v72 = String.UTF8View._foreignCount()();
    }

    else
    {

      if ((*(&v71 + 1) & 0x2000000000000000) != 0)
      {
        v72 = HIBYTE(*(&v71 + 1)) & 0xFLL;
      }

      else
      {
        v72 = v71 & 0xFFFFFFFFFFFFLL;
      }
    }

    if (v72 / v69 >= 0.8)
    {
      LocalizedStringKey.init(stringLiteral:)();
      *&v113 = Text.init(_:tableName:bundle:comment:)();
      v96 = v74;
      v76 = v75;
      v93 = v77;
      v78 = swift_getKeyPath();
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v116[55] = v194[3];
      *&v116[71] = v194[4];
      *&v116[87] = v194[5];
      *&v116[103] = v194[6];
      *&v116[7] = v194[0];
      *&v116[23] = v194[1];
      v79 = v76 & 1;
      v167[0] = v76 & 1;
      *&v116[39] = v194[2];
      static Font.subheadline.getter();
      static Font.Weight.semibold.getter();
      Font.weight(_:)();

      v81 = v94;
      v80 = v95;
      (*(v95 + 104))(v94, enum case for Font.Leading.tight(_:), v70);
      v82 = v70;
      v83 = Font.leading(_:)();

      (*(v80 + 8))(v81, v82);
      v84 = swift_getKeyPath();
      v85 = [objc_opt_self() secondaryLabelColor];
      v86 = Color.init(uiColor:)();
      v87 = swift_getKeyPath();
      *&v168[105] = *&v116[64];
      *&v168[121] = *&v116[80];
      *&v168[137] = *&v116[96];
      *&v168[41] = *v116;
      *&v168[57] = *&v116[16];
      *&v168[73] = *&v116[32];
      *v168 = v113;
      *&v168[8] = v96;
      v168[16] = v79;
      *&v168[24] = v93;
      *&v168[32] = v78;
      v168[40] = 0;
      *&v168[89] = *&v116[48];
      *&v168[152] = *&v116[111];
      *&v168[160] = v84;
      *&v168[168] = v83;
      *&v168[176] = v87;
      *&v168[184] = v86;
      ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
      v118[8] = *&v168[128];
      v118[9] = *&v168[144];
      v118[10] = *&v168[160];
      v118[11] = *&v168[176];
      v118[4] = *&v168[64];
      v118[5] = *&v168[80];
      v118[6] = *&v168[96];
      v118[7] = *&v168[112];
      v118[0] = *v168;
      v118[1] = *&v168[16];
      v118[2] = *&v168[32];
      v118[3] = *&v168[48];
    }

    else
    {
      sub_100031BD8(v118);
    }

    *&v167[128] = v118[8];
    *&v167[144] = v118[9];
    *&v167[160] = v118[10];
    *&v167[176] = v118[11];
    *&v167[64] = v118[4];
    *&v167[80] = v118[5];
    *&v167[96] = v118[6];
    *&v167[112] = v118[7];
    *v167 = v118[0];
    *&v167[16] = v118[1];
    *&v167[32] = v118[2];
    *&v167[48] = v118[3];
    sub_100031BF8(v167);
    memcpy(v150, v167, 0x101uLL);
    sub_1000040A8(&qword_1003566F0, &qword_100279CA0);
    sub_1000040A8(&qword_1003566F8, &qword_100279CA8);
    sub_100009274(&qword_100356700, &qword_1003566F0, &qword_100279CA0, &protocol conformance descriptor for HStack<A>);
    sub_100031838();
    _ConditionalContent<>.init(storage:)();
  }

  v127 = v184;
  v128 = v185;
  v129 = v186;
  v123 = v180;
  v124 = v181;
  v125 = v182;
  v126 = v183;
  v119 = v176;
  v120 = v177;
  v121 = v178;
  v122 = v179;
  memcpy(v118, v168, 0x101uLL);
  v130[7] = v183;
  v130[8] = v184;
  v130[9] = v185;
  v130[10] = v186;
  v130[3] = v179;
  v130[4] = v180;
  v130[5] = v181;
  v130[6] = v182;
  v130[0] = v176;
  v130[1] = v177;
  v130[2] = v178;
  v117[7] = v183;
  v117[8] = v184;
  v117[9] = v185;
  v117[10] = v186;
  v117[3] = v179;
  v117[4] = v180;
  v117[5] = v181;
  v117[6] = v182;
  v117[0] = v176;
  v117[1] = v177;
  v117[2] = v178;
  v88 = v101;
  *&v131 = v102;
  *(&v131 + 1) = v106;
  v89 = v112;
  *&v132 = v112;
  *(&v132 + 1) = v101;
  *&v133 = v115;
  v90 = v100;
  *(&v133 + 1) = v100;
  *&v134 = v105;
  *(&v134 + 1) = v104;
  *&v135[0] = v103;
  v113 = xmmword_1002799C0;
  *(v135 + 8) = xmmword_1002799C0;
  *(&v135[1] + 1) = v111;
  *&v136 = v110;
  *(&v136 + 1) = v109;
  *&v137 = v108;
  *(&v137 + 1) = v107;
  *&v138 = v114;
  v97 = sub_100031828;
  v91 = v98;
  *(&v138 + 1) = sub_100031828;
  v139 = v98;
  *&v117[20] = v98;
  v117[15] = v135[0];
  v117[16] = v135[1];
  v117[13] = v133;
  v117[14] = v134;
  v117[18] = v137;
  v117[19] = v138;
  v117[17] = v136;
  v117[11] = v131;
  v117[12] = v132;
  memcpy(v150, v168, 0x101uLL);
  sub_100006C20(v130, v167, &qword_100356760, &qword_100279CE8);
  sub_100031B70(&v131, v167);
  sub_100006C20(v150, v167, &qword_100356768, &qword_100279CF0);

  memcpy(&v117[20] + 8, v150, 0x101uLL);
  memcpy(v99, v117, 0x249uLL);
  memcpy(v167, v118, sizeof(v167));
  sub_100008FA0(v167, &qword_100356768, &qword_100279CF0);
  v140[0] = v102;
  v140[1] = v106;
  v140[2] = v89;
  v140[3] = v88;
  v140[4] = v115;
  v140[5] = v90;
  v140[6] = v105;
  v140[7] = v104;
  v140[8] = v103;
  v141 = v113;
  v142 = v111;
  v143 = v110;
  v144 = v109;
  v145 = v108;
  v146 = v107;
  v147 = v114;
  v148 = v97;
  v149 = v91;
  sub_100031BA8(v140);
  v160 = v127;
  v161 = v128;
  v162 = v129;
  v156 = v123;
  v157 = v124;
  v158 = v125;
  v159 = v126;
  v152 = v119;
  v153 = v120;
  v154 = v121;
  v155 = v122;
  return sub_100008FA0(&v152, &qword_100356760, &qword_100279CE8);
}

void sub_10002E17C(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_beginAccess();
  v3 = *(v2 + 136);
  if (v3 && ((v4 = *(a1 + 40), *(v3 + 16) == *(v4 + 16)) ? (v5 = *(v3 + 24) == *(v4 + 24)) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    sub_10002E324();
  }

  else
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381E48);
    sub_1000317F0(a1, v14);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_100031E04(a1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136446210;
      v11 = sub_1000B9A7C();
      v13 = sub_10017C9E8(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] FreeFormContentView: return tapped in the free form text when it is not a current question anymore", v9, 0xCu);
      sub_100008964(v10);
    }
  }
}

void sub_10002E324()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 104);
    v11[0] = *(v0 + 88);
    v11[1] = v1;

    sub_1000040A8(&qword_100356778, &qword_100279D68);
    FocusState.Binding.wrappedValue.setter();
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (sub_1000BB344(v2, v3, 0))
    {
      (*(v0 + 72))();
    }

    else
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000F53C(v4, qword_100381E48);
      sub_1000317F0(v0, v11);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      sub_100031E04(v0);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *&v11[0] = swift_slowAlloc();
        *v7 = 136446723;
        v8 = sub_1000B9A7C();
        v10 = sub_10017C9E8(v8, v9, v11);

        *(v7 + 4) = v10;
        *(v7 + 12) = 2081;
        *(v7 + 14) = sub_10017C9E8(*(v3 + 16), *(v3 + 24), v11);
        *(v7 + 22) = 2081;
        *(v7 + 24) = sub_10017C9E8(*(v2 + 16), *(v2 + 24), v11);
        _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] QuestionnaireBodyView: failed to record %{private}s answer for %{private}s", v7, 0x20u);
        swift_arrayDestroy();
      }
    }
  }
}

uint64_t sub_10002E538(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v67 = a3;
  v64 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0xE000000000000000;
  aBlock = 0;
  v73 = 0xE000000000000000;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v68 = a1;
  v69 = a2;
  v70 = 0;
  v71 = v8;

  v9 = String.Iterator.next()();
  object = v9.value._object;
  if (v9.value._object)
  {
    countAndFlagsBits = v9.value._countAndFlagsBits;
    do
    {
      v13 = String._bridgeToObjectiveC()();
      IsSingleEmoji = CEMStringIsSingleEmoji();

      if (!IsSingleEmoji)
      {
        v15._countAndFlagsBits = countAndFlagsBits;
        v15._object = object;
        String.append(_:)(v15);
      }

      v12 = String.Iterator.next()();
      countAndFlagsBits = v12.value._countAndFlagsBits;
      object = v12.value._object;
    }

    while (v12.value._object);
    object = aBlock;
    v7 = v73;
  }

  v68 = object;
  v69 = v7;
  v16 = String.init<A>(_:)();
  v18 = v17;

  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  v20 = String.hasSuffix(_:)(v19);
  v65 = v20;
  sub_100031770(v20, v21, v22);

  v68 = v16;
  v69 = v18;
  aBlock = 2570;
  v73 = 0xE200000000000000;
  v23 = StringProtocol.contains<A>(_:)();

  v66 = v18;
  if (v23)
  {
    do
    {
      v68 = v16;
      v69 = v18;
      aBlock = 2570;
      v73 = 0xE200000000000000;
      v78 = 10;
      v79 = 0xE100000000000000;
      v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v25 = v24;

      v68 = v16;
      v69 = v25;
      aBlock = 2570;
      v73 = 0xE200000000000000;
      v26 = StringProtocol.contains<A>(_:)();

      v18 = v25;
    }

    while ((v26 & 1) != 0);
  }

  else
  {
    v25 = v18;
  }

  v68 = v16;
  v69 = v25;
  aBlock = 8202;
  v73 = 0xE200000000000000;
  v78 = 32;
  v79 = 0xE100000000000000;
  v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v29 = v28;

  v68 = v27;
  v69 = v29;
  aBlock = 2592;
  v73 = 0xE200000000000000;
  v78 = 32;
  v79 = 0xE100000000000000;
  v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v32 = v31;

  v68 = v30;
  v69 = v32;
  aBlock = 10;
  v73 = 0xE100000000000000;
  v78 = 32;
  v79 = 0xE100000000000000;
  v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v35 = v34;

  if (v65)
  {
    v68 = v33;
    v69 = v35;

    v36._countAndFlagsBits = 10;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);

    v37 = v68;
    v38 = v69;
  }

  else
  {

    v38 = v35;
    v37 = v33;
  }

  v39 = v67;
  v78 = v37;
  v79 = v38;
  if ((v38 & 0x1000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if ((v38 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v38) & 0xF;
  }

  else
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

LABEL_20:
  v41 = *(*(v39 + 48) + 48);
  if (v41 < v40)
  {
    sub_10000F574();
    v42 = static OS_dispatch_queue.main.getter();
    v43 = swift_allocObject();
    v44 = *(v39 + 112);
    v43[7] = *(v39 + 96);
    v43[8] = v44;
    v43[9] = *(v39 + 128);
    v45 = *(v39 + 48);
    v43[3] = *(v39 + 32);
    v43[4] = v45;
    v46 = *(v39 + 80);
    v43[5] = *(v39 + 64);
    v43[6] = v46;
    v47 = *(v39 + 16);
    v43[1] = *v39;
    v43[2] = v47;
    v76 = sub_100032860;
    v77 = v43;
    aBlock = _NSConcreteStackBlock;
    v73 = 1107296256;
    v74 = sub_1001D2438;
    v75 = &unk_100327578;
    v48 = _Block_copy(&aBlock);
    sub_1000317F0(v39, &v68);

    v49 = v59;
    static DispatchQoS.unspecified.getter();
    v68 = _swiftEmptyArrayStorage;
    v39 = sub_100031E6C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
    v50 = v61;
    v51 = v64;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);

    (*(v63 + 8))(v50, v51);
    (*(v60 + 8))(v49, v62);
    while (1)
    {
      v37 = v78;
      v52 = v79;
      v53 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x1000000000000000) != 0)
      {
        v39 = v78;
        v55 = v79;
        v56 = String.UTF8View._foreignCount()();
        v37 = v39;
        v52 = v55;
        if (v41 >= v56)
        {
          return v37;
        }
      }

      else
      {
        if ((v79 & 0x2000000000000000) != 0)
        {
          v54 = HIBYTE(v79) & 0xF;
        }

        else
        {
          v54 = v78 & 0xFFFFFFFFFFFFLL;
        }

        if (v41 >= v54)
        {
          return v37;
        }
      }

      if ((v52 & 0x2000000000000000) != 0)
      {
        if (!v53)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v58 = v37;
          v40 = String.UTF8View._foreignCount()();
          v37 = v58;
          goto LABEL_20;
        }
      }

      else if ((v37 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_35;
      }

      String.index(before:)();
      String.remove(at:)();
    }
  }

  return v37;
}

uint64_t sub_10002ED60@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = Image.init(systemName:)();
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v47 = enum case for Font.Leading.tight(_:);
  v6 = *(v3 + 104);
  v45 = v2;
  v46 = v6;
  v6(v5);
  v51 = Font.leading(_:)();

  v7 = *(v3 + 8);
  v7(v5, v2);
  KeyPath = swift_getKeyPath();
  v49 = static Color.red.getter();
  v48 = swift_getKeyPath();
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v42 = v9;
  v43 = v8;
  LOBYTE(v2) = v10;
  v44 = v11;
  v41 = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v76[55] = v82;
  *&v76[71] = v83;
  *&v76[87] = v84;
  *&v76[103] = v85;
  *&v76[7] = v79;
  *&v76[23] = v80;
  v12 = v2 & 1;
  v78 = v2 & 1;
  *&v76[39] = v81;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v13 = v45;
  v46(v5, v47, v45);
  v14 = Font.leading(_:)();

  v7(v5, v13);
  v15 = swift_getKeyPath();
  v16 = static Color.red.getter();
  v17 = swift_getKeyPath();
  v19 = v42;
  v18 = v43;
  *&v54 = v43;
  *(&v54 + 1) = v42;
  LOBYTE(v55) = v12;
  *(&v55 + 1) = *v77;
  DWORD1(v55) = *&v77[3];
  v20 = v44;
  v21 = v41;
  *(&v55 + 1) = v44;
  *&v56[0] = v41;
  BYTE8(v56[0]) = 0;
  v22 = *&v76[48];
  *(&v56[4] + 9) = *&v76[64];
  v23 = *&v76[64];
  *(&v56[5] + 9) = *&v76[80];
  v24 = *&v76[80];
  *(&v56[6] + 9) = *&v76[96];
  *(v56 + 9) = *v76;
  v25 = *v76;
  v26 = *&v76[16];
  *(&v56[1] + 9) = *&v76[16];
  *(&v56[2] + 9) = *&v76[32];
  v27 = *&v76[32];
  *(&v56[3] + 9) = *&v76[48];
  *(&v56[7] + 1) = *&v76[111];
  *&v57 = v15;
  v28 = v14;
  *(&v57 + 1) = v14;
  *&v58 = v17;
  *(&v58 + 1) = v16;
  v29 = v56[7];
  *(a1 + 168) = v56[6];
  *(a1 + 184) = v29;
  v30 = v56[3];
  *(a1 + 104) = v56[2];
  *(a1 + 120) = v30;
  v31 = v56[5];
  *(a1 + 136) = v56[4];
  *(a1 + 152) = v31;
  v32 = v55;
  *(a1 + 40) = v54;
  *(a1 + 56) = v32;
  v33 = v56[1];
  *(a1 + 72) = v56[0];
  *(a1 + 88) = v33;
  v34 = v58;
  *(a1 + 200) = v57;
  *(a1 + 216) = v34;
  v69 = v23;
  v70 = v24;
  *v71 = *&v76[96];
  v65 = v25;
  v66 = v26;
  v67 = v27;
  v35 = v51;
  v37 = v49;
  v36 = KeyPath;
  *a1 = v52;
  *(a1 + 8) = v36;
  v38 = v48;
  *(a1 + 16) = v35;
  *(a1 + 24) = v38;
  *(a1 + 32) = v37;
  v59[0] = v18;
  v59[1] = v19;
  v60 = v12;
  *v61 = *v77;
  *&v61[3] = *&v77[3];
  v62 = v20;
  v63 = v21;
  v64 = 0;
  v68 = v22;
  *&v71[15] = *&v76[111];
  v72 = v15;
  v73 = v28;
  v74 = v17;
  v75 = v16;

  sub_100006C20(&v54, &v53, &qword_100356718, &qword_100279CB0);
  sub_100008FA0(v59, &qword_100356718, &qword_100279CB0);
}

void sub_10002F298(uint64_t a1@<X2>, uint64_t a2@<X4>, void *a3@<X8>)
{
  if (*(a2 + 40) == 1 && (v4 = *(a1 + 32), swift_beginAccess(), v5 = *(v4 + 72), *(v5 + 16)) && (v6 = sub_1001921F0(), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = v8[1];
    *a3 = *v8;
    a3[1] = v9;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0xE000000000000000;
  }
}

void sub_10002F328(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t (*a8)(uint64_t a1), void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  v145 = type metadata accessor for DispatchWorkItemFlags();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchQoS();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];
  v22 = *(a4 + 32);
  swift_beginAccess();
  v146 = v22;
  v23 = *(v22 + 136);
  if (!v23 || ((v24 = *(a5 + 16), v25 = *(a5 + 24), *(v23 + 16) == v24) ? (v26 = *(v23 + 24) == v25) : (v26 = 0), !v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (qword_100353A10 != -1)
    {
      goto LABEL_99;
    }

    goto LABEL_12;
  }

  v139 = a5;
  v134 = v25;
  v135 = v24;
  v153 = a6;
  v154 = a7;
  v155 = a8;
  v156 = a9;

  sub_1000040A8(&qword_100356770, &qword_100279D58);
  Binding.wrappedValue.getter();
  if (v148)
  {
    if (v20 == aBlock && v148 == v21)
    {

      LODWORD(v136) = 1;
    }

    else
    {
      LODWORD(v136) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    LODWORD(v136) = 0;
  }

  v153 = a6;
  v154 = a7;
  v155 = a8;
  v156 = a9;
  aBlock = v20;
  v148 = v21;
  Binding.wrappedValue.setter();
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000F53C(v31, qword_100381C80);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v139;
  if (v34)
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    if ((v21 & 0x1000000000000000) != 0)
    {
      v37 = String.UTF8View._foreignCount()();
    }

    else
    {
      v37 = v20 & 0xFFFFFFFFFFFFLL;
      if ((v21 & 0x2000000000000000) != 0)
      {
        v37 = HIBYTE(v21) & 0xF;
      }
    }

    *(v36 + 4) = v37;

    _os_log_impl(&_mh_execute_header, v32, v33, "Free form text: Text length == %{public}ld", v36, 0xCu);
  }

  else
  {
  }

  v38 = 0xE000000000000000;
  aBlock = 0;
  v148 = 0xE000000000000000;
  v39 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v21) & 0xF;
  }

  v153 = v20;
  v154 = v21;
  v155 = 0;
  v156 = v39;

  v40 = String.Iterator.next()();
  if (v40.value._object)
  {
    countAndFlagsBits = v40.value._countAndFlagsBits;
    object = v40.value._object;
    do
    {
      v44 = String._bridgeToObjectiveC()();
      IsSingleEmoji = CEMStringIsSingleEmoji();

      if (!IsSingleEmoji)
      {
        v46._countAndFlagsBits = countAndFlagsBits;
        v46._object = object;
        String.append(_:)(v46);
      }

      v43 = String.Iterator.next()();
      countAndFlagsBits = v43.value._countAndFlagsBits;
      object = v43.value._object;
    }

    while (v43.value._object);
    v47 = aBlock;
    v38 = v148;
  }

  else
  {
    v47 = 0;
  }

  v153 = v47;
  v154 = v38;
  v49 = String.init<A>(_:)();
  v50 = v48;
  v159 = v49;
  v160 = v48;
  v138 = v31;
  if (v20 == v49 && v21 == v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
  }

  else
  {
    v51 = qword_100353AA8;

    if (v51 != -1)
    {
      swift_once();
    }

    sub_10000F53C(v31, qword_100381E48);
    sub_1000317F0(a4, &v153);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    sub_100031E04(a4);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v153 = v55;
      *v54 = 136446210;
      v56 = sub_1000B9A7C();
      v58 = sub_10017C9E8(v56, v57, &v153);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%{public}s] Free form text: Disallowed character entered", v54, 0xCu);
      sub_100008964(v55);
    }

    sub_10000F574();
    v137 = static OS_dispatch_queue.main.getter();
    v59 = swift_allocObject();
    v60 = *(a4 + 112);
    v59[7] = *(a4 + 96);
    v59[8] = v60;
    v59[9] = *(a4 + 128);
    v61 = *(a4 + 48);
    v59[3] = *(a4 + 32);
    v59[4] = v61;
    v62 = *(a4 + 80);
    v59[5] = *(a4 + 64);
    v59[6] = v62;
    v63 = *(a4 + 16);
    v59[1] = *a4;
    v59[2] = v63;
    v151 = sub_100031E34;
    v152 = v59;
    aBlock = _NSConcreteStackBlock;
    v148 = 1107296256;
    v149 = sub_1001D2438;
    v150 = &unk_100327488;
    v64 = _Block_copy(&aBlock);
    sub_1000317F0(a4, &v153);

    v65 = v140;
    static DispatchQoS.unspecified.getter();
    v153 = _swiftEmptyArrayStorage;
    sub_100031E6C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
    v66 = v142;
    v67 = v145;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v68 = v137;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v64);

    (*(v144 + 8))(v66, v67);
    (*(v141 + 8))(v65, v143);
    v35 = v139;
    v31 = v138;
  }

  v69 = 0xE000000000000000;
  aBlock = 0;
  v148 = 0xE000000000000000;
  v70 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v70 = v49 & 0xFFFFFFFFFFFFLL;
  }

  v153 = v49;
  v154 = v50;
  v155 = 0;
  v156 = v70;

  v71 = String.Iterator.next()();
  v72 = v71.value._object;
  if (v71.value._object)
  {
    v73 = v71.value._countAndFlagsBits;
    do
    {
      if ((v73 != 10 || v72 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v75._countAndFlagsBits = v73;
        v75._object = v72;
        String.append(_:)(v75);
      }

      v74 = String.Iterator.next()();
      v73 = v74.value._countAndFlagsBits;
      v72 = v74.value._object;
    }

    while (v74.value._object);
    v72 = aBlock;
    v69 = v148;
  }

  v76 = a12;

  v153 = v72;
  v154 = v69;
  v77 = String.init<A>(_:)();
  v79 = v78;
  if (v49 == v77 && v50 == v78)
  {
  }

  else
  {
    v81 = v77;
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v82 & 1) == 0)
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      sub_10000F53C(v31, qword_100381E48);
      sub_1000317F0(a4, &v153);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.default.getter();
      sub_100031E04(a4);
      v115 = os_log_type_enabled(v113, v114);
      v137 = a12;
      if (v115)
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v153 = v117;
        *v116 = 136446210;
        v118 = sub_1000B9A7C();
        v120 = sub_10017C9E8(v118, v119, &v153);

        *(v116 + 4) = v120;
        _os_log_impl(&_mh_execute_header, v113, v114, "[%{public}s] Free form text: Return symbol entered", v116, 0xCu);
        sub_100008964(v117);

        v35 = v139;
      }

      if ((v136 & 1) == 0)
      {
        sub_10000F574();
        v133 = static OS_dispatch_queue.main.getter();
        v121 = swift_allocObject();
        *(v121 + 16) = a10;
        *(v121 + 24) = a11;
        v157 = sub_100031EEC;
        v158 = v121;
        v153 = _NSConcreteStackBlock;
        v154 = 1107296256;
        v155 = sub_1001D2438;
        v156 = &unk_1003274D8;
        v122 = _Block_copy(&v153);
        v136 = a4;
        v132 = v122;

        v123 = v140;
        static DispatchQoS.unspecified.getter();
        v153 = _swiftEmptyArrayStorage;
        sub_100031E6C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000040A8(&unk_100355D70, &qword_100279D60);
        sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
        v124 = v35;
        v125 = v142;
        v126 = v145;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v127 = v132;
        v128 = v133;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v129 = v127;
        a4 = v136;
        _Block_release(v129);

        v130 = v125;
        v35 = v124;
        (*(v144 + 8))(v130, v126);
        (*(v141 + 8))(v123, v143);
      }

      v159 = v81;
      v160 = v79;
      v31 = v138;
      v76 = v137;
      if ((v79 & 0x1000000000000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_96;
    }
  }

  v79 = v50;
  v81 = v49;
  if ((v50 & 0x1000000000000000) == 0)
  {
LABEL_61:
    if ((v79 & 0x2000000000000000) != 0)
    {
      v83 = HIBYTE(v79) & 0xF;
    }

    else
    {
      v83 = v81 & 0xFFFFFFFFFFFFLL;
    }

    goto LABEL_64;
  }

LABEL_96:
  v83 = String.UTF8View._foreignCount()();
LABEL_64:
  v84 = v76[6];
  if (v84 >= v83)
  {
LABEL_82:
    if (sub_1000C222C(v35, v76, v81, v79))
    {
    }

    else
    {
      if (qword_100353AA8 != -1)
      {
        swift_once();
      }

      sub_10000F53C(v31, qword_100381E48);
      sub_1000317F0(a4, &v153);

      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      sub_100031E04(a4);

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        *v109 = 136446723;
        v110 = sub_1000B9A7C();
        v112 = sub_10017C9E8(v110, v111, &v153);

        *(v109 + 4) = v112;
        *(v109 + 12) = 2081;
        *(v109 + 14) = sub_10017C9E8(v76[2], v76[3], &v153);
        *(v109 + 22) = 2081;
        *(v109 + 24) = sub_10017C9E8(v135, v134, &v153);
        _os_log_impl(&_mh_execute_header, v107, v108, "[%{public}s] QuestionnaireBodyView: failed to update value of %{private}s for %{private}s", v109, 0x20u);
        swift_arrayDestroy();
      }
    }

    return;
  }

  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  sub_10000F53C(v31, qword_100381E48);
  sub_1000317F0(a4, &v153);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  sub_100031E04(a4);
  v87 = os_log_type_enabled(v85, v86);
  v137 = v76;
  if (v87)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v153 = v89;
    *v88 = 136446210;
    v90 = sub_1000B9A7C();
    v92 = sub_10017C9E8(v90, v91, &v153);

    *(v88 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v85, v86, "[%{public}s] Free form text: Entered text is over the limit", v88, 0xCu);
    sub_100008964(v89);
  }

  sub_10000F574();
  v136 = static OS_dispatch_queue.main.getter();
  v93 = swift_allocObject();
  v94 = *(a4 + 112);
  v93[7] = *(a4 + 96);
  v93[8] = v94;
  v93[9] = *(a4 + 128);
  v95 = *(a4 + 48);
  v93[3] = *(a4 + 32);
  v93[4] = v95;
  v96 = *(a4 + 80);
  v93[5] = *(a4 + 64);
  v93[6] = v96;
  v97 = *(a4 + 16);
  v93[1] = *a4;
  v93[2] = v97;
  v151 = sub_100031F14;
  v152 = v93;
  aBlock = _NSConcreteStackBlock;
  v148 = 1107296256;
  v149 = sub_1001D2438;
  v150 = &unk_100327528;
  v98 = _Block_copy(&aBlock);
  sub_1000317F0(a4, &v153);

  v99 = a4;
  v100 = v140;
  static DispatchQoS.unspecified.getter();
  v153 = _swiftEmptyArrayStorage;
  sub_100031E6C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_100009274(&qword_10035BB50, &unk_100355D70, &qword_100279D60, &protocol conformance descriptor for [A]);
  v101 = v142;
  v102 = v145;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v103 = v136;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v98);

  (*(v144 + 8))(v101, v102);
  v104 = v100;
  a4 = v99;
  (*(v141 + 8))(v104, v143);
  v35 = v139;
  v76 = v137;
  while (1)
  {
    v81 = v159;
    v79 = v160;
    v105 = HIBYTE(v160) & 0xF;
    if ((v160 & 0x1000000000000000) != 0)
    {
      if (v84 >= String.UTF8View._foreignCount()())
      {
        goto LABEL_81;
      }
    }

    else
    {
      if ((v160 & 0x2000000000000000) != 0)
      {
        v106 = HIBYTE(v160) & 0xF;
      }

      else
      {
        v106 = v159 & 0xFFFFFFFFFFFFLL;
      }

      if (v84 >= v106)
      {
LABEL_81:
        v31 = v138;
        goto LABEL_82;
      }
    }

    if ((v79 & 0x2000000000000000) != 0)
    {
      break;
    }

    if ((v81 & 0xFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_98;
    }

LABEL_71:
    String.index(before:)();
    String.remove(at:)();
  }

  if (v105)
  {
    goto LABEL_71;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  swift_once();
LABEL_12:
  v27 = type metadata accessor for Logger();
  sub_10000F53C(v27, qword_100381C80);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Free form text: Updating value when it is not a current question anymore", v30, 2u);
  }
}

uint64_t sub_100030730(void *a1, char a2)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100031E6C(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003082C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v106 = a1;
  v88 = type metadata accessor for Font.Leading();
  v3 = *(v88 - 8);
  __chkstk_darwin(v88);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1000040A8(&qword_100356790, &qword_100279E50);
  __chkstk_darwin(v87);
  v7 = &v87 - v6;
  v89 = sub_1000040A8(&qword_100356798, &qword_100279E58);
  __chkstk_darwin(v89);
  v9 = &v87 - v8;
  v91 = sub_1000040A8(&qword_1003567A0, &qword_100279E60);
  __chkstk_darwin(v91);
  v92 = &v87 - v10;
  v95 = sub_1000040A8(&qword_1003567A8, &qword_100279E68);
  __chkstk_darwin(v95);
  v93 = &v87 - v11;
  v12 = sub_1000040A8(&qword_1003567B0, &qword_100279E70);
  v96 = *(v12 - 8);
  v97 = v12;
  __chkstk_darwin(v12);
  v94 = &v87 - v13;
  v103 = sub_1000040A8(&qword_1003567B8, &qword_100279E78);
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v98 = &v87 - v14;
  v15 = sub_1000040A8(&qword_1003567C0, &qword_100279E80);
  v104 = *(v15 - 8);
  v105 = v15;
  __chkstk_darwin(v15);
  v102 = &v87 - v16;
  v100 = sub_1000040A8(&qword_1003567C8, &qword_100279E88);
  __chkstk_darwin(v100);
  v99 = &v87 - v17;
  v18 = *v1;
  if (*v1)
  {
    v20 = v18[9];
    v19 = v18[10];
    sub_1000088DC(v18 + 6, v20);
    (*(v19 + 24))(v111, v20, v19);
    v109 = 0;
    v110 = 0xE000000000000000;
    v119 = *(v1 + 48);
    v120 = *(v1 + 64);
    v112 = *(v1 + 48);
    *&v113 = *(v1 + 64);
    v90 = sub_1000040A8(&qword_1003567D0, &qword_100279E90);
    v21 = State.projectedValue.getter();
    sub_100031770(v21, v22, v23);
    TextField<>.init<A>(_:text:axis:)();
    v24 = *(v1 + 80);
    KeyPath = swift_getKeyPath();
    v26 = &v7[*(sub_1000040A8(&qword_1003567D8, &qword_100279EC8) + 36)];
    *v26 = KeyPath;
    *(v26 + 1) = v24;
    v26[16] = 0;
    static Font.title3.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v27 = v88;
    (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v88);
    v28 = Font.leading(_:)();

    (*(v3 + 8))(v5, v27);
    v29 = swift_getKeyPath();
    v30 = &v7[*(v87 + 36)];
    *v30 = v29;
    v30[1] = v28;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10000CF4C(v7, v9, &qword_100356790, &qword_100279E50);
    v31 = &v9[*(v89 + 36)];
    v32 = v117;
    *(v31 + 4) = v116;
    *(v31 + 5) = v32;
    *(v31 + 6) = v118;
    v33 = v113;
    *v31 = v112;
    *(v31 + 1) = v33;
    v34 = v115;
    *(v31 + 2) = v114;
    *(v31 + 3) = v34;
    LOBYTE(v28) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v92;
    sub_10000CF4C(v9, v92, &qword_100356798, &qword_100279E58);
    v44 = v43 + *(v91 + 36);
    *v44 = v28;
    *(v44 + 8) = v36;
    *(v44 + 16) = v38;
    *(v44 + 24) = v40;
    *(v44 + 32) = v42;
    *(v44 + 40) = 0;
    v45 = v95;
    v46 = v93;
    v47 = &v93[*(v95 + 36)];
    v48 = *(type metadata accessor for RoundedRectangle() + 20);
    v49 = enum case for RoundedCornerStyle.continuous(_:);
    v50 = type metadata accessor for RoundedCornerStyle();
    (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
    __asm { FMOV            V0.2D, #16.0 }

    *v47 = _Q0;
    v56 = [objc_opt_self() systemGray4Color];
    v57 = Color.init(uiColor:)();
    v58 = sub_1000040A8(&qword_1003567E0, &qword_100279ED0);
    *&v47[*(v58 + 52)] = v57;
    *&v47[*(v58 + 56)] = 256;
    v59 = static Alignment.center.getter();
    v61 = v60;
    v62 = &v47[*(sub_1000040A8(&qword_1003567E8, &qword_100279ED8) + 36)];
    *v62 = v59;
    v62[1] = v61;
    sub_10000CF4C(v43, v46, &qword_1003567A0, &qword_100279E60);
    v63 = *(v2 + 120);
    v107 = *(v2 + 104);
    v108 = v63;
    v64 = *(v2 + 96);
    v109 = *(v2 + 88);
    v110 = v64;
    v65 = sub_1000040A8(&qword_1003566A0, &qword_100279AF0);
    v66 = sub_100032124();
    v67 = sub_100032490();
    v68 = v94;
    View.focused<A>(_:equals:)();
    sub_100008FA0(v46, &qword_1003567A8, &qword_100279E68);
    *&v107 = v45;
    *(&v107 + 1) = v65;
    *&v108 = v66;
    *(&v108 + 1) = v67;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v70 = v97;
    v71 = v98;
    View.keyboardType(_:)();
    (*(v96 + 8))(v68, v70);
    v107 = v119;
    *&v108 = v120;
    State.wrappedValue.getter();
    v72 = swift_allocObject();
    v73 = *(v2 + 112);
    *(v72 + 112) = *(v2 + 96);
    *(v72 + 128) = v73;
    *(v72 + 144) = *(v2 + 128);
    *(v72 + 160) = *(v2 + 144);
    v74 = *(v2 + 48);
    *(v72 + 48) = *(v2 + 32);
    *(v72 + 64) = v74;
    v75 = *(v2 + 80);
    *(v72 + 80) = *(v2 + 64);
    *(v72 + 96) = v75;
    v76 = *(v2 + 16);
    *(v72 + 16) = *v2;
    *(v72 + 32) = v76;
    sub_100031B70(v2, &v107);
    *&v107 = v70;
    *(&v107 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v78 = v102;
    v77 = v103;
    View.onChange<A>(of:initial:_:)();

    (*(v101 + 8))(v71, v77);
    v79 = swift_allocObject();
    v80 = *(v2 + 112);
    *(v79 + 112) = *(v2 + 96);
    *(v79 + 128) = v80;
    *(v79 + 144) = *(v2 + 128);
    *(v79 + 160) = *(v2 + 144);
    v81 = *(v2 + 48);
    *(v79 + 48) = *(v2 + 32);
    *(v79 + 64) = v81;
    v82 = *(v2 + 80);
    *(v79 + 80) = *(v2 + 64);
    *(v79 + 96) = v82;
    v83 = *(v2 + 16);
    *(v79 + 16) = *v2;
    *(v79 + 32) = v83;
    v84 = v99;
    (*(v104 + 32))(v99, v78, v105);
    v85 = (v84 + *(v100 + 36));
    *v85 = sub_1000325A0;
    v85[1] = v79;
    v85[2] = 0;
    v85[3] = 0;
    sub_1000325A8(v84, v106);
    sub_100031B70(v2, &v107);
    return sub_100008964(v111);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100031E6C(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000312BC(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 64);
  v10 = *(a1 + 48);
  v9 = v2;
  sub_100032618(&v10, &v7);
  sub_100006C20(&v9, &v7, &qword_100356848, &qword_100279EF0);
  sub_1000040A8(&qword_1003567D0, &qword_100279E90);
  State.wrappedValue.getter();
  v3 = v1(v7, v8);
  v5 = v4;

  v7 = v3;
  v8 = v5;
  State.wrappedValue.setter();
  sub_100032674(&v10);
  sub_100008FA0(&v9, &qword_100356848, &qword_100279EF0);
  State.wrappedValue.getter();
  sub_1000040A8(&qword_1003566E0, &qword_100279C90);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100031424(uint64_t a1)
{
  sub_1000040A8(&qword_1003566E0, &qword_100279C90);
  Binding.wrappedValue.getter();
  sub_1000040A8(&qword_1003567D0, &qword_100279E90);
  return State.wrappedValue.setter();
}

__n128 sub_100031524(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_100031550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100031598(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100031610()
{
  result = qword_1003566A8;
  if (!qword_1003566A8)
  {
    sub_100008CF0(&qword_100356690, &unk_100279AE0);
    sub_10003169C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003566A8);
  }

  return result;
}

unint64_t sub_10003169C()
{
  result = qword_1003566B0;
  if (!qword_1003566B0)
  {
    sub_100008CF0(&qword_100356688, &qword_100279AD8);
    sub_100009274(&qword_1003566B8, &qword_1003566C0, &qword_100279BC8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003566B0);
  }

  return result;
}

unint64_t sub_100031770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003566D0;
  if (!qword_1003566D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003566D0);
  }

  return result;
}

uint64_t sub_1000317C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100031838()
{
  result = qword_100356708;
  if (!qword_100356708)
  {
    sub_100008CF0(&qword_1003566F8, &qword_100279CA8);
    sub_1000318BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356708);
  }

  return result;
}

unint64_t sub_1000318BC()
{
  result = qword_100356710;
  if (!qword_100356710)
  {
    sub_100008CF0(&qword_100356718, &qword_100279CB0);
    sub_100031974();
    sub_100009274(&qword_100355068, &qword_100355070, &qword_100279CE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356710);
  }

  return result;
}

unint64_t sub_100031974()
{
  result = qword_100356720;
  if (!qword_100356720)
  {
    sub_100008CF0(&qword_100356728, &qword_100279CB8);
    sub_100031A2C();
    sub_100009274(&qword_100355058, &qword_100355060, &unk_100277F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356720);
  }

  return result;
}

unint64_t sub_100031A2C()
{
  result = qword_100356730;
  if (!qword_100356730)
  {
    sub_100008CF0(&qword_100356738, &unk_100279CC0);
    sub_100031AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356730);
  }

  return result;
}

unint64_t sub_100031AB8()
{
  result = qword_100356740;
  if (!qword_100356740)
  {
    sub_100008CF0(&qword_100356748, &unk_10027BF20);
    sub_100009274(&qword_100356750, &qword_100356758, &unk_100279CD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356740);
  }

  return result;
}

double sub_100031BD8(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100031C14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_100031CD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 240, 7);
}

double sub_100031DE4(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100031E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031E6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100031EB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031F34()
{

  return _swift_deallocObject(v0, 160, 7);
}

__n128 sub_100031FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100032000(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_100032048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100032124()
{
  result = qword_1003567F0;
  if (!qword_1003567F0)
  {
    sub_100008CF0(&qword_1003567A8, &qword_100279E68);
    sub_1000321DC();
    sub_100009274(&qword_100356838, &qword_1003567E8, &qword_100279ED8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003567F0);
  }

  return result;
}

unint64_t sub_1000321DC()
{
  result = qword_1003567F8;
  if (!qword_1003567F8)
  {
    sub_100008CF0(&qword_1003567A0, &qword_100279E60);
    sub_100032268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003567F8);
  }

  return result;
}

unint64_t sub_100032268()
{
  result = qword_100356800;
  if (!qword_100356800)
  {
    sub_100008CF0(&qword_100356798, &qword_100279E58);
    sub_1000322F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356800);
  }

  return result;
}

unint64_t sub_1000322F4()
{
  result = qword_100356808;
  if (!qword_100356808)
  {
    sub_100008CF0(&qword_100356790, &qword_100279E50);
    sub_1000323AC();
    sub_100009274(&qword_100355058, &qword_100355060, &unk_100277F30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356808);
  }

  return result;
}

unint64_t sub_1000323AC()
{
  result = qword_100356810;
  if (!qword_100356810)
  {
    sub_100008CF0(&qword_1003567D8, &qword_100279EC8);
    sub_100009274(&qword_100356818, &qword_100356820, &unk_100279EE0, &protocol conformance descriptor for TextField<A>);
    sub_100009274(&qword_100356828, &qword_100356830, &qword_100289190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356810);
  }

  return result;
}

unint64_t sub_100032490()
{
  result = qword_100356840;
  if (!qword_100356840)
  {
    sub_100008CF0(&qword_1003566A0, &qword_100279AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356840);
  }

  return result;
}

uint64_t sub_100032518()
{

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_1000325A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003567C8, &qword_100279E88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000326CC()
{
  result = qword_100356850;
  if (!qword_100356850)
  {
    sub_100008CF0(&qword_1003567C8, &qword_100279E88);
    sub_100008CF0(&qword_1003567B8, &qword_100279E78);
    sub_100008CF0(&qword_1003567B0, &qword_100279E70);
    sub_100008CF0(&qword_1003567A8, &qword_100279E68);
    sub_100008CF0(&qword_1003566A0, &qword_100279AF0);
    sub_100032124();
    sub_100032490();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356850);
  }

  return result;
}

void sub_1000328DC(void *a1, void *a2, void *a3)
{
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381ED8);
  v8 = v3;
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v14 = 136446978;
    v15 = v8;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v13;
    v19 = v18;

    v20 = sub_10017C9E8(v17, v19, &v55);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2082;
    v21 = v9;
    v22 = [v21 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_10017C9E8(v23, v25, &v55);

    *(v14 + 14) = v26;
    *(v14 + 22) = 2082;
    v27 = v10;
    v28 = [v27 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10017C9E8(v29, v31, &v55);

    *(v14 + 24) = v32;
    *(v14 + 32) = 2082;
    v33 = v11;
    v34 = [v33 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_10017C9E8(v35, v37, &v55);

    *(v14 + 34) = v38;
    _os_log_impl(&_mh_execute_header, v12, v52, "[%{public}s] scene(%{public}s) willConnectTo session(%{public}s) with options(%{public}s)", v14, 0x2Au);
    swift_arrayDestroy();
  }

  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39)
  {
    v40 = v39;
    v53 = v9;
    sub_100033508(v40);
    v41 = v53;
  }

  else
  {
    v42 = v8;
    oslog = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v45;
      *v44 = 136446210;
      v46 = v42;
      v47 = [v46 description];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_10017C9E8(v48, v50, &v55);

      *(v44 + 4) = v51;
      _os_log_impl(&_mh_execute_header, oslog, v43, "[%{public}s] provided scene is not a UIWindowScene", v44, 0xCu);
      sub_100008964(v45);
    }

    v41 = oslog;
  }
}

void sub_100032F30(void *a1, const char *a2, ...)
{
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381ED8);
  v6 = v2;
  v7 = a1;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = v6;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10017C9E8(v12, v14, &v23);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    v16 = v7;
    v17 = [v16 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10017C9E8(v18, v20, &v23);

    *(v9 + 14) = v21;
    _os_log_impl(&_mh_execute_header, oslog, v8, a2, v9, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100033238(void *a1, char *a2, char a3)
{
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381ED8);
  v8 = v3;
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v12 = 136446466;
    v13 = v8;
    v14 = [v13 description];
    v27 = a3;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    format = a2;
    v17 = v16;

    v18 = sub_10017C9E8(v15, v17, &v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    v19 = v9;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10017C9E8(v21, v23, &v28);

    *(v12 + 14) = v24;
    a3 = v27;
    _os_log_impl(&_mh_execute_header, v10, v11, format, v12, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1000337F8();
  if (result)
  {
    sub_100167F4C(a3 & 1);
  }

  return result;
}

void sub_100033508(uint64_t a1)
{
  v2 = v1;
  if (sub_1000337F8())
  {
    v4 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:a1];
    if (qword_100353988 != -1)
    {
      v29 = v4;
      swift_once();
      v4 = v29;
    }

    v5 = v4;
    [v5 safeAreaInsets];
    *&xmmword_100381C10 = v6;
    *(&xmmword_100381C10 + 1) = v7;
    qword_100381C20 = v8;
    unk_100381C28 = v9;
    if (qword_100353AD8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F53C(v10, qword_100381ED8);
    v11 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      __src[0] = v15;
      *v14 = 136315138;
      [v11 safeAreaInsets];
      v30[0] = v16;
      v30[1] = v17;
      v30[2] = v18;
      v30[3] = v19;
      type metadata accessor for UIEdgeInsets(0);
      v20 = String.init<A>(describing:)();
      v22 = sub_10017C9E8(v20, v21, __src);

      *(v14 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "Safe area insets: %s", v14, 0xCu);
      sub_100008964(v15);
    }

    [v11 setOverrideUserInterfaceStyle:2];
    v23 = v11;
    sub_10025297C(v33);
    sub_10011B528(v33);
    sub_100033AD8(v33);
    v24 = static SafeAreaRegions.all.getter();
    v25 = v24 & ~static SafeAreaRegions.keyboard.getter();
    LOBYTE(v24) = static Edge.Set.all.getter();
    memcpy(v30, __src, 0x1F0uLL);
    v30[62] = v25;
    v31 = v24;
    v26 = objc_allocWithZone(sub_1000040A8(&unk_1003568F0, &unk_100279F10));
    v27 = UIHostingController.init(rootView:)();
    [v23 setRootViewController:v27];

    v28 = *(v2 + OBJC_IVAR____TtC8SOSBuddy13SceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC8SOSBuddy13SceneDelegate_window) = v23;

    [v23 makeKeyAndVisible];
  }
}

uint64_t sub_1000337F8()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (v2)
  {
    type metadata accessor for AppDelegate();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC8SOSBuddy11AppDelegate_delegate);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v5 = *(v4 + 16);

      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381ED8);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10017C9E8(v14, v16, &v19);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] app == nil", v10, 0xCu);
    sub_100008964(v11);
  }

  return 0;
}

id sub_100033A70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100033B2C()
{
  result = qword_10035E8E0;
  if (!qword_10035E8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10035E8E0);
  }

  return result;
}

unint64_t sub_100033B78()
{
  result = qword_100356900;
  if (!qword_100356900)
  {
    sub_100033B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356900);
  }

  return result;
}

uint64_t sub_100033BD0(uint64_t a1)
{
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381ED8);
  v4 = v1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136446466;
    v8 = v4;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10017C9E8(v10, v12, &v18);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    sub_100033B2C();
    sub_100033B78();
    v14 = Set.description.getter();
    v16 = sub_10017C9E8(v14, v15, &v18);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] openURLContexts(%{public}s)", v7, 0x16u);
    swift_arrayDestroy();
  }

  result = sub_1000337F8();
  if (result)
  {
    sub_10016787C(a1);
  }

  return result;
}

void sub_100033E1C(uint64_t a1)
{
  sub_100034084(319);
  if (v1 <= 0x3F)
  {
    sub_100006FE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100033EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000040A8(qword_100356970, &unk_100279F20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100033FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000040A8(qword_100356970, &unk_100279F20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_100034084(uint64_t a1)
{
  if (!qword_1003569F8)
  {
    type metadata accessor for ToolbarItemPlacement();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003569F8);
    }
  }
}

uint64_t sub_1000340DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  __chkstk_darwin(a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  v15(v6, v12);
  sub_10009A58C();
  v16 = *(v8 + 8);
  v16(v10, a4);
  sub_10009A58C();
  return (v16)(v14, a4);
}

uint64_t sub_100034218@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v26 = a7;
  v29 = a1;
  v30 = a2;
  v31 = a8;
  v27 = a9;
  v28 = a10;
  type metadata accessor for GeometryCapturer(255, a6, a9, a3);
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - v16;
  v34 = a3;
  v35 = a4;

  static Alignment.center.getter();
  v18 = v26;
  View.background<A>(_:alignment:)();

  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v21 = v27;
  v20 = v28;
  v19[4] = v18;
  v19[5] = v21;
  v22 = v29;
  v19[6] = v20;
  v19[7] = v22;
  v19[8] = v30;

  WitnessTable = swift_getWitnessTable();
  v32 = v18;
  v33 = WitnessTable;
  swift_getWitnessTable();
  View.onPreferenceChange<A>(_:perform:)();

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_10003445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v30 = a6;
  v31 = a3;
  v28 = a4;
  v29 = a2;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin(v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v28 - v18;
  sub_10000F574();
  v32 = static OS_dispatch_queue.main.getter();
  (*(v17 + 16))(v19, a1, AssociatedTypeWitness);
  v20 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v28;
  *(v21 + 3) = a5;
  v22 = v31;
  *(v21 + 4) = v30;
  *(v21 + 5) = a7;
  v23 = v29;
  *(v21 + 6) = v33;
  *(v21 + 7) = v23;
  *(v21 + 8) = v22;
  (*(v17 + 32))(&v21[v20], v19, AssociatedTypeWitness);
  aBlock[4] = sub_100034F78;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100327758;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100035078(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_100035010();
  v25 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v32;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v37 + 8))(v12, v25);
  return (*(v35 + 8))(v15, v36);
}

uint64_t sub_100034824@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = sub_100035078(qword_100356A08, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);

  sub_100034218(sub_100035074, v14, sub_10003496C, 0, a3, a4, a5, a7, a6, v15);
}

uint64_t sub_10003496C@<X0>(double *a1@<X8>)
{
  v2 = type metadata accessor for GlobalCoordinateSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

uint64_t sub_100034A78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23 = a6;
  v21 = a4;
  v22 = a5;
  v13 = type metadata accessor for NamedCoordinateSpace();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v14 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v19 = sub_100035078(qword_100356A08, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);

  sub_100034218(sub_100035848, v16, sub_100035178, v18, v21, v22, v23, a8, a7, v19);
}

uint64_t sub_100034C64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = sub_100035078(&qword_100356A00, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);

  sub_100034218(sub_100034DE0, v14, sub_100034E0C, 0, a3, a4, a5, a7, a6, v15);
}

uint64_t sub_100034DA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100034E0C(void *a1@<X8>)
{
  GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100034E50()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100034E9C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100034FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100035010()
{
  result = qword_10035BB50;
  if (!qword_10035BB50)
  {
    sub_100008CF0(&unk_100355D70, &qword_100279D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035BB50);
  }

  return result;
}

uint64_t sub_100035078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000350F0()
{
  v1 = type metadata accessor for NamedCoordinateSpace();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100035178(void *a1@<X8>)
{
  type metadata accessor for NamedCoordinateSpace();
  GeometryProxy.frame<A>(in:)();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_1000351FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100035238(uint64_t *a1, int a2)
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

uint64_t sub_100035280(uint64_t result, int a2, int a3)
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

uint64_t sub_100035300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();

  swift_getWitnessTable();
  swift_getWitnessTable();
  GeometryReader.init(content:)();
  type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  sub_10009A58C();

  sub_10009A58C();
}

uint64_t sub_100035488@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v20[1] = a3;
  v21 = a2;
  v23 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v20 - v8;
  v20[0] = type metadata accessor for _PreferenceWritingModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  v26 = static Color.clear.getter();
  v21(a1);
  View.preference<A>(key:value:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v24 = &protocol witness table for Color;
  v25 = WitnessTable;
  swift_getWitnessTable();
  sub_10009A58C();
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_10009A58C();
  return (v18)(v16, v10);
}

uint64_t sub_10003573C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100035780(void *a1)
{
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  return swift_getWitnessTable();
}

uint64_t sub_10003584C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100035894(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_10003590C@<X0>(void *a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100356A90, &unk_10027D800);
  __chkstk_darwin(v3 - 8);
  v5 = &v124 - v4;
  v6 = v1[1];
  v7 = *(v6 + 64);
  if (v7 <= 3)
  {
    if (*(v6 + 64) > 1u)
    {
      if (v7 == 2)
      {
        v27 = *v1;
        v166 = *(v1 + 1);
        v28 = swift_allocObject();
        v29 = *(v1 + 1);
        v28[1] = *v1;
        v28[2] = v29;
        v28[3] = *(v1 + 2);
        swift_retain_n();
        swift_retain_n();
        sub_100006C20(&v166, &v175, &qword_1003566A0, &qword_100279AF0);
        type metadata accessor for AppEvents();
        sub_100038494(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

        *&v128 = EnvironmentObject.init()();
        *(&v128 + 1) = v30;
        type metadata accessor for UIMetrics();
        sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
        *&v129 = EnvironmentObject.init()();
        *(&v129 + 1) = v31;
        *&v130 = v27;
        *(&v130 + 1) = v6;
        *&v131 = sub_100038274;
        *(&v131 + 1) = v28;
        LOBYTE(v156) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v132) = v175;
        *(&v132 + 1) = *(&v175 + 1);
        LOBYTE(v156) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v133) = v175;
        *(&v133 + 1) = *(&v175 + 1);
        sub_100038298();
        v32 = [objc_opt_self() mainRunLoop];
        v33 = type metadata accessor for NSRunLoop.SchedulerOptions();
        (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
        v34 = static NSTimer.publish(every:tolerance:on:in:options:)();

        sub_100008FA0(v5, &qword_100356A90, &unk_10027D800);
        *&v156 = v34;
        type metadata accessor for NSTimer.TimerPublisher();
        State.init(wrappedValue:)();
        v134 = v175;
        *&v177 = 0;
        v175 = 0u;
        v176 = 0u;
        sub_100006C20(&v175, &v156, &qword_100356B58, &qword_10027A110);
        sub_1000040A8(&qword_100356B58, &qword_10027A110);
        State.init(wrappedValue:)();
        sub_100008FA0(&v175, &qword_100356B58, &qword_10027A110);
        v35 = sub_1000382E4(&v128, &v175);
        v185 = 0;
        v38 = sub_100037C00(v35, v36, v37);
        sub_100037C54(v38, v39, v40);
        _ConditionalContent<>.init(storage:)();
        sub_100006C20(&v156, &v175, &qword_100356AE0, &qword_10027A0E8);
        v186 = 1;
        sub_1000040A8(&qword_100356AC0, &qword_10027A0E0);
        sub_1000040A8(&qword_100356AE0, &qword_10027A0E8);
        sub_100037A40();
        sub_100037B74();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v156, &qword_100356AE0, &qword_10027A0E8);
        sub_100006C20(&v138, &v175, &qword_100356AB0, &qword_10027A0D8);
        v187 = 0;
        sub_1000040A8(&qword_100356AB0, &qword_10027A0D8);
        sub_1000040A8(&qword_100356B00, &qword_10027A0F0);
        sub_1000379B4();
        sub_100037CA8();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v138, &qword_100356AB0, &qword_10027A0D8);
        sub_100006C20(&v156, &v175, &qword_100356A98, &qword_10027A0D0);
        v188 = 0;
        sub_1000040A8(&qword_100356A98, &qword_10027A0D0);
        sub_100037928();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v156, &qword_100356A98, &qword_10027A0D0);
        return sub_100038340(&v128);
      }

      v93 = *v1;
      v166 = *(v1 + 1);
      v94 = swift_allocObject();
      v95 = *(v1 + 1);
      v94[1] = *v1;
      v94[2] = v95;
      v94[3] = *(v1 + 2);
      swift_retain_n();
      swift_retain_n();
      sub_100006C20(&v166, &v175, &qword_1003566A0, &qword_100279AF0);
      type metadata accessor for AppEvents();
      sub_100038494(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

      v96 = EnvironmentObject.init()();
      v98 = v97;
      type metadata accessor for UIMetrics();
      sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      v99 = EnvironmentObject.init()();
      v101 = v100;
      LOBYTE(v156) = 0;
      State.init(wrappedValue:)();
      *&v128 = v96;
      *(&v128 + 1) = v98;
      *&v129 = v99;
      *(&v129 + 1) = v101;
      *&v130 = v93;
      *(&v130 + 1) = v6;
      *&v131 = sub_10003856C;
      *(&v131 + 1) = v94;
      LOBYTE(v132) = v175;
      *(&v132 + 1) = *(&v175 + 1);
      v177 = v130;
      v178 = v131;
      v179 = v132;
      v175 = v128;
      v176 = v129;
      v185 = 1;
      v102 = sub_1000381C4(&v128, &v156);
      v105 = sub_100037C00(v102, v103, v104);
      sub_100037C54(v105, v106, v107);
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(&v156, &v175, &qword_100356AE0, &qword_10027A0E8);
      v186 = 1;
      sub_1000040A8(&qword_100356AC0, &qword_10027A0E0);
      sub_1000040A8(&qword_100356AE0, &qword_10027A0E8);
      sub_100037A40();
      sub_100037B74();
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(&v156, &qword_100356AE0, &qword_10027A0E8);
      sub_100006C20(&v138, &v175, &qword_100356AB0, &qword_10027A0D8);
      v187 = 0;
      sub_1000040A8(&qword_100356AB0, &qword_10027A0D8);
      sub_1000040A8(&qword_100356B00, &qword_10027A0F0);
      sub_1000379B4();
      sub_100037CA8();
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(&v138, &qword_100356AB0, &qword_10027A0D8);
      sub_100006C20(&v156, &v175, &qword_100356A98, &qword_10027A0D0);
      v188 = 0;
      sub_1000040A8(&qword_100356A98, &qword_10027A0D0);
      sub_100037928();
      _ConditionalContent<>.init(storage:)();
      sub_100038220(&v128);
    }

    else
    {
      v20 = *v1;
      if (*(v6 + 64))
      {
        v166 = *(v1 + 1);
        v79 = swift_allocObject();
        v80 = *(v1 + 1);
        v79[1] = *v1;
        v79[2] = v80;
        v79[3] = *(v1 + 2);
        swift_retain_n();
        swift_retain_n();
        sub_100006C20(&v166, &v175, &qword_1003566A0, &qword_100279AF0);
        type metadata accessor for AppEvents();
        sub_100038494(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

        v81 = EnvironmentObject.init()();
        v83 = v82;
        type metadata accessor for UIMetrics();
        sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
        v84 = EnvironmentObject.init()();
        v86 = v85;
        LOBYTE(v156) = 0;
        State.init(wrappedValue:)();
        *&v128 = v81;
        *(&v128 + 1) = v83;
        *&v129 = v84;
        *(&v129 + 1) = v86;
        *&v130 = v20;
        *(&v130 + 1) = v6;
        *&v131 = sub_10003856C;
        *(&v131 + 1) = v79;
        LOBYTE(v132) = v175;
        *(&v132 + 1) = *(&v175 + 1);
        v177 = v130;
        v178 = v131;
        v179 = v132;
        v175 = v128;
        v176 = v129;
        LOBYTE(v148) = 1;
        LOBYTE(v180) = 1;
        v87 = sub_1000383E4(&v128, &v156);
        v90 = sub_100037ACC(v87, v88, v89);
        sub_100037B20(v90, v91, v92);
        _ConditionalContent<>.init(storage:)();
        v177 = v158;
        v178 = v159;
        v179 = v160;
        LOBYTE(v180) = v161;
        v175 = v156;
        v176 = v157;
        v186 = 0;
        sub_1000040A8(&qword_100356AC0, &qword_10027A0E0);
        sub_1000040A8(&qword_100356AE0, &qword_10027A0E8);
        sub_100037A40();
        sub_100037B74();
        _ConditionalContent<>.init(storage:)();
        sub_100006C20(&v138, &v175, &qword_100356AB0, &qword_10027A0D8);
        v187 = 0;
        sub_1000040A8(&qword_100356AB0, &qword_10027A0D8);
        sub_1000040A8(&qword_100356B00, &qword_10027A0F0);
        sub_1000379B4();
        sub_100037CA8();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v138, &qword_100356AB0, &qword_10027A0D8);
        sub_100006C20(&v156, &v175, &qword_100356A98, &qword_10027A0D0);
        v188 = 0;
        sub_1000040A8(&qword_100356A98, &qword_10027A0D0);
        sub_100037928();
        _ConditionalContent<>.init(storage:)();
        sub_100038440(&v128);
      }

      else
      {
        type metadata accessor for EmergencyModel();
        sub_100038494(&qword_100356B60, type metadata accessor for EmergencyModel, "\ts\n");

        v21 = EnvironmentObject.init()();
        LOBYTE(v128) = 0;
        *&v175 = v21;
        *(&v175 + 1) = v22;
        *&v176 = v20;
        *(&v176 + 1) = v6;
        LOBYTE(v180) = 0;
        v24 = sub_100037ACC(v21, v22, v23);
        sub_100037B20(v24, v25, v26);

        _ConditionalContent<>.init(storage:)();
        v177 = v158;
        v178 = v159;
        v179 = v160;
        LOBYTE(v180) = v161;
        v175 = v156;
        v176 = v157;
        v186 = 0;
        sub_1000040A8(&qword_100356AC0, &qword_10027A0E0);
        sub_1000040A8(&qword_100356AE0, &qword_10027A0E8);
        sub_100037A40();
        sub_100037B74();
        _ConditionalContent<>.init(storage:)();
        sub_100006C20(&v138, &v175, &qword_100356AB0, &qword_10027A0D8);
        v187 = 0;
        sub_1000040A8(&qword_100356AB0, &qword_10027A0D8);
        sub_1000040A8(&qword_100356B00, &qword_10027A0F0);
        sub_1000379B4();
        sub_100037CA8();
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v138, &qword_100356AB0, &qword_10027A0D8);
        sub_100006C20(&v156, &v175, &qword_100356A98, &qword_10027A0D0);
        v188 = 0;
        sub_1000040A8(&qword_100356A98, &qword_10027A0D0);
        sub_100037928();
        _ConditionalContent<>.init(storage:)();
      }
    }
  }

  else if (*(v6 + 64) <= 5u)
  {
    v127 = a1;
    v42 = *v1;
    v148 = *(v1 + 1);
    if (v7 == 4)
    {
      v43 = swift_allocObject();
      v44 = *(v1 + 1);
      v43[1] = *v1;
      v43[2] = v44;
      v43[3] = *(v1 + 2);
      swift_retain_n();
      swift_retain_n();
      sub_100006C20(&v148, &v175, &qword_1003566A0, &qword_100279AF0);
      type metadata accessor for AppEvents();
      sub_100038494(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

      v45 = EnvironmentObject.init()();
      v47 = v46;
      type metadata accessor for RoadsideAssistanceModel();
      sub_100038494(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
      v48 = EnvironmentObject.init()();
      v50 = v49;
      type metadata accessor for UIMetrics();
      sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      v51 = EnvironmentObject.init()();
      v53 = v52;
      LOBYTE(v156) = 0;
      State.init(wrappedValue:)();
      *&v166 = v45;
      *(&v166 + 1) = v47;
      *&v167 = v48;
      *(&v167 + 1) = v50;
      *v168 = v51;
      *&v168[8] = v53;
      *&v168[16] = v42;
      *&v168[24] = v6;
      *&v169 = sub_10003856C;
      *(&v169 + 1) = v43;
      LOBYTE(v170) = v175;
      *(&v170 + 1) = *(&v175 + 1);
      v177 = *v168;
      v178 = *&v168[16];
      v179 = v169;
      v180 = v170;
      v175 = v166;
      v176 = v167;
      LOBYTE(v189) = 0;
      LOBYTE(v181) = 0;
      v54 = sub_100038114(&v166, &v156);
      v57 = sub_100037DC0(v54, v55, v56);
      sub_100037E14(v57, v58, v59);
      _ConditionalContent<>.init(storage:)();
      v142 = v160;
      v143 = v161;
      LOBYTE(v144) = v162;
      v138 = v156;
      v139 = v157;
      v140 = v158;
      v141 = v159;
      sub_1000380B8(&v138);
      v181 = v144;
      v182 = v145;
      v183 = v146;
      v184 = v147;
      v177 = v140;
      v178 = v141;
      v179 = v142;
      v180 = v143;
      v175 = v138;
      v176 = v139;
      sub_1000040A8(&qword_100356B10, &qword_10027A0F8);
      sub_1000040A8(&qword_100356B30, &unk_10027A100);
      sub_100037D34();
      sub_100037E68();
      _ConditionalContent<>.init(storage:)();
      v181 = v134;
      v182 = v135;
      v183 = v136;
      v184 = v137;
      v177 = v130;
      v178 = v131;
      v179 = v132;
      v180 = v133;
      v175 = v128;
      v176 = v129;
      v187 = 1;
      sub_1000040A8(&qword_100356AB0, &qword_10027A0D8);
      sub_1000040A8(&qword_100356B00, &qword_10027A0F0);
      sub_1000379B4();
      sub_100037CA8();
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(&v156, &v175, &qword_100356A98, &qword_10027A0D0);
      v188 = 0;
      sub_1000040A8(&qword_100356A98, &qword_10027A0D0);
      sub_100037928();
      _ConditionalContent<>.init(storage:)();
      sub_100038170(&v166);
    }

    else
    {
      v108 = swift_allocObject();
      v109 = *(v1 + 1);
      v108[1] = *v1;
      v108[2] = v109;
      v108[3] = *(v1 + 2);
      swift_retain_n();
      swift_retain_n();
      sub_100006C20(&v148, &v175, &qword_1003566A0, &qword_100279AF0);
      type metadata accessor for AppEvents();
      sub_100038494(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

      v110 = EnvironmentObject.init()();
      v112 = v111;
      type metadata accessor for RoadsideAssistanceModel();
      sub_100038494(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
      v113 = EnvironmentObject.init()();
      v115 = v114;
      type metadata accessor for UIMetrics();
      sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
      v116 = EnvironmentObject.init()();
      *&v166 = v110;
      *(&v166 + 1) = v112;
      *&v167 = v113;
      *(&v167 + 1) = v115;
      *v168 = v116;
      *&v168[8] = v117;
      *&v168[16] = v42;
      *&v168[24] = v6;
      *&v169 = sub_10003856C;
      *(&v169 + 1) = v108;
      v177 = *v168;
      v178 = *&v168[16];
      v179 = v169;
      v175 = v166;
      v176 = v167;
      LOBYTE(v189) = 1;
      LOBYTE(v181) = 1;
      v118 = sub_10003805C(&v166, &v156);
      v121 = sub_100037DC0(v118, v119, v120);
      sub_100037E14(v121, v122, v123);
      _ConditionalContent<>.init(storage:)();
      v142 = v160;
      v143 = v161;
      LOBYTE(v144) = v162;
      v138 = v156;
      v139 = v157;
      v140 = v158;
      v141 = v159;
      sub_1000380B8(&v138);
      v181 = v144;
      v182 = v145;
      v183 = v146;
      v184 = v147;
      v177 = v140;
      v178 = v141;
      v179 = v142;
      v180 = v143;
      v175 = v138;
      v176 = v139;
      sub_1000040A8(&qword_100356B10, &qword_10027A0F8);
      sub_1000040A8(&qword_100356B30, &unk_10027A100);
      sub_100037D34();
      sub_100037E68();
      _ConditionalContent<>.init(storage:)();
      v181 = v134;
      v182 = v135;
      v183 = v136;
      v184 = v137;
      v177 = v130;
      v178 = v131;
      v179 = v132;
      v180 = v133;
      v175 = v128;
      v176 = v129;
      v187 = 1;
      sub_1000040A8(&qword_100356AB0, &qword_10027A0D8);
      sub_1000040A8(&qword_100356B00, &qword_10027A0F0);
      sub_1000379B4();
      sub_100037CA8();
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(&v156, &v175, &qword_100356A98, &qword_10027A0D0);
      v188 = 0;
      sub_1000040A8(&qword_100356A98, &qword_10027A0D0);
      sub_100037928();
      _ConditionalContent<>.init(storage:)();
      sub_1000380C0(&v166);
    }
  }

  else if (v7 == 6)
  {
    v126 = *v1;
    v189 = *(v1 + 1);
    v60 = swift_allocObject();
    v61 = *(v1 + 1);
    v60[1] = *v1;
    v60[2] = v61;
    v60[3] = *(v1 + 2);
    swift_retain_n();
    swift_retain_n();
    sub_100006C20(&v189, &v175, &qword_1003566A0, &qword_100279AF0);
    type metadata accessor for AppEvents();
    sub_100038494(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");

    v62 = EnvironmentObject.init()();
    v64 = v63;
    type metadata accessor for RoadsideAssistanceModel();
    sub_100038494(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel, "\ts\n");
    v65 = EnvironmentObject.init()();
    v127 = a1;
    v66 = v65;
    v68 = v67;
    type metadata accessor for UIMetrics();
    sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    v69 = EnvironmentObject.init()();
    v71 = v70;
    FocusState.init<A>()();
    v72 = v177;
    v124 = v176;
    v125 = v175;
    v156 = 0uLL;
    sub_1000040A8(&qword_1003566A0, &qword_100279AF0);
    State.init(wrappedValue:)();
    *&v148 = v62;
    *(&v148 + 1) = v64;
    *&v149 = v66;
    *(&v149 + 1) = v68;
    *&v150 = v69;
    *(&v150 + 1) = v71;
    *&v151 = v126;
    *(&v151 + 1) = v6;
    *&v152 = sub_10003856C;
    *(&v152 + 1) = v60;
    v153 = v125;
    v154 = v124;
    *(v155 + 8) = v175;
    *&v155[0] = v72;
    *(&v155[1] + 1) = v176;
    *v168 = v150;
    *&v168[16] = v151;
    v166 = v148;
    v167 = v149;
    v172 = v155[0];
    v173 = v155[1];
    v170 = v125;
    v171 = v124;
    v169 = v152;
    sub_10003150C(&v166);
    v181 = v171;
    v182 = v172;
    v183 = v173;
    LOBYTE(v184) = v174;
    v177 = *v168;
    v178 = *&v168[16];
    v179 = v169;
    v180 = v170;
    v175 = v166;
    v176 = v167;
    v73 = sub_100037FAC(&v148, &v156);
    v76 = sub_100037EF4(v73, v74, v75);
    sub_100037F48(v76, v77, v78);
    _ConditionalContent<>.init(storage:)();
    v144 = v162;
    v145 = v163;
    v146 = v164;
    LOBYTE(v147) = v165;
    v140 = v158;
    v141 = v159;
    v142 = v160;
    v143 = v161;
    v138 = v156;
    v139 = v157;
    sub_100037F9C(&v138);
    v181 = v144;
    v182 = v145;
    v183 = v146;
    v184 = v147;
    v177 = v140;
    v178 = v141;
    v179 = v142;
    v180 = v143;
    v175 = v138;
    v176 = v139;
    sub_1000040A8(&qword_100356B10, &qword_10027A0F8);
    sub_1000040A8(&qword_100356B30, &unk_10027A100);
    sub_100037D34();
    sub_100037E68();
    _ConditionalContent<>.init(storage:)();
    v181 = v134;
    v182 = v135;
    v183 = v136;
    v184 = v137;
    v177 = v130;
    v178 = v131;
    v179 = v132;
    v180 = v133;
    v175 = v128;
    v176 = v129;
    v187 = 1;
    sub_1000040A8(&qword_100356AB0, &qword_10027A0D8);
    sub_1000040A8(&qword_100356B00, &qword_10027A0F0);
    sub_1000379B4();
    sub_100037CA8();
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(&v156, &v175, &qword_100356A98, &qword_10027A0D0);
    v188 = 0;
    sub_1000040A8(&qword_100356A98, &qword_10027A0D0);
    sub_100037928();
    _ConditionalContent<>.init(storage:)();
    sub_100038008(&v148);
  }

  else
  {
    if (v7 != 7)
    {
      v188 = 1;
      sub_1000040A8(&qword_100356A98, &qword_10027A0D0);
      sub_100037928();
      return _ConditionalContent<>.init(storage:)();
    }

    type metadata accessor for UIMetrics();
    sub_100038494(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");

    v8 = EnvironmentObject.init()();
    v10 = v9;
    type metadata accessor for QuestionnaireState();
    sub_100038494(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
    v11 = EnvironmentObject.init()();
    v13 = v12;
    *&v156 = 30;
    State.init(wrappedValue:)();
    *&v166 = v8;
    *(&v166 + 1) = v10;
    *&v167 = v11;
    *(&v167 + 1) = v13;
    *v168 = v6;
    *&v168[8] = v175;
    v14 = sub_10002CF18(&v166);
    v181 = v171;
    v182 = v172;
    v183 = v173;
    LOBYTE(v184) = v174;
    v177 = *v168;
    v178 = *&v168[16];
    v179 = v169;
    v180 = v170;
    v175 = v166;
    v176 = v167;
    v17 = sub_100037EF4(v14, v15, v16);
    sub_100037F48(v17, v18, v19);

    _ConditionalContent<>.init(storage:)();
    v144 = v162;
    v145 = v163;
    v146 = v164;
    LOBYTE(v147) = v165;
    v140 = v158;
    v141 = v159;
    v142 = v160;
    v143 = v161;
    v138 = v156;
    v139 = v157;
    sub_100037F9C(&v138);
    v181 = v144;
    v182 = v145;
    v183 = v146;
    v184 = v147;
    v177 = v140;
    v178 = v141;
    v179 = v142;
    v180 = v143;
    v175 = v138;
    v176 = v139;
    sub_1000040A8(&qword_100356B10, &qword_10027A0F8);
    sub_1000040A8(&qword_100356B30, &unk_10027A100);
    sub_100037D34();
    sub_100037E68();
    _ConditionalContent<>.init(storage:)();
    v181 = v134;
    v182 = v135;
    v183 = v136;
    v184 = v137;
    v177 = v130;
    v178 = v131;
    v179 = v132;
    v180 = v133;
    v175 = v128;
    v176 = v129;
    v187 = 1;
    sub_1000040A8(&qword_100356AB0, &qword_10027A0D8);
    sub_1000040A8(&qword_100356B00, &qword_10027A0F0);
    sub_1000379B4();
    sub_100037CA8();
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(&v156, &v175, &qword_100356A98, &qword_10027A0D0);
    v188 = 0;
    sub_1000040A8(&qword_100356A98, &qword_10027A0D0);
    sub_100037928();
    _ConditionalContent<>.init(storage:)();
  }

  return sub_100008FA0(&v156, &qword_100356A98, &qword_10027A0D0);
}

uint64_t sub_100037708()
{
  v1 = *(v0 + 8);
  v11 = *(v0 + 16);
  if ((sub_1000BB344(v1, 0, 4u) & 1) == 0)
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F53C(v2, qword_100381E48);
    v12 = v11;

    sub_100006C20(&v12, v10, &qword_1003566A0, &qword_100279AF0);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    sub_100008FA0(&v12, &qword_1003566A0, &qword_100279AF0);

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v10[0] = swift_slowAlloc();
      *v5 = 136446467;
      v6 = sub_1000B9A7C();
      v8 = sub_10017C9E8(v6, v7, v10);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2081;
      *(v5 + 14) = sub_10017C9E8(*(v1 + 16), *(v1 + 24), v10);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] QuestionnaireBodyView: failed to record answer for %{private}s", v5, 0x16u);
      swift_arrayDestroy();
    }
  }

  return (*(v0 + 32))();
}

unint64_t sub_100037928()
{
  result = qword_100356AA0;
  if (!qword_100356AA0)
  {
    sub_100008CF0(&qword_100356A98, &qword_10027A0D0);
    sub_1000379B4();
    sub_100037CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AA0);
  }

  return result;
}

unint64_t sub_1000379B4()
{
  result = qword_100356AA8;
  if (!qword_100356AA8)
  {
    sub_100008CF0(&qword_100356AB0, &qword_10027A0D8);
    sub_100037A40();
    sub_100037B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AA8);
  }

  return result;
}

unint64_t sub_100037A40()
{
  result = qword_100356AB8;
  if (!qword_100356AB8)
  {
    v1 = sub_100008CF0(&qword_100356AC0, &qword_10027A0E0);
    v6 = sub_100037ACC(v1, v2, v3);
    sub_100037B20(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AB8);
  }

  return result;
}

unint64_t sub_100037ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356AC8;
  if (!qword_100356AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AC8);
  }

  return result;
}

unint64_t sub_100037B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356AD0;
  if (!qword_100356AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AD0);
  }

  return result;
}

unint64_t sub_100037B74()
{
  result = qword_100356AD8;
  if (!qword_100356AD8)
  {
    v1 = sub_100008CF0(&qword_100356AE0, &qword_10027A0E8);
    v6 = sub_100037C00(v1, v2, v3);
    sub_100037C54(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AD8);
  }

  return result;
}

unint64_t sub_100037C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356AE8;
  if (!qword_100356AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AE8);
  }

  return result;
}

unint64_t sub_100037C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356AF0;
  if (!qword_100356AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AF0);
  }

  return result;
}

unint64_t sub_100037CA8()
{
  result = qword_100356AF8;
  if (!qword_100356AF8)
  {
    sub_100008CF0(&qword_100356B00, &qword_10027A0F0);
    sub_100037D34();
    sub_100037E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356AF8);
  }

  return result;
}

unint64_t sub_100037D34()
{
  result = qword_100356B08;
  if (!qword_100356B08)
  {
    v1 = sub_100008CF0(&qword_100356B10, &qword_10027A0F8);
    v6 = sub_100037DC0(v1, v2, v3);
    sub_100037E14(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B08);
  }

  return result;
}

unint64_t sub_100037DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356B18;
  if (!qword_100356B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B18);
  }

  return result;
}

unint64_t sub_100037E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356B20;
  if (!qword_100356B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B20);
  }

  return result;
}

unint64_t sub_100037E68()
{
  result = qword_100356B28;
  if (!qword_100356B28)
  {
    v1 = sub_100008CF0(&qword_100356B30, &unk_10027A100);
    v6 = sub_100037EF4(v1, v2, v3);
    sub_100037F48(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B28);
  }

  return result;
}

unint64_t sub_100037EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356B38;
  if (!qword_100356B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B38);
  }

  return result;
}

unint64_t sub_100037F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356B40;
  if (!qword_100356B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B40);
  }

  return result;
}

unint64_t sub_100038298()
{
  result = qword_100356B50;
  if (!qword_100356B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100356B50);
  }

  return result;
}

uint64_t sub_100038394()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100038494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000384E0()
{
  result = qword_100356B68;
  if (!qword_100356B68)
  {
    sub_100008CF0(&qword_100356B70, &qword_10027A118);
    sub_100037928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B68);
  }

  return result;
}

char *sub_100038584()
{
  v1 = v0[2];
  if (!v1)
  {
    type metadata accessor for StewieModel(0);
    sub_10003A938(&qword_1003561B8, type metadata accessor for StewieModel, "\ts\n");
    EnvironmentObject.error()();
    __break(1u);
LABEL_71:
    type metadata accessor for PartnerModel();
    sub_10003A938(&qword_1003561A8, type metadata accessor for PartnerModel, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (v1[8] && *(v1[10] + 16))
  {
    sub_100233FEC(&off_100321A78);
    v2 = sub_100204870();

    v3 = v2 ^ 1u;
  }

  else
  {
    v3 = 0;
  }

  v4 = *v0;
  if (!*v0)
  {
    goto LABEL_71;
  }

  v61 = v0[1];
  v5 = *(v4 + 72);
  if (v5 != 2 && (v5 & 1) != 0)
  {
    v60 = 0;
    v6 = 0;
LABEL_12:
    v7 = &off_100321AA0;
    goto LABEL_13;
  }

  v6 = *(v4 + 56);
  v60 = *(v4 + 48);
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_13:
  *&v64[0] = v7;
  v62 = v4;

  v8 = v64;
  sub_1000EC674(&off_100321AC8);
  v9 = *&v64[0];
  v10 = *(*&v64[0] + 16);
  if (!v10)
  {

    v13 = _swiftEmptyArrayStorage;
    v39 = v62;
    if (v6)
    {
      goto LABEL_48;
    }

LABEL_57:

LABEL_59:
    v52 = sub_10003A334(v13, v39, v61);
    v53 = sub_100038CDC();
    *&v64[0] = v52;
    sub_1000EC580(v53);
    if (*(*&v64[0] + 16))
    {
      sub_1000040A8(&qword_100355E30, &unk_10027A120);
      sub_100009274(&qword_100356B78, &qword_100355E30, &unk_10027A120, &protocol conformance descriptor for [A]);
      v3 = BidirectionalCollection<>.joined(separator:)();
      v12 = v54;
    }

    else
    {

      v3 = 0;
      v12 = 0;
    }

    v8 = _swiftEmptyArrayStorage;
    if (!*(v13 + 2))
    {
      goto LABEL_55;
    }

    goto LABEL_63;
  }

  v59 = v6;
  v11 = 0;
  v12 = *&v64[0] + 32;
  v13 = _swiftEmptyArrayStorage;
  do
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_69;
    }

    v19 = *(v12 + v11);
    v20 = v1[8];
    if (v19 != 3)
    {
      if (v3)
      {
        if (!v20)
        {
          goto LABEL_16;
        }

        v26 = v1[10];
        if (!*(v26 + 16))
        {
          goto LABEL_16;
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(v19);
        v8 = v64;
        v27 = Hasher._finalize()();
        v28 = -1 << *(v26 + 32);
        v29 = v27 & ~v28;
        if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_16;
        }

        v30 = ~v28;
        while (*(*(v26 + 48) + v29) != v19)
        {
          v29 = (v29 + 1) & v30;
          if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        if (!v20)
        {
          goto LABEL_16;
        }

        v32 = v1[13];
        if (!*(v32 + 16))
        {
          goto LABEL_16;
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(v19);
        v8 = v64;
        v33 = Hasher._finalize()();
        v34 = -1 << *(v32 + 32);
        v35 = v33 & ~v34;
        if (((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_16;
        }

        v36 = ~v34;
        while (*(*(v32 + 48) + v35) != v19)
        {
          v35 = (v35 + 1) & v36;
          if (((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      goto LABEL_42;
    }

    if (v20)
    {
      v21 = v1[11];
      if (*(v21 + 16))
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(3uLL);
        v8 = v64;
        v22 = Hasher._finalize()();
        v23 = -1 << *(v21 + 32);
        v24 = v22 & ~v23;
        if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_16;
        }

        v25 = ~v23;
        while (*(*(v21 + 48) + v24) != 3)
        {
          v24 = (v24 + 1) & v25;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

LABEL_42:
        v31 = 0x203040100uLL >> (8 * v19);
        goto LABEL_43;
      }
    }

    LOBYTE(v31) = 3;
LABEL_43:
    sub_10003938C(v31, 0, 0, v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10017B780(0, *(v13 + 2) + 1, 1, v13);
    }

    v38 = *(v13 + 2);
    v37 = *(v13 + 3);
    v8 = (v38 + 1);
    if (v38 >= v37 >> 1)
    {
      v13 = sub_10017B780((v37 > 1), v38 + 1, 1, v13);
    }

    *(v13 + 2) = v8;
    v14 = &v13[96 * v38];
    v15 = v63[1];
    *(v14 + 2) = v63[0];
    *(v14 + 3) = v15;
    v16 = v63[2];
    v17 = v63[3];
    v18 = v63[5];
    *(v14 + 6) = v63[4];
    *(v14 + 7) = v18;
    *(v14 + 4) = v16;
    *(v14 + 5) = v17;
LABEL_16:
    ++v11;
  }

  while (v11 != v10);

  v6 = v59;
  v39 = v62;
  if (!v59)
  {
    goto LABEL_57;
  }

LABEL_48:
  v40 = *(v39 + 72);
  if (v40 != 2 && (v40 & 1) != 0)
  {

    goto LABEL_58;
  }

  v41 = *(v39 + 64);

  if (!v41)
  {
LABEL_58:

    goto LABEL_59;
  }

  sub_1000040A8(&qword_100356B80, &qword_10028A000);
  v42 = swift_allocObject();
  v42[1] = xmmword_100279160;

  sub_10003938C(5u, v60, v6, v64);
  v43 = v6;

  v44 = v64[3];
  v42[4] = v64[2];
  v42[5] = v44;
  v45 = v64[5];
  v42[6] = v64[4];
  v42[7] = v45;
  v46 = v64[1];
  v42[2] = v64[0];
  v42[3] = v46;
  v8 = sub_10017B660(0, 1, 1, _swiftEmptyArrayStorage);
  v48 = *(v8 + 2);
  v47 = *(v8 + 3);
  if (v48 >= v47 >> 1)
  {
    v8 = sub_10017B660((v47 > 1), v48 + 1, 1, v8);
  }

  *(v8 + 2) = v48 + 1;
  v49 = &v8[40 * v48];
  *(v49 + 4) = v60;
  *(v49 + 5) = v43;
  *(v49 + 7) = 0;
  *(v49 + 8) = 0;
  *(v49 + 6) = v42;
  sub_1000210F4(v13, v41);
  v3 = v50;
  v12 = v51;

  if (!*(v13 + 2))
  {
LABEL_55:

    return v8;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_69:
    v8 = sub_10017B660(0, *(v8 + 2) + 1, 1, v8);
  }

  v56 = *(v8 + 2);
  v55 = *(v8 + 3);
  if (v56 >= v55 >> 1)
  {
    v8 = sub_10017B660((v55 > 1), v56 + 1, 1, v8);
  }

  *(v8 + 2) = v56 + 1;
  v57 = &v8[40 * v56];
  *(v57 + 4) = 0xD000000000000024;
  *(v57 + 5) = 0x8000000100297010;
  *(v57 + 6) = v13;
  *(v57 + 7) = v3;
  *(v57 + 8) = v12;
  return v8;
}

char *sub_100038CDC()
{
  if (*v0)
  {
    v1 = *(*v0 + 88);
    if (v1)
    {
      v2 = v1 + 56;

      v3 = 0;
      v4 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (*(v1 + 16))
        {
          v5 = *(&off_100321A50 + v3 + 32);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(v5);
          v6 = Hasher._finalize()();
          v7 = -1 << *(v1 + 32);
          v8 = v6 & ~v7;
          if ((*(v2 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
          {
            v9 = ~v7;
            while (*(*(v1 + 48) + v8) != v5)
            {
              v8 = (v8 + 1) & v9;
              if (((*(v2 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

            if (!v5)
            {
              v11 = [objc_opt_self() mainBundle];
              v25 = 0x80000001002976B0;
              v12 = 0xD000000000000044;
              v13 = "iMessage is provided by Apple.";
              goto LABEL_23;
            }

            if (v5 == 1)
            {
              v10 = *(v26 + 16);
              if (!v10)
              {
                goto LABEL_30;
              }

              if (*(v10 + 64) && ((*(v10 + 128) | *(v10 + 136)) & 0x10) != 0)
              {
                v11 = [objc_opt_self() mainBundle];
                v12 = 0xD00000000000001ELL;
                v25 = 0x80000001002976B0;
                v13 = "le over satellite";
LABEL_23:
                v15 = v13 | 0x8000000000000000;
                v16.value._countAndFlagsBits = 0x5072656972726143;
                v16.value._object = 0xED00006E6F656769;
                v17._countAndFlagsBits = 0;
                v17._object = 0xE000000000000000;
                v18 = 0xD000000000000041;
                v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, v16, v11, v17, *(&v25 - 1));

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_10017B338(0, *(v4 + 2) + 1, 1, v4);
                }

                v21 = *(v4 + 2);
                v20 = *(v4 + 3);
                if (v21 >= v20 >> 1)
                {
                  v4 = sub_10017B338((v20 > 1), v21 + 1, 1, v4);
                }

                *(v4 + 2) = v21 + 1;
                *&v4[16 * v21 + 32] = v19;
              }
            }

            else
            {
              v14 = *(v26 + 16);
              if (!v14)
              {
LABEL_30:
                type metadata accessor for StewieModel(0);
                v23 = &qword_1003561B8;
                v24 = type metadata accessor for StewieModel;
                goto LABEL_32;
              }

              if (*(v14 + 64) && ((*(v14 + 128) | *(v14 + 136)) & 0x20) != 0)
              {
                v11 = [objc_opt_self() mainBundle];
                v12 = 0xD000000000000036;
                v25 = 0x80000001002976B0;
                v13 = "c-icon.emergency-sos";
                goto LABEL_23;
              }
            }
          }
        }

LABEL_5:
        if (++v3 == 3)
        {

          return v4;
        }
      }
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for PartnerModel();
    v23 = &qword_1003561A8;
    v24 = type metadata accessor for PartnerModel;
LABEL_32:
    sub_10003A938(v23, v24, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_100039090@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OpacityTransition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v27[-v9];
  v11 = ButtonStyleConfiguration.isPressed.getter();
  v12 = *(v2 + 48);
  v32 = *(v2 + 32);
  v33 = v12;
  v13 = *(v2 + 80);
  v34 = *(v2 + 64);
  v35 = v13;
  v14 = *(v2 + 16);
  v30 = *v2;
  v31 = v14;
  v15 = *(v2 + 96);
  v28 = *(v2 + 97);
  sub_10003A900(v2, v29);
  type metadata accessor for UIMetrics();
  sub_10003A938(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v16 = EnvironmentObject.init()();
  v18 = v17;
  OpacityTransition.init()();
  (*(v5 + 16))(v7, v10, v4);
  sub_10003A938(&qword_100356B88, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
  v19 = AnyTransition.init<A>(_:)();
  (*(v5 + 8))(v10, v4);
  v20 = v11 & 1;
  if (v20)
  {
    v21 = 0.3;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = static Edge.Set.all.getter();
  *a1 = v16;
  *(a1 + 8) = v18;
  v23 = v33;
  *(a1 + 48) = v32;
  *(a1 + 64) = v23;
  v24 = v35;
  *(a1 + 80) = v34;
  *(a1 + 96) = v24;
  result = *&v30;
  v26 = v31;
  *(a1 + 16) = v30;
  *(a1 + 32) = v26;
  *(a1 + 112) = v15;
  *(a1 + 113) = v28;
  *(a1 + 120) = v19;
  *(a1 + 128) = 0;
  *(a1 + 132) = v21;
  *(a1 + 136) = v22;
  *(a1 + 137) = v20;
  return result;
}

void *sub_100039344(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

void sub_10003938C(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v71 = objc_opt_self();
      v72 = [v71 mainBundle];
      v155._object = 0x8000000100297060;
      v73.value._countAndFlagsBits = 0x5072656972726143;
      v74._countAndFlagsBits = 0xD000000000000019;
      v74._object = 0x8000000100297040;
      v155._countAndFlagsBits = 0xD00000000000004ELL;
      v73.value._object = 0xED00006E6F656769;
      v75._countAndFlagsBits = 0;
      v75._object = 0xE000000000000000;
      v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v73, v72, v75, v155);
      object = v76._object;
      countAndFlagsBits = v76._countAndFlagsBits;

      v77 = [v71 mainBundle];
      v156._object = 0x8000000100297060;
      v78._countAndFlagsBits = 0x6F6D654420797254;
      v156._countAndFlagsBits = 0xD00000000000004ELL;
      v78._object = 0xE800000000000000;
      v79.value._countAndFlagsBits = 0x5072656972726143;
      v79.value._object = 0xED00006E6F656769;
      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, v79, v77, v80, v156);
      v137 = v81._object;
      v138 = v81._countAndFlagsBits;

      v23 = a3;
      v82 = [v71 mainBundle];
      v157._object = 0x80000001002970D0;
      v83._countAndFlagsBits = 0xD00000000000001BLL;
      v83._object = 0x80000001002970B0;
      v157._countAndFlagsBits = 0xD000000000000054;
      v84.value._countAndFlagsBits = 0x5072656972726143;
      v84.value._object = 0xED00006E6F656769;
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v82, v85, v157);
      v136 = v86._countAndFlagsBits;
      v22 = v86._object;

      v24 = [v71 mainBundle];
      v158._object = 0x80000001002970D0;
      v87._countAndFlagsBits = 0xD00000000000001BLL;
      v87._object = 0x80000001002970B0;
      v158._countAndFlagsBits = 0xD000000000000054;
      v88.value._countAndFlagsBits = 0x5072656972726143;
      v88.value._object = 0xED00006E6F656769;
      v89._countAndFlagsBits = 0;
      v89._object = 0xE000000000000000;
      v90 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, v88, v24, v89, v158);
      v29 = v90._countAndFlagsBits;
      v30 = v90._object;
      goto LABEL_10;
    }

    if (a1 == 4)
    {
      v31 = objc_opt_self();
      v32 = [v31 mainBundle];
      v147._object = 0x8000000100297230;
      v147._countAndFlagsBits = 0xD00000000000003DLL;
      v33._countAndFlagsBits = 0x736567617373654DLL;
      v33._object = 0xE800000000000000;
      v34.value._countAndFlagsBits = 0x5072656972726143;
      v34.value._object = 0xED00006E6F656769;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v147);
      object = v36._object;
      countAndFlagsBits = v36._countAndFlagsBits;

      v37 = [v31 mainBundle];
      v148._object = 0x8000000100297270;
      v148._countAndFlagsBits = 0xD000000000000043;
      v38._countAndFlagsBits = 0x736567617373654DLL;
      v38._object = 0xE800000000000000;
      v39.value._countAndFlagsBits = 0x5072656972726143;
      v39.value._object = 0xED00006E6F656769;
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v148);
      v137 = v41._object;
      v138 = v41._countAndFlagsBits;

      v23 = a3;
      v42 = [v31 mainBundle];
      v149._object = 0x80000001002972E0;
      v43._countAndFlagsBits = 0xD000000000000019;
      v43._object = 0x80000001002972C0;
      v149._countAndFlagsBits = 0xD000000000000043;
      v44.value._countAndFlagsBits = 0x5072656972726143;
      v44.value._object = 0xED00006E6F656769;
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v149);
      v136 = v46._countAndFlagsBits;
      v22 = v46._object;

      v24 = [v31 mainBundle];
      v150._object = 0x8000000100297230;
      v150._countAndFlagsBits = 0xD00000000000003DLL;
      v47._countAndFlagsBits = 0x736567617373654DLL;
      v47._object = 0xE800000000000000;
      v48.value._countAndFlagsBits = 0x5072656972726143;
      v48.value._object = 0xED00006E6F656769;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v24, v49, v150);
      v29 = v50._countAndFlagsBits;
      v30 = v50._object;
    }

    else
    {
      v112 = objc_opt_self();
      v113 = [v112 mainBundle];
      v163._object = 0x8000000100297230;
      v163._countAndFlagsBits = 0xD00000000000003DLL;
      v114._countAndFlagsBits = 0x736567617373654DLL;
      v114._object = 0xE800000000000000;
      v115.value._countAndFlagsBits = 0x5072656972726143;
      v115.value._object = 0xED00006E6F656769;
      v116._countAndFlagsBits = 0;
      v116._object = 0xE000000000000000;
      v117 = NSLocalizedString(_:tableName:bundle:value:comment:)(v114, v115, v113, v116, v163);
      object = v117._object;
      countAndFlagsBits = v117._countAndFlagsBits;

      v118 = [v112 mainBundle];
      v164._object = 0x8000000100297270;
      v164._countAndFlagsBits = 0xD000000000000043;
      v119._countAndFlagsBits = 0x736567617373654DLL;
      v119._object = 0xE800000000000000;
      v120.value._countAndFlagsBits = 0x5072656972726143;
      v120.value._object = 0xED00006E6F656769;
      v121._countAndFlagsBits = 0;
      v121._object = 0xE000000000000000;
      v122 = NSLocalizedString(_:tableName:bundle:value:comment:)(v119, v120, v118, v121, v164);
      v137 = v122._object;
      v138 = v122._countAndFlagsBits;

      v123 = [v112 mainBundle];
      v165._object = 0x80000001002972E0;
      v124._countAndFlagsBits = 0xD000000000000019;
      v124._object = 0x80000001002972C0;
      v165._countAndFlagsBits = 0xD000000000000043;
      v125.value._countAndFlagsBits = 0x5072656972726143;
      v125.value._object = 0xED00006E6F656769;
      v126._countAndFlagsBits = 0;
      v126._object = 0xE000000000000000;
      v127 = NSLocalizedString(_:tableName:bundle:value:comment:)(v124, v125, v123, v126, v165);
      v136 = v127._countAndFlagsBits;
      v22 = v127._object;

      v24 = [v112 mainBundle];
      v166._object = 0x8000000100297350;
      v128._countAndFlagsBits = 0xD00000000000001CLL;
      v128._object = 0x8000000100297330;
      v166._countAndFlagsBits = 0xD000000000000052;
      v129.value._countAndFlagsBits = 0x5072656972726143;
      v129.value._object = 0xED00006E6F656769;
      v130._countAndFlagsBits = 0;
      v130._object = 0xE000000000000000;
      v131 = NSLocalizedString(_:tableName:bundle:value:comment:)(v128, v129, v24, v130, v166);
      v29 = v131._countAndFlagsBits;
      v30 = v131._object;
      v23 = a3;
    }

LABEL_13:
    v91 = &selRef_initWithBundleIdentifier_;
    goto LABEL_14;
  }

  if (!a1)
  {
    v51 = objc_opt_self();
    v52 = [v51 mainBundle];
    v151._object = 0x8000000100297530;
    v53._object = 0xED0000534F532079;
    v151._countAndFlagsBits = 0xD000000000000042;
    v53._countAndFlagsBits = 0x636E656772656D45;
    v54.value._countAndFlagsBits = 0x5072656972726143;
    v54.value._object = 0xED00006E6F656769;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v151);
    object = v56._object;
    countAndFlagsBits = v56._countAndFlagsBits;

    v57 = [v51 mainBundle];
    v152._object = 0x8000000100297580;
    v152._countAndFlagsBits = 0xD000000000000048;
    v58._countAndFlagsBits = 0x636E656772656D45;
    v58._object = 0xE900000000000079;
    v59.value._countAndFlagsBits = 0x5072656972726143;
    v59.value._object = 0xED00006E6F656769;
    v60._countAndFlagsBits = 0;
    v60._object = 0xE000000000000000;
    v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v152);
    v137 = v61._object;
    v138 = v61._countAndFlagsBits;

    v62 = [v51 mainBundle];
    v153._object = 0x80000001002975F0;
    v63._countAndFlagsBits = 0xD00000000000001ALL;
    v63._object = 0x80000001002975D0;
    v153._countAndFlagsBits = 0xD000000000000048;
    v64.value._countAndFlagsBits = 0x5072656972726143;
    v64.value._object = 0xED00006E6F656769;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v66 = NSLocalizedString(_:tableName:bundle:value:comment:)(v63, v64, v62, v65, v153);
    v136 = v66._countAndFlagsBits;
    v22 = v66._object;

    v24 = [v51 mainBundle];
    v154._object = 0x8000000100297530;
    v154._countAndFlagsBits = 0xD000000000000042;
    v67._countAndFlagsBits = 0x636E656772656D45;
    v67._object = 0xED0000534F532079;
    v68.value._countAndFlagsBits = 0x5072656972726143;
    v68.value._object = 0xED00006E6F656769;
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v68, v24, v69, v154);
    v29 = v70._countAndFlagsBits;
    v30 = v70._object;
    v23 = a3;
    goto LABEL_10;
  }

  if (a1 != 1)
  {
    v92 = objc_opt_self();
    v93 = [v92 mainBundle];
    v159._object = 0x8000000100297160;
    v94._countAndFlagsBits = 0x794D20646E6946;
    v159._countAndFlagsBits = 0xD00000000000003CLL;
    v94._object = 0xE700000000000000;
    v95.value._countAndFlagsBits = 0x5072656972726143;
    v95.value._object = 0xED00006E6F656769;
    v96._countAndFlagsBits = 0;
    v96._object = 0xE000000000000000;
    v97 = NSLocalizedString(_:tableName:bundle:value:comment:)(v94, v95, v93, v96, v159);
    object = v97._object;
    countAndFlagsBits = v97._countAndFlagsBits;

    v98 = [v92 mainBundle];
    v160._object = 0x8000000100297160;
    v99._countAndFlagsBits = 0x636F4C20646E6553;
    v99._object = 0xED00006E6F697461;
    v160._countAndFlagsBits = 0xD00000000000003CLL;
    v100.value._countAndFlagsBits = 0x5072656972726143;
    v100.value._object = 0xED00006E6F656769;
    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    v102 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, v100, v98, v101, v160);
    v137 = v102._object;
    v138 = v102._countAndFlagsBits;

    v103 = [v92 mainBundle];
    v161._object = 0x80000001002971C0;
    v104._countAndFlagsBits = 0xD000000000000016;
    v104._object = 0x80000001002971A0;
    v161._countAndFlagsBits = 0xD000000000000042;
    v105.value._countAndFlagsBits = 0x5072656972726143;
    v105.value._object = 0xED00006E6F656769;
    v106._countAndFlagsBits = 0;
    v106._object = 0xE000000000000000;
    v107 = NSLocalizedString(_:tableName:bundle:value:comment:)(v104, v105, v103, v106, v161);
    v136 = v107._countAndFlagsBits;
    v22 = v107._object;

    v23 = a3;

    v24 = [v92 mainBundle];
    v162._object = 0x8000000100297160;
    v162._countAndFlagsBits = 0xD00000000000003CLL;
    v108._countAndFlagsBits = 0x794D20646E6946;
    v108._object = 0xE700000000000000;
    v109.value._countAndFlagsBits = 0x5072656972726143;
    v109.value._object = 0xED00006E6F656769;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    v111 = NSLocalizedString(_:tableName:bundle:value:comment:)(v108, v109, v24, v110, v162);
    v29 = v111._countAndFlagsBits;
    v30 = v111._object;
    goto LABEL_13;
  }

  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v143._object = 0x80000001002973F0;
  v8._object = 0x80000001002973D0;
  v143._countAndFlagsBits = 0xD000000000000048;
  v8._countAndFlagsBits = 0xD000000000000013;
  v9.value._countAndFlagsBits = 0x5072656972726143;
  v9.value._object = 0xED00006E6F656769;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v143);
  object = v11._object;
  countAndFlagsBits = v11._countAndFlagsBits;

  v12 = [v6 mainBundle];
  v144._object = 0x8000000100297440;
  v13._countAndFlagsBits = 0x6564697364616F52;
  v144._countAndFlagsBits = 0xD00000000000004ELL;
  v13._object = 0xE800000000000000;
  v14.value._countAndFlagsBits = 0x5072656972726143;
  v14.value._object = 0xED00006E6F656769;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v144);
  v137 = v16._object;
  v138 = v16._countAndFlagsBits;

  v17 = [v6 mainBundle];
  v145._object = 0x80000001002974B0;
  v18._countAndFlagsBits = 0xD00000000000001DLL;
  v18._object = 0x8000000100297490;
  v145._countAndFlagsBits = 0xD00000000000004ELL;
  v19.value._countAndFlagsBits = 0x5072656972726143;
  v19.value._object = 0xED00006E6F656769;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v145);
  v136 = v21._countAndFlagsBits;
  v22 = v21._object;

  v23 = a3;

  v24 = [v6 mainBundle];
  v146._object = 0x80000001002973F0;
  v25._object = 0x80000001002973D0;
  v146._countAndFlagsBits = 0xD000000000000048;
  v25._countAndFlagsBits = 0xD000000000000013;
  v26.value._countAndFlagsBits = 0x5072656972726143;
  v26.value._object = 0xED00006E6F656769;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v146);
  v29 = v28._countAndFlagsBits;
  v30 = v28._object;
LABEL_10:
  v91 = &selRef_initWithType_;
LABEL_14:

  v132 = objc_allocWithZone(ISIcon);
  v133 = String._bridgeToObjectiveC()();
  v134 = [v132 *v91];

  *a4 = a1;
  *(a4 + 8) = countAndFlagsBits;
  *(a4 + 16) = object;
  *(a4 + 24) = v138;
  *(a4 + 32) = v137;
  *(a4 + 40) = v136;
  *(a4 + 48) = v22;
  *(a4 + 56) = a2;
  *(a4 + 64) = v23;
  *(a4 + 72) = v29;
  *(a4 + 80) = v30;
  *(a4 + 88) = v134;
}

Swift::Int sub_100039FD4(Swift::Int result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 16) || !*(a2 + 16))
  {
    return 0;
  }

  v29 = result;
  v4 = *(a3 + 16);
  if (!v4)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_29:
    if (*(v8 + 2))
    {
      sub_100021930(v8, v29);
      v28 = v27;

      return v28;
    }

    return 0;
  }

  v5 = 0;
  v6 = a3 + 32;
  v7 = a2 + 56;
  v8 = _swiftEmptyArrayStorage;
  v30 = a3 + 32;
  while (v5 < v4)
  {
    v9 = (v6 + 96 * v5);
    v10 = v9[3];
    v43 = v9[2];
    v44 = v10;
    v11 = v9[5];
    v45 = v9[4];
    v46 = v11;
    v12 = v9[1];
    v41 = *v9;
    v42 = v12;
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_34;
    }

    v14 = v41;
    if (v41 != 4)
    {
      goto LABEL_14;
    }

    if (*(a2 + 16))
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(5uLL);
      result = Hasher._finalize()();
      v15 = -1 << *(a2 + 32);
      v16 = result & ~v15;
      if ((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(a2 + 48) + v16) != 5)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v7 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        sub_10003A6A4(&v41, v40);
        sub_10003938C(5u, 0, 0, v47);
        sub_10003A700(&v41);
        v38 = v56;
        v39 = v58;
        v36 = v54;
        v37 = v57;
        v34 = v52;
        v35 = v55;
        v32 = v50;
        v33 = v53;
        v31 = v51;
        v21 = v48;
        v22 = v49;
        LOBYTE(v14) = v47[0];
        goto LABEL_22;
      }

LABEL_14:
      if (!*(a2 + 16))
      {
        goto LABEL_5;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v14);
      result = Hasher._finalize()();
      v18 = -1 << *(a2 + 32);
      v19 = result & ~v18;
      if (((*(v7 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_5;
      }

      v20 = ~v18;
      while (*(*(a2 + 48) + v19) != v14)
      {
        v19 = (v19 + 1) & v20;
        if (((*(v7 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v38 = *(&v45 + 1);
      v39 = *(&v46 + 1);
      v36 = *(&v44 + 1);
      v37 = v46;
      v34 = *(&v43 + 1);
      v35 = v45;
      v32 = *(&v42 + 1);
      v33 = v44;
      v31 = v43;
      v21 = *(&v41 + 1);
      v22 = v42;
      sub_10003A6A4(&v41, v40);
LABEL_22:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10017B780(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v24 = *(v8 + 2);
      v23 = *(v8 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_10017B780((v23 > 1), v24 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v24 + 1;
      v25 = &v8[96 * v24];
      v25[32] = v14;
      v26 = *(v40 + 3);
      *(v25 + 33) = v40[0];
      *(v25 + 9) = v26;
      *(v25 + 5) = v21;
      *(v25 + 6) = v22;
      *(v25 + 7) = v32;
      *(v25 + 8) = v31;
      *(v25 + 9) = v34;
      *(v25 + 10) = v33;
      *(v25 + 11) = v36;
      *(v25 + 12) = v35;
      *(v25 + 13) = v38;
      *(v25 + 14) = v37;
      *(v25 + 15) = v39;
      v6 = v30;
      if (v5 == v4)
      {
        goto LABEL_29;
      }
    }

    else
    {
LABEL_5:
      if (v5 == v4)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

char *sub_10003A334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_34;
  }

  if (!*(a2 + 80))
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);

  if (!v7)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v9 = 0;
  v30 = a1 + 32;
  v33 = v8 + 32;
  v10 = _swiftEmptyArrayStorage;
  v29 = a1;
  v27 = _swiftEmptyArrayStorage;
LABEL_9:
  if (__OFADD__(v9, 1))
  {
    goto LABEL_33;
  }

  v32 = v9 + 1;
  v14 = *(v8 + 16);
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = 0;
  v16 = (v30 + 96 * v9);
  v17 = *v16;
  v31 = *(v16 + 4);
  v10 = *(v16 + 11);
  while (v15 < *(v8 + 16))
  {
    v18 = (v33 + 16 * v15);
    v5 = v18[1];
    if (*(v5 + 16))
    {
      v3 = *v18;
      v4 = v8;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v8 = v4;
      if ((*(v5 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (*(*(v5 + 48) + v21) != v17)
        {
          v21 = (v21 + 1) & v22;
          if (((*(v5 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_6;
      }
    }

LABEL_12:
    if (++v15 == v14)
    {
LABEL_7:
      while (1)
      {
        v9 = v32;
        if (v32 == v7)
        {
          break;
        }

        if (v32 < v7)
        {
          goto LABEL_9;
        }

        while (1)
        {
          __break(1u);
LABEL_6:
          v11 = v10;

          v10 = v31;

          v28 = sub_100039FD4(v3, v5, v29);
          v13 = v12;

          v8 = v4;
          if (!v13)
          {
            break;
          }

          v10 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10017B338(0, *(v27 + 2) + 1, 1, v27);
          }

          v24 = *(v10 + 2);
          v23 = *(v10 + 3);
          v3 = v24 + 1;
          v9 = v32;
          if (v24 >= v23 >> 1)
          {
            v10 = sub_10017B338((v23 > 1), v24 + 1, 1, v10);
          }

          v8 = v4;
          *(v10 + 2) = v3;
          v25 = &v10[16 * v24];
          *(v25 + 4) = v28;
          *(v25 + 5) = v13;
          if (v32 == v7)
          {
            goto LABEL_30;
          }

          v27 = v10;
          if (v32 < v7)
          {
            goto LABEL_9;
          }
        }
      }

      v10 = v27;
LABEL_30:

      return v10;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  type metadata accessor for PartnerModel();
  sub_10003A938(&qword_1003561A8, type metadata accessor for PartnerModel, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10003A754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10003A79C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10003A804(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10003A830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
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

uint64_t sub_10003A878(uint64_t result, int a2, int a3)
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
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003A938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003A984()
{
  result = qword_100356B90;
  if (!qword_100356B90)
  {
    sub_100008CF0(&qword_100356B98, &qword_10027A288);
    sub_10003AA3C();
    sub_100009274(&qword_100356C08, &qword_100356C10, &unk_10027A2C0, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B90);
  }

  return result;
}

unint64_t sub_10003AA3C()
{
  result = qword_100356BA0;
  if (!qword_100356BA0)
  {
    sub_100008CF0(&qword_100356BA8, &qword_10027A290);
    sub_10003AAF4();
    sub_100009274(&qword_100356BF8, &qword_100356C00, &qword_10027A2B8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356BA0);
  }

  return result;
}

unint64_t sub_10003AAF4()
{
  result = qword_100356BB0;
  if (!qword_100356BB0)
  {
    sub_100008CF0(&qword_100356BB8, &qword_10027A298);
    sub_10003ABAC();
    sub_100009274(&qword_100356BE8, &qword_100356BF0, &qword_10027A2B0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356BB0);
  }

  return result;
}

unint64_t sub_10003ABAC()
{
  result = qword_100356BC0;
  if (!qword_100356BC0)
  {
    v1 = sub_100008CF0(&qword_100356BC8, &unk_10027A2A0);
    sub_10003AC64(v1, v2, v3);
    sub_100009274(&qword_100356BD8, &qword_100356BE0, qword_10028B900, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356BC0);
  }

  return result;
}

unint64_t sub_10003AC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356BD0;
  if (!qword_100356BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356BD0);
  }

  return result;
}

uint64_t sub_10003ACB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10003AD00(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10003AD78@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1000040A8(&qword_100356C18, &qword_10027A368);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v41 = sub_1000040A8(&qword_100356C20, &qword_10027A370);
  __chkstk_darwin(v41);
  v44 = &v40 - v5;
  v43 = sub_1000040A8(&qword_100356C28, &qword_10027A378);
  __chkstk_darwin(v43);
  v7 = &v40 - v6;
  v42 = sub_1000040A8(&qword_100356C30, &qword_10027A380);
  __chkstk_darwin(v42);
  v9 = &v40 - v8;
  v10 = *v1;
  if (*v1)
  {
    v11 = *(v10 + 72);
    v12 = *(v10 + 80);
    sub_1000088DC((v10 + 48), v11);
    v13 = *(v12 + 24);

    v13(v46, v11, v12);
    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v14 = sub_1000040A8(&qword_100356C38, &qword_10027A388);
    sub_10003B23C(v1, &v4[*(v14 + 44)]);
    v15 = *(v10 + 112);
    v16 = static UIContentSizeCategory.>= infix(_:_:)();

    v17 = 0.0;
    if ((v16 & 1) == 0)
    {
      v17 = *(*sub_1000088DC(v46, v47) + 72);
    }

    v18 = *(v10 + 112);

    v19 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v19)
    {
      v20 = INFINITY;
    }

    else
    {
      v20 = *(*sub_1000088DC(v46, v47) + 72);
    }

    static Alignment.center.getter();
    if (v17 > v20)
    {
      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v22 = v44;
    sub_10000CF4C(v4, v44, &qword_100356C18, &qword_10027A368);
    v23 = (v22 + *(v41 + 36));
    v24 = v53;
    v23[4] = v52;
    v23[5] = v24;
    v23[6] = v54;
    v25 = v49;
    *v23 = v48;
    v23[1] = v25;
    v26 = v51;
    v23[2] = v50;
    v23[3] = v26;
    v27 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_10000CF4C(v22, v7, &qword_100356C20, &qword_10027A370);
    v36 = &v7[*(v43 + 36)];
    *v36 = v27;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    v37 = static Edge.Set.bottom.getter();
    sub_10000CF4C(v7, v9, &qword_100356C28, &qword_10027A378);
    v38 = &v9[*(v42 + 36)];
    *v38 = v37;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    v38[40] = 1;
    sub_10000CF4C(v9, v45, &qword_100356C30, &qword_10027A380);
    return sub_100008964(v46);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003B23C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v104 = *(v3 - 8);
  v105 = v3;
  __chkstk_darwin(v3);
  v103 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.Leading();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000040A8(&qword_100356C40, &qword_10027A390);
  __chkstk_darwin(v9 - 8);
  v111 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v110 = &v92 - v12;
  v93 = a1;
  v13 = a1[2];
  v14 = a1[3];
  *&v118 = v13;
  *(&v118 + 1) = v14;
  v18 = sub_100031770(v15, v16, v17);

  v102 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.largeTitle.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v24 = *(v6 + 104);
  v100 = enum case for Font.Leading.tight(_:);
  v101 = v6 + 104;
  v99 = v24;
  v24(v8);
  Font.leading(_:)();

  v25 = *(v6 + 8);
  v106 = v8;
  v107 = v5;
  v108 = v6 + 8;
  v98 = v25;
  v25(v8, v5);
  v26 = v93;
  v27 = Text.font(_:)();
  v96 = v29;
  v97 = v28;
  v95 = v30;

  sub_1000317C4(v19, v21, v23 & 1);

  v31 = *v26;
  if (*v26)
  {
    v32 = *(v31 + 72);
    v33 = *(v31 + 80);
    sub_1000088DC((v31 + 48), v32);
    v34 = *(v33 + 24);
    swift_retain_n();
    v34(&v118, v32, v33);
    sub_100008964(&v118);
    v35 = *(v31 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    v36 = *(v31 + 72);
    v37 = *(v31 + 80);
    sub_1000088DC((v31 + 48), v36);
    (*(v37 + 24))(&v118, v36, v37);
    static Alignment.leading.getter();
    sub_100008964(&v118);
    v38 = *(v31 + 112);
    v112 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v133[55] = v138;
    *&v133[71] = v139;
    *&v133[87] = v140;
    *&v133[103] = v141;
    *&v133[7] = v135;
    *&v133[23] = v136;
    v39 = v95 & 1;
    v134 = v95 & 1;
    *&v133[39] = v137;
    v40 = *(v31 + 112);

    v41 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v41)
    {
      v42 = 1.0;
    }

    else
    {
      v42 = 0.5;
    }

    v43 = swift_getKeyPath();
    *(&v120[4] + 9) = *&v133[64];
    *(&v120[5] + 9) = *&v133[80];
    *(&v120[6] + 9) = *&v133[96];
    *(v120 + 9) = *v133;
    *(&v120[1] + 9) = *&v133[16];
    *(&v120[2] + 9) = *&v133[32];
    *&v118 = v27;
    *(&v118 + 1) = v97;
    LOBYTE(v119) = v39;
    *(&v119 + 1) = v96;
    *&v120[0] = KeyPath;
    BYTE8(v120[0]) = 0;
    *(&v120[3] + 9) = *&v133[48];
    *(&v120[7] + 1) = *&v133[111];
    *&v121 = v43;
    *(&v121 + 1) = v42;
    v44 = v103;
    static AccessibilityTraits.isHeader.getter();
    sub_1000040A8(&qword_100356C48, &unk_10027A5D0);
    sub_10003BE30();
    View.accessibility(addTraits:)();
    (*(v104 + 8))(v44, v105);
    v132[8] = v120[6];
    v132[9] = v120[7];
    v132[10] = v121;
    v132[4] = v120[2];
    v132[5] = v120[3];
    v132[6] = v120[4];
    v132[7] = v120[5];
    v132[0] = v118;
    v132[1] = v119;
    v132[2] = v120[0];
    v132[3] = v120[1];
    sub_100008FA0(v132, &qword_100356C48, &unk_10027A5D0);
    v45 = v26[5];
    *&v118 = v26[4];
    *(&v118 + 1) = v45;

    v46 = Text.init<A>(_:)();
    v48 = v47;
    v50 = v49;
    static Font.body.getter();
    v51 = v106;
    v52 = v107;
    v99(v106, v100, v107);
    Font.leading(_:)();

    v98(v51, v52);
    v53 = Text.font(_:)();
    v106 = v54;
    v107 = v53;
    v56 = v55;
    v108 = v57;

    sub_1000317C4(v46, v48, v50 & 1);

    v58 = *(v31 + 72);
    v59 = *(v31 + 80);
    sub_1000088DC((v31 + 48), v58);
    (*(v59 + 24))(&v118, v58, v59);
    sub_100008964(&v118);
    v60 = *(v31 + 112);
    static UIContentSizeCategory.>= infix(_:_:)();

    v105 = swift_getKeyPath();
    static Alignment.center.getter();
    v61 = *(v31 + 72);
    v62 = *(v31 + 80);
    sub_1000088DC((v31 + 48), v61);
    (*(v62 + 24))(&v118, v61, v62);
    static Alignment.leading.getter();
    sub_100008964(&v118);
    v63 = *(v31 + 112);
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v127[55] = v142[3];
    *&v127[71] = v142[4];
    *&v127[87] = v142[5];
    *&v127[103] = v142[6];
    *&v127[7] = v142[0];
    *&v127[23] = v142[1];
    v129 = v56 & 1;
    v64 = v56 & 1;
    LODWORD(v104) = v64;
    *&v127[39] = v142[2];
    v65 = *(v31 + 112);

    v66 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v66)
    {
      v67 = 1.0;
    }

    else
    {
      v67 = 0.5;
    }

    v68 = swift_getKeyPath();
    v69 = static Edge.Set.top.getter();
    v130 = 1;
    v71 = v110;
    v70 = v111;
    sub_100006C20(v110, v111, &qword_100356C40, &qword_10027A390);
    v72 = v70;
    v73 = v109;
    sub_100006C20(v72, v109, &qword_100356C40, &qword_10027A390);
    v74 = sub_1000040A8(&qword_100356C68, &qword_10027A400);
    v75 = (v73 + *(v74 + 48));
    v76 = v106;
    v77 = v107;
    *&v113 = v107;
    *(&v113 + 1) = v106;
    LOBYTE(v114) = v64;
    *(&v114 + 1) = *v128;
    DWORD1(v114) = *&v128[3];
    v78 = v108;
    v79 = v105;
    *(&v114 + 1) = v108;
    *&v115[0] = v105;
    BYTE8(v115[0]) = 0;
    *(&v115[4] + 9) = *&v127[64];
    *(&v115[5] + 9) = *&v127[80];
    *(&v115[6] + 9) = *&v127[96];
    *(v115 + 9) = *v127;
    *(&v115[1] + 9) = *&v127[16];
    *(&v115[2] + 9) = *&v127[32];
    *(&v115[3] + 9) = *&v127[48];
    *(&v115[7] + 1) = *&v127[111];
    *&v116 = v68;
    *(&v116 + 1) = v67;
    LOBYTE(v117[0]) = v69;
    *(v117 + 1) = *v131;
    DWORD1(v117[0]) = *&v131[3];
    *(v117 + 8) = 0u;
    *(&v117[1] + 8) = 0u;
    BYTE8(v117[2]) = 1;
    v80 = v114;
    *v75 = v113;
    v75[1] = v80;
    v81 = v115[0];
    v82 = v115[1];
    v83 = v115[3];
    v75[4] = v115[2];
    v75[5] = v83;
    v75[2] = v81;
    v75[3] = v82;
    v84 = v115[4];
    v85 = v115[5];
    v86 = v115[7];
    v75[8] = v115[6];
    v75[9] = v86;
    v75[6] = v84;
    v75[7] = v85;
    v87 = v116;
    v88 = v117[0];
    v89 = v117[1];
    *(v75 + 201) = *(&v117[1] + 9);
    v75[11] = v88;
    v75[12] = v89;
    v75[10] = v87;
    v90 = v73 + *(v74 + 64);
    *v90 = 0;
    *(v90 + 8) = 1;
    sub_100006C20(&v113, &v118, &qword_100356C70, &qword_10027A408);
    sub_100008FA0(v71, &qword_100356C40, &qword_10027A390);
    *(&v120[4] + 9) = *&v127[64];
    *(&v120[5] + 9) = *&v127[80];
    *(&v120[6] + 9) = *&v127[96];
    *(v120 + 9) = *v127;
    *(&v120[1] + 9) = *&v127[16];
    *(&v120[2] + 9) = *&v127[32];
    *&v118 = v77;
    *(&v118 + 1) = v76;
    LOBYTE(v119) = v104;
    *(&v119 + 1) = *v128;
    DWORD1(v119) = *&v128[3];
    *(&v119 + 1) = v78;
    *&v120[0] = v79;
    BYTE8(v120[0]) = 0;
    *(&v120[3] + 9) = *&v127[48];
    *(&v120[7] + 1) = *&v127[111];
    *&v121 = v68;
    *(&v121 + 1) = v67;
    v122 = v69;
    *v123 = *v131;
    *&v123[3] = *&v131[3];
    v124 = 0u;
    v125 = 0u;
    v126 = 1;
    sub_100008FA0(&v118, &qword_100356C70, &qword_10027A408);
    return sub_100008FA0(v111, &qword_100356C40, &qword_10027A390);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_10003BDC8()
{
  result = qword_100354D40;
  if (!qword_100354D40)
  {
    type metadata accessor for UIMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354D40);
  }

  return result;
}

unint64_t sub_10003BE30()
{
  result = qword_100356C50;
  if (!qword_100356C50)
  {
    sub_100008CF0(&qword_100356C48, &unk_10027A5D0);
    sub_100031A2C();
    sub_100009274(&qword_100356C58, &qword_100356C60, &unk_100281850, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356C50);
  }

  return result;
}

uint64_t sub_10003BF5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_10003BFE0()
{
  result = qword_100356C88;
  if (!qword_100356C88)
  {
    sub_100008CF0(&qword_100356C20, &qword_10027A370);
    sub_100009274(&qword_100356C90, &qword_100356C18, &qword_10027A368, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356C88);
  }

  return result;
}

uint64_t sub_10003C098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = sub_1000040A8(&qword_100356C98, &qword_10027A4E0);
  __chkstk_darwin(v78);
  v79 = &v73 - v4;
  v5 = sub_1000040A8(&qword_100356CA0, &qword_10027A4E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v73 - v7;
  v8 = *(v1 + 16);
  if (v8)
  {
    v9 = v8[9];
    v10 = v8[10];
    sub_1000088DC(v8 + 6, v9);
    (*(v10 + 24))(v92, v9, v10);
    v82 = *(v1 + 48);
    sub_1000040A8(&qword_100356CA8, &qword_10027A4F0);
    State.wrappedValue.getter();
    v11 = *(v1 + 32);
    if (!v11)
    {
      type metadata accessor for QuestionnaireState();
      v71 = &qword_100354D50;
      v72 = type metadata accessor for QuestionnaireState;
      goto LABEL_24;
    }

    v12 = *&v91[0];
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_retain_n();
    v75 = v5;
    v76 = a1;
    v74 = v6;
    if (Strong && (, swift_unknownObjectRelease(), v14 = *(v11 + 344), v15 = *(v14 + 64), v16 = *(v14 + 80), , v16 != 1))
    {
      if (v15 >= v12)
      {
        v17 = v12;
      }

      else
      {
        v17 = v15;
      }
    }

    else if (v12 >= 10)
    {
      v17 = 10;
    }

    else
    {
      v17 = v12;
    }

    v18 = *(v2 + 64);
    v19 = [objc_allocWithZone(NSNumber) initWithInteger:v17];
    v20 = [v18 stringFromNumber:v19];

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      *&v82 = v17;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v24;
    }

    v25 = static VerticalAlignment.center.getter();
    v90 = 1;
    sub_1000089B0(v92, v91);
    v26 = swift_allocObject();
    sub_100008A18(v91, v26 + 16);
    *(v26 + 56) = v17;
    v27 = *(v2 + 48);
    *(v26 + 96) = *(v2 + 32);
    *(v26 + 112) = v27;
    v28 = *(v2 + 64);
    v29 = *(v2 + 16);
    *(v26 + 64) = *v2;
    *(v26 + 80) = v29;
    *(v26 + 128) = v28;
    *(v26 + 136) = v21;
    *(v26 + 144) = v23;
    v30 = swift_allocObject();
    v31 = *(v2 + 48);
    *(v30 + 48) = *(v2 + 32);
    *(v30 + 64) = v31;
    *(v30 + 80) = *(v2 + 64);
    v32 = *(v2 + 16);
    *(v30 + 16) = *v2;
    *(v30 + 32) = v32;
    sub_10003F398(v2, &v82);
    sub_10003F398(v2, &v82);
    type metadata accessor for UIMetrics();
    sub_10003F208(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");

    v33 = EnvironmentObject.init()();
    v35 = v34;
    type metadata accessor for CGSize(0);
    v80 = 0;
    v81 = 0;
    State.init(wrappedValue:)();

    v36 = v83;
    v37 = v82;
    v82 = v25;
    LOBYTE(v83) = v90;
    *(&v83 + 1) = v33;
    *&v84 = v35;
    *(&v84 + 1) = sub_10003F37C;
    *&v85 = v26;
    *(&v85 + 1) = sub_10003F390;
    *&v86[0] = v30;
    *(v86 + 8) = v37;
    *(&v86[1] + 1) = v36;
    swift_beginAccess();
    if (*(*(v11 + 144) + 16))
    {

      sub_1000040A8(&qword_100356CB0, &qword_10027A4F8);
      sub_100009274(&qword_100356CB8, &qword_100356CB0, &qword_10027A4F8, &protocol conformance descriptor for HStack<A>);
      v38 = v79;
      View.navigationBarBackButtonHidden(_:)();
      v91[2] = v84;
      v91[3] = v85;
      v91[4] = v86[0];
      v91[5] = v86[1];
      v91[0] = v82;
      v91[1] = v83;
      sub_100008FA0(v91, &qword_100356CB0, &qword_10027A4F8);
      v39 = swift_allocObject();
      v40 = *(v2 + 48);
      *(v39 + 48) = *(v2 + 32);
      *(v39 + 64) = v40;
      *(v39 + 80) = *(v2 + 64);
      v41 = *(v2 + 16);
      *(v39 + 16) = *v2;
      *(v39 + 32) = v41;
      v42 = v78;
      v43 = &v38[*(v78 + 36)];
      *v43 = sub_10003F3D0;
      v43[1] = v39;
      v43[2] = 0;
      v43[3] = 0;
      sub_10003F3D8(v11 + 48, &v82);
      v44 = v88;
      if (v88)
      {
        v45 = v89;
        v46 = sub_1000088DC(v87, v88);
        v47 = *(v44 - 8);
        v48 = __chkstk_darwin(v46);
        v50 = &v73 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v50, v48);
        sub_10003F398(v2, &v80);
        sub_10003F434(&v82);
        v51 = (*(v45 + 24))(v44, v45);

        (*(v47 + 8))(v50, v44);
        v42 = v78;
      }

      else
      {
        sub_10003F398(v2, &v80);

        sub_10003F434(&v82);
        v51 = 0;
      }

      v80 = v51;
      LOBYTE(v81) = v44 == 0;
      v52 = swift_allocObject();
      v53 = *(v2 + 48);
      *(v52 + 48) = *(v2 + 32);
      *(v52 + 64) = v53;
      *(v52 + 80) = *(v2 + 64);
      v54 = *(v2 + 16);
      *(v52 + 16) = *v2;
      *(v52 + 32) = v54;
      sub_10003F398(v2, &v82);
      v55 = sub_1000040A8(&qword_100356CC0, &qword_10027A500);
      v56 = sub_10003F490();
      v57 = sub_10003F58C();
      v58 = v77;
      v59 = v79;
      View.onChange<A>(of:initial:_:)();

      sub_10003F608(v59);
      v60 = *(v11 + 144);
      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = *(v60 + v61 + 31);

        LOBYTE(v80) = v62;
        v63 = swift_allocObject();
        v64 = *(v2 + 48);
        *(v63 + 48) = *(v2 + 32);
        *(v63 + 64) = v64;
        *(v63 + 80) = *(v2 + 64);
        v65 = *(v2 + 16);
        *(v63 + 16) = *v2;
        *(v63 + 32) = v65;
        sub_10003F398(v2, &v82);
        *&v82 = v42;
        *(&v82 + 1) = v55;
        *&v83 = v56;
        *(&v83 + 1) = v57;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        sub_10003F67C(OpaqueTypeConformance2, v67, v68);
        v69 = v75;
        View.onChange<A>(of:initial:_:)();

        (*(v74 + 8))(v58, v69);
        return sub_100008964(v92);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  type metadata accessor for UIMetrics();
  v71 = &qword_100354D40;
  v72 = type metadata accessor for UIMetrics;
LABEL_24:
  sub_10003F208(v71, v72, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

double sub_10003C93C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = static HorizontalAlignment.center.getter();
  v12 = 0;
  sub_10003CA80(v2);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_100006C20(__dst, &v9, &qword_100356CE0, &qword_10027A508);
  sub_100008FA0(v14, &qword_100356CE0, &qword_10027A508);
  memcpy(&v11[7], __dst, 0x348uLL);
  v6 = v12;
  v7 = static Edge.Set.all.getter();
  *v4 = v5;
  *(v4 + 8) = 0;
  *(v4 + 16) = v6;
  memcpy((v4 + 17), v11, 0x34FuLL);
  *(v4 + 864) = v7;
  *(v4 + 872) = 0;
  result = 38.0;
  *(v4 + 880) = xmmword_10027A410;
  *(v4 + 896) = 0x4043000000000000;
  *(v4 + 904) = 0;
  return result;
}

uint64_t sub_10003CA80(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for AccessibilityTraits();
  v141 = *(v13 - 8);
  __chkstk_darwin(v13);
  v140 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000040A8(&qword_100356CE8, &unk_10027A510);
  __chkstk_darwin(v15 - 8);
  v139 = &v130 - v16;
  v166 = type metadata accessor for Font.Leading();
  v168 = *(v166 - 8);
  __chkstk_darwin(v166);
  v165 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = static Alignment.center.getter();
  v20 = v19;
  v137 = v4;
  v138 = v2;
  sub_10003DBB0(v8, v6, v4, v2, v218);
  memcpy(v253, v218, sizeof(v253));
  memcpy(v254, v218, sizeof(v254));
  sub_100006C20(v253, v170, &qword_100356CF0, &unk_10027C1B0);
  sub_100008FA0(v254, &qword_100356CF0, &unk_10027C1B0);
  memcpy(v258, v253, sizeof(v258));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = *(v6 + 16);
  if (v21)
  {
    v22 = *(v21 + 112);
    swift_retain_n();
    v23 = v22;
    v167 = UIContentSizeCategoryAccessibilityExtraLarge;
    v24 = static UIContentSizeCategory.>= infix(_:_:)();

    v150 = v21;
    v163 = v20;
    v164 = v18;
    v142 = v13;
    v143 = v12;
    if (v24)
    {
      v161 = 0x4030000000000000;
      v162 = 0;
      v159 = 0x4030000000000000;
      v160 = 0;
    }

    else
    {
      v25 = sub_1000088DC(v10, v10[3]);
      v26 = *v25;
      v27 = *(*v25 + 104);
      v161 = *(*v25 + 96);
      v162 = v27;
      v29 = *(v26 + 112);
      v28 = *(v26 + 120);
      v159 = v29;
      v160 = v28;
    }

    v158 = static Edge.Set.all.getter();
    memcpy(v238, v258, 0x148uLL);
    v235 = v255;
    v236 = v256;
    v237 = v257;
    v238[328] = 0;
    v136 = objc_opt_self();
    v30 = [v136 mainBundle];
    v259._object = 0x80000001002977C0;
    v31._object = 0x80000001002977A0;
    v259._countAndFlagsBits = 0xD000000000000069;
    v31._countAndFlagsBits = 0xD000000000000011;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v259);

    *v218 = v33;
    v145 = sub_100031770(v34, v35, v36);
    v37 = Text.init<A>(_:)();
    v39 = v38;
    v41 = v40;
    static Font.largeTitle.getter();
    static Font.Weight.bold.getter();
    Font.weight(_:)();

    v42 = v168;
    v43 = *(v168 + 104);
    v45 = v165;
    v44 = v166;
    v149 = enum case for Font.Leading.tight(_:);
    v147 = v43;
    v148 = v168 + 104;
    v43(v165);
    Font.leading(_:)();

    v46 = *(v42 + 8);
    v168 = v42 + 8;
    v146 = v46;
    v46(v45, v44);
    v47 = Text.font(_:)();
    v49 = v48;
    LOBYTE(v42) = v50;

    sub_1000317C4(v37, v39, v41 & 1);

    static Color.white.getter();
    v51 = Text.foregroundColor(_:)();
    v155 = v52;
    v156 = v51;
    v54 = v53;
    v157 = v55;

    sub_1000317C4(v47, v49, v42 & 1);

    v56 = v150;
    v57 = *(v150 + 112);

    v144 = static UIContentSizeCategory.>= infix(_:_:)();

    KeyPath = swift_getKeyPath();
    v58 = *(v56 + 112);

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
    *&v229[55] = v242;
    *&v229[71] = v243;
    *&v229[87] = v244;
    *&v229[103] = v245;
    *&v229[7] = v239;
    *&v229[23] = v240;
    v153 = v54 & 1;
    v231 = v54 & 1;
    *&v229[39] = v241;
    v59 = *(v56 + 112);

    v131 = static UIContentSizeCategory.>= infix(_:_:)();

    v152 = swift_getKeyPath();
    v151 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v232 = 0;
    v68 = [v136 mainBundle];
    v260._object = 0x8000000100297830;
    v69._countAndFlagsBits = 0xD000000000000025;
    v69._object = 0x8000000100296E60;
    v260._countAndFlagsBits = 0xD000000000000076;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    v71 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v260);

    *v218 = v71;
    v72 = Text.init<A>(_:)();
    v74 = v73;
    v76 = v75;
    static Font.title2.getter();
    v78 = v165;
    v77 = v166;
    v147(v165, v149, v166);
    Font.leading(_:)();

    v146(v78, v77);
    v79 = Text.font(_:)();
    v81 = v80;
    LOBYTE(v78) = v82;

    v83 = v76 & 1;
    v84 = v150;
    sub_1000317C4(v72, v74, v83);

    static Color.white.getter();
    v85 = Text.foregroundColor(_:)();
    v134 = v86;
    v135 = v85;
    v88 = v87;
    v136 = v89;

    sub_1000317C4(v79, v81, v78 & 1);

    v90 = *(v84 + 112);

    v91 = static UIContentSizeCategory.>= infix(_:_:)();

    v133 = swift_getKeyPath();
    v92 = *(v84 + 112);

    static Alignment.center.getter();
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      static Alignment.center.getter();
      if (static Alignment.== infix(_:_:)())
      {
        static Alignment.leading.getter();
      }
    }

    v132 = (v91 & 1) == 0;
    v93 = 0.5;
    if (v131)
    {
      v94 = 1.0;
    }

    else
    {
      v94 = 0.5;
    }

    v144 = (v144 & 1) == 0;
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v226[55] = v249;
    *&v226[71] = v250;
    *&v226[87] = v251;
    *&v226[103] = v252;
    *&v226[7] = v246;
    *&v226[23] = v247;
    v131 = v88 & 1;
    v228 = v88 & 1;
    *&v226[39] = v248;
    v95 = *(v84 + 112);

    v96 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v96)
    {
      v93 = 1.0;
    }

    v167 = swift_getKeyPath();
    v218[0] = v137;
    v218[1] = v138;

    v97 = Text.init<A>(_:)();
    v99 = v98;
    v101 = v100;
    v218[0] = static Color.red.getter();
    v102 = Text.foregroundStyle<A>(_:)();
    v104 = v103;
    v106 = v105;
    v150 = v107;
    sub_1000317C4(v97, v99, v101 & 1);

    static Font.title.getter();
    v109 = v165;
    v108 = v166;
    v147(v165, v149, v166);
    Font.leading(_:)();

    v146(v109, v108);
    Font.monospacedDigit()();

    v110 = Text.font(_:)();
    v112 = v111;
    v114 = v113;

    sub_1000317C4(v102, v104, v106 & 1);

    static Font.Weight.semibold.getter();
    v115 = Text.fontWeight(_:)();
    v117 = v116;
    LOBYTE(v97) = v118;
    v120 = v119;
    sub_1000317C4(v110, v112, v114 & 1);

    v121 = swift_getKeyPath();
    v218[0] = v115;
    v218[1] = v117;
    LOBYTE(v218[2]) = v97 & 1;
    v218[3] = v120;
    v218[4] = v121;
    v218[5] = 1;
    LOBYTE(v218[6]) = 0;
    v122 = v140;
    static AccessibilityTraits.updatesFrequently.getter();
    sub_1000040A8(&qword_100356CF8, &unk_10027A5B0);
    sub_10003F7B0();
    v123 = v139;
    View.accessibilityAddTraits(_:)();
    (*(v141 + 8))(v122, v142);
    sub_1000317C4(v115, v117, v97 & 1);

    sub_100008FA0(v123, &qword_100356CE8, &unk_10027A510);
    v170[0] = v164;
    v170[1] = v163;
    memcpy(&v170[2], v238, 0x148uLL);
    *&v170[43] = v235;
    *&v170[45] = v236;
    *&v170[47] = v237;
    LOBYTE(v170[49]) = v158;
    *(&v170[49] + 1) = *v234;
    HIDWORD(v170[49]) = *&v234[3];
    v170[50] = v161;
    v170[51] = v162;
    v170[52] = v159;
    v170[53] = v160;
    LOBYTE(v170[54]) = 0;
    memcpy(v169, v170, 0x1B1uLL);
    *&v171 = v156;
    *(&v171 + 1) = v155;
    LOBYTE(v172) = v153;
    *(&v172 + 1) = *v230;
    DWORD1(v172) = *&v230[3];
    *(&v172 + 1) = v157;
    *&v173[0] = KeyPath;
    BYTE8(v173[0]) = v144;
    *(&v173[4] + 9) = *&v229[64];
    *(&v173[5] + 9) = *&v229[80];
    *(&v173[6] + 9) = *&v229[96];
    *(v173 + 9) = *v229;
    *(&v173[1] + 9) = *&v229[16];
    *(&v173[2] + 9) = *&v229[32];
    *(&v173[3] + 9) = *&v229[48];
    *(&v173[7] + 1) = *&v229[111];
    *&v174 = v152;
    *(&v174 + 1) = v94;
    LOBYTE(v175) = v151;
    DWORD1(v175) = *&v233[3];
    *(&v175 + 1) = *v233;
    *(&v175 + 1) = v61;
    *&v176[0] = v63;
    *(&v176[0] + 1) = v65;
    *&v176[1] = v67;
    BYTE8(v176[1]) = 0;
    *&v169[67] = v173[4];
    *&v169[69] = v173[5];
    *&v169[71] = v173[6];
    *&v169[73] = v173[7];
    *&v169[59] = v173[0];
    *&v169[61] = v173[1];
    *&v169[63] = v173[2];
    *&v169[65] = v173[3];
    *&v169[55] = v171;
    *&v169[57] = v172;
    *(&v169[80] + 1) = *(v176 + 9);
    *&v169[77] = v175;
    *&v169[79] = v176[0];
    *&v169[75] = v174;
    v125 = v134;
    v124 = v135;
    *&v177 = v135;
    *(&v177 + 1) = v134;
    LOBYTE(v122) = v131;
    LOBYTE(v123) = v132;
    LOBYTE(v178) = v131;
    *(&v178 + 1) = *v227;
    DWORD1(v178) = *&v227[3];
    v126 = v136;
    *(&v178 + 1) = v136;
    v127 = v133;
    *&v179[0] = v133;
    BYTE8(v179[0]) = v132;
    *(&v179[4] + 9) = *&v226[64];
    *(&v179[5] + 9) = *&v226[80];
    *(&v179[6] + 9) = *&v226[96];
    *(v179 + 9) = *v226;
    *(&v179[1] + 9) = *&v226[16];
    *(&v179[2] + 9) = *&v226[32];
    *(&v179[3] + 9) = *&v226[48];
    *(&v179[7] + 1) = *&v226[111];
    v128 = v167;
    *&v180 = v167;
    *(&v180 + 1) = v93;
    *&v169[99] = v179[6];
    *&v169[101] = v179[7];
    *&v169[91] = v179[2];
    *&v169[93] = v179[3];
    *&v169[95] = v179[4];
    *&v169[97] = v179[5];
    *&v169[83] = v177;
    *&v169[85] = v178;
    *&v169[87] = v179[0];
    *&v169[89] = v179[1];
    *&v169[103] = v180;
    memcpy(v143, v169, 0x348uLL);
    v191 = *&v226[64];
    v192 = *&v226[80];
    *v193 = *&v226[96];
    v187 = *v226;
    v188 = *&v226[16];
    v189 = *&v226[32];
    v181[0] = v124;
    v181[1] = v125;
    v182 = v122;
    *v183 = *v227;
    *&v183[3] = *&v227[3];
    v184 = v126;
    v185 = v127;
    v186 = v123;
    v190 = *&v226[48];
    *&v193[15] = *&v226[111];
    v194 = v128;
    v195 = v93;
    sub_100006C20(v170, v218, &qword_100356D08, &unk_10027A5C0);
    sub_100006C20(&v171, v218, &qword_100356C70, &qword_10027A408);
    sub_100006C20(&v177, v218, &qword_100356C48, &unk_10027A5D0);
    sub_100008FA0(v181, &qword_100356C48, &unk_10027A5D0);
    v206 = *&v229[64];
    v207 = *&v229[80];
    *v208 = *&v229[96];
    v202 = *v229;
    v203 = *&v229[16];
    v204 = *&v229[32];
    v196[0] = v156;
    v196[1] = v155;
    v197 = v153;
    *v198 = *v230;
    *&v198[3] = *&v230[3];
    v199 = v157;
    v200 = KeyPath;
    v201 = v144;
    v205 = *&v229[48];
    *&v208[15] = *&v229[111];
    v209 = v152;
    v210 = v94;
    v211 = v151;
    *&v212[3] = *&v233[3];
    *v212 = *v233;
    v213 = v61;
    v214 = v63;
    v215 = v65;
    v216 = v67;
    v217 = 0;
    sub_100008FA0(v196, &qword_100356C70, &qword_10027A408);
    v218[0] = v164;
    v218[1] = v163;
    memcpy(&v218[2], v238, 0x148uLL);
    *&v218[43] = v235;
    *&v218[45] = v236;
    *&v218[47] = v237;
    v219 = v158;
    *v220 = *v234;
    *&v220[3] = *&v234[3];
    v221 = v161;
    v222 = v162;
    v223 = v159;
    v224 = v160;
    v225 = 0;
    return sub_100008FA0(v218, &qword_100356D08, &unk_10027A5C0);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003F208(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10003DBB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v64 = a5;
  v9 = sub_1000040A8(&qword_100354FC0, &qword_10027C1C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v12 = v92;
  v13 = v93;
  v63 = v94;
  v14 = v95;
  v62 = v96;
  v15 = v97;
  v16 = [objc_opt_self() systemGray5Color];
  v61 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  if (a1 < 0)
  {
    sub_10003F870(v105);
    goto LABEL_12;
  }

  if (a1)
  {
    v17 = a1 - 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a2 + 32);
  if (v18)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {

      swift_unknownObjectRelease();
      v20 = *(v18 + 344);
      v21 = *(v20 + 64);
      v22 = *(v20 + 80);

      v23 = 10;
      if (!v22)
      {
        v23 = v21;
      }

      v19 = __OFSUB__(v23, 1);
      v24 = v23 - 1;
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v24 = 9;
      if (!v19)
      {
LABEL_10:
        v25 = fmin(v17 / v24, 0.99);
        StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
        *&v105[0] = 0x3FF921FB54442D18;
        Angle.animatableData.getter();
        Angle.animatableData.setter();
        v26 = *&v105[0];
        static UnitPoint.center.getter();
        v28 = v27;
        v30 = v29;
        *(&v58 + 1) = static Color.white.getter();
        *&v58 = swift_getKeyPath();
        *&v105[0] = a3;
        *(&v105[0] + 1) = a4;
        sub_100031770(v58, v31, v32);

        v33 = Text.init<A>(_:)();
        v59 = v13;
        v35 = v34;
        v37 = v36;
        v38 = type metadata accessor for Font.Design();
        (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
        static Font.system(size:weight:design:)();
        sub_100008FA0(v11, &qword_100354FC0, &qword_10027C1C0);
        Font.bold()();

        v39 = Text.font(_:)();
        v41 = v40;
        v43 = v42;

        sub_1000317C4(v33, v35, v37 & 1);

        static Color.white.getter();
        v56 = Text.foregroundColor(_:)();
        v57 = v44;
        v46 = v45;
        v48 = v47;

        sub_1000317C4(v39, v41, v43 & 1);

        v49 = swift_getKeyPath();
        static Alignment.center.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        v88 = v48 & 1;
        *&v86[55] = v101;
        *&v86[71] = v102;
        *&v86[87] = v103;
        *&v86[103] = v104;
        *&v86[7] = v98;
        *&v86[23] = v99;
        *&v86[39] = v100;
        *&v73[0] = 0;
        *(v73 + 1) = v25;
        *&v74 = v91;
        v73[1] = v89;
        v73[2] = v90;
        *(&v74 + 1) = v26;
        *&v75 = v28;
        *(&v75 + 1) = v30;
        v50 = v58;
        v76 = v58;
        v72[0] = v73[0];
        v72[1] = v89;
        v72[3] = v74;
        v72[4] = v75;
        v72[5] = v58;
        v72[2] = v90;
        *&v65 = v56;
        *(&v65 + 1) = v46;
        LOBYTE(v66) = v48 & 1;
        DWORD1(v66) = *&v87[3];
        *(&v66 + 1) = *v87;
        *(&v66 + 1) = v57;
        *&v67[0] = v49;
        BYTE8(v67[0]) = 1;
        *(&v67[3] + 9) = *&v86[48];
        *(&v67[2] + 9) = *&v86[32];
        *(&v67[1] + 9) = *&v86[16];
        *(v67 + 9) = *v86;
        *(&v67[7] + 1) = *(&v104 + 1);
        *(&v67[6] + 9) = *&v86[96];
        *(&v67[5] + 9) = *&v86[80];
        *(&v67[4] + 9) = *&v86[64];
        v68 = sub_10003E3A0;
        v69 = 0;
        v72[7] = v66;
        v72[6] = v65;
        v72[11] = v67[3];
        v72[10] = v67[2];
        v72[8] = v67[0];
        v72[9] = v67[1];
        v72[16] = sub_10003E3A0;
        v72[15] = v67[7];
        v72[14] = v67[6];
        v72[12] = v67[4];
        v72[13] = v67[5];
        v71[0] = v56;
        v71[1] = v46;
        LOBYTE(v71[2]) = v48 & 1;
        *(&v71[2] + 1) = *v87;
        HIDWORD(v71[2]) = *&v87[3];
        v71[3] = v57;
        v71[4] = v49;
        v13 = v59;
        LOBYTE(v71[5]) = 1;
        *(&v71[13] + 1) = *&v86[64];
        *(&v71[15] + 1) = *&v86[80];
        *(&v71[17] + 1) = *&v86[96];
        *(&v71[5] + 1) = *v86;
        *(&v71[7] + 1) = *&v86[16];
        *(&v71[9] + 1) = *&v86[32];
        *(&v71[11] + 1) = *&v86[48];
        v71[19] = *(&v104 + 1);
        v71[20] = sub_10003E3A0;
        v71[21] = 0;
        sub_100006C20(v73, v105, &qword_1003550B8, &qword_10027A610);
        sub_100006C20(&v65, v105, &qword_100356D10, &unk_10027C230);
        sub_100008FA0(v71, &qword_100356D10, &unk_10027C230);
        *&v77 = 0;
        *(&v77 + 1) = v25;
        v78 = v89;
        v79 = v90;
        v80 = v91;
        v81 = v26;
        v82 = v28;
        v83 = v30;
        v84 = v50;
        sub_100008FA0(&v77, &qword_1003550B8, &qword_10027A610);
        memcpy(v85, v72, 0x110uLL);
        ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter();
        memcpy(v105, v85, 0x110uLL);
LABEL_12:
        memcpy(v85, v105, 0x110uLL);
        *&v77 = v12;
        *(&v77 + 1) = __PAIR64__(v63, v13);
        v51 = v63;
        *&v78 = v14;
        v53 = v61;
        v52 = v62;
        *(&v78 + 1) = v62;
        *&v79 = v15;
        v54 = KeyPath;
        *(&v79 + 1) = KeyPath;
        v80 = v61;
        *&v70[3] = v61;
        v70[0] = v77;
        v70[1] = v78;
        v70[2] = v79;
        memcpy(v71, v105, sizeof(v71));
        memcpy(&v70[3] + 8, v105, 0x110uLL);
        memcpy(v64, v70, 0x148uLL);
        sub_100006C20(&v77, &v65, &qword_1003550B0, &unk_100277FE0);
        sub_100006C20(v71, &v65, &qword_100356D18, &unk_10027C240);
        sub_100008FA0(v85, &qword_100356D18, &unk_10027C240);
        *&v65 = v12;
        *(&v65 + 1) = __PAIR64__(v51, v13);
        *&v66 = v14;
        *(&v66 + 1) = v52;
        *&v67[0] = v15;
        *(&v67[0] + 1) = v54;
        *&v67[1] = v53;
        return sub_100008FA0(&v65, &qword_1003550B0, &unk_100277FE0);
      }
    }

    __break(1u);
  }

  type metadata accessor for QuestionnaireState();
  sub_10003F208(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10003E3C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_10003F398(a1, v9);
  type metadata accessor for UIMetrics();
  sub_10003F208(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  result = EnvironmentObject.init()();
  *a2 = result;
  a2[1] = v8;
  a2[2] = sub_10003F774;
  a2[3] = v4;
  return result;
}

void sub_10003E49C()
{
  v1 = v0;
  v2 = v0[4];
  if (!v2)
  {
    type metadata accessor for QuestionnaireState();
    v28 = &qword_100354D50;
    v29 = type metadata accessor for QuestionnaireState;
    v30 = "\ts\n";
    goto LABEL_24;
  }

  swift_beginAccess();
  v3 = *(v2 + 144);
  v4 = *(v3 + 16);
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v3 + v4 + 31) != 3)
  {
    v10 = qword_100353AA8;

    if (v10 == -1)
    {
LABEL_9:
      v11 = type metadata accessor for Logger();
      sub_10000F53C(v11, qword_100381E48);
      sub_10003F398(v1, v32);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      sub_10003F6D0(v1);
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_16;
      }

      v1 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v1 = 136446466;
      v14 = sub_1000B9A7C();
      v16 = sub_10017C9E8(v14, v15, &v31);

      *(v1 + 4) = v16;
      *(v1 + 12) = 2082;
      swift_beginAccess();
      if (*(*(v2 + 144) + 16))
      {

        v17 = String.init<A>(describing:)();
        v19 = sub_10017C9E8(v17, v18, &v31);

        *(v1 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s] onDontSendTapped on %{public}s stage", v1, 0x16u);
        swift_arrayDestroy();
LABEL_15:

        return;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    swift_once();
    goto LABEL_9;
  }

  v5 = *(v2 + 32);
  v6 = __CFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 32) = v7;
  swift_retain_n();
  v8 = sub_1000BD8A4();
  sub_10021775C(v9);

  if (v8)
  {
    if (!*v0)
    {
      while (1)
      {
        type metadata accessor for AppEvents();
        v28 = &qword_100354D48;
        v29 = type metadata accessor for AppEvents;
        v30 = "ɼ\t";
LABEL_24:
        sub_10003F208(v28, v29, v30);
        EnvironmentObject.error()();
        __break(1u);
      }
    }

    LOBYTE(v32[0]) = 1;
    v32[1] = v2;
    v33 = 3;
    v35 = 0;
    v36 = 0;
    v34 = 0;

    PassthroughSubject.send(_:)();

    goto LABEL_17;
  }

  if (qword_100353AA8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000F53C(v20, qword_100381E48);
  sub_10003F398(v1, v32);
  v12 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  sub_10003F6D0(v1);
  if (os_log_type_enabled(v12, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32[0] = v23;
    *v22 = 136446210;
    v24 = sub_1000B9A7C();
    v26 = v25;

    v27 = sub_10017C9E8(v24, v26, v32);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v12, v21, "[%{public}s] onDontSendTapped - failed to go back", v22, 0xCu);
    sub_100008964(v23);
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
}

uint64_t sub_10003E900(uint64_t *a1)
{
  if (!*a1)
  {
    type metadata accessor for AppEvents();
    sub_10003F208(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_8;
  }

  v2 = a1[4];
  if (!v2)
  {
LABEL_8:
    type metadata accessor for QuestionnaireState();
    sub_10003F208(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");

    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  LOBYTE(v13) = 0;
  *(&v13 + 1) = v2;
  v14 = 3;
  v16 = 0;
  v17 = 0;
  v15 = 0;

  PassthroughSubject.send(_:)();

  LOBYTE(v13) = 2;
  PassthroughSubject.send(_:)();

  swift_beginAccess();
  sub_10003F3D8(v2 + 48, &v13);
  v3 = v19;
  if (v19)
  {
    v4 = v20;
    v5 = sub_1000088DC(v18, v19);
    v6 = *(v3 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    sub_10003F434(&v13);
    v10 = (*(v4 + 24))(v3, v4);

    (*(v6 + 8))(v9, v3);
  }

  else
  {

    sub_10003F434(&v13);
    v13 = *(a1 + 3);
    sub_1000040A8(&qword_100356CA8, &qword_10027A4F0);
    State.wrappedValue.getter();
    v10 = v12;
  }

  v13 = *(a1 + 3);
  v12 = v10;
  sub_1000040A8(&qword_100356CA8, &qword_10027A4F0);
  return State.wrappedValue.setter();
}

void sub_10003EC24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381E48);
  sub_10003F398(a3, &v19);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_10003F6D0(a3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v9 = 136446466;
    if (!*(a3 + 32))
    {
      type metadata accessor for QuestionnaireState();
      sub_10003F208(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
      EnvironmentObject.error()();
      __break(1u);
      return;
    }

    v10 = sub_1000B9A7C();
    v12 = v11;

    v13 = sub_10017C9E8(v10, v12, v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v19 = v4;
    v20 = v5;
    sub_1000040A8(&qword_100356CC0, &qword_10027A500);
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, v18);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Auto send view: %s seconds left", v9, 0x16u);
    swift_arrayDestroy();
  }

  if ((v5 & 1) == 0)
  {
    v17 = static Animation.linear(duration:)();
    __chkstk_darwin(v17);
    withAnimation<A>(_:_:)();
  }
}

void sub_10003EED8(uint64_t a1, _BYTE *a2, void *a3)
{
  if (*a2 == 4)
  {
    if (*a3)
    {
      if (a3[4])
      {

        PassthroughSubject.send(_:)();

        return;
      }
    }

    else
    {
      type metadata accessor for AppEvents();
      sub_10003F208(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
      EnvironmentObject.error()();
      __break(1u);
    }

    type metadata accessor for QuestionnaireState();
    sub_10003F208(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");

    EnvironmentObject.error()();
    __break(1u);
  }
}

id sub_10003F070@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_10003F208(&qword_100354D48, type metadata accessor for AppEvents, "ɼ\t");
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for UIMetrics();
  sub_10003F208(&qword_100354D40, type metadata accessor for UIMetrics, "\ts\n");
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for QuestionnaireState();
  sub_10003F208(&qword_100354D50, type metadata accessor for QuestionnaireState, "\ts\n");
  v8 = EnvironmentObject.init()();
  v10 = v9;
  State.init(wrappedValue:)();
  v11 = [objc_allocWithZone(NSNumberFormatter) init];
  result = [v11 setNumberStyle:0];
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v10;
  a1[6] = v13;
  a1[7] = v14;
  a1[8] = v11;
  return result;
}

uint64_t sub_10003F208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003F250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003F298(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_10003F314()
{
  sub_100008964((v0 + 16));

  return _swift_deallocObject(v0, 152, 7);
}

unint64_t sub_10003F490()
{
  result = qword_100356CC8;
  if (!qword_100356CC8)
  {
    sub_100008CF0(&qword_100356C98, &qword_10027A4E0);
    sub_100008CF0(&qword_100356CB0, &qword_10027A4F8);
    sub_100009274(&qword_100356CB8, &qword_100356CB0, &qword_10027A4F8, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356CC8);
  }

  return result;
}

unint64_t sub_10003F58C()
{
  result = qword_100356CD0;
  if (!qword_100356CD0)
  {
    sub_100008CF0(&qword_100356CC0, &qword_10027A500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356CD0);
  }

  return result;
}

uint64_t sub_10003F608(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100356C98, &qword_10027A4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003F67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100356CD8;
  if (!qword_100356CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356CD8);
  }

  return result;
}

uint64_t sub_10003F71C()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10003F7B0()
{
  result = qword_100356D00;
  if (!qword_100356D00)
  {
    sub_100008CF0(&qword_100356CF8, &unk_10027A5B0);
    sub_100009274(&qword_100356828, &qword_100356830, &qword_100289190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356D00);
  }

  return result;
}

double sub_10003F870(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10003F89C()
{
  sub_100008CF0(&qword_100356CA0, &qword_10027A4E8);
  sub_100008CF0(&qword_100356C98, &qword_10027A4E0);
  sub_100008CF0(&qword_100356CC0, &qword_10027A500);
  sub_10003F490();
  sub_10003F58C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10003F67C(OpaqueTypeConformance2, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

void *sub_10003F9E4()
{
  sub_10004242C();

  sub_100008FA0(v0 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_itemIdToScrollTo, &qword_100355320, &qword_1002782C0);

  sub_1000452CC(*(v0 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight), *(v0 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 8), *(v0 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 16), *(v0 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 24));
  sub_10002B558(v0 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_progressDelegate);

  return v0;
}

uint64_t sub_10003FA98()
{
  sub_10003F9E4();

  return swift_deallocClassInstance();
}

void sub_10003FAF0(char a1)
{
  *(v1 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_connected) = a1;
  if (qword_100353A58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381D58);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v4, "onConnectionStateChange: connected = %{BOOL,public}d", v5, 8u);
  }
}

void sub_10003FC00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    if (qword_100353A58 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F53C(v10, qword_100381D58);

    v25 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446210;
      v27 = *(v1 + 16);
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, aBlock);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v25, v11, "Message simulation: transcriptState is not .inactive (%{public}s, ignoring onReadyToStartSimulation", v12, 0xCu);
      sub_100008964(v13);
    }

    else
    {
      v24 = v25;
    }
  }

  else
  {
    *(v0 + 16) = 1;
    if (qword_100353A58 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000F53C(v17, qword_100381D58);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Message simulation: clients are ready to start", v20, 2u);
    }

    sub_10000F574();
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100045750;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100327F88;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100045708(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_100035010();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1000400E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000444AC();
  }

  return result;
}

void sub_10004013C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v189 = a4;
  v187 = a3;
  v190 = a2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v177 = v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  v13 = *(v186 - 8);
  __chkstk_darwin(v186);
  v15 = v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000040A8(&qword_100357180, &unk_10027A8A0);
  __chkstk_darwin(v16 - 8);
  v181 = v165 - v17;
  v180 = type metadata accessor for String.Encoding();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000040A8(&qword_100355320, &qword_1002782C0);
  __chkstk_darwin(v19 - 8);
  v182 = (v165 - v20);
  p_ivar_base_size = type metadata accessor for UUID();
  v188 = *(p_ivar_base_size - 8);
  __chkstk_darwin(p_ivar_base_size);
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v183 = v165 - v24;
  __chkstk_darwin(v25);
  if (*(v4 + 16) != 1)
  {
    if (qword_100353A58 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000F53C(v40, qword_100381D58);
    v193 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v193, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v193, v41, "Ignoring new message in not .inProgress state", v42, 2u);
    }

    v43 = v193;

    return;
  }

  v174 = v165 - v26;
  v165[0] = v28;
  v167 = v27;
  v168 = v11;
  v169 = v10;
  v185 = a1;
  v170 = v15;
  v175 = v13;
  v171 = v9;
  v172 = v7;
  v173 = v6;
  swift_beginAccess();
  v176 = v4;
  v29 = *(v4 + 32);
  v30 = (v29 >> 62);
  v31 = &OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender;
  v184 = p_ivar_base_size;
  v32 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 >> 62)
  {
    goto LABEL_90;
  }

  v192 = v29 & 0xFFFFFFFFFFFFFF8;
  v33 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_35;
  }

  v34 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = v34;
  while (2)
  {
    v36 = v192;
    if (v29 < 0)
    {
      v36 = v29;
    }

    v193 = v36;
    v191 = (v29 + 32);

    while (1)
    {
      p_ivar_base_size = v33 - 1;
      if (__OFSUB__(v33, 1))
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_34:

        p_ivar_base_size = v184;
        goto LABEL_35;
      }

      if (v30 && v35 == v33)
      {
        _CocoaArrayWrapper.endIndex.getter();
      }

      if (p_ivar_base_size < 0 || p_ivar_base_size >= v34)
      {
        goto LABEL_86;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

      v32 = *(v192 + 16);
      if (p_ivar_base_size >= v32)
      {
        break;
      }

      v38 = *(v191 + p_ivar_base_size);

LABEL_21:
      if ((*(v38 + *v31) & 1) == 0)
      {
        v39 = OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status;
        if (*(v38 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) && *(v38 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) != 1)
        {

          goto LABEL_34;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v37)
        {

          p_ivar_base_size = v184;
          v31 = &OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender;
          goto LABEL_35;
        }

        *(v38 + v39) = 2;
        v31 = &OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender;
      }

      v33 = p_ivar_base_size;
      if (!p_ivar_base_size)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v192 = v32;
    v164 = _CocoaArrayWrapper.endIndex.getter();
    if (v164)
    {
      v33 = v164;
      v35 = _CocoaArrayWrapper.endIndex.getter();
      v34 = _CocoaArrayWrapper.endIndex.getter();
      continue;
    }

    break;
  }

LABEL_35:
  v44 = v188;
  v45 = v188 + 16;
  v46 = *(v188 + 16);
  v47 = v174;
  v48 = v185;
  v46(v174, v185, p_ivar_base_size);
  type metadata accessor for TryOutTranscriptMessageItem(0);
  v49 = swift_allocObject();
  v50 = v49 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content;
  *v50 = 0;
  *(v50 + 8) = 0;
  v51 = v187;
  *(v50 + 16) = v190;
  *(v50 + 24) = v51;
  *(v50 + 32) = v189 & 1;
  *(v49 + *v31) = 0;
  *(v49 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_hasPairedEducationalReply) = 0;
  *(v49 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) = 2;
  *(v49 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) = 1;
  *(v49 + 16) = 2;
  v52 = *(v44 + 32);
  v174 = (v44 + 32);
  v166 = v52;
  v52((v49 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id), v47, p_ivar_base_size);
  *(v49 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) = 0;
  v53 = v176;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v53 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v53 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v51 = v187;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v54 = v182;
  v46(v182, v49 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id, p_ivar_base_size);
  (*(v44 + 56))(v54, 0, 1, p_ivar_base_size);
  v55 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_itemIdToScrollTo;
  swift_beginAccess();
  sub_10000F630(v54, v53 + v55);
  swift_endAccess();
  sub_100044600();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10026B98C();
    swift_unknownObjectRelease();
  }

  v56 = v183;
  if (qword_100353A58 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  v58 = sub_10000F53C(v57, qword_100381D58);
  v192 = v45;
  v191 = v46;
  v46(v56, v48, p_ivar_base_size);
  swift_bridgeObjectRetain_n();
  v193 = v58;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v61 = os_log_type_enabled(v59, v60);
  v165[1] = v49;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v195 = v63;
    *v62 = 136446466;
    sub_100045708(&qword_100355328, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v56;
    v66 = v64;
    v68 = v67;
    v182 = *(v188 + 8);
    v182(v65, p_ivar_base_size);
    v69 = sub_10017C9E8(v66, v68, &v195);

    *(v62 + 4) = v69;
    *(v62 + 12) = 2050;
    *&v196 = v190;
    *(&v196 + 1) = v51;
    v70 = v178;
    v71 = static String.Encoding.utf8.getter();
    sub_100031770(v71, v72, v73);
    v74 = StringProtocol.lengthOfBytes(using:)();
    (*(v179 + 8))(v70, v180);

    *(v62 + 14) = v74;

    _os_log_impl(&_mh_execute_header, v59, v60, "Message simulation: new message %{public}s of %{public}ld bytes", v62, 0x16u);
    sub_100008964(v63);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v182 = *(v188 + 8);
    v182(v56, p_ivar_base_size);
  }

  v75 = v181;
  v76 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_messagesInProgress;
  v77 = swift_beginAccess();
  v78 = *(v53 + v76);
  __chkstk_darwin(v77);
  v79 = v185;
  v165[-2] = v185;

  v80 = 0;
  sub_1000417B4(sub_100045780, v78, v75);

  LODWORD(v78) = (*(v175 + 48))(v75, 1, v186);
  sub_100008FA0(v75, &qword_100357180, &unk_10027A8A0);
  v183 = v76;
  if (v78 != 1)
  {
    v81 = v165[0];
    v82 = v184;
    v191(v165[0], v79, v184);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v181 = 0;
      v87 = v86;
      *&v196 = v86;
      *v85 = 136446210;
      sub_100045708(&qword_100355328, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      v182(v81, v82);
      v91 = sub_10017C9E8(v88, v90, &v196);

      *(v85 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v83, v84, "Message simulation: message %{public}s is already pending", v85, 0xCu);
      sub_100008964(v87);
      v80 = v181;
    }

    else
    {

      v92 = (v182)(v81, v82);
    }

    __chkstk_darwin(v92);
    v165[-2] = v79;
    v93 = v183;
    swift_beginAccess();
    v94 = sub_10019C850(sub_1000456D8, &v165[-4]);
    v96 = *(*&v93[v53] + 16);
    if (v96 >= v94)
    {
      sub_10019E314(v94, v96, v95);
      swift_endAccess();
      goto LABEL_50;
    }

LABEL_93:
    __break(1u);
  }

LABEL_50:
  if (v189)
  {
    v97 = sub_1002559FC(_swiftEmptyArrayStorage);
    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;
    v197 = &type metadata for Int;
    *&v196 = 0;
    sub_1000456C8(&v196, &v195);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = v97;
    sub_100188F48(&v195, v98, v100, isUniquelyReferenced_nonNull_native);

    v102 = v194;
    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v105 = v104;
    v197 = &type metadata for Int;
    *&v196 = 1;
    sub_1000456C8(&v196, &v195);
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v194 = v102;
    sub_100188F48(&v195, v103, v105, v106);

    v107 = v194;
    v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v109;
    v197 = &type metadata for Bool;
    LOBYTE(v196) = 1;
    sub_1000456C8(&v196, &v195);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v194 = v107;
    sub_100188F48(&v195, v108, v110, v111);

    v112 = sub_1001457F0(v194);

    v113 = objc_allocWithZone(CTStewieEmergencyStartMessage);
    v114 = sub_100044DC4(v112);
    if (v80)
    {
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v115, v116, "Message simulation: failed to create CTStewieEmergencyStartMessage instance", v117, 2u);
      }

      v118 = 0.0;
    }

    else
    {
      v138 = v114;
      [v114 estimatedSendTime];
      v140 = v139;

      v118 = ceil(v140);
    }
  }

  else
  {
    *&v196 = v190;
    *(&v196 + 1) = v187;
    v119 = v178;
    v120 = static String.Encoding.utf8.getter();
    sub_100031770(v120, v121, v122);
    v123 = StringProtocol.lengthOfBytes(using:)();
    (*(v179 + 8))(v119, v180);
    if (v123 / 2 <= 1)
    {
      v124 = 1;
    }

    else
    {
      v124 = v123 / 2;
    }

    v125 = objc_opt_self();
    v118 = 0.0;
    p_ivar_base_size = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
    v29 = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
    v30 = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
    while (1)
    {
      v126 = v124;
      if ([v125 maxLengthInBytesForOutgoingText] < v124)
      {
        v126 = [v125 maxLengthInBytesForOutgoingText];
      }

      v127._countAndFlagsBits = 97;
      v127._object = 0xE100000000000000;
      String.init(repeating:count:)(v127, v126);
      v128 = objc_allocWithZone(CTStewieEmergencyTextMessage);
      v31 = String._bridgeToObjectiveC()();

      *&v196 = 0;
      v129 = [v128 initWithConversationID:0 sequenceNum:0 emergencyText:v31 error:&v196];

      if (!v129)
      {
        break;
      }

      v130 = v196;
      [v129 estimatedSendTime];
      v132 = v131;

      v133 = __OFSUB__(v124, v126);
      v124 -= v126;
      if (v133)
      {
        goto LABEL_89;
      }

      v118 = v118 + ceil(v132);
      if (v124 <= 0)
      {
        goto LABEL_69;
      }
    }

    v134 = v196;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&_mh_execute_header, v135, v136, "Message simulation: failed to create CTStewieEmergencyTextMessage instance", v137, 2u);
    }
  }

LABEL_69:
  if (v118 <= 0.0)
  {
    v141 = 1.0;
  }

  else
  {
    v141 = v118;
  }

  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 134349056;
    *(v144 + 4) = v141;
    _os_log_impl(&_mh_execute_header, v142, v143, "Message simulation: estimatedSendingTime = %{public}f", v144, 0xCu);
  }

  v145 = v167;
  v146 = v184;
  v191(v167, v185, v184);
  v147 = v177;
  static DispatchTime.now()();
  v148 = (v189 & 1) == 0;
  v149 = v170;
  v166(v170, v145, v146);
  v150 = v186;
  v151 = (v149 + *(v186 + 20));
  v152 = v187;
  *v151 = v190;
  v151[1] = v152;
  (*(v168 + 32))(v149 + v150[6], v147, v169);
  *(v149 + v150[7]) = v141;
  *(v149 + v150[8]) = v141;
  *(v149 + v150[9]) = v148;
  v153 = v176;
  v154 = v183;
  swift_beginAccess();
  v155 = *&v154[v153];

  v156 = swift_isUniquelyReferenced_nonNull_native();
  *&v154[v153] = v155;
  v157 = v171;
  v158 = v175;
  if ((v156 & 1) == 0)
  {
    v155 = sub_10017B8B4(0, v155[2] + 1, 1, v155);
    *&v154[v153] = v155;
  }

  v160 = v155[2];
  v159 = v155[3];
  if (v160 >= v159 >> 1)
  {
    v155 = sub_10017B8B4((v159 > 1), v160 + 1, 1, v155);
  }

  v155[2] = v160 + 1;
  sub_100045414(v149, v155 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v160);
  *&v154[v153] = v155;
  swift_endAccess();
  sub_10000F574();
  *v157 = static OS_dispatch_queue.main.getter();
  v161 = v172;
  v162 = v173;
  (*(v172 + 104))(v157, enum case for DispatchPredicate.onQueue(_:), v173);
  v163 = _dispatchPreconditionTest(_:)();
  (*(v161 + 8))(v157, v162);
  if ((v163 & 1) == 0)
  {
    __break(1u);
    goto LABEL_93;
  }

  if (*(*&v154[v153] + 16))
  {
    if (!*(v153 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer))
    {
      sub_100042124();
    }
  }

  else
  {
    sub_10004242C();
  }
}

uint64_t sub_1000417B4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_100045310(v13, v11);
      v15 = a1(v11);
      if (v4)
      {
        return sub_100045374(v11);
      }

      if (v15)
      {
        break;
      }

      sub_100045374(v11);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v9 + 56))(a3, v16, 1, v8);
      }
    }

    a3 = v19;
    sub_100045414(v11, v19);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

uint64_t sub_100041930(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v42 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000040A8(&qword_100355318, &unk_10027A8B0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v40[-v12];
  v14 = sub_1000040A8(&qword_100355320, &qword_1002782C0);
  __chkstk_darwin(v14 - 8);
  v44 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v53 = &v40[-v17];
  v19 = __chkstk_darwin(v18);
  v21 = &v40[-v20];
  v22 = *(v8 + 16);
  v46 = a1;
  v22(&v40[-v20], a1 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id, v7, v19);
  v43 = *(v8 + 56);
  v43(v21, 0, 1, v7);
  v23 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_itemIdToScrollTo;
  swift_beginAccess();
  v24 = *(v11 + 56);
  sub_100006C20(v21, v13, &qword_100355320, &qword_1002782C0);
  v45 = v2;
  sub_100006C20(v2 + v23, &v13[v24], &qword_100355320, &qword_1002782C0);
  v25 = *(v8 + 48);
  if (v25(v13, 1, v7) != 1)
  {
    sub_100006C20(v13, v53, &qword_100355320, &qword_1002782C0);
    if (v25(&v13[v24], 1, v7) != 1)
    {
      v27 = v42;
      (*(v8 + 32))(v42, &v13[v24], v7);
      sub_100045708(&qword_100355330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = v53;
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v8 + 8);
      v29(v27, v7);
      sub_100008FA0(v21, &qword_100355320, &qword_1002782C0);
      v29(v28, v7);
      result = sub_100008FA0(v13, &qword_100355320, &qword_1002782C0);
      if ((v41 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_100008FA0(v21, &qword_100355320, &qword_1002782C0);
    (*(v8 + 8))(v53, v7);
    return sub_100008FA0(v13, &qword_100355318, &unk_10027A8B0);
  }

  sub_100008FA0(v21, &qword_100355320, &qword_1002782C0);
  if (v25(&v13[v24], 1, v7) != 1)
  {
    return sub_100008FA0(v13, &qword_100355318, &unk_10027A8B0);
  }

  sub_100008FA0(v13, &qword_100355320, &qword_1002782C0);
LABEL_8:
  v30 = v44;
  v43(v44, 1, 1, v7);
  v31 = v45;
  swift_beginAccess();
  sub_10000F630(v30, v31 + v23);
  swift_endAccess();
  sub_10000F574();
  v32 = static OS_dispatch_queue.main.getter();
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  aBlock[4] = sub_1000456C0;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100327F60;
  v36 = _Block_copy(aBlock);

  v37 = v47;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045708(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_100035010();
  v38 = v49;
  v39 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v51 + 8))(v38, v39);
  return (*(v48 + 8))(v37, v50);
}

uint64_t sub_10004206C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      type metadata accessor for TryOutModel(0);
      sub_10026CC34(a2);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100042124()
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
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100045678;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008137C;
    aBlock[3] = &unk_100327F10;
    v9 = _Block_copy(aBlock);

    v10 = [v7 scheduledTimerWithTimeInterval:1 repeats:v9 block:1.0];
    _Block_release(v9);
    v11 = *(v1 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer);
    *(v1 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer) = v10;

    if (qword_100353A58 == -1)
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
  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381D58);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Started one second timer", v15, 2u);
  }
}

uint64_t sub_1000423D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100042618();
  }

  return result;
}

void sub_10004242C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer;
    [*(v1 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer) invalidate];
    v8 = *(v1 + v7);
    *(v1 + v7) = 0;

    if (qword_100353A58 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381D58);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Canceled one second timer", v12, 2u);
  }
}

void sub_100042618()
{
  v102 = type metadata accessor for DispatchWorkItemFlags();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v94 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for DispatchQoS();
  v99 = *(v1 - 8);
  __chkstk_darwin(v1);
  v98 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for DispatchTime();
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v96 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v103 = &v94 - v5;
  v124 = type metadata accessor for UUID();
  v107 = *(v124 - 8);
  __chkstk_darwin(v124);
  v97 = v6;
  v123 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v125 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v121 = &v94 - v11;
  v12 = sub_1000040A8(&qword_100357180, &unk_10027A8A0);
  __chkstk_darwin(v12 - 8);
  v122 = (&v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v94 - v15;
  __chkstk_darwin(v17);
  v120 = &v94 - v18;
  __chkstk_darwin(v19);
  v21 = (&v94 - v20);
  __chkstk_darwin(v22);
  v24 = (&v94 - v23);
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = sub_10000F574();
  *v28 = static OS_dispatch_queue.main.getter();
  v29 = *(v26 + 104);
  v111 = enum case for DispatchPredicate.onQueue(_:);
  v112 = v26 + 104;
  v110 = v29;
  v29(v28);
  v30 = _dispatchPreconditionTest(_:)();
  v31 = *(v26 + 8);
  v113 = v28;
  v115 = v25;
  v114 = v26 + 8;
  v109 = v31;
  v32 = v31(v28, v25);
  if ((v30 & 1) == 0)
  {
    goto LABEL_67;
  }

  v95 = v1;
  v34 = *(v8 + 56);
  v34(v24, 1, 1, v7);
  v34(v21, 1, 1, v7);
  v25 = v117;
  if (*(v117 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_connected) != 1)
  {
    goto LABEL_11;
  }

  v35 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_messagesInProgress;
  swift_beginAccess();
  v30 = *(v25 + v35);
  if (!*(v30 + 16))
  {
    goto LABEL_11;
  }

  v108 = v24;
  v106 = v21;
  v24 = ((*(v8 + 80) + 32) & ~*(v8 + 80));
  if (*(v24 + v30 + v7[8]) <= 0.0)
  {
    swift_beginAccess();
    if (*(v30 + 16))
    {
      v38 = v120;
      sub_100045310(v24 + v30, v120);
      v37 = v38;
      sub_10019E314(0, 1, v39);
      swift_endAccess();
      v21 = v106;
      v30 = v106;
      v24 = v108;
      goto LABEL_10;
    }

    goto LABEL_76;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v25 + v35) = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_74;
  }

  if (!*(v30 + 16))
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return;
  }

  while (1)
  {
    *(v24 + v30 + v7[8]) = *(v24 + v30 + v7[8]) + -1.0;
    *(v25 + v35) = v30;
    swift_endAccess();
    v37 = v120;
    sub_100045310(v24 + v30, v120);
    v24 = v108;
    v30 = v108;
    v21 = v106;
LABEL_10:
    sub_100008FA0(v30, &qword_100357180, &unk_10027A8A0);
    v34(v37, 0, 1, v7);
    sub_100045608(v37, v30);
LABEL_11:
    sub_100006C20(v24, v16, &qword_100357180, &unk_10027A8A0);
    v41 = *(v8 + 48);
    v8 += 48;
    v40 = v41;
    if (v41(v16, 1, v7) == 1)
    {
      sub_100008FA0(v16, &qword_100357180, &unk_10027A8A0);
      goto LABEL_19;
    }

    v35 = v121;
    sub_100045414(v16, v121);
    v42 = *(v35 + v7[7]);
    v43 = *(v35 + v7[8]);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    v44 = ceil((v42 - v43) * 100.0 / v42);
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v44 <= -9.22337204e18)
    {
      goto LABEL_72;
    }

    if (v44 < 9.22337204e18)
    {
      sub_10026BAA8(v35, v44, *(v35 + v7[9]));
      swift_unknownObjectRelease();
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    v30 = sub_10019CFF0(v30);
    if (!*(v30 + 16))
    {
      goto LABEL_75;
    }
  }

  sub_100045374(v35);
LABEL_19:
  v45 = v122;
  sub_100006C20(v21, v122, &qword_100357180, &unk_10027A8A0);
  if (v40(v45, 1, v7) != 1)
  {
    v46 = v125;
    sub_100045414(v45, v125);
    v94 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_progressDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10026BEE8(v46);
      swift_unknownObjectRelease();
    }

    v106 = v21;
    swift_beginAccess();
    v32 = *(v25 + 32);
    v1 = v32 >> 62;
    v108 = v24;
    v33 = (v32 & 0xFFFFFFFFFFFFFF8);
    if (v32 >> 62)
    {
      goto LABEL_69;
    }

    v119 = v32 & 0xFFFFFFFFFFFFFF8;
    v47 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      v48 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v122 = v48;
      goto LABEL_26;
    }

    goto LABEL_48;
  }

  sub_100008FA0(v45, &qword_100357180, &unk_10027A8A0);
  while (1)
  {
    v88 = static OS_dispatch_queue.main.getter();
    v1 = v113;
    *v113 = v88;
    v89 = v115;
    v110(v1, v111, v115);
    v90 = _dispatchPreconditionTest(_:)();
    v32 = v109(v1, v89);
    if (v90)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_69:
      v119 = v33;
      v92 = v32;
      v93 = _CocoaArrayWrapper.endIndex.getter();
      if (!v93)
      {
        break;
      }

      v47 = v93;
      v122 = _CocoaArrayWrapper.endIndex.getter();
      v48 = _CocoaArrayWrapper.endIndex.getter();
      v32 = v92;
LABEL_26:
      v25 = v32 & 0xC000000000000001;
      v49 = v119;
      if (v32 < 0)
      {
        v49 = v32;
      }

      v120 = v49;
      v118 = v32 + 32;
      v24 = (v107 + 16);
      v50 = (v107 + 8);
      v121 = v32;

      while (1)
      {
        v51 = v47 - 1;
        if (__OFSUB__(v47, 1))
        {
          break;
        }

        if (v1)
        {
          v33 = v122;
          if (v122 == v47)
          {
            v32 = _CocoaArrayWrapper.endIndex.getter();
          }
        }

        if (v51 < 0 || v51 >= v48)
        {
          goto LABEL_65;
        }

        if (v25)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v33 = *(v119 + 16);
          if (v51 >= v33)
          {
            goto LABEL_66;
          }

          v52 = *(v118 + 8 * v51);
        }

        v54 = v123;
        v53 = v124;
        (*v24)(v123, v52 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id, v124);
        v55 = static UUID.== infix(_:_:)();
        (*v50)(v54, v53);
        if (v55)
        {

          v56 = OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status;
          if (*(v52 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status))
          {
            v25 = v117;
            v24 = v108;
            v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v57)
            {
LABEL_46:
              *(v52 + v56) = 1;
            }

            goto LABEL_48;
          }

          v25 = v117;
          v24 = v108;
          goto LABEL_46;
        }

        v47 = v51;
        if (!v51)
        {

          v25 = v117;
          v24 = v108;
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

LABEL_48:
    v58 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscript;
    swift_beginAccess();
    v59 = *(v25 + v58);
    if (v59 && v59[2])
    {
      v60 = v59[4];
      v61 = v59[5];
      v63 = v59[6];
      v62 = v59[7];

      v65 = sub_10003F980(aBlock);
      if (*v64)
      {
        if (!*(*v64 + 16))
        {
          goto LABEL_77;
        }

        sub_10019E400(0, 1, v66);
        (v65)(aBlock, 0);
      }

      else
      {
        (v65)(aBlock, 0);
      }

      v67 = (v25 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight);
      v68 = *(v25 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight);
      v69 = *(v25 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 8);
      v70 = *(v25 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 16);
      v71 = *(v25 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 24);
      *v67 = v60;
      v67[1] = v61;
      v67[2] = v63;
      v67[3] = v62;

      sub_1000452CC(v68, v69, v70, v71);
      v121 = static OS_dispatch_queue.main.getter();
      v72 = v96;
      static DispatchTime.now()();
      + infix(_:_:)();
      v73 = *(v105 + 8);
      v105 += 8;
      v122 = v73;
      (v73)(v72, v104);
      v74 = swift_allocObject();
      swift_weakInit();
      v120 = v62;
      v75 = v63;
      v76 = v107;
      v77 = v123;
      v78 = v124;
      (*(v107 + 16))(v123, v125, v124);
      v79 = v60;
      v80 = (*(v76 + 80) + 56) & ~*(v76 + 80);
      v81 = swift_allocObject();
      *(v81 + 2) = v74;
      *(v81 + 3) = v79;
      *(v81 + 4) = v61;
      *(v81 + 5) = v75;
      *(v81 + 6) = v120;
      (*(v76 + 32))(&v81[v80], v77, v78);
      aBlock[4] = sub_100045584;
      aBlock[5] = v81;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001D2438;
      aBlock[3] = &unk_100327EE8;
      v82 = _Block_copy(aBlock);

      v83 = v98;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100045708(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000040A8(&unk_100355D70, &qword_100279D60);
      sub_100035010();
      v84 = v100;
      v85 = v102;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v86 = v103;
      v87 = v121;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v82);

      (*(v101 + 8))(v84, v85);
      (*(v99 + 8))(v83, v95);
      (v122)(v86, v104);
      v24 = v108;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10026B98C();
      swift_unknownObjectRelease();
    }

    sub_100045374(v125);
    v21 = v106;
  }

  v91 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_messagesInProgress;
  swift_beginAccess();
  if (*(*(v25 + v91) + 16))
  {
    if (!*(v25 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer))
    {
      sub_100042124();
    }
  }

  else
  {
    sub_10004242C();
  }

  sub_100008FA0(v21, &qword_100357180, &unk_10027A8A0);
  sub_100008FA0(v24, &qword_100357180, &unk_10027A8A0);
}

uint64_t sub_100043658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000436EC(a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1000436EC(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v106 = a5;
  v102 = a4;
  v105 = a3;
  v9 = sub_1000040A8(&qword_100355320, &qword_1002782C0);
  __chkstk_darwin(v9 - 8);
  v99 = &v89 - v10;
  v93 = type metadata accessor for DispatchPredicate();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = (&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MessageSimulationEngineImplementation.MessageProgress(0);
  v94 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v104 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v100 = &v89 - v15;
  v16 = type metadata accessor for UUID();
  v107 = *(v16 - 8);
  v17 = v107;
  __chkstk_darwin(v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v89 - v21;
  v23 = (v6 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight);
  v24 = *(v6 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight);
  v25 = *(v6 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 8);
  v26 = *(v6 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 16);
  v27 = *(v6 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscriptItemInFlight + 24);
  *v23 = 0u;
  v23[1] = 0u;
  sub_1000452CC(v24, v25, v26, v27);

  UUID.init()();
  v28 = type metadata accessor for TryOutTranscriptMessageItem(0);
  v29 = swift_allocObject();
  v30 = v29 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content;
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = 0;
  *(v29 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender) = 1;
  *(v29 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_hasPairedEducationalReply) = 0;
  *(v29 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) = 2;
  *(v29 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) = 1;
  *(v29 + 16) = 2;
  v101 = *(v17 + 32);
  (v101)(v29 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id, v22, v16);
  v31 = [objc_opt_self() mainBundle];
  v111._object = 0x80000001002980D0;
  v32 = v6;
  v33._object = 0x80000001002980B0;
  v111._countAndFlagsBits = 0xD00000000000003ALL;
  v33._countAndFlagsBits = 0xD000000000000019;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v31, v34, v111);

  v36 = v102;

  UUID.init()();
  v37 = *(v107 + 16);
  v97 = v19;
  v96 = v107 + 16;
  v95 = v37;
  v37(v22, v19, v16);
  v103 = v28;
  v38 = swift_allocObject();
  v39 = v38 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_content;
  *v39 = v35;
  *(v39 + 16) = v105;
  *(v39 + 24) = v36;
  *(v39 + 32) = 0;
  *(v38 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_sender) = 1;
  *(v38 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_hasPairedEducationalReply) = 1;
  *(v38 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) = 2;
  *(v38 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage) = 1;
  *(v38 + 16) = 2;
  v102 = v38;
  v98 = v16;
  (v101)(v38 + OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id, v22, v16);
  swift_beginAccess();
  v40 = *(v6 + 32);
  v110 = v106;

  v41 = 0;
  v42 = sub_1001DE0C0(sub_100045764, v109, v40);
  LOBYTE(v36) = v43;

  if ((v36 & 1) == 0)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_97;
    }

    swift_beginAccess();
    v45 = *(v6 + 32);
    if (v45 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= v44)
      {
LABEL_7:
        if ((v44 & 0x8000000000000000) == 0)
        {

          sub_10019E54C(v44, v44, v29);
          swift_endAccess();

          goto LABEL_9;
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }
    }

    else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v44)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_100;
  }

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v6 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_95:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
LABEL_9:
  v108 = v29;
  v46 = *(v32 + 32);
  v29 = v46 & 0xFFFFFFFFFFFFFF8;
  if (v46 >> 62)
  {
    goto LABEL_93;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

  v48 = 0;
  while (1)
  {
    if (v47 == v48)
    {

      swift_beginAccess();
      v22 = v102;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v32 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v32 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_22:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v51 = v107;
        v52 = v100;
LABEL_29:
        v55 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_emergencyConversationTranscript;
        swift_beginAccess();
        v56 = *(v32 + v55);
        if (v56 && !*(v56 + 16) && *(v32 + 16) == 1)
        {
          v57 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_messagesInProgress;
          swift_beginAccess();
          v58 = *(v32 + v57);
          if (*(v58 + 16))
          {
            v59 = (*(v94 + 80) + 32) & ~*(v94 + 80);
            sub_100045310(v58 + v59, v52);
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_10026BEE8(v52);
              swift_unknownObjectRelease();
            }

            sub_100045374(v52);
            v60 = *(v32 + v57);
            v61 = *(v60 + 16);
            if (v61)
            {
              v90 = v57;
              v62 = v60 + v59;
              v100 = *(v94 + 72);
              v94 = v60;

              v101 = v32;
              v29 = v104;
              while (1)
              {
                v106 = v61;
                v65 = sub_100045310(v62, v29);
                __chkstk_darwin(v65);
                v111._object = v29;
                swift_beginAccess();
                v66 = sub_10019CB78(sub_1000453D0, (&v89 - 4));
                v67 = v66;
                v46 = *(v32 + 32);
                v68 = v46 >> 62;
                if (v46 >> 62)
                {
                  v69 = _CocoaArrayWrapper.endIndex.getter();
                  v70 = v69 - v67;
                  if (v69 < v67)
                  {
                    goto LABEL_88;
                  }
                }

                else
                {
                  v69 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v70 = v69 - v66;
                  if (v69 < v66)
                  {
                    goto LABEL_88;
                  }
                }

                if (v67 < 0)
                {
                  goto LABEL_89;
                }

                if (v68)
                {
                  v71 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v71 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v71 < v69)
                {
                  goto LABEL_90;
                }

                v29 = -v70;
                if (__OFSUB__(0, v70))
                {
                  goto LABEL_91;
                }

                v105 = v41;
                v41 = &v89;
                if (v68)
                {
                  v72 = _CocoaArrayWrapper.endIndex.getter();
                }

                else
                {
                  v72 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v73 = v72 - v70;
                if (__OFADD__(v72, v29))
                {
                  goto LABEL_92;
                }

                isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                *(v32 + 32) = v46;
                if (isUniquelyReferenced_nonNull_bridgeObject)
                {
                  break;
                }

                if (v68)
                {
                  goto LABEL_57;
                }

LABEL_58:
                v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                *(v32 + 32) = v46;
                v75 = v46 & 0xFFFFFFFFFFFFFF8;
LABEL_59:
                v32 = v75 + 32;
                swift_arrayDestroy();
                if (v70)
                {
                  if (v46 >> 62)
                  {
                    v80 = _CocoaArrayWrapper.endIndex.getter();
                    v77 = v80 - v69;
                    if (__OFSUB__(v80, v69))
                    {
LABEL_74:
                      __break(1u);
LABEL_75:

                      v57 = v90;
                      v51 = v107;
                      v22 = v102;
                      goto LABEL_76;
                    }
                  }

                  else
                  {
                    v76 = *(v75 + 16);
                    v77 = v76 - v69;
                    if (__OFSUB__(v76, v69))
                    {
                      goto LABEL_74;
                    }
                  }

                  v78 = (v32 + 8 * v69);
                  if (v69 != v67 || v75 + 32 + 8 * v67 >= v78 + 8 * v77)
                  {
                    memmove((v75 + 32 + 8 * v67), v78, 8 * v77);
                  }

                  if (v46 >> 62)
                  {
                    v79 = _CocoaArrayWrapper.endIndex.getter();
                    v64 = v79 - v70;
                    if (__OFADD__(v79, v29))
                    {
LABEL_94:
                      __break(1u);
                      goto LABEL_95;
                    }
                  }

                  else
                  {
                    v63 = *(v75 + 16);
                    v64 = v63 - v70;
                    if (__OFADD__(v63, v29))
                    {
                      goto LABEL_94;
                    }
                  }

                  *(v75 + 16) = v64;
                }

                v32 = v101;
                *(v101 + 32) = v46;
                swift_endAccess();
                v29 = v104;
                sub_100045374(v104);
                v62 += v100;
                v41 = v105;
                v61 = v106 - 1;
                if (v106 == 1)
                {
                  goto LABEL_75;
                }
              }

              if (!v68)
              {
                v75 = v46 & 0xFFFFFFFFFFFFFF8;
                if (v73 <= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_59;
                }

                goto LABEL_58;
              }

LABEL_57:
              _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_58;
            }

LABEL_76:
            *(v32 + v57) = _swiftEmptyArrayStorage;

            sub_10000F574();
            v81 = static OS_dispatch_queue.main.getter();
            v82 = v91;
            *v91 = v81;
            v83 = v92;
            v84 = v93;
            (*(v92 + 104))(v82, enum case for DispatchPredicate.onQueue(_:), v93);
            v85 = _dispatchPreconditionTest(_:)();
            result = (*(v83 + 8))(v82, v84);
            if ((v85 & 1) == 0)
            {
              goto LABEL_105;
            }

            if (*(*(v32 + v57) + 16))
            {
              if (!*(v32 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_oneSecondTimer))
              {
                sub_100042124();
              }
            }

            else
            {
              sub_10004242C();
            }
          }

          *(v32 + 16) = 2;
        }

        v86 = v99;
        v87 = v98;
        v95(v99, &v22[OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id], v98);
        (*(v51 + 56))(v86, 0, 1, v87);
        v88 = OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_itemIdToScrollTo;
        swift_beginAccess();
        sub_10000F630(v86, v32 + v88);
        swift_endAccess();
        sub_100044600();
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_10026B98C();

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return (*(v51 + 8))(v97, v87);
      }

LABEL_97:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_22;
    }

    if ((v46 & 0xC000000000000001) == 0)
    {
      if (v48 < *(v29 + 16))
      {

        goto LABEL_16;
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      v47 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_11;
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
    v49 = static UUID.== infix(_:_:)();

    if (v49)
    {
      break;
    }

    if (__OFADD__(v48++, 1))
    {
      goto LABEL_87;
    }
  }

  v44 = v48 + 1;
  if (__OFADD__(v48, 1))
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  swift_beginAccess();
  v53 = *(v32 + 32);
  if (!(v53 >> 62))
  {
    result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_26;
  }

LABEL_102:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
  v22 = v102;
  v52 = v100;
  if (result < v44)
  {
    __break(1u);
  }

  else if ((v44 & 0x8000000000000000) == 0)
  {

    sub_10019E54C(v44, v44, v22);
    swift_endAccess();

    v51 = v107;
    goto LABEL_29;
  }

  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}