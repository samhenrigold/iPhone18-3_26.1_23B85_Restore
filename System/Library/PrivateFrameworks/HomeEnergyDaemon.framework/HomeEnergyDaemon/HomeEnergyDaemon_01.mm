uint64_t sub_22B135FC4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22B206AB0(v3);
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

uint64_t sub_22B136050(double a1, double a2)
{
  *(v3 + 56) = v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  v4 = sub_22B36052C();
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B136138, v2, 0);
}

uint64_t sub_22B136138()
{
  v27 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[14] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D0C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  v11 = v0[8];
  v10 = v0[9];
  if (v8)
  {
    v25 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B368F70, &v26);
    _os_log_impl(&dword_22B116000, v6, v7, "EnergyKitUtilityActor->%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    v14 = *(v10 + 8);
    v14(v25, v11);
  }

  else
  {

    v14 = *(v10 + 8);
    v14(v9, v11);
  }

  v0[17] = v14;
  v5(v0[12], v4, v0[8]);
  v15 = sub_22B36050C();
  v16 = sub_22B360CFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "Fetching utilityID from server.", v17, 2u);
    MEMORY[0x23188F650](v17, -1, -1);
  }

  v18 = v0[12];
  v19 = v0[8];

  v14(v18, v19);
  sub_22B3602DC();
  v20 = sub_22B36029C();
  v0[18] = v20;
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_22B136434;
  v22.n128_u64[0] = v0[5];
  v23.n128_u64[0] = v0[6];

  return MEMORY[0x282172618](v20, v22, v23);
}

uint64_t sub_22B136434(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = *(v3 + 56);
    v5 = sub_22B136790;
  }

  else
  {
    v6 = *(v3 + 56);

    v5 = sub_22B13655C;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B13655C()
{
  v19 = v0;
  (*(v0 + 120))(*(v0 + 88), *(v0 + 112), *(v0 + 64));

  v1 = sub_22B36050C();
  v2 = sub_22B360D0C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 160);
    v17 = *(v0 + 136);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B368F70, &v18);
    *(v6 + 12) = 2080;
    v8 = MEMORY[0x23188E390](v3, MEMORY[0x277D837D0]);
    v10 = sub_22B1A7B20(v8, v9, &v18);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_22B116000, v1, v2, "%s server result: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v7, -1, -1);
    MEMORY[0x23188F650](v6, -1, -1);

    v17(v4, v5);
  }

  else
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);

    v11(v12, v13);
  }

  v14 = *(v0 + 160);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_22B136790()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 168);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22B116000, v7, v8, "Unable to fetch utilities from server. Error: %@", v11, 0xCu);
    sub_22B123284(v12, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  else
  {
  }

  (*(v0 + 136))(*(v0 + 80), *(v0 + 64));

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_22B13695C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B35DF8C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA280, &qword_22B363930);
  v3[11] = swift_task_alloc();
  v5 = sub_22B36052C();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B136AE4, v2, 0);
}

uint64_t sub_22B136AE4()
{
  v46 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  v0[19] = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v0[20] = v5;
  v0[21] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44 = v5;
  v5(v1, v4, v3);
  v6 = sub_22B36050C();
  v7 = sub_22B360D0C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v10 = v0[12];
  v11 = v0[13];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B368F50, &v45);
    _os_log_impl(&dword_22B116000, v6, v7, "EnergyKitUtilityActor->%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[22] = v14;
  v15 = v0[6];
  v42 = v14;
  if (v15)
  {
    v43 = v0[5];
  }

  else
  {
    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[8];
    v19 = v0[9];
    sub_22B35DF7C();
    sub_22B35DF6C();
    (*(v19 + 8))(v16, v18);
    v20 = sub_22B35DF5C();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 48))(v17, 1, v20);
    v23 = v0[11];
    if (v22 == 1)
    {
      sub_22B123284(v0[11], &qword_27D8BA280, &qword_22B363930);
      v43 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v43 = sub_22B35DF4C();
      v15 = v24;
      (*(v21 + 8))(v23, v20);
    }
  }

  v0[23] = v15;
  v44(v0[17], v4, v0[12]);

  v25 = sub_22B36050C();
  v26 = sub_22B360D0C();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[17];
  v29 = v0[12];
  if (v27)
  {
    v30 = swift_slowAlloc();
    v41 = v4;
    v31 = swift_slowAlloc();
    v45 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B368F50, &v45);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_22B1A7B20(v43, v15, &v45);
    _os_log_impl(&dword_22B116000, v25, v26, "%s country code: %s", v30, 0x16u);
    swift_arrayDestroy();
    v32 = v31;
    v4 = v41;
    MEMORY[0x23188F650](v32, -1, -1);
    MEMORY[0x23188F650](v30, -1, -1);
  }

  v42(v28, v29);
  v44(v0[16], v4, v0[12]);
  v33 = sub_22B36050C();
  v34 = sub_22B360CFC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_22B116000, v33, v34, "Fetching all utilities from server", v35, 2u);
    MEMORY[0x23188F650](v35, -1, -1);
  }

  v36 = v0[16];
  v37 = v0[12];

  v42(v36, v37);
  sub_22B3602DC();
  v38 = sub_22B36029C();
  v0[24] = v38;
  v39 = swift_task_alloc();
  v0[25] = v39;
  *v39 = v0;
  v39[1] = sub_22B137028;

  return MEMORY[0x282172638](v43, v15, v38);
}

uint64_t sub_22B137028(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v5 = *(v3 + 192);
  v6 = *(v3 + 56);
  if (v1)
  {

    v7 = sub_22B137400;
  }

  else
  {

    v7 = sub_22B1371A8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B1371A8()
{
  v20 = v0;
  (*(v0 + 160))(*(v0 + 120), *(v0 + 152), *(v0 + 96));

  v1 = sub_22B36050C();
  v2 = sub_22B360D0C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 208);
    v18 = *(v0 + 176);
    v4 = *(v0 + 120);
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B368F50, &v19);
    *(v6 + 12) = 2080;
    v8 = sub_22B36025C();
    v9 = MEMORY[0x23188E390](v3, v8);
    v11 = sub_22B1A7B20(v9, v10, &v19);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_22B116000, v1, v2, "%s server result: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v7, -1, -1);
    MEMORY[0x23188F650](v6, -1, -1);

    v18(v4, v5);
  }

  else
  {
    v12 = *(v0 + 176);
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);

    v12(v13, v14);
  }

  v15 = *(v0 + 208);

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_22B137400()
{
  v1 = *(v0 + 216);
  (*(v0 + 160))(*(v0 + 112), *(v0 + 152), *(v0 + 96));
  v2 = v1;
  v3 = sub_22B36050C();
  v4 = sub_22B360D1C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 216);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22B116000, v3, v4, "Unable to fetch utilities from server. Error: %@", v7, 0xCu);
    sub_22B123284(v8, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v8, -1, -1);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 176))(*(v0 + 112), *(v0 + 96));

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_22B1375D8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1376C0, v2, 0);
}

uint64_t sub_22B1376C0()
{
  v27 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[14] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D0C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  v11 = v0[8];
  v10 = v0[9];
  if (v8)
  {
    v25 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD00000000000001ELL, 0x800000022B368F30, &v26);
    _os_log_impl(&dword_22B116000, v6, v7, "EnergyKitUtilityActor->%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    v14 = *(v10 + 8);
    v14(v25, v11);
  }

  else
  {

    v14 = *(v10 + 8);
    v14(v9, v11);
  }

  v0[17] = v14;
  v5(v0[12], v4, v0[8]);
  v15 = sub_22B36050C();
  v16 = sub_22B360CFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "Fetching utility information from server", v17, 2u);
    MEMORY[0x23188F650](v17, -1, -1);
  }

  v18 = v0[12];
  v19 = v0[8];

  v14(v18, v19);
  sub_22B3602DC();
  v20 = sub_22B36029C();
  v0[18] = v20;
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_22B1379C0;
  v23 = v0[5];
  v22 = v0[6];

  return MEMORY[0x282172650](v23, v22, v20);
}

uint64_t sub_22B1379C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = *(v3 + 56);
    v5 = sub_22B137D1C;
  }

  else
  {
    v6 = *(v3 + 56);

    v5 = sub_22B137AE8;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B137AE8()
{
  v20 = v0;
  v1 = *(v0 + 160);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 112), *(v0 + 64));
  v2 = v1;
  v3 = sub_22B36050C();
  v4 = sub_22B360D0C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v17 = *(v0 + 88);
    v18 = *(v0 + 136);
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_22B1A7B20(0xD00000000000001ELL, 0x800000022B368F30, &v19);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v2;
    *v8 = v5;
    v10 = v2;
    _os_log_impl(&dword_22B116000, v3, v4, "%s server result: %@", v7, 0x16u);
    sub_22B123284(v8, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v7, -1, -1);

    v18(v17, v6);
  }

  else
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 88);
    v13 = *(v0 + 64);

    v11(v12, v13);
  }

  v14 = *(v0 + 160);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_22B137D1C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 168);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_22B116000, v7, v8, "Unable to fetch utility information from server. Error %@", v11, 0xCu);
    sub_22B123284(v12, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  else
  {
  }

  (*(v0 + 136))(*(v0 + 80), *(v0 + 64));

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_22B137EE8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B137F54(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22B36134C() & 1;
  }
}

uint64_t sub_22B137FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA950, &qword_22B364940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B138038(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22B36134C() & 1;
  }
}

void *sub_22B1380AC(NSObject *a1, uint64_t a2, void *a3, objc_class *a4, objc_class *a5, objc_class *a6, objc_class *a7, objc_class *a8, objc_class *a9)
{
  v179 = a8;
  v185 = a7;
  v178 = a6;
  v156 = a3;
  v162 = sub_22B3605EC();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v159 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_22B36062C();
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v157 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_22B36037C();
  v163 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v176 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v175 = &v147 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v18 - 8);
  v174 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v186 = (&v147 - v21);
  v22 = sub_22B3603FC();
  MEMORY[0x28223BE20](v22 - 8);
  v177 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v169 = (&v147 - v25);
  v181 = sub_22B35EDDC();
  v165 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v183 = (&v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v182 = &v147 - v28;
  v184 = sub_22B36052C();
  v188 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v168 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v167 = &v147 - v31;
  MEMORY[0x28223BE20](v32);
  v166 = (&v147 - v33);
  MEMORY[0x28223BE20](v34);
  v164 = &v147 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = (&v147 - v37);
  MEMORY[0x28223BE20](v39);
  v172 = &v147 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v147 - v42;
  v44 = sub_22B35F01C();
  v45 = *(v44 - 8);
  *&v46 = MEMORY[0x28223BE20](v44).n128_u64[0];
  v48 = &v147 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(a2 + 112);
  if (result)
  {
    v50 = [result persistentStoreCoordinator];
    [a1 setPersistentStoreCoordinator:v50];

    (*(v45 + 104))(v48, *MEMORY[0x277D073C8], v44);
    v180 = a4;
    v187 = a5;
    v51 = sub_22B1442DC(a4, a5, a1, v48, 1, 0, a2);
    result = (*(v45 + 8))(v48, v44);
    if (v51)
    {
      v170 = v51 >> 62;
      if (v51 >> 62)
      {
        v52 = sub_22B36109C();
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v53 = v184;
      v54 = v185;
      v171 = a9;
      if (v52 > 1)
      {
        v151 = a1;
        v149 = a2;
        if (qword_28140A0C8 != -1)
        {
          goto LABEL_64;
        }

        while (1)
        {
          v55 = __swift_project_value_buffer(v53, qword_28140BD10);
          swift_beginAccess();
          v56 = v188;
          v57 = v188[2];
          v152 = v55;
          v154 = (v188 + 2);
          v153 = v57;
          v57(v38, v55, v53);

          v58 = sub_22B36050C();
          v59 = sub_22B360D2C();

          v60 = os_log_type_enabled(v58, v59);
          v61 = v183;
          if (v60)
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            *&aBlock = v63;
            *v62 = 136315650;
            *(v62 + 4) = sub_22B1A7B20(v178, v54, &aBlock);
            *(v62 + 12) = 2048;
            if (v170)
            {
              v64 = sub_22B36109C();
            }

            else
            {
              v64 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v62 + 14) = v64;

            *(v62 + 22) = 2080;
            *(v62 + 24) = sub_22B1A7B20(v180, v187, &aBlock);
            _os_log_impl(&dword_22B116000, v58, v59, "[Deduplication] [%s] %ld duplicates for %s", v62, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v63, -1, -1);
            MEMORY[0x23188F650](v62, -1, -1);

            v56 = v188;
          }

          else
          {
          }

          v155 = v56[1];
          v155(v38, v53);
          v81 = v151;
          if (v170)
          {
            if (!sub_22B36109C())
            {
LABEL_28:

              [v81 refreshAllObjects];
              v61 = v166;
              v153(v166, v152, v53);

              v89 = v187;

              v81 = sub_22B36050C();
              v90 = sub_22B360CFC();

              if (!os_log_type_enabled(v81, v90))
              {
                goto LABEL_33;
              }

              v91 = v53;
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *&aBlock = v93;
              *v92 = 136315394;
              *(v92 + 4) = sub_22B1A7B20(v178, v54, &aBlock);
              *(v92 + 12) = 2080;
              *(v92 + 14) = sub_22B1A7B20(v180, v89, &aBlock);
              _os_log_impl(&dword_22B116000, v81, v90, "[Deduplication] [%s] End deduplication of %s", v92, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v93, -1, -1);
              MEMORY[0x23188F650](v92, -1, -1);

              v94 = v61;
              v95 = v91;
LABEL_34:
              v97 = (v155)(v94, v95);
              return (v179)(v97);
            }
          }

          else if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v82 = v51 & 0xC000000000000001;
          if ((v51 & 0xC000000000000001) != 0)
          {
            v83 = MEMORY[0x23188EAC0](0, v51);
          }

          else
          {
            if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

            v83 = *(v51 + 32);
          }

          v59 = v83;
          v84 = [v83 metadata];
          v85 = sub_22B35DCDC();
          v87 = v86;

          v193 = v85;
          v194 = v87;
          v191 = 0;
          aBlock = 0u;
          v190 = 0u;
          v81 = v169;
          sub_22B3603EC();
          v88 = sub_22B144B84(qword_281408638, MEMORY[0x277D07340], MEMORY[0x277D07338]);
          v38 = v181;
          v58 = v181;
          v53 = 0;
          sub_22B36043C();
          if (v170)
          {
            if (v51 < 0)
            {
              v81 = v51;
            }

            else
            {
              v81 = (v51 & 0xFFFFFFFFFFFFFF8);
            }

            if (sub_22B36109C() < 1)
            {
              goto LABEL_68;
            }

            v96 = sub_22B36109C();
          }

          else
          {
            v96 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v96)
            {
              __break(1u);
LABEL_33:

              v94 = v61;
              v95 = v53;
              goto LABEL_34;
            }
          }

          if (v96 < v52)
          {
            goto LABEL_67;
          }

          if (v82)
          {
            sub_22B35EDEC();

            v98 = 1;
            do
            {
              v99 = v98 + 1;
              sub_22B36118C();
              v98 = v99;
            }

            while (v52 != v99);
            if (v170)
            {

              v100 = sub_22B36128C();
              v102 = v101;
              v104 = v103;
              v52 = v105 >> 1;
              goto LABEL_49;
            }
          }

          else
          {
          }

          v100 = v51 & 0xFFFFFFFFFFFFFF8;
          v102 = (v51 & 0xFFFFFFFFFFFFFF8) + 32;
          v104 = 1;
LABEL_49:
          v170 = v88;
          v148 = v59;
          v147 = v100;
          swift_unknownObjectRetain();
          if (v52 == v104)
          {
LABEL_50:
            swift_unknownObjectRelease_n();
            v106 = v164;
            v107 = v184;
            v153(v164, v152, v184);
            v108 = v187;

            v109 = sub_22B36050C();
            v110 = sub_22B360D2C();

            if (os_log_type_enabled(v109, v110))
            {
              v111 = swift_slowAlloc();
              v112 = swift_slowAlloc();
              *&aBlock = v112;
              *v111 = 136315138;
              v113 = v180;
              *(v111 + 4) = sub_22B1A7B20(v180, v108, &aBlock);
              _os_log_impl(&dword_22B116000, v109, v110, "Deduplicated %s", v111, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v112);
              MEMORY[0x23188F650](v112, -1, -1);
              MEMORY[0x23188F650](v111, -1, -1);

              v155(v106, v107);
              v114 = v179;
            }

            else
            {

              v155(v106, v107);
              v114 = v179;
              v113 = v180;
            }

            v129 = sub_22B36042C();
            v52 = v130;
            v38 = v129;
            v131 = [v148 zoneName];
            v82 = sub_22B36084C();
            v59 = v132;

            v81 = swift_allocObject();
            v81[2].isa = v113;
            v53 = v113;
            v61 = v187;
            v133 = v151;
            v81[3].isa = v187;
            v81[4].isa = v133;
            v134 = v178;
            v81[5].isa = v51;
            v81[6].isa = v134;
            v81[7].isa = v185;
            v81[8].isa = v114;
            v81[9].isa = v171;

            v58 = v133;

            v188 = MEMORY[0x23188EEB0](v135);
            if (qword_2814097C0 == -1)
            {
LABEL_61:
              v136 = *(qword_28140BCF0 + 24);
              v137 = swift_allocObject();
              v137[2] = v58;
              v137[3] = v53;
              v137[4] = v61;
              v137[5] = v38;
              v137[6] = v52;
              v137[7] = v82;
              v138 = v149;
              v137[8] = v59;
              v137[9] = v138;
              v139 = v156;
              v137[10] = v156;
              v137[11] = sub_22B144AE4;
              v137[12] = v81;
              v191 = sub_22B144B18;
              v192 = v137;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              *&v190 = sub_22B118A6C;
              *(&v190 + 1) = &block_descriptor_41;
              v140 = _Block_copy(&aBlock);

              v141 = v58;
              v142 = v136;
              sub_22B144B30(v38, v52);

              v143 = v139;

              v144 = v157;
              sub_22B36060C();
              v193 = MEMORY[0x277D84F90];
              sub_22B144B84(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
              sub_22B124A3C();
              v145 = v159;
              v146 = v162;
              sub_22B36104C();
              MEMORY[0x23188E6D0](0, v144, v145, v140);
              _Block_release(v140);

              (*(v161 + 8))(v145, v146);
              (*(v158 + 8))(v144, v160);

              objc_autoreleasePoolPop(v188);

              sub_22B12F174(v38, v52);
              return (v165[1].isa)(v182, v181);
            }

LABEL_69:
            swift_once();
            goto LABEL_61;
          }

          v166 = (v163 + 8);
          v169 = v165 + 1;
          v54 = v52 - v104;
          if (v52 <= v104)
          {
            v115 = v104;
          }

          else
          {
            v115 = v52;
          }

          v116 = v115 - v104;
          v117 = (v102 + 8 * v104);
          v150 = v51;
          while (v116)
          {
            v120 = *v117;
            v121 = [v120 metadata];
            v122 = sub_22B35DCDC();
            v124 = v123;

            v193 = v122;
            v194 = v124;
            v191 = 0;
            aBlock = 0u;
            v190 = 0u;
            sub_22B3603EC();
            v125 = sub_22B36043C();
            v126 = MEMORY[0x23188EEB0](v125);
            sub_22B35EC3C();
            v127 = v175;
            sub_22B36034C();
            sub_22B36036C();
            (*v166)(v127, v173);
            v172 = v120;
            sub_22B35EC3C();
            v128 = v176;
            sub_22B36034C();
            v52 = v174;
            sub_22B36036C();
            (*v166)(v128, v173);
            sub_22B35EAFC();
            v118 = v183;
            v119 = v186;
            sub_22B35EADC();
            sub_22B123284(v52, &qword_27D8BA340, &qword_22B363FB0);
            sub_22B123284(v119, &qword_27D8BA340, &qword_22B363FB0);
            objc_autoreleasePoolPop(v126);

            v38 = v181;
            (v169->isa)(v118, v181);
            --v116;
            ++v117;
            --v54;
            v51 = v150;
            if (!v54)
            {
              goto LABEL_50;
            }
          }

          __break(1u);
LABEL_64:
          swift_once();
        }
      }

      [a1 refreshAllObjects];
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v65 = __swift_project_value_buffer(v53, qword_28140BD10);
      swift_beginAccess();
      v66 = v188;
      v186 = v188[2];
      v186(v43, v65, v53);

      v67 = v187;

      v68 = v53;
      v69 = sub_22B36050C();
      v70 = sub_22B360CFC();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v195 = v72;
        *v71 = 136315394;
        *(v71 + 4) = sub_22B1A7B20(v178, v185, &v195);
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_22B1A7B20(v180, v67, &v195);
        _os_log_impl(&dword_22B116000, v69, v70, "[Deduplication] [%s] Single Site. End deduplication of %s", v71, 0x16u);
        swift_arrayDestroy();
        v73 = v72;
        v54 = v185;
        MEMORY[0x23188F650](v73, -1, -1);
        MEMORY[0x23188F650](v71, -1, -1);

        v74 = v188[1];
      }

      else
      {

        v74 = v66[1];
      }

      v74(v43, v68);
      v75 = v172;
      v186(v172, v65, v68);

      v76 = sub_22B36050C();
      v77 = sub_22B360CFC();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v195 = v79;
        *v78 = 136315394;
        *(v78 + 4) = sub_22B1A7B20(v178, v54, &v195);
        *(v78 + 12) = 2080;
        *(v78 + 14) = sub_22B1A7B20(v180, v67, &v195);
        _os_log_impl(&dword_22B116000, v76, v77, "[Deduplication] [%s] End site deduplication of %s", v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v79, -1, -1);
        MEMORY[0x23188F650](v78, -1, -1);
      }

      v80 = (v74)(v75, v68);
      return (v179)(v80);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B139B3C(void *a1, uint64_t a2, unint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9)
{
  v53 = a7;
  v54 = a8;
  v50 = a6;
  v51 = a2;
  v13 = sub_22B36052C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  if (a1)
  {
    v21 = a1;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v48 = v16;
    v49 = a4;
    v22 = __swift_project_value_buffer(v13, qword_28140BD10);
    swift_beginAccess();
    (*(v14 + 16))(v20, v22, v13);
    v23 = a1;

    v24 = sub_22B36050C();
    v25 = sub_22B360D1C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_22B1A7B20(v51, a3, aBlock);
      *(v26 + 12) = 2112;
      v29 = a1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v30;
      *v27 = v30;
      _os_log_impl(&dword_22B116000, v24, v25, "[Deduplication] Failed for %s %@", v26, 0x16u);
      sub_22B123284(v27, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23188F650](v28, -1, -1);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    (*(v14 + 8))(v20, v13);
    v31 = swift_allocObject();
    v32 = v49;
    *(v31 + 16) = v49;
    v33 = swift_allocObject();
    v52 = sub_22B1451F0;
    *(v33 + 16) = sub_22B1451F0;
    *(v33 + 24) = v31;
    aBlock[4] = sub_22B128240;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_90;
    v34 = _Block_copy(aBlock);
    v35 = v32;

    [v35 performBlockAndWait_];

    _Block_release(v34);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
      return result;
    }

    v16 = v48;
  }

  else
  {
    MEMORY[0x28223BE20](v18);
    *(&v48 - 2) = a4;
    *(&v48 - 1) = a5;
    MEMORY[0x28223BE20](v37);
    *(&v48 - 2) = sub_22B144CF8;
    *(&v48 - 1) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA210, &qword_22B363A20);
    sub_22B360E7C();
    v52 = 0;
    v31 = 0;
  }

  v39 = v53;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v13, qword_28140BD10);
  swift_beginAccess();
  (*(v14 + 16))(v16, v40, v13);

  v41 = sub_22B36050C();
  v42 = sub_22B360D2C();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53 = a9;
    v45 = v16;
    v46 = v44;
    v56[0] = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_22B1A7B20(v50, v39, v56);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_22B1A7B20(v51, a3, v56);
    _os_log_impl(&dword_22B116000, v41, v42, "[Deduplication] [%s] End site deduplication of %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v46, -1, -1);
    MEMORY[0x23188F650](v43, -1, -1);

    v47 = (*(v14 + 8))(v45, v13);
  }

  else
  {

    v47 = (*(v14 + 8))(v16, v13);
  }

  v54(v47);
  return sub_22B144D48(v52, v31);
}

id sub_22B13A1B0(void *a1, unint64_t a2)
{
  result = sub_22B207390(3);
  if (!v2)
  {
    if (a2 >> 62)
    {
      result = sub_22B36109C();
      v6 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x23188EAC0](i, a2);
          }

          else
          {
            v8 = *(a2 + 8 * i + 32);
          }

          v9 = v8;
          [a1 deleteObject_];
        }
      }
    }

    sub_22B207390(3);
    return [a1 refreshAllObjects];
  }

  return result;
}

uint64_t sub_22B13A2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_22B36052C();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B13A384, 0, 0);
}

uint64_t sub_22B13A384()
{
  v33 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_22B36050C();
  v6 = sub_22B360D0C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 80);
  if (v7)
  {
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, &v32);
    _os_log_impl(&dword_22B116000, v5, v6, "Deduplication caller %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v15 = sub_22B13A9F4(*(v0 + 40), 1, *(v0 + 64), *(v0 + 72));
  *(v0 + 104) = v15;
  v16 = *(v15 + 32);
  *(v0 + 152) = v16;
  v17 = -1;
  v18 = -1 << v16;
  if (-(-1 << v16) < 64)
  {
    v17 = ~(-1 << -(-1 << v16));
  }

  v19 = v17 & *(v15 + 56);
  if (v19)
  {
    v20 = 0;
LABEL_12:
    *(v0 + 112) = v19;
    *(v0 + 120) = v20;
    v23 = *(v0 + 40);
    v24 = (*(v15 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v19)))));
    v26 = *v24;
    v25 = v24[1];
    *(v0 + 128) = v25;
    v27 = swift_task_alloc();
    *(v0 + 136) = v27;
    *(v27 + 16) = *(v0 + 64);
    *(v27 + 32) = v26;
    *(v27 + 40) = v25;
    *(v27 + 48) = v23;

    v28 = swift_task_alloc();
    *(v0 + 144) = v28;
    *v28 = v0;
    v28[1] = sub_22B13A6F8;
    v29 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v28, 0, 0, 0xD000000000000022, 0x800000022B3690B0, sub_22B144228, v27, v29);
  }

  else
  {
    v21 = 0;
    v22 = ((63 - v18) >> 6) - 1;
    while (v22 != v21)
    {
      v20 = v21 + 1;
      v19 = *(v15 + 8 * v21++ + 64);
      if (v19)
      {
        goto LABEL_12;
      }
    }

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_22B13A6F8()
{

  return MEMORY[0x2822009F8](sub_22B13A82C, 0, 0);
}

uint64_t sub_22B13A82C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 120);
  v10 = (*(v8 + 112) - 1) & *(v8 + 112);
  if (v10)
  {
    a1 = *(v8 + 104);
LABEL_7:
    *(v8 + 112) = v10;
    *(v8 + 120) = v9;
    v12 = *(v8 + 40);
    v13 = (a1[6] + ((v9 << 10) | (16 * __clz(__rbit64(v10)))));
    v15 = *v13;
    v14 = v13[1];
    *(v8 + 128) = v14;
    v16 = swift_task_alloc();
    *(v8 + 136) = v16;
    *(v16 + 16) = *(v8 + 64);
    *(v16 + 32) = v15;
    *(v16 + 40) = v14;
    *(v16 + 48) = v12;

    a1 = swift_task_alloc();
    *(v8 + 144) = a1;
    *a1 = v8;
    a1[1] = sub_22B13A6F8;
    a6 = sub_22B144228;
    a5 = 0x800000022B3690B0;
    a8 = MEMORY[0x277D84F78] + 8;
    a2 = 0;
    a3 = 0;
    a4 = 0xD000000000000022;
    a7 = v16;

    return MEMORY[0x2822007B8](a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return MEMORY[0x2822007B8](a1, a2, a3, a4, a5, a6, a7, a8);
      }

      a1 = *(v8 + 104);
      if (v11 >= (((1 << *(v8 + 152)) + 63) >> 6))
      {
        break;
      }

      v10 = a1[v11 + 7];
      ++v9;
      if (v10)
      {
        v9 = v11;
        goto LABEL_7;
      }
    }

    v17 = *(v8 + 8);

    return v17();
  }
}

uint64_t sub_22B13A9F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22B36052C();
  v5 = MEMORY[0x28223BE20](v4);
  v6 = MEMORY[0x23188EEB0](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA290, &qword_22B363A28);
  sub_22B360E7C();
  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t sub_22B13AC30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v52 = a6;
  v53 = a2;
  v49 = a5;
  v50 = a4;
  v54 = a3;
  v7 = sub_22B36052C();
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B35DF1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  (*(v15 + 16))(&v46 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  v21 = *(v15 + 32);
  v51 = v20;
  v22 = v21(v20 + v19, v18, v14);
  v47 = MEMORY[0x23188EEB0](v22);
  sub_22B35DF0C();
  v23 = sub_22B35DECC();
  v25 = v24;
  (*(v11 + 8))(v13, v10);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  v27 = v48;
  (*(v48 + 16))(v9, v26, v7);

  v28 = v49;

  v29 = sub_22B36050C();
  v30 = sub_22B360CFC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v46 = v23;
    v32 = v31;
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_22B1A7B20(v46, v25, aBlock);
    *(v32 + 12) = 2080;
    v34 = v50;
    *(v32 + 14) = sub_22B1A7B20(v50, v28, aBlock);
    _os_log_impl(&dword_22B116000, v29, v30, "[Deduplication] [%s] Begin site deduplication of %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v33, -1, -1);
    v35 = v32;
    v23 = v46;
    MEMORY[0x23188F650](v35, -1, -1);

    (*(v27 + 8))(v9, v7);
    v36 = v28;
  }

  else
  {

    (*(v27 + 8))(v9, v7);
    v36 = v28;
    v34 = v50;
  }

  v37 = swift_allocObject();
  v38 = v52;
  v39 = v53;
  v37[2] = v52;
  v37[3] = v39;
  v40 = v54;
  v37[4] = v54;
  v37[5] = v34;
  v37[6] = v36;
  v37[7] = v23;
  v37[8] = v25;
  v37[9] = sub_22B144238;
  v37[10] = v51;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_22B1442A4;
  *(v41 + 24) = v37;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_32;
  v42 = _Block_copy(aBlock);

  v43 = v38;

  v44 = v40;

  [v43 performBlockAndWait_];
  _Block_release(v42);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v47);
  }

  return result;
}

uint64_t sub_22B13B1D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v43 = a3;
  v44 = a4;
  v42 = a1;
  v40 = a2;
  v41 = a10;
  v18 = sub_22B36052C();
  v38 = *(v18 - 8);
  v39 = v18;
  MEMORY[0x28223BE20](v18);
  v37 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v22 = v40;
  v21 = v41;
  v20[2] = a1;
  v20[3] = v22;
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = a6;
  v40 = a6;
  v20[8] = a7;
  v20[9] = a8;
  v20[10] = a9;
  v20[11] = v21;
  v20[12] = a11;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22B144C34;
  *(v23 + 24) = v20;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_51;
  v24 = _Block_copy(aBlock);
  v25 = v42;

  sub_22B144B30(v44, a5);

  v26 = a9;

  [v25 performBlockAndWait_];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else if (qword_28140A0C8 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v27 = v39;
  v28 = __swift_project_value_buffer(v39, qword_28140BD10);
  swift_beginAccess();
  v30 = v37;
  v29 = v38;
  (*(v38 + 16))(v37, v28, v27);

  v31 = sub_22B36050C();
  v32 = sub_22B360D2C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_22B1A7B20(v40, a7, &v45);
    _os_log_impl(&dword_22B116000, v31, v32, "Add to share for %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x23188F650](v34, -1, -1);
    MEMORY[0x23188F650](v33, -1, -1);
  }

  (*(v29 + 8))(v30, v27);
}

void sub_22B13B58C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void (*a10)(void), uint64_t a11)
{
  v73 = a7;
  v74 = a8;
  v72 = a6;
  v14 = sub_22B36052C();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x28223BE20](v14);
  v68 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B35DE9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  sub_22B35EDEC();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  *(v20 + 16) = v21;
  v22 = v21;
  v66 = a2;
  v67 = a3;
  v23 = sub_22B36081C();
  [v22 setSiteID_];

  v24 = v22;
  v25 = sub_22B35DCCC();
  [v24 setMetadata_];

  v26 = v24;
  sub_22B35DE6C();
  v27 = sub_22B35DDDC();
  (*(v17 + 8))(v19, v16);
  v29 = v72;
  v28 = v73;
  [v26 setCreationDate_];

  v30 = v74;
  v71 = v20;
  v31 = *(v20 + 16);
  v32 = sub_22B36081C();
  [v31 setZoneName_];

  if (v30[14])
  {
    v33 = MEMORY[0x23188EEB0]([a1 assignObject:v31 toPersistentStore:?]);
    sub_22B1411A8(v30, 0, v29, v28, v76, aBlock);
    v63 = a1;
    v64 = a10;
    v65 = a11;
    objc_autoreleasePoolPop(v33);
    v34 = aBlock[0];
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v35 = v70;
    v36 = __swift_project_value_buffer(v70, qword_28140BD10);
    swift_beginAccess();
    v38 = v68;
    v37 = v69;
    (*(v69 + 16))(v68, v36, v35);

    v39 = sub_22B36050C();
    v40 = sub_22B360CFC();

    v41 = v34 >> 62;
    if (!os_log_type_enabled(v39, v40))
    {

      (*(v37 + 8))(v38, v35);
      goto LABEL_9;
    }

    v35 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v35 = 134218242;
    v38 = (v34 >> 62);
    if (v41)
    {
      goto LABEL_19;
    }

    for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
    {
      v43 = v68;
      v44 = v66;
      *(v35 + 4) = i;

      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_22B1A7B20(v44, v67, aBlock);
      _os_log_impl(&dword_22B116000, v39, v40, "Found %ld shares for %s", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v35, -1, -1);

      (*(v69 + 8))(v43, v70);
      v30 = v74;
      v41 = v38;
LABEL_9:
      if (v41)
      {
        v59 = sub_22B36109C();
        v45 = v65;
        if (!v59)
        {
LABEL_16:

          sub_22B134CDC();
          v60 = swift_allocError();
          *v61 = 13;
          v64();

          return;
        }
      }

      else
      {
        v45 = v65;
        if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }
      }

      if ((v34 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v46 = *(v34 + 32);
LABEL_14:
        v47 = v46;

        v48 = sub_22B207EFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_22B363650;
        v50 = v71;
        v51 = *(v71 + 16);
        *(v49 + 32) = v51;
        sub_22B128014(0, &unk_281408598, 0x277CBE438);
        v52 = v51;
        v53 = sub_22B360A3C();

        v54 = swift_allocObject();
        v54[2] = v29;
        v54[3] = v28;
        v55 = v63;
        v54[4] = v63;
        v54[5] = v50;
        v54[6] = v64;
        v54[7] = v45;
        aBlock[4] = sub_22B144C94;
        aBlock[5] = v54;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22B333238;
        aBlock[3] = &block_descriptor_60;
        v56 = _Block_copy(aBlock);
        v57 = v47;

        v58 = v55;

        [v48 shareManagedObjects:v53 toShare:v57 completion:v56];
        _Block_release(v56);

        return;
      }

      __break(1u);
LABEL_19:
      ;
    }

    v46 = MEMORY[0x23188EAC0](0, v34);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_22B13BCB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8, void (*a9)(void), uint64_t a10)
{
  v15 = sub_22B36052C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v43 = a5;
    v45 = a8 + 16;
    v46 = a7;
    v19 = a4;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v44 = a9;
    v20 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v18, v20, v15);
    v21 = a4;

    v22 = sub_22B36050C();
    v23 = sub_22B360D1C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = a10;
      v25 = v24;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v25 = 136315394;
      *(v25 + 4) = sub_22B1A7B20(v43, a6, &aBlock);
      *(v25 + 12) = 2112;
      v28 = a4;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v29;
      *v26 = v29;
      _os_log_impl(&dword_22B116000, v22, v23, "Deduplication Failed to add to share for %s %@", v25, 0x16u);
      sub_22B123284(v26, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x23188F650](v27, -1, -1);
      MEMORY[0x23188F650](v25, -1, -1);
    }

    (*(v16 + 8))(v18, v15);
    v30 = swift_allocObject();
    v31 = v45;
    v32 = v46;
    *(v30 + 16) = v46;
    *(v30 + 24) = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_22B144CF0;
    *(v33 + 24) = v30;
    v51 = sub_22B128240;
    v52 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_22B32556C;
    v50 = &block_descriptor_80;
    v34 = _Block_copy(&aBlock);
    v35 = v32;

    [v35 performBlockAndWait_];
    _Block_release(v34);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if ((v34 & 1) == 0)
    {
      sub_22B134CDC();
      v37 = swift_allocError();
      *v38 = 13;
      v44();
    }

    __break(1u);
    goto LABEL_11;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = a9;
  *(v39 + 24) = a10;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_22B144CC4;
  *(v40 + 24) = v39;
  v51 = sub_22B128240;
  v52 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_22B32556C;
  v50 = &block_descriptor_70;
  v41 = _Block_copy(&aBlock);

  [a7 performBlockAndWait_];
  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_22B13C1F0(void *a1, void *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  [a1 deleteObject_];
  v6[0] = 0;
  if ([a1 save_])
  {

    MEMORY[0x2821F9840]();
  }

  else
  {
    v4 = v6[0];
    v5 = sub_22B35DB9C();

    swift_willThrow();
  }
}

uint64_t sub_22B13C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 144) = v13;
  *(v8 + 152) = v14;
  *(v8 + 248) = a8;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = sub_22B35F01C();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  v10 = sub_22B36052C();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B13C454, 0, 0);
}

uint64_t sub_22B13C454()
{
  v54 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || ((v4 = *(v0 + 128), (v4 & 0x2000000000000000) != 0) ? (v5 = HIBYTE(v4) & 0xF) : (v5 = *(v0 + 120) & 0xFFFFFFFFFFFFLL), !v5))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 216);
    v22 = *(v0 + 184);
    v23 = *(v0 + 192);
    v24 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v23 + 16))(v21, v24, v22);

    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 216);
    v30 = *(v0 + 184);
    v29 = *(v0 + 192);
    if (v27)
    {
      v31 = *(v0 + 120);
      v47 = *(v0 + 128);
      v33 = *(v0 + 88);
      v32 = *(v0 + 96);
      v51 = *(v0 + 216);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v53[0] = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_22B1A7B20(v33, v32, v53);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_22B1A7B20(v31, v47, v53);
      _os_log_impl(&dword_22B116000, v25, v26, "Received invalid site id %s or zone name %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v35, -1, -1);
      MEMORY[0x23188F650](v34, -1, -1);

      (*(v29 + 8))(v51, v30);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    sub_22B134CDC();
    swift_allocError();
    *v36 = 13;
    swift_willThrow();

    v20 = *(v0 + 8);
    goto LABEL_16;
  }

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v45 = *(v0 + 160);
  v11 = *(v7 + 104);
  v11(v6, *MEMORY[0x277D073D0]);
  v49 = sub_22B13D248(v2, v1, v6, v9, v10, v8);
  v12 = *(v7 + 8);
  v12(v6, v45);
  (v11)(v6, *MEMORY[0x277D073C8], v45);
  v13 = sub_22B13D248(v2, v1, v6, v9, v10, v8);
  v12(v6, v45);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  if (v49)
  {
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v46 = *(v0 + 88);
    v50 = *(v0 + 104);
    v19 = swift_task_alloc();
    *(v19 + 16) = v16;
    *(v19 + 24) = v15;
    *(v19 + 32) = v14;
    *(v19 + 40) = v46;
    *(v19 + 56) = v50;
    *(v19 + 72) = v18;
    *(v19 + 80) = v17;
    sub_22B360E7C();

    v20 = *(v0 + 8);
LABEL_16:

    return v20();
  }

  v38 = *(v0 + 248);
  v40 = *(v0 + 128);
  v39 = *(v0 + 136);
  v41 = *(v0 + 104);
  v48 = *(v0 + 88);
  v52 = *(v0 + 112);
  v42 = swift_task_alloc();
  *(v0 + 224) = v42;
  *(v42 + 16) = v39;
  *(v42 + 24) = v48;
  *(v42 + 40) = v41;
  *(v42 + 48) = v52;
  *(v42 + 64) = v40;
  *(v42 + 72) = v15;
  *(v42 + 80) = v14;
  *(v42 + 88) = v13 & 1;
  *(v42 + 89) = v38;
  v43 = swift_task_alloc();
  *(v0 + 232) = v43;
  *v43 = v0;
  v43[1] = sub_22B13C99C;
  v44 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v43, 0, 0, 0xD00000000000003CLL, 0x800000022B369140, sub_22B144E24, v42, v44);
}

uint64_t sub_22B13C99C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_22B13CF70;
  }

  else
  {

    v2 = sub_22B13CAB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B13CAB8()
{
  v42 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  if (v7)
  {
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22B1A7B20(v12, v11, v41);
    _os_log_impl(&dword_22B116000, v5, v6, "Created share for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v10 + 8))(v8, v9);
  v15 = *(v0 + 240);
  v16 = *(v0 + 136);
  *(swift_task_alloc() + 16) = v16;
  sub_22B360E7C();
  v17 = v15;

  if (v15)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);
    v21 = __swift_project_value_buffer(v20, qword_28140BD10);
    swift_beginAccess();
    (*(v19 + 16))(v18, v21, v20);

    v22 = v17;
    v23 = sub_22B36050C();
    v24 = sub_22B360D1C();

    v25 = os_log_type_enabled(v23, v24);
    v27 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 184);
    if (v25)
    {
      v40 = *(v0 + 200);
      v29 = *(v0 + 120);
      v30 = *(v0 + 128);
      v39 = *(v0 + 184);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41[0] = v33;
      *v31 = 136315394;
      *(v31 + 4) = sub_22B1A7B20(v29, v30, v41);
      *(v31 + 12) = 2112;
      v34 = v17;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v35;
      *v32 = v35;
      _os_log_impl(&dword_22B116000, v23, v24, "Failed to create share for %s %@", v31, 0x16u);
      sub_22B123284(v32, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v31, -1, -1);

      (*(v27 + 8))(v40, v39);
    }

    else
    {

      (*(v27 + 8))(v26, v28);
    }

    [*(v0 + 136) refreshAllObjects];
    sub_22B134CDC();
    swift_allocError();
    *v37 = 13;
    swift_willThrow();

    v36 = *(v0 + 8);
  }

  else
  {

    v36 = *(v0 + 8);
  }

  return v36();
}

uint64_t sub_22B13CF70()
{
  v26 = v0;

  v1 = *(v0 + 240);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v12 = *(v0 + 184);
  if (v9)
  {
    v24 = *(v0 + 200);
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    v23 = *(v0 + 184);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_22B1A7B20(v13, v14, &v25);
    *(v15 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_22B116000, v7, v8, "Failed to create share for %s %@", v15, 0x16u);
    sub_22B123284(v16, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    (*(v11 + 8))(v24, v23);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  [*(v0 + 136) refreshAllObjects];
  sub_22B134CDC();
  swift_allocError();
  *v20 = 13;
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_22B13D248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_22B36052C();
  v7 = MEMORY[0x28223BE20](v6);
  v8 = MEMORY[0x23188EEB0](v7);
  sub_22B360E7C();
  objc_autoreleasePoolPop(v8);
  return v10;
}

uint64_t sub_22B13D4D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, unsigned __int8 a11, unsigned __int8 a12)
{
  v40 = a7;
  v41 = a2;
  v50 = a6;
  v37 = a3;
  v38 = a11;
  v39 = a12;
  v45 = a10;
  v46 = a8;
  v44 = sub_22B3605EC();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B36062C();
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x28223BE20](v16);
  v42 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - v20;
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v36 = *(qword_28140BCF0 + 24);
  (*(v19 + 16))(v21, a1, v18);
  v22 = (*(v19 + 80) + 90) & ~*(v19 + 80);
  v23 = swift_allocObject();
  v24 = v40;
  v25 = v41;
  v26 = v37;
  *(v23 + 16) = v41;
  *(v23 + 24) = v26;
  *(v23 + 32) = a4;
  *(v23 + 40) = a5;
  *(v23 + 48) = v50;
  *(v23 + 56) = v24;
  *(v23 + 64) = v46;
  *(v23 + 72) = a9;
  v40 = a9;
  v27 = v45;
  *(v23 + 80) = v45;
  *(v23 + 88) = v38 & 1;
  *(v23 + 89) = v39 & 1;
  (*(v19 + 32))(v23 + v22, v21, v18);
  aBlock[4] = sub_22B144F10;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor_110;
  v28 = _Block_copy(aBlock);
  v29 = v36;
  v30 = v25;

  sub_22B144B30(a5, v50);

  v31 = v27;
  v32 = v42;
  sub_22B36060C();
  v51 = MEMORY[0x277D84F90];
  sub_22B144B84(&qword_281409370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B124A3C();
  v34 = v43;
  v33 = v44;
  sub_22B36104C();
  MEMORY[0x23188E6D0](0, v32, v34, v28);
  _Block_release(v28);

  (*(v49 + 8))(v34, v33);
  (*(v47 + 8))(v32, v48);
}

uint64_t sub_22B13D930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12)
{
  v37 = a7;
  v38 = a8;
  v34 = a6;
  v35 = a1;
  v36 = a5;
  v31 = a2;
  v32 = a10;
  v33 = a11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  (*(v16 + 16))(&v30 - v18, a12, v15, v17);
  v20 = (*(v16 + 80) + 90) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = a1;
  *(v21 + 24) = v22;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  v23 = v34;
  *(v21 + 48) = v36;
  *(v21 + 56) = v23;
  v24 = v38;
  *(v21 + 64) = v37;
  *(v21 + 72) = v24;
  *(v21 + 80) = a9;
  LOBYTE(v24) = v33;
  *(v21 + 88) = v32;
  *(v21 + 89) = v24;
  (*(v16 + 32))(v21 + v20, v19, v15);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_22B145020;
  *(v25 + 24) = v21;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_120;
  v26 = _Block_copy(aBlock);
  v27 = v35;

  sub_22B144B30(a4, v36);

  v28 = a9;

  [v27 performBlockAndWait_];
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  return result;
}

void sub_22B13DBE8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char a10, unsigned __int8 a11, uint64_t a12)
{
  v87 = a7;
  v88 = a8;
  v86 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v84 = *(v16 - 8);
  v85 = v16;
  v82 = *(v84 + 64);
  MEMORY[0x28223BE20](v16);
  v83 = &v76 - v17;
  v81 = sub_22B36052C();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B35DE9C();
  v20 = *(v19 - 8);
  *&v21 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 refreshAllObjects];
  v24 = swift_allocObject();
  sub_22B35EDEC();
  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  *(v24 + 16) = v25;
  v26 = v25;
  v77 = a2;
  v27 = a6;
  v78 = a3;
  v28 = sub_22B36081C();
  [v26 setSiteID_];

  v29 = v26;
  v30 = sub_22B35DCCC();
  [v29 setMetadata_];

  v31 = v29;
  sub_22B35DE8C();
  v32 = sub_22B35DDDC();
  (*(v20 + 8))(v23, v19);
  [v31 setCreationDate_];

  v33 = v24;
  v34 = *(v24 + 16);
  v35 = v87;
  v36 = v88;
  v37 = v34;
  v38 = sub_22B36081C();
  [v37 setZoneName_];

  if (!*(v36 + 112))
  {
    goto LABEL_24;
  }

  v39 = [a1 assignObject:v37 toPersistentStore:?];
  if ((a10 & 1) == 0)
  {
    v43 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
    v44 = sub_22B36081C();
    v45 = [v43 initWithZoneName_];

    v46 = [v45 zoneID];
LABEL_5:
    v47 = v46;
    v48 = [objc_allocWithZone(MEMORY[0x277CBC680]) initWithRecordZoneID_];

    v49 = v48;
LABEL_6:
    LODWORD(v87) = a11;
    v50 = sub_22B207EFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_22B363650;
    v52 = v33;
    v53 = *(v33 + 16);
    *(v51 + 32) = v53;
    sub_22B128014(0, &unk_281408598, 0x277CBE438);
    v54 = v53;
    v55 = sub_22B360A3C();

    v57 = v83;
    v56 = v84;
    v58 = v85;
    (*(v84 + 16))(v83, a12, v85);
    v59 = (*(v56 + 80) + 40) & ~*(v56 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = a1;
    *(v60 + 24) = v87 & 1;
    *(v60 + 32) = v52;
    (*(v56 + 32))(v60 + v59, v57, v58);
    aBlock[4] = sub_22B1450DC;
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B333238;
    aBlock[3] = &block_descriptor_127;
    v61 = _Block_copy(aBlock);
    v62 = a1;

    [v50 shareManagedObjects:v55 toShare:v49 completion:v61];

    _Block_release(v61);

    return;
  }

  v40 = MEMORY[0x23188EEB0](v39);
  sub_22B1411A8(v36, 0, v27, v35, v89, aBlock);
  objc_autoreleasePoolPop(v40);
  v63 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    v75 = sub_22B36109C();
    v64 = v81;
    if (v75)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  v64 = v81;
  if (!*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:

    v41 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
    v42 = sub_22B36081C();
    v45 = [v41 initWithZoneName_];

    v46 = [v45 zoneID];
    goto LABEL_5;
  }

LABEL_9:
  v86 = v63 >> 62;
  if ((v63 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x23188EAC0](0, v63);
    v65 = v80;
    goto LABEL_12;
  }

  v65 = v80;
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v66 = *(v63 + 32);
LABEL_12:
    v67 = qword_28140A0C8;
    v87 = v66;
    if (v67 != -1)
    {
      swift_once();
    }

    v68 = __swift_project_value_buffer(v64, qword_28140BD10);
    swift_beginAccess();
    v69 = v79;
    (*(v79 + 16))(v65, v68, v64);

    v70 = sub_22B36050C();
    v71 = sub_22B360CFC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock[0] = v73;
      *v72 = 134218242;
      if (v86)
      {
        v74 = sub_22B36109C();
      }

      else
      {
        v74 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v72 + 4) = v74;

      *(v72 + 12) = 2080;
      *(v72 + 14) = sub_22B1A7B20(v77, v78, aBlock);
      _os_log_impl(&dword_22B116000, v70, v71, "Found %ld shares for %s", v72, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x23188F650](v73, -1, -1);
      MEMORY[0x23188F650](v72, -1, -1);

      (*(v79 + 8))(v80, v64);
      v49 = v87;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v69 + 8))(v65, v64);
      v49 = v87;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_22B13E488(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v10 = a7 + 16;
    v11 = swift_allocObject();
    *(v11 + 16) = a6 & 1;
    *(v11 + 24) = a5;
    *(v11 + 32) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_22B14518C;
    *(v12 + 24) = v11;
    v26 = sub_22B128240;
    v27 = v12;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_22B32556C;
    v25 = &block_descriptor_137;
    v13 = _Block_copy(&v22);
    v14 = a4;
    v15 = a5;

    [v15 performBlockAndWait_];
    _Block_release(v13);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      if (a6)
      {
        v17 = [objc_opt_self() processInfo];
        v18 = [v17 processName];

        v19 = sub_22B36084C();
        v21 = v20;

        LOWORD(v22) = 515;
        BYTE2(v22) = 19;
        v23 = v19;
        v24 = v21;
        v25 = 0;
        static AutoBugCaptureManager.sendIssue(_:)(&v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
        sub_22B360AEC();
      }

      else
      {
        v22 = a4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
        sub_22B360ADC();
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360AEC();
  }

  return result;
}

void sub_22B13E700(char a1, id a2, void *a3)
{
  v7[4] = *MEMORY[0x277D85DE8];
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    [a2 deleteObject_];
  }

  v7[0] = 0;
  if ([a2 save_])
  {

    MEMORY[0x2821F9840]();
  }

  else
  {
    v5 = v7[0];
    v6 = sub_22B35DB9C();

    swift_willThrow();
  }
}

id sub_22B13E818(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v27 = a6;
  v28 = a7;
  v13 = sub_22B35F01C();
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 refreshAllObjects];
  (*(v14 + 104))(v17, *MEMORY[0x277D073D0], v13);
  v18 = sub_22B1442DC(a4, a5, a1, v17, 0, 1, a2);
  (*(v14 + 8))(v17, v13);
  if (!v18)
  {
    return [a1 refreshAllObjects];
  }

  if (v18 >> 62)
  {
    result = sub_22B36109C();
    if (result)
    {
LABEL_4:
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x23188EAC0](0, v18);
      }

      else
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v20 = *(v18 + 32);
      }

      v21 = v20;
      v22 = [v20 managedObjectContext];

      if (v22)
      {
        MEMORY[0x28223BE20](v23);
        *(&v27 - 8) = v18;
        *(&v27 - 7) = a4;
        v25 = v27;
        v24 = v28;
        *(&v27 - 6) = a5;
        *(&v27 - 5) = v25;
        *(&v27 - 4) = v24;
        *(&v27 - 3) = v29;
        *(&v27 - 2) = v26;
        *(&v27 - 1) = v22;
        sub_22B360E7C();

        if (v8)
        {
          return result;
        }

        return [a1 refreshAllObjects];
      }
    }
  }

  else
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }
  }

  return [a1 refreshAllObjects];
}

void sub_22B13EA84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 >> 62)
  {
    if (!sub_22B36109C())
    {
      goto LABEL_15;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    sub_22B207390(5);
    return;
  }

  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x23188EAC0](0, a1, a3);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v9 = *(a1 + 32);
  }

  v10 = v9;
  v11 = sub_22B36081C();
  [v10 setSiteID_];

  if (!v8)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(a1 + 32);
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = MEMORY[0x23188EAC0](0, a1);
LABEL_10:
  v13 = sub_22B35DCCC();
  [v12 setMetadata_];

  if (v8)
  {
    v14 = MEMORY[0x23188EAC0](0, a1);
LABEL_14:
    v15 = v14;
    v16 = sub_22B36081C();
    [v15 setZoneName_];

    goto LABEL_15;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
}

void sub_22B13EC90(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  [a1 refreshAllObjects];
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_22B36081C();
  v9 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D837D0];
  *(v10 + 16) = xmmword_22B3634B0;
  *(v10 + 56) = v11;
  *(v10 + 32) = 0x444965746973;
  *(v10 + 40) = 0xE600000000000000;
  v12 = sub_22B360A3C();

  [v9 setPropertiesToFetch_];

  [v9 setReturnsDistinctResults_];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22B363650;
    v14 = *(a3 + 112);
    if (!v14)
    {
      goto LABEL_21;
    }

    *(v13 + 32) = v14;
    sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
    v15 = v14;
    v16 = sub_22B360A3C();

    [v9 setAffectedStores_];
  }

  sub_22B35EDEC();
  v17 = a1;
  v18 = sub_22B360E9C();
  if (v4)
  {

    v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v20 = sub_22B36081C();
    [v19 initWithDomain:v20 code:1 userInfo:0];

    swift_willThrow();
    return;
  }

  v36 = v18;
  if (v18 >> 62)
  {
    v21 = sub_22B36109C();
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_18:

    v23 = MEMORY[0x277D84F90];
LABEL_19:
    v34 = sub_22B31A80C(v23);

    [v17 refreshAllObjects];

    *a4 = v34;
    return;
  }

  v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_18;
  }

LABEL_8:
  v35 = v9;
  v39 = MEMORY[0x277D84F90];
  sub_22B355680(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = v39;
    v24 = v36;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x23188EAC0](v22, v24);
      }

      else
      {
        v25 = *(v24 + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = [v25 siteID];
      v28 = sub_22B36084C();
      v30 = v29;

      v32 = *(v39 + 16);
      v31 = *(v39 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22B355680((v31 > 1), v32 + 1, 1);
        v24 = v36;
      }

      ++v22;
      *(v39 + 16) = v32 + 1;
      v33 = v39 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
    }

    while (v21 != v22);

    v9 = v35;
    v17 = a1;
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22B13F064(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v101 = a6;
  v107[3] = *MEMORY[0x277D85DE8];
  v102 = sub_22B36052C();
  v99 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v97 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v98 = &v93 - v15;
  v16 = type metadata accessor for CDEnergySite(0);
  v100 = *(v16 - 8);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v103 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 refreshAllObjects];
  v19 = [objc_opt_self() currentQueryGenerationToken];
  v107[0] = 0;
  v20 = [a1 setQueryGenerationFromToken:v19 error:v107];

  v104 = v16;
  if (v20)
  {
    v21 = v107[0];
  }

  else
  {
    v22 = v107[0];
    v23 = sub_22B35DB9C();

    swift_willThrow();
    v7 = 0;
  }

  v24 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v25 = sub_22B36081C();
  v26 = [v24 initWithEntityName_];

  [v26 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22B3634B0;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_22B1280E4();
  v96 = a2;
  *(v27 + 32) = a2;
  *(v27 + 40) = a3;

  v105 = sub_22B360CCC();
  v28 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v29 = sub_22B36081C();
  v30 = [v28 initWithKey:v29 ascending:0];

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_22B363650;
    a5 = a5[14];
    if (!a5)
    {
      __break(1u);
      return;
    }

    *(v31 + 32) = a5;
    sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
    v32 = a5;
    v33 = sub_22B360A3C();

    [v26 setAffectedStores_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22B363650;
  *(v34 + 32) = v30;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v35 = v30;
  v36 = sub_22B360A3C();

  [v26 setSortDescriptors_];

  v37 = v105;
  [v26 setPredicate_];
  [v26 setFetchBatchSize_];
  sub_22B35EDEC();
  v38 = a1;
  v39 = sub_22B360E9C();
  if (!v7)
  {
    if (v39 >> 62)
    {
      v38 = v39;
      v79 = sub_22B36109C();
      v39 = v38;
      v95 = v35;
      if (v79)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v95 = v35;
      if (v41)
      {
LABEL_12:
        v94 = a3;
        if ((v39 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x23188EAC0](0);
          goto LABEL_15;
        }

        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v42 = *(v39 + 32);
LABEL_15:
          v43 = v42;

          v44 = v43;
          v45 = [v44 siteID];
          v46 = sub_22B36084C();
          v48 = v47;

          v49 = v103;
          *v103 = v46;
          v49[1] = v48;
          v50 = [v44 zoneName];
          v51 = sub_22B36084C();
          v53 = v52;

          v49[2] = v51;
          v49[3] = v53;
          v54 = [v44 creationDate];
          v55 = v104;
          sub_22B35DE5C();

          v56 = [v44 metadata];
          v57 = sub_22B35DCDC();
          v59 = v58;
          v97 = v44;

          v60 = (v49 + *(v55 + 28));
          *v60 = v57;
          v60[1] = v59;
          v107[0] = 0;
          if ([a1 setQueryGenerationFromToken:0 error:v107])
          {
            v61 = v107[0];
          }

          else
          {
            v66 = v107[0];
            v67 = sub_22B35DB9C();

            swift_willThrow();
          }

          v68 = v98;
          v69 = v94;
          [a1 refreshAllObjects];
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v70 = v102;
          v71 = __swift_project_value_buffer(v102, qword_28140BD10);
          swift_beginAccess();
          v72 = v99;
          (*(v99 + 16))(v68, v71, v70);

          v73 = sub_22B36050C();
          v74 = sub_22B360D2C();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v106 = v76;
            *v75 = 136446210;
            *(v75 + 4) = sub_22B1A7B20(v96, v69, &v106);
            _os_log_impl(&dword_22B116000, v73, v74, "Found energysite %{public}s", v75, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v76);
            MEMORY[0x23188F650](v76, -1, -1);
            MEMORY[0x23188F650](v75, -1, -1);

            (*(v72 + 8))(v98, v70);
          }

          else
          {

            (*(v72 + 8))(v68, v70);
          }

          v77 = v101;
          sub_22B144DC0(v103, v101);
          v78 = 0;
          goto LABEL_35;
        }

        __break(1u);
LABEL_38:
        swift_once();
LABEL_31:
        v83 = v102;
        v84 = __swift_project_value_buffer(v102, qword_28140BD10);
        swift_beginAccess();
        v85 = v99;
        (*(v99 + 16))(v38, v84, v83);

        v86 = sub_22B36050C();
        v87 = sub_22B360D2C();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = v86;
          v89 = swift_slowAlloc();
          v90 = v37;
          v91 = v85;
          v92 = swift_slowAlloc();
          v106 = v92;
          *v89 = 136446210;
          *(v89 + 4) = sub_22B1A7B20(v96, a5, &v106);
          _os_log_impl(&dword_22B116000, v88, v87, "Failed to find energysite for %{public}s", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v92);
          MEMORY[0x23188F650](v92, -1, -1);
          MEMORY[0x23188F650](v89, -1, -1);

          (*(v91 + 8))(v97, v102);
        }

        else
        {

          (*(v85 + 8))(v38, v83);
        }

        v78 = 1;
        v77 = v101;
LABEL_35:
        (*(v100 + 56))(v77, v78, 1, v104);
        return;
      }
    }

    a5 = a3;

    v107[0] = 0;
    if ([a1 setQueryGenerationFromToken:0 error:v107])
    {
      v80 = v107[0];
    }

    else
    {
      v81 = v107[0];
      v82 = sub_22B35DB9C();

      swift_willThrow();
    }

    v38 = v97;
    [a1 refreshAllObjects];
    if (qword_28140A0C8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  v107[0] = 0;
  if ([a1 setQueryGenerationFromToken:0 error:v107])
  {
    v40 = v107[0];
  }

  else
  {
    v62 = v107[0];
    v63 = sub_22B35DB9C();

    swift_willThrow();
  }

  [a1 refreshAllObjects];
  v64 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v65 = sub_22B36081C();
  [v64 initWithDomain:v65 code:1 userInfo:0];

  swift_willThrow();
}

void sub_22B13FC04(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v48 = a5;
  v47 = a4;
  v10 = sub_22B35F01C();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  [a1 refreshAllObjects];
  v15 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v16 = sub_22B36081C();
  v17 = [v15 initWithEntityName_];

  (*(v11 + 16))(v14, a2, v10);
  LODWORD(v18) = (*(v11 + 88))(v14, v10);
  v19 = *MEMORY[0x277D073C8];
  v46 = a6;
  if (v18 == v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22B363650;
    v20 = *(a3 + 112);
    if (v20)
    {
LABEL_6:
      *(v18 + 32) = v20;
      sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
      v22 = v20;
LABEL_7:
      v23 = sub_22B360A3C();

      [v17 setAffectedStores_];

      goto LABEL_8;
    }

    __break(1u);
  }

  v21 = v18;
  if (v18 == *MEMORY[0x277D073D0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22B363650;
    v20 = *(a3 + 120);
    if (!v20)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    goto LABEL_6;
  }

  v34 = *MEMORY[0x277D073C0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_22B363950;
  v36 = *(a3 + 120);
  if (v21 == v34)
  {
    if (!v36)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    *(v35 + 32) = v36;
    v37 = *(a3 + 112);
    if (!v37)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *(v35 + 40) = v37;
    sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
    v38 = v36;
    v39 = v37;
    goto LABEL_7;
  }

  if (!v36)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v35 + 32) = v36;
  v40 = *(a3 + 112);
  if (!v40)
  {
LABEL_35:
    __break(1u);
    return;
  }

  *(v35 + 40) = v40;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v41 = v36;
  v42 = v40;
  v43 = sub_22B360A3C();

  [v17 setAffectedStores_];

  (*(v11 + 8))(v14, v10);
LABEL_8:
  [v17 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22B3634B0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_22B1280E4();
  v25 = v48;
  *(v24 + 32) = v47;
  *(v24 + 40) = v25;

  v26 = sub_22B360CCC();
  [v17 setPredicate_];
  sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  v27 = v50;
  v28 = v49;
  v29 = sub_22B360E9C();
  if (v28)
  {

    return;
  }

  if (!(v29 >> 62))
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_25:

    goto LABEL_26;
  }

  v44 = v29;
  v45 = sub_22B36109C();
  v29 = v44;
  if (!v45)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((v29 & 0xC000000000000001) == 0)
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v29 + 32);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_31;
  }

  v30 = MEMORY[0x23188EAC0](0);
LABEL_15:
  v31 = v30;

  v32 = [v31 integerValue];

  if (v32 <= 0)
  {
LABEL_26:
    v33 = 0;
    goto LABEL_27;
  }

  v33 = 1;
LABEL_27:
  [v27 refreshAllObjects];

  *v46 = v33;
}

uint64_t sub_22B140154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_22B36052C();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B140218, 0, 0);
}

uint64_t sub_22B140218()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v8 = *(v0 + 64);
  v3 = MEMORY[0x23188EEB0]();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA298, &qword_22B363A40);
  sub_22B360E7C();

  objc_autoreleasePoolPop(v3);
  v5 = *(v0 + 40);

  v6 = *(v0 + 8);

  return v6(v5);
}

void sub_22B140428(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v61 = a4;
  v8 = type metadata accessor for CDEnergySite(0);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = (&i - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22B35F01C();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &i - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  [a1 refreshAllObjects];
  v15 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v16 = sub_22B36081C();
  v62 = [v15 initWithEntityName_];

  (*(v11 + 16))(v14, a2, v10);
  LODWORD(v17) = (*(v11 + 88))(v14, v10);
  if (v17 == *MEMORY[0x277D073C8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22B363650;
    v11 = *(a3 + 112);
    if (v11)
    {
LABEL_6:
      *(v17 + 32) = v11;
      sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
LABEL_7:
      v18 = v11;
      v19 = sub_22B360A3C();

      v20 = v62;
      [v62 setAffectedStores_];

      goto LABEL_8;
    }

    __break(1u);
  }

  if (v17 == *MEMORY[0x277D073D0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22B363650;
    v11 = *(a3 + 120);
    if (v11)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v51 = *MEMORY[0x277D073C0];
  v52 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_22B363950;
  v54 = *(a3 + 120);
  if (v52 == v51)
  {
    if (v54)
    {
      *(v53 + 32) = v54;
      v11 = *(a3 + 112);
      if (v11)
      {
        *(v53 + 40) = v11;
        sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
        v55 = v54;
        goto LABEL_7;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (!v54)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v53 + 32) = v54;
  v56 = *(a3 + 112);
  if (!v56)
  {
LABEL_40:
    __break(1u);
    return;
  }

  *(v53 + 40) = v56;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v57 = v54;
  v58 = v56;
  v59 = sub_22B360A3C();

  v20 = v62;
  [v62 setAffectedStores_];

  (*(v11 + 8))(v14, v10);
LABEL_8:
  [v20 setResultType_];
  sub_22B35EDEC();
  v21 = sub_22B360E9C();
  if (v4)
  {

    v22 = v20;
    v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v24 = sub_22B36081C();
    [v23 initWithDomain:v24 code:1 userInfo:0];

    swift_willThrow();
  }

  else
  {
    v25 = v21;
    if (v21 >> 62)
    {
      goto LABEL_33;
    }

    v26 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v26; i = 0)
    {
      v27 = 0;
      v66 = v25 & 0xFFFFFFFFFFFFFF8;
      v67 = v25 & 0xC000000000000001;
      v28 = MEMORY[0x277D84F90];
      v64 = v25;
      v65 = v26;
      while (1)
      {
        if (v67)
        {
          v29 = MEMORY[0x23188EAC0](v27, v25);
        }

        else
        {
          if (v27 >= *(v66 + 16))
          {
            goto LABEL_32;
          }

          v29 = *(v25 + 8 * v27 + 32);
        }

        v30 = v29;
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v32 = [v29 siteID];
        v33 = sub_22B36084C();
        v35 = v34;

        v36 = v70;
        *v70 = v33;
        v36[1] = v35;
        v37 = [v30 zoneName];
        v38 = sub_22B36084C();
        v40 = v39;

        v36[2] = v38;
        v36[3] = v40;
        v41 = [v30 creationDate];
        v42 = v69;
        sub_22B35DE5C();

        v43 = [v30 metadata];
        v44 = sub_22B35DCDC();
        v46 = v45;

        v47 = (v36 + *(v42 + 28));
        *v47 = v44;
        v47[1] = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_22B32CE2C(0, v28[2] + 1, 1, v28);
        }

        v48 = v65;
        v50 = v28[2];
        v49 = v28[3];
        if (v50 >= v49 >> 1)
        {
          v28 = sub_22B32CE2C((v49 > 1), v50 + 1, 1, v28);
        }

        v28[2] = v50 + 1;
        sub_22B144DC0(v70, v28 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v50);
        ++v27;
        v25 = v64;
        if (v31 == v48)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v26 = sub_22B36109C();
    }

    v28 = MEMORY[0x277D84F90];
LABEL_35:

    [v63 refreshAllObjects];

    *v61 = v28;
  }
}

void sub_22B140B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_22B36052C();
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x23188EEB0](v6);
  sub_22B360E7C();
  objc_autoreleasePoolPop(v7);
}

void sub_22B140D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B36052C();
  v33[0] = *(v8 - 8);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 refreshAllObjects];
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v13 = sub_22B36081C();
  v14 = [v12 initWithEntityName_];

  [v14 setResultType_];
  if (a3)
  {
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22B3634B0;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_22B1280E4();
    *(v15 + 32) = a2;
    *(v15 + 40) = a3;

    v16 = sub_22B360CCC();
    [v14 setPredicate_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22B363650;
  v18 = *(a4 + 112);
  if (!v18)
  {
    goto LABEL_21;
  }

  *(v17 + 32) = v18;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v19 = v18;
  v20 = sub_22B360A3C();

  [v14 setAffectedStores_];

  sub_22B35EDEC();
  v21 = v33[5];
  v22 = sub_22B360E9C();
  if (!v21)
  {
    v28 = v22;
    if (v22 >> 62)
    {
      v29 = sub_22B36109C();
      if (v29)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v29 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
LABEL_12:
        if (v29 >= 1)
        {
          for (i = 0; i != v29; ++i)
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              v31 = MEMORY[0x23188EAC0](i, v28);
            }

            else
            {
              v31 = *(v28 + 8 * i + 32);
            }

            v32 = v31;
            [a1 deleteObject_];
          }

          goto LABEL_19;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }
    }

LABEL_19:

    sub_22B207390(4);

    return;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  v24 = v33[0];
  (*(v33[0] + 16))(v11, v23, v8);
  v25 = sub_22B36050C();
  v26 = sub_22B360D1C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_22B116000, v25, v26, "Error deleting entry from cache.", v27, 2u);
    MEMORY[0x23188F650](v27, -1, -1);
  }

  (*(v24 + 8))(v11, v8);
}

void sub_22B1411A8(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X8>)
{
  v69 = a3;
  v71[3] = *MEMORY[0x277D85DE8];
  v11 = sub_22B36052C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v65 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  v17 = *(a1 + 112);
  if (!v17)
  {
    __break(1u);
  }

  v66 = a6;
  if (a2)
  {
    v17 = *(a1 + 120);
    if (!v17)
    {
      __break(1u);
      return;
    }
  }

  v18 = v17;
  v19 = sub_22B207EFC();
  v71[0] = 0;
  v20 = [v19 fetchSharesInPersistentStore:v18 error:v71];

  v21 = v71[0];
  if (!v20)
  {
    v34 = v71[0];
    v44 = sub_22B35DB9C();

LABEL_45:
    swift_willThrow();

    *a5 = v44;
    return;
  }

  v64 = a5;
  sub_22B128014(0, &qword_281408538, 0x277CBC680);
  v22 = sub_22B360A5C();
  v23 = v21;

  if (v22 >> 62)
  {
LABEL_32:
    v24 = sub_22B36109C();
    if (v24)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_33:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v11, qword_28140BD10);
    swift_beginAccess();
    (*(v12 + 16))(v16, v46, v11);

    v47 = sub_22B36050C();
    v48 = sub_22B360D1C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70 = v50;
      *v49 = 136315138;
      v51 = a4 == 0;
      if (a4)
      {
        v52 = v69;
      }

      else
      {
        v52 = 7958113;
      }

      v53 = a4;
      v54 = v12;
      if (v51)
      {
        v55 = 0xE300000000000000;
      }

      else
      {
        v55 = v53;
      }

      v56 = sub_22B1A7B20(v52, v55, &v70);
      v63 = v11;
      v57 = v18;
      v58 = v56;

      *(v49 + 4) = v58;
      v18 = v57;
      _os_log_impl(&dword_22B116000, v47, v48, "No share found for %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x23188F650](v50, -1, -1);
      MEMORY[0x23188F650](v49, -1, -1);

      (*(v54 + 8))(v16, v63);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    a5 = v64;
    sub_22B134CDC();
    v44 = swift_allocError();
    *v59 = 13;
    goto LABEL_45;
  }

LABEL_7:
  if (a4)
  {
    v61 = v12;
    v62 = v18;
    v63 = v11;
    v25 = 0;
    v67 = v22 & 0xFFFFFFFFFFFFFF8;
    v68 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v68)
      {
        v26 = MEMORY[0x23188EAC0](v25, v22);
      }

      else
      {
        if (v25 >= *(v67 + 16))
        {
          goto LABEL_31;
        }

        v26 = *(v22 + 8 * v25 + 32);
      }

      v16 = v26;
      v11 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v27 = [v26 recordID];
      v28 = [v27 zoneID];

      v18 = a4;
      v29 = [v28 zoneName];

      v30 = sub_22B36084C();
      v32 = v31;

      a4 = v18;
      if (v30 == v69 && v32 == v18)
      {
        break;
      }

      v12 = sub_22B36134C();

      if (v12)
      {
        goto LABEL_23;
      }

      ++v25;
      if (v11 == v24)
      {

        sub_22B134CDC();
        v44 = swift_allocError();
        *v45 = 13;
        v18 = v62;
        a5 = v64;
        goto LABEL_45;
      }
    }

LABEL_23:

    v18 = v62;
    v35 = v63;
    v36 = v61;
    v37 = v65;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v35, qword_28140BD10);
    swift_beginAccess();
    (*(v36 + 16))(v37, v38, v35);

    v39 = sub_22B36050C();
    v40 = sub_22B360D2C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v36;
      v43 = swift_slowAlloc();
      v70 = v43;
      *v41 = 136315138;
      *(v41 + 4) = sub_22B1A7B20(v69, a4, &v70);
      _os_log_impl(&dword_22B116000, v39, v40, "Found share for %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x23188F650](v43, -1, -1);
      MEMORY[0x23188F650](v41, -1, -1);

      (*(v42 + 8))(v65, v35);
    }

    else
    {

      (*(v36 + 8))(v37, v35);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_22B363650;
    *(v22 + 32) = v16;
  }

  *v66 = v22;
}

void *sub_22B1418E4()
{
  type metadata accessor for EnergySiteRecordsManager();
  v0 = swift_allocObject();
  result = sub_22B141920();
  qword_28140BDD0 = v0;
  return result;
}

void *sub_22B141920()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0;
  *(v0 + 128) = 0;
  if (qword_28140A888 != -1)
  {
    swift_once();
  }

  v2 = qword_27D8BB058;
  v3 = off_27D8BB060;

  v4 = sub_22B25376C(v2, v3, 0x4374686769736E49, 0xEC00000065686361);
  v6 = v5;

  v7 = v1[14];
  v8 = v1[15];
  v1[14] = v4;
  v1[15] = v6;
  sub_22B1441D8(v7, v8);
  v9 = v1[14];
  if (v9)
  {

    v10 = sub_22B207EFC();

    v9 = [v10 newBackgroundContext];
    v11 = sub_22B36081C();
    [v9 setTransactionAuthor_];

    [v9 setMergePolicy_];
    [v9 setUndoManager_];
    [v9 setShouldRefreshAfterSave_];
    [v9 setStalenessInterval_];
    [v9 setShouldDeleteInaccessibleFaults_];
  }

  v12 = v1[16];
  v1[16] = v9;

  return v1;
}

void sub_22B141AE8(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a1;
  LODWORD(v37) = a3;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v32 - v11;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  v34 = *(v7 + 16);
  v35 = v13;
  v34(v12, v13, v6);

  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();

  v16 = os_log_type_enabled(v14, v15);
  v36 = v9;
  if (v16)
  {
    v17 = a2;
    v18 = swift_slowAlloc();
    v19 = v7;
    v20 = a4;
    v21 = swift_slowAlloc();
    v40 = v21;
    *v18 = 136380675;
    *(v18 + 4) = sub_22B1A7B20(v39, v17, &v40);
    _os_log_impl(&dword_22B116000, v14, v15, "Get energysite for %{private}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v22 = v21;
    a4 = v20;
    MEMORY[0x23188F650](v22, -1, -1);
    v23 = v18;
    a2 = v17;
    MEMORY[0x23188F650](v23, -1, -1);

    v24 = v19;
  }

  else
  {

    v24 = v7;
  }

  v25 = *(v24 + 8);
  v25(v12, v6);
  v26 = v38[14];
  if (v26 && (v27 = v38[16]) != 0)
  {
    v32[1] = v25;
    v28 = v38[15];
    sub_22B1231A0(v26, v28);
    v29 = v27;
    v33 = MEMORY[0x23188EEB0]();
    MEMORY[0x28223BE20](v33);
    v30 = v39;
    v32[-6] = v29;
    v32[-5] = v30;
    v32[-4] = a2;
    LOBYTE(v32[-3]) = v37 & 1;
    v32[-2] = v26;
    v32[-1] = v28;
    v38 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A0, &unk_22B365970);
    v37 = v29;
    sub_22B360E7C();
    objc_autoreleasePoolPop(v33);
  }

  else
  {
    v31 = type metadata accessor for CDEnergySite(0);
    (*(*(v31 - 8) + 56))(a4, 1, 1, v31);
  }
}

uint64_t sub_22B141FF0(char a1, uint64_t a2)
{
  *(v3 + 88) = a2;
  *(v3 + 96) = v2;
  *(v3 + 184) = a1;
  v4 = sub_22B36052C();
  *(v3 + 104) = v4;
  *(v3 + 112) = *(v4 - 8);
  *(v3 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1420B4, v2, 0);
}

uint64_t sub_22B1420B4()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Getting all energysites", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[12];
  v10 = v0[13];

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  v0[16] = v12;
  v13 = *(v11 + 120);
  v0[17] = v13;
  if (v12 && (v14 = *(v0[12] + 128), (v0[18] = v14) != 0))
  {
    v15 = *(v0 + 184);
    sub_22B1231A0(v12, v13);
    if (v15 == 1)
    {
      v16 = v14;
      v17 = swift_task_alloc();
      v0[19] = v17;
      *v17 = v0;
      v17[1] = sub_22B142484;

      return sub_22B142D7C();
    }

    else
    {
      v20 = v0[18];
      v21 = swift_allocObject();
      v0[20] = v21;
      *(v21 + 16) = v20;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22B1451F0;
      *(v22 + 24) = v21;
      v23 = v14;
      v0[6] = sub_22B128240;
      v0[7] = v22;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22B32556C;
      v0[5] = &block_descriptor_100;
      v24 = _Block_copy(v0 + 2);
      v25 = v20;

      [v25 performBlockAndWait_];
      _Block_release(v24);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if (v24)
      {
        __break(1u);
      }

      else
      {
        v26 = v0[17];
        v27 = v0[18];
        v28 = v0[16];
        v29 = swift_task_alloc();
        v0[21] = v29;
        *v29 = v0;
        v29[1] = sub_22B142764;
        v30 = v0[11];

        return sub_22B140154(v30, v27, v28, v26);
      }
    }
  }

  else
  {

    v19 = v0[1];

    return v19(0);
  }

  return result;
}

uint64_t sub_22B142484()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_22B142594, v1, 0);
}

uint64_t sub_22B142594()
{
  v1 = v0[18];
  v2 = swift_allocObject();
  v0[20] = v2;
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22B1451F0;
  *(v3 + 24) = v2;
  v0[6] = sub_22B128240;
  v0[7] = v3;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B32556C;
  v0[5] = &block_descriptor_100;
  v4 = _Block_copy(v0 + 2);
  v5 = v1;

  [v5 performBlockAndWait_];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[17];
    v8 = v0[18];
    v9 = v0[16];
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_22B142764;
    v11 = v0[11];

    return sub_22B140154(v11, v8, v9, v7);
  }

  return result;
}

uint64_t sub_22B142764(uint64_t a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_22B14287C, v2, 0);
}

uint64_t sub_22B14287C()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[22];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22B14290C()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "Getting all energysites", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = v1[14];
  if (!v10)
  {
    return MEMORY[0x277D84FA0];
  }

  v11 = v1[16];
  if (!v11)
  {
    return MEMORY[0x277D84FA0];
  }

  v12 = v1[15];
  sub_22B1231A0(v10, v12);
  v13 = v11;
  v14 = sub_22B13A9F4(v13, 0, v10, v12);

  return v14;
}

void sub_22B142B18(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = sub_22B36050C();
  v12 = sub_22B360D2C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(a1, a2, &v19);
    _os_log_impl(&dword_22B116000, v11, v12, "Delete energysite for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = v3[14];
  if (v15)
  {
    v16 = v3[16];
    if (v16)
    {
      v17 = v3[15];
      sub_22B1231A0(v15, v17);
      v18 = v16;
      sub_22B140B14(v18, a1, a2, v15, v17);
    }
  }
}

uint64_t sub_22B142D7C()
{
  v1[14] = v0;
  v2 = sub_22B36052C();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B142E48, v0, 0);
}

uint64_t sub_22B142E48()
{
  v1 = v0[14];
  if (*(v1 + 136) == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[18];
    v3 = v0[15];
    v4 = v0[16];
    v5 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[18];
    v10 = v0[15];
    v11 = v0[16];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "[Deduplication] In Progress", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    goto LABEL_18;
  }

  *(v1 + 136) = 1;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = __swift_project_value_buffer(v15, qword_28140BD10);
  swift_beginAccess();
  (*(v14 + 16))(v13, v16, v15);
  v17 = sub_22B36050C();
  v18 = sub_22B360D2C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22B116000, v17, v18, "deduplicate energysite", v19, 2u);
    MEMORY[0x23188F650](v19, -1, -1);
  }

  v21 = v0[16];
  v20 = v0[17];
  v23 = v0[14];
  v22 = v0[15];

  (*(v21 + 8))(v20, v22);
  v24 = *(v23 + 112);
  v0[19] = v24;
  if (!v24)
  {
LABEL_17:
    *(v1 + 136) = 0;
LABEL_18:

    v35 = v0[1];

    return v35();
  }

  v25 = v0[14];
  v26 = *(v25 + 120);
  v0[20] = v26;
  sub_22B1231A0(v24, v26);
  sub_22B1231A0(v24, v26);

  sub_22B1441D8(v27, v26);
  v28 = sub_22B207EFC();

  v29 = [v28 newBackgroundContext];
  v0[21] = v29;
  v30 = sub_22B36081C();
  [v29 setTransactionAuthor_];

  [v29 setMergePolicy_];
  [v29 setUndoManager_];
  [v29 setShouldRefreshAfterSave_];
  [v29 setStalenessInterval_];
  [v29 setShouldDeleteInaccessibleFaults_];

  v31 = *(v25 + 128);
  v0[22] = v31;
  if (!v31)
  {

    goto LABEL_17;
  }

  v32 = v31;
  v33 = swift_task_alloc();
  v0[23] = v33;
  *v33 = v0;
  v33[1] = sub_22B1432C4;

  return sub_22B13A2BC(v29, 0xD000000000000018, 0x800000022B369090, v24, v26);
}

uint64_t sub_22B1432C4()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_22B1433D4, v1, 0);
}

uint64_t sub_22B1433D4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22B144218;
  *(v5 + 24) = v4;
  v0[6] = sub_22B12819C;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B32556C;
  v0[5] = &block_descriptor_2;
  v6 = _Block_copy(v0 + 2);
  v7 = v1;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    *(v0[14] + 136) = 0;

    v10 = v0[1];

    return v10();
  }

  return result;
}

void sub_22B143598(uint64_t a1, unint64_t a2, int a3)
{
  v42 = a1;
  LODWORD(v3) = a3;
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v35[-v9];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  v38 = *(v6 + 16);
  v38(v10, v11, v5);

  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();

  v14 = os_log_type_enabled(v12, v13);
  v39 = a2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v36 = v3;
    v3 = v15;
    v16 = swift_slowAlloc();
    v37 = v6;
    v17 = v16;
    v45 = v16;
    *v3 = 136315138;
    *(v3 + 4) = sub_22B1A7B20(v42, a2, &v45);
    _os_log_impl(&dword_22B116000, v12, v13, "Fetching CKShare for energysite %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v18 = v17;
    v6 = v37;
    MEMORY[0x23188F650](v18, -1, -1);
    v19 = v3;
    LOBYTE(v3) = v36;
    MEMORY[0x23188F650](v19, -1, -1);
  }

  v20 = *(v6 + 8);
  v20(v10, v5);
  v21 = v43[14];
  if (!v21)
  {
    v38(v41, v11, v5);
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B116000, v27, v28, "Nil model", v29, 2u);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    v20(v41, v5);
    sub_22B134CDC();
    swift_allocError();
    v31 = 13;
    goto LABEL_14;
  }

  v22 = v43[16];
  if (!v22)
  {
    sub_22B134CDC();
    swift_allocError();
    v31 = 7;
LABEL_14:
    *v30 = v31;
    swift_willThrow();
    return;
  }

  v23 = v43[15];
  sub_22B1231A0(v43[14], v23);
  v24 = v22;
  v25 = MEMORY[0x23188EEB0]();
  v26 = v40;
  sub_22B1411A8(v21, v3 & 1, v42, v39, &v44, &v45);
  if (v26)
  {
    objc_autoreleasePoolPop(v25);
LABEL_9:

    return;
  }

  objc_autoreleasePoolPop(v25);
  v32 = v45;
  if (!(v45 >> 62))
  {
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_22:

    sub_22B134CDC();
    swift_allocError();
    *v34 = 13;
    swift_willThrow();
    goto LABEL_9;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_22;
  }

LABEL_17:
  if ((v32 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23188EAC0](0, v32);
    goto LABEL_20;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(v32 + 32);
LABEL_20:

    return;
  }

  __break(1u);
}

void sub_22B143A3C(int a1)
{
  v28 = a1;
  v1 = sub_22B36052C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, qword_28140BD10);
  swift_beginAccess();
  v27 = *(v2 + 16);
  v27(v7, v8, v1);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = v4;
    v12 = v11;
    *v11 = 0;
    _os_log_impl(&dword_22B116000, v9, v10, "Fetching CKShares", v11, 2u);
    v4 = v26;
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v13 = *(v2 + 8);
  v13(v7, v1);
  v14 = v29[14];
  if (v14)
  {
    v15 = v29[16];
    if (v15)
    {
      v16 = v29[15];
      sub_22B1231A0(v29[14], v16);
      v17 = v15;
      v18 = MEMORY[0x23188EEB0]();
      sub_22B1411A8(v14, v28 & 1, 0, 0, &v30, &v31);
      objc_autoreleasePoolPop(v18);

      return;
    }

    sub_22B134CDC();
    swift_allocError();
    v25 = 7;
  }

  else
  {
    v27(v4, v8, v1);
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v4;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22B116000, v19, v20, "Nil model", v22, 2u);
      v23 = v22;
      v4 = v21;
      MEMORY[0x23188F650](v23, -1, -1);
    }

    v13(v4, v1);
    sub_22B134CDC();
    swift_allocError();
    v25 = 13;
  }

  *v24 = v25;
  swift_willThrow();
}

uint64_t sub_22B143DD8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_22B1A7B20(v22, a2, &v23);
    _os_log_impl(&dword_22B116000, v12, v13, "Get energysite for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v16 = v4[14];
  if (v16)
  {
    v17 = v4[16];
    if (v17)
    {
      v18 = v4[15];
      sub_22B1231A0(v16, v18);
      v19 = v17;
      LOBYTE(v17) = sub_22B13D248(v22, a2, a3, v19, v16, v18);
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17 & 1;
}

uint64_t sub_22B144058()
{
  sub_22B1441D8(*(v0 + 112), *(v0 + 120));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for CDEnergySite(uint64_t a1)
{
  result = qword_28140A460;
  if (!qword_28140A460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B144130(uint64_t a1)
{
  result = sub_22B35DE9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22B1441D8(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_22B1442DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v47 = a6;
  v48 = a5;
  v49 = a3;
  v51 = a1;
  v10 = sub_22B36052C();
  v46[1] = *(v10 - 8);
  v46[2] = v10;
  MEMORY[0x28223BE20](v10);
  v11 = sub_22B35F01C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x23188EEB0](v13);
  v16 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v17 = sub_22B36081C();
  v18 = [v16 initWithEntityName_];

  (*(v12 + 16))(v15, a4, v11);
  LODWORD(result) = (*(v12 + 88))(v15, v11);
  v20 = &unk_22B363000;
  if (result != *MEMORY[0x277D073C8])
  {
LABEL_4:
    if (result == *MEMORY[0x277D073D0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
      result = swift_allocObject();
      *(result + 16) = v20[101];
      v20 = *(a7 + 120);
      if (v20)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
      v35 = *MEMORY[0x277D073C0];
      v36 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
      result = swift_allocObject();
      *(result + 16) = xmmword_22B363950;
      v37 = *(a7 + 120);
      if (v36 != v35)
      {
        if (v37)
        {
          *(result + 32) = v37;
          v42 = *(a7 + 112);
          if (v42)
          {
            *(result + 40) = v42;
            sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
            v43 = v37;
            v44 = v42;
            v45 = sub_22B360A3C();

            [v18 setAffectedStores_];

            (*(v12 + 8))(v15, v11);
            goto LABEL_7;
          }

LABEL_25:
          __break(1u);
          return result;
        }

        goto LABEL_23;
      }

      v23 = v51;
      if (v37)
      {
        *(result + 32) = v37;
        v38 = *(a7 + 112);
        if (v38)
        {
          *(result + 40) = v38;
          sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
          v39 = v37;
          v40 = v38;
          v41 = sub_22B360A3C();

          [v18 setAffectedStores_];

          goto LABEL_8;
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  result = swift_allocObject();
  *(result + 16) = xmmword_22B363650;
  v20 = *(a7 + 112);
  if (!v20)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_6:
  *(result + 32) = v20;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v21 = v20;
  v22 = sub_22B360A3C();

  [v18 setAffectedStores_];

LABEL_7:
  v23 = v51;
LABEL_8:
  [v18 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22B3634B0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_22B1280E4();
  *(v24 + 32) = v23;
  *(v24 + 40) = a2;

  v25 = sub_22B360CCC();
  [v18 setPredicate_];
  if (v47)
  {
    v26 = 1;
  }

  else
  {
    v26 = 10;
  }

  v27 = &selRef_setFetchLimit_;
  if ((v47 & 1) == 0)
  {
    v27 = &selRef_setFetchBatchSize_;
  }

  [v18 *v27];
  v28 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v29 = sub_22B36081C();
  v30 = [v28 initWithKey:v29 ascending:v48 & 1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22B363650;
  *(v31 + 32) = v30;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v32 = v30;
  v33 = sub_22B360A3C();

  [v18 setSortDescriptors_];

  sub_22B35EDEC();
  v34 = sub_22B360E9C();

  objc_autoreleasePoolPop(v50);
  return v34;
}

uint64_t sub_22B144B30(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22B144B84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_37Tm()
{

  sub_22B12F174(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22B144D14@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_22B144D48(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B144DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergySite(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22B144E6C()
{
  v2 = *(v0 + 16);
  result = sub_22B207390(3);
  if (!v1)
  {
    return [v2 refreshAllObjects];
  }

  return result;
}

uint64_t objectdestroy_106Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 90) & ~v3;
  v5 = *(v2 + 64);

  sub_22B12F174(*(v0 + 40), *(v0 + 48));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B1450DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);

  return sub_22B13E488(a1, a2, a3, a4, v9, v10, v11);
}

uint64_t sub_22B145224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22B170BE0(a3, v22 - v9, &qword_27D8BA8D0, &qword_22B363610);
  v11 = sub_22B360B6C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22B123284(v10, &qword_27D8BA8D0, &qword_22B363610);
  }

  else
  {
    sub_22B360B5C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22B360ACC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22B3608CC() + 32;

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

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_22B145490()
{
  result = [objc_allocWithZone(type metadata accessor for HomeEnergyListener()) init];
  qword_28140BD30 = result;
  return result;
}

NSObject *HomeEnergyListener.init()()
{
  v1 = sub_22B36052C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v6 = sub_22B36081C();
  v7 = [v5 initWithMachServiceName_];

  *&v0[OBJC_IVAR____TtC16HomeEnergyDaemon18HomeEnergyListener_xpcListener] = v7;
  v8 = type metadata accessor for HomeEnergyListener();
  v20.receiver = v0;
  v20.super_class = v8;
  v9 = objc_msgSendSuper2(&v20, sel_init);
  v10 = OBJC_IVAR____TtC16HomeEnergyDaemon18HomeEnergyListener_xpcListener;
  v11 = *&v9[OBJC_IVAR____TtC16HomeEnergyDaemon18HomeEnergyListener_xpcListener];
  v12 = v9;
  [v11 setDelegate_];
  [*&v9[v10] resume];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v1, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v4, v13, v1);
  v14 = sub_22B36050C();
  v15 = sub_22B360CFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22B116000, v14, v15, "Listener is started", v16, 2u);
    MEMORY[0x23188F650](v16, -1, -1);
    v17 = v12;
  }

  else
  {
    v17 = v14;
    v14 = v12;
  }

  (*(v2 + 8))(v4, v1);
  return v12;
}

id HomeEnergyListener.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_22B36050C();
  v8 = sub_22B360CFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, "Listener is tearing down", v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  [*&v1[OBJC_IVAR____TtC16HomeEnergyDaemon18HomeEnergyListener_xpcListener] invalidate];
  v10 = type metadata accessor for HomeEnergyListener();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_22B145990(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x23188EEB0](a1);
  sub_22B1459E4(a2, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_22B1459E4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  swift_unknownObjectWeakInit();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  v50 = *(v4 + 16);
  v51 = v12;
  v50(v11, v12, v3);
  v13 = a1;
  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v8;
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = [v13 processIdentifier];

    _os_log_impl(&dword_22B116000, v14, v15, "Listener connection received from %d", v17, 8u);
    v18 = v17;
    v8 = v16;
    MEMORY[0x23188F650](v18, -1, -1);
  }

  else
  {

    v14 = v13;
  }

  v19 = *(v4 + 8);
  v48 = v4 + 8;
  v19(v11, v3);
  v20 = sub_22B36081C();
  v21 = [v13 valueForEntitlement:v20];

  if (v21)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  aBlock = v57;
  v54 = v58;
  if (*(&v58 + 1))
  {
    if (swift_dynamicCast())
    {
      v22 = v52;
      goto LABEL_14;
    }
  }

  else
  {
    sub_22B123284(&aBlock, &unk_27D8BA950, &qword_22B364940);
  }

  v22 = 0;
LABEL_14:
  v50(v8, v51, v3);
  v23 = sub_22B36050C();
  v24 = sub_22B360D0C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = v19;
    v26 = v25;
    v27 = swift_slowAlloc();
    v45 = v8;
    v28 = v27;
    *&aBlock = v27;
    *v26 = 136315650;
    *(v26 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36AB80, &aBlock);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_22B1A7B20(0xD00000000000001CLL, 0x800000022B36AB60, &aBlock);
    *(v26 + 22) = 1024;
    *(v26 + 24) = v22;
    _os_log_impl(&dword_22B116000, v23, v24, "Entitlement for %s: %s: %{BOOL}d", v26, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v28, -1, -1);
    v29 = v26;
    v19 = v46;
    MEMORY[0x23188F650](v29, -1, -1);

    v30 = v45;
  }

  else
  {

    v30 = v8;
  }

  v19(v30, v3);
  if (v22)
  {
    v31 = [objc_opt_self() interfaceWithProtocol_];
    [v13 setExportedInterface:v31];

    Strong = swift_unknownObjectWeakLoadStrong();
    v33 = objc_allocWithZone(type metadata accessor for HomeEnergyProxy());
    v34 = sub_22B1650BC(Strong);

    [v13 setExportedObject:v34];
    v55 = sub_22B1460E0;
    v56 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v54 = sub_22B118A6C;
    *(&v54 + 1) = &block_descriptor_1123;
    v35 = _Block_copy(&aBlock);
    [v13 setInvalidationHandler:v35];
    _Block_release(v35);
    v55 = sub_22B1460EC;
    v56 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v54 = sub_22B118A6C;
    *(&v54 + 1) = &block_descriptor_1126;
    v36 = _Block_copy(&aBlock);
    [v13 setInterruptionHandler:v36];
    _Block_release(v36);
    [v13 resume];
    v37 = 1;
  }

  else
  {
    v38 = v47;
    v50(v47, v51, v3);
    v39 = v13;
    v40 = sub_22B36050C();
    v41 = sub_22B360D1C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 67240192;
      *(v42 + 4) = [v39 processIdentifier];

      _os_log_impl(&dword_22B116000, v40, v41, "Connection %{public}d not entitled", v42, 8u);
      MEMORY[0x23188F650](v42, -1, -1);
    }

    else
    {
    }

    v19(v38, v3);
    v37 = 0;
  }

  result = MEMORY[0x23188F730](v59);
  *v49 = v37;
  return result;
}

uint64_t sub_22B1460F8(const char *a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_22B36050C();
  v8 = sub_22B360CFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22B116000, v7, v8, a1, v9, 2u);
    MEMORY[0x23188F650](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22B146474(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B1464DC, 0, 0);
}

uint64_t sub_22B1464DC()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B1465D0;

  return sub_22B299254();
}

uint64_t sub_22B1465D0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B146880(uint64_t a1, void *aBlock)
{
  v2[4] = _Block_copy(aBlock);
  v2[2] = sub_22B36084C();
  v2[3] = v3;

  return MEMORY[0x2822009F8](sub_22B1468FC, 0, 0);
}

uint64_t sub_22B1468FC()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v0[5] = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_22B146A2C;

  return sub_22B299C0C(v2, v1, 0, 0, 0xE000000000000000, 0, 0xE000000000000000, 0);
}

uint64_t sub_22B146A2C(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B146D00(uint64_t a1, void *aBlock)
{
  v2[20] = _Block_copy(aBlock);
  v2[21] = sub_22B36084C();
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_22B146D7C, 0, 0);
}

uint64_t sub_22B146D7C()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 168);
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  v2 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v3 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v3;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v2;
  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_22B146EB8;

  return sub_22B29AB48(v0 + 88, 0);
}

uint64_t sub_22B146EB8(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 192) = a1;

  sub_22B172074(v2 + 16);

  return MEMORY[0x2822009F8](sub_22B146FC0, 0, 0);
}

uint64_t sub_22B146FC0()
{
  v1 = v0[20];
  v1[2](v1, v0[24]);
  _Block_release(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22B147038()
{
  type metadata accessor for HomeEnergyDaemonUtilities();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B1724E0;

  return sub_22B34A2E4(1);
}

uint64_t sub_22B147248(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  type metadata accessor for HomeEnergyDaemonUtilities();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B1472EC;

  return sub_22B34A2E4(1);
}

uint64_t sub_22B1472EC(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v6 = *v1;

  v3 = sub_22B3606CC();

  (v2)[2](v2, v3);

  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B147450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B124D88;

  return sub_22B1652B0(a1, a2, a3, a4);
}

uint64_t sub_22B1476C0(uint64_t a1, char a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v11 = swift_task_alloc();
  v5[3] = v11;
  v5[4] = _Block_copy(a4);
  if (a1)
  {
    v12 = sub_22B36084C();
    a1 = v13;
    v5[5] = v13;
    if (a3)
    {
LABEL_3:
      sub_22B35DE5C();
      v14 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v5[5] = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v14 = 1;
LABEL_6:
  v15 = sub_22B35DE9C();
  (*(*(v15 - 8) + 56))(v11, v14, 1, v15);
  v16 = a5;
  v17 = swift_task_alloc();
  v5[6] = v17;
  *v17 = v5;
  v17[1] = sub_22B14786C;

  return sub_22B1652B0(v12, a1, a2 & 1, v11);
}

uint64_t sub_22B14786C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
  v1[2](v1);
  _Block_release(v1);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B1479FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B147ABC;

  return sub_22B165E34(a1, a2, a3);
}

uint64_t sub_22B147ABC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_22B147D50(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B3606EC();
  v4[5] = v9;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_22B147E70;

  return sub_22B165E34(v6, v8, v9);
}

uint64_t sub_22B147E70(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = sub_22B36081C();

  (v3)[2](v3, v5);

  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_22B148038()
{
  if (sub_22B35EEBC())
  {
    if (qword_28140AA30 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[3] = v1;
    *v1 = v0;
    v1[1] = sub_22B14813C;
    v2 = v0[2];

    return sub_22B1992BC(v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22B14813C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B1483B8(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  *(v2 + 24) = sub_22B360C4C();

  return MEMORY[0x2822009F8](sub_22B148444, 0, 0);
}

uint64_t sub_22B148444()
{
  if (sub_22B35EEBC())
  {
    if (qword_28140AA30 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_22B148568;
    v2 = v0[3];

    return sub_22B1992BC(v2);
  }

  else
  {
    v4 = v0[2];

    v4[2](v4);
    _Block_release(v4);
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22B148568()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v1 + 16);

  v2[2](v2);
  _Block_release(v2);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22B1486A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  return sub_22B166900();
}

uint64_t sub_22B1488B8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B1724C8;

  return sub_22B166900();
}

uint64_t sub_22B148960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B148984, 0, 0);
}

uint64_t sub_22B148984()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v0[6] = qword_28140BD38;

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_22B148A64;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_22B212870(v5, v4, v2, v3);
}

uint64_t sub_22B148A64(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B148D0C(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3[4] = _Block_copy(aBlock);
  v3[2] = sub_22B36084C();
  v3[3] = v5;
  if (a2)
  {
    v6 = sub_22B36084C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v3[5] = v6;
  v3[6] = v7;

  return MEMORY[0x2822009F8](sub_22B148DA8, 0, 0);
}

uint64_t sub_22B148DA8()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_28140BD38;
  v0[7] = v1;
  v0[8] = v3;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22B148E98;
  v5 = v0[5];
  v6 = v0[6];

  return sub_22B212870(v2, v1, v5, v6);
}

uint64_t sub_22B148E98(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B149024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B1490E4;

  return sub_22B166CCC(a1, a2, a3);
}

uint64_t sub_22B1490E4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B149370(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B3606EC();
  v4[5] = v9;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_22B149490;

  return sub_22B166CCC(v6, v8, v9);
}

uint64_t sub_22B149490(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22B149618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B14963C, 0, 0);
}

uint64_t sub_22B14963C()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v0[6] = qword_28140BD38;

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_22B1724C0;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_22B214420(v5, v4, v2, v3);
}

uint64_t sub_22B1498AC(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3[6] = _Block_copy(aBlock);
  v3[2] = sub_22B36084C();
  v3[3] = v4;
  v3[4] = sub_22B36084C();
  v3[5] = v5;

  return MEMORY[0x2822009F8](sub_22B149938, 0, 0);
}

uint64_t sub_22B149938()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v0[7] = v1;
  v0[8] = v4;
  v0[9] = qword_28140BD38;

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_22B149A3C;

  return sub_22B214420(v3, v4, v2, v1);
}

uint64_t sub_22B149A3C(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v6 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B149BC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B149BE8, 0, 0);
}

uint64_t sub_22B149BE8()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v0[4] = qword_28140BD38;

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22B149CC4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_22B214CB8(v3, v2);
}

uint64_t sub_22B149CC4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B149F64(uint64_t a1, void *aBlock)
{
  v2[4] = _Block_copy(aBlock);
  v2[2] = sub_22B36084C();
  v2[3] = v3;

  return MEMORY[0x2822009F8](sub_22B149FE0, 0, 0);
}

uint64_t sub_22B149FE0()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_28140BD38;
  v0[5] = v1;
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_22B14A0CC;

  return sub_22B214CB8(v2, v1);
}

uint64_t sub_22B14A0CC(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B14A250()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = qword_28140BD38;

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B14A324;

  return sub_22B2154B4();
}

uint64_t sub_22B14A324(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22B14A5B0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B14A618, 0, 0);
}

uint64_t sub_22B14A618()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  *(v0 + 24) = qword_28140BD38;

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22B14A6EC;

  return sub_22B2154B4();
}

uint64_t sub_22B14A6EC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

void sub_22B14AA00(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *aBlock, void *a8, char a9)
{
  v9[2] = a8;
  v9[3] = _Block_copy(aBlock);
  sub_22B36084C();
  v9[4] = v11;
  sub_22B36084C();
  v9[5] = v12;
  sub_22B36084C();
  v9[6] = v13;
  sub_22B36084C();
  v9[7] = v14;
  v15 = a8;
  v16 = swift_task_alloc();
  v9[8] = v16;
  *v16 = v9;
  v16[1] = sub_22B14AB70;

  JUMPOUT(0x22B1672F0);
}

uint64_t sub_22B14AB70(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  if (a2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_22B35DCCC();
    sub_22B11EDC0(a1, a2);
  }

  v9 = *(v5 + 24);
  (v9)[2](v9, v8);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_22B14AF08(uint64_t a1, uint64_t a2, char a3, char a4, const void *a5, void *a6)
{
  v6[2] = a6;
  v12 = sub_22B35DE9C();
  v6[3] = v12;
  v6[4] = *(v12 - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v6[6] = _Block_copy(a5);
  if (a1)
  {
    v15 = sub_22B36084C();
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v6[7] = v14;
  v16 = v14;
  sub_22B35DE5C();
  v17 = a6;
  v18 = swift_task_alloc();
  v6[8] = v18;
  *v18 = v6;
  v18[1] = sub_22B14B094;

  return sub_22B167778(v15, v16, v13, a3 & 1, a4 & 1);
}

uint64_t sub_22B14B094()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  v10 = *(v3 + 48);
  if (v2)
  {
    v11 = sub_22B35DB8C();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 48), 0);
  }

  _Block_release(*(v4 + 48));

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_22B14B414(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B14B47C, 0, 0);
}

uint64_t sub_22B14B47C()
{
  if (sub_22B35EEBC())
  {
    if (qword_281408750 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BC30;
    v0[3] = qword_28140BC30;

    return MEMORY[0x2822009F8](sub_22B14B570, v1, 0);
  }

  else
  {
    v2 = v0[2];
    v2[2](v2, 0, 0);
    _Block_release(v2);
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_22B14B570()
{
  v1 = sub_22B320C40();
  v2 = *(v0 + 16);
  v2[2](v2, v1 & 1, 0);
  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B14B768(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B14B7D0, 0, 0);
}

uint64_t sub_22B14B7D0()
{
  if (sub_22B35EEBC())
  {
    if (qword_28140B068 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDC0;
    v0[3] = qword_28140BDC0;

    return MEMORY[0x2822009F8](sub_22B14B8C4, v1, 0);
  }

  else
  {
    v2 = v0[2];
    v2[2](v2, 0, 0);
    _Block_release(v2);
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_22B14B8C4()
{
  v1 = sub_22B212108();
  v2 = *(v0 + 16);
  v2[2](v2, v1 & 1, 0);
  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B14B948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B1724CC;

  return sub_22B167E10(a1, a2, a3);
}

uint64_t sub_22B14BBA8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v8 = sub_22B35D8BC();
  v5[3] = v8;
  v5[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[5] = v9;
  v5[6] = _Block_copy(a4);
  v10 = sub_22B36084C();
  v12 = v11;
  v5[7] = v11;
  sub_22B35D85C();
  v13 = a5;
  v14 = swift_task_alloc();
  v5[8] = v14;
  *v14 = v5;
  v14[1] = sub_22B14BD0C;

  return sub_22B167E10(v10, v12, v9);
}

uint64_t sub_22B14BD0C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  (*(v7 + 8))(v6, v8);
  if (a2 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_22B35DCCC();
    sub_22B11EDC0(a1, a2);
  }

  v12 = *(v5 + 48);
  (v12)[2](v12, v11);

  _Block_release(v12);

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_22B14BF04(double a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B14BF24, 0, 0);
}

uint64_t sub_22B14BF24()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() sharedSession];
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22B14C014;
  v3.n128_u64[0] = v0[2];
  v4.n128_u64[0] = v0[3];

  return MEMORY[0x282172088](v1, v3, v4);
}

uint64_t sub_22B14C014(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_22B14C2C0(const void *a1, double a2, double a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B14C32C, 0, 0);
}

uint64_t sub_22B14C32C()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() sharedSession];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22B14C41C;
  v3.n128_u64[0] = v0[2];
  v4.n128_u64[0] = v0[3];

  return MEMORY[0x282172088](v1, v3, v4);
}

uint64_t sub_22B14C41C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (a2)
  {
    v7 = sub_22B36081C();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 32);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

id HomeEnergyProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HomeEnergyProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeEnergyProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B14C658(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v37 = a3;
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v43 = 0u;
    v44 = 0u;
LABEL_9:
    sub_22B123284(&v43, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_10;
  }

  v14 = Strong;
  v15 = sub_22B36081C();
  v16 = [v14 valueForEntitlement_];

  if (v16)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v17 = v41;
    goto LABEL_11;
  }

LABEL_10:
  v17 = 0;
LABEL_11:
  v38 = a1;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  v36 = *(v8 + 16);
  v36(v12, v18, v7);

  v19 = v12;
  v20 = sub_22B36050C();
  v21 = v8;
  v22 = sub_22B360D0C();

  if (os_log_type_enabled(v20, v22))
  {
    v23 = swift_slowAlloc();
    v39 = v17;
    v24 = v23;
    v25 = swift_slowAlloc();
    v35 = v19;
    v26 = v25;
    *&v41 = v25;
    *v24 = 136315650;
    *(v24 + 4) = sub_22B1A7B20(v37, a4, &v41);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_22B1A7B20(v38, a2, &v41);
    *(v24 + 22) = 1024;
    *(v24 + 24) = v39;
    _os_log_impl(&dword_22B116000, v20, v22, "Entitlement for %s: %s: %{BOOL}d", v24, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v26, -1, -1);
    v27 = v24;
    v17 = v39;
    MEMORY[0x23188F650](v27, -1, -1);

    v28 = *(v21 + 8);
    v28(v35, v7);
  }

  else
  {

    v28 = *(v21 + 8);
    v28(v19, v7);
  }

  v29 = v7;
  if ((v17 & 1) == 0)
  {
    v30 = v17;
    v36(v40, v18, v29);
    v31 = sub_22B36050C();
    v32 = sub_22B360D1C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22B116000, v31, v32, "Connection not entitled", v33, 2u);
      MEMORY[0x23188F650](v33, -1, -1);
    }

    v28(v40, v29);
    return v30;
  }

  return v17;
}

uint64_t HomeEnergyProxy.registerEnergySite(site:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B14CACC, 0, 0);
}

uint64_t sub_22B14CACC()
{
  if (sub_22B14C658(0xD00000000000001ALL, 0x800000022B3691D0, 0xD000000000000019, 0x800000022B3691F0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_22B1724B4;
    v2 = v0[2];

    return sub_22B222B30(v2);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v4 = 9;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22B14CDCC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22B1724B8;

  return HomeEnergyProxy.registerEnergySite(site:)(v6);
}

uint64_t sub_22B14CEB0()
{
  if (sub_22B14C658(0xD00000000000001ALL, 0x800000022B3691D0, 0x69536C6C41746567, 0xEF29287344496574))
  {
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDD0;
    *(v0 + 24) = qword_28140BDD0;

    return MEMORY[0x2822009F8](sub_22B14CFF8, v1, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v2 = 9;
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_22B14CFF8()
{
  v1 = sub_22B14290C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B14D1D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22B14D278;

  return HomeEnergyProxy.getAllSiteIDs()();
}

uint64_t sub_22B14D278(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_22B35DB8C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_22B360C3C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t HomeEnergyProxy.deleteEnergySite(site:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B14D428, 0, 0);
}

uint64_t sub_22B14D428()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000017, 0x800000022B369230))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_22B14D5A0;
    v2 = v0[2];

    return sub_22B23D0CC(v2);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v4 = 9;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22B14D5A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B14D81C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22B14D8E0;

  return HomeEnergyProxy.deleteEnergySite(site:)(v6);
}

uint64_t sub_22B14D8E0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = sub_22B35DB8C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_22B14DC04(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_22B36084C();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](sub_22B14DC90, 0, 0);
}

uint64_t sub_22B14DC90()
{
  if (sub_22B14C658(0xD00000000000001ALL, 0x800000022B3691D0, 0x7469732865746973, 0xED0000293A444965))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    *(v0 + 48) = v1;
    *v1 = v0;
    v1[1] = sub_22B14DE10;
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);

    return sub_22B22250C(v3, v2, 0, 0);
  }

  else
  {

    v5 = *(v0 + 24);
    v5[2](v5, 0, 0);
    _Block_release(v5);
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_22B14DE10(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v8 = *v1;

  v5 = *(v3 + 24);
  (v5)[2](v5, a1, 0);
  _Block_release(v5);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t HomeEnergyProxy.updateLocation(siteID:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B14DFAC, 0, 0);
}

uint64_t sub_22B14DFAC()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000020, 0x800000022B369250))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[6] = v1;
    *v1 = v0;
    v1[1] = sub_22B1724F4;
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[2];

    return sub_22B223504(v4, v2, v3);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v6 = 9;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22B14E2B8(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_22B36084C();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_22B14E3A4;

  return HomeEnergyProxy.updateLocation(siteID:location:)(v7, v9, v10);
}

uint64_t sub_22B14E3A4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_22B35DB8C();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t HomeEnergyProxy.updateTimezone(siteID:timezone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B14E5A8, 0, 0);
}

uint64_t sub_22B14E5A8()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000020, 0x800000022B369280))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_22B1724F0;
    v2 = v0[4];
    v3 = v0[5];
    v5 = v0[2];
    v4 = v0[3];

    return sub_22B223C04(v5, v4, v2, v3);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22B14E8B4(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B36084C();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_22B1724BC;

  return HomeEnergyProxy.updateTimezone(siteID:timezone:)(v6, v8, v9, v11);
}

uint64_t HomeEnergyProxy.updateState(siteID:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B14E9D8, 0, 0);
}

uint64_t sub_22B14E9D8()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD00000000000001ALL, 0x800000022B3692B0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_22B14EB54;
    v2 = v0[4];
    v3 = v0[5];
    v5 = v0[2];
    v4 = v0[3];

    return sub_22B239328(v5, v4, v2, v3);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22B14EB54(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22B14EDE4(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B36084C();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_22B14EEE0;

  return HomeEnergyProxy.updateState(siteID:state:)(v6, v8, v9, v11);
}

uint64_t sub_22B14EEE0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_22B35DB8C();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t HomeEnergyProxy.updateFields(siteID:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B14F0E4, 0, 0);
}

uint64_t sub_22B14F0E4()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD00000000000001ALL, 0x800000022B3692D0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[6] = v1;
    *v1 = v0;
    v1[1] = sub_22B14F260;
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[2];

    return sub_22B2244D0(v4, v2, v3);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v6 = 9;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22B14F260(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22B14F4F0(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B3606EC();
  v4[5] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_22B1724BC;

  return HomeEnergyProxy.updateFields(siteID:from:)(v6, v8, v9);
}

uint64_t sub_22B14F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 400) = v21;
  *(v9 + 408) = v8;
  *(v9 + 368) = v19;
  *(v9 + 384) = v20;
  *(v9 + 336) = v17;
  *(v9 + 352) = v18;
  *(v9 + 304) = v15;
  *(v9 + 320) = v16;
  *(v9 + 288) = v14;
  *(v9 + 272) = a7;
  *(v9 + 280) = a8;
  *(v9 + 256) = a5;
  *(v9 + 264) = a6;
  *(v9 + 240) = a3;
  *(v9 + 248) = a4;
  *(v9 + 224) = a1;
  *(v9 + 232) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  v10 = sub_22B35DE9C();
  *(v9 + 432) = v10;
  *(v9 + 440) = *(v10 - 8);
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  v11 = sub_22B36052C();
  *(v9 + 472) = v11;
  *(v9 + 480) = *(v11 - 8);
  *(v9 + 488) = swift_task_alloc();
  *(v9 + 496) = swift_task_alloc();
  *(v9 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  *(v9 + 528) = swift_task_alloc();
  *(v9 + 536) = swift_task_alloc();
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = swift_task_alloc();
  *(v9 + 560) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B14F848, 0, 0);
}

uint64_t sub_22B14F848()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD0000000000000BDLL, 0x800000022B36A730))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = v0[70];
    v2 = v0[69];
    v3 = v0[68];
    v4 = v0[54];
    v5 = v0[55];
    v0[71] = qword_28140BDD8;
    v6 = *(v5 + 56);
    v0[72] = v6;
    v0[73] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v6(v1, 1, 1, v4);
    v6(v2, 1, 1, v4);
    v6(v3, 1, 1, v4);
    v7 = swift_task_alloc();
    v0[74] = v7;
    *v7 = v0;
    v7[1] = sub_22B14FB14;
    v9 = v0[28];
    v8 = v0[29];

    return sub_22B22250C(v9, v8, 0, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v11 = 9;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_22B14FB14(uint64_t a1)
{
  v2 = *(*v1 + 568);
  *(*v1 + 600) = a1;

  return MEMORY[0x2822009F8](sub_22B14FC2C, v2, 0);
}

uint64_t sub_22B14FC2C()
{
  if (*(v0 + 600))
  {
    if (*(v0 + 264))
    {

      sub_22B35F13C();
    }

    if (*(v0 + 248))
    {

      sub_22B35F44C();
    }

    v1 = *(v0 + 280);
    v2 = v1 != 0;
    if (v1)
    {
      sub_22B170BE0(*(v0 + 400), *(v0 + 536), &qword_27D8BA340, &qword_22B363FB0);
      sub_22B35F2DC();

      sub_22B35F07C();

      sub_22B35F0CC();
    }

    if (*(v0 + 296))
    {

      sub_22B35F0CC();
      v2 = 1;
    }

    if (*(v0 + 312))
    {

      sub_22B35F15C();
      v2 = 1;
    }

    *(v0 + 656) = v2;
    if (*(v0 + 328))
    {

      sub_22B35F09C();
    }

    if (*(v0 + 344))
    {

      sub_22B35F0EC();
    }

    if (*(v0 + 360))
    {

      sub_22B35F3CC();
      v3 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
      *(v0 + 608) = v3;
      v4 = sub_22B36081C();
      *(v0 + 616) = v4;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 216;
      *(v0 + 24) = sub_22B150344;
      v5 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA8E0, qword_22B366260);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_22B164948;
      *(v0 + 104) = &block_descriptor_706;
      *(v0 + 112) = v5;
      [v3 geocodeAddressString:v4 completionHandler:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    else
    {
      if (*(v0 + 376))
      {

        sub_22B35F1DC();
      }

      if (*(v0 + 392))
      {

        sub_22B35F1BC();
      }

      v10 = *(v0 + 528);
      v11 = *(v0 + 432);
      v12 = *(v0 + 440);
      sub_22B170BE0(*(v0 + 552), v10, &qword_27D8BA340, &qword_22B363FB0);
      v13 = *(v12 + 48);
      if (v13(v10, 1, v11) == 1)
      {
        sub_22B123284(*(v0 + 528), &qword_27D8BA340, &qword_22B363FB0);
      }

      else
      {
        v14 = *(v0 + 576);
        v15 = *(v0 + 536);
        v16 = *(v0 + 464);
        v17 = *(v0 + 432);
        v18 = *(v0 + 440);
        (*(v18 + 32))(v16, *(v0 + 528), v17);
        (*(v18 + 16))(v15, v16, v17);
        v14(v15, 0, 1, v17);
        sub_22B35F2BC();
        (*(v18 + 8))(v16, v17);
      }

      v19 = *(v0 + 520);
      v20 = *(v0 + 432);
      sub_22B170BE0(*(v0 + 560), v19, &qword_27D8BA340, &qword_22B363FB0);
      if (v13(v19, 1, v20) == 1)
      {
        sub_22B123284(*(v0 + 520), &qword_27D8BA340, &qword_22B363FB0);
      }

      else
      {
        v21 = *(v0 + 576);
        v22 = *(v0 + 536);
        v23 = *(v0 + 456);
        v24 = *(v0 + 432);
        v25 = *(v0 + 440);
        (*(v25 + 32))(v23, *(v0 + 520), v24);
        (*(v25 + 16))(v22, v23, v24);
        v21(v22, 0, 1, v24);
        sub_22B35F23C();
        (*(v25 + 8))(v23, v24);
      }

      v26 = *(v0 + 512);
      v27 = *(v0 + 432);
      sub_22B170BE0(*(v0 + 544), v26, &qword_27D8BA340, &qword_22B363FB0);
      if (v13(v26, 1, v27) == 1)
      {
        sub_22B123284(*(v0 + 512), &qword_27D8BA340, &qword_22B363FB0);
      }

      else
      {
        v28 = *(v0 + 576);
        v29 = *(v0 + 536);
        v31 = *(v0 + 440);
        v30 = *(v0 + 448);
        v32 = *(v0 + 432);
        (*(v31 + 32))(v30, *(v0 + 512), v32);
        (*(v31 + 16))(v29, v30, v32);
        v28(v29, 0, 1, v32);
        sub_22B35F10C();
        (*(v31 + 8))(v30, v32);
      }

      v33 = swift_task_alloc();
      *(v0 + 632) = v33;
      *v33 = v0;
      v33[1] = sub_22B151658;
      v34 = *(v0 + 656);

      return EKEnergySite.save(reset:tokenUpdate:)(0, v34);
    }
  }

  else
  {
    sub_22B134CDC();
    v6 = swift_allocError();
    *v7 = 10;
    swift_willThrow();
    *(v0 + 648) = v6;
    v8 = *(v0 + 560);
    v9 = *(v0 + 552);
    sub_22B123284(*(v0 + 544), &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v9, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v8, &qword_27D8BA340, &qword_22B363FB0);

    return MEMORY[0x2822009F8](sub_22B1519B8, 0, 0);
  }
}

uint64_t sub_22B150344()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 624) = v2;
  v3 = *(v1 + 568);
  if (v2)
  {
    v4 = sub_22B151084;
  }

  else
  {
    v4 = sub_22B150464;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B150464()
{
  v103 = v2;
  v3 = *(v2 + 216);
  if (v3 >> 62)
  {
    if (sub_22B36109C())
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23188EAC0](0, v3);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v4 = *(v3 + 32);
      }

      v5 = v4;
      v6 = *(v2 + 616);

      v7 = [v5 location];
      if (!v7)
      {
        goto LABEL_12;
      }

      v1 = v7;
      v101 = v5;
      v0 = v7;
      sub_22B35F3EC();
      if (qword_28140A0C8 == -1)
      {
LABEL_8:
        v8 = *(v2 + 496);
        v9 = *(v2 + 472);
        v10 = *(v2 + 480);
        v11 = __swift_project_value_buffer(v9, qword_28140BD10);
        swift_beginAccess();
        (*(v10 + 16))(v8, v11, v9);

        v12 = v0;
        v13 = sub_22B36050C();
        v14 = sub_22B360D2C();

        v15 = os_log_type_enabled(v13, v14);
        v16 = *(v2 + 496);
        v17 = *(v2 + 472);
        v18 = *(v2 + 480);
        if (v15)
        {
          v92 = *(v2 + 224);
          v93 = *(v2 + 232);
          v19 = swift_slowAlloc();
          v98 = v16;
          v20 = swift_slowAlloc();
          v95 = v17;
          v21 = swift_slowAlloc();
          v102 = v21;
          *v19 = 136315650;
          *(v19 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v102);
          *(v19 + 12) = 2080;
          *(v19 + 14) = sub_22B1A7B20(v92, v93, &v102);
          *(v19 + 22) = 2112;
          *(v19 + 24) = v12;
          *v20 = v1;
          v22 = v12;
          _os_log_impl(&dword_22B116000, v13, v14, "%s site %s set location to %@", v19, 0x20u);
          sub_22B123284(v20, &unk_27D8BAA90, &unk_22B362BC0);
          MEMORY[0x23188F650](v20, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v21, -1, -1);
          MEMORY[0x23188F650](v19, -1, -1);

          (*(v18 + 8))(v98, v95);
        }

        else
        {

          (*(v18 + 8))(v16, v17);
        }

        v5 = v101;
LABEL_12:
        v23 = [v5 timeZone];
        if (v23)
        {
          v24 = v23;
          sub_22B35E0AC();

          v25 = 0;
        }

        else
        {
          v25 = 1;
        }

        v27 = *(v2 + 416);
        v26 = *(v2 + 424);
        v28 = sub_22B35E0BC();
        v29 = *(v28 - 8);
        (*(v29 + 56))(v27, v25, 1, v28);
        sub_22B170CD0(v27, v26, &unk_27D8BA080, &unk_22B364280);
        if ((*(v29 + 48))(v26, 1, v28) == 1)
        {
          v30 = *(v2 + 424);

          sub_22B123284(v30, &unk_27D8BA080, &unk_22B364280);
        }

        else
        {
          v31 = *(v2 + 424);
          v32 = sub_22B35E06C();
          v34 = v33;
          (*(v29 + 8))(v31, v28);

          sub_22B35F42C();
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v36 = *(v2 + 480);
          v35 = *(v2 + 488);
          v37 = *(v2 + 472);
          v38 = __swift_project_value_buffer(v37, qword_28140BD10);
          swift_beginAccess();
          (*(v36 + 16))(v35, v38, v37);

          v39 = sub_22B36050C();
          v40 = sub_22B360D2C();

          v41 = os_log_type_enabled(v39, v40);
          v43 = *(v2 + 480);
          v42 = *(v2 + 488);
          v44 = *(v2 + 472);
          if (v41)
          {
            v94 = *(v2 + 232);
            v99 = *(v2 + 472);
            v45 = *(v2 + 224);
            v46 = swift_slowAlloc();
            v96 = v42;
            v47 = v32;
            v48 = swift_slowAlloc();
            v102 = v48;
            *v46 = 136315650;
            *(v46 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v102);
            *(v46 + 12) = 2080;
            *(v46 + 14) = sub_22B1A7B20(v45, v94, &v102);
            *(v46 + 22) = 2080;
            v49 = sub_22B1A7B20(v47, v34, &v102);

            *(v46 + 24) = v49;
            _os_log_impl(&dword_22B116000, v39, v40, "%s site %s set time zone to %s", v46, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v48, -1, -1);
            MEMORY[0x23188F650](v46, -1, -1);

            (*(v43 + 8))(v96, v99);
          }

          else
          {

            (*(v43 + 8))(v42, v44);
          }
        }

        goto LABEL_28;
      }

LABEL_46:
      swift_once();
      goto LABEL_8;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v50 = *(v2 + 616);
  v51 = *(v2 + 608);

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v52 = *(v2 + 504);
  v53 = *(v2 + 472);
  v54 = *(v2 + 480);
  v55 = __swift_project_value_buffer(v53, qword_28140BD10);
  swift_beginAccess();
  (*(v54 + 16))(v52, v55, v53);

  v56 = sub_22B36050C();
  v57 = sub_22B360D1C();

  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v2 + 504);
  v60 = *(v2 + 472);
  v61 = *(v2 + 480);
  if (v58)
  {
    v97 = *(v2 + 352);
    v100 = *(v2 + 360);
    v62 = *(v2 + 224);
    v63 = *(v2 + 232);
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v102 = v65;
    *v64 = 136315650;
    *(v64 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v102);
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_22B1A7B20(v62, v63, &v102);
    *(v64 + 22) = 2080;
    *(v64 + 24) = sub_22B1A7B20(v97, v100, &v102);
    _os_log_impl(&dword_22B116000, v56, v57, "%s site %s could not get placemark from %s", v64, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v65, -1, -1);
    MEMORY[0x23188F650](v64, -1, -1);

    (*(v61 + 8))(v59, v60);
  }

  else
  {

    (*(v61 + 8))(v59, v60);
  }

LABEL_28:
  if (*(v2 + 376))
  {

    sub_22B35F1DC();
  }

  if (*(v2 + 392))
  {

    sub_22B35F1BC();
  }

  v66 = *(v2 + 528);
  v67 = *(v2 + 432);
  v68 = *(v2 + 440);
  sub_22B170BE0(*(v2 + 552), v66, &qword_27D8BA340, &qword_22B363FB0);
  v69 = *(v68 + 48);
  if (v69(v66, 1, v67) == 1)
  {
    sub_22B123284(*(v2 + 528), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v70 = *(v2 + 576);
    v71 = *(v2 + 536);
    v72 = *(v2 + 464);
    v73 = *(v2 + 432);
    v74 = *(v2 + 440);
    (*(v74 + 32))(v72, *(v2 + 528), v73);
    (*(v74 + 16))(v71, v72, v73);
    v70(v71, 0, 1, v73);
    sub_22B35F2BC();
    (*(v74 + 8))(v72, v73);
  }

  v75 = *(v2 + 520);
  v76 = *(v2 + 432);
  sub_22B170BE0(*(v2 + 560), v75, &qword_27D8BA340, &qword_22B363FB0);
  if (v69(v75, 1, v76) == 1)
  {
    sub_22B123284(*(v2 + 520), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v77 = *(v2 + 576);
    v78 = *(v2 + 536);
    v79 = *(v2 + 456);
    v80 = *(v2 + 432);
    v81 = *(v2 + 440);
    (*(v81 + 32))(v79, *(v2 + 520), v80);
    (*(v81 + 16))(v78, v79, v80);
    v77(v78, 0, 1, v80);
    sub_22B35F23C();
    (*(v81 + 8))(v79, v80);
  }

  v82 = *(v2 + 512);
  v83 = *(v2 + 432);
  sub_22B170BE0(*(v2 + 544), v82, &qword_27D8BA340, &qword_22B363FB0);
  if (v69(v82, 1, v83) == 1)
  {
    sub_22B123284(*(v2 + 512), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v84 = *(v2 + 576);
    v85 = *(v2 + 536);
    v87 = *(v2 + 440);
    v86 = *(v2 + 448);
    v88 = *(v2 + 432);
    (*(v87 + 32))(v86, *(v2 + 512), v88);
    (*(v87 + 16))(v85, v86, v88);
    v84(v85, 0, 1, v88);
    sub_22B35F10C();
    (*(v87 + 8))(v86, v88);
  }

  v89 = swift_task_alloc();
  *(v2 + 632) = v89;
  *v89 = v2;
  v89[1] = sub_22B151658;
  v90 = *(v2 + 656);

  return EKEnergySite.save(reset:tokenUpdate:)(0, v90);
}

uint64_t sub_22B151084()
{
  v47 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  swift_willThrow();

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 504);
  v5 = *(v0 + 472);
  v6 = *(v0 + 480);
  v7 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v6 + 16))(v4, v7, v5);

  v8 = sub_22B36050C();
  v9 = sub_22B360D1C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 504);
  v12 = *(v0 + 472);
  v13 = *(v0 + 480);
  if (v10)
  {
    v44 = *(v0 + 352);
    v45 = *(v0 + 360);
    v14 = *(v0 + 224);
    v15 = *(v0 + 232);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v46[0] = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, v46);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_22B1A7B20(v14, v15, v46);
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_22B1A7B20(v44, v45, v46);
    _os_log_impl(&dword_22B116000, v8, v9, "%s site %s could not get placemark from %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    (*(v13 + 8))(v11, v12);
  }

  else
  {

    (*(v13 + 8))(v11, v12);
  }

  if (*(v0 + 376))
  {

    sub_22B35F1DC();
  }

  if (*(v0 + 392))
  {

    sub_22B35F1BC();
  }

  v18 = *(v0 + 528);
  v19 = *(v0 + 432);
  v20 = *(v0 + 440);
  sub_22B170BE0(*(v0 + 552), v18, &qword_27D8BA340, &qword_22B363FB0);
  v21 = *(v20 + 48);
  if (v21(v18, 1, v19) == 1)
  {
    sub_22B123284(*(v0 + 528), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v22 = *(v0 + 576);
    v23 = *(v0 + 536);
    v24 = *(v0 + 464);
    v25 = *(v0 + 432);
    v26 = *(v0 + 440);
    (*(v26 + 32))(v24, *(v0 + 528), v25);
    (*(v26 + 16))(v23, v24, v25);
    v22(v23, 0, 1, v25);
    sub_22B35F2BC();
    (*(v26 + 8))(v24, v25);
  }

  v27 = *(v0 + 520);
  v28 = *(v0 + 432);
  sub_22B170BE0(*(v0 + 560), v27, &qword_27D8BA340, &qword_22B363FB0);
  if (v21(v27, 1, v28) == 1)
  {
    sub_22B123284(*(v0 + 520), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v29 = *(v0 + 576);
    v30 = *(v0 + 536);
    v31 = *(v0 + 456);
    v32 = *(v0 + 432);
    v33 = *(v0 + 440);
    (*(v33 + 32))(v31, *(v0 + 520), v32);
    (*(v33 + 16))(v30, v31, v32);
    v29(v30, 0, 1, v32);
    sub_22B35F23C();
    (*(v33 + 8))(v31, v32);
  }

  v34 = *(v0 + 512);
  v35 = *(v0 + 432);
  sub_22B170BE0(*(v0 + 544), v34, &qword_27D8BA340, &qword_22B363FB0);
  if (v21(v34, 1, v35) == 1)
  {
    sub_22B123284(*(v0 + 512), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v36 = *(v0 + 576);
    v37 = *(v0 + 536);
    v39 = *(v0 + 440);
    v38 = *(v0 + 448);
    v40 = *(v0 + 432);
    (*(v39 + 32))(v38, *(v0 + 512), v40);
    (*(v39 + 16))(v37, v38, v40);
    v36(v37, 0, 1, v40);
    sub_22B35F10C();
    (*(v39 + 8))(v38, v40);
  }

  v41 = swift_task_alloc();
  *(v0 + 632) = v41;
  *v41 = v0;
  v41[1] = sub_22B151658;
  v42 = *(v0 + 656);

  return EKEnergySite.save(reset:tokenUpdate:)(0, v42);
}

uint64_t sub_22B151658()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 568);
  if (v0)
  {
    v4 = sub_22B1518F8;
  }

  else
  {
    v4 = sub_22B151784;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B151784()
{
  v1 = v0[70];
  v2 = v0[69];
  sub_22B123284(v0[68], &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);

  v3 = v0[1];
  v4 = v0[75];

  return v3(v4);
}

uint64_t sub_22B1518F8()
{
  *(v0 + 648) = *(v0 + 640);
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  sub_22B123284(*(v0 + 544), &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v2, &qword_27D8BA340, &qword_22B363FB0);
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);

  return MEMORY[0x2822009F8](sub_22B1519B8, 0, 0);
}

uint64_t sub_22B1519B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B151D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, const void *a13, void *a14)
{
  v14[2] = a14;
  v19 = sub_22B35DE9C();
  v20 = *(v19 - 8);
  v65 = swift_task_alloc();
  v14[3] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v21 = swift_task_alloc();
  v14[4] = v21;
  v14[5] = _Block_copy(a13);
  v22 = sub_22B36084C();
  v74 = v23;
  v75 = v22;
  v14[6] = v23;
  if (a2)
  {
    v71 = sub_22B36084C();
  }

  else
  {
    v71 = 0;
    v24 = 0;
  }

  v70 = v24;
  v14[7] = v24;
  if (a3)
  {
    v69 = sub_22B36084C();
  }

  else
  {
    v69 = 0;
    v25 = 0;
  }

  v26 = a9;
  v72 = v21;
  v73 = v20;
  v76 = v19;
  v68 = v25;
  v14[8] = v25;
  if (a4)
  {
    v67 = sub_22B36084C();
    v28 = a5;
    v29 = a6;
    v30 = a7;
    v31 = a8;
    v32 = a9;
    v33 = a10;
    v26 = a11;
    v35 = a12;
    v34 = a14;
  }

  else
  {
    v67 = 0;
    v27 = 0;
    v28 = a12;
    v29 = a14;
    v30 = a5;
    v31 = a6;
    v32 = a7;
    v33 = a8;
    v35 = a10;
    v34 = a11;
  }

  v66 = v27;
  v14[9] = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v41 = v33;
  v42 = v26;
  v43 = v35;
  v44 = v34;
  if (a5)
  {
    sub_22B36084C();
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v14[10] = v46;
  if (a6)
  {
    sub_22B36084C();
    v48 = v47;

    v14[11] = v48;
    if (a7)
    {
LABEL_15:
      sub_22B36084C();
      v50 = v49;

      goto LABEL_18;
    }
  }

  else
  {
    v14[11] = 0;
    if (a7)
    {
      goto LABEL_15;
    }
  }

  v50 = 0;
LABEL_18:
  v14[12] = v50;
  if (a8)
  {
    sub_22B36084C();
    v52 = v51;

    v14[13] = v52;
    if (a9)
    {
      goto LABEL_20;
    }

LABEL_23:
    v14[14] = 0;
    if (a10)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v14[13] = 0;
  if (!a9)
  {
    goto LABEL_23;
  }

LABEL_20:
  sub_22B36084C();
  v54 = v53;

  v14[14] = v54;
  if (a10)
  {
LABEL_21:
    sub_22B36084C();
    v56 = v55;

    goto LABEL_25;
  }

LABEL_24:
  v56 = 0;
LABEL_25:
  v14[15] = v56;
  if (a11)
  {
    sub_22B36084C();
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v14[16] = v58;
  if (a12)
  {
    sub_22B35DE5C();

    v59 = v72;
    v60 = v73;
    v61 = v76;
    (*(v73 + 32))(v72, v65, v76);
    v62 = 0;
  }

  else
  {
    v62 = 1;
    v61 = v76;
    v59 = v72;
    v60 = v73;
  }

  (*(v60 + 56))(v59, v62, 1, v61);
  v63 = swift_task_alloc();
  v14[17] = v63;
  *v63 = v14;
  v63[1] = sub_22B152184;

  return sub_22B14F600(v75, v74, v71, v70, v69, v68, v67, v66);
}

uint64_t sub_22B152184(void *a1)
{
  v2 = *v1;
  v10 = *v1;

  v3 = v2[5];
  v4 = v2[2];
  sub_22B123284(v2[4], &qword_27D8BA340, &qword_22B363FB0);

  if (v9)
  {
    v5 = sub_22B35DB8C();

    (v3)[2](v3, 0, v5);
    _Block_release(v3);
  }

  else
  {
    (v3)[2](v3, a1, 0);
    _Block_release(v3);
  }

  v6 = v10[1];

  return v6();
}

uint64_t sub_22B15262C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B1526D4;

  return sub_22B1683F0();
}

uint64_t sub_22B1526D4(void *a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B152800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v97 = a5;
  v7 = v6;
  v102 = a4;
  v118 = a3;
  v107 = a6;
  v99 = sub_22B3604BC();
  v103 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v101 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22B36047C();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA350, &unk_22B364020);
  MEMORY[0x28223BE20](v113);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v125 = &v96 - v15;
  MEMORY[0x28223BE20](v16);
  v112 = &v96 - v17;
  v100 = a1;
  v18 = sub_22B36048C();
  v19 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v20 = v13;
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v18, v19, v22, "Start: Encode AMI Data", "", v21, 2u);
    v23 = v21;
    v13 = v20;
    MEMORY[0x23188F650](v23, -1, -1);
  }

  v98 = a2;

  sub_22B35D82C();
  swift_allocObject();
  v117 = sub_22B35D81C();
  v24 = v118;
  v25 = *(v118 + 16);
  v26 = sub_22B35DE9C();
  v27 = sub_22B172464(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v28 = MEMORY[0x23188E030](v25, v26, MEMORY[0x277CC9318], v27);
  v29 = v24 + 64;
  v30 = 1 << *(v24 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v24 + 64);
  v33 = (v30 + 63) >> 6;
  v126 = v26;
  v110 = v26 - 8;

  v34 = 0;
  v108 = v33;
  v109 = v24 + 64;
  v111 = v13;
  while (v32)
  {
    v123 = v28;
    v124 = v7;
LABEL_14:
    v41 = __clz(__rbit64(v32)) | (v34 << 6);
    v42 = v118;
    v43 = *(v118 + 48);
    v44 = *(v126 - 8);
    v45 = v44;
    v114 = *(v44 + 72);
    v47 = v44 + 16;
    v46 = *(v44 + 16);
    v48 = v112;
    v115 = v47;
    v116 = v46;
    v46(v112, v43 + v114 * v41, v126);
    v49 = *(v42 + 56);
    v50 = sub_22B35F00C();
    v51 = *(v50 - 8);
    v52 = v49 + *(v51 + 72) * v41;
    v53 = v113;
    v54 = *(v113 + 48);
    (*(v51 + 16))(&v48[v54], v52, v50);
    v55 = *(v53 + 48);
    v122 = v45;
    v56 = *(v45 + 32);
    v57 = v125;
    v56(v125, v48, v126);
    v120 = v51;
    (*(v51 + 32))(v57 + v55, &v48[v54], v50);
    v58 = v111;
    sub_22B170BE0(v57, v111, &qword_27D8BA350, &unk_22B364020);
    v59 = *(v53 + 48);
    sub_22B172464(&qword_27D8BA378, MEMORY[0x277D073A8], MEMORY[0x277D073B0]);
    v121 = v50;
    v60 = v124;
    v61 = sub_22B35D80C();
    if (v60)
    {
      sub_22B123284(v125, &qword_27D8BA350, &unk_22B364020);

      (*(v120 + 8))(v58 + v59, v121);
      result = (*(v122 + 8))(v58, v126);
      *v97 = v60;
      return result;
    }

    v63 = v61;
    v124 = v62;
    v119 = v59;
    v64 = v123;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = v64;
    v66 = v58;
    v68 = sub_22B33B348(v58);
    v69 = v64[2];
    v70 = (v67 & 1) == 0;
    v71 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      result = sub_22B3613BC();
      __break(1u);
      return result;
    }

    v72 = v67;
    if (v64[3] >= v71)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22B341430();
      }
    }

    else
    {
      sub_22B33C2F4(v71, isUniquelyReferenced_nonNull_native);
      v73 = sub_22B33B348(v66);
      if ((v72 & 1) != (v74 & 1))
      {
        goto LABEL_36;
      }

      v68 = v73;
    }

    v7 = 0;
    v28 = v127;
    if (v72)
    {
      v35 = (v127[7] + 16 * v68);
      v36 = *v35;
      v37 = v35[1];
      v38 = v124;
      *v35 = v63;
      v35[1] = v38;
      sub_22B12F174(v36, v37);
      sub_22B123284(v125, &qword_27D8BA350, &unk_22B364020);
      v39 = v66;
    }

    else
    {
      v127[(v68 >> 6) + 8] |= 1 << v68;
      v39 = v66;
      v116(v28[6] + v68 * v114, v66, v126);
      v75 = (v28[7] + 16 * v68);
      v77 = v124;
      v76 = v125;
      *v75 = v63;
      v75[1] = v77;
      sub_22B123284(v76, &qword_27D8BA350, &unk_22B364020);
      v78 = v28[2];
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_35;
      }

      v28[2] = v80;
    }

    v32 &= v32 - 1;
    (*(v122 + 8))(v39, v126);
    (*(v120 + 8))(v39 + v119, v121);
    v33 = v108;
    v29 = v109;
  }

  while (1)
  {
    v40 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v40 >= v33)
    {
      break;
    }

    v32 = *(v29 + 8 * v40);
    ++v34;
    if (v32)
    {
      v123 = v28;
      v124 = v7;
      v34 = v40;
      goto LABEL_14;
    }
  }

  v81 = sub_22B36048C();
  v82 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v81, v82, v84, "End: Encode AMI Data", "", v83, 2u);
    MEMORY[0x23188F650](v83, -1, -1);
  }

  v85 = sub_22B36048C();
  v86 = v104;
  sub_22B3604CC();
  v87 = sub_22B360E1C();
  v88 = sub_22B360FDC();
  v89 = v103;
  v90 = v101;
  if (v88)
  {

    sub_22B3604FC();

    v91 = v99;
    if ((*(v89 + 88))(v90, v99) == *MEMORY[0x277D85B00])
    {
      v92 = "[Error] Interval already ended";
    }

    else
    {
      (*(v89 + 8))(v90, v91);
      v92 = "";
    }

    v93 = swift_slowAlloc();
    *v93 = 0;
    v94 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v85, v87, v94, "LeanHistoricalEnergyUsage", v92, v93, 2u);
    MEMORY[0x23188F650](v93, -1, -1);
  }

  result = (*(v105 + 8))(v86, v106);
  *v107 = v28;
  return result;
}

void sub_22B153384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void *a10)
{
  v10[2] = a10;
  v11 = sub_22B35E0BC();
  v10[3] = v11;
  v10[4] = *(v11 - 8);
  v10[5] = swift_task_alloc();
  v12 = sub_22B35DE9C();
  v10[6] = v12;
  v10[7] = *(v12 - 8);
  v10[8] = swift_task_alloc();
  v10[9] = swift_task_alloc();
  v10[10] = _Block_copy(a9);
  sub_22B36084C();
  v10[11] = v13;
  sub_22B35DE5C();
  sub_22B35DE5C();
  sub_22B36084C();
  v10[12] = v14;
  sub_22B36084C();
  v10[13] = v15;
  sub_22B35E0AC();
  sub_22B36084C();
  v10[14] = v16;
  v17 = a10;
  v18 = swift_task_alloc();
  v10[15] = v18;
  *v18 = v10;
  v18[1] = sub_22B1535F4;

  JUMPOUT(0x22B1689A8);
}

uint64_t sub_22B1535F4(uint64_t a1)
{
  v2 = *v1;
  v16 = *(*v1 + 72);
  v15 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v14 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  (*(v5 + 8))(v14, v6);
  v9 = *(v3 + 8);
  v9(v15, v4);
  v9(v16, v4);
  if (a1)
  {
    sub_22B172464(&qword_27D8BA348, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v10 = sub_22B3606CC();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v2 + 80);
  (v11)[2](v11, v10);

  _Block_release(v11);

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_22B153AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v8 = sub_22B35DE9C();
  v9 = *(v8 - 8);
  v10 = swift_task_alloc();
  v11 = _Block_copy(a6);
  sub_22B35DE5C();
  (*(v9 + 8))(v10, v8);
  v11[2](v11, 0);
  _Block_release(v11);

  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_22B153D8C(uint64_t a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v2[3] = sub_22B36084C();
  v2[4] = v3;

  return MEMORY[0x2822009F8](sub_22B153E08, 0, 0);
}

uint64_t sub_22B153E08()
{
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22B153ED4;
  v3 = v0[3];
  v2 = v0[4];

  return sub_22B23B1D4(v3, v2);
}

uint64_t sub_22B153ED4(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22B15404C, 0, 0);
  }

  else
  {
    v6 = *(v4 + 16);

    (*(v6 + 16))(v6, a1 & 1, 0);
    _Block_release(*(v4 + 16));
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_22B15404C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  v3 = sub_22B35DB8C();

  (*(v2 + 16))(v2, 0, v3);
  _Block_release(*(v0 + 16));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:refreshToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = v14;
  v9[13] = v8;
  v9[10] = a8;
  v9[11] = v13;
  v9[8] = a6;
  v9[9] = a7;
  v9[6] = a4;
  v9[7] = a5;
  v9[4] = a2;
  v9[5] = a3;
  v9[3] = a1;
  v10 = sub_22B35DE9C();
  v9[14] = v10;
  v9[15] = *(v10 - 8);
  v9[16] = swift_task_alloc();
  v9[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1541DC, 0, 0);
}

uint64_t sub_22B1541DC()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000057, 0x800000022B3692F0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDD8;
    *(v0 + 144) = qword_28140BDD8;

    return MEMORY[0x2822009F8](sub_22B154330, v1, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v2 = 9;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_22B154330(uint64_t a1)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v5 = *(v1 + 120);
  v4 = *(v1 + 128);
  v6 = *(v1 + 112);
  v8 = *(v1 + 88);
  v7 = *(v1 + 96);
  v17 = *(v1 + 56);
  v18 = *(v1 + 72);
  v15 = *(v1 + 24);
  v16 = *(v1 + 40);
  sub_22B35DE6C();
  sub_22B35DE0C();
  v9 = *(v5 + 8);
  *(v1 + 152) = v9;
  *(v1 + 160) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v6);
  v10 = sub_22B172464(&qword_27D8BA2B0, type metadata accessor for EnergySiteManager, &unk_22B3661D8);
  v11 = swift_task_alloc();
  *(v1 + 168) = v11;
  *(v11 + 16) = v3;
  *(v11 + 24) = v15;
  *(v11 + 40) = v16;
  *(v11 + 56) = v17;
  *(v11 + 72) = v18;
  *(v11 + 88) = v8;
  *(v11 + 96) = v7;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0;
  *(v11 + 120) = v2;
  v12 = swift_task_alloc();
  *(v1 + 176) = v12;
  v13 = sub_22B35F45C();
  *v12 = v1;
  v12[1] = sub_22B154500;

  return MEMORY[0x2822008A0](v1 + 16, v3, v10, 0xD000000000000085, 0x800000022B369350, sub_22B168350, v11, v13);
}

uint64_t sub_22B154500()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = sub_22B1546B8;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_22B154628;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B154628()
{
  v1 = *(v0 + 16);
  (*(v0 + 152))(*(v0 + 136), *(v0 + 112));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22B1546B8()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B15490C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock, void *a7, int a8, char a9)
{
  v9[2] = a7;
  v9[3] = _Block_copy(aBlock);
  v25 = sub_22B36084C();
  v12 = v11;
  v9[4] = v11;
  v24 = sub_22B36084C();
  v14 = v13;
  v9[5] = v13;
  v23 = sub_22B36084C();
  v16 = v15;
  v9[6] = v15;
  v17 = sub_22B36084C();
  v19 = v18;
  v9[7] = v18;
  sub_22B36084C();
  v9[8] = v20;
  a7;
  v21 = swift_task_alloc();
  v9[9] = v21;
  *v21 = v9;
  v21[1] = sub_22B154A78;

  return HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:refreshToken:)(v25, v12, v24, v14, v23, v16, v17, v19);
}

uint64_t sub_22B154A78(void *a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  v7 = *(v4 + 24);
  if (v3)
  {
    v8 = sub_22B35DB8C();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](*(v4 + 24), a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:utilityCustomerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 120) = v13;
  *(v9 + 128) = v8;
  *(v9 + 104) = v12;
  *(v9 + 88) = v11;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  return MEMORY[0x2822009F8](sub_22B154CFC, 0, 0);
}

uint64_t sub_22B154CFC()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000085, 0x800000022B369350))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDD8;
    *(v0 + 136) = qword_28140BDD8;

    return MEMORY[0x2822009F8](sub_22B154E40, v1, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v2 = 9;
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_22B154E40()
{
  v1 = *(v0 + 136);
  v13 = *(v0 + 112);
  v2 = *(v0 + 88);
  v11 = *(v0 + 72);
  v12 = *(v0 + 96);
  v9 = *(v0 + 40);
  v10 = *(v0 + 56);
  v8 = *(v0 + 24);
  v3 = sub_22B172464(&qword_27D8BA2B0, type metadata accessor for EnergySiteManager, &unk_22B3661D8);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v9;
  *(v4 + 56) = v10;
  *(v4 + 72) = v11;
  *(v4 + 88) = v12;
  *(v4 + 104) = v13;
  *(v4 + 120) = v2;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  v6 = sub_22B35F45C();
  *v5 = v0;
  v5[1] = sub_22B154FD0;

  return MEMORY[0x2822008A0](v0 + 16, v1, v3, 0xD000000000000085, 0x800000022B369350, sub_22B1724EC, v4, v6);
}

uint64_t sub_22B154FD0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_22B155110;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_22B1550F4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B155110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B155358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, void *a9)
{
  v9[2] = a9;
  v12 = sub_22B35DE9C();
  v9[3] = v12;
  v9[4] = *(v12 - 8);
  v9[5] = swift_task_alloc();
  v9[6] = _Block_copy(a8);
  v13 = sub_22B36084C();
  v29 = v14;
  v30 = v13;
  v9[7] = v14;
  v28 = sub_22B36084C();
  v16 = v15;
  v9[8] = v15;
  v27 = sub_22B36084C();
  v18 = v17;
  v9[9] = v17;
  v26 = sub_22B36084C();
  v20 = v19;
  v9[10] = v19;
  sub_22B35DE5C();
  sub_22B36084C();
  v9[11] = v21;
  if (a7)
  {
    sub_22B36084C();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v9[12] = v23;
  a9;
  v24 = swift_task_alloc();
  v9[13] = v24;
  *v24 = v9;
  v24[1] = sub_22B15555C;

  return HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:utilityCustomerName:)(v30, v29, v28, v16, v27, v18, v26, v20);
}

uint64_t sub_22B15555C(void *a1)
{
  v2 = *v1;
  v3 = *v1;

  v4 = v2[6];
  v5 = v2[2];
  (*(v2[4] + 8))(v2[5], v2[3]);

  if (v10)
  {
    v6 = sub_22B35DB8C();

    (v4)[2](v4, 0, v6);
    _Block_release(v4);
  }

  else
  {
    (v4)[2](v4, a1, 0);
    _Block_release(v4);
  }

  v7 = v3[1];

  return v7();
}

uint64_t HomeEnergyProxy.createUtilitySubscription(siteID:utilityID:serviceLocationID:accessToken:accessTokenExpirationDate:refreshToken:address:utilityCustomerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 136) = v14;
  *(v9 + 144) = v8;
  *(v9 + 120) = v13;
  *(v9 + 104) = v12;
  *(v9 + 88) = v11;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  return MEMORY[0x2822009F8](sub_22B155858, 0, 0);
}

uint64_t sub_22B155858()
{
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD00000000000008DLL, 0x800000022B3693E0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDD8;
    *(v0 + 152) = qword_28140BDD8;

    return MEMORY[0x2822009F8](sub_22B15599C, v1, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v2 = 9;
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_22B15599C()
{
  v1 = *(v0 + 152);
  v13 = *(v0 + 112);
  v14 = *(v0 + 128);
  v2 = *(v0 + 88);
  v11 = *(v0 + 72);
  v12 = *(v0 + 96);
  v9 = *(v0 + 40);
  v10 = *(v0 + 56);
  v8 = *(v0 + 24);
  v3 = sub_22B172464(&qword_27D8BA2B0, type metadata accessor for EnergySiteManager, &unk_22B3661D8);
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v9;
  *(v4 + 56) = v10;
  *(v4 + 72) = v11;
  *(v4 + 88) = v12;
  *(v4 + 104) = v14;
  *(v4 + 120) = v13;
  *(v4 + 136) = v2;
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  v6 = sub_22B35F45C();
  *v5 = v0;
  v5[1] = sub_22B155B34;

  return MEMORY[0x2822008A0](v0 + 16, v1, v3, 0xD00000000000008DLL, 0x800000022B3693E0, sub_22B1683A0, v4, v6);
}

uint64_t sub_22B155B34()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_22B155C58;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_22B172500;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}