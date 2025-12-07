uint64_t sub_24B0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v54 = a1;
  v5 = sub_2CE000();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v56 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v47 - v12;
  v14 = v3[5];
  v52 = v3[4];
  v15 = v3[6];
  v53 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v57 = v13;
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v48 = v8;
  v20 = *(v8 + 32);
  v55 = v7;
  v20(v19 + v17, v11);
  v21 = (v19 + v18);
  *v21 = v49;
  v21[1] = a3;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v49 = v14;
  *(v23 + 32) = v14;
  *(v23 + 40) = v15;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "NoSpeakerFound");
  *(v23 + 87) = -18;

  LOBYTE(v45) = 2;
  sub_2CDF90(v22, &dword_0, v16, "catServiceExecute", 17, 2, v57, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v45, v23);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D80;
  *(v25 + 24) = v19;
  v47[0] = v25;
  v47[1] = v19;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v51;
  v28 = sub_3ED0(v51, static Logger.default);
  swift_beginAccess();
  v29 = v50;
  v30 = v56;
  (*(v50 + 16))(v56, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v49;
    *(v33 + 4) = sub_3F08(v49, v15, &v58);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x656B616570536F4ELL, 0xEE00646E756F4672, &v58);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v56, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v34 = v49;
  }

  v58 = v34;
  v59 = v15;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x656B616570536F4ELL;
  v61._object = 0xEE00646E756F4672;
  sub_2CE350(v61);
  v36 = v58;
  v35 = v59;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v47[0];
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v53;
  v47[-10] = v52;
  v47[-9] = v41;
  v42 = v54;
  v47[-8] = 0;
  v47[-7] = v42;
  v47[-6] = 0;
  v47[-5] = v36;
  v44 = v35;
  v45 = sub_3E06C;
  v46 = v39;

  sub_2CB0F0();

  return (*(v48 + 8))(v57, v55);
}

uint64_t sub_24B760(uint64_t a1, char *a2, char *a3)
{
  v50 = a2;
  v55 = a1;
  v5 = sub_2CE000();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = v3[5];
  v53 = v3[4];
  v47 = v3[6];
  v59 = 0x80000000002E01F0;
  v54 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v15 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "catServiceExecute";
  *(v18 + 24) = 17;
  *(v18 + 32) = 2;
  v56 = v8;
  v57 = v7;
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = (v18 + v17);
  *v19 = v50;
  v19[1] = a3;

  v20 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D0E40;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_1087C();
  v49 = v14;
  *(v21 + 32) = v14;
  v23 = v47;
  *(v21 + 40) = v47;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 64) = v22;
  *(v21 + 72) = 0xD000000000000015;
  *(v21 + 80) = v59;

  LOBYTE(v45) = 2;
  v50 = v13;
  sub_2CDF90(v20, &dword_0, v15, "catServiceExecute", 17, 2, v13, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v45, v21);

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D80;
  *(v24 + 24) = v18;
  v48 = v24;
  v25 = qword_34BF58;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v52;
  v27 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v28 = v51;
  v29 = v58;
  (*(v51 + 16))(v58, v27, v26);

  v30 = sub_2CDFE0();
  v31 = sub_2CE660();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = v49;
    *(v32 + 4) = sub_3F08(v49, v23, &v60);
    *(v32 + 12) = 2080;
    v34 = v59;
    *(v32 + 14) = sub_3F08(0xD000000000000015, v59, &v60);
    _os_log_impl(&dword_0, v30, v31, "Evaluating CAT family:%s id:%s...", v32, 0x16u);
    swift_arrayDestroy();

    (*(v28 + 8))(v58, v26);
  }

  else
  {

    (*(v28 + 8))(v29, v26);
    v34 = v59;
    v33 = v49;
  }

  v60 = v33;
  v61 = v23;

  v62._countAndFlagsBits = 35;
  v62._object = 0xE100000000000000;
  sub_2CE350(v62);
  v63._countAndFlagsBits = 0xD000000000000015;
  v63._object = v34;
  sub_2CE350(v63);
  v36 = v60;
  v35 = v61;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v48;
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v54;
  *(&v47 - 10) = v53;
  *(&v47 - 9) = v41;
  v42 = v55;
  *(&v47 - 8) = 0;
  *(&v47 - 7) = v42;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v36;
  v44 = v35;
  v45 = sub_3E06C;
  v46 = v39;

  sub_2CB0F0();

  return (*(v56 + 8))(v50, v57);
}

uint64_t sub_24BDEC(uint64_t a1, char *a2, char *a3)
{
  v50 = a2;
  v55 = a1;
  v5 = sub_2CE000();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v58 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = v3[5];
  v53 = v3[4];
  v47 = v3[6];
  v59 = 0x80000000002E01D0;
  v54 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v15 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v16 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "catServiceExecute";
  *(v18 + 24) = 17;
  *(v18 + 32) = 2;
  v56 = v8;
  v57 = v7;
  (*(v8 + 32))(v18 + v16, v11, v7);
  v19 = (v18 + v17);
  *v19 = v50;
  v19[1] = a3;

  v20 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2D0E40;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_1087C();
  v49 = v14;
  *(v21 + 32) = v14;
  v23 = v47;
  *(v21 + 40) = v47;
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 64) = v22;
  *(v21 + 72) = 0xD000000000000011;
  *(v21 + 80) = v59;

  LOBYTE(v45) = 2;
  v50 = v13;
  sub_2CDF90(v20, &dword_0, v15, "catServiceExecute", 17, 2, v13, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v45, v21);

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D80;
  *(v24 + 24) = v18;
  v48 = v24;
  v25 = qword_34BF58;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v52;
  v27 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v28 = v51;
  v29 = v58;
  (*(v51 + 16))(v58, v27, v26);

  v30 = sub_2CDFE0();
  v31 = sub_2CE660();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = v49;
    *(v32 + 4) = sub_3F08(v49, v23, &v60);
    *(v32 + 12) = 2080;
    v34 = v59;
    *(v32 + 14) = sub_3F08(0xD000000000000011, v59, &v60);
    _os_log_impl(&dword_0, v30, v31, "Evaluating CAT family:%s id:%s...", v32, 0x16u);
    swift_arrayDestroy();

    (*(v28 + 8))(v58, v26);
  }

  else
  {

    (*(v28 + 8))(v29, v26);
    v34 = v59;
    v33 = v49;
  }

  v60 = v33;
  v61 = v23;

  v62._countAndFlagsBits = 35;
  v62._object = 0xE100000000000000;
  sub_2CE350(v62);
  v63._countAndFlagsBits = 0xD000000000000011;
  v63._object = v34;
  sub_2CE350(v63);
  v36 = v60;
  v35 = v61;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13DB4;
  v39[4] = v48;
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v54;
  *(&v47 - 10) = v53;
  *(&v47 - 9) = v41;
  v42 = v55;
  *(&v47 - 8) = 0;
  *(&v47 - 7) = v42;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v36;
  v44 = v35;
  v45 = sub_3E06C;
  v46 = v39;

  sub_2CB0F0();

  return (*(v56 + 8))(v50, v57);
}

uint64_t sub_24C478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E01A0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000026;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000026, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000026;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24CAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0180;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000013;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000013, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000013;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_24D1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0160;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD000000000000011;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD000000000000011, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD000000000000011;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24D82C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = v5[5];
  v56 = v5[4];
  v63 = v16;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v57 = v10;
  v20 = *(v10 + 32);
  v61 = v9;
  v20(v19 + v18, v13);
  v21 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v53;
  v21[1] = a5;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "SafetySelfHarm");
  *(v23 + 87) = -18;

  LOBYTE(v47) = 2;
  v53 = v15;
  sub_2CDF90(v22, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v51 = v26;
  v52 = v19;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x6553797465666153, 0xEE006D726148666CLL, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x6553797465666153;
  v67._object = 0xEE006D726148666CLL;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_24DEC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v52 = a3;
  v56 = a1;
  v57 = a2;
  v6 = sub_2CE000();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = v4[5];
  v55 = v4[4];
  v48 = v4[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v60 = v14;
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v51 = v9;
  v20 = *(v9 + 32);
  v58 = v8;
  v20(v19 + v17, v12);
  v21 = (v19 + v18);
  *v21 = v52;
  v21[1] = a4;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v50 = v15;
  *(v23 + 32) = v15;
  v25 = v48;
  *(v23 + 40) = v48;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0xD000000000000013;
  v52 = 0x80000000002E0140;
  *(v23 + 80) = 0x80000000002E0140;

  LOBYTE(v46) = 2;
  sub_2CDF90(v22, &dword_0, v16, "catServiceExecute", 17, 2, v60, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v46, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v49 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v54;
  v29 = sub_3ED0(v54, static Logger.default);
  swift_beginAccess();
  v30 = v53;
  v31 = v59;
  (*(v53 + 16))(v59, v29, v28);

  v32 = sub_2CDFE0();
  v33 = sub_2CE660();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v50;
    *(v34 + 4) = sub_3F08(v50, v25, &v61);
    *(v34 + 12) = 2080;
    v36 = v52;
    *(v34 + 14) = sub_3F08(0xD000000000000013, v52, &v61);
    _os_log_impl(&dword_0, v32, v33, "Evaluating CAT family:%s id:%s...", v34, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v59, v28);
  }

  else
  {

    (*(v30 + 8))(v31, v28);
    v36 = v52;
    v35 = v50;
  }

  v61 = v35;
  v62 = v25;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0xD000000000000013;
  v64._object = v36;
  sub_2CE350(v64);
  v38 = v61;
  v37 = v62;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v49;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  *(&v48 - 10) = v55;
  *(&v48 - 9) = &_swiftEmptyDictionarySingleton;
  v43 = v57;
  *(&v48 - 8) = v56;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = 0;
  *(&v48 - 5) = v38;
  v45 = v37;
  v46 = sub_3E06C;
  v47 = v41;

  sub_2CB0F0();

  return (*(v51 + 8))(v60, v58);
}

uint64_t sub_24E540(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = v5[5];
  v56 = v5[4];
  v63 = v16;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v57 = v10;
  v20 = *(v10 + 32);
  v61 = v9;
  v20(v19 + v18, v13);
  v21 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v53;
  v21[1] = a5;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "ReLoginToMusic");
  *(v23 + 87) = -18;

  LOBYTE(v47) = 2;
  v53 = v15;
  sub_2CDF90(v22, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v51 = v26;
  v52 = v19;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x546E69676F4C6552, 0xEE00636973754D6FLL, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x546E69676F4C6552;
  v67._object = 0xEE00636973754D6FLL;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_24EBD4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v52 = a3;
  v56 = a1;
  v57 = a2;
  v6 = sub_2CE000();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = v4[5];
  v55 = v4[4];
  v48 = v4[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v60 = v14;
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v51 = v9;
  v20 = *(v9 + 32);
  v58 = v8;
  v20(v19 + v17, v12);
  v21 = (v19 + v18);
  *v21 = v52;
  v21[1] = a4;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v50 = v15;
  *(v23 + 32) = v15;
  v25 = v48;
  *(v23 + 40) = v48;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0xD000000000000018;
  v52 = 0x80000000002E0120;
  *(v23 + 80) = 0x80000000002E0120;

  LOBYTE(v46) = 2;
  sub_2CDF90(v22, &dword_0, v16, "catServiceExecute", 17, 2, v60, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v46, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v49 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v54;
  v29 = sub_3ED0(v54, static Logger.default);
  swift_beginAccess();
  v30 = v53;
  v31 = v59;
  (*(v53 + 16))(v59, v29, v28);

  v32 = sub_2CDFE0();
  v33 = sub_2CE660();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v50;
    *(v34 + 4) = sub_3F08(v50, v25, &v61);
    *(v34 + 12) = 2080;
    v36 = v52;
    *(v34 + 14) = sub_3F08(0xD000000000000018, v52, &v61);
    _os_log_impl(&dword_0, v32, v33, "Evaluating CAT family:%s id:%s...", v34, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v59, v28);
  }

  else
  {

    (*(v30 + 8))(v31, v28);
    v36 = v52;
    v35 = v50;
  }

  v61 = v35;
  v62 = v25;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0xD000000000000018;
  v64._object = v36;
  sub_2CE350(v64);
  v38 = v61;
  v37 = v62;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v49;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  *(&v48 - 10) = v55;
  *(&v48 - 9) = &_swiftEmptyDictionarySingleton;
  v43 = v57;
  *(&v48 - 8) = v56;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = 0;
  *(&v48 - 5) = v38;
  v45 = v37;
  v46 = sub_3E06C;
  v47 = v41;

  sub_2CB0F0();

  return (*(v51 + 8))(v60, v58);
}

uint64_t sub_24F254(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v52 = a3;
  v56 = a1;
  v57 = a2;
  v6 = sub_2CE000();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v59 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = v4[5];
  v55 = v4[4];
  v48 = v4[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v60 = v14;
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v51 = v9;
  v20 = *(v9 + 32);
  v58 = v8;
  v20(v19 + v17, v12);
  v21 = (v19 + v18);
  *v21 = v52;
  v21[1] = a4;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v50 = v15;
  *(v23 + 32) = v15;
  v25 = v48;
  *(v23 + 40) = v48;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0xD000000000000021;
  v52 = 0x80000000002E00F0;
  *(v23 + 80) = 0x80000000002E00F0;

  LOBYTE(v46) = 2;
  sub_2CDF90(v22, &dword_0, v16, "catServiceExecute", 17, 2, v60, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v46, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v49 = v26;
  v27 = qword_34BF58;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = v54;
  v29 = sub_3ED0(v54, static Logger.default);
  swift_beginAccess();
  v30 = v53;
  v31 = v59;
  (*(v53 + 16))(v59, v29, v28);

  v32 = sub_2CDFE0();
  v33 = sub_2CE660();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v50;
    *(v34 + 4) = sub_3F08(v50, v25, &v61);
    *(v34 + 12) = 2080;
    v36 = v52;
    *(v34 + 14) = sub_3F08(0xD000000000000021, v52, &v61);
    _os_log_impl(&dword_0, v32, v33, "Evaluating CAT family:%s id:%s...", v34, 0x16u);
    swift_arrayDestroy();

    (*(v30 + 8))(v59, v28);
  }

  else
  {

    (*(v30 + 8))(v31, v28);
    v36 = v52;
    v35 = v50;
  }

  v61 = v35;
  v62 = v25;

  v63._countAndFlagsBits = 35;
  v63._object = 0xE100000000000000;
  sub_2CE350(v63);
  v64._countAndFlagsBits = 0xD000000000000021;
  v64._object = v36;
  sub_2CE350(v64);
  v38 = v61;
  v37 = v62;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v49;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  *(&v48 - 10) = v55;
  *(&v48 - 9) = &_swiftEmptyDictionarySingleton;
  v43 = v57;
  *(&v48 - 8) = v56;
  *(&v48 - 7) = v43;
  *(&v48 - 6) = 0;
  *(&v48 - 5) = v38;
  v45 = v37;
  v46 = sub_3E06C;
  v47 = v41;

  sub_2CB0F0();

  return (*(v51 + 8))(v60, v58);
}

uint64_t sub_24F8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E00D0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ELL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ELL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ELL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_24FF58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v53 = a4;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v7 = sub_2CE000();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = v5[5];
  v56 = v5[4];
  v63 = v16;
  v50 = v5[6];
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v57 = v10;
  v20 = *(v10 + 32);
  v61 = v9;
  v20(v19 + v18, v13);
  v21 = (v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = v53;
  v21[1] = a5;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v25 = v50;
  *(v23 + 32) = v63;
  *(v23 + 40) = v25;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  strcpy((v23 + 72), "WifiMismatch");
  *(v23 + 85) = 0;
  *(v23 + 86) = -5120;

  LOBYTE(v47) = 2;
  v53 = v15;
  sub_2CDF90(v22, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v47, v23);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_13D80;
  *(v26 + 24) = v19;
  v51 = v26;
  v52 = v19;
  v27 = qword_34BF58;

  v28 = v25;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v55;
  v30 = sub_3ED0(v55, static Logger.default);
  swift_beginAccess();
  v31 = v54;
  v32 = v62;
  (*(v54 + 16))(v62, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = v63;
    *(v35 + 4) = sub_3F08(v63, v28, &v64);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_3F08(0x6D73694D69666957, 0xEC00000068637461, &v64);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v35, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v62, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v36 = v63;
  }

  v64 = v36;
  v65 = v28;

  v66._countAndFlagsBits = 35;
  v66._object = 0xE100000000000000;
  sub_2CE350(v66);
  v67._countAndFlagsBits = 0x6D73694D69666957;
  v67._object = 0xEC00000068637461;
  sub_2CE350(v67);
  v38 = v64;
  v37 = v65;
  v39 = sub_2CB460();
  if (!v39)
  {
    sub_2CB180();
    v39 = sub_2CB170();
  }

  v40 = v39;
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = sub_13DB4;
  v41[4] = v51;
  v42 = sub_2CB180();
  __chkstk_darwin(v42);
  v44 = v58;
  v43 = v59;
  *(&v49 - 10) = v56;
  *(&v49 - 9) = v44;
  *(&v49 - 8) = v43;
  *(&v49 - 7) = v60;
  *(&v49 - 6) = 0;
  *(&v49 - 5) = v38;
  v46 = v37;
  v47 = sub_3E06C;
  v48 = v41;

  sub_2CB0F0();

  return (*(v57 + 8))(v53, v61);
}

uint64_t sub_2505E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E00B0;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001BLL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001BLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001BLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_250C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v64 = a3;
  v62 = a1;
  v8 = sub_2CE000();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CDFD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = v5[5];
  v60 = v5[4];
  v55 = v17;
  v18 = v5[6];
  v67 = 0x80000000002E0090;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = qword_34BF98;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_35F760;
  sub_2CDFB0();
  (*(v11 + 16))(v14, v16, v10);
  v22 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v68 = v16;
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = "catServiceExecute";
  *(v24 + 24) = 17;
  *(v24 + 32) = 2;
  v57 = v11;
  v25 = *(v11 + 32);
  v65 = v10;
  v25(v24 + v22, v14);
  v26 = (v24 + v23);
  *v26 = sub_2535A8;
  v26[1] = v19;
  v61 = v19;

  v27 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2D0E40;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_1087C();
  v30 = v55;
  *(v28 + 32) = v55;
  *(v28 + 40) = v18;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = 0xD000000000000017;
  *(v28 + 80) = v67;

  LOBYTE(v52) = 2;
  sub_2CDF90(v27, &dword_0, v21, "catServiceExecute", 17, 2, v68, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v52, v28);

  v31 = swift_allocObject();
  *(v31 + 16) = sub_13D80;
  *(v31 + 24) = v24;
  v56 = v31;
  v32 = qword_34BF58;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = v59;
  v34 = sub_3ED0(v59, static Logger.default);
  swift_beginAccess();
  v35 = v58;
  v36 = v66;
  (*(v58 + 16))(v66, v34, v33);

  v37 = sub_2CDFE0();
  v38 = sub_2CE660();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_3F08(v30, v18, &v69);
    *(v39 + 12) = 2080;
    v40 = v67;
    *(v39 + 14) = sub_3F08(0xD000000000000017, v67, &v69);
    _os_log_impl(&dword_0, v37, v38, "Evaluating CAT family:%s id:%s...", v39, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v66, v33);
  }

  else
  {

    (*(v35 + 8))(v36, v33);
    v40 = v67;
  }

  v69 = v30;
  v70 = v18;

  v71._countAndFlagsBits = 35;
  v71._object = 0xE100000000000000;
  sub_2CE350(v71);
  v72._countAndFlagsBits = 0xD000000000000017;
  v72._object = v40;
  sub_2CE350(v72);
  v42 = v69;
  v41 = v70;
  v43 = sub_2CB460();
  if (!v43)
  {
    sub_2CB180();
    v43 = sub_2CB170();
  }

  v44 = v43;
  v45 = v57;
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = sub_13DB4;
  v46[4] = v56;
  v47 = sub_2CB180();
  __chkstk_darwin(v47);
  v49 = v62;
  v48 = v63;
  *(&v54 - 10) = v60;
  *(&v54 - 9) = v49;
  *(&v54 - 8) = v48;
  *(&v54 - 7) = v64;
  *(&v54 - 6) = 0;
  *(&v54 - 5) = v42;
  v51 = v41;
  v52 = sub_3E06C;
  v53 = v46;

  sub_2CB0F0();

  return (*(v45 + 8))(v68, v65);
}

uint64_t sub_251318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v60 = a5;
  v59 = a4;
  v66 = a2;
  v67 = a3;
  v8 = sub_2CE000();
  v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2CDFD0();
  v68 = *(v70 - 8);
  v11 = *(v68 + 64);
  v12 = __chkstk_darwin(v70);
  v13 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v57 - v14;
  v75 = a1;
  v15 = sub_2CC8E0();

  sub_2CBC60();
  sub_35E0(v73, v74);
  sub_2CBE60();
  sub_306C(v73);
  v16 = sub_2CC8D0();

  if (v16)
  {
    v72 = v15;
    *&v71 = v16;
    sub_2CC230();
    v17 = sub_2CC210();
    sub_270DC4(&v71, v17, v18, v73);

    sub_30B8(v73, &qword_34CEA0, &qword_2D0FC0);
  }

  v63 = v10;
  v65 = v8;
  v72 = &type metadata for Bool;
  LOBYTE(v71) = v16 != 0;
  sub_2CC230();
  v19 = sub_2CC200();
  sub_270DC4(&v71, v19, v20, v73);

  sub_30B8(v73, &qword_34CEA0, &qword_2D0FC0);
  v21 = v6[5];
  v61 = v6[4];
  v57 = v6[6];
  v62 = v75;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v22 = qword_35F760;
  v23 = v69;
  sub_2CDFB0();
  v24 = v68;
  v25 = v70;
  (*(v68 + 16))(v13, v23, v70);
  v26 = (*(v24 + 80) + 33) & ~*(v24 + 80);
  v27 = (v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = "catServiceExecute";
  *(v28 + 24) = 17;
  *(v28 + 32) = 2;
  (*(v24 + 32))(v28 + v26, v13, v25);
  v29 = (v28 + v27);
  v30 = v60;
  *v29 = v59;
  v29[1] = v30;

  v31 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2D0E40;
  *(v32 + 56) = &type metadata for String;
  v33 = sub_1087C();
  v60 = v21;
  *(v32 + 32) = v21;
  v34 = v57;
  *(v32 + 40) = v57;
  *(v32 + 96) = &type metadata for String;
  *(v32 + 104) = v33;
  *(v32 + 64) = v33;
  *(v32 + 72) = 0xD000000000000014;
  *(v32 + 80) = 0x80000000002E0070;

  LOBYTE(v55) = 2;
  sub_2CDF90(v31, &dword_0, v22, "catServiceExecute", 17, 2, v23, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v55, v32);

  v35 = swift_allocObject();
  *(v35 + 16) = sub_13D80;
  *(v35 + 24) = v28;
  v58 = v35;
  v36 = qword_34BF58;
  v59 = v28;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = v65;
  v38 = sub_3ED0(v65, static Logger.default);
  swift_beginAccess();
  v40 = v63;
  v39 = v64;
  (*(v64 + 16))(v63, v38, v37);

  v41 = sub_2CDFE0();
  v42 = sub_2CE660();

  v43 = v34;
  if (os_log_type_enabled(v41, v42))
  {
    v44 = swift_slowAlloc();
    *&v71 = swift_slowAlloc();
    *v44 = 136315394;
    v45 = v60;
    *(v44 + 4) = sub_3F08(v60, v43, &v71);
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_3F08(0xD000000000000014, 0x80000000002E0070, &v71);
    _os_log_impl(&dword_0, v41, v42, "Evaluating CAT family:%s id:%s...", v44, 0x16u);
    swift_arrayDestroy();

    (*(v39 + 8))(v40, v37);
  }

  else
  {

    (*(v39 + 8))(v40, v37);
    v45 = v60;
  }

  *&v71 = v45;
  *(&v71 + 1) = v43;

  v76._countAndFlagsBits = 35;
  v76._object = 0xE100000000000000;
  sub_2CE350(v76);
  v77._countAndFlagsBits = 0xD000000000000014;
  v77._object = 0x80000000002E0070;
  sub_2CE350(v77);
  v46 = v71;
  v47 = sub_2CB460();
  if (!v47)
  {
    sub_2CB180();
    v47 = sub_2CB170();
  }

  v48 = v47;
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = sub_13DB4;
  v49[4] = v58;
  v50 = sub_2CB180();
  __chkstk_darwin(v50);
  v51 = v62;
  *(&v57 - 10) = v61;
  *(&v57 - 9) = v51;
  v52 = v67;
  *(&v57 - 8) = v66;
  *(&v57 - 7) = v52;
  *(&v57 - 6) = 0;
  *(&v57 - 5) = v46;
  v54 = *(&v46 + 1);
  v55 = sub_3E06C;
  v56 = v49;

  sub_2CB0F0();

  return (*(v68 + 8))(v69, v70);
}

uint64_t sub_251B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0050;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001ALL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001ALL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001ALL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_252194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002DC030;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000001DLL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000001DLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000001DLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_252818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v61 = a2;
  v62 = a3;
  v60 = a1;
  v7 = sub_2CE000();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CDFD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = v5[5];
  v58 = v5[4];
  v52 = v5[6];
  v65 = 0x80000000002E0020;
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v59 = v10;
  v21 = *(v10 + 32);
  v63 = v9;
  v21(v20 + v18, v13);
  v22 = (v20 + v19);
  *v22 = v55;
  v22[1] = a5;

  v23 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2D0E40;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_1087C();
  v55 = v16;
  *(v24 + 32) = v16;
  v26 = v52;
  *(v24 + 40) = v52;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = 0xD00000000000002BLL;
  *(v24 + 80) = v65;

  LOBYTE(v49) = 2;
  v54 = v15;
  sub_2CDF90(v23, &dword_0, v17, "catServiceExecute", 17, 2, v15, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v49, v24);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_13D80;
  *(v27 + 24) = v20;
  v53 = v27;
  v28 = qword_34BF58;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v57;
  v30 = sub_3ED0(v57, static Logger.default);
  swift_beginAccess();
  v31 = v56;
  v32 = v64;
  (*(v56 + 16))(v64, v30, v29);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = v26;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = v55;
    *(v36 + 4) = sub_3F08(v55, v35, &v66);
    *(v36 + 12) = 2080;
    v38 = v65;
    *(v36 + 14) = sub_3F08(0xD00000000000002BLL, v65, &v66);
    _os_log_impl(&dword_0, v33, v34, "Evaluating CAT family:%s id:%s...", v36, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v64, v29);
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v38 = v65;
    v37 = v55;
  }

  v66 = v37;
  v67 = v35;

  v68._countAndFlagsBits = 35;
  v68._object = 0xE100000000000000;
  sub_2CE350(v68);
  v69._countAndFlagsBits = 0xD00000000000002BLL;
  v69._object = v38;
  sub_2CE350(v69);
  v40 = v66;
  v39 = v67;
  v41 = sub_2CB460();
  if (!v41)
  {
    sub_2CB180();
    v41 = sub_2CB170();
  }

  v42 = v41;
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = sub_13DB4;
  v43[4] = v53;
  v44 = sub_2CB180();
  __chkstk_darwin(v44);
  v46 = v60;
  v45 = v61;
  *(&v51 - 10) = v58;
  *(&v51 - 9) = v46;
  *(&v51 - 8) = v45;
  *(&v51 - 7) = v62;
  *(&v51 - 6) = 0;
  *(&v51 - 5) = v40;
  v48 = v39;
  v49 = sub_3E06C;
  v50 = v43;

  sub_2CB0F0();

  return (*(v59 + 8))(v54, v63);
}

uint64_t sub_252E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v53 = a1;
  v5 = sub_2CE000();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CDFD0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v46 - v12;
  v14 = v3[5];
  v51 = v3[4];
  v15 = v3[6];
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v52 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v16 = qword_35F760;
  sub_2CDFB0();
  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v56 = v13;
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = "catServiceExecute";
  *(v19 + 24) = 17;
  *(v19 + 32) = 2;
  v47 = v8;
  v20 = *(v8 + 32);
  v54 = v7;
  v20(v19 + v17, v11);
  v21 = (v19 + v18);
  *v21 = v48;
  v21[1] = a3;

  v22 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2D0E40;
  *(v23 + 56) = &type metadata for String;
  v24 = sub_1087C();
  v48 = v14;
  *(v23 + 32) = v14;
  *(v23 + 40) = v15;
  *(v23 + 96) = &type metadata for String;
  *(v23 + 104) = v24;
  *(v23 + 64) = v24;
  *(v23 + 72) = 0x704F746F6E6E6143;
  *(v23 + 80) = 0xEF7070416E4F6E65;

  LOBYTE(v44) = 2;
  sub_2CDF90(v22, &dword_0, v16, "catServiceExecute", 17, 2, v56, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v44, v23);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13D7C;
  *(v25 + 24) = v19;
  v46[0] = v25;
  v26 = qword_34BF58;
  v46[1] = v19;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v50;
  v28 = sub_3ED0(v50, static Logger.default);
  swift_beginAccess();
  v29 = v49;
  v30 = v55;
  (*(v49 + 16))(v55, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v48;
    *(v33 + 4) = sub_3F08(v48, v15, &v57);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_3F08(0x704F746F6E6E6143, 0xEF7070416E4F6E65, &v57);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v55, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v34 = v48;
  }

  v57 = v34;
  v58 = v15;

  v61._countAndFlagsBits = 35;
  v61._object = 0xE100000000000000;
  sub_2CE350(v61);
  v62._countAndFlagsBits = 0x704F746F6E6E6143;
  v62._object = 0xEF7070416E4F6E65;
  sub_2CE350(v62);
  v36 = v57;
  v35 = v58;
  v37 = sub_2CB460();
  if (!v37)
  {
    sub_2CB180();
    v37 = sub_2CB170();
  }

  v38 = v37;
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = sub_13D84;
  v39[4] = v46[0];
  v40 = sub_2CB180();
  __chkstk_darwin(v40);
  v41 = v52;
  v46[-10] = v51;
  v46[-9] = v41;
  v46[-8] = v53;
  v46[-7] = v59;
  v46[-6] = 0;
  v46[-5] = v36;
  v43 = v35;
  v44 = sub_3E010;
  v45 = v39;

  sub_2CB0F0();

  (*(v47 + 8))(v56, v54);
  return sub_30B8(v59, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_253564(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_253624@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v77 = a1;
  v78 = a2;
  v2 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  __chkstk_darwin(v2 - 8);
  v71 = &v63 - v3;
  v4 = sub_2CD490();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = __chkstk_darwin(v4);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v63 - v7;
  v75 = sub_2CA870();
  v8 = *(v75 - 8);
  __chkstk_darwin(v75);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v70 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v68 = &v63 - v16;
  v17 = __chkstk_darwin(v15);
  v65 = &v63 - v18;
  v19 = __chkstk_darwin(v17);
  v64 = &v63 - v20;
  v21 = __chkstk_darwin(v19);
  v66 = &v63 - v22;
  v23 = __chkstk_darwin(v21);
  v67 = &v63 - v24;
  __chkstk_darwin(v23);
  v26 = &v63 - v25;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  v76 = *(v12 + 16);
  v76(v26, v27, v11);
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "CommonNeedsConfirmationStrategy#actionForInput...", v30, 2u);
  }

  v31 = *(v12 + 8);
  v32 = v11;
  v31(v26, v11);
  sub_2CA790();
  v33 = sub_D1D64(v10, &v79);
  (*(v8 + 8))(v10, v75, v33);
  if (v80)
  {
    sub_F338(&v79, v81);
    sub_35E0(v81, v81[3]);
    v34 = v71;
    sub_2CD480();
    v36 = v73;
    v35 = v74;
    if ((*(v73 + 48))(v34, 1, v74) == 1)
    {
      sub_30B8(v34, &qword_34CCE8, &unk_2D0E20);
      v37 = v68;
      v76(v68, v27, v11);
      v38 = sub_2CDFE0();
      v39 = sub_2CE680();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "CommonNeedsConfirmationStrategy#actionForInput unable to get confirmation state from intent, ignoring...", v40, 2u);
      }

      v31(v37, v11);
      sub_2C9CF0();
      return sub_306C(v81);
    }

    v46 = v72;
    (*(v36 + 32))(v72, v34, v35);
    v47 = v69;
    (*(v36 + 16))(v69, v46, v35);
    v48 = (*(v36 + 88))(v47, v35);
    if (v48 == enum case for CommonAudio.Confirmation.yes(_:))
    {
      v76(v67, v27, v32);
      v49 = sub_2CDFE0();
      v50 = sub_2CE690();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_0, v49, v50, "CommonNeedsConfirmationStrategy#actionForInput request is confirmed", v51, 2u);
      }

      v52 = &v83;
    }

    else
    {
      if (v48 != enum case for CommonAudio.Confirmation.no(_:))
      {
        if (v48 != enum case for CommonAudio.Confirmation.cancel(_:))
        {
          v76(v65, v27, v32);
          v59 = sub_2CDFE0();
          v60 = sub_2CE680();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_0, v59, v60, "CommonNeedsConfirmationStrategy#actionForInput no valid confirmation in the intent, ignoring", v61, 2u);
          }

          v31(v65, v32);
          sub_2C9CF0();
          v62 = *(v36 + 8);
          v62(v72, v35);
          v62(v69, v35);
          return sub_306C(v81);
        }

        v76(v64, v27, v32);
        v56 = sub_2CDFE0();
        v57 = sub_2CE690();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_0, v56, v57, "CommonNeedsConfirmationStrategy#actionForInput request is cancelled", v58, 2u);
        }

        v31(v64, v32);
        sub_2C9CD0();
        goto LABEL_22;
      }

      v76(v66, v27, v32);
      v53 = sub_2CDFE0();
      v54 = sub_2CE690();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_0, v53, v54, "CommonNeedsConfirmationStrategy#actionForInput request is rejected", v55, 2u);
      }

      v52 = &v82;
    }

    v31(*(v52 - 32), v32);
    sub_2C9CE0();
LABEL_22:
    (*(v36 + 8))(v72, v35);
    return sub_306C(v81);
  }

  sub_30B8(&v79, &qword_34CCF0, &unk_2D1270);
  v41 = v70;
  v76(v70, v27, v11);
  v42 = sub_2CDFE0();
  v43 = sub_2CE680();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_0, v42, v43, "CommonNeedsConfirmationStrategy#actionForInput unable to make confirmation intent from parse, ignoring...", v44, 2u);
  }

  v31(v41, v32);
  return sub_2C9CF0();
}

uint64_t sub_254018(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a7;
  v51 = a6;
  v52 = a1;
  v12 = *v7;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2CDFE0();
  v19 = sub_2CE670();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v50 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v49 = v12;
    v23 = v22;
    v55 = v22;
    *v21 = 136446210;
    v24 = sub_2CCCA0();
    v47 = v13;
    v48 = a3;
    v26 = v14;
    v27 = a5;
    v28 = sub_3F08(v24, v25, &v55);
    a3 = v48;

    *(v21 + 4) = v28;
    a5 = v27;
    _os_log_impl(&dword_0, v18, v19, "CommonNeedsConfirmationStrategy#confirmationOutputContext... Insights:%{public}s", v21, 0xCu);
    sub_306C(v23);
    v12 = v49;

    a4 = v50;

    (*(v26 + 8))(v16, v47);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v30 = *(v12 + 80);
  v31 = *(v12 + 88);
  type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, v30, v31, v29);
  v32 = swift_allocBox();
  sub_2546BC(v30, v31, v33, v34);
  v35 = v53;
  v50 = *(v53 + 208);
  sub_20410(&qword_34F2A8, &qword_2D4990);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2D10E0;
  v37 = swift_allocObject();
  v38 = v52;
  v37[2] = v35;
  v37[3] = v38;
  v37[4] = a4;
  v37[5] = a5;
  v37[6] = a3;
  v37[7] = a2;
  v37[8] = v32;
  *(v36 + 32) = sub_25F75C;
  *(v36 + 40) = v37;
  v39 = swift_allocObject();
  v39[2] = v35;
  v39[3] = v38;
  v39[4] = a2;
  v39[5] = a3;
  v39[6] = a4;
  v39[7] = a5;
  v39[8] = v32;
  *(v36 + 48) = sub_25F774;
  *(v36 + 56) = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  *(v40 + 24) = v35;
  *(v36 + 64) = sub_25F7A8;
  *(v36 + 72) = v40;
  v41 = swift_allocObject();
  v41[2] = v30;
  v41[3] = v31;
  v42 = v51;
  v41[4] = v32;
  v41[5] = v42;
  v41[6] = v54;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v43 = a3;
  v44 = a2;
  v45 = v43;

  sub_2CCC70();
}

uint64_t sub_254468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v25 = a5;
  v26 = a6;
  v27 = a3;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v16, v17, "CommonNeedsConfirmationStrategy#makeIntentCancelledByParameterRejectionResponse...", v18, 2u);
  }

  (*(v12 + 8))(v14, v11);
  v19 = swift_allocObject();
  v21 = v26;
  v20 = v27;
  *(v19 + 16) = v27;
  *(v19 + 24) = a4;
  *(v19 + 32) = v7;
  *(v19 + 40) = a1;
  v22 = v25;
  *(v19 + 48) = a2;
  *(v19 + 56) = v22;
  *(v19 + 64) = v21;

  v23 = a2;

  sub_284914(a1, v20, a4, sub_25F748, v19);
}

uint64_t sub_2546BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, uint64_t a4@<X3>)
{
  *a3 = 0;
  v5 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, a1, a2, a4);
  v6 = v5[9];
  v7 = sub_2CD230();
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *&a3[v5[10]] = 0;
  v8 = v5[11];
  v9 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = v5[12];
  v11 = sub_2CA000();
  v12 = *(*(v11 - 8) + 56);

  return v12(&a3[v10], 1, 1, v11);
}

uint64_t sub_2547E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v86 = a8;
  v82 = a5;
  v84 = a4;
  v83 = a3;
  v87 = a1;
  v85 = a10;
  v14 = *a6;
  v15 = sub_20410(&unk_353020, &unk_2D0970);
  v72 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v73 = &v70 - v16;
  v17 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v17 - 8);
  v81 = &v70 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v19 - 8);
  v80 = &v70 - v20;
  v21 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v21 - 8);
  v79 = (&v70 - v22);
  v78 = sub_2CCB30();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2CCAC0();
  v24 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v71 = a6;
    v72 = a9;
    v73 = a7;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v30 = sub_3ED0(v26, static Logger.default);
    swift_beginAccess();
    (*(v27 + 16))(v29, v30, v26);
    v31 = v87;
    swift_errorRetain();
    v32 = sub_2CDFE0();
    v33 = sub_2CE680();
    sub_1E1074(v31, 1);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v88[0] = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v36 = sub_2CEEF0();
      v38 = v24;
      v39 = sub_3F08(v36, v37, v88);

      *(v34 + 4) = v39;
      v24 = v38;
      _os_log_impl(&dword_0, v32, v33, "CommonNeedsConfirmationStrategy#makePromptForConfirmation Error creating views: %s", v34, 0xCu);
      sub_306C(v35);
    }

    (*(v27 + 8))(v29, v26);
    v40 = v71;
    v41 = v74;
    v42 = v76;
    (*(v24 + 104))(v74, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v76);
    v43 = v77;
    v44 = v24;
    v45 = v75;
    v46 = v78;
    (*(v77 + 104))(v75, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v78);
    v47 = v87;
    swift_getErrorValue();
    sub_2CEEF0();
    v84 = sub_2CCAF0();
    v83 = v48;

    (*(v43 + 8))(v45, v46);
    (*(v44 + 8))(v41, v42);
    v82 = sub_35E0(v40 + 13, v40[16]);
    v49 = enum case for ActivityType.failed(_:);
    v50 = sub_2C9C20();
    v51 = *(v50 - 8);
    v52 = v79;
    (*(v51 + 104))(v79, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    v53 = sub_2CA130();
    v54 = v80;
    (*(*(v53 - 8) + 56))(v80, 1, 1, v53);
    v55 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v56 = sub_2C98F0();
    v57 = *(v56 - 8);
    v58 = v81;
    (*(v57 + 104))(v81, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    sub_2CB4E0();

    sub_30B8(v58, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v54, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v52, &qword_34CB88, &unk_2D0D90);
    v88[0] = v47;
    v89 = 1;
    swift_errorRetain();
    (v72)(v88);
    return sub_30B8(v88, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v60 = v82;
    v79 = a6[2];
    v61 = v73;
    sub_F3F4(a11, v73, &unk_353020, &unk_2D0970);
    v62 = (*(v72 + 80) + 104) & ~*(v72 + 80);
    v63 = swift_allocObject();
    v63[2] = *(v14 + 80);
    v64 = v83;
    v63[3] = *(v14 + 88);
    v63[4] = v64;
    v65 = v84;
    v63[5] = v84;
    v63[6] = v60;
    v63[7] = a6;
    v63[8] = a7;
    v66 = v87;
    v63[9] = v86;
    v63[10] = a9;
    v63[11] = v85;
    v63[12] = v66;
    sub_14A58(v61, v63 + v62, &unk_353020, &unk_2D0970);
    v67 = (*v79 + 208);
    v81 = *v67;
    v80 = v67;
    sub_140154(v66, 0);

    v68 = v60;

    v69 = v86;

    (v81)(a7, v64, v65, v68, v69, sub_25F66C, v63);
  }
}

uint64_t sub_25521C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v109 = a8;
  v107 = a7;
  v106 = a6;
  v102 = a5;
  v101 = a4;
  v100 = a3;
  v99 = a2;
  v95 = a1;
  v108 = a9;
  v90 = sub_2CCB20();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2CA910();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v98 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v13 = __chkstk_darwin(v91);
  v92 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v85 - v15;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v16 - 8);
  v105 = &v85 - v17;
  v18 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v18 - 8);
  v104 = &v85 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v20 - 8);
  v103 = &v85 - v21;
  v96 = sub_2CCB30();
  v22 = *(v96 - 8);
  __chkstk_darwin(v96);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CCAC0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2CE000();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v31);
  v33 = (&v85 - v32);
  sub_F3F4(v95, &v85 - v32, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v97 = v28;
    v95 = v24;
    v94 = v26;
    v98 = v25;
    v93 = v22;
    v34 = *v33;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v35 = v87;
    v36 = sub_3ED0(v87, static Logger.default);
    swift_beginAccess();
    v37 = v86;
    (*(v86 + 16))(v30, v36, v35);
    swift_errorRetain();
    v38 = sub_2CDFE0();
    v39 = sub_2CE680();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v110 = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_2CEEF0();
      v44 = sub_3F08(v42, v43, &v110);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_0, v38, v39, "CommonNeedsConfirmationStrategy#makePromptForConfirmation Error creating the confirmation prompt dialog: %s", v40, 0xCu);
      sub_306C(v41);
    }

    (*(v37 + 8))(v30, v35);
    v45 = v102;
    v46 = v96;
    v47 = v93;
    v48 = v94;
    v49 = v97;
    v50 = v98;
    (*(v94 + 104))(v97, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v98);
    v51 = v95;
    (*(v47 + 104))(v95, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v46);
    swift_getErrorValue();
    sub_2CEEF0();
    v102 = sub_2CCAF0();
    v101 = v52;

    (*(v47 + 8))(v51, v46);
    (*(v48 + 8))(v49, v50);
    sub_35E0(v45 + 13, v45[16]);
    v53 = enum case for ActivityType.failed(_:);
    v54 = sub_2C9C20();
    v55 = *(v54 - 8);
    v56 = v103;
    (*(v55 + 104))(v103, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    v57 = sub_2CA130();
    v58 = v104;
    (*(*(v57 - 8) + 56))(v104, 1, 1, v57);
    v59 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v60 = sub_2C98F0();
    v61 = *(v60 - 8);
    v62 = v105;
    (*(v61 + 104))(v105, v59, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
    sub_2CB4E0();

    sub_30B8(v62, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v58, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v56, &qword_34CB88, &unk_2D0D90);
    *&v110 = v34;
    v113 = 1;
    swift_errorRetain();
    v109(&v110);
  }

  else
  {
    sub_14A58(v33, v97, &qword_34C6E8, &unk_2D0FF0);
    sub_2CB5B0();
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    sub_2C9DE0();
    sub_30B8(&v110, &qword_34CC80, &qword_2D1520);
    (*(v26 + 104))(v28, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v25);
    v63 = v96;
    (*(v22 + 104))(v24, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v96);
    v64 = v89;
    v65 = v88;
    v66 = v90;
    (*(v89 + 104))(v88, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v90);
    v101 = sub_2CCB00();
    (*(v64 + 8))(v65, v66);
    (*(v22 + 8))(v24, v63);
    (*(v26 + 8))(v28, v25);
    v102 = sub_35E0(v102 + 13, v102[16]);
    v67 = enum case for ActivityType.confirmation(_:);
    v68 = sub_2C9C20();
    v69 = *(v68 - 8);
    v70 = v103;
    (*(v69 + 104))(v103, v67, v68);
    (*(v69 + 56))(v70, 0, 1, v68);
    v71 = v97;
    v72 = v92;
    sub_F3F4(v97, v92, &qword_34C6E8, &unk_2D0FF0);

    v73 = sub_2CA130();
    v74 = *(v73 - 8);
    v75 = v104;
    (*(v74 + 32))(v104, v72, v73);
    (*(v74 + 56))(v75, 0, 1, v73);
    v76 = enum case for SiriKitReliabilityCodes.success(_:);
    v77 = sub_2C98F0();
    v78 = *(v77 - 8);
    v79 = v105;
    (*(v78 + 104))(v105, v76, v77);
    (*(v78 + 56))(v79, 0, 1, v77);
    sub_2CB4E0();

    sub_30B8(v79, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v75, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v70, &qword_34CB88, &unk_2D0D90);
    v80 = v94;
    *(&v111 + 1) = v94;
    v112 = &protocol witness table for AceOutput;
    v81 = sub_F390(&v110);
    v82 = v93;
    v83 = v98;
    (*(v93 + 16))(v81, v98, v80);
    v113 = 0;
    v109(&v110);
    (*(v82 + 8))(v83, v80);
    sub_30B8(v71, &qword_34C6E8, &unk_2D0FF0);
  }

  return sub_30B8(&v110, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_256110(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v22 = a1;
  v10 = *(*a2 + 88);
  v11 = *(*a2 + 80);
  v21 = v11;
  v12 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, v11, v10, a4);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  (*(v13 + 16))(&v21 - v14, a1, v12);
  v16 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v11;
  *(v17 + 3) = v10;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  v18 = v23;
  *(v17 + 6) = a4;
  *(v17 + 7) = v18;
  *(v17 + 8) = v24;
  (*(v13 + 32))(&v17[v16], v15, v12);

  v19 = a4;

  sub_25E470(v22, sub_25F2C8, v17, v21, v10);
}

uint64_t sub_2562E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v118 = a7;
  v139 = a6;
  v140 = a5;
  v137 = a4;
  v136 = a3;
  v8 = *a2;
  v127 = a2;
  v117 = v8;
  v9 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v9 - 8);
  v138 = &v112[-v10];
  v11 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v11 - 8);
  v119 = &v112[-v12];
  v13 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v14 = __chkstk_darwin(v13 - 8);
  v125 = &v112[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v122 = &v112[-v16];
  v17 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v18 = __chkstk_darwin(v17 - 8);
  v124 = &v112[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v135 = &v112[-v20];
  v116 = sub_2CCB20();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v112[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_2CCB30();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v132 = &v112[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = sub_2CCAC0();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v112[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v123 = &v112[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __chkstk_darwin(v28);
  v126 = &v112[-v31];
  __chkstk_darwin(v30);
  v33 = &v112[-v32];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v26, static Logger.default);
  swift_beginAccess();
  v35 = *(v27 + 16);
  v130 = v34;
  v129 = v27 + 16;
  v128 = v35;
  v35(v33, v34, v26);
  sub_F3F4(a1, v144, qword_34C798, &qword_2D0DA0);
  v36 = sub_2CDFE0();
  v37 = sub_2CE670();
  v38 = os_log_type_enabled(v36, v37);
  v141 = a1;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v120 = v23;
    v40 = v39;
    v143 = swift_slowAlloc();
    *v40 = 136315394;
    v121 = v22;
    v113 = v37;
    sub_F3F4(v144, v142, qword_34C798, &qword_2D0DA0);
    sub_20410(qword_34C798, &qword_2D0DA0);
    v41 = sub_2CE2A0();
    v43 = v42;
    v22 = v121;
    sub_30B8(v144, qword_34C798, &qword_2D0DA0);
    v44 = sub_3F08(v41, v43, &v143);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    v45 = sub_2CCCA0();
    v47 = sub_3F08(v45, v46, &v143);
    a1 = v141;

    *(v40 + 14) = v47;
    _os_log_impl(&dword_0, v36, v113, "CommonNeedsConfirmationStrategy#promptForConfirmationWithRF returning final output: %s Insights:%{public}s", v40, 0x16u);
    swift_arrayDestroy();

    v23 = v120;
  }

  else
  {

    sub_30B8(v144, qword_34C798, &qword_2D0DA0);
  }

  v48 = *(v27 + 8);
  (v48)(v33, v26);
  sub_F3F4(a1, v144, qword_34C798, &qword_2D0DA0);
  if (v145)
  {
    v49 = v144[0];
    v50 = v126;
    v128(v126, v130, v26);
    swift_errorRetain();
    v51 = sub_2CDFE0();
    v52 = sub_2CE680();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v121 = v22;
      v54 = v53;
      v55 = swift_slowAlloc();
      v120 = v23;
      v144[0] = v55;
      *v54 = 136446466;
      v142[0] = v49;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v56 = sub_2CE2A0();
      v58 = sub_3F08(v56, v57, v144);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2082;
      v59 = sub_2CCCA0();
      v61 = sub_3F08(v59, v60, v144);

      *(v54 + 14) = v61;
      _os_log_impl(&dword_0, v51, v52, "CommonNeedsConfirmationStrategy#promptForConfirmationWithRF failed with error: %{public}s, Insights:%{public}s", v54, 0x16u);
      swift_arrayDestroy();
      v23 = v120;

      v22 = v121;

      v62 = v126;
    }

    else
    {

      v62 = v50;
    }

    (v48)(v62, v26);
    v82 = v133;
    v83 = v131;
    v84 = v134;
    (*(v133 + 104))(v131, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v134);
    v85 = v132;
    (*(v23 + 104))(v132, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v22);
    swift_getErrorValue();
    sub_2CEEF0();
    v130 = sub_2CCAE0();

    (*(v23 + 8))(v85, v22);
    (*(v82 + 8))(v83, v84);
    sub_35E0(v127 + 13, v127[16]);
    v135 = v49;
    v86 = enum case for ActivityType.failed(_:);
    v87 = sub_2C9C20();
    v88 = *(v87 - 8);
    v89 = v124;
    (*(v88 + 104))(v124, v86, v87);
    (*(v88 + 56))(v89, 0, 1, v87);
    v90 = sub_2CA130();
    v91 = v125;
    (*(*(v90 - 8) + 56))(v125, 1, 1, v90);
    v92 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v93 = sub_2C98F0();
    v94 = *(v93 - 8);
    v95 = v138;
    (*(v94 + 104))(v138, v92, v93);
    (*(v94 + 56))(v95, 0, 1, v93);
    sub_2CB4E0();

    sub_30B8(v95, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v91, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v89, &qword_34CB88, &unk_2D0D90);
    v140(v141);
  }

  else
  {
    v126 = v27;
    v125 = v48;
    sub_30B8(v144, qword_34C798, &qword_2D0DA0);
    v63 = v133;
    v64 = v131;
    v65 = v134;
    (*(v133 + 104))(v131, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v134);
    v66 = v114;
    v67 = v132;
    (*(v23 + 104))(v132, enum case for AdditionalMetricsDescription.SourceFunction.prompt(_:), v22);
    v68 = v115;
    v69 = v116;
    (*(v115 + 104))(v66, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v116);
    v121 = sub_2CCAD0();
    v124 = v70;
    (*(v68 + 8))(v66, v69);
    (*(v23 + 8))(v67, v22);
    (*(v63 + 8))(v64, v65);
    sub_EEAC((v127 + 13), v144);
    sub_35E0(v144, v144[3]);
    v71 = enum case for ActivityType.showInterstitial(_:);
    v72 = sub_2C9C20();
    v73 = *(v72 - 8);
    v74 = v135;
    (*(v73 + 104))(v135, v71, v72);
    (*(v73 + 56))(v74, 0, 1, v72);
    v76 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, *(v117 + 80), *(v117 + 88), v75);
    v77 = v119;
    sub_F3F4(v118 + *(v76 + 44), v119, &qword_34C820, &unk_2D0A30);
    v78 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    v79 = v26;
    if ((*(*(v78 - 8) + 48))(v77, 1, v78) == 1)
    {
      sub_30B8(v77, &qword_34C820, &unk_2D0A30);
      v80 = sub_2CA130();
      v81 = v122;
      (*(*(v80 - 8) + 56))(v122, 1, 1, v80);
    }

    else
    {

      v97 = sub_2CA130();
      v98 = *(v97 - 8);
      v81 = v122;
      (*(v98 + 32))(v122, v77, v97);
      (*(v98 + 56))(v81, 0, 1, v97);
    }

    v99 = enum case for SiriKitReliabilityCodes.success(_:);
    v100 = sub_2C98F0();
    v101 = *(v100 - 8);
    v102 = v138;
    (*(v101 + 104))(v138, v99, v100);
    (*(v101 + 56))(v102, 0, 1, v100);
    v103 = v135;
    sub_2CB4E0();

    sub_30B8(v102, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v81, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v103, &qword_34CB88, &unk_2D0D90);
    sub_306C(v144);
    v104 = v123;
    v128(v123, v130, v79);
    v105 = sub_2CDFE0();
    v106 = sub_2CE670();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v144[0] = v108;
      *v107 = 136446210;
      v109 = sub_2CCCA0();
      v111 = sub_3F08(v109, v110, v144);

      *(v107 + 4) = v111;
      _os_log_impl(&dword_0, v105, v106, "CommonNeedsConfirmationStrategy#promptForConfirmationWithRF completed successfully. Insights:%{public}s", v107, 0xCu);
      sub_306C(v108);
    }

    (v125)(v104, v79);
    return (v140)(v141);
  }
}

uint64_t sub_25750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_2CB260();
  __chkstk_darwin(v11 - 8);
  v12 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v16 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, a4, a5, v15);
  sub_F3F4(a2 + *(v16 + 48), v14, &unk_353020, &unk_2D0970);
  sub_2CA5B0();
  sub_2CB130();
  sub_2CD3C0();

  sub_2CA570();
  sub_F3F4(a2 + *(v16 + 44), v10, &qword_34C820, &unk_2D0A30);
  v17 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    sub_30B8(v10, &qword_34C820, &unk_2D0A30);
  }

  else
  {
    v18 = *&v10[*(v17 + 48)];
    v19 = [v18 catId];

    sub_2CE270();
    v20 = sub_2CA130();
    (*(*(v20 - 8) + 8))(v10, v20);
  }

  sub_2CA590();
  sub_2CA5F0();
  return sub_2CA5A0();
}

uint64_t sub_2577D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_2577F4, 0, 0);
}

uint64_t sub_2577F4()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_2CA080();
  swift_allocObject();
  v0[11] = sub_2CA070();
  v3 = sub_2CD230();
  v0[5] = v3;
  v0[6] = sub_25F700(&qword_34CC78, &type metadata accessor for SiriAudioSnippets, &protocol conformance descriptor for SiriAudioSnippets);
  v4 = sub_F390(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v1, v3);
  sub_20410(&unk_351900, &unk_2D0960);
  v5 = swift_allocObject();
  v0[12] = v5;
  *(v5 + 16) = xmmword_2D0770;
  *(v5 + 32) = v2;
  v11 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v6 = v2;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_25799C;
  v8 = v0[10];
  v9 = v0[7];

  return v11(v9, v0 + 2, v5, v8);
}

uint64_t sub_25799C()
{
  v1 = *v0;
  v4 = *v0;

  sub_306C((v1 + 16));
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_257ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_257B00, 0, 0);
}

uint64_t sub_257B00()
{
  v1 = v0[3];
  sub_2CA080();
  swift_allocObject();
  v0[5] = sub_2CA070();
  sub_20410(&unk_351900, &unk_2D0960);
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = xmmword_2D0770;
  *(v2 + 32) = v1;
  v8 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_257C24;
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, v2, v5);
}

uint64_t sub_257C24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_257D54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_257D74, 0, 0);
}

uint64_t sub_257D74()
{
  sub_2CA080();
  swift_allocObject();
  v0[4] = sub_2CA070();
  v5 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(dialog:outputGenerationManifest:);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_257E48;
  v2 = v0[2];
  v3 = v0[3];

  return (v5)(v2, _swiftEmptyArrayStorage, v3);
}

uint64_t sub_257E48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_257F5C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a2;
  v14 = *a1;
  v15 = a1[1];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v17 = a2[2];
  v18 = swift_allocObject();
  v18[2] = *(v13 + 80);
  v18[3] = *(v13 + 88);
  v18[4] = sub_CEEA8;
  v18[5] = v16;
  v18[6] = a8;
  v19 = *(*v17 + 208);

  v19(a3, a4, a5, a6, a7, sub_25F848, v18);
}

uint64_t sub_2580AC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a2;
  v9 = sub_20410(&qword_34C820, &unk_2D0A30);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v12);
  v14 = (&v22 - v13);
  v16 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, a5, a6, v15);
  v17 = swift_projectBox();
  sub_F3F4(a1, v14, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v14;
    swift_beginAccess();
    *(v17 + *(v16 + 40)) = v18;
  }

  else
  {
    sub_14A58(v14, v11, &qword_34C6E8, &unk_2D0FF0);
    v20 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
    swift_beginAccess();
    v19 = sub_FECE8(v11, v17 + *(v16 + 44), &qword_34C820, &unk_2D0A30);
  }

  return v22(v19);
}

uint64_t sub_2582CC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v13 = *a1;
  v14 = a1[1];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  v16[2] = *(v12 + 80);
  v16[3] = *(v12 + 88);
  v16[4] = sub_CE4A8;
  v16[5] = v15;
  v16[6] = a8;

  sub_24CD8(a3, a4, a5, a6, a7, sub_25F7C0, v16);
}

uint64_t sub_2583FC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, a5, a6, a4);
  v9 = swift_projectBox();
  swift_beginAccess();
  v10 = sub_25F7D8(a1, v9 + *(v8 + 36));
  return a2(v10);
}

uint64_t sub_258488(uint64_t (**a1)(uint64_t), uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = *a1;
  v10 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, *(v4 + 80), *(v4 + 88), v9);
  v11 = swift_projectBox();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_B70E0(v7);
  swift_beginAccess();
  v12 = sub_FECE8(v7, v11 + *(v10 + 48), &unk_353020, &unk_2D0970);
  return v8(v12);
}

uint64_t sub_258604(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v33 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, a4, a5, a4);
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v28 - v7;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  (*(v10 + 16))(v12, v14, v9);

  v15 = v9;
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();

  v32 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[0] = v29;
    *v18 = 136446466;
    swift_beginAccess();
    v19 = *(v6 + 16);
    v30 = v15;
    v20 = v33;
    v19(v8, v13, v33);
    v21 = sub_2CE2A0();
    v31 = a2;
    v23 = sub_3F08(v21, v22, v35);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2082;
    v24 = sub_2CCCA0();
    v26 = sub_3F08(v24, v25, v35);
    a2 = v31;

    *(v18 + 14) = v26;
    _os_log_impl(&dword_0, v16, v32, "CommonNeedsConfirmationStrategy#confirmationOutputContext created output context:  %{public}s Insights:%{public}s", v18, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v12, v30);
  }

  else
  {

    (*(v10 + 8))(v12, v15);
    v20 = v33;
  }

  swift_beginAccess();
  (*(v6 + 16))(v8, v13, v20);
  a2(v8);
  return (*(v6 + 8))(v8, v20);
}

uint64_t sub_2589C4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v99 = a7;
  v100 = a8;
  v97 = a5;
  v98 = a6;
  v102 = a4;
  v91 = a3;
  v92 = a2;
  v90 = a1;
  v8 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v8 - 8);
  v88 = &v83 - v9;
  v86 = sub_2CCB20();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = __chkstk_darwin(v93);
  v87 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v101 = &v83 - v13;
  v14 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v14 - 8);
  v96 = &v83 - v15;
  v16 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v16 - 8);
  v95 = &v83 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v18 - 8);
  v94 = &v83 - v19;
  v20 = sub_2CE000();
  v103 = *(v20 - 8);
  v104 = v20;
  v21 = __chkstk_darwin(v20);
  v89 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v83 = &v83 - v23;
  v24 = sub_2CCB30();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CCAC0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v32);
  v34 = (&v83 - v33);
  sub_F3F4(v90, &v83 - v33, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = *v34;
    (*(v29 + 104))(v31, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v28);
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.cnclParamRejResp(_:), v24);
    swift_getErrorValue();
    sub_2CEEF0();
    v93 = sub_2CCAF0();
    v101 = v36;

    (*(v25 + 8))(v27, v24);
    (*(v29 + 8))(v31, v28);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = v104;
    v38 = sub_3ED0(v104, static Logger.default);
    swift_beginAccess();
    v39 = v83;
    (*(v103 + 16))(v83, v38, v37);
    v40 = sub_2CDFE0();
    v41 = sub_2CE680();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "CommonNeedsConfirmationStrategy#makeIntentCancelledByParameterRejectionResponse rejected parameter failure", v42, 2u);
    }

    (*(v103 + 8))(v39, v104);
    sub_35E0(v102 + 13, v102[16]);
    v43 = enum case for ActivityType.failed(_:);
    v44 = sub_2C9C20();
    v45 = *(v44 - 8);
    v46 = v94;
    (*(v45 + 104))(v94, v43, v44);
    (*(v45 + 56))(v46, 0, 1, v44);
    v47 = sub_2CA130();
    v48 = v95;
    (*(*(v47 - 8) + 56))(v95, 1, 1, v47);
    v49 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v50 = sub_2C98F0();
    v51 = *(v50 - 8);
    v52 = v96;
    (*(v51 + 104))(v96, v49, v50);
    (*(v51 + 56))(v52, 0, 1, v50);
    sub_2CB4E0();

    sub_30B8(v52, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v48, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v46, &qword_34CB88, &unk_2D0D90);
    v105[0] = v35;
    v106 = 1;
    swift_errorRetain();
    v99(v105);

    return sub_30B8(v105, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    v54 = v31;
    v90 = v24;
    sub_14A58(v34, v101, &qword_34C6E8, &unk_2D0FF0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v55 = v104;
    v56 = sub_3ED0(v104, static Logger.default);
    swift_beginAccess();
    (*(v103 + 16))(v89, v56, v55);
    v57 = sub_2CDFE0();
    v58 = sub_2CE670();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v57, v58, "CommonNeedsConfirmationStrategy#makeIntentCancelledByParameterRejectionResponse rejected parameter success", v59, 2u);
    }

    (*(v103 + 8))(v89, v104);
    (*(v29 + 104))(v54, enum case for AdditionalMetricsDescription.ModuleName.cncs(_:), v28);
    v60 = v90;
    (*(v25 + 104))(v27, enum case for AdditionalMetricsDescription.SourceFunction.cnclParamRejResp(_:), v90);
    v61 = v85;
    v62 = v84;
    v63 = v86;
    (*(v85 + 104))(v84, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v86);
    v64 = sub_2CCB00();
    v103 = v65;
    v104 = v64;
    (*(v61 + 8))(v62, v63);
    (*(v25 + 8))(v27, v60);
    (*(v29 + 8))(v54, v28);
    v66 = v102[16];
    v91 = v102[17];
    v92 = sub_35E0(v102 + 13, v66);
    v67 = enum case for ActivityType.completed(_:);
    v68 = sub_2C9C20();
    v69 = *(v68 - 8);
    v70 = v94;
    (*(v69 + 104))(v94, v67, v68);
    (*(v69 + 56))(v70, 0, 1, v68);
    v71 = v87;
    sub_F3F4(v101, v87, &qword_34C6E8, &unk_2D0FF0);

    v72 = sub_2CA130();
    v73 = *(v72 - 8);
    v74 = v95;
    (*(v73 + 32))(v95, v71, v72);
    (*(v73 + 56))(v74, 0, 1, v72);
    v75 = enum case for SiriKitReliabilityCodes.rejectParameter(_:);
    v76 = sub_2C98F0();
    v77 = *(v76 - 8);
    v78 = v96;
    (*(v77 + 104))(v96, v75, v76);
    (*(v77 + 56))(v78, 0, 1, v76);
    sub_2CB4E0();

    sub_30B8(v78, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v74, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v70, &qword_34CB88, &unk_2D0D90);
    v79 = v101;
    sub_F3F4(v101, v71, &qword_34C6E8, &unk_2D0FF0);
    v80 = *(v71 + *(v93 + 48));
    v81 = sub_2CA000();
    v82 = v88;
    (*(*(v81 - 8) + 56))(v88, 1, 1, v81);
    sub_1C2330(v71, v80, v82, v99, v100);

    sub_30B8(v82, &unk_353020, &unk_2D0970);
    sub_30B8(v79, &qword_34C6E8, &unk_2D0FF0);
    return (*(v73 + 8))(v71, v72);
  }
}

uint64_t sub_259884()
{
  sub_18781C();

  return swift_deallocClassInstance();
}

uint64_t sub_2598F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v17 = type metadata accessor for CommonNeedsConfirmationStrategy(0, *(a6 + 80), *(a6 + 88), v16);
  *v15 = v7;
  v15[1] = sub_E664;

  return NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v17, a7);
}

uint64_t sub_259B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = type metadata accessor for CommonNeedsConfirmationStrategy(0, *(a10 + 80), *(a10 + 88), a4);

  return a12(a1, a2, a3, a4, a5, a6, a7, a8, a9, v22, a11);
}

uint64_t sub_259C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21 = type metadata accessor for CommonNeedsConfirmationStrategy(0, *(a9 + 80), *(a9 + 88), a4);

  return a11(a1, a2, a3, a4, a5, a6, a7, a8, v21, a10);
}

uint64_t sub_259D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = type metadata accessor for CommonNeedsConfirmationStrategy(0, *(a7 + 80), *(a7 + 88), a4);

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:_:)(a1, a2, a3, a4, a5, a6, v15, a8);
}

uint64_t sub_259DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for CommonNeedsConfirmationStrategy(0, *(a8 + 80), *(a8 + 88), a4);

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:_:)(a1, a2, a3, a4, a5, a6, a7, v16, a9);
}

uint64_t sub_259E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v17 = type metadata accessor for CommonNeedsConfirmationStrategy(0, *(a6 + 80), *(a6 + 88), v16);
  *v15 = v7;
  v15[1] = sub_24C84;

  return ParameterResolutionHandling.makeFlowCancelledResponse(app:intent:parameterName:)(a1, a2, a3, a4, a5, v17, a7);
}

uint64_t sub_259F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v8;
  v17 = swift_task_alloc();
  *(v15 + 16) = v17;
  v19 = type metadata accessor for CommonNeedsConfirmationStrategy(0, *(a7 + 80), *(a7 + 88), v18);
  *v17 = v15;
  v17[1] = sub_24C84;

  return ParameterResolutionHandling.makeErrorResponse(app:intent:parameterName:error:)(a1, a2, a3, a4, a5, a6, v19, a8);
}

uint64_t sub_25A084(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v423 = a7;
  v424 = a6;
  v419 = a5;
  v403 = a4;
  v410 = a3;
  v415 = a2;
  v400 = a1;
  v9 = sub_20410(&qword_34CC98, &unk_2D3120);
  v10 = __chkstk_darwin(v9 - 8);
  v362 = &v361 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v404 = &v361 - v12;
  v396 = sub_2CE0A0();
  v394 = *(v396 - 8);
  __chkstk_darwin(v396);
  v393 = &v361 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_2CA540();
  sub_2DB30(&qword_34C6E0, &unk_2D0730);
  v421 = sub_2CEFA0();
  v422 = *(v421 - 8);
  __chkstk_darwin(v421);
  v420 = (&v361 - v14);
  v416 = sub_2CA360();
  v414 = *(v416 - 8);
  __chkstk_darwin(v416);
  v395 = &v361 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = sub_20410(&qword_355F20, &qword_2D8378);
  v16 = __chkstk_darwin(v397);
  v390 = &v361 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v388 = &v361 - v19;
  v20 = __chkstk_darwin(v18);
  v387 = &v361 - v21;
  v22 = __chkstk_darwin(v20);
  v389 = &v361 - v23;
  v24 = __chkstk_darwin(v22);
  v384 = &v361 - v25;
  v26 = __chkstk_darwin(v24);
  v386 = &v361 - v27;
  v28 = __chkstk_darwin(v26);
  v385 = &v361 - v29;
  __chkstk_darwin(v28);
  v383 = &v361 - v30;
  v409 = sub_2C9900();
  v412 = *(v409 - 8);
  v31 = __chkstk_darwin(v409);
  v411 = &v361 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v408 = &v361 - v33;
  v34 = sub_20410(qword_34F2C8, &unk_2D3070);
  v35 = __chkstk_darwin(v34 - 8);
  v398 = &v361 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v370 = &v361 - v38;
  v39 = __chkstk_darwin(v37);
  v382 = &v361 - v40;
  v41 = __chkstk_darwin(v39);
  v369 = &v361 - v42;
  v43 = __chkstk_darwin(v41);
  v381 = &v361 - v44;
  v45 = __chkstk_darwin(v43);
  v368 = &v361 - v46;
  v47 = __chkstk_darwin(v45);
  v380 = &v361 - v48;
  v49 = __chkstk_darwin(v47);
  v367 = &v361 - v50;
  v51 = __chkstk_darwin(v49);
  v406 = &v361 - v52;
  v53 = __chkstk_darwin(v51);
  v366 = &v361 - v54;
  v55 = __chkstk_darwin(v53);
  v379 = &v361 - v56;
  v57 = __chkstk_darwin(v55);
  v365 = &v361 - v58;
  v59 = __chkstk_darwin(v57);
  v392 = &v361 - v60;
  v61 = __chkstk_darwin(v59);
  v364 = &v361 - v62;
  v63 = __chkstk_darwin(v61);
  v405 = &v361 - v64;
  v65 = __chkstk_darwin(v63);
  v363 = &v361 - v66;
  v67 = __chkstk_darwin(v65);
  v391 = &v361 - v68;
  __chkstk_darwin(v67);
  v413 = &v361 - v69;
  v70 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  __chkstk_darwin(v70 - 8);
  v72 = &v361 - v71;
  v418 = sub_2CD490();
  v428 = *(v418 - 8);
  v73 = __chkstk_darwin(v418);
  v407 = &v361 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v417 = &v361 - v75;
  v76 = sub_2CA870();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = &v361 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2CE000();
  v81 = *(v80 - 8);
  v82 = __chkstk_darwin(v80);
  v84 = &v361 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __chkstk_darwin(v82);
  v402 = &v361 - v86;
  v87 = __chkstk_darwin(v85);
  v378 = &v361 - v88;
  v89 = __chkstk_darwin(v87);
  v377 = &v361 - v90;
  v91 = __chkstk_darwin(v89);
  v376 = &v361 - v92;
  v93 = __chkstk_darwin(v91);
  v375 = &v361 - v94;
  v95 = __chkstk_darwin(v93);
  v373 = &v361 - v96;
  v97 = __chkstk_darwin(v95);
  v372 = &v361 - v98;
  v99 = __chkstk_darwin(v97);
  v374 = &v361 - v100;
  v101 = __chkstk_darwin(v99);
  v371 = &v361 - v102;
  v103 = __chkstk_darwin(v101);
  v401 = &v361 - v104;
  __chkstk_darwin(v103);
  v106 = &v361 - v105;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v107 = sub_3ED0(v80, static Logger.default);
  swift_beginAccess();
  v108 = *(v81 + 16);
  v425 = v107;
  v426 = v108;
  v427 = v81 + 16;
  v108(v106, v107, v80);
  v109 = sub_2CDFE0();
  v110 = sub_2CE670();
  v111 = os_log_type_enabled(v109, v110);
  v429 = v80;
  if (v111)
  {
    v112 = swift_slowAlloc();
    *v112 = 0;
    _os_log_impl(&dword_0, v109, v110, "CommonNeedsConfirmationStrategy#parseConfirmationResponse...", v112, 2u);
    v80 = v429;
  }

  v115 = *(v81 + 8);
  v113 = v81 + 8;
  v114 = v115;
  v115(v106, v80);
  sub_2CA790();
  v116 = sub_D1D64(v79, &v431);
  (*(v77 + 8))(v79, v76, v116);
  if (!v432)
  {
    sub_30B8(&v431, &qword_34CCF0, &unk_2D1270);
    goto LABEL_9;
  }

  v419 = v113;
  sub_F338(&v431, v433);
  sub_35E0(v433, v433[3]);
  sub_2CD480();
  v117 = v418;
  if ((*(v428 + 48))(v72, 1, v418) != 1)
  {
    v127 = v428;
    v128 = v417;
    (*(v428 + 32))(v417, v72, v117);
    v129 = v407;
    (*(v127 + 16))(v407, v128, v117);
    v130 = (*(v127 + 88))(v129, v117);
    if (v130 == enum case for CommonAudio.Confirmation.yes(_:))
    {
      v131 = v412;
      v132 = v408;
      v133 = v409;
      (*(v412 + 104))(v408, enum case for SiriKitConfirmationState.confirmed(_:), v409);
      v134 = v413;
      v135 = v416;
      v136 = v410;
      goto LABEL_19;
    }

    v134 = v413;
    v135 = v416;
    v136 = v410;
    v133 = v409;
    v131 = v412;
    v132 = v408;
    if (v130 == enum case for CommonAudio.Confirmation.no(_:))
    {
      v137 = &enum case for SiriKitConfirmationState.rejected(_:);
    }

    else
    {
      if (v130 != enum case for CommonAudio.Confirmation.cancel(_:))
      {
        v192 = enum case for CommonAudio.Confirmation.moreInfo(_:);
        v193 = v130;
        (*(v412 + 104))(v408, enum case for SiriKitConfirmationState.unset(_:), v409);
        v194 = v193 == v192;
        v131 = v412;
        v136 = v410;
        if (!v194)
        {
          (*(v428 + 8))(v129, v117);
        }

LABEL_19:
        v138 = v411;
        (*(v131 + 32))(v411, v132, v133);
        v139 = (*(v131 + 88))(v138, v133);
        if (v139 == enum case for SiriKitConfirmationState.confirmed(_:))
        {
          v140 = v414;
          v141 = v134;
          (*(v414 + 104))(v134, enum case for ConfirmationResponse.confirmed(_:), v135);
        }

        else
        {
          v141 = v134;
          if (v139 != enum case for SiriKitConfirmationState.rejected(_:))
          {
            v142 = *(v414 + 56);
            v142(v141, 1, 1, v135);
            (*(v131 + 8))(v411, v133);
LABEL_25:

            v143 = sub_2C5C50(v415, v136);
            if (v143 == 8)
            {
              v144 = v402;
              v145 = v429;
              v426(v402, v425, v429);

              v146 = sub_2CDFE0();
              v147 = sub_2CE680();

              if (os_log_type_enabled(v146, v147))
              {
                v148 = v136;
                v149 = swift_slowAlloc();
                v150 = swift_slowAlloc();
                *&v431 = v150;
                *v149 = 136315138;
                *(v149 + 4) = sub_3F08(v415, v148, &v431);
                _os_log_impl(&dword_0, v146, v147, "CommonNeedsConfirmationStrategy#parseConfirmationResponse unexpected parameter: %s", v149, 0xCu);
                sub_306C(v150);
              }

              v114(v144, v145);
              v151 = sub_2CB850();
              sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
              v152 = swift_allocError();
              v154 = v153;
              v155 = &enum case for PlaybackCode.ceGE54(_:);
LABEL_29:
              (*(*(v151 - 8) + 104))(v154, *v155, v151);
              v156 = v420;
              *v420 = v152;
              v157 = v421;
              swift_storeEnumTagMultiPayload();
              v424(v156);
              (*(v422 + 8))(v156, v157);
              sub_30B8(v141, qword_34F2C8, &unk_2D3070);
              (*(v428 + 8))(v417, v117);
              return sub_306C(v433);
            }

            v158 = v143;
            v159 = v401;
            v160 = v429;
            v426(v401, v425, v429);

            v161 = sub_2CDFE0();
            v162 = sub_2CE690();

            if (os_log_type_enabled(v161, v162))
            {
              v163 = v142;
              v164 = v136;
              v165 = swift_slowAlloc();
              v166 = swift_slowAlloc();
              *&v431 = v166;
              *v165 = 136315138;
              v167 = v164;
              v142 = v163;
              *(v165 + 4) = sub_3F08(v415, v167, &v431);
              _os_log_impl(&dword_0, v161, v162, "CommonNeedsConfirmationStrategy#parseConfirmationResponse Applying parameter %s in intent", v165, 0xCu);
              sub_306C(v166);
              v141 = v413;
            }

            v114(v159, v160);
            v168 = v406;
            v169 = [v403 itemToConfirm];
            v117 = v418;
            v170 = v404;
            v171 = v405;
            if (v158 <= 3u)
            {
              if (v158 <= 1u)
              {
                if (!v158)
                {
                  sub_2CEC00();
                  swift_unknownObjectRelease();
                  sub_736BC();
                  if (!swift_dynamicCast())
                  {
                    v242 = v371;
                    v426(v371, v425, v429);
                    v243 = sub_2CDFE0();
                    v244 = sub_2CE680();
                    if (os_log_type_enabled(v243, v244))
                    {
                      v245 = swift_slowAlloc();
                      *v245 = 0;
                      _os_log_impl(&dword_0, v243, v244, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v245, 2u);
                    }

                    v114(v242, v429);
                    v151 = sub_2CB850();
                    sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
                    v152 = swift_allocError();
                    v154 = v246;
                    v155 = &enum case for PlaybackCode.ceGE55(_:);
                    goto LABEL_29;
                  }

                  v172 = v416;
                  v173 = v430;
                  v174 = v414;
                  v175 = v391;
                  (*(v414 + 104))(v391, enum case for ConfirmationResponse.confirmed(_:), v416);
                  v142(v175, 0, 1, v172);
                  v176 = *(v397 + 48);
                  v177 = v383;
                  sub_F3F4(v141, v383, qword_34F2C8, &unk_2D3070);
                  sub_F3F4(v175, v177 + v176, qword_34F2C8, &unk_2D3070);
                  v178 = *(v174 + 48);
                  if (v178(v177, 1, v172) == 1)
                  {
                    sub_30B8(v175, qword_34F2C8, &unk_2D3070);
                    v179 = v178(v177 + v176, 1, v172);
                    v180 = v400;
                    if (v179 == 1)
                    {
                      sub_30B8(v177, qword_34F2C8, &unk_2D3070);
LABEL_137:
                      sub_20410(&unk_351900, &unk_2D0960);
                      v324 = swift_allocObject();
                      *(v324 + 16) = xmmword_2D0770;
                      *(v324 + 32) = v173;
                      v325 = v173;
                      sub_732B0(v324, 1);

                      goto LABEL_152;
                    }

                    goto LABEL_134;
                  }

                  v288 = v363;
                  sub_F3F4(v177, v363, qword_34F2C8, &unk_2D3070);
                  v289 = v178(v177 + v176, 1, v172);
                  v180 = v400;
                  if (v289 != 1)
                  {
                    v319 = v414;
                    v320 = v177 + v176;
                    v321 = v395;
                    (*(v414 + 32))(v395, v320, v172);
                    sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
                    v322 = sub_2CE250();
                    v323 = *(v319 + 8);
                    v323(v321, v172);
                    sub_30B8(v391, qword_34F2C8, &unk_2D3070);
                    v323(v288, v172);
                    sub_30B8(v177, qword_34F2C8, &unk_2D3070);
                    if ((v322 & 1) == 0)
                    {

                      goto LABEL_152;
                    }

                    goto LABEL_137;
                  }

                  v290 = v391;
                  goto LABEL_133;
                }

                sub_2CEC00();
                swift_unknownObjectRelease();
                v215 = v396;
                v216 = swift_dynamicCast();
                v217 = v394;
                v218 = *(v394 + 56);
                if (!v216)
                {
                  v218(v170, 1, 1, v215);
                  sub_30B8(v170, &qword_34CC98, &unk_2D3120);
                  v262 = v374;
                  v263 = v429;
                  v426(v374, v425, v429);
                  v264 = sub_2CDFE0();
                  v265 = sub_2CE680();
                  if (os_log_type_enabled(v264, v265))
                  {
                    v266 = swift_slowAlloc();
                    *v266 = 0;
                    _os_log_impl(&dword_0, v264, v265, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v266, 2u);
                  }

                  v114(v262, v263);
                  v267 = sub_2CB850();
                  sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
                  v268 = swift_allocError();
                  (*(*(v267 - 8) + 104))(v269, enum case for PlaybackCode.ceGE56(_:), v267);
                  v270 = v420;
                  *v420 = v268;
                  v271 = v421;
                  swift_storeEnumTagMultiPayload();
                  v424(v270);
                  (*(v422 + 8))(v270, v271);
                  v272 = v141;
                  goto LABEL_153;
                }

                v429 = *(v394 + 56);
                v218(v170, 0, 1, v215);
                (*(v217 + 32))(v393, v170, v215);
                v219 = v414;
                v220 = v416;
                (*(v414 + 104))(v171, enum case for ConfirmationResponse.confirmed(_:), v416);
                v142(v171, 0, 1, v220);
                v221 = *(v397 + 48);
                v222 = v385;
                sub_F3F4(v141, v385, qword_34F2C8, &unk_2D3070);
                sub_F3F4(v171, v222 + v221, qword_34F2C8, &unk_2D3070);
                v223 = *(v219 + 48);
                if (v223(v222, 1, v220) == 1)
                {
                  sub_30B8(v171, qword_34F2C8, &unk_2D3070);
                  v224 = v223(v222 + v221, 1, v220);
                  v180 = v400;
                  v225 = v396;
                  if (v224 == 1)
                  {
                    sub_30B8(v222, qword_34F2C8, &unk_2D3070);
LABEL_147:
                    v350 = v362;
                    v351 = v393;
                    (*(v217 + 16))(v362, v393, v225);
                    v429(v350, 0, 1, v225);
                    sub_72E4C(v350);
                    sub_30B8(v350, &qword_34CC98, &unk_2D3120);
                    (*(v217 + 8))(v351, v225);
                    goto LABEL_152;
                  }
                }

                else
                {
                  v299 = v221;
                  v300 = v364;
                  sub_F3F4(v222, v364, qword_34F2C8, &unk_2D3070);
                  v301 = v299;
                  v302 = v223(v222 + v299, 1, v220);
                  v180 = v400;
                  if (v302 != 1)
                  {
                    v345 = v414;
                    v346 = v222 + v301;
                    v347 = v395;
                    (*(v414 + 32))(v395, v346, v220);
                    sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
                    v348 = sub_2CE250();
                    v349 = *(v345 + 8);
                    v349(v347, v220);
                    sub_30B8(v405, qword_34F2C8, &unk_2D3070);
                    v349(v300, v220);
                    v141 = v413;
                    sub_30B8(v222, qword_34F2C8, &unk_2D3070);
                    v225 = v396;
                    if (v348)
                    {
                      goto LABEL_147;
                    }

                    goto LABEL_122;
                  }

                  sub_30B8(v405, qword_34F2C8, &unk_2D3070);
                  (*(v414 + 8))(v300, v220);
                  v225 = v396;
                }

                sub_30B8(v222, &qword_355F20, &qword_2D8378);
LABEL_122:
                (*(v217 + 8))(v393, v225);
                goto LABEL_152;
              }

              v195 = v416;
              if (v158 != 2)
              {
                sub_2CEC00();
                swift_unknownObjectRelease();
                type metadata accessor for INPlaybackRepeatMode(0);
                if (!swift_dynamicCast())
                {
                  v278 = v373;
                  v426(v373, v425, v429);
                  v279 = sub_2CDFE0();
                  v280 = sub_2CE680();
                  if (os_log_type_enabled(v279, v280))
                  {
                    v281 = swift_slowAlloc();
                    *v281 = 0;
                    _os_log_impl(&dword_0, v279, v280, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v281, 2u);
                  }

                  v114(v278, v429);
                  v151 = sub_2CB850();
                  sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
                  v152 = swift_allocError();
                  v154 = v282;
                  v155 = &enum case for PlaybackCode.ceGE58(_:);
                  goto LABEL_29;
                }

                v429 = v430;
                v233 = v414;
                v228 = v379;
                (*(v414 + 104))(v379, enum case for ConfirmationResponse.confirmed(_:), v195);
                v142(v228, 0, 1, v195);
                v172 = v195;
                v234 = *(v397 + 48);
                v177 = v384;
                sub_F3F4(v141, v384, qword_34F2C8, &unk_2D3070);
                sub_F3F4(v228, v177 + v234, qword_34F2C8, &unk_2D3070);
                v235 = *(v233 + 48);
                if (v235(v177, 1, v195) == 1)
                {
                  sub_30B8(v228, qword_34F2C8, &unk_2D3070);
                  v236 = v235(v177 + v234, 1, v195);
                  v180 = v400;
                  if (v236 == 1)
                  {
                    sub_30B8(v177, qword_34F2C8, &unk_2D3070);
LABEL_129:
                    v309 = [v180 backingStore];
                    objc_opt_self();
                    v317 = swift_dynamicCastObjCClass();
                    if (v317)
                    {
                      [v317 setPlaybackRepeatMode:INPlaybackRepeatModeGetBackingType()];
                    }

LABEL_151:

                    goto LABEL_152;
                  }

LABEL_134:
                  sub_30B8(v177, &qword_355F20, &qword_2D8378);
                  goto LABEL_152;
                }

                v288 = v366;
                sub_F3F4(v177, v366, qword_34F2C8, &unk_2D3070);
                v311 = v235(v177 + v234, 1, v195);
                v180 = v400;
                if (v311 != 1)
                {
                  v312 = v228;
                  v313 = v414;
                  v314 = v395;
                  (*(v414 + 32))(v395, v177 + v234, v195);
                  sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
                  v315 = sub_2CE250();
                  v316 = *(v313 + 8);
                  v316(v314, v172);
                  sub_30B8(v312, qword_34F2C8, &unk_2D3070);
                  v316(v288, v172);
                  sub_30B8(v177, qword_34F2C8, &unk_2D3070);
                  if ((v315 & 1) == 0)
                  {
                    goto LABEL_152;
                  }

                  goto LABEL_129;
                }

LABEL_132:
                v290 = v228;
LABEL_133:
                sub_30B8(v290, qword_34F2C8, &unk_2D3070);
                (*(v414 + 8))(v288, v172);
                goto LABEL_134;
              }

              sub_2CEC00();
              swift_unknownObjectRelease();
              if (!swift_dynamicCast())
              {
                v252 = v372;
                v426(v372, v425, v429);
                v253 = sub_2CDFE0();
                v254 = sub_2CE680();
                if (os_log_type_enabled(v253, v254))
                {
                  v255 = swift_slowAlloc();
                  *v255 = 0;
                  _os_log_impl(&dword_0, v253, v254, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v255, 2u);
                }

                v114(v252, v429);
                v151 = sub_2CB850();
                sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
                v152 = swift_allocError();
                v154 = v256;
                v155 = &enum case for PlaybackCode.ceGE57(_:);
                goto LABEL_29;
              }

              LODWORD(v427) = v430;
              v196 = enum case for ConfirmationResponse.confirmed(_:);
              v197 = v142;
              v198 = v414;
              v199 = v392;
              v426 = *(v414 + 104);
              v426(v392, enum case for ConfirmationResponse.confirmed(_:), v195);
              v429 = v197;
              v425 = v198 + 56;
              v197(v199, 0, 1, v195);
              v200 = *(v397 + 48);
              v201 = v386;
              sub_F3F4(v141, v386, qword_34F2C8, &unk_2D3070);
              v202 = v416;
              sub_F3F4(v199, v201 + v200, qword_34F2C8, &unk_2D3070);
              v203 = *(v198 + 48);
              if (v203(v201, 1, v202) == 1)
              {
                sub_30B8(v199, qword_34F2C8, &unk_2D3070);
                v204 = v416;
                sub_30B8(v141, qword_34F2C8, &unk_2D3070);
                v205 = v203(v201 + v200, 1, v204);
                v206 = v429;
                v207 = v427;
                if (v205 == 1)
                {
                  sub_30B8(v201, qword_34F2C8, &unk_2D3070);
LABEL_113:
                  v141 = v413;
                  v426(v413, v196, v204);
                  v206(v141, 0, 1, v204);
                  v180 = v400;
                  v295 = [v400 backingStore];
                  objc_opt_self();
                  v293 = swift_dynamicCastObjCClass();
                  if (!v293)
                  {
                  }

                  [v293 setPlayShuffled:v207];
LABEL_116:

LABEL_152:
                  sub_F3F4(v141, v398, qword_34F2C8, &unk_2D3070);
                  v358 = v180;
                  v359 = v420;
                  sub_2CA530();
                  v360 = v421;
                  swift_storeEnumTagMultiPayload();
                  v424(v359);
                  (*(v422 + 8))(v359, v360);
                  v272 = v141;
LABEL_153:
                  sub_30B8(v272, qword_34F2C8, &unk_2D3070);
                  (*(v428 + 8))(v417, v418);
                  return sub_306C(v433);
                }
              }

              else
              {
                v294 = v365;
                sub_F3F4(v201, v365, qword_34F2C8, &unk_2D3070);
                if (v203(v201 + v200, 1, v202) != 1)
                {
                  v332 = v294;
                  v333 = v414;
                  v334 = v201 + v200;
                  v335 = v395;
                  (*(v414 + 32))(v395, v334, v202);
                  sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
                  v336 = sub_2CE250();
                  v337 = *(v333 + 8);
                  v337(v335, v202);
                  sub_30B8(v392, qword_34F2C8, &unk_2D3070);
                  sub_30B8(v413, qword_34F2C8, &unk_2D3070);
                  v337(v332, v416);
                  v204 = v416;
                  sub_30B8(v201, qword_34F2C8, &unk_2D3070);
                  v206 = v429;
                  v207 = v427;
                  if (v336)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_112;
                }

                sub_30B8(v392, qword_34F2C8, &unk_2D3070);
                v204 = v416;
                sub_30B8(v413, qword_34F2C8, &unk_2D3070);
                (*(v414 + 8))(v294, v204);
                v206 = v429;
                LODWORD(v207) = v427;
              }

              sub_30B8(v201, &qword_355F20, &qword_2D8378);
LABEL_112:
              v207 = v207 ^ 1;
              goto LABEL_113;
            }

            if (v158 > 5u)
            {
              v208 = v416;
              if (v158 == 6)
              {
                sub_2CEC00();
                swift_unknownObjectRelease();
                if (!swift_dynamicCast())
                {
                  v257 = v377;
                  v426(v377, v425, v429);
                  v258 = sub_2CDFE0();
                  v259 = sub_2CE680();
                  if (os_log_type_enabled(v258, v259))
                  {
                    v260 = swift_slowAlloc();
                    *v260 = 0;
                    _os_log_impl(&dword_0, v258, v259, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v260, 2u);
                  }

                  v114(v257, v429);
                  v151 = sub_2CB850();
                  sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
                  v152 = swift_allocError();
                  v154 = v261;
                  v155 = &enum case for PlaybackCode.ceGE61(_:);
                  goto LABEL_29;
                }

                v209 = *&v430;
                v210 = v414;
                v211 = v381;
                (*(v414 + 104))(v381, enum case for ConfirmationResponse.confirmed(_:), v208);
                v142(v211, 0, 1, v208);
                v212 = *(v397 + 48);
                v177 = v388;
                sub_F3F4(v141, v388, qword_34F2C8, &unk_2D3070);
                sub_F3F4(v211, v177 + v212, qword_34F2C8, &unk_2D3070);
                v213 = *(v210 + 48);
                if (v213(v177, 1, v208) == 1)
                {
                  sub_30B8(v211, qword_34F2C8, &unk_2D3070);
                  v214 = v213(v177 + v212, 1, v208);
                  v180 = v400;
                  if (v214 != 1)
                  {
                    goto LABEL_134;
                  }

                  sub_30B8(v177, qword_34F2C8, &unk_2D3070);
                }

                else
                {
                  v296 = v369;
                  sub_F3F4(v177, v369, qword_34F2C8, &unk_2D3070);
                  v297 = v213(v177 + v212, 1, v208);
                  v298 = v208;
                  v180 = v400;
                  if (v297 == 1)
                  {
                    sub_30B8(v211, qword_34F2C8, &unk_2D3070);
                    (*(v414 + 8))(v296, v298);
                    goto LABEL_134;
                  }

                  v338 = v211;
                  v339 = v414;
                  v340 = v177 + v212;
                  v341 = v395;
                  (*(v414 + 32))(v395, v340, v298);
                  sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
                  v342 = sub_2CE250();
                  v343 = *(v339 + 8);
                  v343(v341, v298);
                  sub_30B8(v338, qword_34F2C8, &unk_2D3070);
                  v343(v296, v298);
                  sub_30B8(v177, qword_34F2C8, &unk_2D3070);
                  if ((v342 & 1) == 0)
                  {
                    goto LABEL_152;
                  }
                }

                v344 = [v180 backingStore];
                objc_opt_self();
                v309 = swift_dynamicCastObjCClass();
                if (!v309)
                {
                }

                [v309 setPlaybackSpeed:v209];
                goto LABEL_151;
              }

              sub_2CEC00();
              swift_unknownObjectRelease();
              type metadata accessor for INMediaAffinityType(0);
              if (!swift_dynamicCast())
              {
                v283 = v378;
                v426(v378, v425, v429);
                v284 = sub_2CDFE0();
                v285 = sub_2CE680();
                if (os_log_type_enabled(v284, v285))
                {
                  v286 = swift_slowAlloc();
                  *v286 = 0;
                  _os_log_impl(&dword_0, v284, v285, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v286, 2u);
                }

                v114(v283, v429);
                v151 = sub_2CB850();
                sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
                v152 = swift_allocError();
                v154 = v287;
                v155 = &enum case for PlaybackCode.ceGE62(_:);
                goto LABEL_29;
              }

              v429 = v430;
              v238 = v414;
              v228 = v382;
              (*(v414 + 104))(v382, enum case for ConfirmationResponse.confirmed(_:), v208);
              v142(v228, 0, 1, v208);
              v172 = v208;
              v239 = *(v397 + 48);
              v177 = v390;
              sub_F3F4(v141, v390, qword_34F2C8, &unk_2D3070);
              sub_F3F4(v228, v177 + v239, qword_34F2C8, &unk_2D3070);
              v240 = *(v238 + 48);
              if (v240(v177, 1, v208) == 1)
              {
                sub_30B8(v228, qword_34F2C8, &unk_2D3070);
                v241 = v240(v177 + v239, 1, v208);
                v180 = v400;
                if (v241 != 1)
                {
                  goto LABEL_134;
                }

                sub_30B8(v177, qword_34F2C8, &unk_2D3070);
              }

              else
              {
                v288 = v370;
                sub_F3F4(v177, v370, qword_34F2C8, &unk_2D3070);
                v318 = v240(v177 + v239, 1, v208);
                v180 = v400;
                if (v318 == 1)
                {
                  goto LABEL_132;
                }

                v352 = v228;
                v353 = v414;
                v354 = v395;
                (*(v414 + 32))(v395, v177 + v239, v172);
                sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
                v355 = sub_2CE250();
                v356 = *(v353 + 8);
                v356(v354, v172);
                sub_30B8(v352, qword_34F2C8, &unk_2D3070);
                v356(v288, v172);
                sub_30B8(v177, qword_34F2C8, &unk_2D3070);
                if ((v355 & 1) == 0)
                {
                  goto LABEL_152;
                }
              }

              v309 = [v180 backingStore];
              objc_opt_self();
              v357 = swift_dynamicCastObjCClass();
              if (v357)
              {
                [v357 setAffinityType:INMediaAffinityTypeGetBackingType()];
              }

              goto LABEL_151;
            }

            v181 = v416;
            if (v158 != 4)
            {
              sub_2CEC00();
              swift_unknownObjectRelease();
              type metadata accessor for INPlaybackQueueLocation(0);
              if (!swift_dynamicCast())
              {
                v273 = v376;
                v426(v376, v425, v429);
                v274 = sub_2CDFE0();
                v275 = sub_2CE680();
                if (os_log_type_enabled(v274, v275))
                {
                  v276 = swift_slowAlloc();
                  *v276 = 0;
                  _os_log_impl(&dword_0, v274, v275, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v276, 2u);
                }

                v114(v273, v429);
                v151 = sub_2CB850();
                sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
                v152 = swift_allocError();
                v154 = v277;
                v155 = &enum case for PlaybackCode.ceGE60(_:);
                goto LABEL_29;
              }

              v429 = v430;
              v227 = v414;
              v228 = v380;
              (*(v414 + 104))(v380, enum case for ConfirmationResponse.confirmed(_:), v181);
              v142(v228, 0, 1, v181);
              v172 = v181;
              v229 = *(v397 + 48);
              v177 = v387;
              sub_F3F4(v141, v387, qword_34F2C8, &unk_2D3070);
              sub_F3F4(v228, v177 + v229, qword_34F2C8, &unk_2D3070);
              v230 = *(v227 + 48);
              if (v230(v177, 1, v181) == 1)
              {
                sub_30B8(v228, qword_34F2C8, &unk_2D3070);
                v231 = v230(v177 + v229, 1, v181);
                v180 = v400;
                if (v231 != 1)
                {
                  goto LABEL_134;
                }

                sub_30B8(v177, qword_34F2C8, &unk_2D3070);
              }

              else
              {
                v288 = v368;
                sub_F3F4(v177, v368, qword_34F2C8, &unk_2D3070);
                v303 = v230(v177 + v229, 1, v181);
                v180 = v400;
                if (v303 == 1)
                {
                  goto LABEL_132;
                }

                v304 = v228;
                v305 = v414;
                v306 = v395;
                (*(v414 + 32))(v395, v177 + v229, v181);
                sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
                v307 = sub_2CE250();
                v308 = *(v305 + 8);
                v308(v306, v172);
                sub_30B8(v304, qword_34F2C8, &unk_2D3070);
                v308(v288, v172);
                sub_30B8(v177, qword_34F2C8, &unk_2D3070);
                if ((v307 & 1) == 0)
                {
                  goto LABEL_152;
                }
              }

              v309 = [v180 backingStore];
              objc_opt_self();
              v310 = swift_dynamicCastObjCClass();
              if (v310)
              {
                [v310 setPlaybackQueueLocation:INPlaybackQueueLocationGetBackingType()];
              }

              goto LABEL_151;
            }

            sub_2CEC00();
            swift_unknownObjectRelease();
            if (!swift_dynamicCast())
            {
              v247 = v375;
              v426(v375, v425, v429);
              v248 = sub_2CDFE0();
              v249 = sub_2CE680();
              if (os_log_type_enabled(v248, v249))
              {
                v250 = swift_slowAlloc();
                *v250 = 0;
                _os_log_impl(&dword_0, v248, v249, "CommonNeedsConfirmationStrategy#parseConfirmationResponse incorrect type", v250, 2u);
              }

              v114(v247, v429);
              v151 = sub_2CB850();
              sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
              v152 = swift_allocError();
              v154 = v251;
              v155 = &enum case for PlaybackCode.ceGE59(_:);
              goto LABEL_29;
            }

            LODWORD(v427) = v430;
            v182 = enum case for ConfirmationResponse.confirmed(_:);
            v183 = v414;
            v426 = *(v414 + 104);
            v426(v168, enum case for ConfirmationResponse.confirmed(_:), v181);
            v429 = v142;
            v425 = v183 + 56;
            v142(v168, 0, 1, v181);
            v184 = *(v397 + 48);
            v185 = v389;
            sub_F3F4(v141, v389, qword_34F2C8, &unk_2D3070);
            v186 = v416;
            sub_F3F4(v168, v185 + v184, qword_34F2C8, &unk_2D3070);
            v187 = *(v183 + 48);
            if (v187(v185, 1, v186) == 1)
            {
              sub_30B8(v168, qword_34F2C8, &unk_2D3070);
              v188 = v416;
              sub_30B8(v141, qword_34F2C8, &unk_2D3070);
              v189 = v187(v185 + v184, 1, v188);
              v190 = v429;
              v191 = v427;
              if (v189 == 1)
              {
                sub_30B8(v185, qword_34F2C8, &unk_2D3070);
LABEL_106:
                v141 = v413;
                v426(v413, v182, v188);
                v190(v141, 0, 1, v188);
                v180 = v400;
                v292 = [v400 backingStore];
                objc_opt_self();
                v293 = swift_dynamicCastObjCClass();
                if (!v293)
                {
                }

                [v293 setResumePlayback:v191];
                goto LABEL_116;
              }
            }

            else
            {
              v291 = v367;
              sub_F3F4(v185, v367, qword_34F2C8, &unk_2D3070);
              if (v187(v185 + v184, 1, v186) != 1)
              {
                v326 = v291;
                v327 = v414;
                v328 = v185 + v184;
                v329 = v395;
                (*(v414 + 32))(v395, v328, v186);
                sub_25F700(qword_355F28, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
                v330 = sub_2CE250();
                v331 = *(v327 + 8);
                v331(v329, v186);
                sub_30B8(v406, qword_34F2C8, &unk_2D3070);
                sub_30B8(v413, qword_34F2C8, &unk_2D3070);
                v331(v326, v416);
                v188 = v416;
                sub_30B8(v185, qword_34F2C8, &unk_2D3070);
                v190 = v429;
                v191 = v427;
                if (v330)
                {
                  goto LABEL_106;
                }

                goto LABEL_105;
              }

              sub_30B8(v406, qword_34F2C8, &unk_2D3070);
              v188 = v416;
              sub_30B8(v413, qword_34F2C8, &unk_2D3070);
              (*(v414 + 8))(v291, v188);
              v190 = v429;
              LODWORD(v191) = v427;
            }

            sub_30B8(v185, &qword_355F20, &qword_2D8378);
LABEL_105:
            v191 = v191 ^ 1;
            goto LABEL_106;
          }

          v140 = v414;
          (*(v414 + 104))(v134, enum case for ConfirmationResponse.rejected(_:), v135);
        }

        v142 = *(v140 + 56);
        v142(v141, 0, 1, v135);
        goto LABEL_25;
      }

      v137 = &enum case for SiriKitConfirmationState.cancelled(_:);
    }

    (*(v412 + 104))(v408, *v137, v409);
    goto LABEL_19;
  }

  sub_30B8(v72, &qword_34CCE8, &unk_2D0E20);
  sub_306C(v433);
  v80 = v429;
LABEL_9:
  v426(v84, v425, v80);
  v118 = sub_2CDFE0();
  v119 = sub_2CE680();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&dword_0, v118, v119, "CommonNeedsConfirmationStrategy#parseConfirmationResponse unable to make confirmation intent from parse, ignoring...", v120, 2u);
  }

  v114(v84, v80);
  v121 = sub_2CB850();
  sub_25F700(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v122 = swift_allocError();
  (*(*(v121 - 8) + 104))(v123, enum case for PlaybackCode.ceGE53(_:), v121);
  v124 = v420;
  *v420 = v122;
  v125 = v421;
  swift_storeEnumTagMultiPayload();
  v424(v124);
  return (*(v422 + 8))(v124, v125);
}

uint64_t sub_25DD38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v38 = a7;
  v39 = a3;
  v40 = a4;
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v37 = v14;
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v34 = a8;
    v24 = v17;
    v25 = v23;
    v41 = v23;
    *v22 = 136446210;
    v26 = sub_2CCCA0();
    v35 = a5;
    v28 = sub_3F08(v26, v27, &v41);
    a5 = v35;

    *(v22 + 4) = v28;
    _os_log_impl(&dword_0, v19, v20, "CommonNeedsConfirmationStrategy#promptForConfirmationWithRF... Insights:%{public}s", v22, 0xCu);
    sub_306C(v25);
    a8 = v34;

    v9 = v36;

    (*(v15 + 8))(v24, v37);
  }

  else
  {

    (*(v15 + 8))(v17, v37);
  }

  v29 = swift_allocObject();
  v29[2] = v9;
  v29[3] = a1;
  v30 = v38;
  v29[4] = a2;
  v29[5] = v30;
  v29[6] = a8;

  v31 = a2;

  sub_254018(a1, v31, a5, v39, v40, sub_25F2A0, v29);
}

uint64_t sub_25E010(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v53 = a4;
  v54 = a8;
  v52 = a7;
  v49 = a5;
  v50 = a3;
  v12 = *v8;
  v45 = a6;
  v46 = v12;
  v13 = sub_20410(&unk_353020, &unk_2D0970);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v51 = &v44 - v16;
  v17 = sub_2CE000();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35E0(v8 + 8, v8[11]);
  if (sub_2CC4B0())
  {
    v22 = v49;
    v21 = v50;
    v24 = v52;
    v23 = v53;
    v25 = v45;
    v26 = v54;

    return sub_25DD38(a1, a2, v21, v23, v22, v25, v24, v26);
  }

  else
  {
    v44 = a1;
    v45 = a2;
    v28 = v49;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v29 = sub_3ED0(v17, static Logger.default);
    swift_beginAccess();
    (*(v18 + 16))(v20, v29, v17);
    v30 = sub_2CDFE0();
    v31 = sub_2CE670();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "CommonNeedsConfirmationStrategy#makePromptForConfirmation...", v32, 2u);
    }

    (*(v18 + 8))(v20, v17);
    v34 = *(v46 + 80);
    v33 = *(v46 + 88);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v35 = v51;
    sub_B70E0(v51);
    v36 = v48;
    sub_F3F4(v35, v48, &unk_353020, &unk_2D0970);
    v37 = (*(v47 + 80) + 96) & ~*(v47 + 80);
    v38 = swift_allocObject();
    v38[2] = v34;
    v38[3] = v33;
    v39 = v53;
    v40 = v54;
    v38[4] = v50;
    v38[5] = v39;
    v38[6] = v28;
    v38[7] = v9;
    v41 = v45;
    v38[8] = v44;
    v38[9] = v41;
    v38[10] = v52;
    v38[11] = v40;
    sub_14A58(v36, v38 + v37, &unk_353020, &unk_2D0970);

    v42 = v28;

    v43 = v41;

    sub_11093C(sub_25F200, v38);

    return sub_30B8(v51, &unk_353020, &unk_2D0970);
  }
}

uint64_t sub_25E470(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v93 = a4;
  v94 = a5;
  v92 = a3;
  v99 = a2;
  v100 = a1;
  v5 = sub_20410(&qword_34C820, &unk_2D0A30);
  v6 = __chkstk_darwin(v5 - 8);
  v88 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = &v79 - v8;
  v9 = sub_20410(&unk_3530C0, &unk_2D0A40);
  __chkstk_darwin(v9 - 8);
  v91 = &v79 - v10;
  v11 = sub_2CD230();
  v95 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v82 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v13;
  __chkstk_darwin(v12);
  v15 = &v79 - v14;
  v16 = sub_2C9B80();
  __chkstk_darwin(v16 - 8);
  v17 = sub_2CA630();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v98 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v20;
  __chkstk_darwin(v19);
  v101 = &v79 - v21;
  v84 = sub_2CB260();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CE000();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2CB460();
  if (!v28)
  {
    sub_2CB180();
    v28 = sub_2CB170();
  }

  v29 = v28;
  v87 = v15;
  v97 = v11;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v30 = v24;
  v31 = sub_3ED0(v24, static Logger.default);
  swift_beginAccess();
  v32 = *(v25 + 16);
  v89 = v30;
  v32(v27, v31, v30);

  v33 = sub_2CDFE0();
  v34 = sub_2CE660();

  v35 = os_log_type_enabled(v33, v34);
  v90 = v29;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v86 = v17;
    v37 = v36;
    v38 = swift_slowAlloc();
    v80 = v18;
    v39 = v38;
    v102 = v38;
    *v37 = 136315138;
    sub_2CB130();
    sub_2CD3C0();

    v40 = sub_2CB200();
    v42 = v41;
    (*(v83 + 8))(v23, v84);
    v43 = sub_3F08(v40, v42, &v102);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_0, v33, v34, "CommonNeedsConfirmationStrategy#confirmationViewOutput with responseMode = %s", v37, 0xCu);
    sub_306C(v39);
    v29 = v90;
    v18 = v80;

    v17 = v86;
  }

  (*(v25 + 8))(v27, v89);
  v44 = sub_2C9B30();
  __chkstk_darwin(v44);
  v46 = v93;
  v45 = v94;
  *(&v79 - 4) = v93;
  *(&v79 - 3) = v45;
  v47 = v100;
  *(&v79 - 2) = v100;
  *(&v79 - 1) = v29;
  sub_2CA560();
  v49 = type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, v46, v45, v48);
  v50 = v91;
  sub_F3F4(v47 + *(v49 + 36), v91, &unk_3530C0, &unk_2D0A40);
  v51 = v95;
  v52 = v97;
  if ((*(v95 + 48))(v50, 1, v97) == 1)
  {
    sub_30B8(v50, &unk_3530C0, &unk_2D0A40);
  }

  else
  {
    v53 = v51;
    v54 = v87;
    v94 = *(v51 + 32);
    v94();
    v55 = v47 + *(v49 + 44);
    v56 = v85;
    sub_F3F4(v55, v85, &qword_34C820, &unk_2D0A30);
    v57 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
    if ((*(*(v57 - 8) + 48))(v56, 1, v57) != 1)
    {
      v100 = *(v56 + *(v57 + 48));
      v69 = sub_2CA130();
      (*(*(v69 - 8) + 8))(v56, v69);
      v70 = v82;
      (*(v53 + 16))(v82, v54, v52);
      v71 = v98;
      (*(v18 + 16))(v98, v101, v17);
      v72 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v86 = v17;
      v73 = (v81 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
      v74 = (*(v18 + 80) + v73 + 8) & ~*(v18 + 80);
      v75 = swift_allocObject();
      (v94)(v75 + v72, v70, v52);
      v76 = v100;
      *(v75 + v73) = v100;
      v17 = v86;
      (*(v18 + 32))(v75 + v74, v71, v86);
      v77 = v76;
      sub_20410(&unk_353030, &unk_2D1450);
      sub_2CE4F0();

      (*(v53 + 8))(v87, v52);
      return (*(v18 + 8))(v101, v17);
    }

    (*(v53 + 8))(v54, v52);
    sub_30B8(v56, &qword_34C820, &unk_2D0A30);
    v47 = v100;
  }

  v58 = v88;
  sub_F3F4(v47 + *(v49 + 44), v88, &qword_34C820, &unk_2D0A30);
  v59 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
  {
    sub_30B8(v58, &qword_34C820, &unk_2D0A30);
    v60 = v98;
    (*(v18 + 16))(v98, v101, v17);
    v61 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v62 = swift_allocObject();
    (*(v18 + 32))(v62 + v61, v60, v17);
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();
  }

  else
  {
    v63 = *(v58 + *(v59 + 48));
    v64 = sub_2CA130();
    (*(*(v64 - 8) + 8))(v58, v64);
    v65 = v98;
    (*(v18 + 16))(v98, v101, v17);
    v66 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = v63;
    (*(v18 + 32))(v67 + v66, v65, v17);
    v68 = v63;
    sub_20410(&unk_353030, &unk_2D1450);
    sub_2CE4F0();
  }

  return (*(v18 + 8))(v101, v17);
}

uint64_t sub_25F00C(void (*a1)(void *))
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v6 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2CDFE0();
  v8 = sub_2CE670();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "CommonNeedsConfirmationStrategy#makeConfirmationRejectedResponse... (ignoring)", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_2C9BC0();
  sub_2C9BB0();
  v13 = 0;
  a1(v12);
  return sub_30B8(v12, qword_34C798, &qword_2D0DA0);
}

uint64_t sub_25F2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for CommonNeedsConfirmationStrategy.ConfirmationOutputContext(0, v4[2], v4[3], a4) - 8);
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  v11 = v4[8];
  v12 = v4 + ((*(v6 + 80) + 72) & ~*(v6 + 80));

  return sub_2562E0(a1, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_25F354(uint64_t a1)
{
  v4 = *(sub_2CA630() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24C84;

  return sub_257D54(a1, v1 + v5);
}

uint64_t sub_25F430(uint64_t a1)
{
  v4 = *(sub_2CA630() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24C84;

  return sub_257ADC(a1, v6, v1 + v5);
}

uint64_t sub_25F514(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2CD230() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_2CA630() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_E664;

  return sub_2577D0(a1, v1 + v6, v10, v1 + v9);
}

uint64_t sub_25F700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&unk_3530C0, &unk_2D0A40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_25F878(uint64_t a1)
{
  sub_CEE50(319, &qword_34F358, &qword_34C6E0, &unk_2D0730);
  if (v1 <= 0x3F)
  {
    sub_25F9C0(319, &qword_34EE70, &type metadata accessor for SiriAudioSnippets);
    if (v2 <= 0x3F)
    {
      sub_CEE50(319, &qword_34F350, &qword_34C6E8, &unk_2D0FF0);
      if (v3 <= 0x3F)
      {
        sub_25F9C0(319, &qword_355FB0, &type metadata accessor for NLContextUpdate);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F9C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2CEB90();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Class sub_25FA38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_334A0(0, &qword_34DD50, NSObject_ptr);
    v4.super.isa = sub_2CE1F0().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_25FAD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_25FB40()
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
  qword_35F850 = v8;
  return result;
}

uint64_t sub_25FCD8()
{
  result = AFIsInternalInstall();
  byte_35F858 = result;
  return result;
}

uint64_t sub_25FCF8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v7, v8, "PlayMediaRCHFlowWrapper#exitValue exiting", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return sub_265310(a1);
}

uint64_t sub_25FEB8(uint64_t a1)
{
  v2 = sub_2CA7B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v10 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  (*(v3 + 16))(v5, a1, v2);
  v11 = sub_2CDFE0();
  v12 = sub_2CE670();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = v6;
    v14 = v13;
    v20 = swift_slowAlloc();
    v23 = v20;
    *v14 = 136315138;
    sub_270D7C(&qword_34CD00, &type metadata accessor for Input, &protocol conformance descriptor for Input);
    v15 = sub_2CEE70();
    v22 = a1;
    v17 = v16;
    (*(v3 + 8))(v5, v2);
    v18 = sub_3F08(v15, v17, &v23);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v11, v12, "PlayMediaRCHFlowWrapper#onInput with input: %s", v14, 0xCu);
    sub_306C(v20);

    (*(v7 + 8))(v9, v21);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  return sub_2CA890() & 1;
}

uint64_t sub_260220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v5 = sub_2CE150();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE180();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v24 = v10;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "PlayMediaRCHFlowWrapper#execute", v18, 2u);
    v10 = v24;
  }

  (*(v12 + 8))(v14, v11);
  if (qword_34C018 != -1)
  {
    swift_once();
  }

  v19 = swift_allocObject();
  v20 = v25;
  v19[2] = v3;
  v19[3] = v20;
  v19[4] = a2;
  aBlock[4] = sub_2758E8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_33C7D0;
  v21 = _Block_copy(aBlock);

  sub_2CE160();
  v29 = _swiftEmptyArrayStorage;
  sub_270D7C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80, &protocol conformance descriptor for [A]);
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v21);
  (*(v28 + 8))(v7, v5);
  (*(v26 + 8))(v10, v27);
}

uint64_t sub_2606D0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v80 = a3;
  v81 = a2;
  v78 = a1;
  v74 = sub_2C9EC0();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20410(&qword_356378, &qword_2D8590);
  __chkstk_darwin(v4 - 8);
  v6 = &v69 - v5;
  v7 = sub_20410(&qword_3524B0, &unk_2D8440);
  v8 = *(v7 - 8);
  v82 = v7;
  v83 = v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v79 = &v69 - v12;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v69 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v70 = &v69 - v18;
  v19 = __chkstk_darwin(v17);
  v71 = &v69 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v69 - v22;
  __chkstk_darwin(v21);
  v25 = &v69 - v24;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v26 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v27 = *(v14 + 16);
  v84 = v13;
  v75 = v27;
  v27(v25, v26, v13);
  v28 = sub_2CDFE0();
  v29 = sub_2CE670();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "PlayMediaRCHFlowWrapper#execute-async", v30, 2u);
  }

  v31 = v84;
  v76 = *(v14 + 8);
  v77 = v14 + 8;
  v76(v25, v84);
  v32 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result;
  v33 = v78;
  swift_beginAccess();
  sub_F3F4(v33 + v32, v6, &qword_356378, &qword_2D8590);
  v35 = v82;
  v34 = v83;
  if ((*(v83 + 48))(v6, 1, v82) == 1)
  {
    sub_30B8(v6, &qword_356378, &qword_2D8590);
    v75(v23, v26, v31);
    v36 = sub_2CDFE0();
    v37 = sub_2CE670();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "PlayMediaRCHFlowWrapper#execute no result from action, assuming this is the prior-execution", v38, 2u);
    }

    v76(v23, v31);
    v85 = *(v33 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playMediaFlow);

    sub_20410(&qword_3510A8, &unk_2D4D80);
    sub_72068(&qword_356390, &qword_3510A8, &unk_2D4D80, &protocol conformance descriptor for RCHFlow<A>);
    v39 = v72;
    sub_2C9E80();

    v81(v39);
    return (*(v73 + 8))(v39, v74);
  }

  else
  {
    v41 = v79;
    (*(v34 + 32))(v79, v6, v35);
    (*(v34 + 16))(v11, v41, v35);
    v42 = (*(v34 + 88))(v11, v35);
    if (v42 == enum case for RCHFlowResult.complete<A, B>(_:))
    {
      (*(v34 + 96))(v11, v35);
      v43 = *v11;
      v44 = *(v11 + 1);

      v45 = v71;
      v75(v71, v26, v84);
      v46 = sub_2CDFE0();
      v47 = sub_2CE670();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "PlayMediaRCHFlowWrapper#execute completed", v48, 2u);
      }

      v76(v45, v84);
      sub_2CD0A0();
      v49 = v44;
      sub_2CEAE0();

      v50 = sub_2CD080();

      sub_2614A8(v43, v49, v50, v81, v80);

      return (*(v83 + 8))(v79, v82);
    }

    else if (v42 == enum case for RCHFlowResult.error<A, B>(_:))
    {
      (*(v34 + 96))(v11, v35);
      v51 = v70;
      v52 = v84;
      v75(v70, v26, v84);
      swift_errorRetain();
      v53 = sub_2CDFE0();
      v54 = sub_2CE670();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v85 = v56;
        *v55 = 136315138;
        swift_getErrorValue();
        v57 = sub_2CEEF0();
        v59 = sub_3F08(v57, v58, &v85);

        *(v55 + 4) = v59;
        v35 = v82;
        _os_log_impl(&dword_0, v53, v54, "PlayMediaRCHFlowWrapper#execute error: %s", v55, 0xCu);
        sub_306C(v56);
      }

      v76(v51, v52);
      v60 = v72;
      sub_2C9EB0();
      v81(v60);

      (*(v73 + 8))(v60, v74);
      return (*(v83 + 8))(v79, v35);
    }

    else if (v42 == enum case for RCHFlowResult.cancelled<A, B>(_:))
    {
      v61 = v69;
      v75(v69, v26, v84);
      v62 = sub_2CDFE0();
      v63 = sub_2CE690();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_0, v62, v63, "PlayMediaRCHFlowWrapper#execute cancelled, closing", v64, 2u);
        v34 = v83;
      }

      v76(v61, v84);
      v65 = v72;
      sub_2C9EB0();
      v81(v65);
      (*(v73 + 8))(v65, v74);
      return (*(v34 + 8))(v79, v35);
    }

    else
    {
      v66 = v34;
      v67 = v72;
      sub_2C9EB0();
      v81(v67);
      (*(v73 + 8))(v67, v74);
      v68 = *(v66 + 8);
      v68(v79, v35);
      return (v68)(v11, v35);
    }
  }
}

uint64_t sub_2611F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_356378, &qword_2D8590);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-v5];
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_2CDFE0();
  v13 = sub_2CE670();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "PlayMediaRCHFlowWrapper#execute setting result...", v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v15 = sub_20410(&qword_3524B0, &unk_2D8440);
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, a1, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result;
  swift_beginAccess();
  sub_27579C(v6, a2 + v17);
  return swift_endAccess();
}

uint64_t sub_2614A8(uint64_t a1, void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v54 = a2;
  v55 = a5;
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v51 - v12;
  v14 = sub_2CCF90();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v53 = a3;
    v18 = sub_2CBD20();
    v60[0] = v16;
    v60[1] = v17;
    __chkstk_darwin(v18);
    *(&v51 - 2) = v60;
    v19 = sub_13964(sub_334E8, (&v51 - 4), v18);

    if (v19)
    {
      v20 = v8;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v21 = v7;
      v22 = sub_3ED0(v7, static Logger.default);
      swift_beginAccess();
      v23 = v20;
      (*(v20 + 16))(v13, v22, v21);

      v24 = sub_2CDFE0();
      v25 = sub_2CE690();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v58[0] = v27;
        *v26 = 136446210;
        v28 = sub_3F08(v16, v17, v58);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_0, v24, v25, "PlayMediaRCHFlowWrapper#processAllContinuations for bundle: %{public}s IS a music or radio request, performing prepareForSetQueue validation...", v26, 0xCu);
        sub_306C(v27);
      }

      else
      {
      }

      (*(v23 + 8))(v13, v21);
      v44 = v53;
      sub_2CBED0();
      sub_2CBEC0();
      v45 = swift_allocObject();
      v46 = v56;
      v45[2] = v57;
      v45[3] = a1;
      v48 = v54;
      v47 = v55;
      v45[4] = v54;
      v45[5] = v44;
      v45[6] = v46;
      v45[7] = v47;

      v49 = v48;

      sub_2CBE80();
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v29 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v11, v29, v7);

  v30 = sub_2CDFE0();
  v31 = sub_2CE690();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v59 = v33;
    *v32 = 136446210;
    v53 = v11;
    v58[0] = sub_2CCF90();
    v58[1] = v34;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v35 = sub_2CE2A0();
    v37 = sub_3F08(v35, v36, &v59);
    v52 = v7;
    v38 = v37;

    *(v32 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "PlayMediaRCHFlowWrapper#processAllContinuations %{public}s not a music or radio bundle identifier, skipping prepareForSetQueue validation", v32, 0xCu);
    sub_306C(v33);

    (*(v8 + 8))(v53, v52);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  v39 = swift_allocObject();
  v41 = v54;
  v40 = v55;
  v42 = v56;
  v39[2] = v54;
  v39[3] = v42;
  v39[4] = v40;
  v39[5] = v57;
  v39[6] = a1;

  v43 = v41;

  sub_2CB6D0();
}

uint64_t sub_261A5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v98 = a7;
  v99 = a5;
  v94 = a6;
  v95 = a2;
  v96 = a3;
  v97 = a4;
  v100 = sub_2CE000();
  v93 = *(v100 - 8);
  v8 = __chkstk_darwin(v100);
  v92 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v91 = &v80 - v10;
  v11 = sub_2CB850();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v80 - v16;
  v18 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v18 - 8);
  v20 = &v80 - v19;
  v21 = sub_2CC950();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v90 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v89 = &v80 - v25;
  __chkstk_darwin(v24);
  v27 = &v80 - v26;
  v28 = a1;
  v30 = v29;
  v32 = v31;
  sub_F3F4(v28, v20, &qword_352D78, &unk_2D5320);
  if ((*(v30 + 48))(v20, 1, v32) == 1)
  {
    sub_30B8(v20, &qword_352D78, &unk_2D5320);
LABEL_5:
    v38 = v100;
    v39 = v92;
    v40 = v93;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v41 = sub_3ED0(v38, static Logger.default);
    swift_beginAccess();
    (*(v40 + 16))(v39, v41, v38);
    v42 = sub_2CDFE0();
    v43 = sub_2CE690();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "PlayMediaRCHFlowWrapper#processAllContinuations found non-error result for prepareForSetQueue, continuing to validate playback continuation...", v44, 2u);
    }

    (*(v40 + 8))(v39, v38);
    v45 = swift_allocObject();
    v47 = v97;
    v46 = v98;
    v48 = v94;
    v45[2] = v97;
    v45[3] = v48;
    v45[4] = v46;
    v49 = v96;
    v45[5] = v95;
    v45[6] = v49;

    v50 = v47;

    sub_2CB6D0();
  }

  v87 = *(v30 + 32);
  v88 = v30 + 32;
  v87(v27, v20, v32);
  v33 = v30;
  sub_2CC940();
  (*(v12 + 104))(v15, enum case for PlaybackCode.noSetQueueCodes(_:), v11);
  sub_270D7C(&qword_353CD8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v34 = sub_2CE250();
  v37 = *(v12 + 8);
  v35 = v12 + 8;
  v36 = v37;
  v37(v15, v11);
  v37(v17, v11);
  if (v34)
  {
    (*(v33 + 8))(v27, v32);
    goto LABEL_5;
  }

  v83 = v35;
  v92 = v27;
  v86 = v32;
  v52 = v100;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v53 = sub_3ED0(v52, static Logger.default);
  swift_beginAccess();
  v54 = v93;
  (*(v93 + 16))(v91, v53, v52);
  v84 = v33;
  v55 = *(v33 + 16);
  v56 = v89;
  v57 = v86;
  v85 = v55;
  v55(v89, v92, v86);
  v58 = sub_2CDFE0();
  v82 = sub_2CE680();
  if (os_log_type_enabled(v58, v82))
  {
    v59 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v101 = v81;
    *v59 = 136446210;
    v80 = v58;
    sub_2CC940();
    v60 = sub_2CB840();
    v62 = v61;
    v36(v17, v11);
    v63 = v84;
    v89 = *(v84 + 8);
    (v89)(v56, v86);
    v64 = sub_3F08(v60, v62, &v101);

    v65 = v59;
    v57 = v86;
    *(v65 + 1) = v64;
    v66 = v80;
    _os_log_impl(&dword_0, v80, v82, "PlayMediaRCHFlowWrapper#processAllContinuations found unsuccessful prepareForSetQueue response %{public}s... waiting for playback continuation to complete to error...", v65, 0xCu);
    sub_306C(v81);

    (*(v54 + 8))(v91, v100);
    v67 = v63;
  }

  else
  {

    v67 = v84;
    v89 = *(v84 + 8);
    (v89)(v56, v57);
    (*(v54 + 8))(v91, v52);
  }

  v68 = v90;
  v69 = v92;
  v85(v90, v92, v57);
  v70 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v71 = (v22 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v87((v74 + v70), v68, v57);
  v75 = v96;
  *(v74 + v71) = v95;
  *(v74 + v72) = v75;
  v77 = v97;
  v76 = v98;
  *(v74 + v73) = v97;
  v78 = (v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v78 = v94;
  v78[1] = v76;

  v79 = v77;

  sub_2CB6D0();

  return (v89)(v69, v57);
}

uint64_t sub_26234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v80 = a5;
  v81 = a7;
  v79 = a6;
  v82 = a3;
  v83 = a4;
  v86 = a2;
  v8 = sub_2CC950();
  v87 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v77 = v10;
  v78 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v67 - v11;
  v73 = sub_2CB850();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20410(&qword_352D78, &unk_2D5320);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v67 - v17;
  v19 = sub_2CE000();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v84 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v67 - v23;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v19, static Logger.default);
  swift_beginAccess();
  v74 = *(v20 + 16);
  v74(v24, v25, v19);
  sub_F3F4(a1, v18, &qword_352D78, &unk_2D5320);
  v26 = sub_2CDFE0();
  LODWORD(v70) = sub_2CE690();
  v27 = os_log_type_enabled(v26, v70);
  v85 = v19;
  v75 = v20;
  if (v27)
  {
    v68 = v25;
    v28 = v8;
    v29 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v89 = v67;
    *v29 = 136446210;
    sub_F3F4(v18, v16, &qword_352D78, &unk_2D5320);
    v30 = v87;
    v31 = (*(v87 + 48))(v16, 1, v28);
    v69 = v28;
    if (v31 == 1)
    {
      sub_30B8(v16, &qword_352D78, &unk_2D5320);
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v35 = v71;
      sub_2CC940();
      (*(v30 + 8))(v16, v28);
      v32 = sub_2CB840();
      v33 = v36;
      (*(v72 + 8))(v35, v73);
    }

    v88[0] = v32;
    v88[1] = v33;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v37 = sub_2CE2A0();
    v39 = v38;
    sub_30B8(v18, &qword_352D78, &unk_2D5320);
    v40 = sub_3F08(v37, v39, &v89);

    *(v29 + 4) = v40;
    _os_log_impl(&dword_0, v26, v70, "PlayMediaRCHFlowWrapper#processAllContinuations playback continuation completed, code? %{public}s", v29, 0xCu);
    sub_306C(v67);

    v34 = *(v75 + 8);
    v19 = v85;
    v34(v24, v85);
    v8 = v69;
    v25 = v68;
  }

  else
  {

    sub_30B8(v18, &qword_352D78, &unk_2D5320);
    v34 = *(v20 + 8);
    v34(v24, v19);
  }

  v41 = v84;
  v74(v84, v25, v19);
  v42 = v87;
  v43 = *(v87 + 16);
  v44 = v76;
  v43(v76, v86, v8);
  v45 = sub_2CDFE0();
  v46 = v8;
  v47 = sub_2CE690();
  if (os_log_type_enabled(v45, v47))
  {
    v48 = swift_slowAlloc();
    v74 = v34;
    v49 = v48;
    v70 = swift_slowAlloc();
    v88[0] = v70;
    *v49 = 136446210;
    v50 = v43;
    v51 = v71;
    sub_2CC940();
    v52 = sub_2CB840();
    v53 = v44;
    v55 = v54;
    v56 = v51;
    v43 = v50;
    (*(v72 + 8))(v56, v73);
    (*(v87 + 8))(v53, v46);
    v57 = sub_3F08(v52, v55, v88);

    *(v49 + 4) = v57;
    _os_log_impl(&dword_0, v45, v47, "PlayMediaRCHFlowWrapper#processAllContinuations replacing playback code for evaluation with failed prepareForSetQueue code: %{public}s", v49, 0xCu);
    sub_306C(v70);
    v42 = v87;

    (v74)(v84, v85);
  }

  else
  {

    (*(v42 + 8))(v44, v46);
    v34(v41, v85);
  }

  v58 = v78;
  v43(v78, v86, v46);
  v59 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v60 = swift_allocObject();
  (*(v42 + 32))(v60 + v59, v58, v46);
  sub_20410(&qword_356388, &qword_2D85A8);
  swift_allocObject();
  sub_2CB6E0();
  v61 = swift_allocObject();
  v63 = v79;
  v62 = v80;
  v61[2] = v80;
  v61[3] = v63;
  v64 = v82;
  v61[4] = v81;
  v61[5] = v64;
  v61[6] = v83;
  v65 = v62;

  sub_2CB6D0();
}

uint64_t sub_262BFC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_2CC950();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a1(v7);
  return sub_30B8(v7, &qword_352D78, &unk_2D5320);
}

uint64_t sub_262D28(uint64_t a1, void *a2, void (*a3)(char *), void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v190 = a6;
  v193 = a4;
  v194 = a5;
  v192 = a3;
  v189 = sub_2C9EC0();
  v182 = *(v189 - 8);
  __chkstk_darwin(v189);
  v181 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_356378, &qword_2D8590);
  __chkstk_darwin(v9 - 8);
  v186 = (&v167 - v10);
  v177 = sub_2CB850();
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v175 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_2CE000();
  v12 = *(v196 - 8);
  v13 = __chkstk_darwin(v196);
  v180 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v167 - v16;
  v18 = __chkstk_darwin(v15);
  v187 = &v167 - v19;
  v20 = __chkstk_darwin(v18);
  v183 = &v167 - v21;
  v22 = __chkstk_darwin(v20);
  v170 = &v167 - v23;
  v24 = __chkstk_darwin(v22);
  v169 = &v167 - v25;
  __chkstk_darwin(v24);
  v168 = &v167 - v26;
  v174 = sub_2CA870();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = (&v167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v28 - 8);
  v30 = &v167 - v29;
  v31 = sub_2CA7B0();
  v179 = *(v31 - 8);
  __chkstk_darwin(v31);
  v171 = &v167 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20410(&qword_352D78, &unk_2D5320);
  __chkstk_darwin(v33 - 8);
  v35 = &v167 - v34;
  v36 = sub_2CC950();
  v37 = __chkstk_darwin(v36);
  v185 = &v167 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v188 = &v167 - v40;
  v184 = v41;
  __chkstk_darwin(v39);
  v43 = &v167 - v42;
  v44 = a1;
  v45 = v12;
  v47 = v46;
  v49 = v48;
  sub_F3F4(v44, v35, &qword_352D78, &unk_2D5320);
  v50 = (*(v47 + 48))(v35, 1, v49);
  v195 = v12;
  v191 = a2;
  if (v50 == 1)
  {
    sub_30B8(v35, &qword_352D78, &unk_2D5320);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v51 = v196;
    v52 = sub_3ED0(v196, static Logger.default);
    swift_beginAccess();
    v53 = v12[2];
    v53(v17, v52, v51);
    v54 = sub_2CDFE0();
    v55 = sub_2CE690();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v194 = v52;
      v58 = v57;
      v198 = v57;
      *v56 = 136446210;
      v59 = sub_2CCCC0();
      v61 = sub_3F08(v59, v60, &v198);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_0, v54, v55, "PlayMediaRCHFlowWrapper#processPlaybackContinuation %{public}s lingering continuation completed successfully", v56, 0xCu);
      sub_306C(v58);
      v52 = v194;

      v62 = v195;
    }

    else
    {

      v62 = v45;
    }

    v84 = v62[1];
    v84(v17, v51);
    if (!sub_2CE810())
    {
      v53(v180, v52, v51);
      v85 = sub_2CDFE0();
      v86 = sub_2CE690();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_0, v85, v86, "PlayMediaRCHFlowWrapper#processPlaybackContinuation allowing Siri to resume as not new playback producing", v87, 2u);
      }

      v84(v180, v51);
    }

    v88 = v181;
    sub_2C9EB0();
    v192(v88);
    return (*(v182 + 8))(v88, v189);
  }

  v63 = *(v47 + 32);
  v189 = v43;
  v182 = v47 + 32;
  v181 = v63;
  (v63)(v43, v35, v49);
  v64 = sub_2CE780();
  v65 = &off_34B000;
  v66 = v188;
  v178 = v49;
  if (v64)
  {
    sub_F3F4(v194 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_input, v30, &qword_34E480, &qword_2D2280);
    v67 = v179;
    v68 = v31;
    if ((*(v179 + 48))(v30, 1, v31) == 1)
    {
      sub_30B8(v30, &qword_34E480, &qword_2D2280);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v69 = v196;
      v70 = sub_3ED0(v196, static Logger.default);
      swift_beginAccess();
      v71 = v170;
      (v45[2])(v170, v70, v69);
      v72 = sub_2CDFE0();
      v73 = sub_2CE680();
      v74 = os_log_type_enabled(v72, v73);
      v49 = v178;
      if (v74)
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v197[0] = v76;
        *v75 = 136446210;
        v77 = sub_2CCCC0();
        v79 = v49;
        v80 = v69;
        v81 = sub_3F08(v77, v78, v197);
        v65 = &off_34B000;

        *(v75 + 4) = v81;
        _os_log_impl(&dword_0, v72, v73, "PlayMediaRCHFlowWrapper#processPlaybackContinuation %{public}s Cache invalidation: input passed for pommesResponse extraction is nil", v75, 0xCu);
        sub_306C(v76);
        v66 = v188;
        v82 = v195;

        v83 = v80;
        v49 = v79;
        v45 = v82;
        (v82[1])(v71, v83);
      }

      else
      {

        (v45[1])(v71, v69);
      }

      goto LABEL_29;
    }

    v90 = v171;
    (*(v67 + 32))(v171, v30, v68);
    v91 = v172;
    sub_2CA790();
    v92 = v173;
    v93 = v174;
    if ((v173[11])(v91, v174) == enum case for Parse.pommesResponse(_:))
    {
      (v92[12])(v91, v93);
      v94 = *v91;
      sub_2CDA30();
      swift_allocObject();
      if (sub_2CDA20())
      {
        sub_2CDA10();

        (*(v179 + 8))(v90, v68);
      }

      else
      {
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v151 = v196;
        v152 = sub_3ED0(v196, static Logger.default);
        swift_beginAccess();
        v153 = v45;
        v154 = v45[2];
        v155 = v168;
        v154(v168, v152, v151);
        v156 = sub_2CDFE0();
        v157 = sub_2CE680();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v197[0] = v159;
          *v158 = 136446210;
          v160 = sub_2CCCC0();
          v162 = sub_3F08(v160, v161, v197);
          v180 = v68;
          v163 = v151;
          v164 = v162;
          v65 = &off_34B000;

          *(v158 + 4) = v164;
          _os_log_impl(&dword_0, v156, v157, "PlayMediaRCHFlowWrapper#processPlaybackContinuation %{public}s Cache invalidation: nil PommesSearchClient instantiation", v158, 0xCu);
          sub_306C(v159);
          v66 = v188;
          v165 = v195;

          v166 = v163;
          v49 = v178;
          (v165[1])(v155, v166);
          (*(v179 + 8))(v171, v180);
          v45 = v165;
          goto LABEL_29;
        }

        (v153[1])(v155, v151);
        (*(v179 + 8))(v171, v68);
        v45 = v153;
      }
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v95 = v196;
      v96 = sub_3ED0(v196, static Logger.default);
      swift_beginAccess();
      v97 = v169;
      (v45[2])(v169, v96, v95);
      v98 = sub_2CDFE0();
      v99 = sub_2CE680();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v197[0] = v101;
        *v100 = 136446210;
        v102 = sub_2CCCC0();
        v104 = v47;
        v105 = sub_3F08(v102, v103, v197);
        v66 = v188;
        v180 = v68;
        v106 = v195;

        *(v100 + 4) = v105;
        v47 = v104;
        v45 = v106;
        v65 = &off_34B000;
        _os_log_impl(&dword_0, v98, v99, "PlayMediaRCHFlowWrapper#processPlaybackContinuation %{public}s Cache invalidation: non pommes-response input", v100, 0xCu);
        sub_306C(v101);

        (v45[1])(v97, v196);
        (*(v179 + 8))(v171, v180);
      }

      else
      {

        (v45[1])(v97, v196);
        (*(v179 + 8))(v90, v68);
      }

      (v173[1])(v172, v174);
    }

    v49 = v178;
  }

LABEL_29:
  if (v65[491] != -1)
  {
    swift_once();
  }

  v107 = v196;
  v108 = sub_3ED0(v196, static Logger.default);
  swift_beginAccess();
  v109 = v45[2];
  v110 = v183;
  v174 = v108;
  v173 = v45 + 2;
  v172 = v109;
  (v109)(v183, v108, v107);
  v111 = *(v47 + 16);
  v188 = (v47 + 16);
  v180 = v111;
  (v111)(v66, v189, v49);
  v112 = sub_2CDFE0();
  v113 = v47;
  v114 = sub_2CE680();
  v115 = os_log_type_enabled(v112, v114);
  v167 = v113;
  if (v115)
  {
    v116 = v66;
    v117 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v197[0] = v171;
    *v117 = 136446466;
    v118 = sub_2CCCC0();
    v120 = sub_3F08(v118, v119, v197);

    *(v117 + 4) = v120;
    *(v117 + 12) = 2082;
    v121 = v49;
    v122 = v175;
    sub_2CC940();
    v123 = sub_2CB840();
    v125 = v124;
    (*(v176 + 8))(v122, v177);
    v179 = *(v113 + 8);
    (v179)(v116, v121);
    v126 = sub_3F08(v123, v125, v197);

    *(v117 + 14) = v126;
    _os_log_impl(&dword_0, v112, v114, "PlayMediaRCHFlowWrapper#processPlaybackContinuation %{public}s lingering continuation completed with error PlaybackCodeAndDescription: %{public}s", v117, 0x16u);
    swift_arrayDestroy();
    v107 = v196;

    v127 = v195;
  }

  else
  {

    v179 = *(v113 + 8);
    (v179)(v66, v49);
    v127 = v45;
  }

  v128 = v127[1];
  v128(v110, v107);
  v129 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:6 userActivity:0];
  v130 = v191;
  v131 = v186;
  *v186 = v190;
  *(v131 + 8) = v130;
  *(v131 + 16) = v129;
  v132 = enum case for RCHFlowResult.complete<A, B>(_:);
  v133 = sub_20410(&qword_3524B0, &unk_2D8440);
  v134 = *(v133 - 8);
  (*(v134 + 104))(v131, v132, v133);
  (*(v134 + 56))(v131, 0, 1, v133);
  v135 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result;
  v136 = v194;
  swift_beginAccess();

  v183 = v130;
  v191 = v129;
  sub_27579C(v131, v136 + v135);
  swift_endAccess();
  v137 = v187;
  (v172)(v187, v174, v107);
  v138 = sub_2CDFE0();
  v139 = sub_2CE690();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    *v140 = 0;
    _os_log_impl(&dword_0, v138, v139, "PlayMediaRCHFlowWrapper#execute unexpected error causing cancel of any previously requested prepareForAudioHandoff", v140, 2u);
  }

  v128(v137, v107);
  sub_2C9A00();
  v196 = v197[4];
  v195 = sub_35E0(v197, v197[3]);
  v141 = v185;
  v142 = v178;
  (v180)(v185, v189, v178);
  v143 = (*(v167 + 80) + 24) & ~*(v167 + 80);
  v144 = (v184 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
  v145 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
  v146 = swift_allocObject();
  *(v146 + 16) = v194;
  (v181)(v146 + v143, v141, v142);
  *(v146 + v144) = v190;
  v147 = v183;
  *(v146 + v145) = v183;
  v148 = (v146 + ((v145 + 15) & 0xFFFFFFFFFFFFFFF8));
  v149 = v193;
  *v148 = v192;
  v148[1] = v149;

  v150 = v147;

  sub_2CA180();

  (v179)(v189, v142);
  return sub_306C(v197);
}

uint64_t sub_2642CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a2;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&dword_0, v15, v16, "PlayMediaRCHFlowWrapper#execute unexpected error cancelled any previously requested prepareForAudioHandoff; evaluating fallback dialog...", v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a3;
  v19 = v23;
  *(v18 + 32) = a4;
  *(v18 + 40) = v19;
  *(v18 + 48) = a6;

  v20 = a4;

  sub_26767C(v24, a3, v20, sub_2758B8, v18);
}

uint64_t sub_264510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v103 = a6;
  v104 = a5;
  v94 = a3;
  v95 = a4;
  v96 = a1;
  v97 = a2;
  v6 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v6 - 8);
  v93 = &v82 - v7;
  v8 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v8 - 8);
  v92 = &v82 - v9;
  v10 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v10 - 8);
  v91 = &v82 - v11;
  v89 = sub_2CCB20();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v82 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2CCB30();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2CCAC0();
  v15 = *(v83 - 8);
  __chkstk_darwin(v83);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2C9EC0();
  v101 = *(v18 - 8);
  v102 = v18;
  __chkstk_darwin(v18);
  v100 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2C8E80();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2CE000();
  v98 = *(v22 - 8);
  v99 = v22;
  v23 = __chkstk_darwin(v22);
  v90 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v82 - v25;
  v27 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v27);
  v29 = &v82 - v28;
  v30 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  __chkstk_darwin(v30 - 8);
  v32 = &v82 - v31;
  sub_F3F4(v96, v29, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v97;
    sub_30B8(v29, &unk_3519A0, &qword_2D0980);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v34 = v99;
    v35 = sub_3ED0(v99, static Logger.default);
    swift_beginAccess();
    v36 = v98;
    (*(v98 + 16))(v26, v35, v34);
    v37 = sub_2CDFE0();
    v38 = sub_2CE680();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "PlayMediaRCHFlowWrapper#execute unexpected error evaluating failure dialog template", v39, 2u);
    }

    (*(v36 + 8))(v26, v34);
    v40 = v83;
    (*(v15 + 104))(v17, enum case for AdditionalMetricsDescription.ModuleName.pmrfw(_:), v83);
    v41 = v84;
    v42 = v86;
    (*(v84 + 104))(v14, enum case for AdditionalMetricsDescription.SourceFunction.procPly(_:), v86);
    v43 = v88;
    v44 = v82;
    v45 = v89;
    (*(v88 + 104))(v82, enum case for AdditionalMetricsDescription.StatusReason.unknown(_:), v89);
    v46 = sub_2CCAD0();
    v98 = v47;
    v99 = v46;
    (*(v43 + 8))(v44, v45);
    (*(v41 + 8))(v14, v42);
    (*(v15 + 8))(v17, v40);
    sub_35E0((v33 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_siriKitTaskLoggingProvider), *(v33 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_siriKitTaskLoggingProvider + 24));
    v48 = enum case for ActivityType.failed(_:);
    v49 = sub_2C9C20();
    v50 = *(v49 - 8);
    v51 = v91;
    (*(v50 + 104))(v91, v48, v49);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = sub_2CA130();
    v53 = v92;
    (*(*(v52 - 8) + 56))(v92, 1, 1, v52);
    v54 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v55 = sub_2C98F0();
    v56 = *(v55 - 8);
    v57 = v93;
    (*(v56 + 104))(v93, v54, v55);
    (*(v56 + 56))(v57, 0, 1, v55);
    sub_2CE710();
    sub_2CB4E0();

    sub_30B8(v57, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v53, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v51, &qword_34CB88, &unk_2D0D90);
    v58 = v100;
    sub_2C9EB0();
    v104(v58);
    return (*(v101 + 8))(v58, v102);
  }

  else
  {
    sub_14A58(v29, v32, &qword_34C6E8, &unk_2D0FF0);
    sub_2C9C00();
    sub_2C98E0();
    v60 = sub_2CB540();
    swift_allocObject();
    v61 = sub_2CB530();
    v107 = v60;
    v108 = sub_270D7C(&unk_353100, &type metadata accessor for SiriEnvironmentBackedDeviceState, &protocol conformance descriptor for SiriEnvironmentBackedDeviceState);
    v106[0] = v61;
    sub_2C9890();
    sub_306C(v106);
    sub_2C98B0();

    sub_2C98C0();

    v62 = [objc_allocWithZone(SAUIAddViews) init];
    sub_334A0(0, &qword_34CD10, SAAceView_ptr);
    isa = sub_2CE400().super.isa;

    [v62 setViews:isa];

    [v62 setDialogPhase:SAUIDialogPhaseErrorValue];
    [v62 setTemporary:0];
    v64 = v62;
    sub_2CBC60();
    sub_35E0(v106, v107);
    sub_2CBE60();
    if (v65)
    {
      v66 = sub_2CE260();
    }

    else
    {
      v66 = 0;
    }

    v68 = v98;
    v67 = v99;
    v69 = v90;
    sub_306C(v106);
    [v64 setRefId:v66];

    v70 = v64;
    sub_2C8E70();
    sub_2C8E50();
    (*(v85 + 8))(v21, v87);
    v71 = sub_2CE260();

    [v70 setAceId:v71];

    sub_2C9A00();
    sub_35E0(v106, v107);
    sub_2CA150();
    sub_306C(v106);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v72 = sub_3ED0(v67, static Logger.default);
    swift_beginAccess();
    (*(v68 + 16))(v69, v72, v67);
    v73 = sub_2CDFE0();
    v74 = sub_2CE690();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v105 = v76;
      *v75 = 136446210;
      v77 = sub_2CCCC0();
      v99 = v32;
      v79 = v68;
      v80 = sub_3F08(v77, v78, &v105);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_0, v73, v74, "PlayMediaRCHFlowWrapper#execute %{public}s sent failure ace view for failed continuation", v75, 0xCu);
      sub_306C(v76);

      v32 = v99;
      (*(v79 + 8))(v69, v67);
    }

    else
    {

      (*(v68 + 8))(v69, v67);
    }

    v81 = v100;
    sub_2C9EB0();
    v104(v81);

    (*(v101 + 8))(v81, v102);
    return sub_30B8(v32, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t sub_265310@<X0>(uint64_t *a1@<X8>)
{
  v161 = a1;
  v1 = sub_20410(&qword_356378, &qword_2D8590);
  v2 = __chkstk_darwin(v1 - 8);
  v146 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v156 = (&v141 - v4);
  v5 = sub_20410(&qword_3524B0, &unk_2D8440);
  v164 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v159 = &v141 - v9;
  v155 = sub_2CE150();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v150 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_2CE180();
  v11 = *(v149 - 8);
  __chkstk_darwin(v149);
  v13 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2CE000();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v147 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v143 = &v141 - v19;
  v20 = __chkstk_darwin(v18);
  v144 = &v141 - v21;
  v22 = __chkstk_darwin(v20);
  v142 = &v141 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v141 - v25;
  __chkstk_darwin(v24);
  v28 = &v141 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0xE000000000000000;
  v160 = v29;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v145 = v26;
  v148 = v8;
  v162 = v5;
  v30 = sub_3ED0(v14, static Logger.default);
  swift_beginAccess();
  v31 = *(v15 + 16);
  v153 = v30;
  v152 = v15 + 16;
  v151 = v31;
  (v31)(v28, v30, v14);
  v32 = sub_2CDFE0();
  v33 = sub_2CE670();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "PlayMediaRCHFlowWrapper#exit", v34, 2u);
  }

  v35 = *(v15 + 8);
  v158 = v15 + 8;
  v157 = v35;
  v35(v28, v14);
  sub_2CBED0();
  sub_2CBEC0();
  sub_2CBEB0();

  sub_2CE170();
  v36 = sub_2CB9F0();
  v165 = v14;
  v37 = *(v11 + 8);
  v38 = v149;
  v37(v13, v149);
  aBlock[4] = sub_266758;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_A4294;
  aBlock[3] = &unk_33C3E8;
  v39 = _Block_copy(aBlock);
  sub_2CE160();
  v166[0] = _swiftEmptyArrayStorage;
  sub_270D7C(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_72068(&qword_34FF30, &qword_34DD48, &qword_2D5F80, &protocol conformance descriptor for [A]);
  v40 = v150;
  v41 = v155;
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v39);

  v154[1](v40, v41);
  v37(v13, v38);
  v42 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_result;
  v43 = v163;
  swift_beginAccess();
  v44 = v43 + v42;
  v45 = v156;
  sub_F3F4(v44, v156, &qword_356378, &qword_2D8590);
  v46 = v164;
  v47 = v162;
  if ((*(v164 + 48))(v45, 1, v162) != 1)
  {
    v59 = v165;
    v60 = v46 + 32;
    v61 = *(v46 + 32);
    v62 = v159;
    (v61)(v159, v45, v47);
    v63 = v148;
    v156 = *(v46 + 16);
    (v156)(v148, v62, v47);
    v64 = (*(v46 + 88))(v63, v47);
    if (v64 == enum case for RCHFlowResult.complete<A, B>(_:))
    {
      v154 = v61;
      v155 = v46 + 32;
      (*(v46 + 96))(v63, v47);
      v65 = *(v63 + 1);
      v66 = *(v63 + 2);
      v67 = v145;
      v151();
      v68 = v66;

      v69 = v65;
      v70 = sub_2CDFE0();
      v71 = sub_2CE690();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v153 = v68;
        v73 = v72;
        v167 = swift_slowAlloc();
        *v73 = 136446978;
        v74 = sub_2CCCC0();
        v76 = sub_3F08(v74, v75, &v167);

        *(v73 + 4) = v76;
        *(v73 + 12) = 2080;
        v166[0] = [v153 code];
        v77 = sub_2CEE70();
        v79 = sub_3F08(v77, v78, &v167);

        *(v73 + 14) = v79;
        *(v73 + 22) = 2080;
        v166[0] = sub_2CCF90();
        v166[1] = v80;
        sub_20410(&qword_34CCC0, &unk_2D0DE0);
        v81 = sub_2CE2A0();
        v83 = sub_3F08(v81, v82, &v167);

        *(v73 + 24) = v83;
        *(v73 + 32) = 2080;
        v84 = sub_2CE770();
        v86 = sub_3F08(v84, v85, &v167);

        *(v73 + 34) = v86;
        v43 = v163;
        _os_log_impl(&dword_0, v70, v71, "PlayMediaRCHFlowWrapper#exit %{public}s SUCCESS response code:%s with app:%s intent:%s", v73, 0x2Au);
        swift_arrayDestroy();
        v47 = v162;

        v68 = v153;
        v46 = v164;

        v87 = v145;
      }

      else
      {

        v87 = v67;
      }

      v157(v87, v165);
      v53 = v160;
      *(v160 + 16) = 0x6574656C706D6F63;
      *(v53 + 24) = 0xE800000000000000;
      v102 = v159;
      sub_266EFC(v159);
      v103 = v146;
      (v156)(v146, v102, v47);
      (*(v46 + 56))(v103, 0, 1, v47);
      sub_272348(v103);
      sub_30B8(v103, &qword_356378, &qword_2D8590);
      sub_272654(v102);
      sub_2730D4(v102);
      sub_273CB0(v102);

      v104 = v161;
      v105 = v102;
      v106 = v47;
    }

    else
    {
      if (v64 != enum case for RCHFlowResult.error<A, B>(_:))
      {
        if (v64 == enum case for RCHFlowResult.cancelled<A, B>(_:))
        {
          v107 = v142;
          v108 = v59;
          (v151)(v142, v153, v59);
          v109 = sub_2CDFE0();
          v110 = sub_2CE680();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v155 = v60;
            v113 = v112;
            v166[0] = v112;
            *v111 = 136446210;
            v114 = sub_2CCCC0();
            v116 = v61;
            v117 = sub_3F08(v114, v115, v166);

            *(v111 + 4) = v117;
            v61 = v116;
            _os_log_impl(&dword_0, v109, v110, "PlayMediaRCHFlowWrapper#exit %{public}s CANCELLED response", v111, 0xCu);
            sub_306C(v113);

            v118 = v142;
            v119 = v165;
          }

          else
          {

            v118 = v107;
            v119 = v108;
          }

          v157(v118, v119);
          v53 = v160;
          *(v160 + 16) = 0x656C6C65636E6163;
          *(v53 + 24) = 0xE900000000000064;
          v134 = v159;
          sub_266EFC(v159);
          v135 = v146;
          (v156)(v146, v134, v47);
          (*(v164 + 56))(v135, 0, 1, v47);
          sub_272348(v135);
          sub_30B8(v135, &qword_356378, &qword_2D8590);
          sub_272654(v134);
          sub_2730D4(v134);
          sub_273CB0(v134);
          (v61)(v161, v134, v47);
        }

        else
        {
          v124 = v143;
          (v151)(v143, v153, v59);
          v125 = sub_2CDFE0();
          v126 = sub_2CE690();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v166[0] = v128;
            *v127 = 136446210;
            v129 = sub_2CCCC0();
            v131 = sub_3F08(v129, v130, v166);

            *(v127 + 4) = v131;
            v46 = v164;
            _os_log_impl(&dword_0, v125, v126, "PlayMediaRCHFlowWrapper#exit %{public}s UNKNOWN response", v127, 0xCu);
            sub_306C(v128);

            v132 = v143;
            v133 = v165;
          }

          else
          {

            v132 = v124;
            v133 = v59;
          }

          v157(v132, v133);
          v53 = v160;
          *(v160 + 16) = 0x6E776F6E6B6E75;
          *(v53 + 24) = 0xE700000000000000;
          v136 = sub_2CB850();
          sub_270D7C(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
          v137 = swift_allocError();
          (*(*(v136 - 8) + 104))(v138, enum case for PlaybackCode.ceGE94(_:), v136);
          v139 = *(v46 + 8);
          v139(v159, v47);
          v140 = v161;
          *v161 = v137;
          *(v140 + 8) = 0;
          (*(v46 + 104))();
          v139(v148, v47);
        }

        goto LABEL_23;
      }

      v154 = v61;
      v155 = v46 + 32;
      (*(v46 + 96))(v63, v47);
      v88 = v63[8];
      v89 = v144;
      v90 = v59;
      (v151)(v144, v153, v59);
      swift_errorRetain();
      v91 = sub_2CDFE0();
      v92 = sub_2CE680();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = v88;
        v94 = swift_slowAlloc();
        v166[0] = swift_slowAlloc();
        *v94 = 136446722;
        v95 = sub_2CCCC0();
        v97 = sub_3F08(v95, v96, v166);

        *(v94 + 4) = v97;
        *(v94 + 12) = 1024;
        *(v94 + 14) = v93;
        *(v94 + 18) = 2082;
        swift_getErrorValue();
        v98 = sub_2CEEF0();
        v100 = sub_3F08(v98, v99, v166);

        *(v94 + 20) = v100;
        v46 = v164;
        _os_log_impl(&dword_0, v91, v92, "PlayMediaRCHFlowWrapper#exit %{public}s ERROR response. handled:%{BOOL}d error: %{public}s", v94, 0x1Cu);
        swift_arrayDestroy();

        v101 = v144;
      }

      else
      {

        v101 = v89;
      }

      v157(v101, v90);
      v53 = v160;
      *(v160 + 16) = 0x726F727265;
      *(v53 + 24) = 0xE500000000000000;
      v120 = v159;
      v43 = v163;
      sub_266EFC(v159);
      v121 = v146;
      v122 = v162;
      (v156)(v146, v120, v162);
      (*(v46 + 56))(v121, 0, 1, v122);
      sub_272348(v121);
      sub_30B8(v121, &qword_356378, &qword_2D8590);
      sub_272654(v120);
      sub_2730D4(v120);
      sub_273CB0(v120);

      v104 = v161;
      v105 = v120;
      v106 = v122;
    }

    (v154)(v104, v105, v106);
    goto LABEL_23;
  }

  sub_30B8(v45, &qword_356378, &qword_2D8590);
  v48 = v147;
  v49 = v165;
  (v151)(v147, v153);
  v50 = sub_2CDFE0();
  v51 = sub_2CE670();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v160;
  if (v52)
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v50, v51, "PlayMediaRCHFlowWrapper#exit missing saved result", v54, 2u);
  }

  v157(v48, v49);
  v55 = sub_2CB850();
  sub_270D7C(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v56 = swift_allocError();
  (*(*(v55 - 8) + 104))(v57, enum case for PlaybackCode.ceGE93(_:), v55);
  v58 = v161;
  *v161 = v56;
  *(v58 + 8) = 0;
  (*(v46 + 104))();
LABEL_23:
  sub_274228(v43, v53);
}

uint64_t sub_266764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = sub_20410(&qword_3524B0, &unk_2D8440);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v8 = sub_2CE000();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return _swift_task_switch(sub_2668A8, 0, 0);
}

uint64_t sub_2668A8()
{
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  v4 = sub_3ED0(v2, static Logger.default);
  v0[26] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[27] = v5;
  v0[28] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v36 = v5;
  v37 = v4;
  v5(v1, v4, v2);
  v6 = sub_2CDFE0();
  v7 = sub_2CE670();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "PlayMediaRCHFlowWrapper#donateIntentForEngagement checking for intent", v8, 2u);
  }

  v9 = v0[25];
  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[19];
  v13 = v0[20];
  v14 = v0[18];
  v15 = v0[15];

  v16 = *(v11 + 8);
  v0[29] = v16;
  v16(v9, v10);
  (*(v12 + 16))(v13, v15, v14);
  if ((*(v12 + 88))(v13, v14) == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    v17 = v0[20];
    (*(v0[19] + 96))(v17, v0[18]);
    v18 = *(v17 + 8);
    v0[30] = v18;

    sub_2CD180();
    sub_2CD170();
    v19 = v0[10];
    v20 = v0[11];
    v21 = sub_35E0(v0 + 7, v19);
    v0[5] = v19;
    v0[6] = *(v20 + 16);
    v22 = sub_F390(v0 + 2);
    (*(*(v19 - 8) + 16))(v22, v21, v19);
    sub_306C(v0 + 7);
    v23 = swift_task_alloc();
    v0[31] = v23;
    *v23 = v0;
    v23[1] = sub_266CA8;
    v24 = v0[16];
    v25 = v0[17];

    return static SuggestionsDonationProvider.donateIntentForEngagement(intent:currentRequestId:suggestionsAPIClient:)(v18, v24, v25, v0 + 2);
  }

  else
  {
    v26 = v0[24];
    v27 = v0[21];
    (*(v0[19] + 8))(v0[20], v0[18]);
    v36(v26, v37, v27);
    v28 = sub_2CDFE0();
    v29 = sub_2CE690();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "PlayMediaRCHFlowWrapper#donateIntentForEngagement no intent found in response", v30, 2u);
    }

    v31 = v0[29];
    v32 = v0[24];
    v33 = v0[21];

    v31(v32, v33);

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_266CA8()
{
  v1 = *v0;

  sub_306C((v1 + 16));

  return _swift_task_switch(sub_266DAC, 0, 0);
}

uint64_t sub_266DAC()
{
  (*(v0 + 216))(*(v0 + 184), *(v0 + 208), *(v0 + 168));
  v1 = sub_2CDFE0();
  v2 = sub_2CE670();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 240);
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v1, v2, "PlayMediaRCHFlowWrapper#donateIntentForEngagement complete", v4, 2u);
  }

  else
  {

    v1 = *(v0 + 240);
  }

  v5 = *(v0 + 232);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);

  v5(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_266EFC(uint64_t a1)
{
  v62 = sub_2CE000();
  v64 = *(v62 - 8);
  v2 = __chkstk_darwin(v62);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v59 = &v52 - v6;
  __chkstk_darwin(v5);
  v63 = &v52 - v7;
  v8 = sub_20410(&qword_3524B0, &unk_2D8440);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = (&v52 - v13);
  v15 = *(v9 + 16);
  v15(&v52 - v13, a1, v8);
  v16 = *(v9 + 88);
  if (v16(v14, v8) == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v9 + 96))(v14, v8);
    v17 = *v14;
    v61 = v14[1];
    v58 = v14[2];
    v15(v12, a1, v8);
    v57 = v16(v12, v8);
    (*(v9 + 8))(v12, v8);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v18 = v62;
    v19 = sub_3ED0(v62, static Logger.default);
    swift_beginAccess();
    v20 = v64;
    v21 = *(v64 + 16);
    v21(v63, v19, v18);
    v22 = sub_2CDFE0();
    v23 = sub_2CE690();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "PlayMediaRCHFlowWrapper#appSelectionRecord Saving...", v24, 2u);
      v20 = v64;
    }

    v54 = enum case for RCHFlowResult.cancelled<A, B>(_:);

    v26 = *(v20 + 8);
    v25 = v20 + 8;
    v53 = v26;
    v26(v63, v18);

    v56 = v61;
    v27 = v58;
    v55 = [v58 code];
    v60 = *(v60 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_pseSignalsStitcher);
    sub_2CC2B0();
    v63 = swift_allocBox();
    sub_2CC2A0();

    v28 = sub_2CCF90();
    if (v29)
    {
      v30 = v29;
      v52 = v28;
      v31 = v59;
      v21(v59, v19, v18);
      v32 = v31;

      v33 = sub_2CDFE0();
      v34 = sub_2CE670();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v64 = v25;
        v36 = v35;
        v37 = swift_slowAlloc();
        v65[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_3F08(v52, v30, v65);
        _os_log_impl(&dword_0, v33, v34, "AppSelectionContext#saveRecord setting lastBundleIdentifier=%s", v36, 0xCu);
        sub_306C(v37);
        v27 = v58;
      }

      v53(v32, v18);
      sub_2CC260();
    }

    v45 = v57 == v54;

    sub_2CBC60();
    sub_35E0(v65, v65[3]);
    v46 = sub_2CBE60();
    v48 = v47;
    sub_306C(v65);
    sub_2CC0E0();
    v49 = swift_allocObject();
    *(v49 + 16) = v45;
    *(v49 + 24) = v46;
    *(v49 + 32) = v48;
    v50 = v60;
    *(v49 + 40) = v61;
    *(v49 + 48) = v17;
    *(v49 + 56) = v63;
    *(v49 + 64) = v50;
    *(v49 + 72) = v55;
    *(v49 + 80) = 0;

    v51 = v56;
    sub_2CC0C0();
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v38 = v62;
    v39 = sub_3ED0(v62, static Logger.default);
    swift_beginAccess();
    v40 = v64;
    (*(v64 + 16))(v4, v39, v38);
    v41 = sub_2CDFE0();
    v42 = sub_2CE680();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v41, v42, "PlayMediaRCHFlowWrapper#appSelectionRecord unable to get RCH result", v43, 2u);
    }

    return (*(v40 + 8))(v4, v38);
  }
}

double sub_26767C(uint64_t a1, uint64_t a2, char *a3, char *a4, char *a5)
{
  v408 = a5;
  v407 = a4;
  v406 = a3;
  v403 = a2;
  v392 = sub_2CB9E0();
  v391 = *(v392 - 8);
  __chkstk_darwin(v392);
  v390 = &v356 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = sub_2CC760();
  v359 = *(v366 - 8);
  __chkstk_darwin(v366);
  v356 = &v356 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = sub_20410(&qword_34FCB0, &unk_2D8580);
  __chkstk_darwin(v358);
  v368 = &v356 - v8;
  v9 = sub_20410(&qword_34FCB8, &unk_2D3580);
  v10 = __chkstk_darwin(v9 - 8);
  v357 = &v356 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v364 = &v356 - v13;
  __chkstk_darwin(v12);
  v367 = &v356 - v14;
  v413 = sub_2CB850();
  v15 = *(v413 - 8);
  v16 = __chkstk_darwin(v413);
  v369 = &v356 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v370 = &v356 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v356 - v21;
  v23 = __chkstk_darwin(v20);
  v409 = &v356 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v356 - v26;
  v28 = __chkstk_darwin(v25);
  v398 = &v356 - v29;
  __chkstk_darwin(v28);
  v31 = &v356 - v30;
  v32 = sub_2CC950();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v372 = &v356 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v356 - v36;
  v38 = sub_2CE000();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v397 = &v356 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v395 = &v356 - v43;
  v44 = __chkstk_darwin(v42);
  v394 = &v356 - v45;
  v46 = __chkstk_darwin(v44);
  v393 = &v356 - v47;
  v48 = __chkstk_darwin(v46);
  v389 = &v356 - v49;
  v50 = __chkstk_darwin(v48);
  v388 = &v356 - v51;
  v52 = __chkstk_darwin(v50);
  v387 = &v356 - v53;
  v54 = __chkstk_darwin(v52);
  v386 = &v356 - v55;
  v56 = __chkstk_darwin(v54);
  v385 = &v356 - v57;
  v58 = __chkstk_darwin(v56);
  v384 = &v356 - v59;
  v60 = __chkstk_darwin(v58);
  v383 = &v356 - v61;
  v62 = __chkstk_darwin(v60);
  v382 = &v356 - v63;
  v64 = __chkstk_darwin(v62);
  v380 = &v356 - v65;
  v66 = __chkstk_darwin(v64);
  v381 = &v356 - v67;
  v68 = __chkstk_darwin(v66);
  v378 = &v356 - v69;
  v70 = __chkstk_darwin(v68);
  v377 = &v356 - v71;
  v72 = __chkstk_darwin(v70);
  v376 = &v356 - v73;
  v74 = __chkstk_darwin(v72);
  v375 = &v356 - v75;
  v76 = __chkstk_darwin(v74);
  v371 = &v356 - v77;
  v78 = __chkstk_darwin(v76);
  v365 = &v356 - v79;
  v80 = __chkstk_darwin(v78);
  v404 = &v356 - v81;
  v82 = __chkstk_darwin(v80);
  v396 = &v356 - v83;
  __chkstk_darwin(v82);
  v414 = &v356 - v84;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v399 = v27;
  v400 = v22;
  v85 = sub_3ED0(v38, static Logger.default);
  swift_beginAccess();
  v86 = *(v39 + 16);
  v410 = v85;
  v411 = v39 + 16;
  v412 = v86;
  v86(v414, v85, v38);
  v87 = *(v33 + 16);
  v361 = v33 + 16;
  v360 = v87;
  v87(v37, a1, v32);
  v88 = sub_2CDFE0();
  v89 = a1;
  v90 = sub_2CE690();
  v91 = os_log_type_enabled(v88, v90);
  v415 = v39;
  v416 = v38;
  v373 = v32;
  v363 = v33;
  if (v91)
  {
    v92 = swift_slowAlloc();
    v379 = v89;
    v93 = v92;
    v401 = v92;
    v402 = swift_slowAlloc();
    *&v421 = v402;
    *v93 = 136446210;
    sub_2CC940();
    v94 = sub_2CB840();
    v96 = v95;
    v97 = v413;
    (*(v15 + 8))(v31, v413);
    v362 = *(v33 + 8);
    v362(v37, v32);
    v98 = sub_3F08(v94, v96, &v421);

    v99 = v401;
    *(v401 + 4) = v98;
    _os_log_impl(&dword_0, v88, v90, "PlayMediaRCHFlowWrapper#dialogForError code %{public}s", v99, 0xCu);
    sub_306C(v402);

    v100 = v416;
    v101 = v379;

    v102 = *(v415 + 8);
    v102(v414, v100);
  }

  else
  {

    v362 = *(v33 + 8);
    v362(v37, v32);
    v102 = *(v39 + 8);
    v102(v414, v38);
    v101 = v89;
    v97 = v413;
  }

  v374 = sub_274B20();
  v402 = v103;
  sub_2CB750();
  sub_2CC940();
  v104 = sub_2CB740();
  v105 = *(v15 + 8);
  v401 = v31;
  v106 = v31;
  v107 = (v15 + 8);
  v105(v106, v97);
  v108 = v97;
  v414 = v102;
  if (v104)
  {
    v109 = v105;
    v110 = *(v405 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23PlayMediaRCHFlowWrapper_playDialogService);
    v111 = v398;
    sub_2CC940();
    v112 = sub_112C0(_swiftEmptyArrayStorage);
    sub_270F9C(v112, v110, v111, v403, v406, v407, v408);
    v109(v111, v97);

    return result;
  }

  v113 = v399;
  sub_2CC940();
  v115 = *(v15 + 104);
  v114 = (v15 + 104);
  v398 = v115;
  (v115)(v409, enum case for PlaybackCode.applicationTerminated(_:), v108);
  v116 = sub_270D7C(&qword_352D80, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  sub_2CE3E0();
  v396 = v116;
  sub_2CE3E0();
  if (v421 == v420)
  {
    v105(v409, v108);
    v117 = v113;
    v118 = v105;
    v119 = v107;
    v120 = v118;
    (v118)(v117, v108);

    v121 = v401;
    v412(v404, v410, v416);
  }

  else
  {
    v122 = v107;
    v123 = v102;
    v124 = v108;
    v125 = sub_2CEEA0();
    v105(v409, v124);
    v126 = v113;
    v127 = v124;
    v102 = v123;
    v128 = v105;
    v119 = v122;
    v120 = v128;
    (v128)(v126, v127);

    v121 = v401;
    if ((v125 & 1) == 0)
    {
      goto LABEL_15;
    }

    v412(v404, v410, v416);
  }

  v129 = sub_2CDFE0();
  v130 = sub_2CE690();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&dword_0, v129, v130, "PlayMediaRCHFlowWrapper#dialogForError capturing non special case applicationTerminated", v131, 2u);
  }

  v102(v404, v416);
LABEL_15:
  sub_2CC940();
  v132 = v400;
  v133 = v413;
  v134 = v101;
  v135 = v398;
  (v398)(v400, enum case for PlaybackCode.subscriptionError(_:), v413);
  sub_270D7C(&qword_353CD8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v136 = sub_2CE250();
  (v120)(v132, v133);
  (v120)(v121, v133);
  if (v136)
  {

    v137 = v397;
    v138 = v416;
    v412(v397, v410, v416);
    v139 = sub_2CDFE0();
    v140 = sub_2CE690();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_0, v139, v140, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for Podcast subscription error code", v141, 2u);
    }

    (v414)(v137, v138);
    sub_20410(&unk_356F30, &qword_2D69C0);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_2D0090;
    *(v142 + 32) = 0x656C746974;
    *(v142 + 40) = 0xE500000000000000;
    v143 = v406;
    v144 = sub_1D05D8();
    if (v145)
    {
      v146 = v144;
    }

    else
    {
      v146 = 0;
    }

    v147 = 0xE000000000000000;
    if (v145)
    {
      v147 = v145;
    }

    *(v142 + 48) = v146;
    *(v142 + 56) = v147;
    v148 = sub_90A9C(v142);
    swift_setDeallocating();
    sub_30B8(v142 + 32, &qword_354748, &qword_2D69C8);
    swift_deallocClassInstance();
    v149 = sub_2349AC(v148);

    v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v423 = &off_3381B8;
    *&v421 = v143;
    v150 = v143;
    sub_24C478(v149, v403, &v421, v407, v408);
    goto LABEL_24;
  }

  sub_2CC940();
  v135(v132, enum case for PlaybackCode.emptyLibrary(_:), v133);
  v151 = sub_2CE250();
  (v120)(v132, v133);
  (v120)(v121, v133);
  if ((v151 & 1) == 0)
  {
    sub_2CC940();
    v135(v132, enum case for PlaybackCode.playbackDeviceNotFound(_:), v133);
    v158 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v158)
    {

      v159 = v394;
      v160 = v416;
      v412(v394, v410, v416);
      v161 = sub_2CDFE0();
      v162 = sub_2CE690();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 0;
        _os_log_impl(&dword_0, v161, v162, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for playbackDeviceNotFound code", v163, 2u);
      }

      (v414)(v159, v160);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v164 = v406;
      sub_24B0E0(&v421, v407, v408);
      goto LABEL_25;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.maxStreamCountReached(_:), v133);
    v166 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v166)
    {

      v167 = v393;
      v168 = v416;
      v412(v393, v410, v416);
      v169 = sub_2CDFE0();
      v170 = sub_2CE690();
      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        *v171 = 0;
        _os_log_impl(&dword_0, v169, v170, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for maxStreamCountReached code", v171, 2u);
      }

      (v414)(v167, v168);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v172 = v406;
      sub_24B760(&v421, v407, v408);
      goto LABEL_25;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.connectionFailed(_:), v133);
    v173 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v173)
    {

      v174 = v389;
      v175 = v416;
      v412(v389, v410, v416);
      v176 = sub_2CDFE0();
      v177 = sub_2CE690();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        _os_log_impl(&dword_0, v176, v177, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for connectionFailed code", v178, 2u);
      }

      (v414)(v174, v175);
      v179 = v390;
      sub_2CB9C0();
      v180 = sub_2CB9D0();
      (*(v391 + 8))(v179, v392);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v181 = v406;
      if (v180)
      {
        sub_24F254(v403, &v421, v407, v408);
      }

      else
      {
        sub_24EBD4(v403, &v421, v407, v408);
      }

      goto LABEL_25;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.radioRestrictedLocation(_:), v133);
    v182 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v182)
    {

      v183 = v388;
      v184 = v416;
      v412(v388, v410, v416);
      v185 = sub_2CDFE0();
      v186 = sub_2CE690();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        *v187 = 0;
        _os_log_impl(&dword_0, v185, v186, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for radioRestrictedLocation code", v187, 2u);
      }

      (v414)(v183, v184);
      v188 = sub_112C0(_swiftEmptyArrayStorage);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v189 = v406;
      sub_362B0(v188, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.couldNotDiscoverClusterLeader(_:), v133);
    v190 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v190)
    {

      v191 = v387;
      v192 = v416;
      v412(v387, v410, v416);
      v193 = sub_2CDFE0();
      v194 = sub_2CE690();
      if (os_log_type_enabled(v193, v194))
      {
        v195 = swift_slowAlloc();
        *v195 = 0;
        _os_log_impl(&dword_0, v193, v194, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for couldNotDiscoverClusterLeader code", v195, 2u);
      }

      (v414)(v191, v192);
      v196 = sub_112C0(_swiftEmptyArrayStorage);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v197 = v406;
      sub_36920(v196, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.timedOutWaitingForCanBeNowPlaying(_:), v133);
    v198 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v198)
    {

      v199 = v386;
      v200 = v416;
      v412(v386, v410, v416);
      v201 = sub_2CDFE0();
      v202 = sub_2CE690();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        *v203 = 0;
        _os_log_impl(&dword_0, v201, v202, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for timedOutWaitingForCanBeNowPlaying code", v203, 2u);
      }

      (v414)(v199, v200);
      v204 = sub_112C0(_swiftEmptyArrayStorage);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v205 = v406;
      sub_36F90(v204, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.ageVerificationExplicitContent(_:), v133);
    v206 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v206)
    {

      v207 = v385;
      v208 = v416;
      v412(v385, v410, v416);
      v209 = sub_2CDFE0();
      v210 = sub_2CE690();
      if (os_log_type_enabled(v209, v210))
      {
        v211 = swift_slowAlloc();
        *v211 = 0;
        _os_log_impl(&dword_0, v209, v210, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for ageVerificationExplicitContent (explicitContentRestricted) code", v211, 2u);
      }

      (v414)(v207, v208);
      v212 = sub_112C0(_swiftEmptyArrayStorage);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v213 = v406;
      sub_2448A0(v212, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.xSchemeURLError(_:), v133);
    v214 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v214)
    {

      v215 = v384;
      v216 = v416;
      v412(v384, v410, v416);
      v217 = sub_2CDFE0();
      v218 = sub_2CE690();
      if (os_log_type_enabled(v217, v218))
      {
        v219 = swift_slowAlloc();
        *v219 = 0;
        _os_log_impl(&dword_0, v217, v218, "PlayMediaRCHFlowWrapper#dialogForError using XSchemeURLError handling and dialoging", v219, 2u);
      }

      (v414)(v215, v216);
      sub_20410(&unk_353120, &unk_2D0B50);
      v220 = swift_allocObject();
      *(v220 + 16) = xmmword_2D10E0;
      strcpy((v220 + 32), "MetricsError");
      *(v220 + 45) = 0;
      *(v220 + 46) = -5120;
      v221 = sub_2CC910();
      *(v220 + 72) = &type metadata for String;
      *(v220 + 48) = v221;
      *(v220 + 56) = v222;
      sub_2CC230();
      *(v220 + 80) = sub_2CC1F0();
      *(v220 + 88) = v223;
      *(v220 + 120) = &type metadata for String;
      *(v220 + 96) = 0x55656D6568635358;
      *(v220 + 104) = 0xEF726F7272454C52;
      *(v220 + 128) = sub_2CC200();
      *(v220 + 136) = v224;
      v225 = sub_2CC910();
      *(v220 + 168) = &type metadata for String;
      *(v220 + 144) = v225;
      *(v220 + 152) = v226;
      v227 = sub_112C0(v220);
      swift_setDeallocating();
      sub_20410(&qword_34CBA0, &unk_2D0FE0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v419 = v227;
      v418 = &type metadata for Bool;
      LOBYTE(v417) = 1;
      v228 = v406;

      sub_270DC4(&v417, 0xD000000000000010, 0x80000000002DEA50, &v420);
      sub_30B8(&v420, &qword_34CEA0, &qword_2D0FC0);
      sub_243394(v419, v403, &v421, v407, v408);

      goto LABEL_24;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.broadcastStationDown(_:), v133);
    v229 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v229)
    {

      v230 = v383;
      v231 = v416;
      v412(v383, v410, v416);
      v232 = sub_2CDFE0();
      v233 = sub_2CE690();
      if (os_log_type_enabled(v232, v233))
      {
        v234 = swift_slowAlloc();
        *v234 = 0;
        _os_log_impl(&dword_0, v232, v233, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for broadcastStationDown code", v234, 2u);
      }

      (v414)(v230, v231);
      v235 = sub_112C0(_swiftEmptyArrayStorage);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v236 = v406;
      sub_2455A8(v235, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.poorNetworkConnectionTimeout(_:), v133);
    v237 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v237)
    {

      v238 = v382;
      v239 = v416;
      v412(v382, v410, v416);
      v240 = sub_2CDFE0();
      v241 = sub_2CE690();
      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        *v242 = 0;
        _os_log_impl(&dword_0, v240, v241, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for poorNetworkConnectionTimeout code", v242, 2u);
      }

      (v414)(v238, v239);
      v243 = sub_112C0(_swiftEmptyArrayStorage);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v244 = v406;
      sub_245C2C(v243, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.notCurrentlyAllowedExplicitStation(_:), v133);
    v245 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v245)
    {

      v246 = v380;
      v247 = v416;
      v412(v380, v410, v416);
      v248 = sub_2CDFE0();
      v249 = sub_2CE690();
      if (os_log_type_enabled(v248, v249))
      {
        v250 = swift_slowAlloc();
        *v250 = 0;
        _os_log_impl(&dword_0, v248, v249, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for currently explicit content station not allowed for user", v250, 2u);
      }

      (v414)(v246, v247);
      sub_20410(&unk_356F30, &qword_2D69C0);
      v251 = swift_allocObject();
      *(v251 + 16) = xmmword_2D0090;
      *(v251 + 32) = 0x656C746974;
      *(v251 + 40) = 0xE500000000000000;
      v252 = v406;
      v253 = sub_1D05D8();
      if (v254)
      {
        v255 = v253;
      }

      else
      {
        v255 = 0;
      }

      v256 = 0xE000000000000000;
      if (v254)
      {
        v256 = v254;
      }

      *(v251 + 48) = v255;
      *(v251 + 56) = v256;
      v257 = sub_90A9C(v251);
      swift_setDeallocating();
      sub_30B8(v251 + 32, &qword_354748, &qword_2D69C8);
      swift_deallocClassInstance();
      v258 = sub_2349AC(v257);

      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v252;
      v259 = v252;
      sub_2462B0(v258, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    sub_2CC940();
    v135(v132, enum case for PlaybackCode.podcastUpNextEmpty(_:), v133);
    v260 = sub_2CE250();
    (v120)(v132, v133);
    (v120)(v121, v133);
    if (v260)
    {

      v412(v381, v410, v416);
      v261 = sub_2CDFE0();
      v262 = sub_2CE690();
      if (os_log_type_enabled(v261, v262))
      {
        v263 = swift_slowAlloc();
        *v263 = 0;
        _os_log_impl(&dword_0, v261, v262, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for podcastUpNextEmpty code", v263, 2u);
      }

      (v414)(v381, v416);
      v264 = sub_112C0(_swiftEmptyArrayStorage);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v265 = v406;
      sub_244F24(v264, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    v379 = v134;
    sub_2CC940();
    v399 = v114;
    v135(v132, enum case for PlaybackCode.podcastServerNotReachable(_:), v133);
    v266 = sub_2CE250();
    (v120)(v132, v133);
    v409 = v119;
    v404 = v120;
    (v120)(v121, v133);
    if (v266)
    {

      v412(v378, v410, v416);
      v267 = sub_2CDFE0();
      v268 = sub_2CE690();
      if (os_log_type_enabled(v267, v268))
      {
        v269 = swift_slowAlloc();
        *v269 = 0;
        _os_log_impl(&dword_0, v267, v268, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for podcastServerNotReachable code", v269, 2u);
      }

      (v414)(v378, v416);
      v270 = sub_112C0(_swiftEmptyArrayStorage);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v271 = v406;
      sub_246934(v270, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    v272 = v401;
    sub_2CC940();
    v273 = v400;
    v274 = v413;
    (v398)(v400, enum case for PlaybackCode.errorApplicationDisabled(_:), v413);
    v275 = sub_2CE250();
    v276 = v404;
    (v404)(v273, v274);
    v276(v272, v274);
    if (v275)
    {

      v412(v377, v410, v416);
      v277 = sub_2CDFE0();
      v278 = sub_2CE690();
      if (os_log_type_enabled(v277, v278))
      {
        v279 = swift_slowAlloc();
        *v279 = 0;
        _os_log_impl(&dword_0, v277, v278, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for errorApplicationDisabled code", v279, 2u);
      }

      (v414)(v377, v416);
      v280 = sub_112C0(_swiftEmptyArrayStorage);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v281 = v406;
      sub_37C70(v280, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    v282 = v401;
    sub_2CC940();
    v283 = v400;
    v284 = v413;
    (v398)(v400, enum case for PlaybackCode.noLocalEndpointConnection(_:), v413);
    v285 = sub_2CE250();
    v286 = v404;
    (v404)(v283, v284);
    v286(v282, v284);
    if (v285)
    {

      v412(v376, v410, v416);
      v287 = sub_2CDFE0();
      v288 = sub_2CE690();
      if (os_log_type_enabled(v287, v288))
      {
        v289 = swift_slowAlloc();
        *v289 = 0;
        _os_log_impl(&dword_0, v287, v288, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for noLocalEndpointConnection code", v289, 2u);
      }

      (v414)(v376, v416);
      v290 = sub_112C0(_swiftEmptyArrayStorage);
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v291 = v406;
      sub_34234(v290, v403, &v421, v407, v408);
      goto LABEL_24;
    }

    v292 = v401;
    sub_2CC940();
    v293 = v400;
    v294 = v413;
    (v398)(v400, enum case for PlaybackCode.icUserIdentityError(_:), v413);
    v295 = sub_2CE250();
    v296 = v404;
    (v404)(v293, v294);
    v296(v292, v294);
    if (v295)
    {
      v412(v375, v410, v416);
      v297 = sub_2CDFE0();
      v298 = sub_2CE680();
      if (os_log_type_enabled(v297, v298))
      {
        v299 = swift_slowAlloc();
        *v299 = 0;
        _os_log_impl(&dword_0, v297, v298, "PlayMediaRCHFlowWrapper#dialogForError NOT using special dialog for icUserIdentityError code on non-tvOS platform!", v299, 2u);
      }

      (v414)(v375, v416);
      sub_20410(&unk_353120, &unk_2D0B50);
      v300 = swift_allocObject();
      *(v300 + 16) = xmmword_2D0090;
      *(v300 + 32) = 0x457363697274654DLL;
      v301 = v300 + 32;
      *(v300 + 72) = &type metadata for String;
      *(v300 + 40) = 0xEC000000726F7272;
      v302 = v402;
      *(v300 + 48) = v374;
      *(v300 + 56) = v302;
      v303 = sub_112C0(v300);
      swift_setDeallocating();
      sub_30B8(v301, &qword_34CBA0, &unk_2D0FE0);
      swift_deallocClassInstance();
      v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v423 = &off_3381B8;
      *&v421 = v406;
      v419 = v303;
      v418 = &type metadata for Bool;
      LOBYTE(v417) = 1;
      v304 = v406;

      sub_270DC4(&v417, 0xD000000000000010, 0x80000000002DEA50, &v420);
      sub_30B8(&v420, &qword_34CEA0, &qword_2D0FC0);
      sub_243394(v419, v403, &v421, v407, v408);

      goto LABEL_24;
    }

    sub_2CCF90();
    v305 = sub_2CBDB0();

    if ((v305 & 1) == 0)
    {
      sub_2CC8E0();
      sub_2CBC60();
      sub_35E0(&v421, v422);
      sub_2CBE60();
      sub_306C(&v421);
      v306 = sub_2CC8D0();

      if (v306)
      {
        sub_2CC8B0();

        v307 = 0;
      }

      else
      {
        v307 = 1;
      }

      v308 = v359;
      v309 = *(v359 + 56);
      v310 = v367;
      v311 = v366;
      v309(v367, v307, 1, v366);
      v312 = v364;
      (*(v308 + 104))(v364, enum case for AirPlayRouteSetupState.error(_:), v311);
      v309(v312, 0, 1, v311);
      v313 = *(v358 + 48);
      v314 = v310;
      v315 = v368;
      sub_F3F4(v314, v368, &qword_34FCB8, &unk_2D3580);
      sub_F3F4(v312, v315 + v313, &qword_34FCB8, &unk_2D3580);
      v316 = *(v308 + 48);
      if (v316(v315, 1, v311) == 1)
      {
        sub_30B8(v364, &qword_34FCB8, &unk_2D3580);
        sub_30B8(v367, &qword_34FCB8, &unk_2D3580);
        if (v316(v368 + v313, 1, v366) == 1)
        {
          sub_30B8(v368, &qword_34FCB8, &unk_2D3580);
LABEL_122:

          v354 = sub_112C0(_swiftEmptyArrayStorage);
          v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
          v423 = &off_3381B8;
          *&v421 = v406;
          v355 = v406;
          sub_251318(v354, v403, &v421, v407, v408);
LABEL_24:

LABEL_25:
          sub_30B8(&v421, &qword_34C6C0, &qword_2D0710);
          return result;
        }

        goto LABEL_110;
      }

      v317 = v368;
      sub_F3F4(v368, v357, &qword_34FCB8, &unk_2D3580);
      if (v316(v317 + v313, 1, v366) == 1)
      {
        sub_30B8(v364, &qword_34FCB8, &unk_2D3580);
        sub_30B8(v367, &qword_34FCB8, &unk_2D3580);
        (*(v359 + 8))(v357, v366);
LABEL_110:
        sub_30B8(v368, &qword_34FCB0, &unk_2D8580);
        goto LABEL_111;
      }

      v347 = v359;
      v348 = v368;
      v349 = v356;
      v350 = v366;
      (*(v359 + 32))(v356, v368 + v313, v366);
      sub_270D7C(&qword_34FCC8, &type metadata accessor for AirPlayRouteSetupState, &protocol conformance descriptor for AirPlayRouteSetupState);
      v351 = v357;
      v352 = sub_2CE250();
      v353 = *(v347 + 8);
      v353(v349, v350);
      sub_30B8(v364, &qword_34FCB8, &unk_2D3580);
      sub_30B8(v367, &qword_34FCB8, &unk_2D3580);
      v353(v351, v350);
      sub_30B8(v348, &qword_34FCB8, &unk_2D3580);
      if (v352)
      {
        goto LABEL_122;
      }
    }

LABEL_111:
    v318 = sub_112C0(_swiftEmptyArrayStorage);
    sub_2CC940();
    v319 = enum case for PlaybackCode.noPlayTOWindow(_:);
    (v398)(v369, enum case for PlaybackCode.noPlayTOWindow(_:), v413);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v421 == v420)
    {
      v320 = v413;
      v321 = v404;
      (v404)(v369, v413);
      v321(v370, v320);
    }

    else
    {
      v322 = sub_2CEEA0();
      v323 = v413;
      v324 = v404;
      (v404)(v369, v413);
      v324(v370, v323);

      if ((v322 & 1) == 0)
      {
LABEL_117:
        v422 = &type metadata for String;
        *&v421 = v374;
        *(&v421 + 1) = v402;
        sub_E2DC(&v421, &v420);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v417 = v318;
        sub_237690(&v420, 0x457363697274654DLL, 0xEC000000726F7272, isUniquelyReferenced_nonNull_native);
        v335 = v417;
        v412(v371, v410, v416);
        v360(v372, v379, v373);
        v336 = sub_2CDFE0();
        v337 = sub_2CE690();
        if (os_log_type_enabled(v336, v337))
        {
          v338 = swift_slowAlloc();
          v339 = swift_slowAlloc();
          *&v421 = v339;
          *v338 = 136446210;
          v340 = v401;
          v341 = v372;
          sub_2CC940();
          v342 = sub_2CB840();
          v344 = v343;
          (v404)(v340, v413);
          v362(v341, v373);
          v345 = sub_3F08(v342, v344, &v421);

          *(v338 + 4) = v345;
          _os_log_impl(&dword_0, v336, v337, "PlayMediaRCHFlowWrapper#dialogForError using fallback generic error response for code: %{public}s", v338, 0xCu);
          sub_306C(v339);
        }

        else
        {

          v362(v372, v373);
        }

        (v414)(v371, v416);
        v422 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v423 = &off_3381B8;
        *&v421 = v406;
        v418 = &type metadata for Bool;
        v419 = v335;
        LOBYTE(v417) = 1;
        v346 = v406;

        sub_270DC4(&v417, 0xD000000000000010, 0x80000000002DEA50, &v420);
        sub_30B8(&v420, &qword_34CEA0, &qword_2D0FC0);
        sub_243394(v419, v403, &v421, v407, v408);

        goto LABEL_25;
      }
    }

    v412(v365, v410, v416);
    v325 = sub_2CDFE0();
    v326 = sub_2CE690();
    if (os_log_type_enabled(v325, v326))
    {
      v327 = swift_slowAlloc();
      *v327 = 0;
      _os_log_impl(&dword_0, v325, v326, "PlayMediaRCHFlowWrapper#dialogForError noPlayTOWindow", v327, 2u);
    }

    (v414)(v365, v416);
    v328 = v401;
    v329 = v413;
    (v398)(v401, v319, v413);
    v330 = sub_2CB840();
    v332 = v331;
    (v404)(v328, v329);
    v422 = &type metadata for Bool;
    LOBYTE(v421) = 1;
    sub_E2DC(&v421, &v420);
    v333 = swift_isUniquelyReferenced_nonNull_native();
    *&v417 = v318;
    sub_237690(&v420, v330, v332, v333);

    v318 = v417;
    goto LABEL_117;
  }

  v152 = v395;
  v153 = v416;
  v412(v395, v410, v416);
  v154 = sub_2CDFE0();
  v155 = sub_2CE690();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    *v156 = 0;
    _os_log_impl(&dword_0, v154, v155, "PlayMediaRCHFlowWrapper#dialogForError using special dialog for emptyLibrary code", v156, 2u);
  }

  (v414)(v152, v153);
  v157 = [objc_opt_self() resolutionResultUnsupportedWithReason:_INPlayMediaMediaItemUnsupportedReasonEmptyLibrary];
  sub_19E928(v403, 0x657449616964656DLL, 0xEA0000000000736DLL, v157, v406, v407, v408);

  return result;
}

uint64_t sub_26B5C0(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_2CDFD0();
  v76 = *(v3 - 8);
  v77 = v3;
  __chkstk_darwin(v3);
  v74 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE000();
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = __chkstk_darwin(v5);
  v80 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v78 = v68 - v9;
  v10 = __chkstk_darwin(v8);
  v75 = v68 - v11;
  __chkstk_darwin(v10);
  v13 = v68 - v12;
  v14 = sub_20410(&qword_3524B0, &unk_2D8440);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v79 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v68 - v19;
  __chkstk_darwin(v18);
  v22 = v68 - v21;
  v23 = *(v15 + 16);
  v81 = a1;
  v23(v68 - v21, a1, v14);
  v24 = *(v15 + 88);
  v25 = v24(v22, v14);
  if (v25 != enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v15 + 8))(v22, v14);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v48 = v83;
    v49 = sub_3ED0(v83, static Logger.default);
    swift_beginAccess();
    v50 = v82;
    (*(v82 + 16))(v13, v49, v48);
    v51 = sub_2CDFE0();
    v52 = sub_2CE690();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "PlayMediaRCHFlowWrapper#saveToSiriMemory no intent", v53, 2u);
    }

    return (*(v50 + 8))(v13, v48);
  }

  v26 = v25;
  v71 = v24;
  v70 = *(v15 + 96);
  v70(v22, v14);
  v72 = *(v22 + 1);
  v27 = *(v22 + 2);

  v69 = v23;
  v23(v20, v81, v14);
  v28 = v71;
  if (v71(v20, v14) != v26)
  {
    (*(v15 + 8))(v20, v14);
LABEL_18:
    v54 = v82;
    v38 = v83;
    v55 = v80;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v56 = sub_3ED0(v38, static Logger.default);
    swift_beginAccess();
    (*(v54 + 16))(v55, v56, v38);
    v57 = sub_2CDFE0();
    v58 = sub_2CE680();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_0, v57, v58, "PlayMediaRCHFlowWrapper#saveToSiriMemory no app present", v59, 2u);
    }

    else
    {
    }

    return (*(v54 + 8))(v55, v38);
  }

  v68[1] = v15 + 96;
  v29 = v70;
  v70(v20, v14);
  v30 = *(v20 + 1);
  v31 = *(v20 + 2);

  v32 = sub_2CCF90();
  if (!v33)
  {

    goto LABEL_18;
  }

  v34 = v33;
  v35 = v29;
  v80 = v32;
  v36 = v79;
  v69(v79, v81, v14);
  v37 = v28(v36, v14) == v26;
  v38 = v83;
  if (!v37)
  {

    (*(v15 + 8))(v36, v14);
LABEL_24:
    v54 = v82;
    v55 = v78;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v60 = sub_3ED0(v38, static Logger.default);
    swift_beginAccess();
    (*(v54 + 16))(v55, v60, v38);
    v61 = sub_2CDFE0();
    v62 = sub_2CE690();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "PlayMediaRCHFlowWrapper#saveToSiriMemory no response present, or not success", v63, 2u);
    }

    else
    {
    }

LABEL_29:

    return (*(v54 + 8))(v55, v38);
  }

  v35(v36, v14);
  v39 = *(v36 + 1);
  v40 = *(v36 + 2);

  if ([v40 code] != &dword_4)
  {

    goto LABEL_24;
  }

  v41 = v72;
  v42 = v72;
  sub_1D2AC4(v41);

  v43 = sub_2CBD40();
  v84[0] = v80;
  v84[1] = v34;
  __chkstk_darwin(v43);
  v68[-2] = v84;
  v44 = sub_13964(sub_334E8, &v68[-4], v43);

  if ((v44 & 1) == 0)
  {

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v64 = sub_3ED0(v38, static Logger.default);
    swift_beginAccess();
    v54 = v82;
    v55 = v75;
    (*(v82 + 16))(v75, v64, v38);
    v65 = sub_2CDFE0();
    v66 = sub_2CE690();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v65, v66, "PlayMediaRCHFlowWrapper#saveToSiriMemory SiriKit already donating for 3p interactions", v67, 2u);
    }

    else
    {
    }

    goto LABEL_29;
  }

  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v45 = qword_35F760;
  v46 = v74;
  sub_2CDFB0();
  sub_2CE9E0();
  sub_2CDFA0();
  sub_26BFD4(v80, v34, v42, v40, v73);

  sub_2CE9D0();
  sub_2CDFA0();

  return (*(v76 + 8))(v46, v77);
}