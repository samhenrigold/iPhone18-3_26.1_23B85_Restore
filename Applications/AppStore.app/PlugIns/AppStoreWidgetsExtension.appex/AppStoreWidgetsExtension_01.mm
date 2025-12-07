uint64_t sub_10001D3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = sub_10004C280();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;

  sub_10004C720();
  sub_10004BF90();
  v23 = 1;
  v22 = 0;
  *&v21[39] = v26;
  *&v21[23] = v25;
  *&v21[7] = v24;
  v27[0] = v10;
  v27[1] = 0;
  LOBYTE(v28) = 1;
  *(&v28 + 1) = sub_10001F770;
  *&v29 = v11;
  *(&v29 + 1) = a4 * 0.5;
  v30[0] = 0;
  *&v30[48] = *(&v26 + 1);
  v12 = *&v21[32];
  *&v30[33] = *&v21[32];
  v13 = *&v21[16];
  *&v30[17] = *&v21[16];
  v14 = *v21;
  *&v30[1] = *v21;
  v15 = v28;
  v16 = v29;
  *a2 = v10;
  *(a2 + 16) = v15;
  v17 = *&v30[32];
  *(a2 + 64) = *&v30[16];
  *(a2 + 80) = v17;
  v18 = *v30;
  *(a2 + 32) = v16;
  *(a2 + 48) = v18;
  v20[104] = 0;
  *(a2 + 96) = *&v30[48];
  *(a2 + 104) = a4 * 0.5;
  *(a2 + 112) = 0;
  v31[0] = v10;
  v31[1] = 0;
  v32 = 1;
  v33 = sub_10001F770;
  v34 = v11;
  v35 = a4 * 0.5;
  v36 = 0;
  *&v39[15] = *&v21[47];
  *v39 = v12;
  v38 = v13;
  v37 = v14;
  sub_100003E3C(v27, v20, &qword_1000658A0, &qword_10004F0A0);
  return sub_100003EA4(v31, &qword_1000658A0, &qword_10004F0A0);
}

uint64_t sub_10001D580@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10004BFA0();
  result = sub_10001AEFC(a2);
  if (a2[2])
  {
    v6 = *(type metadata accessor for AppIcon(0) - 8);
    sub_10001F810(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a3, type metadata accessor for AppIcon);
    sub_10001AEFC(a2);
    sub_10001AEFC(a2);
    sub_10004C720();
    sub_10004BF90();
    v7 = (a3 + *(sub_100003650(&qword_100064888, &qword_10004DB10) + 36));
    *v7 = v9;
    v7[1] = v10;
    v7[2] = v11;
    result = sub_100003650(&qword_100065780, &qword_10004EFE8);
    v8 = a3 + *(result + 36);
    *v8 = 0x3FF0000000000000;
    *(v8 + 8) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = a4 * 0.5 * 0.5;
  v11 = sub_10004C280();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;

  v27 = 1;
  v26 = 0;
  v25 = 0;
  sub_10004C720();
  sub_10004BF90();
  *(&v23[4] + 7) = v24;
  *(&v23[2] + 7) = *&v23[9];
  *(v23 + 7) = *&v23[7];
  v22 = 0;
  v28[0] = v11;
  v28[1] = 0;
  LOBYTE(v29) = 1;
  *(&v29 + 1) = v10;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = sub_10001F74C;
  *&v31 = v12;
  *(&v31 + 1) = v10;
  v32[0] = 0;
  *&v32[48] = *(&v24 + 1);
  *&v32[33] = *&v23[4];
  *&v32[17] = *&v23[2];
  *&v32[1] = *v23;
  *&v21[55] = v31;
  *&v21[39] = v30;
  *&v21[23] = v29;
  *&v21[7] = v11;
  *&v21[119] = *&v32[48];
  *&v21[103] = *&v32[32];
  *&v21[87] = *&v32[16];
  *&v21[71] = *v32;
  v20[120] = 0;
  *a2 = v10;
  *(a2 + 8) = 0;
  v13 = *v21;
  v14 = *&v21[16];
  v15 = *&v21[32];
  *(a2 + 57) = *&v21[48];
  *(a2 + 41) = v15;
  *(a2 + 25) = v14;
  *(a2 + 9) = v13;
  v16 = *&v21[64];
  v17 = *&v21[80];
  v18 = *&v21[96];
  *(a2 + 120) = *&v21[111];
  *(a2 + 105) = v18;
  *(a2 + 89) = v17;
  *(a2 + 73) = v16;
  *(a2 + 136) = v10;
  *(a2 + 144) = 0;
  v33[0] = v11;
  v33[1] = 0;
  v34 = 1;
  v35 = v10;
  v36 = 0;
  v37 = sub_10001F74C;
  v38 = v12;
  v39 = v10;
  v40 = 0;
  *&v43[15] = *(&v23[5] + 7);
  *v43 = *&v23[4];
  v42 = *&v23[2];
  v41 = *v23;
  sub_100003E3C(v28, v20, &qword_1000658B8, &qword_10004F0B8);
  return sub_100003EA4(v33, &qword_1000658B8, &qword_10004F0B8);
}

uint64_t sub_10001D93C@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10004BFA0();
  result = sub_10001AEFC(a2);
  if (a2[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v6 = *(type metadata accessor for AppIcon(0) - 8);
    sub_10001F810(a2 + *(v6 + 72) + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a3, type metadata accessor for AppIcon);
    sub_10001AEFC(a2);
    sub_10001AEFC(a2);
    sub_10004C720();
    sub_10004BF90();
    v7 = (a3 + *(sub_100003650(&qword_100064888, &qword_10004DB10) + 36));
    *v7 = v11;
    v7[1] = v12;
    v7[2] = v13;
    v8 = a3 + *(sub_100003650(&qword_100065780, &qword_10004EFE8) + 36);
    *v8 = 0x3FF0000000000000;
    *(v8 + 8) = 0;
    sub_10004C5C0();
    v9 = sub_10004C5F0();

    result = sub_100003650(&qword_100065898, &qword_10004F098);
    v10 = a3 + *(result + 36);
    *v10 = v9;
    *(v10 + 8) = xmmword_10004EF00;
    *(v10 + 24) = 0xBFF0000000000000;
  }

  return result;
}

uint64_t sub_10001DB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = a4 * 0.5;
  v11 = sub_10004C280();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;

  sub_10004C720();
  sub_10004BF90();
  v28 = 1;
  v27 = 0;
  v23 = 0;
  v29 = v11;
  LOBYTE(v30) = 1;
  *(&v30 + 1) = v10;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = sub_10001F73C;
  *v32 = v12;
  v14 = v24;
  v13 = v25;
  *&v32[24] = v25;
  *&v32[8] = v24;
  v15 = v26;
  *&v32[40] = v26;
  *&v22[39] = v31;
  *&v22[23] = v30;
  *&v22[7] = v11;
  *&v22[103] = *(&v26 + 1);
  *&v22[87] = *&v32[32];
  *&v22[71] = *&v32[16];
  *&v22[55] = *v32;
  v16 = *&v22[48];
  *(a2 + 41) = *&v22[32];
  v17 = *v22;
  *(a2 + 25) = *&v22[16];
  *(a2 + 9) = v17;
  *(a2 + 104) = *&v22[95];
  v18 = *&v22[64];
  *(a2 + 89) = *&v22[80];
  *(a2 + 73) = v18;
  v19 = v23;
  *a2 = v10;
  *(a2 + 8) = v19;
  *(a2 + 57) = v16;
  v33[0] = v11;
  v33[1] = 0;
  v34 = 1;
  v35 = v10;
  v36 = 0;
  v37 = sub_10001F73C;
  v38 = v12;
  v40 = v13;
  v41 = v15;
  v39 = v14;
  sub_100003E3C(&v29, &v21, &qword_100065890, &qword_10004F090);
  return sub_100003EA4(v33, &qword_100065890, &qword_10004F090);
}

uint64_t sub_10001DCEC@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10004BFA0();
  result = sub_10001AEFC(a2);
  if (a2[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v6 = *(type metadata accessor for AppIcon(0) - 8);
    sub_10001F810(a2 + 2 * *(v6 + 72) + ((*(v6 + 80) + 32) & ~*(v6 + 80)), a3, type metadata accessor for AppIcon);
    sub_10001AEFC(a2);
    sub_10001AEFC(a2);
    sub_10004C720();
    sub_10004BF90();
    v7 = (a3 + *(sub_100003650(&qword_100064888, &qword_10004DB10) + 36));
    *v7 = v11;
    v7[1] = v12;
    v7[2] = v13;
    v8 = a3 + *(sub_100003650(&qword_100065780, &qword_10004EFE8) + 36);
    *v8 = 0x3FF0000000000000;
    *(v8 + 8) = 0;
    sub_10004C5C0();
    v9 = sub_10004C5F0();

    result = sub_100003650(&qword_100065898, &qword_10004F098);
    v10 = a3 + *(result + 36);
    *v10 = v9;
    *(v10 + 8) = xmmword_10004EF00;
    *(v10 + 24) = 0xBFF0000000000000;
  }

  return result;
}

void sub_10001DEC4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003650(&qword_100064888, &qword_10004DB10);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(&v45 - v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  __chkstk_darwin(v15);
  v53 = &v45 - v16;
  __chkstk_darwin(v17);
  v23 = &v45 - v22;
  v24 = a1[2];
  if (!v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  v47 = a2;
  v48 = v18;
  v49 = v21;
  v50 = v20;
  v51 = v19;
  v25 = *(type metadata accessor for AppIcon(0) - 8);
  v26 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  sub_10001F810(v26, v23, type metadata accessor for AppIcon);
  sub_10001AEFC(a1);
  sub_10001AEFC(a1);
  sub_10004C720();
  sub_10004BF90();
  v27 = &v23[*(v5 + 36)];
  v28 = v54[1];
  *v27 = v54[0];
  *(v27 + 1) = v28;
  *(v27 + 2) = v54[2];
  if (v24 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v52 = v23;
  v29 = *(v25 + 72);
  v30 = v53;
  sub_10001F810(&v26[v29], v53, type metadata accessor for AppIcon);
  sub_10001AEFC(a1);
  sub_10001AEFC(a1);
  sub_10004C720();
  sub_10004BF90();
  v31 = (v30 + *(v5 + 36));
  v32 = v54[4];
  *v31 = v54[3];
  v31[1] = v32;
  v31[2] = v54[5];
  if (v24 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = v14;
  sub_10001F810(&v26[2 * v29], v14, type metadata accessor for AppIcon);
  sub_10001AEFC(a1);
  sub_10001AEFC(a1);
  sub_10004C720();
  sub_10004BF90();
  v34 = &v14[*(v5 + 36)];
  v35 = v54[7];
  *v34 = v54[6];
  *(v34 + 1) = v35;
  *(v34 + 2) = v54[8];
  if (v24 != 3)
  {
    sub_10001F810(&v26[3 * v29], v11, type metadata accessor for AppIcon);
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v36 = &v11[*(v5 + 36)];
    v37 = v54[10];
    *v36 = v54[9];
    *(v36 + 1) = v37;
    *(v36 + 2) = v54[11];
    v38 = v48;
    sub_100003E3C(v52, v48, &qword_100064888, &qword_10004DB10);
    v39 = v53;
    v40 = v49;
    sub_100003E3C(v53, v49, &qword_100064888, &qword_10004DB10);
    v41 = v50;
    sub_100003E3C(v33, v50, &qword_100064888, &qword_10004DB10);
    v42 = v51;
    sub_100003E3C(v11, v51, &qword_100064888, &qword_10004DB10);
    v46 = v33;
    v43 = v47;
    sub_100003E3C(v38, v47, &qword_100064888, &qword_10004DB10);
    v44 = sub_100003650(&qword_1000658C0, &unk_10004F0C0);
    sub_100003E3C(v40, v43 + v44[12], &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v41, v43 + v44[16], &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v42, v43 + v44[20], &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v11, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v46, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v39, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v52, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v42, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v41, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v40, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v38, &qword_100064888, &qword_10004DB10);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10001E4D8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = type metadata accessor for DynamicTypeFont(0);
  __chkstk_darwin(v114);
  v6 = (&v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100003650(&qword_100065250, &unk_10004E730);
  __chkstk_darwin(v7 - 8);
  v113 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = &v103 - v10;
  v11 = sub_10004C200();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for AppIcon(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v110 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100003650(&qword_1000658C8, &qword_10004F0D0);
  __chkstk_darwin(v112);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v103 - v18;
  v20 = sub_100003650(&qword_100064888, &qword_10004DB10);
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  __chkstk_darwin(&v103 - v24);
  v26 = &v103 - v25;
  __chkstk_darwin(v27);
  v33 = a1[2];
  if (!v33)
  {
    __break(1u);
    goto LABEL_6;
  }

  v115 = v28;
  v116 = v19;
  v105 = v32;
  v106 = v31;
  v107 = v30;
  v108 = v16;
  v109 = a2;
  v34 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v117 = &v103 - v29;
  sub_10001F810(v34, &v103 - v29, type metadata accessor for AppIcon);
  sub_10001AEFC(a1);
  sub_10001AEFC(a1);
  sub_10004C720();
  sub_10004BF90();
  v35 = (v117 + *(v20 + 36));
  v36 = v119[1];
  *v35 = v119[0];
  v35[1] = v36;
  v35[2] = v119[2];
  if (v33 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v37 = *(v13 + 72);
  sub_10001F810(&v34[v37], v26, type metadata accessor for AppIcon);
  sub_10001AEFC(a1);
  sub_10001AEFC(a1);
  sub_10004C720();
  sub_10004BF90();
  v38 = &v26[*(v20 + 36)];
  v39 = v119[4];
  *v38 = v119[3];
  *(v38 + 1) = v39;
  *(v38 + 2) = v119[5];
  v40 = v33 - 3;
  if (v33 >= 3)
  {
    v41 = &v34[2 * v37];
    v42 = v115;
    v104 = v26;
    v103 = v40;
    sub_10001F810(v41, v115, type metadata accessor for AppIcon);
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v43 = (v42 + *(v20 + 36));
    v44 = v119[7];
    *v43 = v119[6];
    v43[1] = v44;
    v43[2] = v119[8];
    sub_10001AEFC(a1);
    v46 = v45;
    v48 = v47;
    v49 = v110;
    sub_10001F810(v41, v110, type metadata accessor for AppIcon);
    v50 = type metadata accessor for AppIconConfiguration(0);
    LOBYTE(v42) = *(v49 + v50[7]);
    sub_10001F878(v49, type metadata accessor for AppIconConfiguration);
    v51 = v116;
    sub_10004CB40();
    sub_10004BB60();
    *(v51 + v50[5]) = 0;
    v52 = v51 + v50[6];
    *v52 = v46;
    *(v52 + 8) = v48;
    *(v52 + 16) = 0;
    *(v51 + v50[7]) = v42;
    *(v51 + v50[8]) = 1;
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v53 = (v51 + *(v20 + 36));
    v54 = v119[10];
    *v53 = v119[9];
    v53[1] = v54;
    v53[2] = v119[11];
    sub_10004C1F0();
    v120._countAndFlagsBits = 0x2073756C70;
    v120._object = 0xE500000000000000;
    sub_10004C1E0(v120);
    v118 = v103;
    sub_10004C1C0();
    v121._countAndFlagsBits = 0;
    v121._object = 0xE000000000000000;
    sub_10004C1E0(v121);
    sub_10004C220();
    v55 = sub_10004C500();
    v57 = v56;
    v59 = v58;
    sub_10004C420();
    v103 = sub_10004C4C0();
    v61 = v60;
    v63 = v62;
    v110 = v64;
    sub_10001AC44(v55, v57, v59 & 1);

    v65 = sub_10004C470();
    v66 = enum case for ContentSizeCategory.large(_:);
    v67 = sub_10004C270();
    v68 = *(v67 - 8);
    v69 = v111;
    (*(v68 + 104))(v111, v66, v67);
    v70 = *(v68 + 56);
    v70(v69, 0, 1, v67);
    v71 = v113;
    sub_10001F794(v69, v113);
    *v6 = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v72 = v114;
    v73 = *(v114 + 20);
    *(v6 + v73) = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v74 = *(v72 + 28);
    v70(v6 + v74, 1, 1, v67);
    *(v6 + *(v72 + 24)) = v65;
    sub_100015C48(v71, v6 + v74);
    v75 = v116;
    v76 = &v116[*(v112 + 36)];
    v77 = sub_100003650(&qword_100065258, &qword_100050430);
    sub_10001F810(v6, &v76[*(v77 + 36)], type metadata accessor for DynamicTypeFont);
    *v76 = v103;
    *(v76 + 1) = v61;
    v76[16] = v63 & 1;
    *(v76 + 3) = v110;
    sub_10001F878(v6, type metadata accessor for DynamicTypeFont);
    *&v76[*(sub_100003650(&qword_1000658D0, &qword_10004F140) + 36)] = 256;
    KeyPath = swift_getKeyPath();
    v79 = &v76[*(sub_100003650(&qword_1000658D8, &qword_10004F178) + 36)];
    *v79 = KeyPath;
    *(v79 + 1) = 1;
    v79[16] = 0;
    v80 = swift_getKeyPath();
    v81 = &v76[*(sub_100003650(&qword_1000658E0, &qword_10004F1B0) + 36)];
    *v81 = v80;
    v81[1] = 0xC000000000000000;
    v82 = swift_getKeyPath();
    v83 = &v76[*(sub_100003650(&qword_1000658E8, &qword_10004F1E8) + 36)];
    *v83 = v82;
    v83[8] = 1;
    v84 = sub_10004C600();
    v85 = swift_getKeyPath();
    v86 = &v76[*(sub_100003650(&qword_1000658F0, &qword_10004F220) + 36)];
    *v86 = v85;
    v86[1] = v84;
    v87 = *(sub_100003650(&qword_1000658F8, &qword_10004F228) + 36);
    v88 = enum case for BlendMode.plusLighter(_:);
    v89 = sub_10004C740();
    (*(*(v89 - 8) + 104))(&v76[v87], v88, v89);
    v90 = sub_10004C720();
    v92 = v91;
    v93 = &v76[*(sub_100003650(&qword_100065900, &qword_10004F230) + 36)];
    *v93 = v90;
    v93[1] = v92;
    v94 = v105;
    sub_100003E3C(v117, v105, &qword_100064888, &qword_10004DB10);
    v95 = v104;
    v96 = v106;
    sub_100003E3C(v104, v106, &qword_100064888, &qword_10004DB10);
    v97 = v115;
    v98 = v107;
    sub_100003E3C(v115, v107, &qword_100064888, &qword_10004DB10);
    v99 = v75;
    v100 = v108;
    sub_100003E3C(v99, v108, &qword_1000658C8, &qword_10004F0D0);
    v101 = v109;
    sub_100003E3C(v94, v109, &qword_100064888, &qword_10004DB10);
    v102 = sub_100003650(&qword_100065908, &qword_10004F238);
    sub_100003E3C(v96, v101 + v102[12], &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v98, v101 + v102[16], &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v100, v101 + v102[20], &qword_1000658C8, &qword_10004F0D0);
    sub_100003EA4(v116, &qword_1000658C8, &qword_10004F0D0);
    sub_100003EA4(v97, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v95, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v117, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v100, &qword_1000658C8, &qword_10004F0D0);
    sub_100003EA4(v98, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v96, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v94, &qword_100064888, &qword_10004DB10);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_10001F1C8()
{
  result = qword_1000657D0;
  if (!qword_1000657D0)
  {
    sub_100003698(&qword_100065778, &qword_10004EFE0);
    sub_100003D30(&qword_1000657D8, &qword_1000657E0, &qword_10004F028, &protocol conformance descriptor for LazyVGrid<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000657D0);
  }

  return result;
}

unint64_t sub_10001F280()
{
  result = qword_1000657E8;
  if (!qword_1000657E8)
  {
    sub_100003698(&qword_100065760, &qword_10004EFC8);
    sub_100003D30(&qword_1000657F0, &qword_1000657F8, &unk_10004F030, &protocol conformance descriptor for LazyVGrid<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000657E8);
  }

  return result;
}

unint64_t sub_10001F338()
{
  result = qword_100065800;
  if (!qword_100065800)
  {
    sub_100003698(&qword_1000657A8, &qword_10004F010);
    sub_10001F3C4();
    sub_10001F554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065800);
  }

  return result;
}

unint64_t sub_10001F3C4()
{
  result = qword_100065808;
  if (!qword_100065808)
  {
    sub_100003698(&qword_1000657A0, &qword_10004F008);
    sub_10001F480(&qword_100064808, type metadata accessor for AppIcon, &unk_10004DE3C);
    sub_10001F4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065808);
  }

  return result;
}

uint64_t sub_10001F480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001F4C8()
{
  result = qword_100065810;
  if (!qword_100065810)
  {
    sub_100003698(&qword_100065780, &qword_10004EFE8);
    sub_10000F85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065810);
  }

  return result;
}

unint64_t sub_10001F554()
{
  result = qword_100065818;
  if (!qword_100065818)
  {
    sub_100003698(&qword_100065820, &qword_10004F040);
    sub_100003D30(&qword_100065828, &qword_100065830, &qword_10004F048, &protocol conformance descriptor for ZStack<A>);
    sub_100003D30(&qword_100065838, &qword_100065840, &qword_10004F050, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065818);
  }

  return result;
}

unint64_t sub_10001F634()
{
  result = qword_100065848;
  if (!qword_100065848)
  {
    sub_100003698(&qword_100065770, &qword_10004EFD8);
    sub_10001F1C8();
    sub_10001F280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065848);
  }

  return result;
}

uint64_t sub_10001F704()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F794(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065250, &unk_10004E730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001F8FC()
{
  result = qword_100065910;
  if (!qword_100065910)
  {
    sub_100003698(&qword_100065918, qword_10004F240);
    sub_10001F338();
    sub_10001F634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065910);
  }

  return result;
}

uint64_t sub_10001F9A4()
{
  type metadata accessor for SingleLineTextObserver.State(0);
  v0 = swift_allocObject();
  sub_10004BEA0();
  return v0;
}

uint64_t sub_10001FA1C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CardDetailView.Heading(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100003650(&qword_100064F98, qword_10004E520);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10001FB60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CardDetailView.Heading(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100003650(&qword_100064F98, qword_10004E520);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for IconFallbackTodayCardView(uint64_t a1)
{
  result = qword_100065978;
  if (!qword_100065978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001FCDC(uint64_t a1)
{
  sub_10001FF34(319, &qword_100065988, type metadata accessor for AppIcon, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_10001FF34(319, &qword_100065990, sub_1000129C0, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CardDetailView.Heading(319);
      if (v3 <= 0x3F)
      {
        sub_10001FE50();
        if (v4 <= 0x3F)
        {
          sub_10001FEA0(319);
          if (v5 <= 0x3F)
          {
            sub_10001FF34(319, &qword_100065010, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
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

void sub_10001FE50()
{
  if (!qword_100065998)
  {
    v0 = sub_10004CEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100065998);
    }
  }
}

void sub_10001FEA0(uint64_t a1)
{
  if (!qword_1000659A0)
  {
    type metadata accessor for SingleLineTextObserver.State(255);
    sub_10002175C(&qword_1000659A8, type metadata accessor for SingleLineTextObserver.State, &unk_10004ED08);
    v1 = sub_10004BF30();
    if (!v2)
    {
      atomic_store(v1, &qword_1000659A0);
    }
  }
}

void sub_10001FF34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10001FFB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for IconFallbackTodayCardView(0);
  sub_100003E3C(v1 + *(v10 + 40), v9, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004CB70();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10004CDD0();
    v13 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000201BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for IconFallbackTodayCardView(0);
  v4 = *(v3 + 24);
  type metadata accessor for SingleLineTextObserver.State(0);
  sub_10002175C(&qword_1000659A8, type metadata accessor for SingleLineTextObserver.State, &unk_10004ED08);
  v5 = sub_10004BF20();
  v6 = (v1 + *(v3 + 28));
  v8 = *v6;
  v7 = v6[1];
  v9 = sub_10004BF20();
  v10 = type metadata accessor for CardDetailView(0);
  sub_100021A14(v1 + v4, a1 + v10[8], type metadata accessor for CardDetailView.Heading);
  *a1 = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v10[5]) = swift_getKeyPath();
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v10[6]) = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v11 = v10[7];
  *(a1 + v11) = swift_getKeyPath();
  sub_100003650(&qword_100064960, &qword_10004DC30);
  swift_storeEnumTagMultiPayload();
  v12 = a1 + v10[9];
  *v12 = sub_100021A7C;
  *(v12 + 1) = v5;
  v12[16] = 0;
  v13 = (a1 + v10[10]);
  *v13 = v8;
  v13[1] = v7;
  v14 = a1 + v10[11];
  *v14 = sub_100021A7C;
  *(v14 + 1) = v9;
  v14[16] = 0;
  *(a1 + v10[12]) = 0x8000000000000000;
  *(a1 + v10[13]) = 0x7FF0000000000000;
  v15 = (a1 + v10[14]);
  *v15 = xmmword_10004E260;
  v15[1] = xmmword_10004E270;
}

uint64_t sub_100020448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_10004C710();
  a3[1] = v6;
  v7 = sub_100003650(&qword_1000659F0, &qword_10004F358);
  return sub_1000204A8(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_1000204A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v52 = a3;
  v50 = type metadata accessor for TitleView(0);
  __chkstk_darwin(v50);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v42 - v6);
  v47 = sub_100003650(&qword_1000659F8, &qword_10004F360);
  __chkstk_darwin(v47);
  v9 = &v42 - v8;
  v44 = sub_100003650(&qword_100065A00, &qword_10004F368);
  __chkstk_darwin(v44);
  v43 = &v42 - v10;
  v46 = sub_100003650(&qword_100065A08, &qword_10004F370);
  __chkstk_darwin(v46);
  v12 = &v42 - v11;
  v13 = sub_10004CB70();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  v20 = sub_100003650(&qword_100065A10, &qword_10004F378);
  __chkstk_darwin(v20 - 8);
  v49 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v48 = &v42 - v23;
  sub_10001FFB4(v19);
  (*(v14 + 104))(v16, enum case for WidgetFamily.systemSmall(_:), v13);
  sub_10002175C(&qword_100065328, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10004CD40();
  sub_10004CD40();
  v24 = *(v14 + 8);
  v24(v16, v13);
  v24(v19, v13);
  if (v54 == v53)
  {
    *v12 = sub_10004C290();
    *(v12 + 1) = 0;
    v12[16] = 0;
    v25 = sub_100003650(&qword_100065A48, &qword_10004F438);
    sub_100020BA8(a1, &v12[*(v25 + 44)]);
    sub_10004BFA0();
    sub_10004BFA0();
    sub_10004C720();
    sub_10004BF90();
    v26 = &v12[*(v46 + 36)];
    v27 = v55;
    *v26 = v54;
    *(v26 + 1) = v27;
    *(v26 + 2) = v56;
    v28 = &qword_100065A08;
    v29 = &qword_10004F370;
    sub_100003E3C(v12, v43, &qword_100065A08, &qword_10004F370);
    swift_storeEnumTagMultiPayload();
    sub_1000217A4();
    sub_100003D30(&qword_100065A38, &qword_1000659F8, &qword_10004F360, &protocol conformance descriptor for HStack<A>);
    v30 = v48;
    sub_10004C320();
    v31 = v12;
  }

  else
  {
    *v9 = sub_10004C1B0();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v32 = sub_100003650(&qword_100065A18, &qword_10004F380);
    sub_100020F30(a1, &v9[*(v32 + 44)]);
    v28 = &qword_1000659F8;
    v29 = &qword_10004F360;
    sub_100003E3C(v9, v43, &qword_1000659F8, &qword_10004F360);
    swift_storeEnumTagMultiPayload();
    sub_1000217A4();
    sub_100003D30(&qword_100065A38, &qword_1000659F8, &qword_10004F360, &protocol conformance descriptor for HStack<A>);
    v30 = v48;
    sub_10004C320();
    v31 = v9;
  }

  sub_100003EA4(v31, v28, v29);
  *v7 = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  v33 = v50;
  v34 = *(v50 + 20);
  *(v7 + v34) = swift_getKeyPath();
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  v35 = v33[6];
  *(v7 + v35) = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v36 = (v7 + v33[7]);
  *v36 = 0u;
  v36[1] = 0u;
  *(v7 + v33[8]) = 0;
  v37 = v49;
  sub_100003E3C(v30, v49, &qword_100065A10, &qword_10004F378);
  v38 = v51;
  sub_100021A14(v7, v51, type metadata accessor for TitleView);
  v39 = v52;
  sub_100003E3C(v37, v52, &qword_100065A10, &qword_10004F378);
  v40 = sub_100003650(&qword_100065A40, &qword_10004F430);
  sub_100021A14(v38, v39 + *(v40 + 48), type metadata accessor for TitleView);
  sub_100021870(v7);
  sub_100003EA4(v30, &qword_100065A10, &qword_10004F378);
  sub_100021870(v38);
  return sub_100003EA4(v37, &qword_100065A10, &qword_10004F378);
}

uint64_t sub_100020BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003650(&qword_100065A50, &qword_10004F440);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v30 - v8);
  v10 = type metadata accessor for IconFallbackTodayCardView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    v14 = sub_10004C1A0();
    sub_100021A14(a1, &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconFallbackTodayCardView);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    sub_100021678(v13, v16 + v15);
    v17 = sub_10004C3A0();
    LOBYTE(v44) = 0;
    LOBYTE(v36[0]) = 0;
    v38 = v14;
    LOBYTE(v39) = 0;
    *(&v39 + 1) = sub_100021984;
    *&v40 = v16;
    BYTE8(v40) = v17;
    __asm { FMOV            V0.2D, #16.0 }

    v41 = _Q0;
    v42 = 0uLL;
    v43 = 0;
  }

  else
  {
    LOBYTE(v36[0]) = 1;
    LOBYTE(v30) = 1;
    *&v38 = 0;
    BYTE8(v38) = 1;
    HIBYTE(v43) = 1;
  }

  sub_100003650(&qword_100065A58, &qword_10004F448);
  sub_1000218CC();
  sub_10004C320();
  sub_1000201BC(v9);
  *(v9 + *(sub_100003650(&qword_100065A78, &qword_10004F458) + 36)) = 256;
  *(v9 + *(v4 + 36)) = 0x3FF0000000000000;
  v32 = v46;
  v33 = v47;
  v34 = v48;
  v35 = v49;
  v30 = v44;
  v31 = v45;
  sub_100003E3C(v9, v6, &qword_100065A50, &qword_10004F440);
  v23 = v33;
  v36[2] = v32;
  v36[3] = v33;
  v24 = v34;
  v36[4] = v34;
  v25 = v35;
  v37 = v35;
  v26 = v30;
  v27 = v31;
  v36[0] = v30;
  v36[1] = v31;
  *(a2 + 32) = v32;
  *(a2 + 48) = v23;
  *(a2 + 64) = v24;
  *(a2 + 80) = v25;
  *a2 = v26;
  *(a2 + 16) = v27;
  v28 = sub_100003650(&qword_100065A80, &qword_10004F460);
  sub_100003E3C(v6, a2 + *(v28 + 48), &qword_100065A50, &qword_10004F440);
  sub_100003E3C(v36, &v38, &qword_100065A88, &qword_10004F468);
  sub_100003EA4(v9, &qword_100065A50, &qword_10004F440);
  sub_100003EA4(v6, &qword_100065A50, &qword_10004F440);
  v40 = v32;
  v41 = v33;
  v42 = v34;
  v43 = v35;
  v38 = v30;
  v39 = v31;
  return sub_100003EA4(&v38, &qword_100065A88, &qword_10004F468);
}

uint64_t sub_100020F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IconFallbackTodayCardView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100003650(&qword_100065A90, &qword_10004F4A8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  *v13 = sub_10004C290();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = sub_100003650(&qword_100065A98, &qword_10004F4B0);
  sub_1000212AC(&v13[*(v14 + 44)]);
  sub_10004BFA0();
  sub_10004C720();
  sub_10004BF90();
  v15 = &v13[*(v8 + 44)];
  v16 = v31[4];
  *(v15 + 1) = v31[3];
  *(v15 + 2) = v16;
  *v15 = v31[2];
  if (*(*a1 + 16))
  {
    sub_100021A14(a1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconFallbackTodayCardView);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    sub_100021678(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    v19 = sub_10004C3A0();
    LOBYTE(v30[0]) = 0;
    *&v32 = sub_100021C5C;
    *(&v32 + 1) = v18;
    LOBYTE(v33) = v19;

    v20 = xmmword_10004F2A0;
  }

  else
  {
    *&v33 = 0;
    v20 = 0uLL;
    v32 = 0u;
  }

  *(&v33 + 1) = 0;
  *v34 = v20;
  *&v34[16] = 0;
  v34[24] = 0;
  sub_100003E3C(v13, v10, &qword_100065A90, &qword_10004F4A8);
  v24 = v32;
  v25 = v33;
  v26[0] = *v34;
  *(v26 + 9) = *&v34[9];
  sub_100003E3C(v10, a2, &qword_100065A90, &qword_10004F4A8);
  v21 = (a2 + *(sub_100003650(&qword_100065AA0, &qword_10004F4B8) + 48));
  *(v29 + 9) = *(v26 + 9);
  v27 = v24;
  v28 = v25;
  v29[0] = v26[0];
  sub_100003E3C(&v27, v30, &qword_100065AA8, &qword_10004F4C0);
  sub_100003EA4(&v32, &qword_100065AA8, &qword_10004F4C0);
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  v21[2] = v29[0];
  *(v21 + 41) = *(v29 + 9);
  sub_100003EA4(v13, &qword_100065A90, &qword_10004F4A8);
  v30[0] = v24;
  v30[1] = v25;
  v31[0] = v26[0];
  *(v31 + 9) = *(v26 + 9);
  sub_100003EA4(v30, &qword_100065AA8, &qword_10004F4C0);
  return sub_100003EA4(v10, &qword_100065A90, &qword_10004F4A8);
}

uint64_t sub_1000212AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003650(&qword_100065A50, &qword_10004F440);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  sub_10004C720();
  sub_10004C040();
  *&v14[55] = v19;
  *&v14[71] = v20;
  *&v14[87] = v21;
  *&v14[103] = v22;
  *&v14[7] = v16;
  *&v14[23] = v17;
  v15 = 1;
  *&v14[39] = v18;
  sub_1000201BC(v8);
  *(v8 + *(sub_100003650(&qword_100065A78, &qword_10004F458) + 36)) = 256;
  *(v8 + *(v3 + 44)) = 0x3FF0000000000000;
  sub_100003E3C(v8, v5, &qword_100065A50, &qword_10004F440);
  v9 = *&v14[80];
  *(a1 + 73) = *&v14[64];
  *(a1 + 89) = v9;
  *(a1 + 105) = *&v14[96];
  v10 = *&v14[16];
  *(a1 + 9) = *v14;
  *(a1 + 25) = v10;
  v11 = *&v14[48];
  *(a1 + 41) = *&v14[32];
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 120) = *&v14[111];
  *(a1 + 57) = v11;
  v12 = sub_100003650(&qword_100065AB0, &qword_10004F4C8);
  sub_100003E3C(v5, a1 + *(v12 + 48), &qword_100065A50, &qword_10004F440);
  sub_100003EA4(v8, &qword_100065A50, &qword_10004F440);
  return sub_100003EA4(v5, &qword_100065A50, &qword_10004F440);
}

double sub_1000214EC@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;

  sub_10004BFA0();
  v5 = v4;
  v7 = v6;
  sub_10004BFA0();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8 + -16.0 + -12.0;
  result = 26.0;
  *(a2 + 32) = xmmword_10004F2B0;
  *(a2 + 48) = 0xC039000000000000;
  return result;
}

uint64_t sub_10002156C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100021A14(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconFallbackTodayCardView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100021678(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1000216DC;
  a2[1] = v7;
  return result;
}

uint64_t sub_100021678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconFallbackTodayCardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000216DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for IconFallbackTodayCardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100020448(a1, v6, a2);
}

uint64_t sub_10002175C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000217A4()
{
  result = qword_100065A20;
  if (!qword_100065A20)
  {
    sub_100003698(&qword_100065A08, &qword_10004F370);
    sub_100003D30(&qword_100065A28, &qword_100065A30, &qword_10004F388, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065A20);
  }

  return result;
}

uint64_t sub_100021870(uint64_t a1)
{
  v2 = type metadata accessor for TitleView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000218CC()
{
  result = qword_100065A60;
  if (!qword_100065A60)
  {
    sub_100003698(&qword_100065A58, &qword_10004F448);
    sub_100003D30(&qword_100065A68, &qword_100065A70, &qword_10004F450, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065A60);
  }

  return result;
}

void sub_100021984(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconFallbackTodayCardView(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_10004BFA0();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0x4010000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
}

uint64_t sub_100021A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021A8C()
{
  v1 = type metadata accessor for IconFallbackTodayCardView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];
  type metadata accessor for CardDetailView.Heading(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10004BB40();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  else
  {
  }

  sub_100021670(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  sub_100021670(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v8 = v1[10];
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10004CB70();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_100021C5C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconFallbackTodayCardView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1000214EC(v4, a1);
}

uint64_t sub_100021D40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F90, qword_10004E280);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_100003650(&qword_100065250, &unk_10004E730);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100021EEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100003650(&qword_100064F90, qword_10004E280);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_100003650(&qword_100065250, &unk_10004E730);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for DynamicTypeFont(uint64_t a1)
{
  result = qword_100065B20;
  if (!qword_100065B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000220D0(uint64_t a1)
{
  sub_100022204(319, &qword_100065010, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100022204(319, &qword_100065008, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100022204(319, &unk_100065B30, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100022204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100022284@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100003E3C(v2, &v14 - v9, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004CB70();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10004CDD0();
    v13 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100022484@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003650(&qword_100065080, &qword_10004E3B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DynamicTypeFont(0);
  sub_100003E3C(v1 + *(v10 + 20), v9, &qword_100065080, &qword_10004E3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004C270();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10004CDD0();
    v13 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10002268C(uint64_t a1)
{
  v3 = sub_10004CB70();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_100003650(&qword_1000651A0, &qword_10004E640);
  __chkstk_darwin(v8 - 8);
  v47 = &v44 - v9;
  v10 = sub_100003650(&qword_100065250, &unk_10004E730);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_10004C270();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  v20 = type metadata accessor for DynamicTypeFont(0);
  sub_100003E3C(v1 + *(v20 + 28), v12, &qword_100065250, &unk_10004E730);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100003EA4(v12, &qword_100065250, &unk_10004E730);
LABEL_20:

    return a1;
  }

  (*(v14 + 32))(v19, v12, v13);
  sub_100022484(v16);
  v21 = sub_1000116B4(v16, v19);
  v22 = *(v14 + 8);
  v22(v16, v13);
  if (!v21)
  {
    goto LABEL_19;
  }

  sub_10004C3C0();
  v23 = sub_10004C3E0();

  if ((v23 & 1) == 0)
  {
    sub_10004C400();
    v24 = sub_10004C3E0();

    if ((v24 & 1) == 0)
    {
      sub_10004C440();
      v25 = sub_10004C3E0();

      if ((v25 & 1) == 0)
      {
        sub_10004C450();
        v26 = sub_10004C3E0();

        if ((v26 & 1) == 0)
        {
          sub_10004C4A0();
          v27 = sub_10004C3E0();

          if ((v27 & 1) == 0)
          {
            sub_10004C3D0();
            v28 = sub_10004C3E0();

            if ((v28 & 1) == 0)
            {
              sub_10004C3F0();
              v32 = sub_10004C3E0();

              if ((v32 & 1) == 0)
              {
                sub_10004C460();
                v33 = sub_10004C3E0();

                if ((v33 & 1) == 0)
                {
                  sub_10004C490();
                  v34 = sub_10004C3E0();

                  if ((v34 & 1) == 0)
                  {
                    sub_10004C470();
                    v35 = sub_10004C3E0();

                    if ((v35 & 1) == 0)
                    {
                      sub_10004C480();
                      v36 = sub_10004C3E0();

                      if (v36)
                      {
                        sub_100022284(v7);
                        v38 = v44;
                        v37 = v45;
                        v39 = v46;
                        (*(v45 + 104))(v44, enum case for WidgetFamily.systemSmall(_:), v46);
                        sub_100022DDC();
                        sub_10004CD40();
                        sub_10004CD40();
                        v40 = *(v37 + 8);
                        v40(v38, v39);
                        v40(v7, v39);
                        v41 = sub_10004C410();
                        v42 = v47;
                        (*(*(v41 - 8) + 56))(v47, 1, 1, v41);
                        a1 = sub_10004C430();
                        v31 = v42;
                        goto LABEL_11;
                      }

LABEL_19:
                      v22(v19, v13);
                      goto LABEL_20;
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

  v29 = sub_10004C410();
  v30 = v47;
  (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
  a1 = sub_10004C430();
  v31 = v30;
LABEL_11:
  sub_100003EA4(v31, &qword_1000651A0, &qword_10004E640);
  v22(v19, v13);
  return a1;
}

uint64_t sub_100022D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10002268C(*(v3 + *(a2 + 24)));
  KeyPath = swift_getKeyPath();
  v8 = sub_100003650(&qword_100065B68, &qword_10004F590);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = sub_100003650(&qword_100065B70, &unk_10004F598);
  v10 = (a3 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v6;
  return result;
}

unint64_t sub_100022DDC()
{
  result = qword_100065328;
  if (!qword_100065328)
  {
    sub_10004CB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065328);
  }

  return result;
}

unint64_t sub_100022E38()
{
  result = qword_100065B78;
  if (!qword_100065B78)
  {
    sub_100003698(&qword_100065B70, &unk_10004F598);
    sub_100003D30(&qword_100065B80, &qword_100065B68, &qword_10004F590, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100003D30(&qword_1000651F0, &qword_1000651F8, &qword_10004E6E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065B78);
  }

  return result;
}

id sub_100022F1C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v4 = v2;
  result = [objc_opt_self() _iconVariantForUIApplicationIconFormat:2 scale:&v4];
  dword_100065B88 = result;
  return result;
}

void sub_100022FD8()
{
  if (qword_100064700 != -1)
  {
    swift_once();
  }

  LIIconOutputSizeForVariant();
  qword_100065B90 = v0;
  qword_100065B98 = v1;
}

void sub_100023034()
{
  if (qword_100064700 != -1)
  {
    swift_once();
  }

  LIIconContinuousCornerRadiusForVariant();
  qword_100065BA0 = v0;
}

uint64_t sub_1000230A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000231BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for TodayWidgetSmallMediumEntryView(uint64_t a1)
{
  result = qword_100065C08;
  if (!qword_100065C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002331C(uint64_t a1)
{
  sub_100023400(319, &qword_100065010, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100023400(319, &unk_100065C18, type metadata accessor for WidgetTodayCard, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100023400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100023480@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100003E3C(v2, &v14 - v9, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004CB70();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10004CDD0();
    v13 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100023680@<X0>(char *a1@<X8>)
{
  v26 = a1;
  v2 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_10004BB40();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for TodayWidgetSmallMediumEntryView(0) + 20);
  v25 = v1;
  v16 = v1 + v15;
  v17 = v15;
  sub_100003E3C(v16, v7, &qword_100065BA8, qword_10004F5A8);
  v18 = type metadata accessor for WidgetTodayCard(0);
  v19 = *(*(v18 - 8) + 48);
  if (v19(v7, 1, v18) == 1)
  {
    sub_100003EA4(v7, &qword_100065BA8, qword_10004F5A8);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  else
  {
    sub_100003E3C(&v7[*(v18 + 48)], v10, &qword_1000655E8, &qword_10004F6C0);
    sub_100026988(v7, type metadata accessor for WidgetTodayCard);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v23 = *(v12 + 32);
      v23(v14, v10, v11);
      v23(v26, v14, v11);
      type metadata accessor for CardDetailView.Heading(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  sub_100003EA4(v10, &qword_1000655E8, &qword_10004F6C0);
  sub_100003E3C(v25 + v17, v4, &qword_100065BA8, qword_10004F5A8);
  if (v19(v4, 1, v18) == 1)
  {
    sub_100003EA4(v4, &qword_100065BA8, qword_10004F5A8);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = *(v4 + 2);
    v21 = *(v4 + 3);

    sub_100026988(v4, type metadata accessor for WidgetTodayCard);
  }

  v22 = v26;
  *v26 = v20;
  *(v22 + 1) = v21;
  type metadata accessor for CardDetailView.Heading(0);
  return swift_storeEnumTagMultiPayload();
}

void *sub_100023A28()
{
  v1 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for WidgetTodayCard(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayWidgetSmallMediumEntryView(0);
  sub_100003E3C(v0 + *(v8 + 20), v3, &qword_100065BA8, qword_10004F5A8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100003EA4(v3, &qword_100065BA8, qword_10004F5A8);
    return 0;
  }

  else
  {
    sub_1000270EC(v3, v7, type metadata accessor for WidgetTodayCard);
    if (*(*(v7 + 8) + 16) == 1)
    {
      v9 = *(v7 + 9);
      v10 = v9;
    }

    else
    {
      v9 = 0;
    }

    sub_100026988(v7, type metadata accessor for WidgetTodayCard);
  }

  return v9;
}

uint64_t sub_100023BF0()
{
  v0 = sub_10004C4E0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10004C200();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10004BB40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v19[-v7];
  v9 = type metadata accessor for CardDetailView.Heading(0);
  __chkstk_darwin(v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100023680(v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v8, v11, v2);
    sub_10004C1F0();
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    sub_10004C1E0(v20);
    (*(v3 + 16))(v5, v8, v2);
    sub_10004C4D0();
    v12 = sub_10004C4F0();
    v14 = v13;
    v16 = v15;
    sub_10004C1D0();
    sub_10001AC44(v12, v14, v16 & 1);

    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_10004C1E0(v21);
    sub_10004C220();
    v17 = sub_10004C500();
    (*(v3 + 8))(v8, v2);
    return v17;
  }

  else
  {
    if (*(v11 + 1))
    {
      sub_10004C240();
    }

    else
    {
      sub_10004C210();
    }

    return sub_10004C500();
  }
}

uint64_t sub_100023F44()
{
  v1 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TodayWidgetSmallMediumEntryView(0);
  sub_100003E3C(v0 + *(v4 + 20), v3, &qword_100065BA8, qword_10004F5A8);
  v5 = type metadata accessor for WidgetTodayCard(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_100003EA4(v3, &qword_100065BA8, qword_10004F5A8);
LABEL_5:
    sub_10004C210();
    return sub_10004C500();
  }

  v6 = *(v3 + 5);

  sub_100026988(v3, type metadata accessor for WidgetTodayCard);
  if (!v6)
  {
    goto LABEL_5;
  }

  sub_10004C240();
  return sub_10004C500();
}

uint64_t sub_1000240BC()
{
  v1 = sub_10004C200();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for TodayWidgetSmallMediumEntryView(0);
  sub_100003E3C(v0 + *(v5 + 20), v4, &qword_100065BA8, qword_10004F5A8);
  v6 = type metadata accessor for WidgetTodayCard(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_100003EA4(v4, &qword_100065BA8, qword_10004F5A8);
  if (v7 == 1)
  {
    sub_10004C210();
  }

  else
  {
    sub_10004C1F0();
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_10004C1E0(v19);
    v8 = sub_100023BF0();
    v10 = v9;
    v12 = v11;
    sub_10004C1D0();
    sub_10001AC44(v8, v10, v12 & 1);

    v20._countAndFlagsBits = 8236;
    v20._object = 0xE200000000000000;
    sub_10004C1E0(v20);
    v13 = sub_100023F44();
    v15 = v14;
    LOBYTE(v10) = v16;
    sub_10004C1D0();
    sub_10001AC44(v13, v15, v10 & 1);

    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_10004C1E0(v21);
    sub_10004C220();
  }

  return sub_10004C500();
}

uint64_t sub_100024344@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  __chkstk_darwin(v3 - 8);
  v40 = &v35 - v4;
  v5 = sub_10004C360();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C380();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100003650(&qword_100065C48, &qword_10004F640);
  __chkstk_darwin(v35);
  v11 = &v35 - v10;
  v42 = sub_100003650(&qword_100065C50, &qword_10004F648);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v35 - v12;
  v14 = sub_100003650(&qword_100065C58, &qword_10004F650);
  v43 = *(v14 - 8);
  v44 = v14;
  __chkstk_darwin(v14);
  v41 = &v35 - v15;
  sub_1000248E8(v1, v11);
  sub_10004C370();
  v49 = v1;
  sub_10004C720();
  v16 = sub_100003650(&qword_100065C60, &qword_10004F658);
  v17 = sub_1000260F8();
  v18 = v13;
  v19 = v35;
  v20 = sub_100026678(&qword_100065CF0, &qword_100065C60, &qword_10004F658, sub_10002672C);
  v36 = v16;
  sub_10004C580();
  (*(v37 + 8))(v9, v38);
  sub_100003EA4(v11, &qword_100065C48, &qword_10004F640);
  v21 = type metadata accessor for TodayWidgetSmallMediumEntryView(0);
  v22 = v40;
  sub_100003E3C(v2 + *(v21 + 20), v40, &qword_100065BA8, qword_10004F5A8);
  v23 = type metadata accessor for WidgetTodayCard(0);
  LODWORD(v16) = (*(*(v23 - 8) + 48))(v22, 1, v23);
  sub_100003EA4(v22, &qword_100065BA8, qword_10004F5A8);
  v24 = v45;
  if (v16 == 1)
  {
    sub_10004C350();
  }

  else
  {
    sub_10004C340();
  }

  v50 = v19;
  v51 = v36;
  v52 = v17;
  v53 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v41;
  v26 = v42;
  sub_10004C590();
  (*(v46 + 8))(v24, v47);
  (*(v39 + 8))(v18, v26);
  v28 = sub_1000240BC();
  v30 = v29;
  v32 = v31;
  v50 = v26;
  v51 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v44;
  sub_10004C570();
  sub_10001AC44(v28, v30, v32 & 1);

  return (*(v43 + 8))(v27, v33);
}

uint64_t sub_1000248E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v129 = a1;
  v2 = type metadata accessor for AppIcon(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for IconFallbackTodayCardView(0);
  __chkstk_darwin(v102);
  v106 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100003650(&qword_100065CC0, &qword_10004F688);
  __chkstk_darwin(v103);
  v104 = &v99 - v7;
  v121 = sub_100003650(&qword_100065CA8, &qword_10004F680);
  __chkstk_darwin(v121);
  v105 = &v99 - v8;
  v122 = sub_100003650(&qword_100065D48, &qword_10004F708);
  v108 = *(v122 - 8);
  __chkstk_darwin(v122);
  v107 = &v99 - v9;
  v118 = sub_100003650(&qword_100065D50, &qword_10004F710);
  __chkstk_darwin(v118);
  v120 = &v99 - v10;
  v11 = sub_10004BF00();
  v12 = *(v11 - 8);
  v123 = v11;
  v124 = v12;
  __chkstk_darwin(v11);
  v101 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v112 = &v99 - v15;
  v109 = type metadata accessor for BrandedTodayCardView(0);
  __chkstk_darwin(v109);
  v110 = (&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = sub_100003650(&qword_100065C90, &unk_10004F670);
  __chkstk_darwin(v116);
  v111 = &v99 - v17;
  v117 = sub_100003650(&qword_100065D58, &qword_10004F718);
  v114 = *(v117 - 8);
  __chkstk_darwin(v117);
  v113 = &v99 - v18;
  v127 = sub_100003650(&qword_100065C88, &qword_10004F668);
  __chkstk_darwin(v127);
  v119 = &v99 - v19;
  v125 = sub_100003650(&qword_100065D60, &qword_10004F720);
  __chkstk_darwin(v125);
  v21 = &v99 - v20;
  v126 = sub_100003650(&qword_100065CE8, &qword_10004F698);
  __chkstk_darwin(v126);
  v23 = (&v99 - v22);
  v24 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  __chkstk_darwin(v24 - 8);
  v26 = &v99 - v25;
  v27 = type metadata accessor for WidgetTodayCard(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = (&v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for TodayWidgetSmallMediumEntryView(0);
  sub_100003E3C(v129 + *(v31 + 20), v26, &qword_100065BA8, qword_10004F5A8);
  v32 = *(v28 + 48);
  v115 = v27;
  if (v32(v26, 1, v27) == 1)
  {
    sub_100003EA4(v26, &qword_100065BA8, qword_10004F5A8);
    *v23 = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v33 = type metadata accessor for PlaceholderTodayCardView(0);
    v34 = *(v33 + 20);
    *(v23 + v34) = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v35 = (v23 + *(v33 + 24));
    *v35 = 0u;
    v35[1] = 0u;
    v36 = (v23 + *(v126 + 36));
    v37 = sub_100003650(&qword_1000653E8, &qword_10004F9C0);
    (*(v124 + 104))(v36 + *(v37 + 28), enum case for ColorScheme.dark(_:), v123);
    *v36 = swift_getKeyPath();
    sub_100003E3C(v23, v21, &qword_100065CE8, &qword_10004F698);
    swift_storeEnumTagMultiPayload();
    sub_100026208();
    sub_100026590();
    sub_10004C320();
    return sub_100003EA4(v23, &qword_100065CE8, &qword_10004F698);
  }

  else
  {
    v100 = v21;
    sub_1000270EC(v26, v30, type metadata accessor for WidgetTodayCard);
    v39 = v30[7];
    if (v39)
    {
      v40 = v30[9];
      v41 = v109;
      v42 = *(v109 + 40);
      v43 = v40;
      v44 = v39;
      v108 = v44;
      v45 = v110;
      sub_100023680(v110 + v42);
      v46 = v30;
      v47 = v30[4];
      v48 = v46[5];
      *v45 = swift_getKeyPath();
      sub_100003650(&qword_100065078, &qword_10004E9D0);
      swift_storeEnumTagMultiPayload();
      *(v45 + v41[5]) = swift_getKeyPath();
      sub_100003650(&qword_100065080, &qword_10004E3B0);
      swift_storeEnumTagMultiPayload();
      *(v45 + v41[7]) = swift_getKeyPath();
      sub_100003650(&qword_100064960, &qword_10004DC30);
      swift_storeEnumTagMultiPayload();
      v49 = v41[6];
      *(v45 + v49) = swift_getKeyPath();
      sub_100003650(&qword_100064958, &qword_10004FA30);
      swift_storeEnumTagMultiPayload();
      *(v45 + v41[8]) = v44;
      *(v45 + v41[9]) = v40;
      v50 = (v45 + v41[11]);
      *v50 = v47;
      v50[1] = v48;
      v51 = v45 + v41[12];
      *v51 = sub_100021D20;
      *(v51 + 1) = 0;
      v51[16] = 0;
      v52 = v45 + v41[13];
      *v52 = sub_100021D20;
      *(v52 + 1) = 0;
      v52[16] = 0;
      v53 = v123;
      v54 = v124;
      v55 = &enum case for ColorScheme.dark(_:);
      if (!*(v46 + 48))
      {
        v55 = &enum case for ColorScheme.light(_:);
      }

      v56 = v112;
      (*(v124 + 104))(v112, *v55, v123);
      KeyPath = swift_getKeyPath();
      v58 = v116;
      v59 = v111;
      v60 = &v111[*(v116 + 36)];
      v61 = sub_100003650(&qword_1000653E8, &qword_10004F9C0);
      (*(v54 + 32))(v60 + *(v61 + 28), v56, v53);
      *v60 = KeyPath;
      sub_1000270EC(v45, v59, type metadata accessor for BrandedTodayCardView);
      v62 = sub_100026308();

      v63 = v113;
      sub_10004C520();
      sub_100003EA4(v59, &qword_100065C90, &unk_10004F670);
      v64 = v114;
      v65 = v117;
      v114[2](v120, v63, v117);
      swift_storeEnumTagMultiPayload();
      v130 = v58;
      v131 = v62;
      v30 = v46;
      swift_getOpaqueTypeConformance2();
      v66 = sub_1000263F0();
      v130 = v121;
      v131 = v66;
      swift_getOpaqueTypeConformance2();
      v67 = v119;
      sub_10004C320();

      (v64[1])(v63, v65);
    }

    else
    {
      v68 = v30[8];
      v69 = *(v68 + 2);
      v70 = _swiftEmptyArrayStorage;
      if (v69)
      {
        v114 = v30;
        v130 = _swiftEmptyArrayStorage;
        sub_100026A38(0, v69, 0);
        v70 = v130;
        v71 = *(type metadata accessor for AppIconConfiguration(0) - 8);
        v72 = v68 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
        v73 = *(v71 + 72);
        v74 = v123;
        do
        {
          sub_100026F7C(v72, v5, type metadata accessor for AppIconConfiguration);
          v130 = v70;
          v76 = v70[2];
          v75 = v70[3];
          if (v76 >= v75 >> 1)
          {
            sub_100026A38((v75 > 1), v76 + 1, 1);
            v70 = v130;
          }

          v70[2] = v76 + 1;
          sub_1000270EC(v5, v70 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v76, type metadata accessor for AppIcon);
          v72 += v73;
          --v69;
        }

        while (v69);
        v30 = v114;
      }

      else
      {
        v74 = v123;
      }

      v77 = sub_100023A28();
      v78 = v102;
      v79 = v106;
      sub_100023680(&v106[*(v102 + 24)]);
      v81 = v30[4];
      v80 = v30[5];
      *(v79 + v78[10]) = swift_getKeyPath();
      sub_100003650(&qword_100065078, &qword_10004E9D0);
      swift_storeEnumTagMultiPayload();
      *v79 = v70;
      v79[1] = v77;
      v82 = (v79 + v78[7]);
      *v82 = v81;
      v82[1] = v80;
      v83 = v79 + v78[8];
      *v83 = sub_100021D20;
      *(v83 + 1) = 0;
      v83[16] = 0;
      v84 = v79 + v78[9];
      *v84 = sub_100021D20;
      *(v84 + 1) = 0;
      v84[16] = 0;
      v85 = v124;
      v86 = &enum case for ColorScheme.dark(_:);
      if (!*(v30 + 48))
      {
        v86 = &enum case for ColorScheme.light(_:);
      }

      v87 = v101;
      (*(v124 + 104))(v101, *v86, v74);
      v88 = swift_getKeyPath();
      v89 = v104;
      v90 = &v104[*(v103 + 36)];
      v91 = sub_100003650(&qword_1000653E8, &qword_10004F9C0);
      (*(v85 + 32))(v90 + *(v91 + 28), v87, v74);
      *v90 = v88;
      sub_1000270EC(v79, v89, type metadata accessor for IconFallbackTodayCardView);
      v92 = v105;
      sub_100026FE4(v89, v105);
      v93 = v121;
      *(v92 + *(v121 + 36)) = 0;
      v94 = sub_1000263F0();

      v95 = v107;
      sub_10004C520();
      sub_100003EA4(v92, &qword_100065CA8, &qword_10004F680);
      v96 = v108;
      v97 = v122;
      (*(v108 + 2))(v120, v95, v122);
      swift_storeEnumTagMultiPayload();
      v98 = sub_100026308();
      v130 = v116;
      v131 = v98;
      swift_getOpaqueTypeConformance2();
      v130 = v93;
      v131 = v94;
      swift_getOpaqueTypeConformance2();
      v67 = v119;
      sub_10004C320();
      (*(v96 + 1))(v95, v97);
    }

    sub_100027054(v67, v100);
    swift_storeEnumTagMultiPayload();
    sub_100026208();
    sub_100026590();
    sub_10004C320();
    sub_100003EA4(v67, &qword_100065C88, &qword_10004F668);
    return sub_100026988(v30, type metadata accessor for WidgetTodayCard);
  }
}

uint64_t sub_1000258C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = sub_100003650(&qword_100065D38, &qword_10004F6C8);
  __chkstk_darwin(v45);
  v4 = &v37 - v3;
  v5 = type metadata accessor for PlatterView(0);
  __chkstk_darwin(v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10004CB70();
  *&v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v40 = sub_100003650(&qword_100065D40, &qword_10004F6D0);
  __chkstk_darwin(v40);
  v41 = (&v37 - v13);
  v14 = sub_100003650(&qword_100065D00, &qword_10004F6A0);
  __chkstk_darwin(v14);
  v43 = &v37 - v15;
  v16 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  sub_100003E3C(a1, &v37 - v17, &qword_100065BA8, qword_10004F5A8);
  v19 = type metadata accessor for WidgetTodayCard(0);
  LODWORD(a1) = (*(*(v19 - 8) + 48))(v18, 1, v19);
  sub_100003EA4(v18, &qword_100065BA8, qword_10004F5A8);
  if (a1 == 1)
  {
    *v7 = swift_getKeyPath();
    sub_100003650(&qword_100064958, &qword_10004FA30);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v5 + 20)) = 0;
    sub_100026F7C(v7, v4, type metadata accessor for PlatterView);
    swift_storeEnumTagMultiPayload();
    sub_10002672C();
    sub_1000272F8(&qword_100065448, type metadata accessor for PlatterView, &unk_10004DBD4);
    sub_10004C320();
    return sub_100026988(v7, type metadata accessor for PlatterView);
  }

  v37 = v14;
  v21 = v4;
  v22 = sub_100023A28();
  if (v22)
  {
    v23 = v22;
    v24 = sub_10004C5B0();
    if (qword_1000646F8 != -1)
    {
      swift_once();
    }

    v25 = xmmword_100068E90;

    v42 = *(&xmmword_100068E90 + 8);
    v39 = unk_100068EA8;
    v26 = sub_10004C3A0();
    v27 = v41;
    *v41 = v24;
    v27[1] = v25;
    v28 = v39;
    *(v27 + 1) = v42;
    *(v27 + 2) = v28;
    *(v27 + 48) = v26;
    swift_storeEnumTagMultiPayload();

    sub_100003650(&qword_100065D20, &unk_10004F6B0);
    sub_1000267DC();
    sub_1000272F8(&qword_100065448, type metadata accessor for PlatterView, &unk_10004DBD4);
    v29 = v43;
    sub_10004C320();

    goto LABEL_10;
  }

  sub_100023480(v12);
  v31 = v38;
  v30 = v39;
  (*(v39 + 104))(v38, enum case for WidgetFamily.systemLarge(_:), v8);
  sub_1000272F8(&qword_100065098, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v32 = sub_10004CD00();
  v33 = *(v30 + 8);
  v33(v31, v8);
  v33(v12, v8);
  if ((v32 & 1) == 0)
  {
    *v7 = swift_getKeyPath();
    sub_100003650(&qword_100064958, &qword_10004FA30);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v5 + 20)) = 0;
    sub_100026F7C(v7, v41, type metadata accessor for PlatterView);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100065D20, &unk_10004F6B0);
    sub_1000267DC();
    sub_1000272F8(&qword_100065448, type metadata accessor for PlatterView, &unk_10004DBD4);
    v29 = v43;
    sub_10004C320();
    sub_100026988(v7, type metadata accessor for PlatterView);
LABEL_10:
    v34 = 0;
    v35 = v21;
    goto LABEL_11;
  }

  v34 = 1;
  v35 = v21;
  v29 = v43;
LABEL_11:
  v36 = sub_100003650(&qword_100065D10, &qword_10004F6A8);
  (*(*(v36 - 8) + 56))(v29, v34, 1, v36);
  sub_100003E3C(v29, v35, &qword_100065D00, &qword_10004F6A0);
  swift_storeEnumTagMultiPayload();
  sub_10002672C();
  sub_1000272F8(&qword_100065448, type metadata accessor for PlatterView, &unk_10004DBD4);
  sub_10004C320();
  return sub_100003EA4(v29, &qword_100065D00, &qword_10004F6A0);
}

uint64_t sub_1000260BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for TodayWidgetSmallMediumEntryView(0);
  return sub_1000258C8(v3 + *(v4 + 20), a1);
}

unint64_t sub_1000260F8()
{
  result = qword_100065C68;
  if (!qword_100065C68)
  {
    sub_100003698(&qword_100065C48, &qword_10004F640);
    sub_10002617C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065C68);
  }

  return result;
}

unint64_t sub_10002617C()
{
  result = qword_100065C70;
  if (!qword_100065C70)
  {
    sub_100003698(&qword_100065C78, &qword_10004F660);
    sub_100026208();
    sub_100026590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065C70);
  }

  return result;
}

unint64_t sub_100026208()
{
  result = qword_100065C80;
  if (!qword_100065C80)
  {
    sub_100003698(&qword_100065C88, &qword_10004F668);
    sub_100003698(&qword_100065C90, &unk_10004F670);
    sub_100026308();
    swift_getOpaqueTypeConformance2();
    sub_100003698(&qword_100065CA8, &qword_10004F680);
    sub_1000263F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065C80);
  }

  return result;
}

unint64_t sub_100026308()
{
  result = qword_100065C98;
  if (!qword_100065C98)
  {
    sub_100003698(&qword_100065C90, &unk_10004F670);
    sub_1000272F8(&qword_100065CA0, type metadata accessor for BrandedTodayCardView, &unk_1000509A8);
    sub_100003D30(&qword_100065438, &qword_1000653E8, &qword_10004F9C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065C98);
  }

  return result;
}

unint64_t sub_1000263F0()
{
  result = qword_100065CB0;
  if (!qword_100065CB0)
  {
    sub_100003698(&qword_100065CA8, &qword_10004F680);
    sub_1000264A8();
    sub_100003D30(&qword_100065CD0, &qword_100065CD8, &qword_10004F690, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065CB0);
  }

  return result;
}

unint64_t sub_1000264A8()
{
  result = qword_100065CB8;
  if (!qword_100065CB8)
  {
    sub_100003698(&qword_100065CC0, &qword_10004F688);
    sub_1000272F8(&qword_100065CC8, type metadata accessor for IconFallbackTodayCardView, &unk_10004F2FC);
    sub_100003D30(&qword_100065438, &qword_1000653E8, &qword_10004F9C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065CB8);
  }

  return result;
}

unint64_t sub_100026590()
{
  result = qword_100065CE0;
  if (!qword_100065CE0)
  {
    sub_100003698(&qword_100065CE8, &qword_10004F698);
    sub_1000272F8(&qword_100065430, type metadata accessor for PlaceholderTodayCardView, &unk_10004E2CC);
    sub_100003D30(&qword_100065438, &qword_1000653E8, &qword_10004F9C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065CE0);
  }

  return result;
}

uint64_t sub_100026678(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    a4();
    sub_1000272F8(&qword_100065448, type metadata accessor for PlatterView, &unk_10004DBD4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002672C()
{
  result = qword_100065CF8;
  if (!qword_100065CF8)
  {
    sub_100003698(&qword_100065D00, &qword_10004F6A0);
    sub_100026678(&qword_100065D08, &qword_100065D10, &qword_10004F6A8, sub_1000267DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065CF8);
  }

  return result;
}

unint64_t sub_1000267DC()
{
  result = qword_100065D18;
  if (!qword_100065D18)
  {
    sub_100003698(&qword_100065D20, &unk_10004F6B0);
    sub_100003D30(&qword_100065D28, &qword_100065D30, &qword_100050130, &protocol conformance descriptor for _OverlayStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065D18);
  }

  return result;
}

uint64_t sub_1000268B8(uint64_t a1)
{
  v2 = sub_10004CB10();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10004C150();
}

uint64_t sub_100026988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1000269F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100026D98(a1, a2, a3, *v3, &qword_100065DA0, &qword_10004F820, type metadata accessor for AppIconConfiguration);
  *v3 = result;
  return result;
}

void *sub_100026A38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100026D98(a1, a2, a3, *v3, &qword_100065D68, &qword_10004F7F8, type metadata accessor for AppIcon);
  *v3 = result;
  return result;
}

void *sub_100026A7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100026B44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100026A9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100026D98(a1, a2, a3, *v3, &qword_100065D70, &qword_10004F800, type metadata accessor for WidgetTodayCard);
  *v3 = result;
  return result;
}

char *sub_100026AE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100026C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100026B00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100026D98(a1, a2, a3, *v3, &qword_100065D98, &qword_10004F818, type metadata accessor for TodayWidgetEntry);
  *v3 = result;
  return result;
}

void *sub_100026B44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003650(&qword_100065DA8, &qword_10004F828);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003650(&qword_100065DB0, qword_10004F830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100026C8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003650(&qword_100065D90, &qword_10004F810);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100026D98(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003650(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100026F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100026FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065CC0, &qword_10004F688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027054(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065C88, &qword_10004F668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000270EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002715C()
{
  result = qword_100065D78;
  if (!qword_100065D78)
  {
    sub_100003698(&qword_100065D80, &qword_10004F808);
    sub_100003698(&qword_100065C50, &qword_10004F648);
    sub_100003698(&qword_100065C48, &qword_10004F640);
    sub_100003698(&qword_100065C60, &qword_10004F658);
    sub_1000260F8();
    sub_100026678(&qword_100065CF0, &qword_100065C60, &qword_10004F658, sub_10002672C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000272F8(&qword_100065D88, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065D78);
  }

  return result;
}

uint64_t sub_1000272F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100027354(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BBA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000273D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BBA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TodayWidgetTimelineProvider(uint64_t a1)
{
  result = qword_100065E40;
  if (!qword_100065E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100027490(uint64_t a1)
{
  result = sub_10004BBA0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100027544()
{
  v0 = sub_10004CC10();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100003650(&qword_100065E98, &unk_10004F900);
  sub_100004D10(v1, qword_100068EB8);
  sub_100004D74(v1, qword_100068EB8);
  sub_100003650(&qword_100065D98, &qword_10004F818);
  v2 = type metadata accessor for TodayWidgetEntry(0);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10004DC70;
  if (qword_100064728 != -1)
  {
    swift_once();
  }

  v5 = sub_100004D74(v2, qword_100065DD0);
  sub_100030894(v5, v4 + v3, type metadata accessor for TodayWidgetEntry);
  sub_10004CC00();
  sub_1000308FC(&qword_100065E78, type metadata accessor for TodayWidgetEntry, &unk_10004EBE4);
  return sub_10004CCB0();
}

uint64_t sub_100027734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a2;
  v88 = a3;
  v4 = type metadata accessor for TodayWidgetTimelineProvider(0);
  v85 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v93 = v5;
  v87 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10004CCA0();
  v86 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = v6;
  v91 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004C8A0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100003650(&qword_100065E80, &qword_10004F8E8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v76 - v10;
  v12 = sub_10004CB70();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v81 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v76 - v16;
  v80 = type metadata accessor for Trace(0);
  v82 = *(v80 - 1);
  __chkstk_darwin(v80);
  v96 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v18;
  __chkstk_darwin(v19);
  v21 = &v76 - v20;
  v22 = sub_10004CC90();
  sub_10004CC80();
  v23 = *(v9 + 56);
  (*(v13 + 32))(&v11[v23], v17, v12);
  v24 = *(v13 + 88);
  v89 = v12;
  v25 = v24(&v11[v23], v12);
  v90 = a1;
  v97 = v21;
  if ((v22 & 1) == 0)
  {
    if (v25 == enum case for WidgetFamily.systemSmall(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v26 = sub_10004C940();
      v27 = "TodayWidget:getTimeline (small)";
      v28 = 31;
      v29 = v21;
      goto LABEL_10;
    }

    if (v25 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v26 = sub_10004C940();
      v27 = "TodayWidget:getTimeline (medium)";
      v28 = 32;
      v29 = v21;
      goto LABEL_10;
    }

    v36 = enum case for WidgetFamily.systemLarge(_:);
    v37 = v25;
    sub_10004C950();
    sub_10004C940();
    sub_10004BE70();
    sub_10004CE70();
    v33 = sub_10004C940();
    if (v37 == v36)
    {
      v34 = "TodayWidget:getTimeline (large)";
      v35 = 31;
      goto LABEL_15;
    }

    v39 = "TodayWidget:getTimeline (unknown family)";
    v40 = 40;
LABEL_18:
    sub_10004BE60();

    v41 = &v21[v80[5]];
    *v41 = v39;
    *(v41 + 1) = v40;
    v41[16] = 2;
    (*(v13 + 8))(&v11[v23], v89);
    goto LABEL_19;
  }

  if (v25 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_10004C950();
    sub_10004C940();
    sub_10004BE70();
    sub_10004CE70();
    v26 = sub_10004C940();
    v27 = "TodayWidget:getTimeline (small, preview)";
    v28 = 40;
    v29 = v21;
LABEL_10:
    sub_10004BE60();

    v30 = &v29[v80[5]];
    *v30 = v27;
    *(v30 + 1) = v28;
    v30[16] = 2;
    goto LABEL_20;
  }

  if (v25 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_10004C950();
    sub_10004C940();
    sub_10004BE70();
    sub_10004CE70();
    v26 = sub_10004C940();
    v27 = "TodayWidget:getTimeline (medium, preview)";
    v28 = 41;
    v29 = v21;
    goto LABEL_10;
  }

  v31 = enum case for WidgetFamily.systemLarge(_:);
  v32 = v25;
  sub_10004C950();
  sub_10004C940();
  sub_10004BE70();
  sub_10004CE70();
  v33 = sub_10004C940();
  if (v32 != v31)
  {
    v39 = "TodayWidget:getTimeline (unknown family, preview)";
    v40 = 49;
    goto LABEL_18;
  }

  v34 = "TodayWidget:getTimeline (large, preview)";
  v35 = 40;
LABEL_15:
  sub_10004BE60();

  v38 = &v21[v80[5]];
  *v38 = v34;
  *(v38 + 1) = v35;
  v38[16] = 2;
LABEL_19:
  a1 = v90;
LABEL_20:
  v42 = v13;
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v80 = sub_10004CAD0();
  v79 = sub_100004D74(v80, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v101._countAndFlagsBits = 0x6C656D6954746567;
  v101._object = 0xEC00000028656E69;
  sub_10004C880(v101);
  v43 = v89;
  v99 = v89;
  sub_100007BCC(v98);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(v98, &qword_100064A10, &qword_10004FB00);
  v102._countAndFlagsBits = 44;
  v102._object = 0xE100000000000000;
  sub_10004C880(v102);
  v44 = sub_10004CC90();
  v99 = &type metadata for Bool;
  LOBYTE(v98[0]) = v44 & 1;
  sub_10004C870();
  sub_100003EA4(v98, &qword_100064A10, &qword_10004FB00);
  v103._object = 0x800000010005A430;
  v103._countAndFlagsBits = 0xD00000000000002BLL;
  sub_10004C880(v103);
  v45 = v81;
  sub_10004CC80();
  v46 = sub_10004CB60();
  (*(v42 + 8))(v45, v43);
  v99 = &type metadata for Int;
  v98[0] = v46;
  sub_10004C870();
  sub_100003EA4(v98, &qword_100064A10, &qword_10004FB00);
  v104._countAndFlagsBits = 0x766572507369202CLL;
  v104._object = 0xED0000203A776569;
  sub_10004C880(v104);
  v47 = sub_10004CC90();
  v99 = &type metadata for Bool;
  LOBYTE(v98[0]) = v47 & 1;
  sub_10004C870();
  sub_100003EA4(v98, &qword_100064A10, &qword_10004FB00);
  v105._countAndFlagsBits = 0;
  v105._object = 0xE000000000000000;
  sub_10004C880(v105);
  sub_10004C8B0();
  sub_10004C9C0();

  v48 = v94;
  v89 = sub_100032630(a1, 0, v94);
  v49 = v86;
  v50 = *(v86 + 2);
  v78 = v86 + 16;
  v80 = v50;
  v51 = v91;
  (v50)(v91, a1, v92);
  v81 = type metadata accessor for TodayWidgetTimelineProvider;
  v52 = v87;
  sub_100030894(v48, v87, type metadata accessor for TodayWidgetTimelineProvider);
  v79 = type metadata accessor for Trace;
  sub_100030894(v97, v96, type metadata accessor for Trace);
  v53 = *(v49 + 80);
  v54 = (v53 + 16) & ~v53;
  v84 += v54;
  v77 = v54;
  v55 = *(v85 + 80);
  v56 = (v84 + v55) & ~v55;
  v57 = v82[80];
  v58 = (v93 + v57 + v56) & ~v57;
  v85 = v53 | v55 | v57;
  v82 = v83 + 7;
  v59 = &v83[v58 + 7] & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v83 = *(v49 + 4);
  v61 = v60 + v54;
  v62 = v92;
  (v83)(v61, v51, v92);
  v86 = type metadata accessor for TodayWidgetTimelineProvider;
  v63 = v60 + v56;
  v64 = v52;
  sub_100030ED0(v52, v63, type metadata accessor for TodayWidgetTimelineProvider);
  v76 = type metadata accessor for Trace;
  v65 = v60 + v58;
  v66 = v96;
  sub_100030ED0(v96, v65, type metadata accessor for Trace);
  v67 = (v60 + v59);
  v68 = v88;
  *v67 = v95;
  v67[1] = v68;
  (v80)(v51, v90, v62);
  sub_100030894(v97, v66, v79);
  sub_100030894(v94, v64, v81);
  v69 = (v84 + v57) & ~v57;
  v70 = &v82[v69] & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  (v83)(v71 + v77, v91, v62);
  sub_100030ED0(v96, v71 + v69, v76);
  v72 = (v71 + v70);
  *v72 = v95;
  v72[1] = v68;
  sub_100030ED0(v64, v71 + ((v55 + v70 + 16) & ~v55), v86);
  v73 = sub_100007874();
  swift_retain_n();
  v74 = sub_10004CE20();
  v99 = v73;
  v100 = &protocol witness table for OS_dispatch_queue;
  v98[0] = v74;
  sub_10004CA30();

  sub_100030F38(v97, type metadata accessor for Trace);
  return sub_100007B80(v98);
}

uint64_t sub_1000283FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v120 = a6;
  v121 = a5;
  v119 = a4;
  v115 = a3;
  v8 = sub_10004CC10();
  __chkstk_darwin(v8 - 8);
  v116 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WidgetTodayCard(0);
  v127 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = (&v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_10004CAD0();
  v133 = *(v13 - 8);
  __chkstk_darwin(v13);
  v147 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  __chkstk_darwin(v15 - 8);
  v114 = &v111 - v16;
  v144 = sub_10004BB40();
  v17 = *(v144 - 8);
  __chkstk_darwin(v144 - 8);
  v111 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v112 = &v111 - v20;
  __chkstk_darwin(v21);
  v122 = &v111 - v22;
  __chkstk_darwin(v23);
  v113 = &v111 - v24;
  __chkstk_darwin(v25);
  v134 = &v111 - v26;
  v118 = sub_100003650(&qword_100065E98, &unk_10004F900);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v124 = &v111 - v27;
  v28 = sub_10004C8A0();
  __chkstk_darwin(v28 - 8);
  v146 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v128 = &v111 - v31;
  v150 = type metadata accessor for TodayWidgetCardCollection(0);
  v32 = *(v150 - 8);
  __chkstk_darwin(v150);
  v34 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TodayWidgetEntry(0);
  v151 = *(v35 - 8);
  v152 = v35;
  __chkstk_darwin(v35);
  v148 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v111 - v38;
  v123 = a1;
  v40 = *a1;
  v41 = *(*a1 + 16);
  v129 = v13;
  v132 = a2;
  v125 = v17;
  if (v41)
  {
    v153[0] = _swiftEmptyArrayStorage;
    v42 = v32;
    sub_100026B00(0, v41, 0);
    v43 = v144;
    v44 = v153[0];
    v45 = v40 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v149 = *(v42 + 72);
    v46 = (v17 + 32);
    do
    {
      sub_100030894(v45, v34, type metadata accessor for TodayWidgetCardCollection);
      (*v46)(v39, &v34[*(v150 + 20)], v43);
      v47 = &v39[*(v152 + 20)];
      *v47 = *v34;
      *(v47 + 1) = 0;
      *(v47 + 2) = 0;
      *(v47 + 3) = 0;
      v153[0] = v44;
      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_100026B00((v48 > 1), v49 + 1, 1);
        v43 = v144;
        v44 = v153[0];
      }

      *(v44 + 16) = v49 + 1;
      sub_100030ED0(v39, v44 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v49, type metadata accessor for TodayWidgetEntry);
      v45 += v149;
      --v41;
    }

    while (v41);
    v142 = v44;
    v13 = v129;
    a2 = v132;
  }

  else
  {
    v142 = _swiftEmptyArrayStorage;
  }

  v50 = v134;
  if (qword_1000646A8 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v145 = sub_100004D74(v13, qword_100068DB0);
    v51 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v52 = *(sub_10004C8D0() - 8);
    v53 = *(v52 + 80);
    v54 = (v53 + 32) & ~v53;
    v138 = *(v52 + 72);
    v139 = v53;
    v141 = v51;
    v55 = swift_allocObject();
    v143 = xmmword_10004DC70;
    *(v55 + 16) = xmmword_10004DC70;
    sub_10004C890();
    v155._countAndFlagsBits = 0x6C656D6954746567;
    v155._object = 0xEC00000028656E69;
    sub_10004C880(v155);
    v140 = sub_10004CB70();
    v154 = v140;
    sub_100007BCC(v153);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v156._countAndFlagsBits = 44;
    v156._object = 0xE100000000000000;
    sub_10004C880(v156);
    v56 = sub_10004CC90();
    v154 = &type metadata for Bool;
    LOBYTE(v153[0]) = v56 & 1;
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v157._countAndFlagsBits = 0xD000000000000017;
    v157._object = 0x800000010005A7B0;
    sub_10004C880(v157);
    v149 = v54;
    sub_10004C8B0();
    sub_10004C9C0();

    v57 = v142;
    v58 = v148;
    v137 = v142[2];
    if (!v137)
    {
      break;
    }

    v59 = 0;
    v136 = v142 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
    v126 = "r missing artwork at ";
    v135 = (v125 + 16);
    v131 = (v133 + 16);
    v130 = (v133 + 8);
    while (v59 < *(v57 + 16))
    {
      v63 = *(v151 + 72);
      v150 = v59;
      sub_100030894(&v136[v63 * v59], v58, type metadata accessor for TodayWidgetEntry);
      v64 = (v58 + *(v152 + 20));
      if (v64[2] < 0)
      {
        *(swift_allocObject() + 16) = v143;
        sub_10004C890();
        v158._countAndFlagsBits = 0x6C656D6954746567;
        v158._object = 0xEC00000028656E69;
        sub_10004C880(v158);
        v154 = v140;
        sub_100007BCC(v153);
        sub_10004CC80();
        sub_10004C870();
        sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
        v159._countAndFlagsBits = 44;
        v159._object = 0xE100000000000000;
        sub_10004C880(v159);
        v60 = sub_10004CC90();
        v154 = &type metadata for Bool;
        LOBYTE(v153[0]) = v60 & 1;
        sub_10004C870();
        sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
        v160._countAndFlagsBits = 0xD000000000000021;
        v160._object = (v126 | 0x8000000000000000);
        sub_10004C880(v160);
        v61 = v144;
        v154 = v144;
        v62 = sub_100007BCC(v153);
        (*v135)(v62, v148, v61);
        sub_10004C870();
        sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
        v161._countAndFlagsBits = 0;
        v161._object = 0xE000000000000000;
        sub_10004C880(v161);
        v58 = v148;
        sub_10004C8B0();
        sub_10004C9C0();
        v50 = v134;
      }

      else
      {
        v65 = *v64;
        (*v131)(v147, v145, v13);
        v66 = swift_allocObject();
        *(v66 + 16) = v143;
        sub_10004C890();
        v162._countAndFlagsBits = 0x6C656D6954746567;
        v162._object = 0xEC00000028656E69;
        sub_10004C880(v162);
        v154 = v140;
        sub_100007BCC(v153);
        sub_10004CC80();
        sub_10004C870();
        sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
        v163._countAndFlagsBits = 44;
        v163._object = 0xE100000000000000;
        sub_10004C880(v163);
        v67 = sub_10004CC90();
        v154 = &type metadata for Bool;
        LOBYTE(v153[0]) = v67 & 1;
        sub_10004C870();
        sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
        v164._countAndFlagsBits = 0x6F6853202D203A29;
        v164._object = 0xED000020676E6977;
        sub_10004C880(v164);
        v68 = *(v65 + 16);
        if (v68)
        {
          v133 = v66;
          v153[0] = _swiftEmptyArrayStorage;
          sub_100026AE0(0, v68, 0);
          v69 = v153[0];
          v70 = v65 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
          v71 = *(v127 + 72);
          do
          {
            sub_100030894(v70, v12, type metadata accessor for WidgetTodayCard);
            v73 = *v12;
            v72 = v12[1];

            sub_100030F38(v12, type metadata accessor for WidgetTodayCard);
            v153[0] = v69;
            v75 = v69[2];
            v74 = v69[3];
            if (v75 >= v74 >> 1)
            {
              sub_100026AE0((v74 > 1), v75 + 1, 1);
              v69 = v153[0];
            }

            v69[2] = v75 + 1;
            v76 = &v69[2 * v75];
            v76[4] = v73;
            v76[5] = v72;
            v70 += v71;
            --v68;
          }

          while (v68);
          v13 = v129;
          v50 = v134;
        }

        else
        {
          v69 = _swiftEmptyArrayStorage;
        }

        v153[0] = v69;
        sub_100003650(&qword_100065EA0, qword_10004F910);
        sub_1000307A4();
        v77 = sub_10004CCE0();
        v79 = v78;

        v154 = &type metadata for String;
        v153[0] = v77;
        v153[1] = v79;
        sub_10004C860();
        sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
        v165._countAndFlagsBits = 544497952;
        v165._object = 0xE400000000000000;
        sub_10004C880(v165);
        v80 = v144;
        v154 = v144;
        v81 = sub_100007BCC(v153);
        v58 = v148;
        (*v135)(v81, v148, v80);
        sub_10004C870();
        sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
        v166._countAndFlagsBits = 0;
        v166._object = 0xE000000000000000;
        sub_10004C880(v166);
        sub_10004C8B0();
        v82 = v147;
        sub_10004C9C0();

        (*v130)(v82, v13);
        a2 = v132;
      }

      v59 = v150 + 1;
      sub_100030F38(v58, type metadata accessor for TodayWidgetEntry);
      v57 = v142;
      if (v59 == v137)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_23:
  v83 = v114;
  sub_100029CC0(v57, a2, v114);
  v84 = v125;
  v85 = v144;
  if ((*(v125 + 48))(v83, 1, v144) == 1)
  {
    sub_100003EA4(v83, &qword_1000655E8, &qword_10004F6C0);
    v151 = *(type metadata accessor for TodayWidgetContainer(0) + 20);
    sub_10004CBF0();
    sub_1000308FC(&qword_100065E78, type metadata accessor for TodayWidgetEntry, &unk_10004EBE4);
    sub_10004CCB0();
    *(swift_allocObject() + 16) = v143;
    sub_10004C890();
    v167._countAndFlagsBits = 0x6C656D6954746567;
    v167._object = 0xEC00000028656E69;
    sub_10004C880(v167);
    v86 = v140;
    v154 = v140;
    sub_100007BCC(v153);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v168._countAndFlagsBits = 44;
    v168._object = 0xE100000000000000;
    sub_10004C880(v168);
    v87 = sub_10004CC90();
    v154 = &type metadata for Bool;
    LOBYTE(v153[0]) = v87 & 1;
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v169._countAndFlagsBits = 0xD00000000000001ELL;
    v169._object = 0x800000010005A7D0;
    sub_10004C880(v169);
    sub_10004C8B0();
    sub_10004C9C0();

    *(swift_allocObject() + 16) = v143;
    sub_10004C890();
    v170._countAndFlagsBits = 0x6C656D6954746567;
    v170._object = 0xEC00000028656E69;
    sub_10004C880(v170);
    v154 = v86;
    sub_100007BCC(v153);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v171._countAndFlagsBits = 44;
    v171._object = 0xE100000000000000;
    sub_10004C880(v171);
    v88 = sub_10004CC90();
    v154 = &type metadata for Bool;
    LOBYTE(v153[0]) = v88 & 1;
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v172._countAndFlagsBits = 0x64696C6156203A29;
    v172._object = 0xEF206C69746E7520;
    sub_10004C880(v172);
    v89 = v144;
    v154 = v144;
    v90 = sub_100007BCC(v153);
    (*(v125 + 16))(v90, v123 + v151, v89);
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v173._countAndFlagsBits = 46;
    v173._object = 0xE100000000000000;
    sub_10004C880(v173);
    sub_10004C8B0();
    sub_10004C9C0();
  }

  else
  {
    v91 = *(v84 + 32);
    v91(v50, v83, v85);
    sub_100030808(0xDD4uLL);
    v92 = v122;
    sub_10004BB10();
    v93 = v112;
    sub_10004BB30();
    sub_1000308FC(&qword_100065EB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v94 = sub_10004CCF0();
    v150 = *(v84 + 8);
    v151 = v84 + 8;
    (v150)(v93, v85);
    if (v94)
    {
      (*(v84 + 16))(v113, v92, v85);
    }

    else
    {
      v95 = v91;
      sub_100030808(0xDD4uLL);
      v96 = v111;
      sub_10004BB10();
      v97 = type metadata accessor for TodayWidgetContainer(0);
      v98 = v123;
      v99 = *(v97 + 20);
      if (sub_10004CCF0())
      {
        (v150)(v96, v85);
        (*(v84 + 16))(v113, v98 + v99, v85);
      }

      else
      {
        v95(v113, v96, v85);
      }
    }

    sub_10004CBF0();
    sub_1000308FC(&qword_100065E78, type metadata accessor for TodayWidgetEntry, &unk_10004EBE4);
    sub_10004CCB0();
    *(swift_allocObject() + 16) = v143;
    sub_10004C890();
    v174._countAndFlagsBits = 0x6C656D6954746567;
    v174._object = 0xEC00000028656E69;
    sub_10004C880(v174);
    v154 = v140;
    sub_100007BCC(v153);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v175._countAndFlagsBits = 44;
    v175._object = 0xE100000000000000;
    sub_10004C880(v175);
    v100 = sub_10004CC90();
    v154 = &type metadata for Bool;
    LOBYTE(v153[0]) = v100 & 1;
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v176._countAndFlagsBits = 0xD00000000000003FLL;
    v176._object = 0x800000010005A7F0;
    sub_10004C880(v176);
    sub_10004C8B0();
    sub_10004C9F0();

    *(swift_allocObject() + 16) = v143;
    sub_10004C890();
    v177._countAndFlagsBits = 0x6C656D6954746567;
    v177._object = 0xEC00000028656E69;
    sub_10004C880(v177);
    v154 = v140;
    sub_100007BCC(v153);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v178._countAndFlagsBits = 44;
    v178._object = 0xE100000000000000;
    sub_10004C880(v178);
    v101 = sub_10004CC90();
    v154 = &type metadata for Bool;
    LOBYTE(v153[0]) = v101 & 1;
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v179._countAndFlagsBits = 0xD000000000000025;
    v179._object = 0x800000010005A830;
    sub_10004C880(v179);
    v154 = v85;
    v102 = sub_100007BCC(v153);
    v103 = v113;
    (*(v84 + 16))(v102, v113, v85);
    sub_10004C870();
    sub_100003EA4(v153, &qword_100064A10, &qword_10004FB00);
    v180._countAndFlagsBits = 46;
    v180._object = 0xE100000000000000;
    sub_10004C880(v180);
    sub_10004C8B0();
    sub_10004C9F0();

    v104 = v150;
    (v150)(v122, v85);
    v104(v103, v85);
    v104(v134, v85);
  }

  v105 = [objc_opt_self() standardUserDefaults];
  isa = sub_10004CDC0().super.super.isa;
  v107 = sub_10004CD10();
  [v105 setValue:isa forKey:v107];

  sub_10004CE60();
  sub_10004C950();
  v108 = sub_10004C940();
  type metadata accessor for Trace(0);
  sub_10004BE60();

  v109 = v124;
  v121(v124);
  return (*(v117 + 8))(v109, v118);
}

uint64_t sub_100029CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v92 = a3;
  v4 = type metadata accessor for AppIconConfiguration(0);
  v114 = *(v4 - 8);
  v115 = v4;
  __chkstk_darwin(v4);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v91 - v8;
  __chkstk_darwin(v9);
  v11 = &v91 - v10;
  v12 = sub_10004CB70();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v109 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v108 = &v91 - v16;
  __chkstk_darwin(v17);
  v19 = &v91 - v18;
  __chkstk_darwin(v20);
  v112 = &v91 - v21;
  v22 = type metadata accessor for WidgetTodayCard(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22 - 8);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TodayWidgetEntry(0);
  __chkstk_darwin(v100);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(a1 + 16);
  if (!v96)
  {
LABEL_81:
    v78 = sub_10004BB40();
    return (*(*(v78 - 8) + 56))(v92, 1, 1, v78);
  }

  v29 = 0;
  v99 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v106 = (v13 + 32);
  v117 = enum case for WidgetFamily.systemSmall(_:);
  v113 = (v13 + 8);
  v104 = (v13 + 104);
  v105 = (v13 + 88);
  v98 = *(v26 + 72);
  v116 = v12;
  v107 = v25;
  v97 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v19;
  v102 = v23;
  while (1)
  {
    v101 = v29;
    sub_100030894(v99 + v98 * v29, v28, type metadata accessor for TodayWidgetEntry);
    v30 = &v28[*(v100 + 20)];
    if ((*(v30 + 2) & 0x8000000000000000) == 0)
    {
      v31 = *v30;
      v32 = *(*v30 + 16);
      if (v32)
      {
        break;
      }
    }

LABEL_3:
    v29 = v101 + 1;
    v28 = v97;
    sub_100030F38(v97, type metadata accessor for TodayWidgetEntry);
    if (v29 == v96)
    {
      goto LABEL_81;
    }
  }

  v33 = 0;
  v119 = v31 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v110 = v32;
  v111 = v31;
  while (1)
  {
    if (v33 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_91;
    }

    sub_100030894(v119 + *(v23 + 72) * v33, v25, type metadata accessor for WidgetTodayCard);
    if (!*(v25 + 7))
    {
      break;
    }

LABEL_7:
    ++v33;
    sub_100030F38(v25, type metadata accessor for WidgetTodayCard);
    if (v33 == v32)
    {
      goto LABEL_3;
    }
  }

  v121 = *(v25 + 8);
  v34 = *(v121 + 16);
  v35 = v112;
  sub_10004CC80();
  (*v106)(v19, v35, v12);
  v36 = (*v105)(v19, v12);
  if (v36 == v117)
  {
    v37 = 3;
    if (v34 <= 4)
    {
      v37 = 4;
    }

    v120 = v37;
  }

  else
  {
    v38 = 6;
    if (!v33)
    {
      v38 = 11;
    }

    v120 = v38;
    (*v113)(v19, v12);
  }

  v39 = _swiftEmptyArrayStorage;
  v123 = _swiftEmptyArrayStorage;
  v40 = *(v121 + 16);
  if (v40)
  {
    v41 = *(v115 + 20);
    v42 = v121 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v43 = *(v114 + 72);
    do
    {
      sub_100030894(v42, v11, type metadata accessor for AppIconConfiguration);
      v44 = *&v11[v41];
      v45 = v44;
      sub_100030F38(v11, type metadata accessor for AppIconConfiguration);
      if (v44)
      {
        sub_10004CD50();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10004CD80();
        }

        sub_10004CDA0();
        v39 = v123;
      }

      v42 += v43;
      --v40;
    }

    while (v40);
  }

  if (v39 >> 62)
  {
    v46 = sub_10004CF90();
  }

  else
  {
    v46 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = v116;

  if (!v46)
  {
    if (qword_1000646A8 == -1)
    {
LABEL_83:
      v80 = sub_10004CAD0();
      sub_100004D74(v80, qword_100068DB0);
      sub_100003650(&qword_100064A08, &unk_10004EAB0);
      sub_10004C8D0();
      *(swift_allocObject() + 16) = xmmword_10004DC70;
      sub_10004C850();
      sub_10004C9E0();

      v81 = sub_10004BB40();
      v82 = *(v81 - 8);
      v83 = v92;
      v84 = v97;
      (*(v82 + 16))(v92, v97, v81);
      sub_100030F38(v84, type metadata accessor for TodayWidgetEntry);
      (*(v82 + 56))(v83, 0, 1, v81);
      v85 = v107;
      return sub_100030F38(v85, type metadata accessor for WidgetTodayCard);
    }

LABEL_91:
    swift_once();
    goto LABEL_83;
  }

  v47 = v108;
  sub_10004CC80();
  v48 = v109;
  (*v104)(v109, v117, v12);
  sub_1000308FC(&qword_100065328, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10004CD40();
  sub_10004CD40();
  v49 = *v113;
  (*v113)(v48, v12);
  v49(v47, v12);
  v50 = v121;
  v51 = *(v121 + 16);
  if (v123 == v122)
  {
    if (v51 >= 5)
    {
      if (v51 >= v120)
      {
        v52 = v120;
      }

      else
      {
        v52 = *(v121 + 16);
      }

      v123 = _swiftEmptyArrayStorage;
      goto LABEL_60;
    }

    v123 = _swiftEmptyArrayStorage;
    if (!v51)
    {
      v58 = _swiftEmptyArrayStorage;
      goto LABEL_53;
    }

    v53 = *(v115 + 20);
    v54 = v121 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v93 = *(v114 + 72);
    v94 = v54;
    v55 = v95;
    sub_100030894(v54, v95, type metadata accessor for AppIconConfiguration);
    v56 = *(v55 + v53);
    v57 = v56;
    sub_100030F38(v55, type metadata accessor for AppIconConfiguration);
    if (v56)
    {
      sub_10004CD50();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10004CD80();
      }

      sub_10004CDA0();
      v58 = v123;
      if (v51 == 1)
      {
LABEL_53:
        if (v58 >> 62)
        {
          v51 = sub_10004CF90();
        }

        else
        {
          v51 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v51 != *(v50 + 16))
        {
          if (qword_1000646A8 == -1)
          {
            goto LABEL_83;
          }

          goto LABEL_91;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v58 = _swiftEmptyArrayStorage;
      if (v51 == 1)
      {
        goto LABEL_53;
      }
    }

    v59 = v95;
    sub_100030894(v94 + v93, v95, type metadata accessor for AppIconConfiguration);
    v60 = *(v59 + v53);
    v61 = v60;
    sub_100030F38(v59, type metadata accessor for AppIconConfiguration);
    if (v60)
    {
      sub_10004CD50();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10004CD80();
      }

      sub_10004CDA0();
      v58 = v123;
    }

    if (v51 == 2)
    {
      goto LABEL_52;
    }

    v62 = v95;
    sub_100030894(v94 + 2 * v93, v95, type metadata accessor for AppIconConfiguration);
    v63 = *(v62 + v53);
    v64 = v63;
    sub_100030F38(v62, type metadata accessor for AppIconConfiguration);
    if (v63)
    {
      sub_10004CD50();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10004CD80();
      }

      sub_10004CDA0();
      v58 = v123;
    }

    if (v51 == 3)
    {
LABEL_52:
      v12 = v116;
    }

    else
    {
      v75 = v95;
      sub_100030894(v94 + 3 * v93, v95, type metadata accessor for AppIconConfiguration);
      v76 = *(v75 + v53);
      v77 = v76;
      sub_100030F38(v75, type metadata accessor for AppIconConfiguration);
      v12 = v116;
      if (v76)
      {
        sub_10004CD50();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10004CD80();
        }

        sub_10004CDA0();
        v58 = v123;
      }
    }

    goto LABEL_53;
  }

LABEL_56:
  if (v51 >= v120)
  {
    v52 = v120;
  }

  else
  {
    v52 = v51;
  }

  v123 = _swiftEmptyArrayStorage;
  if (!v51)
  {
    v69 = _swiftEmptyArrayStorage;
    goto LABEL_68;
  }

LABEL_60:
  v65 = v114;
  v66 = v50 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
  v67 = *(v115 + 20);

  v68 = *(v65 + 72);
  v69 = _swiftEmptyArrayStorage;
  do
  {
    sub_100030894(v66, v6, type metadata accessor for AppIconConfiguration);
    v70 = *&v6[v67];
    v71 = v70;
    sub_100030F38(v6, type metadata accessor for AppIconConfiguration);
    if (v70)
    {
      sub_10004CD50();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10004CD80();
      }

      sub_10004CDA0();
      v69 = v123;
    }

    v66 += v68;
    --v52;
  }

  while (v52);
  v50 = v121;

  v12 = v116;
LABEL_68:
  v19 = v103;
  v23 = v102;
  if (v69 >> 62)
  {
    v72 = sub_10004CF90();
  }

  else
  {
    v72 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = *(v50 + 16);
  if (v73 >= v120)
  {
    v73 = v120;
  }

  v74 = v72 == v73;
  v25 = v107;
  v32 = v110;
  v31 = v111;
  if (v74)
  {
    goto LABEL_7;
  }

  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v86 = sub_10004CAD0();
  sub_100004D74(v86, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C850();
  sub_10004C9E0();

  v87 = sub_10004BB40();
  v88 = *(v87 - 8);
  v89 = v92;
  v90 = v97;
  (*(v88 + 16))(v92, v97, v87);
  sub_100030F38(v90, type metadata accessor for TodayWidgetEntry);
  (*(v88 + 56))(v89, 0, 1, v87);
  v85 = v25;
  return sub_100030F38(v85, type metadata accessor for WidgetTodayCard);
}

uint64_t sub_10002ADB4(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t), uint64_t a6)
{
  v96 = a6;
  v109 = a5;
  v116 = a4;
  v105 = a3;
  v104 = a1;
  v94 = type metadata accessor for Trace(0);
  v98 = *(v94 - 1);
  __chkstk_darwin(v94);
  v112 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v7;
  __chkstk_darwin(v8);
  v115 = &v88 - v9;
  v10 = type metadata accessor for TodayWidgetTimelineProvider(0);
  v97 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v111 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v11;
  __chkstk_darwin(v12);
  v114 = &v88 - v13;
  v108 = sub_10004CCA0();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v113 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v14;
  __chkstk_darwin(v15);
  v101 = &v88 - v16;
  v17 = sub_100003650(&qword_100065E88, &qword_10004F8F0);
  __chkstk_darwin(v17 - 8);
  v93 = &v88 - v18;
  v100 = sub_10004C970();
  v95 = *(v100 - 1);
  __chkstk_darwin(v100);
  v88 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004C8A0();
  __chkstk_darwin(v20 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v21 = sub_10004CAD0();
  v102 = sub_100004D74(v21, qword_100068DB0);
  v22 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v91 = *(*(sub_10004C8D0() - 8) + 72);
  v92 = v22;
  v23 = swift_allocObject();
  v90 = xmmword_10004DC70;
  *(v23 + 16) = xmmword_10004DC70;
  sub_10004C890();
  v124._countAndFlagsBits = 0x6C656D6954746567;
  v124._object = 0xEC00000028656E69;
  sub_10004C880(v124);
  v89 = sub_10004CB70();
  v118 = v89;
  sub_100007BCC(aBlock);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(aBlock, &qword_100064A10, &qword_10004FB00);
  v125._countAndFlagsBits = 44;
  v125._object = 0xE100000000000000;
  sub_10004C880(v125);
  v103 = a2;
  v24 = sub_10004CC90();
  v118 = &type metadata for Bool;
  LOBYTE(aBlock[0]) = v24 & 1;
  sub_10004C870();
  sub_100003EA4(aBlock, &qword_100064A10, &qword_10004FB00);
  v126._countAndFlagsBits = 0xD00000000000002FLL;
  v126._object = 0x800000010005A5A0;
  sub_10004C880(v126);
  v25 = v104;
  swift_getErrorValue();
  v26 = v122;
  v27 = v123;
  v118 = v123;
  v28 = sub_100007BCC(aBlock);
  (*(*(v27 - 1) + 16))(v28, v26, v27);
  sub_10004C870();
  sub_100003EA4(aBlock, &qword_100064A10, &qword_10004FB00);
  v127._countAndFlagsBits = 0;
  v127._object = 0xE000000000000000;
  sub_10004C880(v127);
  sub_10004C8B0();
  sub_10004C9E0();

  v121 = v25;
  swift_errorRetain();
  sub_100003650(&qword_100065E90, &qword_10004F8F8);
  if (swift_dynamicCast())
  {
    sub_10004CE60();
    sub_10004C950();
    v29 = sub_10004C940();
    sub_10004BE60();

    *(swift_allocObject() + 16) = v90;
    sub_10004C890();
    v128._countAndFlagsBits = 0x6C656D6954746567;
    v128._object = 0xEC00000028656E69;
    sub_10004C880(v128);
    v118 = v89;
    sub_100007BCC(aBlock);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(aBlock, &qword_100064A10, &qword_10004FB00);
    v129._countAndFlagsBits = 44;
    v129._object = 0xE100000000000000;
    sub_10004C880(v129);
    v30 = sub_10004CC90();
    v118 = &type metadata for Bool;
    LOBYTE(aBlock[0]) = v30 & 1;
    sub_10004C870();
    sub_100003EA4(aBlock, &qword_100064A10, &qword_10004FB00);
    v130._object = 0x800000010005A5F0;
    v130._countAndFlagsBits = 0xD000000000000017;
    sub_10004C880(v130);
    sub_10004C8B0();
    sub_10004C9E0();

    if (qword_100064718 != -1)
    {
      swift_once();
    }

    v31 = sub_100003650(&qword_100065E98, &unk_10004F900);
    v32 = sub_100004D74(v31, qword_100068EB8);
    v116(v32);
  }

  else
  {
    v34 = v103;

    aBlock[0] = v25;
    swift_errorRetain();
    v35 = v93;
    v36 = v100;
    v37 = swift_dynamicCast();
    v38 = v95;
    v39 = *(v95 + 7);
    if (v37)
    {
      v39(v35, 0, 1, v36);
      v40 = v88;
      (*(v38 + 4))(v88, v35, v36);
      sub_10002BDA0();
      v42 = v113;
      v41 = v114;
      v43 = v108;
      v44 = v107;
      if (v45)
      {
        v46 = [objc_opt_self() defaultService];
        v47 = v101;
        (*(v44 + 16))(v101, v34, v43);
        v48 = v38;
        v49 = (*(v44 + 80) + 16) & ~*(v44 + 80);
        v50 = swift_allocObject();
        (*(v44 + 32))(v50 + v49, v47, v43);
        v119 = sub_10003070C;
        v120 = v50;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002C434;
        v118 = &unk_1000628D0;
        v51 = _Block_copy(aBlock);

        [v46 reloadWidgetOnConnectivityToEndpoint:0 parameters:0 replyHandler:v51];
        _Block_release(v51);

        (*(v48 + 1))(v88, v100);
      }

      else
      {
        (*(v38 + 1))(v40, v36);
      }
    }

    else
    {
      v39(v35, 1, 1, v36);
      sub_100003EA4(v35, &qword_100065E88, &qword_10004F8F0);
      v42 = v113;
      v41 = v114;
      v43 = v108;
      v44 = v107;
    }

    if (qword_100064730 != -1)
    {
      swift_once();
    }

    v52 = qword_100068ED0;
    sub_100030894(v96, v41, type metadata accessor for TodayWidgetTimelineProvider);
    v53 = v44;
    v54 = v44 + 16;
    v55 = v34;
    v56 = *(v44 + 16);
    v56(v42, v55, v43);
    v57 = v115;
    sub_100030894(v105, v115, type metadata accessor for Trace);

    v58 = sub_10004CA10();

    if ((v58 & 1) == 0 && *(v52 + 24) != 1)
    {
      *(v52 + 24) = 1;
      v59 = objc_autoreleasePoolPush();
      sub_100017608(v52);
      objc_autoreleasePoolPop(v59);
    }

    v105 = *(v52 + 16);
    v103 = type metadata accessor for TodayWidgetTimelineProvider;
    sub_100030894(v41, v111, type metadata accessor for TodayWidgetTimelineProvider);
    v60 = v101;
    v100 = v56;
    v56(v101, v42, v43);
    v102 = type metadata accessor for Trace;
    sub_100030894(v57, v112, type metadata accessor for Trace);
    v61 = v97[80];
    v62 = (v61 + 16) & ~v61;
    v96 = v54;
    v63 = v53;
    v64 = *(v53 + 80);
    v65 = (v106 + v64 + v62) & ~v64;
    v66 = *(v98 + 80);
    v67 = (v110 + v66 + v65) & ~v66;
    v98 = v61 | v64 | v66;
    v97 = v99 + 7;
    v68 = (v99 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    v99 = type metadata accessor for TodayWidgetTimelineProvider;
    v70 = v69 + v62;
    v71 = v69;
    v72 = v111;
    sub_100030ED0(v111, v70, type metadata accessor for TodayWidgetTimelineProvider);
    v94 = *(v63 + 32);
    v73 = v71 + v65;
    v74 = v71;
    v104 = v71;
    v75 = v108;
    v94(v73, v60, v108);
    v95 = type metadata accessor for Trace;
    v76 = v74 + v67;
    v77 = v112;
    sub_100030ED0(v112, v76, type metadata accessor for Trace);
    v78 = (v74 + v68);
    v79 = v109;
    *v78 = v116;
    v78[1] = v79;
    (v100)(v60, v113, v75);
    sub_100030894(v114, v72, v103);
    sub_100030894(v115, v77, v102);
    v80 = (v64 + 16) & ~v64;
    v81 = (v110 + v61 + v80) & ~v61;
    v82 = (v106 + v66 + v81) & ~v66;
    v83 = &v97[v82] & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    v94(v84 + v80, v60, v75);
    sub_100030ED0(v111, v84 + v81, v99);
    sub_100030ED0(v112, v84 + v82, v95);
    v85 = (v84 + v83);
    *v85 = v116;
    v85[1] = v79;
    v86 = sub_100007874();
    swift_retain_n();

    v87 = sub_10004CE20();
    v118 = v86;
    v119 = &protocol witness table for OS_dispatch_queue;
    aBlock[0] = v87;
    sub_10004CA30();

    sub_100030F38(v115, type metadata accessor for Trace);
    (*(v107 + 8))(v113, v75);
    sub_100030F38(v114, type metadata accessor for TodayWidgetTimelineProvider);
    return sub_100007B80(aBlock);
  }
}

void sub_10002BDA0()
{
  v0 = sub_10004C960();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = AMSErrorDomain;
    while (v2 < *(v0 + 16))
    {
      swift_errorRetain();
      v4 = sub_10004BA80();
      IsEqual = AMSErrorIsEqual();

      if (IsEqual || (v6 = sub_10004BA80(), v7 = AMSErrorIsEqual(), v6, v7))
      {

        goto LABEL_10;
      }

      v8 = sub_10004BA80();
      v9 = v3;
      v10 = AMSErrorIsEqual();

      if ((v10 & 1) == 0 && v1 != ++v2)
      {
        continue;
      }

      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

uint64_t sub_10002BEC8(int a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v33 = a1;
  v4 = sub_10004C8A0();
  __chkstk_darwin(v4 - 8);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v7 = sub_10004CAD0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v11 = sub_100004D74(v7, qword_100068DB0);
  v12 = *(v8 + 16);
  v31 = v11;
  v12(v10);
  v13 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v14 = *(*(sub_10004C8D0() - 8) + 72);
  v32 = v7;
  v27 = v14;
  v30 = v13;
  v15 = swift_allocObject();
  v26 = xmmword_10004DC70;
  *(v15 + 16) = xmmword_10004DC70;
  sub_10004C890();
  v38._countAndFlagsBits = 0x6C656D6954746567;
  v38._object = 0xEC00000028656E69;
  sub_10004C880(v38);
  v25 = sub_10004CB70();
  v37 = v25;
  sub_100007BCC(&v35);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(&v35, &qword_100064A10, &qword_10004FB00);
  v39._countAndFlagsBits = 44;
  v39._object = 0xE100000000000000;
  sub_10004C880(v39);
  v29 = a3;
  v16 = sub_10004CC90();
  v37 = &type metadata for Bool;
  LOBYTE(v35) = v16 & 1;
  sub_10004C870();
  sub_100003EA4(&v35, &qword_100064A10, &qword_10004FB00);
  v40._countAndFlagsBits = 0xD000000000000047;
  v40._object = 0x800000010005A630;
  sub_10004C880(v40);
  v17 = 0x64656C696146;
  if (v33)
  {
    v17 = 0x73736563637553;
  }

  v18 = 0xE600000000000000;
  v37 = &type metadata for String;
  if (v33)
  {
    v18 = 0xE700000000000000;
  }

  v35 = v17;
  v36 = v18;
  sub_10004C870();
  sub_100003EA4(&v35, &qword_100064A10, &qword_10004FB00);
  v41._countAndFlagsBits = 46;
  v41._object = 0xE100000000000000;
  sub_10004C880(v41);
  sub_10004C8B0();
  v19 = v32;
  sub_10004C9C0();

  (*(v8 + 8))(v10, v19);
  result = v34;
  if (v34)
  {
    swift_getErrorValue();
    v34 = sub_10004D010();
    v22 = v21;
    *(swift_allocObject() + 16) = v26;
    sub_10004C890();
    v42._countAndFlagsBits = 0x6C656D6954746567;
    v42._object = 0xEC00000028656E69;
    sub_10004C880(v42);
    v37 = v25;
    sub_100007BCC(&v35);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(&v35, &qword_100064A10, &qword_10004FB00);
    v43._countAndFlagsBits = 44;
    v43._object = 0xE100000000000000;
    sub_10004C880(v43);
    v23 = sub_10004CC90();
    v37 = &type metadata for Bool;
    LOBYTE(v35) = v23 & 1;
    sub_10004C870();
    sub_100003EA4(&v35, &qword_100064A10, &qword_10004FB00);
    v44._object = 0x800000010005A680;
    v44._countAndFlagsBits = 0xD000000000000046;
    sub_10004C880(v44);
    v37 = &type metadata for String;
    v35 = v34;
    v36 = v22;
    sub_10004C870();
    sub_100003EA4(&v35, &qword_100064A10, &qword_10004FB00);
    v45._countAndFlagsBits = 46;
    v45._object = 0xE100000000000000;
    sub_10004C880(v45);
    sub_10004C8B0();
    sub_10004C9E0();
  }

  return result;
}

void sub_10002C434(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10002C4AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v24 = a6;
  v25 = a5;
  v21 = a3;
  v6 = sub_10004CC10();
  __chkstk_darwin(v6 - 8);
  v23 = sub_100003650(&qword_100065E98, &unk_10004F900);
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v21 - v8;
  v22 = sub_10004BB40();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BC10();
  sub_10004C900();
  sub_10004CA00();
  v13 = sub_10004BBF0();
  v14 = sub_10004BC00();
  sub_10002C87C(v13, v14, v12);
  sub_10004CE60();
  sub_10004C950();
  v15 = sub_10004C940();
  type metadata accessor for Trace(0);
  sub_10004BE60();

  sub_100003650(&qword_100065D98, &qword_10004F818);
  v16 = type metadata accessor for TodayWidgetEntry(0);
  v17 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10004DC70;
  if (qword_100064720 != -1)
  {
    swift_once();
  }

  v19 = sub_100004D74(v16, qword_100065DB8);
  sub_100030894(v19, v18 + v17, type metadata accessor for TodayWidgetEntry);
  sub_10004CBF0();
  sub_1000308FC(&qword_100065E78, type metadata accessor for TodayWidgetEntry, &unk_10004EBE4);
  sub_10004CCB0();
  v25(v9);

  (*(v7 + 8))(v9, v23);
  return (*(v10 + 8))(v12, v22);
}

void sub_10002C87C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10004C8A0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10004BB40();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v3;
  v12 = sub_10002F494();
  v13 = exp2f(v12) * a1;
  if (v13 <= a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = a2;
  }

  sub_10004BB30();
  v31 = a3;
  sub_10004BB10();
  (*(v9 + 8))(v11, v8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v29 = sub_10004CAD0();
  v28 = sub_100004D74(v29, qword_100068DB0);
  v27 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v26 = *(*(sub_10004C8D0() - 8) + 72);
  v15 = swift_allocObject();
  v25 = xmmword_10004DC70;
  *(v15 + 16) = xmmword_10004DC70;
  sub_10004C890();
  v34._countAndFlagsBits = 0x6C656D6954746567;
  v34._object = 0xEC00000028656E69;
  sub_10004C880(v34);
  v30 = sub_10004CB70();
  v33 = v30;
  sub_100007BCC(v32);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(v32, &qword_100064A10, &qword_10004FB00);
  v35._countAndFlagsBits = 44;
  v35._object = 0xE100000000000000;
  sub_10004C880(v35);
  v16 = sub_10004CC90();
  v33 = &type metadata for Bool;
  LOBYTE(v32[0]) = v16 & 1;
  sub_10004C870();
  sub_100003EA4(v32, &qword_100064A10, &qword_10004FB00);
  v36._countAndFlagsBits = 0x207478654E203A29;
  v36._object = 0xEF203A7972746572;
  sub_10004C880(v36);
  v33 = v8;
  v17 = sub_100007BCC(v32);
  (*(v9 + 16))(v17, v31, v8);
  sub_10004C870();
  sub_100003EA4(v32, &qword_100064A10, &qword_10004FB00);
  v37._countAndFlagsBits = 46;
  v37._object = 0xE100000000000000;
  sub_10004C880(v37);
  sub_10004C8B0();
  sub_10004C9E0();

  *(swift_allocObject() + 16) = v25;
  if (v14 >= a2)
  {
    sub_10004C890();
    v41._countAndFlagsBits = 0x6C656D6954746567;
    v41._object = 0xEC00000028656E69;
    sub_10004C880(v41);
    v33 = v30;
    sub_100007BCC(v32);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v32, &qword_100064A10, &qword_10004FB00);
    v42._countAndFlagsBits = 44;
    v42._object = 0xE100000000000000;
    sub_10004C880(v42);
    v22 = sub_10004CC90();
    v33 = &type metadata for Bool;
    LOBYTE(v32[0]) = v22 & 1;
    sub_10004C870();
    sub_100003EA4(v32, &qword_100064A10, &qword_10004FB00);
    v43._countAndFlagsBits = 0xD000000000000040;
    v43._object = 0x800000010005A720;
    sub_10004C880(v43);
    sub_10004C8B0();
    sub_10004C9E0();
  }

  else
  {
    sub_10004C890();
    v38._countAndFlagsBits = 0x6C656D6954746567;
    v38._object = 0xEC00000028656E69;
    sub_10004C880(v38);
    v33 = v30;
    sub_100007BCC(v32);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v32, &qword_100064A10, &qword_10004FB00);
    v39._countAndFlagsBits = 44;
    v39._object = 0xE100000000000000;
    sub_10004C880(v39);
    v18 = sub_10004CC90();
    v33 = &type metadata for Bool;
    LOBYTE(v32[0]) = v18 & 1;
    sub_10004C870();
    sub_100003EA4(v32, &qword_100064A10, &qword_10004FB00);
    v40._countAndFlagsBits = 0xD00000000000001ELL;
    v40._object = 0x800000010005A770;
    sub_10004C880(v40);
    sub_10004C8B0();
    sub_10004C9E0();

    if (__OFADD__(sub_10002F494(), 1))
    {
      __break(1u);
    }

    else
    {
      v19 = [objc_opt_self() standardUserDefaults];
      isa = sub_10004CDC0().super.super.isa;
      v21 = sub_10004CD10();
      [v19 setValue:isa forKey:v21];
    }
  }
}

uint64_t sub_10002CEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v35 = a6;
  v36 = a5;
  v27[4] = a4;
  v27[3] = a3;
  v6 = sub_10004CC10();
  __chkstk_darwin(v6 - 8);
  v33 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100003650(&qword_100065E98, &unk_10004F900);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = v27 - v8;
  v31 = sub_10004BB40();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C8A0();
  __chkstk_darwin(v10 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v11 = sub_10004CAD0();
  v27[0] = sub_100004D74(v11, qword_100068DB0);
  v12 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v27[1] = *(*(sub_10004C8D0() - 8) + 72);
  v27[2] = v12;
  v13 = swift_allocObject();
  v37 = xmmword_10004DC70;
  *(v13 + 16) = xmmword_10004DC70;
  sub_10004C890();
  v42._countAndFlagsBits = 0x6C656D6954746567;
  v42._object = 0xEC00000028656E69;
  sub_10004C880(v42);
  v41 = sub_10004CB70();
  sub_100007BCC(v40);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(v40, &qword_100064A10, &qword_10004FB00);
  v43._countAndFlagsBits = 44;
  v43._object = 0xE100000000000000;
  sub_10004C880(v43);
  v14 = sub_10004CC90();
  v41 = &type metadata for Bool;
  LOBYTE(v40[0]) = v14 & 1;
  sub_10004C870();
  sub_100003EA4(v40, &qword_100064A10, &qword_10004FB00);
  v44._countAndFlagsBits = 0xD00000000000002CLL;
  v44._object = 0x800000010005A6D0;
  sub_10004C880(v44);
  swift_getErrorValue();
  v16 = v38;
  v15 = v39;
  v41 = v39;
  v17 = sub_100007BCC(v40);
  (*(*(v15 - 1) + 16))(v17, v16, v15);
  sub_10004C870();
  sub_100003EA4(v40, &qword_100064A10, &qword_10004FB00);
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  sub_10004C880(v45);
  sub_10004C8B0();
  sub_10004C9E0();

  if (qword_100064730 != -1)
  {
    swift_once();
  }

  v18 = qword_100068ED0;
  *(swift_allocObject() + 16) = v37;
  sub_10004C850();
  sub_10004C9C0();

  sub_100003650(&qword_100065548, &unk_10004EAD0);
  *(v18 + 16) = sub_10004CA90();

  v19 = v28;
  sub_10002C87C(15, 3600, v28);
  sub_10004CE60();
  sub_10004C950();
  v20 = sub_10004C940();
  type metadata accessor for Trace(0);
  sub_10004BE60();

  sub_100003650(&qword_100065D98, &qword_10004F818);
  v21 = type metadata accessor for TodayWidgetEntry(0);
  v22 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v37;
  if (qword_100064720 != -1)
  {
    swift_once();
  }

  v24 = sub_100004D74(v21, qword_100065DB8);
  sub_100030894(v24, v23 + v22, type metadata accessor for TodayWidgetEntry);
  sub_10004CBF0();
  sub_1000308FC(&qword_100065E78, type metadata accessor for TodayWidgetEntry, &unk_10004EBE4);
  v25 = v30;
  sub_10004CCB0();
  v36(v25);
  (*(v32 + 8))(v25, v34);
  return (*(v29 + 8))(v19, v31);
}

uint64_t sub_10002D62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v81 = a2;
  v75 = sub_10004CCA0();
  v70 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = v4;
  v76 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004C8A0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100003650(&qword_100065E80, &qword_10004F8E8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v67 - v8;
  v10 = sub_10004CB70();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v69 = (&v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v16 = type metadata accessor for Trace(0);
  v71 = *(v16 - 8);
  __chkstk_darwin(v16);
  v72 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v17;
  __chkstk_darwin(v18);
  v20 = &v67 - v19;
  v21 = sub_10004CC90();
  v80 = a1;
  sub_10004CC80();
  v22 = *(v7 + 56);
  (*(v11 + 32))(&v9[v22], v15, v10);
  v23 = *(v11 + 88);
  v78 = v10;
  v24 = v23(&v9[v22], v10);
  v82 = v20;
  if (v21)
  {
    if (v24 == enum case for WidgetFamily.systemSmall(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v25 = sub_10004C940();
      v26 = "TodayWidget:getSnapshot (small, preview)";
      v27 = v20;
      v28 = 40;
LABEL_10:
      sub_10004BE60();

      v29 = &v27[*(v16 + 20)];
      *v29 = v26;
      *(v29 + 1) = v28;
      v29[16] = 2;
      goto LABEL_11;
    }

    if (v24 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v25 = sub_10004C940();
      v26 = "TodayWidget:getSnapshot (medium, preview)";
      v27 = v20;
      v28 = 41;
      goto LABEL_10;
    }

    v56 = enum case for WidgetFamily.systemLarge(_:);
    v57 = v24;
    sub_10004C950();
    sub_10004C940();
    sub_10004BE70();
    sub_10004CE70();
    v58 = sub_10004C940();
    if (v57 == v56)
    {
      v59 = "TodayWidget:getSnapshot (large, preview)";
      v60 = 40;
LABEL_18:
      sub_10004BE60();

      v63 = &v20[*(v16 + 20)];
      *v63 = v59;
      *(v63 + 1) = v60;
      v63[16] = 2;
      goto LABEL_11;
    }

    v64 = "TodayWidget:getSnapshot (unknown family, preview)";
    v65 = 49;
  }

  else
  {
    if (v24 == enum case for WidgetFamily.systemSmall(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v25 = sub_10004C940();
      v26 = "TodayWidget:getSnapshot (small)";
      v27 = v20;
      v28 = 31;
      goto LABEL_10;
    }

    if (v24 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v25 = sub_10004C940();
      v26 = "TodayWidget:getSnapshot (medium)";
      v27 = v20;
      v28 = 32;
      goto LABEL_10;
    }

    v61 = enum case for WidgetFamily.systemLarge(_:);
    v62 = v24;
    sub_10004C950();
    sub_10004C940();
    sub_10004BE70();
    sub_10004CE70();
    v58 = sub_10004C940();
    if (v62 == v61)
    {
      v59 = "TodayWidget:getSnapshot (large)";
      v60 = 31;
      goto LABEL_18;
    }

    v64 = "TodayWidget:getSnapshot (unknown family)";
    v65 = 40;
  }

  sub_10004BE60();

  v66 = &v20[*(v16 + 20)];
  *v66 = v64;
  *(v66 + 1) = v65;
  v66[16] = 2;
  (*(v11 + 8))(&v9[v22], v78);
LABEL_11:
  v30 = v11;
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v68 = sub_10004CAD0();
  v67 = sub_100004D74(v68, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v86._countAndFlagsBits = 0x7370616E53746567;
  v86._object = 0xEC00000028746F68;
  sub_10004C880(v86);
  v31 = v78;
  v84 = v78;
  sub_100007BCC(v83);
  v32 = v80;
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(v83, &qword_100064A10, &qword_10004FB00);
  v87._countAndFlagsBits = 44;
  v87._object = 0xE100000000000000;
  sub_10004C880(v87);
  v33 = sub_10004CC90();
  v84 = &type metadata for Bool;
  LOBYTE(v83[0]) = v33 & 1;
  sub_10004C870();
  sub_100003EA4(v83, &qword_100064A10, &qword_10004FB00);
  v88._object = 0x800000010005AA00;
  v88._countAndFlagsBits = 0xD00000000000002BLL;
  sub_10004C880(v88);
  v34 = v69;
  sub_10004CC80();
  v35 = sub_10004CB60();
  (*(v30 + 8))(v34, v31);
  v84 = &type metadata for Int;
  v83[0] = v35;
  sub_10004C870();
  sub_100003EA4(v83, &qword_100064A10, &qword_10004FB00);
  v89._countAndFlagsBits = 0x766572507369202CLL;
  v89._object = 0xED0000203A776569;
  sub_10004C880(v89);
  v36 = sub_10004CC90();
  v84 = &type metadata for Bool;
  LOBYTE(v83[0]) = v36 & 1;
  sub_10004C870();
  sub_100003EA4(v83, &qword_100064A10, &qword_10004FB00);
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  sub_10004C880(v90);
  sub_10004C8B0();
  sub_10004C9C0();

  v78 = sub_100032630(v32, 1, v73);
  v37 = v70;
  v73 = *(v70 + 16);
  v39 = v75;
  v38 = v76;
  v73(v76, v32, v75);
  v69 = type metadata accessor for Trace;
  v40 = v72;
  sub_100030894(v82, v72, type metadata accessor for Trace);
  v41 = *(v37 + 80);
  v42 = (v41 + 16) & ~v41;
  v67 = v42;
  v68 = v42 + v74;
  v43 = (v42 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = *(v71 + 80);
  v71 = v41 | v44;
  v45 = swift_allocObject();
  v70 = *(v37 + 32);
  (v70)(v45 + v42, v38, v39);
  v46 = v45;
  v74 = v45;
  v47 = (v45 + v43);
  v48 = v77;
  *v47 = v81;
  v47[1] = v48;
  sub_100030ED0(v40, v46 + ((v44 + v43 + 16) & ~v44), type metadata accessor for Trace);
  v73(v38, v80, v39);
  sub_100030894(v82, v40, v69);
  v49 = (v68 + v44) & ~v44;
  v50 = (v79 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (v70)(v51 + v67, v38, v39);
  sub_100030ED0(v40, v51 + v49, type metadata accessor for Trace);
  v52 = (v51 + v50);
  *v52 = v81;
  v52[1] = v48;
  v53 = sub_100007874();
  swift_retain_n();
  v54 = sub_10004CE20();
  v84 = v53;
  v85 = &protocol witness table for OS_dispatch_queue;
  v83[0] = v54;
  sub_10004CA30();

  sub_100030F38(v82, type metadata accessor for Trace);
  return sub_100007B80(v83);
}

uint64_t sub_10002E174(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v85 = a3;
  v86 = a5;
  v84 = a4;
  v75 = a2;
  v6 = type metadata accessor for WidgetTodayCard(0);
  v73 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = (v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for TodayWidgetEntry(0);
  __chkstk_darwin(v83);
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10004CAD0();
  v78 = *(v88 - 8);
  __chkstk_darwin(v88);
  v77 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004C8A0();
  __chkstk_darwin(v12 - 8);
  v76 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v15 = type metadata accessor for TodayWidgetCardCollection(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v87 = (v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100003650(&qword_100065EB8, qword_1000507B0);
  __chkstk_darwin(v18 - 8);
  v20 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v67 - v22;
  v24 = sub_10004BB40();
  v80 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BB30();
  v27 = *a1;
  v79 = v26;
  v89 = v26;
  sub_10002EE88(sub_100030E10, v27, v23);
  v81 = v23;
  sub_100030E60(v23, v20);
  v28 = *(v16 + 48);
  v74 = v15;
  v29 = v28(v20, 1, v15);
  v82 = v24;
  if (v29 == 1)
  {
    v30 = v85;
    sub_100003EA4(v20, &qword_100065EB8, qword_1000507B0);
    if (qword_1000646A8 != -1)
    {
      swift_once();
    }

    sub_100004D74(v88, qword_100068DB0);
    sub_100003650(&qword_100064A08, &unk_10004EAB0);
    sub_10004C8D0();
    *(swift_allocObject() + 16) = xmmword_10004DC70;
    sub_10004C890();
    v92._countAndFlagsBits = 0x7370616E53746567;
    v92._object = 0xEC00000028746F68;
    sub_10004C880(v92);
    v91 = sub_10004CB70();
    sub_100007BCC(v90);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v90, &qword_100064A10, &qword_10004FB00);
    v93._countAndFlagsBits = 44;
    v93._object = 0xE100000000000000;
    sub_10004C880(v93);
    v31 = sub_10004CC90();
    v91 = &type metadata for Bool;
    LOBYTE(v90[0]) = v31 & 1;
    sub_10004C870();
    sub_100003EA4(v90, &qword_100064A10, &qword_10004FB00);
    v94._countAndFlagsBits = 0xD000000000000051;
    v94._object = 0x800000010005AB70;
    sub_10004C880(v94);
    sub_10004C8B0();
    sub_10004C9C0();

    if (qword_100064720 != -1)
    {
      swift_once();
    }

    v32 = sub_100004D74(v83, qword_100065DB8);
    v30(v32);
    v33 = v82;
    v34 = v80;
  }

  else
  {
    v71 = v10;
    sub_100030ED0(v20, v87, type metadata accessor for TodayWidgetCardCollection);
    if (qword_1000646A8 != -1)
    {
      swift_once();
    }

    v35 = v88;
    v72 = sub_100004D74(v88, qword_100068DB0);
    v69 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v36 = *(sub_10004C8D0() - 8);
    v67[1] = *(v36 + 72);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    v68 = xmmword_10004DC70;
    *(v38 + 16) = xmmword_10004DC70;
    sub_10004C890();
    v95._countAndFlagsBits = 0x7370616E53746567;
    v95._object = 0xEC00000028746F68;
    sub_10004C880(v95);
    v67[0] = sub_10004CB70();
    v91 = v67[0];
    sub_100007BCC(v90);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v90, &qword_100064A10, &qword_10004FB00);
    v96._countAndFlagsBits = 44;
    v96._object = 0xE100000000000000;
    sub_10004C880(v96);
    v39 = sub_10004CC90();
    v91 = &type metadata for Bool;
    LOBYTE(v90[0]) = v39 & 1;
    sub_10004C870();
    sub_100003EA4(v90, &qword_100064A10, &qword_10004FB00);
    v97._object = 0x800000010005ABD0;
    v97._countAndFlagsBits = 0xD000000000000039;
    sub_10004C880(v97);
    sub_10004C8B0();
    v40 = v72;
    sub_10004C9C0();

    (*(v78 + 16))(v77, v40, v35);
    v70 = v37;
    v72 = swift_allocObject();
    *(v72 + 16) = v68;
    sub_10004C890();
    v98._countAndFlagsBits = 0x7370616E53746567;
    v98._object = 0xEC00000028746F68;
    sub_10004C880(v98);
    v91 = v67[0];
    sub_100007BCC(v90);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v90, &qword_100064A10, &qword_10004FB00);
    v99._countAndFlagsBits = 44;
    v99._object = 0xE100000000000000;
    sub_10004C880(v99);
    v41 = sub_10004CC90();
    v91 = &type metadata for Bool;
    LOBYTE(v90[0]) = v41 & 1;
    sub_10004C870();
    sub_100003EA4(v90, &qword_100064A10, &qword_10004FB00);
    v100._countAndFlagsBits = 0x69776F6853203A29;
    v100._object = 0xEB0000000020676ELL;
    sub_10004C880(v100);
    v42 = v87;
    v43 = *v87;
    v44 = *(*v87 + 16);
    if (v44)
    {
      v90[0] = _swiftEmptyArrayStorage;

      sub_100026AE0(0, v44, 0);
      v45 = v90[0];
      v46 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v75 = v43;
      v47 = v43 + v46;
      v48 = *(v73 + 72);
      do
      {
        sub_100030894(v47, v8, type metadata accessor for WidgetTodayCard);
        v49 = *v8;
        v50 = v8[1];

        sub_100030F38(v8, type metadata accessor for WidgetTodayCard);
        v90[0] = v45;
        v52 = v45[2];
        v51 = v45[3];
        if (v52 >= v51 >> 1)
        {
          sub_100026AE0((v51 > 1), v52 + 1, 1);
          v45 = v90[0];
        }

        v45[2] = v52 + 1;
        v53 = &v45[2 * v52];
        v53[4] = v49;
        v53[5] = v50;
        v47 += v48;
        --v44;
      }

      while (v44);
      v42 = v87;
      v54 = v75;
    }

    else
    {

      v45 = _swiftEmptyArrayStorage;
      v54 = v43;
    }

    v90[0] = v45;
    sub_100003650(&qword_100065EA0, qword_10004F910);
    sub_1000307A4();
    v55 = sub_10004CCE0();
    v57 = v56;

    v91 = &type metadata for String;
    v90[0] = v55;
    v90[1] = v57;
    sub_10004C860();
    sub_100003EA4(v90, &qword_100064A10, &qword_10004FB00);
    v101._countAndFlagsBits = 544497952;
    v101._object = 0xE400000000000000;
    sub_10004C880(v101);
    v58 = *(v74 + 20);
    v33 = v82;
    v91 = v82;
    v59 = sub_100007BCC(v90);
    v34 = v80;
    v60 = *(v80 + 16);
    v60(v59, v42 + v58, v33);
    sub_10004C870();
    sub_100003EA4(v90, &qword_100064A10, &qword_10004FB00);
    v102._countAndFlagsBits = 0;
    v102._object = 0xE000000000000000;
    sub_10004C880(v102);
    sub_10004C8B0();
    v61 = v88;
    v62 = v77;
    sub_10004C9C0();

    (*(v78 + 8))(v62, v61);
    v63 = v71;
    v60(v71, v42 + v58, v33);
    v64 = (v63 + *(v83 + 20));
    *v64 = v54;
    v64[1] = 0;
    v64[2] = 0;
    v64[3] = 0;
    v85(v63);
    sub_100030F38(v63, type metadata accessor for TodayWidgetEntry);
    sub_100030F38(v42, type metadata accessor for TodayWidgetCardCollection);
  }

  sub_10004CE60();
  sub_10004C950();
  v65 = sub_10004C940();
  type metadata accessor for Trace(0);
  sub_10004BE60();

  sub_100003EA4(v81, &qword_100065EB8, qword_1000507B0);
  return (*(v34 + 8))(v79, v33);
}

uint64_t sub_10002EE88@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TodayWidgetCardCollection(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v19 = a3;
    v12 = *(v8 + 72);
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v12 * (v11 - 1);
    v14 = -v12;
    while (1)
    {
      sub_100030894(v13, v10, type metadata accessor for TodayWidgetCardCollection);
      v15 = a1(v10);
      if (v3)
      {
        return sub_100030F38(v10, type metadata accessor for TodayWidgetCardCollection);
      }

      if (v15)
      {
        break;
      }

      --v11;
      sub_100030F38(v10, type metadata accessor for TodayWidgetCardCollection);
      v13 += v14;
      if (!v11)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_100030ED0(v10, v19, type metadata accessor for TodayWidgetCardCollection);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_10002F060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = sub_10004C8A0();
  __chkstk_darwin(v6 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v7 = sub_10004CAD0();
  sub_100004D74(v7, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v20._countAndFlagsBits = 0x7370616E53746567;
  v20._object = 0xEC00000028746F68;
  sub_10004C880(v20);
  v19 = sub_10004CB70();
  sub_100007BCC(v18);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(v18, &qword_100064A10, &qword_10004FB00);
  v21._countAndFlagsBits = 44;
  v21._object = 0xE100000000000000;
  sub_10004C880(v21);
  v8 = sub_10004CC90();
  v19 = &type metadata for Bool;
  LOBYTE(v18[0]) = v8 & 1;
  sub_10004C870();
  sub_100003EA4(v18, &qword_100064A10, &qword_10004FB00);
  v22._object = 0x800000010005A5A0;
  v22._countAndFlagsBits = 0xD00000000000002FLL;
  sub_10004C880(v22);
  swift_getErrorValue();
  v19 = v17;
  v9 = sub_100007BCC(v18);
  (*(*(v17 - 1) + 16))(v9);
  sub_10004C870();
  sub_100003EA4(v18, &qword_100064A10, &qword_10004FB00);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_10004C880(v23);
  sub_10004C8B0();
  sub_10004C9E0();

  sub_10004CE60();
  sub_10004C950();
  v10 = sub_10004C940();
  type metadata accessor for Trace(0);
  sub_10004BE60();

  v18[0] = a1;
  swift_errorRetain();
  sub_100003650(&qword_100065E90, &qword_10004F8F8);
  if (swift_dynamicCast())
  {
    if (qword_100064728 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for TodayWidgetEntry(0);
    v12 = sub_100004D74(v11, qword_100065DD0);
    a4(v12);
  }

  else
  {

    if (qword_100064720 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for TodayWidgetEntry(0);
    v15 = sub_100004D74(v14, qword_100065DB8);
    return a4(v15);
  }
}

uint64_t sub_10002F494()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10004CD10();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_10004CEC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100003EA4(v7, &qword_100064A10, &qword_10004FB00);
  }

  return 0;
}

uint64_t sub_10002F5AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100064720 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TodayWidgetEntry(0);
  v3 = sub_100004D74(v2, qword_100065DB8);
  return sub_100030894(v3, a1, type metadata accessor for TodayWidgetEntry);
}

uint64_t sub_10002F634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002F6E8;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10002F6E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002F7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100030F9C;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10002F894(uint64_t *a1)
{
  v3 = *(sub_10004CCA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TodayWidgetTimelineProvider(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Trace(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_1000283FC(a1, v1 + v4, v1 + v7, v1 + v10, v12, v13);
}

uint64_t sub_10002F9FC()
{
  v1 = sub_10004CCA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for Trace(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for TodayWidgetTimelineProvider(0) - 8);
  v11 = *(v10 + 80);
  v12 = (v9 + v11 + 16) & ~v11;
  v13 = *(v10 + 64);
  v14 = v3 | v7 | v11;
  (*(v2 + 8))(v0 + v4, v1);
  v15 = sub_10004BE80();
  (*(*(v15 - 8) + 8))(v0 + v8, v15);

  v16 = sub_10004BBA0();
  (*(*(v16 - 8) + 8))(v0 + v12, v16);

  return _swift_deallocObject(v0, v12 + v13, v14 | 7);
}

uint64_t sub_10002FC08(uint64_t a1)
{
  v3 = *(sub_10004CCA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Trace(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for TodayWidgetTimelineProvider(0) - 8);
  v10 = *(v1 + v8);
  v11 = *(v1 + v8 + 8);
  v12 = v1 + ((v8 + *(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_10002ADB4(a1, (v1 + v4), v1 + v7, v10, v11, v12);
}

uint64_t sub_10002FD54()
{
  v0 = sub_10004BB40();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TodayWidgetEntry(0);
  sub_100004D10(v4, qword_100065DB8);
  v5 = sub_100004D74(v4, qword_100065DB8);
  sub_10004BAF0();
  result = (*(v1 + 32))(v5, v3, v0);
  v7 = (v5 + *(v4 + 20));
  *v7 = _swiftEmptyArrayStorage;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0;
  return result;
}

uint64_t sub_10002FE64()
{
  v0 = sub_10004BB40();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TodayWidgetEntry(0);
  sub_100004D10(v4, qword_100065DD0);
  v5 = sub_100004D74(v4, qword_100065DD0);
  sub_10004BAF0();
  v6 = sub_10004C210();
  v8 = v7;
  v10 = v9;
  v12 = v11 & 1 | 0x8000000000000000;
  result = (*(v1 + 32))(v5, v3, v0);
  v14 = (v5 + *(v4 + 20));
  *v14 = v6;
  v14[1] = v8;
  v14[2] = v12;
  v14[3] = v10;
  return result;
}

uint64_t sub_10002FFAC()
{
  v1 = *(type metadata accessor for TodayWidgetTimelineProvider(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10004CCA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(type metadata accessor for Trace(0) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = v2 | v7 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = sub_10004BBA0();
  (*(*(v15 - 8) + 8))(v0 + v3, v15);
  (*(v6 + 8))(v0 + v8, v5);
  v16 = sub_10004BE80();
  (*(*(v16 - 8) + 8))(v0 + v12, v16);

  return _swift_deallocObject(v0, v14 + 16, v13 | 7);
}

uint64_t sub_1000301B0(uint64_t *a1)
{
  v3 = *(type metadata accessor for TodayWidgetTimelineProvider(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10004CCA0() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Trace(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_10002C4AC(a1, v1 + v4, v1 + v7, v1 + v10, v12, v13);
}

uint64_t sub_100030318()
{
  v1 = sub_10004CCA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for TodayWidgetTimelineProvider(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(type metadata accessor for Trace(0) - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = v3 | v7 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v15 = sub_10004BBA0();
  (*(*(v15 - 8) + 8))(v0 + v8, v15);
  v16 = sub_10004BE80();
  (*(*(v16 - 8) + 8))(v0 + v12, v16);

  return _swift_deallocObject(v0, v14 + 16, v13 | 7);
}

uint64_t sub_10003051C(uint64_t a1)
{
  v3 = *(sub_10004CCA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TodayWidgetTimelineProvider(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Trace(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_10002CEF4(a1, v1 + v4, v1 + v7, v1 + v10, v12, v13);
}

uint64_t sub_100030684()
{
  v1 = sub_10004CCA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003070C(int a1, uint64_t a2)
{
  v5 = *(sub_10004CCA0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10002BEC8(a1, a2, v6);
}

double sub_10003078C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1000307A4()
{
  result = qword_100065EA8;
  if (!qword_100065EA8)
  {
    sub_100003698(&qword_100065EA0, qword_10004F910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065EA8);
  }

  return result;
}

unint64_t sub_100030808(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100030894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000308FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100030944()
{
  v1 = sub_10004CCA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Trace(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = sub_10004BE80();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100030AB4(uint64_t *a1)
{
  v3 = *(sub_10004CCA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Trace(0) - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_10002E174(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_100030B9C()
{
  v1 = sub_10004CCA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for Trace(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_10004BE80();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return _swift_deallocObject(v0, v10 + 16, v9 | 7);
}

uint64_t sub_100030D0C(uint64_t a1)
{
  v3 = *(sub_10004CCA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Trace(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10002F060(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t sub_100030E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065EB8, qword_1000507B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100030F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100030FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_100064F90, qword_10004E280);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000310EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003650(&qword_100064F90, qword_10004E280);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100003650(&qword_100065BA8, qword_10004F5A8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TodayWidgetLargeEntryView(uint64_t a1)
{
  result = qword_100065F18;
  if (!qword_100065F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031258(uint64_t a1)
{
  sub_100031384(319, &qword_100065008, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100031384(319, &unk_100065C18, type metadata accessor for WidgetTodayCard, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100031384(319, &qword_100065F28, type metadata accessor for WidgetTodayCard, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100031384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100031404()
{
  v1 = type metadata accessor for TodayCardListViewItem(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for TodayWidgetLargeEntryView(0) + 24));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = type metadata accessor for WidgetTodayCard(0);
    v8 = *(v7 - 8);
    v9 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    sub_1000322BC(v9, v4, type metadata accessor for WidgetTodayCard);
    v10 = *(v8 + 56);
    v10(v4, 0, 1, v7);
    sub_100003650(&qword_100065468, &qword_10004EA50);
    v11 = *(v2 + 72);
    v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    if (v6 == 1)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10004DC70;
      sub_100032384(v4, v13 + v12, type metadata accessor for TodayCardListViewItem);
    }

    else
    {
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10004E4F0;
      v19 = v13 + v12;
      sub_1000322BC(v4, v19, type metadata accessor for TodayCardListViewItem);
      sub_1000322BC(v9 + *(v8 + 72), v19 + v11, type metadata accessor for WidgetTodayCard);
      v10((v19 + v11), 0, 1, v7);
      sub_100032324(v4, type metadata accessor for TodayCardListViewItem);
    }
  }

  else
  {
    sub_100003650(&qword_100065468, &qword_10004EA50);
    v14 = *(v2 + 72);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10004E4F0;
    v16 = v13 + v15;
    v17 = type metadata accessor for WidgetTodayCard(0);
    v18 = *(*(v17 - 8) + 56);
    v18(v16, 1, 1, v17);
    v18(v16 + v14, 1, 1, v17);
  }

  return v13;
}

uint64_t sub_100031708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = type metadata accessor for TodayWidgetSmallMediumEntryView(0);
  __chkstk_darwin(v36);
  v4 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_100003650(&qword_100065F88, &qword_10004FA38);
  __chkstk_darwin(v34);
  v6 = &v33 - v5;
  v35 = type metadata accessor for PlaceholderTodayCardView(0);
  __chkstk_darwin(v35);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for WidgetTodayCard(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003650(&qword_100065F90, &qword_10004FA40);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v33 - v20;
  v22 = *(type metadata accessor for TodayWidgetLargeEntryView(0) + 20);
  v37 = a1;
  sub_100003E3C(a1 + v22, v11, &qword_100065BA8, qword_10004F5A8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100003EA4(v11, &qword_100065BA8, qword_10004F5A8);
    *v8 = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v23 = v35;
    v24 = *(v35 + 20);
    *(v8 + v24) = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v25 = (v8 + *(v23 + 24));
    *v25 = 0u;
    v25[1] = 0u;
    sub_1000322BC(v8, v6, type metadata accessor for PlaceholderTodayCardView);
    swift_storeEnumTagMultiPayload();
    sub_100032274(&qword_100065F98, type metadata accessor for TodayWidgetSmallMediumEntryView, &unk_10004F5F0);
    sub_100032274(&qword_100065430, type metadata accessor for PlaceholderTodayCardView, &unk_10004E2CC);
    sub_10004C320();
    v26 = type metadata accessor for PlaceholderTodayCardView;
    v27 = v8;
  }

  else
  {
    sub_100032384(v11, v15, type metadata accessor for WidgetTodayCard);
    v28 = *(v36 + 20);
    sub_1000322BC(v15, v4 + v28, type metadata accessor for WidgetTodayCard);
    (*(v13 + 56))(v4 + v28, 0, 1, v12);
    *v4 = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    sub_1000322BC(v4, v6, type metadata accessor for TodayWidgetSmallMediumEntryView);
    swift_storeEnumTagMultiPayload();
    sub_100032274(&qword_100065F98, type metadata accessor for TodayWidgetSmallMediumEntryView, &unk_10004F5F0);
    sub_100032274(&qword_100065430, type metadata accessor for PlaceholderTodayCardView, &unk_10004E2CC);
    sub_10004C320();
    sub_100032324(v4, type metadata accessor for TodayWidgetSmallMediumEntryView);
    v26 = type metadata accessor for WidgetTodayCard;
    v27 = v15;
  }

  sub_100032324(v27, v26);
  v29 = sub_100031404();
  sub_100003E3C(v21, v18, &qword_100065F90, &qword_10004FA40);
  v30 = v38;
  sub_100003E3C(v18, v38, &qword_100065F90, &qword_10004FA40);
  v31 = (v30 + *(sub_100003650(&qword_100065FA0, &unk_10004FAB8) + 48));
  *v31 = 0x4030000000000000;
  v31[1] = v29;
  v31[2] = 0x4024000000000000;

  sub_100003EA4(v21, &qword_100065F90, &qword_10004FA40);

  return sub_100003EA4(v18, &qword_100065F90, &qword_10004FA40);
}

uint64_t sub_100031D64@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for PlatterView(0);
  *(a1 + *(result + 20)) = 1;
  return result;
}

uint64_t sub_100031DCC()
{
  v1 = sub_10004C380();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003650(&qword_100065F60, &qword_10004F9B0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  *v7 = sub_10004C280();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_100003650(&qword_100065F68, &qword_10004F9B8);
  sub_100031708(v0, &v7[*(v8 + 44)]);
  v9 = &v7[*(v5 + 36)];
  v10 = *(sub_100003650(&qword_1000653E8, &qword_10004F9C0) + 28);
  v11 = enum case for ColorScheme.dark(_:);
  v12 = sub_10004BF00();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  sub_10004C370();
  sub_10004C720();
  type metadata accessor for PlatterView(0);
  sub_100032184();
  sub_100032274(&qword_100065448, type metadata accessor for PlatterView, &unk_10004DBD4);
  sub_10004C580();
  (*(v2 + 8))(v4, v1);
  return sub_100003EA4(v7, &qword_100065F60, &qword_10004F9B0);
}

uint64_t sub_1000320A4(uint64_t a1)
{
  v2 = sub_10004BF00();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10004C060();
}

unint64_t sub_100032184()
{
  result = qword_100065F70;
  if (!qword_100065F70)
  {
    sub_100003698(&qword_100065F60, &qword_10004F9B0);
    sub_100003D30(&qword_100065F78, &qword_100065F80, &qword_10004F9F8, &protocol conformance descriptor for VStack<A>);
    sub_100003D30(&qword_100065438, &qword_1000653E8, &qword_10004F9C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065F70);
  }

  return result;
}

uint64_t sub_100032274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000322BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000323EC()
{
  sub_100003698(&qword_100065F60, &qword_10004F9B0);
  type metadata accessor for PlatterView(255);
  sub_100032184();
  sub_100032274(&qword_100065448, type metadata accessor for PlatterView, &unk_10004DBD4);
  return swift_getOpaqueTypeConformance2();
}

void sub_1000324B0(void (*a1)(uint64_t *__return_ptr, uint64_t *, __n128), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10004CF90())
  {
    v12[2] = _swiftEmptyArrayStorage;
    sub_10004CF50();
    if (i < 0)
    {
      __break(1u);
LABEL_18:

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = sub_10004CF20();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(a3 + 8 * j + 32);
      }

      v11 = v9;
      (a1)(v12, &v11);
      if (v4)
      {
        goto LABEL_18;
      }

      v4 = 0;

      sub_10004CF30();
      sub_10004CF60();
      sub_10004CF70();
      sub_10004CF40();
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

uint64_t sub_100032630(uint64_t a1, int a2, uint64_t a3)
{
  v50 = a2;
  v48 = type metadata accessor for AppStoreWidgetCacheDescriptor(0);
  __chkstk_darwin(v48);
  v47 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10004C8A0();
  __chkstk_darwin(v6 - 8);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10004CC50();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003650(&qword_100065250, &unk_10004E730);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_10004C270();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004CB70();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a3;
  v54 = sub_10004BB90();
  v55 = v21;
  v58._countAndFlagsBits = 45;
  v58._object = 0xE100000000000000;
  sub_10004CD30(v58);
  sub_10004CC80();
  v22 = sub_10004CB60();
  v23 = v20;
  v24 = a1;
  (*(v18 + 8))(v23, v17);
  v57 = v22;
  v59._countAndFlagsBits = sub_10004CFE0();
  sub_10004CD30(v59);

  v60._countAndFlagsBits = 45;
  v60._object = 0xE100000000000000;
  sub_10004CD30(v60);
  v25 = sub_10004CC90();
  v26 = (v25 & 1) == 0;
  if (v25)
  {
    v27._countAndFlagsBits = 1702195828;
  }

  else
  {
    v27._countAndFlagsBits = 0x65736C6166;
  }

  if (v26)
  {
    v28 = 0xE500000000000000;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  v27._object = v28;
  sub_10004CD30(v27);

  v61._countAndFlagsBits = 45;
  v61._object = 0xE100000000000000;
  sub_10004CD30(v61);
  sub_10004CC70();
  swift_getKeyPath();
  v29 = sub_10004CC60();

  (*(v8 + 8))(v10, v51);
  if (v29)
  {
    if (*(v29 + 16))
    {
      (*(v15 + 16))(v13, v29 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = v52;

    (*(v15 + 56))(v13, v30, 1, v14);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v31, v13, v14);
      goto LABEL_16;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    v31 = v52;
  }

  (*(v15 + 104))(v31, enum case for ContentSizeCategory.large(_:), v14);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_100003EA4(v13, &qword_100065250, &unk_10004E730);
  }

LABEL_16:
  sub_100035E0C(&qword_100065FC0, &type metadata accessor for ContentSizeCategory, &protocol conformance descriptor for ContentSizeCategory);
  v62._countAndFlagsBits = sub_10004CFE0();
  sub_10004CD30(v62);

  (*(v15 + 8))(v31, v14);
  v33 = v54;
  v32 = v55;
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v34 = sub_10004CAD0();
  sub_100004D74(v34, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v63._object = 0x800000010005AC10;
  v63._countAndFlagsBits = 0xD000000000000013;
  sub_10004C880(v63);
  v56 = &type metadata for String;
  v54 = v33;
  v55 = v32;

  sub_10004C870();
  sub_100003EA4(&v54, &qword_100064A10, &qword_10004FB00);
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_10004C880(v64);
  sub_10004C8B0();
  sub_10004C9C0();

  if (qword_100064740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v35 = off_100065FB0;
  if (*(off_100065FB0 + 2) && (v36 = sub_10004286C(v33, v32), (v37 & 1) != 0))
  {
    v38 = *(v35[7] + 8 * v36);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_100003650(&qword_100065FC8, &qword_10004FB08);
    v38 = sub_10004CA90();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = off_100065FB0;
    off_100065FB0 = 0x8000000000000000;
    sub_100043604(v38, v33, v32, isUniquelyReferenced_nonNull_native);

    off_100065FB0 = v57;
    swift_endAccess();
    v40 = v48;
    v41 = *(v48 + 20);
    v42 = sub_10004CCA0();
    v43 = v47;
    (*(*(v42 - 8) + 16))(v47 + v41, v24, v42);
    v44 = *(v40 + 28);
    v45 = sub_10004BBA0();
    (*(*(v45 - 8) + 16))(v43 + v44, v49, v45);
    *v43 = v33;
    v43[1] = v32;
    *(v43 + *(v40 + 24)) = v50 & 1;
    sub_10003305C(v43);
    sub_10003568C(v43);
  }

  return v38;
}

Swift::Int sub_100032F0C()
{
  sub_10004D060();
  sub_10004D070(0);
  return sub_10004D0A0();
}

Swift::Int sub_100032F78(uint64_t a1)
{
  sub_10004D060();
  sub_10004D070(0);
  return sub_10004D0A0();
}

uint64_t sub_100032FC8()
{
  type metadata accessor for Bootstrap();
  swift_allocObject();
  result = sub_10001751C();
  qword_100068ED0 = result;
  return result;
}

uint64_t type metadata accessor for AppStoreWidgetCacheDescriptor(uint64_t a1)
{
  result = qword_100066080;
  if (!qword_100066080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003305C(uint64_t *a1)
{
  v2 = sub_100003650(&qword_100065FD0, &qword_10004FB10);
  __chkstk_darwin(v2 - 8);
  v4 = &v58 - v3;
  v5 = type metadata accessor for AppStoreWidgetCacheDescriptor(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  if (byte_100065FB8)
  {
    if (qword_100064738 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_10003644C(a1, v4, type metadata accessor for AppStoreWidgetCacheDescriptor);
    sub_100034EB8(0, 0, v4);
    return swift_endAccess();
  }

  if (qword_100064740 != -1)
  {
    swift_once();
  }

  v13 = *a1;
  v12 = a1[1];
  swift_beginAccess();
  v14 = off_100065FB0;
  if (!*(off_100065FB0 + 2))
  {
    return swift_endAccess();
  }

  v15 = sub_10004286C(v13, v12);
  if ((v16 & 1) == 0)
  {
    return swift_endAccess();
  }

  v17 = *(v14[7] + 8 * v15);
  swift_endAccess();
  byte_100065FB8 = 1;
  v18 = objc_opt_self();
  v65 = v17;

  v19 = [v18 standardUserDefaults];
  v20 = sub_10004CD10();
  v21 = [v19 valueForKey:v20];

  if (v21)
  {
    sub_10004CEC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
  }

  v70 = v73;
  v71 = v74;
  if (*(&v74 + 1))
  {
    v23 = swift_dynamicCast();
    if (v23)
    {
      v24 = v68;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v69;
    }

    else
    {
      v25 = 0;
    }

    v63 = v24;
    v64 = v25;
  }

  else
  {
    sub_100003EA4(&v70, &qword_100064A10, &qword_10004FB00);
    v63 = 0;
    v64 = 0;
  }

  v26 = [v18 standardUserDefaults];
  v27 = sub_10004CD10();
  v28 = [v26 valueForKey:v27];

  if (v28)
  {
    sub_10004CEC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
  }

  v70 = v73;
  v71 = v74;
  if (*(&v74 + 1))
  {
    v29 = swift_dynamicCast();
    if (v29)
    {
      v30 = v68;
    }

    else
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = v69;
    }

    else
    {
      v31 = 0;
    }

    v62 = v31;
  }

  else
  {
    sub_100003EA4(&v70, &qword_100064A10, &qword_10004FB00);
    v30 = 0;
    v62 = 0;
  }

  if (qword_100064730 != -1)
  {
    swift_once();
  }

  v32 = qword_100068ED0;
  v33 = v11;
  sub_10003644C(a1, v11, type metadata accessor for AppStoreWidgetCacheDescriptor);

  v34 = sub_10004CA10();

  if ((v34 & 1) == 0 && *(v32 + 24) != 1)
  {
    *(v32 + 24) = 1;
    v35 = objc_autoreleasePoolPush();
    sub_100017608(v32);
    objc_autoreleasePoolPop(v35);
  }

  v36 = *(v32 + 16);
  v66 = type metadata accessor for AppStoreWidgetCacheDescriptor;
  v67 = v33;
  sub_10003644C(v33, v8, type metadata accessor for AppStoreWidgetCacheDescriptor);
  v37 = *(v6 + 80);
  v38 = (v37 + 16) & ~v37;
  v39 = (v7 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_100035840(v8, v40 + v38);
  v41 = (v40 + v39);
  v59 = v30;
  v58 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v62;
  *v41 = v30;
  v41[1] = v42;
  v43 = (v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8));
  v44 = v63;
  v45 = v64;
  *v43 = v63;
  v43[1] = v45;
  v60 = sub_10004C930();
  *(&v71 + 1) = v60;
  v72 = &protocol witness table for SyncTaskScheduler;
  sub_100007BCC(&v70);

  v61 = v36;

  sub_10004C920();
  sub_100003650(&qword_100065FD8, &qword_10004FB18);
  sub_100035E54(&qword_100065FE0, &qword_100065FD8, &qword_10004FB18);
  sub_10004CA70();

  sub_100007B80(&v70);
  v46 = v58;
  sub_10003644C(v67, v58, v66);
  v47 = swift_allocObject();
  v47[2] = v44;
  v47[3] = v45;
  v47[4] = v59;
  v47[5] = v42;
  v48 = v46;
  sub_100035840(v46, v47 + ((v37 + 48) & ~v37));
  v49 = swift_allocObject();
  *(v49 + 16) = sub_100035A90;
  *(v49 + 24) = v47;
  *(&v71 + 1) = v60;
  v72 = &protocol witness table for SyncTaskScheduler;
  sub_100007BCC(&v70);
  sub_10004C920();
  sub_100003650(&qword_100065FC8, &qword_10004FB08);
  sub_100035E54(&qword_100065FE8, &qword_100065FC8, &qword_10004FB08);
  sub_10004CA70();

  sub_100007B80(&v70);
  v51 = v66;
  v50 = v67;
  sub_10003644C(v67, v48, v66);
  v52 = (v37 + 24) & ~v37;
  v53 = swift_allocObject();
  v54 = v65;
  *(v53 + 16) = v65;
  sub_100035840(v48, v53 + v52);
  sub_10003644C(v50, v48, v51);
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  sub_100035840(v48, v55 + v52);
  v56 = sub_100007874();
  swift_retain_n();
  v57 = sub_10004CE20();
  *(&v71 + 1) = v56;
  v72 = &protocol witness table for OS_dispatch_queue;
  *&v70 = v57;
  sub_10004CA30();

  sub_10003568C(v50);
  return sub_100007B80(&v70);
}

void *sub_100033908()
{
  result = sub_100035EFC(_swiftEmptyArrayStorage);
  off_100065FB0 = result;
  return result;
}

uint64_t sub_100033930@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    v13 = type metadata accessor for AppStoreWidgetCacheDescriptor(0);
    v9 = *(*(v13 - 8) + 56);
    v12 = v13;
    v10 = a1;
    v11 = 1;
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100035640(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v5 = v3[2];
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = v5 - 1;
  v7 = type metadata accessor for AppStoreWidgetCacheDescriptor(0);
  v14 = *(v7 - 8);
  v8 = v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v6;
  v3[2] = v6;
  *v1 = v3;
  sub_100035840(v8, a1);
  v9 = *(v14 + 56);
  v10 = a1;
  v11 = 0;
  v12 = v7;
LABEL_6:

  return v9(v10, v11, 1, v12);
}

uint64_t sub_100033A84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v8 = sub_10004BBA0();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v30 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004CB70();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004BBD0();
  v36 = *(v14 - 8);
  __chkstk_darwin(v14);
  v35 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  sub_10004BC10();
  sub_10004C900();
  sub_10004CA00();
  sub_100011DF8(v37, 3);
  sub_100003650(&qword_100065DB0, qword_10004F830);
  v17 = sub_10004CD60();

  if (v17)
  {
    v18 = sub_100003650(&qword_100065FD8, &qword_10004FB18);
    sub_100035EA8(v18, v19, v20);
    swift_allocError();
    return sub_10004CA40();
  }

  else
  {
    v22 = type metadata accessor for AppStoreWidgetCacheDescriptor(0);
    v27 = v14;
    sub_10004CC80();
    sub_10004CB60();
    (*(v11 + 8))(v13, v10);
    sub_10004CC90();
    (*(v28 + 16))(v30, a2 + *(v22 + 28), v29);

    v23 = v35;
    sub_10004BBC0();
    sub_10004BCA0();
    sub_10004CA00();
    sub_10004C990();

    sub_10004C910();
    sub_10004C980();

    sub_100035E0C(&qword_100066010, &type metadata accessor for WidgetIntent, &protocol conformance descriptor for WidgetIntent);
    v24 = v27;
    sub_10004BC90();
    sub_100003650(&qword_100065548, &unk_10004EAD0);
    v37 = v16;

    sub_10004CA50();
    sub_100035E54(&qword_100066018, &qword_100065548, &unk_10004EAD0);
    v25 = sub_10004CA20();

    (*(v36 + 8))(v23, v24);
    return v25;
  }
}

uint64_t sub_100033F14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v67 = a7;
  v68 = a2;
  v64 = a3;
  v65 = a6;
  v63 = a5;
  v9 = sub_10004C8A0();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v62 = &v60 - v11;
  v12 = sub_10004CAD0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v66 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v61 = &v60 - v16;
  v17 = objc_opt_self();
  v18 = [v17 standardUserDefaults];
  v69 = a1;
  sub_10004BDE0();
  if (v19)
  {
    v20 = sub_10004CD10();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_10004CD10();
  [v18 setObject:v20 forKey:v21];

  swift_unknownObjectRelease();
  v22 = [v17 standardUserDefaults];
  sub_10004BDD0();
  if (v23)
  {
    v24 = sub_10004CD10();
  }

  else
  {
    v24 = 0;
  }

  v25 = v12;
  v26 = sub_10004CD10();
  [v22 setObject:v24 forKey:v26];

  swift_unknownObjectRelease();
  v27 = sub_10004BDE0();
  if (v28)
  {
    if (!a4)
    {
      v31 = v13;
      v33 = v66;
      goto LABEL_21;
    }

    v29 = a4;
    v30 = v64;
    v31 = v13;
    if (v27 == v64 && v28 == v29)
    {

      v32 = v65;
      v33 = v66;
    }

    else
    {
      v34 = sub_10004CFF0();

      v32 = v65;
      v33 = v66;
      if ((v34 & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v31 = v13;
    v32 = v65;
    v33 = v66;
    v29 = a4;
    v30 = v64;
    if (v29)
    {
      goto LABEL_23;
    }
  }

  v35 = sub_10004BDD0();
  if (!v36)
  {
    if (!v32)
    {
      goto LABEL_34;
    }

    goto LABEL_23;
  }

  if (!v32)
  {
LABEL_21:

    goto LABEL_23;
  }

  if (v35 == v63 && v36 == v32)
  {

LABEL_34:
    if (qword_1000646A8 != -1)
    {
      swift_once();
    }

    v54 = sub_100004D74(v25, qword_100068DB0);
    v33 = v61;
    (*(v31 + 16))(v61, v54, v25);
    sub_100003650(&qword_100064A08, &unk_10004EAB0);
    sub_10004C8D0();
    *(swift_allocObject() + 16) = xmmword_10004DC70;
    sub_10004C890();
    v78._countAndFlagsBits = 0xD000000000000012;
    v78._object = 0x800000010005ACD0;
    sub_10004C880(v78);
    if (v29)
    {
      v55 = &type metadata for String;
      v56 = v29;
    }

    else
    {
      v30 = 0;
      v56 = 0;
      v55 = 0;
      v73 = 0;
    }

    v71 = v30;
    v72 = v56;
    v74 = v55;

    sub_10004C870();
    sub_100003EA4(&v71, &qword_100064A10, &qword_10004FB00);
    v79._countAndFlagsBits = 0xD000000000000011;
    v79._object = 0x800000010005ACF0;
    sub_10004C880(v79);
    if (v32)
    {
      v57 = &type metadata for String;
      v58 = v32;
      v59 = v63;
    }

    else
    {
      v59 = 0;
      v58 = 0;
      v57 = 0;
      v73 = 0;
    }

    v38 = v69;
    v71 = v59;
    v72 = v58;
    v74 = v57;

    sub_10004C870();
    sub_100003EA4(&v71, &qword_100064A10, &qword_10004FB00);
    v80._countAndFlagsBits = 46;
    v80._object = 0xE100000000000000;
    sub_10004C880(v80);
    goto LABEL_32;
  }

  v53 = sub_10004CFF0();

  if (v53)
  {
    goto LABEL_34;
  }

LABEL_23:
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v37 = sub_100004D74(v25, qword_100068DB0);
  (*(v31 + 16))(v33, v37, v25);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v75._countAndFlagsBits = 0xD000000000000035;
  v75._object = 0x800000010005AC90;
  sub_10004C880(v75);
  v38 = v69;
  v39 = sub_10004BDE0();
  if (v40)
  {
    v41 = &type metadata for String;
  }

  else
  {
    v39 = 0;
    v41 = 0;
    v73 = 0;
  }

  v71 = v39;
  v72 = v40;
  v74 = v41;
  sub_10004C870();
  sub_100003EA4(&v71, &qword_100064A10, &qword_10004FB00);
  v76._countAndFlagsBits = 0x206D6F726620;
  v76._object = 0xE600000000000000;
  sub_10004C880(v76);
  v42 = sub_10004BDD0();
  if (v43)
  {
    v44 = &type metadata for String;
  }

  else
  {
    v42 = 0;
    v44 = 0;
    v73 = 0;
  }

  v71 = v42;
  v72 = v43;
  v74 = v44;
  sub_10004C870();
  sub_100003EA4(&v71, &qword_100064A10, &qword_10004FB00);
  v77._countAndFlagsBits = 46;
  v77._object = 0xE100000000000000;
  sub_10004C880(v77);
LABEL_32:
  sub_10004C8B0();
  sub_10004C9C0();

  (*(v31 + 8))(v33, v25);
  v45 = v67 + *(type metadata accessor for AppStoreWidgetCacheDescriptor(0) + 20);
  type metadata accessor for WidgetArtworkLoader();
  sub_10004C900();
  sub_10004CA00();
  v46 = v71;
  sub_10004BC10();
  sub_10004CA00();
  v47 = v70;
  sub_100003650(&qword_100065FC8, &qword_10004FB08);
  v48 = sub_10004CA90();
  v49 = sub_10004BDB0();
  __chkstk_darwin(v49);
  *(&v60 - 4) = v45;
  *(&v60 - 3) = v46;
  *(&v60 - 2) = v47;
  sub_1000324B0(sub_100035DA0, (&v60 - 6), v49);

  v50 = swift_allocObject();
  *(v50 + 16) = v48;
  *(v50 + 24) = v38;
  sub_100007874();

  v51 = sub_10004CE20();
  type metadata accessor for TodayWidgetCardCollection(0);
  sub_10004BBB0();

  return v48;
}

uint64_t sub_100034824(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100003650(&qword_100065FF8, &qword_10004FB28);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for AppStoreWidgetCacheDescriptor(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004CA80();
  if (qword_100064740 != -1)
  {
    swift_once();
  }

  v11 = *a3;
  v12 = a3[1];
  swift_beginAccess();

  sub_100041390(0, v11, v12);
  swift_endAccess();
  byte_100065FB8 = 0;
  if (qword_100064738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100033930(v6);
  swift_endAccess();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100003EA4(v6, &qword_100065FF8, &qword_10004FB28);
  }

  sub_100035840(v6, v10);
  sub_10003305C(v10);
  return sub_10003568C(v10);
}

uint64_t sub_100034A6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v18[1] = a2;
  v19 = a3;
  v3 = sub_100003650(&qword_100065FF8, &qword_10004FB28);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v20 = type metadata accessor for AppStoreWidgetCacheDescriptor(0);
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v18[0] = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004C8A0();
  __chkstk_darwin(v8 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v9 = sub_10004CAD0();
  sub_100004D74(v9, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  sub_10004C8D0();
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v24._object = 0x800000010005AC70;
  v24._countAndFlagsBits = 0xD000000000000016;
  sub_10004C880(v24);
  swift_getErrorValue();
  v11 = v21;
  v10 = v22;
  v23[3] = v22;
  v12 = sub_100007BCC(v23);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  sub_10004C870();
  sub_100003EA4(v23, &qword_100064A10, &qword_10004FB00);
  v25._countAndFlagsBits = 46;
  v25._object = 0xE100000000000000;
  sub_10004C880(v25);
  sub_10004C8B0();
  sub_10004C9E0();

  sub_10004CA60();
  if (qword_100064740 != -1)
  {
    swift_once();
  }

  v13 = *v19;
  v14 = v19[1];
  swift_beginAccess();

  sub_100041390(0, v13, v14);
  swift_endAccess();
  byte_100065FB8 = 0;
  if (qword_100064738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100033930(v5);
  swift_endAccess();
  if ((*(v6 + 48))(v5, 1, v20) == 1)
  {
    return sub_100003EA4(v5, &qword_100065FF8, &qword_10004FB28);
  }

  v16 = v5;
  v17 = v18[0];
  sub_100035840(v16, v18[0]);
  sub_10003305C(v17);
  return sub_10003568C(v17);
}

unint64_t sub_100034EB8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_100035418(isUniquelyReferenced_nonNull_native, v14, 1, v5, &qword_100065FF0, &qword_10004FB20, type metadata accessor for AppStoreWidgetCacheDescriptor);
    *v3 = v5;
  }

  result = sub_100035024(v7, a2, 1, a3, type metadata accessor for AppStoreWidgetCacheDescriptor, type metadata accessor for AppStoreWidgetCacheDescriptor, &qword_100065FD0, &qword_10004FB10);
  *v3 = v5;
  return result;
}

unint64_t sub_100035024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = a5(0);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_100003EA4(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_100003EA4(a4, v31, v32);
  }

  result = sub_10003644C(a4, v21, a6);
  if (v18 >= v23)
  {
    return sub_100003EA4(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_1000351D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003650(&qword_100066008, qword_10004FB40);
  v10 = *(sub_100003650(&qword_100064A30, &qword_10004DCA8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003650(&qword_100064A30, &qword_10004DCA8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100035418(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003650(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10003568C(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreWidgetCacheDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000356E8()
{
  v1 = (type metadata accessor for AppStoreWidgetCacheDescriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_10004CCA0();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[9];
  v9 = sub_10004BBA0();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100035840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreWidgetCacheDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000358A4(uint64_t *a1)
{
  v3 = *(type metadata accessor for AppStoreWidgetCacheDescriptor(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  return sub_100033A84(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_100035954()
{
  v1 = (type metadata accessor for AppStoreWidgetCacheDescriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_10004CCA0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[9];
  v8 = sub_10004BBA0();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100035A90(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppStoreWidgetCacheDescriptor(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_100033F14(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100035B18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035B80(uint64_t a1)
{
  v3 = *(type metadata accessor for AppStoreWidgetCacheDescriptor(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_100034824(a1, v4, v5);
}

uint64_t sub_100035BF8()
{
  v1 = (type metadata accessor for AppStoreWidgetCacheDescriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_10004CCA0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[9];
  v8 = sub_10004BBA0();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100035D2C(uint64_t a1)
{
  v3 = *(type metadata accessor for AppStoreWidgetCacheDescriptor(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_100034A6C(a1, v4, v5);
}

uint64_t sub_100035DC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100035E54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100035EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100066020;
  if (!qword_100066020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066020);
  }

  return result;
}

unint64_t sub_100035EFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003650(&unk_100066B10, &unk_1000507A0);
    v3 = sub_10004CFD0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10004286C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100036014(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10004CCA0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10004BBA0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10003614C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10004CCA0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004BBA0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100036270(uint64_t a1)
{
  result = sub_10004CCA0();
  if (v2 <= 0x3F)
  {
    result = sub_10004BBA0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayWidgetPresenterUpdateError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TodayWidgetPresenterUpdateError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000363F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000660C0;
  if (!qword_1000660C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000660C0);
  }

  return result;
}

uint64_t sub_10003644C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003653C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTodayCard(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000365BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for WidgetTodayCard(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10003663C(uint64_t a1)
{
  v1 = type metadata accessor for WidgetTodayCard(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1000366C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a4@<D1>)
{
  *a2 = sub_10004C280();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = sub_100003650(&qword_100066228, &qword_10004FD98);
  sub_100036870(a1, a2 + *(v7 + 44), a4);
  LOBYTE(a1) = sub_10004C3A0();
  sub_10004BEE0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(sub_100003650(&qword_100066230, &qword_10004FDA0) + 36);
  *v16 = a1;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  sub_10004C720();
  sub_10004BF90();
  v17 = (a2 + *(sub_100003650(&qword_100066238, &qword_10004FDA8) + 36));
  *v17 = v24;
  v17[1] = v25;
  v17[2] = v26;
  v18 = sub_10004C720();
  v20 = v19;
  v21 = (a2 + *(sub_100003650(&qword_100066240, &qword_10004FDB0) + 36));
  *v21 = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  *(v21 + *(type metadata accessor for PlatterView(0) + 20)) = 0;
  result = sub_100003650(&qword_100066248, &qword_10004FDF0);
  v23 = (v21 + *(result + 36));
  *v23 = v18;
  v23[1] = v20;
  return result;
}

uint64_t sub_100036870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a4@<D1>)
{
  v63 = sub_100003650(&qword_100066250, &qword_10004FDF8);
  __chkstk_darwin(v63);
  v59 = &v53 - v7;
  v8 = sub_100003650(&qword_100066258, &qword_10004FE00);
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  v60 = sub_100003650(&qword_100066260, &qword_10004FE08);
  __chkstk_darwin(v60);
  v61 = &v53 - v11;
  v65 = sub_100003650(&qword_100066268, &qword_10004FE10);
  __chkstk_darwin(v65);
  v62 = &v53 - v12;
  v64 = sub_100003650(&qword_100066270, &qword_10004FE18);
  __chkstk_darwin(v64);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = sub_100003650(&qword_100066278, &qword_10004FE20);
  __chkstk_darwin(v24 - 8);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v53 - v28;
  v30 = *(a1 + 16);
  if (v30 == 2)
  {
    v35 = type metadata accessor for TodayCardListViewItem(0);
    v56 = v8;
    v55 = v10;
    v36 = *(v35 - 8);
    v37 = a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v57 = v26;
    sub_100039E24(v37, v23, type metadata accessor for TodayCardListViewItem);
    v58 = a2;
    sub_10004C720();
    sub_10004BF90();
    v38 = v20;
    v39 = v29;
    v40 = v64;
    v41 = &v23[*(v64 + 36)];
    v54 = v23;
    v42 = v67;
    *v41 = v66;
    *(v41 + 1) = v42;
    *(v41 + 2) = v68;
    v43 = v38;
    v26 = v57;
    sub_100039E24(v37 + *(v36 + 72), v38, type metadata accessor for TodayCardListViewItem);
    sub_10004C720();
    sub_10004BF90();
    v44 = *(v40 + 36);
    v29 = v39;
    v45 = (v43 + v44);
    v46 = v70;
    *v45 = v69;
    v45[1] = v46;
    v45[2] = v71;
    sub_100003E3C(v23, v17, &qword_100066270, &qword_10004FE18);
    sub_100003E3C(v43, v14, &qword_100066270, &qword_10004FE18);
    v47 = v59;
    sub_100003E3C(v17, v59, &qword_100066270, &qword_10004FE18);
    v48 = sub_100003650(&qword_1000662A8, &unk_10004FE30);
    v49 = v47 + *(v48 + 48);
    *v49 = a4;
    *(v49 + 8) = 0;
    sub_100003E3C(v14, v47 + *(v48 + 64), &qword_100066270, &qword_10004FE18);
    sub_100003EA4(v14, &qword_100066270, &qword_10004FE18);
    sub_100003EA4(v17, &qword_100066270, &qword_10004FE18);
    sub_100003E3C(v47, v61, &qword_100066250, &qword_10004FDF8);
    swift_storeEnumTagMultiPayload();
    sub_100039FAC();
    sub_100003D30(&qword_100066298, &qword_100066250, &qword_10004FDF8, &protocol conformance descriptor for TupleView<A>);
    v50 = v62;
    sub_10004C320();
    sub_100003E3C(v50, v55, &qword_100066268, &qword_10004FE10);
    swift_storeEnumTagMultiPayload();
    sub_100039EF4();
    sub_10004C320();
    a2 = v58;
    sub_100003EA4(v50, &qword_100066268, &qword_10004FE10);
    sub_100003EA4(v47, &qword_100066250, &qword_10004FDF8);
    sub_100003EA4(v43, &qword_100066270, &qword_10004FE18);
    sub_100003EA4(v54, &qword_100066270, &qword_10004FE18);
  }

  else if (v30 == 1)
  {
    v31 = *(type metadata accessor for TodayCardListViewItem(0) - 8);
    sub_100039E24(a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v23, type metadata accessor for TodayCardListViewItem);
    sub_10004C720();
    sub_10004BF90();
    v32 = &v23[*(v64 + 36)];
    v33 = v70;
    *v32 = v69;
    *(v32 + 1) = v33;
    *(v32 + 2) = v71;
    sub_100003E3C(v23, v61, &qword_100066270, &qword_10004FE18);
    swift_storeEnumTagMultiPayload();
    sub_100039FAC();
    sub_100003D30(&qword_100066298, &qword_100066250, &qword_10004FDF8, &protocol conformance descriptor for TupleView<A>);
    v34 = v62;
    sub_10004C320();
    sub_100003E3C(v34, v10, &qword_100066268, &qword_10004FE10);
    swift_storeEnumTagMultiPayload();
    sub_100039EF4();
    sub_10004C320();
    sub_100003EA4(v34, &qword_100066268, &qword_10004FE10);
    sub_100003EA4(v23, &qword_100066270, &qword_10004FE18);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100039EF4();
    sub_10004C320();
  }

  sub_100003E3C(v29, v26, &qword_100066278, &qword_10004FE20);
  sub_100003E3C(v26, a2, &qword_100066278, &qword_10004FE20);
  v51 = a2 + *(sub_100003650(&qword_1000662A0, &qword_10004FE28) + 48);
  *v51 = 0;
  *(v51 + 8) = 0;
  sub_100003EA4(v29, &qword_100066278, &qword_10004FE20);
  return sub_100003EA4(v26, &qword_100066278, &qword_10004FE20);
}

__n128 sub_10003717C@<Q0>(_OWORD *a1@<X8>)
{
  v32 = a1;
  v2 = sub_10004CB10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for WidgetTodayCard(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TodayCardListViewItem.Content(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039E24(v1, v15, type metadata accessor for TodayCardListViewItem.Content);
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    sub_10003ACD4(v15, v12, type metadata accessor for WidgetTodayCard);
    if (*(*(v12 + 8) + 16) <= 1uLL)
    {
      v20 = *(v12 + 9);
      if (!v20)
      {
        v22 = [objc_opt_self() whiteColor];
        v20 = 0;
      }

      v23 = v20;
      v24 = sub_10004C5B0();
      if (qword_1000646F8 != -1)
      {
        swift_once();
      }

      v25 = xmmword_100068E90;

      v31 = *(&xmmword_100068E90 + 8);
      v30 = unk_100068EA8;
      v26 = sub_10004C3A0();
      v33 = 0;
      *&v42 = v24;
      *(&v42 + 1) = v25;
      v43 = v31;
      *v44 = v30;
      v44[16] = v26;
      v44[17] = 0;

      sub_100003650(&qword_100065D20, &unk_10004F6B0);
      sub_1000267DC();
      sub_10004C320();
      v38 = v35;
      v39 = v36;
      v40 = *v37;
      LOWORD(v41) = *&v37[16];
      v34 = 0;
      BYTE2(v41) = 0;
      sub_100003650(&qword_100066608, &unk_100050120);
      sub_10003B19C();
      sub_10004C320();
    }

    else
    {
      type metadata accessor for ThumbnailBackgroundColor(0);
      sub_1000048A4(v8);
      sub_10004CB00();
      v17 = sub_10004CAE0();
      v18 = *(v3 + 8);
      v18(v5, v2);
      v18(v8, v2);
      if ((v17 & 1) == 0)
      {
        v21 = sub_10004C5E0();
        LOBYTE(v38) = 1;
        *&v42 = v21;
        v44[18] = 1;
        sub_100003650(&qword_100066608, &unk_100050120);
        sub_10003B19C();
        sub_10004C320();
LABEL_14:
        v42 = v35;
        v43 = v36;
        *v44 = *v37;
        *&v44[15] = *&v37[15];
        v34 = 0;
        v44[19] = 0;
        sub_100003650(&qword_1000665F0, &qword_100050118);
        sub_10003B110();
        sub_10004C320();
        sub_100039E8C(v12, type metadata accessor for WidgetTodayCard);
        v42 = v38;
        v43 = v39;
        *v44 = v40;
        *&v44[16] = v41;
        goto LABEL_15;
      }

      v19 = sub_10004C5D0();
      v33 = 1;
      *&v42 = v19;
      v44[17] = 1;

      sub_100003650(&qword_100065D20, &unk_10004F6B0);
      sub_1000267DC();
      sub_10004C320();
      v38 = v35;
      v39 = v36;
      v40 = *v37;
      LOWORD(v41) = *&v37[16];
      v34 = 0;
      BYTE2(v41) = 0;
      sub_100003650(&qword_100066608, &unk_100050120);
      sub_10003B19C();
      sub_10004C320();
    }

    v35 = v42;
    v36 = v43;
    *v37 = *v44;
    *&v37[15] = *&v44[15];
    goto LABEL_14;
  }

  v16 = sub_10004C5E0();
  LOBYTE(v35) = 1;
  *&v38 = v16;
  HIBYTE(v41) = 1;
  sub_100003650(&qword_1000665F0, &qword_100050118);
  sub_10003B110();
  sub_10004C320();
LABEL_15:
  v27 = v43;
  v28 = v32;
  *v32 = v42;
  v28[1] = v27;
  result = *v44;
  v28[2] = *v44;
  *(v28 + 12) = *&v44[16];
  return result;
}

uint64_t sub_100037814@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v131 = sub_100003650(&qword_100066448, &qword_100050000);
  __chkstk_darwin(v131);
  v132 = &v113 - v1;
  v139 = sub_10004CB50();
  v124 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for AppIconConfiguration(0);
  v114 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppIcon(0);
  v135 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100003650(&qword_100066450, &qword_100050008);
  __chkstk_darwin(v115);
  v117 = &v113 - v7;
  v116 = sub_100003650(&qword_100066458, &qword_100050010);
  __chkstk_darwin(v116);
  v118 = &v113 - v8;
  v129 = sub_100003650(&qword_100066460, &qword_100050018);
  __chkstk_darwin(v129);
  v119 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v120 = &v113 - v11;
  v126 = sub_100003650(&qword_100066468, &unk_100050020);
  __chkstk_darwin(v126);
  v128 = &v113 - v12;
  v13 = sub_100003650(&qword_100064D90, &unk_10004DFE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v113 - v14;
  v16 = sub_10004C630();
  v121 = *(v16 - 8);
  v122 = v16;
  __chkstk_darwin(v16);
  v18 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100003650(&qword_100066470, &qword_100050030);
  __chkstk_darwin(v125);
  v123 = &v113 - v19;
  v130 = sub_100003650(&qword_100066478, &qword_100050038);
  __chkstk_darwin(v130);
  v127 = &v113 - v20;
  v21 = type metadata accessor for WidgetTodayCard(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TodayCardListViewItem.Content(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039E24(v134, v27, type metadata accessor for TodayCardListViewItem.Content);
  if ((*(v22 + 48))(v27, 1, v21) == 1)
  {
    sub_1000129C0();
    sub_10004CE80(1.0, 1.0, 1.0, 0.1);
    v139 = sub_10004C5B0();
    sub_10004C720();
    sub_10004BF90();
    LODWORD(v129) = BYTE8(v172);
    v137 = v173;
    v138 = v172;
    v28 = v132;
    LODWORD(v134) = BYTE8(v173);
    v135 = *(&v174 + 1);
    v136 = v174;
    v145 = BYTE8(v172);
    v144 = BYTE8(v173);
    sub_10004C5C0();
    v29 = sub_10004C5F0();

    sub_10004BF40();
    v30 = v175;
    v31 = v176;
    v32 = v177;
    v33 = v178;
    v34 = v179;
    v35 = v180;
    v36 = sub_10004C720();
    v38 = v37;
    v143 = 0;
    v39 = sub_10004C720();
    *&v149 = v30;
    *(&v149 + 1) = __PAIR64__(v32, v31);
    *&v150 = v33;
    *(&v150 + 1) = v34;
    *&v151 = v35;
    *(&v151 + 1) = v29;
    LOWORD(v152) = 256;
    *(&v152 + 2) = v147;
    WORD3(v152) = v148;
    *(&v152 + 1) = v36;
    *&v153 = v38;
    *(&v153 + 1) = 0x3FE999999999999ALL;
    LOWORD(v154) = 0;
    *(&v154 + 1) = v39;
    v155 = v40;
    *&v146[70] = v153;
    *&v146[86] = v154;
    *&v146[102] = v40;
    *&v146[6] = v149;
    *&v146[22] = v150;
    *&v146[38] = v151;
    *&v146[54] = v152;
    v156 = v30;
    v157 = v31;
    v158 = v32;
    v159 = v33;
    v160 = v34;
    v161 = v35;
    v162 = v29;
    v163 = 256;
    v165 = v148;
    v164 = v147;
    v166 = v36;
    v167 = v38;
    v168 = 0x3FE999999999999ALL;
    v169 = 0;
    v170 = v39;
    v171 = v40;
    sub_100003E3C(&v149, v142, &qword_100066480, &qword_100050040);
    sub_100003EA4(&v156, &qword_100066480, &qword_100050040);
    v41 = *&v146[32];
    *(v28 + 106) = *&v146[48];
    v42 = *&v146[80];
    *(v28 + 122) = *&v146[64];
    *(v28 + 138) = v42;
    *(v28 + 152) = *&v146[94];
    v43 = *&v146[16];
    *(v28 + 58) = *v146;
    *(v28 + 74) = v43;
    v44 = v138;
    *v28 = v139;
    *(v28 + 8) = v44;
    *(v28 + 16) = v129;
    *(v28 + 24) = v137;
    *(v28 + 32) = v134;
    v45 = v135;
    *(v28 + 40) = v136;
    *(v28 + 48) = v45;
    *(v28 + 56) = 256;
    *(v28 + 90) = v41;
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100066488, &qword_100050048);
    sub_10003A58C();
    sub_10003AAE0();
    return sub_10004C320();
  }

  else
  {
    sub_10003ACD4(v27, v24, type metadata accessor for WidgetTodayCard);
    v47 = *(v24 + 7);
    v113 = v24;
    if (v47)
    {
      v138 = v47;
      sub_10004C620();
      v49 = v121;
      v48 = v122;
      (*(v121 + 104))(v18, enum case for Image.ResizingMode.stretch(_:), v122);
      sub_10004C680();

      (*(v49 + 8))(v18, v48);
      sub_10004CB20();
      (*(v124 + 56))(v15, 0, 1, v139);
      v50 = v123;
      sub_10004C670();

      sub_100003EA4(v15, &qword_100064D90, &unk_10004DFE0);
      v51 = v50 + *(sub_100003650(&qword_100064D98, &qword_100050060) + 36);
      *v51 = 0;
      *(v51 + 8) = 257;
      sub_10004C720();
      sub_10004BF90();
      v52 = (v50 + *(sub_100003650(&qword_1000664B8, &qword_100050A40) + 36));
      v53 = v173;
      *v52 = v172;
      v52[1] = v53;
      v52[2] = v174;
      *(v50 + *(sub_100003650(&qword_1000664A8, &unk_100050050) + 36)) = 256;
      sub_10004C5C0();
      v54 = sub_10004C5F0();

      sub_10004BF40();
      v55 = v175;
      v56 = v176;
      LODWORD(v48) = v177;
      v57 = v178;
      v58 = v179;
      v59 = v180;
      v60 = sub_10004C720();
      v62 = v61;
      v145 = 0;
      v63 = sub_10004C720();
      *&v149 = v55;
      *(&v149 + 1) = __PAIR64__(v48, v56);
      *&v150 = v57;
      *(&v150 + 1) = v58;
      *&v151 = v59;
      *(&v151 + 1) = v54;
      LOWORD(v152) = 256;
      v64 = v140;
      *(&v152 + 2) = v140;
      WORD3(v152) = v141;
      *(&v152 + 1) = v60;
      *&v153 = v62;
      *(&v153 + 1) = 0x3FE999999999999ALL;
      LOWORD(v154) = 0;
      *(&v154 + 1) = v63;
      v155 = v65;
      v66 = v50 + *(v125 + 36);
      v67 = v152;
      v68 = v154;
      *(v66 + 64) = v153;
      *(v66 + 80) = v68;
      *(v66 + 96) = v65;
      v69 = v150;
      *v66 = v149;
      *(v66 + 16) = v69;
      *(v66 + 32) = v151;
      *(v66 + 48) = v67;
      v156 = v55;
      v157 = v56;
      v158 = v48;
      v159 = v57;
      v160 = v58;
      v161 = v59;
      v162 = v54;
      v163 = 256;
      v165 = v141;
      v164 = v64;
      v166 = v60;
      v167 = v62;
      v168 = 0x3FE999999999999ALL;
      v169 = 0;
      v170 = v63;
      v171 = v65;
      sub_100003E3C(&v149, v142, &qword_100066480, &qword_100050040);
      sub_100003EA4(&v156, &qword_100066480, &qword_100050040);
      sub_100003E3C(v50, v128, &qword_100066470, &qword_100050030);
      swift_storeEnumTagMultiPayload();
      sub_10003A618();
      sub_10003A7B4();
      v70 = v127;
      sub_10004C320();

      sub_100003EA4(v50, &qword_100066470, &qword_100050030);
    }

    else
    {
      v71 = *(v24 + 8);
      v72 = *(v71 + 2);
      if (v72 >= 6)
      {
        v73 = 6;
      }

      else
      {
        v73 = *(v71 + 2);
      }

      v74 = _swiftEmptyArrayStorage;
      if (v72)
      {
        v156 = _swiftEmptyArrayStorage;
        v75 = v114;
        v76 = &v71[(*(v114 + 80) + 32) & ~*(v114 + 80)];
        v123 = v71;

        sub_100026A38(0, v73, 0);
        v74 = v156;
        v77 = *(v75 + 72);
        v78 = (v124 + 40);
        do
        {
          v79 = v136;
          sub_100039E24(v76, v136, type metadata accessor for AppIconConfiguration);
          sub_100039E24(v79, v6, type metadata accessor for AppIconConfiguration);
          v80 = v138;
          sub_10004CB20();
          sub_100039E8C(v79, type metadata accessor for AppIconConfiguration);
          (*v78)(&v6[*(v137 + 36)], v80, v139);
          v156 = v74;
          v82 = v74[2];
          v81 = v74[3];
          if (v82 >= v81 >> 1)
          {
            sub_100026A38((v81 > 1), v82 + 1, 1);
            v74 = v156;
          }

          v74[2] = v82 + 1;
          sub_10003ACD4(v6, v74 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v82, type metadata accessor for AppIcon);
          v76 += v77;
          --v73;
        }

        while (v73);
      }

      sub_10004C720();
      sub_10004BF90();
      v83 = v172;
      v84 = v173;
      v85 = *(&v174 + 1);
      v139 = v174;
      v145 = BYTE8(v172);
      v144 = BYTE8(v173);
      v86 = v117;
      v87 = &v117[*(v115 + 36)];
      sub_100039E24(v134, v87, type metadata accessor for TodayCardListViewItem.Content);
      v88 = *(type metadata accessor for ThumbnailBackgroundColor(0) + 20);
      *(v87 + v88) = swift_getKeyPath();
      sub_100003650(&qword_100064960, &qword_10004DC30);
      swift_storeEnumTagMultiPayload();
      v89 = sub_10004C720();
      v91 = v90;
      v92 = (v87 + *(sub_100003650(&qword_100066510, &qword_100050078) + 36));
      *v92 = v89;
      v92[1] = v91;
      *v86 = v74;
      *(v86 + 8) = 0x4018000000000000;
      *(v86 + 16) = v83;
      *(v86 + 24) = v145;
      *(v86 + 32) = v84;
      *(v86 + 40) = v144;
      *(v86 + 48) = v139;
      *(v86 + 56) = v85;
      v93 = v118;
      sub_100007C30(v86, v118, &qword_100066450, &qword_100050008);
      *(v93 + *(v116 + 36)) = 256;
      sub_10004C5C0();
      v94 = sub_10004C5F0();
      v139 = v94;

      sub_10004BF40();
      v95 = v175;
      LODWORD(v84) = v176;
      v96 = v177;
      v97 = v178;
      v98 = v179;
      v99 = v180;
      v100 = sub_10004C720();
      v102 = v101;
      v143 = 0;
      v103 = sub_10004C720();
      v138 = v104;
      *&v149 = v95;
      *(&v149 + 1) = __PAIR64__(v96, v84);
      *&v150 = v97;
      *(&v150 + 1) = v98;
      *&v151 = v99;
      *(&v151 + 1) = v94;
      LOWORD(v152) = 256;
      *(&v152 + 1) = v100;
      *&v153 = v102;
      *(&v153 + 1) = 0x3FE999999999999ALL;
      LOWORD(v154) = 0;
      *(&v154 + 1) = v103;
      v105 = v103;
      v155 = v104;
      v106 = v93;
      v107 = v119;
      sub_100007C30(v106, v119, &qword_100066458, &qword_100050010);
      v108 = v107 + *(v129 + 36);
      v109 = v152;
      v110 = v154;
      *(v108 + 64) = v153;
      *(v108 + 80) = v110;
      *(v108 + 96) = v155;
      v111 = v150;
      *v108 = v149;
      *(v108 + 16) = v111;
      *(v108 + 32) = v151;
      *(v108 + 48) = v109;
      v156 = v95;
      v157 = v84;
      v158 = v96;
      v159 = v97;
      v160 = v98;
      v161 = v99;
      v162 = v139;
      v163 = 256;
      v166 = v100;
      v167 = v102;
      v168 = 0x3FE999999999999ALL;
      v169 = 0;
      v170 = v105;
      v171 = v138;
      sub_100003E3C(&v149, v142, &qword_100066480, &qword_100050040);
      sub_100003EA4(&v156, &qword_100066480, &qword_100050040);
      v112 = v120;
      sub_100007C30(v107, v120, &qword_100066460, &qword_100050018);
      sub_100003E3C(v112, v128, &qword_100066460, &qword_100050018);
      swift_storeEnumTagMultiPayload();
      sub_10003A618();
      sub_10003A7B4();
      v70 = v127;
      sub_10004C320();
      sub_100003EA4(v112, &qword_100066460, &qword_100050018);
    }

    sub_100003E3C(v70, v132, &qword_100066478, &qword_100050038);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100066488, &qword_100050048);
    sub_10003A58C();
    sub_10003AAE0();
    sub_10004C320();
    sub_100003EA4(v70, &qword_100066478, &qword_100050038);
    return sub_100039E8C(v113, type metadata accessor for WidgetTodayCard);
  }
}

uint64_t sub_100038A08()
{
  v0 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10004BAC0();
  sub_100004D10(v3, qword_1000660C8);
  v4 = sub_100004D74(v3, qword_1000660C8);
  sub_10004BAB0();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100038B38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003650(&qword_1000663A0, &unk_10004FF80);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for WidgetTodayCard(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCardListViewItem.Content(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039E24(v2, v13, type metadata accessor for TodayCardListViewItem.Content);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    if (qword_100064748 != -1)
    {
      swift_once();
    }

    v14 = sub_10004BAC0();
    v15 = sub_100004D74(v14, qword_1000660C8);
    return (*(*(v14 - 8) + 16))(a1, v15, v14);
  }

  else
  {
    sub_10003ACD4(v13, v10, type metadata accessor for WidgetTodayCard);
    sub_100003E3C(&v10[*(v7 + 44)], v6, &qword_1000663A0, &unk_10004FF80);
    v17 = sub_10004BAC0();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (v19(v6, 1, v17) == 1)
    {
      if (qword_100064748 != -1)
      {
        swift_once();
      }

      v20 = sub_100004D74(v17, qword_1000660C8);
      (*(v18 + 16))(a1, v20, v17);
      sub_100039E8C(v10, type metadata accessor for WidgetTodayCard);
      result = v19(v6, 1, v17);
      if (result != 1)
      {
        return sub_100003EA4(v6, &qword_1000663A0, &unk_10004FF80);
      }
    }

    else
    {
      sub_100039E8C(v10, type metadata accessor for WidgetTodayCard);
      return (*(v18 + 32))(a1, v6, v17);
    }
  }

  return result;
}

uint64_t sub_100038ECC@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_10004BB40();
  v23[0] = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CardDetailView.Heading(0);
  __chkstk_darwin(v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTodayCard(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TodayCardListViewItem.Content(0);
  __chkstk_darwin(v15 - 8);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039E24(v23[1], v17, type metadata accessor for TodayCardListViewItem.Content);
  if ((*(v12 + 48))(v17, 1, v11) == 1)
  {
    *a1 = xmmword_10004FC60;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_10003ACD4(v17, v14, type metadata accessor for WidgetTodayCard);
    sub_100003E3C(&v14[*(v11 + 48)], v4, &qword_1000655E8, &qword_10004F6C0);
    v19 = v23[0];
    if ((*(v23[0] + 48))(v4, 1, v5) == 1)
    {
      sub_100003EA4(v4, &qword_1000655E8, &qword_10004F6C0);
      v20 = *(v14 + 2);
      v21 = *(v14 + 3);

      sub_100039E8C(v14, type metadata accessor for WidgetTodayCard);
      *v10 = v20;
      *(v10 + 1) = v21;
    }

    else
    {
      sub_100039E8C(v14, type metadata accessor for WidgetTodayCard);
      v22 = *(v19 + 32);
      v22(v7, v4, v5);
      v22(v10, v7, v5);
    }

    swift_storeEnumTagMultiPayload();
    return sub_10003ACD4(v10, a1, type metadata accessor for CardDetailView.Heading);
  }
}

uint64_t sub_100039280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10004C1B0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100003650(&qword_100066390, &qword_10004FEC0);
  return sub_1000392D4(a1, a2 + *(v4 + 44));
}

uint64_t sub_1000392D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for WidgetTodayCard(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TodayCardListViewItem.Content(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CardDetailView.Heading(0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for CardDetailView(0);
  __chkstk_darwin(v13);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v39 - v16);
  __chkstk_darwin(v18);
  v42 = &v39 - v19;
  v20 = type metadata accessor for ThumbnailArtworkView(0);
  __chkstk_darwin(v20 - 8);
  v40 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  sub_100039E24(a1, &v39 - v23, type metadata accessor for TodayCardListViewItem.Content);
  v41 = v12;
  sub_100038ECC(v12);
  sub_100039E24(a1, v9, type metadata accessor for TodayCardListViewItem.Content);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v25 = 0x800000010005AD50;
    v26 = 0xD00000000000002ALL;
  }

  else
  {
    sub_10003ACD4(v9, v6, type metadata accessor for WidgetTodayCard);
    v26 = *(v6 + 4);
    v25 = *(v6 + 5);

    sub_100039E8C(v6, type metadata accessor for WidgetTodayCard);
  }

  *v17 = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  *(v17 + v13[5]) = swift_getKeyPath();
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  *(v17 + v13[6]) = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v27 = v13[7];
  *(v17 + v27) = swift_getKeyPath();
  sub_100003650(&qword_100064960, &qword_10004DC30);
  swift_storeEnumTagMultiPayload();
  sub_10003ACD4(v41, v17 + v13[8], type metadata accessor for CardDetailView.Heading);
  v28 = v17 + v13[9];
  *v28 = sub_100021D20;
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = (v17 + v13[10]);
  *v29 = v26;
  v29[1] = v25;
  v30 = v17 + v13[11];
  *v30 = sub_100021D20;
  *(v30 + 1) = 0;
  v30[16] = 0;
  *(v17 + v13[12]) = 0x8000000000000000;
  *(v17 + v13[13]) = 0x7FF0000000000000;
  v31 = (v17 + v13[14]);
  *v31 = 0u;
  v31[1] = 0u;
  v32 = v42;
  sub_10003ACD4(v17, v42, type metadata accessor for CardDetailView);
  v33 = v40;
  sub_100039E24(v24, v40, type metadata accessor for ThumbnailArtworkView);
  v34 = v43;
  sub_100039E24(v32, v43, type metadata accessor for CardDetailView);
  v35 = v44;
  sub_100039E24(v33, v44, type metadata accessor for ThumbnailArtworkView);
  v36 = sub_100003650(&qword_100066398, &unk_10004FF70);
  v37 = v35 + *(v36 + 48);
  *v37 = 0x4028000000000000;
  *(v37 + 8) = 0;
  sub_100039E24(v34, v35 + *(v36 + 64), type metadata accessor for CardDetailView);
  sub_100039E8C(v32, type metadata accessor for CardDetailView);
  sub_100039E8C(v24, type metadata accessor for ThumbnailArtworkView);
  sub_100039E8C(v34, type metadata accessor for CardDetailView);
  return sub_100039E8C(v33, type metadata accessor for ThumbnailArtworkView);
}

uint64_t sub_100039874()
{
  v1 = sub_10004BAC0();
  __chkstk_darwin(v1 - 8);
  sub_100038B38(&v4[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = v0;
  sub_100003650(&qword_100066380, &qword_10004FEB8);
  sub_100003D30(&qword_100066388, &qword_100066380, &qword_10004FEB8, &protocol conformance descriptor for HStack<A>);
  return sub_10004C4B0();
}

uint64_t sub_100039970@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_10004C020();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003650(&qword_100066210, &qword_10004FD88);
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = sub_100003650(&qword_100066218, &qword_10004FD90);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for ThumbnailContentView(0);
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TodayCardListViewItem.Content(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039E24(v2, v17, type metadata accessor for TodayCardListViewItem.Content);
  v18 = type metadata accessor for WidgetTodayCard(0);
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  sub_100039E24(v2, v14, type metadata accessor for TodayCardListViewItem.Content);
  if (v19 == 1)
  {
    sub_10004C010();
    v20 = sub_10003A068(&qword_100066220, type metadata accessor for ThumbnailContentView, &unk_10004FE68);
    sub_10004C5A0();
    (*(v26 + 8))(v5, v27);
    sub_100039E8C(v14, type metadata accessor for ThumbnailContentView);
    v22 = v28;
    v21 = v29;
    (*(v28 + 16))(v11, v8, v29);
    swift_storeEnumTagMultiPayload();
    v31 = v12;
    v32 = v20;
    swift_getOpaqueTypeConformance2();
    sub_10004C320();
    return (*(v22 + 8))(v8, v21);
  }

  else
  {
    sub_100039E24(v14, v11, type metadata accessor for ThumbnailContentView);
    swift_storeEnumTagMultiPayload();
    v24 = sub_10003A068(&qword_100066220, type metadata accessor for ThumbnailContentView, &unk_10004FE68);
    v31 = v12;
    v32 = v24;
    swift_getOpaqueTypeConformance2();
    sub_10004C320();
    sub_100039E8C(v14, type metadata accessor for ThumbnailContentView);
    return sub_100039E8C(v17, type metadata accessor for TodayCardListViewItem.Content);
  }
}

uint64_t sub_100039E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100039EF4()
{
  result = qword_100066280;
  if (!qword_100066280)
  {
    sub_100003698(&qword_100066268, &qword_10004FE10);
    sub_100039FAC();
    sub_100003D30(&qword_100066298, &qword_100066250, &qword_10004FDF8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066280);
  }

  return result;
}

unint64_t sub_100039FAC()
{
  result = qword_100066288;
  if (!qword_100066288)
  {
    sub_100003698(&qword_100066270, &qword_10004FE18);
    sub_10003A068(&qword_100066290, type metadata accessor for TodayCardListViewItem, &unk_10004FD34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066288);
  }

  return result;
}

uint64_t sub_10003A068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003A0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayCardListViewItem.Content(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003A144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayCardListViewItem.Content(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003A1B8(uint64_t a1)
{
  result = type metadata accessor for TodayCardListViewItem.Content(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10003A228()
{
  result = qword_100066340;
  if (!qword_100066340)
  {
    sub_100003698(&qword_100066348, &qword_10004FE58);
    sub_10003A068(&qword_100066220, type metadata accessor for ThumbnailContentView, &unk_10004FE68);
    type metadata accessor for ThumbnailContentView(255);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066340);
  }

  return result;
}

unint64_t sub_10003A310()
{
  result = qword_100066350;
  if (!qword_100066350)
  {
    sub_100003698(&qword_100066240, &qword_10004FDB0);
    sub_10003AA08(&qword_100066358, &qword_100066238, &qword_10004FDA8, sub_10003A3F4);
    sub_100003D30(&qword_100066378, &qword_100066248, &qword_10004FDF0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066350);
  }

  return result;
}

unint64_t sub_10003A3F4()
{
  result = qword_100066360;
  if (!qword_100066360)
  {
    sub_100003698(&qword_100066230, &qword_10004FDA0);
    sub_100003D30(&qword_100066368, &qword_100066370, &qword_10004FE60, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066360);
  }

  return result;
}

unint64_t sub_10003A58C()
{
  result = qword_100066490;
  if (!qword_100066490)
  {
    sub_100003698(&qword_100066478, &qword_100050038);
    sub_10003A618();
    sub_10003A7B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066490);
  }

  return result;
}

unint64_t sub_10003A618()
{
  result = qword_100066498;
  if (!qword_100066498)
  {
    sub_100003698(&qword_100066470, &qword_100050030);
    sub_10003A6D0();
    sub_100003D30(&qword_1000664D0, &qword_100066480, &qword_100050040, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066498);
  }

  return result;
}

unint64_t sub_10003A6D0()
{
  result = qword_1000664A0;
  if (!qword_1000664A0)
  {
    sub_100003698(&qword_1000664A8, &unk_100050050);
    sub_10003AA08(&qword_1000664B0, &qword_1000664B8, &qword_100050A40, sub_10000AD24);
    sub_100003D30(&qword_1000664C0, &qword_1000664C8, &qword_100050068, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000664A0);
  }

  return result;
}

unint64_t sub_10003A7B4()
{
  result = qword_1000664D8;
  if (!qword_1000664D8)
  {
    sub_100003698(&qword_100066460, &qword_100050018);
    sub_10003A86C();
    sub_100003D30(&qword_1000664D0, &qword_100066480, &qword_100050040, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000664D8);
  }

  return result;
}