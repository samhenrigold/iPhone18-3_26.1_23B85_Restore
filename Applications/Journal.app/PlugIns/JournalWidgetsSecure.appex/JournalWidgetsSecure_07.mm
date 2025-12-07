uint64_t sub_1000AF48C@<X0>(uint64_t a1@<X8>)
{
  v137 = a1;
  v132 = sub_100007BC0(&qword_100125DB0, &qword_1000E6950) - 8;
  __chkstk_darwin(v132);
  v131 = &v113 - v1;
  v135 = sub_100007BC0(&qword_100125DB8, &qword_1000E6958) - 8;
  v2 = __chkstk_darwin(v135);
  v136 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v133 = &v113 - v5;
  __chkstk_darwin(v4);
  v134 = &v113 - v6;
  v142 = sub_1000DB654();
  v147 = *(v142 - 8);
  __chkstk_darwin(v142);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1000DB1F4();
  v9 = *(v146 - 8);
  v10 = __chkstk_darwin(v146);
  v143 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v113 - v12);
  v14 = sub_1000DBC14();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_100007BC0(&qword_100125DC0, &qword_1000E6960) - 8;
  __chkstk_darwin(v144);
  v19 = &v113 - v18;
  v129 = sub_100007BC0(&qword_100125DC8, &qword_1000E6968) - 8;
  v20 = __chkstk_darwin(v129);
  v130 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v124 = &v113 - v23;
  __chkstk_darwin(v22);
  v145 = &v113 - v24;
  (*(v15 + 104))(v17, enum case for WidgetFamily.systemSmall(_:), v14);
  sub_100080BE4(v13);
  v25 = v13;
  v138 = v13;
  v26 = sub_10003CA44(v17);
  v28 = v27;
  v30 = v29;
  v123 = v31;
  v32 = *(v9 + 8);
  v140 = v9 + 8;
  v141 = v32;
  v32(v25, v146);
  (*(v15 + 8))(v17, v14);
  sub_1000DB694();
  v128 = enum case for Font.Leading.tight(_:);
  v33 = v147;
  v34 = *(v147 + 104);
  v126 = v147 + 104;
  v127 = v34;
  v35 = v8;
  v36 = v8;
  v37 = v142;
  v34(v36);
  v122 = v35;
  sub_1000DB674();

  v38 = *(v33 + 8);
  v147 = v33 + 8;
  v125 = v38;
  v38(v35, v37);
  v39 = sub_1000DB6F4();
  v41 = v40;
  LOBYTE(v9) = v42;

  sub_10004369C(v26, v28, v30 & 1);

  v115 = sub_1000DB6E4();
  v114 = v43;
  v45 = v44;
  v123 = v46;
  sub_10004369C(v39, v41, v9 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v37) = sub_1000DB4E4();
  v48 = (v19 + *(v144 + 44));
  v49 = sub_100007BC0(&qword_1001231C8, &qword_1000E2F50);
  v50 = *(v49 + 36);
  v119 = v49;
  v51 = enum case for BlendMode.plusDarker(_:);
  v121 = enum case for BlendMode.plusDarker(_:);
  v52 = sub_1000DB9B4();
  v53 = *(v52 - 8);
  v54 = *(v53 + 104);
  v118 = v54;
  v117 = v53 + 104;
  v116 = v52;
  (v54)(v48 + v50, v51);
  v55 = *(v49 + 40);
  v120 = enum case for BlendMode.plusLighter(_:);
  (v54)(v48 + v55);
  *v48 = v37;
  v56 = v114;
  *v19 = v115;
  *(v19 + 8) = v56;
  *(v19 + 16) = v45 & 1;
  *(v19 + 24) = v123;
  *(v19 + 32) = KeyPath;
  *(v19 + 40) = 1;
  v58 = v138;
  v57 = v139;
  sub_100080BE4(v138);
  v59 = v143;
  sub_1000DB1D4();
  v123 = sub_1000B16BC(&qword_100121C40, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v60 = v146;
  LOBYTE(KeyPath) = sub_1000DC874();
  v61 = v141;
  v141(v59, v60);
  v62 = v60;
  v61(v58, v60);
  v63 = v61;
  v64 = swift_getKeyPath();
  v65 = v124;
  sub_10001865C(v19, v124, &qword_100125DC0, &qword_1000E6960);
  v66 = v65 + *(v129 + 44);
  *v66 = v64;
  *(v66 + 8) = KeyPath & 1;
  *(v66 + 16) = (KeyPath & 1) == 0;
  sub_10001865C(v65, v145, &qword_100125DC8, &qword_1000E6968);
  v67 = v57 + *(type metadata accessor for StreaksWidgetSystemSmallView(0) + 24);
  v68 = (v67 + *(type metadata accessor for StreaksWidgetTimelineEntry(0) + 24));
  v69 = *v68;
  v70 = v68[1];
  sub_100080BE4(v58);
  v71 = sub_10003CD8C(v69, v70);
  v73 = v72;
  LOBYTE(v65) = v74;
  v63(v58, v62);
  sub_1000DB684();
  v75 = v122;
  v76 = v142;
  v127(v122, v128, v142);
  sub_1000DB674();

  v125(v75, v76);
  v142 = sub_1000DB6F4();
  v78 = v77;
  LOBYTE(v19) = v79;
  v147 = v80;

  sub_10004369C(v71, v73, v65 & 1);

  v81 = swift_getKeyPath();
  LODWORD(v64) = sub_1000DB4D4();
  v82 = v131;
  v83 = &v131[*(v144 + 44)];
  v84 = v119;
  v85 = v116;
  v86 = v118;
  v118(&v83[*(v119 + 36)], v121, v116);
  v86(&v83[*(v84 + 40)], v120, v85);
  *v83 = v64;
  *v82 = v142;
  *(v82 + 8) = v78;
  *(v82 + 16) = v19 & 1;
  *(v82 + 24) = v147;
  *(v82 + 32) = v81;
  *(v82 + 40) = 1;
  LOBYTE(v81) = sub_1000DB594();
  sub_1000DB0B4();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = v82 + *(sub_100007BC0(&qword_100125DD0, &qword_1000E69A8) + 36);
  *v95 = v81;
  *(v95 + 8) = v88;
  *(v95 + 16) = v90;
  *(v95 + 24) = v92;
  *(v95 + 32) = v94;
  *(v95 + 40) = 0;
  v96 = (v82 + *(v132 + 44));
  sub_100007BC0(&qword_100122020, &qword_1000E2230);
  sub_1000DB234();
  *v96 = swift_getKeyPath();
  v97 = v138;
  sub_100080BE4(v138);
  v98 = v143;
  sub_1000DB1D4();
  v99 = v146;
  v100 = sub_1000DC874();
  v101 = v141;
  v141(v98, v99);
  v101(v97, v99);
  if (v100)
  {
    v102 = 3;
  }

  else
  {
    v102 = 0;
  }

  v103 = swift_getKeyPath();
  v104 = v133;
  sub_10001865C(v82, v133, &qword_100125DB0, &qword_1000E6950);
  v105 = v134;
  v106 = v104 + *(v135 + 44);
  *v106 = v103;
  *(v106 + 8) = v102;
  *(v106 + 16) = (v100 & 1) == 0;
  sub_10001865C(v104, v105, &qword_100125DB8, &qword_1000E6958);
  v107 = v145;
  v108 = v130;
  sub_100007F58(v145, v130, &qword_100125DC8, &qword_1000E6968);
  v109 = v136;
  sub_100007F58(v105, v136, &qword_100125DB8, &qword_1000E6958);
  v110 = v137;
  sub_100007F58(v108, v137, &qword_100125DC8, &qword_1000E6968);
  v111 = sub_100007BC0(&qword_100125DD8, &qword_1000E69B0);
  sub_100007F58(v109, v110 + *(v111 + 48), &qword_100125DB8, &qword_1000E6958);
  sub_1000080B0(v105, &qword_100125DB8, &qword_1000E6958);
  sub_1000080B0(v107, &qword_100125DC8, &qword_1000E6968);
  sub_1000080B0(v109, &qword_100125DB8, &qword_1000E6958);
  return sub_1000080B0(v108, &qword_100125DC8, &qword_1000E6968);
}

uint64_t sub_1000B0074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreaksWidgetSystemSmallView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B00D8()
{
  v1 = type metadata accessor for StreaksWidgetSystemSmallView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100007BC0(&qword_100121FC8, &unk_1000E66C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000DB1F4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_100007BC0(&qword_100121FC0, &qword_1000E2170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000DBBF4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v5 + *(v1 + 24);
  v10 = sub_1000DA084();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(type metadata accessor for StreaksWidgetTimelineEntry(0) + 28);
  v12 = sub_1000DBCC4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v9 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000B0384()
{
  result = qword_100125C08;
  if (!qword_100125C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125C08);
  }

  return result;
}

double sub_1000B0400()
{
  v0 = sub_1000DAE04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007BC0(&qword_100125C20, &qword_1000E6710);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000DE2C0;
  if (qword_10011FC18 != -1)
  {
    swift_once();
  }

  v5 = sub_100007EBC(v0, qword_100127420);
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_1000DB884();
  if (qword_10011FC08 != -1)
  {
    swift_once();
  }

  v7 = sub_100007EBC(v0, qword_1001273F0);
  v6(v3, v7, v0);
  *(v4 + 40) = sub_1000DB884();
  sub_1000DB9E4();
  sub_1000DB9F4();
  sub_1000DB954();
  sub_1000DB1A4();
  result = *&v10;
  xmmword_100125A90 = v10;
  unk_100125AA0 = v11;
  qword_100125AB0 = v12;
  return result;
}

double sub_1000B060C()
{
  v0 = sub_1000DAE04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007BC0(&qword_100125C20, &qword_1000E6710);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000DE2C0;
  if (qword_10011FC18 != -1)
  {
    swift_once();
  }

  v5 = sub_100007EBC(v0, qword_100127420);
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_1000DB884();
  if (qword_10011FC10 != -1)
  {
    swift_once();
  }

  v7 = sub_100007EBC(v0, qword_100127408);
  v6(v3, v7, v0);
  *(v4 + 40) = sub_1000DB884();
  sub_1000DB9E4();
  sub_1000DB9F4();
  sub_1000DB954();
  sub_1000DB1A4();
  result = *&v10;
  xmmword_100125AB8 = v10;
  *algn_100125AC8 = v11;
  qword_100125AD8 = v12;
  return result;
}

double sub_1000B0818()
{
  v0 = sub_1000DAE04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007BC0(&qword_100125C20, &qword_1000E6710);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000DE2C0;
  if (qword_10011FC40 != -1)
  {
    swift_once();
  }

  v5 = sub_100007EBC(v0, qword_100127498);
  (*(v1 + 16))(v3, v5, v0);
  *(v4 + 32) = sub_1000DB884();
  *(v4 + 40) = sub_1000DB864();
  sub_1000DB9C4();
  sub_1000DB9D4();
  sub_1000DB954();
  sub_1000DB1A4();
  result = *&v8;
  xmmword_100125AE0 = v8;
  *algn_100125AF0 = v9;
  qword_100125B00 = v10;
  return result;
}

double sub_1000B09C0()
{
  v0 = sub_1000DAE04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007BC0(&qword_100125C20, &qword_1000E6710);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000DE2C0;
  if (qword_10011FC20 != -1)
  {
    swift_once();
  }

  v5 = sub_100007EBC(v0, qword_100127438);
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_1000DB884();
  if (qword_10011FC28 != -1)
  {
    swift_once();
  }

  v7 = sub_100007EBC(v0, qword_100127450);
  v6(v3, v7, v0);
  *(v4 + 40) = sub_1000DB884();
  sub_1000DBA14();
  sub_1000DBA24();
  sub_1000DB954();
  sub_1000DB1A4();
  result = *&v10;
  xmmword_100125B08 = v10;
  *algn_100125B18 = v11;
  qword_100125B28 = v12;
  return result;
}

double sub_1000B0BCC()
{
  v0 = sub_1000DAE04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007BC0(&qword_100125C20, &qword_1000E6710);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000DE2C0;
  if (qword_10011FC30 != -1)
  {
    swift_once();
  }

  v5 = sub_100007EBC(v0, qword_100127468);
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  *(v4 + 32) = sub_1000DB884();
  if (qword_10011FC38 != -1)
  {
    swift_once();
  }

  v7 = sub_100007EBC(v0, qword_100127480);
  v6(v3, v7, v0);
  *(v4 + 40) = sub_1000DB884();
  sub_1000DBA14();
  sub_1000DBA24();
  sub_1000DB954();
  sub_1000DB1A4();
  result = *&v10;
  xmmword_100125B30 = v10;
  unk_100125B40 = v11;
  qword_100125B50 = v12;
  return result;
}

uint64_t sub_1000B0DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_100007BC0(&qword_100125F28, &qword_1000E6B18);
  __chkstk_darwin(v3);
  v5 = v17 - v4;
  v6 = sub_100007BC0(&qword_100125F30, &qword_1000E6B20);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  v9 = sub_1000DBBF4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DBBE4();
  sub_1000B16BC(&qword_100122228, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v13 = sub_1000DBE64();
  (*(v10 + 8))(v12, v9);
  v14 = sub_100007BC0(&qword_100125F38, &qword_1000E6B28);
  v15 = *(*(v14 - 8) + 16);
  if (v13)
  {
    v15(v5, a1, v14);
    sub_100007F58(v5, v8, &qword_100125F28, &qword_1000E6B18);
    swift_storeEnumTagMultiPayload();
    sub_1000391D4(&qword_100125F40, &qword_100125F38, &qword_1000E6B28, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000B20F0();
    sub_1000DB464();
    return sub_1000080B0(v5, &qword_100125F28, &qword_1000E6B18);
  }

  else
  {
    v15(v8, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_1000391D4(&qword_100125F40, &qword_100125F38, &qword_1000E6B28, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000B20F0();
    return sub_1000DB464();
  }
}

uint64_t sub_1000B1120(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B119C()
{
  result = qword_100125CE8;
  if (!qword_100125CE8)
  {
    sub_100007C08(&qword_100125CE0, &qword_1000E68A8);
    sub_1000B1254();
    sub_1000391D4(&qword_100122008, &qword_100122010, &unk_1000E3360, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125CE8);
  }

  return result;
}

unint64_t sub_1000B1254()
{
  result = qword_100125CF0;
  if (!qword_100125CF0)
  {
    sub_100007C08(&qword_100125CF8, &qword_1000E68B0);
    sub_1000B130C();
    sub_1000391D4(&qword_100125D30, &qword_100125D38, &unk_1000E68D0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125CF0);
  }

  return result;
}

unint64_t sub_1000B130C()
{
  result = qword_100125D00;
  if (!qword_100125D00)
  {
    sub_100007C08(&qword_100125D08, &qword_1000E68B8);
    sub_1000B13C4();
    sub_1000391D4(&qword_100121FF8, &qword_100122000, &unk_1000E2220, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D00);
  }

  return result;
}

unint64_t sub_1000B13C4()
{
  result = qword_100125D10;
  if (!qword_100125D10)
  {
    sub_100007C08(&qword_100125D18, &qword_1000E68C0);
    sub_1000391D4(&qword_100125D20, &qword_100125D28, &qword_1000E68C8, &protocol conformance descriptor for IDView<A, B>);
    sub_1000391D4(&qword_100123088, &qword_100123090, &qword_1000E2E20, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D10);
  }

  return result;
}

unint64_t sub_1000B14B0()
{
  result = qword_100125D50;
  if (!qword_100125D50)
  {
    sub_100007C08(&qword_100125CC8, &qword_1000E6800);
    sub_1000B1568();
    sub_1000391D4(&qword_100122018, &qword_100122020, &qword_1000E2230, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D50);
  }

  return result;
}

unint64_t sub_1000B1568()
{
  result = qword_100125D58;
  if (!qword_100125D58)
  {
    sub_100007C08(&qword_100125D48, &unk_1000E68E8);
    sub_1000B15F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D58);
  }

  return result;
}

unint64_t sub_1000B15F4()
{
  result = qword_100125D60;
  if (!qword_100125D60)
  {
    sub_100007C08(&qword_100125D40, &qword_1000E68E0);
    sub_100007C08(&qword_100125CE0, &qword_1000E68A8);
    sub_1000B119C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D60);
  }

  return result;
}

uint64_t sub_1000B16BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B1704()
{
  result = qword_100125D68;
  if (!qword_100125D68)
  {
    sub_100007C08(&qword_100125CB8, &qword_1000E67E8);
    sub_1000B1790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D68);
  }

  return result;
}

unint64_t sub_1000B1790()
{
  result = qword_100125D70;
  if (!qword_100125D70)
  {
    sub_100007C08(&qword_100125CB0, &qword_1000E67E0);
    sub_1000B1848();
    sub_1000391D4(&qword_100122018, &qword_100122020, &qword_1000E2230, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D70);
  }

  return result;
}

unint64_t sub_1000B1848()
{
  result = qword_100125D78;
  if (!qword_100125D78)
  {
    sub_100007C08(&qword_100125D80, &qword_1000E6928);
    sub_1000B18D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D78);
  }

  return result;
}

unint64_t sub_1000B18D4()
{
  result = qword_100125D88;
  if (!qword_100125D88)
  {
    sub_100007C08(&qword_100125D90, &qword_1000E6930);
    sub_1000B198C();
    sub_1000391D4(&qword_100124308, &qword_100124310, &qword_1000E4270, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D88);
  }

  return result;
}

unint64_t sub_1000B198C()
{
  result = qword_100125D98;
  if (!qword_100125D98)
  {
    sub_100007C08(&qword_100125DA0, &unk_1000E6938);
    sub_1000391D4(&qword_100122008, &qword_100122010, &unk_1000E3360, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125D98);
  }

  return result;
}

uint64_t sub_1000B1A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B1AC0()
{
  result = qword_100125E18;
  if (!qword_100125E18)
  {
    sub_100007C08(&qword_100125E00, &qword_1000E6A40);
    sub_1000B1B78();
    sub_1000391D4(&qword_100122018, &qword_100122020, &qword_1000E2230, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E18);
  }

  return result;
}

unint64_t sub_1000B1B78()
{
  result = qword_100125E20;
  if (!qword_100125E20)
  {
    sub_100007C08(&qword_100125DF8, &qword_1000E6A38);
    sub_1000B1C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E20);
  }

  return result;
}

unint64_t sub_1000B1C04()
{
  result = qword_100125E28;
  if (!qword_100125E28)
  {
    sub_100007C08(&qword_100125DF0, &qword_1000E6A30);
    sub_1000B1CBC();
    sub_1000391D4(&qword_100125E50, &qword_100125E58, &qword_1000E6A68, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E28);
  }

  return result;
}

unint64_t sub_1000B1CBC()
{
  result = qword_100125E30;
  if (!qword_100125E30)
  {
    sub_100007C08(&qword_100125DE8, &qword_1000E6A28);
    sub_1000B1D78();
    sub_1000B16BC(&qword_100125E48, type metadata accessor for WingsBackgroundAccentableModifier, &unk_1000E6AC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E30);
  }

  return result;
}

unint64_t sub_1000B1D78()
{
  result = qword_100125E38;
  if (!qword_100125E38)
  {
    sub_100007C08(&qword_100125E40, &qword_1000E6A58);
    sub_10005BD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125E38);
  }

  return result;
}

uint64_t sub_1000B1E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DBBF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B1EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DBBF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000B1F28(uint64_t a1)
{
  result = sub_1000DBBF4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1000B1F98()
{
  result = qword_100125F18;
  if (!qword_100125F18)
  {
    sub_100007C08(&qword_100125C10, &qword_1000E6700);
    sub_100007C08(&qword_100125BF0, &qword_1000E66B0);
    sub_1000391D4(&qword_100125C00, &qword_100125BF0, &qword_1000E66B0, &protocol conformance descriptor for ZStack<A>);
    sub_1000B0384();
    swift_getOpaqueTypeConformance2();
    sub_1000391D4(&qword_100125F20, &qword_100125C18, &qword_1000E6708, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F18);
  }

  return result;
}

unint64_t sub_1000B20F0()
{
  result = qword_100125F48;
  if (!qword_100125F48)
  {
    sub_100007C08(&qword_100125F28, &qword_1000E6B18);
    sub_1000391D4(&qword_100125F40, &qword_100125F38, &qword_1000E6B28, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F48);
  }

  return result;
}

unint64_t sub_1000B21AC()
{
  result = qword_100125F50;
  if (!qword_100125F50)
  {
    sub_100007C08(&qword_100125F58, &unk_1000E6B30);
    sub_1000391D4(&qword_100125F40, &qword_100125F38, &qword_1000E6B28, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000B20F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125F50);
  }

  return result;
}

uint64_t sub_1000B2264()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100125F60);
  sub_100007EBC(v0, qword_100125F60);
  return sub_1000DAFE4();
}

uint64_t sub_1000B22E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = v3;
  v6 = sub_1000D9DA4();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = sub_1000DC1D4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[8] = v7;
  v4[9] = v9;

  return _swift_task_switch(sub_1000B23E4, v7, v9);
}

uint64_t sub_1000B23E4()
{
  v1 = v0[4];
  v2 = *(v1 + qword_100125F88);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_10003AB9C();
  *v4 = v0;
  v4[1] = sub_1000B24E0;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_1000E6B70, v3, v5);
}

uint64_t sub_1000B24E0()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1000B2A44;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1000B25FC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000B25FC()
{
  v1 = v0[2];
  if (!sub_1000DC714())
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_6:
    if (qword_10011FB68 != -1)
    {
      swift_once();
    }

    v12 = v0[4];
    v13 = sub_1000DAFF4();
    sub_100007EBC(v13, qword_100125F60);
    v14 = v12;
    v15 = v1;
    v16 = sub_1000DAFD4();
    v17 = sub_1000DC4C4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[4];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      v21 = *(v18 + qword_100125F78);
      *(v19 + 4) = v21;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v15;
      *v20 = v21;
      v20[1] = v15;
      v22 = v15;
      v23 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error getting JournalEntryAssetFileAttachment.file as CKAsset for requested id %@. Record: %@", v19, 0x16u);
      sub_100007BC0(&qword_100120A80, &unk_1000E04B0);
      swift_arrayDestroy();
    }

    sub_1000B2E20();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v3 = [v2 fileURL];
  if (v3)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = v0[3];
    v8 = v3;
    sub_1000D9D74();
    swift_unknownObjectRelease();

    v9 = sub_100007BC0(&qword_1001260B0, &unk_1000E6B80);
    v10 = *(v9 + 48);
    (*(v5 + 32))(v7, v4, v6);
    *(v7 + v10) = v1;
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);

    v11 = v0[1];
    goto LABEL_12;
  }

  if (qword_10011FB68 != -1)
  {
    swift_once();
  }

  v26 = v0[4];
  v27 = sub_1000DAFF4();
  sub_100007EBC(v27, qword_100125F60);
  v28 = v26;
  v29 = sub_1000DAFD4();
  v30 = sub_1000DC4C4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v0[4];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = *(v31 + qword_100125F78);
    *(v32 + 4) = v34;
    *v33 = v34;
    v35 = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "ckAsset.fileURL is nil for requested recordID %@", v32, 0xCu);
    sub_10001E820(v33);
  }

  sub_1000B2E20();
  swift_allocError();
  *v36 = 1;
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_11:

  v11 = v0[1];
LABEL_12:

  return v11();
}

uint64_t sub_1000B2A44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B2AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1000B2AD4, 0, 0);
}

uint64_t sub_1000B2AD4()
{
  v1 = v0[20];
  v2 = *(v0[21] + qword_100125F78);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10003A5D0;
  v3 = swift_continuation_init();
  v0[17] = sub_100007BC0(&qword_100121A08, &qword_1000E19C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100097F90;
  v0[13] = &unk_100110DE8;
  v0[14] = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

void sub_1000B2C38()
{
  v1 = *(v0 + qword_100125F88);
}

id sub_1000B2C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttachmentDownloadOperation(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000B2CC0(uint64_t a1)
{
  v2 = *(a1 + qword_100125F88);
}

uint64_t type metadata accessor for AttachmentDownloadOperation(uint64_t a1)
{
  result = qword_100125FB8;
  if (!qword_100125FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B2D70(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001CAAC;

  return sub_1000B2AB0(a1, a2, v6);
}

unint64_t sub_1000B2E20()
{
  result = qword_1001260A8;
  if (!qword_1001260A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001260A8);
  }

  return result;
}

unint64_t sub_1000B2EA0()
{
  result = qword_1001260B8;
  if (!qword_1001260B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001260B8);
  }

  return result;
}

uint64_t sub_1000B2EF4()
{
  v0 = sub_1000DA844();
  sub_100007EF4(v0, qword_1001272F8);
  sub_100007EBC(v0, qword_1001272F8);
  return sub_1000DA834();
}

NSString sub_1000B2F40()
{
  result = sub_1000DBF04();
  qword_100127310 = result;
  return result;
}

uint64_t sub_1000B2F78()
{
  v0 = sub_1000DA134();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DA204();
  sub_100007EF4(v4, qword_100127318);
  sub_100007EBC(v4, qword_100127318);
  (*(v1 + 104))(v3, enum case for Calendar.Identifier.gregorian(_:), v0);
  sub_1000DA144();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000B3098@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000DA844();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_100046830(v2, v10, type metadata accessor for AssetAttachment.AssetType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1000B3858(v10, type metadata accessor for AssetAttachment.AssetType);
      v19 = 1;
      goto LABEL_9;
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {

    v10 += *(sub_100007BC0(&qword_1001223B0, &qword_1000E23B0) + 48);
  }

  sub_1000B3E78(v10, v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  sub_100046830(v16, v14, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000B3858(v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v18 = sub_1000D9DA4();
    (*(*(v18 - 8) + 32))(a1, v14, v18);
  }

  else
  {
    sub_1000DA834();
    sub_1000DA804();

    (*(v5 + 8))(v7, v4);
    sub_1000B3858(v16, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  }

  v19 = 0;
LABEL_9:
  v20 = sub_1000D9DA4();
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

uint64_t sub_1000B33EC()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_1001260C0);
  v1 = sub_100007EBC(v0, qword_1001260C0);
  if (qword_10011FA48 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_100127098);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B34B4()
{
  sub_1000B3858(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);

  return swift_deallocClassInstance();
}

uint64_t sub_1000B3568(uint64_t a1)
{
  result = type metadata accessor for AssetAttachment.AssetType(319);
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

void sub_1000B3630(uint64_t a1)
{
  sub_1000B3718(319, &qword_100126218, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  if (v1 <= 0x3F)
  {
    sub_1000B3718(319, &qword_100126220, sub_10008C55C);
    if (v2 <= 0x3F)
    {
      sub_1000B3764(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1000B3718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000B3764(uint64_t a1)
{
  if (!qword_100126228)
  {
    sub_100007C08(&qword_100121498, &unk_1000E7600);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100126228);
    }
  }
}

uint64_t sub_1000B37EC(uint64_t a1)
{
  result = sub_1000D9DA4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B3858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B38B8(void *a1)
{
  v2 = sub_100007BC0(&qword_1001217A0, &qword_1000E1880);
  __chkstk_darwin(v2);
  v4 = &v42 - v3;
  v5 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 filePath];
  if (v8)
  {
    v9 = v8;
    v43 = sub_1000DBF44();
    v44 = v10;
    v11 = [a1 index];
    v12 = [a1 name];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1000DBF44();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v26 = [objc_allocWithZone(NSString) initWithString:v9];

    v27 = [v26 lastPathComponent];
    if (!v27)
    {
      sub_1000DBF44();
      v27 = sub_1000DBF04();
    }

    v42 = v11;
    v28 = [objc_allocWithZone(NSString) initWithString:v27];

    v29 = [v28 stringByDeletingPathExtension];
    v30 = sub_1000DBF44();
    v32 = v31;

    if (v16)
    {
      if (v14 == 0x6567616D69 && v16 == 0xE500000000000000 || (sub_1000DCC74() & 1) != 0 || v14 == 0x6F65646976 && v16 == 0xE500000000000000 || (sub_1000DCC74() & 1) != 0)
      {

        *v7 = v43;
LABEL_17:
        v33 = v7;
LABEL_20:
        v33[1] = v44;
        type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        type metadata accessor for AssetAttachment(0);
        v34 = swift_allocObject();
        *(v34 + 16) = v42;
        sub_1000B3E78(v7, v34 + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
        result = v34;
        v36 = (v34 + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_fileNameID);
        *v36 = v30;
        v36[1] = v32;
        return result;
      }

      if (v14 == 0x6F69647561 && v16 == 0xE500000000000000)
      {

LABEL_34:
        *v7 = v43;
        goto LABEL_17;
      }

      v41 = sub_1000DCC74();

      if (v41)
      {

        goto LABEL_34;
      }
    }

    else
    {
    }

    v33 = (v7 + *(sub_100007BC0(&qword_1001223B0, &qword_1000E23B0) + 48));
    *v7 = v14;
    v7[1] = v16;
    *v33 = v43;
    goto LABEL_20;
  }

  if (qword_10011FB88 != -1)
  {
    swift_once();
  }

  v17 = sub_1000DAFF4();
  sub_100007EBC(v17, qword_1001260C0);
  v18 = a1;
  v19 = sub_1000DAFD4();
  v20 = sub_1000DC4C4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    *v21 = 136315138;
    v23 = [v18 id];
    if (v23)
    {
      v24 = v23;
      sub_1000DA0C4();

      v25 = sub_1000DA0E4();
      (*(*(v25 - 8) + 56))(v4, 0, 1, v25);
    }

    else
    {
      v37 = sub_1000DA0E4();
      (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
    }

    v38 = sub_1000DBF84();
    v40 = sub_10001A58C(v38, v39, &v45);

    *(v21 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v19, v20, "JournalEntryAssetFileAttachmentMO is missing filePath. ID: %s", v21, 0xCu);
    sub_100007FC0(v22);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000B3E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1000B3EF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VisitAsset(uint64_t a1)
{
  result = qword_100126328;
  if (!qword_100126328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B4040(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA714();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1000B4094(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure10VisitAsset_metadata) = a1;

  return result;
}

id sub_1000B40AC()
{
  v0 = sub_1000DA704();
  if (v1 >> 60 != 15)
  {
    v2 = v0;
    v3 = v1;
    sub_100008068(0, &qword_100126380, GEOFeatureStyleAttributes_ptr);
    v4 = sub_1000DC734();
    sub_100010500(v2, v3);
    if (v4)
    {
      return v4;
    }
  }

  v5 = sub_1000DA664();
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = v5;
    v9 = v6;
    sub_100008068(0, &qword_1001202C8, MKMapItem_ptr);
    v7 = sub_1000DC734();
    sub_100010500(v8, v9);
  }

  v4 = [v7 _styleAttributes];

  if (v4)
  {
    return v4;
  }

  else
  {
    return [objc_opt_self() markerStyleAttributes];
  }
}

uint64_t sub_1000B420C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v23[0] = a2;
  v23[1] = a1;
  v26 = a5;
  v27 = sub_100007BC0(&qword_100126388, &qword_1000E6DA0);
  __chkstk_darwin(v27);
  v8 = v23 - v7;
  v25 = sub_100007BC0(&qword_100126390, &qword_1000E6DA8);
  __chkstk_darwin(v25);
  v10 = v23 - v9;
  v11 = sub_100007BC0(&qword_100126398, &qword_1000E6DB0);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  v24 = sub_100007BC0(&qword_1001263A0, &qword_1000E6DB8);
  __chkstk_darwin(v24);
  v15 = v23 - v14;
  v16 = sub_1000DB4F4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    *v8 = v23[0];
    *(v8 + 1) = 0;
    v8[16] = 0;
    v21 = sub_100007BC0(&qword_1001263A8, &qword_1000E6DC0);
    sub_1000B4738(1, &v8[*(v21 + 44)], a3);
    sub_100007F58(v8, v13, &qword_100126388, &qword_1000E6DA0);
    swift_storeEnumTagMultiPayload();
    sub_1000B51FC(&qword_1001263B8, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    sub_1000B5198();
    sub_1000DB464();
    sub_100007F58(v15, v10, &qword_1001263A0, &qword_1000E6DB8);
    swift_storeEnumTagMultiPayload();
    sub_1000B50DC();
    sub_1000DB464();
    sub_1000080B0(v15, &qword_1001263A0, &qword_1000E6DB8);
    return sub_1000080B0(v8, &qword_100126388, &qword_1000E6DA0);
  }

  if (a4 == 1)
  {
    *v8 = v23[0];
    *(v8 + 1) = 0;
    v8[16] = 0;
    v20 = sub_100007BC0(&qword_1001263A8, &qword_1000E6DC0);
    sub_1000B4738(0, &v8[*(v20 + 44)], a3);
    sub_100007F58(v8, v10, &qword_100126388, &qword_1000E6DA0);
    swift_storeEnumTagMultiPayload();
    sub_1000B50DC();
    sub_1000B5198();
    sub_1000DB464();
    return sub_1000080B0(v8, &qword_100126388, &qword_1000E6DA0);
  }

  sub_1000DB504();
  (*(v17 + 16))(v13, v19, v16);
  swift_storeEnumTagMultiPayload();
  sub_1000B51FC(&qword_1001263B8, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
  sub_1000B5198();
  sub_1000DB464();
  sub_100007F58(v15, v10, &qword_1001263A0, &qword_1000E6DB8);
  swift_storeEnumTagMultiPayload();
  sub_1000B50DC();
  sub_1000DB464();
  sub_1000080B0(v15, &qword_1001263A0, &qword_1000E6DB8);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_1000B4738@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v56 = a2;
  v52 = sub_100007BC0(&qword_1001263C8, &qword_1000E6DC8);
  __chkstk_darwin(v52);
  v53 = &v43 - v5;
  v6 = sub_100007BC0(&qword_1001263D0, &qword_1000E6DD0);
  v7 = __chkstk_darwin(v6 - 8);
  v55 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v43 - v9;
  v10 = sub_1000DB514();
  *&v49 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007BC0(&qword_1001263D8, &qword_1000E6DD8);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_1000DB4F4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100007BC0(&qword_1001263E0, &qword_1000E6DE0);
  v21 = __chkstk_darwin(v20 - 8);
  v50 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v43 - v23;
  v51 = a1;
  v44 = v12;
  if (a1)
  {
    sub_1000DB504();
    (*(v17 + 16))(v15, v19, v16);
    swift_storeEnumTagMultiPayload();
    sub_1000B51FC(&qword_1001263B8, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    sub_1000B51FC(&qword_1001263E8, &type metadata accessor for LabelStyleConfiguration.Title, &protocol conformance descriptor for LabelStyleConfiguration.Title);
    v25 = v24;
    sub_1000DB464();
    v26 = *(v17 + 8);
    v27 = v17;
    v28 = v19;
    v26(v19, v16);
    v29 = v49;
  }

  else
  {
    v48 = v17;
    v28 = v19;
    sub_1000DB524();
    v29 = v49;
    (*(v49 + 16))(v15, v12, v10);
    swift_storeEnumTagMultiPayload();
    sub_1000B51FC(&qword_1001263B8, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    sub_1000B51FC(&qword_1001263E8, &type metadata accessor for LabelStyleConfiguration.Title, &protocol conformance descriptor for LabelStyleConfiguration.Title);
    v30 = v12;
    v25 = v24;
    sub_1000DB464();
    (*(v29 + 8))(v30, v10);
    v27 = v48;
  }

  v31 = v10;
  v32 = v16;
  if (a3 == INFINITY)
  {
    LOBYTE(v74) = 1;
    v73 = 0;
    v57 = 0;
    v58 = 1;
    v64 = 0;
LABEL_6:
    sub_100007BC0(&qword_1001263F0, &qword_1000E6DE8);
    sub_1000B5244();
    sub_1000DB464();
    v47 = v66;
    v49 = v65;
    v45 = v68;
    v46 = v67;
    LODWORD(v48) = v69;
    goto LABEL_9;
  }

  if (a3 != 0.0)
  {
    sub_1000DB994();
    sub_1000DB184();
    v72 = 1;
    v71 = v75;
    v70 = v77;
    v73 = 1;
    v57 = 0;
    v58 = 1;
    v59 = v74;
    v60 = v75;
    v61 = v76;
    v62 = v77;
    v63 = v78;
    v64 = 1;
    goto LABEL_6;
  }

  v49 = 0u;
  LODWORD(v48) = 255;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
LABEL_9:
  if (v51)
  {
    v33 = v44;
    sub_1000DB524();
    (*(v29 + 16))(v53, v33, v31);
    swift_storeEnumTagMultiPayload();
    sub_1000B51FC(&qword_1001263E8, &type metadata accessor for LabelStyleConfiguration.Title, &protocol conformance descriptor for LabelStyleConfiguration.Title);
    sub_1000B51FC(&qword_1001263B8, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    v34 = v54;
    sub_1000DB464();
    (*(v29 + 8))(v33, v31);
  }

  else
  {
    sub_1000DB504();
    (*(v27 + 16))(v53, v28, v16);
    swift_storeEnumTagMultiPayload();
    sub_1000B51FC(&qword_1001263E8, &type metadata accessor for LabelStyleConfiguration.Title, &protocol conformance descriptor for LabelStyleConfiguration.Title);
    sub_1000B51FC(&qword_1001263B8, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    v34 = v54;
    sub_1000DB464();
    (*(v27 + 8))(v28, v32);
  }

  v35 = v50;
  sub_100007F58(v25, v50, &qword_1001263E0, &qword_1000E6DE0);
  v36 = v55;
  sub_100007F58(v34, v55, &qword_1001263D0, &qword_1000E6DD0);
  v37 = v56;
  sub_100007F58(v35, v56, &qword_1001263E0, &qword_1000E6DE0);
  v38 = sub_100007BC0(&qword_100126400, &qword_1000E6DF0);
  v39 = v37 + *(v38 + 48);
  v40 = v47;
  *v39 = v49;
  *(v39 + 16) = v40;
  v41 = v45;
  *(v39 + 32) = v46;
  *(v39 + 48) = v41;
  *(v39 + 64) = v48;
  sub_100007F58(v36, v37 + *(v38 + 64), &qword_1001263D0, &qword_1000E6DD0);
  sub_1000080B0(v34, &qword_1001263D0, &qword_1000E6DD0);
  sub_1000080B0(v25, &qword_1001263E0, &qword_1000E6DE0);
  sub_1000080B0(v36, &qword_1001263D0, &qword_1000E6DD0);
  return sub_1000080B0(v35, &qword_1001263E0, &qword_1000E6DE0);
}

unint64_t sub_1000B50DC()
{
  result = qword_1001263B0;
  if (!qword_1001263B0)
  {
    sub_100007C08(&qword_1001263A0, &qword_1000E6DB8);
    sub_1000B51FC(&qword_1001263B8, &type metadata accessor for LabelStyleConfiguration.Icon, &protocol conformance descriptor for LabelStyleConfiguration.Icon);
    sub_1000B5198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001263B0);
  }

  return result;
}

unint64_t sub_1000B5198()
{
  result = qword_1001263C0;
  if (!qword_1001263C0)
  {
    sub_100007C08(&qword_100126388, &qword_1000E6DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001263C0);
  }

  return result;
}

uint64_t sub_1000B51FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B5244()
{
  result = qword_1001263F8;
  if (!qword_1001263F8)
  {
    sub_100007C08(&qword_1001263F0, &qword_1000E6DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001263F8);
  }

  return result;
}

uint64_t sub_1000B52CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000B5318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1000B535C(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1000B5374(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1000B53A0()
{
  result = qword_100126408;
  if (!qword_100126408)
  {
    sub_100007C08(&qword_100126410, &qword_1000E6E08);
    sub_1000B50DC();
    sub_1000B5198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100126408);
  }

  return result;
}

id sub_1000B5470(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_1000B54B4()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption1;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = sub_100062DB0(UIFontWeightBold);
  qword_100127360 = v3;
}

void sub_1000B553C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EBF90;
  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD00000000000003ALL, v5);
  v4 = v3;

  qword_100127368 = v2;
  unk_100127370 = v4;
}

void sub_1000B55E0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EBF50;
  v6._countAndFlagsBits = 0xD000000000000038;
  v6._object = 0x80000001000EBEF0;
  v8._object = 0x80000001000EBF30;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD000000000000010;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD00000000000003DLL, v5);
  v4 = v3;

  qword_100127378 = v2;
  unk_100127380 = v4;
}

void sub_1000B56AC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EC050;
  v8._countAndFlagsBits = 0x25209480E2204025;
  v6._object = 0x80000001000EC030;
  v6._countAndFlagsBits = 0x1000000000000011;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._object = 0xA900000000000040;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD000000000000021, v5);
  v4 = v3;

  qword_100127388 = v2;
  unk_100127390 = v4;
}

void sub_1000B5770()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EBFF0;
  v6._object = 0x80000001000EBFD0;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD000000000000034, v5);
  v4 = v3;

  qword_100127398 = v2;
  unk_1001273A0 = v4;
}

void sub_1000B5828()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EC080;
  v6._countAndFlagsBits = 0x7373412065766F4DLL;
  v6._object = 0xEA00000000007465;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD000000000000021, v5);
  v4 = v3;

  qword_1001273A8 = v2;
  unk_1001273B0 = v4;
}

void sub_1000B58DC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000EC0D0;
  v6._countAndFlagsBits = 0x676E69707954;
  v6._object = 0xE600000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1000D9BC4(v6, v7, v1, v8, 0xD00000000000001DLL, v5);
  v4 = v3;

  qword_1001273B8 = v2;
  unk_1001273C0 = v4;
}

void sub_1000B5988()
{
  v0 = sub_1000DBF04();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  qword_1001273C8 = v1;
}

double *sub_1000B5AB0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1000DA084();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100017AD8(0, *(v23 + 2) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        if (v26 >= v25 >> 1)
        {
          sub_100017AD8((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 2) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

void sub_1000B5D80(uint64_t a1)
{
  v3 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v28 = v5;
    v25 = v1;
    v33 = _swiftEmptyArrayStorage;
    sub_100017A74(0, v6, 0);
    v7 = v33;
    v32 = a1 + 64;
    v8 = sub_1000DC8E4();
    v9 = 0;
    v26 = a1 + 72;
    v27 = v6;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v32 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      v31 = *(a1 + 36);
      v12 = *(*(a1 + 48) + v8);
      v13 = *(*(a1 + 56) + 8 * v8);
      v14 = v28;
      sub_1000DA0D4();
      v15 = v30;
      *(v14 + *(v30 + 20)) = v12;
      *(v14 + *(v15 + 24)) = v13;
      v33 = v7;
      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v17 >= v16 >> 1)
      {
        sub_100017A74((v16 > 1), v17 + 1, 1);
        v7 = v33;
      }

      *(v7 + 2) = v17 + 1;
      sub_1000CDBD8(v14, v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v17, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_22;
      }

      v18 = *(v32 + 8 * v11);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v31 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v10 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v11 << 6;
        v21 = v11 + 1;
        v22 = (v26 + 8 * v11);
        while (v21 < (v10 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_100020EA0(v8, v31, 0);
            v10 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_100020EA0(v8, v31, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1000B6068(uint64_t a1)
{
  v46 = sub_100007BC0(&qword_100126740, &qword_1000E7018);
  v3 = __chkstk_darwin(v46);
  v55 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v45 = &v38 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - v8;
  __chkstk_darwin(v7);
  v44 = &v38 - v10;
  v11 = sub_100007BC0(&qword_1001206A0, &qword_1000E01F0);
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v56 = &v38 - v12;
  v13 = sub_100020B38();
  if (v13)
  {
    v14 = v13;
    v57 = _swiftEmptyArrayStorage;
    sub_100017AB8(0, v13 & ~(v13 >> 63), 0);
    v15 = v57;
    v16 = *(a1 + *(sub_100007BC0(&qword_100120AC8, &qword_1000E06E8) + 32));
    v47 = v16 + 64;
    v17 = sub_1000DC8E4();
    if ((v14 & 0x8000000000000000) == 0)
    {
      v40 = v16;
      v41 = a1;
      v38 = v1;
      v39 = v14;
      v18 = 0;
      v19 = v47;
      while (!__OFADD__(v18, 1))
      {
        if ((v17 & 0x8000000000000000) != 0 || v17 >= 1 << *(v16 + 32))
        {
          goto LABEL_17;
        }

        if ((*(v19 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_18;
        }

        v51 = 1 << v17;
        v52 = v17 >> 6;
        v48 = v18 + 1;
        v49 = v18;
        v53 = v17;
        v54 = v15;
        v20 = *(v16 + 56);
        v21 = *(*(v16 + 48) + 8 * v17);
        v50 = *(v16 + 36);
        v22 = (v20 + 32 * v17);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = v22[3];

        v27 = v44;
        sub_1000D5E8C(v21, v44);
        sub_10001865C(v27, v9, &qword_100120AE8, &unk_1000E38A0);
        v28 = v46;
        v29 = &v9[*(v46 + 48)];
        *v29 = v24;
        *(v29 + 1) = v23;
        v30 = v55;
        *(v29 + 2) = v25;
        *(v29 + 3) = v26;
        v31 = *(v43 + 48);
        v32 = v45;
        sub_100007F58(v9, v45, &qword_100126740, &qword_1000E7018);

        sub_100007BC0(&qword_100120AE8, &unk_1000E38A0);
        sub_1000D9FB4();
        sub_1000DA014();
        sub_1000080B0(v32, &qword_100120AE8, &unk_1000E38A0);
        sub_100007F58(v9, v30, &qword_100126740, &qword_1000E7018);
        v33 = *(v30 + *(v28 + 48) + 8);

        if (v33 < 0)
        {
          goto LABEL_19;
        }

        v34 = v55;
        v35 = (v56 + v31);
        *v35 = 0;
        v35[1] = v33;
        sub_1000080B0(v34, &qword_100120AE8, &unk_1000E38A0);
        sub_1000080B0(v9, &qword_100126740, &qword_1000E7018);
        v15 = v54;
        v57 = v54;
        v37 = *(v54 + 2);
        v36 = *(v54 + 3);
        if (v37 >= v36 >> 1)
        {
          sub_100017AB8((v36 > 1), v37 + 1, 1);
          v15 = v57;
        }

        *(v15 + 2) = v37 + 1;
        sub_10001865C(v56, v15 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37, &qword_1001206A0, &qword_1000E01F0);
        v16 = v40;
        if (v53 >= -(-1 << *(v40 + 32)))
        {
          goto LABEL_20;
        }

        v19 = v47;
        if ((*(v47 + 8 * v52) & v51) == 0)
        {
          goto LABEL_21;
        }

        if (v50 != *(v40 + 36))
        {
          goto LABEL_22;
        }

        v17 = sub_1000DC904();
        v18 = v49 + 1;
        if (v48 == v39)
        {
          return;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1000B6534(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v5 = sub_100007BC0(&qword_1001206A0, &qword_1000E01F0);
  v33 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v38 = &v31 - v6;
  v7 = *(a3 + 16);
  if (v7)
  {
    v40 = _swiftEmptyArrayStorage;
    sub_100017AB8(0, v7, 0);
    v8 = v40;
    v9 = a3 + 64;
    v10 = sub_1000DC8E4();
    v11 = 0;
    v31 = a3 + 72;
    v32 = v7;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a3 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v9 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v37 = v11;
      v15 = *(a3 + 36);
      v16 = a3;
      v17 = *(*(a3 + 56) + 8 * v10);
      v39[0] = *(*(a3 + 48) + 8 * v10);
      v39[1] = v17;
      v34(v39);
      v36 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v18 = v8;
      v40 = v8;
      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_100017AB8((v19 > 1), v20 + 1, 1);
        v18 = v40;
      }

      *(v18 + 2) = v20 + 1;
      v8 = v18;
      sub_10001865C(v38, v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v20, &qword_1001206A0, &qword_1000E01F0);
      v12 = 1 << *(v16 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v21 = *(v9 + 8 * v14);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v16;
      v22 = v15;
      if (v15 != *(v16 + 36))
      {
        goto LABEL_26;
      }

      v23 = v21 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v36;
        v13 = v32;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v13 = v32;
        v26 = (v31 + 8 * v14);
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            v29 = v36;
            sub_100020EA0(v10, v22, 0);
            v3 = v29;
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        v30 = v36;
        sub_100020EA0(v10, v22, 0);
        v3 = v30;
      }

LABEL_4:
      v11 = v37 + 1;
      v10 = v12;
      if (v37 + 1 == v13)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }
}

id sub_1000B6850()
{
  v1 = [*(v0 + 16) newBackgroundContext];
  v2 = sub_1000DBF04();
  [v1 setName:v2];

  v3 = [objc_opt_self() mergeByPropertyStoreTrumpMergePolicy];
  [v1 setMergePolicy:v3];

  [v1 setAutomaticallyMergesChangesFromParent:1];
  sub_1000DC654();
  return v1;
}

uint64_t sub_1000B6910()
{
  v1[459] = v0;
  v1[465] = type metadata accessor for InsightsDataManager.Streaks(0);
  v1[471] = swift_task_alloc();
  v1[472] = swift_task_alloc();
  v1[473] = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v1[474] = swift_task_alloc();
  v1[475] = swift_task_alloc();
  v1[476] = swift_task_alloc();
  sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v1[477] = swift_task_alloc();
  v2 = sub_1000DA084();
  v1[478] = v2;
  v1[479] = *(v2 - 8);
  v1[480] = swift_task_alloc();
  v1[481] = swift_task_alloc();
  sub_1000DC224();
  v1[482] = sub_1000DC214();
  v4 = sub_1000DC1D4();
  v1[483] = v4;
  v1[484] = v3;

  return _swift_task_switch(sub_1000B6AD0, v4, v3);
}

uint64_t sub_1000B6AD0(uint64_t a1)
{
  v2 = v1[479];
  v3 = v1[478];
  v4 = v1[477];
  v5 = v1[459];
  sub_1000DA054();
  swift_getKeyPath();
  v1[485] = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager___observationRegistrar;
  v1[453] = v5;
  v1[486] = sub_1000C4E8C(&qword_100120AB8, type metadata accessor for InsightsDataManager, &unk_1000E0C38);
  sub_1000DA294();

  v6 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__referenceDate;
  swift_beginAccess();
  sub_100007F58(v5 + v6, v4, &qword_1001203B8, &qword_1000E0460);
  v7 = *(v2 + 48);
  if (v7(v4, 1, v3) == 1)
  {
    v8 = v1[478];
    v9 = v1[477];
    (*(v1[479] + 16))(v1[480], v1[481], v8);
    if (v7(v9, 1, v8) != 1)
    {
      sub_1000080B0(v1[477], &qword_1001203B8, &qword_1000E0460);
    }
  }

  else
  {
    (*(v1[479] + 32))(v1[480], v1[477], v1[478]);
  }

  v10 = v1[480];
  v11 = v1[459];
  v12 = swift_task_alloc();
  v1[487] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  swift_asyncLet_begin();
  v13 = swift_task_alloc();
  v1[488] = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  swift_asyncLet_begin();
  v14 = swift_task_alloc();
  v1[489] = v14;
  *(v14 + 16) = v11;
  *(v14 + 24) = v10;
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  v15 = v1[476];

  return _swift_asyncLet_get(v1 + 162, v15, sub_1000B6DB0, v1 + 418);
}

uint64_t sub_1000B6DCC()
{
  v1 = v0[480];
  v2 = v0[475];
  v3 = v0[459];
  sub_1000C5228(v0[476], v2, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v4 = swift_task_alloc();
  v0[490] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 407, sub_1000B6EA8, v0 + 424);
}

uint64_t sub_1000B6EA8()
{
  v1 = *(v0 + 3800);
  v2 = *(v0 + 3792);
  *(v0 + 3928) = *(v0 + 3256);
  *(v0 + 3936) = *(v0 + 3264);
  *(v0 + 3952) = *(v0 + 3280);
  sub_1000C5228(v1, v2, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

  v3 = *(v0 + 3776);

  return _swift_asyncLet_get(v0 + 1936, v3, sub_1000B6F4C, v0 + 3440);
}

uint64_t sub_1000B6F4C()
{
  sub_1000C5228(*(v0 + 3776), *(v0 + 3768), type metadata accessor for InsightsDataManager.Streaks);

  return _swift_asyncLet_get(v0 + 656, v0 + 3288, sub_1000B6FD0, v0 + 3488);
}

uint64_t sub_1000B6FD0()
{
  v0[495] = v0[411];
  v0[496] = v0[412];
  v0[497] = v0[413];
  v0[498] = v0[414];

  return _swift_asyncLet_get(v0 + 322, v0 + 423, sub_1000B7068, v0 + 442);
}

uint64_t sub_1000B7084()
{
  v14 = *(v0 + 3976);
  v15 = *(v0 + 3984);
  v12 = *(v0 + 3960);
  v13 = *(v0 + 3968);
  v1 = *(v0 + 3952);
  v2 = *(v0 + 3944);
  v9 = *(v0 + 3928);
  v10 = *(v0 + 3792);
  v11 = *(v0 + 3768);
  v3 = *(v0 + 3672);
  v16 = *(v0 + 3384);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  *(v0 + 3432) = v3;

  sub_1000DA284();

  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v10;
  *(v0 + 3480) = v3;
  sub_1000DA284();

  sub_1000C922C(v10, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  sub_1000227D4(v11);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v12;
  v6[4] = v13;
  v6[5] = v14;
  v6[6] = v15;
  *(v0 + 3528) = v3;
  sub_1000DA284();

  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v16;
  *(v0 + 3576) = v3;
  sub_1000DA284();

  return _swift_asyncLet_finish(v0 + 656, v0 + 3288, sub_1000B7398, v0 + 3584);
}

uint64_t sub_1000B73B4()
{
  v1 = *(v0 + 3800);

  sub_1000C922C(v1, type metadata accessor for InsightsDataManager.EntrySummaryGroup);

  return _swift_asyncLet_finish(v0 + 2576, v0 + 3384, sub_1000B7440, v0 + 3632);
}

uint64_t sub_1000B7498()
{

  v1 = *(v0 + 3776);

  return _swift_asyncLet_finish(v0 + 1936, v1, sub_1000B7504, v0 + 3728);
}

uint64_t sub_1000B7520()
{

  v1 = *(v0 + 3808);

  return _swift_asyncLet_finish(v0 + 1296, v1, sub_1000B758C, v0 + 3216);
}

uint64_t sub_1000B75A8()
{
  v1 = v0[481];
  v2 = v0[480];
  v3 = v0[479];
  v4 = v0[478];
  v5 = v0[459];

  sub_1000B84A8(v1, v5);
  v6 = *(v3 + 8);
  v6(v1, v4);
  v6(v2, v4);

  v7 = v0[1];

  return v7();
}

char *sub_1000B76F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v37 = sub_100007BC0(&qword_100121B98, &qword_1000E1CF0);
  v8 = __chkstk_darwin(v37);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v35 = &v34 - v11;
  v12 = sub_1000DA084();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v34 - v16;
  v39 = sub_100007BC0(&qword_100120AE8, &unk_1000E38A0);
  v18 = __chkstk_darwin(v39);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v34 - v21;
  v34 = sub_100007BC0(a2, a3);
  *(a4 + *(v34 + 32)) = &_swiftEmptyDictionarySingleton;
  v36 = a4;
  sub_1000C5228(a1, a4, type metadata accessor for UniformDateBins);
  sub_1000D5E8C(0, v22);
  v23 = *(v13 + 16);
  v23(v17, v22, v12);
  sub_1000080B0(v22, &qword_100120AE8, &unk_1000E38A0);
  v24 = *(a1 + *(type metadata accessor for UniformDateBins(0) + 24));
  result = (v24 - 1);
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1000D5E8C(result, v20);
    v23(v38, &v20[*(v39 + 36)], v12);
    sub_1000080B0(v20, &qword_100120AE8, &unk_1000E38A0);
    sub_1000C4E8C(&qword_100120AE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v26 = sub_1000DBE14();
    result = sub_1000C922C(a1, type metadata accessor for UniformDateBins);
    if (v26)
    {
      v27 = v13;
      v28 = *(v13 + 32);
      v29 = v35;
      v28(v35, v17, v12);
      v30 = v37;
      v28((v29 + *(v37 + 48)), v38, v12);
      sub_100007F58(v29, v10, &qword_100121B98, &qword_1000E1CF0);
      v31 = *(v30 + 48);
      v32 = v36 + *(v34 + 28);
      v28(v32, v10, v12);
      v33 = *(v27 + 8);
      v33(&v10[v31], v12);
      sub_10001865C(v29, v10, &qword_100121B98, &qword_1000E1CF0);
      v28((v32 + *(v39 + 36)), &v10[*(v30 + 48)], v12);
      return (v33)(v10, v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B7B30@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a4;
  v69 = a5;
  v81 = a3;
  v82 = a2;
  v83 = a1;
  v67 = a6;
  v6 = sub_1000D9B24();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalendarBinningUnit(0);
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007BC0(&qword_100126838, &qword_1000E7208);
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - v11;
  v13 = sub_1000DA084();
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = __chkstk_darwin(v13);
  v62 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v62 - v16;
  v17 = sub_1000DA204();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100007BC0(&qword_100120AE8, &unk_1000E38A0);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = sub_1000DA1F4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for UniformDateBins(0);
  v28 = __chkstk_darwin(v63);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v65 = &v62 - v31;
  v32 = *(v25 + 16);
  v74 = v24;
  v33 = v24;
  v34 = v20;
  v72 = v32;
  v32(v27, v83, v33);
  sub_100007F58(v82, v23, &qword_100120AE8, &unk_1000E38A0);
  v66 = v18;
  v35 = *(v18 + 16);
  v80 = v17;
  v70 = v35;
  v35(v20, v81, v17);
  v36 = *(v87 + 56);
  v87 += 56;
  v64 = v36;
  v36(v30, 1, 1, v88);
  v78 = v23;
  v79 = v27;
  sub_1000DA154();
  v37 = v12;
  v38 = sub_1000D99F4();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 48))(v12, 1, v38);
  v71 = v25;
  v41 = v34;
  if (v40 == 1)
  {
    sub_1000080B0(v37, &qword_100126838, &qword_1000E7208);
    (*(v85 + 16))(v84, v78, v86);
  }

  else
  {
    v42 = v62;
    sub_1000D99E4();
    (*(v39 + 8))(v37, v38);
    (*(v85 + 32))(v84, v42, v86);
  }

  v43 = v73;
  v44 = v74;
  v45 = v72;
  v72(v73, v79, v74);
  v46 = v88;
  (*(v85 + 16))(v43 + *(v88 + 20), v84, v86);
  v47 = v43 + *(v46 + 24);
  v62 = v41;
  v70(v47, v41, v80);
  sub_100007BC0(&qword_100121880, &unk_1000E7830);
  v48 = v71;
  v49 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1000DFEF0;
  v45(v50 + v49, v43, v44);
  sub_10003921C(v50);
  swift_setDeallocating();
  v72 = *(v48 + 8);
  (v72)(v50 + v49, v44);
  swift_deallocClassInstance();
  v51 = v75;
  v52 = v78;
  sub_1000DA164();

  v71 = sub_1000D9AF4();
  LOBYTE(v50) = v53;
  result = (*(v76 + 8))(v51, v77);
  if (v50)
  {
    __break(1u);
  }

  else
  {
    v55 = *(v63 + 20);
    v76 = *(v63 + 24);
    v77 = v55;
    v56 = v52;
    v57 = sub_1000D69EC(v52);
    (*(v85 + 8))(v84, v86);
    v58 = *(v66 + 8);
    v59 = v80;
    v58(v62, v80);
    sub_1000080B0(v56, &qword_100120AE8, &unk_1000E38A0);
    v60 = v72;
    (v72)(v79, v44);
    sub_1000080B0(v30, &qword_100126750, &unk_1000E7610);
    sub_1000CDBD8(v43, v30, type metadata accessor for CalendarBinningUnit);
    v64(v30, 0, 1, v88);
    *&v30[v77] = v71;
    *&v30[v76] = v57;
    v61 = v65;
    sub_1000CDBD8(v30, v65, type metadata accessor for UniformDateBins);
    sub_1000B76F4(v61, v68, v69, v67);
    v58(v81, v59);
    sub_1000080B0(v82, &qword_100120AE8, &unk_1000E38A0);
    return v60(v83, v44);
  }

  return result;
}

uint64_t sub_1000B8398(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 32 * a2;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    *result = *v6;
    *(result + 16) = v7;
    *(result + 24) = v8;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1000B8428()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100126710);
  sub_100007EBC(v0, qword_100126710);
  return sub_1000DAFE4();
}

uint64_t sub_1000B84A8(uint64_t a1, uint64_t a2)
{
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  v4 = Update - 8;
  __chkstk_darwin(Update);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000DA084();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000DA054();
  sub_1000D9FB4();
  v12 = v11;
  (*(v8 + 16))(v6, v10, v7);
  v13 = *(a2 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager_options);

  v14 = sub_1000C8E90(&off_10010D378, v13);
  *&v6[*(v4 + 28)] = v12;
  *&v6[*(v4 + 32)] = v14;
  swift_getKeyPath();
  v21 = a2;
  v22 = v6;
  v23 = a2;
  sub_1000C4E8C(&qword_100120AB8, type metadata accessor for InsightsDataManager, &unk_1000E0C38);
  sub_1000DA284();

  sub_1000C922C(v6, type metadata accessor for InsightsDataManager.LastUpdate);
  sub_100020128();
  if (qword_10011FBE8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000DAFF4();
  sub_100007EBC(v15, qword_100126710);
  v16 = sub_1000DAFD4();
  v17 = sub_1000DC4E4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v16, v17, "Insights update took %g seconds", v18, 0xCu);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000B87B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v3[9] = type metadata accessor for UniformDateBins(0);
  v3[10] = swift_task_alloc();
  v4 = sub_1000DA204();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000B88AC, 0, 0);
}

uint64_t sub_1000B88AC()
{
  *(v0 + 112) = sub_1000DC224();
  *(v0 + 120) = sub_1000DC214();
  v2 = sub_1000DC1D4();

  return _swift_task_switch(sub_1000B8944, v2, v1);
}

uint64_t sub_1000B8944()
{
  v1 = *(v0 + 56);

  *(v0 + 128) = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager_options);

  return _swift_task_switch(sub_1000B89CC, 0, 0);
}

uint64_t sub_1000B89CC()
{
  v1 = sub_1000C9638(&off_10010D748, v0[16]);

  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[6];
    v5 = type metadata accessor for CalendarBinningUnit(0);
    v6 = *(*(v5 - 8) + 56);
    v6(v2, 1, 1, v5);
    *(v2 + *(v3 + 20)) = 0;
    *(v2 + *(v3 + 24)) = 1;
    sub_1000B76F4(v2, &qword_100120AC8, &qword_1000E06E8, v4);
    v7 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
    v8 = v4 + v7[5];
    *v8 = 0;
    *(v8 + 8) = 1;
    v9 = v7[6];
    v6(v2, 1, 1, v5);
    *(v2 + *(v3 + 20)) = 0;
    *(v2 + *(v3 + 24)) = 1;
    sub_1000B76F4(v2, &qword_100120AC8, &qword_1000E06E8, v4 + v9);
    v10 = v7[7];
    v6(v2, 1, 1, v5);
    *(v2 + *(v3 + 20)) = 0;
    *(v2 + *(v3 + 24)) = 1;
    sub_1000B76F4(v2, &qword_100120AC8, &qword_1000E06E8, v4 + v10);
    v11 = v4 + v7[8];
    *v11 = 0;
    *(v11 + 8) = 1;
    sub_1000D9FA4();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v0[17] = sub_1000DC214();
    v15 = sub_1000DC1D4();

    return _swift_task_switch(sub_1000B8C40, v15, v14);
  }
}

uint64_t sub_1000B8C40()
{

  *(v0 + 144) = sub_100022B58();

  return _swift_task_switch(sub_1000B8CB4, 0, 0);
}

uint64_t sub_1000B8CB4(uint64_t a1)
{
  *(v1 + 152) = sub_1000DC214();
  v3 = sub_1000DC1D4();

  return _swift_task_switch(sub_1000B8D40, v3, v2);
}

uint64_t sub_1000B8D40()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[7];

  swift_getKeyPath();
  v0[5] = v4;
  sub_1000C4E8C(&qword_100120AB8, type metadata accessor for InsightsDataManager, &unk_1000E0C38);
  sub_1000DA294();

  v5 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__calendar;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1000B8EB4;
  v7 = v0[18];
  v8 = v0[13];
  v9 = v0[8];
  v10 = v0[6];

  return sub_1000B9054(v10, v7, v8, v9);
}

uint64_t sub_1000B8EB4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *v0;

  (*(v3 + 8))(v2, v4);

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1000B9054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = _s14descr10010BBE9V5MonthVMa(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1000DC684();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1000DA204();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v4[14] = *(v8 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = sub_100007BC0(&qword_1001267F0, &qword_1000E71A0);
  v4[17] = swift_task_alloc();
  v9 = sub_1000DA084();
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v4[20] = *(v10 + 64);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = sub_100007BC0(&qword_1001267F8, &qword_1000E71A8);
  v4[24] = swift_task_alloc();
  v4[25] = sub_100007BC0(&qword_100126800, &qword_1000E71B0);
  v4[26] = swift_task_alloc();
  v4[27] = sub_100007BC0(&qword_100126808, &qword_1000E71B8);
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for UniformDateBins(0);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000B9368, 0, 0);
}

uint64_t sub_1000B9368()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v25 = *(v0 + 168);
  v28 = *(v0 + 160);
  v33 = *(v0 + 152);
  v23 = *(v0 + 144);
  v24 = *(v0 + 104);
  v26 = *(v0 + 96);
  v27 = *(v0 + 120);
  v32 = *(v0 + 88);
  v30 = *(v0 + 80);
  v31 = *(v0 + 72);
  v21 = *(v0 + 40);
  v22 = *(v0 + 32);
  v3 = *(v0 + 16);
  v29 = *(v0 + 24);
  v4 = type metadata accessor for CalendarBinningUnit(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  *(v2 + *(v1 + 20)) = 0;
  *(v2 + *(v1 + 24)) = 1;
  sub_1000B76F4(v2, &qword_100120AC8, &qword_1000E06E8, v3);
  v6 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v7 = v3 + v6[5];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v6[6];
  *(v0 + 288) = v8;
  v5(v2, 1, 1, v4);
  *(v2 + *(v1 + 20)) = 0;
  *(v2 + *(v1 + 24)) = 1;
  sub_1000B76F4(v2, &qword_100120AC8, &qword_1000E06E8, v3 + v8);
  v9 = v6[7];
  *(v0 + 292) = v9;
  v5(v2, 1, 1, v4);
  *(v2 + *(v1 + 20)) = 0;
  *(v2 + *(v1 + 24)) = 1;
  sub_1000B76F4(v2, &qword_100120AC8, &qword_1000E06E8, v3 + v9);
  v10 = v3 + v6[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + 296) = v6[9];
  sub_1000D9FA4();
  (*(v33 + 16))(v25, v21, v23);
  (*(v24 + 16))(v27, v22, v26);
  v11 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v12 = (v28 + *(v24 + 80) + v11) & ~*(v24 + 80);
  v13 = swift_allocObject();
  *(v0 + 248) = v13;
  *(v13 + 16) = v29;
  v14 = *(v33 + 32);
  *(v0 + 256) = v14;
  *(v0 + 264) = (v33 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v14(v13 + v11, v25, v23);
  (*(v24 + 32))(v13 + v12, v27, v26);
  (*(v30 + 104))(v32, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v31);
  v15 = v29;
  v16 = swift_task_alloc();
  *(v0 + 272) = v16;
  *v16 = v0;
  v16[1] = sub_1000B96F8;
  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 88);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v17, v19, sub_1000CDA64, v13, v18);
}

uint64_t sub_1000B96F8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 280) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000B9EF0;
  }

  else
  {
    v5 = sub_1000B988C;
  }

  return _swift_task_switch(v5, 0, 0);
}

void *sub_1000B988C()
{
  v75 = v0[32];
  v1 = v0[28];
  v72 = v0[27];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v7[12];
  v9 = v7[16];
  v10 = v7[20];
  sub_10001865C(v6, v1, &qword_100126808, &qword_1000E71B8);
  sub_10001865C(v6 + v8, v2, &qword_100126800, &qword_1000E71B0);
  sub_10001865C(v6 + v9, v3, &qword_1001267F8, &qword_1000E71A8);
  v75(v4, v6 + v10, v5);
  v11 = *(v1 + *(v72 + 32));
  sub_100007BC0(&qword_100126810, qword_1000E71C0);
  result = sub_1000DCB24();
  v13 = result;
  v14 = 0;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v11 + 64);
  v18 = (v15 + 63) >> 6;
  for (i = result + 8; v17; v13[2] = v30)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = v20 | (v14 << 6);
LABEL_10:
    v24 = *(*(v11 + 48) + 8 * v21);
    v25 = *(*(v11 + 56) + 8 * v21);
    v26 = (v21 >> 3) & 0x1FFFFFFFFFFFFFF8;
    result = (*(i + v26) | (1 << v21));
    *(i + v26) = result;
    *(v13[6] + 8 * v21) = v24;
    v27 = (v13[7] + 32 * v21);
    *v27 = 1;
    v27[1] = v25;
    v27[2] = _swiftEmptyArrayStorage;
    v27[3] = _swiftEmptyArrayStorage;
    v28 = v13[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v14 >= v18)
    {
      break;
    }

    v23 = *(v11 + 64 + 8 * v14);
    ++v22;
    if (v23)
    {
      v17 = (v23 - 1) & v23;
      v21 = __clz(__rbit64(v23)) | (v14 << 6);
      goto LABEL_10;
    }
  }

  v31 = *(v79 + 224);
  v33 = *(v79 + 200);
  v32 = *(v79 + 208);
  v77 = *(v79 + 56);
  v34 = *(v79 + 16);
  v35 = *(*(v79 + 216) + 28);
  sub_1000080B0(v34, &qword_100120AC8, &qword_1000E06E8);
  sub_1000C5228(v31, v34, type metadata accessor for UniformDateBins);
  v36 = sub_100007BC0(&qword_100120AC8, &qword_1000E06E8);
  sub_100007F58(v31 + v35, v34 + *(v36 + 28), &qword_100120AE8, &unk_1000E38A0);
  v69 = v36;
  *(v34 + *(v36 + 32)) = v13;
  v37 = *(v32 + *(v33 + 32));
  result = sub_1000DCB24();
  v38 = 0;
  v39 = 1 << *(v37 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v37 + 64;
  v42 = v40 & *(v37 + 64);
  v43 = (v39 + 63) >> 6;
  v70 = result + 8;
  v73 = v37;
  if (!v42)
  {
LABEL_17:
    v46 = v38;
    while (1)
    {
      v38 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_29;
      }

      if (v38 >= v43)
      {
        v78 = *(v79 + 296);
        v71 = *(v79 + 224);
        v56 = *(v79 + 208);
        v57 = *(v79 + 184);
        v58 = *(v79 + 192);
        v76 = *(v79 + 176);
        v68 = *(v79 + 152);
        v74 = *(v79 + 144);
        v67 = *(v79 + 16);
        v59 = v67 + *(v79 + 292);
        v60 = v67 + *(v79 + 288);
        v61 = *(*(v79 + 200) + 28);
        v62 = result;
        sub_1000080B0(v60, &qword_100120AC8, &qword_1000E06E8);
        sub_1000C5228(v56, v60, type metadata accessor for UniformDateBins);
        sub_100007F58(v56 + v61, v60 + *(v69 + 28), &qword_100120AE8, &unk_1000E38A0);
        *(v60 + *(v69 + 32)) = v62;
        v63 = swift_task_alloc();
        *(v63 + 16) = v56;
        v64 = *(v57 + 28);
        v65 = sub_1000C8C44(sub_1000CDB38, v63, *(v58 + *(v57 + 32)));

        sub_1000080B0(v59, &qword_100120AC8, &qword_1000E06E8);
        sub_1000C5228(v58, v59, type metadata accessor for UniformDateBins);
        sub_100007F58(v58 + v64, v59 + *(v69 + 28), &qword_100120AE8, &unk_1000E38A0);
        *(v59 + *(v69 + 32)) = v65;
        sub_1000080B0(v58, &qword_1001267F8, &qword_1000E71A8);
        sub_1000080B0(v71, &qword_100126808, &qword_1000E71B8);
        (*(v68 + 40))(v67 + v78, v76, v74);
        sub_1000080B0(v56, &qword_100126800, &qword_1000E71B0);

        v66 = *(v79 + 8);

        return v66();
      }

      v47 = *(v41 + 8 * v38);
      ++v46;
      if (v47)
      {
        v44 = result;
        v45 = __clz(__rbit64(v47));
        v42 = (v47 - 1) & v47;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v44 = result;
    v45 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
LABEL_22:
    v48 = v45 | (v38 << 6);
    v49 = *(v79 + 64);
    v50 = *(*(v73 + 48) + 8 * v48);
    sub_1000C5228(*(v73 + 56) + *(v77 + 72) * v48, v49, _s14descr10010BBE9V5MonthVMa);
    v51 = sub_1000DA214();
    v52 = *v49;
    result = sub_1000C922C(v49, _s14descr10010BBE9V5MonthVMa);
    *(v70 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    *(v44[6] + 8 * v48) = v50;
    v53 = (v44[7] + 32 * v48);
    *v53 = v51;
    v53[1] = v52;
    v53[2] = _swiftEmptyArrayStorage;
    v53[3] = _swiftEmptyArrayStorage;
    v54 = v44[2];
    v29 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v29)
    {
      break;
    }

    result = v44;
    v44[2] = v55;
    if (!v42)
    {
      goto LABEL_17;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000B9EF0()
{
  if (qword_10011FBE8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000DAFF4();
  sub_100007EBC(v1, qword_100126710);
  swift_errorRetain();
  v2 = sub_1000DAFD4();
  v3 = sub_1000DC4C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch entries by entry date: %@", v4, 0xCu);
    sub_1000080B0(v5, &qword_100120A80, &unk_1000E04B0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000BA114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000BA138, 0, 0);
}

uint64_t sub_1000BA138()
{
  *(v0 + 40) = sub_1000DC224();
  *(v0 + 48) = sub_1000DC214();
  v2 = sub_1000DC1D4();

  return _swift_task_switch(sub_1000BA1D0, v2, v1);
}

uint64_t sub_1000BA1D0()
{
  v1 = *(v0 + 24);

  *(v0 + 56) = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager_options);

  return _swift_task_switch(sub_1000BA258, 0, 0);
}

uint64_t sub_1000BA258()
{
  v1 = sub_10001ED40(3u, v0[7]);

  if (v1)
  {
    v0[8] = sub_1000DC214();
    v3 = sub_1000DC1D4();

    return _swift_task_switch(sub_1000BA620, v3, v2);
  }

  else
  {
    v4 = v0[2];
    v5 = sub_1000DA084();
    v6 = *(*(v5 - 8) + 56);
    v6(v4, 1, 1, v5);
    v7 = type metadata accessor for StreakSummary(0);
    v6(v4 + v7[5], 1, 1, v5);
    v6(v4 + v7[6], 1, 1, v5);
    *(v4 + v7[7]) = 0;
    v8 = type metadata accessor for InsightsDataManager.Streaks(0);
    v9 = v4 + v8[5];
    v6(v9, 1, 1, v5);
    v6(v9 + v7[5], 1, 1, v5);
    v6(v9 + v7[6], 1, 1, v5);
    *(v9 + v7[7]) = 0;
    v10 = v4 + v8[6];
    v6(v10, 1, 1, v5);
    v6(v10 + v7[5], 1, 1, v5);
    v6(v10 + v7[6], 1, 1, v5);
    *(v10 + v7[7]) = 0;
    v11 = v4 + v8[7];
    v6(v11, 1, 1, v5);
    v6(v11 + v7[5], 1, 1, v5);
    v6(v11 + v7[6], 1, 1, v5);
    *(v11 + v7[7]) = 0;
    v12 = v4 + v8[8];
    v6(v12, 1, 1, v5);
    v6(v12 + v7[5], 1, 1, v5);
    v6(v12 + v7[6], 1, 1, v5);
    *(v12 + v7[7]) = 0;
    v13 = v4 + v8[9];
    v6(v13, 1, 1, v5);
    v6(v13 + v7[5], 1, 1, v5);
    v6(v13 + v7[6], 1, 1, v5);
    *(v13 + v7[7]) = 0;
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1000BA620()
{

  v1 = sub_100022B58();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1000BA6D4;
  v3 = v0[4];
  v4 = v0[2];

  return sub_1000BA7E4(v4, v1, v3);
}

uint64_t sub_1000BA6D4()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000BA7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_1000DC684();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1000DA204();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v3[13] = *(v6 + 64);
  v3[14] = swift_task_alloc();
  v7 = sub_1000DA084();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v3[17] = *(v8 + 64);
  v3[18] = swift_task_alloc();
  sub_100007BC0(&qword_100124050, &qword_1000E4068);
  v3[19] = swift_task_alloc();
  sub_100007BC0(&qword_100124058, &unk_1000E4070);
  v3[20] = swift_task_alloc();
  v9 = sub_1000D9B24();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v3[23] = *(v10 + 64);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000BAA68, 0, 0);
}

uint64_t sub_1000BAA68()
{
  if (qword_10011FB80 != -1)
  {
    swift_once();
  }

  v38 = v0[27];
  v24 = v0[26];
  v42 = v0[25];
  v43 = v0[24];
  v31 = v0[23];
  v1 = v0[20];
  v37 = v0[21];
  v2 = v0[19];
  v39 = v0[18];
  v28 = v0[22];
  v29 = v0[17];
  v27 = v0[16];
  v40 = v0[14];
  v41 = v0[15];
  v3 = v0[12];
  v30 = v0[13];
  v36 = v3;
  v4 = v0[11];
  v33 = v0[9];
  v34 = v0[8];
  v35 = v0[10];
  v26 = v0[7];
  v32 = v0[6];
  v25 = sub_100007EBC(v4, qword_100127318);
  v5 = *(v3 + 56);
  v5(v1, 1, 1, v4);
  v6 = sub_1000DA274();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  sub_1000D9B14();
  v5(v1, 1, 1, v4);
  v7(v2, 1, 1, v6);
  sub_1000D9B14();
  type metadata accessor for InsightsDataManager.Streaks(0);
  v23 = swift_allocBox();
  v0[28] = v23;
  v0[29] = v8;
  sub_100023840(v8);
  (*(v27 + 16))(v39, v26, v41);
  (*(v3 + 16))(v40, v25, v4);
  v9 = *(v28 + 16);
  v9(v42, v38, v37);
  v9(v43, v24, v37);
  v10 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v11 = (v29 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v36 + 80) + v11 + 8) & ~*(v36 + 80);
  v13 = (v30 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v28 + 80);
  v15 = (v14 + v13 + 8) & ~v14;
  v16 = (v31 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  v0[30] = v17;
  (*(v27 + 32))(v17 + v10, v39, v41);
  *(v17 + v11) = v32;
  (*(v36 + 32))(v17 + v12, v40, v4);
  *(v17 + v13) = v23;
  v18 = *(v28 + 32);
  v18(v17 + v15, v42, v37);
  v18(v17 + v16, v43, v37);
  (*(v33 + 104))(v35, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v34);
  v19 = v32;

  v20 = swift_task_alloc();
  v0[31] = v20;
  *v20 = v0;
  v20[1] = sub_1000BAF70;
  v21 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_1000CD6EC, v17, &type metadata for () + 8);
}

uint64_t sub_1000BAF70()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 256) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000BB25C;
  }

  else
  {
    v5 = sub_1000BB104;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000BB104()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[5];
  v5 = *(v0[22] + 8);
  v5(v0[26], v3);
  v5(v2, v3);
  swift_beginAccess();
  sub_1000C5228(v1, v4, type metadata accessor for InsightsDataManager.Streaks);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000BB25C()
{
  if (qword_10011FBE8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000DAFF4();
  sub_100007EBC(v1, qword_100126710);
  swift_errorRetain();
  v2 = sub_1000DAFD4();
  v3 = sub_1000DC4C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch events for streaks: %@", v4, 0xCu);
    sub_1000080B0(v5, &qword_100120A80, &unk_1000E04B0);
  }

  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[21];
  v10 = v0[5];
  v11 = *(v0[22] + 8);
  v11(v0[26], v9);
  v11(v8, v9);
  swift_beginAccess();
  sub_1000C5228(v7, v10, type metadata accessor for InsightsDataManager.Streaks);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000BB4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_1000DA204();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000BB5A4, 0, 0);
}

uint64_t sub_1000BB5A4()
{
  *(v0 + 96) = sub_1000DC224();
  *(v0 + 104) = sub_1000DC214();
  v2 = sub_1000DC1D4();

  return _swift_task_switch(sub_1000BB63C, v2, v1);
}

uint64_t sub_1000BB63C()
{
  v1 = *(v0 + 56);

  *(v0 + 112) = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager_options);

  return _swift_task_switch(sub_1000BB6C4, 0, 0);
}

uint64_t sub_1000BB6C4()
{
  v1 = sub_10001ED40(2u, v0[14]);

  if (v1)
  {
    v0[15] = sub_1000DC214();
    v3 = sub_1000DC1D4();

    return _swift_task_switch(sub_1000BB7C0, v3, v2);
  }

  else
  {
    v4 = v0[6];
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = _swiftEmptyArrayStorage;

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000BB7C0()
{

  *(v0 + 128) = sub_1000B6850();

  return _swift_task_switch(sub_1000BB834, 0, 0);
}

uint64_t sub_1000BB834(uint64_t a1)
{
  *(v1 + 136) = sub_1000DC214();
  v3 = sub_1000DC1D4();

  return _swift_task_switch(sub_1000BB8C0, v3, v2);
}

uint64_t sub_1000BB8C0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];

  swift_getKeyPath();
  v0[5] = v4;
  sub_1000C4E8C(&qword_100120AB8, type metadata accessor for InsightsDataManager, &unk_1000E0C38);
  sub_1000DA294();

  v5 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__calendar;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1000BBA44;
  v7 = v0[16];
  v8 = v0[11];
  v9 = v0[8];

  return sub_1000CB2B0(v7, v8, v9);
}

uint64_t sub_1000BBA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 128);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  v9 = *(*v4 + 72);
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = a3;
  v5[22] = a4;

  (*(v8 + 8))(v7, v9);

  return _swift_task_switch(sub_1000BBBC0, 0, 0);
}

uint64_t sub_1000BBBC0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 48);
  *v3 = *(v0 + 152);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000BBC38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000BBC58, 0, 0);
}

uint64_t sub_1000BBC58()
{
  *(v0 + 32) = sub_1000DC224();
  *(v0 + 40) = sub_1000DC214();
  v2 = sub_1000DC1D4();

  return _swift_task_switch(sub_1000BBCF0, v2, v1);
}

uint64_t sub_1000BBCF0()
{
  v1 = *(v0 + 24);

  *(v0 + 48) = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager_options);

  return _swift_task_switch(sub_1000BBD78, 0, 0);
}

uint64_t sub_1000BBD78()
{
  v1 = sub_10001ED40(4u, *(v0 + 48));

  if (v1)
  {
    *(v0 + 56) = sub_1000DC214();
    v3 = sub_1000DC1D4();

    return _swift_task_switch(sub_1000BBE68, v3, v2);
  }

  else
  {
    **(v0 + 16) = _swiftEmptyArrayStorage;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1000BBE68()
{

  v1 = sub_100022B58();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1000BBF24;

  return sub_1000CB990(v1);
}

uint64_t sub_1000BBF24(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_1000BC040, 0, 0);
}

uint64_t sub_1000BC064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_1000DA204();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000BC128, 0, 0);
}

uint64_t sub_1000BC128()
{
  *(v0 + 104) = sub_1000DC224();
  *(v0 + 112) = sub_1000DC214();
  v2 = sub_1000DC1D4();

  return _swift_task_switch(sub_1000BC1C0, v2, v1);
}

uint64_t sub_1000BC1C0()
{
  v1 = *(v0 + 56);

  *(v0 + 120) = *(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager_options);

  return _swift_task_switch(sub_1000BC248, 0, 0);
}

uint64_t sub_1000BC248()
{
  v1 = sub_10001ED40(1u, v0[15]);

  if (v1)
  {
    v0[16] = sub_1000DC214();
    v3 = sub_1000DC1D4();

    return _swift_task_switch(sub_1000BC344, v3, v2);
  }

  else
  {
    v4 = v0[6];
    *v4 = _swiftEmptyArrayStorage;
    v4[1] = _swiftEmptyArrayStorage;
    v4[2] = 0;
    v4[3] = _swiftEmptyArrayStorage;

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000BC344()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  swift_getKeyPath();
  v0[5] = v4;
  sub_1000C4E8C(&qword_100120AB8, type metadata accessor for InsightsDataManager, &unk_1000E0C38);
  sub_1000DA294();

  v5 = OBJC_IVAR____TtC20JournalWidgetsSecure19InsightsDataManager__calendar;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1000BC4C4;
  v7 = v0[8];

  return sub_1000CC6F8(v7);
}

uint64_t sub_1000BC4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 96);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;
  v5[21] = a4;

  (*(v7 + 8))(v6, v8);

  return _swift_task_switch(sub_1000BC628, 0, 0);
}

uint64_t sub_1000BC628()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 48);
  *v3 = *(v0 + 144);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = *(v0 + 8);

  return v4();
}

void sub_1000BC6A0(unint64_t a1, Swift::Int a2, uint64_t a3)
{
  if (__OFADD__(*v4, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v4;
  v7 = a3;
  v8 = a2;
  v5 = a1;
  ++*v4;
  v6 = _s14descr10010BBE9V4YearVMa(0);
  sub_1000DA224(v8);
  v9 = *(v6 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  v25 = v11;
  a1 = sub_100063178(v7);
  v13 = v11[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v8) = v12;
  if (v11[3] < v16)
  {
    sub_1000CFE24(v16, isUniquelyReferenced_nonNull_native);
    v11 = v25;
    a1 = sub_100063178(v7);
    if ((v8 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

    a1 = sub_1000DCCC4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  *(v3 + v9) = v11;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_8:
  v8 = a1;
  sub_1000D1268(a1, v7, 0, v11);
  a1 = v8;
LABEL_9:
  while (1)
  {
    v18 = v11[7];
    v19 = *(v18 + 8 * a1);
    v15 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v15)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v24 = a1;
    sub_1000D1AC8();
    a1 = v24;
    v11 = v25;
    *(v3 + v9) = v25;
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  *(v18 + 8 * a1) = v20;
  v21 = *(v5 + *(type metadata accessor for InsightsDataManager.EntrySummary(0) + 24));
  v22 = *(v6 + 28);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v3 + v22);
  sub_1000C9740(v21, sub_1000CB29C, 0, v23, &v25);
  *(v3 + v22) = v25;
}

void sub_1000BC864(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a3;
  v111 = a2;
  v97 = a4;
  v5 = sub_100007BC0(&qword_1001267F8, &qword_1000E71A8);
  __chkstk_darwin(v5 - 8);
  v107 = v94 - v6;
  v7 = sub_100007BC0(&qword_100126800, &qword_1000E71B0);
  __chkstk_darwin(v7 - 8);
  v98 = v94 - v8;
  v120 = sub_1000DA204();
  v106 = *(v120 - 8);
  __chkstk_darwin(v120);
  v105 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1000DA1F4();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v104 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007BC0(&qword_100126808, &qword_1000E71B8);
  __chkstk_darwin(v11 - 8);
  v113 = v94 - v12;
  v110 = sub_100007BC0(&qword_100121B98, &qword_1000E1CF0);
  v13 = __chkstk_darwin(v110);
  v100 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v115 = v94 - v15;
  v99 = sub_100007BC0(&qword_100120AE8, &unk_1000E38A0);
  v16 = __chkstk_darwin(v99);
  v101 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v112 = v94 - v18;
  v19 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  __chkstk_darwin(v19 - 8);
  v108 = v94 - v20;
  v21 = sub_1000DA084();
  v22 = *(v21 - 8);
  v116 = v21;
  v117 = v22;
  v23 = __chkstk_darwin(v21);
  v109 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v114 = v94 - v25;
  v26 = [objc_allocWithZone(NSExpressionDescription) init];
  v27 = sub_1000DBF04();
  [v26 setName:v27];

  sub_100008068(0, &qword_100126818, NSExpression_ptr);
  sub_100007BC0(&qword_100121ED8, &unk_1000E6500);
  v28 = swift_allocObject();
  v118 = xmmword_1000DFEF0;
  *(v28 + 16) = xmmword_1000DFEF0;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100042300();
  *(v28 + 32) = 0x7461447972746E65;
  *(v28 + 40) = 0xE900000000000065;
  v29 = sub_1000DC434();
  [v26 setExpression:v29];

  [v26 setExpressionResultType:900];
  v30 = [objc_allocWithZone(NSFetchRequest) init];
  v31 = sub_1000DA404();
  v32 = [swift_getObjCClassFromMetadata() entity];
  [v30 setEntity:v32];

  v33 = sub_100008068(0, &qword_1001267A8, NSPredicate_ptr);
  v34 = sub_1000DC3F4();
  [v30 setPredicate:v34];

  [v30 setResultType:2];
  sub_100007BC0(&qword_1001267B8, &qword_1000E7100);
  v35 = swift_allocObject();
  *(v35 + 16) = v118;
  *(v35 + 56) = sub_100008068(0, &qword_100126820, NSExpressionDescription_ptr);
  *(v35 + 32) = v26;
  v36 = v26;
  isa = sub_1000DC124().super.isa;

  [v30 setPropertiesToFetch:isa];

  sub_100008068(0, &qword_100126828, NSDictionary_ptr);
  v38 = v119;
  v39 = sub_1000DC694();
  if (v38)
  {

    return;
  }

  v40 = 0x80000001000EC150;
  v41 = v116;
  v94[1] = v33;
  *&v118 = v36;
  v42 = v110;
  v94[2] = v31;
  v119 = v30;
  v43 = v111;
  v96 = a1;
  v95 = 0;
  if (v39 >> 62)
  {
    v93 = v39;
    v44 = sub_1000DCB14();
    v39 = v93;
  }

  else
  {
    v44 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v43;
  v46 = v42;
  v47 = v41;
  v48 = 0xD000000000000011;
  if (!v44)
  {

    v123 = 0u;
    v124 = 0u;
    v52 = v117;
    v42 = v115;
    v53 = v108;
    goto LABEL_16;
  }

  if ((v39 & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  for (i = *(v39 + 32); ; i = sub_1000DCA24())
  {
    v50 = i;

    *&v121 = v48;
    *(&v121 + 1) = v40;
    v51 = [v50 __swift_objectForKeyedSubscript:sub_1000DCCA4()];
    swift_unknownObjectRelease();

    if (v51)
    {
      sub_1000DC864();
      swift_unknownObjectRelease();
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
    }

    v52 = v117;
    v46 = v42;
    v53 = v108;
    v123 = v121;
    v124 = v122;
    v42 = v115;
    if (*(&v122 + 1))
    {
      v54 = swift_dynamicCast();
      (*(v52 + 56))(v53, v54 ^ 1u, 1, v47);
      if ((*(v52 + 48))(v53, 1, v47) != 1)
      {
        v40 = v109;
        (*(v52 + 32))(v109, v53, v47);
        v55 = v114;
        goto LABEL_19;
      }
    }

    else
    {
LABEL_16:
      sub_1000080B0(&v123, &qword_100121470, &qword_1000E13B0);
      (*(v52 + 56))(v53, 1, 1, v47);
    }

    v40 = v109;
    sub_1000D9FA4();
    v56 = (*(v52 + 48))(v53, 1, v47);
    v55 = v114;
    if (v56 != 1)
    {
      sub_1000080B0(v53, &qword_1001203B8, &qword_1000E0460);
    }

LABEL_19:
    v48 = sub_1000C4E8C(&qword_100120AE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    if (sub_1000DBDF4())
    {
      (*(v52 + 8))(v40, v47);
      (*(v52 + 16))(v55, v45, v47);
    }

    else
    {
      (*(v52 + 32))(v55, v40, v47);
    }

    if (sub_1000DBE14())
    {
      break;
    }

    __break(1u);
LABEL_29:
    ;
  }

  v57 = *(v52 + 16);
  v57(v42, v55, v47);
  v57(&v42[*(v46 + 12)], v45, v47);
  v58 = v42;
  v59 = v100;
  sub_100007F58(v58, v100, &qword_100121B98, &qword_1000E1CF0);
  v60 = v46;
  v61 = *(v46 + 12);
  v62 = *(v52 + 32);
  v63 = v112;
  v62(v112, v59, v47);
  v64 = v63;
  v65 = *(v52 + 8);
  v65(v59 + v61, v47);
  sub_10001865C(v115, v59, &qword_100121B98, &qword_1000E1CF0);
  v66 = v63 + *(v99 + 36);
  v67 = v59 + *(v60 + 12);
  v110 = v52 + 32;
  v109 = v62;
  v62(v66, v67, v47);
  v117 = v52 + 8;
  v111 = v65;
  v65(v59, v47);
  v115 = *(v102 + 104);
  v68 = v104;
  v69 = v103;
  (v115)(v104, enum case for Calendar.Component.day(_:), v103);
  v70 = v63;
  v71 = v101;
  sub_100007F58(v64, v101, &qword_100120AE8, &unk_1000E38A0);
  v72 = *(v106 + 16);
  v73 = v105;
  v72(v105, v125, v120);
  sub_1000B7B30(v68, v71, v73, &qword_100126808, &qword_1000E71B8, v113);
  v74 = v115;
  (v115)(v68, enum case for Calendar.Component.month(_:), v69);
  sub_100007F58(v70, v71, &qword_100120AE8, &unk_1000E38A0);
  v72(v73, v125, v120);
  v75 = v98;
  sub_1000B7B30(v68, v71, v73, &qword_100126800, &qword_1000E71B0, v98);
  (v74)(v68, enum case for Calendar.Component.year(_:), v69);
  v76 = v112;
  sub_100007F58(v112, v71, &qword_100120AE8, &unk_1000E38A0);
  v72(v73, v125, v120);
  v77 = v107;
  v78 = v73;
  v79 = v113;
  sub_1000B7B30(v68, v71, v78, &qword_1001267F8, &qword_1000E71A8, v107);
  v80 = sub_1000DA3B4();
  v81 = sub_1000DC3F4();
  [v80 setPredicate:v81];

  sub_100007BC0(&qword_100120148, &unk_1000DFDD0);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1000E2FB0;
  sub_100008068(0, &qword_1001267D8, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v82 + 32) = sub_1000DC524();
  v83 = sub_1000DC124().super.isa;

  [v80 setSortDescriptors:v83];

  v84 = sub_1000DC124().super.isa;
  [v80 setRelationshipKeyPathsForPrefetching:v84];

  __chkstk_darwin(v85);
  v94[-4] = v79;
  v94[-3] = v75;
  v94[-2] = v77;
  v86 = v95;
  sub_1000DC664();
  if (v86)
  {

    sub_1000080B0(v76, &qword_100120AE8, &unk_1000E38A0);
    v111(v114, v116);
    sub_1000080B0(v77, &qword_1001267F8, &qword_1000E71A8);
  }

  else
  {
    sub_1000080B0(v76, &qword_100120AE8, &unk_1000E38A0);

    v87 = sub_100007BC0(&qword_1001267F0, &qword_1000E71A0);
    v88 = v77;
    v89 = v87[12];
    v90 = v87[16];
    v91 = v87[20];
    v92 = v97;
    sub_100007F58(v79, v97, &qword_100126808, &qword_1000E71B8);
    sub_100007F58(v75, v92 + v89, &qword_100126800, &qword_1000E71B0);
    sub_100007F58(v88, v92 + v90, &qword_1001267F8, &qword_1000E71A8);
    (v109)(v92 + v91, v114, v116);
    sub_1000080B0(v88, &qword_1001267F8, &qword_1000E71A8);
  }

  sub_1000080B0(v75, &qword_100126800, &qword_1000E71B0);
  sub_1000080B0(v79, &qword_100126808, &qword_1000E71B8);
}

uint64_t sub_1000BD8D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v63 = _s14descr10010BBE9V4YearVMa(0);
  v7 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = _s14descr10010BBE9V5MonthVMa(0);
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v64 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for UniformDateBins(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007BC0(&qword_100126830, &qword_1000E7200);
  __chkstk_darwin(v14 - 8);
  v16 = &v60 - v15;
  v17 = type metadata accessor for InsightsDataManager.EntrySummary(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BDFE0(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1000080B0(v16, &qword_100126830, &qword_1000E7200);
    return 1;
  }

  v60 = v7;
  sub_1000CDBD8(v16, v20, type metadata accessor for InsightsDataManager.EntrySummary);
  sub_1000C5228(a2, v13, type metadata accessor for UniformDateBins);
  v65 = *(v17 + 20);
  v21 = sub_1000D63B4(&v20[v65]);
  sub_1000C922C(v13, type metadata accessor for UniformDateBins);
  v22 = *(sub_100007BC0(&qword_100126808, &qword_1000E71B8) + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a2 + v22);
  v68 = v21;
  v69 = v24;
  *(a2 + v22) = 0x8000000000000000;
  v26 = sub_100063178(v21);
  v27 = *(v24 + 16);
  v28 = (v25 & 1) == 0;
  v29 = v27 + v28;
  if (__OFADD__(v27, v28))
  {
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v21) = v25;
  if (*(v24 + 24) < v29)
  {
    sub_1000CFE24(v29, isUniquelyReferenced_nonNull_native);
    v24 = v69;
    v30 = sub_100063178(v68);
    if ((v21 & 1) == (v31 & 1))
    {
      v26 = v30;
      goto LABEL_8;
    }

    goto LABEL_36;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
LABEL_8:
    *(a2 + v22) = v24;

    v32 = *(a2 + v22);
    if ((v21 & 1) == 0)
    {
      sub_1000D1268(v26, v68, 0, *(a2 + v22));
    }

    v33 = *(v32 + 56);
    v34 = *(v33 + 8 * v26);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *(v33 + 8 * v26) = v36;
    sub_1000C5228(a3, v13, type metadata accessor for UniformDateBins);
    v22 = sub_1000D63B4(&v20[v65]);
    sub_1000C922C(v13, type metadata accessor for UniformDateBins);
    a2 = *(sub_100007BC0(&qword_100126800, &qword_1000E71B0) + 32);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a3 + a2);
    v38 = v69;
    *(a3 + a2) = 0x8000000000000000;
    v26 = sub_100063178(v22);
    v40 = *(v38 + 16);
    v41 = (v39 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_32;
    }

    LOBYTE(v21) = v39;
    v43 = *(v38 + 24);
    v61 = v22;
    if (v43 >= v42)
    {
      if ((v37 & 1) == 0)
      {
        sub_1000D1C50();
        v38 = v69;
      }
    }

    else
    {
      sub_1000D00C4(v42, v37);
      v38 = v69;
      v44 = sub_100063178(v22);
      if ((v21 & 1) != (v45 & 1))
      {
        goto LABEL_36;
      }

      v26 = v44;
    }

    *(a3 + a2) = v38;

    v46 = *(a3 + a2);
    v22 = v67;
    if ((v21 & 1) == 0)
    {
      a2 = v64;
      *v64 = 0;
      sub_1000DA234();
      sub_1000D12D8(v26, v61, a2, v46);
    }

    v47 = (v46[7] + *(v66 + 72) * v26);
    if (__OFADD__(*v47, 1))
    {
      goto LABEL_33;
    }

    ++*v47;
    sub_1000DA224(v68);
    sub_1000C5228(a4, v13, type metadata accessor for UniformDateBins);
    v22 = sub_1000D63B4(&v20[v65]);
    sub_1000C922C(v13, type metadata accessor for UniformDateBins);
    a2 = *(sub_100007BC0(&qword_1001267F8, &qword_1000E71A8) + 32);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(a4 + a2);
    v48 = v69;
    *(a4 + a2) = 0x8000000000000000;
    a3 = sub_100063178(v22);
    v50 = *(v48 + 16);
    v51 = (v49 & 1) == 0;
    v52 = v50 + v51;
    if (!__OFADD__(v50, v51))
    {
      break;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    sub_1000D1AC8();
    v24 = v69;
  }

  v53 = v49;
  if (*(v48 + 24) >= v52)
  {
    if ((v26 & 1) == 0)
    {
      sub_1000D1C14();
      v48 = v69;
    }

LABEL_26:
    *(a4 + a2) = v48;

    v56 = *(a4 + a2);
    if ((v53 & 1) == 0)
    {
      v58 = v62;
      v57 = v63;
      *v62 = 0;
      sub_1000DA234();
      *(v58 + *(v57 + 24)) = &_swiftEmptyDictionarySingleton;
      *(v58 + *(v57 + 28)) = &_swiftEmptyDictionarySingleton;
      sub_1000D12AC(a3, v22, v58, v56);
    }

    sub_1000BC6A0(v20, v68, v61);
    sub_1000C922C(v20, type metadata accessor for InsightsDataManager.EntrySummary);
    return 1;
  }

  sub_1000D0088(v52, v26);
  v48 = v69;
  v54 = sub_100063178(v22);
  if ((v53 & 1) == (v55 & 1))
  {
    a3 = v54;
    goto LABEL_26;
  }

LABEL_36:
  result = sub_1000DCCC4();
  __break(1u);
  return result;
}

uint64_t sub_1000BDFE0@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = sub_100007BC0(&qword_1001247F8, &unk_1000E4790);
  __chkstk_darwin(v2 - 8);
  v4 = &v49[-v3];
  v5 = sub_1000DAD44();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v86 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v90 = &v49[-v9];
  v10 = sub_1000DA084();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1000DA0E4();
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v17 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = [v1 id];
  if (!v18)
  {
    goto LABEL_66;
  }

  v74 = v15;
  v19 = v18;
  sub_1000DA0C4();

  v20 = [v1 entryDate];
  if (!v20)
  {
    (*(v74 + 8))(v17, v14);
LABEL_66:
    v45 = type metadata accessor for InsightsDataManager.EntrySummary(0);
    return (*(*(v45 - 8) + 56))(v75, 1, 1, v45);
  }

  v85 = v17;
  v21 = v20;
  sub_1000DA044();

  v22 = sub_1000DA3C4();
  v84 = v22;
  if (v22 >> 62)
  {
LABEL_75:
    v23 = sub_1000DCB14();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v14;
  v68 = v13;
  v69 = v11;
  v70 = v10;
  if (!v23)
  {
    v10 = 0;
    v14 = &_swiftEmptyDictionarySingleton;
    v25 = v85;
LABEL_68:

    v47 = v75;
    (*(v74 + 32))(v75, v25, v67);
    v48 = type metadata accessor for InsightsDataManager.EntrySummary(0);
    (*(v69 + 32))(v47 + *(v48 + 20), v68, v70);
    *(v47 + *(v48 + 24)) = v14;
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    return sub_100030FC0(v10, 0);
  }

  v24 = 0;
  v10 = 0;
  v13 = v84;
  v83 = enum case for AssetType.photo(_:);
  v88 = (v6 + 48);
  v89 = v84 & 0xC000000000000001;
  v81 = (v6 + 16);
  v82 = (v6 + 32);
  v80 = enum case for AssetType.livePhoto(_:);
  v79 = (v6 + 88);
  v76 = enum case for AssetType.video(_:);
  v73 = enum case for AssetType.music(_:);
  v72 = enum case for AssetType.podcast(_:);
  v71 = enum case for AssetType.book(_:);
  v66 = enum case for AssetType.audio(_:);
  v65 = enum case for AssetType.visit(_:);
  v64 = enum case for AssetType.multiPinMap(_:);
  v63 = enum case for AssetType.genericMap(_:);
  v62 = enum case for AssetType.link(_:);
  v61 = enum case for AssetType.contact(_:);
  v60 = enum case for AssetType.workoutIcon(_:);
  v59 = enum case for AssetType.workoutRoute(_:);
  v58 = enum case for AssetType.reflection(_:);
  v57 = enum case for AssetType.stateOfMind(_:);
  v56 = enum case for AssetType.motionActivity(_:);
  v55 = enum case for AssetType.thirdPartyMedia(_:);
  v54 = enum case for AssetType.placeholder(_:);
  v53 = enum case for AssetType.streakEvent(_:);
  v52 = enum case for AssetType.drawing(_:);
  v78 = (v6 + 8);
  v51 = enum case for AssetType.confetti(_:);
  v50 = enum case for AssetType.unknown(_:);
  v77 = v84 & 0xFFFFFFFFFFFFFF8;
  v14 = &_swiftEmptyDictionarySingleton;
  v25 = v85;
  v87 = v23;
  while (1)
  {
    if (v89)
    {
      v26 = sub_1000DCA24();
    }

    else
    {
      if (v24 >= *(v77 + 16))
      {
        goto LABEL_73;
      }

      v26 = *(v13 + 8 * v24 + 32);
    }

    v6 = v26;
    v11 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    sub_1000DA344();
    if ((*v88)(v4, 1, v5) != 1)
    {
      break;
    }

    sub_1000080B0(v4, &qword_1001247F8, &unk_1000E4790);
LABEL_8:
    ++v24;
    if (v11 == v87)
    {
      goto LABEL_68;
    }
  }

  v27 = v90;
  (*v82)(v90, v4, v5);
  v28 = v86;
  (*v81)(v86, v27, v5);
  v29 = (*v79)(v28, v5);
  if (v29 == v83 || v29 == v80)
  {
    v13 = 0;
  }

  else if (v29 == v76)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
    if (v29 != v73 && v29 != v72 && v29 != v71)
    {
      if (v29 == v66)
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
        if (v29 != v65 && v29 != v64 && v29 != v63)
        {
          if (v29 == v62)
          {

            (*v78)(v90, v5);
LABEL_33:
            v13 = v84;
            v25 = v85;
            goto LABEL_8;
          }

          if (v29 == v61)
          {
            v13 = 5;
          }

          else
          {
            v13 = 6;
            if (v29 != v60 && v29 != v59)
            {
              if (v29 == v58)
              {
                v13 = 7;
              }

              else if (v29 == v57)
              {
                v13 = 8;
              }

              else if (v29 != v56)
              {
                if (v29 == v55)
                {
                  v13 = 3;
                }

                else
                {
                  v13 = v84;
                  v25 = v85;
                  if (v29 == v54 || v29 == v53)
                  {
                    goto LABEL_64;
                  }

                  if (v29 == v52)
                  {
                    v13 = 9;
                  }

                  else
                  {
                    if (v29 != v51)
                    {
                      if (v29 != v50)
                      {
                        goto LABEL_76;
                      }

LABEL_64:
                      (*v78)(v90, v5);

                      goto LABEL_8;
                    }

                    v13 = 10;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_100030FC0(v10, 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v14;
  v32 = sub_100063398(v13);
  v34 = v14[2];
  v35 = (v33 & 1) == 0;
  v36 = __OFADD__(v34, v35);
  v37 = v34 + v35;
  if (v36)
  {
    goto LABEL_71;
  }

  v10 = v33;
  if (v14[3] >= v37)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = v32;
      sub_1000D197C();
      v32 = v44;
      v14 = v91;
      if ((v10 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

LABEL_28:
    v14 = v91;
    if ((v10 & 1) == 0)
    {
LABEL_29:
      v14[(v32 >> 6) + 8] |= 1 << v32;
      *(v14[6] + v32) = v13;
      *(v14[7] + 8 * v32) = 0;
      v39 = v14[2];
      v36 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v36)
      {
        goto LABEL_74;
      }

      v14[2] = v40;
    }

LABEL_31:
    v41 = v14[7];
    v42 = *(v41 + 8 * v32);
    v36 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v36)
    {
      goto LABEL_72;
    }

    *(v41 + 8 * v32) = v43;

    (*v78)(v90, v5);
    v10 = sub_1000BC85C;
    goto LABEL_33;
  }

  sub_1000CFA68(v37, isUniquelyReferenced_nonNull_native);
  v32 = sub_100063398(v13);
  if ((v10 & 1) == (v38 & 1))
  {
    goto LABEL_28;
  }

  sub_1000DCCC4();
  __break(1u);
LABEL_76:
  result = sub_1000DCC64();
  __break(1u);
  return result;
}

void sub_1000BEA2C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = _s14descr10010BBE9V4YearVMa(0);
  v7 = sub_1000DA214();
  v8 = *a1;
  v9 = *(a1 + *(v6 + 24));
  v14[2] = a2;
  sub_1000B6534(sub_1000CDB60, v14, v9);
  v11 = v10;
  sub_1000B5D80(*(a1 + *(v6 + 28)));
  v15 = v12;

  sub_1000C5440(&v15);

  v13 = v15;
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v11;
  a3[3] = v13;
}

uint64_t sub_1000BEB10@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007BC0(&qword_100120AE8, &unk_1000E38A0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v8 = *a1;
  v7 = a1[1];
  v9 = *(sub_100007BC0(&qword_1001206A0, &qword_1000E01F0) + 48);
  sub_1000D5E8C(v8, v6);
  sub_1000D9FB4();
  sub_1000DA014();
  result = sub_1000080B0(v6, &qword_100120AE8, &unk_1000E38A0);
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = (a2 + v9);
    *v11 = 0;
    v11[1] = v7;
  }

  return result;
}

void sub_1000BEC28()
{
  sub_1000DA404();
  v0 = sub_1000DA3B4();
  sub_100008068(0, &qword_1001267A8, NSPredicate_ptr);
  v1 = sub_1000DC3F4();
  [v0 setPredicate:v1];

  sub_1000DC664();
  if (v8)
  {
    if (qword_10011FBE8 != -1)
    {
      swift_once();
    }

    v2 = sub_1000DAFF4();
    sub_100007EBC(v2, qword_100126710);
    swift_errorRetain();
    v3 = sub_1000DAFD4();
    v4 = sub_1000DC4C4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch entries for word counts: %@", v5, 0xCu);
      sub_1000080B0(v6, &qword_100120A80, &unk_1000E04B0);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_1000BEE68(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v84 = a6;
  v11 = sub_1000DA1F4();
  v82 = *(v11 - 8);
  v83 = v11;
  __chkstk_darwin(v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000DA084();
  v81 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v77 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v78 = &v76 - v18;
  v19 = __chkstk_darwin(v17);
  v79 = &v76 - v20;
  __chkstk_darwin(v19);
  v22 = &v76 - v21;
  v23 = sub_1000DA3F4();
  v80 = a5;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v23 = [a1 title];
    if (v23)
    {
      v26 = a2;
      v27 = v23;
      v28 = sub_1000D9DF4();
      v30 = v29;

      v31 = sub_1000D9DC4();
      sub_100010514(v28, v30);
      if (v31)
      {
        v32 = [v31 string];

        v33 = sub_1000DBF44();
        v25 = v34;

        v23 = v33;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      a2 = v26;
    }

    else
    {
      v25 = 0xE000000000000000;
    }
  }

  v35 = a2;
  v36 = sub_1000A11CC(v23, v25, a2, a3);

  v37 = sub_1000DA3E4();
  if (v38)
  {
    v39 = v37;
    v40 = v38;
  }

  else
  {
    v41 = [a1 text];
    if (v41)
    {
      v76 = a3;
      v42 = v41;
      v43 = sub_1000D9DF4();
      v45 = v44;

      v46 = sub_1000D9DC4();
      sub_100010514(v43, v45);
      if (v46)
      {
        v47 = [v46 string];

        v39 = sub_1000DBF44();
        v40 = v48;
      }

      else
      {
        v39 = 0;
        v40 = 0xE000000000000000;
      }

      a3 = v76;
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }
  }

  v49 = sub_1000A11CC(v39, v40, v35, a3);

  v50 = v36 + v49;
  if (__OFADD__(v36, v49))
  {
    __break(1u);
    goto LABEL_29;
  }

  swift_beginAccess();
  if (__OFADD__(*a4, v50))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *a4 += v50;
  v51 = [a1 entryDate];
  if (v51)
  {
    v52 = v79;
    v76 = (v36 + v49);
    v53 = v51;
    sub_1000DA044();

    v54 = a4;
    v55 = v81;
    (*(v81 + 32))(v22, v52, v14);
    v56 = v14;
    v57 = v82;
    v58 = v83;
    (*(v82 + 104))(v13, enum case for Calendar.Component.month(_:), v83);
    LOBYTE(v52) = sub_1000DA1C4();
    v59 = v57;
    v14 = v56;
    v60 = v58;
    v50 = v76;
    (*(v59 + 8))(v13, v60);
    v61 = v55;
    a4 = v54;
    (*(v61 + 8))(v22, v56);
    if (v52)
    {
      swift_beginAccess();
      v62 = v54[1];
      v63 = __OFADD__(v62, v50);
      v64 = v62 + v50;
      if (!v63)
      {
        v54[1] = v64;
        goto LABEL_23;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

LABEL_23:
  v65 = [a1 entryDate];
  if (v65)
  {
    v66 = v77;
    v67 = v65;
    sub_1000DA044();

    v68 = a4;
    v69 = v81;
    v70 = v78;
    (*(v81 + 32))(v78, v66, v14);
    v72 = v82;
    v71 = v83;
    (*(v82 + 104))(v13, enum case for Calendar.Component.year(_:), v83);
    v73 = sub_1000DA1C4();
    (*(v72 + 8))(v13, v71);
    (*(v69 + 8))(v70, v14);
    if (v73)
    {
      swift_beginAccess();
      v74 = v68[2];
      v63 = __OFADD__(v74, v50);
      v75 = v74 + v50;
      if (!v63)
      {
        v68[2] = v75;
        return;
      }

LABEL_31:
      __break(1u);
    }
  }
}

void sub_1000BF41C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v257 = a6;
  v256 = a5;
  v267 = a3;
  v263 = a2;
  v268 = type metadata accessor for StreakSummary(0);
  __chkstk_darwin(v268);
  v234 = &v227 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_100007BC0(&qword_1001206B8, &qword_1000E0208);
  __chkstk_darwin(v241);
  v240 = (&v227 - v9);
  v239 = sub_100007BC0(&qword_1001206C8, qword_1000E0218);
  v235 = *(v239 - 8);
  __chkstk_darwin(v239);
  v242 = &v227 - v10;
  v273 = sub_1000DAD44();
  v238 = *(v273 - 1);
  __chkstk_darwin(v273);
  v237 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v13 = __chkstk_darwin(v12 - 8);
  v255 = &v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v259 = &v227 - v16;
  v17 = __chkstk_darwin(v15);
  v265 = &v227 - v18;
  v19 = __chkstk_darwin(v17);
  v254 = &v227 - v20;
  v21 = __chkstk_darwin(v19);
  v258 = &v227 - v22;
  v23 = __chkstk_darwin(v21);
  v272 = (&v227 - v24);
  v25 = __chkstk_darwin(v23);
  v270 = &v227 - v26;
  v27 = __chkstk_darwin(v25);
  v269 = &v227 - v28;
  v29 = __chkstk_darwin(v27);
  v284 = &v227 - v30;
  v31 = __chkstk_darwin(v29);
  v283 = (&v227 - v32);
  __chkstk_darwin(v31);
  v282 = (&v227 - v33);
  v286 = sub_1000DA084();
  v274 = *(v286 - 1);
  v34 = __chkstk_darwin(v286);
  v236 = &v227 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v266 = &v227 - v37;
  v38 = __chkstk_darwin(v36);
  v247 = &v227 - v39;
  v40 = __chkstk_darwin(v38);
  v253 = &v227 - v41;
  v42 = __chkstk_darwin(v40);
  v271 = &v227 - v43;
  __chkstk_darwin(v42);
  v285 = &v227 - v44;
  v233 = type metadata accessor for InsightsDataManager.Streaks(0);
  v260 = a4;
  v232 = swift_projectBox();
  v264 = sub_1000DA404();
  v261 = sub_1000DA3B4();
  v288 = sub_100007BC0(&qword_100120148, &unk_1000DFDD0);
  v45 = swift_allocObject();
  v245 = xmmword_1000DFDA0;
  *(v45 + 16) = xmmword_1000DFDA0;
  v46 = sub_100008068(0, &qword_1001267A8, NSPredicate_ptr);
  *(v45 + 32) = sub_1000DC414();
  *(v45 + 40) = sub_1000DC404();
  v251 = sub_100007BC0(&qword_100121ED8, &unk_1000E6500);
  v47 = swift_allocObject();
  v250 = xmmword_1000E2830;
  *(v47 + 16) = xmmword_1000E2830;
  *(v47 + 56) = &type metadata for String;
  v48 = sub_100042300();
  *(v47 + 64) = v48;
  *(v47 + 32) = 0x4464657461657263;
  *(v47 + 40) = 0xEB00000000657461;
  v248 = a1;
  isa = sub_1000D9FE4().super.isa;
  v244 = sub_100008068(0, &qword_1001267C8, NSDate_ptr);
  *(v47 + 96) = v244;
  v50 = sub_1000CD088(&qword_1001267D0, &qword_1001267C8, NSDate_ptr, &protocol conformance descriptor for NSObject);
  *(v47 + 72) = isa;
  *(v47 + 136) = &type metadata for String;
  *(v47 + 144) = v48;
  v252 = v48;
  v51 = v50;
  *(v47 + 104) = v50;
  *(v47 + 112) = 0x4464657461657263;
  *(v47 + 120) = 0xEB00000000657461;
  v246 = "InsightsDataManager";
  *(v45 + 48) = sub_1000DC3E4();
  v52 = sub_1000DC124().super.isa;

  v53 = objc_opt_self();
  v54 = [v53 andPredicateWithSubpredicates:v52];

  v55 = v261;
  [v261 setPredicate:v54];

  v56 = swift_allocObject();
  v243 = xmmword_1000E2FB0;
  *(v56 + 16) = xmmword_1000E2FB0;
  v57 = sub_100008068(0, &qword_1001267D8, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v56 + 32) = sub_1000DC524();
  v58 = sub_1000DC124().super.isa;

  [v55 setSortDescriptors:v58];

  v59 = sub_100007BC0(&qword_1001267B8, &qword_1000E7100);
  v60 = swift_allocObject();
  v249 = xmmword_1000DFEF0;
  *(v60 + 16) = xmmword_1000DFEF0;
  *(v60 + 56) = &type metadata for String;
  *(v60 + 32) = 0x4464657461657263;
  *(v60 + 40) = 0xEB00000000657461;
  v61 = sub_1000DC124().super.isa;

  [v55 setPropertiesToFetch:v61];

  v62 = v287;
  v63 = sub_1000DC694();
  v262 = v62;
  if (v62)
  {

    return;
  }

  v227 = v53;
  v228 = v57;
  v229 = v51;
  v230 = v59;
  v231 = v46;
  v281 = v63;
  if (v63 >> 62)
  {
    goto LABEL_107;
  }

  v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v65 = v286;
  if (v64)
  {
    v66 = 0;
    v280 = v63 & 0xC000000000000001;
    v279 = v63 & 0xFFFFFFFFFFFFFF8;
    v276 = (v274 + 56);
    v275 = (v274 + 48);
    v287 = _swiftEmptyArrayStorage;
    *&v278 = v274 + 32;
    v277 = v64;
    while (1)
    {
      if (v280)
      {
        v67 = sub_1000DCA24();
        v68 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v66 >= *(v279 + 16))
        {
          goto LABEL_102;
        }

        v67 = *(v63 + 8 * v66 + 32);
        v68 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          v64 = sub_1000DCB14();
          v63 = v281;
          goto LABEL_5;
        }
      }

      v69 = v67;
      v70 = [v69 createdDate];
      if (v70)
      {
        v71 = v70;
        v72 = v284;
        sub_1000DA044();

        v73 = 0;
      }

      else
      {
        v73 = 1;
        v72 = v284;
      }

      (*v276)(v72, v73, 1, v65);
      v74 = v72;
      v75 = v283;
      sub_10001865C(v74, v283, &qword_1001203B8, &qword_1000E0460);
      v76 = v75;
      v77 = v282;
      sub_10001865C(v76, v282, &qword_1001203B8, &qword_1000E0460);

      if ((*v275)(v77, 1, v65) == 1)
      {
        sub_1000080B0(v77, &qword_1001203B8, &qword_1000E0460);
      }

      else
      {
        v78 = *v278;
        (*v278)(v285, v77, v65);
        v79 = v287;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_1000474F0(0, *(v79 + 2) + 1, 1, v79);
        }

        v287 = v79;
        v81 = *(v79 + 2);
        v80 = *(v79 + 3);
        if (v81 >= v80 >> 1)
        {
          v287 = sub_1000474F0((v80 > 1), v81 + 1, 1, v287);
        }

        v82 = v287;
        *(v287 + 2) = v81 + 1;
        v83 = v82 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v81;
        v65 = v286;
        v78(v83);
      }

      ++v66;
      v63 = v281;
      if (v68 == v277)
      {
        goto LABEL_25;
      }
    }
  }

  v287 = _swiftEmptyArrayStorage;
LABEL_25:

  v84 = sub_1000DA3B4();
  v85 = swift_allocObject();
  *(v85 + 16) = v245;
  *(v85 + 32) = sub_1000DC414();
  *(v85 + 40) = sub_1000DC404();
  v86 = swift_allocObject();
  *(v86 + 16) = v250;
  v87 = v252;
  *(v86 + 56) = &type metadata for String;
  *(v86 + 64) = v87;
  *(v86 + 32) = 0x4464657461647075;
  *(v86 + 40) = 0xEB00000000657461;
  v88.super.isa = sub_1000D9FE4().super.isa;
  v89 = v229;
  *(v86 + 96) = v244;
  *(v86 + 104) = v89;
  *(v86 + 72) = v88;
  *(v86 + 136) = &type metadata for String;
  *(v86 + 144) = v87;
  *(v86 + 112) = 0x4464657461647075;
  *(v86 + 120) = 0xEB00000000657461;
  *(v85 + 48) = sub_1000DC3E4();
  v90 = sub_1000DC124().super.isa;

  v91 = [v227 andPredicateWithSubpredicates:v90];

  [v84 setPredicate:v91];
  v92 = swift_allocObject();
  *(v92 + 16) = v243;
  swift_getKeyPath();
  *(v92 + 32) = sub_1000DC524();
  v93 = sub_1000DC124().super.isa;

  [v84 setSortDescriptors:v93];

  v94 = swift_allocObject();
  *(v94 + 16) = v249;
  *(v94 + 56) = &type metadata for String;
  *(v94 + 32) = 0x4464657461647075;
  *(v94 + 40) = 0xEB00000000657461;
  v95 = sub_1000DC124().super.isa;

  [v84 setPropertiesToFetch:v95];

  v96 = v262;
  v97 = sub_1000DC694();
  if (v96)
  {

    return;
  }

  v98 = v97;
  if (v97 >> 62)
  {
    v99 = sub_1000DCB14();
  }

  else
  {
    v99 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v273;
  v264 = v84;
  v262 = 0;
  if (v99)
  {
    v101 = 0;
    v288 = (v98 & 0xC000000000000001);
    v285 = (v98 & 0xFFFFFFFFFFFFFF8);
    v284 = (v274 + 56);
    v283 = (v274 + 48);
    v102 = _swiftEmptyArrayStorage;
    v282 = (v274 + 32);
    v281 = v99;
    v280 = v98;
    while (1)
    {
      if (v288)
      {
        v105 = sub_1000DCA24();
        v104 = v272;
        v106 = (v101 + 1);
        if (__OFADD__(v101, 1))
        {
          goto LABEL_103;
        }
      }

      else
      {
        v104 = v272;
        if (v101 >= *(v285 + 2))
        {
          goto LABEL_104;
        }

        v105 = *(v98 + 8 * v101 + 32);
        v106 = (v101 + 1);
        if (__OFADD__(v101, 1))
        {
          goto LABEL_103;
        }
      }

      v107 = v105;
      v108 = [v107 updatedDate];
      v109 = v102;
      if (v108)
      {
        v110 = v108;
        sub_1000DA044();

        v111 = 0;
      }

      else
      {
        v111 = 1;
      }

      v112 = v286;
      (*v284)(v104, v111, 1, v286);
      v113 = v104;
      v114 = v270;
      sub_10001865C(v113, v270, &qword_1001203B8, &qword_1000E0460);
      v115 = v114;
      v116 = v269;
      sub_10001865C(v115, v269, &qword_1001203B8, &qword_1000E0460);

      if ((*v283)(v116, 1, v112) == 1)
      {
        sub_1000080B0(v116, &qword_1001203B8, &qword_1000E0460);
        v102 = v109;
        v98 = v280;
        v103 = v281;
      }

      else
      {
        v117 = *v282;
        (*v282)(v271, v116, v112);
        v102 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1000474F0(0, *(v109 + 2) + 1, 1, v109);
        }

        v98 = v280;
        v119 = *(v102 + 2);
        v118 = *(v102 + 3);
        v103 = v281;
        if (v119 >= v118 >> 1)
        {
          v102 = sub_1000474F0((v118 > 1), v119 + 1, 1, v102);
        }

        *(v102 + 2) = v119 + 1;
        v117(v102 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v119);
      }

      ++v101;
      v100 = v273;
      if (v106 == v103)
      {
        goto LABEL_49;
      }
    }
  }

  v102 = _swiftEmptyArrayStorage;
LABEL_49:
  v279 = v102;

  v288 = sub_1000DA354();
  v120 = sub_1000DA334();
  v121 = swift_allocObject();
  *(v121 + 16) = v250;
  v122 = v252;
  *(v121 + 56) = &type metadata for String;
  *(v121 + 64) = v122;
  *(v121 + 32) = 0x7079547465737361;
  *(v121 + 40) = 0xE900000000000065;
  v123 = v238;
  v124 = v237;
  (*(v238 + 104))(v237, enum case for AssetType.streakEvent(_:), v100);
  v125 = sub_1000DAD34();
  v126 = v100;
  v128 = v127;
  (*(v123 + 8))(v124, v126);
  *(v121 + 96) = &type metadata for String;
  *(v121 + 104) = v122;
  *(v121 + 72) = v125;
  *(v121 + 80) = v128;
  *(v121 + 136) = &type metadata for String;
  *(v121 + 144) = v122;
  strcpy((v121 + 112), "assetMetaData");
  *(v121 + 126) = -4864;
  v129 = sub_1000DC3E4();
  [v120 setPredicate:v129];

  v130 = swift_allocObject();
  *(v130 + 16) = v249;
  *(v130 + 56) = &type metadata for String;
  strcpy((v130 + 32), "assetMetaData");
  *(v130 + 46) = -4864;
  v131 = sub_1000DC124().super.isa;

  [v120 setPropertiesToFetch:v131];

  v132 = v262;
  v133 = sub_1000DC694();
  if (v132)
  {

    return;
  }

  v134 = v133;
  v271 = v120;
  v135 = v287;
  if (v133 >> 62)
  {
    v136 = sub_1000DCB14();
  }

  else
  {
    v136 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v137 = v242;
  v262 = 0;
  if (v136)
  {
    v138 = 0;
    v285 = (v134 & 0xC000000000000001);
    v284 = (v134 & 0xFFFFFFFFFFFFFF8);
    v280 = v235 + 56;
    v288 = _swiftEmptyArrayStorage;
    v281 = (v274 + 32);
    v278 = xmmword_1000DFEE0;
    v283 = v134;
    v282 = v136;
    while (1)
    {
      if (v285)
      {
        v139 = sub_1000DCA24();
      }

      else
      {
        if (v138 >= *(v284 + 2))
        {
          goto LABEL_106;
        }

        v139 = *(v134 + 8 * v138 + 32);
      }

      v140 = v139;
      v141 = (v138 + 1);
      if (__OFADD__(v138, 1))
      {
        goto LABEL_105;
      }

      *(objc_allocWithZone(type metadata accessor for StreakEventAsset(0)) + OBJC_IVAR____TtC20JournalWidgetsSecure16StreakEventAsset_metadata) = 0;
      v142 = v140;
      v143 = sub_100084A4C(v142);
      v144 = v143;
      v145 = OBJC_IVAR____TtC20JournalWidgetsSecure16StreakEventAsset_metadata;
      if (*&v143[OBJC_IVAR____TtC20JournalWidgetsSecure16StreakEventAsset_metadata])
      {
        goto LABEL_67;
      }

      v146 = *&v143[OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO];
      if (v146)
      {
        v147 = [v146 assetMetaData];
        if (v147)
        {
          v148 = v147;
          v149 = sub_1000D9DF4();
          v151 = v150;

          v152 = v240;
          *v240 = v149;
          v152[1] = v151;
          swift_storeEnumTagMultiPayload();
          sub_100007BC0(&qword_1001267E0, &qword_1000E7190);
          v153 = swift_allocObject();
          (*v280)(v153 + *(*v153 + 104), 1, 1, v239);
          *(v153 + *(*v153 + 112)) = v278;
          v154 = v152;
          v137 = v242;
          sub_10001865C(v154, v153 + *(*v153 + 120), &qword_1001206B8, &qword_1000E0208);
          *&v144[v145] = v153;
        }
      }

      if (*&v144[v145])
      {
LABEL_67:

        sub_100013D6C(v137);

        v155 = sub_1000DA444();
        v156 = *(v155 - 8);
        if ((*(v156 + 48))(v137, 1, v155) != 1)
        {
          v157 = v247;
          sub_1000DA434();

          (*(v156 + 8))(v137, v155);
          v158 = *v281;
          (*v281)(v253, v157, v286);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v134 = v283;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v288 = sub_1000474F0(0, *(v288 + 2) + 1, 1, v288);
          }

          v135 = v287;
          v161 = *(v288 + 2);
          v160 = *(v288 + 3);
          if (v161 >= v160 >> 1)
          {
            v288 = sub_1000474F0((v160 > 1), v161 + 1, 1, v288);
          }

          v162 = v288;
          *(v288 + 2) = v161 + 1;
          v158(v162 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v161);
          goto LABEL_57;
        }
      }

      else
      {

        v163 = sub_1000DA444();
        (*(*(v163 - 8) + 56))(v137, 1, 1, v163);
      }

      v134 = v283;
      sub_1000080B0(v137, &qword_1001206C8, qword_1000E0218);
      v135 = v287;
LABEL_57:
      ++v138;
      if (v141 == v282)
      {
        goto LABEL_76;
      }
    }
  }

  v288 = _swiftEmptyArrayStorage;
LABEL_76:

  __chkstk_darwin(v164);
  *(&v227 - 2) = v248;
  v165 = v262;
  v166 = sub_1000B5AB0(sub_1000CD8C4, (&v227 - 4), v288);
  v167 = v268;
  *&v278 = swift_allocBox();
  v169 = v168;
  v170 = (v274 + 56);
  v171 = *(v274 + 56);
  v172 = v286;
  (v171)(v168, 1, 1, v286);
  (v171)(&v169[v167[5]], 1, 1, v172);
  (v171)(&v169[v167[6]], 1, 1, v172);
  v173 = v167[7];
  v283 = v169;
  *&v169[v173] = 0;
  v277 = swift_allocBox();
  v175 = v174;
  (v171)(v174, 1, 1, v172);
  (v171)(v175 + v167[5], 1, 1, v172);
  v176 = v175 + v167[6];
  v285 = v170;
  v284 = v171;
  (v171)(v176, 1, 1, v172);
  v177 = v167[7];
  v282 = v175;
  *(v175 + v177) = 0;
  v290 = v135;

  sub_10007005C(v178);

  sub_10007005C(v179);
  v289 = v290;

  sub_1000C536C(&v289, sub_1000C680C, sub_1000C58F8);
  v262 = v165;
  if (v165)
  {

    __break(1u);
  }

  else
  {

    v272 = v289;
    v180 = v267;
    if (qword_10011FBE8 != -1)
    {
      swift_once();
    }

    v181 = sub_1000DAFF4();
    sub_100007EBC(v181, qword_100126710);
    v182 = v287;

    v183 = v279;

    v184 = sub_1000DAFD4();
    v185 = sub_1000DC4A4();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      *v186 = 134218496;
      v187 = *(v182 + 2);

      *(v186 + 4) = v187;

      *(v186 + 12) = 2048;
      v188 = *(v183 + 16);

      *(v186 + 14) = v188;

      *(v186 + 22) = 2048;
      v189 = *(v166 + 2);

      *(v186 + 24) = v189;

      _os_log_impl(&_mh_execute_header, v184, v185, "Creating streaks from %ld created, %ld updated, %ld event dates", v186, 0x20u);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v190 = v286;
    v191 = v236;
    [v263 reset];
    v192 = *(v272 + 2);
    v193 = v260;
    if (v192)
    {
      v194 = v274;
      v195 = v272 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
      swift_beginAccess();
      swift_beginAccess();
      v196 = *(v194 + 16);
      v194 += 16;
      v276 = *(v194 + 56);
      v286 = (v194 + 32);
      v275 = (v194 + 16);
      v273 = (v194 - 8);
      v197 = v266;
      v287 = v194;
      v288 = v196;
      (v196)(v266, v195, v190);
      while (1)
      {
        sub_1000C1C04(v197, v278, v180, v193);
        sub_1000C2AD0(v197, v277, v180, v193);
        v204 = v254;
        sub_100007F58(v283, v254, &qword_1001203B8, &qword_1000E0460);
        v205 = *v286;
        v206 = (*v286)(v204, 1, v190);
        v281 = v192;
        v280 = v195;
        v279 = v205;
        if (v206 == 1)
        {
          v207 = v258;
          (v288)(v258, v197, v190);
          if (v205(v204, 1, v190) != 1)
          {
            sub_1000080B0(v204, &qword_1001203B8, &qword_1000E0460);
          }
        }

        else
        {
          v207 = v258;
          (*v275)(v258, v204, v190);
        }

        v208 = v284;
        (v284)(v207, 0, 1, v190);
        v209 = v283;
        sub_1000275E0(v207, v283);
        v210 = v268;
        v211 = *(v268 + 20);
        sub_1000080B0(&v209[v211], &qword_1001203B8, &qword_1000E0460);
        v212 = v266;
        (v288)(&v209[v211], v266, v190);
        v208(&v209[v211], 0, 1, v190);
        v213 = v265;
        sub_1000DA194();
        sub_1000275E0(v213, &v209[*(v210 + 24)]);
        v214 = v255;
        sub_100007F58(v282, v255, &qword_1001203B8, &qword_1000E0460);
        v215 = v279;
        if ((v279)(v214, 1, v190) == 1)
        {
          v198 = v259;
          (v288)(v259, v212, v190);
          if (v215(v214, 1, v190) != 1)
          {
            sub_1000080B0(v214, &qword_1001203B8, &qword_1000E0460);
          }
        }

        else
        {
          v198 = v259;
          (*v275)(v259, v214, v190);
        }

        v199 = v284;
        (v284)(v198, 0, 1, v190);
        v200 = v282;
        sub_1000275E0(v198, v282);
        v201 = v268;
        v202 = *(v268 + 20);
        sub_1000080B0(&v200[v202], &qword_1001203B8, &qword_1000E0460);
        v197 = v266;
        (v288)(&v200[v202], v266, v190);
        v199(&v200[v202], 0, 1, v190);
        v203 = v265;
        v180 = v267;
        sub_1000DA194();
        (*v273)(v197, v190);
        sub_1000275E0(v203, &v200[*(v201 + 24)]);
        v195 = &v276[v280];
        v192 = (v281 - 1);
        v193 = v260;
        if (v281 == 1)
        {
          break;
        }

        (v288)(v197, v195, v190);
      }

      v191 = v236;
    }

    else
    {
    }

    sub_1000D9FA4();
    sub_1000C1C04(v191, v278, v180, v193);
    v216 = *(v274 + 8);
    v216(v191, v190);
    sub_1000D9FA4();
    sub_1000C2AD0(v191, v277, v180, v193);
    v216(v191, v190);
    v217 = v232;
    swift_beginAccess();
    v218 = v234;
    sub_1000C5228(v217, v234, type metadata accessor for StreakSummary);
    v219 = v248;
    v220 = sub_10003B84C(v248);
    sub_1000C922C(v218, type metadata accessor for StreakSummary);
    v221 = v268;
    v222 = v233;
    if ((v220 & 1) == 0)
    {
      swift_beginAccess();
      sub_1000C5228(v217, v218, type metadata accessor for StreakSummary);
      swift_beginAccess();
      sub_10002127C(v218, v217 + v222[6]);
      sub_1000C922C(v217, type metadata accessor for StreakSummary);
      v223 = v284;
      (v284)(v217, 1, 1, v190);
      v223(v217 + v221[5], 1, 1, v190);
      v223(v217 + v221[6], 1, 1, v190);
      *(v217 + v221[7]) = 0;
    }

    swift_beginAccess();
    sub_1000C5228(v217 + v222[5], v218, type metadata accessor for StreakSummary);
    v224 = sub_10003B84C(v219);

    sub_1000C922C(v218, type metadata accessor for StreakSummary);
    if ((v224 & 1) == 0)
    {
      swift_beginAccess();
      sub_1000C5228(v217 + v222[5], v218, type metadata accessor for StreakSummary);
      swift_beginAccess();
      sub_10002127C(v218, v217 + v222[7]);
      v225 = v217 + v222[5];
      sub_1000C922C(v225, type metadata accessor for StreakSummary);
      v226 = v284;
      (v284)(v225, 1, 1, v190);
      v226(v225 + v221[5], 1, 1, v190);
      v226(v225 + v221[6], 1, 1, v190);
      *(v225 + v221[7]) = 0;
    }
  }
}

void sub_1000C1A1C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_100007F58(a1, &v15 - v9, &qword_1001203B8, &qword_1000E0460);
  v11 = *a2;
  v12 = sub_1000DA084();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    isa = sub_1000D9FE4().super.isa;
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_1000C1B64@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_1000DA044();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1000DA084();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

uint64_t sub_1000C1C04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v118 = a4;
  v110 = a3;
  v4 = type metadata accessor for StreakSummary(0);
  __chkstk_darwin(v4);
  v114 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000D9FC4();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v100 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000D9B24();
  v108 = *(v8 - 8);
  v109 = v8;
  __chkstk_darwin(v8);
  v111 = &v94[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v11 = __chkstk_darwin(v10 - 8);
  v112 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v94[-v14];
  __chkstk_darwin(v13);
  v17 = &v94[-v16];
  v18 = sub_1000DA084();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v105 = &v94[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v106 = &v94[-v23];
  v24 = __chkstk_darwin(v22);
  v107 = &v94[-v25];
  v26 = __chkstk_darwin(v24);
  v113 = &v94[-v27];
  v28 = __chkstk_darwin(v26);
  v116 = &v94[-v29];
  __chkstk_darwin(v28);
  v31 = &v94[-v30];
  v32 = swift_projectBox();
  v103 = type metadata accessor for InsightsDataManager.Streaks(0);
  v104 = swift_projectBox();
  swift_beginAccess();
  v115 = v4;
  v33 = *(v4 + 24);
  v118 = v32;
  sub_100007F58(v32 + v33, v17, &qword_1001203B8, &qword_1000E0460);
  v34 = *(v19 + 48);
  if (v34(v17, 1, v18) == 1)
  {
    return sub_1000080B0(v17, &qword_1001203B8, &qword_1000E0460);
  }

  v36 = *(v19 + 32);
  v36(v31, v17, v18);
  v37 = v18;
  if ((sub_1000DA004() & 1) == 0)
  {
    return (*(v19 + 8))(v31, v18);
  }

  v38 = v118;
  swift_beginAccess();
  sub_100007F58(v38, v15, &qword_1001203B8, &qword_1000E0460);
  if (v34(v15, 1, v37) != 1)
  {
    v117 = v19;
    v36(v116, v15, v37);
    swift_beginAccess();
    v40 = v115;
    v41 = v112;
    sub_100007F58(v38 + v115[5], v112, &qword_1001203B8, &qword_1000E0460);
    if (v34(v41, 1, v37) == 1)
    {
      v39 = v117;
      v42 = v41;
      v43 = v117[1];
      v43(v116, v37);
      v43(v31, v37);
      sub_1000080B0(v42, &qword_1001203B8, &qword_1000E0460);
      goto LABEL_15;
    }

    v99 = v31;
    v36(v113, v41, v37);
    sub_100007BC0(&qword_100121880, &unk_1000E7830);
    v44 = sub_1000DA1F4();
    v45 = *(v44 - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000DE2C0;
    v49 = v48 + v47;
    v50 = *(v45 + 104);
    v39 = (v45 + 104);
    v50(v49, enum case for Calendar.Component.day(_:), v44);
    v50(v49 + v46, enum case for Calendar.Component.second(_:), v44);
    v38 = v113;
    v51 = sub_10003921C(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v52 = v111;
    v53 = v116;
    sub_1000DA164();

    v54 = sub_1000D9AE4();
    if (v55)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v38, v37);
LABEL_14:
      v56(v53, v37);
      v56(v99, v37);
      v38 = v118;
      goto LABEL_15;
    }

    v57 = v54;
    v58 = sub_1000D9B04();
    if (v59)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v113, v37);
      goto LABEL_14;
    }

    v112 = v37;
    v62 = v58 != 0;
    v63 = __OFADD__(v57, v62);
    v64 = v57 + v62;
    if (v63)
    {
      __break(1u);
    }

    else
    {
      v39 = v117;
      v38 = v118;
      v65 = v113;
      v37 = v106;
      v51 = v107;
      if (v64 < 2)
      {
        (*(v108 + 8))(v52, v109);
        v87 = v39[1];
        v37 = v112;
        v87(v65, v112);
        v87(v53, v37);
        v87(v99, v37);
        goto LABEL_6;
      }

      v110 = v64;
      if (qword_10011FBE8 == -1)
      {
LABEL_20:
        v66 = sub_1000DAFF4();
        sub_100007EBC(v66, qword_100126710);
        v67 = v39[2];
        v68 = v51;
        v69 = v39;
        v70 = v112;
        v67(v68, v116, v112);
        v67(v37, v113, v70);
        v71 = v105;
        v67(v105, v99, v70);
        v72 = sub_1000DAFD4();
        v73 = sub_1000DC4E4();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v119[0] = v97;
          *v74 = 134218754;
          *(v74 + 4) = v110;
          *(v74 + 12) = 2080;
          v75 = v100;
          sub_1000D9954();
          sub_1000C4E8C(&qword_1001267E8, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
          v76 = v102;
          v96 = v72;
          v77 = v107;
          sub_1000DA064();
          v95 = v73;
          v101 = *(v101 + 8);
          (v101)(v75, v76);
          v98 = v69[1];
          v98(v77, v70);
          v78 = sub_10001A58C(v120, v121, v119);

          *(v74 + 14) = v78;
          *(v74 + 22) = 2080;
          sub_1000D9954();
          v79 = v106;
          sub_1000DA064();
          (v101)(v75, v76);
          v98(v79, v70);
          v80 = sub_10001A58C(v120, v121, v119);

          *(v74 + 24) = v80;
          *(v74 + 32) = 2080;
          sub_1000D9954();
          v81 = v105;
          sub_1000DA064();
          (v101)(v75, v76);
          v82 = v98;
          v98(v81, v70);
          v83 = sub_10001A58C(v120, v121, v119);
          v84 = v110;

          *(v74 + 34) = v83;
          v85 = v96;
          _os_log_impl(&_mh_execute_header, v96, v95, "Ending %ld day streak from %s to %s after %s", v74, 0x2Au);
          swift_arrayDestroy();

          (*(v108 + 8))(v111, v109);
          v82(v113, v70);
          v82(v116, v70);
          v82(v99, v70);
          v38 = v118;
          v86 = v104;
        }

        else
        {

          v88 = v69[1];
          v88(v71, v70);
          v88(v37, v70);
          v88(v107, v70);
          (*(v108 + 8))(v52, v109);
          v88(v113, v70);
          v88(v116, v70);
          v88(v99, v70);
          v86 = v104;
          v84 = v110;
        }

        swift_beginAccess();
        v89 = v115;
        *(v38 + v115[7]) = v84;
        swift_beginAccess();
        v61 = v114;
        sub_1000C5228(v86, v114, type metadata accessor for StreakSummary);
        swift_beginAccess();
        v90 = v103;
        sub_10002127C(v61, v86 + *(v103 + 24));
        swift_beginAccess();
        sub_1000C5228(v38, v61, type metadata accessor for StreakSummary);
        swift_beginAccess();
        sub_10002127C(v61, v86);
        swift_beginAccess();
        v91 = *(v38 + v89[7]);
        swift_beginAccess();
        if (v91 >= *(v86 + *(v90 + 32) + v89[7]))
        {
          swift_beginAccess();
          sub_1000C5228(v38, v61, type metadata accessor for StreakSummary);
          swift_beginAccess();
          sub_10002127C(v61, v86 + *(v90 + 32));
        }

        v92 = v117[7];
        v93 = v112;
        v92(v61, 1, 1, v112);
        v92(&v61[v89[5]], 1, 1, v93);
        v92(&v61[v89[6]], 1, 1, v93);
        *&v61[v89[7]] = 0;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_20;
  }

  (*(v19 + 8))(v31, v37);
  sub_1000080B0(v15, &qword_1001203B8, &qword_1000E0460);
  v39 = v19;
LABEL_6:
  v40 = v115;
LABEL_15:
  v60 = v39[7];
  v61 = v114;
  v60(v114, 1, 1, v37);
  v60(&v61[v40[5]], 1, 1, v37);
  v60(&v61[v40[6]], 1, 1, v37);
  *&v61[v40[7]] = 0;
LABEL_16:
  swift_beginAccess();
  return sub_10002127C(v61, v38);
}

uint64_t sub_1000C2AD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a1;
  v118 = a4;
  v110 = a3;
  v4 = type metadata accessor for StreakSummary(0);
  __chkstk_darwin(v4);
  v114 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000D9FC4();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v100 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000D9B24();
  v108 = *(v8 - 8);
  v109 = v8;
  __chkstk_darwin(v8);
  v111 = &v94[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  v11 = __chkstk_darwin(v10 - 8);
  v112 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v94[-v14];
  __chkstk_darwin(v13);
  v17 = &v94[-v16];
  v18 = sub_1000DA084();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v105 = &v94[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v106 = &v94[-v23];
  v24 = __chkstk_darwin(v22);
  v107 = &v94[-v25];
  v26 = __chkstk_darwin(v24);
  v113 = &v94[-v27];
  v28 = __chkstk_darwin(v26);
  v116 = &v94[-v29];
  __chkstk_darwin(v28);
  v31 = &v94[-v30];
  v32 = swift_projectBox();
  v103 = type metadata accessor for InsightsDataManager.Streaks(0);
  v104 = swift_projectBox();
  swift_beginAccess();
  v115 = v4;
  v33 = *(v4 + 24);
  v118 = v32;
  sub_100007F58(v32 + v33, v17, &qword_1001203B8, &qword_1000E0460);
  v34 = *(v19 + 48);
  if (v34(v17, 1, v18) == 1)
  {
    return sub_1000080B0(v17, &qword_1001203B8, &qword_1000E0460);
  }

  v36 = *(v19 + 32);
  v36(v31, v17, v18);
  v37 = v18;
  if ((sub_1000DA004() & 1) == 0)
  {
    return (*(v19 + 8))(v31, v18);
  }

  v38 = v118;
  swift_beginAccess();
  sub_100007F58(v38, v15, &qword_1001203B8, &qword_1000E0460);
  if (v34(v15, 1, v37) != 1)
  {
    v117 = v19;
    v36(v116, v15, v37);
    swift_beginAccess();
    v40 = v115;
    v41 = v112;
    sub_100007F58(v38 + v115[5], v112, &qword_1001203B8, &qword_1000E0460);
    if (v34(v41, 1, v37) == 1)
    {
      v39 = v117;
      v42 = v41;
      v43 = v117[1];
      v43(v116, v37);
      v43(v31, v37);
      sub_1000080B0(v42, &qword_1001203B8, &qword_1000E0460);
      goto LABEL_15;
    }

    v99 = v31;
    v36(v113, v41, v37);
    sub_100007BC0(&qword_100121880, &unk_1000E7830);
    v44 = sub_1000DA1F4();
    v45 = *(v44 - 8);
    v46 = *(v45 + 72);
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000DE2C0;
    v49 = v48 + v47;
    v50 = *(v45 + 104);
    v39 = (v45 + 104);
    v50(v49, enum case for Calendar.Component.weekOfYear(_:), v44);
    v50(v49 + v46, enum case for Calendar.Component.second(_:), v44);
    v38 = v113;
    v51 = sub_10003921C(v48);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v52 = v111;
    v53 = v116;
    sub_1000DA164();

    v54 = sub_1000D9AD4();
    if (v55)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v38, v37);
LABEL_14:
      v56(v53, v37);
      v56(v99, v37);
      v38 = v118;
      goto LABEL_15;
    }

    v57 = v54;
    v58 = sub_1000D9B04();
    if (v59)
    {
      (*(v108 + 8))(v52, v109);
      v39 = v117;
      v56 = v117[1];
      v56(v113, v37);
      goto LABEL_14;
    }

    v112 = v37;
    v62 = v58 != 0;
    v63 = __OFADD__(v57, v62);
    v64 = v57 + v62;
    if (v63)
    {
      __break(1u);
    }

    else
    {
      v39 = v117;
      v38 = v118;
      v65 = v113;
      v37 = v106;
      v51 = v107;
      if (v64 < 2)
      {
        (*(v108 + 8))(v52, v109);
        v87 = v39[1];
        v37 = v112;
        v87(v65, v112);
        v87(v53, v37);
        v87(v99, v37);
        goto LABEL_6;
      }

      v110 = v64;
      if (qword_10011FBE8 == -1)
      {
LABEL_20:
        v66 = sub_1000DAFF4();
        sub_100007EBC(v66, qword_100126710);
        v67 = v39[2];
        v68 = v51;
        v69 = v39;
        v70 = v112;
        v67(v68, v116, v112);
        v67(v37, v113, v70);
        v71 = v105;
        v67(v105, v99, v70);
        v72 = sub_1000DAFD4();
        v73 = sub_1000DC4E4();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v119[0] = v97;
          *v74 = 134218754;
          *(v74 + 4) = v110;
          *(v74 + 12) = 2080;
          v75 = v100;
          sub_1000D9954();
          sub_1000C4E8C(&qword_1001267E8, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
          v76 = v102;
          v96 = v72;
          v77 = v107;
          sub_1000DA064();
          v95 = v73;
          v101 = *(v101 + 8);
          (v101)(v75, v76);
          v98 = v69[1];
          v98(v77, v70);
          v78 = sub_10001A58C(v120, v121, v119);

          *(v74 + 14) = v78;
          *(v74 + 22) = 2080;
          sub_1000D9954();
          v79 = v106;
          sub_1000DA064();
          (v101)(v75, v76);
          v98(v79, v70);
          v80 = sub_10001A58C(v120, v121, v119);

          *(v74 + 24) = v80;
          *(v74 + 32) = 2080;
          sub_1000D9954();
          v81 = v105;
          sub_1000DA064();
          (v101)(v75, v76);
          v82 = v98;
          v98(v81, v70);
          v83 = sub_10001A58C(v120, v121, v119);
          v84 = v110;

          *(v74 + 34) = v83;
          v85 = v96;
          _os_log_impl(&_mh_execute_header, v96, v95, "Ending %ld week streak from %s to %s after %s", v74, 0x2Au);
          swift_arrayDestroy();

          (*(v108 + 8))(v111, v109);
          v82(v113, v70);
          v82(v116, v70);
          v82(v99, v70);
          v38 = v118;
          v86 = v104;
        }

        else
        {

          v88 = v69[1];
          v88(v71, v70);
          v88(v37, v70);
          v88(v107, v70);
          (*(v108 + 8))(v52, v109);
          v88(v113, v70);
          v88(v116, v70);
          v88(v99, v70);
          v86 = v104;
          v84 = v110;
        }

        swift_beginAccess();
        v89 = v115;
        *(v38 + v115[7]) = v84;
        swift_beginAccess();
        v90 = v103;
        v61 = v114;
        sub_1000C5228(v86 + *(v103 + 20), v114, type metadata accessor for StreakSummary);
        swift_beginAccess();
        sub_10002127C(v61, v86 + v90[7]);
        swift_beginAccess();
        sub_1000C5228(v38, v61, type metadata accessor for StreakSummary);
        swift_beginAccess();
        sub_10002127C(v61, v86 + v90[5]);
        swift_beginAccess();
        v91 = *(v38 + v89[7]);
        swift_beginAccess();
        if (v91 >= *(v86 + v90[9] + v89[7]))
        {
          swift_beginAccess();
          sub_1000C5228(v38, v61, type metadata accessor for StreakSummary);
          swift_beginAccess();
          sub_10002127C(v61, v86 + v90[9]);
        }

        v92 = v117[7];
        v93 = v112;
        v92(v61, 1, 1, v112);
        v92(&v61[v89[5]], 1, 1, v93);
        v92(&v61[v89[6]], 1, 1, v93);
        *&v61[v89[7]] = 0;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_20;
  }

  (*(v19 + 8))(v31, v37);
  sub_1000080B0(v15, &qword_1001203B8, &qword_1000E0460);
  v39 = v19;
LABEL_6:
  v40 = v115;
LABEL_15:
  v60 = v39[7];
  v61 = v114;
  v60(v114, 1, 1, v37);
  v60(&v61[v40[5]], 1, 1, v37);
  v60(&v61[v40[6]], 1, 1, v37);
  *&v61[v40[7]] = 0;
LABEL_16:
  swift_beginAccess();
  return sub_10002127C(v61, v38);
}

uint64_t sub_1000C39A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007BC0(&qword_100126740, &qword_1000E7018);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_100007F58(a1, &v17 - v9, &qword_100126740, &qword_1000E7018);
  v11 = *(v5 + 56);
  v12 = *&v10[v11];
  v13 = *&v10[v11 + 8];
  v14 = &v8[v11];
  v17 = *&v10[v11 + 16];
  sub_10001865C(v10, v8, &qword_100120AE8, &unk_1000E38A0);
  *v14 = v12;
  *(v14 + 1) = v13;
  *(v14 + 1) = v17;
  v15 = sub_1000DA084();
  (*(*(v15 - 8) + 16))(a2, v8, v15);
  return sub_1000080B0(v8, &qword_100126740, &qword_1000E7018);
}

void sub_1000C3B04(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_1000DAD44();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v28 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v26 - v7;
  v30 = a2 + 16;
  v31 = sub_1000DA354();
  v29 = sub_1000DA334();
  sub_100007BC0(&qword_100120148, &unk_1000DFDD0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E6E40;
  v10 = v9;
  v27 = v9;
  v26[1] = sub_100008068(0, &qword_1001267A8, NSPredicate_ptr);
  *(v10 + 32) = sub_1000DC424();
  sub_100007BC0(&qword_100121ED8, &unk_1000E6500);
  v11 = swift_allocObject();
  v33 = xmmword_1000DE2C0;
  *(v11 + 16) = xmmword_1000DE2C0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100042300();
  *(v11 + 32) = 0x7079547465737361;
  *(v11 + 40) = 0xE900000000000065;
  sub_100007BC0(&qword_1001203C0, &qword_1000DFF90);
  v12 = swift_allocObject();
  *(v12 + 16) = v33;
  v26[0] = *(v4 + 104);
  (v26[0])(v8, enum case for AssetType.visit(_:), v3);
  v13 = sub_1000DAD34();
  v15 = v14;
  v16 = *(v4 + 8);
  v16(v8, v3);
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v17 = v28;
  (v26[0])(v28, enum case for AssetType.multiPinMap(_:), v3);
  v18 = sub_1000DAD34();
  v20 = v19;
  v16(v17, v3);
  *(v12 + 48) = v18;
  *(v12 + 56) = v20;
  *(v11 + 96) = sub_100007BC0(&qword_100121560, &unk_1000E2040);
  *(v11 + 104) = sub_1000391D4(&qword_1001267B0, &qword_100121560, &unk_1000E2040, &protocol conformance descriptor for [A]);
  *(v11 + 72) = v12;
  *(v27 + 40) = sub_1000DC3E4();
  isa = sub_1000DC124().super.isa;

  v22 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  v23 = v29;
  [v29 setPredicate:v22];

  sub_100007BC0(&qword_1001267B8, &qword_1000E7100);
  v24 = swift_allocObject();
  *(v24 + 16) = v33;
  *(v24 + 32) = 0x7079547465737361;
  *(v24 + 40) = 0xE900000000000065;
  *(v24 + 88) = &type metadata for String;
  *(v24 + 56) = &type metadata for String;
  strcpy((v24 + 64), "assetMetaData");
  *(v24 + 78) = -4864;
  v25 = sub_1000DC124().super.isa;

  [v23 setPropertiesToFetch:v25];

  v34 = v30;
  sub_1000DC664();
}

uint64_t sub_1000C3F74(void *a1, id *a2)
{
  v99 = a2;
  v3 = sub_100007BC0(&qword_1001204F8, &qword_1000E0090);
  __chkstk_darwin(v3 - 8);
  v91 = &v85 - v4;
  v5 = sub_1000DA984();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v89 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007BC0(&qword_100123EA8, &unk_1000E3FD8);
  __chkstk_darwin(v7 - 8);
  v94 = &v85 - v8;
  v96 = sub_1000DA714();
  v98 = *(v96 - 8);
  v9 = __chkstk_darwin(v96);
  v95 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = &v85 - v11;
  v12 = sub_100007BC0(&qword_1001247F8, &unk_1000E4790);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v85 - v16;
  v97 = a1;
  sub_1000DA344();
  v18 = sub_1000DAD44();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v17, 1, v18);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (v20 == 1)
  {
    goto LABEL_42;
  }

  sub_100007F58(v17, v15, &qword_1001247F8, &unk_1000E4790);
  v29 = (*(v19 + 88))(v15, v18);
  if (v29 != enum case for AssetType.visit(_:))
  {
    v23 = v98;
    if (v29 == enum case for AssetType.multiPinMap(_:))
    {
      v85 = v17;
      v52 = [v97 assetMetaData];
      if (v52)
      {
        v53 = v52;
        v54 = sub_1000D9DF4();
        v56 = v55;

        sub_1000C4E8C(&qword_100120500, &type metadata accessor for MultiPinMapAssetMetadata, &protocol conformance descriptor for MultiPinMapAssetMetadata);
        v57 = v91;
        v58 = v93;
        sub_1000D9DD4();
        sub_100010514(v54, v56);
        v59 = v92;
        if ((*(v92 + 48))(v57, 1, v58) != 1)
        {
          (*(v59 + 32))(v89, v57, v58);
          v60 = sub_1000DA944();
          if (!v60)
          {
            v60 = _swiftEmptyArrayStorage;
          }

          v91 = *(v60 + 2);
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          if (v91)
          {
            v38 = 0;
            v90 = v60 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
            v87 = v23 + 8;
            v88 = v23 + 16;
            v61 = v96;
            v86 = v60;
            while (v38 < *(v60 + 2))
            {
              v19 = v95;
              (*(v23 + 16))(v95, &v90[*(v23 + 72) * v38], v61);
              v21 = sub_1000D3854();
              v63 = v62;
              (*(v23 + 8))(v19, v61);
              if (v63)
              {
                v19 = swift_allocObject();
                *(v19 + 16) = v63;
                v94 = v63;
                sub_100030FC0(v25, v26);
                v25 = [v97 objectID];
                v64 = v99;
                swift_beginAccess();
                v65 = swift_allocObject();
                *(v65 + 16) = sub_1000CD1C8;
                *(v65 + 24) = v19;
                sub_100030FC0(v27, v28);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v100[0] = *v64;
                v28 = v100[0];
                *v64 = 0x8000000000000000;
                v26 = sub_100063420(v21);
                v68 = v28[2];
                v69 = (v67 & 1) == 0;
                v70 = v68 + v69;
                if (__OFADD__(v68, v69))
                {
                  goto LABEL_44;
                }

                LOBYTE(v23) = v67;
                if (v28[3] >= v70)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1000D1EB8();
                    v28 = v100[0];
                  }
                }

                else
                {
                  sub_1000D041C(v70, isUniquelyReferenced_nonNull_native);
                  v28 = v100[0];
                  v71 = sub_100063420(v21);
                  if ((v23 & 1) != (v72 & 1))
                  {
                    goto LABEL_48;
                  }

                  v26 = v71;
                }

                v61 = v96;
                *v99 = v28;
                if ((v23 & 1) == 0)
                {
                  v73 = (*(v65 + 16))();
                  v28[(v26 >> 6) + 8] |= 1 << v26;
                  *(v28[6] + 8 * v26) = v21;
                  v74 = (v28[7] + 16 * v26);
                  *v74 = v73;
                  v74[1] = v75;
                  v76 = v28[2];
                  v77 = __OFADD__(v76, 1);
                  v78 = v76 + 1;
                  if (v77)
                  {
                    goto LABEL_45;
                  }

                  v28[2] = v78;
                  sub_100027DC8(v21);
                }

                sub_10000B410(v100, v25);
                swift_endAccess();
                sub_1000CD1F8(v21);

                v27 = sub_1000CD1F4;
                v25 = sub_1000CD1C8;
                v26 = v19;
                v28 = v65;
                v23 = v98;
              }

              ++v38;
              v60 = v86;
              if (v91 == v38)
              {
                goto LABEL_36;
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_36:

          (*(v92 + 8))(v89, v93);
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v17 = v85;
LABEL_42:
          v82 = v22;
          v83 = v24;
          sub_1000080B0(v17, &qword_1001247F8, &unk_1000E4790);
          sub_100030FC0(v21, v82);
          sub_100030FC0(v23, v83);
          sub_100030FC0(v25, v26);
          sub_100030FC0(v27, v28);
          return 1;
        }
      }

      else
      {
        v57 = v91;
        (*(v92 + 56))(v91, 1, 1, v93);
      }

      sub_1000080B0(v57, &qword_1001204F8, &qword_1000E0090);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v17 = v85;
      goto LABEL_42;
    }

    (*(v19 + 8))(v15, v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_42;
  }

  v19 = v17;
  v30 = [v97 assetMetaData];
  v31 = v98;
  if (!v30)
  {
    v36 = v94;
    (*(v98 + 56))(v94, 1, 1, v96);
    goto LABEL_33;
  }

  v32 = v30;
  v33 = sub_1000D9DF4();
  v35 = v34;

  sub_1000C4E8C(&qword_100126338, &type metadata accessor for VisitAssetMetadata, &protocol conformance descriptor for VisitAssetMetadata);
  v36 = v94;
  v37 = v96;
  sub_1000D9DD4();
  sub_100010514(v33, v35);
  if ((*(v31 + 48))(v36, 1, v37) == 1)
  {
LABEL_33:
    sub_1000080B0(v36, &qword_100123EA8, &unk_1000E3FD8);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_42;
  }

  v38 = v90;
  (*(v31 + 32))(v90, v36, v37);
  v39 = sub_1000D3854();
  v28 = v40;
  if (!v40)
  {
    (*(v31 + 8))(v38, v37);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_42;
  }

  v25 = v39;
  v41 = swift_allocObject();
  v41[2] = v28;
  v26 = v28;
  v28 = [v97 objectID];
  v42 = v99;
  swift_beginAccess();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1000CE08C;
  *(v43 + 24) = v41;
  v97 = v41;
  v95 = v43;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v100[0] = *v42;
  v45 = v100[0];
  *v42 = 0x8000000000000000;
  v21 = sub_100063420(v25);
  v47 = v45[2];
  v48 = (v46 & 1) == 0;
  v49 = v47 + v48;
  if (__OFADD__(v47, v48))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  LOBYTE(v23) = v46;
  if (v45[3] >= v49)
  {
    if (v44)
    {
      goto LABEL_39;
    }

LABEL_47:
    sub_1000D1EB8();
    v45 = v100[0];
    goto LABEL_39;
  }

  sub_1000D041C(v49, v44);
  v45 = v100[0];
  v50 = sub_100063420(v25);
  if ((v23 & 1) == (v51 & 1))
  {
    v21 = v50;
LABEL_39:
    v79 = v96;
    *v99 = v45;
    if ((v23 & 1) == 0)
    {
      v80 = sub_1000CD1C8();
      sub_1000D13AC(v21, v25, v80, v81, v45);
      sub_100027DC8(v25);
    }

    sub_10000B410(v100, v28);
    swift_endAccess();
    sub_1000CD1F8(v25);

    (*(v98 + 8))(v38, v79);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = sub_1000CE090;
    v21 = sub_1000CE08C;
    v17 = v19;
    v22 = v97;
    v24 = v95;
    goto LABEL_42;
  }

LABEL_48:
  result = sub_1000DCCC4();
  __break(1u);
  return result;
}

void *sub_1000C4B70(void *a1)
{
  if (_swiftEmptyArrayStorage >> 62 && sub_1000DCB14())
  {
    sub_1000398B8(_swiftEmptyArrayStorage);
  }

  v2 = a1;
  return a1;
}

uint64_t sub_1000C4BDC()
{
  v1 = v0;
  v2 = sub_100007BC0(&qword_1001203B8, &qword_1000E0460);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1000DA084();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0x203A6874676E654CLL;
  v14 = 0xE800000000000000;
  v9 = type metadata accessor for StreakSummary(0);
  v12._countAndFlagsBits = *(v0 + *(v9 + 28));
  v15._countAndFlagsBits = sub_1000DCC44();
  sub_1000DBFE4(v15);

  v10 = v13;
  sub_100007F58(v1 + *(v9 + 24), v4, &qword_1001203B8, &qword_1000E0460);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000080B0(v4, &qword_1001203B8, &qword_1000E0460);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12._countAndFlagsBits = 0x3A676E69646E450ALL;
    v12._object = 0xE900000000000020;
    sub_1000C4E8C(&qword_100124068, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16._countAndFlagsBits = sub_1000DCC44();
    sub_1000DBFE4(v16);

    sub_1000DBFE4(v12);

    (*(v6 + 8))(v8, v5);
    return v13;
  }

  return v10;
}

uint64_t sub_1000C4E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C4ED4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001CD68;

  return sub_1000B87B8(a1, v5, v4);
}

uint64_t sub_1000C4F80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001CD68;

  return sub_1000BA114(a1, v5, v4);
}

uint64_t sub_1000C502C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001CD68;

  return sub_1000BB4E0(a1, v5, v4);
}

uint64_t sub_1000C50D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001CAAC;

  return sub_1000BBC38(a1, v1);
}

uint64_t sub_1000C5174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001CD68;

  return sub_1000BC064(a1, v4, v5, v6);
}

uint64_t sub_1000C5228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000C536C(double **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), void (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1000DA084() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100070250(v7);
  }

  v8 = *(v7 + 2);
  v9[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9[1] = v8;
  sub_1000C5524(v9, &type metadata accessor for Date, a2, a3);
  *a1 = v7;
}

void sub_1000C5440(double **a1)
{
  v2 = *(type metadata accessor for InsightsDataManager.TopAssetCategory(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100070264(v3);
  }

  v4 = *(v3 + 2);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1000C5524(v5, type metadata accessor for InsightsDataManager.TopAssetCategory, sub_1000C7234, sub_1000C5BBC);
  *a1 = v3;
}

void sub_1000C5524(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_1000DCC34(v8);
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = sub_1000DC174();
        *(v12 + 2) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

uint64_t sub_1000C5674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000DA084();
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_1000D9FF4();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000C58F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000DA084();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1000C4E8C(&qword_100120AE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v26 = sub_1000DBDF4();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000C5BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v9 = __chkstk_darwin(v8);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v35 = v20;
    v36 = a3;
    v33 = v22;
    v34 = v21;
    while (1)
    {
      sub_1000C5228(v22, v17, type metadata accessor for InsightsDataManager.TopAssetCategory);
      sub_1000C5228(v20, v13, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v23 = *(v8 + 24);
      v24 = v8;
      v25 = *&v17[v23];
      v26 = *&v13[v23];
      sub_1000C922C(v13, type metadata accessor for InsightsDataManager.TopAssetCategory);
      result = sub_1000C922C(v17, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v27 = v26 < v25;
      v8 = v24;
      if (!v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v20 = v35 + v31;
        v21 = v34 - 1;
        v22 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      sub_1000CDBD8(v22, v39, type metadata accessor for InsightsDataManager.TopAssetCategory);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1000CDBD8(v28, v20, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v20 += v37;
      v22 += v37;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000C5E20(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_1000DA084();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v117 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v117 - v16;
  __chkstk_darwin(v15);
  v137 = &v117 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v111 = a4;
    }

    else
    {
LABEL_130:
      v111 = sub_10006FF18(a4);
    }

    v112 = v6;
    v140 = v111;
    a4 = *(v111 + 2);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = v111[2 * a4];
        v115 = v111;
        v6 = v111[2 * a4 + 3];
        sub_1000C7B94(*v10 + a3[9] * *&v114, (*v10 + a3[9] * *&v111[2 * a4 + 2]), *v10 + a3[9] * *&v6, v5);
        if (v112 != 0.0)
        {
          goto LABEL_107;
        }

        if (*&v6 < *&v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10006FF18(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[2 * a4];
        *v116 = v114;
        v116[1] = v6;
        v140 = v115;
        sub_10006FE8C(a4 - 1);
        v111 = v140;
        a4 = *(v140 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v19 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v20 = _swiftEmptyArrayStorage;
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v32 = v19 + 1;
    }

    else
    {
      v130 = v18;
      v119 = v6;
      v127 = *a3;
      v22 = v127;
      v23 = v10[9];
      v5 = v127 + v23 * (v19 + 1);
      v24 = v10[2];
      v25 = v137;
      v24(v137, v5, v9);
      v26 = v22 + v23 * v21;
      v27 = v138;
      v129 = v24;
      v24(v138, v26, v9);
      LODWORD(v131) = sub_1000D9FF4();
      v28 = v9;
      v29 = v10[1];
      v29(v27, v28);
      v128 = v29;
      v29(v25, v28);
      v118 = v21;
      v30 = v21 + 2;
      v133 = v23;
      v31 = v127 + v23 * (v21 + 2);
      while (1)
      {
        v32 = v130;
        if (v130 == v30)
        {
          break;
        }

        v33 = v10;
        v34 = v137;
        v35 = v139;
        v36 = v129;
        (v129)(v137, v31, v139);
        v37 = v138;
        v36(v138, v5, v35);
        v38 = sub_1000D9FF4() & 1;
        v39 = v128;
        (v128)(v37, v35);
        v40 = v34;
        v10 = v33;
        v39(v40, v35);
        ++v30;
        v31 += v133;
        v5 += v133;
        if ((v131 & 1) != v38)
        {
          v32 = v30 - 1;
          break;
        }
      }

      a3 = v122;
      v20 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v21 = v118;
      if (v131)
      {
        if (v32 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v32)
        {
          v117 = v10;
          v41 = v133 * (v32 - 1);
          v42 = v32 * v133;
          v43 = v32;
          v44 = v118;
          v45 = v118 * v133;
          do
          {
            if (v44 != --v43)
            {
              v47 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v48 = v32;
              v5 = &v47[v45];
              v131 = *v134;
              (v131)(v124, &v47[v45], v139, v20);
              if (v45 < v41 || v5 >= &v47[v42])
              {
                v46 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v46 = v139;
                if (v45 != v41)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v131(&v47[v41], v124, v46);
              a3 = v122;
              v20 = v125;
              v32 = v48;
            }

            ++v44;
            v41 -= v133;
            v42 -= v133;
            v45 += v133;
          }

          while (v44 < v43);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v21 = v118;
        }
      }
    }

    v49 = a3[1];
    if (v32 < v49)
    {
      if (__OFSUB__(v32, v21))
      {
        goto LABEL_126;
      }

      if (v32 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_128;
        }

        if ((v21 + a4) >= v49)
        {
          v50 = a3[1];
        }

        else
        {
          v50 = v21 + a4;
        }

        if (v50 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v32 != v50)
        {
          break;
        }
      }
    }

    v51 = v32;
    if (v32 < v21)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v125;
    }

    else
    {
      v20 = sub_10004724C(0, *(v125 + 2) + 1, 1, v125);
    }

    a4 = *(v20 + 2);
    v52 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v52 >> 1)
    {
      v20 = sub_10004724C((v52 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v53 = &v20[2 * a4];
    *(v53 + 4) = v21;
    *(v53 + 5) = v51;
    v54 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v51;
    if (a4)
    {
      while (1)
      {
        v55 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v56 = *(v20 + 4);
          v57 = *(v20 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_114;
          }

          v72 = &v20[2 * v5];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_117;
          }

          v78 = &v20[2 * v55 + 4];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_121;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v20[2 * v5];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_116;
        }

        v85 = &v20[2 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_119;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v55 - 1;
        if (v55 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v93 = v20;
        v94 = *&v20[2 * a4 + 4];
        v5 = *&v20[2 * v55 + 5];
        sub_1000C7B94(*a3 + v10[9] * v94, (*a3 + v10[9] * *&v20[2 * v55 + 4]), *a3 + v10[9] * v5, v54);
        if (v6 != 0.0)
        {
          goto LABEL_107;
        }

        if (v5 < v94)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_10006FF18(v93);
        }

        if (a4 >= *(v93 + 2))
        {
          goto LABEL_111;
        }

        v95 = &v93[2 * a4];
        *(v95 + 4) = v94;
        *(v95 + 5) = v5;
        v140 = v93;
        sub_10006FE8C(v55);
        v20 = v140;
        v5 = *(v140 + 2);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v20[2 * v5 + 4];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_112;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_113;
      }

      v67 = &v20[2 * v5];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_115;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_118;
      }

      if (v71 >= v63)
      {
        v89 = &v20[2 * v55 + 4];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_122;
        }

        if (v58 < v92)
        {
          v55 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v126;
    a4 = v120;
    if (v126 >= v18)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v96 = *a3;
  v97 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v98 = v96 + v97 * (v32 - 1);
  v99 = -v97;
  v118 = v21;
  v100 = (v21 - v32);
  v131 = v96;
  v123 = v97;
  v5 = v96 + v32 * v97;
  v126 = v50;
LABEL_85:
  v129 = v98;
  v130 = v32;
  v127 = v5;
  v128 = v100;
  v101 = v98;
  while (1)
  {
    v102 = v137;
    v103 = v133;
    (v133)(v137, v5, v9, v20);
    v104 = v138;
    v103(v138, v101, v139);
    v105 = sub_1000D9FF4();
    a4 = v135;
    v106 = *v135;
    v107 = v104;
    v9 = v139;
    (*v135)(v107, v139);
    v106(v102, v9);
    if ((v105 & 1) == 0)
    {
LABEL_84:
      v32 = v130 + 1;
      v98 = &v129[v123];
      v100 = v128 - 1;
      v5 = v127 + v123;
      v51 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v21 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v108 = *v134;
    v109 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v108(v101, v109, v9);
    v101 += v99;
    v5 += v99;
    if (__CFADD__(v100++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_1000C680C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v121 = a1;
  v8 = sub_1000DA084();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v126 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v133 = &v118 - v13;
  v14 = __chkstk_darwin(v12);
  v139 = &v118 - v15;
  __chkstk_darwin(v14);
  v138 = &v118 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_94:
    v20 = *v121;
    if (!*v121)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v19 = sub_10006FF18(v19);
    }

    v141 = v19;
    v114 = *(v19 + 2);
    if (v114 >= 2)
    {
      while (*a3)
      {
        v115 = v19[2 * v114];
        v116 = v19[2 * v114 + 3];
        sub_1000C8124(*a3 + v9[9] * *&v115, *a3 + v9[9] * *&v19[2 * v114 + 2], *a3 + v9[9] * *&v116, v20);
        if (v5)
        {
          goto LABEL_104;
        }

        if (*&v116 < *&v115)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10006FF18(v19);
        }

        if (v114 - 2 >= *(v19 + 2))
        {
          goto LABEL_120;
        }

        v117 = &v19[2 * v114];
        *v117 = v115;
        v117[1] = v116;
        v141 = v19;
        sub_10006FE8C(v114 - 1);
        v19 = v141;
        v114 = *(v141 + 2);
        if (v114 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v118 = a4;
  v18 = 0;
  v136 = (v9 + 1);
  v137 = v9 + 2;
  v135 = (v9 + 4);
  v19 = _swiftEmptyArrayStorage;
  v123 = v9;
  v140 = v8;
  v119 = a3;
  while (1)
  {
    v20 = v18;
    v124 = v19;
    if (v18 + 1 >= v17)
    {
      v33 = v18 + 1;
    }

    else
    {
      v131 = v17;
      v120 = v5;
      v21 = *a3;
      v22 = v9[9];
      v23 = v18;
      v122 = v18;
      v24 = &v21[v22 * (v18 + 1)];
      v25 = v8;
      v26 = v9[2];
      v27 = v138;
      v26(v138, v24, v25);
      v28 = &v21[v22 * v23];
      v29 = v139;
      v130 = v26;
      v26(v139, v28, v25);
      v129 = sub_1000C4E8C(&qword_100120AE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LODWORD(v132) = sub_1000DBDF4();
      v30 = v9[1];
      v30(v29, v25);
      v128 = v30;
      v30(v27, v25);
      v31 = v122 + 2;
      v134 = v22;
      v32 = &v21[v22 * (v122 + 2)];
      while (1)
      {
        v33 = v131;
        if (v131 == v31)
        {
          break;
        }

        v34 = v138;
        v35 = v9;
        v36 = v140;
        v37 = v130;
        (v130)(v138, v32, v140);
        v38 = v139;
        v37(v139, v24, v36);
        v39 = sub_1000DBDF4() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v36;
        v9 = v35;
        v40(v34, v41);
        ++v31;
        v32 += v134;
        v24 += v134;
        if ((v132 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v5 = v120;
      v19 = v124;
      v8 = v140;
      a3 = v119;
      v20 = v122;
      if (v132)
      {
        if (v33 < v122)
        {
          goto LABEL_123;
        }

        if (v122 < v33)
        {
          v42 = v33;
          v43 = v134 * (v33 - 1);
          v44 = v33 * v134;
          v131 = v33;
          v45 = v122;
          v46 = v122 * v134;
          do
          {
            if (v45 != --v42)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v132 = *v135;
              v132(v126, &v48[v46], v140);
              if (v46 < v43 || &v48[v46] >= &v48[v44])
              {
                v47 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v140;
                if (v46 != v43)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v132(&v48[v43], v126, v47);
              v9 = v123;
              v19 = v124;
            }

            ++v45;
            v43 -= v134;
            v44 -= v134;
            v46 += v134;
          }

          while (v45 < v42);
          v5 = v120;
          v8 = v140;
          v20 = v122;
          v33 = v131;
        }
      }
    }

    v49 = a3[1];
    if (v33 < v49)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v118)
      {
        if (__OFADD__(v20, v118))
        {
          goto LABEL_124;
        }

        if (v20 + v118 >= v49)
        {
          v50 = a3[1];
        }

        else
        {
          v50 = v20 + v118;
        }

        if (v50 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v50)
        {
          break;
        }
      }
    }

    v51 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_10004724C(0, *(v19 + 2) + 1, 1, v19);
    }

    v53 = *(v19 + 2);
    v52 = *(v19 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v19 = sub_10004724C((v52 > 1), v53 + 1, 1, v19);
    }

    *(v19 + 2) = v54;
    v55 = &v19[2 * v53];
    *(v55 + 4) = v20;
    *(v55 + 5) = v51;
    v20 = *v121;
    if (!*v121)
    {
      goto LABEL_131;
    }

    v127 = v51;
    if (v53)
    {
      while (1)
      {
        v56 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v19 + 4);
          v58 = *(v19 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_110;
          }

          v73 = &v19[2 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_113;
          }

          v79 = &v19[2 * v56 + 4];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_117;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v19[2 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_112;
        }

        v86 = &v19[2 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_115;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        v94 = v56 - 1;
        if (v56 - 1 >= v54)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v95 = v19[2 * v94 + 4];
        v96 = v19[2 * v56 + 5];
        sub_1000C8124(*a3 + v9[9] * *&v95, *a3 + v9[9] * *&v19[2 * v56 + 4], *a3 + v9[9] * *&v96, v20);
        if (v5)
        {
          goto LABEL_104;
        }

        if (*&v96 < *&v95)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10006FF18(v19);
        }

        if (v94 >= *(v19 + 2))
        {
          goto LABEL_107;
        }

        v97 = &v19[2 * v94];
        v97[4] = v95;
        v97[5] = v96;
        v141 = v19;
        sub_10006FE8C(v56);
        v19 = v141;
        v54 = *(v141 + 2);
        v8 = v140;
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v19[2 * v54 + 4];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_108;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_109;
      }

      v68 = &v19[2 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_111;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_114;
      }

      if (v72 >= v64)
      {
        v90 = &v19[2 * v56 + 4];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_118;
        }

        if (v59 < v93)
        {
          v56 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = a3[1];
    v18 = v127;
    if (v127 >= v17)
    {
      goto LABEL_94;
    }
  }

  v120 = v5;
  v98 = *a3;
  v99 = v9[9];
  v134 = v9[2];
  v100 = v98 + v99 * (v33 - 1);
  v101 = -v99;
  v122 = v20;
  v102 = v20 - v33;
  v132 = v98;
  v125 = v99;
  v103 = v98 + v33 * v99;
  v127 = v50;
LABEL_85:
  v130 = v100;
  v131 = v33;
  v128 = v103;
  v129 = v102;
  v104 = v100;
  while (1)
  {
    v105 = v138;
    v106 = v134;
    (v134)(v138, v103, v8);
    v107 = v139;
    v106(v139, v104, v140);
    sub_1000C4E8C(&qword_100120AE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v108 = sub_1000DBDF4();
    v109 = *v136;
    v110 = v107;
    v8 = v140;
    (*v136)(v110, v140);
    v109(v105, v8);
    if ((v108 & 1) == 0)
    {
LABEL_84:
      v33 = v131 + 1;
      v100 = &v130[v125];
      v102 = v129 - 1;
      v103 = &v128[v125];
      v51 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v5 = v120;
      a3 = v119;
      v9 = v123;
      v19 = v124;
      v20 = v122;
      if (v127 < v122)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    v111 = *v135;
    v112 = v133;
    (*v135)(v133, v103, v8);
    swift_arrayInitWithTakeFrontToBack();
    v111(v104, v112, v8);
    v104 += v101;
    v103 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_1000C7234(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v126 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v9 = *(v126 - 8);
  v10 = __chkstk_darwin(v126);
  v115 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v123 = &v107 - v13;
  v14 = __chkstk_darwin(v12);
  v125 = &v107 - v15;
  __chkstk_darwin(v14);
  v124 = &v107 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
LABEL_99:
      v127 = v102;
      a4 = *(v102 + 2);
      if (a4 >= 2)
      {
        v103 = v9;
        while (*a3)
        {
          v104 = v102[2 * a4];
          v105 = v102;
          v9 = v102[2 * a4 + 3];
          sub_1000C8718(*a3 + *(*&v103 + 72) * *&v104, *a3 + *(*&v103 + 72) * *&v102[2 * a4 + 2], *a3 + *(*&v103 + 72) * *&v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (*&v9 < *&v104)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_10006FF18(v105);
          }

          if (a4 - 2 >= *(v105 + 2))
          {
            goto LABEL_124;
          }

          v106 = &v105[2 * a4];
          *v106 = v104;
          v106[1] = v9;
          v127 = v105;
          sub_10006FE8C(a4 - 1);
          v102 = v127;
          a4 = *(v127 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v102 = sub_10006FF18(a4);
    goto LABEL_99;
  }

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v111 = a4;
  v113 = a3;
  v108 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v116 = v19;
    if (v21 >= v17)
    {
      v17 = v21;
    }

    else
    {
      v109 = v6;
      v22 = *a3;
      v23 = *(*&v9 + 72);
      v5 = *a3 + v23 * v21;
      v24 = v124;
      sub_1000C5228(v5, v124, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v25 = v125;
      sub_1000C5228(v22 + v23 * v20, v125, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v26 = *(v126 + 24);
      v27 = *(v24 + v26);
      v119 = *(v25 + v26);
      v120 = v27;
      sub_1000C922C(v25, type metadata accessor for InsightsDataManager.TopAssetCategory);
      sub_1000C922C(v24, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v110 = v20;
      v28 = v20 + 2;
      v121 = v23;
      v29 = v22 + v23 * v28;
      while (v17 != v28)
      {
        LODWORD(v122) = v119 < v120;
        v30 = v124;
        sub_1000C5228(v29, v124, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v31 = v125;
        sub_1000C5228(v5, v125, type metadata accessor for InsightsDataManager.TopAssetCategory);
        v32 = *(v126 + 24);
        v33 = *(v30 + v32);
        v34 = *(v31 + v32);
        sub_1000C922C(v31, type metadata accessor for InsightsDataManager.TopAssetCategory);
        sub_1000C922C(v30, type metadata accessor for InsightsDataManager.TopAssetCategory);
        ++v28;
        v29 += v121;
        v5 += v121;
        if (((v122 ^ (v34 >= v33)) & 1) == 0)
        {
          v17 = v28 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v108;
      v6 = v109;
      v20 = v110;
      a4 = v111;
      if (v119 < v120)
      {
        if (v17 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v17)
        {
          v35 = v121 * (v17 - 1);
          v36 = v17 * v121;
          v120 = v17;
          v37 = v17;
          v38 = v110;
          v39 = v110 * v121;
          do
          {
            if (v38 != --v37)
            {
              v40 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v40 + v39;
              sub_1000CDBD8(v40 + v39, v115, type metadata accessor for InsightsDataManager.TopAssetCategory);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1000CDBD8(v115, v40 + v35, type metadata accessor for InsightsDataManager.TopAssetCategory);
            }

            ++v38;
            v35 -= v121;
            v36 -= v121;
            v39 += v121;
          }

          while (v38 < v37);
          a3 = v113;
          v9 = v108;
          v20 = v110;
          a4 = v111;
          v17 = v120;
        }
      }
    }

    v41 = a3[1];
    if (v17 >= v41)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v17, v20))
    {
      goto LABEL_126;
    }

    if (v17 - v20 >= a4)
    {
LABEL_32:
      v43 = v17;
      if (v17 < v20)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_128;
    }

    if ((v20 + a4) >= v41)
    {
      v42 = a3[1];
    }

    else
    {
      v42 = v20 + a4;
    }

    if (v42 < v20)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v17 == v42)
    {
      goto LABEL_32;
    }

    v88 = *a3;
    v89 = *(*&v9 + 72);
    v90 = *a3 + v89 * (v17 - 1);
    v91 = v20;
    v92 = -v89;
    v109 = v6;
    v110 = v91;
    v93 = v91 - v17;
    v122 = v88;
    v114 = v89;
    v5 = v88 + v17 * v89;
    v94 = v126;
    v117 = v42;
LABEL_86:
    v119 = v93;
    v120 = v17;
    v118 = v5;
    v121 = v90;
    v95 = v90;
LABEL_87:
    a4 = v124;
    sub_1000C5228(v5, v124, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v96 = v125;
    sub_1000C5228(v95, v125, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v97 = *(v94 + 24);
    v98 = *(a4 + v97);
    v99 = *(v96 + v97);
    sub_1000C922C(v96, type metadata accessor for InsightsDataManager.TopAssetCategory);
    sub_1000C922C(a4, type metadata accessor for InsightsDataManager.TopAssetCategory);
    if (v99 < v98)
    {
      break;
    }

    v94 = v126;
LABEL_85:
    v17 = v120 + 1;
    v90 = v121 + v114;
    v93 = v119 - 1;
    v5 = v118 + v114;
    v43 = v117;
    if (v120 + 1 != v117)
    {
      goto LABEL_86;
    }

    v9 = v108;
    v6 = v109;
    a3 = v113;
    v20 = v110;
    if (v117 < v110)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v116;
    }

    else
    {
      v19 = sub_10004724C(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = sub_10004724C((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v45 = &v19[2 * a4];
    *(v45 + 4) = v20;
    *(v45 + 5) = v43;
    v46 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v117 = v43;
    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v19[2 * v5 + 4];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_112;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v59 = &v19[2 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_115;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v63 >= v55)
          {
            v81 = &v19[2 * v47 + 4];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_122;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_114;
            }

            v64 = &v19[2 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_117;
            }

            v70 = &v19[2 * v47 + 4];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_121;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v19 + 4);
            v49 = *(v19 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v19[2 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_116;
          }

          v77 = &v19[2 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_119;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v85 = v19;
        v86 = *&v19[2 * a4 + 4];
        v5 = *&v19[2 * v47 + 5];
        sub_1000C8718(*a3 + *(*&v9 + 72) * v86, *a3 + *(*&v9 + 72) * *&v19[2 * v47 + 4], *a3 + *(*&v9 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v86)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_10006FF18(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v85[2 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v127 = v85;
        sub_10006FE8C(v47);
        v19 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    v18 = v117;
    a4 = v111;
    if (v117 >= v17)
    {
      goto LABEL_96;
    }
  }

  if (v122)
  {
    v100 = v123;
    sub_1000CDBD8(v5, v123, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v94 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_1000CDBD8(v100, v95, type metadata accessor for InsightsDataManager.TopAssetCategory);
    v95 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_1000C7B94(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v57 = sub_1000DA084();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = &a2[-a1] / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || &a2[v18] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = &a4[v18];
    if (v18 < 1)
    {
      v33 = &a4[v18];
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = &a4[v18];
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = &a2[v30];
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = &v31[v30];
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_1000D9FF4();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = &a4[v17];
    v58 = &a4[v17];
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = (v8 + 16);
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_1000D9FF4();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = &v49[v23];
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = &v49[a4];
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 = &v27[a4];
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_10006FF44(&v60, &v59, &v58);
  return 1;
}