void sub_2238(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v6)
    {
      v8 = 138412290;
      v9[0] = v5;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[FitnessSettingsController] Error fetching storefront content availability: %@", &v8, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v7 = *(*(a1 + 32) + 144);
      v8 = 67109376;
      LODWORD(v9[0]) = v7;
      WORD2(v9[0]) = 1024;
      *(v9 + 6) = a2;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[FitnessSettingsController] Old isContentAvailable: %b new isContentAvailable: %b", &v8, 0xEu);
    }

    *(*(a1 + 32) + 144) = a2;
    [*(a1 + 32) reloadSpecifiers];
  }
}

uint64_t sub_2E34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1FA50();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6DF4(&qword_2CAD8, &qword_20F28);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FitnessPlusWorkoutsSettings(0);
  sub_97CC(v1 + *(v10 + 20), v9, &qword_2CAD8, &qword_20F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1F920();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20080();
    v13 = sub_1FBA0();
    sub_1F8E0();

    sub_1FA40();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_303C@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v66 = sub_1F920();
  v68 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FitnessPlusWorkoutsSettings(0);
  v64 = *(v3 - 8);
  v63 = *(v64 + 64);
  __chkstk_darwin(v3 - 8);
  v62 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1FA80();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v59 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1F990();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6DF4(&qword_2CBD8, &qword_21010);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v53 = sub_6DF4(&qword_2CBE0, &qword_21018);
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v49 = &v49 - v14;
  v56 = sub_6DF4(&qword_2CBE8, &qword_21020);
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = &v49 - v15;
  v58 = sub_6DF4(&qword_2CBF0, &qword_21028);
  __chkstk_darwin(v58);
  v52 = &v49 - v16;
  v69 = v1;
  sub_6DF4(&qword_2CBF8, &qword_21030);
  sub_96B4(&qword_2CC00, &qword_2CBF8, &qword_21030, &protocol conformance descriptor for TupleView<A>);
  sub_1FBE0();
  sub_1FEB0();
  v17 = sub_96B4(&qword_2CC08, &qword_2CBD8, &qword_21010, &protocol conformance descriptor for Form<A>);
  v18 = sub_9250(&qword_2CC10, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
  v19 = v50;
  sub_1FCD0();
  v20 = v19;
  (*(v7 + 8))(v9, v19);
  (*(v11 + 8))(v13, v10);
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23 = sub_1FF70();
  v24 = sub_1FF70();
  v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

  v26 = sub_1FF80();
  v28 = v27;

  v74 = v26;
  v75 = v28;
  v70 = v10;
  v71 = v20;
  v72 = v17;
  v73 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_748C();
  v31 = v51;
  v32 = v53;
  v33 = v49;
  sub_1FC60();

  v34 = v32;
  (*(v55 + 8))(v33, v32);
  v35 = v59;
  v36 = v60;
  v37 = v61;
  (*(v60 + 104))(v59, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v61);
  v70 = v34;
  v71 = &type metadata for String;
  v72 = OpaqueTypeConformance2;
  v73 = v30;
  swift_getOpaqueTypeConformance2();
  v38 = v52;
  v39 = v56;
  sub_1FC80();
  (*(v36 + 8))(v35, v37);
  (*(v57 + 8))(v31, v39);
  v40 = v54;
  v41 = v62;
  sub_74E0(v54, v62);
  v42 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v43 = swift_allocObject();
  sub_7548(v41, v43 + v42);
  v44 = (v38 + *(v58 + 36));
  *v44 = sub_75AC;
  v44[1] = v43;
  v44[2] = 0;
  v44[3] = 0;
  v45 = v65;
  sub_2E34(v65);
  sub_74E0(v40, v41);
  v46 = swift_allocObject();
  sub_7548(v41, v46 + v42);
  sub_7620();
  sub_9250(&qword_2CC28, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v47 = v66;
  sub_1FCC0();

  (*(v68 + 8))(v45, v47);
  return sub_976C(v38, &qword_2CBF0, &qword_21028);
}

uint64_t sub_3930@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = sub_6DF4(&qword_2CC78, &qword_21080);
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v43 = &v43 - v4;
  v5 = sub_6DF4(&qword_2CC80, &qword_21088);
  v6 = __chkstk_darwin(v5 - 8);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v43 - v8;
  v9 = sub_6DF4(&qword_2CC88, &qword_21090);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v13 = sub_6DF4(&qword_2CC90, &qword_21098);
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = __chkstk_darwin(v13);
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  v53 = a1;
  sub_4DE8(v56);
  sub_4F10(v54);
  sub_6DF4(&qword_2CC98, &qword_210A0);
  sub_96B4(&qword_2CCA0, &qword_2CC98, &qword_210A0, &protocol conformance descriptor for ZStack<A>);
  sub_1FE20();
  v18 = type metadata accessor for FitnessPlusWorkoutsSettings(0);
  v19 = (a1 + *(v18 + 44));
  v20 = *v19;
  v21 = *(v19 + 1);
  v54[0] = v20;
  v55 = v21;
  sub_6DF4(&qword_2CC38, &unk_21040);
  sub_1FD80();
  sub_903C();
  v46 = v17;
  sub_1FC90();

  (*(v10 + 8))(v12, v9);
  v22 = (a1 + *(v18 + 36));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v56[0]) = v23;
  v56[1] = v24;
  sub_1FD60();
  if (v54[0] == 1)
  {
    sub_5774(v56);
    sub_6DF4(&qword_2CCB8, &qword_210B0);
    sub_96B4(&qword_2CCC0, &qword_2CCB8, &qword_210B0, &protocol conformance descriptor for Button<A>);
    v25 = v43;
    sub_1FE10();
    v26 = v49;
    v27 = v47;
    v28 = v25;
    v29 = v50;
    (*(v49 + 32))(v47, v28, v50);
    v30 = 0;
    v31 = v29;
    v32 = v26;
  }

  else
  {
    v30 = 1;
    v32 = v49;
    v31 = v50;
    v27 = v47;
  }

  (*(v32 + 56))(v27, v30, 1, v31);
  v33 = v44;
  v34 = v45;
  v35 = *(v44 + 16);
  v36 = v48;
  v37 = v46;
  v35(v48, v46, v45);
  v38 = v51;
  sub_97CC(v27, v51, &qword_2CC80, &qword_21088);
  v39 = v52;
  v35(v52, v36, v34);
  v40 = sub_6DF4(&qword_2CCB0, &qword_210A8);
  sub_97CC(v38, &v39[*(v40 + 48)], &qword_2CC80, &qword_21088);
  sub_976C(v27, &qword_2CC80, &qword_21088);
  v41 = *(v33 + 8);
  v41(v37, v34);
  sub_976C(v38, &qword_2CC80, &qword_21088);
  return (v41)(v36, v34);
}

uint64_t sub_3F04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1FEA0();
  a2[1] = v4;
  v5 = sub_6DF4(&qword_2CCE8, &qword_210D8);
  return sub_3F54(a1, a2 + *(v5 + 44));
}

uint64_t sub_3F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for FitnessPlusWorkoutsSettings(0);
  v4 = v3 - 8;
  v62 = *(v3 - 8);
  __chkstk_darwin(v3);
  v63 = v5;
  v64 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6DF4(&qword_2CCF0, &qword_210E0);
  v7 = __chkstk_darwin(v6 - 8);
  v78 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = &v61 - v9;
  v10 = type metadata accessor for FitnessPlusAudioLanguageSettings(0);
  __chkstk_darwin(v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6DF4(&qword_2CCF8, &qword_210E8);
  v73 = *(v13 - 8);
  v74 = v13;
  __chkstk_darwin(v13);
  v66 = &v61 - v14;
  v72 = sub_6DF4(&qword_2CD00, &qword_210F0);
  __chkstk_darwin(v72);
  v70 = &v61 - v15;
  v71 = sub_6DF4(&qword_2CD08, &qword_210F8);
  v16 = __chkstk_darwin(v71);
  v76 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v69 = &v61 - v19;
  __chkstk_darwin(v18);
  v75 = &v61 - v20;
  v81 = a1;
  sub_6DF4(&qword_2CAF8, &qword_20F80);
  sub_1FD80();
  v21 = (a1 + *(v4 + 36));
  v23 = v21[1];
  v82 = *v21;
  v22 = v82;
  v83 = v23;
  sub_6DF4(&qword_2CC58, &qword_21060);
  sub_1FD60();
  v24 = v85;
  v25 = *(v4 + 40);
  v65 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = *(v26 + 1);
  v68 = v27;
  LOBYTE(v85) = v27;
  v67 = v28;
  v86 = v28;
  v80 = sub_6DF4(&qword_2CC38, &unk_21040);
  sub_1FD80();
  v29 = v82;
  v30 = v83;
  v31 = v84;
  *&v12[v10[6]] = swift_getKeyPath();
  sub_6DF4(&qword_2CAD8, &qword_20F28);
  swift_storeEnumTagMultiPayload();
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v32 = v10[5];
  *&v12[v32] = swift_getKeyPath();
  sub_6DF4(&qword_2CD10, &qword_21130);
  swift_storeEnumTagMultiPayload();
  v33 = &v12[v10[8]];
  v85 = v24;
  sub_6DF4(&qword_2CAE0, &qword_20F30);
  sub_1FD50();
  v34 = v83;
  *v33 = v82;
  v33[1] = v34;
  v35 = v66;
  v36 = &v12[v10[9]];
  *v36 = v29;
  *(v36 + 1) = v30;
  v36[16] = v31;
  v37 = [objc_opt_self() autoupdatingCurrentLocale];
  sub_1F500();

  sub_6DF4(&qword_2CD18, &qword_21138);
  sub_96B4(&qword_2CD20, &qword_2CD18, &qword_21138, &protocol conformance descriptor for HStack<A>);
  sub_9250(&qword_2CD28, type metadata accessor for FitnessPlusAudioLanguageSettings, &unk_21448);
  sub_1F950();
  v82 = v22;
  v83 = v23;
  sub_1FD60();
  v38 = *(v85 + 16);

  if (v38)
  {
    v39 = v68;
    LOBYTE(v82) = v68;
    v40 = v67;
    v83 = v67;
    sub_1FD60();
    v41 = v85 ^ 1;
  }

  else
  {
    v41 = 1;
    v40 = v67;
    v39 = v68;
  }

  KeyPath = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = v41 & 1;
  v44 = v70;
  (*(v73 + 32))(v70, v35, v74);
  v45 = (v44 + *(v72 + 36));
  *v45 = KeyPath;
  v45[1] = sub_92A8;
  v45[2] = v43;
  v46 = sub_1FAF0();
  v47 = v69;
  sub_92C0(v44, v69, &qword_2CD00, &qword_210F0);
  *(v47 + *(v71 + 36)) = v46;
  v48 = v75;
  sub_92C0(v47, v75, &qword_2CD08, &qword_210F8);
  v82 = v22;
  v83 = v23;
  sub_1FD60();
  v49 = *(v85 + 16);

  v50 = v77;
  if (v49 && (LOBYTE(v82) = v39, v83 = v40, sub_1FD60(), (v85 & 1) != 0))
  {
    v51 = 1;
  }

  else
  {
    v82 = sub_1FD30();
    LOWORD(v83) = 256;
    BYTE2(v83) = 0;
    v52 = v64;
    sub_74E0(v65, v64);
    v53 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v54 = swift_allocObject();
    sub_7548(v52, v54 + v53);
    sub_6DF4(&qword_2CD30, &qword_21170);
    sub_95D0();
    sub_1FC40();

    v51 = 0;
  }

  v55 = sub_6DF4(&qword_2CD60, &qword_21188);
  (*(*(v55 - 8) + 56))(v50, v51, 1, v55);
  v56 = v76;
  sub_97CC(v48, v76, &qword_2CD08, &qword_210F8);
  v57 = v78;
  sub_96FC(v50, v78);
  v58 = v79;
  sub_97CC(v56, v79, &qword_2CD08, &qword_210F8);
  v59 = sub_6DF4(&qword_2CD68, &qword_21190);
  sub_96FC(v57, v58 + *(v59 + 48));
  sub_976C(v50, &qword_2CCF0, &qword_210E0);
  sub_976C(v48, &qword_2CD08, &qword_210F8);
  sub_976C(v57, &qword_2CCF0, &qword_210E0);
  return sub_976C(v56, &qword_2CD08, &qword_210F8);
}

double sub_4844@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1FA90();
  v15 = 1;
  sub_494C(&v9);
  v18 = v11;
  v19 = v12;
  v16 = v9;
  v17 = v10;
  v21[2] = v11;
  v21[3] = v12;
  v21[4] = v13;
  v21[1] = v10;
  v20 = v13;
  v21[0] = v9;
  sub_97CC(&v16, &v8, &qword_2CD70, &qword_21198);
  sub_976C(v21, &qword_2CD70, &qword_21198);
  *&v14[7] = v16;
  *&v14[71] = v20;
  *&v14[55] = v19;
  *&v14[39] = v18;
  *&v14[23] = v17;
  v4 = *&v14[48];
  *(a2 + 49) = *&v14[32];
  *(a2 + 65) = v4;
  *(a2 + 81) = *&v14[64];
  result = *v14;
  v6 = *&v14[16];
  *(a2 + 17) = *v14;
  v7 = v15;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 96) = *&v14[79];
  *(a2 + 33) = v6;
  return result;
}

uint64_t sub_494C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1F640();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7 = sub_1FF70();
  v8 = sub_1FF70();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_1FF80();
  v12 = v11;

  v47 = v10;
  v48 = v12;
  sub_748C();
  v13 = sub_1FC10();
  v45 = v14;
  HIDWORD(v42) = v15;
  v17 = v16;
  type metadata accessor for FitnessPlusWorkoutsSettings(0);
  sub_6DF4(&qword_2CAF8, &qword_20F80);
  sub_1FD60();
  v18 = sub_1F630();
  v20 = v19;
  (*(v43 + 8))(v4, v44);
  v49._countAndFlagsBits = v18;
  v49._object = v20;
  v21 = sub_1F4E0(v49);
  v23 = v22;

  if (v23)
  {
    v47 = v21;
    v48 = v23;
    v24 = sub_1FC10();
    v26 = v25;
    v28 = v27;
    LODWORD(v47) = sub_1FB00();
    v29 = sub_1FC00();
    v23 = v30;
    v44 = v13;
    v31 = v17;
    v33 = v32;
    v35 = v34;
    sub_9238(v24, v26, v28 & 1);

    v36 = v33 & 1;
    v17 = v31;
    v13 = v44;
    sub_9834(v29, v23, v36);
  }

  else
  {
    v29 = 0;
    v36 = 0;
    v35 = 0;
  }

  v37 = BYTE4(v42) & 1;
  LOBYTE(v47) = BYTE4(v42) & 1;
  v46 = 1;
  v38 = v45;
  sub_9834(v13, v45, BYTE4(v42) & 1);

  sub_9844(v29, v23, v36, v35);
  sub_9888(v29, v23, v36, v35);
  v39 = v47;
  v40 = v46;
  *a1 = v13;
  *(a1 + 8) = v38;
  *(a1 + 16) = v39;
  *(a1 + 24) = v17;
  *(a1 + 32) = 0;
  *(a1 + 40) = v40;
  *(a1 + 48) = v29;
  *(a1 + 56) = v23;
  *(a1 + 64) = v36;
  *(a1 + 72) = v35;
  sub_9888(v29, v23, v36, v35);
  sub_9238(v13, v38, v37);
}

uint64_t sub_4CE0(uint64_t a1)
{
  type metadata accessor for FitnessPlusWorkoutsSettings(0);
  sub_6DF4(&qword_2CC58, &qword_21060);
  sub_1FD60();
  v1 = *(v3 + 16);

  if (v1)
  {
    sub_6DF4(&qword_2CC38, &unk_21040);
    sub_1FD60();
  }

  sub_6DF4(&qword_2CC38, &unk_21040);
  return sub_1FD70();
}

uint64_t sub_4DE8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_4F10@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_5038@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_6DF4(&qword_2CCE0, &qword_210D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v37 - v2;
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass:ObjCClassFromMetadata];
  v7 = sub_1FF70();
  v8 = sub_1FF70();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_1FF80();
  v12 = v11;

  v43 = v10;
  v44 = v12;
  sub_748C();
  v13 = sub_1FC10();
  v40 = v14;
  v41 = v13;
  v38 = v15;
  v39 = v16;
  v17 = [v5 bundleForClass:ObjCClassFromMetadata];
  v18 = sub_1FF70();
  v19 = sub_1FF70();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_1FF80();
  v23 = v22;

  v43 = v21;
  v44 = v23;
  v24 = [v5 bundleForClass:{ObjCClassFromMetadata, sub_1FC10()}];
  v25 = sub_1FF70();
  v26 = sub_1FF70();
  v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

  v28 = sub_1FF80();
  v30 = v29;

  v43 = v28;
  v44 = v30;
  v31 = sub_1FC10();
  v33 = v32;
  LOBYTE(v30) = v34;
  sub_1FCF0();
  sub_9238(v31, v33, v30 & 1);

  v35 = sub_1FD00();
  (*(*(v35 - 8) + 56))(v3, 0, 1, v35);
  return sub_1FCE0();
}

id sub_5420()
{
  v0 = sub_6DF4(&qword_2CCC8, &qword_210B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_1F4B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F4A0();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_976C(v2, &qword_2CCC8, &qword_210B8);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v9 = result;
    sub_1F490(v8);
    v11 = v10;
    sub_90F8(&_swiftEmptyArrayStorage);
    isa = sub_1FF60().super.isa;

    [v9 openSensitiveURL:v11 withOptions:isa];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_564C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_5774@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_589C(uint64_t a1)
{
  sub_5954();
  v1 = FIGetActivePairedDevice();
  type metadata accessor for FitnessPlusWorkoutsSettings(0);

  sub_6DF4(&qword_2CC38, &unk_21040);
  sub_1FD70();

  sub_5E94();
  return sub_63D4();
}

uint64_t sub_5954()
{
  v1 = type metadata accessor for FitnessPlusWorkoutsSettings(0);
  v33 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v34 = v2;
  v35 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6DF4(&qword_2CC68, &unk_21070);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v36 = v6;
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v31 - v7;
  v38 = sub_6DF4(&qword_2CC48, &unk_21050);
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v31 - v9;
  v11 = sub_1FA50();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 8);

  if ((v15 & 1) == 0)
  {
    sub_20080();
    v32 = v11;
    v16 = sub_1FBA0();
    sub_1F8E0();

    sub_1FA40();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v32);
  }

  sub_6DF4(&qword_2CC70, &unk_21B80);
  sub_1F5A0();

  sub_7800(v40, v40[3]);
  v17 = v39;
  sub_1F760();
  v18 = v35;
  sub_74E0(v0, v35);
  v19 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v20 = swift_allocObject();
  sub_7548(v18, v20 + v19);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_8DD0;
  *(v21 + 24) = v20;
  v22 = v37;
  (*(v4 + 16))(v37, v17, v3);
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = (v36 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v4 + 32))(v25 + v23, v22, v3);
  v26 = (v25 + v24);
  *v26 = sub_8E4C;
  v26[1] = v21;
  sub_1F690();
  (*(v4 + 8))(v17, v3);
  v27 = v38;
  v28 = sub_1F6A0();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v28(sub_9A10, v29);

  (*(v8 + 8))(v10, v27);
  return sub_7844(v40);
}

uint64_t sub_5E94()
{
  v1 = type metadata accessor for FitnessPlusWorkoutsSettings(0);
  v33 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v34 = v2;
  v35 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6DF4(&qword_2CC40, &unk_21980);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v36 = v6;
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v31 - v7;
  v38 = sub_6DF4(&qword_2CC48, &unk_21050);
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v31 - v9;
  v11 = sub_1FA50();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 8);

  if ((v15 & 1) == 0)
  {
    sub_20080();
    v32 = v11;
    v16 = sub_1FBA0();
    sub_1F8E0();

    sub_1FA40();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v32);
  }

  sub_6DF4(&qword_2CC50, &qword_21FA0);
  sub_1F5A0();

  sub_7800(v40, v40[3]);
  v17 = v39;
  sub_1F7C0();
  v18 = v35;
  sub_74E0(v0, v35);
  v19 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v20 = swift_allocObject();
  sub_7548(v18, v20 + v19);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_7890;
  *(v21 + 24) = v20;
  v22 = v37;
  (*(v4 + 16))(v37, v17, v3);
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = (v36 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v4 + 32))(v25 + v23, v22, v3);
  v26 = (v25 + v24);
  *v26 = sub_8AF4;
  v26[1] = v21;
  sub_1F690();
  (*(v4 + 8))(v17, v3);
  v27 = v38;
  v28 = sub_1F6A0();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v28(sub_8B3C, v29);

  (*(v8 + 8))(v10, v27);
  return sub_7844(v40);
}

uint64_t sub_63D4()
{
  v1 = v0;
  v2 = sub_1FA50();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 8);

  if ((v6 & 1) == 0)
  {
    sub_20080();
    v7 = sub_1FBA0();
    sub_1F8E0();

    sub_1FA40();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_6DF4(&qword_2CC30, &qword_21038);
  sub_1F5A0();

  sub_7800(v20, v20[3]);
  sub_1F7D0();
  v8 = sub_1F5D0();
  v10 = v9;
  if (v8 == sub_1F5D0() && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_20190();
  }

  v14 = (v1 + *(type metadata accessor for FitnessPlusWorkoutsSettings(0) + 32));
  v15 = *v14;
  v16 = *(v14 + 1);
  v18[8] = v15;
  v19 = v16;
  v18[7] = v13 & 1;
  sub_6DF4(&qword_2CC38, &unk_21040);
  sub_1FD70();
  return sub_7844(v20);
}

uint64_t sub_661C(uint64_t a1)
{
  v2 = sub_1F640();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = *(v3 + 16);
  v9(v11 - v7, a1, v2);
  type metadata accessor for FitnessPlusWorkoutsSettings(0);
  v9(v6, v8, v2);
  sub_6DF4(&qword_2CAF8, &qword_20F80);
  sub_1FD70();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_6784(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v16 = a2;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_19404(*(v4 + 16), 0);
    v7 = sub_8C58(v17, v6 + 4, v5, v4);
    v8 = v17[0];

    sub_8DB0(v8);
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_8;
    }

    v2 = v14;
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  v17[0] = v6;
  sub_7A98(sub_8C38, v15);
  if (!v2)
  {
    v9 = v17[0];
    v10 = (a2 + *(type metadata accessor for FitnessPlusWorkoutsSettings(0) + 28));
    v12 = *v10;
    v11 = v10[1];
    v17[0] = v12;
    v17[1] = v11;
    v17[6] = v9;
    sub_6DF4(&qword_2CC58, &qword_21060);
    return sub_1FD70();
  }

LABEL_8:

  __break(1u);
  return result;
}

uint64_t sub_68D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  type metadata accessor for FitnessPlusWorkoutsSettings(0);
  v15._countAndFlagsBits = v2;
  v15._object = v3;
  v6 = sub_1F4E0(v15);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v16._countAndFlagsBits = v4;
    v16._object = v5;
    v10 = sub_1F4E0(v16);
    if (v11)
    {
      if (v8 == v10 && v9 == v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_20190();
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

void sub_69B8(uint64_t a1@<X8>)
{
  v2 = sub_1F640();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v9 = type metadata accessor for FitnessPlusWorkoutsSettings(0);
  v10 = v9[5];
  *(a1 + v10) = swift_getKeyPath();
  sub_6DF4(&qword_2CAD8, &qword_20F28);
  swift_storeEnumTagMultiPayload();
  sub_1F610();
  (*(v3 + 16))(v6, v8, v2);
  sub_1FD50();
  (*(v3 + 8))(v8, v2);
  v11 = (a1 + v9[7]);
  v23 = &_swiftEmptyArrayStorage;
  sub_6DF4(&qword_2CAE0, &qword_20F30);
  sub_1FD50();
  v12 = v25;
  *v11 = v24;
  v11[1] = v12;
  v13 = a1 + v9[8];
  LOBYTE(v23) = 0;
  sub_1FD50();
  v14 = v25;
  *v13 = v24;
  *(v13 + 8) = v14;
  v15 = a1 + v9[9];
  LOBYTE(v23) = 0;
  sub_1FD50();
  v16 = v25;
  *v15 = v24;
  *(v15 + 8) = v16;
  v17 = a1 + v9[10];
  LOBYTE(v23) = 0;
  sub_1FD50();
  v18 = v25;
  *v17 = v24;
  *(v17 + 8) = v18;
  v19 = a1 + v9[11];
  LOBYTE(v23) = 0;
  sub_1FD50();
  v20 = v25;
  *v19 = v24;
  *(v19 + 8) = v20;
  v21 = [objc_opt_self() autoupdatingCurrentLocale];
  sub_1F500();
}

uint64_t type metadata accessor for FitnessPlusWorkoutsSettings(uint64_t a1)
{
  result = qword_2CB58;
  if (!qword_2CB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6D2C(uint64_t a1)
{
  v2 = sub_1F920();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1F9E0();
}

uint64_t sub_6DF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_6E98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6DF4(&qword_2CAF0, &qword_20F78);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_6DF4(&qword_2CAF8, &qword_20F80);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[7]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1F540();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_7034(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6DF4(&qword_2CAF0, &qword_20F78);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_6DF4(&qword_2CAF8, &qword_20F80);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v14 = sub_1F540();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[12];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

void sub_71BC(uint64_t a1)
{
  sub_7358(319, &qword_2CB68, &type metadata accessor for Dependencies, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_7358(319, &qword_2CB70, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_7358(319, &qword_2CB78, &type metadata accessor for AudioLanguagePreference, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_73BC(319);
        if (v4 <= 0x3F)
        {
          sub_98F4(319, &qword_2CB88, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_1F540();
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

void sub_7358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_73BC(uint64_t a1)
{
  if (!qword_2CB80)
  {
    sub_7420(&qword_2CAE0, &qword_20F30);
    v1 = sub_1FD90();
    if (!v2)
    {
      atomic_store(v1, &qword_2CB80);
    }
  }
}

uint64_t sub_7420(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_748C()
{
  result = qword_2CC18;
  if (!qword_2CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CC18);
  }

  return result;
}

uint64_t sub_74E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusWorkoutsSettings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusWorkoutsSettings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_7620()
{
  result = qword_2CC20;
  if (!qword_2CC20)
  {
    sub_7420(&qword_2CBF0, &qword_21028);
    sub_7420(&qword_2CBE8, &qword_21020);
    sub_7420(&qword_2CBE0, &qword_21018);
    sub_7420(&qword_2CBD8, &qword_21010);
    sub_1F990();
    sub_96B4(&qword_2CC08, &qword_2CBD8, &qword_21010, &protocol conformance descriptor for Form<A>);
    sub_9250(&qword_2CC10, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
    swift_getOpaqueTypeConformance2();
    sub_748C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CC20);
  }

  return result;
}

void *sub_7800(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_7844(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_7910@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1FA20();
  *a1 = result & 1;
  return result;
}

unint64_t sub_7968(uint64_t a1, uint64_t a2)
{
  sub_201B0();
  sub_1FFA0();
  v4 = sub_201D0();

  return sub_79E0(a1, a2, v4);
}

unint64_t sub_79E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_20190())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

Swift::Int sub_7A98(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_8DB8(v5);
  }

  result = sub_7B1C(a1, a2);
  *v2 = v5;
  return result;
}

Swift::Int sub_7B1C(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *(v2 + 8);
  result = sub_20160(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_1FFF0();
        v8[2] = v5 / 2;
      }

      v10[0] = v8 + 4;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_7D34(v10, v11, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_7C24(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_7C24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v21 = a4;
  if (a3 != a2)
  {
    v6 = *v4;
    v7 = (*v4 + 16 * a3);
    v8 = result - a3;
LABEL_4:
    v17 = v7;
    v18 = a3;
    v9 = (v6 + 16 * a3);
    v10 = *v9;
    v11 = v9[1];
    v16 = v8;
    while (1)
    {
      v20[0] = v10;
      v20[1] = v11;
      v12 = *(v7 - 1);
      v19[0] = *(v7 - 2);
      v19[1] = v12;

      v13 = v21(v20, v19);

      if (v5)
      {
        break;
      }

      if (v13)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *v7;
        v11 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v11;
        *(v7 - 2) = v10;
        v7 -= 2;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v18 + 1;
      v7 = v17 + 2;
      v8 = v16 - 1;
      if (v18 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_7D34(uint64_t result, uint64_t a2, char *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v108 = result;
  v9 = *(a3 + 1);
  if (v9 < 1)
  {
    v11 = &_swiftEmptyArrayStorage;
LABEL_91:
    v7 = v8;
    v8 = *v108;
    if (*v108)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_93;
    }

    goto LABEL_131;
  }

  v10 = 0;
  v11 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v13 >= v9)
    {
      v26 = v13;
    }

    else
    {
      v14 = v12;
      v15 = *v8;
      v16 = (*v8 + 16 * v13);
      v17 = v16[1];
      v115 = *v16;
      v116 = v17;
      v18 = (v15 + 16 * v14);
      v7 = v18[1];
      v113 = *v18;
      v114 = v7;

      v109 = a4(&v115, &v113);
      if (v6)
      {
LABEL_102:
      }

      v19 = v9;
      v20 = 0;
      v100 = v19 - 1;
      v104 = v14;
      v106 = v19;
      v21 = v14 - v19 + 2;
      v22 = 16 * v14;
      v23 = v15 + v22 + 24;
      while (v21 + v20)
      {
        v24 = *(v23 + 16);
        v115 = *(v23 + 8);
        v116 = v24;
        v7 = *v23;
        v113 = *(v23 - 8);
        v114 = v7;

        v25 = a4(&v115, &v113);

        ++v20;
        v23 += 16;
        if ((v109 ^ v25))
        {
          v12 = v104;
          v100 = v104 + v20;
          v26 = v104 + v20 + 1;
          goto LABEL_12;
        }
      }

      v12 = v104;
      v26 = v106;
LABEL_12:
      v8 = a3;
      if (v109)
      {
        if (v26 < v12)
        {
          goto LABEL_125;
        }

        if (v12 <= v100)
        {
          v87 = 0;
          v88 = 16 * v26;
          v89 = v12;
          do
          {
            if (v89 != v26 + v87 - 1)
            {
              v90 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v91 = (v90 + v22);
              v92 = v90 + v88;
              v93 = *v91;
              v94 = v91[1];
              *v91 = *(v92 - 16);
              *(v92 - 16) = v93;
              *(v92 - 8) = v94;
            }

            ++v89;
            --v87;
            v88 -= 16;
            v22 += 16;
          }

          while (v89 < v26 + v87);
        }
      }
    }

    v27 = *(v8 + 1);
    if (v26 >= v27)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v26, v12))
    {
      goto LABEL_121;
    }

    if (v26 - v12 >= a6)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v12, a6))
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v28 = v26;
    if (v12 + a6 >= v27)
    {
      v29 = *(v8 + 1);
    }

    else
    {
      v29 = v12 + a6;
    }

    if (v29 < v12)
    {
      goto LABEL_124;
    }

    v30 = v28;
    if (v28 == v29)
    {
      v26 = v28;
LABEL_25:
      if (v26 < v12)
      {
        goto LABEL_120;
      }

      goto LABEL_26;
    }

    v77 = *v8;
    v78 = *v8 + 16 * v28;
    v105 = v12;
    v79 = v12 - v30;
    v111 = v29;
    do
    {
      v107 = v30;
      v80 = (v77 + 16 * v30);
      v81 = *v80;
      v82 = v80[1];
      v99 = v79;
      v101 = v78;
      v83 = v78;
      do
      {
        v115 = v81;
        v116 = v82;
        v7 = *(v83 - 1);
        v113 = *(v83 - 2);
        v114 = v7;

        v84 = a4(&v115, &v113);
        if (v6)
        {
          goto LABEL_102;
        }

        v85 = v84;

        if ((v85 & 1) == 0)
        {
          break;
        }

        if (!v77)
        {
          goto LABEL_127;
        }

        v81 = *v83;
        v82 = v83[1];
        *v83 = *(v83 - 1);
        *(v83 - 1) = v82;
        *(v83 - 2) = v81;
        v83 -= 2;
      }

      while (!__CFADD__(v79++, 1));
      v30 = v107 + 1;
      v78 = v101 + 16;
      v79 = v99 - 1;
      v26 = v111;
    }

    while (v107 + 1 != v111);
    v8 = a3;
    v12 = v105;
    if (v111 < v105)
    {
      goto LABEL_120;
    }

LABEL_26:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_8914(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v32 = *(v11 + 2);
    v31 = *(v11 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      result = sub_8914((v31 > 1), v32 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v33;
    v34 = &v11[16 * v32];
    *(v34 + 4) = v12;
    *(v34 + 5) = v26;
    v7 = *v108;
    if (!*v108)
    {
      goto LABEL_130;
    }

    v110 = v26;
    if (v32)
    {
      break;
    }

LABEL_3:
    v9 = *(v8 + 1);
    v10 = v110;
    if (v110 >= v9)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v11[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_107;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_108;
      }

      v47 = &v11[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_110;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_113;
      }

      if (v51 >= v43)
      {
        v69 = &v11[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_119;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_45;
    }

    if (v33 == 3)
    {
      v36 = *(v11 + 4);
      v37 = *(v11 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_45:
      if (v39)
      {
        goto LABEL_109;
      }

      v52 = &v11[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v58 = &v11[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_116;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_66;
      }

      goto LABEL_59;
    }

    v62 = &v11[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_59:
    if (v57)
    {
      goto LABEL_111;
    }

    v65 = &v11[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_114;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_66:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v8)
    {
      goto LABEL_126;
    }

    v74 = *&v11[16 * v73 + 32];
    v75 = *&v11[16 * v35 + 40];
    sub_8454((*v8 + 16 * v74), (*v8 + 16 * *&v11[16 * v35 + 32]), (*v8 + 16 * v75), v7, a4);
    if (v6)
    {
    }

    if (v75 < v74)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_8900(v11);
    }

    if (v73 >= *(v11 + 2))
    {
      goto LABEL_106;
    }

    v76 = &v11[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v117 = v11;
    result = sub_8874(v35);
    v11 = v117;
    v33 = *(v117 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_105:
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
  result = sub_8900(v11);
  v11 = result;
LABEL_93:
  v117 = v11;
  v95 = *(v11 + 2);
  if (v95 < 2)
  {
  }

  while (*v7)
  {
    v96 = *&v11[16 * v95];
    v97 = *&v11[16 * v95 + 24];
    sub_8454((*v7 + 16 * v96), (*v7 + 16 * *&v11[16 * v95 + 16]), (*v7 + 16 * v97), v8, a4);
    if (v6)
    {
    }

    if (v97 < v96)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_8900(v11);
    }

    if (v95 - 2 >= *(v11 + 2))
    {
      goto LABEL_118;
    }

    v98 = &v11[16 * v95];
    *v98 = v96;
    *(v98 + 1) = v97;
    v117 = v11;
    result = sub_8874(v95 - 1);
    v11 = v117;
    v95 = *(v117 + 2);
    if (v95 <= 1)
    {
    }
  }

LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_8454(char *__dst, char *a2, char *a3, char *__src, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v57 = a5;
  v6 = a3;
  v7 = a2 - __dst;
  v8 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v8 = a2 - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = a2;
    v14 = __src;
    v15 = __dst;
    if (__src != __dst || &__dst[16 * v9] <= __src)
    {
      memmove(__src, __dst, 16 * v9);
    }

    v16 = &v14[16 * v9];
    if (v7 < 16 || v13 >= v6)
    {
LABEL_21:
      a2 = v15;
      goto LABEL_40;
    }

    v17 = v13;
    v52 = &v14[16 * v9];
    while (1)
    {
      v18 = v6;
      v19 = *(v17 + 1);
      v55 = *v17;
      v56 = v19;
      v20 = *(v14 + 1);
      v53 = *v14;
      v54 = v20;

      v21 = v57(&v55, &v53);
      if (v5)
      {

        v43 = v52 - v14 + 15;
        if (v52 - v14 >= 0)
        {
          v43 = v52 - v14;
        }

        v44 = v43 >> 4;
        if (v15 < v14 || v15 >= &v14[v43 & 0xFFFFFFFFFFFFFFF0])
        {
          memmove(v15, v14, 16 * v44);
        }

        else if (v15 != v14)
        {
          v39 = 16 * v44;
          v40 = v15;
LABEL_46:
          v41 = v14;
LABEL_47:
          memmove(v40, v41, v39);
        }

        return 1;
      }

      v22 = v21;

      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = v17;
      v24 = v15 == v17;
      v17 += 16;
      v6 = v18;
      if (!v24)
      {
        goto LABEL_18;
      }

LABEL_19:
      v15 += 16;
      v16 = v52;
      if (v14 >= v52 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v23 = v14;
    v24 = v15 == v14;
    v14 += 16;
    v6 = v18;
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v15 = *v23;
    goto LABEL_19;
  }

  if (__src != a2 || &a2[16 * v12] <= __src)
  {
    v25 = a2;
    v26 = __src;
    memmove(__src, a2, 16 * v12);
    __src = v26;
    a2 = v25;
  }

  __srca = __src;
  v16 = &__src[16 * v12];
  if (v10 < 16 || a2 <= __dst)
  {
    v14 = __src;
    goto LABEL_40;
  }

LABEL_27:
  v50 = v6;
  v27 = 0;
  v28 = v16;
  v48 = a2 - 16;
  while (1)
  {
    v29 = v28;
    v30 = &v28[v27];
    v31 = &v28[v27 - 16];
    v32 = *&v28[v27 - 8];
    v55 = *v31;
    v56 = v32;
    v33 = *(a2 - 1);
    v34 = a2;
    v53 = *(a2 - 2);
    v54 = v33;

    v35 = v57(&v55, &v53);
    if (v5)
    {
      break;
    }

    v36 = v35;

    if (v36)
    {
      v6 = &v50[v27 - 16];
      a2 = v48;
      if (&v50[v27] != v34)
      {
        *v6 = *v48;
      }

      v16 = &v29[v27];
      v14 = __srca;
      if (&v29[v27] <= __srca || v48 <= __dst)
      {
        v16 = &v29[v27];
LABEL_40:
        v37 = v16 - v14;
        v38 = v37 + 15;
        if (v37 >= 0)
        {
          v38 = v37;
        }

        if (a2 < v14 || a2 >= &v14[v38 & 0xFFFFFFFFFFFFFFF0] || a2 != v14)
        {
          v39 = 16 * (v38 >> 4);
          v40 = a2;
          goto LABEL_46;
        }

        return 1;
      }

      goto LABEL_27;
    }

    a2 = v34;
    v28 = v29;
    if (&v50[v27] != v30)
    {
      *&v50[v27 - 16] = *v31;
    }

    v27 -= 16;
    v16 = &v29[v27];
    v14 = __srca;
    if (&v29[v27] <= __srca)
    {
      goto LABEL_40;
    }
  }

  v41 = __srca;
  v45 = v29 - __srca + v27;
  v46 = v45 + 15;
  if (v45 >= 0)
  {
    v46 = v29 - __srca + v27;
  }

  v47 = v46 >> 4;
  if (v34 < __srca || v34 >= &__srca[v46 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v34, __srca, 16 * v47);
  }

  else if (v34 != __srca)
  {
    v39 = 16 * v47;
    v40 = v34;
    goto LABEL_47;
  }

  return 1;
}

uint64_t sub_8874(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_8900(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_8914(char *result, int64_t a2, char a3, char *a4)
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
    sub_6DF4(&qword_2CC60, &qword_21068);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_8A18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_1F690();
}

uint64_t sub_8ABC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8B44(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  a3(&v9, &v8);
  v6 = v9;
  v10 = 0;
  a1(&v9);

  return sub_8C2C(v6, 0);
}

uint64_t sub_8BE0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8C2C(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

void *sub_8C58(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_8E68(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_6DF4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 16, v5 | 7);
}

uint64_t sub_8F2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_6DF4(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_8FF4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_903C()
{
  result = qword_2CCA8;
  if (!qword_2CCA8)
  {
    sub_7420(&qword_2CC88, &qword_21090);
    sub_96B4(&qword_2CCA0, &qword_2CC98, &qword_210A0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CCA8);
  }

  return result;
}

unint64_t sub_90F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_6DF4(&qword_2CCD0, &qword_210C0);
    v3 = sub_20150();
    v4 = a1 + 32;

    while (1)
    {
      sub_97CC(v4, &v13, &qword_2CCD8, &qword_210C8);
      v5 = v13;
      v6 = v14;
      result = sub_7968(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_9228(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_9228(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_9238(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_9250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_92C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_6DF4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_9328()
{
  v1 = type metadata accessor for FitnessPlusWorkoutsSettings(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  sub_6DF4(&qword_2CAD8, &qword_20F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1F920();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + v1[6];
  v9 = sub_1F640();
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_6DF4(&qword_2CAF8, &qword_20F80);

  v10 = v1[12];
  v11 = sub_1F540();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_955C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FitnessPlusWorkoutsSettings(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_95D0()
{
  result = qword_2CD38;
  if (!qword_2CD38)
  {
    sub_7420(&qword_2CD30, &qword_21170);
    sub_96B4(&qword_2CD40, &qword_2CD48, &qword_21178, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_96B4(&qword_2CD50, &qword_2CD58, &qword_21180, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CD38);
  }

  return result;
}

uint64_t sub_96B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_7420(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_96FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_6DF4(&qword_2CCF0, &qword_210E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_976C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_6DF4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_97CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_6DF4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_9834(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_9844(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_9834(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_9888(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_9238(result, a2, a3 & 1);
  }

  return result;
}

void sub_98F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_9944()
{
  sub_7420(&qword_2CBF0, &qword_21028);
  sub_1F920();
  sub_7620();
  sub_9250(&qword_2CC28, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  return swift_getOpaqueTypeConformance2();
}

void sub_9A14()
{
  sub_1F5B0();
  sub_9B84();
  v0 = sub_200A0();
  v1 = sub_1F590();

  qword_2E260 = v1;
}

uint64_t sub_9A70@<X0>(void *a1@<X8>)
{
  if (qword_2CAD0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_2E260;
}

uint64_t sub_9AE4()
{
  sub_9B20();
  sub_1FA60();
  return v1;
}

unint64_t sub_9B20()
{
  result = qword_2CD80;
  if (!qword_2CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CD80);
  }

  return result;
}

unint64_t sub_9B84()
{
  result = qword_2CD88;
  if (!qword_2CD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2CD88);
  }

  return result;
}

uint64_t sub_9BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6DF4(&qword_2CD90, qword_21220);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_9C70(uint64_t a1, uint64_t a2)
{
  v4 = sub_6DF4(&qword_2CD90, qword_21220);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for WorkoutControlsSettings(uint64_t a1)
{
  result = qword_2CDF0;
  if (!qword_2CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9D38(uint64_t a1)
{
  sub_9DA4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_9DA4(uint64_t a1)
{
  if (!qword_2CE00)
  {
    type metadata accessor for WorkoutControlsSettingsProvider(255);
    v1 = sub_1FE90();
    if (!v2)
    {
      atomic_store(v1, &qword_2CE00);
    }
  }
}

uint64_t sub_9E18@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_1FA80();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1F990();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6DF4(&qword_2CE30, &qword_212A8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = sub_6DF4(&qword_2CE38, &qword_212B0);
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = sub_6DF4(&qword_2CE40, &qword_212B8);
  v17 = *(v16 - 8);
  v43 = v16;
  v44 = v17;
  __chkstk_darwin(v16);
  v40 = &v39 - v18;
  v49 = v1;
  sub_6DF4(&qword_2CE48, &qword_212C0);
  sub_96B4(&qword_2CE50, &qword_2CE48, &qword_212C0, &protocol conformance descriptor for TupleView<A>);
  sub_1FBE0();
  sub_1FEB0();
  v19 = sub_96B4(&qword_2CE58, &qword_2CE30, &qword_212A8, &protocol conformance descriptor for Form<A>);
  v20 = sub_BEC8(&qword_2CC10, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
  sub_1FCD0();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23 = sub_1FF70();
  v24 = sub_1FF70();
  v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

  v26 = sub_1FF80();
  v28 = v27;

  v54 = v26;
  v55 = v28;
  v50 = v8;
  v51 = v4;
  v52 = v19;
  v53 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_748C();
  v32 = v40;
  v31 = v41;
  sub_1FC60();

  v33 = v31;
  (*(v42 + 8))(v15, v31);
  v34 = v45;
  v35 = v46;
  v36 = v47;
  (*(v46 + 104))(v45, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v47);
  v50 = v33;
  v51 = &type metadata for String;
  v52 = OpaqueTypeConformance2;
  v53 = v30;
  swift_getOpaqueTypeConformance2();
  v37 = v43;
  sub_1FC80();
  (*(v35 + 8))(v34, v36);
  return (*(v44 + 8))(v32, v37);
}

uint64_t sub_A404@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v45 = sub_1FF50();
  __chkstk_darwin(v45);
  v44 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_6DF4(&qword_2CE60, &qword_212C8);
  v59 = *(v61 - 8);
  v4 = __chkstk_darwin(v61);
  v58 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v42 - v6;
  v57 = sub_6DF4(&qword_2CE68, &qword_212D0);
  v56 = *(v57 - 8);
  v7 = __chkstk_darwin(v57);
  v55 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v42 - v9;
  v43 = sub_6DF4(&qword_2CE70, &qword_212D8);
  v52 = *(v43 - 8);
  v10 = __chkstk_darwin(v43);
  v53 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v60 = &v42 - v13;
  v14 = __chkstk_darwin(v12);
  v51 = &v42 - v15;
  v16 = __chkstk_darwin(v14);
  v49 = &v42 - v17;
  v18 = __chkstk_darwin(v16);
  v47 = &v42 - v19;
  __chkstk_darwin(v18);
  v48 = &v42 - v20;
  v65 = a1;
  sub_AFC4(&v66);
  sub_6DF4(&qword_2CE78, &qword_212E0);
  sub_96B4(&qword_2CE80, &qword_2CE78, &qword_212E0, &protocol conformance descriptor for Toggle<A>);
  sub_1FE40();
  v64 = a1;
  sub_B34C(&v66);
  sub_1FE40();
  v63 = a1;
  sub_B948(&v66);
  sub_6DF4(&qword_2CE88, &qword_212E8);
  sub_96B4(&qword_2CE90, &qword_2CE88, &qword_212E8, &protocol conformance descriptor for NavigationLink<A, B>);
  sub_1FE40();
  v62 = a1;
  sub_BC84(&v66);
  sub_1FE40();
  sub_1F710();
  v21 = sub_1F700();
  v42 = sub_1F6F0();

  v22 = sub_1F700();
  sub_1F6E0();

  sub_6DF4(&qword_2CD90, qword_21220);
  sub_1FE50();
  v23 = v66;
  swift_getKeyPath();
  v66 = v23;
  sub_BEC8(&qword_2CE98, type metadata accessor for WorkoutControlsSettingsProvider, &unk_21C88);
  sub_1F560();

  sub_1FE50();
  v24 = v66;
  swift_getKeyPath();
  v66 = v24;
  sub_1F560();

  sub_1FF40();
  sub_BEC8(&qword_2CEA0, &type metadata accessor for UnitsSettingsListView, &protocol conformance descriptor for UnitsSettingsListView);
  v25 = v54;
  sub_1F950();
  v26 = *(v52 + 16);
  v27 = v51;
  v28 = v43;
  v26(v51, v48, v43);
  v26(v60, v47, v28);
  v45 = *(v56 + 16);
  v29 = v55;
  v45(v55, v50, v57);
  v30 = v53;
  v26(v53, v49, v28);
  v44 = *(v59 + 16);
  v44(v58, v25, v61);
  v31 = v46;
  v26(v46, v27, v28);
  v32 = sub_6DF4(&qword_2CEA8, &qword_21340);
  v26(&v31[v32[12]], v60, v28);
  v33 = v29;
  v34 = v57;
  v45(&v31[v32[16]], v33, v57);
  v26(&v31[v32[20]], v30, v28);
  v35 = &v31[v32[24]];
  v36 = v58;
  v37 = v61;
  v44(v35, v58, v61);
  v38 = *(v59 + 8);
  v38(v54, v37);
  v39 = *(v52 + 8);
  v39(v49, v28);
  v40 = *(v56 + 8);
  v40(v50, v34);
  v39(v47, v28);
  v39(v48, v28);
  v38(v36, v61);
  v39(v53, v28);
  v40(v55, v34);
  v39(v60, v28);
  return (v39)(v51, v28);
}

uint64_t sub_ADB0()
{
  v0 = sub_6DF4(&qword_2CD90, qword_21220);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - v2;
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_1FF70();
  v7 = sub_1FF70();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_1FF80();
  v11 = v10;

  v13[4] = v9;
  v13[5] = v11;
  sub_1FE60();
  swift_getKeyPath();
  sub_1FE80();

  (*(v1 + 8))(v3, v0);
  sub_748C();
  return sub_1FDB0();
}

uint64_t sub_AFC4@<X0>(uint64_t a1@<X8>)
{
  sub_6DF4(&qword_2CD90, qword_21220);
  sub_1FE50();
  sub_1F6C0();

  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_B140()
{
  v0 = sub_6DF4(&qword_2CD90, qword_21220);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - v2;
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_1FF70();
  v7 = sub_1FF70();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_1FF80();
  v11 = v10;

  v13[4] = v9;
  v13[5] = v11;
  sub_1FE60();
  swift_getKeyPath();
  sub_1FE80();

  (*(v1 + 8))(v3, v0);
  sub_748C();
  return sub_1FDB0();
}

uint64_t sub_B34C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_B474(uint64_t a1)
{
  v1 = type metadata accessor for AutoPauseSettings(0);
  __chkstk_darwin(v1);
  sub_6DF4(&qword_2CD90, qword_21220);
  sub_1FE50();
  type metadata accessor for WorkoutControlsSettingsProvider(0);
  sub_BEC8(&qword_2CE98, type metadata accessor for WorkoutControlsSettingsProvider, &unk_21C88);
  sub_1FE70();
  sub_6DF4(&qword_2CEB0, &qword_21370);
  sub_96B4(&qword_2CEB8, &qword_2CEB0, &qword_21370, &protocol conformance descriptor for VStack<A>);
  sub_BEC8(&qword_2CEC0, type metadata accessor for AutoPauseSettings, "]y");
  return sub_1F950();
}

uint64_t sub_B628@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1FAA0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_6DF4(&qword_2CEC8, &qword_21378);
  sub_6DF4(&qword_2CED0, &qword_21380);
  sub_96B4(&qword_2CED8, &qword_2CED0, &qword_21380, &protocol conformance descriptor for TupleView<A>);
  return sub_1F910();
}

uint64_t sub_B700@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  v7 = sub_1FC10();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_6DF4(&qword_2CD90, qword_21220);
  sub_1FE50();
  sub_184FC();
  v15 = v14;

  if (v15)
  {
    v16 = sub_1FC10();
    v18 = v17;
    v15 = v19;
    v21 = v20 & 1;
    sub_9834(v16, v17, v20 & 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v21 = 0;
  }

  v22 = v11 & 1;
  sub_9834(v7, v9, v22);

  sub_9844(v16, v18, v21, v15);
  sub_9888(v16, v18, v21, v15);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v22;
  *(a1 + 24) = v13;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v21;
  *(a1 + 56) = v15;
  sub_9888(v16, v18, v21, v15);
  sub_9238(v7, v9, v22);
}

uint64_t sub_B948@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_BA74()
{
  v0 = sub_6DF4(&qword_2CD90, qword_21220);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - v2;
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_1FF70();
  v7 = sub_1FF70();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_1FF80();
  v11 = v10;

  v13[4] = v9;
  v13[5] = v11;
  sub_1FE60();
  swift_getKeyPath();
  sub_1FE80();

  (*(v1 + 8))(v3, v0);
  sub_748C();
  return sub_1FDB0();
}

uint64_t sub_BC84@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_BDAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1FF30();
  v3 = sub_1FF70();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_BEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_BF28()
{
  sub_7420(&qword_2CE40, &qword_212B8);
  sub_7420(&qword_2CE38, &qword_212B0);
  sub_7420(&qword_2CE30, &qword_212A8);
  sub_1F990();
  sub_96B4(&qword_2CE58, &qword_2CE30, &qword_212A8, &protocol conformance descriptor for Form<A>);
  sub_BEC8(&qword_2CC10, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
  swift_getOpaqueTypeConformance2();
  sub_748C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C0B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6DF4(&qword_2CEE0, &unk_213E0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_6DF4(&qword_2CAF0, &qword_20F78);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_6DF4(&qword_2CEE8, qword_213F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[8]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1F540();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_C2A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_6DF4(&qword_2CEE0, &unk_213E0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = sub_6DF4(&qword_2CAF0, &qword_20F78);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  result = sub_6DF4(&qword_2CEE8, qword_213F0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1F540();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for FitnessPlusAudioLanguageSettings(uint64_t a1)
{
  result = qword_2CF48;
  if (!qword_2CF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_C4C8(uint64_t a1)
{
  sub_C6AC(319, &qword_2CB68, &type metadata accessor for Dependencies, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_C710(319, &qword_2CF58, &qword_2CF60, "^+", &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_C6AC(319, &qword_2CB70, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_C6AC(319, &qword_2CF68, &type metadata accessor for AudioLanguagePreference, &type metadata accessor for Binding);
        if (v4 <= 0x3F)
        {
          sub_C710(319, &qword_2CB80, &qword_2CAE0, &qword_20F30, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_C774();
            if (v6 <= 0x3F)
            {
              sub_1F540();
              if (v7 <= 0x3F)
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

void sub_C6AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_C710(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_7420(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_C774()
{
  if (!qword_2CF70)
  {
    v0 = sub_1FDF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2CF70);
    }
  }
}

uint64_t sub_C7E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1FA50();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6DF4(&qword_2CAD8, &qword_20F28);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FitnessPlusAudioLanguageSettings(0);
  sub_97CC(v1 + *(v10 + 24), v9, &qword_2CAD8, &qword_20F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1F920();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_20080();
    v13 = sub_1FBA0();
    sub_1F8E0();

    sub_1FA40();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_C9E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for FitnessPlusAudioLanguageSettings(0);
  v4 = *(v3 - 8);
  v56 = v3 - 8;
  v50 = v4;
  v59 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1F920();
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  __chkstk_darwin(v6);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6DF4(&qword_2CFB8, &qword_21498);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v49 = sub_6DF4(&qword_2CFC0, &qword_214A0);
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v44 - v13;
  v14 = sub_6DF4(&qword_2CFC8, &qword_214A8);
  v15 = *(v14 - 8);
  v54 = v14;
  v55 = v15;
  __chkstk_darwin(v14);
  v58 = &v44 - v16;
  v60 = v2;
  sub_6DF4(&qword_2CFD0, &qword_214B0);
  sub_DAB0();
  sub_1FBE0();
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19 = sub_1FF70();
  v20 = sub_1FF70();
  v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

  v22 = sub_1FF80();
  v24 = v23;

  v61 = v22;
  v62 = v24;
  v25 = sub_96B4(&qword_2CFF0, &qword_2CFB8, &qword_21498, &protocol conformance descriptor for Form<A>);
  v26 = sub_748C();
  sub_1FC60();

  (*(v10 + 8))(v12, v9);
  v27 = v47;
  v45 = v2;
  sub_C7E0(v47);
  v28 = v48;
  sub_DB6C(v2, v48);
  v29 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v30 = swift_allocObject();
  sub_DBD4(v28, v30 + v29);
  v61 = v9;
  v62 = &type metadata for String;
  v63 = v25;
  v64 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_E080(&qword_2CC28, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v33 = v49;
  v34 = v52;
  v35 = v46;
  sub_1FCC0();

  (*(v53 + 8))(v27, v34);
  (*(v51 + 8))(v35, v33);
  v36 = v45;
  v37 = v45 + *(v56 + 44);
  v38 = *v37;
  v39 = *(v37 + 8);
  LOBYTE(v37) = *(v37 + 16);
  v61 = v38;
  v62 = v39;
  LOBYTE(v63) = v37;
  sub_6DF4(&qword_2CFF8, &unk_214C0);
  sub_1FDC0();
  sub_DB6C(v36, v28);
  v40 = swift_allocObject();
  sub_DBD4(v28, v40 + v29);
  v61 = v33;
  v62 = v34;
  v63 = OpaqueTypeConformance2;
  v64 = v32;
  swift_getOpaqueTypeConformance2();
  v41 = v58;
  v42 = v54;
  sub_1FCC0();

  return (*(v55 + 8))(v41, v42);
}

uint64_t sub_D0A8(uint64_t a1)
{
  sub_D4EC(v3);
  sub_D614(v2);
  sub_6DF4(&qword_2CFE8, &qword_214B8);
  sub_96B4(&qword_2CFE0, &qword_2CFE8, &qword_214B8, &protocol conformance descriptor for List<A, B>);
  return sub_1FE20();
}

uint64_t sub_D178(uint64_t a1)
{
  sub_6DF4(&qword_2D000, qword_214D0);
  sub_DFCC();
  return sub_1FBF0();
}

uint64_t sub_D1E8(uint64_t a1)
{
  v2 = type metadata accessor for FitnessPlusAudioLanguageSettings(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(__chkstk_darwin(v2 - 8) + 40));
  v7 = *v5;
  v6 = v5[1];
  v11[2] = v7;
  v11[3] = v6;
  sub_6DF4(&qword_2CC58, &qword_21060);
  sub_1FD60();
  swift_getKeyPath();
  sub_DB6C(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_DBD4(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_6DF4(&qword_2CAE0, &qword_20F30);
  type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(0);
  sub_96B4(&qword_2D018, &qword_2CAE0, &qword_20F30, &protocol conformance descriptor for [A]);
  sub_E080(&qword_2D010, type metadata accessor for FitnessPlusAudioLanguageSettingsItemView, "%t");
  return sub_1FE00();
}

void sub_D3E8(uint64_t a2@<X8>)
{
  type metadata accessor for FitnessPlusAudioLanguageSettings(0);
  v3 = type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(0);
  sub_6DF4(&qword_2CEE8, qword_213F0);
  sub_1FDE0();
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = a2 + *(v3 + 24);

  sub_1FD50();
  *v4 = v6;
  *(v4 + 16) = v7;
  v5 = [objc_opt_self() autoupdatingCurrentLocale];
  sub_1F500();
}

uint64_t sub_D4EC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_D614@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = sub_1FF70();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_D73C()
{
  v1 = v0;
  v2 = sub_1FA50();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 8);

  if ((v6 & 1) == 0)
  {
    sub_20080();
    v7 = sub_1FBA0();
    sub_1F8E0();

    sub_1FA40();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_6DF4(&qword_2CC30, &qword_21038);
  sub_1F5A0();

  sub_7800(v22, v22[3]);
  sub_1F7D0();
  v8 = sub_1F5D0();
  v10 = v9;
  if (v8 == sub_1F5D0() && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_20190();
  }

  v14 = (v1 + *(type metadata accessor for FitnessPlusAudioLanguageSettings(0) + 36));
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v14) = *(v14 + 16);
  v19 = v15;
  v20 = v16;
  v21 = v14;
  v18[15] = v13 & 1;
  sub_6DF4(&qword_2CFF8, &unk_214C0);
  sub_1FDD0();
  return sub_7844(v22);
}

uint64_t sub_D984(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1F9B0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_6DF4(&qword_2CF60, "^+");
  result = __chkstk_darwin(v4);
  v7 = &v8 - v6;
  if ((*a2 & 1) == 0)
  {
    type metadata accessor for FitnessPlusAudioLanguageSettings(0);
    sub_DD14(v7);
    sub_1FDC0();
    sub_1F9A0();
    sub_1FDD0();
    return sub_DEE4(v7);
  }

  return result;
}

unint64_t sub_DAB0()
{
  result = qword_2CFD8;
  if (!qword_2CFD8)
  {
    sub_7420(&qword_2CFD0, &qword_214B0);
    sub_96B4(&qword_2CFE0, &qword_2CFE8, &qword_214B8, &protocol conformance descriptor for List<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CFD8);
  }

  return result;
}

uint64_t sub_DB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusAudioLanguageSettings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DBD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusAudioLanguageSettings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_DC94(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for FitnessPlusAudioLanguageSettings(0);

  return sub_D984(a1, a2);
}

uint64_t sub_DD14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1FA50();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6DF4(&qword_2CD10, &qword_21130);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_97CC(v2, &v13 - v9, &qword_2CD10, &qword_21130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_DF4C(v10, a1);
  }

  sub_20080();
  v12 = sub_1FBA0();
  sub_1F8E0();

  sub_1FA40();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_DEE4(uint64_t a1)
{
  v2 = sub_6DF4(&qword_2CF60, "^+");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_6DF4(&qword_2CF60, "^+");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_DFCC()
{
  result = qword_2D008;
  if (!qword_2D008)
  {
    sub_7420(&qword_2D000, qword_214D0);
    sub_E080(&qword_2D010, type metadata accessor for FitnessPlusAudioLanguageSettingsItemView, "%t");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D008);
  }

  return result;
}

uint64_t sub_E080(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3, ...)
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

uint64_t sub_E0C8()
{
  v1 = type metadata accessor for FitnessPlusAudioLanguageSettings(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  sub_6DF4(&qword_2CD10, &qword_21130);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(sub_6DF4(&qword_2CF60, "^+") + 32);
    v9 = sub_1F9B0();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  v10 = v1[6];
  sub_6DF4(&qword_2CAD8, &qword_20F28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1F920();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v5 + v1[7];

  v13 = *(sub_6DF4(&qword_2CEE8, qword_213F0) + 32);
  v14 = sub_1F640();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  v15 = v1[10];
  v16 = sub_1F540();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_E358(uint64_t a2@<X8>)
{
  type metadata accessor for FitnessPlusAudioLanguageSettings(0);

  sub_D3E8(a2);
}

uint64_t sub_E3E0()
{
  sub_7420(&qword_2CFC8, &qword_214A8);
  sub_7420(&qword_2CFC0, &qword_214A0);
  sub_1F920();
  v0 = sub_7420(&qword_2CFB8, &qword_21498);
  v2 = sub_96B4(&qword_2CFF0, &qword_2CFB8, &qword_21498, &protocol conformance descriptor for Form<A>);
  v3 = sub_748C();
  swift_getOpaqueTypeConformance2();
  sub_E080(&qword_2CC28, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase, v0, &type metadata for String, v2, v3);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id static NSBundle.fitnessSettings.getter(uint64_t a1)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v2;
}

uint64_t sub_E604(uint64_t a1, uint64_t a2)
{
  v4 = sub_6DF4(&qword_2CD90, qword_21220);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_E690(uint64_t a1, uint64_t a2)
{
  v4 = sub_6DF4(&qword_2CD90, qword_21220);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AutoPauseSettings(uint64_t a1)
{
  result = qword_2D110;
  if (!qword_2D110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E774()
{
  v1 = sub_6DF4(&qword_2D148, &qword_215E8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-v3];
  v15 = v0;
  sub_6DF4(&qword_2D150, &qword_215F0);
  sub_96B4(&qword_2D158, &qword_2D150, &qword_215F0, &protocol conformance descriptor for TupleView<A>);
  sub_1FBE0();
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7 = sub_1FF70();
  v8 = sub_1FF70();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_1FF80();
  v12 = v11;

  v16 = v10;
  v17 = v12;
  sub_96B4(&qword_2D160, &qword_2D148, &qword_215E8, &protocol conformance descriptor for Form<A>);
  sub_748C();
  sub_1FC60();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_E9F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = sub_6DF4(&qword_2D168, &qword_215F8);
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = v44 - v4;
  v5 = sub_6DF4(&qword_2D170, &qword_21600);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v44 - v9;
  v11 = sub_6DF4(&qword_2D178, &unk_21608);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v44 - v16;
  v49 = a1;
  sub_6DF4(&qword_2CE78, &qword_212E0);
  sub_96B4(&qword_2CE80, &qword_2CE78, &qword_212E0, &protocol conformance descriptor for Toggle<A>);
  sub_1FE30();
  sub_6DF4(&qword_2CD90, qword_21220);
  sub_1FE50();
  v18 = v50;
  swift_getKeyPath();
  v50 = v18;
  sub_F6B8();
  sub_1F560();

  v19 = *(v18 + 53);

  if (v19 == 1)
  {
    v44[1] = v44;
    __chkstk_darwin(v20);
    v44[0] = &v44[-4];
    v44[-2] = a1;
    type metadata accessor for FitnessSettingsBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v23 = sub_1FF70();
    v24 = sub_1FF70();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v26 = sub_1FF80();
    v28 = v27;

    v50 = v26;
    v51 = v28;
    sub_748C();
    v50 = sub_1FC10();
    v51 = v29;
    v52 = v30 & 1;
    v53 = v31;
    sub_6DF4(&qword_2D188, &qword_21648);
    sub_96B4(&qword_2D190, &qword_2D188, &qword_21648, &protocol conformance descriptor for TupleView<A>);
    v32 = v45;
    sub_1FE10();
    v33 = v46;
    v34 = v32;
    v35 = v47;
    (*(v46 + 32))(v10, v34, v47);
    v36 = 0;
    v37 = v35;
    v38 = v33;
  }

  else
  {
    v36 = 1;
    v38 = v46;
    v37 = v47;
  }

  (*(v38 + 56))(v10, v36, 1, v37);
  v39 = *(v12 + 16);
  v39(v15, v17, v11);
  sub_F710(v10, v8);
  v40 = v48;
  v39(v48, v15, v11);
  v41 = sub_6DF4(&qword_2D180, &qword_21640);
  sub_F710(v8, &v40[*(v41 + 48)]);
  sub_F780(v10);
  v42 = *(v12 + 8);
  v42(v17, v11);
  sub_F780(v8);
  return (v42)(v15, v11);
}

uint64_t sub_EF6C()
{
  v0 = sub_6DF4(&qword_2CD90, qword_21220);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - v2;
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v6 = sub_1FF70();
  v7 = sub_1FF70();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_1FF80();
  v11 = v10;

  v13[4] = v9;
  v13[5] = v11;
  sub_1FE60();
  swift_getKeyPath();
  sub_1FE80();

  (*(v1 + 8))(v3, v0);
  sub_748C();
  return sub_1FDB0();
}

uint64_t sub_F178@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40[0] = a1;
  v45 = a2;
  v2 = sub_6DF4(&qword_2CD90, qword_21220);
  v47 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v40 - v3;
  v5 = sub_6DF4(&qword_2CE78, &qword_212E0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v43 = v40 - v10;
  v11 = __chkstk_darwin(v9);
  v42 = v40 - v12;
  __chkstk_darwin(v11);
  v46 = v40 - v13;
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = ObjCClassFromMetadata;
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass:{ObjCClassFromMetadata, v40[0]}];
  v17 = sub_1FF70();
  v40[1] = "WORKOUT_CONTROLS";
  v18 = sub_1FF70();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  v20 = sub_1FF80();
  v22 = v21;

  v48 = v20;
  v49 = v22;
  sub_1FE60();
  swift_getKeyPath();
  sub_1FE80();

  v23 = *(v47 + 8);
  v47 += 8;
  v23(v4, v2);
  sub_748C();
  sub_1FDB0();
  v24 = [v15 bundleForClass:v41];
  v25 = sub_1FF70();
  v26 = sub_1FF70();
  v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

  v28 = sub_1FF80();
  v30 = v29;

  v48 = v28;
  v49 = v30;
  sub_1FE60();
  swift_getKeyPath();
  sub_1FE80();

  v23(v4, v2);
  v31 = v42;
  sub_1FDB0();
  v32 = *(v6 + 16);
  v33 = v43;
  v34 = v46;
  v32(v43, v46, v5);
  v35 = v44;
  v32(v44, v31, v5);
  v36 = v45;
  v32(v45, v33, v5);
  v37 = sub_6DF4(&qword_2D198, &unk_216A0);
  v32(&v36[*(v37 + 48)], v35, v5);
  v38 = *(v6 + 8);
  v38(v31, v5);
  v38(v34, v5);
  v38(v35, v5);
  return (v38)(v33, v5);
}

unint64_t sub_F6B8()
{
  result = qword_2CE98;
  if (!qword_2CE98)
  {
    type metadata accessor for WorkoutControlsSettingsProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2CE98);
  }

  return result;
}

uint64_t sub_F710(uint64_t a1, uint64_t a2)
{
  v4 = sub_6DF4(&qword_2D170, &qword_21600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F780(uint64_t a1)
{
  v2 = sub_6DF4(&qword_2D170, &qword_21600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F800()
{
  sub_7420(&qword_2D148, &qword_215E8);
  sub_96B4(&qword_2D160, &qword_2D148, &qword_215E8, &protocol conformance descriptor for Form<A>);
  sub_748C();
  return swift_getOpaqueTypeConformance2();
}

void *sub_F8AC@<X0>(void *a1@<X8>)
{
  sub_9B20();
  result = sub_1FA60();
  *a1 = v3;
  return result;
}

uint64_t sub_F8FC(uint64_t *a1)
{
  sub_9B20();

  return sub_1FA70();
}

unint64_t sub_F984()
{
  result = qword_2D238;
  if (!qword_2D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D238);
  }

  return result;
}

uint64_t sub_F9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v23 = a2;
  v2 = sub_200D0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1F8D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1F8B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6DF4(&qword_2D250, &qword_21760);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  sub_200C0();
  sub_1F8C0();
  sub_1F8A0();
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:{ObjCClassFromMetadata, v22, v23}];
  v14 = sub_1FF70();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  v16 = sub_1FF80();
  v18 = v17;

  v24 = v16;
  v25 = v18;
  v19 = sub_1120C(&qword_2D260, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v20 = sub_748C();
  sub_1FC60();

  (*(v5 + 8))(v7, v4);

  sub_6DF4(&qword_2D258, &qword_21768);
  v24 = v4;
  v25 = &type metadata for String;
  v26 = v19;
  v27 = v20;
  swift_getOpaqueTypeConformance2();
  sub_10DB8();
  sub_10E0C();
  sub_1FC70();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_FDE8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v46 = a3;
  v41 = sub_6DF4(&qword_2D2D0, &qword_21790);
  __chkstk_darwin(v41);
  v5 = &v37 - v4;
  v38 = sub_6DF4(&qword_2D2F0, &qword_217A8);
  __chkstk_darwin(v38);
  v7 = &v37 - v6;
  v45 = sub_6DF4(&qword_2D2B8, &qword_21788);
  __chkstk_darwin(v45);
  v42 = &v37 - v8;
  v39 = type metadata accessor for WorkoutControlsSettings(0);
  __chkstk_darwin(v39);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_6DF4(&qword_2D2F8, &qword_217B0);
  __chkstk_darwin(v43);
  v12 = &v37 - v11;
  v13 = sub_6DF4(&qword_2D300, &qword_217B8);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v44 = sub_6DF4(&qword_2D280, &qword_21770);
  __chkstk_darwin(v44);
  v17 = &v37 - v16;
  v18 = sub_6DF4(&qword_2D290, &qword_21778);
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      sub_1F710();
      v21 = sub_1F700();
      v22 = sub_1F6E0();

      type metadata accessor for WorkoutControlsSettingsProvider(0);
      swift_allocObject();
      sub_19D00(v22);

      sub_1120C(&qword_2CE98, type metadata accessor for WorkoutControlsSettingsProvider, &unk_21C88);
      sub_1FE70();
      sub_11254(v10, v7);
      swift_storeEnumTagMultiPayload();
      sub_1120C(&qword_2D2C0, type metadata accessor for WorkoutControlsSettings, &unk_21258);
      sub_110C8();
      v23 = v42;
      sub_1FAB0();
      sub_97CC(v23, v12, &qword_2D2B8, &qword_21788);
      swift_storeEnumTagMultiPayload();
      sub_10E98();
      sub_1100C();
      sub_1FAB0();
      sub_976C(v23, &qword_2D2B8, &qword_21788);
      return sub_112B8(v10);
    }

    sub_69B8(v20);
    KeyPath = swift_getKeyPath();
    v33 = &v20[*(v18 + 36)];
    v34 = v40;
    *v33 = KeyPath;
    v33[1] = v34;
    v35 = &qword_2D290;
    v36 = &qword_21778;
    sub_97CC(v20, v15, &qword_2D290, &qword_21778);
    swift_storeEnumTagMultiPayload();
    sub_10F24();

    sub_1FAB0();
    sub_97CC(v17, v12, &qword_2D280, &qword_21770);
    swift_storeEnumTagMultiPayload();
    sub_10E98();
    sub_1100C();
    sub_1FAB0();
    sub_976C(v17, &qword_2D280, &qword_21770);
    v29 = v20;
    goto LABEL_8;
  }

  if (*a1 != 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_10F24();
    sub_1FAB0();
    v35 = &qword_2D280;
    v36 = &qword_21770;
    sub_97CC(v17, v12, &qword_2D280, &qword_21770);
    swift_storeEnumTagMultiPayload();
    sub_10E98();
    sub_1100C();
    sub_1FAB0();
    v29 = v17;
LABEL_8:
    v30 = v35;
    v31 = v36;
    return sub_976C(v29, v30, v31);
  }

  sub_1ABB0(v5);
  v25 = swift_getKeyPath();
  v26 = v40;
  v27 = &v5[*(v41 + 36)];
  *v27 = v25;
  v27[1] = v26;
  sub_97CC(v5, v7, &qword_2D2D0, &qword_21790);
  swift_storeEnumTagMultiPayload();
  sub_1120C(&qword_2D2C0, type metadata accessor for WorkoutControlsSettings, &unk_21258);
  sub_110C8();

  v28 = v42;
  sub_1FAB0();
  sub_97CC(v28, v12, &qword_2D2B8, &qword_21788);
  swift_storeEnumTagMultiPayload();
  sub_10E98();
  sub_1100C();
  sub_1FAB0();
  sub_976C(v28, &qword_2D2B8, &qword_21788);
  v29 = v5;
  v30 = &qword_2D2D0;
  v31 = &qword_21790;
  return sub_976C(v29, v30, v31);
}

uint64_t sub_1053C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1F4B0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_6DF4(&qword_2D2E8, &qword_217A0);
  v2[9] = swift_task_alloc();
  v4 = sub_1F470();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1F970();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_20030();
  v2[17] = sub_20020();
  v7 = sub_20000();

  return _swift_task_switch(sub_1072C, v7, v6);
}

uint64_t sub_1072C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  sub_1FEF0();
  sub_1FF00();
  sub_1F450();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
    *(v0 + 16) = sub_1F460();
    *(v0 + 24) = v7;
    sub_748C();
    v8 = sub_20100();

    v9 = *(v8 + 16);
    if (!v9)
    {
      (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

      goto LABEL_33;
    }

    v10 = (v8 + 32 * v9);
    v11 = *v10;
    v12 = v10[1];
    v14 = v10[2];
    v13 = v10[3];

    v15 = 0;
    v16 = v11 >> 16;
    v17 = v12 >> 16;
    while (1)
    {
      v18 = *(&off_29418 + v15++ + 32);
      v19 = 0x2D7373656E746966;
      v20 = 1701736302;
      if (v18 == 2)
      {
        v20 = 0x2D7373656E746966;
      }

      v21 = 0xEF79636176697270;
      if (v18 != 2)
      {
        v21 = 0xE400000000000000;
      }

      if (!v18)
      {
        v19 = 0xD000000000000010;
      }

      v22 = 0xEC00000073756C70;
      if (!v18)
      {
        v22 = 0x80000000000225A0;
      }

      if (v18 <= 1)
      {
        v23 = v19;
      }

      else
      {
        v23 = v20;
      }

      if (v18 <= 1)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if ((v24 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v24) & 0xF;
      }

      else
      {
        v25 = v23 & 0x73656F7E6F7ELL;
      }

      if (v14 == v23 && v13 == v24 && !v16 && v17 == v25)
      {
      }

      else
      {
        v26 = sub_20170();

        if ((v26 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      *(v0 + 144) = v18;
      sub_10DB8();
      sub_1F960();
LABEL_7:
      if (v15 == 4)
      {
        v27 = *(v0 + 128);
        v28 = *(v0 + 104);
        v29 = *(v0 + 112);
        v31 = *(v0 + 88);
        v30 = *(v0 + 96);
        v32 = *(v0 + 80);

        sub_1FF10();
        (*(v31 + 8))(v30, v32);
        (*(v29 + 8))(v27, v28);
        goto LABEL_34;
      }
    }
  }

  sub_976C(*(v0 + 72), &qword_2D2E8, &qword_217A0);
LABEL_33:
  v34 = *(v0 + 120);
  v33 = *(v0 + 128);
  v35 = *(v0 + 104);
  v36 = *(v0 + 112);
  sub_1FEF0();
  sub_1FF10();
  v37 = *(v36 + 8);
  v37(v34, v35);
  v37(v33, v35);
LABEL_34:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_10AE0()
{
  v0 = sub_6DF4(&qword_2D240, &qword_21750);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - v2;

  sub_6DF4(&qword_2D248, &qword_21758);
  v4 = sub_7420(&qword_2D250, &qword_21760);
  v5 = sub_7420(&qword_2D258, &qword_21768);
  v6 = sub_1F8B0();
  v7 = sub_1120C(&qword_2D260, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);
  v8 = sub_748C();
  v13 = v6;
  v14 = &type metadata for String;
  v15 = v7;
  v16 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = sub_10DB8();
  v11 = sub_10E0C();
  v13 = v4;
  v14 = &type metadata for FitnessSettingsDestination;
  v15 = v5;
  v16 = OpaqueTypeConformance2;
  v17 = v10;
  v18 = v11;
  swift_getOpaqueTypeConformance2();
  sub_1FF20();
  sub_96B4(&qword_2D2E0, &qword_2D240, &qword_21750, &protocol conformance descriptor for SettingsPane<A>);
  sub_1FEE0();
  return (*(v1 + 8))(v3, v0);
}

void sub_10D54(uint64_t *a1@<X8>)
{
  sub_1F5B0();
  sub_9B84();
  v2 = sub_200A0();
  v3 = sub_1F590();

  *a1 = v3;
}

unint64_t sub_10DB8()
{
  result = qword_2D268;
  if (!qword_2D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D268);
  }

  return result;
}

unint64_t sub_10E0C()
{
  result = qword_2D270;
  if (!qword_2D270)
  {
    sub_7420(&qword_2D258, &qword_21768);
    sub_10E98();
    sub_1100C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D270);
  }

  return result;
}

unint64_t sub_10E98()
{
  result = qword_2D278;
  if (!qword_2D278)
  {
    sub_7420(&qword_2D280, &qword_21770);
    sub_10F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D278);
  }

  return result;
}

unint64_t sub_10F24()
{
  result = qword_2D288;
  if (!qword_2D288)
  {
    sub_7420(&qword_2D290, &qword_21778);
    sub_1120C(&qword_2D298, type metadata accessor for FitnessPlusWorkoutsSettings, &unk_20FBC);
    sub_96B4(&qword_2D2A0, &qword_2D2A8, &qword_21780, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D288);
  }

  return result;
}

unint64_t sub_1100C()
{
  result = qword_2D2B0;
  if (!qword_2D2B0)
  {
    sub_7420(&qword_2D2B8, &qword_21788);
    sub_1120C(&qword_2D2C0, type metadata accessor for WorkoutControlsSettings, &unk_21258);
    sub_110C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D2B0);
  }

  return result;
}

unint64_t sub_110C8()
{
  result = qword_2D2C8;
  if (!qword_2D2C8)
  {
    sub_7420(&qword_2D2D0, &qword_21790);
    sub_1120C(&qword_2D2D8, type metadata accessor for FitnessPrivacySettings, &unk_21F08);
    sub_96B4(&qword_2D2A0, &qword_2D2A8, &qword_21780, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D2C8);
  }

  return result;
}

void *sub_111B8@<X0>(void *a1@<X8>)
{
  sub_9B20();
  result = sub_1FA60();
  *a1 = v3;
  return result;
}

uint64_t sub_1120C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_11254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutControlsSettings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_112B8(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutControlsSettings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11324()
{
  sub_7420(&qword_2D240, &qword_21750);
  sub_96B4(&qword_2D2E0, &qword_2D240, &qword_21750, &protocol conformance descriptor for SettingsPane<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_113E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1FED0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_200B0();
  v9[15] = a3;
  sub_10DB8();
  sub_1FEC0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_114E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v7 = sub_1FED0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a3;
  sub_200B0();
  v13[15] = a5;
  sub_10DB8();
  sub_1FEC0();

  return (*(v8 + 8))(v10, v7);
}

__n128 sub_115E4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_115F0(uint64_t a1, int a2)
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

uint64_t sub_11638(uint64_t result, int a2, int a3)
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

unint64_t sub_11688()
{
  result = qword_2D308;
  if (!qword_2D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D308);
  }

  return result;
}

void sub_116DC()
{
  v0 = objc_allocWithZone(OBPrivacySplashController);
  v1 = sub_1FF70();
  v2 = [v0 initWithPrivacyIdentifier:v1];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_117A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_11890();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_11804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_11890();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_11868(uint64_t a1)
{
  sub_11890();
  sub_1FB70();
  __break(1u);
}

unint64_t sub_11890()
{
  result = qword_2D310;
  if (!qword_2D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D310);
  }

  return result;
}

id SeymourContentAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SeymourContentAvailabilityProvider.init()()
{
  sub_1F7A0();
  sub_9B84();
  sub_200A0();
  *&v0[OBJC_IVAR___CHSeymourContentAvailabilityProvider_client] = sub_1F790();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourContentAvailabilityProvider();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t SeymourContentAvailabilityProvider.queryStorefrontContentAvailability(completion:)(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v37 = a1;
  v4 = sub_6DF4(&qword_2D320, qword_21930);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v40 = sub_6DF4(&qword_2CC48, &unk_21050);
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v40);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v38 = &v36 - v15;
  __chkstk_darwin(v14);
  v41 = &v36 - v16;
  sub_1F780();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_12078;
  *(v18 + 24) = v17;
  (*(v5 + 16))(v8, v10, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v8, v4);
  v21 = (v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_1223C;
  v21[1] = v18;
  v22 = v36;

  v23 = v38;
  sub_1F690();
  (*(v5 + 8))(v10, v4);
  v24 = swift_allocObject();
  *(v24 + 16) = v37;
  *(v24 + 24) = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1268C;
  *(v25 + 24) = v24;
  v27 = v39;
  v26 = v40;
  (*(v11 + 16))(v39, v23, v40);
  v28 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v29 = swift_allocObject();
  (*(v11 + 32))(v29 + v28, v27, v26);
  v30 = (v29 + ((v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_132CC;
  v30[1] = v25;

  v31 = v41;
  sub_1F690();
  v32 = *(v11 + 8);
  v32(v23, v26);
  v33 = sub_1F6A0();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_136E4, v34);

  return (v32)(v31, v26);
}

uint64_t sub_11EC4(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = sub_1F600();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for ContentAvailability.unavailableStoreFront(_:) || v8 == enum case for ContentAvailability.unavailableConfiguration(_:))
  {
    v10 = 0;
    return a2(v10, 0);
  }

  if (v8 == enum case for ContentAvailability.available(_:))
  {
    v10 = 1;
    return a2(v10, 0);
  }

  a2(0, 0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_12040()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_12120(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1F480();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id SeymourContentAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourContentAvailabilityProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_122BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v10 + 32))(v14 + v13, v12, v9);

  return sub_1F690();
}

uint64_t sub_12414(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_8C2C(v6, 0);
}

uint64_t sub_125A0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_6DF4(&qword_2D320, qword_21930) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_12710(a1, a2, v2 + v6, *v7, v7[1], &qword_2D320, qword_21930, &unk_299F8, sub_13790);
}

uint64_t sub_12710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  sub_6DF4(a6, a7);
  v13 = sub_1F6A0();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

uint64_t sub_127D0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_6DF4(&qword_2CC48, &unk_21050);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_1F640();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6DF4(&qword_2D358, &unk_21990);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_97CC(a1, v19 - v14, &qword_2D358, &unk_21990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = sub_1F6A0();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_13A88, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_12AB0(uint64_t a1, char a2, void (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v11 = sub_6DF4(&qword_2CC48, &unk_21050);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  v20 = a1;
  if (a2)
  {
    v21 = 1;
    swift_errorRetain();
    a5(&v20);
    v15 = a1;
    v16 = 1;
  }

  else
  {

    a3(&v20);
    v17 = sub_1F6A0();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_13A88, v18);

    (*(v12 + 8))(v14, v11);
    v15 = a1;
    v16 = 0;
  }

  return sub_13804(v15, v16);
}

uint64_t sub_12C68(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_6DF4(&qword_2CC48, &unk_21050);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_1F600();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6DF4(&qword_2D350, "*3");
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_97CC(a1, v19 - v14, &qword_2D350, "*3");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = sub_1F6A0();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_13A88, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_12F48(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a4;
  v23 = a5;
  v19[1] = a3;
  v20 = a2;
  v6 = sub_6DF4(&qword_2CC48, &unk_21050);
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_1F680();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6DF4(&qword_2D368, qword_219A0);
  __chkstk_darwin(v13);
  v15 = (v19 - v14);
  sub_97CC(a1, v19 - v14, &qword_2D368, qword_219A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v15;
    v25 = 1;
    swift_errorRetain();
    v22(&v24);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v20(v12);
    v17 = sub_1F6A0();
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = v23;

    v17(sub_13A88, v18);

    (*(v21 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_13228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  swift_errorRetain();

  return sub_1F690();
}

uint64_t sub_132D4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_8C2C(v6, 0);
}

uint64_t sub_13368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_6DF4(&qword_2CC48, &unk_21050);
  v9 = sub_1F6A0();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_1372C, v10);
}

uint64_t sub_13450(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_6DF4(&qword_2CC48, &unk_21050) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_13368(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1350C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = sub_6DF4(&qword_2CC48, &unk_21050);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  if (a2)
  {
    a5(a1);
    v14 = sub_1F6A0();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v14(sub_13A88, v15);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;
    return a3(&v17);
  }
}

uint64_t *sub_13698(uint64_t *result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_136E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_13744()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_13804(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_138C8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t *sub_13914(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_13974(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t getEnumTagSinglePayload for FitnessSettingsDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FitnessSettingsDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_13C00()
{
  result = qword_2D370;
  if (!qword_2D370)
  {
    sub_7420(&qword_2D378, "R3");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D370);
  }

  return result;
}

Swift::Int sub_13C78()
{
  v1 = *v0;
  sub_201B0();
  sub_201C0(v1);
  return sub_201D0();
}

Swift::Int sub_13CEC(uint64_t a1)
{
  v2 = *v1;
  sub_201B0();
  sub_201C0(v2);
  return sub_201D0();
}

unint64_t sub_13D44()
{
  result = qword_2D380;
  if (!qword_2D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D380);
  }

  return result;
}

uint64_t sub_13DAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_6DF4(&qword_2CEE8, qword_213F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1F540();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_13EF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_6DF4(&qword_2CEE8, qword_213F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_1F540();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(uint64_t a1)
{
  result = qword_2D3E0;
  if (!qword_2D3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1407C(uint64_t a1)
{
  sub_14190(319, &qword_2CB68, &type metadata accessor for Dependencies, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_14190(319, &qword_2CF68, &type metadata accessor for AudioLanguagePreference, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_141F4();
      if (v3 <= 0x3F)
      {
        sub_1F540();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_14190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_141F4()
{
  if (!qword_2D3F0)
  {
    v0 = sub_1FD90();
    if (!v1)
    {
      atomic_store(v0, &qword_2D3F0);
    }
  }
}

uint64_t sub_14260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1F640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = sub_6DF4(&qword_2D430, &qword_21B28);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v36 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  sub_14DD4(a1, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_14FA8(&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v38 = a1;
  sub_6DF4(&qword_2D438, &qword_21B30);
  sub_15074();
  sub_1FDA0();
  *&v16[*(v12 + 44)] = sub_1FAF0();
  sub_6DF4(&qword_2CEE8, qword_213F0);
  sub_1FDC0();
  v19 = sub_1F630();
  v21 = v20;
  (*(v4 + 8))(v6, v3);
  v22 = (a1 + *(v8 + 32));
  v23 = *v22;
  v24 = *(v22 + 2);
  v41 = v23;
  v42 = v24;
  sub_6DF4(&qword_2D448, &qword_21B38);
  sub_1FD60();
  if (v19 == v39 && v21 == v40)
  {
  }

  else
  {
    v25 = sub_20190();

    if ((v25 & 1) == 0)
    {
      v27 = 0;
      KeyPath = 0;
      v26 = 0;
      v29 = 0;
      goto LABEL_7;
    }
  }

  sub_1FBB0();
  sub_1FBC0();
  v26 = sub_1FBD0();

  v27 = sub_1FD40();
  KeyPath = swift_getKeyPath();
  v29 = sub_1FD20();

LABEL_7:
  v30 = v36;
  sub_150F0(v16, v36);
  v31 = v37;
  sub_150F0(v30, v37);
  v32 = sub_6DF4(&qword_2D450, &qword_21B40);
  v33 = v31 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = (v31 + *(v32 + 64));
  sub_15160(v27, KeyPath, v26, v29);
  sub_151C4(v27, KeyPath, v26, v29);
  *v34 = v27;
  v34[1] = KeyPath;
  v34[2] = v26;
  v34[3] = v29;
  sub_15224(v16);
  sub_151C4(v27, KeyPath, v26, v29);
  return sub_15224(v30);
}

uint64_t sub_146C0(uint64_t a1)
{
  type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(0);
  sub_6DF4(&qword_2D448, &qword_21B38);
  sub_1FD60();
  sub_14748(v2, v3);
}

uint64_t sub_14748(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_6DF4(&qword_2CC48, &unk_21050);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v33 = &v28 - v4;
  v32 = sub_1F640();
  v28 = *(v32 - 8);
  v5 = __chkstk_darwin(v32);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - v8;
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = sub_1FA50();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 8);

  if (v16)
  {
    sub_6DF4(&qword_2CC70, &unk_21B80);
    sub_1F5A0();
  }

  else
  {
    sub_20080();
    v17 = sub_1FBA0();
    sub_1F8E0();

    sub_1FA40();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    sub_6DF4(&qword_2CC70, &unk_21B80);
    sub_1F5A0();

    sub_20080();
    v18 = sub_1FBA0();
    sub_1F8E0();

    sub_1FA40();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
  }

  sub_6DF4(&qword_2CC30, &qword_21038);
  sub_1F5A0();

  sub_7800(v36, v36[3]);
  if (!sub_1F7D0())
  {

    sub_20060();
    sub_1F620();
    v19 = v28;
    v20 = *(v28 + 16);
    v21 = v32;
    v20(v9, v11, v32);
    type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(0);
    v20(v29, v9, v21);
    sub_6DF4(&qword_2CEE8, qword_213F0);
    sub_1FDD0();
    v22 = *(v19 + 8);
    v22(v9, v21);
    sub_7800(v37, v37[3]);
    v23 = v33;
    sub_1F770();
    v24 = v35;
    v25 = sub_1F6A0();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v25(sub_8B3C, v26);

    (*(v34 + 8))(v23, v24);
    v22(v11, v21);
  }

  sub_7844(v36);
  return sub_7844(v37);
}

uint64_t sub_14CA4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(0);
  sub_6DF4(&qword_2D448, &qword_21B38);
  sub_1FD60();
  sub_1F4E0(v10);
  v4 = v3;

  if (v4)
  {
    sub_748C();
    result = sub_1FC10();
    v9 = v8 & 1;
  }

  else
  {
    result = 0;
    v6 = 0;
    v9 = 0;
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v6;
  a2[2] = v9;
  a2[3] = v7;
  return result;
}

uint64_t sub_14D80@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1FA90();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_6DF4(&qword_2D428, &qword_21B20);
  return sub_14260(v1, a1 + *(v3 + 44));
}

uint64_t sub_14DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14E38()
{
  v1 = (type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];

  v6 = *(sub_6DF4(&qword_2CEE8, qword_213F0) + 32);
  v7 = sub_1F640();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = v1[9];
  v9 = sub_1F540();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_14FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1500C()
{
  v1 = *(type metadata accessor for FitnessPlusAudioLanguageSettingsItemView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_146C0(v2);
}

unint64_t sub_15074()
{
  result = qword_2D440;
  if (!qword_2D440)
  {
    sub_7420(&qword_2D438, &qword_21B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D440);
  }

  return result;
}

uint64_t sub_150F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_6DF4(&qword_2D430, &qword_21B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15160(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_151C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_15224(uint64_t a1)
{
  v2 = sub_6DF4(&qword_2D430, &qword_21B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1528C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1FA00();
  *a1 = result;
  return result;
}

uint64_t sub_152E4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_15328()
{
  result = qword_2D458;
  if (!qword_2D458)
  {
    sub_7420(&qword_2D460, &qword_21B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D458);
  }

  return result;
}

uint64_t sub_1538C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  *a2 = *(v3 + 50);
  return result;
}

uint64_t sub_1542C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  *a2 = *(v3 + 51);
  return result;
}

uint64_t sub_154CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  *a2 = *(v3 + 52);
  return result;
}

uint64_t sub_1556C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  *a2 = *(v3 + 53);
  return result;
}

uint64_t sub_1560C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  *a2 = *(v3 + 54);
  return result;
}

uint64_t sub_156AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  *a2 = *(v3 + 55);
  return result;
}

void *sub_1574C()
{
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_157C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_1584C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F6B8();
    sub_1F550();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1AB28(0, &qword_2D868, HKObserverQuery_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_200E0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

uint64_t sub_159AC()
{
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  return *(v0 + 48);
}

uint64_t sub_15A1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_15ABC(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F6B8();
    sub_1F550();
  }

  return result;
}

uint64_t sub_15B9C()
{
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  return *(v0 + 49);
}

uint64_t sub_15C0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_15CAC(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F6B8();
    sub_1F550();
  }

  return result;
}

uint64_t sub_15D8C()
{
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  return *(v0 + 50);
}

uint64_t sub_15DFC(char a1)
{
  v2 = *(v1 + 50);
  if (v2 == (a1 & 1))
  {
    *(v1 + 50) = a1 & 1;
    swift_getKeyPath();
    sub_F6B8();
    sub_1F560();

    if (v2 != *(v1 + 50))
    {
      swift_getKeyPath();
      sub_1F560();

      return FIUISetWorkoutVoiceFeedbackEnabled();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F6B8();
    sub_1F550();
  }

  return result;
}

uint64_t sub_15F64(uint64_t a1, char a2)
{
  v3 = *(a1 + 50);
  *(a1 + 50) = a2;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  if (v3 != *(a1 + 50))
  {
    swift_getKeyPath();
    sub_1F560();

    return FIUISetWorkoutVoiceFeedbackEnabled();
  }

  return result;
}

uint64_t sub_16030()
{
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  return *(v0 + 51);
}

uint64_t sub_160A0(char a1)
{
  v2 = *(v1 + 51);
  if (v2 == (a1 & 1))
  {
    *(v1 + 51) = a1 & 1;
    swift_getKeyPath();
    sub_F6B8();
    sub_1F560();

    if (v2 != *(v1 + 51))
    {
      swift_getKeyPath();
      sub_1F560();

      return FISetWorkoutSafetyCheckInEnabled();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F6B8();
    sub_1F550();
  }

  return result;
}

uint64_t sub_16208(uint64_t a1, char a2)
{
  v3 = *(a1 + 51);
  *(a1 + 51) = a2;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  if (v3 != *(a1 + 51))
  {
    swift_getKeyPath();
    sub_1F560();

    return FISetWorkoutSafetyCheckInEnabled();
  }

  return result;
}

uint64_t sub_162D4()
{
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  return *(v0 + 52);
}

uint64_t sub_16344(char a1)
{
  v2 = *(v1 + 52);
  if (v2 == (a1 & 1))
  {
    *(v1 + 52) = a1 & 1;
    swift_getKeyPath();
    sub_F6B8();
    sub_1F560();

    if (v2 != *(v1 + 52))
    {
      swift_getKeyPath();
      sub_1F560();

      return FIUISetShouldConfirmEndingWorkout();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F6B8();
    sub_1F550();
  }

  return result;
}

uint64_t sub_164AC(uint64_t a1, char a2)
{
  v3 = *(a1 + 52);
  *(a1 + 52) = a2;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  if (v3 != *(a1 + 52))
  {
    swift_getKeyPath();
    sub_1F560();

    return FIUISetShouldConfirmEndingWorkout();
  }

  return result;
}

uint64_t sub_16578()
{
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  return *(v0 + 53);
}

uint64_t sub_165E8(char a1)
{
  v2 = *(v1 + 53);
  if (v2 == (a1 & 1))
  {
    *(v1 + 53) = a1 & 1;
    swift_getKeyPath();
    sub_F6B8();
    sub_1F560();

    if (v2 != *(v1 + 53))
    {
      swift_getKeyPath();
      sub_1F560();

      return FIUISetAutoPauseEnabled();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F6B8();
    sub_1F550();
  }

  return result;
}

uint64_t sub_16750(uint64_t a1, char a2)
{
  v3 = *(a1 + 53);
  *(a1 + 53) = a2;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  if (v3 != *(a1 + 53))
  {
    swift_getKeyPath();
    sub_1F560();

    return FIUISetAutoPauseEnabled();
  }

  return result;
}

uint64_t sub_1681C()
{
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  return *(v0 + 54);
}

uint64_t sub_1688C(char a1)
{
  v2 = *(v1 + 54);
  if (v2 == (a1 & 1))
  {
    *(v1 + 54) = a1 & 1;
    swift_getKeyPath();
    sub_F6B8();
    sub_1F560();

    if (v2 != *(v1 + 54))
    {
      swift_getKeyPath();
      sub_1F560();

      return FIUISetRunningAutoPauseEnabled();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F6B8();
    sub_1F550();
  }

  return result;
}

uint64_t sub_169F4(uint64_t a1, char a2)
{
  v3 = *(a1 + 54);
  *(a1 + 54) = a2;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  if (v3 != *(a1 + 54))
  {
    swift_getKeyPath();
    sub_1F560();

    return FIUISetRunningAutoPauseEnabled();
  }

  return result;
}

uint64_t sub_16AC0()
{
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  return *(v0 + 55);
}

uint64_t sub_16B30(char a1)
{
  v2 = *(v1 + 55);
  if (v2 == (a1 & 1))
  {
    *(v1 + 55) = a1 & 1;
    swift_getKeyPath();
    sub_F6B8();
    sub_1F560();

    if (v2 != *(v1 + 55))
    {
      swift_getKeyPath();
      sub_1F560();

      return FIUISetCyclingAutoPauseEnabled();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_F6B8();
    sub_1F550();
  }

  return result;
}

uint64_t sub_16C98(uint64_t a1, char a2)
{
  v3 = *(a1 + 55);
  *(a1 + 55) = a2;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  if (v3 != *(a1 + 55))
  {
    swift_getKeyPath();
    sub_1F560();

    return FIUISetCyclingAutoPauseEnabled();
  }

  return result;
}

id *sub_16D64()
{
  v1 = v0;
  [*(v0 + 24) removeObserver:v0];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC15FitnessSettings31WorkoutControlsSettingsProvider___observationRegistrar;
  sub_F6B8();
  sub_1F560();

  if (*(v0 + 32))
  {
    [*(v0 + 16) stopQuery:?];
  }

  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v1);

  v4 = sub_1F580();
  (*(*(v4 - 8) + 8))(v1 + v2, v4);
  return v1;
}

uint64_t sub_16E74()
{
  sub_16D64();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WorkoutControlsSettingsProvider(uint64_t a1)
{
  result = qword_2D498;
  if (!qword_2D498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_16F20(uint64_t a1)
{
  result = sub_1F580();
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

id sub_16FE4()
{
  v1 = v0;
  sub_1AB28(0, &qword_2D838, HKSampleType_ptr);
  result = [swift_getObjCClassFromMetadata() activityMoveModeChangeType];
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = objc_allocWithZone(HKObserverQuery);
    v8[4] = sub_1A928;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_18F30;
    v8[3] = &unk_29D98;
    v6 = _Block_copy(v8);

    v7 = [v5 initWithSampleType:v3 predicate:0 updateHandler:v6];

    _Block_release(v6);

    sub_1584C(v7);
    swift_getKeyPath();
    v8[0] = v1;
    sub_F6B8();
    sub_1F560();

    if (*(v1 + 32))
    {
      return [*(v1 + 16) executeQuery:?];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_17198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_171F0();
  }

  return result;
}

uint64_t sub_171F0()
{
  v1 = *v0;
  v2 = sub_6DF4(&qword_2D800, &qword_21CA8);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_20050();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v1;

  sub_1792C(0, 0, v4, &unk_21DC0, v6);
}

uint64_t sub_17320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_173B4;

  return sub_17C1C();
}

uint64_t sub_173B4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_174B4, 0, 0);
}

uint64_t sub_174B4()
{
  v25 = v0;
  v1 = v0[6];
  v2 = sub_20090();
  v3 = HKLogActivity;
  v4 = os_log_type_enabled(HKLogActivity, v2);
  if (v1)
  {
    if (v4)
    {
      v5 = v0[6];
      v6 = v3;
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v7 = 136315394;
      v10 = sub_201E0();
      v12 = sub_1950C(v10, v11, &v24);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2112;
      *(v7 + 14) = v1;
      *v8 = v5;
      v13 = v1;
      _os_log_impl(&dword_0, v6, v2, "%s last move mode sample: %@", v7, 0x16u);
      sub_976C(v8, &qword_2D860, &qword_21DF0);

      sub_7844(v9);
    }

    sub_20030();
    v0[7] = sub_20020();
    v15 = sub_20000();

    return _swift_task_switch(sub_17790, v15, v14);
  }

  else
  {
    if (v4)
    {
      v16 = v3;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v19 = sub_201E0();
      v21 = sub_1950C(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v16, v2, "%s no last move mode sample; defaulting isAppleMoveTime to false", v17, 0xCu);
      sub_7844(v18);
    }

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_17790()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = [v1 value];
  if ((*(v2 + 49) ^ (v3 == &dword_0 + 2)))
  {
    v4 = v3 == &dword_0 + 2;
    v5 = v0[3];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v0[2] = v5;
    sub_F6B8();
    sub_1F550();
  }

  else
  {
    *(v2 + 49) = v3 == &dword_0 + 2;
  }

  return _swift_task_switch(sub_178CC, 0, 0);
}

uint64_t sub_178CC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_6DF4(&qword_2D800, &qword_21CA8);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1A1F4(a3, v25 - v10);
  v12 = sub_20050();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_976C(v11, &qword_2D800, &qword_21CA8);
  }

  else
  {
    sub_20040();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20000();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1FF90() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_976C(a3, &qword_2D800, &qword_21CA8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_976C(a3, &qword_2D800, &qword_21CA8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_17C1C()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_17C64, 0, 0);
}

uint64_t sub_17C64()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_1FF80();
  v3 = objc_allocWithZone(NSSortDescriptor);
  v4 = sub_1FF70();

  v5 = [v3 initWithKey:v4 ascending:0];
  v0[5] = v5;

  sub_1FF80();
  v6 = objc_allocWithZone(NSSortDescriptor);
  v7 = sub_1FF70();

  v8 = [v6 initWithKey:v7 ascending:0];
  v0[6] = v8;

  v9 = swift_task_alloc();
  v0[7] = v9;
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v2;
  v9[5] = v1;
  v10 = swift_task_alloc();
  v0[8] = v10;
  v11 = sub_6DF4(&qword_2D828, &qword_21D98);
  *v10 = v0;
  v10[1] = sub_17E40;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000028, 0x80000000000227E0, sub_1A61C, v9, v11);
}

uint64_t sub_17E40()
{

  return _swift_task_switch(sub_17F58, 0, 0);
}

uint64_t sub_17F58()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_17FC0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v8 = sub_6DF4(&qword_2D830, &qword_21DA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  sub_1AB28(0, &qword_2D838, HKSampleType_ptr);
  v13 = [swift_getObjCClassFromMetadata() activityMoveModeChangeType];
  if (v13)
  {
    v14 = v13;
    sub_6DF4(&qword_2D840, &qword_21DA8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21BB0;
    *(v15 + 32) = a2;
    *(v15 + 40) = a3;
    (*(v9 + 16))(v12, a1, v8);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v12, v8);
    *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
    v18 = objc_allocWithZone(HKSampleQuery);
    sub_1AB28(0, &qword_2D848, NSSortDescriptor_ptr);
    v19 = a2;
    v20 = a3;
    isa = sub_1FFD0().super.isa;

    aBlock[4] = sub_1A6C8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19004;
    aBlock[3] = &unk_29D20;
    v22 = _Block_copy(aBlock);
    v23 = [v18 initWithSampleType:v14 predicate:0 limit:1 sortDescriptors:isa resultsHandler:v22];

    _Block_release(v22);

    [*(v25 + 16) executeQuery:v23];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_18288(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = sub_20070();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v5))
    {
      v7 = v6;
      v8 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = sub_201E0();
      v11 = sub_1950C(v9, v10, &v23);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      sub_201A0();
      sub_6DF4(&qword_2D858, &qword_21DB0);
      v12 = sub_200F0();
      v14 = v13;

      v15 = sub_1950C(v12, v14, &v23);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_0, v7, v5, "%s failed to load last move mode category sample with error: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v16 = a2 & 0xFFFFFFFFFFFFFF8;
  if (!(a2 >> 62))
  {
    v17 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_15:
    sub_6DF4(&qword_2D830, &qword_21DA0);
    return sub_20010();
  }

  v22 = a2;
  v17 = sub_20140();
  a2 = v22;
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_8:
  v18 = __OFSUB__(v17, 1);
  result = v17 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v20 = sub_20120();
LABEL_13:
    v21 = v20;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
    }

    goto LABEL_15;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v16 + 16))
  {
    v20 = *(a2 + 8 * result + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_184FC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_F6B8();
  sub_1F560();

  if (*(v0 + 53) == 1)
  {
    swift_getKeyPath();
    sub_1F560();

    if (*(v0 + 54) == 1)
    {
      type metadata accessor for FitnessSettingsBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v4 = sub_1FF70();
      v5 = sub_1FF70();
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

      v7 = sub_1FF80();
      v9 = v8;

      v10 = sub_192F8(0, 1, 1, &_swiftEmptyArrayStorage);
      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v31 = sub_192F8((v11 > 1), v12 + 1, 1, v10);
        v13 = v12 + 1;
        v10 = v31;
      }

      *(v10 + 2) = v13;
      v14 = &v10[16 * v12];
      *(v14 + 4) = v7;
      *(v14 + 5) = v9;
    }

    else
    {
      v10 = &_swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    sub_1F560();

    if (*(v1 + 55) == 1)
    {
      type metadata accessor for FitnessSettingsBundle();
      v15 = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass:v15];
      v17 = sub_1FF70();
      v18 = sub_1FF70();
      v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

      v20 = sub_1FF80();
      v22 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_192F8(0, *(v10 + 2) + 1, 1, v10);
      }

      v24 = *(v10 + 2);
      v23 = *(v10 + 3);
      if (v24 >= v23 >> 1)
      {
        v10 = sub_192F8((v23 > 1), v24 + 1, 1, v10);
      }

      *(v10 + 2) = v24 + 1;
      v25 = &v10[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
    }

    v26 = [objc_allocWithZone(NSListFormatter) init];
    sub_18914(v10);

    isa = sub_1FFD0().super.isa;

    v28 = [v26 stringFromItems:isa];

    if (v28)
    {
      v29 = sub_1FF80();

      return v29;
    }
  }

  return 0;
}

unint64_t *sub_18914(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_19AC4(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_19AC4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_9228(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_18A14(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    type metadata accessor for WorkoutControlsSettingsProvider(0);
    swift_unknownObjectRetain();
    v4 = a3;
    if (swift_dynamicCastClass())
    {
      sub_18AE8();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_18AE8()
{
  v0 = sub_20090();
  v1 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    sub_6DF4(&qword_2D808, &qword_21D00);
    v5 = sub_200F0();
    v7 = sub_1950C(v5, v6, &v15);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v2, v0, "workout preferences changed, received: %s", v3, 0xCu);
    sub_7844(v4);
  }

  v8 = FIUIIsWorkoutVoiceFeedbackEnabled();
  sub_15DFC(v8);
  v9 = FIIsWorkoutSafetyCheckInEnabled();
  sub_160A0(v9);
  v10 = FIUIShouldConfirmEndingWorkout();
  sub_16344(v10);
  v11 = FIUIIsAutoPauseEnabled();
  sub_165E8(v11);
  v12 = FIUIIsRunningAutoPauseEnabled();
  sub_1688C(v12);
  v13 = FIUIIsCyclingAutoPauseEnabled();
  return sub_16B30(v13);
}

uint64_t sub_18C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 24) = a4;
  sub_20030();
  *(v5 + 32) = sub_20020();
  v7 = sub_20000();

  return _swift_task_switch(sub_18CE0, v7, v6);
}

uint64_t sub_18CE0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  if (v1 == *(v2 + 48))
  {
    *(v2 + 48) = *(v0 + 40);
  }

  else
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    sub_F6B8();
    sub_1F550();
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_18F30(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a4;
  v6(v10, sub_1A99C, v8, a4);
}

uint64_t sub_19004(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1AB28(0, &qword_2D850, HKSample_ptr);
    v5 = sub_1FFE0();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_190BC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_19108(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19200;

  return v6(a1);
}

uint64_t sub_19200()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_192F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_6DF4(&qword_2D818, &qword_21D88);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_19404(uint64_t a1, uint64_t a2)
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

  sub_6DF4(&qword_2D818, &qword_21D88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_194B0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1950C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1950C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_195D8(v11, 0, 0, 1, a1, a2);
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
    sub_1A53C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_7844(v11);
  return v7;
}

unint64_t sub_195D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_196E4(a5, a6);
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
    result = sub_20130();
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

char *sub_196E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_19730(a1, a2);
  sub_19860(&off_29468);
  return v3;
}

char *sub_19730(uint64_t a1, unint64_t a2)
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

  v6 = sub_1994C(v5, 0);
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

  result = sub_20130();
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
        v10 = sub_1FFB0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1994C(v10, 0);
        result = sub_20110();
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

uint64_t sub_19860(uint64_t result)
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

  result = sub_199C0(result, v11, 1, v3);
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

void *sub_1994C(uint64_t a1, uint64_t a2)
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

  sub_6DF4(&qword_2D810, &qword_21D08);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_199C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_6DF4(&qword_2D810, &qword_21D08);
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

_BYTE **sub_19AB4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

char *sub_19AC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_19BF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19AE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_6DF4(&qword_2D818, &qword_21D88);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_19BF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_6DF4(&qword_2D820, &qword_21D90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_19D00(void *a1)
{
  v2 = v1;
  v4 = sub_1F870();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = __chkstk_darwin(v4);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v32 = sub_1F890();
  v9 = *(v32 - 8);
  v10 = __chkstk_darwin(v32);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = sub_1F850();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 50) = FIUIIsWorkoutVoiceFeedbackEnabled();
  *(v2 + 51) = FIIsWorkoutSafetyCheckInEnabled();
  *(v2 + 52) = FIUIShouldConfirmEndingWorkout();
  *(v2 + 53) = FIUIIsAutoPauseEnabled();
  *(v2 + 54) = FIUIIsRunningAutoPauseEnabled();
  *(v2 + 55) = FIUIIsCyclingAutoPauseEnabled();
  sub_1F570();
  *(v2 + 16) = a1;
  result = [objc_allocWithZone(_HKWheelchairUseCharacteristicCache) initWithHealthStore:a1];
  if (result)
  {
    *(v2 + 24) = result;
    *(v2 + 48) = [result isWheelchairUser];
    sub_1F840();
    v22 = *(v15 + 16);
    v27 = v14;
    v22(v18, v20, v14);
    sub_1F880();
    v22(v18, v20, v14);
    sub_1F860();
    (*(v9 + 16))(v28, v13, v32);
    v23 = v30;
    v24 = v31;
    (*(v30 + 16))(v29, v8, v31);
    v25 = objc_allocWithZone(sub_1F6D0());
    *(v2 + 40) = sub_1F6B0();
    [*(v2 + 24) registerObserver:v2];
    sub_16FE4();
    v26 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v26, v2, sub_18A14, kNLSessionTrackerAppPreferencesChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    (*(v23 + 8))(v8, v24);
    (*(v9 + 8))(v13, v32);
    (*(v15 + 8))(v20, v27);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A130(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AB78;

  return sub_18C44(a1, v4, v5, v6, v7);
}

uint64_t sub_1A1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_6DF4(&qword_2D800, &qword_21CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A264()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A29C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB78;

  return sub_19108(a1, v4);
}

uint64_t sub_1A354(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A40C;

  return sub_19108(a1, v4);
}

uint64_t sub_1A40C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A53C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1A628()
{
  v1 = sub_6DF4(&qword_2D830, &qword_21DA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

unint64_t sub_1A6C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_6DF4(&qword_2D830, &qword_21DA0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18288(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1A788(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A7A8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1A7F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A40C;

  return sub_17320(a1, v4, v5, v7, v6);
}

uint64_t sub_1A8F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1A934(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1584C(v1);
}

uint64_t sub_1A964()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1AAF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_1AB28(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_1ABB0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1F800();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  sub_1F7A0();
  sub_9B84();
  sub_200A0();
  *(a1 + 16) = sub_1F790();
  v6 = type metadata accessor for FitnessPrivacySettings(0);
  sub_1F4F0();
  v7 = v6[7];
  sub_1F740();
  sub_200A0();
  (*(v3 + 104))(v5, enum case for EventDispatchStrategy.async(_:), v2);
  v20 = sub_1F7F0();
  v21 = &protocol witness table for DispatchTimerProvider;
  sub_1AE8C(&v18);
  sub_1F7E0();
  sub_1F830();
  swift_allocObject();
  sub_1F820();
  sub_200A0();
  *(a1 + v7) = sub_1F730();
  v8 = a1 + v6[8];
  HIBYTE(v17) = 0;
  sub_1FD50();
  v9 = v19;
  *v8 = v18;
  *(v8 + 8) = v9;
  v10 = a1 + v6[9];
  HIBYTE(v17) = 0;
  sub_1FD50();
  v11 = v19;
  *v10 = v18;
  *(v10 + 8) = v11;
  v12 = a1 + v6[10];
  HIBYTE(v17) = 0;
  sub_1FD50();
  v13 = v19;
  *v12 = v18;
  *(v12 + 8) = v13;
  v14 = a1 + v6[11];
  HIBYTE(v17) = 0;
  result = sub_1FD50();
  v16 = v19;
  *v14 = v18;
  *(v14 + 8) = v16;
  return result;
}

uint64_t type metadata accessor for FitnessPrivacySettings(uint64_t a1)
{
  result = qword_2D8C8;
  if (!qword_2D8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_1AE8C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1AF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1F540();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AFC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1F540();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B068(uint64_t a1)
{
  sub_1B138(319);
  if (v1 <= 0x3F)
  {
    sub_1F7A0();
    if (v2 <= 0x3F)
    {
      sub_1F540();
      if (v3 <= 0x3F)
      {
        sub_1F740();
        if (v4 <= 0x3F)
        {
          sub_1B190();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B138(uint64_t a1)
{
  if (!qword_2CB68)
  {
    sub_1F5B0();
    v1 = sub_1F930();
    if (!v2)
    {
      atomic_store(v1, &qword_2CB68);
    }
  }
}

void sub_1B190()
{
  if (!qword_2CB88)
  {
    v0 = sub_1FD90();
    if (!v1)
    {
      atomic_store(v0, &qword_2CB88);
    }
  }
}

uint64_t sub_1B1FC@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = type metadata accessor for FitnessPrivacySettings(0);
  v53 = *(v2 - 8);
  v52 = *(v53 + 64);
  __chkstk_darwin(v2 - 8);
  v50 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1FA80();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1F990();
  v6 = *(v54 - 8);
  __chkstk_darwin(v54);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6DF4(&qword_2D918, &qword_21F58);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - v11;
  v42 = sub_6DF4(&qword_2D920, &qword_21F60);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v14 = &v41 - v13;
  v44 = sub_6DF4(&qword_2D928, &qword_21F68);
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v41 - v15;
  v55 = v1;
  sub_6DF4(&qword_2D930, &qword_21F70);
  sub_96B4(&qword_2D938, &qword_2D930, &qword_21F70, &protocol conformance descriptor for TupleView<A>);
  sub_1FBE0();
  sub_1FEB0();
  v16 = sub_96B4(&qword_2D940, &qword_2D918, &qword_21F58, &protocol conformance descriptor for Form<A>);
  v17 = sub_1EB08(&qword_2CC10, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
  v18 = v54;
  sub_1FCD0();
  (*(v6 + 8))(v8, v18);
  (*(v10 + 8))(v12, v9);
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v21 = sub_1FF70();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  v23 = sub_1FF80();
  v25 = v24;

  v60 = v23;
  v61 = v25;
  v56 = v9;
  v57 = v54;
  v58 = v16;
  v59 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_748C();
  v28 = v41;
  v29 = v42;
  sub_1FC60();

  v30 = v29;
  (*(v43 + 8))(v14, v29);
  v31 = v47;
  v32 = v48;
  v33 = v49;
  (*(v48 + 104))(v47, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v49);
  v56 = v30;
  v57 = &type metadata for String;
  v58 = OpaqueTypeConformance2;
  v59 = v27;
  swift_getOpaqueTypeConformance2();
  v34 = v51;
  v35 = v44;
  sub_1FC80();
  (*(v32 + 8))(v31, v33);
  (*(v46 + 8))(v28, v35);
  v36 = v50;
  sub_1E764(v45, v50);
  v37 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v38 = swift_allocObject();
  sub_1E7CC(v36, v38 + v37);
  result = sub_6DF4(&qword_2D948, &qword_21F78);
  v40 = (v34 + *(result + 36));
  *v40 = sub_1E830;
  v40[1] = v38;
  v40[2] = 0;
  v40[3] = 0;
  return result;
}

uint64_t sub_1B8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_6DF4(&qword_2D968, &qword_21FA8);
  v92 = *(v3 - 8);
  v93 = v3;
  v4 = __chkstk_darwin(v3);
  v90 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v96 = v82 - v6;
  v7 = sub_1F5F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_6DF4(&qword_2D970, &qword_21FB0);
  v89 = *(v87 - 8);
  v11 = __chkstk_darwin(v87);
  v88 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = v82 - v13;
  v14 = sub_6DF4(&qword_2D978, &qword_21FB8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v86 = v82 - v16;
  v17 = sub_6DF4(&qword_2D980, &unk_21FC0);
  v18 = __chkstk_darwin(v17 - 8);
  v95 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v82 - v20;
  v22 = (a1 + *(type metadata accessor for FitnessPrivacySettings(0) + 32));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v106) = v23;
  v107 = v24;
  sub_6DF4(&qword_2CC38, &unk_21040);
  v25 = sub_1FD60();
  v94 = v21;
  if (v102 == 1)
  {
    v82[2] = v82;
    __chkstk_darwin(v25);
    v82[1] = &v82[-4];
    v84 = v14;
    type metadata accessor for FitnessSettingsBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = objc_opt_self();
    v83 = v15;
    v28 = v27;
    v29 = [v27 bundleForClass:ObjCClassFromMetadata];
    v30 = sub_1FF70();
    v31 = [v29 localizedStringForKey:v30 value:0 table:0];

    v32 = sub_1FF80();
    v85 = v7;
    v82[3] = a1;
    v34 = v33;

    v106 = v32;
    v107 = v34;
    sub_748C();
    v106 = sub_1FC10();
    v107 = v35;
    v108 = v36 & 1;
    v109 = v37;
    v38 = [v28 bundleForClass:ObjCClassFromMetadata];
    v39 = sub_1FF70();
    v40 = [v38 localizedStringForKey:v39 value:0 table:0];

    v41 = sub_1FF80();
    v43 = v42;

    v102 = v41;
    v103 = v43;
    v15 = v83;
    v102 = sub_1FC10();
    v103 = v44;
    LOBYTE(v104) = v45 & 1;
    v105 = v46;
    sub_6DF4(&qword_2D9A0, &unk_21FE0);
    v47 = sub_7420(&qword_2CE78, &qword_212E0);
    v14 = v84;
    v48 = sub_96B4(&qword_2CE80, &qword_2CE78, &qword_212E0, &protocol conformance descriptor for Toggle<A>);
    v98 = v47;
    v99 = &type metadata for Bool;
    v7 = v85;
    v100 = v48;
    v101 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    v49 = v86;
    v21 = v94;
    sub_1FE20();
    (*(v15 + 32))(v21, v49, v14);
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  (*(v15 + 56))(v21, v50, 1, v14);
  (*(v8 + 104))(v10, enum case for PrivacyIdentifier.fitnessPlus(_:), v7);
  v51 = sub_1F5E0();
  v53 = v52;
  (*(v8 + 8))(v10, v7);
  sub_1C8C0(v51, v53, 1, v97);

  type metadata accessor for FitnessSettingsBundle();
  v54 = swift_getObjCClassFromMetadata();
  v55 = [objc_opt_self() bundleForClass:v54];
  v56 = sub_1FF70();
  v57 = [v55 localizedStringForKey:v56 value:0 table:0];

  v58 = sub_1FF80();
  v60 = v59;

  v106 = v58;
  v107 = v60;
  sub_748C();
  v106 = sub_1FC10();
  v107 = v61;
  v108 = v62 & 1;
  v109 = v63;
  __chkstk_darwin(v106);
  v64 = sub_7420(&qword_2CCB8, &qword_210B0);
  v65 = sub_7420(&qword_2D988, &qword_21FD0);
  v66 = sub_96B4(&qword_2CCC0, &qword_2CCB8, &qword_210B0, &protocol conformance descriptor for Button<A>);
  v67 = sub_96B4(&qword_2D990, &qword_2D988, &qword_21FD0, &protocol conformance descriptor for NavigationView<A>);
  v102 = v64;
  v103 = v65;
  v104 = v66;
  v105 = v67;
  swift_getOpaqueTypeConformance2();
  v68 = v96;
  v69 = v87;
  sub_1FE10();
  v70 = v95;
  sub_1EB58(v21, v95);
  v71 = v89;
  v86 = *(v89 + 16);
  v72 = v88;
  (v86)(v88, v97, v69);
  v73 = v92;
  v85 = *(v92 + 16);
  v74 = v90;
  v75 = v68;
  v76 = v93;
  v85(v90, v75, v93);
  v77 = v91;
  sub_1EB58(v70, v91);
  v78 = sub_6DF4(&qword_2D998, &qword_21FD8);
  (v86)(v77 + *(v78 + 48), v72, v69);
  v85((v77 + *(v78 + 64)), v74, v76);
  v79 = *(v73 + 8);
  v79(v96, v76);
  v80 = *(v71 + 8);
  v80(v97, v69);
  sub_1EBC8(v94);
  v79(v74, v76);
  v80(v72, v69);
  return sub_1EBC8(v95);
}

uint64_t sub_1C340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for FitnessPrivacySettings(0);
  v4 = v3 - 8;
  v23 = *(v3 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v3);
  v6 = sub_6DF4(&qword_2CE78, &qword_212E0);
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v11 = sub_1FF70();
  v12 = [v10 localizedStringForKey:v11 value:0 table:0];

  v13 = sub_1FF80();
  v15 = v14;

  v31 = v13;
  v32 = v15;
  v16 = (a1 + *(v4 + 44));
  v17 = *(v16 + 1);
  v29 = *v16;
  LOBYTE(v15) = v29;
  v30 = v17;
  sub_6DF4(&qword_2CC38, &unk_21040);
  sub_1FD80();
  sub_748C();
  sub_1FDB0();
  LOBYTE(v27) = v15;
  v28 = v17;
  sub_1FD60();
  LOBYTE(v27) = v31;
  sub_1E764(a1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = swift_allocObject();
  sub_1E7CC(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_96B4(&qword_2CE80, &qword_2CE78, &qword_212E0, &protocol conformance descriptor for Toggle<A>);
  v20 = v25;
  sub_1FCC0();

  return (*(v24 + 8))(v8, v20);
}

uint64_t sub_1C680(uint64_t a1, unsigned __int8 *a2)
{
  v2 = sub_1F680();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6DF4(&qword_2CC48, &unk_21050);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  type metadata accessor for FitnessPrivacySettings(0);
  sub_1F670();
  sub_1F650();
  sub_1F720();
  (*(v3 + 8))(v5, v2);
  v10 = sub_1F6A0();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v10(sub_9A10, v11);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1C8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v28 = a3;
  v37 = a4;
  v29 = type metadata accessor for FitnessPrivacySettings(0);
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v29);
  v10 = sub_6DF4(&qword_2CCB8, &qword_210B0);
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v27[-v11];
  sub_1E764(v5, &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = *(v8 + 80);
  v31 = ~v13;
  v14 = (v13 + 16) & ~v13;
  v15 = v14 + v9;
  v16 = swift_allocObject();
  sub_1E7CC(&v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v14);
  LOBYTE(v14) = v28;
  v30 = v28 & 1;
  *(v16 + v15) = v28 & 1;
  v38 = v5;
  v39 = a1;
  v32 = a1;
  v34 = a2;
  v40 = a2;
  v33 = v12;
  sub_1FDA0();
  if (v14)
  {
    v17 = *(v29 + 44);
  }

  else
  {
    v17 = *(v29 + 40);
  }

  v18 = (v5 + v17);
  v19 = *v18;
  v20 = *(v18 + 1);
  v41 = v19;
  v42 = v20;
  sub_6DF4(&qword_2CC38, &unk_21040);
  sub_1FD80();
  sub_1E764(v5, &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v21 = (v13 + 32) & v31;
  v22 = swift_allocObject();
  v23 = v34;
  *(v22 + 16) = v32;
  *(v22 + 24) = v23;
  sub_1E7CC(&v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v22 + v21);
  *(v22 + v21 + v9) = v30;

  sub_6DF4(&qword_2D988, &qword_21FD0);
  sub_96B4(&qword_2CCC0, &qword_2CCB8, &qword_210B0, &protocol conformance descriptor for Button<A>);
  sub_96B4(&qword_2D990, &qword_2D988, &qword_21FD0, &protocol conformance descriptor for NavigationView<A>);
  v24 = v36;
  v25 = v33;
  sub_1FCA0();

  return (*(v35 + 8))(v25, v24);
}

uint64_t sub_1CC6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1F5F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for PrivacyIdentifier.activitySharing(_:), v2);
  v6 = sub_1F5E0();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  sub_1C8C0(v6, v8, 0, a1);
}

uint64_t sub_1CD90()
{
  v1 = type metadata accessor for FitnessPrivacySettings(0);
  v33 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v34 = v2;
  v35 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6DF4(&qword_2D320, qword_21930);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v36 = v6;
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v31 - v7;
  v38 = sub_6DF4(&qword_2CC48, &unk_21050);
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v31 - v9;
  v11 = sub_1FA50();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 8);

  if ((v15 & 1) == 0)
  {
    sub_20080();
    v32 = v11;
    v16 = sub_1FBA0();
    sub_1F8E0();

    sub_1FA40();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v32);
  }

  sub_6DF4(&qword_2CC50, &qword_21FA0);
  sub_1F5A0();

  sub_7800(v40, v40[3]);
  v17 = v39;
  sub_1F7B0();
  v18 = v35;
  sub_1E764(v0, v35);
  v19 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v20 = swift_allocObject();
  sub_1E7CC(v18, v20 + v19);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1E914;
  *(v21 + 24) = v20;
  v22 = v37;
  (*(v4 + 16))(v37, v17, v3);
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = (v36 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v4 + 32))(v25 + v23, v22, v3);
  v26 = (v25 + v24);
  *v26 = sub_1E9FC;
  v26[1] = v21;
  sub_1F690();
  (*(v4 + 8))(v17, v3);
  v27 = v38;
  v28 = sub_1F6A0();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v28(sub_9A10, v29);

  (*(v8 + 8))(v10, v27);
  return sub_7844(v40);
}

uint64_t sub_1D2D0()
{
  v1 = type metadata accessor for FitnessPrivacySettings(0);
  v33 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v34 = v2;
  v35 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6DF4(&qword_2D360, &unk_21F80);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v36 = v6;
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v31 - v7;
  v38 = sub_6DF4(&qword_2CC48, &unk_21050);
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v31 - v9;
  v11 = sub_1FA50();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 8);

  if ((v15 & 1) == 0)
  {
    sub_20080();
    v32 = v11;
    v16 = sub_1FBA0();
    sub_1F8E0();

    sub_1FA40();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v32);
  }

  sub_6DF4(&qword_2D950, &qword_21F90);
  sub_1F5A0();

  sub_7800(v40, v40[3]);
  v17 = v39;
  sub_1F750();
  v18 = v35;
  sub_1E764(v0, v35);
  v19 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v20 = swift_allocObject();
  sub_1E7CC(v18, v20 + v19);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1E8A0;
  *(v21 + 24) = v20;
  v22 = v37;
  (*(v4 + 16))(v37, v17, v3);
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = (v36 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v4 + 32))(v25 + v23, v22, v3);
  v26 = (v25 + v24);
  *v26 = sub_1E8CC;
  v26[1] = v21;
  sub_1F690();
  (*(v4 + 8))(v17, v3);
  v27 = v38;
  v28 = sub_1F6A0();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v28(sub_8B3C, v29);

  (*(v8 + 8))(v10, v27);
  return sub_7844(v40);
}

uint64_t sub_1D810(uint64_t a1, uint64_t a2)
{
  v3 = sub_1F600();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for ContentAvailability.available(_:), v3);
  sub_1EB08(&qword_2D960, &type metadata accessor for ContentAvailability, &protocol conformance descriptor for ContentAvailability);
  sub_1FFC0();
  sub_1FFC0();
  if (v13 == v12)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_20190();
  }

  (*(v4 + 8))(v6, v3);

  v8 = (a2 + *(type metadata accessor for FitnessPrivacySettings(0) + 32));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v13) = v9;
  *(&v13 + 1) = v10;
  LOBYTE(v12) = v7 & 1;
  sub_6DF4(&qword_2CC38, &unk_21040);
  return sub_1FD70();
}

uint64_t sub_1DA00()
{
  sub_1F660();
  sub_6DF4(&qword_2D958, &qword_21F98);
  sub_1F5C0();
  type metadata accessor for FitnessPrivacySettings(0);
  sub_6DF4(&qword_2CC38, &unk_21040);
  return sub_1FD70();
}

uint64_t sub_1DB08@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1DC10(a1, a2);
  sub_748C();
  v4 = sub_1FC10();
  v6 = v5;
  v8 = v7;
  sub_1FD10();
  v9 = sub_1FC00();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_9238(v4, v6, v8 & 1);

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_1DC10(uint64_t a1, unint64_t a2)
{
  v30 = sub_1F900();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1F520();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6DF4(&qword_2D9C8, qword_22008);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v29 = a1;
  v14 = sub_1FF70();
  v15 = [objc_opt_self() bundleWithIdentifier:v14];

  if (v15)
  {
    v16 = [v15 privacyFlow];
    if (v16)
    {
      v17 = v16;
      type metadata accessor for FitnessPrivacySettings(0);
      sub_1F530();
      sub_1F510();
      (*(v8 + 8))(v10, v7);
      v18 = sub_1F4D0();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v13, 1, v18) == 1)
      {
        sub_1F1E4(v13);
        v20 = 0;
      }

      else
      {
        sub_1F4C0();
        (*(v19 + 8))(v13, v18);
        v20 = sub_1FF70();
      }

      v21 = [v17 localizedButtonTitleForLanguage:v20 preferredDeviceType:1];

      if (v21)
      {
        v22 = sub_1FF80();

        return v22;
      }
    }
  }

  sub_1F810();

  v24 = sub_1F8F0();
  v25 = sub_20090();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1950C(v29, a2, &v31);
    _os_log_impl(&dword_0, v24, v25, "Failed to fetch privacy link title for %s", v26, 0xCu);
    sub_7844(v27);
  }

  (*(v4 + 8))(v6, v30);
  return 0;
}

uint64_t sub_1E030(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_6DF4(&qword_2D9A8, &qword_21FF0);
  sub_7420(&qword_2D9B0, &qword_21FF8);
  sub_11688();
  sub_7420(&qword_2D9B8, &qword_22000);
  sub_96B4(&qword_2D9C0, &qword_2D9B8, &qword_22000, &protocol conformance descriptor for ToolbarItemGroup<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_1F980();
}

uint64_t sub_1E17C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  sub_6DF4(&qword_2D9B0, &qword_21FF8);
  sub_11688();
  sub_7420(&qword_2D9B8, &qword_22000);
  sub_96B4(&qword_2D9C0, &qword_2D9B8, &qword_22000, &protocol conformance descriptor for ToolbarItemGroup<A>);
  swift_getOpaqueTypeConformance2();
  sub_1FCB0();
}

uint64_t sub_1E2A4(uint64_t a1, char a2)
{
  v4 = sub_1FAD0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_6DF4(&qword_2D9B8, &qword_22000);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1FAC0();
  v11 = a1;
  v12 = a2 & 1;
  sub_6DF4(&qword_2CCB8, &qword_210B0);
  sub_96B4(&qword_2CCC0, &qword_2CCB8, &qword_210B0, &protocol conformance descriptor for Button<A>);
  sub_1F9C0();
  sub_96B4(&qword_2D9C0, &qword_2D9B8, &qword_22000, &protocol conformance descriptor for ToolbarItemGroup<A>);
  sub_1FAE0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E49C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for FitnessPrivacySettings(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1E764(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1E7CC(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v8 + v7 + v6) = a2 & 1;
  return sub_1FDA0();
}

uint64_t sub_1E5D8(uint64_t a1, char a2, char a3)
{
  type metadata accessor for FitnessPrivacySettings(0);
  sub_6DF4(&qword_2CC38, &unk_21040);
  return sub_1FD70();
}

uint64_t sub_1E664@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FitnessSettingsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1FF70();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  sub_1FF80();
  sub_748C();
  result = sub_1FC10();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1E764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPrivacySettings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPrivacySettings(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E830()
{
  type metadata accessor for FitnessPrivacySettings(0);
  sub_1CD90();
  return sub_1D2D0();
}

uint64_t sub_1E9C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1EA40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_6DF4(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_1EB08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1EB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_6DF4(&qword_2D980, &unk_21FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1EBC8(uint64_t a1)
{
  v2 = sub_6DF4(&qword_2D980, &unk_21FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1EC38()
{
  v1 = (type metadata accessor for FitnessPrivacySettings(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_1F540();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1ED7C(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for FitnessPrivacySettings(0);

  return sub_1C680(a1, a2);
}

uint64_t sub_1EE14()
{
  v1 = (type metadata accessor for FitnessPrivacySettings(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64) + v3;

  v5 = v1[8];
  v6 = sub_1F540();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 1, v2 | 7);
}

uint64_t sub_1EF5C()
{
  v1 = *(type metadata accessor for FitnessPrivacySettings(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_1E030(v4, v5, v2, v3);
}

uint64_t sub_1F018()
{
  v1 = (type metadata accessor for FitnessPrivacySettings(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64) + v3;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = sub_1F540();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 1, v2 | 7);
}

uint64_t sub_1F160(char a1)
{
  v3 = *(type metadata accessor for FitnessPrivacySettings(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_1E5D8(v1 + v4, *(v1 + v4 + *(v3 + 64)), a1);
}

uint64_t sub_1F1E4(uint64_t a1)
{
  v2 = sub_6DF4(&qword_2D9C8, qword_22008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1F250()
{
  result = qword_2D9D0;
  if (!qword_2D9D0)
  {
    sub_7420(&qword_2D948, &qword_21F78);
    sub_7420(&qword_2D928, &qword_21F68);
    sub_7420(&qword_2D920, &qword_21F60);
    sub_7420(&qword_2D918, &qword_21F58);
    sub_1F990();
    sub_96B4(&qword_2D940, &qword_2D918, &qword_21F58, &protocol conformance descriptor for Form<A>);
    sub_1EB08(&qword_2CC10, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
    swift_getOpaqueTypeConformance2();
    sub_748C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2D9D0);
  }

  return result;
}