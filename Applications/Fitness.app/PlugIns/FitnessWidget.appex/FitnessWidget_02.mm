BOOL sub_1000364FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000A8C4(a1, a2, a3);
  sub_1000444E8();
  sub_1000444E8();
  v4 = sub_100044298();

  if (v4 < 6)
  {
    v6 = sub_100044298();

    return v6 < 6;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100036650@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000437E8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000366B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100043728();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100036714@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100043728();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003676C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000437E8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1000367D4()
{
  result = qword_10005A738;
  if (!qword_10005A738)
  {
    sub_100002940(&qword_10005A730, &qword_100047470);
    sub_10003688C();
    sub_100002F14(&qword_1000591C0, &qword_1000591C8, &qword_100045740, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A738);
  }

  return result;
}

unint64_t sub_10003688C()
{
  result = qword_10005A740;
  if (!qword_10005A740)
  {
    sub_100002940(&qword_10005A728, &qword_100047468);
    sub_100036944();
    sub_100002F14(&qword_10005A658, &qword_10005A660, &unk_1000473E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A740);
  }

  return result;
}

unint64_t sub_100036944()
{
  result = qword_10005A748;
  if (!qword_10005A748)
  {
    sub_100002940(&qword_10005A720, &qword_100047460);
    sub_1000369FC();
    sub_100002F14(&qword_10005A648, &qword_10005A650, &qword_1000473D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A748);
  }

  return result;
}

unint64_t sub_1000369FC()
{
  result = qword_10005A750;
  if (!qword_10005A750)
  {
    sub_100002940(&qword_10005A718, &qword_100047458);
    sub_100035324();
    sub_100002F14(&qword_10005A758, &qword_10005A760, &qword_100047538, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A750);
  }

  return result;
}

id sub_100036AB4()
{
  v1 = sub_1000028F8(&qword_10005A768, &qword_100047618);
  __chkstk_darwin(v1);
  v3 = &v14[-v2 - 8];
  v4 = sub_1000028F8(&qword_10005A770, &qword_100047620);
  __chkstk_darwin(v4);
  v6 = &v14[-v5 - 8];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v8 = result;
    v9 = [result isStandalonePhoneFitnessMode];

    if (v9)
    {
      sub_100036D44(v6);
      sub_100039678(v6, v3);
      swift_storeEnumTagMultiPayload();
      sub_1000028F8(&qword_10005A778, &qword_100047628);
      sub_10003954C();
      sub_100002F14(&qword_10005A798, &qword_10005A778, &qword_100047628, &protocol conformance descriptor for GeometryReader<A>);
      sub_100043988();
      return sub_1000396E8(v6);
    }

    else
    {
      v10 = swift_allocObject();
      v11 = *(v0 + 48);
      *(v10 + 48) = *(v0 + 32);
      *(v10 + 64) = v11;
      *(v10 + 80) = *(v0 + 64);
      v12 = *(v0 + 16);
      *(v10 + 16) = *v0;
      *(v10 + 32) = v12;
      *v3 = sub_100039544;
      v3[1] = v10;
      swift_storeEnumTagMultiPayload();
      sub_10002B0D8(v0, v14);
      sub_1000028F8(&qword_10005A778, &qword_100047628);
      sub_10003954C();
      sub_100002F14(&qword_10005A798, &qword_10005A778, &qword_100047628, &protocol conformance descriptor for GeometryReader<A>);
      return sub_100043988();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100036D44@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v20 = sub_1000439D8();
  v1 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000028F8(&qword_10005A788, &qword_100047630);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v21 = sub_1000028F8(&qword_10005A7A0, &qword_100047638);
  v7 = *(v21 - 8);
  __chkstk_darwin(v21);
  v9 = &v20 - v8;
  *v6 = sub_100043908();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v10 = sub_1000028F8(&qword_10005A7A8, &qword_100047640);
  sub_100037038(&v6[*(v10 + 44)]);
  sub_1000439B8();
  v11 = sub_100002F14(&qword_10005A790, &qword_10005A788, &qword_100047630, &protocol conformance descriptor for VStack<A>);
  sub_100043CF8();
  (*(v1 + 8))(v3, v20);
  sub_100009D50(v6, &qword_10005A788, &qword_100047630);
  v23 = sub_1000304AC();
  v24 = v12;
  sub_10000A8C4(v23, v12, v13);
  v14 = sub_100043C48();
  v16 = v15;
  LOBYTE(v1) = v17;
  v23 = v4;
  v24 = v11;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_100043CB8();
  sub_10000A918(v14, v16, v1 & 1);

  return (*(v7 + 8))(v9, v18);
}

uint64_t sub_100037038@<X0>(uint64_t a1@<X8>)
{
  v37 = sub_1000028F8(&qword_10005A7B0, &qword_100047648) - 8;
  __chkstk_darwin(v37);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v40 = sub_100043858();
  LOBYTE(v42) = 0;
  sub_1000374F0(&v60);
  v50 = *&v61[16];
  v51 = *&v61[32];
  v52 = v61[48];
  v48 = v60;
  v49 = *v61;
  v53[2] = *&v61[16];
  v53[3] = *&v61[32];
  v54 = v61[48];
  v53[0] = v60;
  v53[1] = *v61;
  sub_10000A1F8(&v48, &v58, &qword_10005A7B8, &qword_100047650);
  sub_100009D50(v53, &qword_10005A7B8, &qword_100047650);
  *&v41[23] = v49;
  *&v41[39] = v50;
  *&v41[55] = v51;
  v41[71] = v52;
  *&v41[7] = v48;
  v38 = v42;
  *&v60 = sub_100038D40(sub_10003C5A8, sub_10003C5BC);
  *(&v60 + 1) = v6;
  sub_10000A8C4(v60, v6, v7);
  v8 = sub_100043C48();
  v10 = v9;
  v12 = v11;
  sub_100043AA8();
  sub_100043B18();

  v13 = sub_100043BF8();
  v15 = v14;
  LODWORD(v35) = v16;
  v36 = v17;

  sub_10000A918(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v19 = &v5[*(v37 + 44)];
  sub_1000028F8(&qword_10005A610, &qword_100047308);
  sub_1000436A8();
  *v19 = swift_getKeyPath();
  *v5 = v13;
  *(v5 + 1) = v15;
  v5[16] = v35 & 1;
  *(v5 + 3) = v36;
  *(v5 + 4) = KeyPath;
  *(v5 + 5) = 0x3FE3333333333333;
  v20 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle1];
  [v20 descender];

  sub_100043EC8();
  sub_1000435E8();
  v36 = v44;
  v37 = v42;
  v34 = v47;
  v35 = v46;
  v57 = 1;
  v56 = v43;
  v55 = v45;
  v21 = v39;
  sub_10000A1F8(v5, v39, &qword_10005A7B0, &qword_100047648);
  *(v59 + 1) = *v41;
  *(&v59[3] + 1) = *&v41[48];
  LOBYTE(v15) = v57;
  v22 = v56;
  v23 = v55;
  v24 = v40;
  v58 = v40;
  v25 = v38;
  LOBYTE(v59[0]) = v38;
  *(&v59[4] + 1) = *&v41[64];
  *(&v59[2] + 1) = *&v41[32];
  *(&v59[1] + 1) = *&v41[16];
  v26 = v59[2];
  *(a1 + 32) = v59[1];
  *(a1 + 48) = v26;
  *(a1 + 64) = v59[3];
  *(a1 + 73) = *(&v59[3] + 9);
  v27 = v59[0];
  *a1 = v58;
  *(a1 + 16) = v27;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v28 = sub_1000028F8(&qword_10005A7C0, &qword_1000476B8);
  sub_10000A1F8(v21, a1 + *(v28 + 64), &qword_10005A7B0, &qword_100047648);
  v29 = a1 + *(v28 + 80);
  *v29 = 0;
  *(v29 + 8) = v15;
  v30 = v36;
  *(v29 + 16) = v37;
  *(v29 + 24) = v22;
  *(v29 + 32) = v30;
  *(v29 + 40) = v23;
  v31 = v34;
  *(v29 + 48) = v35;
  *(v29 + 56) = v31;
  sub_10000A1F8(&v58, &v60, &qword_10005A7C8, &qword_1000476C0);
  sub_100009D50(v5, &qword_10005A7B0, &qword_100047648);
  sub_100009D50(v21, &qword_10005A7B0, &qword_100047648);
  v60 = v24;
  v61[0] = v25;
  *&v61[17] = *&v41[16];
  *&v61[33] = *&v41[32];
  v62 = *&v41[48];
  v63 = *&v41[64];
  *&v61[1] = *v41;
  return sub_100009D50(&v60, &qword_10005A7C8, &qword_1000476C0);
}

double sub_1000374F0@<D0>(uint64_t a1@<X8>)
{
  v31 = sub_100043DB8();
  v30 = sub_100043B38();
  KeyPath = swift_getKeyPath();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = sub_100044238();
  v5 = sub_100044238();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_100044258();
  v7 = [v2 mainBundle];
  v8 = sub_100044238();
  v9 = sub_100044238();
  v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

  sub_100044258();
  sub_10000A8C4(v11, v12, v13);
  v14 = sub_1000444D8();
  v16 = v15;

  v32._countAndFlagsBits = v14;
  v32._object = v16;
  sub_1000442A8(v32);

  v17 = sub_100043C48();
  v19 = v18;
  LOBYTE(v3) = v20;
  sub_100043B38();
  v21 = sub_100043BF8();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_10000A918(v17, v19, v3 & 1);

  *a1 = v31;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v30;
  *(a1 + 24) = v21;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25 & 1;
  *(a1 + 48) = v27;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;

  sub_10001D3B8(v21, v23, v25 & 1);

  sub_10000A918(v21, v23, v25 & 1);

  return result;
}

uint64_t sub_10003782C@<X0>(uint64_t a1@<X8>)
{
  v65 = sub_1000028F8(&qword_10005A818, &qword_1000477A8);
  __chkstk_darwin(v65);
  v4 = &v60 - v3;
  v67 = sub_1000028F8(&qword_10005A820, &qword_1000477B0);
  __chkstk_darwin(v67);
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v60 - v7;
  __chkstk_darwin(v8);
  v69 = &v60 - v9;

  v78 = sub_100043DB8();
  v77 = sub_100043B38();
  KeyPath = swift_getKeyPath();
  v10 = v1[6];
  sub_100043EC8();
  v71 = v10;
  v11 = sub_100043698();
  v12 = v1[3];
  v85 = v1[2];
  v86 = v12;
  sub_10000A8C4(v11, v13, v14);

  v15 = sub_100043C48();
  v17 = v16;
  v19 = v18;
  sub_100043B38();
  v20 = sub_100043BF8();
  v74 = v21;
  v75 = v20;
  v72 = v22;
  v68 = v23;

  sub_10000A918(v15, v17, v19 & 1);

  v73 = swift_getKeyPath();
  sub_100043EC8();
  sub_100043698();
  *&v111[55] = v125;
  *&v111[71] = v126;
  *&v111[87] = v127;
  *&v111[103] = v128;
  *&v111[7] = v122;
  *&v111[23] = v123;
  v72 &= 1u;
  v114 = v72;
  v112 = 0;
  *&v111[39] = v124;
  v24 = v1[5];
  v63 = v1[4];
  v64 = v24;
  v85 = v63;
  v86 = v24;

  v25 = sub_100043C48();
  v27 = v26;
  v29 = v28;
  sub_100043A98();
  sub_100043B18();

  v30 = sub_100043BF8();
  v61 = v31;
  v62 = v30;
  v33 = v32;
  v60 = v34;

  sub_10000A918(v25, v27, v29 & 1);

  v35 = swift_getKeyPath();
  sub_100043EC8();
  sub_100043698();
  *&v108[55] = v132;
  *&v108[71] = v133;
  *&v108[87] = v134;
  *&v108[103] = v135;
  *&v108[7] = v129;
  *&v108[23] = v130;
  v110 = v33 & 1;
  v109 = 0;
  v36 = &v4[*(v65 + 36)];
  *&v108[39] = v131;
  sub_1000028F8(&qword_10005A610, &qword_100047308);
  sub_1000436A8();
  *v36 = swift_getKeyPath();
  v37 = *&v108[80];
  *(v4 + 113) = *&v108[64];
  *(v4 + 129) = v37;
  *(v4 + 145) = *&v108[96];
  v38 = *&v108[16];
  *(v4 + 49) = *v108;
  *(v4 + 65) = v38;
  v39 = *&v108[48];
  *(v4 + 81) = *&v108[32];
  v40 = v61;
  *v4 = v62;
  *(v4 + 1) = v40;
  v4[16] = v33 & 1;
  *(v4 + 3) = v60;
  *(v4 + 4) = v35;
  *(v4 + 5) = 1;
  v4[48] = 0;
  *(v4 + 20) = *&v108[111];
  *(v4 + 97) = v39;
  sub_100043F08();
  v41 = sub_100043EF8();

  v42 = v66;
  sub_1000029D8(v4, v66, &qword_10005A818, &qword_1000477A8);
  v43 = (v42 + *(v67 + 36));
  v44 = v63;
  v45 = v64;
  *v43 = v41;
  v43[1] = v44;
  v43[2] = v45;
  v46 = v69;
  sub_1000029D8(v42, v69, &qword_10005A820, &qword_1000477B0);
  v47 = v70;
  sub_10000A1F8(v46, v70, &qword_10005A820, &qword_1000477B0);
  *&v79 = v78;
  *(&v79 + 1) = KeyPath;
  *v80 = v77;
  *&v80[104] = v121;
  *&v80[88] = v120;
  *&v80[56] = v118;
  *&v80[72] = v119;
  *&v80[8] = v115;
  *&v80[24] = v116;
  *&v80[40] = v117;
  v48 = *&v80[96];
  *(a1 + 96) = *&v80[80];
  *(a1 + 112) = v48;
  v49 = *v80;
  *a1 = v79;
  *(a1 + 16) = v49;
  v50 = *&v80[32];
  *(a1 + 32) = *&v80[16];
  *(a1 + 48) = v50;
  v51 = *&v80[64];
  *(a1 + 64) = *&v80[48];
  *(a1 + 80) = v51;
  *&v81 = v75;
  *(&v81 + 1) = v74;
  LOBYTE(v82) = v72;
  *(&v82 + 1) = *v113;
  DWORD1(v82) = *&v113[3];
  v52 = v68;
  *(&v82 + 1) = v68;
  *&v83 = v73;
  *(&v83 + 1) = 1;
  v84[0] = 0;
  *&v84[65] = *&v111[64];
  *&v84[81] = *&v111[80];
  *&v84[97] = *&v111[96];
  *&v84[1] = *v111;
  *&v84[17] = *&v111[16];
  *&v84[33] = *&v111[32];
  *&v84[49] = *&v111[48];
  v53 = *v84;
  *(a1 + 168) = v83;
  v54 = *&v84[64];
  *(a1 + 232) = *&v84[48];
  v55 = *&v84[16];
  *(a1 + 216) = *&v84[32];
  *(a1 + 200) = v55;
  *(a1 + 184) = v53;
  v56 = v81;
  *(a1 + 152) = v82;
  v57 = *&v84[96];
  *(a1 + 264) = *&v84[80];
  *(a1 + 280) = v57;
  *(a1 + 248) = v54;
  *(a1 + 128) = *&v80[112];
  *&v84[112] = *&v111[111];
  *(a1 + 296) = *&v111[111];
  *(a1 + 136) = v56;
  v58 = sub_1000028F8(&qword_10005A828, &qword_1000477E8);
  sub_10000A1F8(v47, a1 + *(v58 + 64), &qword_10005A820, &qword_1000477B0);

  sub_10000A1F8(&v79, &v85, &qword_10005A830, &qword_1000477F0);
  sub_10000A1F8(&v81, &v85, &qword_10005A838, &qword_1000477F8);
  sub_100009D50(v46, &qword_10005A820, &qword_1000477B0);
  sub_100009D50(v47, &qword_10005A820, &qword_1000477B0);
  v97 = *&v111[64];
  v98 = *&v111[80];
  *v99 = *&v111[96];
  v93 = *v111;
  v94 = *&v111[16];
  v95 = *&v111[32];
  v85 = v75;
  v86 = v74;
  v87 = v72;
  *v88 = *v113;
  *&v88[3] = *&v113[3];
  v89 = v52;
  v90 = v73;
  v91 = 1;
  v92 = 0;
  *&v99[15] = *&v111[111];
  v96 = *&v111[48];
  sub_100009D50(&v85, &qword_10005A838, &qword_1000477F8);
  v104 = v118;
  v105 = v119;
  v106 = v120;
  v107 = v121;
  v101 = v115;
  v102 = v116;
  v100[0] = v78;
  v100[1] = KeyPath;
  v100[2] = v77;
  v103 = v117;
  return sub_100009D50(v100, &qword_10005A830, &qword_1000477F0);
}

uint64_t sub_1000381F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[2] = a2;
  v31 = a3;
  v5 = sub_1000439D8();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100043998();
  __chkstk_darwin(v8);
  v9 = sub_1000028F8(&qword_10005A7D0, &qword_1000476F8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  v27 = sub_1000028F8(&qword_10005A7D8, &qword_100047700);
  v30 = *(v27 - 8);
  __chkstk_darwin(v27);
  v14 = v26 - v13;
  sub_1000435F8();
  v26[1] = sub_1000397D4(v15);
  v32 = a2;
  v33 = a1;
  sub_1000438F8();
  LODWORD(v34) = 0;
  sub_100039A30(&qword_10005A7E0, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_1000446A8();
  sub_1000028F8(&qword_10005A7E8, &qword_100047708);
  sub_100002F14(&qword_10005A7F0, &qword_10005A7E8, &qword_100047708, &protocol conformance descriptor for TupleView<A>);
  sub_100043F28();
  sub_1000439B8();
  v16 = sub_100002F14(&qword_10005A7F8, &qword_10005A7D0, &qword_1000476F8, &protocol conformance descriptor for LazyVGrid<A>);
  sub_100043CF8();
  (*(v28 + 8))(v7, v29);
  (*(v10 + 8))(v12, v9);
  v34 = sub_100038EE8();
  v35 = v17;
  sub_10000A8C4(v34, v17, v18);
  v19 = sub_100043C48();
  v21 = v20;
  v23 = v22;
  v34 = v9;
  v35 = v16;
  swift_getOpaqueTypeConformance2();
  v24 = v27;
  sub_100043CB8();
  sub_10000A918(v19, v21, v23 & 1);

  return (*(v30 + 8))(v14, v24);
}

uint64_t sub_10003862C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_10003D524(*(a1 + 24), *(a1 + 32));
  sub_10000A8C4(v4, v5, v6);
  v7 = sub_1000444D8();
  v53 = v8;
  v54 = v7;

  *&v52 = sub_100038D40(sub_10003C5A8, sub_10003C5BC);
  *(&v52 + 1) = v9;
  sub_1000435F8();
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v14 = sub_100044238();
  v15 = sub_100044238();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  v17 = sub_100044258();
  v19 = v18;

  v78[0] = v17;
  v78[1] = v19;
  v20 = sub_1000444D8();
  v50 = v21;
  v51 = v20;

  v22 = sub_100038B40();
  v47 = v23;
  v48 = v22;
  sub_1000435F8();
  v25 = 0xEE00646E6174732ELL;
  if (*(a1 + 8))
  {
    v25 = 0xED00006C6C6F722ELL;
  }

  v49 = v25;
  v26 = v24 / 3.0;
  *&v27 = v11 / 3.0;
  v28 = [v12 mainBundle];
  v29 = sub_100044238();
  v30 = sub_100044238();
  v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

  v32 = sub_100044258();
  v34 = v33;

  v78[0] = v32;
  v78[1] = v34;
  v35 = sub_1000444D8();
  v37 = v36;

  v38 = sub_100038D40(sub_10003C710, sub_10003C724);
  v40 = v39;
  sub_1000435F8();
  strcpy(&v63, "activity.move");
  HIWORD(v63) = -4864;
  *&v64 = v54;
  *(&v64 + 1) = v53;
  v65 = v52;
  v66 = v27;
  v67 = 0;
  *&v68 = 0xD000000000000011;
  v42 = v41 / 3.0;
  *(&v68 + 1) = 0x800000010004FF40;
  *&v69 = v51;
  *(&v69 + 1) = v50;
  *&v70 = v48;
  *(&v70 + 1) = v47;
  *&v71 = v26;
  *(&v71 + 1) = 0x3FC3333333333333;
  *&v72 = 0x7974697669746361;
  v57 = v70;
  v58 = v71;
  v55 = v68;
  v56 = v69;
  *(&v72 + 1) = v49;
  *&v73 = v35;
  *(&v73 + 1) = v37;
  *&v74 = v38;
  *(&v74 + 1) = v40;
  *&v75 = v41 / 3.0;
  *(&v75 + 1) = 0x3FD3333333333333;
  v61 = v74;
  v62 = v75;
  v59 = v72;
  v60 = v73;
  v43 = v63;
  v44 = v64;
  a2[2] = v52;
  a2[3] = v27;
  *a2 = v43;
  a2[1] = v44;
  a2[6] = v57;
  a2[7] = v58;
  a2[4] = v55;
  a2[5] = v56;
  a2[10] = v61;
  a2[11] = v62;
  a2[8] = v59;
  a2[9] = v60;
  v76[0] = 0x7974697669746361;
  v76[1] = v49;
  v76[2] = v35;
  v76[3] = v37;
  v76[4] = v38;
  v76[5] = v40;
  *&v76[6] = v42;
  v76[7] = 0x3FD3333333333333;
  sub_100039A78(&v63, v78);
  sub_100039A78(&v68, v78);
  sub_100039A78(&v72, v78);
  sub_100039AB0(v76);
  v77[0] = 0xD000000000000011;
  v77[1] = v46;
  v77[2] = v51;
  v77[3] = v50;
  v77[4] = v48;
  v77[5] = v47;
  *&v77[6] = v26;
  v77[7] = 0x3FC3333333333333;
  sub_100039AB0(v77);
  strcpy(v78, "activity.move");
  HIWORD(v78[1]) = -4864;
  v78[2] = v54;
  v78[3] = v53;
  v79 = v52;
  v80 = v27;
  v81 = 0;
  return sub_100039AB0(v78);
}

id sub_100038B40()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_10003C6FC(v1, v2, v4, v3);
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_100044238();
  v8 = sub_100044238();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_100044258();
  v12 = v11;

  v19._countAndFlagsBits = v10;
  v19._object = v12;
  sub_1000442A8(v19);

  v13 = v5;
  if (!v2)
  {
    goto LABEL_4;
  }

  v14 = v2;
  if ([v14 paused])
  {

LABEL_4:

LABEL_7:

    v20._countAndFlagsBits = v4;
    v20._object = v3;
    sub_1000442A8(v20);

    return v13;
  }

  v15 = [v14 exerciseTimeGoal];
  result = [v1 localizedStringWithBriskMinutes:v15];
  if (result)
  {
    v17 = result;
    v4 = sub_100044258();
    v3 = v18;

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100038D40(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = a1(v3, v4, v5, v6);
  v8 = [objc_opt_self() mainBundle];
  v9 = sub_100044238();
  v10 = sub_100044238();
  v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

  v12 = sub_100044258();
  v14 = v13;

  v20._countAndFlagsBits = v12;
  v20._object = v14;
  sub_1000442A8(v20);

  v15 = a2(v3, v4, v5, v6);
  v17 = v16;

  v21._countAndFlagsBits = v15;
  v21._object = v17;
  sub_1000442A8(v21);

  return v7;
}

uint64_t sub_100038EE8()
{
  v1 = *(v0 + 16);
  if (v1 && [v1 paused])
  {
    v2 = [objc_opt_self() mainBundle];
    v3 = sub_100044238();
    v4 = sub_100044238();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_100044258();
    return v6;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 mainBundle];
    v10 = sub_100044238();
    v11 = sub_100044238();
    v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v13 = sub_100044258();
    v14 = *(v0 + 32);
    sub_10003CE88(v14);
    v16 = v15;
    v18 = v17;

    v40._countAndFlagsBits = v16;
    v40._object = v18;
    sub_1000442A8(v40);

    v19 = [v8 mainBundle];
    v20 = sub_100044238();
    v21 = sub_100044238();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_100044258();
    v25 = v24;

    v41._countAndFlagsBits = v23;
    v41._object = v25;
    sub_1000442A8(v41);

    sub_10003D650(v14);
    v27 = v26;
    v29 = v28;

    v42._countAndFlagsBits = v27;
    v42._object = v29;
    sub_1000442A8(v42);

    v30 = [v8 mainBundle];
    v31 = sub_100044238();
    v32 = sub_100044238();
    v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

    v34 = sub_100044258();
    v36 = v35;

    v43._countAndFlagsBits = v34;
    v43._object = v36;
    sub_1000442A8(v43);

    v37 = sub_10003D93C(v14);
    v39 = v38;

    v44._countAndFlagsBits = v37;
    v44._object = v39;
    sub_1000442A8(v44);

    return v13;
  }
}

uint64_t sub_10003939C(uint64_t a1)
{
  v2 = sub_1000436B8();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_100043768();
}

uint64_t sub_1000394E4()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10003954C()
{
  result = qword_10005A780;
  if (!qword_10005A780)
  {
    sub_100002940(&qword_10005A770, &qword_100047620);
    sub_100002940(&qword_10005A788, &qword_100047630);
    sub_100002F14(&qword_10005A790, &qword_10005A788, &qword_100047630, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100039A30(&qword_100059348, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A780);
  }

  return result;
}

uint64_t sub_100039678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_10005A770, &qword_100047620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000396E8(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_10005A770, &qword_100047620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000397D4(double a1)
{
  v2 = sub_100043E88();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000028F8(&qword_10005A800, &qword_100047710);
  sub_100043E98();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100047540;
  *v5 = 0x4034000000000000;
  v7 = enum case for GridItem.Size.fixed(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for GridItem.Size.fixed(_:), v2);
  sub_100043ED8();
  sub_100043EA8();
  *v5 = xmmword_100047550;
  v8(v5, enum case for GridItem.Size.flexible(_:), v2);
  sub_100043ED8();
  sub_100043EA8();
  *v5 = a1 * 0.5 + 6.0;
  v8(v5, v7, v2);
  sub_100043ED8();
  sub_100043EA8();
  return v6;
}

uint64_t sub_100039A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100039AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100039B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100039B8C()
{
  result = qword_10005A808;
  if (!qword_10005A808)
  {
    sub_100002940(&qword_10005A810, qword_100047750);
    sub_10003954C();
    sub_100002F14(&qword_10005A798, &qword_10005A778, &qword_100047628, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A808);
  }

  return result;
}

uint64_t sub_100039CC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000028F8(&qword_1000599B0, &unk_100047250);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000028F8(&qword_1000599A8, &unk_100045F00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000028F8(&qword_100059C48, qword_1000467A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_100039E4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000028F8(&qword_1000599B0, &unk_100047250);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000028F8(&qword_1000599A8, &unk_100045F00);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1000028F8(&qword_100059C48, qword_1000467A0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for StandaloneMetricsStack(uint64_t a1)
{
  result = qword_10005A8A8;
  if (!qword_10005A8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003A00C(uint64_t a1)
{
  sub_10003A168(319, &unk_100059A28, &type metadata accessor for DynamicTypeSize);
  if (v1 <= 0x3F)
  {
    sub_10003A168(319, &qword_100059A20, &type metadata accessor for WidgetFamily);
    if (v2 <= 0x3F)
    {
      sub_10003A168(319, &qword_100059CB8, &type metadata accessor for WidgetRenderingMode);
      if (v3 <= 0x3F)
      {
        sub_100009BB8(319, &unk_10005A1C8, FIUIFormattingManager_ptr);
        if (v4 <= 0x3F)
        {
          sub_10002A290(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10003A168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100043578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10003A1D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100043818();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028F8(&qword_100059990, &qword_1000460C0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for StandaloneMetricsStack(0);
  sub_10000A1F8(v1 + *(v10 + 24), v9, &qword_100059990, &qword_1000460C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100044018();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_100044378();
    v14 = sub_100043A18();
    sub_100043538(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

    sub_100043808();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10003A3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000028F8(&qword_10005A910, &qword_100047890);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  *v9 = sub_100043908();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_1000028F8(&qword_10005A918, &qword_100047898);
  sub_10003A52C(a1, &v9[*(v10 + 44)]);
  sub_10000A1F8(v9, v6, &qword_10005A910, &qword_100047890);
  sub_10000A1F8(v6, a2, &qword_10005A910, &qword_100047890);
  v11 = a2 + *(sub_1000028F8(&qword_10005A920, &qword_1000478A0) + 48);
  *v11 = 0;
  *(v11 + 8) = 0;
  sub_100009D50(v9, &qword_10005A910, &qword_100047890);
  return sub_100009D50(v6, &qword_10005A910, &qword_100047890);
}

uint64_t sub_10003A52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v277 = a2;
  v276 = sub_1000028F8(&qword_10005A928, &qword_1000478A8);
  v275 = *(v276 - 8);
  __chkstk_darwin(v276);
  v254 = &v241[-v3];
  v270 = type metadata accessor for StandaloneMetricView(0);
  __chkstk_darwin(v270);
  v249 = &v241[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v244 = &v241[-v6];
  v273 = sub_1000028F8(&qword_10005A930, &qword_1000478B0);
  v286 = *(v273 - 8);
  __chkstk_darwin(v273);
  v250 = &v241[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v246 = &v241[-v9];
  v271 = sub_1000028F8(&qword_10005A938, &qword_1000478B8);
  __chkstk_darwin(v271);
  v252 = &v241[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v253 = &v241[-v12];
  __chkstk_darwin(v13);
  v248 = &v241[-v14];
  __chkstk_darwin(v15);
  v251 = &v241[-v16];
  __chkstk_darwin(v17);
  v245 = &v241[-v18];
  __chkstk_darwin(v19);
  v287 = &v241[-v20];
  v279 = sub_100043648();
  v266 = *(v279 - 8);
  __chkstk_darwin(v279);
  v264 = &v241[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1000028F8(&qword_10005A940, &qword_1000478C0);
  __chkstk_darwin(v22 - 8);
  v274 = &v241[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v288 = &v241[-v25];
  v292 = sub_1000439D8();
  v295 = *(v292 - 8);
  __chkstk_darwin(v292);
  v291 = &v241[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v283 = sub_100044018();
  v290 = *(v283 - 8);
  __chkstk_darwin(v283);
  v282 = &v241[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v281 = &v241[-v29];
  v30 = type metadata accessor for FractionView(0);
  __chkstk_darwin(v30);
  v32 = &v241[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v263 = sub_1000028F8(&qword_10005A948, &qword_1000478C8);
  v262 = *(v263 - 1);
  __chkstk_darwin(v263);
  v261 = &v241[-v33];
  v260 = sub_1000028F8(&qword_10005A950, &qword_1000478D0);
  __chkstk_darwin(v260);
  v272 = &v241[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v259 = &v241[-v36];
  __chkstk_darwin(v37);
  v293 = &v241[-v38];
  v39 = type metadata accessor for HeaderLabel(0);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v243 = &v241[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v44 = &v241[-v43];
  __chkstk_darwin(v45);
  v294 = &v241[-v46];
  v47 = sub_1000028F8(&qword_10005A958, &qword_1000478D8);
  __chkstk_darwin(v47 - 8);
  v247 = &v241[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v285 = &v241[-v50];
  __chkstk_darwin(v51);
  v278 = &v241[-v52];
  __chkstk_darwin(v53);
  v284 = &v241[-v54];
  __chkstk_darwin(v55);
  v57 = &v241[-v56];
  v58 = type metadata accessor for StandaloneMetricsStack(0);
  v268 = *(a1 + v58[11]);
  v296 = a1;
  v280 = v39;
  v289 = v40;
  if (v268 == 1)
  {
    v59 = [objc_opt_self() mainBundle];
    v60 = sub_100044238();
    v61 = sub_100044238();
    v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

    v63 = sub_100044258();
    v65 = v64;

    if (*(v296 + v58[10]) == 1)
    {
      if (qword_100058DC8 != -1)
      {
        swift_once();
      }

      v66 = &qword_10005C9E0;
    }

    else
    {
      if (qword_100058D70 != -1)
      {
        swift_once();
      }

      v66 = &qword_10005C988;
    }

    v67 = *v66;

    v297 = 0x4026000000000000;
    sub_10000A5CC(v68, v69, v70);
    sub_1000435A8();
    v71 = v280;
    v72 = &v44[*(v280 + 20)];
    *v72 = v63;
    v72[1] = v65;
    v73 = v71;
    *&v44[*(v71 + 24)] = v67;
    v74 = v44;
    v75 = v294;
    sub_10003C444(v74, v294);
    sub_10003C444(v75, v57);
    (*(v289 + 56))(v57, 0, 1, v73);
    a1 = v296;
  }

  else
  {
    (*(v40 + 56))(v57, 1, 1, v39);
  }

  v76 = *(a1 + v58[10]);
  v269 = v57;
  if (v76 == 1)
  {
    if (qword_100058DC8 != -1)
    {
      swift_once();
    }

    v77 = qword_10005C9E0;
  }

  else
  {
    v78 = v281;
    sub_10003A1D8(v281);
    v79 = v282;
    sub_100044008();
    v80 = sub_100043FF8();
    v81 = *(v290 + 8);
    v82 = v79;
    v83 = v283;
    v81(v82, v283);
    v81(v78, v83);
    if (v80)
    {
      if (qword_100058D78 != -1)
      {
        swift_once();
      }

      v77 = qword_10005C990;
    }

    else
    {
      v77 = sub_100043D48();
    }

    a1 = v296;
  }

  v84 = a1 + v58[15];
  v85 = *v84;
  v86 = *(v84 + 8);
  v87 = *(v84 + 16);
  v88 = *(v84 + 24);
  sub_10003C5A8(*v84, v86, v87, v88);
  v267 = v89;
  v265 = v90;
  v255 = v85;
  v294 = v86;
  v257 = v87;
  v256 = v88;
  sub_10003C5BC(v85, v86, v87, v88);
  v92 = v91;
  v94 = v93;
  v242 = v76 | *(a1 + v58[9]);
  if (v242 & 1) != 0 || (v95 = v264, sub_1000429CC(v264), v96 = sub_100043638(), (*(v266 + 8))(v95, v279), (v96) || (*(a1 + v58[7]))
  {
    v97 = 0;
    v98 = 0xE000000000000000;
  }

  else
  {
    v97 = sub_10003D524(v255, v294);
    v98 = v159;
  }

  v99 = v58[7];
  v258 = v58;
  v100 = *(a1 + v99);
  *v32 = swift_getKeyPath();
  sub_1000028F8(&qword_100059B48, &qword_100047910);
  swift_storeEnumTagMultiPayload();
  v101 = v30[5];
  *(v32 + v101) = swift_getKeyPath();
  v266 = sub_1000028F8(&qword_100059990, &qword_1000460C0);
  v102 = swift_storeEnumTagMultiPayload();
  v297 = 0x4034000000000000;
  v279 = sub_10000A5CC(v102, v103, v104);
  sub_1000435A8();
  *(v32 + v30[7]) = v77;
  v105 = (v32 + v30[8]);
  v106 = v265;
  *v105 = v267;
  v105[1] = v106;
  v107 = (v32 + v30[9]);
  *v107 = v92;
  v107[1] = v94;
  v108 = (v32 + v30[10]);
  *v108 = v97;
  v108[1] = v98;
  v109 = v30[11];
  LODWORD(v267) = v100;
  *(v32 + v109) = v100;
  *(v32 + v30[12]) = 0;
  v110 = v291;
  sub_1000439B8();
  v111 = sub_10003C32C(&qword_100059DE0, type metadata accessor for FractionView, &unk_100047404);
  v112 = v261;
  sub_100043CF8();
  v264 = *(v295 + 8);
  v295 += 8;
  (v264)(v110, v292);
  sub_10003C374(v32, type metadata accessor for FractionView);
  sub_10003CE88(v294);
  v297 = v113;
  v298 = v114;
  v265 = sub_10000A8C4(v113, v114, v115);
  v116 = sub_100043C48();
  v118 = v117;
  v120 = v119;
  v297 = v30;
  v298 = v111;
  v121 = v296;
  v122 = 1;
  swift_getOpaqueTypeConformance2();
  v123 = v259;
  v124 = v263;
  sub_100043CB8();
  sub_10000A918(v116, v118, v120 & 1);

  (*(v262 + 1))(v112, v124);
  sub_100043668();
  sub_100009D50(v123, &qword_10005A950, &qword_1000478D0);
  if (*(v121 + v258[12]))
  {
    if (v268)
    {
      v125 = [objc_opt_self() mainBundle];
      v126 = sub_100044238();
      v127 = sub_100044238();
      v128 = [v125 localizedStringForKey:v126 value:0 table:v127];

      v129 = sub_100044258();
      v131 = v130;

      v132 = v294;
      if (qword_100058D70 != -1)
      {
        swift_once();
      }

      v133 = qword_10005C988;
      v297 = 0x4026000000000000;

      v134 = v243;
      sub_1000435A8();
      v135 = v280;
      v136 = (v134 + *(v280 + 20));
      *v136 = v129;
      v136[1] = v131;
      *(v134 + *(v135 + 24)) = v133;
      v137 = v284;
      sub_10003C444(v134, v284);
      v138 = 0;
    }

    else
    {
      v138 = 1;
      v137 = v284;
      v135 = v280;
      v132 = v294;
    }

    v139 = *(v289 + 56);
    v289 += 56;
    v262 = v139;
    v139(v137, v138, 1, v135);
    v140 = v281;
    sub_10003A1D8(v281);
    v141 = v282;
    sub_100044008();
    v142 = sub_100043FF8();
    v143 = v290 + 8;
    v144 = *(v290 + 8);
    v145 = v141;
    v146 = v283;
    (v144)(v145, v283);
    v290 = v143;
    v263 = v144;
    (v144)(v140, v146);
    if (v142)
    {
      if (qword_100058DB0 != -1)
      {
        swift_once();
      }

      v147 = qword_10005C9C8;

      if (!v132)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v147 = sub_100043D48();
      if (!v132)
      {
        goto LABEL_41;
      }
    }

    v148 = v132;
    v149 = [v148 stepCount];
    v150 = [objc_opt_self() countUnit];
    [v149 doubleValueForUnit:v150];
    v152 = v151;

    v153 = objc_opt_self();
    v154 = [objc_allocWithZone(NSNumber) initWithDouble:v152];
    v155 = [v153 stringWithNumber:v154 decimalPrecision:1 roundingMode:4];

    if (v155)
    {
      v156 = sub_100044258();
      v158 = v157;

LABEL_42:
      KeyPath = swift_getKeyPath();
      v161 = v244;
      *v244 = KeyPath;
      v261 = sub_1000028F8(&qword_100059B00, &qword_100046D80);
      swift_storeEnumTagMultiPayload();
      v162 = v270;
      v163 = *(v270 + 20);
      *(v161 + v163) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v297 = 0x4034000000000000;
      sub_1000435A8();
      *(v161 + v162[7]) = v147;
      v164 = (v161 + v162[8]);
      *v164 = v156;
      v164[1] = v158;
      v165 = (v161 + v162[9]);
      *v165 = 0;
      v165[1] = 0xE000000000000000;
      *(v161 + v162[10]) = v267;
      v166 = v291;
      sub_1000439B8();
      v167 = sub_10003C32C(&qword_10005A968, type metadata accessor for StandaloneMetricView, &unk_100047298);
      v168 = v246;
      sub_100043CF8();
      (v264)(v166, v292);
      sub_10003C374(v161, type metadata accessor for StandaloneMetricView);
      sub_10003E340(v132);
      v297 = v169;
      v298 = v170;
      v171 = sub_100043C48();
      v173 = v172;
      v175 = v174;
      v297 = v162;
      v298 = v167;
      v176 = 1;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v178 = v245;
      v179 = v273;
      v260 = OpaqueTypeConformance2;
      sub_100043CB8();
      sub_10000A918(v171, v173, v175 & 1);

      v180 = *(v286 + 8);
      v286 += 8;
      v259 = v180;
      (v180)(v168, v179);
      sub_100043668();
      sub_100009D50(v178, &qword_10005A938, &qword_1000478B8);
      v181 = v280;
      if (v268)
      {
        v182 = [objc_opt_self() mainBundle];
        v183 = sub_100044238();
        v184 = sub_100044238();
        v185 = [v182 localizedStringForKey:v183 value:0 table:v184];

        v186 = sub_100044258();
        v188 = v187;

        if (qword_100058D70 != -1)
        {
          swift_once();
        }

        v189 = qword_10005C988;
        v297 = 0x4026000000000000;

        v190 = v243;
        sub_1000435A8();
        v191 = (v190 + *(v181 + 20));
        *v191 = v186;
        v191[1] = v188;
        *(v190 + *(v181 + 24)) = v189;
        sub_10003C444(v190, v278);
        v176 = 0;
      }

      v262(v278, v176, 1, v181);
      v192 = v281;
      sub_10003A1D8(v281);
      v193 = v282;
      sub_100044008();
      v194 = sub_100043FF8();
      v195 = v193;
      v196 = v283;
      v197 = v263;
      (v263)(v195, v283);
      v197(v192, v196);
      if (v194)
      {
        v198 = v255;
        v199 = v294;
        if (qword_100058DB0 != -1)
        {
          swift_once();
        }

        v200 = qword_10005C9C8;
      }

      else
      {
        v200 = sub_100043D48();
        v198 = v255;
        v199 = v294;
      }

      v201 = sub_10003C800(v198, v199, v257, v256);
      v203 = v202;
      if (v242)
      {
        v204 = 0;
        v205 = 0xE000000000000000;
      }

      else
      {
        v204 = sub_10003E758(v198);
        v205 = v206;
      }

      v207 = swift_getKeyPath();
      v208 = v249;
      *v249 = v207;
      swift_storeEnumTagMultiPayload();
      v209 = v270;
      v210 = *(v270 + 20);
      *(v208 + v210) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v297 = 0x4034000000000000;
      sub_1000435A8();
      *(v208 + v209[7]) = v200;
      v211 = (v208 + v209[8]);
      *v211 = v201;
      v211[1] = v203;
      v212 = (v208 + v209[9]);
      *v212 = v204;
      v212[1] = v205;
      *(v208 + v209[10]) = v267;
      v213 = v291;
      sub_1000439B8();
      v214 = v250;
      sub_100043CF8();
      (v264)(v213, v292);
      sub_10003C374(v208, type metadata accessor for StandaloneMetricView);
      v297 = sub_10003E504(v198, v294);
      v298 = v215;
      v216 = sub_100043C48();
      v218 = v217;
      v220 = v219;
      v221 = v248;
      v222 = v273;
      sub_100043CB8();
      sub_10000A918(v216, v218, v220 & 1);

      (v259)(v214, v222);
      v223 = v251;
      sub_100043668();
      sub_100009D50(v221, &qword_10005A938, &qword_1000478B8);
      v224 = v285;
      sub_10000A1F8(v284, v285, &qword_10005A958, &qword_1000478D8);
      v225 = v253;
      sub_10000A1F8(v287, v253, &qword_10005A938, &qword_1000478B8);
      v226 = v278;
      v227 = v247;
      sub_10000A1F8(v278, v247, &qword_10005A958, &qword_1000478D8);
      v228 = v252;
      sub_10000A1F8(v223, v252, &qword_10005A938, &qword_1000478B8);
      v229 = v254;
      *v254 = 0;
      *(v229 + 8) = 0;
      v230 = sub_1000028F8(&qword_10005A970, &qword_100047990);
      sub_10000A1F8(v224, v229 + v230[12], &qword_10005A958, &qword_1000478D8);
      sub_10000A1F8(v225, v229 + v230[16], &qword_10005A938, &qword_1000478B8);
      v231 = v229 + v230[20];
      *v231 = 0;
      *(v231 + 8) = 0;
      sub_10000A1F8(v227, v229 + v230[24], &qword_10005A958, &qword_1000478D8);
      sub_10000A1F8(v228, v229 + v230[28], &qword_10005A938, &qword_1000478B8);
      sub_100009D50(v223, &qword_10005A938, &qword_1000478B8);
      sub_10003C2BC(v226);
      sub_100009D50(v287, &qword_10005A938, &qword_1000478B8);
      sub_10003C2BC(v284);
      sub_100009D50(v228, &qword_10005A938, &qword_1000478B8);
      sub_10003C2BC(v227);
      sub_100009D50(v225, &qword_10005A938, &qword_1000478B8);
      sub_10003C2BC(v224);
      sub_10003C3D4(v229, v288);
      v122 = 0;
      goto LABEL_55;
    }

LABEL_41:
    v158 = v256;

    v156 = v257;
    goto LABEL_42;
  }

LABEL_55:
  v232 = v288;
  (*(v275 + 56))(v288, v122, 1, v276);
  v233 = v269;
  v234 = v285;
  sub_10000A1F8(v269, v285, &qword_10005A958, &qword_1000478D8);
  v235 = v293;
  v236 = v272;
  sub_10000A1F8(v293, v272, &qword_10005A950, &qword_1000478D0);
  v237 = v274;
  sub_10000A1F8(v232, v274, &qword_10005A940, &qword_1000478C0);
  v238 = v277;
  sub_10000A1F8(v234, v277, &qword_10005A958, &qword_1000478D8);
  v239 = sub_1000028F8(&qword_10005A960, &qword_100047950);
  sub_10000A1F8(v236, v238 + *(v239 + 48), &qword_10005A950, &qword_1000478D0);
  sub_10000A1F8(v237, v238 + *(v239 + 64), &qword_10005A940, &qword_1000478C0);
  sub_100009D50(v232, &qword_10005A940, &qword_1000478C0);
  sub_100009D50(v235, &qword_10005A950, &qword_1000478D0);
  sub_10003C2BC(v233);
  sub_100009D50(v237, &qword_10005A940, &qword_1000478C0);
  sub_100009D50(v236, &qword_10005A950, &qword_1000478D0);
  return sub_10003C2BC(v234);
}

uint64_t sub_10003C25C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_100043858();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1000028F8(&qword_10005A908, &qword_100047888);
  return sub_10003A3E0(v2, a2 + *(v4 + 44));
}

uint64_t sub_10003C2BC(uint64_t a1)
{
  v2 = sub_1000028F8(&qword_10005A958, &qword_1000478D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003C32C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003C374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003C3D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_10005A928, &qword_1000478A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003C444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeaderLabel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C4AC()
{
  result = qword_10005A978;
  if (!qword_10005A978)
  {
    sub_100002940(&qword_10005A980, &qword_100047998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A978);
  }

  return result;
}

uint64_t sub_10003C510(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10003C558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10003C5D0(id a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v9 = a2;
  if ([v9 paused])
  {

LABEL_4:

    return;
  }

  if ([v9 activityMoveMode] == 2)
  {
    v10 = [v9 *a5];
    a1 = [a1 localizedStringWithMoveMinutes:v10];

    if (a1)
    {
LABEL_9:
      sub_100044258();

      return;
    }

    __break(1u);
  }

  v11 = [v9 *a6];
  a1 = [a1 localizedStringWithActiveEnergy:v11];

  if (a1)
  {
    goto LABEL_9;
  }

  __break(1u);
}

id sub_10003C738(void *a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v10 = a2;
  if ([v10 paused])
  {

LABEL_4:

    return a3;
  }

  v11 = [v10 *a5];
  result = [a1 *a6];
  if (result)
  {
    v13 = result;
    a3 = sub_100044258();

    return a3;
  }

  __break(1u);
  return result;
}

id sub_10003C800(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v6 = a2;
  result = [a1 unitManager];
  if (result)
  {
    v8 = result;
    v9 = [result userDistanceHKUnitForDistanceType:1];

    v10 = [v6 distanceWalkingRunning];
    [v10 doubleValueForUnit:v9];
    v12 = v11;

    v13 = objc_opt_self();
    v14 = [objc_allocWithZone(NSNumber) initWithDouble:v12];
    v15 = [v13 stringWithNumber:v14 decimalPrecision:2 roundingMode:4];

    if (v15)
    {
      a3 = sub_100044258();

      return a3;
    }

LABEL_6:

    return a3;
  }

  __break(1u);
  return result;
}

id sub_10003C95C(id a1)
{
  if (a1)
  {
    if ([a1 paused])
    {
      v5 = [objc_opt_self() mainBundle];
      v30._countAndFlagsBits = 0xE000000000000000;
      v31._object = 0x800000010004FE40;
      v31._countAndFlagsBits = 0xD000000000000020;
      v32.value._countAndFlagsBits = 0;
      v32.value._object = 0;
      v6.super.isa = v5;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v7 = sub_100043288(v31, v32, v6, v33, 0, v30);

      return v7;
    }

    v10 = [a1 activityMoveMode];
    v11 = &selRef__moveMinutesCompletionPercentage;
    if (v10 != 2)
    {
      v11 = &selRef__activeEnergyCompletionPercentage;
    }

    [a1 *v11];
    v9 = v12 * 100.0;
  }

  else
  {
    v9 = 0.0;
  }

  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v13 = result;
    v1 = v9;
    v14 = [result isStandalonePhoneFitnessMode];

    if (v14)
    {
      v15 = [objc_opt_self() mainBundle];
      v16 = sub_100044238();
      v17 = sub_100044238();
      v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

      sub_100044258();
      sub_1000028F8(&unk_100059790, &qword_100045CC0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000453B0;
      *(v19 + 56) = &type metadata for Int;
      *(v19 + 64) = &protocol witness table for Int;
      *(v19 + 32) = v1;
LABEL_25:
      v29 = sub_100044248();

      return v29;
    }

    if (!a1)
    {
      v2 = 0;
      v23 = 0.0;
LABEL_23:
      v3 = v23;
      if (qword_100058DF0 == -1)
      {
LABEL_24:
        v24 = [objc_opt_self() mainBundle];
        v25 = sub_100044238();
        v26 = sub_100044238();
        v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

        sub_100044258();
        sub_1000028F8(&unk_100059790, &qword_100045CC0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100047540;
        *(v28 + 56) = &type metadata for Int;
        *(v28 + 64) = &protocol witness table for Int;
        *(v28 + 32) = v1;
        *(v28 + 96) = &type metadata for Int;
        *(v28 + 104) = &protocol witness table for Int;
        *(v28 + 72) = v2;
        *(v28 + 136) = &type metadata for Int;
        *(v28 + 144) = &protocol witness table for Int;
        *(v28 + 112) = v3;
        goto LABEL_25;
      }

LABEL_33:
      swift_once();
      goto LABEL_24;
    }

    result = [a1 _exerciseTimeCompletionPercentage];
    v21 = v20 * 100.0;
    if (COERCE__INT64(fabs(v20 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v21 > -9.22337204e18)
    {
      if (v21 < 9.22337204e18)
      {
        result = [a1 _standHoursCompletionPercentage];
        v23 = v22 * 100.0;
        if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v23 > -9.22337204e18)
          {
            if (v23 < 9.22337204e18)
            {
              v2 = v21;
              goto LABEL_23;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        goto LABEL_35;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_10003CE88(id a1)
{
  if (a1)
  {
    if ([a1 paused])
    {
      v2 = [objc_opt_self() mainBundle];
      v41._countAndFlagsBits = 0xE000000000000000;
      v42._countAndFlagsBits = 0xD000000000000024;
      v42._object = 0x8000000100050110;
      v45.value._countAndFlagsBits = 0;
      v45.value._object = 0;
      v3.super.isa = v2;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      sub_100043288(v42, v45, v3, v48, 0, v41);

      return;
    }

    if ([a1 activityMoveMode] == 2)
    {
      v4 = [a1 appleMoveTime];
      v5 = objc_opt_self();
      v6 = [v5 minuteUnit];
      [v4 doubleValueForUnit:v6];
      v8 = v7;
      v9 = v7;

      if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v8 > -9.22337204e18)
        {
          if (v8 < 9.22337204e18)
          {
            v10 = [a1 appleMoveTimeGoal];
            v11 = [v5 minuteUnit];
            [v10 doubleValueForUnit:v11];
            v13 = v12;
            v14 = v12;

            if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v13 > -9.22337204e18)
              {
                if (v13 < 9.22337204e18)
                {
                  v15 = [objc_opt_self() mainBundle];
                  v41._countAndFlagsBits = 0xE000000000000000;
                  v43._object = 0x80000001000500F0;
                  v43._countAndFlagsBits = 0xD00000000000001BLL;
                  v46.value._countAndFlagsBits = 0;
                  v46.value._object = 0;
                  v16.super.isa = v15;
                  v49._countAndFlagsBits = 0;
                  v49._object = 0xE000000000000000;
                  sub_100043288(v43, v46, v16, v49, 0, v41);

                  sub_1000028F8(&unk_100059790, &qword_100045CC0);
                  v17 = swift_allocObject();
                  *(v17 + 16) = xmmword_100045500;
                  *(v17 + 56) = &type metadata for Int;
                  *(v17 + 64) = &protocol witness table for Int;
                  *(v17 + 32) = v8;
                  *(v17 + 96) = &type metadata for Int;
                  *(v17 + 104) = &protocol witness table for Int;
                  *(v17 + 72) = v13;
                  sub_100044248();

                  return;
                }

                goto LABEL_44;
              }

LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              return;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  if (qword_100058DE8 != -1)
  {
    swift_once();
  }

  v18 = [qword_10005CA00 unitManager];
  if (!v18)
  {
    goto LABEL_45;
  }

  v19 = v18;
  v20 = [v18 userActiveEnergyBurnedUnit];

  if (!a1)
  {
    v29 = 0;
    v27 = 0.0;
    goto LABEL_24;
  }

  v21 = [a1 activeEnergyBurned];
  [v21 doubleValueForUnit:v20];
  v23 = v22;
  v24 = v22;

  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_37;
  }

  if (v23 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v25 = [a1 activeEnergyBurnedGoal];
  [v25 doubleValueForUnit:v20];
  v27 = v26;
  v28 = v26;

  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v27 <= -9.22337204e18)
  {
    goto LABEL_35;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v29 = v23;
LABEL_24:
  sub_10003D4D8();
  v30 = objc_opt_self();
  v31 = [v30 kilocalorieUnit];
  v32 = sub_1000444A8();

  if (v32)
  {
    v33 = "VE_LABEL_KILOJOULES";
    v34 = 0xD000000000000025;
  }

  else
  {
    v35 = [v30 jouleUnitWithMetricPrefix:9];
    v36 = sub_1000444A8();

    v37 = (v36 & 1) == 0;
    if (v36)
    {
      v34 = 0xD000000000000023;
    }

    else
    {
      v34 = 0xD000000000000021;
    }

    if (v37)
    {
      v33 = "ANDALONE_MOVE_RING_LABEL_%@";
    }

    else
    {
      v33 = "VE_LABEL_CALORIES";
    }
  }

  v38 = [objc_opt_self() mainBundle];
  v41._countAndFlagsBits = 0xE000000000000000;
  v44._object = (v33 | 0x8000000000000000);
  v44._countAndFlagsBits = v34;
  v47.value._countAndFlagsBits = 0;
  v47.value._object = 0;
  v39.super.isa = v38;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  sub_100043288(v44, v47, v39, v50, 0, v41);

  sub_1000028F8(&unk_100059790, &qword_100045CC0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100045500;
  *(v40 + 56) = &type metadata for Int;
  *(v40 + 64) = &protocol witness table for Int;
  *(v40 + 32) = v29;
  *(v40 + 96) = &type metadata for Int;
  *(v40 + 104) = &protocol witness table for Int;
  *(v40 + 72) = v27;
  sub_100044248();
}

unint64_t sub_10003D4D8()
{
  result = qword_10005A988;
  if (!qword_10005A988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005A988);
  }

  return result;
}

id sub_10003D524(void *a1, id a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = [a2 activityMoveMode];
    a1 = v2;
    if (v3 == 2)
    {
      v4 = [objc_opt_self() mainBundle];
      v5 = sub_100044238();
      v6 = sub_100044238();
      v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

LABEL_5:
      v9 = sub_100044258();

      return v9;
    }
  }

  result = [a1 localizedShortActiveEnergyUnitString];
  v7 = result;
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_10003D650(id a1)
{
  if (a1 && [a1 paused])
  {
    v2 = [objc_opt_self() mainBundle];
    v17._countAndFlagsBits = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD000000000000028;
    v18._object = 0x80000001000501C0;
    v20.value._countAndFlagsBits = 0;
    v20.value._object = 0;
    v3.super.isa = v2;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_100043288(v18, v20, v3, v22, 0, v17);

    return;
  }

  v4 = [objc_opt_self() minuteUnit];
  if (!a1)
  {
    v13 = 0;
    v11 = 0.0;
    goto LABEL_13;
  }

  v5 = [a1 appleExerciseTime];
  [v5 doubleValueForUnit:v4];
  v7 = v6;
  v8 = v6;

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v7 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = [a1 appleExerciseTimeGoal];
  [v9 doubleValueForUnit:v4];
  v11 = v10;
  v12 = v10;

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v11 > -9.22337204e18)
    {
      if (v11 < 9.22337204e18)
      {
        v13 = v7;
LABEL_13:
        v14 = [objc_opt_self() mainBundle];
        v17._countAndFlagsBits = 0xE000000000000000;
        v19._object = 0x80000001000500F0;
        v19._countAndFlagsBits = 0xD00000000000001BLL;
        v21.value._countAndFlagsBits = 0;
        v21.value._object = 0;
        v15.super.isa = v14;
        v23._countAndFlagsBits = 0;
        v23._object = 0xE000000000000000;
        sub_100043288(v19, v21, v15, v23, 0, v17);

        sub_1000028F8(&unk_100059790, &qword_100045CC0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_100045500;
        *(v16 + 56) = &type metadata for Int;
        *(v16 + 64) = &protocol witness table for Int;
        *(v16 + 32) = v13;
        *(v16 + 96) = &type metadata for Int;
        *(v16 + 104) = &protocol witness table for Int;
        *(v16 + 72) = v11;
        sub_100044248();

        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10003D93C(id a1)
{
  if (!a1 || ![a1 paused])
  {
    v6 = [objc_opt_self() countUnit];
    if (!a1)
    {
      v15 = 0;
      v13 = 0.0;
      goto LABEL_15;
    }

    v7 = [a1 appleStandHours];
    [v7 doubleValueForUnit:v6];
    v9 = v8;
    v10 = v8;

    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    if (v9 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v9 < 9.22337204e18)
    {
      v11 = [a1 appleStandHoursGoal];
      [v11 doubleValueForUnit:v6];
      v13 = v12;
      v14 = v12;

      if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          v15 = v9;
LABEL_15:
          v16 = [objc_opt_self() mainBundle];
          v23._countAndFlagsBits = 0xE000000000000000;
          v24._object = 0x8000000100050140;
          v24._countAndFlagsBits = 0xD000000000000019;
          v25.value._countAndFlagsBits = 0;
          v25.value._object = 0;
          v17.super.isa = v16;
          v27._countAndFlagsBits = 0;
          v27._object = 0xE000000000000000;
          sub_100043288(v24, v25, v17, v27, 0, v23);

          sub_1000028F8(&unk_100059790, &qword_100045CC0);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_100045500;
          *(v18 + 56) = &type metadata for Int;
          *(v18 + 64) = &protocol witness table for Int;
          *(v18 + 32) = v15;
          *(v18 + 96) = &type metadata for Int;
          *(v18 + 104) = &protocol witness table for Int;
          *(v18 + 72) = v13;
          v19 = sub_100044248();

          return v19;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_100058DF0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v2 = *(qword_10005CA08 + OBJC_IVAR____TtC13FitnessWidget25FitnessWidgetDataProvider_isWheelchairUser);
  v3 = [objc_opt_self() mainBundle];
  if (v2 == 1)
  {
    v4 = "USED_STAND_DATA_LABEL";
    v23._countAndFlagsBits = 0xE000000000000000;
    v5._countAndFlagsBits = 0xD00000000000002ALL;
  }

  else
  {
    v4 = "ACCESSIBILITY_STAND_LABEL";
    v23._countAndFlagsBits = 0xE000000000000000;
    v5._countAndFlagsBits = 0xD000000000000025;
  }

  v5._object = (v4 | 0x8000000000000000);
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v21.super.isa = v3;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v22 = sub_100043288(v5, v26, v21, v28, 0, v23);

  return v22;
}

void sub_10003DC94(id a1)
{
  if (a1 && [a1 activityMoveMode] == 2)
  {
    v2 = [a1 appleMoveTime];
    v3 = [objc_opt_self() minuteUnit];
    [v2 doubleValueForUnit:v3];
    v5 = v4;
    v6 = v4;

    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 < 9.22337204e18)
        {
          v7 = [objc_opt_self() mainBundle];
          v8 = sub_100044238();
          v9 = sub_100044238();
          v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

          sub_100044258();
          sub_1000028F8(&unk_100059790, &qword_100045CC0);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_1000453B0;
          *(v11 + 56) = &type metadata for Int;
          *(v11 + 64) = &protocol witness table for Int;
          *(v11 + 32) = v5;
          sub_100044248();

          return;
        }

        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (qword_100058DE8 != -1)
  {
    swift_once();
  }

  v12 = [qword_10005CA00 unitManager];
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12;
  v14 = [v12 userActiveEnergyBurnedUnit];

  if (!a1)
  {
    goto LABEL_15;
  }

  v15 = [a1 activeEnergyBurned];
  [v15 doubleValueForUnit:v14];
  v17 = v16;
  v18 = v16;

  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v17 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v17 >= 9.22337204e18)
  {
    __break(1u);
LABEL_15:
    v17 = 0.0;
  }

  sub_10003D4D8();
  v19 = objc_opt_self();
  v20 = [v19 kilocalorieUnit];
  v21 = sub_1000444A8();

  if (v21)
  {
    v22 = 0xD00000000000002ELL;
    v23 = "VE_PROGRESS_LABEL_KILOJOULES";
  }

  else
  {
    v24 = [v19 jouleUnitWithMetricPrefix:9];
    v25 = sub_1000444A8();

    v26 = (v25 & 1) == 0;
    if (v25)
    {
      v22 = 0xD00000000000002CLL;
    }

    else
    {
      v22 = 0xD00000000000002ALL;
    }

    if (v26)
    {
      v23 = "NUTES_PROGRESS_LABEL";
    }

    else
    {
      v23 = "VE_PROGRESS_LABEL_CALORIES";
    }
  }

  v27 = [objc_opt_self() mainBundle];
  v30._countAndFlagsBits = 0xE000000000000000;
  v31._object = (v23 | 0x8000000000000000);
  v31._countAndFlagsBits = v22;
  v32.value._countAndFlagsBits = 0;
  v32.value._object = 0;
  v28.super.isa = v27;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100043288(v31, v32, v28, v33, 0, v30);

  sub_1000028F8(&unk_100059790, &qword_100045CC0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000453B0;
  *(v29 + 56) = &type metadata for Int;
  *(v29 + 64) = &protocol witness table for Int;
  *(v29 + 32) = v17;
  sub_100044248();
}

void sub_10003E170(void *a1)
{
  v2 = [objc_opt_self() minuteUnit];
  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = [a1 appleExerciseTime];
  [v3 doubleValueForUnit:v2];
  v5 = v4;
  v6 = v4;

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
LABEL_7:
        v7 = [objc_opt_self() mainBundle];
        v10._countAndFlagsBits = 0xE000000000000000;
        v11._object = 0x80000001000501F0;
        v11._countAndFlagsBits = 0xD000000000000024;
        v12.value._countAndFlagsBits = 0;
        v12.value._object = 0;
        v8.super.isa = v7;
        v13._countAndFlagsBits = 0;
        v13._object = 0xE000000000000000;
        sub_100043288(v11, v12, v8, v13, 0, v10);

        sub_1000028F8(&unk_100059790, &qword_100045CC0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1000453B0;
        *(v9 + 56) = &type metadata for Int;
        *(v9 + 64) = &protocol witness table for Int;
        *(v9 + 32) = v5;
        sub_100044248();

        return;
      }

      __break(1u);
LABEL_6:
      v5 = 0.0;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10003E340(void *a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v1 = [a1 stepCount];
  v2 = [objc_opt_self() countUnit];
  [v1 doubleValueForUnit:v2];
  v4 = v3;
  v5 = v3;

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
LABEL_7:
        v6 = [objc_opt_self() mainBundle];
        v9._countAndFlagsBits = 0xE000000000000000;
        v10._object = 0x8000000100050310;
        v10._countAndFlagsBits = 0xD000000000000019;
        v11.value._countAndFlagsBits = 0;
        v11.value._object = 0;
        v7.super.isa = v6;
        v12._countAndFlagsBits = 0;
        v12._object = 0xE000000000000000;
        sub_100043288(v10, v11, v7, v12, 0, v9);

        sub_1000028F8(&unk_100059790, &qword_100045CC0);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000453B0;
        *(v8 + 56) = &type metadata for Int;
        *(v8 + 64) = &protocol witness table for Int;
        *(v8 + 32) = v4;
        sub_100044248();

        return;
      }

      __break(1u);
LABEL_6:
      v4 = 0.0;
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

id sub_10003E504(void *a1, void *a2)
{
  result = [a1 unitManager];
  if (result)
  {
    v4 = result;
    v5 = [result userDistanceHKUnitForDistanceType:1];

    if (a2)
    {
      v6 = [a2 distanceWalkingRunning];
      [v6 doubleValueForUnit:v5];
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    sub_10003D4D8();
    v9 = [objc_opt_self() mileUnit];
    sub_1000444A8();

    v10 = [objc_opt_self() mainBundle];
    v11 = sub_100044238();

    v12 = sub_100044238();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    sub_100044258();
    sub_1000028F8(&unk_100059790, &qword_100045CC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000453B0;
    *(v14 + 56) = &type metadata for Double;
    *(v14 + 64) = &protocol witness table for Double;
    *(v14 + 32) = v8;
    v15 = sub_100044248();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10003E758(void *a1)
{
  result = [a1 unitManager];
  if (result)
  {
    v3 = result;
    v4 = [result userDistanceUnitForDistanceType:1];

    v5 = [a1 localizedShortUnitStringForDistanceUnit:v4];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    sub_100044258();

    sub_10000A8C4(v7, v8, v9);
    v10 = sub_1000444D8();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10003E858()
{
  result = [objc_allocWithZone(HKHealthStore) init];
  qword_10005C9F8 = result;
  return result;
}

void sub_10003E88C()
{
  if (qword_100058DE0 != -1)
  {
    swift_once();
  }

  v0 = qword_10005C9F8;
  v1 = objc_allocWithZone(FIUIUnitManager);
  v2 = v0;
  v3 = [v1 initWithHealthStore:v2];

  v4 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager:v3];
  if (v4)
  {
    qword_10005CA00 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_10003E950()
{
  if (qword_100058DE0 != -1)
  {
    swift_once();
  }

  v0 = qword_10005C9F8;
  type metadata accessor for FitnessWidgetDataProvider(0);
  swift_allocObject();
  v1 = v0;
  v2 = sub_1000155AC(v1);

  qword_10005CA08 = v2;
}

uint64_t sub_10003E9D8()
{
  v0 = sub_1000028F8(&qword_10005A998, &qword_100047A60);
  __chkstk_darwin(v0);
  v2 = &v14 - v1;
  v3 = sub_1000441D8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  if (qword_100058DE0 != -1)
  {
    swift_once();
  }

  v10 = qword_10005C9F8;
  sub_1000441C8();
  v11 = *(v4 + 16);
  v11(v6, v9, v3);
  v11(v2, v6, v3);
  sub_100043598();
  v12 = *(v4 + 8);
  v12(v9, v3);
  return (v12)(v6, v3);
}

uint64_t sub_10003EBC4@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_1000028F8(&qword_10005A9F8, &qword_100047C38);
  v48 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v45 - v2;
  v4 = sub_1000028F8(&qword_10005AA00, &qword_100047C40);
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  __chkstk_darwin(v4);
  v46 = &v45 - v6;
  v7 = sub_1000028F8(&qword_10005AA08, &qword_100047C48);
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  __chkstk_darwin(v7);
  v47 = &v45 - v9;
  v10 = sub_1000028F8(&qword_10005AA10, &qword_100047C50);
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  __chkstk_darwin(v10);
  v49 = &v45 - v12;
  v13 = sub_1000028F8(&qword_10005AA18, &qword_100047C58);
  v14 = *(v13 - 8);
  v57 = v13;
  v58 = v14;
  __chkstk_darwin(v13);
  v54 = &v45 - v15;
  v16 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:FINanoLifestylePreferencesDomain];
  v17 = sub_100044388();
  v18 = HKLogActivity;
  sub_1000028F8(&unk_100059790, &qword_100045CC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000453B0;
  *(v19 + 56) = &type metadata for Bool;
  *(v19 + 64) = &protocol witness table for Bool;
  *(v19 + 32) = 1;
  v20 = v18;
  sub_100043538(v17, &_mh_execute_header, v20, "FitnessWidgetProvider init isWidget %d", v45);

  LOBYTE(v60) = 1;
  v61 = 0xD00000000000001ELL;
  v62 = 0x8000000100050420;
  v63 = 0xD000000000000011;
  v64 = 0x8000000100050440;
  v65 = v16;
  type metadata accessor for FitnessWidgetView(0);
  v21 = sub_1000412D8(&qword_10005AA20, type metadata accessor for FitnessWidgetView, &unk_100045F44);
  sub_1000411B0(v21, v22, v23);
  sub_1000440A8();
  sub_1000438B8();
  v24 = sub_100043C38();
  v26 = v25;
  LOBYTE(v20) = v27;
  v28 = sub_100002F14(&qword_10005AA30, &qword_10005A9F8, &qword_100047C38, &protocol conformance descriptor for StaticConfiguration<A>);
  v29 = v46;
  sub_100043968();
  sub_10000A918(v24, v26, v20 & 1);

  (*(v48 + 8))(v3, v1);
  sub_1000438B8();
  v30 = sub_100043C38();
  v32 = v31;
  LOBYTE(v20) = v33;
  v60 = v1;
  v61 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v47;
  v36 = v50;
  sub_100043918();
  sub_10000A918(v30, v32, v20 & 1);

  (*(v51 + 8))(v29, v36);
  sub_100040F64();
  v60 = v36;
  v61 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v49;
  v39 = v52;
  sub_100043928();

  (*(v53 + 8))(v35, v39);
  sub_1000028F8(&qword_10005A9D0, &qword_100047B90);
  sub_100044068();
  *(swift_allocObject() + 16) = xmmword_100045500;
  sub_100044058();
  sub_100044048();
  sub_100040F64();
  v60 = v39;
  v61 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v42 = v54;
  v41 = v55;
  sub_100043938();

  (*(v56 + 8))(v38, v41);
  v60 = v41;
  v61 = v40;
  swift_getOpaqueTypeConformance2();
  v43 = v57;
  sub_100043978();
  return (*(v58 + 8))(v42, v43);
}

id sub_10003F3F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FitnessWidgetProvider.ActivityEntry(0);
  v5 = v4[7];
  v12 = *(a1 + v4[6]);
  v6 = type metadata accessor for FitnessWidgetView(0);
  sub_100041204(a1 + v5, a2 + v6[7]);
  v7 = v4[9];
  v8 = *(a1 + v4[8]);
  LOBYTE(a1) = *(a1 + v7);
  *a2 = swift_getKeyPath();
  sub_1000028F8(&qword_100059AF8, &unk_100045FF0);
  swift_storeEnumTagMultiPayload();
  v9 = v6[5];
  *(a2 + v9) = swift_getKeyPath();
  sub_1000028F8(&qword_100059B00, &qword_100046D80);
  swift_storeEnumTagMultiPayload();
  *(a2 + v6[6]) = v12;
  *(a2 + v6[8]) = v8;
  *(a2 + v6[9]) = a1;
  v10 = v8;

  return v12;
}

uint64_t sub_10003F514@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_1000028F8(&qword_10005AA38, &qword_100047C98);
  v41 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v40 - v2;
  v4 = sub_1000028F8(&qword_10005AA40, &qword_100047CA0);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  __chkstk_darwin(v4);
  v7 = &v40 - v6;
  v8 = sub_1000028F8(&qword_10005AA48, &qword_100047CA8);
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  __chkstk_darwin(v8);
  v40 = &v40 - v10;
  v11 = sub_1000028F8(&qword_10005AA50, &qword_100047CB0);
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  __chkstk_darwin(v11);
  v42 = &v40 - v13;
  v14 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:FINanoLifestylePreferencesDomain];
  v15 = sub_100044388();
  v16 = HKLogActivity;
  sub_1000028F8(&unk_100059790, &qword_100045CC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000453B0;
  *(v17 + 56) = &type metadata for Bool;
  *(v17 + 64) = &protocol witness table for Bool;
  *(v17 + 32) = 0;
  v18 = v16;
  sub_100043538(v15, &_mh_execute_header, v18, "FitnessWidgetProvider init isWidget %d", v40);

  LOBYTE(v50) = 0;
  v51 = 0xD00000000000001ELL;
  v52 = 0x8000000100050420;
  v53 = 0xD000000000000011;
  v54 = 0x8000000100050440;
  v55 = v14;
  type metadata accessor for FitnessComplicationView(0);
  v19 = sub_1000412D8(&qword_10005AA58, type metadata accessor for FitnessComplicationView, &unk_100046C88);
  sub_1000411B0(v19, v20, v21);
  sub_1000440A8();
  sub_1000438B8();
  v22 = sub_100043C38();
  v24 = v23;
  LOBYTE(v15) = v25;
  v26 = sub_100002F14(&qword_10005AA60, &qword_10005AA38, &qword_100047C98, &protocol conformance descriptor for StaticConfiguration<A>);
  sub_100043968();
  sub_10000A918(v22, v24, v15 & 1);

  (*(v41 + 8))(v3, v1);
  sub_1000438B8();
  v27 = sub_100043C38();
  v29 = v28;
  v31 = v30;
  v50 = v1;
  v51 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v40;
  v34 = v43;
  sub_100043918();
  sub_10000A918(v27, v29, v31 & 1);

  (*(v44 + 8))(v7, v34);
  sub_100040DD8();
  v50 = v34;
  v51 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v42;
  v37 = v45;
  sub_100043928();

  (*(v46 + 8))(v33, v37);
  v50 = v37;
  v51 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v47;
  sub_100043978();
  return (*(v48 + 8))(v36, v38);
}

id sub_10003FB9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_100058DE8 != -1)
  {
    swift_once();
  }

  v11 = qword_10005CA00;
  v4 = type metadata accessor for FitnessWidgetProvider.ActivityEntry(0);
  v5 = *(a1 + v4[10]);
  v6 = v4[7];
  v7 = *(a1 + v4[6]);
  v8 = type metadata accessor for FitnessComplicationView(0);
  sub_100041204(a1 + v6, a2 + v8[8]);
  *a2 = swift_getKeyPath();
  sub_1000028F8(&qword_100059AF8, &unk_100045FF0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v8[5]) = v11;
  *(a2 + v8[6]) = v5;
  *(a2 + v8[7]) = v7;
  v9 = v7;

  return v11;
}

uint64_t sub_10003FCB4@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v1 = sub_1000028F8(&qword_10005A9B0, &qword_100047B80);
  v79 = *(v1 - 8);
  v80 = v1;
  __chkstk_darwin(v1);
  v78 = &v57 - v2;
  v3 = sub_100043358();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100044228();
  __chkstk_darwin(v4 - 8);
  v60 = sub_1000028F8(&qword_100058E20, &qword_100045248);
  v61 = *(v60 - 8);
  __chkstk_darwin(v60);
  v6 = &v57 - v5;
  v65 = sub_1000028F8(&qword_100058E18, &qword_100045240);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v58 = &v57 - v7;
  v67 = sub_1000028F8(&qword_100058E10, &qword_100045238);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = &v57 - v8;
  v71 = sub_1000028F8(&qword_100058E08, &qword_100045230);
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v64 = &v57 - v9;
  v73 = sub_1000028F8(&qword_100058E00, &qword_100045228);
  v74 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v57 - v10;
  v59 = sub_1000028F8(&qword_100058DF8, &qword_100045220);
  v75 = *(v59 - 8);
  __chkstk_darwin(v59);
  v70 = &v57 - v11;
  v12 = sub_1000028F8(&qword_10005A9B8, &qword_100047B88);
  v76 = *(v12 - 8);
  v77 = v12;
  __chkstk_darwin(v12);
  v63 = &v57 - v13;
  type metadata accessor for QuickStartWorkoutWidgetView(0);
  v14 = sub_1000412D8(&qword_10005A9C0, type metadata accessor for QuickStartWorkoutWidgetView, &unk_100047CEC);
  sub_100040B58(v14, v15, v16);
  sub_1000440A8();
  sub_100044218();
  v57 = "OUT_WIDGET_TITLE";
  sub_100043348();
  v85 = sub_100044278();
  v86 = v17;
  sub_10000A8C4(v85, v17, v18);
  v19 = sub_100043C48();
  v21 = v20;
  v23 = v22;
  v24 = sub_100002F14(&qword_100058E28, &qword_100058E20, &qword_100045248, &protocol conformance descriptor for StaticConfiguration<A>);
  v25 = v60;
  sub_100043968();
  sub_10000A918(v19, v21, v23 & 1);

  v26 = v6;
  v27 = v25;
  (*(v61 + 8))(v26, v25);
  sub_100044218();
  sub_100043348();
  v28 = v59;
  v85 = sub_100044278();
  v86 = v29;
  v30 = sub_100043C48();
  v32 = v31;
  LOBYTE(v19) = v33;
  v85 = v27;
  v86 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v62;
  v36 = v65;
  v37 = v58;
  sub_100043918();
  sub_10000A918(v30, v32, v19 & 1);

  (*(v66 + 8))(v37, v36);
  sub_100040F64();
  v85 = v36;
  v86 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v64;
  v40 = v67;
  sub_100043928();

  (*(v68 + 8))(v35, v40);
  sub_1000028F8(&qword_10005A9D0, &qword_100047B90);
  sub_100044068();
  *(swift_allocObject() + 16) = xmmword_100047540;
  sub_100044058();
  sub_100044038();
  v41 = v63;
  sub_100044048();
  sub_100040F64();
  v85 = v40;
  v86 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v69;
  v44 = v71;
  sub_100043938();

  (*(v72 + 8))(v39, v44);
  v85 = v44;
  v86 = v42;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v70;
  v47 = v73;
  sub_100043978();
  (*(v74 + 8))(v43, v47);
  v85 = v47;
  v86 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  sub_100043958();
  (*(v75 + 8))(v46, v28);
  v49 = sub_100043458();
  v87 = v49;
  v50 = sub_1000412D8(&qword_10005A9D8, &type metadata accessor for WorkoutFeatures, &protocol conformance descriptor for WorkoutFeatures);
  v88 = v50;
  v51 = sub_1000410C0(&v85);
  v52 = *(*(v49 - 8) + 104);
  v52(v51, enum case for WorkoutFeatures.Kahana(_:), v49);
  if (os_variant_has_internal_content() & 1) != 0 || (sub_1000434C8())
  {
    v84[0] = v28;
    v84[1] = v48;
    swift_getOpaqueTypeConformance2();
    v54 = v77;
    v53 = v78;
    sub_100043948();
  }

  else
  {
    v84[3] = v49;
    v84[4] = v50;
    v55 = sub_1000410C0(v84);
    v52(v55, enum case for WorkoutFeatures.WorkoutPlatterRedesign(_:), v49);
    v82 = v28;
    v83 = v48;
    swift_getOpaqueTypeConformance2();
    v54 = v77;
    v53 = v78;
    sub_100043948();
    sub_10001A6DC(v84);
  }

  (*(v79 + 32))(v81, v53, v80);
  (*(v76 + 8))(v41, v54);
  return sub_10001A6DC(&v85);
}

uint64_t sub_100040900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  started = type metadata accessor for QuickStartWorkoutWidgetView(0);
  sub_100004D1C(a1, a2 + started[7]);
  KeyPath = swift_getKeyPath();
  *(a2 + started[6]) = swift_getKeyPath();
  sub_1000028F8(&qword_10005A9E8, &qword_100047BF8);
  swift_storeEnumTagMultiPayload();
  *a2 = swift_getKeyPath();
  sub_1000028F8(&qword_100059AF8, &unk_100045FF0);
  result = swift_storeEnumTagMultiPayload();
  v8 = a2 + started[5];
  *v8 = KeyPath;
  v8[8] = 0;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100040A10(*&argc, argv, envp);
  sub_1000435D8();
  return 0;
}

unint64_t sub_100040A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005A990;
  if (!qword_10005A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A990);
  }

  return result;
}

unint64_t sub_100040B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005A9C8;
  if (!qword_10005A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A9C8);
  }

  return result;
}

uint64_t sub_100040BFC()
{
  sub_1000437B8();
  sub_1000412D8(&qword_10005A9F0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_100043828();
  return v1;
}

void *sub_100040C78@<X0>(_BYTE *a1@<X8>)
{
  sub_1000437B8();
  sub_1000412D8(&qword_10005A9F0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_100043828();
  *a1 = v3;
  return result;
}

uint64_t sub_100040D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

void *sub_100040DD8()
{
  v0 = sub_100044238();
  v1 = MGGetSInt32Answer();

  if (!MTLCreateSystemDefaultDevice())
  {
    return &_swiftEmptyArrayStorage;
  }

  swift_unknownObjectRelease();
  if (v1 == 3)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000028F8(&qword_10005A9E0, &qword_100047B98);
  v3 = sub_100044028();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100047540;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, enum case for WidgetFamily.accessoryCircular(_:), v3);
  v9(v8 + v5, enum case for WidgetFamily.accessoryInline(_:), v3);
  v9(v8 + 2 * v5, enum case for WidgetFamily.accessoryRectangular(_:), v3);
  return v7;
}

void *sub_100040F64()
{
  v0 = sub_100044238();
  v1 = MGGetSInt32Answer();

  if (!MTLCreateSystemDefaultDevice())
  {
    return &_swiftEmptyArrayStorage;
  }

  swift_unknownObjectRelease();
  if (v1 == 3)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000028F8(&qword_10005A9E0, &qword_100047B98);
  v3 = sub_100044028();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100045500;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, enum case for WidgetFamily.systemSmall(_:), v3);
  v9(v8 + v5, enum case for WidgetFamily.systemMedium(_:), v3);
  return v7;
}

uint64_t *sub_1000410C0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1000411B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10005AA28;
  if (!qword_10005AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AA28);
  }

  return result;
}

uint64_t sub_100041204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000028F8(&qword_100058F90, qword_100045F10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000412D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100041320()
{
  sub_100002940(&qword_10005A9B8, &qword_100047B88);
  sub_100002940(&qword_100058DF8, &qword_100045220);
  sub_100002940(&qword_100058E00, &qword_100045228);
  sub_100002940(&qword_100058E08, &qword_100045230);
  sub_100002940(&qword_100058E10, &qword_100045238);
  sub_100002940(&qword_100058E18, &qword_100045240);
  sub_100002940(&qword_100058E20, &qword_100045248);
  sub_100002F14(&qword_100058E28, &qword_100058E20, &qword_100045248, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100041538()
{
  sub_100002940(&qword_10005AA18, &qword_100047C58);
  sub_100002940(&qword_10005AA10, &qword_100047C50);
  sub_100002940(&qword_10005AA08, &qword_100047C48);
  sub_100002940(&qword_10005AA00, &qword_100047C40);
  sub_100002940(&qword_10005A9F8, &qword_100047C38);
  sub_100002F14(&qword_10005AA30, &qword_10005A9F8, &qword_100047C38, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000416D0()
{
  sub_100002940(&qword_10005AA50, &qword_100047CB0);
  sub_100002940(&qword_10005AA48, &qword_100047CA8);
  sub_100002940(&qword_10005AA40, &qword_100047CA0);
  sub_100002940(&qword_10005AA38, &qword_100047C98);
  sub_100002F14(&qword_10005AA60, &qword_10005AA38, &qword_100047C98, &protocol conformance descriptor for StaticConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100041838(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000028F8(&qword_1000599A8, &unk_100045F00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_1000028F8(&qword_10005AA68, qword_100047CB8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  started = type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry(0);
  v16 = *(*(started - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, started);
}

uint64_t sub_1000419D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000028F8(&qword_1000599A8, &unk_100045F00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = sub_1000028F8(&qword_10005AA68, qword_100047CB8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  started = type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry(0);
  v16 = *(*(started - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, started);
}

uint64_t type metadata accessor for QuickStartWorkoutWidgetView(uint64_t a1)
{
  result = qword_10005AAC8;
  if (!qword_10005AAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100041BAC(uint64_t a1)
{
  sub_100041CE8(319, &qword_100059A20, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_100041C98();
    if (v2 <= 0x3F)
    {
      sub_100041CE8(319, &unk_10005AAE0, &type metadata accessor for RedactionReasons);
      if (v3 <= 0x3F)
      {
        type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100041C98()
{
  if (!qword_10005AAD8)
  {
    v0 = sub_100043578();
    if (!v1)
    {
      atomic_store(v0, &qword_10005AAD8);
    }
  }
}

void sub_100041CE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100043578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100041D58()
{
  v1 = sub_100043818();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for QuickStartWorkoutWidgetView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    v7 = sub_100044378();
    v8 = sub_100043A18();
    sub_100043538(v7, &_mh_execute_header, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

    sub_100043808();
    swift_getAtKeyPath();
    v9 = sub_1000428F0(v6, 0);
    (*(v2 + 8))(v4, v1, v9);
    LOBYTE(v6) = v11[15];
  }

  return v6 & 1;
}

uint64_t sub_100041EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100043818();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000028F8(&qword_10005A9E8, &qword_100047BF8);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  started = type metadata accessor for QuickStartWorkoutWidgetView(0);
  sub_10000A1F8(v1 + *(started + 24), v9, &qword_10005A9E8, &qword_100047BF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100043678();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_100044378();
    v14 = sub_100043A18();
    sub_100043538(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

    sub_100043808();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000420B8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v31 = sub_100043678();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000439F8();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100044128();
  v4 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000441B8();
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000441A8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000028F8(&qword_10005AB18, qword_100047D40);
  v25 = *(v23 - 8);
  __chkstk_darwin(v23);
  v15 = &v22 - v14;
  type metadata accessor for QuickStartWorkoutWidgetView(0);
  type metadata accessor for QuickStartWorkoutWidgetProvider.QuickStartWorkoutEntry(0);

  sub_10004255C(v9);
  (*(v4 + 104))(v6, enum case for QuickStartWorkoutControlType.link(_:), v22);
  sub_100041D58();
  sub_100044198();
  v16 = v24;
  sub_1000439E8();
  sub_100043EC8();
  v18 = sub_100042898(v17);
  sub_100043CE8();
  (*(v26 + 8))(v16, v27);
  (*(v11 + 8))(v13, v10);
  v19 = v28;
  sub_100041EB0(v28);
  v32 = v10;
  v33 = &type metadata for Color;
  v34 = v18;
  v35 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v20 = v23;
  sub_100043D08();
  (*(v29 + 8))(v19, v31);
  return (*(v25 + 8))(v15, v20);
}

uint64_t sub_10004255C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v20 = sub_100043818();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000028F8(&qword_100059AF8, &unk_100045FF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_100044028();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A1F8(v2, v8, &qword_100059AF8, &unk_100045FF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v13 = sub_100044378();
    v14 = sub_100043A18();
    sub_100043538(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

    sub_100043808();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v20);
  }

  v15 = (*(v10 + 88))(v12, v9);
  v16 = enum case for WidgetFamily.systemMedium(_:);
  v17 = sub_1000441B8();
  v18 = *(*(v17 - 8) + 104);
  if (v15 == v16)
  {
    return v18(v21, enum case for QuickStartWorkoutViewStyle.stacked(_:), v17);
  }

  v18(v21, enum case for QuickStartWorkoutViewStyle.fullSize(_:), v17);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10004286C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100043D38();
  *a2 = result;
  return result;
}

unint64_t sub_100042898(__n128 a1)
{
  result = qword_10005AB20;
  if (!qword_10005AB20)
  {
    sub_1000441A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005AB20);
  }

  return result;
}

double sub_1000428F0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100042924()
{
  sub_100002940(&qword_10005AB18, qword_100047D40);
  sub_1000441A8();
  sub_100042898(v0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000429F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_100043818();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000028F8(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_10000A1F8(v8, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = sub_100044378();
    v20 = sub_100043A18();
    sub_100043538(v19, &_mh_execute_header, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, &_swiftEmptyArrayStorage);

    sub_100043808();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

BOOL sub_100042C50(int a1, int a2, int a3)
{
  if (qword_10005C960 == -1)
  {
    v3 = dword_10005C950 < a1;
    if (dword_10005C950 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_1000431D8();
    a2 = v6;
    a3 = v5;
    v3 = dword_10005C950 < a1;
    if (dword_10005C950 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_10005C954 > a2)
  {
    return 1;
  }

  if (dword_10005C954 < a2)
  {
    return 0;
  }

  return dword_10005C958 >= a3;
}

uint64_t sub_100042D10(int a1, int a2, int a3, int a4)
{
  if (qword_10005C968 == -1)
  {
    if (qword_10005C970)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000431F0();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10005C970)
    {
      return _availability_version_check();
    }
  }

  if (qword_10005C960 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000431D8();
    a3 = v10;
    a4 = v9;
    v8 = dword_10005C950 < v11;
    if (dword_10005C950 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10005C954 > a3)
      {
        return 1;
      }

      if (dword_10005C954 >= a3)
      {
        return dword_10005C958 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10005C950 < a2;
  if (dword_10005C950 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100042EA4(uint64_t result)
{
  v1 = qword_10005C970;
  if (qword_10005C970)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10005C970 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10005C950, &dword_10005C954, &dword_10005C958);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}