uint64_t sub_10001BBBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000388C(&qword_100095308, &qword_100074688);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_10000388C(&qword_100095310, &qword_100074690);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  *v7 = sub_10007223C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11 = sub_10000388C(&qword_100095318, &unk_100074698);
  sub_10001BE58(v2, &v7[*(v11 + 44)]);
  LOBYTE(v2) = sub_1000723BC();
  sub_100071E8C();
  v12 = &v7[*(v5 + 44)];
  *v12 = v2;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  v18 = sub_1000723DC();
  *(inited + 32) = v18;
  v19 = sub_1000723FC();
  *(inited + 33) = v19;
  v20 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v18)
  {
    v20 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v19)
  {
    v20 = sub_1000723EC();
  }

  sub_100014DEC(v7, v10, &qword_100095308, &qword_100074688);
  v21 = &v10[*(v8 + 36)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  v22 = sub_1000723CC();
  sub_100071E8C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_100014DEC(v10, a1, &qword_100095310, &qword_100074690);
  result = sub_10000388C(&qword_100095320, &qword_1000746A8);
  v32 = a1 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_10001BE58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v140 = a2;
  v137 = sub_10000388C(&qword_100095328, &qword_1000746B0);
  __chkstk_darwin(v137);
  v139 = &v101 - v3;
  v138 = sub_10000388C(&qword_100095330, &qword_1000746B8);
  __chkstk_darwin(v138);
  v110 = &v101 - v4;
  v130 = sub_10000388C(&qword_100095338, &qword_1000746C0);
  __chkstk_darwin(v130);
  v131 = &v101 - v5;
  v109 = sub_10007238C();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_10000388C(&qword_100095340, &qword_1000746C8);
  __chkstk_darwin(v122);
  v102 = &v101 - v7;
  v128 = sub_10000388C(&qword_100095348, &qword_1000746D0);
  v104 = *(v128 - 8);
  __chkstk_darwin(v128);
  v103 = &v101 - v8;
  v129 = sub_10000388C(&qword_100095350, &qword_1000746D8);
  v106 = *(v129 - 8);
  __chkstk_darwin(v129);
  v105 = &v101 - v9;
  v114 = sub_10000388C(&qword_100095358, &qword_1000746E0);
  __chkstk_darwin(v114);
  v11 = &v101 - v10;
  v141 = sub_10000388C(&qword_100095360, &qword_1000746E8);
  __chkstk_darwin(v141);
  v126 = &v101 - v12;
  v133 = sub_10000388C(&qword_100095368, &qword_1000746F0);
  __chkstk_darwin(v133);
  v125 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v134 = &v101 - v15;
  v16 = sub_10000388C(&qword_100095370, &qword_1000746F8);
  __chkstk_darwin(v16 - 8);
  v136 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v132 = &v101 - v19;
  __chkstk_darwin(v20);
  v135 = &v101 - v21;
  v22 = sub_10000388C(&qword_100095378, &qword_100074700);
  __chkstk_darwin(v22 - 8);
  v24 = &v101 - v23;
  v25 = sub_1000729DC();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v101 - v30;
  v32 = *(type metadata accessor for AFEmptyStateView(0) + 20);
  v120 = a1;
  v146 = a1 + v32;
  sub_100012E94();
  v33 = *(v26 + 104);
  v145 = enum case for WidgetFamily.systemSmall(_:);
  v143 = v33;
  v144 = v26 + 104;
  v33(v28);
  v119 = sub_10001D764(&qword_100095380, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  LOBYTE(a1) = sub_100072B1C();
  v34 = *(v26 + 8);
  v148 = v28;
  v34(v28, v25);
  v147 = v31;
  v121 = v26 + 8;
  v142 = v34;
  v34(v31, v25);
  v35 = 0;
  KeyPath = 0;
  v37 = 0;
  if ((a1 & 1) == 0)
  {
    sub_10001BABC();
    sub_10007275C();
    v38 = enum case for Image.TemplateRenderingMode.template(_:);
    v39 = sub_1000727AC();
    v40 = *(v39 - 8);
    (*(v40 + 104))(v24, v38, v39);
    (*(v40 + 56))(v24, 0, 1, v39);
    v35 = sub_10007278C();

    sub_100004890(v24, &qword_100095378, &qword_100074700);
    sub_10007270C();
    v37 = sub_1000726FC();

    KeyPath = swift_getKeyPath();
  }

  v123 = KeyPath;
  v124 = v37;
  v127 = v35;
  sub_1000728AC();
  sub_100071F2C();
  v118 = v155;
  v117 = v157;
  v116 = v159;
  v115 = v160;
  v154 = 1;
  v153 = v156;
  v152 = v158;
  sub_1000721DC();
  v112 = sub_10007258C();
  v111 = v41;
  v43 = v42;
  v113 = v44;
  v45 = sub_10007252C();
  v46 = &v11[*(sub_10000388C(&qword_100095388, &qword_100074738) + 36)];
  v47 = type metadata accessor for DynamicTypeFont(0);
  v48 = v47[6];
  v49 = enum case for ContentSizeCategory.extraLarge(_:);
  v50 = sub_10007222C();
  v51 = *(v50 - 8);
  (*(v51 + 104))(v46 + v48, v49, v50);
  (*(v51 + 56))(v46 + v48, 0, 1, v50);
  sub_10007246C();
  v53 = v52;
  *v46 = swift_getKeyPath();
  sub_10000388C(&qword_100095390, &qword_100074770);
  swift_storeEnumTagMultiPayload();
  *(v46 + v47[5]) = v45;
  *(v46 + v47[7]) = v53;
  v54 = v111;
  *v11 = v112;
  *(v11 + 1) = v54;
  v11[16] = v43 & 1;
  *(v11 + 3) = v113;
  sub_10007270C();
  v55 = sub_1000726FC();

  v56 = swift_getKeyPath();
  v57 = &v11[*(sub_10000388C(&qword_100095398, &qword_100074778) + 36)];
  *v57 = v56;
  v57[1] = v55;
  v58 = sub_10000388C(&qword_1000953A0, &unk_100074780);
  sub_10001B79C(&v11[*(v58 + 36)]);
  *&v11[*(v114 + 36)] = 256;
  sub_10001D148();
  v59 = v126;
  sub_1000725FC();
  sub_100004890(v11, &qword_100095358, &qword_1000746E0);
  v60 = swift_getKeyPath();
  v61 = v59 + *(v141 + 36);
  *v61 = v60;
  *(v61 + 8) = 1;
  v62 = v147;
  sub_100012E94();
  v63 = v148;
  v143(v148, v145, v25);
  sub_10001D764(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v64 = v142;
  v142(v63, v25);
  v64(v62, v25);
  if (v149 == v151)
  {
    v65 = swift_getKeyPath();
    v66 = v102;
    sub_100004C94(v59, v102, &qword_100095360, &qword_1000746E8);
    v67 = v122;
    v68 = v66 + *(v122 + 36);
    *v68 = v65;
    *(v68 + 8) = 0;
    v69 = sub_10001D4D8(&qword_1000953E0, &qword_100095340, &qword_1000746C8, sub_10001D3DC);
    v70 = v103;
    sub_10007269C();
    sub_100004890(v66, &qword_100095340, &qword_1000746C8);
    v71 = v107;
    sub_10007237C();
    v149 = v67;
    v150 = v69;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v73 = v105;
    v74 = v128;
    sub_10007267C();
    (*(v108 + 8))(v71, v109);
    (*(v104 + 8))(v70, v74);
    v75 = v106;
    v76 = v129;
    (*(v106 + 16))(v131, v73, v129);
    swift_storeEnumTagMultiPayload();
    v149 = v74;
    v150 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_10001D3DC();
    v77 = v125;
    sub_10007230C();
    (*(v75 + 8))(v73, v76);
  }

  else
  {
    sub_100004C94(v59, v131, &qword_100095360, &qword_1000746E8);
    swift_storeEnumTagMultiPayload();
    v78 = sub_10001D4D8(&qword_1000953E0, &qword_100095340, &qword_1000746C8, sub_10001D3DC);
    v149 = v122;
    v150 = v78;
    v79 = swift_getOpaqueTypeConformance2();
    v149 = v128;
    v150 = v79;
    swift_getOpaqueTypeConformance2();
    sub_10001D3DC();
    v77 = v125;
    sub_10007230C();
  }

  v80 = v134;
  sub_100004890(v59, &qword_100095360, &qword_1000746E8);
  sub_100014DEC(v77, v80, &qword_100095368, &qword_1000746F0);
  v81 = v147;
  sub_100012E94();
  v82 = v148;
  v143(v148, v145, v25);
  v83 = sub_100072B1C();
  v84 = v142;
  v142(v82, v25);
  v84(v81, v25);
  if (v83)
  {
    sub_100004C94(v80, v139, &qword_100095368, &qword_1000746F0);
    swift_storeEnumTagMultiPayload();
    sub_10001D4D8(&qword_100095410, &qword_100095330, &qword_1000746B8, sub_10001D588);
    sub_10001D588();
    v85 = v132;
    sub_10007230C();
  }

  else
  {
    v86 = swift_getKeyPath();
    v87 = v110;
    sub_100004C94(v80, v110, &qword_100095368, &qword_1000746F0);
    v88 = v87 + *(v138 + 36);
    *v88 = v86;
    *(v88 + 8) = 1;
    sub_100004C94(v87, v139, &qword_100095330, &qword_1000746B8);
    swift_storeEnumTagMultiPayload();
    sub_10001D4D8(&qword_100095410, &qword_100095330, &qword_1000746B8, sub_10001D588);
    sub_10001D588();
    v85 = v132;
    sub_10007230C();
    sub_100004890(v87, &qword_100095330, &qword_1000746B8);
  }

  sub_100004890(v80, &qword_100095368, &qword_1000746F0);
  v89 = v135;
  sub_100014DEC(v85, v135, &qword_100095370, &qword_1000746F8);
  v90 = v154;
  v91 = v153;
  v92 = v152;
  v93 = v136;
  sub_100004C94(v89, v136, &qword_100095370, &qword_1000746F8);
  v94 = v140;
  v95 = v127;
  v96 = v123;
  *v140 = v127;
  v94[1] = v96;
  v97 = v124;
  v94[2] = v124;
  v94[3] = 0;
  *(v94 + 32) = v90;
  v94[5] = v118;
  *(v94 + 48) = v91;
  v94[7] = v117;
  *(v94 + 64) = v92;
  v98 = v115;
  v94[9] = v116;
  v94[10] = v98;
  v99 = sub_10000388C(&qword_100095420, &qword_100074800);
  sub_100004C94(v93, v94 + *(v99 + 64), &qword_100095370, &qword_1000746F8);
  sub_10001D6C8(v95, v96, v97);
  sub_10001D718(v95, v96, v97);
  sub_100004890(v89, &qword_100095370, &qword_1000746F8);
  sub_100004890(v93, &qword_100095370, &qword_1000746F8);
  return sub_10001D718(v95, v96, v97);
}

unint64_t sub_10001D148()
{
  result = qword_1000953A8;
  if (!qword_1000953A8)
  {
    sub_1000038D4(&qword_100095358, &qword_1000746E0);
    sub_10001D1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000953A8);
  }

  return result;
}

unint64_t sub_10001D1D4()
{
  result = qword_1000953B0;
  if (!qword_1000953B0)
  {
    sub_1000038D4(&qword_1000953A0, &unk_100074780);
    sub_10001D260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000953B0);
  }

  return result;
}

unint64_t sub_10001D260()
{
  result = qword_1000953B8;
  if (!qword_1000953B8)
  {
    sub_1000038D4(&qword_100095398, &qword_100074778);
    sub_10001D318();
    sub_100004C3C(&qword_1000953D0, &qword_1000953D8, &qword_1000769A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000953B8);
  }

  return result;
}

unint64_t sub_10001D318()
{
  result = qword_1000953C0;
  if (!qword_1000953C0)
  {
    sub_1000038D4(&qword_100095388, &qword_100074738);
    sub_10001D764(&qword_1000953C8, type metadata accessor for DynamicTypeFont, &unk_100074F44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000953C0);
  }

  return result;
}

unint64_t sub_10001D3DC()
{
  result = qword_1000953E8;
  if (!qword_1000953E8)
  {
    sub_1000038D4(&qword_100095360, &qword_1000746E8);
    sub_1000038D4(&qword_100095358, &qword_1000746E0);
    sub_10001D148();
    swift_getOpaqueTypeConformance2();
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000953E8);
  }

  return result;
}

uint64_t sub_10001D4D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    a4();
    sub_100004C3C(&qword_100095400, &qword_100095408, &qword_1000747C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001D588()
{
  result = qword_100095418;
  if (!qword_100095418)
  {
    sub_1000038D4(&qword_100095368, &qword_1000746F0);
    sub_1000038D4(&qword_100095348, &qword_1000746D0);
    sub_1000038D4(&qword_100095340, &qword_1000746C8);
    sub_10001D4D8(&qword_1000953E0, &qword_100095340, &qword_1000746C8, sub_10001D3DC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001D3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095418);
  }

  return result;
}

uint64_t sub_10001D6C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001D718(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001D764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001D7B0()
{
  result = qword_100095428;
  if (!qword_100095428)
  {
    sub_1000038D4(&qword_100095320, &qword_1000746A8);
    sub_10001D83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095428);
  }

  return result;
}

unint64_t sub_10001D83C()
{
  result = qword_100095430;
  if (!qword_100095430)
  {
    sub_1000038D4(&qword_100095310, &qword_100074690);
    sub_10001D8C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095430);
  }

  return result;
}

unint64_t sub_10001D8C8()
{
  result = qword_100095438;
  if (!qword_100095438)
  {
    sub_1000038D4(&qword_100095308, &qword_100074688);
    sub_100004C3C(&qword_100095440, &qword_100095448, &qword_100074808, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095438);
  }

  return result;
}

id sub_10001D980(uint64_t a1, char a2)
{
  v4 = sub_1000729DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = 0x6867696C68676968;
    v9 = 0xE900000000000074;
  }

  else
  {
    v8 = 0x6C616D726F6ELL;
    v9 = 0xE600000000000000;
  }

  v10 = sub_10004D174(v8, v9);
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 88))(v7, v4);
  if (v11 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v11 == enum case for WidgetFamily.systemMedium(_:))
    {
      return v10;
    }

    if (v11 == enum case for WidgetFamily.systemLarge(_:))
    {
      if (!v10)
      {
        return v10;
      }

      [v10 size];
      v35 = round(v34 * 0.0);
      [v10 scale];
      v15 = v36 * v35;
      [v10 size];
      v38 = round(v37 * 0.213576159);
      [v10 scale];
      v19 = v39 * v38;
      [v10 size];
      v41 = v40;
      [v10 scale];
      v24 = v41 * v42;
      [v10 size];
      v26 = v43 * 0.572847682;
      goto LABEL_8;
    }

    if (v11 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v32 = sub_10004D174(0x6C616D726F6ELL, 0xE600000000000000);

      (*(v5 + 8))(v7, v4);
      return v32;
    }

    if (!v10)
    {
      return v10;
    }

    [v10 size];
    v45 = round(v44 * 0.07145);
    [v10 scale];
    v15 = v46 * v45;
    [v10 size];
    v48 = round(v47 * 0.07145);
    [v10 scale];
    v19 = v49 * v48;
    [v10 size];
    v21 = 0.8571;
LABEL_7:
    v22 = v20 * v21;
    [v10 scale];
    v24 = v22 * v23;
    [v10 size];
    v26 = v25 * v21;
LABEL_8:
    [v10 scale];
    v28 = v26 * v27;
    [v10 size];
    v30 = v29;
    [v10 size];
    v32 = sub_100029FEC(v15, v19, v24, v28, v30, v31);

    return v32;
  }

  if (v10)
  {
    [v10 size];
    v13 = v12 * 0.0375;
    [v10 scale];
    v15 = v13 * v14;
    [v10 size];
    v17 = v16 * 0.0375;
    [v10 scale];
    v19 = v17 * v18;
    [v10 size];
    v21 = 0.925;
    goto LABEL_7;
  }

  return v10;
}

uint64_t sub_10001DD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100071F5C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for AFTimelineEntry(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10001DEB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000388C(&qword_1000947E0, qword_100074040);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100071F5C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for AFTimelineEntry(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for AFExtraLargeContentView(uint64_t a1)
{
  result = qword_1000954A8;
  if (!qword_1000954A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E074@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004C94(v2, &v14 - v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10001E274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v31 = a1;
  v4 = sub_100071FCC();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_100095538, &qword_100074938);
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v26 = sub_10000388C(&qword_100095540, &unk_100074940);
  __chkstk_darwin(v26);
  v25[1] = v25 - v10;
  v11 = sub_1000729DC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v15 - 8);
  v17 = v25 - v16;
  v25[0] = sub_10000388C(&qword_100095548, &qword_100074950);
  __chkstk_darwin(v25[0]);
  v18 = v3 + *(type metadata accessor for AFExtraLargeContentView(0) + 24);
  result = type metadata accessor for AFTimelineEntry(0);
  v20 = *(v18 + *(result + 36));
  if (*(v20 + 16) <= v31)
  {
    goto LABEL_4;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
    v21 = v20 + 24 * v31;
    if ((*(v21 + 48) & 1) == 0)
    {
      v23 = *(v21 + 32);

      sub_10001E074(v14);
      sub_100071DCC();
      (*(v12 + 8))(v14, v11);
      sub_100004890(v17, &qword_100094E50, &qword_100074180);
      swift_getOpaqueTypeConformance2();
      v24 = sub_10007281C();

      result = v24;
      goto LABEL_6;
    }

LABEL_4:
    sub_10001E074(v14);
    sub_100071DDC();
    (*(v12 + 8))(v14, v11);
    sub_100071FBC();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_10007268C();
    (*(v28 + 8))(v6, v29);
    (*(v27 + 8))(v9, v7);
    v32 = v7;
    v33 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    result = sub_10007281C();
LABEL_6:
    *v30 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E718@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_10000388C(&qword_1000954E8, &qword_1000748C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - v3;
  v50 = sub_10000388C(&qword_1000954F0, &qword_1000748D0);
  __chkstk_darwin(v50);
  v6 = &v49 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AFExtraLargeContentView(0);
  sub_10001E074(v10);
  sub_1000084E0();
  v12 = *(v8 + 8);
  v12(v10, v7);
  sub_10001E074(v10);
  v13 = sub_1000084E0();
  v12(v10, v7);
  sub_100071F3C();
  v14 = v13 + v13;
  v16 = v15 - v14 + -32.0;
  sub_100071F3C();
  v18 = v17 + -28.0 - v14;
  v19 = v16 * 0.5;
  v20 = &v1[*(v11 + 24)];
  v21 = v18 / (*(*&v20[*(type metadata accessor for AFTimelineEntry(0) + 36)] + 16) >> 1);
  *v4 = sub_1000721BC();
  *(v4 + 1) = 0x402F000000000000;
  v4[16] = 0;
  v22 = sub_10000388C(&qword_1000954F8, &unk_1000748D8);
  sub_10001EB64(v1, &v4[*(v22 + 44)], v19, v21);
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074030;
  LOBYTE(v11) = sub_1000723DC();
  *(inited + 32) = v11;
  v24 = sub_1000723FC();
  *(inited + 33) = v24;
  v25 = sub_1000723CC();
  *(inited + 34) = v25;
  v26 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v11)
  {
    v26 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v24)
  {
    v26 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v25)
  {
    v26 = sub_1000723EC();
  }

  sub_100071E8C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_100014DEC(v4, v6, &qword_1000954E8, &qword_1000748C8);
  v35 = &v6[*(v50 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_1000723BC();
  v37 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v36)
  {
    v37 = sub_1000723EC();
  }

  sub_100071E8C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v51;
  sub_100014DEC(v6, v51, &qword_1000954F0, &qword_1000748D0);
  result = sub_10000388C(&qword_100095500, &qword_1000748E8);
  v48 = v46 + *(result + 36);
  *v48 = v37;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  return result;
}

uint64_t sub_10001EB64@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v60 = a2;
  v7 = sub_10000388C(&qword_100095508, &qword_1000748F0);
  __chkstk_darwin(v7 - 8);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v50 - v10;
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  *v16 = sub_10007224C();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = sub_10000388C(&qword_100095510, &qword_1000748F8);
  v55 = a1;
  sub_10001EFE8(a1, a3, a4);
  v18 = [objc_opt_self() labelColor];
  v19 = [v18 colorWithAlphaComponent:0.12];

  v58 = sub_10007274C();
  sub_1000728AC();
  sub_100071F2C();
  v20 = v85;
  v56 = v86;
  v57 = v84;
  v21 = v87;
  v53 = v89;
  v54 = v88;
  sub_10000388C(&qword_100094F68, &qword_1000740E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100074490;
  LOBYTE(v18) = sub_1000723BC();
  *(inited + 32) = v18;
  v23 = sub_1000723CC();
  *(inited + 33) = v23;
  v24 = sub_1000723EC();
  sub_1000723EC();
  if (sub_1000723EC() != v18)
  {
    v24 = sub_1000723EC();
  }

  sub_1000723EC();
  if (sub_1000723EC() != v23)
  {
    v24 = sub_1000723EC();
  }

  sub_100071E8C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v83 = v20;
  v33 = v20;
  v51 = v20;
  v52 = v21;
  v82 = v21;
  v34 = v21;
  v81 = 0;
  *v13 = sub_10007224C();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_10001F330(v55, &v13[*(v17 + 44)], a3, a4);
  v35 = v61;
  sub_100004C94(v16, v61, &qword_100095508, &qword_1000748F0);
  v36 = v59;
  sub_100004C94(v13, v59, &qword_100095508, &qword_1000748F0);
  v37 = v35;
  v38 = v60;
  sub_100004C94(v37, v60, &qword_100095508, &qword_1000748F0);
  v39 = sub_10000388C(&qword_100095518, &qword_100074900);
  v40 = v38 + *(v39 + 48);
  v41 = v58;
  v55 = v16;
  v50 = v13;
  v43 = v56;
  v42 = v57;
  *&v62 = v58;
  *(&v62 + 1) = v57;
  LOBYTE(v63) = v33;
  *(&v63 + 1) = v56;
  LOBYTE(v64) = v34;
  v45 = v53;
  v44 = v54;
  *(&v64 + 1) = v54;
  *&v65 = v53;
  BYTE8(v65) = v24;
  *&v66 = v26;
  *(&v66 + 1) = v28;
  *&v67 = v30;
  *(&v67 + 1) = v32;
  v68 = 0;
  *(v40 + 96) = 0;
  v46 = v63;
  *v40 = v62;
  *(v40 + 16) = v46;
  v47 = v65;
  *(v40 + 32) = v64;
  *(v40 + 48) = v47;
  v48 = v67;
  *(v40 + 64) = v66;
  *(v40 + 80) = v48;
  sub_100004C94(v36, v38 + *(v39 + 64), &qword_100095508, &qword_1000748F0);
  sub_100004C94(&v62, v69, &qword_100095520, &unk_100074908);
  sub_100004890(v50, &qword_100095508, &qword_1000748F0);
  sub_100004890(v55, &qword_100095508, &qword_1000748F0);
  sub_100004890(v36, &qword_100095508, &qword_1000748F0);
  v69[0] = v41;
  v69[1] = v42;
  v70 = v51;
  v71 = v43;
  v72 = v52;
  v73 = v44;
  v74 = v45;
  v75 = v24;
  v76 = v26;
  v77 = v28;
  v78 = v30;
  v79 = v32;
  v80 = 0;
  sub_100004890(v69, &qword_100095520, &unk_100074908);
  return sub_100004890(v61, &qword_100095508, &qword_1000748F0);
}

uint64_t sub_10001EFE8(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for AFExtraLargeContentView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v24 - v14;
  sub_10001E074(v24 - v14);
  (*(v10 + 32))(v12, v15, v9);
  v16 = (*(v10 + 88))(v12, v9);
  if (v16 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v16 == enum case for WidgetFamily.systemMedium(_:))
    {
      v17 = 1;
      goto LABEL_9;
    }

    if (v16 != enum case for WidgetFamily.systemLarge(_:))
    {
      if (v16 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        v17 = 4;
        goto LABEL_9;
      }

      if (v16 == enum case for WidgetFamily.accessoryCircular(_:) || v16 == enum case for WidgetFamily.accessoryRectangular(_:) || v16 == enum case for WidgetFamily.accessoryInline(_:))
      {
        goto LABEL_2;
      }

      (*(v10 + 8))(v12, v9);
    }

    v17 = 2;
    goto LABEL_9;
  }

LABEL_2:
  v17 = 0;
LABEL_9:
  v24[0] = 0;
  v24[1] = v17;
  swift_getKeyPath();
  sub_10001F87C(a1, v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_10001F8E4(v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = a2;
  v20[1] = a3;
  sub_10000388C(&qword_100094FA8, &qword_100074148);
  sub_10000388C(&qword_100095528, &qword_100074930);
  sub_100014FD8();
  sub_10001F94C();
  return sub_10007283C();
}

uint64_t sub_10001F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v41 = a2;
  v7 = type metadata accessor for AFExtraLargeContentView(0);
  v38 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v39 = v8;
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  sub_10001E074(&v36 - v20);
  v22 = *(v10 + 32);
  v22(v18, v21, v9);
  v37 = v10;
  v23 = *(v10 + 88);
  v24 = v23(v18, v9);
  v25 = enum case for WidgetFamily.systemSmall(_:);
  if (v24 == enum case for WidgetFamily.systemSmall(_:))
  {
LABEL_2:
    v26 = 0;
    goto LABEL_9;
  }

  if (v24 == enum case for WidgetFamily.systemMedium(_:))
  {
    v26 = 1;
    goto LABEL_9;
  }

  if (v24 == enum case for WidgetFamily.systemLarge(_:))
  {
    goto LABEL_6;
  }

  if (v24 != enum case for WidgetFamily.systemExtraLarge(_:))
  {
    if (v24 == enum case for WidgetFamily.accessoryCircular(_:) || v24 == enum case for WidgetFamily.accessoryRectangular(_:) || v24 == enum case for WidgetFamily.accessoryInline(_:))
    {
      goto LABEL_2;
    }

    (*(v37 + 8))(v18, v9);
LABEL_6:
    v26 = 2;
    goto LABEL_9;
  }

  v26 = 4;
LABEL_9:
  sub_10001E074(v15);
  v22(v12, v15, v9);
  result = v23(v12, v9);
  if (result == v25)
  {
    v28 = 1;
    goto LABEL_13;
  }

  if (result == enum case for WidgetFamily.systemMedium(_:))
  {
    v28 = 2;
    goto LABEL_13;
  }

  if (result == enum case for WidgetFamily.systemLarge(_:))
  {
LABEL_16:
    v28 = 4;
    goto LABEL_14;
  }

  if (result == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v28 = 8;
    goto LABEL_14;
  }

  v28 = 1;
  if (result != enum case for WidgetFamily.accessoryCircular(_:) && result != enum case for WidgetFamily.accessoryRectangular(_:) && result != enum case for WidgetFamily.accessoryInline(_:))
  {
    (*(v37 + 8))(v12, v9);
    goto LABEL_16;
  }

LABEL_13:
  if (v28 >= v26)
  {
LABEL_14:
    v42 = v26;
    v43 = v28;
    swift_getKeyPath();
    v29 = v40;
    sub_10001F87C(a1, v40);
    v30 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v31 = (v39 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    sub_10001F8E4(v29, v32 + v30);
    v33 = (v32 + v31);
    *v33 = a3;
    v33[1] = a4;
    sub_10000388C(&qword_100094FA8, &qword_100074148);
    sub_10000388C(&qword_100095528, &qword_100074930);
    sub_100014FD8();
    sub_10001F94C();
    return sub_10007283C();
  }

  __break(1u);
  return result;
}

double sub_10001F7D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001E274(*a1, v11);
  v5 = v11[0];
  sub_1000728AC();
  sub_100071F2C();
  v6 = v11[1];
  v7 = v12;
  v8 = v13;
  v9 = v14;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  result = *&v15;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_10001F87C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFExtraLargeContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFExtraLargeContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001F94C()
{
  result = qword_100095530;
  if (!qword_100095530)
  {
    sub_1000038D4(&qword_100095528, &qword_100074930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095530);
  }

  return result;
}

uint64_t sub_10001F9D0()
{
  v1 = type metadata accessor for AFExtraLargeContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000729DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 20);
  v9 = sub_100071F5C();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v5 + *(v1 + 24);
  v11 = sub_100071D4C();
  (*(*(v11 - 8) + 8))(v10, v11);
  type metadata accessor for AFTimelineEntry(0);

  return _swift_deallocObject(v0, v7 + 16, v2 | 7);
}

uint64_t sub_10001FC98(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000038D4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001FD1C()
{
  result = qword_100095560;
  if (!qword_100095560)
  {
    sub_1000038D4(&qword_1000954E8, &qword_1000748C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095560);
  }

  return result;
}

uint64_t sub_10001FD88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CPTitleView(0);
  sub_100004C94(v1 + *(v10 + 24), v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10001FF90()
{
  v0 = sub_1000729DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001FD88(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for WidgetFamily.systemSmall(_:) || v4 == enum case for WidgetFamily.systemMedium(_:))
  {
    return sub_10007251C();
  }

  if (v4 == enum case for WidgetFamily.systemLarge(_:) || v4 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    return sub_10007252C();
  }

  v6 = enum case for WidgetFamily.accessoryCircular(_:);
  v7 = enum case for WidgetFamily.accessoryRectangular(_:);
  v8 = enum case for WidgetFamily.accessoryInline(_:);
  v9 = v4;
  result = sub_10007251C();
  if (v9 != v6 && v9 != v7 && v9 != v8)
  {
    v12 = result;
    (*(v1 + 8))(v3, v0);
    return v12;
  }

  return result;
}

double sub_100020120()
{
  v16 = sub_10007218C();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CPTitleView(0);
  sub_100004C94(v0 + *(v11 + 24), v6, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100072CEC();
    v12 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  result = 48.0;
  if (v13 != enum case for WidgetFamily.systemSmall(_:) && v13 != enum case for WidgetFamily.systemMedium(_:) && v13 != enum case for WidgetFamily.systemLarge(_:))
  {
    if (v13 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      return 78.0;
    }

    else
    {
      result = 0.0;
      if (v13 != enum case for WidgetFamily.accessoryCircular(_:) && v13 != enum case for WidgetFamily.accessoryRectangular(_:) && v13 != enum case for WidgetFamily.accessoryInline(_:))
      {
        (*(v8 + 8))(v10, v7, 0.0);
        return 0.0;
      }
    }
  }

  return result;
}

double sub_100020464()
{
  v16 = sub_10007218C();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_1000729DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CPTitleView(0);
  sub_100004C94(v0 + *(v11 + 24), v6, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_100072CEC();
    v12 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  if (v13 != enum case for WidgetFamily.systemSmall(_:) && v13 != enum case for WidgetFamily.systemMedium(_:) && v13 != enum case for WidgetFamily.systemLarge(_:))
  {
    result = 4.0;
    if (v13 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      return result;
    }

    if (v13 != enum case for WidgetFamily.accessoryCircular(_:) && v13 != enum case for WidgetFamily.accessoryRectangular(_:) && v13 != enum case for WidgetFamily.accessoryInline(_:))
    {
      (*(v8 + 8))(v10, v7, 4.0);
    }
  }

  return 1.0;
}

uint64_t sub_100020790@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = sub_1000729DC();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100071C9C();
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_100095638, &qword_1000749E0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  type metadata accessor for CPTitleView(0);
  sub_10001FD88(v5);
  sub_10004CE40(0xD000000000000015, 0x80000001000776C0, v5, v8);
  (*(v22 + 8))(v5, v23);
  v25 = a1;
  sub_10000388C(&qword_100095640, &qword_1000749E8);
  sub_1000238F8();
  sub_10007254C();
  v16 = *(v10 + 16);
  v16(v12, v15, v9);
  v17 = v24;
  v16(v24, v12, v9);
  v18 = &v17[*(sub_10000388C(&qword_100095660, &qword_1000749F8) + 48)];
  *v18 = 0;
  v18[8] = 0;
  v19 = *(v10 + 8);
  v19(v15, v9);
  return (v19)(v12, v9);
}

uint64_t sub_100020A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1000721CC();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10000388C(&qword_100095668, &qword_100074A00);
  sub_100020B5C(a1, a2 + *(v4 + 44));
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(sub_10000388C(&qword_100095640, &qword_1000749E8) + 36));
  v7 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
  v8 = enum case for ColorScheme.dark(_:);
  v9 = sub_100071EAC();
  result = (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = KeyPath;
  return result;
}

uint64_t sub_100020B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v59 = type metadata accessor for CPTitleView(0);
  v68 = *(v59 - 8);
  __chkstk_darwin(v59);
  v69 = v3;
  v70 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10000388C(&qword_100095670, &qword_100074A38);
  __chkstk_darwin(v67);
  v71 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v58 - v6);
  v62 = sub_10000388C(&qword_100095678, &qword_100074A40);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = (&v58 - v8);
  v9 = sub_10000388C(&qword_100095680, &qword_100074A48);
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v60 = &v58 - v10;
  v11 = sub_1000729DC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v18 = sub_10000388C(&qword_100095688, &qword_100074A50);
  __chkstk_darwin(v18 - 8);
  v66 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v65 = &v58 - v21;
  v73 = a1;
  sub_10001FD88(v17);
  v22 = *(v12 + 104);
  v22(v14, enum case for WidgetFamily.systemLarge(_:), v11);
  sub_100023DD8(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100072C1C();
  sub_100072C1C();
  v23 = *(v12 + 8);
  v23(v14, v11);
  v23(v17, v11);
  if (v75 == v74 || (sub_10001FD88(v17), v22(v14, enum case for WidgetFamily.systemExtraLarge(_:), v11), sub_100072C1C(), sub_100072C1C(), v23(v14, v11), v23(v17, v11), v75 == v74))
  {
    v24 = v73;
    v25 = sub_10004D174(0x6C616D726F6ELL, 0xE600000000000000);
    if (v25)
    {
      v26 = v25;
      v27 = sub_1000728AC();
      v28 = v58;
      *v58 = v27;
      *(v28 + 8) = v29;
      v30 = sub_10000388C(&qword_1000956B8, &qword_100074A78);
      sub_100021404(v26, v28 + *(v30 + 44));
      v31 = sub_100020120();
      *(v28 + *(sub_10000388C(&qword_1000956C0, &qword_100074A80) + 36)) = v31;
      sub_100020120();
      sub_100020120();
      sub_1000728AC();
      sub_100071F2C();

      v32 = (v28 + *(sub_10000388C(&qword_1000956C8, &qword_100074A88) + 36));
      v33 = v76;
      *v32 = v75;
      v32[1] = v33;
      v32[2] = v77;
      v34 = v62;
      *(v28 + *(v62 + 36)) = 0x3FF0000000000000;
      v35 = v60;
      sub_100014DEC(v28, v60, &qword_100095678, &qword_100074A40);
      v36 = 0;
      v37 = v65;
    }

    else
    {
      v36 = 1;
      v37 = v65;
      v34 = v62;
      v35 = v60;
    }

    (*(v61 + 56))(v35, v36, 1, v34);
    sub_100014DEC(v35, v37, &qword_100095680, &qword_100074A48);
    v38 = 0;
  }

  else
  {
    v38 = 1;
    v24 = v73;
    v37 = v65;
  }

  (*(v63 + 56))(v37, v38, 1, v64);
  v39 = sub_10007224C();
  v40 = sub_100020464();
  *v7 = v39;
  v7[1] = v40;
  *(v7 + 16) = 0;
  v41 = sub_10000388C(&qword_100095690, &qword_100074A58);
  sub_100021ED0(v24, v7 + *(v41 + 44));
  *(v7 + *(sub_10000388C(&qword_100095698, &qword_100074A60) + 36)) = 2.0;
  v42 = v7 + *(sub_10000388C(&qword_1000956A0, &qword_100074A68) + 36);
  v43 = enum case for CoordinateSpace.global(_:);
  v44 = sub_100071F9C();
  (*(*(v44 - 8) + 104))(v42, v43, v44);
  v45 = sub_1000728AC();
  v47 = v46;
  v48 = &v42[*(sub_10000388C(&qword_1000956A8, &qword_100077150) + 36)];
  *v48 = v45;
  v48[1] = v47;
  v49 = v70;
  sub_1000239E4(v24, v70);
  v50 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v51 = swift_allocObject();
  sub_100004768(v49, v51 + v50);
  v52 = v66;
  v53 = v7 + *(v67 + 36);
  *v53 = sub_100023D68;
  *(v53 + 1) = v51;
  sub_100004C94(v37, v52, &qword_100095688, &qword_100074A50);
  v54 = v71;
  sub_100004C94(v7, v71, &qword_100095670, &qword_100074A38);
  v55 = v72;
  sub_100004C94(v52, v72, &qword_100095688, &qword_100074A50);
  v56 = sub_10000388C(&qword_1000956B0, &qword_100074A70);
  sub_100004C94(v54, v55 + *(v56 + 48), &qword_100095670, &qword_100074A38);
  sub_100004890(v7, &qword_100095670, &qword_100074A38);
  sub_100004890(v37, &qword_100095688, &qword_100074A50);
  sub_100004890(v54, &qword_100095670, &qword_100074A38);
  return sub_100004890(v52, &qword_100095688, &qword_100074A50);
}

uint64_t sub_100021404@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v83 = a1;
  v84 = a2;
  v89 = sub_10000388C(&qword_1000956D0, &qword_100074A90);
  __chkstk_darwin(v89);
  v86 = (&v68 - v2);
  v88 = sub_10000388C(&qword_1000956D8, &qword_100074A98);
  __chkstk_darwin(v88);
  v81 = &v68 - v3;
  v4 = sub_10000388C(&qword_1000956E0, &qword_100074AA0);
  __chkstk_darwin(v4 - 8);
  v76 = &v68 - v5;
  v6 = sub_10000388C(&qword_1000956E8, &qword_100074AA8);
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v77 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v68 - v9;
  v85 = sub_10007277C();
  v82 = *(v85 - 8);
  __chkstk_darwin(v85);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000388C(&qword_1000956F0, &qword_100074AB0);
  v73 = *(v12 - 8);
  v74 = v12;
  __chkstk_darwin(v12);
  v70 = &v68 - v13;
  v14 = sub_100071FCC();
  v72 = *(v14 - 8);
  __chkstk_darwin(v14);
  v71 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = sub_10000388C(&qword_1000956F8, &qword_100074AB8);
  __chkstk_darwin(v19 - 8);
  v75 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v87 = &v68 - v22;
  v23 = sub_10007297C();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v68 - v28;
  type metadata accessor for CPTitleView(0);
  sub_1000129F8(v29);
  sub_10007296C();
  v30 = sub_10007295C();
  v31 = *(v24 + 8);
  v31(v26, v23);
  v31(v29, v23);
  if (v30)
  {
    v69 = v11;
    v32 = v82;
    v33 = v83;
    sub_100012A48(v18);
    sub_100023DD8(&qword_100095708, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    v34 = v71;
    sub_100072DAC();
    sub_100023DD8(&qword_100095710, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    v35 = sub_100072B1C();
    v36 = *(v72 + 8);
    v36(v34, v14);
    v36(v18, v14);
    if (v35)
    {
      v37 = v33;
      v38 = v33;
      sub_10007275C();
      v39 = enum case for Image.ResizingMode.stretch(_:);
      v40 = v32;
      v41 = *(v32 + 104);
      v42 = v69;
      v43 = v85;
      v41(v69, enum case for Image.ResizingMode.stretch(_:), v85);
      v44 = sub_1000727DC();

      (*(v40 + 8))(v42, v43);
      v90 = v44;
      v45 = v70;
      sub_1000725AC();

      v46 = v74;
      v47 = *(v74 + 36);
      v48 = enum case for BlendMode.destinationOut(_:);
      v49 = sub_1000728BC();
      (*(*(v49 - 8) + 104))(v45 + v47, v48, v49);
      v50 = v87;
      sub_100014DEC(v45, v87, &qword_1000956F0, &qword_100074AB0);
      (*(v73 + 56))(v50, 0, 1, v46);
    }

    else
    {
      v50 = v87;
      (*(v73 + 56))(v87, 1, 1, v74);
      v39 = enum case for Image.ResizingMode.stretch(_:);
      v37 = v33;
      v43 = v85;
      v40 = v32;
      v42 = v69;
    }

    v56 = v37;
    sub_10007275C();
    (*(v40 + 104))(v42, v39, v43);
    sub_1000727DC();

    (*(v40 + 8))(v42, v43);
    v57 = v76;
    sub_1000729AC();
    v58 = sub_1000729BC();
    (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
    v59 = v78;
    sub_1000727CC();

    sub_100004890(v57, &qword_1000956E0, &qword_100074AA0);
    v60 = v75;
    sub_100004C94(v50, v75, &qword_1000956F8, &qword_100074AB8);
    v61 = v79;
    v62 = v80;
    v63 = *(v79 + 16);
    v64 = v77;
    v63(v77, v59, v80);
    v65 = v81;
    sub_100004C94(v60, v81, &qword_1000956F8, &qword_100074AB8);
    v66 = sub_10000388C(&qword_100095718, &qword_100074AC0);
    v63((v65 + *(v66 + 48)), v64, v62);
    v67 = *(v61 + 8);
    v67(v64, v62);
    sub_100004890(v60, &qword_1000956F8, &qword_100074AB8);
    sub_100004C94(v65, v86, &qword_1000956D8, &qword_100074A98);
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100095700, &qword_1000956D8, &qword_100074A98, &protocol conformance descriptor for TupleView<A>);
    sub_10007230C();
    sub_100004890(v65, &qword_1000956D8, &qword_100074A98);
    v67(v59, v62);
    return sub_100004890(v87, &qword_1000956F8, &qword_100074AB8);
  }

  else
  {
    v51 = v83;
    sub_10007275C();
    v52 = v82;
    v53 = v85;
    (*(v82 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v85);
    v54 = sub_1000727DC();

    (*(v52 + 8))(v11, v53);
    *v86 = v54;
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100095700, &qword_1000956D8, &qword_100074A98, &protocol conformance descriptor for TupleView<A>);
    return sub_10007230C();
  }
}

uint64_t sub_100021ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v163 = sub_10000388C(&qword_100095728, &qword_100074AD0);
  __chkstk_darwin(v163);
  v165 = &v135 - v3;
  v166 = sub_10000388C(&qword_100095730, &qword_100074AD8);
  v136 = *(v166 - 8);
  __chkstk_darwin(v166);
  v135 = &v135 - v4;
  v5 = sub_1000728BC();
  v153 = *(v5 - 8);
  v154 = v5;
  __chkstk_darwin(v5);
  v152 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007297C();
  v147 = *(v7 - 8);
  v148 = v7;
  __chkstk_darwin(v7);
  v173 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v172 = &v135 - v10;
  v176 = sub_1000724DC();
  v178 = *(v176 - 8);
  __chkstk_darwin(v176);
  *&v175 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000729DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v167 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v135 - v16;
  __chkstk_darwin(v18);
  v20 = &v135 - v19;
  v151 = sub_10000388C(&qword_100095738, &qword_100074AE0);
  __chkstk_darwin(v151);
  v22 = &v135 - v21;
  v23 = sub_10000388C(&qword_100095740, &qword_100074AE8);
  v161 = *(v23 - 8);
  v162 = v23;
  __chkstk_darwin(v23);
  v25 = &v135 - v24;
  v26 = sub_10000388C(&qword_100095748, &qword_100074AF0);
  __chkstk_darwin(v26 - 8);
  v168 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v135 - v29;
  __chkstk_darwin(v31);
  v179 = &v135 - v32;
  v180 = a1;
  sub_10001FD88(v20);
  v33 = *(v13 + 104);
  v174 = enum case for WidgetFamily.systemSmall(_:);
  v145 = v33;
  v146 = v13 + 104;
  v33(v17);
  v34 = sub_100023DD8(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100072C1C();
  v144 = v34;
  sub_100072C1C();
  v164 = v13;
  v35 = *(v13 + 8);
  v150 = v17;
  v35(v17, v12);
  v149 = v20;
  v177 = v12;
  v170 = v35;
  v171 = v13 + 8;
  v35(v20, v12);
  v159 = v30;
  v160 = v25;
  if (v187 != v181)
  {
    type metadata accessor for CPTitleView(0);
    sub_10004CC18();
  }

  sub_1000721EC();
  v36 = sub_10007258C();
  v38 = v37;
  v40 = v39;
  sub_10007248C();
  v41 = sub_10007255C();
  v43 = v42;
  v45 = v44;
  v143 = v46;
  sub_100004C84(v36, v38, v40 & 1);

  sub_10001FF90();
  v47 = v178;
  v48 = *(v178 + 104);
  v49 = v175;
  v157 = enum case for Font.Leading.tight(_:);
  v50 = v176;
  v158 = v178 + 104;
  v156 = v48;
  v48(v175);
  sub_10007250C();

  v51 = *(v47 + 8);
  v178 = v47 + 8;
  v155 = v51;
  v51(v49, v50);
  v52 = sub_10007257C();
  v141 = v53;
  v142 = v52;
  v55 = v54;
  v140 = v56;

  sub_100004C84(v41, v43, v45 & 1);

  KeyPath = swift_getKeyPath();
  v138 = swift_getKeyPath();
  v137 = v55 & 1;
  v205 = v55 & 1;
  v204 = 0;
  v143 = type metadata accessor for CPTitleView(0);
  v57 = v172;
  sub_1000129F8(v172);
  v58 = v173;
  sub_10007296C();
  v59 = sub_10007295C();
  v60 = *(v147 + 8);
  v61 = v58;
  v62 = v148;
  v60(v61, v148);
  v60(v57, v62);
  if (v59)
  {
    v63 = sub_10007270C();
  }

  else
  {
    v63 = sub_10007271C();
  }

  v147 = v63;
  v64 = swift_getKeyPath();
  v65 = v172;
  sub_1000129F8(v172);
  v66 = v173;
  sub_10007296C();
  v67 = sub_10007295C();
  v60(v66, v62);
  v60(v65, v62);
  v69 = v152;
  v68 = v153;
  v70 = &enum case for BlendMode.normal(_:);
  if ((v67 & 1) == 0)
  {
    v70 = &enum case for BlendMode.plusLighter(_:);
  }

  v71 = v154;
  (*(v153 + 104))(v152, *v70, v154);
  v72 = v151;
  (*(v68 + 32))(&v22[*(v151 + 36)], v69, v71);
  v73 = v141;
  *v22 = v142;
  *(v22 + 1) = v73;
  v22[16] = v137;
  v74 = KeyPath;
  *(v22 + 3) = v140;
  *(v22 + 4) = v74;
  v22[40] = 1;
  *(v22 + 6) = v138;
  *(v22 + 7) = 1;
  v22[64] = 0;
  v75 = v147;
  *(v22 + 9) = v64;
  *(v22 + 10) = v75;
  v76 = sub_100023E38();
  v77 = v160;
  sub_1000725AC();
  sub_100004890(v22, &qword_100095738, &qword_100074AE0);
  v78 = v149;
  sub_10001FD88(v149);
  v79 = v150;
  v80 = v177;
  v145(v150, v174, v177);
  sub_100072C1C();
  sub_100072C1C();
  v81 = v79;
  v82 = v170;
  v170(v81, v80);
  v82(v78, v80);
  if (v187 == v181)
  {
    v187 = v72;
    v188 = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v84 = v135;
    v85 = v162;
    sub_1000725FC();
    v86 = v136;
    v87 = v166;
    (*(v136 + 16))(v165, v84, v166);
    swift_storeEnumTagMultiPayload();
    v187 = v85;
    v188 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v88 = v159;
    sub_10007230C();
    (*(v86 + 8))(v84, v87);
    v89 = v161;
  }

  else
  {
    v89 = v161;
    v85 = v162;
    (*(v161 + 16))(v165, v77, v162);
    swift_storeEnumTagMultiPayload();
    v187 = v72;
    v188 = v76;
    v90 = swift_getOpaqueTypeConformance2();
    v187 = v85;
    v188 = v90;
    swift_getOpaqueTypeConformance2();
    v88 = v159;
    sub_10007230C();
  }

  (*(v89 + 8))(v77, v85);
  sub_100014DEC(v88, v179, &qword_100095748, &qword_100074AF0);
  v91 = *(v180 + *(v143 + 40));
  v92 = *(v91 + 48);
  v187 = *(v91 + 40);
  v188 = v92;
  sub_100004A78();

  v93 = sub_10007259C();
  v95 = v94;
  v97 = v96;
  sub_10007248C();
  v98 = sub_10007255C();
  v100 = v99;
  v102 = v101;
  sub_100004C84(v93, v95, v97 & 1);

  v103 = v167;
  sub_10001FD88(v167);
  v104 = (*(v164 + 88))(v103, v177);
  if (v104 == v174 || v104 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_10007252C();
  }

  else if (v104 == enum case for WidgetFamily.systemLarge(_:))
  {
    sub_1000724EC();
  }

  else if (v104 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    sub_1000724BC();
  }

  else
  {
    v133 = enum case for WidgetFamily.accessoryCircular(_:);
    v134 = v104;
    sub_10007251C();
    if (v134 != v133 && v134 != enum case for WidgetFamily.accessoryRectangular(_:) && v134 != enum case for WidgetFamily.accessoryInline(_:))
    {
      v170(v103, v177);
    }
  }

  v105 = v175;
  v106 = v176;
  v156(v175, v157, v176);
  sub_10007250C();

  v155(v105, v106);
  v107 = v98;
  v108 = sub_10007257C();
  v109 = v100;
  v111 = v110;
  v177 = v110;
  v113 = v112;
  v180 = v114;

  sub_100004C84(v107, v109, v102 & 1);

  v178 = swift_getKeyPath();
  v115 = sub_10007270C();
  v176 = swift_getKeyPath();
  v116 = v113 & 1;
  v203 = v113 & 1;
  v201 = 0;
  v117 = swift_getKeyPath();
  v118 = v168;
  sub_100004C94(v179, v168, &qword_100095748, &qword_100074AF0);
  v119 = v169;
  sub_100004C94(v118, v169, &qword_100095748, &qword_100074AF0);
  v120 = (v119 + *(sub_10000388C(&qword_100095798, &qword_100074BD8) + 48));
  *&v181 = v108;
  *(&v181 + 1) = v111;
  LOBYTE(v182) = v113 & 1;
  *(&v182 + 1) = *v202;
  DWORD1(v182) = *&v202[3];
  v121 = v180;
  v122 = v178;
  *(&v182 + 1) = v180;
  *&v183 = v178;
  *(&v183 + 1) = 1;
  LOBYTE(v184) = 0;
  *(&v184 + 1) = *v200;
  DWORD1(v184) = *&v200[3];
  v123 = v176;
  *(&v184 + 1) = v176;
  *&v185 = v115;
  *(&v185 + 1) = v117;
  __asm { FMOV            V0.2D, #1.0 }

  v175 = _Q0;
  v186 = _Q0;
  v129 = v184;
  v120[2] = v183;
  v120[3] = v129;
  v130 = v186;
  v120[4] = v185;
  v120[5] = v130;
  v131 = v182;
  *v120 = v181;
  v120[1] = v131;
  sub_100004C94(&v181, &v187, &qword_1000957A0, &qword_100074BE0);
  sub_100004890(v179, &qword_100095748, &qword_100074AF0);
  v187 = v108;
  v188 = v177;
  v189 = v116;
  *v190 = *v202;
  *&v190[3] = *&v202[3];
  v191 = v121;
  v192 = v122;
  v193 = 1;
  v194 = 0;
  *v195 = *v200;
  *&v195[3] = *&v200[3];
  v196 = v123;
  v197 = v115;
  v198 = v117;
  v199 = v175;
  sub_100004890(&v187, &qword_1000957A0, &qword_100074BE0);
  return sub_100004890(v118, &qword_100095748, &qword_100074AF0);
}

uint64_t sub_100022E78(_OWORD *a1, uint64_t a2)
{
  type metadata accessor for CPTitleView(0);
  sub_10000388C(&qword_100095720, &qword_100074AC8);
  return sub_10007282C();
}

double sub_100022EF0@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000721CC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10000388C(&qword_100095628, &qword_1000749D0);
  sub_100020790(v1, (a1 + *(v3 + 44)));
  v4 = sub_1000723AC();
  v5 = a1 + *(sub_10000388C(&qword_100095630, &qword_1000749D8) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

void sub_100022F7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000729DC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_2;
  }

  if (v8 == enum case for WidgetFamily.systemMedium(_:))
  {
    goto LABEL_4;
  }

  if (v8 == enum case for WidgetFamily.systemLarge(_:))
  {
LABEL_2:
    sub_100071F3C();
    return;
  }

  if (v8 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
LABEL_4:
    sub_100071F3C();
  }

  else
  {
    v9 = enum case for WidgetFamily.accessoryCircular(_:);
    v10 = enum case for WidgetFamily.accessoryRectangular(_:);
    v11 = enum case for WidgetFamily.accessoryInline(_:);
    v12 = v8;
    sub_100071F3C();
    if (v12 != v9 && v12 != v10 && v12 != v11)
    {
      (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t sub_100023158(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_100095568, &unk_100074960);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = sub_10000388C(&qword_100095260, qword_100074600);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = sub_100071F5C();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = type metadata accessor for CPTimelineEntry(0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v19 = *(a1 + a3[10]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_1000233C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_100095568, &unk_100074960);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_10000388C(&qword_1000947E0, qword_100074040);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_10000388C(&qword_100095260, qword_100074600);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          v18 = sub_100071F5C();
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[8];
          }

          else
          {
            result = type metadata accessor for CPTimelineEntry(0);
            if (*(*(result - 8) + 84) != a3)
            {
              *(a1 + a4[10]) = (a2 - 1);
              return result;
            }

            v10 = result;
            v14 = *(result - 8);
            v15 = a4[9];
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPTitleView(uint64_t a1)
{
  result = qword_1000955C8;
  if (!qword_1000955C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002366C(uint64_t a1)
{
  sub_100023870(319, &qword_1000955D8, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100023870(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100023870(319, &qword_100094858, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100023870(319, &unk_1000952D0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100071F5C();
          if (v5 <= 0x3F)
          {
            type metadata accessor for CPTimelineEntry(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for AppDisplayData(319);
              if (v7 <= 0x3F)
              {
                sub_100023870(319, &unk_1000955E0, type metadata accessor for CGRect, &type metadata accessor for Binding);
                if (v8 <= 0x3F)
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

void sub_100023870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000238F8()
{
  result = qword_100095648;
  if (!qword_100095648)
  {
    sub_1000038D4(&qword_100095640, &qword_1000749E8);
    sub_100004C3C(&qword_100095650, &qword_100095658, &qword_1000749F0, &protocol conformance descriptor for HStack<A>);
    sub_100004C3C(&qword_1000949B8, &qword_100094988, &unk_1000763D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095648);
  }

  return result;
}

uint64_t sub_1000239E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPTitleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023A48()
{
  v1 = type metadata accessor for CPTitleView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_10000388C(&qword_100094908, &qword_100073A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_100071FCC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_10000388C(&qword_100094910, &unk_100076340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10007297C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1000729DC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[7];
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_100071EAC();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v1[8];
  v14 = sub_100071F5C();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v5 + v1[9];
  v16 = sub_100071D4C();
  (*(*(v16 - 8) + 8))(v15, v16);
  type metadata accessor for CPTimelineEntry(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100023D68(_OWORD *a1)
{
  v3 = *(type metadata accessor for CPTitleView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100022E78(a1, v4);
}

uint64_t sub_100023DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100023E38()
{
  result = qword_100095750;
  if (!qword_100095750)
  {
    sub_1000038D4(&qword_100095738, &qword_100074AE0);
    sub_100023EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095750);
  }

  return result;
}

unint64_t sub_100023EC4()
{
  result = qword_100095758;
  if (!qword_100095758)
  {
    sub_1000038D4(&qword_100095760, &qword_100074B88);
    sub_100023F7C();
    sub_100004C3C(&qword_1000953D0, &qword_1000953D8, &qword_1000769A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095758);
  }

  return result;
}

unint64_t sub_100023F7C()
{
  result = qword_100095768;
  if (!qword_100095768)
  {
    sub_1000038D4(&qword_100095770, &qword_100074B90);
    sub_100024034();
    sub_100004C3C(&qword_100095788, &qword_100095790, &qword_100074BA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095768);
  }

  return result;
}

unint64_t sub_100024034()
{
  result = qword_100095778;
  if (!qword_100095778)
  {
    sub_1000038D4(&qword_100095780, &qword_100074B98);
    sub_100004C3C(&qword_1000953F0, &qword_1000953F8, &qword_1000747C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095778);
  }

  return result;
}

unint64_t sub_1000240F8()
{
  result = qword_1000957A8;
  if (!qword_1000957A8)
  {
    sub_1000038D4(&qword_100095630, &qword_1000749D8);
    sub_100004C3C(&qword_1000957B0, &qword_1000957B8, &qword_100074BE8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000957A8);
  }

  return result;
}

uint64_t sub_1000241C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000388C(&qword_1000947E0, qword_100074040);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100071F5C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for CPTimelineEntry(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9] + 32);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_10002439C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000388C(&qword_1000947D8, &unk_1000738B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_10000388C(&qword_1000947E0, qword_100074040);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100071F5C();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = type metadata accessor for CPTimelineEntry(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9] + 32) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for CPExtraLargeContentView(uint64_t a1)
{
  result = qword_100095818;
  if (!qword_100095818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002459C(uint64_t a1)
{
  sub_100024760(319, &qword_100094850, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100024760(319, &qword_100094858, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100024710();
      if (v3 <= 0x3F)
      {
        sub_100071F5C();
        if (v4 <= 0x3F)
        {
          type metadata accessor for CPTimelineEntry(319);
          if (v5 <= 0x3F)
          {
            sub_100024760(319, &unk_100094868, type metadata accessor for CGRect, &type metadata accessor for State);
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

void sub_100024710()
{
  if (!qword_100094860)
  {
    v0 = sub_100071EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_100094860);
    }
  }
}

void sub_100024760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000247E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007218C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CPExtraLargeContentView(0);
  sub_100004C94(v1 + *(v10 + 20), v9, &qword_1000948F8, &qword_1000739B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000729DC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000249E8()
{
  v1 = sub_10007218C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CPExtraLargeContentView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_100072CEC();
    v7 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100024B40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10000388C(&qword_100095878, &qword_100074C98);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  sub_100024CB0(&v15);
  v10 = v15;
  *v9 = sub_1000721CC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v11 = sub_10000388C(&qword_100095880, &qword_100074CA0);
  sub_100024F94(a1, &v9[*(v11 + 44)]);
  sub_100004C94(v9, v6, &qword_100095878, &qword_100074C98);
  *a2 = v10;
  v12 = sub_10000388C(&qword_100095888, &qword_100074CA8);
  sub_100004C94(v6, a2 + *(v12 + 48), &qword_100095878, &qword_100074C98);

  sub_100004890(v9, &qword_100095878, &qword_100074C98);
  sub_100004890(v6, &qword_100095878, &qword_100074C98);
}

uint64_t sub_100024CB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10007297C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_10007218C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(type metadata accessor for CPExtraLargeContentView(0) + 24);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {

    sub_100072CEC();
    v22 = v10;
    v23 = v1;
    v16 = v11;
    v17 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();
    sub_100004E00(v15, 0);
    (*(v16 + 8))(v13, v22);
    if (v24 != 1)
    {
LABEL_6:
      result = 0;
      goto LABEL_10;
    }
  }

  sub_1000129F8(v9);
  sub_10007296C();
  sub_10001B20C();
  v18 = sub_100072B1C();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  if (v18)
  {
    goto LABEL_6;
  }

  if (qword_1000946D8 != -1)
  {
    swift_once();
  }

LABEL_10:
  *a1 = result;
  return result;
}

uint64_t sub_100024F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_10000388C(&qword_100095890, &qword_100074CB0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  v9 = sub_1000729DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000388C(&qword_100095898, &qword_100074CB8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v43 - v17;
  sub_1000254AC(&v43 - v17);
  v19 = &v18[*(v14 + 44)];
  sub_100026100(a1, v19);
  v20 = type metadata accessor for CPExtraLargeContentView(0);
  v21 = *(v20 + 28);
  sub_1000247E0(v12);
  sub_100022F7C(a1 + v21, v12);
  (*(v10 + 8))(v12, v9);
  sub_1000728AC();
  sub_100071F2C();
  v22 = (v19 + *(sub_10000388C(&qword_1000958A0, &qword_100074CC0) + 36));
  v23 = v48;
  *v22 = v47;
  v22[1] = v23;
  v22[2] = v49;
  v24 = sub_1000728AC();
  v26 = v25;
  v27 = (v19 + *(sub_10000388C(&qword_1000958A8, &qword_100074CC8) + 36));
  *v27 = v24;
  v27[1] = v26;
  sub_100028780(a1 + *(v20 + 32), v8, type metadata accessor for CPTimelineEntry);
  v28 = type metadata accessor for CPAppGridView(0);
  v29 = v28[5];
  v30 = sub_100071F5C();
  (*(*(v30 - 8) + 16))(&v8[v29], a1 + v21, v30);
  *&v8[v28[11]] = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *&v8[v28[12]] = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *&v8[v28[6]] = 2;
  *&v8[v28[7]] = 3;
  v8[v28[8]] = 0;
  v31 = v28[9];
  *&v8[v31] = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v32 = v28[10];
  *&v8[v32] = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v33 = &v8[*(v4 + 44)];
  sub_100025B34(v33);
  v34 = sub_1000728AC();
  v36 = v35;
  v37 = (v33 + *(sub_10000388C(&qword_1000958B0, &qword_100074DB0) + 36));
  *v37 = v34;
  v37[1] = v36;
  v38 = v44;
  sub_100004C94(v18, v44, &qword_100095898, &qword_100074CB8);
  v39 = v45;
  sub_100004C94(v8, v45, &qword_100095890, &qword_100074CB0);
  v40 = v46;
  sub_100004C94(v38, v46, &qword_100095898, &qword_100074CB8);
  v41 = sub_10000388C(&qword_1000958B8, &qword_100074DB8);
  sub_100004C94(v39, v40 + *(v41 + 48), &qword_100095890, &qword_100074CB0);
  sub_100004890(v8, &qword_100095890, &qword_100074CB0);
  sub_100004890(v18, &qword_100095898, &qword_100074CB8);
  sub_100004890(v39, &qword_100095890, &qword_100074CB0);
  return sub_100004890(v38, &qword_100095898, &qword_100074CB8);
}

uint64_t sub_1000254AC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v2 = sub_10007234C();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10000388C(&qword_1000959E8, &unk_100077500);
  __chkstk_darwin(v44);
  v45 = v40 - v4;
  v5 = sub_10000388C(&qword_1000959F0, &unk_100074EE0);
  v54 = *(v5 - 8);
  __chkstk_darwin(v5);
  v43 = v40 - v6;
  v7 = sub_1000729DC();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000388C(&qword_100094E50, &qword_100074180);
  __chkstk_darwin(v10 - 8);
  v12 = v40 - v11;
  v53 = sub_100071C9C();
  v13 = *(v53 - 8);
  __chkstk_darwin(v53);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v50 = v40 - v17;
  v18 = type metadata accessor for CPExtraLargeContentView(0);
  v19 = v1;
  v20 = v1 + *(v18 + 32);
  v21 = *(v20 + *(type metadata accessor for CPTimelineEntry(0) + 20));
  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v28 = 1;
    goto LABEL_11;
  }

  result = sub_100072EDC();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v42 = v5;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v49 = sub_100072E6C();
    goto LABEL_6;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v49 = *(v21 + 32);

LABEL_6:
    sub_1000247E0(v9);
    sub_100005294(v9, v12);
    v23 = v52;
    v24 = *(v51 + 8);
    v24(v9, v52);
    v25 = v13;
    v26 = *(v13 + 48);
    v27 = v53;
    if (v26(v12, 1, v53) != 1)
    {
      v29 = *(v25 + 32);
      v41 = v18;
      v30 = v50;
      v29();
      v31 = (*(v25 + 16))(v15, v30, v27);
      v40[1] = v40;
      __chkstk_darwin(v31);
      v51 = v25;
      v32 = v49;
      v40[-2] = v19;
      v40[-1] = v32;
      sub_10000388C(&qword_1000959F8, &unk_100074EF0);
      sub_100004C3C(&qword_100095A00, &qword_1000959F8, &unk_100074EF0, &protocol conformance descriptor for VStack<A>);
      v33 = v45;
      sub_10007254C();
      v34 = *(v41 + 28);
      sub_1000247E0(v9);
      sub_100022F7C(v19 + v34, v9);
      v24(v9, v23);
      sub_1000728AC();
      sub_100071F2C();
      v35 = (v33 + *(v44 + 36));
      v36 = v57;
      *v35 = v56;
      v35[1] = v36;
      v35[2] = v58;
      v37 = v46;
      sub_10007233C();
      sub_1000286C8();
      v38 = v43;
      sub_10007266C();

      (*(v47 + 8))(v37, v48);
      sub_100004890(v33, &qword_1000959E8, &unk_100077500);
      (*(v51 + 8))(v50, v53);
      v39 = v54;
      v5 = v42;
      (*(v54 + 32))(v55, v38, v42);
      v28 = 0;
      return (*(v39 + 56))(v55, v28, 1, v5);
    }

    sub_100004890(v12, &qword_100094E50, &qword_100074180);
    v28 = 1;
    v5 = v42;
LABEL_11:
    v39 = v54;
    return (*(v39 + 56))(v55, v28, 1, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_100025B34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_10000388C(&qword_1000958C0, &unk_100074DC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10007297C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  sub_1000129F8(&v22 - v12);
  sub_10007296C();
  sub_10001B20C();
  v14 = sub_100072B1C();
  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);
  if (v14)
  {
    v16 = 1;
    v17 = v23;
  }

  else
  {
    sub_1000274B4(v2, v6);
    type metadata accessor for CPExtraLargeContentView(0);
    sub_100071F3C();
    sub_1000728AC();
    sub_100071F2C();
    v18 = &v6[*(v3 + 36)];
    v19 = v25;
    *v18 = v24;
    *(v18 + 1) = v19;
    *(v18 + 2) = v26;
    v20 = v23;
    sub_100014DEC(v6, v23, &qword_1000958C0, &unk_100074DC0);
    v16 = 0;
    v17 = v20;
  }

  return (*(v4 + 56))(v17, v16, 1, v3);
}

uint64_t sub_100025DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10007223C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = sub_10000388C(&qword_100095A20, &unk_100074F00);
  return sub_100025E0C(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_100025E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CPTitleView(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v27 - v11);
  v13 = type metadata accessor for CPExtraLargeContentView(0);
  v14 = v13[7];
  v15 = v7[10];
  v16 = sub_100071F5C();
  (*(*(v16 - 8) + 16))(v12 + v15, a1 + v14, v16);
  sub_100028780(a1 + v13[8], v12 + v7[11], type metadata accessor for CPTimelineEntry);
  v17 = (a1 + v13[9]);
  v18 = *(v17 + 4);
  v19 = v17[1];
  v33 = *v17;
  v34 = v19;
  v35 = v18;
  sub_10000388C(&qword_1000948F0, qword_100077520);
  sub_10007280C();
  v20 = v29;
  v21 = v30;
  v27 = v32;
  v28 = v31;
  *(v12 + v7[8]) = swift_getKeyPath();
  sub_10000388C(&qword_1000948F8, &qword_1000739B0);
  swift_storeEnumTagMultiPayload();
  *(v12 + v7[9]) = swift_getKeyPath();
  sub_10000388C(&qword_100094900, &qword_1000762D0);
  swift_storeEnumTagMultiPayload();
  *v12 = swift_getKeyPath();
  sub_10000388C(&qword_100094908, &qword_100073A20);
  swift_storeEnumTagMultiPayload();
  v22 = v7[7];
  *(v12 + v22) = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  *(v12 + v7[12]) = a2;
  v23 = v12 + v7[13];
  *v23 = v20;
  *(v23 + 1) = v21;
  v24 = v27;
  *(v23 + 1) = v28;
  *(v23 + 2) = v24;
  sub_100028780(v12, v9, type metadata accessor for CPTitleView);
  *a3 = 0;
  *(a3 + 8) = 0;
  v25 = sub_10000388C(&qword_100095A28, &qword_100074F10);
  sub_100028780(v9, a3 + *(v25 + 48), type metadata accessor for CPTitleView);

  sub_1000287E8(v12, type metadata accessor for CPTitleView);
  return sub_1000287E8(v9, type metadata accessor for CPTitleView);
}

uint64_t sub_100026100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_10000388C(&qword_100095960, &qword_100074E28);
  __chkstk_darwin(v24);
  v4 = (&v24 - v3);
  v5 = sub_1000729DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_100095968, &qword_100074E30);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = a1 + *(type metadata accessor for CPExtraLargeContentView(0) + 32);
  v13 = type metadata accessor for CPTimelineEntry(0);
  if (*(v12 + *(v13 + 32)) == 1 && (sub_1000249E8() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_100095980, &qword_100095960, &qword_100074E28, &protocol conformance descriptor for ZStack<A>);
    v19 = v25;
    sub_10007230C();
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v14 = *(v12 + *(v13 + 20));
  if (v14 >> 62)
  {
    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_10:
      v18 = 1;
      v19 = v25;
LABEL_19:
      v23 = sub_10000388C(&qword_100095970, &qword_100074E38);
      return (*(*(v23 - 8) + 56))(v19, v18, 1, v23);
    }
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    if (*(sub_100072E6C() + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);

    if (*(v16 + 32))
    {
      goto LABEL_8;
    }

LABEL_15:
    v20 = sub_10004D174(0xD00000000000001ELL, 0x8000000100077A90);
    if (v20)
    {
      v17 = v20;
LABEL_17:
      v19 = v25;
      *v4 = sub_1000728AC();
      v4[1] = v21;
      v22 = sub_10000388C(&qword_100095978, &qword_100074E40);
      sub_10002651C(v17, a1, v4 + *(v22 + 44));
      sub_100004C94(v4, v11, &qword_100095960, &qword_100074E28);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_100095980, &qword_100095960, &qword_100074E28, &protocol conformance descriptor for ZStack<A>);
      sub_10007230C();

      sub_100004890(v4, &qword_100095960, &qword_100074E28);
      goto LABEL_18;
    }

LABEL_8:
    sub_1000247E0(v8);
    v17 = sub_10001D980(v8, 1);
    (*(v6 + 8))(v8, v5);
    if (!v17)
    {

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002651C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v106 = a3;
  v4 = sub_10007297C();
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin(v4);
  v101 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v100 = &v82 - v7;
  v103 = sub_1000728BC();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v99 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10000388C(&qword_100095988, &qword_100074E48);
  __chkstk_darwin(v93);
  v90 = (&v82 - v9);
  v97 = sub_10000388C(&qword_100095990, &qword_100074E50);
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v82 - v10;
  v92 = sub_10000388C(&qword_100095998, &unk_100074E58);
  __chkstk_darwin(v92);
  v98 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = &v82 - v13;
  __chkstk_darwin(v14);
  v96 = &v82 - v15;
  v83 = sub_1000729DC();
  v16 = *(v83 - 8);
  __chkstk_darwin(v83);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10007277C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000388C(&qword_100094980, &unk_100073AC0);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v82 - v25;
  v84 = sub_10000388C(&qword_1000959A0, &qword_100074E68);
  __chkstk_darwin(v84);
  v85 = &v82 - v27;
  v86 = sub_10000388C(&qword_1000959A8, &qword_100074E70);
  __chkstk_darwin(v86);
  v29 = &v82 - v28;
  v30 = sub_10000388C(&qword_1000959B0, &qword_100074E78);
  __chkstk_darwin(v30 - 8);
  v89 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v88 = &v82 - v33;
  v34 = a1;
  sub_10007275C();
  (*(v20 + 104))(v22, enum case for Image.ResizingMode.stretch(_:), v19);
  sub_1000727DC();

  v35 = v22;
  v36 = v87;
  (*(v20 + 8))(v35, v19);
  *v26 = sub_1000728AC();
  *(v26 + 1) = v37;
  v38 = sub_10000388C(&qword_100094978, &qword_100074E80);
  sub_10005544C(&v26[*(v38 + 44)], 0.3);

  v39 = &v26[*(v24 + 44)];
  *v39 = 0;
  *(v39 + 4) = 257;
  v40 = *(type metadata accessor for CPExtraLargeContentView(0) + 28);
  sub_1000247E0(v18);
  sub_100022F7C(v36 + v40, v18);
  v42 = v41;
  v43 = *(v16 + 8);
  v44 = v83;
  v43(v18, v83);
  sub_1000247E0(v18);
  sub_100022F7C(v36 + v40, v18);
  v46 = v45;
  v43(v18, v44);
  sub_100071F3C();
  v48 = v47;
  sub_100071F3C();
  v50 = v49;
  sub_1000728AC();
  if (v42 > v46 || v48 > v50)
  {
    sub_100072CEC();
    v51 = sub_10007239C();
    sub_100071E4C();
  }

  sub_100071FFC();
  v52 = v85;
  sub_100014DEC(v26, v85, &qword_100094980, &unk_100073AC0);
  v53 = (v52 + *(v84 + 36));
  v54 = v112;
  v53[4] = v111;
  v53[5] = v54;
  v53[6] = v113;
  v55 = v108;
  *v53 = v107;
  v53[1] = v55;
  v56 = v110;
  v53[2] = v109;
  v53[3] = v56;
  v57 = &v29[*(v86 + 36)];
  v58 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
  v59 = enum case for ColorScheme.light(_:);
  v60 = sub_100071EAC();
  (*(*(v60 - 8) + 104))(v57 + v58, v59, v60);
  *v57 = swift_getKeyPath();
  sub_100014DEC(v52, v29, &qword_1000959A0, &qword_100074E68);
  sub_10002857C();
  v61 = v88;
  sub_10007261C();
  sub_100004890(v29, &qword_1000959A8, &qword_100074E70);
  v62 = sub_10007223C();
  v63 = v90;
  *v90 = v62;
  *(v63 + 8) = 0;
  *(v63 + 16) = 1;
  v64 = sub_10000388C(&qword_1000959C8, &qword_100074EC0);
  sub_1000270BC(v36, v63 + *(v64 + 44));
  sub_100004C3C(&qword_1000959D0, &qword_100095988, &qword_100074E48, &protocol conformance descriptor for VStack<A>);
  v65 = v94;
  sub_1000725AC();
  sub_100004890(v63, &qword_100095988, &qword_100074E48);
  v66 = v100;
  sub_1000129F8(v100);
  v67 = v101;
  sub_10007296C();
  LOBYTE(v59) = sub_10007295C();
  v68 = *(v104 + 8);
  v69 = v67;
  v70 = v105;
  v68(v69, v105);
  v68(v66, v70);
  v71 = v102;
  v72 = &enum case for BlendMode.destinationOut(_:);
  if ((v59 & 1) == 0)
  {
    v72 = &enum case for BlendMode.normal(_:);
  }

  v73 = v99;
  v74 = v103;
  (*(v102 + 104))(v99, *v72, v103);
  v75 = v91;
  (*(v71 + 32))(&v91[*(v92 + 36)], v73, v74);
  (*(v95 + 32))(v75, v65, v97);
  v76 = v96;
  sub_100014DEC(v75, v96, &qword_100095998, &unk_100074E58);
  v77 = v89;
  sub_100004C94(v61, v89, &qword_1000959B0, &qword_100074E78);
  v78 = v98;
  sub_100004C94(v76, v98, &qword_100095998, &unk_100074E58);
  v79 = v106;
  sub_100004C94(v77, v106, &qword_1000959B0, &qword_100074E78);
  v80 = sub_10000388C(&qword_1000959D8, &qword_100074EC8);
  sub_100004C94(v78, v79 + *(v80 + 48), &qword_100095998, &unk_100074E58);
  sub_100004890(v76, &qword_100095998, &unk_100074E58);
  sub_100004890(v61, &qword_1000959B0, &qword_100074E78);
  sub_100004890(v78, &qword_100095998, &unk_100074E58);
  return sub_100004890(v77, &qword_1000959B0, &qword_100074E78);
}

uint64_t sub_1000270BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = type metadata accessor for CPTitleGradientView(0) - 8;
  __chkstk_darwin(v42);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = (&v37 - v5);
  v6 = sub_1000729DC();
  v39 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CPHeaderGradientView(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v37 - v14);
  v16 = type metadata accessor for CPExtraLargeContentView(0);
  v17 = *(v16 + 28);
  sub_1000247E0(v9);
  sub_100022F7C(a1 + v17, v9);
  v19 = v18;
  v38 = *(v7 + 8);
  v38(v9, v6);
  sub_100071F3C();
  v21 = v20 * 0.20625;
  v22 = *(v16 + 32);
  sub_100028780(a1 + v22, v15 + *(v11 + 32), type metadata accessor for CPTimelineEntry);
  *v15 = swift_getKeyPath();
  sub_10000388C(&qword_100094910, &unk_100076340);
  swift_storeEnumTagMultiPayload();
  v23 = (v15 + *(v11 + 28));
  *v23 = v19;
  v23[1] = v21;
  sub_1000247E0(v9);
  sub_100022F7C(a1 + v17, v9);
  v25 = v24;
  v38(v9, v39);
  sub_100071F3C();
  v27 = v26 * 0.4;
  v29 = v41;
  v28 = v42;
  sub_100028780(a1 + v22, v41 + *(v42 + 32), type metadata accessor for CPTimelineEntry);
  *v29 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v30 = (v29 + *(v28 + 28));
  *v30 = v25;
  v30[1] = v27;
  v31 = v40;
  sub_100028780(v15, v40, type metadata accessor for CPHeaderGradientView);
  v32 = v43;
  sub_100028780(v29, v43, type metadata accessor for CPTitleGradientView);
  v33 = v44;
  sub_100028780(v31, v44, type metadata accessor for CPHeaderGradientView);
  v34 = sub_10000388C(&qword_1000959E0, &unk_100074ED0);
  v35 = v33 + *(v34 + 48);
  *v35 = 0;
  *(v35 + 8) = 0;
  sub_100028780(v32, v33 + *(v34 + 64), type metadata accessor for CPTitleGradientView);
  sub_1000287E8(v29, type metadata accessor for CPTitleGradientView);
  sub_1000287E8(v15, type metadata accessor for CPHeaderGradientView);
  sub_1000287E8(v32, type metadata accessor for CPTitleGradientView);
  return sub_1000287E8(v31, type metadata accessor for CPHeaderGradientView);
}

uint64_t sub_1000274B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = sub_10000388C(&qword_1000958C8, &unk_100076370);
  __chkstk_darwin(v24);
  v4 = (&v24 - v3);
  v5 = sub_1000729DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000388C(&qword_1000958D0, &unk_100074DD0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = a1 + *(type metadata accessor for CPExtraLargeContentView(0) + 32);
  v13 = type metadata accessor for CPTimelineEntry(0);
  if (*(v12 + *(v13 + 32)) == 1 && (sub_1000249E8() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    sub_100004C3C(&qword_1000958E8, &qword_1000958C8, &unk_100076370, &protocol conformance descriptor for ZStack<A>);
    v19 = v25;
    sub_10007230C();
LABEL_18:
    v18 = 0;
    goto LABEL_19;
  }

  v14 = *(v12 + *(v13 + 20));
  if (v14 >> 62)
  {
    result = sub_100072EDC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_10:
      v18 = 1;
      v19 = v25;
LABEL_19:
      v23 = sub_10000388C(&qword_1000958D8, &unk_100076380);
      return (*(*(v23 - 8) + 56))(v19, v18, 1, v23);
    }
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = sub_100072E6C();
    if (*(v16 + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);

    if (*(v16 + 32))
    {
      goto LABEL_8;
    }

LABEL_15:
    v20 = sub_10004D174(0xD00000000000001ELL, 0x8000000100077A90);
    if (v20)
    {
      v17 = v20;
LABEL_17:
      v19 = v25;
      *v4 = sub_1000728AC();
      v4[1] = v21;
      v22 = sub_10000388C(&qword_1000958E0, &unk_100074DE0);
      sub_1000278D4(v17, a1, v16, v4 + *(v22 + 44));
      sub_100004C94(v4, v11, &qword_1000958C8, &unk_100076370);
      swift_storeEnumTagMultiPayload();
      sub_100004C3C(&qword_1000958E8, &qword_1000958C8, &unk_100076370, &protocol conformance descriptor for ZStack<A>);
      sub_10007230C();

      sub_100004890(v4, &qword_1000958C8, &unk_100076370);
      goto LABEL_18;
    }

LABEL_8:
    sub_1000247E0(v8);
    v17 = sub_10001D980(v8, 1);
    (*(v6 + 8))(v8, v5);
    if (!v17)
    {

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000278D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v63 = sub_10000388C(&qword_1000958F0, &unk_100076390);
  __chkstk_darwin(v63);
  v8 = (&v55 - v7);
  v56 = sub_10000388C(&qword_100095228, &qword_1000745D0);
  __chkstk_darwin(v56);
  KeyPath = &v55 - v9;
  v58 = sub_10000388C(&qword_1000958F8, &unk_1000763A0);
  __chkstk_darwin(v58);
  v61 = &v55 - v10;
  v64 = sub_10000388C(&qword_100095900, &unk_100074DF0);
  __chkstk_darwin(v64);
  v60 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v55 - v13;
  v14 = sub_10000388C(&qword_100095908, &unk_1000763B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v20 = sub_10007277C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_10007275C();
  (*(v21 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v20);
  v25 = sub_1000727DC();

  (*(v21 + 8))(v23, v20);
  sub_10007290C();
  v27 = v26;
  v29 = v28;
  v30 = a2 + *(type metadata accessor for CPExtraLargeContentView(0) + 32);
  v31 = type metadata accessor for CPTimelineEntry(0);
  if (*(v30 + v31[6]) == 1 && (*(v30 + v31[7]) & 1) == 0 && (*(v30 + v31[8]) & 1) == 0 && *(v30 + v31[9]) == 1)
  {
    v32 = *(v30 + v31[5]);
    if (v32 >> 62)
    {
      if (sub_100072EDC() >= 1)
      {
        goto LABEL_7;
      }
    }

    else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_7:
      v33 = KeyPath;
      sub_10007287C();
      v34 = sub_1000723AC();
      *(v33 + *(sub_10000388C(&qword_100095220, &unk_1000763C0) + 36)) = v34;
      sub_1000726CC();
      v35 = sub_1000726FC();

      v36 = sub_1000723AC();
      v37 = v57;
      v38 = v33 + *(v56 + 36);
      *v38 = v35;
      *(v38 + 8) = v36;
      v39 = *(v37 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
      if (!v39)
      {
        v40 = *(v37 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
        if (v40)
        {
          v41 = v40;
        }

        else
        {
          [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.431372549 blue:0.62745098 alpha:1.0];
        }
      }

      v42 = v39;
      sub_1000726AC();
      v43 = sub_1000726FC();

      v44 = sub_1000723AC();
      v45 = v61;
      sub_100014DEC(v33, v61, &qword_100095228, &qword_1000745D0);
      v46 = v45 + *(v58 + 36);
      *v46 = v43;
      *(v46 + 8) = v44;
      KeyPath = swift_getKeyPath();
      v47 = v60;
      v48 = &v60[*(v64 + 36)];
      v49 = *(sub_10000388C(&qword_100094988, &unk_1000763D0) + 28);
      v50 = enum case for ColorScheme.light(_:);
      v51 = sub_100071EAC();
      (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
      *v48 = KeyPath;
      sub_100014DEC(v45, v47, &qword_1000958F8, &unk_1000763A0);
      v52 = v62;
      sub_100014DEC(v47, v62, &qword_100095900, &unk_100074DF0);
      sub_100004C94(v52, v8, &qword_100095900, &unk_100074DF0);
      swift_storeEnumTagMultiPayload();
      sub_100028240();
      sub_10007230C();
      sub_100004890(v52, &qword_100095900, &unk_100074DF0);
      goto LABEL_16;
    }
  }

  if (qword_1000946E0 != -1)
  {
    swift_once();
  }

  *v8 = qword_100099978;
  swift_storeEnumTagMultiPayload();
  sub_100028240();

  sub_10007230C();
LABEL_16:
  sub_100004C94(v19, v16, &qword_100095908, &unk_1000763B0);
  *a4 = v25;
  *(a4 + 8) = xmmword_100074C00;
  *(a4 + 24) = 0x3FF0000000000000;
  *(a4 + 32) = v27;
  *(a4 + 40) = v29;
  v53 = sub_10000388C(&qword_100095958, &qword_100074E20);
  sub_100004C94(v16, a4 + *(v53 + 48), &qword_100095908, &unk_1000763B0);

  sub_100004890(v19, &qword_100095908, &unk_1000763B0);
  sub_100004890(v16, &qword_100095908, &unk_1000763B0);
}

uint64_t sub_100028028()
{
  v1 = sub_10007236C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000388C(&qword_100095860, &qword_100074C88);
  __chkstk_darwin(v5);
  v7 = (&v11 - v6);
  *v7 = sub_1000728AC();
  v7[1] = v8;
  v9 = sub_10000388C(&qword_100095868, &qword_100074C90);
  sub_100024B40(v0, (v7 + *(v9 + 44)));
  sub_10007235C();
  sub_1000728AC();
  sub_100004C3C(&qword_100095870, &qword_100095860, &qword_100074C88, &protocol conformance descriptor for ZStack<A>);
  sub_10007265C();
  (*(v2 + 8))(v4, v1);
  return sub_100004890(v7, &qword_100095860, &qword_100074C88);
}

unint64_t sub_100028240()
{
  result = qword_100095910;
  if (!qword_100095910)
  {
    sub_1000038D4(&qword_100095900, &unk_100074DF0);
    sub_1000282F8();
    sub_100004C3C(&qword_1000949B8, &qword_100094988, &unk_1000763D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095910);
  }

  return result;
}

unint64_t sub_1000282F8()
{
  result = qword_100095918;
  if (!qword_100095918)
  {
    sub_1000038D4(&qword_1000958F8, &unk_1000763A0);
    sub_1000283B0();
    sub_100004C3C(&qword_100095948, &qword_100095950, &unk_100074E10, &protocol conformance descriptor for _OverlayStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095918);
  }

  return result;
}

unint64_t sub_1000283B0()
{
  result = qword_100095920;
  if (!qword_100095920)
  {
    sub_1000038D4(&qword_100095228, &qword_1000745D0);
    sub_100028468();
    sub_100004C3C(&qword_100095948, &qword_100095950, &unk_100074E10, &protocol conformance descriptor for _OverlayStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095920);
  }

  return result;
}

unint64_t sub_100028468()
{
  result = qword_100095928;
  if (!qword_100095928)
  {
    sub_1000038D4(&qword_100095930, &unk_100074E00);
    sub_100028520();
    sub_100004C3C(&qword_100095940, &qword_100095220, &unk_1000763C0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095928);
  }

  return result;
}

unint64_t sub_100028520()
{
  result = qword_100095938;
  if (!qword_100095938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095938);
  }

  return result;
}

unint64_t sub_10002857C()
{
  result = qword_1000959B8;
  if (!qword_1000959B8)
  {
    sub_1000038D4(&qword_1000959A8, &qword_100074E70);
    sub_100028634();
    sub_100004C3C(&qword_1000949B8, &qword_100094988, &unk_1000763D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000959B8);
  }

  return result;
}

unint64_t sub_100028634()
{
  result = qword_1000959C0;
  if (!qword_1000959C0)
  {
    sub_1000038D4(&qword_1000959A0, &qword_100074E68);
    sub_100004B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000959C0);
  }

  return result;
}

unint64_t sub_1000286C8()
{
  result = qword_100095A08;
  if (!qword_100095A08)
  {
    sub_1000038D4(&qword_1000959E8, &unk_100077500);
    sub_100004C3C(&qword_100095A10, &qword_100095A18, &unk_100077510, &protocol conformance descriptor for Link<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095A08);
  }

  return result;
}

uint64_t sub_100028780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000287E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100028848()
{
  sub_1000038D4(&qword_100095860, &qword_100074C88);
  sub_100004C3C(&qword_100095870, &qword_100095860, &qword_100074C88, &protocol conformance descriptor for ZStack<A>);
  return swift_getOpaqueTypeConformance2();
}

void sub_1000288F4()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    v7 = 0xE900000000000072;
    v5 = 0x6567676F6C637767;
    goto LABEL_5;
  }

  v3 = [v0 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = sub_100072B3C();
    v7 = v6;

LABEL_5:
    qword_100095A30 = v5;
    *algn_100095A38 = v7;
    return;
  }

  __break(1u);
}

uint64_t sub_100028A5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100071E7C();
  sub_100028B14(v5, a2);
  sub_100007DE8(v5, a2);
  if (qword_1000946E8 != -1)
  {
    swift_once();
  }

  return sub_100071E6C();
}

uint64_t *sub_100028B14(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100028B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000388C(&qword_100095A40, &qword_100074F18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = sub_10000388C(&qword_100095A48, &unk_100074F20);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100028CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000388C(&qword_100095A40, &qword_100074F18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_10000388C(&qword_100095A48, &unk_100074F20);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for DynamicTypeFont(uint64_t a1)
{
  result = qword_100095AA8;
  if (!qword_100095AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100028E70(uint64_t a1)
{
  sub_100028F9C(319, &qword_100095AB8, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100028F4C();
    if (v2 <= 0x3F)
    {
      sub_100028F9C(319, &unk_100095AC8, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100028F4C()
{
  if (!qword_100095AC0)
  {
    v0 = sub_100072D6C();
    if (!v1)
    {
      atomic_store(v0, &qword_100095AC0);
    }
  }
}

void sub_100028F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10007222C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100029018@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007218C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000388C(&qword_100095390, &qword_100074770);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100004C94(v2, &v14 - v9, &qword_100095390, &qword_100074770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007222C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_100072CEC();
    v13 = sub_10007239C();
    sub_100071E4C();

    sub_10007217C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100029218(uint64_t a1)
{
  v3 = sub_10000388C(&qword_100095B10, &qword_100074FD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_10000388C(&qword_100095A48, &unk_100074F20);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_10007222C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  if (!a1)
  {
    return 0;
  }

  v16 = type metadata accessor for DynamicTypeFont(0);
  sub_100004C94(v1 + *(v16 + 24), v8, &qword_100095A48, &unk_100074F20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_100004890(v8, &qword_100095A48, &unk_100074F20);
LABEL_9:
    v17 = sub_1000724CC();

    return v17;
  }

  (*(v10 + 32))(v15, v8, v9);

  sub_100029018(v12);
  v18 = sub_100029AEC(v12, v15);
  v19 = *(v10 + 8);
  v19(v12, v9);
  if (!v18)
  {
    v19(v15, v9);
    goto LABEL_9;
  }

  sub_10007240C();
  v20 = sub_10007242C();

  if (v20 & 1) != 0 || (, sub_10007244C(), v21 = sub_10007242C(), , , (v21) || (, sub_1000724AC(), v22 = sub_10007242C(), , , (v22) || (, sub_1000724BC(), v23 = sub_10007242C(), , , (v23) || (, sub_10007253C(), v24 = sub_10007242C(), , , (v24) || (, sub_10007241C(), v25 = sub_10007242C(), , , (v25) || (, sub_10007243C(), v28 = sub_10007242C(), , , (v28) || (, sub_1000724EC(), v29 = sub_10007242C(), , , (v29) || (, sub_10007252C(), v30 = sub_10007242C(), , , (v30) || (, sub_1000724FC(), v31 = sub_10007242C(), , , (v31) || (, sub_10007251C(), v32 = sub_10007242C(), , , (v32))
  {
    v26 = sub_10007245C();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    sub_10007249C();
    sub_100004890(v5, &qword_100095B10, &qword_100074FD8);
  }

  else
  {
  }

  v17 = sub_1000724CC();

  v19(v15, v9);
  return v17;
}

uint64_t sub_100029A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100029218(*(v3 + *(a2 + 20)));
  KeyPath = swift_getKeyPath();
  v8 = sub_10000388C(&qword_100095B00, &qword_100074FC8);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = sub_10000388C(&qword_100095B08, &qword_100074FD0);
  v10 = (a3 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v6;
  return result;
}

BOOL sub_100029AEC(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_10007222C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 >= v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 >= v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 >= v17;
}

unint64_t sub_100029F08()
{
  result = qword_100095B18;
  if (!qword_100095B18)
  {
    sub_1000038D4(&qword_100095B08, &qword_100074FD0);
    sub_100004C3C(&qword_100095B20, &qword_100095B00, &qword_100074FC8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100004C3C(&qword_100095B28, &qword_100095B30, &unk_100074FE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100095B18);
  }

  return result;
}

CGImage *sub_100029FEC(double a1, double a2, double a3, double a4, double a5, double a6)
{
  [v6 size];
  v14 = v13;
  [v6 size];
  v16 = v15;
  result = [v6 CGImage];
  if (result)
  {
    v18 = v14 / a5;
    if (v14 / a5 <= v16 / a6)
    {
      v18 = v16 / a6;
    }

    v22.size.height = v18 * a4;
    v22.size.width = v18 * a3;
    v22.origin.y = v18 * a2;
    v22.origin.x = v18 * a1;
    v19 = result;
    v20 = CGImageCreateWithImageInRect(result, v22);

    if (v20)
    {
      v21 = [objc_allocWithZone(UIImage) initWithCGImage:v20];

      return v21;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002A0E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a1;
  v7 = type metadata accessor for WidgetCreationAttempt(0);
  v102 = *(v7 - 8);
  v103 = v7;
  __chkstk_darwin(v7);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v87 - v11;
  v12 = sub_100071C9C();
  v106 = *(v12 - 8);
  __chkstk_darwin(v12);
  v96 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v100 = &v87 - v15;
  __chkstk_darwin(v16);
  v104 = &v87 - v17;
  __chkstk_darwin(v18);
  v105 = &v87 - v19;
  v20 = sub_1000729DC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v101 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v87 - v24;
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v26 = sub_100071E7C();
  v27 = sub_100007DE8(v26, qword_100099998);
  v28 = *(v21 + 16);
  v98 = a3;
  v92 = v28;
  v93 = v21 + 16;
  v28(v25, a3, v20);

  v97 = v27;
  v29 = sub_100071E5C();
  v30 = sub_100072CFC();

  v31 = os_log_type_enabled(v29, v30);
  v89 = v9;
  v99 = a2;
  v94 = v20;
  v95 = v21;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v91 = v12;
    v109[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_100034D20(v107, a2, v109);
    *(v32 + 12) = 2080;
    sub_10003ACC8(&qword_100094E70, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v34 = sub_100072FEC();
    v36 = v35;
    v37 = *(v21 + 8);
    v37(v25, v20);
    v38 = sub_100034D20(v34, v36, v109);

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Fetch last widget attempt for %s, widgetFamily: %s", v32, 0x16u);
    swift_arrayDestroy();
    v12 = v91;
  }

  else
  {

    v37 = *(v21 + 8);
    v37(v25, v20);
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultManager];
  v41 = [v40 URLsForDirectory:13 inDomains:1];

  v42 = sub_100072C4C();
  v43 = v101;
  if (*(v42 + 16))
  {
    v88 = v37;
    v91 = a4;
    v44 = v42 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v87 = *(v106 + 16);
    v87(v105, v44, v12);

    v45 = v99;
    sub_100071C4C();
    v109[0] = 0;
    v109[1] = 0xE000000000000000;
    sub_100072E4C(20);

    strcpy(v109, "last_attempt_");
    HIWORD(v109[1]) = -4864;
    v46 = v98;
    v108 = sub_1000729CC();
    v110._countAndFlagsBits = sub_100072FEC();
    sub_100072B7C(v110);

    v111._countAndFlagsBits = 0x6E6F736A2ELL;
    v111._object = 0xE500000000000000;
    sub_100072B7C(v111);
    v47 = v100;
    sub_100071C5C();

    v48 = [v39 defaultManager];
    sub_100071C7C();
    v49 = sub_100072B2C();

    v50 = [v48 fileExistsAtPath:v49];

    if (v50)
    {
      v51 = v12;
      v52 = sub_100071CAC();
      v54 = v53;
      sub_100071BBC();
      swift_allocObject();
      sub_100071BAC();
      sub_10003ACC8(&qword_100095C98, type metadata accessor for WidgetCreationAttempt, &unk_1000751BC);
      v55 = v90;
      sub_100071B9C();

      v76 = v89;
      sub_10003B114(v55, v89, type metadata accessor for WidgetCreationAttempt);
      v77 = sub_100071E5C();
      v78 = sub_100072CFC();
      if (os_log_type_enabled(v77, v78))
      {
        v80 = v76;
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v109[0] = v82;
        *v81 = 136315138;
        v107 = sub_10002BF9C();
        v84 = v83;
        sub_10003B17C(v80, type metadata accessor for WidgetCreationAttempt);
        v85 = sub_100034D20(v107, v84, v109);

        *(v81 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v77, v78, "Decoded widget attempt -> %s", v81, 0xCu);
        sub_100007F50(v82);

        sub_1000086B8(v52, v54);

        v86 = *(v106 + 8);
        v86(v100, v51);
      }

      else
      {
        sub_1000086B8(v52, v54);

        sub_10003B17C(v76, type metadata accessor for WidgetCreationAttempt);
        v86 = *(v106 + 8);
        v86(v47, v51);
      }

      v86(v104, v51);
      v86(v105, v51);
      a4 = v91;
      sub_10003BB38(v55, v91, type metadata accessor for WidgetCreationAttempt);
      v74 = 0;
    }

    else
    {
      v56 = v94;
      v92(v43, v46, v94);
      v57 = v96;
      v87(v96, v47, v12);

      v58 = sub_100071E5C();
      v59 = sub_100072CFC();

      v60 = v12;
      if (os_log_type_enabled(v58, v59))
      {
        v61 = v56;
        v62 = swift_slowAlloc();
        v109[0] = swift_slowAlloc();
        *v62 = 136315650;
        *(v62 + 4) = sub_100034D20(v107, v45, v109);
        *(v62 + 12) = 2080;
        sub_10003ACC8(&qword_100094E70, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
        v63 = v59;
        v64 = sub_100072FEC();
        v66 = v65;
        v88(v43, v61);
        v67 = sub_100034D20(v64, v66, v109);

        *(v62 + 14) = v67;
        *(v62 + 22) = 2080;
        v68 = sub_100071C7C();
        v70 = v69;
        v71 = *(v106 + 8);
        v71(v57, v60);
        v72 = sub_100034D20(v68, v70, v109);

        *(v62 + 24) = v72;
        _os_log_impl(&_mh_execute_header, v58, v63, "Last widget attempt does not exist for %s, widgetFamily: %s at %s", v62, 0x20u);
        swift_arrayDestroy();

        v71(v100, v60);
        v71(v104, v60);
        v71(v105, v60);
      }

      else
      {

        v73 = *(v106 + 8);
        v73(v57, v60);
        v88(v43, v56);
        v73(v47, v60);
        v73(v104, v60);
        v73(v105, v60);
      }

      v74 = 1;
      a4 = v91;
    }
  }

  else
  {

    v74 = 1;
  }

  return (*(v102 + 56))(a4, v74, 1, v103);
}

uint64_t sub_10002AE5C()
{
  v1 = sub_100071C9C();
  v102 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v97 = &v94 - v5;
  __chkstk_darwin(v6);
  v96 = &v94 - v7;
  __chkstk_darwin(v8);
  v10 = &v94 - v9;
  __chkstk_darwin(v11);
  v101 = &v94 - v12;
  v13 = type metadata accessor for WidgetCreationAttempt(0);
  __chkstk_darwin(v13);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v94 - v17;
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v95 = v3;
  v19 = sub_100071E7C();
  v20 = sub_100007DE8(v19, qword_100099998);
  sub_10003B114(v0, v18, type metadata accessor for WidgetCreationAttempt);
  v98 = v0;
  sub_10003B114(v0, v15, type metadata accessor for WidgetCreationAttempt);
  v99 = v20;
  v21 = sub_100071E5C();
  v22 = sub_100072CFC();
  v23 = os_log_type_enabled(v21, v22);
  v100 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v94 = v1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v104[0] = v26;
    *v25 = 136315394;
    v27 = &v18[*(v13 + 28)];
    v28 = v13;
    v29 = *v27;
    v30 = v27[1];

    sub_10003B17C(v18, type metadata accessor for WidgetCreationAttempt);
    v31 = sub_100034D20(v29, v30, v104);
    v13 = v28;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2048;
    v32 = *&v15[*(v28 + 32)];
    sub_10003B17C(v15, type metadata accessor for WidgetCreationAttempt);
    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Write widget creation attempt for %s, widgetFamily: %ld", v25, 0x16u);
    sub_100007F50(v26);
    v10 = v100;

    v1 = v94;
  }

  else
  {
    sub_10003B17C(v15, type metadata accessor for WidgetCreationAttempt);

    sub_10003B17C(v18, type metadata accessor for WidgetCreationAttempt);
  }

  v33 = objc_opt_self();
  v34 = [v33 defaultManager];
  v35 = [v34 URLsForDirectory:13 inDomains:1];

  v36 = sub_100072C4C();
  if (!*(v36 + 16))
  {
  }

  v37 = v36 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
  v94 = *(v102 + 16);
  v94(v101, v37, v1);

  v38 = v98;
  sub_100071C4C();
  v39 = [v33 defaultManager];
  sub_100071C7C();
  v40 = sub_100072B2C();

  v41 = [v39 fileExistsAtPath:v40];

  if (v41)
  {
    goto LABEL_14;
  }

  v42 = v96;
  v94(v96, v10, v1);
  v43 = sub_100071E5C();
  v44 = sub_100072CFC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = v1;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v104[0] = v47;
    *v46 = 136315138;
    sub_10003ACC8(&qword_100094C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v48 = sub_100072FEC();
    v49 = v42;
    v50 = v48;
    v52 = v51;
    v96 = *(v102 + 8);
    (v96)(v49, v45);
    v53 = sub_100034D20(v50, v52, v104);

    *(v46 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v43, v44, "Creating directory for app metadata at %s", v46, 0xCu);
    sub_100007F50(v47);
    v10 = v100;

    v1 = v45;
  }

  else
  {

    v96 = *(v102 + 8);
    (v96)(v42, v1);
  }

  v55 = [v33 defaultManager];
  sub_100071C3C(v56);
  v58 = v57;
  v104[0] = 0;
  v59 = [v55 createDirectoryAtURL:v57 withIntermediateDirectories:1 attributes:0 error:v104];

  if (v59)
  {
    v60 = v104[0];
    v38 = v98;
LABEL_14:
    v104[0] = 0;
    v104[1] = 0xE000000000000000;
    sub_100072E4C(20);

    strcpy(v104, "last_attempt_");
    HIWORD(v104[1]) = -4864;
    v103 = *(v38 + *(v13 + 32));
    v105._countAndFlagsBits = sub_100072FEC();
    sub_100072B7C(v105);

    v106._countAndFlagsBits = 0x6E6F736A2ELL;
    v106._object = 0xE500000000000000;
    sub_100072B7C(v106);
    v61 = v97;
    sub_100071C5C();

    sub_100071BEC();
    swift_allocObject();
    sub_100071BDC();
    sub_10003ACC8(&qword_100095C90, type metadata accessor for WidgetCreationAttempt, &unk_1000751E4);
    v62 = sub_100071BCC();
    v64 = v63;

    sub_100071CDC();
    v77 = v95;
    v94(v95, v61, v1);
    v78 = sub_100071E5C();
    v79 = sub_100072CFC();
    if (os_log_type_enabled(v78, v79))
    {
      v81 = v1;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = v102;
      v99 = v83;
      v104[0] = v83;
      *v82 = 136315138;
      sub_10003ACC8(&qword_100094C00, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v85 = sub_100072FEC();
      v86 = v77;
      v87 = v85;
      v89 = v88;
      v90 = *(v84 + 8);
      v90(v86, v81);
      v91 = sub_100034D20(v87, v89, v104);

      *(v82 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v78, v79, "Wrote widget creation attempt to %s", v82, 0xCu);
      sub_100007F50(v99);

      sub_1000086B8(v62, v64);

      v90(v97, v81);
      v90(v100, v81);
      return (v90)(v101, v81);
    }

    else
    {
      sub_1000086B8(v62, v64);

      v92 = v77;
      v93 = *(v102 + 8);
      v93(v92, v1);
      v93(v61, v1);
      v93(v100, v1);
      return (v93)(v101, v1);
    }
  }

  v65 = v104[0];
  v66 = sub_100071C1C();

  swift_willThrow();
  swift_errorRetain();
  v67 = sub_100071E5C();
  v68 = sub_100072CFC();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = v1;
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v104[0] = v71;
    *v70 = 136315138;
    v103 = v66;
    swift_errorRetain();
    sub_10000388C(&qword_100094BF8, qword_100073CB0);
    v72 = sub_100072B4C();
    v74 = sub_100034D20(v72, v73, v104);

    *(v70 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v67, v68, "Unable to create metadata directory %s.", v70, 0xCu);
    sub_100007F50(v71);

    v75 = v96;
    (v96)(v10, v69);
    return v75(v101, v69);
  }

  else
  {

    v76 = v96;
    (v96)(v10, v1);
    return v76(v101, v1);
  }
}

void sub_10002BBA0(unint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100072EDC())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_100072E6C();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_10003464C(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10002BCA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000946F0 != -1)
  {
    swift_once();
  }

  v6 = sub_100071E7C();
  sub_100007DE8(v6, qword_100099980);
  v7 = sub_100071E5C();
  v8 = sub_100072CFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetchActivityFeedData...", v9, 2u);
  }

  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = a1;
  v10[4] = a2;

  v11 = sub_10006CEA0();
  if (v11)
  {
    v13 = v11;
    v14 = [objc_opt_self() proxyForPlayer:v11];
    v15 = [v14 utilityServicePrivate];

    v16 = swift_allocObject();
    v16[2] = v3;
    v16[3] = sub_100034C30;
    v16[4] = v10;
    v20[4] = sub_10000F5D4;
    v20[5] = v16;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10002CE08;
    v20[3] = &unk_100092660;
    v17 = _Block_copy(v20);

    [v15 getWidgetStoreBagValueWithHandler:v17];

    _Block_release(v17);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100038D90(86400, 0xD000000000000011, 0x8000000100077AD0, 0x7974697669746341, 0xEC00000064656546, v12);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;

    sub_100033C64(sub_10003908C, v19);
  }
}

uint64_t sub_10002BF9C()
{
  sub_100072E4C(95);
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  v5._object = 0x8000000100077CC0;
  sub_100072B7C(v5);
  sub_100071D4C();
  sub_10003ACC8(&qword_100095C28, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v6._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v6);

  v7._object = 0x8000000100077CE0;
  v7._countAndFlagsBits = 0xD000000000000011;
  sub_100072B7C(v7);
  v1 = type metadata accessor for WidgetCreationAttempt(0);
  if (*(v0 + *(v1 + 20)))
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 20)))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_100072B7C(v2);

  v8._countAndFlagsBits = 0x547972746572202CLL;
  v8._object = 0xEC0000003A656D69;
  sub_100072B7C(v8);
  v9._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v9);

  v10._countAndFlagsBits = 0x6568636163202C73;
  v10._object = 0xEB000000003A4449;
  sub_100072B7C(v10);
  sub_100072B7C(*(v0 + *(v1 + 28)));
  v11._countAndFlagsBits = 0x746567646977202CLL;
  v11._object = 0xEF3A796C696D6146;
  sub_100072B7C(v11);
  v12._countAndFlagsBits = sub_100072FEC();
  sub_100072B7C(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  sub_100072B7C(v13);
  return 0;
}

Swift::Int sub_10002C204()
{
  v1 = *v0;
  sub_10007303C();
  sub_10007304C(v1);
  return sub_10007305C();
}

Swift::Int sub_10002C278(uint64_t a1)
{
  v2 = *v1;
  sub_10007303C();
  sub_10007304C(v2);
  return sub_10007305C();
}

uint64_t sub_10002C2BC()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6D69547972746572;
  v4 = 0x44496568636163;
  if (v1 != 3)
  {
    v4 = 0x6146746567646977;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x646944726F727265;
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

uint64_t sub_10002C368@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100039148(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10002C3A8(uint64_t a1)
{
  v2 = sub_10003C17C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C3E4(uint64_t a1)
{
  v2 = sub_10003C17C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002C420(void *a1)
{
  v3 = sub_10000388C(&qword_100095DE0, &qword_100075210);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10003C138(a1, a1[3]);
  sub_10003C17C();
  sub_10007307C();
  v8[15] = 0;
  sub_100071D4C();
  sub_10003ACC8(&qword_100095C18, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100072FDC();
  if (!v1)
  {
    type metadata accessor for WidgetCreationAttempt(0);
    v8[14] = 1;
    sub_100072FBC();
    v8[13] = 2;
    sub_100072FCC();
    v8[12] = 3;
    sub_100072FAC();
    v8[11] = 4;
    sub_100072FCC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10002C664@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_100071D4C();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v23 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000388C(&qword_100095DF0, &qword_100075218);
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for WidgetCreationAttempt(0);
  __chkstk_darwin(v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C138(a1, a1[3]);
  sub_10003C17C();
  sub_10007306C();
  if (v2)
  {
    return sub_100007F50(a1);
  }

  v12 = v20;
  v28 = 0;
  sub_10003ACC8(&qword_100095C20, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100072F8C();
  (*(v12 + 32))(v11, v23, v4);
  v27 = 1;
  v11[v9[5]] = sub_100072F6C() & 1;
  v26 = 2;
  *&v11[v9[6]] = sub_100072F7C();
  v25 = 3;
  v13 = sub_100072F5C();
  v14 = &v11[v9[7]];
  *v14 = v13;
  v14[1] = v15;
  v24 = 4;
  v16 = sub_100072F7C();
  (*(v21 + 8))(v8, v22);
  *&v11[v9[8]] = v16;
  sub_10003B114(v11, v19, type metadata accessor for WidgetCreationAttempt);
  sub_100007F50(a1);
  return sub_10003B17C(v11, type metadata accessor for WidgetCreationAttempt);
}

Swift::Int sub_10002CAE0()
{
  sub_10007303C();
  sub_10007304C(0);
  return sub_10007305C();
}

Swift::Int sub_10002CB4C(uint64_t a1)
{
  sub_10007303C();
  sub_10007304C(0);
  return sub_10007305C();
}

Class sub_10002CB8C()
{
  sub_10000F74C(0, &qword_100095C88, NSNumber_ptr);
  result = sub_100072D5C(20).super.super.isa;
  qword_100095B38 = result;
  return result;
}

uint64_t sub_10002CBD4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, __n128))
{
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v9 = sub_100071E7C();
  sub_100007DE8(v9, qword_1000999C8);
  swift_errorRetain();
  v10 = a2;
  v11 = a3;
  v12 = sub_100071E5C();
  v13 = sub_100072CFC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412802;
    if (a1)
    {
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v14 + 4) = v16;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v17;
    v15[1] = v10;
    *(v14 + 22) = 2112;
    *(v14 + 24) = v11;
    v15[2] = v11;
    v18 = v10;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "activityFeedStoreBagValue error %@, activityFeedWidgetTTL %@, activityFeedWidgetLivePreview %@", v14, 0x20u);
    sub_10000388C(&qword_100095BD8, &qword_100075090);
    swift_arrayDestroy();
  }

  if ([v10 integerValue])
  {
    v20 = [v10 integerValue];
  }

  else
  {
    v20 = 86400;
  }

  [v11 doubleValue];
  v21 = v22.n128_f64[0];
  v22.n128_u64[0] = 1.0;
  if (v21 != 0.0)
  {
    [v11 doubleValue];
  }

  return a5(v20, v22);
}

void sub_10002CE08(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v10 = a3;
  v9 = a4;
  v7(a2, v10, v9);
}

uint64_t sub_10002CEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v23 = a5;
  v10 = sub_1000729DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a4, v10, v13);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  (*(v11 + 32))(v17 + v15, v14, v10);
  v18 = (v17 + v16);
  v19 = v23;
  *v18 = v22;
  v18[1] = a2;
  v20 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v19;
  v20[1] = a6;

  sub_10003930C(0xD000000000000020, 0x8000000100077B60, sub_10003ADE4, v17);
}

uint64_t sub_10002D05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7, __n128 a8)
{
  sub_100038D90(a1, 0xD000000000000014, 0x8000000100077B90, 0x65756E69746E6F43, 0xEF676E6979616C50, a8);

  sub_1000397D8(a3, a4, a5, a2, a6, a7);
}

uint64_t sub_10002D114(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned int (*a7)(char *, uint64_t, uint64_t), unint64_t a8)
{
  v181 = a6;
  v178 = a4;
  v13 = sub_10000388C(&qword_100095C40, &qword_1000750B8);
  __chkstk_darwin(v13 - 8);
  v180 = &v165 - v14;
  v188 = type metadata accessor for AppMetadata(0);
  v182 = *(v188 - 8);
  __chkstk_darwin(v188);
  v185 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v184 = &v165 - v17;
  __chkstk_darwin(v18);
  v183 = &v165 - v19;
  v20 = sub_1000729DC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v23 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v27 = &v165 - v26;
  v189 = a1;
  if (a1 >> 62)
  {
    goto LABEL_109;
  }

  v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
LABEL_110:
    if (qword_1000946F8 != -1)
    {
      goto LABEL_129;
    }

    goto LABEL_111;
  }

  while (2)
  {
    v29 = *(v21 + 16);
    v167 = v21 + 16;
    v166 = v29;
    (v29)(v27, a5, v20, v25);
    v30 = (*(v21 + 88))(v27, v20);
    v175 = v20;
    v174 = a3;
    v173 = a8;
    v172 = a7;
    v171 = a5;
    v170 = v21;
    v169 = v23;
    v168 = v22;
    if (v30 == enum case for WidgetFamily.systemSmall(_:))
    {
      v31 = 3;
    }

    else if (v30 == enum case for WidgetFamily.systemMedium(_:))
    {
      v31 = 6;
    }

    else if (v30 == enum case for WidgetFamily.systemLarge(_:))
    {
      v31 = 8;
    }

    else
    {
      if (v30 != enum case for WidgetFamily.systemExtraLarge(_:))
      {
        (*(v21 + 8))(v27, v20);
      }

      v31 = 14;
    }

    v177 = v31;
    a5 = 0;
    v21 = v189;
    v190 = (v189 & 0xFFFFFFFFFFFFFF8);
    v191 = v189 & 0xC000000000000001;
    v22 = (v189 + 32);
    v195 = &_swiftEmptyArrayStorage;
    a3 = 40;
    do
    {
      if (v191)
      {
        v32 = sub_100072E6C();
      }

      else
      {
        if (a5 >= v190[2])
        {
          goto LABEL_107;
        }

        v32 = *&v22[8 * a5];
      }

      v27 = v32;
      if (__OFADD__(a5++, 1))
      {
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v23 = v28;
      v34 = [v32 compatiblePlatforms];
      v35 = sub_100072CAC();

      a8 = [objc_opt_self() currentPlatformServerString];
      a7 = sub_100072B3C();
      v20 = v36;

      v193[0] = a7;
      v193[1] = v20;
      sub_100072DFC();
      if (*(v35 + 16))
      {
        a8 = &v194;
        v37 = sub_100072DDC(*(v35 + 40));
        a7 = (v35 + 56);
        v38 = -1 << *(v35 + 32);
        v20 = v37 & ~v38;
        if ((*(v35 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v39 = ~v38;
          while (1)
          {
            sub_10003B064(*(v35 + 48) + 40 * v20, v193);
            a8 = sub_100072DEC();
            sub_10003B0C0(v193);
            if (a8)
            {
              break;
            }

            v20 = (v20 + 1) & v39;
            if (((*(a7 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          sub_10003B0C0(&v194);
          v40 = [v27 adamID];
          v21 = v189;
          if (v40)
          {

            a8 = &v195;
            sub_100072E9C();
            a7 = v195[2];
            sub_100072EBC();
            sub_100072ECC();
            sub_100072EAC();
          }

          else
          {
          }
        }

        else
        {
LABEL_13:

          sub_10003B0C0(&v194);
          v21 = v189;
        }
      }

      else
      {

        sub_10003B0C0(&v194);
      }

      v28 = v23;
    }

    while (a5 != v23);
    a3 = v195;
    v41 = v195 < 0 || (v195 & 0x4000000000000000) != 0;
    if (v41)
    {
      v163 = sub_100072EDC();
      result = sub_100072EDC();
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        if (v163 >= v177)
        {
          v164 = v177;
        }

        else
        {
          v164 = v163;
        }

        if (v163 >= 0)
        {
          v27 = v164;
        }

        else
        {
          v27 = v177;
        }

        if (sub_100072EDC() >= v27)
        {
          goto LABEL_37;
        }

        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        swift_once();
LABEL_92:
        v109 = sub_100071E7C();
        v110 = sub_100007DE8(v109, qword_100099998);

        v111 = sub_100071E5C();
        v112 = sub_100072CFC();
        v113 = os_log_type_enabled(v111, v112);
        v114 = v175;
        if (v113)
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v195 = v116;
          *v115 = 136315138;
          swift_beginAccess();

          sub_10000388C(&qword_100095C48, &unk_1000750C0);
          v117 = sub_100072AEC();
          v119 = v118;

          v120 = sub_100034D20(v117, v119, &v195);

          *(v115 + 4) = v120;
          _os_log_impl(&_mh_execute_header, v111, v112, "Need app metadata for the following adam IDs: %s", v115, 0xCu);
          sub_100007F50(v116);
        }

        else
        {
        }

        v121 = sub_100071E5C();
        v122 = sub_100072CFC();
        if (os_log_type_enabled(v121, v122))
        {
          LODWORD(v191) = v122;
          v123 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          v195 = v190;
          *v123 = 136315138;
          v124 = *(v28 + 2);
          if (v124)
          {
            v184 = v123;
            v186 = v121;
            *&v187 = v110;
            v192 = &_swiftEmptyArrayStorage;

            sub_1000352C8(0, v124, 0);
            v125 = v192;
            v126 = &v28[(*(v182 + 80) + 32) & ~*(v182 + 80)];
            v127 = *(v182 + 72);
            do
            {
              v128 = v185;
              sub_10003B114(v126, v185, type metadata accessor for AppMetadata);
              v129 = (v128 + *(v188 + 20));
              v131 = *v129;
              v130 = v129[1];

              sub_10003B17C(v128, type metadata accessor for AppMetadata);
              v192 = v125;
              v133 = v125[2];
              v132 = v125[3];
              if (v133 >= v132 >> 1)
              {
                sub_1000352C8((v132 > 1), v133 + 1, 1);
                v125 = v192;
              }

              v125[2] = v133 + 1;
              v134 = &v125[2 * v133];
              v134[4] = v131;
              v134[5] = v130;
              v126 += v127;
              --v124;
            }

            while (v124);

            v114 = v175;
            v121 = v186;
            v123 = v184;
          }

          v135 = sub_100072C5C();
          v137 = v136;

          v138 = sub_100034D20(v135, v137, &v195);

          *(v123 + 4) = v138;
          _os_log_impl(&_mh_execute_header, v121, v191, "Found cached app metadata for: %s", v123, 0xCu);
          sub_100007F50(v190);
        }

        v139 = sub_100071E5C();
        v140 = sub_100072CFC();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v195 = v142;
          *v141 = 136315138;

          v143 = sub_100072C5C();
          v145 = v144;

          v146 = sub_100034D20(v143, v145, &v195);

          *(v141 + 4) = v146;
          _os_log_impl(&_mh_execute_header, v139, v140, "Reaching out to MAPI to retrieve app metadata for: %s", v141, 0xCu);
          sub_100007F50(v142);
        }

        v147 = v169;
        v166(v169, v171, v114);
        v148 = v170;
        v149 = (*(v170 + 80) + 40) & ~*(v170 + 80);
        v150 = &v168[v149 + 7] & 0xFFFFFFFFFFFFFFF8;
        v151 = (v150 + 15) & 0xFFFFFFFFFFFFFFF8;
        v152 = swift_allocObject();
        *(v152 + 2) = v177;
        *(v152 + 3) = v193;
        *(v152 + 4) = v181;
        (*(v148 + 32))(&v152[v149], v147, v114);
        *&v152[v150] = v176;
        v153 = &v152[v151];
        v154 = v173;
        *v153 = v172;
        v153[1] = v154;
        v155 = &v152[(v151 + 23) & 0xFFFFFFFFFFFFFFF8];
        v156 = v178;
        *v155 = v174;
        v155[1] = v156;

        sub_100032068(v157, sub_10003B2A8, v152);

        swift_unknownObjectRelease();
      }

      return result;
    }

    if (v195[2] >= v177)
    {
      v27 = v177;
    }

    else
    {
      v27 = v195[2];
    }

LABEL_37:
    if ((a3 & 0xC000000000000001) != 0 && v27)
    {
      sub_10000F74C(0, &qword_100095C38, GKGameSummaryInternal_ptr);

      v42 = 0;
      do
      {
        v43 = v42 + 1;
        sub_100072E5C(v42);
        v42 = v43;
      }

      while (v27 != v43);
    }

    else
    {
    }

    if (v41)
    {
      v44 = sub_100072EEC();
      v190 = v45;
      a8 = v46;
      v48 = v47;

      v27 = v48 >> 1;
      a3 = v44;
    }

    else
    {
      a8 = 0;
      v190 = (a3 + 32);
    }

    v49 = swift_allocObject();
    v28 = &_swiftEmptyArrayStorage;
    v50 = sub_10004F574(&_swiftEmptyArrayStorage);
    *(v49 + 16) = v50;
    v191 = v49 + 16;
    v52 = v27 - a8;
    if (__OFSUB__(v27, a8))
    {
      goto LABEL_123;
    }

    if ((v52 & 0x8000000000000000) != 0)
    {
      goto LABEL_124;
    }

    v176 = v49;
    v165 = a3;
    if (!v52)
    {
      a5 = v50;
LABEL_72:
      a7 = (a5 + 64);
      v98 = *(a5 + 64);
      v193[0] = &_swiftEmptyArrayStorage;
      v99 = 1 << *(a5 + 32);
      v100 = -1;
      if (v99 < 64)
      {
        v100 = ~(-1 << v99);
      }

      v21 = v100 & v98;
      v23 = ((v99 + 63) >> 6);
      v190 = (v182 + 48);

      a3 = 0;
      v189 = &_swiftEmptyArrayStorage;
      while (v21)
      {
LABEL_80:
        v102 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v103 = (*(a5 + 48) + ((a3 << 10) | (16 * v102)));
        v20 = *v103;
        v27 = v103[1];

        v22 = v180;
        sub_10002E744(0xEF676E6979616C50, v20, v27, v180);
        if ((*v190)(v22, 1, v188) == 1)
        {
          sub_100004890(v22, &qword_100095C40, &qword_1000750B8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v189 = sub_10000CD60(0, *(v189 + 16) + 1, 1, v189);
          }

          a8 = *(v189 + 16);
          v106 = *(v189 + 24);
          v22 = (a8 + 1);
          if (a8 >= v106 >> 1)
          {
            v189 = sub_10000CD60((v106 > 1), a8 + 1, 1, v189);
          }

          v107 = v189;
          *(v189 + 16) = v22;
          v108 = &v107[16 * a8];
          *(v108 + 4) = v20;
          *(v108 + 5) = v27;
        }

        else
        {

          v104 = v183;
          sub_10003BB38(v22, v183, type metadata accessor for AppMetadata);
          sub_10003B114(v104, v184, type metadata accessor for AppMetadata);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_10000CE6C(0, *(v28 + 2) + 1, 1, v28);
          }

          a8 = *(v28 + 2);
          v105 = *(v28 + 3);
          v27 = a8 + 1;
          if (a8 >= v105 >> 1)
          {
            v28 = sub_10000CE6C((v105 > 1), a8 + 1, 1, v28);
          }

          sub_10003B17C(v183, type metadata accessor for AppMetadata);
          *(v28 + 2) = v27;
          sub_10003BB38(v184, &v28[((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * a8], type metadata accessor for AppMetadata);
          v193[0] = v28;
        }
      }

      while (1)
      {
        v101 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        if (v101 >= v23)
        {

          if (qword_1000946F8 != -1)
          {
            goto LABEL_125;
          }

          goto LABEL_92;
        }

        v21 = *(a7 + v101);
        ++a3;
        if (v21)
        {
          a3 = v101;
          goto LABEL_80;
        }
      }

LABEL_108:
      __break(1u);
LABEL_109:
      v28 = sub_100072EDC();
      if (!v28)
      {
        goto LABEL_110;
      }

      continue;
    }

    break;
  }

  if (a8 > 0)
  {
    __break(1u);
    goto LABEL_127;
  }

  if (v27 < 1)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v52 <= v27)
  {
    v53 = 0;
    *&v51 = 136315394;
    v187 = v51;
    *&v51 = 136315650;
    v179 = v51;
    v189 = v27 - a8;
    while (1)
    {
      v60 = qword_1000946F8;
      v61 = v190[v53];
      if (v60 != -1)
      {
        swift_once();
      }

      v62 = sub_100071E7C();
      sub_100007DE8(v62, qword_100099998);
      v27 = v61;
      v63 = sub_100071E5C();
      v64 = sub_100072CFC();

      if (os_log_type_enabled(v63, v64))
      {
        v20 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v194 = v22;
        *v20 = v187;
        v65 = [v27 bundleID];
        v66 = sub_100072B3C();
        v68 = v67;

        v69 = sub_100034D20(v66, v68, &v194);
        v52 = v189;

        *(v20 + 4) = v69;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v53;
        _os_log_impl(&_mh_execute_header, v63, v64, "received the following summary: %s with %ld", v20, 0x16u);
        sub_100007F50(v22);
      }

      v70 = [v27 adamID];
      if (v70)
      {
        v71 = v70;
        v72 = [v70 stringValue];
        v22 = sub_100072B3C();
        v20 = v73;

        if (!*(*v191 + 16))
        {

LABEL_67:
          v20 = v27;
          v22 = v71;
          v82 = sub_100071E5C();
          v83 = sub_100072CFC();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v186 = v20;
            v85 = v84;
            v194 = swift_slowAlloc();
            *v85 = v179;
            v86 = [v186 bundleID];
            v87 = sub_100072B3C();
            v89 = v88;

            v90 = sub_100034D20(v87, v89, &v194);

            *(v85 + 4) = v90;
            *(v85 + 12) = 2080;
            v91 = v22;
            v92 = [v91 description];
            v93 = sub_100072B3C();
            v95 = v94;

            v96 = v93;
            v52 = v189;
            v97 = sub_100034D20(v96, v95, &v194);

            *(v85 + 14) = v97;
            *(v85 + 22) = 2048;
            *(v85 + 24) = v53;
            _os_log_impl(&_mh_execute_header, v82, v83, "adding the following summary: %s, %s with %ld", v85, 0x20u);
            swift_arrayDestroy();

            v20 = v186;
          }

          v54 = [v22 stringValue];
          v55 = sub_100072B3C();
          v57 = v56;

          v58 = v191;
          v27 = *v191;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v194 = v27;
          *v58 = 0x8000000000000000;
          a8 = &v194;
          sub_10004EC04(v20, v53, v55, v57, isUniquelyReferenced_nonNull_native);

          *v58 = v194;

          goto LABEL_54;
        }

        sub_10004DCC0(v22, v20);
        a8 = v74;

        if ((a8 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v27 = v27;
        a8 = sub_100071E5C();
        v75 = sub_100072CFC();

        if (!os_log_type_enabled(a8, v75))
        {

          goto LABEL_54;
        }

        v76 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v194 = v20;
        *v76 = v187;
        v77 = [v27 bundleID];
        v78 = sub_100072B3C();
        v80 = v79;

        v81 = sub_100034D20(v78, v80, &v194);
        v52 = v189;

        *(v76 + 4) = v81;
        *(v76 + 12) = 2048;
        *(v76 + 14) = v53;
        _os_log_impl(&_mh_execute_header, a8, v75, "received nil adamID for: %s with %ld", v76, 0x16u);
        sub_100007F50(v20);
      }

LABEL_54:
      if (v52 == ++v53)
      {
        a5 = *v191;
        v28 = &_swiftEmptyArrayStorage;
        goto LABEL_72;
      }
    }
  }

LABEL_128:
  __break(1u);
LABEL_129:
  swift_once();
LABEL_111:
  v159 = sub_100071E7C();
  sub_100007DE8(v159, qword_100099998);
  v160 = sub_100071E5C();
  v161 = sub_100072CFC();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    *v162 = 0;
    _os_log_impl(&_mh_execute_header, v160, v161, "retreived no summaries", v162, 2u);
  }

  return (a3)(&_swiftEmptyArrayStorage, 0);
}

uint64_t sub_10002E744@<X0>(NSObject *a2@<X1>, char *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a3;
  v71 = a2;
  v72 = a5;
  v7 = type metadata accessor for AppMetadata(0);
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v68 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v66 - v10;
  __chkstk_darwin(v11);
  v70 = &v66 - v12;
  v13 = sub_100071C9C();
  v75 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v66 - v17;
  __chkstk_darwin(v18);
  v77 = &v66 - v19;
  __chkstk_darwin(v20);
  v22 = &v66 - v21;
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v23 = sub_100071E7C();
  sub_100007DE8(v23, qword_100099998);

  v24 = sub_100071E5C();
  v25 = sub_100072CFC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v79 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100034D20(v78, a4, &v79);
    _os_log_impl(&_mh_execute_header, v24, v25, "Fetch cached metadata for %s", v26, 0xCu);
    sub_100007F50(v27);
  }

  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  v30 = [v29 URLsForDirectory:13 inDomains:1];

  v31 = sub_100072C4C();
  if (*(v31 + 16))
  {
    v32 = v22;
    (*(v75 + 16))(v22, v31 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), v13);

    sub_100071C4C();

    sub_100071C4C();

    sub_100071C5C();
    v33 = v15;
    v34 = [v28 defaultManager];
    sub_100071C7C();
    v35 = sub_100072B2C();

    v36 = [v34 fileExistsAtPath:v35];

    if (v36)
    {
      v37 = sub_100071CAC();
      v39 = v38;
      sub_100071BBC();
      swift_allocObject();
      sub_100071BAC();
      sub_10003ACC8(&qword_100095C80, type metadata accessor for AppMetadata, &unk_100075E60);
      v40 = v70;
      sub_100071B9C();
      v67 = v39;

      v50 = v69;
      sub_10003B114(v40, v69, type metadata accessor for AppMetadata);

      v51 = sub_100071E5C();
      v52 = sub_100072CFC();

      v71 = v51;
      if (os_log_type_enabled(v51, v52))
      {
        v54 = v50;
        v55 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v79 = v66;
        *v55 = 136315394;
        *(v55 + 4) = sub_100034D20(v78, a4, &v79);
        *(v55 + 12) = 2080;
        sub_10003B114(v54, v68, type metadata accessor for AppMetadata);
        v56 = sub_100072B4C();
        v78 = v32;
        v57 = v56;
        v68 = v33;
        v59 = v58;
        sub_10003B17C(v54, type metadata accessor for AppMetadata);
        v60 = sub_100034D20(v57, v59, &v79);

        *(v55 + 14) = v60;
        v61 = v71;
        _os_log_impl(&_mh_execute_header, v71, v52, "Decoded metadata with adamID %s -> %s", v55, 0x16u);
        swift_arrayDestroy();

        sub_1000086B8(v37, v67);

        v62 = *(v75 + 8);
        v62(v68, v13);
        v62(v76, v13);
        v62(v77, v13);
        v63 = v78;
      }

      else
      {
        sub_1000086B8(v37, v67);

        sub_10003B17C(v50, type metadata accessor for AppMetadata);
        v62 = *(v75 + 8);
        v62(v33, v13);
        v62(v76, v13);
        v62(v77, v13);
        v63 = v32;
      }

      v62(v63, v13);
      v64 = v74;
      v65 = v72;
      sub_10003BB38(v40, v72, type metadata accessor for AppMetadata);
      return (*(v73 + 56))(v65, 0, 1, v64);
    }

    else
    {

      v45 = sub_100071E5C();
      v46 = sub_100072CFC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v79 = v48;
        *v47 = 136315138;
        *(v47 + 4) = sub_100034D20(v78, a4, &v79);
        _os_log_impl(&_mh_execute_header, v45, v46, "Cached metadata does not exist for %s", v47, 0xCu);
        sub_100007F50(v48);
      }

      v49 = *(v75 + 8);
      v49(v15, v13);
      v49(v76, v13);
      v49(v77, v13);
      v49(v32, v13);
      return (*(v73 + 56))(v72, 1, 1, v74);
    }
  }

  else
  {

    v41 = v72;
    v42 = *(v73 + 56);
    v43 = v74;

    return v42(v41, 1, 1, v43);
  }
}

void sub_10002F27C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11)
{
  v114 = a8;
  v113 = a7;
  v117 = a6;
  v132 = a5;
  v127 = a4;
  v14 = type metadata accessor for AppMetadata(0);
  v135 = *(v14 - 8);
  v15 = *(v135 + 64);
  __chkstk_darwin(v14 - 8);
  v16 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v129 = v95 - v18;
  __chkstk_darwin(v19);
  v128 = v95 - v20;
  v101 = sub_10007292C();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10007294C();
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1000729DC();
  v119 = *(v131 - 8);
  __chkstk_darwin(v131);
  v133 = v23;
  v130 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = dispatch_group_create();
  v24 = swift_allocObject();
  v25 = sub_100039D70(0, a2);
  v116 = v24;
  *(v24 + 16) = v25;
  v27 = *(a1 + 16);
  if (v27)
  {
    v28 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v29 = a1 + v28;
    v30 = *(v135 + 72);
    do
    {
      sub_1000501A0(0x65756E69746E6F43, 0xEF676E6979616C50, v26);
      sub_10003B114(v29, v16, type metadata accessor for AppMetadata);
      swift_beginAccess();
      v31 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_10000CE6C(0, v31[2] + 1, 1, v31);
        *a3 = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_10000CE6C((v33 > 1), v34 + 1, 1, v31);
      }

      v31[2] = v34 + 1;
      sub_10003BB38(v16, v31 + v28 + v34 * v30, type metadata accessor for AppMetadata);
      *a3 = v31;
      swift_endAccess();
      v29 += v30;
      --v27;
    }

    while (v27);
  }

  swift_beginAccess();
  v35 = *a3;
  v36 = *(*a3 + 16);
  if (v36)
  {
    v109 = objc_opt_self();
    v37 = *(v135 + 80);
    v38 = v35 + ((v37 + 32) & ~v37);
    v108 = *(v135 + 72);
    v39 = (v37 + 24) & ~v37;
    v40 = v37 | 7;
    v126 = (v15 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = enum case for WidgetFamily.systemLarge(_:);
    v111 = (v119 + 104);
    v110 = (v119 + 8);
    v102 = enum case for WidgetFamily.systemExtraLarge(_:);
    v107 = v119 + 16;
    v135 = (v126 + 15) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v135 + 15) & 0xFFFFFFFFFFFFFFF8;
    v105 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
    v104 = v105 + 16;
    v115 = v133 + 7;
    v103 = v119 + 32;
    v95[1] = v35;

    v41 = v38;
    v42 = v129;
    v43 = v128;
    v134 = v40;
    v125 = v39;
    while (1)
    {
      v124 = v36;
      v123 = v41;
      sub_10003B114(v41, v43, type metadata accessor for AppMetadata);
      aBlock[0] = sub_10004F35C(&_swiftEmptyArrayStorage);
      v44 = v118;
      dispatch_group_enter(v118);
      sub_10003B114(v43, v42, type metadata accessor for AppMetadata);
      v45 = v135;
      v46 = swift_allocObject();
      *(v46 + 16) = v127;
      sub_10003BB38(v42, v46 + v39, type metadata accessor for AppMetadata);
      *(v46 + v126) = aBlock;
      *(v46 + v45) = v44;
      v47 = v44;
      sub_100050D68(0x65756E69746E6F43, 0xEF676E6979616C50, 350, 0x15E, 0, sub_10003B380, v46);

      v48 = *v111;
      v50 = v130;
      v49 = v131;
      (*v111)(v130, v112, v131);
      sub_10003ACC8(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
      sub_100072C1C();
      sub_100072C1C();
      v51 = *v110;
      (*v110)(v50, v49);
      if (v138 == v137)
      {
        v52 = 1;
        v53 = 430.0;
        v54 = 246.324503;
      }

      else
      {
        v48(v50, v102, v49);
        sub_100072C1C();
        sub_100072C1C();
        v51(v50, v49);
        v52 = 2 * (v138 == v137);
        v54 = 350.0;
        v53 = 350.0;
      }

      v55 = v47;
      dispatch_group_enter(v47);
      v56 = round(v53);
      v57 = v129;
      v58 = v128;
      v59 = v135;
      if (v56 <= -9.22337204e18)
      {
        break;
      }

      if (v56 >= 9.22337204e18)
      {
        goto LABEL_25;
      }

      v60 = round(v54);
      if (v60 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v60 >= 9.22337204e18)
      {
        goto LABEL_27;
      }

      v61 = v56;
      v62 = v60;
      v133 = type metadata accessor for AppMetadata;
      sub_10003B114(v128, v129, type metadata accessor for AppMetadata);
      v63 = swift_allocObject();
      *(v63 + 16) = v127;
      v122 = type metadata accessor for AppMetadata;
      sub_10003BB38(v57, v63 + v125, type metadata accessor for AppMetadata);
      v64 = v126;
      *(v63 + v126) = aBlock;
      *(v63 + v59) = v55;
      v65 = v55;
      v121 = v65;
      sub_100050D68(0x65756E69746E6F43, 0xEF676E6979616C50, v61, v62, v52, sub_10003B4E8, v63);

      dispatch_group_enter(v65);
      v66 = [v109 currentDevice];
      v67 = [v66 userInterfaceIdiom];

      if (v67 == 1)
      {
        v68 = 110;
      }

      else
      {
        v68 = 95;
      }

      v120 = v68;
      sub_10003B114(v58, v57, v133);
      v69 = v119;
      v70 = v130;
      v71 = v131;
      (*(v119 + 16))(v130, v132, v131);
      v72 = (v104 + *(v69 + 80)) & ~*(v69 + 80);
      v73 = &v115[v72] & 0xFFFFFFFFFFFFFFF8;
      v74 = swift_allocObject();
      *(v74 + 16) = v68;
      v39 = v125;
      sub_10003BB38(v57, v74 + v125, v122);
      v75 = v121;
      *(v74 + v64) = v121;
      *(v74 + v135) = v117;
      *(v74 + v106) = aBlock;
      v76 = (v74 + v105);
      v77 = v114;
      *v76 = v113;
      v76[1] = v77;
      v78 = v71;
      v43 = v128;
      (*(v69 + 32))(v74 + v72, v70, v78);
      *(v74 + v73) = v116;

      v79 = v75;
      v42 = v129;

      sub_100050D68(0x65756E69746E6F43, 0xEF676E6979616C50, v120, v120, 0, sub_10003B7F4, v74);

      sub_10003B17C(v43, v133);

      v41 = v123 + v108;
      v36 = v124 - 1;
      if (v124 == 1)
      {

        v80 = v115;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v80 = v133 + 7;
LABEL_23:
    v81 = v132;
    sub_10000F74C(0, &qword_100095BE0, OS_dispatch_queue_ptr);
    v135 = sub_100072D1C();
    v82 = v119;
    v83 = v130;
    v84 = v131;
    (*(v119 + 16))(v130, v81, v131);
    v85 = (*(v82 + 80) + 24) & ~*(v82 + 80);
    v86 = &v80[v85] & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    *(v87 + 16) = v116;
    (*(v82 + 32))(v87 + v85, v83, v84);
    *(v87 + v86) = v117;
    v88 = (v87 + ((v86 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v88 = a10;
    v88[1] = a11;
    aBlock[4] = sub_10003BA40;
    aBlock[5] = v87;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100032024;
    aBlock[3] = &unk_1000929A8;
    v89 = _Block_copy(aBlock);

    v90 = v96;
    sub_10007293C();
    v138 = &_swiftEmptyArrayStorage;
    sub_10003ACC8(&qword_100095BE8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000388C(&qword_100095BF0, &qword_100075098);
    sub_10003AC10();
    v91 = v98;
    v92 = v101;
    sub_100072DBC();
    v93 = v135;
    v94 = v118;
    sub_100072D0C();
    _Block_release(v89);

    (*(v100 + 8))(v91, v92);
    (*(v97 + 8))(v90, v99);
  }
}

void sub_100030094(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v12 = type metadata accessor for AppMetadata(0);
  __chkstk_darwin(v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v15 = sub_100071E7C();
  sub_100007DE8(v15, qword_100099998);
  sub_10003B114(a5, v14, type metadata accessor for AppMetadata);

  v16 = sub_100071E5C();
  v17 = sub_100072CFC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 134218754;
    *(v18 + 4) = 350;
    *(v18 + 12) = 2048;
    *(v18 + 14) = 350;
    *(v18 + 22) = 2080;
    v20 = &v14[*(v12 + 28)];
    v28[1] = a6;
    v29[0] = v19;
    v21 = a7;
    v23 = *v20;
    v22 = v20[1];

    sub_10003B17C(v14, type metadata accessor for AppMetadata);
    v24 = sub_100034D20(v23, v22, v29);

    *(v18 + 24) = v24;
    *(v18 + 32) = 2080;
    v29[1] = a1;
    v29[2] = a2;

    sub_10000388C(&qword_100095C30, &qword_1000750B0);
    v25 = sub_100072B4C();
    v27 = sub_100034D20(v25, v26, v29);
    a7 = v21;

    *(v18 + 34) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "%ldx%ld highlight image data for %s = %s", v18, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_10003B17C(v14, type metadata accessor for AppMetadata);
  }

  swift_beginAccess();

  sub_10004CA18(a1, a2, 0x6867696C68676968, 0xE900000000000074);
  swift_endAccess();
  dispatch_group_leave(a7);
}

void sub_1000303A4(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v27 = a1;
  v10 = type metadata accessor for AppMetadata(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v13 = sub_100071E7C();
  sub_100007DE8(v13, qword_100099998);
  sub_10003B114(a5, v12, type metadata accessor for AppMetadata);

  v14 = sub_100071E5C();
  v15 = sub_100072CFC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = a7;
    v28[0] = v17;
    *v16 = 134218754;
    *(v16 + 4) = 350;
    *(v16 + 12) = 2048;
    *(v16 + 14) = 350;
    *(v16 + 22) = 2080;
    v18 = &v12[*(v10 + 28)];
    v20 = *v18;
    v19 = v18[1];

    sub_10003B17C(v12, type metadata accessor for AppMetadata);
    v21 = sub_100034D20(v20, v19, v28);

    *(v16 + 24) = v21;
    *(v16 + 32) = 2080;
    v22 = v27;
    v28[1] = v27;
    v28[2] = a2;

    sub_10000388C(&qword_100095C30, &qword_1000750B0);
    v23 = sub_100072B4C();
    v25 = sub_100034D20(v23, v24, v28);

    *(v16 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "%ldx%ld editorial image data for %s = %s", v16, 0x2Au);
    swift_arrayDestroy();
    a7 = v26;
  }

  else
  {

    sub_10003B17C(v12, type metadata accessor for AppMetadata);
    v22 = v27;
  }

  swift_beginAccess();

  sub_10004CA18(v22, a2, 0xD000000000000019, 0x8000000100077CA0);

  sub_10004CA18(v22, a2, 0xD00000000000001ELL, 0x8000000100077A90);
  swift_endAccess();
  dispatch_group_leave(a7);
}

void sub_1000306E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, NSObject *a5, uint64_t a6, uint64_t *a7, void (*a8)(void, void, void), unint64_t a9, void *a10, uint64_t *a11)
{
  v141 = a7;
  v142 = a8;
  v146 = a1;
  v137 = sub_1000729DC();
  v143 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100071D4C();
  v139 = *(v17 - 8);
  v140 = v17;
  __chkstk_darwin(v17);
  v138 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for AppMetadata(0);
  __chkstk_darwin(v147);
  v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000946F8 != -1)
  {
    swift_once();
  }

  v21 = sub_100071E7C();
  v22 = sub_100007DE8(v21, qword_100099998);
  sub_10003B114(a4, v20, type metadata accessor for AppMetadata);

  v23 = sub_100071E5C();
  v24 = sub_100072CFC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v144 = a5;
    v145 = a4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v135 = v22;
    v150[0] = v27;
    *v26 = 134218754;
    *(v26 + 4) = a3;
    *(v26 + 12) = 2048;
    *(v26 + 14) = a3;
    *(v26 + 22) = 2080;
    v28 = &v20[*(v147 + 28)];
    v30 = *v28;
    v29 = v28[1];

    sub_10003B17C(v20, type metadata accessor for AppMetadata);
    v31 = sub_100034D20(v30, v29, v150);

    *(v26 + 24) = v31;
    *(v26 + 32) = 2080;
    v151 = v146;
    v152 = a2;

    sub_10000388C(&qword_100095C30, &qword_1000750B0);
    v32 = sub_100072B4C();
    v34 = sub_100034D20(v32, v33, v150);

    *(v26 + 34) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "%ldx%ld image data for %s = %s", v26, 0x2Au);
    swift_arrayDestroy();

    a5 = v144;
    a4 = v145;

    if (!a2)
    {
      goto LABEL_20;
    }
  }

  else
  {

    sub_10003B17C(v20, type metadata accessor for AppMetadata);
    if (!a2)
    {
LABEL_20:
      dispatch_group_leave(a5);
      return;
    }
  }

  v35 = v147;
  v36 = (a4 + *(v147 + 20));
  v37 = *v36;
  v38 = v36[1];
  swift_beginAccess();
  v39 = *(a6 + 16);
  v40 = *(v39 + 16);

  if (!v40 || (v41 = sub_10004DCC0(v37, v38), (v42 & 1) == 0))
  {
    swift_endAccess();

    v66 = sub_100071E5C();
    v67 = sub_100072CFC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "unable to find tuple", v68, 2u);
    }

    goto LABEL_20;
  }

  v43 = *(v39 + 56) + 16 * v41;
  v44 = *v43;
  v45 = *(v43 + 8);
  swift_endAccess();
  v46 = v141;
  swift_beginAccess();
  v135 = v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v150[0] = *v46;
  *v46 = 0x8000000000000000;
  sub_10004EA7C(v146, a2, 0x6C616D726F6ELL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *v46 = v150[0];
  swift_endAccess();
  v144 = a5;
  v145 = a4;
  v134 = v45;
  if (a9)
  {
    v48 = HIBYTE(a9) & 0xF;
    if ((a9 & 0x2000000000000000) == 0)
    {
      v48 = v142 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {

      v49 = sub_100031708(v37, v38);
      if (v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = v49;
      }

      v146 = v51;
      v52 = (a4 + v35[7]);
      v133 = *v52;
      v53 = v46;
      v54 = v52[1];

      v55 = [v135 playedAt];
      v56 = v138;
      sub_100071D2C();

      v57 = (a4 + v35[6]);
      v58 = v57[1];
      v132 = *v57;
      swift_beginAccess();
      v59 = *v53;
      type metadata accessor for AppDisplayData(0);
      a4 = swift_allocObject();
      a4[2] = 973039644;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0xD000000000000011;
      a4[6] = 0x8000000100077C60;
      v60 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_lastPlayedDate;

      sub_100071D3C();
      v37 = a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID;
      *v37 = 0xD00000000000001FLL;
      *(v37 + 8) = 0x8000000100077C80;
      v61 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_icons;
      *(a4 + v61) = sub_10004F35C(&_swiftEmptyArrayStorage);
      *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor) = 0;
      *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor) = 0;
      v62 = (a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic);
      *v62 = 0;
      v62[1] = 0;
      a4[2] = v146;
      a4[5] = v133;
      a4[6] = v54;

      swift_beginAccess();
      v63 = v139;
      v64 = a4 + v60;
      v65 = v140;
      (*(v139 + 24))(v64, v56, v140);
      swift_endAccess();
      *v37 = v132;
      *(v37 + 8) = v58;

      swift_beginAccess();
      *(a4 + v61) = v59;

      *v62 = v142;
      v62[1] = a9;

      (*(v63 + 8))(v56, v65);
      *(a4 + v61) = v59;
      while (1)
      {
        v46 = a11;

        v35 = v147;
        v105 = v145;
        v106 = objc_allocWithZone(AMSMediaArtwork);

        isa = sub_100072ACC().super.isa;
        v108 = [v106 initWithDictionary:isa];

        v146 = AMSMediaArtworkColorKindBackground;
        v109 = [v108 colorWithKind:?];
        v110 = v108;
        v111 = [objc_allocWithZone(UIColor) initWithCGColor:v109];

        v112 = *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor);
        *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor) = v111;
        v113 = v111;

        v38 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor;
        v114 = *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor);
        *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor) = v111;

        v147 = *(v105 + v35[11]);
        if (v147)
        {
          v115 = v143;
          v116 = v136;
          v37 = v137;
          v142 = *(v143 + 104);
          (v142)(v136, enum case for WidgetFamily.systemLarge(_:), v137);
          v35 = sub_10003ACC8(&qword_100094BF0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
          v145 = a10;
          sub_100072C1C();
          sub_100072C1C();
          v117 = *(v115 + 8);
          v143 = v115 + 8;
          v117(v116, v37);
          v46 = a11;
          if (v149 == v148 || (v118 = v136, v37 = v137, (v142)(v136, enum case for WidgetFamily.systemExtraLarge(_:), v137), sub_100072C1C(), sub_100072C1C(), v117(v118, v37), v149 == v148))
          {
            v119 = objc_allocWithZone(AMSMediaArtwork);
            v120 = sub_100072ACC().super.isa;
            v121 = [v119 initWithDictionary:v120];

            v122 = [v121 colorWithKind:v146];
            v123 = v121;
            v124 = [objc_allocWithZone(UIColor) initWithCGColor:v122];

            v125 = *(a4 + v38);
            *(a4 + v38) = v124;
          }
        }

        swift_beginAccess();
        v126 = v46[2];

        v127 = swift_isUniquelyReferenced_nonNull_native();
        v46[2] = v126;
        if ((v127 & 1) == 0)
        {
          v126 = sub_100035980(v126);
          v46[2] = v126;
        }

        v128 = v135;
        if ((v134 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v134 < *(v126 + 16))
        {
          *(v126 + 8 * v134 + 32) = a4;
          v46[2] = v126;
          swift_endAccess();

          dispatch_group_leave(v144);

          return;
        }

        __break(1u);
LABEL_96:

        v74 = sub_1000353F4(v37, v38, 10);
        v130 = v129;

        if (v130)
        {
LABEL_83:
          v74 = 0;
        }

LABEL_84:
        v92 = (a4 + v35[7]);
        v93 = v92[1];
        v146 = *v92;

        v94 = [v135 playedAt];
        v37 = v138;
        sub_100071D2C();

        v95 = a4 + v35[6];
        v96 = *(v95 + 1);
        v142 = *v95;
        swift_beginAccess();
        v97 = *v46;
        type metadata accessor for AppDisplayData(0);
        a4 = swift_allocObject();
        a4[2] = 973039644;
        a4[3] = 0;
        a4[4] = 0;
        a4[5] = 0xD000000000000011;
        a4[6] = 0x8000000100077C60;
        v98 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_lastPlayedDate;

        sub_100071D3C();
        v99 = v74;
        v100 = (a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_bundleID);
        *v100 = 0xD00000000000001FLL;
        v100[1] = 0x8000000100077C80;
        v101 = OBJC_IVAR____TtC9GCWidgets14AppDisplayData_icons;
        *(a4 + v101) = sub_10004F35C(&_swiftEmptyArrayStorage);
        *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_iconBackgroundColor) = 0;
        *(a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_editorialBackgroundColor) = 0;
        v102 = (a4 + OBJC_IVAR____TtC9GCWidgets14AppDisplayData_metricsTopic);
        *v102 = 0;
        v102[1] = 0;
        a4[2] = v99;
        a4[5] = v146;
        a4[6] = v93;

        swift_beginAccess();
        v104 = v139;
        v103 = v140;
        (*(v139 + 24))(a4 + v98, v37, v140);
        swift_endAccess();
        *v100 = v142;
        v100[1] = v96;

        swift_beginAccess();
        *(a4 + v101) = v97;

        *v102 = 0;
        v102[1] = 0;

        (*(v104 + 8))(v37, v103);
        *(a4 + v101) = v97;
      }
    }
  }

  v69 = HIBYTE(v38) & 0xF;
  v70 = v37 & 0xFFFFFFFFFFFFLL;
  if ((v38 & 0x2000000000000000) != 0)
  {
    v71 = HIBYTE(v38) & 0xF;
  }

  else
  {
    v71 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {
    goto LABEL_83;
  }

  if ((v38 & 0x1000000000000000) != 0)
  {
    goto LABEL_96;
  }

  if ((v38 & 0x2000000000000000) == 0)
  {
    if ((v37 & 0x1000000000000000) != 0)
    {
      v72 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v72 = sub_100072E8C();
    }

    v73 = *v72;
    if (v73 == 43)
    {
      if (v70 >= 1)
      {
        v69 = v70 - 1;
        if (v70 != 1)
        {
          v74 = 0;
          if (v72)
          {
            v81 = v72 + 1;
            while (1)
            {
              v82 = *v81 - 48;
              if (v82 > 9)
              {
                goto LABEL_81;
              }

              v83 = 10 * v74;
              if ((v74 * 10) >> 64 != (10 * v74) >> 63)
              {
                goto LABEL_81;
              }

              v74 = v83 + v82;
              if (__OFADD__(v83, v82))
              {
                goto LABEL_81;
              }

              ++v81;
              if (!--v69)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_81;
      }

      goto LABEL_101;
    }

    if (v73 != 45)
    {
      if (v70)
      {
        v74 = 0;
        if (v72)
        {
          while (1)
          {
            v87 = *v72 - 48;
            if (v87 > 9)
            {
              goto LABEL_81;
            }

            v88 = 10 * v74;
            if ((v74 * 10) >> 64 != (10 * v74) >> 63)
            {
              goto LABEL_81;
            }

            v74 = v88 + v87;
            if (__OFADD__(v88, v87))
            {
              goto LABEL_81;
            }

            ++v72;
            if (!--v70)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_81:
      v74 = 0;
      LOBYTE(v69) = 1;
LABEL_82:
      LOBYTE(v150[0]) = v69;
      if ((v69 & 1) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    if (v70 >= 1)
    {
      v69 = v70 - 1;
      if (v70 != 1)
      {
        v74 = 0;
        if (v72)
        {
          v75 = v72 + 1;
          while (1)
          {
            v76 = *v75 - 48;
            if (v76 > 9)
            {
              goto LABEL_81;
            }

            v77 = 10 * v74;
            if ((v74 * 10) >> 64 != (10 * v74) >> 63)
            {
              goto LABEL_81;
            }

            v74 = v77 - v76;
            if (__OFSUB__(v77, v76))
            {
              goto LABEL_81;
            }

            ++v75;
            if (!--v69)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_73:
        LOBYTE(v69) = 0;
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v151 = v37;
  v152 = v38 & 0xFFFFFFFFFFFFFFLL;
  if (v37 != 43)
  {
    if (v37 != 45)
    {
      if (v69)
      {
        v74 = 0;
        v89 = &v151;
        while (1)
        {
          v90 = *v89 - 48;
          if (v90 > 9)
          {
            break;
          }

          v91 = 10 * v74;
          if ((v74 * 10) >> 64 != (10 * v74) >> 63)
          {
            break;
          }

          v74 = v91 + v90;
          if (__OFADD__(v91, v90))
          {
            break;
          }

          v89 = (v89 + 1);
          if (!--v69)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v69)
    {
      if (--v69)
      {
        v74 = 0;
        v78 = &v151 + 1;
        while (1)
        {
          v79 = *v78 - 48;
          if (v79 > 9)
          {
            break;
          }

          v80 = 10 * v74;
          if ((v74 * 10) >> 64 != (10 * v74) >> 63)
          {
            break;
          }

          v74 = v80 - v79;
          if (__OFSUB__(v80, v79))
          {
            break;
          }

          ++v78;
          if (!--v69)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_100;
  }

  if (v69)
  {
    if (--v69)
    {
      v74 = 0;
      v84 = &v151 + 1;
      while (1)
      {
        v85 = *v84 - 48;
        if (v85 > 9)
        {
          break;
        }

        v86 = 10 * v74;
        if ((v74 * 10) >> 64 != (10 * v74) >> 63)
        {
          break;
        }

        v74 = v86 + v85;
        if (__OFADD__(v86, v85))
        {
          break;
        }

        ++v84;
        if (!--v69)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_102:
  __break(1u);
}

unint64_t sub_100031708(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_100072E8C();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1000353F4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100031A08(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v53 = a5;
  v54 = a4;
  v50 = a3;
  v8 = sub_1000729DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = &_swiftEmptyArrayStorage;
  v58[0] = &_swiftEmptyArrayStorage;
  v14 = *(v12 + 16);

  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      (*(v9 + 16))(v11, a2, v8);
      v16 = (*(v9 + 88))(v11, v8);
      if (v16 == enum case for WidgetFamily.systemSmall(_:))
      {
        v8 = 1;
      }

      else if (v16 == enum case for WidgetFamily.systemMedium(_:))
      {
        v8 = 3;
      }

      else if (v16 == enum case for WidgetFamily.systemLarge(_:))
      {
        v8 = 4;
      }

      else
      {
        if (v16 != enum case for WidgetFamily.systemExtraLarge(_:))
        {
          v17 = *(v9 + 8);
          v9 += 8;
          v17(v11, v8);
        }

        v8 = 7;
      }

      v5 = v13 >> 62;
      if (v13 >> 62)
      {
        goto LABEL_55;
      }

      v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18 >= v8)
      {
        v19 = v8;
      }

      else
      {
        v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18 >= v19)
      {
        goto LABEL_22;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      swift_unknownObjectRelease();
LABEL_36:
      sub_10000E154(v8, v9, a2, v14);
      v31 = v30;
      goto LABEL_51;
    }

    if (i >= *(v12 + 16))
    {
      break;
    }

    v5 = *(v12 + 8 * i + 32);
    if (v5)
    {

      sub_100072C2C();
      if (*((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100072C6C();
      }

      sub_100072C8C();
      v13 = v58[0];
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_55:
    v48 = sub_100072EDC();
    result = sub_100072EDC();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (v48 >= v8)
    {
      v49 = v8;
    }

    else
    {
      v49 = v48;
    }

    if (v48 >= 0)
    {
      v19 = v49;
    }

    else
    {
      v19 = v8;
    }

    if (sub_100072EDC() < v19)
    {
      goto LABEL_63;
    }

LABEL_22:
    if ((v13 & 0xC000000000000001) != 0 && v19)
    {
      type metadata accessor for AppDisplayData(0);

      v20 = 0;
      do
      {
        v21 = v20 + 1;
        sub_100072E5C(v20);
        v20 = v21;
      }

      while (v19 != v21);
    }

    else
    {
    }

    if (v5)
    {
      v24 = sub_100072EEC();
      v9 = v25;
      v22 = v26;
      v5 = v27;

      v23 = v24;
    }

    else
    {
      v22 = 0;
      v23 = v13 & 0xFFFFFFFFFFFFFF8;
      v9 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
      v5 = (2 * v19) | 1;
    }

    v51 = v5;
    v52 = v23;
    v19 = v5 >> 1;
    swift_unknownObjectRetain();
    v55 = v22;
    if (v22 == (v5 >> 1))
    {
      break;
    }

    v8 = &SeededRandomNumberGenerator;
    a2 = qword_100099998;
    *&v28 = 136315138;
    v56 = v28;
    v32 = v55;
    v57 = v5 >> 1;
    while (v32 < v19)
    {
      v5 = *(v9 + 8 * v32);
      if (*(v8 + 1784) != -1)
      {
        swift_once();
      }

      v33 = sub_100071E7C();
      v13 = sub_100007DE8(v33, qword_100099998);

      v34 = sub_100071E5C();
      v14 = sub_100072CFC();

      if (os_log_type_enabled(v34, v14))
      {
        v35 = swift_slowAlloc();
        v36 = v9;
        v37 = v8;
        v38 = swift_slowAlloc();
        v58[0] = v38;
        *v35 = v56;

        v39 = sub_10004DA5C();
        v41 = v40;

        v13 = sub_100034D20(v39, v41, v58);

        *(v35 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v34, v14, "compactedAppDisplayData: %s", v35, 0xCu);
        sub_100007F50(v38);
        v8 = v37;
        v9 = v36;
        v19 = v57;

        a2 = qword_100099998;
      }

      if (v19 == ++v32)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_32:
  v8 = v52;
  swift_unknownObjectRelease();
  a2 = v55;
  v29 = v19 - v55;
  if (__OFSUB__(v19, v55))
  {
    goto LABEL_64;
  }

  if (v29)
  {
    v19 = 0;
    v14 = v51;
    if ((v51 & 1) == 0)
    {
LABEL_35:
      swift_unknownObjectRetain();
      goto LABEL_36;
    }
  }

  else
  {
    v42 = v50;
    swift_beginAccess();
    v19 = *(*(v42 + 16) + 16) != 0;
    v14 = v51;
    if ((v51 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  sub_10007300C();
  swift_unknownObjectRetain_n();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
    swift_unknownObjectRelease();
    v43 = &_swiftEmptyArrayStorage;
  }

  v44 = v43[2];

  if (v44 != v29)
  {
    goto LABEL_65;
  }

  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v45)
  {
    v54(v45, v19);
    goto LABEL_52;
  }

  v31 = &_swiftEmptyArrayStorage;
LABEL_51:
  v46 = v54;
  swift_unknownObjectRelease();
  v46(v31, v19);
LABEL_52:

  return swift_unknownObjectRelease();
}

uint64_t sub_100032024(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100032068(char *a1, void (*a2)(void *), unint64_t a3)
{
  v101 = a2;
  v5 = sub_10000388C(&qword_100095C40, &qword_1000750B8);
  __chkstk_darwin(v5 - 8);
  v7 = v95 - v6;
  v8 = type metadata accessor for AppMetadata(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v102 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = v95 - v12;
  __chkstk_darwin(v13);
  v103 = v95 - v14;
  __chkstk_darwin(v15);
  v106 = (v95 - v16);
  __chkstk_darwin(v17);
  *&v105 = v95 - v18;
  if (qword_100094700 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v19 = sub_100071E7C();
    v20 = sub_100007DE8(v19, qword_1000999B0);

    v108 = v20;
    v21 = sub_100071E5C();
    v22 = sub_100072CFC();

    v23 = os_log_type_enabled(v21, v22);
    v104 = v9;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = sub_100072C5C();
      v26 = v8;
      v28 = sub_100034D20(v25, v27, &v110);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = sub_100072B4C();
      v31 = sub_100034D20(v29, v30, &v110);

      *(v24 + 14) = v31;
      v8 = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "Fetching app metadatas for %s, cacheType: %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    if (!*(a1 + 2))
    {
      v101(&_swiftEmptyArrayStorage);
      return;
    }

    v32 = objc_opt_self();
    v33 = [v32 bagSubProfile];
    if (!v33)
    {
      __break(1u);
LABEL_41:

      __break(1u);
      return;
    }

    v21 = v33;
    v34 = [v32 bagSubProfileVersion];
    if (!v34)
    {
      goto LABEL_41;
    }

    v35 = v34;
    v36 = [objc_opt_self() bagForProfile:v21 profileVersion:v34];

    v37 = objc_allocWithZone(AMSMediaTask);
    v38 = v36;
    v39 = sub_100072B2C();
    v40 = sub_100072B2C();
    v41 = [v37 initWithType:0 clientIdentifier:v39 clientVersion:v40 bag:v38];

    isa = sub_100072C3C().super.isa;
    [v41 setItemIdentifiers:isa];

    sub_10004F35C(&off_100091E58);
    sub_100004890(&unk_100091E78, &qword_100095C50, &qword_1000750D0);
    v43 = sub_100072ACC().super.isa;

    [v41 setAdditionalQueryParams:v43];

    v44 = v38;
    v45 = v41;
    v46 = sub_100071E5C();
    v47 = sub_100072CFC();

    v48 = os_log_type_enabled(v46, v47);
    v98 = v44;
    v99 = a3;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v110 = v51;
      *v49 = 138412802;
      *(v49 + 4) = v45;
      *(v49 + 12) = 2112;
      *(v49 + 14) = v44;
      *v50 = v45;
      v50[1] = v44;
      *(v49 + 22) = 2080;
      v52 = v44;
      v53 = v45;
      *(v49 + 24) = sub_100034D20(0xD00000000000002CLL, 0x8000000100077BD0, &v110);
      _os_log_impl(&_mh_execute_header, v46, v47, "Task %@, Bag %@, CID %s", v49, 0x20u);
      sub_10000388C(&qword_100095BD8, &qword_100075090);
      swift_arrayDestroy();

      sub_100007F50(v51);
    }

    v54 = v104;
    v55 = v45;
    v56 = [v45 perform];
    v110 = 0;
    v100 = [v56 resultWithError:&v110];
    if (!v100)
    {
      break;
    }

    v57 = v110;
    v58 = sub_100071E5C();
    v59 = sub_100072CFC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Received data response. Creating app metadatas.", v60, 2u);
    }

    v61 = [v100 responseDataItems];
    v96 = v56;
    v97 = v55;
    if (v61)
    {
      v62 = v61;
      sub_10000388C(&qword_100095C58, &qword_1000750D8);
      v63 = sub_100072C4C();

      v64 = *(v63 + 16);
      v95[1] = v63;
      if (v64)
      {
        v65 = v63 + 32;
        v9 = &_swiftEmptyArrayStorage;
        do
        {

          sub_100032DBC(v66, v7);

          if ((v54[6])(v7, 1, v8) == 1)
          {
            sub_100004890(v7, &qword_100095C40, &qword_1000750B8);
          }

          else
          {
            v67 = v105;
            sub_10003BB38(v7, v105, type metadata accessor for AppMetadata);
            sub_10003B114(v67, v106, type metadata accessor for AppMetadata);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_10000CE6C(0, v9[2] + 1, 1, v9);
            }

            v69 = v9[2];
            v68 = v9[3];
            if (v69 >= v68 >> 1)
            {
              v9 = sub_10000CE6C((v68 > 1), v69 + 1, 1, v9);
            }

            sub_10003B17C(v105, type metadata accessor for AppMetadata);
            v9[2] = v69 + 1;
            sub_10003BB38(v106, v9 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v54[9] * v69, type metadata accessor for AppMetadata);
          }

          v65 += 8;
          --v64;
        }

        while (v64);
      }

      else
      {
        v9 = &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = &_swiftEmptyArrayStorage;
    }

    v82 = v9[2];

    a1 = v107;
    v7 = v103;
    if (!v82)
    {
LABEL_37:

      v101(v9);

      return;
    }

    a3 = 0;
    *&v83 = 136315138;
    v105 = v83;
    v106 = v9;
    while (a3 < v9[2])
    {
      sub_10003B114(v9 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v54[9] * a3, v7, type metadata accessor for AppMetadata);
      sub_10003B114(v7, a1, type metadata accessor for AppMetadata);
      v84 = sub_100071E5C();
      v85 = sub_100072CFC();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = v82;
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v110 = v88;
        *v87 = v105;
        sub_10003B114(a1, v102, type metadata accessor for AppMetadata);
        v89 = v8;
        v90 = sub_100072B4C();
        v92 = v91;
        sub_10003B17C(v107, type metadata accessor for AppMetadata);
        v93 = v90;
        v8 = v89;
        a1 = v107;
        v94 = sub_100034D20(v93, v92, &v110);

        *(v87 + 4) = v94;
        v7 = v103;
        _os_log_impl(&_mh_execute_header, v84, v85, "Received metadata: %s", v87, 0xCu);
        sub_100007F50(v88);
        v54 = v104;

        v82 = v86;
        v9 = v106;
      }

      else
      {

        sub_10003B17C(a1, type metadata accessor for AppMetadata);
      }

      ++a3;
      sub_10003B17C(v7, type metadata accessor for AppMetadata);
      if (v82 == a3)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v70 = v110;
  v71 = sub_100071C1C();

  swift_willThrow();
  swift_errorRetain();
  v72 = sub_100071E5C();
  v73 = sub_100072CFC();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = v55;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v110 = v76;
    *v75 = 136315138;
    v109 = v71;
    swift_errorRetain();
    sub_10000388C(&qword_100094BF8, qword_100073CB0);
    v77 = sub_100072B4C();
    v79 = v56;
    v80 = sub_100034D20(v77, v78, &v110);

    *(v75 + 4) = v80;
    v56 = v79;
    _os_log_impl(&_mh_execute_header, v72, v73, "AMSMediaTask Error in fetchAppMetadatas: %s", v75, 0xCu);
    sub_100007F50(v76);

    v55 = v74;
  }

  v81 = v98;
  v101(&_swiftEmptyArrayStorage);
}

void sub_100032D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_10000F74C(0, &qword_100095C38, GKGameSummaryInternal_ptr);
  v5 = sub_100072C4C();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_100032DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v122 = 25705;
  *(&v122 + 1) = 0xE200000000000000;
  sub_100072DFC();
  if (!*(a1 + 16) || (v4 = sub_10004DD38(&v125), (v5 & 1) == 0))
  {
    sub_10003B0C0(&v125);
    goto LABEL_6;
  }

  sub_10000EA40(*(a1 + 56) + 32 * v4, &v122);
  sub_10003B0C0(&v125);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v117 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v6 = *(&v121[0] + 1);
  v117 = *&v121[0];
LABEL_7:
  *&v121[0] = 0x7475626972747461;
  *(&v121[0] + 1) = 0xEA00000000007365;
  sub_100072DFC();
  if (!*(a1 + 16) || (v7 = sub_10004DD38(&v125), (v8 & 1) == 0))
  {
    sub_10003B0C0(&v125);
    goto LABEL_16;
  }

  sub_10000EA40(*(a1 + 56) + 32 * v7, &v122);
  sub_10003B0C0(&v125);
  sub_10000388C(&qword_100095C58, &qword_1000750D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v118 = 0;
    v119 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 2;
LABEL_17:
    if (v6 && v18 && v13 && v12 != 2 && v15)
    {
      sub_100071D3C();
      v19 = type metadata accessor for AppMetadata(0);
      v20 = (a2 + v19[5]);
      *v20 = v117;
      v20[1] = v6;
      v21 = (a2 + v19[6]);
      *v21 = v118;
      v21[1] = v18;
      v22 = (a2 + v19[7]);
      *v22 = v119;
      v22[1] = v13;
      v23 = (a2 + v19[8]);
      *v23 = v16;
      v23[1] = v17;
      *(a2 + v19[9]) = v12 & 1;
      *(a2 + v19[10]) = v15;
      *(a2 + v19[11]) = v14;
      return (*(*(v19 - 1) + 56))(a2, 0, 1, v19);
    }

    else
    {
      v115 = v12;
      v25 = v18;
      if (qword_100094700 != -1)
      {
        swift_once();
      }

      v26 = sub_100071E7C();
      sub_100007DE8(v26, qword_1000999B0);

      v27 = v14;
      v28 = sub_100071E5C();
      v29 = sub_100072CFC();

      v113 = v29;
      if (os_log_type_enabled(v28, v29))
      {
        v111 = v15;
        v30 = swift_slowAlloc();
        *&v122 = swift_slowAlloc();
        *v30 = 136316674;
        *&v125 = v117;
        *(&v125 + 1) = v6;
        sub_10000388C(&qword_100095C30, &qword_1000750B0);
        v31 = sub_100072B4C();
        v32 = v28;
        v34 = v17;
        v35 = sub_100034D20(v31, v33, &v122);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2080;
        *&v125 = v118;
        *(&v125 + 1) = v25;
        v36 = sub_100072B4C();
        v38 = sub_100034D20(v36, v37, &v122);

        *(v30 + 14) = v38;
        *(v30 + 22) = 2080;
        *&v125 = v119;
        *(&v125 + 1) = v13;
        v39 = sub_100072B4C();
        v41 = sub_100034D20(v39, v40, &v122);

        *(v30 + 24) = v41;
        *(v30 + 32) = 2080;
        *&v125 = v16;
        *(&v125 + 1) = v34;
        v42 = sub_100072B4C();
        v44 = sub_100034D20(v42, v43, &v122);

        *(v30 + 34) = v44;
        *(v30 + 42) = 2080;
        LOBYTE(v125) = v115;
        sub_10000388C(&qword_100095C60, &qword_1000750E0);
        v45 = sub_100072B4C();
        v47 = sub_100034D20(v45, v46, &v122);

        *(v30 + 44) = v47;
        *(v30 + 52) = 2080;
        *&v125 = v111;
        sub_10000388C(&qword_100095C68, &qword_1000750E8);
        v48 = sub_100072B4C();
        v50 = sub_100034D20(v48, v49, &v122);

        *(v30 + 54) = v50;
        *(v30 + 62) = 2080;
        *&v125 = v27;
        v51 = sub_100072B4C();
        v53 = sub_100034D20(v51, v52, &v122);

        *(v30 + 64) = v53;
        _os_log_impl(&_mh_execute_header, v32, v113, "adamID=%s, bundleID=%s, title=%s, subtitle=%s, supportsArcade=%s, artworkDictionary=%s, editorialArtworkDictionary=%s", v30, 0x48u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v54 = type metadata accessor for AppMetadata(0);
      return (*(*(v54 - 8) + 56))(a2, 1, 1, v54);
    }
  }

  v9 = *&v121[0];
  strcpy(&v122, "supportsArcade");
  HIBYTE(v122) = -18;
  sub_100072DFC();
  if (*(*&v121[0] + 16) && (v10 = sub_10004DD38(&v125), (v11 & 1) != 0))
  {
    sub_10000EA40(*(*&v121[0] + 56) + 32 * v10, &v122);
    sub_10003B0C0(&v125);
    if (swift_dynamicCast())
    {
      v12 = LOBYTE(v121[0]);
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    sub_10003B0C0(&v125);
    v12 = 2;
  }

  *&v122 = 1701667182;
  *(&v122 + 1) = 0xE400000000000000;
  sub_100072DFC();
  if (*(*&v121[0] + 16) && (v55 = sub_10004DD38(&v125), (v56 & 1) != 0))
  {
    sub_10000EA40(*(*&v121[0] + 56) + 32 * v55, &v122);
    sub_10003B0C0(&v125);
    v57 = swift_dynamicCast();
    v58 = *&v121[0];
    if (!v57)
    {
      v58 = 0;
    }

    v119 = v58;
    if (v57)
    {
      v13 = *(&v121[0] + 1);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_10003B0C0(&v125);
    v119 = 0;
    v13 = 0;
  }

  *&v121[0] = 0xD000000000000012;
  *(&v121[0] + 1) = 0x8000000100077C00;
  sub_100072DFC();
  if (!*(v9 + 16))
  {
    goto LABEL_53;
  }

  v59 = sub_10004DD38(&v125);
  if ((v60 & 1) == 0)
  {
    goto LABEL_53;
  }

  sub_10000EA40(*(v9 + 56) + 32 * v59, &v122);
  sub_10003B0C0(&v125);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v118 = 0;
    v18 = 0;
    goto LABEL_17;
  }

  v61 = *&v121[0];
  *&v121[0] = 7565161;
  *(&v121[0] + 1) = 0xE300000000000000;
  sub_100072DFC();
  if (!*(v61 + 16) || (v62 = sub_10004DD38(&v125), (v63 & 1) == 0))
  {
LABEL_53:

    sub_10003B0C0(&v125);
    goto LABEL_54;
  }

  sub_10000EA40(*(v61 + 56) + 32 * v62, &v122);
  sub_10003B0C0(&v125);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v64 = *&v121[0];
  *&v122 = 0x6D614E74726F6873;
  *(&v122 + 1) = 0xE900000000000065;
  sub_100072DFC();
  if (*(*&v121[0] + 16) && (v65 = sub_10004DD38(&v125), (v66 & 1) != 0))
  {
    sub_10000EA40(*(*&v121[0] + 56) + 32 * v65, &v122);
    sub_10003B0C0(&v125);
    v67 = swift_dynamicCast();
    if (v67)
    {
      v68 = *&v121[0];
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = *(&v121[0] + 1);
    }

    else
    {
      v69 = 0;
    }

    v104 = v68;
    v105 = v69;
  }

  else
  {
    sub_10003B0C0(&v125);
    v104 = 0;
    v105 = 0;
  }

  *&v122 = 0x656C746974627573;
  *(&v122 + 1) = 0xE800000000000000;
  sub_100072DFC();
  if (*(*&v121[0] + 16) && (v70 = sub_10004DD38(&v125), (v71 & 1) != 0))
  {
    sub_10000EA40(*(*&v121[0] + 56) + 32 * v70, &v122);
    sub_10003B0C0(&v125);
    v72 = swift_dynamicCast();
    if (v72)
    {
      v73 = *&v121[0];
    }

    else
    {
      v73 = 0;
    }

    if (v72)
    {
      v74 = *(&v121[0] + 1);
    }

    else
    {
      v74 = 0;
    }

    v106 = v73;
    v107 = v74;
  }

  else
  {
    sub_10003B0C0(&v125);
    v106 = 0;
    v107 = 0;
  }

  *&v122 = 0x6449656C646E7562;
  *(&v122 + 1) = 0xE800000000000000;
  sub_100072DFC();
  if (*(*&v121[0] + 16) && (v75 = sub_10004DD38(&v125), (v76 & 1) != 0))
  {
    sub_10000EA40(*(*&v121[0] + 56) + 32 * v75, &v122);
    sub_10003B0C0(&v125);
    v77 = swift_dynamicCast();
    v78 = *&v121[0];
    if (!v77)
    {
      v78 = 0;
    }

    v118 = v78;
    if (v77)
    {
      v79 = *(&v121[0] + 1);
    }

    else
    {
      v79 = 0;
    }

    v114 = v79;
  }

  else
  {
    sub_10003B0C0(&v125);
    v118 = 0;
    v114 = 0;
  }

  *&v122 = 0x6B726F77747261;
  *(&v122 + 1) = 0xE700000000000000;
  sub_100072DFC();
  if (!*(*&v121[0] + 16) || (v80 = sub_10004DD38(&v125), (v81 & 1) == 0))
  {
    sub_10003B0C0(&v125);
    goto LABEL_80;
  }

  sub_10000EA40(*(*&v121[0] + 56) + 32 * v80, &v122);
  sub_10003B0C0(&v125);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_80:
    v112 = 0;
    goto LABEL_81;
  }

  v112 = *&v121[0];
LABEL_81:
  if (v12 == 2)
  {

LABEL_116:
    v14 = 0;
    v15 = v112;
    v18 = v114;
    goto LABEL_117;
  }

  *&v121[0] = 0xD000000000000010;
  *(&v121[0] + 1) = 0x8000000100077C20;
  sub_100072DFC();
  if (!*(v64 + 16) || (v82 = sub_10004DD38(&v125), (v83 & 1) == 0))
  {

    sub_10003B0C0(&v125);
    goto LABEL_116;
  }

  sub_10000EA40(*(v64 + 56) + 32 * v82, &v122);
  sub_10003B0C0(&v125);

  sub_10000388C(&qword_100095C70, &qword_1000750F0);
  result = swift_dynamicCast();
  v15 = v112;
  if ((result & 1) == 0)
  {
    v14 = 0;
    v18 = v114;
LABEL_117:
    v16 = v106;
    v17 = v107;
    if (v105)
    {
      v13 = v105;

      v119 = v104;
    }

    goto LABEL_17;
  }

  v110 = a2;
  v14 = 0;
  v84 = 0;
  v85 = *&v121[0];
  v86 = 1 << *(*&v121[0] + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = *&v121[0] + 64;
  v89 = v87 & *(*&v121[0] + 64);
  v90 = (v86 + 63) >> 6;
  v109 = v90;
  v116 = v12;
  v18 = v114;
  v108 = *&v121[0] + 64;
  while (v89)
  {
    v91 = v84;
LABEL_99:
    v94 = __clz(__rbit64(v89));
    v89 &= v89 - 1;
    v95 = v94 | (v91 << 6);
    v96 = (*(v85 + 48) + 16 * v95);
    v98 = *v96;
    v97 = v96[1];
    sub_10000EA40(*(v85 + 56) + 32 * v95, v121);
    *&v122 = v98;
    *(&v122 + 1) = v97;
    sub_10003B36C(v121, &v123);

    v12 = v116;
    v18 = v114;
LABEL_100:
    v125 = v122;
    v126[0] = v123;
    v126[1] = v124;
    v99 = *(&v122 + 1);
    if (!*(&v122 + 1))
    {

      a2 = v110;
      v15 = v112;
      goto LABEL_117;
    }

    v100 = v125;
    sub_10003B36C(v126, &v122);
    if (v100 == 0xD000000000000010 && 0x8000000100077C40 == v99)
    {

LABEL_112:
      sub_10003B36C(&v122, v121);
      result = swift_dynamicCast();
      v88 = v108;
      if (result)
      {

        v14 = v120;
      }

      v18 = v114;
      v90 = v109;
    }

    else
    {
      v103 = sub_100072FFC();

      if (v103)
      {
        goto LABEL_112;
      }

      result = sub_100007F50(&v122);
      v18 = v114;
      v88 = v108;
      v90 = v109;
    }
  }

  if (v90 <= v84 + 1)
  {
    v92 = v84 + 1;
  }

  else
  {
    v92 = v90;
  }

  v93 = v92 - 1;
  while (1)
  {
    v91 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      break;
    }

    if (v91 >= v90)
    {
      v89 = 0;
      v123 = 0u;
      v124 = 0u;
      v84 = v93;
      v122 = 0u;
      goto LABEL_100;
    }

    v89 = *(v88 + 8 * v91);
    ++v84;
    if (v89)
    {
      v84 = v91;
      goto LABEL_99;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100033BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_100038D90(a1, 0xD000000000000011, 0x8000000100077AD0, 0x7974697669746341, 0xEC00000064656546, a5);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  sub_100033C64(sub_10003C488, v7);
}

void sub_100033C64(void (*a1)(void *, uint64_t, id), uint64_t a2)
{
  v3 = v2;
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v6 = sub_100071E7C();
  sub_100007DE8(v6, qword_1000999C8);
  v7 = sub_100071E5C();
  v8 = sub_100072CFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetchActivityFeedViews...", v9, 2u);
  }

  v10 = sub_10006CEA0();
  if (v10)
  {
    v11 = v10;
    v12 = v10;
    v13 = sub_100071E5C();
    v14 = sub_100072CFC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v11;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "Current player is %@", v15, 0xCu);
      sub_100004890(v16, &qword_100095BD8, &qword_100075090);
    }

    v18 = [objc_opt_self() proxyForPlayer:v12];
    v19 = [v18 friendServicePrivate];

    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = v3;
    aBlock[4] = sub_100039104;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100034B48;
    aBlock[3] = &unk_1000926B0;
    v21 = _Block_copy(aBlock);

    [v19 getPlayerActivityFeed:0 bundleID:0 continuation:0 handler:v21];
    _Block_release(v21);

    swift_unknownObjectRelease();
  }

  else
  {
    v22 = sub_100071E5C();
    v23 = sub_100072CFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get local player!", v24, 2u);
    }

    v25 = sub_10004F470(&_swiftEmptyArrayStorage);
    v26 = sub_100056B94();
    a1(&_swiftEmptyArrayStorage, v25, v26);
  }
}

uint64_t sub_100034020(void *a1, uint64_t a2, void *a3, uint64_t a4, __n128 a5)
{
  v9 = sub_10007292C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007294C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v48 = v17;
    v55 = v15;
    v28 = swift_allocObject();
    v47 = v28;
    *(v28 + 16) = &_swiftEmptyArrayStorage;
    v29 = (v28 + 16);
    v58 = 0;
    v53 = a3;
    v54 = a4;
    v51 = v10;
    v52 = v9;
    v49 = v14;
    v50 = v12;
    if (a1 && (v30 = [a1 sections]) != 0)
    {
      v31 = v30;
      sub_10000F74C(0, &qword_100095C00, GKPlayerActivitySectionInternal_ptr);
      v32 = sub_100072C4C();

      a2 = 0;
      sub_10002BBA0(v32, &v58, 16, v29);
    }

    else
    {
      a2 = 0;
    }

    v33 = swift_allocObject();
    *(v33 + 16) = sub_10004F470(&_swiftEmptyArrayStorage);
    v34 = dispatch_group_create();
    v35 = *v29;
    if (v35 >> 62)
    {
      v36 = sub_100072EDC();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v36)
    {
LABEL_21:

      sub_10000F74C(0, &qword_100095BE0, OS_dispatch_queue_ptr);
      v40 = sub_100072D1C();
      v41 = swift_allocObject();
      v41[2] = v47;
      v41[3] = v33;
      v42 = v54;
      v41[4] = v53;
      v41[5] = v42;
      aBlock[4] = sub_10003AC04;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100032024;
      aBlock[3] = &unk_100092750;
      v43 = _Block_copy(aBlock);

      v44 = v48;
      sub_10007293C();
      v56 = &_swiftEmptyArrayStorage;
      sub_10003ACC8(&qword_100095BE8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000388C(&qword_100095BF0, &qword_100075098);
      sub_10003AC10();
      v45 = v50;
      v46 = v52;
      sub_100072DBC();
      sub_100072D0C();

      _Block_release(v43);
      (*(v51 + 8))(v45, v46);
      (*(v49 + 8))(v44, v55);
    }

    v37 = 0;
    while (1)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v38 = sub_100072E6C();
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v38 = *(v35 + 8 * v37 + 32);
      }

      a3 = v38;
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      aBlock[0] = v38;
      sub_10003A92C(aBlock, v34, v33);

      ++v37;
      if (v39 == v36)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (qword_100094708 != -1)
  {
LABEL_24:
    swift_once();
  }

  v18 = sub_100071E7C();
  sub_100007DE8(v18, qword_1000999C8);
  swift_errorRetain();
  v19 = sub_100071E5C();
  v20 = sub_100072CFC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    v58 = a2;
    swift_errorRetain();
    sub_10000388C(&qword_100095C08, &qword_1000750A0);
    v23 = sub_100072B4C();
    v25 = sub_100034D20(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received error %s", v21, 0xCu);
    sub_100007F50(v22);
  }

  v26 = sub_10004F470(&_swiftEmptyArrayStorage);
  (a3)(&_swiftEmptyArrayStorage, v26, a2);
}

id sub_10003464C(id *a1, void *a2, uint64_t a3, void *a4)
{
  result = [*a1 items];
  if (result)
  {
    v8 = result;
    v9 = sub_100072C4C();

    v10 = v9;
    v11 = *(v9 + 16);
    if (v11)
    {
      for (i = v10 + 32; ; i += 32)
      {
        sub_10000EA40(i, v16);
        if (*a2 < a3 && (sub_10000EA40(v16, v15), sub_10000F74C(0, &qword_100094CD8, GKPlayerActivityItemInternal_ptr), (swift_dynamicCast() & 1) != 0))
        {
          v13 = v17;
          if ([v17 activityType])
          {
            v14 = v13;
            sub_100072C2C();
            if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100072C6C();
            }

            sub_100072C8C();

            result = sub_100007F50(v16);
            if (__OFADD__(*a2, 1))
            {
              __break(1u);
              return result;
            }

            ++*a2;
          }

          else
          {
            sub_100007F50(v16);
          }
        }

        else
        {
          sub_100007F50(v16);
        }

        if (!--v11)
        {
        }
      }
    }
  }

  return result;
}

void sub_10003481C(void *a1, int a2, int a3, uint64_t a4, void *a5, dispatch_group_t group)
{
  if (a1)
  {
    v9 = a1;
    v10 = [a5 playerID];
    v11 = sub_100072B3C();
    v13 = v12;

    swift_beginAccess();
    v14 = v9;
    sub_10004CB20(a1, v11, v13);
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void sub_1000348E4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, v8);
}

uint64_t sub_100034978(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  if (qword_100094708 != -1)
  {
    swift_once();
  }

  v6 = sub_100071E7C();
  sub_100007DE8(v6, qword_1000999C8);

  v7 = sub_100071E5C();
  v8 = sub_100072CFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    swift_beginAccess();
    v10 = *(a1 + 16);
    if (v10 >> 62)
    {
      v11 = sub_100072EDC();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v11;

    _os_log_impl(&_mh_execute_header, v7, v8, "Received %ld brick(s) from gamed", v9, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();
  v12 = *(a1 + 16);
  swift_beginAccess();
  v13 = *(a2 + 16);

  a3(v12, v13, 0);
}

void sub_100034B48(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100034BF8()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100034C64(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_100034CC4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100034D20(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100034D20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100034DEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000EA40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007F50(v11);
  return v7;
}

unint64_t sub_100034DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100034EF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100072E8C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100034EF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_100034F44(a1, a2);
  sub_100035074(&off_100091E30);
  return v3;
}

char *sub_100034F44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100035160(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100072E8C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100072B8C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100035160(v10, 0);
        result = sub_100072E3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100035074(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000351D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100035160(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000388C(&qword_100095C10, &qword_1000750A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000351D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000388C(&qword_100095C10, &qword_1000750A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}