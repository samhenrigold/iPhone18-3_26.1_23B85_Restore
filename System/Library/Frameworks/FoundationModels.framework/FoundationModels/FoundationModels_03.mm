uint64_t sub_238847C58()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 472);
  v4 = *(v2 + 464);
  if (v0)
  {
    v5 = sub_238847FB0;
  }

  else
  {
    v5 = sub_238847D94;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238847D94()
{
  v14 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  v2(v12, v0 + 104);
  if (v1)
  {
    sub_238856720(v0 + 104);
    v3 = *(v0 + 456);

    sub_238827E88(v3, &qword_27DF2FFD0, &qword_2388D6160);
  }

  else
  {
    v5 = *(v0 + 456);
    v6 = *(v0 + 288);
    sub_238856720(v0 + 104);

    sub_238827E88(v5, &qword_27DF2FFD0, &qword_2388D6160);
    v7 = v12[7];
    *(v6 + 96) = v12[6];
    *(v6 + 112) = v7;
    *(v6 + 128) = v12[8];
    *(v6 + 144) = v13;
    v8 = v12[3];
    *(v6 + 32) = v12[2];
    *(v6 + 48) = v8;
    v9 = v12[5];
    *(v6 + 64) = v12[4];
    *(v6 + 80) = v9;
    v10 = v12[1];
    *v6 = v12[0];
    *(v6 + 16) = v10;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_238847FB0()
{
  v1 = *(v0 + 456);

  sub_238827E88(v1, &qword_27DF2FFD0, &qword_2388D6160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t LanguageModelSession.respond(schema:includeSchemaInPrompt:options:prompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 296) = a8;
  *(v9 + 304) = v8;
  *(v9 + 280) = a4;
  *(v9 + 288) = a7;
  *(v9 + 98) = a5;
  *(v9 + 272) = a1;
  v12 = type metadata accessor for GenerationSchema(0);
  *(v9 + 312) = v12;
  v13 = *(v12 - 8);
  *(v9 + 320) = v13;
  *(v9 + 328) = *(v13 + 64);
  *(v9 + 336) = swift_task_alloc();
  v14 = type metadata accessor for RawResponseStream(0);
  *(v9 + 344) = v14;
  v15 = *(v14 - 8);
  *(v9 + 352) = v15;
  *(v9 + 360) = *(v15 + 64);
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = type metadata accessor for GenerationSchema.Kind(0);
  *(v9 + 416) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v9 + 440) = swift_task_alloc();
  v16 = *(a6 + 48);
  *(v9 + 48) = *(a6 + 32);
  *(v9 + 64) = v16;
  *(v9 + 80) = *(a6 + 64);
  *(v9 + 96) = *(a6 + 80);
  v17 = *(a6 + 16);
  *(v9 + 16) = *a6;
  *(v9 + 32) = v17;
  if (a2)
  {
    swift_getObjectType();
    v18 = sub_2388D2B38();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  *(v9 + 448) = v18;
  *(v9 + 456) = v20;

  return MEMORY[0x2822009F8](sub_238848360, v18);
}

uint64_t sub_238848360()
{
  v85 = v0;
  (*(v0 + 288))();
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  *(v0 + 464) = v4;
  v5 = type metadata accessor for PromptTemplate(0);
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_238857D9C(v3, v2, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v74 = *(v0 + 432);
    v76 = *(v0 + 440);
    v6 = *(v0 + 416);
    v7 = *(v0 + 400);
    v72 = *(v0 + 392);
    v8 = *(v0 + 376);
    v9 = *(v0 + 384);
    v67 = *(v0 + 424);
    v70 = *(v0 + 344);
    v11 = *(v0 + 312);
    v10 = *(v0 + 320);
    v12 = *(v0 + 304);
    v13 = *(v0 + 280);

    v14 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388594C4(v6 + *(v14 + 64), type metadata accessor for StringGuides);
    sub_238857D9C(v13, v9, type metadata accessor for GenerationSchema);
    (*(v10 + 56))(v9, 0, 1, v11);
    v16 = v12[20];
    v15 = v12[21];
    v17 = sub_238815878(v12 + 17, v16);
    v78 = v4;
    v18 = *(v0 + 64);
    v81 = *(v0 + 48);
    v82 = v18;
    v83 = *(v0 + 80);
    v84 = *(v0 + 96);
    v19 = *(v0 + 32);
    v79 = *(v0 + 16);
    v80 = v19;
    sub_23884B7DC(&v78, v67, &v79, v17, v9, 0, 0, v8, sub_23884B648, 0, MEMORY[0x277D837D0], v16, v15);
    sub_238827E88(v9, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v67, &qword_27DF2FFC0, &unk_2388D5A80);
    v20 = v8[1];
    v21 = *(v70 + 20);
    v22 = v72[9];
    v64 = *v8;
    v68 = v22;
    v23 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v24 = *(v23 - 8);
    (*(v24 + 32))(v7 + v22, v8 + v21, v23);
    v25 = *(v8 + *(v70 + 24));
    v26 = swift_allocObject();
    *(v26 + 16) = v4;
    *v7 = v64;
    v7[1] = v20;
    *(v7 + v72[10]) = v25;
    v27 = (v7 + v72[11]);
    *v27 = sub_238830F10;
    v27[1] = 0;
    v28 = (v7 + v72[12]);
    *v28 = sub_238859730;
    v28[1] = v26;
    v29 = *v7;
    v30 = v7[1];
    (*(v24 + 16))(&v76[v74[9]], v7 + v68, v23);

    sub_238827E88(v7, &qword_27DF2FFC8, &qword_2388D5D30);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 2) = v29;
    *(v32 + 3) = v30;
    *(v32 + 4) = v4;
    *v76 = v29;
    *(v76 + 1) = v30;
    *&v76[v74[10]] = v25;
    v33 = &v76[v74[11]];
    *v33 = sub_2388596B0;
    v33[1] = v31;
    v34 = &v76[v74[12]];
    v35 = sub_238859748;
    *v34 = sub_238859748;
    v34[1] = v32;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v36 = *(v0 + 440);
    v37 = *(v0 + 416);
    v38 = *(v0 + 376);
    v39 = *(v0 + 384);
    v71 = *(v0 + 432);
    v73 = *(v0 + 368);
    v77 = *(v0 + 360);
    v75 = *(v0 + 352);
    v65 = *(v0 + 424);
    v69 = *(v0 + 344);
    v40 = *(v0 + 336);
    v41 = *(v0 + 320);
    v60 = *(v0 + 312);
    v42 = *(v0 + 304);
    v63 = *(v0 + 98);
    v43 = *(v0 + 280);

    sub_2388594C4(v37, type metadata accessor for GenerationSchema.Kind);
    v44 = v42[15];
    v61 = v42[16];
    v62 = sub_238815878(v42 + 12, v44);
    v78 = v4;
    v45 = *(v0 + 64);
    v81 = *(v0 + 48);
    v82 = v45;
    v83 = *(v0 + 80);
    v84 = *(v0 + 96);
    v46 = *(v0 + 32);
    v79 = *(v0 + 16);
    v80 = v46;
    sub_238857D9C(v43, v39, type metadata accessor for GenerationSchema);
    (*(v41 + 56))(v39, 0, 1, v60);
    sub_238857D9C(v43, v40, type metadata accessor for GenerationSchema);
    v47 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v48 = swift_allocObject();
    sub_2388595CC(v40, v48 + v47, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v78, v65, &v79, v62, v39, v63, 0, v38, sub_238859698, v48, &type metadata for GeneratedContent, v44, v61);

    sub_238827E88(v39, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v65, &qword_27DF2FFC0, &unk_2388D5A80);
    v49 = v38[1];
    v66 = *v38;
    v50 = *(v69 + 20);
    v51 = v71[9];
    v52 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v52 - 8) + 16))(v36 + v51, v38 + v50, v52);
    v25 = *(v38 + *(v69 + 24));
    sub_2388595CC(v38, v73, type metadata accessor for RawResponseStream);
    v53 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v32 = swift_allocObject();
    sub_2388595CC(v73, v32 + v53, type metadata accessor for RawResponseStream);
    *(v32 + ((v77 + v53 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
    *v36 = v66;
    v36[1] = v49;
    *(v36 + v71[10]) = v25;
    v54 = (v36 + v71[11]);
    *v54 = sub_2388313C0;
    v54[1] = 0;
    v55 = (v36 + v71[12]);
    v35 = sub_2388596B4;
    *v55 = sub_2388596B4;
    v55[1] = v32;
  }

  *(v0 + 472) = v35;
  *(v0 + 480) = v32;
  v56 = swift_task_alloc();
  *(v0 + 488) = v56;
  v57 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v56 = v0;
  v56[1] = sub_238848BC8;
  v58 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v25, &type metadata for ResponseEnvelope, v57, v58);
}

uint64_t sub_238848BC8()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 456);
  v4 = *(v2 + 448);
  if (v0)
  {
    v5 = sub_238848F20;
  }

  else
  {
    v5 = sub_238848D04;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238848D04()
{
  v14 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  v2(v12, v0 + 104);
  if (v1)
  {
    sub_238856720(v0 + 104);
    v3 = *(v0 + 440);

    sub_238827E88(v3, &qword_27DF2FFD0, &qword_2388D6160);
  }

  else
  {
    v5 = *(v0 + 440);
    v6 = *(v0 + 272);
    sub_238856720(v0 + 104);

    sub_238827E88(v5, &qword_27DF2FFD0, &qword_2388D6160);
    v7 = v12[7];
    *(v6 + 96) = v12[6];
    *(v6 + 112) = v7;
    *(v6 + 128) = v12[8];
    *(v6 + 144) = v13;
    v8 = v12[3];
    *(v6 + 32) = v12[2];
    *(v6 + 48) = v8;
    v9 = v12[5];
    *(v6 + 64) = v12[4];
    *(v6 + 80) = v9;
    v10 = v12[1];
    *v6 = v12[0];
    *(v6 + 16) = v10;
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_238848F20()
{
  v1 = *(v0 + 440);

  sub_238827E88(v1, &qword_27DF2FFD0, &qword_2388D6160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 896) = v8;
  *(v9 + 888) = v24;
  *(v9 + 880) = a8;
  *(v9 + 706) = a6;
  *(v9 + 872) = a1;
  v13 = type metadata accessor for RawResponseStream(0);
  *(v9 + 904) = v13;
  v14 = *(v13 - 8);
  *(v9 + 912) = v14;
  *(v9 + 920) = *(v14 + 64);
  *(v9 + 928) = swift_task_alloc();
  *(v9 + 936) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v9 + 944) = swift_task_alloc();
  *(v9 + 952) = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v9 + 960) = swift_task_alloc();
  *(v9 + 968) = type metadata accessor for GenerationSchema.Kind(0);
  *(v9 + 976) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v9 + 1000) = swift_task_alloc();
  v15 = type metadata accessor for GenerationSchema(0);
  *(v9 + 1008) = v15;
  v16 = *(v15 - 8);
  *(v9 + 1016) = v16;
  *(v9 + 1024) = *(v16 + 64);
  *(v9 + 1032) = swift_task_alloc();
  *(v9 + 1040) = swift_task_alloc();
  *(v9 + 1048) = *a4;
  v17 = *(a7 + 48);
  *(v9 + 656) = *(a7 + 32);
  *(v9 + 672) = v17;
  *(v9 + 688) = *(a7 + 64);
  *(v9 + 704) = *(a7 + 80);
  v18 = *(a7 + 16);
  *(v9 + 624) = *a7;
  *(v9 + 640) = v18;
  if (a2)
  {
    swift_getObjectType();
    v19 = sub_2388D2B38();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(v9 + 1064) = v21;
  *(v9 + 1056) = v19;

  return MEMORY[0x2822009F8](sub_2388492F8, v19);
}

uint64_t sub_2388492F8()
{
  v85 = v0;
  v77 = *(v0 + 1048);
  v1 = *(v0 + 1040);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  (*(*(v0 + 888) + 40))();
  v4 = type metadata accessor for PromptTemplate(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_238857D9C(v1, v3, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v5 = *(v0 + 1040);
    v6 = *(v0 + 1016);
    v75 = *(v0 + 1000);
    v73 = *(v0 + 992);
    v7 = *(v0 + 984);
    v8 = *(v0 + 976);
    v9 = *(v0 + 960);
    v70 = *(v0 + 952);
    v10 = *(v0 + 944);
    v11 = *(v0 + 936);
    v64 = *(v0 + 1008);
    v68 = *(v0 + 904);
    v12 = *(v0 + 896);

    v13 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388594C4(v8 + *(v13 + 64), type metadata accessor for StringGuides);
    sub_238857D9C(v5, v10, type metadata accessor for GenerationSchema);
    (*(v6 + 56))(v10, 0, 1, v64);
    v15 = v12[20];
    v14 = v12[21];
    v16 = sub_238815878(v12 + 17, v15);
    v78 = v77;
    v17 = *(v0 + 672);
    v81 = *(v0 + 656);
    v82 = v17;
    v83 = *(v0 + 688);
    v84 = *(v0 + 704);
    v18 = *(v0 + 640);
    v79 = *(v0 + 624);
    v80 = v18;
    sub_23884B7DC(&v78, v7, &v79, v16, v10, 0, 0, v11, sub_23884B648, 0, MEMORY[0x277D837D0], v15, v14);
    sub_238827E88(v10, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v7, &qword_27DF2FFC0, &unk_2388D5A80);
    v19 = v11[1];
    v20 = *(v68 + 20);
    v21 = v70[9];
    v62 = *v11;
    v65 = v21;
    v22 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v23 = *(v22 - 8);
    (*(v23 + 32))(v9 + v21, v11 + v20, v22);
    v24 = *(v11 + *(v68 + 24));
    v25 = swift_allocObject();
    *(v25 + 16) = v77;
    *v9 = v62;
    v9[1] = v19;
    *(v9 + v70[10]) = v24;
    v26 = (v9 + v70[11]);
    *v26 = sub_238830F10;
    v26[1] = 0;
    v27 = (v9 + v70[12]);
    *v27 = sub_238859730;
    v27[1] = v25;
    v29 = *v9;
    v28 = v9[1];
    (*(v23 + 16))(&v75[v73[9]], v9 + v65, v22);

    sub_238827E88(v9, &qword_27DF2FFC8, &qword_2388D5D30);
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    v31 = swift_allocObject();
    *(v31 + 2) = v29;
    *(v31 + 3) = v28;
    *(v31 + 4) = v77;
    *v75 = v29;
    *(v75 + 1) = v28;
    *&v75[v73[10]] = v24;
    v32 = &v75[v73[11]];
    *v32 = sub_2388596B0;
    v32[1] = v30;
    v33 = &v75[v73[12]];
    v34 = sub_238859748;
    *v33 = sub_238859748;
    v33[1] = v31;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v35 = *(v0 + 1040);
    v36 = *(v0 + 1032);
    v37 = *(v0 + 1016);
    v59 = *(v0 + 1008);
    v38 = *(v0 + 1000);
    v39 = *(v0 + 976);
    v40 = *(v0 + 944);
    v41 = *(v0 + 936);
    v71 = *(v0 + 992);
    v72 = *(v0 + 928);
    v74 = *(v0 + 912);
    v76 = *(v0 + 920);
    v66 = *(v0 + 984);
    v69 = *(v0 + 904);
    v42 = *(v0 + 896);
    v63 = *(v0 + 706);

    sub_2388594C4(v39, type metadata accessor for GenerationSchema.Kind);
    v43 = v42[15];
    v60 = v42[16];
    v61 = sub_238815878(v42 + 12, v43);
    v78 = v77;
    v44 = *(v0 + 672);
    v81 = *(v0 + 656);
    v82 = v44;
    v83 = *(v0 + 688);
    v84 = *(v0 + 704);
    v45 = *(v0 + 640);
    v79 = *(v0 + 624);
    v80 = v45;
    sub_238857D9C(v35, v40, type metadata accessor for GenerationSchema);
    (*(v37 + 56))(v40, 0, 1, v59);
    sub_238857D9C(v35, v36, type metadata accessor for GenerationSchema);
    v46 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v47 = swift_allocObject();
    sub_2388595CC(v36, v47 + v46, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v78, v66, &v79, v61, v40, v63, 0, v41, sub_238859698, v47, &type metadata for GeneratedContent, v43, v60);

    sub_238827E88(v40, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v66, &qword_27DF2FFC0, &unk_2388D5A80);
    v48 = v41[1];
    v67 = *v41;
    v49 = *(v69 + 20);
    v50 = v71[9];
    v51 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v51 - 8) + 16))(v38 + v50, v41 + v49, v51);
    v24 = *(v41 + *(v69 + 24));
    sub_2388595CC(v41, v72, type metadata accessor for RawResponseStream);
    v52 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v31 = swift_allocObject();
    sub_2388595CC(v72, v31 + v52, type metadata accessor for RawResponseStream);
    *(v31 + ((v76 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v77;
    *v38 = v67;
    v38[1] = v48;
    *(v38 + v71[10]) = v24;
    v53 = (v38 + v71[11]);
    *v53 = sub_2388313C0;
    v53[1] = 0;
    v54 = (v38 + v71[12]);
    v34 = sub_2388596B4;
    *v54 = sub_2388596B4;
    v54[1] = v31;
  }

  *(v0 + 1080) = v31;
  *(v0 + 1072) = v34;
  v55 = swift_task_alloc();
  *(v0 + 1088) = v55;
  v56 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v55 = v0;
  v55[1] = sub_238849B08;
  v57 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 792, v24, &type metadata for ResponseEnvelope, v56, v57);
}

uint64_t sub_238849B08()
{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  v3 = *(v2 + 1064);
  v4 = *(v2 + 1056);
  if (v0)
  {
    v5 = sub_238849FA8;
  }

  else
  {
    v5 = sub_238849C44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238849C44()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 840);
  *(v0 + 744) = *(v0 + 824);
  *(v0 + 760) = v3;
  *(v0 + 776) = *(v0 + 856);
  v4 = *(v0 + 808);
  *(v0 + 712) = *(v0 + 792);
  *(v0 + 728) = v4;
  v2(v0 + 712);
  if (v1)
  {
    sub_238856720(v0 + 712);
    v5 = *(v0 + 1000);
    sub_2388594C4(*(v0 + 1040), type metadata accessor for GenerationSchema);
    sub_238827E88(v5, &qword_27DF2FFD0, &qword_2388D6160);
  }

  else
  {
    v6 = *(v0 + 1040);
    v7 = *(v0 + 1000);
    v8 = *(v0 + 888);
    v9 = *(v0 + 880);
    v10 = *(v0 + 872);
    sub_238856720(v0 + 712);
    sub_2388594C4(v6, type metadata accessor for GenerationSchema);
    sub_238827E88(v7, &qword_27DF2FFD0, &qword_2388D6160);
    v11 = *(v0 + 128);
    *(v0 + 264) = *(v0 + 112);
    *(v0 + 280) = v11;
    *(v0 + 296) = *(v0 + 144);
    *(v0 + 312) = *(v0 + 160);
    v12 = *(v0 + 64);
    *(v0 + 200) = *(v0 + 48);
    *(v0 + 216) = v12;
    v13 = *(v0 + 96);
    *(v0 + 232) = *(v0 + 80);
    *(v0 + 248) = v13;
    v14 = *(v0 + 32);
    *(v0 + 168) = *(v0 + 16);
    *(v0 + 184) = v14;
    v15 = swift_task_alloc();
    v15[2] = v9;
    v15[3] = v8;
    v15[4] = v9;
    v16 = sub_238810E44(&qword_27DF2FFD8, &unk_2388D6170);
    sub_23884479C(sub_238856830, v16, v9, v8, v10);
    v19 = *(v0 + 280);
    *(v0 + 568) = *(v0 + 264);
    *(v0 + 584) = v19;
    *(v0 + 600) = *(v0 + 296);
    *(v0 + 616) = *(v0 + 312);
    v20 = *(v0 + 216);
    *(v0 + 504) = *(v0 + 200);
    *(v0 + 520) = v20;
    v21 = *(v0 + 248);
    *(v0 + 536) = *(v0 + 232);
    *(v0 + 552) = v21;
    v22 = *(v0 + 184);
    *(v0 + 472) = *(v0 + 168);
    *(v0 + 488) = v22;
    sub_238827E88(v0 + 472, &qword_27DF2FFD8, &unk_2388D6170);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_238849FA8()
{
  v1 = v0[125];
  sub_2388594C4(v0[130], type metadata accessor for GenerationSchema);
  sub_238827E88(v1, &qword_27DF2FFD0, &qword_2388D6160);

  v2 = v0[1];

  return v2();
}

uint64_t sub_23884A0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 17);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v14 = v9;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v10 = *(a4 + 8);
  v11 = *(v10 + 8);
  sub_238814698(v13[0], v5, v9);

  return v11(v13, a3, v10);
}

uint64_t LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 200) = v16;
  *(v9 + 208) = v8;
  *(v9 + 184) = a8;
  *(v9 + 192) = v15;
  *(v9 + 98) = a7;
  *(v9 + 168) = a5;
  *(v9 + 176) = a6;
  *(v9 + 152) = a3;
  *(v9 + 160) = a4;
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
  if (a2)
  {
    swift_getObjectType();
    v10 = sub_2388D2B38();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v9 + 216) = v10;
  *(v9 + 224) = v12;

  return MEMORY[0x2822009F8](sub_23884A21C, v10);
}

uint64_t sub_23884A21C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  *(v0 + 104) = *(v0 + 160);
  *(v0 + 112) = v2;
  *(v0 + 120) = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D837D0];
  v4 = *(MEMORY[0x277D837D0] - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v0 + 104, v3);
  v6 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v6)(&v23);
  v7 = *(v4 + 8);
  v8 = MEMORY[0x277D837D0];
  v7(v5, MEMORY[0x277D837D0]);
  sub_23881FAF4(v23);

  v9 = *(v0 + 120);
  v7(v0 + 104, v8);

  *(v0 + 128) = v9;
  v10 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v10;
  v11 = *(v1 + 32);
  v12 = *(v1 + 48);
  v13 = *(v1 + 64);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 64) = v12;
  *(v0 + 80) = v13;
  *(v0 + 48) = v11;
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_23884A444;
  v16 = *(v0 + 192);
  v17 = *(v0 + 98);
  v18 = *(v0 + 144);
  v19 = *(v0 + 152);
  v20 = *(v0 + 136);

  return LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(v20, v18, v19, (v0 + 128), v14, v17, v0 + 16, v16);
}

uint64_t sub_23884A444()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_23884A57C;
  }

  else
  {
    v5 = sub_23884A564;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t LanguageModelSession.respond<A>(generating:includeSchemaInPrompt:options:prompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 184) = v16;
  *(v9 + 192) = v8;
  *(v9 + 168) = a8;
  *(v9 + 176) = v15;
  *(v9 + 152) = a6;
  *(v9 + 160) = a7;
  *(v9 + 98) = a5;
  *(v9 + 136) = a3;
  *(v9 + 144) = a4;
  *(v9 + 120) = a1;
  *(v9 + 128) = a2;
  if (a2)
  {
    swift_getObjectType();
    v10 = sub_2388D2B38();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v9 + 200) = v10;
  *(v9 + 208) = v12;

  return MEMORY[0x2822009F8](sub_23884A644, v10);
}

uint64_t sub_23884A644()
{
  (*(v0 + 160))();
  v1 = *(v0 + 152);
  *(v0 + 112) = *(v0 + 104);
  v2 = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 64);
  *(v0 + 96) = *(v1 + 80);
  *(v0 + 64) = v3;
  *(v0 + 80) = v4;
  *(v0 + 48) = v2;
  v5 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v7 = swift_task_alloc();
  *(v0 + 216) = v7;
  *v7 = v0;
  v7[1] = sub_23884A780;
  v8 = *(v0 + 176);
  v9 = *(v0 + 98);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 120);

  return LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(v12, v10, v11, (v0 + 112), v6, v9, v0 + 16, v8);
}

uint64_t sub_23884A780()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_23884A8A4;
  }

  else
  {
    v5 = sub_23884A564;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t LanguageModelSession.streamResponse(to:schema:includeSchemaInPrompt:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  v83 = a3;
  v92 = a5;
  v89 = type metadata accessor for GenerationSchema(0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v80[1] = v8;
  v81 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for RawResponseStream(0);
  v84 = *(v91 - 8);
  v9 = MEMORY[0x28223BE20](v91);
  v86 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = (v80 - v11);
  v13 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v80 - v14;
  v82 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  MEMORY[0x28223BE20](v82);
  v17 = (v80 - v16);
  v18 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v18);
  v20 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v80 - v22;
  v24 = *a1;
  v25 = a4[3];
  v102 = a4[2];
  v103 = v25;
  v104 = a4[4];
  v105 = *(a4 + 40);
  v26 = a4[1];
  v100 = *a4;
  v101 = v26;
  v27 = type metadata accessor for PromptTemplate(0);
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = a2;
  sub_238857D9C(a2, v20, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v87 = v24;
  if (EnumCaseMultiPayload == 4)
  {

    v30 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388594C4(&v20[*(v30 + 64)], type metadata accessor for StringGuides);
    sub_238857D9C(a2, v15, type metadata accessor for GenerationSchema);
    (*(v88 + 56))(v15, 0, 1, v89);
    v31 = *(v90 + 20);
    v32 = *(v90 + 21);
    v33 = sub_238815878(v90 + 17, v31);
    v99 = v24;
    v95 = v102;
    v96 = v103;
    v97 = v104;
    v98 = v105;
    v93 = v100;
    v94 = v101;
    sub_23884B7DC(&v99, v23, &v93, v33, v15, 0, 1, v12, sub_23884B648, 0, MEMORY[0x277D837D0], v31, v32);
    sub_238827E88(v15, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v23, &qword_27DF2FFC0, &unk_2388D5A80);
    v34 = *v12;
    v35 = v12[1];
    v36 = v91;
    v37 = *(v91 + 20);
    v38 = v82;
    v39 = *(v82 + 36);
    v90 = v39;
    v40 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v41 = *(v40 - 8);
    (*(v41 + 32))(&v39[v17], v12 + v37, v40);
    v42 = *(v12 + *(v36 + 24));
    v43 = swift_allocObject();
    v44 = v87;
    *(v43 + 16) = v87;
    *v17 = v34;
    v17[1] = v35;
    *(v17 + v38[10]) = v42;
    v45 = (v17 + v38[11]);
    *v45 = sub_238830F10;
    v45[1] = 0;
    v46 = (v17 + v38[12]);
    *v46 = sub_238859730;
    v46[1] = v43;
    v48 = *v17;
    v47 = v17[1];
    v49 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v50 = v92;
    (*(v41 + 16))(v92 + v49[9], &v90[v17], v40);

    sub_238827E88(v17, &qword_27DF2FFC8, &qword_2388D5D30);
    v51 = swift_allocObject();
    *(v51 + 16) = v48;
    *(v51 + 24) = v47;
    v52 = swift_allocObject();
    *(v52 + 2) = v48;
    *(v52 + 3) = v47;
    *(v52 + 4) = v44;
    *v50 = v48;
    v50[1] = v47;
    *(v50 + v49[10]) = v42;
    v53 = (v50 + v49[11]);
    *v53 = sub_2388596B0;
    v53[1] = v51;
    v54 = (v50 + v49[12]);
    *v54 = sub_238859748;
    v54[1] = v52;
    return swift_bridgeObjectRetain_n();
  }

  else
  {
    v56 = v24;

    sub_2388594C4(v20, type metadata accessor for GenerationSchema.Kind);
    v57 = *(v90 + 15);
    v58 = *(v90 + 16);
    v59 = sub_238815878(v90 + 12, v57);
    v99 = v56;
    v95 = v102;
    v96 = v103;
    v97 = v104;
    v98 = v105;
    v93 = v100;
    v94 = v101;
    sub_238857D9C(v28, v15, type metadata accessor for GenerationSchema);
    v60 = v88 + 56;
    (*(v88 + 56))(v15, 0, 1, v89);
    v61 = v28;
    v62 = v81;
    sub_238857D9C(v61, v81, type metadata accessor for GenerationSchema);
    v63 = (*(v60 + 24) + 16) & ~*(v60 + 24);
    v64 = swift_allocObject();
    sub_2388595CC(v62, v64 + v63, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v99, v23, &v93, v59, v15, v83 & 1, 1, v12, sub_238859698, v64, &type metadata for GeneratedContent, v57, v58);

    sub_238827E88(v15, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v23, &qword_27DF2FFC0, &unk_2388D5A80);
    v66 = *v12;
    v65 = v12[1];
    v67 = v91;
    v68 = *(v91 + 20);
    v69 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v70 = v69[9];
    v71 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v72 = v92;
    (*(*(v71 - 8) + 16))(v92 + v70, v12 + v68, v71);
    v73 = *(v12 + *(v67 + 24));
    v74 = v86;
    sub_2388595CC(v12, v86, type metadata accessor for RawResponseStream);
    v75 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v76 = (v85 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    sub_2388595CC(v74, v77 + v75, type metadata accessor for RawResponseStream);
    *(v77 + v76) = v87;
    *v72 = v66;
    v72[1] = v65;
    *(v72 + v69[10]) = v73;
    v78 = (v72 + v69[11]);
    *v78 = sub_2388313C0;
    v78[1] = 0;
    v79 = (v72 + v69[12]);
    *v79 = sub_2388596B4;
    v79[1] = v77;
  }
}

uint64_t sub_23884B2B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if (v8 < 0)
  {
    a2 = a1[3];
    a3 = a1[4];
    v14 = a1[2] & 0x1FF;
    sub_238814698(*a1, v6, v8);
  }

  else
  {
    v15[0] = *a1;
    v15[1] = v6;
    v16 = 2;

    v7 = sub_23881EF9C(v15);
    v6 = v10;
    v12 = v11;

    result = swift_bridgeObjectRelease_n();
    v14 = v12 & 0x1FF;
  }

  *a4 = v7;
  a4[1] = v6;
  a4[2] = v14;
  a4[3] = a2;
  a4[4] = a3;
  return result;
}

uint64_t sub_23884B368@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = a1[4];
  v10 = a1[5];
  *&v42 = v11;
  *(&v42 + 1) = v10;
  LOBYTE(v43) = 2;

  v12 = sub_23881EF9C(&v42);
  v39 = v13;
  v40 = v12;
  v38 = v14;

  swift_bridgeObjectRelease_n();
  v15 = MEMORY[0x277D84F90];
  if (a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v44 = *(a1 + 1);
  v17 = *(a1 + 4);
  v42 = *(a1 + 3);
  v43 = v17;
  v18 = *(v16 + 16);

  sub_238827E14(&v44, v41, &qword_27DF2FD18, &unk_2388D5400);
  result = sub_238827E14(&v42, v41, &qword_27DF2FD20, &unk_2388D5C40);
  v20 = 0;
LABEL_5:
  v21 = 24 * v20;
  while (1)
  {
    if (v18 == v20)
    {

      v29 = (v38 >> 8) & 1;
      v41[0] = v15;
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410, MEMORY[0x277D83958]);
      v30 = sub_2388D27B8();
      v32 = v31;

      v33 = sub_2388D3578();
      sub_2388D3578();
      *(a5 + 40) = v40;
      *(a5 + 48) = v39;
      *(a5 + 56) = v38;
      *(a5 + 57) = v29;
      *(a5 + 64) = a2;
      *(a5 + 72) = a3;
      *a5 = v30;
      *(a5 + 8) = v32;
      *(a5 + 16) = v34 / 1.0e18 + v33;
      *(a5 + 24) = v44;
      *(a5 + 80) = v40;
      *(a5 + 88) = v39;
      *(a5 + 96) = v38;
      *(a5 + 97) = v29;
      *(a5 + 104) = a2;
      *(a5 + 112) = a3;
      v35 = v43;
      *(a5 + 120) = v42;
      *(a5 + 136) = v35;
      sub_238814698(v40, v39, v38);
    }

    if (v20 >= *(v16 + 16))
    {
      break;
    }

    ++v20;
    v22 = v21 + 24;
    v23 = *(v16 + v21 + 48);
    v21 += 24;
    if ((v23 & 1) == 0)
    {
      v24 = *(v16 + v22 + 16);
      v36 = *(v16 + v22 + 8);
      v37 = a2;

      result = swift_isUniquelyReferenced_nonNull_native();
      v25 = a3;
      if ((result & 1) == 0)
      {
        result = sub_2388B686C(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v27 = *(v15 + 16);
      v26 = *(v15 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_2388B686C((v26 > 1), v27 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 16) = v27 + 1;
      v28 = v15 + 16 * v27;
      *(v28 + 32) = v36;
      *(v28 + 40) = v24;
      a3 = v25;
      a2 = v37;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23884B648@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v21 = a2;
  v22 = a6;
  v14 = type metadata accessor for Transcript.Entry(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2388D3F70;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  v19 = v21;
  *(v18 + 48) = v22;
  *(v18 + 56) = a7;
  *(v18 + 80) = 0;
  *v17 = v19;
  v17[1] = a3;
  v17[2] = a1;
  v17[3] = v18;
  swift_storeEnumTagMultiPayload();
  sub_2388595CC(v17, a8, type metadata accessor for Transcript.Entry);
  (*(v15 + 56))(a8, 0, 1, v14);
}

uint64_t sub_23884B7DC@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v157 = a7;
  v128 = a6;
  v161 = a5;
  v147 = a4;
  v148 = a2;
  v172 = a8;
  v153 = a13;
  v152 = a11;
  v158 = a10;
  v156 = a9;
  v17 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v149 = *(v17 - 8);
  v150 = *(v149 + 64);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v169 = &v120 - v19;
  v155 = a12;
  v151 = *(a12 - 8);
  MEMORY[0x28223BE20](v18);
  v146 = v20;
  v167 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  MEMORY[0x28223BE20](v21 - 8);
  v170 = &v120 - v22;
  v141 = sub_238810E44(&qword_27DF300A0, &qword_2388D5C60);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v120 - v23;
  v171 = sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  v154 = *(v171 - 8);
  v24 = MEMORY[0x28223BE20](v171);
  v166 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v25;
  MEMORY[0x28223BE20](v24);
  v168 = &v120 - v26;
  v127 = type metadata accessor for Transcript.Entry(0);
  v130 = *(v127 - 8);
  v27 = MEMORY[0x28223BE20](v127);
  v129 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v131 = &v120 - v29;
  v126 = type metadata accessor for Transcript.Prompt(0);
  MEMORY[0x28223BE20](v126);
  v31 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for GenerationSchema(0);
  v124 = *(v125 - 8);
  v32 = MEMORY[0x28223BE20](v125);
  v121 = &v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v122 = &v120 - v34;
  v35 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  v137 = *(v35 - 8);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v163 = &v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v120 - v38;
  v40 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v159 = &v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v160 = (&v120 - v43);
  v165 = sub_2388D3088();
  v144 = *(v165 - 8);
  v44 = MEMORY[0x28223BE20](v165);
  v162 = &v120 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v120 - v46;
  v48 = sub_2388D1058();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v120 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *a1;
  v53 = a3[3];
  v180 = a3[2];
  v181 = v53;
  v182 = a3[4];
  v183 = *(a3 + 40);
  v54 = a3[1];
  v178 = *a3;
  v179 = v54;
  sub_2388D1048();
  v143 = sub_2388D1038();
  v142 = v55;
  v56 = *(v49 + 8);
  v56(v51, v48);
  sub_2388D1048();
  v135 = sub_2388D1038();
  v134 = v57;
  v123 = v56;
  v56(v51, v48);
  v58 = v52;
  v164 = v47;
  v59 = v161;
  v60 = sub_2388D3058();
  v133 = sub_238842970(v60, v61);
  if (v52)
  {
    v132 = v14;
    sub_238827E14(v59, v39, &qword_27DF2FE20, &qword_2388D5740);
    v62 = 1;
    v63 = v125;
    if ((*(v124 + 48))(v39, 1, v125) != 1)
    {
      v64 = v39;
      v65 = v122;
      sub_2388595CC(v64, v122, type metadata accessor for GenerationSchema);
      v66 = v121;
      sub_238857D9C(v65, v121, type metadata accessor for GenerationSchema);
      v67 = (v66 + *(v63 + 20));
      v68 = v67[1];
      v125 = *v67;

      sub_2388C24EC();
      v124 = v69;
      v120 = v70;
      v71 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
      v72 = v160;
      GenerationSchema.jsonSchema()(v160 + *(v71 + 24));
      sub_2388594C4(v66, type metadata accessor for GenerationSchema);
      sub_2388594C4(v65, type metadata accessor for GenerationSchema);
      v62 = 0;
      *v72 = v125;
      v72[1] = v68;
      v73 = v120;
      v72[2] = v124;
      v72[3] = v73;
    }

    v74 = type metadata accessor for Transcript.ResponseFormat(0);
    v75 = *(*(v74 - 8) + 56);
    v76 = v160;
    v75(v160, v62, 1, v74);
    v177 = v58;
    v125 = sub_238856398(&v177, sub_2388596CC, sub_2388596D0);
    if (v128)
    {
      sub_238827E14(v76, v159, &qword_27DF2FF00, &qword_2388D57E0);
    }

    else
    {
      v75(v159, 1, 1, v74);
    }

    sub_2388D1048();
    v77 = sub_2388D1038();
    v79 = v78;
    v123(v51, v48);
    LOBYTE(v176[0]) = 1;
    LOBYTE(v175[0]) = 1;
    LOBYTE(v177) = 1;
    LOBYTE(v174[0]) = 1;
    v80 = *(v126 + 28);
    v75(&v31[v80], 1, 1, v74);
    *v31 = v77;
    *(v31 + 1) = v79;
    *(v31 + 3) = 0;
    *(v31 + 4) = 0;
    *(v31 + 2) = v125;
    v31[40] = -2;
    *(v31 + 41) = v176[0];
    *(v31 + 11) = *(v176 + 3);
    *(v31 + 6) = 0;
    v31[56] = 1;
    *(v31 + 57) = v175[0];
    *(v31 + 15) = *(v175 + 3);
    *(v31 + 8) = 0;
    v31[72] = 1;
    v81 = v174[0];
    *(v31 + 19) = *(v174 + 3);
    *(v31 + 73) = v81;
    *(v31 + 10) = 0;
    v31[88] = 1;
    *(v31 + 89) = *v173;
    *(v31 + 23) = *&v173[3];
    *(v31 + 12) = 0;
    *(v31 + 52) = 1;
    sub_238856608(v159, &v31[v80]);
    v82 = v131;
    sub_238857D9C(v31, v131, type metadata accessor for Transcript.Prompt);
    swift_storeEnumTagMultiPayload();
    v83 = v129;
    sub_238857D9C(v82, v129, type metadata accessor for Transcript.Entry);
    swift_getKeyPath();
    v84 = v132;
    v177 = v132;
    sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
    sub_2388D1158();

    v177 = v84;
    swift_getKeyPath();
    sub_2388D1178();

    swift_beginAccess();
    v85 = *(v84 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v84 + 16) = v85;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v85 = sub_2388B7500(0, v85[2] + 1, 1, v85);
      *(v132 + 16) = v85;
    }

    v88 = v85[2];
    v87 = v85[3];
    if (v88 >= v87 >> 1)
    {
      v85 = sub_2388B7500((v87 > 1), v88 + 1, 1, v85);
      *(v132 + 16) = v85;
    }

    v85[2] = v88 + 1;
    sub_2388595CC(v83, v85 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v88, type metadata accessor for Transcript.Entry);
    v89 = v132;
    *(v132 + 16) = v85;
    swift_endAccess();
    v177 = v89;
    swift_getKeyPath();
    v14 = v89;
    sub_2388D1168();

    sub_2388594C4(v82, type metadata accessor for Transcript.Entry);
    sub_238827E88(v160, &qword_27DF2FF00, &qword_2388D57E0);
    sub_2388594C4(v31, type metadata accessor for Transcript.Prompt);
    v59 = v161;
  }

  v90 = v140;
  v91 = v139;
  v92 = v141;
  (*(v140 + 104))(v139, *MEMORY[0x277D858A0], v141);
  v161 = type metadata accessor for RawResponseStream(0);
  v93 = v168;
  sub_2388D2C78();
  (*(v90 + 8))(v91, v92);
  swift_getKeyPath();
  v177 = v14;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  v160 = *(*(v14 + 16) + 16);
  v94 = sub_2388D2BE8();
  (*(*(v94 - 8) + 56))(v170, 1, 1, v94);
  v95 = v151;
  v96 = v155;
  (*(v151 + 16))(v167, v147, v155);
  sub_238827E14(v59, v163, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E14(v148, v169, &qword_27DF2FFC0, &unk_2388D5A80);
  v97 = v154;
  (*(v154 + 16))(v166, v93, v171);
  v98 = v144;
  (*(v144 + 16))(v162, v164, v165);
  v99 = (*(v95 + 80) + 88) & ~*(v95 + 80);
  v100 = (v146 + *(v137 + 80) + v99) & ~*(v137 + 80);
  v101 = (v138 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = (*(v149 + 80) + v101 + 82) & ~*(v149 + 80);
  v149 = (v102 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
  v148 = (v102 + v150 + 31) & 0xFFFFFFFFFFFFFFF8;
  v150 = (*(v97 + 80) + v148 + 16) & ~*(v97 + 80);
  v159 = (v145 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
  v147 = (*(v98 + 80) + v159 + 8) & ~*(v98 + 80);
  v103 = swift_allocObject();
  *(v103 + 16) = 0;
  *(v103 + 24) = 0;
  *(v103 + 32) = v152;
  *(v103 + 40) = v96;
  *(v103 + 48) = v153;
  *(v103 + 56) = v14;
  *(v103 + 64) = v133 & 1;
  v104 = v134;
  *(v103 + 72) = v135;
  *(v103 + 80) = v104;
  (*(v95 + 32))(v103 + v99, v167, v96);
  sub_238840FB4(v163, v103 + v100, &qword_27DF2FE20, &qword_2388D5740);
  v105 = v103 + v101;
  v106 = v181;
  *(v105 + 32) = v180;
  *(v105 + 48) = v106;
  *(v105 + 64) = v182;
  *(v105 + 80) = v183;
  v107 = v179;
  *v105 = v178;
  *(v105 + 16) = v107;
  sub_238840FB4(v169, v103 + v102, &qword_27DF2FFC0, &unk_2388D5A80);
  v108 = v103 + v149;
  v109 = v143;
  v110 = v142;
  *v108 = v143;
  *(v108 + 8) = v110;
  *(v108 + 16) = v157 & 1;
  v111 = (v103 + v148);
  v112 = v158;
  *v111 = v156;
  v111[1] = v112;
  v113 = v171;
  (*(v97 + 32))(v103 + v150, v166, v171);
  *(v103 + v159) = v160;
  v114 = v165;
  (*(v98 + 32))(v103 + v147, v162, v165);

  v115 = sub_2388535B0(0, 0, v170, &unk_2388D5C78, v103);
  v116 = swift_allocObject();
  *(v116 + 16) = v14;
  *(v116 + 24) = v115;

  v117 = v168;
  sub_2388D2CA8();
  (*(v97 + 8))(v117, v113);
  result = (*(v98 + 8))(v164, v114);
  v119 = v172;
  *v172 = v109;
  v119[1] = v110;
  *(v119 + *(v161 + 24)) = v115;
  return result;
}

uint64_t sub_23884CB84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a4;
  v56 = a6;
  v52 = a5;
  v53 = a2;
  v54 = a3;
  v58 = a9;
  v59 = type metadata accessor for Transcript.Entry(0);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2388D0D88();
  MEMORY[0x28223BE20](v16);
  v17 = a1[1];
  v60[0] = *a1;
  v60[1] = v17;

  GeneratedContent.init(id:text:)(v60, a7, a8, &v61);
  if (v10)
  {

    return (*(v57 + 56))(v58, 1, 1, v59);
  }

  else
  {
    v19 = v61;
    v20 = v62;
    v44 = v61;
    v43 = v62;
    v42 = v63;
    v47 = v64;
    v51 = v65;
    v46 = v66;
    v48 = 0;
    v21 = (a10 + *(type metadata accessor for GenerationSchema(0) + 20));
    v22 = *v21;
    v49 = v21[1];
    v50 = v22;
    sub_2388D0DC8();
    swift_allocObject();

    v23 = v20;
    v24 = v42;
    sub_238814698(v19, v23, v42);

    v25 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    v26 = swift_allocObject();
    v45 = xmmword_2388D3F70;
    *(v26 + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    v67 = v26;
    sub_238859634(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
    sub_2388D2F08();
    sub_2388D0D98();
    if (v47)
    {
      v27 = 0x4000000000000100;
    }

    else
    {
      v27 = 0x4000000000000000;
    }

    v28 = v44;
    v29 = v43;
    v30 = sub_238819C1C(v44, v43, v24, v25);
    v32 = v31;

    sub_238810DC4(v28, v29, v24);
    v33 = v46;

    sub_238810E44(&qword_27DF30098, &unk_2388D5C50);
    v34 = swift_allocObject();
    *(v34 + 16) = v45;
    v35 = v56;
    *(v34 + 32) = v52;
    *(v34 + 40) = v35;
    v36 = v49;
    *(v34 + 48) = v50;
    *(v34 + 56) = v36;
    *(v34 + 64) = v28;
    *(v34 + 72) = v29;
    v37 = v51;
    *(v34 + 80) = v27 & 0xFFFFFFFFFFFFFFF8 | v24 & 7;
    *(v34 + 88) = v37;
    *(v34 + 96) = v33;
    *(v34 + 104) = v30;
    *(v34 + 112) = v32;
    v38 = v55;
    *v15 = v54;
    v15[1] = v38;
    v15[2] = v53;
    v15[3] = v34;
    v39 = v59;
    swift_storeEnumTagMultiPayload();
    v40 = v58;
    sub_2388595CC(v15, v58, type metadata accessor for Transcript.Entry);
    (*(v57 + 56))(v40, 0, 1, v39);
  }
}

uint64_t sub_23884D024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 328) = v22;
  *(v8 + 336) = v23;
  *(v8 + 312) = v20;
  *(v8 + 320) = v21;
  *(v8 + 296) = v18;
  *(v8 + 304) = v19;
  *(v8 + 280) = v16;
  *(v8 + 288) = v17;
  *(v8 + 50) = v15;
  *(v8 + 272) = v14;
  *(v8 + 240) = v12;
  *(v8 + 256) = v13;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a4;
  *(v8 + 216) = a6;
  *(v8 + 49) = a5;
  *(v8 + 200) = a1;
  sub_238810E44(&qword_27DF300B8, &unk_2388D5D20);
  *(v8 + 344) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE30, &unk_2388D5750);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  v9 = sub_2388D2358();
  *(v8 + 368) = v9;
  *(v8 + 376) = *(v9 - 8);
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23884D1B4, 0, 0);
}

uint64_t sub_23884D1B4()
{
  v1 = 0xD000000000000014;
  v2 = *(v0 + 208);
  v3 = v2[10];
  v4 = v2[11];
  sub_238815878(v2 + 7, v3);
  v5 = (*(v4 + 32))(v3, v4);
  if ((v5 & 1) == 0)
  {
    v14 = "_$observationRegistrar";
    v15 = 1;
    goto LABEL_8;
  }

  if (*(v0 + 49) != 1)
  {
    v14 = "Model is unavailable";
    v1 = 0xD000000000000076;
    v15 = 7;
LABEL_8:
    v16 = v14 | 0x8000000000000000;
    sub_2388151C8(v5, v6, v7);
    v17 = swift_allocError();
    *v18 = v1;
    *(v18 + 8) = v16;
    *(v18 + 16) = MEMORY[0x277D84F90];
    *(v18 + 24) = 0;
    *(v18 + 32) = v15;
    swift_willThrow();
    *(v0 + 120) = v17;
    v19 = v17;
    v20 = v17;
    v21 = v17;
    sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 352);
      v23 = *(v0 + 360);
      v24 = *(v0 + 344);
      v25 = *(v0 + 208);
      v67 = *(v0 + 112);
      v68 = *(v0 + 104);
      swift_getKeyPath();
      *(v0 + 184) = v25;
      sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
      sub_2388D1158();

      swift_beginAccess();
      v26 = *(v25 + 16);

      sub_2388D10A8();
      v27 = sub_2388D1138();
      (*(*(v27 - 8) + 56))(v23, 0, 1, v27);
      v28 = v22;
      sub_238827E14(v23, v22, &qword_27DF2FE30, &unk_2388D5750);
      _s15GenerationErrorO7RefusalV16TranscriptRecordCMa(0);
      v29 = swift_allocObject();
      v30 = (v29 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream);
      v31 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
      (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
      *v30 = 0;
      v32 = *(sub_238810E44(&qword_27DF300C0, &qword_2388D5C88) + 28);
      v33 = sub_238810E44(&qword_27DF300C8, &qword_2388D5C90);
      bzero(v30 + v32, *(*(v33 - 8) + 64));
      sub_238840FB4(v24, v30 + v32, &qword_27DF300B8, &unk_2388D5D20);
      sub_238827E88(v23, &qword_27DF2FE30, &unk_2388D5750);
      *(v29 + 16) = v26;
      v34 = sub_238840FB4(v28, v29 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_locale, &qword_27DF2FE30, &unk_2388D5750);
      sub_2388151C8(v34, v35, v36);
      v21 = swift_allocError();
      *v37 = v29;
      *(v37 + 8) = v68;
      *(v37 + 16) = v67;
      *(v37 + 24) = MEMORY[0x277D84F90];
      *(v37 + 32) = 8;
    }

    v38 = *(v0 + 256);
    v39 = type metadata accessor for PromptTemplate(0);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) != 1)
    {
LABEL_19:
      *(v0 + 168) = v21;
      v53 = v21;
      v54 = v21;
      sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
      sub_2388D2CD8();
      *(v0 + 176) = v21;
      if (swift_dynamicCast())
      {
        v55 = *(v0 + 16);
        v56 = *(v0 + 24);
        v57 = *(v0 + 32);
        v58 = *(v0 + 40);
        v59 = *(v0 + 48);
        if (v59 == 2)
        {
          sub_238858588();
          v60 = v55;
          v61 = v56;
          v62 = v57;
          v63 = v58;
          LOBYTE(v59) = 2;
        }

        else
        {
          v60 = *(v0 + 16);
          v61 = *(v0 + 24);
          v62 = *(v0 + 32);
          v63 = *(v0 + 40);
        }

        sub_238857E3C(v60, v61, v62, v63, v59);
      }

      swift_willThrow();

      v64 = *(v0 + 8);

      __asm { BRAA            X1, X16 }
    }

    v40 = *(v0 + 304);
    v41 = *(v0 + 208);
    os_unfair_lock_lock((v41 + 32));

    swift_getKeyPath();
    *(v0 + 128) = v41;
    sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
    sub_2388D1158();

    v11 = swift_beginAccess();
    v42 = __OFSUB__(v40, 1);
    v43 = (v40 - 1);
    if (v42)
    {
      __break(1u);
    }

    else
    {
      v44 = *(v41 + 16);
      v45 = *(v44 + 16);
      if (v45 >= v43)
      {
        if ((v43 & 0x8000000000000000) == 0)
        {
          v46 = *(v0 + 208);

          v47 = sub_238853D50(v43, v45, v44);

          *(v41 + 40) = v47;
          os_unfair_lock_unlock((v41 + 32));
          swift_getKeyPath();
          *(v0 + 136) = v46;
          sub_2388D1158();

          v48 = *(v41 + 16);
          v49 = *(v48 + 16);
          if (v49 >= v43)
          {
            v66 = v17;
            if (v49 == v43)
            {
            }

            else
            {
              v50 = *(type metadata accessor for Transcript.Entry(0) - 8);
              sub_238853E48(v48, v48 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), 0, (2 * v43) | 1);
              v48 = v51;
            }

            v52 = *(v0 + 208);
            swift_getKeyPath();
            *(v0 + 144) = v52;
            sub_2388D1158();

            *(v0 + 152) = v52;
            swift_getKeyPath();
            sub_2388D1178();

            *(v41 + 16) = v48;

            *(v0 + 160) = v52;
            swift_getKeyPath();
            sub_2388D1168();

            v17 = v66;
            goto LABEL_19;
          }

LABEL_30:
          __break(1u);
          return MEMORY[0x2822009F8](v11, v12, v13);
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v8 = v2[10];
  v9 = v2[11];
  sub_238815878(v2 + 7, v8);
  *(v0 + 400) = (*(v9 + 24))(v8, v9);
  *(v0 + 408) = v10;
  sub_2388D2348();
  v11 = sub_23884D9A0;
  v12 = 0;
  v13 = 0;

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23884D9A0()
{
  v29 = v0;
  if (qword_27DF2F9F0 != -1)
  {
    swift_once();
  }

  v1 = sub_2388D2388();
  sub_2388413AC(v1, qword_27DF3F910);

  v2 = sub_2388D2368();
  v3 = sub_2388D2E38();

  if (sub_2388D2E68())
  {
    v4 = *(v0 + 400);
    v5 = *(v0 + 408);
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_2388C0770(v4, v5, &v28);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_2388C0770(v7, v6, &v28);
    v10 = sub_2388D2338();
    _os_signpost_emit_with_name_impl(&dword_23880E000, v2, v3, v10, "PromptCompletion", "SessionID=%{public}s RequestID=%{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE68030](v9, -1, -1);
    MEMORY[0x23EE68030](v8, -1, -1);
  }

  (*(*(v0 + 376) + 16))(*(v0 + 384), *(v0 + 392), *(v0 + 368));
  sub_2388D23C8();
  swift_allocObject();
  *(v0 + 416) = sub_2388D23B8();
  v11 = swift_task_alloc();
  *(v0 + 424) = v11;
  *v11 = v0;
  v11[1] = sub_23884DC58;
  v12 = *(v0 + 328);
  v13 = *(v0 + 312);
  v14 = *(v0 + 296);
  v15 = *(v0 + 280);
  v16 = *(v0 + 50);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);
  v19 = *(v0 + 248);
  v20 = *(v0 + 256);
  v21 = *(v0 + 232);
  v22 = *(v0 + 240);
  v23 = *(v0 + 216);
  v24 = *(v0 + 224);
  v25 = *(v0 + 200);
  v26 = *(v0 + 208);
  v38 = *(v0 + 336);
  v39 = v0 + 192;
  v37 = v12;
  v36 = v13;
  v35 = v14;
  v34 = v15;
  v33 = v16;
  v31 = v18;
  v32 = v17;

  return sub_23884E5E8(v25, v26, v21, v22, v19, v20, v23, v24);
}

uint64_t sub_23884DC58()
{

  if (v0)
  {
    v1 = sub_23884DE58;
  }

  else
  {
    v1 = sub_23884DD68;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_23884DD68()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[46];
  sub_2388CEFF0(v0[52], v0[50], v0[51], v0[27], v0[28]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23884DE58()
{
  v1 = v0[51];
  v2 = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[27];
  v8 = v0[28];
  v0[54] = v0[24];
  sub_2388CEFF0(v2, v3, v1, v7, v8);

  (*(v6 + 8))(v4, v5);

  return MEMORY[0x2822009F8](sub_23884DF14, 0, 0);
}

uint64_t sub_23884DF14()
{
  v1 = *(v0 + 432);
  *(v0 + 120) = v1;
  v2 = v1;
  v3 = v1;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  v4 = v1;
  v52 = v1;
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 352);
    v6 = *(v0 + 360);
    v7 = *(v0 + 344);
    v8 = *(v0 + 208);
    v50 = *(v0 + 104);
    v51 = *(v0 + 112);
    swift_getKeyPath();
    *(v0 + 184) = v8;
    sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
    sub_2388D1158();

    swift_beginAccess();
    v9 = *(v8 + 16);

    sub_2388D10A8();
    v10 = sub_2388D1138();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    v11 = v5;
    sub_238827E14(v6, v5, &qword_27DF2FE30, &unk_2388D5750);
    _s15GenerationErrorO7RefusalV16TranscriptRecordCMa(0);
    v12 = swift_allocObject();
    v13 = (v12 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream);
    v14 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    *v13 = 0;
    v15 = *(sub_238810E44(&qword_27DF300C0, &qword_2388D5C88) + 28);
    v16 = sub_238810E44(&qword_27DF300C8, &qword_2388D5C90);
    bzero(v13 + v15, *(*(v16 - 8) + 64));
    v17 = v13 + v15;
    v1 = v52;
    sub_238840FB4(v7, v17, &qword_27DF300B8, &unk_2388D5D20);
    sub_238827E88(v6, &qword_27DF2FE30, &unk_2388D5750);
    *(v12 + 16) = v9;
    v18 = sub_238840FB4(v11, v12 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_locale, &qword_27DF2FE30, &unk_2388D5750);
    sub_2388151C8(v18, v19, v20);
    v4 = swift_allocError();
    *v21 = v12;
    *(v21 + 8) = v50;
    v22 = MEMORY[0x277D84F90];
    *(v21 + 16) = v51;
    *(v21 + 24) = v22;
    *(v21 + 32) = 8;
  }

  v23 = *(v0 + 256);
  v24 = type metadata accessor for PromptTemplate(0);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
  {
    goto LABEL_12;
  }

  v25 = *(v0 + 304);
  v26 = *(v0 + 208);
  os_unfair_lock_lock((v26 + 32));

  swift_getKeyPath();
  *(v0 + 128) = v26;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  result = swift_beginAccess();
  v28 = (v25 - 1);
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v29 = *(v26 + 16);
  v30 = *(v29 + 16);
  if (v30 < v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = *(v0 + 208);

  v32 = sub_238853D50(v28, v30, v29);

  *(v26 + 40) = v32;
  os_unfair_lock_unlock((v26 + 32));
  swift_getKeyPath();
  *(v0 + 136) = v31;
  sub_2388D1158();

  v33 = *(v26 + 16);
  v34 = *(v33 + 16);
  if (v34 < v28)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (v34 == v28)
  {
  }

  else
  {
    v35 = *(type metadata accessor for Transcript.Entry(0) - 8);
    sub_238853E48(v33, v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), 0, (2 * v28) | 1);
    v33 = v36;
  }

  v37 = *(v0 + 208);
  swift_getKeyPath();
  *(v0 + 144) = v37;
  sub_2388D1158();

  *(v0 + 152) = v37;
  swift_getKeyPath();
  sub_2388D1178();

  *(v26 + 16) = v33;

  *(v0 + 160) = v37;
  swift_getKeyPath();
  sub_2388D1168();

  v1 = v52;
LABEL_12:
  *(v0 + 168) = v4;
  v38 = v4;
  v39 = v4;
  sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  sub_2388D2CD8();
  *(v0 + 176) = v4;
  if (swift_dynamicCast())
  {
    v40 = *(v0 + 16);
    v41 = *(v0 + 24);
    v42 = *(v0 + 32);
    v43 = *(v0 + 40);
    v44 = *(v0 + 48);
    if (v44 == 2)
    {
      sub_238858588();
      v45 = v40;
      v46 = v41;
      v47 = v42;
      v48 = v43;
      LOBYTE(v44) = 2;
    }

    else
    {
      v45 = *(v0 + 16);
      v46 = *(v0 + 24);
      v47 = *(v0 + 32);
      v48 = *(v0 + 40);
    }

    sub_238857E3C(v45, v46, v47, v48, v44);
  }

  swift_willThrow();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_23884E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 536) = v27;
  *(v8 + 528) = v26;
  *(v8 + 520) = v25;
  *(v8 + 504) = v23;
  *(v8 + 512) = v24;
  *(v8 + 488) = v22;
  *(v8 + 472) = v21;
  *(v8 + 840) = v20;
  *(v8 + 456) = v19;
  *(v8 + 440) = a7;
  *(v8 + 448) = a8;
  *(v8 + 424) = a5;
  *(v8 + 432) = a6;
  *(v8 + 408) = a3;
  *(v8 + 416) = a4;
  *(v8 + 392) = a1;
  *(v8 + 400) = a2;
  v9 = sub_2388D3088();
  *(v8 + 544) = v9;
  *(v8 + 552) = *(v9 - 8);
  *(v8 + 560) = swift_task_alloc();
  v10 = sub_2388D2E78();
  *(v8 + 568) = v10;
  *(v8 + 576) = *(v10 - 8);
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = *(v24 - 8);
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  v11 = sub_2388D15A8();
  *(v8 + 624) = v11;
  *(v8 + 632) = *(v11 - 8);
  *(v8 + 640) = swift_task_alloc();
  v12 = sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  *(v8 + 648) = v12;
  v13 = *(v12 - 8);
  *(v8 + 656) = v13;
  *(v8 + 664) = *(v13 + 64);
  *(v8 + 672) = swift_task_alloc();
  v14 = *(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8);
  *(v8 + 680) = v14;
  *(v8 + 688) = *(v14 + 64);
  *(v8 + 696) = swift_task_alloc();
  v15 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  *(v8 + 704) = v15;
  *(v8 + 712) = *(v15 + 64);
  *(v8 + 720) = swift_task_alloc();
  v16 = *(v25 - 8);
  *(v8 + 728) = v16;
  *(v8 + 736) = *(v16 + 64);
  *(v8 + 744) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23884E9CC, 0, 0);
}

uint64_t sub_23884E9CC()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v57 = v3;
  v60 = *(v0 + 712);
  v62 = *(v0 + 736);
  v58 = v1;
  v59 = *(v0 + 704);
  v78 = *(v0 + 696);
  v64 = *(v0 + 680);
  v66 = *(v0 + 688);
  v80 = *(v0 + 672);
  v76 = *(v0 + 656);
  v81 = *(v0 + 648);
  v68 = *(v0 + 512);
  v56 = *(v0 + 488);
  v75 = *(v0 + 480);
  v73 = *(v0 + 840);
  v74 = *(v0 + 472);
  v71 = *(v0 + 456);
  v72 = *(v0 + 464);
  v70 = *(v0 + 448);
  v69 = *(v0 + 440);
  v4 = *(v0 + 424);
  v54 = *(v0 + 416);
  v55 = *(v0 + 432);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  v67 = v6[6];
  v77 = *(v0 + 520);
  v7 = v6[10];
  v8 = v6[11];
  sub_238815878(v6 + 7, v7);
  v9 = (*(v8 + 24))(v7, v8);
  v52 = v10;
  v53 = v9;
  *(v0 + 752) = v10;
  (*(v2 + 16))(v1, v5);
  sub_238827E14(v54, v3, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E14(v55, v78, &qword_27DF2FFC0, &unk_2388D5A80);
  (*(v76 + 16))(v80, v56, v81);
  v11 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v12 = (v62 + *(v59 + 80) + v11) & ~*(v59 + 80);
  v13 = (v60 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (*(v64 + 80) + v14 + 82) & ~*(v64 + 80);
  v15 = (v66 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v63 = (*(v76 + 80) + v65 + 16) & ~*(v76 + 80);
  v16 = swift_allocObject();
  *(v0 + 760) = v16;
  *(v16 + 16) = v68;
  *(v16 + 24) = v77;
  (*(v2 + 32))(v16 + v11, v58, v77);
  sub_238840FB4(v57, v16 + v12, &qword_27DF2FE20, &qword_2388D5740);
  *(v16 + v13) = v6;
  v17 = v16 + v14;
  v18 = *(v4 + 16);
  *v17 = *v4;
  *(v17 + 16) = v18;
  v20 = *(v4 + 48);
  v19 = *(v4 + 64);
  v21 = *(v4 + 32);
  *(v17 + 80) = *(v4 + 80);
  *(v17 + 48) = v20;
  *(v17 + 64) = v19;
  *(v17 + 32) = v21;
  sub_238840FB4(v78, v16 + v61, &qword_27DF2FFC0, &unk_2388D5A80);
  v22 = (v16 + v15);
  *v22 = v69;
  v22[1] = v70;
  v23 = v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v23 = v71;
  *(v23 + 8) = v72;
  *(v23 + 16) = v73;
  v24 = (v16 + v65);
  *v24 = v74;
  v24[1] = v75;
  v79 = v16;
  (*(v76 + 32))(v16 + v63, v80, v81);
  swift_retain_n();

  v26 = sub_238857EA8(v25);

  v27 = sub_2388543CC(v26);

  v28 = sub_238841F00(v27);

  v29 = *(v28 + 16);

  if (v29)
  {
    __break(1u);
  }

  else
  {
    v31 = *(v67 + 16);
    v32 = MEMORY[0x277D84F90];
    if (v31)
    {
      v82 = MEMORY[0x277D84F90];
      sub_2388B8224(0, v31, 0);
      v32 = v82;
      v33 = v67 + 32;
      do
      {
        sub_238815814(v33, v0 + 264);
        v34 = *(v0 + 288);
        v35 = *(v0 + 296);
        sub_238815878((v0 + 264), v34);
        *(v0 + 248) = (*(v35 + 40))(v34, v35);
        *(v0 + 256) = v36;
        v38 = *(v82 + 16);
        v37 = *(v82 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_2388B8224((v37 > 1), v38 + 1, 1);
        }

        *(v82 + 16) = v38 + 1;
        v39 = v82 + 56 * v38;
        v40 = *(v0 + 248);
        v41 = *(v0 + 264);
        v42 = *(v0 + 280);
        *(v39 + 80) = *(v0 + 296);
        *(v39 + 48) = v41;
        *(v39 + 64) = v42;
        *(v39 + 32) = v40;
        v33 += 40;
        --v31;
      }

      while (v31);
    }

    v43 = sub_238833F44(v32);

    if (*(v43 + 16))
    {
      sub_238810E44(&qword_27DF2FB60, &qword_2388D5CB0);
      v44 = sub_2388D3128();
    }

    else
    {
      v44 = MEMORY[0x277D84F98];
    }

    *(v0 + 368) = v44;

    sub_238853FE8(v45, 1, (v0 + 368));
    v46 = *(v0 + 400);

    v47 = *(v0 + 368);
    *(v0 + 768) = v47;
    *(v0 + 176) = v47;
    *(v0 + 184) = sub_238858670;
    *(v0 + 192) = v46;
    *(v0 + 200) = sub_238858678;
    *(v0 + 208) = v46;
    *(v0 + 216) = &unk_2388D5CA8;
    *(v0 + 224) = v79;
    *(v0 + 232) = v53;
    *(v0 + 240) = v52;
    v48 = swift_task_alloc();
    *(v0 + 776) = v48;
    *v48 = v0;
    v48[1] = sub_23884F008;
    v49 = *(v0 + 640);
    v50 = *(v0 + 440);
    v51 = *(v0 + 448);

    return sub_2388AABA4(v49, 0, 0, v50, v51);
  }

  return result;
}

uint64_t sub_23884F008()
{
  *(*v1 + 784) = v0;

  if (v0)
  {
    v2 = sub_23884FB74;
  }

  else
  {
    v2 = sub_23884F11C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23884F11C()
{
  v43 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 512);
  v3 = sub_23885810C();
  v5 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 792) = AssociatedConformanceWitness;
  v42[0] = 0;
  v42[1] = 0;
  (*(AssociatedConformanceWitness + 40))(v42, v3, v5, v2, AssociatedConformanceWitness);
  if (v1)
  {
    v7 = (v0 + 592);
    v8 = *(v0 + 600);
    v9 = *(v0 + 592);
    v10 = *(v0 + 512);

    (*(v8 + 56))(v9, 1, 1, v10);
LABEL_5:
    v17 = *(v0 + 640);
    v18 = *(v0 + 632);
    v19 = *(v0 + 624);
    v20 = (*(*(v0 + 576) + 8))(*v7, *(v0 + 568));
    sub_2388151C8(v20, v21, v22);
    v23 = swift_allocError();
    *v24 = 0xD000000000000019;
    *(v24 + 8) = 0x80000002388DE880;
    *(v24 + 16) = MEMORY[0x277D84F90];
    *(v24 + 24) = 0;
    *(v24 + 32) = 5;
    swift_willThrow();

    (*(v18 + 8))(v17, v19);
    **(v0 + 536) = v23;

    v25 = *(v0 + 8);

    return v25();
  }

  v11 = *(v0 + 616);
  v12 = *(v0 + 600);
  v13 = *(v0 + 592);
  v14 = *(v0 + 584);
  v15 = *(v0 + 528);
  v40 = *(v0 + 520);
  v16 = *(v0 + 512);
  (*(v12 + 56))(v13, 0, 1, v16);
  v39 = *(v12 + 32);
  v39(v11, v13, v16);
  (*(v15 + 32))(v11, v40, v15);
  if ((*(v12 + 48))(v14, 1, v16) == 1)
  {
    v7 = (v0 + 584);
    (*(*(v0 + 600) + 8))(*(v0 + 616), *(v0 + 512));
    goto LABEL_5;
  }

  v27 = *(v0 + 512);
  v28 = *(v0 + 416);
  v29 = *(v0 + 400);
  v39(*(v0 + 608), *(v0 + 584), v27);
  sub_238815814(v29 + 56, v0 + 304);
  v30 = *(v0 + 328);
  v31 = *(v0 + 336);
  sub_238815878((v0 + 304), v30);
  v32 = *(AssociatedConformanceWitness + 32);
  *(v0 + 800) = v32;
  *(v0 + 808) = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0x8578000000000000;
  v33 = v32(v27, AssociatedConformanceWitness);
  v35 = v34;
  *(v0 + 816) = v34;
  v36 = type metadata accessor for GenerationSchema(0);
  v37 = (*(*(v36 - 8) + 48))(v28, 1, v36) != 1;
  v41 = (*(v31 + 56) + **(v31 + 56));
  v38 = swift_task_alloc();
  *(v0 + 824) = v38;
  *v38 = v0;
  v38[1] = sub_23884F640;

  return v41(v33, v35, v37, v30, v31);
}

uint64_t sub_23884F640()
{
  *(*v1 + 832) = v0;

  if (v0)
  {
    v2 = sub_23884FCA0;
  }

  else
  {
    v2 = sub_23884F774;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23884F774()
{
  v1 = v0[62];
  v2 = v0[50];
  sub_2388158BC(v0 + 38);
  swift_getKeyPath();
  v0[47] = v2;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  result = swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v4 + 16);
  if (v5 < v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v0[62] & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(*(type metadata accessor for Transcript.Entry(0) - 8) + 80);

  v7 = sub_2388CB7FC();
  v8 = 0;
  v9 = 0;
  if (v7)
  {
    v8 = sub_2388C7420();
  }

  v25 = v9;
  v33 = v8;
  v32 = v0[100];
  v31 = v0[99];
  v38 = v0[80];
  v36 = v0[79];
  v37 = v0[78];
  v28 = v0[76];
  v34 = v0[75];
  v35 = v0[77];
  v10 = v0[69];
  v11 = v0[64];
  v30 = v0[62];
  v29 = (2 * v5) | 1;
  v26 = v0[68];
  v27 = v4 + ((v6 + 32) & ~v6);
  v12 = v0[49];
  v13 = v0[50];
  v14 = v0[70];
  sub_2388D3068();
  v15 = sub_2388D3078();
  v17 = v16;
  (*(v10 + 8))(v14, v26);
  v18 = v32(v11, v31);
  v0[2] = v15;
  v0[3] = v17;
  v0[4] = v33;
  v0[5] = v25;
  v0[6] = v18;
  v0[7] = v19;
  v0[8] = v4;
  v0[9] = v27;
  v0[10] = v30;
  v0[11] = v29;
  v20 = *(v0 + 4);
  v21 = *(v0 + 5);
  v22 = *(v0 + 3);
  v12[1] = *(v0 + 2);
  v12[2] = v22;
  v12[3] = v20;
  v12[4] = v21;
  *v12 = *(v0 + 1);

  sub_238858EE0((v0 + 2), (v0 + 12));
  os_unfair_lock_lock((v13 + 32));

  *(v13 + 40) = MEMORY[0x277D84F90];
  os_unfair_lock_unlock((v13 + 32));
  v0[48] = 0;
  sub_2388D2CD8();

  sub_238856720((v0 + 2));

  v23 = *(v34 + 8);
  v23(v28, v11);
  v23(v35, v11);
  (*(v36 + 8))(v38, v37);

  v24 = v0[1];

  return v24();
}

uint64_t sub_23884FB74()
{

  **(v0 + 536) = *(v0 + 784);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23884FCA0()
{
  v10 = *(v0 + 640);
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 512);

  v7 = *(v5 + 8);
  v7(v4, v6);
  v7(v3, v6);
  (*(v1 + 8))(v10, v2);
  sub_2388158BC((v0 + 304));
  **(v0 + 536) = *(v0 + 832);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23884FE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Entry(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238857D9C(a1, v7, type metadata accessor for Transcript.Entry);
  swift_getKeyPath();
  v14 = a2;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  v14 = a2;
  swift_getKeyPath();
  sub_2388D1178();

  swift_beginAccess();
  v8 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_2388B7500(0, v8[2] + 1, 1, v8);
    *(a2 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_2388B7500((v10 > 1), v11 + 1, 1, v8);
    *(a2 + 16) = v8;
  }

  v8[2] = v11 + 1;
  sub_2388595CC(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, type metadata accessor for Transcript.Entry);
  *(a2 + 16) = v8;
  swift_endAccess();
  v14 = a2;
  swift_getKeyPath();
  sub_2388D1168();
}

uint64_t sub_2388500A0@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  swift_getKeyPath();
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();
  *a3 = *(a1 + 16);
}

uint64_t sub_238850160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 696) = v33;
  *(v8 + 688) = v32;
  *(v8 + 680) = v31;
  *(v8 + 672) = v30;
  *(v8 + 98) = v28;
  *(v8 + 640) = v27;
  *(v8 + 656) = v29;
  *(v8 + 632) = a8;
  *(v8 + 624) = a7;
  *(v8 + 616) = a6;
  *(v8 + 608) = a5;
  *(v8 + 600) = a4;
  *(v8 + 592) = a3;
  *(v8 + 584) = a2;
  *(v8 + 576) = a1;
  v9 = sub_238810E44(&qword_27DF300E0, &qword_2388D5CD8);
  *(v8 + 704) = v9;
  *(v8 + 712) = *(v9 - 8);
  *(v8 + 720) = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v8 + 728) = AssociatedConformanceWitness;
  v12 = type metadata accessor for StreamSnapshot(0, v31, AssociatedConformanceWitness, v11);
  *(v8 + 736) = v12;
  *(v8 + 744) = *(v12 - 8);
  *(v8 + 752) = swift_task_alloc();
  sub_2388D2E78();
  *(v8 + 760) = swift_task_alloc();
  sub_238810E8C(&qword_27DF2FA68, &qword_2388D4010);
  v13 = sub_2388D2D18();
  *(v8 + 768) = v13;
  *(v8 + 776) = swift_getWitnessTable();
  v14 = sub_2388D3418();
  *(v8 + 784) = v14;
  WitnessTable = swift_getWitnessTable();
  *(v8 + 792) = WitnessTable;
  *(v8 + 408) = v14;
  *(v8 + 416) = v31;
  *(v8 + 424) = WitnessTable;
  *(v8 + 432) = AssociatedConformanceWitness;
  ElementAsCompleteSequence = type metadata accessor for MarkLastElementAsCompleteSequence(255, v8 + 408);
  *(v8 + 800) = ElementAsCompleteSequence;
  v17 = swift_getWitnessTable();
  *(v8 + 808) = v17;
  *(v8 + 440) = ElementAsCompleteSequence;
  *(v8 + 448) = v31;
  *(v8 + 456) = v17;
  *(v8 + 464) = AssociatedConformanceWitness;
  OneInEachChunkSequence = type metadata accessor for KeepLastOneInEachChunkSequence(255, v8 + 440);
  *(v8 + 816) = OneInEachChunkSequence;
  v19 = swift_getWitnessTable();
  *(v8 + 824) = v19;
  *(v8 + 472) = OneInEachChunkSequence;
  *(v8 + 480) = v31;
  *(v8 + 488) = v19;
  *(v8 + 496) = AssociatedConformanceWitness;
  v20 = type metadata accessor for SafetyCheckedStream.AsyncIterator(0, v8 + 472);
  *(v8 + 832) = v20;
  *(v8 + 840) = *(v20 - 8);
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 504) = OneInEachChunkSequence;
  *(v8 + 512) = v31;
  *(v8 + 520) = v19;
  *(v8 + 528) = AssociatedConformanceWitness;
  v21 = type metadata accessor for SafetyCheckedStream(0, v8 + 504);
  *(v8 + 856) = v21;
  *(v8 + 864) = *(v21 - 8);
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 880) = *(OneInEachChunkSequence - 8);
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  *(v8 + 904) = *(ElementAsCompleteSequence - 8);
  *(v8 + 912) = swift_task_alloc();
  v22 = *(v32 - 8);
  *(v8 + 920) = v22;
  *(v8 + 928) = *(v22 + 64);
  *(v8 + 936) = swift_task_alloc();
  *(v8 + 944) = *(v14 - 8);
  *(v8 + 952) = swift_task_alloc();
  *(v8 + 960) = *(v13 - 8);
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v8 + 984) = swift_task_alloc();
  v23 = type metadata accessor for PromptTemplate(0);
  *(v8 + 992) = v23;
  *(v8 + 1000) = *(v23 - 8);
  *(v8 + 1008) = swift_task_alloc();
  v24 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  *(v8 + 1016) = v24;
  *(v8 + 1024) = *(v24 + 64);
  *(v8 + 1032) = swift_task_alloc();
  *(v8 + 1040) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2388507F0, 0, 0);
}

uint64_t sub_2388507F0()
{
  v42 = v0;
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 600);
  (*(v1 + 24))(*(v0 + 592), v2, v1);
  swift_getKeyPath();
  *(v0 + 560) = v3;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1158();

  swift_beginAccess();

  *(v0 + 1048) = sub_2388CF954(v4, v2, v1);
  v7 = *(v0 + 608);

  if (*(v7 + 81) & 1) != 0 || (v8 = *(v0 + 600), v9 = v8[10], v10 = v8[11], sub_238815878(v8 + 7, v9), swift_getKeyPath(), *(v0 + 568) = v8, sub_2388D1158(), , v41 = *(v3 + 16), , LOBYTE(v8) = sub_2388414B4(&v41, v9, v10), , (v8))
  {
    v11 = *(v0 + 1000);
    v12 = *(v0 + 992);
    v13 = *(v0 + 984);
    sub_238827E14(*(v0 + 616), v13, &qword_27DF2FFC0, &unk_2388D5A80);
    if ((*(v11 + 48))(v13, 1, v12) == 1)
    {
      v14 = *(v0 + 608);
      v15 = *(v0 + 600);
      sub_238827E88(*(v0 + 984), &qword_27DF2FFC0, &unk_2388D5A80);
      v16 = v15[11];
      sub_238815878(v15 + 7, v15[10]);
      v17 = *(v14 + 32);
      v18 = *(v14 + 48);
      v19 = *(v14 + 64);
      *(v0 + 96) = *(v14 + 80);
      *(v0 + 64) = v18;
      *(v0 + 80) = v19;
      *(v0 + 48) = v17;
      v20 = *(v14 + 16);
      *(v0 + 16) = *v14;
      *(v0 + 32) = v20;
      v21 = *(v16 + 72);
      *(v0 + 352) = swift_getAssociatedTypeWitness();
      *(v0 + 360) = swift_getAssociatedConformanceWitness();
      sub_238841100((v0 + 328));
      v39 = v21 + *v21;
      v22 = swift_task_alloc();
      *(v0 + 1056) = v22;
      *v22 = v0;
      v22[1] = sub_238850F40;
      v44 = v16;

      __asm { BRAA            X8, X16 }
    }

    v23 = *(v0 + 1008);
    v24 = *(v0 + 984);
    v25 = *(v0 + 608);
    v26 = *(v0 + 600);

    sub_2388595CC(v24, v23, type metadata accessor for PromptTemplate);
    v27 = v26[11];
    sub_238815878(v26 + 7, v26[10]);
    v28 = v25[2];
    v29 = v25[3];
    v30 = v25[4];
    *(v0 + 184) = *(v25 + 40);
    *(v0 + 168) = v30;
    *(v0 + 152) = v29;
    *(v0 + 136) = v28;
    v31 = *v25;
    *(v0 + 120) = v25[1];
    *(v0 + 104) = v31;
    v32 = *(v27 + 80);
    *(v0 + 352) = swift_getAssociatedTypeWitness();
    *(v0 + 360) = swift_getAssociatedConformanceWitness();
    sub_238841100((v0 + 328));
    v40 = v32 + *v32;
    v33 = swift_task_alloc();
    *(v0 + 1072) = v33;
    *v33 = v0;
    v33[1] = sub_238851064;
    v44 = v27;

    __asm { BRAA            X8, X16 }
  }

  v34 = *(v0 + 1040);

  sub_2388151C8(v35, v36, v37);
  swift_allocError();
  *v38 = 0xD000000000000015;
  *(v38 + 8) = 0x80000002388DE8A0;
  *(v38 + 16) = MEMORY[0x277D84F90];
  *(v38 + 24) = 0;
  *(v38 + 32) = 4;
  swift_willThrow();
  sub_238827E88(v34, &qword_27DF2FE20, &qword_2388D5740);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_238850F40()
{
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v2 = sub_238852564;
  }

  else
  {
    v2 = sub_2388515E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238851064()
{
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v2 = sub_2388523D8;
  }

  else
  {
    v2 = sub_238851178;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238851178()
{
  v42 = v0;
  sub_2388594C4(*(v0 + 1008), type metadata accessor for PromptTemplate);
  v1 = *(v0 + 960);
  v30 = *(v0 + 968);
  v31 = *(v0 + 936);
  v2 = *(v0 + 920);
  v34 = *(v0 + 912);
  v32 = *(v0 + 784);
  v27 = *(v0 + 976);
  v28 = *(v0 + 768);
  v3 = *(v0 + 728);
  v4 = *(v0 + 680);
  v37 = *(v0 + 98);
  v25 = *(v0 + 648);
  v5 = *(v0 + 640);
  v29 = *(v0 + 584);
  v39 = *(v0 + 688);
  sub_238826B08((v0 + 328), v0 + 288);
  v6 = *(v0 + 312);
  v26 = *(v0 + 320);
  v7 = sub_238815878((v0 + 288), v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  v41[0] = v5;
  v41[1] = v25;
  *(v0 + 1088) = sub_2388317A0(v27, v9, v41, v4, v4, v6, v3, v26);

  (*(v1 + 16))(v30, v27, v28);
  (*(v2 + 16))(v31, v29, v39);
  v10 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v39;
  (*(v2 + 32))(v11 + v10, v31, v39);
  sub_2388D2C68();

  sub_2388661AC(v32, v34);
  v12 = *(v0 + 888);
  if (v37 == 1)
  {
    sub_238866284(10, *(v0 + 800), *(v0 + 680), *(v0 + 808), *(v0 + 728), v12);
  }

  else
  {
    sub_2388663A4(*(v0 + 800), *(v0 + 680), *(v0 + 808), *(v0 + 728), v12);
  }

  v13 = *(v0 + 1032);
  v14 = *(v0 + 1016);
  v15 = *(v0 + 872);
  v40 = *(v0 + 856);
  v36 = *(v0 + 824);
  v38 = *(v0 + 848);
  v16 = *(v0 + 816);
  v33 = *(v0 + 680);
  v35 = *(v0 + 728);
  v17 = *(v0 + 600);
  v18 = *(v0 + 592);
  (*(*(v0 + 880) + 32))(*(v0 + 896), *(v0 + 888), v16);
  sub_238815814(v17 + 56, v0 + 368);
  sub_238827E14(v18, v13, &qword_27DF2FE20, &qword_2388D5740);
  v19 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v20 = swift_allocObject();
  sub_238826B08((v0 + 368), v20 + 16);
  sub_238840FB4(v13, v20 + v19, &qword_27DF2FE20, &qword_2388D5740);
  sub_2388664BC(&unk_2388D5CF8, v20, v16, v33, v36, v35, v15);

  sub_2388665F4(v40, v38);
  v21 = swift_task_alloc();
  *(v0 + 1096) = v21;
  *v21 = v0;
  v21[1] = sub_238851A3C;
  v22 = *(v0 + 832);
  v23 = *(v0 + 760);

  return sub_238866778(v23, 0, 0, v22);
}

uint64_t sub_2388515E8()
{
  v42 = v0;
  v1 = *(v0 + 960);
  v30 = *(v0 + 968);
  v31 = *(v0 + 936);
  v2 = *(v0 + 920);
  v34 = *(v0 + 912);
  v32 = *(v0 + 784);
  v27 = *(v0 + 976);
  v28 = *(v0 + 768);
  v3 = *(v0 + 728);
  v4 = *(v0 + 680);
  v37 = *(v0 + 98);
  v25 = *(v0 + 648);
  v5 = *(v0 + 640);
  v29 = *(v0 + 584);
  v39 = *(v0 + 688);
  sub_238826B08((v0 + 328), v0 + 288);
  v6 = *(v0 + 312);
  v26 = *(v0 + 320);
  v7 = sub_238815878((v0 + 288), v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  v41[0] = v5;
  v41[1] = v25;
  *(v0 + 1088) = sub_2388317A0(v27, v9, v41, v4, v4, v6, v3, v26);

  (*(v1 + 16))(v30, v27, v28);
  (*(v2 + 16))(v31, v29, v39);
  v10 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v39;
  (*(v2 + 32))(v11 + v10, v31, v39);
  sub_2388D2C68();

  sub_2388661AC(v32, v34);
  v12 = *(v0 + 888);
  if (v37 == 1)
  {
    sub_238866284(10, *(v0 + 800), *(v0 + 680), *(v0 + 808), *(v0 + 728), v12);
  }

  else
  {
    sub_2388663A4(*(v0 + 800), *(v0 + 680), *(v0 + 808), *(v0 + 728), v12);
  }

  v13 = *(v0 + 1032);
  v14 = *(v0 + 1016);
  v15 = *(v0 + 872);
  v40 = *(v0 + 856);
  v36 = *(v0 + 824);
  v38 = *(v0 + 848);
  v16 = *(v0 + 816);
  v33 = *(v0 + 680);
  v35 = *(v0 + 728);
  v17 = *(v0 + 600);
  v18 = *(v0 + 592);
  (*(*(v0 + 880) + 32))(*(v0 + 896), *(v0 + 888), v16);
  sub_238815814(v17 + 56, v0 + 368);
  sub_238827E14(v18, v13, &qword_27DF2FE20, &qword_2388D5740);
  v19 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v20 = swift_allocObject();
  sub_238826B08((v0 + 368), v20 + 16);
  sub_238840FB4(v13, v20 + v19, &qword_27DF2FE20, &qword_2388D5740);
  sub_2388664BC(&unk_2388D5CF8, v20, v16, v33, v36, v35, v15);

  sub_2388665F4(v40, v38);
  v21 = swift_task_alloc();
  *(v0 + 1096) = v21;
  *v21 = v0;
  v21[1] = sub_238851A3C;
  v22 = *(v0 + 832);
  v23 = *(v0 + 760);

  return sub_238866778(v23, 0, 0, v22);
}

uint64_t sub_238851A3C()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_2388526D0;
  }

  else
  {
    v2 = sub_238851B50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238851B50()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 840) + 8))(*(v0 + 848), *(v0 + 832));
    v4 = swift_task_alloc();
    *(v0 + 1112) = v4;
    v5 = sub_2388D15A8();
    *v4 = v0;
    v4[1] = sub_238852098;
    v6 = *(v0 + 1088);
    v7 = *(v0 + 576);

    return MEMORY[0x282200460](v7, v6, v5);
  }

  else
  {
    v54 = *(v0 + 1104);
    v8 = *(v0 + 752);
    v9 = *(v0 + 696);
    v46 = *(v0 + 688);
    v52 = *(v0 + 680);
    v10 = *(v0 + 656);
    v48 = *(v0 + 648);
    v50 = *(v0 + 664);
    v11 = *(v0 + 640);
    v12 = *(v0 + 616);
    v13 = *(v0 + 600);
    (*(v2 + 32))(v8, v1, v3);
    sub_238852E48(v8, v12, v10, v50, v11, v48, v13, v52, v46, v9);
    if (v54)
    {
      v53 = *(v0 + 1040);
      v49 = *(v0 + 960);
      v51 = *(v0 + 976);
      v47 = *(v0 + 952);
      v14 = *(v0 + 944);
      v15 = *(v0 + 904);
      v16 = *(v0 + 880);
      v17 = *(v0 + 864);
      v38 = *(v0 + 856);
      v39 = *(v0 + 872);
      v37 = *(v0 + 848);
      v18 = *(v0 + 840);
      v19 = *(v0 + 832);
      v40 = *(v0 + 816);
      v41 = *(v0 + 800);
      v42 = *(v0 + 896);
      v43 = *(v0 + 784);
      v44 = *(v0 + 912);
      v45 = *(v0 + 768);
      v20 = *(v0 + 752);
      v21 = *(v0 + 744);
      v22 = *(v0 + 736);

      (*(v21 + 8))(v20, v22);
      (*(v18 + 8))(v37, v19);
      (*(v17 + 8))(v39, v38);
      (*(v16 + 8))(v42, v40);
      (*(v15 + 8))(v44, v41);
      (*(v14 + 8))(v47, v43);
      (*(v49 + 8))(v51, v45);
      sub_238827E88(v53, &qword_27DF2FE20, &qword_2388D5740);
      sub_2388158BC((v0 + 288));

      v23 = *(v0 + 8);

      return v23();
    }

    else
    {
      v24 = *(v0 + 752);
      v25 = *(v0 + 744);
      v26 = *(v0 + 736);
      v27 = *(v0 + 720);
      v28 = *(v0 + 712);
      v29 = *(v0 + 704);
      (*(*(v0 + 728) + 48))(*(v24 + *(v26 + 56)), *(v0 + 680));
      v30 = *(v0 + 224);
      v31 = *(v0 + 232);
      v32 = *(v0 + 208);
      *(v0 + 240) = *(v0 + 192);
      *(v0 + 256) = v32;
      *(v0 + 272) = v30;
      *(v0 + 280) = v31;
      sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
      sub_2388D2CC8();
      (*(v28 + 8))(v27, v29);
      (*(v25 + 8))(v24, v26);
      v33 = swift_task_alloc();
      *(v0 + 1096) = v33;
      *v33 = v0;
      v33[1] = sub_238851A3C;
      v34 = *(v0 + 832);
      v35 = *(v0 + 760);

      return sub_238866778(v35, 0, 0, v34);
    }
  }
}

uint64_t sub_238852098()
{

  return MEMORY[0x2822009F8](sub_238852194, 0, 0);
}

uint64_t sub_238852194()
{
  v18 = v0[130];
  v1 = v0[120];
  v16 = v0[119];
  v17 = v0[122];
  v2 = v0[118];
  v14 = v0[114];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[108];
  v8 = v0[107];
  v9 = v0[102];
  v12 = v0[100];
  v13 = v0[98];
  v15 = v0[96];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v4, v9);
  (*(v3 + 8))(v14, v12);
  (*(v2 + 8))(v16, v13);
  (*(v1 + 8))(v17, v15);
  sub_238827E88(v18, &qword_27DF2FE20, &qword_2388D5740);
  sub_2388158BC(v0 + 36);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2388523D8()
{
  v1 = v0[130];
  sub_2388594C4(v0[126], type metadata accessor for PromptTemplate);
  sub_238827E88(v1, &qword_27DF2FE20, &qword_2388D5740);
  sub_238858F3C((v0 + 41));

  v2 = v0[1];

  return v2();
}

uint64_t sub_238852564()
{
  sub_238827E88(*(v0 + 1040), &qword_27DF2FE20, &qword_2388D5740);
  sub_238858F3C(v0 + 328);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2388526D0()
{
  v20 = v0[122];
  v21 = v0[130];
  v1 = v0[120];
  v19 = v0[119];
  v2 = v0[118];
  v3 = v0[113];
  v4 = v0[110];
  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[106];
  v8 = v0[105];
  v9 = v0[104];
  v12 = v0[109];
  v13 = v0[102];
  v14 = v0[100];
  v15 = v0[112];
  v16 = v0[98];
  v17 = v0[114];
  v18 = v0[96];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v15, v13);
  (*(v3 + 8))(v17, v14);
  (*(v2 + 8))(v19, v16);
  (*(v1 + 8))(v20, v18);
  sub_238827E88(v21, &qword_27DF2FE20, &qword_2388D5740);
  sub_2388158BC(v0 + 36);

  v10 = v0[1];

  return v10();
}

uint64_t sub_238852938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_2388D2E78();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238852A04, 0, 0);
}

uint64_t sub_238852A04()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for StreamSnapshot(0, v3, AssociatedConformanceWitness, v6);
  v8 = *(v7 + 48);
  (*(v1 + 40))(v4 + v8, v2, v1);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  v12 = v0[6];
  v17 = v0[5];
  v18 = v0[3];
  v19 = v0[2];
  v20 = v0[8];
  (*(v11 + 32))(v4 + v8, v12, v11);
  v13 = swift_task_alloc();
  v13[2] = v17;
  v13[3] = v12;
  v13[4] = v11;
  v13[5] = v18;
  sub_2388122EC(sub_238859588, v13, MEMORY[0x277D84A98], v7, v14, v19);
  (*(v10 + 8))(v9, v20);

  v15 = v0[1];

  return v15();
}

uint64_t sub_238852BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for StreamSnapshot(0, a3, AssociatedConformanceWitness, v11);
  (*(*(v12 - 8) + 16))(a6, a2, v12);
  return (*(*(a3 - 8) + 24))(a6 + *(v12 + 48), a1, a3);
}

uint64_t sub_238852CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_238852CCC, 0, 0);
}

uint64_t sub_238852CCC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v1[3];
  v4 = v1[4];
  sub_238815878(v1, v3);
  v5 = type metadata accessor for GenerationSchema(0);
  v6 = (*(*(v5 - 8) + 48))(v2, 1, v5) != 1;
  v11 = (*(v4 + 56) + **(v4 + 56));
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_23883ED94;
  v9 = v0[2];
  v8 = v0[3];

  return v11(v9, v8, v6, v3, v4);
}

uint64_t sub_238852E48(uint64_t *a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v70 = a4;
  v73 = a3;
  v17 = sub_238810E44(&qword_27DF300E8, &qword_2388D5D00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v61 - v18;
  v20 = type metadata accessor for Transcript.Entry(0);
  v21 = *(v20 - 8);
  v68 = v20;
  v69 = v21;
  v22 = MEMORY[0x28223BE20](v20);
  v66 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v67 = &v61 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - v26;
  v28 = type metadata accessor for PromptTemplate(0);
  result = (*(*(v28 - 8) + 48))(a2, 1, v28);
  if (result == 1)
  {
    v61 = a7;
    v62 = v27;
    v65 = v10;
    v72[0] = a5;
    v72[1] = a6;
    v30 = *a1;
    v63 = a1[1];
    v64 = v30;
    v31 = a1[2];
    v71 = a1[3];
    v32 = sub_2388D32F8();
    v34 = v33;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for StreamSnapshot(0, a8, AssociatedConformanceWitness, v36);
    v37 = (*(AssociatedConformanceWitness + 32))(a8, AssociatedConformanceWitness);
    v38 = v63;
    v39 = v65;
    v73(v72, v64, v63, v31, v32, v34, v37, v40);
    if (v39)
    {
    }

    v41 = v69;
    if ((*(v69 + 48))(v19, 1, v68) == 1)
    {
      return sub_238827E88(v19, &qword_27DF300E8, &qword_2388D5D00);
    }

    sub_2388595CC(v19, v62, type metadata accessor for Transcript.Entry);
    swift_getKeyPath();
    v42 = v61;
    v72[0] = v61;
    v73 = sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
    sub_2388D1158();

    swift_beginAccess();
    v43 = *(v42 + 16);
    v44 = *(v43 + 16);
    if (v44)
    {
      v70 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v68 = *(v41 + 72);
      v45 = v67;
      sub_238857D9C(v43 + v70 + v68 * (v44 - 1), v67, type metadata accessor for Transcript.Entry);
      v46 = Transcript.Entry.id.getter();
      v48 = v47;
      sub_2388594C4(v45, type metadata accessor for Transcript.Entry);
      if (v46 == v38 && v48 == v31)
      {

        goto LABEL_11;
      }

      v49 = sub_2388D3368();

      if (v49)
      {
LABEL_11:
        swift_getKeyPath();
        v71 = v42;
        sub_2388D1158();

        v50 = v42;
        v51 = *(*(v42 + 16) + 16);
        swift_getKeyPath();
        v71 = v50;
        sub_2388D1158();

        v71 = v50;
        swift_getKeyPath();
        sub_2388D1178();

        swift_beginAccess();
        v52 = *(v50 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v50 + 16) = v52;
        if (result)
        {
          if (v51)
          {
            goto LABEL_13;
          }
        }

        else
        {
          result = sub_238895348(v52);
          v52 = result;
          *(v61 + 16) = result;
          if (v51)
          {
LABEL_13:
            if (v51 <= v52[2])
            {
              v53 = v62;
              sub_238859524(v62, v52 + v70 + (v51 - 1) * v68);
              v54 = v61;
              *(v61 + 16) = v52;
              swift_endAccess();
              v71 = v54;
              swift_getKeyPath();
              sub_2388D1168();

              v55 = v53;
              return sub_2388594C4(v55, type metadata accessor for Transcript.Entry);
            }

LABEL_24:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    v56 = v66;
    sub_238857D9C(v62, v66, type metadata accessor for Transcript.Entry);
    swift_getKeyPath();
    v71 = v42;
    sub_2388D1158();

    v71 = v42;
    swift_getKeyPath();
    sub_2388D1178();

    swift_beginAccess();
    v57 = *(v42 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 16) = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_2388B7500(0, v57[2] + 1, 1, v57);
      *(v42 + 16) = v57;
    }

    v60 = v57[2];
    v59 = v57[3];
    if (v60 >= v59 >> 1)
    {
      v57 = sub_2388B7500((v59 > 1), v60 + 1, 1, v57);
      *(v42 + 16) = v57;
    }

    v57[2] = v60 + 1;
    sub_2388595CC(v56, v57 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v60, type metadata accessor for Transcript.Entry);
    *(v42 + 16) = v57;
    swift_endAccess();
    v71 = v42;
    swift_getKeyPath();
    sub_2388D1168();

    v55 = v62;
    return sub_2388594C4(v55, type metadata accessor for Transcript.Entry);
  }

  return result;
}

uint64_t sub_2388535B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_238810E44(&qword_27DF2FD28, &qword_2388D8CE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_238827E14(a3, v22 - v9, &qword_27DF2FD28, &qword_2388D8CE0);
  v11 = sub_2388D2BE8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_238827E88(v10, &qword_27DF2FD28, &qword_2388D8CE0);
  }

  else
  {
    sub_2388D2BD8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2388D2B38();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2388D28C8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_238827E88(a3, &qword_27DF2FD28, &qword_2388D8CE0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238827E88(a3, &qword_27DF2FD28, &qword_2388D8CE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_238853854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_238810E44(&qword_27DF300B0, &qword_2388D5C80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  swift_getKeyPath();
  v11[1] = a2;
  sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
  sub_2388D1148();

  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  LODWORD(a2) = *MEMORY[0x277D85870];
  result = (*(v6 + 8))(v8, v5);
  if (v9 == a2)
  {
    sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    return sub_2388D2C08();
  }

  return result;
}

char *LanguageModelSession.deinit()
{

  sub_238827E88((v0 + 40), &qword_27DF2FFE0, &qword_2388D5AE0);

  sub_2388158BC(v0 + 7);
  sub_2388158BC(v0 + 12);
  sub_2388158BC(v0 + 17);
  v1 = OBJC_IVAR____TtC16FoundationModels20LanguageModelSession___observationRegistrar;
  v2 = sub_2388D1198();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return v0;
}

uint64_t LanguageModelSession.__deallocating_deinit()
{

  sub_238827E88((v0 + 40), &qword_27DF2FFE0, &qword_2388D5AE0);

  sub_2388158BC(v0 + 7);
  sub_2388158BC(v0 + 12);
  sub_2388158BC(v0 + 17);
  v1 = OBJC_IVAR____TtC16FoundationModels20LanguageModelSession___observationRegistrar;
  v2 = sub_2388D1198();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

char *sub_238853BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = sub_23882003C(*(a3 + 16), 0);
  v8 = sub_23882539C(&v10, v7 + 32, v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v7;
}

void *sub_238853C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2388200D4(*(a1 + 16), 0);
  v4 = *(type metadata accessor for Transcript.Entry(0) - 8);
  v5 = sub_2388254BC(&v7, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);

  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

char *sub_238853D50(char *result, char *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = a2 - result;
  if (a2 == result)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = sub_2388200D4(a2 - result, 0);
  v10 = *(type metadata accessor for Transcript.Entry(0) - 8);
  v11 = sub_238855930(&v12, v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v7, v6, a2, a3);

  if (v11 != v7)
  {
    goto LABEL_11;
  }

  return v9;
}

void sub_238853E48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_238810E44(&qword_27DF2FB70, &unk_2388D5C30);
      v7 = *(type metadata accessor for Transcript.Entry(0) - 8);
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
        type metadata accessor for Transcript.Entry(0);
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

void sub_238853FE8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_238827E14(a1 + 32, &v44, &qword_27DF2FF88, &unk_2388D5CC0);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_238826B08(v46, v41);
  v9 = *a3;
  v10 = sub_238820AA8(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_238822C64(v15, a2 & 1);
    v10 = sub_238820AA8(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_2388D3438();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_2388215D0();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_2388158BC(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_238826B08(v41, v21[7] + 40 * v10);
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 88;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_238827E14(v25, &v44, &qword_27DF2FF88, &unk_2388D5CC0);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_238826B08(v46, v41);
      v29 = *a3;
      v30 = sub_238820AA8(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_238822C64(v34, 1);
        v30 = sub_238820AA8(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_238826B08(v41, v37[7] + 40 * v30);
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 56;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0xD00000000000001BLL, 0x80000002388DE460);
  sub_2388D30A8();
  MEMORY[0x23EE66C20](39, 0xE100000000000000);
  sub_2388D30B8();
  __break(1u);
}

unint64_t *sub_2388543CC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_23885452C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_23885461C(v8, v4, v2);
  result = MEMORY[0x23EE68030](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_23885452C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_238854694(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_238854694(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_23885461C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_23885452C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_238854694(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_238810E44(&qword_27DF2FB68, &unk_2388D4970);
  result = sub_2388D3128();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_2388D34A8();

    sub_2388D2938();
    result = sub_2388D34E8();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2388548D8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v65 = a5;
  v64 = a4;
  v69 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v69);
  v70 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerationSchema(0);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for GenerativeModelInferenceSession(0);
  v84 = sub_238859634(&qword_27DF30118, type metadata accessor for GenerativeModelInferenceSession, &unk_2388D5658);
  *&v82 = a1;
  *(a6 + 24) = 0;
  *(a6 + 28) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = MEMORY[0x277D84F90];
  sub_2388D1188();
  v81 = MEMORY[0x277D84FA0];
  v14 = *(a2 + 16);
  if (!v14)
  {

    v15 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v62 = a3;
  v63 = a6;
  v15 = MEMORY[0x277D84F90];
  v61[1] = a2;
  v16 = a2 + 32;
  v17 = 0x27DF2F000;
  *&v13 = 136315394;
  v66 = v13;
  *&v13 = 136446210;
  v67 = v13;
  do
  {
    sub_238815814(v16, v78);
    v26 = v79;
    v27 = v80;
    sub_238815878(v78, v79);
    v28 = (*(v27 + 40))(v26, v27);
    LOBYTE(v26) = sub_2388BA540(&v75, v28, v29);

    if (v26)
    {
      sub_238815814(v78, &v75);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2388B74DC(0, v15[2] + 1, 1, v15);
      }

      v31 = v15[2];
      v30 = v15[3];
      if (v31 >= v30 >> 1)
      {
        v15 = sub_2388B74DC((v30 > 1), v31 + 1, 1, v15);
      }

      v15[2] = v31 + 1;
      sub_238826B08(&v75, &v15[5 * v31 + 4]);
      v32 = v79;
      v33 = v80;
      sub_238815878(v78, v79);
      v34 = v68;
      (*(v33 + 56))(v32, v33);
      sub_238857D9C(v34, v70, type metadata accessor for GenerationSchema.Kind);
      sub_2388594C4(v34, type metadata accessor for GenerationSchema);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v41 = type metadata accessor for GenerationSchema.Kind;
          v42 = v70;
        }

        else
        {
          if (EnumCaseMultiPayload != 4)
          {
            goto LABEL_28;
          }

          v39 = v70;

          v40 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
          v41 = type metadata accessor for StringGuides;
          v42 = v39 + *(v40 + 64);
        }

        sub_2388594C4(v42, v41);
      }

      else if ((EnumCaseMultiPayload - 5) >= 2 && EnumCaseMultiPayload != 8)
      {
LABEL_28:
        sub_2388594C4(v70, type metadata accessor for GenerationSchema.Kind);
        goto LABEL_4;
      }

      if (*(v17 + 2528) != -1)
      {
        swift_once();
      }

      v43 = sub_2388D2408();
      sub_2388413AC(v43, qword_27DF3F8E0);
      sub_238815814(v78, &v75);
      sub_238815814(v78, v72);
      v44 = sub_2388D23E8();
      v45 = sub_2388D2E18();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v71 = v47;
        *v46 = v66;
        v48 = v76;
        v49 = v77;
        sub_238815878(&v75, v76);
        v50 = (*(v49 + 40))(v48, v49);
        v52 = v51;
        sub_2388158BC(&v75);
        v53 = sub_2388C0770(v50, v52, &v71);

        *(v46 + 4) = v53;
        *(v46 + 12) = 2080;
        v54 = v73;
        v55 = v74;
        sub_238815878(v72, v73);
        v56 = sub_238855A9C(v54, v55);
        v58 = v57;
        sub_2388158BC(v72);
        v59 = sub_2388C0770(v56, v58, &v71);
        v17 = 0x27DF2F000;

        *(v46 + 14) = v59;
        _os_log_impl(&dword_23880E000, v44, v45, "The arguments to 'Tool' should be a struct or enum. '%s' takes 'arguments' of primitive type '%s', which may not be properly called by the model.", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EE68030](v47, -1, -1);
        MEMORY[0x23EE68030](v46, -1, -1);
      }

      else
      {

        sub_2388158BC(&v75);
        sub_2388158BC(v72);
      }
    }

    else
    {
      if (*(v17 + 2528) != -1)
      {
        swift_once();
      }

      v36 = sub_2388D2408();
      sub_2388413AC(v36, qword_27DF3F8E0);
      sub_238815814(v78, &v75);
      v37 = sub_2388D23E8();
      v38 = sub_2388D2E18();
      if (os_log_type_enabled(v37, v38))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v72[0] = v19;
        *v18 = v67;
        v20 = v76;
        v21 = v77;
        sub_238815878(&v75, v76);
        v22 = (*(v21 + 40))(v20, v21);
        v24 = v23;
        sub_2388158BC(&v75);
        v25 = sub_2388C0770(v22, v24, v72);
        v17 = 0x27DF2F000uLL;

        *(v18 + 4) = v25;
        _os_log_impl(&dword_23880E000, v37, v38, "Duplicate tool name (%{public}s). Only the first will be used.", v18, 0xCu);
        sub_2388158BC(v19);
        MEMORY[0x23EE68030](v19, -1, -1);
        MEMORY[0x23EE68030](v18, -1, -1);
      }

      else
      {

        sub_2388158BC(&v75);
      }
    }

LABEL_4:
    sub_2388158BC(v78);
    v16 += 40;
    --v14;
  }

  while (v14);

  a6 = v63;
  a3 = v62;
LABEL_31:

  sub_238826B08(v64, a6 + 96);
  sub_238826B08(v65, a6 + 136);
  *(a6 + 16) = a3;
  *(a6 + 48) = v15;
  sub_238826B08(&v82, a6 + 56);
  return a6;
}

uint64_t sub_2388550CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v76);
  v77 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerationSchema(0);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_238810E44(&qword_27DF300F0, &qword_2388D5D08);
  v97 = sub_238815180(&qword_27DF300F8, &qword_27DF300F0, &qword_2388D5D08, &unk_2388DDC50);
  v93 = sub_238810E44(&qword_27DF30100, &unk_2388D5D10);
  v94 = sub_238815180(&qword_27DF30108, &qword_27DF30100, &unk_2388D5D10, &unk_2388DDC50);
  v90 = type metadata accessor for ServerModelInferenceSession(0);
  v91 = sub_238859634(&qword_27DF30110, type metadata accessor for ServerModelInferenceSession, &unk_2388D6810);
  v11 = sub_238841100(&v89);
  sub_2388595CC(a1, v11, type metadata accessor for ServerModelInferenceSession);
  *(a4 + 24) = 0;
  *(a4 + 28) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = MEMORY[0x277D84F90];
  sub_2388D1188();
  v88 = MEMORY[0x277D84FA0];
  v13 = *(a2 + 16);
  if (!v13)
  {

    v15 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v70 = a3;
  v71 = a4;
  v69[1] = a2;
  v14 = a2 + 32;
  v15 = MEMORY[0x277D84F90];
  v16 = 0x27DF2F000;
  *&v12 = 136315394;
  v72 = v12;
  *&v12 = 136446210;
  v73 = v12;
  do
  {
    sub_238815814(v14, v85);
    v30 = v86;
    v31 = v87;
    sub_238815878(v85, v86);
    v32 = (*(v31 + 40))(v30, v31);
    v34 = sub_2388BA540(&v82, v32, v33);

    if (v34)
    {
      sub_238815814(v85, &v82);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2388B74DC(0, v15[2] + 1, 1, v15);
      }

      v36 = v15[2];
      v35 = v15[3];
      if (v36 >= v35 >> 1)
      {
        v15 = sub_2388B74DC((v35 > 1), v36 + 1, 1, v15);
      }

      v15[2] = v36 + 1;
      sub_238826B08(&v82, &v15[5 * v36 + 4]);
      v37 = v86;
      v38 = v87;
      sub_238815878(v85, v86);
      v39 = v75;
      (*(v38 + 56))(v37, v38);
      sub_238857D9C(v39, v77, type metadata accessor for GenerationSchema.Kind);
      sub_2388594C4(v39, type metadata accessor for GenerationSchema);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v46 = type metadata accessor for GenerationSchema.Kind;
          v47 = v77;
        }

        else
        {
          if (EnumCaseMultiPayload != 4)
          {
            goto LABEL_28;
          }

          v44 = v77;

          v45 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
          v46 = type metadata accessor for StringGuides;
          v47 = v44 + *(v45 + 64);
        }

        sub_2388594C4(v47, v46);
      }

      else if ((EnumCaseMultiPayload - 5) >= 2 && EnumCaseMultiPayload != 8)
      {
LABEL_28:
        sub_2388594C4(v77, type metadata accessor for GenerationSchema.Kind);
        goto LABEL_4;
      }

      if (*(v16 + 2528) != -1)
      {
        swift_once();
      }

      v48 = sub_2388D2408();
      sub_2388413AC(v48, qword_27DF3F8E0);
      sub_238815814(v85, &v82);
      sub_238815814(v85, v79);
      v49 = sub_2388D23E8();
      v50 = sub_2388D2E18();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v78 = v74;
        *v51 = v72;
        v52 = v15;
        v53 = v83;
        v54 = v84;
        sub_238815878(&v82, v83);
        v55 = *(v54 + 40);
        v56 = v54;
        v15 = v52;
        v16 = 0x27DF2F000;
        v57 = v55(v53, v56);
        v59 = v58;
        sub_2388158BC(&v82);
        v60 = sub_2388C0770(v57, v59, &v78);

        *(v51 + 4) = v60;
        *(v51 + 12) = 2080;
        v61 = v80;
        v62 = v81;
        sub_238815878(v79, v80);
        v63 = sub_238855A9C(v61, v62);
        v65 = v64;
        sub_2388158BC(v79);
        v66 = sub_2388C0770(v63, v65, &v78);

        *(v51 + 14) = v66;
        _os_log_impl(&dword_23880E000, v49, v50, "The arguments to 'Tool' should be a struct or enum. '%s' takes 'arguments' of primitive type '%s', which may not be properly called by the model.", v51, 0x16u);
        v67 = v74;
        swift_arrayDestroy();
        MEMORY[0x23EE68030](v67, -1, -1);
        MEMORY[0x23EE68030](v51, -1, -1);
      }

      else
      {

        sub_2388158BC(&v82);
        sub_2388158BC(v79);
      }
    }

    else
    {
      if (*(v16 + 2528) != -1)
      {
        swift_once();
      }

      v41 = sub_2388D2408();
      sub_2388413AC(v41, qword_27DF3F8E0);
      sub_238815814(v85, &v82);
      v42 = sub_2388D23E8();
      v43 = sub_2388D2E18();
      if (os_log_type_enabled(v42, v43))
      {
        v17 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v79[0] = v74;
        *v17 = v73;
        v18 = v14;
        v19 = v13;
        v20 = v15;
        v21 = v83;
        v22 = v84;
        sub_238815878(&v82, v83);
        v23 = *(v22 + 40);
        v24 = v22;
        v15 = v20;
        v13 = v19;
        v14 = v18;
        v16 = 0x27DF2F000uLL;
        v25 = v23(v21, v24);
        v27 = v26;
        sub_2388158BC(&v82);
        v28 = sub_2388C0770(v25, v27, v79);

        *(v17 + 4) = v28;
        _os_log_impl(&dword_23880E000, v42, v43, "Duplicate tool name (%{public}s). Only the first will be used.", v17, 0xCu);
        v29 = v74;
        sub_2388158BC(v74);
        MEMORY[0x23EE68030](v29, -1, -1);
        MEMORY[0x23EE68030](v17, -1, -1);
      }

      else
      {

        sub_2388158BC(&v82);
      }
    }

LABEL_4:
    sub_2388158BC(v85);
    v14 += 40;
    --v13;
  }

  while (v13);

  a3 = v70;
  a4 = v71;
LABEL_31:

  sub_238826B08(&v95, a4 + 96);
  sub_238826B08(&v92, a4 + 136);
  *(a4 + 16) = a3;
  *(a4 + 48) = v15;
  sub_238826B08(&v89, a4 + 56);
  return a4;
}

void *sub_238855930(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    v11 = a4;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a5 <= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = a5;
    }

    if (a5 != a4)
    {
      v12 = a2;
      v17 = a5 - a4;
      v18 = a3;
      v13 = a3 - 1;
      v14 = a4;
      while (v10 != v14)
      {
        if (a4 < 0)
        {
          goto LABEL_21;
        }

        if (v14 >= *(a6 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(type metadata accessor for Transcript.Entry(0) - 8);
        v16 = *(v15 + 72);
        v11 = v14 + 1;
        result = sub_238857D9C(a6 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * v14, v12, type metadata accessor for Transcript.Entry);
        if (!v13)
        {
          a3 = v18;
          goto LABEL_12;
        }

        v12 += v16;
        --v13;
        ++v14;
        if (a5 == v11)
        {
          v11 = a5;
          a3 = v17;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = a5;
    a3 = a5 - a4;
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v11;
    return a3;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_238855A9C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  return sub_2388D28B8();
}

uint64_t sub_238855AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC16FoundationModels19SystemLanguageModel_useCase);
  v16 = sub_238810E44(&qword_27DF300F0, &qword_2388D5D08);
  v17 = sub_238815180(&qword_27DF300F8, &qword_27DF300F0, &qword_2388D5D08, &unk_2388DDC50);
  sub_238826B08(&v15, v18);
  if (v7)
  {
    v8 = &off_281992D00;
    v9 = &type metadata for ContentTaggingAugmentator;
  }

  else
  {
    v9 = sub_238810E44(&qword_27DF30100, &unk_2388D5D10);
    v8 = sub_238815180(&qword_27DF30108, &qword_27DF30100, &unk_2388D5D10, &unk_2388DDC50);
  }

  v13 = v9;
  v14 = v8;
  sub_238826B08(&v12, &v15);
  type metadata accessor for LanguageModelSession(0);
  v10 = swift_allocObject();
  return sub_2388548D8(a2, a3, a4, v18, &v15, v10);
}

uint64_t _s16FoundationModels20LanguageModelSessionC5model5tools12instructionsAcA06SystemcD0C_SayAA4Tool_pGAA12InstructionsVSgtcfC_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for Transcript.ToolDefinition(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2388D1058();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Transcript.Entry(0);
  v55 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  type metadata accessor for GenerativeModelInferenceSession(0);
  swift_allocObject();

  v15 = sub_23883435C(v14);

  v16 = sub_238855AE8(a1, v15, a2, MEMORY[0x277D84F90]);

  v17 = *(a2 + 16);

  if (!(v17 | v13))
  {

    goto LABEL_28;
  }

  v48 = v15;
  v49 = a1;
  if (v13)
  {
    *&v57 = v13;
    v46 = sub_238856398(&v57, sub_2388596CC, sub_2388596D0);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  v47 = v16;
  v16 = *(v16 + 48);
  v18 = *(v16 + 16);

  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = 0;
    v21 = v16 + 32;
    while (v20 < *(v16 + 16))
    {
      sub_238815814(v21, &v57);
      v23 = v58;
      v22 = v59;
      v15 = sub_238815878(&v57, v58);
      if ((*(v22 + 64))(v23, v22))
      {
        sub_238826B08(&v57, v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60[0] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = v60;
          sub_2388B8184(0, *(v19 + 16) + 1, 1);
          v19 = v60[0];
        }

        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        if (v26 >= v25 >> 1)
        {
          v15 = v60;
          sub_2388B8184((v25 > 1), v26 + 1, 1);
          v19 = v60[0];
        }

        *(v19 + 16) = v26 + 1;
        sub_238826B08(v56, v19 + 40 * v26 + 32);
      }

      else
      {
        sub_2388158BC(&v57);
      }

      ++v20;
      v21 += 40;
      if (v18 == v20)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v27 = *(v19 + 16);
    if (v27)
    {
      *&v56[0] = MEMORY[0x277D84F90];
      sub_2388B8140(0, v27, 0);
      v28 = *&v56[0];
      v29 = v19 + 32;
      do
      {
        sub_238815814(v29, &v57);
        v30 = v58;
        v31 = v59;
        v32 = sub_238815878(&v57, v58);
        MEMORY[0x28223BE20](v32);
        v34 = &v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v34);
        Transcript.ToolDefinition.init<A>(tool:)(v34, v30, v31, v9);
        sub_2388158BC(&v57);
        *&v56[0] = v28;
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_2388B8140((v36 > 1), v37 + 1, 1);
          v28 = *&v56[0];
        }

        *(v28 + 16) = v37 + 1;
        sub_2388595CC(v9, v28 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v37, type metadata accessor for Transcript.ToolDefinition);
        v29 += 40;
        --v27;
      }

      while (v27);
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    v38 = v50;
    sub_2388D1048();
    v39 = sub_2388D1038();
    v41 = v40;
    (*(v52 + 8))(v38, v53);
    v7 = v54;
    *v54 = v39;
    *(v7 + 8) = v41;
    *(v7 + 16) = v46;
    *(v7 + 24) = v28;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v16 = v47;
    *&v57 = v47;
    sub_238859634(&qword_27DF2FFB0, type metadata accessor for LanguageModelSession, &protocol conformance descriptor for LanguageModelSession);
    sub_2388D1158();

    *&v57 = v16;
    swift_getKeyPath();
    sub_2388D1178();

    swift_beginAccess();
    v15 = *(v16 + 16);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + 16) = v15;
    if (v42)
    {
      goto LABEL_25;
    }
  }

  v15 = sub_2388B7500(0, v15[2] + 1, 1, v15);
  *(v16 + 16) = v15;
LABEL_25:
  v44 = v15[2];
  v43 = v15[3];
  if (v44 >= v43 >> 1)
  {
    v15 = sub_2388B7500((v43 > 1), v44 + 1, 1, v15);
    *(v16 + 16) = v15;
  }

  v15[2] = v44 + 1;
  sub_2388595CC(v7, v15 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v44, type metadata accessor for Transcript.Entry);
  *(v16 + 16) = v15;
  swift_endAccess();
  *&v57 = v16;
  swift_getKeyPath();
  sub_2388D1168();

LABEL_28:

  return v16;
}

uint64_t sub_238856398(uint64_t *a1, void (*a2)(void, void, uint64_t), void (*a3)(void *, uint64_t, uint64_t))
{
  v29 = a2;
  v30 = a3;
  v28 = sub_2388D1058();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(*a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v32 = MEMORY[0x277D84F90];
    sub_2388B81C4(0, v7, 0);
    v8 = v32;
    v26 = (v4 + 8);
    v9 = (v6 + 48);
    do
    {
      v11 = *(v9 - 2);
      v10 = *(v9 - 1);
      if (*v9)
      {
        v29(*(v9 - 2), *(v9 - 1), 1);
        v12 = v11;
        v13 = v27;
        sub_2388D1048();
        v31 = sub_2388D1038();
        v15 = v14;
        v30(v11, v10, 1);
        (*v26)(v13, v28);
        v16 = v25 & 0x107 | 0x8000000000000000;
        v25 = v16;
      }

      else
      {
        v29(*(v9 - 2), *(v9 - 1), 0);

        v17 = v27;
        sub_2388D1048();
        v31 = sub_2388D1038();
        v15 = v18;
        v30(v11, v10, 0);
        (*v26)(v17, v28);
        v16 = v24 & 0x107;
        v24 = v16;
      }

      v32 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2388B81C4((v19 > 1), v20 + 1, 1);
        v8 = v32;
      }

      *(v8 + 16) = v20 + 1;
      v21 = (v8 + 88 * v20);
      v21[4] = v31;
      v21[5] = v15;
      v21[6] = v11;
      v21[7] = v10;
      v21[10] = v16;
      v9 += 24;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_238856608(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_238856678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF2FFB8;
  if (!qword_27DF2FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FFB8);
  }

  return result;
}

uint64_t sub_2388566CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_238856774(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else
  {
    if (a4)
    {
      return;
    }
  }
}

uint64_t sub_238856858()
{
  v1 = *(type metadata accessor for GenerationSchema(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for GenerationSchema.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
LABEL_4:

        break;
      case 4:

        v9 = v5 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64);

        v10 = *(type metadata accessor for StringGuides(0) + 20);
        v11 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
        v12 = *(v11 - 8);
        if (!(*(v12 + 48))(v9 + v10, 1, v11))
        {
          (*(v12 + 8))(v9 + v10, v11);
        }

        break;
      case 7:
        sub_238856774(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));

        v7 = *(type metadata accessor for DynamicGenerationSchema(0) + 28);
        v8 = sub_2388D2328();
        (*(*(v8 - 8) + 8))(v5 + v7, v8);

        break;
    }
  }

  else
  {
    if (EnumCaseMultiPayload >= 2)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_13;
      }

      goto LABEL_4;
    }
  }

LABEL_13:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238856B9C()
{
  v1 = (type metadata accessor for RawResponseStream(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_238856CB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RawResponseStream(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_2388314A4(a1, (v2 + v6), *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_238856D58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238856D90()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238856DD8(uint64_t a1)
{
  result = sub_2388D1198();
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

uint64_t sub_238856EB4()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(&qword_27DF2FFF8, &qword_2388D5BD0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_238856EE4()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(qword_27DF30000, qword_2388D5BD8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_238856F1C(uint64_t a1)
{
  sub_23885733C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_23885738C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_238856FDC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 40) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_23885713C(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 40) & ~v8) + 7) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_23885733C()
{
  if (!qword_27DF30088)
  {
    v0 = sub_2388D2E78();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF30088);
    }
  }
}

void sub_23885738C(uint64_t a1)
{
  if (!qword_27DF30090)
  {
    type metadata accessor for Transcript.Entry(255);
    v1 = sub_2388D2EF8();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF30090);
    }
  }
}

uint64_t sub_2388573E4()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v44 = *(v2 + 80);
  v3 = (v44 + 88) & ~v44;
  v4 = *(v2 + 64);
  v5 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v43 = *(v5 + 80);
  v6 = (v3 + v4 + v43) & ~v43;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8);
  v39 = *(v8 + 80);
  v9 = (v7 + v39 + 82) & ~v39;
  v38 = *(v8 + 64);
  v42 = sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  v10 = *(v42 - 8);
  v11 = *(v10 + 80);
  v37 = *(v10 + 64);
  v41 = sub_2388D3088();
  v12 = *(v41 - 8);
  v13 = *(v12 + 80);
  v40 = *(v12 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v14 = v0 + v6;
  v15 = type metadata accessor for GenerationSchema(0);
  if (!(*(*(v15 - 8) + 48))(v0 + v6, 1, v15))
  {
    v36 = v9;
    type metadata accessor for GenerationSchema.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          v19 = v14 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64);

          v20 = *(type metadata accessor for StringGuides(0) + 20);
          v21 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
          v22 = *(v21 - 8);
          v35 = v20;
          v23 = v19 + v20;
          v24 = v21;
          if (!(*(v22 + 48))(v23, 1, v21))
          {
            (*(v22 + 8))(v19 + v35, v24);
          }
        }

        else if (EnumCaseMultiPayload == 7)
        {
          sub_238856774(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));

          v17 = *(type metadata accessor for DynamicGenerationSchema(0) + 28);
          v18 = sub_2388D2328();
          (*(*(v18 - 8) + 8))(v14 + v17, v18);
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (EnumCaseMultiPayload < 2)
      {

        goto LABEL_14;
      }

      if (EnumCaseMultiPayload != 2)
      {
LABEL_14:

        v9 = v36;
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  v25 = v9;
  v26 = v0 + v9;
  v27 = type metadata accessor for PromptTemplate(0);
  if (!(*(*(v27 - 8) + 48))(v0 + v9, 1, v27))
  {

    v28 = *(v27 + 24);
    v29 = sub_2388D1138();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v26 + v28, 1, v29))
    {
      (*(v30 + 8))(v26 + v28, v29);
    }
  }

  v31 = v44 | v43 | v39 | v11 | v13;
  v32 = (((v25 + v38 + 31) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;
  v33 = (((v37 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;

  (*(v10 + 8))(v0 + v32, v42);
  (*(v12 + 8))(v0 + v33, v41);

  return MEMORY[0x2821FE8E8](v0, v33 + v40, v31 | 7);
}

uint64_t sub_2388579F8(uint64_t a1)
{
  v10 = (*(*(*(v1 + 40) - 8) + 80) + 88) & ~*(*(*(v1 + 40) - 8) + 80);
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  sub_2388D3088();
  v7 = *(v1 + 24);
  v8 = *(v1 + 16);
  v6 = *(v1 + 56);
  v13 = *(v1 + 64);
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);
  v2 = swift_task_alloc();
  *(v9 + 16) = v2;
  *v2 = v9;
  v2[1] = sub_2388414A0;

  return sub_23884D024(a1, v8, v7, v6, v13, v5, v4, v1 + v10);
}

uint64_t sub_238857D54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238857D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_238857E04()
{
  os_unfair_lock_lock((v0 + 24));
  *(v0 + 28) = 0;
  os_unfair_lock_unlock((v0 + 24));
}

uint64_t sub_238857E3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 8u)
  {
    if (a5 != 8)
    {
      return v5;
    }
  }
}

void *sub_238857EA8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_238815814(i, &v29);
    v4 = v30;
    v5 = v31;
    sub_238815878(&v29, v30);
    v6 = (*(v5 + 40))(v4, v5);
    v8 = v7;
    v10 = sub_238820AA8(v6, v7);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_238822F5C(v13, 1);
      v1 = v32;
      v15 = sub_238820AA8(v6, v8);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      sub_238826B08(&v29, v28);
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_2388B74DC(0, v18[2] + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_2388B74DC((v20 > 1), v21 + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v18[2] = v21 + 1;
      sub_238826B08(v28, &v18[5 * v21 + 4]);
    }

    else
    {
      sub_238810E44(&qword_27DF300D8, &qword_2388D5CD0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2388D3F70;
      sub_238826B08(&v29, v22 + 32);
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v23 = (v1[6] + 16 * v10);
      *v23 = v6;
      v23[1] = v8;
      *(v1[7] + 8 * v10) = v22;
      v24 = v1[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v1[2] = v26;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2388D3438();
  __break(1u);
  return result;
}

uint64_t sub_23885810C()
{
  v0 = sub_2388D1538();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2388D1598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2388D1568();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238810E44(&qword_27DF300D0, &qword_2388D5CB8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = sub_2388D1518();
  if (*(v17 + 16) && ((*(v4 + 16))(v6, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3), , v18 = sub_2388D1578(), (*(v4 + 8))(v6, v3), *(v18 + 16)))
  {
    (*(v8 + 16))(v10, v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    sub_2388D1558();
    (*(v8 + 8))(v10, v7);
    v19 = sub_2388D1548();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v16, 0, 1, v19);
    sub_238840FB4(v16, v14, &qword_27DF300D0, &qword_2388D5CB8);
    if ((*(v20 + 88))(v14, v19) == *MEMORY[0x277D71C10])
    {
      (*(v20 + 96))(v14, v19);
      v22 = v26;
      v21 = v27;
      (*(v26 + 32))(v2, v14, v27);
      v23 = sub_2388D1528();
      (*(v22 + 8))(v2, v21);
      return v23;
    }

    (*(v20 + 8))(v14, v19);
  }

  else
  {

    v25 = sub_2388D1548();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    sub_238827E88(v16, &qword_27DF300D0, &qword_2388D5CB8);
  }

  return 0;
}

void sub_238858588()
{
  if (qword_27DF2F9E0 != -1)
  {
    swift_once();
  }

  v0 = sub_2388D2408();
  sub_2388413AC(v0, qword_27DF3F8E0);
  oslog = sub_2388D23E8();
  v1 = sub_2388D2E18();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    MEMORY[0x23EE68030](v2, -1, -1);
  }
}

uint64_t sub_238858680()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v34 = *(v2 + 80);
  v3 = (v34 + 40) & ~v34;
  v4 = *(v2 + 64);
  v5 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v33 = *(v5 + 80);
  v6 = (v3 + v4 + v33) & ~v33;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8);
  v9 = *(v8 + 80);
  v10 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 82) & ~v9;
  v32 = *(v8 + 64);
  v36 = sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  v11 = *(v36 - 8);
  v12 = *(v11 + 80);
  v35 = *(v11 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v13 = v0 + v6;
  v14 = type metadata accessor for GenerationSchema(0);
  if (!(*(*(v14 - 8) + 48))(v0 + v6, 1, v14))
  {
    type metadata accessor for GenerationSchema.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          v18 = v13 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64);

          v19 = *(type metadata accessor for StringGuides(0) + 20);
          v20 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
          v21 = *(v20 - 8);
          v31 = v19;
          v22 = v18 + v19;
          v23 = v20;
          if (!(*(v21 + 48))(v22, 1, v20))
          {
            (*(v21 + 8))(v18 + v31, v23);
          }
        }

        else if (EnumCaseMultiPayload == 7)
        {
          sub_238856774(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24));

          v16 = *(type metadata accessor for DynamicGenerationSchema(0) + 28);
          v17 = sub_2388D2328();
          (*(*(v17 - 8) + 8))(v13 + v16, v17);
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (EnumCaseMultiPayload < 2)
      {

        goto LABEL_14;
      }

      if (EnumCaseMultiPayload != 2)
      {
LABEL_14:

        v10 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 82) & ~v9;
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  v24 = v0 + v10;
  v25 = type metadata accessor for PromptTemplate(0);
  if (!(*(*(v25 - 8) + 48))(v0 + v10, 1, v25))
  {

    v26 = *(v25 + 24);
    v27 = sub_2388D1138();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v24 + v26, 1, v27))
    {
      (*(v28 + 8))(v24 + v26, v27);
    }
  }

  v29 = (v12 + ((((v32 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12;

  (*(v11 + 8))(v0 + v29, v36);

  return MEMORY[0x2821FE8E8](v0, v29 + v35, v34 | v33 | v9 | v12 | 7);
}

uint64_t sub_238858C08(uint64_t a1)
{
  v2 = *(*(v1 + 24) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v16 = (v4 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = (*(v5 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80) - 8);
  v8 = (((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 82) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_238810E44(&qword_27DF300A8, &qword_2388D5C68);
  v15 = *(v1 + v6);
  v10 = v1 + v9;
  v11 = *(v1 + v9);
  v12 = *(v10 + 8);
  v13 = swift_task_alloc();
  *(v17 + 16) = v13;
  *v13 = v17;
  v13[1] = sub_2388414A0;

  return sub_238850160(a1, v1 + v4, v1 + v16, v15, v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8), v1 + v8, v11, v12);
}

uint64_t sub_238858F3C(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x23EE68030);
  }

  return result;
}

uint64_t sub_238858F8C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23885900C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v7 - 8) + 80) + 40) & ~*(*(v7 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_238833668;

  return sub_238852938(a1, a2, v2 + v9, v6, v7, v8);
}

uint64_t sub_23885910C()
{
  v1 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  sub_2388158BC((v0 + 16));
  v5 = v0 + v3;
  v6 = type metadata accessor for GenerationSchema(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    type metadata accessor for GenerationSchema.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {

          v10 = v5 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64);

          v11 = *(type metadata accessor for StringGuides(0) + 20);
          v12 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
          v13 = *(v12 - 8);
          if (!(*(v13 + 48))(v10 + v11, 1, v12))
          {
            (*(v13 + 8))(v10 + v11, v12);
          }
        }

        else if (EnumCaseMultiPayload == 7)
        {
          sub_238856774(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));

          v8 = *(type metadata accessor for DynamicGenerationSchema(0) + 28);
          v9 = sub_2388D2328();
          (*(*(v9 - 8) + 8))(v5 + v8, v9);
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (EnumCaseMultiPayload < 2)
      {

        goto LABEL_14;
      }

      if (EnumCaseMultiPayload != 2)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2388593D4(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_238810E44(&qword_27DF2FE20, &qword_2388D5740) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2388414A0;

  return sub_238852CA8(a1, a2, v2 + 16, v2 + v7);
}

uint64_t sub_2388594C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238859524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Entry(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_2388595AC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_2388595BC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2388595CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238859634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LanguageModelSession.GenerationError.Context.init(debugDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = MEMORY[0x277D84F90];
  return result;
}

uint64_t LanguageModelSession.GenerationError.Context.init(debugDescription:underlyingErrors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t LanguageModelSession.GenerationError.Refusal.init(transcriptEntries:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_238810E44(&qword_27DF300B8, &unk_2388D5D20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_238810E44(&qword_27DF2FE30, &unk_2388D5750);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_2388D10A8();
  v13 = sub_2388D1138();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_238827E14(v12, v10, &qword_27DF2FE30, &unk_2388D5750);
  _s15GenerationErrorO7RefusalV16TranscriptRecordCMa(0);
  v14 = swift_allocObject();
  v15 = (v14 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream);
  v16 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  *v15 = 0;
  v17 = *(sub_238810E44(&qword_27DF300C0, &qword_2388D5C88) + 28);
  v18 = sub_238810E44(&qword_27DF300C8, &qword_2388D5C90);
  bzero(v15 + v17, *(*(v18 - 8) + 64));
  sub_238840FB4(v6, v15 + v17, &qword_27DF300B8, &unk_2388D5D20);
  sub_238827E88(v12, &qword_27DF2FE30, &unk_2388D5750);
  *(v14 + 16) = a1;
  result = sub_238840FB4(v10, v14 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_locale, &qword_27DF2FE30, &unk_2388D5750);
  *a2 = v14;
  return result;
}

uint64_t _s15GenerationErrorO7RefusalV16TranscriptRecordCMa(uint64_t a1)
{
  result = qword_27DF30138;
  if (!qword_27DF30138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LanguageModelSession.GenerationError.Context.debugDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_238859A78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = sub_238810E44(&qword_27DF300B8, &unk_2388D5D20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  sub_238827E14(a1, &v22 - v9, &qword_27DF300B8, &unk_2388D5D20);
  v23 = v5;
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    return sub_238840FB4(v10, a2, &qword_27DF2FFC8, &qword_2388D5D30);
  }

  sub_238827E88(a1, &qword_27DF300B8, &unk_2388D5D20);
  sub_238827E88(v10, &qword_27DF300B8, &unk_2388D5D20);
  LOBYTE(v24[0]) = 2;
  LOBYTE(v37) = 0;
  v11 = _s16FoundationModels19SystemLanguageModelC7useCase10guardrailsA2C03UseG0V_AC10GuardrailsVtcfC_0(&v37, v24);
  v24[0] = 0;
  _s16FoundationModels20LanguageModelSessionC5model5tools12instructionsAcA06SystemcD0C_SayAA4Tool_pGAA12InstructionsVSgtcfC_0(v11, MEMORY[0x277D84F90], v24);
  v37 = &unk_284B3AC20;
  v36 = 1;
  v35 = 1;
  v34 = 1;
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0x80;
  v26 = 0;
  v27 = 1;
  v28 = 0;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v32 = 0;
  v33 = 1;
  LanguageModelSession.streamResponse(to:options:)(&v37, v24, v7);

  v12 = *(v7 + 1);
  v22 = *v7;
  v13 = v4[9];
  v14 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v14 - 8) + 16))(&a2[v13], &v7[v13], v14);
  v15 = v4[11];
  v16 = *&v7[v4[10]];
  v17 = *&v7[v15];
  v18 = *&v7[v15 + 8];

  sub_238827E88(v7, &qword_27DF2FFC8, &qword_2388D5D30);
  *a2 = v22;
  *(a2 + 1) = v12;
  *&a2[v4[10]] = v16;
  v19 = &a2[v4[11]];
  *v19 = v17;
  *(v19 + 1) = v18;
  v20 = &a2[v4[12]];
  *v20 = sub_238865198;
  *(v20 + 1) = 0;
  sub_238827E14(a2, a1, &qword_27DF2FFC8, &qword_2388D5D30);
  return (*(v23 + 56))(a1, 0, 1, v4);
}

uint64_t sub_238859DDC()
{

  sub_238827E88(v0 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_locale, &qword_27DF2FE30, &unk_2388D5750);
  v1 = v0 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream;
  v2 = sub_238810E44(&qword_27DF300C0, &qword_2388D5C88);
  sub_238827E88(v1 + *(v2 + 28), &qword_27DF300B8, &unk_2388D5D20);

  return swift_deallocClassInstance();
}

uint64_t LanguageModelSession.GenerationError.Refusal.explanation.getter(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v3 = swift_task_alloc();
  v4 = *v1;
  v2[24] = v3;
  v2[25] = v4;

  return MEMORY[0x2822009F8](sub_238859F40, 0, 0);
}

uint64_t sub_238859F40()
{
  v1 = v0[24];
  v2 = (v0[25] + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream);
  os_unfair_lock_lock(v2);
  v3 = sub_238810E44(&qword_27DF300C0, &qword_2388D5C88);
  sub_238859A78(v2 + *(v3 + 28), v1);
  v5 = v0[23];
  v4 = v0[24];
  os_unfair_lock_unlock(v2);
  v6 = (v4 + *(v5 + 48));
  v0[26] = *v6;
  v0[27] = v6[1];
  v7 = *(v4 + *(v5 + 40));
  v8 = swift_task_alloc();
  v0[28] = v8;
  v9 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v8 = v0;
  v8[1] = sub_23885A0A4;
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 12, v7, &type metadata for ResponseEnvelope, v9, v10);
}

uint64_t sub_23885A0A4()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_23885A2DC;
  }

  else
  {
    v2 = sub_23885A1B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23885A1B8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v3;
  *(v0 + 80) = *(v0 + 160);
  v4 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v4;
  v2(v0 + 16);
  if (!v1)
  {
    v5 = *(v0 + 192);
    sub_238856720(v0 + 16);
    sub_238827E88(v5, &qword_27DF2FFC8, &qword_2388D5D30);

    v6 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  sub_238856720(v0 + 16);
  *(v0 + 240) = v1;
  sub_238827E88(*(v0 + 192), &qword_27DF2FFC8, &qword_2388D5D30);

  return MEMORY[0x2822009F8](sub_23885A35C, 0, 0);
}

uint64_t sub_23885A2DC()
{
  v0[30] = v0[29];
  sub_238827E88(v0[24], &qword_27DF2FFC8, &qword_2388D5D30);

  return MEMORY[0x2822009F8](sub_23885A35C, 0, 0);
}

uint64_t sub_23885A35C()
{

  v1 = *(v0 + 8);

  return v1();
}

void LanguageModelSession.GenerationError.Refusal.explanationStream.getter(char *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtCVOC16FoundationModels20LanguageModelSession15GenerationError7Refusal16TranscriptRecord_explanationStream);
  os_unfair_lock_lock(v3);
  v4 = sub_238810E44(&qword_27DF300C0, &qword_2388D5C88);
  sub_238859A78(v3 + *(v4 + 28), a1);

  os_unfair_lock_unlock(v3);
}

unint64_t LanguageModelSession.GenerationError.errorDescription.getter()
{
  result = 0xD000000000000013;
  v2 = *(v0 + 32);
  if (v2 <= 3)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v2 == 2)
      {
        return 0xD000000000000024;
      }

      return 0xD000000000000028;
    }

    else if (*(v0 + 32))
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0xD000000000000022;
    }
  }

  else if (*(v0 + 32) <= 5u)
  {
    if (v2 == 4)
    {
      return 0xD00000000000002ALL;
    }

    else
    {
      return 0xD000000000000038;
    }
  }

  else if (v2 != 6)
  {
    if (v2 == 7)
    {
      return 0xD0000000000000F5;
    }

    return 0xD000000000000024;
  }

  return result;
}

uint64_t LanguageModelSession.GenerationError.recoverySuggestion.getter()
{
  v1 = *(v0 + 32);
  if (v1 <= 3)
  {
    if (*(v0 + 32) <= 1u)
    {
      return 0xD000000000000036;
    }

    if (v1 == 2)
    {
      return 0xD000000000000016;
    }

    return 0xD000000000000042;
  }

  else if (*(v0 + 32) <= 5u)
  {
    if (v1 == 4)
    {
      return 0xD000000000000022;
    }

    else
    {
      return 0xD000000000000042;
    }
  }

  else
  {
    if (v1 != 6)
    {
      if (v1 == 7)
      {
        return 0xD00000000000008ALL;
      }

      return 0xD000000000000016;
    }

    return 0x6961676120797254;
  }
}

unint64_t LanguageModelSession.GenerationError.failureReason.getter()
{
  result = 0xD000000000000013;
  v2 = *(v0 + 32);
  if (v2 <= 3)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v2 == 2)
      {
        return 0xD000000000000024;
      }

      return 0xD00000000000002DLL;
    }

    else if (*(v0 + 32))
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0xD000000000000022;
    }
  }

  else if (*(v0 + 32) <= 5u)
  {
    if (v2 == 4)
    {
      return 0xD00000000000002ALL;
    }

    else
    {
      return 0xD000000000000036;
    }
  }

  else if (v2 != 6)
  {
    if (v2 == 7)
    {
      return 0xD000000000000069;
    }

    return 0xD000000000000024;
  }

  return result;
}

uint64_t LanguageModelSession.ToolCallError.tool.setter(__int128 *a1)
{
  sub_2388158BC(v1);

  return sub_238828174(a1, v1);
}

void *LanguageModelSession.ToolCallError.underlyingError.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t LanguageModelSession.ToolCallError.init(tool:underlyingError:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_238828174(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t LanguageModelSession.ToolCallError.errorDescription.getter()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0xD00000000000002BLL, 0x80000002388DEDE0);
  v1 = sub_238815878(v0, v0[3]);
  MEMORY[0x28223BE20](v1);
  (*(v3 + 16))(&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2388D28B8();
  MEMORY[0x23EE66C20](v4);

  MEMORY[0x23EE66C20](0xD000000000000013, 0x80000002388DEE10);
  swift_getErrorValue();
  v5 = sub_2388D3448();
  MEMORY[0x23EE66C20](v5);

  return v8;
}

unint64_t sub_23885AA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30130;
  if (!qword_27DF30130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30130);
  }

  return result;
}

__n128 sub_23885AA88(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23885AA9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 33))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 32);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23885AAE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_23885AB44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23885AB8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23885ABF4(uint64_t a1)
{
  sub_23885ACD0(319);
  if (v1 <= 0x3F)
  {
    sub_23885AD28(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23885ACD0(uint64_t a1)
{
  if (!qword_27DF30148)
  {
    sub_2388D1138();
    v1 = sub_2388D2E78();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF30148);
    }
  }
}

void sub_23885AD28(uint64_t a1)
{
  if (!qword_27DF30150)
  {
    sub_238810E8C(&qword_27DF300B8, &unk_2388D5D20);
    v1 = sub_2388D1378();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF30150);
    }
  }
}

uint64_t sub_23885AD8C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_238810E44(&qword_27DF300C0, &qword_2388D5C88);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

__n128 sub_23885ADBC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23885ADD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23885AE18(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t PromptTemplate.init(id:variables:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = *(type metadata accessor for PromptTemplate(0) + 24);
  v11 = sub_2388D1138();
  (*(*(v11 - 8) + 56))(&a5[v10], 1, 1, v11);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;

  return sub_23885AF7C(a4, &a5[v10]);
}

uint64_t type metadata accessor for PromptTemplate(uint64_t a1)
{
  result = qword_27DF30158;
  if (!qword_27DF30158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23885AF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FE30, &unk_2388D5750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LanguageModelSession.respond(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 272) = a4;
  *(v6 + 280) = v5;
  *(v6 + 264) = a1;
  *(v6 + 288) = type metadata accessor for RawResponseStream(0);
  *(v6 + 296) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v6 + 304) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v6 + 328) = swift_task_alloc();
  v9 = *(a5 + 48);
  *(v6 + 48) = *(a5 + 32);
  *(v6 + 64) = v9;
  *(v6 + 80) = *(a5 + 64);
  *(v6 + 96) = *(a5 + 80);
  v10 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v10;
  if (a2)
  {
    swift_getObjectType();
    v11 = sub_2388D2B38();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v6 + 336) = v11;
  *(v6 + 344) = v13;

  return MEMORY[0x2822009F8](sub_23885B190, v11);
}

uint64_t sub_23885B190()
{
  v28 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  sub_23885B7B0();
  sub_23885F5A4(v8, v3, type metadata accessor for PromptTemplate);
  v9 = type metadata accessor for PromptTemplate(0);
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  v10 = type metadata accessor for GenerationSchema(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = v7[20];
  v12 = v7[21];
  v13 = sub_238815878(v7 + 17, v11);
  v27 = 0;
  sub_23884B7DC(&v27, v3, (v0 + 16), v13, v4, 0, 0, v5, sub_23884B648, 0, MEMORY[0x277D837D0], v11, v12);
  sub_238827E88(v4, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v3, &qword_27DF2FFC0, &unk_2388D5A80);
  v14 = *v5;
  v15 = v5[1];
  v16 = *(v6 + 20);
  v17 = v2[9];
  v18 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v18 - 8) + 32))(v1 + v17, v5 + v16, v18);
  v19 = *(v5 + *(v6 + 24));
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *v1 = v14;
  v1[1] = v15;
  *(v1 + v2[10]) = v19;
  v21 = (v1 + v2[11]);
  *v21 = sub_238830F10;
  v21[1] = 0;
  v22 = (v1 + v2[12]);
  *v22 = sub_238856704;
  v22[1] = v20;
  v23 = swift_task_alloc();
  *(v0 + 352) = v23;
  v24 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v23 = v0;
  v23[1] = sub_23885B46C;
  v25 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v19, &type metadata for ResponseEnvelope, v24, v25);
}

uint64_t sub_23885B46C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_23885B700;
  }

  else
  {
    v5 = sub_23885B5A8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23885B5A8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 264);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  sub_2388310FC((v0 + 104), 0, v2);
  if (v1)
  {
    sub_238856720(v0 + 104);
    sub_238827E88(*(v0 + 328), &qword_27DF2FFC8, &qword_2388D5D30);
  }

  else
  {
    v4 = *(v0 + 328);
    sub_238856720(v0 + 104);
    sub_238827E88(v4, &qword_27DF2FFC8, &qword_2388D5D30);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23885B700()
{
  sub_238827E88(*(v0 + 328), &qword_27DF2FFC8, &qword_2388D5D30);

  v1 = *(v0 + 8);

  return v1();
}

void sub_23885B7B0()
{
  v1 = type metadata accessor for Transcript.Entry(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  swift_getKeyPath();
  v18 = v0;
  sub_23885F54C();
  sub_2388D1158();

  swift_beginAccess();
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

    v11 = 0;
    v12 = v9;
    while (1)
    {
      if (v11 >= v12)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      sub_23885F5A4(v10 + *(v2 + 72) * v11, v7, type metadata accessor for Transcript.Entry);
      if (v9 == v11)
      {
        goto LABEL_15;
      }

      sub_23885F60C(v7, v5, type metadata accessor for Transcript.Entry);
      if (!swift_getEnumCaseMultiPayload())
      {
        break;
      }

      ++v11;
      sub_23885F674(v5, type metadata accessor for Transcript.Entry);
      v12 = *(v8 + 16);
      if (v11 == v12)
      {
        goto LABEL_9;
      }
    }

    if (qword_27DF2F9E0 == -1)
    {
      goto LABEL_11;
    }

LABEL_16:
    swift_once();
LABEL_11:
    v13 = sub_2388D2408();
    sub_2388413AC(v13, qword_27DF3F8E0);
    v14 = sub_2388D23E8();
    v15 = sub_2388D2E08();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23880E000, v14, v15, "You initialized a session with instructions and then used a prompt\ntemplate with it. The instructions passed in the initializer will be\nignored.", v16, 2u);
      MEMORY[0x23EE68030](v16, -1, -1);
    }
  }

  else
  {

LABEL_9:
  }
}

uint64_t sub_23885BA90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t LanguageModelSession.respond(to:schema:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 280) = a5;
  *(v7 + 288) = v6;
  *(v7 + 264) = a1;
  *(v7 + 272) = a4;
  v10 = type metadata accessor for GenerationSchema(0);
  *(v7 + 296) = v10;
  v11 = *(v10 - 8);
  *(v7 + 304) = v11;
  *(v7 + 312) = *(v11 + 64);
  *(v7 + 320) = swift_task_alloc();
  v12 = type metadata accessor for RawResponseStream(0);
  *(v7 + 328) = v12;
  v13 = *(v12 - 8);
  *(v7 + 336) = v13;
  *(v7 + 344) = *(v13 + 64);
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = type metadata accessor for GenerationSchema.Kind(0);
  *(v7 + 400) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v7 + 424) = swift_task_alloc();
  v14 = *(a6 + 48);
  *(v7 + 48) = *(a6 + 32);
  *(v7 + 64) = v14;
  *(v7 + 80) = *(a6 + 64);
  *(v7 + 96) = *(a6 + 80);
  v15 = *(a6 + 16);
  *(v7 + 16) = *a6;
  *(v7 + 32) = v15;
  if (a2)
  {
    swift_getObjectType();
    v16 = sub_2388D2B38();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *(v7 + 432) = v16;
  *(v7 + 440) = v18;

  return MEMORY[0x2822009F8](sub_23885BD7C, v16);
}

uint64_t sub_23885BD7C()
{
  v80 = v0;
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 280);
  v4 = *(v0 + 272);
  sub_23885B7B0();
  sub_23885F5A4(v4, v1, type metadata accessor for PromptTemplate);
  v5 = type metadata accessor for PromptTemplate(0);
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  sub_23885F5A4(v3, v2, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v72 = *(v0 + 416);
  v7 = *(v0 + 400);
  v68 = *(v0 + 424);
  v69 = *(v0 + 408);
  if (EnumCaseMultiPayload == 4)
  {
    v9 = *(v0 + 376);
    v8 = *(v0 + 384);
    v10 = *(v0 + 360);
    v11 = *(v0 + 368);
    v66 = *(v0 + 328);
    v13 = *(v0 + 296);
    v12 = *(v0 + 304);
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);

    v16 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_23885F674(v7 + *(v16 + 64), type metadata accessor for StringGuides);
    sub_23885F5A4(v15, v11, type metadata accessor for GenerationSchema);
    (*(v12 + 56))(v11, 0, 1, v13);
    v18 = v14[20];
    v17 = v14[21];
    v19 = sub_238815878(v14 + 17, v18);
    v73 = 0;
    v20 = *(v0 + 64);
    v76 = *(v0 + 48);
    v77 = v20;
    v78 = *(v0 + 80);
    v79 = *(v0 + 96);
    v21 = *(v0 + 32);
    v74 = *(v0 + 16);
    v75 = v21;
    sub_23884B7DC(&v73, v69, &v74, v19, v11, 0, 0, v10, sub_23884B648, 0, MEMORY[0x277D837D0], v18, v17);
    sub_238827E88(v11, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v69, &qword_27DF2FFC0, &unk_2388D5A80);
    v22 = v10[1];
    v64 = *v10;
    v23 = *(v66 + 20);
    v70 = v9[9];
    v24 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v25 = *(v24 - 8);
    (*(v25 + 32))(v8 + v70, v10 + v23, v24);
    v26 = *(v10 + *(v66 + 24));
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *v8 = v64;
    v8[1] = v22;
    *(v8 + v9[10]) = v26;
    v28 = (v8 + v9[11]);
    *v28 = sub_238830F10;
    v28[1] = 0;
    v29 = (v8 + v9[12]);
    *v29 = sub_238859730;
    v29[1] = v27;
    v31 = *v8;
    v30 = v8[1];
    (*(v25 + 16))(v68 + v72[9], v8 + v70, v24);

    sub_238827E88(v8, &qword_27DF2FFC8, &qword_2388D5D30);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    v33 = swift_allocObject();
    *(v33 + 2) = v31;
    *(v33 + 3) = v30;
    *(v33 + 4) = 0;
    *v68 = v31;
    v68[1] = v30;
    *(v68 + v72[10]) = v26;
    v34 = (v68 + v72[11]);
    *v34 = sub_238856808;
    v34[1] = v32;
    v35 = (v68 + v72[12]);
    v36 = sub_238856810;
    *v35 = sub_238856810;
    v35[1] = v33;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v37 = *(v0 + 360);
    v38 = *(v0 + 368);
    v67 = *(v0 + 344);
    v39 = *(v0 + 328);
    v63 = *(v0 + 352);
    v65 = *(v0 + 336);
    v40 = *(v0 + 320);
    v41 = *(v0 + 304);
    v60 = *(v0 + 296);
    v43 = *(v0 + 280);
    v42 = *(v0 + 288);
    sub_23885F674(v7, type metadata accessor for GenerationSchema.Kind);
    v44 = v42[15];
    v61 = v42[16];
    v62 = sub_238815878(v42 + 12, v44);
    v73 = 0;
    v45 = *(v0 + 64);
    v76 = *(v0 + 48);
    v77 = v45;
    v78 = *(v0 + 80);
    v79 = *(v0 + 96);
    v46 = *(v0 + 32);
    v74 = *(v0 + 16);
    v75 = v46;
    sub_23885F5A4(v43, v38, type metadata accessor for GenerationSchema);
    (*(v41 + 56))(v38, 0, 1, v60);
    sub_23885F5A4(v43, v40, type metadata accessor for GenerationSchema);
    v47 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v48 = swift_allocObject();
    sub_23885F60C(v40, v48 + v47, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v73, v69, &v74, v62, v38, 0, 0, v37, sub_2388567D8, v48, &type metadata for GeneratedContent, v44, v61);

    sub_238827E88(v38, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v69, &qword_27DF2FFC0, &unk_2388D5A80);
    v49 = v37[1];
    v71 = *v37;
    v50 = *(v39 + 20);
    v51 = v72[9];
    v52 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v52 - 8) + 16))(v68 + v51, v37 + v50, v52);
    v26 = *(v37 + *(v39 + 24));
    sub_23885F60C(v37, v63, type metadata accessor for RawResponseStream);
    v53 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v33 = swift_allocObject();
    sub_23885F60C(v63, v33 + v53, type metadata accessor for RawResponseStream);
    *(v33 + ((v67 + v53 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
    *v68 = v71;
    v68[1] = v49;
    *(v68 + v72[10]) = v26;
    v54 = (v68 + v72[11]);
    *v54 = sub_2388313C0;
    v54[1] = 0;
    v55 = (v68 + v72[12]);
    v36 = sub_2388567F0;
    *v55 = sub_2388567F0;
    v55[1] = v33;
  }

  *(v0 + 448) = v36;
  *(v0 + 456) = v33;
  v56 = swift_task_alloc();
  *(v0 + 464) = v56;
  v57 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v56 = v0;
  v56[1] = sub_23885C510;
  v58 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 184, v26, &type metadata for ResponseEnvelope, v57, v58);
}

uint64_t sub_23885C510()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_23885C850;
  }

  else
  {
    v5 = sub_23885C64C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23885C64C()
{
  v13 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  *(v0 + 120) = *(v0 + 200);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  *(v0 + 104) = *(v0 + 184);
  v2(v11, v0 + 104);
  if (v1)
  {
    sub_238856720(v0 + 104);
    sub_238827E88(*(v0 + 424), &qword_27DF2FFD0, &qword_2388D6160);
  }

  else
  {
    v4 = *(v0 + 424);
    v5 = *(v0 + 264);
    sub_238856720(v0 + 104);
    sub_238827E88(v4, &qword_27DF2FFD0, &qword_2388D6160);
    v6 = v11[7];
    *(v5 + 96) = v11[6];
    *(v5 + 112) = v6;
    *(v5 + 128) = v11[8];
    *(v5 + 144) = v12;
    v7 = v11[3];
    *(v5 + 32) = v11[2];
    *(v5 + 48) = v7;
    v8 = v11[5];
    *(v5 + 64) = v11[4];
    *(v5 + 80) = v8;
    v9 = v11[1];
    *v5 = v11[0];
    *(v5 + 16) = v9;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23885C850()
{
  sub_238827E88(*(v0 + 424), &qword_27DF2FFD0, &qword_2388D6160);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23885C93C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t LanguageModelSession.respond<A>(to:generating:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 904) = v8;
  *(v9 + 896) = a8;
  *(v9 + 888) = a7;
  *(v9 + 880) = a4;
  *(v9 + 872) = a1;
  v12 = type metadata accessor for RawResponseStream(0);
  *(v9 + 912) = v12;
  v13 = *(v12 - 8);
  *(v9 + 920) = v13;
  *(v9 + 928) = *(v13 + 64);
  *(v9 + 936) = swift_task_alloc();
  *(v9 + 944) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  *(v9 + 952) = swift_task_alloc();
  *(v9 + 960) = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  *(v9 + 968) = swift_task_alloc();
  *(v9 + 976) = type metadata accessor for GenerationSchema.Kind(0);
  *(v9 + 984) = swift_task_alloc();
  v14 = type metadata accessor for GenerationSchema(0);
  *(v9 + 992) = v14;
  v15 = *(v14 - 8);
  *(v9 + 1000) = v15;
  *(v9 + 1008) = *(v15 + 64);
  *(v9 + 1016) = swift_task_alloc();
  *(v9 + 1024) = swift_task_alloc();
  sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  *(v9 + 1032) = swift_task_alloc();
  *(v9 + 1040) = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  *(v9 + 1048) = swift_task_alloc();
  v16 = *(a6 + 48);
  *(v9 + 656) = *(a6 + 32);
  *(v9 + 672) = v16;
  *(v9 + 688) = *(a6 + 64);
  *(v9 + 704) = *(a6 + 80);
  v17 = *(a6 + 16);
  *(v9 + 624) = *a6;
  *(v9 + 640) = v17;
  if (a2)
  {
    swift_getObjectType();
    v18 = sub_2388D2B38();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  *(v9 + 1064) = v20;
  *(v9 + 1056) = v18;

  return MEMORY[0x2822009F8](sub_23885CC48, v18);
}

uint64_t sub_23885CC48()
{
  v79 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 984);
  v4 = *(v0 + 896);
  v5 = *(v0 + 888);
  v6 = *(v0 + 880);
  sub_23885B7B0();
  sub_23885F5A4(v6, v1, type metadata accessor for PromptTemplate);
  v7 = type metadata accessor for PromptTemplate(0);
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  (*(v4 + 40))(v5, v4);
  sub_23885F5A4(v2, v3, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v70 = *(v0 + 1040);
  v71 = *(v0 + 1048);
  v67 = *(v0 + 1032);
  v9 = *(v0 + 1024);
  v10 = *(v0 + 952);
  v11 = *(v0 + 944);
  if (EnumCaseMultiPayload == 4)
  {
    v12 = *(v0 + 1000);
    v13 = *(v0 + 992);
    v14 = *(v0 + 984);
    v15 = *(v0 + 968);
    v16 = *(v0 + 960);
    v65 = *(v0 + 912);
    v17 = *(v0 + 904);

    v18 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_23885F674(v14 + *(v18 + 64), type metadata accessor for StringGuides);
    sub_23885F5A4(v9, v10, type metadata accessor for GenerationSchema);
    (*(v12 + 56))(v10, 0, 1, v13);
    v20 = v17[20];
    v19 = v17[21];
    v21 = sub_238815878(v17 + 17, v20);
    v72 = 0;
    v22 = *(v0 + 672);
    v75 = *(v0 + 656);
    v76 = v22;
    v77 = *(v0 + 688);
    v78 = *(v0 + 704);
    v23 = *(v0 + 640);
    v73 = *(v0 + 624);
    v74 = v23;
    sub_23884B7DC(&v72, v67, &v73, v21, v10, 0, 0, v11, sub_23884B648, 0, MEMORY[0x277D837D0], v20, v19);
    sub_238827E88(v10, &qword_27DF2FE20, &qword_2388D5740);
    sub_23885F674(v9, type metadata accessor for GenerationSchema);
    sub_238827E88(v67, &qword_27DF2FFC0, &unk_2388D5A80);
    v24 = v11[1];
    v63 = *v11;
    v25 = *(v65 + 20);
    v68 = v16[9];
    v26 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v27 = *(v26 - 8);
    (*(v27 + 32))(v15 + v68, v11 + v25, v26);
    v28 = *(v11 + *(v65 + 24));
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *v15 = v63;
    v15[1] = v24;
    *(v15 + v16[10]) = v28;
    v30 = (v15 + v16[11]);
    *v30 = sub_238830F10;
    v30[1] = 0;
    v31 = (v15 + v16[12]);
    *v31 = sub_238859730;
    v31[1] = v29;
    v33 = *v15;
    v32 = v15[1];
    (*(v27 + 16))(v71 + v70[9], v15 + v68, v26);

    sub_238827E88(v15, &qword_27DF2FFC8, &qword_2388D5D30);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    v35 = swift_allocObject();
    *(v35 + 2) = v33;
    *(v35 + 3) = v32;
    *(v35 + 4) = 0;
    *v71 = v33;
    v71[1] = v32;
    *(v71 + v70[10]) = v28;
    v36 = (v71 + v70[11]);
    *v36 = sub_2388596B0;
    v36[1] = v34;
    v37 = (v71 + v70[12]);
    v38 = sub_238859748;
    *v37 = sub_238859748;
    v37[1] = v35;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v39 = *(v0 + 1016);
    v40 = *(v0 + 1000);
    v41 = *(v0 + 992);
    v66 = *(v0 + 928);
    v62 = *(v0 + 936);
    v64 = *(v0 + 920);
    v61 = *(v0 + 912);
    v42 = *(v0 + 904);
    sub_23885F674(*(v0 + 984), type metadata accessor for GenerationSchema.Kind);
    v43 = v42[15];
    v59 = v42[16];
    v60 = sub_238815878(v42 + 12, v43);
    v72 = 0;
    v44 = *(v0 + 672);
    v75 = *(v0 + 656);
    v76 = v44;
    v77 = *(v0 + 688);
    v78 = *(v0 + 704);
    v45 = *(v0 + 640);
    v73 = *(v0 + 624);
    v74 = v45;
    sub_23885F5A4(v9, v10, type metadata accessor for GenerationSchema);
    (*(v40 + 56))(v10, 0, 1, v41);
    sub_23885F5A4(v9, v39, type metadata accessor for GenerationSchema);
    v46 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v47 = swift_allocObject();
    sub_23885F60C(v39, v47 + v46, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v72, v67, &v73, v60, v10, 0, 0, v11, sub_238859698, v47, &type metadata for GeneratedContent, v43, v59);

    sub_238827E88(v10, &qword_27DF2FE20, &qword_2388D5740);
    sub_23885F674(v9, type metadata accessor for GenerationSchema);
    sub_238827E88(v67, &qword_27DF2FFC0, &unk_2388D5A80);
    v48 = v11[1];
    v69 = *v11;
    v49 = *(v61 + 20);
    v50 = v70[9];
    v51 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    (*(*(v51 - 8) + 16))(v71 + v50, v11 + v49, v51);
    v28 = *(v11 + *(v61 + 24));
    sub_23885F60C(v11, v62, type metadata accessor for RawResponseStream);
    v52 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v35 = swift_allocObject();
    sub_23885F60C(v62, v35 + v52, type metadata accessor for RawResponseStream);
    *(v35 + ((v66 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;
    *v71 = v69;
    v71[1] = v48;
    *(v71 + v70[10]) = v28;
    v53 = (v71 + v70[11]);
    *v53 = sub_2388313C0;
    v53[1] = 0;
    v54 = (v71 + v70[12]);
    v38 = sub_2388596B4;
    *v54 = sub_2388596B4;
    v54[1] = v35;
  }

  *(v0 + 1080) = v35;
  *(v0 + 1072) = v38;
  v55 = swift_task_alloc();
  *(v0 + 1088) = v55;
  v56 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v55 = v0;
  v55[1] = sub_23885D470;
  v57 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 792, v28, &type metadata for ResponseEnvelope, v56, v57);
}

uint64_t sub_23885D470()
{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  v3 = *(v2 + 1064);
  v4 = *(v2 + 1056);
  if (v0)
  {
    v5 = sub_23885D8E8;
  }

  else
  {
    v5 = sub_23885D5AC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23885D5AC()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 840);
  *(v0 + 744) = *(v0 + 824);
  *(v0 + 760) = v3;
  *(v0 + 776) = *(v0 + 856);
  v4 = *(v0 + 808);
  *(v0 + 712) = *(v0 + 792);
  *(v0 + 728) = v4;
  v2(v0 + 712);
  if (v1)
  {
    sub_238856720(v0 + 712);
    sub_238827E88(*(v0 + 1048), &qword_27DF2FFD0, &qword_2388D6160);
  }

  else
  {
    v5 = *(v0 + 896);
    v6 = *(v0 + 888);
    v7 = *(v0 + 872);
    sub_238856720(v0 + 712);
    v8 = *(v0 + 128);
    *(v0 + 264) = *(v0 + 112);
    *(v0 + 280) = v8;
    *(v0 + 296) = *(v0 + 144);
    *(v0 + 312) = *(v0 + 160);
    v9 = *(v0 + 64);
    *(v0 + 200) = *(v0 + 48);
    *(v0 + 216) = v9;
    v10 = *(v0 + 96);
    *(v0 + 232) = *(v0 + 80);
    *(v0 + 248) = v10;
    v11 = *(v0 + 32);
    *(v0 + 168) = *(v0 + 16);
    *(v0 + 184) = v11;
    v12 = swift_task_alloc();
    v12[2] = v6;
    v12[3] = v5;
    v12[4] = v6;
    v13 = sub_238810E44(&qword_27DF2FFD8, &unk_2388D6170);
    sub_23884479C(sub_238856830, v13, v6, v5, v7);
    v16 = *(v0 + 1048);
    v17 = *(v0 + 280);
    *(v0 + 568) = *(v0 + 264);
    *(v0 + 584) = v17;
    *(v0 + 600) = *(v0 + 296);
    *(v0 + 616) = *(v0 + 312);
    v18 = *(v0 + 216);
    *(v0 + 504) = *(v0 + 200);
    *(v0 + 520) = v18;
    v19 = *(v0 + 248);
    *(v0 + 536) = *(v0 + 232);
    *(v0 + 552) = v19;
    v20 = *(v0 + 184);
    *(v0 + 472) = *(v0 + 168);
    *(v0 + 488) = v20;
    sub_238827E88(v0 + 472, &qword_27DF2FFD8, &unk_2388D6170);
    sub_238827E88(v16, &qword_27DF2FFD0, &qword_2388D6160);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_23885D8E8()
{
  sub_238827E88(*(v0 + 1048), &qword_27DF2FFD0, &qword_2388D6160);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LanguageModelSession.streamResponse(to:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = type metadata accessor for RawResponseStream(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v17 = *(a2 + 48);
  v36[2] = *(a2 + 32);
  v36[3] = v17;
  v36[4] = *(a2 + 64);
  v37 = *(a2 + 80);
  v18 = *(a2 + 16);
  v36[0] = *a2;
  v36[1] = v18;
  sub_23885B7B0();
  sub_23885F5A4(a1, v16, type metadata accessor for PromptTemplate);
  v19 = type metadata accessor for PromptTemplate(0);
  (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  v20 = type metadata accessor for GenerationSchema(0);
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = v3[20];
  v22 = v3[21];
  v23 = sub_238815878(v3 + 17, v21);
  v35 = 0;
  sub_23884B7DC(&v35, v16, v36, v23, v13, 0, 1, v10, sub_23884B648, 0, MEMORY[0x277D837D0], v21, v22);
  sub_238827E88(v13, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v16, &qword_27DF2FFC0, &unk_2388D5A80);
  v24 = *v10;
  v25 = v10[1];
  v26 = *(v8 + 28);
  v27 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v28 = v27[9];
  v29 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v29 - 8) + 32))(&a3[v28], v10 + v26, v29);
  v30 = *(v10 + *(v8 + 32));
  result = swift_allocObject();
  *(result + 16) = 0;
  *a3 = v24;
  *(a3 + 1) = v25;
  *&a3[v27[10]] = v30;
  v32 = &a3[v27[11]];
  *v32 = sub_238830F10;
  v32[1] = 0;
  v33 = &a3[v27[12]];
  *v33 = sub_238859730;
  v33[1] = result;
  return result;
}

uint64_t LanguageModelSession.streamResponse(to:schema:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v82 = a3;
  v6 = type metadata accessor for GenerationSchema(0);
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = v7;
  v72 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for RawResponseStream(0);
  v74 = *(v81 - 8);
  v8 = MEMORY[0x28223BE20](v81);
  v76 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = (&v71 - v10);
  v12 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v71 - v13;
  v73 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  MEMORY[0x28223BE20](v73);
  v16 = (&v71 - v15);
  v17 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v71 - v21;
  sub_23885B7B0();
  sub_23885F5A4(a1, v22, type metadata accessor for PromptTemplate);
  v23 = type metadata accessor for PromptTemplate(0);
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  LOBYTE(v97) = 1;
  LOBYTE(v101[0]) = 1;
  LOBYTE(v83) = 1;
  LOBYTE(v100[0]) = 1;
  v77 = 1;
  v78 = 1;
  sub_23885F5A4(a2, v19, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {

    v24 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_23885F674(&v19[*(v24 + 64)], type metadata accessor for StringGuides);
    sub_23885F5A4(a2, v14, type metadata accessor for GenerationSchema);
    (*(v79 + 56))(v14, 0, 1, v80);
    v25 = v3[20];
    v26 = v3[21];
    v27 = sub_238815878(v3 + 17, v25);
    v97 = 0;
    v83 = 0uLL;
    v84 = -2;
    *v85 = v101[0];
    *&v85[3] = *(v101 + 3);
    v86 = 0;
    v87 = 1;
    *v88 = v100[0];
    *&v88[3] = *(v100 + 3);
    v89 = 0;
    v90 = 1;
    *v91 = *v99;
    *&v91[3] = *&v99[3];
    v92 = 0;
    v93 = v77;
    *&v94[3] = *&v98[3];
    *v94 = *v98;
    v95 = 0;
    v96 = v78;
    sub_23884B7DC(&v97, v22, &v83, v27, v14, 0, 1, v11, sub_23884B648, 0, MEMORY[0x277D837D0], v25, v26);
    sub_238827E88(v14, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v22, &qword_27DF2FFC0, &unk_2388D5A80);
    v28 = *v11;
    v29 = v11[1];
    v30 = v81;
    v31 = *(v81 + 20);
    v32 = v73;
    v33 = v73[9];
    v34 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v35 = *(v34 - 8);
    (*(v35 + 32))(v16 + v33, v11 + v31, v34);
    v36 = *(v11 + *(v30 + 24));
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *v16 = v28;
    v16[1] = v29;
    *(v16 + v32[10]) = v36;
    v38 = (v16 + v32[11]);
    *v38 = sub_238830F10;
    v38[1] = 0;
    v39 = (v16 + v32[12]);
    *v39 = sub_238859730;
    v39[1] = v37;
    v41 = *v16;
    v40 = v16[1];
    v42 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v43 = v82;
    (*(v35 + 16))(v82 + v42[9], v16 + v33, v34);

    sub_238827E88(v16, &qword_27DF2FFC8, &qword_2388D5D30);
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    *(v44 + 24) = v40;
    v45 = swift_allocObject();
    *(v45 + 2) = v41;
    *(v45 + 3) = v40;
    *(v45 + 4) = 0;
    *v43 = v41;
    v43[1] = v40;
    *(v43 + v42[10]) = v36;
    v46 = (v43 + v42[11]);
    *v46 = sub_2388596B0;
    v46[1] = v44;
    v47 = (v43 + v42[12]);
    *v47 = sub_238859748;
    v47[1] = v45;
    return swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_23885F674(v19, type metadata accessor for GenerationSchema.Kind);
    v50 = v3[15];
    v49 = v3[16];
    v73 = sub_238815878(v3 + 12, v50);
    v97 = 0;
    v83 = 0uLL;
    v84 = -2;
    *v85 = v101[0];
    *&v85[3] = *(v101 + 3);
    v86 = 0;
    v87 = 1;
    *v88 = v100[0];
    *&v88[3] = *(v100 + 3);
    v89 = 0;
    v90 = 1;
    *v91 = *v99;
    *&v91[3] = *&v99[3];
    v92 = 0;
    v93 = v77;
    *&v94[3] = *&v98[3];
    *v94 = *v98;
    v95 = 0;
    v96 = v78;
    sub_23885F5A4(a2, v14, type metadata accessor for GenerationSchema);
    v51 = v79 + 56;
    (*(v79 + 56))(v14, 0, 1, v80);
    v52 = a2;
    v53 = v72;
    sub_23885F5A4(v52, v72, type metadata accessor for GenerationSchema);
    v54 = (*(v51 + 24) + 16) & ~*(v51 + 24);
    v55 = swift_allocObject();
    sub_23885F60C(v53, v55 + v54, type metadata accessor for GenerationSchema);
    sub_23884B7DC(&v97, v22, &v83, v73, v14, 1, 1, v11, sub_238859698, v55, &type metadata for GeneratedContent, v50, v49);

    sub_238827E88(v14, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v22, &qword_27DF2FFC0, &unk_2388D5A80);
    v57 = *v11;
    v56 = v11[1];
    v58 = v81;
    v59 = *(v81 + 20);
    v60 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v61 = v60[9];
    v62 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v63 = v82;
    (*(*(v62 - 8) + 16))(v82 + v61, v11 + v59, v62);
    v64 = *(v11 + *(v58 + 24));
    v65 = v76;
    sub_23885F60C(v11, v76, type metadata accessor for RawResponseStream);
    v66 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v67 = (v75 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    sub_23885F60C(v65, v68 + v66, type metadata accessor for RawResponseStream);
    *(v68 + v67) = 0;
    *v63 = v57;
    v63[1] = v56;
    *(v63 + v60[10]) = v64;
    v69 = (v63 + v60[11]);
    *v69 = sub_2388313C0;
    v69[1] = 0;
    v70 = (v63 + v60[12]);
    *v70 = sub_2388596B4;
    v70[1] = v68;
  }
}

uint64_t LanguageModelSession.streamResponse<A>(to:generating:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v98 = a4;
  v97 = type metadata accessor for RawResponseStream(0);
  v86 = *(v97 - 8);
  v8 = MEMORY[0x28223BE20](v97);
  v88 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v9;
  MEMORY[0x28223BE20](v8);
  v95 = (&v84 - v10);
  v11 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  MEMORY[0x28223BE20](v11 - 8);
  v93 = &v84 - v12;
  v85 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  MEMORY[0x28223BE20](v85);
  v14 = &v84 - v13;
  v15 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for GenerationSchema(0);
  v90 = *(v89 - 8);
  v18 = *(v90 + 64);
  v19 = MEMORY[0x28223BE20](v89);
  v84 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v84 - v20;
  v22 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v84 - v23;
  v96 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  MEMORY[0x28223BE20](v96);
  v91 = &v84 - v25;
  v94 = v4;
  sub_23885B7B0();
  sub_23885F5A4(a1, v24, type metadata accessor for PromptTemplate);
  v26 = type metadata accessor for PromptTemplate(0);
  v27 = *(*(v26 - 8) + 56);
  v92 = v24;
  v28 = v24;
  v29 = v21;
  v27(v28, 0, 1, v26);
  v30 = *(a3 + 40);
  v99 = a2;
  v100 = a3;
  v30(a2, a3);
  LOBYTE(v116) = 1;
  LOBYTE(v120[0]) = 1;
  LOBYTE(v101) = 1;
  LOBYTE(v119[0]) = 1;
  sub_23885F5A4(v21, v17, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {

    v31 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_23885F674(&v17[*(v31 + 64)], type metadata accessor for StringGuides);
    v32 = v93;
    sub_23885F5A4(v21, v93, type metadata accessor for GenerationSchema);
    (*(v90 + 56))(v32, 0, 1, v89);
    v33 = v94[20];
    v34 = v94[21];
    v35 = sub_238815878(v94 + 17, v33);
    v116 = 0;
    v101 = 0uLL;
    v102 = -2;
    *v103 = v120[0];
    *&v103[3] = *(v120 + 3);
    v104 = 0;
    v105 = 1;
    *v106 = v119[0];
    *&v106[3] = *(v119 + 3);
    v107 = 0;
    v108 = 1;
    *v109 = *v118;
    *&v109[3] = *&v118[3];
    v110 = 0;
    v111 = 1;
    *&v112[3] = *&v117[3];
    *v112 = *v117;
    v113 = 0;
    v114 = 1;
    v115 = 0;
    v82 = v33;
    v36 = v95;
    v37 = v92;
    sub_23884B7DC(&v116, v92, &v101, v35, v32, 0, 1, v95, sub_23884B648, 0, MEMORY[0x277D837D0], v82, v34);
    sub_238827E88(v32, &qword_27DF2FE20, &qword_2388D5740);
    sub_23885F674(v21, type metadata accessor for GenerationSchema);
    sub_238827E88(v37, &qword_27DF2FFC0, &unk_2388D5A80);
    v38 = *v36;
    v39 = v36[1];
    v40 = v97;
    v41 = *(v97 + 20);
    v42 = v85;
    v43 = v85[9];
    v44 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v45 = *(v44 - 8);
    (*(v45 + 32))(&v14[v43], v36 + v41, v44);
    v46 = *(v36 + *(v40 + 24));
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *v14 = v38;
    *(v14 + 1) = v39;
    *&v14[v42[10]] = v46;
    v48 = &v14[v42[11]];
    *v48 = sub_238830F10;
    v48[1] = 0;
    v49 = &v14[v42[12]];
    *v49 = sub_238859730;
    v49[1] = v47;
    v51 = *v14;
    v50 = *(v14 + 1);
    v52 = v96;
    v53 = v91;
    (*(v45 + 16))(&v91[*(v96 + 36)], &v14[v43], v44);

    sub_238827E88(v14, &qword_27DF2FFC8, &qword_2388D5D30);
    v54 = swift_allocObject();
    *(v54 + 16) = v51;
    *(v54 + 24) = v50;
    v55 = swift_allocObject();
    *(v55 + 2) = v51;
    *(v55 + 3) = v50;
    *(v55 + 4) = 0;
    *v53 = v51;
    v53[1] = v50;
    *(v53 + v52[10]) = v46;
    v56 = (v53 + v52[11]);
    *v56 = sub_2388596B0;
    v56[1] = v54;
    v57 = (v53 + v52[12]);
    *v57 = sub_238859748;
    v57[1] = v55;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_23885F674(v17, type metadata accessor for GenerationSchema.Kind);
    v58 = v94[15];
    v59 = v94[16];
    v85 = sub_238815878(v94 + 12, v58);
    v116 = 0;
    v101 = 0uLL;
    v102 = -2;
    *v103 = v120[0];
    *&v103[3] = *(v120 + 3);
    v104 = 0;
    v105 = 1;
    *v106 = v119[0];
    *&v106[3] = *(v119 + 3);
    v107 = 0;
    v108 = 1;
    *v109 = *v118;
    *&v109[3] = *&v118[3];
    v110 = 0;
    v111 = 1;
    *&v112[3] = *&v117[3];
    *v112 = *v117;
    v113 = 0;
    v114 = 1;
    v115 = 0;
    v60 = v93;
    sub_23885F5A4(v21, v93, type metadata accessor for GenerationSchema);
    v61 = v90 + 56;
    (*(v90 + 56))(v60, 0, 1, v89);
    v62 = v84;
    sub_23885F5A4(v29, v84, type metadata accessor for GenerationSchema);
    v63 = (*(v61 + 24) + 16) & ~*(v61 + 24);
    v64 = swift_allocObject();
    sub_23885F60C(v62, v64 + v63, type metadata accessor for GenerationSchema);
    v83 = v58;
    v65 = v95;
    v66 = v92;
    sub_23884B7DC(&v116, v92, &v101, v85, v60, 1, 1, v95, sub_238859698, v64, &type metadata for GeneratedContent, v83, v59);

    sub_238827E88(v60, &qword_27DF2FE20, &qword_2388D5740);
    sub_23885F674(v29, type metadata accessor for GenerationSchema);
    sub_238827E88(v66, &qword_27DF2FFC0, &unk_2388D5A80);
    v68 = *v65;
    v67 = v65[1];
    v70 = v96;
    v69 = v97;
    v71 = *(v97 + 20);
    v72 = *(v96 + 36);
    v73 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v53 = v91;
    (*(*(v73 - 8) + 16))(&v91[v72], v65 + v71, v73);
    v74 = *(v65 + *(v69 + 24));
    v75 = v88;
    sub_23885F60C(v65, v88, type metadata accessor for RawResponseStream);
    v76 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v77 = (v87 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    sub_23885F60C(v75, v78 + v76, type metadata accessor for RawResponseStream);
    *(v78 + v77) = 0;
    *v53 = v68;
    v53[1] = v67;
    *(v53 + v70[10]) = v74;
    v79 = (v53 + v70[11]);
    *v79 = sub_2388313C0;
    v79[1] = 0;
    v80 = (v53 + v70[12]);
    *v80 = sub_2388596B4;
    v80[1] = v78;
  }

  sub_23885FEF0(v99, v100, v98);
  return sub_238827E88(v53, &qword_27DF2FFD0, &qword_2388D6160);
}

uint64_t sub_23885F2BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238810E44(&qword_27DF2FE30, &unk_2388D5750);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23885F38C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF2FE30, &unk_2388D5750);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23885F43C(uint64_t a1)
{
  sub_23885F4D0(319);
  if (v1 <= 0x3F)
  {
    sub_23885ACD0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23885F4D0(uint64_t a1)
{
  if (!qword_27DF30168)
  {
    sub_238810E8C(&qword_27DF2FE88, &qword_2388D5780);
    v1 = sub_2388D2788();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF30168);
    }
  }
}

unint64_t sub_23885F54C()
{
  result = qword_27DF2FFB0;
  if (!qword_27DF2FFB0)
  {
    type metadata accessor for LanguageModelSession(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FFB0);
  }

  return result;
}

uint64_t sub_23885F5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23885F60C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23885F674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23885F718@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v17 = a1[1];
  *a9 = *a1;
  *(a9 + 1) = v17;
  v18 = type metadata accessor for LanguageModelSession.ResponseStream(0, a8, a10, a4);
  v19 = v18[9];
  v20 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  result = (*(*(v20 - 8) + 32))(&a9[v19], a2, v20);
  *&a9[v18[10]] = a3;
  v22 = &a9[v18[11]];
  *v22 = a4;
  *(v22 + 1) = a5;
  v23 = &a9[v18[12]];
  *v23 = a6;
  *(v23 + 1) = a7;
  return result;
}

uint64_t LanguageModelSession.ResponseStream.collect()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[22] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_2388D2B38();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[25] = v6;
  v5[26] = v8;

  return MEMORY[0x2822009F8](sub_23885F890, v6);
}

uint64_t sub_23885F890()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = (v1 + *(v2 + 48));
  v0[27] = *v3;
  v0[28] = v3[1];
  v4 = *(v1 + *(v2 + 40));
  v5 = swift_task_alloc();
  v0[29] = v5;
  v6 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  *v5 = v0;
  v5[1] = sub_23885F978;
  v7 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 12, v4, &type metadata for ResponseEnvelope, v6, v7);
}

uint64_t sub_23885F978()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_23885FB5C;
  }

  else
  {
    v5 = sub_23885FAB4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23885FAB4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v2;
  *(v0 + 80) = *(v0 + 160);
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  v1(v0 + 16);
  sub_238856720(v0 + 16);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t LanguageModelSession.streamResponse(to:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = type metadata accessor for RawResponseStream(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  v17 = *a1;
  v18 = *(a2 + 48);
  v37[2] = *(a2 + 32);
  v37[3] = v18;
  v37[4] = *(a2 + 64);
  v38 = *(a2 + 80);
  v19 = *(a2 + 16);
  v37[0] = *a2;
  v37[1] = v19;
  v20 = type metadata accessor for PromptTemplate(0);
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = type metadata accessor for GenerationSchema(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = v3[20];
  v23 = v3[21];
  v24 = sub_238815878(v3 + 17, v22);
  v36 = v17;

  sub_23884B7DC(&v36, v16, v37, v24, v13, 0, 1, v10, sub_23884B648, 0, MEMORY[0x277D837D0], v22, v23);
  sub_238827E88(v13, &qword_27DF2FE20, &qword_2388D5740);
  sub_238827E88(v16, &qword_27DF2FFC0, &unk_2388D5A80);
  v25 = *v10;
  v26 = v10[1];
  v27 = *(v8 + 28);
  v28 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  v29 = v28[9];
  v30 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  (*(*(v30 - 8) + 32))(&a3[v29], v10 + v27, v30);
  v31 = *(v10 + *(v8 + 32));
  result = swift_allocObject();
  *(result + 16) = v17;
  *a3 = v25;
  *(a3 + 1) = v26;
  *&a3[v28[10]] = v31;
  v33 = &a3[v28[11]];
  *v33 = sub_238830F10;
  v33[1] = 0;
  v34 = &a3[v28[12]];
  *v34 = sub_238856704;
  v34[1] = result;
  return result;
}

uint64_t sub_23885FEB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23885FEF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v23 = a3;
  v22 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v20 - v7;
  v9 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  v10 = &v3[v9[11]];
  v11 = *v10;
  v21 = *(v10 + 1);
  v12 = v21;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v11;
  v13[5] = v12;
  v14 = &v3[v9[12]];
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v15;
  v17[5] = v16;
  v18 = *(v3 + 1);
  v24[0] = *v3;
  v24[1] = v18;
  (*(v6 + 16))(v8, &v3[v9[9]], v22);
  sub_23885F718(v24, v8, *&v3[v9[10]], sub_238866074, v13, sub_238866080, v17, a1, v23, a2);
}

uint64_t LanguageModelSession.ResponseStream.Snapshot.content.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t LanguageModelSession.ResponseStream.Snapshot.content.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t LanguageModelSession.ResponseStream.Snapshot.rawContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v5;
  v9 = *(v3 + 16);
  *(a2 + 16) = v9;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  sub_238814698(v4, v5, v9);
}

uint64_t LanguageModelSession.ResponseStream.Snapshot.rawContent.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = a1[3];
  v8 = a1[4];
  v9 = v2 + *(a2 + 36);
  sub_238810DC4(*v9, *(v9 + 8), *(v9 + 16));

  *v9 = v3;
  *(v9 + 8) = v4;
  *(v9 + 16) = v5;
  *(v9 + 17) = v6;
  *(v9 + 24) = v7;
  *(v9 + 32) = v8;
  return result;
}

uint64_t sub_2388602E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v12 = *(a2 + 17);
  v13 = a2[3];
  v14 = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  result = type metadata accessor for LanguageModelSession.ResponseStream.Snapshot(0, a3, a4, v16);
  v18 = a5 + *(result + 36);
  *v18 = v9;
  *(v18 + 8) = v10;
  *(v18 + 16) = v11;
  *(v18 + 17) = v12;
  *(v18 + 24) = v13;
  *(v18 + 32) = v14;
  return result;
}

uint64_t LanguageModelSession.ResponseStream.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v5[20] = *(a4 + 24);
  v5[21] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[22] = AssociatedTypeWitness;
  v7 = sub_2388D2E78();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = *(AssociatedTypeWitness - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[29] = v8;
  v9 = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  *v8 = v5;
  v8[1] = sub_23886056C;
  v10 = v5[16];
  v11 = v5[17];

  return MEMORY[0x2822005A8](v5 + 2, v10, v11, v9, v5 + 14);
}

uint64_t sub_23886056C()
{
  v2 = *v1;

  if (v0)
  {
    if (*(v2 + 128))
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_238860A04;
  }

  else
  {
    if (*(v2 + 128))
    {
      swift_getObjectType();
      v3 = sub_2388D2B38();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_2388606F4;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_2388606F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = v4;
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  if ((v6 & 0xFFFFFFFFFFFFFEF8) == 0xFFFFFFEF8)
  {
    v7 = 1;
LABEL_11:
    v29 = *(v4 + 120);
    v30 = type metadata accessor for LanguageModelSession.ResponseStream.Snapshot(0, *(v4 + 168), *(v4 + 160), a4);
    (*(*(v30 - 8) + 56))(v29, v7, 1, v30);

    v31 = *(v4 + 8);

    return v31();
  }

  v8 = *(v4 + 24);
  v9 = *(v4 + 40);
  v10 = *(v4 + 48);
  LOBYTE(v11) = *(v4 + 56);
  v12 = *(*(v4 + 152) + *(*(v4 + 144) + 36));
  *(v4 + 64) = v5;
  v14 = *(v4 + 200);
  v13 = *(v4 + 208);
  v15 = *(v4 + 176);
  *(v4 + 72) = v8;
  *(v4 + 80) = v6;
  v35 = v10;
  v36 = v9;
  *(v4 + 88) = v9;
  *(v4 + 96) = v10;
  *(v4 + 104) = v11 & 1;
  v12();
  if ((*(v13 + 48))(v14, 1, v15) != 1)
  {
    v34 = v5;
    v24 = v35;
    v23 = v36;
    v33 = *(*(v4 + 208) + 32);
    v33(*(v4 + 224), *(v4 + 200), *(v4 + 176));
    if ((v6 & 0x8000000000000000) != 0)
    {
      v11 = (v6 >> 8) & 1;
    }

    else
    {
      v25 = (*(v4 + 152) + *(*(v4 + 144) + 40));
      v23 = *v25;
      v24 = v25[1];

      LOBYTE(v6) = 2;
    }

    v26 = *(v4 + 216);
    v37 = *(v4 + 168);
    v27 = *(v4 + 160);
    v28 = *(v4 + 120);
    v33(v26, *(v4 + 224), *(v4 + 176));
    v38[0] = v34;
    v38[1] = v8;
    v39 = v6;
    v40 = v11 & 1;
    v41 = v23;
    v42 = v24;
    sub_2388602E4(v26, v38, v37, v27, v28);
    v7 = 0;
    goto LABEL_11;
  }

  v17 = *(v4 + 192);
  v16 = *(v4 + 200);
  v18 = *(v4 + 184);
  sub_238860AB0(v5, v8, v6, v36, v35);
  (*(v17 + 8))(v16, v18);
  v19 = swift_task_alloc();
  *(v4 + 232) = v19;
  v20 = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  *v19 = v4;
  v19[1] = sub_23886056C;
  v21 = *(v4 + 128);
  v22 = *(v4 + 136);

  return MEMORY[0x2822005A8](v4 + 16, v21, v22, v20, v4 + 112);
}

uint64_t sub_238860A04(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_238860AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0xFFFFFFFFFFFFFEF8) != 0xFFFFFFEF8)
  {
    return sub_238860AD0(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_238860AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    sub_238810DC4(a1, a2, a3);
  }
}

uint64_t sub_238860B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  v14 = a4[1];
  v15 = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  result = type metadata accessor for LanguageModelSession.ResponseStream.AsyncIterator(0, a5, a6, v16);
  v18 = (a7 + *(result + 36));
  *v18 = a2;
  v18[1] = a3;
  v19 = (a7 + *(result + 40));
  *v19 = v13;
  v19[1] = v14;
  return result;
}

uint64_t sub_238860BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_238860C8C;

  return MEMORY[0x282200318](a1, a2, a3, v3 + 16);
}

uint64_t sub_238860C8C()
{
  v1 = *v0;

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_238860D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_238860E4C;

  return LanguageModelSession.ResponseStream.AsyncIterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t sub_238860E4C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t LanguageModelSession.ResponseStream.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_238810E44(qword_27DF30170, qword_2388D61D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
  sub_2388D2CF8();
  v9 = (v2 + *(a1 + 44));
  v10 = *v9;
  v11 = v9[1];
  v12 = *v3;
  v13 = v3[1];
  v15[0] = v12;
  v15[1] = v13;
  sub_238860B14(v8, v10, v11, v15, *(a1 + 16), *(a1 + 24), a2);
}

uint64_t sub_238861058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LanguageModelSession.ResponseStream.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_2388610B8@<X0>(__int128 *a1@<X0>, void (*a2)(void *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 4);
  v9 = *(a1 + 40);
  v10 = a1[1];
  v23 = *a1;
  v24 = v10;
  v25 = v8;
  v26 = v9;
  a2(v27, &v23);
  v11 = v30;
  if (v30 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13 = *(*(AssociatedTypeWitness - 8) + 56);
    v14 = AssociatedTypeWitness;
    v15 = a5;
    v16 = 1;
  }

  else
  {
    v18 = v27[0];
    v17 = v27[1];
    v19 = v28;
    v20 = v29;
    v21 = swift_getAssociatedTypeWitness();
    *&v23 = v18;
    *(&v23 + 1) = v17;
    LOWORD(v24) = v19 & 0x1FF;
    *(&v24 + 1) = v20;
    v25 = v11;
    sub_238861294(&v23, v21, a3, a4);
    sub_2388660BC(v18, v17, v19, v20, v11);
    v13 = *(*(v21 - 8) + 56);
    v15 = a5;
    v16 = 0;
    v14 = v21;
  }

  return v13(v15, v16, 1, v14);
}

uint64_t sub_238861294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 17);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v14 = v8;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 8);
  sub_238814698(v13[0], v4, v8);

  v11 = swift_checkMetadataState();
  return v10(v13, v11, AssociatedConformanceWitness);
}

void *sub_23886139C@<X0>(void *(*a1)(__int128 *__return_ptr)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  result = a1(&v14);
  if (!v4)
  {
    v24 = v10;
    v12[6] = v20;
    v12[7] = v21;
    v12[8] = v22;
    v12[2] = v16;
    v12[3] = v17;
    v12[4] = v18;
    v12[5] = v19;
    v12[0] = v14;
    v12[1] = v15;
    v10[6] = v20;
    v10[7] = v21;
    v10[8] = v22;
    v10[2] = v16;
    v10[3] = v17;
    v10[4] = v18;
    v10[5] = v19;
    v13 = v23;
    v11 = v23;
    v10[0] = v14;
    v10[1] = v15;
    MEMORY[0x28223BE20](result);
    v9 = sub_238810E44(&qword_27DF2FFD8, &unk_2388D6170);
    sub_23884479C(sub_2388660A0, v9, a2, a3, a4);
    return sub_238827E88(v12, &qword_27DF2FFD8, &unk_2388D6170);
  }

  return result;
}

uint64_t sub_238861508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 17);
  v6 = *(a1 + 24);
  v7 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = v7;
  v13 = v5;
  v14 = v6;
  v8 = *(a3 + 8);
  v9 = *(v8 + 8);
  sub_238814698(v11[0], v4, v7);

  return v9(v11, a2, v8);
}

uint64_t LanguageModelSession.streamResponse(to:schema:includeSchemaInPrompt:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v95 = a4;
  v100 = a3;
  v108 = a6;
  v101 = type metadata accessor for GenerationSchema(0);
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v92[1] = v9;
  v93 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for RawResponseStream(0);
  v96 = *(v107 - 8);
  v10 = MEMORY[0x28223BE20](v107);
  v98 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v11;
  MEMORY[0x28223BE20](v10);
  v106 = (v92 - v12);
  v13 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  MEMORY[0x28223BE20](v13 - 8);
  v104 = v92 - v14;
  v94 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  MEMORY[0x28223BE20](v94);
  v16 = v92 - v15;
  v99 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v99);
  v18 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = v92 - v21;
  v23 = *(a5 + 48);
  v120 = *(a5 + 32);
  v121 = v23;
  v122 = *(a5 + 64);
  v123 = *(a5 + 80);
  v24 = *(a5 + 16);
  v118 = *a5;
  v119 = v24;
  v117[0] = a1;
  v117[1] = a2;
  v116 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D837D0];
  v26 = *(MEMORY[0x277D837D0] - 8);
  MEMORY[0x28223BE20](v20);
  v28 = v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v28, v117, v25);
  v29 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v29)(&v109);
  v30 = *(v26 + 8);
  v30(v28, v25);
  sub_23881FAF4(v109);
  v31 = v116;
  v30(v117, v25);
  v32 = v100;

  v33 = type metadata accessor for PromptTemplate(0);
  v34 = *(*(v33 - 8) + 56);
  v103 = v22;
  v34(v22, 1, 1, v33);
  sub_2388653D8(v32, v18, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {

    v35 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388654EC(&v18[*(v35 + 64)], type metadata accessor for StringGuides);
    v36 = v104;
    sub_2388653D8(v32, v104, type metadata accessor for GenerationSchema);
    (*(v102 + 56))(v36, 0, 1, v101);
    v37 = v105[20];
    v38 = v105[21];
    v39 = sub_238815878(v105 + 17, v37);
    v115 = v31;
    v111 = v120;
    v112 = v121;
    v113 = v122;
    v114 = v123;
    v109 = v118;
    v110 = v119;
    v91 = v37;
    v40 = v106;
    v41 = v103;
    sub_23884B7DC(&v115, v103, &v109, v39, v36, 0, 1, v106, sub_23884B648, 0, v25, v91, v38);
    sub_238827E88(v36, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v41, &qword_27DF2FFC0, &unk_2388D5A80);
    v42 = v40[1];
    v105 = *v40;
    v43 = v107;
    v44 = *(v107 + 20);
    v45 = v94;
    v46 = *(v94 + 36);
    v47 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v48 = v31;
    v49 = *(v47 - 8);
    (*(v49 + 32))(&v16[v46], v40 + v44, v47);
    v50 = *(v40 + *(v43 + 24));
    v51 = swift_allocObject();
    v52 = v48;
    *(v51 + 16) = v48;
    *v16 = v105;
    *(v16 + 1) = v42;
    *&v16[v45[10]] = v50;
    v53 = &v16[v45[11]];
    *v53 = sub_238830F10;
    v53[1] = 0;
    v54 = &v16[v45[12]];
    *v54 = sub_238859730;
    v54[1] = v51;
    v56 = *v16;
    v55 = *(v16 + 1);
    v57 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v58 = v108;
    (*(v49 + 16))(v108 + v57[9], &v16[v46], v47);
    v59 = v52;

    sub_238827E88(v16, &qword_27DF2FFC8, &qword_2388D5D30);
    v60 = swift_allocObject();
    *(v60 + 16) = v56;
    *(v60 + 24) = v55;
    v61 = swift_allocObject();
    *(v61 + 2) = v56;
    *(v61 + 3) = v55;
    *(v61 + 4) = v59;
    *v58 = v56;
    v58[1] = v55;
    *(v58 + v57[10]) = v50;
    v62 = (v58 + v57[11]);
    *v62 = sub_238856808;
    v62[1] = v60;
    v63 = (v58 + v57[12]);
    *v63 = sub_238856810;
    v63[1] = v61;
    return swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_2388654EC(v18, type metadata accessor for GenerationSchema.Kind);
    v66 = v105[15];
    v65 = v105[16];
    v67 = sub_238815878(v105 + 12, v66);
    v115 = v31;
    v111 = v120;
    v112 = v121;
    v113 = v122;
    v114 = v123;
    v109 = v118;
    v110 = v119;
    v68 = v104;
    sub_2388653D8(v32, v104, type metadata accessor for GenerationSchema);
    v69 = v102 + 56;
    (*(v102 + 56))(v68, 0, 1, v101);
    v70 = v32;
    v71 = v93;
    sub_2388653D8(v70, v93, type metadata accessor for GenerationSchema);
    v72 = (*(v69 + 24) + 16) & ~*(v69 + 24);
    v73 = swift_allocObject();
    sub_238865440(v71, v73 + v72, type metadata accessor for GenerationSchema);
    v74 = v106;
    v75 = v103;
    sub_23884B7DC(&v115, v103, &v109, v67, v68, v95 & 1, 1, v106, sub_2388567D8, v73, &type metadata for GeneratedContent, v66, v65);

    sub_238827E88(v68, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v75, &qword_27DF2FFC0, &unk_2388D5A80);
    v76 = v74[1];
    v105 = *v74;
    v77 = v107;
    v78 = *(v107 + 20);
    v79 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
    v80 = v79[9];
    v81 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v82 = v108;
    (*(*(v81 - 8) + 16))(v108 + v80, v74 + v78, v81);
    v83 = *(v74 + *(v77 + 24));
    v84 = v98;
    sub_238865440(v74, v98, type metadata accessor for RawResponseStream);
    v85 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v86 = v31;
    v87 = (v97 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    sub_238865440(v84, v88 + v85, type metadata accessor for RawResponseStream);
    *(v88 + v87) = v86;
    *v82 = v105;
    v82[1] = v76;
    *(v82 + v79[10]) = v83;
    v89 = (v82 + v79[11]);
    *v89 = sub_2388313C0;
    v89[1] = 0;
    v90 = (v82 + v79[12]);
    *v90 = sub_2388567F0;
    v90[1] = v88;
  }
}

void *LanguageModelSession.streamResponse(schema:includeSchemaInPrompt:options:prompt:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v99 = a4;
  v88 = a2;
  v94 = a1;
  v98 = a5;
  v95 = type metadata accessor for GenerationSchema(0);
  v96 = *(v95 - 8);
  v6 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  v87 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for RawResponseStream(0);
  v89 = *(v93 - 8);
  v7 = *(v89 + 64);
  v8 = MEMORY[0x28223BE20](v93);
  v90 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = (v84 - v9);
  v10 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v84 - v11;
  v13 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  MEMORY[0x28223BE20](v13);
  v15 = v84 - v14;
  v16 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v16);
  v18 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v92 = v84 - v21;
  v22 = *(a3 + 48);
  v110 = *(a3 + 32);
  v111 = v22;
  v112 = *(a3 + 64);
  v113 = *(a3 + 80);
  v23 = *(a3 + 16);
  v108 = *a3;
  v109 = v23;
  v24 = v100;
  result = (v99)(&v114, v20);
  if (!v24)
  {
    v84[1] = v6;
    v85 = v13;
    v86 = v7;
    v99 = v15;
    v26 = v12;
    v27 = v91;
    v100 = 0;
    v28 = v114;
    v29 = type metadata accessor for PromptTemplate(0);
    v30 = v92;
    (*(*(v29 - 8) + 56))(v92, 1, 1, v29);
    v31 = v94;
    sub_2388653D8(v94, v18, type metadata accessor for GenerationSchema.Kind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {

      v32 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
      sub_2388654EC(&v18[*(v32 + 64)], type metadata accessor for StringGuides);
      sub_2388653D8(v31, v12, type metadata accessor for GenerationSchema);
      (*(v96 + 56))(v12, 0, 1, v95);
      v33 = v27[20];
      v34 = v27[21];
      v35 = sub_238815878(v27 + 17, v33);
      v107 = v28;
      v103 = v110;
      v104 = v111;
      v105 = v112;
      v106 = v113;
      v101 = v108;
      v102 = v109;
      v36 = v97;
      sub_23884B7DC(&v107, v30, &v101, v35, v12, 0, 1, v97, sub_23884B648, 0, MEMORY[0x277D837D0], v33, v34);
      sub_238827E88(v12, &qword_27DF2FE20, &qword_2388D5740);
      sub_238827E88(v30, &qword_27DF2FFC0, &unk_2388D5A80);
      v37 = v36[1];
      v95 = *v36;
      v94 = v37;
      v38 = v93;
      v39 = *(v93 + 20);
      v40 = v85;
      v41 = v85[9];
      v96 = v41;
      v42 = v28;
      v43 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
      v44 = *(v43 - 8);
      v45 = v99;
      (*(v44 + 32))(v99 + v41, v36 + v39, v43);
      v46 = *(v36 + *(v38 + 24));
      v47 = swift_allocObject();
      *(v47 + 16) = v42;
      v48 = v94;
      *v45 = v95;
      v45[1] = v48;
      *(v45 + v40[10]) = v46;
      v49 = (v45 + v40[11]);
      *v49 = sub_238830F10;
      v49[1] = 0;
      v50 = (v45 + v40[12]);
      *v50 = sub_238859730;
      v50[1] = v47;
      v52 = *v45;
      v51 = v45[1];
      v53 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
      v54 = v98;
      (*(v44 + 16))(v98 + v53[9], v45 + v96, v43);

      sub_238827E88(v45, &qword_27DF2FFC8, &qword_2388D5D30);
      v55 = swift_allocObject();
      *(v55 + 16) = v52;
      *(v55 + 24) = v51;
      v56 = swift_allocObject();
      *(v56 + 2) = v52;
      *(v56 + 3) = v51;
      *(v56 + 4) = v42;
      *v54 = v52;
      v54[1] = v51;
      *(v54 + v53[10]) = v46;
      v57 = (v54 + v53[11]);
      *v57 = sub_2388596B0;
      v57[1] = v55;
      v58 = (v54 + v53[12]);
      *v58 = sub_238859748;
      v58[1] = v56;
      return swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_2388654EC(v18, type metadata accessor for GenerationSchema.Kind);
      v59 = v28;
      v84[0] = v28;
      v61 = v27[15];
      v60 = v27[16];
      v62 = sub_238815878(v27 + 12, v61);
      v107 = v59;
      v103 = v110;
      v104 = v111;
      v105 = v112;
      v106 = v113;
      v101 = v108;
      v102 = v109;
      sub_2388653D8(v31, v26, type metadata accessor for GenerationSchema);
      v63 = v96 + 56;
      (*(v96 + 56))(v26, 0, 1, v95);
      v64 = v31;
      v65 = v87;
      sub_2388653D8(v64, v87, type metadata accessor for GenerationSchema);
      v66 = (*(v63 + 24) + 16) & ~*(v63 + 24);
      v67 = swift_allocObject();
      sub_238865440(v65, v67 + v66, type metadata accessor for GenerationSchema);
      v83 = v60;
      v68 = v97;
      sub_23884B7DC(&v107, v30, &v101, v62, v26, v88 & 1, 1, v97, sub_238859698, v67, &type metadata for GeneratedContent, v61, v83);

      sub_238827E88(v26, &qword_27DF2FE20, &qword_2388D5740);
      sub_238827E88(v30, &qword_27DF2FFC0, &unk_2388D5A80);
      v69 = v68[1];
      v99 = *v68;
      v70 = v93;
      v71 = *(v93 + 20);
      v72 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
      v73 = v72[9];
      v74 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
      v75 = v98;
      (*(*(v74 - 8) + 16))(v98 + v73, v68 + v71, v74);
      v76 = *(v68 + *(v70 + 24));
      v77 = v90;
      sub_238865440(v68, v90, type metadata accessor for RawResponseStream);
      v78 = (*(v89 + 80) + 16) & ~*(v89 + 80);
      v79 = (v86 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      sub_238865440(v77, v80 + v78, type metadata accessor for RawResponseStream);
      *(v80 + v79) = v84[0];
      *v75 = v99;
      v75[1] = v69;
      *(v75 + v72[10]) = v76;
      v81 = (v75 + v72[11]);
      *v81 = sub_2388313C0;
      v81[1] = 0;
      v82 = (v75 + v72[12]);
      *v82 = sub_2388596B4;
      v82[1] = v80;
    }
  }

  return result;
}

uint64_t LanguageModelSession.streamResponse<A>(to:generating:includeSchemaInPrompt:options:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v109 = a5;
  v93 = a3;
  v108 = a2;
  v107 = a7;
  v106 = type metadata accessor for RawResponseStream(0);
  v95 = *(v106 - 8);
  v10 = MEMORY[0x28223BE20](v106);
  v97 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v11;
  MEMORY[0x28223BE20](v10);
  v104 = (&v92 - v12);
  v13 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  MEMORY[0x28223BE20](v13 - 8);
  v102 = &v92 - v14;
  v94 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  MEMORY[0x28223BE20](v94);
  v16 = &v92 - v15;
  v17 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v92 - v21;
  v99 = type metadata accessor for GenerationSchema(0);
  v23 = *(v99 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v99);
  v92 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v92 - v26;
  v105 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  MEMORY[0x28223BE20](v105);
  v100 = &v92 - v28;
  v29 = *a1;
  v30 = *(a4 + 48);
  v119 = *(a4 + 32);
  v120 = v30;
  v121 = *(a4 + 64);
  v122 = *(a4 + 80);
  v31 = *(a4 + 16);
  v117 = *a4;
  v118 = v31;
  v32 = *(a6 + 40);
  v108 = a6;
  v32(v109, a6);
  v33 = type metadata accessor for PromptTemplate(0);
  v34 = *(*(v33 - 8) + 56);
  v101 = v22;
  v34(v22, 1, 1, v33);
  sub_2388653D8(v27, v19, type metadata accessor for GenerationSchema.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v98 = v29;
  if (EnumCaseMultiPayload == 4)
  {

    v36 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388654EC(&v19[*(v36 + 64)], type metadata accessor for StringGuides);
    v37 = v102;
    sub_2388653D8(v27, v102, type metadata accessor for GenerationSchema);
    (*(v23 + 56))(v37, 0, 1, v99);
    v38 = v103[20];
    v39 = v103[21];
    v40 = sub_238815878(v103 + 17, v38);
    v116 = v29;
    v112 = v119;
    v113 = v120;
    v114 = v121;
    v115 = v122;
    v110 = v117;
    v111 = v118;
    v90 = v38;
    v41 = v104;
    v42 = v101;
    sub_23884B7DC(&v116, v101, &v110, v40, v37, 0, 1, v104, sub_23884B648, 0, MEMORY[0x277D837D0], v90, v39);
    sub_238827E88(v37, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v42, &qword_27DF2FFC0, &unk_2388D5A80);
    sub_2388654EC(v27, type metadata accessor for GenerationSchema);
    v43 = *v41;
    v103 = v41[1];
    v44 = v106;
    v45 = *(v106 + 20);
    v46 = v94;
    v47 = *(v94 + 36);
    v48 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v49 = *(v48 - 8);
    (*(v49 + 32))(&v16[v47], v41 + v45, v48);
    v50 = *(v41 + *(v44 + 24));
    v51 = swift_allocObject();
    v52 = v98;
    *(v51 + 16) = v98;
    v53 = v103;
    *v16 = v43;
    *(v16 + 1) = v53;
    *&v16[v46[10]] = v50;
    v54 = &v16[v46[11]];
    *v54 = sub_238830F10;
    v54[1] = 0;
    v55 = &v16[v46[12]];
    *v55 = sub_238859730;
    v55[1] = v51;
    v57 = *v16;
    v56 = *(v16 + 1);
    v58 = v105;
    v59 = v100;
    (*(v49 + 16))(&v100[*(v105 + 36)], &v16[v47], v48);

    sub_238827E88(v16, &qword_27DF2FFC8, &qword_2388D5D30);
    v60 = swift_allocObject();
    *(v60 + 16) = v57;
    *(v60 + 24) = v56;
    v61 = swift_allocObject();
    *(v61 + 2) = v57;
    *(v61 + 3) = v56;
    *(v61 + 4) = v52;
    *v59 = v57;
    v59[1] = v56;
    *(v59 + v58[10]) = v50;
    v62 = (v59 + v58[11]);
    *v62 = sub_2388596B0;
    v62[1] = v60;
    v63 = (v59 + v58[12]);
    *v63 = sub_238859748;
    v63[1] = v61;
    swift_bridgeObjectRetain_n();
  }

  else
  {

    sub_2388654EC(v19, type metadata accessor for GenerationSchema.Kind);
    v64 = v103[15];
    v65 = v103[16];
    v66 = sub_238815878(v103 + 12, v64);
    v116 = v29;
    v112 = v119;
    v113 = v120;
    v114 = v121;
    v115 = v122;
    v110 = v117;
    v111 = v118;
    v67 = v102;
    sub_2388653D8(v27, v102, type metadata accessor for GenerationSchema);
    (*(v23 + 56))(v67, 0, 1, v99);
    v68 = v92;
    sub_2388653D8(v27, v92, type metadata accessor for GenerationSchema);
    v69 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v70 = swift_allocObject();
    sub_238865440(v68, v70 + v69, type metadata accessor for GenerationSchema);
    v91 = v64;
    v71 = v104;
    v72 = v101;
    sub_23884B7DC(&v116, v101, &v110, v66, v67, v93 & 1, 1, v104, sub_238859698, v70, &type metadata for GeneratedContent, v91, v65);

    sub_238827E88(v67, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v72, &qword_27DF2FFC0, &unk_2388D5A80);
    sub_2388654EC(v27, type metadata accessor for GenerationSchema);
    v74 = *v71;
    v73 = v71[1];
    v75 = v106;
    v76 = *(v106 + 20);
    v77 = v105;
    v78 = *(v105 + 36);
    v79 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v59 = v100;
    (*(*(v79 - 8) + 16))(&v100[v78], v71 + v76, v79);
    v80 = *(v71 + *(v75 + 24));
    v81 = v97;
    sub_238865440(v71, v97, type metadata accessor for RawResponseStream);
    v82 = (*(v95 + 80) + 16) & ~*(v95 + 80);
    v83 = (v96 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    sub_238865440(v81, v84 + v82, type metadata accessor for RawResponseStream);
    *(v84 + v83) = v98;
    *v59 = v74;
    v59[1] = v73;
    *(v59 + v77[10]) = v80;
    v85 = (v59 + v77[11]);
    *v85 = sub_2388313C0;
    v85[1] = 0;
    v86 = (v59 + v77[12]);
    *v86 = sub_2388596B4;
    v86[1] = v84;
  }

  v87 = v109;
  v88 = v108;
  nullsub_1();
  sub_23885FEF0(v87, v88, v107);
  return sub_238827E88(v59, &qword_27DF2FFD0, &qword_2388D6160);
}

uint64_t LanguageModelSession.streamResponse<A>(to:generating:includeSchemaInPrompt:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v120 = a7;
  v121 = a6;
  v103 = a4;
  v113 = a3;
  v119 = a8;
  v118 = type metadata accessor for RawResponseStream(0);
  v106 = *(v118 - 8);
  v11 = MEMORY[0x28223BE20](v118);
  v108 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v12;
  MEMORY[0x28223BE20](v11);
  v116 = (v101 - v13);
  v14 = sub_238810E44(&qword_27DF2FE20, &qword_2388D5740);
  MEMORY[0x28223BE20](v14 - 8);
  v114 = v101 - v15;
  v105 = sub_238810E44(&qword_27DF2FFC8, &qword_2388D5D30);
  MEMORY[0x28223BE20](v105);
  v104 = v101 - v16;
  v109 = type metadata accessor for GenerationSchema.Kind(0);
  MEMORY[0x28223BE20](v109);
  v18 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_238810E44(&qword_27DF2FFC0, &unk_2388D5A80);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v101 - v20;
  v111 = type metadata accessor for GenerationSchema(0);
  v112 = *(v111 - 8);
  v22 = MEMORY[0x28223BE20](v111);
  v102 = v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101[1] = v23;
  MEMORY[0x28223BE20](v22);
  v25 = v101 - v24;
  v117 = sub_238810E44(&qword_27DF2FFD0, &qword_2388D6160);
  v26 = MEMORY[0x28223BE20](v117);
  v110 = v101 - v27;
  v28 = *(a5 + 48);
  v133 = *(a5 + 32);
  v134 = v28;
  v135 = *(a5 + 64);
  v136 = *(a5 + 80);
  v29 = *(a5 + 16);
  v131 = *a5;
  v132 = v29;
  v130[0] = a1;
  v130[1] = a2;
  v129 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D837D0];
  v31 = *(MEMORY[0x277D837D0] - 8);
  MEMORY[0x28223BE20](v26);
  v33 = v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v33, v130, v30);
  v34 = off_284B407B0;
  swift_bridgeObjectRetain_n();
  (v34)(&v122);
  v35 = v30;
  v36 = *(v31 + 8);
  v36(v33, v30);
  sub_23881FAF4(v122);
  v37 = v129;
  v36(v130, v30);
  v38 = v120;

  (*(v38 + 40))(v121, v38);
  v39 = type metadata accessor for PromptTemplate(0);
  v40 = *(*(v39 - 8) + 56);
  v113 = v21;
  v40(v21, 1, 1, v39);
  v41 = v25;
  sub_2388653D8(v25, v18, type metadata accessor for GenerationSchema.Kind);
  if (swift_getEnumCaseMultiPayload() == 4)
  {

    v42 = sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0);
    sub_2388654EC(&v18[*(v42 + 64)], type metadata accessor for StringGuides);
    v43 = v114;
    sub_2388653D8(v25, v114, type metadata accessor for GenerationSchema);
    (*(v112 + 56))(v43, 0, 1, v111);
    v45 = v115[20];
    v44 = v115[21];
    v46 = sub_238815878(v115 + 17, v45);
    v128 = v37;
    v124 = v133;
    v125 = v134;
    v126 = v135;
    v127 = v136;
    v122 = v131;
    v123 = v132;
    v47 = v116;
    v48 = v113;
    sub_23884B7DC(&v128, v113, &v122, v46, v43, 0, 1, v116, sub_23884B648, 0, v35, v45, v44);
    sub_238827E88(v43, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v48, &qword_27DF2FFC0, &unk_2388D5A80);
    sub_2388654EC(v25, type metadata accessor for GenerationSchema);
    v49 = v47[1];
    v115 = *v47;
    v50 = v37;
    v51 = v118;
    v52 = *(v118 + 20);
    v53 = v105;
    v54 = *(v105 + 36);
    v55 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v56 = *(v55 - 8);
    v57 = v104;
    (*(v56 + 32))(&v104[v54], v47 + v52, v55);
    v58 = *(v47 + *(v51 + 24));
    v59 = swift_allocObject();
    v60 = v50;
    *(v59 + 16) = v50;
    *v57 = v115;
    *(v57 + 1) = v49;
    *&v57[v53[10]] = v58;
    v61 = &v57[v53[11]];
    *v61 = sub_238830F10;
    v61[1] = 0;
    v62 = &v57[v53[12]];
    *v62 = sub_238859730;
    v62[1] = v59;
    v64 = *v57;
    v63 = *(v57 + 1);
    v65 = v117;
    v66 = v110;
    (*(v56 + 16))(&v110[*(v117 + 36)], &v57[v54], v55);

    sub_238827E88(v57, &qword_27DF2FFC8, &qword_2388D5D30);
    v67 = swift_allocObject();
    *(v67 + 16) = v64;
    *(v67 + 24) = v63;
    v68 = swift_allocObject();
    *(v68 + 2) = v64;
    *(v68 + 3) = v63;
    *(v68 + 4) = v60;
    *v66 = v64;
    v66[1] = v63;
    *(v66 + v65[10]) = v58;
    v69 = (v66 + v65[11]);
    *v69 = sub_2388596B0;
    v69[1] = v67;
    v70 = (v66 + v65[12]);
    *v70 = sub_238859748;
    v70[1] = v68;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_2388654EC(v18, type metadata accessor for GenerationSchema.Kind);
    v72 = v115[15];
    v71 = v115[16];
    v73 = sub_238815878(v115 + 12, v72);
    v74 = v37;
    v128 = v37;
    v124 = v133;
    v125 = v134;
    v126 = v135;
    v127 = v136;
    v122 = v131;
    v123 = v132;
    v75 = v41;
    v76 = v114;
    sub_2388653D8(v41, v114, type metadata accessor for GenerationSchema);
    v77 = v112 + 56;
    (*(v112 + 56))(v76, 0, 1, v111);
    v78 = v102;
    sub_2388653D8(v75, v102, type metadata accessor for GenerationSchema);
    v79 = (*(v77 + 24) + 16) & ~*(v77 + 24);
    v80 = swift_allocObject();
    sub_238865440(v78, v80 + v79, type metadata accessor for GenerationSchema);
    v100 = v71;
    v81 = v116;
    v82 = v113;
    sub_23884B7DC(&v128, v113, &v122, v73, v76, v103 & 1, 1, v116, sub_238859698, v80, &type metadata for GeneratedContent, v72, v100);

    sub_238827E88(v76, &qword_27DF2FE20, &qword_2388D5740);
    sub_238827E88(v82, &qword_27DF2FFC0, &unk_2388D5A80);
    sub_2388654EC(v75, type metadata accessor for GenerationSchema);
    v83 = v81[1];
    v115 = *v81;
    v84 = v118;
    v85 = *(v118 + 20);
    v86 = v74;
    v87 = v117;
    v88 = *(v117 + 36);
    v89 = sub_238810E44(&qword_27DF2FCF0, &unk_2388D53D0);
    v66 = v110;
    (*(*(v89 - 8) + 16))(&v110[v88], v81 + v85, v89);
    v90 = *(v81 + *(v84 + 24));
    v91 = v108;
    sub_238865440(v81, v108, type metadata accessor for RawResponseStream);
    v92 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v93 = (v107 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    sub_238865440(v91, v94 + v92, type metadata accessor for RawResponseStream);
    *(v94 + v93) = v86;
    *v66 = v115;
    v66[1] = v83;
    *(v66 + v87[10]) = v90;
    v95 = (v66 + v87[11]);
    *v95 = sub_2388313C0;
    v95[1] = 0;
    v96 = (v66 + v87[12]);
    *v96 = sub_2388596B4;
    v96[1] = v94;
  }

  v97 = v121;
  v98 = v120;
  nullsub_1();
  sub_23885FEF0(v97, v98, v119);
  return sub_238827E88(v66, &qword_27DF2FFD0, &qword_2388D6160);
}