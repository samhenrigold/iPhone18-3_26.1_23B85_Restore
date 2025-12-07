uint64_t sub_238244944()
{
  sub_2382791F0();
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_2382449F8;
  v2 = v0[38];
  v3 = v0[39];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2382449F8()
{

  return MEMORY[0x2822009F8](sub_238244AF4, 0, 0);
}

uint64_t sub_238244AF4()
{
  v1 = v0[38];
  if ((*(v0[33] + 48))(v1, 1, v0[32]) == 1)
  {
    v2 = v0[22];
    (*(v0[40] + 8))(v0[41], v0[39]);
    v3 = *(v2 + 112);
    v0[60] = v3;

    return MEMORY[0x2822009F8](sub_238244C94, v3, 0);
  }

  else
  {
    v5 = v0[36];
    v4 = v0[37];
    v6 = v0[35];
    sub_2382472A0(v1, v0[34], &qword_27DEF78A0, &qword_23827F128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A8, &unk_23827F1A0);
    sub_2382791C0();
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v0[59] = v7;
    *v7 = v0;
    v7[1] = sub_2382449F8;
    v8 = v0[38];
    v9 = v0[39];

    return MEMORY[0x2822003E8](v8, 0, 0, v9);
  }
}

uint64_t sub_238244C94()
{
  sub_238257608();

  return MEMORY[0x2822009F8](sub_238244CFC, 0, 0);
}

uint64_t sub_238244CFC()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[49];
  v6 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A8, &unk_23827F1A0);
  sub_2382791D0();
  [v6 invalidate];

  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_238244E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_238278CB0();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_238278F70();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238244F98, 0, 0);
}

uint64_t sub_238244F98()
{
  v29 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x277D076A8], v3);
  sub_238278CA0();
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v4, v7, v5);
  v8 = sub_238278F60();
  v9 = sub_2382792B0();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  if (v10)
  {
    v27 = v0[10];
    v17 = swift_slowAlloc();
    v25 = v9;
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_238279570();
    v26 = v11;
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_23824E308(v19, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_238215000, v8, v25, "[%s] Server connection interrupted", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2383EDB00](v18, -1, -1);
    MEMORY[0x2383EDB00](v17, -1, -1);

    (*(v12 + 8))(v26, v27);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v23 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v23;

  return MEMORY[0x2822009F8](sub_23824763C, v23, 0);
}

uint64_t sub_238245248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_238278CB0();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_238278F70();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382453C0, 0, 0);
}

uint64_t sub_2382453C0()
{
  v29 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x277D076A8], v3);
  sub_238278CA0();
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v4, v7, v5);
  v8 = sub_238278F60();
  v9 = sub_2382792B0();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  if (v10)
  {
    v27 = v0[10];
    v17 = swift_slowAlloc();
    v25 = v9;
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_238279570();
    v26 = v11;
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_23824E308(v19, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_238215000, v8, v25, "[%s] Server connection interrupted", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2383EDB00](v18, -1, -1);
    MEMORY[0x2383EDB00](v17, -1, -1);

    (*(v12 + 8))(v26, v27);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v23 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v23;

  return MEMORY[0x2822009F8](sub_238247640, v23, 0);
}

uint64_t sub_238245670(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_238278BC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_2382791A0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v8 + 32))(v15 + v14, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v16 = a2;
  sub_2382505A8(0, 0, v12, a4, v15);
}

uint64_t sub_238245854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_238278CB0();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_238278F70();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382459CC, 0, 0);
}

uint64_t sub_2382459CC()
{
  v29 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x277D076A8], v3);
  sub_238278CA0();
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v4, v7, v5);
  v8 = sub_238278F60();
  v9 = sub_2382792B0();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  if (v10)
  {
    v27 = v0[10];
    v17 = swift_slowAlloc();
    v25 = v9;
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_238279570();
    v26 = v11;
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_23824E308(v19, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_238215000, v8, v25, "[%s] Server connection invalidated", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2383EDB00](v18, -1, -1);
    MEMORY[0x2383EDB00](v17, -1, -1);

    (*(v12 + 8))(v26, v27);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v23 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v23;

  return MEMORY[0x2822009F8](sub_238245C7C, v23, 0);
}

uint64_t sub_238245C7C()
{
  sub_238248D64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238245D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_238278CB0();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_238278F70();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238245E84, 0, 0);
}

uint64_t sub_238245E84()
{
  v29 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x277D076A8], v3);
  sub_238278CA0();
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v4, v7, v5);
  v8 = sub_238278F60();
  v9 = sub_2382792B0();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  if (v10)
  {
    v27 = v0[10];
    v17 = swift_slowAlloc();
    v25 = v9;
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_238279570();
    v26 = v11;
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_23824E308(v19, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_238215000, v8, v25, "[%s] Server connection invalidated", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2383EDB00](v18, -1, -1);
    MEMORY[0x2383EDB00](v17, -1, -1);

    (*(v12 + 8))(v26, v27);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v23 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v23;

  return MEMORY[0x2822009F8](sub_238246134, v23, 0);
}

uint64_t sub_238246134()
{
  sub_238248D88();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2382461C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7878, &qword_23827F0F8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238246290, 0, 0);
}

uint64_t sub_238246290()
{
  v1 = *(*(v0 + 24) + qword_27DF03110);
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_238246314, v1, 0);
}

uint64_t sub_238246314()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  (*(v3 + 104))(v1, *MEMORY[0x277D85778], v2);
  sub_238279210();

  v4 = v0[1];

  return v4();
}

uint64_t sub_238246400(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7898, &qword_23827F118);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382464CC, 0, 0);
}

uint64_t sub_2382464CC()
{
  v1 = *(*(v0 + 24) + qword_27DF03110);
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_238246550, v1, 0);
}

uint64_t sub_238246550()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A0, &qword_23827F128);
  (*(v3 + 104))(v1, *MEMORY[0x277D85778], v2);
  sub_238279210();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23824673C(uint64_t a1)
{
  v3 = *(sub_238278BC0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A8, &unk_23827F1A0);
  v12 = v1[3];
  v13 = v1[2];
  v6 = *(v1 + v5 + 8);
  v10 = *(v1 + v5);
  v11 = v1[4];
  v7 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238247660;

  return sub_238243A08(a1, v13, v12, v11, v1 + v4, v10, v6, v7);
}

uint64_t sub_238246914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2382469D8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_238278BC0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_238245670(v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_238246A7C(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_238245D0C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_238246B9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238246BE4(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_238245248(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v15 = sub_238278BC0();
  v4 = *(v15 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (((((*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(v17 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + v13 + 8) & ~v9;
  v14 = *(v8 + 64);
  v11 = v5 | v9;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v15);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v2 + v10, v17);

  return MEMORY[0x2821FE8E8](v2, v10 + v14, v11 | 7);
}

uint64_t sub_238246EF8(uint64_t a1)
{
  v3 = *(sub_238278BC0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
  v12 = v1[3];
  v13 = v1[2];
  v6 = *(v1 + v5 + 8);
  v10 = *(v1 + v5);
  v11 = v1[4];
  v7 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2382470D0;

  return sub_2382425F0(a1, v13, v12, v11, v1 + v4, v10, v6, v7);
}

uint64_t sub_2382470D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_13Tm()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2382472A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_238247308(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_238245854(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_28Tm()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_238247500(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_238244E20(a1, v6, v7, v1 + v5, v8);
}

uint64_t ElectricityInsightService.energyInsights(using:atVenue:wholeHomeOptimization:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 448) = a4;
  *(v5 + 208) = a3;
  *(v5 + 216) = v4;
  *(v5 + 192) = a1;
  *(v5 + 200) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7878, &qword_23827F0F8);
  *(v5 + 224) = v6;
  *(v5 + 232) = *(v6 - 8);
  *(v5 + 240) = swift_task_alloc();
  v7 = sub_238278AA0();
  *(v5 + 248) = v7;
  *(v5 + 256) = *(v7 - 8);
  *(v5 + 264) = swift_task_alloc();
  v8 = sub_238278BC0();
  *(v5 + 272) = v8;
  *(v5 + 280) = *(v8 - 8);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238247814, v4, 0);
}

uint64_t sub_238247814()
{
  if (sub_238278D20() & 1) == 0 && (v1 = sub_238278D00(), *(v0 + 304) = v1, *(v0 + 40) = v1, v2 = sub_238246B9C(&qword_27DEF7880, MEMORY[0x277D073A0], MEMORY[0x277D07368]), *(v0 + 312) = v2, *(v0 + 48) = v2, boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16)), *(v0 + 440) = *MEMORY[0x277D07378], v4 = *(v1 - 8), v5 = *(v4 + 104), *(v0 + 320) = v5, *(v0 + 328) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000, v5(boxed_opaque_existential_1), v6 = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1((v0 + 16)), (v6) && (*(v0 + 80) = v1, *(v0 + 88) = v2, v7 = __swift_allocate_boxed_opaque_existential_1((v0 + 56)), *(v0 + 444) = *MEMORY[0x277D07388], v5(v7), v8 = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1((v0 + 56)), (v8))
  {
    if (qword_27DEF68B8 != -1)
    {
      swift_once();
    }

    v9 = qword_27DF03158;
    *(v0 + 336) = qword_27DF03158;
    sub_238278BB0();
    v10 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v11 = sub_238278FF0();
    v12 = [v10 initWithServiceName_];
    *(v0 + 344) = v12;

    v13 = [objc_opt_self() interfaceWithProtocol_];
    [v12 setRemoteObjectInterface_];

    [v12 resume];

    return MEMORY[0x2822009F8](sub_238247B08, v9, 0);
  }

  else
  {
    sub_238241158();
    swift_allocError();
    *v14 = 6;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_238247B08()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 440);
  v13 = *(v0 + 304);
  *(v0 + 120) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  v1(boxed_opaque_existential_1, v2, v13);
  LOBYTE(v2) = sub_238278C70();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  if (v2 & 1) != 0 && (v4 = *(v0 + 444), v5 = *(v0 + 320), v14 = *(v0 + 304), *(v0 + 160) = v14, v6 = __swift_allocate_boxed_opaque_existential_1((v0 + 136)), v5(v6, v4, v14), LOBYTE(v4) = sub_238278C70(), __swift_destroy_boxed_opaque_existential_1((v0 + 136)), (v4))
  {
    v7 = swift_task_alloc();
    *(v0 + 352) = v7;
    *v7 = v0;
    v7[1] = sub_238247CBC;

    return sub_2382592C4();
  }

  else
  {
    v9 = *(v0 + 344);
    sub_238241158();
    v10 = swift_allocError();
    *v11 = 6;
    swift_willThrow();

    *(v0 + 432) = v10;
    v12 = *(v0 + 216);
    (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

    return MEMORY[0x2822009F8](sub_2382486B0, v12, 0);
  }
}

uint64_t sub_238247CBC()
{
  v2 = *v1;

  if (v0)
  {

    *(v2 + 432) = v0;
    v3 = *(v2 + 216);
    (*(*(v2 + 280) + 8))(*(v2 + 296), *(v2 + 272));
    v4 = sub_2382486B0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 336);
    v4 = sub_238247E0C;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_238247E0C()
{
  super_class = v0[17].super_class;
  receiver = v0[18].receiver;
  v3 = v0[16].super_class;
  v4 = v0[17].receiver;
  v19 = receiver;
  v5 = v0[15].super_class;
  v23 = v0[16].receiver;
  v6 = v0[12].super_class;
  v17 = v0[13].receiver;
  v22 = v23[2];
  v22(v3, v6, v5);
  v7 = type metadata accessor for ElectricityInsightQuery(0);
  v18 = *(v6 + v7[5]);
  v21 = *(v6 + v7[6]);
  v20 = *(v6 + v7[7]);
  v8 = *(super_class + 2);
  v8(receiver, v17, v4);
  Request = type metadata accessor for InsightQueryRequest(0);
  v10 = objc_allocWithZone(Request);
  v22(&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range], v3, v5);
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = v18;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = 0;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = v21;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = v20;
  v8(&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID], v19, v4);
  v11 = &v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
  *v12 = 0;
  v12[8] = 1;
  v0[11].receiver = v10;
  v0[11].super_class = Request;
  v0[22].super_class = objc_msgSendSuper2(v0 + 11, sel_init);
  v13 = *(super_class + 1);
  v0[23].receiver = v13;
  v0[23].super_class = ((super_class + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v13(v19, v4);
  (v23[1])(v3, v5);
  v14 = swift_task_alloc();
  v0[24].receiver = v14;
  *v14 = v0;
  v14[1] = sub_238248084;
  v15 = v0[18].super_class;

  return sub_238256AFC(v15);
}

uint64_t sub_238248084()
{
  v2 = *v1;
  v2[49] = v0;

  if (v0)
  {
    v3 = v2[42];

    return MEMORY[0x2822009F8](sub_23824861C, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[50] = v4;
    *v4 = v2;
    v4[1] = sub_2382481F4;
    v5 = v2[43];

    return sub_238258C58(v5);
  }
}

uint64_t sub_2382481F4(uint64_t a1)
{
  v4 = *v2;
  v4[51] = v1;

  v5 = v4[42];
  if (v1)
  {
    v6 = sub_2382484D8;
  }

  else
  {
    v4[52] = a1;
    v6 = sub_238248330;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_238248330()
{
  v1 = *(v0 + 416);
  v14 = *(v0 + 368);
  v2 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 296);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v12 = *(v0 + 224);
  v8 = *(v0 + 448);
  v13 = *(v0 + 272);
  v9 = swift_task_alloc();
  *(v9 + 16) = v3;
  *(v9 + 24) = v5;
  *(v9 + 32) = sub_2382599B4;
  *(v9 + 40) = 0;
  *(v9 + 48) = &unk_23827F268;
  *(v9 + 56) = 0;
  *(v9 + 64) = v4;
  *(v9 + 72) = v1;
  *(v9 + 80) = v2;
  *(v9 + 88) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  (*(v7 + 104))(v6, *MEMORY[0x277D85778], v12);
  sub_238279210();

  swift_unknownObjectRelease();

  v14(v5, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2382484D8()
{
  v1 = *(*(v0 + 336) + 112);
  *(v0 + 424) = v1;
  return MEMORY[0x2822009F8](sub_2382484FC, v1, 0);
}

uint64_t sub_2382484FC()
{
  v1 = *(v0 + 336);
  sub_238257608();

  return MEMORY[0x2822009F8](sub_238248568, v1, 0);
}

uint64_t sub_238248568()
{
  v1 = v0[45];
  v2 = v0[43];
  [v2 invalidate];
  swift_willThrow();

  v0[54] = v0[51];
  v3 = v0[27];
  (*(v0[35] + 8))(v0[37], v0[34]);

  return MEMORY[0x2822009F8](sub_2382486B0, v3, 0);
}

uint64_t sub_23824861C()
{
  v1 = *(v0 + 360);

  *(v0 + 432) = *(v0 + 392);
  v2 = *(v0 + 216);
  (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));

  return MEMORY[0x2822009F8](sub_2382486B0, v2, 0);
}

uint64_t sub_2382486B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23824873C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v24 = a1;
  v25 = a2;
  v8 = sub_238278CB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238278F70();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v16 = *(*v7 + 104);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v17 - 8) + 56))(v7 + v16, 1, 1, v17);
  *(v7 + *(*v7 + 120)) = 1;
  (*(v9 + 104))(v11, *MEMORY[0x277D076A8], v8);
  sub_238278CA0();
  (*(v9 + 8))(v11, v8);
  v18 = sub_238278F60();
  v19 = sub_2382792A0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_238215000, v18, v19, "[DataStream] Initialized data stream", v20, 2u);
    MEMORY[0x2383EDB00](v20, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v21 = (v7 + *(*v7 + 112));
  v22 = v25;
  *v21 = v24;
  v21[1] = v22;
  return v7;
}

uint64_t sub_238248A38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v27 = a5;
  v28 = a6;
  v29 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_238278CB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_238278F70();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *MEMORY[0x277D076A8], v12);
  sub_238278CA0();
  (*(v13 + 8))(v15, v12);
  v20 = sub_238278F60();
  v21 = sub_238279290();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_238215000, v20, v21, "[DataStream] Setup data stream", v22, 2u);
    MEMORY[0x2383EDB00](v22, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  v24 = *(v23 - 8);
  (*(v24 + 16))(v11, v29, v23);
  (*(v24 + 56))(v11, 0, 1, v23);
  v25 = *(*a2 + 104);
  swift_beginAccess();
  sub_23823D8D4(v11, a2 + v25, a3, a4);
  result = swift_endAccess();
  *(a2 + *(*a2 + 120)) = 0;
  return result;
}

uint64_t sub_238248DAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v58 - v7;
  v65 = a3;
  v66 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v61 = &v58 - v11;
  v12 = sub_238278CB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_238278F70();
  v64 = *(v69 - 8);
  v16 = MEMORY[0x28223BE20](v69);
  v60 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  v22 = *MEMORY[0x277D076A8];
  v23 = *(v13 + 104);
  v23(v15, v22, v12);
  sub_238278CA0();
  v63 = *(v13 + 8);
  v63(v15, v12);
  v24 = sub_238278F60();
  v25 = sub_238279290();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_238215000, v24, v25, "[DataStream] Server invalidated connection", v26, 2u);
    MEMORY[0x2383EDB00](v26, -1, -1);
  }

  v27 = *(v64 + 8);
  v27(v21, v69);
  v28 = *(*v70 + 120);
  v29 = *(v70 + v28);
  v23(v15, v22, v12);
  if (v29)
  {
    v30 = v60;
    sub_238278CA0();
    v63(v15, v12);
    v31 = sub_238278F60();
    v32 = sub_2382792A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_238215000, v31, v32, "[DataStream] Stream already finished", v33, 2u);
      MEMORY[0x2383EDB00](v33, -1, -1);
    }

    v27(v30, v69);
    v34 = v70;
    v35 = *(*v70 + 104);
    swift_beginAccess();
    v36 = v34 + v35;
    v37 = v62;
    v39 = v65;
    v38 = v66;
    sub_23823D83C(v36, v62, v65, v66);
    v40 = v67;
    if ((*(v67 + 48))(v37, 1, v68))
    {
      return sub_23824C65C(v37, v39, v38);
    }

    else
    {
      v54 = v58;
      v55 = v68;
      (*(v40 + 16))(v58, v37, v68);
      sub_23824C65C(v37, v39, v38);
      sub_2382791D0();
      return (*(v40 + 8))(v54, v55);
    }
  }

  else
  {
    v42 = v59;
    sub_238278CA0();
    v63(v15, v12);
    v43 = sub_238278F60();
    v44 = sub_2382792A0();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v65;
    if (v45)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_238215000, v43, v44, "[DataStream] Marking continuation as finished", v47, 2u);
      MEMORY[0x2383EDB00](v47, -1, -1);
    }

    v27(v42, v69);
    v48 = v70;
    v49 = *(*v70 + 104);
    swift_beginAccess();
    v50 = v48 + v49;
    v51 = v61;
    v52 = v66;
    sub_23823D83C(v50, v61, v46, v66);
    v53 = v67;
    if ((*(v67 + 48))(v51, 1, v68))
    {
      result = sub_23824C65C(v51, v46, v52);
    }

    else
    {
      v56 = v58;
      v57 = v68;
      (*(v53 + 16))(v58, v51, v68);
      sub_23824C65C(v51, v46, v52);
      sub_2382791D0();
      result = (*(v53 + 8))(v56, v57);
    }

    *(v70 + v28) = 1;
  }

  return result;
}

uint64_t sub_238249454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, unsigned __int8 a11)
{
  v55 = a7;
  v56 = a8;
  v54 = a6;
  v50 = a4;
  v51 = a5;
  v57 = a2;
  v47 = a1;
  v53 = a11;
  v52 = a10;
  v49 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
  v45 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v46 = &v42 - v14;
  v16 = sub_238278BC0();
  v43 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v44 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v42 - v20;
  v48 = &v42 - v20;
  v22 = sub_2382791A0();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  (*(v17 + 16))(&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v16);
  v42 = v13;
  (*(v13 + 16))(v15, v47, v12);
  v23 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v24 = (v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v13 + 80) + v28 + 9) & ~*(v13 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v57;
  (*(v17 + 32))(&v30[v23], v44, v43);
  v31 = &v30[v24];
  v32 = v51;
  *v31 = v50;
  v31[1] = v32;
  v33 = &v30[v25];
  v34 = v55;
  *v33 = v54;
  v33[1] = v34;
  v35 = v56;
  *&v30[v26] = v56;
  *&v30[v27] = v49;
  v36 = &v30[v28];
  v37 = v52;
  *v36 = v52;
  v36[8] = v53;
  (*(v42 + 32))(&v30[v29], v46, v45);

  v38 = v35;
  swift_unknownObjectRetain();
  v39 = v37;
  v40 = v48;
  sub_23824B564(0, 0, v48, &unk_23827F278, v30);

  return sub_23824C65C(v40, &qword_27DEF78B0, &qword_23827F360);
}

uint64_t sub_2382497F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v22;
  *(v8 + 488) = v21;
  *(v8 + 232) = v20;
  *(v8 + 216) = v19;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 - 8);
  *(v8 + 272) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E8, &qword_23827F220);
  *(v8 + 280) = v11;
  *(v8 + 288) = *(v11 - 8);
  *(v8 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78F0, &qword_23827F228);
  *(v8 + 304) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78F8, &qword_23827F230);
  *(v8 + 312) = v12;
  *(v8 + 320) = *(v12 - 8);
  *(v8 + 328) = swift_task_alloc();
  v13 = sub_238278B10();
  *(v8 + 336) = v13;
  *(v8 + 344) = *(v13 - 8);
  *(v8 + 352) = swift_task_alloc();
  v14 = sub_238278BC0();
  *(v8 + 360) = v14;
  v15 = *(v14 - 8);
  *(v8 + 368) = v15;
  *(v8 + 376) = *(v15 + 64);
  *(v8 + 384) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7900, &qword_23827F238);
  *(v8 + 392) = v16;
  *(v8 + 400) = *(v16 - 8);
  *(v8 + 408) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238249B1C, a4, 0);
}

uint64_t sub_238249B1C()
{
  v0[52] = sub_23824C004(v0[23], v0[24], v0[25]);
  v0[53] = v1;

  return MEMORY[0x2822009F8](sub_238249B8C, 0, 0);
}

uint64_t sub_238249B8C()
{
  v1 = v0[26];
  v2 = *(v0[53] + qword_27DEF79F0);
  v0[54] = v2;
  v3 = v2;
  v7 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_238249CA8;
  v5 = v0[51];

  return v7(v5, v3);
}

uint64_t sub_238249CA8()
{
  v1 = *(*v0 + 432);

  return MEMORY[0x2822009F8](sub_238249DBC, 0, 0);
}

uint64_t sub_238249DBC()
{
  v1 = v0[53];
  v19 = v0[52];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v20 = v0[22];
  v21 = v0[28];
  v17 = *(v4 + 16);
  v18 = v0[23];
  v14 = v5;
  v17(v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_allocObject();
  v16 = *(v4 + 32);
  v16(v7 + v15, v3, v5);
  *(v7 + v6) = v1;
  v0[6] = sub_23824C274;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238250868;
  v0[5] = &block_descriptor_0;
  v8 = _Block_copy(v0 + 2);
  v9 = v1;

  [v21 setInterruptionHandler_];
  _Block_release(v8);
  (v17)(v3, v18, v14);
  v10 = swift_allocObject();
  v16(v10 + v15, v3, v14);
  *(v10 + v6) = v9;
  v0[12] = sub_23824C2AC;
  v0[13] = v10;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_238250868;
  v0[11] = &block_descriptor_23;
  v11 = _Block_copy(v0 + 8);
  v12 = v9;

  [v21 setInvalidationHandler_];
  _Block_release(v11);
  v0[56] = [v19 endpoint];

  return MEMORY[0x2822009F8](sub_23824A074, v20, 0);
}

uint64_t sub_23824A074()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 456) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 464) = v5;
  *v5 = v0;
  v5[1] = sub_23824A1C4;

  return sub_23825F914(v3);
}

uint64_t sub_23824A1C4()
{
  v1 = *(*v0 + 456);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_23824A2EC, v2, 0);
}

uint64_t sub_23824A2EC()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v35 = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 344);
    v4 = *(v3 + 16);
    v3 += 16;
    v32 = v4;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v6 = *MEMORY[0x277D861C0];
    v30 = *(v3 + 56);
    v28 = (v3 - 8);
    v29 = (v3 + 16);
    v7 = MEMORY[0x277D84F90];
    v31 = *MEMORY[0x277D861C0];
    while (1)
    {
      v33 = v7;
      v34 = v2;
      v32(*(v0 + 352), v5, *(v0 + 336));
      type metadata accessor for SandboxExtension.Context();
      v8 = swift_allocObject();
      v8[2] = j__sandbox_extension_consume;
      v8[3] = 0;
      v8[4] = j__sandbox_extension_release;
      v8[5] = 0;
      v8[6] = j__sandbox_extension_issue_file;
      v8[7] = 0;
      type metadata accessor for SandboxExtension(0);
      v9 = swift_allocObject();
      *(v9 + 40) = 0;
      *(v9 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v12 = v9;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v13 = sandbox_extension_issue_file();

      v14 = *(v0 + 352);
      v15 = *(v0 + 336);
      if (v13)
      {
        *(v12 + 3) = sub_238279050();
        *(v12 + 4) = v16;
        free(v13);
        (*v29)(&v12[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], v14, v15);
        *(v12 + 2) = v8;

        MEMORY[0x2383ECFB0](v17);
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2382790F0();
        }

        sub_238279120();

        v7 = v35;
      }

      else
      {

        (*v28)(v14, v15);
        swift_deallocPartialClassInstance();
        v7 = v33;
      }

      v6 = v31;
      v5 += v30;
      v2 = v34 - 1;
      if (v34 == 1)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    v18 = *(v0 + 448);
    v19 = *(v0 + 488);
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = type metadata accessor for XPCSandboxExtensionContainer();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v7;
    *(v0 + 160) = v23;
    *(v0 + 168) = v22;
    v24 = objc_msgSendSuper2((v0 + 160), sel_init);
    *(v0 + 144) = sub_2382599AC;
    *(v0 + 152) = 0;
    *(v0 + 112) = MEMORY[0x277D85DD0];
    *(v0 + 120) = 1107296256;
    *(v0 + 128) = sub_238250868;
    *(v0 + 136) = &block_descriptor_27;
    v25 = _Block_copy((v0 + 112));
    v26 = v24;
    [v21 batchedWholeHomeInsightsWithRequest:v20 endpoint:v18 ekSandboxExtension:v26 wholeHomeOptimization:v19 completion:v25];

    _Block_release(v25);
    v9 = sub_23824A740;
    v10 = 0;
    v11 = 0;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23824A740()
{
  sub_2382791F0();
  v1 = swift_task_alloc();
  v0[59] = v1;
  *v1 = v0;
  v1[1] = sub_23824A7F4;
  v2 = v0[38];
  v3 = v0[39];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_23824A7F4()
{

  return MEMORY[0x2822009F8](sub_23824A8F0, 0, 0);
}

uint64_t sub_23824A8F0()
{
  v1 = v0[38];
  if ((*(v0[33] + 48))(v1, 1, v0[32]) == 1)
  {
    v2 = v0[22];
    (*(v0[40] + 8))(v0[41], v0[39]);
    v3 = *(v2 + 112);
    v0[60] = v3;

    return MEMORY[0x2822009F8](sub_23824387C, v3, 0);
  }

  else
  {
    v5 = v0[36];
    v4 = v0[37];
    v6 = v0[35];
    sub_23824C36C(v1, v0[34]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
    sub_2382791C0();
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v0[59] = v7;
    *v7 = v0;
    v7[1] = sub_23824A7F4;
    v8 = v0[38];
    v9 = v0[39];

    return MEMORY[0x2822003E8](v8, 0, 0, v9);
  }
}

uint64_t sub_23824AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_238278CB0();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_238278F70();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23824ABF8, 0, 0);
}

uint64_t sub_23824ABF8()
{
  v29 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x277D076A8], v3);
  sub_238278CA0();
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v4, v7, v5);
  v8 = sub_238278F60();
  v9 = sub_2382792B0();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  if (v10)
  {
    v27 = v0[10];
    v17 = swift_slowAlloc();
    v25 = v9;
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_238279570();
    v26 = v11;
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_23824E308(v19, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_238215000, v8, v25, "[%s] Server connection interrupted", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2383EDB00](v18, -1, -1);
    MEMORY[0x2383EDB00](v17, -1, -1);

    (*(v12 + 8))(v26, v27);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v23 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v23;

  return MEMORY[0x2822009F8](sub_23824C930, v23, 0);
}

uint64_t sub_23824AEA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_238278BC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_2382791A0();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v8 + 32))(v15 + v14, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v16 = a2;
  sub_2382505A8(0, 0, v12, a4, v15);
}

uint64_t sub_23824B08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_238278BC0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_238278CB0();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_238278F70();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23824B204, 0, 0);
}

uint64_t sub_23824B204()
{
  v29 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x277D076A8], v3);
  sub_238278CA0();
  (*(v2 + 8))(v1, v3);
  (*(v6 + 16))(v4, v7, v5);
  v8 = sub_238278F60();
  v9 = sub_2382792B0();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  if (v10)
  {
    v27 = v0[10];
    v17 = swift_slowAlloc();
    v25 = v9;
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    sub_238246B9C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_238279570();
    v26 = v11;
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_23824E308(v19, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_238215000, v8, v25, "[%s] Server connection invalidated", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2383EDB00](v18, -1, -1);
    MEMORY[0x2383EDB00](v17, -1, -1);

    (*(v12 + 8))(v26, v27);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v23 = *(*(v0[3] + qword_27DEF79F0) + qword_27DF03110);
  v0[13] = v23;

  return MEMORY[0x2822009F8](sub_23824B4B4, v23, 0);
}

uint64_t sub_23824B4B4()
{
  sub_238248DAC(&qword_27DEF78E0, &qword_23827F208, &qword_27DEF7908, &qword_23827F2A0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23824B564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23823D83C(a3, v25 - v10, &qword_27DEF78B0, &qword_23827F360);
  v12 = sub_2382791A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23824C65C(v11, &qword_27DEF78B0, &qword_23827F360);
  }

  else
  {
    sub_238279190();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_238279160();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_238279010() + 32;
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

uint64_t sub_23824B824(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7878, &qword_23827F0F8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23824B8F0, 0, 0);
}

uint64_t sub_23824B8F0()
{
  v1 = *(*(v0 + 24) + qword_27DF03110);
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_23824B974, v1, 0);
}

uint64_t sub_23824B974()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  (*(v3 + 104))(v1, *MEMORY[0x277D85778], v2);
  sub_238279210();

  v4 = v0[1];

  return v4();
}

uint64_t sub_23824BAA0()
{
  v12 = sub_238278BC0();
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
  v5 = *(v13 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + v10 + 9) & ~v6;
  v11 = *(v5 + 64);
  v8 = v2 | v6;
  swift_unknownObjectRelease();

  (*(v1 + 8))(v0 + v3, v12);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v0 + v7, v13);

  return MEMORY[0x2821FE8E8](v0, v7 + v11, v8 | 7);
}

uint64_t sub_23824BC78(uint64_t a1)
{
  v3 = *(sub_238278BC0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78E0, &qword_23827F208);
  v12 = v1[3];
  v13 = v1[2];
  v10 = *(v1 + v5);
  v11 = v1[4];
  v9 = *(v1 + v5 + 8);
  v6 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2382470D0;

  return sub_2382497F4(a1, v13, v12, v11, v1 + v4, v10, v9, v6);
}

uint64_t sub_23824BE5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238247660;

  return sub_23824E094(a1, v4);
}

uint64_t sub_23824BF14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23824BF4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2382470D0;

  return sub_23824E094(a1, v4);
}

id sub_23824C004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() anonymousListener];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7910, &qword_23827F2B8);
  swift_allocObject();

  v11 = sub_23824873C(a2, a3, &qword_27DEF78E0, &qword_23827F208);
  v12 = *(v7 + 16);
  v12(v9, a1, v6);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7918, &qword_23827F2C0);
  v14 = objc_allocWithZone(v13);
  v12(&v14[qword_27DEF7948], v9, v6);
  *&v14[qword_27DF03110] = v11;
  v21.receiver = v14;
  v21.super_class = v13;

  v15 = objc_msgSendSuper2(&v21, sel_init);
  (*(v7 + 8))(v9, v6);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7920, &qword_23827F2C8);
  v17 = objc_allocWithZone(v16);
  *&v17[qword_27DEF79F0] = v15;
  v20.receiver = v17;
  v20.super_class = v16;
  v18 = v15;
  [v10 setDelegate_];
  [v10 resume];

  return v10;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23824C2CC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_238278BC0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_23824AEA8(v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_23824C36C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23824C3E0(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_23824B08C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_23824C500(uint64_t a1)
{
  v4 = *(sub_238278BC0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238247660;

  return sub_23824AA80(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_23824C65C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_23824C6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() anonymousListener];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7930, &qword_23827F2D8);
  swift_allocObject();

  v11 = sub_23824873C(a2, a3, &qword_27DEF78A8, &unk_23827F1A0);
  v12 = *(v7 + 16);
  v12(v9, a1, v6);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7938, &qword_23827F2E0);
  v14 = objc_allocWithZone(v13);
  v12(&v14[qword_27DEF7948], v9, v6);
  *&v14[qword_27DF03110] = v11;
  v21.receiver = v14;
  v21.super_class = v13;

  v15 = objc_msgSendSuper2(&v21, sel_init);
  (*(v7 + 8))(v9, v6);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7940, qword_23827F2E8);
  v17 = objc_allocWithZone(v16);
  *&v17[qword_27DEF79F0] = v15;
  v20.receiver = v17;
  v20.super_class = v16;
  v18 = v15;
  [v10 setDelegate_];
  [v10 resume];

  return v10;
}

uint64_t sub_23824C94C(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23824C9E8@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27DEF7948;
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23824CA60(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 144) = a3;
  *(v4 + 16) = a1;
  v5 = sub_238278BC0();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_238278CB0();
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 - 8);
  *(v4 + 80) = swift_task_alloc();
  v7 = sub_238278F70();
  *(v4 + 88) = v7;
  *(v4 + 96) = *(v7 - 8);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23824CBF8, 0, 0);
}

uint64_t sub_23824CBF8()
{
  v84 = v0;
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v80 = *MEMORY[0x277D076A8];
  v77 = *(v2 + 104);
  v77(v1);
  sub_238278CA0();
  v5 = *(v2 + 8);
  v5(v1, v3);
  v6 = v4;
  v7 = sub_238278F60();
  v8 = sub_2382792A0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 120);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  if (v9)
  {
    v74 = *(v0 + 120);
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v67 = *(v0 + 40);
    v69 = v7;
    v15 = *(v0 + 32);
    v68 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v83 = v70;
    *v68 = 136315138;
    v71 = v11;
    v16 = qword_27DEF7948;
    v17 = sub_238278BC0();
    (*(*(v17 - 8) + 16))(v13, &v15[v16], v17);
    sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v18 = sub_238279570();
    v66 = v8;
    v20 = v19;

    (*(v14 + 8))(v13, v67);
    v21 = sub_23824E308(v18, v20, &v83);

    *(v68 + 4) = v21;
    _os_log_impl(&dword_238215000, v69, v66, "[ClientEndpointService] Received Data for session %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x2383EDB00](v70, -1, -1);
    MEMORY[0x2383EDB00](v68, -1, -1);

    v22 = *(v12 + 8);
    v22(v74, v71);
  }

  else
  {

    v22 = *(v12 + 8);
    v22(v10, v11);
  }

  v23 = *(*(v0 + 24) + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type);
  (v77)(*(v0 + 80), v80, *(v0 + 64));
  v24 = *(v0 + 80);
  v25 = *(v0 + 64);
  v26 = *(v0 + 32);
  if (v23 == 1)
  {
    sub_238278CA0();
    v5(v24, v25);
    v27 = v26;
    v28 = sub_238278F60();
    v29 = sub_2382792A0();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 104);
    v32 = *(v0 + 88);
    if (v30)
    {
      v78 = *(v0 + 104);
      v34 = *(v0 + 48);
      v33 = *(v0 + 56);
      v35 = *(v0 + 32);
      v36 = *(v0 + 40);
      v81 = v22;
      v37 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v83 = v72;
      *v37 = 136315138;
      v75 = v32;
      v38 = qword_27DEF7948;
      v39 = sub_238278BC0();
      (*(*(v39 - 8) + 16))(v33, &v35[v38], v39);
      sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_238279570();
      v42 = v41;

      (*(v34 + 8))(v33, v36);
      v43 = sub_23824E308(v40, v42, &v83);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_238215000, v28, v29, "[ClientEndpointService] Received Runtime Data for session %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x2383EDB00](v72, -1, -1);
      MEMORY[0x2383EDB00](v37, -1, -1);

      v81(v78, v75);
    }

    else
    {

      v22(v31, v32);
    }

    v61 = swift_task_alloc();
    *(v0 + 136) = v61;
    *v61 = v0;
    v62 = sub_23824D4FC;
  }

  else
  {
    sub_238278CA0();
    v5(v24, v25);
    v44 = v26;
    v45 = sub_238278F60();
    v46 = sub_2382792A0();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 112);
    v49 = *(v0 + 88);
    if (v47)
    {
      v79 = *(v0 + 112);
      v51 = *(v0 + 48);
      v50 = *(v0 + 56);
      v52 = *(v0 + 32);
      v53 = *(v0 + 40);
      v82 = v22;
      v54 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v83 = v73;
      *v54 = 136315138;
      v76 = v49;
      v55 = qword_27DEF7948;
      v56 = sub_238278BC0();
      (*(*(v56 - 8) + 16))(v50, &v52[v55], v56);
      sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v57 = sub_238279570();
      v59 = v58;

      (*(v51 + 8))(v50, v53);
      v60 = sub_23824E308(v57, v59, &v83);

      *(v54 + 4) = v60;
      _os_log_impl(&dword_238215000, v45, v46, "[ClientEndpointService] Received Energy Data for session %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x2383EDB00](v73, -1, -1);
      MEMORY[0x2383EDB00](v54, -1, -1);

      v82(v79, v76);
    }

    else
    {

      v22(v48, v49);
    }

    v61 = swift_task_alloc();
    *(v0 + 128) = v61;
    *v61 = v0;
    v62 = sub_23824D36C;
  }

  v61[1] = v62;
  v63 = *(v0 + 144);
  v64 = *(v0 + 16);

  return sub_23824E8D0(v64, v63);
}

uint64_t sub_23824D36C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23824D4FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23824D68C(void *a1, uint64_t a2, void *a3, void *a4, char a5, const void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = v14;
  *(v15 + 48) = a1;
  v16 = sub_2382791A0();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23827F370;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23827F380;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = a1;
  sub_23824DDA8(0, 0, v13, &unk_23827F390, v18);
}

uint64_t sub_23824D82C(uint64_t a1, void *a2, char a3, void *aBlock, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = sub_2382790D0();
  v5[5] = v9;
  v10 = a2;
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_23824D920;

  return sub_23824CA60(v9, v10, a3);
}

uint64_t sub_23824D920()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

id sub_23824DAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ClientEndpointService(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_23824DB44(uint64_t a1)
{
  v2 = qword_27DEF7948;
  v3 = sub_238278BC0();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

uint64_t sub_23824DBD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_238247660;

  return v6();
}

uint64_t sub_23824DCC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2382470D0;

  return v7();
}

uint64_t sub_23824DDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_238250030(a3, v23 - v10);
  v12 = sub_2382791A0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23824C65C(v11, &qword_27DEF78B0, &qword_23827F360);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_238279190();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_238279160();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_238279010() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_23824C65C(a3, &qword_27DEF78B0, &qword_23827F360);

    return v21;
  }

LABEL_8:
  sub_23824C65C(a3, &qword_27DEF78B0, &qword_23827F360);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_23824E094(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23824E18C;

  return v6(a1);
}

uint64_t sub_23824E18C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23824E2AC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_23824E308(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_23824E308(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23824E3D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23824FBCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23824E3D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23824E4E0(a5, a6);
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
    result = sub_238279400();
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

void *sub_23824E4E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_23824E52C(a1, a2);
  sub_23824E65C(&unk_284B000D0);
  return v3;
}

void *sub_23824E52C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23824E748(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_238279400();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_238279060();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23824E748(v10, 0);
        result = sub_238279390();
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

uint64_t sub_23824E65C(uint64_t result)
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

  result = sub_23824E7BC(result, v11, 1, v3);
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

void *sub_23824E748(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF79D0, &qword_23827F350);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23824E7BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF79D0, &qword_23827F350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **sub_23824E8B0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_23824E8D0(uint64_t a1, char a2)
{
  *(v3 + 268) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_238278BC0();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  v5 = sub_238278CB0();
  *(v3 + 112) = v5;
  *(v3 + 120) = *(v5 - 8);
  *(v3 + 128) = swift_task_alloc();
  v6 = sub_238278F70();
  *(v3 + 136) = v6;
  *(v3 + 144) = *(v6 - 8);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  sub_238278F40();
  *(v3 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF79D8, &qword_23827F358);
  *(v3 + 176) = swift_task_alloc();
  v7 = sub_238278EE0();
  *(v3 + 184) = v7;
  *(v3 + 192) = *(v7 - 8);
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23824EB18, 0, 0);
}

uint64_t sub_23824EB18()
{
  v70 = v0;
  v1 = *(*(v0 + 72) + 16);
  *(v0 + 208) = v1;
  if (v1)
  {
    *(v0 + 264) = *MEMORY[0x277D076A8];
    *(v0 + 216) = 0;
    v2 = *(v0 + 72);
    v3 = *(v2 + 32);
    *(v0 + 224) = v3;
    v4 = *(v2 + 40);
    *(v0 + 232) = v4;
    *(v0 + 56) = v3;
    *(v0 + 64) = v4;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_23824FC28(v3, v4);
    sub_23824FC28(v3, v4);
    sub_238278F30();
    sub_23824FC7C(&unk_27DEF79E0, MEMORY[0x277D07488], MEMORY[0x277D07480]);
    sub_238278F50();
    *(v0 + 240) = 0;
    v30 = *(v0 + 264);
    v32 = *(v0 + 192);
    v31 = *(v0 + 200);
    v34 = *(v0 + 176);
    v33 = *(v0 + 184);
    v36 = *(v0 + 120);
    v35 = *(v0 + 128);
    v37 = *(v0 + 112);
    v67 = *(v0 + 80);
    (*(v32 + 56))(v34, 0, 1, v33);
    (*(v32 + 32))(v31, v34, v33);
    (*(v36 + 104))(v35, v30, v37);
    sub_238278CA0();
    (*(v36 + 8))(v35, v37);
    v38 = v67;
    v39 = sub_238278F60();
    v40 = sub_2382792A0();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 160);
    v43 = *(v0 + 136);
    v44 = *(v0 + 144);
    if (v41)
    {
      v68 = *(v0 + 160);
      v46 = *(v0 + 96);
      v45 = *(v0 + 104);
      v48 = *(v0 + 80);
      v47 = *(v0 + 88);
      v49 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v69[0] = v63;
      *v49 = 136315138;
      v65 = v43;
      v50 = qword_27DEF7948;
      v51 = sub_238278BC0();
      v61 = v40;
      v52 = v48;
      (*(*(v51 - 8) + 16))(v45, v48 + v50, v51);
      sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v53 = sub_238279570();
      v55 = v54;

      (*(v46 + 8))(v45, v47);
      v56 = sub_23824E308(v53, v55, v69);

      *(v49 + 4) = v56;
      _os_log_impl(&dword_238215000, v39, v61, "[ClientEndpointService] Received Data for session %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x2383EDB00](v63, -1, -1);
      MEMORY[0x2383EDB00](v49, -1, -1);

      (*(v44 + 8))(v68, v65);
    }

    else
    {

      (*(v44 + 8))(v42, v43);
    }

    v57 = *(*(v0 + 80) + qword_27DF03110);
    *(v0 + 248) = v57;
    v58 = sub_23824F254;
LABEL_15:
    v59 = v58;

    return MEMORY[0x2822009F8](v59, v57, 0);
  }

  if (*(v0 + 268))
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 112);
    v8 = *(v0 + 80);
    (*(v6 + 104))(v5, *MEMORY[0x277D076A8], v7);
    sub_238278CA0();
    (*(v6 + 8))(v5, v7);
    v9 = v8;
    v10 = sub_238278F60();
    v11 = sub_238279290();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    if (v12)
    {
      v66 = *(v0 + 152);
      v17 = *(v0 + 96);
      v16 = *(v0 + 104);
      v19 = *(v0 + 80);
      v18 = *(v0 + 88);
      v20 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69[0] = v62;
      *v20 = 136315138;
      v64 = v15;
      v21 = qword_27DEF7948;
      v22 = sub_238278BC0();
      v60 = v11;
      v23 = v19;
      (*(*(v22 - 8) + 16))(v16, v19 + v21, v22);
      sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_238279570();
      v26 = v25;

      (*(v17 + 8))(v16, v18);
      v27 = sub_23824E308(v24, v26, v69);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_238215000, v10, v60, "[ClientEndpointService] Finished Receiving Data for session %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x2383EDB00](v62, -1, -1);
      MEMORY[0x2383EDB00](v20, -1, -1);

      (*(v14 + 8))(v66, v64);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v57 = *(*(v0 + 80) + qword_27DF03110);
    *(v0 + 256) = v57;
    v58 = sub_23824FB0C;
    goto LABEL_15;
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_23824F254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_238251520(*(v4 + 200), a2, a3, a4);

  return MEMORY[0x2822009F8](sub_23824F2C8, 0, 0);
}

uint64_t sub_23824F2C8()
{
  v81 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_23824FCC4(*(v0 + 224), *(v0 + 232));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 216) + 1;
  if (v4 != *(v0 + 208))
  {
    v5 = *(v0 + 240);
    *(v0 + 216) = v4;
    v6 = *(v0 + 72) + 16 * v4;
    v7 = *(v6 + 32);
    *(v0 + 224) = v7;
    v8 = *(v6 + 40);
    *(v0 + 232) = v8;
    *(v0 + 56) = v7;
    *(v0 + 64) = v8;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    sub_23824FC28(v7, v8);
    sub_23824FC28(v7, v8);
    sub_238278F30();
    sub_23824FC7C(&unk_27DEF79E0, MEMORY[0x277D07488], MEMORY[0x277D07480]);
    sub_238278F50();
    *(v0 + 240) = v5;
    if (!v5)
    {
LABEL_11:
      v41 = *(v0 + 264);
      v43 = *(v0 + 192);
      v42 = *(v0 + 200);
      v45 = *(v0 + 176);
      v44 = *(v0 + 184);
      v47 = *(v0 + 120);
      v46 = *(v0 + 128);
      v48 = *(v0 + 112);
      v78 = *(v0 + 80);
      (*(v43 + 56))(v45, 0, 1, v44);
      (*(v43 + 32))(v42, v45, v44);
      (*(v47 + 104))(v46, v41, v48);
      sub_238278CA0();
      (*(v47 + 8))(v46, v48);
      v49 = v78;
      v50 = sub_238278F60();
      v51 = sub_2382792A0();
      v52 = os_log_type_enabled(v50, v51);
      v53 = *(v0 + 160);
      v54 = *(v0 + 136);
      v55 = *(v0 + 144);
      if (v52)
      {
        v79 = *(v0 + 160);
        v57 = *(v0 + 96);
        v56 = *(v0 + 104);
        v59 = *(v0 + 80);
        v58 = *(v0 + 88);
        v60 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v80[0] = v74;
        *v60 = 136315138;
        v76 = v54;
        v61 = qword_27DEF7948;
        v62 = sub_238278BC0();
        v72 = v51;
        v63 = v59;
        (*(*(v62 - 8) + 16))(v56, v59 + v61, v62);
        sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v64 = sub_238279570();
        v66 = v65;

        (*(v57 + 8))(v56, v58);
        v67 = sub_23824E308(v64, v66, v80);

        *(v60 + 4) = v67;
        _os_log_impl(&dword_238215000, v50, v72, "[ClientEndpointService] Received Data for session %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        MEMORY[0x2383EDB00](v74, -1, -1);
        MEMORY[0x2383EDB00](v60, -1, -1);

        (*(v55 + 8))(v79, v76);
      }

      else
      {

        (*(v55 + 8))(v53, v54);
      }

      v68 = *(*(v0 + 80) + qword_27DF03110);
      *(v0 + 248) = v68;
      v69 = sub_23824F254;
LABEL_17:
      v70 = v69;

      return MEMORY[0x2822009F8](v70, v68, 0);
    }

    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = *(v0 + 176);

    sub_23824FCC4(v7, v8);
    (*(v10 + 56))(v11, 1, 1, v9);
    sub_23824C65C(v11, &qword_27DEF79D8, &qword_23827F358);
    v12 = *(v0 + 216) + 1;
    if (v12 != *(v0 + 208))
    {
      *(v0 + 216) = v12;
      v13 = *(v0 + 72) + 16 * v12;
      v14 = *(v13 + 32);
      *(v0 + 224) = v14;
      v15 = *(v13 + 40);
      *(v0 + 232) = v15;
      *(v0 + 56) = v14;
      *(v0 + 64) = v15;
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      sub_23824FC28(v14, v15);
      sub_23824FC28(v14, v15);
      sub_238278F30();
      sub_238278F50();
      *(v0 + 240) = 0;
      goto LABEL_11;
    }
  }

  if (*(v0 + 268))
  {
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    v19 = *(v0 + 80);
    (*(v17 + 104))(v16, *MEMORY[0x277D076A8], v18);
    sub_238278CA0();
    (*(v17 + 8))(v16, v18);
    v20 = v19;
    v21 = sub_238278F60();
    v22 = sub_238279290();
    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v26 = *(v0 + 136);
    if (v23)
    {
      v77 = *(v0 + 152);
      v28 = *(v0 + 96);
      v27 = *(v0 + 104);
      v30 = *(v0 + 80);
      v29 = *(v0 + 88);
      v31 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v80[0] = v73;
      *v31 = 136315138;
      v75 = v26;
      v32 = qword_27DEF7948;
      v33 = sub_238278BC0();
      v71 = v22;
      v34 = v30;
      (*(*(v33 - 8) + 16))(v27, v30 + v32, v33);
      sub_23824FC7C(&qword_27DEF78D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_238279570();
      v37 = v36;

      (*(v28 + 8))(v27, v29);
      v38 = sub_23824E308(v35, v37, v80);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_238215000, v21, v71, "[ClientEndpointService] Finished Receiving Data for session %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x2383EDB00](v73, -1, -1);
      MEMORY[0x2383EDB00](v31, -1, -1);

      (*(v25 + 8))(v77, v75);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    v68 = *(*(v0 + 80) + qword_27DF03110);
    *(v0 + 256) = v68;
    v69 = sub_23824FB0C;
    goto LABEL_17;
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_23824FB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2382519A4(a1, a2, a3, a4);

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_23824FBCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23824FC28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23824FC7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23824FCC4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23824FD48()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23824FD98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2382470D0;

  return sub_23824D82C(v2, v3, v4, v6, v5);
}

uint64_t sub_23824FE60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_238247660;

  return sub_23824DBD8(v2, v3, v4);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23824FF64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238247660;

  return sub_23824DCC0(a1, v4, v5, v6);
}

uint64_t sub_238250030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2382500A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2382500D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238247660;

  return sub_23824E094(a1, v4);
}

uint64_t sub_238250190(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2382470D0;

  return sub_23824E094(a1, v4);
}

uint64_t sub_238250298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_238278CB0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_238278F70();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382503B4, 0, 0);
}

uint64_t sub_2382503B4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 104))(v1, *MEMORY[0x277D076A8], v3);
  sub_238278CA0();
  (*(v2 + 8))(v1, v3);
  v4 = sub_238278F60();
  v5 = sub_2382792B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_238215000, v4, v5, "[ClientEndpointServiceDelegate] Server closed the connection", v6, 2u);
    MEMORY[0x2383EDB00](v6, -1, -1);
  }

  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  (*(v8 + 8))(v7, v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + qword_27DEF79F0);

    v13 = sub_23824E8C0();
    v0[12] = v13;

    return MEMORY[0x2822009F8](sub_238251448, v13, 0);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_2382505A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_238250030(a3, v25 - v10);
  v12 = sub_2382791A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238246914(v11);
  }

  else
  {
    sub_238279190();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_238279160();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_238279010() + 32;
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

      sub_238246914(a3);

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

  sub_238246914(a3);
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

uint64_t sub_238250868(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2382508AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_2382791A0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a1;

  sub_2382505A8(0, 0, v11, a5, v13);
}

uint64_t sub_2382509C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_238278CB0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_238278F70();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238250ADC, 0, 0);
}

uint64_t sub_238250ADC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 104))(v1, *MEMORY[0x277D076A8], v3);
  sub_238278CA0();
  (*(v2 + 8))(v1, v3);
  v4 = sub_238278F60();
  v5 = sub_2382792B0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_238215000, v4, v5, "[ClientEndpointServiceDelegate] Server closed the connection", v6, 2u);
    MEMORY[0x2383EDB00](v6, -1, -1);
  }

  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  (*(v8 + 8))(v7, v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + qword_27DEF79F0);

    v13 = sub_23824E8C0();
    v0[12] = v13;

    return MEMORY[0x2822009F8](sub_238250CD0, v13, 0);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_238250CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_238251FC0(a1, a2, a3, a4);

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_238250D4C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_238250E84(v7);

  return v9 & 1;
}

id sub_238250DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ClientEndpointServiceDelegate(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_238250E84(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v8 = *((v4 & v3) + 0x50);
  v7[2] = v8;
  v9 = *((v4 & v3) + 0x58);
  v7[3] = v9;
  v7[4] = v6;
  v19 = sub_23825119C;
  v20 = v7;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_238250868;
  v18 = &block_descriptor_1;
  v10 = _Block_copy(&v15);

  [a1 setInvalidationHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v11;
  v19 = sub_2382511F0;
  v20 = v12;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_238250868;
  v18 = &block_descriptor_11;
  v13 = _Block_copy(&v15);

  [a1 setInterruptionHandler_];
  _Block_release(v13);
  [a1 resume];
  return 1;
}

uint64_t sub_23825112C()
{
  MEMORY[0x2383EDBA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238251164()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238251230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2382470D0;

  return sub_2382509C0(a1, v4, v5, v6);
}

uint64_t sub_2382512F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_13Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238251370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238247660;

  return sub_238250298(a1, v4, v5, v6);
}

uint64_t sub_238251450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ElectricityInsightRecord(255, *(a1 + 80), *(a1 + 88), a4);
  sub_2382791E0();
  result = sub_238279300();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_238251520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  type metadata accessor for ElectricityInsightRecord(255, *(*v5 + 80), *(*v5 + 88), a4);
  v8 = sub_2382791E0();
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - v9;
  v34 = sub_238279300();
  v10 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v32 - v11;
  v40 = sub_2382791B0();
  v13 = sub_238279300();
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v37 = &v32 - v14;
  v36 = swift_checkMetadataState();
  v15 = *(v36 - 8);
  v16 = MEMORY[0x28223BE20](v36);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = *(v5 + *(v7 + 112));

  v21(a1);
  v22 = v8;
  v23 = v34;
  v24 = v35;

  v25 = *(*v5 + 104);
  swift_beginAccess();
  (*(v10 + 16))(v12, v5 + v25, v23);
  v26 = (v10 + 8);
  if ((*(v24 + 48))(v12, 1, v22))
  {
    (*(v15 + 8))(v20, v36);
    (*v26)(v12, v23);
    v27 = 1;
    v28 = v37;
  }

  else
  {
    v29 = v33;
    (*(v24 + 16))(v33, v12, v22);
    (*v26)(v12, v23);
    v30 = v36;
    (*(v15 + 16))(v18, v20, v36);
    v28 = v37;
    sub_2382791C0();
    (*(v24 + 8))(v29, v22);
    (*(v15 + 8))(v20, v30);
    v27 = 0;
  }

  (*(*(v40 - 8) + 56))(v28, v27, 1);
  return (*(v38 + 8))(v28, v39);
}

uint64_t sub_2382519A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for ElectricityInsightRecord(255, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = sub_2382791E0();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - v7;
  v56 = v8;
  v9 = sub_238279300();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - v10;
  v11 = sub_238278CB0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_238278F70();
  v15 = *(v60 - 8);
  v16 = MEMORY[0x28223BE20](v60);
  v51 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v50 = &v48 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - v20;
  v22 = *MEMORY[0x277D076A8];
  v57 = *(v12 + 104);
  v57(v14, v22, v11);
  sub_238278CA0();
  v58 = *(v12 + 8);
  v58(v14, v11);
  v23 = sub_238278F60();
  v24 = sub_2382792A0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v59 = v15;
    v26 = v25;
    *v25 = 0;
    _os_log_impl(&dword_238215000, v23, v24, "[DataStream] Marking stream finished", v25, 2u);
    v27 = v26;
    v15 = v59;
    MEMORY[0x2383EDB00](v27, -1, -1);
  }

  v28 = *(v15 + 8);
  v59 = v15 + 8;
  v28(v21, v60);
  v29 = *(*v5 + 120);
  v30 = *(v5 + v29);
  v57(v14, v22, v11);
  if (v30)
  {
    v31 = v51;
    sub_238278CA0();
    v58(v14, v11);
    v32 = sub_238278F60();
    v33 = sub_2382792A0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_238215000, v32, v33, "[DataStream] Stream already finished", v34, 2u);
      MEMORY[0x2383EDB00](v34, -1, -1);
    }

    return (v28)(v31, v60);
  }

  else
  {
    v36 = v50;
    sub_238278CA0();
    v58(v14, v11);
    v37 = sub_238278F60();
    v38 = sub_2382792A0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_238215000, v37, v38, "[DataStream] Marking continuation as finished", v39, 2u);
      MEMORY[0x2383EDB00](v39, -1, -1);
    }

    v28(v36, v60);
    *(v5 + v29) = 1;
    v40 = *(*v5 + 104);
    swift_beginAccess();
    v42 = v52;
    v41 = v53;
    v43 = v5 + v40;
    v44 = v54;
    (*(v53 + 16))(v52, v43, v54);
    v46 = v55;
    v45 = v56;
    if ((*(v55 + 48))(v42, 1, v56))
    {
      return (*(v41 + 8))(v42, v44);
    }

    else
    {
      v47 = v49;
      (*(v46 + 16))(v49, v42, v45);
      (*(v41 + 8))(v42, v44);
      sub_2382791D0();
      return (*(v46 + 8))(v47, v45);
    }
  }
}

uint64_t sub_238251FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ElectricityInsightRecord(255, *(*v4 + 80), *(*v4 + 88), a4);
  v5 = sub_2382791E0();
  v65 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v57 = &v56 - v6;
  v7 = sub_238279300();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v56 - v10;
  v11 = sub_238278CB0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_238278F70();
  v68 = *(v66 - 8);
  v15 = MEMORY[0x28223BE20](v66);
  v59 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v56 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  v21 = *MEMORY[0x277D076A8];
  v22 = *(v12 + 104);
  v22(v14, v21, v11);
  sub_238278CA0();
  v62 = *(v12 + 8);
  v62(v14, v11);
  v23 = sub_238278F60();
  v24 = sub_238279290();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v56 = v5;
    v26 = v25;
    *v25 = 0;
    _os_log_impl(&dword_238215000, v23, v24, "[DataStream] Server invalidated connection", v25, 2u);
    v27 = v26;
    v5 = v56;
    MEMORY[0x2383EDB00](v27, -1, -1);
  }

  v28 = *(v68 + 8);
  v68 += 8;
  v28(v20, v66);
  v29 = *(*v67 + 120);
  v30 = *(v67 + v29);
  v22(v14, v21, v11);
  if (v30)
  {
    v31 = v59;
    sub_238278CA0();
    v62(v14, v11);
    v32 = sub_238278F60();
    v33 = sub_2382792A0();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v64;
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_238215000, v32, v33, "[DataStream] Stream already finished", v36, 2u);
      MEMORY[0x2383EDB00](v36, -1, -1);
    }

    v28(v31, v66);
    v37 = v67;
    v38 = *(*v67 + 104);
    swift_beginAccess();
    v39 = v63;
    v40 = v61;
    (*(v63 + 16))(v61, v37 + v38, v35);
    v41 = v65;
    if ((*(v65 + 48))(v40, 1, v5))
    {
      return (*(v39 + 8))(v40, v35);
    }

    else
    {
      v54 = v57;
      (*(v41 + 16))(v57, v40, v5);
      (*(v39 + 8))(v40, v35);
      sub_2382791D0();
      return (*(v41 + 8))(v54, v5);
    }
  }

  else
  {
    v43 = v58;
    sub_238278CA0();
    v62(v14, v11);
    v44 = sub_238278F60();
    v45 = sub_2382792A0();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v64;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_238215000, v44, v45, "[DataStream] Marking continuation as finished", v48, 2u);
      MEMORY[0x2383EDB00](v48, -1, -1);
    }

    v28(v43, v66);
    v49 = v67;
    v50 = *(*v67 + 104);
    swift_beginAccess();
    v51 = v63;
    v52 = v60;
    (*(v63 + 16))(v60, v49 + v50, v47);
    v53 = v65;
    if ((*(v65 + 48))(v52, 1, v5))
    {
      result = (*(v51 + 8))(v52, v47);
    }

    else
    {
      v55 = v57;
      (*(v53 + 16))(v57, v52, v5);
      (*(v51 + 8))(v52, v47);
      sub_2382791D0();
      result = (*(v53 + 8))(v55, v5);
    }

    *(v67 + v29) = 1;
  }

  return result;
}

uint64_t sub_238252710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 104);
  type metadata accessor for ElectricityInsightRecord(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_2382791E0();
  v6 = sub_238279300();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  swift_defaultActor_destroy();
  return v4;
}

uint64_t sub_2382527E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_238252710(a1, a2, a3, a4);

  return MEMORY[0x282200960](v4);
}

uint64_t sub_238252848(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_238252894@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C0, &qword_23827EFA0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v38 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v38 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v19 = *(*(v18 - 8) + 56);
  v40 = v17;
  v19(v17, 1, 1, v18);
  sub_238278E50();
  if (v20 >= 0.0)
  {
    sub_238278E50();
    sub_238278D10();
    v21 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v22 = v40;
    sub_2382544AC(v40);
    v19(v15, 0, 1, v18);
    sub_2382472A0(v15, v22, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v19(v41, 1, 1, v18);
  sub_238278E70();
  if (v23 >= 0.0)
  {
    sub_238278E70();
    sub_238278D10();
    v24 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v25 = v41;
    sub_2382544AC(v41);
    v19(v15, 0, 1, v18);
    sub_2382472A0(v15, v25, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v19(v10, 1, 1, v18);
  sub_238278E40();
  if (v26 >= 0.0)
  {
    sub_238278E40();
    sub_238278D10();
    v27 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    sub_2382544AC(v10);
    v19(v15, 0, 1, v18);
    sub_2382472A0(v15, v10, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v39 = v10;
  v19(v7, 1, 1, v18);
  sub_238278E60();
  if (v28 >= 0.0)
  {
    sub_238278E60();
    sub_238278D10();
    v30 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v31 = sub_238278E80();
    (*(*(v31 - 8) + 8))(a1, v31);
    sub_2382544AC(v7);
    v19(v15, 0, 1, v18);
    sub_2382472A0(v15, v7, &qword_27DEF76C0, &qword_23827EFA0);
  }

  else
  {
    v29 = sub_238278E80();
    (*(*(v29 - 8) + 8))(a1, v29);
  }

  v32 = v7;
  v19(a2, 1, 1, v18);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD0, &qword_23827F4F0);
  v34 = v33[9];
  v19(&a2[v34], 1, 1, v18);
  v35 = v33[10];
  v19(&a2[v35], 1, 1, v18);
  v36 = v33[11];
  v19(&a2[v36], 1, 1, v18);
  sub_23823D8D4(v40, a2, &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v41, &a2[v34], &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v39, &a2[v35], &qword_27DEF76C0, &qword_23827EFA0);
  return sub_23823D8D4(v32, &a2[v36], &qword_27DEF76C0, &qword_23827EFA0);
}

uint64_t sub_238252E8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C0, &qword_23827EFA0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v49 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v54 = &v49 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v49 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v23 = *(*(v22 - 8) + 56);
  v51 = v21;
  v23(v21, 1, 1, v22);
  sub_238278E00();
  if (v24 >= 0.0)
  {
    sub_238278E00();
    sub_238278D10();
    v25 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v26 = v51;
    sub_2382544AC(v51);
    v23(v19, 0, 1, v22);
    sub_2382472A0(v19, v26, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v23(v53, 1, 1, v22);
  sub_238278DD0();
  if (v27 >= 0.0)
  {
    sub_238278DD0();
    sub_238278D10();
    v28 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v29 = v53;
    sub_2382544AC(v53);
    v23(v19, 0, 1, v22);
    sub_2382472A0(v19, v29, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v23(v54, 1, 1, v22);
  sub_238278DE0();
  if (v30 >= 0.0)
  {
    sub_238278DE0();
    sub_238278D10();
    v31 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v32 = v54;
    sub_2382544AC(v54);
    v23(v19, 0, 1, v22);
    sub_2382472A0(v19, v32, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v23(v12, 1, 1, v22);
  sub_238278DC0();
  if (v33 >= 0.0)
  {
    sub_238278DC0();
    sub_238278D10();
    v34 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    sub_2382544AC(v12);
    v23(v19, 0, 1, v22);
    sub_2382472A0(v19, v12, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v23(v9, 1, 1, v22);
  sub_238278DF0();
  if (v35 >= 0.0)
  {
    sub_238278DF0();
    sub_238278D10();
    v36 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    sub_2382544AC(v9);
    v23(v19, 0, 1, v22);
    sub_2382472A0(v19, v9, &qword_27DEF76C0, &qword_23827EFA0);
  }

  v37 = v52;
  v23(v52, 1, 1, v22);
  sub_238278E10();
  v49 = v12;
  v50 = v9;
  if (v38 >= 0.0)
  {
    sub_238278E10();
    sub_238278D10();
    v40 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v41 = sub_238278E20();
    (*(*(v41 - 8) + 8))(a1, v41);
    sub_2382544AC(v37);
    v23(v19, 0, 1, v22);
    sub_2382472A0(v19, v37, &qword_27DEF76C0, &qword_23827EFA0);
  }

  else
  {
    v39 = sub_238278E20();
    (*(*(v39 - 8) + 8))(a1, v39);
  }

  v23(a2, 1, 1, v22);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD8, qword_23827F4F8);
  v43 = v42[9];
  v23(&a2[v43], 1, 1, v22);
  v44 = v42[10];
  v23(&a2[v44], 1, 1, v22);
  v45 = v42[11];
  v23(&a2[v45], 1, 1, v22);
  v46 = v42[12];
  v23(&a2[v46], 1, 1, v22);
  v47 = v42[13];
  v23(&a2[v47], 1, 1, v22);
  sub_23823D8D4(v51, a2, &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v53, &a2[v43], &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v54, &a2[v44], &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v49, &a2[v45], &qword_27DEF76C0, &qword_23827EFA0);
  sub_23823D8D4(v50, &a2[v46], &qword_27DEF76C0, &qword_23827EFA0);
  return sub_23823D8D4(v52, &a2[v47], &qword_27DEF76C0, &qword_23827EFA0);
}

uint64_t sub_2382536CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_238278DA0();
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C8, &unk_23827EFA8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v112 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v111 = &v94 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v110 = &v94 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v102 = &v94 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v101 = &v94 - v15;
  MEMORY[0x28223BE20](v14);
  v100 = &v94 - v16;
  v17 = sub_238278E20();
  MEMORY[0x28223BE20](v17 - 8);
  v95 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BC0, &qword_23827F4E0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v109 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v114 = &v94 - v22;
  v23 = sub_238278E80();
  MEMORY[0x28223BE20](v23 - 8);
  v94 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BC8, &qword_23827F4E8);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v108 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v106 = &v94 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C0, &qword_23827EFA0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v107 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v113 = &v94 - v32;
  v33 = sub_238278B70();
  v34 = MEMORY[0x28223BE20](v33 - 8);
  MEMORY[0x28223BE20](v34);
  v35 = sub_238278F20();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v94 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v94 - v40;
  v42 = sub_238278AA0();
  v98 = *(v42 - 8);
  v99 = v42;
  MEMORY[0x28223BE20](v42);
  v44 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278EB0();
  sub_238278F10();
  v45 = *(v36 + 8);
  v45(v41, v35);
  sub_238278EA0();
  sub_238278F10();
  v45(v39, v35);
  v97 = v44;
  sub_238278A80();
  sub_238278D40();
  if (((~v46 & 0x7FF0000000000000) != 0 || (v46 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278D40(), v47 >= 0.0))
  {
    sub_238278D40();
    sub_238278D10();
    v49 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v51 = v101;
  v50 = v102;
  v52 = v100;
  v53 = v96;
  v54 = v106;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v56 = 1;
  (*(*(v55 - 8) + 56))(v113, v48, 1, v55);
  sub_238278DB0();
  if (((~v57 & 0x7FF0000000000000) != 0 || (v57 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DB0(), v58 >= 0.0))
  {
    sub_238278DB0();
    v59 = sub_238279650();
    v100 = v60;
    v101 = v59;
    v56 = 0;
  }

  else
  {
    v100 = 0;
    v101 = 0;
  }

  v61 = sub_238278E90();
  LODWORD(v102) = v56;
  if (v61)
  {
    v62 = v94;
    sub_238278E30();
    sub_238252894(v62, v54);
    v63 = 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD0, &qword_23827F4F0);
  v65 = 1;
  (*(*(v64 - 8) + 56))(v54, v63, 1, v64);
  if (sub_238278D50())
  {
    v66 = v95;
    sub_238278EC0();
    sub_238252E8C(v66, v114);
    v65 = 0;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD8, qword_23827F4F8);
  v68 = 1;
  (*(*(v67 - 8) + 56))(v114, v65, 1, v67);
  if (sub_238278D60())
  {
    sub_238278ED0();
    sub_238278D80();
    (*(v104 + 8))(v53, v105);
    v69 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v68 = 0;
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v71 = 1;
  (*(*(v70 - 8) + 56))(v52, v68, 1, v70);
  if (sub_238278D60())
  {
    sub_238278ED0();
    sub_238278D90();
    (*(v104 + 8))(v53, v105);
    v72 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v71 = 0;
  }

  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v74 = 1;
  (*(*(v73 - 8) + 56))(v51, v71, 1, v73);
  if (sub_238278D60())
  {
    sub_238278ED0();
    sub_238278D70();
    (*(v104 + 8))(v53, v105);
    v75 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v74 = 0;
  }

  v76 = sub_238278EE0();
  (*(*(v76 - 8) + 8))(a1, v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  (*(*(v77 - 8) + 56))(v50, v74, 1, v77);
  sub_2382472A0(v113, v107, &qword_27DEF76C0, &qword_23827EFA0);
  sub_2382472A0(v106, v108, &qword_27DEF7BC8, &qword_23827F4E8);
  sub_2382472A0(v114, v109, &qword_27DEF7BC0, &qword_23827F4E0);
  sub_2382472A0(v52, v110, &qword_27DEF76C8, &unk_23827EFA8);
  sub_2382472A0(v51, v111, &qword_27DEF76C8, &unk_23827EFA8);
  sub_2382472A0(v50, v112, &qword_27DEF76C8, &unk_23827EFA8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7890, &qword_23827F108);
  v79 = v78[9];
  v114 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v81 = v103;
  (*(*(v80 - 8) + 56))(&v79[v103], 1, 1, v80);
  v82 = v78[11];
  v83 = v81 + v78[10];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD0, &qword_23827F4F0);
  (*(*(v84 - 8) + 56))(v81 + v82, 1, 1, v84);
  v85 = v78[12];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7BD8, qword_23827F4F8);
  (*(*(v86 - 8) + 56))(v81 + v85, 1, 1, v86);
  v87 = v78[13];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v89 = *(*(v88 - 8) + 56);
  v89(v81 + v87, 1, 1, v88);
  v90 = v78[14];
  v89(v81 + v90, 1, 1, v88);
  v91 = v78[15];
  v89(v81 + v91, 1, 1, v88);
  (*(v98 + 32))(v81, v97, v99);
  sub_23823D8D4(v107, &v114[v81], &qword_27DEF76C0, &qword_23827EFA0);
  v92 = v100;
  *v83 = v101;
  *(v83 + 8) = v92;
  *(v83 + 16) = v102;
  sub_23823D8D4(v108, v81 + v82, &qword_27DEF7BC8, &qword_23827F4E8);
  sub_23823D8D4(v109, v81 + v85, &qword_27DEF7BC0, &qword_23827F4E0);
  sub_23823D8D4(v110, v81 + v87, &qword_27DEF76C8, &unk_23827EFA8);
  sub_23823D8D4(v111, v81 + v90, &qword_27DEF76C8, &unk_23827EFA8);
  return sub_23823D8D4(v112, v81 + v91, &qword_27DEF76C8, &unk_23827EFA8);
}

uint64_t sub_2382544AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C0, &qword_23827EFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238254514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_238278E50();
  if (((~v4 & 0x7FF0000000000000) != 0 || (v4 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E50(), v5 >= 0.0))
  {
    sub_238278E50();
    v7 = sub_238279650();
    v30 = v8;
    v31 = v7;
    v6 = 0;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v6 = 1;
  }

  sub_238278E70();
  if (((~v9 & 0x7FF0000000000000) != 0 || (v9 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E70(), v10 >= 0.0))
  {
    sub_238278E70();
    v12 = sub_238279650();
    v28 = v13;
    v29 = v12;
    v11 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v11 = 1;
  }

  sub_238278E40();
  if (((~v14 & 0x7FF0000000000000) != 0 || (v14 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E40(), v15 >= 0.0))
  {
    sub_238278E40();
    v16 = sub_238279650();
    v17 = v19;
    v18 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  sub_238278E60();
  if (((~v20 & 0x7FF0000000000000) != 0 || (v20 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E60(), v21 >= 0.0))
  {
    sub_238278E60();
    v22 = sub_238279650();
    v23 = v25;
    v24 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 1;
  }

  v26 = sub_238278E80();
  result = (*(*(v26 - 8) + 8))(a1, v26);
  *a2 = v31;
  *(a2 + 8) = v30;
  *(a2 + 16) = v6;
  *(a2 + 24) = v29;
  *(a2 + 32) = v28;
  *(a2 + 40) = v11;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v18;
  *(a2 + 72) = v22;
  *(a2 + 80) = v23;
  *(a2 + 88) = v24;
  return result;
}

uint64_t sub_23825470C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_238278E00();
  if (((~v4 & 0x7FF0000000000000) != 0 || (v4 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E00(), v5 >= 0.0))
  {
    sub_238278E00();
    v6 = sub_238279650();
    v43 = v7;
    v44 = v6;
    v42 = 0;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v42 = 1;
  }

  sub_238278DD0();
  if (((~v8 & 0x7FF0000000000000) != 0 || (v8 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DD0(), v9 >= 0.0))
  {
    sub_238278DD0();
    v10 = sub_238279650();
    v40 = v11;
    v41 = v10;
    v39 = 0;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v39 = 1;
  }

  sub_238278DE0();
  if (((~v12 & 0x7FF0000000000000) != 0 || (v12 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DE0(), v13 >= 0.0))
  {
    sub_238278DE0();
    v14 = sub_238279650();
    v37 = v15;
    v38 = v14;
    v36 = 0;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v36 = 1;
  }

  sub_238278DC0();
  if (((~v16 & 0x7FF0000000000000) != 0 || (v16 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DC0(), v17 >= 0.0))
  {
    sub_238278DC0();
    v35 = sub_238279650();
    v18 = v20;
    v19 = 0;
  }

  else
  {
    v35 = 0;
    v18 = 0;
    v19 = 1;
  }

  sub_238278DF0();
  if (((~v21 & 0x7FF0000000000000) != 0 || (v21 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DF0(), v22 >= 0.0))
  {
    sub_238278DF0();
    v23 = sub_238279650();
    v24 = v26;
    v25 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  sub_238278E10();
  if (((~v27 & 0x7FF0000000000000) != 0 || (v27 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278E10(), v28 >= 0.0))
  {
    sub_238278E10();
    v29 = sub_238279650();
    v30 = v32;
    v31 = 0;
  }

  else
  {
    v29 = 0;
    v30 = 0;
    v31 = 1;
  }

  v33 = sub_238278E20();
  result = (*(*(v33 - 8) + 8))(a1, v33);
  *a2 = v44;
  *(a2 + 8) = v43;
  *(a2 + 16) = v42;
  *(a2 + 24) = v41;
  *(a2 + 32) = v40;
  *(a2 + 40) = v39;
  *(a2 + 48) = v38;
  *(a2 + 56) = v37;
  *(a2 + 64) = v36;
  *(a2 + 72) = v35;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
  *(a2 + 96) = v23;
  *(a2 + 104) = v24;
  *(a2 + 112) = v25;
  *(a2 + 120) = v29;
  *(a2 + 128) = v30;
  *(a2 + 136) = v31;
  return result;
}

uint64_t sub_2382549CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v104 = sub_238278DA0();
  v113 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v112 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C8, &unk_23827EFA8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v117 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v116 = &v94 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v115 = &v94 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v110 = &v94 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v109 = &v94 - v14;
  MEMORY[0x28223BE20](v13);
  v106 = &v94 - v15;
  v16 = sub_238278E20();
  MEMORY[0x28223BE20](v16 - 8);
  v95 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_238278E80();
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF76C0, &qword_23827EFA0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v114 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v118 = &v94 - v23;
  v24 = sub_238278B70();
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v103 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = sub_238278F20();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v94 - v32;
  v34 = sub_238278AA0();
  v107 = *(v34 - 8);
  v108 = v34;
  MEMORY[0x28223BE20](v34);
  v36 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278EB0();
  sub_238278F10();
  v37 = *(v28 + 8);
  v37(v33, v27);
  sub_238278EA0();
  sub_238278F10();
  v38 = v27;
  v39 = a1;
  v37(v31, v38);
  v105 = v36;
  sub_238278A80();
  sub_238278D40();
  if (((~v40 & 0x7FF0000000000000) != 0 || (v40 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278D40(), v41 >= 0.0))
  {
    sub_238278D40();
    sub_238278D10();
    v43 = [objc_opt_self() kilowattHours];
    sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
    sub_2382789C0();
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v45 = v109;
  v44 = v110;
  v46 = v106;
  v47 = v104;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v49 = 1;
  (*(*(v48 - 8) + 56))(v118, v42, 1, v48);
  sub_238278DB0();
  if (((~v50 & 0x7FF0000000000000) != 0 || (v50 & 0xFFFFFFFFFFFFFLL) == 0) && (sub_238278DB0(), v51 >= 0.0))
  {
    sub_238278DB0();
    v109 = sub_238279650();
    v106 = v52;
    v49 = 0;
  }

  else
  {
    v109 = 0;
    v106 = 0;
  }

  if (sub_238278E90())
  {
    v53 = v102;
    sub_238278E30();
    sub_238254514(v53, &v128);
    v99 = 0;
    v100 = v128;
    v96 = v131;
    v97 = v130;
    v98 = v129;
    v103 = *(&v132 + 1);
    v104 = v132;
    v102 = v133;
    v101 = BYTE8(v133);
  }

  else
  {
    v103 = 0;
    v104 = 0;
    v102 = 0;
    v101 = 0;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 1;
    v96 = 0u;
  }

  if (sub_238278D50())
  {
    v54 = v95;
    sub_238278EC0();
    sub_23825470C(v54, &v120);
    sub_2382556B8(&v120);
    v134 = v126;
    v135[0] = v127[0];
    *(v135 + 10) = *(v127 + 10);
    v130 = v122;
    v131 = v123;
    v132 = v124;
    v133 = v125;
    v128 = v120;
    v129 = v121;
  }

  else
  {
    sub_238255694(&v128);
  }

  v55 = sub_238278D60();
  LODWORD(v110) = v49;
  if (v55)
  {
    v56 = v112;
    sub_238278ED0();
    sub_238278D80();
    (*(v113 + 8))(v56, v47);
    v57 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v60 = 1;
  (*(*(v59 - 8) + 56))(v46, v58, 1, v59);
  if (sub_238278D60())
  {
    v61 = v112;
    sub_238278ED0();
    sub_238278D90();
    (*(v113 + 8))(v61, v47);
    v62 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v60 = 0;
  }

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  (*(*(v63 - 8) + 56))(v45, v60, 1, v63);
  v64 = 1;
  if (sub_238278D60())
  {
    v65 = v112;
    sub_238278ED0();
    sub_238278D70();
    (*(v113 + 8))(v65, v47);
    v66 = [objc_opt_self() celsius];
    sub_23821EB10(0, &unk_27DEF7BE0, 0x277CCAE48);
    sub_2382789C0();
    v64 = 0;
  }

  v67 = sub_238278EE0();
  (*(*(v67 - 8) + 8))(v39, v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  (*(*(v68 - 8) + 56))(v44, v64, 1, v68);
  sub_2382472A0(v118, v114, &qword_27DEF76C0, &qword_23827EFA0);
  sub_2382472A0(v46, v115, &qword_27DEF76C8, &unk_23827EFA8);
  sub_2382472A0(v45, v116, &qword_27DEF76C8, &unk_23827EFA8);
  sub_2382472A0(v44, v117, &qword_27DEF76C8, &unk_23827EFA8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78A0, &qword_23827F128);
  v70 = v69[9];
  v118 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v72 = v111;
  (*(*(v71 - 8) + 56))(v111 + v70, 1, 1, v71);
  v73 = v72 + v69[10];
  v74 = v72 + v69[11];
  v119 = 1;
  *v74 = 0u;
  *(v74 + 16) = 0u;
  *(v74 + 32) = 0u;
  *(v74 + 48) = 0u;
  *(v74 + 64) = 0u;
  *(v74 + 73) = 0u;
  *(v74 + 89) = 1;
  v75 = (v72 + v69[12]);
  sub_238255694(&v120);
  v76 = v127[0];
  v75[6] = v126;
  v75[7] = v76;
  *(v75 + 122) = *(v127 + 10);
  v77 = v123;
  v75[2] = v122;
  v75[3] = v77;
  v78 = v125;
  v75[4] = v124;
  v75[5] = v78;
  v79 = v121;
  *v75 = v120;
  v75[1] = v79;
  v80 = v69[13];
  v113 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEF76D0, &qword_23827EFB8);
  v82 = *(*(v81 - 8) + 56);
  v82(v72 + v80, 1, 1, v81);
  v83 = v69[14];
  v82(v72 + v83, 1, 1, v81);
  v84 = v69[15];
  v82(v72 + v84, 1, 1, v81);
  (*(v107 + 32))(v72, v105, v108);
  sub_23823D8D4(v114, v72 + v118, &qword_27DEF76C0, &qword_23827EFA0);
  v85 = v106;
  *v73 = v109;
  *(v73 + 8) = v85;
  *(v73 + 16) = v110;
  v86 = v98;
  *v74 = v100;
  *(v74 + 16) = v86;
  v87 = v96;
  *(v74 + 32) = v97;
  *(v74 + 48) = v87;
  v88 = v103;
  *(v74 + 64) = v104;
  *(v74 + 72) = v88;
  *(v74 + 80) = v102;
  *(v74 + 88) = v101;
  *(v74 + 89) = v99;
  v89 = v131;
  v75[2] = v130;
  v75[3] = v89;
  *(v75 + 122) = *(v135 + 10);
  v90 = v135[0];
  v75[6] = v134;
  v75[7] = v90;
  v91 = v133;
  v75[4] = v132;
  v75[5] = v91;
  v92 = v129;
  *v75 = v128;
  v75[1] = v92;
  sub_23823D8D4(v115, v72 + v113, &qword_27DEF76C8, &unk_23827EFA8);
  sub_23823D8D4(v116, v72 + v83, &qword_27DEF76C8, &unk_23827EFA8);
  return sub_23823D8D4(v117, v72 + v84, &qword_27DEF76C8, &unk_23827EFA8);
}

double sub_238255694(uint64_t a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 137) = 1;
  return result;
}

uint64_t static InsightQueryRequest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27DEF7BF0 = a1;
  return result;
}

void sub_238255834(void *a1)
{
  v3 = MEMORY[0x2383ED5D0]();
  sub_238255890(a1, v1);

  objc_autoreleasePoolPop(v3);
}

void sub_238255890(void *a1, uint64_t a2)
{
  v4 = sub_238278A50();
  v5 = sub_238278FF0();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_238279310();
  v7 = sub_238278FF0();
  [a1 encodeObject:v6 forKey:v7];

  v8 = sub_238279310();
  v9 = sub_238278FF0();
  [a1 encodeObject:v8 forKey:v9];

  v10 = sub_238279310();
  v11 = sub_238278FF0();
  [a1 encodeObject:v10 forKey:v11];

  v12 = sub_238279310();
  v13 = sub_238278FF0();
  [a1 encodeObject:v12 forKey:v13];

  v14 = sub_238278B90();
  v15 = sub_238278FF0();
  [a1 encodeObject:v14 forKey:v15];

  if (*(a2 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID + 8))
  {
    v16 = sub_238278FF0();
    v17 = sub_238278FF0();
    [a1 encodeObject:v16 forKey:v17];
  }

  if ((*(a2 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType + 8) & 1) == 0)
  {
    v18 = sub_238279310();
    v19 = sub_238278FF0();
    [a1 encodeObject:v18 forKey:v19];
  }
}

void InsightQueryRequest.init(coder:)(void *a1)
{
  v2 = sub_238278BC0();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v68 = &v54 - v6;
  v7 = sub_238278AA0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  sub_23821EB10(0, &unk_27DEF7BF8, 0x277CCA970);
  v14 = sub_2382792E0();
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = v14;
  sub_238278A60();

  v16 = sub_238278FF0();
  v17 = [a1 decodeIntegerForKey_];

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = sub_238278FF0();
  v19 = [a1 decodeIntegerForKey_];

  v64 = v19;
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v63 = v17;
  v20 = sub_238278FF0();
  v21 = [a1 decodeIntegerForKey_];

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = sub_238278FF0();
  v23 = [a1 decodeIntegerForKey_];

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v61 = v23;
  v62 = v21;
  v67 = v13;
  v24 = v8;
  sub_23821EB10(0, &qword_2814F0850, 0x277CCAD78);
  v25 = sub_2382792E0();
  if (v25)
  {
    v26 = v25;
    v27 = v5;
    v28 = v7;
    sub_238278BA0();

    sub_23821EB10(0, &qword_2814F0858, 0x277CCACA8);
    v29 = sub_2382792E0();
    if (v29)
    {
      v30 = v29;
      v31 = sub_238279000();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = sub_238278FF0();
    v35 = [a1 decodeIntegerForKey_];

    if ((v35 & 0x8000000000000000) == 0)
    {
      v59 = v35;
      v60 = a1;
      v36 = v24;
      v56 = v31;
      v57 = v33;
      v37 = *(v24 + 16);
      v38 = v11;
      v58 = v11;
      v54 = v28;
      v37(v11, v67, v28);
      v40 = v65;
      v39 = v66;
      v41 = *(v65 + 16);
      v55 = v27;
      v41(v27, v68, v66);
      Request = type metadata accessor for InsightQueryRequest(0);
      v43 = objc_allocWithZone(Request);
      v44 = v38;
      v45 = v54;
      v37(&v43[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range], v44, v54);
      v46 = v64;
      *&v43[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = v63;
      *&v43[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = v46;
      v47 = v61;
      *&v43[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = v62;
      *&v43[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = v47;
      v48 = v55;
      v41(&v43[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID], v55, v39);
      v49 = &v43[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
      v50 = v57;
      *v49 = v56;
      v49[1] = v50;
      v51 = &v43[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
      *v51 = v59;
      v51[8] = 0;
      v69.receiver = v43;
      v69.super_class = Request;
      objc_msgSendSuper2(&v69, sel_init);

      v52 = *(v40 + 8);
      v52(v48, v39);
      v53 = *(v36 + 8);
      v53(v58, v45);
      v52(v68, v39);
      v53(v67, v45);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return;
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_23825625C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t InsightQueryRequest.deviceID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID);

  return v1;
}

id InsightQueryRequest.__allocating_init(range:options:type:granularity:flowDirection:venueID:deviceID:deviceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = v10;
  v17 = objc_allocWithZone(v11);
  v18 = OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range;
  v19 = sub_238278AA0();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v17[v18], a1, v19);
  *&v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = a2;
  *&v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = a3;
  *&v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = a4;
  *&v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = a5;
  v21 = OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID;
  v22 = sub_238278BC0();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v17[v21], a6, v22);
  v24 = &v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
  *v24 = a7;
  *(v24 + 1) = a8;
  v25 = &v17[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
  *v25 = a9;
  v25[8] = a10 & 1;
  v31.receiver = v17;
  v31.super_class = v11;
  v26 = objc_msgSendSuper2(&v31, sel_init);
  (*(v23 + 8))(a6, v22);
  (*(v20 + 8))(a1, v19);
  return v26;
}

uint64_t type metadata accessor for InsightQueryRequest(uint64_t a1)
{
  result = qword_27DEF7C08;
  if (!qword_27DEF7C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id InsightQueryRequest.init(range:options:type:granularity:flowDirection:venueID:deviceID:deviceType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v17 = OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_range;
  v18 = sub_238278AA0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[v17], a1, v18);
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_options] = a2;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_type] = a3;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_granularity] = a4;
  *&v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_flowDirection] = a5;
  v20 = OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_venueID;
  v21 = sub_238278BC0();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v10[v20], a6, v21);
  v23 = &v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceID];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &v10[OBJC_IVAR____TtC9EnergyKit19InsightQueryRequest_deviceType];
  *v24 = a9;
  v24[8] = a10 & 1;
  v29.receiver = v10;
  v29.super_class = type metadata accessor for InsightQueryRequest(0);
  v25 = objc_msgSendSuper2(&v29, sel_init);
  (*(v22 + 8))(a6, v21);
  (*(v19 + 8))(a1, v18);
  return v25;
}

id InsightQueryRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InsightQueryRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsightQueryRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238256824@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27DEF7BF0;
  return result;
}

uint64_t sub_238256870(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27DEF7BF0 = v1;
  return result;
}

uint64_t sub_238256980(uint64_t a1)
{
  result = sub_238278AA0();
  if (v2 <= 0x3F)
  {
    result = sub_238278BC0();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_238256AFC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_238278BC0();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_238278CB0();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = sub_238278F70();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238256CBC, v1, 0);
}

uint64_t sub_238256CBC()
{
  v104 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v95 = *MEMORY[0x277D076A8];
  v93 = *(v1 + 104);
  v93(v2);
  sub_238278CA0();
  v98 = *(v1 + 8);
  v98(v2, v3);
  v91 = *(v6 + 16);
  v91(v4, v7, v5);
  v8 = sub_238278F60();
  v9 = sub_238279290();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[24];
  v12 = v0[19];
  v13 = v0[20];
  v14 = v0[15];
  v16 = v0[10];
  v15 = v0[11];
  if (v10)
  {
    v86 = v9;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v103[0] = v18;
    *v17 = 136315138;
    sub_238257B10();
    v87 = v12;
    v89 = v11;
    v19 = sub_238279570();
    v21 = v20;
    v92 = *(v15 + 8);
    v92(v14, v16);
    v22 = sub_23824E308(v19, v21, v103);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_238215000, v8, v86, "[InsightStreamManager] Attempt to start Session ID: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2383EDB00](v18, -1, -1);
    MEMORY[0x2383EDB00](v17, -1, -1);

    v23 = *(v13 + 8);
    v23(v89, v87);
  }

  else
  {

    v92 = *(v15 + 8);
    v92(v14, v16);
    v23 = *(v13 + 8);
    v23(v11, v12);
  }

  v24 = v0[9];
  v25 = *(v24 + 112);
  (v93)(v0[18], v95, v0[16]);
  v26 = v0[18];
  v27 = v0[16];
  v28 = v0[10];
  v29 = v0[8];
  if (v25)
  {
    v30 = v0[13];
    sub_238278CA0();
    v98(v26, v27);
    v91(v30, v29, v28);
    v31 = sub_238278F60();
    v32 = sub_2382792B0();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[22];
    v35 = v0[19];
    v36 = v0[13];
    v37 = v0[10];
    if (v33)
    {
      v85 = v32;
      v38 = swift_slowAlloc();
      v90 = v34;
      v39 = swift_slowAlloc();
      v103[0] = v39;
      *v38 = 136315138;
      sub_238257B10();
      v88 = v35;
      v40 = v23;
      v41 = sub_238279570();
      v43 = v42;
      v92(v36, v37);
      v44 = v41;
      v23 = v40;
      v45 = sub_23824E308(v44, v43, v103);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_238215000, v31, v85, "[InsightStreamManager] Failed to start Session ID: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x2383EDB00](v39, -1, -1);
      MEMORY[0x2383EDB00](v38, -1, -1);

      v40(v90, v88);
    }

    else
    {

      v92(v36, v37);
      v23(v34, v35);
    }

    v60 = v0[18];
    v61 = v0[16];
    (v93)(v60, v95, v61);
    sub_238278CA0();
    v98(v60, v61);

    v62 = sub_238278F60();
    v63 = sub_2382792B0();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v0[21];
    v66 = v0[19];
    if (v64)
    {
      v97 = v0[19];
      v100 = v0[21];
      v67 = v0[12];
      v68 = v0[9];
      v69 = v0[10];
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v103[0] = v71;
      *v70 = 136315138;
      v102 = v23;
      v72 = OBJC_IVAR____TtC9EnergyKit20InsightStreamManager_session;
      swift_beginAccess();
      v91(v67, v68 + v72, v69);
      sub_238257B10();
      v73 = sub_238279570();
      v75 = v74;
      v92(v67, v69);
      v76 = sub_23824E308(v73, v75, v103);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_238215000, v62, v63, "[InsightStreamManager] Session in progress %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x2383EDB00](v71, -1, -1);
      MEMORY[0x2383EDB00](v70, -1, -1);

      v102(v100, v97);
    }

    else
    {

      v23(v65, v66);
    }

    sub_238241158();
    swift_allocError();
    *v83 = 1;
    swift_willThrow();

    v82 = v0[1];
  }

  else
  {
    v96 = v24;
    v46 = v0[14];
    sub_238278CA0();
    v98(v26, v27);
    v91(v46, v29, v28);
    v47 = sub_238278F60();
    v48 = sub_238279290();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[23];
    v51 = v0[19];
    v52 = v0[14];
    v53 = v0[10];
    if (v49)
    {
      v99 = v0[19];
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v103[0] = v55;
      *v54 = 136315138;
      sub_238257B10();
      v101 = v23;
      v56 = sub_238279570();
      v94 = v50;
      v58 = v57;
      v92(v52, v53);
      v59 = sub_23824E308(v56, v58, v103);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_238215000, v47, v48, "[InsightStreamManager] Started Session ID: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x2383EDB00](v55, -1, -1);
      MEMORY[0x2383EDB00](v54, -1, -1);

      v101(v94, v99);
    }

    else
    {

      v92(v52, v53);
      v23(v50, v51);
    }

    v77 = v0[10];
    v78 = v0[11];
    v79 = v0[8];
    v80 = v0[9];
    v81 = OBJC_IVAR____TtC9EnergyKit20InsightStreamManager_session;
    swift_beginAccess();
    (*(v78 + 24))(v80 + v81, v79, v77);
    swift_endAccess();
    *(v96 + 112) = 1;

    v82 = v0[1];
  }

  return v82();
}

uint64_t sub_238257608()
{
  v1 = v0;
  v2 = sub_238278BC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238278CB0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238278F70();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D076A8], v5);
  sub_238278CA0();
  (*(v6 + 8))(v8, v5);

  v13 = sub_238278F60();
  v14 = sub_238279290();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v10;
    v31 = v1;
    v18 = v17;
    v32 = v17;
    *v16 = 136315138;
    v19 = OBJC_IVAR____TtC9EnergyKit20InsightStreamManager_session;
    swift_beginAccess();
    v20 = v31 + v19;
    v21 = v30;
    (*(v3 + 16))(v30, v20, v2);
    sub_238257B10();
    v22 = sub_238279570();
    v24 = v23;
    (*(v3 + 8))(v21, v2);
    v25 = sub_23824E308(v22, v24, &v32);

    *(v16 + 4) = v25;
    _os_log_impl(&dword_238215000, v13, v14, "[InsightStreamManager] Ending Session ID: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v26 = v18;
    v1 = v31;
    MEMORY[0x2383EDB00](v26, -1, -1);
    MEMORY[0x2383EDB00](v16, -1, -1);

    result = (*(v28 + 8))(v12, v29);
  }

  else
  {

    result = (*(v10 + 8))(v12, v9);
  }

  *(v1 + 112) = 0;
  return result;
}

uint64_t sub_2382579A0()
{
  v1 = OBJC_IVAR____TtC9EnergyKit20InsightStreamManager_session;
  v2 = sub_238278BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for InsightStreamManager(uint64_t a1)
{
  result = qword_27DEF7C88;
  if (!qword_27DEF7C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238257A6C(uint64_t a1)
{
  result = sub_238278BC0();
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

unint64_t sub_238257B10()
{
  result = qword_27DEF78D8;
  if (!qword_27DEF78D8)
  {
    sub_238278BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF78D8);
  }

  return result;
}

void sub_238257B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_238258B44;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238257DF0;
  aBlock[3] = &block_descriptor_2;
  v12 = _Block_copy(aBlock);

  tcc_server_message_request_authorization();
  _Block_release(v12);
}

uint64_t sub_238257D34(uint64_t a1, uint64_t a2)
{
  if (a2 || !a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
    return sub_238279180();
  }

  else
  {
    swift_unknownObjectRetain();
    tcc_authorization_record_get_authorization_right();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
    sub_238279180();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_238257DF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_238257EC0()
{
  if (*MEMORY[0x277D6C148])
  {
    v1 = *MEMORY[0x277D6C148];
    if (TCCAccessRestricted())
    {

      v2 = 1;
    }

    else
    {
      v3 = TCCAccessPreflight();

      if (v3 >= 3)
      {
        v2 = 2;
      }

      else
      {
        v2 = v3;
      }
    }

    v4 = *(v0 + 8);

    v4(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238257F90()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 16) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2382580E0;

  return sub_238264B34(v3);
}

uint64_t sub_2382580E0(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_238258238, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_238258238()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_2382582C8()
{
  v1 = tcc_service_singleton_for_name();
  v0[2] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = tcc_credential_singleton_for_self();
    v0[3] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = tcc_server_create();
      v0[4] = v5;
      if (v5)
      {
        v6 = v5;
        v7 = tcc_message_options_create();
        v0[5] = v7;
        if (v7)
        {
          v8 = v7;
          tcc_message_options_set_reply_handler_policy();
          tcc_message_options_set_request_usage_string_policy();
          tcc_message_options_set_prompt_string_type();
          v9 = swift_task_alloc();
          v0[6] = v9;
          v9[2] = v6;
          v9[3] = v8;
          v9[4] = v4;
          v9[5] = v2;
          v10 = swift_task_alloc();
          v0[7] = v10;
          *v10 = v0;
          v10[1] = sub_2382584A4;
          v11 = MEMORY[0x277D839B0];

          return MEMORY[0x2822007B8](v0 + 8, 0, 0, 0xD000000000000026, 0x80000002382813A0, sub_238258AA4, v9, v11);
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2382584A4()
{

  return MEMORY[0x2822009F8](sub_2382585BC, 0, 0);
}

uint64_t sub_2382585BC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_238258644()
{
  v1 = sub_238278D00();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238258700, 0, 0);
}

uint64_t sub_238258700()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x277D07398], v3);
  v4 = sub_238278CF0();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v6 = sub_238278FF0();
    v7 = [v5 initWithServiceName_];
    v0[5] = v7;

    v8 = [objc_opt_self() interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];

    [v7 resume];
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_2382588F4;

    return sub_238265058(v7);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2382588F4()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238258A38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_238258A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238258AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238258B44(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);

  return sub_238257D34(a1, a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238258BE8()
{
  type metadata accessor for ElectricityInsightOperations();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for InsightStreamManager(0);
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  result = sub_238278BB0();
  *(v0 + 112) = v1;
  qword_27DF03158 = v0;
  return result;
}

uint64_t sub_238258C78()
{
  v1 = v0[9];
  v0[6] = sub_238258E20;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2382602F0;
  v0[5] = &block_descriptor_3;
  v2 = _Block_copy(v0 + 2);
  v3 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  sub_238279320();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast())
  {
    v4 = v0[8];
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    sub_238241158();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_238258E20(void *a1)
{
  v2 = sub_238278CB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238278F70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D076A8], v2);
  sub_238278CA0();
  (*(v3 + 8))(v5, v2);
  v10 = a1;
  v11 = sub_238278F60();
  v12 = sub_2382792B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_238215000, v11, v12, "Failed to connect to server with error %@", v13, 0xCu);
    sub_2382598F4(v14);
    MEMORY[0x2383EDB00](v14, -1, -1);
    MEMORY[0x2383EDB00](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_238259078()
{
  v0 = sub_238278CB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238278F70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D076A8], v0);
  sub_238278CA0();
  (*(v1 + 8))(v3, v0);
  v8 = sub_238278F60();
  v9 = sub_238279290();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_238215000, v8, v9, "Insight generation completed", v10, 2u);
    MEMORY[0x2383EDB00](v10, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_238259268()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2382592E4()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 24) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  *(v0 + 49) = 0;

  return MEMORY[0x2822009F8](sub_2382593F0, 0, 0);
}

uint64_t sub_2382593F0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = v0 + 49;
  v2[4] = sub_2382596F4;
  v2[5] = 0;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_238259500;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 6, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_23825995C, v2, v4);
}

uint64_t sub_238259500()
{
  v1 = *v0;
  v2 = *(*v0 + 16);

  *(v1 + 50) = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23825963C, v2, 0);
}

uint64_t sub_23825963C()
{
  v1 = *(v0 + 24);
  if (*(v0 + 50) != 1)
  {
    sub_238241158();
    swift_allocError();
    *v3 = 4;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_2382596F4(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_2382599A0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_238260390;
  v8[3] = &block_descriptor_11_0;
  v7 = _Block_copy(v8);

  [v5 validateTCCAccessWithReply_];
  _Block_release(v7);
}

uint64_t sub_238259808(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = sub_238278EE0();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return a2(v6);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2382598F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA8, &qword_23827F6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238259968()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2382599B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_238278B90();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v12[4] = sub_23825B61C;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_238259AC0;
  v12[3] = &block_descriptor_30;
  v11 = _Block_copy(v12);

  [a1 gridIDWithVenue:v9 sandboxExtension:a5 reply:v11];
  _Block_release(v11);
}

uint64_t sub_238259AC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_238279000();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t sub_238259B58(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t))
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  a4(v7, sub_23825B420, v8);
}

void sub_238259BF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v12[4] = sub_23825B658;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_238259AC0;
  v12[3] = &block_descriptor_4;
  v11 = _Block_copy(v12);

  [a1 gridIDWithLocation:a4 sandboxExtension:a5 reply:v11];
  _Block_release(v11);
}

void sub_238259CF0(uint64_t a1, uint64_t a2, id a3, void (*a4)(uint64_t, uint64_t, void *))
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v6 = a2;
  v7 = a1;
  v8 = a3;
  sub_238273938(a3, &v12);
  v9 = v12;
  if (v12 == 9)
  {

    a1 = v7;
    a2 = v6;
LABEL_4:
    a4(a1, a2, 0);
    return;
  }

  sub_238241158();
  v10 = swift_allocError();
  *v11 = v9;
  a4(0, 0, v10);
}

uint64_t sub_238259E08(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_238278BC0();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v2[13] = *(v4 + 64);
  v2[14] = swift_task_alloc();
  v5 = sub_238278B10();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238259F2C, 0, 0);
}

uint64_t sub_238259F2C()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 144) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_23825A0F0;

  return sub_23825F914(v3);
}

uint64_t sub_23825A0F0()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_23825A204, 0, 0);
}

uint64_t sub_23825A204()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v0[4].receiver = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    receiver = v0[8].receiver;
    v4 = receiver[2];
    receiver += 2;
    v44 = v4;
    v5 = v1 + ((*(receiver + 64) + 32) & ~*(receiver + 64));
    v6 = *MEMORY[0x277D861C0];
    v42 = receiver[7];
    v39 = (receiver - 1);
    v40 = (receiver + 2);
    v7 = MEMORY[0x277D84F90];
    v41 = v0 + 4;
    v43 = *MEMORY[0x277D861C0];
    while (1)
    {
      v45 = v7;
      v44(v0[8].super_class, v5, v0[7].super_class);
      type metadata accessor for SandboxExtension.Context();
      v8 = swift_allocObject();
      v8[2] = j__sandbox_extension_consume;
      v8[3] = 0;
      v8[4] = j__sandbox_extension_release;
      v8[5] = 0;
      v8[6] = j__sandbox_extension_issue_file;
      v8[7] = 0;
      type metadata accessor for SandboxExtension(0);
      v9 = swift_allocObject();
      *(v9 + 40) = 0;
      *(v9 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v17 = v9;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v18 = sandbox_extension_issue_file();

      super_class = v0[8].super_class;
      v20 = v0[7].super_class;
      if (v18)
      {
        *(v17 + 3) = sub_238279050();
        *(v17 + 4) = v21;
        free(v18);
        (*v40)(&v17[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], super_class, v20);
        *(v17 + 2) = v8;

        MEMORY[0x2383ECFB0](v22);
        if (*((v41->receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41->receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2382790F0();
        }

        sub_238279120();

        v7 = v41->receiver;
      }

      else
      {

        (*v39)(super_class, v20);
        swift_deallocPartialClassInstance();
        v7 = v45;
      }

      v6 = v43;
      v5 += v42;
      if (!--v2)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_12:
    v24 = v0[6].super_class;
    v23 = v0[7].receiver;
    v25 = v0[5].super_class;
    v26 = v0[6].receiver;
    v27 = v0[4].super_class;
    v28 = v0[5].receiver;
    v29 = type metadata accessor for XPCSandboxExtensionContainer();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v7;
    v0[1].receiver = v30;
    v0[1].super_class = v29;
    v31 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[10].receiver = v31;
    v26[2](v23, v27, v25);
    v32 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v33 = swift_allocObject();
    v26[4]((v33 + v32), v23, v25);
    *(v33 + ((v24 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
    v34 = swift_allocObject();
    v0[10].super_class = v34;
    *(v34 + 16) = sub_23825B558;
    *(v34 + 24) = v33;
    v0[3].super_class = 0;
    v0[3].receiver = 0;
    v35 = v31;
    v36 = swift_task_alloc();
    v0[11].receiver = v36;
    v36[2] = v28;
    v36[3] = v0 + 3;
    v36[4] = sub_23825B654;
    v36[5] = v34;
    v37 = swift_task_alloc();
    v0[11].super_class = v37;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB0, &qword_23827F708);
    *v37 = v0;
    *(v37 + 1) = sub_23825A714;
    v14 = sub_23825B650;
    v9 = &v0[2];
    v13 = 0x8000000238281480;
    v10 = 0;
    v11 = 0;
    v12 = 0xD000000000000025;
    v15 = v36;
  }

  return MEMORY[0x2822008A0](v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_23825A714()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_23825A8C0;
  }

  else
  {

    *(v2 + 200) = *(v2 + 32);
    v3 = sub_23825A840;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23825A840()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);

  return v1(v2, v3);
}

uint64_t sub_23825A8C0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23825A954(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_238278B10();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23825AA14, 0, 0);
}

uint64_t sub_23825AA14()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 112) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_23825ABD8;

  return sub_23825F914(v3);
}

uint64_t sub_23825ABD8()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_23825ACEC, 0, 0);
}

uint64_t sub_23825ACEC()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v0[4].receiver = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    receiver = v0[6].receiver;
    v4 = receiver[2];
    receiver += 2;
    v41 = v4;
    v5 = v1 + ((*(receiver + 64) + 32) & ~*(receiver + 64));
    v6 = *MEMORY[0x277D861C0];
    v39 = receiver[7];
    v35 = (receiver - 1);
    v36 = (receiver + 2);
    v37 = v0 + 4;
    v38 = MEMORY[0x277D84F90];
    v40 = *MEMORY[0x277D861C0];
    v4(v0[6].super_class, v5, v0[5].super_class);
    while (1)
    {
      type metadata accessor for SandboxExtension.Context();
      v7 = swift_allocObject();
      v7[2] = j__sandbox_extension_consume;
      v7[3] = 0;
      v7[4] = j__sandbox_extension_release;
      v7[5] = 0;
      v7[6] = j__sandbox_extension_issue_file;
      v7[7] = 0;
      type metadata accessor for SandboxExtension(0);
      v8 = swift_allocObject();
      *(v8 + 40) = 0;
      *(v8 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v16 = v8;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v17 = sandbox_extension_issue_file();

      super_class = v0[6].super_class;
      v19 = v0[5].super_class;
      if (v17)
      {
        *(v16 + 3) = sub_238279050();
        *(v16 + 4) = v20;
        free(v17);
        (*v36)(&v16[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], super_class, v19);
        *(v16 + 2) = v7;

        MEMORY[0x2383ECFB0](v21);
        if (*((v37->receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37->receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2382790F0();
        }

        sub_238279120();

        v38 = v37->receiver;
      }

      else
      {

        (*v35)(super_class, v19);
        swift_deallocPartialClassInstance();
      }

      v6 = v40;
      v5 += v39;
      if (!--v2)
      {

        v22 = v38;
        goto LABEL_13;
      }

      v41(v0[6].super_class, v5, v0[5].super_class);
    }

    __break(1u);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
LABEL_13:
    v24 = v0[4].super_class;
    v23 = v0[5].receiver;
    v25 = type metadata accessor for XPCSandboxExtensionContainer();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v22;
    v0[1].receiver = v26;
    v0[1].super_class = v25;
    v27 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[8].receiver = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    *(v28 + 24) = v27;
    v29 = swift_allocObject();
    v0[8].super_class = v29;
    *(v29 + 16) = sub_23825B40C;
    *(v29 + 24) = v28;
    v0[3].super_class = 0;
    v0[3].receiver = 0;
    v30 = v24;
    v31 = v27;
    v32 = swift_task_alloc();
    v0[9].receiver = v32;
    v32[2] = v23;
    v32[3] = v0 + 3;
    v32[4] = sub_23825B414;
    v32[5] = v29;
    v33 = swift_task_alloc();
    v0[9].super_class = v33;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB0, &qword_23827F708);
    *v33 = v0;
    *(v33 + 1) = sub_23825B1A4;
    v13 = sub_23825B41C;
    v8 = &v0[2];
    v12 = 0x8000000238281480;
    v9 = 0;
    v10 = 0;
    v11 = 0xD000000000000025;
    v14 = v32;
  }

  return MEMORY[0x2822008A0](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_23825B1A4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_23825B344;
  }

  else
  {

    *(v2 + 168) = *(v2 + 32);
    v3 = sub_23825B2D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23825B2D0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);

  return v1(v2, v3);
}

uint64_t sub_23825B344()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23825B3CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23825B420(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v8[0] = v5;
  v8[1] = v6;
  return v4(v8, a3);
}

uint64_t sub_23825B46C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23825B4BC()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_23825B558(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_238278BC0() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2382599B8(a1, a2, a3, v3 + v8, v9);
}

void sub_23825B65C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  v10 = *a1;
  v11 = sub_238278B90();
  Container = type metadata accessor for XPCElectricityGuidanceQueryContainer();
  v13 = objc_allocWithZone(Container);
  v14 = &v13[OBJC_IVAR____TtC9EnergyKit36XPCElectricityGuidanceQueryContainer_value];
  *v14 = a5 & 1;
  v14[1] = HIBYTE(a5) & 1;
  v20.receiver = v13;
  v20.super_class = Container;
  v15 = objc_msgSendSuper2(&v20, sel_init);
  v16 = sub_238278FF0();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v19[4] = sub_23825BB60;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_23825BA78;
  v19[3] = &block_descriptor_5;
  v18 = _Block_copy(v19);

  [v10 electricityGuidanceWithVenue:v11 query:v15 gridID:v16 reply:v18];
  _Block_release(v18);
}

uint64_t sub_23825B7D8(uint64_t a1, void *a2, void (*a3)(_BYTE *, void *))
{
  v6 = type metadata accessor for ElectricityGuidance(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB8, &qword_23827F748);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22[-v14];
  if (a2)
  {
    v16 = a2;
    sub_238273938(a2, &v23);
    v17 = v23;
    if (v23 != 9)
    {
      (*(v7 + 56))(v15, 1, 1, v6);
      sub_238241158();
      v19 = swift_allocError();
      *v20 = v17;
      a3(v15, v19);

      goto LABEL_8;
    }
  }

  if (a1)
  {
    sub_23825BBE8(a1 + OBJC_IVAR____TtC9EnergyKit31XPCElectricityGuidanceContainer_value, v10);
    sub_23825BC4C(v10, v12);
    sub_23825BBE8(v12, v15);
    (*(v7 + 56))(v15, 0, 1, v6);
    a3(v15, 0);
    sub_23825BB80(v15);
    return sub_23825BCB0(v12);
  }

  (*(v7 + 56))(v15, 1, 1, v6);
  sub_238241158();
  v19 = swift_allocError();
  *v21 = 0;
  a3(v15, v19);
LABEL_8:

  return sub_23825BB80(v15);
}

void sub_23825BA78(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_23825BB28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23825BB80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CB8, &qword_23827F748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23825BBE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectricityGuidance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23825BC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectricityGuidance(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23825BCB0(uint64_t a1)
{
  v2 = type metadata accessor for ElectricityGuidance(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23825BD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v6 = sub_238278D00();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_238278CB0();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_238278F70();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CC0, &qword_23827F790);
  v4[19] = swift_task_alloc();
  v9 = type metadata accessor for ElectricHVACLoadEvent(0);
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = *(type metadata accessor for ElectricalLoadEvent(0) - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CC8, &qword_23827F798);
  v4[28] = swift_task_alloc();
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v4[29] = Event;
  v4[30] = *(Event - 8);
  v4[31] = swift_task_alloc();
  v11 = *(a3 - 8);
  v4[32] = v11;
  v4[33] = *(v11 + 64);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v12 = sub_238278B70();
  v4[38] = v12;
  v4[39] = *(v12 - 8);
  v4[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23825C114, 0, 0);
}

uint64_t sub_23825C114()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  sub_238278B60();
  v1 = swift_allocObject();
  v0[41] = v1;
  *(v1 + 16) = MEMORY[0x277D84F90];
  v71 = v1;
  if (swift_dynamicCastMetatype())
  {
    if (sub_238279130())
    {
      v2 = 0;
      v3 = v0[32];
      v67 = v0[33];
      v69 = v0[23];
      v72 = (v0[30] + 56);
      while (1)
      {
        v5 = sub_238279110();
        sub_2382790E0();
        if (v5)
        {
          v6 = (*(v3 + 16))(v0[37], v0[5] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2, v0[7]);
          v14 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_54;
          }
        }

        else
        {
          v6 = sub_2382793C0();
          if (v67 != 8)
          {
            goto LABEL_56;
          }

          v27 = v0[37];
          v28 = v0[7];
          v0[4] = v6;
          (*(v3 + 16))(v27, v0 + 4, v28);
          v6 = swift_unknownObjectRelease();
          v14 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        (*(v3 + 32))(v0[36], v0[37], v0[7]);
        v15 = swift_dynamicCast();
        v16 = *v72;
        if (v15)
        {
          v17 = v0[31];
          v18 = v0[28];
          v16(v18, 0, 1, v0[29]);
          sub_23825EEF8(v18, v17, type metadata accessor for ElectricVehicleLoadEvent);
          if (sub_238278B40())
          {
            v20 = v0[26];
            v19 = v0[27];
            sub_23821EC48(v0[6], v19);
            sub_23825EE94(v19, v20);
            v21 = *(v1 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v1 + 16) = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v21 = sub_238219354(0, v21[2] + 1, 1, v21);
              *(v1 + 16) = v21;
            }

            v24 = v21[2];
            v23 = v21[3];
            if (v24 >= v23 >> 1)
            {
              v21 = sub_238219354((v23 > 1), v24 + 1, 1, v21);
              *(v1 + 16) = v21;
            }

            v25 = v0[31];
            v26 = v0[26];
            sub_23825EF60(v0[27], type metadata accessor for ElectricalLoadEvent);
            sub_23825EF60(v25, type metadata accessor for ElectricVehicleLoadEvent);
            v21[2] = v24 + 1;
            sub_23825EEF8(v26, v21 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v24, type metadata accessor for ElectricalLoadEvent);
            v1 = v71;
            *(v71 + 16) = v21;
          }

          else
          {
            sub_23825EF60(v0[31], type metadata accessor for ElectricVehicleLoadEvent);
          }
        }

        else
        {
          v4 = v0[28];
          v16(v4, 1, 1, v0[29]);
          sub_23824C65C(v4, &qword_27DEF7CC8, &qword_23827F798);
        }

        ++v2;
        if (v14 == sub_238279130())
        {
          goto LABEL_41;
        }
      }
    }

    goto LABEL_41;
  }

  if (!swift_dynamicCastMetatype())
  {
    return sub_238279410();
  }

  if (sub_238279130())
  {
    v30 = 0;
    v31 = v0[32];
    v70 = v0[23];
    v73 = (v0[21] + 56);
    v68 = v0[33];
    do
    {
      v33 = sub_238279110();
      sub_2382790E0();
      if (v33)
      {
        v6 = (*(v31 + 16))(v0[35], v0[5] + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30, v0[7]);
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          return MEMORY[0x2822008A0](v6, v7, v8, v9, v10, v11, v12, v13);
        }
      }

      else
      {
        v6 = sub_2382793C0();
        if (v68 != 8)
        {
          goto LABEL_57;
        }

        v47 = v0[35];
        v48 = v0[7];
        v0[2] = v6;
        (*(v31 + 16))(v47, v0 + 2, v48);
        v6 = swift_unknownObjectRelease();
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_55;
        }
      }

      (*(v31 + 32))(v0[34], v0[35], v0[7]);
      v35 = swift_dynamicCast();
      v36 = *v73;
      if (v35)
      {
        v37 = v0[22];
        v38 = v0[19];
        v36(v38, 0, 1, v0[20]);
        sub_23825EEF8(v38, v37, type metadata accessor for ElectricHVACLoadEvent);
        if (sub_238278B40())
        {
          v40 = v0[24];
          v39 = v0[25];
          sub_23821F3EC(v0[6], v39);
          sub_23825EE94(v39, v40);
          v41 = *(v1 + 16);
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *(v1 + 16) = v41;
          if ((v42 & 1) == 0)
          {
            v41 = sub_238219354(0, v41[2] + 1, 1, v41);
            *(v1 + 16) = v41;
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            v41 = sub_238219354((v43 > 1), v44 + 1, 1, v41);
            *(v1 + 16) = v41;
          }

          v45 = v0[24];
          v46 = v0[22];
          sub_23825EF60(v0[25], type metadata accessor for ElectricalLoadEvent);
          sub_23825EF60(v46, type metadata accessor for ElectricHVACLoadEvent);
          v41[2] = v44 + 1;
          sub_23825EEF8(v45, v41 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v44, type metadata accessor for ElectricalLoadEvent);
          v1 = v71;
          *(v71 + 16) = v41;
        }

        else
        {
          sub_23825EF60(v0[22], type metadata accessor for ElectricHVACLoadEvent);
        }
      }

      else
      {
        v32 = v0[19];
        v36(v32, 1, 1, v0[20]);
        sub_23824C65C(v32, &qword_27DEF7CC0, &qword_23827F790);
      }

      ++v30;
    }

    while (v34 != sub_238279130());
  }

LABEL_41:
  if (*(*(v1 + 16) + 16))
  {
    v49 = v0[10];
    v50 = v0[11];
    v51 = v0[9];
    (*(v49 + 104))(v50, *MEMORY[0x277D07390], v51);
    v52 = sub_238278CF0();
    (*(v49 + 8))(v50, v51);
    if (v52)
    {
      v54 = v0[5];
      v53 = v0[6];
      v55 = swift_task_alloc();
      v0[42] = v55;
      *(v55 + 16) = *(v0 + 7);
      *(v55 + 32) = v54;
      *(v55 + 40) = v1;
      *(v55 + 48) = v53;
      v56 = swift_task_alloc();
      v0[43] = v56;
      *v56 = v0;
      v56[1] = sub_23825CC38;
      v13 = MEMORY[0x277D83B88];
      v11 = sub_23825EE84;
      v6 = (v0 + 3);
      v10 = 0x8000000238281670;
      v7 = 0;
      v8 = 0;
      v9 = 0xD000000000000021;
      v12 = v55;

      return MEMORY[0x2822008A0](v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v58 = v0[13];
    v57 = v0[14];
    v59 = v0[12];
    (*(v58 + 104))(v57, *MEMORY[0x277D076A8], v59);
    sub_238278CA0();
    (*(v58 + 8))(v57, v59);

    v60 = sub_238278F60();
    v61 = sub_238279290();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = sub_238279130();

      _os_log_impl(&dword_238215000, v60, v61, "[LoadEventOperations] Submitted 0 out of %ld load events", v62, 0xCu);
      MEMORY[0x2383EDB00](v62, -1, -1);
    }

    else
    {
    }

    v63 = v0[18];
    v64 = v0[15];
    v65 = v0[16];

    (*(v65 + 8))(v63, v64);
  }

  (*(v0[39] + 8))(v0[40], v0[38]);

  v66 = v0[1];

  return v66(0);
}

uint64_t sub_23825CC38()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_23825D00C;
  }

  else
  {
    v2 = sub_23825CD68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23825CD68()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  (*(v1 + 104))(v2, *MEMORY[0x277D076A8], v3);
  sub_238278CA0();
  (*(v1 + 8))(v2, v3);

  v5 = sub_238278F60();
  v6 = sub_238279290();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v4;
    *(v7 + 12) = 2048;
    *(v7 + 14) = sub_238279130();

    _os_log_impl(&dword_238215000, v5, v6, "[LoadEventOperations] Submitted %ld out of %ld load events", v7, 0x16u);
    MEMORY[0x2383EDB00](v7, -1, -1);
  }

  else
  {
  }

  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[15];

  (*(v8 + 8))(v9, v10);
  (*(v0[39] + 8))(v0[40], v0[38]);

  v11 = v0[1];

  return v11(v4);
}

uint64_t sub_23825D00C()
{
  (*(v0[39] + 8))(v0[40], v0[38]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23825D174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a3;
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  v25 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v26 = &v24 - v9;
  v11 = sub_238278BC0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF78B0, &qword_23827F360);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  v18 = sub_2382791A0();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v12 + 16))(v14, v27, v11);
  (*(v8 + 16))(v10, v28, v7);
  v19 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v20 = (v13 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v31;
  *(v21 + 4) = v30;
  *(v21 + 5) = a6;
  *(v21 + 6) = v29;
  *(v21 + 7) = v22;
  (*(v12 + 32))(&v21[v19], v14, v11);
  (*(v8 + 32))(&v21[v20], v26, v25);

  sub_2382505A8(0, 0, v17, &unk_23827F7B8, v21);
}

uint64_t sub_23825D454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = sub_238278BC0();
  v8[19] = v9;
  v10 = *(v9 - 8);
  v8[20] = v10;
  v8[21] = *(v10 + 64);
  v8[22] = swift_task_alloc();
  v11 = sub_238278CB0();
  v8[23] = v11;
  v8[24] = *(v11 - 8);
  v8[25] = swift_task_alloc();
  v12 = sub_238278F70();
  v8[26] = v12;
  v8[27] = *(v12 - 8);
  v8[28] = swift_task_alloc();
  v13 = sub_238278B10();
  v8[29] = v13;
  v8[30] = *(v13 - 8);
  v8[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23825D63C, 0, 0);
}

uint64_t sub_23825D63C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  v0[32] = v3;

  v0[33] = &unk_284B07C30;
  v4 = objc_opt_self();
  v0[34] = v4;
  v5 = [v4 interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_23825D794;

  return sub_23825F914(v3);
}

uint64_t sub_23825D794()
{
  v1 = *(*v0 + 256);

  return MEMORY[0x2822009F8](sub_23825D8A8, 0, 0);
}

uint64_t sub_23825D8A8()
{
  sub_238278CE0();
  v1 = sub_238278CD0();
  v0[9] = MEMORY[0x277D84F90];
  v2 = (v0 + 9);
  v3 = *(v1 + 16);
  v74 = v0;
  if (v3)
  {
    v4 = v0[30];
    v5 = *(v4 + 16);
    v4 += 16;
    v71 = v5;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v7 = *MEMORY[0x277D861C0];
    v68 = *(v4 + 56);
    v66 = (v4 - 8);
    v67 = (v4 + 16);
    receiver = MEMORY[0x277D84F90];
    v69 = *MEMORY[0x277D861C0];
    v70 = (v0 + 9);
    while (1)
    {
      v76 = receiver;
      v71(v0[31], v6, v0[29]);
      type metadata accessor for SandboxExtension.Context();
      v9 = swift_allocObject();
      v9[2] = j__sandbox_extension_consume;
      v9[3] = 0;
      v9[4] = j__sandbox_extension_release;
      v9[5] = 0;
      v9[6] = j__sandbox_extension_issue_file;
      v9[7] = 0;
      type metadata accessor for SandboxExtension(0);
      v10 = swift_allocObject();
      *(v10 + 40) = 0;
      *(v10 + 48) = 1;
      if (!v7)
      {
        break;
      }

      v18 = v10;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();
      v0 = v74;

      v19 = sandbox_extension_issue_file();

      v20 = v74[31];
      v21 = v74[29];
      if (v19)
      {
        *(v18 + 3) = sub_238279050();
        *(v18 + 4) = v22;
        free(v19);
        (*v67)(&v18[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], v20, v21);
        *(v18 + 2) = v9;

        v2 = v70;
        MEMORY[0x2383ECFB0](v23);
        if (*((v2->receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2->receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2382790F0();
        }

        sub_238279120();

        receiver = v70->receiver;
      }

      else
      {

        (*v66)(v20, v21);
        swift_deallocPartialClassInstance();
        v2 = v70;
        receiver = v76;
      }

      v7 = v69;
      v6 += v68;
      if (!--v3)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  receiver = MEMORY[0x277D84F90];
LABEL_12:
  v24 = type metadata accessor for XPCSandboxExtensionContainer();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = receiver;
  v74[5] = v25;
  v74[6] = v24;
  v26 = v74;
  v74[36] = objc_msgSendSuper2(v2 - 2, sel_init);
  v27 = sub_238279130();
  v74[37] = v27;
  if (v27 >= 1)
  {
    v28 = v74[24];
    swift_beginAccess();
    *(v74 + 96) = *MEMORY[0x277D076A8];
    v29 = *(v28 + 104);
    v74[38] = v29;
    v74[39] = 0;
    v31 = v74[24];
    v30 = v74[25];
    v32 = v74[23];
    v74[40] = 100;
    *(v74 + 388) = 0;
    v29(v30);
    sub_238278CA0();
    (*(v31 + 8))(v30, v32);

    v33 = sub_238278F60();
    v34 = sub_2382792A0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218240;
      *(v35 + 4) = 0;
      *(v35 + 12) = 2048;
      *(v35 + 14) = sub_238279130();

      _os_log_impl(&dword_238215000, v33, v34, "[LoadEventOperations] Submitting %ld out of %ld load events", v35, 0x16u);
      MEMORY[0x2383EDB00](v35, -1, -1);
    }

    else
    {
    }

    (*(v74[27] + 8))(v74[28], v74[26]);
    v39 = v74[37];
    if (v39 >= 100)
    {
      v40 = 100;
    }

    else
    {
      v40 = v74[37];
    }

    if (v39 < 0)
    {
      __break(1u);
    }

    else
    {
      v41 = *(v74[15] + 16);
      v42 = v41[2];
      if (v42 >= v40)
      {
        if (v42 == v40)
        {

          v43 = v41;
          goto LABEL_26;
        }

LABEL_31:
        if (v39)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6938, &qword_23827A490);
          v63 = *(type metadata accessor for ElectricalLoadEvent(0) - 8);
          v64 = *(v63 + 72);
          v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
          v43 = swift_allocObject();
          v10 = _swift_stdlib_malloc_size(v43);
          if (!v64)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
          }

          if (v10 - v65 == 0x8000000000000000 && v64 == -1)
          {
            goto LABEL_39;
          }

          v43[2] = v40;
          v43[3] = 2 * ((v10 - v65) / v64);
          swift_arrayInitWithCopy();
          v26 = v74;
        }

        else
        {
          v43 = MEMORY[0x277D84F90];
        }

LABEL_26:
        v75 = v26[36];
        v45 = v26[33];
        v44 = v26[34];
        v46 = v26[22];
        v47 = v26[19];
        v48 = v26[20];
        v72 = v26[16];
        v73 = v26[21];
        EventContainer = type metadata accessor for XPCElectricalLoadEventContainer();
        v50 = objc_allocWithZone(EventContainer);
        *&v50[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = v43;
        v26[7] = v50;
        v26[8] = EventContainer;
        v51 = objc_msgSendSuper2((v26 + 7), sel_init);
        v26[41] = v51;
        v52 = objc_allocWithZone(MEMORY[0x277CCAE80]);
        v53 = sub_238278FF0();
        v54 = [v52 initWithServiceName_];
        v26[42] = v54;

        v55 = [v44 interfaceWithProtocol_];
        [v54 setRemoteObjectInterface_];

        [v54 resume];
        (*(v48 + 16))(v46, v72, v47);
        v56 = (*(v48 + 80) + 24) & ~*(v48 + 80);
        v57 = swift_allocObject();
        *(v57 + 16) = v51;
        (*(v48 + 32))(v57 + v56, v46, v47);
        *(v57 + ((v73 + v56 + 7) & 0xFFFFFFFFFFFFFFF8)) = v75;
        v58 = swift_allocObject();
        v26[43] = v58;
        *(v58 + 16) = sub_23825F390;
        *(v58 + 24) = v57;
        v26[12] = 0;
        v59 = v51;
        v60 = v75;
        v61 = swift_task_alloc();
        v26[44] = v61;
        v61[2] = v54;
        v61[3] = v26 + 12;
        v61[4] = sub_23825F480;
        v61[5] = v58;
        v62 = swift_task_alloc();
        v26[45] = v62;
        *v62 = v26;
        v62[1] = sub_23825E1F8;
        v17 = MEMORY[0x277D83B88];
        v15 = sub_23825F488;
        v10 = (v26 + 11);
        v13 = 0xD000000000000025;
        v14 = 0x8000000238281480;
        v11 = 0;
        v12 = 0;
        v16 = v61;

        return MEMORY[0x2822008A0](v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v36 = v74[36];
  v74[10] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  sub_238279180();

  v37 = v74[1];

  return v37();
}

uint64_t sub_23825E1F8()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_23825E9C8;
  }

  else
  {

    *(v2 + 376) = *(v2 + 88);
    v3 = sub_23825E324;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23825E324()
{
  v3 = *(v1 + 376);
  v4 = *(v1 + 312);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v1 + 328);
  v6 = *(v1 + 336);
  v8 = *(v1 + 388);
  v9 = *(v1 + 320);
  v10 = *(v1 + 296);
  [v6 invalidate];

  if ((v8 & 1) == 0 && v9 < v10)
  {
    v2 = *(v1 + 320);
    v11 = *(v1 + 304);
    v12 = *(v1 + 384);
    v14 = *(v1 + 192);
    v13 = *(v1 + 200);
    v15 = *(v1 + 184);
    v16 = v2 + 100;
    v17 = __OFADD__(v2, 100);
    *(v1 + 312) = v5;
    *(v1 + 320) = v16;
    *(v1 + 388) = v17;
    v11(v13, v12, v15);
    sub_238278CA0();
    (*(v14 + 8))(v13, v15);

    v0 = sub_238278F60();
    v18 = sub_2382792A0();
    if (os_log_type_enabled(v0, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      *(v19 + 4) = v2;
      *(v19 + 12) = 2048;
      *(v19 + 14) = sub_238279130();

      _os_log_impl(&dword_238215000, v0, v18, "[LoadEventOperations] Submitting %ld out of %ld load events", v19, 0x16u);
      MEMORY[0x2383EDB00](v19, -1, -1);
    }

    else
    {
    }

    (*(*(v1 + 216) + 8))(*(v1 + 224), *(v1 + 208));
    v3 = 0x7FFFFFFFFFFFFF9BLL;
    if (v2 <= 0x7FFFFFFFFFFFFF9BLL)
    {
      v3 = *(v1 + 296);
      if (v3 >= v16)
      {
        v3 = v2 + 100;
      }

      v0 = v3 - v2;
      if (v3 >= v2)
      {
        v23 = *(*(v1 + 120) + 16);
        v24 = v23[2];
        if (v24 >= v2 && v24 >= v3)
        {
          if (v24 == v0)
          {

            v25 = v23;
            goto LABEL_21;
          }

LABEL_28:
          if (v3 == v2)
          {
            v25 = MEMORY[0x277D84F90];
            goto LABEL_21;
          }

          if (v0 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6938, &qword_23827A490);
            v54 = *(type metadata accessor for ElectricalLoadEvent(0) - 8);
            v55 = *(v54 + 72);
            v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
            v25 = swift_allocObject();
            v48 = _swift_stdlib_malloc_size(v25);
            if (v55)
            {
              if (v48 - v56 != 0x8000000000000000 || v55 != -1)
              {
                v25[2] = v0;
                v25[3] = 2 * ((v48 - v56) / v55);
LABEL_36:
                type metadata accessor for ElectricalLoadEvent(0);
                swift_arrayInitWithCopy();
LABEL_21:
                v26 = *(v1 + 264);
                v27 = *(v1 + 272);
                v28 = *(v1 + 176);
                v57 = *(v1 + 168);
                v58 = *(v1 + 288);
                v29 = *(v1 + 152);
                v30 = *(v1 + 160);
                v31 = *(v1 + 128);
                EventContainer = type metadata accessor for XPCElectricalLoadEventContainer();
                v33 = objc_allocWithZone(EventContainer);
                *&v33[OBJC_IVAR____TtC9EnergyKit31XPCElectricalLoadEventContainer_value] = v25;
                *(v1 + 56) = v33;
                *(v1 + 64) = EventContainer;
                v34 = objc_msgSendSuper2((v1 + 56), sel_init);
                *(v1 + 328) = v34;
                v35 = objc_allocWithZone(MEMORY[0x277CCAE80]);
                v36 = sub_238278FF0();
                v37 = [v35 initWithServiceName_];
                *(v1 + 336) = v37;

                v38 = [v27 interfaceWithProtocol_];
                [v37 setRemoteObjectInterface_];

                [v37 resume];
                (*(v30 + 16))(v28, v31, v29);
                v39 = (*(v30 + 80) + 24) & ~*(v30 + 80);
                v40 = swift_allocObject();
                *(v40 + 16) = v34;
                (*(v30 + 32))(v40 + v39, v28, v29);
                *(v40 + ((v57 + v39 + 7) & 0xFFFFFFFFFFFFFFF8)) = v58;
                v41 = swift_allocObject();
                *(v1 + 344) = v41;
                *(v41 + 16) = sub_23825F390;
                *(v41 + 24) = v40;
                *(v1 + 96) = 0;
                v42 = v34;
                v43 = v58;
                v44 = swift_task_alloc();
                *(v1 + 352) = v44;
                v44[2] = v37;
                v44[3] = v1 + 96;
                v44[4] = sub_23825F480;
                v44[5] = v41;
                v45 = swift_task_alloc();
                *(v1 + 360) = v45;
                *v45 = v1;
                v45[1] = sub_23825E1F8;
                v46 = MEMORY[0x277D83B88];
                v47 = sub_23825F488;
                v48 = v1 + 88;
                v49 = 0xD000000000000025;
                v50 = 0x8000000238281480;
                v51 = 0;
                v52 = 0;
                v53 = v44;

                return MEMORY[0x2822008A0](v48, v51, v52, v49, v50, v47, v53, v46);
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            return MEMORY[0x2822008A0](v48, v51, v52, v49, v50, v47, v53, v46);
          }

          v25 = MEMORY[0x277D84F90];
          goto LABEL_36;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = *(v1 + 288);
  *(v1 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  sub_238279180();

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_23825E9C8()
{
  v1 = v0[46];
  v3 = v0[41];
  v2 = v0[42];

  [v2 invalidate];
  v0[13] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  sub_238279170();

  v5 = v0[36];
  v0[10] = v0[39];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  sub_238279180();

  v6 = v0[1];

  return v6();
}

void sub_23825EB14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_238278B90();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v14[4] = sub_23825F4D4;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_23825ED14;
  v14[3] = &block_descriptor_6;
  v13 = _Block_copy(v14);

  [a1 submitLoadEventsWithEvents:a4 venue:v11 sandboxExtension:a6 reply:v13];
  _Block_release(v13);
}

void sub_23825EC2C(uint64_t a1, id a2, void (*a3)(uint64_t, void *))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v5 = a1;
  v6 = a2;
  sub_238273938(a2, &v10);
  v7 = v10;
  if (v10 == 9)
  {

    a1 = v5;
LABEL_4:
    a3(a1, 0);
    return;
  }

  sub_238241158();
  v8 = swift_allocError();
  *v9 = v7;
  a3(0, v8);
}

void sub_23825ED14(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_23825ED8C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(), uint64_t))
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  a4(v7, sub_23825F498, v8);
}

uint64_t sub_23825EE4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23825EE94(uint64_t a1, uint64_t a2)
{
  Event = type metadata accessor for ElectricalLoadEvent(0);
  (*(*(Event - 8) + 16))(a2, a1, Event);
  return a2;
}

uint64_t sub_23825EEF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23825EF60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23825EFC0()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_23825F12C(uint64_t a1)
{
  v3 = v2;
  v17 = v1[4];
  v5 = *(sub_238278BC0() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[6];
  v13 = v1[7];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2382470D0;

  return sub_23825D454(a1, v10, v11, v12, v13, v1 + v6, v1 + v9, v17);
}

uint64_t sub_23825F2B8()
{
  v1 = sub_238278BC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_23825F390(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_238278BC0() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23825EB14(a1, a2, a3, v9, v3 + v8, v10);
}

uint64_t sub_23825F448()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23825F498(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  v5 = 0;
  return v2(&v4);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23825F4FC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_2382602BC;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_238250868;
  v10[3] = &block_descriptor_14;
  v9 = _Block_copy(v10);

  [v7 setUpSandboxWithSandboxExtension:a4 reply:v9];
  _Block_release(v9);
}

uint64_t sub_23825F614(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = *(v7 + 16);
  v24 = a1;
  v21 = v10;
  v10(v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v20 = *(v7 + 32);
  v20(v12 + v11, v9, v6);
  aBlock[4] = sub_2382600AC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_7;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  v15 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v25)
  {
    v27 = v25;
    v21(v9, v24, v6);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v20(v16 + v11, v9, v6);
    v17 = v14;
    v23(&v27, sub_238260214, v16);
    swift_unknownObjectRelease();
  }

  else
  {
    [v14 invalidate];
    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23825F914(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_238278B10();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23825F9D4, 0, 0);
}

uint64_t sub_23825F9D4()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  sub_238278CE0();
  v1 = sub_238278CD0();
  sub_238278CC0();
  v0[2].receiver = MEMORY[0x277D84F90];
  v2 = *(v1 + 16);
  if (v2)
  {
    super_class = v0[3].super_class;
    v4 = *(super_class + 2);
    super_class = (super_class + 16);
    v36 = v4;
    v5 = v1 + ((*(super_class + 64) + 32) & ~*(super_class + 64));
    v6 = *MEMORY[0x277D861C0];
    v34 = *(super_class + 7);
    v31 = (super_class - 8);
    v32 = (super_class + 16);
    v33 = MEMORY[0x277D84F90];
    v35 = *MEMORY[0x277D861C0];
    while (1)
    {
      v37 = v2;
      v36(v0[4].receiver, v5, v0[3].receiver);
      type metadata accessor for SandboxExtension.Context();
      v7 = swift_allocObject();
      v7[2] = j__sandbox_extension_consume;
      v7[3] = 0;
      v7[4] = j__sandbox_extension_release;
      v7[5] = 0;
      v7[6] = j__sandbox_extension_issue_file;
      v7[7] = 0;
      type metadata accessor for SandboxExtension(0);
      v8 = swift_allocObject();
      *(v8 + 40) = 0;
      *(v8 + 48) = 1;
      if (!v6)
      {
        break;
      }

      v16 = v8;
      sub_238279050();
      sub_238278B00();
      sub_238279010();

      sub_238279010();

      v17 = sandbox_extension_issue_file();

      receiver = v0[4].receiver;
      v19 = v0[3].receiver;
      if (v17)
      {
        *(v16 + 3) = sub_238279050();
        *(v16 + 4) = v20;
        free(v17);
        (*v32)(&v16[OBJC_IVAR____TtC9EnergyKit16SandboxExtension_fileURL], receiver, v19);
        *(v16 + 2) = v7;

        MEMORY[0x2383ECFB0](v21);
        if (*((v0[2].receiver & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2].receiver & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2382790F0();
        }

        sub_238279120();

        v33 = v0[2].receiver;
      }

      else
      {

        (*v31)(receiver, v19);
        swift_deallocPartialClassInstance();
      }

      v6 = v35;
      v5 += v34;
      v2 = v37 - 1;
      if (v37 == 1)
      {

        v23 = v33;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
LABEL_14:
    v24 = v0[2].super_class;
    v25 = type metadata accessor for XPCSandboxExtensionContainer();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC9EnergyKit28XPCSandboxExtensionContainer_value] = v23;
    v0[1].receiver = v26;
    v0[1].super_class = v25;
    v27 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[4].super_class = v27;
    v28 = swift_allocObject();
    v0[5].receiver = v28;
    *(v28 + 16) = v27;
    v29 = v27;
    v30 = swift_task_alloc();
    v0[5].super_class = v30;
    *(v30 + 2) = v24;
    *(v30 + 3) = sub_238260094;
    *(v30 + 4) = v28;
    v8 = swift_task_alloc();
    v0[6].receiver = v8;
    *v8 = v0;
    *(v8 + 8) = sub_23825FED4;
    v13 = sub_23826009C;
    v12 = 0x8000000238281720;
    v15 = MEMORY[0x277D84F78] + 8;
    v9 = 0;
    v10 = 0;
    v11 = 0xD000000000000015;
    v14 = v30;
  }

  return MEMORY[0x2822007B8](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_23825FED4()
{

  return MEMORY[0x2822009F8](sub_23825FFEC, 0, 0);
}

uint64_t sub_23825FFEC()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23826005C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2382600AC(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0);
  v3 = *(v1 + 16);

  return sub_2382678D4(a1, v3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_4Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_238260214()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD8, &unk_23827F7F0);
  v1 = *(v0 + 16);

  return sub_238267920(v1);
}

uint64_t sub_238260284()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2382602F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_238260390(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2382603E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v3[6] = swift_task_alloc();
  v4 = sub_238278BC0();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2382604EC, 0, 0);
}

uint64_t sub_2382604EC()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 88) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_2382606B0;

  return sub_23825F914(v3);
}

uint64_t sub_2382606B0()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_2382607C4, 0, 0);
}

uint64_t sub_2382607C4()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = sub_2382647C0;
  *(v8 + 24) = v7;
  v9 = type metadata accessor for EnergyVenue(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_task_alloc();
  v0[14] = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = sub_2382678D0;
  v10[5] = v8;
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_2382609B4;
  v12 = v0[5];
  v13 = v0[2];

  return MEMORY[0x2822008A0](v13, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_238267838, v10, v12);
}

uint64_t sub_2382609B4()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238260B38, 0, 0);
  }

  else
  {
    v3 = v2[6];

    sub_23824C65C(v3, &qword_27DEF7CE0, &unk_23827F930);

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_238260B38()
{
  v1 = *(v0 + 48);

  sub_23824C65C(v1, &qword_27DEF7CE0, &unk_23827F930);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238260BE0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF0, &qword_23827F838);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_23823D83C(a1, &v19 - v13, &qword_27DEF7CE0, &unk_23827F930);
  v15 = type metadata accessor for EnergyVenue(0);
  v16 = *(v15 - 8);
  v17 = 1;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_23826469C(v14, v12);
    (*(v16 + 56))(v12, 0, 1, v15);
    sub_23826424C(v12, v7);
    v17 = 0;
  }

  (*(v9 + 56))(v7, v17, 1, v8);
  v20(v7, a2);
  return sub_23824C65C(v7, &qword_27DEF7CF0, &qword_23827F838);
}

uint64_t sub_238260E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v3[6] = swift_task_alloc();
  v4 = sub_238278BC0();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238260F30, 0, 0);
}

uint64_t sub_238260F30()
{
  sub_238278F00();
  if ((sub_238278EF0() & 1) == 0)
  {
    return sub_238279410();
  }

  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_238278FF0();
  v3 = [v1 initWithServiceName_];
  *(v0 + 88) = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_2382610F4;

  return sub_23825F914(v3);
}

uint64_t sub_2382610F4()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_238261208, 0, 0);
}

uint64_t sub_238261208()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = sub_2382641D4;
  *(v8 + 24) = v7;
  v9 = type metadata accessor for EnergyVenue(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_task_alloc();
  v0[14] = v10;
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = sub_238264204;
  v10[5] = v8;
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_2382613F8;
  v12 = v0[5];
  v13 = v0[2];

  return MEMORY[0x2822008A0](v13, 0, 0, 0xD000000000000025, 0x8000000238281480, sub_238264240, v10, v12);
}

uint64_t sub_2382613F8()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238267894, 0, 0);
  }

  else
  {
    v3 = v2[6];

    sub_23824C65C(v3, &qword_27DEF7CE0, &unk_23827F930);

    v4 = v2[1];

    return v4();
  }
}

void sub_23826157C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v14 = sub_238278B90();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v17[4] = a6;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2382678CC;
  v17[3] = a7;
  v16 = _Block_copy(v17);

  [a1 *a8];
  _Block_release(v16);
}

uint64_t sub_23826167C(uint64_t a1, void *a2, void (*a3)(_BYTE *, void *))
{
  v6 = type metadata accessor for EnergyVenue(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21[-v14];
  if (a2)
  {
    v16 = a2;
    sub_238273938(a2, &v22);
    v17 = v22;
    if (v22 != 9)
    {
      (*(v7 + 56))(v15, 1, 1, v6);
      sub_238241158();
      v19 = swift_allocError();
      *v20 = v17;
      a3(v15, v19);

      return sub_23824C65C(v15, &qword_27DEF7CE0, &unk_23827F930);
    }
  }

  if (a1)
  {
    sub_238264700(a1 + OBJC_IVAR____TtC9EnergyKit23XPCEnergyVenueContainer_value, v10);
    sub_23826469C(v10, v12);
    sub_238264700(v12, v15);
    (*(v7 + 56))(v15, 0, 1, v6);
    a3(v15, 0);
    sub_23824C65C(v15, &qword_27DEF7CE0, &unk_23827F930);
    return sub_238264764(v12);
  }

  (*(v7 + 56))(v15, 1, 1, v6);
  a3(v15, 0);
  return sub_23824C65C(v15, &qword_27DEF7CE0, &unk_23827F930);
}

void sub_238261918(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_23826756C;
  *(v7 + 24) = v6;
  v9[4] = sub_2382675A4;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2382678CC;
  v9[3] = &block_descriptor_147;
  v8 = _Block_copy(v9);

  [v5 energyVenuesWithReply_];
  _Block_release(v8);
}

void sub_238261A28(char *a1, id a2, void (*a3)(uint64_t, void *))
{
  if (!a2)
  {
LABEL_4:
    if (a1)
    {
      v8 = a1;

      a3(v9, 0);
    }

    else
    {
      a3(MEMORY[0x277D84F90], 0);
    }

    return;
  }

  v6 = a2;
  sub_238273938(a2, &v12);
  v7 = v12;
  if (v12 == 9)
  {

    goto LABEL_4;
  }

  sub_238241158();
  v10 = swift_allocError();
  *v11 = v7;
  a3(0, v10);
}

void sub_238261B74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278B90();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_238266F14;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_238261D24;
  v9[3] = &block_descriptor_96;
  v8 = _Block_copy(v9);

  [a1 isCostInclusionConfiguredForGuidanceFor:v6 reply:v8];
  _Block_release(v8);
}

void sub_238261C74(char a1, id a2, void (*a3)(void, void))
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v6 = a2;
  sub_238273938(a2, &v7);
  if (v7 == 9)
  {

LABEL_4:
    a3(a1 & 1, 0);
    return;
  }

  a3(0, 0);
}

void sub_238261D24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_238261D9C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  a4(v11, a7, v12);
}

void sub_238261E34(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  v8 = sub_238278B90();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11[4] = sub_238266C98;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_238262010;
  v11[3] = &block_descriptor_69;
  v10 = _Block_copy(v11);

  [v7 configureCostInclusionForGuidanceWithIsIncluded:a4 & 1 for:v8 reply:v10];
  _Block_release(v10);
}

void sub_238261F3C(void *a1, void (*a2)(void))
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v4 = a1;
  sub_238273938(a1, &v8);
  v5 = v8;
  if (v8 == 9)
  {

LABEL_4:
    (a2)(0);
    return;
  }

  sub_238241158();
  v6 = swift_allocError();
  *v7 = v5;
  a2();
}

void sub_238262010(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_23826207C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2382672AC;
  *(v7 + 24) = v6;
  v9[4] = sub_2382672E4;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_238260390;
  v9[3] = &block_descriptor_126;
  v8 = _Block_copy(v9);

  [v5 hasAnyHomesWithReply_];
  _Block_release(v8);
}

void sub_23826218C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_238266F54;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_238262010;
  v8[3] = &block_descriptor_106;
  v7 = _Block_copy(v8);

  [v5 createFirstHomeWithReply_];
  _Block_release(v7);
}

uint64_t sub_238262294(uint64_t a1, void *a2, int a3, void (*a4)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a5)
{
  v25 = a5;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(v9 + 16);
  v28 = a1;
  v24 = v13;
  v13(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v23 = *(v9 + 32);
  v23(v15 + v14, v12, v8);
  v27 = a3;
  *(v15 + v14 + v10) = a3;
  aBlock[4] = sub_238267084;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_114;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  v18 = [v17 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v29)
  {
    v31 = v29;
    v24(v12, v28, v8);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v23(v19 + v14, v12, v8);
    v20 = v17;
    v26(&v31, sub_23826722C, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = v27 & 1;
    [v17 invalidate];
    v30[0] = v21;
    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_2382625B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a6)
{
  v34 = a6;
  v35 = a5;
  v36 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = *(v10 + 16);
  v37 = a1;
  v32 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v18 = *(v10 + 32);
  v33 = v15;
  v19 = v17 + v15;
  v20 = v16;
  v21 = v36;
  v31 = v18;
  v18(v19, v13, v9);
  v22 = (v17 + v20);
  v38 = a3;
  *v22 = a3;
  v22[1] = v21;
  aBlock[4] = sub_2382675B0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_153;
  v23 = _Block_copy(aBlock);

  v24 = a2;

  v25 = [v24 remoteObjectProxyWithErrorHandler_];
  _Block_release(v23);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v39)
  {
    v41 = v39;
    v32(v13, v37, v9);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v31(v26 + v33, v13, v9);
    v27 = (v26 + v20);
    *v27 = v38;
    v27[1] = v21;
    v28 = v24;

    v35(&v41, sub_238267744, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    [v24 invalidate];
    v40[0] = v38;
    v40[1] = v21;

    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_238262914(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a5)
{
  v25 = a5;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(v9 + 16);
  v27 = a1;
  v24 = v13;
  v13(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v23 = *(v9 + 32);
  v23(v16 + v14, v12, v8);
  v28 = a3;
  *(v16 + v15) = a3;
  aBlock[4] = sub_2382648BC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_45;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  v19 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v29)
  {
    v31 = v29;
    v24(v12, v27, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v23(v20 + v14, v12, v8);
    *(v20 + v15) = v28;
    v21 = v18;
    v26(&v31, sub_238264A74, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    [v18 invalidate];
    v30[0] = v28;
    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_238262C3C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a5)
{
  v37 = a5;
  v38 = a4;
  v39 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v32 - v15;
  v17 = *(v13 + 16);
  v41 = a1;
  v35 = v17;
  v17(v16, a1, v12);
  v40 = a3;
  v18 = v9;
  sub_23823D83C(a3, v11, &qword_27DEF7CE0, &unk_23827F930);
  v19 = *(v13 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = *(v8 + 80);
  v22 = (v14 + v21 + v20) & ~v21;
  v32[1] = v18;
  v34 = v19 | v21;
  v23 = swift_allocObject();
  v24 = v39;
  *(v23 + 16) = v39;
  v25 = *(v13 + 32);
  v36 = v20;
  v33 = v25;
  v25(v23 + v20, v16, v12);
  sub_23826424C(v11, v23 + v22);
  aBlock[4] = sub_2382642BC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_8;
  v26 = _Block_copy(aBlock);
  v27 = v24;

  v28 = [v27 remoteObjectProxyWithErrorHandler_];
  _Block_release(v26);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v42)
  {
    v44 = v42;
    v35(v16, v41, v12);
    sub_23823D83C(v40, v11, &qword_27DEF7CE0, &unk_23827F930);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    v33(v29 + v36, v16, v12);
    sub_23826424C(v11, v29 + v22);
    v30 = v27;
    v38(&v44, sub_238264594, v29);
    swift_unknownObjectRelease();
  }

  else
  {
    [v27 invalidate];
    sub_23823D83C(v40, v11, &qword_27DEF7CE0, &unk_23827F930);
    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_23826306C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a5)
{
  v27 = a5;
  v28 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = *(v9 + 16);
  v29 = a1;
  v25 = v13;
  v13(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = *(v9 + 32);
  v26 = v14;
  v24 = v17;
  v17(v16 + v14, v12, v8);
  *(v16 + v15) = a3;
  aBlock[4] = sub_238267320;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_135;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  v20 = [v19 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v30)
  {
    v32 = v30;
    v25(v12, v29, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v24(v21 + v26, v12, v8);
    *(v21 + v15) = a3;
    v22 = v19;

    v28(&v32, sub_2382674B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    [v19 invalidate];
    v31[0] = a3;

    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_2382633AC(uint64_t a1, void *a2, char a3, void (*a4)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a5)
{
  v25 = a5;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D00, &qword_23827F860);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(v9 + 16);
  v28 = a1;
  v24 = v13;
  v13(v12, a1, v8);
  v27 = a3 & 1;
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = v14 + v10;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v23 = *(v9 + 32);
  v23(v16 + v14, v12, v8);
  *(v16 + v15) = a3;
  aBlock[4] = sub_238266E18;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_84;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  v19 = [v18 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v29)
  {
    v31 = v29;
    v24(v12, v28, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v23(v20 + v14, v12, v8);
    *(v20 + v15) = v27;
    v21 = v18;
    v26(&v31, sub_238266E2C, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    [v18 invalidate];
    v30[0] = v27;
    sub_238279180();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_2382636D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  [a2 invalidate];
  sub_23823D83C(a4, v8, &qword_27DEF7CE0, &unk_23827F930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
  return sub_238279180();
}

uint64_t sub_2382637A8(void *a1, uint64_t a2, void *a3, id a4, uint64_t a5, void *a6, uint64_t a7)
{
  [a4 invalidate];
  if (a3)
  {
    v8 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890);
    return sub_238279170();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890);
    return sub_238279180();
  }
}

uint64_t sub_238263878(void *a1, char a2, void *a3, id a4, uint64_t a5, void *a6)
{
  [a4 invalidate];
  if (a3)
  {
    v7 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
    return sub_238279170();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CD0, &unk_23827F7A0);
    return sub_238279180();
  }
}

uint64_t sub_238263934(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF0, &qword_23827F838);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v21 - v17;
  [a3 invalidate];
  if (a2)
  {
    v21[1] = a2;
    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
    return sub_238279170();
  }

  else
  {
    sub_23823D83C(a1, v11, &qword_27DEF7CF0, &qword_23827F838);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_23824C65C(v11, &qword_27DEF7CF0, &qword_23827F838);
      sub_23823D83C(a5, v16, &qword_27DEF7CE0, &unk_23827F930);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
      return sub_238279180();
    }

    else
    {
      sub_23826424C(v11, v18);
      sub_23823D83C(v18, v16, &qword_27DEF7CE0, &unk_23827F930);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
      sub_238279180();
      return sub_23824C65C(v18, &qword_27DEF7CE0, &unk_23827F930);
    }
  }
}

uint64_t sub_238263BB8(void *a1, void *a2, id a3, uint64_t a4, void *a5)
{
  [a3 invalidate];
  if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888);
    return sub_238279170();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888);
    return sub_238279180();
  }
}

uint64_t sub_238263C74(char a1, void *a2, id a3, uint64_t a4, char a5)
{
  [a3 invalidate];
  if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D00, &qword_23827F860);
    return sub_238279170();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D00, &qword_23827F860);
    return sub_238279180();
  }
}

uint64_t sub_238263D50(uint64_t a1, void *a2, int a3, void (*a4)(uint64_t *, uint64_t (*)(), uint64_t), uint64_t a5)
{
  v26 = a5;
  v27 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CF8, &qword_23827F850);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = *(v9 + 16);
  v29 = a1;
  v25 = v13;
  v13(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v24 = *(v9 + 32);
  v24(v15 + v14, v12, v8);
  v28 = a3;
  *(v15 + v14 + v10) = a3;
  aBlock[4] = sub_238266B64;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2382602F0;
  aBlock[3] = &block_descriptor_60;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  v18 = [v17 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_238279320();
  swift_unknownObjectRelease();
  sub_23824FBCC(aBlock, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CA0, &unk_23827F800);
  if (swift_dynamicCast() && v30)
  {
    v32 = v30;
    v25(v12, v29, v8);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v24(v19 + v14, v12, v8);
    v20 = v17;
    v27(&v32, sub_238266C18, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    [v17 invalidate];
    sub_238241158();
    v21 = swift_allocError();
    *v22 = v28;
    v31[0] = v21;
    sub_238279170();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_238264094(char *a1, id a2)
{
  [a2 invalidate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7C98, &qword_23827F630);
  return sub_238279180();
}

uint64_t sub_2382640F8(int a1, id a2, uint64_t a3, uint64_t *a4)
{
  [a2 invalidate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEF7D10, qword_23827F890);
  return sub_238279180();
}

uint64_t sub_238264168(int a1, id a2, uint64_t a3, uint64_t *a4)
{
  [a2 invalidate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7D08, &qword_23827F888);
  return sub_238279180();
}

uint64_t sub_23826424C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2382642BC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2382636D4(a1, v7, v1 + v4, v8);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_9Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for EnergyVenue(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {

    v11 = *(v10 + 20);
    v12 = sub_238278BC0();
    (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_238264594(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE8, &qword_23827F830) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF7CE0, &unk_23827F930) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_238263934(a1, a2, v9, v2 + v6, v10);
}