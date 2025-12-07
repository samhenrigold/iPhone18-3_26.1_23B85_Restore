uint64_t sub_22B287CC8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1896) = v1;

  v4 = *(v3 + 648);

  if (v1)
  {
    v5 = sub_22B28B8B0;
  }

  else
  {

    v5 = sub_22B287E54;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B287E54()
{
  type metadata accessor for AMIRecordsProcessor(0);
  swift_allocObject();
  v0[238] = sub_22B1B79F4();
  v1 = swift_task_alloc();
  v0[239] = v1;
  *v1 = v0;
  v1[1] = sub_22B287F10;
  v2 = v0[72];
  v3 = v0[71];

  return sub_22B1C437C(v3, v2);
}

uint64_t sub_22B287F10()
{
  v2 = *v1;
  *(*v1 + 1920) = v0;

  v3 = *(v2 + 648);

  if (v0)
  {
    v4 = sub_22B28BD10;
  }

  else
  {
    v4 = sub_22B288058;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B288058(__n128 a1)
{
  if (*(v1 + 2016) == 1)
  {
    v2 = *(v1 + 1424);
    v3 = *(v1 + 1344);
    v22 = *(v1 + 1256);
    v4 = *(v1 + 1232);
    v20 = *(v1 + 1224);
    v19 = *(v1 + 1200);
    v18 = *(v1 + 1192);
    v17 = *(v1 + 1184);
    v15 = *(v1 + 1760);
    v16 = *(v1 + 1176);
    v23 = *(v1 + 1136);
    v5 = *(v1 + 1128);
    v21 = *(v1 + 1120);
    v6 = *(v1 + 1096);
    v7 = *(v1 + 1088);
    v8 = *(v1 + 864);
    v9 = *(v1 + 856);
    v10 = *(v1 + 848);

    (*(v9 + 8))(v8, v10);
    v11 = *(v6 + 8);
    v11(v5, v7);
    v11(v16, v7);
    v11(v17, v7);
    v11(v18, v7);
    v11(v19, v7);
    (*(v4 + 8))(v22, v20);

    v11(v21, v7);
    v11(v23, v7);

    v12 = *(v1 + 8);

    return v12(1);
  }

  else
  {
    if (qword_281408E00 != -1)
    {
      swift_once();
    }

    v14 = qword_28140BC80;
    *(v1 + 1928) = qword_28140BC80;
    sub_22B35F5BC();
    sub_22B35DDCC();

    return MEMORY[0x2822009F8](sub_22B288558, v14, 0);
  }
}

uint64_t sub_22B288558()
{
  v1 = v0[145];
  v2 = v0[137];
  v3 = v0[136];
  v4 = v0[81];
  sub_22B21AAAC(v1);
  v5 = *(v2 + 8);
  v0[242] = v5;
  v0[243] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);

  return MEMORY[0x2822009F8](sub_22B28860C, v4, 0);
}

uint64_t sub_22B28860C()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[114];
  v2 = v0[110];
  v3 = v0[109];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  v0[244] = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v0[245] = v5;
  v0[246] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Notifying clients of electricity data refresh", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[114];
  v10 = v0[110];
  v11 = v0[109];

  v12 = *(v10 + 8);
  v0[247] = v12;
  v12(v9, v11);
  v13 = swift_task_alloc();
  v0[248] = v13;
  *v13 = v0;
  v13[1] = sub_22B2887F4;

  return sub_22B3515E8(0xD000000000000014, 0x800000022B36D4B0);
}

uint64_t sub_22B2887F4()
{
  v1 = *(*v0 + 648);

  return MEMORY[0x2822009F8](sub_22B288904, v1, 0);
}

uint64_t sub_22B288904()
{
  (*(v0 + 1960))(*(v0 + 904), *(v0 + 1952), *(v0 + 872));
  v1 = sub_22B36050C();
  v2 = sub_22B360CFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "Updating Client on electricity data refresh", v3, 2u);
    MEMORY[0x23188F650](v3, -1, -1);
  }

  v4 = *(v0 + 1976);
  v5 = *(v0 + 1960);
  v6 = *(v0 + 1952);
  v7 = *(v0 + 1368);
  v8 = *(v0 + 904);
  v9 = *(v0 + 896);
  v10 = *(v0 + 872);

  v4(v8, v10);
  v11 = *(v7 + 112);
  sub_22B35EF1C();
  v12 = sub_22B36081C();

  [v11 postNotificationName:v12 object:0 userInfo:0 deliverImmediately:1];

  v5(v9, v6, v10);
  v13 = sub_22B36050C();
  v14 = sub_22B360CFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22B116000, v13, v14, "Updated Client on electricity data refresh", v15, 2u);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  v30 = *(v0 + 1976);
  v16 = *(v0 + 1936);
  v28 = *(v0 + 1760);
  v25 = *(v0 + 1424);
  v17 = *(v0 + 1344);
  v18 = *(v0 + 1232);
  v34 = *(v0 + 1200);
  v35 = *(v0 + 1224);
  v32 = *(v0 + 1184);
  v33 = *(v0 + 1192);
  v31 = *(v0 + 1176);
  v37 = *(v0 + 1256);
  v38 = *(v0 + 1136);
  v29 = *(v0 + 1128);
  v36 = *(v0 + 1120);
  v19 = *(v0 + 1088);
  v24 = *(v0 + 896);
  v20 = *(v0 + 872);
  v27 = *(v0 + 864);
  v21 = *(v0 + 856);
  v26 = *(v0 + 848);

  v30(v24, v20);
  (*(v21 + 8))(v27, v26);
  v16(v29, v19);
  v16(v31, v19);
  v16(v32, v19);
  v16(v33, v19);
  v16(v34, v19);
  (*(v18 + 8))(v37, v35);

  v16(v36, v19);
  v16(v38, v19);

  v22 = *(v0 + 8);

  return v22(1);
}

uint64_t sub_22B288EFC()
{
  v1 = *(v0 + 1272);
  v13 = *(v0 + 1256);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1184);
  v7 = *(v0 + 1176);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);

  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  v10(v5, v9);
  v10(v4, v9);
  (*(v2 + 8))(v13, v3);

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_22B2892B4()
{
  v1 = *(v0 + 1384);
  v13 = *(v0 + 1256);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1200);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1184);
  v7 = *(v0 + 1176);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);

  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  v10(v5, v9);
  v10(v4, v9);
  (*(v2 + 8))(v13, v3);

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_22B28966C()
{
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1232);
  v14 = *(v0 + 1224);
  v15 = *(v0 + 1256);
  v13 = *(v0 + 1200);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1184);
  v7 = *(v0 + 1176);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);

  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  v10(v5, v9);
  v10(v13, v9);
  (*(v4 + 8))(v15, v14);

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_22B289A34()
{
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1344);
  v15 = *(v0 + 1256);
  v4 = *(v0 + 1232);
  v13 = *(v0 + 1200);
  v14 = *(v0 + 1224);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1184);
  v7 = *(v0 + 1176);
  v8 = *(v0 + 1096);
  v9 = *(v0 + 1088);

  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  v10(v5, v9);
  v10(v13, v9);
  (*(v4 + 8))(v15, v14);

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_22B289E08()
{
  v1 = *(v0 + 1640);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22B116000, v7, v8, "[MOCK GENERATOR] Interval Readings error %@", v9, 0xCu);
    sub_22B123284(v10, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 880) + 8))(*(v0 + 888), *(v0 + 872));
  *(v0 + 1760) = *(v0 + 1384);
  v13 = *(v0 + 1352);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1128);
  v16 = *(v0 + 1088);
  v17 = *(v0 + 840);
  v18 = *(v0 + 832);
  v19 = *(v0 + 824);
  v13(*(v0 + 1136), *(v0 + 1192), v16);
  v13(v15, v14, v16);
  (*(v18 + 104))(v17, *MEMORY[0x277CC9830], v19);
  sub_22B35DFAC();
  (*(v18 + 8))(v17, v19);
  sub_22B35F41C();
  if (v20)
  {
    v21 = *(v0 + 1312);
    v22 = *(v0 + 1224);
    v23 = *(v0 + 1208);
    sub_22B35E05C();

    if (v21(v23, 1, v22) == 1)
    {
      sub_22B123284(*(v0 + 1208), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v24 = *(v0 + 1248);
      v25 = *(v0 + 1240);
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      (*(v0 + 1328))(v24, *(v0 + 1208), v27);
      (*(v26 + 16))(v25, v24, v27);
      sub_22B35E01C();
      (*(v26 + 8))(v24, v27);
    }
  }

  (*(v0 + 1352))(*(v0 + 1120), *(v0 + 1136), *(v0 + 1088));
  v28 = MEMORY[0x277D84F90];
  *(v0 + 560) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    *(v0 + 1880) = v28;

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 1304);
    v30 = *(v0 + 1288);
    v31 = swift_task_alloc();
    *(v0 + 1888) = v31;
    *v31 = v0;
    v31[1] = sub_22B287CC8;
    v32 = *(v0 + 1424);
    v33 = *(v0 + 1296);
    v34 = *(v0 + 1280);
    v35 = MEMORY[0x277D84F90];

    return sub_22B1D59F4(v35, v34, v30, v33, v29, v32);
  }

  else
  {
    *(v0 + 1996) = *MEMORY[0x277D074B0];
    v37 = MEMORY[0x277D07468];
    *(v0 + 2000) = *MEMORY[0x277D074A8];
    *(v0 + 2004) = *v37;
    *(v0 + 2008) = *MEMORY[0x277D07470];
    *(v0 + 1768) = v28;
    v38 = *(v0 + 1200);
    v39 = *(v0 + 1136);
    v40 = *(v0 + 1120);
    v41 = *(v0 + 864);
    v42 = MEMORY[0x23188EEB0]();
    sub_22B26CCC4(v41, v40, v39, v38);
    *(v0 + 1776) = 0;
    objc_autoreleasePoolPop(v42);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 1996);
    v44 = *(v0 + 1352);
    v45 = *(v0 + 1304);
    v46 = *(v0 + 1288);
    v47 = *(v0 + 1160);
    v48 = *(v0 + 1136);
    v49 = *(v0 + 1088);
    v50 = *(v0 + 816);
    v51 = *(v0 + 808);
    v52 = *(v0 + 800);
    *(v0 + 1784) = qword_27D8BB198;
    v44(v47, v48, v49);
    v53 = *(v51 + 104);
    *(v0 + 1792) = v53;
    *(v0 + 1800) = (v51 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v53(v50, v43, v52);
    v54 = swift_task_alloc();
    *(v0 + 1808) = v54;
    *v54 = v0;
    v54[1] = sub_22B2862E4;
    v55 = *(v0 + 1296);
    v56 = *(v0 + 1280);
    v57 = *(v0 + 1160);
    v58 = *(v0 + 1120);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v57, v58, v56, v46, v55, v45);
  }
}

uint64_t sub_22B28A4AC()
{

  v1 = *(v0 + 1664);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22B116000, v7, v8, "[MOCK GENERATOR] Interval Readings error %@", v9, 0xCu);
    sub_22B123284(v10, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 880) + 8))(*(v0 + 888), *(v0 + 872));
  *(v0 + 1760) = *(v0 + 1384);
  v13 = *(v0 + 1352);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1128);
  v16 = *(v0 + 1088);
  v17 = *(v0 + 840);
  v18 = *(v0 + 832);
  v19 = *(v0 + 824);
  v13(*(v0 + 1136), *(v0 + 1192), v16);
  v13(v15, v14, v16);
  (*(v18 + 104))(v17, *MEMORY[0x277CC9830], v19);
  sub_22B35DFAC();
  (*(v18 + 8))(v17, v19);
  sub_22B35F41C();
  if (v20)
  {
    v21 = *(v0 + 1312);
    v22 = *(v0 + 1224);
    v23 = *(v0 + 1208);
    sub_22B35E05C();

    if (v21(v23, 1, v22) == 1)
    {
      sub_22B123284(*(v0 + 1208), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v24 = *(v0 + 1248);
      v25 = *(v0 + 1240);
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      (*(v0 + 1328))(v24, *(v0 + 1208), v27);
      (*(v26 + 16))(v25, v24, v27);
      sub_22B35E01C();
      (*(v26 + 8))(v24, v27);
    }
  }

  (*(v0 + 1352))(*(v0 + 1120), *(v0 + 1136), *(v0 + 1088));
  v28 = MEMORY[0x277D84F90];
  *(v0 + 560) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    *(v0 + 1880) = v28;

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 1304);
    v30 = *(v0 + 1288);
    v31 = swift_task_alloc();
    *(v0 + 1888) = v31;
    *v31 = v0;
    v31[1] = sub_22B287CC8;
    v32 = *(v0 + 1424);
    v33 = *(v0 + 1296);
    v34 = *(v0 + 1280);
    v35 = MEMORY[0x277D84F90];

    return sub_22B1D59F4(v35, v34, v30, v33, v29, v32);
  }

  else
  {
    *(v0 + 1996) = *MEMORY[0x277D074B0];
    v37 = MEMORY[0x277D07468];
    *(v0 + 2000) = *MEMORY[0x277D074A8];
    *(v0 + 2004) = *v37;
    *(v0 + 2008) = *MEMORY[0x277D07470];
    *(v0 + 1768) = v28;
    v38 = *(v0 + 1200);
    v39 = *(v0 + 1136);
    v40 = *(v0 + 1120);
    v41 = *(v0 + 864);
    v42 = MEMORY[0x23188EEB0]();
    sub_22B26CCC4(v41, v40, v39, v38);
    *(v0 + 1776) = 0;
    objc_autoreleasePoolPop(v42);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 1996);
    v44 = *(v0 + 1352);
    v45 = *(v0 + 1304);
    v46 = *(v0 + 1288);
    v47 = *(v0 + 1160);
    v48 = *(v0 + 1136);
    v49 = *(v0 + 1088);
    v50 = *(v0 + 816);
    v51 = *(v0 + 808);
    v52 = *(v0 + 800);
    *(v0 + 1784) = qword_27D8BB198;
    v44(v47, v48, v49);
    v53 = *(v51 + 104);
    *(v0 + 1792) = v53;
    *(v0 + 1800) = (v51 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v53(v50, v43, v52);
    v54 = swift_task_alloc();
    *(v0 + 1808) = v54;
    *v54 = v0;
    v54[1] = sub_22B2862E4;
    v55 = *(v0 + 1296);
    v56 = *(v0 + 1280);
    v57 = *(v0 + 1160);
    v58 = *(v0 + 1120);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v57, v58, v56, v46, v55, v45);
  }
}

uint64_t sub_22B28AB58()
{

  v1 = *(v0 + 1712);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22B116000, v7, v8, "[MOCK GENERATOR] Interval Readings error %@", v9, 0xCu);
    sub_22B123284(v10, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 880) + 8))(*(v0 + 888), *(v0 + 872));
  *(v0 + 1760) = *(v0 + 1384);
  v13 = *(v0 + 1352);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1128);
  v16 = *(v0 + 1088);
  v17 = *(v0 + 840);
  v18 = *(v0 + 832);
  v19 = *(v0 + 824);
  v13(*(v0 + 1136), *(v0 + 1192), v16);
  v13(v15, v14, v16);
  (*(v18 + 104))(v17, *MEMORY[0x277CC9830], v19);
  sub_22B35DFAC();
  (*(v18 + 8))(v17, v19);
  sub_22B35F41C();
  if (v20)
  {
    v21 = *(v0 + 1312);
    v22 = *(v0 + 1224);
    v23 = *(v0 + 1208);
    sub_22B35E05C();

    if (v21(v23, 1, v22) == 1)
    {
      sub_22B123284(*(v0 + 1208), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v24 = *(v0 + 1248);
      v25 = *(v0 + 1240);
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      (*(v0 + 1328))(v24, *(v0 + 1208), v27);
      (*(v26 + 16))(v25, v24, v27);
      sub_22B35E01C();
      (*(v26 + 8))(v24, v27);
    }
  }

  (*(v0 + 1352))(*(v0 + 1120), *(v0 + 1136), *(v0 + 1088));
  v28 = MEMORY[0x277D84F90];
  *(v0 + 560) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    *(v0 + 1880) = v28;

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 1304);
    v30 = *(v0 + 1288);
    v31 = swift_task_alloc();
    *(v0 + 1888) = v31;
    *v31 = v0;
    v31[1] = sub_22B287CC8;
    v32 = *(v0 + 1424);
    v33 = *(v0 + 1296);
    v34 = *(v0 + 1280);
    v35 = MEMORY[0x277D84F90];

    return sub_22B1D59F4(v35, v34, v30, v33, v29, v32);
  }

  else
  {
    *(v0 + 1996) = *MEMORY[0x277D074B0];
    v37 = MEMORY[0x277D07468];
    *(v0 + 2000) = *MEMORY[0x277D074A8];
    *(v0 + 2004) = *v37;
    *(v0 + 2008) = *MEMORY[0x277D07470];
    *(v0 + 1768) = v28;
    v38 = *(v0 + 1200);
    v39 = *(v0 + 1136);
    v40 = *(v0 + 1120);
    v41 = *(v0 + 864);
    v42 = MEMORY[0x23188EEB0]();
    sub_22B26CCC4(v41, v40, v39, v38);
    *(v0 + 1776) = 0;
    objc_autoreleasePoolPop(v42);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 1996);
    v44 = *(v0 + 1352);
    v45 = *(v0 + 1304);
    v46 = *(v0 + 1288);
    v47 = *(v0 + 1160);
    v48 = *(v0 + 1136);
    v49 = *(v0 + 1088);
    v50 = *(v0 + 816);
    v51 = *(v0 + 808);
    v52 = *(v0 + 800);
    *(v0 + 1784) = qword_27D8BB198;
    v44(v47, v48, v49);
    v53 = *(v51 + 104);
    *(v0 + 1792) = v53;
    *(v0 + 1800) = (v51 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v53(v50, v43, v52);
    v54 = swift_task_alloc();
    *(v0 + 1808) = v54;
    *v54 = v0;
    v54[1] = sub_22B2862E4;
    v55 = *(v0 + 1296);
    v56 = *(v0 + 1280);
    v57 = *(v0 + 1160);
    v58 = *(v0 + 1120);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v57, v58, v56, v46, v55, v45);
  }
}

uint64_t sub_22B28B204()
{

  v1 = *(v0 + 1744);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22B116000, v7, v8, "[MOCK GENERATOR] Interval Readings error %@", v9, 0xCu);
    sub_22B123284(v10, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 880) + 8))(*(v0 + 888), *(v0 + 872));
  *(v0 + 1760) = *(v0 + 1384);
  v13 = *(v0 + 1352);
  v14 = *(v0 + 1184);
  v15 = *(v0 + 1128);
  v16 = *(v0 + 1088);
  v17 = *(v0 + 840);
  v18 = *(v0 + 832);
  v19 = *(v0 + 824);
  v13(*(v0 + 1136), *(v0 + 1192), v16);
  v13(v15, v14, v16);
  (*(v18 + 104))(v17, *MEMORY[0x277CC9830], v19);
  sub_22B35DFAC();
  (*(v18 + 8))(v17, v19);
  sub_22B35F41C();
  if (v20)
  {
    v21 = *(v0 + 1312);
    v22 = *(v0 + 1224);
    v23 = *(v0 + 1208);
    sub_22B35E05C();

    if (v21(v23, 1, v22) == 1)
    {
      sub_22B123284(*(v0 + 1208), &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v24 = *(v0 + 1248);
      v25 = *(v0 + 1240);
      v26 = *(v0 + 1232);
      v27 = *(v0 + 1224);
      (*(v0 + 1328))(v24, *(v0 + 1208), v27);
      (*(v26 + 16))(v25, v24, v27);
      sub_22B35E01C();
      (*(v26 + 8))(v24, v27);
    }
  }

  (*(v0 + 1352))(*(v0 + 1120), *(v0 + 1136), *(v0 + 1088));
  v28 = MEMORY[0x277D84F90];
  *(v0 + 560) = MEMORY[0x277D84F90];
  swift_beginAccess();
  swift_beginAccess();
  sub_22B28C170(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36074C())
  {
    *(v0 + 1880) = v28;

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 1304);
    v30 = *(v0 + 1288);
    v31 = swift_task_alloc();
    *(v0 + 1888) = v31;
    *v31 = v0;
    v31[1] = sub_22B287CC8;
    v32 = *(v0 + 1424);
    v33 = *(v0 + 1296);
    v34 = *(v0 + 1280);
    v35 = MEMORY[0x277D84F90];

    return sub_22B1D59F4(v35, v34, v30, v33, v29, v32);
  }

  else
  {
    *(v0 + 1996) = *MEMORY[0x277D074B0];
    v37 = MEMORY[0x277D07468];
    *(v0 + 2000) = *MEMORY[0x277D074A8];
    *(v0 + 2004) = *v37;
    *(v0 + 2008) = *MEMORY[0x277D07470];
    *(v0 + 1768) = v28;
    v38 = *(v0 + 1200);
    v39 = *(v0 + 1136);
    v40 = *(v0 + 1120);
    v41 = *(v0 + 864);
    v42 = MEMORY[0x23188EEB0]();
    sub_22B26CCC4(v41, v40, v39, v38);
    *(v0 + 1776) = 0;
    objc_autoreleasePoolPop(v42);
    if (qword_27D8B9F60 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 1996);
    v44 = *(v0 + 1352);
    v45 = *(v0 + 1304);
    v46 = *(v0 + 1288);
    v47 = *(v0 + 1160);
    v48 = *(v0 + 1136);
    v49 = *(v0 + 1088);
    v50 = *(v0 + 816);
    v51 = *(v0 + 808);
    v52 = *(v0 + 800);
    *(v0 + 1784) = qword_27D8BB198;
    v44(v47, v48, v49);
    v53 = *(v51 + 104);
    *(v0 + 1792) = v53;
    *(v0 + 1800) = (v51 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v53(v50, v43, v52);
    v54 = swift_task_alloc();
    *(v0 + 1808) = v54;
    *v54 = v0;
    v54[1] = sub_22B2862E4;
    v55 = *(v0 + 1296);
    v56 = *(v0 + 1280);
    v57 = *(v0 + 1160);
    v58 = *(v0 + 1120);

    return sub_22B11EF20(0x68746E6F6DLL, 0xE500000000000000, v57, v58, v56, v46, v55, v45);
  }
}

uint64_t sub_22B28B8B0()
{
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1344);
  v20 = *(v0 + 1256);
  v3 = *(v0 + 1232);
  v18 = *(v0 + 1224);
  v17 = *(v0 + 1200);
  v16 = *(v0 + 1192);
  v15 = *(v0 + 1184);
  v13 = *(v0 + 1760);
  v14 = *(v0 + 1176);
  v21 = *(v0 + 1136);
  v4 = *(v0 + 1128);
  v19 = *(v0 + 1120);
  v5 = *(v0 + 1096);
  v6 = *(v0 + 1088);
  v7 = *(v0 + 864);
  v8 = *(v0 + 856);
  v9 = *(v0 + 848);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v14, v6);
  v10(v15, v6);
  v10(v16, v6);
  v10(v17, v6);
  (*(v3 + 8))(v20, v18);

  v10(v19, v6);
  v10(v21, v6);

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_22B28BD10()
{
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1344);
  v20 = *(v0 + 1256);
  v3 = *(v0 + 1232);
  v18 = *(v0 + 1224);
  v17 = *(v0 + 1200);
  v16 = *(v0 + 1192);
  v15 = *(v0 + 1184);
  v13 = *(v0 + 1760);
  v14 = *(v0 + 1176);
  v21 = *(v0 + 1136);
  v4 = *(v0 + 1128);
  v19 = *(v0 + 1120);
  v5 = *(v0 + 1096);
  v6 = *(v0 + 1088);
  v7 = *(v0 + 864);
  v8 = *(v0 + 856);
  v9 = *(v0 + 848);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v14, v6);
  v10(v15, v6);
  v10(v16, v6);
  v10(v17, v6);
  (*(v3 + 8))(v20, v18);

  v10(v19, v6);
  v10(v21, v6);

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_22B28C170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B28C1B8()
{
  type metadata accessor for HomeEnergyUINotificationManager();
  v0 = swift_allocObject();
  result = sub_22B28C1F4();
  qword_28140BD40 = v0;
  return result;
}

uint64_t sub_22B28C1F4()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v1 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v2 = sub_22B36081C();
  v3 = [v1 initWithBundleIdentifier_];

  v4 = *(v0 + 24);
  *(v0 + 24) = v3;

  *(v0 + 16) = sub_22B28C290() & 1;
  return v0;
}

uint64_t sub_22B28C290()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = &v39 - v7;
  MEMORY[0x28223BE20](v8);
  v41 = &v39 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v14 = *(v3 + 16);
  v14(v12, v13, v2);
  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v14;
    v18 = v5;
    v19 = v2;
    v20 = v1;
    v21 = v3;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "Checking authorization for notifications", v17, 2u);
    v23 = v22;
    v3 = v21;
    v1 = v20;
    v2 = v19;
    v5 = v18;
    v14 = v39;
    MEMORY[0x23188F650](v23, -1, -1);
  }

  v24 = *(v3 + 8);
  v24(v12, v2);
  v25 = *(v1 + 24);
  if (v25 && (v26 = [v25 notificationSettings]) != 0)
  {
    v27 = v26;
    if ([v26 authorizationStatus]== 2)
    {
      v28 = v41;
      v14(v41, v13, v2);
      v29 = sub_22B36050C();
      v30 = sub_22B360D2C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22B116000, v29, v30, "Authorization granted", v31, 2u);
        MEMORY[0x23188F650](v31, -1, -1);
      }

      v32 = 1;
    }

    else
    {
      v28 = v40;
      v14(v40, v13, v2);
      v35 = sub_22B36050C();
      v36 = sub_22B360D2C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_22B116000, v35, v36, "Authorization unknown/rejected", v37, 2u);
        MEMORY[0x23188F650](v37, -1, -1);
      }

      v32 = 0;
    }
  }

  else
  {
    v14(v5, v13, v2);
    v27 = sub_22B36050C();
    v33 = sub_22B360D1C();
    if (os_log_type_enabled(v27, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22B116000, v27, v33, "Failed to get notification settings", v34, 2u);
      MEMORY[0x23188F650](v34, -1, -1);
    }

    v32 = 0;
    v28 = v5;
  }

  v24(v28, v2);
  return v32;
}

uint64_t sub_22B28C6E0()
{
  v1[47] = v0;
  v2 = sub_22B36052C();
  v1[48] = v2;
  v1[49] = *(v2 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B28C7E8, 0, 0);
}

uint64_t sub_22B28C7E8()
{
  v1 = *(v0[47] + 24);
  v0[57] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 46;
    v0[3] = sub_22B28CAA0;
    v2 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC10, &qword_22B366A60);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_22B28D65C;
    v0[21] = &block_descriptor_12_0;
    v0[22] = v2;
    [v1 getNotificationSettingsWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v3 = v0[51];
    v4 = v0[48];
    v5 = v0[49];
    v6 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "Failed to get notification settings", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v10 = v0[51];
    v11 = v0[48];
    v12 = v0[49];
    v13 = v0[47];

    (*(v12 + 8))(v10, v11);
    *(v13 + 16) = 0;

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_22B28CAA0()
{

  return MEMORY[0x2822009F8](sub_22B28CB80, 0, 0);
}

uint64_t sub_22B28CB80()
{
  v1 = v0[57];
  v2 = v0[46];
  v0[58] = v2;

  v3 = [v2 authorizationStatus];
  if (v3 > 2)
  {
    if ((v3 - 3) >= 2)
    {
LABEL_26:

LABEL_27:
      v15 = 0;
LABEL_28:
      *(v0[47] + 16) = v15;
LABEL_29:

      v48 = v0[1];

      return v48(v15);
    }

LABEL_11:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = v0[52];
    v17 = v0[48];
    v18 = v0[49];
    v19 = __swift_project_value_buffer(v17, qword_28140BD10);
    swift_beginAccess();
    (*(v18 + 16))(v16, v19, v17);
    v20 = sub_22B36050C();
    v21 = sub_22B360D2C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[52];
    v24 = v0[48];
    v25 = v0[49];
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B116000, v20, v21, "Authorization rejected", v26, 2u);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    (*(v25 + 8))(v23, v24);
    goto LABEL_27;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v4 = v0[56];
        v5 = v0[48];
        v6 = v0[49];
        v7 = __swift_project_value_buffer(v5, qword_28140BD10);
        swift_beginAccess();
        (*(v6 + 16))(v4, v7, v5);
        v8 = sub_22B36050C();
        v9 = sub_22B360D2C();
        v10 = os_log_type_enabled(v8, v9);
        v11 = v0[56];
        v12 = v0[48];
        v13 = v0[49];
        if (v10)
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_22B116000, v8, v9, "Authorization granted", v14, 2u);
          MEMORY[0x23188F650](v14, -1, -1);
        }

        (*(v13 + 8))(v11, v12);
        v15 = 1;
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    goto LABEL_11;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v27 = v0[55];
  v28 = v0[48];
  v29 = v0[49];
  v30 = __swift_project_value_buffer(v28, qword_28140BD10);
  v0[59] = v30;
  swift_beginAccess();
  v31 = *(v29 + 16);
  v0[60] = v31;
  v0[61] = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v27, v30, v28);
  v32 = sub_22B36050C();
  v33 = sub_22B360D2C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_22B116000, v32, v33, "Authorization not determined", v34, 2u);
    MEMORY[0x23188F650](v34, -1, -1);
  }

  v36 = v0[54];
  v35 = v0[55];
  v37 = v0[48];
  v38 = v0[49];

  v39 = *(v38 + 8);
  v0[62] = v39;
  v56 = v39;
  v39(v35, v37);
  v31(v36, v30, v37);
  v40 = sub_22B36050C();
  v41 = sub_22B360D2C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_22B116000, v40, v41, "Requesting authorization for notifications", v42, 2u);
    MEMORY[0x23188F650](v42, -1, -1);
  }

  v43 = v0[54];
  v44 = v0[48];
  v45 = v0[47];

  v56(v43, v44);
  v46 = *(v45 + 24);
  v0[63] = v46;
  if (!v46)
  {
    v31(v0[53], v30, v0[48]);
    v49 = sub_22B36050C();
    v50 = sub_22B360D2C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[53];
    v53 = v0[48];
    if (v51)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_22B116000, v49, v50, "Authorization rejected", v54, 2u);
      MEMORY[0x23188F650](v54, -1, -1);
    }

    v56(v52, v53);
    v15 = 0;
    goto LABEL_29;
  }

  v0[10] = v0;
  v0[15] = v0 + 65;
  v0[11] = sub_22B28D264;
  v47 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC18, &qword_22B366A68);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_22B28D6C0;
  v0[29] = &block_descriptor_15;
  v0[30] = v47;
  [v46 requestAuthorizationWithOptions:6 completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_22B28D264()
{
  v1 = *(*v0 + 112);
  *(*v0 + 512) = v1;
  if (v1)
  {
    v2 = sub_22B28D448;
  }

  else
  {
    v2 = sub_22B28D374;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B28D374()
{
  v1 = *(v0 + 504);

  v2 = *(v0 + 520);
  *(*(v0 + 376) + 16) = v2;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22B28D448(uint64_t a1)
{
  v3 = *(v1 + 504);
  v2 = *(v1 + 512);
  v4 = *(v1 + 480);
  v5 = *(v1 + 472);
  v6 = *(v1 + 400);
  v7 = *(v1 + 384);
  swift_willThrow();

  v4(v6, v5, v7);
  v8 = v2;
  v9 = sub_22B36050C();
  v10 = sub_22B360D1C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v1 + 512);
  v13 = *(v1 + 464);
  if (v11)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    v16 = v12;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_22B116000, v9, v10, "Failed to setup notifications: %{public}@", v14, 0xCu);
    sub_22B123284(v15, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  else
  {
  }

  (*(v1 + 496))(*(v1 + 400), *(v1 + 384));
  *(*(v1 + 376) + 16) = 0;

  v18 = *(v1 + 8);

  return v18(0);
}

uint64_t sub_22B28D65C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_22B28D6C0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22B28D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_22B36052C();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B28D84C, 0, 0);
}

uint64_t sub_22B28D84C()
{
  v63 = v0;
  v1 = *(v0[9] + 24);
  if (!v1)
  {
    goto LABEL_35;
  }

  v55 = v0[9];
  v2 = [v1 pendingNotificationRequests];
  sub_22B28F910();
  v3 = sub_22B360A5C();

  if (v3 >> 62)
  {
LABEL_26:
    v61 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_22B36109C();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v57 = (v0 + 5);
      v60 = v3 & 0xC000000000000001;
      v56 = MEMORY[0x277D84F90];
      v58 = v4;
      v59 = v3;
      do
      {
        v6 = v5;
        while (1)
        {
          if (v60)
          {
            v7 = MEMORY[0x23188EAC0](v6, v3);
          }

          else
          {
            if (v6 >= *(v61 + 16))
            {
              goto LABEL_25;
            }

            v7 = *(v3 + 8 * v6 + 32);
          }

          v8 = v7;
          v5 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v9 = [v7 identifier];
          v10 = sub_22B36084C();
          v12 = v11;

          v0[5] = 64;
          v0[6] = 0xE100000000000000;
          v13 = swift_task_alloc();
          *(v13 + 16) = v57;
          v14 = sub_22B28F550(0x7FFFFFFFFFFFFFFFLL, 1, sub_22B138090, v13, v10, v12, v57);

          if (v14[2])
          {
            v15 = v14[4];
            v16 = v14[5];
            v17 = v14[6];
            v18 = v14[7];
          }

          else
          {

            v15 = sub_22B36100C();
            v16 = v19;
            v17 = v20;
            v18 = v21;
          }

          v22 = v0[10];
          v23 = MEMORY[0x23188E200](v15, v16, v17, v18);
          v25 = v24;

          v0[7] = v23;
          v0[8] = v25;
          v26 = swift_task_alloc();
          *(v26 + 16) = v0 + 7;
          LOBYTE(v22) = sub_22B207C78(sub_22B28F95C, v26, v22);

          if (v22)
          {
            break;
          }

          ++v6;
          v3 = v59;
          if (v5 == v58)
          {
            goto LABEL_28;
          }
        }

        v27 = [v8 identifier];
        v28 = sub_22B36084C();
        v30 = v29;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v31 = v56;
        }

        else
        {
          v31 = sub_22B32CD20(0, *(v56 + 2) + 1, 1, v56);
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        if (v33 >= v32 >> 1)
        {
          v31 = sub_22B32CD20((v32 > 1), v33 + 1, 1, v31);
        }

        *(v31 + 2) = v33 + 1;
        v56 = v31;
        v34 = &v31[16 * v33];
        *(v34 + 4) = v28;
        *(v34 + 5) = v30;
        v3 = v59;
      }

      while (v5 != v58);
      goto LABEL_28;
    }
  }

  else
  {
    v61 = v3 & 0xFFFFFFFFFFFFFF8;
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v56 = MEMORY[0x277D84F90];
LABEL_28:

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v36 = v0[12];
  v35 = v0[13];
  v37 = v0[11];
  v38 = __swift_project_value_buffer(v37, qword_28140BD10);
  swift_beginAccess();
  (*(v36 + 16))(v35, v38, v37);

  v39 = sub_22B36050C();
  v40 = sub_22B360D2C();

  v41 = os_log_type_enabled(v39, v40);
  v43 = v0[12];
  v42 = v0[13];
  v44 = v0[11];
  if (v41)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v62 = v46;
    *v45 = 136380675;
    v47 = MEMORY[0x23188E390](v56, MEMORY[0x277D837D0]);
    v49 = sub_22B1A7B20(v47, v48, &v62);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_22B116000, v39, v40, "Removing pending notifications: %{private}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x23188F650](v46, -1, -1);
    MEMORY[0x23188F650](v45, -1, -1);
  }

  (*(v43 + 8))(v42, v44);
  v50 = *(v55 + 24);
  if (v50)
  {
    v51 = v50;
    v52 = sub_22B360A3C();

    [v51 removePendingNotificationRequestsWithIdentifiers_];
  }

  else
  {
  }

LABEL_35:

  v53 = v0[1];

  return v53();
}

uint64_t sub_22B28DDB0(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_22B36052C();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B28DE70, 0, 0);
}

uint64_t sub_22B28DE70()
{
  v1 = *(v0[23] + 24);
  v0[27] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_22B28DFD0;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC00, &qword_22B366A58);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22B28E464;
    v0[13] = &block_descriptor_20;
    v0[14] = v2;
    [v1 getPendingNotificationRequestsWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_22B28DFD0()
{

  return MEMORY[0x2822009F8](sub_22B28E0B0, 0, 0);
}

uint64_t sub_22B28E0B0()
{
  v41 = v0;
  v1 = *(v0 + 168);

  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B36109C())
  {
    v3 = 0;
    v36 = v1 & 0xC000000000000001;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v35 = v1;
    while (1)
    {
      if (v36)
      {
        v7 = MEMORY[0x23188EAC0](v3, v1);
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_17;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v37[22];
      v38 = v7;
      sub_22B28E4D8(&v38, v10, &v39);

      v11 = v40;
      if (v40)
      {
        v12 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_22B32CD20(0, *(v5 + 2) + 1, 1, v5);
        }

        v14 = *(v5 + 2);
        v13 = *(v5 + 3);
        if (v14 >= v13 >> 1)
        {
          v5 = sub_22B32CD20((v13 > 1), v14 + 1, 1, v5);
        }

        *(v5 + 2) = v14 + 1;
        v6 = &v5[16 * v14];
        *(v6 + 4) = v12;
        *(v6 + 5) = v11;
        v1 = v35;
      }

      ++v3;
      if (v9 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_20:

  if (!*(v5 + 2))
  {
    goto LABEL_27;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v16 = v37[25];
  v15 = v37[26];
  v17 = v37[24];
  v18 = __swift_project_value_buffer(v17, qword_28140BD10);
  swift_beginAccess();
  (*(v16 + 16))(v15, v18, v17);

  v19 = sub_22B36050C();
  v20 = sub_22B360D2C();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v37[25];
  v23 = v37[26];
  v24 = v37[24];
  if (v21)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136380675;
    v27 = MEMORY[0x23188E390](v5, MEMORY[0x277D837D0]);
    v29 = sub_22B1A7B20(v27, v28, &v39);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_22B116000, v19, v20, "Removing pending notifications by identifier type: %{private}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23188F650](v26, -1, -1);
    MEMORY[0x23188F650](v25, -1, -1);
  }

  (*(v22 + 8))(v23, v24);
  v30 = *(v37[23] + 24);
  if (v30)
  {
    v31 = v30;
    v32 = sub_22B360A3C();

    [v31 removePendingNotificationRequestsWithIdentifiers_];
  }

  else
  {
LABEL_27:
  }

  v33 = v37[1];

  return v33();
}

uint64_t sub_22B28E464(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_22B28F910();
  **(*(v2 + 64) + 40) = sub_22B360A5C();

  return MEMORY[0x282200948](v2);
}

void sub_22B28E4D8(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v56 = a3;
  v4 = *a1;
  v5 = [*a1 identifier];
  v6 = sub_22B36084C();
  v8 = v7;

  v54 = 64;
  v55 = 0xE100000000000000;
  v53 = &v54;
  v9 = sub_22B28F550(0x7FFFFFFFFFFFFFFFLL, 1, sub_22B137FAC, v52, v6, v8, &v54);
  if (v9[2])
  {
    v10 = v9[4];
    v11 = v9[5];
    v13 = v9[6];
    v12 = v9[7];
  }

  else
  {

    v10 = sub_22B36100C();
    v11 = v14;
    v13 = v15;
    v12 = v16;
  }

  v17 = MEMORY[0x23188E200](v10, v11, v13, v12);
  v19 = v18;

  v22 = *a2;
  v21 = *(a2 + 8);
  if ((*(a2 + 32) & 1) == 0)
  {
    v54 = 45;
    v55 = 0xE100000000000000;
    MEMORY[0x28223BE20](v20);
    v51[2] = &v54;
    v31 = sub_22B28F550(0x7FFFFFFFFFFFFFFFLL, 1, sub_22B138090, v51, v17, v19, v52);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = (v31 + 32 * v32);
      v34 = *v33;
      v35 = v33[1];
      v36 = v33[2];
      v37 = v33[3];

      v38 = MEMORY[0x23188E200](v34, v35, v36, v37);
      v40 = v39;

      if (v38 == v22 && v40 == v21)
      {

        v43 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
LABEL_19:
        v46 = [v4 v43[31]];
        v47 = sub_22B36084C();
        v49 = v48;

        v50 = v56;
        *v56 = v47;
        v50[1] = v49;
        return;
      }

      v42 = sub_22B36134C();

      v43 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
      if (v42)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v45 = v56;
    *v56 = 0;
    v45[1] = 0;
    return;
  }

  v24 = *(a2 + 16);
  v23 = *(a2 + 24);

  v25 = [v4 identifier];
  sub_22B36084C();

  v54 = v22;
  v55 = v21;

  MEMORY[0x23188E270](45, 0xE100000000000000);
  MEMORY[0x23188E270](v24, v23);
  v26 = sub_22B3609BC();

  if (v26)
  {
    v27 = [v4 identifier];
    v28 = sub_22B36084C();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v44 = v56;
  *v56 = v28;
  v44[1] = v30;
}

uint64_t sub_22B28E828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v88 = a1;
  v7 = sub_22B35E04C();
  v89 = *(v7 - 8);
  v90 = v7;
  MEMORY[0x28223BE20](v7);
  v99 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B35DA4C();
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x28223BE20](v9);
  v92 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_22B35DE9C();
  v87 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v86 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v81 - v15;
  v16 = sub_22B36052C();
  v85 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B35DF1C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a4;
  v84 = a4[1];
  v24 = a4[2];
  v97 = a4[3];
  v98 = v24;
  v25 = a4[4];
  v95 = a4[5];
  v96 = v25;
  v124 = *(a4 + 3);
  v125 = *(a4 + 64);
  *&v113 = a2;
  *(&v113 + 1) = a3;

  MEMORY[0x23188E270](64, 0xE100000000000000);
  sub_22B35DF0C();
  sub_22B28F508(&qword_2814091D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v26 = sub_22B36131C();
  MEMORY[0x23188E270](v26);

  (*(v20 + 8))(v22, v19);
  if (*(v101 + 16))
  {
    v85 = *(&v113 + 1);
    v82 = v113;
    v27 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
    v28 = v84;
    v29 = sub_22B36081C();
    [v27 setTitle_];

    v31 = v97;
    v30 = v98;
    v32 = sub_22B36081C();
    [v27 setBody_];

    v33 = [objc_opt_self() defaultSound];
    [v27 setSound_];

    v35 = v86;
    v34 = v87;
    v36 = v95;
    if (v95)
    {
      v37 = v83;
      sub_22B35DC2C();
      v38 = sub_22B35DC4C();
      v39 = *(v38 - 8);
      v40 = 0;
      if ((*(v39 + 48))(v37, 1, v38) != 1)
      {
        v40 = sub_22B35DBDC();
        (*(v39 + 8))(v37, v38);
      }

      [v27 setDefaultActionURL_];

      v31 = v97;
      v30 = v98;
      v36 = v95;
    }

    *&v113 = v23;
    *(&v113 + 1) = v28;
    *&v114 = v30;
    *(&v114 + 1) = v31;
    *&v115 = v96;
    *(&v115 + 1) = v36;
    v116 = v124;
    LOBYTE(v117) = v125;
    v41 = sub_22B349E74();
    sub_22B2A5FD8(v41);

    v42 = sub_22B3606CC();

    [v27 setUserInfo_];

    [v27 setShouldBackgroundDefaultAction_];
    v43 = sub_22B36081C();
    [v27 setCategoryIdentifier_];

    sub_22B35DE6C();
    sub_22B28F508(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v44 = v88;
    v45 = v100;
    LOBYTE(v43) = sub_22B36074C();
    v46 = *(v34 + 8);
    v46(v35, v45);
    v81 = v27;
    v97 = v46;
    v98 = v34 + 8;
    if (v43)
    {
      sub_22B35DE6C();
      v47 = v91;
      sub_22B35DDCC();
      v46(v35, v45);
    }

    else
    {
      v47 = v91;
      (*(v34 + 16))(v91, v44, v45);
    }

    sub_22B35DFFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA438, &qword_22B364928);
    v54 = sub_22B35E02C();
    v55 = *(v54 - 8);
    v56 = *(v55 + 72);
    v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_22B364830;
    v59 = v58 + v57;
    v60 = *(v55 + 104);
    v60(v59, *MEMORY[0x277CC9968], v54);
    v60(v59 + v56, *MEMORY[0x277CC9998], v54);
    v60(v59 + 2 * v56, *MEMORY[0x277CC9988], v54);
    v60(v59 + 3 * v56, *MEMORY[0x277CC9980], v54);
    v60(v59 + 4 * v56, *MEMORY[0x277CC99A0], v54);
    v60(v59 + 5 * v56, *MEMORY[0x277CC99A8], v54);
    v60(v59 + 6 * v56, *MEMORY[0x277CC9930], v54);
    v60(v59 + 7 * v56, *MEMORY[0x277CC99C8], v54);
    sub_22B310E30(v58);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v61 = v92;
    v62 = v99;
    sub_22B35DFCC();

    (*(v89 + 8))(v62, v90);
    v63 = sub_22B35D99C();
    v64 = [objc_opt_self() triggerWithDateMatchingComponents:v63 repeats:0];

    v65 = v81;
    v66 = v64;
    v53 = v82;
    v67 = sub_22B36081C();
    v68 = [objc_opt_self() requestWithIdentifier:v67 content:v65 trigger:v66];

    v69 = *(v101 + 24);
    if (v69)
    {
      [v69 addNotificationRequest:v68 withCompletionHandler:0];
    }

    sub_22B23E8B0(&v102);
    type metadata accessor for EnergyKitAnalyticsEvent();
    v70 = swift_allocObject();
    v71 = v110;
    v72 = v111;
    v121 = v110;
    v122 = v111;
    v73 = v106;
    v74 = v107;
    v117 = v106;
    v118 = v107;
    v75 = v108;
    v119 = v108;
    v120 = v109;
    v76 = v102;
    v77 = v103;
    v113 = v102;
    v114 = v103;
    v78 = v105;
    v79 = v104;
    v115 = v104;
    v116 = v105;
    *(v70 + 136) = v109;
    *(v70 + 152) = v71;
    *(v70 + 168) = v72;
    *(v70 + 72) = v78;
    *(v70 + 88) = v73;
    *(v70 + 104) = v74;
    *(v70 + 120) = v75;
    *(v70 + 24) = v76;
    *(v70 + 40) = v77;
    *(v70 + 16) = 7;
    v123 = v112;
    *(v70 + 184) = v112;
    *(v70 + 56) = v79;
    sub_22B123284(&v113, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v70);

    (*(v93 + 8))(v61, v94);
    v97(v47, v100);
  }

  else
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v16, qword_28140BD10);
    swift_beginAccess();
    v49 = v85;
    (*(v85 + 16))(v18, v48, v16);
    v50 = sub_22B36050C();
    v51 = sub_22B360D1C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_22B116000, v50, v51, "Failed to schedule notification due to notifications not allowed", v52, 2u);
      MEMORY[0x23188F650](v52, -1, -1);
    }

    (*(v49 + 8))(v18, v16);
    return 0;
  }

  return v53;
}

uint64_t sub_22B28F4AC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22B28F508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22B28F550@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v46 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v12 = a5;
  v16 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v17 = HIBYTE(a6) & 0xF) : (v17 = a5 & 0xFFFFFFFFFFFFLL), !v17))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v16 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v8 = sub_22B3609FC();
    v12 = v31;
    v13 = v32;
    v14 = v33;

    v15 = sub_22B32D944(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v15 + 16);
    a7 = *(v15 + 24);
LABEL_39:
    v11 = v10 + 1;
    if (v10 < a7 >> 1)
    {
LABEL_40:
      *(v15 + 16) = v11;
      v37 = (v15 + 32 * v10);
      v37[4] = v8;
      v37[5] = v12;
      v37[6] = v13;
      v37[7] = v14;
      return v15;
    }

LABEL_43:
    v15 = sub_22B32D944((a7 > 1), v11, 1, v15);
    goto LABEL_40;
  }

  v8 = a4;
  v18 = 4 * v17;
  v15 = MEMORY[0x277D84F90];
  v19 = 15;
  while (1)
  {
    v14 = v19 >> 14;
    if (v19 >> 14 == v18)
    {
      goto LABEL_33;
    }

    v42 = v15;
    v40 = a1;
    while (2)
    {
      v43 = v19;
      v15 = v19;
      while (1)
      {
        v20 = sub_22B3609DC();
        v13 = v21;
        v45[0] = v20;
        v45[1] = v21;
        v22 = v46(v45);
        if (v9)
        {

          return v15;
        }

        v23 = v22;

        if (v23)
        {
          break;
        }

        v15 = sub_22B36091C();
        v14 = v15 >> 14;
        if (v15 >> 14 == v18)
        {
          v15 = v42;
          v19 = v43;
          goto LABEL_33;
        }
      }

      result = v43;
      if (v43 >> 14 == v14 && (a2 & 1) != 0)
      {
        v19 = sub_22B36091C();
        v14 = v19 >> 14;
        if (v19 >> 14 != v18)
        {
          continue;
        }

        v15 = v42;
LABEL_33:
        if (v19 >> 14 == v18 && (a2 & 1) != 0)
        {

          return v15;
        }

        if (v18 < v19 >> 14)
        {
          __break(1u);
        }

        else
        {
          v8 = sub_22B3609FC();
          v12 = v34;
          v13 = v35;
          v14 = v36;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v10 = *(v15 + 16);
            a7 = *(v15 + 24);
            goto LABEL_39;
          }
        }

        v15 = sub_22B32D944(0, *(v15 + 16) + 1, 1, v15);
        goto LABEL_38;
      }

      break;
    }

    if (v14 < v43 >> 14)
    {
      break;
    }

    v25 = sub_22B3609FC();
    v44 = v26;
    v38 = v28;
    v39 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_22B32D944(0, *(v42 + 2) + 1, 1, v42);
    }

    v14 = *(v42 + 2);
    v29 = *(v42 + 3);
    v13 = v14 + 1;
    if (v14 >= v29 >> 1)
    {
      v42 = sub_22B32D944((v29 > 1), v14 + 1, 1, v42);
    }

    *(v42 + 2) = v13;
    v30 = &v42[32 * v14];
    *(v30 + 4) = v25;
    *(v30 + 5) = v44;
    *(v30 + 6) = v39;
    *(v30 + 7) = v38;
    v15 = v42;
    v19 = sub_22B36091C();
    a1 = v40;
    if (*(v42 + 2) == v40)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B28F910()
{
  result = qword_27D8BAC08;
  if (!qword_27D8BAC08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8BAC08);
  }

  return result;
}

uint64_t sub_22B28F98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 280) = a6;
  *(v7 + 288) = v6;
  *(v7 + 264) = a3;
  *(v7 + 272) = a4;
  *(v7 + 248) = a1;
  *(v7 + 256) = a2;
  v9 = sub_22B36052C();
  *(v7 + 296) = v9;
  *(v7 + 304) = *(v9 - 8);
  *(v7 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  EnergyWindow = type metadata accessor for NextEnergyWindow(0);
  *(v7 + 376) = EnergyWindow;
  *(v7 + 384) = *(EnergyWindow - 8);
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA528, &unk_22B364D28);
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_task_alloc();
  *(v7 + 424) = swift_task_alloc();
  v11 = sub_22B35DE9C();
  *(v7 + 432) = v11;
  *(v7 + 440) = *(v11 - 8);
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *(a5 + 16);
  *(v7 + 160) = *a5;
  *(v7 + 176) = v13;
  v14 = *(a5 + 48);
  *(v7 + 192) = *(a5 + 32);
  *(v7 + 512) = v12;
  *(v7 + 520) = v14;
  *(v7 + 81) = *(a5 + 64);

  return MEMORY[0x2822009F8](sub_22B28FC74, v6, 0);
}

uint64_t sub_22B28FC74()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  v5 = *(v0 + 376);
  v6 = *(v0 + 384);
  v7 = *(v0 + 248);
  v8 = *(v3 + 16);
  *(v0 + 536) = v8;
  *(v0 + 544) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v2);
  v9 = *(v6 + 56);
  *(v0 + 552) = v9;
  *(v0 + 560) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v4, 1, 1, v5);
  if (sub_22B35DDFC())
  {
    if (qword_28140AA30 != -1)
    {
      swift_once();
    }

    v10 = swift_task_alloc();
    *(v0 + 568) = v10;
    *v10 = v0;
    v10[1] = sub_22B290154;
    v11 = *(v0 + 512);
    v12 = *(v0 + 416);
    v13 = *(v0 + 272);
    v14 = *(v0 + 280);
    v15 = *(v0 + 264);

    return sub_22B19F8EC(v12, v11, v15, v13, v14);
  }

  else
  {
    v17 = *(v0 + 408);
    v18 = *(v0 + 376);
    v19 = *(v0 + 384);
    sub_22B170BE0(*(v0 + 424), v17, &qword_27D8BA528, &unk_22B364D28);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_22B123284(*(v0 + 408), &qword_27D8BA528, &unk_22B364D28);
    }

    else
    {
      v20 = *(v0 + 432);
      v21 = *(v0 + 440);
      v22 = *(v0 + 392);
      v23 = *(v0 + 328);
      sub_22B1A1FF4(*(v0 + 408), v22);
      sub_22B170BE0(v22, v23, &qword_27D8BA340, &qword_22B363FB0);
      v24 = *(v21 + 48);
      if (v24(v23, 1, v20) == 1)
      {
        v25 = *(v0 + 328);
        sub_22B253314(*(v0 + 392), type metadata accessor for NextEnergyWindow);
        sub_22B123284(v25, &qword_27D8BA340, &qword_22B363FB0);
      }

      else
      {
        v26 = *(v0 + 432);
        v27 = *(v0 + 392);
        v28 = *(v0 + 376);
        v29 = *(v0 + 320);
        v30 = *(*(v0 + 440) + 32);
        v30(*(v0 + 472), *(v0 + 328), v26);
        sub_22B170BE0(v27 + *(v28 + 20), v29, &qword_27D8BA340, &qword_22B363FB0);
        if (v24(v29, 1, v26) == 1)
        {
          v31 = *(v0 + 392);
          v32 = *(v0 + 320);
          (*(*(v0 + 440) + 8))(*(v0 + 472), *(v0 + 432));
          sub_22B253314(v31, type metadata accessor for NextEnergyWindow);
          sub_22B123284(v32, &qword_27D8BA340, &qword_22B363FB0);
        }

        else
        {
          v33 = *(v0 + 536);
          v34 = *(v0 + 464);
          v47 = *(v0 + 472);
          v36 = *(v0 + 448);
          v35 = *(v0 + 456);
          v38 = *(v0 + 432);
          v37 = *(v0 + 440);
          v48 = *(v0 + 392);
          v39 = *(v0 + 320);
          v46 = *(v0 + 280);
          sub_22B123284(v46, &qword_27D8BA3E8, &unk_22B364790);
          v30(v34, v39, v38);
          v33(v35, v47, v38);
          v33(v36, v34, v38);
          sub_22B35D88C();
          v40 = *(v37 + 8);
          v40(v34, v38);
          v40(v47, v38);
          sub_22B253314(v48, type metadata accessor for NextEnergyWindow);
          v41 = sub_22B35D8BC();
          (*(*(v41 - 8) + 56))(v46, 0, 1, v41);
        }
      }
    }

    if (qword_28140AF70 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 81);
    v43 = qword_28140BDB8;
    *(v0 + 576) = qword_28140BDB8;
    v44 = *(v0 + 176);
    *(v0 + 16) = *(v0 + 160);
    *(v0 + 32) = v44;
    v45 = *(v0 + 520);
    *(v0 + 48) = *(v0 + 192);
    *(v0 + 64) = v45;
    *(v0 + 80) = v42;

    return MEMORY[0x2822009F8](sub_22B290FC8, v43, 0);
  }
}

uint64_t sub_22B290154()
{
  v1 = *(*v0 + 288);

  return MEMORY[0x2822009F8](sub_22B290264, v1, 0);
}

uint64_t sub_22B290264()
{
  v120 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 376);
  if ((*(*(v0 + 384) + 48))(v1, 1, v2) == 1)
  {
    sub_22B123284(v1, &qword_27D8BA528, &unk_22B364D28);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 304);
    v3 = *(v0 + 312);
    v5 = *(v0 + 296);
    v6 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v3, v6, v5);

    v7 = sub_22B36050C();
    v8 = sub_22B360D2C();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 296);
    if (v9)
    {
      v14 = *(v0 + 264);
      v13 = *(v0 + 272);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v119 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_22B1A7B20(v14, v13, &v119);
      _os_log_impl(&dword_22B116000, v7, v8, "No clean energy window found for location: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);
    }

    (*(v11 + 8))(v10, v12);
    goto LABEL_33;
  }

  v17 = *(v0 + 552);
  v18 = *(v0 + 432);
  v19 = *(v0 + 440);
  v20 = *(v0 + 424);
  v21 = *(v0 + 400);
  v22 = *(v0 + 360);
  sub_22B123284(v20, &qword_27D8BA528, &unk_22B364D28);
  sub_22B1A1FF4(v1, v21);
  sub_22B2532AC(v21, v20, type metadata accessor for NextEnergyWindow);
  v17(v20, 0, 1, v2);
  v115 = v21;
  v114 = *(v2 + 20);
  sub_22B170BE0(v21 + v114, v22, &qword_27D8BA340, &qword_22B363FB0);
  v23 = *(v19 + 48);
  v24 = v23(v22, 1, v18);
  v25 = *(v0 + 504);
  v26 = *(v0 + 512);
  v28 = *(v0 + 432);
  v27 = *(v0 + 440);
  v29 = *(v0 + 360);
  v30 = *(v0 + 368);
  if (v24 == 1)
  {
    sub_22B123284(*(v0 + 360), &qword_27D8BA340, &qword_22B363FB0);
    (*(v27 + 56))(v30, 1, 1, v28);
    sub_22B35DD2C();
    v31 = v26;
    v32 = *(v27 + 8);
    v32(v31, v28);
    if (v23(v30, 1, v28) != 1)
    {
      sub_22B123284(*(v0 + 368), &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    sub_22B35DDCC();
    v33 = v26;
    v32 = *(v27 + 8);
    v32(v33, v28);
    v32(v29, v28);
    (*(v27 + 56))(v30, 0, 1, v28);
    (*(v27 + 32))(v25, v30, v28);
  }

  v34 = *(v0 + 528);
  v35 = *(*(v0 + 440) + 32);
  v35(*(v0 + 512), *(v0 + 504), *(v0 + 432));
  if (v34)
  {
    v36 = *(v0 + 528);
    v37 = *(v0 + 520);
    v38 = *(v0 + 272);
    *(v0 + 232) = *(v0 + 264);
    *(v0 + 240) = v38;

    MEMORY[0x23188E270](45, 0xE100000000000000);
    MEMORY[0x23188E270](v37, v36);
    v39 = *(v0 + 232);
    v40 = *(v0 + 240);
  }

  else
  {
    v40 = *(v0 + 272);

    v39 = *(v0 + 264);
  }

  v41 = *(v0 + 432);
  v42 = *(v0 + 352);
  sub_22B170BE0(*(v0 + 400), v42, &qword_27D8BA340, &qword_22B363FB0);
  v43 = v23(v42, 1, v41);
  v44 = *(v0 + 352);
  if (v43 == 1)
  {
    sub_22B253314(*(v0 + 400), type metadata accessor for NextEnergyWindow);

    sub_22B123284(v44, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v108 = v35;
    v110 = v39;
    v112 = v32;
    v45 = *(v0 + 432);
    v46 = *(v0 + 344);
    sub_22B123284(v44, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B170BE0(v115 + v114, v46, &qword_27D8BA340, &qword_22B363FB0);
    if (v23(v46, 1, v45) != 1)
    {
      v48 = *(v0 + 432);
      v49 = *(v0 + 400);
      v50 = *(v0 + 336);
      sub_22B123284(*(v0 + 344), &qword_27D8BA340, &qword_22B363FB0);
      sub_22B170BE0(v49, v50, &qword_27D8BA340, &qword_22B363FB0);
      if (v23(v50, 1, v48) == 1)
      {
        v51 = *(v0 + 336);

        sub_22B123284(v51, &qword_27D8BA340, &qword_22B363FB0);
        v116 = 6;
        v52 = v112;
      }

      else
      {
        v108(*(v0 + 496), *(v0 + 336), *(v0 + 432));
        sub_22B35DE6C();
        if (qword_28140A7B0 != -1)
        {
          swift_once();
        }

        v53 = *(v0 + 536);
        v54 = *(v0 + 81);
        v117 = *(v0 + 528);
        v109 = *(v0 + 520);
        v56 = *(v0 + 488);
        v55 = *(v0 + 496);
        v57 = *(v0 + 480);
        v58 = *(v0 + 432);
        if (sub_22B35DDEC())
        {
          v59 = v55;
        }

        else
        {
          v59 = v56;
        }

        v53(v57, v59, v58);
        v60 = *(v0 + 176);
        *(v0 + 88) = *(v0 + 160);
        *(v0 + 104) = v60;
        *(v0 + 120) = *(v0 + 192);
        *(v0 + 136) = v109;
        *(v0 + 144) = v117;
        *(v0 + 152) = v54;
        sub_22B28E828(v57, v110, v40, (v0 + 88));
        v62 = v61;

        v63 = v57;
        v52 = v112;
        v112(v63, v58);
        v64 = *(v0 + 488);
        v65 = *(v0 + 496);
        v66 = *(v0 + 432);
        if (v62)
        {
          v67 = *(v0 + 400);
          v112(v64, *(v0 + 432));
          v112(v65, v66);
          sub_22B253314(v67, type metadata accessor for NextEnergyWindow);

          goto LABEL_27;
        }

        v112(v64, *(v0 + 432));
        v112(v65, v66);
        v116 = 9;
      }

      v104 = *(v0 + 512);
      v105 = *(v0 + 432);
      v106 = *(v0 + 424);
      sub_22B253314(*(v0 + 400), type metadata accessor for NextEnergyWindow);
      sub_22B123284(v106, &qword_27D8BA528, &unk_22B364D28);
      v52(v104, v105);

      v107 = *(v0 + 8);

      return v107(v116);
    }

    v47 = *(v0 + 344);
    sub_22B253314(*(v0 + 400), type metadata accessor for NextEnergyWindow);

    sub_22B123284(v47, &qword_27D8BA340, &qword_22B363FB0);
  }

LABEL_27:
  if ((sub_22B35DDFC() & 1) == 0)
  {
LABEL_33:
    v75 = *(v0 + 408);
    v76 = *(v0 + 376);
    v77 = *(v0 + 384);
    sub_22B170BE0(*(v0 + 424), v75, &qword_27D8BA528, &unk_22B364D28);
    if ((*(v77 + 48))(v75, 1, v76) == 1)
    {
      sub_22B123284(*(v0 + 408), &qword_27D8BA528, &unk_22B364D28);
    }

    else
    {
      v78 = *(v0 + 432);
      v79 = *(v0 + 440);
      v80 = *(v0 + 392);
      v81 = *(v0 + 328);
      sub_22B1A1FF4(*(v0 + 408), v80);
      sub_22B170BE0(v80, v81, &qword_27D8BA340, &qword_22B363FB0);
      v82 = *(v79 + 48);
      if (v82(v81, 1, v78) == 1)
      {
        v83 = *(v0 + 328);
        sub_22B253314(*(v0 + 392), type metadata accessor for NextEnergyWindow);
        sub_22B123284(v83, &qword_27D8BA340, &qword_22B363FB0);
      }

      else
      {
        v84 = *(v0 + 432);
        v85 = *(v0 + 392);
        v86 = *(v0 + 376);
        v87 = *(v0 + 320);
        v88 = *(*(v0 + 440) + 32);
        v88(*(v0 + 472), *(v0 + 328), v84);
        sub_22B170BE0(v85 + *(v86 + 20), v87, &qword_27D8BA340, &qword_22B363FB0);
        if (v82(v87, 1, v84) == 1)
        {
          v89 = *(v0 + 392);
          v90 = *(v0 + 320);
          (*(*(v0 + 440) + 8))(*(v0 + 472), *(v0 + 432));
          sub_22B253314(v89, type metadata accessor for NextEnergyWindow);
          sub_22B123284(v90, &qword_27D8BA340, &qword_22B363FB0);
        }

        else
        {
          v91 = *(v0 + 536);
          v92 = *(v0 + 464);
          v113 = *(v0 + 472);
          v94 = *(v0 + 448);
          v93 = *(v0 + 456);
          v96 = *(v0 + 432);
          v95 = *(v0 + 440);
          v118 = *(v0 + 392);
          v97 = *(v0 + 320);
          v111 = *(v0 + 280);
          sub_22B123284(v111, &qword_27D8BA3E8, &unk_22B364790);
          v88(v92, v97, v96);
          v91(v93, v113, v96);
          v91(v94, v92, v96);
          sub_22B35D88C();
          v98 = *(v95 + 8);
          v98(v92, v96);
          v98(v113, v96);
          sub_22B253314(v118, type metadata accessor for NextEnergyWindow);
          v99 = sub_22B35D8BC();
          (*(*(v99 - 8) + 56))(v111, 0, 1, v99);
        }
      }
    }

    if (qword_28140AF70 != -1)
    {
      swift_once();
    }

    v100 = *(v0 + 81);
    v101 = qword_28140BDB8;
    *(v0 + 576) = qword_28140BDB8;
    v102 = *(v0 + 176);
    *(v0 + 16) = *(v0 + 160);
    *(v0 + 32) = v102;
    v103 = *(v0 + 520);
    *(v0 + 48) = *(v0 + 192);
    *(v0 + 64) = v103;
    *(v0 + 80) = v100;

    return MEMORY[0x2822009F8](sub_22B290FC8, v101, 0);
  }

  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v68 = swift_task_alloc();
  *(v0 + 568) = v68;
  *v68 = v0;
  v68[1] = sub_22B290154;
  v69 = *(v0 + 512);
  v70 = *(v0 + 416);
  v71 = *(v0 + 272);
  v72 = *(v0 + 280);
  v73 = *(v0 + 264);

  return sub_22B19F8EC(v70, v69, v73, v71, v72);
}

uint64_t sub_22B290FC8()
{
  v1 = *(v0 + 288);
  sub_22B17E238(*(v0 + 264), *(v0 + 272), *(v0 + 280), (v0 + 16));

  return MEMORY[0x2822009F8](sub_22B29103C, v1, 0);
}

uint64_t sub_22B29103C()
{
  v1 = v0[64];
  v2 = v0[54];
  v3 = v0[55];
  sub_22B123284(v0[53], &qword_27D8BA528, &unk_22B364D28);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_22B2911E8(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v4 = sub_22B35DE9C();
  v3[36] = v4;
  v3[37] = *(v4 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v5 = type metadata accessor for CDEnergyWindowNotifications(0);
  v3[44] = v5;
  v3[45] = *(v5 - 8);
  v3[46] = swift_task_alloc();
  v6 = sub_22B36052C();
  v3[47] = v6;
  v3[48] = *(v6 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B291434, v2, 0);
}

uint64_t sub_22B291434()
{
  v20 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = v0[47];
  v3 = v0[48];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[53] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[54] = v5;
  v0[55] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[52];
  v10 = v0[47];
  v11 = v0[48];
  if (v8)
  {
    v13 = v0[31];
    v12 = v0[32];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v19);
    _os_log_impl(&dword_22B116000, v6, v7, "Refreshing notification parsing on getting new data for %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  v16 = *(v11 + 8);
  v16(v9, v10);
  v0[56] = v16;
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v17 = qword_28140BDB8;
  v0[57] = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B291664, v17, 0);
}

uint64_t sub_22B291664()
{
  v1 = v0[33];
  v0[58] = sub_22B17F314(v0[31], v0[32]);

  return MEMORY[0x2822009F8](sub_22B2916D8, v1, 0);
}

uint64_t sub_22B2916D8()
{
  v79 = v0;
  (*(v0 + 432))(*(v0 + 408), *(v0 + 424), *(v0 + 376));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 464);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_22B116000, v1, v2, "Notification parsing for %{public}ld entries", v5, 0xCu);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 464);
  v7 = *(v0 + 448);
  v8 = *(v0 + 408);
  v9 = *(v0 + 376);
  *(v0 + 472) = (*(v0 + 384) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v8, v9);
  *(v0 + 240) = MEMORY[0x277D84FA0];
  v10 = *(v6 + 16);
  *(v0 + 480) = v10;
  if (v10)
  {
    v11 = 0;
    *(v0 + 84) = *(*(v0 + 360) + 80);
    while (1)
    {
      *(v0 + 488) = v11;
      v16 = *(v0 + 464);
      if (v11 >= *(v16 + 16))
      {
        break;
      }

      v17 = *(v0 + 368);
      sub_22B2532AC(v16 + ((*(v0 + 84) + 32) & ~*(v0 + 84)) + *(*(v0 + 360) + 72) * v11, v17, type metadata accessor for CDEnergyWindowNotifications);
      v18 = v17[1];
      *(v0 + 208) = *v17;
      *(v0 + 216) = v18;

      MEMORY[0x23188E270](46, 0xE100000000000000);
      v19 = v17[10];
      if (v19)
      {
        v20 = *(*(v0 + 368) + 72);
        v21 = v19;
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      MEMORY[0x23188E270](v20, v21);

      v23 = *(v0 + 208);
      v22 = *(v0 + 216);
      v24 = *(v0 + 240);
      if (!*(v24 + 16) || (sub_22B36149C(), sub_22B3608FC(), v25 = sub_22B3614DC(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
      {
LABEL_23:
        (*(v0 + 432))(*(v0 + 400), *(v0 + 424), *(v0 + 376));

        v38 = sub_22B36050C();
        v39 = sub_22B360D2C();

        v40 = os_log_type_enabled(v38, v39);
        v41 = *(v0 + 448);
        v42 = *(v0 + 400);
        v43 = *(v0 + 376);
        if (v40)
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v78[0] = v45;
          *v44 = 136446210;
          *(v44 + 4) = sub_22B1A7B20(v23, v22, v78);
          _os_log_impl(&dword_22B116000, v38, v39, "Checking for notification for site %{public}s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x23188F650](v45, -1, -1);
          MEMORY[0x23188F650](v44, -1, -1);

          v41(v42, v43);
        }

        else
        {

          v41(v42, v43);
        }

        v48 = *(v0 + 368);
        v49 = *(v0 + 344);
        v50 = *(v0 + 352);
        v51 = *(v0 + 288);
        v52 = *(v0 + 296);
        v53 = *(v0 + 280);
        sub_22B32DF50((v0 + 224), v23, v22);

        *(v0 + 16) = *(v48 + 24);
        v54 = *(v48 + 40);
        v55 = *(v48 + 56);
        v56 = *(v48 + 72);
        *(v0 + 80) = *(v48 + 88);
        *(v0 + 48) = v55;
        *(v0 + 64) = v56;
        *(v0 + 32) = v54;
        v57 = sub_22B35D8BC();
        v58 = *(*(v57 - 8) + 56);
        v58(v49, 1, 1, v57);
        sub_22B170BE0(v48 + *(v50 + 32), v53, &qword_27D8BA340, &qword_22B363FB0);
        v59 = *(v52 + 48);
        if (v59(v53, 1, v51) == 1)
        {
          sub_22B123284(*(v0 + 280), &qword_27D8BA340, &qword_22B363FB0);
        }

        else
        {
          v77 = v58;
          v60 = *(v0 + 368);
          v61 = *(v0 + 352);
          v62 = *(v0 + 288);
          v63 = *(v0 + 272);
          v64 = *(*(v0 + 296) + 32);
          v64(*(v0 + 328), *(v0 + 280), v62);
          sub_22B170BE0(v60 + *(v61 + 36), v63, &qword_27D8BA340, &qword_22B363FB0);
          if (v59(v63, 1, v62) == 1)
          {
            v65 = *(v0 + 272);
            (*(*(v0 + 296) + 8))(*(v0 + 328), *(v0 + 288));
            sub_22B123284(v65, &qword_27D8BA340, &qword_22B363FB0);
          }

          else
          {
            v75 = *(v0 + 336);
            v76 = *(v0 + 344);
            v67 = *(v0 + 320);
            v66 = *(v0 + 328);
            v69 = *(v0 + 304);
            v68 = *(v0 + 312);
            v71 = *(v0 + 288);
            v70 = *(v0 + 296);
            v64(v67, *(v0 + 272), v71);
            v72 = *(v70 + 16);
            v72(v68, v66, v71);
            v72(v69, v67, v71);
            sub_22B35D88C();
            v73 = *(v70 + 8);
            v73(v67, v71);
            v73(v66, v71);
            sub_22B123284(v76, &qword_27D8BA3E8, &unk_22B364790);
            v77(v75, 0, 1, v57);
            sub_22B2929F4(v75, v76);
          }
        }

        sub_22B35DE6C();
        if (qword_28140AC88 == -1)
        {
LABEL_35:
          v74 = qword_28140BD80;
          *(v0 + 496) = qword_28140BD80;

          return MEMORY[0x2822009F8](sub_22B291F78, v74, 0);
        }

LABEL_40:
        swift_once();
        goto LABEL_35;
      }

      v28 = ~v26;
      while (1)
      {
        v29 = (*(v24 + 48) + 16 * v27);
        v30 = *v29 == v23 && v29[1] == v22;
        if (v30 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }

        v27 = (v27 + 1) & v28;
        if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v31 = *(v0 + 432);
      v32 = *(v0 + 424);
      v33 = *(v0 + 392);
      v34 = *(v0 + 376);

      v31(v33, v32, v34);
      v35 = sub_22B36050C();
      v36 = sub_22B360D2C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_22B116000, v35, v36, "Notification already processed", v37, 2u);
        MEMORY[0x23188F650](v37, -1, -1);
      }

      v12 = *(v0 + 448);
      v13 = *(v0 + 392);
      v15 = *(v0 + 368);
      v14 = *(v0 + 376);

      v12(v13, v14);
      sub_22B253314(v15, type metadata accessor for CDEnergyWindowNotifications);
      v11 = *(v0 + 488) + 1;
      if (v11 == *(v0 + 480))
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_25:

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_22B291F78()
{
  v1 = *(v0 + 496);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  (*(v3 + 16))(v2, v1 + v5, v4);
  v6 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v7 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v7;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v6;
  v8 = swift_task_alloc();
  *(v0 + 504) = v8;
  *v8 = v0;
  v8[1] = sub_22B292094;
  v9 = *(v0 + 344);
  v10 = *(v0 + 304);
  v11 = *(v0 + 312);
  v12 = *(v0 + 256);
  v13 = *(v0 + 248);

  return sub_22B28F98C(v11, v10, v13, v12, v0 + 88, v9);
}

uint64_t sub_22B292094()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v4 = *(*v0 + 288);
  v5 = *(*v0 + 264);

  v6 = *(v3 + 8);
  v6(v2, v4);
  v6(v1, v4);

  return MEMORY[0x2822009F8](sub_22B292230, v5, 0);
}

uint64_t sub_22B292230()
{
  v70 = v0;
  v1 = *(v0 + 368);
  sub_22B123284(*(v0 + 344), &qword_27D8BA3E8, &unk_22B364790);
  sub_22B253314(v1, type metadata accessor for CDEnergyWindowNotifications);
  v2 = *(v0 + 488) + 1;
  if (v2 == *(v0 + 480))
  {
LABEL_2:

    v3 = *(v0 + 8);

    return v3();
  }

  while (1)
  {
    *(v0 + 488) = v2;
    v9 = *(v0 + 464);
    if (v2 >= *(v9 + 16))
    {
      __break(1u);
LABEL_36:
      swift_once();
      goto LABEL_32;
    }

    v10 = *(v0 + 368);
    sub_22B2532AC(v9 + ((*(v0 + 84) + 32) & ~*(v0 + 84)) + *(*(v0 + 360) + 72) * v2, v10, type metadata accessor for CDEnergyWindowNotifications);
    v11 = v10[1];
    *(v0 + 208) = *v10;
    *(v0 + 216) = v11;

    MEMORY[0x23188E270](46, 0xE100000000000000);
    v12 = v10[10];
    if (v12)
    {
      v13 = *(*(v0 + 368) + 72);
      v14 = v12;
    }

    else
    {
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    MEMORY[0x23188E270](v13, v14);

    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v17 = *(v0 + 240);
    if (!*(v17 + 16))
    {
      break;
    }

    sub_22B36149C();
    sub_22B3608FC();
    v18 = sub_22B3614DC();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      break;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = (*(v17 + 48) + 16 * v20);
      v23 = *v22 == v16 && v22[1] == v15;
      if (v23 || (sub_22B36134C() & 1) != 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v24 = *(v0 + 432);
    v25 = *(v0 + 424);
    v26 = *(v0 + 392);
    v27 = *(v0 + 376);

    v24(v26, v25, v27);
    v28 = sub_22B36050C();
    v29 = sub_22B360D2C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B116000, v28, v29, "Notification already processed", v30, 2u);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    v5 = *(v0 + 448);
    v6 = *(v0 + 392);
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);

    v5(v6, v7);
    sub_22B253314(v8, type metadata accessor for CDEnergyWindowNotifications);
    v2 = *(v0 + 488) + 1;
    if (v2 == *(v0 + 480))
    {
      goto LABEL_2;
    }
  }

LABEL_23:
  (*(v0 + 432))(*(v0 + 400), *(v0 + 424), *(v0 + 376));

  v31 = sub_22B36050C();
  v32 = sub_22B360D2C();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 448);
  v35 = *(v0 + 400);
  v36 = *(v0 + 376);
  if (v33)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69[0] = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_22B1A7B20(v16, v15, v69);
    _os_log_impl(&dword_22B116000, v31, v32, "Checking for notification for site %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x23188F650](v38, -1, -1);
    MEMORY[0x23188F650](v37, -1, -1);

    v34(v35, v36);
  }

  else
  {

    v34(v35, v36);
  }

  v39 = *(v0 + 368);
  v40 = *(v0 + 344);
  v41 = *(v0 + 352);
  v42 = *(v0 + 288);
  v43 = *(v0 + 296);
  v44 = *(v0 + 280);
  sub_22B32DF50((v0 + 224), v16, v15);

  *(v0 + 16) = *(v39 + 24);
  v45 = *(v39 + 40);
  v46 = *(v39 + 56);
  v47 = *(v39 + 72);
  *(v0 + 80) = *(v39 + 88);
  *(v0 + 48) = v46;
  *(v0 + 64) = v47;
  *(v0 + 32) = v45;
  v48 = sub_22B35D8BC();
  v49 = *(*(v48 - 8) + 56);
  v49(v40, 1, 1, v48);
  sub_22B170BE0(v39 + *(v41 + 32), v44, &qword_27D8BA340, &qword_22B363FB0);
  v50 = *(v43 + 48);
  if (v50(v44, 1, v42) == 1)
  {
    sub_22B123284(*(v0 + 280), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v68 = v49;
    v51 = *(v0 + 368);
    v52 = *(v0 + 352);
    v53 = *(v0 + 288);
    v54 = *(v0 + 272);
    v55 = *(*(v0 + 296) + 32);
    v55(*(v0 + 328), *(v0 + 280), v53);
    sub_22B170BE0(v51 + *(v52 + 36), v54, &qword_27D8BA340, &qword_22B363FB0);
    if (v50(v54, 1, v53) == 1)
    {
      v56 = *(v0 + 272);
      (*(*(v0 + 296) + 8))(*(v0 + 328), *(v0 + 288));
      sub_22B123284(v56, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v66 = *(v0 + 336);
      v67 = *(v0 + 344);
      v58 = *(v0 + 320);
      v57 = *(v0 + 328);
      v60 = *(v0 + 304);
      v59 = *(v0 + 312);
      v62 = *(v0 + 288);
      v61 = *(v0 + 296);
      v55(v58, *(v0 + 272), v62);
      v63 = *(v61 + 16);
      v63(v59, v57, v62);
      v63(v60, v58, v62);
      sub_22B35D88C();
      v64 = *(v61 + 8);
      v64(v58, v62);
      v64(v57, v62);
      sub_22B123284(v67, &qword_27D8BA3E8, &unk_22B364790);
      v68(v66, 0, 1, v48);
      sub_22B2929F4(v66, v67);
    }
  }

  sub_22B35DE6C();
  if (qword_28140AC88 != -1)
  {
    goto LABEL_36;
  }

LABEL_32:
  v65 = qword_28140BD80;
  *(v0 + 496) = qword_28140BD80;

  return MEMORY[0x2822009F8](sub_22B291F78, v65, 0);
}

uint64_t sub_22B2929F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B292A64(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 440) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  *(v2 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA390, &qword_22B364460);
  *(v2 + 120) = swift_task_alloc();
  v3 = sub_22B35E20C();
  *(v2 + 128) = v3;
  *(v2 + 136) = *(v3 - 8);
  *(v2 + 144) = swift_task_alloc();
  v4 = sub_22B36052C();
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  v5 = type metadata accessor for CDEnergyGuidanceTracker(0);
  *(v2 + 184) = v5;
  *(v2 + 192) = *(v5 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  v6 = sub_22B35DE9C();
  *(v2 + 216) = v6;
  *(v2 + 224) = *(v6 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B292D20, v1, 0);
}

uint64_t sub_22B292D20()
{
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDC0;
  *(v0 + 256) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B292DB8, v1, 0);
}

uint64_t sub_22B292DB8()
{
  v1 = *(v0 + 88);
  *(v0 + 264) = sub_22B211B68();

  return MEMORY[0x2822009F8](sub_22B292E28, v1, 0);
}

uint64_t sub_22B292E28(uint64_t a1)
{
  sub_22B35DE6C();
  v2 = swift_task_alloc();
  v1[34] = v2;
  *v2 = v1;
  v2[1] = sub_22B292ED8;
  v3 = v1[33];
  v4 = v1[31];

  return sub_22B2A0948(v4, v3, 604800.0);
}

uint64_t sub_22B292ED8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 224);
  v5 = *(*v1 + 216);
  v6 = *(*v1 + 88);
  v2[35] = a1;

  v7 = *(v4 + 8);
  v2[36] = v7;
  v2[37] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return MEMORY[0x2822009F8](sub_22B293060, v6, 0);
}

uint64_t sub_22B293060()
{
  v27 = v0;
  v1 = v0[35];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[24];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = v0[33];
    do
    {
      v7 = v0[26];
      sub_22B2A5040(v4, v7, type metadata accessor for CDEnergyGuidanceTracker);
      v8 = swift_task_alloc();
      *(v8 + 16) = v7;
      sub_22B1DAF04(sub_22B2A2080, v8, v6);
      v6 = v9;

      sub_22B2A50A8(v7, type metadata accessor for CDEnergyGuidanceTracker);
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = v0[33];
  }

  v0[38] = v6;
  v10 = *(v6 + 16);
  v0[39] = v10;
  if (v10)
  {
    v11 = swift_task_alloc();
    v0[40] = v11;
    *v11 = v0;
    v11[1] = sub_22B29340C;

    return sub_22B2A20A0(v6);
  }

  else
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[20];
    v16 = __swift_project_value_buffer(v14, qword_28140BD10);
    swift_beginAccess();
    (*(v15 + 16))(v13, v16, v14);
    v17 = sub_22B36050C();
    v18 = sub_22B360D2C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[22];
    v21 = v0[19];
    v22 = v0[20];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_22B1A7B20(0xD000000000000022, 0x800000022B36D5C0, &v26);
      _os_log_impl(&dword_22B116000, v17, v18, "%s No grids to cache.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23188F650](v24, -1, -1);
      MEMORY[0x23188F650](v23, -1, -1);
    }

    (*(v22 + 8))(v20, v21);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_22B29340C()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_22B29351C, v1, 0);
}

uint64_t sub_22B29351C()
{
  if (qword_28140AC88 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BD80;
  *(v0 + 328) = qword_28140BD80;

  return MEMORY[0x2822009F8](sub_22B2935B4, v1, 0);
}

uint64_t sub_22B2935B4()
{
  v1 = *(v0 + 88);
  *(v0 + 441) = *(*(v0 + 328) + 120);
  return MEMORY[0x2822009F8](sub_22B2935DC, v1, 0);
}

uint64_t sub_22B2935DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 441) == 1)
  {

LABEL_4:

    v12 = *(v10 + 8);

    return v12();
  }

  v11 = sub_22B36134C();

  if (v11)
  {
    goto LABEL_4;
  }

  v14 = *(v10 + 288);
  v15 = *(v10 + 248);
  v16 = *(v10 + 216);
  v17 = *(v10 + 192);
  *(v10 + 80) = MEMORY[0x277D84FA0];
  sub_22B35DE6C();
  sub_22B35DE0C();
  v14(v15, v16);
  v18 = *(v17 + 80);
  *(v10 + 432) = v18;
  v19 = *(v17 + 72);
  *(v10 + 436) = *MEMORY[0x277D17EE8];
  *(v10 + 336) = v19;
  *(v10 + 344) = 0;
  *(v10 + 442) = 0;
  v20 = *(v10 + 200);
  v22 = *(v10 + 128);
  v21 = *(v10 + 136);
  v23 = *(v10 + 120);
  sub_22B2A5040(*(v10 + 304) + ((v18 + 32) & ~v18), v20, type metadata accessor for CDEnergyGuidanceTracker);
  v46 = *v20;
  *(v10 + 352) = *v20;
  v45 = v20[1];
  *(v10 + 360) = v45;
  sub_22B35E1EC();
  v24 = *(v21 + 48);
  if (v24(v23, 1, v22) == 1)
  {
    v26 = *(v10 + 120);
    v25 = *(v10 + 128);
    (*(*(v10 + 136) + 104))(*(v10 + 144), *(v10 + 436), v25);
    if (v24(v26, 1, v25) != 1)
    {
      sub_22B123284(*(v10 + 120), &qword_27D8BA390, &qword_22B364460);
    }
  }

  else
  {
    (*(*(v10 + 136) + 32))(*(v10 + 144), *(v10 + 120), *(v10 + 128));
  }

  v27 = *(v10 + 240);
  v29 = *(v10 + 216);
  v28 = *(v10 + 224);
  v30 = *(v10 + 200);
  v31 = *(v10 + 184);
  v32 = *(v10 + 112);
  v33 = v31[8];
  v34 = (v30 + v31[7]);
  v35 = *v34;
  v36 = v34[1];
  v37 = (v30 + v31[9]);
  v38 = *v37;
  v39 = v37[1];
  v40 = *(v30 + v33);
  v41 = *(v28 + 16);
  *(v10 + 368) = v41;
  *(v10 + 376) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v32, v27, v29);
  v42 = *(v28 + 56);
  *(v10 + 384) = v42;
  *(v10 + 392) = (v28 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v42(v32, 0, 1, v29);
  v43 = swift_task_alloc();
  *(v10 + 400) = v43;
  *v43 = v10;
  v43[1] = sub_22B2939CC;
  v44 = *(v10 + 144);

  return sub_22B2A34B8(v46, v45, v44, v35, v36, v38, v39, v40, a9, a10);
}

uint64_t sub_22B2939CC(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 88);
  *(*v1 + 408) = a1;

  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B293B74, v6, 0);
}

uint64_t sub_22B293B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v80 = v10;
  if (*(v10 + 408))
  {
    v11 = 1;
  }

  else
  {
    v13 = *(v10 + 352);
    v12 = *(v10 + 360);

    sub_22B32DF50((v10 + 64), v13, v12);

    v11 = *(v10 + 442);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v15 = *(v10 + 160);
  v14 = *(v10 + 168);
  v16 = *(v10 + 152);
  v17 = __swift_project_value_buffer(v16, qword_28140BD10);
  swift_beginAccess();
  (*(v15 + 16))(v14, v17, v16);

  v18 = sub_22B36050C();
  v19 = sub_22B360D0C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v10 + 408);
    v22 = *(v10 + 352);
    v21 = *(v10 + 360);
    v23 = *(v10 + 160);
    v75 = *(v10 + 152);
    v77 = *(v10 + 168);
    v24 = swift_slowAlloc();
    v25 = v11;
    v26 = swift_slowAlloc();
    v79 = v26;
    *v24 = 136380931;
    *(v24 + 4) = sub_22B1A7B20(v22, v21, &v79);
    *(v24 + 12) = 2082;
    v27 = HomeEnergyStatusCode.description.getter(v20);
    v29 = sub_22B1A7B20(v27, v28, &v79);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_22B116000, v18, v19, "Cache refresh status for %{private}s: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    v30 = v26;
    v11 = v25;
    MEMORY[0x23188F650](v30, -1, -1);
    MEMORY[0x23188F650](v24, -1, -1);

    (*(v23 + 8))(v77, v75);
  }

  else
  {
    v32 = *(v10 + 160);
    v31 = *(v10 + 168);
    v33 = *(v10 + 152);

    (*(v32 + 8))(v31, v33);
  }

  v34 = *(v10 + 312);
  v35 = *(v10 + 344) + 1;
  sub_22B2A50A8(*(v10 + 200), type metadata accessor for CDEnergyGuidanceTracker);
  if (v35 == v34)
  {

    if (v11)
    {
      v36 = *(v10 + 328);

      return MEMORY[0x2822009F8](sub_22B294224, v36, 0);
    }

    else
    {
      v46 = *(v10 + 80);
      if (*(v46 + 16) && (*(v10 + 440) & 1) != 0)
      {
        v48 = *(v10 + 88);
        v47 = *(v10 + 96);
        v49 = sub_22B360B6C();
        (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
        v50 = sub_22B2A51E0(&unk_28140AA20, type metadata accessor for HomeEnergyForecastCache, &unk_22B364CFC);
        v51 = swift_allocObject();
        v51[2] = v48;
        v51[3] = v50;
        v51[4] = v48;
        v51[5] = v46;
        swift_retain_n();
        sub_22B123DF0(0, 0, v47, &unk_22B366AB8, v51);
      }

      else
      {
      }

      if (qword_28140A6A0 != -1)
      {
        swift_once();
      }

      *(v10 + 416) = qword_28140BD38;

      v73 = swift_task_alloc();
      *(v10 + 424) = v73;
      *v73 = v10;
      v73[1] = sub_22B294550;

      return sub_22B216430();
    }
  }

  else
  {
    v37 = *(v10 + 336);
    v38 = *(v10 + 344) + 1;
    *(v10 + 344) = v38;
    *(v10 + 442) = v11;
    v39 = *(v10 + 200);
    v40 = *(v10 + 128);
    v41 = *(v10 + 136);
    v42 = *(v10 + 120);
    sub_22B2A5040(*(v10 + 304) + ((*(v10 + 432) + 32) & ~*(v10 + 432)) + v37 * v38, v39, type metadata accessor for CDEnergyGuidanceTracker);
    v78 = *v39;
    *(v10 + 352) = *v39;
    v76 = v39[1];
    *(v10 + 360) = v76;
    sub_22B35E1EC();
    v43 = *(v41 + 48);
    if (v43(v42, 1, v40) == 1)
    {
      v45 = *(v10 + 120);
      v44 = *(v10 + 128);
      (*(*(v10 + 136) + 104))(*(v10 + 144), *(v10 + 436), v44);
      if (v43(v45, 1, v44) != 1)
      {
        sub_22B123284(*(v10 + 120), &qword_27D8BA390, &qword_22B364460);
      }
    }

    else
    {
      (*(*(v10 + 136) + 32))(*(v10 + 144), *(v10 + 120), *(v10 + 128));
    }

    v52 = *(v10 + 240);
    v54 = *(v10 + 216);
    v53 = *(v10 + 224);
    v55 = *(v10 + 200);
    v56 = *(v10 + 184);
    v57 = *(v10 + 112);
    v58 = v56[8];
    v59 = (v55 + v56[7]);
    v60 = *v59;
    v61 = v59[1];
    v62 = (v55 + v56[9]);
    v63 = *v62;
    v64 = v62[1];
    v65 = (v55 + v58);
    v67 = *v65;
    v66 = v65[1];
    v68 = *(v53 + 16);
    *(v10 + 368) = v68;
    *(v10 + 376) = (v53 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v68(v57, v52, v54);
    v69 = *(v53 + 56);
    *(v10 + 384) = v69;
    *(v10 + 392) = (v53 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v69(v57, 0, 1, v54);
    v70 = swift_task_alloc();
    *(v10 + 400) = v70;
    *v70 = v10;
    v70[1] = sub_22B2939CC;
    v71 = *(v10 + 144);
    v72 = *(v10 + 112);
    v82 = v66;
    v83 = v72;

    return sub_22B2A34B8(v78, v76, v71, v60, v61, v63, v64, v67, a9, a10);
  }
}

uint64_t sub_22B294224()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  (*(v0 + 368))(v4, *(v0 + 240), v2);
  v1(v4, 0, 1, v2);
  sub_22B255CFC(v4, v5);
  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    sub_22B123284(*(v0 + 104), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v6 = *(v0 + 288);
    v7 = *(v0 + 232);
    v8 = *(v0 + 216);
    (*(*(v0 + 224) + 32))(v7, *(v0 + 104), v8);
    sub_22B255B48(v7);
    v6(v7, v8);
  }

  v9 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_22B294378, v9, 0);
}

uint64_t sub_22B294378()
{
  v1 = *(v0 + 80);
  if (*(v1 + 16) && (*(v0 + 440) & 1) != 0)
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = sub_22B360B6C();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = sub_22B2A51E0(&unk_28140AA20, type metadata accessor for HomeEnergyForecastCache, &unk_22B364CFC);
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v5;
    v6[4] = v3;
    v6[5] = v1;
    swift_retain_n();
    sub_22B123DF0(0, 0, v2, &unk_22B366AB8, v6);
  }

  else
  {
  }

  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  *(v0 + 416) = qword_28140BD38;

  v7 = swift_task_alloc();
  *(v0 + 424) = v7;
  *v7 = v0;
  v7[1] = sub_22B294550;

  return sub_22B216430();
}

uint64_t sub_22B294550()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_22B29467C, v1, 0);
}

uint64_t sub_22B29467C()
{
  (*(v0 + 288))(*(v0 + 240), *(v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B294780(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 488) = v17;
  *(v9 + 496) = v8;
  *(v9 + 472) = a8;
  *(v9 + 480) = v16;
  *(v9 + 456) = a6;
  *(v9 + 464) = a7;
  *(v9 + 1015) = a4;
  *(v9 + 440) = a3;
  *(v9 + 448) = a5;
  *(v9 + 424) = a1;
  *(v9 + 432) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC20, &qword_22B366AC0);
  *(v9 + 504) = swift_task_alloc();
  *(v9 + 512) = swift_task_alloc();
  v10 = sub_22B35E33C();
  *(v9 + 520) = v10;
  *(v9 + 528) = *(v10 - 8);
  *(v9 + 536) = swift_task_alloc();
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  v11 = sub_22B35E20C();
  *(v9 + 584) = v11;
  *(v9 + 592) = *(v11 - 8);
  *(v9 + 600) = swift_task_alloc();
  *(v9 + 608) = swift_task_alloc();
  v12 = sub_22B35DE9C();
  *(v9 + 616) = v12;
  *(v9 + 624) = *(v12 - 8);
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  v13 = sub_22B36052C();
  *(v9 + 656) = v13;
  *(v9 + 664) = *(v13 - 8);
  *(v9 + 672) = swift_task_alloc();
  *(v9 + 680) = swift_task_alloc();
  *(v9 + 688) = swift_task_alloc();
  *(v9 + 696) = swift_task_alloc();
  *(v9 + 704) = swift_task_alloc();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  *(v9 + 728) = swift_task_alloc();
  *(v9 + 736) = swift_task_alloc();
  *(v9 + 744) = swift_task_alloc();
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B294AC8, v8, 0);
}

uint64_t sub_22B294AC8(uint64_t a1)
{
  v97 = v1;
  if (sub_22B35EEBC())
  {
    v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v3 = sub_22B36081C();
    v4 = [v2 initWithSuiteName_];
    *(v1 + 776) = v4;

    if (v4)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v5 = *(v1 + 768);
      v6 = *(v1 + 664);
      v7 = *(v1 + 656);
      v8 = __swift_project_value_buffer(v7, qword_28140BD10);
      *(v1 + 784) = v8;
      swift_beginAccess();
      v9 = *(v6 + 16);
      *(v1 + 792) = v9;
      *(v1 + 800) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v9(v5, v8, v7);
      v10 = sub_22B36050C();
      v11 = sub_22B360CFC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_22B116000, v10, v11, "Reading com.apple.Home defaults", v12, 2u);
        MEMORY[0x23188F650](v12, -1, -1);
      }

      v13 = *(v1 + 768);
      v14 = *(v1 + 664);
      v15 = *(v1 + 656);

      v16 = *(v14 + 8);
      *(v1 + 808) = v16;
      v16(v13, v15);
      v17 = sub_22B36081C();
      v18 = [v4 objectForKey_];

      if (v18)
      {
        sub_22B36102C();
        swift_unknownObjectRelease();
      }

      else
      {
        v95 = 0u;
        v96 = 0u;
      }

      v19 = v96;
      *(v1 + 208) = v95;
      *(v1 + 224) = v19;
      if (*(v1 + 232))
      {
        if (swift_dynamicCast() && (*(v1 + 1014) & 1) != 0)
        {
          if (qword_28140AA30 != -1)
          {
            swift_once();
          }

          v20 = swift_task_alloc();
          *(v1 + 816) = v20;
          *v20 = v1;
          v20[1] = sub_22B2954EC;

          return sub_22B299254();
        }
      }

      else
      {
        sub_22B123284(v1 + 208, &unk_27D8BA950, &qword_22B364940);
      }

      (*(v1 + 792))(*(v1 + 760), *(v1 + 784), *(v1 + 656));
      v22 = sub_22B36050C();
      v23 = sub_22B360CFC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_22B116000, v22, v23, "Did not find entry in com.apple.Home defaults", v24, 2u);
        MEMORY[0x23188F650](v24, -1, -1);
      }

      v25 = *(v1 + 808);
      v26 = *(v1 + 760);
      v27 = *(v1 + 656);

      v25(v26, v27);
    }
  }

  v28 = *(v1 + 496);
  swift_beginAccess();
  if (*(*(v28 + 120) + 16))
  {
    if (qword_28140AC88 != -1)
    {
      swift_once();
    }

    v29 = qword_28140BD80;
    *(v1 + 824) = qword_28140BD80;
    v30 = sub_22B295D68;
LABEL_26:

    return MEMORY[0x2822009F8](v30, v29, 0);
  }

  v32 = *(v1 + 488);
  v31 = *(v1 + 496);
  v33 = *(v1 + 480);
  v91 = *(v1 + 448);
  v93 = *(v1 + 464);
  v34 = *(v1 + 1015);
  v35 = *(v1 + 432);
  v36 = *(v1 + 424);
  v37 = sub_22B35E1FC();
  *(v1 + 16) = v36;
  *(v1 + 24) = v35;
  *(v1 + 32) = v37;
  *(v1 + 40) = v91;
  *(v1 + 56) = v93;
  *(v1 + 72) = v33;
  *(v1 + 80) = v32;
  v38 = *(v31 + 120);

  LOBYTE(v31) = sub_22B325AD4((v1 + 16), v38);

  if ((v31 & 1) != 0 || !v34)
  {
    v61 = *(v1 + 1015);
    v62 = *(*(v1 + 496) + 120);

    v63 = sub_22B325AD4((v1 + 16), v62);

    if ((v63 & 1) != 0 && v61)
    {
      if (qword_28140B068 != -1)
      {
        swift_once();
      }

      v64 = qword_28140BDC0;
      *(v1 + 848) = qword_28140BDC0;
      *(v1 + 1008) = sub_22B35E1FC();
      v30 = sub_22B2970C8;
      v29 = v64;
      goto LABEL_26;
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v65 = *(v1 + 696);
    v66 = *(v1 + 664);
    v67 = *(v1 + 656);
    v68 = __swift_project_value_buffer(v67, qword_28140BD10);
    *(v1 + 968) = v68;
    swift_beginAccess();
    v69 = *(v66 + 16);
    *(v1 + 976) = v69;
    *(v1 + 984) = (v66 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v69(v65, v68, v67);
    v70 = sub_22B36050C();
    v71 = sub_22B360CFC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_22B116000, v70, v71, "Fetching guidance from server", v72, 2u);
      MEMORY[0x23188F650](v72, -1, -1);
    }

    v73 = *(v1 + 696);
    v74 = *(v1 + 664);
    v75 = *(v1 + 656);

    v76 = *(v74 + 8);
    *(v1 + 992) = v76;
    v76(v73, v75);
    v77 = swift_task_alloc();
    *(v1 + 1000) = v77;
    *v77 = v1;
    v77[1] = sub_22B298C90;
    v78 = *(v1 + 504);
    v79 = *(v1 + 488);
    v80 = *(v1 + 464);
    v81 = *(v1 + 472);
    v82 = *(v1 + 448);
    v83 = *(v1 + 456);
    v84 = *(v1 + 432);
    v85 = *(v1 + 440);
    v86 = *(v1 + 424);
    v99 = *(v1 + 480);
    v100 = v79;

    return sub_22B29C1E8(v78, v86, v84, v85, v82, v83, v80, v81);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v39 = *(v1 + 744);
    v40 = *(v1 + 664);
    v41 = *(v1 + 656);
    v42 = *(v1 + 608);
    v43 = *(v1 + 592);
    v44 = *(v1 + 584);
    v45 = *(v1 + 440);
    v46 = __swift_project_value_buffer(v41, qword_28140BD10);
    swift_beginAccess();
    (*(v40 + 16))(v39, v46, v41);
    (*(v43 + 16))(v42, v45, v44);

    v47 = sub_22B36050C();
    v48 = sub_22B360D2C();

    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v1 + 744);
    v51 = *(v1 + 664);
    v52 = *(v1 + 656);
    v53 = *(v1 + 608);
    v54 = *(v1 + 592);
    v55 = *(v1 + 584);
    v56 = *(v1 + 472);
    if (v49)
    {
      v90 = *(v1 + 464);
      v88 = *(v1 + 432);
      v94 = *(v1 + 744);
      v57 = *(v1 + 424);
      v92 = *(v1 + 656);
      v58 = swift_slowAlloc();
      v89 = v48;
      v59 = swift_slowAlloc();
      *&v95 = v59;
      *v58 = 136381187;
      *(v58 + 4) = sub_22B1A7B20(v57, v88, &v95);
      *(v58 + 12) = 513;
      LOWORD(v57) = sub_22B35E1FC();
      (*(v54 + 8))(v53, v55);
      *(v58 + 14) = v57;
      *(v58 + 16) = 1025;
      v60 = HIBYTE(v56) & 0xF;
      if ((v56 & 0x2000000000000000) == 0)
      {
        v60 = v90 & 0xFFFFFFFFFFFFLL;
      }

      *(v58 + 18) = v60 != 0;

      _os_log_impl(&dword_22B116000, v47, v89, "Enabling caching for %{private}s %{private}hd hasUtilityInfo: %{BOOL,private}d", v58, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x23188F650](v59, -1, -1);
      MEMORY[0x23188F650](v58, -1, -1);

      (*(v51 + 8))(v94, v92);
    }

    else
    {
      (*(v54 + 8))(*(v1 + 608), *(v1 + 584));

      (*(v51 + 8))(v50, v52);
    }

    v87 = swift_task_alloc();
    *(v1 + 840) = v87;
    *v87 = v1;
    v87[1] = sub_22B296D24;

    return sub_22B29AB48(v1 + 16, 0);
  }
}

uint64_t sub_22B2954EC()
{
  v1 = *(*v0 + 496);

  return MEMORY[0x2822009F8](sub_22B2955FC, v1, 0);
}

uint64_t sub_22B2955FC()
{
  v78 = v0;
  v1 = *(v0 + 776);
  v2 = sub_22B36081C();
  [v1 removeObjectForKey_];

  (*(v0 + 792))(*(v0 + 760), *(v0 + 784), *(v0 + 656));
  v3 = sub_22B36050C();
  v4 = sub_22B360CFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B116000, v3, v4, "Did not find entry in com.apple.Home defaults", v5, 2u);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  v6 = *(v0 + 808);
  v7 = *(v0 + 760);
  v8 = *(v0 + 656);

  v6(v7, v8);
  v9 = *(v0 + 496);
  swift_beginAccess();
  if (*(*(v9 + 120) + 16))
  {
    if (qword_28140AC88 != -1)
    {
      swift_once();
    }

    v10 = qword_28140BD80;
    *(v0 + 824) = qword_28140BD80;
    v11 = sub_22B295D68;
LABEL_7:

    return MEMORY[0x2822009F8](v11, v10, 0);
  }

  v13 = *(v0 + 488);
  v12 = *(v0 + 496);
  v14 = *(v0 + 480);
  v73 = *(v0 + 448);
  v75 = *(v0 + 464);
  v15 = *(v0 + 1015);
  v16 = *(v0 + 432);
  v17 = *(v0 + 424);
  v18 = sub_22B35E1FC();
  *(v0 + 16) = v17;
  *(v0 + 24) = v16;
  *(v0 + 32) = v18;
  *(v0 + 40) = v73;
  *(v0 + 56) = v75;
  *(v0 + 72) = v14;
  *(v0 + 80) = v13;
  v19 = *(v12 + 120);

  LOBYTE(v12) = sub_22B325AD4((v0 + 16), v19);

  if ((v12 & 1) != 0 || !v15)
  {
    v42 = *(v0 + 1015);
    v43 = *(*(v0 + 496) + 120);

    v44 = sub_22B325AD4((v0 + 16), v43);

    if ((v44 & 1) != 0 && v42)
    {
      if (qword_28140B068 != -1)
      {
        swift_once();
      }

      v45 = qword_28140BDC0;
      *(v0 + 848) = qword_28140BDC0;
      *(v0 + 1008) = sub_22B35E1FC();
      v11 = sub_22B2970C8;
      v10 = v45;
      goto LABEL_7;
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 696);
    v47 = *(v0 + 664);
    v48 = *(v0 + 656);
    v49 = __swift_project_value_buffer(v48, qword_28140BD10);
    *(v0 + 968) = v49;
    swift_beginAccess();
    v50 = *(v47 + 16);
    *(v0 + 976) = v50;
    *(v0 + 984) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v50(v46, v49, v48);
    v51 = sub_22B36050C();
    v52 = sub_22B360CFC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22B116000, v51, v52, "Fetching guidance from server", v53, 2u);
      MEMORY[0x23188F650](v53, -1, -1);
    }

    v54 = *(v0 + 696);
    v55 = *(v0 + 664);
    v56 = *(v0 + 656);

    v57 = *(v55 + 8);
    *(v0 + 992) = v57;
    v57(v54, v56);
    v58 = swift_task_alloc();
    *(v0 + 1000) = v58;
    *v58 = v0;
    v58[1] = sub_22B298C90;
    v59 = *(v0 + 504);
    v60 = *(v0 + 488);
    v61 = *(v0 + 464);
    v62 = *(v0 + 472);
    v63 = *(v0 + 448);
    v64 = *(v0 + 456);
    v65 = *(v0 + 432);
    v66 = *(v0 + 440);
    v67 = *(v0 + 424);
    v80 = *(v0 + 480);
    v81 = v60;

    return sub_22B29C1E8(v59, v67, v65, v66, v63, v64, v61, v62);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 744);
    v21 = *(v0 + 664);
    v22 = *(v0 + 656);
    v23 = *(v0 + 608);
    v24 = *(v0 + 592);
    v25 = *(v0 + 584);
    v26 = *(v0 + 440);
    v27 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v21 + 16))(v20, v27, v22);
    (*(v24 + 16))(v23, v26, v25);

    v28 = sub_22B36050C();
    v29 = sub_22B360D2C();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 744);
    v32 = *(v0 + 664);
    v33 = *(v0 + 656);
    v34 = *(v0 + 608);
    v35 = *(v0 + 592);
    v36 = *(v0 + 584);
    v37 = *(v0 + 472);
    if (v30)
    {
      v72 = *(v0 + 464);
      v70 = *(v0 + 432);
      v76 = *(v0 + 744);
      v38 = *(v0 + 424);
      v74 = *(v0 + 656);
      v39 = swift_slowAlloc();
      v71 = v29;
      v40 = swift_slowAlloc();
      v77 = v40;
      *v39 = 136381187;
      *(v39 + 4) = sub_22B1A7B20(v38, v70, &v77);
      *(v39 + 12) = 513;
      LOWORD(v38) = sub_22B35E1FC();
      (*(v35 + 8))(v34, v36);
      *(v39 + 14) = v38;
      *(v39 + 16) = 1025;
      v41 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v41 = v72 & 0xFFFFFFFFFFFFLL;
      }

      *(v39 + 18) = v41 != 0;

      _os_log_impl(&dword_22B116000, v28, v71, "Enabling caching for %{private}s %{private}hd hasUtilityInfo: %{BOOL,private}d", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23188F650](v40, -1, -1);
      MEMORY[0x23188F650](v39, -1, -1);

      (*(v32 + 8))(v76, v74);
    }

    else
    {
      (*(v35 + 8))(*(v0 + 608), *(v0 + 584));

      (*(v32 + 8))(v31, v33);
    }

    v68 = swift_task_alloc();
    *(v0 + 840) = v68;
    *v68 = v0;
    v68[1] = sub_22B296D24;

    return sub_22B29AB48(v0 + 16, 0);
  }
}

uint64_t sub_22B295D68()
{
  v1 = v0[103];
  v2 = v0[81];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[62];
  v6 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  (*(v3 + 16))(v2, v1 + v6, v4);

  return MEMORY[0x2822009F8](sub_22B295E28, v5, 0);
}

uint64_t sub_22B295E28(uint64_t a1)
{
  v85 = v1;
  v2 = *(v1 + 648);
  v3 = *(v1 + 640);
  v4 = *(v1 + 624);
  v5 = *(v1 + 616);
  sub_22B35DE6C();
  v6 = sub_22B35DDFC();
  v7 = *(v4 + 8);
  v7(v3, v5);
  v7(v2, v5);
  if (v6)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v8 = *(v1 + 752);
    v9 = *(v1 + 664);
    v10 = *(v1 + 656);
    v11 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_22B36050C();
    v13 = sub_22B360D1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v12, v13, "Stale guidance cache. Forcing refresh", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    v15 = *(v1 + 752);
    v16 = *(v1 + 664);
    v17 = *(v1 + 656);

    (*(v16 + 8))(v15, v17);
    v18 = swift_task_alloc();
    *(v1 + 832) = v18;
    *v18 = v1;
    v18[1] = sub_22B29660C;

    return sub_22B199D68(0);
  }

  else
  {
    v21 = *(v1 + 488);
    v20 = *(v1 + 496);
    v22 = *(v1 + 480);
    v80 = *(v1 + 448);
    v82 = *(v1 + 464);
    v23 = *(v1 + 1015);
    v24 = *(v1 + 432);
    v25 = *(v1 + 424);
    v26 = sub_22B35E1FC();
    *(v1 + 16) = v25;
    *(v1 + 24) = v24;
    *(v1 + 32) = v26;
    *(v1 + 40) = v80;
    *(v1 + 56) = v82;
    *(v1 + 72) = v22;
    *(v1 + 80) = v21;
    v27 = *(v20 + 120);

    LOBYTE(v20) = sub_22B325AD4((v1 + 16), v27);

    if ((v20 & 1) != 0 || !v23)
    {
      v50 = *(v1 + 1015);
      v51 = *(*(v1 + 496) + 120);

      v52 = sub_22B325AD4((v1 + 16), v51);

      if ((v52 & 1) != 0 && v50)
      {
        if (qword_28140B068 != -1)
        {
          swift_once();
        }

        v53 = qword_28140BDC0;
        *(v1 + 848) = qword_28140BDC0;
        *(v1 + 1008) = sub_22B35E1FC();

        return MEMORY[0x2822009F8](sub_22B2970C8, v53, 0);
      }

      else
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v54 = *(v1 + 696);
        v55 = *(v1 + 664);
        v56 = *(v1 + 656);
        v57 = __swift_project_value_buffer(v56, qword_28140BD10);
        *(v1 + 968) = v57;
        swift_beginAccess();
        v58 = *(v55 + 16);
        *(v1 + 976) = v58;
        *(v1 + 984) = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v58(v54, v57, v56);
        v59 = sub_22B36050C();
        v60 = sub_22B360CFC();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_22B116000, v59, v60, "Fetching guidance from server", v61, 2u);
          MEMORY[0x23188F650](v61, -1, -1);
        }

        v62 = *(v1 + 696);
        v63 = *(v1 + 664);
        v64 = *(v1 + 656);

        v65 = *(v63 + 8);
        *(v1 + 992) = v65;
        v65(v62, v64);
        v66 = swift_task_alloc();
        *(v1 + 1000) = v66;
        *v66 = v1;
        v66[1] = sub_22B298C90;
        v67 = *(v1 + 504);
        v68 = *(v1 + 488);
        v69 = *(v1 + 464);
        v70 = *(v1 + 472);
        v71 = *(v1 + 448);
        v72 = *(v1 + 456);
        v73 = *(v1 + 432);
        v74 = *(v1 + 440);
        v75 = *(v1 + 424);
        v87 = *(v1 + 480);
        v88 = v68;

        return sub_22B29C1E8(v67, v75, v73, v74, v71, v72, v69, v70);
      }
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v28 = *(v1 + 744);
      v29 = *(v1 + 664);
      v30 = *(v1 + 656);
      v31 = *(v1 + 608);
      v32 = *(v1 + 592);
      v33 = *(v1 + 584);
      v34 = *(v1 + 440);
      v35 = __swift_project_value_buffer(v30, qword_28140BD10);
      swift_beginAccess();
      (*(v29 + 16))(v28, v35, v30);
      (*(v32 + 16))(v31, v34, v33);

      v36 = sub_22B36050C();
      v37 = sub_22B360D2C();

      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v1 + 744);
      v40 = *(v1 + 664);
      v41 = *(v1 + 656);
      v42 = *(v1 + 608);
      v43 = *(v1 + 592);
      v44 = *(v1 + 584);
      v45 = *(v1 + 472);
      if (v38)
      {
        v79 = *(v1 + 464);
        v77 = *(v1 + 432);
        v83 = *(v1 + 744);
        v46 = *(v1 + 424);
        v81 = *(v1 + 656);
        v47 = swift_slowAlloc();
        v78 = v37;
        v48 = swift_slowAlloc();
        v84 = v48;
        *v47 = 136381187;
        *(v47 + 4) = sub_22B1A7B20(v46, v77, &v84);
        *(v47 + 12) = 513;
        LOWORD(v46) = sub_22B35E1FC();
        (*(v43 + 8))(v42, v44);
        *(v47 + 14) = v46;
        *(v47 + 16) = 1025;
        v49 = HIBYTE(v45) & 0xF;
        if ((v45 & 0x2000000000000000) == 0)
        {
          v49 = v79 & 0xFFFFFFFFFFFFLL;
        }

        *(v47 + 18) = v49 != 0;

        _os_log_impl(&dword_22B116000, v36, v78, "Enabling caching for %{private}s %{private}hd hasUtilityInfo: %{BOOL,private}d", v47, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x23188F650](v48, -1, -1);
        MEMORY[0x23188F650](v47, -1, -1);

        (*(v40 + 8))(v83, v81);
      }

      else
      {
        (*(v43 + 8))(*(v1 + 608), *(v1 + 584));

        (*(v40 + 8))(v39, v41);
      }

      v76 = swift_task_alloc();
      *(v1 + 840) = v76;
      *v76 = v1;
      v76[1] = sub_22B296D24;

      return sub_22B29AB48(v1 + 16, 0);
    }
  }
}

uint64_t sub_22B29660C()
{
  v1 = *(*v0 + 496);

  return MEMORY[0x2822009F8](sub_22B29671C, v1, 0);
}

uint64_t sub_22B29671C(uint64_t a1)
{
  v68 = v1;
  v3 = *(v1 + 488);
  v2 = *(v1 + 496);
  v4 = *(v1 + 480);
  v62 = *(v1 + 448);
  v65 = *(v1 + 464);
  v5 = *(v1 + 1015);
  v6 = *(v1 + 432);
  v7 = *(v1 + 424);
  v8 = sub_22B35E1FC();
  *(v1 + 16) = v7;
  *(v1 + 24) = v6;
  *(v1 + 32) = v8;
  *(v1 + 40) = v62;
  *(v1 + 56) = v65;
  *(v1 + 72) = v4;
  *(v1 + 80) = v3;
  v9 = *(v2 + 120);

  LOBYTE(v2) = sub_22B325AD4((v1 + 16), v9);

  if ((v2 & 1) != 0 || !v5)
  {
    v30 = *(v1 + 1015);
    v31 = *(*(v1 + 496) + 120);

    v32 = sub_22B325AD4((v1 + 16), v31);

    if ((v32 & 1) != 0 && v30)
    {
      if (qword_28140B068 != -1)
      {
        swift_once();
      }

      v33 = qword_28140BDC0;
      *(v1 + 848) = qword_28140BDC0;
      *(v1 + 1008) = sub_22B35E1FC();

      return MEMORY[0x2822009F8](sub_22B2970C8, v33, 0);
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v34 = *(v1 + 696);
      v35 = *(v1 + 664);
      v36 = *(v1 + 656);
      v37 = __swift_project_value_buffer(v36, qword_28140BD10);
      *(v1 + 968) = v37;
      swift_beginAccess();
      v38 = *(v35 + 16);
      *(v1 + 976) = v38;
      *(v1 + 984) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38(v34, v37, v36);
      v39 = sub_22B36050C();
      v40 = sub_22B360CFC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_22B116000, v39, v40, "Fetching guidance from server", v41, 2u);
        MEMORY[0x23188F650](v41, -1, -1);
      }

      v42 = *(v1 + 696);
      v43 = *(v1 + 664);
      v44 = *(v1 + 656);

      v45 = *(v43 + 8);
      *(v1 + 992) = v45;
      v45(v42, v44);
      v46 = swift_task_alloc();
      *(v1 + 1000) = v46;
      *v46 = v1;
      v46[1] = sub_22B298C90;
      v47 = *(v1 + 504);
      v48 = *(v1 + 488);
      v49 = *(v1 + 464);
      v50 = *(v1 + 472);
      v51 = *(v1 + 448);
      v52 = *(v1 + 456);
      v53 = *(v1 + 432);
      v54 = *(v1 + 440);
      v55 = *(v1 + 424);
      v70 = *(v1 + 480);
      v71 = v48;

      return sub_22B29C1E8(v47, v55, v53, v54, v51, v52, v49, v50);
    }
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v10 = *(v1 + 744);
    v11 = *(v1 + 664);
    v12 = *(v1 + 656);
    v63 = *(v1 + 608);
    v13 = *(v1 + 592);
    v14 = *(v1 + 584);
    v15 = *(v1 + 440);
    v16 = __swift_project_value_buffer(v12, qword_28140BD10);
    swift_beginAccess();
    (*(v11 + 16))(v10, v16, v12);
    (*(v13 + 16))(v63, v15, v14);

    v17 = sub_22B36050C();
    LOBYTE(v10) = sub_22B360D2C();

    v66 = v10;
    v18 = os_log_type_enabled(v17, v10);
    v19 = *(v1 + 744);
    v20 = *(v1 + 664);
    v21 = *(v1 + 656);
    v22 = *(v1 + 608);
    v23 = *(v1 + 592);
    v24 = *(v1 + 584);
    v25 = *(v1 + 472);
    if (v18)
    {
      v58 = *(v1 + 432);
      v59 = *(v1 + 464);
      log = v17;
      v26 = *(v1 + 424);
      v64 = *(v1 + 744);
      v27 = swift_slowAlloc();
      v61 = v21;
      v28 = swift_slowAlloc();
      v67 = v28;
      *v27 = 136381187;
      *(v27 + 4) = sub_22B1A7B20(v26, v58, &v67);
      *(v27 + 12) = 513;
      LOWORD(v26) = sub_22B35E1FC();
      (*(v23 + 8))(v22, v24);
      *(v27 + 14) = v26;
      *(v27 + 16) = 1025;
      v29 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v29 = v59 & 0xFFFFFFFFFFFFLL;
      }

      *(v27 + 18) = v29 != 0;

      _os_log_impl(&dword_22B116000, log, v66, "Enabling caching for %{private}s %{private}hd hasUtilityInfo: %{BOOL,private}d", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23188F650](v28, -1, -1);
      MEMORY[0x23188F650](v27, -1, -1);

      (*(v20 + 8))(v64, v61);
    }

    else
    {
      (*(v23 + 8))(*(v1 + 608), *(v1 + 584));

      (*(v20 + 8))(v19, v21);
    }

    v56 = swift_task_alloc();
    *(v1 + 840) = v56;
    *v56 = v1;
    v56[1] = sub_22B296D24;

    return sub_22B29AB48(v1 + 16, 0);
  }
}

uint64_t sub_22B296D24()
{
  v1 = *(*v0 + 496);

  return MEMORY[0x2822009F8](sub_22B296E34, v1, 0);
}

uint64_t sub_22B296E34()
{
  v1 = *(v0 + 1015);
  v2 = *(*(v0 + 496) + 120);

  v3 = sub_22B325AD4((v0 + 16), v2);

  if ((v3 & 1) != 0 && v1)
  {
    if (qword_28140B068 != -1)
    {
      swift_once();
    }

    v4 = qword_28140BDC0;
    *(v0 + 848) = qword_28140BDC0;
    *(v0 + 1008) = sub_22B35E1FC();

    return MEMORY[0x2822009F8](sub_22B2970C8, v4, 0);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 696);
    v6 = *(v0 + 664);
    v7 = *(v0 + 656);
    v8 = __swift_project_value_buffer(v7, qword_28140BD10);
    *(v0 + 968) = v8;
    swift_beginAccess();
    v9 = *(v6 + 16);
    *(v0 + 976) = v9;
    *(v0 + 984) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v5, v8, v7);
    v10 = sub_22B36050C();
    v11 = sub_22B360CFC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v10, v11, "Fetching guidance from server", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    v13 = *(v0 + 696);
    v14 = *(v0 + 664);
    v15 = *(v0 + 656);

    v16 = *(v14 + 8);
    *(v0 + 992) = v16;
    v16(v13, v15);
    v17 = swift_task_alloc();
    *(v0 + 1000) = v17;
    *v17 = v0;
    v17[1] = sub_22B298C90;
    v18 = *(v0 + 504);
    v19 = *(v0 + 464);
    v20 = *(v0 + 472);
    v21 = *(v0 + 448);
    v22 = *(v0 + 456);
    v23 = *(v0 + 432);
    v24 = *(v0 + 440);
    v25 = *(v0 + 424);

    return sub_22B29C1E8(v18, v25, v23, v24, v21, v22, v19, v20);
  }
}

uint64_t sub_22B2970C8()
{
  v32 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 736);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  *(v0 + 856) = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v0 + 864) = v5;
  *(v0 + 872) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 736);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);
  if (v8)
  {
    v13 = *(v0 + 424);
    v12 = *(v0 + 432);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v31);
    _os_log_impl(&dword_22B116000, v6, v7, "Get energy guidance tracking from cache for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  v16 = *(v10 + 8);
  v16(v9, v11);
  *(v0 + 880) = v16;
  v17 = *(*(v0 + 848) + 112);
  if (v17)
  {
    v18 = *(v0 + 1008);
    v19 = *(v0 + 568);
    v21 = *(v0 + 480);
    v20 = *(v0 + 488);
    v29 = *(v0 + 448);
    v30 = *(v0 + 464);
    v22 = *(v0 + 424);
    v23 = *(v0 + 432);
    (*(*(v0 + 624) + 56))(v19, 1, 1, *(v0 + 616));
    v24 = *(v17 + 48);
    v25 = swift_task_alloc();
    *(v25 + 16) = v17;
    *(v25 + 24) = v22;
    *(v25 + 32) = v23;
    *(v25 + 40) = v18;
    *(v25 + 48) = v29;
    *(v25 + 64) = v30;
    *(v25 + 80) = v21;
    *(v25 + 88) = v20;
    *(v25 + 96) = v19;

    v26 = v24;
    sub_22B360E7C();

    sub_22B123284(v19, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    (*(*(v0 + 624) + 56))(*(v0 + 576), 1, 1, *(v0 + 616));
  }

  *(v0 + 888) = 0;
  v27 = *(v0 + 496);

  return MEMORY[0x2822009F8](sub_22B2973E0, v27, 0);
}

uint64_t sub_22B2973E0()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 560);
  sub_22B170BE0(*(v0 + 576), v3, &qword_27D8BA340, &qword_22B363FB0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_22B123284(*(v0 + 560), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    (*(*(v0 + 624) + 32))(*(v0 + 632), *(v0 + 560), *(v0 + 616));
    sub_22B35DE2C();
    v5 = -v4;
    sub_22B35F65C();
    if (v6 < v5)
    {
      v7 = *(v0 + 848);
      *(v0 + 1010) = sub_22B35E1FC();
      v8 = sub_22B29756C;
      goto LABEL_9;
    }

    (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
  }

  if (qword_28140B168 != -1)
  {
    swift_once();
  }

  v7 = qword_28140BDC8;
  *(v0 + 896) = qword_28140BDC8;
  *(v0 + 1012) = sub_22B35E1FC();
  v8 = sub_22B2979A4;
LABEL_9:

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B29756C()
{
  v34 = v0;
  (*(v0 + 864))(*(v0 + 728), *(v0 + 856), *(v0 + 656));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 880);
  v5 = *(v0 + 728);
  v6 = *(v0 + 656);
  if (v3)
  {
    v31 = *(v0 + 880);
    v8 = *(v0 + 424);
    v7 = *(v0 + 432);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v33 = v10;
    *v9 = 136380675;
    *(v9 + 4) = sub_22B1A7B20(v8, v7, &v33);
    _os_log_impl(&dword_22B116000, v1, v2, "Set last accessed date for cache entry for %{private}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);

    v31(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v11 = *(*(v0 + 848) + 112);
  if (v11)
  {
    v29 = *(v0 + 1010);
    v12 = *(v0 + 488);
    v30 = *(v0 + 480);
    v14 = *(v0 + 464);
    v13 = *(v0 + 472);
    v16 = *(v0 + 448);
    v15 = *(v0 + 456);
    v18 = *(v0 + 424);
    v17 = *(v0 + 432);
    v32 = *(v11 + 48);
    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    *(v19 + 24) = v18;
    *(v19 + 32) = v17;
    *(v19 + 40) = v29;
    *(v19 + 48) = v16;
    *(v19 + 56) = v15;
    *(v19 + 64) = v14;
    *(v19 + 72) = v13;
    *(v19 + 80) = v30;
    *(v19 + 88) = v12;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_22B2A5228;
    *(v20 + 24) = v19;
    *(v0 + 192) = sub_22B12819C;
    *(v0 + 200) = v20;
    *(v0 + 160) = MEMORY[0x277D85DD0];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_22B32556C;
    *(v0 + 184) = &block_descriptor_21;
    v21 = _Block_copy((v0 + 160));
    swift_retain_n();

    v22 = v32;

    [v22 performBlockAndWait_];

    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v24, v25, v26);
    }

    v25 = *(v0 + 496);
    v27 = sub_22B2978E0;
  }

  else
  {
    v25 = *(v0 + 496);
    v27 = sub_22B2A532C;
  }

  v24 = v27;
  v26 = 0;

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_22B2978E0()
{
  (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
  if (qword_28140B168 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDC8;
  *(v0 + 896) = qword_28140BDC8;
  *(v0 + 1012) = sub_22B35E1FC();

  return MEMORY[0x2822009F8](sub_22B2979A4, v1, 0);
}

uint64_t sub_22B2979A4()
{
  v34 = v0;
  (*(v0 + 864))(*(v0 + 720), *(v0 + 856), *(v0 + 656));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1012);
    v29 = *(v0 + 720);
    v31 = *(v0 + 880);
    v27 = *(v0 + 656);
    v4 = *(v0 + 464);
    v5 = *(v0 + 472);
    v7 = *(v0 + 424);
    v6 = *(v0 + 432);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136381187;
    *(v8 + 4) = sub_22B1A7B20(v7, v6, &v33);
    *(v8 + 12) = 512;
    *(v8 + 14) = v3;
    *(v8 + 16) = 1024;
    v10 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v10 = v4 & 0xFFFFFFFFFFFFLL;
    }

    *(v8 + 18) = v10 != 0;

    _os_log_impl(&dword_22B116000, v1, v2, "Get energy guidance from cache for %{private}s %hd hasUtility: %{BOOL}d", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);

    v31(v29, v27);
  }

  else
  {
    v11 = *(v0 + 880);
    v12 = *(v0 + 720);
    v13 = *(v0 + 656);

    v11(v12, v13);
  }

  v14 = *(*(v0 + 896) + 112);
  if (v14)
  {
    v15 = *(v0 + 1012);
    v16 = *(v0 + 488);
    v30 = *(v0 + 888);
    v32 = *(v0 + 496);
    v17 = *(v0 + 480);
    v26 = *(v0 + 448);
    v28 = *(v0 + 464);
    v18 = *(v0 + 424);
    v19 = *(v0 + 432);
    v20 = *(v14 + 48);
    v21 = swift_task_alloc();
    *(v21 + 16) = v14;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v21 + 40) = v15;
    *(v21 + 48) = v26;
    *(v21 + 64) = v28;
    *(v21 + 80) = v17;
    *(v21 + 88) = v16;
    v22 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA530, &qword_22B364D38);
    sub_22B360E7C();
    *(v0 + 904) = v30;

    *(v0 + 912) = *(v0 + 408);
    v23 = sub_22B297CA8;
    v24 = v32;
  }

  else
  {
    v24 = *(v0 + 496);
    v23 = sub_22B29817C;
  }

  return MEMORY[0x2822009F8](v23, v24, 0);
}

uint64_t sub_22B297CA8()
{
  v40 = v0;
  v1 = *(v0 + 920);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 912);
    v3 = *(v0 + 904);
    *(v0 + 944) = v1;
    *(v0 + 936) = v2;
    *(v0 + 928) = v3;
    v4 = *(v0 + 600);
    v5 = *(v0 + 592);
    v6 = *(v0 + 584);
    v7 = *(v0 + 440);
    (*(v0 + 864))(*(v0 + 712), *(v0 + 856), *(v0 + 656));
    (*(v5 + 16))(v4, v7, v6);

    v8 = sub_22B36050C();
    v9 = sub_22B360D1C();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 880);
    v12 = *(v0 + 712);
    v13 = *(v0 + 656);
    v14 = *(v0 + 600);
    v15 = *(v0 + 592);
    v16 = *(v0 + 584);
    v17 = *(v0 + 472);
    if (v10)
    {
      v30 = *(v0 + 432);
      v31 = *(v0 + 464);
      v34 = *(v0 + 880);
      v18 = *(v0 + 424);
      v33 = *(v0 + 712);
      v19 = swift_slowAlloc();
      v32 = v13;
      v20 = swift_slowAlloc();
      v39 = v20;
      *v19 = 136381187;
      *(v19 + 4) = sub_22B1A7B20(v18, v30, &v39);
      *(v19 + 12) = 512;
      LOWORD(v18) = sub_22B35E1FC();
      (*(v15 + 8))(v14, v16);
      *(v19 + 14) = v18;
      *(v19 + 16) = 1024;
      v21 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v21 = v31 & 0xFFFFFFFFFFFFLL;
      }

      *(v19 + 18) = v21 != 0;

      _os_log_impl(&dword_22B116000, v8, v9, "Error fetching cached data. Fetching from server: %{private}s %hd hasUtilityInfo: %{BOOL}d", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188F650](v20, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);

      v34(v33, v32);
    }

    else
    {
      (*(v15 + 8))(*(v0 + 600), *(v0 + 584));

      v11(v12, v13);
    }

    v25 = *(v0 + 480);
    v24 = *(v0 + 488);
    v36 = *(v0 + 448);
    v38 = *(v0 + 464);
    v26 = *(v0 + 432);
    v27 = *(v0 + 424);
    v28 = sub_22B35E1FC();
    *(v0 + 88) = v27;
    *(v0 + 96) = v26;
    *(v0 + 104) = v28;
    *(v0 + 112) = v36;
    *(v0 + 128) = v38;
    *(v0 + 144) = v25;
    *(v0 + 152) = v24;
    v29 = swift_task_alloc();
    *(v0 + 952) = v29;
    *v29 = v0;
    v29[1] = sub_22B298490;

    return sub_22B29AB48(v0 + 88, 1);
  }

  else
  {
    sub_22B123284(*(v0 + 576), &qword_27D8BA340, &qword_22B363FB0);
    v37 = *(v0 + 920);
    v35 = *(v0 + 912);

    v22 = *(v0 + 8);

    return v22(v35, v37);
  }
}

uint64_t sub_22B29817C()
{
  v35 = v0;
  v1 = *(v0 + 888);
  *(v0 + 944) = 0xF000000000000000;
  *(v0 + 936) = 0;
  *(v0 + 928) = v1;
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 440);
  (*(v0 + 864))(*(v0 + 712), *(v0 + 856), *(v0 + 656));
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_22B36050C();
  v7 = sub_22B360D1C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 880);
  v10 = *(v0 + 712);
  v11 = *(v0 + 656);
  v12 = *(v0 + 600);
  v13 = *(v0 + 592);
  v14 = *(v0 + 584);
  v15 = *(v0 + 472);
  if (v8)
  {
    v27 = *(v0 + 432);
    v28 = *(v0 + 464);
    v31 = *(v0 + 880);
    v16 = *(v0 + 424);
    v30 = *(v0 + 712);
    v17 = swift_slowAlloc();
    v29 = v11;
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136381187;
    *(v17 + 4) = sub_22B1A7B20(v16, v27, &v34);
    *(v17 + 12) = 512;
    LOWORD(v16) = sub_22B35E1FC();
    (*(v13 + 8))(v12, v14);
    *(v17 + 14) = v16;
    *(v17 + 16) = 1024;
    v19 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v19 = v28 & 0xFFFFFFFFFFFFLL;
    }

    *(v17 + 18) = v19 != 0;

    _os_log_impl(&dword_22B116000, v6, v7, "Error fetching cached data. Fetching from server: %{private}s %hd hasUtilityInfo: %{BOOL}d", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23188F650](v18, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    v31(v30, v29);
  }

  else
  {
    (*(v13 + 8))(*(v0 + 600), *(v0 + 584));

    v9(v10, v11);
  }

  v21 = *(v0 + 480);
  v20 = *(v0 + 488);
  v32 = *(v0 + 448);
  v33 = *(v0 + 464);
  v22 = *(v0 + 432);
  v23 = *(v0 + 424);
  v24 = sub_22B35E1FC();
  *(v0 + 88) = v23;
  *(v0 + 96) = v22;
  *(v0 + 104) = v24;
  *(v0 + 112) = v32;
  *(v0 + 128) = v33;
  *(v0 + 144) = v21;
  *(v0 + 152) = v20;
  v25 = swift_task_alloc();
  *(v0 + 952) = v25;
  *v25 = v0;
  v25[1] = sub_22B298490;

  return sub_22B29AB48(v0 + 88, 1);
}

uint64_t sub_22B298490()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[120] = v3;
  *v3 = v2;
  v3[1] = sub_22B2986A4;
  v4 = v1[64];
  v5 = v1[59];
  v6 = v1[58];
  v7 = v1[57];
  v8 = v1[56];
  v9 = v1[55];
  v10 = v1[54];
  v11 = v1[53];

  return sub_22B29C1E8(v4, v11, v10, v9, v8, v7, v6, v5);
}

uint64_t sub_22B2986A4()
{
  v1 = *(*v0 + 496);

  return MEMORY[0x2822009F8](sub_22B2987B4, v1, 0);
}

uint64_t sub_22B2987B4()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 864);
    v5 = *(v0 + 856);
    v6 = *(v0 + 704);
    v7 = *(v0 + 656);
    sub_22B123284(v3, &qword_27D8BAC20, &qword_22B366AC0);
    v4(v6, v5, v7);
    v8 = sub_22B36050C();
    v9 = sub_22B360D1C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 944);
      v11 = *(v0 + 936);
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v8, v9, "nil guidance retrieved from server", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);

      sub_22B11EDC0(v11, v10);
    }

    else
    {
    }

    v25 = *(v0 + 576);
    (*(v0 + 880))(*(v0 + 704), *(v0 + 656));
  }

  else
  {
    v13 = *(v0 + 928);
    (*(v1 + 32))(*(v0 + 544), v3, v2);
    sub_22B35D82C();
    swift_allocObject();
    sub_22B35D81C();
    sub_22B2A51E0(&qword_281409198, MEMORY[0x277D17FB0], MEMORY[0x277D17FB8]);
    v14 = sub_22B35D80C();
    if (!v13)
    {
      v25 = *(v0 + 576);
      v26 = *(v0 + 544);
      v27 = *(v0 + 528);
      v28 = *(v0 + 520);
      v34 = v15;
      v35 = v14;

      (*(v27 + 8))(v26, v28);
      goto LABEL_13;
    }

    v16 = *(v0 + 864);
    v17 = *(v0 + 856);
    v18 = *(v0 + 680);
    v19 = *(v0 + 656);

    v16(v18, v17, v19);
    v20 = sub_22B36050C();
    v21 = sub_22B360D1C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 944);
      v23 = *(v0 + 936);
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22B116000, v20, v21, "Error encoding guidance from server (aged out)", v24, 2u);
      MEMORY[0x23188F650](v24, -1, -1);

      sub_22B11EDC0(v23, v22);
    }

    else
    {
    }

    v25 = *(v0 + 576);
    v29 = *(v0 + 544);
    v30 = *(v0 + 528);
    v31 = *(v0 + 520);
    (*(v0 + 880))(*(v0 + 680), *(v0 + 656));
    (*(v30 + 8))(v29, v31);
  }

  v34 = 0xF000000000000000;
  v35 = 0;
LABEL_13:
  sub_22B123284(v25, &qword_27D8BA340, &qword_22B363FB0);

  v32 = *(v0 + 8);

  return v32(v35, v34);
}

uint64_t sub_22B298C90()
{
  v1 = *(*v0 + 496);

  return MEMORY[0x2822009F8](sub_22B298DA0, v1, 0);
}

uint64_t sub_22B298DA0()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[63];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[122];
    v5 = v0[121];
    v6 = v0[86];
    v7 = v0[82];
    sub_22B123284(v3, &qword_27D8BAC20, &qword_22B366AC0);
    v4(v6, v5, v7);
    v8 = sub_22B36050C();
    v9 = sub_22B360D1C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[124];
    v12 = v0[86];
    v13 = v0[82];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22B116000, v8, v9, "nil guidance retrieved from server", v14, 2u);
      MEMORY[0x23188F650](v14, -1, -1);
    }

    v11(v12, v13);
    v19 = 0xF000000000000000;
    v20 = 0;
  }

  else
  {
    (*(v1 + 32))(v0[67], v3, v2);
    sub_22B35D82C();
    swift_allocObject();
    sub_22B35D81C();
    sub_22B2A51E0(&qword_281409198, MEMORY[0x277D17FB0], MEMORY[0x277D17FB8]);
    v15 = sub_22B35D80C();
    v19 = v16;
    v20 = v15;
    (*(v0[66] + 8))(v0[67], v0[65]);
  }

  v17 = v0[1];

  return v17(v20, v19);
}

uint64_t sub_22B299254()
{
  v1[11] = v0;
  v2 = sub_22B36052C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B299320, v0, 0);
}

uint64_t sub_22B299320()
{
  if (qword_28140AC88 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BD80;
  *(v0 + 128) = qword_28140BD80;

  return MEMORY[0x2822009F8](sub_22B2993B8, v1, 0);
}

uint64_t sub_22B2993B8()
{
  if (qword_28140AB18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  sub_22B1ACF0C(0xD000000000000024, 0x800000022B36B9F0);

  sub_22B1B23B0();

  *(*(v1 + 112) + 40) = 0;
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](sub_22B299494, v1, 0);
}

uint64_t sub_22B299494()
{
  if (qword_28140AC90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_22B35DE9C();
  v3 = __swift_project_value_buffer(v2, qword_28140BD88);
  v4 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v1 + v4, v3, v2);
  swift_endAccess();
  if (qword_28140AC78 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 88);
  v6 = qword_28140AC80;
  v7 = sub_22B36081C();
  [v6 removeObjectForKey_];

  return MEMORY[0x2822009F8](sub_22B299620, v5, 0);
}

uint64_t sub_22B299620()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[17] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[18] = v5;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D1C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v6, v7, "Disabling energy guidance collection", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[13];

  v12 = *(v11 + 8);
  v0[20] = v12;
  v12(v9, v10);
  if (qword_28140B168 != -1)
  {
    swift_once();
  }

  v13 = qword_28140BDC8;
  v0[21] = qword_28140BDC8;

  return MEMORY[0x2822009F8](sub_22B2997D8, v13, 0);
}

uint64_t sub_22B2997D8()
{
  v1 = *(v0 + 88);
  *(v0 + 192) = sub_22B12EDE0() & 1;

  return MEMORY[0x2822009F8](sub_22B29984C, v1, 0);
}

uint64_t sub_22B29984C()
{
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDC0;
  *(v0 + 176) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B2998E4, v1, 0);
}

uint64_t sub_22B2998E4()
{
  v1 = *(v0 + 88);
  *(v0 + 193) = sub_22B212108() & 1;

  return MEMORY[0x2822009F8](sub_22B299958, v1, 0);
}

uint64_t sub_22B299958()
{
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDB8;
  *(v0 + 184) = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B2999F0, v1, 0);
}

uint64_t sub_22B2999F0()
{
  v1 = *(v0 + 88);
  sub_22B17EE98();

  return MEMORY[0x2822009F8](sub_22B299A5C, v1, 0);
}

uint64_t sub_22B299A5C()
{
  v1 = *(v0 + 193);
  v2 = *(v0 + 192);
  v3 = *(v0 + 88);
  swift_beginAccess();
  *(v3 + 120) = MEMORY[0x277D84FA0];

  v4 = *(v3 + 136);
  v5 = sub_22B36081C();
  [v4 removeObjectForKey_];

  if (v2 != 1 || (v6 = 0, (v1 & 1) == 0))
  {
    (*(v0 + 144))(*(v0 + 112), *(v0 + 136), *(v0 + 96));
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "Failed to disable energy forecast collection", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v10 = *(v0 + 160);
    v11 = *(v0 + 112);
    v12 = *(v0 + 96);

    v10(v11, v12);
    v6 = 5;
  }

  v13 = *(v0 + 8);

  return v13(v6);
}

uint64_t sub_22B299C0C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 408) = v14;
  *(v9 + 416) = v8;
  *(v9 + 392) = a7;
  *(v9 + 400) = a8;
  *(v9 + 376) = a5;
  *(v9 + 384) = a6;
  *(v9 + 360) = a2;
  *(v9 + 368) = a4;
  *(v9 + 568) = a3;
  *(v9 + 352) = a1;
  v10 = sub_22B35E20C();
  *(v9 + 424) = v10;
  *(v9 + 432) = *(v10 - 8);
  *(v9 + 440) = swift_task_alloc();
  v11 = sub_22B36052C();
  *(v9 + 448) = v11;
  *(v9 + 456) = *(v11 - 8);
  *(v9 + 464) = swift_task_alloc();
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();
  *(v9 + 488) = swift_task_alloc();
  *(v9 + 496) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B299D74, v8, 0);
}

uint64_t sub_22B299D74()
{
  v34 = v0;
  *(v0 + 16) = *(v0 + 352);
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = *(v0 + 568);
  v6 = *(v0 + 368);
  *(v0 + 24) = *(v0 + 360);
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 48) = v4;
  *(v0 + 64) = v3;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  v7 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  v8 = *(v0 + 48);
  v9 = *(v0 + 64);
  *(v0 + 152) = v1;
  *(v0 + 136) = v9;
  *(v0 + 120) = v8;
  *(v0 + 104) = v7;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 496);
  v11 = *(v0 + 448);
  v12 = *(v0 + 456);
  v13 = __swift_project_value_buffer(v11, qword_28140BD10);
  *(v0 + 504) = v13;
  swift_beginAccess();
  v14 = *(v12 + 16);
  *(v0 + 512) = v14;
  *(v0 + 520) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v10, v13, v11);
  sub_22B2020A4(v0 + 16, v0 + 160);
  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();
  sub_22B172074(v0 + 16);
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 496);
  v20 = *(v0 + 448);
  v19 = *(v0 + 456);
  if (v17)
  {
    v31 = *(v0 + 448);
    v22 = *(v0 + 352);
    v21 = *(v0 + 360);
    v23 = swift_slowAlloc();
    v30 = v18;
    v24 = swift_slowAlloc();
    *&v32[0] = v24;
    *v23 = 136380675;
    *(v23 + 4) = sub_22B1A7B20(v22, v21, v32);
    _os_log_impl(&dword_22B116000, v15, v16, "Disabling energy guidance collection for %{private}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x23188F650](v24, -1, -1);
    MEMORY[0x23188F650](v23, -1, -1);

    v25 = *(v19 + 8);
    v25(v30, v31);
  }

  else
  {

    v25 = *(v19 + 8);
    v25(v18, v20);
  }

  *(v0 + 528) = v25;
  swift_beginAccess();
  sub_22B1F9650((v0 + 88), v32);
  swift_endAccess();
  v26 = v32[3];
  *(v0 + 264) = v32[2];
  *(v0 + 280) = v26;
  *(v0 + 296) = v33;
  v27 = v32[1];
  *(v0 + 232) = v32[0];
  *(v0 + 248) = v27;
  sub_22B123284(v0 + 232, &qword_27D8BAC30, &qword_22B366AE0);
  if (qword_28140B068 != -1)
  {
    swift_once();
  }

  v28 = qword_28140BDC0;
  *(v0 + 536) = qword_28140BDC0;

  return MEMORY[0x2822009F8](sub_22B29A07C, v28, 0);
}

uint64_t sub_22B29A07C()
{
  v27 = v0;
  (*(v0 + 512))(*(v0 + 488), *(v0 + 504), *(v0 + 448));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 528);
  v5 = *(v0 + 488);
  v6 = *(v0 + 448);
  if (v3)
  {
    v24 = *(v0 + 528);
    v8 = *(v0 + 352);
    v7 = *(v0 + 360);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136380675;
    *(v9 + 4) = sub_22B1A7B20(v8, v7, &v26);
    _os_log_impl(&dword_22B116000, v1, v2, "Delete energy guidance tracking from cache for %{private}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);

    v24(v5, v6);
  }

  else
  {

    v4(v5, v6);
  }

  v11 = *(*(v0 + 536) + 112);
  if (v11)
  {
    v13 = *(v0 + 400);
    v12 = *(v0 + 408);
    v23 = *(v0 + 368);
    v25 = *(v0 + 384);
    v14 = *(v0 + 568);
    v16 = *(v0 + 352);
    v15 = *(v0 + 360);
    v17 = *(v11 + 48);
    v18 = swift_task_alloc();
    *(v18 + 16) = v11;
    *(v18 + 24) = v16;
    *(v18 + 32) = v15;
    *(v18 + 40) = v14;
    *(v18 + 48) = v23;
    *(v18 + 64) = v25;
    *(v18 + 80) = v13;
    *(v18 + 88) = v12;

    v19 = v17;
    sub_22B360E7C();

    v20 = *(v0 + 571) ^ 1;
  }

  else
  {
    v20 = 1;
  }

  *(v0 + 572) = v20 & 1;
  *(v0 + 544) = 0;
  v21 = *(v0 + 416);

  return MEMORY[0x2822009F8](sub_22B29A2E4, v21, 0);
}

uint64_t sub_22B29A2E4()
{
  if (qword_28140B168 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDC8;
  *(v0 + 552) = qword_28140BDC8;

  return MEMORY[0x2822009F8](sub_22B29A37C, v1, 0);
}

uint64_t sub_22B29A37C()
{
  v33 = v0;
  (*(v0 + 512))(*(v0 + 480), *(v0 + 504), *(v0 + 448));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 528);
  v5 = *(v0 + 480);
  v6 = *(v0 + 448);
  v7 = *(v0 + 392);
  if (v3)
  {
    v26 = *(v0 + 384);
    v30 = *(v0 + 528);
    v8 = *(v0 + 568);
    v28 = *(v0 + 448);
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v27 = *(v0 + 480);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136381187;
    *(v11 + 4) = sub_22B1A7B20(v10, v9, &v32);
    *(v11 + 12) = 512;
    *(v11 + 14) = v8;
    *(v11 + 16) = 1024;
    v13 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v13 = v26 & 0xFFFFFFFFFFFFLL;
    }

    *(v11 + 18) = v13 != 0;

    _os_log_impl(&dword_22B116000, v1, v2, "Delete energy guidance from cache for %{private}s %hd hasUtility: %{BOOL}d", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);

    v30(v27, v28);
  }

  else
  {

    v4(v5, v6);
  }

  v14 = *(*(v0 + 552) + 112);
  if (v14)
  {
    v16 = *(v0 + 400);
    v15 = *(v0 + 408);
    v29 = *(v0 + 368);
    v31 = *(v0 + 384);
    v17 = *(v0 + 568);
    v19 = *(v0 + 352);
    v18 = *(v0 + 360);
    v20 = *(v14 + 48);
    v21 = swift_task_alloc();
    *(v21 + 16) = v14;
    *(v21 + 24) = v19;
    *(v21 + 32) = v18;
    *(v21 + 40) = v17;
    *(v21 + 48) = v29;
    *(v21 + 64) = v31;
    *(v21 + 80) = v16;
    *(v21 + 88) = v15;

    v22 = v20;
    sub_22B360E7C();

    v23 = *(v0 + 570) ^ 1;
  }

  else
  {
    v23 = 1;
  }

  *(v0 + 573) = v23 & 1;
  v24 = *(v0 + 416);

  return MEMORY[0x2822009F8](sub_22B29A640, v24, 0);
}

uint64_t sub_22B29A640()
{
  v28 = v0;
  v1 = *(v0 + 392);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 384) & 0xFFFFFFFFFFFFLL;
  }

  if (v2 || ((v3 = *(v0 + 376), (v3 & 0x2000000000000000) != 0) ? (v4 = HIBYTE(v3) & 0xF) : (v4 = *(v0 + 368) & 0xFFFFFFFFFFFFLL), v4 || ((v5 = *(v0 + 408), (v5 & 0x2000000000000000) != 0) ? (v6 = HIBYTE(v5) & 0xF) : (v6 = *(v0 + 400) & 0xFFFFFFFFFFFFLL), v6 || (v8 = *(v0 + 432), v7 = *(v0 + 440), v9 = *(v0 + 424), v10 = *(v0 + 568), (*(v8 + 104))(v7, *MEMORY[0x277D17EE8], v9), v11 = sub_22B35E1FC(), (*(v8 + 8))(v7, v9), v10 != v11))))
  {
    (*(v0 + 512))(*(v0 + 464), *(v0 + 504), *(v0 + 448));

    v13 = sub_22B36050C();
    v14 = sub_22B360D2C();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 528);
    v17 = *(v0 + 464);
    v18 = *(v0 + 448);
    if (v15)
    {
      v25 = *(v0 + 568);
      v26 = *(v0 + 528);
      v20 = *(v0 + 352);
      v19 = *(v0 + 360);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_22B1A7B20(v20, v19, &v27);
      *(v21 + 12) = 512;
      *(v21 + 14) = v25;
      _os_log_impl(&dword_22B116000, v13, v14, "Guidance from %s %hd was not for grid forecast purposes. Was not deleted.", v21, 0x10u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x23188F650](v22, -1, -1);
      MEMORY[0x23188F650](v21, -1, -1);

      v26(v17, v18);
    }

    else
    {

      v16(v17, v18);
    }

    v23 = *(v0 + 8);

    return v23(0);
  }

  else
  {
    if (qword_28140AF70 != -1)
    {
      swift_once();
    }

    v12 = qword_28140BDB8;
    *(v0 + 560) = qword_28140BDB8;

    return MEMORY[0x2822009F8](sub_22B29A964, v12, 0);
  }
}

uint64_t sub_22B29A964()
{
  v1 = v0[52];
  sub_22B17EB2C(v0[44], v0[45]);

  return MEMORY[0x2822009F8](sub_22B29A9D4, v1, 0);
}

uint64_t sub_22B29A9D4()
{
  if ((*(v0 + 573) & 1) != 0 || *(v0 + 572))
  {
    (*(v0 + 512))(*(v0 + 472), *(v0 + 504), *(v0 + 448));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 528);
    v6 = *(v0 + 472);
    v7 = *(v0 + 448);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22B116000, v2, v3, "Failed to disable energy guidance collection", v8, 2u);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    v5(v6, v7);
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_22B29AB48(uint64_t a1, char a2)
{
  *(v3 + 690) = a2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v3 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA390, &qword_22B364460);
  *(v3 + 400) = swift_task_alloc();
  v4 = sub_22B35E20C();
  *(v3 + 408) = v4;
  *(v3 + 416) = *(v4 - 8);
  *(v3 + 424) = swift_task_alloc();
  v5 = sub_22B35DE9C();
  *(v3 + 432) = v5;
  v6 = *(v5 - 8);
  *(v3 + 440) = v6;
  *(v3 + 448) = *(v6 + 64);
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 480) = swift_task_alloc();
  v7 = sub_22B36052C();
  *(v3 + 488) = v7;
  *(v3 + 496) = *(v7 - 8);
  *(v3 + 504) = swift_task_alloc();
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B29AD78, v2, 0);
}

uint64_t sub_22B29AD78()
{
  v37 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v4 = *(v0 + 376);
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  *(v0 + 528) = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 536) = v6;
  *(v0 + 544) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  sub_22B2020A4(v4, v0 + 16);
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 376);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136381187;
    *(v10 + 4) = sub_22B1A7B20(*v9, *(v9 + 8), &v36);
    *(v10 + 12) = 512;
    *(v10 + 14) = *(v9 + 16);
    *(v10 + 16) = 1024;
    v12 = *(v9 + 48);
    v35 = v6;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v12) & 0xF;
      v13 = *(v0 + 376);
    }

    else
    {
      v13 = *(v0 + 376);
      v14 = *(v13 + 40) & 0xFFFFFFFFFFFFLL;
    }

    v34 = *(v0 + 520);
    v19 = *(v0 + 488);
    v20 = *(v0 + 496);
    *(v10 + 18) = v14 == 0;
    sub_22B172074(v13);
    _os_log_impl(&dword_22B116000, v7, v8, "Enabling energy guidance collection for %{private}s %hd hasUtility: %{BOOL}d", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);

    v18 = *(v20 + 8);
    v18(v34, v19);
    v6 = v35;
  }

  else
  {
    v15 = *(v0 + 520);
    v16 = *(v0 + 488);
    v17 = *(v0 + 496);
    sub_22B172074(*(v0 + 376));

    v18 = *(v17 + 8);
    v18(v15, v16);
  }

  *(v0 + 552) = v18;
  v21 = *(v0 + 690);
  v22 = *(v0 + 376);
  v23 = *(v0 + 384);
  swift_beginAccess();
  v24 = *(v23 + 120);

  LOBYTE(v22) = sub_22B325AD4(v22, v24);

  if (v22 & 1) == 0 || (v21)
  {
    if (qword_28140AC88 != -1)
    {
      swift_once();
    }

    v33 = qword_28140BD80;
    *(v0 + 560) = qword_28140BD80;

    return MEMORY[0x2822009F8](sub_22B29B1C0, v33, 0);
  }

  else
  {
    v6(*(v0 + 512), v5, *(v0 + 488));
    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 512);
    v29 = *(v0 + 488);
    if (v27)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B116000, v25, v26, "Location already tracked. Disable before updating", v30, 2u);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    v18(v28, v29);

    v31 = *(v0 + 8);

    return v31(1);
  }
}

uint64_t sub_22B29B1C0()
{
  v1 = v0[70];
  v2 = v0[60];
  v3 = v0[54];
  v4 = v0[55];
  v5 = v0[48];
  v6 = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  v0[71] = OBJC_IVAR____TtC16HomeEnergyDaemon21HomeEnergyDataRefresh_nextPollDate;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[72] = v7;
  v0[73] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v1 + v6, v3);

  return MEMORY[0x2822009F8](sub_22B29B290, v5, 0);
}

uint64_t sub_22B29B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 408);
  v12 = *(v10 + 416);
  v13 = *(v10 + 400);
  *(v10 + 688) = *(*(v10 + 376) + 16);
  sub_22B35E1EC();
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v14 = *(v10 + 400);
    (*(*(v10 + 440) + 8))(*(v10 + 480), *(v10 + 432));
    sub_22B123284(v14, &qword_27D8BA390, &qword_22B364460);

    v15 = *(v10 + 8);

    return v15(8);
  }

  else
  {
    v18 = *(v10 + 432);
    v17 = *(v10 + 440);
    v19 = *(v10 + 392);
    v20 = *(v10 + 376);
    (*(*(v10 + 416) + 32))(*(v10 + 424), *(v10 + 400), *(v10 + 408));
    v29 = *v20;
    *(v10 + 592) = *v20;
    v21 = v20[1];
    *(v10 + 600) = v21;
    v28 = v20[3];
    *(v10 + 608) = v28;
    v22 = v20[4];
    *(v10 + 616) = v22;
    v23 = v20[5];
    *(v10 + 624) = v23;
    v24 = v20[6];
    *(v10 + 632) = v24;
    v25 = v20[7];
    *(v10 + 640) = v25;
    *(v10 + 648) = v20[8];
    (*(v17 + 56))(v19, 1, 1, v18);

    v26 = swift_task_alloc();
    *(v10 + 656) = v26;
    *v26 = v10;
    v26[1] = sub_22B29B530;
    v27 = *(v10 + 424);

    return sub_22B2A34B8(v29, v21, v27, v28, v22, v23, v24, v25, a9, a10);
  }
}

uint64_t sub_22B29B530(uint64_t a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 384);
  *(*v1 + 664) = a1;

  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);

  return MEMORY[0x2822009F8](sub_22B29B674, v3, 0);
}

uint64_t sub_22B29B674(uint64_t a1)
{
  if (v1[83])
  {
    v2 = v1[60];
    v3 = v1[54];
    v4 = v1[55];
    v6 = v1[52];
    v5 = v1[53];
    v7 = v1[51];

    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v3);
    v11 = v1[83];

    v8 = v1[1];

    return v8(v11);
  }

  else
  {
    if (qword_28140B068 != -1)
    {
      swift_once();
    }

    v10 = qword_28140BDC0;
    v1[84] = qword_28140BDC0;
    sub_22B35DE6C();

    return MEMORY[0x2822009F8](sub_22B29B85C, v10, 0);
  }
}

uint64_t sub_22B29B85C()
{
  v43 = v0;
  (v0[67])(v0[63], v0[66], v0[61]);

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[79];
  if (v3)
  {
    v5 = v0[78];
    v6 = v0[75];
    v7 = v0[74];
    v8 = *(v0 + 344);
    v38 = v0[63];
    v40 = v0[69];
    aBlock = v0[61];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136381187;
    *(v9 + 4) = sub_22B1A7B20(v7, v6, &v42);
    *(v9 + 12) = 512;
    *(v9 + 14) = v8;
    *(v9 + 16) = 1024;
    v11 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v11 = v5 & 0xFFFFFFFFFFFFLL;
    }

    *(v9 + 18) = v11 != 0;

    _os_log_impl(&dword_22B116000, v1, v2, "Add energy guidance tracking for %{private}s %hd hasUtility: %{BOOL}d", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);

    v40(v38, aBlock);
  }

  else
  {
    v12 = v0[69];
    v13 = v0[63];
    v14 = v0[61];

    v12(v13, v14);
  }

  v15 = *(v0[84] + 112);
  v16 = v0[81];
  if (v15)
  {
    v17 = v0[80];
    v35 = *(v0 + 38);
    v36 = *(v0 + 39);
    v34 = *(v0 + 37);
    v18 = *(v0 + 344);
    v19 = v0[58];
    v41 = v0[59];
    v20 = v0[55];
    v21 = v0[54];
    v39 = *(v15 + 48);
    (v0[72])(v19);
    v22 = (*(v20 + 80) + 90) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v15;
    *(v23 + 24) = v34;
    *(v23 + 40) = v35;
    *(v23 + 56) = v36;
    *(v23 + 72) = v17;
    *(v23 + 80) = v16;
    *(v23 + 88) = v18;
    (*(v20 + 32))(v23 + v22, v19, v21);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_22B2A52A8;
    *(v24 + 24) = v23;
    v0[33] = sub_22B128240;
    v0[34] = v24;
    v0[29] = MEMORY[0x277D85DD0];
    v0[30] = 1107296256;
    v0[31] = sub_22B32556C;
    v0[32] = &block_descriptor_37_1;
    v25 = _Block_copy(v0 + 29);
    swift_retain_n();
    v26 = v39;

    [v26 performBlockAndWait_];

    _Block_release(v25);

    v27 = *(v20 + 8);
    v27(v41, v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v29 = v0[59];
  v30 = v0[54];
  v31 = v0[55];

  v27 = *(v31 + 8);
  v27(v29, v30);
LABEL_10:
  v0[85] = v27;
  v32 = v0[70];

  return MEMORY[0x2822009F8](sub_22B29BCC4, v32, 0);
}

uint64_t sub_22B29BCC4()
{
  v1 = *(v0 + 384);
  (*(v0 + 576))(*(v0 + 456), *(v0 + 560) + *(v0 + 568), *(v0 + 432));

  return MEMORY[0x2822009F8](sub_22B29BD48, v1, 0);
}

uint64_t sub_22B29BD48()
{
  v16 = v0;
  if (*(*(*(v0 + 384) + 120) + 16) && (sub_22B35DDEC() & 1) == 0)
  {
    v2 = *(v0 + 680);
    v13 = *(v0 + 480);
    v3 = *(v0 + 456);
    v4 = *(v0 + 432);
    v6 = *(v0 + 416);
    v5 = *(v0 + 424);
    v7 = *(v0 + 408);
    v8 = *(v0 + 376);
    swift_beginAccess();
    sub_22B2020A4(v8, v0 + 160);
    sub_22B32E0A0(v14, v8);
    swift_endAccess();
    v9 = v14[0];
    *(v0 + 104) = v14[1];
    v10 = v14[3];
    *(v0 + 120) = v14[2];
    *(v0 + 136) = v10;
    *(v0 + 152) = v15;
    *(v0 + 88) = v9;
    sub_22B172074(v0 + 88);
    v2(v3, v4);
    (*(v6 + 8))(v5, v7);
    v2(v13, v4);

    v11 = *(v0 + 8);

    return v11(0);
  }

  else
  {
    v1 = *(v0 + 560);

    return MEMORY[0x2822009F8](sub_22B29BF54, v1, 0);
  }
}

uint64_t sub_22B29BF54()
{
  if (qword_28140AB18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 560);
  v2 = *(v0 + 384);
  sub_22B1ACF0C(0xD000000000000024, 0x800000022B36B9F0);

  sub_22B1B23B0();

  *(*(v1 + 112) + 40) = 0;
  swift_unknownObjectWeakAssign();
  sub_22B255804();

  return MEMORY[0x2822009F8](sub_22B29C044, v2, 0);
}

uint64_t sub_22B29C044()
{
  v15 = v0;
  v1 = *(v0 + 680);
  v12 = *(v0 + 480);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  v5 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 408);
  v7 = *(v0 + 376);
  swift_beginAccess();
  sub_22B2020A4(v7, v0 + 160);
  sub_22B32E0A0(v13, v7);
  swift_endAccess();
  v8 = v13[0];
  *(v0 + 104) = v13[1];
  v9 = v13[3];
  *(v0 + 120) = v13[2];
  *(v0 + 136) = v9;
  *(v0 + 152) = v14;
  *(v0 + 88) = v8;
  sub_22B172074(v0 + 88);
  v1(v2, v3);
  (*(v5 + 8))(v4, v6);
  v1(v12, v3);

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_22B29C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = v18;
  v9[15] = v8;
  v9[12] = a8;
  v9[13] = v17;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a2;
  v9[7] = a3;
  v9[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC28, &qword_22B366AD0);
  v9[16] = swift_task_alloc();
  v9[17] = swift_task_alloc();
  v10 = sub_22B35E13C();
  v9[18] = v10;
  v9[19] = *(v10 - 8);
  v9[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v9[21] = swift_task_alloc();
  v11 = sub_22B35E0BC();
  v9[22] = v11;
  v9[23] = *(v11 - 8);
  v9[24] = swift_task_alloc();
  v9[25] = swift_task_alloc();
  v12 = sub_22B35E21C();
  v9[26] = v12;
  v9[27] = *(v12 - 8);
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();
  v9[31] = swift_task_alloc();
  v9[32] = swift_task_alloc();
  v13 = sub_22B36052C();
  v9[33] = v13;
  v9[34] = *(v13 - 8);
  v9[35] = swift_task_alloc();
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();
  v9[38] = swift_task_alloc();
  v9[39] = swift_task_alloc();
  v14 = sub_22B35E33C();
  v9[40] = v14;
  v9[41] = *(v14 - 8);
  v9[42] = swift_task_alloc();
  v9[43] = swift_task_alloc();
  v9[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC20, &qword_22B366AC0);
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();
  v9[47] = swift_task_alloc();
  v9[48] = swift_task_alloc();
  v9[49] = swift_task_alloc();
  v9[50] = swift_task_alloc();
  v9[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B29C5B4, v8, 0);
}

uint64_t sub_22B29C5B4(uint64_t a1)
{
  v102 = v1;
  if (sub_22B35EEBC())
  {
    if (sub_22B35EEBC())
    {
      v2 = swift_task_alloc();
      v1[52] = v2;
      *v2 = v1;
      v2[1] = sub_22B29D0DC;
      v3 = v1[50];

      return sub_22B351BE4(v3);
    }

    v5 = v1[41];
    v6 = *(v5 + 56);
    v6(v1[51], 1, 1, v1[40]);
    v7 = v1[51];
    v8 = v1[40];
    if ((*(v5 + 48))(v7, 1, v8) != 1)
    {
      v70 = v1[5];
      (*(v1[41] + 32))(v70, v7, v8);
      v6(v70, 0, 1, v8);
LABEL_39:

      v92 = v1[1];

      return v92();
    }

    sub_22B123284(v7, &qword_27D8BAC20, &qword_22B366AC0);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = v1[39];
  v11 = v1[33];
  v10 = v1[34];
  v12 = __swift_project_value_buffer(v11, qword_28140BD10);
  v1[57] = v12;
  swift_beginAccess();
  v13 = *(v10 + 16);
  v1[58] = v13;
  v1[59] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v97 = v12;
  v96 = v13;
  v13(v9, v12, v11);

  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v1[39];
  v19 = v1[33];
  v18 = v1[34];
  v20 = v1[12];
  if (v16)
  {
    v94 = v1[33];
    v21 = v1[11];
    v23 = v1[6];
    v22 = v1[7];
    v24 = swift_slowAlloc();
    v93 = v17;
    v25 = swift_slowAlloc();
    v101 = v25;
    *v24 = 136380931;
    *(v24 + 4) = sub_22B1A7B20(v23, v22, &v101);
    *(v24 + 12) = 1025;
    v26 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v26 = v21 & 0xFFFFFFFFFFFFLL;
    }

    *(v24 + 14) = v26 != 0;

    _os_log_impl(&dword_22B116000, v14, v15, "Fetching energy guidance from server for %{private}s hasUtilityInfo: %{BOOL,private}d", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23188F650](v25, -1, -1);
    MEMORY[0x23188F650](v24, -1, -1);

    v27 = *(v18 + 8);
    v27(v93, v94);
  }

  else
  {

    v27 = *(v18 + 8);
    v27(v17, v19);
  }

  v95 = v27;
  v1[60] = v27;
  v96(v1[38], v97, v1[33]);
  v28 = sub_22B36050C();
  v29 = sub_22B360D0C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134349056;
    v31 = [objc_opt_self() sharedURLCache];
    v32 = [v31 currentMemoryUsage];

    *(v30 + 4) = v32;
    _os_log_impl(&dword_22B116000, v28, v29, "URLCache size before fetching: %{public}ld", v30, 0xCu);
    MEMORY[0x23188F650](v30, -1, -1);
  }

  v33 = v1[47];
  v34 = v1[40];
  v35 = v1[41];
  v36 = v1[38];
  v37 = v1[33];
  v38 = v1[34];
  v40 = v1[11];
  v39 = v1[12];

  v1[61] = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v95(v36, v37);
  v41 = *(v35 + 56);
  v1[62] = v41;
  v1[63] = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v41(v33, 1, 1, v34);
  v42 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v42 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {
    goto LABEL_30;
  }

  v43 = v1[10];
  if (!((v43 & 0x2000000000000000) != 0 ? HIBYTE(v43) & 0xF : v1[9] & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_30;
  }

  v45 = v1[14];
  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v1[13] & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    v47 = v1[22];
    v48 = v1[23];
    v49 = v1[21];
    sub_22B35E05C();
    if ((*(v48 + 48))(v49, 1, v47) == 1)
    {
      v50 = v1[37];
      v51 = v1[33];
      sub_22B123284(v1[21], &unk_27D8BA080, &unk_22B364280);
      v96(v50, v97, v51);

      v52 = sub_22B36050C();
      v53 = sub_22B360D1C();

      v54 = os_log_type_enabled(v52, v53);
      v55 = v1[37];
      v56 = v1[33];
      if (v54)
      {
        v99 = v1[14];
        v57 = v1[13];
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v101 = v59;
        *v58 = 136315138;
        *(v58 + 4) = sub_22B1A7B20(v57, v99, &v101);
        _os_log_impl(&dword_22B116000, v52, v53, "Failed to create TimeZone with %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x23188F650](v59, -1, -1);
        MEMORY[0x23188F650](v58, -1, -1);
      }

      v95(v55, v56);
      (v1[58])(v1[36], v1[57], v1[33]);

      v80 = sub_22B36050C();
      v81 = sub_22B360D0C();

      v82 = os_log_type_enabled(v80, v81);
      v83 = v1[60];
      v84 = v1[36];
      v85 = v1[33];
      if (v82)
      {
        v87 = v1[6];
        v86 = v1[7];
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v101 = v89;
        *v88 = 136380931;
        *(v88 + 4) = sub_22B1A7B20(v87, v86, &v101);
        *(v88 + 12) = 2050;
        v90 = [objc_opt_self() sharedURLCache];
        v91 = [v90 currentMemoryUsage];

        *(v88 + 14) = v91;
        _os_log_impl(&dword_22B116000, v80, v81, "URLCache size after fetching %{private}s: %{public}ld", v88, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x23188F650](v89, -1, -1);
        MEMORY[0x23188F650](v88, -1, -1);
      }

      v83(v84, v85);
      sub_22B2A4F58(v1[47], v1[5]);
      goto LABEL_39;
    }

    v71 = v1[24];
    v72 = v1[25];
    v73 = v1[22];
    v74 = v1[23];
    v75 = v1[20];
    v76 = v1[19];
    v77 = v1[17];
    v98 = v1[18];
    v100 = v1[15];
    (*(v74 + 32))(v72, v1[21], v73);
    (*(v74 + 16))(v71, v72, v73);

    sub_22B35E12C();
    (*(v76 + 16))(v77, v75, v98);
    (*(v76 + 56))(v77, 0, 1, v98);
    v78 = *(v100 + 128);
    v1[64] = v78;
    v62 = v78;
    v79 = swift_task_alloc();
    v1[65] = v79;
    *v79 = v1;
    v79[1] = sub_22B29F68C;
    v64 = v1[46];
    v65 = v1[31];
    v66 = v1[17];
  }

  else
  {
LABEL_30:
    v60 = v1[15];
    (*(v1[19] + 56))(v1[16], 1, 1, v1[18]);
    v61 = *(v60 + 128);
    v1[66] = v61;
    v62 = v61;
    v63 = swift_task_alloc();
    v1[67] = v63;
    *v63 = v1;
    v63[1] = sub_22B29FB84;
    v64 = v1[45];
    v65 = v1[30];
    v66 = v1[16];
  }

  v68 = v1[7];
  v67 = v1[8];
  v69 = v1[6];

  return MEMORY[0x282172098](v64, v67, v69, v68, v66, v62, v65);
}

uint64_t sub_22B29D0DC()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_22B29D1EC, v1, 0);
}

uint64_t sub_22B29D1EC()
{
  v107 = v0;
  v1 = v0[50];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v3[6];
  v0[53] = v4;
  v0[54] = (v3 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_22B123284(v1, &qword_27D8BAC20, &qword_22B366AC0);
    v5 = swift_task_alloc();
    v0[55] = v5;
    *v5 = v0;
    v5[1] = sub_22B29DD90;
    v6 = v0[49];

    return sub_22B3528FC(v6);
  }

  v8 = v0[51];
  v9 = v0[44];
  v10 = v3[4];
  v10(v9, v1, v2);
  v10(v8, v9, v2);
  v11 = v3[7];
  v11(v8, 0, 1, v2);
  v12 = v0[51];
  v13 = v0[40];
  if (v4(v12, 1, v13) != 1)
  {
    v33 = v0[5];
    (*(v0[41] + 32))(v33, v12, v13);
    v11(v33, 0, 1, v13);
LABEL_13:

    v34 = v0[1];

    return v34();
  }

  sub_22B123284(v12, &qword_27D8BAC20, &qword_22B366AC0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = v0[39];
  v16 = v0[33];
  v15 = v0[34];
  v17 = __swift_project_value_buffer(v16, qword_28140BD10);
  v0[57] = v17;
  swift_beginAccess();
  v18 = *(v15 + 16);
  v0[58] = v18;
  v0[59] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v102 = v17;
  v101 = v18;
  v18(v14, v17, v16);

  v19 = sub_22B36050C();
  v20 = sub_22B360D2C();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[39];
  v24 = v0[33];
  v23 = v0[34];
  v25 = v0[12];
  if (v21)
  {
    v99 = v0[33];
    v26 = v0[11];
    v28 = v0[6];
    v27 = v0[7];
    v29 = swift_slowAlloc();
    v98 = v22;
    v30 = swift_slowAlloc();
    v106 = v30;
    *v29 = 136380931;
    *(v29 + 4) = sub_22B1A7B20(v28, v27, &v106);
    *(v29 + 12) = 1025;
    v31 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v31 = v26 & 0xFFFFFFFFFFFFLL;
    }

    *(v29 + 14) = v31 != 0;

    _os_log_impl(&dword_22B116000, v19, v20, "Fetching energy guidance from server for %{private}s hasUtilityInfo: %{BOOL,private}d", v29, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23188F650](v30, -1, -1);
    MEMORY[0x23188F650](v29, -1, -1);

    v32 = *(v23 + 8);
    v32(v98, v99);
  }

  else
  {

    v32 = *(v23 + 8);
    v32(v22, v24);
  }

  v100 = v32;
  v0[60] = v32;
  v101(v0[38], v102, v0[33]);
  v35 = sub_22B36050C();
  v36 = sub_22B360D0C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134349056;
    v38 = [objc_opt_self() sharedURLCache];
    v39 = [v38 currentMemoryUsage];

    *(v37 + 4) = v39;
    _os_log_impl(&dword_22B116000, v35, v36, "URLCache size before fetching: %{public}ld", v37, 0xCu);
    MEMORY[0x23188F650](v37, -1, -1);
  }

  v40 = v0[47];
  v41 = v0[40];
  v42 = v0[41];
  v43 = v0[38];
  v44 = v0[33];
  v45 = v0[34];
  v47 = v0[11];
  v46 = v0[12];

  v0[61] = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v100(v43, v44);
  v48 = *(v42 + 56);
  v0[62] = v48;
  v0[63] = (v42 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v48(v40, 1, 1, v41);
  v49 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v49 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
    goto LABEL_32;
  }

  v50 = v0[10];
  if (!((v50 & 0x2000000000000000) != 0 ? HIBYTE(v50) & 0xF : v0[9] & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_32;
  }

  v52 = v0[14];
  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = v0[13] & 0xFFFFFFFFFFFFLL;
  }

  if (v53)
  {
    v54 = v0[22];
    v55 = v0[23];
    v56 = v0[21];
    sub_22B35E05C();
    if ((*(v55 + 48))(v56, 1, v54) == 1)
    {
      v57 = v0[37];
      v58 = v0[33];
      sub_22B123284(v0[21], &unk_27D8BA080, &unk_22B364280);
      v101(v57, v102, v58);

      v59 = sub_22B36050C();
      v60 = sub_22B360D1C();

      v61 = os_log_type_enabled(v59, v60);
      v62 = v0[37];
      v63 = v0[33];
      if (v61)
      {
        v104 = v0[14];
        v64 = v0[13];
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v106 = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_22B1A7B20(v64, v104, &v106);
        _os_log_impl(&dword_22B116000, v59, v60, "Failed to create TimeZone with %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x23188F650](v66, -1, -1);
        MEMORY[0x23188F650](v65, -1, -1);
      }

      v100(v62, v63);
      (v0[58])(v0[36], v0[57], v0[33]);

      v86 = sub_22B36050C();
      v87 = sub_22B360D0C();

      v88 = os_log_type_enabled(v86, v87);
      v89 = v0[60];
      v90 = v0[36];
      v91 = v0[33];
      if (v88)
      {
        v93 = v0[6];
        v92 = v0[7];
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v106 = v95;
        *v94 = 136380931;
        *(v94 + 4) = sub_22B1A7B20(v93, v92, &v106);
        *(v94 + 12) = 2050;
        v96 = [objc_opt_self() sharedURLCache];
        v97 = [v96 currentMemoryUsage];

        *(v94 + 14) = v97;
        _os_log_impl(&dword_22B116000, v86, v87, "URLCache size after fetching %{private}s: %{public}ld", v94, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x23188F650](v95, -1, -1);
        MEMORY[0x23188F650](v94, -1, -1);
      }

      v89(v90, v91);
      sub_22B2A4F58(v0[47], v0[5]);
      goto LABEL_13;
    }

    v77 = v0[24];
    v78 = v0[25];
    v79 = v0[22];
    v80 = v0[23];
    v81 = v0[20];
    v82 = v0[19];
    v83 = v0[17];
    v103 = v0[18];
    v105 = v0[15];
    (*(v80 + 32))(v78, v0[21], v79);
    (*(v80 + 16))(v77, v78, v79);

    sub_22B35E12C();
    (*(v82 + 16))(v83, v81, v103);
    (*(v82 + 56))(v83, 0, 1, v103);
    v84 = *(v105 + 128);
    v0[64] = v84;
    v69 = v84;
    v85 = swift_task_alloc();
    v0[65] = v85;
    *v85 = v0;
    v85[1] = sub_22B29F68C;
    v71 = v0[46];
    v72 = v0[31];
    v73 = v0[17];
  }

  else
  {
LABEL_32:
    v67 = v0[15];
    (*(v0[19] + 56))(v0[16], 1, 1, v0[18]);
    v68 = *(v67 + 128);
    v0[66] = v68;
    v69 = v68;
    v70 = swift_task_alloc();
    v0[67] = v70;
    *v70 = v0;
    v70[1] = sub_22B29FB84;
    v71 = v0[45];
    v72 = v0[30];
    v73 = v0[16];
  }

  v75 = v0[7];
  v74 = v0[8];
  v76 = v0[6];

  return MEMORY[0x282172098](v71, v74, v76, v75, v73, v69, v72);
}

uint64_t sub_22B29DD90()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_22B29DEA0, v1, 0);
}

uint64_t sub_22B29DEA0()
{
  v107 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 320);
  if ((*(v0 + 424))(v1, 1, v2) == 1)
  {
    sub_22B123284(v1, &qword_27D8BAC20, &qword_22B366AC0);
    v3 = swift_task_alloc();
    *(v0 + 448) = v3;
    *v3 = v0;
    v3[1] = sub_22B29EA34;
    v4 = *(v0 + 384);

    return sub_22B35346C(v4);
  }

  v6 = *(v0 + 408);
  v7 = *(v0 + 344);
  v8 = *(v0 + 328);
  v9 = *(v8 + 32);
  v9(v7, v1, v2);
  v9(v6, v7, v2);
  v10 = *(v8 + 56);
  v10(v6, 0, 1, v2);
  v11 = *(v0 + 320);
  v12 = *(v0 + 328);
  v13 = *(v0 + 408);
  if ((*(v0 + 424))(v13, 1, v11) != 1)
  {
    v33 = *(v0 + 40);
    (*(v12 + 32))(v33, v13, v11);
    v10(v33, 0, 1, v11);
LABEL_13:

    v34 = *(v0 + 8);

    return v34();
  }

  sub_22B123284(v13, &qword_27D8BAC20, &qword_22B366AC0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 312);
  v16 = *(v0 + 264);
  v15 = *(v0 + 272);
  v17 = __swift_project_value_buffer(v16, qword_28140BD10);
  *(v0 + 456) = v17;
  swift_beginAccess();
  v18 = *(v15 + 16);
  *(v0 + 464) = v18;
  *(v0 + 472) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v102 = v17;
  v101 = v18;
  v18(v14, v17, v16);

  v19 = sub_22B36050C();
  v20 = sub_22B360D2C();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 312);
  v24 = *(v0 + 264);
  v23 = *(v0 + 272);
  v25 = *(v0 + 96);
  if (v21)
  {
    v99 = *(v0 + 264);
    v26 = *(v0 + 88);
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = swift_slowAlloc();
    v98 = v22;
    v30 = swift_slowAlloc();
    v106 = v30;
    *v29 = 136380931;
    *(v29 + 4) = sub_22B1A7B20(v28, v27, &v106);
    *(v29 + 12) = 1025;
    v31 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v31 = v26 & 0xFFFFFFFFFFFFLL;
    }

    *(v29 + 14) = v31 != 0;

    _os_log_impl(&dword_22B116000, v19, v20, "Fetching energy guidance from server for %{private}s hasUtilityInfo: %{BOOL,private}d", v29, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23188F650](v30, -1, -1);
    MEMORY[0x23188F650](v29, -1, -1);

    v32 = *(v23 + 8);
    v32(v98, v99);
  }

  else
  {

    v32 = *(v23 + 8);
    v32(v22, v24);
  }

  v100 = v32;
  *(v0 + 480) = v32;
  v101(*(v0 + 304), v102, *(v0 + 264));
  v35 = sub_22B36050C();
  v36 = sub_22B360D0C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134349056;
    v38 = [objc_opt_self() sharedURLCache];
    v39 = [v38 currentMemoryUsage];

    *(v37 + 4) = v39;
    _os_log_impl(&dword_22B116000, v35, v36, "URLCache size before fetching: %{public}ld", v37, 0xCu);
    MEMORY[0x23188F650](v37, -1, -1);
  }

  v40 = *(v0 + 376);
  v41 = *(v0 + 320);
  v42 = *(v0 + 328);
  v43 = *(v0 + 304);
  v44 = *(v0 + 264);
  v45 = *(v0 + 272);
  v47 = *(v0 + 88);
  v46 = *(v0 + 96);

  *(v0 + 488) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v100(v43, v44);
  v48 = *(v42 + 56);
  *(v0 + 496) = v48;
  *(v0 + 504) = (v42 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v48(v40, 1, 1, v41);
  v49 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v49 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
    goto LABEL_32;
  }

  v50 = *(v0 + 80);
  if (!((v50 & 0x2000000000000000) != 0 ? HIBYTE(v50) & 0xF : *(v0 + 72) & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_32;
  }

  v52 = *(v0 + 112);
  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = *(v0 + 104) & 0xFFFFFFFFFFFFLL;
  }

  if (v53)
  {
    v54 = *(v0 + 176);
    v55 = *(v0 + 184);
    v56 = *(v0 + 168);
    sub_22B35E05C();
    if ((*(v55 + 48))(v56, 1, v54) == 1)
    {
      v57 = *(v0 + 296);
      v58 = *(v0 + 264);
      sub_22B123284(*(v0 + 168), &unk_27D8BA080, &unk_22B364280);
      v101(v57, v102, v58);

      v59 = sub_22B36050C();
      v60 = sub_22B360D1C();

      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 296);
      v63 = *(v0 + 264);
      if (v61)
      {
        v104 = *(v0 + 112);
        v64 = *(v0 + 104);
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v106 = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_22B1A7B20(v64, v104, &v106);
        _os_log_impl(&dword_22B116000, v59, v60, "Failed to create TimeZone with %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        MEMORY[0x23188F650](v66, -1, -1);
        MEMORY[0x23188F650](v65, -1, -1);
      }

      v100(v62, v63);
      (*(v0 + 464))(*(v0 + 288), *(v0 + 456), *(v0 + 264));

      v86 = sub_22B36050C();
      v87 = sub_22B360D0C();

      v88 = os_log_type_enabled(v86, v87);
      v89 = *(v0 + 480);
      v90 = *(v0 + 288);
      v91 = *(v0 + 264);
      if (v88)
      {
        v93 = *(v0 + 48);
        v92 = *(v0 + 56);
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v106 = v95;
        *v94 = 136380931;
        *(v94 + 4) = sub_22B1A7B20(v93, v92, &v106);
        *(v94 + 12) = 2050;
        v96 = [objc_opt_self() sharedURLCache];
        v97 = [v96 currentMemoryUsage];

        *(v94 + 14) = v97;
        _os_log_impl(&dword_22B116000, v86, v87, "URLCache size after fetching %{private}s: %{public}ld", v94, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v95);
        MEMORY[0x23188F650](v95, -1, -1);
        MEMORY[0x23188F650](v94, -1, -1);
      }

      v89(v90, v91);
      sub_22B2A4F58(*(v0 + 376), *(v0 + 40));
      goto LABEL_13;
    }

    v77 = *(v0 + 192);
    v78 = *(v0 + 200);
    v79 = *(v0 + 176);
    v80 = *(v0 + 184);
    v81 = *(v0 + 160);
    v82 = *(v0 + 152);
    v83 = *(v0 + 136);
    v103 = *(v0 + 144);
    v105 = *(v0 + 120);
    (*(v80 + 32))(v78, *(v0 + 168), v79);
    (*(v80 + 16))(v77, v78, v79);

    sub_22B35E12C();
    (*(v82 + 16))(v83, v81, v103);
    (*(v82 + 56))(v83, 0, 1, v103);
    v84 = *(v105 + 128);
    *(v0 + 512) = v84;
    v69 = v84;
    v85 = swift_task_alloc();
    *(v0 + 520) = v85;
    *v85 = v0;
    v85[1] = sub_22B29F68C;
    v71 = *(v0 + 368);
    v72 = *(v0 + 248);
    v73 = *(v0 + 136);
  }

  else
  {
LABEL_32:
    v67 = *(v0 + 120);
    (*(*(v0 + 152) + 56))(*(v0 + 128), 1, 1, *(v0 + 144));
    v68 = *(v67 + 128);
    *(v0 + 528) = v68;
    v69 = v68;
    v70 = swift_task_alloc();
    *(v0 + 536) = v70;
    *v70 = v0;
    v70[1] = sub_22B29FB84;
    v71 = *(v0 + 360);
    v72 = *(v0 + 240);
    v73 = *(v0 + 128);
  }

  v75 = *(v0 + 56);
  v74 = *(v0 + 64);
  v76 = *(v0 + 48);

  return MEMORY[0x282172098](v71, v74, v76, v75, v73, v69, v72);
}

uint64_t sub_22B29EA34()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_22B29EB44, v1, 0);
}

uint64_t sub_22B29EB44()
{
  v106 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 320);
  if ((*(v0 + 424))(v1, 1, v2) == 1)
  {
    sub_22B123284(v1, &qword_27D8BAC20, &qword_22B366AC0);
    v3 = *(v0 + 328);
    v4 = *(v3 + 56);
    v4(*(v0 + 408), 1, 1, *(v0 + 320));
    v5 = (v3 + 48);
  }

  else
  {
    v5 = (v0 + 424);
    v6 = *(v0 + 408);
    v8 = *(v0 + 328);
    v7 = *(v0 + 336);
    v9 = *(v8 + 32);
    v9(v7, v1, v2);
    v9(v6, v7, v2);
    v4 = *(v8 + 56);
    v4(v6, 0, 1, v2);
  }

  v10 = *(v0 + 408);
  v11 = *(v0 + 320);
  if ((*v5)(v10, 1, v11) != 1)
  {
    v31 = *(v0 + 40);
    (*(*(v0 + 328) + 32))(v31, v10, v11);
    v4(v31, 0, 1, v11);
LABEL_12:

    v32 = *(v0 + 8);

    return v32();
  }

  sub_22B123284(v10, &qword_27D8BAC20, &qword_22B366AC0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 312);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v15 = __swift_project_value_buffer(v14, qword_28140BD10);
  *(v0 + 456) = v15;
  swift_beginAccess();
  v16 = *(v13 + 16);
  *(v0 + 464) = v16;
  *(v0 + 472) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v101 = v15;
  v100 = v16;
  v16(v12, v15, v14);

  v17 = sub_22B36050C();
  v18 = sub_22B360D2C();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 312);
  v22 = *(v0 + 264);
  v21 = *(v0 + 272);
  v23 = *(v0 + 96);
  if (v19)
  {
    v98 = *(v0 + 264);
    v24 = *(v0 + 88);
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = swift_slowAlloc();
    v97 = v20;
    v28 = swift_slowAlloc();
    v105 = v28;
    *v27 = 136380931;
    *(v27 + 4) = sub_22B1A7B20(v26, v25, &v105);
    *(v27 + 12) = 1025;
    v29 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v29 = v24 & 0xFFFFFFFFFFFFLL;
    }

    *(v27 + 14) = v29 != 0;

    _os_log_impl(&dword_22B116000, v17, v18, "Fetching energy guidance from server for %{private}s hasUtilityInfo: %{BOOL,private}d", v27, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x23188F650](v28, -1, -1);
    MEMORY[0x23188F650](v27, -1, -1);

    v30 = *(v21 + 8);
    v30(v97, v98);
  }

  else
  {

    v30 = *(v21 + 8);
    v30(v20, v22);
  }

  v99 = v30;
  *(v0 + 480) = v30;
  v100(*(v0 + 304), v101, *(v0 + 264));
  v34 = sub_22B36050C();
  v35 = sub_22B360D0C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    v37 = [objc_opt_self() sharedURLCache];
    v38 = [v37 currentMemoryUsage];

    *(v36 + 4) = v38;
    _os_log_impl(&dword_22B116000, v34, v35, "URLCache size before fetching: %{public}ld", v36, 0xCu);
    MEMORY[0x23188F650](v36, -1, -1);
  }

  v39 = *(v0 + 376);
  v40 = *(v0 + 320);
  v41 = *(v0 + 328);
  v42 = *(v0 + 304);
  v43 = *(v0 + 264);
  v44 = *(v0 + 272);
  v46 = *(v0 + 88);
  v45 = *(v0 + 96);

  *(v0 + 488) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v99(v42, v43);
  v47 = *(v41 + 56);
  *(v0 + 496) = v47;
  *(v0 + 504) = (v41 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v47(v39, 1, 1, v40);
  v48 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v48 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {
    goto LABEL_31;
  }

  v49 = *(v0 + 80);
  if (!((v49 & 0x2000000000000000) != 0 ? HIBYTE(v49) & 0xF : *(v0 + 72) & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_31;
  }

  v51 = *(v0 + 112);
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = *(v0 + 104) & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    v53 = *(v0 + 176);
    v54 = *(v0 + 184);
    v55 = *(v0 + 168);
    sub_22B35E05C();
    if ((*(v54 + 48))(v55, 1, v53) == 1)
    {
      v56 = *(v0 + 296);
      v57 = *(v0 + 264);
      sub_22B123284(*(v0 + 168), &unk_27D8BA080, &unk_22B364280);
      v100(v56, v101, v57);

      v58 = sub_22B36050C();
      v59 = sub_22B360D1C();

      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 296);
      v62 = *(v0 + 264);
      if (v60)
      {
        v103 = *(v0 + 112);
        v63 = *(v0 + 104);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v105 = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_22B1A7B20(v63, v103, &v105);
        _os_log_impl(&dword_22B116000, v58, v59, "Failed to create TimeZone with %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x23188F650](v65, -1, -1);
        MEMORY[0x23188F650](v64, -1, -1);
      }

      v99(v61, v62);
      (*(v0 + 464))(*(v0 + 288), *(v0 + 456), *(v0 + 264));

      v85 = sub_22B36050C();
      v86 = sub_22B360D0C();

      v87 = os_log_type_enabled(v85, v86);
      v88 = *(v0 + 480);
      v89 = *(v0 + 288);
      v90 = *(v0 + 264);
      if (v87)
      {
        v92 = *(v0 + 48);
        v91 = *(v0 + 56);
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v105 = v94;
        *v93 = 136380931;
        *(v93 + 4) = sub_22B1A7B20(v92, v91, &v105);
        *(v93 + 12) = 2050;
        v95 = [objc_opt_self() sharedURLCache];
        v96 = [v95 currentMemoryUsage];

        *(v93 + 14) = v96;
        _os_log_impl(&dword_22B116000, v85, v86, "URLCache size after fetching %{private}s: %{public}ld", v93, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x23188F650](v94, -1, -1);
        MEMORY[0x23188F650](v93, -1, -1);
      }

      v88(v89, v90);
      sub_22B2A4F58(*(v0 + 376), *(v0 + 40));
      goto LABEL_12;
    }

    v76 = *(v0 + 192);
    v77 = *(v0 + 200);
    v78 = *(v0 + 176);
    v79 = *(v0 + 184);
    v80 = *(v0 + 160);
    v81 = *(v0 + 152);
    v82 = *(v0 + 136);
    v102 = *(v0 + 144);
    v104 = *(v0 + 120);
    (*(v79 + 32))(v77, *(v0 + 168), v78);
    (*(v79 + 16))(v76, v77, v78);

    sub_22B35E12C();
    (*(v81 + 16))(v82, v80, v102);
    (*(v81 + 56))(v82, 0, 1, v102);
    v83 = *(v104 + 128);
    *(v0 + 512) = v83;
    v68 = v83;
    v84 = swift_task_alloc();
    *(v0 + 520) = v84;
    *v84 = v0;
    v84[1] = sub_22B29F68C;
    v70 = *(v0 + 368);
    v71 = *(v0 + 248);
    v72 = *(v0 + 136);
  }

  else
  {
LABEL_31:
    v66 = *(v0 + 120);
    (*(*(v0 + 152) + 56))(*(v0 + 128), 1, 1, *(v0 + 144));
    v67 = *(v66 + 128);
    *(v0 + 528) = v67;
    v68 = v67;
    v69 = swift_task_alloc();
    *(v0 + 536) = v69;
    *v69 = v0;
    v69[1] = sub_22B29FB84;
    v70 = *(v0 + 360);
    v71 = *(v0 + 240);
    v72 = *(v0 + 128);
  }

  v74 = *(v0 + 56);
  v73 = *(v0 + 64);
  v75 = *(v0 + 48);

  return MEMORY[0x282172098](v70, v73, v75, v74, v72, v68, v71);
}

uint64_t sub_22B29F68C()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 136);

  sub_22B123284(v4, &qword_27D8BAC28, &qword_22B366AD0);

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_22B2A0048;
  }

  else
  {
    v6 = sub_22B29F804;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B29F804()
{
  v23 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 320);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  (*(v7 + 8))(v5, v6);
  sub_22B123284(v3, &qword_27D8BAC20, &qword_22B366AC0);
  v1(v2, 0, 1, v4);
  sub_22B2A4F58(v2, v3);
  (*(v0 + 464))(*(v0 + 288), *(v0 + 456), *(v0 + 264));

  v8 = sub_22B36050C();
  v9 = sub_22B360D0C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 480);
  v12 = *(v0 + 288);
  v13 = *(v0 + 264);
  if (v10)
  {
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136380931;
    *(v16 + 4) = sub_22B1A7B20(v15, v14, &v22);
    *(v16 + 12) = 2050;
    v18 = [objc_opt_self() sharedURLCache];
    v19 = [v18 currentMemoryUsage];

    *(v16 + 14) = v19;
    _os_log_impl(&dword_22B116000, v8, v9, "URLCache size after fetching %{private}s: %{public}ld", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    v11(v12, v13);
  }

  else
  {

    v11(v12, v13);
  }

  sub_22B2A4F58(*(v0 + 376), *(v0 + 40));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_22B29FB84()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *(*v1 + 128);

  sub_22B123284(v4, &qword_27D8BAC28, &qword_22B366AD0);

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_22B2A04E4;
  }

  else
  {
    v6 = sub_22B29FCFC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B29FCFC()
{
  v20 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = *(v0 + 320);
  sub_22B123284(v2, &qword_27D8BAC20, &qword_22B366AC0);
  v1(v3, 0, 1, v4);
  sub_22B2A4F58(v3, v2);
  (*(v0 + 464))(*(v0 + 288), *(v0 + 456), *(v0 + 264));

  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 480);
  v9 = *(v0 + 288);
  v10 = *(v0 + 264);
  if (v7)
  {
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136380931;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v19);
    *(v13 + 12) = 2050;
    v15 = [objc_opt_self() sharedURLCache];
    v16 = [v15 currentMemoryUsage];

    *(v13 + 14) = v16;
    _os_log_impl(&dword_22B116000, v5, v6, "URLCache size after fetching %{private}s: %{public}ld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);

    v8(v9, v10);
  }

  else
  {

    v8(v9, v10);
  }

  sub_22B2A4F58(*(v0 + 376), *(v0 + 40));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22B2A0048()
{
  v41 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 456);
  v5 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 232);
  v32 = *(v0 + 224);
  v33 = *(v0 + 464);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v11 = *(v9 + 32);
  v11(v7, *(v0 + 248), v10);
  v11(v8, v7, v10);
  v33(v5, v4, v6);
  v12 = *(v9 + 16);
  v12(v32, v8, v10);
  v13 = sub_22B36050C();
  v14 = sub_22B360D1C();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v18 = *(v0 + 208);
  if (v15)
  {
    v35 = v14;
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v19 = 138412290;
    sub_22B2A51E0(&qword_2814091A0, MEMORY[0x277D17F08], MEMORY[0x277D17F10]);
    swift_allocError();
    v12(v20, v16, v18);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    v22 = *(v17 + 8);
    v22(v16, v18);
    *(v19 + 4) = v21;
    *v34 = v21;
    _os_log_impl(&dword_22B116000, v13, v35, "Failed to fetch energy guidance from server %@", v19, 0xCu);
    sub_22B123284(v34, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v34, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);
  }

  else
  {

    v22 = *(v17 + 8);
    v22(v16, v18);
  }

  v23 = *(v0 + 232);
  v24 = *(v0 + 208);
  (*(v0 + 480))(*(v0 + 280), *(v0 + 264));
  v25 = [objc_opt_self() processInfo];
  v26 = [v25 processName];

  v27 = sub_22B36084C();
  v29 = v28;

  v36 = 258;
  v37 = 1;
  v38 = v27;
  v39 = v29;
  v40 = 0;
  static AutoBugCaptureManager.sendIssue(_:)(&v36);
  v22(v23, v24);

  sub_22B2A4F58(*(v0 + 376), *(v0 + 40));

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_22B2A04E4()
{
  v38 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 456);
  v3 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 216);
  v29 = *(v0 + 224);
  v30 = *(v0 + 464);
  v7 = *(v0 + 208);
  v8 = *(v6 + 32);
  v8(v5, *(v0 + 240), v7);
  v8(v1, v5, v7);
  v30(v3, v2, v4);
  v9 = *(v6 + 16);
  v9(v29, v1, v7);
  v10 = sub_22B36050C();
  v11 = sub_22B360D1C();
  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v15 = *(v0 + 208);
  if (v12)
  {
    v32 = v11;
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v16 = 138412290;
    sub_22B2A51E0(&qword_2814091A0, MEMORY[0x277D17F08], MEMORY[0x277D17F10]);
    swift_allocError();
    v9(v17, v13, v15);
    v18 = _swift_stdlib_bridgeErrorToNSError();
    v19 = *(v14 + 8);
    v19(v13, v15);
    *(v16 + 4) = v18;
    *v31 = v18;
    _os_log_impl(&dword_22B116000, v10, v32, "Failed to fetch energy guidance from server %@", v16, 0xCu);
    sub_22B123284(v31, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v31, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);
  }

  else
  {

    v19 = *(v14 + 8);
    v19(v13, v15);
  }

  v20 = *(v0 + 232);
  v21 = *(v0 + 208);
  (*(v0 + 480))(*(v0 + 280), *(v0 + 264));
  v22 = [objc_opt_self() processInfo];
  v23 = [v22 processName];

  v24 = sub_22B36084C();
  v26 = v25;

  v33 = 258;
  v34 = 1;
  v35 = v24;
  v36 = v26;
  v37 = 0;
  static AutoBugCaptureManager.sendIssue(_:)(&v33);
  v19(v20, v21);

  sub_22B2A4F58(*(v0 + 376), *(v0 + 40));

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22B2A0948(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  *(v4 + 64) = a3;
  v5 = sub_22B36052C();
  *(v4 + 96) = v5;
  *(v4 + 104) = *(v5 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v6 = sub_22B35DE9C();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  v7 = type metadata accessor for CDEnergyGuidanceTracker(0);
  *(v4 + 152) = v7;
  *(v4 + 160) = *(v7 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = *(type metadata accessor for CDEnergyWindowNotifications(0) - 8);
  *(v4 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2A0B50, v3, 0);
}

uint64_t sub_22B2A0B50()
{
  if (qword_28140AF70 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BDB8;
  *(v0 + 216) = qword_28140BDB8;

  return MEMORY[0x2822009F8](sub_22B2A0BE8, v1, 0);
}

uint64_t sub_22B2A0BE8()
{
  v1 = *(v0 + 88);
  *(v0 + 224) = sub_22B1802B0();

  return MEMORY[0x2822009F8](sub_22B2A0C58, v1, 0);
}

uint64_t sub_22B2A0C58()
{
  v119 = v0;
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v118[0] = MEMORY[0x277D84F90];
    sub_22B355680(0, v2, 0);
    v5 = v118[0];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = *(v0 + 208);
      sub_22B2A5040(v6, v8, type metadata accessor for CDEnergyWindowNotifications);
      v9 = *v8;
      v10 = *(v4 + 8);

      sub_22B2A50A8(v8, type metadata accessor for CDEnergyWindowNotifications);
      v118[0] = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22B355680((v11 > 1), v12 + 1, 1);
        v5 = v118[0];
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v14 = *(v0 + 80);
  *(v0 + 232) = sub_22B31A80C(v5);

  v15 = *(v14 + 16);
  *(v0 + 240) = v15;
  if (v15)
  {
    v16 = 0;
    v17 = *(v0 + 160);
    v18 = *(v17 + 80);
    *(v0 + 280) = v18;
    v19 = *(v17 + 72);
    *(v0 + 248) = v19;
    v20 = &unk_28140A000;
    while (1)
    {
      *(v0 + 256) = v16;
      v21 = *(v0 + 144);
      v22 = *(v0 + 128);
      v23 = *(v0 + 136);
      sub_22B2A5040(*(v0 + 80) + ((v18 + 32) & ~v18) + v19 * v16, *(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
      sub_22B35DDCC();
      v24 = sub_22B35DDFC();
      (*(v23 + 8))(v21, v22);
      if (v24)
      {
        v25 = *(v0 + 232);
        v26 = *(v0 + 192);
        v27 = *v26;
        v28 = v26[1];
        if (!*(v25 + 16))
        {
          goto LABEL_41;
        }

        sub_22B36149C();
        sub_22B3608FC();
        v29 = sub_22B3614DC();
        v30 = -1 << *(v25 + 32);
        v31 = v29 & ~v30;
        if (((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v31) & 1) == 0)
        {
          goto LABEL_41;
        }

        v32 = ~v30;
        v33 = *(v0 + 232);
        while (1)
        {
          v34 = (*(v33 + 48) + 16 * v31);
          v35 = *v34 == v27 && v34[1] == v28;
          if (v35 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }

          v33 = *(v0 + 232);
          v31 = (v31 + 1) & v32;
          if (((*(v33 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v31) & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        v36 = *(v0 + 192);
        v37 = *(v0 + 152);
        v38 = (v36 + v37[7]);
        v40 = *v38;
        v39 = v38[1];
        v41 = v40 & 0xFFFFFFFFFFFFLL;
        v42 = (v39 & 0x2000000000000000) != 0 ? HIBYTE(v39) & 0xF : v41;
        if (v42 || ((v43 = (v36 + v37[9]), v45 = *v43, v44 = v43[1], v46 = v45 & 0xFFFFFFFFFFFFLL, (v44 & 0x2000000000000000) != 0) ? (v47 = HIBYTE(v44) & 0xF) : (v47 = v46), v47 || ((v48 = (v36 + v37[8]), v50 = *v48, v49 = v48[1], v51 = v50 & 0xFFFFFFFFFFFFLL, (v49 & 0x2000000000000000) != 0) ? (v52 = HIBYTE(v49) & 0xF) : (v52 = v51), v52 || *(v36 + 16))))
        {
LABEL_41:
          sub_22B2A5040(*(v0 + 192), *(v0 + 176), type metadata accessor for CDEnergyGuidanceTracker);
          v73 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_22B32D094(0, v73[2] + 1, 1, v73);
          }

          v75 = v73[2];
          v74 = v73[3];
          if (v75 >= v74 >> 1)
          {
            v73 = sub_22B32D094((v74 > 1), v75 + 1, 1, v73);
          }

          *(v0 + 264) = v73;
          v76 = *(v0 + 248);
          v77 = *(v0 + 280);
          v78 = *(v0 + 176);
          v73[2] = v75 + 1;
          sub_22B2A5108(v78, v73 + ((v77 + 32) & ~v77) + v76 * v75, type metadata accessor for CDEnergyGuidanceTracker);
          if (v20[25] != -1)
          {
            swift_once();
          }

          v79 = *(v0 + 192);
          v80 = *(v0 + 168);
          v82 = *(v0 + 104);
          v81 = *(v0 + 112);
          v83 = *(v0 + 96);
          v84 = __swift_project_value_buffer(v83, qword_28140BD10);
          swift_beginAccess();
          (*(v82 + 16))(v81, v84, v83);
          sub_22B2A5040(v79, v80, type metadata accessor for CDEnergyGuidanceTracker);
          v85 = sub_22B36050C();
          v86 = sub_22B360D2C();
          v87 = os_log_type_enabled(v85, v86);
          v88 = *(v0 + 168);
          v89 = *(v0 + 112);
          v90 = *(v0 + 96);
          v91 = (*(v0 + 104) + 8);
          if (v87)
          {
            v115 = (*(v0 + 104) + 8);
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v118[0] = v93;
            *v92 = 136380675;
            v116 = v89;
            v113 = v90;
            v94 = *v88;
            v95 = v88[1];

            sub_22B2A50A8(v88, type metadata accessor for CDEnergyGuidanceTracker);
            v96 = sub_22B1A7B20(v94, v95, v118);

            *(v92 + 4) = v96;
            _os_log_impl(&dword_22B116000, v85, v86, "Purging and disabling cache for %{private}s", v92, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v93);
            MEMORY[0x23188F650](v93, -1, -1);
            MEMORY[0x23188F650](v92, -1, -1);

            (*v115)(v116, v113);
          }

          else
          {

            sub_22B2A50A8(v88, type metadata accessor for CDEnergyGuidanceTracker);
            (*v91)(v89, v90);
          }

          v97 = *(v0 + 192);
          v98 = *(v0 + 152);
          v99 = v98[8];
          v100 = (v97 + v98[7]);
          v101 = *v100;
          v117 = v100[1];
          v102 = (v97 + v98[9]);
          v103 = *v102;
          v104 = v102[1];
          v106 = *(v97 + v99);
          v105 = *(v97 + v99 + 8);
          v107 = *(v97 + 16);
          v108 = swift_task_alloc();
          *(v0 + 272) = v108;
          *v108 = v0;
          v108[1] = sub_22B2A15F4;
          v121 = v105;

          return sub_22B299C0C(v27, v28, v107, v101, v117, v103, v104, v106);
        }

        if (v20[25] != -1)
        {
          swift_once();
          v36 = *(v0 + 192);
        }

        v53 = *(v0 + 184);
        v54 = *(v0 + 120);
        v56 = *(v0 + 96);
        v55 = *(v0 + 104);
        v57 = __swift_project_value_buffer(v56, qword_28140BD10);
        swift_beginAccess();
        (*(v55 + 16))(v54, v57, v56);
        sub_22B2A5040(v36, v53, type metadata accessor for CDEnergyGuidanceTracker);
        v58 = sub_22B36050C();
        v59 = sub_22B360D2C();
        v60 = os_log_type_enabled(v58, v59);
        v61 = *(v0 + 184);
        v62 = *(v0 + 120);
        v63 = *(v0 + 96);
        v64 = (*(v0 + 104) + 8);
        if (v60)
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v118[0] = v66;
          *v65 = 136380675;
          v112 = v63;
          v114 = v62;
          v67 = v20;
          v69 = *v61;
          v68 = v61[1];

          sub_22B2A50A8(v61, type metadata accessor for CDEnergyGuidanceTracker);
          v70 = sub_22B1A7B20(v69, v68, v118);

          *(v65 + 4) = v70;
          v20 = v67;
          _os_log_impl(&dword_22B116000, v58, v59, "grid ID currently saved in notifications. Skipping purge for %{private}s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x23188F650](v66, -1, -1);
          MEMORY[0x23188F650](v65, -1, -1);

          (*v64)(v114, v112);
        }

        else
        {

          sub_22B2A50A8(v61, type metadata accessor for CDEnergyGuidanceTracker);
          (*v64)(v62, v63);
        }
      }

      v71 = *(v0 + 240);
      v72 = *(v0 + 256) + 1;
      sub_22B2A50A8(*(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
      if (v72 == v71)
      {
        break;
      }

      v19 = *(v0 + 248);
      v16 = *(v0 + 256) + 1;
      LOBYTE(v18) = *(v0 + 280);
    }
  }

  v110 = *(v0 + 8);
  v111 = MEMORY[0x277D84F90];

  return v110(v111);
}

uint64_t sub_22B2A15F4()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_22B2A1704, v1, 0);
}

uint64_t sub_22B2A1704()
{
  v103 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 256) + 1;
  sub_22B2A50A8(*(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
  if (v3 == v2)
  {
LABEL_2:

    v4 = *(v0 + 8);

    return v4(v1);
  }

  v6 = &unk_28140A000;
  v99 = v1;
  while (1)
  {
    v15 = *(v0 + 248);
    v16 = *(v0 + 256) + 1;
    *(v0 + 256) = v16;
    v17 = *(v0 + 144);
    v18 = *(v0 + 128);
    v19 = *(v0 + 136);
    sub_22B2A5040(*(v0 + 80) + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + v15 * v16, *(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
    sub_22B35DDCC();
    v20 = sub_22B35DDFC();
    (*(v19 + 8))(v17, v18);
    if (v20)
    {
      break;
    }

LABEL_8:
    v13 = *(v0 + 240);
    v14 = *(v0 + 256) + 1;
    sub_22B2A50A8(*(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
    if (v14 == v13)
    {
      goto LABEL_2;
    }
  }

  v21 = *(v0 + 232);
  v22 = *(v0 + 192);
  v23 = *v22;
  v24 = v22[1];
  if (*(v21 + 16))
  {
    sub_22B36149C();
    sub_22B3608FC();
    v25 = sub_22B3614DC();
    v26 = -1 << *(v21 + 32);
    v27 = v25 & ~v26;
    if ((*(v21 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v27))
    {
      v28 = ~v26;
      v29 = *(v0 + 232);
      while (1)
      {
        v30 = (*(v29 + 48) + 16 * v27);
        v31 = *v30 == v23 && v30[1] == v24;
        if (v31 || (sub_22B36134C() & 1) != 0)
        {
          break;
        }

        v29 = *(v0 + 232);
        v27 = (v27 + 1) & v28;
        if (((*(v29 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v27) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v32 = *(v0 + 192);
      v33 = *(v0 + 152);
      v34 = (v32 + v33[7]);
      v36 = *v34;
      v35 = v34[1];
      v37 = v36 & 0xFFFFFFFFFFFFLL;
      if (!((v35 & 0x2000000000000000) != 0 ? HIBYTE(v35) & 0xF : v37))
      {
        v39 = (v32 + v33[9]);
        v41 = *v39;
        v40 = v39[1];
        v42 = v41 & 0xFFFFFFFFFFFFLL;
        if (!((v40 & 0x2000000000000000) != 0 ? HIBYTE(v40) & 0xF : v42))
        {
          v44 = (v32 + v33[8]);
          v46 = *v44;
          v45 = v44[1];
          v47 = v46 & 0xFFFFFFFFFFFFLL;
          v48 = (v45 & 0x2000000000000000) != 0 ? HIBYTE(v45) & 0xF : v47;
          if (!v48 && !*(v32 + 16))
          {
            if (v6[25] != -1)
            {
              swift_once();
              v32 = *(v0 + 192);
            }

            v49 = *(v0 + 184);
            v50 = *(v0 + 120);
            v52 = *(v0 + 96);
            v51 = *(v0 + 104);
            v53 = __swift_project_value_buffer(v52, qword_28140BD10);
            swift_beginAccess();
            (*(v51 + 16))(v50, v53, v52);
            sub_22B2A5040(v32, v49, type metadata accessor for CDEnergyGuidanceTracker);
            v54 = sub_22B36050C();
            v55 = sub_22B360D2C();
            v56 = os_log_type_enabled(v54, v55);
            v57 = *(v0 + 184);
            v58 = *(v0 + 120);
            v59 = *(v0 + 96);
            v60 = (*(v0 + 104) + 8);
            if (v56)
            {
              v7 = swift_slowAlloc();
              v8 = swift_slowAlloc();
              v102[0] = v8;
              *v7 = 136380675;
              v96 = v58;
              v10 = *v57;
              v9 = v57[1];

              sub_22B2A50A8(v57, type metadata accessor for CDEnergyGuidanceTracker);
              v11 = sub_22B1A7B20(v10, v9, v102);

              *(v7 + 4) = v11;
              _os_log_impl(&dword_22B116000, v54, v55, "grid ID currently saved in notifications. Skipping purge for %{private}s", v7, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v8);
              v12 = v8;
              v6 = &unk_28140A000;
              MEMORY[0x23188F650](v12, -1, -1);
              MEMORY[0x23188F650](v7, -1, -1);

              (*v60)(v96, v59);
            }

            else
            {

              sub_22B2A50A8(v57, type metadata accessor for CDEnergyGuidanceTracker);
              (*v60)(v58, v59);
            }

            v1 = v99;
            goto LABEL_8;
          }
        }
      }
    }
  }

LABEL_37:
  sub_22B2A5040(*(v0 + 192), *(v0 + 176), type metadata accessor for CDEnergyGuidanceTracker);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_22B32D094(0, v1[2] + 1, 1, v1);
  }

  v62 = v1[2];
  v61 = v1[3];
  if (v62 >= v61 >> 1)
  {
    v1 = sub_22B32D094((v61 > 1), v62 + 1, 1, v1);
  }

  *(v0 + 264) = v1;
  v63 = *(v0 + 248);
  v64 = *(v0 + 280);
  v65 = *(v0 + 176);
  v1[2] = v62 + 1;
  sub_22B2A5108(v65, v1 + ((v64 + 32) & ~v64) + v63 * v62, type metadata accessor for CDEnergyGuidanceTracker);
  if (v6[25] != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 192);
  v67 = *(v0 + 168);
  v69 = *(v0 + 104);
  v68 = *(v0 + 112);
  v70 = *(v0 + 96);
  v71 = __swift_project_value_buffer(v70, qword_28140BD10);
  swift_beginAccess();
  (*(v69 + 16))(v68, v71, v70);
  sub_22B2A5040(v66, v67, type metadata accessor for CDEnergyGuidanceTracker);
  v72 = sub_22B36050C();
  v73 = sub_22B360D2C();
  v74 = os_log_type_enabled(v72, v73);
  v75 = *(v0 + 168);
  v76 = *(v0 + 112);
  v77 = *(v0 + 96);
  v78 = (*(v0 + 104) + 8);
  if (v74)
  {
    v100 = (*(v0 + 104) + 8);
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v102[0] = v80;
    *v79 = 136380675;
    v97 = v77;
    v98 = v76;
    v81 = *v75;
    v82 = v75[1];

    sub_22B2A50A8(v75, type metadata accessor for CDEnergyGuidanceTracker);
    v83 = sub_22B1A7B20(v81, v82, v102);

    *(v79 + 4) = v83;
    _os_log_impl(&dword_22B116000, v72, v73, "Purging and disabling cache for %{private}s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x23188F650](v80, -1, -1);
    MEMORY[0x23188F650](v79, -1, -1);

    (*v100)(v98, v97);
  }

  else
  {

    sub_22B2A50A8(v75, type metadata accessor for CDEnergyGuidanceTracker);
    (*v78)(v76, v77);
  }

  v84 = *(v0 + 192);
  v85 = *(v0 + 152);
  v86 = v85[8];
  v87 = (v84 + v85[7]);
  v88 = *v87;
  v101 = v87[1];
  v89 = (v84 + v85[9]);
  v90 = *v89;
  v91 = v89[1];
  v93 = *(v84 + v86);
  v92 = *(v84 + v86 + 8);
  v94 = *(v84 + 16);
  v95 = swift_task_alloc();
  *(v0 + 272) = v95;
  *v95 = v0;
  v95[1] = sub_22B2A15F4;
  v105 = v92;

  return sub_22B299C0C(v23, v24, v94, v88, v101, v90, v91, v93);
}

uint64_t sub_22B2A1F78(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for CDEnergyGuidanceTracker(0);
  v6 = v5[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[8];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_22B36134C() & 1) == 0)
  {
    return 0;
  }

  v16 = v5[9];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if (v17 == *v19 && v18 == v19[1])
  {
    return 1;
  }

  else
  {
    return sub_22B36134C() & 1;
  }
}

uint64_t sub_22B2A20A0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for CDEnergyGuidanceCache(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_22B36052C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA240, &qword_22B3636E8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for CDEnergyGuidanceTracker(0);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v6 = sub_22B35DE9C();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2A2304, v1, 0);
}

uint64_t sub_22B2A2304(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_22B35DE6C();
  v3 = *(v2 + 16);
  *(v1 + 224) = v3;
  if (v3)
  {
    v4 = *(v1 + 192);
    v5 = *(v1 + 160);
    v6 = *(v1 + 40);
    v7 = *(v5 + 80);
    *(v1 + 376) = v7;
    v8 = *(v5 + 72);
    *(v1 + 240) = 0;
    *(v1 + 248) = 0;
    *(v1 + 232) = v8;
    sub_22B2A5040(v6 + ((v7 + 32) & ~v7), v4, type metadata accessor for CDEnergyGuidanceTracker);
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v9 = *(v1 + 192);
    v10 = *(v1 + 152);
    v11 = qword_28140BDC8;
    *(v1 + 256) = qword_28140BDC8;
    *(v1 + 264) = *v9;
    *(v1 + 272) = *(v9 + 8);
    *(v1 + 380) = *(v9 + 16);
    v12 = (v9 + v10[7]);
    *(v1 + 280) = *v12;
    *(v1 + 288) = v12[1];
    v13 = (v9 + v10[9]);
    *(v1 + 296) = *v13;
    *(v1 + 304) = v13[1];
    v14 = (v9 + v10[8]);
    *(v1 + 312) = *v14;
    *(v1 + 320) = v14[1];

    return MEMORY[0x2822009F8](sub_22B2A2564, v11, 0);
  }

  else
  {
    (*(*(v1 + 208) + 8))(*(v1 + 216), *(v1 + 200));

    v15 = *(v1 + 8);

    return v15();
  }
}

uint64_t sub_22B2A2564()
{
  v41 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  *(v0 + 328) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 336) = v5;
  *(v0 + 344) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 304);
  if (v8)
  {
    v10 = *(v0 + 380);
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v38 = *(v0 + 112);
    v13 = *(v0 + 88);
    v36 = *(v0 + 296);
    v37 = *(v0 + 80);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 136381187;
    *(v14 + 4) = sub_22B1A7B20(v12, v11, &v40);
    *(v14 + 12) = 512;
    *(v14 + 14) = v10;
    *(v14 + 16) = 1024;
    v16 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v16 = v36 & 0xFFFFFFFFFFFFLL;
    }

    *(v14 + 18) = v16 != 0;

    _os_log_impl(&dword_22B116000, v6, v7, "Get cached guidance entry from cache for %{private}s %hd hasUtility: %{BOOL}d", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);

    v17 = *(v13 + 8);
    v17(v38, v37);
  }

  else
  {
    v18 = *(v0 + 112);
    v19 = *(v0 + 80);
    v20 = *(v0 + 88);

    v17 = *(v20 + 8);
    v17(v18, v19);
  }

  *(v0 + 352) = v17;
  v21 = *(*(v0 + 256) + 112);
  if (v21)
  {
    v23 = *(v0 + 312);
    v22 = *(v0 + 320);
    v34 = *(v0 + 280);
    v35 = *(v0 + 296);
    v24 = *(v0 + 380);
    v25 = *(v0 + 264);
    v26 = *(v0 + 272);
    v27 = *(v0 + 136);
    v39 = *(v0 + 240);
    (*(*(v0 + 64) + 56))(v27, 1, 1, *(v0 + 56));
    v28 = *(v21 + 48);
    v29 = swift_task_alloc();
    *(v29 + 16) = v21;
    *(v29 + 24) = v25;
    *(v29 + 32) = v26;
    *(v29 + 40) = v24;
    *(v29 + 48) = v34;
    *(v29 + 64) = v35;
    *(v29 + 80) = v23;
    *(v29 + 88) = v22;
    *(v29 + 96) = 2;
    *(v29 + 104) = v27;

    v30 = v28;
    v31 = v39;
    sub_22B360E7C();

    sub_22B123284(v27, &qword_27D8BA240, &qword_22B3636E8);
  }

  else
  {
    (*(*(v0 + 64) + 56))(*(v0 + 144), 1, 1, *(v0 + 56));
    v31 = *(v0 + 240);
  }

  *(v0 + 360) = v31;
  v32 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22B2A290C, v32, 0);
}

uint64_t sub_22B2A290C()
{
  v47 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_22B170BE0(*(v0 + 144), v1, &qword_27D8BA240, &qword_22B3636E8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 192);
    v5 = *(v0 + 128);
    sub_22B123284(*(v0 + 144), &qword_27D8BA240, &qword_22B3636E8);
    sub_22B2A50A8(v4, type metadata accessor for CDEnergyGuidanceTracker);
    sub_22B123284(v5, &qword_27D8BA240, &qword_22B3636E8);
    v6 = *(v0 + 360);
  }

  else
  {
    sub_22B2A5108(*(v0 + 128), *(v0 + 72), type metadata accessor for CDEnergyGuidanceCache);
    sub_22B2A51E0(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    if ((sub_22B36074C() & 1) == 0)
    {
      v19 = *(v0 + 184);
      v20 = *(v0 + 192);
      v22 = *(v0 + 168);
      v21 = *(v0 + 176);
      (*(v0 + 336))(*(v0 + 104), *(v0 + 328), *(v0 + 80));
      sub_22B2A5040(v20, v19, type metadata accessor for CDEnergyGuidanceTracker);
      sub_22B2A5040(v20, v21, type metadata accessor for CDEnergyGuidanceTracker);
      sub_22B2A5040(v20, v22, type metadata accessor for CDEnergyGuidanceTracker);
      v23 = sub_22B36050C();
      v24 = sub_22B360D2C();
      v25 = os_log_type_enabled(v23, v24);
      v26 = *(v0 + 352);
      v27 = *(v0 + 176);
      v28 = *(v0 + 184);
      v29 = *(v0 + 168);
      if (v25)
      {
        v42 = *(v0 + 152);
        v44 = *(v0 + 80);
        v45 = *(v0 + 104);
        v30 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46 = v43;
        *v30 = 136381187;
        v31 = *v28;
        v32 = v28[1];

        sub_22B2A50A8(v28, type metadata accessor for CDEnergyGuidanceTracker);
        v33 = sub_22B1A7B20(v31, v32, &v46);

        *(v30 + 4) = v33;
        *(v30 + 12) = 512;
        LOWORD(v33) = *(v27 + 16);
        sub_22B2A50A8(v27, type metadata accessor for CDEnergyGuidanceTracker);
        *(v30 + 14) = v33;
        *(v30 + 16) = 1024;
        v34 = (v29 + *(v42 + 36));
        v36 = *v34;
        v35 = v34[1];
        v37 = v36 & 0xFFFFFFFFFFFFLL;
        if ((v35 & 0x2000000000000000) != 0)
        {
          v38 = HIBYTE(v35) & 0xF;
        }

        else
        {
          v38 = v37;
        }

        v39 = v38 != 0;
        sub_22B2A50A8(v29, type metadata accessor for CDEnergyGuidanceTracker);
        *(v30 + 18) = v39;
        _os_log_impl(&dword_22B116000, v23, v24, "Purging guidance cache for %{private}s %hd hasUtility: %{BOOL}d", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x23188F650](v43, -1, -1);
        MEMORY[0x23188F650](v30, -1, -1);

        v26(v45, v44);
      }

      else
      {
        v40 = *(v0 + 104);
        v41 = *(v0 + 80);
        sub_22B2A50A8(*(v0 + 168), type metadata accessor for CDEnergyGuidanceTracker);
        sub_22B2A50A8(v27, type metadata accessor for CDEnergyGuidanceTracker);

        sub_22B2A50A8(v28, type metadata accessor for CDEnergyGuidanceTracker);
        v26(v40, v41);
      }

      v14 = *(v0 + 256);
      v18 = sub_22B2A2F48;
      goto LABEL_19;
    }

    v6 = *(v0 + 360);
    v7 = *(v0 + 192);
    v8 = *(v0 + 144);
    sub_22B2A50A8(*(v0 + 72), type metadata accessor for CDEnergyGuidanceCache);
    sub_22B123284(v8, &qword_27D8BA240, &qword_22B3636E8);
    sub_22B2A50A8(v7, type metadata accessor for CDEnergyGuidanceTracker);
  }

  v9 = *(v0 + 248) + 1;
  if (v9 == *(v0 + 224))
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v10 = *(v0 + 8);

    return v10();
  }

  *(v0 + 240) = v6;
  *(v0 + 248) = v9;
  sub_22B2A5040(*(v0 + 40) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 232) * v9, *(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
  if (qword_28140B168 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 192);
  v13 = *(v0 + 152);
  v14 = qword_28140BDC8;
  *(v0 + 256) = qword_28140BDC8;
  *(v0 + 264) = *v12;
  *(v0 + 272) = *(v12 + 8);
  *(v0 + 380) = *(v12 + 16);
  v15 = (v12 + v13[7]);
  *(v0 + 280) = *v15;
  *(v0 + 288) = v15[1];
  v16 = (v12 + v13[9]);
  *(v0 + 296) = *v16;
  *(v0 + 304) = v16[1];
  v17 = (v12 + v13[8]);
  *(v0 + 312) = *v17;
  *(v0 + 320) = v17[1];
  v18 = sub_22B2A2564;
LABEL_19:

  return MEMORY[0x2822009F8](v18, v14, 0);
}

uint64_t sub_22B2A2F48()
{
  v33 = v0;
  (*(v0 + 336))(*(v0 + 96), *(v0 + 328), *(v0 + 80));

  v1 = sub_22B36050C();
  v2 = sub_22B360D2C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 352);
  v5 = *(v0 + 304);
  if (v3)
  {
    v6 = *(v0 + 296);
    v7 = *(v0 + 380);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v30 = *(v0 + 96);
    v28 = *(v0 + 80);
    v27 = *(v0 + 352);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136381187;
    *(v10 + 4) = sub_22B1A7B20(v9, v8, &v32);
    *(v10 + 12) = 512;
    *(v10 + 14) = v7;
    *(v10 + 16) = 1024;
    v12 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v12 = v6 & 0xFFFFFFFFFFFFLL;
    }

    *(v10 + 18) = v12 != 0;

    _os_log_impl(&dword_22B116000, v1, v2, "Delete energy guidance from cache for %{private}s %hd hasUtility: %{BOOL}d", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);

    v27(v30, v28);
  }

  else
  {
    v13 = *(v0 + 96);
    v14 = *(v0 + 80);

    v4(v13, v14);
  }

  v15 = *(*(v0 + 256) + 112);
  v16 = *(v0 + 360);
  if (v15)
  {
    v18 = *(v0 + 312);
    v17 = *(v0 + 320);
    v29 = *(v0 + 280);
    v31 = *(v0 + 296);
    v19 = *(v0 + 380);
    v21 = *(v0 + 264);
    v20 = *(v0 + 272);
    v22 = *(v15 + 48);
    v23 = swift_task_alloc();
    *(v23 + 16) = v15;
    *(v23 + 24) = v21;
    *(v23 + 32) = v20;
    *(v23 + 40) = v19;
    *(v23 + 48) = v29;
    *(v23 + 64) = v31;
    *(v23 + 80) = v18;
    *(v23 + 88) = v17;

    v24 = v22;
    sub_22B360E7C();
  }

  *(v0 + 368) = v16;
  v25 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_22B2A320C, v25, 0);
}

uint64_t sub_22B2A320C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 192);
  v3 = *(v0 + 144);
  sub_22B2A50A8(*(v0 + 72), type metadata accessor for CDEnergyGuidanceCache);
  sub_22B123284(v3, &qword_27D8BA240, &qword_22B3636E8);
  sub_22B2A50A8(v2, type metadata accessor for CDEnergyGuidanceTracker);
  v4 = *(v0 + 248) + 1;
  if (v4 == *(v0 + 224))
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    *(v0 + 240) = v1;
    *(v0 + 248) = v4;
    sub_22B2A5040(*(v0 + 40) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 232) * v4, *(v0 + 192), type metadata accessor for CDEnergyGuidanceTracker);
    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 192);
    v8 = *(v0 + 152);
    v9 = qword_28140BDC8;
    *(v0 + 256) = qword_28140BDC8;
    *(v0 + 264) = *v7;
    *(v0 + 272) = *(v7 + 8);
    *(v0 + 380) = *(v7 + 16);
    v10 = (v7 + v8[7]);
    *(v0 + 280) = *v10;
    *(v0 + 288) = v10[1];
    v11 = (v7 + v8[9]);
    *(v0 + 296) = *v11;
    *(v0 + 304) = v11[1];
    v12 = (v7 + v8[8]);
    *(v0 + 312) = *v12;
    *(v0 + 320) = v12[1];

    return MEMORY[0x2822009F8](sub_22B2A2564, v9, 0);
  }
}

uint64_t sub_22B2A34B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[28] = a10;
  v11[29] = v10;
  v11[26] = a8;
  v11[27] = a9;
  v11[24] = a6;
  v11[25] = a7;
  v11[22] = a4;
  v11[23] = a5;
  v11[20] = a1;
  v11[21] = a2;
  v17 = sub_22B35E20C();
  v11[30] = v17;
  v11[31] = *(v17 - 8);
  v11[32] = swift_task_alloc();
  v18 = sub_22B36052C();
  v11[33] = v18;
  v11[34] = *(v18 - 8);
  v11[35] = swift_task_alloc();
  v11[36] = swift_task_alloc();
  v11[37] = swift_task_alloc();
  v11[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v11[39] = swift_task_alloc();
  v11[40] = swift_task_alloc();
  v11[41] = swift_task_alloc();
  v19 = sub_22B35D8BC();
  v11[42] = v19;
  v11[43] = *(v19 - 8);
  v11[44] = swift_task_alloc();
  v20 = sub_22B35DE9C();
  v11[45] = v20;
  v11[46] = *(v20 - 8);
  v11[47] = swift_task_alloc();
  v11[48] = swift_task_alloc();
  v11[49] = swift_task_alloc();
  v11[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC20, &qword_22B366AC0);
  v21 = swift_task_alloc();
  v11[51] = v21;
  v22 = sub_22B35E33C();
  v11[52] = v22;
  v11[53] = *(v22 - 8);
  v11[54] = swift_task_alloc();
  v11[55] = swift_task_alloc();
  v23 = swift_task_alloc();
  v11[56] = v23;
  *v23 = v11;
  v23[1] = sub_22B2A3870;

  return sub_22B29C1E8(v21, a1, a2, a3, a4, a5, a6, a7);
}