uint64_t sub_2896CC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v68 = a6;
  v67 = a5;
  v79 = a2;
  v75 = a1;
  v78 = sub_2CDFD0();
  v77 = *(v78 - 8);
  v10 = *(v77 + 64);
  v11 = __chkstk_darwin(v78);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v76 = &v61 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v71 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v61 - v17;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v20 = *(v14 + 16);
  v65 = v19;
  v64 = v14 + 16;
  v63 = v20;
  v20(v18, v19, v13);
  v21 = sub_2CDFE0();
  v22 = sub_2CE670();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v74 = v10;
    *v23 = 0;
    _os_log_impl(&dword_0, v21, v22, "CommonDialogProvider#makePromptForDisambiguationDialog...", v23, 2u);
    v10 = v74;
  }

  v25 = *(v14 + 8);
  v24 = v14 + 8;
  v69 = v25;
  v25(v18, v13);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = v79;
  *(inited + 56) = a3;

  v72 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v70 = v7[2];
  v27 = v7[13];
  v28 = v7[14];
  v66 = v27;
  v84 = a4;
  v29 = a4;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v83 = 0;
    memset(v82, 0, sizeof(v82));
  }

  v73 = v24;
  v74 = v13;
  v79 = 0x80000000002E0BF0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v30 = qword_35F760;
  v31 = v76;
  sub_2CDFB0();
  v32 = v77;
  v33 = v62;
  v34 = v78;
  (*(v77 + 16))(v62, v31, v78);
  v35 = (*(v32 + 80) + 33) & ~*(v32 + 80);
  v36 = (v10 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = "catServiceExecute";
  *(v37 + 24) = 17;
  *(v37 + 32) = 2;
  (*(v32 + 32))(v37 + v35, v33, v34);
  v38 = (v37 + v36);
  v39 = v68;
  *v38 = v67;
  v38[1] = v39;

  v40 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2D0E40;
  *(v41 + 56) = &type metadata for String;
  v42 = sub_1087C();
  v43 = v66;
  *(v41 + 32) = v66;
  *(v41 + 40) = v28;
  *(v41 + 96) = &type metadata for String;
  *(v41 + 104) = v42;
  *(v41 + 64) = v42;
  *(v41 + 72) = 0xD000000000000015;
  *(v41 + 80) = v79;

  LOBYTE(v59) = 2;
  sub_2CDF90(v40, &dword_0, v30, "catServiceExecute", 17, 2, v31, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v59, v41);

  v44 = swift_allocObject();
  *(v44 + 16) = sub_13D80;
  *(v44 + 24) = v37;
  v45 = v71;
  v46 = v74;
  v63(v71, v65, v74);

  v47 = sub_2CDFE0();
  v48 = sub_2CE660();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v49 = 136315394;
    *(v49 + 4) = sub_3F08(v43, v28, &v80);
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_3F08(0xD000000000000015, v79, &v80);
    _os_log_impl(&dword_0, v47, v48, "Evaluating CAT family:%s id:%s...", v49, 0x16u);
    swift_arrayDestroy();
  }

  v69(v45, v46);
  v80 = v43;
  v81 = v28;

  v85._countAndFlagsBits = 35;
  v85._object = 0xE100000000000000;
  sub_2CE350(v85);
  v86._countAndFlagsBits = 0xD000000000000015;
  v86._object = v79;
  sub_2CE350(v86);
  v51 = v80;
  v50 = v81;
  v52 = sub_2CB460();
  if (!v52)
  {
    sub_2CB180();
    v52 = sub_2CB170();
  }

  v53 = v52;
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = sub_13DB4;
  v54[4] = v44;
  v55 = sub_2CB180();
  __chkstk_darwin(v55);
  v56 = v72;
  *(&v61 - 10) = v70;
  *(&v61 - 9) = v56;
  *(&v61 - 8) = v75;
  *(&v61 - 7) = v82;
  *(&v61 - 6) = 0;
  *(&v61 - 5) = v51;
  v58 = v50;
  v59 = sub_3E06C;
  v60 = v54;

  sub_2CB0F0();

  (*(v77 + 8))(v76, v78);
  return sub_30B8(v82, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_28A008(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v57 = a5;
  v56 = a4;
  v62 = a1;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v63 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v55 - v14;
  v16 = sub_112C0(_swiftEmptyArrayStorage);
  v60 = v5[2];
  v61 = v16;
  v17 = v5[13];
  v18 = v5[14];
  v71 = a2;
  v19 = a2;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = 0;
    memset(v69, 0, sizeof(v69));
  }

  v64 = v17;
  v58 = v8;
  v59 = v7;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v20 = qword_35F760;
  sub_2CDFB0();
  v21 = v65;
  v22 = v15;
  v23 = v15;
  v24 = v66;
  (*(v65 + 16))(v13, v22, v66);
  v25 = (*(v21 + 80) + 33) & ~*(v21 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = "catServiceExecute";
  *(v27 + 24) = 17;
  *(v27 + 32) = 2;
  (*(v21 + 32))(v27 + v25, v13, v24);
  v28 = (v27 + v26);
  v29 = v57;
  *v28 = v56;
  v28[1] = v29;

  v30 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2D0E40;
  *(v31 + 56) = &type metadata for String;
  v32 = sub_1087C();
  *(v31 + 32) = v64;
  *(v31 + 40) = v18;
  *(v31 + 96) = &type metadata for String;
  *(v31 + 104) = v32;
  *(v31 + 64) = v32;
  *(v31 + 72) = 0xD000000000000018;
  *(v31 + 80) = 0x80000000002DC0D0;

  LOBYTE(v53) = 2;
  v57 = v23;
  sub_2CDF90(v30, &dword_0, v20, "catServiceExecute", 17, 2, v23, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v53, v31);

  v33 = swift_allocObject();
  *(v33 + 16) = sub_13D80;
  *(v33 + 24) = v27;
  v34 = qword_34BF58;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = v59;
  v36 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v37 = v58;
  v38 = v63;
  (*(v58 + 16))(v63, v36, v35);

  v39 = sub_2CDFE0();
  v40 = sub_2CE660();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56 = v33;
    v67 = v42;
    *v41 = 136315394;
    v43 = v64;
    *(v41 + 4) = sub_3F08(v64, v18, &v67);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_3F08(0xD000000000000018, 0x80000000002DC0D0, &v67);
    _os_log_impl(&dword_0, v39, v40, "Evaluating CAT family:%s id:%s...", v41, 0x16u);
    swift_arrayDestroy();
    v33 = v56;

    (*(v37 + 8))(v63, v35);
  }

  else
  {

    (*(v37 + 8))(v38, v35);
    v43 = v64;
  }

  v67 = v43;
  v68 = v18;

  v72._countAndFlagsBits = 35;
  v72._object = 0xE100000000000000;
  sub_2CE350(v72);
  v73._countAndFlagsBits = 0xD000000000000018;
  v73._object = 0x80000000002DC0D0;
  sub_2CE350(v73);
  v45 = v67;
  v44 = v68;
  v46 = sub_2CB460();
  if (!v46)
  {
    sub_2CB180();
    v46 = sub_2CB170();
  }

  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = sub_13DB4;
  v48[4] = v33;
  v49 = sub_2CB180();
  __chkstk_darwin(v49);
  v50 = v61;
  *(&v55 - 10) = v60;
  *(&v55 - 9) = v50;
  *(&v55 - 8) = v62;
  *(&v55 - 7) = v69;
  *(&v55 - 6) = 0;
  *(&v55 - 5) = v45;
  v52 = v44;
  v53 = sub_3E06C;
  v54 = v48;

  sub_2CB0F0();

  (*(v65 + 8))(v57, v66);
  return sub_30B8(v69, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_28A734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v60 = a8;
  v66 = a1;
  v13 = sub_2CE000();
  v62 = *(v13 - 8);
  __chkstk_darwin(v13);
  v61 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2CDFD0();
  v69 = *(v70 - 8);
  v15 = *(v69 + 64);
  v16 = __chkstk_darwin(v70);
  v17 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v68 = &v57 - v18;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v65 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v63 = v9[2];
  v20 = v9[14];
  v67 = v9[13];
  v59 = v20;
  v75 = a5;
  v21 = a5;
  sub_20410(&unk_3530B0, &qword_2D2270);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v74 = 0;
    memset(v73, 0, sizeof(v73));
  }

  v64 = v13;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  v23 = v68;
  sub_2CDFB0();
  v24 = v69;
  v25 = v70;
  (*(v69 + 16))(v17, v23, v70);
  v26 = (*(v24 + 80) + 33) & ~*(v24 + 80);
  v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = "catServiceExecute";
  *(v28 + 24) = 17;
  *(v28 + 32) = 2;
  (*(v24 + 32))(v28 + v26, v17, v25);
  v29 = (v28 + v27);
  *v29 = v60;
  v29[1] = a9;

  v30 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2D0E40;
  *(v31 + 56) = &type metadata for String;
  v32 = sub_1087C();
  v33 = v67;
  v34 = v59;
  *(v31 + 32) = v67;
  *(v31 + 40) = v34;
  *(v31 + 96) = &type metadata for String;
  *(v31 + 104) = v32;
  *(v31 + 64) = v32;
  *(v31 + 72) = 0xD000000000000014;
  v60 = 0x80000000002E0BD0;
  *(v31 + 80) = 0x80000000002E0BD0;
  v35 = v34;

  LOBYTE(v55) = 2;
  sub_2CDF90(v30, &dword_0, v22, "catServiceExecute", 17, 2, v23, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v55, v31);

  v36 = swift_allocObject();
  *(v36 + 16) = sub_13D7C;
  *(v36 + 24) = v28;
  v58 = v36;
  v37 = qword_34BF58;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = v64;
  v39 = sub_3ED0(v64, static Logger.default);
  swift_beginAccess();
  v40 = v62;
  v41 = v61;
  (*(v62 + 16))(v61, v39, v38);

  v42 = sub_2CDFE0();
  v43 = sub_2CE660();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v44 = 136315394;
    *(v44 + 4) = sub_3F08(v67, v35, &v71);
    *(v44 + 12) = 2080;
    v45 = v60;
    *(v44 + 14) = sub_3F08(0xD000000000000014, v60, &v71);
    _os_log_impl(&dword_0, v42, v43, "Evaluating CAT family:%s id:%s...", v44, 0x16u);
    swift_arrayDestroy();

    v33 = v67;

    (*(v40 + 8))(v41, v38);
  }

  else
  {

    (*(v40 + 8))(v41, v38);
    v45 = v60;
  }

  v71 = v33;
  v72 = v35;

  v76._countAndFlagsBits = 35;
  v76._object = 0xE100000000000000;
  sub_2CE350(v76);
  v77._countAndFlagsBits = 0xD000000000000014;
  v77._object = v45;
  sub_2CE350(v77);
  v46 = v71;
  v47 = v72;
  v48 = sub_2CB460();
  if (!v48)
  {
    sub_2CB180();
    v48 = sub_2CB170();
  }

  v49 = v48;
  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = sub_13D84;
  v50[4] = v58;
  v51 = sub_2CB180();
  __chkstk_darwin(v51);
  v52 = v65;
  *(&v57 - 10) = v63;
  *(&v57 - 9) = v52;
  *(&v57 - 8) = v66;
  *(&v57 - 7) = v73;
  *(&v57 - 6) = 0;
  *(&v57 - 5) = v46;
  v54 = v47;
  v55 = sub_3E010;
  v56 = v50;

  sub_2CB0F0();

  (*(v69 + 8))(v68, v70);
  return sub_30B8(v73, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_28AF78()
{
  sub_281ADC();

  return swift_deallocClassInstance();
}

uint64_t sub_28AFC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v54 = a3;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2CDFD0();
  v62 = *(v64 - 8);
  v10 = *(v62 + 64);
  v11 = __chkstk_darwin(v64);
  v12 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v63 = &v53 - v13;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v53 = xmmword_2D0E40;
  *(inited + 16) = xmmword_2D0E40;
  *(inited + 32) = 0x79616C507369;
  *(inited + 40) = 0xE600000000000000;
  if (a1)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    v15 = 0;
  }

  *(inited + 48) = v15;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000000002DD140;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = a2;
  v59 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v56 = v4[2];
  v16 = v4[13];
  v17 = v4[14];
  if (!a1 || (v67[0] = a1, sub_334A0(0, &qword_3512C0, INIntent_ptr), v18 = a1, sub_20410(&unk_3530B0, &qword_2D2270), (swift_dynamicCast() & 1) == 0))
  {
    v69 = 0;
    memset(v68, 0, sizeof(v68));
  }

  v61 = v16;
  v58 = v8;
  v60 = v7;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v19 = qword_35F760;
  v20 = v63;
  sub_2CDFB0();
  v21 = v62;
  v22 = v64;
  (*(v62 + 16))(v12, v20, v64);
  v23 = (*(v21 + 80) + 33) & ~*(v21 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = "catServiceExecute";
  *(v25 + 24) = 17;
  *(v25 + 32) = 2;
  (*(v21 + 32))(v25 + v23, v12, v22);
  v26 = (v25 + v24);
  v27 = v55;
  *v26 = v54;
  v26[1] = v27;

  v28 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v29 = swift_allocObject();
  *(v29 + 16) = v53;
  *(v29 + 56) = &type metadata for String;
  v30 = sub_1087C();
  *(v29 + 32) = v61;
  *(v29 + 40) = v17;
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v30;
  *(v29 + 64) = v30;
  *(v29 + 72) = 0x6769626D61736944;
  *(v29 + 80) = 0xEF70704165746175;

  LOBYTE(v51) = 2;
  sub_2CDF90(v28, &dword_0, v19, "catServiceExecute", 17, 2, v20, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v51, v29);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v25;
  v32 = qword_34BF58;
  v55 = v25;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v60;
  v34 = sub_3ED0(v60, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v57;
  (*(v58 + 16))(v57, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v54 = v31;
    v65 = v40;
    *v39 = 136315394;
    v41 = v61;
    *(v39 + 4) = sub_3F08(v61, v17, &v65);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_3F08(0x6769626D61736944, 0xEF70704165746175, &v65);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();
    v31 = v54;

    (*(v35 + 8))(v36, v60);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v41 = v61;
  }

  v65 = v41;
  v66 = v17;

  v70._countAndFlagsBits = 35;
  v70._object = 0xE100000000000000;
  sub_2CE350(v70);
  v71._countAndFlagsBits = 0x6769626D61736944;
  v71._object = 0xEF70704165746175;
  sub_2CE350(v71);
  v42 = v65;
  v43 = v66;
  v44 = sub_2CB460();
  if (!v44)
  {
    sub_2CB180();
    v44 = sub_2CB170();
  }

  v45 = v44;
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = sub_13DB4;
  v46[4] = v31;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v48 = v59;
  *(&v53 - 10) = v56;
  *(&v53 - 9) = v48;
  *(&v53 - 8) = 0;
  *(&v53 - 7) = v68;
  *(&v53 - 6) = 0;
  *(&v53 - 5) = v42;
  v50 = v43;
  v51 = sub_3E06C;
  v52 = v46;

  sub_2CB0F0();

  (*(v62 + 8))(v63, v64);
  return sub_30B8(v68, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_28B888(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34C6C0, &qword_2D0710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_28B8F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = a2;
  v53 = a3;
  v6 = sub_2CE000();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v61 = &v52 - v12;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D10E0;
  *(inited + 32) = 0x616C507261437369;
  *(inited + 40) = 0xE900000000000079;
  *(inited + 48) = sub_2CB640() & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x68637461577369;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_2CB620() & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6F50656D6F487369;
  *(inited + 136) = 0xE900000000000064;
  v14 = sub_2CB650();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v14 & 1;
  v57 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v54 = *(v3 + 16);
  v15 = *(v3 + 104);
  v16 = *(v4 + 112);
  if (!a1 || (v66 = a1, v17 = a1, sub_20410(&unk_3530B0, &qword_2D2270), (swift_dynamicCast() & 1) == 0))
  {
    v68 = 0;
    memset(v67, 0, sizeof(v67));
  }

  v59 = 0x80000000002E0C70;
  v60 = v15;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v18 = qword_35F760;
  v19 = v61;
  sub_2CDFB0();
  v21 = v62;
  v20 = v63;
  (*(v62 + 16))(v11, v19, v63);
  v22 = (*(v21 + 80) + 33) & ~*(v21 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  (*(v21 + 32))(v24 + v22, v11, v20);
  v25 = (v24 + v23);
  v26 = v53;
  *v25 = v52;
  v25[1] = v26;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v59;
  *(v28 + 32) = v60;
  *(v28 + 40) = v16;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000021;
  *(v28 + 80) = v30;

  LOBYTE(v50) = 2;
  sub_2CDF90(v27, &dword_0, v18, "catServiceExecute", 17, 2, v19, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v50, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v53 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v56;
  sub_3ED0(v56, static Logger.default);
  swift_beginAccess();
  v34 = v55;
  v35 = v58;
  (*(v55 + 16))();

  v36 = sub_2CDFE0();
  v37 = sub_2CE660();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v34;
    v39 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v39 = 136315394;
    v40 = v60;
    *(v39 + 4) = sub_3F08(v60, v16, &v64);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_3F08(0xD000000000000021, v59, &v64);
    _os_log_impl(&dword_0, v36, v37, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v38 + 8))(v58, v33);
    v30 = v59;
  }

  else
  {

    (*(v34 + 8))(v35, v33);
    v40 = v60;
  }

  v64 = v40;
  v65 = v16;

  v69._countAndFlagsBits = 35;
  v69._object = 0xE100000000000000;
  sub_2CE350(v69);
  v70._countAndFlagsBits = 0xD000000000000021;
  v70._object = v30;
  sub_2CE350(v70);
  v42 = v64;
  v41 = v65;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = sub_13DB4;
  v45[4] = v53;
  v46 = sub_2CB180();
  __chkstk_darwin(v46);
  v47 = v57;
  *(&v52 - 10) = v54;
  *(&v52 - 9) = v47;
  *(&v52 - 8) = 0;
  *(&v52 - 7) = v67;
  *(&v52 - 6) = 0;
  *(&v52 - 5) = v42;
  v49 = v41;
  v50 = sub_3E06C;
  v51 = v45;

  sub_2CB0F0();

  (*(v62 + 8))(v61, v63);
  return sub_30B8(v67, &qword_34C6C0, &qword_2D0710);
}

void sub_28C0E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2CDFE0();
  v8 = sub_2CE690();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "AceServiceInvoker#showSpinningOrb Showing the spinning orb...", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [objc_allocWithZone(SAUIAddViews) init];
  v11 = [objc_allocWithZone(SAAceView) init];
  sub_20410(&unk_351900, &unk_2D0960);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2D0770;
  *(v12 + 32) = v11;
  sub_28C39C();
  v13 = v11;
  isa = sub_2CE400().super.isa;

  [v10 setViews:isa];

  [v10 setDialogPhase:SAUIDialogPhaseClarificationValue];
  [v10 setTemporary:1];
  sub_2CA150();
}

unint64_t sub_28C39C()
{
  result = qword_34CD10;
  if (!qword_34CD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_34CD10);
  }

  return result;
}

uint64_t sub_28C3E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v3 = sub_2CDAA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_20410(&qword_34E938, &qword_2D28E0);
  __chkstk_darwin(v9 - 8);
  v49 = &v47 - v10;
  v11 = sub_20410(&qword_34E940, &qword_2D28E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v50 = sub_2CE050();
  v57 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CA000();
  v51 = *(v15 - 8);
  v52 = v15;
  __chkstk_darwin(v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v54 = v4;
  v55 = v8;
  v22 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  (*(v19 + 16))(v21, v22, v18);
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "CommonNLContextProvider: makeContextForHandleIntent clearing conversation state", v25, 2u);
  }

  (*(v19 + 8))(v21, v18);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2D0770;
  sub_334A0(0, &qword_34DD28, INAddMediaIntent_ptr);
  v27 = v56;
  *(v26 + 32) = sub_2CA740();
  sub_2C9F80();
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = [v28 mediaItems];
  }

  else
  {
    v29 = [v27 mediaItems];
  }

  v30 = v29;
  v31 = v57;
  if (!v30)
  {
    goto LABEL_18;
  }

  v32 = v30;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v33 = sub_2CE410();

  if (!(v33 >> 62))
  {
    result = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_17:

LABEL_18:
    (*(v31 + 56))(v13, 1, 1, v50);
    goto LABEL_19;
  }

LABEL_11:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v35 = sub_2CECD0();
LABEL_14:
    v36 = v35;

    v37 = sub_2CE030();
    v38 = v49;
    (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
    sub_2CE5A0();

    sub_30B8(v38, &qword_34E938, &qword_2D28E0);
    v39 = v50;
    if ((*(v31 + 48))(v13, 1, v50) != 1)
    {
      v40 = v48;
      (*(v31 + 32))(v48, v13, v39);
      sub_20410(&qword_34E950, &qword_2D5350);
      v41 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_2D0090;
      (*(v31 + 16))(v42 + v41, v40, v39);
      sub_2C9F00();
      (*(v31 + 8))(v40, v39);
LABEL_20:
      v43 = v55;
      v44 = v52;
      (*(v54 + 104))(v53, enum case for PommesContext.Source.pluginDefined(_:), v3);
      sub_2CDAB0();
      v45 = sub_2CDAC0();
      (*(*(v45 - 8) + 56))(v43, 0, 1, v45);
      sub_2C9F20();
      v46 = v51;
      (*(v51 + 32))(a2, v17, v44);
      return (*(v46 + 56))(a2, 0, 1, v44);
    }

LABEL_19:
    sub_30B8(v13, &qword_34E940, &qword_2D28E8);
    goto LABEL_20;
  }

  if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
  {
    v35 = *(v33 + 32);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_28CBC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CDAA0();
  v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_20410(&qword_34E938, &qword_2D28E0);
  __chkstk_darwin(v9 - 8);
  v50 = &v47 - v10;
  v11 = sub_20410(&qword_34E940, &qword_2D28E8);
  __chkstk_darwin(v11 - 8);
  v55 = &v47 - v12;
  v13 = sub_2CE050();
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v49 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CA000();
  v51 = *(v15 - 8);
  v52 = v15;
  __chkstk_darwin(v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  (*(v19 + 16))(v21, v22, v18);
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v48 = v17;
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "CommonNLContextProvider: makeContextForHandleIntent clearing conversation state", v25, 2u);
    v17 = v48;
  }

  (*(v19 + 8))(v21, v18);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2D0770;
  sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
  *(v26 + 32) = sub_2CA740();
  sub_2C9F80();
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = [v27 mediaItems];
    v30 = v56;
    v29 = v57;
    v31 = v55;
    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    v30 = v56;
    v29 = v57;
    v31 = v55;
    if (v32)
    {
      v28 = [v32 mediaItems];
      if (!v28)
      {
        goto LABEL_24;
      }
    }

    else
    {
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v28 = [v33 mediaItems];
        if (!v28)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v28 = [a1 mediaItems];
        if (!v28)
        {
LABEL_24:
          (*(v30 + 56))(v31, 1, 1, v29);
          goto LABEL_25;
        }
      }
    }
  }

  v34 = v28;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v35 = sub_2CE410();

  if (!(v35 >> 62))
  {
    result = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_17:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v37 = sub_2CECD0();
LABEL_20:
    v38 = v37;

    v39 = sub_2CE030();
    v40 = v50;
    (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
    sub_2CE5A0();

    sub_30B8(v40, &qword_34E938, &qword_2D28E0);
    if ((*(v30 + 48))(v31, 1, v29) != 1)
    {
      v41 = v49;
      (*(v30 + 32))(v49, v31, v29);
      sub_20410(&qword_34E950, &qword_2D5350);
      v42 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_2D0090;
      (*(v30 + 16))(v43 + v42, v41, v29);
      sub_2C9F00();
      (*(v30 + 8))(v41, v29);
LABEL_26:
      (*(v54 + 104))(v53, enum case for PommesContext.Source.pluginDefined(_:), v4);
      sub_2CDAB0();
      v44 = sub_2CDAC0();
      (*(*(v44 - 8) + 56))(v8, 0, 1, v44);
      sub_2C9F20();
      v46 = v51;
      v45 = v52;
      (*(v51 + 32))(a2, v17, v52);
      return (*(v46 + 56))(a2, 0, 1, v45);
    }

LABEL_25:
    sub_30B8(v31, &qword_34E940, &qword_2D28E8);
    goto LABEL_26;
  }

  if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
  {
    v37 = *(v35 + 32);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_28D424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v28 = a2;
  v2 = sub_2CDAA0();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v27 = sub_2CA000();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "CommonNLContextProvider: makeContextForHandleIntent clearing conversation state", v18, 2u);
  }

  (*(v12 + 8))(v14, v11);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2D0770;
  type metadata accessor for DetermineIntent();
  *(v19 + 32) = sub_2CA740();
  sub_2C9F80();
  (*(v25 + 104))(v4, enum case for PommesContext.Source.pluginDefined(_:), v26);
  sub_2CDAB0();
  v20 = sub_2CDAC0();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  sub_2C9F20();
  v22 = v27;
  v21 = v28;
  (*(v8 + 32))(v28, v10, v27);
  return (*(v8 + 56))(v21, 0, 1, v22);
}

uint64_t sub_28D844@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CDAA0();
  v53 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_20410(&qword_34E938, &qword_2D28E0);
  __chkstk_darwin(v9 - 8);
  v49 = &v46 - v10;
  v11 = sub_20410(&qword_34E940, &qword_2D28E8);
  __chkstk_darwin(v11 - 8);
  v54 = &v46 - v12;
  v13 = sub_2CE050();
  v55 = *(v13 - 8);
  v56 = v13;
  __chkstk_darwin(v13);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CA000();
  v50 = *(v15 - 8);
  v51 = v15;
  __chkstk_darwin(v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  (*(v19 + 16))(v21, v22, v18);
  v23 = sub_2CDFE0();
  v24 = sub_2CE670();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v47 = v17;
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "CommonNLContextProvider: makeContextForHandleIntent clearing conversation state", v25, 2u);
    v17 = v47;
  }

  (*(v19 + 8))(v21, v18);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2D0770;
  sub_334A0(0, &qword_34D368, INUpdateMediaAffinityIntent_ptr);
  *(v26 + 32) = sub_2CA740();
  sub_2C9F80();
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = [v27 mediaItems];
    v30 = v55;
    v29 = v56;
    v31 = v54;
    if (!v28)
    {
      goto LABEL_21;
    }
  }

  else
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    v30 = v55;
    v29 = v56;
    v31 = v54;
    if (v32)
    {
      v28 = [v32 mediaItems];
      if (!v28)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v28 = [a1 mediaItems];
      if (!v28)
      {
LABEL_21:
        (*(v30 + 56))(v31, 1, 1, v29);
        goto LABEL_22;
      }
    }
  }

  v33 = v28;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v34 = sub_2CE410();

  if (!(v34 >> 62))
  {
    result = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_20:

    goto LABEL_21;
  }

LABEL_14:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = sub_2CECD0();
LABEL_17:
    v37 = v36;

    v38 = sub_2CE030();
    v39 = v49;
    (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
    sub_2CE5A0();

    sub_30B8(v39, &qword_34E938, &qword_2D28E0);
    if ((*(v30 + 48))(v31, 1, v29) != 1)
    {
      v40 = v48;
      (*(v30 + 32))(v48, v31, v29);
      sub_20410(&qword_34E950, &qword_2D5350);
      v41 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_2D0090;
      (*(v30 + 16))(v42 + v41, v40, v29);
      sub_2C9F00();
      (*(v30 + 8))(v40, v29);
LABEL_23:
      (*(v53 + 104))(v52, enum case for PommesContext.Source.pluginDefined(_:), v4);
      sub_2CDAB0();
      v43 = sub_2CDAC0();
      (*(*(v43 - 8) + 56))(v8, 0, 1, v43);
      sub_2C9F20();
      v45 = v50;
      v44 = v51;
      (*(v50 + 32))(a2, v17, v51);
      return (*(v45 + 56))(a2, 0, 1, v44);
    }

LABEL_22:
    sub_30B8(v31, &qword_34E940, &qword_2D28E8);
    goto LABEL_23;
  }

  if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
  {
    v36 = *(v34 + 32);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_28E070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = a1;
  v49 = sub_2CDAA0();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20410(&qword_34DD20, &unk_2D1BB0);
  __chkstk_darwin(v3 - 8);
  v48 = &v41 - v4;
  v5 = sub_20410(&qword_34E938, &qword_2D28E0);
  __chkstk_darwin(v5 - 8);
  v43 = &v41 - v6;
  v7 = sub_20410(&qword_34E940, &qword_2D28E8);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v44 = sub_2CE050();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2CA000();
  v12 = *(v45 - 8);
  __chkstk_darwin(v45);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  (*(v16 + 16))(v18, v19, v15);
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "CommonNLContextProvider: makeContextForHandleIntent clearing conversation state", v22, 2u);
  }

  (*(v16 + 8))(v18, v15);
  sub_2C9FF0();
  sub_20410(&unk_351900, &unk_2D0960);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0770;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v24 = v51;
  *(v23 + 32) = sub_2CA740();
  sub_2C9F80();
  v25 = [v24 mediaItems];
  if (!v25)
  {
    goto LABEL_15;
  }

  v26 = v25;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v27 = sub_2CE410();

  if (!(v27 >> 62))
  {
    result = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  result = sub_2CEDA0();
  if (!result)
  {
LABEL_14:

LABEL_15:
    (*(v10 + 56))(v9, 1, 1, v44);
    goto LABEL_16;
  }

LABEL_8:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v29 = sub_2CECD0();
LABEL_11:
    v30 = v29;

    v31 = sub_2CE030();
    v32 = v43;
    (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
    sub_2CE5A0();

    sub_30B8(v32, &qword_34E938, &qword_2D28E0);
    v33 = v44;
    if ((*(v10 + 48))(v9, 1, v44) != 1)
    {
      v34 = v42;
      (*(v10 + 32))(v42, v9, v33);
      sub_20410(&qword_34E950, &qword_2D5350);
      v35 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2D0090;
      (*(v10 + 16))(v36 + v35, v34, v33);
      sub_2C9F00();
      (*(v10 + 8))(v34, v33);
LABEL_17:
      v37 = v50;
      v38 = v48;
      (*(v47 + 104))(v46, enum case for PommesContext.Source.pluginDefined(_:), v49);
      sub_2CDAB0();
      v39 = sub_2CDAC0();
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
      sub_2C9F20();
      v40 = v45;
      (*(v12 + 32))(v37, v14, v45);
      return (*(v12 + 56))(v37, 0, 1, v40);
    }

LABEL_16:
    sub_30B8(v9, &qword_34E940, &qword_2D28E8);
    goto LABEL_17;
  }

  if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
  {
    v29 = *(v27 + 32);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

BOOL sub_28E80C(uint64_t a1)
{
  v1 = sub_2CCF90();
  v3 = v2;
  v4 = sub_2CBE10();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      goto LABEL_10;
    }

    v6 = sub_2CEEA0();

    if (v6)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = sub_2CCF90();
  v9 = v8;
  v10 = sub_2CBE30();
  if (v9)
  {
    if (v7 == v10 && v9 == v11)
    {
      goto LABEL_10;
    }

    v13 = sub_2CEEA0();

    if (v13)
    {
      return 0;
    }
  }

  else
  {
  }

  v14 = sub_2CCF90();
  v16 = v15;
  v17 = sub_2CBD90();
  if (v16)
  {
    if (v14 == v17 && v16 == v18)
    {
LABEL_10:

      return 0;
    }

    v19 = sub_2CEEA0();

    return (v19 & 1) == 0;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_28E988(uint64_t a1)
{
  v1 = sub_2CCF90();
  v3 = v2;
  v4 = sub_2CBE10();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      goto LABEL_10;
    }

    v6 = sub_2CEEA0();

    if (v6)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = sub_2CCF90();
  v9 = v8;
  v10 = sub_2CBE30();
  if (v9)
  {
    if (v7 == v10 && v9 == v11)
    {
      goto LABEL_10;
    }

    v13 = sub_2CEEA0();

    if (v13)
    {
      return 0;
    }
  }

  else
  {
  }

  v14 = sub_2CCF90();
  v16 = v15;
  v17 = sub_2CBD90();
  if (v16)
  {
    if (v14 == v17 && v16 == v18)
    {
LABEL_10:

      return 0;
    }

    v19 = sub_2CEEA0();

    if (v19)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_28EB00()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2CE180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v8 = sub_2CBA00();
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_3568A8 = v8;
  return result;
}

uint64_t PlayMedia.HandleIntentStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v166 = a2;
  v164 = a3;
  v152 = sub_2CE150();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v150 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2CE990();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_2CE180();
  v149 = *(v153 - 8);
  __chkstk_darwin(v153);
  v148 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_2CC760();
  v155 = *(v156 - 8);
  v11 = __chkstk_darwin(v156);
  v140 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v154 = &v137 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v142 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v141 = &v137 - v19;
  v20 = __chkstk_darwin(v18);
  v143 = &v137 - v21;
  v22 = __chkstk_darwin(v20);
  v144 = &v137 - v23;
  v24 = __chkstk_darwin(v22);
  v158 = &v137 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v137 - v27;
  __chkstk_darwin(v26);
  v30 = &v137 - v29;
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v32 = *(v15 + 16);
  v161 = v15 + 16;
  v162 = v31;
  v160 = v32;
  (v32)(v30, v31, v14);

  v33 = sub_2CDFE0();
  v34 = sub_2CE690();

  v35 = os_log_type_enabled(v33, v34);
  v165 = a4;
  v163 = a5;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v157 = v28;
    v37 = v36;
    v38 = v15;
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v37 = 136315138;
    v174 = a1;
    sub_2CCFB0();
    v40 = a1;
    sub_2A06C4(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
    v41 = sub_2CEE70();
    v43 = sub_3F08(v41, v42, &aBlock);

    *(v37 + 4) = v43;
    a1 = v40;
    _os_log_impl(&dword_0, v33, v34, "HandleIntentStrategy#makePreHandleIntentOutput for app: %s", v37, 0xCu);
    sub_306C(v39);

    v28 = v157;

    v44 = v38;
    v159 = *(v38 + 8);
  }

  else
  {

    v44 = v15;
    v159 = *(v15 + 8);
  }

  v159(v30, v14);
  v45 = v14;
  if (!sub_28E80C(a1))
  {
    return sub_29092C(a1, v166, v164, v165, v163);
  }

  v46 = (v167 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider);
  sub_35E0((v167 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(v167 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
  if ((sub_2CBBC0() & 1) == 0)
  {
    sub_35E0(v46, v46[3]);
    if ((sub_2CBBB0() & 1) == 0)
    {
      return sub_29092C(a1, v166, v164, v165, v163);
    }
  }

  v47 = sub_2CC8E0();
  sub_35E0((v167 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider), *(v167 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider + 24));
  sub_2CBE60();
  v139 = v47;
  v48 = sub_2CC8D0();

  if (!v48)
  {
    return sub_29092C(a1, v166, v164, v165, v163);
  }

  (v160)(v28, v162, v45);
  v49 = v166;

  v50 = sub_2CDFE0();
  v51 = sub_2CE670();

  v52 = os_log_type_enabled(v50, v51);
  v138 = a1;
  v137 = v49;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v157 = v28;
    v54 = v53;
    aBlock = swift_slowAlloc();
    *v54 = 136315394;
    v55 = [v49 debugDescription];
    v56 = sub_2CE270();
    v58 = v57;

    v59 = sub_3F08(v56, v58, &aBlock);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2080;
    v174 = v48;
    sub_2A06C4(&qword_34E198, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
    v60 = sub_2CEE70();
    v62 = sub_3F08(v60, v61, &aBlock);

    *(v54 + 14) = v62;
    _os_log_impl(&dword_0, v50, v51, "HandleIntentStrategy#makePreHandleIntentOutput Handling AirPlay Route setup for 3p app on iOS. Intent: %s, Context: %s", v54, 0x16u);
    swift_arrayDestroy();

    v63 = v44;
    v64 = v157;
  }

  else
  {

    v63 = v44;
    v64 = v28;
  }

  v65 = v159;
  v159(v64, v45);
  v66 = v158;
  (v160)(v158, v162, v45);

  v67 = sub_2CDFE0();
  v68 = sub_2CE690();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v157 = v45;
    v70 = v69;
    v71 = v63;
    v72 = swift_slowAlloc();
    aBlock = v72;
    *v70 = 136315138;
    v174 = v48;
    sub_2A06C4(&qword_34E198, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
    v73 = sub_2CEE70();
    v75 = sub_3F08(v73, v74, &aBlock);

    *(v70 + 4) = v75;
    _os_log_impl(&dword_0, v67, v68, "HandleIntentStrategy#makePreHandleIntentOutput airPlay route setup state: %s", v70, 0xCu);
    sub_306C(v72);
    v63 = v71;
    v65 = v159;

    v45 = v157;
  }

  v65(v66, v45);
  a1 = v138;
  v76 = v137;
  if (!sub_2CE820() && !sub_2CE850() || !sub_2CE6C0() || !sub_2CE8A0())
  {
    goto LABEL_31;
  }

  v77 = v45;
  v78 = v154;
  sub_2CC8B0();
  v79 = (*(v155 + 88))(v78, v156);
  if (v79 == enum case for AirPlayRouteSetupState.suppressedCommonRouteSetup(_:))
  {
    v159 = v48;
    v80 = v144;
    (v160)(v144, v162, v45);
    v81 = sub_2CDFE0();
    v82 = sub_2CE670();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_0, v81, v82, "HandleIntentStrategy#makePreHandleIntentOutput Starting looking for devices and setting AirPlay routes...", v83, 2u);
    }

    v65(v80, v45);
    v84 = v148;
    sub_2CE170();
    v85 = v145;
    sub_2CE980();
    v86 = sub_2CBA00();
    (*(v146 + 8))(v85, v147);
    v87 = *(v149 + 8);
    v88 = v153;
    v87(v84, v153);
    v89 = swift_allocObject();
    *(v89 + 16) = v167;
    *(v89 + 24) = v76;
    v172 = sub_29F574;
    v173 = v89;
    aBlock = _NSConcreteStackBlock;
    v169 = 1107296256;
    v170 = sub_A4294;
    v171 = &unk_33D738;
    v90 = _Block_copy(&aBlock);
    v91 = v76;
    v92 = v90;
    v93 = v91;

    sub_2CE160();
    v174 = _swiftEmptyArrayStorage;
    sub_2A06C4(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v94 = v150;
    v95 = v152;
    sub_2CEC10();
    sub_2CE9C0();
    _Block_release(v92);

    (*(v151 + 8))(v94, v95);
    v87(v84, v88);

    a1 = v138;
    return sub_29092C(a1, v166, v164, v165, v163);
  }

  if (v79 == enum case for AirPlayRouteSetupState.startedDeviceSearch(_:))
  {
    v96 = v148;
    sub_2CE170();
    v97 = v145;
    sub_2CE980();
    v161 = sub_2CBA00();
    (*(v146 + 8))(v97, v147);
    v162 = *(v149 + 8);
    v162(v96, v153);
    v98 = swift_allocObject();
    *(v98 + 16) = v167;
    *(v98 + 24) = v48;
    v172 = sub_29F554;
    v173 = v98;
    aBlock = _NSConcreteStackBlock;
    v169 = 1107296256;
    v170 = sub_A4294;
    v171 = &unk_33D6E8;
    v99 = _Block_copy(&aBlock);

    sub_2CE160();
    v174 = _swiftEmptyArrayStorage;
    sub_2A06C4(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_20410(&qword_34DD48, &qword_2D5F80);
    sub_7DDE8();
    v100 = v150;
    v101 = v152;
    sub_2CEC10();
    v102 = v161;
    sub_2CE9C0();
    _Block_release(v99);

    (*(v151 + 8))(v100, v101);
    v162(v96, v153);
LABEL_31:

    return sub_29092C(a1, v166, v164, v165, v163);
  }

  if (v79 == enum case for AirPlayRouteSetupState.startedDeviceSearchWithRouteSetup(_:))
  {
    v103 = v143;
    (v160)(v143, v162, v77);
    v104 = sub_2CDFE0();
    v105 = sub_2CE670();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_0, v104, v105, "HandleIntentStrategy#makePreHandleIntentOutput Nothing to do here, routes are being setup", v106, 2u);
    }

    else
    {
    }

    v65(v103, v77);
    return sub_29092C(a1, v166, v164, v165, v163);
  }

  if (v79 != enum case for AirPlayRouteSetupState.error(_:))
  {
    v109 = v142;
    v160();
    v110 = v76;

    v111 = sub_2CDFE0();
    v112 = sub_2CE660();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v159 = v65;
      aBlock = v114;
      *v113 = 136315394;
      sub_2CC8B0();
      v115 = v156;
      v116 = sub_2CE2A0();
      v118 = sub_3F08(v116, v117, &aBlock);
      v162 = v63;
      v119 = v118;

      *(v113 + 4) = v119;
      *(v113 + 12) = 2080;
      v120 = [v110 debugDescription];
      v121 = sub_2CE270();
      v123 = v122;

      v124 = sub_3F08(v121, v123, &aBlock);

      *(v113 + 14) = v124;
      _os_log_impl(&dword_0, v111, v112, "HandleIntentStrategy#makeSiriKitIntentHandler Unexpected state of AirPlay route setup: %s, intent: %s", v113, 0x16u);
      swift_arrayDestroy();

      v159(v142, v45);
      a1 = v138;
    }

    else
    {

      v65(v109, v45);
      a1 = v138;
      v115 = v156;
    }

    (*(v155 + 8))(v154, v115);
    return sub_29092C(a1, v166, v164, v165, v163);
  }

  v107 = sub_2CC890();
  if (v107 != 2 && (v107 & 1) != 0)
  {
    goto LABEL_31;
  }

  v125 = v141;
  (v160)(v141, v162, v45);

  v126 = sub_2CDFE0();
  v127 = sub_2CE680();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v157 = v45;
    v130 = v48;
    v131 = v129;
    aBlock = v129;
    *v128 = 136315138;
    v174 = v130;
    sub_2A06C4(&qword_34E198, &type metadata accessor for AirPlayRouteSetupContext, &protocol conformance descriptor for AirPlayRouteSetupContext);
    v132 = sub_2CEE70();
    v134 = sub_3F08(v132, v133, &aBlock);

    *(v128 + 4) = v134;
    _os_log_impl(&dword_0, v126, v127, "HandleIntentStrategy#makePreHandleIntentOutput Something went wrong setting up AirPlay routes %s. Generating error dialog", v128, 0xCu);
    sub_306C(v131);
    v135 = v163;
    a1 = v138;

    v136 = v165;

    v159(v125, v157);
  }

  else
  {

    v159(v125, v45);
    v135 = v163;
    v136 = v165;
  }

  sub_2CC8A0();
  PlayMedia.HandleIntentStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(a1, v137, v164, v136, v135);
}

uint64_t sub_2901C4(uint64_t a1, uint64_t a2)
{
  sub_35E0((a1 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider), *(a1 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider + 24));
  sub_2CBE60();
  sub_2CC3E0();
  swift_allocObject();
  v3 = sub_2CC3D0();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;

  sub_2CC390();
}

uint64_t sub_2902BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    return sub_2CC3C0();
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v10, v4);
  v11 = sub_2CDFE0();
  v12 = sub_2CE670();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "HandleIntentStrategy#makePreHandleIntentOutput Routes not found in the intent", v13, 2u);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_290498(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v34 = a1;
  v2 = sub_2CC760();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v17 = *(v10 + 16);
  v30 = v10 + 16;
  v31 = v16;
  v29 = v17;
  v17(v15, v16, v9);
  v18 = sub_2CDFE0();
  v19 = sub_2CE670();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = v8;
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "HandleIntentStrategy#makePreHandleIntentOutput Waiting for device search to be completed", v20, 2u);
    v8 = v32;
  }

  v21 = *(v10 + 8);
  v32 = (v10 + 8);
  v28 = v21;
  v21(v15, v9);
  sub_35E0((v34 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider), *(v34 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider + 24));
  sub_2CBE60();
  sub_2CC3E0();
  swift_allocObject();
  sub_2CC3D0();
  sub_2CC3B0();
  sub_2CC8B0();
  (*(v3 + 104))(v6, enum case for AirPlayRouteSetupState.error(_:), v2);
  sub_2A06C4(&qword_34FCC8, &type metadata accessor for AirPlayRouteSetupState, &protocol conformance descriptor for AirPlayRouteSetupState);
  v22 = sub_2CE250();
  v23 = *(v3 + 8);
  v23(v6, v2);
  v23(v8, v2);
  if ((v22 & 1) == 0)
  {
    v29(v13, v31, v9);
    v24 = sub_2CDFE0();
    v25 = sub_2CE670();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "HandleIntentStrategy#makePreHandleIntentOutput Starting to set AirPlay routes. Device search has been completed", v26, 2u);
    }

    v28(v13, v9);
    sub_2CC3A0();
  }
}

uint64_t sub_29092C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v87 = a4;
  v88 = a2;
  v89 = a1;
  v9 = sub_2CDFD0();
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = __chkstk_darwin(v9);
  v78 = v11;
  v79 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = &v72 - v12;
  v76 = sub_20410(&qword_34C6B0, &qword_2D0700);
  __chkstk_darwin(v76);
  v75 = &v72 - v13;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v83 = &v72 - v20;
  __chkstk_darwin(v19);
  v22 = &v72 - v21;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v24 = *(v15 + 16);
  v85 = v15 + 16;
  v86 = v23;
  v84 = v24;
  v24(v22, v23, v14);
  v25 = sub_2CDFE0();
  v26 = sub_2CE690();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "HandleIntentStrategy#makePreHandleIntentOutput...", v27, 2u);
  }

  v30 = *(v15 + 8);
  v28 = v15 + 8;
  v29 = v30;
  v30(v22, v14);
  sub_35E0((v6 + 24), *(v6 + 48));
  if (sub_2CC4B0())
  {
    return sub_298224(v89, v88, a3, v87, a5);
  }

  v77 = v28;
  v32 = v83;
  v84(v83, v86, v14);
  v33 = v89;

  v34 = v33;
  v35 = sub_2CDFE0();
  v36 = sub_2CE690();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    ObjectType = v34;
    v91 = v73;
    *v37 = 136315138;
    sub_2CCFB0();
    v74 = a3;
    sub_2A06C4(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
    v38 = sub_2CEE70();
    v40 = sub_3F08(v38, v39, &v91);

    *(v37 + 4) = v40;
    a3 = v74;
    v34 = v89;
    _os_log_impl(&dword_0, v35, v36, "HandleIntentStrategy#makePreHandleIntentOutput for app: %s", v37, 0xCu);
    sub_306C(v73);

    v41 = v83;
  }

  else
  {

    v41 = v32;
  }

  v29(v41, v14);
  v83 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaViewProvider);
  v42 = swift_allocObject();
  v42[2] = v6;
  v42[3] = v34;
  v43 = v87;
  v44 = v88;
  v42[4] = v88;
  v42[5] = v43;
  v42[6] = a5;
  v42[7] = a3;
  v84(v18, v86, v14);

  v45 = v44;

  v87 = a3;
  v46 = sub_2CDFE0();
  v47 = sub_2CE670();
  v48 = os_log_type_enabled(v46, v47);
  v88 = v45;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v91 = v85;
    *v49 = 136446978;
    v50 = sub_2CCC90();
    v52 = sub_3F08(v50, v51, &v91);
    v86 = v29;
    v53 = v52;

    *(v49 + 4) = v53;
    *(v49 + 12) = 1026;
    *(v49 + 14) = 1;
    *(v49 + 18) = 2082;
    sub_2CB580();
    v54 = sub_2CE2A0();
    v56 = sub_3F08(v54, v55, &v91);

    *(v49 + 20) = v56;
    *(v49 + 28) = 2082;
    ObjectType = swift_getObjectType();
    sub_20410(&qword_3568B0, &unk_2D8DC0);
    v57 = sub_2CE2A0();
    v59 = sub_3F08(v57, v58, &v91);

    *(v49 + 30) = v59;
    _os_log_impl(&dword_0, v46, v47, "PlayMediaViewProvider#makeViews %{public}s called in interstitial?:%{BOOL,public}d, response mode: %{public}s for Intent: %{public}s", v49, 0x26u);
    swift_arrayDestroy();

    v86(v18, v14);
  }

  else
  {

    v29(v18, v14);
  }

  v74 = v42;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_2A070C;
  *(v60 + 24) = v42;
  v61 = qword_34BF98;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = qword_35F760;
  v63 = v80;
  sub_2CDFB0();
  v64 = v81;
  v65 = v82;
  v66 = v79;
  (*(v81 + 16))(v79, v63, v82);
  v67 = (*(v64 + 80) + 33) & ~*(v64 + 80);
  v68 = (v78 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  *(v69 + 16) = "playMediaAceViewProviderMakeViews";
  *(v69 + 24) = 33;
  *(v69 + 32) = 2;
  (*(v64 + 32))(v69 + v67, v66, v65);
  v70 = (v69 + v68);
  *v70 = sub_2A07FC;
  v70[1] = v60;

  v71 = sub_2CE9E0();
  sub_2CDF90(v71, &dword_0, v62, "playMediaAceViewProviderMakeViews", 33, 2, v63, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);

  sub_120964(v88, v89, v87, 1, v83, sub_2A0800, v69);

  (*(v64 + 8))(v63, v65);
}

uint64_t sub_291250(void (*a1)(char *, uint64_t), char a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(__int128 *), uint64_t a7)
{
  v71 = a7;
  v13 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v13 - 8);
  v15 = &v57 - v14;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v16 - 8);
  v70 = &v57 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v18 - 8);
  v69 = &v57 - v19;
  v20 = sub_2CCB30();
  v67 = *(v20 - 8);
  v68 = v20;
  __chkstk_darwin(v20);
  v65 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2CCAC0();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2CE000();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v58 = a3;
    v59 = v15;
    v62 = a6;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v60 = a5;
    v61 = a4;
    v27 = sub_3ED0(v23, static Logger.default);
    swift_beginAccess();
    (*(v24 + 16))(v26, v27, v23);
    swift_errorRetain();
    v28 = sub_2CDFE0();
    v29 = sub_2CE680();
    sub_1E1074(a1, 1);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v72 = a1;
      v73[0] = v31;
      *v30 = 136446210;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v32 = sub_2CE2A0();
      v34 = sub_3F08(v32, v33, v73);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v28, v29, "HandleIntentStrategy#makePreHandleIntentOutput failed with error: %{public}s", v30, 0xCu);
      sub_306C(v31);
    }

    (*(v24 + 8))(v26, v23);
    v35 = v58;
    v36 = v64;
    v37 = v63;
    v38 = v66;
    (*(v64 + 104))(v63, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v66);
    v40 = v67;
    v39 = v68;
    v41 = v65;
    (*(v67 + 104))(v65, enum case for AdditionalMetricsDescription.SourceFunction.preHandle(_:), v68);
    swift_getErrorValue();
    sub_2CEEF0();
    v58 = sub_2CCAE0();

    (*(v40 + 8))(v41, v39);
    (*(v36 + 8))(v37, v38);
    v68 = sub_35E0((v35 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v35 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
    v42 = enum case for ActivityType.failed(_:);
    v43 = a1;
    v44 = sub_2C9C20();
    v45 = *(v44 - 8);
    v46 = v69;
    (*(v45 + 104))(v69, v42, v44);
    (*(v45 + 56))(v46, 0, 1, v44);
    v47 = sub_2CA130();
    v48 = v70;
    (*(*(v47 - 8) + 56))(v70, 1, 1, v47);
    v49 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v50 = sub_2C98F0();
    v51 = *(v50 - 8);
    v52 = v59;
    (*(v51 + 104))(v59, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v52, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v48, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v46, &qword_34CB88, &unk_2D0D90);
    v73[0] = v43;
    v74 = 1;
    swift_errorRetain();
    v62(v73);
    return sub_30B8(v73, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v54 = *(a3 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider);
    sub_140154(a1, 0);

    v55 = a5;
    v56 = v71;

    sub_1AB6D4(a4, v55, v54, a3, a4, v55, a6, v56, a1);
    sub_1E1074(a1, 0);
  }
}

uint64_t sub_291AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, unint64_t a7)
{
  v129 = a7;
  v149 = a6;
  v150 = a5;
  v148 = a4;
  v147 = a3;
  v151 = a2;
  v134 = sub_2CCB20();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_2CA3C0();
  v128 = *(v153 - 8);
  __chkstk_darwin(v153);
  v127 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_2C8E80();
  v152 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = (&v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v11 - 8);
  v13 = &v126 - v12;
  v136 = sub_2CA910();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v137 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v15 = __chkstk_darwin(v130);
  v131 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v126 - v17;
  v19 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v19 - 8);
  v146 = &v126 - v20;
  v21 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v21 - 8);
  v145 = &v126 - v22;
  v23 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v23 - 8);
  v144 = &v126 - v24;
  v143 = sub_2CCB30();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2CCAC0();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CE000();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v31);
  v33 = (&v126 - v32);
  sub_F3F4(a1, &v126 - v32, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_14A58(v33, v18, &qword_34C6E8, &unk_2D0FF0);
    sub_35E0((v151 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(v151 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
    v155 = sub_2CBBD0();
    v154 = sub_2CB5B0();
    v44 = sub_2CA000();
    v45 = *(*(v44 - 8) + 56);
    v126 = v13;
    v45(v13, 1, 1, v44);
    v163 = 0;
    v161 = 0u;
    v162 = 0u;
    v46 = sub_81330();
    v156 = v18;
    if ((v46 & 1) == 0)
    {
      v34 = sub_2CA100();
      v72 = *(v34 + 16);
      if (v72)
      {
        v160 = _swiftEmptyArrayStorage;
        sub_2CED20();
        v27 = 0;
        v30 = 0;
        v73 = *(v34 + 16);
        ++v152;
        v153 = v73;
        while (v153 != v30)
        {
          if (v30 >= *(v34 + 16))
          {
            goto LABEL_27;
          }

          v75 = objc_allocWithZone(SAUIAssistantUtteranceView);

          v76 = [v75 init];
          v77 = v157;
          sub_2C8E70();
          sub_2C8E50();
          (*v152)(v77, v158);
          v78 = sub_2CE260();

          [v76 setAceId:v78];

          sub_2CA0D0();
          v28 = sub_2CE260();

          [v76 setDialogIdentifier:v28];

          v79 = sub_2CE260();
          [v76 setText:v79];

          v80 = v76;
          [v80 setCanUseServerTTS:1];
          [v80 setDisableDeviceRacing:v155 & 1];
          if ((v154 & 1) != 0 && (v81 = *(sub_2CA110() + 16), , v30 < v81))
          {
            v82 = sub_2CA110();
            if (v30 >= *(v82 + 16))
            {
              goto LABEL_28;
            }

            v28 = v82;

            v74 = sub_2CE260();

            [v80 setSpeakableText:v74];
          }

          else
          {

            v74 = v80;
          }

          ++v30;
          sub_2CED00();
          sub_2CED30();
          sub_2CED40();
          sub_2CED10();
          v27 += 16;
          if (v72 == v30)
          {

            v83 = v160;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v83 = _swiftEmptyArrayStorage;
LABEL_23:
      v84 = SAUIDialogPhaseCompletionValue;
      v85 = objc_allocWithZone(SAUIAddViews);
      v86 = v84;
      v54 = [v85 init];
      v48 = v143;
      v49 = v139;
      if (v83 >> 62)
      {
        sub_334A0(0, &qword_34CD10, SAAceView_ptr);

        v87 = sub_2CED90();
      }

      else
      {

        sub_2CEEB0();
        sub_334A0(0, &qword_34CD10, SAAceView_ptr);
        v87 = v83;
      }

      v165 = v87;

      sub_80E28(v88);
      sub_80E28(_swiftEmptyArrayStorage);
      sub_334A0(0, &qword_34CD10, SAAceView_ptr);
      isa = sub_2CE400().super.isa;

      [v54 setViews:isa];

      [v54 setDialogPhase:v86];
      v55 = v126;
      sub_2C9E30();
LABEL_35:

      sub_30B8(&v161, &qword_34CC80, &qword_2D1520);
      sub_30B8(v55, &unk_353020, &unk_2D0970);
      v101 = v140;
      v102 = v138;
      v103 = v141;
      (*(v140 + 104))(v138, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v141);
      v104 = v142;
      (*(v142 + 104))(v49, enum case for AdditionalMetricsDescription.SourceFunction.preHandle(_:), v48);
      v105 = v133;
      v106 = v132;
      v107 = v134;
      (*(v133 + 104))(v132, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v134);
      v158 = sub_2CCAD0();
      (*(v105 + 8))(v106, v107);
      (*(v104 + 8))(v49, v48);
      (*(v101 + 8))(v102, v103);
      v157 = sub_35E0((v151 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v151 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
      v108 = enum case for ActivityType.showInterstitial(_:);
      v109 = sub_2C9C20();
      v110 = *(v109 - 8);
      v111 = v144;
      (*(v110 + 104))(v144, v108, v109);
      (*(v110 + 56))(v111, 0, 1, v109);
      v112 = v156;
      v113 = v131;
      sub_F3F4(v156, v131, &qword_34C6E8, &unk_2D0FF0);

      v114 = sub_2CA130();
      v115 = *(v114 - 8);
      v116 = v145;
      (*(v115 + 32))(v145, v113, v114);
      (*(v115 + 56))(v116, 0, 1, v114);
      v117 = enum case for SiriKitReliabilityCodes.success(_:);
      v118 = sub_2C98F0();
      v119 = *(v118 - 8);
      v120 = v146;
      (*(v119 + 104))(v146, v117, v118);
      (*(v119 + 56))(v120, 0, 1, v118);
      sub_2CE710();
      sub_2CB4E0();

      sub_30B8(v120, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v116, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v111, &qword_34CB88, &unk_2D0D90);
      v121 = v136;
      *(&v162 + 1) = v136;
      v163 = &protocol witness table for AceOutput;
      v122 = sub_F390(&v161);
      v123 = v135;
      v124 = v137;
      (*(v135 + 16))(v122, v137, v121);
      v164 = 0;
      v150(&v161);
      (*(v123 + 8))(v124, v121);
      sub_30B8(v112, &qword_34C6E8, &unk_2D0FF0);
      return sub_30B8(&v161, qword_34C798, &qword_2D0DA0);
    }

    v47 = v129;
    v48 = v143;
    if (v129 >> 62)
    {
      v90 = sub_2CEDA0();
      v49 = v139;
      if (v90)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v49 = v139;
      if (*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_8:
        v50 = sub_81D44(v18, 1);
        v51 = sub_82014(v50, v47, 0);

        v52 = sub_2CE270();
        v54 = sub_829E4(v52, v53, v51, _swiftEmptyArrayStorage);

        v55 = v126;
        sub_2C9E30();
        goto LABEL_35;
      }
    }

    v91 = v18;
    v54 = [objc_allocWithZone(SAUIAddDialogs) init];
    v92 = v157;
    sub_2C8E70();
    sub_2C8E50();
    v152[1](v92, v158);
    v93 = sub_2CE260();

    [v54 setAceId:v93];

    sub_81D44(v91, 1);
    sub_334A0(0, &qword_34DFC8, SADialog_ptr);
    v94 = sub_2CE400().super.isa;

    [v54 setDialogs:v94];

    sub_334A0(0, &qword_353110, NSNumber_ptr);
    v95 = sub_2CEB10(0).super.super.isa;
    [v54 setListenAfterSpeaking:v95];

    v96 = v127;
    sub_2CA0E0();
    v97 = v128;
    v98 = v153;
    if ((*(v128 + 88))(v96, v153) == enum case for BehaviorAfterSpeaking.dingAndListen(_:))
    {
      (*(v97 + 96))(v96, v98);
      v99 = [objc_allocWithZone(SAUIListenAfterSpeakingBehavior) init];
      v100 = sub_2CE260();

      [v99 setStartAlertSoundID:v100];

      [v54 setListenAfterSpeakingBehavior:v99];
    }

    else
    {
      (*(v97 + 8))(v96, v98);
    }

    v55 = v126;
    sub_2C9E10();
    goto LABEL_35;
  }

  v34 = *v33;
  if (qword_34BF58 != -1)
  {
LABEL_29:
    swift_once();
  }

  v35 = sub_3ED0(v27, static Logger.default);
  swift_beginAccess();
  (*(v28 + 2))(v30, v35, v27);
  swift_errorRetain();
  v36 = sub_2CDFE0();
  v37 = sub_2CE680();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v28;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v161 = v40;
    *v39 = 136446210;
    v159 = v34;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    v41 = sub_2CE2A0();
    v43 = sub_3F08(v41, v42, &v161);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_0, v36, v37, "HandleIntentStrategy#makePreHandleIntentOutput playMediaDialogProvider.makePreHandleIntentDialog failed with error: %{public}s", v39, 0xCu);
    sub_306C(v40);

    v38[1](v30, v27);
  }

  else
  {

    (*(v28 + 1))(v30, v27);
  }

  v56 = v143;
  v57 = v142;
  v58 = v141;
  v59 = v140;
  v60 = v138;
  (*(v140 + 104))(v138, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v141);
  v61 = v139;
  (*(v57 + 104))(v139, enum case for AdditionalMetricsDescription.SourceFunction.preHandle(_:), v56);
  swift_getErrorValue();
  sub_2CEEF0();
  v158 = sub_2CCAE0();

  (*(v57 + 8))(v61, v56);
  (*(v59 + 8))(v60, v58);
  v157 = sub_35E0((v151 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v151 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
  v62 = enum case for ActivityType.failed(_:);
  v63 = sub_2C9C20();
  v64 = *(v63 - 8);
  v65 = v144;
  (*(v64 + 104))(v144, v62, v63);
  (*(v64 + 56))(v65, 0, 1, v63);
  v66 = sub_2CA130();
  v67 = v145;
  (*(*(v66 - 8) + 56))(v145, 1, 1, v66);
  v68 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v69 = sub_2C98F0();
  v70 = *(v69 - 8);
  v71 = v146;
  (*(v70 + 104))(v146, v68, v69);
  (*(v70 + 56))(v71, 0, 1, v69);
  sub_2CE710();
  sub_2CB4E0();

  sub_30B8(v71, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v67, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v65, &qword_34CB88, &unk_2D0D90);
  *&v161 = v34;
  v164 = 1;
  swift_errorRetain();
  v150(&v161);

  return sub_30B8(&v161, qword_34C798, &qword_2D0DA0);
}

uint64_t PlayMedia.HandleIntentStrategy.makeIntentHandledResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v85 = a4;
  v86 = a5;
  v87 = a3;
  v9 = sub_2CDFD0();
  v82 = *(v9 - 8);
  v10 = *(v82 + 64);
  v11 = __chkstk_darwin(v9);
  v79 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v80 = &v72 - v12;
  v78 = sub_20410(&qword_34C6B0, &qword_2D0700);
  __chkstk_darwin(v78);
  v77 = &v72 - v13;
  v14 = sub_2CE000();
  v84 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v83 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v72 - v17;
  sub_2CB450();
  sub_35E0((v5 + 24), *(v5 + 48));
  if (sub_2CC4B0())
  {
    v20 = v86;
    v19 = v87;
    v21 = v85;

    return sub_29A5A0(a1, a2, v19, v21, v20);
  }

  else
  {
    v74 = a2;
    v75 = v10;
    v76 = v9;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = sub_3ED0(v14, static Logger.default);
    swift_beginAccess();
    v24 = v84;
    v72 = v84[2];
    v73 = v23;
    v72(v18, v23, v14);

    v25 = sub_2CDFE0();
    v26 = v14;
    v27 = sub_2CE670();

    v28 = os_log_type_enabled(v25, v27);
    v81 = a1;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136315138;
      ObjectType = v81;
      v89 = v30;
      sub_2CCFB0();
      sub_2A06C4(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
      v31 = sub_2CEE70();
      v33 = sub_3F08(v31, v32, &v89);

      *(v29 + 4) = v33;
      v24 = v84;
      _os_log_impl(&dword_0, v25, v27, "HandleIntentStrategy#makeIntentHandledResponse for app: %s", v29, 0xCu);
      sub_306C(v30);
      a1 = v81;
    }

    v34 = v24[1];
    v34(v18, v26);
    v35 = v26;
    v37 = v86;
    v36 = v87;
    v86 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaViewProvider);
    v38 = swift_allocObject();
    v38[2] = v6;
    v38[3] = a1;
    v39 = v73;
    v40 = v74;
    v41 = v85;
    v38[4] = v74;
    v38[5] = v41;
    v38[6] = v37;
    v38[7] = v36;
    v87 = v38;
    v42 = v83;
    v72(v83, v39, v35);

    v43 = v40;

    v84 = v36;
    v44 = sub_2CDFE0();
    v45 = sub_2CE670();
    v46 = os_log_type_enabled(v44, v45);
    v85 = v43;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v74 = v35;
      v89 = v48;
      *v47 = 136446978;
      v49 = sub_2CCC90();
      v51 = sub_3F08(v49, v50, &v89);

      *(v47 + 4) = v51;
      *(v47 + 12) = 1026;
      *(v47 + 14) = 0;
      *(v47 + 18) = 2082;
      sub_2CB580();
      v52 = sub_2CE2A0();
      v54 = sub_3F08(v52, v53, &v89);

      *(v47 + 20) = v54;
      *(v47 + 28) = 2082;
      ObjectType = swift_getObjectType();
      sub_20410(&qword_3568B0, &unk_2D8DC0);
      v55 = sub_2CE2A0();
      v57 = sub_3F08(v55, v56, &v89);

      *(v47 + 30) = v57;
      _os_log_impl(&dword_0, v44, v45, "PlayMediaViewProvider#makeViews %{public}s called in interstitial?:%{BOOL,public}d, response mode: %{public}s for Intent: %{public}s", v47, 0x26u);
      swift_arrayDestroy();

      v58 = v83;
      v59 = v74;
    }

    else
    {

      v58 = v42;
      v59 = v35;
    }

    v34(v58, v59);
    v60 = v75;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_29F57C;
    *(v61 + 24) = v87;
    v62 = qword_34BF98;

    if (v62 != -1)
    {
      swift_once();
    }

    v63 = qword_35F760;
    v64 = v80;
    sub_2CDFB0();
    v65 = v82;
    v66 = v79;
    v67 = v76;
    (*(v82 + 16))(v79, v64, v76);
    v68 = (*(v65 + 80) + 33) & ~*(v65 + 80);
    v69 = swift_allocObject();
    *(v69 + 16) = "playMediaAceViewProviderMakeViews";
    *(v69 + 24) = 33;
    *(v69 + 32) = 2;
    (*(v65 + 32))(v69 + v68, v66, v67);
    v70 = (v69 + ((v60 + v68 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v70 = sub_29F594;
    v70[1] = v61;

    v71 = sub_2CE9E0();
    sub_2CDF90(v71, &dword_0, v63, "playMediaAceViewProviderMakeViews", 33, 2, v64, " enableTelemetry=YES ", 21, 2, _swiftEmptyArrayStorage);

    sub_120964(v85, v81, v84, 0, v86, sub_29F66C, v69);

    (*(v65 + 8))(v64, v67);
  }
}

uint64_t sub_293ACC(unint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void *), uint64_t a7, void *a8)
{
  v67 = a8;
  v72 = a6;
  v73 = a7;
  v74 = a5;
  v75 = a4;
  v76 = a3;
  v10 = sub_2CE000();
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin(v10);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v12 - 8);
  v14 = &v65 - v13;
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v15 - 8);
  v68 = &v65 - v16;
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v17 - 8);
  v19 = &v65 - v18;
  v20 = sub_2CCB30();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCAC0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v24);
    (*(v21 + 104))(v23, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v20);
    v66 = a1;
    swift_getErrorValue();
    sub_2CEEF0();
    v71 = sub_2CCAE0();

    (*(v21 + 8))(v23, v20);
    (*(v25 + 8))(v27, v24);
    sub_35E0((v76 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v76 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
    v28 = enum case for ActivityType.failed(_:);
    v29 = sub_2C9C20();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v19, v28, v29);
    (*(v30 + 56))(v19, 0, 1, v29);
    v31 = sub_2CA130();
    v32 = v68;
    (*(*(v31 - 8) + 56))(v68, 1, 1, v31);
    v33 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v34 = sub_2C98F0();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v14, v33, v34);
    (*(v35 + 56))(v14, 0, 1, v34);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v14, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v32, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v19, &qword_34CB88, &unk_2D0D90);
    v77[0] = v66;
    v78 = 1;
    swift_errorRetain();
    v72(v77);
    return sub_30B8(v77, qword_34C798, &qword_2D0DA0);
  }

  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = a1;
  if (a1 >> 62)
  {
    v39 = sub_2CEDA0();
  }

  else
  {
    v39 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v41 = v74;
  v40 = v75;
  v42 = v76;
  v44 = v70;
  v43 = v71;
  v45 = v69;
  if (v39)
  {
    if ((v38 & 0xC000000000000001) != 0)
    {

      v47 = sub_2CECD0();
    }

    else
    {
      if (!*(v37 + 16))
      {
        __break(1u);
        goto LABEL_20;
      }

      v46 = *(v38 + 32);
      sub_140154(v38, 0);
      v47 = v46;
    }

    v48 = v47;
    v49 = [v47 viewId];

    if (v49)
    {
      v42 = sub_2CE270();
      v37 = v50;

      if (qword_34BF58 == -1)
      {
LABEL_11:
        v51 = sub_3ED0(v43, static Logger.default);
        swift_beginAccess();
        (*(v44 + 16))(v45, v51, v43);

        v52 = v44;
        v53 = sub_2CDFE0();
        v54 = v43;
        v55 = sub_2CE660();

        if (os_log_type_enabled(v53, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v79 = v57;
          *v56 = 136315138;
          v58 = sub_3F08(v42, v37, &v79);

          *(v56 + 4) = v58;
          _os_log_impl(&dword_0, v53, v55, "HandleIntentStrategy#makeIntentHandledResponse viewId: %s", v56, 0xCu);
          sub_306C(v57);
          v41 = v74;

          v40 = v75;
        }

        else
        {
        }

        (*(v52 + 8))(v45, v54);
        v42 = v76;
        goto LABEL_16;
      }

LABEL_20:
      swift_once();
      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_16:
  v59 = swift_allocObject();
  *(v59 + 16) = v42;
  *(v59 + 24) = v40;
  v60 = v72;
  v61 = v73;
  *(v59 + 32) = v41;
  *(v59 + 40) = v60;
  v62 = v67;
  *(v59 + 48) = v61;
  *(v59 + 56) = v62;
  *(v59 + 64) = v38;

  v63 = v41;

  v64 = v62;
  sub_196E80(v40, v63, v62, sub_2A0668, v59);
}

uint64_t sub_294354(char *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, unint64_t a8)
{
  v143 = a8;
  v159 = a7;
  v148 = a6;
  v149 = a5;
  v152 = a4;
  v147 = a3;
  v154 = a2;
  v164 = a1;
  v139 = sub_2CCB20();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_2CA3C0();
  v155 = *(v157 - 8);
  __chkstk_darwin(v157);
  v133 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_2C8E80();
  v156 = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2CA910();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v144 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v12 - 8);
  v151 = &v129 - v13;
  v135 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v14 = __chkstk_darwin(v135);
  v136 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v129 - v16;
  v18 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v18 - 8);
  v146 = &v129 - v19;
  v20 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v20 - 8);
  v145 = &v129 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v22 - 8);
  v153 = &v129 - v23;
  v150 = sub_2CCB30();
  v24 = *(v150 - 8);
  __chkstk_darwin(v150);
  v26 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CCAC0();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v31);
  v33 = (&v129 - v32);
  sub_F3F4(v164, &v129 - v32, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *v33;
    (*(v28 + 104))(v30, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v27);
    v35 = v150;
    (*(v24 + 104))(v26, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v150);
    swift_getErrorValue();
    sub_2CEEF0();
    v164 = sub_2CCAE0();

    (*(v24 + 8))(v26, v35);
    (*(v28 + 8))(v30, v27);
    v163 = sub_35E0((v154 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v154 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
    v36 = enum case for ActivityType.failed(_:);
    v37 = sub_2C9C20();
    v38 = *(v37 - 8);
    v39 = v153;
    (*(v38 + 104))(v153, v36, v37);
    (*(v38 + 56))(v39, 0, 1, v37);
    v40 = sub_2CA130();
    v41 = v145;
    (*(*(v40 - 8) + 56))(v145, 1, 1, v40);
    v42 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v43 = sub_2C98F0();
    v44 = *(v43 - 8);
    v45 = v146;
    (*(v44 + 104))(v146, v42, v43);
    (*(v44 + 56))(v45, 0, 1, v43);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v45, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v41, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v39, &qword_34CB88, &unk_2D0D90);
    *&v165 = v34;
    v168 = 1;
    swift_errorRetain();
    v149(&v165);

    return sub_30B8(&v165, qword_34C798, &qword_2D0DA0);
  }

  v160 = v30;
  v131 = v26;
  v132 = v28;
  v161 = v27;
  v142 = v24;
  v164 = v17;
  sub_14A58(v33, v17, &qword_34C6E8, &unk_2D0FF0);
  v46 = v152;
  v47 = v154;
  sub_295BA8(v152);
  sub_28E070(v46, v151);
  sub_35E0((v47 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(v47 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
  LODWORD(v159) = sub_2CBBD0();
  v48 = *(*(v47 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaViewProvider) + 224);
  if (v48)
  {
    sub_20410(&unk_351900, &unk_2D0960);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_2D0770;
    *(v49 + 32) = v48;
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
  }

  v51 = v160;
  v50 = v161;
  v52 = objc_allocWithZone(SAUIRequestEndBehavior);
  v53 = v48;
  v54 = &off_349000;
  v55 = [v52 init];
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  isa = sub_2CEB10(6000).super.super.isa;
  [v55 setMinimumAutoDismissalTimeInMs:isa];

  [v55 setPremptivelyResumeMedia:1];
  v57 = v55;
  v158 = sub_2CB5B0();
  if (v49 >> 62)
  {
    goto LABEL_30;
  }

  sub_2CEEB0();
  sub_334A0(0, &qword_350370, SABaseCommand_ptr);
  v130 = v49;
  while (1)
  {
    v58 = v142;

    v167 = 0;
    v165 = 0u;
    v166 = 0u;
    v59 = sub_81330();
    v134 = v57;
    if (v59)
    {
      v60 = v143;
      if (v143 >> 62)
      {
        v89 = sub_2CEDA0();
        v61 = v132;
        if (v89)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v61 = v132;
        if (*(&dword_10 + (v143 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_11:
          v62 = sub_81D44(v164, 1);
          v63 = sub_82014(v62, v60, 0);

          v64 = sub_2CE270();
          v66 = sub_829E4(v64, v65, v63, _swiftEmptyArrayStorage);
          v67 = v143;

          sub_2C9E30();

          v68 = v150;
          goto LABEL_36;
        }
      }

      v90 = [objc_allocWithZone(SAUIAddDialogs) v54[477]];
      v91 = v162;
      sub_2C8E70();
      sub_2C8E50();
      v156[1](v91, v163);
      v92 = sub_2CE260();

      [v90 setAceId:v92];

      sub_81D44(v164, 1);
      sub_334A0(0, &qword_34DFC8, SADialog_ptr);
      v93 = sub_2CE400().super.isa;

      [v90 setDialogs:v93];

      v94 = sub_2CEB10(0).super.super.isa;
      [v90 setListenAfterSpeaking:v94];

      v95 = v133;
      sub_2CA0E0();
      v96 = v155;
      v97 = v157;
      if ((*(v155 + 88))(v95, v157) == enum case for BehaviorAfterSpeaking.dingAndListen(_:))
      {
        (*(v96 + 96))(v95, v97);
        v98 = [objc_allocWithZone(SAUIListenAfterSpeakingBehavior) v54[477]];
        v99 = sub_2CE260();

        [v98 setStartAlertSoundID:v99];

        [v90 setListenAfterSpeakingBehavior:v98];
      }

      else
      {
        (*(v96 + 8))(v95, v97);
      }

      v68 = v150;
      v100 = v134;
      [v90 setRequestEndBehavior:v134];
      sub_2C9E10();

      v57 = v100;

      v67 = v143;
      v58 = v142;
      goto LABEL_36;
    }

    v69 = sub_2CA100();
    v70 = *(v69 + 16);
    if (!v70)
    {
      break;
    }

    v170 = _swiftEmptyArrayStorage;
    v71 = v69;
    sub_2CED20();
    v72 = v71;
    v73 = 0;
    v57 = 0;
    v157 = *(v71 + 16);
    ++v156;
    v155 = v71;
    while (v157 != v57)
    {
      if (v57 >= *(v72 + 16))
      {
        goto LABEL_28;
      }

      v75 = objc_allocWithZone(SAUIAssistantUtteranceView);

      v76 = v54;
      v54 = [v75 v54[477]];
      v77 = v162;
      sub_2C8E70();
      sub_2C8E50();
      (*v156)(v77, v163);
      v78 = sub_2CE260();

      [(SEL *)v54 setAceId:v78];

      sub_2CA0D0();
      v51 = sub_2CE260();

      [(SEL *)v54 setDialogIdentifier:v51];

      v79 = sub_2CE260();
      [(SEL *)v54 setText:v79];

      v50 = v54;
      [(SEL *)v50 setCanUseServerTTS:1];
      [(SEL *)v50 setDisableDeviceRacing:v159 & 1];
      if ((v158 & 1) != 0 && (v80 = *(sub_2CA110() + 16), , v57 < v80))
      {
        if (v57 >= *(sub_2CA110() + 16))
        {
          goto LABEL_29;
        }

        v74 = sub_2CE260();

        [(SEL *)v50 setSpeakableText:v74];
      }

      else
      {

        v74 = v50;
      }

      ++v57;
      sub_2CED00();
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      v73 += 16;
      v51 = v160;
      v50 = v161;
      v54 = v76;
      v72 = v155;
      if (v70 == v57)
      {

        v81 = v170;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_334A0(0, &qword_350370, SABaseCommand_ptr);

    v130 = sub_2CED90();
  }

  v81 = _swiftEmptyArrayStorage;
LABEL_24:
  v82 = SAUIDialogPhaseCompletionValue;
  v83 = objc_allocWithZone(SAUIAddViews);
  v84 = v82;
  v85 = [v83 v54[477]];
  v61 = v132;
  if (v81 >> 62)
  {
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);

    v86 = sub_2CED90();
  }

  else
  {

    sub_2CEEB0();
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);
    v86 = v81;
  }

  v169 = v86;
  v67 = v143;

  sub_80E28(v87);
  sub_80E28(_swiftEmptyArrayStorage);
  sub_334A0(0, &qword_34CD10, SAAceView_ptr);
  v88 = sub_2CE400().super.isa;

  [v85 setViews:v88];

  [v85 setDialogPhase:v84];
  sub_2C9E30();

  v68 = v150;
  v58 = v142;
  v57 = v134;
LABEL_36:

  sub_30B8(&v165, &qword_34CC80, &qword_2D1520);
  v101 = *(sub_2AE70(v67) + 2);

  v102 = v131;
  if (!v101)
  {
    sub_35E0((v154 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v154 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
    sub_2C99E0();
    sub_2C99D0();
    v103 = sub_2C9C20();
    (*(*(v103 - 8) + 56))(v153, 1, 1, v103);
    v58 = v142;
    v68 = v150;
    sub_2CB520();

    sub_30B8(v153, &qword_34CB88, &unk_2D0D90);
  }

  (*(v61 + 104))(v51, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v50);
  (*(v58 + 104))(v102, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v68);
  v104 = v138;
  v105 = v50;
  v106 = v68;
  v107 = v137;
  v108 = v139;
  (*(v138 + 104))(v137, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v139);
  v109 = sub_2CCAD0();
  v162 = v110;
  v163 = v109;
  (*(v104 + 8))(v107, v108);
  (*(v58 + 8))(v102, v106);
  (*(v61 + 8))(v51, v105);
  v161 = sub_35E0((v154 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v154 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
  v111 = enum case for ActivityType.completed(_:);
  v112 = sub_2C9C20();
  v113 = *(v112 - 8);
  v114 = v153;
  (*(v113 + 104))(v153, v111, v112);
  (*(v113 + 56))(v114, 0, 1, v112);
  v115 = v164;
  v116 = v136;
  sub_F3F4(v164, v136, &qword_34C6E8, &unk_2D0FF0);

  v117 = sub_2CA130();
  v118 = *(v117 - 8);
  v119 = v145;
  (*(v118 + 32))(v145, v116, v117);
  (*(v118 + 56))(v119, 0, 1, v117);
  v120 = enum case for SiriKitReliabilityCodes.success(_:);
  v121 = sub_2C98F0();
  v122 = *(v121 - 8);
  v123 = v146;
  (*(v122 + 104))(v146, v120, v121);
  (*(v122 + 56))(v123, 0, 1, v121);
  sub_2CE710();
  sub_2CB4E0();

  sub_30B8(v123, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v119, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v114, &qword_34CB88, &unk_2D0D90);
  v124 = v141;
  *(&v166 + 1) = v141;
  v167 = &protocol witness table for AceOutput;
  v125 = sub_F390(&v165);
  v126 = v140;
  v127 = v144;
  (*(v140 + 16))(v125, v144, v124);
  v168 = 0;
  v149(&v165);

  (*(v126 + 8))(v127, v124);
  sub_30B8(v151, &unk_353020, &unk_2D0970);
  sub_30B8(v115, &qword_34C6E8, &unk_2D0FF0);
  return sub_30B8(&v165, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_295BA8(void *a1)
{
  v2 = v1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v8 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2CDFE0();
  v10 = sub_2CE670();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "HandleIntentStrategy#registerCorrection Registering correction/undo", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  if (sub_2CB460())
  {
    sub_2CB110();

    sub_2C97A0();
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_F3F4(v18, v16, &qword_356A70, &qword_2D8ED8);
  if (v17)
  {
    sub_35E0(v16, v17);
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v2;
    v13 = a1;

    sub_2C9790();

    sub_30B8(v18, &qword_356A70, &qword_2D8ED8);
    return sub_306C(v16);
  }

  else
  {
    sub_30B8(v18, &qword_356A70, &qword_2D8ED8);
    return sub_30B8(v16, &qword_356A70, &qword_2D8ED8);
  }
}

uint64_t sub_295E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_295EA0, 0, 0);
}

uint64_t sub_295EA0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_2CA550();
  *v2 = v0;
  v2[1] = sub_295F9C;
  v4 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000016, 0x80000000002E0F10, sub_29FF00, v1, v3);
}

uint64_t sub_295F9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2960AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20410(&qword_356A78, &unk_2D8EF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - v7;
  sub_2CBC60();
  sub_35E0(v13, v13[3]);
  sub_2CBE60();
  sub_306C(v13);
  sub_2CC3E0();
  swift_allocObject();
  sub_2CC3D0();
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  (*(v6 + 32))(v10 + v9, v8, v5);

  sub_2CC390();
}

double sub_296280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20410(&qword_356A78, &unk_2D8EF0);
  v37 = *(v6 - 8);
  v35 = *(v37 + 64);
  __chkstk_darwin(v6);
  v36 = &v32 - v7;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_20410(&unk_356F40, &unk_2D0740);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2D0090;
    sub_2CDCA0();
    *(v12 + 32) = sub_2CDC80();
    *(v12 + 40) = v13;
  }

  v14 = qword_34BF58;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v15, v8);

  v16 = sub_2CDFE0();
  v17 = sub_2CE670();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = v6;
    v21 = v20;
    v38 = v20;
    *v19 = 136315138;
    v22 = sub_2CE420();
    v24 = sub_3F08(v22, v23, &v38);
    v32 = v8;
    v25 = a3;
    v26 = v24;

    *(v19 + 4) = v26;
    a3 = v25;
    _os_log_impl(&dword_0, v16, v17, "HandleIntentStrategy#registerCorrection executing pause as a correction/undo, devices: %s", v19, 0xCu);
    sub_306C(v21);
    v6 = v34;

    a2 = v33;

    (*(v9 + 8))(v11, v32);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_35E0((a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playbackController), *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playbackController + 24));
  v28 = v36;
  v27 = v37;
  (*(v37 + 16))(v36, a3, v6);
  v29 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v30 = swift_allocObject();
  (*(v27 + 32))(v30 + v29, v28, v6);
  sub_2CDCB0();

  return result;
}

uint64_t sub_296680(uint64_t a1, uint64_t a2)
{
  v17[1] = a2;
  v17[0] = sub_2CDCD0();
  v3 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CA550();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_356A80, qword_2D8F00);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  sub_F3F4(a1, v17 - v11, &qword_356A80, qword_2D8F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v12;
    v14 = v17[0];
    (*(v3 + 32))(v5, v13, v17[0]);
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 4) = 0;
    *(v9 + 5) = sub_2CDCC0();
    *(v9 + 6) = v15;
    (*(v7 + 104))(v9, enum case for CorrectionsActionOutcome.failure(_:), v6);
    sub_20410(&qword_356A78, &unk_2D8EF0);
    sub_2CE4A0();
    return (*(v3 + 8))(v5, v14);
  }

  else
  {
    *(v9 + 4) = 0;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    (*(v7 + 104))(v9, enum case for CorrectionsActionOutcome.success(_:), v6);
    sub_20410(&qword_356A78, &unk_2D8EF0);
    return sub_2CE4A0();
  }
}

uint64_t PlayMedia.HandleIntentStrategy.makeFailureHandlingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = a4;
  v35 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "PlayMedia+HandleIntentStategy#makeFailureHandlingIntentResponse", v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v33 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "MetricsError");
  *(inited + 16) = xmmword_2D0090;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v19 = 0xE000000000000000;
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_2CECB0(40);

  v37 = 0xD000000000000023;
  v38 = 0x80000000002E0DE0;
  v20 = [a3 userActivity];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 activityType];

    v23 = sub_2CE270();
    v19 = v24;
  }

  else
  {
    v23 = 0;
  }

  v39._countAndFlagsBits = v23;
  v39._object = v19;
  sub_2CE350(v39);

  v40._countAndFlagsBits = 95;
  v40._object = 0xE100000000000000;
  sub_2CE350(v40);
  v36 = [a3 code];
  v41._countAndFlagsBits = sub_2CEE70();
  sub_2CE350(v41);

  v25 = v37;
  v26 = v38;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v25;
  *(inited + 56) = v26;
  v27 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v28 = swift_allocObject();
  v28[2] = v6;
  v28[3] = a1;
  v29 = v34;
  v30 = v35;
  v28[4] = a2;
  v28[5] = v29;
  v28[6] = v30;
  v28[7] = a3;

  v31 = a2;

  sub_19636C(v27, a1, v31, a3, sub_29F670, v28);
}

uint64_t sub_296D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, void *a7)
{
  v115 = a7;
  v125 = a6;
  v126 = a5;
  v124 = a4;
  v123 = a3;
  v127 = a2;
  v131 = a1;
  v129 = sub_2CA3C0();
  v113 = *(v129 - 8);
  __chkstk_darwin(v129);
  v112 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2C8E80();
  v128 = *(v133 - 8);
  __chkstk_darwin(v133);
  v132 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v9 - 8);
  v119 = &v106 - v10;
  v118 = sub_2CA910();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v120 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = __chkstk_darwin(v114);
  v116 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v135 = &v106 - v14;
  v15 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v15 - 8);
  v122 = &v106 - v16;
  v17 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v17 - 8);
  v134 = &v106 - v18;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v19 - 8);
  v121 = &v106 - v20;
  v21 = sub_2CCB30();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CCAC0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v29);
  v31 = (&v106 - v30);
  sub_F3F4(v131, &v106 - v30, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v106 = v28;
    v107 = v24;
    v108 = v26;
    v109 = v25;
    v110 = v22;
    v111 = v21;
    v43 = v135;
    sub_14A58(v31, v135, &qword_34C6E8, &unk_2D0FF0);
    sub_35E0((v127 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(v127 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
    LODWORD(v131) = sub_2CBBD0();
    v130 = sub_2CB5B0();
    v44 = sub_2CA000();
    v45 = v119;
    (*(*(v44 - 8) + 56))(v119, 1, 1, v44);
    v138 = 0;
    v136 = 0u;
    v137 = 0u;
    if (sub_81330())
    {
      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_5:
        v46 = [objc_allocWithZone(SAUIAddDialogs) init];
        v47 = v132;
        sub_2C8E70();
        sub_2C8E50();
        v128[1](v47, v133);
        v48 = sub_2CE260();

        [v46 setAceId:v48];

        sub_81D44(v43, 1);
        sub_334A0(0, &qword_34DFC8, SADialog_ptr);
        isa = sub_2CE400().super.isa;

        [v46 setDialogs:isa];

        sub_334A0(0, &qword_353110, NSNumber_ptr);
        v50 = sub_2CEB10(0).super.super.isa;
        [v46 setListenAfterSpeaking:v50];

        v51 = v112;
        sub_2CA0E0();
        v52 = v113;
        v53 = v129;
        v54 = (*(v113 + 88))(v51, v129);
        v55 = v109;
        if (v54 == enum case for BehaviorAfterSpeaking.dingAndListen(_:))
        {
          (*(v52 + 96))(v51, v53);
          v56 = [objc_allocWithZone(SAUIListenAfterSpeakingBehavior) init];
          v57 = sub_2CE260();

          [v56 setStartAlertSoundID:v57];

          [v46 setListenAfterSpeakingBehavior:v56];
        }

        else
        {
          (*(v52 + 8))(v51, v53);
        }

        v72 = v121;
        v73 = v115;
        v74 = v111;
        sub_2C9E10();
        v43 = v134;
LABEL_24:
        v80 = v110;
LABEL_25:

        sub_30B8(&v136, &qword_34CC80, &qword_2D1520);
        sub_30B8(v45, &unk_353020, &unk_2D0970);
        v81 = v108;
        v82 = v106;
        (*(v108 + 104))(v106, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v55);
        v83 = v107;
        (*(v80 + 104))(v107, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v74);
        *&v136 = [v73 code];
        sub_2CEE70();
        v134 = sub_2CCAE0();

        (*(v80 + 8))(v83, v74);
        (*(v81 + 8))(v82, v55);
        v133 = sub_35E0((v127 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v127 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
        v84 = enum case for ActivityType.failed(_:);
        v85 = sub_2C9C20();
        v86 = *(v85 - 8);
        (*(v86 + 104))(v72, v84, v85);
        (*(v86 + 56))(v72, 0, 1, v85);
        v87 = v135;
        v88 = v116;
        sub_F3F4(v135, v116, &qword_34C6E8, &unk_2D0FF0);

        v89 = sub_2CA130();
        v90 = *(v89 - 8);
        (*(v90 + 32))(v43, v88, v89);
        (*(v90 + 56))(v43, 0, 1, v89);
        v91 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
        v92 = sub_2C98F0();
        v93 = v72;
        v94 = v43;
        v95 = *(v92 - 8);
        v96 = v122;
        (*(v95 + 104))(v122, v91, v92);
        (*(v95 + 56))(v96, 0, 1, v92);
        sub_2CE710();
        sub_2CB4E0();

        sub_30B8(v96, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v94, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v93, &qword_34CB88, &unk_2D0D90);
        v97 = v118;
        *(&v137 + 1) = v118;
        v138 = &protocol witness table for AceOutput;
        v98 = sub_F390(&v136);
        v99 = v117;
        v100 = v120;
        (*(v117 + 16))(v98, v120, v97);
        v139 = 0;
        v126(&v136);
        (*(v99 + 8))(v100, v97);
        sub_30B8(v87, &qword_34C6E8, &unk_2D0FF0);
        return sub_30B8(&v136, qword_34C798, &qword_2D0DA0);
      }
    }

    else
    {
      v58 = sub_2CA100();
      v59 = *(v58 + 16);
      if (!v59)
      {

        v71 = _swiftEmptyArrayStorage;
        v43 = v134;
LABEL_21:
        v75 = SAUIDialogPhaseCompletionValue;
        v76 = objc_allocWithZone(SAUIAddViews);
        v77 = v75;
        v46 = [v76 init];
        v55 = v109;
        if (v71 >> 62)
        {
          sub_334A0(0, &qword_34CD10, SAAceView_ptr);

          v78 = sub_2CED90();
        }

        else
        {

          sub_2CEEB0();
          sub_334A0(0, &qword_34CD10, SAAceView_ptr);
          v78 = v71;
        }

        v140 = v78;
        sub_80E28(_swiftEmptyArrayStorage);
        sub_80E28(_swiftEmptyArrayStorage);
        sub_334A0(0, &qword_34CD10, SAAceView_ptr);
        v79 = sub_2CE400().super.isa;

        [v46 setViews:v79];

        [v46 setDialogPhase:v77];
        sub_2C9E30();
        v72 = v121;
        v73 = v115;
        v74 = v111;
        goto LABEL_24;
      }

      v141 = _swiftEmptyArrayStorage;
      sub_2CED20();
      v60 = 0;
      v45 = 0;
      v61 = *(v58 + 16);
      ++v128;
      v129 = v61;
      while (v129 != v45)
      {
        if (v45 >= *(v58 + 16))
        {
          goto LABEL_28;
        }

        v43 = *(v58 + v60 + 40);
        v63 = objc_allocWithZone(SAUIAssistantUtteranceView);

        v64 = [v63 init];
        v65 = v132;
        sub_2C8E70();
        sub_2C8E50();
        (*v128)(v65, v133);
        v66 = sub_2CE260();

        [v64 setAceId:v66];

        sub_2CA0D0();
        v67 = sub_2CE260();

        [v64 setDialogIdentifier:v67];

        v68 = sub_2CE260();
        [v64 setText:v68];

        v69 = v64;
        [v69 setCanUseServerTTS:1];
        [v69 setDisableDeviceRacing:v131 & 1];
        if ((v130 & 1) != 0 && (v70 = *(sub_2CA110() + 16), , v45 < v70))
        {
          if (v45 >= *(sub_2CA110() + 16))
          {
            goto LABEL_29;
          }

          v62 = sub_2CE260();

          [v69 setSpeakableText:v62];
        }

        else
        {

          v62 = v69;
        }

        ++v45;
        sub_2CED00();
        sub_2CED30();
        sub_2CED40();
        sub_2CED10();
        v60 += 16;
        v43 = v134;
        if (v59 == v45)
        {

          v71 = v141;
          v45 = v119;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    if (sub_2CEDA0())
    {
      v102 = sub_81D44(v43, 1);
      v103 = sub_82014(v102, _swiftEmptyArrayStorage, 0);

      v104 = sub_2CE270();
      v46 = sub_829E4(v104, v105, v103, _swiftEmptyArrayStorage);

      sub_2C9E30();
      v43 = v134;
      v72 = v121;
      v73 = v115;
      v74 = v111;
      v80 = v110;
      v55 = v109;
      goto LABEL_25;
    }

    goto LABEL_5;
  }

  v32 = *v31;
  (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v25);
  (*(v22 + 104))(v24, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v21);
  swift_getErrorValue();
  sub_2CEEF0();
  v135 = sub_2CCAE0();

  (*(v22 + 8))(v24, v21);
  (*(v26 + 8))(v28, v25);
  v133 = sub_35E0((v127 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v127 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
  v33 = enum case for ActivityType.failed(_:);
  v34 = sub_2C9C20();
  v35 = *(v34 - 8);
  v36 = v121;
  (*(v35 + 104))(v121, v33, v34);
  (*(v35 + 56))(v36, 0, 1, v34);
  v37 = sub_2CA130();
  v38 = v134;
  (*(*(v37 - 8) + 56))(v134, 1, 1, v37);
  v39 = enum case for SiriKitReliabilityCodes.renderingError(_:);
  v40 = sub_2C98F0();
  v41 = *(v40 - 8);
  v42 = v122;
  (*(v41 + 104))(v122, v39, v40);
  (*(v41 + 56))(v42, 0, 1, v40);
  sub_2CE710();
  sub_2CB4E0();

  sub_30B8(v42, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v38, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v36, &qword_34CB88, &unk_2D0D90);
  *&v136 = v32;
  v139 = 1;
  swift_errorRetain();
  v126(&v136);

  return sub_30B8(&v136, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_298224(uint64_t a1, void *a2, id a3, uint64_t a4, uint64_t a5)
{
  v103 = a5;
  v101 = a4;
  v94 = a2;
  v95 = a3;
  v6 = type metadata accessor for ResponseFactoryOutputContext(0);
  v88 = *(v6 - 1);
  v7 = __chkstk_darwin(v6);
  v89 = v8;
  v90 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v87 - v9;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v93 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v97 = &v87 - v15;
  __chkstk_darwin(v14);
  v17 = &v87 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v19 = *(v11 + 16);
  v99 = (v11 + 16);
  v100 = v18;
  v98 = v19;
  v19(v17, v18, v10);

  v20 = sub_2CDFE0();
  v21 = sub_2CE670();

  v22 = os_log_type_enabled(v20, v21);
  v104 = a1;
  v96 = v11;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315394;
    v105 = v104;
    v106 = v24;
    sub_2CCFB0();
    sub_2A06C4(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
    v25 = sub_2CEE70();
    v27 = sub_3F08(v25, v26, &v106);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v28 = sub_2CCCA0();
    v30 = sub_3F08(v28, v29, &v106);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_0, v20, v21, "HandleIntentStrategy#preHandleIntentOutputWithRF response is being handled using Response Framework2.0. for app: %s Insights:%{public}s", v23, 0x16u);
    swift_arrayDestroy();

    v11 = v96;
    a1 = v104;
  }

  v92 = *(v11 + 8);
  v92(v17, v10);
  v31 = swift_allocObject();
  v32 = v101;
  v33 = v102;
  v31[2] = v102;
  v31[3] = a1;
  v34 = v94;
  v35 = v95;
  v31[4] = v94;
  v31[5] = v35;
  v36 = v103;
  v31[6] = v32;
  v31[7] = v36;
  v37 = v97;
  v98(v97, v100, v10);
  swift_retain_n();
  swift_retain_n();
  v38 = v34;
  v39 = v35;
  swift_retain_n();
  v94 = v38;
  v95 = v39;
  v40 = sub_2CDFE0();
  v41 = sub_2CE670();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v106 = v43;
    *v42 = 136446210;
    v44 = sub_2CCCA0();
    v87 = v10;
    v46 = sub_3F08(v44, v45, &v106);

    *(v42 + 4) = v46;
    v33 = v102;
    _os_log_impl(&dword_0, v40, v41, "HandleIntentStrategy#preHandledIntentOutputContext... Insights:%{public}s", v42, 0xCu);
    sub_306C(v43);

    v10 = v87;
    v47 = v97;
  }

  else
  {

    v47 = v37;
  }

  v48 = v92;
  v92(v47, v10);
  v49 = swift_allocBox();
  v51 = v50;
  *v50 = 0;
  v52 = v6[5];
  v53 = type metadata accessor for SnippetModelResponse(0);
  (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
  *(v51 + v6[6]) = 0;
  v54 = v6[7];
  v55 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  (*(*(v55 - 8) + 56))(v51 + v54, 1, 1, v55);
  v56 = v6[8];
  v57 = sub_2CA000();
  (*(*(v57 - 8) + 56))(v51 + v56, 1, 1, v57);
  *(v51 + v6[9]) = 0;
  *(v51 + v6[10]) = 0;
  v58 = v6[11];
  v59 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  (*(*(v59 - 8) + 56))(v51 + v58, 1, 1, v59);
  v60 = sub_2CB440();
  sub_35E0((v33 + 24), *(v33 + 48));
  if (sub_2CC4C0())
  {
    v102 = v49;
    v98(v93, v100, v10);
    v61 = sub_2CDFE0();
    v62 = sub_2CE670();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "PlayMediaHandleIntentStrategy#preHandledIntentOutputContext sonic response only, skipping output context generation", v63, 2u);
    }

    v48(v93, v10);
    v64 = v91;
    sub_27D16C(v51, v91);
    v65 = *(v33 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 24);
    v100 = *(v33 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 32);
    v99 = sub_35E0((v33 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory), v65);
    v66 = v90;
    sub_27D16C(v64, v90);
    v67 = (*(v88 + 80) + 56) & ~*(v88 + 80);
    v68 = swift_allocObject();
    v70 = v103;
    v69 = v104;
    v68[2] = v33;
    v68[3] = v69;
    v71 = v94;
    v72 = v101;
    v68[4] = v94;
    v68[5] = v72;
    v68[6] = v70;
    sub_27D1F0(v66, v68 + v67);

    v73 = v71;

    v74 = v95;
    sub_278490(v69, v73, v95, v64, sub_29F904, v68, v65, v100);

    sub_29F908(v64);
  }

  else
  {
    if (qword_34C050 != -1)
    {
      swift_once();
    }

    sub_20410(&qword_34F2A8, &qword_2D4990);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_2D0E40;
    v76 = swift_allocObject();
    v77 = v104;
    *(v76 + 16) = v33;
    *(v76 + 24) = v77;
    v78 = v94;
    v79 = v95;
    *(v76 + 32) = v94;
    *(v76 + 40) = v79;
    *(v76 + 48) = v60 & 1;
    *(v76 + 56) = v49;
    *(v75 + 32) = sub_29F8C8;
    *(v75 + 40) = v76;
    v80 = swift_allocObject();
    v80[2] = v33;
    v80[3] = v77;
    v80[4] = v78;
    v80[5] = v79;
    v80[6] = v49;
    *(v75 + 48) = sub_29F8E0;
    *(v75 + 56) = v80;
    v81 = swift_allocObject();
    v81[2] = v49;
    v81[3] = v33;
    v81[4] = sub_29F898;
    v81[5] = v31;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v82 = v78;
    v83 = v79;
    v84 = v82;
    v85 = v83;

    sub_2CCC70();
  }
}

uint64_t sub_298C78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v24 = a5;
  v12 = type metadata accessor for ResponseFactoryOutputContext(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 24);
  v23 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 32);
  v21 = sub_35E0((a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory), v15);
  sub_27D16C(a1, &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v18 = v22;
  v17[4] = a4;
  v17[5] = v18;
  v17[6] = a7;
  sub_27D1F0(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);

  v19 = a4;

  sub_278490(a3, v19, v24, a1, sub_2A07F4, v17, v15, v23);
}

uint64_t sub_298E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v122 = a7;
  v141 = a6;
  v142 = a5;
  v139 = a4;
  v138 = a3;
  v137 = a2;
  v8 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v8 - 8);
  v140 = &v116 - v9;
  v10 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v10 - 8);
  v123 = &v116 - v11;
  v12 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v13 = __chkstk_darwin(v12 - 8);
  v126 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v116 - v15;
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v18 = __chkstk_darwin(v17 - 8);
  v125 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v136 = &v116 - v20;
  v121 = sub_2CCB20();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CCB30();
  v135 = *(v22 - 8);
  __chkstk_darwin(v22);
  v132 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2CCAC0();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CE000();
  v144 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v28 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v127 = &v116 - v30;
  __chkstk_darwin(v29);
  v32 = &v116 - v31;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v33 = sub_3ED0(v25, static Logger.default);
  swift_beginAccess();
  v34 = *(v144 + 16);
  v130 = v33;
  v129 = v144 + 16;
  v128 = v34;
  v34(v32, v33, v25);
  sub_F3F4(a1, v147, qword_34C798, &qword_2D0DA0);
  v35 = sub_2CDFE0();
  v36 = sub_2CE670();
  v37 = os_log_type_enabled(v35, v36);
  v143 = a1;
  v124 = v28;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v146 = v117;
    *v38 = 136315394;
    v118 = v22;
    sub_F3F4(v147, v145, qword_34C798, &qword_2D0DA0);
    sub_20410(qword_34C798, &qword_2D0DA0);
    v39 = v16;
    v40 = v25;
    v41 = sub_2CE2A0();
    v42 = v36;
    v44 = v43;
    v22 = v118;
    sub_30B8(v147, qword_34C798, &qword_2D0DA0);
    v45 = v41;
    v25 = v40;
    v46 = v144;
    v47 = sub_3F08(v45, v44, &v146);

    *(v38 + 4) = v47;
    *(v38 + 12) = 2082;
    v48 = sub_2CCCA0();
    v50 = sub_3F08(v48, v49, &v146);

    *(v38 + 14) = v50;
    v51 = v42;
    v16 = v39;
    _os_log_impl(&dword_0, v35, v51, "HandleIntentStrategy#preHandleIntentOutputWithRF returning final output: %s Insights:%{public}s", v38, 0x16u);
    swift_arrayDestroy();

    a1 = v143;

    v52 = v46;
  }

  else
  {

    sub_30B8(v147, qword_34C798, &qword_2D0DA0);
    v52 = v144;
  }

  v53 = *(v52 + 8);
  v53(v32, v25);
  sub_F3F4(a1, v147, qword_34C798, &qword_2D0DA0);
  if (v148)
  {
    v54 = v147[0];
    v55 = v127;
    v128(v127, v130, v25);
    swift_errorRetain();
    v56 = sub_2CDFE0();
    v57 = sub_2CE680();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v147[0] = swift_slowAlloc();
      *v58 = 136446466;
      v145[0] = v54;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v59 = sub_2CE2A0();
      v61 = sub_3F08(v59, v60, v147);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2082;
      v62 = sub_2CCCA0();
      v64 = sub_3F08(v62, v63, v147);

      *(v58 + 14) = v64;
      _os_log_impl(&dword_0, v56, v57, "HandleIntentStrategy#preHandleIntentOutputWithRF failed with error: %{public}s, Insights:%{public}s", v58, 0x16u);
      swift_arrayDestroy();

      v65 = v127;
    }

    else
    {

      v65 = v55;
    }

    v53(v65, v25);
    v136 = v54;
    v83 = v133;
    v84 = v131;
    v85 = v134;
    (*(v133 + 104))(v131, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v134);
    v86 = v135;
    v87 = v132;
    (*(v135 + 104))(v132, enum case for AdditionalMetricsDescription.SourceFunction.preHandle(_:), v22);
    swift_getErrorValue();
    sub_2CEEF0();
    v144 = sub_2CCAE0();

    (*(v86 + 8))(v87, v22);
    (*(v83 + 8))(v84, v85);
    sub_35E0((v137 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider), *(v137 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24));
    v88 = enum case for ActivityType.failed(_:);
    v89 = sub_2C9C20();
    v90 = *(v89 - 8);
    v91 = v125;
    (*(v90 + 104))(v125, v88, v89);
    (*(v90 + 56))(v91, 0, 1, v89);
    v92 = sub_2CA130();
    v93 = v126;
    (*(*(v92 - 8) + 56))(v126, 1, 1, v92);
    v94 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v95 = sub_2C98F0();
    v96 = *(v95 - 8);
    v97 = v140;
    (*(v96 + 104))(v140, v94, v95);
    (*(v96 + 56))(v97, 0, 1, v95);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v97, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v93, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v91, &qword_34CB88, &unk_2D0D90);
    v142(v143);
  }

  else
  {
    v126 = v53;
    v127 = v25;
    sub_30B8(v147, qword_34C798, &qword_2D0DA0);
    v66 = v133;
    v67 = v131;
    v68 = v134;
    (*(v133 + 104))(v131, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v134);
    v69 = v135;
    v70 = v132;
    (*(v135 + 104))(v132, enum case for AdditionalMetricsDescription.SourceFunction.preHandle(_:), v22);
    v71 = v120;
    v72 = v119;
    v73 = v121;
    (*(v120 + 104))(v119, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v121);
    v118 = sub_2CCAD0();
    v125 = v74;
    (*(v71 + 8))(v72, v73);
    (*(v69 + 8))(v70, v22);
    (*(v66 + 8))(v67, v68);
    sub_EEAC(v137 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider, v147);
    sub_35E0(v147, v147[3]);
    v75 = enum case for ActivityType.showInterstitial(_:);
    v76 = sub_2C9C20();
    v77 = *(v76 - 8);
    v78 = v136;
    (*(v77 + 104))(v136, v75, v76);
    (*(v77 + 56))(v78, 0, 1, v76);
    v79 = type metadata accessor for ResponseFactoryOutputContext(0);
    v80 = v123;
    sub_F3F4(v122 + *(v79 + 28), v123, &qword_34C820, &unk_2D0A30);
    v81 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
    {
      sub_30B8(v80, &qword_34C820, &unk_2D0A30);
      v82 = sub_2CA130();
      (*(*(v82 - 8) + 56))(v16, 1, 1, v82);
    }

    else
    {

      v99 = sub_2CA130();
      v100 = *(v99 - 8);
      (*(v100 + 32))(v16, v80, v99);
      (*(v100 + 56))(v16, 0, 1, v99);
    }

    v101 = v16;
    v102 = enum case for SiriKitReliabilityCodes.success(_:);
    v103 = sub_2C98F0();
    v104 = *(v103 - 8);
    v105 = v140;
    (*(v104 + 104))(v140, v102, v103);
    (*(v104 + 56))(v105, 0, 1, v103);
    sub_2CE710();
    v106 = v136;
    sub_2CB4E0();

    sub_30B8(v105, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v101, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v106, &qword_34CB88, &unk_2D0D90);
    sub_306C(v147);
    v107 = v124;
    v108 = v127;
    v128(v124, v130, v127);
    v109 = sub_2CDFE0();
    v110 = sub_2CE670();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v147[0] = v112;
      *v111 = 136446210;
      v113 = sub_2CCCA0();
      v115 = sub_3F08(v113, v114, v147);

      *(v111 + 4) = v115;
      _os_log_impl(&dword_0, v109, v110, "HandleIntentStrategy#preHandleIntentOutputWithRF completed successfully. Insights:%{public}s", v111, 0xCu);
      sub_306C(v112);
    }

    (v126)(v107, v108);
    return (v142)(v143);
  }
}

uint64_t sub_29A014(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = (a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider);
  v15 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider + 24);
  v16 = v14[4];
  sub_35E0(v14, v15);
  v17 = swift_allocObject();
  v17[2] = sub_CEEA8;
  v17[3] = v13;
  v17[4] = a7;
  v18 = *(v16 + 8);

  v18(a3, a4, a5, a6, sub_29F964, v17, v15, v16);
}

uint64_t sub_29A148(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playMediaDialogProvider);

  sub_1AF478(a3, a4, v13, sub_CE4A8, v12, a6);
}

uint64_t sub_29A224(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v5 = type metadata accessor for ResponseFactoryOutputContext(0);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  sub_35E0((a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
  LOBYTE(a2) = sub_2CBBD0();
  swift_beginAccess();
  *(v12 + *(v5 + 40)) = a2 & 1;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v13, v8);

  v14 = sub_2CDFE0();
  v15 = sub_2CE670();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v16 = 136446466;
    swift_beginAccess();
    sub_27D16C(v12, v7);
    v17 = sub_2CE2A0();
    v19 = sub_3F08(v17, v18, v29);
    v26 = v8;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = sub_2CCCA0();
    v23 = sub_3F08(v21, v22, v29);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_0, v14, v15, "HandleIntentStrategy#preHandledIntentOutputContext created output context:  %{public}s Insights:%{public}s", v16, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v11, v26);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  swift_beginAccess();
  sub_27D16C(v12, v7);
  v27(v7);
  return sub_29F908(v7);
}

uint64_t sub_29A5A0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v113 = a4;
  v114 = a5;
  v104 = a2;
  v105 = a3;
  v8 = type metadata accessor for ResponseFactoryOutputContext(0);
  v99 = *(v8 - 1);
  v9 = __chkstk_darwin(v8);
  v100 = v10;
  v101 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = &v97 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v98 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v109 = &v97 - v17;
  __chkstk_darwin(v16);
  v19 = &v97 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v21 = *(v13 + 16);
  v111 = (v13 + 16);
  v112 = v20;
  v110 = v21;
  v21(v19, v20, v12);

  v22 = sub_2CDFE0();
  v23 = sub_2CE670();

  v24 = os_log_type_enabled(v22, v23);
  v106 = v13;
  v103 = v12;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v97 = v6;
    v26 = v25;
    v27 = swift_slowAlloc();
    v115 = a1;
    v116 = v27;
    *v26 = 136315394;
    sub_2CCFB0();
    sub_2A06C4(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
    v28 = sub_2CEE70();
    v30 = sub_3F08(v28, v29, &v116);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    v31 = sub_2CCCA0();
    v33 = sub_3F08(v31, v32, &v116);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_0, v22, v23, "PlayMedia+HandleIntentStategy#handledIntentOutputWithRF response is being handled using Response Framework2.0. for app: %s Insights:%{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v6 = v97;

    v34 = *(v13 + 8);
    v35 = v103;
    v108 = v34;
    v34(v19, v103);
  }

  else
  {

    v108 = *(v13 + 8);
    v108(v19, v12);
    v35 = v12;
  }

  v36 = swift_allocObject();
  *(v36 + 2) = v6;
  *(v36 + 3) = a1;
  v37 = v104;
  v38 = v105;
  *(v36 + 4) = v104;
  *(v36 + 5) = v38;
  v39 = v114;
  *(v36 + 6) = v113;
  *(v36 + 7) = v39;
  v40 = v109;
  v110(v109, v112, v35);
  swift_retain_n();
  swift_retain_n();
  v41 = v37;
  v42 = v38;
  swift_retain_n();
  v104 = v41;
  v105 = v42;
  v43 = sub_2CDFE0();
  v44 = sub_2CE670();
  v45 = os_log_type_enabled(v43, v44);
  v107 = a1;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v116 = v47;
    *v46 = 136446210;
    v48 = sub_2CCCA0();
    v50 = v6;
    v51 = sub_3F08(v48, v49, &v116);

    *(v46 + 4) = v51;
    v6 = v50;
    _os_log_impl(&dword_0, v43, v44, "HandleIntentStrategy#handledIntentOutputContext... Insights:%{public}s", v46, 0xCu);
    sub_306C(v47);

    v52 = v109;
  }

  else
  {

    v52 = v40;
  }

  v108(v52, v35);
  v53 = swift_allocBox();
  v55 = v54;
  *v54 = 0;
  v56 = v8[5];
  v57 = type metadata accessor for SnippetModelResponse(0);
  (*(*(v57 - 8) + 56))(v55 + v56, 1, 1, v57);
  *(v55 + v8[6]) = 0;
  v58 = v8[7];
  v59 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  (*(*(v59 - 8) + 56))(v55 + v58, 1, 1, v59);
  v60 = v8[8];
  v61 = sub_2CA000();
  (*(*(v61 - 8) + 56))(v55 + v60, 1, 1, v61);
  *(v55 + v8[9]) = 0;
  *(v55 + v8[10]) = 0;
  v62 = v8[11];
  v63 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  (*(*(v63 - 8) + 56))(v55 + v62, 1, 1, v63);
  v64 = sub_2CB440();
  sub_35E0((v6 + 24), *(v6 + 48));
  if (sub_2CC4C0())
  {
    v97 = v53;
    v109 = v36;
    v65 = v98;
    v66 = v103;
    v110(v98, v112, v103);
    v67 = sub_2CDFE0();
    v68 = sub_2CE670();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_0, v67, v68, "PlayMediaHandleIntentStrategy#handledIntentOutputContext sonic response only, skipping output context generation", v69, 2u);
    }

    v108(v65, v66);
    v70 = v102;
    sub_27D16C(v55, v102);
    v71 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 24);
    v112 = *(v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 32);
    v111 = sub_35E0((v6 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory), v71);
    v72 = v101;
    sub_27D16C(v70, v101);
    v73 = (*(v99 + 80) + 64) & ~*(v99 + 80);
    v74 = swift_allocObject();
    v75 = v107;
    v74[2] = v6;
    v74[3] = v75;
    v77 = v104;
    v76 = v105;
    v78 = v113;
    v79 = v114;
    v74[4] = v104;
    v74[5] = v78;
    v74[6] = v79;
    v74[7] = v76;
    sub_27D1F0(v72, v74 + v73);

    v80 = v77;
    v81 = v76;

    sub_278490(v75, v80, v81, v70, sub_2A0570, v74, v71, v112);

    sub_29F908(v70);
  }

  else
  {
    if (qword_34C050 != -1)
    {
      swift_once();
    }

    sub_20410(&qword_34F2A8, &qword_2D4990);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_2D10E0;
    v83 = swift_allocObject();
    v84 = v107;
    *(v83 + 16) = v6;
    *(v83 + 24) = v84;
    v85 = v104;
    v86 = v105;
    *(v83 + 32) = v104;
    *(v83 + 40) = v86;
    *(v83 + 48) = v64 & 1;
    *(v83 + 56) = v53;
    *(v82 + 32) = sub_2A0048;
    *(v82 + 40) = v83;
    v87 = swift_allocObject();
    v87[2] = v6;
    v87[3] = v84;
    v87[4] = v85;
    v87[5] = v86;
    v87[6] = v53;
    *(v82 + 48) = sub_2A00D4;
    *(v82 + 56) = v87;
    v88 = swift_allocObject();
    v88[2] = v53;
    v88[3] = v85;
    v88[4] = v86;
    v88[5] = v6;
    *(v82 + 64) = sub_2A0104;
    *(v82 + 72) = v88;
    v89 = swift_allocObject();
    v89[2] = v53;
    v89[3] = sub_2A0028;
    v89[4] = v36;
    swift_retain_n();
    v90 = v85;
    v91 = v86;
    swift_retain_n();
    swift_retain_n();
    v92 = v90;
    v93 = v91;
    v94 = v92;
    v95 = v93;

    sub_2CCC70();
  }
}

uint64_t sub_29B07C(uint64_t a1, char *a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8)
{
  v116 = a8;
  v115 = a7;
  v135 = a6;
  v136 = a5;
  v138 = a4;
  v133 = a3;
  v10 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v10 - 8);
  v134 = &v113 - v11;
  v12 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v12 - 8);
  v117 = &v113 - v13;
  v14 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v15 = __chkstk_darwin(v14 - 8);
  v121 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v113 - v17;
  v19 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v20 = __chkstk_darwin(v19 - 8);
  v120 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v132 = &v113 - v22;
  v23 = sub_2CCB30();
  v131 = *(v23 - 8);
  __chkstk_darwin(v23);
  v128 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2CCAC0();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v127 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v119 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v113 - v31;
  __chkstk_darwin(v30);
  v34 = &v113 - v33;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v35 = sub_3ED0(v26, static Logger.default);
  swift_beginAccess();
  v36 = *(v27 + 16);
  v125 = v35;
  v124 = v27 + 16;
  v123 = v36;
  v36(v34, v35, v26);
  v139 = a1;
  sub_F3F4(a1, v142, qword_34C798, &qword_2D0DA0);
  v37 = sub_2CDFE0();
  v38 = sub_2CE670();
  v39 = os_log_type_enabled(v37, v38);
  v137 = v27;
  v118 = v18;
  v126 = v26;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v114 = v32;
    v41 = v40;
    v42 = swift_slowAlloc();
    v122 = a2;
    v141 = v42;
    *v41 = 136315394;
    sub_F3F4(v142, v140, qword_34C798, &qword_2D0DA0);
    sub_20410(qword_34C798, &qword_2D0DA0);
    v43 = sub_2CE2A0();
    v45 = v44;
    sub_30B8(v142, qword_34C798, &qword_2D0DA0);
    v46 = sub_3F08(v43, v45, &v141);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2082;
    v47 = sub_2CCCA0();
    v49 = sub_3F08(v47, v48, &v141);

    *(v41 + 14) = v49;
    v50 = v137;
    _os_log_impl(&dword_0, v37, v38, "PlayMedia+HandleIntentStategy#handledIntentOutputWithRF created output: %s. Insights:%{public}s", v41, 0x16u);
    swift_arrayDestroy();
    a2 = v122;

    v32 = v114;

    v51 = *(v50 + 8);
    v52 = v126;
    (v51)(v34, v126);
  }

  else
  {

    sub_30B8(v142, qword_34C798, &qword_2D0DA0);
    v51 = *(v27 + 8);
    (v51)(v34, v26);
    v52 = v26;
  }

  sub_F3F4(v139, v142, qword_34C798, &qword_2D0DA0);
  if (v143)
  {
    v53 = v142[0];
    v123(v32, v125, v52);
    swift_errorRetain();
    v54 = sub_2CDFE0();
    v55 = v32;
    v56 = sub_2CE680();

    if (os_log_type_enabled(v54, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v122 = a2;
      v142[0] = v58;
      *v57 = 136446466;
      v140[0] = v53;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v59 = sub_2CE2A0();
      v61 = sub_3F08(v59, v60, v142);
      v114 = v55;
      v62 = v61;

      *(v57 + 4) = v62;
      *(v57 + 12) = 2082;
      v63 = sub_2CCCA0();
      v65 = sub_3F08(v63, v64, v142);

      *(v57 + 14) = v65;
      _os_log_impl(&dword_0, v54, v56, "PlayMedia+HandleIntentStategy#handledIntentOutputWithRF failed with error: %{public}s, Insights:%{public}s", v57, 0x16u);
      swift_arrayDestroy();
      a2 = v122;

      v66 = v114;
    }

    else
    {

      v66 = v55;
    }

    (v51)(v66, v52);
    v132 = v53;
    v81 = v129;
    v82 = v127;
    v83 = v130;
    (*(v129 + 104))(v127, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v130);
    v84 = v131;
    v85 = v128;
    (*(v131 + 104))(v128, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v23);
    swift_getErrorValue();
    sub_2CEEF0();
    v137 = sub_2CCAE0();

    (*(v84 + 8))(v85, v23);
    (*(v81 + 8))(v82, v83);
    sub_35E0(&a2[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider], *&a2[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24]);
    v86 = enum case for ActivityType.failed(_:);
    v87 = sub_2C9C20();
    v88 = *(v87 - 8);
    v89 = v120;
    (*(v88 + 104))(v120, v86, v87);
    (*(v88 + 56))(v89, 0, 1, v87);
    v90 = sub_2CA130();
    v91 = v121;
    (*(*(v90 - 8) + 56))(v121, 1, 1, v90);
    v92 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v93 = sub_2C98F0();
    v94 = *(v93 - 8);
    v95 = v134;
    (*(v94 + 104))(v134, v92, v93);
    (*(v94 + 56))(v95, 0, 1, v93);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v95, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v91, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v89, &qword_34CB88, &unk_2D0D90);
    v136(v139);
  }

  else
  {
    v122 = v51;
    sub_30B8(v142, qword_34C798, &qword_2D0DA0);
    sub_295BA8(v138);
    v67 = v129;
    v68 = v127;
    v69 = v130;
    (*(v129 + 104))(v127, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v130);
    v70 = v131;
    v71 = v128;
    (*(v131 + 104))(v128, enum case for AdditionalMetricsDescription.SourceFunction.handled(_:), v23);
    v142[0] = [v115 code];
    sub_2CEE70();
    v121 = sub_2CCAE0();

    (*(v70 + 8))(v71, v23);
    (*(v67 + 8))(v68, v69);
    sub_EEAC(&a2[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider], v142);
    sub_35E0(v142, v142[3]);
    v72 = enum case for ActivityType.completed(_:);
    v73 = sub_2C9C20();
    v74 = *(v73 - 8);
    v75 = v132;
    (*(v74 + 104))(v132, v72, v73);
    (*(v74 + 56))(v75, 0, 1, v73);
    v76 = type metadata accessor for ResponseFactoryOutputContext(0);
    v77 = v117;
    sub_F3F4(v116 + *(v76 + 28), v117, &qword_34C820, &unk_2D0A30);
    v78 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    if ((*(*(v78 - 8) + 48))(v77, 1, v78) == 1)
    {
      sub_30B8(v77, &qword_34C820, &unk_2D0A30);
      v79 = sub_2CA130();
      v80 = v118;
      (*(*(v79 - 8) + 56))(v118, 1, 1, v79);
    }

    else
    {

      v97 = sub_2CA130();
      v98 = *(v97 - 8);
      v80 = v118;
      (*(v98 + 32))(v118, v77, v97);
      (*(v98 + 56))(v80, 0, 1, v97);
    }

    v99 = v126;
    v100 = enum case for SiriKitReliabilityCodes.success(_:);
    v101 = sub_2C98F0();
    v102 = *(v101 - 8);
    v103 = v134;
    (*(v102 + 104))(v134, v100, v101);
    (*(v102 + 56))(v103, 0, 1, v101);
    sub_2CE710();
    v104 = v132;
    sub_2CB4E0();

    sub_30B8(v103, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v80, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v104, &qword_34CB88, &unk_2D0D90);
    sub_306C(v142);
    v105 = v119;
    v123(v119, v125, v99);
    v106 = sub_2CDFE0();
    v107 = sub_2CE670();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v142[0] = v109;
      *v108 = 136446210;
      v110 = sub_2CCCA0();
      v112 = sub_3F08(v110, v111, v142);

      *(v108 + 4) = v112;
      _os_log_impl(&dword_0, v106, v107, "PlayMedia+HandleIntentStategy#handledIntentOutputWithRF completed successfully. Insights:%{public}s", v108, 0xCu);
      sub_306C(v109);
    }

    (v122)(v105, v99);
    return (v136)(v139);
  }
}

uint64_t sub_29C218(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = (a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider);
  v15 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider + 24);
  v16 = v14[4];
  sub_35E0(v14, v15);
  v17 = swift_allocObject();
  v17[2] = sub_CEEA8;
  v17[3] = v13;
  v17[4] = a7;
  v18 = *(v16 + 16);

  v18(a3, a4, a5, a6, sub_2A05B0, v17, v15, v16);
}

uint64_t sub_29C34C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, const char *a5)
{
  v40 = a5;
  v45 = a3;
  v46 = a2;
  v6 = sub_2CE000();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20410(&qword_356410, &qword_2D8888);
  v8 = __chkstk_darwin(v39);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - v12;
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = sub_20410(&qword_34EE00, &qword_2D8ED0);
  __chkstk_darwin(v16);
  v18 = (&v37 - v17);
  v41 = type metadata accessor for ResponseFactoryOutputContext(0);
  v19 = swift_projectBox();
  sub_F3F4(a1, v18, &qword_34EE00, &qword_2D8ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    swift_beginAccess();
    *v19 = v20;
  }

  else
  {
    sub_14A58(v18, v15, &qword_356410, &qword_2D8888);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v22 = v44;
    v23 = sub_3ED0(v44, static Logger.default);
    swift_beginAccess();
    v25 = v42;
    v24 = v43;
    (*(v43 + 16))(v42, v23, v22);
    sub_F3F4(v15, v13, &qword_356410, &qword_2D8888);
    v26 = sub_2CDFE0();
    v27 = sub_2CE670();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47[0] = v38;
      *v28 = 136315394;
      sub_F3F4(v13, v10, &qword_356410, &qword_2D8888);
      v29 = sub_2CE2A0();
      v31 = v30;
      sub_30B8(v13, &qword_356410, &qword_2D8888);
      v32 = sub_3F08(v29, v31, v47);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v33 = sub_2CCCA0();
      v35 = sub_3F08(v33, v34, v47);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_0, v26, v27, v40, v28, 0x16u);
      swift_arrayDestroy();

      (*(v43 + 8))(v42, v44);
    }

    else
    {

      sub_30B8(v13, &qword_356410, &qword_2D8888);
      (*(v24 + 8))(v25, v22);
    }

    swift_beginAccess();
    v21 = sub_FECE8(v15, v19 + *(v41 + 20), &qword_356410, &qword_2D8888);
  }

  return v46(v21);
}

uint64_t sub_29C800(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_CEEA8;
  *(v13 + 24) = v12;
  *(v13 + 32) = a6;

  sub_196E80(a3, a4, a5, sub_2A0588, v13);
}

uint64_t sub_29C8F0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, const char *a5, ...)
{
  v54 = a5;
  v61 = a3;
  v62 = a2;
  v6 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v6 - 8);
  v57 = &v50 - v7;
  v8 = sub_2CE000();
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = __chkstk_darwin(v10);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v50 - v17;
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v21);
  v23 = (&v50 - v22);
  v24 = type metadata accessor for ResponseFactoryOutputContext(0);
  v25 = swift_projectBox();
  sub_F3F4(a1, v23, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v23;
    swift_beginAccess();
    *(v25 + *(v24 + 24)) = v26;
  }

  else
  {
    v51 = v24;
    sub_14A58(v23, v20, &qword_34C6E8, &unk_2D0FF0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v28 = v60;
    v29 = sub_3ED0(v60, static Logger.default);
    swift_beginAccess();
    v31 = v58;
    v30 = v59;
    (*(v59 + 16))(v58, v29, v28);
    v52 = v20;
    sub_F3F4(v20, v18, &qword_34C6E8, &unk_2D0FF0);
    v32 = sub_2CDFE0();
    v33 = sub_2CE670();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v63[0] = v50;
      *v34 = 136315394;
      sub_F3F4(v18, v15, &qword_34C6E8, &unk_2D0FF0);
      v35 = v56;
      v36 = *(v56 + 48);
      v37 = *&v15[v36];
      v38 = sub_2CA130();
      v39 = v53;
      (*(*(v38 - 8) + 32))(v53, v15, v38);
      *&v39[v36] = v37;
      v40 = sub_2CE2A0();
      v42 = v41;
      sub_30B8(v18, &qword_34C6E8, &unk_2D0FF0);
      v43 = sub_3F08(v40, v42, v63);

      *(v34 + 4) = v43;
      *(v34 + 12) = 2082;
      v44 = sub_2CCCA0();
      v46 = sub_3F08(v44, v45, v63);

      *(v34 + 14) = v46;
      _os_log_impl(&dword_0, v32, v33, v54, v34, 0x16u);
      swift_arrayDestroy();

      (*(v59 + 8))(v58, v60);
    }

    else
    {

      sub_30B8(v18, &qword_34C6E8, &unk_2D0FF0);
      (*(v30 + 8))(v31, v28);
      v35 = v56;
    }

    v47 = v51;
    v48 = v57;
    sub_14A58(v52, v57, &qword_34C6E8, &unk_2D0FF0);
    (*(v55 + 56))(v48, 0, 1, v35);
    swift_beginAccess();
    v27 = sub_FECE8(v48, v25 + *(v47 + 28), &qword_34C820, &unk_2D0A30);
  }

  return v62(v27);
}

uint64_t sub_29CEE0(uint64_t (**a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v8 - 8);
  v10 = &v16[-v9];
  v11 = *a1;
  v12 = type metadata accessor for ResponseFactoryOutputContext(0);
  v13 = swift_projectBox();
  sub_28E070(a3, v10);
  swift_beginAccess();
  sub_FECE8(v10, v13 + *(v12 + 32), &unk_353020, &unk_2D0970);
  sub_35E0((a5 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider), *(a5 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider + 24));
  LOBYTE(a5) = sub_2CBBD0();
  v14 = swift_beginAccess();
  *(v13 + *(v12 + 40)) = a5 & 1;
  return v11(v14);
}

uint64_t sub_29D03C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v3 = type metadata accessor for ResponseFactoryOutputContext(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v11, v6);

  v12 = sub_2CDFE0();
  v13 = sub_2CE670();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26[0] = v23;
    *v14 = 136446466;
    v15 = v10;
    swift_beginAccess();
    sub_27D16C(v10, v5);
    v16 = sub_2CE2A0();
    v18 = sub_3F08(v16, v17, v26);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_2CCCA0();
    v21 = sub_3F08(v19, v20, v26);
    v10 = v15;

    *(v14 + 14) = v21;
    _os_log_impl(&dword_0, v12, v13, "HandleIntentStrategy#handledIntentOutputContext created output context:  %{public}s Insights:%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  sub_27D16C(v10, v5);
  v24(v5);
  return sub_29F908(v5);
}

uint64_t PlayMedia.HandleIntentStrategy.failureIntentOutputWithRF(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = a4;
  v36 = a2;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CB450();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2CDFE0();
  v16 = sub_2CE670();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = a3;
    v37 = a1;
    v38 = v19;
    *v18 = 136315394;
    sub_2CCFB0();
    v34 = v6;
    sub_2A06C4(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
    v20 = sub_2CEE70();
    v22 = sub_3F08(v20, v21, &v38);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_2CCCA0();
    v25 = sub_3F08(v23, v24, &v38);

    *(v18 + 14) = v25;
    v6 = v34;
    _os_log_impl(&dword_0, v15, v16, "HandleIntentStrategy#failureIntentOutputWithRF response is being handled using Response Framework2.0. for app: %s Insights:%{public}s", v18, 0x16u);
    swift_arrayDestroy();
    a3 = v32;

    a5 = v33;
  }

  (*(v11 + 8))(v13, v10);
  v26 = swift_allocObject();
  v26[2] = v6;
  v26[3] = a1;
  v27 = v35;
  v28 = v36;
  v26[4] = v36;
  v26[5] = a3;
  v26[6] = v27;
  v26[7] = a5;

  v29 = v28;
  v30 = a3;

  sub_29E6E4(a1, v29, v30, sub_29F688, v26);
}

uint64_t sub_29D6AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[0] = a1;
  v25[1] = a8;
  v26 = a6;
  v28 = a9;
  v15 = type metadata accessor for ResponseFactoryOutputContext(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 24);
  v27 = *(a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory + 32);
  v25[2] = sub_35E0((a2 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory), v18);
  sub_27D16C(a1, v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v21 = v26;
  v20[4] = a4;
  v20[5] = v21;
  v20[6] = a7;
  v20[7] = a5;
  sub_27D1F0(v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);

  v22 = a4;

  v23 = a5;
  sub_278490(a3, v22, v23, v25[0], v28, v20, v18, v27);
}

uint64_t sub_29D840(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8)
{
  v94 = a8;
  v92 = a7;
  v106 = a6;
  v107 = a5;
  v102 = a3;
  v103 = a4;
  v10 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v10 - 8);
  v104 = &v91 - v11;
  v12 = sub_2CE000();
  v101 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v98 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v100 = &v91 - v15;
  v16 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v16 - 8);
  v93 = &v91 - v17;
  v18 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v19 = __chkstk_darwin(v18 - 8);
  v97 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v95 = &v91 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = __chkstk_darwin(v22 - 8);
  v96 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v91 - v25;
  v27 = sub_2CCB30();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2CCAC0();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a1;
  sub_F3F4(a1, v110, qword_34C798, &qword_2D0DA0);
  if (v111)
  {
    v93 = v31;
    v94 = v27;
    v95 = a2;
    v35 = v110[0];
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v36 = sub_3ED0(v12, static Logger.default);
    swift_beginAccess();
    v37 = v100;
    v38 = v101;
    (*(v101 + 16))(v100, v36, v12);
    swift_errorRetain();
    v39 = sub_2CDFE0();
    v40 = v12;
    v41 = sub_2CE680();

    v42 = os_log_type_enabled(v39, v41);
    v98 = v35;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v99 = v40;
      v44 = v43;
      v92 = swift_slowAlloc();
      v109 = v92;
      *v44 = 136446466;
      v108 = v35;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v45 = sub_2CE2A0();
      v47 = v38;
      v48 = sub_3F08(v45, v46, &v109);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v49 = sub_2CCCA0();
      v51 = sub_3F08(v49, v50, &v109);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_0, v39, v41, "HandleIntentStrategy#failureIntentOutputWithRF failed with error: %{public}s, Insights:%{public}s", v44, 0x16u);
      swift_arrayDestroy();

      (*(v47 + 8))(v100, v99);
    }

    else
    {

      (*(v38 + 8))(v37, v40);
    }

    v61 = v94;
    v62 = v93;
    (*(v32 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v93);
    (*(v28 + 104))(v30, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v61);
    swift_getErrorValue();
    sub_2CEEF0();
    v101 = sub_2CCAE0();

    (*(v28 + 8))(v30, v61);
    (*(v32 + 8))(v34, v62);
    sub_35E0(&v95[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider], *&v95[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider + 24]);
    v63 = enum case for ActivityType.failed(_:);
    v64 = sub_2C9C20();
    v65 = *(v64 - 8);
    v66 = v96;
    (*(v65 + 104))(v96, v63, v64);
    (*(v65 + 56))(v66, 0, 1, v64);
    v67 = sub_2CA130();
    v68 = v97;
    (*(*(v67 - 8) + 56))(v97, 1, 1, v67);
    v69 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v70 = sub_2C98F0();
    v71 = *(v70 - 8);
    v72 = v104;
    (*(v71 + 104))(v104, v69, v70);
    (*(v71 + 56))(v72, 0, 1, v70);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v72, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v68, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v66, &qword_34CB88, &unk_2D0D90);
    v107(v105);
  }

  else
  {
    v99 = v12;
    sub_30B8(v110, qword_34C798, &qword_2D0DA0);
    (*(v32 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.pmhis(_:), v31);
    (*(v28 + 104))(v30, enum case for AdditionalMetricsDescription.SourceFunction.failHandleResp(_:), v27);
    v110[0] = [v92 code];
    sub_2CEE70();
    v100 = sub_2CCAE0();

    (*(v28 + 8))(v30, v27);
    (*(v32 + 8))(v34, v31);
    sub_EEAC(&a2[OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider], v110);
    sub_35E0(v110, v110[3]);
    v52 = enum case for ActivityType.failed(_:);
    v53 = sub_2C9C20();
    v54 = *(v53 - 8);
    (*(v54 + 104))(v26, v52, v53);
    (*(v54 + 56))(v26, 0, 1, v53);
    v55 = type metadata accessor for ResponseFactoryOutputContext(0);
    v56 = v93;
    sub_F3F4(v94 + *(v55 + 28), v93, &qword_34C820, &unk_2D0A30);
    v57 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    v58 = v26;
    if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
    {
      sub_30B8(v56, &qword_34C820, &unk_2D0A30);
      v59 = sub_2CA130();
      v60 = v95;
      (*(*(v59 - 8) + 56))(v95, 1, 1, v59);
    }

    else
    {

      v74 = sub_2CA130();
      v75 = *(v74 - 8);
      v60 = v95;
      (*(v75 + 32))(v95, v56, v74);
      (*(v75 + 56))(v60, 0, 1, v74);
    }

    v76 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
    v77 = sub_2C98F0();
    v78 = *(v77 - 8);
    v79 = v104;
    (*(v78 + 104))(v104, v76, v77);
    (*(v78 + 56))(v79, 0, 1, v77);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v79, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v60, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v58, &qword_34CB88, &unk_2D0D90);
    sub_306C(v110);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v80 = v99;
    v81 = sub_3ED0(v99, static Logger.default);
    swift_beginAccess();
    v82 = v101;
    v83 = v98;
    (*(v101 + 16))(v98, v81, v80);
    v84 = sub_2CDFE0();
    v85 = sub_2CE670();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v109 = v87;
      *v86 = 136446210;
      v88 = sub_2CCCA0();
      v90 = sub_3F08(v88, v89, &v109);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_0, v84, v85, "HandleIntentStrategy#failureIntentOutputWithRF completed successfully. Insights:%{public}s", v86, 0xCu);
      sub_306C(v87);
    }

    (*(v82 + 8))(v83, v80);
    return (v107)(v105);
  }
}

uint64_t sub_29E6E4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v47 = a4;
  v48 = a5;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_2CDFE0();
  v16 = sub_2CE670();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v45[1] = v6;
    v20 = v19;
    v49 = v19;
    *v18 = 136446210;
    v21 = sub_2CCCA0();
    v45[0] = v10;
    v23 = a2;
    v24 = a3;
    v25 = sub_3F08(v21, v22, &v49);

    *(v18 + 4) = v25;
    a3 = v24;
    a2 = v23;
    _os_log_impl(&dword_0, v15, v16, "HandleIntentStrategy#failureIntentOutputContext failureIntentOutputContext...  Insights:%{public}s", v18, 0xCu);
    sub_306C(v20);

    a1 = v46;

    (*(v11 + 8))(v13, v45[0]);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v26 = type metadata accessor for ResponseFactoryOutputContext(0);
  v27 = swift_allocBox();
  v29 = v28;
  *v28 = 0;
  v30 = v26[5];
  v31 = type metadata accessor for SnippetModelResponse(0);
  (*(*(v31 - 8) + 56))(&v29[v30], 1, 1, v31);
  *&v29[v26[6]] = 0;
  v32 = v26[7];
  v33 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  (*(*(v33 - 8) + 56))(&v29[v32], 1, 1, v33);
  v34 = v26[8];
  v35 = sub_2CA000();
  (*(*(v35 - 8) + 56))(&v29[v34], 1, 1, v35);
  *&v29[v26[9]] = 0;
  v29[v26[10]] = 0;
  v36 = v26[11];
  v37 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  (*(*(v37 - 8) + 56))(&v29[v36], 1, 1, v37);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x457363697274654DLL;
  v39 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xEC000000726F7272;
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x80000000002E0F30;
  v40 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(v39, &qword_34CBA0, &unk_2D0FE0);
  v41 = swift_allocObject();
  v42 = v47;
  v43 = v48;
  v41[2] = v27;
  v41[3] = v42;
  v41[4] = v43;

  sub_19636C(v40, a1, a2, a3, sub_2A0004, v41);
}

uint64_t sub_29EBB0(uint64_t a1, char *a2, void (*a3)(char *), uint64_t a4)
{
  v39 = a4;
  v40 = a3;
  v6 = type metadata accessor for ResponseFactoryOutputContext(0);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v15);
  v17 = (&v35 - v16);
  v36 = a2;
  v18 = swift_projectBox();
  sub_F3F4(a1, v17, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v17;
    swift_beginAccess();
    *(v18 + *(v6 + 24)) = v19;
  }

  else
  {
    sub_14A58(v17, v14, &qword_34C6E8, &unk_2D0FF0);
    v20 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
    swift_beginAccess();
    sub_FECE8(v14, v18 + *(v6 + 28), &qword_34C820, &unk_2D0A30);
  }

  v21 = v37;
  v22 = v38;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v23 = sub_3ED0(v22, static Logger.default);
  swift_beginAccess();
  (*(v21 + 16))(v11, v23, v22);

  v24 = sub_2CDFE0();
  v25 = sub_2CE670();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v36 = v11;
    v27 = v26;
    v41[0] = swift_slowAlloc();
    *v27 = 136315394;
    swift_beginAccess();
    sub_27D16C(v18, v8);
    v28 = sub_2CE2A0();
    v30 = sub_3F08(v28, v29, v41);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    v31 = sub_2CCCA0();
    v33 = sub_3F08(v31, v32, v41);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_0, v24, v25, "HandleIntentStrategy#failureIntentOutputContext outputContext: %s Insights:%{public}s", v27, 0x16u);
    swift_arrayDestroy();

    (*(v21 + 8))(v36, v22);
  }

  else
  {

    (*(v21 + 8))(v11, v22);
  }

  swift_beginAccess();
  sub_27D16C(v18, v8);
  v40(v8);
  return sub_29F908(v8);
}

uint64_t PlayMedia.HandleIntentStrategy.deinit()
{

  sub_306C((v0 + 24));
  sub_30B8(v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_appSelectionReport, &qword_34DD30, &unk_2D1BC0);
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_snippetModelProvider));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_responseFactory));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_appIntentInvoker));

  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_deviceProvider));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_mediaRemoteAPIProvider));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_executorProvider));
  sub_306C((v0 + OBJC_IVAR____TtCO23AudioFlowDelegatePlugin9PlayMedia20HandleIntentStrategy_playbackController));
  return v0;
}

uint64_t PlayMedia.HandleIntentStrategy.__deallocating_deinit()
{
  PlayMedia.HandleIntentStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_29F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PlayMedia.HandleIntentStrategy(0);

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_29F250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PlayMedia.HandleIntentStrategy(0);

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_29F318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PlayMedia.HandleIntentStrategy(0);

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_29F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PlayMedia.HandleIntentStrategy(0);

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_29F43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PlayMedia.HandleIntentStrategy(0);

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_29F48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PlayMedia.HandleIntentStrategy(0);

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_29F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PlayMedia.HandleIntentStrategy(0);

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_29F55C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29F598(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(&v9);
}

uint64_t type metadata accessor for PlayMedia.HandleIntentStrategy(uint64_t a1)
{
  result = qword_356910;
  if (!qword_356910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29F77C(uint64_t a1)
{
  sub_29F840(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_29F840(uint64_t a1)
{
  if (!qword_356920)
  {
    sub_2CBF80();
    v1 = sub_2CEB90();
    if (!v2)
    {
      atomic_store(v1, &qword_356920);
    }
  }
}

uint64_t sub_29F908(uint64_t a1)
{
  v2 = type metadata accessor for ResponseFactoryOutputContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29F98C()
{
  v1 = type metadata accessor for ResponseFactoryOutputContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  v7 = type metadata accessor for SnippetModelResponse(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v24 = v4;
    v25 = (v2 + 56) & ~v2;
    v8 = sub_2CD230();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v6, 1, v8))
    {
      (*(v9 + 8))(v6, v8);
    }

    v11 = *(v7 + 20);
    if (!v10(v6 + v11, 1, v8))
    {
      (*(v9 + 8))(v6 + v11, v8);
    }

    v3 = v25;
    v4 = v24;
  }

  v12 = v5 + v1[7];
  v13 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = sub_2CA130();
    (*(*(v14 - 8) + 8))(v12, v14);
  }

  v15 = v1[8];
  v16 = sub_2CA000();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = (v5 + v1[11]);
  v19 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    if (*(v18 + 3))
    {
      sub_306C(v18);
    }

    v20 = *(v19 + 20);
    v21 = sub_2CD140();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(&v18[v20], 1, v21))
    {
      (*(v22 + 8))(&v18[v20], v21);
    }
  }

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_29FDD8(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseFactoryOutputContext(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_298E10(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_29FE54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E664;

  return sub_295E7C(a1, v5, v4);
}

double sub_29FF08(uint64_t a1)
{
  v3 = *(sub_20410(&qword_356A78, &unk_2D8EF0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_296280(a1, v4, v5);
}

uint64_t sub_29FF88(uint64_t a1)
{
  v3 = *(sub_20410(&qword_356A78, &unk_2D8EF0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_296680(a1, v4);
}

uint64_t sub_2A007C()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_2A011C()
{
  v1 = type metadata accessor for ResponseFactoryOutputContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  v7 = type metadata accessor for SnippetModelResponse(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v24 = v4;
    v25 = (v2 + 64) & ~v2;
    v8 = sub_2CD230();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v6, 1, v8))
    {
      (*(v9 + 8))(v6, v8);
    }

    v11 = *(v7 + 20);
    if (!v10(v6 + v11, 1, v8))
    {
      (*(v9 + 8))(v6 + v11, v8);
    }

    v3 = v25;
    v4 = v24;
  }

  v12 = v5 + v1[7];
  v13 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = sub_2CA130();
    (*(*(v14 - 8) + 8))(v12, v14);
  }

  v15 = v1[8];
  v16 = sub_2CA000();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = (v5 + v1[11]);
  v19 = type metadata accessor for ResponseFactoryOutputContext.AppIntentOutputContext(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    if (*(v18 + 3))
    {
      sub_306C(v18);
    }

    v20 = *(v19 + 20);
    v21 = sub_2CD140();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(&v18[v20], 1, v21))
    {
      (*(v22 + 8))(&v18[v20], v21);
    }
  }

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_2A05D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(type metadata accessor for ResponseFactoryOutputContext(0) - 8);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2A067C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_2A06C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2A0740(uint64_t *a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_29F598(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_2A0804@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v74 = sub_2CA870();
  v72 = *(v74 - 8);
  v2 = __chkstk_darwin(v74);
  v71 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v70 = &v62 - v4;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v76 = v5;
  v77 = v6;
  v7 = __chkstk_darwin(v5);
  v80 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v62 - v9;
  v10 = sub_2C9900();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34D658, &qword_2D1530);
  __chkstk_darwin(v14 - 8);
  v16 = &v62 - v15;
  v17 = sub_20410(&qword_34D660, &qword_2D1538);
  __chkstk_darwin(v17 - 8);
  v19 = &v62 - v18;
  v20 = sub_2CAFE0();
  v79 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v78 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v62 - v23;
  v83 = sub_2CACD0();
  v84 = &protocol witness table for NonTerminalIntentNode;
  sub_F390(v82);
  sub_2CACC0();
  v25 = sub_2CAFB0();
  (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  v26 = sub_2CACE0();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  v27 = v24;
  sub_2CAFD0();
  (*(v11 + 104))(v13, enum case for SiriKitConfirmationState.unset(_:), v10);
  v83 = sub_2CCFE0();
  v84 = &protocol witness table for AppResolutionStateProvider;
  sub_F390(v82);
  sub_2CCFD0();
  sub_2CA860();
  swift_allocObject();
  v64 = v1;
  v67 = sub_2CA820();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = v76;
  v29 = sub_3ED0(v76, static Logger.default);
  swift_beginAccess();
  v30 = v75;
  v63 = *(v77 + 16);
  v63(v75, v29, v28);
  v31 = v79;
  v32 = *(v79 + 16);
  v68 = v27;
  v66 = v79 + 16;
  v65 = v32;
  v32(v78, v27, v20);
  v33 = sub_2CDFE0();
  v34 = sub_2CE670();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v20;
  v69 = v20;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v81 = v38;
    *v37 = 136315138;
    sub_2A9EB0(&qword_34D678, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
    v39 = v78;
    v40 = sub_2CEE70();
    v41 = v36;
    v43 = v42;
    v44 = *(v31 + 8);
    v44(v39, v41);
    v45 = sub_3F08(v40, v43, &v81);

    *(v37 + 4) = v45;
    _os_log_impl(&dword_0, v33, v34, "ConvertibleToServerConversionParse#toServerConversionParse nlIntent:%s", v37, 0xCu);
    sub_306C(v38);

    v46 = v76;

    v47 = *(v77 + 8);
    v47(v75, v46);
  }

  else
  {
    v46 = v28;

    v44 = *(v31 + 8);
    v44(v78, v20);
    v47 = *(v77 + 8);
    v47(v30, v28);
  }

  v63(v80, v29, v46);
  v48 = v64;
  v49 = sub_2CDFE0();
  v50 = sub_2CE670();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = v46;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    *(v52 + 4) = v48;
    *v53 = v48;
    v54 = v48;
    _os_log_impl(&dword_0, v49, v50, "ConvertibleToServerConversionParse#toServerConversionParse sirikitIntent:%@", v52, 0xCu);
    sub_30B8(v53, &unk_34FC00, &unk_2D0150);

    v46 = v51;
  }

  v47(v80, v46);
  v55 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
  v57 = v69;
  v56 = v70;
  v58 = v68;
  v65(v70, v68, v69);
  *&v56[v55] = v67;
  v59 = v72;
  v60 = v74;
  (*(v72 + 104))(v56, enum case for Parse.NLv3IntentPlusServerConversion(_:), v74);
  (*(v59 + 16))(v71, v56, v60);
  sub_2CA7A0();
  (*(v59 + 8))(v56, v60);
  return (v44)(v58, v57);
}

uint64_t sub_2A1120(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v11 = *sub_35E0(a6, a6[3]);

  return sub_2A8FE0(a1, a2, a3, a4, a5, v11);
}

char *sub_2A1194(char *a1)
{
  v178 = sub_2CA950();
  v172 = *(v178 - 8);
  __chkstk_darwin(v178);
  v175 = &v152 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_20410(&qword_356C30, &qword_2D8FE0);
  __chkstk_darwin(v176);
  v177 = &v152 - v3;
  v4 = sub_20410(&qword_356C38, &qword_2D8FE8);
  v5 = __chkstk_darwin(v4 - 8);
  v185 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v152 - v8;
  __chkstk_darwin(v7);
  v11 = &v152 - v10;
  v187 = sub_2CA8F0();
  v171 = *(v187 - 8);
  __chkstk_darwin(v187);
  v189 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CA7B0();
  v197 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_2CA870();
  v202 = *(v200 - 8);
  v16 = __chkstk_darwin(v200);
  v179 = &v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v180 = (&v152 - v19);
  v20 = __chkstk_darwin(v18);
  v191 = &v152 - v21;
  v22 = __chkstk_darwin(v20);
  v183 = (&v152 - v23);
  __chkstk_darwin(v22);
  v25 = &v152 - v24;
  v26 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v26 - 8);
  v192 = &v152 - v27;
  v28 = sub_2CE000();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v181 = &v152 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v174 = &v152 - v33;
  v34 = __chkstk_darwin(v32);
  v173 = &v152 - v35;
  v36 = __chkstk_darwin(v34);
  v170 = &v152 - v37;
  v38 = __chkstk_darwin(v36);
  v169 = &v152 - v39;
  v40 = __chkstk_darwin(v38);
  v190 = &v152 - v41;
  v42 = __chkstk_darwin(v40);
  v44 = &v152 - v43;
  __chkstk_darwin(v42);
  v46 = &v152 - v45;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v182 = v15;
  v199 = a1;
  v186 = v11;
  v188 = v9;
  v47 = sub_3ED0(v28, static Logger.default);
  swift_beginAccess();
  v48 = *(v29 + 16);
  v195 = v47;
  v196 = v29 + 16;
  v201 = v28;
  v194 = v48;
  v48(v46, v47, v28);
  v49 = sub_2CDFE0();
  v50 = sub_2CE670();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_0, v49, v50, "PommesResponseFlow#onInput", v51, 2u);
  }

  v52 = *(v29 + 8);
  v53 = v29 + 8;
  v54 = v201;
  v55 = v53;
  v193 = v52;
  v52(v46, v201);
  v56 = v197;
  v57 = *(v197 + 16);
  v58 = v192;
  v57(v192, v199, v13);
  v59 = *(v56 + 56);
  v184 = v13;
  v167 = v56 + 56;
  v166 = v59;
  v59(v58, 0, 1, v13);
  v60 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_input;
  v61 = v198;
  swift_beginAccess();
  v168 = v60;
  sub_A4888(v58, v61 + v60);
  swift_endAccess();
  sub_2CA790();
  v62 = v202;
  v64 = v202 + 88;
  v63 = *(v202 + 88);
  v65 = v200;
  v66 = v63(v25, v200);
  if (v66 == enum case for Parse.pommesResponse(_:))
  {
    (*(v62 + 96))(v25, v65);
    v67 = *v25;
    v194(v44, v195, v54);
    v68 = sub_2CDFE0();
    v69 = sub_2CE670();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v69, "PommesResponseFlow#onInput found .pommesResponse in primary parse of input", v70, 2u);
    }

    v193(v44, v54);
    v71 = *(v198 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse);
    *(v198 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse) = v67;

    return (&dword_0 + 1);
  }

  if (v66 != enum case for Parse.uso(_:))
  {
    v92 = v181;
    v93 = v201;
    v194(v181, v195, v201);
    v94 = sub_2CDFE0();
    v95 = sub_2CE680();
    v96 = os_log_type_enabled(v94, v95);
    v97 = v202;
    if (v96)
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v94, v95, "PommesResponseFlow#onInput top parse is not .pommesResponse and .pommesResponse is not a top alternative for allowed .uso parse.", v98, 2u);
    }

    v193(v92, v93);
    (*(v97 + 8))(v25, v200);
    return 0;
  }

  v163 = v66;
  v165 = enum case for Parse.pommesResponse(_:);
  v181 = v25;
  v73 = v190;
  v194(v190, v195, v201);
  v74 = v182;
  v75 = v184;
  v57(v182, v199, v184);
  v76 = v73;
  v77 = sub_2CDFE0();
  v78 = sub_2CE690();
  v79 = os_log_type_enabled(v77, v78);
  v80 = v55;
  v81 = v202;
  v164 = v63;
  if (v79)
  {
    v82 = swift_slowAlloc();
    v160 = swift_slowAlloc();
    v203 = v160;
    *v82 = 136315138;
    v162 = v80;
    sub_2CA780();
    v83 = v200;
    v84 = sub_2CE420();
    v86 = v85;

    (*(v197 + 8))(v74, v75);
    v87 = sub_3F08(v84, v86, &v203);

    *(v82 + 4) = v87;
    _os_log_impl(&dword_0, v77, v78, "PommesResponseFlow#onInput found .uso parse in primary parse of input and alternatives: %s", v82, 0xCu);
    sub_306C(v160);

    v81 = v202;

    v88 = v201;
    v89 = v193;
    v90 = v162;
    v193(v190, v201);
    v91 = v191;
  }

  else
  {

    (*(v197 + 8))(v74, v75);
    v88 = v201;
    v89 = v193;
    v193(v76, v201);
    v83 = v200;
    v91 = v191;
    v90 = v80;
  }

  v99 = v183;
  sub_2CA790();
  v100 = sub_2CA7C0();
  v101 = *(v81 + 8);
  v197 = v81 + 8;
  v190 = v101;
  (v101)(v99, v83);
  if (!v100)
  {
    v128 = v174;
    v194(v174, v195, v88);
    v129 = sub_2CDFE0();
    v130 = sub_2CE680();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_0, v129, v130, "PommesResponseFlow#onInput failed to get uso task from parse", v131, 2u);
    }

    goto LABEL_40;
  }

  v182 = v100;
  if ((sub_2A9A20() & 1) == 0)
  {
    v128 = v173;
    v194(v173, v195, v88);
    v132 = sub_2CDFE0();
    v133 = sub_2CE680();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      v135 = "PommesResponseFlow#onInput received unhandleable task";
LABEL_38:
      _os_log_impl(&dword_0, v132, v133, v135, v134, 2u);
    }

LABEL_39:

LABEL_40:
    v89(v128, v88);
    (v190)(v181, v83);
    return 0;
  }

  v102 = *(sub_2CA780() + 16);

  if (!v102)
  {
    v128 = v170;
    v194(v170, v195, v88);
    v132 = sub_2CDFE0();
    v133 = sub_2CE680();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      v135 = "PommesResponseFlow#onInput received empty alternatives list, no .pommesResponse in alternatives";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v162 = v90;
  result = sub_2CA780();
  v103 = result;
  v104 = v189;
  v174 = *(result + 2);
  if (!v174)
  {
LABEL_42:

LABEL_44:
    (v190)(v181, v83);
    return (&dword_0 + 1);
  }

  v105 = 0;
  v173 = (v81 + 96);
  v160 = (v171 + 32);
  v159 = enum case for Siri_Nlu_External_Parser.ParserIdentifier.overrides(_:);
  v158 = (v172 + 13);
  v157 = (v172 + 7);
  v156 = (v172 + 6);
  v153 = (v172 + 4);
  v154 = (v172 + 1);
  v172 = (v171 + 8);
  v170 = result;
  v155 = v81 + 16;
  v161 = v64;
  while (1)
  {
    if (v105 >= *(v103 + 16))
    {
      __break(1u);
      return result;
    }

    v106 = v103 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v107 = *(v81 + 72);
    v199 = v105;
    v108 = v106 + v107 * v105;
    v109 = *(v81 + 16);
    v109(v91, v108, v83);
    v110 = v180;
    v109(v180, v91, v83);
    v111 = v83;
    v112 = v83;
    v113 = v164;
    v114 = v164(v110, v111);
    if (v114 == v165)
    {

      (*(v81 + 96))(v110, v112);
      v136 = *v110;
      v137 = v198;
      v138 = *(v198 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse);
      *(v198 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse) = *v110;
      v139 = v136;

      v140 = v183;
      *v183 = v139;
      (*(v81 + 104))(v140, v165, v112);
      v141 = v139;
      v142 = v192;
      sub_2CA7A0();

      (v190)(v91, v112);
      v166(v142, 0, 1, v184);
      v143 = v168;
      swift_beginAccess();
      sub_A4888(v142, v137 + v143);
      swift_endAccess();
      v83 = v112;
      goto LABEL_44;
    }

    (v190)(v110, v112);
    v115 = v179;
    v109(v179, v91, v112);
    v116 = v113(v115, v112);
    if (v116 != v163)
    {

      (v190)(v115, v112);
      v83 = v112;
      goto LABEL_49;
    }

    (*v173)(v115, v112);
    v117 = v187;
    (*v160)(v104, v115, v187);
    v118 = v186;
    sub_2CA8D0();
    v119 = v188;
    v120 = v178;
    (*v158)(v188, v159, v178);
    (*v157)(v119, 0, 1, v120);
    v121 = *(v176 + 48);
    v122 = v177;
    sub_F3F4(v118, v177, &qword_356C38, &qword_2D8FE8);
    sub_F3F4(v119, v122 + v121, &qword_356C38, &qword_2D8FE8);
    v123 = *v156;
    if ((*v156)(v122, 1, v120) != 1)
    {
      break;
    }

    sub_30B8(v119, &qword_356C38, &qword_2D8FE8);
    sub_30B8(v118, &qword_356C38, &qword_2D8FE8);
    (*v172)(v189, v117);
    if (v123(v122 + v121, 1, v120) != 1)
    {
      goto LABEL_47;
    }

    sub_30B8(v122, &qword_356C38, &qword_2D8FE8);
    v83 = v200;
    v104 = v189;
    v103 = v170;
LABEL_23:
    v105 = v199 + 1;
    v91 = v191;
    result = (v190)(v191, v83);
    v81 = v202;
    if (v174 == v105)
    {
      goto LABEL_42;
    }
  }

  v124 = v185;
  sub_F3F4(v122, v185, &qword_356C38, &qword_2D8FE8);
  if (v123(v122 + v121, 1, v120) != 1)
  {
    v125 = v175;
    (*v153)(v175, v122 + v121, v120);
    sub_2A9EB0(&qword_356C40, &type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier, &protocol conformance descriptor for Siri_Nlu_External_Parser.ParserIdentifier);
    v126 = sub_2CE250();
    v127 = *v154;
    (*v154)(v125, v120);
    sub_30B8(v188, &qword_356C38, &qword_2D8FE8);
    sub_30B8(v186, &qword_356C38, &qword_2D8FE8);
    v104 = v189;
    (*v172)(v189, v187);
    v127(v185, v120);
    sub_30B8(v122, &qword_356C38, &qword_2D8FE8);
    v83 = v200;
    v103 = v170;
    if ((v126 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_23;
  }

  sub_30B8(v188, &qword_356C38, &qword_2D8FE8);
  sub_30B8(v186, &qword_356C38, &qword_2D8FE8);
  (*v172)(v189, v187);
  (*v154)(v124, v120);
LABEL_47:
  sub_30B8(v122, &qword_356C30, &qword_2D8FE0);
  v83 = v200;
LABEL_48:

  v91 = v191;
LABEL_49:
  v144 = v169;
  v145 = v201;
  v194(v169, v195, v201);
  v146 = sub_2CDFE0();
  v147 = sub_2CE680();
  v148 = os_log_type_enabled(v146, v147);
  v149 = v193;
  if (v148)
  {
    v150 = swift_slowAlloc();
    *v150 = 0;
    _os_log_impl(&dword_0, v146, v147, "PommesResponseFlow#onInput .pommesResponse not found in alternatives before encountering a non-override parse", v150, 2u);
  }

  v149(v144, v145);
  v151 = v190;
  (v190)(v91, v83);
  v151(v181, v83);
  return 0;
}

uint64_t sub_2A27D4(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v569 = a2;
  v568 = a1;
  v515 = sub_2CD540();
  v525 = *(v515 - 8);
  __chkstk_darwin(v515);
  v500 = &v488 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v514 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  __chkstk_darwin(v514);
  v527 = &v488 - v5;
  v6 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v7 = __chkstk_darwin(v6 - 8);
  v507 = &v488 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v523 = &v488 - v10;
  __chkstk_darwin(v9);
  v524 = &v488 - v11;
  v545 = sub_2C9EC0();
  v544 = *(v545 - 8);
  __chkstk_darwin(v545);
  v543 = &v488 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v564 = sub_2CD4C0();
  v563 = *(v564 - 1);
  __chkstk_darwin(v564);
  v549 = &v488 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v557 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v14 = __chkstk_darwin(v557);
  v508 = &v488 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v513 = &v488 - v17;
  v18 = __chkstk_darwin(v16);
  v535 = &v488 - v19;
  v20 = __chkstk_darwin(v18);
  v521 = &v488 - v21;
  v22 = __chkstk_darwin(v20);
  v533 = &v488 - v23;
  v24 = __chkstk_darwin(v22);
  v546 = &v488 - v25;
  __chkstk_darwin(v24);
  v554 = &v488 - v26;
  v27 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v28 = __chkstk_darwin(v27 - 8);
  v501 = &v488 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v517 = &v488 - v31;
  v32 = __chkstk_darwin(v30);
  v511 = &v488 - v33;
  v34 = __chkstk_darwin(v32);
  v505 = &v488 - v35;
  v36 = __chkstk_darwin(v34);
  v518 = &v488 - v37;
  v38 = __chkstk_darwin(v36);
  v519 = &v488 - v39;
  v40 = __chkstk_darwin(v38);
  v520 = &v488 - v41;
  v42 = __chkstk_darwin(v40);
  v547 = &v488 - v43;
  v44 = __chkstk_darwin(v42);
  v534 = &v488 - v45;
  v46 = __chkstk_darwin(v44);
  v512 = &v488 - v47;
  v48 = __chkstk_darwin(v46);
  v530 = &v488 - v49;
  v50 = __chkstk_darwin(v48);
  v531 = &v488 - v51;
  v52 = __chkstk_darwin(v50);
  v516 = &v488 - v53;
  v54 = __chkstk_darwin(v52);
  v539 = &v488 - v55;
  v56 = __chkstk_darwin(v54);
  v540 = &v488 - v57;
  v58 = __chkstk_darwin(v56);
  v529 = &v488 - v59;
  v60 = __chkstk_darwin(v58);
  v542 = &v488 - v61;
  v62 = __chkstk_darwin(v60);
  v555 = &v488 - v63;
  v64 = __chkstk_darwin(v62);
  v551 = &v488 - v65;
  v66 = __chkstk_darwin(v64);
  v559 = &v488 - v67;
  __chkstk_darwin(v66);
  v560 = &v488 - v68;
  v69 = sub_20410(&qword_34CC90, qword_2D40E0);
  __chkstk_darwin(v69 - 8);
  v562 = &v488 - v70;
  v565 = sub_2CAA00();
  v567 = *(v565 - 8);
  v71 = __chkstk_darwin(v565);
  v553 = &v488 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v566 = &v488 - v73;
  v571 = sub_2CE000();
  v570 = *(v571 - 8);
  v74 = __chkstk_darwin(v571);
  v76 = &v488 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __chkstk_darwin(v74);
  v561 = &v488 - v78;
  v79 = __chkstk_darwin(v77);
  v556 = &v488 - v80;
  v81 = __chkstk_darwin(v79);
  v552 = &v488 - v82;
  v83 = __chkstk_darwin(v81);
  v499 = &v488 - v84;
  v85 = __chkstk_darwin(v83);
  v510 = &v488 - v86;
  v87 = __chkstk_darwin(v85);
  v506 = &v488 - v88;
  v89 = __chkstk_darwin(v87);
  v526 = &v488 - v90;
  v91 = __chkstk_darwin(v89);
  v522 = &v488 - v92;
  v93 = __chkstk_darwin(v91);
  v532 = &v488 - v94;
  v95 = __chkstk_darwin(v93);
  v504 = &v488 - v96;
  v97 = __chkstk_darwin(v95);
  v538 = &v488 - v98;
  v99 = __chkstk_darwin(v97);
  v548 = &v488 - v100;
  v101 = __chkstk_darwin(v99);
  v550 = &v488 - v102;
  v103 = __chkstk_darwin(v101);
  v558 = &v488 - v104;
  __chkstk_darwin(v103);
  v106 = &v488 - v105;
  v107 = sub_20410(&qword_34E480, &qword_2D2280);
  v108 = __chkstk_darwin(v107 - 8);
  v541 = (&v488 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v108);
  v111 = &v488 - v110;
  v112 = sub_2CA7B0();
  v113 = *(v112 - 8);
  v114 = __chkstk_darwin(v112);
  v502 = &v488 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __chkstk_darwin(v114);
  v509 = &v488 - v117;
  v118 = __chkstk_darwin(v116);
  v537 = &v488 - v119;
  v120 = __chkstk_darwin(v118);
  v536 = &v488 - v121;
  __chkstk_darwin(v120);
  v123 = &v488 - v122;
  v124 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_input;
  swift_beginAccess();
  v503 = v124;
  sub_F3F4(v3 + v124, v111, &qword_34E480, &qword_2D2280);
  if ((*(v113 + 48))(v111, 1, v112) == 1)
  {
    v125 = v3;
    sub_30B8(v111, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v126 = v571;
    v127 = sub_3ED0(v571, static Logger.default);
    swift_beginAccess();
    v128 = v570;
    (*(v570 + 16))(v76, v127, v126);
    v129 = sub_2CDFE0();
    v130 = sub_2CE680();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&dword_0, v129, v130, "PommesResponseFlow#execute error unpacking input", v131, 2u);
    }

    (*(v128 + 8))(v76, v126);
    v132 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
    sub_2CCFB0();
    v133 = sub_2CCF80();
    v134 = swift_allocObject();
    v135 = v569;
    *(v134 + 16) = v568;
    *(v134 + 24) = v135;
    v136 = sub_2CB4A0();

    v137 = sub_2CB490();
    v575 = v136;
    v576 = &protocol witness table for SiriKitTaskLoggingProvider;
    v574 = v137;
    sub_20410(&unk_353120, &unk_2D0B50);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_2D0090;
    sub_2CC230();
    *(v138 + 32) = sub_2CC200();
    *(v138 + 72) = &type metadata for String;
    *(v138 + 40) = v139;
    *(v138 + 48) = 0xD00000000000001FLL;
    *(v138 + 56) = 0x80000000002DBA80;
    v140 = sub_112C0(v138);
    swift_setDeallocating();
    sub_30B8(v138 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_EEAC(&v574, &v573);
    sub_EEAC(v125 + v132, &v572);
    v141 = swift_allocObject();
    v141[2] = 0xD000000000000013;
    v141[3] = 0x80000000002E0FE0;
    sub_F338(&v573, (v141 + 4));
    v141[9] = v133;
    sub_F338(&v572, (v141 + 10));
    v141[15] = sub_2A9EFC;
    v141[16] = v134;

    sub_3D150(v140, v133, sub_2A9EF8, v141);

    return sub_306C(&v574);
  }

  v142 = *(v113 + 32);
  v498 = v123;
  v142(v123, v111, v112);
  v143 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_pommesResponse);
  v528 = v113;
  v144 = v3;
  if (!v143)
  {
    v189 = v571;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v190 = sub_3ED0(v189, static Logger.default);
    swift_beginAccess();
    v191 = v570;
    v192 = v561;
    (*(v570 + 16))(v561, v190, v189);
    v193 = sub_2CDFE0();
    v194 = sub_2CE680();
    v195 = os_log_type_enabled(v193, v194);
    v196 = v498;
    if (v195)
    {
      v197 = swift_slowAlloc();
      *v197 = 0;
      _os_log_impl(&dword_0, v193, v194, "PommesResponseFlow#execute pommesResponse is nil", v197, 2u);
    }

    (*(v191 + 8))(v192, v189);
    v198 = v144;
    v199 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
    sub_2CCFB0();
    v200 = sub_2CCF80();
    v201 = swift_allocObject();
    v202 = v569;
    *(v201 + 16) = v568;
    *(v201 + 24) = v202;
    v203 = sub_2CB4A0();

    v204 = sub_2CB490();
    v575 = v203;
    v576 = &protocol witness table for SiriKitTaskLoggingProvider;
    v574 = v204;
    sub_20410(&unk_353120, &unk_2D0B50);
    v205 = swift_allocObject();
    *(v205 + 16) = xmmword_2D0090;
    sub_2CC230();
    *(v205 + 32) = sub_2CC200();
    *(v205 + 72) = &type metadata for String;
    *(v205 + 40) = v206;
    *(v205 + 48) = 0xD00000000000001FLL;
    *(v205 + 56) = 0x80000000002DBA80;
    v207 = sub_112C0(v205);
    swift_setDeallocating();
    sub_30B8(v205 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_EEAC(&v574, &v573);
    sub_EEAC(v198 + v199, &v572);
    v208 = swift_allocObject();
    v208[2] = 0x6F707365526C694ELL;
    v208[3] = 0xEB0000000065736ELL;
    sub_F338(&v573, (v208 + 4));
    v208[9] = v200;
    sub_F338(&v572, (v208 + 10));
    v208[15] = sub_2A9EFC;
    v208[16] = v201;

    sub_3D150(v207, v200, sub_2A9EF8, v208);

    (*(v528 + 8))(v196, v112);
    return sub_306C(&v574);
  }

  v145 = v143;
  v146 = sub_1B7F14();
  v147 = v571;
  if (!v146)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v209 = sub_3ED0(v147, static Logger.default);
    swift_beginAccess();
    v210 = v570;
    v211 = v556;
    (*(v570 + 16))(v556, v209, v147);
    v212 = v145;
    v213 = sub_2CDFE0();
    v214 = sub_2CE680();

    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v495 = v144;
      v217 = v216;
      v574 = v216;
      *v215 = 136315138;
      sub_2CDAD0();
      sub_2CDA50();
      v218 = sub_2CE420();
      v219 = v212;
      v220 = v210;
      v222 = v221;

      v223 = sub_3F08(v218, v222, &v574);

      *(v215 + 4) = v223;
      _os_log_impl(&dword_0, v213, v214, "PommesResponseFlow#execute pommesResponse doesn't contain audioExperience %s", v215, 0xCu);
      sub_306C(v217);
      v144 = v495;

      (*(v220 + 8))(v556, v571);
      v212 = v219;
    }

    else
    {

      (*(v210 + 8))(v211, v147);
    }

    v260 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
    sub_2CCFB0();
    v261 = sub_2CCF80();
    v262 = swift_allocObject();
    v263 = v569;
    *(v262 + 16) = v568;
    *(v262 + 24) = v263;
    v264 = sub_2CB4A0();

    v265 = sub_2CB490();
    v575 = v264;
    v576 = &protocol witness table for SiriKitTaskLoggingProvider;
    v574 = v265;
    sub_20410(&unk_353120, &unk_2D0B50);
    v266 = v144;
    v267 = swift_allocObject();
    *(v267 + 16) = xmmword_2D0090;
    sub_2CC230();
    *(v267 + 32) = sub_2CC200();
    *(v267 + 72) = &type metadata for String;
    *(v267 + 40) = v268;
    *(v267 + 48) = 0xD00000000000001FLL;
    *(v267 + 56) = 0x80000000002DBA80;
    v269 = sub_112C0(v267);
    swift_setDeallocating();
    sub_30B8(v267 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_EEAC(&v574, &v573);
    sub_EEAC(v266 + v260, &v572);
    v270 = swift_allocObject();
    v270[2] = 1161916238;
    v270[3] = 0xE400000000000000;
    sub_F338(&v573, (v270 + 4));
    v270[9] = v261;
    sub_F338(&v572, (v270 + 10));
    v270[15] = sub_2A9EFC;
    v270[16] = v262;

    sub_3D150(v269, v261, sub_2A9EF8, v270);

LABEL_41:
    (*(v528 + 8))(v498, v112);
    return sub_306C(&v574);
  }

  v148 = v146;
  v493 = v145;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v496 = v112;
  v149 = sub_3ED0(v147, static Logger.default);
  swift_beginAccess();
  v150 = v570;
  v152 = v570 + 16;
  v151 = *(v570 + 16);
  v497 = v149;
  v556 = v151;
  (v151)(v106, v149, v147);
  v153 = sub_2CDFE0();
  v154 = sub_2CE670();
  v155 = os_log_type_enabled(v153, v154);
  v156 = v565;
  v157 = v566;
  if (v155)
  {
    v158 = swift_slowAlloc();
    *v158 = 0;
    _os_log_impl(&dword_0, v153, v154, "PommesResponseFlow#execute", v158, 2u);
  }

  v160 = *(v150 + 8);
  v159 = v150 + 8;
  v561 = v160;
  (v160)(v106, v571);
  v161 = v148;
  sub_2CDA40();
  v494 = v161;

  v162 = sub_2CD700();
  v163 = v567;
  v164 = *(v567 + 16);
  v165 = v562;
  v164(v562, v157, v156);
  (*(v163 + 56))(v165, 0, 1, v156);
  v492 = v162;
  v166 = sub_2CD600();
  if (!v166)
  {
    v224 = v552;
    v225 = v571;
    (v556)(v552, v497, v571);
    v226 = sub_2CDFE0();
    v227 = sub_2CE680();
    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      *v228 = 0;
      _os_log_impl(&dword_0, v226, v227, "PommesResponseFlow#execute AudioUsoIntent failed to be constructed", v228, 2u);
    }

    (v561)(v224, v225);
    v229 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
    sub_2CCFB0();
    v230 = sub_2CCF80();
    v231 = swift_allocObject();
    v232 = v569;
    *(v231 + 16) = v568;
    *(v231 + 24) = v232;
    v233 = sub_2CB4A0();

    v234 = sub_2CB490();
    v575 = v233;
    v576 = &protocol witness table for SiriKitTaskLoggingProvider;
    v574 = v234;
    sub_20410(&unk_353120, &unk_2D0B50);
    v235 = swift_allocObject();
    *(v235 + 16) = xmmword_2D0090;
    sub_2CC230();
    *(v235 + 32) = sub_2CC200();
    *(v235 + 72) = &type metadata for String;
    *(v235 + 40) = v236;
    *(v235 + 48) = 0xD00000000000001FLL;
    *(v235 + 56) = 0x80000000002DBA80;
    v237 = sub_112C0(v235);
    swift_setDeallocating();
    sub_30B8(v235 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_EEAC(&v574, &v573);
    sub_EEAC(v144 + v229, &v572);
    v238 = swift_allocObject();
    v238[2] = 0xD000000000000012;
    v238[3] = 0x80000000002E1000;
    sub_F338(&v573, (v238 + 4));
    v238[9] = v230;
    sub_F338(&v572, (v238 + 10));
    v238[15] = sub_2A9EFC;
    v238[16] = v231;

    sub_3D150(v237, v230, sub_2A9EF8, v238);

    (*(v567 + 8))(v566, v565);
LABEL_28:
    (*(v528 + 8))(v498, v496);
    return sub_306C(&v574);
  }

  v167 = v166;
  v495 = v144;
  v168 = v558;
  v491 = v152;
  (v556)(v558, v497, v571);
  v169 = v553;
  v164(v553, v157, v156);
  v170 = v493;
  v171 = sub_2CDFE0();
  v172 = sub_2CE670();

  v173 = os_log_type_enabled(v171, v172);
  v562 = v167;
  v570 = v159;
  v552 = v170;
  if (v173)
  {
    v174 = swift_slowAlloc();
    v493 = swift_slowAlloc();
    *&v573 = v493;
    *v174 = 136315394;
    v175 = v170;
    v490 = v171;
    v176 = v175;
    v177 = [v175 description];
    v178 = sub_2CE270();
    LODWORD(v489) = v172;
    v179 = v178;
    v181 = v180;

    v182 = sub_3F08(v179, v181, &v573);

    *(v174 + 4) = v182;
    *(v174 + 12) = 2080;
    sub_2CAA60();
    v575 = v156;
    v576 = sub_2A9EB0(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
    v183 = sub_F390(&v574);
    v164(v183, v169, v156);
    v184 = sub_2CAA50();
    v186 = v185;
    v553 = *(v567 + 8);
    (v553)(v169, v156);
    sub_306C(&v574);
    v187 = sub_3F08(v184, v186, &v573);

    *(v174 + 14) = v187;
    v188 = v490;
    _os_log_impl(&dword_0, v490, v489, "PommesResponseFlow#execute pommesResponse: %s userDialogAct: %s", v174, 0x16u);
    swift_arrayDestroy();

    (v561)(v558, v571);
  }

  else
  {

    v553 = *(v567 + 8);
    (v553)(v169, v156);
    (v561)(v168, v571);
  }

  v239 = v555;
  v240 = v560;
  sub_2CD6C0();
  v241 = v563;
  v242 = v559;
  v243 = v564;
  v490 = *(v563 + 104);
  v489 = v563 + 104;
  (v490)(v559, enum case for CommonAudio.Verb.resume(_:), v564);
  v244 = *(v241 + 56);
  v488 = v241 + 56;
  v493 = v244;
  (v244)(v242, 0, 1, v243);
  v245 = *(v557 + 48);
  v246 = v554;
  sub_F3F4(v240, v554, &qword_34D6B8, &qword_2D15B0);
  v247 = v243;
  sub_F3F4(v242, v246 + v245, &qword_34D6B8, &qword_2D15B0);
  v248 = (v241 + 48);
  v249 = *(v241 + 48);
  v558 = v248;
  v250 = v249(v246, 1, v243);
  v251 = v496;
  if (v250 == 1)
  {
    sub_30B8(v242, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v240, &qword_34D6B8, &qword_2D15B0);
    if (v249(v246 + v245, 1, v564) == 1)
    {
      sub_30B8(v246, &qword_34D6B8, &qword_2D15B0);
      v112 = v251;
      goto LABEL_48;
    }

    goto LABEL_35;
  }

  v252 = v551;
  sub_F3F4(v246, v551, &qword_34D6B8, &qword_2D15B0);
  if (v249(v246 + v245, 1, v247) == 1)
  {
    sub_30B8(v559, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v560, &qword_34D6B8, &qword_2D15B0);
    (*(v563 + 8))(v252, v564);
LABEL_35:
    sub_30B8(v246, &qword_34D6B0, &unk_2D4FC0);
    v253 = v562;
    v112 = v251;
    goto LABEL_36;
  }

  v281 = v563;
  v282 = v246 + v245;
  v283 = v549;
  (*(v563 + 32))(v549, v282, v247);
  sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v284 = v247;
  v285 = sub_2CE250();
  v286 = *(v281 + 8);
  v286(v283, v284);
  sub_30B8(v559, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v560, &qword_34D6B8, &qword_2D15B0);
  v286(v252, v284);
  v239 = v555;
  v112 = v496;
  sub_30B8(v246, &qword_34D6B8, &qword_2D15B0);
  v253 = v562;
  if (v285)
  {
LABEL_48:
    v254 = v550;
    v255 = v571;
    (v556)(v550, v497, v571);
    v256 = sub_2CDFE0();
    v257 = sub_2CE670();
    if (os_log_type_enabled(v256, v257))
    {
      v258 = swift_slowAlloc();
      *v258 = 0;
      v259 = "PommesResponseFlow#execute un-ambiguous resume. Completing and calling SiriPlaybackControls makeFlow";
      goto LABEL_50;
    }

    goto LABEL_51;
  }

LABEL_36:
  v574 = v253;
  if (sub_2CD970())
  {
    v254 = v548;
    v255 = v571;
    (v556)(v548, v497, v571);
    v256 = sub_2CDFE0();
    v257 = sub_2CE690();
    if (os_log_type_enabled(v256, v257))
    {
      v258 = swift_slowAlloc();
      *v258 = 0;
      v259 = "PommesResponseFlow#execute Referenced play request: This is an AddSpeaker request and should be handled in controls";
LABEL_50:
      _os_log_impl(&dword_0, v256, v257, v259, v258, 2u);
    }

LABEL_51:

    (v561)(v254, v255);
    v287 = v498;
    v288 = v498;
    v289 = v568;
    v290 = v569;
LABEL_52:
    sub_2A788C(v288, v289, v290);

    (v553)(v566, v565);
    return (*(v528 + 8))(v287, v112);
  }

  v574 = v253;
  if (sub_2CD940())
  {
    v272 = v538;
    v273 = v571;
    (v556)(v538, v497, v571);
    v274 = sub_2CDFE0();
    v275 = sub_2CE670();
    if (os_log_type_enabled(v274, v275))
    {
      v276 = swift_slowAlloc();
      *v276 = 0;
      _os_log_impl(&dword_0, v274, v275, "PommesResponseFlow#execute forwarding to first audio play flow", v276, 2u);
    }

    (v561)(v272, v273);
    v277 = v528;
    v278 = v541;
    v279 = v498;
    (*(v528 + 16))(v541, v498, v112);
    (*(v277 + 56))(v278, 0, 1, v112);
    sub_1362C8(v278);
    sub_30B8(v278, &qword_34E480, &qword_2D2280);
    v280 = v543;
    sub_2C9EA0();

    v568(v280);

    (*(v544 + 8))(v280, v545);
    (v553)(v566, v565);
    return (*(v277 + 8))(v279, v112);
  }

  sub_2CD6C0();
  v291 = v542;
  v292 = v564;
  (v490)(v542, enum case for CommonAudio.Verb.subscribe(_:), v564);
  (v493)(v291, 0, 1, v292);
  v293 = *(v557 + 48);
  v294 = v239;
  v295 = v546;
  sub_F3F4(v294, v546, &qword_34D6B8, &qword_2D15B0);
  v296 = v295;
  sub_F3F4(v291, v295 + v293, &qword_34D6B8, &qword_2D15B0);
  if (v249(v295, 1, v292) == 1)
  {
    sub_30B8(v291, &qword_34D6B8, &qword_2D15B0);
    v297 = v546;
    sub_30B8(v555, &qword_34D6B8, &qword_2D15B0);
    v298 = v249(v297 + v293, 1, v292);
    v299 = v547;
    if (v298 == 1)
    {
      goto LABEL_63;
    }

    goto LABEL_58;
  }

  v300 = v529;
  sub_F3F4(v295, v529, &qword_34D6B8, &qword_2D15B0);
  if (v249(v295 + v293, 1, v292) == 1)
  {
    sub_30B8(v542, &qword_34D6B8, &qword_2D15B0);
    v297 = v546;
    sub_30B8(v555, &qword_34D6B8, &qword_2D15B0);
    (*(v563 + 8))(v300, v292);
LABEL_58:
    sub_30B8(v297, &qword_34D6B0, &unk_2D4FC0);
    v301 = v540;
    v302 = v539;
    goto LABEL_59;
  }

  v330 = v563;
  v331 = v296 + v293;
  v332 = v549;
  (*(v563 + 32))(v549, v331, v292);
  sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  LODWORD(v560) = sub_2CE250();
  v333 = *(v330 + 8);
  v333(v332, v292);
  sub_30B8(v542, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v555, &qword_34D6B8, &qword_2D15B0);
  v333(v300, v292);
  sub_30B8(v296, &qword_34D6B8, &qword_2D15B0);
  v299 = v547;
  v301 = v540;
  v302 = v539;
  if (v560)
  {
    goto LABEL_64;
  }

LABEL_59:
  sub_2CD6C0();
  v303 = v301;
  v304 = v302;
  v305 = v564;
  (v490)(v302, enum case for CommonAudio.Verb.update(_:), v564);
  (v493)(v302, 0, 1, v305);
  v306 = *(v557 + 48);
  v307 = v303;
  v308 = v303;
  v309 = v533;
  sub_F3F4(v308, v533, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v304, v309 + v306, &qword_34D6B8, &qword_2D15B0);
  if (v249(v309, 1, v305) == 1)
  {
    sub_30B8(v304, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v307, &qword_34D6B8, &qword_2D15B0);
    v310 = v249(v309 + v306, 1, v305) == 1;
    v311 = v309;
    v299 = v547;
    if (v310)
    {
      v297 = v311;
LABEL_63:
      sub_30B8(v297, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_64;
    }
  }

  else
  {
    v323 = v516;
    sub_F3F4(v309, v516, &qword_34D6B8, &qword_2D15B0);
    if (v249(v309 + v306, 1, v305) != 1)
    {
      v359 = v563;
      v360 = v309 + v306;
      v361 = v549;
      (*(v563 + 32))(v549, v360, v305);
      sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
      LODWORD(v560) = sub_2CE250();
      v362 = *(v359 + 8);
      v362(v361, v305);
      sub_30B8(v539, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v540, &qword_34D6B8, &qword_2D15B0);
      v362(v323, v305);
      sub_30B8(v309, &qword_34D6B8, &qword_2D15B0);
      v299 = v547;
      if (v560)
      {
        goto LABEL_64;
      }

      goto LABEL_73;
    }

    sub_30B8(v539, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v540, &qword_34D6B8, &qword_2D15B0);
    (*(v563 + 8))(v323, v305);
    v311 = v309;
  }

  sub_30B8(v311, &qword_34D6B0, &unk_2D4FC0);
LABEL_73:
  v324 = v531;
  sub_2CD6C0();
  v325 = v530;
  v326 = v564;
  (v490)(v530, enum case for CommonAudio.Verb.follow(_:), v564);
  (v493)(v325, 0, 1, v326);
  v327 = *(v557 + 48);
  v328 = v521;
  sub_F3F4(v324, v521, &qword_34D6B8, &qword_2D15B0);
  v329 = v326;
  sub_F3F4(v325, v328 + v327, &qword_34D6B8, &qword_2D15B0);
  if (v249(v328, 1, v326) == 1)
  {
    sub_30B8(v325, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v324, &qword_34D6B8, &qword_2D15B0);
    if (v249(v328 + v327, 1, v326) == 1)
    {
      v297 = v328;
      v299 = v547;
      goto LABEL_63;
    }

    goto LABEL_80;
  }

  v334 = v512;
  sub_F3F4(v328, v512, &qword_34D6B8, &qword_2D15B0);
  if (v249(v328 + v327, 1, v329) == 1)
  {
    sub_30B8(v530, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v531, &qword_34D6B8, &qword_2D15B0);
    (*(v563 + 8))(v334, v329);
LABEL_80:
    sub_30B8(v328, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_81;
  }

  v415 = v327;
  v416 = v563;
  v417 = v549;
  (*(v563 + 32))(v549, v328 + v415, v329);
  sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  LODWORD(v560) = sub_2CE250();
  v418 = *(v416 + 8);
  v418(v417, v329);
  sub_30B8(v530, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v531, &qword_34D6B8, &qword_2D15B0);
  v418(v334, v329);
  sub_30B8(v328, &qword_34D6B8, &qword_2D15B0);
  v299 = v547;
  if ((v560 & 1) == 0)
  {
LABEL_81:
    v335 = v519;
    sub_2CD6C0();
    v336 = v518;
    v337 = v564;
    (v490)(v518, enum case for CommonAudio.Verb.summarise(_:), v564);
    (v493)(v336, 0, 1, v337);
    v338 = *(v557 + 48);
    v339 = v513;
    sub_F3F4(v335, v513, &qword_34D6B8, &qword_2D15B0);
    sub_F3F4(v336, v339 + v338, &qword_34D6B8, &qword_2D15B0);
    if (v249(v339, 1, v337) == 1)
    {
      sub_30B8(v336, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v335, &qword_34D6B8, &qword_2D15B0);
      v340 = v249(v339 + v338, 1, v564);
      v341 = v517;
      if (v340 == 1)
      {
        v112 = v496;
        v342 = v495;
LABEL_110:
        sub_30B8(v339, &qword_34D6B8, &qword_2D15B0);
LABEL_124:
        v442 = v552;
        v443 = sub_1B7F14();
        if (v443)
        {
          v444 = v443;
          v445 = [objc_allocWithZone(INSearchForMediaIntent) init];
          v446 = sub_2CDAE0();
          v447 = sub_1CFB70(v444, v446);

          v448 = v509;
          v564 = v447;
          sub_2A0804(v509);
          v449 = v506;
          v450 = v571;
          (v556)(v506, v497, v571);
          v451 = v528;
          v452 = v502;
          (*(v528 + 16))(v502, v448, v112);
          v453 = sub_2CDFE0();
          v454 = sub_2CE670();
          if (os_log_type_enabled(v453, v454))
          {
            v455 = swift_slowAlloc();
            v456 = swift_slowAlloc();
            v574 = v456;
            *v455 = 136315138;
            sub_2A9EB0(&qword_34CD00, &type metadata accessor for Input, &protocol conformance descriptor for Input);
            v457 = sub_2CEE70();
            v459 = v458;
            v460 = v452;
            v382 = *(v528 + 8);
            v382(v460, v112);
            v461 = sub_3F08(v457, v459, &v574);

            *(v455 + 4) = v461;
            _os_log_impl(&dword_0, v453, v454, "PommesResponseFlow#execute updated serverConversion input: %s", v455, 0xCu);
            sub_306C(v456);

            v462 = v506;
          }

          else
          {

            v480 = v452;
            v382 = *(v451 + 8);
            v382(v480, v112);
            v462 = v449;
          }

          (v561)(v462, v450);
          v481 = v566;
          (v556)(v510, v497, v450);
          v482 = sub_2CDFE0();
          v483 = sub_2CE670();
          if (os_log_type_enabled(v482, v483))
          {
            v484 = swift_slowAlloc();
            *v484 = 0;
            _os_log_impl(&dword_0, v482, v483, "PommesResponseFlow#execute forwarding SearchForMedia RCHFlow", v484, 2u);
          }

          (v561)(v510, v571);
          sub_35E0((v495 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_audioFlowProvider), *(v495 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_audioFlowProvider + 24));
          type metadata accessor for AudioFlowProvider();
          v485 = v509;
          v486 = v564;
          sub_13479C(v509, v564);
          v487 = v543;
          sub_2C9EA0();
          v568(v487);

          (*(v544 + 8))(v487, v545);
          v407 = v496;
          v382(v485, v496);
          v408 = v481;
          goto LABEL_103;
        }

        v463 = v442;
        v464 = v499;
        v465 = v571;
        (v556)(v499, v497, v571);
        v466 = sub_2CDFE0();
        v467 = sub_2CE670();
        if (os_log_type_enabled(v466, v467))
        {
          v468 = swift_slowAlloc();
          *v468 = 0;
          _os_log_impl(&dword_0, v466, v467, "PommesResponseFlow#execute failed to build searchMediaIntent", v468, 2u);
        }

        (v561)(v464, v465);
        v469 = v342;
        v470 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
        sub_2CCFB0();
        v471 = sub_2CCF80();
        v472 = swift_allocObject();
        v473 = v569;
        *(v472 + 16) = v568;
        *(v472 + 24) = v473;
        v474 = sub_2CB4A0();

        v475 = sub_2CB490();
        v575 = v474;
        v576 = &protocol witness table for SiriKitTaskLoggingProvider;
        v574 = v475;
        sub_20410(&unk_353120, &unk_2D0B50);
        v476 = swift_allocObject();
        *(v476 + 16) = xmmword_2D0090;
        sub_2CC230();
        *(v476 + 32) = sub_2CC200();
        *(v476 + 72) = &type metadata for String;
        *(v476 + 40) = v477;
        *(v476 + 48) = 0xD00000000000001FLL;
        *(v476 + 56) = 0x80000000002DBA80;
        v478 = sub_112C0(v476);
        swift_setDeallocating();
        sub_30B8(v476 + 32, &qword_34CBA0, &unk_2D0FE0);
        swift_deallocClassInstance();
        sub_EEAC(&v574, &v573);
        sub_EEAC(v469 + v470, &v572);
        v479 = swift_allocObject();
        strcpy((v479 + 16), "FailedSMIBuild");
        *(v479 + 31) = -18;
        sub_F338(&v573, v479 + 32);
        *(v479 + 72) = v471;
        sub_F338(&v572, v479 + 80);
        *(v479 + 120) = sub_2A9EFC;
        *(v479 + 128) = v472;

        sub_3D150(v478, v471, sub_2A9EF8, v479);

        (v553)(v566, v565);
        goto LABEL_41;
      }
    }

    else
    {
      v409 = v505;
      sub_F3F4(v339, v505, &qword_34D6B8, &qword_2D15B0);
      if (v249(v339 + v338, 1, v337) != 1)
      {
        v431 = v563;
        v432 = v549;
        (*(v563 + 32))(v549, v339 + v338, v337);
        sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        v433 = v339;
        v434 = v337;
        v435 = sub_2CE250();
        v436 = v409;
        v437 = *(v431 + 8);
        v437(v432, v434);
        sub_30B8(v518, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v519, &qword_34D6B8, &qword_2D15B0);
        v437(v436, v434);
        v342 = v495;
        v112 = v496;
        sub_30B8(v433, &qword_34D6B8, &qword_2D15B0);
        v341 = v517;
        if (v435)
        {
          goto LABEL_124;
        }

LABEL_107:
        v410 = v511;
        sub_2CD6C0();
        v411 = v564;
        (v490)(v341, enum case for CommonAudio.Verb.open(_:), v564);
        (v493)(v341, 0, 1, v411);
        v412 = *(v557 + 48);
        v413 = v508;
        sub_F3F4(v410, v508, &qword_34D6B8, &qword_2D15B0);
        v414 = v411;
        sub_F3F4(v341, v413 + v412, &qword_34D6B8, &qword_2D15B0);
        if (v249(v413, 1, v411) == 1)
        {
          sub_30B8(v341, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v410, &qword_34D6B8, &qword_2D15B0);
          if (v249(v413 + v412, 1, v411) == 1)
          {
            v339 = v413;
            goto LABEL_110;
          }
        }

        else
        {
          v419 = v501;
          sub_F3F4(v413, v501, &qword_34D6B8, &qword_2D15B0);
          if (v249(v413 + v412, 1, v414) != 1)
          {
            v438 = v563;
            v439 = v549;
            (*(v563 + 32))(v549, v413 + v412, v414);
            sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
            v440 = sub_2CE250();
            v441 = *(v438 + 8);
            v441(v439, v414);
            sub_30B8(v517, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v511, &qword_34D6B8, &qword_2D15B0);
            v441(v419, v414);
            sub_30B8(v413, &qword_34D6B8, &qword_2D15B0);
            if (v440)
            {
              goto LABEL_124;
            }

LABEL_116:
            v287 = v498;
            v288 = v498;
            v289 = v568;
            v290 = v569;
            goto LABEL_52;
          }

          sub_30B8(v517, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v410, &qword_34D6B8, &qword_2D15B0);
          (*(v563 + 8))(v419, v414);
        }

        sub_30B8(v413, &qword_34D6B0, &unk_2D4FC0);
        goto LABEL_116;
      }

      sub_30B8(v518, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v519, &qword_34D6B8, &qword_2D15B0);
      (*(v563 + 8))(v409, v564);
      v341 = v517;
    }

    sub_30B8(v339, &qword_34D6B0, &unk_2D4FC0);
    v112 = v496;
    v342 = v495;
    goto LABEL_107;
  }

LABEL_64:
  v312 = v534;
  sub_2CD6C0();
  v313 = v564;
  (v490)(v299, enum case for CommonAudio.Verb.update(_:), v564);
  (v493)(v299, 0, 1, v313);
  v314 = *(v557 + 48);
  v315 = v535;
  sub_F3F4(v312, v535, &qword_34D6B8, &qword_2D15B0);
  v316 = v313;
  sub_F3F4(v299, v315 + v314, &qword_34D6B8, &qword_2D15B0);
  if (v249(v315, 1, v313) == 1)
  {
    sub_30B8(v299, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v312, &qword_34D6B8, &qword_2D15B0);
    v317 = v249(v315 + v314, 1, v313);
    v318 = v552;
    v319 = v537;
    if (v317 == 1)
    {
      sub_30B8(v315, &qword_34D6B8, &qword_2D15B0);
      v320 = v495;
      goto LABEL_85;
    }

    goto LABEL_69;
  }

  v321 = v520;
  sub_F3F4(v315, v520, &qword_34D6B8, &qword_2D15B0);
  v322 = v249(v315 + v314, 1, v313);
  v318 = v552;
  if (v322 == 1)
  {
    sub_30B8(v547, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v312, &qword_34D6B8, &qword_2D15B0);
    (*(v563 + 8))(v321, v313);
    v319 = v537;
LABEL_69:
    sub_30B8(v315, &qword_34D6B0, &unk_2D4FC0);
    v320 = v495;
LABEL_93:
    v364 = sub_1B7F14();
    if (v364)
    {
      v365 = v364;
      v366 = [objc_allocWithZone(INAddMediaIntent) init];
      v367 = sub_2CDAE0();
      v368 = sub_60F90(v365, v367);

      v369 = v536;
      v564 = v368;
      INAddMediaIntent.toServerConversionParse()(v536);
      v370 = v532;
      v371 = v571;
      (v556)(v532, v497, v571);
      v372 = v528;
      (*(v528 + 16))(v319, v369, v496);
      v373 = sub_2CDFE0();
      v374 = sub_2CE670();
      if (os_log_type_enabled(v373, v374))
      {
        v375 = swift_slowAlloc();
        v376 = v319;
        v377 = swift_slowAlloc();
        v574 = v377;
        *v375 = 136315138;
        sub_2A9EB0(&qword_34CD00, &type metadata accessor for Input, &protocol conformance descriptor for Input);
        v378 = v496;
        v379 = sub_2CEE70();
        v381 = v380;
        v382 = *(v528 + 8);
        v382(v376, v378);
        v383 = sub_3F08(v379, v381, &v574);

        *(v375 + 4) = v383;
        _os_log_impl(&dword_0, v373, v374, "PommesResponseFlow#execute updated serverConversion input: %s", v375, 0xCu);
        sub_306C(v377);

        v384 = v532;
      }

      else
      {

        v382 = *(v372 + 8);
        v382(v319, v496);
        v384 = v370;
      }

      (v561)(v384, v371);
      v400 = v522;
      (v556)(v522, v497, v371);
      v401 = sub_2CDFE0();
      v402 = sub_2CE670();
      if (os_log_type_enabled(v401, v402))
      {
        v403 = swift_slowAlloc();
        *v403 = 0;
        _os_log_impl(&dword_0, v401, v402, "PommesResponseFlow#execute forwarding AddMedia RCHFlow", v403, 2u);
      }

      (v561)(v400, v571);
      v404 = v536;
      v405 = v564;
      sub_137A7C(v536, v564);
      v406 = v543;
      sub_2C9EA0();
      v568(v406);

      (*(v544 + 8))(v406, v545);
      v407 = v496;
      v382(v404, v496);
      v408 = v566;
LABEL_103:
      (v553)(v408, v565);
      return (v382)(v498, v407);
    }

    v385 = v571;
    (v556)(v526, v497, v571);
    v386 = sub_2CDFE0();
    v387 = sub_2CE670();
    if (os_log_type_enabled(v386, v387))
    {
      v388 = swift_slowAlloc();
      *v388 = 0;
      _os_log_impl(&dword_0, v386, v387, "PommesResponseFlow#execute failed to build addMediaIntent", v388, 2u);
    }

    (v561)(v526, v385);
    v389 = v320;
    v390 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
    sub_2CCFB0();
    v391 = sub_2CCF80();
    v392 = swift_allocObject();
    v393 = v569;
    *(v392 + 16) = v568;
    *(v392 + 24) = v393;
    v394 = sub_2CB4A0();

    v395 = sub_2CB490();
    v575 = v394;
    v576 = &protocol witness table for SiriKitTaskLoggingProvider;
    v574 = v395;
    sub_20410(&unk_353120, &unk_2D0B50);
    v396 = swift_allocObject();
    *(v396 + 16) = xmmword_2D0090;
    sub_2CC230();
    *(v396 + 32) = sub_2CC200();
    *(v396 + 72) = &type metadata for String;
    *(v396 + 40) = v397;
    *(v396 + 48) = 0xD00000000000001FLL;
    *(v396 + 56) = 0x80000000002DBA80;
    v398 = sub_112C0(v396);
    swift_setDeallocating();
    sub_30B8(v396 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    sub_EEAC(&v574, &v573);
    sub_EEAC(v389 + v390, &v572);
    v399 = swift_allocObject();
    strcpy((v399 + 16), "FailedAMIBuild");
    *(v399 + 31) = -18;
    sub_F338(&v573, v399 + 32);
    *(v399 + 72) = v391;
    sub_F338(&v572, v399 + 80);
    *(v399 + 120) = sub_2A9EFC;
    *(v399 + 128) = v392;

    sub_3D150(v398, v391, sub_2A9EF8, v399);

    (v553)(v566, v565);
    goto LABEL_28;
  }

  v343 = v312;
  v344 = v315;
  v345 = v563;
  v346 = v344 + v314;
  v347 = v549;
  (*(v563 + 32))(v549, v346, v316);
  sub_2A9EB0(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
  v348 = sub_2CE250();
  v349 = *(v345 + 8);
  v349(v347, v316);
  sub_30B8(v547, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v343, &qword_34D6B8, &qword_2D15B0);
  v349(v321, v316);
  sub_30B8(v344, &qword_34D6B8, &qword_2D15B0);
  v319 = v537;
  v320 = v495;
  if ((v348 & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_85:
  v350 = v524;
  sub_2CD6F0();
  v351 = v525;
  v352 = v523;
  v353 = v515;
  (*(v525 + 104))(v523, enum case for CommonAudio.MediaType.news(_:), v515);
  (*(v351 + 56))(v352, 0, 1, v353);
  v354 = *(v514 + 48);
  v355 = v527;
  sub_F3F4(v350, v527, &qword_34D6D0, qword_2D34A0);
  sub_F3F4(v352, v355 + v354, &qword_34D6D0, qword_2D34A0);
  v356 = *(v351 + 48);
  if (v356(v355, 1, v353) != 1)
  {
    v363 = v507;
    sub_F3F4(v355, v507, &qword_34D6D0, qword_2D34A0);
    if (v356(v355 + v354, 1, v353) != 1)
    {
      v420 = v525;
      v421 = v355 + v354;
      v422 = v500;
      (*(v525 + 32))(v500, v421, v353);
      sub_2A9EB0(&qword_34D388, &type metadata accessor for CommonAudio.MediaType, &protocol conformance descriptor for CommonAudio.MediaType);
      v423 = sub_2CE250();
      v424 = *(v420 + 8);
      v424(v422, v353);
      sub_30B8(v523, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v524, &qword_34D6D0, qword_2D34A0);
      v424(v363, v353);
      sub_30B8(v355, &qword_34D6D0, qword_2D34A0);
      v319 = v537;
      v318 = v552;
      if (v423)
      {
        goto LABEL_118;
      }

      goto LABEL_93;
    }

    sub_30B8(v523, &qword_34D6D0, qword_2D34A0);
    v357 = v527;
    sub_30B8(v524, &qword_34D6D0, qword_2D34A0);
    (*(v525 + 8))(v363, v353);
    v318 = v552;
    goto LABEL_92;
  }

  sub_30B8(v352, &qword_34D6D0, qword_2D34A0);
  v357 = v527;
  sub_30B8(v350, &qword_34D6D0, qword_2D34A0);
  v358 = v356(v357 + v354, 1, v353);
  v318 = v552;
  if (v358 != 1)
  {
LABEL_92:
    sub_30B8(v357, &qword_34D6A8, &unk_2D15A0);
    v319 = v537;
    goto LABEL_93;
  }

  sub_30B8(v357, &qword_34D6D0, qword_2D34A0);
LABEL_118:
  v425 = v504;
  (v556)(v504, v497, v571);
  v426 = sub_2CDFE0();
  v427 = sub_2CE670();
  if (os_log_type_enabled(v426, v427))
  {
    v428 = swift_slowAlloc();
    *v428 = 0;
    _os_log_impl(&dword_0, v426, v427, "PommesResponseFlow#execute Update verb and news mediaType present, forwarding SwitchPodcastNewsPreferenceFlow", v428, 2u);
  }

  (v561)(v425, v571);
  v429 = v541;
  sub_F3F4(v320 + v503, v541, &qword_34E480, &qword_2D2280);
  sub_138BA8(v429);
  sub_30B8(v429, &qword_34E480, &qword_2D2280);
  v430 = v543;
  sub_2C9EA0();
  v568(v430);

  (*(v544 + 8))(v430, v545);
  (v553)(v566, v565);
  return (*(v528 + 8))(v498, v496);
}

uint64_t sub_2A788C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v57 = a3;
  v56 = a2;
  v53 = sub_2C9EC0();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE000();
  v55 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v49 - v9;
  v10 = sub_2CA870();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v3;
  sub_35E0((v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_controlsFlowProvider), *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_controlsFlowProvider + 24));
  sub_2CA790();
  v14 = sub_2CDC70();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (sub_2C95C0())
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v15 = v5;
      v16 = sub_3ED0(v5, static Logger.default);
      swift_beginAccess();
      v17 = v55;
      v18 = v50;
      (*(v55 + 16))(v50, v16, v15);
      v19 = sub_2CDFE0();
      v20 = sub_2CE690();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v59[0] = v22;
        *v21 = 136446210;
        v23 = sub_2CCCC0();
        v25 = sub_3F08(v23, v24, v59);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_0, v19, v20, "PommesResponseFlow#executeFlow %{public}s Controls is able to handle the request. Returning controls flow", v21, 0xCu);
        sub_306C(v22);
      }

      (*(v17 + 8))(v18, v15);
      v26 = v51;
      sub_2C9EA0();
      v56(v26);

      return (*(v52 + 8))(v26, v53);
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v28 = v5;
  v29 = sub_3ED0(v5, static Logger.default);
  swift_beginAccess();
  v30 = v55;
  (*(v55 + 16))(v8, v29, v28);
  v31 = sub_2CDFE0();
  v32 = sub_2CE680();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v60[0] = v34;
    *v33 = 136446210;
    v35 = sub_2CCCC0();
    v37 = sub_3F08(v35, v36, v60);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_0, v31, v32, "PommesResponseFlow#executeFlow %{public}s Neither SiriAudio nor PlaybackControls were able to handle the request.", v33, 0xCu);
    sub_306C(v34);
  }

  (*(v30 + 8))(v8, v28);
  v38 = v54;
  v39 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker;
  sub_2CCFB0();
  v40 = sub_2CCF80();
  v41 = swift_allocObject();
  v42 = v57;
  *(v41 + 16) = v56;
  *(v41 + 24) = v42;
  v43 = sub_2CB4A0();

  v44 = sub_2CB490();
  v60[3] = v43;
  v60[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v60[0] = v44;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  sub_2CC230();
  *(inited + 32) = sub_2CC200();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v46;
  *(inited + 48) = 0xD00000000000001FLL;
  *(inited + 56) = 0x80000000002DBA80;
  v47 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  sub_EEAC(v60, v59);
  sub_EEAC(v38 + v39, v58);
  v48 = swift_allocObject();
  v48[2] = 0xD000000000000010;
  v48[3] = 0x80000000002E0FC0;
  sub_F338(v59, (v48 + 4));
  v48[9] = v40;
  sub_F338(v58, (v48 + 10));
  v48[15] = sub_2A8FD8;
  v48[16] = v41;

  sub_3D150(v47, v40, sub_2A99AC, v48);

  return sub_306C(v60);
}

uint64_t sub_2A8028(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v28 = a3;
  v29 = a2;
  v4 = sub_2C9EC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v12 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v9 + 16))(v11, v12, v8);
    swift_errorRetain();
    v13 = v9;
    v14 = sub_2CDFE0();
    v15 = sub_2CE670();

    v27 = v15;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v16 = 136315138;
      swift_getErrorValue();
      v24 = v14;
      v17 = sub_2CEEF0();
      v19 = sub_3F08(v17, v18, &v30);
      v25 = v8;
      v20 = v19;

      v21 = v16;
      *(v16 + 4) = v20;
      v22 = v24;
      _os_log_impl(&dword_0, v24, v27, "PommesResponseFlow#submitAndFileGenericError Could not properly create dialog. Silently failing... error: %s", v21, 0xCu);
      sub_306C(v26);

      (*(v13 + 8))(v11, v25);
    }

    else
    {

      (*(v13 + 8))(v11, v8);
    }
  }

  sub_2C9EB0();
  v29(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2A836C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v67 = a7;
  v62 = a6;
  v63 = a2;
  v60 = a4;
  v8 = sub_2CC2B0();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CA7B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = *(v11 + 16);
  v16(&v59 - v14, a5, v10);
  v17 = *(v11 + 56);
  v68 = v15;
  v61 = v17;
  v17(v15, 0, 1, v10);
  sub_EEAC(v60, v93);
  sub_EEAC(v62, v92);
  v16(&v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v10);
  v18 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_F338(v92, v19 + 16);
  (*(v11 + 32))(v19 + v18, &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v20 = v67;
  *(v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v67;
  v21 = qword_34BFB8;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v91[3] = &type metadata for StringsBackedAppNameResolver;
  v62 = sub_2869C();
  v91[4] = v62;
  v91[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v91[0] + 16);
  sub_2C9A00();
  v23 = v66;
  v89[3] = v66;
  v89[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v89);
  sub_2CC2A0();
  v24 = sub_2CB4A0();
  v25 = sub_2CB490();
  v88 = &protocol witness table for SiriKitTaskLoggingProvider;
  v87 = v24;
  *&v86 = v25;
  v67 = type metadata accessor for SiriForAirPlayFlow(0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input;
  v61(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input, 1, 1, v10);
  v28 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent) = 0;
  swift_beginAccess();
  sub_BED04(v68, v26 + v27);
  swift_endAccess();
  v29 = *(v26 + v28);
  v30 = v63;
  *(v26 + v28) = v63;

  sub_EEAC(v93, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_outputPublisher);
  sub_EEAC(v89, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_featureFlags);
  sub_EEAC(v91, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_appNameResolver);
  sub_EEAC(v90, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_aceService);
  v31 = (v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_nextLocalFlow);
  *v31 = sub_2A9E24;
  v31[1] = v19;
  sub_EEAC(v91, v85);
  sub_EEAC(v90, v84);
  v32 = CATDefaultMode;
  v33 = sub_2CBC00();
  v34 = v30;
  v35 = sub_2CBBF0();

  v36 = v64;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v37 = swift_allocObject();
  v38 = sub_F9A0(v85, v85[3]);
  v63 = &v59;
  __chkstk_darwin(v38);
  v40 = (&v59 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v83[3] = &type metadata for StringsBackedAppNameResolver;
  v83[4] = v62;
  v42 = swift_allocObject();
  v83[0] = v42;
  v43 = v40[3];
  v42[3] = v40[2];
  v42[4] = v43;
  v42[5] = v40[4];
  v44 = v40[1];
  v42[1] = *v40;
  v42[2] = v44;
  v82[3] = v33;
  v82[4] = &protocol witness table for MorphunProvider;
  v82[0] = v35;
  v81[3] = v23;
  v81[4] = &protocol witness table for FeatureFlagProvider;
  v45 = sub_F390(v81);
  v46 = v65;
  (*(v65 + 16))(v45, v36, v23);
  *(v37 + 296) = v32;
  sub_EEAC(v81, v37 + 256);
  sub_EEAC(v83, v80);
  sub_EEAC(v82, v79);
  sub_EEAC(v84, v78);
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  v47 = sub_2CCA30();
  v48 = sub_2CCA20();
  v75[3] = v47;
  v75[4] = &protocol witness table for MultiUserConnectionProvider;
  v75[0] = v48;
  v74[3] = sub_2CB9E0();
  v74[4] = &protocol witness table for DeviceProvider;
  sub_F390(v74);
  sub_2CB9C0();
  sub_EEAC(v80, v37 + 16);
  sub_EEAC(v79, v37 + 216);
  sub_EEAC(v78, v37 + 56);
  sub_EEAC(v75, v37 + 96);
  sub_EEAC(v74, v37 + 176);
  sub_F3F4(v76, &v69, qword_34C708, &qword_2D1620);
  v49 = v68;
  v50 = v23;
  v51 = v46;
  if (v70)
  {

    sub_30B8(v76, qword_34C708, &qword_2D1620);
    sub_306C(v78);
    sub_306C(v79);
    sub_306C(v80);
    (*(v46 + 8))(v36, v50);
    sub_306C(v84);
    sub_306C(v81);
    sub_306C(v82);
    sub_306C(v83);
    sub_306C(v74);
    sub_306C(v75);
    sub_F338(&v69, &v71);
  }

  else
  {
    sub_EEAC(v78, &v71);
    v52 = sub_2C9E60();
    swift_allocObject();
    v53 = sub_2C9E50();
    v72 = v52;
    v73 = &protocol witness table for ContactsManager;

    *&v71 = v53;
    sub_30B8(v76, qword_34C708, &qword_2D1620);
    sub_306C(v78);
    sub_306C(v79);
    sub_306C(v80);
    (*(v51 + 8))(v36, v50);
    sub_306C(v84);
    sub_306C(v81);
    sub_306C(v82);
    sub_306C(v83);
    sub_306C(v74);
    sub_306C(v75);
    if (v70)
    {
      sub_30B8(&v69, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v71, v37 + 136);
  sub_306C(v85);
  type metadata accessor for PlayMediaCatDialogService();
  v54 = swift_allocObject();
  v54[5] = 0x6964654D79616C50;
  v54[6] = 0xEF746E65746E4961;
  v54[2] = 0xD000000000000011;
  v54[3] = 0x80000000002DA8D0;
  v54[4] = v37;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_playMediaCatDialogService) = v54;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v55 = swift_allocObject();
  v55[2] = 0xD000000000000011;
  v55[3] = 0x80000000002DA8D0;
  v55[4] = v37;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_commonMediaIntentCatDialogService) = v55;
  sub_2C9C10();
  swift_allocObject();

  v56 = sub_2C9BF0();
  sub_306C(v90);
  sub_306C(v93);
  sub_30B8(v49, &qword_34E480, &qword_2D2280);
  sub_306C(v89);
  sub_306C(v91);
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_viewFactory) = v56;
  sub_F338(&v86, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_siriKitTaskLoggingProvider);
  v93[0] = v26;
  sub_2A9EB0(&qword_351318, type metadata accessor for SiriForAirPlayFlow, &unk_2D2BC8);
  v57 = sub_2C97B0();

  return v57;
}

uint64_t sub_2A8D10()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_controlsFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_audioFlowProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_featureFlagProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_aceServiceInvoker));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_publisher));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18PommesResponseFlow_nowPlayingProvider));

  return v0;
}

uint64_t sub_2A8DDC()
{
  sub_2A8D10();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PommesResponseFlow(uint64_t a1)
{
  result = qword_356AF0;
  if (!qword_356AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2A8E88(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2A8F9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PommesResponseFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_2A8FE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v56 = a6;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v63 = a2;
  v65 = sub_2CC2B0();
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CA7B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v13 - 8);
  v15 = &v56 - v14;
  v90[3] = type metadata accessor for AudioFlowProvider();
  v90[4] = &off_3367A0;
  v90[0] = a6;
  v16 = *(v10 + 16);
  v16(v15, a1, v9);
  v17 = *(v10 + 56);
  v64 = v15;
  v60 = v17;
  (v17)(v15, 0, 1, v9);
  sub_EEAC(v57, v89);
  sub_EEAC(v58, v88);
  sub_EEAC(v59, v87);
  v16(v12, a1, v9);
  sub_EEAC(v90, v86);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v18, v12, v9);
  sub_F338(v86, v20 + v19);
  v21 = v63;
  *(v20 + ((v19 + 47) & 0xFFFFFFFFFFFFFFF8)) = v63;
  v22 = qword_34BFB8;

  v23 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  v85[3] = &type metadata for StringsBackedAppNameResolver;
  v59 = sub_2869C();
  v85[4] = v59;
  v85[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v85[0] + 16);
  v84[3] = v65;
  v84[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v84);
  sub_2CC2A0();
  v24 = sub_2CB4A0();
  v25 = sub_2CB490();
  v83[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v83[3] = v24;
  v83[0] = v25;
  v63 = type metadata accessor for AudioAppResolutionFlow(0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input;
  (v60)(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input, 1, 1, v9);
  v28 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent) = 0;
  swift_beginAccess();
  sub_BED04(v64, v26 + v27);
  swift_endAccess();
  v29 = *(v26 + v28);
  *(v26 + v28) = 0;

  sub_EEAC(v85, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appNameResolver);
  sub_EEAC(v89, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_aceService);
  sub_EEAC(v88, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_outputPublisher);
  v30 = (v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nextAppAcceptingFlow);
  *v30 = sub_2A9D54;
  v30[1] = v20;
  sub_EEAC(v84, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_featureFlags);
  sub_EEAC(v87, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nowPlayingProvider);
  sub_EEAC(v83, v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_siriKitTaskLoggingProvider);
  sub_EEAC(v85, v82);
  sub_EEAC(v89, v81);
  v31 = CATDefaultMode;
  v32 = sub_2CBC00();
  v33 = sub_2CBBF0();
  v34 = v61;
  sub_2CC2A0();
  v35 = sub_F9A0(v82, v82[3]);
  v60 = &v56;
  __chkstk_darwin(v35);
  v37 = (&v56 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  type metadata accessor for CatService();
  v39 = swift_allocObject();
  v80[3] = &type metadata for StringsBackedAppNameResolver;
  v80[4] = v59;
  v40 = swift_allocObject();
  v80[0] = v40;
  v41 = v37[3];
  v40[3] = v37[2];
  v40[4] = v41;
  v40[5] = v37[4];
  v42 = v37[1];
  v40[1] = *v37;
  v40[2] = v42;
  v79[3] = v32;
  v79[4] = &protocol witness table for MorphunProvider;
  v79[0] = v33;
  v43 = v65;
  v78[3] = v65;
  v78[4] = &protocol witness table for FeatureFlagProvider;
  v44 = sub_F390(v78);
  v45 = v62;
  (*(v62 + 16))(v44, v34, v43);
  *(v39 + 296) = v31;
  sub_EEAC(v78, v39 + 256);
  sub_EEAC(v80, v77);
  sub_EEAC(v79, v76);
  sub_EEAC(v81, v75);
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  v46 = sub_2CCA30();

  v47 = sub_2CCA20();
  v72[3] = v46;
  v72[4] = &protocol witness table for MultiUserConnectionProvider;
  v72[0] = v47;
  v71[3] = sub_2CB9E0();
  v71[4] = &protocol witness table for DeviceProvider;
  sub_F390(v71);
  sub_2CB9C0();
  sub_EEAC(v77, v39 + 16);
  sub_EEAC(v76, v39 + 216);
  sub_EEAC(v75, v39 + 56);
  sub_EEAC(v72, v39 + 96);
  sub_EEAC(v71, v39 + 176);
  sub_F3F4(v73, &v66, qword_34C708, &qword_2D1620);
  v48 = v64;
  v49 = v45;
  if (v67)
  {

    sub_30B8(v73, qword_34C708, &qword_2D1620);
    sub_306C(v75);
    sub_306C(v76);
    sub_306C(v77);
    (*(v45 + 8))(v34, v43);
    sub_306C(v81);
    sub_306C(v78);
    sub_306C(v79);
    sub_306C(v80);
    sub_306C(v71);
    sub_306C(v72);
    sub_F338(&v66, &v68);
  }

  else
  {
    sub_EEAC(v75, &v68);
    v50 = sub_2C9E60();
    swift_allocObject();
    v51 = sub_2C9E50();
    v69 = v50;
    v70 = &protocol witness table for ContactsManager;

    *&v68 = v51;
    sub_30B8(v73, qword_34C708, &qword_2D1620);
    sub_306C(v75);
    sub_306C(v76);
    sub_306C(v77);
    (*(v49 + 8))(v34, v43);
    sub_306C(v81);
    sub_306C(v78);
    sub_306C(v79);
    sub_306C(v80);
    sub_306C(v71);
    sub_306C(v72);
    if (v67)
    {
      sub_30B8(&v66, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v68, v39 + 136);
  sub_306C(v82);
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_catService) = v39;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v52 = swift_allocObject();

  sub_306C(v87);
  sub_306C(v88);
  sub_306C(v89);
  sub_30B8(v48, &qword_34E480, &qword_2D2280);
  sub_306C(v83);
  sub_306C(v84);
  sub_306C(v85);
  v52[2] = 0xD000000000000011;
  v52[3] = 0x80000000002DA8D0;
  v52[4] = v39;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_commonMediaIntentCatDialogService) = v52;
  v53 = (v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appResolutionFlowProducer);
  *v53 = sub_104BA4;
  v53[1] = 0;
  *(v26 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_state) = 0;
  v89[0] = v26;
  sub_2A9EB0(&qword_353898, type metadata accessor for AudioAppResolutionFlow, &unk_2D41F0);
  v54 = sub_2C97B0();

  sub_306C(v90);
  return v54;
}

uint64_t sub_2A99B0()
{

  sub_306C((v0 + 32));

  sub_306C((v0 + 80));

  return _swift_deallocObject(v0, 136);
}

uint64_t sub_2A9A20()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  if (sub_423CC())
  {
    if (!sub_2CB460())
    {
      sub_2CB180();
      sub_2CB170();
    }

    sub_2CB160();

    v12 = sub_2CB370();

    if (v12)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v13 = sub_3ED0(v0, static Logger.default);
      swift_beginAccess();
      (*(v1 + 16))(v6, v13, v0);
      v14 = sub_2CDFE0();
      v15 = sub_2CE670();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_0, v14, v15, "PommesResponseFlow#shouldHandle device is NOT offline. Cannot handle playback through .uso() online.", v16, 2u);
      }

      (*(v1 + 8))(v6, v0);
    }

    v11 = v12 ^ 1;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v7 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v4, v7, v0);
    v8 = sub_2CDFE0();
    v9 = sub_2CE670();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "PommesResponseFlow#shouldHandle isPlaybackTask=false", v10, 2u);
    }

    (*(v1 + 8))(v4, v0);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2A9D54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_2CA7B0() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + ((v11 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_2A836C(a1, a2, a3, a4, v4 + v10, v4 + v11, v12);
}

uint64_t sub_2A9E24()
{
  v1 = *(sub_2CA7B0() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_137A7C(v0 + v2, v3);
}

uint64_t sub_2A9EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2A9F24(uint64_t a1)
{
  result = sub_2A9F4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2A9F4C()
{
  result = qword_3515A0;
  if (!qword_3515A0)
  {
    type metadata accessor for SearchForMedia.UnsupportedValueStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3515A0);
  }

  return result;
}

uint64_t sub_2A9FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SearchForMedia.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_2AA05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for SearchForMedia.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_2AA118()
{
  v1 = v0;
  v2 = sub_2CD4B0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34C060 != -1)
  {
    swift_once();
  }

  v13 = qword_35F950;
  if (*(qword_35F950 + 16))
  {
    v14 = sub_4F734(v1);
    if (v15)
    {
      return *(*(v13 + 56) + 8 * v14);
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v17, v9);
  v18 = v12;
  v19 = *(v3 + 16);
  v19(v8, v1, v2);
  v33 = v18;
  v20 = sub_2CDFE0();
  v21 = sub_2CE670();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v31 = v10;
    v25 = v24;
    v34 = v24;
    *v23 = 136315138;
    v19(v6, v8, v2);
    v26 = sub_2CE2A0();
    v28 = v27;
    (*(v3 + 8))(v8, v2);
    v29 = sub_3F08(v26, v28, &v34);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_0, v20, v21, "CommonAudio+Extension#Sort#sortOrder received unregistered decade: %s", v23, 0xCu);
    sub_306C(v25);

    (*(v31 + 8))(v33, v32);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
    (*(v10 + 8))(v33, v9);
  }

  return 0;
}

uint64_t sub_2AA4E8(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  v4 = *a2;
  if (*(*a2 + 16) && (v5 = sub_4F660(v3), (v6 & 1) != 0))
  {
    return *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    return 0;
  }
}

id sub_2AA550()
{
  v1 = sub_20410(&qword_3545D8, qword_2D6838);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v42 - v5;
  v7 = sub_20410(&qword_356D08, &qword_2D90B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v10 = sub_2C8ED0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_356D10, &qword_2D90B8);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_2C8CB0();
  v18 = __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v22 = &v42 - v19;
  if (qword_34C058 != -1)
  {
    v54 = v20;
    v55 = &v42 - v19;
    v41 = v21;
    swift_once();
    v20 = v54;
    v22 = v55;
    v21 = v41;
  }

  v23 = qword_35F948;
  if (!*(qword_35F948 + 16))
  {
    return 0;
  }

  v54 = v20;
  v55 = v22;
  v53 = v21;
  v24 = sub_4F808(v0);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v43 = v17;
  v44 = v6;
  v45 = v4;
  v26 = *(*(v23 + 56) + 8 * v24);
  v52 = enum case for Calendar.Identifier.gregorian(_:);
  v51 = *(v11 + 104);
  v51(v13);
  sub_2C8EE0();
  v27 = *(v11 + 8);
  v49 = v11 + 8;
  v50 = v27;
  v27(v13, v10);
  v46 = sub_2C8F20();
  v28 = *(v46 - 8);
  v47 = *(v28 + 56);
  v48 = v28 + 56;
  v47(v16, 0, 1, v46);
  v29 = sub_2C8F40();
  v30 = *(*(v29 - 8) + 56);
  v30(v9, 1, 1, v29);
  sub_2C8CA0();
  (v51)(v13, v52, v10);
  sub_2C8EE0();
  v50(v13, v10);
  v47(v16, 0, 1, v46);
  result = (v30)(v9, 1, 1, v29);
  if (__OFADD__(v26, 9))
  {
    __break(1u);
  }

  else
  {
    v32 = v53;
    sub_2C8CA0();
    sub_2AB8FC();
    v33 = v54;
    v34 = *(v54 + 16);
    v35 = v43;
    v36 = v44;
    v34(v44, v55, v43);
    v37 = *(v33 + 56);
    v37(v36, 0, 1, v35);
    v38 = v45;
    v34(v45, v32, v35);
    v37(v38, 0, 1, v35);
    v39 = sub_2AAEFC(v36, v38);
    v40 = *(v33 + 8);
    v40(v32, v35);
    v40(v55, v35);
    return v39;
  }

  return result;
}