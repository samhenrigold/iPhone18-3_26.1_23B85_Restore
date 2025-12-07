uint64_t sub_94478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DB850;
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

uint64_t sub_94AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DB820;
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
  *(v24 + 72) = 0xD00000000000002ALL;
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
    *(v36 + 14) = sub_3F08(0xD00000000000002ALL, v65, &v66);
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
  v69._countAndFlagsBits = 0xD00000000000002ALL;
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

uint64_t sub_95180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DB7F0;
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
  *(v24 + 72) = 0xD000000000000020;
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
    *(v36 + 14) = sub_3F08(0xD000000000000020, v65, &v66);
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
  v69._countAndFlagsBits = 0xD000000000000020;
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

uint64_t sub_95804(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
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
  strcpy((v23 + 72), "DontKnowTitle");
  *(v23 + 86) = -4864;

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
    *(v35 + 14) = sub_3F08(0x776F6E4B746E6F44, 0xED0000656C746954, &v64);
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
  v67._countAndFlagsBits = 0x776F6E4B746E6F44;
  v67._object = 0xED0000656C746954;
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

uint64_t sub_95E98(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
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
  strcpy((v23 + 72), "DontKnowAlbum");
  *(v23 + 86) = -4864;

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
    *(v35 + 14) = sub_3F08(0x776F6E4B746E6F44, 0xED00006D75626C41, &v64);
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
  v67._countAndFlagsBits = 0x776F6E4B746E6F44;
  v67._object = 0xED00006D75626C41;
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

uint64_t sub_9652C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
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
  strcpy((v23 + 72), "DontKnowArtist");
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
    *(v35 + 14) = sub_3F08(0x776F6E4B746E6F44, 0xEE00747369747241, &v64);
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
  v67._countAndFlagsBits = 0x776F6E4B746E6F44;
  v67._object = 0xEE00747369747241;
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

uint64_t sub_96BC0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
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
  strcpy((v23 + 72), "DontKnowRadio");
  *(v23 + 86) = -4864;

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
    *(v35 + 14) = sub_3F08(0x776F6E4B746E6F44, 0xED00006F69646152, &v64);
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
  v67._countAndFlagsBits = 0x776F6E4B746E6F44;
  v67._object = 0xED00006F69646152;
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

uint64_t sub_97254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DB7D0;
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
  *(v24 + 72) = 0xD000000000000010;
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
    *(v36 + 14) = sub_3F08(0xD000000000000010, v65, &v66);
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
  v69._countAndFlagsBits = 0xD000000000000010;
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

uint64_t sub_978D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DB7B0;
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
  *(v24 + 72) = 0xD000000000000016;
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
    *(v36 + 14) = sub_3F08(0xD000000000000016, v65, &v66);
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
  v69._countAndFlagsBits = 0xD000000000000016;
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

uint64_t sub_97F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v65 = 0x80000000002DB790;
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
  *(v24 + 72) = 0xD000000000000016;
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
    *(v36 + 14) = sub_3F08(0xD000000000000016, v65, &v66);
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
  v69._countAndFlagsBits = 0xD000000000000016;
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

uint64_t sub_985E0(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = sub_2CE000();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CDFD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = v2[5];
  v51 = v2[4];
  v14 = v2[6];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  v52 = sub_112C0(_swiftEmptyArrayStorage);
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v15 = qword_35F760;
  sub_2CDFB0();
  (*(v7 + 16))(v10, v12, v6);
  v16 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v55 = v12;
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "catServiceExecute";
  *(v18 + 24) = 17;
  *(v18 + 32) = 2;
  v47 = v7;
  v19 = *(v7 + 32);
  v53 = v6;
  v19(v18 + v16, v10);
  v20 = (v18 + v17);
  *v20 = v48;
  v20[1] = a2;

  v21 = sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v48 = v13;
  *(v22 + 32) = v13;
  *(v22 + 40) = v14;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  strcpy((v22 + 72), "NothingPlaying");
  *(v22 + 87) = -18;

  LOBYTE(v42) = 2;
  sub_2CDF90(v21, &dword_0, v15, "catServiceExecute", 17, 2, v55, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v42, v22);

  v24 = swift_allocObject();
  *(v24 + 16) = sub_13D7C;
  *(v24 + 24) = v18;
  v45 = v24;
  v25 = qword_34BF58;
  v46 = v18;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v50;
  sub_3ED0(v50, static Logger.default);
  swift_beginAccess();
  v27 = v49;
  v28 = v54;
  (*(v49 + 16))();

  v29 = sub_2CDFE0();
  v30 = sub_2CE660();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = v48;
    *(v31 + 4) = sub_3F08(v48, v14, &v56);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_3F08(0x50676E6968746F4ELL, 0xEE00676E6979616CLL, &v56);
    _os_log_impl(&dword_0, v29, v30, "Evaluating CAT family:%s id:%s...", v31, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v54, v26);
  }

  else
  {

    (*(v27 + 8))(v28, v26);
    v32 = v48;
  }

  v56 = v32;
  v57 = v14;

  v60._countAndFlagsBits = 35;
  v60._object = 0xE100000000000000;
  sub_2CE350(v60);
  v61._countAndFlagsBits = 0x50676E6968746F4ELL;
  v61._object = 0xEE00676E6979616CLL;
  sub_2CE350(v61);
  v33 = v56;
  v34 = v57;
  v35 = sub_2CB460();
  if (!v35)
  {
    sub_2CB180();
    v35 = sub_2CB170();
  }

  v36 = v35;
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_13D84;
  v37[4] = v45;
  v38 = sub_2CB180();
  __chkstk_darwin(v38);
  v39 = v52;
  *(&v44 - 10) = v51;
  *(&v44 - 9) = v39;
  *(&v44 - 8) = 0;
  *(&v44 - 7) = v58;
  *(&v44 - 6) = 0;
  *(&v44 - 5) = v33;
  v41 = v34;
  v42 = sub_3E010;
  v43 = v37;

  sub_2CB0F0();

  (*(v47 + 8))(v55, v53);
  return sub_48E38(v58);
}

uint64_t initializeBufferWithCopyOfBuffer for ConfirmInterruptionFlow.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_98CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_98D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void *sub_98D6C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(a2 + 16);
    result = _swiftEmptyArrayStorage;
    if (v4)
    {
      v11 = _swiftEmptyArrayStorage;
      sub_2CED20();
      v6 = *(sub_2CE0A0() - 8);
      v7 = (a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
      v8 = *(v6 + 72);
      do
      {
        sub_9A100(v7, &v10);
        sub_2CED00();
        sub_2CED30();
        sub_2CED40();
        sub_2CED10();
        v7 += v8;
        --v4;
      }

      while (v4);
      return v11;
    }
  }

  else
  {
    v9[2] = __chkstk_darwin(a1);
    return sub_98ED0(sub_5B6EC, v9, a2);
  }

  return result;
}

void *sub_98ED0(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_2CEDA0())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
    sub_2CED20();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = sub_2CECD0();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_2CED00();
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void *sub_99044(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v30 = _swiftEmptyArrayStorage;
    sub_2CED20();
    v9 = a3 + 32;
    for (i = v6 - 1; ; --i)
    {
      v11 = *(v9 + 16);
      v12 = *(v9 + 48);
      v27 = *(v9 + 32);
      v28 = v12;
      v13 = *(v9 + 16);
      v26[0] = *v9;
      v26[1] = v13;
      v14 = *(v9 + 48);
      v22 = v27;
      v23 = v14;
      v29 = *(v9 + 64);
      v24 = *(v9 + 64);
      v20 = v26[0];
      v21 = v11;
      sub_333FC(v26, &v15);
      a1(&v25, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      v15 = v20;
      v16 = v21;
      sub_9AA00(&v15);
      sub_2CED00();
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      if (!i)
      {
        return v30;
      }

      v9 += 72;
    }

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v15 = v20;
    v16 = v21;
    sub_9AA00(&v15);

    __break(1u);
  }

  return result;
}

uint64_t sub_991B0()
{
  v0 = sub_2CC360();
  sub_9A944(v0, qword_34E3E0);
  sub_3ED0(v0, qword_34E3E0);
  return sub_2CC350();
}

void sub_991FC(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v105 = sub_2CA760();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v106 = (&v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = sub_2CC360();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_20410(&unk_3519B0, &qword_2D1230);
  v9 = __chkstk_darwin(v112);
  v109 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = &v102 - v11;
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v107 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v121 = &v102 - v17;
  __chkstk_darwin(v16);
  v19 = &v102 - v18;
  v20 = *a1;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  v22 = *(v13 + 16);
  v115 = v21;
  v114 = v13 + 16;
  v113 = v22;
  v22(v19, v21, v12);
  v23 = v20;
  v24 = sub_2CDFE0();
  v25 = sub_2CE670();

  LODWORD(v110) = v25;
  v26 = os_log_type_enabled(v24, v25);
  v122 = v13;
  v123 = v12;
  v119 = a3;
  v120 = v3;
  if (v26)
  {
    v108 = a2;
    v27 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v126 = v103;
    *v27 = 136315650;
    v28 = [v23 title];
    if (v28)
    {
      v29 = v28;
      v30 = sub_2CE270();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v124 = v30;
    v125 = v32;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v33 = sub_2CE2A0();
    v35 = sub_3F08(v33, v34, &v126);

    *(v27 + 4) = v35;
    *(v27 + 12) = 2080;
    v36 = [v23 artist];
    if (v36)
    {
      v37 = v36;
      v38 = sub_2CE270();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v124 = v38;
    v125 = v40;
    v41 = sub_2CE2A0();
    v43 = sub_3F08(v41, v42, &v126);

    *(v27 + 14) = v43;
    *(v27 + 22) = 2080;
    v44 = [v23 artwork];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 _uri];

      v47 = v111;
      if (v46)
      {
        v48 = v109;
        sub_2C8D60();

        v49 = 0;
      }

      else
      {
        v49 = 1;
        v48 = v109;
      }

      v51 = sub_2C8D90();
      (*(*(v51 - 8) + 56))(v48, v49, 1, v51);
      sub_7FD30(v48, v47);
    }

    else
    {
      v50 = sub_2C8D90();
      (*(*(v50 - 8) + 56))(v111, 1, 1, v50);
    }

    v52 = sub_2CE2A0();
    v54 = sub_3F08(v52, v53, &v126);

    *(v27 + 24) = v54;
    _os_log_impl(&dword_0, v24, v110, "Converting mediaItem for disambiguation. Title: %s artist: %s artwork: %s", v27, 0x20u);
    swift_arrayDestroy();

    v112 = *(v122 + 8);
    v112(v19, v123);
  }

  else
  {

    v112 = *(v13 + 8);
    v112(v19, v12);
  }

  sub_2CA520();
  swift_allocObject();
  sub_2CA510();
  v55 = [v23 identifier];
  if (v55)
  {
    v56 = v55;
    sub_2CE270();
  }

  sub_2CA4F0();

  sub_2CBD50();
  sub_2CA4F0();

  sub_2CA4F0();

  v103 = sub_2CA500();
  v111 = v57;

  v58 = [v23 identifier];
  if (v58)
  {
    v59 = v58;
    v60 = sub_2CE270();
    v62 = v61;
  }

  else
  {
    v60 = 0;
    v62 = 0xE000000000000000;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x64496D657469;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v60;
  *(inited + 56) = v62;

  v64 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v110 = sub_237DEC(0xD000000000000034, 0x80000000002DA910, v64);

  v65 = [v23 title];
  if (v65)
  {
    v66 = v65;
    sub_2CE270();
  }

  sub_2C99A0();
  sub_2C9970();

  v109 = sub_2C9990();

  v67 = [v23 artist];
  if (v67)
  {
    v68 = v67;
    sub_2CE270();
  }

  sub_2C9970();

  v108 = sub_2C9990();

  if (qword_34BF38 != -1)
  {
    swift_once();
  }

  v69 = v118;
  v70 = sub_3ED0(v118, qword_34E3E0);
  v71 = v117;
  v72 = v116;
  (*(v117 + 16))(v116, v70, v69);
  sub_1E93D4([v23 type]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v74 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CC340();

  (*(v71 + 8))(v72, v69);
  sub_2C9970();

  v75 = sub_2C9990();

  v76 = [v23 artwork];
  if (v76)
  {
    v77 = v76;
    v78 = v123;
    v113(v121, v115, v123);
    v79 = v23;
    v80 = sub_2CDFE0();
    v81 = sub_2CE670();

    v82 = os_log_type_enabled(v80, v81);
    v83 = v119;
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      *(v84 + 4) = v79;
      *v85 = v79;
      v86 = v79;
      _os_log_impl(&dword_0, v80, v81, "Successfully created disambiguation for item: %@", v84, 0xCu);
      sub_30B8(v85, &unk_34FC00, &unk_2D0150);
      v78 = v123;
    }

    v112(v121, v78);
    sub_20410(&unk_351900, &unk_2D0960);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_2D1F90;
    v88 = v108;
    *(v87 + 32) = v109;
    *(v87 + 40) = v88;
    *(v87 + 48) = v75;
    v89 = v106;
    *v106 = v77;
    (*(v104 + 104))(v89, enum case for Image.fromApp(_:), v105);
    sub_2C9930();
    swift_allocObject();
    v90 = sub_2C9920();
  }

  else
  {
    v91 = v123;
    v113(v107, v115, v123);
    v92 = v23;
    v93 = sub_2CDFE0();
    v94 = sub_2CE670();

    v95 = os_log_type_enabled(v93, v94);
    v83 = v119;
    if (v95)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 138412290;
      *(v96 + 4) = v92;
      *v97 = v92;
      v98 = v92;
      _os_log_impl(&dword_0, v93, v94, "Missing image for disambiguation item: %@", v96, 0xCu);
      sub_30B8(v97, &unk_34FC00, &unk_2D0150);
    }

    v112(v107, v91);
    v99 = v110;

    sub_20410(&unk_351900, &unk_2D0960);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_2D1F90;
    v101 = v108;
    *(v100 + 32) = v109;
    *(v100 + 40) = v101;
    *(v100 + 48) = v75;
    sub_2C9930();
    swift_allocObject();
    v90 = sub_2C9910();
  }

  *v83 = v90;
}

void sub_9A100(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v3 = sub_2CE0A0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v62 - v7;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v62 - v14;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v75 = v13;
  v16 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v17 = *(v10 + 16);
  v70 = v16;
  v69 = v10 + 16;
  v68 = v17;
  v17(v15, v16, v9);
  v18 = *(v4 + 16);
  v71 = a1;
  v67 = v4 + 16;
  v66 = v18;
  v18(v8, a1, v3);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  v21 = os_log_type_enabled(v19, v20);
  v76 = v10;
  v73 = v4;
  v63 = v3;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v62 = v9;
    v23 = v3;
    v24 = v22;
    v25 = swift_slowAlloc();
    v78 = v25;
    *v24 = 136315138;
    v77[0] = sub_2CE060();
    v77[1] = v26;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v27 = sub_2CE2A0();
    v28 = v4;
    v30 = v29;
    v65 = *(v28 + 8);
    v65(v8, v23);
    v31 = sub_3F08(v27, v30, &v78);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_0, v19, v20, "Converting mediaDestination for disambiguation. Playlist: %s", v24, 0xCu);
    sub_306C(v25);

    v32 = v62;
    v64 = *(v76 + 8);
    v64(v15, v62);
  }

  else
  {

    v65 = *(v4 + 8);
    v65(v8, v3);
    v64 = *(v10 + 8);
    v64(v15, v9);
    v32 = v9;
  }

  sub_2CA520();
  swift_allocObject();
  sub_2CA510();
  sub_2CBD50();
  sub_2CA4F0();

  sub_2CA4F0();

  sub_2CA500();
  v62 = v33;

  v34 = v71;
  v35 = sub_2CE060();
  if (v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x64496D657469;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v37;
  *(inited + 56) = v38;

  v40 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v41 = sub_237DEC(0xD000000000000034, 0x80000000002DA910, v40);

  sub_2CE060();
  sub_2C99A0();
  sub_2C9970();

  v42 = sub_2C9990();

  v43 = v75;
  v68(v75, v70, v32);
  v44 = v72;
  v45 = v63;
  v66(v72, v34, v63);
  v46 = sub_2CDFE0();
  v47 = sub_2CE670();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71 = v41;
    v50 = v49;
    v77[0] = v49;
    *v48 = 136315138;
    sub_9A9A8();
    v51 = sub_2CEE70();
    v52 = v44;
    v53 = v32;
    v55 = v54;
    v65(v52, v45);
    v56 = sub_3F08(v51, v55, v77);

    *(v48 + 4) = v56;
    _os_log_impl(&dword_0, v46, v47, "Successfully created disambiguation for mediaDestination: %s", v48, 0xCu);
    sub_306C(v50);
    v41 = v71;

    v57 = v75;
    v58 = v53;
  }

  else
  {

    v65(v44, v45);
    v57 = v43;
    v58 = v32;
  }

  v64(v57, v58);
  v59 = v41;

  sub_20410(&unk_351900, &unk_2D0960);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_2D0770;
  *(v60 + 32) = v42;
  sub_2C9930();
  swift_allocObject();

  v61 = sub_2C9910();

  *v74 = v61;
}

uint64_t *sub_9A944(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_9A9A8()
{
  result = qword_34CCB8;
  if (!qword_34CCB8)
  {
    sub_2CE0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34CCB8);
  }

  return result;
}

void CommonFlowStrategy.actionForInput(input:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v206 = a1;
  v202 = a2;
  v197 = *v2;
  v3 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  __chkstk_darwin(v3 - 8);
  v188 = &v165 - v4;
  v195 = sub_2CD490();
  v194 = *(v195 - 1);
  v5 = __chkstk_darwin(v195);
  v183 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v189 = &v165 - v8;
  __chkstk_darwin(v7);
  v192 = &v165 - v9;
  v170 = sub_2CD500();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_2CD4C0();
  v184 = *(v190 - 8);
  __chkstk_darwin(v190);
  v171 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v12 = __chkstk_darwin(v181);
  v173 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v177 = &v165 - v14;
  v15 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v16 = __chkstk_darwin(v15 - 8);
  v167 = &v165 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v174 = &v165 - v19;
  v20 = __chkstk_darwin(v18);
  v176 = &v165 - v21;
  v22 = __chkstk_darwin(v20);
  v172 = &v165 - v23;
  v24 = __chkstk_darwin(v22);
  v179 = &v165 - v25;
  v26 = __chkstk_darwin(v24);
  v180 = &v165 - v27;
  __chkstk_darwin(v26);
  v182 = &v165 - v28;
  v191 = sub_2CA810();
  v193 = *(v191 - 8);
  __chkstk_darwin(v191);
  v198 = &v165 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_2CA870();
  v205 = *(v204 - 8);
  v30 = __chkstk_darwin(v204);
  v196 = &v165 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = (&v165 - v32);
  v34 = sub_2CE000();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v187 = &v165 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v185 = &v165 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v165 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v165 - v44;
  v46 = __chkstk_darwin(v43);
  v178 = &v165 - v47;
  v48 = __chkstk_darwin(v46);
  v175 = &v165 - v49;
  v50 = __chkstk_darwin(v48);
  v166 = &v165 - v51;
  v52 = __chkstk_darwin(v50);
  v54 = &v165 - v53;
  v55 = __chkstk_darwin(v52);
  v57 = &v165 - v56;
  __chkstk_darwin(v55);
  v59 = &v165 - v58;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v60 = sub_3ED0(v34, static Logger.default);
  swift_beginAccess();
  v61 = v34;
  v62 = v35;
  v63 = *(v35 + 16);
  v199 = v60;
  v203 = v61;
  v201 = v35 + 16;
  v200 = v63;
  (v63)(v59, v60);
  v64 = sub_2CDFE0();
  v65 = sub_2CE660();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_0, v64, v65, "CommonFlowStrategy#actionForInput...", v66, 2u);
  }

  v68 = v62 + 8;
  v67 = *(v62 + 8);
  v69 = v203;
  v67(v59, v203);
  sub_2CA790();
  v70 = v205;
  v71 = v204;
  v72 = v205[11](v33, v204);
  if (v72 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v70[12](v33, v71);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v73 = sub_2CA830();
    swift_getAssociatedTypeWitness();
    if (!swift_dynamicCastUnknownClass())
    {

      v200(v57, v199, v69);
      v91 = sub_2CDFE0();
      v92 = sub_2CE660();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_0, v91, v92, "CommonFlowStrategy#actionForInput received unexpected NLv3IntentPlusServerConversion parse, ignoring", v93, 2u);
        v69 = v203;
      }

      v67(v57, v69);
      sub_2C9CF0();

      v94 = sub_2CAFE0();
      (*(*(v94 - 8) + 8))(v33, v94);
      return;
    }

    v74 = sub_2CAFE0();
    (*(*(v74 - 8) + 8))(v33, v74);
    v75 = v195;
    v71 = v204;
    goto LABEL_8;
  }

  if (v72 == enum case for Parse.directInvocation(_:))
  {
    v70[12](v33, v71);
    v80 = v193;
    v81 = v71;
    v82 = v198;
    v83 = v191;
    (*(v193 + 32))(v198, v33, v191);
    sub_238E4C(v82, &v211);
    if (v213 != 4)
    {
      if (v213 != 255)
      {
        sub_30B8(&v211, &qword_34CCB0, &qword_2D5710);
      }

      v200(v45, v199, v69);
      v84 = sub_2CDFE0();
      v85 = sub_2CE680();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_0, v84, v85, "CommonFlowStrategy#actionForInput received unsupported directinvocation parse", v86, 2u);
      }

      v67(v45, v69);
      sub_2C9CF0();
LABEL_19:
      (*(v80 + 8))(v198, v83);
      return;
    }

    v106 = v211;

    v107 = v196;
    sub_2CA790();
    v108 = sub_D2F98(v107, &v207);
    (v70[1])(v107, v81, v108);
    if (!v208)
    {
      sub_30B8(&v207, &qword_34CF98, &unk_2D1A40);
      goto LABEL_52;
    }

    v109 = v106;
    v206 = v68;
    sub_420A4(&v207, &v209);
    sub_35E0(&v209, v210);
    v110 = v182;
    sub_2CD840();
    v111 = v184;
    v112 = *(v184 + 48);
    v113 = v112(v110, 1, v190);
    sub_30B8(v110, &qword_34D6B8, &qword_2D15B0);
    if (v113 == 1)
    {
LABEL_87:
      sub_2C9CE0();

      (*(v193 + 8))(v198, v83);
      v136 = &v209;
      goto LABEL_60;
    }

    v205 = v106;
    sub_35E0(&v209, v210);
    v114 = v180;
    sub_2CD840();
    v115 = *(v111 + 104);
    v116 = v179;
    v204 = v111 + 104;
    v196 = v115;
    (v115)(v179, enum case for CommonAudio.Verb.play(_:), v190);
    v117 = *(v111 + 56);
    v197 = v111 + 56;
    v195 = v117;
    (v117)(v116, 0, 1, v190);
    v118 = *(v181 + 48);
    v119 = v177;
    sub_F3F4(v114, v177, &qword_34D6B8, &qword_2D15B0);
    v120 = v190;
    sub_F3F4(v116, v119 + v118, &qword_34D6B8, &qword_2D15B0);
    if (v112(v119, 1, v120) == 1)
    {
      sub_30B8(v116, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v114, &qword_34D6B8, &qword_2D15B0);
      if (v112(v119 + v118, 1, v190) == 1)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v141 = v172;
      sub_F3F4(v119, v172, &qword_34D6B8, &qword_2D15B0);
      if (v112(v119 + v118, 1, v120) != 1)
      {
        v155 = v184;
        v156 = v119 + v118;
        v157 = v171;
        (*(v184 + 32))(v171, v156, v120);
        sub_A3100(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
        v158 = sub_2CE250();
        v159 = *(v155 + 8);
        v159(v157, v190);
        sub_30B8(v179, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v180, &qword_34D6B8, &qword_2D15B0);
        v159(v141, v190);
        v83 = v191;
        sub_30B8(v119, &qword_34D6B8, &qword_2D15B0);
        v109 = v205;
        if (v158)
        {
          goto LABEL_87;
        }

LABEL_72:
        sub_35E0(&v209, v210);
        v142 = v176;
        sub_2CD840();
        v143 = v174;
        (v196)(v174, enum case for CommonAudio.Verb.start(_:), v190);
        (v195)(v143, 0, 1, v190);
        v144 = *(v181 + 48);
        v119 = v173;
        sub_F3F4(v142, v173, &qword_34D6B8, &qword_2D15B0);
        v145 = v190;
        sub_F3F4(v143, v119 + v144, &qword_34D6B8, &qword_2D15B0);
        if (v112(v119, 1, v145) == 1)
        {
          sub_30B8(v143, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v142, &qword_34D6B8, &qword_2D15B0);
          if (v112(v119 + v144, 1, v145) == 1)
          {
LABEL_74:
            sub_30B8(v119, &qword_34D6B8, &qword_2D15B0);
            v109 = v205;
            goto LABEL_87;
          }
        }

        else
        {
          v146 = v167;
          sub_F3F4(v119, v167, &qword_34D6B8, &qword_2D15B0);
          if (v112(v119 + v144, 1, v145) != 1)
          {
            v160 = v184;
            v161 = v119 + v144;
            v162 = v171;
            (*(v184 + 32))(v171, v161, v145);
            sub_A3100(&qword_34D708, &type metadata accessor for CommonAudio.Verb, &protocol conformance descriptor for CommonAudio.Verb);
            v163 = sub_2CE250();
            v164 = *(v160 + 8);
            v164(v162, v145);
            sub_30B8(v174, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v176, &qword_34D6B8, &qword_2D15B0);
            v164(v146, v145);
            sub_30B8(v119, &qword_34D6B8, &qword_2D15B0);
            v109 = v205;
            if (v163)
            {
              goto LABEL_87;
            }

            goto LABEL_78;
          }

          sub_30B8(v143, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v176, &qword_34D6B8, &qword_2D15B0);
          (*(v184 + 8))(v146, v145);
        }

        sub_30B8(v119, &qword_34D6B0, &unk_2D4FC0);
        v109 = v205;
LABEL_78:
        sub_35E0(&v209, v210);
        v147 = v169;
        v148 = v168;
        v149 = v170;
        (*(v169 + 104))(v168, enum case for CommonAudio.Attribute.playNext(_:), v170);
        v150 = sub_2CD910();
        (*(v147 + 8))(v148, v149);
        if (v150)
        {
          goto LABEL_87;
        }

        sub_306C(&v209);
        v69 = v203;
        v80 = v193;
        v106 = v109;
LABEL_52:
        v126 = v178;
        v200(v178, v199, v69);
        v127 = sub_2CDFE0();
        v128 = sub_2CE680();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&dword_0, v127, v128, "PlayMediaFlowStrategy#actionForInput received unsupported pommesResponse", v129, 2u);
        }

        v67(v126, v69);
        sub_2C9CF0();

        goto LABEL_19;
      }

      sub_30B8(v179, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v180, &qword_34D6B8, &qword_2D15B0);
      (*(v184 + 8))(v141, v190);
    }

    sub_30B8(v119, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_72;
  }

  if (v72 == enum case for Parse.pommesResponse(_:))
  {
    v70[12](v33, v71);
    v87 = *v33;
    v200(v54, v199, v69);
    v88 = sub_2CDFE0();
    v89 = sub_2CE660();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_0, v88, v89, "CommonFlowStrategy#actionForInput received pommesResponse parse", v90, 2u);
      v69 = v203;
    }

    v67(v54, v69);
    (*(*v186 + 280))(v87, v206);

    return;
  }

  if (v72 != enum case for Parse.uso(_:))
  {
    v200(v42, v199, v69);
    v121 = sub_2CDFE0();
    v122 = sub_2CE680();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_0, v121, v122, "CommonFlowStrategy#actionForInput received unsupported parse", v123, 2u);
    }

    v67(v42, v69);
    sub_2C9CF0();
    v205[1](v33, v204);
    return;
  }

  v99 = v68;
  v100 = v196;
  sub_2CA790();
  v101 = sub_2CA7C0();
  v102 = v205[1];
  v102(v100, v71);
  if (!v101)
  {
    v137 = v175;
    v200(v175, v199, v69);
    v138 = sub_2CDFE0();
    v139 = sub_2CE680();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&dword_0, v138, v139, "CommonFlowStrategy#actionForInput failed to get uso task from parse", v140, 2u);
    }

    v67(v137, v69);
    sub_2C9CF0();
    goto LABEL_83;
  }

  sub_2CAD10();
  if (!v212)
  {
    sub_30B8(&v211, &qword_34CEA0, &qword_2D0FC0);
    v75 = v195;
LABEL_65:
    if (sub_43C3C() & 1) != 0 || (sub_43638())
    {
      goto LABEL_67;
    }

    v151 = v166;
    v200(v166, v199, v69);
    v152 = sub_2CDFE0();
    v153 = sub_2CE680();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_0, v152, v153, "CommonFlowStrategy#actionForInput uso parse is not a shuffle media item or play on shuffle, ignoring", v154, 2u);
      v69 = v203;
    }

    v67(v151, v69);
    sub_2C9CF0();

LABEL_83:
    v102(v33, v204);
    return;
  }

  sub_2CAEC0();
  v103 = swift_dynamicCast();
  v75 = v195;
  if ((v103 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_67:

  v102(v33, v71);
  v68 = v99;
LABEL_8:
  v76 = v196;
  sub_2CA790();
  v77 = sub_D2F98(v76, &v209);
  (v205[1])(v76, v71, v77);
  if (v210)
  {
    sub_420A4(&v209, &v211);
    sub_35E0(&v211, v212);
    v78 = v188;
    sub_2CD480();
    v79 = v194;
    if ((*(v194 + 48))(v78, 1, v75) == 1)
    {
      sub_30B8(v78, &qword_34CCE8, &unk_2D0E20);
LABEL_11:
      sub_2C9CE0();
LABEL_59:
      v136 = &v211;
LABEL_60:
      sub_306C(v136);
      return;
    }

    v206 = v68;
    (*(v79 + 32))(v192, v78, v75);
    v104 = *(v79 + 104);
    v104(v189, enum case for CommonAudio.Confirmation.cancel(_:), v75);
    sub_A3100(&qword_34CCF8, &type metadata accessor for CommonAudio.Confirmation, &protocol conformance descriptor for CommonAudio.Confirmation);
    sub_2CE3E0();
    sub_2CE3E0();
    if (v209 == v207 && *(&v209 + 1) == *(&v207 + 1))
    {
      v105 = 1;
    }

    else
    {
      v105 = sub_2CEEA0();
    }

    v124 = *(v194 + 8);
    v124(v189, v75);

    if ((v105 & 1) == 0)
    {
      v125 = v183;
      v104(v183, enum case for CommonAudio.Confirmation.no(_:), v75);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v209 == v207 && *(&v209 + 1) == *(&v207 + 1))
      {
        v124(v125, v75);
      }

      else
      {
        v130 = sub_2CEEA0();
        v124(v125, v75);

        if ((v130 & 1) == 0)
        {
          v124(v192, v75);
          goto LABEL_11;
        }
      }
    }

    v131 = v185;
    v132 = v203;
    v200(v185, v199, v203);
    v133 = sub_2CDFE0();
    v134 = sub_2CE690();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = 0;
      _os_log_impl(&dword_0, v133, v134, "CommonFlowStrategy#actionForInput found cancellation node - treating state as cancelled", v135, 2u);
    }

    v67(v131, v132);
    sub_2C9CD0();
    v124(v192, v75);
    goto LABEL_59;
  }

  sub_30B8(&v209, &qword_34CF98, &unk_2D1A40);
  v95 = v187;
  v200(v187, v199, v69);
  v96 = sub_2CDFE0();
  v97 = sub_2CE690();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_0, v96, v97, "CommonFlowStrategy#actionForInput received invalid NL intent", v98, 2u);
  }

  v67(v95, v69);
  sub_2C9CF0();
}

void CommonFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)(char *a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v101 = a4;
  v103 = a2;
  v98 = *v4;
  v99 = a3;
  v6 = sub_2CA870();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v100 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = &v82 - v11;
  __chkstk_darwin(v10);
  v14 = &v82 - v13;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v88 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v89 = &v82 - v20;
  v21 = __chkstk_darwin(v19);
  v86 = &v82 - v22;
  __chkstk_darwin(v21);
  v24 = &v82 - v23;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v25 = sub_3ED0(v15, static Logger.default);
  swift_beginAccess();
  v26 = *(v16 + 16);
  v93 = v16 + 16;
  v94 = v25;
  v92 = v26;
  v26(v24, v25, v15);
  v27 = *(v7 + 16);
  v97 = a1;
  v102 = v27;
  v27(v14, a1, v6);
  v28 = v103;
  v96 = v16;
  v29 = v28;
  v30 = sub_2CDFE0();
  v95 = v15;
  v31 = v30;
  v32 = sub_2CE670();
  v90 = v29;

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v84 = v32;
    v34 = v12;
    v35 = v6;
    v36 = v33;
    v85 = swift_slowAlloc();
    v105 = v85;
    *v36 = 136446722;
    v37 = sub_2CCCC0();
    v39 = sub_3F08(v37, v38, &v105);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2080;
    v102(v34, v14, v35);
    v40 = v35;
    v83 = v35;
    v41 = sub_2CE2A0();
    v43 = v42;
    v87 = *(v7 + 8);
    v87(v14, v40);
    v44 = sub_3F08(v41, v43, &v105);

    *(v36 + 14) = v44;
    *(v36 + 22) = 2080;
    v45 = v100;
    v104 = v103;
    swift_getAssociatedTypeWitness();
    sub_2CEB90();
    v46 = v90;
    v47 = sub_2CE2A0();
    v49 = sub_3F08(v47, v48, &v105);

    *(v36 + 24) = v49;
    _os_log_impl(&dword_0, v31, v84, "CommonFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v36, 0x20u);
    swift_arrayDestroy();

    v50 = v95;
    v51 = *(v96 + 8);
    v51(v24, v95);
    v52 = v83;
  }

  else
  {

    v87 = *(v7 + 8);
    v87(v14, v6);
    v53 = v95;
    v51 = *(v96 + 8);
    v51(v24, v95);
    v52 = v6;
    v50 = v53;
    v45 = v100;
  }

  v102(v45, v97, v52);
  v54 = (*(v7 + 88))(v45, v52);
  if (v54 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v7 + 96))(v45, v52);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v55 = sub_2CA830();
    swift_getAssociatedTypeWitness();
    v56 = swift_dynamicCastUnknownClass();
    if (v56)
    {
      v57 = v56;
      v91[2] = sub_2CA840();

      v58 = v55;
      v99(v57, 0);
    }

    else
    {

      v74 = v86;
      v92(v86, v94, v50);
      v75 = sub_2CDFE0();
      v76 = sub_2CE670();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_0, v75, v76, "CommonFlowStrategy#makeIntentFromParse received unsupported NLv3IntentPlusServerConversion parse, ignoring", v77, 2u);
      }

      v51(v74, v50);
      v78 = sub_2CB850();
      sub_A3100(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v79 = swift_allocError();
      (*(*(v78 - 8) + 104))(v80, enum case for PlaybackCode.ceGE13(_:), v78);
      v99(v79, 1);
    }

    v81 = sub_2CAFE0();
    (*(*(v81 - 8) + 8))(v45, v81);
  }

  else if (v54 == enum case for Parse.pommesResponse(_:))
  {
    (*(v7 + 96))(v45, v52);
    v59 = *v45;
    v60 = v89;
    v92(v89, v94, v50);
    v61 = v59;
    v62 = sub_2CDFE0();
    v63 = sub_2CE690();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138477827;
      *(v64 + 4) = v61;
      *v65 = v61;
      v66 = v61;
      _os_log_impl(&dword_0, v62, v63, "CommonFlowStrategy#makeIntentFromParse received pommesResponse: %{private}@", v64, 0xCu);
      sub_30B8(v65, &unk_34FC00, &unk_2D0150);
    }

    v51(v60, v50);
    (*(*v91 + 272))(v61, v99, v101);
  }

  else
  {
    v67 = v88;
    v92(v88, v94, v50);
    v68 = sub_2CDFE0();
    v69 = sub_2CE680();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v69, "CommonFlowStrategy#makeIntentFromParse received non NLv3IntentPlusServerConversion or NLv3IntentOnly parse", v70, 2u);
    }

    v51(v67, v50);
    v71 = sub_2CB850();
    sub_A3100(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v72 = swift_allocError();
    (*(*(v71 - 8) + 104))(v73, enum case for PlaybackCode.ceGE14(_:), v71);
    v99(v72, 1);

    v87(v45, v52);
  }
}

uint64_t CommonFlowStrategy.makeSiriKitIntentHandler(app:intent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *v3;
  v26 = a2;
  v27 = v7;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_2CDFE0();
  v14 = sub_2CE670();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = a1;
    v29 = v24;
    *v15 = 136315138;
    sub_2CCFB0();
    v25 = a3;
    sub_A3100(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
    v16 = sub_2CEE70();
    v18 = sub_3F08(v16, v17, &v29);

    *(v15 + 4) = v18;
    _os_log_impl(&dword_0, v13, v14, "CommonFlowStrategy#makeSiriKitIntentHandler Saving app name %s", v15, 0xCu);
    sub_306C(v24);
  }

  (*(v9 + 8))(v11, v8);
  v4[4] = a1;

  v19 = v4[5];
  v20 = v26;
  v4[5] = v26;
  v21 = v20;

  return (*(*(v27 + 88) + 32))(a1, v21);
}

uint64_t sub_9D7D4(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v7 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_2CDFE0();
  v9 = sub_2CE680();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "CommonFlowStrategy#makeIntentFrom pommesResponse unsupported", v10, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v11 = sub_2CB850();
  sub_A3100(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
  v12 = swift_allocError();
  (*(*(v11 - 8) + 104))(v13, enum case for PlaybackCode.ceGE15(_:), v11);
  a2(v12, 1);
}

uint64_t sub_9DA38()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v4 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2CDFE0();
  v6 = sub_2CE680();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "CommonFlowStrategy#actionForInput received pommesResponse which is unsupported", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_2C9CF0();
}

uint64_t sub_9DBF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v51 = a4;
  v52 = a5;
  v53 = a2;
  v50 = *v5;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2CDDB0();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  v15 = __chkstk_darwin(v13);
  v16 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v48 - v17;
  if (sub_A3CA0(a3))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v19 = sub_3ED0(v9, static Logger.default);
    swift_beginAccess();
    (*(v10 + 16))(v12, v19, v9);
    v20 = sub_2CDFE0();
    v21 = sub_2CE680();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "CommonFlowStrategy#makeErrorResponse Barge-In error", v22, 2u);
    }

    (*(v10 + 8))(v12, v9);
    if (a1)
    {
      v23 = a1;
    }

    else
    {
      sub_2CCFB0();
      sub_2CBE10();
      v23 = sub_2CCF80();
    }

    v39 = v53;
    v40 = swift_allocObject();
    *(v40 + 16) = v6;
    *(v40 + 24) = a1;
    v41 = v51;
    v42 = v52;
    *(v40 + 32) = v39;
    *(v40 + 40) = v41;
    *(v40 + 48) = v42;
    v43 = v39;
    swift_retain_n();

    sub_2822EC(v23, sub_A4284, v40);
  }

  *&v54[0] = a3;
  swift_errorRetain();
  sub_20410(&qword_34C6E0, &unk_2D0730);
  sub_2C9D40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = v53;
    if (!a1)
    {
LABEL_19:
      sub_2CCFB0();
      sub_2CBE10();
      v38 = sub_2CCF80();
      goto LABEL_20;
    }

LABEL_15:
    v38 = a1;
LABEL_20:
    v44 = swift_allocObject();
    v44[2] = v6;
    v44[3] = a1;
    v45 = v51;
    v46 = v52;
    v44[4] = v26;
    v44[5] = v45;
    v44[6] = v46;
    v44[7] = a3;

    swift_errorRetain();
    v47 = v26;

    sub_281B14(v38, sub_A41B8, v44);
  }

  v24 = v56;
  v25 = sub_2C9D30();
  v26 = v53;
  if (v25 != 1307)
  {

    if (!a1)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_2C9D00();
  sub_2CDDC0();

  v48[1] = v6[7];
  v48[2] = v24;
  if (!v26 || (v56 = v26, swift_getAssociatedTypeWitness(), v27 = v26, sub_20410(&unk_3530B0, &qword_2D2270), (swift_dynamicCast() & 1) == 0))
  {
    v55 = 0;
    memset(v54, 0, sizeof(v54));
  }

  v28 = v49;
  (*(v49 + 16))(v16, v18, v13);
  v29 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v48[0] = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v48[0] + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v50;
  *(v31 + 2) = *(v50 + 80);
  *(v31 + 3) = *(v32 + 88);
  *(v31 + 4) = a1;
  (*(v28 + 32))(&v31[v29], v16, v13);
  *&v31[v48[0]] = v6;
  v33 = v53;
  *&v31[v30] = v53;
  v34 = &v31[(v30 + 15) & 0xFFFFFFFFFFFFFFF8];
  v35 = v52;
  *v34 = v51;
  v34[1] = v35;

  v36 = v33;
  sub_2881BC(a1, v54, sub_A41C8, v31);

  (*(v28 + 8))(v18, v13);
  return sub_30B8(v54, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_9E220(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v106 = a5;
  v107 = a6;
  v104 = a3;
  v105 = a4;
  v108 = a2;
  v95 = a1;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v6 - 8);
  v94 = v89 - v7;
  v90 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v8 = __chkstk_darwin(v90);
  v93 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v91 = v89 - v11;
  v12 = __chkstk_darwin(v10);
  v92 = v89 - v13;
  __chkstk_darwin(v12);
  v15 = v89 - v14;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v16 - 8);
  v103 = v89 - v17;
  v18 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v18 - 8);
  v102 = v89 - v19;
  v20 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v20 - 8);
  v101 = v89 - v21;
  v22 = sub_2CCB30();
  v99 = *(v22 - 8);
  v100 = v22;
  __chkstk_darwin(v22);
  v96 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2CCAC0();
  v97 = *(v24 - 8);
  v98 = v24;
  __chkstk_darwin(v24);
  v26 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CE000();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v89 - v32;
  v34 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v34);
  v36 = (v89 - v35);
  sub_F3F4(v95, v89 - v35, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v95 = *v36;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = sub_3ED0(v27, static Logger.default);
    swift_beginAccess();
    (*(v28 + 16))(v33, v37, v27);
    v38 = sub_2CDFE0();
    v39 = sub_2CE680();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "CommonFlowStrategy#makeErrorResponse FAILED to create BargeIn error dialog", v40, 2u);
    }

    (*(v28 + 8))(v33, v27);
    v42 = v97;
    v41 = v98;
    (*(v97 + 104))(v26, enum case for AdditionalMetricsDescription.ModuleName.cfs(_:), v98);
    v44 = v99;
    v43 = v100;
    v45 = v96;
    (*(v99 + 104))(v96, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v100);
    v94 = sub_2CCAE0();
    (*(v44 + 8))(v45, v43);
    (*(v42 + 8))(v26, v41);
    sub_EEAC(v108 + 64, v109);
    sub_35E0(v109, v110);
    v46 = enum case for ActivityType.failed(_:);
    v47 = sub_2C9C20();
    v48 = *(v47 - 8);
    v49 = v101;
    (*(v48 + 104))(v101, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    v50 = sub_2CA130();
    v51 = v102;
    (*(*(v50 - 8) + 56))(v102, 1, 1, v50);
    v52 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v53 = sub_2C98F0();
    v54 = *(v53 - 8);
    v55 = v103;
    (*(v54 + 104))(v103, v52, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    sub_2CB4E0();

    sub_30B8(v55, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v51, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v49, &qword_34CB88, &unk_2D0D90);
    sub_306C(v109);
    v109[0] = v95;
    v111 = 1;
    swift_errorRetain();
    v106(v109);

    return sub_30B8(v109, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v36, v15);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v95 = v15;
    v57 = sub_3ED0(v27, static Logger.default);
    swift_beginAccess();
    (*(v28 + 16))(v31, v57, v27);
    v58 = sub_2CDFE0();
    v59 = sub_2CE690();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_0, v58, v59, "CommonFlowStrategy#makeErrorResponse successfully created BargeIn error dialog", v60, 2u);
    }

    (*(v28 + 8))(v31, v27);
    v62 = v97;
    v61 = v98;
    (*(v97 + 104))(v26, enum case for AdditionalMetricsDescription.ModuleName.cfs(_:), v98);
    v64 = v99;
    v63 = v100;
    v65 = v96;
    (*(v99 + 104))(v96, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v100);
    v89[2] = sub_2CCAE0();
    v89[1] = v66;
    (*(v64 + 8))(v65, v63);
    (*(v62 + 8))(v26, v61);
    sub_EEAC(v108 + 64, v109);
    v100 = sub_35E0(v109, v110);
    v67 = enum case for ActivityType.completed(_:);
    v68 = sub_2C9C20();
    v69 = *(v68 - 8);
    v70 = v101;
    (*(v69 + 104))(v101, v67, v68);
    (*(v69 + 56))(v70, 0, 1, v68);
    v71 = sub_2CA130();
    v72 = *(v71 - 8);
    v73 = v102;
    (*(v72 + 56))(v102, 1, 1, v71);
    v74 = enum case for SiriKitReliabilityCodes.success(_:);
    v75 = sub_2C98F0();
    v76 = *(v75 - 8);
    v77 = v103;
    (*(v76 + 104))(v103, v74, v75);
    (*(v76 + 56))(v77, 0, 1, v75);
    sub_2CB4E0();

    sub_30B8(v77, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v73, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v70, &qword_34CB88, &unk_2D0D90);
    sub_306C(v109);
    sub_35E0((v108 + 104), *(v108 + 128));
    v78 = v95;
    v79 = v92;
    sub_F3F4(v95, v92, &qword_34C6E8, &unk_2D0FF0);
    v80 = v90;
    v81 = *(v79 + *(v90 + 48));
    v82 = sub_2CA000();
    v83 = v94;
    (*(*(v82 - 8) + 56))(v94, 1, 1, v82);
    v84 = v91;
    (*(v72 + 16))(v91, v79, v71);
    *(v84 + *(v80 + 48)) = v81;
    v85 = v93;
    sub_F3F4(v84, v93, &qword_34C6E8, &unk_2D0FF0);
    v86 = *(v85 + *(v80 + 48));
    v87 = v81;
    sub_1C3480(v85, v86, v83, _swiftEmptyArrayStorage, v106, v107);

    sub_30B8(v84, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v83, &unk_353020, &unk_2D0970);
    sub_30B8(v78, &qword_34C6E8, &unk_2D0FF0);
    v88 = *(v72 + 8);
    v88(v85, v71);
    return (v88)(v79, v71);
  }
}

uint64_t sub_9F048(char *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v91 = a7;
  v108 = a5;
  v109 = a6;
  v107 = a4;
  v106 = a3;
  v110 = a2;
  v97 = a1;
  v7 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v7 - 8);
  v96 = v90 - v8;
  v92 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v9 = __chkstk_darwin(v92);
  v95 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v93 = v90 - v12;
  v13 = __chkstk_darwin(v11);
  v94 = v90 - v14;
  __chkstk_darwin(v13);
  v16 = v90 - v15;
  v17 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v17 - 8);
  v105 = v90 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v19 - 8);
  v104 = v90 - v20;
  v21 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v21 - 8);
  v103 = v90 - v22;
  v102 = sub_2CCB30();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v98 = v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2CCAC0();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v25 = v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = v90 - v31;
  v33 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v33);
  v35 = (v90 - v34);
  sub_F3F4(v97, v90 - v34, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v35;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = sub_3ED0(v26, static Logger.default);
    swift_beginAccess();
    (*(v27 + 16))(v32, v37, v26);
    v38 = sub_2CDFE0();
    v39 = sub_2CE680();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "CommonFlowStrategy#makeErrorResponse FAILED to create generic error dialog", v40, 2u);
    }

    (*(v27 + 8))(v32, v26);
    v41 = v99;
    v42 = v100;
    (*(v99 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.cfs(_:), v100);
    v43 = v101;
    v44 = v98;
    v45 = v102;
    (*(v101 + 104))(v98, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v102);
    swift_getErrorValue();
    sub_2CEEF0();
    v97 = sub_2CCAE0();

    (*(v43 + 8))(v44, v45);
    (*(v41 + 8))(v25, v42);
    sub_EEAC((v110 + 8), v111);
    v110 = sub_35E0(v111, v112);
    v46 = enum case for ActivityType.failed(_:);
    v47 = sub_2C9C20();
    v48 = v36;
    v49 = *(v47 - 8);
    v50 = v103;
    (*(v49 + 104))(v103, v46, v47);
    (*(v49 + 56))(v50, 0, 1, v47);
    v51 = sub_2CA130();
    v52 = v104;
    (*(*(v51 - 8) + 56))(v104, 1, 1, v51);
    v53 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v54 = sub_2C98F0();
    v55 = *(v54 - 8);
    v56 = v105;
    (*(v55 + 104))(v105, v53, v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    sub_2CB4E0();

    sub_30B8(v56, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v52, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v50, &qword_34CB88, &unk_2D0D90);
    sub_306C(v111);
    v111[0] = v48;
    v113 = 1;
    swift_errorRetain();
    v108(v111);

    return sub_30B8(v111, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v35, v16);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v97 = v16;
    v58 = sub_3ED0(v26, static Logger.default);
    swift_beginAccess();
    (*(v27 + 16))(v30, v58, v26);
    v59 = sub_2CDFE0();
    v60 = sub_2CE690();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_0, v59, v60, "CommonFlowStrategy#makeErrorResponse successfully created generic error dialog", v61, 2u);
    }

    (*(v27 + 8))(v30, v26);
    v62 = v99;
    v63 = v100;
    (*(v99 + 104))(v25, enum case for AdditionalMetricsDescription.ModuleName.cfs(_:), v100);
    v64 = v101;
    v65 = v98;
    v66 = v102;
    (*(v101 + 104))(v98, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v102);
    swift_getErrorValue();
    sub_2CEEF0();
    v91 = sub_2CCAE0();
    v90[1] = v67;

    (*(v64 + 8))(v65, v66);
    (*(v62 + 8))(v25, v63);
    sub_EEAC((v110 + 8), v111);
    v102 = sub_35E0(v111, v112);
    v68 = enum case for ActivityType.failed(_:);
    v69 = sub_2C9C20();
    v70 = *(v69 - 8);
    v71 = v103;
    (*(v70 + 104))(v103, v68, v69);
    (*(v70 + 56))(v71, 0, 1, v69);
    v72 = sub_2CA130();
    v73 = *(v72 - 8);
    v74 = v104;
    (*(v73 + 56))(v104, 1, 1, v72);
    v75 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v76 = sub_2C98F0();
    v77 = *(v76 - 8);
    v78 = v105;
    (*(v77 + 104))(v105, v75, v76);
    (*(v77 + 56))(v78, 0, 1, v76);
    sub_2CB4E0();

    sub_30B8(v78, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v74, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v71, &qword_34CB88, &unk_2D0D90);
    sub_306C(v111);
    sub_35E0(v110 + 13, v110[16]);
    v79 = v97;
    v80 = v94;
    sub_F3F4(v97, v94, &qword_34C6E8, &unk_2D0FF0);
    v81 = v92;
    v82 = *(v80 + *(v92 + 48));
    v83 = sub_2CA000();
    v84 = v96;
    (*(*(v83 - 8) + 56))(v96, 1, 1, v83);
    v85 = v93;
    (*(v73 + 16))(v93, v80, v72);
    *(v85 + *(v81 + 48)) = v82;
    v86 = v95;
    sub_F3F4(v85, v95, &qword_34C6E8, &unk_2D0FF0);
    v87 = *(v86 + *(v81 + 48));
    v88 = v82;
    sub_1C3480(v86, v87, v84, _swiftEmptyArrayStorage, v108, v109);

    sub_30B8(v85, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v84, &unk_353020, &unk_2D0970);
    sub_30B8(v79, &qword_34C6E8, &unk_2D0FF0);
    v89 = *(v73 + 8);
    v89(v86, v72);
    return (v89)(v80, v72);
  }
}

uint64_t sub_9FF38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v117 = a6;
  v118 = a7;
  v109 = a1;
  v120 = a4;
  v9 = *a4;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v10 - 8);
  v104 = &v101 - v11;
  v111 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = __chkstk_darwin(v111);
  v103 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v101 = &v101 - v15;
  v16 = __chkstk_darwin(v14);
  v102 = &v101 - v17;
  __chkstk_darwin(v16);
  v122 = &v101 - v18;
  v19 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v19 - 8);
  v114 = &v101 - v20;
  v21 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v21 - 8);
  v113 = &v101 - v22;
  v23 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v23 - 8);
  v112 = &v101 - v24;
  v105 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v105);
  v106 = (&v101 - v25);
  v26 = sub_2CE000();
  v121 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v108 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v107 = &v101 - v30;
  __chkstk_darwin(v29);
  v32 = &v101 - v31;
  v115 = a2;
  if (a2 && (v33 = sub_2CCF90(), v34))
  {
    v35 = v33;
    v36 = v34;
  }

  else
  {

    v36 = 0xEA00000000007070;
    v35 = 0x416E776F6E6B6E55;
  }

  v37 = sub_2CDDA0();
  v39 = v38;

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v41 = sub_2CDDA0();
    v43 = v42;
  }

  else
  {
    v43 = 0xE100000000000000;
    v41 = 48;
  }

  v44 = *(v9 + 80);
  v45 = *(v9 + 88);
  v116 = a5;
  v46 = sub_A3F38(a5, v44, v45);
  v48 = v47;
  v123 = v35;
  v124 = v36;

  v127._countAndFlagsBits = 61;
  v127._object = 0xE100000000000000;
  sub_2CE350(v127);

  v128._countAndFlagsBits = v46;
  v128._object = v48;
  sub_2CE350(v128);

  v129._countAndFlagsBits = v41;
  v129._object = v43;
  sub_2CE350(v129);

  v49 = v124;
  v119 = v123;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v50 = sub_3ED0(v26, static Logger.default);
  swift_beginAccess();
  v51 = v121;
  v52 = v121[2];
  v52(v32, v50, v26);

  v53 = sub_2CDFE0();
  v54 = sub_2CE670();

  v55 = os_log_type_enabled(v53, v54);
  v110 = v49;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v123 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_3F08(v119, v49, &v123);
    _os_log_impl(&dword_0, v53, v54, "CommonFlowStrategy#makeErrorResponse encDesc: %s", v56, 0xCu);
    sub_306C(v57);
    v51 = v121;
  }

  v58 = v51[1];
  v58(v32, v26);
  v59 = v106;
  sub_F3F4(v109, v106, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = *v59;
    v52(v107, v50, v26);
    v61 = sub_2CDFE0();
    v62 = sub_2CE680();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_0, v61, v62, "CommonFlowStrategy#makeErrorResponse FAILED to create app timeout dialog", v63, 2u);
    }

    v58(v107, v26);
    sub_EEAC((v120 + 8), &v123);
    sub_35E0(&v123, v125);
    v64 = enum case for ActivityType.failed(_:);
    v65 = sub_2C9C20();
    v66 = *(v65 - 8);
    v67 = v112;
    (*(v66 + 104))(v112, v64, v65);
    (*(v66 + 56))(v67, 0, 1, v65);
    v68 = sub_2CA130();
    v69 = v113;
    (*(*(v68 - 8) + 56))(v113, 1, 1, v68);
    v70 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v71 = sub_2C98F0();
    v72 = *(v71 - 8);
    v73 = v114;
    (*(v72 + 104))(v114, v70, v71);
    (*(v72 + 56))(v73, 0, 1, v71);
    sub_2CB4E0();

    sub_30B8(v73, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v69, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v67, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v123);
    v123 = v60;
    v126 = 1;
    swift_errorRetain();
    v117(&v123);

    return sub_30B8(&v123, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v59, v122);
    v52(v108, v50, v26);
    v75 = sub_2CDFE0();
    v76 = sub_2CE690();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "CommonFlowStrategy#makeErrorResponse successfully created app timeout dialog", v77, 2u);
    }

    v58(v108, v26);
    sub_EEAC((v120 + 8), &v123);
    v121 = sub_35E0(&v123, v125);
    v78 = enum case for ActivityType.failed(_:);
    v79 = sub_2C9C20();
    v80 = *(v79 - 8);
    v81 = v112;
    (*(v80 + 104))(v112, v78, v79);
    (*(v80 + 56))(v81, 0, 1, v79);
    v82 = v102;
    sub_F3F4(v122, v102, &qword_34C6E8, &unk_2D0FF0);

    v83 = sub_2CA130();
    v109 = v83;
    v84 = *(v83 - 8);
    v85 = v113;
    (*(v84 + 32))(v113, v82, v83);
    (*(v84 + 56))(v85, 0, 1, v83);
    v86 = enum case for SiriKitReliabilityCodes.handleIntentTimeOut(_:);
    v87 = sub_2C98F0();
    v88 = *(v87 - 8);
    v89 = v114;
    (*(v88 + 104))(v114, v86, v87);
    (*(v88 + 56))(v89, 0, 1, v87);
    sub_2CB4E0();

    sub_30B8(v89, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v85, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v81, &qword_34CB88, &unk_2D0D90);
    sub_306C(&v123);
    sub_35E0(v120 + 13, v120[16]);
    sub_F3F4(v122, v82, &qword_34C6E8, &unk_2D0FF0);
    v90 = v111;
    v91 = *(v82 + *(v111 + 48));
    v92 = sub_2CA000();
    v93 = v104;
    (*(*(v92 - 8) + 56))(v104, 1, 1, v92);
    v94 = v101;
    v95 = v109;
    (*(v84 + 16))(v101, v82, v109);
    v96 = v90;
    *(v94 + *(v90 + 48)) = v91;
    v97 = v103;
    sub_F3F4(v94, v103, &qword_34C6E8, &unk_2D0FF0);
    v98 = *(v97 + *(v96 + 48));
    v99 = v91;
    sub_1C3480(v97, v98, v93, _swiftEmptyArrayStorage, v117, v118);

    sub_30B8(v94, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v93, &unk_353020, &unk_2D0970);
    sub_30B8(v122, &qword_34C6E8, &unk_2D0FF0);
    v100 = *(v84 + 8);
    v100(v97, v95);
    return (v100)(v82, v95);
  }
}

uint64_t CommonFlowStrategy.makeErrorResponse(app:intent:error:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v30 = a4;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);

  v13 = a2;
  swift_errorRetain();
  v14 = sub_2CDFE0();
  v15 = sub_2CE680();

  v16 = a1;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v29 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v16;
    v33 = v28;
    *v18 = 136315650;
    sub_2CCFB0();
    sub_A3100(&qword_34C170, &type metadata accessor for App, &protocol conformance descriptor for App);
    v27 = v8;
    v20 = sub_2CEE70();
    v22 = sub_3F08(v20, v21, &v33);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    *v19 = v13;
    *(v18 + 22) = 2112;
    v23 = v13;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v24;
    v19[1] = v24;
    _os_log_impl(&dword_0, v14, v15, "CommonFlowStrategy#makeErrorResponse with App %s, Intent %@, Error %@", v18, 0x20u);
    sub_20410(&unk_34FC00, &unk_2D0150);
    swift_arrayDestroy();

    sub_306C(v28);

    a3 = v29;

    (*(v9 + 8))(v11, v27);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  return sub_9DBF0(v16, v13, a3, v30, v31);
}

void CommonFlowStrategy.makeErrorResponse(error:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  swift_errorRetain();
  v13 = sub_2CDFE0();
  v14 = sub_2CE680();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23 = a2;
    v16 = a3;
    v17 = v15;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_0, v13, v14, "CommonFlowStrategy#makeErrorResponse with Error %@", v17, 0xCu);
    sub_30B8(v18, &unk_34FC00, &unk_2D0150);

    a3 = v16;
    a2 = v23;
  }

  (*(v9 + 8))(v11, v8);
  v20 = *(v4 + 40);
  v21 = v20;

  sub_9DBF0(v22, v20, a1, a2, a3);
}

uint64_t CommonFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(uint64_t a1, void *a2, void *a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v107 = a5;
  v106 = a4;
  v99 = a2;
  v101 = *v5;
  v110 = sub_2CDFD0();
  v109 = *(v110 - 8);
  v8 = __chkstk_darwin(v110);
  v97 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v9;
  __chkstk_darwin(v8);
  v108 = &v89 - v10;
  v113 = sub_2CE000();
  v112 = *(v113 - 8);
  v11 = __chkstk_darwin(v113);
  v98 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v111 = &v89 - v13;
  v14 = sub_2CCB30();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CCAC0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a3;
  *&v116[0] = [a3 _code];
  v22 = sub_2CEE70();
  v24 = v23;
  v114 = a1;
  v25 = sub_2CCF90();
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  v91 = v25;
  v104 = sub_2CBDC0();
  (*(v19 + 104))(v21, enum case for AdditionalMetricsDescription.ModuleName.cfs(_:), v18);
  (*(v15 + 104))(v17, enum case for AdditionalMetricsDescription.SourceFunction.makeFailDlg(_:), v14);
  v92 = v22;
  v105 = v24;
  v103 = sub_2CCAE0();
  v102 = v28;
  v29 = v14;
  v30 = v99;
  (*(v15 + 8))(v17, v29);
  (*(v19 + 8))(v21, v18);
  v31 = v100;
  v32 = sub_A3F38(v30, *(v101 + 80), *(v101 + 88));
  v34 = v33;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v35 = v113;
  v36 = sub_3ED0(v113, static Logger.default);
  swift_beginAccess();
  v37 = v112;
  v38 = *(v112 + 16);
  v39 = v111;
  v101 = v36;
  v94 = v112 + 16;
  v93 = v38;
  v38(v111, v36, v35);

  v40 = sub_2CDFE0();
  v41 = sub_2CE680();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v90 = v32;
    v43 = v42;
    v44 = swift_slowAlloc();
    v89 = v34;
    v45 = v44;
    *&v116[0] = v44;
    *v43 = 136315394;
    v46 = v30;
    v47 = v31;
    v48 = v37;
    v49 = sub_3F08(v91, v27, v116);

    *(v43 + 4) = v49;
    v50 = v48;
    v31 = v47;
    v30 = v46;
    *(v43 + 12) = 1024;
    v51 = v35;
    v52 = v104;
    *(v43 + 14) = v104 & 1;
    _os_log_impl(&dword_0, v40, v41, "CommonFlowStrategy#makeFailureConfirmingIntentResponse with app: '%s', isThirdParty: %{BOOL}d", v43, 0x12u);
    sub_306C(v45);
    v34 = v89;

    v32 = v90;

    v53 = *(v50 + 8);
    v53(v111, v51);
  }

  else
  {

    v53 = *(v37 + 8);
    v53(v39, v35);
    v52 = v104;
  }

  v54 = swift_allocObject();
  v55 = v114;
  *(v54 + 2) = v31;
  *(v54 + 3) = v55;
  *(v54 + 4) = v30;
  *(v54 + 5) = v32;
  v56 = v103;
  *(v54 + 6) = v34;
  *(v54 + 7) = v56;
  v57 = v106;
  *(v54 + 8) = v102;
  *(v54 + 9) = v57;
  *(v54 + 10) = v107;
  if (v52)
  {
    v106 = v53;
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    *(inited + 32) = 1701080931;
    *(inited + 72) = &type metadata for String;
    v59 = v92;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v59;
    *(inited + 56) = v105;

    v60 = v30;

    v111 = sub_112C0(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
    v107 = *(v31 + 48);
    v117 = 0;
    memset(v116, 0, sizeof(v116));
    if (qword_34BF98 != -1)
    {
      swift_once();
    }

    v61 = qword_35F760;
    v62 = v108;
    sub_2CDFB0();
    v63 = v109;
    v64 = v97;
    v65 = v110;
    (*(v109 + 16))(v97, v62, v110);
    v66 = (*(v63 + 80) + 33) & ~*(v63 + 80);
    v67 = (v96 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    *(v68 + 16) = "catServiceExecute";
    *(v68 + 24) = 17;
    *(v68 + 32) = 2;
    (*(v63 + 32))(v68 + v66, v64, v65);
    v69 = (v68 + v67);
    *v69 = sub_A404C;
    v69[1] = v54;

    v70 = sub_2CE9E0();
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_2D0E40;
    *(v71 + 56) = &type metadata for String;
    v72 = sub_1087C();
    *(v71 + 32) = 0x6964654D79616C50;
    *(v71 + 40) = 0xEF746E65746E4961;
    *(v71 + 96) = &type metadata for String;
    *(v71 + 104) = v72;
    *(v71 + 64) = v72;
    *(v71 + 72) = 0xD000000000000017;
    *(v71 + 80) = 0x80000000002DB940;
    LOBYTE(v87) = 2;
    sub_2CDF90(v70, &dword_0, v61, "catServiceExecute", 17, 2, v62, "CatService#execute family=%{signpost.telemetry:string1,public}@ id=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 125, v87, v71);

    v73 = swift_allocObject();
    *(v73 + 16) = sub_13CD4;
    *(v73 + 24) = v68;
    v74 = v98;
    v75 = v113;
    v93(v98, v101, v113);

    v76 = sub_2CDFE0();
    v77 = sub_2CE660();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v115[0] = swift_slowAlloc();
      *v78 = 136315394;
      *(v78 + 4) = sub_3F08(0x6964654D79616C50, 0xEF746E65746E4961, v115);
      *(v78 + 12) = 2080;
      *(v78 + 14) = sub_3F08(0xD000000000000017, 0x80000000002DB940, v115);
      _os_log_impl(&dword_0, v76, v77, "Evaluating CAT family:%s id:%s...", v78, 0x16u);
      swift_arrayDestroy();
    }

    v106(v74, v75);
    v79 = sub_2CB460();
    if (!v79)
    {
      sub_2CB180();
      v79 = sub_2CB170();
    }

    v80 = v79;
    v81 = swift_allocObject();
    v81[2] = v80;
    v81[3] = sub_13D8C;
    v81[4] = v73;
    v82 = sub_2CB180();
    __chkstk_darwin(v82);
    v83 = v111;
    *(&v89 - 10) = v107;
    *(&v89 - 9) = v83;
    *(&v89 - 8) = v114;
    *(&v89 - 7) = v116;
    *(&v89 - 3) = xmmword_2D2060;
    v86 = 0x80000000002DB960;
    v87 = sub_3E010;
    v88 = v81;

    sub_2CB0F0();

    (*(v109 + 8))(v108, v110);
    return sub_30B8(v116, &qword_34C6C0, &qword_2D0710);
  }

  else
  {

    v30;

    v85 = *(v31 + 56);
    sub_112C0(_swiftEmptyArrayStorage);
    (*(*v85 + 176))();
  }
}

uint64_t sub_A2080(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void (*a9)(uint64_t *), uint64_t a10)
{
  v91._countAndFlagsBits = a7;
  v91._object = a8;
  v89 = a5;
  v90 = a6;
  v92 = a3;
  v93 = a4;
  v85 = a1;
  v86 = a2;
  v94 = a9;
  v95 = a10;
  v10 = sub_20410(&unk_353020, &unk_2D0970);
  __chkstk_darwin(v10 - 8);
  v84 = v79 - v11;
  v80 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v12 = __chkstk_darwin(v80);
  v83 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v81 = v79 - v15;
  v16 = __chkstk_darwin(v14);
  v82 = v79 - v17;
  __chkstk_darwin(v16);
  v19 = v79 - v18;
  v20 = sub_20410(&qword_34CB78, &unk_2D0D80);
  __chkstk_darwin(v20 - 8);
  v88 = v79 - v21;
  v22 = sub_20410(&qword_34CB80, &unk_2D0B30);
  __chkstk_darwin(v22 - 8);
  v87 = v79 - v23;
  v24 = sub_20410(&qword_34CB88, &unk_2D0D90);
  __chkstk_darwin(v24 - 8);
  v26 = v79 - v25;
  v27 = sub_2CE000();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = v79 - v32;
  v34 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v34);
  v36 = (v79 - v35);
  sub_F3F4(v85, v79 - v35, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v36;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v38 = sub_3ED0(v27, static Logger.default);
    swift_beginAccess();
    (*(v28 + 16))(v33, v38, v27);
    v39 = sub_2CDFE0();
    v40 = sub_2CE680();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "CommonFlowStrategy#makeFailureConfirmingIntentResponse FAILED to create dialog", v41, 2u);
    }

    (*(v28 + 8))(v33, v27);
    sub_35E0(v86 + 8, v86[11]);
    v42 = enum case for ActivityType.failed(_:);
    v43 = sub_2C9C20();
    v44 = *(v43 - 8);
    (*(v44 + 104))(v26, v42, v43);
    (*(v44 + 56))(v26, 0, 1, v43);
    v45 = sub_2CA130();
    v46 = v87;
    (*(*(v45 - 8) + 56))(v87, 1, 1, v45);
    v47 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v48 = sub_2C98F0();
    v49 = *(v48 - 8);
    v50 = v88;
    (*(v49 + 104))(v88, v47, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    v96[0] = v89;
    v96[1] = v90;

    sub_2CE350(v91);
    sub_2CB4E0();

    sub_30B8(v50, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v46, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v26, &qword_34CB88, &unk_2D0D90);
    v96[0] = v37;
    v97 = 1;
    swift_errorRetain();
    v94(v96);

    return sub_30B8(v96, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v36, v19);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v85 = v19;
    v52 = sub_3ED0(v27, static Logger.default);
    swift_beginAccess();
    (*(v28 + 16))(v31, v52, v27);
    v53 = sub_2CDFE0();
    v54 = sub_2CE680();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "CommonFlowStrategy#makeFailureConfirmingIntentResponse successfully created dialog", v55, 2u);
    }

    (*(v28 + 8))(v31, v27);
    v56 = v86;
    v57 = v86[11];
    v79[1] = v86[12];
    v79[2] = sub_35E0(v86 + 8, v57);
    v58 = enum case for ActivityType.failed(_:);
    v59 = sub_2C9C20();
    v60 = *(v59 - 8);
    (*(v60 + 104))(v26, v58, v59);
    (*(v60 + 56))(v26, 0, 1, v59);
    v61 = sub_2CA130();
    v62 = *(v61 - 8);
    v63 = v87;
    (*(v62 + 56))(v87, 1, 1, v61);
    v64 = enum case for SiriKitReliabilityCodes.confirmIntentFailure(_:);
    v65 = sub_2C98F0();
    v66 = *(v65 - 8);
    v67 = v88;
    (*(v66 + 104))(v88, v64, v65);
    (*(v66 + 56))(v67, 0, 1, v65);
    v98 = v89;
    v99 = v90;

    sub_2CE350(v91);
    sub_2CB4E0();

    sub_30B8(v67, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v63, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v26, &qword_34CB88, &unk_2D0D90);
    sub_35E0(v56 + 13, v56[16]);
    v68 = v85;
    v69 = v82;
    sub_F3F4(v85, v82, &qword_34C6E8, &unk_2D0FF0);
    v70 = v80;
    v71 = *(v69 + *(v80 + 48));
    v72 = sub_2CA000();
    v73 = v84;
    (*(*(v72 - 8) + 56))(v84, 1, 1, v72);
    v74 = v81;
    (*(v62 + 16))(v81, v69, v61);
    *(v74 + *(v70 + 48)) = v71;
    v75 = v83;
    sub_F3F4(v74, v83, &qword_34C6E8, &unk_2D0FF0);
    v76 = *(v75 + *(v70 + 48));
    v77 = v71;
    sub_1C3480(v75, v76, v73, _swiftEmptyArrayStorage, v94, v95);

    sub_30B8(v74, &qword_34C6E8, &unk_2D0FF0);
    sub_30B8(v73, &unk_353020, &unk_2D0970);
    sub_30B8(v68, &qword_34C6E8, &unk_2D0FF0);
    v78 = *(v62 + 8);
    v78(v75, v61);
    return (v78)(v69, v61);
  }
}

uint64_t PlayMediaFlowStrategy.deinit()
{

  sub_306C((v0 + 64));
  sub_306C((v0 + 104));
  return v0;
}

uint64_t CommonFlowStrategy.__deallocating_deinit()
{
  PlayMediaFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_A2CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CommonFlowStrategy(0, *(a5 + 80), *(a5 + 88), a4);

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_A2D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CommonFlowStrategy(0, *(a2 + 80), *(a2 + 88), a4);

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v6, a3);
}

uint64_t sub_A2E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CommonFlowStrategy(0, *(a2 + 80), *(a2 + 88), a4);

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v6, a3);
}

uint64_t sub_A2EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CommonFlowStrategy(0, *(a3 + 80), *(a3 + 88), a4);

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_A2F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = type metadata accessor for CommonFlowStrategy(0, *(a5 + 80), *(a5 + 88), a4);

  return a7(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_A2FFC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_A305C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_A30D0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_A3100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_A3148(void **a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v100 = a3;
  v110 = a2;
  v8 = sub_2CA870();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v111 = &v91[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v97 = &v91[-v13];
  __chkstk_darwin(v12);
  v15 = &v91[-v14];
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v95 = &v91[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v98 = &v91[-v21];
  v22 = __chkstk_darwin(v20);
  v96 = &v91[-v23];
  __chkstk_darwin(v22);
  v25 = &v91[-v24];
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  v108 = v26;
  v27 = qword_34BF58;
  v104 = a4;

  v105 = a5;
  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v29 = *(v17 + 16);
  v102 = v17 + 16;
  v103 = v28;
  v101 = v29;
  v29(v25, v28, v16);
  v30 = *(v9 + 16);
  v107 = a1;
  v109 = v30;
  v30(v15, a1, v8);
  v31 = v110;
  v106 = v25;
  v32 = sub_2CDFE0();
  v33 = sub_2CE670();

  v34 = v8;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = swift_slowAlloc();
    v99 = v9;
    v36 = v8;
    v37 = v35;
    v93 = swift_slowAlloc();
    v113[0] = v93;
    *v37 = 136446722;
    v38 = sub_2CCCC0();
    v94 = v16;
    v40 = sub_3F08(v38, v39, v113);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    v92 = v33;
    v109(v97, v15, v36);
    v41 = sub_2CE2A0();
    v43 = v42;
    v44 = v17;
    v45 = *(v99 + 8);
    v45(v15, v36);
    v46 = v41;
    v47 = v45;
    v48 = sub_3F08(v46, v43, v113);
    v16 = v94;

    *(v37 + 14) = v48;
    *(v37 + 22) = 2080;
    v112 = v110;
    v49 = v31;
    sub_20410(&qword_34E478, &qword_2D2268);
    v50 = sub_2CE2A0();
    v52 = sub_3F08(v50, v51, v113);

    *(v37 + 24) = v52;
    _os_log_impl(&dword_0, v32, v92, "CommonFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v37, 0x20u);
    swift_arrayDestroy();

    v34 = v36;
    v9 = v99;

    v53 = *(v44 + 8);
  }

  else
  {

    v47 = *(v9 + 8);
    v47(v15, v34);
    v53 = *(v17 + 8);
  }

  v53(v106, v16);
  v54 = v111;
  v109(v111, v107, v34);
  v55 = (*(v9 + 88))(v54, v34);
  if (v55 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v9 + 96))(v111, v34);
    sub_20410(&qword_353070, &unk_2D0FB0);
    v56 = sub_2CA830();
    objc_opt_self();
    v57 = swift_dynamicCastObjCClass();
    if (v57)
    {
      v58 = v57;
      v100[2] = sub_2CA840();

      v59 = v104;
      swift_beginAccess();
      v60 = *(v59 + 16);
      *(v59 + 16) = v58;
      LOBYTE(v58) = *(v59 + 24);
      *(v59 + 24) = 0;
      v61 = v56;
      sub_A4194(v60, v58);
      dispatch_group_leave(v105);
    }

    else
    {

      v80 = v95;
      v101(v95, v103, v16);
      v81 = sub_2CDFE0();
      v82 = sub_2CE670();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_0, v81, v82, "CommonFlowStrategy#makeIntentFromParse received unsupported NLv3IntentPlusServerConversion parse, ignoring", v83, 2u);
      }

      v53(v80, v16);
      v84 = sub_2CB850();
      sub_A3100(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
      v85 = swift_allocError();
      (*(*(v84 - 8) + 104))(v86, enum case for PlaybackCode.ceGE13(_:), v84);
      v87 = v104;
      swift_beginAccess();
      v88 = *(v87 + 16);
      *(v87 + 16) = v85;
      v89 = *(v87 + 24);
      *(v87 + 24) = 1;
      sub_A4194(v88, v89);
      dispatch_group_leave(v105);
    }

    v90 = sub_2CAFE0();
    (*(*(v90 - 8) + 8))(v111, v90);
LABEL_20:

    return;
  }

  if (v55 != enum case for Parse.pommesResponse(_:))
  {
    v101(v98, v103, v16);
    v71 = sub_2CDFE0();
    v72 = sub_2CE680();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_0, v71, v72, "CommonFlowStrategy#makeIntentFromParse received non NLv3IntentPlusServerConversion or NLv3IntentOnly parse", v73, 2u);
    }

    v53(v98, v16);
    v74 = sub_2CB850();
    sub_A3100(&qword_34CCA8, &type metadata accessor for PlaybackCode, &protocol conformance descriptor for PlaybackCode);
    v75 = swift_allocError();
    (*(*(v74 - 8) + 104))(v76, enum case for PlaybackCode.ceGE14(_:), v74);
    v77 = v104;
    swift_beginAccess();
    v78 = *(v77 + 16);
    *(v77 + 16) = v75;
    v79 = *(v77 + 24);
    *(v77 + 24) = 1;
    sub_A4194(v78, v79);
    dispatch_group_leave(v105);
    v47(v111, v34);
    goto LABEL_20;
  }

  v62 = v111;
  (*(v9 + 96))(v111, v34);
  v63 = *v62;
  v64 = v96;
  v101(v96, v103, v16);
  v65 = v63;
  v66 = sub_2CDFE0();
  v67 = sub_2CE690();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v68 = 138477827;
    *(v68 + 4) = v65;
    *v69 = v65;
    v70 = v65;
    _os_log_impl(&dword_0, v66, v67, "CommonFlowStrategy#makeIntentFromParse received pommesResponse: %{private}@", v68, 0xCu);
    sub_30B8(v69, &unk_34FC00, &unk_2D0150);
  }

  v53(v64, v16);
  (*(*v100 + 272))(v65, sub_A4188, v108);
}

uint64_t sub_A3CA0(uint64_t a1)
{
  v2 = sub_2CA2B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2C9C30();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v14 - v11;
  v15 = a1;
  swift_errorRetain();
  sub_20410(&qword_34C6E0, &unk_2D0730);
  if (swift_dynamicCast())
  {
    (*(v7 + 8))(v12, v6);
    return 1;
  }

  v15 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if ((*(v3 + 88))(v5, v2) == enum case for SubmitCommandError.internalError(_:))
    {
      (*(v3 + 96))(v5, v2);
      v14 = *v5;
      if (swift_dynamicCast())
      {
        (*(v7 + 8))(v10, v6);

        return 1;
      }
    }

    else
    {
      (*(v3 + 8))(v5, v2);
    }
  }

  return 0;
}

uint64_t sub_A3F38(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (swift_getAssociatedTypeWitness(), v4 = a1, sub_20410(&unk_34FBF0, &qword_2D1EF0), (swift_dynamicCast() & 1) == 0))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    goto LABEL_7;
  }

  if (!*(&v8 + 1))
  {
LABEL_7:
    sub_30B8(&v7, &qword_3530A0, &qword_2D1EF8);
    return 0;
  }

  sub_F338(&v7, v10);
  sub_35E0(v10, v10[3]);
  v5 = sub_2CC140();
  sub_306C(v10);
  if (v5)
  {
    return 0x2961667328;
  }

  return 0;
}

void sub_A4194(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_A41AC(result, a2 & 1);
  }
}

void sub_A41AC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_A41C8(uint64_t a1)
{
  v3 = *(sub_2CDDB0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 32);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_9FF38(a1, v7, v1 + v4, v8, v9, v11, v12);
}

uint64_t sub_A4294(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Int sub_A42EC()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CEF60(v1);
  return sub_2CEF80();
}

Swift::Int sub_A4360(uint64_t a1)
{
  v2 = *v1;
  sub_2CEF50();
  sub_2CEF60(v2);
  return sub_2CEF80();
}

void *ExecuteMusicOnRemoteFlow.exitValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_A46B4(v1, v2);
  v3 = sub_A4408(v1, v2);
  sub_A46E8(v1, v2);
  return v3;
}

void *sub_A4408(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 <= 1u)
  {
    swift_errorRetain();
    return a1;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {
      v8 = a1;
      return a1;
    }

    if (a1)
    {
      return &dword_0 + 1;
    }
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v7, v9, v4);
  sub_A46B4(a1, v2);
  v10 = sub_2CDFE0();
  v11 = sub_2CE680();
  sub_A46E8(a1, v2);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v18 = a1;
    v19 = v2;
    sub_A46B4(a1, v2);
    v14 = sub_2CE2A0();
    v16 = sub_3F08(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v10, v11, "ExecuteMusicOnRemoteFlow ExecuteRemoteFlow exit value being read, but we're still in-progress in state=%s", v12, 0xCu);
    sub_306C(v13);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

id sub_A46B4(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_errorRetain();
  }

  if (a2 == 2 || a2 == 3)
  {
    return result;
  }

  return result;
}

void sub_A46E8(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else
  {
  }
}

uint64_t ExecuteMusicOnRemoteFlow.on(input:)(uint64_t a1)
{
  v3 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + 56);
  if (v6 != 2 && (v6 != 4 || *(v1 + 48)))
  {
    return 0;
  }

  v8 = sub_2CA7B0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v5, a1, v8);
  v7 = 1;
  (*(v9 + 56))(v5, 0, 1, v8);
  v10 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute;
  swift_beginAccess();
  sub_A4888(v5, v1 + v10);
  swift_endAccess();
  return v7;
}

uint64_t sub_A4888(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_A48F8()
{
  v1 = sub_2CA870();
  v21 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v20 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_2CA7B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute;
  swift_beginAccess();
  sub_F3F4(v0 + v13, v8, &qword_34E480, &qword_2D2280);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_2CA790();
    v14 = sub_2CA7D0();
    v15 = *(v21 + 8);
    v15(v5, v1);
    if (!v14)
    {
      v16 = v20;
      sub_2CA790();
      if ((*(v21 + 88))(v16, v1) != enum case for Parse.pommesResponse(_:))
      {
        (*(v10 + 8))(v12, v9);
        v15(v16, v1);
        return 0;
      }

      (*(v21 + 96))(v16, v1);
      v17 = *v16;
      v14 = sub_1B8014();
    }

    (*(v10 + 8))(v12, v9);
    return v14;
  }

  sub_30B8(v8, &qword_34E480, &qword_2D2280);
  return 0;
}

uint64_t ExecuteMusicOnRemoteFlow.execute()(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  sub_20410(&qword_34CB78, &unk_2D0D80);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  sub_20410(&qword_34CB80, &unk_2D0B30);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  sub_20410(&qword_34CB88, &unk_2D0D90);
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v3 = sub_2CCB20();
  v2[74] = v3;
  v2[75] = *(v3 - 8);
  v2[76] = swift_task_alloc();
  v4 = sub_2CCB30();
  v2[77] = v4;
  v2[78] = *(v4 - 8);
  v2[79] = swift_task_alloc();
  v5 = sub_2CCAC0();
  v2[80] = v5;
  v2[81] = *(v5 - 8);
  v2[82] = swift_task_alloc();
  v6 = sub_2CE150();
  v2[83] = v6;
  v2[84] = *(v6 - 8);
  v2[85] = swift_task_alloc();
  v7 = sub_2CE180();
  v2[86] = v7;
  v2[87] = *(v7 - 8);
  v2[88] = swift_task_alloc();
  v8 = sub_20410(&qword_34E490, &qword_2D2298);
  v2[89] = v8;
  v2[90] = *(v8 - 8);
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  sub_20410(&qword_34E498, &qword_2D22A0);
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v9 = sub_20410(&qword_34E4A0, &qword_2D22A8);
  v2[98] = v9;
  v2[99] = *(v9 - 8);
  v2[100] = swift_task_alloc();
  sub_20410(&qword_34E4A8, &unk_2D22B0);
  v2[101] = swift_task_alloc();
  v10 = sub_2CA2B0();
  v2[102] = v10;
  v2[103] = *(v10 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  sub_20410(&qword_34E4B0, &qword_2D3520);
  v2[107] = swift_task_alloc();
  v11 = sub_2CE000();
  v2[108] = v11;
  v2[109] = *(v11 - 8);
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  sub_20410(&qword_34E480, &qword_2D2280);
  v2[126] = swift_task_alloc();
  v12 = sub_2CA7B0();
  v2[127] = v12;
  v2[128] = *(v12 - 8);
  v2[129] = swift_task_alloc();

  return _swift_task_switch(sub_A533C, 0, 0);
}

uint64_t sub_A533C()
{
  v65 = v0;
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[61];
  v5 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute;
  swift_beginAccess();
  sub_F3F4(v4 + v5, v3, &qword_34E480, &qword_2D2280);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_30B8(v0[126], &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v6 = v0[111];
    v7 = v0[109];
    v8 = v0[108];
    v9 = sub_3ED0(v8, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v6, v9, v8);
    v10 = sub_2CDFE0();
    v11 = sub_2CE680();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "ExecuteMusicOnRemoteFlow#execute() called with no input to execute? If you are pushing this flow from an existing flow, you must provide an initialInput. If this flow was returned as a main flow from makeFlowFor, something has gone wrong and you should file a radar.", v12, 2u);
    }

    v13 = v0[111];
    v14 = v0[109];
    v15 = v0[108];
    v16 = v0[61];

    (*(v14 + 8))(v13, v15);
    v17 = *(v16 + 48);
    *(v16 + 48) = 1;
    v18 = *(v16 + 56);
    *(v16 + 56) = 4;
    sub_A46E8(v17, v18);
    sub_2C9EB0();
    goto LABEL_15;
  }

  (*(v0[128] + 32))(v0[129], v0[126], v0[127]);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = v0[125];
  v20 = v0[109];
  v21 = v0[108];
  v22 = sub_3ED0(v21, static Logger.default);
  v0[130] = v22;
  swift_beginAccess();
  v23 = *(v20 + 16);
  v0[131] = v23;
  v0[132] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v19, v22, v21);

  v24 = sub_2CDFE0();
  v25 = sub_2CE660();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v0[125];
  v28 = v0[109];
  v29 = v0[108];
  if (v26)
  {
    v30 = v0[61];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v64 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_3F08(*(v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload), *(v30 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload + 8), &v64);
    _os_log_impl(&dword_0, v24, v25, "ExecuteMusicOnRemoteFlow#execute remoteAssistantId = %s", v31, 0xCu);
    sub_306C(v32);
  }

  v33 = *(v28 + 8);
  v33(v27, v29);
  v0[133] = v33;
  v34 = v0[107];
  v35 = v0[61];
  v36 = sub_2CE4D0();
  (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v35;

  v0[134] = sub_AB8D4(0, 0, v34, &unk_2D22C8, v37);
  v38 = *(v35 + 56);
  if (v38 != 2 && (v38 != 4 || *(v35 + 48)))
  {
    v39 = v0[129];
    v40 = v0[128];
    v41 = v0[127];
    sub_2C9EB0();

    (*(v40 + 8))(v39, v41);
LABEL_15:

    v42 = v0[1];

    return v42();
  }

  v44 = sub_2CB460();
  if (!v44)
  {
    type metadata accessor for ExecuteMusicOnRemoteFlow(0);
    sub_B0E78(&qword_34E4B8, type metadata accessor for ExecuteMusicOnRemoteFlow, &protocol conformance descriptor for ExecuteMusicOnRemoteFlow);
    v44 = sub_2CB1A0();
  }

  v0[135] = v44;
  v45 = v0[129];
  v46 = v0[61];
  v47 = *(v46 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload);
  v48 = *(v46 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload + 8);
  v49 = sub_2CB130();
  v50 = ExecuteMusicOnRemoteFlow.makeExecuteOnRemoteRequest(input:targetDeviceId:currentRequest:)(v45, v47, v48, v49);
  v0[136] = v50;

  v51 = [v50 remoteExecution];
  if (v51)
  {
    v55 = v51;
    v56 = [v51 executionDeviceAssistantId];

    if (v56)
    {
      v57 = sub_2CE270();
      v59 = v58;
    }

    else
    {
      v57 = 0;
      v59 = 0;
    }

    v60 = v0[61];
    v61 = sub_B0340(v50, v57, v59);
    v0[137] = v61;

    v62 = swift_task_alloc();
    v0[138] = v62;
    *(v62 + 16) = v60;
    *(v62 + 24) = v61;
    v63 = swift_task_alloc();
    v0[139] = v63;
    v54 = sub_334A0(0, &qword_34E4C8, SAExecuteOnRemoteResponse_ptr);
    *v63 = v0;
    v63[1] = sub_A5C88;
    v52 = &unk_2D22D8;
    v51 = v0 + 54;
    v53 = v62;
  }

  else
  {
    __break(1u);
  }

  return Result<>.init(catching:)(v51, v52, v53, v54);
}

uint64_t sub_A5C88()
{

  return _swift_task_switch(sub_A5DA0, 0, 0);
}

id sub_A5DA0()
{
  v165 = v0;
  v1 = *(v0 + 432);
  *(v0 + 1120) = v1;
  if (*(v0 + 440) == 1)
  {
    (*(v0 + 1048))(*(v0 + 992), *(v0 + 1040), *(v0 + 864));
    swift_errorRetain();
    v2 = sub_2CDFE0();
    v3 = sub_2CE680();
    sub_A41AC(v1, 1);
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 1064);
    v6 = *(v0 + 992);
    v7 = *(v0 + 864);
    if (v4)
    {
      v160 = *(v0 + 1064);
      v8 = swift_slowAlloc();
      v158 = v6;
      v9 = swift_slowAlloc();
      v164[0] = v9;
      *v8 = 136315138;
      *(v0 + 472) = v1;
      swift_errorRetain();
      sub_20410(&qword_34C6E0, &unk_2D0730);
      v10 = sub_2CE2A0();
      v12 = sub_3F08(v10, v11, v164);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v2, v3, "ExecuteMusicOnRemoteFlow#execute Error submitting SAExecuteOnRemoteRequest: %s", v8, 0xCu);
      sub_306C(v9);

      v160(v158, v7);
    }

    else
    {

      v5(v6, v7);
    }

    v16 = *(v0 + 824);
    v17 = *(v0 + 488);
    v18 = *(v17 + 48);
    *(v17 + 48) = v1;
    v19 = *(v17 + 56);
    *(v17 + 56) = 1;
    swift_errorRetain();
    sub_A46E8(v18, v19);
    *(v0 + 456) = v1;
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    v20 = swift_dynamicCast();
    v21 = *(v16 + 56);
    if (v20)
    {
      v22 = *(v0 + 848);
      v23 = *(v0 + 840);
      v24 = *(v0 + 824);
      v25 = *(v0 + 816);
      v26 = *(v0 + 808);
      v21(v26, 0, 1, v25);
      (*(v24 + 32))(v22, v26, v25);
      v27 = *(v24 + 16);
      v27(v23, v22, v25);
      v28 = (*(v24 + 88))(v23, v25);
      v29 = *(v0 + 1048);
      v30 = *(v0 + 1040);
      v31 = *(v0 + 864);
      if (v28 == enum case for SubmitCommandError.failedResponse(_:))
      {
        v32 = *(v0 + 984);
        v33 = *(v0 + 840);
        (*(*(v0 + 824) + 96))(v33, *(v0 + 816));
        v34 = *v33;
        *(v0 + 1152) = v34;
        v29(v32, v30, v31);
        v35 = v34;
        v36 = sub_2CDFE0();
        v37 = sub_2CE680();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 134218242;
          *(v38 + 4) = [v35 errorCode];

          *(v38 + 12) = 2112;
          v40 = [v35 reason];
          if (v40)
          {
            v41 = v40;
            v42 = sub_2CE270();
            v44 = v43;

            sub_10C40();
            swift_allocError();
            *v45 = v42;
            v45[1] = v44;
            v40 = _swift_stdlib_bridgeErrorToNSError();
            v46 = v40;
          }

          else
          {
            v46 = 0;
          }

          *(v38 + 14) = v40;
          *v39 = v46;
          _os_log_impl(&dword_0, v36, v37, "ExecuteMusicOnRemoteFlow#execute SubmitCommandError.failedResponse errorCode: %ld, reason: %@", v38, 0x16u);
          sub_30B8(v39, &unk_34FC00, &unk_2D0150);
        }

        else
        {

          v36 = v35;
        }

        v87 = *(v0 + 1064);
        v88 = *(v0 + 984);
        v89 = *(v0 + 864);

        v87(v88, v89);
        sub_20410(&qword_34E4E0, &unk_2D22F0);
        sub_2CD110();
        v90 = [v35 reason];
        if (v90)
        {

          result = [v35 reason];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v91 = result;
          sub_2CE270();

          sub_2CD120();
          *(v0 + 1160) = 0;
          v98 = *(v0 + 776);
          v99 = *(v0 + 768);
          v100 = *(v0 + 720);
          v101 = *(v0 + 712);

          sub_F3F4(v98, v99, &qword_34E498, &qword_2D22A0);
          v102 = *(v100 + 48);
          v103 = v102(v99, 1, v101);
          if (v103 == 1)
          {
            sub_30B8(*(v0 + 768), &qword_34E498, &qword_2D22A0);
          }

          else
          {
            (*(*(v0 + 720) + 32))(*(v0 + 744), *(v0 + 768), *(v0 + 712));
            swift_getKeyPath();
            sub_2CD130();

            v104 = sub_2CE2E0();
            v106 = v105;

            v107 = sub_AC15C(v104, v106);
            if ((v108 & 1) == 0)
            {
              v135 = *(*(v0 + 488) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_companionNotInRangeErrorCodes);
              v136 = *(v135 + 16);
              v137 = (v135 + 32);
              while (v136)
              {
                v138 = *v137++;
                --v136;
                if (v138 == v107)
                {
                  v139 = swift_task_alloc();
                  *(v0 + 1168) = v139;
                  *v139 = v0;
                  v139[1] = sub_A8F84;
                  v140 = 0xD00000000000001ELL;
                  v141 = 0x80000000002DBBA0;
                  v142 = 1;
                  goto LABEL_62;
                }
              }
            }

            (*(*(v0 + 720) + 8))(*(v0 + 744), *(v0 + 712));
          }

          v109 = *(v0 + 760);
          v110 = *(v0 + 712);
          sub_F3F4(*(v0 + 776), v109, &qword_34E498, &qword_2D22A0);
          if (v102(v109, 1, v110) == 1)
          {
            sub_30B8(*(v0 + 760), &qword_34E498, &qword_2D22A0);
          }

          else
          {
            (*(*(v0 + 720) + 32))(*(v0 + 736), *(v0 + 760), *(v0 + 712));
            swift_getKeyPath();
            sub_2CD130();

            v111 = sub_2CE2E0();
            v113 = v112;

            v114 = sub_AC15C(v111, v113);
            if ((v115 & 1) == 0)
            {
              v143 = *(*(v0 + 488) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_companionWifiMismatchErrorCodes);
              v144 = *(v143 + 16);
              v145 = (v143 + 32);
              while (v144)
              {
                v146 = *v145++;
                --v144;
                if (v146 == v114)
                {
                  v147 = swift_task_alloc();
                  *(v0 + 1176) = v147;
                  *v147 = v0;
                  v147[1] = sub_A9474;
                  v140 = 0x6D73694D69666977;
                  v141 = 0xEC00000068637461;
                  v142 = 2;
                  goto LABEL_62;
                }
              }
            }

            (*(*(v0 + 720) + 8))(*(v0 + 736), *(v0 + 712));
          }

          v116 = *(v0 + 752);
          v117 = *(v0 + 712);
          sub_F3F4(*(v0 + 776), v116, &qword_34E498, &qword_2D22A0);
          if (v102(v116, 1, v117) == 1)
          {
            sub_30B8(*(v0 + 752), &qword_34E498, &qword_2D22A0);
          }

          else
          {
            (*(*(v0 + 720) + 32))(*(v0 + 728), *(v0 + 752), *(v0 + 712));
            swift_getKeyPath();
            sub_2CD130();

            v118 = sub_2CE2E0();
            v120 = v119;

            v121 = sub_AC15C(v118, v120);
            if ((v122 & 1) == 0)
            {
              v148 = *(*(v0 + 488) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_companionConnectionTimedOut);
              v149 = *(v148 + 16);
              v150 = (v148 + 32);
              while (v149)
              {
                v151 = *v150++;
                --v149;
                if (v151 == v121)
                {
                  v152 = swift_task_alloc();
                  *(v0 + 1184) = v152;
                  *v152 = v0;
                  v152[1] = sub_A9964;
                  v141 = 0x80000000002DBB80;
                  v142 = 3;
                  goto LABEL_61;
                }
              }
            }

            (*(*(v0 + 720) + 8))(*(v0 + 728), *(v0 + 712));
          }

          (*(v0 + 1048))(*(v0 + 976), *(v0 + 1040), *(v0 + 864));
          v123 = v35;
          v124 = sub_2CDFE0();
          v125 = sub_2CE680();

          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            *v126 = 138412290;
            v128 = [v123 reason];
            if (v128)
            {
              v129 = v128;
              v130 = sub_2CE270();
              v132 = v131;

              sub_10C40();
              swift_allocError();
              *v133 = v130;
              v133[1] = v132;
              v128 = _swift_stdlib_bridgeErrorToNSError();
              v134 = v128;
            }

            else
            {
              v134 = 0;
            }

            *(v126 + 4) = v128;
            *v127 = v134;
            _os_log_impl(&dword_0, v124, v125, "ExecuteMusicOnRemoteFlow#execute Failed parsing failedResponseReason: %@", v126, 0xCu);
            sub_30B8(v127, &unk_34FC00, &unk_2D0150);
          }

          v153 = *(v0 + 1064);
          v154 = *(v0 + 976);
          v155 = *(v0 + 864);

          v153(v154, v155);
          v83 = "siriForAirPlayGenericError2";
          v84 = swift_task_alloc();
          *(v0 + 1192) = v84;
          *v84 = v0;
          v85 = sub_A9E54;
        }

        else
        {
          (*(v0 + 1048))(*(v0 + 968), *(v0 + 1040), *(v0 + 864));
          v92 = sub_2CDFE0();
          v93 = sub_2CE680();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            *v94 = 0;
            _os_log_impl(&dword_0, v92, v93, "ExecuteMusicOnRemoteFlow#execute Error parsing failedResponse.reason is nil", v94, 2u);
          }

          v95 = *(v0 + 1064);
          v96 = *(v0 + 968);
          v97 = *(v0 + 864);

          v95(v96, v97);
          v83 = "omain Code=(\\d+)/";
          v84 = swift_task_alloc();
          *(v0 + 1200) = v84;
          *v84 = v0;
          v85 = sub_AA31C;
        }
      }

      else
      {
        v162 = *(v0 + 848);
        v63 = *(v0 + 832);
        v64 = *(v0 + 816);
        v29(*(v0 + 960), v30, v31);
        v27(v63, v162, v64);
        v65 = sub_2CDFE0();
        v66 = sub_2CE680();
        v67 = os_log_type_enabled(v65, v66);
        v68 = *(v0 + 1064);
        v69 = *(v0 + 960);
        v70 = *(v0 + 864);
        v71 = *(v0 + 832);
        v72 = *(v0 + 824);
        v73 = *(v0 + 816);
        if (v67)
        {
          v163 = *(v0 + 960);
          v74 = swift_slowAlloc();
          v159 = v70;
          v75 = swift_slowAlloc();
          v164[0] = v75;
          *v74 = 136315138;
          sub_B0E78(&qword_34E4D8, &type metadata accessor for SubmitCommandError, &protocol conformance descriptor for SubmitCommandError);
          v157 = v68;
          v76 = sub_2CEE70();
          v78 = v77;
          v156 = v66;
          v81 = *(v72 + 8);
          v79 = v72 + 8;
          v80 = v81;
          v81(v71, v73);
          v82 = sub_3F08(v76, v78, v164);

          *(v74 + 4) = v82;
          _os_log_impl(&dword_0, v65, v156, "ExecuteMusicOnRemoteFlow#execute SubmitCommandError %s", v74, 0xCu);
          sub_306C(v75);

          v157(v163, v159);
        }

        else
        {

          v86 = *(v72 + 8);
          v79 = v72 + 8;
          v80 = v86;
          v86(v71, v73);
          v68(v69, v70);
        }

        *(v0 + 1216) = v80;
        *(v0 + 1208) = v79;
        v83 = "siriForAirPlayGenericError5";
        v84 = swift_task_alloc();
        *(v0 + 1224) = v84;
        *v84 = v0;
        v85 = sub_AA7C8;
      }
    }

    else
    {
      v47 = *(v0 + 1048);
      v48 = *(v0 + 1040);
      v49 = *(v0 + 952);
      v50 = *(v0 + 864);
      v51 = *(v0 + 808);
      v21(v51, 1, 1, *(v0 + 816));
      sub_30B8(v51, &qword_34E4A8, &unk_2D22B0);
      v47(v49, v48, v50);
      swift_errorRetain();
      v52 = sub_2CDFE0();
      v53 = sub_2CE680();
      sub_A41AC(v1, 1);
      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 1064);
      v56 = *(v0 + 952);
      v57 = *(v0 + 864);
      if (v54)
      {
        v161 = *(v0 + 1064);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v164[0] = v59;
        *v58 = 136315138;
        *(v0 + 464) = v1;
        swift_errorRetain();
        v60 = sub_2CE2A0();
        v62 = sub_3F08(v60, v61, v164);

        *(v58 + 4) = v62;
        _os_log_impl(&dword_0, v52, v53, "ExecuteMusicOnRemoteFlow#execute Error submitting SAExecuteOnRemoteRequest: %s", v58, 0xCu);
        sub_306C(v59);

        v161(v56, v57);
      }

      else
      {

        v55(v56, v57);
      }

      v83 = "NeedsServerExecutionReplacement";
      v84 = swift_task_alloc();
      *(v0 + 1232) = v84;
      *v84 = v0;
      v85 = sub_AAC5C;
    }

    v84[1] = v85;
    v141 = v83 | 0x8000000000000000;
    v142 = 0;
LABEL_61:
    v140 = 0xD00000000000001BLL;
LABEL_62:

    return sub_AD088(v142, v140, v141);
  }

  else
  {
    v13 = sub_A48F8();
    *(v0 + 1128) = v13;
    v14 = swift_task_alloc();
    *(v0 + 1136) = v14;
    *v14 = v0;
    v14[1] = sub_A70E4;

    return sub_B096C(v13);
  }
}

uint64_t sub_A70E4(uint64_t a1)
{
  *(*v1 + 1144) = a1;

  return _swift_task_switch(sub_A71E4, 0, 0);
}

uint64_t sub_A71E4()
{
  v239 = v0;
  v1 = (v0 + 16);
  v2 = *(v0 + 1120);
  (*(v0 + 1048))(*(v0 + 944), *(v0 + 1040), *(v0 + 864));
  v3 = v2;
  v4 = sub_2CDFE0();
  v5 = sub_2CE670();
  sub_A41AC(v2, 0);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1120);
    v234 = *(v0 + 944);
    v237 = *(v0 + 1064);
    v229 = *(v0 + 864);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v238[0] = v8;
    *v7 = 136315138;
    v9 = [v6 description];
    v10 = sub_2CE270();
    v12 = v11;

    sub_A41AC(v6, 0);
    v13 = sub_3F08(v10, v12, v238);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v4, v5, "ExecuteMusicOnRemoteFlow#execute Got response from SAExecuteOnRemoteRequest: %s", v7, 0xCu);
    sub_306C(v8);
    v1 = (v0 + 16);

    v237(v234, v229);
  }

  else
  {
    v14 = *(v0 + 1064);
    v15 = *(v0 + 944);
    v16 = *(v0 + 864);

    v14(v15, v16);
  }

  v17 = *(v0 + 1128);
  v225 = *(v0 + 1040);
  v230 = *(v0 + 1048);
  v213 = *(v0 + 936);
  v218 = *(v0 + 864);
  v18 = *(v0 + 704);
  v19 = *(v0 + 696);
  v210 = *(v0 + 688);
  v20 = *(v0 + 680);
  v21 = *(v0 + 672);
  v22 = *(v0 + 664);
  v23 = sub_2CBA10();
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  *(v0 + 48) = sub_B0E18;
  *(v0 + 56) = v24;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_A4294;
  *(v0 + 40) = &unk_333680;
  v25 = _Block_copy(v1);
  v235 = v17;
  sub_2CE160();
  *(v0 + 448) = _swiftEmptyArrayStorage;
  sub_B0E78(&qword_34FF20, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_20410(&qword_34DD48, &qword_2D5F80);
  sub_7DDE8();
  sub_2CEC10();
  sub_2CE9C0();
  _Block_release(v25);

  (*(v21 + 8))(v20, v22);
  (*(v19 + 8))(v18, v210);

  v230(v213, v225, v218);
  v26 = sub_2CDFE0();
  v27 = sub_2CE690();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "ExecuteMusicOnRemoteFlow#execute saving app selection record...", v28, 2u);
  }

  v29 = *(v0 + 1144);
  v30 = *(v0 + 1064);
  v31 = *(v0 + 936);
  v32 = *(v0 + 864);

  v30(v31, v32);
  sub_2CC070();
  swift_allocObject();
  v231 = sub_2CC060();
  sub_2CC2B0();
  v33 = swift_allocBox();
  sub_2CC2A0();
  if (v29)
  {

    v34 = sub_2CCF90();
    if (v35)
    {
      v36 = v34;
      v37 = v35;
      (*(v0 + 1048))(*(v0 + 928), *(v0 + 1040), *(v0 + 864));

      v38 = sub_2CDFE0();
      v39 = sub_2CE670();

      v40 = os_log_type_enabled(v38, v39);
      v41 = *(v0 + 1064);
      v42 = *(v0 + 928);
      v226 = *(v0 + 864);
      if (v40)
      {
        v219 = *(v0 + 928);
        v43 = v36;
        v44 = swift_slowAlloc();
        v214 = v41;
        v45 = swift_slowAlloc();
        v238[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_3F08(v43, v37, v238);
        _os_log_impl(&dword_0, v38, v39, "AppSelectionContext#saveRecord setting lastBundleIdentifier=%s", v44, 0xCu);
        sub_306C(v45);

        v214(v219, v226);
      }

      else
      {

        v41(v42, v226);
      }

      sub_2CC260();
    }
  }

  v46 = *(v0 + 1144);
  v47 = *(v0 + 1128);
  v48 = *(v0 + 1120);
  sub_2CBC60();
  sub_35E0((v0 + 64), *(v0 + 88));
  v49 = sub_2CBE60();
  v51 = v50;
  sub_306C((v0 + 64));
  sub_2CC0E0();
  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = v47;
  *(v52 + 48) = v46;
  *(v52 + 56) = v33;
  *(v52 + 64) = v231;
  *(v52 + 72) = 4;
  *(v52 + 80) = 0;

  v53 = v235;

  sub_2CC0C0();

  v236 = v53;
  if (![v48 result])
  {
    goto LABEL_21;
  }

  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  if (!v54)
  {
    swift_unknownObjectRelease();
LABEL_21:
    (*(v0 + 1048))(*(v0 + 896), *(v0 + 1040), *(v0 + 864));
    v77 = sub_2CDFE0();
    v78 = sub_2CE680();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "ExecuteMusicOnRemoteFlow#execute response is not SAIntentGroupRunSiriKitExecutorCompleted.", v79, 2u);
    }

    v228 = *(v0 + 1064);
    v232 = *(v0 + 1128);
    v80 = *(v0 + 896);
    v81 = *(v0 + 864);
    v82 = v77;
    v83 = *(v0 + 648);
    v84 = *(v0 + 640);
    v85 = *(v0 + 632);
    v86 = *(v0 + 624);
    v183 = *(v0 + 656);
    v189 = *(v0 + 616);
    v87 = *(v0 + 608);
    v88 = *(v0 + 600);
    v193 = *(v0 + 560);
    v198 = *(v0 + 592);
    v211 = *(v0 + 528);
    v216 = *(v0 + 496);
    v205 = *(v0 + 488);

    v228(v80, v81);
    (*(v83 + 104))(v183, enum case for AdditionalMetricsDescription.ModuleName.emorf(_:), v84);
    (*(v86 + 104))(v85, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v189);
    (*(v88 + 104))(v87, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v198);
    sub_2CCAD0();
    (*(v88 + 8))(v87, v198);
    (*(v86 + 8))(v85, v189);
    (*(v83 + 8))(v183, v84);
    sub_EEAC(v205 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider, v0 + 104);
    v89 = *(v0 + 128);
    v199 = *(v0 + 136);
    sub_35E0((v0 + 104), v89);
    v90 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v91 = sub_2C9C20();
    v92 = *(v91 - 8);
    (*(v92 + 104))(v193, v90, v91);
    (*(v92 + 56))(v193, 0, 1, v91);
    v93 = sub_2CA130();
    (*(*(v93 - 8) + 56))(v211, 1, 1, v93);
    v94 = enum case for SiriKitReliabilityCodes.success(_:);
    v95 = sub_2C98F0();
    v96 = *(v95 - 8);
    (*(v96 + 104))(v216, v94, v95);
    (*(v96 + 56))(v216, 0, 1, v95);
    if (v232)
    {
      v97 = v236;
      sub_2CE710();
    }

    v98 = v232 == 0;
    v194 = *(v0 + 1088);
    v179 = *(v0 + 1096);
    v233 = *(v0 + 1032);
    v99 = *(v0 + 1024);
    v212 = *(v0 + 1120);
    v217 = *(v0 + 1016);
    v100 = *(v0 + 560);
    v101 = *(v0 + 528);
    v102 = *(v0 + 488);
    v103 = *(v0 + 496);
    LOBYTE(v170) = v98;
    sub_2CB4E0();

    sub_30B8(v103, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v101, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v100, &qword_34CB88, &unk_2D0D90);
    sub_306C((v0 + 104));
    v104 = [objc_allocWithZone(SAIntentGroupRunSiriKitExecutorCompleted) init];
    v105 = *(v102 + 48);
    *(v102 + 48) = v104;
    v106 = *(v102 + 56);
    *(v102 + 56) = 3;
    sub_A46E8(v105, v106);
    sub_2C9EB0();

    sub_A41AC(v212, 0);
    (*(v99 + 8))(v233, v217);
    goto LABEL_39;
  }

  v55 = v54;
  v227 = v54;
  if ([v54 needsUserInput])
  {
    (*(v0 + 1048))(*(v0 + 920), *(v0 + 1040), *(v0 + 864));
    v56 = sub_2CDFE0();
    v57 = sub_2CE670();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "ExecuteMusicOnRemoteFlow#execute remote request is waiting on user input. But follow ups are not currently supported by this flow. Returning .complete()", v58, 2u);
    }

    v215 = *(v0 + 1064);
    v220 = *(v0 + 1128);
    v59 = *(v0 + 920);
    v60 = *(v0 + 864);
    v61 = v56;
    v62 = *(v0 + 648);
    v63 = *(v0 + 640);
    v64 = *(v0 + 632);
    v65 = *(v0 + 624);
    v175 = *(v0 + 656);
    v178 = *(v0 + 616);
    v66 = *(v0 + 608);
    v67 = *(v0 + 600);
    v182 = *(v0 + 584);
    v188 = *(v0 + 592);
    v197 = *(v0 + 552);
    v204 = *(v0 + 520);
    v192 = *(v0 + 488);

    v215(v59, v60);
    (*(v62 + 104))(v175, enum case for AdditionalMetricsDescription.ModuleName.emorf(_:), v63);
    (*(v65 + 104))(v64, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v178);
    (*(v67 + 104))(v66, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v188);
    sub_2CCAD0();
    (*(v67 + 8))(v66, v188);
    (*(v65 + 8))(v64, v178);
    (*(v62 + 8))(v175, v63);
    sub_EEAC(v192 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider, v0 + 224);
    sub_35E0((v0 + 224), *(v0 + 248));
    v68 = enum case for ActivityType.resolveSlotNeedsValue(_:);
    v69 = sub_2C9C20();
    v70 = *(v69 - 8);
    (*(v70 + 104))(v182, v68, v69);
    (*(v70 + 56))(v182, 0, 1, v69);
    v71 = sub_2CA130();
    (*(*(v71 - 8) + 56))(v197, 1, 1, v71);
    v72 = enum case for SiriKitReliabilityCodes.success(_:);
    v73 = sub_2C98F0();
    v74 = *(v73 - 8);
    (*(v74 + 104))(v204, v72, v73);
    (*(v74 + 56))(v204, 0, 1, v73);
    v75 = v236;
    if (v220)
    {
      v76 = v236;
      sub_2CE710();
    }

    v202 = *(v0 + 1120);
    v173 = *(v0 + 1096);
    v186 = *(v0 + 1088);
    v223 = *(v0 + 1032);
    v151 = *(v0 + 1024);
    v208 = *(v0 + 1016);
    v152 = *(v0 + 584);
    v153 = *(v0 + 552);
    v154 = *(v0 + 520);
    v155 = *(v0 + 488);
    sub_2CB4E0();

    sub_30B8(v154, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v153, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v152, &qword_34CB88, &unk_2D0D90);
    v156 = (v0 + 224);
LABEL_38:
    sub_306C(v156);
    v166 = *(v155 + 48);
    *(v155 + 48) = v227;
    v167 = *(v155 + 56);
    *(v155 + 56) = 3;
    swift_unknownObjectRetain();
    sub_A46E8(v166, v167);
    sub_2C9EB0();

    swift_unknownObjectRelease();

    sub_A41AC(v202, 0);
    (*(v151 + 8))(v223, v208);
    goto LABEL_39;
  }

  v107 = [v55 needsServerExecution];
  v108 = *(v0 + 1048);
  v109 = *(v0 + 1040);
  v110 = *(v0 + 864);
  if (!v107)
  {
    v108(*(v0 + 904), v109, v110);
    v131 = sub_2CDFE0();
    v132 = sub_2CE670();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_0, v131, v132, "ExecuteMusicOnRemoteFlow#execute remote request is not waiting on user input. Will return .complete", v133, 2u);
    }

    v222 = *(v0 + 1128);
    v134 = *(v0 + 1064);
    v135 = *(v0 + 904);
    v136 = *(v0 + 864);
    v172 = *(v0 + 656);
    v137 = v131;
    v138 = *(v0 + 648);
    v139 = *(v0 + 640);
    v140 = *(v0 + 624);
    v177 = *(v0 + 616);
    v181 = *(v0 + 632);
    v141 = *(v0 + 608);
    v142 = *(v0 + 600);
    v185 = *(v0 + 568);
    v191 = *(v0 + 592);
    v201 = *(v0 + 536);
    v207 = *(v0 + 504);
    v196 = *(v0 + 488);

    v134(v135, v136);
    (*(v138 + 104))(v172, enum case for AdditionalMetricsDescription.ModuleName.emorf(_:), v139);
    (*(v140 + 104))(v181, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v177);
    (*(v142 + 104))(v141, enum case for AdditionalMetricsDescription.StatusReason.unknown(_:), v191);
    sub_2CCAD0();
    (*(v142 + 8))(v141, v191);
    (*(v140 + 8))(v181, v177);
    (*(v138 + 8))(v172, v139);
    sub_EEAC(v196 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider, v0 + 144);
    sub_35E0((v0 + 144), *(v0 + 168));
    v143 = enum case for ActivityType.completed(_:);
    v144 = sub_2C9C20();
    v145 = *(v144 - 8);
    (*(v145 + 104))(v185, v143, v144);
    (*(v145 + 56))(v185, 0, 1, v144);
    v146 = sub_2CA130();
    (*(*(v146 - 8) + 56))(v201, 1, 1, v146);
    v147 = enum case for SiriKitReliabilityCodes.success(_:);
    v148 = sub_2C98F0();
    v149 = *(v148 - 8);
    (*(v149 + 104))(v207, v147, v148);
    (*(v149 + 56))(v207, 0, 1, v148);
    v75 = v236;
    if (v222)
    {
      v150 = v236;
      sub_2CE710();
    }

    v202 = *(v0 + 1120);
    v173 = *(v0 + 1096);
    v186 = *(v0 + 1088);
    v223 = *(v0 + 1032);
    v151 = *(v0 + 1024);
    v208 = *(v0 + 1016);
    v163 = *(v0 + 568);
    v164 = *(v0 + 536);
    v165 = *(v0 + 504);
    v155 = *(v0 + 488);
    sub_2CB4E0();

    sub_30B8(v165, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v164, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v163, &qword_34CB88, &unk_2D0D90);
    v156 = (v0 + 144);
    goto LABEL_38;
  }

  v108(*(v0 + 912), v109, v110);
  v111 = sub_2CDFE0();
  v112 = sub_2CE670();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_0, v111, v112, "ExecuteMusicOnRemoteFlow#execute remote request redirected to the server. Will return .unhandled(reason: .needsServerExecution)", v113, 2u);
  }

  v221 = *(v0 + 1128);
  v114 = *(v0 + 1064);
  v115 = *(v0 + 912);
  v116 = *(v0 + 864);
  v171 = *(v0 + 656);
  v117 = v111;
  v118 = *(v0 + 648);
  v119 = *(v0 + 640);
  v120 = *(v0 + 624);
  v176 = *(v0 + 616);
  v180 = *(v0 + 632);
  v121 = *(v0 + 608);
  v122 = *(v0 + 600);
  v184 = *(v0 + 576);
  v190 = *(v0 + 592);
  v200 = *(v0 + 544);
  v206 = *(v0 + 512);
  v195 = *(v0 + 488);

  v114(v115, v116);
  (*(v118 + 104))(v171, enum case for AdditionalMetricsDescription.ModuleName.emorf(_:), v119);
  (*(v120 + 104))(v180, enum case for AdditionalMetricsDescription.SourceFunction.exec(_:), v176);
  (*(v122 + 104))(v121, enum case for AdditionalMetricsDescription.StatusReason.needsServerExec(_:), v190);
  sub_2CCAD0();
  (*(v122 + 8))(v121, v190);
  (*(v120 + 8))(v180, v176);
  (*(v118 + 8))(v171, v119);
  sub_EEAC(v195 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider, v0 + 184);
  sub_35E0((v0 + 184), *(v0 + 208));
  v123 = enum case for ActivityType.needsServerExecution(_:);
  v124 = sub_2C9C20();
  v125 = *(v124 - 8);
  (*(v125 + 104))(v184, v123, v124);
  (*(v125 + 56))(v184, 0, 1, v124);
  v126 = sub_2CA130();
  (*(*(v126 - 8) + 56))(v200, 1, 1, v126);
  v127 = enum case for SiriKitReliabilityCodes.success(_:);
  v128 = sub_2C98F0();
  v129 = *(v128 - 8);
  (*(v129 + 104))(v206, v127, v128);
  (*(v129 + 56))(v206, 0, 1, v128);
  if (v221)
  {
    v130 = v236;
    sub_2CE710();
  }

  v203 = *(v0 + 1120);
  v174 = *(v0 + 1096);
  v187 = *(v0 + 1088);
  v224 = *(v0 + 1032);
  v157 = *(v0 + 1024);
  v209 = *(v0 + 1016);
  v158 = *(v0 + 576);
  v159 = *(v0 + 544);
  v160 = *(v0 + 512);
  v161 = *(v0 + 488);
  sub_2CB4E0();

  sub_30B8(v160, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v159, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v158, &qword_34CB88, &unk_2D0D90);
  sub_306C((v0 + 184));
  v162 = *(v161 + 48);
  *(v161 + 48) = v227;
  LOBYTE(v158) = *(v161 + 56);
  *(v161 + 56) = 3;
  swift_unknownObjectRetain();
  sub_A46E8(v162, v158);
  sub_2CC230();
  sub_2CC1E0();
  sub_2C9EB0();

  swift_unknownObjectRelease();

  sub_A41AC(v203, 0);
  (*(v157 + 8))(v224, v209);
LABEL_39:

  v168 = *(v0 + 8);

  return v168();
}

uint64_t sub_A8F84()
{

  return _swift_task_switch(sub_A9080, 0, 0);
}

uint64_t sub_A9080()
{
  v18 = *(v0 + 848);
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 744);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);

  (*(v8 + 8))(v7, v9);
  sub_30B8(v6, &qword_34E498, &qword_2D22A0);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v18, v2);
  v10 = *(v0 + 1120);
  v11 = *(v0 + 1096);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1016);
  sub_2C9EB0();

  sub_A41AC(v10, 1);
  (*(v14 + 8))(v13, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_A9474()
{

  return _swift_task_switch(sub_A9570, 0, 0);
}

uint64_t sub_A9570()
{
  v18 = *(v0 + 848);
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 736);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);

  (*(v8 + 8))(v7, v9);
  sub_30B8(v6, &qword_34E498, &qword_2D22A0);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v18, v2);
  v10 = *(v0 + 1120);
  v11 = *(v0 + 1096);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1016);
  sub_2C9EB0();

  sub_A41AC(v10, 1);
  (*(v14 + 8))(v13, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_A9964()
{

  return _swift_task_switch(sub_A9A60, 0, 0);
}

uint64_t sub_A9A60()
{
  v18 = *(v0 + 848);
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);

  (*(v8 + 8))(v7, v9);
  sub_30B8(v6, &qword_34E498, &qword_2D22A0);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v18, v2);
  v10 = *(v0 + 1120);
  v11 = *(v0 + 1096);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1016);
  sub_2C9EB0();

  sub_A41AC(v10, 1);
  (*(v14 + 8))(v13, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_A9E54()
{

  return _swift_task_switch(sub_A9F50, 0, 0);
}

uint64_t sub_A9F50()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);
  v7 = *(v0 + 776);

  sub_30B8(v7, &qword_34E498, &qword_2D22A0);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1096);
  v10 = *(v0 + 1088);
  v11 = *(v0 + 1032);
  v12 = *(v0 + 1024);
  v13 = *(v0 + 1016);
  sub_2C9EB0();

  sub_A41AC(v8, 1);
  (*(v12 + 8))(v11, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_AA31C()
{

  return _swift_task_switch(sub_AA418, 0, 0);
}

uint64_t sub_AA418()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 1120);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);
  v10 = *(v0 + 1032);
  v11 = *(v0 + 1024);
  v12 = *(v0 + 1016);
  sub_2C9EB0();

  sub_A41AC(v7, 1);
  (*(v11 + 8))(v10, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_AA7C8()
{

  return _swift_task_switch(sub_AA8C4, 0, 0);
}

uint64_t sub_AA8C4()
{
  v1 = v0[152];
  v2 = v0[105];
  v3 = v0[102];
  v1(v0[106], v3);
  v1(v2, v3);
  v4 = v0[140];
  v5 = v0[137];
  v6 = v0[136];
  v7 = v0[129];
  v8 = v0[128];
  v9 = v0[127];
  sub_2C9EB0();

  sub_A41AC(v4, 1);
  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_AAC5C()
{

  return _swift_task_switch(sub_AAD58, 0, 0);
}

uint64_t sub_AAD58(uint64_t a1)
{
  v2 = v1[140];
  v3 = v1[137];
  v4 = v1[136];
  v5 = v1[129];
  v6 = v1[128];
  v7 = v1[127];
  sub_2C9EB0();

  sub_A41AC(v2, 1);
  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_AB0B8()
{

  return _swift_task_switch(sub_AB1B4, 0, 0);
}

uint64_t sub_AB1B4()
{
  v1 = v0[144];
  v2 = v0[106];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[100];
  v6 = v0[99];
  v7 = v0[98];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = v0[140];
  v9 = v0[137];
  v10 = v0[136];
  v11 = v0[129];
  v12 = v0[128];
  v13 = v0[127];
  sub_2C9EB0();

  sub_A41AC(v8, 1);
  (*(v12 + 8))(v11, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_AB56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_AB58C, 0, 0);
}

uint64_t sub_AB58C()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = sub_20410(&qword_34CCC0, &unk_2D0DE0);
  *v1 = v0;
  v1[1] = sub_AB670;
  v3 = v0[2];
  v4 = v0[3];

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x2865747563657865, 0xE900000000000029, sub_B1588, v4, v2);
}

uint64_t sub_AB670()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_AB764(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E750, &unk_2D26F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_35E0((a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_nowPlayingProvider), *(a2 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_nowPlayingProvider + 24));
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  sub_2CC2F0();
}

uint64_t sub_AB8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20410(&qword_34E4B0, &qword_2D3520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_F3F4(a3, v25 - v10, &qword_34E4B0, &qword_2D3520);
  v12 = sub_2CE4D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_30B8(v11, &qword_34E4B0, &qword_2D3520);
  }

  else
  {
    sub_2CE4C0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2CE490();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2CE2D0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_30B8(a3, &qword_34E4B0, &qword_2D3520);

      return v22;
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

  sub_30B8(a3, &qword_34E4B0, &qword_2D3520);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_20410(&qword_34CCC0, &unk_2D0DE0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_ABBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20410(&qword_34E4B0, &qword_2D3520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_F3F4(a3, v25 - v10, &qword_34E4B0, &qword_2D3520);
  v12 = sub_2CE4D0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_30B8(v11, &qword_34E4B0, &qword_2D3520);
  }

  else
  {
    sub_2CE4C0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2CE490();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2CE2D0() + 32;
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

      sub_30B8(a3, &qword_34E4B0, &qword_2D3520);

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

  sub_30B8(a3, &qword_34E4B0, &qword_2D3520);
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

uint64_t sub_ABEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_ABF0C, 0, 0);
}

uint64_t sub_ABF0C()
{
  v1 = v0[3];
  v3 = v1[11];
  v2 = v1[12];
  sub_35E0(v1 + 8, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_334A0(0, &qword_34E4C8, SAExecuteOnRemoteResponse_ptr);
  *v4 = v0;
  v4[1] = sub_ABFEC;
  v6 = v0[4];

  return AceServiceInvokerAsync.submit<A>(_:)(v6, v3, v5, v2);
}

uint64_t sub_ABFEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_AC138, 0, 0);
  }
}

unint64_t sub_AC15C(unint64_t result, unint64_t a2)
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
        result = sub_2CECF0();
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

  v6 = sub_AF38C(result, a2, 10);
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

id ExecuteMusicOnRemoteFlow.makeExecuteOnRemoteRequest(input:targetDeviceId:currentRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55[1] = a2;
  v66 = sub_2CD460();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v55[0] = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CD430();
  __chkstk_darwin(v7 - 8);
  v60 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2CB260();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2CE000();
  v58 = *(v64 - 8);
  v10 = __chkstk_darwin(v64);
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  sub_2C8D10();
  swift_allocObject();
  v13 = sub_2C8D00();
  sub_2CA7B0();
  sub_B0E78(&qword_34E500, &type metadata accessor for Input, &protocol conformance descriptor for Input);
  v14 = sub_2C8CF0();
  v16 = v15;
  v17 = objc_allocWithZone(SKIDirectInvocationPayload);
  v18 = sub_2CE260();
  v19 = [v17 initWithIdentifier:v18];

  sub_20410(&qword_34E508, &unk_2D2320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  v21 = *(v5 + 40);
  v69 = *(v5 + 32);
  v70 = v21;

  sub_2CEC60();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = v14;
  *(inited + 80) = v16;
  sub_525D4(v14, v16);
  sub_9082C(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34E1B8, &qword_2D1F18);
  isa = sub_2CE1F0().super.isa;

  [v19 setUserData:isa];

  v23 = objc_opt_self();
  v24 = sub_2CB5D0();
  v61 = v19;
  v65 = [v23 runSiriKitExecutorCommandWithContext:v24 payload:v19];

  v25 = [objc_allocWithZone(SAIntentGroupSiriKitRemoteExecution) init];
  v26 = sub_2CE260();
  [v25 setExecutionDeviceAssistantId:v26];

  sub_2CD400();
  v27 = sub_2CE260();

  [v25 setInvocationDeviceAssistantId:v27];

  [v25 setRunLocation:SAIntentGroupSiriKitRunLocationExecutionDeviceValue];
  v28 = v25;
  sub_2CD410();
  v29 = v14;
  if (v30)
  {
    v31 = sub_2CE260();
  }

  else
  {
    v31 = 0;
  }

  v32 = v64;
  v33 = v58;
  [v28 setRefId:v31];

  v58 = v28;
  [v65 setRemoteExecution:v28];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v32, static Logger.default);
  swift_beginAccess();
  v33[2](v12, v34, v32);

  v35 = sub_2CDFE0();
  v36 = sub_2CE670();

  v37 = os_log_type_enabled(v35, v36);
  v63 = v13;
  v62 = v16;
  if (v37)
  {
    v38 = v29;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v68 = v40;
    *v39 = 136315138;
    v69 = sub_2CD410();
    v70 = v41;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v42 = sub_2CE2A0();
    v44 = sub_3F08(v42, v43, &v68);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_0, v35, v36, "Setting refID for RSKE to %s", v39, 0xCu);
    sub_306C(v40);

    v29 = v38;

    (v33[1])(v12, v64);
  }

  else
  {

    (v33[1])(v12, v32);
  }

  v45 = v65;
  sub_2CD410();
  v46 = v58;
  if (v47)
  {
    v48 = sub_2CE260();
  }

  else
  {
    v48 = 0;
  }

  [v45 setRefId:v48];

  v49 = v56;
  sub_2CD3C0();
  sub_2CB240();
  (*(v57 + 8))(v49, v59);
  v50 = sub_2CE260();

  [v45 setMode:v50];

  v51 = v60;
  sub_2CD3D0();
  if ((*(v67 + 48))(v51, 1, v66) == 1)
  {
    [v45 setMultiUser:0];
    sub_52628(v29, v62);
  }

  else
  {
    v52 = v55[0];
    (*(v67 + 32))(v55[0], v51, v66);
    [v45 setMultiUser:1];
    sub_2CD450();
    v53 = v71;
    if (v71)
    {
      sub_35E0(&v69, v71);
      v53 = sub_2CD380();
      if (v53)
      {
        sub_334A0(0, &qword_34E518, SAPerson_ptr);
        v53 = sub_2CEB50();
      }

      sub_306C(&v69);
    }

    else
    {
      sub_30B8(&v69, &qword_34E510, &unk_2D2330);
    }

    [v45 setIdentifiedUserMeCard:v53];

    [v45 setRequiresConditionalMultiUserGrounding:sub_2CD440() & 1];

    sub_52628(v29, v62);
    (*(v67 + 8))(v52, v66);
  }

  return v45;
}

uint64_t ExecuteMusicOnRemoteFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExecuteMusicOnRemoteFlow(0);
  sub_B0E78(&qword_34E520, type metadata accessor for ExecuteMusicOnRemoteFlow, &protocol conformance descriptor for ExecuteMusicOnRemoteFlow);
  return sub_2C97C0();
}

uint64_t sub_AD088(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = v3;
  *(v4 + 144) = a2;
  *(v4 + 344) = a1;
  v5 = sub_2C9EC0();
  *(v4 + 168) = v5;
  *(v4 + 176) = *(v5 - 8);
  *(v4 + 184) = swift_task_alloc();
  sub_20410(&qword_34CB78, &unk_2D0D80);
  *(v4 + 192) = swift_task_alloc();
  sub_20410(&qword_34CB80, &unk_2D0B30);
  *(v4 + 200) = swift_task_alloc();
  sub_20410(&qword_34CB88, &unk_2D0D90);
  *(v4 + 208) = swift_task_alloc();
  v6 = sub_2CCB30();
  *(v4 + 216) = v6;
  *(v4 + 224) = *(v6 - 8);
  *(v4 + 232) = swift_task_alloc();
  v7 = sub_2CCAC0();
  *(v4 + 240) = v7;
  *(v4 + 248) = *(v7 - 8);
  *(v4 + 256) = swift_task_alloc();
  v8 = sub_2CE000();
  *(v4 + 264) = v8;
  *(v4 + 272) = *(v8 - 8);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  sub_20410(&qword_34E480, &qword_2D2280);
  *(v4 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_AD350, 0, 0);
}

uint64_t sub_AD350()
{
  v1 = v0[37];
  v2 = v0[20];
  v3 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute;
  swift_beginAccess();
  sub_F3F4(v2 + v3, v1, &qword_34E480, &qword_2D2280);
  v4 = sub_2CA7B0();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_30B8(v1, &qword_34E480, &qword_2D2280);
  if (v2 == 1)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v6 = v0[34];
    v5 = v0[35];
    v7 = v0[33];
    v8 = sub_3ED0(v7, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_2CDFE0();
    v10 = sub_2CE680();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[34];
    v12 = v0[35];
    v14 = v0[33];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v9, v10, "ExecuteMusicOnRemoteFlow#generateDialog input is nil", v15, 2u);
    }

    (*(v13 + 8))(v12, v14);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = sub_A48F8();
    v0[38] = v18;
    v19 = swift_task_alloc();
    v0[39] = v19;
    *v19 = v0;
    v19[1] = sub_AD644;

    return sub_B096C(v18);
  }
}

uint64_t sub_AD644(uint64_t a1)
{
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_AD744, 0, 0);
}

uint64_t sub_AD744()
{
  v1 = *(v0 + 160) + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload;
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v1 + 24);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 344);

  v7 = v2(v6, v4, v5);
  if (!v7)
  {
    sub_B0EC0(v2, v3);
LABEL_9:
    *(v0 + 128) = sub_AD040(*(v0 + 344));
    *(v0 + 136) = v21;

    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 288);
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v11, v14, v13);
  v15 = sub_2CDFE0();
  v16 = sub_2CE690();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "ExecuteMusicOnRemoteFlow#generateDialog Found valid error dialog override. Using that instead", v17, 2u);
  }

  v18 = *(v0 + 288);
  v20 = *(v0 + 264);
  v19 = *(v0 + 272);
  sub_B0EC0(v2, v3);

  (*(v19 + 8))(v18, v20);
  *(v0 + 128) = v9;
  *(v0 + 136) = v10;
LABEL_10:
  v22 = *(v0 + 304);
  v23 = *(v0 + 248);
  v24 = *(v0 + 256);
  v26 = *(v0 + 232);
  v25 = *(v0 + 240);
  v27 = *(v0 + 216);
  v28 = *(v0 + 224);
  v49 = *(v0 + 208);
  v50 = *(v0 + 200);
  v51 = *(v0 + 160);
  v52 = *(v0 + 192);
  (*(v23 + 104))(v24, enum case for AdditionalMetricsDescription.ModuleName.emorf(_:), v25);
  (*(v28 + 104))(v26, enum case for AdditionalMetricsDescription.SourceFunction.errDlg(_:), v27);
  sub_2CCAE0();
  v29 = v22;

  (*(v28 + 8))(v26, v27);
  (*(v23 + 8))(v24, v25);
  sub_EEAC(v51 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider, v0 + 16);
  sub_35E0((v0 + 16), *(v0 + 40));
  v30 = enum case for ActivityType.failed(_:);
  v31 = sub_2C9C20();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v49, v30, v31);
  (*(v32 + 56))(v49, 0, 1, v31);
  v33 = sub_2CA130();
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v34 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
  v35 = sub_2C98F0();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v52, v34, v35);
  (*(v36 + 56))(v52, 0, 1, v35);
  if (v22)
  {
    v37 = v22;
    sub_2CE710();
  }

  v38 = *(v0 + 320);
  v39 = *(v0 + 304);
  v41 = *(v0 + 200);
  v40 = *(v0 + 208);
  v42 = *(v0 + 192);
  v43 = *(v0 + 160);
  sub_2CB4E0();

  sub_30B8(v42, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v41, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v40, &qword_34CB88, &unk_2D0D90);
  sub_306C((v0 + 16));
  v44 = swift_task_alloc();
  *(v0 + 328) = v44;
  v44[2] = v0 + 128;
  v44[3] = v38;
  v44[4] = v39;
  v44[5] = v43;
  v45 = swift_task_alloc();
  *(v0 + 336) = v45;
  *v45 = v0;
  v45[1] = sub_ADD08;
  v46 = *(v0 + 184);
  v47 = *(v0 + 168);

  return withCheckedContinuation<A>(isolation:function:_:)(v46, 0, 0, 0xD000000000000023, 0x80000000002DBD80, sub_B13C8, v44, v47);
}

uint64_t sub_ADD08()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_ADE7C, 0, 0);
}

uint64_t sub_ADE7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_ADF64(uint64_t a1, void (**a2)(unint64_t, uint64_t, void *, uint64_t (*)(uint64_t a1), uint64_t), uint64_t a3, void *a4, uint64_t a5)
{
  v23 = a5;
  v9 = sub_20410(&qword_34E738, &qword_2D26C8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v22 = *a2;

  v21 = sub_112C0(_swiftEmptyArrayStorage);
  if (!a3)
  {
    sub_2CCFB0();
    v13 = sub_2CCF80();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    v14 = 0;
    v15 = 0;
    v24[1] = 0;
    v24[2] = 0;
    goto LABEL_6;
  }

  v13 = a3;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v15 = &off_3381B8;
  v16 = a4;
LABEL_6:
  v24[0] = v16;
  v24[3] = v14;
  v24[4] = v15;
  (*(v10 + 16))(v12, a1, v9);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  (*(v10 + 32))(v18 + v17, v12, v9);

  v19 = a4;

  v22(v21, v13, v24, sub_B13D4, v18);

  return sub_30B8(v24, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_AE1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20410(&qword_34E738, &qword_2D26C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a3, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_AE3E4(a1, sub_B1454, v10);
}

uint64_t sub_AE304(uint64_t a1)
{
  v2 = sub_2C9EC0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_20410(&qword_34E738, &qword_2D26C8);
  return sub_2CE4A0();
}

uint64_t sub_AE3E4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v51 = a3;
  v52 = a2;
  v47 = a1;
  v3 = sub_2C9EC0();
  v53 = *(v3 - 8);
  __chkstk_darwin(v3);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v46 = sub_20410(&unk_3519A0, &qword_2D0980);
  __chkstk_darwin(v46);
  v9 = &v41 - v8;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v43 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v48 = (&v41 - v15);
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v44 = *(v11 + 16);
  v45 = v18;
  v44(v17, v18, v10);
  v19 = sub_2CDFE0();
  v20 = sub_2CE670();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "ExecuteMusicOnRemoteFlow#handleDialogResult Handling dialog Result...", v21, 2u);
  }

  v22 = *(v11 + 8);
  v49 = v11 + 8;
  v22(v17, v10);
  sub_F3F4(v47, v9, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v43;
    v44(v43, v45, v10);
    swift_errorRetain();
    v24 = sub_2CDFE0();
    v25 = sub_2CE680();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v3;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48 = v22;
      v29 = v28;
      v56 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v54 = sub_2CEEF0();
      v55 = v30;
      v31 = sub_2CE3C0();
      v33 = sub_3F08(v31, v32, &v56);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_0, v24, v25, "ExecuteMusicOnRemoteFlow#handleDialogResult Could not properly create dialog %s, silently failing...", v27, 0xCu);
      sub_306C(v29);

      v3 = v26;

      v48(v23, v10);
    }

    else
    {

      v22(v23, v10);
    }

    v40 = v50;
    sub_2C9EB0();
    v52(v40);

    return (*(v53 + 8))(v40, v3);
  }

  else
  {
    sub_24BE0(v9, v7);
    sub_2CB5B0();
    sub_2C9C10();
    swift_allocObject();
    sub_2C9BF0();
    v34 = sub_2C9BD0();
    sub_35E0((v42 + 64), *(v42 + 88));
    sub_2CA3E0();
    v44(v48, v45, v10);
    v35 = sub_2CDFE0();
    v36 = sub_2CE670();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "ExecuteMusicOnRemoteFlow#handleDialogResult Dialog successfully generated, responding and exiting...", v37, 2u);
    }

    v22(v48, v10);
    v38 = v50;
    sub_2C9EB0();
    v52(v38);

    (*(v53 + 8))(v38, v3);
    return sub_30B8(v7, &qword_34C6E8, &unk_2D0FF0);
  }
}

uint64_t ExecuteMusicOnRemoteFlow.deinit()
{

  sub_A46E8(*(v0 + 48), *(v0 + 56));
  sub_306C((v0 + 64));
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute, &qword_34E480, &qword_2D2280);
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_outputPublisher));
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload + 16);
  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_executeOnRemotePayload + 24);

  sub_B0EC0(v1, v2);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_appNameResolver));

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_encryptionProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_mediaRemoteProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_nowPlayingProvider));

  return v0;
}

uint64_t ExecuteMusicOnRemoteFlow.__deallocating_deinit()
{
  ExecuteMusicOnRemoteFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_AEC8C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2CB190();
  return sub_AED18;
}

void sub_AED18(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_AED60(uint64_t a1)
{
  v3 = sub_20410(&qword_34E480, &qword_2D2280);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *v1;
  v7 = *(*v1 + 56);
  if (v7 != 2 && (v7 != 4 || *(v6 + 48)))
  {
    return 0;
  }

  v9 = sub_2CA7B0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5, a1, v9);
  v8 = 1;
  (*(v10 + 56))(v5, 0, 1, v9);
  v11 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin24ExecuteMusicOnRemoteFlow_inputToExecute;
  swift_beginAccess();
  sub_A4888(v5, v6 + v11);
  swift_endAccess();
  return v8;
}

uint64_t sub_AEF30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E664;

  return ExecuteMusicOnRemoteFlow.execute()(a1);
}

void sub_AEFCC(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(v3 + 56);
  sub_A46B4(v4, *(v3 + 56));
  v6 = sub_A4408(v4, v5);
  v8 = v7;
  sub_A46E8(v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
}

uint64_t sub_AF03C(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_AF06C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_AF164;

  return v6(a1);
}

uint64_t sub_AF164()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_AF25C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_E664;

  return sub_AB56C(a1, v4, v5, v6);
}

uint64_t type metadata accessor for ExecuteMusicOnRemoteFlow(uint64_t a1)
{
  result = qword_34E590;
  if (!qword_34E590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AF35C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unsigned __int8 *sub_AF38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2CE3C0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_AF918(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2CECF0();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_AF918(uint64_t a1, unint64_t a2)
{
  v2 = sub_2CE3D0();
  v6 = sub_AF998(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_AF998(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2CEBB0();
    if (!v9 || (v10 = v9, v11 = sub_E8CC(v9, 0), v12 = sub_AFAF0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2CE300();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2CE300();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2CECF0();
LABEL_4:

  return sub_2CE300();
}

unint64_t sub_AFAF0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_AFD10(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2CE390();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2CECF0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_AFD10(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2CE370();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_AFD10(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2CE3A0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_2CE380();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_AFD8C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_AFE80;

  return v5(v2 + 16);
}

uint64_t sub_AFE80()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_AFF94(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  v9 = [a1 dictionary];
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_self();
    v26[0] = 0;
    v12 = [v11 dataWithPropertyList:v10 format:200 options:0 error:v26];
    v13 = v26[0];
    if (v12)
    {
      v14 = sub_2C8DC0();

      return v14;
    }

    v20 = v13;
    sub_2C8D30();

    swift_willThrow();

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v8, v21, v2);
    v22 = sub_2CDFE0();
    v23 = sub_2CE680();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "ExecuteMusicOnRemoteFlow#serializeCommandAsPList failed to serialize command to pList", v24, 2u);
    }

    else
    {
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v16 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v6, v16, v2);
    v17 = sub_2CDFE0();
    v18 = sub_2CE680();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "ExecuteMusicOnRemoteFlow#serializeCommandAsPList failed to serialize command to dictionary", v19, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

id sub_B0340(void *a1, uint64_t a2, unint64_t a3)
{
  v46 = a1;
  v5 = sub_2CE000();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v44 - v10;
  if (a3)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v12 = sub_3ED0(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v11, v12, v5);
    v13 = v46;

    v14 = sub_2CDFE0();
    v15 = sub_2CE660();

    if (os_log_type_enabled(v14, v15))
    {
      v45 = v15;
      v16 = 0x3E4C494E3CLL;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44[1] = v18;
      *v17 = 136315650;
      v46 = a2;
      v47 = v18;
      *(v17 + 4) = sub_3F08(a2, a3, &v47);
      *(v17 + 12) = 2080;
      v19 = [v13 refId];
      if (v19)
      {
        v20 = v19;
        v16 = sub_2CE270();
        v22 = v21;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      v29 = sub_3F08(v16, v22, &v47);

      *(v17 + 14) = v29;
      *(v17 + 22) = 2080;
      v30 = [v13 aceId];
      if (v30)
      {
        v31 = v30;
        v32 = sub_2CE270();
        v34 = v33;
      }

      else
      {
        v34 = 0xE500000000000000;
        v32 = 0x3E4C494E3CLL;
      }

      v35 = sub_3F08(v32, v34, &v47);

      *(v17 + 24) = v35;
      _os_log_impl(&dword_0, v14, v45, "ExecuteMusicOnRemoteFlow#wrapCommandForExecution wrapping command for remote execution with assistantID: '%s', refID: '%s', aceID: '%s'", v17, 0x20u);
      swift_arrayDestroy();

      (*(v6 + 8))(v11, v5);
      a2 = v46;
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    v36 = [objc_allocWithZone(SAExecuteOnRemoteRequest) init];
    v37 = sub_AFF94(v13);
    v39 = v38;
    isa = sub_2C8DB0().super.isa;
    sub_52628(v37, v39);
    [v36 setSerializedCommand:isa];

    v41 = [objc_allocWithZone(SARemoteDevice) init];
    v42 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v42 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      v43 = sub_2CE260();
      [v41 setAssistantId:v43];
    }

    [v41 setSiriEnabled:1];
    [v36 setRemoteDevice:v41];
    [v36 setShouldFallbackOnAWDL:0];

    return v36;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v23 = sub_3ED0(v5, static Logger.default);
    swift_beginAccess();
    (*(v6 + 16))(v9, v23, v5);
    v24 = sub_2CDFE0();
    v25 = sub_2CE660();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "ExecuteMusicOnRemoteFlow#wrapCommandForExecution wrapping command for remote execution skipped because of null assistantID", v26, 2u);
    }

    (*(v6 + 8))(v9, v5);
    v27 = v46;

    return v27;
  }
}

uint64_t sub_B08C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_E664;

  return sub_ABEE8(a1, v5, v4);
}

uint64_t sub_B096C(uint64_t a1)
{
  v1[22] = a1;
  v1[23] = sub_20410(&qword_34E740, &unk_2D68F0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_B0A18, 0, 0);
}

uint64_t sub_B0A18()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = *(*(v0 + 184) + 48);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 80) = sub_2CC810();
    *(v0 + 88) = &protocol witness table for UserPreferenceProvider;
    sub_F390((v0 + 56));
    v1;
    sub_2CC800();
    *(v0 + 120) = sub_2CB9E0();
    *(v0 + 128) = &protocol witness table for DeviceProvider;
    sub_F390((v0 + 96));
    sub_2CB9C0();
    *(v0 + 160) = sub_2CC2B0();
    *(v0 + 168) = &protocol witness table for FeatureFlagProvider;
    sub_F390((v0 + 136));
    sub_2CC2A0();
    v4 = swift_task_alloc();
    *(v0 + 208) = v4;
    *v4 = v0;
    v4[1] = sub_B0BC8;

    return INIntent.targetBundleIdentifier(userPreferenceProvider:deviceProvider:featureFlagProvider:internalSearchResults:alwaysInferAppFromSearchResults:nowPlaying:)(v2 + v3, v0 + 56, v0 + 96, v0 + 136, 0, 0, v0 + 16);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(0);
  }
}

uint64_t sub_B0BC8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = a2;

  sub_30B8((v3 + 2), &qword_34E748, &qword_2D26D0);
  sub_306C(v3 + 17);
  sub_306C(v3 + 12);
  sub_306C(v3 + 7);

  return _swift_task_switch(sub_B0CF8, 0, 0);
}

uint64_t sub_B0CF8()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  *v2 = v0[27];
  v2[1] = v1;
  sub_2CCFB0();
  sub_F3F4(v2, v3, &qword_34E740, &unk_2D68F0);
  v6 = *(v4 + 48);
  v7 = sub_2CCF80();

  sub_30B8(v2, &qword_34E740, &unk_2D68F0);
  v8 = sub_2CC5F0();
  (*(*(v8 - 8) + 8))(v3 + v6, v8);

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_B0E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B0E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_B0EC0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_B0F68(uint64_t a1)
{
  sub_B104C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_B104C(uint64_t a1)
{
  if (!qword_34E5A0)
  {
    sub_2CA7B0();
    v1 = sub_2CEB90();
    if (!v2)
    {
      atomic_store(v1, &qword_34E5A0);
    }
  }
}

uint64_t sub_B10A4(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_B10C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_B1108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_B114C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_B1174(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_B118C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_B1198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_B11E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_B1230(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_B124C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_B1294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_B12D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_B1300(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24C84;

  return sub_AF06C(a1, v4);
}

uint64_t sub_B13D4(uint64_t a1)
{
  v3 = *(sub_20410(&qword_34E738, &qword_2D26C8) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_AE1B4(a1, v4, v5);
}

uint64_t sub_B1454(uint64_t a1)
{
  sub_20410(&qword_34E738, &qword_2D26C8);

  return sub_AE304(a1);
}

uint64_t sub_B14D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24C84;

  return sub_AFD8C(a1, v4);
}

uint64_t sub_B1590(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_20410(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_B1614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&qword_34E750, &unk_2D26F0);

  sub_20410(&qword_34E750, &unk_2D26F0);
  return sub_2CE4A0();
}

uint64_t getEnumTagSinglePayload for ExecuteOnRemoteError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExecuteOnRemoteError(uint64_t result, unsigned int a2, unsigned int a3)
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