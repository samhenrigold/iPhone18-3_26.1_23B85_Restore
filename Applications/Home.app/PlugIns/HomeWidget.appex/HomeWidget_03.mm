uint64_t sub_100045360@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v53 = a3;
  v48 = a1;
  v56 = a4;
  v7 = sub_10009E3D4();
  *&v52 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  *&v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  *&v50 = &v48 - v10;
  v11 = sub_100003714(&qword_1000C19A8, &qword_1000A1A18);
  __chkstk_darwin(v11);
  v13 = (&v48 - v12);
  v49 = sub_100003714(&qword_1000C19B0, &qword_1000A1A20);
  __chkstk_darwin(v49);
  v15 = &v48 - v14;
  v16 = sub_100003714(&qword_1000C19B8, &qword_1000A1A28);
  v17 = __chkstk_darwin(v16 - 8);
  v55 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v48 - v19;
  v21 = &a2[*(type metadata accessor for AccessoryAndSceneEntity(0) + 24)];
  v22 = sub_100017C60();
  v54 = v20;
  if (v22)
  {
    v23 = v21[*(type metadata accessor for WidgetTileInfo(0) + 52)];
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xD000000000000011;
  *v13 = sub_10009E2F4();
  v13[1] = v25;
  v26 = sub_100003714(&qword_1000C19C0, &qword_1000A1A30);
  sub_100045BD0(a2, v23, (v13 + *(v26 + 44)));
  sub_10001CDC8(&qword_1000C19C8, &qword_1000C19A8, &qword_1000A1A18, &protocol conformance descriptor for ZStack<A>);
  sub_10009E004();
  sub_1000160CC(v13, &qword_1000C19A8, &qword_1000A1A18);
  v27 = *(v49 + 52);
  v28 = sub_10009CF14();
  (*(*(v28 - 8) + 16))(&v15[v27], a2, v28);
  *&v65 = 0;
  *(&v65 + 1) = 0xE000000000000000;
  sub_10009EAC4(52);
  v74 = v65;
  v80._countAndFlagsBits = 0xD000000000000032;
  v80._object = 0x80000001000A4A00;
  sub_10009E634(v80);
  v29 = &v21[*(type metadata accessor for WidgetTileInfo(0) + 28)];
  if (v29[1])
  {
    v24 = *v29;
    v30 = v29[1];
  }

  else
  {
    v30 = 0x80000001000A4A40;
  }

  v81._countAndFlagsBits = v24;
  v81._object = v30;
  sub_10009E634(v81);

  v65 = v74;
  v57 = 32;
  v58 = 0xE100000000000000;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_1000037A4();
  sub_10009E954();

  sub_10001CDC8(&qword_1000C19D0, &qword_1000C19B0, &qword_1000A1A20, &protocol conformance descriptor for IDView<A, B>);
  v31 = v54;
  sub_10009E0E4();

  sub_1000160CC(v15, &qword_1000C19B0, &qword_1000A1A20);
  v32 = v50;
  v33 = v53;
  sub_1000449EC(v50);
  v34 = v52;
  v35 = v51;
  (*(v52 + 104))(v51, enum case for WidgetFamily.systemMedium(_:), v7);
  sub_10004DA88(&qword_1000C16C0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10009E654();
  sub_10009E654();
  v36 = *(v34 + 8);
  v36(v35, v7);
  v36(v32, v7);
  v37 = 0uLL;
  v38 = -1;
  v39 = 0uLL;
  v40 = 0uLL;
  v41 = 0uLL;
  if (v65 == v57 && !v48)
  {
    if (*(*(v33 + *(type metadata accessor for WidgetViewForLargeSquareTiles(0) + 36)) + 16) == 1)
    {
      sub_10009E2F4();
      sub_10009DA74();
      v72 = 1;
      v71 = v76;
      v70 = v78;
      v73 = 0;
      v57 = 0;
      LOBYTE(v58) = 1;
      v59 = v75;
      v60 = v76;
      v61 = v77;
      v62 = v78;
      v63 = v79;
      v64 = 0;
    }

    else
    {
      sub_10009E2F4();
      sub_10009DA74();
      v72 = 1;
      v71 = v76;
      v70 = v78;
      v73 = 1;
      v57 = 0;
      LOBYTE(v58) = 1;
      v59 = v75;
      v60 = v76;
      v61 = v77;
      v62 = v78;
      v63 = v79;
      v64 = 1;
    }

    sub_100003714(&qword_1000C19E0, &unk_1000A1A40);
    sub_10004F0B0();
    sub_10009DD94();
    v39 = v66;
    v40 = v67;
    v37 = v65;
    v41 = v68;
    v38 = v69;
  }

  v50 = v39;
  v51 = v41;
  v52 = v37;
  v53 = v40;
  v42 = v55;
  sub_10001E0A8(v31, v55, &qword_1000C19B8, &qword_1000A1A28);
  v43 = v56;
  sub_10001E0A8(v42, v56, &qword_1000C19B8, &qword_1000A1A28);
  v44 = v43 + *(sub_100003714(&qword_1000C19D8, &qword_1000A1A38) + 48);
  v45 = v50;
  *v44 = v52;
  *(v44 + 16) = v45;
  v46 = v51;
  *(v44 + 32) = v53;
  *(v44 + 48) = v46;
  *(v44 + 64) = v38;
  sub_1000160CC(v31, &qword_1000C19B8, &qword_1000A1A28);
  return sub_1000160CC(v42, &qword_1000C19B8, &qword_1000A1A28);
}

uint64_t sub_100045BD0@<X0>(char *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  LODWORD(v95) = a2;
  v105 = a3;
  v6 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  v7 = __chkstk_darwin(v6 - 8);
  v84 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v84 - v9;
  v89 = sub_10009CE24();
  v98 = *(v89 - 8);
  __chkstk_darwin(v89);
  v97 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100003714(&qword_1000C19F0, &qword_1000A1A50);
  __chkstk_darwin(v85);
  v96 = (&v84 - v12);
  v104 = sub_100003714(&qword_1000C19F8, &qword_1000A1A58);
  v13 = __chkstk_darwin(v104);
  v86 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v87 = &v84 - v15;
  v101 = sub_100003714(&qword_1000C1A00, &unk_1000A1A60);
  __chkstk_darwin(v101);
  v103 = &v84 - v16;
  v102 = type metadata accessor for WidgetTileViewToggleStyle(0);
  __chkstk_darwin(v102);
  v94 = (&v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  __chkstk_darwin(v18 - 8);
  v20 = &v84 - v19;
  v21 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  v88 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AccessoryAndSceneEntity(0);
  v25 = __chkstk_darwin(v24);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v84 - v28;
  v99 = sub_100003714(&qword_1000C1A08, &qword_1000A1A70);
  v91 = *(v99 - 8);
  __chkstk_darwin(v99);
  v90 = &v84 - v30;
  v100 = sub_100003714(&qword_1000C1A10, &qword_1000A1A78);
  v93 = *(v100 - 8);
  __chkstk_darwin(v100);
  v92 = &v84 - v31;
  v32 = &a1[*(v24 + 24)];
  v33 = type metadata accessor for WidgetTileInfo(0);
  if (v32[v33[14]] == 1)
  {
    sub_10004DC34(a1, v29, type metadata accessor for AccessoryAndSceneEntity);
    sub_10001E0A8(&v32[v33[19]], v20, &qword_1000C0C28, &qword_1000A3620);
    v34 = v88;
    if ((*(v88 + 48))(v20, 1, v21) == 1)
    {
      sub_1000160CC(v20, &qword_1000C0C28, &qword_1000A3620);
      v41 = 0;
      v42 = 0;
    }

    else
    {
      (*(v34 + 32))(v23, v20, v21);
      sub_10009CCB4();
      swift_allocObject();
      sub_10009CCA4();
      sub_10004DA88(&qword_1000C1A48, type metadata accessor for WidgetPredictionAnalyticsInfo, &protocol conformance descriptor for WidgetPredictionAnalyticsInfo);
      v78 = sub_10009CC94();
      v80 = v79;

      v81 = sub_10009CE64(0);
      v83 = v82;
      sub_100033B34(v78, v80);
      (*(v34 + 8))(v23, v21);
      v42 = v83;
      v41 = v81;
    }

    *&v110 = sub_100078634(v29, v41, v42);
    *(&v110 + 1) = v43;
    __chkstk_darwin(v110);
    *(&v84 - 2) = a1;
    type metadata accessor for LargeSquareTileView(0);
    sub_10004DA88(&qword_1000C1A38, type metadata accessor for LargeSquareTileView, &unk_1000A2914);
    sub_1000598E8();
    v44 = v90;
    sub_10009E264();
    nullsub_1();
    v46 = v45;
    v48 = v47;
    v49 = v102;
    v50 = v94;
    sub_10004DC34(a1, v94 + *(v102 + 20), type metadata accessor for AccessoryAndSceneEntity);
    *v50 = swift_getKeyPath();
    sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
    swift_storeEnumTagMultiPayload();
    v51 = (v50 + *(v49 + 24));
    *v51 = v46;
    v51[1] = v48;
    v52 = sub_10001CDC8(&qword_1000C1A18, &qword_1000C1A08, &qword_1000A1A70, &protocol conformance descriptor for Toggle<A>);
    v53 = sub_10004DA88(&qword_1000C1A20, type metadata accessor for WidgetTileViewToggleStyle, &unk_1000A274C);
    v54 = v92;
    v55 = v99;
    sub_10009E084();
    sub_10004DD8C(v50, type metadata accessor for WidgetTileViewToggleStyle);
    (*(v91 + 8))(v44, v55);
    v56 = v93;
    v57 = v100;
    (*(v93 + 16))(v103, v54, v100);
    swift_storeEnumTagMultiPayload();
    *&v110 = v55;
    *(&v110 + 1) = v49;
    *&v111 = v52;
    *(&v111 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    sub_10004F18C();
    sub_10009DD94();
    return (*(v56 + 8))(v54, v57);
  }

  else
  {
    v95 = a1;
    sub_1000259B8();
    v35 = v98;
    v36 = *(v98 + 48);
    v37 = v89;
    if (v36(v10, 1, v89) == 1)
    {
      v38 = v84;
      sub_10009CE14();
      result = v36(v38, 1, v37);
      v40 = v97;
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      (*(v35 + 32))(v97, v38, v37);
      if (v36(v10, 1, v37) != 1)
      {
        sub_1000160CC(v10, &qword_1000C0FE0, &qword_1000A11A0);
      }
    }

    else
    {
      v40 = v97;
      (*(v35 + 32))(v97, v10, v37);
    }

    KeyPath = swift_getKeyPath();
    v59 = v96;
    *v96 = KeyPath;
    sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
    swift_storeEnumTagMultiPayload();
    v60 = v85;
    v61 = &v59[*(v85 + 36)];
    *v61 = swift_getKeyPath();
    v61[8] = 0;
    (*(v35 + 16))(&v59[*(v60 + 40)], v40, v37);
    v62 = &v59[*(v60 + 44)];
    sub_10004DC34(v95, v27, type metadata accessor for AccessoryAndSceneEntity);
    *v62 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v63 = type metadata accessor for LargeSquareTileView(0);
    v64 = v62 + v63[5];
    *v64 = swift_getKeyPath();
    v64[8] = 0;
    v65 = v62 + v63[6];
    *v65 = swift_getKeyPath();
    v65[8] = 0;
    sub_10004DC34(v27, v62 + v63[7], type metadata accessor for AccessoryAndSceneEntity);
    v66 = v62 + v63[8];
    sub_10004DC34(&v27[*(v24 + 24)], v66, type metadata accessor for WidgetTileInfo);
    *(v62 + v63[9]) = *(v66 + v33[14]);
    v67 = (v66 + v33[8]);
    v69 = *v67;
    v68 = v67[1];
    v70 = (v62 + v63[10]);
    *v70 = v69;
    v70[1] = v68;
    LODWORD(v65) = *(v66 + v33[13]);

    if (v65 == 1)
    {
      sub_10004DD8C(v27, type metadata accessor for AccessoryAndSceneEntity);
      v71 = *(v66 + v33[12]);
    }

    else
    {
      v71 = sub_10009E174();
      sub_10004DD8C(v27, type metadata accessor for AccessoryAndSceneEntity);
    }

    *(v62 + v63[11]) = v71;
    (*(v98 + 8))(v97, v37);
    sub_10009E2F4();
    sub_10009DA74();
    v72 = v86;
    sub_10005B0FC(v96, v86, &qword_1000C19F0, &qword_1000A1A50);
    v73 = (v72 + *(v104 + 36));
    v74 = v111;
    *v73 = v110;
    v73[1] = v74;
    v73[2] = v112;
    v75 = v87;
    sub_10005B0FC(v72, v87, &qword_1000C19F8, &qword_1000A1A58);
    sub_10001E0A8(v75, v103, &qword_1000C19F8, &qword_1000A1A58);
    swift_storeEnumTagMultiPayload();
    v76 = sub_10001CDC8(&qword_1000C1A18, &qword_1000C1A08, &qword_1000A1A70, &protocol conformance descriptor for Toggle<A>);
    v77 = sub_10004DA88(&qword_1000C1A20, type metadata accessor for WidgetTileViewToggleStyle, &unk_1000A274C);
    v106 = v99;
    v107 = v102;
    v108 = v76;
    v109 = v77;
    swift_getOpaqueTypeConformance2();
    sub_10004F18C();
    sub_10009DD94();
    return sub_1000160CC(v75, &qword_1000C19F8, &qword_1000A1A58);
  }
}

uint64_t sub_100046A68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AccessoryAndSceneEntity(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DC34(a1, v6, type metadata accessor for AccessoryAndSceneEntity);
  return sub_100071F2C(v6, a2);
}

uint64_t sub_100046B0C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_100003714(&qword_1000C1A58, &qword_1000A1AB8);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v24 - v4;
  *v5 = sub_10009DCF4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v24 = *(sub_100003714(&qword_1000C1A60, &qword_1000A1AC0) + 44);
  v6 = v1[2];
  v7 = sub_10003B4F0(v1[3], v6);
  v8 = sub_10004CB70(v7);

  *&v27[0] = v8;
  swift_getKeyPath();
  v29 = *v1;
  v30 = *(v1 + 8);
  v9 = swift_allocObject();
  v10 = *(v1 + 1);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 2);
  *(v9 + 64) = v1[6];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100059980;
  *(v11 + 24) = v9;
  sub_10001E0A8(&v29, v26, &qword_1000C1A68, &qword_1000A1AE8);

  sub_100003714(&qword_1000C1A70, &qword_1000A1AF0);
  sub_100003714(&qword_1000C1A78, &qword_1000A1AF8);
  sub_10001CDC8(&qword_1000C1A80, &qword_1000C1A70, &qword_1000A1AF0, &protocol conformance descriptor for [A]);
  sub_1000599B8();
  sub_10009E294();
  sub_10009E2F4();
  sub_10009DA74();
  v12 = &v5[*(sub_100003714(&qword_1000C1AA0, &qword_1000A1B08) + 36)];
  v13 = v26[1];
  *v12 = v26[0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v26[2];
  sub_10006FB28(v27);
  v14 = v28;
  v15 = &v5[*(sub_100003714(&qword_1000C1AA8, &qword_1000A1B10) + 36)];
  v16 = v27[1];
  *v15 = v27[0];
  *(v15 + 1) = v16;
  *(v15 + 4) = v14;
  v17 = &v5[*(v3 + 44)];
  sub_10009DAF4();
  v18 = sub_10009E314();
  v19 = sub_10009DE74();
  *&v17[*(v19 + 20)] = v18;
  *&v17[*(v19 + 24)] = 0;
  v20 = sub_10009E314();
  v21 = v25;
  sub_10001E0A8(v5, v25, &qword_1000C1A58, &qword_1000A1AB8);
  v22 = (v21 + *(sub_100003714(&qword_1000C1AB0, &qword_1000A1B18) + 36));
  *v22 = v20;
  v22[1] = v6;

  return sub_1000160CC(v5, &qword_1000C1A58, &qword_1000A1AB8);
}

uint64_t sub_100046E7C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10009DC44();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v12 = *(a1 + 16);
  v13 = __OFSUB__(v11, v12);
  v14 = v11 - v12;
  if (v13)
  {
    __break(1u);
    return result;
  }

  v54 = v14;
  v55 = a3;
  v60 = *(a2 + 8);
  v15 = *a2;
  v59 = *a2;
  v52[0] = v60;
  v51 = a1;
  v50 = v6;
  v49 = v7;
  if (v60 == 1)
  {
    v18 = *(a2 + 5);
    v19 = *(a2 + 6);
    v21 = v15;
    v53 = v15;
  }

  else
  {

    sub_10009E834();
    v16 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_1000160CC(&v59, &qword_1000C1A68, &qword_1000A1AE8);
    v17 = *(v7 + 8);
    v17(v10, v6);
    v53 = LOBYTE(v57[0]);
    v18 = *(a2 + 5);
    v19 = *(a2 + 6);

    sub_10009E834();
    v20 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_1000160CC(&v59, &qword_1000C1A68, &qword_1000A1AE8);
    v17(v10, v6);
    v21 = v57[0];
  }

  if (v21)
  {
    v22 = 16.0;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = *(a2 + 32);
  v24 = v52[0];
  if (*(a2 + 32))
  {
    v25 = sub_10009ED34();

    if (v25)
    {
      v26 = v18 - v22;
      if (!v23)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v24)
      {
        v33 = v15;
      }

      else
      {

        sub_10009E834();
        v38 = sub_10009DEA4();
        sub_10009D8C4();

        sub_10009DC34();
        swift_getAtKeyPath();
        sub_1000160CC(&v59, &qword_1000C1A68, &qword_1000A1AE8);
        (*(v49 + 8))(v10, v50);
        v33 = v57[0];
      }

      v39 = 8.0;
      if (v33)
      {
        v39 = 24.0;
      }

      v26 = (v18 - v39) * 0.5;
      if (!v23)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {

    v26 = v18 - v22;
    if (!v23)
    {
LABEL_27:

      v28 = v55;
      goto LABEL_28;
    }
  }

  v27 = sub_10009ED34();

  v28 = v55;
  if (v27)
  {
LABEL_28:
    v29 = v51;
    if (!v24)
    {

      sub_10009E834();
      v40 = sub_10009DEA4();
      sub_10009D8C4();

      sub_10009DC34();
      swift_getAtKeyPath();
      sub_1000160CC(&v59, &qword_1000C1A68, &qword_1000A1AE8);
      (*(v49 + 8))(v10, v50);
      LOBYTE(v15) = v57[0];
    }

    v41 = 8.0;
    if (v15)
    {
      v41 = 24.0;
    }

    v30 = (v19 - v41) * 0.5;
    v31 = v54;
    goto LABEL_33;
  }

  v29 = v51;
  if (v24)
  {
    v30 = v26;
    v31 = v54;
    if (v15)
    {
      v32 = 24.0;
LABEL_22:
      v30 = (v18 - v32) * 0.5;
    }
  }

  else
  {

    sub_10009E834();
    v34 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_1000160CC(&v59, &qword_1000C1A68, &qword_1000A1AE8);
    v35 = *(v49 + 8);
    v36 = v50;
    v35(v10, v50);
    v30 = v26;
    v31 = v54;
    if (v57[0])
    {

      sub_10009E834();
      *v52 = v35;
      v37 = sub_10009DEA4();
      sub_10009D8C4();

      sub_10009DC34();
      swift_getAtKeyPath();
      sub_1000160CC(&v59, &qword_1000C1A68, &qword_1000A1AE8);
      (*v52)(v10, v36);
      v32 = 8.0;
      if (LOBYTE(v57[0]))
      {
        v32 = 24.0;
      }

      goto LABEL_22;
    }
  }

LABEL_33:
  v42 = 8.0;
  if (v53)
  {
    v42 = 24.0;
  }

  v43 = (v18 - v42) * 0.5 * v31;
  *v28 = sub_10009DC74();
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  sub_100003714(&qword_1000C1AB8, &qword_1000A1B20);
  v56 = sub_10004C814(v29);
  swift_getKeyPath();
  v58 = a2[2];
  v44 = swift_allocObject();
  *(v44 + 16) = v26;
  *(v44 + 24) = v30;
  v45 = *(a2 + 1);
  *(v44 + 32) = *a2;
  *(v44 + 48) = v45;
  *(v44 + 64) = *(a2 + 2);
  *(v44 + 80) = a2[6];
  *(v44 + 88) = v29;
  *(v44 + 96) = v31 * 8.0;
  *(v44 + 104) = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_100059ABC;
  *(v46 + 24) = v44;
  sub_10001E0A8(&v59, v57, &qword_1000C1A68, &qword_1000A1AE8);
  sub_10001E0A8(&v58, v57, &unk_1000C15B0, &unk_1000A1360);

  sub_100003714(&qword_1000C1968, &qword_1000A19E8);
  sub_100003714(&qword_1000C1AC0, &qword_1000A1B28);
  sub_10001CDC8(&qword_1000C1978, &qword_1000C1968, &qword_1000A19E8, &protocol conformance descriptor for [A]);
  sub_10001CDC8(&qword_1000C1AC8, &qword_1000C1AC0, &qword_1000A1B28, &protocol conformance descriptor for TupleView<A>);
  sub_10009E294();
  sub_10009E2F4();
  sub_10009DA74();
  result = sub_100003714(&qword_1000C1A78, &qword_1000A1AF8);
  v47 = (v28 + *(result + 36));
  v48 = v57[1];
  *v47 = v57[0];
  v47[1] = v48;
  v47[2] = v57[2];
  return result;
}

uint64_t sub_100047744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a4;
  v67 = a1;
  v70 = a5;
  v71 = a3;
  v10 = type metadata accessor for AccessoryAndSceneEntity(0);
  __chkstk_darwin(v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003714(&qword_1000C1AD0, &qword_1000A1B30);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v16 = sub_100003714(&qword_1000C1AD8, &qword_1000A1B38);
  v64 = *(v16 - 8);
  v65 = v16;
  __chkstk_darwin(v16);
  v63 = &v60 - v17;
  v18 = sub_100003714(&qword_1000C1AE0, &qword_1000A1B40);
  v19 = __chkstk_darwin(v18 - 8);
  v69 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v60 - v21;
  v23 = a2 + *(v10 + 24);
  v24 = sub_100017C60();
  v68 = v22;
  if (v24)
  {
    v62 = *(v23 + *(type metadata accessor for WidgetTileInfo(0) + 52));
  }

  else
  {
    v62 = 0;
  }

  v25 = 0xD000000000000011;
  sub_10004DC34(a2, v12, type metadata accessor for AccessoryAndSceneEntity);
  nullsub_1();
  v27 = v26;
  v29 = v28;
  v30 = *(v71 + 32);
  sub_10004DC34(v12, v15, type metadata accessor for AccessoryAndSceneEntity);
  v31 = type metadata accessor for TileView(0);
  v32 = &v15[v31[7]];
  *v32 = v27;
  *(v32 + 1) = v29;
  sub_10004DC34(&v12[*(v10 + 24)], &v15[v31[5]], type metadata accessor for WidgetTileInfo);
  sub_10004DD8C(v12, type metadata accessor for AccessoryAndSceneEntity);
  v33 = v31[6];
  v61 = v30;
  v15[v33] = v30;
  sub_10009E2F4();
  sub_10009DA74();
  v34 = &v15[*(sub_100003714(&qword_1000C1AE8, &qword_1000A1B48) + 36)];
  v35 = v87[1];
  *v34 = v87[0];
  *(v34 + 1) = v35;
  *(v34 + 2) = v87[2];
  v36 = v13;
  v37 = *(v13 + 52);
  v38 = sub_10009CF14();
  (*(*(v38 - 8) + 16))(&v15[v37], a2, v38);
  v39 = sub_10001CDC8(&qword_1000C1AF0, &qword_1000C1AD0, &qword_1000A1B30, &protocol conformance descriptor for IDView<A, B>);
  v40 = v63;
  sub_10009E004();
  sub_1000160CC(v15, &qword_1000C1AD0, &qword_1000A1B30);
  *&v81 = 0;
  *(&v81 + 1) = 0xE000000000000000;
  sub_10009EAC4(37);

  *&v86 = 0xD000000000000023;
  *(&v86 + 1) = 0x80000001000A4A80;
  v41 = (v23 + *(type metadata accessor for WidgetTileInfo(0) + 28));
  if (v41[1])
  {
    v25 = *v41;
    v42 = v41[1];
  }

  else
  {
    v42 = 0x80000001000A4A40;
  }

  v93._countAndFlagsBits = v25;
  v93._object = v42;
  sub_10009E634(v93);

  v81 = v86;
  *&v75 = 32;
  *(&v75 + 1) = 0xE100000000000000;
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_1000037A4();
  sub_10009E954();

  *&v81 = v36;
  *(&v81 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v43 = v68;
  v44 = v65;
  sub_10009E0E4();

  (*(v64 + 8))(v40, v44);
  v45 = *(v66 + 16);
  if (v45 >= *(v71 + 24) || v45 - 1 != v67)
  {
    if (v67)
    {
LABEL_11:
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0uLL;
      v52 = 1;
LABEL_16:
      v80 = 1;
      *&v75 = 0;
      *(&v75 + 1) = v50;
      *&v76 = v46;
      *(&v76 + 1) = v49;
      *&v77 = v47;
      *(&v77 + 1) = v48;
      v78 = v51;
      LOBYTE(v79) = v52;
      HIBYTE(v79) = 1;
      goto LABEL_17;
    }

    if (v61 == 1)
    {
    }

    else
    {
      v53 = sub_10009ED34();

      if ((v53 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_10009E2F4();
    sub_10009DA74();
    v52 = 0;
    v46 = v88;
    v47 = v90;
    v51 = v92;
    LOBYTE(v75) = 1;
    v80 = v89;
    v74 = v91;
    v50 = 1;
    v49 = v89;
    v48 = v91;
    LOBYTE(v81) = 0;
    goto LABEL_16;
  }

  sub_10009E2F4();
  sub_10009DA74();
  v74 = 1;
  v73 = v89;
  v72 = v91;
  v80 = 0;
  *&v75 = 0;
  BYTE8(v75) = 1;
  *&v76 = v88;
  BYTE8(v76) = v89;
  *&v77 = v90;
  BYTE8(v77) = v91;
  v78 = v92;
  HIBYTE(v79) = 0;
LABEL_17:
  sub_100003714(&qword_1000C19E0, &unk_1000A1A40);
  sub_100003714(&qword_1000C1AF8, &qword_1000A1B50);
  sub_10004F0B0();
  sub_100059AD4(&qword_1000C1B00, &qword_1000C1AF8, &qword_1000A1B50, sub_10004F0B0);
  sub_10009DD94();
  v54 = v69;
  sub_10001E0A8(v43, v69, &qword_1000C1AE0, &qword_1000A1B40);
  v77 = v83;
  v78 = v84;
  v79 = v85;
  v75 = v81;
  v76 = v82;
  v55 = v70;
  sub_10001E0A8(v54, v70, &qword_1000C1AE0, &qword_1000A1B40);
  v56 = v55 + *(sub_100003714(&qword_1000C1B08, &qword_1000A1B58) + 48);
  v57 = v78;
  *(v56 + 32) = v77;
  *(v56 + 48) = v57;
  *(v56 + 64) = v79;
  v58 = v76;
  *v56 = v75;
  *(v56 + 16) = v58;
  sub_1000160CC(v43, &qword_1000C1AE0, &qword_1000A1B40);
  return sub_1000160CC(v54, &qword_1000C1AE0, &qword_1000A1B40);
}

uint64_t sub_100047FB0()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for WidgetViewsForMediumSystemFamily(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10009E834();
    v7 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10004810C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100003714(&qword_1000C1B18, &qword_1000A1B70);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v32 - v9;
  *v10 = sub_10009DCF4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100003714(&qword_1000C1B20, &qword_1000A1B78);
  v12 = *(v4 + 36);
  v13 = *(v2 + *(v4 + 32));
  v32[1] = *(v11 + 44);
  v33 = v13;
  v14 = sub_10003B4F0(*(v2 + v12), v13);
  v15 = sub_10004CB70(v14);

  *&v35 = v15;
  swift_getKeyPath();
  sub_10004DC34(v2, v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetViewsForMediumSystemFamily);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_10004EF84(v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for WidgetViewsForMediumSystemFamily);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100059C84;
  *(v18 + 24) = v17;
  sub_100003714(&qword_1000C1A70, &qword_1000A1AF0);
  sub_100003714(&qword_1000C1B28, &qword_1000A1B80);
  sub_10001CDC8(&qword_1000C1A80, &qword_1000C1A70, &qword_1000A1AF0, &protocol conformance descriptor for [A]);
  sub_100059D0C();
  sub_10009E294();
  sub_10009E2F4();
  sub_10009DA74();
  v19 = &v10[*(sub_100003714(&qword_1000C1B48, &qword_1000A1B90) + 36)];
  v20 = v36;
  *v19 = v35;
  *(v19 + 1) = v20;
  *(v19 + 2) = v37;
  sub_10006FB28(v38);
  v21 = v39;
  v22 = &v10[*(sub_100003714(&qword_1000C1B50, &qword_1000A1B98) + 36)];
  v23 = v38[1];
  *v22 = v38[0];
  *(v22 + 1) = v23;
  *(v22 + 4) = v21;
  v24 = &v10[*(v8 + 44)];
  sub_10009DAF4();
  v25 = sub_10009E314();
  v26 = sub_10009DE74();
  *&v24[*(v26 + 20)] = v25;
  *&v24[*(v26 + 24)] = 0;
  v27 = sub_10009E314();
  v28 = v34;
  sub_10001E0A8(v10, v34, &qword_1000C1B18, &qword_1000A1B70);
  v29 = (v28 + *(sub_100003714(&qword_1000C1B58, &qword_1000A1BA0) + 36));
  v30 = v33;
  *v29 = v27;
  v29[1] = v30;

  return sub_1000160CC(v10, &qword_1000C1B18, &qword_1000A1B70);
}

uint64_t sub_100048500@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100047FB0())
  {
    if (!*(a2 + v6[8]))
    {

      goto LABEL_6;
    }

    v10 = sub_10009ED34();

    if (v10)
    {
LABEL_6:
      v11 = (*(a2 + v6[9]) + -24.0) * 0.5;
      if ((sub_100047FB0() & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_9:
      if (*(a2 + v6[8]))
      {
        v12 = sub_10009ED34();

        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      v13 = (*(a2 + v6[9] + 8) + -24.0) * 0.5;
      goto LABEL_15;
    }
  }

  v11 = *(a2 + v6[10]);
  if (sub_100047FB0())
  {
    goto LABEL_9;
  }

LABEL_14:
  v13 = *(a2 + v6[11]);
LABEL_15:
  result = sub_10009DC74();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v15 = *(a2 + v6[7]);
  v16 = *(a1 + 16);
  v17 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v27[1] = *(sub_100003714(&qword_1000C1B60, &qword_1000A1BA8) + 44);
    v18 = v11 * v17;
    v19 = *(a2 + v6[12]) * v17;
    *&v28 = sub_10004C814(a1);
    v27[0] = swift_getKeyPath();
    sub_10004DC34(a2, v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetViewsForMediumSystemFamily);
    v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v11;
    *(v23 + 24) = v13;
    sub_10004EF84(v9, v23 + v20, type metadata accessor for WidgetViewsForMediumSystemFamily);
    *(v23 + v21) = a1;
    *(v23 + v22) = v19;
    *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_100059F1C;
    *(v24 + 24) = v23;

    sub_100003714(&qword_1000C1968, &qword_1000A19E8);
    sub_100003714(&qword_1000C1B68, &qword_1000A1BB0);
    sub_10001CDC8(&qword_1000C1978, &qword_1000C1968, &qword_1000A19E8, &protocol conformance descriptor for [A]);
    sub_10001CDC8(&qword_1000C1B70, &qword_1000C1B68, &qword_1000A1BB0, &protocol conformance descriptor for TupleView<A>);
    sub_10009E294();
    sub_10009E2F4();
    sub_10009DA74();
    result = sub_100003714(&qword_1000C1B28, &qword_1000A1B80);
    v25 = (a3 + *(result + 36));
    v26 = v29;
    *v25 = v28;
    v25[1] = v26;
    v25[2] = v30;
  }

  return result;
}

uint64_t sub_1000489B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v67 = a4;
  v71 = a3;
  v68 = a1;
  v70 = a5;
  v10 = type metadata accessor for AccessoryAndSceneEntity(0);
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003714(&qword_1000C1AD0, &qword_1000A1B30);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v66 = sub_100003714(&qword_1000C1AD8, &qword_1000A1B38);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v17 = &v59 - v16;
  v18 = sub_100003714(&qword_1000C1AE0, &qword_1000A1B40);
  v19 = __chkstk_darwin(v18 - 8);
  v69 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v72 = &v59 - v21;
  v22 = a2 + *(v10 + 24);
  if (sub_100017C60())
  {
    LODWORD(v63) = *(v22 + *(type metadata accessor for WidgetTileInfo(0) + 52));
  }

  else
  {
    LODWORD(v63) = 0;
  }

  v23 = 0xD000000000000011;
  sub_10004DC34(a2, v12, type metadata accessor for AccessoryAndSceneEntity);
  nullsub_1();
  v25 = v24;
  v27 = v26;
  v64 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v28 = *(v71 + *(v64 + 32));
  sub_10004DC34(v12, v15, type metadata accessor for AccessoryAndSceneEntity);
  v29 = type metadata accessor for TileView(0);
  v30 = &v15[v29[7]];
  *v30 = v25;
  *(v30 + 1) = v27;
  sub_10004DC34(&v12[*(v10 + 24)], &v15[v29[5]], type metadata accessor for WidgetTileInfo);
  sub_10004DD8C(v12, type metadata accessor for AccessoryAndSceneEntity);
  v15[v29[6]] = v28;
  sub_10009E2F4();
  sub_10009DA74();
  v31 = &v15[*(sub_100003714(&qword_1000C1AE8, &qword_1000A1B48) + 36)];
  v32 = v81;
  *v31 = v80;
  *(v31 + 1) = v32;
  *(v31 + 2) = v82;
  v33 = *(v13 + 52);
  v34 = sub_10009CF14();
  (*(*(v34 - 8) + 16))(&v15[v33], a2, v34);
  v35 = sub_10001CDC8(&qword_1000C1AF0, &qword_1000C1AD0, &qword_1000A1B30, &protocol conformance descriptor for IDView<A, B>);
  sub_10009E004();
  sub_1000160CC(v15, &qword_1000C1AD0, &qword_1000A1B30);
  v89 = 0;
  v90 = 0xE000000000000000;
  sub_10009EAC4(44);

  v78 = 0xD00000000000002ALL;
  v79 = 0x80000001000A4AB0;
  v36 = (v22 + *(type metadata accessor for WidgetTileInfo(0) + 28));
  if (v36[1])
  {
    v23 = *v36;
    v37 = v36[1];
  }

  else
  {
    v37 = 0x80000001000A4A40;
  }

  v95._countAndFlagsBits = v23;
  v95._object = v37;
  sub_10009E634(v95);

  v89 = v78;
  v90 = v79;
  v83 = 32;
  v84 = 0xE100000000000000;
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1000037A4();
  sub_10009E954();

  v89 = v13;
  v90 = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v66;
  sub_10009E0E4();

  (*(v65 + 8))(v17, v38);
  v39 = *(v67 + 16);
  v40 = v68;
  v41 = v64;
  if (v39 - 2 >= v68)
  {
    v42 = v71;
    sub_10009E2F4();
    sub_10009DA74();
    LODWORD(v66) = 0;
    v67 = v83;
    v65 = v85;
    v63 = v87;
    v62 = v88;
    LOBYTE(v76) = 1;
    v75 = v84;
    v74 = v86;
    v59 = 1;
    v60 = v84;
    v61 = v86;
    LOBYTE(v89) = 0;
  }

  else
  {
    v67 = 0;
    v65 = 0;
    v63 = 0;
    v62 = 0;
    v61 = 0;
    v60 = 0;
    v59 = 0;
    LODWORD(v66) = 1;
    v42 = v71;
  }

  if (v39 < *(v42 + *(v41 + 28)) && v39 - 1 == v40)
  {
    sub_10009E2F4();
    sub_10009DA74();
    LODWORD(v68) = 0;
    v71 = v89;
    v64 = v91;
    v43 = v93;
    v44 = v94;
    v75 = 1;
    v74 = v90;
    v73 = v92;
    v45 = 1;
    v46 = v90;
    v47 = v92;
    LOBYTE(v76) = 0;
  }

  else
  {
    v71 = 0;
    v64 = 0;
    v43 = 0;
    v44 = 0;
    v47 = 0;
    v46 = 0;
    v45 = 0;
    LODWORD(v68) = 1;
  }

  v48 = v72;
  v49 = v69;
  sub_10001E0A8(v72, v69, &qword_1000C1AE0, &qword_1000A1B40);
  v50 = v70;
  sub_10001E0A8(v49, v70, &qword_1000C1AE0, &qword_1000A1B40);
  v51 = sub_100003714(&qword_1000C1B78, &qword_1000A1BB8);
  v52 = v50 + *(v51 + 48);
  v53 = v59;
  *v52 = 0;
  *(v52 + 8) = v53;
  v54 = v60;
  *(v52 + 16) = v67;
  *(v52 + 24) = v54;
  v55 = v61;
  *(v52 + 32) = v65;
  *(v52 + 40) = v55;
  v56 = v62;
  *(v52 + 48) = v63;
  *(v52 + 56) = v56;
  *(v52 + 64) = v66;
  v57 = v50 + *(v51 + 64);
  *v57 = 0;
  *(v57 + 8) = v45;
  *(v57 + 16) = v71;
  *(v57 + 24) = v46;
  *(v57 + 32) = v64;
  *(v57 + 40) = v47;
  *(v57 + 48) = v43;
  *(v57 + 56) = v44;
  *(v57 + 64) = v68;
  sub_1000160CC(v48, &qword_1000C1AE0, &qword_1000A1B40);
  return sub_1000160CC(v49, &qword_1000C1AE0, &qword_1000A1B40);
}

uint64_t sub_1000492C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v89 = a4;
  v7 = sub_10009E3B4();
  v87 = *(v7 - 8);
  v88 = v7;
  __chkstk_darwin(v7);
  v86 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009CF54();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10009E5A4();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100003714(&qword_1000C0B10, &unk_1000A1BC0);
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  v70 = sub_100003714(&qword_1000C0B08, &qword_10009F930);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v66 - v14;
  v15 = sub_100003714(&qword_1000C0B00, &unk_1000A1BD0);
  v16 = *(v15 - 8);
  v76 = v15;
  v77 = v16;
  __chkstk_darwin(v15);
  v68 = &v66 - v17;
  v18 = sub_100003714(&qword_1000C0AF8, &qword_10009F928);
  v19 = *(v18 - 8);
  v78 = v18;
  v79 = v19;
  __chkstk_darwin(v18);
  v72 = &v66 - v20;
  v21 = sub_100003714(&qword_1000C0AF0, &unk_1000A1BE0);
  v22 = *(v21 - 8);
  v80 = v21;
  v81 = v22;
  __chkstk_darwin(v21);
  v73 = &v66 - v23;
  v24 = sub_100003714(&qword_1000C0AE8, "\\x");
  v25 = *(v24 - 8);
  v82 = v24;
  v83 = v25;
  __chkstk_darwin(v24);
  v74 = &v66 - v26;
  v27 = sub_100003714(&qword_1000C0B28, &qword_1000A1BF0);
  v28 = *(v27 - 8);
  v84 = v27;
  v85 = v28;
  __chkstk_darwin(v27);
  v75 = &v66 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  swift_bridgeObjectRetain_n();
  sub_100003714(&qword_1000C1B80, &qword_1000A1BF8);
  sub_10005A098();
  sub_10005A224();
  sub_10009E414();
  sub_10009E554();
  sub_10009CF44();
  v90 = sub_10009E5E4();
  v91 = v31;
  v32 = sub_10001CDC8(&qword_1000C0B18, &qword_1000C0B10, &unk_1000A1BC0, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
  v33 = sub_1000037A4();
  v34 = v67;
  sub_10009DD64();

  (*(v69 + 8))(v13, v11);
  sub_10009E554();
  sub_10009CF44();
  v94 = sub_10009E5E4();
  v95 = v35;
  v90 = v11;
  v91 = &type metadata for String;
  v92 = v32;
  v93 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v68;
  v38 = v70;
  sub_10009DD24();

  v39 = v34;
  v40 = v38;
  (*(v71 + 8))(v39, v38);
  sub_100003714(&qword_1000C1BB0, &qword_1000A1C08);
  v41 = sub_10009E3D4();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_10009F8F0;
  v46 = v45 + v44;
  v47 = *(v42 + 104);
  v47(v46, enum case for WidgetFamily.systemSmall(_:), v41);
  v47(v46 + v43, enum case for WidgetFamily.systemMedium(_:), v41);
  v90 = v40;
  v91 = &type metadata for String;
  v92 = OpaqueTypeConformance2;
  v93 = v33;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v72;
  v50 = v76;
  sub_10009DD34();

  v51 = v50;
  (*(v77 + 8))(v37, v50);
  v52 = v86;
  v53 = v87;
  v54 = v88;
  (*(v87 + 104))(v86, enum case for WidgetBackgroundStyle.blur(_:), v88);
  v90 = v51;
  v91 = v48;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v73;
  v57 = v78;
  sub_10009DD74();
  (*(v53 + 8))(v52, v54);
  (*(v79 + 8))(v49, v57);
  v90 = v57;
  v91 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v74;
  v60 = v80;
  sub_10009DD44();
  (*(v81 + 8))(v56, v60);
  v90 = v60;
  v91 = v58;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v75;
  v63 = v82;
  sub_10009DD84();
  (*(v83 + 8))(v59, v63);
  v90 = v63;
  v91 = v61;
  swift_getOpaqueTypeConformance2();
  v64 = v84;
  sub_10009DD54();
  return (*(v85 + 8))(v62, v64);
}

uint64_t sub_100049D78@<X0>(uint64_t a1@<X0>, char a2@<W3>, void *a3@<X8>)
{
  v43 = a3;
  v40 = sub_100003714(&qword_1000C1BB8, &qword_1000A1C10);
  __chkstk_darwin(v40);
  v42 = &v36 - v5;
  v6 = sub_10009DE94();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HomeInteractiveWidgetsEntryView(0);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100003714(&qword_1000C1BC0, &qword_1000A1C18);
  v12 = *(v41 - 8);
  __chkstk_darwin(v41);
  v14 = &v36 - v13;
  v15 = type metadata accessor for AccessoriesAndScenesEntry(0);
  sub_10009C954();
  if (a2)
  {
    v36 = v44;
    sub_10009C954();
    v16 = v44;
    v17 = *(a1 + *(v15 + 24));
    KeyPath = swift_getKeyPath();
    v19 = swift_getKeyPath();
    v20 = swift_getKeyPath();
    v37 = v12;
    *&v11[v9[6]] = v20;
    sub_100003714(&qword_1000C15F8, &qword_1000A2510);
    swift_storeEnumTagMultiPayload();
    *v11 = KeyPath;
    v11[8] = 0;
    *(v11 + 2) = v19;
    *(v11 + 3) = 0;
    *(v11 + 4) = 0;
    *(v11 + 5) = 0;
    v11[48] = 0;
    *&v11[v9[7]] = v36;
    v11[v9[8]] = v16;
    v11[v9[9]] = v17;
    v21 = sub_10009DE84();
    v36 = &v36;
    __chkstk_darwin(v21);
    sub_10009E2F4();
    v22 = sub_100003714(&qword_1000C1B90, &qword_1000A1C00);
    v23 = sub_10004DA88(&qword_1000C1B98, type metadata accessor for HomeInteractiveWidgetsEntryView, &unk_1000A1434);
    v35 = sub_10005A1A8();
    sub_10009E0D4();
    (*(v38 + 8))(v8, v39);
    sub_10004DD8C(v11, type metadata accessor for HomeInteractiveWidgetsEntryView);
    v24 = v37;
    v25 = v41;
    (*(v37 + 16))(v42, v14, v41);
    swift_storeEnumTagMultiPayload();
    v44 = v9;
    v45 = v22;
    v46 = v23;
    v47 = v35;
    swift_getOpaqueTypeConformance2();
    sub_10009DD94();
    return (*(v24 + 8))(v14, v25);
  }

  else
  {
    v27 = v44;
    sub_10009C954();
    v28 = v44;
    v29 = *(a1 + *(v15 + 24));
    v30 = swift_getKeyPath();
    v31 = swift_getKeyPath();
    *&v11[v9[6]] = swift_getKeyPath();
    sub_100003714(&qword_1000C15F8, &qword_1000A2510);
    swift_storeEnumTagMultiPayload();
    *v11 = v30;
    v11[8] = 0;
    *(v11 + 2) = v31;
    *(v11 + 3) = 0;
    *(v11 + 4) = 0;
    *(v11 + 5) = 0;
    v11[48] = 0;
    *&v11[v9[7]] = v27;
    v11[v9[8]] = v28;
    v11[v9[9]] = v29;
    sub_10004DC34(v11, v42, type metadata accessor for HomeInteractiveWidgetsEntryView);
    swift_storeEnumTagMultiPayload();
    v32 = sub_10000375C(&qword_1000C1B90, &qword_1000A1C00);
    v33 = sub_10004DA88(&qword_1000C1B98, type metadata accessor for HomeInteractiveWidgetsEntryView, &unk_1000A1434);
    v34 = sub_10005A1A8();
    v44 = v9;
    v45 = v32;
    v46 = v33;
    v47 = v34;
    swift_getOpaqueTypeConformance2();
    sub_10009DD94();
    return sub_10004DD8C(v11, type metadata accessor for HomeInteractiveWidgetsEntryView);
  }
}

uint64_t sub_10004A370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = type metadata accessor for AccessoriesAndScenesEntry(0);
  v5 = 0;
  if (!*(a1 + *(result + 24)))
  {
    sub_10009E1C4();
    v5 = sub_10009E1A4();
  }

  *a2 = v5;
  return result;
}

unint64_t sub_10004A3D4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004D284();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_10004A464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DBB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004A4BC()
{
  sub_10009DBD4();
  sub_10004DA88(&qword_1000C16D8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10009DC54();
  return v1;
}

void *sub_10004A538@<X0>(_BYTE *a1@<X8>)
{
  sub_10009DBD4();
  sub_10004DA88(&qword_1000C16D8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10009DC54();
  *a1 = v3;
  return result;
}

uint64_t sub_10004A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_10004A70C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100003714(&qword_1000C0EC0, &qword_10009FCE8);
      v7 = *(type metadata accessor for AccessoryAndSceneEntity(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for AccessoryAndSceneEntity(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int sub_10004A8AC(uint64_t *a1)
{
  v2 = *(type metadata accessor for AccessoryAndSceneEntity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10002C438(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10004A954(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10004A954(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10009ECF4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for AccessoryAndSceneEntity(0);
        v6 = sub_10009E6D4();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for AccessoryAndSceneEntity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10004AF94(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10004AA80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10004AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v67 = sub_10009D494();
  v8 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for AccessoryAndSceneEntity(0);
  v10 = __chkstk_darwin(v69);
  v62 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v53 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v53 - v17;
  v55 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v63 = (v8 + 8);
    v21 = v19 + v20 * (a3 - 1);
    v60 = -v20;
    v61 = v19;
    v22 = a1 - a3;
    v54 = v20;
    v23 = v19 + v20 * a3;
    v64 = &v53 - v17;
    v65 = v14;
LABEL_6:
    v58 = v21;
    v59 = a3;
    v56 = v23;
    v57 = v22;
    v24 = v22;
    while (1)
    {
      v71 = v24;
      v72 = v23;
      sub_10004DC34(v23, v18, type metadata accessor for AccessoryAndSceneEntity);
      v70 = v21;
      sub_10004DC34(v21, v14, type metadata accessor for AccessoryAndSceneEntity);
      v25 = v69;
      v26 = &v18[*(v69 + 24)];
      v27 = type metadata accessor for WidgetTileInfo(0);
      v28 = &v26[*(v27 + 28)];
      v29 = *(v28 + 1);
      if (v29)
      {
        v30 = *v28;
      }

      else
      {
        v30 = 0;
      }

      v31 = 0xE000000000000000;
      if (v29)
      {
        v31 = v29;
      }

      v74 = v30;
      v75 = v31;
      swift_bridgeObjectRetain_n();

      v32 = v66;
      sub_10009D484();
      v68 = sub_10009D474();
      v76 = v33;
      v73 = *v63;
      v34 = v67;
      v73(v32, v67);
      v35 = &v14[*(v25 + 24) + *(v27 + 28)];
      v36 = *(v35 + 1);
      v37 = v36 ? *v35 : 0;
      v38 = v36 ? *(v35 + 1) : 0xE000000000000000;
      swift_bridgeObjectRetain_n();

      sub_10009D484();
      v39 = sub_10009D474();
      v41 = v40;
      v42 = v32;
      v43 = v34;
      v45 = v74;
      v44 = v75;
      v73(v42, v43);
      v46 = v45 == v37 && v44 == v38;
      if (v46 || (sub_10009ED34() & 1) != 0)
      {

        if (v68 == v39 && v76 == v41)
        {

          v14 = v65;
          sub_10004DD8C(v65, type metadata accessor for AccessoryAndSceneEntity);
          v18 = v64;
          result = sub_10004DD8C(v64, type metadata accessor for AccessoryAndSceneEntity);
LABEL_5:
          a3 = v59 + 1;
          v21 = v58 + v54;
          v22 = v57 - 1;
          v23 = v56 + v54;
          if (v59 + 1 == v55)
          {
            return result;
          }

          goto LABEL_6;
        }

        v47 = sub_10009ED34();
      }

      else
      {

        v47 = sub_10009ED34();
      }

      v18 = v64;

      v14 = v65;
      sub_10004DD8C(v65, type metadata accessor for AccessoryAndSceneEntity);
      result = sub_10004DD8C(v18, type metadata accessor for AccessoryAndSceneEntity);
      v49 = v71;
      v48 = v72;
      v50 = v70;
      if ((v47 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v61)
      {
        break;
      }

      v51 = v62;
      sub_10004EF84(v72, v62, type metadata accessor for AccessoryAndSceneEntity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10004EF84(v51, v50, type metadata accessor for AccessoryAndSceneEntity);
      v21 = v50 + v60;
      v23 = v48 + v60;
      v52 = __CFADD__(v49, 1);
      v24 = v49 + 1;
      if (v52)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10004AF94(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v161 = a4;
  v162 = a1;
  v181 = sub_10009D494();
  v7 = *(v181 - 8);
  __chkstk_darwin(v181);
  v180 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for AccessoryAndSceneEntity(0);
  v171 = *(v182 - 8);
  v9 = __chkstk_darwin(v182);
  v166 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v178 = &v158 - v12;
  v13 = __chkstk_darwin(v11);
  v192 = &v158 - v14;
  v15 = __chkstk_darwin(v13);
  v191 = &v158 - v16;
  v17 = __chkstk_darwin(v15);
  v174 = &v158 - v18;
  v19 = __chkstk_darwin(v17);
  v173 = &v158 - v20;
  v21 = __chkstk_darwin(v19);
  result = __chkstk_darwin(v21);
  v172 = a3;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_139:
    v7 = *v162;
    if (!*v162)
    {
      goto LABEL_181;
    }

    a3 = v27;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_175:
      result = sub_10002BF3C(a3);
    }

    v193 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v172)
      {
        v154 = *(result + 16 * a3);
        v155 = result;
        v156 = *(result + 16 * (a3 - 1) + 40);
        sub_10004BEF8(*v172 + *(v171 + 72) * v154, *v172 + *(v171 + 72) * *(result + 16 * (a3 - 1) + 32), *v172 + *(v171 + 72) * v156, v7);
        if (v5)
        {
        }

        if (v156 < v154)
        {
          goto LABEL_168;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_10002BF3C(v155);
        }

        if (a3 - 2 >= *(v155 + 2))
        {
          goto LABEL_169;
        }

        v157 = &v155[16 * a3];
        *v157 = v154;
        *(v157 + 1) = v156;
        v193 = v155;
        sub_10002BEB0(a3 - 1);
        result = v193;
        a3 = *(v193 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_179;
    }
  }

  v158 = &v158 - v23;
  v159 = v24;
  v26 = 0;
  v179 = (v7 + 8);
  v27 = _swiftEmptyArrayStorage;
  while (1)
  {
    v28 = v26;
    v167 = v27;
    v163 = v26;
    if (v26 + 1 < v25)
    {
      v175 = v25;
      v29 = *v172;
      v30 = *(v171 + 72);
      v31 = *v172 + v30 * (v26 + 1);
      v32 = v158;
      sub_10004DC34(v31, v158, type metadata accessor for AccessoryAndSceneEntity);
      v33 = v159;
      sub_10004DC34(v29 + v30 * v26, v159, type metadata accessor for AccessoryAndSceneEntity);
      LODWORD(v177) = sub_10003D2E0(v32, v33);
      if (!v5)
      {
        v160 = 0;
        a3 = type metadata accessor for AccessoryAndSceneEntity;
        sub_10004DD8C(v33, type metadata accessor for AccessoryAndSceneEntity);
        result = sub_10004DD8C(v32, type metadata accessor for AccessoryAndSceneEntity);
        v7 = v26 + 2;
        v34 = v29 + v30 * (v26 + 2);
        v35 = v182;
        v176 = v30;
        while (1)
        {
          v40 = v175;
          if (v175 == v7)
          {
            break;
          }

          v188 = v34;
          v189 = v7;
          v41 = v173;
          sub_10004DC34(v34, v173, type metadata accessor for AccessoryAndSceneEntity);
          v190 = v31;
          v42 = v174;
          sub_10004DC34(v31, v174, type metadata accessor for AccessoryAndSceneEntity);
          v43 = v41 + *(v35 + 24);
          v44 = type metadata accessor for WidgetTileInfo(0);
          v45 = (v43 + *(v44 + 28));
          v46 = v45[1];
          if (v46)
          {
            v47 = *v45;
          }

          else
          {
            v47 = 0;
          }

          v48 = 0xE000000000000000;
          if (v46)
          {
            v48 = v46;
          }

          v185 = v48;
          v186 = v47;
          swift_bridgeObjectRetain_n();

          v49 = v180;
          sub_10009D484();
          v50 = sub_10009D474();
          v187 = v51;
          v52 = *v179;
          v183 = v50;
          v184 = v52;
          v53 = v181;
          v52(v49, v181);
          v54 = (v42 + *(v35 + 24) + *(v44 + 28));
          v55 = v54[1];
          if (v55)
          {
            v56 = *v54;
          }

          else
          {
            v56 = 0;
          }

          if (v55)
          {
            v57 = v54[1];
          }

          else
          {
            v57 = 0xE000000000000000;
          }

          swift_bridgeObjectRetain_n();

          sub_10009D484();
          v58 = sub_10009D474();
          v60 = v59;
          v61 = v49;
          v62 = v53;
          v64 = v185;
          v63 = v186;
          v184(v61, v62);
          v65 = v63 == v56 && v64 == v57;
          if (v65 || (sub_10009ED34() & 1) != 0)
          {

            if (v183 == v58 && v187 == v60)
            {
              v36 = 0;
            }

            else
            {
              v36 = sub_10009ED34();
            }
          }

          else
          {

            v36 = sub_10009ED34();
          }

          v35 = v182;
          v37 = v189;
          v38 = v190;
          v39 = v188;

          a3 = type metadata accessor for AccessoryAndSceneEntity;
          sub_10004DD8C(v174, type metadata accessor for AccessoryAndSceneEntity);
          result = sub_10004DD8C(v173, type metadata accessor for AccessoryAndSceneEntity);
          v7 = v37 + 1;
          v30 = v176;
          v34 = v39 + v176;
          v31 = v38 + v176;
          if ((v177 ^ v36))
          {
            v40 = v7 - 1;
            break;
          }
        }

        v5 = v160;
        v66 = v161;
        v28 = v163;
        if (v177)
        {
          if (v40 < v163)
          {
            goto LABEL_174;
          }

          if (v163 < v40)
          {
            a3 = v30 * (v40 - 1);
            v67 = v40 * v30;
            v68 = v40;
            v69 = v163;
            v70 = v163 * v30;
            do
            {
              if (v69 != --v40)
              {
                v71 = *v172;
                if (!*v172)
                {
                  goto LABEL_178;
                }

                v7 = v71 + v70;
                sub_10004EF84(v71 + v70, v166, type metadata accessor for AccessoryAndSceneEntity);
                if (v70 < a3 || v7 >= v71 + v67)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v70 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_10004EF84(v166, v71 + a3, type metadata accessor for AccessoryAndSceneEntity);
              }

              ++v69;
              a3 -= v30;
              v67 -= v30;
              v70 += v30;
            }

            while (v69 < v40);
            v5 = v160;
            v66 = v161;
            v28 = v163;
            v40 = v68;
          }
        }

        goto LABEL_46;
      }

      sub_10004DD8C(v33, type metadata accessor for AccessoryAndSceneEntity);
      sub_10004DD8C(v32, type metadata accessor for AccessoryAndSceneEntity);
    }

    v40 = v26 + 1;
    v66 = v161;
LABEL_46:
    v72 = v172[1];
    if (v40 >= v72)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v40, v28))
    {
      goto LABEL_171;
    }

    if (v40 - v28 >= v66)
    {
LABEL_55:
      v7 = v40;
      if (v40 < v28)
      {
        goto LABEL_170;
      }

      goto LABEL_56;
    }

    if (__OFADD__(v28, v66))
    {
      goto LABEL_172;
    }

    if (v28 + v66 >= v72)
    {
      v7 = v172[1];
    }

    else
    {
      v7 = v28 + v66;
    }

    if (v7 < v28)
    {
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    if (v40 == v7)
    {
      goto LABEL_55;
    }

    v160 = v5;
    v118 = *v172;
    v119 = *(v171 + 72);
    v120 = *v172 + v119 * (v40 - 1);
    v176 = -v119;
    v177 = v118;
    v121 = v28 - v40;
    v164 = v119;
    v122 = v118 + v40 * v119;
    v123 = v182;
    v165 = v7;
LABEL_108:
    v175 = v40;
    v168 = v122;
    v169 = v121;
    v124 = v121;
    v170 = v120;
LABEL_109:
    v185 = v122;
    v186 = v124;
    v125 = v191;
    sub_10004DC34(v122, v191, type metadata accessor for AccessoryAndSceneEntity);
    v184 = v120;
    v126 = v192;
    sub_10004DC34(v120, v192, type metadata accessor for AccessoryAndSceneEntity);
    v127 = v125 + *(v123 + 24);
    v128 = v123;
    v129 = type metadata accessor for WidgetTileInfo(0);
    v130 = (v127 + *(v129 + 28));
    v131 = v130[1];
    if (v131)
    {
      v132 = *v130;
    }

    else
    {
      v132 = 0;
    }

    v133 = 0xE000000000000000;
    if (v131)
    {
      v133 = v131;
    }

    v188 = v132;
    v189 = v133;
    swift_bridgeObjectRetain_n();

    v134 = v180;
    sub_10009D484();
    v183 = sub_10009D474();
    v190 = v135;
    v187 = *v179;
    v136 = v181;
    v187(v134, v181);
    v137 = (v126 + *(v128 + 24) + *(v129 + 28));
    v138 = v137[1];
    v139 = v138 ? *v137 : 0;
    v140 = v138 ? v137[1] : 0xE000000000000000;
    swift_bridgeObjectRetain_n();

    sub_10009D484();
    v141 = sub_10009D474();
    v143 = v142;
    v144 = v134;
    v145 = v136;
    a3 = v188;
    v146 = v189;
    v187(v144, v145);
    v147 = a3 == v139 && v146 == v140;
    if (!v147 && (sub_10009ED34() & 1) == 0)
    {
      break;
    }

    if (v183 != v141 || v190 != v143)
    {
      v148 = sub_10009ED34();
      goto LABEL_129;
    }

    sub_10004DD8C(v192, type metadata accessor for AccessoryAndSceneEntity);
    sub_10004DD8C(v191, type metadata accessor for AccessoryAndSceneEntity);
    v123 = v182;
LABEL_107:
    v40 = v175 + 1;
    v120 = v170 + v164;
    v121 = v169 - 1;
    v122 = v168 + v164;
    v7 = v165;
    if (v175 + 1 != v165)
    {
      goto LABEL_108;
    }

    v5 = v160;
    if (v165 < v163)
    {
      goto LABEL_170;
    }

LABEL_56:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v27 = v167;
    }

    else
    {
      result = sub_10002BF50(0, *(v167 + 2) + 1, 1, v167);
      v27 = result;
    }

    v74 = *(v27 + 2);
    v73 = *(v27 + 3);
    a3 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      result = sub_10002BF50((v73 > 1), v74 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 2) = a3;
    v75 = &v27[16 * v74];
    *(v75 + 4) = v163;
    *(v75 + 5) = v7;
    v26 = v7;
    v7 = *v162;
    if (!*v162)
    {
      goto LABEL_180;
    }

    v76 = v5;
    if (v74)
    {
      while (2)
      {
        v5 = a3 - 1;
        if (a3 >= 4)
        {
          v81 = &v27[16 * a3 + 32];
          v82 = *(v81 - 64);
          v83 = *(v81 - 56);
          v87 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          if (v87)
          {
            goto LABEL_157;
          }

          v86 = *(v81 - 48);
          v85 = *(v81 - 40);
          v87 = __OFSUB__(v85, v86);
          v79 = v85 - v86;
          v80 = v87;
          if (v87)
          {
            goto LABEL_158;
          }

          v88 = &v27[16 * a3];
          v90 = *v88;
          v89 = *(v88 + 1);
          v87 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v87)
          {
            goto LABEL_160;
          }

          v87 = __OFADD__(v79, v91);
          v92 = v79 + v91;
          if (v87)
          {
            goto LABEL_163;
          }

          if (v92 >= v84)
          {
            v110 = &v27[16 * v5 + 32];
            v112 = *v110;
            v111 = *(v110 + 1);
            v87 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v87)
            {
              goto LABEL_167;
            }

            if (v79 < v113)
            {
              v5 = a3 - 2;
            }
          }

          else
          {
LABEL_75:
            if (v80)
            {
              goto LABEL_159;
            }

            v93 = &v27[16 * a3];
            v95 = *v93;
            v94 = *(v93 + 1);
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_162;
            }

            v99 = &v27[16 * v5 + 32];
            v101 = *v99;
            v100 = *(v99 + 1);
            v87 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v87)
            {
              goto LABEL_165;
            }

            if (__OFADD__(v97, v102))
            {
              goto LABEL_166;
            }

            if (v97 + v102 < v79)
            {
              goto LABEL_89;
            }

            if (v79 < v102)
            {
              v5 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v77 = *(v27 + 4);
            v78 = *(v27 + 5);
            v87 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            v80 = v87;
            goto LABEL_75;
          }

          v103 = &v27[16 * a3];
          v105 = *v103;
          v104 = *(v103 + 1);
          v87 = __OFSUB__(v104, v105);
          v97 = v104 - v105;
          v98 = v87;
LABEL_89:
          if (v98)
          {
            goto LABEL_161;
          }

          v106 = &v27[16 * v5];
          v108 = *(v106 + 4);
          v107 = *(v106 + 5);
          v87 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v87)
          {
            goto LABEL_164;
          }

          if (v109 < v97)
          {
            break;
          }
        }

        v114 = v5 - 1;
        if (v5 - 1 >= a3)
        {
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (!*v172)
        {
          goto LABEL_177;
        }

        v115 = v27;
        a3 = *&v27[16 * v114 + 32];
        v116 = *&v27[16 * v5 + 40];
        sub_10004BEF8(*v172 + *(v171 + 72) * a3, *v172 + *(v171 + 72) * *&v27[16 * v5 + 32], *v172 + *(v171 + 72) * v116, v7);
        if (v76)
        {
        }

        if (v116 < a3)
        {
          goto LABEL_155;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10002BF3C(v115);
        }

        if (v114 >= *(v115 + 2))
        {
          goto LABEL_156;
        }

        v117 = &v115[16 * v114];
        *(v117 + 4) = a3;
        *(v117 + 5) = v116;
        v193 = v115;
        result = sub_10002BEB0(v5);
        v27 = v193;
        a3 = *(v193 + 16);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v25 = v172[1];
    v5 = v76;
    if (v26 >= v25)
    {
      goto LABEL_139;
    }
  }

  v148 = sub_10009ED34();
LABEL_129:
  v123 = v182;

  a3 = type metadata accessor for AccessoryAndSceneEntity;
  sub_10004DD8C(v192, type metadata accessor for AccessoryAndSceneEntity);
  result = sub_10004DD8C(v191, type metadata accessor for AccessoryAndSceneEntity);
  if ((v148 & 1) == 0)
  {
    goto LABEL_107;
  }

  v149 = v186;
  if (v177)
  {
    a3 = type metadata accessor for AccessoryAndSceneEntity;
    v150 = v185;
    v151 = v178;
    sub_10004EF84(v185, v178, type metadata accessor for AccessoryAndSceneEntity);
    v152 = v184;
    swift_arrayInitWithTakeFrontToBack();
    sub_10004EF84(v151, v152, type metadata accessor for AccessoryAndSceneEntity);
    v120 = v152 + v176;
    v122 = v150 + v176;
    v153 = __CFADD__(v149, 1);
    v124 = v149 + 1;
    if (v153)
    {
      goto LABEL_107;
    }

    goto LABEL_109;
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
  return result;
}

uint64_t sub_10004BEF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for AccessoryAndSceneEntity(0);
  v9 = __chkstk_darwin(v64);
  v10 = __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v53 - v14;
  result = __chkstk_darwin(v13);
  v19 = &v53 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          sub_10004DC34(v39 + v38, v27, type metadata accessor for AccessoryAndSceneEntity);
          v43 = v27;
          v44 = v59;
          sub_10004DC34(v40, v59, type metadata accessor for AccessoryAndSceneEntity);
          v45 = sub_10003D2E0(v43, v44);
          if (v37)
          {
            sub_10004DD8C(v44, type metadata accessor for AccessoryAndSceneEntity);
            sub_10004DD8C(v43, type metadata accessor for AccessoryAndSceneEntity);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          sub_10004DD8C(v44, type metadata accessor for AccessoryAndSceneEntity);
          sub_10004DD8C(v43, type metadata accessor for AccessoryAndSceneEntity);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        sub_10004DC34(a2, v19, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DC34(a4, v15, type metadata accessor for AccessoryAndSceneEntity);
        v31 = sub_10003D2E0(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        sub_10004DD8C(v33, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DD8C(v19, type metadata accessor for AccessoryAndSceneEntity);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_10004DD8C(v15, type metadata accessor for AccessoryAndSceneEntity);
      sub_10004DD8C(v19, type metadata accessor for AccessoryAndSceneEntity);
    }
  }

LABEL_62:
  sub_10004C528(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_10004C528(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AccessoryAndSceneEntity(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10004C60C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10009E9A4() + 1) & ~v5;
    do
    {
      sub_10009EDD4();

      sub_10009E624();
      v9 = sub_10009EE04();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10004C7BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009DB94();
  *a1 = result;
  return result;
}

uint64_t sub_10004C814(uint64_t a1)
{
  v42 = sub_100003714(&qword_1000C19A0, &qword_1000A1A10);
  v2 = __chkstk_darwin(v42);
  v41 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v2);
  v7 = &v37 - v6;
  v8 = _swiftEmptyArrayStorage;
  v40 = *(a1 + 16);
  if (v40)
  {
    v43 = v5;
    v9 = *(v5 + 80);
    v37 = v9;
    v38 = (v9 + 32) & ~v9;
    v10 = _swiftEmptyArrayStorage + v38;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for AccessoryAndSceneEntity(0) - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v39 = *(v13 + 72);
    v15 = _swiftEmptyArrayStorage;
    while (1)
    {
      v16 = v41;
      v17 = *(v42 + 48);
      *v41 = v11;
      sub_10004DC34(v14, v16 + v17, type metadata accessor for AccessoryAndSceneEntity);
      v18 = v7;
      result = sub_10005B0FC(v16, v7, &qword_1000C19A0, &qword_1000A1A10);
      if (v12)
      {
        v44 = v15;
      }

      else
      {
        v19 = v15[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        sub_100003714(&qword_1000C1A50, &qword_1000A1AB0);
        v22 = *(v43 + 72);
        v23 = v38;
        v44 = swift_allocObject();
        result = j__malloc_size(v44);
        if (!v22)
        {
          goto LABEL_35;
        }

        v24 = result - v23;
        if (result - v23 == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_36;
        }

        v26 = v24 / v22;
        v27 = v44;
        *(v44 + 2) = v21;
        v27[3] = 2 * (v24 / v22);
        v28 = v27 + v23;
        v29 = v15[3] >> 1;
        v30 = v29 * v22;
        if (v15[2])
        {
          if (v27 < v15 || v28 >= v15 + v38 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v28[v30];
        v12 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v29;
      }

      v32 = v43;
      v7 = v18;
      v33 = __OFSUB__(v12--, 1);
      if (v33)
      {
        break;
      }

      ++v11;
      result = sub_10005B0FC(v18, v10, &qword_1000C19A0, &qword_1000A1A10);
      v10 += *(v32 + 72);
      v14 += v39;
      v8 = v44;
      v15 = v44;
      if (v40 == v11)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = 0;
LABEL_29:
  v34 = v8[3];
  if (v34 < 2)
  {
    return v8;
  }

  v35 = v34 >> 1;
  v33 = __OFSUB__(v35, v12);
  v36 = v35 - v12;
  if (!v33)
  {
    v8[2] = v36;
    return v8;
  }

LABEL_37:
  __break(1u);
  return result;
}

char *sub_10004CB70(char *result)
{
  v1 = *(result + 2);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 32;
    while (1)
    {
      v7 = v6[v3];
      if (v4)
      {

        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        sub_100003714(&qword_1000C1B10, &unk_1000A1B60);
        v12 = swift_allocObject();
        v13 = j__malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 != v2 || v16 >= &v19[16 * v17])
          {
            memmove(v16, v19, 16 * v17);
          }

          *(v2 + 2) = 0;
        }

        else
        {
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v20 = *(v2 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v22;
  }

  return v2;
}

void sub_10004CD00(uint64_t a1, void *a2)
{
  v30 = a2;
  v31 = sub_10009CF14();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_10009E9D4();
    sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
    sub_100034CC0();
    sub_10009E794();
    a1 = v34;
    v5 = v35;
    v6 = v36;
    v7 = v37;
    v8 = v38;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v26 = v6;
  v28 = (v3 + 8);
  v12 = _swiftEmptyArrayStorage;
LABEL_8:
  v27 = v12;
  while (a1 < 0)
  {
    v16 = sub_10009EA44();
    if (!v16 || (v32 = v16, sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr), swift_dynamicCast(), (v15 = v33) == 0))
    {
LABEL_24:
      sub_100015F9C(a1);
      return;
    }

LABEL_19:
    v17 = [v30 reachabilityByAccessoryUniqueIdentifier];
    sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
    sub_10004DA88(&qword_1000C0B68, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = sub_10009E4C4();

    v19 = [v15 uniqueIdentifier];
    v20 = v29;
    sub_10009CF04();

    if (*(v18 + 16))
    {
      v21 = sub_10001B5D0(v20);
      if (v22)
      {
        v23 = *(*(v18 + 56) + 8 * v21);
        v25 = *v28;
        v27 = v23;
        v25(v20, v31);

        sub_10009E684();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10009E6C4();
        }

        sub_10009E6E4();
        v12 = v39;
        goto LABEL_8;
      }
    }

    (*v28)(v20, v31);
  }

  v13 = v7;
  v14 = v8;
  if (v8)
  {
LABEL_15:
    v8 = (v14 - 1) & v14;
    v15 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v6 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v7);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void *sub_10004D0FC(unint64_t a1, uint64_t a2)
{
  v13 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_16:
    v3 = sub_10009EBA4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_10009EAE4();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            return v13;
          }
        }

        else
        {
          if (v4 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(a1 + 8 * v4 + 32);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v8 = v6;
        v9 = sub_100004014(&v12, v8);

        if (v9)
        {
          sub_10009EB34();
          sub_10009EB64();
          v5 = v11;
          sub_10009EB74();
          sub_10009EB44();
        }

        else
        {
        }

        ++v4;
        if (v7 == v3)
        {
          return v13;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10004D284()
{
  v0 = sub_10009CE24();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v2);
  v7 = &v22[-v6];
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  if (qword_1000C0A48 != -1)
  {
    swift_once();
  }

  sub_10009D9D4();

  if (v22[15] == 1)
  {
    sub_1000249E0(v9);
    v10 = [objc_opt_self() defaultManager];
    sub_10009CDF4(1);
    v11 = sub_10009E5B4();

    v12 = [v10 fileExistsAtPath:v11];

    if ((v12 & 1) != 0 || (v13 = [objc_opt_self() mainBundle], v14 = sub_10009E5B4(), v15 = sub_10009E5B4(), v16 = objc_msgSend(v13, "URLForResource:withExtension:", v14, v15), v13, v14, v15, !v16))
    {
      (*(v1 + 8))(v9, v0);
    }

    else
    {
      sub_10009CDE4();

      (*(v1 + 32))(v7, v4, v0);
      v17 = sub_10009CE34();
      v19 = v18;
      sub_10009CE84();
      sub_100033B34(v17, v19);
      v20 = *(v1 + 8);
      v20(v7, v0);
      v20(v9, v0);
    }
  }

  return 0xD000000000000021;
}

uint64_t sub_10004D618()
{
  v1 = type metadata accessor for HomeInteractiveWidgetsEntryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_10004D760(*(v0 + v4), *(v0 + v4 + 8));
  sub_10004D76C(*(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48));
  v6 = *(v1 + 24);
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10009E3D4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10004D760(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10004D76C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

void *sub_10004D778@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for HomeInteractiveWidgetsEntryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100041B10(a1, v6, a2);
}

unint64_t sub_10004D838()
{
  result = qword_1000C1638;
  if (!qword_1000C1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1638);
  }

  return result;
}

unint64_t sub_10004D8BC()
{
  result = qword_1000C1658;
  if (!qword_1000C1658)
  {
    sub_10000375C(&qword_1000C1660, &qword_1000A14D0);
    sub_10004DA88(&qword_1000C1668, type metadata accessor for WidgetViewForLargeSquareTiles, &unk_1000A1820);
    sub_10004D978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1658);
  }

  return result;
}

unint64_t sub_10004D978()
{
  result = qword_1000C1670;
  if (!qword_1000C1670)
  {
    sub_10000375C(&qword_1000C1608, &qword_1000A1498);
    sub_10004DA34();
    sub_10004DA88(&qword_1000C1680, type metadata accessor for WidgetViewsForMediumSystemFamily, &unk_1000A1780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1670);
  }

  return result;
}

unint64_t sub_10004DA34()
{
  result = qword_1000C1678;
  if (!qword_1000C1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1678);
  }

  return result;
}

uint64_t sub_10004DA88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004DAD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004DB7C()
{
  result = qword_1000C16B8;
  if (!qword_1000C16B8)
  {
    sub_10000375C(&qword_1000C1688, &qword_1000A14D8);
    sub_10004D88C();
    sub_100059AD4(&qword_1000C1650, &qword_1000C1618, &qword_1000A14A8, sub_10004D8BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C16B8);
  }

  return result;
}

uint64_t sub_10004DC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004DD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_10004DDEC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004DE00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10004DE48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004DEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10004DF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10004E04C(uint64_t a1)
{
  sub_10004E720(319, &qword_1000C15A0, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10003AF84(319, &qword_1000C1590, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_10004E720(319, &unk_1000C1748, type metadata accessor for AccessoryAndSceneEntity, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_10004E1A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10004E1BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10004E204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10004E274(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[9]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004E3FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_10004E56C(uint64_t a1)
{
  sub_10003AF84(319, &qword_1000C1590, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_10004E720(319, &qword_1000C15A0, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10004E720(319, &qword_1000C1810, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10004E720(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGSize();
          if (v5 <= 0x3F)
          {
            sub_10004E720(319, &unk_1000C1748, type metadata accessor for AccessoryAndSceneEntity, &type metadata accessor for Array);
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

void sub_10004E720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10004E784(uint64_t a1, int a2)
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

uint64_t sub_10004E7CC(uint64_t result, int a2, int a3)
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

unint64_t sub_10004E82C()
{
  result = qword_1000C1858;
  if (!qword_1000C1858)
  {
    sub_10000375C(&qword_1000C1860, "Di");
    sub_10001CDC8(&qword_1000C1868, &qword_1000C1870, qword_1000A1738, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1858);
  }

  return result;
}

uint64_t sub_10004E970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009DB94();
  *a1 = result;
  return result;
}

unint64_t sub_10004E9C8()
{
  result = qword_1000C18D8;
  if (!qword_1000C18D8)
  {
    sub_10000375C(&qword_1000C18D0, &qword_1000A1948);
    sub_10004EA80();
    sub_10001CDC8(&qword_1000C1900, &qword_1000C1908, &qword_1000A1960, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C18D8);
  }

  return result;
}

unint64_t sub_10004EA80()
{
  result = qword_1000C18E0;
  if (!qword_1000C18E0)
  {
    sub_10000375C(&qword_1000C18E8, &qword_1000A1950);
    sub_10001CDC8(&qword_1000C18F0, &qword_1000C18F8, &qword_1000A1958, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C18E0);
  }

  return result;
}

uint64_t sub_10004EB38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DB74();
  *a1 = result;
  return result;
}

unint64_t sub_10004EB8C()
{
  result = qword_1000C1920;
  if (!qword_1000C1920)
  {
    sub_10000375C(&qword_1000C1918, &qword_1000A1998);
    sub_10004EC44();
    sub_10001CDC8(&qword_1000C1900, &qword_1000C1908, &qword_1000A1960, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1920);
  }

  return result;
}

unint64_t sub_10004EC44()
{
  result = qword_1000C1928;
  if (!qword_1000C1928)
  {
    sub_10000375C(&qword_1000C1930, &qword_1000A19A0);
    sub_10001CDC8(&qword_1000C1938, &qword_1000C1940, &qword_1000A19A8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1928);
  }

  return result;
}

uint64_t sub_10004ECFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C18B8, &qword_1000A1900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004ED6C()
{
  v1 = type metadata accessor for WidgetViewForLargeSquareTiles(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 32) & ~v2;
  v5 = v0 + v4;
  sub_10004D760(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10009E3D4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10009DA04();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10009E3A4();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10004EF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004EFEC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for WidgetViewForLargeSquareTiles(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100045360(a1, a2, v8, a3);
}

uint64_t sub_10004F078()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10004F0B0()
{
  result = qword_1000C19E8;
  if (!qword_1000C19E8)
  {
    sub_10000375C(&qword_1000C19E0, &unk_1000A1A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C19E8);
  }

  return result;
}

uint64_t sub_10004F134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DBB4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10004F18C()
{
  result = qword_1000C1A28;
  if (!qword_1000C1A28)
  {
    sub_10000375C(&qword_1000C19F8, &qword_1000A1A58);
    sub_10001CDC8(&qword_1000C1A30, &qword_1000C19F0, &qword_1000A1A50, &unk_1000A3228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1A28);
  }

  return result;
}

uint64_t sub_10004F244(id *a1)
{
  v2 = sub_10009CF14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100003714(&qword_1000C0C70, &qword_10009FA00);
  __chkstk_darwin(v34);
  v6 = &v32 - v5;
  v7 = sub_100003714(&qword_1000C1228, &unk_1000A0880);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v11 = __chkstk_darwin(v10 - 8);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - v14;
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  v18 = [*a1 uniqueIdentifier];
  sub_10009CF04();

  v35 = v3;
  v19 = *(v3 + 56);
  v20 = 1;
  v19(v17, 0, 1, v2);
  sub_10009C954();
  v21 = type metadata accessor for HomeEntity(0);
  if (!(*(*(v21 - 8) + 48))(v9, 1, v21))
  {
    (*(v35 + 16))(v15, v9, v2);
    v20 = 0;
  }

  sub_1000160CC(v9, &qword_1000C1228, &unk_1000A0880);
  v19(v15, v20, 1, v2);
  v22 = *(v34 + 48);
  sub_10001E0A8(v17, v6, &qword_1000C0C78, &qword_1000A0390);
  sub_10001E0A8(v15, &v6[v22], &qword_1000C0C78, &qword_1000A0390);
  v23 = v35;
  v24 = *(v35 + 48);
  if (v24(v6, 1, v2) != 1)
  {
    v26 = v33;
    sub_10001E0A8(v6, v33, &qword_1000C0C78, &qword_1000A0390);
    if (v24(&v6[v22], 1, v2) != 1)
    {
      v27 = &v6[v22];
      v28 = v32;
      (*(v23 + 32))(v32, v27, v2);
      sub_10004DA88(&qword_1000C0BE8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = v23;
      v25 = sub_10009E534();
      v30 = *(v29 + 8);
      v30(v28, v2);
      sub_1000160CC(v15, &qword_1000C0C78, &qword_1000A0390);
      sub_1000160CC(v17, &qword_1000C0C78, &qword_1000A0390);
      v30(v33, v2);
      sub_1000160CC(v6, &qword_1000C0C78, &qword_1000A0390);
      return v25 & 1;
    }

    sub_1000160CC(v15, &qword_1000C0C78, &qword_1000A0390);
    sub_1000160CC(v17, &qword_1000C0C78, &qword_1000A0390);
    (*(v23 + 8))(v26, v2);
    goto LABEL_8;
  }

  sub_1000160CC(v15, &qword_1000C0C78, &qword_1000A0390);
  sub_1000160CC(v17, &qword_1000C0C78, &qword_1000A0390);
  if (v24(&v6[v22], 1, v2) != 1)
  {
LABEL_8:
    sub_1000160CC(v6, &qword_1000C0C70, &qword_10009FA00);
    v25 = 0;
    return v25 & 1;
  }

  sub_1000160CC(v6, &qword_1000C0C78, &qword_1000A0390);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_10004F7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for AccessoryAndSceneEntity(0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  sub_100003714(&qword_1000C1228, &unk_1000A0880);
  v3[14] = swift_task_alloc();
  sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_10009CF14();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_10004F970, 0, 0);
}

uint64_t sub_10004F970(uint64_t a1)
{
  v78 = v1;
  sub_10009C954();
  v2 = *(v1 + 72);
  if (*(v1 + 240) == 1)
  {
    v3 = *(v1 + 80);
    v4 = *(v1 + 64);
    type metadata accessor for HomeWidget();
    v5 = static HomeWidget.shared.getter();
    *(v1 + 16) = v4;
    *(v1 + 192) = v5;
    *(v1 + 24) = v2;
    *(v1 + 32) = v3;
    v6 = swift_task_alloc();
    *(v1 + 200) = v6;
    v7 = sub_10005B038();
    *v6 = v1;
    v6[1] = sub_10005029C;

    return HomeWidget.recommendedHome<A>(configuration:)(v1 + 16, &type metadata for RecommendedItemIntent, v7);
  }

  v9 = *(v1 + 112);
  sub_10009C954();
  v10 = type metadata accessor for HomeEntity(0);
  v11 = 1;
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    (*(*(v1 + 144) + 16))(*(v1 + 128), *(v1 + 112), *(v1 + 136));
    v11 = 0;
  }

  v12 = *(v1 + 136);
  v13 = *(v1 + 144);
  v15 = *(v1 + 120);
  v14 = *(v1 + 128);
  sub_1000160CC(*(v1 + 112), &qword_1000C1228, &unk_1000A0880);
  (*(v13 + 56))(v14, v11, 1, v12);
  sub_10009C954();
  v16 = *(v1 + 40);
  sub_10001E0A8(v14, v15, &qword_1000C0C78, &qword_1000A0390);
  if ((*(v13 + 48))(v15, 1, v12) == 1)
  {
    sub_1000160CC(*(v1 + 120), &qword_1000C0C78, &qword_1000A0390);
  }

  else
  {
    (*(*(v1 + 144) + 32))(*(v1 + 176), *(v1 + 120), *(v1 + 136));
    if (v16)
    {
      v17 = v16;
      v18 = *(v1 + 176);
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;

      v16 = sub_100024524(sub_10005B0AC, v19, v17);
    }

    (*(*(v1 + 144) + 8))(*(v1 + 176), *(v1 + 136));
  }

  if (qword_1000C0A90 != -1)
  {
LABEL_50:
    swift_once();
  }

  v20 = sub_10009D924();
  sub_100015B68(v20, qword_1000C8278);
  v21 = sub_10009D904();
  v22 = sub_10009E844();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v77[0] = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_10002AD68(0xD00000000000001CLL, 0x80000001000A4C60, v77);
    *(v23 + 12) = 2080;
    *(v1 + 56) = v16;

    sub_100003714(&qword_1000C1D68, &qword_1000A1DF8);
    v24 = sub_10009E5F4();
    v26 = sub_10002AD68(v24, v25, v77);

    *(v23 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s Looking for configuration accessories %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009C954();
  v27 = *(v1 + 48);
  if (v27)
  {
    v73 = *(v27 + 16);
    if (v73)
    {
      v16 = 0;
      v28 = *(v1 + 144);
      v70 = *(v1 + 96);
      v71 = *(v1 + 104);
      v68 = v27 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
      v69 = *(*(v1 + 88) + 20);
      v75 = (v28 + 16);
      v72 = v28;
      v67 = (v28 + 8);
      v29 = &_swiftEmptyDictionarySingleton;
      v66 = *(v1 + 48);
      while (1)
      {
        if (v16 >= *(v27 + 16))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v31 = *(v1 + 168);
        v32 = *(v1 + 136);
        sub_10004DC34(v68 + *(v70 + 72) * v16, *(v1 + 104), type metadata accessor for AccessoryAndSceneEntity);
        v33 = *v75;
        (*v75)(v31, v71 + v69, v32);
        if (v29[2] && (v34 = sub_10001B5D0(*(v1 + 168)), (v35 & 1) != 0))
        {
          v36 = *(v29[7] + 8 * v34);
        }

        else
        {
          v36 = _swiftEmptyArrayStorage;
        }

        v33(*(v1 + 160), *(v1 + 104), *(v1 + 136));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_100064F74(0, v36[2] + 1, 1, v36);
        }

        v38 = v36[2];
        v37 = v36[3];
        v74 = v33;
        if (v38 >= v37 >> 1)
        {
          v36 = sub_100064F74((v37 > 1), v38 + 1, 1, v36);
        }

        v39 = *(v1 + 160);
        v40 = *(v1 + 168);
        v41 = *(v1 + 152);
        v42 = *(v1 + 136);
        v36[2] = v38 + 1;
        v43 = *(v72 + 72);
        (*(v72 + 32))(v36 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + v43 * v38, v39, v42);
        v74(v41, v40, v42);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v29;
        v45 = sub_10001B5D0(v41);
        v47 = v29[2];
        v48 = (v46 & 1) == 0;
        v49 = __OFADD__(v47, v48);
        v50 = v47 + v48;
        if (v49)
        {
          goto LABEL_48;
        }

        v51 = v46;
        if (v29[3] >= v50)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v63 = v45;
            sub_10008C3F4();
            v45 = v63;
            v29 = v77[0];
          }
        }

        else
        {
          v52 = *(v1 + 152);
          sub_10008B6A0(v50, isUniquelyReferenced_nonNull_native);
          v29 = v77[0];
          v45 = sub_10001B5D0(v52);
          if ((v51 & 1) != (v53 & 1))
          {

            return sub_10009ED74();
          }
        }

        v54 = *(v1 + 168);
        v55 = *(v1 + 152);
        v56 = *(v1 + 136);
        v57 = *(v1 + 104);
        if (v51)
        {
          *(v29[7] + 8 * v45) = v36;

          v30 = *v67;
          (*v67)(v55, v56);
          v30(v54, v56);
          sub_10004DD8C(v57, type metadata accessor for AccessoryAndSceneEntity);
        }

        else
        {
          v29[(v45 >> 6) + 8] |= 1 << v45;
          v58 = v29[6] + v45 * v43;
          v59 = v45;
          v74(v58, v55, v56);
          *(v29[7] + 8 * v59) = v36;
          v60 = *v67;
          (*v67)(v55, v56);
          v60(v54, v56);
          sub_10004DD8C(v57, type metadata accessor for AccessoryAndSceneEntity);
          v61 = v29[2];
          v49 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v49)
          {
            goto LABEL_49;
          }

          v29[2] = v62;
        }

        ++v16;

        v27 = v66;
        if (v73 == v16)
        {
          goto LABEL_40;
        }
      }
    }

    v29 = &_swiftEmptyDictionarySingleton;
LABEL_40:
  }

  else
  {
    v29 = &_swiftEmptyDictionarySingleton;
  }

  v64 = *(v1 + 128);

  v76 = sub_10001D01C(_swiftEmptyArrayStorage);
  sub_1000160CC(v64, &qword_1000C0C78, &qword_1000A0390);

  v65 = *(v1 + 8);

  return v65(v29, v76);
}

uint64_t sub_10005029C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_100050764, 0, 0);
  }

  else
  {

    *(v4 + 208) = a1;
    v6 = swift_task_alloc();
    *(v4 + 216) = v6;
    *v6 = v5;
    v6[1] = sub_10005043C;

    return HMHome.fetchPredictions()();
  }
}

uint64_t sub_10005043C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;

  return _swift_task_switch(sub_10005053C, 0, 0);
}

uint64_t sub_10005053C()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[23];
  v5 = v0[17];
  v4 = v0[18];
  sub_100003714(&qword_1000C1D70, &unk_1000A1E00);
  v6 = (sub_100003714(&qword_1000C0EE8, &qword_10009FD10) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10009F8D0;
  v9 = v8 + v7;
  v10 = v6[14];
  v11 = [v2 uniqueIdentifier];
  sub_10009CF04();

  (*(v4 + 32))(v9, v3, v5);
  v12 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = v1;
  }

  *(v9 + v10) = v12;
  v16 = sub_10001CFF8(v8);
  swift_setDeallocating();
  sub_1000160CC(v9, &qword_1000C0EE8, &qword_10009FD10);
  swift_deallocClassInstance();

  v13 = v0[29];

  v14 = v0[1];

  return v14(v16, v13);
}

uint64_t sub_100050764()
{
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);
  v2 = sub_10009D904();
  v3 = sub_10009E824();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccessoriesAndScenesTimelineProvider.sceneAndAccessoryUUIDs(for:) WidgetDataModel.home returned 0 homes", v4, 2u);
  }

  v5 = sub_10001D01C(_swiftEmptyArrayStorage);

  v6 = *(v0 + 8);

  return v6(0, v5);
}

void sub_100050900(uint64_t a1, void *a2, uint64_t a3)
{
  v57 = a3;
  v5 = sub_10009CF14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100003714(&qword_1000C1D58, &qword_1000A1DE8);
  __chkstk_darwin(v61);
  v65 = &v47 - v9;
  v56 = a2;
  v10 = [a2 homes];
  sub_100007330(0, &qword_1000C1260, HMHome_ptr);
  v11 = sub_10009E6A4();

  v67 = _swiftEmptyArrayStorage;
  v68 = _swiftEmptyArrayStorage;
  if (a1)
  {
    v62 = v11;
    v12 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    v16 = (v13 + 63) >> 6;
    v63 = v6 + 16;
    v51 = v8;
    v52 = (v6 + 8);
    v50 = "ily:recommendationsEnabled:)";

    v17 = 0;
    v64 = 0;
    v53 = _swiftEmptyArrayStorage;
    *&v18 = 136315394;
    v49 = v18;
    v54 = xmmword_10009F8D0;
    v58 = v16;
    v59 = v6;
    v60 = a1;
    v55 = v5;
    while (v15)
    {
LABEL_13:
      v20 = __clz(__rbit64(v15)) | (v17 << 6);
      v21 = *(v6 + 16);
      v22 = v65;
      v23 = v21(v65, *(a1 + 48) + *(v6 + 72) * v20, v5);
      v24 = *(*(a1 + 56) + 8 * v20);
      *(v22 + *(v61 + 48)) = v24;
      __chkstk_darwin(v23);
      *(&v47 - 2) = v22;

      v25 = v64;
      v26 = sub_10000DAC8(sub_10005B08C, (&v47 - 4), v62);
      v64 = v25;
      if (v26)
      {
        v27 = v26;
        sub_100003714(&qword_1000C1D60, &qword_1000A1DF0);
        v28 = (sub_100003714(&qword_1000C0ED8, &qword_10009FD00) - 8);
        v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = v54;
        v31 = v30 + v29;
        v32 = v28[14];
        v33 = [v27 uniqueIdentifier];
        sub_10009CF04();

        *(v31 + v32) = v57;

        v34 = sub_10001D338(v30);
        swift_setDeallocating();
        sub_1000160CC(v31, &qword_1000C0ED8, &qword_10009FD00);
        swift_deallocClassInstance();
        v35 = v27;
        v36 = sub_10002C44C(v24, v56, v27, v34);

        if (*(v36 + 2))
        {
          sub_1000615E8(v36);
          v37 = v35;
          sub_10009E684();
          if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10009E6C4();
          }

          sub_10009E6E4();

          v53 = v67;
        }

        else
        {
        }

        v5 = v55;
      }

      else
      {
        if (qword_1000C0A90 != -1)
        {
          swift_once();
        }

        v38 = sub_10009D924();
        sub_100015B68(v38, qword_1000C8278);
        v39 = v51;
        v21(v51, v65, v5);
        v40 = sub_10009D904();
        v41 = sub_10009E824();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v66[0] = v48;
          *v42 = v49;
          *(v42 + 4) = sub_10002AD68(0xD00000000000003FLL, v50 | 0x8000000000000000, v66);
          *(v42 + 12) = 2080;
          sub_10004DA88(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v43 = sub_10009ED04();
          v45 = v44;
          (*v52)(v39, v5);
          v46 = sub_10002AD68(v43, v45, v66);

          *(v42 + 14) = v46;
          _os_log_impl(&_mh_execute_header, v40, v41, "%s Could not find home with UUID %s", v42, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*v52)(v39, v5);
        }
      }

      v16 = v58;
      v15 &= v15 - 1;
      sub_1000160CC(v65, &qword_1000C1D58, &qword_1000A1DE8);
      v6 = v59;
      a1 = v60;
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        return;
      }

      v15 = *(v12 + 8 * v19);
      ++v17;
      if (v15)
      {
        v17 = v19;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_100050FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100051020, 0, 0);
}

uint64_t sub_100051020()
{
  v12 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = sub_10003B18C(v3);
  v11 = &_swiftEmptySetSingleton;
  v6 = sub_10004D0FC(v5, &v11);
  v0[7] = v6;

  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v4;
  v7[5] = v2;
  v7[6] = v3;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = sub_100003714(&unk_1000C15B0, &unk_1000A1360);
  *v8 = v0;
  v8[1] = sub_100051180;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000052, 0x80000001000A4DA0, sub_10005B29C, v7, v9);
}

uint64_t sub_100051180()
{

  return _swift_task_switch(sub_1000512B4, 0, 0);
}

uint64_t sub_1000512CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for AccessoryAndSceneEntity(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100051390, 0, 0);
}

uint64_t sub_100051390()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = *(v0[7] + 24);
    v6 = v3 + *(type metadata accessor for WidgetTileInfo(0) + 60) + v5;
    v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v8 = *(v4 + 72);
    while (1)
    {
      v9 = v0[9];
      sub_10004DC34(v7, v9, type metadata accessor for AccessoryAndSceneEntity);
      v10 = *(v6 + 8);
      v11 = *v6;
      sub_10004DD8C(v9, type metadata accessor for AccessoryAndSceneEntity);
      if (v10 <= 1)
      {
        goto LABEL_3;
      }

      if (v10 == 2)
      {
        sub_10009E684();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10009E6C4();
        }

        sub_10009E6E4();
        goto LABEL_4;
      }

      if (v10 == 3)
      {
LABEL_3:
      }

LABEL_4:
      v7 += v8;
      if (!--v2)
      {
        v1 = v0[3];
        break;
      }
    }
  }

  v0[10] = _swiftEmptyArrayStorage;
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  v15 = swift_task_alloc();
  v0[11] = v15;
  v15[2] = v12;
  v15[3] = _swiftEmptyArrayStorage;
  v15[4] = v14;
  v15[5] = v13;
  v15[6] = v1;
  v16 = swift_task_alloc();
  v0[12] = v16;
  v17 = sub_100003714(&unk_1000C15B0, &unk_1000A1360);
  *v16 = v0;
  v16[1] = sub_1000515E8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000004DLL, 0x80000001000A4D10, sub_10005B250, v15, v17);
}

uint64_t sub_1000515E8()
{

  return _swift_task_switch(sub_10005171C, 0, 0);
}

uint64_t sub_10005171C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100051784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_10009D4F4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for WidgetTileInfo(0);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = sub_10009D584();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryAndSceneEntity(0);
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = sub_10009CF14();
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_100051A38, 0, 0);
}

uint64_t sub_100051A38()
{
  v43 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 240);
    v4 = *(v0 + 248);
    v5 = *(v0 + 232);
    v6 = *(v0 + 200);
    v7 = *(v0 + 72);
    v8 = *(*(v0 + 208) + 80);
    *(v0 + 368) = v8;
    v9 = v1 + ((v8 + 32) & ~v8);
    (*(v3 + 16))(v4, v9 + *(v6 + 20), v5);
    v10 = [v7 homes];
    sub_100007330(0, &qword_1000C1260, HMHome_ptr);
    v11 = sub_10009E6A4();

    v12 = swift_task_alloc();
    *(v12 + 16) = v4;
    v13 = sub_10000DAC8(sub_10005B490, v12, v11);
    *(v0 + 256) = v13;

    if (v13)
    {
      v14 = *(v0 + 224);
      v16 = *(v0 + 200);
      v15 = *(v0 + 208);
      v17 = *(v0 + 128);

      v18 = sub_10009D214();
      v41 = v19;
      v21 = v20;
      *(v0 + 264) = v18;
      *(v0 + 272) = v22;
      v23 = v14 + *(v16 + 24) + *(v17 + 60);
      v24 = *(v15 + 72);
      *(v0 + 280) = v24;
      v25 = _swiftEmptyArrayStorage;
      do
      {
        sub_10004DC34(v9, *(v0 + 224), type metadata accessor for AccessoryAndSceneEntity);
        v26 = *(v0 + 224);
        if (*(v23 + 8) == 3)
        {
          v27 = sub_10009E7F4();
          v29 = v28;
          sub_10004DD8C(v26, type metadata accessor for AccessoryAndSceneEntity);
          if ((v29 & 1) == 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_10006549C(0, *(v25 + 2) + 1, 1, v25);
            }

            v31 = *(v25 + 2);
            v30 = *(v25 + 3);
            if (v31 >= v30 >> 1)
            {
              v25 = sub_10006549C((v30 > 1), v31 + 1, 1, v25);
            }

            *(v25 + 2) = v31 + 1;
            *&v25[8 * v31 + 32] = v27;
          }
        }

        else
        {
          sub_10004DD8C(*(v0 + 224), type metadata accessor for AccessoryAndSceneEntity);
        }

        *(v0 + 360) = v25;
        v9 += v24;
        --v2;
      }

      while (v2);
      *(v0 + 288) = v41;
      *(v0 + 296) = v21;
      *(v0 + 304) = sub_10009D024();
      sub_10009D1E4();
      *(v0 + 312) = sub_10009D1D4();
      sub_10004DA88(&qword_1000C10D0, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
      v33 = sub_10009E714();

      return _swift_task_switch(sub_100051F68, v33, v32);
    }

    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v34 = sub_10009D924();
  sub_100015B68(v34, qword_1000C8278);
  v35 = sub_10009D904();
  v36 = sub_10009E824();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_10002AD68(0xD00000000000003DLL, 0x80000001000A4CD0, &v42);
    _os_log_impl(&_mh_execute_header, v35, v36, "%s No matching HMHome found in entities", v37, 0xCu);
    sub_100015F44(v38);
  }

  v39 = *(v0 + 8);

  return v39(_swiftEmptyArrayStorage);
}

uint64_t sub_100051F68()
{

  *(v0 + 320) = sub_10009D004();
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_10005200C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_10005200C(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_10005212C, 0, 0);
}

uint64_t sub_10005212C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[34];
  v4 = v0[32];
  v0[2] = v0[33];
  v0[3] = v2;
  v0[4] = v3;
  v0[5] = v1;
  v5 = sub_10009D764();
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_10005222C;
  v7 = v0[45];
  v8 = v0[24];

  return WidgetSnapshotModerator.fetchMatterDevices<A>(home:configuration:isMonitoring:_:)(v8, v4, v0 + 2, v5 & 1, v7, &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_10005222C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_100052B0C;
  }

  else
  {

    v2 = sub_100052384;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100052384()
{
  v74 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_10006079C(sub_10005B164, v3, v2);

  v5 = v4[2];
  v6 = _swiftEmptyArrayStorage;
  v64 = v4;
  if (v5)
  {
    v7 = *(v0 + 136);
    v8 = (*(v0 + 368) + 32) & ~*(v0 + 368);
    v73[0] = _swiftEmptyArrayStorage;
    sub_10001BBBC(0, v5, 0);
    v9 = 0;
    v6 = _swiftEmptyArrayStorage;
    v10 = v4 + v8;
    do
    {
      v11 = *(v0 + 216);
      v12 = *(v0 + 200);
      v13 = *(v0 + 168);
      sub_10004DC34(&v10[*(v0 + 280) * v9], v11, type metadata accessor for AccessoryAndSceneEntity);
      sub_10004DC34(v11 + *(v12 + 24), v13, type metadata accessor for WidgetTileInfo);
      sub_10004DD8C(v11, type metadata accessor for AccessoryAndSceneEntity);
      v73[0] = v6;
      v15 = v6[2];
      v14 = v6[3];
      if (v15 >= v14 >> 1)
      {
        sub_10001BBBC((v14 > 1), v15 + 1, 1);
        v6 = v73[0];
      }

      v16 = *(v0 + 168);
      ++v9;
      v6[2] = v15 + 1;
      sub_10004EF84(v16, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for WidgetTileInfo);
    }

    while (v5 != v9);
  }

  v17 = v6[2];
  if (v17)
  {
    v18 = *(v0 + 136);
    v19 = v6 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v20 = *(v0 + 88);
    v67 = (v20 + 56);
    v70 = *(v18 + 72);
    v71 = (v20 + 48);
    v65 = (v20 + 8);
    v66 = (v20 + 32);
    do
    {
      v72 = v17;
      v36 = *(v0 + 160);
      v37 = *(v0 + 128);
      sub_10004DC34(v19, v36, type metadata accessor for WidgetTileInfo);
      if (*(v36 + *(v37 + 60) + 8) == 3)
      {
        sub_10009E7D4();
      }

      else
      {
        (*v67)(*(v0 + 112), 1, 1, *(v0 + 80));
      }

      v38 = *(v0 + 120);
      v39 = *(v0 + 104);
      v40 = *(v0 + 80);
      sub_10005B0FC(*(v0 + 112), v38, &qword_1000C0C80, &qword_1000A1E10);
      sub_10001E0A8(v38, v39, &qword_1000C0C80, &qword_1000A1E10);
      if ((*v71)(v39, 1, v40) == 1)
      {
        sub_1000160CC(*(v0 + 120), &qword_1000C0C80, &qword_1000A1E10);
      }

      else
      {
        v41 = *(v0 + 256);
        v69 = *(v0 + 120);
        v42 = *(v0 + 96);
        v43 = *(v0 + 80);
        (*v66)(v42, *(v0 + 104), v43);
        v44 = sub_10009D4E4();
        v45 = swift_task_alloc();
        *(v45 + 16) = v41;
        *(v45 + 24) = v42;
        sub_100060C24(sub_10005B180, v45, v44);

        sub_1000160CC(v69, &qword_1000C0C80, &qword_1000A1E10);
        (*v65)(v42, v43);
      }

      if (qword_1000C0A90 != -1)
      {
        swift_once();
      }

      v46 = *(v0 + 152);
      v47 = *(v0 + 160);
      v48 = *(v0 + 144);
      v49 = sub_10009D924();
      sub_100015B68(v49, qword_1000C8278);
      sub_10004DC34(v47, v46, type metadata accessor for WidgetTileInfo);
      sub_10004DC34(v47, v48, type metadata accessor for WidgetTileInfo);

      v50 = sub_10009D904();
      v51 = sub_10009E844();

      v52 = os_log_type_enabled(v50, v51);
      v53 = *(v0 + 152);
      v54 = *(v0 + 160);
      v55 = *(v0 + 144);
      if (v52)
      {
        v21 = swift_slowAlloc();
        v73[0] = swift_slowAlloc();
        *v21 = 136315650;
        v68 = v54;
        v22 = sub_10001B128();
        v24 = v23;
        sub_10004DD8C(v53, type metadata accessor for WidgetTileInfo);
        v25 = sub_10002AD68(v22, v24, v73);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        sub_10009D204();
        v26 = sub_10009E6B4();
        v28 = v27;

        v29 = sub_10002AD68(v26, v28, v73);

        *(v21 + 14) = v29;
        *(v21 + 22) = 2080;
        v30 = sub_10008CA68();
        if (v31)
        {
          v32 = v30;
        }

        else
        {
          v32 = 7104878;
        }

        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE300000000000000;
        }

        sub_10004DD8C(v55, type metadata accessor for WidgetTileInfo);
        v34 = sub_10002AD68(v32, v33, v73);

        *(v21 + 24) = v34;
        _os_log_impl(&_mh_execute_header, v50, v51, "Created entity with widgetInfo: %s - endpoints: %s statusString: %s", v21, 0x20u);
        swift_arrayDestroy();

        v35 = v68;
      }

      else
      {

        sub_10004DD8C(v55, type metadata accessor for WidgetTileInfo);
        sub_10004DD8C(v53, type metadata accessor for WidgetTileInfo);
        v35 = v54;
      }

      sub_10004DD8C(v35, type metadata accessor for WidgetTileInfo);
      v19 += v70;
      v17 = v72 - 1;
    }

    while (v72 != 1);
  }

  v56 = *(v0 + 248);
  v57 = *(v0 + 232);
  v58 = *(v0 + 240);
  v60 = *(v0 + 184);
  v59 = *(v0 + 192);
  v61 = *(v0 + 176);

  (*(v60 + 8))(v59, v61);
  (*(v58 + 8))(v56, v57);

  v62 = *(v0 + 8);

  return v62(v64);
}

uint64_t sub_100052B0C()
{
  v13 = v0;

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);
  swift_errorRetain();
  v2 = sub_10009D904();
  v3 = sub_10009E824();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[32];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_10002AD68(0xD00000000000003DLL, 0x80000001000A4CD0, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Error subscribing to Matter monitor: %@", v6, 0x16u);
    sub_1000160CC(v7, &qword_1000C0E28, &qword_1000A1DC0);

    sub_100015F44(v8);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_100052DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v6 = type metadata accessor for AccessoryAndSceneEntity(0);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_100052F28, 0, 0);
}

uint64_t sub_100052F28()
{
  v75 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);

  v2 = sub_10009D904();
  v3 = sub_10009E844();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10002AD68(0xD000000000000041, 0x80000001000A4C80, &v71);
    *(v5 + 12) = 2080;
    v6 = *(v4 + 16);
    if (v6)
    {
      v62 = v3;
      v63 = v5;
      v65 = v2;
      v7 = v0[16];
      v68 = v0[15];
      v8 = v0[6];
      v72 = _swiftEmptyArrayStorage;
      sub_10001BC44(0, v6, 0);
      v9 = v72;
      v10 = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v11 = *(v7 + 72);
      do
      {
        v12 = v0[23];
        sub_10004DC34(v10, v12, type metadata accessor for AccessoryAndSceneEntity);
        sub_10009CF14();
        sub_10004DA88(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v73 = sub_10009ED04();
        v74 = v13;
        v77._countAndFlagsBits = 58;
        v77._object = 0xE100000000000000;
        sub_10009E634(v77);
        v14 = v12 + *(v68 + 24);
        v78 = *(v14 + *(type metadata accessor for WidgetTileInfo(0) + 24));
        sub_10009E634(v78);
        v15 = v73;
        v16 = v74;
        sub_10004DD8C(v12, type metadata accessor for AccessoryAndSceneEntity);
        v72 = v9;
        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          sub_10001BC44((v17 > 1), v18 + 1, 1);
          v9 = v72;
        }

        v9[2] = v18 + 1;
        v19 = &v9[2 * v18];
        v19[4] = v15;
        v19[5] = v16;
        v10 += v11;
        --v6;
      }

      while (v6);
      v5 = v63;
      v2 = v65;
      v3 = v62;
    }

    v20 = sub_10009E6B4();
    v22 = v21;

    v23 = sub_10002AD68(v20, v22, &v71);

    *(v5 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Monitoring characteristics for entities: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v24 = v0[6];
  v25 = *(v24 + 16);
  v0[24] = v25;
  if (v25)
  {
    v27 = v0[15];
    v26 = v0[16];
    v28 = *(v26 + 72);
    v66 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = v24 + v66;
    v30 = _swiftEmptyArrayStorage;
    v31 = v25;
    v69 = v27;
    do
    {
      v32 = v0[22];
      sub_10004DC34(v29, v32, type metadata accessor for AccessoryAndSceneEntity);
      v33 = v32 + *(v27 + 24);
      v34 = type metadata accessor for WidgetTileInfo(0);
      v35 = v0[22];
      if (*(v33 + *(v34 + 60) + 8) == 2)
      {
        sub_10004EF84(v35, v0[21], type metadata accessor for AccessoryAndSceneEntity);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10001BC84(0, v30[2] + 1, 1);
          v30 = v73;
        }

        v38 = v30[2];
        v37 = v30[3];
        if (v38 >= v37 >> 1)
        {
          sub_10001BC84((v37 > 1), v38 + 1, 1);
          v30 = v73;
        }

        v39 = v0[21];
        v30[2] = v38 + 1;
        sub_10004EF84(v39, v30 + v66 + v38 * v28, type metadata accessor for AccessoryAndSceneEntity);
        v27 = v69;
      }

      else
      {
        sub_10004DD8C(v35, type metadata accessor for AccessoryAndSceneEntity);
      }

      v29 += v28;
      --v31;
    }

    while (v31);
    v40 = v0[16];
    v70 = v0[15];
    v41 = *(v40 + 72);
    v64 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = v0[6] + v64;
    v43 = _swiftEmptyArrayStorage;
    v67 = v41;
    while (1)
    {
      v44 = v0[20];
      sub_10004DC34(v42, v44, type metadata accessor for AccessoryAndSceneEntity);
      v45 = *(v44 + *(v70 + 24) + *(v34 + 60) + 8);
      if (v45 > 2)
      {
        if (v45 == 3)
        {
          v46 = v34;
          sub_10009E7D4();
          goto LABEL_30;
        }
      }

      else if (v45 >= 2)
      {
        goto LABEL_22;
      }

      v46 = v34;
      v47 = v0[13];
      v48 = sub_10009D4F4();
      (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
LABEL_30:
      v49 = v0[14];
      sub_10005B0FC(v0[13], v49, &qword_1000C0C80, &qword_1000A1E10);
      v50 = sub_10009D4F4();
      v51 = (*(*(v50 - 8) + 48))(v49, 1, v50);
      sub_1000160CC(v49, &qword_1000C0C80, &qword_1000A1E10);
      v41 = v67;
      v34 = v46;
      if (v51 == 1)
      {
        sub_10004EF84(v0[20], v0[19], type metadata accessor for AccessoryAndSceneEntity);
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v43;
        if ((v52 & 1) == 0)
        {
          sub_10001BC84(0, v43[2] + 1, 1);
          v43 = v73;
        }

        v54 = v43[2];
        v53 = v43[3];
        if (v54 >= v53 >> 1)
        {
          sub_10001BC84((v53 > 1), v54 + 1, 1);
          v43 = v73;
        }

        v55 = v0[19];
        v43[2] = v54 + 1;
        sub_10004EF84(v55, v43 + v64 + v54 * v67, type metadata accessor for AccessoryAndSceneEntity);
        goto LABEL_23;
      }

LABEL_22:
      sub_10004DD8C(v0[20], type metadata accessor for AccessoryAndSceneEntity);
LABEL_23:
      v42 += v41;
      if (!--v25)
      {
        goto LABEL_37;
      }
    }
  }

  v30 = _swiftEmptyArrayStorage;
  v43 = _swiftEmptyArrayStorage;
LABEL_37:
  v0[25] = v30;
  v0[26] = v43;
  v56 = sub_10003196C(v0[7], v0[8], v0[9]);
  v58 = v57;
  v0[27] = v57;
  v59 = swift_task_alloc();
  v0[28] = v59;
  *v59 = v0;
  v59[1] = sub_1000536B8;
  v60 = v0[10];

  return sub_100050FFC(v43, v56, v58, v60);
}

uint64_t sub_1000536B8(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return _swift_task_switch(sub_1000537F0, 0, 0);
}

uint64_t sub_1000537F0()
{
  v1 = sub_10003196C(v0[7], v0[8], v0[9]);
  v3 = v2;
  v0[29] = v2;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_1000538C0;
  v5 = v0[25];
  v6 = v0[10];

  return sub_1000512CC(v5, v1, v3, v6);
}

uint64_t sub_1000538C0(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;

  return _swift_task_switch(sub_1000539F8, 0, 0);
}

uint64_t sub_1000539F8()
{
  if (v0[24])
  {
    v1 = 0;
    v3 = v0[15];
    v2 = v0[16];
    v4 = *(v2 + 72);
    v29 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v5 = v0[6] + v29;
    v30 = v3;
    do
    {
      v6 = v0[18];
      sub_10004DC34(v5, v6, type metadata accessor for AccessoryAndSceneEntity);
      v7 = v6 + *(v3 + 24);
      v8 = type metadata accessor for WidgetTileInfo(0);
      v9 = v0[11];
      if (*(v7 + *(v8 + 60) + 8) == 3)
      {
        sub_10009E7D4();
      }

      else
      {
        v10 = sub_10009D4F4();
        (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
      }

      v11 = v0[12];
      sub_10005B0FC(v0[11], v11, &qword_1000C0C80, &qword_1000A1E10);
      v12 = sub_10009D4F4();
      v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
      sub_1000160CC(v11, &qword_1000C0C80, &qword_1000A1E10);
      v14 = v0[18];
      if (v13 == 1)
      {
        sub_10004DD8C(v14, type metadata accessor for AccessoryAndSceneEntity);
      }

      else
      {
        sub_10004EF84(v14, v0[17], type metadata accessor for AccessoryAndSceneEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001BC84(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v16 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v16 >= v15 >> 1)
        {
          sub_10001BC84((v15 > 1), v16 + 1, 1);
        }

        v17 = v0[17];
        _swiftEmptyArrayStorage[2] = v16 + 1;
        sub_10004EF84(v17, _swiftEmptyArrayStorage + v29 + v16 * v4, type metadata accessor for AccessoryAndSceneEntity);
        v3 = v30;
      }

      ++v1;
      v5 += v4;
    }

    while (v1 != v0[24]);
  }

  v18 = v0[5];
  v19 = v0[3];
  v20 = v0[8];
  v21 = v0[9];
  v22 = v0[7];
  v0[31] = _swiftEmptyArrayStorage;
  v0[32] = v18;
  v0[33] = v19;
  v23 = sub_10003196C(v22, v20, v21);
  v25 = v24;
  v0[34] = v24;
  v26 = swift_task_alloc();
  v0[35] = v26;
  *v26 = v0;
  v26[1] = sub_100053D28;
  v27 = v0[10];

  return sub_100051784(_swiftEmptyArrayStorage, v23, v25, v27);
}

uint64_t sub_100053D28(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_100053E64, 0, 0);
}

uint64_t sub_100053E64()
{
  v1 = v0[36];
  v4 = v0[33];
  sub_1000615E8(v0[32]);
  sub_1000615E8(v1);

  v2 = v0[1];

  return v2(v4);
}

uint64_t sub_100053F80(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v52) = a3;
  v53 = a1;
  v3 = type metadata accessor for AccessoryAndSceneEntity(0);
  v51 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v54 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10009CF14();
  v55 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10009E3D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v8 + 104);
  v11(v10, enum case for WidgetFamily.systemSmall(_:), v7);
  sub_10004DA88(&qword_1000C16C0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10009E654();
  sub_10009E654();
  v12 = *(v8 + 8);
  v12(v10, v7);
  if (v57 == v56)
  {
    v13 = v53;
    if (v52)
    {
      v14 = 4;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v11(v10, enum case for WidgetFamily.systemMedium(_:), v7);
  sub_10009E654();
  sub_10009E654();
  v12(v10, v7);
  if (v57 != v56)
  {
    v13 = v53;
    goto LABEL_11;
  }

  v13 = v53;
  if ((v52 & 1) == 0)
  {
LABEL_11:

    goto LABEL_20;
  }

  v14 = 8;
LABEL_7:
  v15 = sub_10003D24C(v14, v13);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if ((v20 & 1) == 0)
  {

LABEL_9:
    sub_10004A70C(v15, v17, v19, v21);
    v23 = v22;
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  sub_10009ED54();
  swift_unknownObjectRetain_n();

  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = _swiftEmptyArrayStorage;
  }

  v25 = v24[2];

  if (__OFSUB__(v21 >> 1, v19))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v25 != (v21 >> 1) - v19)
  {
LABEL_32:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v23)
  {
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

LABEL_19:
  v57 = v23;

  sub_10004A8AC(&v57);

  v13 = v57;
LABEL_20:
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v26 = sub_10009D924();
  sub_100015B68(v26, qword_1000C8278);

  v27 = sub_10009D904();
  v28 = sub_10009E844();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v57 = v52;
    *v29 = 136315394;
    *(v29 + 4) = sub_10002AD68(0xD00000000000003CLL, 0x80000001000A4BE0, &v57);
    *(v29 + 12) = 2080;
    v30 = *(v13 + 16);
    if (v30)
    {
      v47 = v28;
      v48 = v29;
      v49 = v27;
      v56 = _swiftEmptyArrayStorage;
      sub_10001BC00(0, v30, 0);
      v31 = v56;
      v32 = v50;
      v33 = *(v51 + 80);
      v53 = v13;
      v34 = v13 + ((v33 + 32) & ~v33);
      v35 = *(v51 + 72);
      v36 = (v55 + 16);
      do
      {
        v37 = v54;
        sub_10004DC34(v34, v54, type metadata accessor for AccessoryAndSceneEntity);
        (*v36)(v32, v37, v5);
        sub_10004DD8C(v37, type metadata accessor for AccessoryAndSceneEntity);
        v56 = v31;
        v38 = v5;
        v40 = v31[2];
        v39 = v31[3];
        if (v40 >= v39 >> 1)
        {
          sub_10001BC00((v39 > 1), v40 + 1, 1);
          v31 = v56;
        }

        v31[2] = v40 + 1;
        (*(v55 + 32))(v31 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v40, v32, v38);
        v34 += v35;
        --v30;
        v5 = v38;
      }

      while (v30);
      v13 = v53;
      v29 = v48;
      v27 = v49;
      LOBYTE(v28) = v47;
    }

    v41 = sub_10009E6B4();
    v43 = v42;

    v44 = sub_10002AD68(v41, v43, &v57);

    *(v29 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s Sorted entities to %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  return v13;
}

uint64_t sub_100054658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  v4[15] = swift_task_alloc();
  sub_100003714(&qword_1000C1228, &unk_1000A0880);
  v4[16] = swift_task_alloc();
  v5 = sub_10009E3D4();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = sub_10009CF14();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for AccessoryAndSceneEntity(0);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100054880, 0, 0);
}

uint64_t sub_100054880()
{
  v1 = *(v0 + 104);
  *(v0 + 248) = type metadata accessor for HomeWidget();
  v5 = *(v0 + 88);
  *(v0 + 256) = static HomeWidget.shared.getter();
  *(v0 + 16) = v5;
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  v3 = sub_10005B038();
  *(v0 + 272) = v3;
  *v2 = v0;
  v2[1] = sub_10005496C;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)(v0 + 16, &type metadata for RecommendedItemIntent, v3);
}

uint64_t sub_10005496C(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_100054A8C, 0, 0);
}

uint64_t sub_100054A8C(uint64_t a1)
{
  v65 = v1;
  v2 = *(v1 + 280);
  if (!v2)
  {
    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v16 = sub_10009D924();
    sub_100015B68(v16, qword_1000C8278);
    v17 = sub_10009D904();
    v18 = sub_10009E824();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v64[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, v64);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s unable to get shared HMHomeManager instance", v19, 0xCu);
      sub_100015F44(v20);
    }

    v21 = *(v1 + 8);

    return v21(_swiftEmptyArrayStorage);
  }

  sub_10009C954();
  v3 = *(v1 + 80);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = *(v1 + 208);
      v6 = *(v1 + 168);
      v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v62 = *(v5 + 72);
      v8 = _swiftEmptyArrayStorage;
      do
      {
        v9 = *(v1 + 240);
        v10 = *(v1 + 192);
        v11 = *(v1 + 160);
        sub_10004DC34(v7, v9, type metadata accessor for AccessoryAndSceneEntity);
        (*(v6 + 16))(v10, v9, v11);
        sub_10004DD8C(v9, type metadata accessor for AccessoryAndSceneEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100064F74(0, v8[2] + 1, 1, v8);
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          v8 = sub_100064F74((v12 > 1), v13 + 1, 1, v8);
        }

        v14 = *(v1 + 192);
        v15 = *(v1 + 160);
        v8[2] = v13 + 1;
        (*(v6 + 32))(v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v14, v15);
        v7 += v62;
        --v4;
      }

      while (v4);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 288) = v8;
  sub_10009E424();
  v23 = [v2 homes];
  *(v1 + 296) = sub_100007330(0, &qword_1000C1260, HMHome_ptr);
  v24 = sub_10009E6A4();

  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_23;
    }

LABEL_46:

    if (qword_1000C0A90 != -1)
    {
      swift_once();
    }

    v48 = sub_10009D924();
    sub_100015B68(v48, qword_1000C8278);
    v49 = v2;
    v50 = sub_10009D904();
    v51 = sub_10009E824();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v1 + 280);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64[0] = v55;
      *v53 = 136315394;
      *(v53 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, v64);
      *(v53 + 12) = 2112;
      *(v53 + 14) = v49;
      *v54 = v52;
      v56 = v49;
      _os_log_impl(&_mh_execute_header, v50, v51, "%s (%@) does not have any homes", v53, 0x16u);
      sub_1000160CC(v54, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v55);
    }

    v57 = swift_task_alloc();
    *(v1 + 560) = v57;
    *v57 = v1;
    v57[1] = sub_10005956C;
    v58 = *(v1 + 96);
    v59 = *(v1 + 104);
    v60 = *(v1 + 88);

    return sub_100052DBC(_swiftEmptyArrayStorage, v60, v58, v59, v49);
  }

LABEL_45:
  v25 = sub_10009EBA4();
  if (!v25)
  {
    goto LABEL_46;
  }

LABEL_23:
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v26 = sub_10009D924();
  *(v1 + 304) = sub_100015B68(v26, qword_1000C8278);

  v27 = sub_10009D904();
  v28 = sub_10009E844();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v1 + 128);
    v30 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v30 = 136315394;
    *(v30 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, v64);
    *(v30 + 12) = 2080;
    sub_10009C954();
    v31 = type metadata accessor for HomeEntity(0);
    if ((*(*(v31 - 8) + 48))(v29, 1, v31))
    {
      sub_1000160CC(*(v1 + 128), &qword_1000C1228, &unk_1000A0880);
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v34 = *(v1 + 184);
      v35 = *(v1 + 168);
      v61 = *(v1 + 160);
      v36 = *(v1 + 128);
      (*(v35 + 16))(v34, v36);
      sub_1000160CC(v36, &qword_1000C1228, &unk_1000A0880);
      v32 = sub_10009CEE4();
      v33 = v37;
      (*(v35 + 8))(v34, v61);
    }

    *(v1 + 64) = v32;
    *(v1 + 72) = v33;
    sub_100003714(&qword_1000C0DF0, &qword_1000A1DE0);
    v38 = sub_10009E5F4();
    v40 = sub_10002AD68(v38, v39, v64);

    *(v30 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s widget configuration has home %s", v30, 0x16u);
    swift_arrayDestroy();
  }

  v41 = 0;
  v2 = 0;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v42 = sub_10009EAE4();
    }

    else
    {
      if (v41 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v42 = *(v24 + 8 * v41 + 32);
    }

    v43 = v42;
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v64[0] = v42;
    if (sub_10004F244(v64))
    {
      break;
    }

    ++v41;
    if (v44 == v25)
    {

      v43 = 0;
      goto LABEL_40;
    }
  }

LABEL_40:
  *(v1 + 312) = v43;
  v45 = *(v1 + 104);
  v63 = *(v1 + 88);
  *(v1 + 320) = static HomeWidget.shared.getter();
  *(v1 + 40) = v63;
  *(v1 + 56) = v45;
  v46 = swift_task_alloc();
  *(v1 + 328) = v46;
  *v46 = v1;
  v46[1] = sub_10005546C;
  v47 = *(v1 + 272);

  return HomeWidget.recommendedHome<A>(configuration:)(v1 + 40, &type metadata for RecommendedItemIntent, v47);
}

uint64_t sub_10005546C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100055900;
  }

  else
  {

    *(v4 + 336) = a1;
    v5 = sub_1000555AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000555AC()
{
  v28 = v0;
  v1 = v0[39];
  v2 = v0[42];
  if (v1)
  {
    v3 = v0[39];
LABEL_5:
    v0[44] = v2;
    v0[45] = v3;
    v0[43] = v1;
    v4 = v1;
    v5 = swift_task_alloc();
    v0[46] = v5;
    *v5 = v0;
    v5[1] = sub_100055C38;
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[11];

    return sub_10004F7A4(v8, v6, v7);
  }

  if (v2)
  {
    v3 = v2;
    v1 = 0;
    goto LABEL_5;
  }

  v10 = v0[35];

  v11 = v10;
  v12 = sub_10009D904();
  v13 = sub_10009E824();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[35];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v27);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v14;
    *v16 = v14;
    *(v15 + 22) = 2080;
    v17 = [v14 homes];
    sub_10009E6A4();

    v18 = sub_10009E6B4();
    v20 = v19;

    v21 = sub_10002AD68(v18, v20, &v27);

    *(v15 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s (%@) does not have either a specified home or current among (%s", v15, 0x20u);
    sub_1000160CC(v16, &qword_1000C0E28, &qword_1000A1DC0);

    swift_arrayDestroy();
  }

  v22 = v0[35];
  v23 = swift_task_alloc();
  v0[68] = v23;
  *v23 = v0;
  v23[1] = sub_1000591F8;
  v24 = v0[12];
  v25 = v0[13];
  v26 = v0[11];

  return sub_100052DBC(_swiftEmptyArrayStorage, v26, v24, v25, v22);
}

uint64_t sub_100055900()
{
  v26 = v0;
  v1 = v0[39];
  if (v1)
  {
    v0[44] = 0;
    v0[45] = v1;
    v0[43] = v1;
    v2 = v1;
    v3 = swift_task_alloc();
    v0[46] = v3;
    *v3 = v0;
    v3[1] = sub_100055C38;
    v4 = v0[12];
    v5 = v0[13];
    v6 = v0[11];

    return sub_10004F7A4(v6, v4, v5);
  }

  else
  {
    v8 = v0[35];

    v9 = v8;
    v10 = sub_10009D904();
    v11 = sub_10009E824();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[35];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v13 = 136315650;
      *(v13 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v25);
      *(v13 + 12) = 2112;
      *(v13 + 14) = v12;
      *v14 = v12;
      *(v13 + 22) = 2080;
      v15 = [v12 homes];
      sub_10009E6A4();

      v16 = sub_10009E6B4();
      v18 = v17;

      v19 = sub_10002AD68(v16, v18, &v25);

      *(v13 + 24) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s (%@) does not have either a specified home or current among (%s", v13, 0x20u);
      sub_1000160CC(v14, &qword_1000C0E28, &qword_1000A1DC0);

      swift_arrayDestroy();
    }

    v20 = v0[35];
    v21 = swift_task_alloc();
    v0[68] = v21;
    *v21 = v0;
    v21[1] = sub_1000591F8;
    v22 = v0[12];
    v23 = v0[13];
    v24 = v0[11];

    return sub_100052DBC(_swiftEmptyArrayStorage, v24, v22, v23, v20);
  }
}

uint64_t sub_100055C38(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = a2;

  return _swift_task_switch(sub_100055D38, 0, 0);
}

uint64_t sub_100055D38()
{
  v112 = v0;
  v1 = v0;
  sub_100050900(v0[47], v0[35], v0[48]);
  v3 = v2;
  v5 = v4;

  v109 = *(v3 + 16);
  v110 = v3;
  if (!v109)
  {
    v6 = v1[45];

    sub_100003714(&qword_1000C0E20, &unk_1000A0940);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10009FA10;
    *(v5 + 32) = v6;
    v7 = v6;
  }

  if (v5 >> 62)
  {
LABEL_37:
    v8 = sub_10009EBA4();
    if (v8)
    {
LABEL_5:
      v9 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = sub_10009EAE4();
        }

        else
        {
          if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v10 = *(v5 + 8 * v9 + 32);
        }

        v11 = v10;
        v1[49] = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if ([v10 hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion])
        {
          break;
        }

        v13 = v1;
        v14.super.isa = [v11 currentUser];
        isa = v14.super.isa;
        v16 = sub_10009E8A4(v14);

        if (v16)
        {

          v31 = v11;
          v32 = sub_10009D904();
          v33 = sub_10009E824();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            *v34 = 136315650;
            *(v34 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v111);
            *(v34 + 12) = 2112;
            *(v34 + 14) = v31;
            *v35 = v31;
            *(v34 + 22) = 2080;
            v36 = [v31 currentUser];
            v37 = [v36 hf_prettyDescription];

            v38 = sub_10009E5C4();
            v40 = v39;

            v41 = sub_10002AD68(v38, v40, &v111);

            *(v34 + 24) = v41;
            _os_log_impl(&_mh_execute_header, v32, v33, "%s Current time is outside of the allowed time frame to access home %@. currentUser = %s", v34, 0x20u);
            sub_1000160CC(v35, &qword_1000C0E28, &qword_1000A1DC0);

            swift_arrayDestroy();
          }

          v28 = v13[35];
          v42 = swift_task_alloc();
          v13[52] = v42;
          *v42 = v13;
          v42[1] = sub_100057224;
          v43 = v13[12];
          v44 = v13[13];
          v45 = v13[11];
          goto LABEL_51;
        }

        v1 = v13;
        if ([v11 hf_isCurrentRestrictedGuestAwayFromHome])
        {

          v46 = v11;
          v47 = sub_10009D904();
          v48 = sub_10009E824();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            *v49 = 136315906;
            *(v49 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v111);
            *(v49 + 12) = 2112;
            *(v49 + 14) = v46;
            *v50 = v46;
            *(v49 + 22) = 2080;
            v51 = v46;
            v52 = [v51 currentUser];
            v53 = [v52 hf_prettyDescription];

            v54 = sub_10009E5C4();
            v56 = v55;

            v57 = sub_10002AD68(v54, v56, &v111);
            v1 = v13;

            *(v49 + 24) = v57;
            *(v49 + 32) = 2080;
            [v51 homeLocationStatus];
            v58 = HMStringFromHomeLocation();
            v59 = sub_10009E5C4();
            v61 = v60;

            v62 = sub_10002AD68(v59, v61, &v111);

            *(v49 + 34) = v62;
            _os_log_impl(&_mh_execute_header, v47, v48, "%s Displaying No Access because current user is an RG and away from home %@. currentUser = %s. device location status %s", v49, 0x2Au);
            sub_1000160CC(v50, &qword_1000C0E28, &qword_1000A1DC0);

            swift_arrayDestroy();
          }

          v28 = v1[35];
          v29 = swift_task_alloc();
          v1[54] = v29;
          *v29 = v1;
          v30 = sub_1000575E4;
          goto LABEL_50;
        }

        if (([v11 hf_hasEnabledResident] & 1) == 0)
        {
          sub_100007330(0, &qword_1000C1D48, NSUserDefaults_ptr);
          if ((sub_10009E854() & 1) == 0)
          {

            v63 = v11;
            v64 = sub_10009D904();
            v65 = sub_10009E824();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              *v66 = 136315650;
              *(v66 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v111);
              *(v66 + 12) = 2112;
              *(v66 + 14) = v63;
              *v67 = v63;
              *(v66 + 22) = 2080;
              v68 = [v63 residentDevices];
              sub_100007330(0, &qword_1000C1D50, HMResidentDevice_ptr);
              sub_10009E6A4();

              v69 = sub_10009E6B4();
              v71 = v70;

              v72 = sub_10002AD68(v69, v71, &v111);

              *(v66 + 24) = v72;
              _os_log_impl(&_mh_execute_header, v64, v65, "%s No enabled resident in %@: %s", v66, 0x20u);
              sub_1000160CC(v67, &qword_1000C0E28, &qword_1000A1DC0);

              swift_arrayDestroy();
            }

            v28 = v13[35];
            v29 = swift_task_alloc();
            v13[56] = v29;
            *v29 = v13;
            v30 = sub_1000579A4;
            goto LABEL_50;
          }
        }

        if (([v13[35] hf_canAccessHomeRemotely:{v11, v109}] & 1) == 0)
        {
          sub_100007330(0, &qword_1000C1D48, NSUserDefaults_ptr);
          if ((sub_10009E854() & 1) == 0)
          {

            v73 = v11;
            v74 = sub_10009D904();
            v75 = sub_10009E824();

            if (os_log_type_enabled(v74, v75))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v111 = v79;
              *v77 = 136315394;
              *(v77 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v111);
              *(v77 + 12) = 2112;
              *(v77 + 14) = v73;
              *v78 = v73;
              v80 = v73;
              _os_log_impl(&_mh_execute_header, v74, v75, "%s No remote access to (%@)", v77, 0x16u);
              sub_1000160CC(v78, &qword_1000C0E28, &qword_1000A1DC0);

              sub_100015F44(v79);
            }

            v28 = v13[35];
            v29 = swift_task_alloc();
            v13[58] = v29;
            *v29 = v13;
            v30 = sub_100057D64;
            goto LABEL_50;
          }
        }

        ++v9;
        if (v12 == v8)
        {
          goto LABEL_38;
        }
      }

      v17 = v11;
      v18 = sub_10009D904();
      v19 = sub_10009E824();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v20 = 136315650;
        *(v20 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v111);
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        *v21 = v17;
        *(v20 + 22) = 2080;
        v22 = [v17 currentUser];
        v23 = [v22 hf_prettyDescription];

        v24 = sub_10009E5C4();
        v26 = v25;

        v27 = sub_10002AD68(v24, v26, &v111);

        *(v20 + 24) = v27;
        _os_log_impl(&_mh_execute_header, v18, v19, "%s Upgrade to HH2 is required for %@. currentUser = %s", v20, 0x20u);
        sub_1000160CC(v21, &qword_1000C0E28, &qword_1000A1DC0);

        swift_arrayDestroy();
      }

      v28 = v1[35];
      v29 = swift_task_alloc();
      v1[50] = v29;
      *v29 = v1;
      v30 = sub_100056E64;
      goto LABEL_50;
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }
  }

LABEL_38:

  if (v109)
  {
LABEL_39:
    v81 = v1[35];
    v82 = v1[19];
    sub_10009C954();
    v83 = sub_100053F80(v110, v82, *(v1 + 576));
    v1[64] = v83;

    v84 = swift_task_alloc();
    v1[65] = v84;
    *v84 = v1;
    v84[1] = sub_100058884;
    v43 = v1[12];
    v44 = v1[13];
    v45 = v1[11];
    v85 = v83;
    v86 = v81;
    goto LABEL_52;
  }

  v87 = [v1[45] accessories];
  sub_100007330(0, &qword_1000C0BF0, HMAccessory_ptr);
  v88 = sub_10009E6A4();

  if (v88 >> 62)
  {
    v89 = sub_10009EBA4();
  }

  else
  {
    v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v1[45];
  if (v89)
  {
    if (sub_10000DE40(v1[45]))
    {
      goto LABEL_39;
    }

    v91 = v1[45];

    v92 = v91;
    v93 = sub_10009D904();
    v94 = sub_10009E824();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = v1[45];
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v111 = v98;
      *v96 = 136315394;
      *(v96 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v111);
      *(v96 + 12) = 2112;
      *(v96 + 14) = v95;
      *v97 = v95;
      v99 = v95;
      _os_log_impl(&_mh_execute_header, v93, v94, "%s No supported accessories in %@", v96, 0x16u);
      sub_1000160CC(v97, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v98);
    }

    v28 = v1[35];
    v29 = swift_task_alloc();
    v1[62] = v29;
    *v29 = v1;
    v30 = sub_1000584D4;
  }

  else
  {

    v100 = v90;
    v101 = sub_10009D904();
    v102 = sub_10009E824();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = v1[45];
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v111 = v106;
      *v104 = 136315394;
      *(v104 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v111);
      *(v104 + 12) = 2112;
      *(v104 + 14) = v103;
      *v105 = v103;
      v107 = v103;
      _os_log_impl(&_mh_execute_header, v101, v102, "%s No accessories in (%@)", v104, 0x16u);
      sub_1000160CC(v105, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v106);
    }

    v28 = v1[35];
    v29 = swift_task_alloc();
    v1[60] = v29;
    *v29 = v1;
    v30 = sub_100058124;
  }

LABEL_50:
  v29[1] = v30;
  v43 = v1[12];
  v44 = v1[13];
  v45 = v1[11];
LABEL_51:
  v85 = _swiftEmptyArrayStorage;
  v86 = v28;
LABEL_52:

  return sub_100052DBC(v85, v45, v43, v44, v86);
}

uint64_t sub_100056E64(uint64_t a1)
{
  *(*v2 + 408) = v1;

  if (v1)
  {
    v3 = sub_1000570E8;
  }

  else
  {

    v3 = sub_100056F84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100056F84()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 9;
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);

  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);

  (*(v6 + 8))(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000570E8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);

  (*(v5 + 8))(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100057224(uint64_t a1)
{
  *(*v2 + 424) = v1;

  if (v1)
  {
    v3 = sub_1000574A8;
  }

  else
  {

    v3 = sub_100057344;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100057344()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 7;
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);

  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);

  (*(v6 + 8))(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000574A8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);

  (*(v5 + 8))(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000575E4(uint64_t a1)
{
  *(*v2 + 440) = v1;

  if (v1)
  {
    v3 = sub_100057868;
  }

  else
  {

    v3 = sub_100057704;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100057704()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 8;
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);

  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);

  (*(v6 + 8))(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100057868()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);

  (*(v5 + 8))(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000579A4(uint64_t a1)
{
  *(*v2 + 456) = v1;

  if (v1)
  {
    v3 = sub_100057C28;
  }

  else
  {

    v3 = sub_100057AC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100057AC4()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 3;
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);

  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);

  (*(v6 + 8))(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100057C28()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);

  (*(v5 + 8))(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100057D64(uint64_t a1)
{
  *(*v2 + 472) = v1;

  if (v1)
  {
    v3 = sub_100057FE8;
  }

  else
  {

    v3 = sub_100057E84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100057E84()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 4;
  swift_willThrow();
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 280);

  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);

  (*(v6 + 8))(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100057FE8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);

  (*(v5 + 8))(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100058124(uint64_t a1)
{
  *(*v2 + 488) = v1;

  if (v1)
  {
    v3 = sub_1000583A0;
  }

  else
  {

    v3 = sub_100058244;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100058244()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 5;
  swift_willThrow();
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);

  (*(v5 + 8))(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000583A0()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 280);

  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);

  (*(v4 + 8))(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000584D4(uint64_t a1)
{
  *(*v2 + 504) = v1;

  if (v1)
  {
    v3 = sub_100058750;
  }

  else
  {

    v3 = sub_1000585F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000585F4()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 6;
  swift_willThrow();
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 280);

  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);

  (*(v5 + 8))(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100058750()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 280);

  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);

  (*(v4 + 8))(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100058884(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {

    v4 = sub_1000590C8;
  }

  else
  {
    v4 = sub_1000589D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000589D4(uint64_t a1)
{
  v72 = v1;
  sub_10009C954();
  v2 = *(v1 + 288);
  if (*(v1 + 577))
  {
    v3 = *(v1 + 528);
    goto LABEL_23;
  }

  if (!v2)
  {
    goto LABEL_22;
  }

  v65 = *(v2 + 16);
  if (!v65)
  {

LABEL_22:
    v3 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

  v4 = 0;
  v5 = *(v1 + 208);
  v6 = *(v1 + 168);
  v7 = *(v6 + 16);
  v6 += 16;
  buf = v7;
  v58 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v57 = *(v6 + 56);
  v63 = *(v1 + 528);
  v56 = (v6 - 8);
  v3 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v3;
    (buf)(*(v1 + 176), v58 + v4 * v57, *(v1 + 160));
    v9 = *(v63 + 16);
    if (v9)
    {
      v10 = *(v1 + 528) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v11 = *(v5 + 72);
      while (1)
      {
        sub_10004DC34(v10, *(v1 + 224), type metadata accessor for AccessoryAndSceneEntity);
        v12 = sub_10009CEF4();
        v13 = *(v1 + 224);
        if (v12)
        {
          break;
        }

        sub_10004DD8C(v13, type metadata accessor for AccessoryAndSceneEntity);
        v10 += v11;
        if (!--v9)
        {
          goto LABEL_12;
        }
      }

      sub_10004EF84(v13, *(v1 + 120), type metadata accessor for AccessoryAndSceneEntity);
      v14 = 0;
    }

    else
    {
LABEL_12:
      v14 = 1;
    }

    v15 = *(v1 + 200);
    v16 = *(v1 + 176);
    v17 = *(v1 + 160);
    v18 = *(v1 + 120);
    (*(v5 + 56))(v18, v14, 1, v15);
    (*v56)(v16, v17);
    if ((*(v5 + 48))(v18, 1, v15) == 1)
    {
      sub_1000160CC(*(v1 + 120), &qword_1000C1258, &unk_1000A08D0);
      v3 = v8;
    }

    else
    {
      sub_10004EF84(*(v1 + 120), *(v1 + 232), type metadata accessor for AccessoryAndSceneEntity);
      v3 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100064F9C(0, v8[2] + 1, 1, v8);
      }

      v20 = v3[2];
      v19 = v3[3];
      if (v20 >= v19 >> 1)
      {
        v3 = sub_100064F9C((v19 > 1), v20 + 1, 1, v3);
      }

      v21 = *(v1 + 232);
      v3[2] = v20 + 1;
      sub_10004EF84(v21, v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, type metadata accessor for AccessoryAndSceneEntity);
    }

    ++v4;
  }

  while (v4 != v65);

LABEL_23:

  v22 = sub_10009D904();
  v23 = sub_10009E844();

  v64 = v3;
  if (os_log_type_enabled(v22, v23))
  {
    v59 = v23;
    log = v22;
    v24 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_10002AD68(0xD00000000000002CLL, 0x80000001000A4BB0, &v68);
    bufa = v24;
    *(v24 + 12) = 2080;
    v25 = v3[2];
    if (v25)
    {
      v26 = *(v1 + 208);
      v66 = *(v1 + 200);
      v69 = _swiftEmptyArrayStorage;
      sub_10001BC44(0, v25, 0);
      v27 = v69;
      v28 = v3 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v29 = *(v26 + 72);
      do
      {
        v30 = *(v1 + 216);
        sub_10004DC34(v28, v30, type metadata accessor for AccessoryAndSceneEntity);
        sub_10004DA88(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v70 = sub_10009ED04();
        v71 = v31;
        v74._countAndFlagsBits = 58;
        v74._object = 0xE100000000000000;
        sub_10009E634(v74);
        v32 = v30 + *(v66 + 24);
        v75 = *(v32 + *(type metadata accessor for WidgetTileInfo(0) + 24));
        sub_10009E634(v75);
        v33 = v70;
        v34 = v71;
        sub_10004DD8C(v30, type metadata accessor for AccessoryAndSceneEntity);
        v69 = v27;
        v36 = v27[2];
        v35 = v27[3];
        if (v36 >= v35 >> 1)
        {
          sub_10001BC44((v35 > 1), v36 + 1, 1);
          v27 = v69;
        }

        v27[2] = v36 + 1;
        v37 = &v27[2 * v36];
        v37[4] = v33;
        v37[5] = v34;
        v28 += v29;
        --v25;
      }

      while (v25);
    }

    v45 = *(v1 + 352);
    v44 = *(v1 + 360);
    v46 = *(v1 + 344);
    v47 = *(v1 + 280);
    v48 = *(v1 + 144);
    v67 = *(v1 + 152);
    v49 = *(v1 + 136);
    v50 = sub_10009E6B4();
    v52 = v51;

    v53 = sub_10002AD68(v50, v52, &v68);

    *(bufa + 14) = v53;
    _os_log_impl(&_mh_execute_header, log, v59, "%s Finalized entities: %s", bufa, 0x16u);
    swift_arrayDestroy();

    (*(v48 + 8))(v67, v49);
  }

  else
  {
    v39 = *(v1 + 352);
    v38 = *(v1 + 360);
    v40 = *(v1 + 280);
    v42 = *(v1 + 144);
    v41 = *(v1 + 152);
    v43 = *(v1 + 136);

    (*(v42 + 8))(v41, v43);
  }

  v54 = *(v1 + 8);

  return v54(v64);
}

uint64_t sub_1000590C8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v3 = *(v0 + 280);

  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);

  (*(v4 + 8))(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000591F8(uint64_t a1)
{
  *(*v2 + 552) = v1;

  if (v1)
  {
    v3 = sub_100059458;
  }

  else
  {

    v3 = sub_100059318;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100059318()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 2;
  swift_willThrow();
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);

  (*(v2 + 8))(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100059458()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v1 + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005956C(uint64_t a1)
{
  *(*v2 + 568) = v1;

  if (v1)
  {
    v3 = sub_1000597CC;
  }

  else
  {

    v3 = sub_10005968C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005968C()
{
  sub_10005AFE4();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);

  (*(v2 + 8))(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000597CC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);

  (*(v1 + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1000598E8()
{
  result = qword_1000C1A40;
  if (!qword_1000C1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1A40);
  }

  return result;
}

uint64_t sub_10005993C()
{
  sub_10004D760(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1000599B8()
{
  result = qword_1000C1A88;
  if (!qword_1000C1A88)
  {
    sub_10000375C(&qword_1000C1A78, &qword_1000A1AF8);
    sub_10001CDC8(&qword_1000C1A90, &qword_1000C1A98, &qword_1000A1B00, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1A88);
  }

  return result;
}

uint64_t sub_100059A70()
{
  sub_10004D760(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100059AD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100059B50()
{
  v1 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10009E3D4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_10004D760(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100059C84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for WidgetViewsForMediumSystemFamily(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100048500(a1, v6, a2);
}

unint64_t sub_100059D0C()
{
  result = qword_1000C1B30;
  if (!qword_1000C1B30)
  {
    sub_10000375C(&qword_1000C1B28, &qword_1000A1B80);
    sub_10001CDC8(&qword_1000C1B38, &qword_1000C1B40, &qword_1000A1B88, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1B30);
  }

  return result;
}

uint64_t sub_100059DC4()
{
  v1 = type metadata accessor for WidgetViewsForMediumSystemFamily(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100003714(&qword_1000C15F8, &qword_1000A2510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10009E3D4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_10004D760(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100059F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for WidgetViewsForMediumSystemFamily(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000489B0(a1, a2, v3 + v8, v9, a3);
}

uint64_t sub_100059FEC(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100003714(&qword_1000C19A0, &qword_1000A1A10);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_10005A054()
{

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_10005A098()
{
  result = qword_1000C1B88;
  if (!qword_1000C1B88)
  {
    sub_10000375C(&qword_1000C1B80, &qword_1000A1BF8);
    type metadata accessor for HomeInteractiveWidgetsEntryView(255);
    sub_10000375C(&qword_1000C1B90, &qword_1000A1C00);
    sub_10004DA88(&qword_1000C1B98, type metadata accessor for HomeInteractiveWidgetsEntryView, &unk_1000A1434);
    sub_10005A1A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1B88);
  }

  return result;
}

unint64_t sub_10005A1A8()
{
  result = qword_1000C1BA0;
  if (!qword_1000C1BA0)
  {
    sub_10000375C(&qword_1000C1B90, &qword_1000A1C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1BA0);
  }

  return result;
}

unint64_t sub_10005A224()
{
  result = qword_1000C1BA8;
  if (!qword_1000C1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1BA8);
  }

  return result;
}

uint64_t sub_10005A298(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005A2D0(void *a1@<X8>)
{
  sub_10009DC04();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_10005A31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009CEC4();
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

    return (v10 + 1);
  }
}

uint64_t sub_10005A3EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009CEC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005A4A4(uint64_t a1)
{
  result = sub_10009CEC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10005A580()
{
  result = qword_1000C1C70;
  if (!qword_1000C1C70)
  {
    sub_10000375C(&qword_1000C1998, &qword_1000A1A08);
    sub_10005A638();
    sub_10001CDC8(&qword_1000C1CB0, &qword_1000C1CB8, &qword_1000A1CB0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1C70);
  }

  return result;
}

unint64_t sub_10005A638()
{
  result = qword_1000C1C78;
  if (!qword_1000C1C78)
  {
    sub_10000375C(&qword_1000C1958, &qword_1000A19B8);
    sub_10005A6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1C78);
  }

  return result;
}

unint64_t sub_10005A6C4()
{
  result = qword_1000C1C80;
  if (!qword_1000C1C80)
  {
    sub_10000375C(&qword_1000C1990, &qword_1000A1A00);
    sub_10005A750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1C80);
  }

  return result;
}

unint64_t sub_10005A750()
{
  result = qword_1000C1C88;
  if (!qword_1000C1C88)
  {
    sub_10000375C(&qword_1000C1988, &qword_1000A19F8);
    sub_10001CDC8(&qword_1000C1C90, &qword_1000C1C98, &qword_1000A1CA0, &protocol conformance descriptor for HStack<A>);
    sub_10001CDC8(&qword_1000C1CA0, &qword_1000C1CA8, &qword_1000A1CA8, &protocol conformance descriptor for _EnvironmentBackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1C88);
  }

  return result;
}

unint64_t sub_10005A838()
{
  result = qword_1000C1CC0;
  if (!qword_1000C1CC0)
  {
    sub_10000375C(&qword_1000C1AB0, &qword_1000A1B18);
    sub_10005A91C(&qword_1000C1CC8, &qword_1000C1A58, &qword_1000A1AB8, sub_10005A9A0);
    sub_10001CDC8(&qword_1000C1CB0, &qword_1000C1CB8, &qword_1000A1CB0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1CC0);
  }

  return result;
}

uint64_t sub_10005A91C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005A9A0()
{
  result = qword_1000C1CD0;
  if (!qword_1000C1CD0)
  {
    sub_10000375C(&qword_1000C1AA8, &qword_1000A1B10);
    sub_10005AA58();
    sub_10001CDC8(&qword_1000C1CA0, &qword_1000C1CA8, &qword_1000A1CA8, &protocol conformance descriptor for _EnvironmentBackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1CD0);
  }

  return result;
}

unint64_t sub_10005AA58()
{
  result = qword_1000C1CD8;
  if (!qword_1000C1CD8)
  {
    sub_10000375C(&qword_1000C1AA0, &qword_1000A1B08);
    sub_10001CDC8(&qword_1000C1CE0, &qword_1000C1CE8, &qword_1000A1CB8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1CD8);
  }

  return result;
}

unint64_t sub_10005AB14()
{
  result = qword_1000C1CF0;
  if (!qword_1000C1CF0)
  {
    sub_10000375C(&qword_1000C1B58, &qword_1000A1BA0);
    sub_10005A91C(&qword_1000C1CF8, &qword_1000C1B18, &qword_1000A1B70, sub_10005ABF8);
    sub_10001CDC8(&qword_1000C1CB0, &qword_1000C1CB8, &qword_1000A1CB0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1CF0);
  }

  return result;
}

unint64_t sub_10005ABF8()
{
  result = qword_1000C1D00;
  if (!qword_1000C1D00)
  {
    sub_10000375C(&qword_1000C1B50, &qword_1000A1B98);
    sub_10005ACB0();
    sub_10001CDC8(&qword_1000C1CA0, &qword_1000C1CA8, &qword_1000A1CA8, &protocol conformance descriptor for _EnvironmentBackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1D00);
  }

  return result;
}

unint64_t sub_10005ACB0()
{
  result = qword_1000C1D08;
  if (!qword_1000C1D08)
  {
    sub_10000375C(&qword_1000C1B48, &qword_1000A1B90);
    sub_10001CDC8(&qword_1000C1D10, &qword_1000C1D18, &qword_1000A1CC0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1D08);
  }

  return result;
}

uint64_t sub_10005AD68()
{
  sub_10000375C(&qword_1000C0B28, &qword_1000A1BF0);
  sub_10000375C(&qword_1000C0AE8, "\\x");
  sub_10000375C(&qword_1000C0AF0, &unk_1000A1BE0);
  sub_10000375C(&qword_1000C0AF8, &qword_10009F928);
  sub_10000375C(&qword_1000C0B00, &unk_1000A1BD0);
  sub_10000375C(&qword_1000C0B08, &qword_10009F930);
  sub_10000375C(&qword_1000C0B10, &unk_1000A1BC0);
  sub_10001CDC8(&qword_1000C0B18, &qword_1000C0B10, &unk_1000A1BC0, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
  sub_1000037A4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10005AFE4()
{
  result = qword_1000C1D38;
  if (!qword_1000C1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1D38);
  }

  return result;
}

unint64_t sub_10005B038()
{
  result = qword_1000C1D40;
  if (!qword_1000C1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1D40);
  }

  return result;
}

uint64_t sub_10005B0FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003714(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10005B180(unsigned __int16 *a1)
{
  v2 = *(v1 + 16);
  sub_10009D4D4();
  return sub_10009D1F4();
}

uint64_t sub_10005B1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005B2CC()
{
  v1 = sub_100003714(&qword_1000C1D78, &qword_1000A1E38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005B39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100003714(&qword_1000C1D78, &qword_1000A1E38) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t sub_10005B4C0()
{
  v0 = sub_10009D924();
  sub_10001F4BC(v0, qword_1000C8278);
  sub_100015B68(v0, qword_1000C8278);
  return sub_10009D914();
}

uint64_t sub_10005B548()
{
  v0 = sub_10009D924();
  sub_10001F4BC(v0, qword_1000C8290);
  sub_100015B68(v0, qword_1000C8290);
  return sub_10009D914();
}

uint64_t sub_10005B5D0()
{
  v0 = sub_10009D924();
  sub_10001F4BC(v0, qword_1000C82A8);
  sub_100015B68(v0, qword_1000C82A8);
  return sub_10009D914();
}

uint64_t sub_10005B654@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005BE7C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 8);
    v14 = *(v9 + 16);
    v12 = *(v9 + 32);
    v13 = *(v9 + 40);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v14;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
  }

  return result;
}

Class sub_10005B720(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10005C458();
    v4.super.isa = sub_10009E4B4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_10005B7AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (1)
    {
      v9 = v8;
      if (!v6)
      {
        break;
      }

LABEL_10:
      if (*(a2 + 16))
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v8 << 10) | (16 * v10)));
        v13 = *v11;
        v12 = v11[1];

        sub_10001B558(v13, v12);
        LOBYTE(v13) = v14;

        if (v13)
        {
          continue;
        }
      }

      return;
    }

    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v8 >= v7)
      {

        return;
      }

      v6 = *(a1 + 64 + 8 * v8);
      ++v9;
      if (v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10005B8F4()
{
  v1 = *v0;
  v2 = 0x7361487865646E69;
  v3 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v3 = 0x7470697263736564;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_10005B9A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10005FE04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005B9E4(uint64_t a1)
{
  v2 = sub_10005FDB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005BA20(uint64_t a1)
{
  v2 = sub_10005FDB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005BA5C(void *a1)
{
  v3 = v1;
  v5 = sub_100003714(&qword_1000C1E50, &qword_1000A1F70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100024330(a1, a1[3]);
  sub_10005FDB0();
  sub_10009EE24();
  v14 = 0;
  sub_10009ECE4();
  if (!v2)
  {
    v13 = 1;
    sub_10009ECB4();
    v12 = 2;
    sub_10009ECC4();
    v11 = *(v3 + 24);
    v10[15] = 3;
    sub_100003714(&qword_1000C1E18, "ƃ");
    sub_10006027C(&qword_1000C1E60, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    sub_10009ECD4();
    v10[14] = 4;
    sub_10009ECA4();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_10005BCBC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10005FFCC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_10005BD18()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_10005BD48(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_10001B558(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_10005BE90()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10009E5B4();
  v2 = [v0 dataForKey:v1];

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_10009CE74();
  v5 = v4;

  sub_10009CC84();
  swift_allocObject();
  sub_10009CC74();
  sub_100003714(&qword_1000C1E28, &qword_1000A1EA8);
  sub_10005FC40(&qword_1000C1E40, sub_10005FCB8, &protocol conformance descriptor for <A> [A]);
  sub_10009CC64();

  sub_100033B34(v3, v5);
  return v7;
}

void sub_10005C010(uint64_t a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  sub_10009CCB4();
  swift_allocObject();
  sub_10009CCA4();
  sub_100003714(&qword_1000C1E28, &qword_1000A1EA8);
  sub_10005FC40(&qword_1000C1E30, sub_10005FB98, &protocol conformance descriptor for <A> [A]);
  v2 = sub_10009CC94();
  v4 = v3;

  v7[0] = v2;
  v7[1] = v4;
  v5 = sub_10009ED24();
  sub_10005FBEC(v7);
  v6 = sub_10009E5B4();
  [v1 setObject:v5 forKey:v6];

  swift_unknownObjectRelease();
}

void sub_10005C194(uint64_t a1)
{
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v2 = sub_10009D924();
  sub_100015B68(v2, qword_1000C8278);

  v3 = sub_10009D904();
  v4 = sub_10009E844();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v5 = 136315650;
    *(v5 + 4) = sub_10002AD68(0xD000000000000011, 0x80000001000A4F70, v15);
    *(v5 + 12) = 2080;
    v6 = sub_10008A88C(*(a1 + 16));
    v8 = sub_10002AD68(v6, v7, v15);

    *(v5 + 14) = v8;
    *(v5 + 22) = 2080;
    sub_10008A954();
    sub_10005C458();
    v9 = sub_10009E4D4();
    v11 = v10;

    v12 = sub_10002AD68(v9, v11, v15);

    *(v5 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Sending analytics event for [%s]: %s", v5, 0x20u);
    swift_arrayDestroy();
  }

  sub_10008A88C(*(a1 + 16));
  v13 = sub_10009E5B4();

  v15[4] = sub_10005C43C;
  v15[5] = a1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10005B720;
  v15[3] = &unk_1000BBCC0;
  v14 = _Block_copy(v15);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_10005C440(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10005C458()
{
  result = qword_1000C0B60;
  if (!qword_1000C0B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C0B60);
  }

  return result;
}

void sub_10005C4A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v325 = a4;
  v334 = a3;
  v6 = sub_10009E3D4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v311 = &v290 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v313 = &v290 - v11;
  v12 = __chkstk_darwin(v10);
  v312 = &v290 - v13;
  v14 = __chkstk_darwin(v12);
  v310 = &v290 - v15;
  v16 = __chkstk_darwin(v14);
  v316 = &v290 - v17;
  v18 = __chkstk_darwin(v16);
  v314 = &v290 - v19;
  v20 = __chkstk_darwin(v18);
  v315 = &v290 - v21;
  v22 = __chkstk_darwin(v20);
  v322 = &v290 - v23;
  __chkstk_darwin(v22);
  v320 = &v290 - v24;
  *&v336 = type metadata accessor for AccessoryAndSceneEntity(0);
  v332 = *(v336 - 8);
  v25 = __chkstk_darwin(v336);
  v27 = &v290 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  j = &v290 - v28;
  if (qword_1000C0A90 != -1)
  {
LABEL_281:
    swift_once();
  }

  v30 = sub_10009D924();
  v327 = sub_100015B68(v30, qword_1000C8278);
  v31 = sub_10009D904();
  v32 = sub_10009E844();
  v33 = os_log_type_enabled(v31, v32);
  v323 = v7;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v341 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_10002AD68(0xD000000000000030, 0x80000001000A4F90, &v341);
    _os_log_impl(&_mh_execute_header, v31, v32, "%s Loading Timeline for interactive widget...", v34, 0xCu);
    sub_100015F44(v35);
  }

  v341 = a1;
  v342 = a2;
  v343 = v334;
  sub_1000309FC();
  v36 = sub_10009C854();
  if (!v36)
  {
    v136 = sub_10009D904();
    v137 = sub_10009E824();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v341 = v139;
      *v138 = 136315138;
      *(v138 + 4) = sub_10002AD68(0xD000000000000030, 0x80000001000A4F90, &v341);
      _os_log_impl(&_mh_execute_header, v136, v137, "%s Failed to convert RecommendedItemIntent to INIntent", v138, 0xCu);
      sub_100015F44(v139);
    }

    return;
  }

  v37 = v36;
  v326 = a1;
  v38 = [v36 _indexingHash];
  v39 = v37;
  v40 = sub_10009D904();
  v41 = sub_10009E844();

  v42 = os_log_type_enabled(v40, v41);
  v324 = v6;
  v318 = v39;
  v321 = v38;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v39;
    v46 = swift_slowAlloc();
    v341 = v46;
    *v43 = 136315650;
    *(v43 + 4) = sub_10002AD68(0xD000000000000030, 0x80000001000A4F90, &v341);
    *(v43 + 12) = 2112;
    *(v43 + 14) = v45;
    *v44 = v37;
    *(v43 + 22) = 2048;
    *(v43 + 24) = v38;
    v47 = v45;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s App intent: %@ with indexingHash:%lld", v43, 0x20u);
    sub_1000160CC(v44, &qword_1000C0E28, &qword_1000A1DC0);

    sub_100015F44(v46);
  }

  v48 = sub_10001D23C(_swiftEmptyArrayStorage);
  v49 = v334;
  sub_10009C954();
  v50 = v341;
  if (!v341)
  {
    goto LABEL_76;
  }

  v331 = *(v341 + 16);
  if (!v331)
  {
    goto LABEL_75;
  }

  v51 = 0;
  v328 = (*(v332 + 80) + 32) & ~*(v332 + 80);
  v330 = v341 + v328;
  v329 = v341;
  do
  {
    if (v51 >= *(v50 + 16))
    {
      __break(1u);
LABEL_278:
      v300 = v321;
      v306 = v27;
      goto LABEL_279;
    }

    v52 = *(v332 + 72);
    sub_10005FA2C(v330 + v52 * v51, j);
    sub_10009C954();
    if (!v341)
    {
      goto LABEL_61;
    }

    v333 = v48;
    v335 = v341;
    v53 = *(v341 + 16);
    if (!v53)
    {
LABEL_60:

      v48 = v333;
      v50 = v329;
LABEL_61:
      v97 = sub_10009CEE4();
      v99 = sub_10001B558(v97, v98);
      v49 = v100;

      if (v49)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v341 = v48;
        if (!isUniquelyReferenced_nonNull_native)
        {
          v49 = &v341;
          sub_10008C674();
          v48 = v341;
        }

        sub_10004C60C(v99, v48);
      }

      sub_10005FA90(j);
      goto LABEL_66;
    }

    v54 = 0;
    v55 = v335 + v328;
    while (1)
    {
      sub_10005FA2C(v55, v27);
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_15;
      }

      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_15;
      }

      v56 = *(v336 + 24);
      v57 = &v27[v56];
      v58 = j + v56;
      if ((sub_10009CEF4() & 1) == 0)
      {
        goto LABEL_15;
      }

      v59 = type metadata accessor for WidgetTileInfo(0);
      v60 = v59[6];
      v61 = *&v57[v60];
      v62 = *&v57[v60 + 8];
      v63 = (v58 + v60);
      v64 = v61 == *v63 && v62 == v63[1];
      if (!v64 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_15;
      }

      v65 = v59[7];
      v66 = &v57[v65];
      v67 = *&v57[v65 + 8];
      v68 = (v58 + v65);
      v69 = v68[1];
      if (v67)
      {
        if (!v69)
        {
          goto LABEL_15;
        }

        v70 = *v66 == *v68 && v67 == v69;
        if (!v70 && (sub_10009ED34() & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (v69)
      {
        goto LABEL_15;
      }

      v71 = v59[8];
      v72 = *&v57[v71];
      v73 = *&v57[v71 + 8];
      v74 = (v58 + v71);
      v75 = v72 == *v74 && v73 == v74[1];
      if (!v75 && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_15;
      }

      v76 = v59[9];
      v77 = *&v57[v76];
      v78 = *&v57[v76 + 8];
      v79 = (v58 + v76);
      if ((v77 != *v79 || v78 != v79[1]) && (sub_10009ED34() & 1) == 0)
      {
        goto LABEL_15;
      }

      if ((sub_10009E134() & 1) == 0 || v57[v59[13]] != *(v58 + v59[13]))
      {
        goto LABEL_15;
      }

      v80 = v59[15];
      v81 = v57[v80 + 8];
      v82 = (v58 + v80);
      v83 = *v82;
      v84 = *(v82 + 8);
      if (v81 <= 1)
      {
        if (v81)
        {
          if (v84 != 1)
          {
            goto LABEL_15;
          }
        }

        else if (v84)
        {
          goto LABEL_15;
        }

        goto LABEL_55;
      }

      if (v81 != 2)
      {
        break;
      }

      if (v84 != 2)
      {
        goto LABEL_15;
      }

LABEL_55:
      sub_10005C458();
      if (sub_10009E8E4())
      {
        goto LABEL_56;
      }

LABEL_15:
      sub_10005FA90(v27);
      ++v54;
      v55 += v52;
      if (v53 == v54)
      {
        goto LABEL_60;
      }
    }

    if (v81 == 3)
    {
      if (v84 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_55;
    }

    if (v84 != 4 || v83)
    {
      goto LABEL_15;
    }

LABEL_56:
    sub_10005FA90(v27);

    v85 = sub_10009CEE4();
    v87 = v86;
    v49 = v333;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v341 = v49;
    v89 = sub_10001B558(v85, v87);
    v91 = *(v49 + 16);
    v92 = (v90 & 1) == 0;
    v93 = __OFADD__(v91, v92);
    v94 = v91 + v92;
    if (v93)
    {
      goto LABEL_289;
    }

    v95 = v90;
    if (*(v49 + 24) < v94)
    {
      sub_10008BA4C(v94, v88);
      v49 = v341;
      v89 = sub_10001B558(v85, v87);
      if ((v95 & 1) != (v96 & 1))
      {
LABEL_292:
        sub_10009ED74();
        __break(1u);
        return;
      }

LABEL_69:
      if (v95)
      {
        goto LABEL_70;
      }

LABEL_72:
      v48 = v341;
      *(v341 + 8 * (v89 >> 6) + 64) |= 1 << v89;
      v103 = (v48[6] + 16 * v89);
      *v103 = v85;
      v103[1] = v87;
      *(v48[7] + 8 * v89) = v54;
      sub_10005FA90(j);
      v104 = v48[2];
      v93 = __OFADD__(v104, 1);
      v105 = v104 + 1;
      if (!v93)
      {
        v48[2] = v105;
        goto LABEL_74;
      }

LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

    if (v88)
    {
      goto LABEL_69;
    }

    v49 = &v341;
    v102 = v89;
    sub_10008C674();
    v89 = v102;
    if ((v95 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_70:
    v49 = v89;

    v48 = v341;
    *(*(v341 + 56) + 8 * v49) = v54;
    sub_10005FA90(j);
LABEL_74:
    v50 = v329;
LABEL_66:
    ++v51;
  }

  while (v51 != v331);
LABEL_75:

LABEL_76:
  v328 = v48;
  i = 0xD000000000000012;
  v317 = objc_opt_self();
  v107 = [v317 standardUserDefaults];
  v108 = sub_10005BE90();

  v340 = v108;
  v109 = sub_10009D904();
  v110 = sub_10009E844();
  v111 = os_log_type_enabled(v109, v110);
  a1 = v321;
  v27 = v48;
  if (v111)
  {
    v112 = swift_slowAlloc();
    v341 = swift_slowAlloc();
    *v112 = 136315394;
    *(v112 + 4) = sub_10002AD68(0xD000000000000030, 0x80000001000A4F90, &v341);
    *(v112 + 12) = 2080;

    v113 = sub_10009E6B4();
    v115 = v114;

    v116 = sub_10002AD68(v113, v115, &v341);
    v48 = v27;

    *(v112 + 14) = v116;
    _os_log_impl(&_mh_execute_header, v109, v110, "%s (Before) Cached widget metrics infos: %s", v112, 0x16u);
    swift_arrayDestroy();
  }

  v117 = v108 + 2;
  v118 = v108[2];
  v333 = v108;
  if (!v118)
  {
    *&v336 = [v317 standardUserDefaults];
    sub_100003714(&qword_1000C1E20, "ȃ");
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_10009F8D0;
    sub_10009C954();
    v141 = v341;
    v142 = v320;
    sub_10009E424();
    v143 = sub_10009E3C4();
    v335 = *(v323 + 8);
    (v335)(v142, v324);
    v341 = 0;
    v342 = 0xE000000000000000;
    v144 = v328;

    sub_10009EAC4(90);
    v348._countAndFlagsBits = 0x7361487865646E69;
    v348._object = 0xEA00000000003A68;
    sub_10009E634(v348);
    v339 = a1;
    v349._countAndFlagsBits = sub_10009ED04();
    sub_10009E634(v349);

    v350._countAndFlagsBits = 0xD00000000000001ALL;
    v350._object = 0x80000001000A4FD0;
    sub_10009E634(v350);
    if (v141)
    {
      v145._countAndFlagsBits = 1702195828;
    }

    else
    {
      v145._countAndFlagsBits = 0x65736C6166;
    }

    if (v141)
    {
      v146 = 0xE400000000000000;
    }

    else
    {
      v146 = 0xE500000000000000;
    }

    v145._object = v146;
    sub_10009E634(v145);

    v351._object = 0x80000001000A4FF0;
    v351._countAndFlagsBits = 0xD000000000000012;
    sub_10009E634(v351);
    v339 = v143;
    v352._countAndFlagsBits = sub_10009ED04();
    sub_10009E634(v352);

    v353._countAndFlagsBits = 0xD00000000000001CLL;
    v353._object = 0x80000001000A5010;
    sub_10009E634(v353);
    v354._countAndFlagsBits = sub_10009E4D4();
    sub_10009E634(v354);

    v147 = v341;
    v148 = v342;
    *(v140 + 32) = a1;
    *(v140 + 40) = v141;
    *(v140 + 48) = v143;
    *(v140 + 56) = v144;
    *(v140 + 64) = v147;
    *(v140 + 72) = v148;
    sub_10005C010(v140);

    v149 = v322;
    sub_10009E424();
    v150 = sub_10009E3C4();
    (v335)(v149, v324);
    LOBYTE(v339) = 0;
    type metadata accessor for WidgetAnalyticsEvent();
    v151 = swift_allocObject();
    *(v151 + 16) = 0;
    *(v151 + 24) = 2;
    *(v151 + 32) = 0;
    *(v151 + 40) = 0;
    *(v151 + 48) = 33686018;
    *(v151 + 56) = v150;
    *(v151 + 64) = 0;
    sub_10005FAEC(0, 0, 1);
    sub_10005C194(v151);

    goto LABEL_272;
  }

  v49 = (v108 + 4);
  v119 = -1;
  v120 = v108 + 2;
  v319 = v108 + 2;
  v320 = (v108 + 4);
  while (v118 != ++v119)
  {
    v121 = v120 + 6;
    v122 = v120[2];
    v120 += 6;
    if (v122 == a1)
    {
      v335 = *(v121 - 24);
      v124 = *(v121 - 2);
      v123 = *(v121 - 1);
      v125 = v121[1];
      v332 = *v121;

      *&v336 = v125;

      v126 = v322;
      sub_10009E424();
      v127 = sub_10009E3C4();
      v128 = *(v323 + 8);
      v129 = v324;
      v128(v126, v324);
      v334 = v124;
      if (v124 == v127)
      {

        v130 = 0;
        v131 = 0;
        v110 = 0;
        v132 = 0;
        v331 = 0;
        v133 = 0;
        v134 = v317;
        v135 = &NSObject__properties;
        goto LABEL_271;
      }

      v333 = v123;
      sub_10009E424();
      v219 = sub_10009E3C4();
      v128(v126, v129);
      LOBYTE(v346) = 0;
      type metadata accessor for WidgetAnalyticsEvent();
      v220 = swift_allocObject();
      *(v220 + 16) = 3;
      *(v220 + 24) = 2;
      *(v220 + 32) = 0;
      *(v220 + 40) = 0;
      *(v220 + 48) = 33686018;
      *(v220 + 56) = v219;
      *(v220 + 64) = 0;
      sub_10005FAEC(0, 0, 1);
      sub_10005C194(v220);

      sub_10009C954();
      v221 = v341;
      v222 = v315;
      sub_10009E424();
      v223 = sub_10009E3C4();
      v128(v222, v129);
      v341 = 0;
      v342 = 0xE000000000000000;
      i = v328;

      sub_10009EAC4(90);
      v369._countAndFlagsBits = 0x7361487865646E69;
      v369._object = 0xEA00000000003A68;
      sub_10009E634(v369);
      v339 = a1;
      v370._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v370);

      v371._countAndFlagsBits = 0xD00000000000001ALL;
      v371._object = 0x80000001000A4FD0;
      sub_10009E634(v371);
      if (v221)
      {
        v224._countAndFlagsBits = 1702195828;
      }

      else
      {
        v224._countAndFlagsBits = 0x65736C6166;
      }

      if (v221)
      {
        v225 = 0xE400000000000000;
      }

      else
      {
        v225 = 0xE500000000000000;
      }

      v224._object = v225;
      sub_10009E634(v224);

      v372._object = 0x80000001000A4FF0;
      v372._countAndFlagsBits = 0xD000000000000012;
      sub_10009E634(v372);
      v315 = v223;
      v339 = v223;
      v373._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v373);
      LOBYTE(v118) = v221;

      v374._countAndFlagsBits = 0xD00000000000001CLL;
      v374._object = 0x80000001000A5010;
      sub_10009E634(v374);
      v375._countAndFlagsBits = sub_10009E4D4();
      sub_10009E634(v375);
      v226 = v319;

      v323 = 0;
      v330 = 0;
      v110 = 0;
      v309 = 0;
      v331 = 0;
      v308 = 0;
      v27 = v342;
      v307 = v341;
      v227 = a1;
      v49 = v320;
      v228 = v336;
      v229 = *v226;
      if (!*v226)
      {
LABEL_266:
        sub_10005FB00(v227, v335, v334, v333, v332, v228);
        swift_beginAccess();
        v155 = v340;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_267;
        }

        goto LABEL_284;
      }

LABEL_261:
      v274 = 0;
      while (1)
      {
        v275 = *v49;
        v49 += 48;
        if (v275 == v227)
        {
          break;
        }

        if (v229 == ++v274)
        {
          goto LABEL_266;
        }
      }

      v276 = v110;
      v277 = v118;
      v118 = v227;
      swift_beginAccess();
      sub_10005B654(v274, &v341);
      v347 = v344;
      v346 = v345;
      swift_endAccess();
      sub_1000160CC(&v347, &qword_1000C1E18, "ƃ");
      sub_10005FB44(&v346);
      v227 = v118;
      LOBYTE(v118) = v277;
      v110 = v276;
      goto LABEL_266;
    }
  }

  v305 = (v323 + 8);
  v301 = "uration(for:in:)";
  v302 = " useHomeKitRecommendation:";
  v303 = " systemFamilySize:";

  v152 = 0;
  v299 = 0;
  v298 = 0;
  v306 = 0;
  v304 = 0;
  v297 = 0;
  v300 = 0;
  v290 = 0;
  v307 = 0;
  v328 = 0;
  v315 = 0;
  v291 = 0;
  v292 = 0;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = v48 + 8;
  v336 = xmmword_1000A1E60;
LABEL_95:
  v308 = v153;
  v296 = v154;
  v309 = v155;
  v295 = v156;
  v294 = v157;
  v293 = v158;
  a1 = v326;
LABEL_97:
  if (v152 >= *v117)
  {
LABEL_283:
    __break(1u);
LABEL_284:
    v155 = sub_1000655A0(0, *(v155 + 2) + 1, 1, v155);
LABEL_267:
    v279 = *(v155 + 2);
    v278 = *(v155 + 3);
    if (v279 >= v278 >> 1)
    {
      v155 = sub_1000655A0((v278 > 1), v279 + 1, 1, v155);
    }

    *(v155 + 2) = v279 + 1;
    v280 = &v155[48 * v279];
    *(v280 + 4) = a1;
    v280[40] = v118 & 1;
    *(v280 + 6) = v315;
    *(v280 + 7) = i;
    *(v280 + 8) = v307;
    *(v280 + 9) = v27;
    v340 = v155;
    swift_endAccess();
    v134 = v317;
    v135 = &NSObject__properties;
    v130 = v323;
    v131 = v330;
    v133 = v308;
    goto LABEL_270;
  }

  v160 = v49 + 48 * v152;
  v323 = *v160;
  v330 = *(v160 + 8);
  v155 = *(v160 + 24);
  v329 = *(v160 + 16);
  v161 = *(v160 + 40);
  v331 = *(v160 + 32);
  swift_bridgeObjectRetain_n();

  sub_10005B7AC(v155, v27);
  v163 = v162;

  v335 = v161;
  if (v163)
  {

    sub_10005FB00(v293, v294, v295, v309, v296, v308);
    sub_10005FB00(v292, v291, v315, v328, v307, v290);

    if ((sub_10005BD48(v155, v27) & 1) == 0)
    {
      type metadata accessor for WidgetAnalyticsEvent();
      v246 = swift_allocObject();
      *(v246 + 16) = 4;
      *(v246 + 32) = 0;
      *(v246 + 40) = 0;
      *(v246 + 24) = 2;
      *(v246 + 48) = v336;
      *(v246 + 64) = 1;
      sub_10005FAEC(0, 0, 1);
      sub_10005C194(v246);
    }

    sub_10009C954();

    v247 = v330 ^ v341;
    a1 = v321;
    if ((v330 ^ v341))
    {
      sub_10009C954();
      v248 = v341;
      LOBYTE(v341) = 1;
      if (v248)
      {
        v249 = 16908802;
      }

      else
      {
        v249 = 131586;
      }

      type metadata accessor for WidgetAnalyticsEvent();
      v250 = swift_allocObject();
      *(v250 + 16) = 2;
      *(v250 + 24) = 2;
      *(v250 + 32) = 0;
      *(v250 + 40) = 0;
      *(v250 + 48) = v249;
      *(v250 + 56) = 0;
      *(v250 + 64) = 1;
      sub_10005FAEC(0, 0, 1);
      sub_10005C194(v250);
    }

    sub_10009C954();
    v118 = v341;
    v251 = v314;
    sub_10009E424();
    v315 = sub_10009E3C4();
    (*v305)(v251, v324);
    if (v247)
    {
      v252 = sub_10001D23C(_swiftEmptyArrayStorage);
    }

    else
    {

      v252 = v27;
    }

    v341 = 0;
    v342 = 0xE000000000000000;
    sub_10009EAC4(90);
    v383._countAndFlagsBits = 0x7361487865646E69;
    v383._object = 0xEA00000000003A68;
    sub_10009E634(v383);
    v339 = a1;
    v384._countAndFlagsBits = sub_10009ED04();
    sub_10009E634(v384);

    v385._countAndFlagsBits = 0xD00000000000001ALL;
    v385._object = (v301 | 0x8000000000000000);
    sub_10009E634(v385);
    if (v118)
    {
      v253._countAndFlagsBits = 1702195828;
    }

    else
    {
      v253._countAndFlagsBits = 0x65736C6166;
    }

    if (v118)
    {
      v254 = 0xE400000000000000;
    }

    else
    {
      v254 = 0xE500000000000000;
    }

    v253._object = v254;
    sub_10009E634(v253);

    v386._object = (v302 | 0x8000000000000000);
    v386._countAndFlagsBits = 0xD000000000000012;
    sub_10009E634(v386);
    v339 = v315;
    v387._countAndFlagsBits = sub_10009ED04();
    sub_10009E634(v387);

    v388._countAndFlagsBits = 0xD00000000000001CLL;
    v388._object = (v303 | 0x8000000000000000);
    sub_10009E634(v388);
    v389._countAndFlagsBits = sub_10009E4D4();
    sub_10009E634(v389);

    v244 = v341;
    v245 = v342;
    v309 = v155;
    v133 = v335;
    v155 = v333;
    v49 = v320;
    i = v252;
LABEL_251:
    v110 = v329;
    goto LABEL_252;
  }

  v332 = v152 + 1;
  v110 = (v155 + 64);
  v164 = 1 << v155[32];
  if (v164 < 64)
  {
    v165 = ~(-1 << v164);
  }

  else
  {
    v165 = -1;
  }

  i = v165 & *(v155 + 8);
  v166 = (v164 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v167 = 0;
  while (2)
  {
    if (i)
    {
      v168 = i;
      goto LABEL_109;
    }

LABEL_105:
    v169 = v167 + 1;
    if (__OFADD__(v167, 1))
    {
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:

      sub_10005FB00(v292, v291, v315, v328, v307, v290);
      sub_10005FB00(v293, v294, v295, v309, v296, v308);
      if (v330)
      {
        sub_10009C954();
        v255 = v341;
        LOBYTE(v341) = 1;
        if (v255)
        {
          v256 = 16908802;
        }

        else
        {
          v256 = 131586;
        }

        type metadata accessor for WidgetAnalyticsEvent();
        v257 = swift_allocObject();
        *(v257 + 16) = 2;
        *(v257 + 24) = 2;
        *(v257 + 32) = 0;
        *(v257 + 40) = 0;
        *(v257 + 48) = v256;
        *(v257 + 56) = 0;
        *(v257 + 64) = 1;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v257);
      }

      sub_10009C954();
      a1 = v321;
      if (v341)
      {
        v258 = *(v341 + 16);
        if (v258)
        {
          type metadata accessor for WidgetAnalyticsEvent();
          do
          {
            v259 = swift_allocObject();
            *(v259 + 16) = 5;
            *(v259 + 32) = 0;
            *(v259 + 40) = 0;
            *(v259 + 24) = 2;
            *(v259 + 48) = v336;
            *(v259 + 64) = 1;
            sub_10005FAEC(0, 0, 1);
            sub_10005C194(v259);

            --v258;
          }

          while (v258);
        }

        i = 0xD000000000000012;
      }

      sub_10009C954();
      v118 = v341;
      v260 = v311;
      sub_10009E424();
      v261 = sub_10009E3C4();
      (*v305)(v260, v324);
      v341 = 0;
      v342 = 0xE000000000000000;
      v262 = v27;

      sub_10009EAC4(90);
      v390._countAndFlagsBits = 0x7361487865646E69;
      v390._object = 0xEA00000000003A68;
      sub_10009E634(v390);
      v339 = a1;
      v391._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v391);

      v392._countAndFlagsBits = i + 8;
      v392._object = (v301 | 0x8000000000000000);
      sub_10009E634(v392);
      if (v118)
      {
        v263._countAndFlagsBits = 1702195828;
      }

      else
      {
        v263._countAndFlagsBits = 0x65736C6166;
      }

      if (v118)
      {
        v264 = 0xE400000000000000;
      }

      else
      {
        v264 = 0xE500000000000000;
      }

      v263._object = v264;
      sub_10009E634(v263);

      v393._object = (v302 | 0x8000000000000000);
      v393._countAndFlagsBits = 0xD000000000000012;
      sub_10009E634(v393);
      v315 = v261;
      v339 = v261;
      v394._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v394);

      v395._countAndFlagsBits = i + 10;
      v395._object = (v303 | 0x8000000000000000);
      sub_10009E634(v395);
      v396._countAndFlagsBits = sub_10009E4D4();
      sub_10009E634(v396);

      v244 = v341;
      v245 = v342;
      v309 = v155;
      v133 = v335;
      i = v262;
      v155 = v333;
      v49 = v320;
      goto LABEL_251;
    }

    if (v169 < v166)
    {
      v168 = *(v110 + 8 * v169);
      ++v167;
      if (v168)
      {
        v167 = v169;
LABEL_109:
        i = (v168 - 1) & v168;
        if (*(v27 + 2))
        {
          v170 = (*(v155 + 6) + ((v167 << 10) | (16 * __clz(__rbit64(v168)))));
          v172 = *v170;
          v171 = v170[1];

          sub_10001B558(v172, v171);
          LOBYTE(v172) = v173;

          if (v172)
          {
            v49 = v27;
            goto LABEL_184;
          }
        }

        continue;
      }

      goto LABEL_105;
    }

    break;
  }

  v174 = 1 << v27[32];
  if (v174 < 64)
  {
    v175 = ~(-1 << v174);
  }

  else
  {
    v175 = -1;
  }

  i = v175 & *(v27 + 8);
  v176 = (v174 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v177 = 0;
  while (1)
  {
    if (!i)
    {
      while (1)
      {
        v179 = v177 + 1;
        if (__OFADD__(v177, 1))
        {
          goto LABEL_233;
        }

        if (v179 >= v176)
        {
          break;
        }

        v178 = v159[v179];
        ++v177;
        if (v178)
        {
          v177 = v179;
          goto LABEL_122;
        }
      }

      v117 = v319;
      if (*v319 != 1)
      {
        a1 = v326;
        sub_10009C954();
        i = 0xD000000000000012;
        v152 = v332;
        if (v341 != 1)
        {
          if (!*(v155 + 2) && *(v27 + 2))
          {
            goto LABEL_234;
          }

          v155 = v333;
          v49 = v320;
          if (v152 == v118)
          {
            goto LABEL_223;
          }

          goto LABEL_97;
        }

        sub_10005FB00(v300, v297, v304, v306, v298, v299);

        v189 = v322;
        sub_10009E424();
        v190 = sub_10009E3C4();
        v335 = *v305;
        v155 = v324;
        (v335)(v189, v324);
        LOBYTE(v346) = 0;
        type metadata accessor for WidgetAnalyticsEvent();
        v191 = swift_allocObject();
        *(v191 + 16) = 0;
        *(v191 + 24) = 2;
        *(v191 + 32) = 0;
        *(v191 + 40) = 0;
        *(v191 + 48) = 33686018;
        *(v191 + 56) = v190;
        *(v191 + 64) = 0;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v191);

        sub_10009C954();
        v187 = v341;
        v188 = &v338;
        goto LABEL_133;
      }

      a1 = v326;
      sub_10009C954();
      i = 0xD000000000000012;
      if (v341)
      {
        sub_10005FB00(v300, v297, v304, v306, v298, v299);

        v184 = v322;
        sub_10009E424();
        v185 = sub_10009E3C4();
        v335 = *v305;
        v155 = v324;
        (v335)(v184, v324);
        LOBYTE(v346) = 0;
        type metadata accessor for WidgetAnalyticsEvent();
        v186 = swift_allocObject();
        *(v186 + 16) = 0;
        *(v186 + 24) = 2;
        *(v186 + 32) = 0;
        *(v186 + 40) = 0;
        *(v186 + 48) = 33686018;
        *(v186 + 56) = v185;
        *(v186 + 64) = 0;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v186);

        sub_10009C954();
        v187 = v341;
        v188 = &v337;
LABEL_133:
        v192 = *(v188 - 32);
        i = 0xD000000000000012;
        sub_10009E424();
        v304 = sub_10009E3C4();
        (v335)(v192, v155);
        v341 = 0;
        v342 = 0xE000000000000000;

        sub_10009EAC4(90);
        v355._countAndFlagsBits = 0x7361487865646E69;
        v355._object = 0xEA00000000003A68;
        sub_10009E634(v355);
        v193 = v321;
        v339 = v321;
        v356._countAndFlagsBits = sub_10009ED04();
        sub_10009E634(v356);

        v357._countAndFlagsBits = 0xD00000000000001ALL;
        v357._object = (v301 | 0x8000000000000000);
        sub_10009E634(v357);
        LODWORD(v335) = v187;
        if (v187)
        {
          v194._countAndFlagsBits = 1702195828;
        }

        else
        {
          v194._countAndFlagsBits = 0x65736C6166;
        }

        if (v187)
        {
          v195 = 0xE400000000000000;
        }

        else
        {
          v195 = 0xE500000000000000;
        }

        v194._object = v195;
        sub_10009E634(v194);

        v358._object = (v302 | 0x8000000000000000);
        v358._countAndFlagsBits = 0xD000000000000012;
        sub_10009E634(v358);
        v339 = v304;
        v110 = &type metadata for Int;
        v359._countAndFlagsBits = sub_10009ED04();
        sub_10009E634(v359);

        v360._countAndFlagsBits = 0xD00000000000001CLL;
        v360._object = (v303 | 0x8000000000000000);
        sub_10009E634(v360);
        v361._countAndFlagsBits = sub_10009E4D4();
        sub_10009E634(v361);

        v298 = v341;
        v299 = v342;
        v297 = v335;
        v306 = v27;
        v300 = v193;
        v152 = v332;
        v49 = v320;
        v117 = v319;
        if (v332 != v118)
        {
          goto LABEL_97;
        }

        goto LABEL_278;
      }

      sub_10005FB00(v293, v294, v295, v309, v296, v308);
      if (!v330)
      {

        sub_10009C954();
        if (v341)
        {
          v196 = *(v341 + 16);
          if (v196)
          {
            v309 = v341;
            type metadata accessor for WidgetAnalyticsEvent();
            do
            {
              v197 = swift_allocObject();
              *(v197 + 16) = 5;
              *(v197 + 32) = 0;
              *(v197 + 40) = 0;
              *(v197 + 24) = 2;
              *(v197 + 48) = v336;
              *(v197 + 64) = 1;
              sub_10005FAEC(0, 0, 1);
              sub_10005C194(v197);

              --v196;
            }

            while (v196);

            i = 0xD000000000000012;
          }

          else
          {
          }

          a1 = v326;
        }

        else
        {
        }

        v198 = 0;
        v199 = 1 << v155[32];
        if (v199 < 64)
        {
          v200 = ~(-1 << v199);
        }

        else
        {
          v200 = -1;
        }

        v201 = v200 & *(v155 + 8);
        v202 = (v199 + 63) >> 6;
        v309 = v202;
        while (v201)
        {
LABEL_154:
          v201 &= v201 - 1;
          type metadata accessor for WidgetAnalyticsEvent();
          v203 = swift_allocObject();
          *(v203 + 16) = 6;
          *(v203 + 32) = 0;
          *(v203 + 40) = 0;
          *(v203 + 24) = 2;
          *(v203 + 48) = v336;
          *(v203 + 64) = 1;
          sub_10005FAEC(0, 0, 1);
          sub_10005C194(v203);

          v202 = v309;
        }

        while (1)
        {
          v204 = v198 + 1;
          if (__OFADD__(v198, 1))
          {
            goto LABEL_288;
          }

          if (v204 >= v202)
          {

            v205 = v335;
            v308 = v335;
            v206 = v331;
            v296 = v331;
            v309 = v155;
            v207 = v329;
            v295 = v329;
            v208 = v330;
            v294 = v330;
            v209 = v323;
            v293 = v323;
            v152 = v332;
            v49 = v320;
            v117 = v319;
            if (v332 != v118)
            {
              goto LABEL_97;
            }

            goto LABEL_286;
          }

          v201 = *(v110 + 8 * v204);
          ++v198;
          if (v201)
          {
            v198 = v204;
            goto LABEL_154;
          }
        }
      }

      sub_10005FB00(v292, v291, v315, v328, v307, v290);
      sub_10009C954();
      LOBYTE(v346) = 1;
      if (v341)
      {
        v210 = 16908802;
      }

      else
      {
        v210 = 131586;
      }

      type metadata accessor for WidgetAnalyticsEvent();
      v211 = swift_allocObject();
      *(v211 + 16) = 2;
      *(v211 + 24) = 2;
      *(v211 + 32) = 0;
      *(v211 + 40) = 0;
      *(v211 + 48) = v210;
      *(v211 + 56) = 0;
      *(v211 + 64) = 1;
      sub_10005FAEC(0, 0, 1);
      sub_10005C194(v211);

      v212 = *(v27 + 2);
      if (!v212)
      {
        goto LABEL_291;
      }

      do
      {
        v213 = swift_allocObject();
        *(v213 + 16) = 5;
        *(v213 + 32) = 0;
        *(v213 + 40) = 0;
        *(v213 + 24) = 2;
        *(v213 + 48) = v336;
        *(v213 + 64) = 1;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v213);

        --v212;
      }

      while (v212);
      sub_10009C954();
      v214 = v341;
      v215 = v310;
      sub_10009E424();
      v216 = sub_10009E3C4();
      (*v305)(v215, v324);
      v341 = 0;
      v342 = 0xE000000000000000;
      sub_10009EAC4(90);
      v362._countAndFlagsBits = 0x7361487865646E69;
      v362._object = 0xEA00000000003A68;
      sub_10009E634(v362);
      v110 = v321;
      v339 = v321;
      v363._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v363);

      i = 0xD000000000000012;
      v364._countAndFlagsBits = 0xD00000000000001ALL;
      v364._object = (v301 | 0x8000000000000000);
      sub_10009E634(v364);
      v291 = v214;
      if (v214)
      {
        v217._countAndFlagsBits = 1702195828;
      }

      else
      {
        v217._countAndFlagsBits = 0x65736C6166;
      }

      if (v214)
      {
        v218 = 0xE400000000000000;
      }

      else
      {
        v218 = 0xE500000000000000;
      }

      v217._object = v218;
      sub_10009E634(v217);

      v365._object = (v302 | 0x8000000000000000);
      v365._countAndFlagsBits = 0xD000000000000012;
      sub_10009E634(v365);
      v315 = v216;
      v339 = v216;
      v366._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v366);

      v367._countAndFlagsBits = 0xD00000000000001CLL;
      v367._object = (v303 | 0x8000000000000000);
      sub_10009E634(v367);
      v368._countAndFlagsBits = sub_10009E4D4();
      sub_10009E634(v368);

      v307 = v341;
      v290 = v342;
      v328 = v27;
      v292 = v110;
      v152 = v332;
      v49 = v320;
      v117 = v319;
      v158 = v323;
      v157 = v330;
      v156 = v329;
      v154 = v331;
      v153 = v335;
      if (v332 == v118)
      {
        v292 = v321;
        v328 = v27;
        v293 = v323;
        v294 = v330;
        v295 = v329;
        v309 = v155;
        v296 = v331;
        v308 = v335;
        goto LABEL_279;
      }

      goto LABEL_95;
    }

    v178 = i;
LABEL_122:
    i = (v178 - 1) & v178;
    if (*(v155 + 2))
    {
      v180 = (*(v27 + 6) + ((v177 << 10) | (16 * __clz(__rbit64(v178)))));
      v182 = *v180;
      v181 = v180[1];

      sub_10001B558(v182, v181);
      LOBYTE(v182) = v183;

      if (v182)
      {
        break;
      }
    }
  }

  v49 = v27;
LABEL_184:

  sub_10005FB00(v292, v291, v315, v328, v307, v290);
  sub_10005FB00(v293, v294, v295, v309, v296, v308);

  v209 = *(v155 + 2);
  v208 = *(v49 + 16);
  v110 = v209 - v208;
  v207 = &v344;
  a1 = v321;
  if (v209 >= v208)
  {
    if (v208 >= v209)
    {

      goto LABEL_197;
    }

    if (v110 >= 1)
    {
      type metadata accessor for WidgetAnalyticsEvent();

      LOBYTE(v118) = 6;
      for (i = 1; ; ++i)
      {
        v231 = swift_allocObject();
        *(v231 + 16) = 6;
        *(v231 + 32) = 0;
        *(v231 + 40) = 0;
        *(v231 + 24) = 2;
        *(v231 + 48) = v336;
        *(v231 + 64) = 1;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v231);

        if (v110 == i)
        {
          break;
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
          goto LABEL_283;
        }
      }

LABEL_197:
      v232 = v322;
      sub_10009E424();
      v233 = sub_10009E3C4();
      v234 = *v305;
      (*v305)(v232, v324);
      if (v329 != v233)
      {
        sub_10009E424();
        v235 = sub_10009E3C4();
        v234(v232, v324);
        LOBYTE(v341) = 0;
        type metadata accessor for WidgetAnalyticsEvent();
        v236 = swift_allocObject();
        *(v236 + 16) = 3;
        *(v236 + 24) = 2;
        *(v236 + 32) = 0;
        *(v236 + 40) = 0;
        *(v236 + 48) = 33686018;
        *(v236 + 56) = v235;
        *(v236 + 64) = 0;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v236);
      }

      sub_10009C954();

      v237 = v341 ^ 1 | v330;
      if ((v237 & 1) == 0)
      {
        sub_10009C954();
        v238 = v341;
        LOBYTE(v341) = 1;
        if (v238)
        {
          v239 = 16908802;
        }

        else
        {
          v239 = 131586;
        }

        type metadata accessor for WidgetAnalyticsEvent();
        v240 = swift_allocObject();
        *(v240 + 16) = 2;
        *(v240 + 24) = 2;
        *(v240 + 32) = 0;
        *(v240 + 40) = 0;
        *(v240 + 48) = v239;
        *(v240 + 56) = 0;
        *(v240 + 64) = 1;
        sub_10005FAEC(0, 0, 1);
        sub_10005C194(v240);
      }

      sub_10009C954();
      v118 = v341;
      v241 = v316;
      sub_10009E424();
      v315 = sub_10009E3C4();
      v234(v241, v324);
      v110 = v329;
      if (v237)
      {

        i = v27;
      }

      else
      {
        i = sub_10001D23C(_swiftEmptyArrayStorage);
      }

      v341 = 0;
      v342 = 0xE000000000000000;
      sub_10009EAC4(90);
      v376._countAndFlagsBits = 0x7361487865646E69;
      v376._object = 0xEA00000000003A68;
      sub_10009E634(v376);
      v339 = a1;
      v377._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v377);

      v378._countAndFlagsBits = 0xD00000000000001ALL;
      v378._object = (v301 | 0x8000000000000000);
      sub_10009E634(v378);
      if (v118)
      {
        v242._countAndFlagsBits = 1702195828;
      }

      else
      {
        v242._countAndFlagsBits = 0x65736C6166;
      }

      if (v118)
      {
        v243 = 0xE400000000000000;
      }

      else
      {
        v243 = 0xE500000000000000;
      }

      v242._object = v243;
      sub_10009E634(v242);

      v379._object = (v302 | 0x8000000000000000);
      v379._countAndFlagsBits = 0xD000000000000012;
      sub_10009E634(v379);
      v339 = v315;
      v380._countAndFlagsBits = sub_10009ED04();
      sub_10009E634(v380);

      v381._countAndFlagsBits = 0xD00000000000001CLL;
      v381._object = (v303 | 0x8000000000000000);
      sub_10009E634(v381);
      v382._countAndFlagsBits = sub_10009E4D4();
      sub_10009E634(v382);

      v244 = v341;
      v245 = v342;
      v309 = v155;
      v133 = v335;
      v155 = v333;
      v49 = v320;
      goto LABEL_252;
    }

    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
    goto LABEL_290;
  }

  a2 = v208 - v209;
  if ((v208 - v209) >= 1)
  {
    type metadata accessor for WidgetAnalyticsEvent();

    v7 = 1;
    v6 = 2;
    for (j = 1; ; ++j)
    {
      v230 = swift_allocObject();
      *(v230 + 16) = 5;
      *(v230 + 32) = 0;
      *(v230 + 40) = 0;
      *(v230 + 24) = 2;
      *(v230 + 48) = v336;
      *(v230 + 64) = 1;
      sub_10005FAEC(0, 0, 1);
      sub_10005C194(v230);

      if (a2 == j)
      {
        break;
      }

      if (__OFADD__(j, 1))
      {
        __break(1u);
        goto LABEL_281;
      }
    }

    goto LABEL_197;
  }

  __break(1u);
LABEL_286:
  v293 = v209;
  v294 = v208;
  v295 = v207;
  v309 = v155;
  v296 = v206;
  v308 = v205;
LABEL_279:
  v155 = v333;
LABEL_223:

  v323 = v293;
  v330 = v294;
  v110 = v295;
  v331 = v296;
  a1 = v292;
  i = v328;
  v118 = v291;
  v244 = v307;
  v245 = v290;
  v133 = v308;
LABEL_252:
  if (!v306)
  {
    v272 = v319;
    if (!v309)
    {
      sub_10005FB00(a1, v118, v315, i, v244, v245);
      v132 = 0;
      v134 = v317;
      v135 = &NSObject__properties;
      v130 = v323;
      v131 = v330;
      goto LABEL_271;
    }

    if (i)
    {
      v228 = v133;
      v27 = v245;
      v307 = v244;
      v273 = v309;

      v227 = v323;
      v335 = v330;
      v334 = v110;
      v333 = v273;
      v332 = v331;
      v308 = v228;
      v229 = *v272;
      if (!*v272)
      {
        goto LABEL_266;
      }

      goto LABEL_261;
    }

    v134 = v317;
    v135 = &NSObject__properties;
    v130 = v323;
    v131 = v330;
LABEL_270:
    v132 = v309;
    goto LABEL_271;
  }

  v329 = v110;
  sub_10005FB00(a1, v118, v315, i, v244, v245);
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v155 = sub_1000655A0(0, *(v155 + 2) + 1, 1, v155);
  }

  v265 = v317;
  v135 = &NSObject__properties;
  v266 = v304;
  v130 = v323;
  v131 = v330;
  v268 = *(v155 + 2);
  v267 = *(v155 + 3);
  if (v268 >= v267 >> 1)
  {
    v155 = sub_1000655A0((v267 > 1), v268 + 1, 1, v155);
  }

  *(v155 + 2) = v268 + 1;
  v269 = &v155[48 * v268];
  *(v269 + 4) = v300;
  v269[40] = v297;
  v270 = v306;
  *(v269 + 6) = v266;
  *(v269 + 7) = v270;
  v271 = v299;
  *(v269 + 8) = v298;
  *(v269 + 9) = v271;
  v340 = v155;
  swift_endAccess();
  v134 = v265;
  v132 = v309;
  v110 = v329;
LABEL_271:
  v281 = [v134 *&v135[273]];

  sub_10005C010(v282);
  sub_10005FB00(v130, v131, v110, v132, v331, v133);

LABEL_272:
  v283 = sub_10009D904();
  v284 = sub_10009E844();
  if (os_log_type_enabled(v283, v284))
  {
    v285 = swift_slowAlloc();
    v339 = swift_slowAlloc();
    *v285 = 136315394;
    *(v285 + 4) = sub_10002AD68(0xD000000000000030, 0x80000001000A4F90, &v339);
    *(v285 + 12) = 2080;

    v286 = sub_10009E6B4();
    v288 = v287;

    v289 = sub_10002AD68(v286, v288, &v339);

    *(v285 + 14) = v289;
    _os_log_impl(&_mh_execute_header, v283, v284, "%s (After) Cached widget metrics infos: %s", v285, 0x16u);
    swift_arrayDestroy();
  }
}