uint64_t sub_221EC8090()
{
  v1 = v0[14];
  sub_221EA4AB4(v0[7] + 80, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = [v1 UUID];
  if (v3)
  {
    v6 = v3;
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    sub_221FB5C18();

    v0[19] = sub_221FB5BE8();
    v0[20] = v10;
    v11 = *(v9 + 8);
    v0[21] = v11;
    v0[22] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);
    v4 = *v2;
    v0[23] = *v2;
    v3 = sub_221EC8414;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221EC8190()
{
  v1 = [*(v0 + 120) _activitySummaryIndex];
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DF0);
  sub_221ED4904(v4, v3, 0);

  v7 = v5;
  v8 = v2;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  sub_221ED4948(v4, v3, 0);
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 144);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  if (v11)
  {
    v15 = *(v0 + 112);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 134218498;
    *(v16 + 4) = v1;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v15;
    *v17 = v15;
    *(v16 + 22) = 2112;
    v18 = v15;
    v19 = v12;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v20;
    v17[1] = v20;
    _os_log_impl(&dword_221E93000, v9, v10, "Failed to store today snapshot anchor %lld, relationship identifier %@, error: %@", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v17, -1, -1);
    MEMORY[0x223DADA80](v16, -1, -1);
    sub_221ED4948(v14, v13, 0);
  }

  else
  {
    sub_221ED4948(*(v0 + 120), *(v0 + 128), 0);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_221EC8414()
{
  v1 = sub_221ECB14C(v0[19], v0[20]);

  if (!v1)
  {
    v1 = sub_221ED7E7C(MEMORY[0x277D84F90]);
  }

  v0[24] = v1;

  return MEMORY[0x2822009F8](sub_221EC84A8, 0, 0);
}

uint64_t sub_221EC84A8()
{
  v35 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  sub_221ED4904(v2, v1, 0);

  v5 = v3;

  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  if (os_log_type_enabled(v6, v7))
  {
    v33 = v7;
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v9 = 136315394;
    v10 = [v8 UUID];

    if (!v10)
    {
      v29 = v0 + 15;
      v28 = v0[15];
      v27 = v29[1];

      sub_221ED4948(v28, v27, 0);

      __break(1u);
      return result;
    }

    v11 = v0[21];
    v30 = v0[15];
    v31 = v0[16];
    v12 = v0[10];
    v13 = v0[8];
    sub_221ED4948(v30, v31, 0);

    sub_221FB5C18();

    v14 = sub_221FB5BE8();
    v16 = v15;
    v11(v12, v13);
    v17 = sub_221EF4114(v14, v16, &v34);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    v18 = sub_221FB6298();
    v20 = v19;

    v21 = sub_221EF4114(v18, v20, &v34);

    *(v9 + 14) = v21;
    _os_log_impl(&dword_221E93000, v6, v33, "Updated snapshot hashes for today: relationship %s, hashes %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v32, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
    sub_221ED4948(v30, v31, 0);
  }

  else
  {
    v23 = v0[15];
    v22 = v0[16];
    v24 = v0[14];
    sub_221ED4948(v23, v22, 0);

    sub_221ED4948(v23, v22, 0);
    swift_bridgeObjectRelease_n();
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_221EC8814(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a1;
  v5 = *(a1 + 24);
  *(v2 + 88) = *(a1 + 16);
  *(v2 + 96) = v5;
  *(v2 + 152) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221EC88F0, 0, 0);
}

id sub_221EC88F0()
{
  if (*(v0 + 152) == 2)
  {
    result = [*(v0 + 88) UUID];
    if (result)
    {
      v2 = result;
      v4 = *(v0 + 56);
      v3 = *(v0 + 64);
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      sub_221FB5C18();

      v7 = sub_221FB5BE8();
      v9 = v8;
      *(v0 + 104) = v7;
      *(v0 + 112) = v8;
      (*(v4 + 8))(v3, v5);
      __swift_project_boxed_opaque_existential_0Tm((v6 + 40), *(v6 + 64));
      v10 = swift_task_alloc();
      *(v0 + 120) = v10;
      *v10 = v0;
      v10[1] = sub_221EC8A80;
      v11 = *(v0 + 96);

      return sub_221ED002C(v11, v7, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }

  return result;
}

uint64_t sub_221EC8A80()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_221EC8EF8;
  }

  else
  {
    v2 = sub_221EC8B9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EC8B9C()
{
  v1 = *(v0 + 40);
  v2 = *__swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v3 = sub_221FB6C18();
  [v2 updateSecureCloudGoalCompletionAnchor_];

  v4 = __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v1[8]);
  v5 = *v4;
  *(v0 + 136) = *v4;

  return MEMORY[0x2822009F8](sub_221EC8C50, v5, 0);
}

uint64_t sub_221EC8C50()
{
  *(v0 + 144) = sub_221ECB2F0(*(v0 + 104), *(v0 + 112));
  *(v0 + 153) = v1;

  return MEMORY[0x2822009F8](sub_221EC8CC4, 0, 0);
}

uint64_t sub_221EC8CC4()
{
  v17 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DF0);

  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 153);
    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    v9 = sub_221EF4114(v6, v5, &v16);

    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    if (v4)
    {
      v10 = 0xE300000000000000;
      v11 = 7104878;
    }

    else
    {
      v12 = *(v0 + 144);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      *(v0 + 32) = v12;
      sub_221FB6A08();
      v11 = *(v0 + 16);
      v10 = *(v0 + 24);
    }

    v13 = sub_221EF4114(v11, v10, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_221E93000, v2, v3, "Updated goal completion anchor for relationship %s, anchor %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_221EC8EF8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[11];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);

  v4 = v2;
  v5 = v1;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[16];
  if (v8)
  {
    v11 = v0[11];
    v10 = v0[12];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 134218498;
    *(v12 + 4) = v10;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v11;
    *v13 = v11;
    *(v12 + 22) = 2112;
    v14 = v11;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    v13[1] = v16;
    _os_log_impl(&dword_221E93000, v6, v7, "Failed to store goal completion anchor %lld, for relationship %@, error: %@", v12, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

id sub_221EC9110(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = [objc_opt_self() snapshotWithActivitySummary_];
  if (v9)
  {
    v10 = [*__swift_project_boxed_opaque_existential_0Tm(v1 v1[3])];
    if (v10)
    {
      v11 = v10;
      sub_221FB5C18();

      v12 = sub_221FB5C38();
      (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    }

    else
    {
      v12 = sub_221FB5C38();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    }

    sub_221EB994C(v6, v8);
    sub_221FB5C38();
    v14 = *(v12 - 8);
    v15 = 0;
    if ((*(v14 + 48))(v8, 1, v12) != 1)
    {
      v15 = sub_221FB5BF8();
      (*(v14 + 8))(v8, v12);
    }

    [v9 setSourceUUID_];

    ASCleanSnapshotForUpload();
  }

  else
  {
    sub_221ED8D78();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_221EC937C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_221FB5C38();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[18] = v7;
  v4[19] = v8;

  return MEMORY[0x2822009F8](sub_221EC94A4, 0, 0);
}

uint64_t sub_221EC94A4()
{
  v1 = [*(v0 + 152) secureCloudZoneName];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1;
  v5 = *(v0 + 152);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();

  sub_221FB6318();
  *(v0 + 160) = sub_221FB65D8();
  *(v0 + 168) = [v6 _activitySummaryIndex];
  sub_221EA4AB4(v7 + 40, v0 + 16);
  v8 = __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
  v1 = [v5 UUID];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v9 = v1;
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  sub_221FB5C18();

  *(v0 + 176) = sub_221FB5BE8();
  *(v0 + 184) = v13;
  v14 = *(v12 + 8);
  *(v0 + 192) = v14;
  *(v0 + 200) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v11);
  v2 = *v8;
  *(v0 + 208) = *v8;
  v1 = sub_221EC9640;
  v3 = 0;

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_221EC9640()
{
  v1 = sub_221ECB2F0(*(v0 + 176), *(v0 + 184));
  v3 = v2;

  *(v0 + 216) = v1;
  *(v0 + 224) = v3;

  return MEMORY[0x2822009F8](sub_221EC96D0, 0, 0);
}

uint64_t sub_221EC96D0()
{
  v42 = v0;
  v1 = *(v0 + 168);
  if (*(v0 + 224))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 216);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = *(v0 + 160);
  if (v2 >= v1)
  {
    v17 = *(v0 + 72);

    *(v17 + 25) = 0u;
    *v17 = 0u;
    v17[1] = 0u;
  }

  else
  {
    v4 = [objc_opt_self() goalCompletionEventWithActivitySummary_];
    v5 = [v4 recordWithZoneID:v3 recordEncryptionType:1];
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 152);
    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v8 = v6;
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();

    if (os_log_type_enabled(v9, v10))
    {
      v39 = v5;
      v40 = v4;
      v11 = *(v0 + 152);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315394;
      v14 = [v11 UUID];
      if (v14)
      {
        v15 = v14;
        sub_221FB5C18();

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      v19 = *(v0 + 120);
      v18 = *(v0 + 128);
      v21 = *(v0 + 104);
      v20 = *(v0 + 112);
      v22 = *(v0 + 96);
      (*(v18 + 56))(v21, v16, 1, v19);
      sub_221EB994C(v21, v20);
      sub_221ED9874(v20, v22, &qword_27CFEBD50, &unk_221FB9FB0);
      if ((*(v18 + 48))(v22, 1, v19) == 1)
      {
        v23 = 0xE300000000000000;
        v24 = 7104878;
      }

      else
      {
        v25 = *(v0 + 192);
        v26 = *(v0 + 136);
        v27 = *(v0 + 120);
        (*(*(v0 + 128) + 32))(v26, *(v0 + 96), v27);
        *(v0 + 56) = 0;
        *(v0 + 64) = 0xE000000000000000;
        sub_221FB6A08();
        v24 = *(v0 + 56);
        v23 = *(v0 + 64);
        v25(v26, v27);
      }

      v28 = *(v0 + 168);
      sub_221E9CFE8(*(v0 + 112), &qword_27CFEBD50, &unk_221FB9FB0);
      v29 = sub_221EF4114(v24, v23, &v41);

      *(v12 + 4) = v29;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v28;
      _os_log_impl(&dword_221E93000, v9, v10, "Creating goal completion update for %s with index %lld", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);

      v5 = v39;
      v4 = v40;
    }

    else
    {
    }

    v31 = *(v0 + 160);
    v30 = *(v0 + 168);
    v32 = *(v0 + 152);
    v33 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_221FB81B0;
    *(v34 + 32) = v5;

    v35 = MEMORY[0x277D84F90];
    *v33 = v34;
    *(v33 + 8) = v35;
    *(v33 + 16) = v32;
    *(v33 + 24) = v30;
    *(v33 + 32) = 0;
    *(v33 + 40) = 2;
    v36 = v32;
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_221EC9AEC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_221EC9B0C, 0, 0);
}

uint64_t sub_221EC9B0C()
{
  v1 = [*__swift_project_boxed_opaque_existential_0Tm(*(v0 + 40) *(*(v0 + 40) + 24))];
  *(v0 + 48) = v1;
  if (!v1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v2 = sub_221FB61B8();
    v8 = sub_221FB65A8();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v2, v8, "No activity summary to push for today", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    goto LABEL_12;
  }

  v2 = v1;
  if (([v1 paused]& 1) != 0)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_221E93000, v4, v5, "Activity summary is paused, not pushing update", v6, 2u);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

LABEL_12:
    v10 = *(v0 + 8);
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }

  v13 = sub_221EC9110(v2);
  *(v0 + 56) = v13;
  v14 = v13;
  v15 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 32);
  v16 = swift_task_alloc();
  *(v0 + 64) = v16;
  *(v16 + 16) = v2;
  *(v16 + 24) = v15;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 0;
  *(v16 + 56) = 0;
  v17 = swift_task_alloc();
  *(v0 + 72) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
  *(v0 + 80) = v18;
  v19 = sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
  *(v0 + 88) = v19;
  *v17 = v0;
  v17[1] = sub_221EC9E9C;

  return MEMORY[0x28213AED0](&unk_221FB9F90, v16, v18, &type metadata for SecureCloudUpdate, v19);
}

void sub_221EC9E9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_221EC9FDC, 0, 0);
  }
}

uint64_t sub_221EC9FDC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);

  v3 = sub_221EC9110(v2);
  *(v0 + 112) = v3;
  if (v1)
  {
    v4 = *(v0 + 48);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = v3;
    if (ASAllGoalsMetForSnapshot())
    {
      *(v0 + 24) = *(v0 + 32);
      v8 = swift_task_alloc();
      *(v0 + 120) = v8;
      v8[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
      v9 = swift_task_alloc();
      *(v0 + 128) = v9;
      *v9 = v0;
      v9[1] = sub_221ECA194;
      v10 = *(v0 + 80);
      v11 = *(v0 + 88);

      return MEMORY[0x28213AED0](&unk_221FB9FA8, v8, v10, &type metadata for SecureCloudUpdate, v11);
    }

    else
    {

      v12 = *(v0 + 48);
      v14 = *(v0 + 96);
      sub_221ED43FC(MEMORY[0x277D84F90]);

      v13 = *(v0 + 8);

      return v13(v14);
    }
  }
}

void sub_221ECA194(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 136) = a1;

    MEMORY[0x2822009F8](sub_221ECA2D8, 0, 0);
  }
}

uint64_t sub_221ECA2D8()
{
  v1 = *(v0 + 48);
  v4 = *(v0 + 96);
  sub_221ED43FC(*(v0 + 136));

  v2 = *(v0 + 8);

  return v2(v4);
}

uint64_t sub_221ECA360(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_221ECA380, 0, 0);
}

uint64_t sub_221ECA380()
{
  v1 = v0[5];
  v0[2] = v0[4];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE40, &qword_221FBD750);
  v0[8] = v4;
  v5 = sub_221EAB9F4(&qword_27CFEBE48, &qword_27CFEBE40, &qword_221FBD750);
  v0[9] = v5;
  *v3 = v0;
  v3[1] = sub_221ECA4A0;

  return MEMORY[0x28213AEC8](&unk_221FB9EF0, v2, v4, v5);
}

void sub_221ECA4A0()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_221ECA5DC, 0, 0);
  }
}

uint64_t sub_221ECA5DC()
{
  v1 = v0[5];
  v0[3] = v0[4];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_221ECA6B0;
  v4 = v0[8];
  v5 = v0[9];

  return MEMORY[0x28213AEC8](&unk_221FB9F08, v2, v4, v5);
}

void sub_221ECA6B0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

void sub_221ECA7E4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v3 = *(v2 + 24);
      v4 = *v2;
      v5 = *(v2 - 1);
      v6 = v4;
      v7 = *(v2 + 1);
      v8 = v3;
      sub_221ECA854(&v5);
      v2 += 6;
      --v1;
    }

    while (v1);
  }
}

void sub_221ECA854(uint64_t *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (*(a1 + 40) == 2)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v13 = sub_221FB61D8();
    __swift_project_value_buffer(v13, qword_281307DF0);

    v14 = v2;
    v8 = sub_221FB61B8();
    v15 = sub_221FB65A8();

    if (os_log_type_enabled(v8, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 134218242;
      *(v16 + 4) = v1;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v14;
      *v17 = v14;
      v18 = v14;
      _os_log_impl(&dword_221E93000, v8, v15, "Failed to update goal completion notification: %lld) relationship: %@", v16, 0x16u);
      sub_221E9CFE8(v17, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v17, -1, -1);
      MEMORY[0x223DADA80](v16, -1, -1);
    }

    goto LABEL_11;
  }

  if (*(a1 + 40))
  {
    return;
  }

  v3 = a1[4];
  v4 = qword_281307080;
  v5 = v1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DF0);
  sub_221ED4904(v1, v3, 0);

  v7 = v2;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65A8();

  sub_221ED4948(v1, v3, 0);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v5;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v1;
    v11[1] = v7;
    sub_221ED4904(v1, v3, 0);
    v12 = v7;
    _os_log_impl(&dword_221E93000, v8, v9, "Failed to update today's summary %@, for relationship %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
    sub_221ED4948(v1, v3, 0);
LABEL_11:

    return;
  }

  sub_221ED4948(v1, v3, 0);
}

uint64_t sub_221ECABB4()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 40), *(*(v0 + 16) + 64));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_221ECAC68;

  return sub_221ECB980();
}

uint64_t sub_221ECAC68()
{

  return MEMORY[0x2822009F8](sub_221ECAD64, 0, 0);
}

uint64_t sub_221ECAD64()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 80), *(*(v0 + 16) + 104));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_221ECAE18;

  return sub_221ECBCD8();
}

uint64_t sub_221ECAE18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221ECAF0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221ECAFA0;

  return sub_221EC9AEC(a1);
}

uint64_t sub_221ECAFA0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_221ECB0A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221ECA360(a1);
}

uint64_t sub_221ECB14C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  if (v3 >= 2)
  {
    if (*(v3 + 16))
    {

      v11 = sub_221ED4B5C(a1, a2);
      if (v12)
      {
        v13 = *(*(v3 + 56) + 8 * v11);

        sub_221E967CC(v3);
        return v13;
      }

      sub_221E967CC(v3);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v15);
      _os_log_impl(&dword_221E93000, v5, v6, "Inactive anchor store: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_221ECB2F0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  if (v3 >= 2)
  {
    if (*(v3 + 16))
    {

      v11 = sub_221ED4B5C(a1, a2);
      if (v12)
      {
        v13 = *(*(v3 + 56) + 8 * v11);
        sub_221E967CC(v3);
        return v13;
      }

      sub_221E967CC(v3);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v15);
      _os_log_impl(&dword_221E93000, v5, v6, "Inactive anchor store: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_221ECB494(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  if (v3 >= 2)
  {
    if (*(v3 + 16))
    {

      v11 = sub_221ED4B5C(a1, a2);
      if (v12)
      {
        v13 = *(*(v3 + 56) + 8 * v11);

        sub_221E967CC(v3);
        return v13;
      }

      sub_221E967CC(v3);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v15);
      _os_log_impl(&dword_221E93000, v5, v6, "Inactive anchor store: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_221ECB638(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  if (v3 >= 2)
  {
    if (*(v3 + 16))
    {

      v11 = sub_221ED4B5C(a1, a2);
      if (v12)
      {
        v13 = *(*(v3 + 56) + 8 * v11);

        sub_221E967CC(v3);
        return v13;
      }

      sub_221E967CC(v3);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v15);
      _os_log_impl(&dword_221E93000, v5, v6, "Inactive anchor store: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_221ECB7DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  if (v3 >= 2)
  {
    if (*(v3 + 16))
    {

      v11 = sub_221ED4B5C(a1, a2);
      if (v12)
      {
        v13 = *(*(v3 + 56) + 8 * v11);

        sub_221E967CC(v3);
        return v13;
      }

      sub_221E967CC(v3);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v15);
      _os_log_impl(&dword_221E93000, v5, v6, "Inactive anchor store: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_221ECB9A0()
{
  v16 = v0;
  v1 = v0[2];
  if (v1[22] == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v2 = sub_221FB61D8();
      __swift_project_value_buffer(v2, qword_281307DF0);
      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v15);
        _os_log_impl(&dword_221E93000, v3, v4, "Preparing anchor store for protected data change: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_221EAC1E0;

      return sub_221ED1B44(1);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v15);
      _os_log_impl(&dword_221E93000, v10, v11, "Protected data is unavailable on prepare: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_221ECBCF8()
{
  v16 = v0;
  v1 = v0[2];
  if (v1[22] == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v2 = sub_221FB61D8();
      __swift_project_value_buffer(v2, qword_281307DF0);
      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v15);
        _os_log_impl(&dword_221E93000, v3, v4, "Preparing anchor store for protected data change: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_221EAC1E0;

      return sub_221ED2094(1);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v15);
      _os_log_impl(&dword_221E93000, v10, v11, "Protected data is unavailable on prepare: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_221ECC050()
{
  v16 = v0;
  v1 = v0[2];
  if (v1[22] == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v2 = sub_221FB61D8();
      __swift_project_value_buffer(v2, qword_281307DF0);
      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v15);
        _os_log_impl(&dword_221E93000, v3, v4, "Preparing anchor store for protected data change: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_221EAC1E0;

      return sub_221ED2928(1);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v15);
      _os_log_impl(&dword_221E93000, v10, v11, "Protected data is unavailable on prepare: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_221ECC3A8()
{
  v16 = v0;
  v1 = v0[2];
  if (v1[22] == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v2 = sub_221FB61D8();
      __swift_project_value_buffer(v2, qword_281307DF0);
      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v15);
        _os_log_impl(&dword_221E93000, v3, v4, "Preparing anchor store for protected data change: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_221EAC1E0;

      return sub_221ED2C6C(1);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v15);
      _os_log_impl(&dword_221E93000, v10, v11, "Protected data is unavailable on prepare: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_221ECC700()
{
  v16 = v0;
  v1 = v0[2];
  if (v1[22] == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v2 = sub_221FB61D8();
      __swift_project_value_buffer(v2, qword_281307DF0);
      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v15 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v15);
        _os_log_impl(&dword_221E93000, v3, v4, "Preparing anchor store for protected data change: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_221E9DA9C;

      return sub_221ED25E4(1);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v15);
      _os_log_impl(&dword_221E93000, v10, v11, "Protected data is unavailable on prepare: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_221ECCA58()
{
  v1 = v0[20];
  v2 = v1[19];
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = sub_221FB62E8();
  v5 = [v3 initWithCategory:1 domainName:v4 healthStore:v2];
  v0[21] = v5;

  v0[22] = v1[20];
  v0[23] = v1[21];
  v6 = sub_221FB62E8();
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221ECCC00;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_37;
  v0[14] = v7;
  [v5 dataForKey:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECCC00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_221ED9A04;
  }

  else
  {
    v4 = sub_221ECCD20;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221ECCD20()
{
  v15 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  if (v3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);

    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 176);
      v7 = *(v0 + 184);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_221EF4114(v8, v7, &v14);
      _os_log_impl(&dword_221E93000, v5, v6, "No existing anchor, no data from domain for key: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    else
    {
    }

    v11 = 0;
  }

  else
  {
    sub_221FB5998();
    swift_allocObject();
    sub_221FB5988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE90, &qword_221FB9F68);
    sub_221ED8DF8();
    sub_221FB5978();
    sub_221EBEFE4(v2, v3);

    v11 = *(v0 + 80);
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_221ECD09C()
{
  v1 = v0[20];
  v2 = v1[19];
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = sub_221FB62E8();
  v5 = [v3 initWithCategory:1 domainName:v4 healthStore:v2];
  v0[21] = v5;

  v0[22] = v1[20];
  v0[23] = v1[21];
  v6 = sub_221FB62E8();
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221ECD244;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_57;
  v0[14] = v7;
  [v5 dataForKey:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECD244()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_221ECD6F8;
  }

  else
  {
    v4 = sub_221ECD364;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221ECD364()
{
  v15 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  if (v3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);

    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 176);
      v7 = *(v0 + 184);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_221EF4114(v8, v7, &v14);
      _os_log_impl(&dword_221E93000, v5, v6, "No existing anchor, no data from domain for key: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    else
    {
    }

    v11 = 0;
  }

  else
  {
    sub_221FB5998();
    swift_allocObject();
    sub_221FB5988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF10, &qword_221FBA068);
    sub_221ED925C(&qword_27CFEBF48, sub_221ED92E0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_221FB5978();
    sub_221EBEFE4(v2, v3);

    v11 = *(v0 + 80);
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_221ECD6F8(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[25];
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = v4;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_221E93000, v7, v8, "No existing anchor: %@", v9, 0xCu);
    sub_221E9CFE8(v10, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v13 = v1[1];

  return v13(0);
}

uint64_t sub_221ECD8D0()
{
  v1 = v0[20];
  v2 = v1[19];
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = sub_221FB62E8();
  v5 = [v3 initWithCategory:1 domainName:v4 healthStore:v2];
  v0[21] = v5;

  v0[22] = v1[20];
  v0[23] = v1[21];
  v6 = sub_221FB62E8();
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221ECDA78;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_44;
  v0[14] = v7;
  [v5 dataForKey:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECDA78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_221ED9A04;
  }

  else
  {
    v4 = sub_221ECDB98;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221ECDB98()
{
  v15 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  if (v3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);

    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 176);
      v7 = *(v0 + 184);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_221EF4114(v8, v7, &v14);
      _os_log_impl(&dword_221E93000, v5, v6, "No existing anchor, no data from domain for key: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    else
    {
    }

    v11 = 0;
  }

  else
  {
    sub_221FB5998();
    swift_allocObject();
    sub_221FB5988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE60, &qword_221FB9F30);
    sub_221ED8EA4(&qword_27CFEBEF0, MEMORY[0x277D83808], MEMORY[0x277D84A58], MEMORY[0x277D83528]);
    sub_221FB5978();
    sub_221EBEFE4(v2, v3);

    v11 = *(v0 + 80);
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_221ECDF40()
{
  v1 = v0[20];
  v2 = v1[19];
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = sub_221FB62E8();
  v5 = [v3 initWithCategory:1 domainName:v4 healthStore:v2];
  v0[21] = v5;

  v0[22] = v1[20];
  v0[23] = v1[21];
  v6 = sub_221FB62E8();
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221ECE0E8;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_76;
  v0[14] = v7;
  [v5 dataForKey:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECE0E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_221ED9A04;
  }

  else
  {
    v4 = sub_221ECE208;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221ECE208()
{
  v15 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  if (v3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);

    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 176);
      v7 = *(v0 + 184);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_221EF4114(v8, v7, &v14);
      _os_log_impl(&dword_221E93000, v5, v6, "No existing anchor, no data from domain for key: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    else
    {
    }

    v11 = 0;
  }

  else
  {
    sub_221FB5998();
    swift_allocObject();
    sub_221FB5988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF70, &unk_221FBA0D0);
    sub_221ED9584();
    sub_221FB5978();
    sub_221EBEFE4(v2, v3);

    v11 = *(v0 + 80);
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_221ECE584()
{
  v1 = v0[20];
  v2 = v1[19];
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = sub_221FB62E8();
  v5 = [v3 initWithCategory:1 domainName:v4 healthStore:v2];
  v0[21] = v5;

  v0[22] = v1[20];
  v0[23] = v1[21];
  v6 = sub_221FB62E8();
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221ECE72C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_83;
  v0[14] = v7;
  [v5 dataForKey:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECE72C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_221ED9A04;
  }

  else
  {
    v4 = sub_221ECE84C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221ECE84C()
{
  v15 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  if (v3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);

    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 176);
      v7 = *(v0 + 184);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_221EF4114(v8, v7, &v14);
      _os_log_impl(&dword_221E93000, v5, v6, "No existing anchor, no data from domain for key: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DADA80](v10, -1, -1);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    else
    {
    }

    v11 = 0;
  }

  else
  {
    sub_221FB5998();
    swift_allocObject();
    sub_221FB5988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBFB8, &unk_221FBA110);
    sub_221ED96E4(&qword_27CFEBFF8, sub_221ED9768, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_221FB5978();
    sub_221EBEFE4(v2, v3);

    v11 = *(v0 + 80);
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_221ECEBE0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221ECEC00, v1, 0);
}

uint64_t sub_221ECEC00()
{
  v1 = v0[18];
  sub_221FB59C8();
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE90, &qword_221FB9F68);
  sub_221ED8AB4();
  v0[20] = sub_221FB59A8();
  v0[21] = v2;
  v3 = v0[19];

  v4 = *(v3 + 152);
  v5 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v6 = sub_221FB62E8();
  v7 = [v5 initWithCategory:1 domainName:v6 healthStore:v4];
  v0[22] = v7;

  v8 = sub_221FB5B08();
  v0[23] = v8;
  v9 = sub_221FB62E8();
  v0[24] = v9;
  v0[2] = v0;
  v0[3] = sub_221ECEE70;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_19_2;
  v0[14] = v10;
  [v7 setData:v8 forKey:v9 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECEE70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_221ED9A08;
  }

  else
  {
    v4 = sub_221ED9A0C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221ECEF90(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221ECEFB0, v1, 0);
}

uint64_t sub_221ECEFB0()
{
  v1 = v0[18];
  sub_221FB59C8();
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF10, &qword_221FBA068);
  sub_221ED925C(&qword_27CFEBF18, sub_221ED91AC, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v0[20] = sub_221FB59A8();
  v0[21] = v2;
  v3 = v0[19];

  v4 = *(v3 + 152);
  v5 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v6 = sub_221FB62E8();
  v7 = [v5 initWithCategory:1 domainName:v6 healthStore:v4];
  v0[22] = v7;

  v8 = sub_221FB5B08();
  v0[23] = v8;
  v9 = sub_221FB62E8();
  v0[24] = v9;
  v0[2] = v0;
  v0[3] = sub_221ECF258;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_49;
  v0[14] = v10;
  [v7 setData:v8 forKey:v9 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECF258()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_221ECF3F8;
  }

  else
  {
    v4 = sub_221ECF378;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221ECF378()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  sub_221EBEF30(v0[20], v0[21]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_221ECF3F8(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[22];
  v3 = v1[23];
  v5 = v1[20];
  v6 = v1[21];
  swift_willThrow();
  sub_221EBEF30(v5, v6);

  v7 = v1[1];

  return v7();
}

uint64_t sub_221ECF494(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221ECF4B4, v1, 0);
}

uint64_t sub_221ECF4B4()
{
  v1 = v0[18];
  sub_221FB59C8();
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE60, &qword_221FB9F30);
  sub_221ED8EA4(&qword_27CFEBE68, MEMORY[0x277D837D8], MEMORY[0x277D84A30], MEMORY[0x277D83508]);
  v0[20] = sub_221FB59A8();
  v0[21] = v2;
  v3 = v0[19];

  v4 = *(v3 + 152);
  v5 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v6 = sub_221FB62E8();
  v7 = [v5 initWithCategory:1 domainName:v6 healthStore:v4];
  v0[22] = v7;

  v8 = sub_221FB5B08();
  v0[23] = v8;
  v9 = sub_221FB62E8();
  v0[24] = v9;
  v0[2] = v0;
  v0[3] = sub_221ECEE70;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_9;
  v0[14] = v10;
  [v7 setData:v8 forKey:v9 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECF750(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221ECF770, v1, 0);
}

uint64_t sub_221ECF770()
{
  v1 = v0[18];
  sub_221FB59C8();
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF70, &unk_221FBA0D0);
  sub_221ED93FC();
  v0[20] = sub_221FB59A8();
  v0[21] = v2;
  v3 = v0[19];

  v4 = *(v3 + 152);
  v5 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v6 = sub_221FB62E8();
  v7 = [v5 initWithCategory:1 domainName:v6 healthStore:v4];
  v0[22] = v7;

  v8 = sub_221FB5B08();
  v0[23] = v8;
  v9 = sub_221FB62E8();
  v0[24] = v9;
  v0[2] = v0;
  v0[3] = sub_221ECEE70;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_62;
  v0[14] = v10;
  [v7 setData:v8 forKey:v9 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECF9E0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221ECFA00, v1, 0);
}

uint64_t sub_221ECFA00()
{
  v1 = v0[18];
  sub_221FB59C8();
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBFB8, &unk_221FBA110);
  sub_221ED96E4(&qword_27CFEBFC0, sub_221ED94C0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v0[20] = sub_221FB59A8();
  v0[21] = v2;
  v3 = v0[19];

  v4 = *(v3 + 152);
  v5 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v6 = sub_221FB62E8();
  v7 = [v5 initWithCategory:1 domainName:v6 healthStore:v4];
  v0[22] = v7;

  v8 = sub_221FB5B08();
  v0[23] = v8;
  v9 = sub_221FB62E8();
  v0[24] = v9;
  v0[2] = v0;
  v0[3] = sub_221ECEE70;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_68;
  v0[14] = v10;
  [v7 setData:v8 forKey:v9 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECFCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_221ECFCCC, v3, 0);
}

uint64_t sub_221ECFCCC()
{
  v21 = v0;
  v1 = v0[12];
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE80, &qword_221FB9F50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    sub_221E967DC(v2);

    v14 = sub_221ED8604(inited, &qword_27CFEBEB0, &qword_221FB9F78);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEBE88, &qword_221FB9F58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = v2;
    sub_221ED8F14(v14, sub_221ED9A14, 0, isUniquelyReferenced_nonNull_native, v20, &qword_27CFEBEB0, &qword_221FB9F78);

    v16 = v20[0];
    v0[13] = v20[0];
    v17 = *(v1 + 176);
    *(v1 + 176) = v16;
    v18 = v16;

    sub_221E967CC(v17);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_221ED9A38;

    return sub_221ECEBE0(v18);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, v20);
      _os_log_impl(&dword_221E93000, v4, v5, "Inactive anchor store: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221ED002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_221ED0050, v3, 0);
}

uint64_t sub_221ED0050()
{
  v21 = v0;
  v1 = v0[12];
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE50, &qword_221FB9F18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    sub_221E967DC(v2);

    v14 = sub_221ED7F58(inited);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEBE58, &qword_221FB9F20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = v2;
    sub_221ED8830(v14, sub_221ED7A20, 0, isUniquelyReferenced_nonNull_native, v20);

    v16 = v20[0];
    v0[13] = v20[0];
    v17 = *(v1 + 176);
    *(v1 + 176) = v16;
    v18 = v16;

    sub_221E967CC(v17);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_221ED9A38;

    return sub_221ECF494(v18);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, v20);
      _os_log_impl(&dword_221E93000, v4, v5, "Inactive anchor store: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221ED0378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_221ED039C, v3, 0);
}

uint64_t sub_221ED039C()
{
  v21 = v0;
  v1 = v0[12];
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBFA8, &qword_221FBA0F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    sub_221E967DC(v2);

    v14 = sub_221ED8604(inited, &qword_27CFEBFD8, &qword_221FBA120);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEBFB0, &qword_221FBA100);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = v2;
    sub_221ED8F14(v14, sub_221ED9A14, 0, isUniquelyReferenced_nonNull_native, v20, &qword_27CFEBFD8, &qword_221FBA120);

    v16 = v20[0];
    v0[13] = v20[0];
    v17 = *(v1 + 176);
    *(v1 + 176) = v16;
    v18 = v16;

    sub_221E967CC(v17);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_221ED9A38;

    return sub_221ECF9E0(v18);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, v20);
      _os_log_impl(&dword_221E93000, v4, v5, "Inactive anchor store: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221ED06FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_221ED0720, v3, 0);
}

uint64_t sub_221ED0720()
{
  v21 = v0;
  v1 = v0[12];
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF00, &qword_221FBA050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    sub_221E967DC(v2);

    v14 = sub_221ED8604(inited, &qword_27CFEBF40, &qword_221FBA080);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEBF08, &qword_221FBA058);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = v2;
    sub_221ED8F14(v14, sub_221ED9A14, 0, isUniquelyReferenced_nonNull_native, v20, &qword_27CFEBF40, &qword_221FBA080);

    v16 = v20[0];
    v0[13] = v20[0];
    v17 = *(v1 + 176);
    *(v1 + 176) = v16;
    v18 = v16;

    sub_221E967CC(v17);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_221ED0A80;

    return sub_221ECEF90(v18);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, v20);
      _os_log_impl(&dword_221E93000, v4, v5, "Inactive anchor store: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221ED0A80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221ED0B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_221ED0BBC, v3, 0);
}

uint64_t sub_221ED0BBC()
{
  v21 = v0;
  v1 = v0[12];
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF60, &qword_221FBA0B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    sub_221E967DC(v2);

    v14 = sub_221ED8604(inited, &qword_27CFEBF98, &qword_221FBA0E0);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEBF68, &qword_221FBA0C0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = v2;
    sub_221ED8F14(v14, sub_221ED9A14, 0, isUniquelyReferenced_nonNull_native, v20, &qword_27CFEBF98, &qword_221FBA0E0);

    v16 = v20[0];
    v0[13] = v20[0];
    v17 = *(v1 + 176);
    *(v1 + 176) = v16;
    v18 = v16;

    sub_221E967CC(v17);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_221ED9A38;

    return sub_221ECF750(v18);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, v20);
      _os_log_impl(&dword_221E93000, v4, v5, "Inactive anchor store: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221ED0F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 144) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = sub_221FB5C38();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221ED0FEC, 0, 0);
}

uint64_t sub_221ED0FEC()
{
  v1 = [*(v0 + 24) UUID];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1;
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 24);
  sub_221FB5C18();

  *(v0 + 96) = sub_221FB5BE8();
  *(v0 + 104) = v9;
  (*(v6 + 8))(v5, v7);
  v1 = [v8 secureCloudZoneName];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v10 = v1;
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();

  sub_221FB6318();
  *(v0 + 112) = sub_221FB65D8();
  *(v0 + 120) = [v11 _activitySummaryIndex];
  v13 = __swift_project_boxed_opaque_existential_0Tm((v12 + 80), *(v12 + 104));
  v2 = *v13;
  *(v0 + 128) = *v13;
  v1 = sub_221ED1164;
  v3 = 0;

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_221ED1164()
{
  v1 = sub_221ECB14C(*(v0 + 96), *(v0 + 104));
  if (!v1)
  {
    v1 = sub_221ED7E7C(MEMORY[0x277D84F90]);
  }

  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = sub_221ED4C68(*(v0 + 120));
    if (v5)
    {
      v3 = *(*(v2 + 56) + 8 * v4);
      v6 = 1;
      goto LABEL_8;
    }

    v3 = 0;
  }

  v6 = 0;
LABEL_8:
  *(v0 + 145) = v6;
  *(v0 + 136) = v3;

  return MEMORY[0x2822009F8](sub_221ED1220, 0, 0);
}

uint64_t sub_221ED1220()
{
  v34 = v0;
  v1 = *(v0 + 145);
  v2 = *(v0 + 136);
  v3 = sub_221F8F248();
  if (v1 == 1 && v2 == v3)
  {
    v17 = *(v0 + 112);

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);

    v7 = v5;
    v8 = sub_221FB61B8();
    v9 = sub_221FB65C8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 120);
      v11 = *(v0 + 96);
      v12 = *(v0 + 104);
      v13 = *(v0 + 32);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v33 = v15;
      *v14 = 136315906;
      v16 = sub_221EF4114(v11, v12, &v33);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v10;
      *(v14 + 22) = 2048;
      *(v14 + 24) = sub_221F8F248();

      *(v14 + 32) = 2080;
      *(v14 + 34) = sub_221EF4114(0xD00000000000001BLL, 0x8000000221FB9FB0, &v33);
      _os_log_impl(&dword_221E93000, v8, v9, "Creating snapshot update for relationship %s hash %lld: %ld for %s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v15, -1, -1);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    else
    {
    }

    v24 = *(v0 + 112);
    v26 = *(v0 + 56);
    v25 = *(v0 + 64);
    v20 = *(v0 + 24);
    v27 = *(v0 + 144);
    v28 = [*(v0 + 48) recordWithZoneID:v24 recordEncryptionType:1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_221FB81B0;
    *(v18 + 32) = v28;

    v29 = v20;
    sub_221ED4904(v26, v25, v27);
    v23 = *(v0 + 144);
    v21 = *(v0 + 56);
    v22 = *(v0 + 64);
    v19 = MEMORY[0x277D84F90];
  }

  v30 = *(v0 + 16);

  *v30 = v18;
  *(v30 + 8) = v19;
  *(v30 + 16) = v20;
  *(v30 + 24) = v21;
  *(v30 + 32) = v22;
  *(v30 + 40) = v23;
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_221ED1530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 144) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = sub_221FB5C38();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221ED1600, 0, 0);
}

uint64_t sub_221ED1600()
{
  v1 = [*(v0 + 24) UUID];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1;
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 24);
  sub_221FB5C18();

  *(v0 + 96) = sub_221FB5BE8();
  *(v0 + 104) = v9;
  (*(v6 + 8))(v5, v7);
  v1 = [v8 secureCloudZoneName];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v10 = v1;
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();

  sub_221FB6318();
  *(v0 + 112) = sub_221FB65D8();
  *(v0 + 120) = [v11 _activitySummaryIndex];
  v13 = __swift_project_boxed_opaque_existential_0Tm((v12 + 40), *(v12 + 64));
  v2 = *v13;
  *(v0 + 128) = *v13;
  v1 = sub_221ED1778;
  v3 = 0;

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_221ED1778()
{
  v1 = sub_221ECB14C(*(v0 + 96), *(v0 + 104));
  if (!v1)
  {
    v1 = sub_221ED7E7C(MEMORY[0x277D84F90]);
  }

  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = sub_221ED4C68(*(v0 + 120));
    if (v5)
    {
      v3 = *(*(v2 + 56) + 8 * v4);
      v6 = 1;
      goto LABEL_8;
    }

    v3 = 0;
  }

  v6 = 0;
LABEL_8:
  *(v0 + 145) = v6;
  *(v0 + 136) = v3;

  return MEMORY[0x2822009F8](sub_221ED1834, 0, 0);
}

uint64_t sub_221ED1834(uint64_t a1)
{
  v35 = v1;
  v2 = *(v1 + 145);
  v3 = *(v1 + 136);
  v4 = sub_221F8F248();
  if (v2 == 1 && v3 == v4)
  {
    v18 = *(v1 + 112);

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = *(v1 + 32);
    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);

    v8 = v6;
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v1 + 120);
      v12 = *(v1 + 96);
      v13 = *(v1 + 104);
      v14 = *(v1 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136315906;
      v17 = sub_221EF4114(v12, v13, &v34);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v11;
      *(v15 + 22) = 2048;
      *(v15 + 24) = sub_221F8F248();

      *(v15 + 32) = 2080;
      *(v15 + 34) = sub_221EF4114(0xD00000000000001FLL, 0x8000000221FC1C70, &v34);
      _os_log_impl(&dword_221E93000, v9, v10, "Creating snapshot update for relationship %s hash %lld: %ld for %s", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v16, -1, -1);
      MEMORY[0x223DADA80](v15, -1, -1);
    }

    else
    {
    }

    v25 = *(v1 + 112);
    v27 = *(v1 + 56);
    v26 = *(v1 + 64);
    v21 = *(v1 + 24);
    v28 = *(v1 + 144);
    v29 = [*(v1 + 48) recordWithZoneID:v25 recordEncryptionType:1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_221FB81B0;
    *(v19 + 32) = v29;

    v30 = v21;
    sub_221ED4904(v27, v26, v28);
    v24 = *(v1 + 144);
    v22 = *(v1 + 56);
    v23 = *(v1 + 64);
    v20 = MEMORY[0x277D84F90];
  }

  v31 = *(v1 + 16);

  *v31 = v19;
  *(v31 + 8) = v20;
  *(v31 + 16) = v21;
  *(v31 + 24) = v22;
  *(v31 + 32) = v23;
  *(v31 + 40) = v24;
  v32 = *(v1 + 8);

  return v32();
}

uint64_t sub_221ED1B44(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_221ED1B68, v1, 0);
}

uint64_t sub_221ED1B68()
{
  v15 = v0;
  if (*(v0 + 72) == 1 && *(*(v0 + 56) + 176) == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v14);
      _os_log_impl(&dword_221E93000, v2, v3, "Protected data available for: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x223DADA80](v5, -1, -1);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_221ED1E88;

    return sub_221ED2FB0();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v8 = sub_221FB61D8();
    __swift_project_value_buffer(v8, qword_281307DF0);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v14);
      _os_log_impl(&dword_221E93000, v9, v10, "Protected data available but already loaded anchor for: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_221ED1E88()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_221ED1F98, v1, 0);
}

uint64_t sub_221ED1F98()
{
  v10 = v0;
  v1 = v0[7];
  sub_221EA4AB4(v1 + 112, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(*v2 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  os_unfair_lock_lock((v5 + 24));
  sub_221ED9A20((v5 + 16), &v9);
  os_unfair_lock_unlock((v5 + 24));
  sub_221ED8DE8(v9, *(&v9 + 1));

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_221ED2094(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_221ED20B8, v1, 0);
}

uint64_t sub_221ED20B8()
{
  v15 = v0;
  if (*(v0 + 72) == 1 && *(*(v0 + 56) + 176) == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v14);
      _os_log_impl(&dword_221E93000, v2, v3, "Protected data available for: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x223DADA80](v5, -1, -1);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_221ED23D8;

    return sub_221ED3308();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v8 = sub_221FB61D8();
    __swift_project_value_buffer(v8, qword_281307DF0);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v14);
      _os_log_impl(&dword_221E93000, v9, v10, "Protected data available but already loaded anchor for: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_221ED23D8()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_221ED24E8, v1, 0);
}

uint64_t sub_221ED24E8()
{
  v10 = v0;
  v1 = v0[7];
  sub_221EA4AB4(v1 + 112, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(*v2 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  os_unfair_lock_lock((v5 + 24));
  sub_221ED8DCC((v5 + 16), &v9);
  os_unfair_lock_unlock((v5 + 24));
  sub_221ED8DE8(v9, *(&v9 + 1));

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_221ED25E4(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_221ED2608, v1, 0);
}

uint64_t sub_221ED2608()
{
  v15 = v0;
  if (*(v0 + 72) == 1 && *(*(v0 + 56) + 176) == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v14);
      _os_log_impl(&dword_221E93000, v2, v3, "Protected data available for: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x223DADA80](v5, -1, -1);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_221ED1E88;

    return sub_221ED3670();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v8 = sub_221FB61D8();
    __swift_project_value_buffer(v8, qword_281307DF0);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v14);
      _os_log_impl(&dword_221E93000, v9, v10, "Protected data available but already loaded anchor for: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_221ED2928(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_221ED294C, v1, 0);
}

uint64_t sub_221ED294C()
{
  v15 = v0;
  if (*(v0 + 72) == 1 && *(*(v0 + 56) + 176) == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v14);
      _os_log_impl(&dword_221E93000, v2, v3, "Protected data available for: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x223DADA80](v5, -1, -1);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_221ED1E88;

    return sub_221ED39D8();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v8 = sub_221FB61D8();
    __swift_project_value_buffer(v8, qword_281307DF0);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v14);
      _os_log_impl(&dword_221E93000, v9, v10, "Protected data available but already loaded anchor for: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_221ED2C6C(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_221ED2C90, v1, 0);
}

uint64_t sub_221ED2C90()
{
  v15 = v0;
  if (*(v0 + 72) == 1 && *(*(v0 + 56) + 176) == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v14);
      _os_log_impl(&dword_221E93000, v2, v3, "Protected data available for: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x223DADA80](v5, -1, -1);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_221ED1E88;

    return sub_221ED3D40();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v8 = sub_221FB61D8();
    __swift_project_value_buffer(v8, qword_281307DF0);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v14);
      _os_log_impl(&dword_221E93000, v9, v10, "Protected data available but already loaded anchor for: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_221ED2FB0()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221ED3054;

  return sub_221ECD8B0();
}

uint64_t sub_221ED3054(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221ED316C, v2, 0);
}

uint64_t sub_221ED316C()
{
  v12 = v0;
  v1 = v0[4];
  if (!v1)
  {
    v1 = sub_221ED7F58(MEMORY[0x277D84F90]);
  }

  v2 = v0[2];
  v3 = *(v2 + 176);
  *(v2 + 176) = v1;
  sub_221E967CC(v3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v11);
    _os_log_impl(&dword_221E93000, v5, v6, "Loaded anchor map for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221ED3308()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221ED33AC;

  return sub_221ECCA38();
}

uint64_t sub_221ED33AC(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221ED34C4, v2, 0);
}

uint64_t sub_221ED34C4()
{
  v12 = v0;
  v1 = v0[4];
  if (!v1)
  {
    v1 = sub_221ED8604(MEMORY[0x277D84F90], &qword_27CFEBEB0, &qword_221FB9F78);
  }

  v2 = v0[2];
  v3 = *(v2 + 176);
  *(v2 + 176) = v1;
  sub_221E967CC(v3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v11);
    _os_log_impl(&dword_221E93000, v5, v6, "Loaded anchor map for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221ED3670()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221ED3714;

  return sub_221ECD07C();
}

uint64_t sub_221ED3714(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221ED382C, v2, 0);
}

uint64_t sub_221ED382C()
{
  v12 = v0;
  v1 = v0[4];
  if (!v1)
  {
    v1 = sub_221ED8604(MEMORY[0x277D84F90], &qword_27CFEBF40, &qword_221FBA080);
  }

  v2 = v0[2];
  v3 = *(v2 + 176);
  *(v2 + 176) = v1;
  sub_221E967CC(v3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v11);
    _os_log_impl(&dword_221E93000, v5, v6, "Loaded anchor map for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221ED39D8()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221ED3A7C;

  return sub_221ECE564();
}

uint64_t sub_221ED3A7C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221ED3B94, v2, 0);
}

uint64_t sub_221ED3B94()
{
  v12 = v0;
  v1 = v0[4];
  if (!v1)
  {
    v1 = sub_221ED8604(MEMORY[0x277D84F90], &qword_27CFEBFD8, &qword_221FBA120);
  }

  v2 = v0[2];
  v3 = *(v2 + 176);
  *(v2 + 176) = v1;
  sub_221E967CC(v3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v11);
    _os_log_impl(&dword_221E93000, v5, v6, "Loaded anchor map for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221ED3D40()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221ED3DE4;

  return sub_221ECDF20();
}

uint64_t sub_221ED3DE4(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221ED3EFC, v2, 0);
}

uint64_t sub_221ED3EFC()
{
  v12 = v0;
  v1 = v0[4];
  if (!v1)
  {
    v1 = sub_221ED8604(MEMORY[0x277D84F90], &qword_27CFEBF98, &qword_221FBA0E0);
  }

  v2 = v0[2];
  v3 = *(v2 + 176);
  *(v2 + 176) = v1;
  sub_221E967CC(v3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v11);
    _os_log_impl(&dword_221E93000, v5, v6, "Loaded anchor map for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221ED40A8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_221FB5B18();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221ED41A0(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a2)
  {

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
      v9 = swift_allocError();
      *v10 = a3;
      v11 = a3;
      v5 = v7;
      v6 = v9;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200958](v5, v6);
  }
}

uint64_t sub_221ED4258(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_221EF3388(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_221ED43FC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_221EF3814(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_221ED451C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_221ED46BC(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_221FB6868();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_221FB6868();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_221ED47BC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_221ED47F4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_221ED4868@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_221ED4898(uint64_t (*a1)(void))
{
  a1();

  return sub_221FB6CA8();
}

uint64_t sub_221ED48D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_221ED4904(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3 <= 1u)
    {
      return result;
    }
  }

  else if (a3 == 3 || a3 == 4 || a3 == 5)
  {
  }

  return result;
}

void sub_221ED4948(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3 <= 1u)
    {
    }
  }

  else if (a3 == 3 || a3 == 4 || a3 == 5)
  {
  }
}

uint64_t sub_221ED498C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221EC7D7C(a1, v4);
}

uint64_t sub_221ED4A28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221EC8814(a1, v4);
}

unint64_t sub_221ED4AC4(uint64_t a1)
{
  sub_221FB5AE8();
  sub_221ED982C(&qword_27CFEB8E8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v2 = sub_221FB62A8();

  return sub_221ED4CFC(a1, v2);
}

unint64_t sub_221ED4B5C(uint64_t a1, uint64_t a2)
{
  sub_221FB6C38();
  sub_221FB6358();
  v4 = sub_221FB6C58();

  return sub_221ED4EBC(a1, a2, v4);
}

unint64_t sub_221ED4BD4(uint64_t a1)
{
  v2 = sub_221FB68E8();

  return sub_221ED4F74(a1, v2);
}

unint64_t sub_221ED4C68(uint64_t a1)
{
  v2 = sub_221FB6C28();

  return sub_221ED503C(a1, v2);
}

unint64_t sub_221ED4CFC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_221FB5AE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_221ED982C(&qword_27CFEC008, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v15 = sub_221FB62D8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_221ED4EBC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_221FB6B58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_221ED4F74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_221EC5220(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DACCC0](v9, a1);
      sub_221EC5354(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_221ED503C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_221ED50A8(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_221E9D138(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_221FB6758();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_221ED5174(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC030, &qword_221FBA1A0);
  v35 = v4;
  result = sub_221FB6A98();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_221ED5418(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC048, &qword_221FBA1B8);
  result = sub_221FB6A98();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_221FB6748();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_221ED5680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE78, &qword_221FB9F40);
  result = sub_221FB6A98();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_221FB6C28();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_221ED58E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE70, &qword_221FB9F38);
  v34 = v4;
  result = sub_221FB6A98();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_221ED5B84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD98, &qword_221FB9A70);
  result = sub_221FB6A98();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_221EC45F0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_221EC5220(v23, &v36);
        sub_221E951A4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_221FB68E8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_221EC45F0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_221ED5E78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_221FB6A98();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = sub_221FB6C28();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_221ED60F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_221FB6A98();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = sub_221FB6748();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_221ED6354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED0, &qword_221FBA010);
  v33 = v4;
  result = sub_221FB6A98();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_221ED6620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC018, &qword_221FBA188);
  v33 = v4;
  result = sub_221FB6A98();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_221EC45F0(v24, v34);
      }

      else
      {
        sub_221E951A4(v24, v34);
      }

      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_221EC45F0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_221ED68D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_221FB6A98();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

id sub_221ED6B78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC030, &qword_221FBA1A0);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_221ED6CE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC048, &qword_221FBA1B8);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221ED6E44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE78, &qword_221FB9F40);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221ED6F90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE70, &qword_221FB9F38);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221ED70F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD98, &qword_221FB9A70);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_221EC5220(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_221E951A4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_221EC45F0(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221ED72D8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_221FB6A88();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_221ED7438(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_221FB6A88();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_221ED7588()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED0, &qword_221FBA010);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221ED771C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC018, &qword_221FBA188);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_221E951A4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_221EC45F0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_221ED78C0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_221FB6A88();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_221ED7A20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_221ED7A38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = a1;
  v15 = *a2;
  v16 = swift_task_alloc();
  *(v8 + 72) = v16;
  *v16 = v8;
  v16[1] = sub_221ED7B20;

  return sub_221ED0F1C(v8 + 16, v15, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221ED7B20()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 16);
    v6 = *(v2 + 32);
    *(v4 + 25) = *(v2 + 41);
    *v4 = v5;
    v4[1] = v6;
  }

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_221ED7C38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t sub_221ED7C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB8D8, &qword_221FB8278);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC010, &qword_221FBA180);
    v7 = sub_221FB6AB8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_221ED9874(v9, v5, &qword_27CFEB8D8, &qword_221FB8278);
      result = sub_221ED4AC4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_221FB5AE8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221ED7E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE78, &qword_221FB9F40);
    v3 = sub_221FB6AB8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_221ED4C68(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221ED7F58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE70, &qword_221FB9F38);
    v3 = sub_221FB6AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_221ED4B5C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221ED8054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD98, &qword_221FB9A70);
    v3 = sub_221FB6AB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_221ED9874(v4, v13, &unk_27CFECB20, &unk_221FBA170);
      result = sub_221ED4BD4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_221EC45F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221ED8190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED0, &qword_221FBA010);
    v3 = sub_221FB6AB8();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_221ED4B5C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_221ED82E8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_221FB6AB8();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_221ED4C68(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_221ED4C68(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_221ED83FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_221FB6AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_221ED4B5C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221ED84F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC058, &qword_221FBA1C8);
    v3 = sub_221FB6AB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_221ED4CAC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221ED8604(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_221FB6AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_221ED4B5C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_221ED8700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC018, &qword_221FBA188);
    v3 = sub_221FB6AB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_221ED9874(v4, &v13, &qword_27CFEC020, &unk_221FBA190);
      v5 = v13;
      v6 = v14;
      result = sub_221ED4B5C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_221EC45F0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_221ED8830(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_221ED4B5C(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_221ED6F90();
      }
    }

    else
    {
      sub_221ED58E4(v26, v39 & 1);
      v28 = sub_221ED4B5C(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_221E96470(a1);
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

unint64_t sub_221ED8AB4()
{
  result = qword_27CFEBE98;
  if (!qword_27CFEBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBE90, &qword_221FB9F68);
    sub_221ED8B60(&qword_27CFEBEA0, MEMORY[0x277D84A30], MEMORY[0x277D83B90], MEMORY[0x277D83508]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBE98);
  }

  return result;
}

uint64_t sub_221ED8B60(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBEA8, &qword_221FB9F70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221ED8BD0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_221E9544C;

  return sub_221ED7A38(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_221ED8CC4(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221E963B4;

  return sub_221EC937C(a1, a2, v7, v6);
}

unint64_t sub_221ED8D78()
{
  result = qword_27CFEBEC8;
  if (!qword_27CFEBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBEC8);
  }

  return result;
}

uint64_t sub_221ED8DE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_221ED8DF8()
{
  result = qword_27CFEBEE0;
  if (!qword_27CFEBEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBE90, &qword_221FB9F68);
    sub_221ED8B60(&qword_27CFEBEE8, MEMORY[0x277D84A58], MEMORY[0x277D83BB8], MEMORY[0x277D83528]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBEE0);
  }

  return result;
}

uint64_t sub_221ED8EA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBE60, &qword_221FB9F30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221ED8F14(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v48 = a5;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (63 - v9) >> 6;

  v13 = 0;
  v40 = v8;
  while (v11)
  {
    v43 = a4;
    v14 = v13;
LABEL_14:
    v16 = __clz(__rbit64(v11)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v47[0] = *v17;
    v47[1] = v18;
    v47[2] = v19;

    a2(&v44, v47);

    v21 = v44;
    v20 = v45;
    v22 = v46;
    v23 = *v48;
    v25 = sub_221ED4B5C(v44, v45);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((v43 & 1) == 0)
      {
        sub_221ED78C0(a6, a7);
      }
    }

    else
    {
      sub_221ED68D8(v28, v43 & 1, a6, a7);
      v30 = sub_221ED4B5C(v21, v20);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v25 = v30;
    }

    v11 &= v11 - 1;
    v32 = *v48;
    if (v29)
    {

      *(v32[7] + 8 * v25) = v22;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v32[6] + 16 * v25);
      *v33 = v21;
      v33[1] = v20;
      *(v32[7] + 8 * v25) = v22;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v13 = v14;
    v8 = v40;
  }

  v15 = v13;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      sub_221E96470(a1);
    }

    v11 = *(v8 + 8 * v14);
    ++v15;
    if (v11)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

unint64_t sub_221ED91AC()
{
  result = qword_27CFEBF20;
  if (!qword_27CFEBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF28, &unk_221FBA070);
    sub_221ED9390(&qword_27CFEBF30, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBF20);
  }

  return result;
}

uint64_t sub_221ED925C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF10, &qword_221FBA068);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221ED92E0()
{
  result = qword_27CFEBF50;
  if (!qword_27CFEBF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF28, &unk_221FBA070);
    sub_221ED9390(&qword_27CFEBF58, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBF50);
  }

  return result;
}

uint64_t sub_221ED9390(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF38, qword_221FBF480);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221ED93FC()
{
  result = qword_27CFEBF78;
  if (!qword_27CFEBF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF70, &unk_221FBA0D0);
    sub_221ED9648(&qword_27CFEBF80, &qword_27CFEBF90, MEMORY[0x277CC95F8], MEMORY[0x277D83B50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBF78);
  }

  return result;
}

unint64_t sub_221ED94C0()
{
  result = qword_27CFEBFC8;
  if (!qword_27CFEBFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBFD0, qword_221FBA8E0);
    sub_221ED9648(&qword_27CFEBF80, &qword_27CFEBF90, MEMORY[0x277CC95F8], MEMORY[0x277D83B50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBFC8);
  }

  return result;
}

unint64_t sub_221ED9584()
{
  result = qword_27CFEBFE0;
  if (!qword_27CFEBFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF70, &unk_221FBA0D0);
    sub_221ED9648(&qword_27CFEBFE8, &qword_27CFEBFF0, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBFE0);
  }

  return result;
}

uint64_t sub_221ED9648(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF88, &qword_221FBE3D0);
    sub_221ED982C(a2, MEMORY[0x277CC95F0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221ED96E4(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBFB8, &unk_221FBA110);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221ED9768()
{
  result = qword_27CFEC000;
  if (!qword_27CFEC000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBFD0, qword_221FBA8E0);
    sub_221ED9648(&qword_27CFEBFE8, &qword_27CFEBFF0, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC000);
  }

  return result;
}

uint64_t sub_221ED982C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221ED9874(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_221ED9908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_221ED9950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221ED9A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[11] = type metadata accessor for IDSErrorAction(0);
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0);
  v8[13] = swift_task_alloc();
  v9 = type metadata accessor for IDSError(0);
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD90, &qword_221FB9A58);
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221ED9BB4, 0, 0);
}

uint64_t sub_221ED9BB4()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[4];
  v2 = v0[5];
  v4 = sub_221FB61D8();
  v0[19] = __swift_project_value_buffer(v4, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000070, 0x8000000221FC1D50, 0xD000000000000029, 0x8000000221FC1E70);
  *v1 = v3;
  v1[1] = v2;
  v5 = *MEMORY[0x277CE9390];
  v6 = sub_221FB5D78();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v1, v5, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v14 = (*MEMORY[0x277CE9400] + MEMORY[0x277CE9400]);

  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_221ED9DA4;
  v9 = v0[18];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[3];

  return v14(v12, v10, v11, v9);
}

uint64_t sub_221ED9DA4()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  *(v3 + 168) = v0;

  sub_221E9CFE8(v2, &qword_27CFEBD90, &qword_221FB9A58);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221ED9F40, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_221ED9F40()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = v1;
  v2 = *(v0 + 120);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 104);
    v5(v8, 0, 1, *(v0 + 112));
    sub_221EC4474(v8, v6);
    sub_221EDADCC(v6, v7, type metadata accessor for IDSError);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 128);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      sub_221EA49E8();
      swift_allocError();
      sub_221EDADCC(v12, v15, type metadata accessor for IDSError);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      sub_221EDAE34(v12, type metadata accessor for IDSError);
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_221E93000, v9, v10, "Error processing incoming message %@", v13, 0xCu);
      sub_221E9CFE8(v14, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }

    else
    {

      sub_221EDAE34(v12, type metadata accessor for IDSError);
    }

    sub_221EDADCC(*(v0 + 136), *(v0 + 96), type metadata accessor for IDSErrorAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = *(v0 + 168);
    v30 = *(v0 + 136);
    v31 = *(v0 + 96);
    if (EnumCaseMultiPayload)
    {
      sub_221EDAE34(*(v0 + 136), type metadata accessor for IDSError);

      v32 = type metadata accessor for IDSErrorAction;
      v33 = v31;
    }

    else
    {
      if (*v31)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      (*(v0 + 64))(v34);

      v32 = type metadata accessor for IDSError;
      v33 = v30;
    }

    sub_221EDAE34(v33, v32);
  }

  else
  {
    v17 = *(v0 + 168);
    v18 = *(v0 + 104);
    v5(v18, 1, 1, *(v0 + 112));
    sub_221E9CFE8(v18, &unk_27CFEC0F0, &qword_221FBA2A0);
    v19 = v17;
    v20 = sub_221FB61B8();
    v21 = sub_221FB65A8();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 168);
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v23;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_221E93000, v20, v21, "Handler of IDS message didn't throw IDSError: %@", v24, 0xCu);
      sub_221E9CFE8(v25, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v25, -1, -1);
      MEMORY[0x223DADA80](v24, -1, -1);
    }

    else
    {
    }
  }

  v35 = *(v0 + 8);

  return v35();
}

id sub_221EDA3D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221EDA488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  return MEMORY[0x2822009F8](sub_221EDA4C4, 0, 0);
}

uint64_t sub_221EDA4C4()
{
  v1 = v0[5];
  sub_221FB6978();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x223DAC740](0xD000000000000030, 0x8000000221FC1E30);
  v0[4] = v1;
  sub_221FB6A08();
  v2 = v0[2];
  v3 = v0[3];
  type metadata accessor for RuntimeTransaction();
  v4 = swift_allocObject();
  v0[13] = v4;
  swift_defaultActor_initialize();
  v4[15] = v3;
  v4[16] = 0;
  v4[14] = v2;

  return MEMORY[0x2822009F8](sub_221EDA5C8, v4, 0);
}

uint64_t sub_221EDA5C8()
{
  v1 = v0[13];
  sub_221FB6338();
  v2 = os_transaction_create();

  *(v1 + 128) = v2;
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_221EDA6A0;
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];

  return sub_221ED9A3C(v10, v8, v9, v6, v7, v4, v5);
}

uint64_t sub_221EDA6A0()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_221EDA7B0, v1, 0);
}

uint64_t sub_221EDA7B0()
{
  *(*(v0 + 104) + 128) = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_221EDA820, 0, 0);
}

uint64_t sub_221EDA820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EDA988(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, void (**a7)(void, void))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v31 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  _Block_copy(a7);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v18 = sub_221FB61D8();
  __swift_project_value_buffer(v18, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000070, 0x8000000221FC1D50, 0xD000000000000053, 0x8000000221FC1DD0);
  if ((a3 - 100) >= 4)
  {
    v23 = sub_221FB61B8();
    v24 = sub_221FB65A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      v31[1] = a3;
      type metadata accessor for ASMessageType(0);
      v27 = sub_221FB6328();
      v29 = sub_221EF4114(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_221E93000, v23, v24, "Received unknown IDS type %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223DADA80](v26, -1, -1);
      MEMORY[0x223DADA80](v25, -1, -1);
    }

    a7[2](a7, 0);
  }

  else
  {
    v19 = qword_221FBA2A8[a3 - 100];
    v20 = sub_221FB64C8();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = a6;
    v21[6] = a4;
    v21[7] = a5;
    v21[8] = a1;
    v21[9] = a2;
    v21[10] = sub_221EDACB8;
    v21[11] = v17;
    v22 = a6;

    sub_221EBEF90(a1, a2);

    sub_221FA7A78(0, 0, v16, &unk_221FBA298, v21);
  }
}

uint64_t sub_221EDACCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_221E9544C;

  return sub_221EDA488(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221EDADCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_221EDAE34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for IDSSendError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IDSSendError(_WORD *result, int a2, int a3)
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

unint64_t sub_221EDAF80()
{
  result = qword_27CFEC110;
  if (!qword_27CFEC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC110);
  }

  return result;
}

uint64_t sub_221EDAFDC()
{
  sub_221FB6C38();
  MEMORY[0x223DAD010](0);
  return sub_221FB6C58();
}

uint64_t sub_221EDB048()
{
  sub_221FB6C38();
  MEMORY[0x223DAD010](0);
  return sub_221FB6C58();
}

uint64_t sub_221EDB088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221EDB1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221EDB2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3, a4);
}

void sub_221EDB428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v21 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    sub_221FB6538();
    v4 = v20[1];
    v5 = v20[2];
    v6 = v20[3];
    v7 = v20[4];
    v8 = v20[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
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

    v8 = (v11 & *(a1 + 56));

    v7 = 0;
  }

  while (v4 < 0)
  {
    v17 = sub_221FB6898();
    if (!v17 || (v19 = v17, sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), v16 = v20[0], v14 = v7, v15 = v8, !v20[0]))
    {
LABEL_22:
      sub_221E96470(v4);
      return;
    }

LABEL_18:
    v20[0] = v16;
    sub_221EDBDE0(v20, a2, &v19);
    if (v3)
    {

      sub_221E96470(v4);

      return;
    }

    if (v19)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
      }

      sub_221FB6478();
    }

    v7 = v14;
    v8 = v15;
  }

  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = v5[v14];
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_221EDB6E8(uint64_t a1)
{
  v1 = a1;
  v23 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    sub_221FB6538();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v16 = v3;
  while (v1 < 0)
  {
    if (!sub_221FB6898() || (sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), (v11 = v17) == 0))
    {
LABEL_25:
      sub_221E96470(v1);
      return;
    }

LABEL_19:
    v12 = [v11 relationshipStorage];
    v13 = [v12 secureCloudRelationship];

    v14 = v13;
    if (!ASRelationshipNeedsSupportedFeaturesUpdate() || ![v14 isFriendshipActive])
    {

      goto LABEL_9;
    }

    v15 = [v14 secureCloudMigrationCompleted];

    if (v15)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_221FB6458();
      }

      sub_221FB6478();
    }

    else
    {
LABEL_9:
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_15:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_221EDB9D0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v2)
  {
    v3 = v2;
    v4 = sub_221FB62E8();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_221FB67C8();

      swift_unknownObjectRelease();
    }

    else
    {

      v16 = 0u;
      v17 = 0u;
    }

    v18[0] = v16;
    v18[1] = v17;
    if (*(&v17 + 1))
    {
      v13 = sub_221FB5BC8();
      v14 = swift_dynamicCast();
      return (*(*(v13 - 8) + 56))(a1, v14 ^ 1u, 1, v13);
    }

    else
    {
      sub_221E9CFE8(v18, &qword_27CFEC128, &unk_221FBA430);
      v15 = sub_221FB5BC8();
      return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v7, v8, "Failed to create Activity Sharing user defaults", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v10 = sub_221FB5BC8();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

void sub_221EDBC78()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v0)
  {
    v1 = v0;
    v2 = sub_221FB5B58();
    oslog = sub_221FB62E8();
    [v1 setObject:v2 forKey:?];
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    oslog = sub_221FB61B8();
    v4 = sub_221FB65C8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_221E93000, oslog, v4, "Failed to create Activity Sharing user defaults", v5, 2u);
      MEMORY[0x223DADA80](v5, -1, -1);
    }
  }
}

void sub_221EDBDE0(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v104 = a3;
  v97 = sub_221FB5C38();
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v95 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v84 - v11;
  MEMORY[0x28223BE20](v10);
  v98 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC118, &unk_221FBB0A0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v96 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v100 = &v84 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v101 = &v84 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v84 - v22;
  MEMORY[0x28223BE20](v21);
  v102 = &v84 - v24;
  v25 = sub_221FB5BC8();
  v103 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v84 - v29;
  v31 = [*a1 relationshipStorage];
  v32 = v31;
  v33 = &selRef_secureCloudRelationship;
  if (a2 != 1)
  {
    v33 = &selRef_legacyRelationship;
  }

  v34 = [v31 *v33];

  if (![v34 needsPushForConsolidation] || (v35 = objc_msgSend(v34, sel_systemFieldsOnlyRecord)) == 0)
  {

LABEL_9:
    v34 = 0;
    goto LABEL_10;
  }

  v36 = v35;
  v37 = [v35 modificationDate];
  v91 = v3;
  v93 = v36;
  if (v37)
  {
    v38 = v37;
    sub_221FB5B98();

    sub_221FB5BB8();
    v39 = sub_221FB5BA8();
    v40 = *(v103 + 8);
    v40(v28, v25);
    if (v39 == -1)
    {
      sub_221FB5BB8();
      sub_221FB5B28();
      v42 = v41;
      v40(v28, v25);
      sub_221FB5B28();
      v44 = v43;
      v40(v30, v25);
      v36 = v93;
      if (v42 - v44 <= 0.0 || v42 - v44 >= 86400.0)
      {

        goto LABEL_10;
      }
    }

    else
    {
      v40(v30, v25);
      v36 = v93;
    }
  }

  [v34 cloudType];
  v45 = NSStringFromASCloudType();
  v90 = sub_221FB6318();
  v92 = v46;

  v47 = [v36 modificationDate];
  if (v47)
  {
    v48 = v47;
    sub_221FB5B98();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v51 = v101;
  v50 = v102;
  v89 = v12;
  (*(v103 + 56))(v23, v49, 1, v25);
  sub_221EDEF74(v23, v50, &qword_27CFEC118, &unk_221FBB0A0);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v52 = sub_221FB61D8();
  __swift_project_value_buffer(v52, qword_281307DF0);
  sub_221ED9874(v50, v51, &qword_27CFEC118, &unk_221FBB0A0);
  v53 = v34;

  v54 = sub_221FB61B8();
  v55 = sub_221FB65C8();

  v88 = v55;
  v56 = os_log_type_enabled(v54, v55);
  v57 = v99;
  if (!v56)
  {

    sub_221E9CFE8(v51, &qword_27CFEC118, &unk_221FBB0A0);
    sub_221E9CFE8(v50, &qword_27CFEC118, &unk_221FBB0A0);
    goto LABEL_9;
  }

  v87 = v54;
  v58 = swift_slowAlloc();
  v85 = swift_slowAlloc();
  v107 = v85;
  *v58 = 136315650;
  v59 = [v53 UUID];
  v86 = v53;
  if (v59)
  {
    v60 = v89;
    v61 = v59;
    sub_221FB5C18();

    v62 = 0;
  }

  else
  {
    v62 = 1;
    v60 = v89;
  }

  v63 = 7104878;
  v64 = v97;
  (*(v57 + 56))(v60, v62, 1, v97);
  v65 = v60;
  v66 = v98;
  sub_221EDEF74(v65, v98, &qword_27CFEBD50, &unk_221FB9FB0);
  v67 = v66;
  v68 = v95;
  sub_221ED9874(v67, v95, &qword_27CFEBD50, &unk_221FB9FB0);
  if ((*(v57 + 48))(v68, 1, v64) == 1)
  {
    v69 = 0xE300000000000000;
    v70 = 7104878;
  }

  else
  {
    v71 = v94;
    (*(v57 + 32))(v94, v68, v64);
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_221FB6A08();
    v72 = v64;
    v70 = v105;
    v69 = v106;
    (*(v57 + 8))(v71, v72);
  }

  v73 = v101;
  sub_221E9CFE8(v98, &qword_27CFEBD50, &unk_221FB9FB0);
  v74 = sub_221EF4114(v70, v69, &v107);

  *(v58 + 4) = v74;
  *(v58 + 12) = 2080;
  v75 = v100;
  sub_221ED9874(v73, v100, &qword_27CFEC118, &unk_221FBB0A0);
  v76 = v75;
  v77 = v96;
  sub_221ED9874(v76, v96, &qword_27CFEC118, &unk_221FBB0A0);
  v78 = v103;
  if ((*(v103 + 48))(v77, 1, v25) == 1)
  {
    v79 = 0xE300000000000000;
  }

  else
  {
    (*(v78 + 32))(v28, v77, v25);
    v105 = 0;
    v106 = 0xE000000000000000;
    sub_221FB6A08();
    v63 = v105;
    v79 = v106;
    (*(v78 + 8))(v28, v25);
  }

  sub_221E9CFE8(v100, &qword_27CFEC118, &unk_221FBB0A0);
  sub_221E9CFE8(v73, &qword_27CFEC118, &unk_221FBB0A0);
  v80 = sub_221EF4114(v63, v79, &v107);

  *(v58 + 14) = v80;
  *(v58 + 22) = 2080;
  v81 = sub_221EF4114(v90, v92, &v107);

  *(v58 + 24) = v81;
  v82 = v87;
  _os_log_impl(&dword_221E93000, v87, v88, "Backing off push for consolidation %s, mod date %s type %s", v58, 0x20u);
  v83 = v85;
  swift_arrayDestroy();
  MEMORY[0x223DADA80](v83, -1, -1);
  MEMORY[0x223DADA80](v58, -1, -1);

  sub_221E9CFE8(v102, &qword_27CFEC118, &unk_221FBB0A0);
  v34 = 0;
LABEL_10:
  *v104 = v34;
}

uint64_t sub_221EDC7CC(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 160) = a3;
  *(v4 + 168) = v3;
  *(v4 + 248) = a2;
  *(v4 + 152) = a1;
  return MEMORY[0x2822009F8](sub_221EDC7F4, 0, 0);
}

uint64_t sub_221EDC7F4()
{
  __swift_project_boxed_opaque_existential_0Tm((v0[21] + 8), *(v0[21] + 32));
  v4 = off_28355BEA0 + *off_28355BEA0;
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_221EDC92C;
  v2 = v0[19];

  return (v4)(v2, &type metadata for RelationshipFinalizationCoordinator, &off_28355BE88);
}

uint64_t sub_221EDC92C()
{

  return MEMORY[0x2822009F8](sub_221EDCA28, 0, 0);
}

uint64_t sub_221EDCA28()
{
  v36 = v0;
  v1 = **(v0 + 168);
  v2 = sub_221FB5BF8();
  v3 = [v1 contactWithUUID_];
  *(v0 + 184) = v3;

  if (v3)
  {
    v4 = [v3 relationshipStorage];
    v5 = [v4 secureCloudRelationship];
    *(v0 + 192) = v5;

    v6 = [v3 relationshipStorage];
    v7 = [v6 legacyRelationship];
    *(v0 + 200) = v7;

    if ([v5 isFriendshipActive])
    {
      v8 = *(v0 + 168);
      [v5 insertEventWithType_];
      __swift_project_boxed_opaque_existential_0Tm((v8 + 48), *(v8 + 72));
      v9 = swift_task_alloc();
      *(v0 + 208) = v9;
      *v9 = v0;
      v9[1] = sub_221EDCEE4;
      v10 = *(v0 + 160);

      return sub_221EBAEA8(v5, 0, v10, 0);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v23 = sub_221FB61D8();
    __swift_project_value_buffer(v23, qword_281307DF0);
    v24 = sub_221FB61B8();
    v25 = sub_221FB65A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v26 = 136315138;
      v27 = NSStringFromASRelationshipEventType();
      v28 = sub_221FB6318();
      v30 = v29;

      v31 = sub_221EF4114(v28, v30, v35);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_221E93000, v24, v25, "Friendship inactive not update with competition event: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DADA80](v34, -1, -1);
      MEMORY[0x223DADA80](v26, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v32 = 8;
    swift_willThrow();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v12 = sub_221FB61D8();
    __swift_project_value_buffer(v12, qword_281307DF0);
    v13 = sub_221FB61B8();
    v14 = sub_221FB65A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35[0] = v16;
      *v15 = 136315138;
      v17 = NSStringFromASRelationshipEventType();
      v18 = sub_221FB6318();
      v20 = v19;

      v21 = sub_221EF4114(v18, v20, v35);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_221E93000, v13, v14, "Missing contact while trying to update for competition event: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DADA80](v16, -1, -1);
      MEMORY[0x223DADA80](v15, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v22 = 21;
    swift_willThrow();
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_221EDCEE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_221EDD3F4;
  }

  else
  {
    v4 = sub_221EDCFF8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221EDCFF8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_221FB61D8();
  *(v0 + 232) = __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Updated active friend for secure cloud relationship: %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = *(v0 + 200);
  v11 = *(v0 + 168);
  v12 = *(v0 + 248);

  [v10 insertEventWithType_];
  v13 = __swift_project_boxed_opaque_existential_0Tm((v11 + 48), *(v11 + 72));
  if ([v10 cloudType])
  {
    v14 = *(v0 + 200);
    v15 = sub_221FB61B8();
    v16 = sub_221FB65A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 200);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_221E93000, v15, v16, "Attempting to save secure cloud relationship to legacy container %@", v18, 0xCu);
      sub_221E9CFE8(v19, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v19, -1, -1);
      MEMORY[0x223DADA80](v18, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v21 = 11;
    swift_willThrow();
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v24 = *(v0 + 184);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v27 = *(v0 + 200);
    v28 = *(v0 + 160);
    v29 = *__swift_project_boxed_opaque_existential_0Tm(v13 + 6, v13[9]);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_221EDD464;
    v30 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_221EF4C50;
    *(v0 + 104) = &block_descriptor_10;
    *(v0 + 112) = v30;
    [v29 saveRelationship:v27 contact:0 cloudKitGroup:v28 activity:0 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_221EDD3F4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221EDD464()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_221EDD6F8;
  }

  else
  {
    v2 = sub_221EDD574;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221EDD574()
{
  v1 = *(v0 + 144);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 184);
    v5 = *(v0 + 192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v1;
    *v7 = v1;
    v8 = v1;
    _os_log_impl(&dword_221E93000, v2, v3, "Updated active friend for legacy relationship: %@", v6, 0xCu);
    sub_221E9CFE8(v7, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);

    v9 = 200;
  }

  else
  {

    v8 = *(v0 + 200);
    v9 = 192;
  }

  v10 = *(v0 + v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_221EDD6F8(uint64_t a1)
{
  swift_willThrow();
  v3 = *(v1 + 192);
  v2 = *(v1 + 200);
  v4 = *(v1 + 184);

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_221EDD788(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC118, &unk_221FBB0A0);
  v3[5] = swift_task_alloc();
  v4 = sub_221FB5BC8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EDD89C, 0, 0);
}

uint64_t sub_221EDD89C()
{
  v79 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  v0[11] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC1ED0, 0xD000000000000035, 0x8000000221FC1FA0);
  v3 = [*v1 contacts];
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = v3;
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
  v5 = sub_221FB64F8();

  sub_221EDB428(v5, 0);
  v7 = v6;
  v0[12] = v6;
  sub_221EDB428(v5, 1);
  v9 = v8;
  v0[13] = v8;

  if (v7 >> 62)
  {
    v10 = sub_221FB6868();
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v9 >> 62)
    {
      if (sub_221FB6868())
      {
        goto LABEL_8;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_8:
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  sub_221EDB9D0(v13);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_221E9CFE8(v0[5], &qword_27CFEC118, &unk_221FBB0A0);
  }

  else
  {
    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[7];
    (*(v16 + 32))(v0[10], v0[5], v15);
    sub_221FB5BB8();
    sub_221FB5B28();
    v18 = v17;
    v19 = *(v16 + 8);
    v19(v14, v15);
    sub_221FB5B28();
    v21 = v18 - v20;
    v22 = v0[10];
    if (v21 > 0.0 && v21 < 86400.0)
    {
      v24 = v0[7];
      v23 = v0[8];
      v25 = v0[6];

      (*(v24 + 16))(v23, v22, v25);
      v26 = sub_221FB61B8();
      v27 = sub_221FB65C8();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[10];
      v30 = v0[8];
      v31 = v0[6];
      if (v28)
      {
        v32 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v78[0] = v76;
        *v32 = 136315138;
        sub_221EDEF1C();
        v77 = v29;
        v33 = sub_221FB6B08();
        v35 = v34;
        v19(v30, v31);
        v36 = sub_221EF4114(v33, v35, v78);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_221E93000, v26, v27, "Rate limiting push for consolidation, last attempt %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x223DADA80](v76, -1, -1);
        MEMORY[0x223DADA80](v32, -1, -1);

        v37 = v77;
      }

      else
      {

        v19(v30, v31);
        v37 = v29;
      }

      v19(v37, v31);
      goto LABEL_40;
    }

    v19(v0[10], v0[6]);
  }

  v38 = v0[9];
  v39 = v0[6];
  v40 = v0[7];
  sub_221FB5BB8();
  sub_221EDBC78();
  (*(v40 + 8))(v38, v39);
  if (v10)
  {

    v41 = sub_221FB61B8();
    v42 = sub_221FB65C8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v78[0] = v44;
      *v43 = 136315138;
      v45 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
      v46 = MEMORY[0x223DAC810](v7, v45);
      v48 = sub_221EF4114(v46, v47, v78);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_221E93000, v41, v42, "Found legacy relationships to consolidate: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x223DADA80](v44, -1, -1);
      MEMORY[0x223DADA80](v43, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0Tm((v0[4] + 48), *(v0[4] + 72));
    v49 = swift_task_alloc();
    v0[14] = v49;
    *v49 = v0;
    v49[1] = sub_221EDE1A8;
    v50 = v0[2];
    v51 = v0[3];
    v52 = MEMORY[0x277D84F90];

    return sub_221EBA884(v7, v52, v50, v51);
  }

  v54 = sub_221FB61B8();
  v55 = sub_221FB65C8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_221E93000, v54, v55, "No legacy relationships to consolidate", v56, 2u);
    MEMORY[0x223DADA80](v56, -1, -1);
  }

  v57 = v0[13];
  if (v57 >> 62)
  {
    v58 = sub_221FB6868();
  }

  else
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v58)
  {

    v59 = sub_221FB61B8();
    v60 = sub_221FB65C8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = v0[13];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v78[0] = v63;
      *v62 = 136315138;
      v64 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
      v65 = MEMORY[0x223DAC810](v61, v64);
      v67 = sub_221EF4114(v65, v66, v78);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_221E93000, v59, v60, "Found secure cloud relationships to consolidate: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x223DADA80](v63, -1, -1);
      MEMORY[0x223DADA80](v62, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0Tm((v0[4] + 48), *(v0[4] + 72));
    v68 = swift_task_alloc();
    v0[17] = v68;
    *v68 = v0;
    v68[1] = sub_221EDE79C;
    v69 = v0[13];
    v70 = v0[2];
    v71 = v0[3];

    return sub_221EBB94C(v69, v70, v71);
  }

  v72 = sub_221FB61B8();
  v73 = sub_221FB65C8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_221E93000, v72, v73, "No secure cloud relationships to consolidate", v74, 2u);
    MEMORY[0x223DADA80](v74, -1, -1);
  }

LABEL_40:

  v75 = v0[1];

  return v75();
}

uint64_t sub_221EDE1A8(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221EDE338, 0, 0);
  }
}