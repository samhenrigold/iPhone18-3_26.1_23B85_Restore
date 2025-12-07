id sub_14C0()
{
  v0 = objc_allocWithZone(SBSHomeScreenService);

  return [v0 init];
}

uint64_t sub_14F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v56 = a3;
  v4 = sub_A754();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v51 = v5;
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HomeScreenSettingsList(0);
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = v7;
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_4F18(&qword_14528, &qword_B138);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - v10;
  v42 = sub_4F18(&qword_14530, &qword_B140);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v42 - v12;
  v14 = sub_4F18(&qword_14538, &qword_B148);
  v44 = *(v14 - 8);
  v45 = v14;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = sub_4F18(&qword_14540, &qword_B150);
  v46 = *(v17 - 8);
  v47 = v17;
  __chkstk_darwin(v17);
  v57 = &v42 - v18;
  v58 = a2;
  sub_4F18(&qword_14548, &qword_B158);
  sub_619C(&qword_14550, &qword_14548, &qword_B158, &protocol conformance descriptor for TupleView<A>);
  sub_A7F4();
  v19 = sub_619C(&qword_14558, &qword_14528, &qword_B138, &protocol conformance descriptor for List<A, B>);
  sub_A814();
  (*(v9 + 8))(v11, v8);
  v60 = v8;
  v61 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v42;
  sub_A824();
  (*(v43 + 8))(v13, v21);
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v22 = qword_14E98;
  v23 = sub_A804();
  v25 = v24;
  v27 = v26;
  v60 = v21;
  v61 = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v28 = v45;
  sub_A884();
  sub_5868(v23, v25, v27 & 1);

  (*(v44 + 8))(v16, v28);
  v29 = a2[1];
  v60 = *a2;
  v61 = v29;
  sub_4F18(&qword_14560, &qword_B160);
  sub_A8E4();
  v30 = v59;
  swift_getKeyPath();
  v60 = v30;
  sub_5DF8(&qword_14568, type metadata accessor for HomeScreenSettingsListViewModel, &unk_B468);
  sub_A5E4();

  v31 = *(v30 + 16);

  LOBYTE(v59) = v31;
  v32 = v50;
  sub_5534(a2, v50);
  v34 = v53;
  v33 = v54;
  v35 = v55;
  (*(v54 + 16))(v53, v52, v55);
  v36 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v37 = (v49 + *(v33 + 80) + v36) & ~*(v33 + 80);
  v38 = swift_allocObject();
  sub_5734(v32, v38 + v36);
  (*(v33 + 32))(v38 + v37, v34, v35);
  sub_4F18(&qword_14570, &qword_B190);
  v60 = v28;
  v61 = v43;
  swift_getOpaqueTypeConformance2();
  sub_5B74();
  v39 = v47;
  v40 = v57;
  sub_A8A4();

  return (*(v46 + 8))(v40, v39);
}

uint64_t sub_1CBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v92 = sub_4F18(&qword_14588, &qword_B198);
  v95 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v90 - v3;
  v4 = sub_4F18(&qword_14590, &qword_B1A0);
  v5 = __chkstk_darwin(v4 - 8);
  v102 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v108 = &v90 - v7;
  v91 = sub_4F18(&qword_14598, &qword_B1A8);
  v8 = __chkstk_darwin(v91);
  v101 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = &v90 - v10;
  v11 = sub_4F18(&qword_145A0, &qword_B1B0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v105 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v90 - v15;
  v16 = sub_4F18(&qword_145A8, &qword_B1B8);
  v17 = __chkstk_darwin(v16 - 8);
  v99 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v100 = &v90 - v20;
  v21 = __chkstk_darwin(v19);
  v103 = &v90 - v22;
  __chkstk_darwin(v21);
  v24 = &v90 - v23;
  v97 = objc_opt_self();
  v25 = [v97 currentDevice];
  v26 = [v25 sf_isiPad];

  v104 = v24;
  v98 = a1;
  v96 = v12;
  if (v26)
  {
    v94 = &v90;
    __chkstk_darwin(v27);
    sub_A794();
    if (qword_14438 != -1)
    {
      swift_once();
    }

    v28 = qword_14E98;
    v113 = sub_A804();
    v114 = v29;
    LOBYTE(v115) = v30 & 1;
    v116 = v31;
    sub_4F18(&qword_145D8, &qword_B1E0);
    sub_5C84();
    v32 = v106;
    sub_A964();
    v33 = v104;
    (*(v12 + 32))(v104, v32, v11);
    v34 = (*(v12 + 56))(v33, 0, 1, v11);
  }

  else
  {
    v34 = (*(v12 + 56))(v24, 1, 1, v11);
  }

  v94 = v11;
  __chkstk_darwin(v34);
  v35 = v98;
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v36 = qword_14E98;
  v113 = sub_A804();
  v114 = v37;
  LOBYTE(v115) = v38 & 1;
  v116 = v39;
  sub_4F18(&qword_145B0, &qword_B1C0);
  v40 = sub_5820(&qword_145B8, &qword_B1C8);
  v41 = sub_5820(&qword_145C0, &qword_B1D0);
  v42 = sub_A784();
  v43 = sub_619C(&qword_145C8, &qword_145C0, &qword_B1D0, &protocol conformance descriptor for Picker<A, B, C>);
  v109 = v41;
  v110 = v42;
  v111 = v43;
  v112 = &protocol witness table for InlinePickerStyle;
  v44 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = v40;
  v110 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v46 = v107;
  sub_A964();
  v47 = v35[1];
  v109 = *v35;
  v110 = v47;
  sub_4F18(&qword_14560, &qword_B160);
  sub_A8F4();
  v48 = v113;
  v49 = v114;
  v50 = v115;
  swift_getKeyPath();
  v113 = v48;
  v114 = v49;
  v115 = v50;
  sub_4F18(&qword_145D0, &qword_B1D8);
  sub_A954();

  v51 = v109;
  v52 = v110;
  LOBYTE(v41) = v111;

  v53 = v46 + *(v91 + 36);
  *v53 = v51;
  *(v53 + 8) = v52;
  *(v53 + 16) = v41;
  *(v53 + 17) = 1;
  v54 = [v97 currentDevice];
  LODWORD(v51) = [v54 sf_isiPad];

  v56 = v92;
  if (v51)
  {
    __chkstk_darwin(v55);
    sub_A794();
    v57 = qword_14E98;
    v113 = sub_A804();
    v114 = v58;
    LOBYTE(v115) = v59 & 1;
    v116 = v60;
    sub_4F18(&qword_14620, qword_B200);
    sub_619C(&qword_14628, &qword_14620, qword_B200, &protocol conformance descriptor for TupleView<A>);
    v61 = v90;
    sub_A964();
    (*(v95 + 32))(v108, v61, v56);
    v44 = 0;
  }

  v62 = (*(v95 + 56))(v108, v44, 1, v56);
  __chkstk_darwin(v62);
  sub_A794();
  v63 = qword_14E98;
  v113 = sub_A804();
  v114 = v64;
  LOBYTE(v115) = v65 & 1;
  v116 = v66;
  sub_4F18(&qword_145D8, &qword_B1E0);
  sub_5C84();
  sub_A964();
  v67 = [v97 currentDevice];
  v68 = [v67 sf_isiPhone];

  v70 = 1;
  v71 = v94;
  if (v68)
  {
    __chkstk_darwin(v69);
    sub_A794();
    v72 = qword_14E98;
    v113 = sub_A804();
    v114 = v73;
    LOBYTE(v115) = v74 & 1;
    v116 = v75;
    v76 = v106;
    sub_A964();
    v71 = v94;
    (*(v96 + 32))(v103, v76, v94);
    v70 = 0;
  }

  v77 = v96;
  v78 = v103;
  (*(v96 + 56))(v103, v70, 1, v71);
  v79 = v100;
  sub_5F98(v104, v100, &qword_145A8, &qword_B1B8);
  v80 = v101;
  sub_5E94(v107, v101);
  v81 = v102;
  sub_5F98(v108, v102, &qword_14590, &qword_B1A0);
  v82 = *(v77 + 16);
  v82(v106, v105, v71);
  sub_5F98(v78, v99, &qword_145A8, &qword_B1B8);
  v83 = v93;
  sub_5F98(v79, v93, &qword_145A8, &qword_B1B8);
  v84 = sub_4F18(&qword_14618, &qword_B1F8);
  sub_5E94(v80, v83 + v84[12]);
  sub_5F98(v81, v83 + v84[16], &qword_14590, &qword_B1A0);
  v85 = v106;
  v82((v83 + v84[20]), v106, v71);
  v86 = v83 + v84[24];
  v87 = v99;
  sub_5F98(v99, v86, &qword_145A8, &qword_B1B8);
  sub_6000(v103, &qword_145A8, &qword_B1B8);
  v88 = *(v77 + 8);
  v88(v105, v71);
  sub_6000(v108, &qword_14590, &qword_B1A0);
  sub_5F04(v107);
  sub_6000(v104, &qword_145A8, &qword_B1B8);
  sub_6000(v87, &qword_145A8, &qword_B1B8);
  v88(v85, v71);
  sub_6000(v102, &qword_14590, &qword_B1A0);
  sub_5F04(v101);
  return sub_6000(v100, &qword_145A8, &qword_B1B8);
}

uint64_t sub_2AE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4F18(&qword_14600, &qword_B1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  sub_547C();
  sub_5DF8(&qword_144D8, sub_547C, &protocol conformance descriptor for SBSHomeScreenService);
  v8 = sub_A694();
  swift_getKeyPath();
  sub_A724();

  sub_A924();
  sub_619C(&qword_145F8, &qword_14600, &qword_B1F0, &protocol conformance descriptor for Toggle<A>);
  sub_A894();
  (*(v5 + 8))(v7, v4);
  v9 = a1[1];
  v17 = *a1;
  v18 = v9;
  sub_4F18(&qword_14560, &qword_B160);
  sub_A8F4();
  v10 = v20;
  v11 = v21;
  v12 = v22;
  swift_getKeyPath();
  v20 = v10;
  v21 = v11;
  v22 = v12;
  sub_4F18(&qword_145D0, &qword_B1D8);
  sub_A954();

  v13 = v17;
  v14 = v18;
  LOBYTE(v8) = v19;

  result = sub_4F18(&qword_145D8, &qword_B1E0);
  v16 = a2 + *(result + 36);
  *v16 = v13;
  *(v16 + 8) = v14;
  *(v16 + 16) = v8;
  *(v16 + 17) = 0;
  return result;
}

uint64_t sub_2DB4@<X0>(uint64_t a1@<X8>)
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v2 = qword_14E98;
  result = sub_A804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_2E94@<X0>(uint64_t a2@<X8>)
{
  v28 = a2;
  v2 = sub_A784();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_4F18(&qword_145C0, &qword_B1D0);
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_4F18(&qword_145B8, &qword_B1C8);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  v12 = sub_A794();
  v22 = v13;
  v23 = v12;
  v20[1] = v14;
  v21 = v15;
  sub_547C();
  sub_5DF8(&qword_144D8, sub_547C, &protocol conformance descriptor for SBSHomeScreenService);
  v16 = sub_A694();
  swift_getKeyPath();
  sub_A724();

  v33 = v29;
  v34 = v30;
  v35 = v31;
  sub_4F18(&qword_14638, &qword_B338);
  sub_619C(&qword_14640, &qword_14638, &qword_B338, &protocol conformance descriptor for _TuplePickerContent<A, B>);
  sub_A914();
  sub_A774();
  v17 = sub_619C(&qword_145C8, &qword_145C0, &qword_B1D0, &protocol conformance descriptor for Picker<A, B, C>);
  sub_A854();
  (*(v27 + 8))(v4, v2);
  (*(v24 + 8))(v7, v5);
  v29 = v5;
  v30 = v2;
  v31 = v17;
  v32 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v18 = v25;
  sub_A864();
  return (*(v26 + 8))(v11, v18);
}

uint64_t sub_32A0()
{
  v0 = sub_4F18(&qword_14648, &qword_B340);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v9[-v5];
  v9[15] = 1;
  sub_4F18(&qword_14650, &qword_B348);
  sub_609C();
  sub_A6B4();
  v9[14] = 0;
  sub_A6B4();
  sub_619C(&qword_14660, &qword_14648, &qword_B340, &protocol conformance descriptor for PickerOption<A, B>);
  sub_A6F4();
  sub_4F18(&qword_14668, &qword_B350);
  sub_A6F4();
  v7 = *(v1 + 8);
  v7(v4, v0);
  return (v7)(v6, v0);
}

uint64_t sub_34D4()
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v0 = qword_14E98;
  v1 = sub_A804();
  v3 = v2;
  v5 = v4 & 1;
  sub_A894();
  sub_5868(v1, v3, v5);
}

uint64_t sub_3618()
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v0 = qword_14E98;
  v1 = sub_A804();
  v3 = v2;
  v5 = v4 & 1;
  sub_A894();
  sub_5868(v1, v3, v5);
}

uint64_t sub_375C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_4F18(&qword_14600, &qword_B1F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v46 = sub_4F18(&qword_145D8, &qword_B1E0) - 8;
  v7 = __chkstk_darwin(v46);
  v49 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v48 = &v38 - v10;
  v11 = __chkstk_darwin(v9);
  v47 = &v38 - v12;
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  sub_A674();
  sub_A924();
  v45 = sub_619C(&qword_145F8, &qword_14600, &qword_B1F0, &protocol conformance descriptor for Toggle<A>);
  v39 = v14;
  sub_A894();
  v15 = *(v4 + 8);
  v43 = v4 + 8;
  v44 = v15;
  v15(v6, v3);
  v16 = *a1;
  v41 = a1[1];
  v42 = v16;
  v51 = v16;
  v52 = v41;
  v40 = sub_4F18(&qword_14560, &qword_B160);
  sub_A8F4();
  v17 = v54;
  v18 = v55;
  v19 = v56;
  swift_getKeyPath();
  v54 = v17;
  v55 = v18;
  v56 = v19;
  v38 = sub_4F18(&qword_145D0, &qword_B1D8);
  sub_A954();

  v20 = v51;
  v21 = v52;
  v22 = v53;

  v23 = v46;
  v24 = &v14[*(v46 + 44)];
  *v24 = v20;
  *(v24 + 1) = v21;
  v24[16] = v22;
  v24[17] = 3;
  sub_A674();
  sub_A924();
  v25 = v47;
  sub_A894();
  v44(v6, v3);
  v51 = v42;
  v52 = v41;
  sub_A8F4();
  v26 = v54;
  v27 = v55;
  v28 = v56;
  swift_getKeyPath();
  v54 = v26;
  v55 = v27;
  v56 = v28;
  sub_A954();

  v29 = v51;
  v30 = v52;
  LOBYTE(v14) = v53;

  v31 = v25 + *(v23 + 44);
  *v31 = v29;
  *(v31 + 8) = v30;
  *(v31 + 16) = v14;
  *(v31 + 17) = 4;
  v32 = v39;
  v33 = v48;
  sub_5F98(v39, v48, &qword_145D8, &qword_B1E0);
  v34 = v49;
  sub_5F98(v25, v49, &qword_145D8, &qword_B1E0);
  v35 = v50;
  sub_5F98(v33, v50, &qword_145D8, &qword_B1E0);
  v36 = sub_4F18(&qword_14630, qword_B250);
  sub_5F98(v34, v35 + *(v36 + 48), &qword_145D8, &qword_B1E0);
  sub_6000(v25, &qword_145D8, &qword_B1E0);
  sub_6000(v32, &qword_145D8, &qword_B1E0);
  sub_6000(v34, &qword_145D8, &qword_B1E0);
  return sub_6000(v33, &qword_145D8, &qword_B1E0);
}

uint64_t sub_3C60@<X0>(uint64_t a1@<X8>)
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v2 = qword_14E98;
  result = sub_A804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_3D40@<X0>(uint64_t a1@<X8>)
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v2 = qword_14E98;
  result = sub_A804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_3E20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4F18(&qword_14600, &qword_B1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  sub_547C();
  sub_5DF8(&qword_144D8, sub_547C, &protocol conformance descriptor for SBSHomeScreenService);
  v8 = sub_A694();
  swift_getKeyPath();
  sub_A724();

  sub_A924();
  sub_619C(&qword_145F8, &qword_14600, &qword_B1F0, &protocol conformance descriptor for Toggle<A>);
  sub_A894();
  (*(v5 + 8))(v7, v4);
  v9 = a1[1];
  v17 = *a1;
  v18 = v9;
  sub_4F18(&qword_14560, &qword_B160);
  sub_A8F4();
  v10 = v20;
  v11 = v21;
  v12 = v22;
  swift_getKeyPath();
  v20 = v10;
  v21 = v11;
  v22 = v12;
  sub_4F18(&qword_145D0, &qword_B1D8);
  sub_A954();

  v13 = v17;
  v14 = v18;
  LOBYTE(v8) = v19;

  result = sub_4F18(&qword_145D8, &qword_B1E0);
  v16 = a2 + *(result + 36);
  *v16 = v13;
  *(v16 + 8) = v14;
  *(v16 + 16) = v8;
  *(v16 + 17) = 2;
  return result;
}

uint64_t sub_40F0@<X0>(uint64_t a1@<X8>)
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v2 = qword_14E98;
  result = sub_A804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_41D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4F18(&qword_14600, &qword_B1F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  sub_547C();
  sub_5DF8(&qword_144D8, sub_547C, &protocol conformance descriptor for SBSHomeScreenService);
  v8 = sub_A694();
  swift_getKeyPath();
  sub_A724();

  sub_A924();
  sub_619C(&qword_145F8, &qword_14600, &qword_B1F0, &protocol conformance descriptor for Toggle<A>);
  sub_A894();
  (*(v5 + 8))(v7, v4);
  v9 = a1[1];
  v17 = *a1;
  v18 = v9;
  sub_4F18(&qword_14560, &qword_B160);
  sub_A8F4();
  v10 = v20;
  v11 = v21;
  v12 = v22;
  swift_getKeyPath();
  v20 = v10;
  v21 = v11;
  v22 = v12;
  sub_4F18(&qword_145D0, &qword_B1D8);
  sub_A954();

  v13 = v17;
  v14 = v18;
  LOBYTE(v8) = v19;

  result = sub_4F18(&qword_145D8, &qword_B1E0);
  v16 = a2 + *(result + 36);
  *v16 = v13;
  *(v16 + 8) = v14;
  *(v16 + 16) = v8;
  *(v16 + 17) = 5;
  return result;
}

uint64_t sub_44A8@<X0>(uint64_t a1@<X8>)
{
  sub_A794();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v2 = qword_14E98;
  result = sub_A804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_4588(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  v7 = sub_A7E4();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  if (v12 != 6)
  {
    v13 = a3[1];
    v15[2] = *a3;
    v15[3] = v13;
    sub_4F18(&qword_14560, &qword_B160);
    v14 = sub_A8E4();
    __chkstk_darwin(v14);
    v15[-2] = a4;
    LOBYTE(v15[-1]) = v12;

    sub_A974();
    sub_A7D4();
    sub_A704();

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_4740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4F18(&qword_14670, &qword_B358);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v21[1] = a1;
  type metadata accessor for HomeScreenSettingsListViewModel(0);
  sub_A8D4();
  v7 = v23;
  *a2 = v22;
  *(a2 + 8) = v7;
  *(a2 + 16) = sub_14C0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (qword_14440 != -1)
  {
    swift_once();
  }

  v8 = qword_14EA0;
  *(a2 + 40) = sub_A664();
  *(a2 + 48) = sub_A664();
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 sf_isiPad];

  if (v10)
  {
    v11 = 1684107369;
  }

  else
  {
    v11 = 0x656E6F687069;
  }

  if (v10)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  v13 = type metadata accessor for HomeScreenSettingsList(0);
  v14 = (a2 + *(v13 + 32));
  v22 = 0xD00000000000001FLL;
  v23 = 0x800000000000BB70;
  v24._countAndFlagsBits = v11;
  v24._object = v12;
  sub_AA94(v24);

  v15 = v23;
  *v14 = v22;
  v14[1] = v15;
  v16 = enum case for SettingsEventImage.graphicIcon(_:);
  v17 = sub_A9F4();
  (*(*(v17 - 8) + 104))(v14, v16, v17);
  sub_A584();
  sub_A5B4();
  v18 = sub_A5C4();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v6, 1, v18);
  if (result != 1)
  {
    return (*(v19 + 32))(a2 + *(v13 + 40), v6, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_4A78@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_5534(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_5734(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_5798;
  a2[1] = v7;
  return result;
}

uint64_t variable initialization expression of HomeScreenSettings.viewModel()
{
  type metadata accessor for HomeScreenSettingsListViewModel(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 6;
  sub_A5F4();
  return v0;
}

uint64_t sub_4BB4(uint64_t *a1)
{
  if (sub_A05C(2, 26, 0, 0))
  {
    sub_A7C4();

    return sub_A734();
  }

  else
  {
    sub_A764();
    swift_getWitnessTable();
    sub_A7B4();
    sub_A734();
    sub_AAF4();
    swift_getWitnessTable();
    sub_A764();
    swift_getWitnessTable();
    sub_A7B4();
    return sub_A734();
  }
}

uint64_t sub_4D18(uint64_t *a1)
{
  if (sub_A05C(2, 26, 0, 0))
  {
    sub_A7C4();
    sub_A734();
  }

  else
  {
    sub_A764();
    swift_getWitnessTable();
    sub_A7B4();
    sub_A734();
    sub_AAF4();
    swift_getWitnessTable();
    sub_A764();
    swift_getWitnessTable();
    sub_A7B4();
    sub_A734();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_4F18(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_4F74(char *a1, uint64_t a2, int *a3)
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

  v8 = sub_A9F4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_A594();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_A5C4();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_50F4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_A9F4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_A594();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_A5C4();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for HomeScreenSettingsList(uint64_t a1)
{
  result = qword_144B0;
  if (!qword_144B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_52AC(uint64_t a1)
{
  sub_5390(319);
  if (v1 <= 0x3F)
  {
    sub_53E8(319);
    if (v2 <= 0x3F)
    {
      sub_54C8();
      if (v3 <= 0x3F)
      {
        sub_A9F4();
        if (v4 <= 0x3F)
        {
          sub_A594();
          if (v5 <= 0x3F)
          {
            sub_A5C4();
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

void sub_5390(uint64_t a1)
{
  if (!qword_144C0)
  {
    type metadata accessor for HomeScreenSettingsListViewModel(255);
    v1 = sub_A904();
    if (!v2)
    {
      atomic_store(v1, &qword_144C0);
    }
  }
}

void sub_53E8(uint64_t a1)
{
  if (!qword_144C8)
  {
    sub_547C();
    sub_5DF8(&qword_144D8, sub_547C, &protocol conformance descriptor for SBSHomeScreenService);
    v1 = sub_A6A4();
    if (!v2)
    {
      atomic_store(v1, &qword_144C8);
    }
  }
}

unint64_t sub_547C()
{
  result = qword_144D0;
  if (!qword_144D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_144D0);
  }

  return result;
}

void sub_54C8()
{
  if (!qword_144E0)
  {
    v0 = sub_A684();
    if (!v1)
    {
      atomic_store(v0, &qword_144E0);
    }
  }
}

uint64_t sub_5534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeScreenSettingsList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5598()
{
  v1 = (type metadata accessor for HomeScreenSettingsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_5724(*(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32));

  v5 = v1[10];
  v6 = sub_A9F4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[11];
  v8 = sub_A594();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[12];
  v10 = sub_A5C4();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5724(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_5734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeScreenSettingsList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HomeScreenSettingsList(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_14F8(a1, v6, a2);
}

uint64_t sub_5820(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_5868(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_5880()
{
  v1 = (type metadata accessor for HomeScreenSettingsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_A754();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;

  sub_5724(*(v11 + 16), *(v11 + 24), *(v11 + 32));

  v12 = v1[10];
  v13 = sub_A9F4();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v14 = v1[11];
  v15 = sub_A594();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  v16 = v1[12];
  v17 = sub_A5C4();
  (*(*(v17 - 8) + 8))(v11 + v16, v17);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_5A90(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for HomeScreenSettingsList(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_A754() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_4588(a1, a2, (v2 + v6), v9);
}

unint64_t sub_5B74()
{
  result = qword_14578;
  if (!qword_14578)
  {
    sub_5820(&qword_14570, &qword_B190);
    sub_5BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14578);
  }

  return result;
}

unint64_t sub_5BF8()
{
  result = qword_14580;
  if (!qword_14580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14580);
  }

  return result;
}

unint64_t sub_5C84()
{
  result = qword_145E0;
  if (!qword_145E0)
  {
    sub_5820(&qword_145D8, &qword_B1E0);
    sub_5D10();
    sub_5E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_145E0);
  }

  return result;
}

unint64_t sub_5D10()
{
  result = qword_145E8;
  if (!qword_145E8)
  {
    sub_5820(&qword_145F0, &qword_B1E8);
    sub_619C(&qword_145F8, &qword_14600, &qword_B1F0, &protocol conformance descriptor for Toggle<A>);
    sub_5DF8(&qword_14608, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_145E8);
  }

  return result;
}

uint64_t sub_5DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_5E40()
{
  result = qword_14610;
  if (!qword_14610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14610);
  }

  return result;
}

uint64_t sub_5E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_4F18(&qword_14598, &qword_B1A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5F04(uint64_t a1)
{
  v2 = sub_4F18(&qword_14598, &qword_B1A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5F98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_4F18(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_6000(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_4F18(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_609C()
{
  result = qword_14658;
  if (!qword_14658)
  {
    sub_5820(&qword_14650, &qword_B348);
    sub_5DF8(&qword_14608, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14658);
  }

  return result;
}

uint64_t sub_619C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_5820(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_61E4()
{
  swift_getKeyPath();
  sub_7238(&qword_14568, type metadata accessor for HomeScreenSettingsListViewModel, &unk_B468);
  sub_A5E4();

  return *(v0 + 16);
}

uint64_t sub_6284(unsigned __int8 a1)
{
  result = *(v1 + 16);
  if (result != 6)
  {
    if (a1 == 6)
    {
      goto LABEL_7;
    }

    result = sub_8D40(result, a1);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 16) = a1;
    return result;
  }

  if (a1 == 6)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_7238(&qword_14568, type metadata accessor for HomeScreenSettingsListViewModel, &unk_B468);
  sub_A5D4();
}

Swift::Int sub_63CC(unsigned __int8 a1)
{
  sub_AB64();
  sub_AA84();

  return sub_AB74();
}

uint64_t sub_64F0(uint64_t a1)
{
  sub_AA84();
}

Swift::Int sub_6604(uint64_t a1, unsigned __int8 a2)
{
  sub_AB64();
  sub_AA84();

  return sub_AB74();
}

unint64_t sub_6724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_70CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_6754(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000053544E4543;
  v4 = 0x45525F574F4C4C41;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x800000000000B960;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000000000B940;
  }

  v5 = 0xD000000000000013;
  v6 = 0x800000000000B8E0;
  v7 = 0xD000000000000013;
  v8 = 0x800000000000B900;
  if (v2 != 1)
  {
    v7 = 0xD000000000000015;
    v8 = 0x800000000000B920;
  }

  if (*v1)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1 <= 2u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_6890(uint64_t a1)
{
  v1 = sub_A994();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_A9B4();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_A9D4();
  v19 = v7;
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_7118();
  v14 = sub_AAE4();
  sub_A9C4();
  sub_A9E4();
  v18 = *(v8 + 8);
  v18(v11, v7);
  v15 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_719C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_6D84;
  aBlock[3] = &unk_10C80;
  v16 = _Block_copy(aBlock);

  sub_A9A4();
  v23 = &_swiftEmptyArrayStorage;
  sub_7238(&qword_14750, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_4F18(&qword_14758, &qword_B488);
  sub_71BC();
  sub_AB04();
  sub_AAD4();
  _Block_release(v16);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  v18(v13, v19);
}

uint64_t sub_6C40(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16) != 6)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_7238(&qword_14568, type metadata accessor for HomeScreenSettingsListViewModel, &unk_B468);
      sub_A5D4();
    }
  }

  return result;
}

uint64_t sub_6D84(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_6DC8()
{
  v1 = OBJC_IVAR____TtC18HomeScreenSettings31HomeScreenSettingsListViewModel___observationRegistrar;
  v2 = sub_A604();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for HomeScreenSettingsListViewModel(uint64_t a1)
{
  result = qword_146B8;
  if (!qword_146B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6EB8(uint64_t a1)
{
  result = sub_A604();
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

uint64_t getEnumTagSinglePayload for HomeScreenSettingsListViewModel.CellIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeScreenSettingsListViewModel.CellIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_70CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10AC8;
  v6._object = a2;
  v4 = sub_AB44(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_7118()
{
  result = qword_14748;
  if (!qword_14748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_14748);
  }

  return result;
}

uint64_t sub_7164()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_71A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_71BC()
{
  result = qword_14760;
  if (!qword_14760)
  {
    sub_5820(&qword_14758, &qword_B488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14760);
  }

  return result;
}

uint64_t sub_7238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_7280()
{
  result = qword_14768;
  if (!qword_14768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14768);
  }

  return result;
}

unint64_t sub_7324()
{
  result = qword_14808;
  if (!qword_14808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14808);
  }

  return result;
}

uint64_t sub_7394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_A714();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_A5C4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  sub_4F18(&qword_14828, &qword_B578);
  v3[12] = swift_task_alloc();
  v6 = sub_A574();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  sub_AAC4();
  v3[16] = sub_AAB4();
  v8 = sub_AAA4();

  return _swift_task_switch(sub_757C, v8, v7);
}

uint64_t sub_757C()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];

  sub_AA24();
  sub_A554();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_7C6C(v0[12]);
LABEL_6:
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[6];
    sub_AA14();
    sub_AA34();
    (*(v11 + 8))(v10, v12);
    goto LABEL_7;
  }

  (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
  v7 = sub_A564();
  if (!v8 || (v9 = sub_70CC(v7, v8), v9 == 6))
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    goto LABEL_6;
  }

  v15 = v9;
  v16 = v0[5];
  v17 = *(v16 + 16);
  if (v17 == 6)
  {
    goto LABEL_14;
  }

  if ((sub_8D40(v17, v15) & 1) == 0)
  {
    v16 = v0[5];
LABEL_14:
    swift_getKeyPath();
    v18 = swift_task_alloc();
    *(v18 + 16) = v16;
    *(v18 + 24) = v15;
    v0[2] = v16;
    sub_7CFC(&qword_14568, type metadata accessor for HomeScreenSettingsListViewModel, &unk_B468);
    sub_A5D4();

    goto LABEL_15;
  }

  *(v16 + 16) = v15;
LABEL_15:
  v20 = v0[14];
  v19 = v0[15];
  v21 = v0[13];
  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[6];
  sub_AA14();
  sub_AA34();
  (*(v23 + 8))(v22, v24);
  (*(v20 + 8))(v19, v21);
LABEL_7:

  v13 = v0[1];

  return v13();
}

uint64_t sub_7850()
{
  v0 = sub_4F18(&qword_14810, &qword_B560);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  type metadata accessor for HomeScreenSettingsList(0);
  sub_7CFC(&qword_14818, type metadata accessor for HomeScreenSettingsList, &unk_B0E8);

  sub_AA44();
  sub_7C08();

  sub_AA04();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_79D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HomeScreenSettingsListViewModel(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 6;
  result = sub_A5F4();
  *a1 = v2;
  return result;
}

uint64_t sub_7A2C@<X0>(uint64_t a1@<X8>)
{

  return sub_4740(v2, a1);
}

uint64_t sub_7A68(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_7B14;

  return sub_7394(a1, a2, v2);
}

uint64_t sub_7B14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_7C08()
{
  result = qword_14820;
  if (!qword_14820)
  {
    sub_5820(&qword_14810, &qword_B560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14820);
  }

  return result;
}

uint64_t sub_7C6C(uint64_t a1)
{
  v2 = sub_4F18(&qword_14828, &qword_B578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7D54()
{
  sub_5820(&qword_14810, &qword_B560);
  sub_7C08();
  return swift_getOpaqueTypeConformance2();
}

id sub_7DF8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_7E54()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_14E98 = result;
  return result;
}

id sub_7EAC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLargeIconLayoutEnabled];
  *a2 = result;
  return result;
}

id sub_7EF4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 addsNewIconsToHomeScreen];
  *a2 = result;
  return result;
}

id sub_7F3C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsBadgesInAppLibrary];
  *a2 = result;
  return result;
}

id sub_7F84@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsHomeScreenSearchAffordance];
  *a2 = result;
  return result;
}

uint64_t SBSHomeScreenService.objectWillChange.getter()
{
  v0 = sub_4F18(&qword_14858, &qword_B610);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v48 - v2;
  v4 = sub_4F18(&qword_14860, &qword_B618);
  v76 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v48 - v5;
  v7 = sub_4F18(&qword_14868, &qword_B620);
  v75 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v66 = sub_4F18(&qword_14870, &qword_B628);
  v74 = *(v66 - 8);
  __chkstk_darwin(v66);
  v11 = &v48 - v10;
  v53 = sub_4F18(&qword_14878, &qword_B630);
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v48 - v12;
  sub_4F18(&qword_14880, qword_B638);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_B600;
  swift_getKeyPath();
  sub_A5A4();

  LOBYTE(v77) = 2;
  v62 = sub_4F18(&qword_14888, &qword_B688);
  v13 = sub_619C(&qword_14890, &qword_14868, &qword_B620, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
  v60 = sub_8B5C;
  v61 = v13;
  sub_A654();
  v68 = sub_619C(&qword_14898, &qword_14858, &qword_B610, &protocol conformance descriptor for Publishers.Scan<A, B>);
  v67 = sub_8B78;
  v56 = v0;
  sub_A634();
  v57 = *(v1 + 8);
  v58 = v1 + 8;
  v57(v3, v0);
  v65 = sub_619C(&qword_148A0, &qword_14860, &qword_B618, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v59 = v4;
  v50 = v6;
  v14 = sub_A624();
  v64 = *(v76 + 8);
  v76 += 8;
  v64(v6, v4);
  v15 = *(v75 + 8);
  v75 += 8;
  v73 = v15;
  v15(v9, v7);
  v77 = v14;
  v72 = sub_4F18(&qword_148A8, qword_B690);
  v51 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v71 = sub_619C(&qword_148B0, &qword_148A8, qword_B690, &protocol conformance descriptor for AnyPublisher<A, B>);
  v55 = v11;
  sub_A644();

  v70 = sub_619C(&qword_148B8, &qword_14870, &qword_B628, &protocol conformance descriptor for Publishers.Map<A, B>);
  v16 = v66;
  v17 = sub_A624();
  v18 = *(v74 + 8);
  v74 += 8;
  v69 = v18;
  v18(v11, v16);
  v19 = v63;
  *(v63 + 32) = v17;
  swift_getKeyPath();
  sub_A5A4();

  LOBYTE(v77) = 2;
  v49 = v3;
  v20 = v7;
  sub_A654();
  v21 = v50;
  v22 = v56;
  sub_A634();
  v23 = v3;
  v24 = v57;
  v57(v23, v22);
  v25 = v59;
  v26 = sub_A624();
  v64(v21, v25);
  v27 = v20;
  v73(v9, v20);
  v77 = v26;
  v28 = v55;
  sub_A644();

  v29 = v66;
  v30 = sub_A624();
  v69(v28, v29);
  *(v19 + 40) = v30;
  swift_getKeyPath();
  v31 = v9;
  sub_A5A4();

  LOBYTE(v77) = 2;
  v32 = v49;
  sub_A654();
  v33 = v21;
  v34 = v56;
  sub_A634();
  v35 = v32;
  v24(v32, v34);
  v36 = v59;
  v37 = sub_A624();
  v64(v33, v36);
  v73(v31, v27);
  v77 = v37;
  v38 = v55;
  sub_A644();

  v39 = v66;
  v40 = sub_A624();
  v69(v38, v39);
  *(v63 + 48) = v40;
  swift_getKeyPath();
  sub_A5A4();

  LOBYTE(v77) = 2;
  sub_A654();
  sub_A634();
  v57(v35, v34);
  v41 = v59;
  v42 = sub_A624();
  v64(v33, v41);
  v73(v31, v27);
  v77 = v42;
  sub_A644();

  v43 = sub_A624();
  v69(v38, v39);
  *(v63 + 56) = v43;
  sub_4F18(&qword_148C0, qword_B770);
  sub_619C(&qword_148C8, &qword_148C0, qword_B770, v51);
  v44 = v52;
  sub_A614();
  sub_619C(&qword_148D0, &qword_14878, &qword_B630, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v45 = v53;
  v46 = sub_A624();
  (*(v54 + 8))(v44, v45);
  return v46;
}

id sub_8AEC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 addsNewIconsToHomeScreen];
  *a2 = result;
  return result;
}

uint64_t sub_8B34@<X0>(uint64_t *a1@<X8>)
{
  result = SBSHomeScreenService.objectWillChange.getter();
  *a1 = result;
  return result;
}

_BYTE *sub_8B5C@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  if (*result == 2)
  {
    v3 = *a2;
  }

  else
  {
    v3 = 2;
  }

  *a3 = v3;
  return result;
}

id sub_8B84@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsBadgesInAppLibrary];
  *a2 = result;
  return result;
}

id sub_8BCC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showsHomeScreenSearchAffordance];
  *a2 = result;
  return result;
}

id sub_8C14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLargeIconLayoutEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_8CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9940();
  sub_A5E4();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_8D40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED000053544E4543;
  v3 = 0x45525F574F4C4C41;
  v4 = a1;
  v5 = 0x800000000000B960;
  v6 = 0xD00000000000001ALL;
  if (a1 == 4)
  {
    v6 = 0x45525F574F4C4C41;
    v5 = 0xED000053544E4543;
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = v6;
  }

  if (a1 == 3)
  {
    v8 = 0x800000000000B940;
  }

  else
  {
    v8 = v5;
  }

  v9 = 0x800000000000B900;
  v10 = 0xD000000000000015;
  if (a1 == 1)
  {
    v10 = 0xD000000000000013;
  }

  else
  {
    v9 = 0x800000000000B920;
  }

  if (a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0xD000000000000013;
  }

  if (!a1)
  {
    v9 = 0x800000000000B8E0;
  }

  if (a1 <= 2u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x800000000000B940;
      v3 = 0xD000000000000010;
    }

    else if (a2 != 4)
    {
      v2 = 0x800000000000B960;
      if (v12 != 0xD00000000000001ALL)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (v12 != v3)
    {
LABEL_39:
      v14 = sub_AB54();
      goto LABEL_40;
    }
  }

  else
  {
    if (!a2)
    {
      v2 = 0x800000000000B8E0;
LABEL_32:
      if (v12 != 0xD000000000000013)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (a2 == 1)
    {
      v2 = 0x800000000000B900;
      goto LABEL_32;
    }

    v2 = 0x800000000000B920;
    if (v12 != 0xD000000000000015)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v13 != v2)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

Swift::Void __swiftcall HomeScreenSettings.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for HomeScreenSettingsList(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = HomeScreenSettings;
  objc_msgSendSuper2(&v21, "viewDidLoad");

  sub_4740(v5, v4);
  v6 = objc_allocWithZone(sub_4F18(&qword_148E0, &qword_B7E8));
  v7 = sub_A7A4();
  if (qword_14438 != -1)
  {
    swift_once();
  }

  v8 = qword_14E98;
  v9 = sub_AA64();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  if (!v10)
  {
    sub_AA74();
    v10 = sub_AA64();
  }

  [v1 setTitle:v10];

  v11 = [v7 view];
  if (!v11)
  {
    v12 = v7;
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v1 view];
  if (v13)
  {
    v14 = v13;
    [v13 addSubview:v12];

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;

      [v12 setFrame:{0.0, 0.0, v18, v20}];
      [v12 setAutoresizingMask:18];
      [v1 addChildViewController:v7];
      [v7 didMoveToParentViewController:v1];

LABEL_10:
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t HomeScreenSettings.handleURL(_:withCompletion:)(uint64_t result, uint64_t (*a2)(void))
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = v2;
  v5 = result;
  sub_AB34();
  if (!*(v5 + 16) || (v6 = sub_9758(v12), (v7 & 1) == 0))
  {
    result = sub_979C(v12);
    goto LABEL_11;
  }

  sub_97F0(*(v5 + 56) + 32 * v6, v13);
  sub_979C(v12);
  result = swift_dynamicCast();
  if ((result & 1) == 0 || (result = sub_70CC(1752457584, 0xE400000000000000), result == 6))
  {
LABEL_11:
    if (!a2)
    {
      return result;
    }

    return a2();
  }

  v8 = result;
  v9 = *(v3 + OBJC_IVAR___HomeScreenSettings_viewModel);
  v10 = *(v9 + 16);
  if (v10 != 6)
  {
    result = sub_8D40(v10, v8);
    if (result)
    {
      *(v9 + 16) = v8;
      if (!a2)
      {
        return result;
      }

      return a2();
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v12[0] = v9;
  sub_9940();
  sub_A5D4();

  if (a2)
  {
    return a2();
  }

  return result;
}

void __swiftcall HomeScreenSettings.init(nibName:bundle:)(HomeScreenSettings *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_AA64();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id HomeScreenSettings.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___HomeScreenSettings_viewModel;
  type metadata accessor for HomeScreenSettingsListViewModel(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 6;
  sub_A5F4();
  *&v3[v6] = v7;
  if (a2)
  {
    v8 = sub_AA64();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = HomeScreenSettings;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id HomeScreenSettings.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___HomeScreenSettings_viewModel;
  type metadata accessor for HomeScreenSettingsListViewModel(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 6;
  sub_A5F4();
  *&v1[v3] = v4;
  v7.receiver = v1;
  v7.super_class = HomeScreenSettings;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

unint64_t sub_9758(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB14(*(v2 + 40));

  return sub_984C(a1, v4);
}

uint64_t sub_97F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_984C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_9A3C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_AB24();
      sub_979C(v8);
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

unint64_t sub_9940()
{
  result = qword_14568;
  if (!qword_14568)
  {
    type metadata accessor for HomeScreenSettingsListViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14568);
  }

  return result;
}

unint64_t type metadata accessor for HomeScreenSettings()
{
  result = qword_14910;
  if (!qword_14910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_14910);
  }

  return result;
}

uint64_t sub_99E4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_99F4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

__n128 sub_9A98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_9AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_9AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_9B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v24 = a5;
  v9 = a4 >> 8;
  v10 = sub_4F18(&qword_14918, &qword_B8C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_4F18(&qword_14448, &qword_B098);
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  v15 = &v13[*(sub_4F18(&qword_14450, &unk_B0A0) + 36)];
  *v15 = v9;
  v15[1] = 1;
  v27 = a2;
  v28 = a3;
  v29 = v5;
  sub_4F18(&qword_14920, &qword_B8C8);
  sub_A944();
  if (v25 == 6 || (sub_8D40(v25, HIBYTE(v5)) & 1) == 0)
  {
    v17 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v16 = sub_A8C4();
  }

  else
  {
    v16 = sub_A8B4();
  }

  v18 = v16;
  v19 = sub_A984();
  v27 = a2;
  v28 = a3;
  v29 = v5;
  sub_A944();
  v25 = v18;
  v26 = v19;
  sub_4F18(&qword_14928, &qword_B8D0);
  sub_9DE4();
  v20 = sub_A934();
  v21 = v24;
  (*(v11 + 32))(v24, v13, v10);
  result = sub_4F18(&qword_14948, &qword_B8E0);
  *(v21 + *(result + 36)) = v20;
  return result;
}

unint64_t sub_9DE4()
{
  result = qword_14930;
  if (!qword_14930)
  {
    sub_5820(&qword_14928, &qword_B8D0);
    sub_619C(&qword_14938, &qword_14940, &qword_B8D8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14930);
  }

  return result;
}

unint64_t sub_9EA0()
{
  result = qword_14950;
  if (!qword_14950)
  {
    sub_5820(&qword_14948, &qword_B8E0);
    sub_5820(&qword_14448, &qword_B098);
    sub_619C(&qword_14958, &qword_14448, &qword_B098, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_7280();
    swift_getOpaqueTypeConformance2();
    sub_619C(&qword_14960, &qword_14968, qword_B8E8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14950);
  }

  return result;
}

void sub_9FDC()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_AA64();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_14EA0 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A05C(int a1, int a2, int a3, int a4)
{
  if (qword_14E88 == -1)
  {
    if (qword_14E90)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_A524();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_14E90)
    {
      return _availability_version_check();
    }
  }

  if (qword_14E80 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_A53C();
    a3 = v10;
    a4 = v9;
    v8 = dword_14E70 < v11;
    if (dword_14E70 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_14E74 > a3)
      {
        return 1;
      }

      if (dword_14E74 >= a3)
      {
        return dword_14E78 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_14E70 < a2;
  if (dword_14E70 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_A1F0(uint64_t result)
{
  v1 = qword_14E90;
  if (qword_14E90)
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
      qword_14E90 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_14E70, &dword_14E74, &dword_14E78);
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