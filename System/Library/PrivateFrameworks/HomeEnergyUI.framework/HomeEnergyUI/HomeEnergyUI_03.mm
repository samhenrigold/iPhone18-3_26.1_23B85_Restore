uint64_t sub_20D81FFA0()
{
  v20 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 208);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v0 + 72) = v2;
  sub_20D972848();

  sub_20D7FEF04(v1);
  if (v3 == 1)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    swift_getKeyPath();
    *(v0 + 80) = v6;
    sub_20D972858();

    v7 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot;
    swift_beginAccess();
    sub_20D7FCF94(v6 + v7, v5);
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    *(v0 + 88) = v6;
    sub_20D972848();

    sub_20D7FEF04(v5);
  }

  v9 = sub_20D9734D8();
  v10 = sub_20D975448();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 184);
  if (v11)
  {
    v13 = *(v0 + 176);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20D7F4DC8(0xD00000000000003CLL, 0x800000020D984050, v19);
    *(v14 + 12) = 2080;
    v16 = sub_20D7F4DC8(v13, v12, v19);

    *(v14 + 14) = v16;
    _os_log_impl(&dword_20D7C9000, v9, v10, "%s: weekly summary done %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t HistoricalUsageSnapshotManager.deinit()
{

  v1 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__lastReloadDate;
  v2 = sub_20D972628();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__dailyUsageSnapshot);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__sixMonthlyUsageSnapshot);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__yearlyUsageSnapshot);
  v3 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  v4 = sub_20D972898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t HistoricalUsageSnapshotManager.__deallocating_deinit()
{
  HistoricalUsageSnapshotManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_20D820424(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 152) = a5;
  *(v7 + 160) = v6;
  *(v7 + 273) = a6;
  *(v7 + 272) = a4;
  *(v7 + 136) = a2;
  *(v7 + 144) = a3;
  *(v7 + 128) = a1;
  v8 = sub_20D972EA8();
  *(v7 + 168) = v8;
  *(v7 + 176) = *(v8 - 8);
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  *(v7 + 200) = swift_task_alloc();
  v9 = sub_20D972838();
  *(v7 + 208) = v9;
  *(v7 + 216) = *(v9 - 8);
  *(v7 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D820594, 0, 0);
}

uint64_t sub_20D820594()
{
  v17 = v0;
  v1 = v0[20];
  swift_getKeyPath();
  v0[15] = v1;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v2 = *(v1 + 24);
  v0[29] = v2;
  v3 = *(v1 + 32);
  v0[30] = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_20D972CD8();
    swift_bridgeObjectRetain_n();
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_20D82088C;

    return MEMORY[0x28215C988](v2, v3);
  }

  else
  {
LABEL_8:
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v6 = sub_20D9734F8();
    __swift_project_value_buffer(v6, qword_28112AB90);
    v7 = sub_20D9734D8();
    v8 = sub_20D975478();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_20D7F4DC8(0xD00000000000003ELL, 0x800000020D983F30, &v16);
      _os_log_impl(&dword_20D7C9000, v7, v8, "%s: Site ID is empty, no snapshots to get....", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F324260](v10, -1, -1);
      MEMORY[0x20F324260](v9, -1, -1);
    }

    v12 = v0[16];
    v11 = v0[17];
    v15 = 0;
    static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v15, v11, v12);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_20D82088C(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_20D82098C, 0, 0);
}

uint64_t sub_20D82098C()
{
  v86 = v0;
  v1 = *(v0 + 256);
  if (!v1)
  {
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v15 = sub_20D9734F8();
    __swift_project_value_buffer(v15, qword_28112AB90);

    v16 = sub_20D9734D8();
    v17 = sub_20D975458();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 240);
    if (v18)
    {
      v20 = *(v0 + 232);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v85[0] = v22;
      *v21 = 136315394;
      *(v21 + 4) = sub_20D7F4DC8(0xD00000000000003ELL, 0x800000020D983F30, v85);
      *(v21 + 12) = 2080;
      v23 = sub_20D7F4DC8(v20, v19, v85);

      *(v21 + 14) = v23;
      _os_log_impl(&dword_20D7C9000, v16, v17, "%s: Failed to initialize Energy Site for %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v22, -1, -1);
      MEMORY[0x20F324260](v21, -1, -1);
    }

    else
    {
    }

    v54 = *(v0 + 128);
    v53 = *(v0 + 136);
    LOBYTE(v85[0]) = 0;
    static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v85, v53, v54);
    goto LABEL_34;
  }

  sub_20D972CB8();
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  sub_20D9727E8();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_20D7E3944(*(v0 + 200), &qword_27C83CAA0, &qword_20D978AA0);
LABEL_5:
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v6 = sub_20D9734F8();
    __swift_project_value_buffer(v6, qword_28112AB90);

    v7 = sub_20D9734D8();
    v8 = sub_20D975458();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 240);
    if (v9)
    {
      v11 = *(v0 + 232);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v85[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_20D7F4DC8(0xD00000000000003ELL, 0x800000020D983F30, v85);
      *(v12 + 12) = 2080;
      v14 = sub_20D7F4DC8(v11, v10, v85);

      *(v12 + 14) = v14;
      _os_log_impl(&dword_20D7C9000, v7, v8, "%s: No time zone for %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v13, -1, -1);
      MEMORY[0x20F324260](v12, -1, -1);
    }

    else
    {
    }

    v25 = *(v0 + 128);
    v24 = *(v0 + 136);
    LOBYTE(v85[0]) = 0;
    static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v85, v24, v25);

LABEL_34:

    v82 = *(v0 + 8);

    return v82();
  }

  (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
  if ((sub_20D972C88() & 1) == 0)
  {
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v55 = sub_20D9734F8();
    __swift_project_value_buffer(v55, qword_28112AB90);

    v56 = sub_20D9734D8();
    v57 = sub_20D975458();

    v58 = os_log_type_enabled(v56, v57);
    v59 = *(v0 + 240);
    if (v58)
    {
      v60 = *(v0 + 232);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v85[0] = v62;
      *v61 = 136315394;
      *(v61 + 4) = sub_20D7F4DC8(0xD00000000000003ELL, 0x800000020D983F30, v85);
      *(v61 + 12) = 2080;
      v63 = sub_20D7F4DC8(v60, v59, v85);

      *(v61 + 14) = v63;
      _os_log_impl(&dword_20D7C9000, v56, v57, "%s: Site %s exists but has no utility subscription", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v62, -1, -1);
      MEMORY[0x20F324260](v61, -1, -1);
    }

    else
    {
    }

    v73 = *(v0 + 216);
    v72 = *(v0 + 224);
    v74 = *(v0 + 208);
    v76 = *(v0 + 128);
    v75 = *(v0 + 136);
    LOBYTE(v85[0]) = 3;
    static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v85, v75, v76);

    (*(v73 + 8))(v72, v74);
    goto LABEL_34;
  }

  v26 = *(v0 + 192);
  v84 = *(v0 + 184);
  v28 = *(v0 + 168);
  v27 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v83 = *(v27 + 104);
  v83(v26, *MEMORY[0x277D07348], v28);
  v30 = sub_20D972E98();
  v31 = v1;
  v33 = v32;
  v34 = *(v27 + 8);
  v34(v26, v28);
  *(inited + 32) = v30;
  *(inited + 40) = v33;
  v35 = v31;
  v83(v84, *MEMORY[0x277D07350], v28);
  v36 = sub_20D972E98();
  v38 = v37;
  v34(v84, v28);
  *(inited + 48) = v36;
  *(inited + 56) = v38;
  *(v0 + 104) = sub_20D972C98();
  *(v0 + 112) = v39;
  v40 = swift_task_alloc();
  *(v40 + 16) = v0 + 104;
  LOBYTE(v31) = sub_20D8292B0(sub_20D829CB0, v40, inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  if (v31)
  {
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v41 = sub_20D9734F8();
    __swift_project_value_buffer(v41, qword_28112AB90);

    v42 = sub_20D9734D8();
    v43 = sub_20D975458();

    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 240);
    if (v44)
    {
      v46 = *(v0 + 232);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v85[0] = v48;
      *v47 = 136315650;
      *(v47 + 4) = sub_20D7F4DC8(0xD00000000000003ELL, 0x800000020D983F30, v85);
      *(v47 + 12) = 2080;
      v49 = sub_20D7F4DC8(v46, v45, v85);

      *(v47 + 14) = v49;
      *(v47 + 22) = 2080;
      v50 = sub_20D972C98();
      v52 = sub_20D7F4DC8(v50, v51, v85);

      *(v47 + 24) = v52;
      _os_log_impl(&dword_20D7C9000, v42, v43, "%s: Site %s exists but is disconnected or expired: %s", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v48, -1, -1);
      MEMORY[0x20F324260](v47, -1, -1);
    }

    else
    {
    }

    v77 = *(v0 + 216);
    v78 = *(v0 + 224);
    v79 = *(v0 + 208);
    v81 = *(v0 + 128);
    v80 = *(v0 + 136);
    LOBYTE(v85[0]) = 4;
    static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v85, v80, v81);

    (*(v77 + 8))(v78, v79);
    goto LABEL_34;
  }

  v64 = *(v0 + 272);

  v65 = swift_task_alloc();
  *(v0 + 264) = v65;
  *v65 = v0;
  v65[1] = sub_20D82136C;
  v66 = *(v0 + 224);
  v67 = *(v0 + 273);
  v68 = *(v0 + 136);
  v69 = *(v0 + 144);
  v70 = *(v0 + 128);

  return sub_20D824A50(v70, v35, v68, v66, v67, v69, v64 & 1);
}

uint64_t sub_20D82136C()
{

  return MEMORY[0x2822009F8](sub_20D821468, 0, 0);
}

uint64_t sub_20D821468()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20D821518()
{
  v1[3] = v0;
  v2 = sub_20D973488();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_20D9727B8();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_20D972AF8();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  type metadata accessor for HistoricalUsageSnapshot(0);
  v1[13] = swift_task_alloc();
  v5 = sub_20D973448();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = sub_20D973478();
  v1[19] = v6;
  v1[20] = *(v6 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D82178C, 0, 0);
}

uint64_t sub_20D82178C()
{
  if (qword_27C8384A0 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = __swift_project_value_buffer(v3, qword_27C839AA8);
  (*(v2 + 16))(v1, v4, v3);
  sub_20D973458();
  sub_20D973418();
  v5 = sub_20D973458();
  v6 = sub_20D975498();
  if (sub_20D9754E8())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v5, v6, v8, "Five-Years Detailed Weekly Snapshot", "", v7, 2u);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[14];
  v12 = v0[15];
  v14 = v0[11];
  v13 = v0[12];
  v15 = v0[10];
  v16 = v0[8];
  v22 = v0[7];
  v23 = v0[9];

  (*(v12 + 16))(v10, v9, v11);
  sub_20D9734B8();
  swift_allocObject();
  v0[22] = sub_20D9734A8();
  (*(v14 + 104))(v13, *MEMORY[0x277D075B8], v15);
  (*(v16 + 104))(v23, *MEMORY[0x277CC9998], v22);
  v17 = swift_task_alloc();
  v0[23] = v17;
  *v17 = v0;
  v17[1] = sub_20D8219E0;
  v19 = v0[12];
  v18 = v0[13];
  v20 = v0[9];

  return sub_20D820424(v18, v19, 0, 1, v20, 0);
}

uint64_t sub_20D8219E0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20D821B94, 0, 0);
}

uint64_t sub_20D821B94()
{
  v1 = v0[13];
  v2 = v0[3];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[2] = v2;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972848();

  sub_20D7FEF04(v1);
  v4 = sub_20D973458();
  v5 = sub_20D9754A8();
  if (sub_20D9754E8())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v4, v5, v7, "weekly snapshot done", "", v6, 2u);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v8 = sub_20D973458();
  sub_20D973498();
  v9 = sub_20D975488();
  if (sub_20D9754E8())
  {
    v10 = v0[5];
    v11 = v0[6];
    v12 = v0[4];

    sub_20D9734C8();

    if ((*(v10 + 88))(v11, v12) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[5] + 8))(v0[6], v0[4]);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v8, v9, v15, "Five-Years Detailed Weekly Snapshot", v13, v14, 2u);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v16 = v0[21];
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[18];
  v21 = v0[15];
  v20 = v0[16];
  v22 = v0[14];

  v23 = *(v21 + 8);
  v23(v20, v22);
  v23(v19, v22);
  (*(v17 + 8))(v16, v18);

  v24 = v0[1];

  return v24();
}

uint64_t sub_20D821F08()
{
  v1[24] = v0;
  v2 = sub_20D9727D8();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v1[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v1[30] = swift_task_alloc();
  v3 = sub_20D971EA8();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v1[38] = swift_task_alloc();
  v4 = sub_20D972C58();
  v1[39] = v4;
  v1[40] = *(v4 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v5 = sub_20D972838();
  v1[43] = v5;
  v1[44] = *(v5 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v6 = sub_20D972E88();
  v1[47] = v6;
  v1[48] = *(v6 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v7 = sub_20D972628();
  v1[52] = v7;
  v1[53] = *(v7 - 8);
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v8 = sub_20D971D98();
  v1[61] = v8;
  v1[62] = *(v8 - 8);
  v1[63] = swift_task_alloc();
  v9 = sub_20D973488();
  v1[64] = v9;
  v1[65] = *(v9 - 8);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v10 = sub_20D9727B8();
  v1[69] = v10;
  v1[70] = *(v10 - 8);
  v1[71] = swift_task_alloc();
  v11 = sub_20D972AF8();
  v1[72] = v11;
  v1[73] = *(v11 - 8);
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = type metadata accessor for HistoricalUsageSnapshot(0);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v12 = sub_20D973448();
  v1[81] = v12;
  v1[82] = *(v12 - 8);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v13 = sub_20D973478();
  v1[89] = v13;
  v1[90] = *(v13 - 8);
  v1[91] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D822614, 0, 0);
}

uint64_t sub_20D822614()
{
  v52 = v0;
  v1 = v0[24];
  swift_getKeyPath();
  v0[11] = v1;
  v0[92] = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  v0[93] = sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager, &protocol conformance descriptor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  if (*(v1 + 32))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v0[95] = v3;
  v0[94] = v2;
  v4 = qword_2811250E8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_20D9734F8();
  v0[96] = __swift_project_value_buffer(v5, qword_28112AB90);

  v6 = sub_20D9734D8();
  v7 = sub_20D975448();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, &v51);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(v2, v3, &v51);
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s: start %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  if ((sub_20D972ED8() & 1) != 0 && (v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]), v11 = sub_20D975078(), v12 = [v10 initWithSuiteName_], v11, v12))
  {
    v13 = sub_20D975078();
    v14 = [v12 integerForKey_];

    v15 = 3;
    if (v14 > 0)
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 3;
  }

  v50 = v15;
  if (qword_27C8384A0 != -1)
  {
    swift_once();
  }

  v16 = v0[91];
  v17 = v0[90];
  v18 = v0[89];
  v19 = __swift_project_value_buffer(v18, qword_27C839AA8);
  (*(v17 + 16))(v16, v19, v18);
  sub_20D973458();
  sub_20D973418();
  v20 = sub_20D973458();
  v21 = sub_20D975498();
  if (sub_20D9754E8())
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v20, v21, v23, "HistoricalUsageSnapshotManager.getDetailsChartSnapshots", "", v22, 2u);
    MEMORY[0x20F324260](v22, -1, -1);
  }

  v24 = v0[88];
  v25 = v0[87];
  v26 = v0[82];
  v27 = v0[81];

  v28 = *(v26 + 16);
  v0[97] = v28;
  v0[98] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v49 = v28;
  v28(v25, v24, v27);
  v0[99] = sub_20D9734B8();
  swift_allocObject();
  v0[100] = sub_20D9734A8();
  v29 = sub_20D973458();
  v30 = sub_20D975498();
  if (sub_20D9754E8())
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v29, v30, v32, "Day interval", "", v31, 2u);
    MEMORY[0x20F324260](v31, -1, -1);
  }

  v33 = v0[88];
  v34 = v0[87];
  v35 = v0[81];
  v36 = v0[73];
  v37 = v0[72];
  v48 = v0[71];
  v38 = v0[70];
  v46 = v0[75];
  v47 = v0[69];

  v49(v34, v33, v35);
  swift_allocObject();
  v0[101] = sub_20D9734A8();
  v39 = *MEMORY[0x277D075B0];
  v40 = *(v36 + 104);
  v0[102] = v40;
  v0[103] = (v36 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v40(v46, v39, v37);
  (*(v38 + 104))(v48, *MEMORY[0x277CC9998], v47);
  v41 = swift_task_alloc();
  v0[104] = v41;
  *v41 = v0;
  v41[1] = sub_20D822C40;
  v42 = v0[80];
  v43 = v0[75];
  v44 = v0[71];

  return sub_20D820424(v42, v43, v50, 0, v44, 0);
}

uint64_t sub_20D822C40()
{
  v1 = *v0;
  v2 = *(*v0 + 600);
  v3 = *(*v0 + 584);
  v4 = *(*v0 + 576);
  v5 = *(*v0 + 568);
  v6 = *(*v0 + 560);
  v7 = *(*v0 + 552);

  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 8);
  *(v1 + 840) = v8;
  *(v1 + 848) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v4);

  return MEMORY[0x2822009F8](sub_20D822E0C, 0, 0);
}

uint64_t sub_20D822E0C()
{
  v217 = v0;
  v1 = v0[80];
  v2 = v0[24];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[12] = v2;
  sub_20D972848();

  sub_20D7FEF04(v1);
  v4 = sub_20D973458();
  v5 = sub_20D9754A8();
  if (sub_20D9754E8())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v4, v5, v7, "daily snapshot done", "", v6, 2u);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v8 = sub_20D973458();
  sub_20D973498();
  v9 = sub_20D975488();
  v10 = sub_20D9754E8();
  v11 = MEMORY[0x277D85B00];
  if (v10)
  {
    v12 = v0[68];
    v13 = v0[65];
    v14 = v0[64];

    sub_20D9734C8();

    if ((*(v13 + 88))(v12, v14) == *v11)
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[65] + 8))(v0[68], v0[64]);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v8, v9, v17, "Day interval", v15, v16, 2u);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  v18 = v0[86];
  v19 = v0[82];
  v20 = v0[81];

  v209 = *(v19 + 8);
  v209(v18, v20);

  v21 = sub_20D9734D8();
  v22 = sub_20D975478();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[95];
    v24 = v0[94];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v216[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, v216);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_20D7F4DC8(v24, v23, v216);
    _os_log_impl(&dword_20D7C9000, v21, v22, "\t\t%s: day done %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v26, -1, -1);
    MEMORY[0x20F324260](v25, -1, -1);
  }

  sub_20D973438();
  v27 = sub_20D973458();
  v28 = sub_20D975498();
  if (sub_20D9754E8())
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v27, v28, v30, "Rollup: Five-Years Daily Snapshot", "", v29, 2u);
    MEMORY[0x20F324260](v29, -1, -1);
  }

  v173 = v0[102];
  v31 = v0[97];
  v32 = v0[87];
  v33 = v0[85];
  v34 = v0[81];
  v210 = v0[78];
  v214 = v0[76];
  v192 = v0[75];
  v189 = v0[73];
  v204 = v0[72];
  v207 = v0[74];
  v156 = v0[62];
  v158 = v0[61];
  v160 = v0[63];
  v166 = v0[51];
  v177 = v0[50];
  v211 = v0[48];
  v164 = v0[47];
  v201 = v0[46];
  v180 = v0[44];
  v183 = v0[45];
  v186 = v0[43];
  v35 = v0[24];

  v31(v32, v33, v34);
  swift_allocObject();
  sub_20D9734A8();
  v209(v33, v34);
  swift_getKeyPath();
  v0[13] = v35;
  sub_20D972858();

  v36 = (v35 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot);
  swift_beginAccess();
  v168 = *(v36 + 1);
  v170 = *v36;
  swift_getKeyPath();
  v0[14] = v35;

  sub_20D972858();

  (*(v156 + 16))(v160, &v36[v214[9]], v158);
  sub_20D971D78();
  (*(v156 + 8))(v160, v158);
  swift_getKeyPath();
  v0[15] = v35;
  sub_20D972858();

  v37 = *(v211 + 16);
  v37(v166, &v36[v214[12]], v164);
  sub_20D972E68();
  v162 = *(v211 + 8);
  v162(v166, v164);
  v173(v207, *MEMORY[0x277D075C8], v204);
  swift_getKeyPath();
  v0[16] = v35;
  sub_20D972858();

  v174 = v37;
  v37(v177, &v36[v214[12]], v164);
  sub_20D972E38();
  v162(v177, v164);
  swift_getKeyPath();
  v0[17] = v35;
  sub_20D972858();

  LOBYTE(v33) = v36[v214[11]];
  swift_getKeyPath();
  v0[18] = v35;
  sub_20D972858();

  v38 = *&v36[v214[15]];
  *v210 = v170;
  v210[1] = v168;
  *(v210 + v214[16]) = 6;
  *(v210 + v214[11]) = v33;
  (*(v189 + 16))(v192, v207, v204);
  (*(v180 + 16))(v183, v201, v186);
  v39 = v214[12];

  v208 = v38;

  sub_20D972E28();
  v40 = sub_20D972E38();
  if (*(v40 + 16))
  {
    v41 = v0[58];
    v212 = v0[59];
    v42 = v0[52];
    v43 = v0[53];
    v44 = v0[42];
    v45 = v39;
    v46 = v0[39];
    v47 = v0[40];
    (*(v47 + 16))(v44, v40 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v46);

    MEMORY[0x20F320DF0](v48);
    v49 = v46;
    v39 = v45;
    (*(v47 + 8))(v44, v49);
    (*(v43 + 32))(v212, v41, v42);
  }

  else
  {
    v50 = v0[59];
    v51 = v0[60];
    v52 = v0[52];
    v53 = v0[53];

    (*(v53 + 16))(v50, v51, v52);
  }

  sub_20D972DA8();
  v213 = v39;
  v54 = sub_20D972E38();
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = v0[56];
    v205 = v0[57];
    v57 = v0[52];
    v58 = v0[53];
    v59 = v0[40];
    v60 = v0[41];
    v61 = v0[39];
    (*(v59 + 16))(v60, v54 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * (v55 - 1), v61);

    MEMORY[0x20F320DF0](v62);
    (*(v59 + 8))(v60, v61);
    (*(v58 + 32))(v205, v56, v57);
  }

  else
  {
    v63 = v0[60];
    v64 = v0[57];
    v65 = v0[52];
    v66 = v0[53];

    (*(v66 + 16))(v64, v63, v65);
  }

  sub_20D972DA8();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D48();
  sub_20D82CEEC(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v181 = v0[76];
  v184 = v0[78];
  v68 = v0[54];
  v69 = v0[52];
  v163 = v0[55];
  v165 = v0[49];
  v167 = v0[47];
  v190 = v0[44];
  v193 = v0[43];
  v70 = v0[38];
  v159 = v70;
  v161 = v0[37];
  v71 = v0[35];
  v72 = v0[36];
  v73 = v0[34];
  v178 = v0[30];
  v187 = v0[29];
  v206 = v0[28];
  v202 = v0[27];
  v169 = v0[26];
  v171 = v0[25];
  v198 = v0[53];
  v74 = *(v198 + 32);
  v74(v72);
  (v74)(v72 + *(v73 + 48), v68, v69);
  sub_20D7EB7E8(v72, v71, &unk_27C83C750, &unk_20D978DD0);
  v75 = *(v73 + 48);
  (v74)(v70, v71, v69);
  v76 = *(v198 + 8);
  v76(v71 + v75, v69);
  sub_20D829514(v72, v71);
  v157 = v74;
  (v74)(v159 + *(v161 + 36), v71 + *(v73 + 48), v69);
  v155 = v76;
  v76(v71, v69);
  v174(v165, v210 + v213, v167);
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v159, v165, v163, v184 + *(v181 + 52));
  (*(v169 + 56))(v178, 1, 1, v171);
  (*(v190 + 56))(v187, 1, 1, v193);
  sub_20D971E98();
  sub_20D972E48();
  sub_20D972748();
  (*(v169 + 8))(v202, v171);
  result = (*(v198 + 48))(v206, 1, v69);
  if (result == 1)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v188 = v0[105];
  v199 = v0[79];
  v77 = v0[78];
  v194 = v0[76];
  v176 = v0[74];
  v175 = v0[72];
  v78 = v0[59];
  v185 = v0[60];
  v79 = v0[57];
  v80 = v0[52];
  v179 = v0[46];
  v81 = v0[44];
  v172 = v0[43];
  v83 = v0[32];
  v82 = v0[33];
  v84 = v0[31];
  v182 = v0[28];
  v85 = v0[24];

  (*(v83 + 8))(v82, v84);
  v155(v79, v80);
  v155(v78, v80);
  v188(v176, v175);
  (*(v81 + 8))(v179, v172);
  v155(v185, v80);
  v157(v77 + *(v194 + 56), v182, v80);
  *(v77 + v214[15]) = v208;
  sub_20D81E5E0(v77, v199);
  swift_getKeyPath();
  v86 = swift_task_alloc();
  *(v86 + 16) = v85;
  *(v86 + 24) = v199;
  v0[19] = v85;
  sub_20D972848();

  sub_20D7FEF04(v199);

  v87 = sub_20D9734D8();
  v88 = sub_20D975478();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = v0[95];
    v90 = v0[94];
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v216[0] = v92;
    *v91 = 136315394;
    *(v91 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, v216);
    *(v91 + 12) = 2080;
    *(v91 + 14) = sub_20D7F4DC8(v90, v89, v216);
    _os_log_impl(&dword_20D7C9000, v87, v88, "\t\t%s: monthly done %s", v91, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v92, -1, -1);
    MEMORY[0x20F324260](v91, -1, -1);
  }

  v203 = v0[105];
  v191 = v0[80];
  v195 = v0[102];
  v93 = v0[77];
  v94 = v0[75];
  v95 = v0[72];
  v96 = v0[24];
  swift_getKeyPath();
  v0[20] = v96;
  sub_20D972858();

  v97 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot;
  swift_beginAccess();
  v215 = v97;
  sub_20D7FCF94(v96 + v97, v93);
  v195(v94, *MEMORY[0x277D075D0], v95);
  sub_20D860588(v94, v191);
  v203(v94, v95);
  sub_20D7FEF04(v93);
  swift_getKeyPath();
  v98 = swift_task_alloc();
  *(v98 + 16) = v96;
  *(v98 + 24) = v191;
  v0[21] = v96;
  sub_20D972848();

  sub_20D7FEF04(v191);

  v99 = sub_20D9734D8();
  v100 = sub_20D975478();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = v0[95];
    v102 = v0[94];
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v216[0] = v104;
    *v103 = 136315394;
    *(v103 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, v216);
    *(v103 + 12) = 2080;
    *(v103 + 14) = sub_20D7F4DC8(v102, v101, v216);
    _os_log_impl(&dword_20D7C9000, v99, v100, "\t\t%s: six monthly done %s", v103, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v104, -1, -1);
    MEMORY[0x20F324260](v103, -1, -1);
  }

  v200 = v0[105];
  v197 = v0[102];
  v196 = v0[80];
  v105 = v0[77];
  v106 = v0[75];
  v107 = v0[72];
  v108 = v0[24];
  swift_getKeyPath();
  v0[22] = v108;
  sub_20D972858();

  sub_20D7FCF94(v96 + v215, v105);
  v197(v106, *MEMORY[0x277D075C0], v107);
  sub_20D860588(v106, v196);
  v200(v106, v107);
  sub_20D7FEF04(v105);
  swift_getKeyPath();
  v109 = swift_task_alloc();
  *(v109 + 16) = v108;
  *(v109 + 24) = v196;
  v0[23] = v108;
  sub_20D972848();

  sub_20D7FEF04(v196);
  v110 = sub_20D973458();
  sub_20D973498();
  v111 = sub_20D975488();
  v112 = sub_20D9754E8();
  v113 = MEMORY[0x277D85B00];
  if (v112)
  {
    v114 = v0[67];
    v115 = v0[65];
    v116 = v0[64];

    sub_20D9734C8();

    if ((*(v115 + 88))(v114, v116) == *v113)
    {
      v117 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[65] + 8))(v0[67], v0[64]);
      v117 = "";
    }

    v118 = swift_slowAlloc();
    *v118 = 0;
    v119 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v110, v111, v119, "Rollup: Five-Years Daily Snapshot", v117, v118, 2u);
    MEMORY[0x20F324260](v118, -1, -1);
  }

  v120 = v0[84];
  v121 = v0[81];

  v209(v120, v121);

  v122 = sub_20D9734D8();
  v123 = sub_20D975478();

  if (os_log_type_enabled(v122, v123))
  {
    v124 = v0[95];
    v125 = v0[94];
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v216[0] = v127;
    *v126 = 136315394;
    *(v126 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, v216);
    *(v126 + 12) = 2080;
    *(v126 + 14) = sub_20D7F4DC8(v125, v124, v216);
    _os_log_impl(&dword_20D7C9000, v122, v123, "\t\t%s: yearly done %s", v126, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v127, -1, -1);
    MEMORY[0x20F324260](v126, -1, -1);
  }

  v128 = sub_20D9734D8();
  v129 = sub_20D975478();

  v130 = os_log_type_enabled(v128, v129);
  v131 = v0[95];
  if (v130)
  {
    v132 = v0[94];
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v216[0] = v134;
    *v133 = 136315394;
    *(v133 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, v216);
    *(v133 + 12) = 2080;
    v135 = sub_20D7F4DC8(v132, v131, v216);

    *(v133 + 14) = v135;
    _os_log_impl(&dword_20D7C9000, v128, v129, "%s: end %s", v133, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v134, -1, -1);
    MEMORY[0x20F324260](v133, -1, -1);
  }

  else
  {
  }

  v136 = sub_20D973458();
  v137 = sub_20D9754A8();
  if (sub_20D9754E8())
  {
    v138 = swift_slowAlloc();
    *v138 = 0;
    v139 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v136, v137, v139, "monthly, 6-month, yearly snapshots done", "", v138, 2u);
    MEMORY[0x20F324260](v138, -1, -1);
  }

  v140 = sub_20D973458();
  sub_20D973498();
  v141 = sub_20D975488();
  if (sub_20D9754E8())
  {
    v142 = v0[66];
    v143 = v0[65];
    v144 = v0[64];

    sub_20D9734C8();

    if ((*(v143 + 88))(v142, v144) == *v113)
    {
      v145 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[65] + 8))(v0[66], v0[64]);
      v145 = "";
    }

    v146 = swift_slowAlloc();
    *v146 = 0;
    v147 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v140, v141, v147, "HistoricalUsageSnapshotManager.getDetailsChartSnapshots", v145, v146, 2u);
    MEMORY[0x20F324260](v146, -1, -1);
  }

  v148 = v0[91];
  v149 = v0[90];
  v150 = v0[89];
  v151 = v0[88];
  v152 = v0[83];
  v153 = v0[81];

  v209(v152, v153);
  v209(v151, v153);
  (*(v149 + 8))(v148, v150);

  v154 = v0[1];

  return v154();
}

uint64_t sub_20D824A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v7 + 1105) = a7;
  *(v7 + 112) = a4;
  *(v7 + 120) = a6;
  *(v7 + 1104) = a5;
  *(v7 + 96) = a2;
  *(v7 + 104) = a3;
  *(v7 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  *(v7 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  *(v7 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  *(v7 + 144) = swift_task_alloc();
  v8 = sub_20D971EA8();
  *(v7 + 152) = v8;
  *(v7 + 160) = *(v8 - 8);
  *(v7 + 168) = swift_task_alloc();
  v9 = sub_20D972E88();
  *(v7 + 176) = v9;
  *(v7 + 184) = *(v9 - 8);
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  *(v7 + 232) = swift_task_alloc();
  v10 = sub_20D972C58();
  *(v7 + 240) = v10;
  *(v7 + 248) = *(v10 - 8);
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = type metadata accessor for HistoricalUsageSnapshot(0);
  *(v7 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839560, &qword_20D9790B0);
  *(v7 + 288) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839568, &qword_20D9790B8);
  *(v7 + 296) = v11;
  *(v7 + 304) = *(v11 - 8);
  *(v7 + 312) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839570, &qword_20D9790C0);
  *(v7 + 320) = v12;
  *(v7 + 328) = *(v12 - 8);
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839578, &qword_20D9790C8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839580, &qword_20D9790D0);
  *(v7 + 376) = v13;
  *(v7 + 384) = *(v13 - 8);
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839588, &qword_20D9790D8);
  *(v7 + 408) = v14;
  *(v7 + 416) = *(v14 - 8);
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();
  v15 = sub_20D974D58();
  *(v7 + 440) = v15;
  *(v7 + 448) = *(v15 - 8);
  *(v7 + 456) = swift_task_alloc();
  sub_20D971D98();
  *(v7 + 464) = swift_task_alloc();
  v16 = sub_20D974D28();
  *(v7 + 472) = v16;
  *(v7 + 480) = *(v16 - 8);
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = swift_task_alloc();
  *(v7 + 512) = swift_task_alloc();
  v17 = sub_20D974D48();
  *(v7 + 520) = v17;
  *(v7 + 528) = *(v17 - 8);
  *(v7 + 536) = swift_task_alloc();
  *(v7 + 544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  *(v7 + 552) = swift_task_alloc();
  v18 = sub_20D972698();
  *(v7 + 560) = v18;
  *(v7 + 568) = *(v18 - 8);
  *(v7 + 576) = swift_task_alloc();
  v19 = sub_20D9727B8();
  *(v7 + 584) = v19;
  *(v7 + 592) = *(v19 - 8);
  *(v7 + 600) = swift_task_alloc();
  v20 = sub_20D972628();
  *(v7 + 608) = v20;
  *(v7 + 616) = *(v20 - 8);
  *(v7 + 624) = swift_task_alloc();
  *(v7 + 632) = swift_task_alloc();
  *(v7 + 640) = swift_task_alloc();
  *(v7 + 648) = swift_task_alloc();
  *(v7 + 656) = swift_task_alloc();
  *(v7 + 664) = swift_task_alloc();
  *(v7 + 672) = swift_task_alloc();
  *(v7 + 680) = swift_task_alloc();
  *(v7 + 688) = swift_task_alloc();
  *(v7 + 696) = swift_task_alloc();
  *(v7 + 704) = swift_task_alloc();
  v21 = sub_20D972AF8();
  *(v7 + 712) = v21;
  *(v7 + 720) = *(v21 - 8);
  *(v7 + 728) = swift_task_alloc();
  *(v7 + 736) = swift_task_alloc();
  *(v7 + 744) = swift_task_alloc();
  *(v7 + 752) = swift_task_alloc();
  v22 = sub_20D974CF8();
  *(v7 + 760) = v22;
  *(v7 + 768) = *(v22 - 8);
  *(v7 + 776) = swift_task_alloc();
  *(v7 + 784) = swift_task_alloc();
  *(v7 + 792) = swift_task_alloc();
  *(v7 + 800) = swift_task_alloc();
  v23 = sub_20D972838();
  *(v7 + 808) = v23;
  *(v7 + 816) = *(v23 - 8);
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  v24 = sub_20D9726F8();
  *(v7 + 840) = v24;
  *(v7 + 848) = *(v24 - 8);
  *(v7 + 856) = swift_task_alloc();
  v25 = sub_20D9727D8();
  *(v7 + 864) = v25;
  *(v7 + 872) = *(v25 - 8);
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D8254EC, 0, 0);
}

uint64_t sub_20D8254EC()
{
  v172 = v0;
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  *(v0 + 896) = __swift_project_value_buffer(v1, qword_28112AB90);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1104);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v171[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v171);
    *(v5 + 12) = 2080;
    if (v4)
    {
      v7 = 0x7972616D6D7573;
    }

    else
    {
      v7 = 0x64656C6961746564;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v9 = sub_20D7F4DC8(v7, v8, v171);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s START %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v10 = *(v0 + 856);
  v11 = *(v0 + 848);
  v12 = *(v0 + 840);
  v13 = *(v0 + 832);
  v14 = *(v0 + 816);
  v15 = *(v0 + 752);
  v16 = *(v0 + 720);
  v17 = *(v0 + 712);
  v159 = *(v0 + 112);
  v160 = *(v0 + 808);
  v166 = *(v0 + 104);
  (*(v11 + 104))(v10, *MEMORY[0x277CC9830], v12);
  sub_20D972708();
  (*(v11 + 8))(v10, v12);
  v18 = *(v14 + 16);
  *(v0 + 904) = v18;
  *(v0 + 912) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v13, v159, v160);
  sub_20D972798();
  v19 = *(v16 + 16);
  *(v0 + 920) = v19;
  *(v0 + 928) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v15, v166, v17);
  v20 = (*(v16 + 88))(v15, v17);
  v21 = MEMORY[0x277CC58A8];
  v22 = MEMORY[0x277CC58A8];
  if (v20 == *MEMORY[0x277D075B0] || (v22 = MEMORY[0x277CC58A0], v20 == *MEMORY[0x277D075B8]) || v20 == *MEMORY[0x277D075C8])
  {
LABEL_12:
    v23 = *(v0 + 800);
    v24 = *(v0 + 792);
    v25 = *(v0 + 768);
    v26 = *(v0 + 760);
    v27 = *(v0 + 1104);
    v28 = *(v25 + 104);
    v28(v23, *v22, v26);
    v158 = *(v25 + 16);
    v158(v24, v23, v26);
    sub_20D9725C8();
    v147 = v28;
    if (v27 == 1)
    {
      v167 = *(v0 + 792);
      v29 = *(v0 + 768);
      v161 = *(v0 + 760);
      v30 = *(v0 + 696);
      v31 = *(v0 + 680);
      v32 = *(v0 + 616);
      v33 = *(v0 + 608);
      v34 = *(v0 + 600);
      v35 = *(v0 + 592);
      v36 = *(v0 + 584);
      (*(v35 + 104))(v34, *MEMORY[0x277CC9968], v36);
      sub_20D9730D8();
      (*(v35 + 8))(v34, v36);
      sub_20D973098();
      v37 = *(v32 + 8);
      v37(v31, v33);
      v37(v30, v33);
      v38 = *(v29 + 8);
      v38(v167, v161);
    }

    else
    {
      v39 = *(v0 + 784);
      v40 = *(v0 + 768);
      v41 = *(v0 + 760);
      v28(v39, *v21, v41);
      v42 = sub_20D974CD8();
      v43 = *(v40 + 8);
      v44 = v43(v39, v41);
      v168 = v43;
      if (v42)
      {
        v48 = 3;
        if ((*(v0 + 1105) & 1) == 0)
        {
          v48 = *(v0 + 120);
        }

        if (__OFSUB__(0, v48))
        {
          __break(1u);
          return MEMORY[0x282116638](v44, v45, v46, v47);
        }

        v153 = *(v0 + 760);
        v155 = *(v0 + 792);
        v49 = *(v0 + 696);
        v50 = *(v0 + 680);
        v51 = *(v0 + 616);
        v52 = *(v0 + 608);
        v53 = *(v0 + 600);
        v54 = *(v0 + 592);
        v55 = *(v0 + 584);
        (*(v54 + 104))(v53, *MEMORY[0x277CC9998], v55);
        sub_20D9730D8();
        (*(v54 + 8))(v53, v55);
        sub_20D972FF8();
        v56 = *(v51 + 8);
        v56(v50, v52);
        v57 = v49;
        v37 = v56;
        v56(v57, v52);
        v38 = v168;
        v168(v155, v153);
      }

      else
      {
        v162 = *(v0 + 792);
        v58 = *(v0 + 696);
        v156 = *(v0 + 760);
        v59 = *(v0 + 680);
        v60 = *(v0 + 616);
        v61 = *(v0 + 608);
        v62 = *(v0 + 600);
        v63 = *(v0 + 592);
        v64 = *(v0 + 584);
        (*(v63 + 104))(v62, *MEMORY[0x277CC9988], v64);
        sub_20D9730D8();
        (*(v63 + 8))(v62, v64);
        sub_20D972FC8();
        v37 = *(v60 + 8);
        v65 = v59;
        v38 = v168;
        v37(v65, v61);
        v37(v58, v61);
        v168(v162, v156);
      }
    }

    *(v0 + 944) = v37;
    *(v0 + 936) = v38;
    v66 = *(v0 + 704);
    v67 = *(v0 + 688);
    v68 = *(v0 + 672);
    v69 = *(v0 + 616);
    v70 = *(v0 + 608);
    v71 = *(v69 + 32);
    *(v0 + 952) = v71;
    *(v0 + 960) = (v69 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v71(v66, v67, v70);
    v72 = *(v69 + 16);
    *(v0 + 968) = v72;
    *(v0 + 976) = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v72(v68, v66, v70);
    v73 = sub_20D9734D8();
    v74 = sub_20D975478();
    v169 = v38;
    v163 = v72;
    if (os_log_type_enabled(v73, v74))
    {
      v75 = *(v0 + 672);
      v151 = *(v0 + 608);
      v76 = *(v0 + 1104);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v171[0] = v78;
      *v77 = 136315906;
      *(v77 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v171);
      *(v77 + 12) = 2080;
      if (v76)
      {
        v79 = 0x5952414D4D5553;
      }

      else
      {
        v79 = 0x44454C4941544544;
      }

      if (v76)
      {
        v80 = 0xE700000000000000;
      }

      else
      {
        v80 = 0xE800000000000000;
      }

      v81 = sub_20D7F4DC8(v79, v80, v171);

      *(v77 + 14) = v81;
      *(v77 + 22) = 2080;
      v82 = sub_20D9725F8();
      v84 = v83;
      v37(v75, v151);
      v85 = sub_20D7F4DC8(v82, v84, v171);

      *(v77 + 24) = v85;
      *(v77 + 32) = 2048;
      swift_beginAccess();
      *(v77 + 34) = sub_20D974CE8();
      _os_log_impl(&dword_20D7C9000, v73, v74, "%s starting %s Query for %s with %lu granularity", v77, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v78, -1, -1);
      MEMORY[0x20F324260](v77, -1, -1);
    }

    else
    {
      v86 = *(v0 + 672);
      v87 = *(v0 + 608);

      v37(v86, v87);
    }

    v88 = *(v0 + 568);
    v89 = *(v0 + 560);
    v90 = *(v0 + 552);
    sub_20D972C68();
    sub_20D972638();

    if ((*(v88 + 48))(v90, 1, v89) == 1)
    {
      sub_20D7E3944(*(v0 + 552), &qword_27C8389F8, &qword_20D978460);

      v91 = sub_20D9734D8();
      v92 = sub_20D975458();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v171[0] = v94;
        *v93 = 136315394;
        *(v93 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v171);
        *(v93 + 12) = 2080;
        v95 = sub_20D972C68();
        v97 = sub_20D7F4DC8(v95, v96, v171);

        *(v93 + 14) = v97;
        _os_log_impl(&dword_20D7C9000, v91, v92, "%s invalid energySite.identifier: %s", v93, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v94, -1, -1);
        MEMORY[0x20F324260](v93, -1, -1);
      }

      v98 = *(v0 + 888);
      v99 = *(v0 + 872);
      v100 = *(v0 + 864);
      v101 = *(v0 + 800);
      v102 = *(v0 + 760);
      v103 = *(v0 + 704);
      v104 = *(v0 + 608);
      v105 = *(v0 + 104);
      v106 = *(v0 + 88);
      LOBYTE(v171[0]) = 5;
      static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v171, v105, v106);
      v37(v103, v104);
      (*(v99 + 8))(v98, v100);
      v169(v101, v102);
      goto LABEL_37;
    }

    v149 = *(v0 + 800);
    v144 = *(v0 + 784);
    v146 = *(v0 + 776);
    v154 = *(v0 + 704);
    v148 = *(v0 + 680);
    v150 = *(v0 + 760);
    v152 = *(v0 + 608);
    v109 = *(v0 + 504);
    v111 = *(v0 + 488);
    v110 = *(v0 + 496);
    v112 = *(v0 + 472);
    v113 = *(v0 + 480);
    v143 = *(v0 + 456);
    v164 = *(v0 + 448);
    v157 = *(v0 + 440);
    v145 = *(v0 + 1104);
    (*(*(v0 + 568) + 32))(*(v0 + 576), *(v0 + 552), *(v0 + 560));
    sub_20D974D08();
    sub_20D974D18();
    v114 = MEMORY[0x277CC58C8];
    sub_20D82CEEC(&qword_27C839590, MEMORY[0x277CC58C8], MEMORY[0x277CC58D0]);
    sub_20D975208();
    sub_20D82CEEC(&qword_27C839598, v114, MEMORY[0x277CC58E0]);
    sub_20D9758B8();
    (*(v113 + 16))(v111, v110, v112);
    sub_20D82CEEC(&qword_27C8395A0, v114, MEMORY[0x277CC58D8]);
    sub_20D9755B8();
    v115 = *(v113 + 8);
    v115(v110, v112);
    v115(v109, v112);
    v163(v148, v154, v152);
    sub_20D9725C8();
    sub_20D971D58();
    swift_beginAccess();
    v158(v144, v149, v150);
    v142 = *(v164 + 104);
    v142(v143, *MEMORY[0x277CC58F0], v157);
    sub_20D974D38();
    *(v0 + 72) = 0;
    sub_20D9758B8();
    v163(v148, v154, v152);
    sub_20D9725C8();
    sub_20D971D58();
    v158(v144, v149, v150);
    v142(v143, *MEMORY[0x277CC58E8], v157);
    sub_20D974D38();
    v158(v146, v149, v150);
    if (v145 == 1)
    {
      v169(*(v0 + 776), *(v0 + 760));
      v116 = 0;
    }

    else
    {
      v117 = *(v0 + 784);
      v118 = *(v0 + 776);
      v119 = *(v0 + 760);
      v147(v117, *MEMORY[0x277CC58A8], v119);
      v120 = sub_20D974CD8();
      v169(v117, v119);
      v169(v118, v119);
      v116 = v120 ^ 1;
    }

    v121 = v116 & 1;
    *(v0 + 1106) = v116 & 1;
    *(v0 + 80) = MEMORY[0x277D84FA0];
    *(v0 + 984) = sub_20D974E48();
    *(v0 + 992) = sub_20D974E38();
    v122 = swift_task_alloc();
    *(v0 + 1000) = v122;
    *v122 = v0;
    v122[1] = sub_20D8269D0;
    v46 = *(v0 + 576);
    v45 = *(v0 + 544);
    v44 = *(v0 + 432);
    v47 = v121;

    return MEMORY[0x282116638](v44, v45, v46, v47);
  }

  if (v20 == *MEMORY[0x277D075D0])
  {
    v22 = MEMORY[0x277CC58B0];
    goto LABEL_12;
  }

  if (v20 == *MEMORY[0x277D075C0])
  {
    v22 = MEMORY[0x277CC58C0];
    goto LABEL_12;
  }

  v19(*(v0 + 744), *(v0 + 104), *(v0 + 712));
  v123 = sub_20D9734D8();
  v124 = sub_20D975458();
  v125 = os_log_type_enabled(v123, v124);
  v126 = *(v0 + 744);
  v127 = *(v0 + 720);
  v128 = *(v0 + 712);
  if (v125)
  {
    v165 = *(v0 + 712);
    v129 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v171[0] = v170;
    *v129 = 136315394;
    *(v129 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v171);
    *(v129 + 12) = 2080;
    v130 = sub_20D972AE8();
    v132 = v131;
    v133 = *(v127 + 8);
    v133(v126, v165);
    v134 = sub_20D7F4DC8(v130, v132, v171);

    *(v129 + 14) = v134;
    _os_log_impl(&dword_20D7C9000, v123, v124, "%s UNEXPECTED timeInterval: %s", v129, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v170, -1, -1);
    MEMORY[0x20F324260](v129, -1, -1);
  }

  else
  {

    v133 = *(v127 + 8);
    v133(v126, v128);
  }

  v135 = *(v0 + 888);
  v136 = *(v0 + 872);
  v137 = *(v0 + 864);
  v138 = *(v0 + 752);
  v139 = *(v0 + 712);
  v140 = *(v0 + 104);
  v141 = *(v0 + 88);
  LOBYTE(v171[0]) = 5;
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v171, v140, v141);
  (*(v136 + 8))(v135, v137);
  v133(v138, v139);
LABEL_37:

  v107 = *(v0 + 8);

  return v107();
}

uint64_t sub_20D8269D0()
{
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v2 = sub_20D828388;
  }

  else
  {
    v2 = sub_20D826B00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D826B00()
{
  sub_20D975328();
  v0[127] = MEMORY[0x277D84F90];
  v1 = swift_task_alloc();
  v0[128] = v1;
  *v1 = v0;
  v1[1] = sub_20D826BBC;
  v2 = v0[46];
  v3 = v0[47];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_20D826BBC()
{

  return MEMORY[0x2822009F8](sub_20D826CB8, 0, 0);
}

uint64_t sub_20D826CB8()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v3 + 48);
  *(v0 + 1032) = v4;
  *(v0 + 1040) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 400);
    v6 = *(v0 + 376);
    v7 = *(v0 + 384);
    v8 = *(v7 + 8);
    *(v0 + 1048) = v8;
    *(v0 + 1056) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    *(v0 + 1064) = sub_20D974E38();
    v9 = swift_task_alloc();
    *(v0 + 1072) = v9;
    *v9 = v0;
    v9[1] = sub_20D827038;
    v10 = *(v0 + 1106);
    v11 = *(v0 + 576);
    v12 = *(v0 + 536);
    v13 = *(v0 + 424);

    return MEMORY[0x282116638](v13, v12, v11, v10);
  }

  else
  {
    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    v38 = *(v3 + 32);
    v38(v14, v1, v2);
    (*(v3 + 16))(v15, v14, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v0 + 1016);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_20D8D43E0(0, *(v17 + 2) + 1, 1, *(v0 + 1016));
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_20D8D43E0((v18 > 1), v19 + 1, 1, v17);
    }

    v20 = *(v0 + 344);
    v22 = *(v0 + 320);
    v21 = *(v0 + 328);
    v23 = *(v0 + 296);
    v24 = *(v0 + 304);
    v25 = *(v0 + 288);
    *(v17 + 2) = v19 + 1;
    v38(&v17[((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19], v20, v22);
    sub_20D974DF8();
    v26 = (*(v24 + 48))(v25, 1, v23);
    v27 = *(v0 + 352);
    v28 = *(v0 + 320);
    v29 = *(v0 + 328);
    if (v26 == 1)
    {
      v30 = *(v0 + 288);
      (*(v29 + 8))(*(v0 + 352), *(v0 + 320));
      sub_20D7E3944(v30, &qword_27C839560, &qword_20D9790B0);
    }

    else
    {
      v32 = *(v0 + 304);
      v31 = *(v0 + 312);
      v33 = *(v0 + 296);
      (*(v32 + 32))(v31, *(v0 + 288), v33);
      sub_20D828F78(v0 + 80);
      (*(v32 + 8))(v31, v33);
      (*(v29 + 8))(v27, v28);
    }

    *(v0 + 1016) = v17;
    v34 = swift_task_alloc();
    *(v0 + 1024) = v34;
    *v34 = v0;
    v34[1] = sub_20D826BBC;
    v35 = *(v0 + 368);
    v36 = *(v0 + 376);

    return MEMORY[0x2822003E8](v35, 0, 0, v36);
  }
}

uint64_t sub_20D827038()
{
  *(*v1 + 1080) = v0;

  if (v0)
  {

    v2 = sub_20D828974;
  }

  else
  {
    v2 = sub_20D827184;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20D827184()
{
  sub_20D975328();
  v0[136] = MEMORY[0x277D84F90];
  v1 = swift_task_alloc();
  v0[137] = v1;
  *v1 = v0;
  v1[1] = sub_20D827248;
  v2 = v0[47];
  v3 = v0[45];

  return MEMORY[0x2822003E8](v3, 0, 0, v2);
}

uint64_t sub_20D827248()
{

  return MEMORY[0x2822009F8](sub_20D827344, 0, 0);
}

uint64_t sub_20D827344()
{
  v147 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 320);
  if ((*(v0 + 1032))(v1, 1, v2) != 1)
  {
    v10 = *(*(v0 + 328) + 32);
    v10(*(v0 + 336), v1, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v0 + 1088);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_20D8D43E0(0, *(v12 + 2) + 1, 1, *(v0 + 1088));
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_20D8D43E0((v13 > 1), v14 + 1, 1, v12);
    }

    v16 = *(v0 + 328);
    v15 = *(v0 + 336);
    v17 = *(v0 + 320);
    *(v12 + 2) = v14 + 1;
    v10(&v12[((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14], v15, v17);
    *(v0 + 1088) = v12;
    v18 = swift_task_alloc();
    *(v0 + 1096) = v18;
    *v18 = v0;
    v18[1] = sub_20D827248;
    v19 = *(v0 + 376);
    v20 = *(v0 + 360);
    v21 = 0;
    v22 = 0;

    return MEMORY[0x2822003E8](v20, v21, v22, v19);
  }

  (*(v0 + 1048))(*(v0 + 392), *(v0 + 376));

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1088);
  v7 = *(v0 + 1016);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v146[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v146);
    *(v8 + 12) = 2048;
    *(v8 + 14) = *(v7 + 16);
    *(v8 + 22) = 2048;
    *(v8 + 24) = *(v6 + 16);

    _os_log_impl(&dword_20D7C9000, v3, v4, "%s query returned %ld import records & %ld export records", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  else
  {
  }

  sub_20D82AC7C(*(v0 + 800), *(v0 + 1016), *(v0 + 1088), *(v0 + 888));
  v24 = v23;

  v25 = sub_20D9734D8();
  v26 = sub_20D975478();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v146[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v146);
    *(v27 + 12) = 2048;
    *(v27 + 14) = *(v24 + 16);

    _os_log_impl(&dword_20D7C9000, v25, v26, "%s converted results to %ld usages & now return snapshot.", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x20F324260](v28, -1, -1);
    MEMORY[0x20F324260](v27, -1, -1);
  }

  else
  {
  }

  v132 = *(v0 + 920);
  v29 = *(v0 + 904);
  v30 = *(v0 + 824);
  v31 = *(v0 + 808);
  v119 = *(v0 + 736);
  v138 = *(v0 + 728);
  v142 = *(v0 + 832);
  v113 = *(v0 + 968);
  v116 = *(v0 + 712);
  v32 = *(v0 + 704);
  v33 = *(v0 + 656);
  v34 = *(v0 + 608);
  v144 = *(v0 + 280);
  v130 = *(v0 + 272);
  v105 = *(v0 + 112);
  v108 = *(v0 + 104);
  v128 = sub_20D972C68();
  v110 = v35;
  v113(v33, v32, v34);
  v29(v30, v105, v31);
  v132(v119, v108, v116);
  v36 = sub_20D972AC8();
  v122 = *(v0 + 80);
  *v144 = v128;
  v144[1] = v110;
  *(v144 + v130[16]) = 6;
  *(v144 + v130[11]) = v36 & 1;
  v132(v138, v119, v116);
  v29(v142, v30, v31);
  v37 = v130[12];

  sub_20D972E28();
  v38 = sub_20D972E38();
  if (*(v38 + 16))
  {
    v139 = *(v0 + 952);
    v39 = *(v0 + 648);
    v40 = *(v0 + 640);
    v41 = *(v0 + 608);
    v42 = *(v0 + 264);
    v43 = v37;
    v44 = *(v0 + 240);
    v45 = *(v0 + 248);
    (*(v45 + 16))(v42, v38 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v44);

    MEMORY[0x20F320DF0](v46);
    (*(v45 + 8))(v42, v44);
    v37 = v43;
    v139(v39, v40, v41);
  }

  else
  {
    v47 = *(v0 + 968);
    v48 = *(v0 + 656);
    v49 = *(v0 + 648);
    v50 = *(v0 + 608);

    v47(v49, v48, v50);
  }

  sub_20D972DA8();
  v140 = v37;
  v51 = sub_20D972E38();
  v52 = *(v51 + 16);
  if (v52)
  {
    v135 = *(v0 + 952);
    v53 = *(v0 + 632);
    v54 = *(v0 + 624);
    v55 = *(v0 + 608);
    v57 = *(v0 + 248);
    v56 = *(v0 + 256);
    v58 = *(v0 + 240);
    (*(v57 + 16))(v56, v51 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * (v52 - 1), v58);

    MEMORY[0x20F320DF0](v59);
    (*(v57 + 8))(v56, v58);
    v135(v53, v54, v55);
  }

  else
  {
    v60 = *(v0 + 968);
    v61 = *(v0 + 656);
    v62 = *(v0 + 632);
    v63 = *(v0 + 608);

    v60(v62, v61, v63);
  }

  sub_20D972DA8();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D48();
  sub_20D82CEEC(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v20 = sub_20D974FC8();
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v64 = *(v0 + 952);
  v143 = *(v0 + 872);
  v123 = *(v0 + 864);
  v125 = *(v0 + 816);
  v127 = *(v0 + 808);
  v99 = *(v0 + 944);
  v101 = *(v0 + 680);
  v65 = *(v0 + 664);
  v133 = *(v0 + 880);
  v136 = *(v0 + 616);
  v66 = *(v0 + 608);
  v117 = *(v0 + 280);
  v111 = *(v0 + 272);
  v67 = *(v0 + 232);
  v98 = *(v0 + 224);
  v69 = *(v0 + 208);
  v68 = *(v0 + 216);
  v70 = *(v0 + 200);
  v106 = *(v0 + 192);
  v96 = *(v0 + 184);
  v103 = *(v0 + 176);
  v114 = *(v0 + 144);
  v120 = *(v0 + 136);
  v131 = *(v0 + 128);
  v64(v68);
  (v64)(v68 + *(v70 + 48), v65, v66);
  sub_20D7EB7E8(v68, v69, &unk_27C83C750, &unk_20D978DD0);
  v71 = *(v70 + 48);
  (v64)(v67, v69, v66);
  v99(v69 + v71, v66);
  sub_20D829514(v68, v69);
  (v64)(v67 + *(v98 + 36), v69 + *(v70 + 48), v66);
  v99(v69, v66);
  (*(v96 + 16))(v106, v144 + v140, v103);
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v67, v106, v101, v117 + *(v111 + 52));
  (*(v143 + 56))(v114, 1, 1, v123);
  (*(v125 + 56))(v120, 1, 1, v127);
  sub_20D971E98();
  sub_20D972E48();
  sub_20D972748();
  v145 = *(v143 + 8);
  v145(v133, v123);
  v20 = (*(v136 + 48))(v131, 1, v66);
  if (v20 == 1)
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x2822003E8](v20, v21, v22, v19);
  }

  v129 = *(v0 + 952);
  v72 = *(v0 + 944);
  v141 = *(v0 + 936);
  v124 = *(v0 + 864);
  v126 = *(v0 + 888);
  v73 = *(v0 + 816);
  v93 = *(v0 + 808);
  v94 = *(v0 + 824);
  v134 = *(v0 + 760);
  v137 = *(v0 + 800);
  v74 = *(v0 + 720);
  v87 = *(v0 + 712);
  v88 = *(v0 + 736);
  v121 = *(v0 + 704);
  v91 = *(v0 + 656);
  v85 = *(v0 + 632);
  v86 = *(v0 + 648);
  v75 = *(v0 + 608);
  v104 = *(v0 + 560);
  v107 = *(v0 + 576);
  v100 = *(v0 + 544);
  v102 = *(v0 + 568);
  v76 = *(v0 + 528);
  v95 = *(v0 + 520);
  v97 = *(v0 + 536);
  v92 = *(v0 + 432);
  v77 = *(v0 + 416);
  v89 = *(v0 + 408);
  v90 = *(v0 + 424);
  v112 = *(v0 + 272);
  v115 = *(v0 + 280);
  v79 = *(v0 + 160);
  v78 = *(v0 + 168);
  v80 = *(v0 + 152);
  v109 = *(v0 + 128);
  v118 = *(v0 + 88);

  (*(v79 + 8))(v78, v80);
  v72(v85, v75);
  v72(v86, v75);
  (*(v74 + 8))(v88, v87);
  (*(v73 + 8))(v94, v93);
  v72(v91, v75);
  v81 = *(v77 + 8);
  v81(v90, v89);
  v81(v92, v89);
  v82 = *(v76 + 8);
  v82(v97, v95);
  v82(v100, v95);
  (*(v102 + 8))(v107, v104);
  v72(v121, v75);
  v145(v126, v124);
  v129(v115 + *(v112 + 56), v109, v75);
  *(v115 + *(v112 + 60)) = v122;
  sub_20D81E5E0(v115, v118);
  v141(v137, v134);

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_20D828388()
{
  v37 = v0;
  v1 = v0[126];

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36[0] = v7;
    *v5 = 136315650;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v36);
    *(v5 + 12) = 2080;
    v8 = sub_20D972C68();
    v10 = sub_20D7F4DC8(v8, v9, v36);

    *(v5 + 14) = v10;
    *(v5 + 22) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v12;
    *v6 = v12;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s InsightRecords fetch failed for %s:%@", v5, 0x20u);
    sub_20D7E3944(v6, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v13 = v1;
  v14 = v0[109];
  v29 = v0[118];
  v30 = v0[108];
  v33 = v0[100];
  v34 = v0[117];
  v31 = v0[111];
  v32 = v0[95];
  v27 = v0[76];
  v28 = v0[88];
  v15 = v0[72];
  v16 = v0[71];
  v17 = v0[70];
  v18 = v0[68];
  v19 = v0[67];
  v20 = v0[66];
  v21 = v0[65];
  v22 = v0[13];
  v23 = v0[11];
  v35 = 5;
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v35, v22, v23);

  v24 = *(v20 + 8);
  v24(v19, v21);
  v24(v18, v21);
  (*(v16 + 8))(v15, v17);
  v29(v28, v27);
  (*(v14 + 8))(v31, v30);
  v34(v33, v32);

  v25 = v0[1];

  return v25();
}

uint64_t sub_20D828974()
{
  v37 = v0;
  (*(v0[52] + 8))(v0[54], v0[51]);
  v1 = v0[135];

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36[0] = v7;
    *v5 = 136315650;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v36);
    *(v5 + 12) = 2080;
    v8 = sub_20D972C68();
    v10 = sub_20D7F4DC8(v8, v9, v36);

    *(v5 + 14) = v10;
    *(v5 + 22) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v12;
    *v6 = v12;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s InsightRecords fetch failed for %s:%@", v5, 0x20u);
    sub_20D7E3944(v6, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v13 = v1;
  v14 = v0[109];
  v29 = v0[118];
  v30 = v0[108];
  v33 = v0[100];
  v34 = v0[117];
  v31 = v0[111];
  v32 = v0[95];
  v27 = v0[76];
  v28 = v0[88];
  v15 = v0[72];
  v16 = v0[71];
  v17 = v0[70];
  v18 = v0[68];
  v19 = v0[67];
  v20 = v0[66];
  v21 = v0[65];
  v22 = v0[13];
  v23 = v0[11];
  v35 = 5;
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v35, v22, v23);

  v24 = *(v20 + 8);
  v24(v19, v21);
  v24(v18, v21);
  (*(v16 + 8))(v15, v17);
  v29(v28, v27);
  (*(v14 + 8))(v31, v30);
  v34(v33, v32);

  v25 = v0[1];

  return v25();
}

uint64_t sub_20D828F78(uint64_t a1)
{
  v25[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395A8, &qword_20D9790E0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839568, &qword_20D9790B8);
  MEMORY[0x20F322F70]();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 1, v16);
  sub_20D7E3944(v14, &qword_27C8395A8, &qword_20D9790E0);
  if (v18 != 1)
  {
    sub_20D89CFD0(&v27, 0);
  }

  MEMORY[0x20F322F40](v15);
  v19 = v17(v12, 1, v16);
  sub_20D7E3944(v12, &qword_27C8395A8, &qword_20D9790E0);
  if (v19 != 1)
  {
    sub_20D89CFD0(&v28, 1);
  }

  MEMORY[0x20F322F50](v15);
  v20 = v17(v9, 1, v16);
  sub_20D7E3944(v9, &qword_27C8395A8, &qword_20D9790E0);
  if (v20 != 1)
  {
    sub_20D89CFD0(&v29, 2);
  }

  MEMORY[0x20F322F30](v15);
  v21 = v17(v6, 1, v16);
  sub_20D7E3944(v6, &qword_27C8395A8, &qword_20D9790E0);
  if (v21 != 1)
  {
    sub_20D89CFD0(&v30, 3);
  }

  v22 = v26;
  sub_20D974DA8();
  v23 = v17(v22, 1, v16);
  result = sub_20D7E3944(v22, &qword_27C8395A8, &qword_20D9790E0);
  if (v23 != 1)
  {
    return sub_20D89CFD0(&v31, 4);
  }

  return result;
}

uint64_t sub_20D8292B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_20D82935C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20D9757C8() & 1;
  }
}

void sub_20D8293B4()
{
  if ((sub_20D972ED8() & 1) == 0 || (v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]), v1 = sub_20D975078(), v2 = [v0 initWithSuiteName_], v1, !v2) || (v3 = sub_20D975078(), v4 = objc_msgSend(v2, sel_integerForKey_, v3), v2, v3, v4 <= 0))
  {
    sub_20D973118();
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return;
      }

LABEL_10:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_10;
  }
}

uint64_t sub_20D829514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D829618()
{
  result = qword_27C839558;
  if (!qword_27C839558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839558);
  }

  return result;
}

uint64_t sub_20D829674(uint64_t a1)
{
  result = sub_20D972628();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HistoricalUsageSnapshot(319);
    if (v3 <= 0x3F)
    {
      result = sub_20D972898();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of HistoricalUsageSnapshotManager.__allocating_init(siteID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 704) + **(v2 + 704));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20D80F3B0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of HistoricalUsageSnapshotManager.configureForSite(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 736) + **(*v2 + 736));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20D7EB52C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of HistoricalUsageSnapshotManager.configureWeeklyForSite(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 744) + **(*v2 + 744));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20D805810;

  return v8(a1, a2);
}

uint64_t sub_20D829CB0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_20D9757C8() & 1;
  }
}

uint64_t sub_20D829D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839560, &qword_20D9790B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v67 = &v64 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v64 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v64 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395A8, &qword_20D9790E0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v64 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v66 = &v64 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v65 = &v64 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v64 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v64 - v26;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839570, &qword_20D9790C0);
  v70 = a1;
  sub_20D974DF8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839568, &qword_20D9790B8);
  v29 = *(v28 - 8);
  v71 = *(v29 + 48);
  v30 = v71(v15, 1, v28);
  v68 = v5;
  v69 = v29;
  if (v30 == 1)
  {
    sub_20D7E3944(v15, &qword_27C839560, &qword_20D9790B0);
    v31 = MEMORY[0x277D84F98];
  }

  else
  {
    MEMORY[0x20F322F70](v28);
    (*(v29 + 8))(v15, v28);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v27, 1, v32) == 1)
    {
      sub_20D7E3944(v27, &qword_27C8395A8, &qword_20D9790E0);
      v31 = MEMORY[0x277D84F98];
    }

    else
    {
      sub_20D971CB8();
      v35 = v34;
      (*(v33 + 8))(v27, v32);
      v36 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v36;
      sub_20D8D5428(0, isUniquelyReferenced_nonNull_native, v35);
      v31 = v73;
    }

    v5 = v68;
  }

  v38 = v65;
  sub_20D974DF8();
  if (v71(v13, 1, v28) == 1)
  {
    sub_20D7E3944(v13, &qword_27C839560, &qword_20D9790B0);
  }

  else
  {
    MEMORY[0x20F322F40](v28);
    (*(v69 + 8))(v13, v28);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v25, 1, v39) == 1)
    {
      sub_20D7E3944(v25, &qword_27C8395A8, &qword_20D9790E0);
    }

    else
    {
      sub_20D971CB8();
      v42 = v41;
      (*(v40 + 8))(v25, v39);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v31;
      sub_20D8D5428(1, v43, v42);
      v31 = v73;
    }

    v5 = v68;
  }

  sub_20D974DF8();
  if (v71(v10, 1, v28) == 1)
  {
    sub_20D7E3944(v10, &qword_27C839560, &qword_20D9790B0);
  }

  else
  {
    MEMORY[0x20F322F50](v28);
    (*(v69 + 8))(v10, v28);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v38, 1, v44) == 1)
    {
      sub_20D7E3944(v38, &qword_27C8395A8, &qword_20D9790E0);
    }

    else
    {
      sub_20D971CB8();
      v47 = v46;
      (*(v45 + 8))(v38, v44);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v31;
      sub_20D8D5428(2, v48, v47);
      v31 = v73;
    }
  }

  v49 = v69;
  v51 = v66;
  v50 = v67;
  sub_20D974DF8();
  if (v71(v50, 1, v28) == 1)
  {
    sub_20D7E3944(v50, &qword_27C839560, &qword_20D9790B0);
  }

  else
  {
    MEMORY[0x20F322F30](v28);
    (*(v49 + 8))(v50, v28);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_20D7E3944(v51, &qword_27C8395A8, &qword_20D9790E0);
    }

    else
    {
      sub_20D971CB8();
      v55 = v54;
      (*(v53 + 8))(v51, v52);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v31;
      sub_20D8D5428(3, v56, v55);
      v31 = v73;
    }
  }

  sub_20D974DF8();
  if (v71(v5, 1, v28) == 1)
  {
    sub_20D7E3944(v5, &qword_27C839560, &qword_20D9790B0);
  }

  else
  {
    v57 = v64;
    sub_20D974DA8();
    (*(v49 + 8))(v5, v28);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v57, 1, v58) == 1)
    {
      sub_20D7E3944(v57, &qword_27C8395A8, &qword_20D9790E0);
    }

    else
    {
      sub_20D971CB8();
      v61 = v60;
      (*(v59 + 8))(v57, v58);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v31;
      sub_20D8D5428(4, v62, v61);
      return v73;
    }
  }

  return v31;
}

uint64_t sub_20D82A614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B8, &qword_20D9790F0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v45 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395A8, &qword_20D9790E0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839570, &qword_20D9790C0);
  v49 = a1;
  sub_20D974E08();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395C0, &qword_20D9790F8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v10, 1, v19) == 1)
  {
    sub_20D7E3944(v10, &qword_27C8395B8, &qword_20D9790F0);
    v22 = MEMORY[0x277D84F98];
  }

  else
  {
    v46 = v5;
    MEMORY[0x20F322F90](v19);
    (*(v20 + 8))(v10, v19);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v18, 1, v23) == 1)
    {
      sub_20D7E3944(v18, &qword_27C8395A8, &qword_20D9790E0);
      v22 = MEMORY[0x277D84F98];
    }

    else
    {
      sub_20D971CB8();
      v26 = v25;
      (*(v24 + 8))(v18, v23);
      v27 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50[0] = v27;
      sub_20D8D5428(2, isUniquelyReferenced_nonNull_native, v26);
      v22 = v50[0];
    }

    v5 = v46;
  }

  sub_20D974E08();
  if (v21(v8, 1, v19) == 1)
  {
    sub_20D7E3944(v8, &qword_27C8395B8, &qword_20D9790F0);
  }

  else
  {
    v29 = v5;
    MEMORY[0x20F322FA0](v19);
    (*(v20 + 8))(v8, v19);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v16, 1, v30) == 1)
    {
      sub_20D7E3944(v16, &qword_27C8395A8, &qword_20D9790E0);
    }

    else
    {
      sub_20D971CB8();
      v33 = v32;
      (*(v31 + 8))(v16, v30);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v50[0] = v22;
      sub_20D8D5428(1, v34, v33);
      v22 = v50[0];
    }

    v5 = v29;
  }

  v35 = sub_20D972EC8();
  v50[3] = v35;
  v50[4] = sub_20D82CEEC(&qword_281127110, MEMORY[0x277D073A0], MEMORY[0x277D07368]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(v35 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07380], v35);
  LOBYTE(v35) = sub_20D972938();
  __swift_destroy_boxed_opaque_existential_0(v50);
  if (v35)
  {
    sub_20D974E08();
    if (v21(v5, 1, v19) == 1)
    {
      sub_20D7E3944(v5, &qword_27C8395B8, &qword_20D9790F0);
    }

    else
    {
      v37 = v47;
      MEMORY[0x20F322F80](v19);
      (*(v20 + 8))(v5, v19);
      v38 = v37;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v38, 1, v39) == 1)
      {
        sub_20D7E3944(v38, &qword_27C8395A8, &qword_20D9790E0);
      }

      else
      {
        sub_20D971CB8();
        v42 = v41;
        (*(v40 + 8))(v38, v39);
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v50[0] = v22;
        sub_20D8D5428(0, v43, v42);
        return v50[0];
      }
    }
  }

  return v22;
}

void sub_20D82AC7C(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v208 = a4;
  v227 = a1;
  v207 = sub_20D9727B8();
  v214 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v206 = v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_20D974CF8();
  v198 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v233 = v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839578, &qword_20D9790C8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v231 = v189 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v249 = v189 - v15;
  MEMORY[0x28223BE20](v14);
  v242 = v189 - v16;
  v17 = sub_20D972628();
  v226 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v229 = (v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v228 = v189 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v225 = v189 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v220 = v189 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v235 = v189 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v222 = v189 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v240 = v189 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = v189 - v33;
  MEMORY[0x28223BE20](v32);
  v256 = v189 - v35;
  v253 = sub_20D971D98();
  v236 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v252 = v189 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395A8, &qword_20D9790E0);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v202 = v189 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v209 = v189 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v250 = v189 - v43;
  MEMORY[0x28223BE20](v42);
  v241 = v189 - v44;
  v257 = sub_20D972C58();
  v251 = *(v257 - 8);
  v45 = MEMORY[0x28223BE20](v257);
  v238 = v189 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v237 = v189 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v248 = v189 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v247 = v189 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v246 = v189 - v54;
  MEMORY[0x28223BE20](v53);
  v245 = (v189 - v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839570, &qword_20D9790C0);
  v239 = *(v56 - 8);
  v57 = MEMORY[0x28223BE20](v56);
  v230 = v189 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v210 = v189 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v63 = v189 - v62;
  MEMORY[0x28223BE20](v61);
  v65 = v189 - v64;
  if (qword_2811250E8 != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    v66 = sub_20D9734F8();
    v67 = __swift_project_value_buffer(v66, qword_28112AB90);

    v196 = v67;
    v68 = sub_20D9734D8();
    v69 = sub_20D975478();
    v70 = os_log_type_enabled(v68, v69);
    v243 = v17;
    v232 = v11;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      v258 = v255;
      *v71 = 136315650;
      *(v71 + 4) = sub_20D7F4DC8(0xD000000000000037, 0x800000020D983FC0, &v258);
      *(v71 + 12) = 2048;
      *(v71 + 14) = a2[2];

      *(v71 + 22) = 2048;
      *(v71 + 24) = *(a3 + 2);

      _os_log_impl(&dword_20D7C9000, v68, v69, "%s Converting %ld import Insights & %ld export Insights to EnergyUsage structs", v71, 0x20u);
      v72 = v255;
      __swift_destroy_boxed_opaque_existential_0(v255);
      MEMORY[0x20F324260](v72, -1, -1);
      MEMORY[0x20F324260](v71, -1, -1);
    }

    else
    {
    }

    v73 = a3;
    v74 = a2[2];
    v254 = *(a3 + 2);
    v255 = v74;
    v75 = __OFADD__(v74, v254);
    v76 = &v254[v74];
    a3 = v242;
    if (v75)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      return;
    }

    if (!v76)
    {
      return;
    }

    if (!v254)
    {
      if (v255)
      {
        v111 = v239 + 2;
        v254 = v239[2];
        v112 = a2 + ((*(v239 + 80) + 32) & ~*(v239 + 80));
        v250 = v239[9];
        v248 = v251 + 16;
        v249 = v236 + 8;
        v247 = v251 + 8;
        v244 = (v239 + 1);
        v113 = MEMORY[0x277D84F90];
        v243 = v251 + 32;
        do
        {
          v114 = v111;
          (v254)(v65, v112, v56);
          sub_20D829D08(v65);
          sub_20D82A614(v65);
          v115 = v241;
          sub_20D974D68();
          v116 = v115;
          v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
          v118 = *(v117 - 8);
          if ((*(v118 + 48))(v116, 1, v117) == 1)
          {
            sub_20D7E3944(v116, &qword_27C8395A8, &qword_20D9790E0);
          }

          else
          {
            sub_20D971CB8();
            (*(v118 + 8))(v116, v117);
          }

          v119 = v252;
          sub_20D974E18();
          sub_20D971D78();
          (*v249)(v119, v253);
          v120 = MEMORY[0x277D84F90];
          sub_20D8D6850(MEMORY[0x277D84F90]);
          sub_20D8D6850(v120);
          v121 = v245;
          sub_20D972BF8();
          (*v248)(v246, v121, v257);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_20D8D428C(0, v113[2] + 1, 1, v113);
          }

          v123 = v113[2];
          v122 = v113[3];
          if (v123 >= v122 >> 1)
          {
            v113 = sub_20D8D428C((v122 > 1), v123 + 1, 1, v113);
          }

          v124 = v251;
          v125 = v257;
          (*(v251 + 1))(v245, v257);
          (*v244)(v65, v56);
          v113[2] = v123 + 1;
          (*(v124 + 4))(v113 + ((v124[80] + 32) & ~v124[80]) + *(v124 + 9) * v123, v246, v125);
          v112 = &v250[v112];
          v255 = (v255 - 1);
          v111 = v114;
        }

        while (v255);
      }

      else
      {
        v113 = MEMORY[0x277D84F90];
      }

      v140 = sub_20D9734D8();
      v141 = sub_20D975478();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v258 = v143;
        *v142 = 136315394;
        *(v142 + 4) = sub_20D7F4DC8(0xD000000000000037, 0x800000020D983FC0, &v258);
        *(v142 + 12) = 2048;
        *(v142 + 14) = v113[2];
        v144 = "%s only import Insights found, returning %ld import usages";
LABEL_116:
        _os_log_impl(&dword_20D7C9000, v140, v141, v144, v142, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v143);
        MEMORY[0x20F324260](v143, -1, -1);
        MEMORY[0x20F324260](v142, -1, -1);
      }

LABEL_117:

      return;
    }

    v77 = (*(v239 + 80) + 32) & ~*(v239 + 80);
    if (!v255)
    {
      v126 = v239 + 2;
      v255 = v239[2];
      v127 = v73 + v77;
      v249 = v239[9];
      v245 = v251 + 16;
      v246 = (v236 + 8);
      v243 = (v239 + 1);
      v244 = (v251 + 8);
      v128 = MEMORY[0x277D84F90];
      v242 = v251 + 32;
      do
      {
        v129 = v126;
        (v255)(v63, v127, v56);
        sub_20D829D08(v63);
        sub_20D82A614(v63);
        sub_20D974D68();
        v130 = v250;
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
        v132 = *(v131 - 8);
        if ((*(v132 + 48))(v130, 1, v131) == 1)
        {
          sub_20D7E3944(v130, &qword_27C8395A8, &qword_20D9790E0);
        }

        else
        {
          sub_20D971CB8();
          (*(v132 + 8))(v130, v131);
        }

        v133 = v252;
        sub_20D974E18();
        sub_20D971D78();
        (*v246)(v133, v253);
        v134 = MEMORY[0x277D84F90];
        sub_20D8D6850(MEMORY[0x277D84F90]);
        sub_20D8D6850(v134);
        v135 = v247;
        sub_20D972BF8();
        (*v245)(v248, v135, v257);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_20D8D428C(0, v128[2] + 1, 1, v128);
        }

        v137 = v128[2];
        v136 = v128[3];
        if (v137 >= v136 >> 1)
        {
          v128 = sub_20D8D428C((v136 > 1), v137 + 1, 1, v128);
        }

        v138 = v251;
        v139 = v257;
        (*(v251 + 1))(v247, v257);
        (*v243)(v63, v56);
        v128[2] = v137 + 1;
        (*(v138 + 4))(v128 + ((v138[80] + 32) & ~v138[80]) + *(v138 + 9) * v137, v248, v139);
        v127 += v249;
        --v254;
        v126 = v129;
      }

      while (v254);
      v140 = sub_20D9734D8();
      v141 = sub_20D975478();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v258 = v143;
        *v142 = 136315394;
        *(v142 + 4) = sub_20D7F4DC8(0xD000000000000037, 0x800000020D983FC0, &v258);
        *(v142 + 12) = 2048;
        *(v142 + 14) = v128[2];
        v144 = "%s only export Insights found, returning %ld export usages";
        goto LABEL_116;
      }

      goto LABEL_117;
    }

    v201 = a2 + v77;
    v78 = v252;
    v79 = v73;
    sub_20D974E18();
    sub_20D971D78();
    v81 = v236 + 8;
    v80 = *(v236 + 8);
    v82 = v253;
    v80(v78, v253);
    v224 = v80;
    v200 = v79 + v77;
    sub_20D974E18();
    v83 = v222;
    sub_20D971D78();
    v80(v78, v82);
    v223 = sub_20D82CEEC(&qword_281126E30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v84 = v240;
    v85 = v243;
    v86 = sub_20D974FA8();
    v87 = v226;
    v88 = v226[1];
    v246 = v88;
    v247 = (v226 + 1);
    v89 = (v86 & 1) == 0;
    v90 = (v86 & 1) != 0 ? v84 : v83;
    v91 = v89 ? v84 : v83;
    (v88)(v90, v85);
    v92 = v87[4];
    v222 = (v87 + 4);
    v221 = v92;
    v92(v34, v91, v85);
    v93 = v239[9];
    sub_20D974E18();
    v94 = v220;
    sub_20D971D78();
    v95 = v81;
    v224(v78, v253);
    v219 = v93;
    sub_20D974E18();
    v96 = v225;
    sub_20D971D78();
    v11 = v85;
    v236 = v95;
    v224(v78, v253);
    a2 = v223;
    v97 = sub_20D974FB8();
    v98 = (v97 & 1) == 0;
    v99 = (v97 & 1) != 0 ? v94 : v96;
    v100 = v98 ? v94 : v96;
    (v246)(v99, v11);
    v101 = v100;
    v102 = v239;
    v221(v235, v101, v11);
    v103 = v102[7];
    v103(a3, 1, 1, v56);
    v220 = (v102 + 7);
    v103(v249, 1, 1, v56);
    if (sub_20D974FA8())
    {
      break;
    }

    v240 = 0;
    v63 = 0;
    v215 = (v102 + 2);
    v218 = (v102 + 6);
    v217 = (v102 + 4);
    v216 = (v102 + 1);
    v239 = v226 + 2;
    v205 = (v251 + 16);
    v204 = v251 + 8;
    v203 = v251 + 32;
    v213 = v198 + 2;
    v212 = (v198 + 11);
    v211 = *MEMORY[0x277CC58A8];
    v199 = *MEMORY[0x277CC58A0];
    v194 = *MEMORY[0x277CC58B0];
    v193 = *MEMORY[0x277CC58C0];
    v192 = *MEMORY[0x277CC58B8];
    v190 = (v198 + 1);
    v189[3] = *MEMORY[0x277CC9988];
    v198 = (v214 + 104);
    v197 = (v214 + 8);
    v191 = *MEMORY[0x277CC9998];
    v195 = *MEMORY[0x277CC9968];
    v245 = MEMORY[0x277D84F90];
    v225 = MEMORY[0x277D84F98];
    v226 = MEMORY[0x277D84F98];
    v248 = MEMORY[0x277D84F98];
    v65 = v255;
    v214 = v103;
    v244 = v34;
    while (1)
    {
      v17 = MEMORY[0x20F323B20]();
      sub_20D7E3944(a3, &qword_27C839578, &qword_20D9790C8);
      v250 = v63;
      v241 = v17;
      if (v63 < v65)
      {
        break;
      }

      v145 = 1;
LABEL_53:
      v63 = 1;
      v103(a3, v145, 1, v56);
      v34 = v249;
      a2 = &qword_27C839578;
      v17 = &qword_20D9790C8;
      sub_20D7E3944(v249, &qword_27C839578, &qword_20D9790C8);
      if (v240 < v254)
      {
        if (v240 < 0)
        {
          goto LABEL_120;
        }

        v34 = v249;
        (*v215)(v249, v200 + v240 * v219, v56);
        v63 = 0;
      }

      v103(v34, v63, 1, v56);
      v146 = v231;
      sub_20D7EB7E8(a3, v231, &qword_27C839578, &qword_20D9790C8);
      v147 = *v218;
      if ((*v218)(v146, 1, v56) == 1)
      {
        sub_20D7E3944(v146, &qword_27C839578, &qword_20D9790C8);
        v148 = 0;
        v149 = v232;
        v150 = v230;
        v151 = v249;
      }

      else
      {
        v152 = v210;
        (*v217)(v210, v146, v56);
        v153 = v252;
        sub_20D974E18();
        v154 = v256;
        sub_20D971D78();
        v224(v153, v253);
        v148 = sub_20D972598();
        (v246)(v154, v11);
        if (v148)
        {
          v155 = sub_20D829D08(v152);

          v156 = sub_20D82A614(v152);

          v226 = v156;
          v248 = v155;
        }

        v149 = v232;
        v150 = v230;
        v151 = v249;
        (*v216)(v152, v56);
      }

      sub_20D7EB7E8(v151, v149, &qword_27C839578, &qword_20D9790C8);
      if (v147(v149, 1, v56) == 1)
      {
        sub_20D7E3944(v149, &qword_27C839578, &qword_20D9790C8);
        if ((v148 & 1) == 0)
        {
          a3 = v242;
          v11 = v243;
LABEL_94:
          v34 = v244;
          a2 = v229;
          v173 = v241;
          v65 = v255;
          goto LABEL_95;
        }

LABEL_68:
        v17 = 0;
        goto LABEL_69;
      }

      (*v217)(v150, v149, v56);
      v157 = v252;
      sub_20D974E18();
      v158 = v256;
      sub_20D971D78();
      v224(v157, v253);
      v159 = sub_20D972598();
      v11 = v243;
      (v246)(v158, v243);
      if ((v159 & 1) == 0)
      {
        (*v216)(v150, v56);
        if ((v148 & 1) == 0)
        {
          a3 = v242;
          goto LABEL_94;
        }

        goto LABEL_68;
      }

      sub_20D829D08(v150);

      v160 = sub_20D82A614(v150);

      (*v216)(v150, v56);
      if ((v148 & 1) == 0)
      {
        v225 = v160;
LABEL_77:
        v164 = v202;
        if (v147(v151, 1, v56) == 1)
        {
          goto LABEL_126;
        }

        sub_20D974D68();
        v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
        v166 = (*(*(v165 - 8) + 48))(v164, 1, v165);
        v163 = v245;
        if (!v166)
        {
          sub_20D971CB8();
        }

        v65 = v148;
        sub_20D7E3944(v164, &qword_27C8395A8, &qword_20D9790E0);
        v17 = 1;
        goto LABEL_81;
      }

      v17 = 1;
      v225 = v160;
LABEL_69:
      if (v147(v242, 1, v56) == 1)
      {
        goto LABEL_125;
      }

      v161 = v209;
      sub_20D974D68();
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
      if ((*(*(v162 - 8) + 48))(v161, 1, v162))
      {
        sub_20D7E3944(v161, &qword_27C8395A8, &qword_20D9790E0);
        if (v17)
        {
          goto LABEL_77;
        }

        v65 = v148;
        v17 = 0;
      }

      else
      {
        sub_20D971CB8();
        sub_20D7E3944(v161, &qword_27C8395A8, &qword_20D9790E0);
        if (v17)
        {
          goto LABEL_77;
        }

        v65 = v148;
      }

      v163 = v245;
LABEL_81:
      (*v239)(v256, v244, v243);
      v63 = v248;

      a2 = v226;

      v34 = v225;

      v167 = v237;
      sub_20D972BF8();
      (*v205)(v238, v167, v257);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v163 = sub_20D8D428C(0, v163[2] + 1, 1, v163);
      }

      v169 = v163[2];
      v168 = v163[3];
      v245 = v163;
      if (v169 >= v168 >> 1)
      {
        v245 = sub_20D8D428C((v168 > 1), v169 + 1, 1, v245);
      }

      v170 = v251;
      v171 = v257;
      (*(v251 + 1))(v237, v257);
      v172 = v245;
      v245[2] = v169 + 1;
      (*(v170 + 4))(v172 + ((v170[80] + 32) & ~v170[80]) + *(v170 + 9) * v169, v238, v171);
      if (v65)
      {
        a3 = v242;
        v11 = v243;
        if (__OFADD__(v250, 1))
        {
          goto LABEL_121;
        }

        ++v250;
      }

      else
      {
        a3 = v242;
        v11 = v243;
      }

      v34 = v244;
      a2 = v229;
      v65 = v255;
      if (v17)
      {
        if (__OFADD__(v240, 1))
        {
          goto LABEL_122;
        }

        ++v240;
      }

      v248 = MEMORY[0x277D84F98];
      v173 = v241;
LABEL_95:
      (*v239)(a2, v34, v11);
      v174 = v233;
      v175 = v234;
      (*v213)(v233, v227, v234);
      v176 = (*v212)(v174, v175);
      if (v176 != v211)
      {
        if (v176 == v199)
        {
          v178 = *v198;
          v179 = v206;
          v180 = v206;
          v181 = &v227 + 4;
          goto LABEL_99;
        }

        if (v176 == v194)
        {
          v179 = v206;
          v182 = v207;
          (*v198)(v206, v195, v207);
          v177 = v228;
        }

        else
        {
          if (v176 == v193)
          {
            v178 = *v198;
            v179 = v206;
            v180 = v206;
            v181 = &v225 + 4;
          }

          else
          {
            if (v176 != v192)
            {
              v177 = v228;
              sub_20D9725C8();
              v185 = v246;
              (v246)(a2, v11);
              (v185)(v34, v11);
              (*v190)(v233, v234);
              goto LABEL_104;
            }

            v178 = *v198;
            v179 = v206;
            v180 = v206;
            v181 = &v223 + 4;
          }

LABEL_99:
          v182 = v207;
          v178(v180, *(v181 - 64), v207);
          v177 = v228;
        }

        sub_20D9730D8();
        (*v197)(v179, v182);
        goto LABEL_103;
      }

      v177 = v228;
      sub_20D972498();
LABEL_103:
      v183 = v246;
      (v246)(a2, v11);
      (v183)(v34, v11);
LABEL_104:
      v221(v34, v177, v11);
      objc_autoreleasePoolPop(v173);
      v184 = sub_20D974FA8();
      v63 = v250;
      v103 = v214;
      if (v184)
      {
        goto LABEL_23;
      }
    }

    if ((v63 & 0x8000000000000000) == 0)
    {
      (*v215)(a3, &v201[v63 * v219], v56);
      v145 = 0;
      goto LABEL_53;
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    swift_once();
  }

  v240 = 0;
  v63 = 0;
  v245 = MEMORY[0x277D84F90];
  v226 = MEMORY[0x277D84F98];
  v225 = MEMORY[0x277D84F98];
  v248 = MEMORY[0x277D84F98];
LABEL_23:
  v104 = v63;
  v105 = sub_20D9734D8();
  v106 = sub_20D975478();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v258 = v108;
    *v107 = 136315906;
    *(v107 + 4) = sub_20D7F4DC8(0xD000000000000037, 0x800000020D983FC0, &v258);
    *(v107 + 12) = 2048;
    *(v107 + 14) = v104;
    *(v107 + 22) = 2048;
    *(v107 + 24) = v240;
    *(v107 + 32) = 2048;
    *(v107 + 34) = v245[2];
    _os_log_impl(&dword_20D7C9000, v105, v106, "%s %ld/%ld import/export usages created, returning %ld usages", v107, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x20F324260](v108, -1, -1);
    MEMORY[0x20F324260](v107, -1, -1);

    v109 = v243;
    v110 = v246;
    (v246)(v235, v243);
    (v110)(v34, v109);
  }

  else
  {

    v186 = v243;
    v187 = v246;
    (v246)(v235, v243);
    (v187)(v34, v186);
  }

  v188 = v249;

  sub_20D7E3944(v188, &qword_27C839578, &qword_20D9790C8);
  sub_20D7E3944(a3, &qword_27C839578, &qword_20D9790C8);
}

uint64_t sub_20D82CEEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20D82CF34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSnapshot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D82D02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20D7EB7E8(a3, v25 - v10, &unk_27C839F30, &qword_20D978400);
  v12 = sub_20D975318();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20D7E3944(v11, &unk_27C839F30, &qword_20D978400);
  }

  else
  {
    sub_20D975308();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20D975298();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20D975138() + 32;
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

      sub_20D7E3944(a3, &unk_27C839F30, &qword_20D978400);

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

  sub_20D7E3944(a3, &unk_27C839F30, &qword_20D978400);
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

uint64_t GridForecastSnapshotManager.reloadSnapshots()()
{
  v1[18] = v0;
  sub_20D9752E8();
  v1[19] = sub_20D9752D8();
  v3 = sub_20D975298();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](sub_20D82D3C4, v3, v2);
}

uint64_t sub_20D82D3C4()
{
  v24 = v0;
  v1 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  swift_getKeyPath();
  v0[16] = v1;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v3 = v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  v4 = type metadata accessor for GridForecastSnapshot(0);
  v5 = (v3 + *(v4 + 24));
  v6 = v5[1];
  *(inited + 32) = *v5;
  *(inited + 40) = v6;
  swift_getKeyPath();
  v0[17] = v1;

  sub_20D972858();

  v7 = v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  swift_beginAccess();
  v8 = (v7 + *(v4 + 24));
  v9 = v8[1];
  *(inited + 48) = *v8;
  *(inited + 56) = v9;

  v10 = sub_20D84B8EC(inited);
  v0[22] = v10;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v11 = sub_20D9734F8();
  __swift_project_value_buffer(v11, qword_28112AC00);

  v12 = sub_20D9734D8();
  v13 = sub_20D975478();

  v14 = v0;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = v0[18];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_20D7F4DC8(0xD000000000000011, 0x800000020D9840B0, &v23);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20D7F4DC8(*(v15 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v15 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v23);
    *(v16 + 22) = 2080;
    v18 = sub_20D975368();
    v20 = sub_20D7F4DC8(v18, v19, &v23);

    *(v16 + 24) = v20;
    _os_log_impl(&dword_20D7C9000, v12, v13, "\t...%s(%s): reloading %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v17, -1, -1);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  v21 = swift_task_alloc();
  v14[23] = v21;
  *v21 = v14;
  v21[1] = sub_20D82D7AC;

  return sub_20D83FFC8(v10);
}

uint64_t sub_20D82D7AC()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20D82D8F0, v3, v2);
}

uint64_t sub_20D82D8F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D82D950(uint64_t a1, uint64_t a2)
{
  v3 = sub_20D971DE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_20D971DB8();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

HomeEnergyUI::GridForecastSnapshotManager::SnapshotManagerType_optional __swiftcall GridForecastSnapshotManager.SnapshotManagerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20D975788();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t GridForecastSnapshotManager.SnapshotManagerType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1801678701;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572616853707061;
  }
}

uint64_t GridForecastSnapshotManager.__allocating_init(type:location:locationName:locationUUID:)(unsigned __int8 *a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  GridForecastSnapshotManager.init(type:location:locationName:locationUUID:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_20D82DBBC(uint64_t a1, char a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v12 = a2;
  v8 = sub_20D972698();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for GridForecastSnapshotManager(0);
  v9 = swift_allocObject();
  result = GridForecastSnapshotManager.init(type:location:locationName:locationUUID:)(&v12, 0, 0, 0, v7);
  *a3 = v9;
  return result;
}

uint64_t (*sub_20D82DD8C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D82DCD8(v4);
  return sub_20D82DEC4;
}

uint64_t sub_20D82DF64(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationNotificationsSnapshot;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_20D82DFC0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D82DED0(v4);
  return sub_20D82E0F8;
}

uint64_t sub_20D82E164(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {

    return sub_20D84B418();
  }

  return result;
}

uint64_t sub_20D82E1BC@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v6 = *a2;
  swift_beginAccess();
  return sub_20D84BC18(v3 + v6, a3, type metadata accessor for GridForecastSnapshot);
}

uint64_t type metadata accessor for GridForecastSnapshotManager(uint64_t a1)
{
  result = qword_281127140;
  if (!qword_281127140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D82E304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972848();

  return sub_20D84BADC(a1, type metadata accessor for GridForecastSnapshot);
}

uint64_t sub_20D82E400(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for GridForecastSnapshot(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D84BC18(a2, v8, type metadata accessor for GridForecastSnapshot);
  v9 = *a3;
  swift_beginAccess();
  sub_20D84E034(v8, a1 + v9);
  swift_endAccess();
  sub_20D84B418();
  return sub_20D84BADC(v8, type metadata accessor for GridForecastSnapshot);
}

uint64_t (*sub_20D82E4EC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D82E104(v4);
  return sub_20D82E624;
}

uint64_t sub_20D82E6A4@<X0>(uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v3 + v6);
  return result;
}

uint64_t sub_20D82E788(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D82E844(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedNotificationsSnapshot;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_20D82E8A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D82E630(v4);
  return sub_20D82E9D8;
}

uint64_t sub_20D82E9E4()
{
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  return *(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot);
}

uint64_t sub_20D82EA8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  *a2 = *(v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot);
  return result;
}

uint64_t sub_20D82EB3C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972848();
  }

  return result;
}

uint64_t GridForecastSnapshotManager.__allocating_init(location:locationName:locationUUID:)(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-v9];
  v14 = 1;
  sub_20D7EB7E8(a4, &v13[-v9], &qword_27C8389F8, &qword_20D978460);
  type metadata accessor for GridForecastSnapshotManager(0);
  v11 = swift_allocObject();
  GridForecastSnapshotManager.init(type:location:locationName:locationUUID:)(&v14, a1, a2, a3, v10);
  sub_20D7E3944(a4, &qword_27C8389F8, &qword_20D978460);
  return v11;
}

uint64_t GridForecastSnapshotManager.init(type:location:locationName:locationUUID:)(unsigned __int8 *a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v85 = a4;
  v86 = a5;
  v80 = a3;
  v84 = a2;
  v8 = 0xE900000000000064;
  v82 = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v9 - 8);
  v81 = &v79 - v10;
  v11 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for GridForecastSnapshot(0);
  MEMORY[0x28223BE20](v83);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  *v13 = 0;
  swift_storeEnumTagMultiPayload();
  sub_20D7E1874(v13, v15);
  sub_20D84BADC(v13, type metadata accessor for GridForecastSnapshotType);
  sub_20D84E098(v15, v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot, type metadata accessor for GridForecastSnapshot);
  *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationNotificationsSnapshot) = 2;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
  *v13 = sub_20D972F28();
  v18 = sub_20D972698();
  v13[1] = 0;
  v13[2] = 0;
  (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
  swift_storeEnumTagMultiPayload();
  sub_20D7E1874(v13, v15);
  sub_20D84BADC(v13, type metadata accessor for GridForecastSnapshotType);
  sub_20D84E098(v15, v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot, type metadata accessor for GridForecastSnapshot);
  *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedNotificationsSnapshot) = 2;
  *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot) = 0;
  *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_cachedLocationIsAuthorized) = 2;
  sub_20D972888();
  *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__type) = v16;
  if (v16)
  {
    if (v16 == 1)
    {
      v8 = 0x800000020D981530;
      v19 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xE400000000000000;
      v19 = 1801678701;
    }
  }

  else
  {
    v19 = 0x6572616853707061;
  }

  v20 = (v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
  *v20 = v19;
  v20[1] = v8;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v21 = sub_20D9734F8();
  __swift_project_value_buffer(v21, qword_28112AC00);

  v22 = sub_20D9734D8();
  v23 = sub_20D975478();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v87 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D9840F0, &v87);
    *(v24 + 12) = 2080;
    v27 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
    v26 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

    v28 = sub_20D7F4DC8(v27, v26, &v87);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_20D7C9000, v22, v23, "GridForecastSnapshotManager:%s(%s): Initializing GFSM", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v25, -1, -1);
    MEMORY[0x20F324260](v24, -1, -1);
  }

  v29 = v83;
  if (!v16)
  {

    v31 = v84;
    goto LABEL_16;
  }

  if (v16 == 1)
  {
    v30 = sub_20D9757C8();

    v31 = v84;
    if ((v30 & 1) == 0)
    {
      v32 = v85;
      if (!v84)
      {
LABEL_22:

        v48 = sub_20D9734D8();
        v49 = sub_20D975478();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v87 = v51;
          *v50 = 136315394;
          *(v50 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D9840F0, &v87);
          *(v50 + 12) = 2080;
          v52 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
          v53 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

          v54 = sub_20D7F4DC8(v52, v53, &v87);

          *(v50 + 14) = v54;
          _os_log_impl(&dword_20D7C9000, v48, v49, "GridForecastSnapshotManager:%s(%s): checking for location auth & starting location snapshots", v50, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F324260](v51, -1, -1);
          MEMORY[0x20F324260](v50, -1, -1);
        }

        v56 = v81;
        v55 = v82;
        v57 = sub_20D975318();
        (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
        sub_20D9752E8();
        swift_retain_n();
        v58 = sub_20D9752D8();
        v59 = swift_allocObject();
        v60 = MEMORY[0x277D85700];
        v59[2] = v58;
        v59[3] = v60;
        v59[4] = v6;
        v59[5] = sub_20D84BB3C;
        v59[6] = v6;
        v59[7] = v55;
        sub_20D82D02C(0, 0, v56, &unk_20D9791F8, v59);

        v61 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v62 = sub_20D975078();
        v63 = [v61 initWithSuiteName_];

        if (v63 && (v64 = sub_20D975078(), v65 = [v63 BOOLForKey_], v63, v64, (v65 & 1) != 0))
        {

          v66 = sub_20D9734D8();
          v67 = sub_20D975478();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v87 = v69;
            *v68 = 136315394;
            *(v68 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D9840F0, &v87);
            *(v68 + 12) = 2080;
            v70 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
            v71 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

            v72 = sub_20D7F4DC8(v70, v71, &v87);

            *(v68 + 14) = v72;
            _os_log_impl(&dword_20D7C9000, v66, v67, "%s(%s): starting fake notification toggles", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F324260](v69, -1, -1);
            MEMORY[0x20F324260](v68, -1, -1);
          }

          sub_20D830170();
          sub_20D7E3944(v86, &qword_27C8389F8, &qword_20D978460);
        }

        else
        {
          sub_20D7E3944(v86, &qword_27C8389F8, &qword_20D978460);
        }

        return v6;
      }

LABEL_19:

      v40 = v31;
      v41 = sub_20D9734D8();
      v42 = sub_20D975478();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v87 = v44;
        *v43 = 136315394;
        *(v43 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D9840F0, &v87);
        *(v43 + 12) = 2080;
        v45 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
        v46 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

        v47 = sub_20D7F4DC8(v45, v46, &v87);

        *(v43 + 14) = v47;
        _os_log_impl(&dword_20D7C9000, v41, v42, "GridForecastSnapshotManager:%s(%s): location provided at init, starting fixed snapshots", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v44, -1, -1);
        v32 = v85;
        MEMORY[0x20F324260](v43, -1, -1);
      }

      sub_20D830D0C(v40, v80, v32, v86);
      goto LABEL_22;
    }

LABEL_16:

    v33 = sub_20D9734D8();
    v34 = sub_20D975478();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v87 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D9840F0, &v87);
      *(v35 + 12) = 2080;
      v37 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
      v38 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

      v39 = sub_20D7F4DC8(v37, v38, &v87);

      *(v35 + 14) = v39;
      _os_log_impl(&dword_20D7C9000, v33, v34, "GridForecastSnapshotManager:%s(%s): start observing notifications...", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v36, -1, -1);
      MEMORY[0x20F324260](v35, -1, -1);
    }

    sub_20D82FBC8();
    v32 = v85;
    if (!v31)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (qword_27C838388 != -1)
  {
    swift_once();
  }

  v73 = __swift_project_value_buffer(v29, qword_27C840BD0);
  sub_20D84BC18(v73, v15, type metadata accessor for GridForecastSnapshot);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v79 - 2) = v6;
  *(&v79 - 1) = v15;
  v87 = v6;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972848();

  sub_20D84BADC(v15, type metadata accessor for GridForecastSnapshot);
  if (qword_27C838390 != -1)
  {
    swift_once();
  }

  v75 = __swift_project_value_buffer(v29, qword_27C840BE8);
  sub_20D84BC18(v75, v15, type metadata accessor for GridForecastSnapshot);
  v76 = swift_getKeyPath();
  MEMORY[0x28223BE20](v76);
  *(&v79 - 2) = v6;
  *(&v79 - 1) = v15;
  v87 = v6;
  sub_20D972848();

  sub_20D84BADC(v15, type metadata accessor for GridForecastSnapshot);
  v77 = swift_getKeyPath();
  MEMORY[0x28223BE20](v77);
  *(&v79 - 2) = v6;
  *(&v79 - 8) = 0;
  v87 = v6;
  sub_20D972848();

  sub_20D7E3944(v86, &qword_27C8389F8, &qword_20D978460);
  return v6;
}

void sub_20D82FBC8()
{
  v1 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D9845C0, &v20);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20D7F4DC8(*(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v20);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): registering for currentlocation notifications", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  sub_20D972EF8();
  v9 = sub_20D975078();

  v24 = sub_20D84D3C8;
  v25 = v0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_20D82D950;
  v23 = &block_descriptor_119;
  v10 = _Block_copy(&v20);

  v11 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();

  v12 = sub_20D9734D8();
  v13 = sub_20D975478();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D9845C0, &v20);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_20D7F4DC8(*(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v20);
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s(%s): registering for Energy Windows Refreshed notifications", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v16 = [v7 defaultCenter];
  sub_20D972EE8();
  v17 = sub_20D975078();

  v24 = sub_20D84D3E8;
  v25 = v1;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_20D82D950;
  v23 = &block_descriptor_122;
  v18 = _Block_copy(&v20);

  v19 = [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_20D83004C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_20D975318();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_20D9752E8();

  v6 = sub_20D9752D8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_20D82D02C(0, 0, v4, &unk_20D9794C8, v7);
}

void sub_20D830170()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  if (sub_20D972ED8())
  {
    v5 = sub_20D975318();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_20D9752E8();

    v6 = sub_20D9752D8();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v1;
    sub_20D82D02C(0, 0, v4, &unk_20D979498, v7);
  }

  else
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v9 = sub_20D9734F8();
    __swift_project_value_buffer(v9, qword_28112AC00);

    v14 = sub_20D9734D8();
    v10 = sub_20D975458();

    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984600, &v15);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_20D7F4DC8(*(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v15);
      _os_log_impl(&dword_20D7C9000, v14, v10, "%s(%s): is only available on Internal builds", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v12, -1, -1);
      MEMORY[0x20F324260](v11, -1, -1);
    }

    else
    {
      v13 = v14;
    }
  }
}

uint64_t sub_20D830424(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for GridForecastSnapshot(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v54 = v1;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v7 = v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D84BC18(v7, v6, type metadata accessor for GridForecastSnapshot);
  v8 = sub_20D7E0238();
  sub_20D84BADC(v6, type metadata accessor for GridForecastSnapshot);
  v9 = &qword_281127000;
  if (!v8)
  {
    goto LABEL_14;
  }

  if (sub_20D972F68())
  {
LABEL_13:

LABEL_14:
    v29 = 1;
    goto LABEL_15;
  }

  [a1 distanceFromLocation_];
  v11 = v10;
  if (v10 >= 100.0)
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v23 = sub_20D9734F8();
    __swift_project_value_buffer(v23, qword_28112AC00);

    v24 = sub_20D9734D8();
    v25 = sub_20D975478();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v53 = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_20D7F4DC8(0xD000000000000023, 0x800000020D984590, &v53);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_20D7F4DC8(*(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v53);
      *(v26 + 22) = 2048;
      *(v26 + 24) = v11;
      _os_log_impl(&dword_20D7C9000, v24, v25, "%s(%s): new fixed snapshot location has changed %fm, which is greater than 100m.", v26, 0x20u);
      swift_arrayDestroy();
      v28 = v27;
      v9 = &qword_281127000;
      MEMORY[0x20F324260](v28, -1, -1);
      MEMORY[0x20F324260](v26, -1, -1);
    }

    goto LABEL_13;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v12 = sub_20D9734F8();
  __swift_project_value_buffer(v12, qword_28112AC00);

  v13 = v8;
  v14 = sub_20D9734D8();
  v15 = sub_20D975478();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v51 = v14;
    v17 = v16;
    v18 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v52;
    *v17 = 136315907;
    *(v17 + 4) = sub_20D7F4DC8(0xD000000000000023, 0x800000020D984590, &v53);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_20D7F4DC8(*(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v53);
    *(v17 + 22) = 2048;
    *(v17 + 24) = v11;
    *(v17 + 32) = 2113;
    *(v17 + 34) = v13;
    *v18 = v8;
    v19 = v13;
    v20 = v15;
    v21 = v51;
    _os_log_impl(&dword_20D7C9000, v51, v20, "%s(%s): new fixed snapshot location has changed %fm from %{private}@, which is less than 100m.", v17, 0x2Au);
    sub_20D7E3944(v18, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v18, -1, -1);
    v22 = v52;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v22, -1, -1);
    MEMORY[0x20F324260](v17, -1, -1);
  }

  else
  {
  }

  v29 = 0;
  v9 = &qword_281127000;
LABEL_15:
  swift_getKeyPath();
  v53 = v2;
  sub_20D972858();

  v30 = (v7 + *(v4 + 24));
  v32 = *v30;
  v31 = v30[1];
  v33 = v32 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v34 = v33;
  }

  if (!v34 || (swift_getKeyPath(), v53 = v2, sub_20D972858(), , v35 = (v7 + *(v4 + 24)), *v35 == 11565) && v35[1] == 0xE200000000000000 || (sub_20D9757C8() & 1) != 0)
  {
    if (v9[32] != -1)
    {
      swift_once();
    }

    v36 = sub_20D9734F8();
    __swift_project_value_buffer(v36, qword_28112AC00);

    v37 = sub_20D9734D8();
    v38 = sub_20D975478();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53 = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_20D7F4DC8(0xD000000000000023, 0x800000020D984590, &v53);
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_20D7F4DC8(*(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v53);
      _os_log_impl(&dword_20D7C9000, v37, v38, "%s(%s): current fixed snapshot has invalid location.", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v40, -1, -1);
      MEMORY[0x20F324260](v39, -1, -1);
    }

    v29 = 1;
  }

  swift_getKeyPath();
  v53 = v2;
  sub_20D972858();

  v41 = *(v7 + *(v4 + 36));
  if (v41 != 12)
  {
    if (v9[32] != -1)
    {
      swift_once();
    }

    v42 = sub_20D9734F8();
    __swift_project_value_buffer(v42, qword_28112AC00);

    v43 = sub_20D9734D8();
    v44 = sub_20D975478();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v53 = v47;
      *v45 = 136315650;
      *(v45 + 4) = sub_20D7F4DC8(0xD000000000000023, 0x800000020D984590, &v53);
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_20D7F4DC8(*(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v53);
      *(v45 + 22) = 2112;
      sub_20D84D14C();
      swift_allocError();
      *v48 = v41;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 24) = v49;
      *v46 = v49;
      _os_log_impl(&dword_20D7C9000, v43, v44, "%s(%s): has an error: %@", v45, 0x20u);
      sub_20D7E3944(v46, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v46, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v47, -1, -1);
      MEMORY[0x20F324260](v45, -1, -1);
    }

    return 1;
  }

  return v29;
}

void sub_20D830D0C(void *a1, NSObject *a2, void *a3, uint64_t a4)
{
  v92 = a3;
  v93 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v79 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v79 - v11;
  v12 = sub_20D9729D8();
  v91 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v89 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v87);
  v15 = (&v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for GridForecastSnapshot(0);
  MEMORY[0x28223BE20](v88);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v79 - v22;
  v94 = v4;
  if (sub_20D830424(a1))
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v85 = v9;
    v86 = v12;
    v24 = sub_20D9734F8();
    v25 = __swift_project_value_buffer(v24, qword_28112AC00);
    sub_20D7EB7E8(a4, v23, &qword_27C8389F8, &qword_20D978460);
    v26 = v92;

    v27 = v94;

    v28 = a1;
    v84 = v25;
    v29 = v28;
    v30 = sub_20D9734D8();
    v31 = sub_20D975478();

    v83 = v31;
    if (os_log_type_enabled(v30, v31))
    {
      v80 = v30;
      v82 = a4;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v95 = v33;
      *v32 = 136316162;
      *(v32 + 4) = sub_20D7F4DC8(0xD000000000000031, 0x800000020D984120, &v95);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_20D7F4DC8(*(v27 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v27 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v95);
      *(v32 + 22) = 2080;
      v81 = v29;
      v34 = sub_20D972F48();
      v36 = sub_20D7F4DC8(v34, v35, &v95);

      *(v32 + 24) = v36;
      *(v32 + 32) = 2080;
      if (v26)
      {
        v37 = v93;
      }

      else
      {
        v37 = 0x3E6C696E3CLL;
      }

      if (v26)
      {
        v38 = v26;
      }

      else
      {
        v38 = 0xE500000000000000;
      }

      v39 = sub_20D7F4DC8(v37, v38, &v95);

      *(v32 + 34) = v39;
      *(v32 + 42) = 2080;
      sub_20D7EB7E8(v23, v21, &qword_27C8389F8, &qword_20D978460);
      v40 = sub_20D972698();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v21, 1, v40) == 1)
      {
        sub_20D7E3944(v21, &qword_27C8389F8, &qword_20D978460);
        v42 = 0xE500000000000000;
        v43 = 0x3E6C696E3CLL;
      }

      else
      {
        v43 = MEMORY[0x20F320810]();
        v42 = v50;
        (*(v41 + 8))(v21, v40);
      }

      sub_20D7E3944(v23, &qword_27C8389F8, &qword_20D978460);
      v51 = sub_20D7F4DC8(v43, v42, &v95);

      *(v32 + 44) = v51;
      v52 = v80;
      _os_log_impl(&dword_20D7C9000, v80, v83, "%s(%s): clearing current fixed snapshot & setting new fixed snapshot w/: %s, named: %s & %s", v32, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v33, -1, -1);
      MEMORY[0x20F324260](v32, -1, -1);

      v26 = v92;
      v29 = v81;
      a4 = v82;
    }

    else
    {

      sub_20D7E3944(v23, &qword_27C8389F8, &qword_20D978460);
    }

    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v54 = v93;
    *v15 = v29;
    v15[1] = v54;
    v15[2] = v26;
    sub_20D7EB7E8(a4, v15 + v53, &qword_27C8389F8, &qword_20D978460);
    swift_storeEnumTagMultiPayload();
    v93 = v29;

    v55 = v89;
    static EnergyWindows.mockNoCleanEnergyWindows()(v89);
    if (sub_20D972F68())
    {
      v56 = 5;
    }

    else
    {
      v56 = 1;
    }

    sub_20D84BC18(v15, v17, type metadata accessor for GridForecastSnapshotType);
    v92 = v15;
    v57 = v17;
    v58 = v88;
    v59 = v91;
    v60 = *(v91 + 16);
    v61 = v86;
    v60(v57 + *(v88 + 20), v55, v86);
    v62 = (v57 + v58[6]);
    *v62 = 0;
    v62[1] = 0xE000000000000000;
    v63 = (v57 + v58[7]);
    *v63 = 0;
    v63[1] = 0xE000000000000000;
    *(v57 + v58[9]) = v56;
    v64 = v90;
    v60(v90, v55, v61);
    (*(v59 + 56))(v64, 0, 1, v61);
    sub_20D87934C(v64);
    v66 = v65;
    sub_20D7E3944(v64, &qword_27C838A00, &qword_20D976750);
    v95 = v66;
    v67 = sub_20D8797EC(&v95);

    (*(v59 + 8))(v55, v61);
    sub_20D84BADC(v92, type metadata accessor for GridForecastSnapshotType);
    *(v57 + v58[8]) = v67;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v69 = v94;
    *(&v79 - 2) = v94;
    *(&v79 - 1) = v57;
    v95 = v69;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v57, type metadata accessor for GridForecastSnapshot);
    if (sub_20D972F68())
    {

      v70 = sub_20D9734D8();
      v71 = sub_20D975458();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v95 = v73;
        *v72 = 136315394;
        *(v72 + 4) = sub_20D7F4DC8(0xD000000000000031, 0x800000020D984120, &v95);
        *(v72 + 12) = 2080;
        *(v72 + 14) = sub_20D7F4DC8(*(v69 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v69 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v95);
        _os_log_impl(&dword_20D7C9000, v70, v71, "%s(%s): failing with invalid location.", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v73, -1, -1);
        MEMORY[0x20F324260](v72, -1, -1);
      }
    }

    else
    {
      v74 = sub_20D975318();
      v75 = v85;
      (*(*(v74 - 8) + 56))(v85, 1, 1, v74);
      sub_20D9752E8();

      v76 = sub_20D9752D8();
      v77 = swift_allocObject();
      v78 = MEMORY[0x277D85700];
      v77[2] = v76;
      v77[3] = v78;
      v77[4] = v69;
      sub_20D82D02C(0, 0, v75, &unk_20D979210, v77);
    }
  }

  else
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v44 = sub_20D9734F8();
    __swift_project_value_buffer(v44, qword_28112AC00);
    v45 = v94;

    v93 = sub_20D9734D8();
    v46 = sub_20D975478();

    if (os_log_type_enabled(v93, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v95 = v48;
      *v47 = 136315394;
      *(v47 + 4) = sub_20D7F4DC8(0xD000000000000031, 0x800000020D984120, &v95);
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_20D7F4DC8(*(v45 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v45 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v95);
      _os_log_impl(&dword_20D7C9000, v93, v46, "%s(%s): skipping reset - fixed snapshot will not be changed.", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v48, -1, -1);
      MEMORY[0x20F324260](v47, -1, -1);
    }

    else
    {
      v49 = v93;
    }
  }
}

uint64_t sub_20D8318C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_20D9752E8();
  v4[3] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_20D831960, v6, v5);
}

uint64_t sub_20D831960()
{
  v10 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[6] = __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000031, 0x800000020D984120, &v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v9);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s(%s): Starting fixed snapshot renewal", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_20D831B5C;

  return sub_20D831DFC();
}

uint64_t sub_20D831B5C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_20D831C7C, v3, v2);
}

uint64_t sub_20D831C7C()
{
  v9 = v0;

  v1 = sub_20D9734D8();
  v2 = sub_20D975478();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 16);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_20D7F4DC8(0xD000000000000031, 0x800000020D984120, &v8);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_20D7F4DC8(*(v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v8);
    _os_log_impl(&dword_20D7C9000, v1, v2, "%s(%s): Finished fixed snapshot renewal", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20D831DFC()
{
  v1[16] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v1[17] = swift_task_alloc();
  v2 = sub_20D9729D8();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  type metadata accessor for GridForecastSnapshotType(0);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = type metadata accessor for GridForecastSnapshot(0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_20D9752E8();
  v1[27] = sub_20D9752D8();
  v4 = sub_20D975298();
  v1[28] = v4;
  v1[29] = v3;

  return MEMORY[0x2822009F8](sub_20D831FA8, v4, v3);
}

uint64_t sub_20D831FA8()
{
  v48 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[30] = __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[16];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v47[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, v47);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v47);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s(%s): starting fixed snapshots", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = v0[26];
  v8 = v0[16];
  swift_getKeyPath();
  v0[31] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v0[5] = v8;
  v0[32] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v9 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  v0[33] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  v10 = v8 + v9;
  swift_beginAccess();
  sub_20D84BC18(v10, v7, type metadata accessor for GridForecastSnapshot);
  v11 = sub_20D7E0238();
  v0[34] = v11;
  sub_20D84BADC(v7, type metadata accessor for GridForecastSnapshot);
  if (!v11)
  {
    goto LABEL_8;
  }

  if (sub_20D972F68())
  {

LABEL_8:
    v42 = v0[25];
    v46 = v0[24];
    v39 = v0[23];
    v13 = v0[20];
    v12 = v0[21];
    v43 = v0[19];
    v44 = v0[18];
    v14 = v0[16];
    v45 = v0[17];
    swift_getKeyPath();
    v0[6] = v14;
    sub_20D972858();

    sub_20D84BC18(v10, v12, type metadata accessor for GridForecastSnapshotType);
    static EnergyWindows.mockNoCleanEnergyWindows()(v13);
    swift_getKeyPath();
    v0[7] = v14;
    sub_20D972858();

    v15 = (v10 + v39[6]);
    v40 = v15[1];
    v41 = *v15;
    swift_getKeyPath();
    v0[8] = v14;

    sub_20D972858();

    v16 = (v10 + v39[7]);
    v17 = v16[1];
    v38 = *v16;
    swift_getKeyPath();
    v0[9] = v14;

    sub_20D972858();

    if (*(v10 + v39[9]) == 12)
    {
      v18 = 4;
    }

    else
    {
      v18 = *(v10 + v39[9]);
    }

    sub_20D84BC18(v12, v42, type metadata accessor for GridForecastSnapshotType);
    v19 = *(v43 + 16);
    v19(v42 + v39[5], v13, v44);
    v20 = (v42 + v39[6]);
    *v20 = v41;
    v20[1] = v40;
    v21 = (v42 + v39[7]);
    *v21 = v38;
    v21[1] = v17;
    *(v42 + v39[9]) = v18;
    v19(v45, v13, v44);
    (*(v43 + 56))(v45, 0, 1, v44);
    sub_20D87934C(v45);
    v23 = v22;
    sub_20D7E3944(v45, &qword_27C838A00, &qword_20D976750);
    v47[0] = v23;
    v24 = sub_20D8797EC(v47);

    (*(v43 + 8))(v13, v44);
    sub_20D84BADC(v12, type metadata accessor for GridForecastSnapshotType);
    *(v42 + v39[8]) = v24;
    sub_20D84BC18(v42, v46, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v25 = swift_task_alloc();
    *(v25 + 16) = v14;
    *(v25 + 24) = v46;
    v0[10] = v14;
    sub_20D972848();

    sub_20D84BADC(v46, type metadata accessor for GridForecastSnapshot);

    v26 = sub_20D9734D8();
    v27 = sub_20D975458();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[25];
    if (v28)
    {
      v30 = v0[16];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, v47);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_20D7F4DC8(*(v30 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v30 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v47);
      _os_log_impl(&dword_20D7C9000, v26, v27, "%s(%s): failing with invalid location.", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v32, -1, -1);
      MEMORY[0x20F324260](v31, -1, -1);
    }

    sub_20D84BADC(v29, type metadata accessor for GridForecastSnapshot);

    v33 = v0[1];

    return v33();
  }

  v35 = v0[22];
  v36 = v0[16];
  swift_getKeyPath();
  v0[11] = v36;
  sub_20D972858();

  sub_20D84BC18(v10, v35, type metadata accessor for GridForecastSnapshotType);
  LOBYTE(v47[0]) = 0;
  sub_20D835560(v35, v47, 0, 0, 0, 0);
  sub_20D84BADC(v35, type metadata accessor for GridForecastSnapshotType);
  v37 = swift_task_alloc();
  v0[35] = v37;
  *v37 = v0;
  v37[1] = sub_20D832854;

  return sub_20D8382CC(v11, 6584390, 0xE300000000000000);
}

uint64_t sub_20D832854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v7[36] = a1;
  v7[37] = a2;
  v7[38] = a3;
  v7[39] = a4;
  v7[40] = v4;

  v8 = v6[29];
  v9 = v6[28];
  if (v4)
  {
    v10 = sub_20D8332B0;
  }

  else
  {
    v10 = sub_20D8329A0;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_20D8329A0()
{
  v31 = v0;
  v1 = sub_20D972958();
  v2 = v0[37];
  if (v1)
  {
    v3 = v0[36];
    v5 = v0[33];
    v4 = v0[34];
    v6 = v0[22];
    v7 = v0[16];
    swift_getKeyPath();
    v0[14] = v7;
    sub_20D972858();

    sub_20D84BC18(v7 + v5, v6, type metadata accessor for GridForecastSnapshotType);
    v30 = 1;

    sub_20D835560(v6, &v30, 0, 0, v3, v2);

    sub_20D84BADC(v6, type metadata accessor for GridForecastSnapshotType);
    v8 = swift_task_alloc();
    v0[41] = v8;
    *v8 = v0;
    v8[1] = sub_20D832E04;

    return sub_20D839CBC(v4, 6584390, 0xE300000000000000);
  }

  else
  {

    v10 = sub_20D9734D8();
    v11 = sub_20D975478();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[39];
      v26 = v0[38];
      v14 = v0[36];
      v13 = v0[37];
      v15 = v0[16];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315906;
      *(v16 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v29);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_20D7F4DC8(*(v15 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v15 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v29);
      *(v16 + 22) = 2080;

      v18 = sub_20D7F4DC8(v14, v13, &v29);

      *(v16 + 24) = v18;
      *(v16 + 32) = 2080;

      v19 = sub_20D7F4DC8(v26, v12, &v29);

      *(v16 + 34) = v19;
      _os_log_impl(&dword_20D7C9000, v10, v11, "\t...%s(%s): %s/%s UNSUPPORTED REGION", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v17, -1, -1);
      MEMORY[0x20F324260](v16, -1, -1);
    }

    v21 = v0[36];
    v20 = v0[37];
    v22 = v0[33];
    v27 = v0[34];
    v23 = v0[22];
    v24 = v0[16];
    swift_getKeyPath();
    v0[13] = v24;
    sub_20D972858();

    sub_20D84BC18(v24 + v22, v23, type metadata accessor for GridForecastSnapshotType);

    v28 = 6;
    sub_20D835560(v23, &v28, 0, 0, v21, v20);

    sub_20D84BADC(v23, type metadata accessor for GridForecastSnapshotType);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_20D832E04(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[42] = a1;
  v5[43] = a2;
  v5[44] = v2;

  v6 = v4[29];
  v7 = v4[28];
  if (v2)
  {
    v8 = sub_20D8336EC;
  }

  else
  {
    v8 = sub_20D832F4C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20D832F4C()
{
  v13 = v0;
  v1 = v0[43];
  v2 = v0[37];
  v10 = v0[36];
  v11 = v0[42];
  v3 = v0[33];
  v4 = v0[22];
  v5 = v0[16];
  swift_getKeyPath();
  v0[15] = v5;

  sub_20D972858();

  sub_20D84BC18(v5 + v3, v4, type metadata accessor for GridForecastSnapshotType);

  v12 = 2;
  sub_20D835560(v4, &v12, v11, v1, v10, v2);

  sub_20D84BADC(v4, type metadata accessor for GridForecastSnapshotType);
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_20D8330D4;
  v8 = v0[42];
  v7 = v0[43];

  return GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(v8, v7, 0);
}

uint64_t sub_20D8330D4()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_20D833B3C;
  }

  else
  {

    v3 = *(v2 + 224);
    v4 = *(v2 + 232);
    v5 = sub_20D8331F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D8331F0()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D8332B0()
{
  v25 = v0;

  v1 = *(v0 + 320);

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v24);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v24);
    *(v6 + 22) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v10;
    *v7 = v10;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): ERROR: %@", v6, 0x20u);
    sub_20D7E3944(v7, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  *(v0 + 96) = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 376);
  }

  else
  {

    v13 = v1;
    v14 = sub_20D9734D8();
    v15 = sub_20D975458();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 128);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v17 = 136315650;
      *(v17 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v24);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_20D7F4DC8(*(v16 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v16 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v24);
      *(v17 + 22) = 2112;
      v20 = v1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v21;
      *v18 = v21;
      _os_log_impl(&dword_20D7C9000, v14, v15, "%s(%s): UNEXPECTED ISSUE: %@", v17, 0x20u);
      sub_20D7E3944(v18, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v19, -1, -1);
      MEMORY[0x20F324260](v17, -1, -1);
    }

    v12 = 11;
  }

  LOBYTE(v24) = v12;
  sub_20D83CC04(&v24, 0, 0xE000000000000000);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_20D8336EC()
{
  v26 = v0;
  v1 = *(v0 + 272);

  v2 = *(v0 + 352);

  v3 = v2;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v25);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v25);
    *(v7 + 22) = 2112;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s): ERROR: %@", v7, 0x20u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  *(v0 + 96) = v2;
  v12 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 376);
  }

  else
  {

    v14 = v2;
    v15 = sub_20D9734D8();
    v16 = sub_20D975458();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 128);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v18 = 136315650;
      *(v18 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v25);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_20D7F4DC8(*(v17 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v17 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v25);
      *(v18 + 22) = 2112;
      v21 = v2;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v22;
      *v19 = v22;
      _os_log_impl(&dword_20D7C9000, v15, v16, "%s(%s): UNEXPECTED ISSUE: %@", v18, 0x20u);
      sub_20D7E3944(v19, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v19, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v20, -1, -1);
      MEMORY[0x20F324260](v18, -1, -1);
    }

    v13 = 11;
  }

  LOBYTE(v25) = v13;
  sub_20D83CC04(&v25, 0, 0xE000000000000000);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_20D833B3C()
{
  v27 = v0;

  v1 = *(v0 + 368);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);

  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v26);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(*(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v26);
    *(v8 + 22) = 2112;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v12;
    *v9 = v12;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s(%s): ERROR: %@", v8, 0x20u);
    sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  *(v0 + 96) = v1;
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v14 = *(v0 + 376);
  }

  else
  {

    v15 = v1;
    v16 = sub_20D9734D8();
    v17 = sub_20D975458();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 128);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v19 = 136315650;
      *(v19 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v26);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_20D7F4DC8(*(v18 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v18 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v26);
      *(v19 + 22) = 2112;
      v22 = v1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v23;
      *v20 = v23;
      _os_log_impl(&dword_20D7C9000, v16, v17, "%s(%s): UNEXPECTED ISSUE: %@", v19, 0x20u);
      sub_20D7E3944(v20, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v20, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v21, -1, -1);
      MEMORY[0x20F324260](v19, -1, -1);
    }

    v14 = 11;
  }

  LOBYTE(v26) = v14;
  sub_20D83CC04(&v26, v3, v2);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t GridForecastSnapshotManager.deinit()
{
  sub_20D84BADC(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot, type metadata accessor for GridForecastSnapshot);
  sub_20D84BADC(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot, type metadata accessor for GridForecastSnapshot);

  v1 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v2 = sub_20D972898();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GridForecastSnapshotManager.__deallocating_deinit()
{
  sub_20D84BADC(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot, type metadata accessor for GridForecastSnapshot);
  sub_20D84BADC(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot, type metadata accessor for GridForecastSnapshot);

  v1 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v2 = sub_20D972898();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_20D834120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  type metadata accessor for GridForecastSnapshotType(0);
  v4[14] = swift_task_alloc();
  type metadata accessor for GridForecastSnapshot(0);
  v4[15] = swift_task_alloc();
  sub_20D9752E8();
  v4[16] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[17] = v6;
  v4[18] = v5;

  return MEMORY[0x2822009F8](sub_20D834210, v6, v5);
}

uint64_t sub_20D834210()
{
  v24 = v0;
  v1 = *(v0[13] + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_cachedLocationIsAuthorized);
  if (v1 == 2 || (v1 & 1) == 0)
  {

    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v13 = sub_20D9734F8();
    __swift_project_value_buffer(v13, qword_28112AC00);

    v14 = sub_20D9734D8();
    v15 = sub_20D975458();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[13];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, &v23);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_20D7F4DC8(*(v16 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v16 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v23);
      _os_log_impl(&dword_20D7C9000, v14, v15, "%s(%s): Location NOT authorized", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v18, -1, -1);
      MEMORY[0x20F324260](v17, -1, -1);
    }

    v20 = v0[13];
    v19 = v0[14];
    swift_getKeyPath();
    v0[8] = v20;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972858();

    v21 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v20 + v21, v19, type metadata accessor for GridForecastSnapshotType);
    LOBYTE(v23) = 3;
    sub_20D835560(v19, &v23, 0, 0, 0, 0);
    sub_20D84BADC(v19, type metadata accessor for GridForecastSnapshotType);

    v22 = v0[1];

    return v22();
  }

  else
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v2 = sub_20D9734F8();
    v0[19] = __swift_project_value_buffer(v2, qword_28112AC00);

    v3 = sub_20D9734D8();
    v4 = sub_20D975478();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[13];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136315650;
      *(v6 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, &v23);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v23);
      *(v6 + 22) = 2080;
      swift_getKeyPath();
      v0[12] = v5;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
      sub_20D972858();

      if (*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot))
      {
        v8 = 0x7420747372696628;
      }

      else
      {
        v8 = 0x676F7270206E6928;
      }

      if (*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot))
      {
        v9 = 0xEC00000029656D69;
      }

      else
      {
        v9 = 0xED00002973736572;
      }

      v10 = sub_20D7F4DC8(v8, v9, &v23);

      *(v6 + 24) = v10;
      _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): getting loc from daemon...%s", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v7, -1, -1);
      MEMORY[0x20F324260](v6, -1, -1);
    }

    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_20D8347A0;

    return sub_20D84D5B8();
  }
}

uint64_t sub_20D8347A0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);

  return MEMORY[0x2822009F8](sub_20D8348C8, v4, v3);
}

uint64_t sub_20D8348C8()
{
  v52 = v0;
  v1 = v0[21];
  if (!v1)
  {

    v21 = sub_20D9734D8();
    v22 = sub_20D975458();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[13];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v51[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, v51);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_20D7F4DC8(*(v23 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v23 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v51);
      _os_log_impl(&dword_20D7C9000, v21, v22, "%s(%s): Could not retrieve Current Location!", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v25, -1, -1);
      MEMORY[0x20F324260](v24, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v51[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, v51);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v51);
    *(v6 + 22) = 2080;
    v8 = sub_20D972F48();
    v10 = sub_20D7F4DC8(v8, v9, v51);

    *(v6 + 24) = v10;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): daemon returned current loc: %s...", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v11 = v2;
  v12 = sub_20D9734D8();
  v13 = sub_20D975448();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[21];
    v15 = v0[13];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v51[0] = v18;
    *v16 = 136315650;
    *(v16 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, v51);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20D7F4DC8(*(v15 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v15 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v51);
    *(v16 + 22) = 2112;
    *(v16 + 24) = v11;
    *v17 = v14;
    v19 = v11;
    _os_log_impl(&dword_20D7C9000, v12, v13, "\t...%s(%s): CL: %@", v16, 0x20u);
    sub_20D7E3944(v17, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v18, -1, -1);
    MEMORY[0x20F324260](v16, -1, -1);
  }

  v20 = v0[13];
  swift_getKeyPath();
  v0[22] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v0[9] = v20;
  v0[23] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  if (*(v20 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot))
  {

LABEL_11:

    v26 = v0[1];

    return v26();
  }

  v28 = v0[13];
  swift_getKeyPath();
  v29 = swift_task_alloc();
  *(v29 + 16) = v28;
  *(v29 + 24) = 1;
  v0[10] = v28;
  sub_20D972848();

  v30 = v11;
  v31 = sub_20D9734D8();
  v32 = sub_20D975478();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0[13];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v51[0] = v35;
    *v34 = 136315650;
    *(v34 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, v51);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_20D7F4DC8(*(v33 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v33 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v51);
    *(v34 + 22) = 2080;
    v36 = sub_20D972F48();
    v38 = sub_20D7F4DC8(v36, v37, v51);

    *(v34 + 24) = v38;
    _os_log_impl(&dword_20D7C9000, v31, v32, "%s(%s): INITIALIZED w/ %s Current Location...", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v35, -1, -1);
    MEMORY[0x20F324260](v34, -1, -1);
  }

  v39 = v30;
  v40 = sub_20D9734D8();
  v41 = sub_20D975448();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = v0[21];
    v43 = v0[13];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51[0] = v46;
    *v44 = 136315650;
    *(v44 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, v51);
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_20D7F4DC8(*(v43 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v43 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v51);
    *(v44 + 22) = 2112;
    *(v44 + 24) = v39;
    *v45 = v42;
    v47 = v39;
    _os_log_impl(&dword_20D7C9000, v40, v41, "\t...%s(%s): CL: %@", v44, 0x20u);
    sub_20D7E3944(v45, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v45, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v46, -1, -1);
    MEMORY[0x20F324260](v44, -1, -1);
  }

  v48 = v39;
  v49 = swift_task_alloc();
  v0[24] = v49;
  *v49 = v0;
  v49[1] = sub_20D83519C;
  v50 = v0[21];

  return sub_20D836348(v50);
}

uint64_t sub_20D83519C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_20D8352DC, v4, v3);
}

uint64_t sub_20D8352DC()
{
  v17 = v0;

  v1 = sub_20D9734D8();
  v2 = sub_20D975478();

  if (os_log_type_enabled(v1, v2))
  {
    v15 = v0[21];
    v3 = v0[15];
    v4 = v0[13];
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v5 = 136315650;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, &v16);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v16);
    *(v5 + 22) = 2080;
    swift_getKeyPath();
    v0[11] = v4;
    sub_20D972858();

    v6 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v4 + v6, v3, type metadata accessor for GridForecastSnapshot);
    v7 = GridForecastSnapshot.description.getter();
    v9 = v8;
    sub_20D84BADC(v3, type metadata accessor for GridForecastSnapshot);
    v10 = sub_20D7F4DC8(v7, v9, &v16);

    *(v5 + 24) = v10;
    _os_log_impl(&dword_20D7C9000, v1, v2, "%s(%s): updated locationSnapshot: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  else
  {
    v11 = v0[21];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_20D835560(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v116 = a2;
  v111 = a4;
  v112 = a6;
  v109 = a3;
  v110 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v101 - v8;
  v113 = sub_20D9729D8();
  v108 = *(v113 - 8);
  v10 = MEMORY[0x28223BE20](v113);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v101 - v13;
  v15 = type metadata accessor for GridForecastSnapshotType(0);
  v16 = MEMORY[0x28223BE20](v15);
  v107 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v101 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = (&v101 - v21);
  v23 = type metadata accessor for GridForecastSnapshot(0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v114 = &v101 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v101 - v30;
  MEMORY[0x28223BE20](v29);
  v115 = &v101 - v32;
  LODWORD(v116) = *v116;
  sub_20D84BC18(a1, v22, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D84BADC(v22, type metadata accessor for GridForecastSnapshotType);
    v64 = v20;
    v106 = v20;
    v107 = type metadata accessor for GridForecastSnapshotType;
    sub_20D84BC18(a1, v20, type metadata accessor for GridForecastSnapshotType);
    static EnergyWindows.mockNoCleanEnergyWindows()(v14);
    v65 = v109;
    if (!v111)
    {
      v65 = 0;
    }

    v109 = v65;
    v66 = 0xE000000000000000;
    if (v111)
    {
      v67 = v111;
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    v104 = v67;
    v68 = v110;
    if (!v112)
    {
      v68 = 0;
    }

    v110 = v68;
    v69 = v108;
    if (v112)
    {
      v66 = v112;
    }

    v105 = v66;
    sub_20D84BC18(v64, v31, type metadata accessor for GridForecastSnapshotType);
    v70 = *(v69 + 16);
    v71 = v113;
    v70(&v31[v23[5]], v14, v113);
    v72 = &v31[v23[6]];
    v73 = v104;
    *v72 = v109;
    v72[1] = v73;
    v74 = &v31[v23[7]];
    v75 = v105;
    *v74 = v110;
    v74[1] = v75;
    v31[v23[9]] = v116;
    v70(v9, v14, v71);
    (*(v69 + 56))(v9, 0, 1, v71);

    sub_20D87934C(v9);
    v77 = v76;
    sub_20D7E3944(v9, &qword_27C838A00, &qword_20D976750);
    v119[0] = v77;
    v78 = sub_20D8797EC(v119);

    (*(v69 + 8))(v14, v71);
    sub_20D84BADC(v106, v107);
    *&v31[v23[8]] = v78;
    v79 = v31;
    v51 = v115;
    sub_20D84E098(v79, v115, type metadata accessor for GridForecastSnapshot);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v80 = sub_20D9734F8();
    __swift_project_value_buffer(v80, qword_28112AC00);
    v81 = v117;

    v82 = sub_20D9734D8();
    v83 = sub_20D975448();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v119[0] = v85;
      *v84 = 136315650;
      *(v84 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D984410, v119);
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_20D7F4DC8(*(v81 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v81 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v119);
      *(v84 + 22) = 2080;
      swift_beginAccess();
      v86 = GridForecastSnapshot.description.getter();
      v88 = sub_20D7F4DC8(v86, v87, v119);

      *(v84 + 24) = v88;
      _os_log_impl(&dword_20D7C9000, v82, v83, "%s(%s): CL: %s", v84, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v85, -1, -1);
      MEMORY[0x20F324260](v84, -1, -1);
    }

    swift_beginAccess();
    v89 = v114;
    sub_20D84BC18(v51, v114, type metadata accessor for GridForecastSnapshot);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v118 = v81;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v89, type metadata accessor for GridForecastSnapshot);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v106 = v22;

    v34 = a1;
    v35 = v107;
    v105 = type metadata accessor for GridForecastSnapshotType;
    sub_20D84BC18(v34, v107, type metadata accessor for GridForecastSnapshotType);
    static EnergyWindows.mockNoCleanEnergyWindows()(v12);
    v36 = v109;
    if (!v111)
    {
      v36 = 0;
    }

    v109 = v36;
    v37 = 0xE000000000000000;
    if (v111)
    {
      v38 = v111;
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    v102 = v38;
    v39 = v110;
    if (!v112)
    {
      v39 = 0;
    }

    v110 = v39;
    if (v112)
    {
      v37 = v112;
    }

    v103 = v37;
    sub_20D84BC18(v35, v26, type metadata accessor for GridForecastSnapshotType);
    v40 = v108;
    v41 = *(v108 + 16);
    v42 = &v26[v23[5]];
    v104 = v12;
    v43 = v113;
    v41(v42, v12, v113);
    v44 = &v26[v23[6]];
    v45 = v102;
    *v44 = v109;
    v44[1] = v45;
    v46 = &v26[v23[7]];
    v47 = v103;
    *v46 = v110;
    v46[1] = v47;
    v26[v23[9]] = v116;
    v41(v9, v12, v43);
    (*(v40 + 56))(v9, 0, 1, v43);

    sub_20D87934C(v9);
    v49 = v48;
    sub_20D7E3944(v9, &qword_27C838A00, &qword_20D976750);
    v119[0] = v49;
    v50 = sub_20D8797EC(v119);

    (*(v40 + 8))(v104, v43);
    sub_20D84BADC(v107, v105);
    *&v26[v23[8]] = v50;
    v51 = v115;
    sub_20D84E098(v26, v115, type metadata accessor for GridForecastSnapshot);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v52 = sub_20D9734F8();
    __swift_project_value_buffer(v52, qword_28112AC00);
    v53 = v117;

    v54 = sub_20D9734D8();
    v55 = sub_20D975448();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v119[0] = v57;
      *v56 = 136315650;
      *(v56 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D984410, v119);
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_20D7F4DC8(*(v53 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v53 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v119);
      *(v56 + 22) = 2080;
      swift_beginAccess();
      v58 = GridForecastSnapshot.description.getter();
      v60 = sub_20D7F4DC8(v58, v59, v119);

      *(v56 + 24) = v60;
      _os_log_impl(&dword_20D7C9000, v54, v55, "%s(%s): F: %s", v56, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v57, -1, -1);
      MEMORY[0x20F324260](v56, -1, -1);
    }

    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    swift_beginAccess();
    v62 = v114;
    sub_20D84BC18(v51, v114, type metadata accessor for GridForecastSnapshot);
    v63 = swift_getKeyPath();
    MEMORY[0x28223BE20](v63);
    v118 = v53;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v62, type metadata accessor for GridForecastSnapshot);
    sub_20D7E3944(v106 + v61, &qword_27C8389F8, &qword_20D978460);
LABEL_31:
    v91 = type metadata accessor for GridForecastSnapshot;
    v92 = v51;
    return sub_20D84BADC(v92, v91);
  }

  v93 = v22;
  if ((sub_20D972ED8() & 1) == 0)
  {
    v94 = v117;
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v95 = sub_20D9734F8();
    __swift_project_value_buffer(v95, qword_28112AC00);

    v96 = sub_20D9734D8();
    v97 = sub_20D975458();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v119[0] = v99;
      *v98 = 136315394;
      *(v98 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D984410, v119);
      *(v98 + 12) = 2080;
      *(v98 + 14) = sub_20D7F4DC8(*(v94 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v94 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v119);
      _os_log_impl(&dword_20D7C9000, v96, v97, "%s(%s): This method is only for location & fixed snapshots", v98, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v99, -1, -1);
      MEMORY[0x20F324260](v98, -1, -1);
    }

    v91 = type metadata accessor for GridForecastSnapshotType;
    v92 = v93;
    return sub_20D84BADC(v92, v91);
  }

  result = sub_20D975738();
  __break(1u);
  return result;
}

uint64_t sub_20D836348(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v2[6] = swift_task_alloc();
  v3 = sub_20D9729D8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for GridForecastSnapshot(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for GridForecastSnapshotType(0);
  v2[14] = swift_task_alloc();
  sub_20D9752E8();
  v2[15] = sub_20D9752D8();
  v5 = sub_20D975298();
  v2[16] = v5;
  v2[17] = v4;

  return MEMORY[0x2822009F8](sub_20D8364E0, v5, v4);
}

uint64_t sub_20D8364E0()
{
  v47 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_20D9734F8();
  v0[18] = __swift_project_value_buffer(v2, qword_28112AC00);
  v3 = v1;

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46[0] = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, v46);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v46);
    *(v7 + 22) = 2080;
    v9 = sub_20D972F48();
    v11 = sub_20D7F4DC8(v9, v10, v46);

    *(v7 + 24) = v11;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s): updating location snapshot with new location (%s)...", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  v12 = v3;
  v13 = sub_20D9734D8();
  v14 = sub_20D975448();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v46[0] = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, v46);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_20D7F4DC8(*(v15 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v15 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v46);
    *(v17 + 22) = 2080;
    if (v16)
    {
      v19 = [v12 description];
      v20 = sub_20D975098();
      v22 = v21;
    }

    else
    {
      v22 = 0xE500000000000000;
      v20 = 0x3E6C696E3CLL;
    }

    v23 = sub_20D7F4DC8(v20, v22, v46);

    *(v17 + 24) = v23;
    _os_log_impl(&dword_20D7C9000, v13, v14, "\t...%s(%s): new loc:%s...", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v18, -1, -1);
    MEMORY[0x20F324260](v17, -1, -1);
  }

  v24 = v0[4];
  if (v24)
  {
    v25 = v0[14];
    *v25 = v24;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v46[0]) = 0;
    v26 = v12;
    sub_20D835560(v25, v46, 0, 0, 0, 0);
    sub_20D84BADC(v25, type metadata accessor for GridForecastSnapshotType);
    v27 = swift_task_alloc();
    v0[19] = v27;
    *v27 = v0;
    v27[1] = sub_20D836BF8;

    return sub_20D8382CC(v26, 6516556, 0xE300000000000000);
  }

  else
  {
    v29 = v0[14];
    v30 = v0[12];
    v31 = v0[10];
    v33 = v0[8];
    v32 = v0[9];
    v35 = v0[6];
    v34 = v0[7];
    v44 = v0[11];
    v45 = v0[5];

    *v29 = 0;
    swift_storeEnumTagMultiPayload();
    static EnergyWindows.mockNoCleanEnergyWindows()(v32);
    sub_20D84BC18(v29, v30, type metadata accessor for GridForecastSnapshotType);
    v36 = *(v33 + 16);
    v36(v30 + v31[5], v32, v34);
    v37 = (v30 + v31[6]);
    *v37 = 11565;
    v37[1] = 0xE200000000000000;
    v38 = (v30 + v31[7]);
    *v38 = 11565;
    v38[1] = 0xE200000000000000;
    *(v30 + v31[9]) = 4;
    v36(v35, v32, v34);
    (*(v33 + 56))(v35, 0, 1, v34);
    sub_20D87934C(v35);
    v40 = v39;
    sub_20D7E3944(v35, &qword_27C838A00, &qword_20D976750);
    v46[0] = v40;
    v41 = sub_20D8797EC(v46);

    (*(v33 + 8))(v32, v34);
    sub_20D84BADC(v29, type metadata accessor for GridForecastSnapshotType);
    *(v30 + v31[8]) = v41;
    sub_20D84BC18(v30, v44, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v42 = swift_task_alloc();
    *(v42 + 16) = v45;
    *(v42 + 24) = v44;
    v0[2] = v45;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v30, type metadata accessor for GridForecastSnapshot);

    sub_20D84BADC(v44, type metadata accessor for GridForecastSnapshot);

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_20D836BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  *(v6 + 160) = a1;
  *(v6 + 168) = a2;
  *(v6 + 176) = a3;
  *(v6 + 184) = a4;
  *(v6 + 192) = v4;

  if (v4)
  {

    v7 = *(v6 + 128);
    v8 = *(v6 + 136);
    v9 = sub_20D837654;
  }

  else
  {
    v7 = *(v6 + 128);
    v8 = *(v6 + 136);
    v9 = sub_20D836D1C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_20D836D1C()
{
  v27 = v0;
  if (sub_20D972958())
  {
    v2 = v0[20];
    v1 = v0[21];
    v3 = v0[14];
    v4 = v0[4];
    *v3 = v4;
    swift_storeEnumTagMultiPayload();
    v26 = 1;
    v5 = v4;

    sub_20D835560(v3, &v26, 0, 0, v2, v1);

    sub_20D84BADC(v3, type metadata accessor for GridForecastSnapshotType);
    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_20D8370F0;

    return sub_20D839CBC(v5, 6516556, 0xE300000000000000);
  }

  else
  {

    v8 = sub_20D9734D8();
    v9 = sub_20D975478();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[23];
      v23 = v0[22];
      v12 = v0[20];
      v11 = v0[21];
      v13 = v0[5];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v25);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_20D7F4DC8(*(v13 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v13 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v25);
      *(v14 + 22) = 2080;

      v16 = sub_20D7F4DC8(v12, v11, &v25);

      *(v14 + 24) = v16;
      *(v14 + 32) = 2080;

      v17 = sub_20D7F4DC8(v23, v10, &v25);

      *(v14 + 34) = v17;
      _os_log_impl(&dword_20D7C9000, v8, v9, "\t...%s(%s): %s/%s UNSUPPORTED REGION", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v15, -1, -1);
      MEMORY[0x20F324260](v14, -1, -1);
    }

    v19 = v0[20];
    v18 = v0[21];
    v20 = v0[14];
    v21 = v0[4];
    *v20 = v21;
    swift_storeEnumTagMultiPayload();

    v24 = 6;
    sub_20D835560(v20, &v24, 0, 0, v19, v18);

    sub_20D84BADC(v20, type metadata accessor for GridForecastSnapshotType);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_20D8370F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = v2;

  if (v2)
  {
    v5 = v4[4];

    v6 = v4[16];
    v7 = v4[17];
    v8 = sub_20D837A78;
  }

  else
  {
    v6 = v4[16];
    v7 = v4[17];
    v8 = sub_20D83722C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_20D83722C()
{
  v11 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[14];
  *v5 = v0[4];
  swift_storeEnumTagMultiPayload();

  v10 = 2;
  sub_20D835560(v5, &v10, v2, v1, v4, v3);

  sub_20D84BADC(v5, type metadata accessor for GridForecastSnapshotType);
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_20D837364;
  v8 = v0[26];
  v7 = v0[27];

  return GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(v8, v7, 1);
}

uint64_t sub_20D837364()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_20D837E9C;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_20D837480;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D837480()
{
  v11 = v0;

  v1 = sub_20D9734D8();
  v2 = sub_20D975478();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v10);
    _os_log_impl(&dword_20D7C9000, v1, v2, "\t...%s(%s): finished.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  else
  {
    v7 = v0[4];
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_20D837654()
{
  v26 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 32);

  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v25);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v25);
    *(v7 + 22) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s):ERROR: %@", v7, 0x20u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  *(v0 + 24) = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 248);
  }

  else
  {

    v14 = v1;
    v15 = sub_20D9734D8();
    v16 = sub_20D975458();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 40);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v18 = 136315650;
      *(v18 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v25);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_20D7F4DC8(*(v17 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v17 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v25);
      *(v18 + 22) = 2112;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v22;
      *v19 = v22;
      _os_log_impl(&dword_20D7C9000, v15, v16, "%s(%s): UNEXPECTED ISSUE: %@", v18, 0x20u);
      sub_20D7E3944(v19, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v19, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v20, -1, -1);
      MEMORY[0x20F324260](v18, -1, -1);
    }

    v13 = 11;
  }

  LOBYTE(v25) = v13;
  sub_20D83CC04(&v25, 0, 0xE000000000000000);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_20D837A78()
{
  v26 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 32);

  v3 = v1;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v25);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v25);
    *(v7 + 22) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s):ERROR: %@", v7, 0x20u);
    sub_20D7E3944(v8, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  *(v0 + 24) = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 248);
  }

  else
  {

    v14 = v1;
    v15 = sub_20D9734D8();
    v16 = sub_20D975458();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 40);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v18 = 136315650;
      *(v18 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v25);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_20D7F4DC8(*(v17 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v17 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v25);
      *(v18 + 22) = 2112;
      v21 = v1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 24) = v22;
      *v19 = v22;
      _os_log_impl(&dword_20D7C9000, v15, v16, "%s(%s): UNEXPECTED ISSUE: %@", v18, 0x20u);
      sub_20D7E3944(v19, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v19, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v20, -1, -1);
      MEMORY[0x20F324260](v18, -1, -1);
    }

    v13 = 11;
  }

  LOBYTE(v25) = v13;
  sub_20D83CC04(&v25, 0, 0xE000000000000000);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_20D837E9C()
{
  v28 = v0;
  v1 = *(v0 + 240);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 32);

  v5 = v1;
  v6 = sub_20D9734D8();
  v7 = sub_20D975458();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v27);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D7F4DC8(*(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v27);
    *(v9 + 22) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s(%s):ERROR: %@", v9, 0x20u);
    sub_20D7E3944(v10, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  *(v0 + 24) = v1;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v15 = *(v0 + 248);
  }

  else
  {

    v16 = v1;
    v17 = sub_20D9734D8();
    v18 = sub_20D975458();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 40);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v20 = 136315650;
      *(v20 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v27);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_20D7F4DC8(*(v19 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v19 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v27);
      *(v20 + 22) = 2112;
      v23 = v1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v24;
      *v21 = v24;
      _os_log_impl(&dword_20D7C9000, v17, v18, "%s(%s): UNEXPECTED ISSUE: %@", v20, 0x20u);
      sub_20D7E3944(v21, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v21, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v22, -1, -1);
      MEMORY[0x20F324260](v20, -1, -1);
    }

    v15 = 11;
  }

  LOBYTE(v27) = v15;
  sub_20D83CC04(&v27, v3, v2);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_20D8382CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  sub_20D9752E8();
  v4[23] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[24] = v6;
  v4[25] = v5;

  return MEMORY[0x2822009F8](sub_20D838368, v6, v5);
}

uint64_t sub_20D838368()
{
  v68 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[26] = __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[22];
    v64 = v0[21];
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v67[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v67);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v67);
    *(v6 + 22) = 2080;
    *(v6 + 24) = sub_20D7F4DC8(v5, v64, v67);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s(%s): for %s snapshot", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v8 = v0[19];
  v61 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v0[27] = v61;

  v9 = v8;
  v10 = sub_20D9734D8();
  v11 = sub_20D975478();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[21];
    v13 = v0[22];
    v14 = v0[20];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v67[0] = v16;
    *v15 = 136315906;
    *(v15 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v67);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20D7F4DC8(*(v13 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v13 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v67);
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_20D7F4DC8(v14, v12, v67);
    *(v15 + 32) = 2080;
    v17 = sub_20D972F48();
    v19 = sub_20D7F4DC8(v17, v18, v67);

    *(v15 + 34) = v19;
    _os_log_impl(&dword_20D7C9000, v10, v11, "%s(%s)%s: attempting reverseGeocodeLocation (%s)...", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v16, -1, -1);
    MEMORY[0x20F324260](v15, -1, -1);
  }

  v63 = (v0 + 18);
  v65 = (v0 + 10);
  v20 = v0[19];

  v21 = v20;
  v22 = sub_20D9734D8();
  v23 = sub_20D975448();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v0[22];
    v60 = v0[21];
    v25 = v0[19];
    v26 = v0[20];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v67[0] = v29;
    *v27 = 136315906;
    *(v27 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v67);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_20D7F4DC8(*(v24 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v24 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v67);
    *(v27 + 22) = 2080;
    *(v27 + 24) = sub_20D7F4DC8(v26, v60, v67);
    *(v27 + 32) = 2112;
    *(v27 + 34) = v25;
    *v28 = v25;
    v30 = v25;
    _os_log_impl(&dword_20D7C9000, v22, v23, "\t...%s(%s)%s: %@", v27, 0x2Au);
    sub_20D7E3944(v28, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v28, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v29, -1, -1);
    MEMORY[0x20F324260](v27, -1, -1);
  }

  if (sub_20D972F68())
  {

    v31 = sub_20D9734D8();
    v32 = sub_20D975458();

    if (os_log_type_enabled(v31, v32))
    {
      v34 = v0[21];
      v33 = v0[22];
      v35 = v0[20];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67[0] = v37;
      *v36 = 136315650;
      *(v36 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v67);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_20D7F4DC8(*(v33 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v33 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v67);
      *(v36 + 22) = 2080;
      *(v36 + 24) = sub_20D7F4DC8(v35, v34, v67);
      _os_log_impl(&dword_20D7C9000, v31, v32, "%s(%s)%s: UNEXPECTED ISSUE: location invalid", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v37, -1, -1);
      MEMORY[0x20F324260](v36, -1, -1);
    }

    sub_20D84D14C();
    v38 = swift_allocError();
    *v39 = 4;
    swift_willThrow();

    v40 = v38;
    v41 = sub_20D9734D8();
    v42 = sub_20D975458();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v0[22];
      v66 = v0[21];
      v62 = v0[20];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v67[0] = v46;
      *v44 = 136315906;
      *(v44 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v67);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_20D7F4DC8(*(v43 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v43 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v67);
      *(v44 + 22) = 2080;
      *(v44 + 24) = sub_20D7F4DC8(v62, v66, v67);
      *(v44 + 32) = 2112;
      v47 = v38;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 34) = v48;
      *v45 = v48;
      _os_log_impl(&dword_20D7C9000, v41, v42, "%s(%s)%s: can't reverseGeocodeLocation: %@", v44, 0x2Au);
      sub_20D7E3944(v45, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v45, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v46, -1, -1);
      MEMORY[0x20F324260](v44, -1, -1);
    }

    *v65 = v38;
    v49 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    type metadata accessor for CLError(0);
    if (swift_dynamicCast())
    {
      v50 = *v63;
      *v65 = *v63;
      sub_20D84DFEC(&qword_281124C90, type metadata accessor for CLError, &unk_20D976520);
      sub_20D9720C8();
      if (*v63 == 2)
      {
        swift_allocError();
        *v51 = 7;
        swift_willThrow();

LABEL_25:
        v58 = v0[1];

        return v58();
      }
    }

    *v65 = v38;
    v54 = v38;
    if (swift_dynamicCast())
    {
      v55 = *v63;
      swift_allocError();
      *v56 = v55;
    }

    else
    {
      swift_allocError();
      *v57 = 7;
    }

    swift_willThrow();
    goto LABEL_25;
  }

  v52 = v0[19];
  v0[2] = v0;
  v0[7] = v63;
  v0[3] = sub_20D838E64;
  v53 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839610, &qword_20D979430);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20D8436E8;
  v0[13] = &block_descriptor_1;
  v0[14] = v53;
  [v61 reverseGeocodeLocation:v52 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20D838E64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_20D83990C;
  }

  else
  {
    v5 = sub_20D838F94;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D838F94()
{
  v66 = v0;

  v2 = (v0 + 18);
  v1 = v0[18];
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_26:

    v26 = sub_20D9734D8();
    v27 = sub_20D975458();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_29;
    }

    v34 = v0[21];
    v35 = v0[22];
    v36 = v0[20];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v65[0] = v32;
    *v31 = 136315650;
    *(v31 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v65);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_20D7F4DC8(*(v35 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v35 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v65);
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_20D7F4DC8(v36, v34, v65);
    v33 = "%s(%s)%s: UNEXPECTED ISSUE: Empty placemark array - please fix";
    goto LABEL_28;
  }

  result = sub_20D975748();
  if (!result)
  {
    goto LABEL_26;
  }

LABEL_3:
  v4 = v1 & 0xC000000000000001;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x20F323850](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v1 + 32);
  }

  v6 = v5;
  v7 = [v5 locality];

  if (!v7)
  {
    v8 = v4 ? MEMORY[0x20F323850](0, v1) : *(v1 + 32);
    v9 = v8;
    v7 = [v8 name];

    if (!v7)
    {
      v10 = 0;
      v12 = 0;
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_14:
      v13 = *(v1 + 32);
      goto LABEL_15;
    }
  }

  v10 = sub_20D975098();
  v12 = v11;

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_12:
  v13 = MEMORY[0x20F323850](0, v1);
LABEL_15:
  v14 = v13;

  v15 = [v14 ISOcountryCode];

  if (v15)
  {
    v16 = sub_20D975098();
    v18 = v17;

    if (v12)
    {
      if (v18)
      {

        v19 = sub_20D9734D8();
        v20 = sub_20D975478();

        v21 = os_log_type_enabled(v19, v20);
        v22 = v0[27];
        if (v21)
        {
          v62 = v0[21];
          v64 = v0[27];
          v59 = v0[22];
          v60 = v0[20];
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v65[0] = v24;
          *v23 = 136316162;
          *(v23 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v65);
          *(v23 + 12) = 2080;
          *(v23 + 14) = sub_20D7F4DC8(*(v59 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v59 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v65);
          *(v23 + 22) = 2080;
          *(v23 + 24) = sub_20D7F4DC8(v60, v62, v65);
          *(v23 + 32) = 2080;
          *(v23 + 34) = sub_20D7F4DC8(v10, v12, v65);
          *(v23 + 42) = 2080;
          *(v23 + 44) = sub_20D7F4DC8(v16, v18, v65);
          _os_log_impl(&dword_20D7C9000, v19, v20, "\t...%s(%s)%s returning %s/%s", v23, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x20F324260](v24, -1, -1);
          MEMORY[0x20F324260](v23, -1, -1);
          v22 = v64;
        }

        v25 = v0[1];

        return v25(v10, v12, v16, v18);
      }
    }
  }

  v26 = sub_20D9734D8();
  v27 = sub_20D975458();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[21];
    v29 = v0[22];
    v30 = v0[20];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v65[0] = v32;
    *v31 = 136315650;
    *(v31 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v65);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_20D7F4DC8(*(v29 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v29 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v65);
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_20D7F4DC8(v30, v28, v65);
    v33 = "%s(%s)%s: UNEXPECTED ISSUE: city/countrycode";
LABEL_28:
    _os_log_impl(&dword_20D7C9000, v26, v27, v33, v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v32, -1, -1);
    MEMORY[0x20F324260](v31, -1, -1);
  }

LABEL_29:

  v37 = (v0 + 10);
  v38 = v0[27];
  sub_20D84D14C();
  v39 = swift_allocError();
  *v40 = 11;
  swift_willThrow();

  v41 = v39;
  v42 = sub_20D9734D8();
  v43 = sub_20D975458();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = v0[22];
    v61 = v0[20];
    v63 = v0[21];
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v65[0] = v47;
    *v45 = 136315906;
    *(v45 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v65);
    *(v45 + 12) = 2080;
    v48 = v44 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log;
    v2 = (v0 + 18);
    *(v45 + 14) = sub_20D7F4DC8(*v48, *(v48 + 8), v65);
    *(v45 + 22) = 2080;
    *(v45 + 24) = sub_20D7F4DC8(v61, v63, v65);
    *(v45 + 32) = 2112;
    v49 = v39;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 34) = v50;
    *v46 = v50;
    _os_log_impl(&dword_20D7C9000, v42, v43, "%s(%s)%s: can't reverseGeocodeLocation: %@", v45, 0x2Au);
    sub_20D7E3944(v46, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v46, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v47, -1, -1);
    MEMORY[0x20F324260](v45, -1, -1);
  }

  *v37 = v39;
  v51 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  type metadata accessor for CLError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_35;
  }

  v52 = *v2;
  *v37 = *v2;
  sub_20D84DFEC(&qword_281124C90, type metadata accessor for CLError, &unk_20D976520);
  sub_20D9720C8();
  if (*v2 != 2)
  {

LABEL_35:
    *v37 = v39;
    v54 = v39;
    if (swift_dynamicCast())
    {
      v55 = *v2;
      sub_20D84D14C();
      swift_allocError();
      *v56 = v55;
    }

    else
    {
      sub_20D84D14C();
      swift_allocError();
      *v57 = 7;
    }

    swift_willThrow();
    goto LABEL_39;
  }

  sub_20D84D14C();
  swift_allocError();
  *v53 = 7;
  swift_willThrow();

LABEL_39:
  v58 = v0[1];

  return v58();
}

uint64_t sub_20D83990C()
{
  v24 = v0;
  v1 = v0[27];

  swift_willThrow();

  v2 = v0[28];

  v3 = v2;
  v4 = sub_20D9734D8();
  v5 = sub_20D975458();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v22 = v0[21];
    v7 = v0[20];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23[0] = v10;
    *v8 = 136315906;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v23);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v23);
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_20D7F4DC8(v7, v22, v23);
    *(v8 + 32) = 2112;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 34) = v12;
    *v9 = v12;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s)%s: can't reverseGeocodeLocation: %@", v8, 0x2Au);
    sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v0[10] = v2;
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  type metadata accessor for CLError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = v0[18];
  v0[10] = v14;
  sub_20D84DFEC(&qword_281124C90, type metadata accessor for CLError, &unk_20D976520);
  sub_20D9720C8();
  if (v0[18] != 2)
  {

LABEL_7:
    v0[10] = v2;
    v16 = v2;
    if (swift_dynamicCast())
    {
      v17 = *(v0 + 144);
      sub_20D84D14C();
      swift_allocError();
      *v18 = v17;
    }

    else
    {
      sub_20D84D14C();
      swift_allocError();
      *v19 = 7;
    }

    swift_willThrow();
    goto LABEL_11;
  }

  sub_20D84D14C();
  swift_allocError();
  *v15 = 7;
  swift_willThrow();

LABEL_11:
  v20 = v0[1];

  return v20();
}

uint64_t sub_20D839CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20D839CE0, 0, 0);
}

uint64_t sub_20D839CE0()
{
  v19 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  *(v0 + 48) = __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000014, 0x800000020D984360, &v18);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v18);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_20D7F4DC8(v6, v4, &v18);
    _os_log_impl(&dword_20D7C9000, v2, v3, "\t...%s(%s):%s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  [*(v0 + 16) coordinate];
  v10 = v9;
  v12 = v11;
  v13 = [objc_opt_self() sharedSession];
  *(v0 + 56) = v13;
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_20D839F6C;
  v15.n128_u64[0] = v10;
  v16.n128_u64[0] = v12;

  return MEMORY[0x282172080](v13, v15, v16);
}

uint64_t sub_20D839F6C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_20D83A0D8, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t sub_20D83A0D8()
{
  v19 = v0;
  v1 = *(v0 + 72);

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = *(v0 + 40);
    v17 = *(v0 + 32);
    v7 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315906;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000014, 0x800000020D984360, &v18);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v18);
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_20D7F4DC8(v7, v17, &v18);
    *(v8 + 32) = 2112;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 34) = v12;
    *v9 = v12;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s):%s: GridIDLookup failed with error: %@", v8, 0x2Au);
    sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  sub_20D84D14C();
  *(v0 + 80) = swift_allocError();
  *(v0 + 88) = v13;
  sub_20D9752E8();
  *(v0 + 96) = sub_20D9752D8();
  v15 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D83A364, v15, v14);
}

uint64_t sub_20D83A364()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  sub_20D8437C8(v2, v1);

  return MEMORY[0x2822009F8](sub_20D83A3E8, 0, 0);
}

uint64_t sub_20D83A3E8(uint64_t a1)
{
  v2 = *(v1 + 72);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 232) = a2;
  *(v4 + 240) = v3;
  *(v4 + 456) = a3;
  *(v4 + 224) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  *(v4 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = type metadata accessor for GridForecastSnapshotType(0);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = type metadata accessor for GridForecastSnapshot(0);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v5 = sub_20D9729D8();
  *(v4 + 328) = v5;
  *(v4 + 336) = *(v5 - 8);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  sub_20D9752E8();
  *(v4 + 360) = sub_20D9752D8();
  v7 = sub_20D975298();
  *(v4 + 368) = v7;
  *(v4 + 376) = v6;

  return MEMORY[0x2822009F8](sub_20D83A664, v7, v6);
}

uint64_t sub_20D83A664()
{
  v29 = v0;
  if (*(v0 + 456))
  {
    v1 = 0x6F4C203A63725328;
  }

  else
  {
    v1 = 0x6946203A63725328;
  }

  if (*(v0 + 456))
  {
    v2 = 0xEA00000000002963;
  }

  else
  {
    v2 = 0xEF2968746F422F78;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v3 = sub_20D9734F8();
  *(v0 + 384) = __swift_project_value_buffer(v3, qword_28112AC00);

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 288);
    v27 = v5;
    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v9 = *(v0 + 224);
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v10 = 136316418;
    *(v10 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, &v28);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20D7F4DC8(*(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v28);
    *(v10 + 22) = 2080;
    *(v10 + 24) = sub_20D7F4DC8(v1, v2, &v28);
    *(v10 + 32) = 2080;
    *(v10 + 34) = sub_20D7F4DC8(v9, v8, &v28);
    *(v10 + 42) = 2080;
    swift_getKeyPath();
    *(v0 + 208) = v7;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
    sub_20D972858();

    v11 = v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
    swift_beginAccess();
    v12 = (v11 + *(v6 + 24));
    v13 = *v12;
    v14 = v12[1];

    v15 = sub_20D7F4DC8(v13, v14, &v28);

    *(v10 + 44) = v15;
    *(v10 + 52) = 2080;
    swift_getKeyPath();
    *(v0 + 216) = v7;
    sub_20D972858();

    v16 = v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    v17 = (v16 + *(v6 + 24));
    v18 = *v17;
    v19 = v17[1];

    v20 = sub_20D7F4DC8(v18, v19, &v28);

    *(v10 + 54) = v20;
    _os_log_impl(&dword_20D7C9000, v4, v27, "\t...%s(%s):%s for gridID: %s. Fixed is currently %s, Loc is currently %s", v10, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v26, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  v21 = swift_task_alloc();
  *(v0 + 392) = v21;
  *v21 = v0;
  v21[1] = sub_20D83AA90;
  v22 = *(v0 + 352);
  v23 = *(v0 + 232);
  v24 = *(v0 + 224);

  return sub_20D841678(v22, v24, v23, v1, v2);
}

uint64_t sub_20D83AA90()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {

    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_20D83CB18;
  }

  else
  {
    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_20D83ABCC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20D83ABCC()
{
  v136 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  swift_getKeyPath();
  *(v0 + 112) = v3;
  *(v0 + 408) = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *(v0 + 416) = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v5 = v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  v110 = v1;
  v127 = v5;
  v6 = (v5 + *(v1 + 24));
  v7 = *v6 == v4 && v6[1] == v2;
  if (v7 || (sub_20D9757C8() & 1) != 0)
  {
    v8 = 0xEA00000000002963;

    v9 = sub_20D9734D8();
    v10 = sub_20D975478();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 240);
      if (*(v0 + 456))
      {
        v12 = 0x6F4C203A63725328;
      }

      else
      {
        v12 = 0x6946203A63725328;
      }

      if (!*(v0 + 456))
      {
        v8 = 0xEF2968746F422F78;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v135[0] = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v135);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_20D7F4DC8(*(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v135);
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_20D7F4DC8(v12, v8, v135);
      _os_log_impl(&dword_20D7C9000, v9, v10, "\t...%s(%s):%s Updating fix snapshot...", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v14, -1, -1);
      MEMORY[0x20F324260](v13, -1, -1);
    }

    v113 = *(v0 + 344);
    v114 = *(v0 + 336);
    v112 = *(v0 + 328);
    v100 = *(v0 + 320);
    v120 = *(v0 + 312);
    v105 = *(v0 + 304);
    v15 = *(v0 + 280);
    v98 = *(v0 + 352);
    v99 = *(v0 + 288);
    v115 = v15;
    v107 = *(v0 + 272);
    v16 = *(v0 + 240);
    v102 = *(v0 + 232);
    v103 = *(v0 + 256);
    v101 = *(v0 + 224);
    swift_getKeyPath();
    *(v0 + 168) = v16;
    v118 = v16;
    sub_20D972858();

    sub_20D84BC18(v127, v15, type metadata accessor for GridForecastSnapshotType);
    v17 = *(v114 + 16);
    v17(v113, v98, v112);
    swift_getKeyPath();
    *(v0 + 176) = v16;
    sub_20D972858();

    v18 = (v127 + v99[7]);
    v20 = *v18;
    v19 = v18[1];
    sub_20D84BC18(v115, v100, type metadata accessor for GridForecastSnapshotType);
    v17(v100 + v99[5], v113, v112);
    v21 = (v100 + *(v110 + 24));
    *v21 = v101;
    v21[1] = v102;
    v22 = (v100 + v99[7]);
    *v22 = v20;
    v22[1] = v19;
    *(v100 + v99[9]) = 12;
    v17(v103, v113, v112);
    (*(v114 + 56))(v103, 0, 1, v112);

    sub_20D87934C(v103);
    v24 = v23;
    sub_20D7E3944(v103, &qword_27C838A00, &qword_20D976750);
    v135[0] = v24;
    v25 = sub_20D8797EC(v135);

    v26 = *(v114 + 8);
    *(v0 + 424) = v26;
    *(v0 + 432) = (v114 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v113, v112);
    sub_20D84BADC(v115, type metadata accessor for GridForecastSnapshotType);
    *(v100 + v99[8]) = v25;
    sub_20D84BC18(v100, v120, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v27 = swift_task_alloc();
    *(v27 + 16) = v118;
    *(v27 + 24) = v120;
    *(v0 + 184) = v118;
    sub_20D972848();

    sub_20D84BADC(v120, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    *(v0 + 192) = v118;
    sub_20D972858();

    sub_20D84BC18(v127, v105, type metadata accessor for GridForecastSnapshot);
    sub_20D84BC18(v105, v107, type metadata accessor for GridForecastSnapshotType);
    sub_20D84BADC(v105, type metadata accessor for GridForecastSnapshot);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = *(v0 + 272);
    v30 = *(v0 + 248);
    if (EnumCaseMultiPayload == 1)
    {

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740);
      sub_20D7E2A54(v29 + *(v31 + 64), v30);
    }

    else
    {
      v32 = sub_20D972698();
      (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
      sub_20D84BADC(v29, type metadata accessor for GridForecastSnapshotType);
    }

    v33 = swift_task_alloc();
    *(v0 + 440) = v33;
    *v33 = v0;
    v33[1] = sub_20D83BE78;
    v34 = *(v0 + 248);
    v36 = *(v0 + 224);
    v35 = *(v0 + 232);

    return sub_20D84BD34(v36, v35, v34);
  }

  else
  {

    v38 = sub_20D9734D8();
    v39 = sub_20D975478();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 240);
      v116 = *(v0 + 224);
      v119 = *(v0 + 232);
      v121 = v39;
      if (*(v0 + 456))
      {
        v41 = 0x6F4C203A63725328;
      }

      else
      {
        v41 = 0x6946203A63725328;
      }

      if (*(v0 + 456))
      {
        v42 = 0xEA00000000002963;
      }

      else
      {
        v42 = 0xEF2968746F422F78;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v135[0] = v44;
      *v43 = 136316162;
      *(v43 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v135);
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_20D7F4DC8(*(v40 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v40 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v135);
      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_20D7F4DC8(v41, v42, v135);
      *(v43 + 32) = 2080;
      swift_getKeyPath();
      *(v0 + 160) = v40;
      sub_20D972858();

      v45 = (v127 + *(v110 + 24));
      v46 = *v45;
      v47 = v45[1];

      v48 = sub_20D7F4DC8(v46, v47, v135);

      *(v43 + 34) = v48;
      *(v43 + 42) = 2080;
      *(v43 + 44) = sub_20D7F4DC8(v116, v119, v135);
      _os_log_impl(&dword_20D7C9000, v38, v121, "\t...%s(%s):%s fix snapshot grid (%s), does not match update grid (%s) - NOT UPDATING", v43, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v44, -1, -1);
      MEMORY[0x20F324260](v43, -1, -1);
    }

    v49 = *(v0 + 288);
    v50 = *(v0 + 232);
    v51 = *(v0 + 240);
    v52 = *(v0 + 224);
    swift_getKeyPath();
    *(v0 + 120) = v51;
    sub_20D972858();

    v53 = v51 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    v122 = v53;
    v54 = (v53 + *(v49 + 24));
    if (*v54 == v52 && v54[1] == v50 || (v66 = *(v0 + 456), (sub_20D9757C8() & 1) != 0) || v66)
    {

      v55 = sub_20D9734D8();
      v56 = sub_20D975478();

      if (os_log_type_enabled(v55, v56))
      {
        if (*(v0 + 456))
        {
          v57 = 0x800000020D9841A0;
        }

        else
        {
          v57 = 0xE000000000000000;
        }

        v58 = *(v0 + 240);
        if (*(v0 + 456))
        {
          v59 = 0xEA00000000002963;
        }

        else
        {
          v59 = 0xEF2968746F422F78;
        }

        if (*(v0 + 456))
        {
          v60 = 0x6F4C203A63725328;
        }

        else
        {
          v60 = 0x6946203A63725328;
        }

        if (*(v0 + 456))
        {
          v61 = 0xD000000000000018;
        }

        else
        {
          v61 = 0;
        }

        v129 = v60;
        v132 = v61;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v135[0] = v63;
        *v62 = 136315906;
        *(v62 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v135);
        *(v62 + 12) = 2080;
        *(v62 + 14) = sub_20D7F4DC8(*(v58 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v58 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v135);
        *(v62 + 22) = 2080;
        v64 = sub_20D7F4DC8(v129, v59, v135);

        *(v62 + 24) = v64;
        *(v62 + 32) = 2080;
        v65 = sub_20D7F4DC8(v132, v57, v135);

        *(v62 + 34) = v65;
        _os_log_impl(&dword_20D7C9000, v55, v56, "\t...%s(%s):%s Updating loc snapshot...%s", v62, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v63, -1, -1);
        MEMORY[0x20F324260](v62, -1, -1);
      }

      else
      {
      }

      v134 = *(v0 + 352);
      v126 = *(v0 + 344);
      v80 = *(v0 + 336);
      v124 = *(v0 + 328);
      v117 = *(v0 + 296);
      v104 = *(v0 + 288);
      v106 = *(v0 + 312);
      v81 = *(v0 + 280);
      v131 = v81;
      v82 = *(v0 + 240);
      v109 = *(v0 + 232);
      v111 = *(v0 + 256);
      v108 = *(v0 + 224);
      swift_getKeyPath();
      *(v0 + 136) = v82;
      sub_20D972858();

      sub_20D84BC18(v122, v81, type metadata accessor for GridForecastSnapshotType);
      v83 = *(v80 + 16);
      v83(v126, v134, v124);
      swift_getKeyPath();
      *(v0 + 144) = v82;
      sub_20D972858();

      v84 = (v122 + v104[7]);
      v86 = *v84;
      v85 = v84[1];
      sub_20D84BC18(v131, v106, type metadata accessor for GridForecastSnapshotType);
      v83(v106 + v104[5], v126, v124);
      v87 = (v106 + v104[6]);
      *v87 = v108;
      v87[1] = v109;
      v88 = (v106 + v104[7]);
      *v88 = v86;
      v88[1] = v85;
      *(v106 + v104[9]) = 12;
      v83(v111, v126, v124);
      (*(v80 + 56))(v111, 0, 1, v124);

      sub_20D87934C(v111);
      v90 = v89;
      sub_20D7E3944(v111, &qword_27C838A00, &qword_20D976750);
      v135[0] = v90;
      v91 = sub_20D8797EC(v135);

      v92 = *(v80 + 8);
      v92(v126, v124);
      sub_20D84BADC(v131, type metadata accessor for GridForecastSnapshotType);
      *(v106 + v104[8]) = v91;
      sub_20D84BC18(v106, v117, type metadata accessor for GridForecastSnapshot);
      swift_getKeyPath();
      v93 = swift_task_alloc();
      *(v93 + 16) = v82;
      *(v93 + 24) = v117;
      *(v0 + 152) = v82;
      sub_20D972848();

      sub_20D84BADC(v106, type metadata accessor for GridForecastSnapshot);
      v92(v134, v124);

      sub_20D84BADC(v117, type metadata accessor for GridForecastSnapshot);
    }

    else
    {

      v67 = sub_20D9734D8();
      v68 = sub_20D975478();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = *(v0 + 336);
        v130 = *(v0 + 328);
        v133 = *(v0 + 352);
        v70 = *(v0 + 240);
        v128 = *(v0 + 232);
        v123 = *(v0 + 288);
        v125 = *(v0 + 224);
        if (*(v0 + 456))
        {
          v71 = 0xEA00000000002963;
        }

        else
        {
          v71 = 0xEF2968746F422F78;
        }

        if (*(v0 + 456))
        {
          v72 = 0x6F4C203A63725328;
        }

        else
        {
          v72 = 0x6946203A63725328;
        }

        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v135[0] = v74;
        *v73 = 136316162;
        *(v73 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v135);
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_20D7F4DC8(*(v70 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v70 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v135);
        *(v73 + 22) = 2080;
        v75 = sub_20D7F4DC8(v72, v71, v135);

        *(v73 + 24) = v75;
        *(v73 + 32) = 2080;
        swift_getKeyPath();
        *(v0 + 128) = v70;
        sub_20D972858();

        v76 = (v122 + *(v123 + 24));
        v77 = *v76;
        v78 = v76[1];

        v79 = sub_20D7F4DC8(v77, v78, v135);

        *(v73 + 34) = v79;
        *(v73 + 42) = 2080;
        *(v73 + 44) = sub_20D7F4DC8(v125, v128, v135);
        _os_log_impl(&dword_20D7C9000, v67, v68, "\t...%s(%s):%s loc snapshot grid (%s), does not match update grid (%s) - NOT UPDATING", v73, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v74, -1, -1);
        MEMORY[0x20F324260](v73, -1, -1);

        (*(v69 + 8))(v133, v130);
      }

      else
      {
        v95 = *(v0 + 352);
        v96 = *(v0 + 328);
        v97 = *(v0 + 336);

        (*(v97 + 8))(v95, v96);
      }
    }

    v94 = *(v0 + 8);

    return v94();
  }
}

uint64_t sub_20D83BE78(char a1)
{
  v4 = *v2;
  *(v4 + 448) = v1;

  v5 = *(v4 + 248);
  if (v1)
  {
    sub_20D7E3944(v5, &qword_27C8389F8, &qword_20D978460);

    v6 = *(v4 + 368);
    v7 = *(v4 + 376);
    v8 = sub_20D83C9FC;
  }

  else
  {
    *(v4 + 457) = a1 & 1;
    sub_20D7E3944(v5, &qword_27C8389F8, &qword_20D978460);
    v6 = *(v4 + 368);
    v7 = *(v4 + 376);
    v8 = sub_20D83C010;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_20D83C010()
{
  v75 = v0;
  v1 = *(v0 + 457);
  v2 = *(v0 + 320);
  v3 = *(v0 + 240);
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v0 + 200) = v3;
  sub_20D972848();

  sub_20D84BADC(v2, type metadata accessor for GridForecastSnapshot);

  v5 = *(v0 + 288);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 224);
  swift_getKeyPath();
  *(v0 + 120) = v6;
  sub_20D972858();

  v9 = v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  swift_beginAccess();
  v70 = v9;
  v10 = (v9 + *(v5 + 24));
  v11 = *v10 == v8 && v10[1] == v7;
  if (v11 || (v12 = *(v0 + 456), (sub_20D9757C8() & 1) != 0) || v12)
  {
    v26 = 0xEA00000000002963;

    v27 = sub_20D9734D8();
    v28 = sub_20D975478();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = 0x800000020D9841A0;
      if (!*(v0 + 456))
      {
        v29 = 0xE000000000000000;
      }

      v72 = v29;
      v30 = *(v0 + 240);
      if (*(v0 + 456))
      {
        v31 = 0x6F4C203A63725328;
      }

      else
      {
        v26 = 0xEF2968746F422F78;
        v31 = 0x6946203A63725328;
      }

      if (*(v0 + 456))
      {
        v32 = 0xD000000000000018;
      }

      else
      {
        v32 = 0;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v74[0] = v34;
      *v33 = 136315906;
      *(v33 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v74);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_20D7F4DC8(*(v30 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v30 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v74);
      *(v33 + 22) = 2080;
      v35 = sub_20D7F4DC8(v31, v26, v74);

      *(v33 + 24) = v35;
      *(v33 + 32) = 2080;
      v36 = sub_20D7F4DC8(v32, v72, v74);

      *(v33 + 34) = v36;
      _os_log_impl(&dword_20D7C9000, v27, v28, "\t...%s(%s):%s Updating loc snapshot...%s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v34, -1, -1);
      MEMORY[0x20F324260](v33, -1, -1);
    }

    else
    {
    }

    v69 = *(v0 + 352);
    v64 = *(v0 + 344);
    v37 = *(v0 + 336);
    v55 = v37;
    v73 = *(v0 + 328);
    v60 = *(v0 + 296);
    v62 = *(v0 + 288);
    v66 = *(v0 + 280);
    v38 = *(v0 + 240);
    v58 = *(v0 + 232);
    v59 = *(v0 + 256);
    v56 = *(v0 + 312);
    v57 = *(v0 + 224);
    swift_getKeyPath();
    *(v0 + 136) = v38;
    sub_20D972858();

    sub_20D84BC18(v70, v66, type metadata accessor for GridForecastSnapshotType);
    v39 = *(v37 + 16);
    v39(v64, v69, v73);
    swift_getKeyPath();
    *(v0 + 144) = v38;
    sub_20D972858();

    v40 = (v70 + v62[7]);
    v42 = *v40;
    v41 = v40[1];
    sub_20D84BC18(v66, v56, type metadata accessor for GridForecastSnapshotType);
    v39(v56 + v62[5], v64, v73);
    v43 = (v56 + v62[6]);
    *v43 = v57;
    v43[1] = v58;
    v44 = (v56 + v62[7]);
    *v44 = v42;
    v44[1] = v41;
    *(v56 + v62[9]) = 12;
    v39(v59, v64, v73);
    (*(v55 + 56))(v59, 0, 1, v73);

    sub_20D87934C(v59);
    v46 = v45;
    sub_20D7E3944(v59, &qword_27C838A00, &qword_20D976750);
    v74[0] = v46;
    v47 = sub_20D8797EC(v74);

    v48 = *(v55 + 8);
    v48(v64, v73);
    sub_20D84BADC(v66, type metadata accessor for GridForecastSnapshotType);
    *(v56 + v62[8]) = v47;
    sub_20D84BC18(v56, v60, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v49 = swift_task_alloc();
    *(v49 + 16) = v38;
    *(v49 + 24) = v60;
    *(v0 + 152) = v38;
    sub_20D972848();

    sub_20D84BADC(v56, type metadata accessor for GridForecastSnapshot);
    v48(v69, v73);

    sub_20D84BADC(v60, type metadata accessor for GridForecastSnapshot);
  }

  else
  {

    v13 = sub_20D9734D8();
    v14 = sub_20D975478();

    if (os_log_type_enabled(v13, v14))
    {
      v71 = *(v0 + 352);
      v15 = *(v0 + 336);
      v68 = *(v0 + 328);
      v16 = *(v0 + 240);
      v65 = *(v0 + 232);
      v61 = *(v0 + 288);
      v63 = *(v0 + 224);
      v67 = v14;
      if (*(v0 + 456))
      {
        v17 = 0xEA00000000002963;
      }

      else
      {
        v17 = 0xEF2968746F422F78;
      }

      if (*(v0 + 456))
      {
        v18 = 0x6F4C203A63725328;
      }

      else
      {
        v18 = 0x6946203A63725328;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v74[0] = v20;
      *v19 = 136316162;
      *(v19 + 4) = sub_20D7F4DC8(0xD000000000000038, 0x800000020D984160, v74);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_20D7F4DC8(*(v16 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v16 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v74);
      *(v19 + 22) = 2080;
      v21 = sub_20D7F4DC8(v18, v17, v74);

      *(v19 + 24) = v21;
      *(v19 + 32) = 2080;
      swift_getKeyPath();
      *(v0 + 128) = v16;
      sub_20D972858();

      v22 = (v70 + *(v61 + 24));
      v24 = *v22;
      v23 = v22[1];

      v25 = sub_20D7F4DC8(v24, v23, v74);

      *(v19 + 34) = v25;
      *(v19 + 42) = 2080;
      *(v19 + 44) = sub_20D7F4DC8(v63, v65, v74);
      _os_log_impl(&dword_20D7C9000, v13, v67, "\t...%s(%s):%s loc snapshot grid (%s), does not match update grid (%s) - NOT UPDATING", v19, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v20, -1, -1);
      MEMORY[0x20F324260](v19, -1, -1);

      (*(v15 + 8))(v71, v68);
    }

    else
    {
      v50 = *(v0 + 352);
      v51 = *(v0 + 328);
      v52 = *(v0 + 336);

      (*(v52 + 8))(v50, v51);
    }
  }

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_20D83C9FC()
{
  v1 = v0[53];
  v2 = v0[44];
  v4 = v0[40];
  v3 = v0[41];

  sub_20D84BADC(v4, type metadata accessor for GridForecastSnapshot);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20D83CB18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D83CC04(unsigned __int8 *a1, uint64_t a2, uint64_t (*a3)(uint64_t a1))
{
  v4 = v3;
  v97 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v84 - v8;
  v9 = sub_20D9729D8();
  v92 = *(v9 - 8);
  v93 = v9;
  MEMORY[0x28223BE20](v9);
  v89 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GridForecastSnapshotType(0);
  MEMORY[0x28223BE20](v11 - 8);
  v98 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for GridForecastSnapshot(0);
  v13 = MEMORY[0x28223BE20](v99);
  v94 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v88 = &v84 - v15;
  v95 = *a1;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v16 = sub_20D9734F8();
  __swift_project_value_buffer(v16, qword_28112AC00);

  v17 = sub_20D9734D8();
  v18 = sub_20D975478();

  v19 = os_log_type_enabled(v17, v18);
  v87 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v103[0] = v22;
    *v20 = 136315650;
    *(v20 + 4) = sub_20D7F4DC8(0xD000000000000022, 0x800000020D9843A0, v103);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v103);
    *(v20 + 22) = 2112;
    sub_20D84D14C();
    swift_allocError();
    *v23 = v95;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 24) = v24;
    *v21 = v24;
    _os_log_impl(&dword_20D7C9000, v17, v18, "\t...%s(%s): creating an error snapshot for %@", v20, 0x20u);
    sub_20D7E3944(v21, &unk_27C839E80, &qword_20D979610);
    v25 = v21;
    a2 = v87;
    MEMORY[0x20F324260](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v22, -1, -1);
    MEMORY[0x20F324260](v20, -1, -1);
  }

  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v103[0] = v4;
  v27 = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v28 = v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  swift_beginAccess();
  v29 = (v28 + *(v99 + 24));
  v30 = v29[1];
  v31 = *v29 == a2;
  v100 = v4;
  v90 = v26;
  v96 = v27;
  if (v31 && v30 == v97 || (sub_20D9757C8() & 1) != 0)
  {
    swift_getKeyPath();
    v102[0] = v4;
    sub_20D972858();

    v32 = v98;
    v86 = type metadata accessor for GridForecastSnapshotType;
    sub_20D84BC18(v28, v98, type metadata accessor for GridForecastSnapshotType);
    v33 = v89;
    static EnergyWindows.mockNoCleanEnergyWindows()(v89);
    swift_getKeyPath();
    v102[0] = v4;
    sub_20D972858();

    v34 = v99;
    v35 = (v28 + *(v99 + 24));
    v36 = v35[1];
    v85 = *v35;
    swift_getKeyPath();
    v37 = v34;
    v102[0] = v100;

    sub_20D972858();

    v38 = (v28 + v34[7]);
    v40 = *v38;
    v39 = v38[1];
    v41 = v32;
    v42 = v88;
    sub_20D84BC18(v41, v88, type metadata accessor for GridForecastSnapshotType);
    v43 = v92;
    v44 = *(v92 + 16);
    v45 = v42 + v37[5];
    v46 = v42;
    v47 = v93;
    v44(v45, v33, v93);
    v48 = (v46 + v37[6]);
    *v48 = v85;
    v48[1] = v36;
    v49 = (v46 + v37[7]);
    *v49 = v40;
    v49[1] = v39;
    *(v46 + v37[9]) = v95;
    v50 = v91;
    v44(v91, v33, v47);
    (*(v43 + 56))(v50, 0, 1, v47);

    sub_20D87934C(v50);
    v52 = v51;
    sub_20D7E3944(v50, &qword_27C838A00, &qword_20D976750);
    v102[0] = v52;
    v53 = sub_20D8797EC(v102);

    (*(v43 + 8))(v33, v47);
    sub_20D84BADC(v98, v86);
    *(v46 + v37[8]) = v53;
    v54 = v94;
    sub_20D84BC18(v46, v94, type metadata accessor for GridForecastSnapshot);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v84 - 2) = v100;
    *(&v84 - 1) = v54;
    v102[0] = v100;
    sub_20D972848();
    v86 = 0;
    v4 = v100;

    sub_20D84BADC(v46, type metadata accessor for GridForecastSnapshot);
    a2 = v87;
    sub_20D84BADC(v54, type metadata accessor for GridForecastSnapshot);
  }

  else
  {
    v86 = 0;
  }

  swift_getKeyPath();
  v102[0] = v4;
  sub_20D972858();

  v56 = v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  v57 = v56 + *(v99 + 24);
  if (*v57 == a2 && *(v57 + 8) == v97 || (result = sub_20D9757C8(), (result & 1) != 0))
  {
    swift_getKeyPath();
    v101 = v4;
    sub_20D972858();

    v59 = v98;
    v97 = type metadata accessor for GridForecastSnapshotType;
    sub_20D84BC18(v56, v98, type metadata accessor for GridForecastSnapshotType);
    v60 = v89;
    static EnergyWindows.mockNoCleanEnergyWindows()(v89);
    swift_getKeyPath();
    v101 = v4;
    sub_20D972858();

    v61 = v99;
    v62 = (v56 + *(v99 + 24));
    v63 = v62[1];
    v87 = *v62;
    swift_getKeyPath();
    v64 = v4;
    v65 = v61;
    v101 = v64;

    sub_20D972858();

    v66 = (v56 + v61[7]);
    v68 = *v66;
    v67 = v66[1];
    v69 = v59;
    v70 = v88;
    sub_20D84BC18(v69, v88, type metadata accessor for GridForecastSnapshotType);
    v71 = v60;
    v73 = v92;
    v72 = v93;
    v74 = *(v92 + 16);
    v74(v70 + v65[5], v71, v93);
    v75 = (v70 + v65[6]);
    *v75 = v87;
    v75[1] = v63;
    v76 = (v70 + v65[7]);
    *v76 = v68;
    v76[1] = v67;
    *(v70 + v65[9]) = v95;
    v77 = v91;
    v74(v91, v71, v72);
    (*(v73 + 56))(v77, 0, 1, v72);

    sub_20D87934C(v77);
    v79 = v78;
    sub_20D7E3944(v77, &qword_27C838A00, &qword_20D976750);
    v101 = v79;
    v80 = sub_20D8797EC(&v101);

    (*(v73 + 8))(v71, v72);
    sub_20D84BADC(v98, v97);
    *(v70 + v65[8]) = v80;
    v81 = v94;
    sub_20D84BC18(v70, v94, type metadata accessor for GridForecastSnapshot);
    v82 = swift_getKeyPath();
    MEMORY[0x28223BE20](v82);
    v83 = v100;
    *(&v84 - 2) = v100;
    *(&v84 - 1) = v81;
    v101 = v83;
    sub_20D972848();

    sub_20D84BADC(v70, type metadata accessor for GridForecastSnapshot);
    return sub_20D84BADC(v81, type metadata accessor for GridForecastSnapshot);
  }

  return result;
}

uint64_t sub_20D83D72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_20D9752E8();
  v4[4] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_20D83D7C4, v6, v5);
}

uint64_t sub_20D83D7C4()
{
  v11 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[7] = __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984600, &v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v10);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s(%s): faking a bell update every 5 seconds", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  else
  {
  }

  v7 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log;
  v0[8] = 0x800000020D984600;
  v0[9] = v7;
  v0[10] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v0[11] = -1;
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_20D83DA0C;

  return MEMORY[0x282200480](5000000000);
}

uint64_t sub_20D83DA0C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_20D83DF38;
  }

  else
  {
    v5 = sub_20D83DB48;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D83DB48()
{
  v20 = v0;
  v1 = v0[11];
  v2 = v0[3];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = !((v1 + 1) & 1);
  v0[2] = v2;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972848();

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = v0[3] + v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000019, v6, v19);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(*v7, *(v7 + 8), v19);
    *(v8 + 22) = 1024;
    *(v8 + 24) = !((v1 + 1) & 1);
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s): New bell = %{BOOL}d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  if (v1 >= 9)
  {

    v11 = sub_20D9734D8();
    v12 = sub_20D975478();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[8];
      v14 = v0[3] + v0[9];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_20D7F4DC8(0xD000000000000019, v13, v19);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_20D7F4DC8(*v14, *(v14 + 8), v19);
      _os_log_impl(&dword_20D7C9000, v11, v12, "%s(%s): no longer faking bell updates", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v16, -1, -1);
      MEMORY[0x20F324260](v15, -1, -1);
    }

    v17 = v0[1];

    return v17();
  }

  else
  {
    v0[11] = v1 + 1;
    v10 = swift_task_alloc();
    v0[12] = v10;
    *v10 = v0;
    v10[1] = sub_20D83DA0C;

    return MEMORY[0x282200480](5000000000);
  }
}

uint64_t sub_20D83DF38()
{
  v24 = v0;
  v1 = v0[13];

  v2 = v1;
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = v0[8];
    v8 = v0[3] + v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD000000000000019, v7, &v23);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D7F4DC8(*v8, *(v8 + 8), &v23);
    *(v9 + 22) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): Could not loop: %@", v9, 0x20u);
    sub_20D7E3944(v10, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  else
  {
  }

  if (v0[11] >= 10)
  {

    v15 = sub_20D9734D8();
    v16 = sub_20D975478();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[8];
      v18 = v0[3] + v0[9];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_20D7F4DC8(0xD000000000000019, v17, &v23);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_20D7F4DC8(*v18, *(v18 + 8), &v23);
      _os_log_impl(&dword_20D7C9000, v15, v16, "%s(%s): no longer faking bell updates", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v20, -1, -1);
      MEMORY[0x20F324260](v19, -1, -1);
    }

    v21 = v0[1];

    return v21();
  }

  else
  {
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_20D83DA0C;

    return MEMORY[0x282200480](5000000000);
  }
}

uint64_t GridForecastSnapshotManager.retrieveFixedSnapshot()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_20D9752E8();
  v2[8] = sub_20D9752D8();
  v4 = sub_20D975298();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_20D83E370, v4, v3);
}

uint64_t sub_20D83E370()
{
  v10 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD000000000000017, 0x800000020D9841C0, &v9);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v9);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s(%s): starting fixed snapshot retrieval", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_20D83E568;

  return sub_20D831DFC();
}

uint64_t sub_20D83E568()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_20D83E688, v3, v2);
}

uint64_t sub_20D83E688()
{
  v1 = v0[7];
  v2 = v0[6];

  swift_getKeyPath();
  v0[5] = v1;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager, &protocol conformance descriptor for GridForecastSnapshotManager);
  sub_20D972858();

  v3 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D84BC18(v1 + v3, v2, type metadata accessor for GridForecastSnapshot);
  v4 = v0[1];

  return v4();
}

uint64_t GridForecastSnapshotManager.retrieveImmediateLocationSnapshotForWidget()(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v2[28] = swift_task_alloc();
  v3 = sub_20D9729D8();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = type metadata accessor for GridForecastSnapshotType(0);
  v2[33] = swift_task_alloc();
  v2[34] = type metadata accessor for GridForecastSnapshot(0);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v2[37] = swift_task_alloc();
  v2[38] = sub_20D9752E8();
  v2[39] = sub_20D9752D8();
  v5 = sub_20D975298();
  v2[40] = v5;
  v2[41] = v4;

  return MEMORY[0x2822009F8](sub_20D83E97C, v5, v4);
}

uint64_t sub_20D83E97C()
{
  v11 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[42] = __swift_project_value_buffer(v1, qword_28112AC00);

  v2 = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[27];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000002CLL, 0x800000020D9841E0, &v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20D7F4DC8(*(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v4 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v10);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s(%s): starting location snapshot retrieval", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v0[43] = sub_20D9752D8();
  v8 = sub_20D975298();
  v0[44] = v8;
  v0[45] = v7;

  return MEMORY[0x2822009F8](sub_20D83EB74, v8, v7);
}

uint64_t sub_20D83EB74()
{
  v1 = v0[37];
  v2 = sub_20D975318();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = sub_20D8450B8(0, 0, v1, &unk_20D979250, v3);
  v0[46] = v4;
  sub_20D7E3944(v1, &unk_27C839F30, &qword_20D978400);
  v5 = swift_task_alloc();
  v0[47] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395D0, &qword_20D979258);
  *v5 = v0;
  v5[1] = sub_20D83ECCC;

  return MEMORY[0x282200460](v0 + 17, v4, v6);
}

uint64_t sub_20D83ECCC()
{
  v1 = *v0;

  v2 = *(v1 + 360);
  v3 = *(v1 + 352);

  return MEMORY[0x2822009F8](sub_20D83EE10, v3, v2);
}