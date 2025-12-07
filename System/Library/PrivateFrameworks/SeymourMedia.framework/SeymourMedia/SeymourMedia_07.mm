uint64_t sub_20C51E8A8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47E8, &qword_20C5A85F0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

double sub_20C51E9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a8;
  v11 = a5;
  v49 = a10;
  v46 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980, &qword_20C5A85C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_20C5A01CC();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20C485058(0x65uLL);
  sub_20C59FE1C();
  v22 = sub_20C5A01BC();
  v23 = sub_20C5A08AC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = a1;
    v25 = v24;
    v40 = swift_slowAlloc();
    v51 = v40;
    *v25 = 134218498;
    *(v25 + 4) = v50;
    *(v25 + 12) = 2080;
    v26 = sub_20C5A0C1C();
    v43 = a6;
    v41 = v18;
    v28 = a4;
    v29 = v11;
    v30 = a2;
    v31 = sub_20C479640(v26, v27, &v51);
    v32 = a3;
    v33 = v43;

    *(v25 + 14) = v31;
    a2 = v30;
    v11 = v29;
    a4 = v28;
    *(v25 + 22) = 2048;
    a6 = v33;
    *(v25 + 24) = v33;
    a3 = v32;
    v18 = v41;
    _os_log_impl(&dword_20C472000, v22, v23, "Converting from Async-Await to Promise: %ld:%s:%lu", v25, 0x20u);
    v34 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x20F2FFF90](v34, -1, -1);
    v35 = v25;
    a1 = v42;
    MEMORY[0x20F2FFF90](v35, -1, -1);
  }

  (*(v44 + 8))(v21, v45);
  v36 = sub_20C5A06FC();
  (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v47;
  v38 = v50;
  *(v37 + 40) = v48;
  *(v37 + 48) = v38;
  *(v37 + 56) = a3;
  *(v37 + 64) = a4;
  *(v37 + 72) = v11;
  *(v37 + 80) = a6;
  *(v37 + 88) = a1;
  *(v37 + 96) = a2;

  sub_20C51CFF8(0, 0, v18, v49, v37);

  return result;
}

uint64_t sub_20C51ED70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 120) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_20C5A01CC();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_20C51EEF8;

  return v13(v8 + 16);
}

uint64_t sub_20C51EEF8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20C51F200;
  }

  else
  {
    v2 = sub_20C51F00C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C51F00C(uint64_t a1)
{
  v22 = v1;
  sub_20C59FE1C();
  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[12];
  v7 = v1[9];
  v6 = v1[10];
  if (v4)
  {
    v17 = v1[6];
    v19 = v1[12];
    v8 = v1[3];
    v18 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_20C5A0C1C();
    v13 = sub_20C479640(v11, v12, &v20);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v17;
    _os_log_impl(&dword_20C472000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x20F2FFF90](v10, -1, -1);
    MEMORY[0x20F2FFF90](v9, -1, -1);

    (*(v6 + 8))(v19, v18);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v1[7];
  v20 = v1[2];
  v21 = 0;

  v14(&v20);
  swift_bridgeObjectRelease_n();

  v15 = v1[1];

  return v15();
}

uint64_t sub_20C51F200(uint64_t a1)
{
  v24 = v1;
  sub_20C59FE1C();
  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[9];
  if (v4)
  {
    v19 = v1[6];
    v21 = v1[11];
    v8 = v1[3];
    v20 = v1[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_20C5A0C1C();
    v13 = sub_20C479640(v11, v12, &v22);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v19;
    _os_log_impl(&dword_20C472000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x20F2FFF90](v10, -1, -1);
    MEMORY[0x20F2FFF90](v9, -1, -1);

    (*(v5 + 8))(v21, v20);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v14 = v1[14];
  v15 = v1[7];
  v22 = v14;
  v23 = 1;
  v16 = v14;
  v15(&v22);

  v17 = v1[1];

  return v17();
}

uint64_t sub_20C51F3FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A78, &qword_20C5A8660);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C5A01CC();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C59E52C();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20C51F620;

  return v15(v12);
}

uint64_t sub_20C51F620()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20C51F99C;
  }

  else
  {
    v2 = sub_20C51F734;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C51F734(uint64_t a1)
{
  v25 = v1;
  sub_20C59FE1C();
  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C5A0C1C();
    v10 = sub_20C479640(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_20C472000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F2FFF90](v7, -1, -1);
    MEMORY[0x20F2FFF90](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_20C477B50(v17, &qword_27C7C4A78, &qword_20C5A8660);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20C51F99C(uint64_t a1)
{
  v24 = v1;
  sub_20C59FE1C();
  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C5A0C1C();
    v10 = sub_20C479640(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_20C472000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F2FFF90](v7, -1, -1);
    MEMORY[0x20F2FFF90](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_20C477B50(v15, &qword_27C7C4A78, &qword_20C5A8660);

  v18 = v1[1];

  return v18();
}

uint64_t sub_20C51FBD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A68, &qword_20C5AAB50);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C5A01CC();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C59E0CC();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20C51FDFC;

  return v15(v12);
}

uint64_t sub_20C51FDFC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20C520178;
  }

  else
  {
    v2 = sub_20C51FF10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C51FF10(uint64_t a1)
{
  v25 = v1;
  sub_20C59FE1C();
  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C5A0C1C();
    v10 = sub_20C479640(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_20C472000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F2FFF90](v7, -1, -1);
    MEMORY[0x20F2FFF90](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_20C477B50(v17, &qword_27C7C4A68, &qword_20C5AAB50);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20C520178(uint64_t a1)
{
  v24 = v1;
  sub_20C59FE1C();
  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C5A0C1C();
    v10 = sub_20C479640(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_20C472000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F2FFF90](v7, -1, -1);
    MEMORY[0x20F2FFF90](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_20C477B50(v15, &qword_27C7C4A68, &qword_20C5AAB50);

  v18 = v1[1];

  return v18();
}

uint64_t sub_20C5203B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 152) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A50, &qword_20C5A8630);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C5A01CC();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C59E5BC();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20C5205D8;

  return v15(v12);
}

uint64_t sub_20C5205D8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20C520954;
  }

  else
  {
    v2 = sub_20C5206EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C5206EC(uint64_t a1)
{
  v25 = v1;
  sub_20C59FE1C();
  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v22 = v1[10];
    v23 = v1[13];
    v21 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C5A0C1C();
    v10 = sub_20C479640(v8, v9, &v24);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v21;
    _os_log_impl(&dword_20C472000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F2FFF90](v7, -1, -1);
    MEMORY[0x20F2FFF90](v6, -1, -1);

    (*(v4 + 8))(v23, v22);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[10];
    v13 = v1[11];

    (*(v13 + 8))(v11, v12);
  }

  v15 = v1[15];
  v14 = v1[16];
  v16 = v1[14];
  v17 = v1[9];
  v18 = v1[6];
  (*(v15 + 16))(v17, v14, v16);
  swift_storeEnumTagMultiPayload();
  v18(v17);
  sub_20C477B50(v17, &qword_27C7C4A50, &qword_20C5A8630);
  (*(v15 + 8))(v14, v16);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20C520954(uint64_t a1)
{
  v24 = v1;
  sub_20C59FE1C();
  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[11];
    v21 = v1[10];
    v22 = v1[12];
    v20 = v1[5];
    v5 = v1[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_20C5A0C1C();
    v10 = sub_20C479640(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v20;
    _os_log_impl(&dword_20C472000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x20F2FFF90](v7, -1, -1);
    MEMORY[0x20F2FFF90](v6, -1, -1);

    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v1[11];
    v11 = v1[12];
    v13 = v1[10];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[18];
  v15 = v1[9];
  v16 = v1[6];
  *v15 = v14;
  swift_storeEnumTagMultiPayload();
  v17 = v14;
  v16(v15);

  sub_20C477B50(v15, &qword_27C7C4A50, &qword_20C5A8630);

  v18 = v1[1];

  return v18();
}

uint64_t sub_20C520BC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v11 = *a1;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);

  return sub_20C59EA9C();
}

uint64_t sub_20C520CD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A10, &qword_20C5A5330) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C59E18C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20C51A924(a1, v2 + v6, v2 + v9, v10, a2);
}

void sub_20C520E1C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C59E18C() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_20C51ABE8(a1, *(v2 + v6), *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

double sub_20C520ED0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  a3(&v9, &v8);
  v6 = v9;
  v10 = 0;
  a1(&v9);
  return sub_20C4C0054(v6, 0);
}

uint64_t sub_20C520F60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  sub_20C59E18C();

  return sub_20C59EA9C();
}

void sub_20C52101C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v49 = a1;
  v50 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v51 = v8;
  v52 = 0;
  v53 = v11 & v9;
  v54 = a2;
  v55 = a3;

  sub_20C557A2C(&v45);
  if (!*(&v47 + 1))
  {
    goto LABEL_25;
  }

  v12 = v45;
  v42 = v46;
  v43 = v47;
  v44 = v48;
  v13 = *a5;
  v14 = sub_20C495C64(v45);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_20C4B9B0C(v19, a4 & 1);
    v14 = sub_20C495C64(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v14 = sub_20C5A0EDC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v23 = v14;
    sub_20C4BB740();
    v14 = v23;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    sub_20C4949E4(&v42, v22[7] + 40 * v14);
    goto LABEL_15;
  }

LABEL_13:
  v22[(v14 >> 6) + 8] |= 1 << v14;
  *(v22[6] + v14) = v12;
  v24 = v22[7] + 40 * v14;
  v25 = v42;
  v26 = v43;
  *(v24 + 32) = v44;
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v22[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v22[2] = v28;
LABEL_15:
    sub_20C557A2C(&v45);
    if (*(&v47 + 1))
    {
      v20 = 1;
      do
      {
        v12 = v45;
        v42 = v46;
        v43 = v47;
        v44 = v48;
        v29 = *a5;
        v30 = sub_20C495C64(v45);
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v29[3] < v34)
        {
          sub_20C4B9B0C(v34, 1);
          v30 = sub_20C495C64(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          sub_20C4949E4(&v42, v36[7] + 40 * v30);
        }

        else
        {
          v36[(v30 >> 6) + 8] |= 1 << v30;
          *(v36[6] + v30) = v12;
          v37 = v36[7] + 40 * v30;
          v38 = v42;
          v39 = v43;
          *(v37 + 32) = v44;
          *v37 = v38;
          *(v37 + 16) = v39;
          v40 = v36[2];
          v18 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v41;
        }

        sub_20C557A2C(&v45);
      }

      while (*(&v47 + 1));
    }

LABEL_25:
    sub_20C483B94(v49);

    return;
  }

LABEL_27:
  __break(1u);
}

unint64_t sub_20C52130C()
{
  result = qword_27C7C5750;
  if (!qword_27C7C5750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C46D8, &qword_20C5A8590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5750);
  }

  return result;
}

uint64_t sub_20C521428(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20C521570(uint64_t a1)
{
  v4 = *(sub_20C59E18C() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C47FCF0;

  return sub_20C51B0D8(a1, v1 + 16, v1 + v5);
}

void sub_20C52169C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20C47FCEC;

  JUMPOUT(0x20C51ED70);
}

unint64_t sub_20C5217B0()
{
  result = qword_27C7C5790;
  if (!qword_27C7C5790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C5778, &unk_20C5A8608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5790);
  }

  return result;
}

uint64_t sub_20C521814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20C52185C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20C47FCEC;

  JUMPOUT(0x20C5203B4);
}

void sub_20C521970()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20C47FCF0;

  JUMPOUT(0x20C51FBD8);
}

uint64_t objectdestroy_54Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_20C521ACC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20C47FCEC;

  JUMPOUT(0x20C51F3FCLL);
}

BOOL MediaTag.isHighlighted.getter()
{
  v1 = sub_20C59EC1C();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C521D9C(v0, v3);
  v4 = (swift_getEnumCaseMultiPayload() & 0xFFFFFFFE) == 4;
  sub_20C521E00(v3);
  return v4;
}

uint64_t sub_20C521D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C59EC1C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C521E00(uint64_t a1)
{
  v2 = sub_20C59EC1C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C521E5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 7104878;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x20F2FE9A0](v4, v5);

  MEMORY[0x20F2FE9A0](8236, 0xE200000000000000);
  MEMORY[0x20F2FE9A0](0x203A726564616568, 0xE800000000000000);

  v6 = MEMORY[0x20F2FEAF0](a3, &type metadata for VideoTextTrackBlock);
  MEMORY[0x20F2FE9A0](v6);

  MEMORY[0x20F2FE9A0](0x203A79646F62, 0xE600000000000000);

  return 0x7865546F65646956;
}

id sub_20C521FDC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PauseWorkoutIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20C522058(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_20C59EBBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C5A01CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_20C48DF30())
  {
    v14 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v15 = sub_20C5A036C();
    v16 = [v14 initWithActivityType_];

    v17 = [objc_allocWithZone(MEMORY[0x277CD3E68]) initWithCode:2 userActivity:v16];
    a2();
  }

  else
  {
    v30 = v11;
    v31 = a3;
    v32 = a2;
    sub_20C59FDEC();
    (*(v7 + 16))(v9, a1, v6);
    v18 = sub_20C5A01BC();
    v19 = sub_20C5A089C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = v10;
      v21 = v20;
      v28 = swift_slowAlloc();
      v33 = v28;
      *v21 = 136446210;
      sub_20C4FE818();
      v22 = sub_20C5A0E6C();
      v24 = v23;
      (*(v7 + 8))(v9, v6);
      v25 = sub_20C479640(v22, v24, &v33);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_20C472000, v18, v19, "Session is not eligible for intent control, not pausing: %{public}s", v21, 0xCu);
      v26 = v28;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x20F2FFF90](v26, -1, -1);
      MEMORY[0x20F2FFF90](v21, -1, -1);

      (*(v30 + 8))(v13, v29);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
      (*(v30 + 8))(v13, v10);
    }

    v27 = [objc_allocWithZone(MEMORY[0x277CD3E68]) initWithCode:3 userActivity:0];
    v32();
  }
}

void sub_20C5223E4(void *a1, void (*a2)(void), uint64_t a3)
{
  v19[2] = a3;
  v20 = a2;
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDEC();
  v9 = a1;
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A089C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[1] = v3;
    v14 = v13;
    v23 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v15 = MEMORY[0x20F2FF3F0](v21, v22);
    v17 = sub_20C479640(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20C472000, v10, v11, "Session query failed, not pausing: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x20F2FFF90](v14, -1, -1);
    MEMORY[0x20F2FFF90](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18 = [objc_allocWithZone(MEMORY[0x277CD3E68]) initWithCode:5 userActivity:0];
  v20();
}

uint64_t sub_20C522694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C53E0, &unk_20C5A5590);
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v49 = *(v51 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = &v45 - v14;
  MEMORY[0x28223BE20](v15);
  v52 = &v45 - v16;
  v17 = sub_20C5A01CC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDEC();
  sub_20C5A01AC();
  (*(v18 + 8))(v20, v17);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12SeymourMedia25PauseWorkoutIntentHandler_sessionClient), *(v3 + OBJC_IVAR____TtC12SeymourMedia25PauseWorkoutIntentHandler_sessionClient + 24));
  sub_20C59F29C();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20C522C2C;
  *(v23 + 24) = v21;
  v24 = v47;
  (*(v6 + 16))(v8, v11, v47);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  (*(v6 + 32))(v26 + v25, v8, v24);
  v27 = (v26 + ((v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20C4C5A2C;
  v27[1] = v23;
  v28 = v22;

  v29 = v46;
  sub_20C59EA9C();
  (*(v6 + 8))(v11, v24);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = v28;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_20C522C48;
  *(v31 + 24) = v30;
  v32 = v49;
  v33 = v50;
  v34 = v51;
  (*(v49 + 16))(v50, v29, v51);
  v35 = v32;
  v36 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v37 = (v48 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  (*(v35 + 32))(v38 + v36, v33, v34);
  v39 = (v38 + v37);
  *v39 = sub_20C4907C8;
  v39[1] = v31;

  v40 = v52;
  sub_20C59EA9C();
  v41 = *(v35 + 8);
  v41(v29, v34);
  v42 = sub_20C59EABC();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  v42(sub_20C4907D4, v43);

  return (v41)(v40, v34);
}

void *SessionArchivalServiceCoordinator.__allocating_init(eventHub:standaloneWorkoutTimeProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_20C47E230(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_20C522CC8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onArchiveSession);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C525858;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4, v5);
}

uint64_t sub_20C522D68(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C525830;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onArchiveSession);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C487984(v3, v4);
  return sub_20C47E6BC(v8, v9);
}

uint64_t sub_20C522ED0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onPlaybackUpdated);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C525990;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4, v5);
}

uint64_t sub_20C522F70(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C525994;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onPlaybackUpdated);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C487984(v3, v4);
  return sub_20C47E6BC(v8, v9);
}

uint64_t sub_20C5230D8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onMinimumPlaybackDurationReached);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C5257FC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4, v5);
}

uint64_t sub_20C523178(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C4C5988;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onMinimumPlaybackDurationReached);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C487984(v3, v4);
  return sub_20C47E6BC(v8, v9);
}

uint64_t sub_20C5232E0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onFinalize);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C4C5950;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4, v5);
}

uint64_t sub_20C523380(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C4C5928;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onFinalize);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C487984(v3, v4);
  return sub_20C47E6BC(v8, v9);
}

uint64_t sub_20C5234E8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onShouldTrackSession);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C5257C8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4, v5);
}

uint64_t sub_20C523588(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C525790;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onShouldTrackSession);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20C487984(v3, v4);
  return sub_20C47E6BC(v8, v9);
}

uint64_t sub_20C523670(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_20C5236F8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void *SessionArchivalServiceCoordinator.init(eventHub:standaloneWorkoutTimeProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = sub_20C47E230(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_20C5237F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

double sub_20C523914(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C523974(a1);
  }

  return result;
}

uint64_t sub_20C523974(uint64_t a1)
{
  v48 = a1;
  v2 = sub_20C59EBBC();
  v45 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20C59DE3C();
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5820, &qword_20C5A8778);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for SessionArchivalServiceCoordinator.State(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v43 - v19);
  v21 = OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_state;
  swift_beginAccess();
  v49 = v1;
  sub_20C5253F0(v1 + v21, v20);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v32 = v45;
      (*(v45 + 4))(v4, v20, v2);
      sub_20C525598(v4, v48);
      return (*(v32 + 1))(v4, v2);
    }
  }

  else
  {
    if (result)
    {
      v46 = *v20;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5828, &qword_20C5A8780);
      v34 = *(v20 + v33[16]);
      v35 = v33[20];
      sub_20C525454(v20 + v33[12], v11);
      v36 = v47;
      v45 = *(v47 + 32);
      (v45)(v6, v20 + v35, v50);
      v37 = sub_20C59D46C();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v11, 1, v37) == 1)
      {
        v39 = v33[12];
        v47 = v33[16];
        v40 = v33[20];
        *v17 = v46;
        (*(v38 + 16))(&v17[v39], v48, v37);
        (*(v38 + 56))(&v17[v39], 0, 1, v37);
        *&v17[v47] = v34;
        (v45)(&v17[v40], v6, v50);
        swift_storeEnumTagMultiPayload();
        v41 = v49;
        swift_beginAccess();
        sub_20C525534(v17, v41 + v21);
        swift_endAccess();
      }

      else
      {
        (*(v36 + 8))(v6, v50);
      }

      v42 = v11;
    }

    else
    {
      v45 = *v20;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5830, &qword_20C5A8788);
      v24 = *(v23 + 64);
      sub_20C525454(v20 + *(v23 + 48), v14);
      v25 = v46;
      v26 = v47;
      v44 = *(v47 + 32);
      v44(v46, v20 + v24, v50);
      v27 = sub_20C59D46C();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v14, 1, v27) == 1)
      {
        v29 = *(v23 + 48);
        v30 = *(v23 + 64);
        *v17 = v45;
        (*(v28 + 16))(&v17[v29], v48, v27);
        (*(v28 + 56))(&v17[v29], 0, 1, v27);
        v44(&v17[v30], v25, v50);
        swift_storeEnumTagMultiPayload();
        v31 = v49;
        swift_beginAccess();
        sub_20C525534(v17, v31 + v21);
        swift_endAccess();
      }

      else
      {
        (*(v26 + 8))(v25, v50);
      }

      v42 = v14;
    }

    return sub_20C477B50(v42, &qword_27C7C5820, &qword_20C5A8778);
  }

  return result;
}

uint64_t sub_20C523F9C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionArchivalServiceCoordinator.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onShouldTrackSession;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);

    v11 = v9(a1);
    result = sub_20C47E6BC(v9, v10);
    if (v11)
    {
      v12 = (v2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_publishMinimumPlaybackDurationReached);
      v13 = *(v2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_publishMinimumPlaybackDurationReached);
      v14 = *(v2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_publishMinimumPlaybackDurationReached + 8);
      *v12 = sub_20C525788;
      v12[1] = v2;

      sub_20C47E6BC(v13, v14);
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5830, &qword_20C5A8788) + 48);
      *v6 = sub_20C59EAEC();
      v16 = sub_20C59D46C();
      (*(*(v16 - 8) + 56))(v6 + v15, 1, 1, v16);
      sub_20C59EB2C();
      swift_storeEnumTagMultiPayload();
      v17 = OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_state;
      swift_beginAccess();
      sub_20C525534(v6, v2 + v17);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_20C524168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onMinimumPlaybackDurationReached;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);

    v9(a1, a2, a3);
    return sub_20C47E6BC(v9, v10);
  }

  return result;
}

uint64_t sub_20C524200(uint64_t a1)
{
  v3 = sub_20C59D46C();
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5820, &qword_20C5A8778);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = sub_20C59EBBC();
  v13 = *(v12 - 8);
  v59 = v12;
  v60 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SessionArchivalServiceCoordinator.State(0);
  MEMORY[0x28223BE20](v16);
  v58 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_state;
  swift_beginAccess();
  sub_20C5253F0(v1 + v21, v20);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v35 = v59;
      (*(v60 + 32))(v15, v20, v59);
      sub_20C59F3AC();
      v36 = sub_20C59EAEC();
      v37 = sub_20C59EAEC();
      v38 = MEMORY[0x20F2FD840](v36, v37);

      if (v38)
      {
        v39 = v58;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_20C525534(v39, v1 + v21);
        swift_endAccess();
        v40 = v1 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onFinalize;
        swift_beginAccess();
        v41 = *v40;
        if (*v40)
        {
          v42 = *(v40 + 8);

          v41(a1);
          sub_20C47E6BC(v41, v42);
        }
      }

      return (*(v60 + 8))(v15, v35);
    }
  }

  else
  {
    v56 = v1;
    if (result)
    {
      v53 = v3;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5828, &qword_20C5A8780);
      v44 = v43[12];
      v45 = *&v20[v43[16]];
      v55 = v43[20];
      sub_20C525454(&v20[v44], v11);
      sub_20C59F3AC();
      v54 = a1;
      sub_20C59EAEC();
      v46 = MEMORY[0x20F2FD840]();

      if (v46)
      {
        sub_20C5254C4(v11, v8);
        v47 = v57;
        v48 = v53;
        if ((*(v57 + 48))(v8, 1, v53) == 1)
        {

          sub_20C477B50(v11, &qword_27C7C5820, &qword_20C5A8778);
          sub_20C477B50(v8, &qword_27C7C5820, &qword_20C5A8778);
          v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5838, &qword_20C5A8790) + 48);
          v50 = v58;
          (*(v60 + 16))(v58, v54, v59);
          *(v50 + v49) = v45;
          swift_storeEnumTagMultiPayload();
          v51 = v56;
          swift_beginAccess();
          sub_20C525534(v50, v51 + v21);
          swift_endAccess();
        }

        else
        {
          (*(v47 + 32))(v5, v8, v48);
          sub_20C525598(v54, v5);

          (*(v47 + 8))(v5, v48);
          sub_20C477B50(v11, &qword_27C7C5820, &qword_20C5A8778);
        }
      }

      else
      {
        sub_20C477B50(v11, &qword_27C7C5820, &qword_20C5A8778);
      }

      v52 = sub_20C59DE3C();
      return (*(*(v52 - 8) + 8))(&v20[v55], v52);
    }

    else
    {
      v23 = *v20;
      sub_20C59F3AC();
      v24 = sub_20C59EAEC();
      v25 = MEMORY[0x20F2FD840](v23, v24);

      if (v25)
      {
        v26 = v58;
        swift_storeEnumTagMultiPayload();
        v27 = v56;
        swift_beginAccess();
        sub_20C525534(v26, v27 + v21);
        swift_endAccess();
        v28 = v27 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onFinalize;
        swift_beginAccess();
        v29 = *v28;
        if (*v28)
        {
          v30 = *(v28 + 8);

          v29(a1);
          sub_20C47E6BC(v29, v30);
        }
      }

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5830, &qword_20C5A8788);
      v32 = *(v31 + 48);
      v33 = *(v31 + 64);
      v34 = sub_20C59DE3C();
      (*(*(v34 - 8) + 8))(&v20[v33], v34);
      return sub_20C477B50(&v20[v32], &qword_27C7C5820, &qword_20C5A8778);
    }
  }

  return result;
}

uint64_t sub_20C5248E0(uint64_t a1)
{
  v2 = v1;
  v82 = a1;
  v80 = sub_20C59ECFC();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v4 = &v72[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_20C5A01CC();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_20C59DE3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v81 = &v72[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5820, &qword_20C5A8778);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v72[-v15];
  v16 = type metadata accessor for SessionArchivalServiceCoordinator.State(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v72[-v20];
  v22 = OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_state;
  swift_beginAccess();
  sub_20C5253F0(v2 + v22, v21);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v35 = sub_20C59EBBC();
      return (*(*(v35 - 8) + 8))(v21, v35);
    }
  }

  else if (result)
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5828, &qword_20C5A8780);
    v37 = v9;
    (*(v9 + 32))(v11, &v21[*(v36 + 80)], v8);
    v38 = v2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onPlaybackUpdated;
    swift_beginAccess();
    v39 = *v38;
    if (*v38)
    {
      v40 = *(v38 + 1);

      v39(v82);
      sub_20C47E6BC(v39, v40);
    }

    v41 = *(v36 + 48);
    v42 = v2[8];
    v43 = v2[9];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v42);
    v44 = (*(v43 + 8))(v42, v43);
    sub_20C59F69C();
    if (v45 >= v44)
    {
      (*(v37 + 8))(v11, v8);
    }

    else
    {
      v75 = v8;
      v46 = (v2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_publishMinimumPlaybackDurationReached);
      v47 = *(v2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_publishMinimumPlaybackDurationReached);
      if (v47)
      {
        v48 = v46[1];

        v49 = sub_20C59F38C();
        v47(v49);
        sub_20C47E6BC(v47, v48);
      }

      else
      {
      }

      (*(v37 + 8))(v11, v75);
      v68 = *v46;
      v69 = v46[1];
      *v46 = 0;
      v46[1] = 0;
      sub_20C47E6BC(v68, v69);
    }

    return sub_20C477B50(&v21[v41], &qword_27C7C5820, &qword_20C5A8778);
  }

  else
  {
    v74 = *v21;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5830, &qword_20C5A8788);
    v25 = v9;
    v26 = *(v24 + 64);
    sub_20C525454(&v21[*(v24 + 48)], v83);
    v76 = v25;
    (*(v25 + 32))(v81, &v21[v26], v8);
    sub_20C59FE0C();
    v27 = v77;
    (*(v77 + 16))(v4, v82, v80);
    v28 = sub_20C5A01BC();
    v29 = sub_20C5A08AC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v75 = v8;
      v31 = v30;
      *v30 = 134217984;
      v73 = v29;
      sub_20C59EC7C();
      v33 = v32;
      (*(v27 + 8))(v4, v80);
      *(v31 + 1) = v33;
      _os_log_impl(&dword_20C472000, v28, v73, "Found first playback. Using elapsed time for startTime: %f", v31, 0xCu);
      v34 = v31;
      v8 = v75;
      MEMORY[0x20F2FFF90](v34, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v4, v80);
    }

    (*(v78 + 8))(v7, v79);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5828, &qword_20C5A8780);
    v51 = v50[12];
    v52 = v50[16];
    v53 = v50[20];
    *v18 = v74;
    sub_20C5254C4(v83, &v18[v51]);

    v54 = v82;
    sub_20C59EC7C();
    *&v18[v52] = v55;
    v56 = v81;
    (*(v76 + 16))(&v18[v53], v81, v8);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_20C525534(v18, v2 + v22);
    swift_endAccess();
    v57 = v2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onPlaybackUpdated;
    swift_beginAccess();
    v58 = *v57;
    if (*v57)
    {
      v59 = *(v57 + 1);

      v58(v54);
      sub_20C47E6BC(v58, v59);
    }

    v60 = v2[8];
    v61 = v2[9];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v60);
    v62 = (*(v61 + 8))(v60, v61);
    sub_20C59F69C();
    if (v63 >= v62)
    {

      (*(v76 + 8))(v56, v8);
      return sub_20C477B50(v83, &qword_27C7C5820, &qword_20C5A8778);
    }

    else
    {
      v64 = (v2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_publishMinimumPlaybackDurationReached);
      v65 = *(v2 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_publishMinimumPlaybackDurationReached);
      if (v65)
      {
        v66 = v64[1];

        v67 = sub_20C59F38C();
        v65(v67);
        sub_20C47E6BC(v65, v66);
      }

      else
      {
      }

      (*(v76 + 8))(v56, v8);
      sub_20C477B50(v83, &qword_27C7C5820, &qword_20C5A8778);
      v70 = *v64;
      v71 = v64[1];
      *v64 = 0;
      v64[1] = 0;
      return sub_20C47E6BC(v70, v71);
    }
  }

  return result;
}

uint64_t sub_20C5253F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionArchivalServiceCoordinator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C525454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5820, &qword_20C5A8778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5254C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5820, &qword_20C5A8778);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C525534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionArchivalServiceCoordinator.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C525598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5840, &qword_20C5A8798);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20[-v7];
  v9 = type metadata accessor for SessionArchivalServiceCoordinator.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_state;
  swift_beginAccess();
  sub_20C525534(v11, v3 + v12);
  swift_endAccess();
  sub_20C59EB8C();
  LOBYTE(v11) = sub_20C560FF4(v8, (v3 + 40));
  result = sub_20C477B50(v8, &qword_27C7C5840, &qword_20C5A8798);
  if (v11)
  {
    v14 = v3 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onArchiveSession;
    swift_beginAccess();
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 8);

      v15(a1, a2);
      sub_20C47E6BC(v15, v16);
    }

    v17 = v3 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onFinalize;
    result = swift_beginAccess();
    v18 = *v17;
    if (*v17)
    {
      v19 = *(v17 + 8);

      v18(a1);
      return sub_20C47E6BC(v18, v19);
    }
  }

  return result;
}

uint64_t sub_20C5257C8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t MarketingAction.subscriptionAdamId.getter()
{
  v1 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v1);
  v3 = (v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C5262B8(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20C52631C(v3);
    return 0;
  }

  v4 = *v3;
  v5 = [v4 dictionary];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  v7 = sub_20C5A02BC();

  *&v13[0] = sub_20C5A039C();
  *(&v13[0] + 1) = v8;
  sub_20C5A0B9C();
  if (*(v7 + 16) && (v9 = sub_20C495C20(v14), (v10 & 1) != 0))
  {
    sub_20C479AA8(*(v7 + 56) + 32 * v9, v13);
    sub_20C4914D8(v14);
  }

  else
  {

    sub_20C4914D8(v14);
    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44D0, &unk_20C5A35A0);
  v11 = sub_20C5A0A3C();

  sub_20C477B50(v13, &qword_27C7C44D0, &unk_20C5A35A0);
  return v11;
}

void MarketingAction.hash(into:)(uint64_t a1)
{
  v2 = sub_20C59D37C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C5262B8(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2FF470](1);
    sub_20C5263C0(&qword_27C7C4560, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_20C5A02FC();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
    MEMORY[0x20F2FF470](0);
    sub_20C5A09CC();
  }
}

uint64_t MarketingAction.hashValue.getter()
{
  v1 = v0;
  v2 = sub_20C59D37C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C5A0FBC();
  sub_20C5262B8(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2FF470](1);
    sub_20C5263C0(&qword_27C7C4560, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_20C5A02FC();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = *v8;
    MEMORY[0x20F2FF470](0);
    sub_20C5A09CC();
  }

  return sub_20C5A0FFC();
}

uint64_t sub_20C525F18()
{
  sub_20C5A0FBC();
  MarketingAction.hash(into:)(v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C525F5C(uint64_t a1)
{
  sub_20C5A0FBC();
  MarketingAction.hash(into:)(v2);
  return sub_20C5A0FFC();
}

uint64_t _s12SeymourMedia15MarketingActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C59D37C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5878, &qword_20C5A8830);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_20C5262B8(a1, &v24 - v15);
  sub_20C5262B8(a2, &v16[v18]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20C5262B8(v16, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v7, &v16[v18], v4);
      v19 = sub_20C59D31C();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
LABEL_9:
      sub_20C52631C(v16);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_20C5262B8(v16, v13);
    v21 = *v13;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = *&v16[v18];
      sub_20C479154(0, &qword_27C7C4568, 0x277D82BB8);
      v19 = sub_20C5A09BC();

      goto LABEL_9;
    }
  }

  sub_20C477B50(v16, &qword_27C7C5878, &qword_20C5A8830);
  v19 = 0;
  return v19 & 1;
}

uint64_t type metadata accessor for MarketingAction(uint64_t a1)
{
  result = qword_27C7C5850;
  if (!qword_27C7C5850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C5262B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C52631C(uint64_t a1)
{
  v2 = type metadata accessor for MarketingAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5263C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20C526408(uint64_t a1)
{
  sub_20C52647C();
  if (v1 <= 0x3F)
  {
    sub_20C5264D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C52647C()
{
  if (!qword_27C7C5860)
  {
    v0 = sub_20C479154(0, &qword_27C7C5868, 0x277CEE438);
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C5860);
    }
  }
}

void sub_20C5264D4()
{
  if (!qword_27C7C5870)
  {
    v0 = sub_20C59D37C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C5870);
    }
  }
}

void sub_20C52651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4F70, &qword_20C5A8B20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
  v11 = MEMORY[0x28223BE20](started);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_20C477B50(a1, &qword_27C7C4F70, &qword_20C5A8B20);
    sub_20C4937D8(a2, a3, v9);

    sub_20C477B50(v9, &qword_27C7C4F70, &qword_20C5A8B20);
  }

  else
  {
    sub_20C4948B4(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_20C493B28(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }
}

uint64_t sub_20C5266DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v18[0] = *v2;
    sub_20C493F24(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_20C515440(a2);
    *v2 = *&v18[0];
  }

  else
  {
    v8 = sub_20C495E94(a2);
    v10 = v9;
    result = sub_20C515440(a2);
    if (v10)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v20 = *v3;
      if (!v11)
      {
        sub_20C4BB58C();
        v12 = v20;
      }

      v13 = *(v12 + 48) + 88 * v8;
      v14 = *(v13 + 16);
      v18[0] = *v13;
      v18[1] = v14;
      v16 = *(v13 + 48);
      v15 = *(v13 + 64);
      v17 = *(v13 + 32);
      v19 = *(v13 + 80);
      v18[3] = v16;
      v18[4] = v15;
      v18[2] = v17;
      sub_20C515440(v18);

      result = sub_20C54E92C(v8, v12);
      *v3 = v12;
    }
  }

  return result;
}

void sub_20C5267E4(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1 == 2)
  {
    v4 = sub_20C495F5C(a2);
    if (v5)
    {
      v6 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v12 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_20C4BB8CC();
        v8 = v12;
      }

      sub_20C4947F4(*(*(v8 + 56) + 8 * v6));
      sub_20C54EC7C(v6, v8);

      *v3 = v8;
    }

    else
    {
    }
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_20C494054(a1, a2, v10);

    *v2 = v13;
  }
}

double sub_20C5268EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  LODWORD(v49) = a5;
  v47 = a4;
  v6 = a3;
  v55 = a6;
  v53 = sub_20C5A01CC();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C59D46C();
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v10;
  MEMORY[0x28223BE20](v11);
  v59 = &v45 - v12;
  v13 = sub_20C5A019C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C5A017C();
  MEMORY[0x28223BE20](v17 - 8);
  sub_20C59F41C();
  swift_allocObject();
  v18 = a2;
  v19 = sub_20C59F3EC();
  sub_20C59F47C();

  sub_20C5A018C();
  sub_20C5A016C();
  (*(v14 + 8))(v16, v13);
  sub_20C59F47C();
  sub_20C59FF1C();
  swift_allocObject();
  v58 = a1;
  v57 = v6;
  v20 = v48;
  v21 = sub_20C59FEEC();
  v60 = v19;
  v22 = sub_20C5A041C();
  v24 = v23;
  sub_20C59D44C();
  sub_20C59F40C();
  v49 = v21;
  sub_20C59FF0C();
  sub_20C59F46C();

  v25 = sub_20C5A01BC();
  v26 = sub_20C5A08AC();

  v27 = os_log_type_enabled(v25, v26);
  v46 = v18;
  v47 = v22;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v60 = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_20C479640(v22, v24, &v60);
    *(v28 + 12) = 2082;
    v30 = sub_20C5A0C1C();
    v32 = sub_20C479640(v30, v31, &v60);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_20C472000, v25, v26, "[%{public}s] %{public}s begin", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v29, -1, -1);
    MEMORY[0x20F2FFF90](v28, -1, -1);
  }

  (*(v51 + 8))(v20, v53);
  v33 = v56;
  v34 = v52;
  v35 = v59;
  v36 = v54;
  (*(v56 + 16))(v52, v59, v54);
  v37 = (*(v33 + 80) + 49) & ~*(v33 + 80);
  v38 = (v50 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v47;
  *(v39 + 24) = v24;
  v40 = v46;
  *(v39 + 32) = v58;
  *(v39 + 40) = v40;
  *(v39 + 48) = v57;
  (*(v33 + 32))(v39 + v37, v34, v36);
  *(v39 + v38) = v49;
  *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v41 = sub_20C59F45C();
  v42 = MEMORY[0x277D4DFC0];
  v43 = v55;
  v55[3] = v41;
  v43[4] = v42;
  __swift_allocate_boxed_opaque_existential_1(v43);

  sub_20C59F44C();
  (*(v33 + 8))(v35, v36);

  return result;
}

uint64_t sub_20C526E7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59E0, &qword_20C5A8A20);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C526F48, 0, 0);
}

uint64_t sub_20C526F48()
{
  v1 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_20C59EE6C();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 75;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_20C59E52C();
  *v3 = v0;
  v3[1] = sub_20C527084;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DE0, v2, v4);
}

uint64_t sub_20C527084()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C540DC0, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_20C527208(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A70, &unk_20C5A8990);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C5272D4, 0, 0);
}

uint64_t sub_20C5272D4()
{
  v1 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_20C59EE7C();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 79;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_20C59E0CC();
  *v3 = v0;
  v3[1] = sub_20C527084;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DD0, v2, v4);
}

id sub_20C527414()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - v4;
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v10 = v1;
  v11 = sub_20C5A01BC();
  LODWORD(v1) = sub_20C5A08AC();

  v41 = v1;
  if (os_log_type_enabled(v11, v1))
  {
    v12 = swift_slowAlloc();
    v40 = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v36 = v14;
    v38 = swift_slowAlloc();
    v43 = v38;
    *v13 = 138543874;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2080;
    v39 = v6;
    v15 = *&v10[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_asset];
    v16 = v10;
    v17 = v15;
    v18 = [v17 description];
    v37 = v7;
    v19 = v5;
    v20 = v2;
    v21 = v18;
    v22 = sub_20C5A039C();
    v35 = v11;
    v23 = v22;
    v25 = v24;

    v2 = v20;
    v5 = v19;
    v26 = sub_20C479640(v23, v25, &v43);

    *(v13 + 24) = v26;
    v27 = v35;
    _os_log_impl(&dword_20C472000, v35, v41, "Cleaning up StreamingKeyProvisioner %{public}@ for %{mask.hash}s", v13, 0x20u);
    v28 = v36;
    sub_20C477B50(v36, &qword_27C7C60F0, &unk_20C5A4220);
    MEMORY[0x20F2FFF90](v28, -1, -1);
    v29 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x20F2FFF90](v29, -1, -1);
    v30 = v13;
    v3 = v40;
    MEMORY[0x20F2FFF90](v30, -1, -1);

    (*(v37 + 8))(v9, v39);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  [*&v10[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_contentKeySession] removeContentKeyRecipient_];
  sub_20C527808(v5);
  v31 = sub_20C59EABC();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v31(sub_20C490920, v32);

  (*(v3 + 8))(v5, v2);
  v44.receiver = v10;
  v44.super_class = ObjectType;
  return objc_msgSendSuper2(&v44, sel_dealloc);
}

double sub_20C527808@<D0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v82 = sub_20C59D46C();
  v75 = *(v82 - 8);
  v74 = *(v75 + 64);
  MEMORY[0x28223BE20](v82);
  v72 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v83 = &v58 - v4;
  v5 = sub_20C5A019C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C5A017C();
  MEMORY[0x28223BE20](v9 - 8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v80 = *(v68 - 8);
  v10 = v80[8];
  MEMORY[0x28223BE20](v68);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v58 - v12;
  MEMORY[0x28223BE20](v13);
  v81 = &v58 - v14;
  MEMORY[0x28223BE20](v15);
  v78 = &v58 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v73 = sub_20C59F48C();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FEAC();
  v67 = v19;
  sub_20C52AC60(v1, v19);
  sub_20C59F41C();
  swift_allocObject();
  v22 = sub_20C59F3EC();
  v70 = v21;
  sub_20C59F47C();

  sub_20C5A018C();
  sub_20C5A016C();
  (*(v6 + 8))(v8, v5);
  sub_20C59F47C();
  sub_20C59FF1C();
  swift_allocObject();
  v23 = sub_20C59FEEC();
  v65 = v23;
  v84 = v22;
  v24 = sub_20C5A041C();
  v64 = v24;
  v26 = v25;
  sub_20C59D44C();
  v27 = swift_allocObject();
  v66 = v22;
  *(v27 + 16) = v22;
  *(v27 + 24) = v23;
  *(v27 + 32) = v24;
  *(v27 + 40) = v26;
  v63 = v26;
  *(v27 + 48) = "StreamingKeyProvisioner::releaseContext";
  *(v27 + 56) = 39;
  *(v27 + 64) = 2;

  v28 = v78;
  sub_20C59EA9C();
  v30 = v79;
  v29 = v80;
  v31 = v80[2];
  v77 = v80 + 2;
  v32 = v68;
  v31(v79, v19, v68);
  v62 = v31;
  v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v60 = *(v29 + 80);
  v58 = swift_allocObject();
  v34 = v29[4];
  v61 = v33;
  v35 = v32;
  v34(v58 + v33, v30, v32);
  v36 = v34;
  v59 = v34;
  v37 = v69;
  v31(v69, v28, v35);
  v38 = (v33 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v39 + v33;
  v41 = v35;
  v36(v40, v37, v35);
  v42 = (v39 + v38);
  v43 = v58;
  *v42 = sub_20C540E38;
  v42[1] = v43;
  sub_20C59EA9C();
  v44 = v75;
  v45 = v72;
  v46 = v82;
  (*(v75 + 16))(v72, v83, v82);
  v47 = (*(v44 + 80) + 49) & ~*(v44 + 80);
  v48 = (v74 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v63;
  *(v49 + 16) = v64;
  *(v49 + 24) = v50;
  *(v49 + 32) = "StreamingKeyProvisioner::releaseContext";
  *(v49 + 40) = 39;
  *(v49 + 48) = 2;
  (*(v44 + 32))(v49 + v47, v45, v46);
  v51 = v66;
  *(v49 + v48) = v65;
  *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;
  v52 = v79;
  v53 = v81;
  v62(v79, v81, v41);
  v54 = swift_allocObject();
  v59(v54 + v61, v52, v41);
  v55 = (v54 + v38);
  *v55 = sub_20C540DE8;
  v55[1] = v49;

  sub_20C59EA9C();
  v56 = v80[1];
  v56(v53, v41);
  v56(v78, v41);
  (*(v44 + 8))(v83, v82);
  v56(v67, v41);
  (*(v71 + 8))(v70, v73);

  return result;
}

double sub_20C528170@<D0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v87 = *(v2 - 8);
  v88 = v2;
  v75 = *(v87 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = &v61 - v5;
  v89 = sub_20C59D46C();
  v79 = *(v89 - 8);
  v78 = *(v79 + 64);
  MEMORY[0x28223BE20](v89);
  v76 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v61 - v8;
  v71 = sub_20C5A019C();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C5A017C();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59E0, &qword_20C5A8A20);
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = v83[8];
  MEMORY[0x28223BE20](v13);
  v82 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v61 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v80 = sub_20C59F48C();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FEAC();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v23 + 24) = 42;
  *(v23 + 32) = 2;
  *(v23 + 40) = 97;
  *(v23 + 48) = &unk_20C5A8A30;
  *(v23 + 56) = v22;
  v85 = sub_20C59E52C();
  v24 = v1;
  v25 = v19;
  v70 = v19;
  sub_20C59EA9C();
  sub_20C59F41C();
  swift_allocObject();
  v26 = sub_20C59F3EC();
  v72 = v21;
  sub_20C59F47C();

  sub_20C5A018C();
  sub_20C5A016C();
  (*(v9 + 8))(v11, v71);
  sub_20C59F47C();
  sub_20C59FF1C();
  swift_allocObject();
  v27 = sub_20C59FEEC();
  v71 = v27;
  v91 = v26;
  v28 = sub_20C5A041C();
  v30 = v29;
  v68 = v29;
  sub_20C59D44C();
  v31 = swift_allocObject();
  v69 = v26;
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  *(v31 + 32) = v28;
  *(v31 + 40) = v30;
  *(v31 + 48) = "StreamingKeyProvisioner::fetchCertificateContext";
  *(v31 + 56) = 48;
  *(v31 + 64) = 2;

  v32 = v86;
  sub_20C59EA9C();
  v33 = v83;
  v34 = v83[2];
  v66 = v83 + 2;
  v67 = v34;
  v35 = v82;
  v36 = v84;
  v34(v82, v25, v84);
  v65 = *(v33 + 80);
  v62 = ((v65 + 16) & ~v65) + v14;
  v37 = (v65 + 16) & ~v65;
  v64 = v37;
  v38 = swift_allocObject();
  v63 = v33[4];
  v63(v38 + v37, v35, v36);
  v39 = v87;
  v40 = v88;
  v41 = v74;
  (*(v87 + 16))(v74, v32, v88);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v75 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v41, v40);
  v45 = (v44 + v43);
  *v45 = sub_20C53F3E0;
  v45[1] = v38;
  v46 = v73;
  sub_20C59EA9C();
  v47 = v79;
  v48 = v76;
  v49 = v89;
  (*(v79 + 16))(v76, v90, v89);
  v50 = (*(v47 + 80) + 49) & ~*(v47 + 80);
  v51 = (v78 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v68;
  *(v52 + 16) = v28;
  *(v52 + 24) = v53;
  *(v52 + 32) = "StreamingKeyProvisioner::fetchCertificateContext";
  *(v52 + 40) = 48;
  *(v52 + 48) = 2;
  (*(v47 + 32))(v52 + v50, v48, v49);
  *(v52 + v51) = v71;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v54 = v82;
  v55 = v84;
  v67(v82, v46, v84);
  v56 = (v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v63(v57 + v64, v54, v55);
  v58 = (v57 + v56);
  *v58 = sub_20C53F41C;
  v58[1] = v52;

  sub_20C59EA9C();
  v59 = v83[1];
  v59(v46, v55);
  (*(v87 + 8))(v86, v88);
  (*(v47 + 8))(v90, v89);
  v59(v70, v55);
  (*(v77 + 8))(v72, v80);

  return result;
}

uint64_t sub_20C528A98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20C528AB8, 0, 0);
}

uint64_t sub_20C528AB8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_20C528B60;
  v2 = *(v0 + 16);

  return MEMORY[0x2821AEF08](v2);
}

uint64_t sub_20C528B60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_20C528C54@<D0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v87 = *(v2 - 8);
  v88 = v2;
  v75 = *(v87 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v86 = &v61 - v5;
  v89 = sub_20C59D46C();
  v79 = *(v89 - 8);
  v78 = *(v79 + 64);
  MEMORY[0x28223BE20](v89);
  v76 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v61 - v8;
  v71 = sub_20C5A019C();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C5A017C();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A70, &unk_20C5A8990);
  v83 = *(v13 - 8);
  v84 = v13;
  v14 = v83[8];
  MEMORY[0x28223BE20](v13);
  v82 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v61 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v80 = sub_20C59F48C();
  v77 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FEAC();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v23 + 24) = 42;
  *(v23 + 32) = 2;
  *(v23 + 40) = 103;
  *(v23 + 48) = &unk_20C5A8A18;
  *(v23 + 56) = v22;
  v85 = sub_20C59E0CC();
  v24 = v1;
  v25 = v19;
  v70 = v19;
  sub_20C59EA9C();
  sub_20C59F41C();
  swift_allocObject();
  v26 = sub_20C59F3EC();
  v72 = v21;
  sub_20C59F47C();

  sub_20C5A018C();
  sub_20C5A016C();
  (*(v9 + 8))(v11, v71);
  sub_20C59F47C();
  sub_20C59FF1C();
  swift_allocObject();
  v27 = sub_20C59FEEC();
  v71 = v27;
  v91 = v26;
  v28 = sub_20C5A041C();
  v30 = v29;
  v68 = v29;
  sub_20C59D44C();
  v31 = swift_allocObject();
  v69 = v26;
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  *(v31 + 32) = v28;
  *(v31 + 40) = v30;
  *(v31 + 48) = "StreamingKeyProvisioner::fetchPlaybackVoucher";
  *(v31 + 56) = 45;
  *(v31 + 64) = 2;

  v32 = v86;
  sub_20C59EA9C();
  v33 = v83;
  v34 = v83[2];
  v66 = v83 + 2;
  v67 = v34;
  v35 = v82;
  v36 = v84;
  v34(v82, v25, v84);
  v65 = *(v33 + 80);
  v62 = ((v65 + 16) & ~v65) + v14;
  v37 = (v65 + 16) & ~v65;
  v64 = v37;
  v38 = swift_allocObject();
  v63 = v33[4];
  v63(v38 + v37, v35, v36);
  v39 = v87;
  v40 = v88;
  v41 = v74;
  (*(v87 + 16))(v74, v32, v88);
  v42 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = (v75 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (*(v39 + 32))(v44 + v42, v41, v40);
  v45 = (v44 + v43);
  *v45 = sub_20C53F28C;
  v45[1] = v38;
  v46 = v73;
  sub_20C59EA9C();
  v47 = v79;
  v48 = v76;
  v49 = v89;
  (*(v79 + 16))(v76, v90, v89);
  v50 = (*(v47 + 80) + 49) & ~*(v47 + 80);
  v51 = (v78 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v68;
  *(v52 + 16) = v28;
  *(v52 + 24) = v53;
  *(v52 + 32) = "StreamingKeyProvisioner::fetchPlaybackVoucher";
  *(v52 + 40) = 45;
  *(v52 + 48) = 2;
  (*(v47 + 32))(v52 + v50, v48, v49);
  *(v52 + v51) = v71;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
  v54 = v82;
  v55 = v84;
  v67(v82, v46, v84);
  v56 = (v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v63(v57 + v64, v54, v55);
  v58 = (v57 + v56);
  *v58 = sub_20C53F2C8;
  v58[1] = v52;

  sub_20C59EA9C();
  v59 = v83[1];
  v59(v46, v55);
  (*(v87 + 8))(v86, v88);
  (*(v47 + 8))(v90, v89);
  v59(v70, v55);
  (*(v77 + 8))(v72, v80);

  return result;
}

uint64_t sub_20C52957C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20C52959C, 0, 0);
}

uint64_t sub_20C52959C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_playbackVoucher);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_20C529734;
    v3 = v0[2];

    return MEMORY[0x2821AEF08](v3);
  }

  else
  {
    v4 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D50F20], v4);
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20C529734()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_20C5298AC;
  }

  else
  {
    v2 = sub_20C529848;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C529848()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C5298AC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_20C529910@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v91 = *(v4 - 8);
  v92 = v4;
  v80 = *(v91 + 64);
  MEMORY[0x28223BE20](v4);
  v79 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v63 - v7;
  v93 = sub_20C59D46C();
  v85 = *(v93 - 8);
  v84 = *(v85 + 64);
  MEMORY[0x28223BE20](v93);
  v83 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v63 - v10;
  v73 = sub_20C5A019C();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C5A017C();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40, &unk_20C5A8950);
  v88 = *(v14 - 8);
  v89 = v14;
  v15 = v88[8];
  MEMORY[0x28223BE20](v14);
  v87 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v63 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v21 = sub_20C59E5BC();
  v22 = *(v21 - 8);
  v77 = v21;
  v78 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v24;
  v25 = sub_20C59F48C();
  v81 = *(v25 - 8);
  v82 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FEAC();
  (*(v22 + 16))(v24, a1, v21);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient), *(v2 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient + 24));
  v71 = v20;
  sub_20C59EE2C();
  sub_20C59F41C();
  swift_allocObject();
  v28 = sub_20C59F3EC();
  v74 = v27;
  sub_20C59F47C();

  sub_20C5A018C();
  sub_20C5A016C();
  (*(v72 + 8))(v12, v73);
  sub_20C59F47C();
  sub_20C59FF1C();
  swift_allocObject();
  v29 = sub_20C59FEEC();
  v73 = v29;
  v95 = v28;
  v30 = sub_20C5A041C();
  v72 = v30;
  v32 = v31;
  sub_20C59D44C();
  v33 = swift_allocObject();
  v70 = v28;
  *(v33 + 16) = v28;
  *(v33 + 24) = v29;
  *(v33 + 32) = v30;
  *(v33 + 40) = v32;
  v69 = v32;
  *(v33 + 48) = "StreamingKeyProvisioner::fetchKeyContext";
  *(v33 + 56) = 40;
  *(v33 + 64) = 2;

  v34 = v90;
  sub_20C59EA9C();
  v35 = v88;
  v36 = v88[2];
  v66 = v88 + 2;
  v68 = v36;
  v37 = v87;
  v38 = v89;
  v36(v87, v20, v89);
  v67 = *(v35 + 80);
  v63 = ((v67 + 16) & ~v67) + v15;
  v39 = (v67 + 16) & ~v67;
  v65 = v39;
  v40 = swift_allocObject();
  v64 = v35[4];
  v64(v40 + v39, v37, v38);
  v42 = v91;
  v41 = v92;
  v43 = v79;
  (*(v91 + 16))(v79, v34, v92);
  v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v45 = (v80 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v42 + 32))(v46 + v44, v43, v41);
  v47 = (v46 + v45);
  *v47 = sub_20C540E2C;
  v47[1] = v40;
  v80 = sub_20C59D72C();
  v48 = v75;
  sub_20C59EA9C();
  v49 = v85;
  v50 = v83;
  v51 = v93;
  (*(v85 + 16))(v83, v94, v93);
  v52 = (*(v49 + 80) + 49) & ~*(v49 + 80);
  v53 = (v84 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v69;
  *(v54 + 16) = v72;
  *(v54 + 24) = v55;
  *(v54 + 32) = "StreamingKeyProvisioner::fetchKeyContext";
  *(v54 + 40) = 40;
  *(v54 + 48) = 2;
  (*(v49 + 32))(v54 + v52, v50, v51);
  *(v54 + v53) = v73;
  *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
  v56 = v87;
  v57 = v89;
  v68(v87, v48, v89);
  v58 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v64(v59 + v65, v56, v57);
  v60 = (v59 + v58);
  *v60 = sub_20C540DE4;
  v60[1] = v54;

  sub_20C59EA9C();
  v61 = v88[1];
  v61(v48, v57);
  (*(v91 + 8))(v90, v92);
  (*(v49 + 8))(v94, v93);
  v61(v71, v57);
  (*(v78 + 8))(v76, v77);
  (*(v81 + 8))(v74, v82);

  return result;
}

double sub_20C52A2B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v91 = *(v4 - 8);
  v92 = v4;
  v80 = *(v91 + 64);
  MEMORY[0x28223BE20](v4);
  v79 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v63 - v7;
  v93 = sub_20C59D46C();
  v85 = *(v93 - 8);
  v84 = *(v85 + 64);
  MEMORY[0x28223BE20](v93);
  v83 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v94 = &v63 - v10;
  v73 = sub_20C5A019C();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C5A017C();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40, &unk_20C5A8950);
  v88 = *(v14 - 8);
  v89 = v14;
  v15 = v88[8];
  MEMORY[0x28223BE20](v14);
  v87 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v63 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v21 = sub_20C59E5BC();
  v22 = *(v21 - 8);
  v77 = v21;
  v78 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v24;
  v25 = sub_20C59F48C();
  v81 = *(v25 - 8);
  v82 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FEAC();
  (*(v22 + 16))(v24, a1, v21);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient), *(v2 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient + 24));
  v71 = v20;
  sub_20C59EE3C();
  sub_20C59F41C();
  swift_allocObject();
  v28 = sub_20C59F3EC();
  v74 = v27;
  sub_20C59F47C();

  sub_20C5A018C();
  sub_20C5A016C();
  (*(v72 + 8))(v12, v73);
  sub_20C59F47C();
  sub_20C59FF1C();
  swift_allocObject();
  v29 = sub_20C59FEEC();
  v73 = v29;
  v95 = v28;
  v30 = sub_20C5A041C();
  v72 = v30;
  v32 = v31;
  sub_20C59D44C();
  v33 = swift_allocObject();
  v70 = v28;
  *(v33 + 16) = v28;
  *(v33 + 24) = v29;
  *(v33 + 32) = v30;
  *(v33 + 40) = v32;
  v69 = v32;
  *(v33 + 48) = "StreamingKeyProvisioner::renewKeyContext";
  *(v33 + 56) = 40;
  *(v33 + 64) = 2;

  v34 = v90;
  sub_20C59EA9C();
  v35 = v88;
  v36 = v88[2];
  v66 = v88 + 2;
  v68 = v36;
  v37 = v87;
  v38 = v89;
  v36(v87, v20, v89);
  v67 = *(v35 + 80);
  v63 = ((v67 + 16) & ~v67) + v15;
  v39 = (v67 + 16) & ~v67;
  v65 = v39;
  v40 = swift_allocObject();
  v64 = v35[4];
  v64(v40 + v39, v37, v38);
  v42 = v91;
  v41 = v92;
  v43 = v79;
  (*(v91 + 16))(v79, v34, v92);
  v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v45 = (v80 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v42 + 32))(v46 + v44, v43, v41);
  v47 = (v46 + v45);
  *v47 = sub_20C53EE64;
  v47[1] = v40;
  v80 = sub_20C59D72C();
  v48 = v75;
  sub_20C59EA9C();
  v49 = v85;
  v50 = v83;
  v51 = v93;
  (*(v85 + 16))(v83, v94, v93);
  v52 = (*(v49 + 80) + 49) & ~*(v49 + 80);
  v53 = (v84 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v69;
  *(v54 + 16) = v72;
  *(v54 + 24) = v55;
  *(v54 + 32) = "StreamingKeyProvisioner::renewKeyContext";
  *(v54 + 40) = 40;
  *(v54 + 48) = 2;
  (*(v49 + 32))(v54 + v52, v50, v51);
  *(v54 + v53) = v73;
  *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
  v56 = v87;
  v57 = v89;
  v68(v87, v48, v89);
  v58 = (v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v64(v59 + v65, v56, v57);
  v60 = (v59 + v58);
  *v60 = sub_20C53EEA0;
  v60[1] = v54;

  sub_20C59EA9C();
  v61 = v88[1];
  v61(v48, v57);
  (*(v91 + 8))(v90, v92);
  (*(v49 + 8))(v94, v93);
  v61(v71, v57);
  (*(v78 + 8))(v76, v77);
  (*(v81 + 8))(v74, v82);

  return result;
}

uint64_t sub_20C52AC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0, &qword_20C5A6E88);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0, &unk_20C5A89B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = type metadata accessor for StreamingKeyProvisioner.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C59E5BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v27 - v17;
  v19 = OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_state;
  swift_beginAccess();
  sub_20C53FBCC(a1 + v19, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v18, v11, v12);
    v20 = sub_20C59D37C();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    v21 = sub_20C59E0CC();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v28 = 1;
    sub_20C59E5AC();

    sub_20C477B50(v5, &qword_27C7C59B0, &qword_20C5A6E88);
    sub_20C477B50(v8, &qword_27C7C4AC0, &unk_20C5A89B0);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient), *(a1 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient + 24));
    sub_20C59EE4C();
    v22 = *(v13 + 8);
    v22(v15, v12);
    return (v22)(v18, v12);
  }

  else
  {
    sub_20C53FC30(v11);
    v24 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D50EC0], v24);
    *(swift_allocObject() + 16) = v25;
    return sub_20C59EAAC();
  }
}

void sub_20C52B0FC(void *a1, void *a2, void *a3)
{
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*(*a1 + 16))
  {
    v11 = sub_20C495F5C(a2);
    if ((v12 & 1) != 0 && !*(*(v10 + 56) + 8 * v11))
    {
      sub_20C59FE5C();
      sub_20C5A01AC();
      (*(v7 + 8))(v9, v6);
      v13 = a2;
      v14 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *a1;
      sub_20C494054(a3, v13, isUniquelyReferenced_nonNull_native);

      *a1 = v17;
    }
  }
}

void sub_20C52B284(uint64_t *a1, void *a2)
{
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v5 + 8))(v7, v4);
  v8 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  sub_20C494054(0, v8, isUniquelyReferenced_nonNull_native);

  *a1 = v11;
}

void sub_20C52B3D0(uint64_t *a1, void *a2)
{
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*(*a1 + 16))
  {
    v9 = sub_20C495F5C(a2);
    if (v10)
    {
      if (*(*(v8 + 56) + 8 * v9))
      {
        sub_20C59FE5C();
        sub_20C5A01AC();
        (*(v5 + 8))(v7, v4);
        sub_20C5267E4(2, a2);
      }
    }
  }
}

void sub_20C52B524(void *a1@<X0>, void *a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20C5A01CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_20C495F5C(a2), (v14 & 1) != 0) && !*(*(v12 + 56) + 8 * v13))
  {
    sub_20C59FE5C();
    sub_20C5A01AC();
    (*(v9 + 8))(v11, v8);
    v15 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a1;
    sub_20C494054(1, v15, isUniquelyReferenced_nonNull_native);

    *a1 = v19;
    sub_20C4B3570();
    v17 = sub_20C5A08EC();
    sub_20C4F3830(a3, v17, a4);
  }

  else
  {
    sub_20C59EACC();
  }
}

void sub_20C52B6E4(void *a1, uint64_t a2)
{
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests);
  v12 = a2;
  os_unfair_lock_lock(v9 + 6);
  sub_20C53EC3C(&v9[4], &v13);
  os_unfair_lock_unlock(v9 + 6);
  v10 = v13;
  if (v13 != 2)
  {
    if (!v13)
    {
      sub_20C59FE5C();
      sub_20C5A01AC();
      (*(v6 + 8))(v8, v5);
      sub_20C4F72B0(a1);
      v10 = 0;
    }

    sub_20C53EC58(v10);
  }
}

uint64_t sub_20C52B854@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16))
  {
    result = sub_20C495F5C(a2);
    if (v5)
    {
      v6 = *(*(v4 + 56) + 8 * result);
      result = sub_20C4BFD10(v6);
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 2;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_20C52B8C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59A0, &unk_20C5AAB60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v10);
  v52 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40, &unk_20C5A8950);
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  MEMORY[0x28223BE20](v12);
  v48 = &v41 - v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v16 + 24) = 42;
  *(v16 + 32) = 2;
  *(v16 + 40) = 190;
  *(v16 + 48) = &unk_20C5A8AA0;
  *(v16 + 56) = v15;
  v46 = sub_20C59E5BC();
  v17 = v2;
  v45 = v17;
  v18 = a1;
  sub_20C59EA9C();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v47 = *(v5 + 16);
  v20 = v9;
  v42 = v4;
  v47(&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v4);
  v21 = *(v5 + 80);
  v44 = (v21 + 16) & ~v21;
  v22 = (v6 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v43 = *(v5 + 32);
  v43(v23 + ((v21 + 16) & ~v21), v41, v4);
  v24 = (v23 + v22);
  *v24 = sub_20C53FF50;
  v24[1] = v19;
  v25 = v45;
  v26 = v52;
  sub_20C59EA9C();
  v27 = *(v5 + 8);
  v45 = (v5 + 8);
  v46 = v27;
  v28 = v20;
  v29 = v42;
  v27(v20, v42);
  v30 = swift_allocObject();
  v31 = v25;
  *(v30 + 16) = v25;
  v32 = v29;
  v47(v28, v26, v29);
  v33 = swift_allocObject();
  v43(v33 + v44, v28, v32);
  v34 = (v33 + v22);
  *v34 = sub_20C53FF9C;
  v34[1] = v30;
  sub_20C59D72C();
  v35 = v31;
  v36 = v48;
  sub_20C59EA9C();
  v46(v52, v32);
  *(swift_allocObject() + 16) = v35;
  sub_20C4B3570();
  v37 = v35;
  v38 = sub_20C5A08EC();
  v39 = v49;
  sub_20C59EA7C();

  return (*(v50 + 8))(v36, v39);
}

uint64_t sub_20C52BD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[303] = a3;
  v3[297] = a2;
  v3[291] = a1;
  v4 = sub_20C59F48C();
  v3[309] = v4;
  v3[315] = *(v4 - 8);
  v3[321] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0, &unk_20C5A89B0);
  v3[327] = swift_task_alloc();
  v5 = sub_20C59D37C();
  v3[333] = v5;
  v6 = *(v5 - 8);
  v3[339] = v6;
  v3[345] = *(v6 + 64);
  v3[351] = swift_task_alloc();
  v3[357] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0, &qword_20C5A6E88) - 8);
  v3[363] = v7;
  v3[369] = *(v7 + 64);
  v3[375] = swift_task_alloc();
  v3[381] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59A0, &unk_20C5AAB60);
  v3[382] = v8;
  v3[383] = *(v8 - 8);
  v3[384] = swift_task_alloc();
  v9 = sub_20C59E0CC();
  v3[385] = v9;
  v3[386] = *(v9 - 8);
  v3[387] = swift_task_alloc();
  v10 = sub_20C59E52C();
  v3[388] = v10;
  v11 = *(v10 - 8);
  v3[389] = v11;
  v3[390] = *(v11 + 64);
  v3[391] = swift_task_alloc();
  v3[392] = swift_task_alloc();
  v3[393] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C52C0C4, 0, 0);
}

uint64_t sub_20C52C0C4()
{
  v1 = v0[303];
  v2 = *(v0[297] + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_20C540D88((v2 + 16));
  v3 = v0[297];
  os_unfair_lock_unlock((v2 + 24));

  v4 = swift_allocObject();
  v0[394] = v4;
  *(v4 + 16) = v3;
  v5 = v3;
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  v0[395] = v6;
  *(v6 + 16) = v5;
  v7 = v5;
  swift_asyncLet_begin();
  v8 = swift_allocObject();
  v0[396] = v8;
  *(v8 + 16) = v7;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);
  swift_asyncLet_begin();
  v10 = v0[393];

  return MEMORY[0x282200930](v0 + 162, v10, sub_20C52C2E0, v0 + 346);
}

uint64_t sub_20C52C2E0()
{
  *(v1 + 3176) = v0;
  if (v0)
  {
    v2 = sub_20C52D788;
  }

  else
  {
    v2 = sub_20C52C314;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C52C314()
{
  v1 = v0[393];
  v2 = v0[392];
  v3 = v0[389];
  v4 = v0[388];
  v5 = v0[297];
  v6 = *(v3 + 16);
  v0[398] = v6;
  v0[399] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = v5 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_workoutIdentifier;
  v0[400] = *(v5 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_workoutIdentifier);
  v0[401] = *(v7 + 8);

  return MEMORY[0x282200930](v0 + 2, v0 + 289, sub_20C52C3C8, v0 + 304);
}

uint64_t sub_20C52C3C8()
{
  v1[402] = v0;
  if (v0)
  {
    (*(v1[389] + 8))(v1[392], v1[388]);

    return MEMORY[0x2822009F8](sub_20C52D96C, 0, 0);
  }

  else
  {
    v2 = v1[289];
    v1[403] = v2;
    v3 = v1[290];
    v1[404] = v3;
    sub_20C4E6460(v2, v3);
    v4 = v1[387];

    return MEMORY[0x282200930](v1 + 82, v4, sub_20C52C49C, v1 + 328);
  }
}

uint64_t sub_20C52C49C()
{
  v1[405] = v0;
  if (v0)
  {
    v2 = v1[404];
    v3 = v1[403];
    (*(v1[389] + 8))(v1[392], v1[388]);
    sub_20C4BFD68(v3, v2);
    v4 = sub_20C52DB50;
  }

  else
  {
    v4 = sub_20C52C544;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20C52C544()
{
  v1 = (v0 + 2168);
  v2 = *(v0 + 3088);
  v3 = *(v0 + 3080);
  v4 = *(v0 + 3048);
  v5 = *(v0 + 2424);
  v6 = *(v0 + 2376);
  (*(v2 + 16))(v4, *(v0 + 3096), v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v7 = *(v6 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_deviceIdentificationBehavior + 8);
  if (v7)
  {
    v8 = 0xD00000000000002CLL;
  }

  else
  {
    v8 = 0xD00000000000001FLL;
  }

  if (v7)
  {
    v9 = "workout-license-streaming-start";
  }

  else
  {
    v9 = "isioner::fetchKeyContext";
  }

  v10 = v9 | 0x8000000000000000;
  if ([v5 identifier])
  {
    sub_20C5A0ABC();
    swift_unknownObjectRelease();
    v11 = *(v0 + 2256);
    v12 = __swift_project_boxed_opaque_existential_1((v0 + 2232), v11);
    *(v0 + 2288) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2264));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    sub_20C4947E4((v0 + 2264), (v0 + 2168));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2232));
  }

  else
  {
    *v1 = 0u;
    *(v0 + 2184) = 0u;
  }

  v14 = *(v0 + 2184);
  *(v0 + 2136) = *v1;
  *(v0 + 2152) = v14;
  v15 = *(v0 + 2160);
  if (!v15)
  {

    sub_20C477B50(v0 + 2136, &unk_27C7C59C0, &qword_20C5A89F8);
    *(v0 + 2200) = 0u;
    *(v0 + 2216) = 0u;
LABEL_17:
    sub_20C477B50(v0 + 2200, &qword_27C7C44D0, &unk_20C5A35A0);
LABEL_19:
    v32 = *(v0 + 3232);
    v33 = *(v0 + 3224);
    v110 = *(v0 + 3136);
    v34 = *(v0 + 3112);
    v35 = *(v0 + 3104);
    v36 = *(v0 + 3048);
    v37 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v38 = swift_allocError();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D50F08], v37);
    *(swift_allocObject() + 16) = v38;
    v40 = v38;
    v31 = sub_20C59E5BC();
    sub_20C59EAAC();
    sub_20C4BFD68(v33, v32);
    sub_20C477B50(v36, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v34 + 8))(v110, v35);
    v41 = v38;
LABEL_20:

    goto LABEL_21;
  }

  v16 = __swift_project_boxed_opaque_existential_1((v0 + 2136), *(v0 + 2160));
  *(v0 + 2224) = v15;
  v17 = __swift_allocate_boxed_opaque_existential_1((v0 + 2200));
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2136));
  if (!*(v0 + 2224))
  {

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v18 = *(v0 + 2712);
  v19 = *(v0 + 2664);
  v20 = *(v0 + 2616);
  sub_20C59D36C();

  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    v21 = *(v0 + 3232);
    v22 = *(v0 + 3224);
    v109 = *(v0 + 3136);
    v23 = *(v0 + 3112);
    v24 = *(v0 + 3104);
    v25 = *(v0 + 3048);
    v26 = *(v0 + 2616);

    sub_20C477B50(v26, &qword_27C7C4AC0, &unk_20C5A89B0);
    v27 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D50ED0], v27);
    *(swift_allocObject() + 16) = v28;
    v30 = v28;
    v31 = sub_20C59E5BC();
    sub_20C59EAAC();
    sub_20C4BFD68(v22, v21);
    sub_20C477B50(v25, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v23 + 8))(v109, v24);
LABEL_38:
    v41 = v28;
    goto LABEL_20;
  }

  v46 = *(*(v0 + 2712) + 32);
  v46(*(v0 + 2856), *(v0 + 2616), *(v0 + 2664));
  v47 = sub_20C59D34C();
  if (!v48)
  {
    goto LABEL_34;
  }

  if (v47 == 6581107 && v48 == 0xE300000000000000)
  {

    goto LABEL_29;
  }

  v49 = sub_20C5A0E9C();

  if ((v49 & 1) == 0)
  {
LABEL_34:
    v67 = *(v0 + 3224);
    v68 = *(v0 + 3112);
    v108 = *(v0 + 3104);
    v112 = *(v0 + 3136);
    v104 = *(v0 + 3232);
    v106 = *(v0 + 3048);
    v69 = *(v0 + 2856);
    v70 = *(v0 + 2712);
    v71 = *(v0 + 2664);

    v72 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v72 - 8) + 104))(v73, *MEMORY[0x277D50F00], v72);
    *(swift_allocObject() + 16) = v28;
    v74 = v28;
    v31 = sub_20C59E5BC();
LABEL_37:
    sub_20C59EAAC();
    sub_20C4BFD68(v67, v104);
    (*(v70 + 8))(v69, v71);
    sub_20C477B50(v106, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v68 + 8))(v112, v108);
    goto LABEL_38;
  }

LABEL_29:
  v50 = sub_20C59D33C();
  if (!v51)
  {
LABEL_36:
    v67 = *(v0 + 3224);
    v68 = *(v0 + 3112);
    v108 = *(v0 + 3104);
    v112 = *(v0 + 3136);
    v104 = *(v0 + 3232);
    v106 = *(v0 + 3048);
    v69 = *(v0 + 2856);
    v70 = *(v0 + 2712);
    v71 = *(v0 + 2664);

    v75 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v75 - 8) + 104))(v76, *MEMORY[0x277D50EE8], v75);
    *(swift_allocObject() + 16) = v28;
    v77 = v28;
    v31 = sub_20C59E5BC();
    goto LABEL_37;
  }

  v52 = v51;
  v53 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v53 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

    goto LABEL_36;
  }

  v93 = *(v0 + 3224);
  v94 = *(v0 + 3232);
  v95 = *(v0 + 3200);
  v96 = *(v0 + 3208);
  v82 = *(v0 + 3184);
  v54 = *(v0 + 3136);
  v97 = v54;
  v100 = *(v0 + 3128);
  v85 = *(v0 + 3120);
  v98 = *(v0 + 3112);
  v55 = *(v0 + 3104);
  v105 = v55;
  v111 = *(v0 + 3048);
  v103 = *(v0 + 3000);
  v88 = *(v0 + 2904);
  v90 = *(v0 + 2952);
  v107 = *(v0 + 2856);
  v102 = *(v0 + 2808);
  v87 = *(v0 + 2760);
  v99 = *(v0 + 2712);
  v101 = *(v0 + 2664);
  v56 = *(v0 + 2568);
  v57 = *(v0 + 2520);
  v80 = *(v0 + 2472);
  v91 = *(v0 + 2424);
  v92 = v50;
  sub_20C59FEAC();
  v58 = sub_20C5268EC("AVContentKeyRequest.makeServerPlaybackContext", 45, 2, &dword_20C472000, 1, (v0 + 2056));
  (*(v57 + 8))(v56, v80, v58);
  v82(v100, v54, v55);
  sub_20C477580(v0 + 2056, v0 + 1976);
  (*(v99 + 16))(v102, v107, v101);
  sub_20C4775E4(v111, v103, &qword_27C7C59B0, &qword_20C5A6E88);
  v59 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v79 = (v85 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v86 + 47) & 0xFFFFFFFFFFFFFFF8;
  v81 = (*(v99 + 80) + v84 + 16) & ~*(v99 + 80);
  v89 = (v87 + *(v88 + 80) + v81) & ~*(v88 + 80);
  v61 = swift_allocObject();
  (*(v98 + 32))(v61 + v59, v100, v105);
  v62 = (v61 + v79);
  *v62 = v93;
  v62[1] = v94;
  *(v61 + v83) = v91;
  v63 = (v61 + v60);
  *v63 = v92;
  v63[1] = v52;
  sub_20C4780E8((v0 + 1976), v61 + v86);
  v64 = (v61 + v84);
  *v64 = v95;
  v64[1] = v96;
  v46(v61 + v81, v102, v101);
  sub_20C4F8A00(v103, v61 + v89);
  v65 = (v61 + ((v90 + v89 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v65 = v8;
  v65[1] = v10;
  v31 = sub_20C59E5BC();
  v66 = v91;

  sub_20C59EA9C();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  (*(v99 + 8))(v107, v101);
  sub_20C477B50(v111, &qword_27C7C59B0, &qword_20C5A6E88);
  (*(v98 + 8))(v97, v105);
LABEL_21:
  v42 = *(v0 + 3072);
  v43 = swift_task_alloc();
  *(v0 + 3248) = v43;
  *(v43 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v43 + 24) = 42;
  *(v43 + 32) = 2;
  *(v43 + 40) = 202;
  *(v43 + 48) = v42;
  v44 = swift_task_alloc();
  *(v0 + 3256) = v44;
  sub_20C59E5BC();
  *v44 = v0;
  v44[1] = sub_20C52D208;
  v45 = *(v0 + 2328);

  return MEMORY[0x2822008A0](v45, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DD8, v43, v31);
}

uint64_t sub_20C52D208()
{
  v2 = *v1;
  *(*v1 + 3264) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C52D544, 0, 0);
  }

  else
  {
    v3 = v2[384];
    v4 = v2[383];
    v5 = v2[382];

    (*(v4 + 8))(v3, v5);

    return MEMORY[0x282200920](v2 + 2, v2 + 289, sub_20C52D388, v2 + 376);
  }
}

uint64_t sub_20C52D41C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C52D544()
{
  (*(v0[383] + 8))(v0[384], v0[382]);

  return MEMORY[0x282200920](v0 + 2, v0 + 289, sub_20C52D5C4, v0 + 358);
}

uint64_t sub_20C52D658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C52D83C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C52DA20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C52DC04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C52DD34(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59E0, &qword_20C5A8A20);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C52DE00, 0, 0);
}

uint64_t sub_20C52DE00()
{
  v1 = v0[6];
  sub_20C528170(v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 192;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_20C59E52C();
  *v3 = v0;
  v3[1] = sub_20C52DF24;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DE0, v2, v4);
}

uint64_t sub_20C52DF24()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C52E0A8, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_20C52E0A8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C52E128(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A70, &unk_20C5A8990);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C52E1F4, 0, 0);
}

uint64_t sub_20C52E1F4()
{
  v1 = v0[6];
  sub_20C528C54(v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 193;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_20C59E0CC();
  *v3 = v0;
  v3[1] = sub_20C527084;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DD0, v2, v4);
}

uint64_t sub_20C52E318(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59D0, &qword_20C5A5370);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[5] = v3;
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_20C52E420;

  return sub_20C52E8BC(v3);
}

uint64_t sub_20C52E420()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20C52E858;
  }

  else
  {
    v2 = sub_20C52E534;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C52E534()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 194;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);
  *v3 = v0;
  v3[1] = sub_20C52E658;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DDC, v2, v4);
}

uint64_t sub_20C52E658()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C52E7DC, 0, 0);
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_20C52E7DC()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C52E858()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C52E8BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A60, &qword_20C5A5368);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C52E99C, 0, 0);
}

uint64_t sub_20C52E99C()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_deviceIdentificationBehavior + 8))
  {
    v3 = v0[7];
    v2 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient), *(v1 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient + 24));
    sub_20C59EE1C();
    (*(v5 + 16))(v3, v2, v6);
    v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v8 = swift_allocObject();
    (*(v5 + 32))(v8 + v7, v3, v6);
    v9 = (v8 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v9 = sub_20C53AC2C;
    v9[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);
    sub_20C59EA9C();
    (*(v5 + 8))(v2, v6);
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_20C5A8850;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);
    sub_20C59EAAC();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_20C52EBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  v3 = sub_20C59E5BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StreamingKeyProvisioner.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_state;
  swift_beginAccess();
  sub_20C53FBCC(v2 + v12, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20C53FC30(v11);
  v14 = *(v4 + 16);
  v15 = EnumCaseMultiPayload == 2;
  v16 = v22;
  if (v15)
  {
    v14(v8, v22, v3);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_20C53FC8C(v8, v2 + v12);
    swift_endAccess();
  }

  v17 = v23;
  v14(v23, v16, v3);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  (*(v4 + 32))(v19 + v18, v17, v3);
  return sub_20C59EAAC();
}

uint64_t sub_20C52EE24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59A0, &unk_20C5AAB60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40, &unk_20C5A8950);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v16 + 24) = 42;
  *(v16 + 32) = 2;
  *(v16 + 40) = 223;
  *(v16 + 48) = &unk_20C5A89A8;
  *(v16 + 56) = v15;
  sub_20C59E5BC();
  v17 = v2;
  v18 = a1;
  sub_20C59EA9C();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v5 + 16))(v7, v10, v4);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v20, v7, v4);
  v23 = (v22 + v21);
  *v23 = sub_20C53EE14;
  v23[1] = v19;
  sub_20C59D72C();
  v24 = v17;
  sub_20C59EA9C();
  (*(v5 + 8))(v10, v4);
  *(swift_allocObject() + 16) = v24;
  sub_20C4B3570();
  v25 = v24;
  v26 = sub_20C5A08EC();
  v27 = v30;
  sub_20C59EA7C();

  return (*(v31 + 8))(v14, v27);
}

uint64_t sub_20C52F1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[303] = a3;
  v3[297] = a2;
  v3[291] = a1;
  v4 = sub_20C59F48C();
  v3[309] = v4;
  v3[315] = *(v4 - 8);
  v3[321] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0, &unk_20C5A89B0);
  v3[327] = swift_task_alloc();
  v5 = sub_20C59D37C();
  v3[333] = v5;
  v6 = *(v5 - 8);
  v3[339] = v6;
  v3[345] = *(v6 + 64);
  v3[351] = swift_task_alloc();
  v3[357] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0, &qword_20C5A6E88) - 8);
  v3[363] = v7;
  v3[369] = *(v7 + 64);
  v3[375] = swift_task_alloc();
  v3[381] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59A0, &unk_20C5AAB60);
  v3[382] = v8;
  v3[383] = *(v8 - 8);
  v3[384] = swift_task_alloc();
  v9 = sub_20C59E0CC();
  v3[385] = v9;
  v3[386] = *(v9 - 8);
  v3[387] = swift_task_alloc();
  v10 = sub_20C59E52C();
  v3[388] = v10;
  v11 = *(v10 - 8);
  v3[389] = v11;
  v3[390] = *(v11 + 64);
  v3[391] = swift_task_alloc();
  v3[392] = swift_task_alloc();
  v3[393] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C52F4EC, 0, 0);
}

uint64_t sub_20C52F4EC()
{
  v1 = v0[303];
  v2 = *(v0[297] + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_20C53EEEC((v2 + 16));
  v3 = v0[297];
  os_unfair_lock_unlock((v2 + 24));

  v4 = swift_allocObject();
  v0[394] = v4;
  *(v4 + 16) = v3;
  v5 = v3;
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  v0[395] = v6;
  *(v6 + 16) = v5;
  v7 = v5;
  swift_asyncLet_begin();
  v8 = swift_allocObject();
  v0[396] = v8;
  *(v8 + 16) = v7;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);
  swift_asyncLet_begin();
  v10 = v0[393];

  return MEMORY[0x282200930](v0 + 162, v10, sub_20C52F708, v0 + 346);
}

uint64_t sub_20C52F708()
{
  *(v1 + 3176) = v0;
  if (v0)
  {
    v2 = sub_20C530958;
  }

  else
  {
    v2 = sub_20C52F73C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C52F73C()
{
  v1 = v0[393];
  v2 = v0[392];
  v3 = v0[389];
  v4 = v0[388];
  v5 = v0[297];
  v6 = *(v3 + 16);
  v0[398] = v6;
  v0[399] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = v5 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_workoutIdentifier;
  v0[400] = *(v5 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_workoutIdentifier);
  v0[401] = *(v7 + 8);

  return MEMORY[0x282200930](v0 + 2, v0 + 289, sub_20C52F7F0, v0 + 304);
}

uint64_t sub_20C52F7F0()
{
  v1[402] = v0;
  if (v0)
  {
    (*(v1[389] + 8))(v1[392], v1[388]);

    return MEMORY[0x2822009F8](sub_20C530A0C, 0, 0);
  }

  else
  {
    v2 = v1[289];
    v1[403] = v2;
    v3 = v1[290];
    v1[404] = v3;
    sub_20C4E6460(v2, v3);
    v4 = v1[387];

    return MEMORY[0x282200930](v1 + 82, v4, sub_20C52F8C4, v1 + 328);
  }
}

uint64_t sub_20C52F8C4()
{
  v1[405] = v0;
  if (v0)
  {
    v2 = v1[404];
    v3 = v1[403];
    (*(v1[389] + 8))(v1[392], v1[388]);
    sub_20C4BFD68(v3, v2);
    v4 = sub_20C530AC0;
  }

  else
  {
    v4 = sub_20C52F96C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20C52F96C()
{
  v1 = (v0 + 2168);
  v2 = *(v0 + 3088);
  v3 = *(v0 + 3080);
  v4 = *(v0 + 3048);
  v5 = *(v0 + 2424);
  v6 = *(v0 + 2376);
  (*(v2 + 16))(v4, *(v0 + 3096), v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v7 = *(v6 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_deviceIdentificationBehavior + 8);
  if (v7)
  {
    v8 = 0xD00000000000002CLL;
  }

  else
  {
    v8 = 0xD00000000000001FLL;
  }

  if (v7)
  {
    v9 = "est.makeServerPlaybackContext";
  }

  else
  {
    v9 = "isioner::renewKeyContext";
  }

  v10 = v9 | 0x8000000000000000;
  if ([v5 identifier])
  {
    sub_20C5A0ABC();
    swift_unknownObjectRelease();
    v11 = *(v0 + 2256);
    v12 = __swift_project_boxed_opaque_existential_1((v0 + 2232), v11);
    *(v0 + 2288) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2264));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    sub_20C4947E4((v0 + 2264), (v0 + 2168));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2232));
  }

  else
  {
    *v1 = 0u;
    *(v0 + 2184) = 0u;
  }

  v14 = *(v0 + 2184);
  *(v0 + 2136) = *v1;
  *(v0 + 2152) = v14;
  v15 = *(v0 + 2160);
  if (!v15)
  {

    sub_20C477B50(v0 + 2136, &unk_27C7C59C0, &qword_20C5A89F8);
    *(v0 + 2200) = 0u;
    *(v0 + 2216) = 0u;
LABEL_17:
    sub_20C477B50(v0 + 2200, &qword_27C7C44D0, &unk_20C5A35A0);
LABEL_19:
    v32 = *(v0 + 3232);
    v33 = *(v0 + 3224);
    v110 = *(v0 + 3136);
    v34 = *(v0 + 3112);
    v35 = *(v0 + 3104);
    v36 = *(v0 + 3048);
    v37 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v38 = swift_allocError();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D50F08], v37);
    *(swift_allocObject() + 16) = v38;
    v40 = v38;
    v31 = sub_20C59E5BC();
    sub_20C59EAAC();
    sub_20C4BFD68(v33, v32);
    sub_20C477B50(v36, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v34 + 8))(v110, v35);
    v41 = v38;
LABEL_20:

    goto LABEL_21;
  }

  v16 = __swift_project_boxed_opaque_existential_1((v0 + 2136), *(v0 + 2160));
  *(v0 + 2224) = v15;
  v17 = __swift_allocate_boxed_opaque_existential_1((v0 + 2200));
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2136));
  if (!*(v0 + 2224))
  {

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v18 = *(v0 + 2712);
  v19 = *(v0 + 2664);
  v20 = *(v0 + 2616);
  sub_20C59D36C();

  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    v21 = *(v0 + 3232);
    v22 = *(v0 + 3224);
    v109 = *(v0 + 3136);
    v23 = *(v0 + 3112);
    v24 = *(v0 + 3104);
    v25 = *(v0 + 3048);
    v26 = *(v0 + 2616);

    sub_20C477B50(v26, &qword_27C7C4AC0, &unk_20C5A89B0);
    v27 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D50ED0], v27);
    *(swift_allocObject() + 16) = v28;
    v30 = v28;
    v31 = sub_20C59E5BC();
    sub_20C59EAAC();
    sub_20C4BFD68(v22, v21);
    sub_20C477B50(v25, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v23 + 8))(v109, v24);
LABEL_38:
    v41 = v28;
    goto LABEL_20;
  }

  v46 = *(*(v0 + 2712) + 32);
  v46(*(v0 + 2856), *(v0 + 2616), *(v0 + 2664));
  v47 = sub_20C59D34C();
  if (!v48)
  {
    goto LABEL_34;
  }

  if (v47 == 6581107 && v48 == 0xE300000000000000)
  {

    goto LABEL_29;
  }

  v49 = sub_20C5A0E9C();

  if ((v49 & 1) == 0)
  {
LABEL_34:
    v67 = *(v0 + 3224);
    v68 = *(v0 + 3112);
    v108 = *(v0 + 3104);
    v112 = *(v0 + 3136);
    v104 = *(v0 + 3232);
    v106 = *(v0 + 3048);
    v69 = *(v0 + 2856);
    v70 = *(v0 + 2712);
    v71 = *(v0 + 2664);

    v72 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v72 - 8) + 104))(v73, *MEMORY[0x277D50F00], v72);
    *(swift_allocObject() + 16) = v28;
    v74 = v28;
    v31 = sub_20C59E5BC();
LABEL_37:
    sub_20C59EAAC();
    sub_20C4BFD68(v67, v104);
    (*(v70 + 8))(v69, v71);
    sub_20C477B50(v106, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v68 + 8))(v112, v108);
    goto LABEL_38;
  }

LABEL_29:
  v50 = sub_20C59D33C();
  if (!v51)
  {
LABEL_36:
    v67 = *(v0 + 3224);
    v68 = *(v0 + 3112);
    v108 = *(v0 + 3104);
    v112 = *(v0 + 3136);
    v104 = *(v0 + 3232);
    v106 = *(v0 + 3048);
    v69 = *(v0 + 2856);
    v70 = *(v0 + 2712);
    v71 = *(v0 + 2664);

    v75 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v75 - 8) + 104))(v76, *MEMORY[0x277D50EE8], v75);
    *(swift_allocObject() + 16) = v28;
    v77 = v28;
    v31 = sub_20C59E5BC();
    goto LABEL_37;
  }

  v52 = v51;
  v53 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v53 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

    goto LABEL_36;
  }

  v93 = *(v0 + 3224);
  v94 = *(v0 + 3232);
  v95 = *(v0 + 3200);
  v96 = *(v0 + 3208);
  v82 = *(v0 + 3184);
  v54 = *(v0 + 3136);
  v97 = v54;
  v100 = *(v0 + 3128);
  v85 = *(v0 + 3120);
  v98 = *(v0 + 3112);
  v55 = *(v0 + 3104);
  v105 = v55;
  v111 = *(v0 + 3048);
  v103 = *(v0 + 3000);
  v88 = *(v0 + 2904);
  v90 = *(v0 + 2952);
  v107 = *(v0 + 2856);
  v102 = *(v0 + 2808);
  v87 = *(v0 + 2760);
  v99 = *(v0 + 2712);
  v101 = *(v0 + 2664);
  v56 = *(v0 + 2568);
  v57 = *(v0 + 2520);
  v80 = *(v0 + 2472);
  v91 = *(v0 + 2424);
  v92 = v50;
  sub_20C59FEAC();
  v58 = sub_20C5268EC("AVContentKeyRequest.makeServerPlaybackContext", 45, 2, &dword_20C472000, 1, (v0 + 2056));
  (*(v57 + 8))(v56, v80, v58);
  v82(v100, v54, v55);
  sub_20C477580(v0 + 2056, v0 + 1976);
  (*(v99 + 16))(v102, v107, v101);
  sub_20C4775E4(v111, v103, &qword_27C7C59B0, &qword_20C5A6E88);
  v59 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v79 = (v85 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v86 + 47) & 0xFFFFFFFFFFFFFFF8;
  v81 = (*(v99 + 80) + v84 + 16) & ~*(v99 + 80);
  v89 = (v87 + *(v88 + 80) + v81) & ~*(v88 + 80);
  v61 = swift_allocObject();
  (*(v98 + 32))(v61 + v59, v100, v105);
  v62 = (v61 + v79);
  *v62 = v93;
  v62[1] = v94;
  *(v61 + v83) = v91;
  v63 = (v61 + v60);
  *v63 = v92;
  v63[1] = v52;
  sub_20C4780E8((v0 + 1976), v61 + v86);
  v64 = (v61 + v84);
  *v64 = v95;
  v64[1] = v96;
  v46(v61 + v81, v102, v101);
  sub_20C4F8A00(v103, v61 + v89);
  v65 = (v61 + ((v90 + v89 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v65 = v8;
  v65[1] = v10;
  v31 = sub_20C59E5BC();
  v66 = v91;

  sub_20C59EA9C();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2056));
  (*(v99 + 8))(v107, v101);
  sub_20C477B50(v111, &qword_27C7C59B0, &qword_20C5A6E88);
  (*(v98 + 8))(v97, v105);
LABEL_21:
  v42 = *(v0 + 3072);
  v43 = swift_task_alloc();
  *(v0 + 3248) = v43;
  *(v43 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v43 + 24) = 42;
  *(v43 + 32) = 2;
  *(v43 + 40) = 235;
  *(v43 + 48) = v42;
  v44 = swift_task_alloc();
  *(v0 + 3256) = v44;
  sub_20C59E5BC();
  *v44 = v0;
  v44[1] = sub_20C530630;
  v45 = *(v0 + 2328);

  return MEMORY[0x2822008A0](v45, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C53F0E8, v43, v31);
}

uint64_t sub_20C530630()
{
  v2 = *v1;
  *(*v1 + 3264) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C530844, 0, 0);
  }

  else
  {
    v3 = v2[384];
    v4 = v2[383];
    v5 = v2[382];

    (*(v4 + 8))(v3, v5);

    return MEMORY[0x282200920](v2 + 2, v2 + 289, sub_20C5307B0, v2 + 376);
  }
}

uint64_t sub_20C530844()
{
  (*(v0[383] + 8))(v0[384], v0[382]);

  return MEMORY[0x282200920](v0 + 2, v0 + 289, sub_20C5308C4, v0 + 358);
}

uint64_t sub_20C530B74(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59E0, &qword_20C5A8A20);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C530C40, 0, 0);
}

uint64_t sub_20C530C40()
{
  v1 = v0[6];
  sub_20C528170(v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 225;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_20C59E52C();
  *v3 = v0;
  v3[1] = sub_20C527084;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C53F310, v2, v4);
}

uint64_t sub_20C530D64(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A70, &unk_20C5A8990);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C530E30, 0, 0);
}

uint64_t sub_20C530E30()
{
  v1 = v0[6];
  sub_20C528C54(v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 226;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_20C59E0CC();
  *v3 = v0;
  v3[1] = sub_20C527084;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DD0, v2, v4);
}

uint64_t sub_20C530F54(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59D0, &qword_20C5A5370);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[5] = v3;
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_20C53105C;

  return sub_20C52E8BC(v3);
}

uint64_t sub_20C53105C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20C540DB4;
  }

  else
  {
    v2 = sub_20C531170;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C531170()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 227;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);
  *v3 = v0;
  v3[1] = sub_20C531294;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C53F104, v2, v4);
}

uint64_t sub_20C531294()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C540DB0, 0, 0);
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_20C531418(void *a1, void *a2)
{
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v8 = sub_20C4B19D8(v29[2], v29[3]);
  if (v8)
  {
    sub_20C59FE5C();
    v9 = a2;
    v10 = a1;
    v11 = sub_20C5A01BC();
    v12 = sub_20C5A08AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      v26 = swift_slowAlloc();
      v29[0] = v26;
      *v13 = 138543618;
      *(v13 + 4) = v9;
      *v14 = v9;
      *(v13 + 12) = 2082;
      swift_getErrorValue();
      HIDWORD(v24) = v12;
      v15 = v27;
      v16 = v28;
      v17 = v9;
      v18 = MEMORY[0x20F2FF3F0](v15, v16);
      v20 = sub_20C479640(v18, v19, v29);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_20C472000, v11, BYTE4(v24), "%{public}@ Got an XPC interruption, retrying processing Streaming Key Request: %{public}s", v13, 0x16u);
      v21 = v25;
      sub_20C477B50(v25, &qword_27C7C60F0, &unk_20C5A4220);
      MEMORY[0x20F2FFF90](v21, -1, -1);
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x20F2FFF90](v22, -1, -1);
      MEMORY[0x20F2FFF90](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8 & 1;
}

uint64_t sub_20C531684@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v86 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40, &unk_20C5A8950);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - v9;
  MEMORY[0x28223BE20](v11);
  v91 = &v77 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v94 = *(v84 - 8);
  v87 = *(v94 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v77 - v15;
  MEMORY[0x28223BE20](v16);
  v85 = &v77 - v17;
  MEMORY[0x28223BE20](v18);
  v93 = &v77 - v19;
  v80 = v10;
  sub_20C52EE24(a1, v10);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20C53E8F8;
  *(v21 + 24) = v20;
  v89 = *(v5 + 16);
  v89(v7, v10, v4);
  v22 = *(v5 + 80);
  v23 = ((v22 + 16) & ~v22);
  v82 = v23;
  v24 = &v23[v6 + 7] & 0xFFFFFFFFFFFFFFF8;
  v77 = v22;
  v78 = v24;
  v25 = swift_allocObject();
  v81 = *(v5 + 32);
  v81(&v23[v25], v7, v4);
  v26 = (v25 + v24);
  *v26 = sub_20C53E938;
  v26[1] = v21;
  sub_20C59D72C();
  v27 = v2;
  v28 = v91;
  sub_20C59EA9C();
  v79 = *(v5 + 8);
  v88 = v5 + 8;
  v29 = v80;
  v79(v80, v4);
  v30 = swift_allocObject();
  v31 = v89;
  v32 = v90;
  *(v30 + 16) = v27;
  *(v30 + 24) = v32;
  v33 = v29;
  v34 = v28;
  v31(v29, v28, v4);
  v35 = v78;
  v36 = swift_allocObject();
  v81(&v82[v36], v33, v4);
  v37 = (v36 + v35);
  *v37 = sub_20C53E968;
  v37[1] = v30;
  v38 = v27;
  v39 = v32;
  v82 = v39;
  v40 = v92;
  sub_20C59EA9C();
  v79(v34, v4);
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = v39;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_20C53EA60;
  *(v42 + 24) = v41;
  v43 = v94;
  v44 = *(v94 + 16);
  v90 = (v94 + 16);
  v91 = v44;
  v46 = v83;
  v45 = v84;
  (v44)(v83, v40, v84);
  v47 = *(v43 + 80);
  v48 = (v47 + 16) & ~v47;
  v88 = v48;
  v89 = v47;
  v49 = (v87 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v87 = *(v43 + 32);
  v87(v50 + v48, v46, v45);
  v51 = (v50 + v49);
  *v51 = sub_20C4907C8;
  v51[1] = v42;
  v52 = v38;
  v53 = v82;
  v54 = v85;
  sub_20C59EA9C();
  v55 = *(v43 + 8);
  v94 = v43 + 8;
  v83 = v55;
  v56 = v92;
  (v55)(v92, v45);
  v57 = swift_allocObject();
  *(v57 + 16) = v52;
  *(v57 + 24) = v53;
  v58 = v53;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_20C53EAC0;
  *(v59 + 24) = v57;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_20C53EADC;
  *(v60 + 24) = v59;
  (v91)(v56, v54, v45);
  v61 = swift_allocObject();
  v87(v61 + v88, v56, v45);
  v62 = (v61 + v49);
  *v62 = sub_20C53EAF8;
  v62[1] = v60;
  v63 = v52;
  v64 = v58;
  v65 = v93;
  sub_20C59EA9C();
  v66 = v45;
  v67 = v45;
  v68 = v83;
  (v83)(v54, v67);
  v69 = swift_allocObject();
  *(v69 + 16) = v63;
  *(v69 + 24) = v64;
  v70 = v65;
  v71 = v66;
  (v91)(v54, v70, v66);
  v72 = swift_allocObject();
  v87(v72 + v88, v54, v71);
  v73 = (v72 + v49);
  *v73 = sub_20C53EB28;
  v73[1] = v69;
  v74 = v63;
  v75 = v64;
  sub_20C59EA9C();
  return v68(v93, v71);
}

uint64_t sub_20C531E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_20C59E61C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A70, &unk_20C5A8990);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_20C5A01CC();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C531FD0, 0, 0);
}

uint64_t sub_20C531FD0(uint64_t a1)
{
  v24 = v1;
  sub_20C59FE5C();

  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[13];
  v5 = v1[14];
  v7 = v1[12];
  if (v4)
  {
    v9 = v1[3];
    v8 = v1[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20C479640(v9, v8, &v23);
    _os_log_impl(&dword_20C472000, v2, v3, "[Renewal] Re-activating playback voucher gated resource with updated key version: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x20F2FFF90](v11, -1, -1);
    MEMORY[0x20F2FFF90](v10, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[11];
  v14 = v1[7];
  v13 = v1[8];
  v15 = v1[6];
  v17 = v1[3];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1((v1[5] + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient), *(v1[5] + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient + 24));
  *v13 = v17;
  v13[1] = v16;
  (*(v14 + 104))(v13, *MEMORY[0x277D524F0], v15);

  sub_20C59EE5C();
  (*(v14 + 8))(v13, v15);
  v18 = swift_task_alloc();
  v1[15] = v18;
  *(v18 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v18 + 24) = 42;
  *(v18 + 32) = 2;
  *(v18 + 40) = 270;
  *(v18 + 48) = v12;
  v19 = swift_task_alloc();
  v1[16] = v19;
  v20 = sub_20C59E0CC();
  *v19 = v1;
  v19[1] = sub_20C532284;
  v21 = v1[2];

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C53ED38, v18, v20);
}

uint64_t sub_20C532284()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C53241C, 0, 0);
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_20C53241C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

void sub_20C5324B8(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v4 = *(a2 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests);
  os_unfair_lock_lock((v4 + 24));
  sub_20C53EC68((v4 + 16), x8_0);
  os_unfair_lock_unlock((v4 + 24));
}

uint64_t sub_20C53251C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20C53253C, 0, 0);
}

uint64_t sub_20C53253C()
{
  v1 = sub_20C59D28C();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_20C5325EC;

  return sub_20C50558C(v1, 1);
}

uint64_t sub_20C5325EC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20C5326F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980, &qword_20C5A85C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20C4775E4(a3, v25 - v10, &unk_27C7C5980, &qword_20C5A85C0);
  v12 = sub_20C5A06FC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20C477B50(v11, &unk_27C7C5980, &qword_20C5A85C0);
  }

  else
  {
    sub_20C5A06EC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20C5A069C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20C5A045C() + 32;
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

void sub_20C5329B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests);
  os_unfair_lock_lock((v2 + 24));
  sub_20C53EB60((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_20C532A14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59A0, &unk_20C5AAB60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v82 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40, &unk_20C5A8950);
  v12 = *(v11 - 8);
  v92 = v11;
  v93 = v12;
  v94 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v85 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v82 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v97 = *(v88 - 8);
  v91 = *(v97 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v82 - v18;
  MEMORY[0x28223BE20](v19);
  v89 = &v82 - v20;
  MEMORY[0x28223BE20](v21);
  v96 = &v82 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v24 + 24) = 42;
  *(v24 + 32) = 2;
  *(v24 + 40) = 291;
  *(v24 + 48) = &unk_20C5A8A40;
  *(v24 + 56) = v23;
  sub_20C59E5BC();
  v25 = v2;
  v84 = a1;
  sub_20C59EA9C();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  (*(v5 + 16))(v7, v10, v4);
  v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v28 = swift_allocObject();
  (*(v5 + 32))(v28 + v27, v7, v4);
  v29 = (v28 + ((v6 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = sub_20C540DA0;
  v29[1] = v26;
  sub_20C59D72C();
  v30 = v25;
  v31 = v85;
  sub_20C59EA9C();
  (*(v5 + 8))(v10, v4);
  *(swift_allocObject() + 16) = v30;
  sub_20C4B3570();
  v32 = v30;
  v33 = sub_20C5A08EC();
  v34 = v95;
  v35 = v92;
  sub_20C59EA7C();

  v36 = v93;
  v83 = *(v93 + 8);
  v37 = v31;
  v83(v31, v35);
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  v39 = v32;
  v40 = v84;
  *(v38 + 24) = v84;
  (*(v36 + 16))(v31, v34, v35);
  v41 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v36 + 32))(v43 + v41, v37, v35);
  v44 = (v43 + v42);
  *v44 = sub_20C53F55C;
  v44[1] = v38;
  v45 = v39;
  v46 = v40;
  v85 = v46;
  v47 = v86;
  sub_20C59EA9C();
  v83(v95, v35);
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  *(v48 + 24) = v46;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_20C53F564;
  *(v49 + 24) = v48;
  v50 = v97;
  v51 = *(v97 + 16);
  v94 = v97 + 16;
  v95 = v51;
  v52 = v87;
  v53 = v88;
  (v51)(v87, v47, v88);
  v54 = *(v50 + 80);
  v55 = (v54 + 16) & ~v54;
  v92 = v55;
  v93 = v54;
  v56 = (v91 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v91 = *(v50 + 32);
  v91(v57 + v55, v52, v53);
  v58 = (v57 + v56);
  *v58 = sub_20C490914;
  v58[1] = v49;
  v59 = v45;
  v60 = v85;
  v61 = v89;
  sub_20C59EA9C();
  v62 = *(v50 + 8);
  v97 = v50 + 8;
  v87 = v62;
  (v62)(v47, v53);
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  *(v63 + 24) = v60;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20C540DB8;
  *(v64 + 24) = v63;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_20C540E40;
  *(v65 + 24) = v64;
  (v95)(v47, v61, v53);
  v66 = swift_allocObject();
  v91(v66 + v92, v47, v53);
  v67 = (v66 + v56);
  *v67 = sub_20C540D54;
  v67[1] = v65;
  v68 = v59;
  v69 = v60;
  v70 = v96;
  sub_20C59EA9C();
  v71 = v53;
  v72 = v53;
  v73 = v87;
  (v87)(v61, v72);
  v74 = swift_allocObject();
  *(v74 + 16) = v68;
  *(v74 + 24) = v69;
  v75 = v70;
  v76 = v71;
  (v95)(v61, v75, v71);
  v77 = swift_allocObject();
  v91(v77 + v92, v61, v76);
  v78 = (v77 + v56);
  *v78 = sub_20C53F59C;
  v78[1] = v74;
  v79 = v68;
  v80 = v69;
  sub_20C59EA9C();
  return v73(v96, v76);
}

uint64_t sub_20C533364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[223] = a3;
  v3[217] = a2;
  v3[211] = a1;
  v4 = sub_20C59F48C();
  v3[229] = v4;
  v3[235] = *(v4 - 8);
  v3[241] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0, &unk_20C5A89B0);
  v3[247] = swift_task_alloc();
  v5 = sub_20C59D37C();
  v3[253] = v5;
  v6 = *(v5 - 8);
  v3[254] = v6;
  v3[255] = *(v6 + 64);
  v3[256] = swift_task_alloc();
  v3[257] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0, &qword_20C5A6E88) - 8);
  v3[258] = v7;
  v3[259] = *(v7 + 64);
  v3[260] = swift_task_alloc();
  v3[261] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59A0, &unk_20C5AAB60);
  v3[262] = v8;
  v3[263] = *(v8 - 8);
  v3[264] = swift_task_alloc();
  v9 = sub_20C59E52C();
  v3[265] = v9;
  v10 = *(v9 - 8);
  v3[266] = v10;
  v3[267] = *(v10 + 64);
  v3[268] = swift_task_alloc();
  v3[269] = swift_task_alloc();
  v3[270] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C533630, 0, 0);
}

uint64_t sub_20C533630()
{
  v1 = v0[223];
  v2 = *(v0[217] + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_20C540D88((v2 + 16));
  v3 = v0[217];
  os_unfair_lock_unlock((v2 + 24));

  v4 = swift_allocObject();
  v0[271] = v4;
  *(v4 + 16) = v3;
  v5 = v3;
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  v0[272] = v6;
  *(v6 + 16) = v5;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);
  swift_asyncLet_begin();
  v8 = v0[270];

  return MEMORY[0x282200930](v0 + 2, v8, sub_20C5337E0, v0 + 162);
}

uint64_t sub_20C5337E0()
{
  *(v1 + 2184) = v0;
  if (v0)
  {
    v2 = sub_20C534AD4;
  }

  else
  {
    v2 = sub_20C533814;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C533814()
{
  v1 = v0[270];
  v2 = v0[269];
  v3 = v0[266];
  v4 = v0[265];
  v5 = v0[217];
  v6 = *(v3 + 16);
  v0[274] = v6;
  v0[275] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = v5 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_workoutIdentifier;
  v0[276] = *(v5 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_workoutIdentifier);
  v0[277] = *(v7 + 8);

  return MEMORY[0x282200930](v0 + 82, v0 + 207, sub_20C5338C8, v0 + 212);
}

uint64_t sub_20C5338C8()
{
  v1[278] = v0;
  if (v0)
  {
    (*(v1[266] + 8))(v1[269], v1[265]);
    v2 = sub_20C534C60;
  }

  else
  {
    v2 = sub_20C53395C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C53395C()
{
  v1 = (v0 + 1560);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 1784);
  v4 = *(v0 + 1736);
  v5 = *(v0 + 1656);
  v6 = *(v0 + 1664);
  v7 = sub_20C59E0CC();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = *(v4 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_deviceIdentificationBehavior + 8);
  if (v8)
  {
    v9 = 0xD00000000000002CLL;
  }

  else
  {
    v9 = 0xD00000000000001FLL;
  }

  if (v8)
  {
    v10 = "est.makeServerPlaybackContext";
  }

  else
  {
    v10 = "isioner::renewKeyContext";
  }

  v11 = v10 | 0x8000000000000000;
  v107 = v6;
  sub_20C4E6460(v5, v6);
  if ([v3 identifier])
  {
    sub_20C5A0ABC();
    swift_unknownObjectRelease();
    v12 = *(v0 + 1616);
    v13 = __swift_project_boxed_opaque_existential_1((v0 + 1592), v12);
    *(v0 + 1648) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1624));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    sub_20C4947E4((v0 + 1624), (v0 + 1560));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1592));
  }

  else
  {
    *v1 = 0u;
    *(v0 + 1576) = 0u;
  }

  v15 = *(v0 + 1576);
  *(v0 + 1528) = *v1;
  *(v0 + 1544) = v15;
  v16 = *(v0 + 1552);
  if (!v16)
  {

    sub_20C477B50(v0 + 1528, &unk_27C7C59C0, &qword_20C5A89F8);
    *(v0 + 1496) = 0u;
    *(v0 + 1512) = 0u;
LABEL_17:
    sub_20C477B50(v0 + 1496, &qword_27C7C44D0, &unk_20C5A35A0);
LABEL_19:
    v32 = *(v0 + 2152);
    v33 = *(v0 + 2128);
    v34 = *(v0 + 2120);
    v35 = *(v0 + 2088);
    v36 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D50F08], v36);
    *(swift_allocObject() + 16) = v37;
    v39 = v37;
    v31 = sub_20C59E5BC();
    sub_20C59EAAC();
    sub_20C4BFD68(v5, v107);
    sub_20C477B50(v35, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v33 + 8))(v32, v34);
    v40 = v37;
LABEL_20:

    goto LABEL_21;
  }

  v17 = __swift_project_boxed_opaque_existential_1((v0 + 1528), *(v0 + 1552));
  *(v0 + 1520) = v16;
  v18 = __swift_allocate_boxed_opaque_existential_1((v0 + 1496));
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1528));
  if (!*(v0 + 1520))
  {

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v19 = *(v0 + 2032);
  v20 = *(v0 + 2024);
  v21 = *(v0 + 1976);
  sub_20C59D36C();

  if ((*(v19 + 48))(v21, 1, v20) == 1)
  {
    v22 = *(v0 + 2152);
    v23 = *(v0 + 2128);
    v24 = *(v0 + 2120);
    v25 = *(v0 + 2088);
    v26 = *(v0 + 1976);

    sub_20C477B50(v26, &qword_27C7C4AC0, &unk_20C5A89B0);
    v27 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D50ED0], v27);
    *(swift_allocObject() + 16) = v28;
    v30 = v28;
    v31 = sub_20C59E5BC();
    sub_20C59EAAC();
    sub_20C4BFD68(v5, v6);
    sub_20C477B50(v25, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v23 + 8))(v22, v24);
LABEL_38:
    v40 = v28;
    goto LABEL_20;
  }

  v45 = *(*(v0 + 2032) + 32);
  v45(*(v0 + 2056), *(v0 + 1976), *(v0 + 2024));
  v46 = sub_20C59D34C();
  if (!v47)
  {
    goto LABEL_34;
  }

  if (v46 == 6581107 && v47 == 0xE300000000000000)
  {

    goto LABEL_29;
  }

  v48 = sub_20C5A0E9C();

  if ((v48 & 1) == 0)
  {
LABEL_34:
    v66 = *(v0 + 2128);
    v104 = *(v0 + 2120);
    v106 = *(v0 + 2152);
    v102 = *(v0 + 2088);
    v67 = *(v0 + 2056);
    v68 = *(v0 + 2032);
    v69 = *(v0 + 2024);

    v70 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v70 - 8) + 104))(v71, *MEMORY[0x277D50F00], v70);
    *(swift_allocObject() + 16) = v28;
    v72 = v28;
    v31 = sub_20C59E5BC();
LABEL_37:
    sub_20C59EAAC();
    sub_20C4BFD68(v5, v107);
    (*(v68 + 8))(v67, v69);
    sub_20C477B50(v102, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v66 + 8))(v106, v104);
    goto LABEL_38;
  }

LABEL_29:
  v49 = sub_20C59D33C();
  if (!v50)
  {
LABEL_36:
    v66 = *(v0 + 2128);
    v104 = *(v0 + 2120);
    v106 = *(v0 + 2152);
    v102 = *(v0 + 2088);
    v67 = *(v0 + 2056);
    v68 = *(v0 + 2032);
    v69 = *(v0 + 2024);

    v73 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v73 - 8) + 104))(v74, *MEMORY[0x277D50EE8], v73);
    *(swift_allocObject() + 16) = v28;
    v75 = v28;
    v31 = sub_20C59E5BC();
    goto LABEL_37;
  }

  v51 = v50;
  v52 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v52 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {

    goto LABEL_36;
  }

  v92 = *(v0 + 2208);
  v93 = *(v0 + 2216);
  v80 = *(v0 + 2192);
  v53 = *(v0 + 2152);
  v94 = v53;
  v97 = *(v0 + 2144);
  v83 = *(v0 + 2136);
  v95 = *(v0 + 2128);
  v54 = *(v0 + 2120);
  v101 = v54;
  v105 = *(v0 + 2088);
  v100 = *(v0 + 2080);
  v86 = *(v0 + 2064);
  v88 = *(v0 + 2072);
  v103 = *(v0 + 2056);
  v99 = *(v0 + 2048);
  v85 = *(v0 + 2040);
  v96 = *(v0 + 2032);
  v98 = *(v0 + 2024);
  v55 = *(v0 + 1928);
  v90 = v49;
  v91 = v45;
  v56 = *(v0 + 1880);
  v78 = *(v0 + 1832);
  v89 = *(v0 + 1784);
  sub_20C59FEAC();
  v57 = sub_20C5268EC("AVContentKeyRequest.makeServerPlaybackContext", 45, 2, &dword_20C472000, 1, (v0 + 1336));
  (*(v56 + 8))(v55, v78, v57);
  v80(v97, v53, v54);
  sub_20C477580(v0 + 1336, v0 + 1416);
  (*(v96 + 16))(v99, v103, v98);
  sub_20C4775E4(v105, v100, &qword_27C7C59B0, &qword_20C5A6E88);
  v58 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v77 = (v83 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v84 + 47) & 0xFFFFFFFFFFFFFFF8;
  v79 = (*(v96 + 80) + v82 + 16) & ~*(v96 + 80);
  v87 = (v85 + *(v86 + 80) + v79) & ~*(v86 + 80);
  v60 = swift_allocObject();
  (*(v95 + 32))(v60 + v58, v97, v101);
  v61 = (v60 + v77);
  *v61 = v5;
  v61[1] = v6;
  *(v60 + v81) = v89;
  v62 = (v60 + v59);
  *v62 = v90;
  v62[1] = v51;
  sub_20C4780E8((v0 + 1416), v60 + v84);
  v63 = (v60 + v82);
  *v63 = v92;
  v63[1] = v93;
  v91(v60 + v79, v99, v98);
  sub_20C4F8A00(v100, v60 + v87);
  v64 = (v60 + ((v88 + v87 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v64 = v9;
  v64[1] = v11;
  v31 = sub_20C59E5BC();
  v65 = v89;

  sub_20C59EA9C();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1336));
  (*(v96 + 8))(v103, v98);
  sub_20C477B50(v105, &qword_27C7C59B0, &qword_20C5A6E88);
  (*(v95 + 8))(v94, v101);
LABEL_21:
  v41 = *(v0 + 2112);
  v42 = swift_task_alloc();
  *(v0 + 2232) = v42;
  *(v42 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v42 + 24) = 42;
  *(v42 + 32) = 2;
  *(v42 + 40) = 302;
  *(v42 + 48) = v41;
  v43 = swift_task_alloc();
  *(v0 + 2240) = v43;
  sub_20C59E5BC();
  *v43 = v0;
  v43[1] = sub_20C534604;
  v44 = *(v0 + 1688);

  return MEMORY[0x2822008A0](v44, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DD8, v42, v31);
}

uint64_t sub_20C534604()
{
  v2 = *v1;
  *(*v1 + 2248) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C5348E8, 0, 0);
  }

  else
  {
    v3 = v2[264];
    v4 = v2[263];
    v5 = v2[262];

    (*(v4 + 8))(v3, v5);

    return MEMORY[0x282200920](v2 + 82, v2 + 207, sub_20C534784, v2 + 242);
  }
}

uint64_t sub_20C5347DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C5348E8()
{
  (*(v0[263] + 8))(v0[264], v0[262]);

  return MEMORY[0x282200920](v0 + 82, v0 + 207, sub_20C534968, v0 + 230);
}

uint64_t sub_20C5349C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C534B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C534CD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C534DEC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59E0, &qword_20C5A8A20);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C534EB8, 0, 0);
}

uint64_t sub_20C534EB8()
{
  v1 = v0[6];
  sub_20C528170(v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 293;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_20C59E52C();
  *v3 = v0;
  v3[1] = sub_20C527084;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DE0, v2, v4);
}

uint64_t sub_20C534FDC(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59D0, &qword_20C5A5370);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[5] = v3;
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_20C5350E4;

  return sub_20C52E8BC(v3);
}

uint64_t sub_20C5350E4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20C540DB4;
  }

  else
  {
    v2 = sub_20C5351F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C5351F8()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 294;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);
  *v3 = v0;
  v3[1] = sub_20C531294;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DDC, v2, v4);
}

void sub_20C53531C(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v4 = *(a2 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests);
  os_unfair_lock_lock((v4 + 24));
  sub_20C540E58((v4 + 16), x8_0);
  os_unfair_lock_unlock((v4 + 24));
}

id sub_20C535380(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980, &qword_20C5A85C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_20C5A01CC();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v14 = a2;
  v15 = a1;
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A089C();

  v42 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v38 = v20;
    v39 = swift_slowAlloc();
    v47 = v39;
    *v19 = 138543618;
    *(v19 + 4) = v14;
    *v20 = v14;
    *(v19 + 12) = 2082;
    swift_getErrorValue();
    v37 = v16;
    v40 = v11;
    v21 = v10;
    v22 = v45;
    v23 = v46;
    v24 = v14;
    v25 = v22;
    v10 = v21;
    v26 = MEMORY[0x20F2FF3F0](v25, v23);
    v28 = sub_20C479640(v26, v27, &v47);

    *(v19 + 14) = v28;
    v29 = v37;
    _os_log_impl(&dword_20C472000, v37, v42, "%{public}@ Unable to fulfill key renewal request because of %{public}s", v19, 0x16u);
    v30 = v38;
    sub_20C477B50(v38, &qword_27C7C60F0, &unk_20C5A4220);
    MEMORY[0x20F2FFF90](v30, -1, -1);
    v31 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x20F2FFF90](v31, -1, -1);
    v32 = v19;
    a3 = v41;
    MEMORY[0x20F2FFF90](v32, -1, -1);

    (*(v43 + 8))(v13, v40);
  }

  else
  {

    (*(v43 + 8))(v13, v11);
  }

  v33 = sub_20C5A06FC();
  (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v14;
  v34[5] = a1;
  v14;
  v35 = a1;
  sub_20C5326F8(0, 0, v10, v44, v34);

  sub_20C477B50(v10, &unk_27C7C5980, &qword_20C5A85C0);
  sub_20C52B6E4(a1, a3);
  swift_willThrow();
  return a1;
}

uint64_t sub_20C535720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20C535740, 0, 0);
}

uint64_t sub_20C535740()
{
  v1 = sub_20C59D28C();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_20C540D48;

  return sub_20C50558C(v1, 1);
}

uint64_t sub_20C5357F0(void *a1, void *a2)
{
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v8 = a1;
  v9 = a2;
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A08AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543618;
    *(v12 + 4) = v8;
    *(v12 + 12) = 2114;
    *(v12 + 14) = v9;
    *v13 = v8;
    v13[1] = v9;
    v14 = v8;
    v15 = v9;
    _os_log_impl(&dword_20C472000, v10, v11, "%{public}@ Renewing key request: %{public}@...", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v13, -1, -1);
    MEMORY[0x20F2FFF90](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_20C5359BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests);
  os_unfair_lock_lock((v2 + 24));
  sub_20C540D70((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

double sub_20C535A18@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v84 = sub_20C59D46C();
  v77 = *(v84 - 8);
  v76 = *(v77 + 64);
  MEMORY[0x28223BE20](v84);
  v74 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v60 - v6;
  v7 = sub_20C5A019C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C5A017C();
  MEMORY[0x28223BE20](v11 - 8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v82 = *(v70 - 8);
  v12 = v82[8];
  MEMORY[0x28223BE20](v70);
  v71 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v60 - v14;
  MEMORY[0x28223BE20](v15);
  v83 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v80 = &v60 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v75 = sub_20C59F48C();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FEAC();
  v69 = v21;
  sub_20C536220(v2, a1, v21);
  sub_20C59F41C();
  swift_allocObject();
  v24 = sub_20C59F3EC();
  v72 = v23;
  sub_20C59F47C();

  sub_20C5A018C();
  sub_20C5A016C();
  (*(v8 + 8))(v10, v7);
  sub_20C59F47C();
  sub_20C59FF1C();
  swift_allocObject();
  v25 = sub_20C59FEEC();
  v67 = v25;
  v86 = v24;
  v26 = sub_20C5A041C();
  v66 = v26;
  v28 = v27;
  sub_20C59D44C();
  v29 = swift_allocObject();
  v68 = v24;
  *(v29 + 16) = v24;
  *(v29 + 24) = v25;
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  v65 = v28;
  *(v29 + 48) = "StreamingKeyProvisioner.processAnonymousStreamingKeyRequest";
  *(v29 + 56) = 59;
  *(v29 + 64) = 2;

  v30 = v80;
  sub_20C59EA9C();
  v32 = v81;
  v31 = v82;
  v33 = v82[2];
  v79 = v82 + 2;
  v34 = v70;
  v33(v81, v21, v70);
  v64 = v33;
  v35 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v62 = *(v31 + 80);
  v60 = swift_allocObject();
  v36 = v31[4];
  v63 = v35;
  v37 = v34;
  v36(v60 + v35, v32, v34);
  v38 = v36;
  v61 = v36;
  v39 = v71;
  v33(v71, v30, v37);
  v40 = (v35 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v41 + v35;
  v43 = v37;
  v38(v42, v39, v37);
  v44 = (v41 + v40);
  v45 = v60;
  *v44 = sub_20C53FB30;
  v44[1] = v45;
  sub_20C59EA9C();
  v46 = v77;
  v47 = v74;
  v48 = v84;
  (*(v77 + 16))(v74, v85, v84);
  v49 = (*(v46 + 80) + 49) & ~*(v46 + 80);
  v50 = (v76 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v65;
  *(v51 + 16) = v66;
  *(v51 + 24) = v52;
  *(v51 + 32) = "StreamingKeyProvisioner.processAnonymousStreamingKeyRequest";
  *(v51 + 40) = 59;
  *(v51 + 48) = 2;
  (*(v46 + 32))(v51 + v49, v47, v48);
  v53 = v68;
  *(v51 + v50) = v67;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;
  v54 = v81;
  v55 = v83;
  v64(v81, v83, v43);
  v56 = swift_allocObject();
  v61(v56 + v63, v54, v43);
  v57 = (v56 + v40);
  *v57 = sub_20C53FB34;
  v57[1] = v51;

  sub_20C59EA9C();
  v58 = v82[1];
  v58(v55, v43);
  v58(v80, v43);
  (*(v46 + 8))(v85, v84);
  v58(v69, v43);
  (*(v73 + 8))(v72, v75);

  return result;
}

uint64_t sub_20C536220@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a2;
  v93 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40, &unk_20C5A8950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v85 - v10;
  MEMORY[0x28223BE20](v12);
  v101 = &v85 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v102 = *(v91 - 8);
  v96 = *(v102 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v85 - v16;
  MEMORY[0x28223BE20](v17);
  v98 = &v85 - v18;
  MEMORY[0x28223BE20](v19);
  v99 = &v85 - v20;
  MEMORY[0x28223BE20](v21);
  v92 = &v85 - v22;
  v87 = v11;
  v95 = a1;
  sub_20C52B8C0(a2, v11);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_20C53FB38;
  *(v24 + 24) = v23;
  v25 = v6;
  v97 = *(v6 + 16);
  v97(v8, v11, v5);
  v26 = *(v6 + 80);
  v88 = ((v26 + 16) & ~v26);
  v27 = &v88[v7 + 7] & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v86 = *(v25 + 32);
  v86(v28 + ((v26 + 16) & ~v26), v8, v5);
  v29 = (v28 + v27);
  *v29 = sub_20C540D58;
  v29[1] = v24;
  sub_20C59D72C();
  v30 = v95;
  v31 = v101;
  sub_20C59EA9C();
  v32 = *(v25 + 8);
  v94 = (v25 + 8);
  v95 = v32;
  v33 = v87;
  v34 = v5;
  (v32)(v87, v5);
  v35 = swift_allocObject();
  v36 = v100;
  *(v35 + 16) = v30;
  *(v35 + 24) = v36;
  v37 = v31;
  v38 = v34;
  v97(v33, v37, v34);
  v39 = swift_allocObject();
  v86(&v88[v39], v33, v38);
  v40 = (v39 + v27);
  *v40 = sub_20C53F55C;
  v40[1] = v35;
  v41 = v30;
  v42 = v36;
  v43 = v89;
  sub_20C59EA9C();
  (v95)(v101, v38);
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  *(v44 + 24) = v42;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_20C53FB78;
  *(v45 + 24) = v44;
  v46 = v102;
  v94 = *(v102 + 16);
  v95 = (v102 + 16);
  v48 = v90;
  v47 = v91;
  v94(v90, v43, v91);
  v49 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v97 = *(v46 + 80);
  v100 = v49;
  v50 = (v96 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = *(v46 + 32);
  v96 = v46 + 32;
  v101 = v52;
  (v52)(v51 + v49, v48, v47);
  v53 = (v51 + v50);
  *v53 = sub_20C490914;
  v53[1] = v45;
  v54 = v41;
  v88 = v54;
  v55 = v42;
  v56 = v98;
  sub_20C59EA9C();
  v57 = *(v46 + 8);
  v102 = v46 + 8;
  v90 = v57;
  (v57)(v43, v47);
  v58 = swift_allocObject();
  *(v58 + 16) = v54;
  *(v58 + 24) = v55;
  v59 = v55;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_20C53FBB0;
  *(v60 + 24) = v58;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20C540E40;
  *(v61 + 24) = v60;
  v62 = v94;
  v94(v43, v56, v47);
  v87 = v50;
  v63 = swift_allocObject();
  (v101)(&v100[v63], v43, v47);
  v64 = (v63 + v50);
  *v64 = sub_20C540D54;
  v64[1] = v61;
  v65 = v88;
  v66 = v59;
  v89 = v66;
  v67 = v99;
  sub_20C59EA9C();
  v68 = v98;
  v69 = v47;
  v70 = v90;
  (v90)(v98, v47);
  v71 = swift_allocObject();
  *(v71 + 16) = v65;
  *(v71 + 24) = v66;
  v72 = v68;
  v62(v68, v67, v47);
  v73 = v87;
  v74 = swift_allocObject();
  (v101)(&v100[v74], v72, v47);
  v75 = &v73[v74];
  *v75 = sub_20C53F59C;
  v75[1] = v71;
  v76 = v65;
  v77 = v89;
  v78 = v92;
  sub_20C59EA9C();
  v79 = v99;
  v70(v99, v47);
  v80 = swift_allocObject();
  *(v80 + 16) = nullsub_1;
  *(v80 + 24) = 0;
  v81 = v78;
  v94(v79, v78, v69);
  v82 = swift_allocObject();
  (v101)(&v100[v82], v79, v69);
  v83 = &v73[v82];
  *v83 = sub_20C540D54;
  v83[1] = v80;
  sub_20C59EA9C();
  return (v70)(v81, v69);
}

id sub_20C536B10(void *a1, char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v39 = a3;
  v9 = sub_20C5A01CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  if (!sub_20C54557C(v40, v41) || (swift_getErrorValue(), v13 = sub_20C5457F4(), !v14))
  {
    swift_willThrow();
    return a1;
  }

  v15 = v14;
  v38 = a4;
  if (*&a2[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_playbackVoucher])
  {
    v36 = v13;
    v37 = a5;

    sub_20C59FE5C();
    v16 = a1;
    v17 = sub_20C5A01BC();
    v18 = sub_20C5A08AC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = v17;
      v20 = v19;
      v34 = swift_slowAlloc();
      *v20 = 138412290;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v20;
      *(v20 + 4) = v22;
      v25 = v34;
      v24 = v35;
      *v34 = v22;
      v26 = v18;
      v27 = v23;
      _os_log_impl(&dword_20C472000, v24, v26, v39, v23, 0xCu);
      sub_20C477B50(v25, &qword_27C7C60F0, &unk_20C5A4220);
      MEMORY[0x20F2FFF90](v25, -1, -1);
      v17 = v35;
      MEMORY[0x20F2FFF90](v27, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v28 = swift_allocObject();
    v28[2] = v36;
    v28[3] = v15;
    v28[4] = a2;
    v29 = a2;
    sub_20C59F92C();

    swift_willThrow();

    return a1;
  }

  v31 = sub_20C59E12C();
  sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
  swift_allocError();
  (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D50F20], v31);
  return swift_willThrow();
}

uint64_t sub_20C536E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_20C59E61C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A70, &unk_20C5A8990);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_20C5A01CC();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C536FD8, 0, 0);
}

uint64_t sub_20C536FD8(uint64_t a1)
{
  v24 = v1;
  sub_20C59FE5C();

  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[13];
  v5 = v1[14];
  v7 = v1[12];
  if (v4)
  {
    v9 = v1[3];
    v8 = v1[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20C479640(v9, v8, &v23);
    _os_log_impl(&dword_20C472000, v2, v3, "Re-activating playback voucher gated resource with updated key version: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x20F2FFF90](v11, -1, -1);
    MEMORY[0x20F2FFF90](v10, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[11];
  v14 = v1[7];
  v13 = v1[8];
  v15 = v1[6];
  v17 = v1[3];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1((v1[5] + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient), *(v1[5] + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient + 24));
  *v13 = v17;
  v13[1] = v16;
  (*(v14 + 104))(v13, *MEMORY[0x277D524F0], v15);

  sub_20C59EE5C();
  (*(v14 + 8))(v13, v15);
  v18 = swift_task_alloc();
  v1[15] = v18;
  *(v18 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v18 + 24) = 42;
  *(v18 + 32) = 2;
  *(v18 + 40) = 351;
  *(v18 + 48) = v12;
  v19 = swift_task_alloc();
  v1[16] = v19;
  v20 = sub_20C59E0CC();
  *v19 = v1;
  v19[1] = sub_20C53728C;
  v21 = v1[2];

  return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DD0, v18, v20);
}

uint64_t sub_20C53728C()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C540D50, 0, 0);
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_20C537424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_20C537444, 0, 0);
}

uint64_t sub_20C537444()
{
  v1 = sub_20C59D28C();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_20C540D48;

  return sub_20C50558C(v1, 0);
}

double sub_20C5374F4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v84 = sub_20C59D46C();
  v77 = *(v84 - 8);
  v76 = *(v77 + 64);
  MEMORY[0x28223BE20](v84);
  v74 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v60 - v6;
  v7 = sub_20C5A019C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C5A017C();
  MEMORY[0x28223BE20](v11 - 8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v82 = *(v70 - 8);
  v12 = v82[8];
  MEMORY[0x28223BE20](v70);
  v71 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v60 - v14;
  MEMORY[0x28223BE20](v15);
  v83 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v80 = &v60 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v75 = sub_20C59F48C();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FEAC();
  v69 = v21;
  sub_20C537CFC(v2, a1, v21);
  sub_20C59F41C();
  swift_allocObject();
  v24 = sub_20C59F3EC();
  v72 = v23;
  sub_20C59F47C();

  sub_20C5A018C();
  sub_20C5A016C();
  (*(v8 + 8))(v10, v7);
  sub_20C59F47C();
  sub_20C59FF1C();
  swift_allocObject();
  v25 = sub_20C59FEEC();
  v67 = v25;
  v86 = v24;
  v26 = sub_20C5A041C();
  v66 = v26;
  v28 = v27;
  sub_20C59D44C();
  v29 = swift_allocObject();
  v68 = v24;
  *(v29 + 16) = v24;
  *(v29 + 24) = v25;
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  v65 = v28;
  *(v29 + 48) = "StreamingKeyProvisioner.processStreamingKeyRequest";
  *(v29 + 56) = 50;
  *(v29 + 64) = 2;

  v30 = v80;
  sub_20C59EA9C();
  v32 = v81;
  v31 = v82;
  v33 = v82[2];
  v79 = v82 + 2;
  v34 = v70;
  v33(v81, v21, v70);
  v64 = v33;
  v35 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v62 = *(v31 + 80);
  v60 = swift_allocObject();
  v36 = v31[4];
  v63 = v35;
  v37 = v34;
  v36(v60 + v35, v32, v34);
  v38 = v36;
  v61 = v36;
  v39 = v71;
  v33(v71, v30, v37);
  v40 = (v35 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v41 + v35;
  v43 = v37;
  v38(v42, v39, v37);
  v44 = (v41 + v40);
  v45 = v60;
  *v44 = sub_20C540E38;
  v44[1] = v45;
  sub_20C59EA9C();
  v46 = v77;
  v47 = v74;
  v48 = v84;
  (*(v77 + 16))(v74, v85, v84);
  v49 = (*(v46 + 80) + 49) & ~*(v46 + 80);
  v50 = (v76 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v52 = v65;
  *(v51 + 16) = v66;
  *(v51 + 24) = v52;
  *(v51 + 32) = "StreamingKeyProvisioner.processStreamingKeyRequest";
  *(v51 + 40) = 50;
  *(v51 + 48) = 2;
  (*(v46 + 32))(v51 + v49, v47, v48);
  v53 = v68;
  *(v51 + v50) = v67;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;
  v54 = v81;
  v55 = v83;
  v64(v81, v83, v43);
  v56 = swift_allocObject();
  v61(v56 + v63, v54, v43);
  v57 = (v56 + v40);
  *v57 = sub_20C540DE8;
  v57[1] = v51;

  sub_20C59EA9C();
  v58 = v82[1];
  v58(v55, v43);
  v58(v80, v43);
  (*(v46 + 8))(v85, v84);
  v58(v69, v43);
  (*(v73 + 8))(v72, v75);

  return result;
}

uint64_t sub_20C537CFC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59A0, &unk_20C5AAB60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v109 - v10;
  MEMORY[0x28223BE20](v12);
  v130 = &v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40, &unk_20C5A8950);
  v15 = *(v14 - 8);
  v124 = v14;
  v125 = v15;
  v126 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v117 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v123 = &v109 - v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v131 = *(v120 - 8);
  v127 = *(v131 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v118 = &v109 - v21;
  MEMORY[0x28223BE20](v22);
  v128 = &v109 - v23;
  MEMORY[0x28223BE20](v24);
  v129 = &v109 - v25;
  MEMORY[0x28223BE20](v26);
  v121 = &v109 - v27;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  v29 = swift_allocObject();
  *(v29 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v29 + 24) = 42;
  *(v29 + 32) = 2;
  *(v29 + 40) = 384;
  *(v29 + 48) = &unk_20C5A8AE0;
  *(v29 + 56) = v28;
  v114 = sub_20C59E5BC();
  v30 = a1;
  v110 = v30;
  v116 = a2;
  v111 = v11;
  sub_20C59EA9C();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v115 = *(v6 + 16);
  v109 = v5;
  v115(v8, v11, v5);
  v32 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v113 = v32;
  v33 = (v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v112 = *(v6 + 32);
  v112(v34 + v32, v8, v5);
  v35 = (v34 + v33);
  *v35 = sub_20C540DA4;
  v35[1] = v31;
  v36 = v110;
  v37 = v130;
  sub_20C59EA9C();
  v38 = v6 + 8;
  v39 = *(v6 + 8);
  v114 = v38;
  v40 = v111;
  v41 = v109;
  v39(v111, v109);
  v42 = swift_allocObject();
  *(v42 + 16) = v36;
  v43 = v37;
  v44 = v41;
  v115(v40, v43, v41);
  v45 = swift_allocObject();
  v112(v45 + v113, v40, v44);
  v46 = (v45 + v33);
  *v46 = sub_20C540DA8;
  v46[1] = v42;
  sub_20C59D72C();
  v47 = v36;
  v48 = v117;
  sub_20C59EA9C();
  v39(v130, v44);
  *(swift_allocObject() + 16) = v47;
  sub_20C4B3570();
  v49 = v47;
  v115 = v49;
  v50 = sub_20C5A08EC();
  v52 = v123;
  v51 = v124;
  sub_20C59EA7C();

  v53 = v125;
  v130 = *(v125 + 8);
  (v130)(v48, v51);
  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  v55 = v116;
  *(v54 + 24) = v116;
  (*(v53 + 16))(v48, v52, v51);
  v56 = v53;
  v57 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v58 = (v126 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  (*(v56 + 32))(v59 + v57, v48, v51);
  v60 = (v59 + v58);
  *v60 = sub_20C53F55C;
  v60[1] = v54;
  v61 = v115;
  v62 = v55;
  v63 = v118;
  sub_20C59EA9C();
  (v130)(v52, v51);
  v64 = swift_allocObject();
  *(v64 + 16) = v61;
  *(v64 + 24) = v62;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_20C540434;
  *(v65 + 24) = v64;
  v66 = v131;
  v123 = *(v131 + 16);
  v124 = v131 + 16;
  v68 = v119;
  v67 = v120;
  (v123)(v119, v63, v120);
  v69 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v130 = *(v66 + 80);
  v125 = v69;
  v70 = (v127 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = *(v66 + 32);
  v126 = v66 + 32;
  v127 = v72;
  v72(v71 + v69, v68, v67);
  v73 = (v71 + v70);
  *v73 = sub_20C490914;
  v73[1] = v65;
  v74 = v61;
  v75 = v62;
  v76 = v128;
  sub_20C59EA9C();
  v77 = *(v66 + 8);
  v131 = v66 + 8;
  v119 = v77;
  (v77)(v63, v67);
  v78 = swift_allocObject();
  *(v78 + 16) = v74;
  *(v78 + 24) = v75;
  v79 = v74;
  v80 = swift_allocObject();
  *(v80 + 16) = sub_20C540DBC;
  *(v80 + 24) = v78;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_20C540E40;
  *(v81 + 24) = v80;
  v82 = v67;
  v83 = v67;
  v84 = v123;
  (v123)(v63, v76, v83);
  v117 = v70;
  v85 = swift_allocObject();
  v127(v85 + v125, v63, v82);
  v86 = (v85 + v70);
  *v86 = sub_20C540D54;
  v86[1] = v81;
  v87 = v79;
  v118 = v87;
  v88 = v75;
  v89 = v129;
  sub_20C59EA9C();
  v90 = v128;
  v91 = v119;
  (v119)(v128, v82);
  v92 = swift_allocObject();
  *(v92 + 16) = v87;
  *(v92 + 24) = v88;
  v93 = v90;
  v84(v90, v89, v82);
  v94 = v117;
  v95 = swift_allocObject();
  v96 = v125;
  v97 = v93;
  v98 = v127;
  v127(v95 + v125, v97, v82);
  v99 = &v94[v95];
  *v99 = sub_20C53F59C;
  v99[1] = v92;
  v100 = v118;
  v101 = v88;
  v102 = v121;
  sub_20C59EA9C();
  v103 = v129;
  v91(v129, v82);
  v104 = swift_allocObject();
  *(v104 + 16) = nullsub_1;
  *(v104 + 24) = 0;
  v105 = v102;
  (v123)(v103, v102, v82);
  v106 = swift_allocObject();
  v98(v106 + v96, v103, v82);
  v107 = &v94[v106];
  *v107 = sub_20C540D54;
  v107[1] = v104;
  sub_20C59EA9C();
  return (v91)(v105, v82);
}

uint64_t sub_20C5388AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[223] = a3;
  v3[217] = a2;
  v3[211] = a1;
  v4 = sub_20C59F48C();
  v3[229] = v4;
  v3[235] = *(v4 - 8);
  v3[241] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0, &unk_20C5A89B0);
  v3[247] = swift_task_alloc();
  v5 = sub_20C59D37C();
  v3[253] = v5;
  v6 = *(v5 - 8);
  v3[254] = v6;
  v3[255] = *(v6 + 64);
  v3[256] = swift_task_alloc();
  v3[257] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0, &qword_20C5A6E88) - 8);
  v3[258] = v7;
  v3[259] = *(v7 + 64);
  v3[260] = swift_task_alloc();
  v3[261] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59A0, &unk_20C5AAB60);
  v3[262] = v8;
  v3[263] = *(v8 - 8);
  v3[264] = swift_task_alloc();
  v9 = sub_20C59E52C();
  v3[265] = v9;
  v10 = *(v9 - 8);
  v3[266] = v10;
  v3[267] = *(v10 + 64);
  v3[268] = swift_task_alloc();
  v3[269] = swift_task_alloc();
  v3[270] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C538B78, 0, 0);
}

uint64_t sub_20C538B78()
{
  v1 = v0[223];
  v2 = *(v0[217] + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_20C540D88((v2 + 16));
  v3 = v0[217];
  os_unfair_lock_unlock((v2 + 24));

  v4 = swift_allocObject();
  v0[271] = v4;
  *(v4 + 16) = v3;
  v5 = v3;
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  v0[272] = v6;
  *(v6 + 16) = v5;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);
  swift_asyncLet_begin();
  v8 = v0[270];

  return MEMORY[0x282200930](v0 + 2, v8, sub_20C538D28, v0 + 162);
}

uint64_t sub_20C538D28()
{
  *(v1 + 2184) = v0;
  if (v0)
  {
    v2 = sub_20C539DFC;
  }

  else
  {
    v2 = sub_20C538D5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C538D5C()
{
  v1 = v0[270];
  v2 = v0[269];
  v3 = v0[266];
  v4 = v0[265];
  v5 = v0[217];
  v6 = *(v3 + 16);
  v0[274] = v6;
  v0[275] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = v5 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_workoutIdentifier;
  v0[276] = *(v5 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_workoutIdentifier);
  v0[277] = *(v7 + 8);

  return MEMORY[0x282200930](v0 + 82, v0 + 207, sub_20C538E10, v0 + 212);
}

uint64_t sub_20C538E10()
{
  v1[278] = v0;
  if (v0)
  {
    (*(v1[266] + 8))(v1[269], v1[265]);
    v2 = sub_20C539E74;
  }

  else
  {
    v2 = sub_20C538EA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C538EA4()
{
  v1 = (v0 + 1560);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 1784);
  v4 = *(v0 + 1736);
  v5 = *(v0 + 1656);
  v6 = *(v0 + 1664);
  v7 = sub_20C59E0CC();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = *(v4 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_deviceIdentificationBehavior + 8);
  if (v8)
  {
    v9 = 0xD00000000000002CLL;
  }

  else
  {
    v9 = 0xD00000000000001FLL;
  }

  if (v8)
  {
    v10 = "workout-license-streaming-start";
  }

  else
  {
    v10 = "isioner::fetchKeyContext";
  }

  v11 = v10 | 0x8000000000000000;
  v107 = v6;
  sub_20C4E6460(v5, v6);
  if ([v3 identifier])
  {
    sub_20C5A0ABC();
    swift_unknownObjectRelease();
    v12 = *(v0 + 1616);
    v13 = __swift_project_boxed_opaque_existential_1((v0 + 1592), v12);
    *(v0 + 1648) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1624));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    sub_20C4947E4((v0 + 1624), (v0 + 1560));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1592));
  }

  else
  {
    *v1 = 0u;
    *(v0 + 1576) = 0u;
  }

  v15 = *(v0 + 1576);
  *(v0 + 1528) = *v1;
  *(v0 + 1544) = v15;
  v16 = *(v0 + 1552);
  if (!v16)
  {

    sub_20C477B50(v0 + 1528, &unk_27C7C59C0, &qword_20C5A89F8);
    *(v0 + 1496) = 0u;
    *(v0 + 1512) = 0u;
LABEL_17:
    sub_20C477B50(v0 + 1496, &qword_27C7C44D0, &unk_20C5A35A0);
LABEL_19:
    v32 = *(v0 + 2152);
    v33 = *(v0 + 2128);
    v34 = *(v0 + 2120);
    v35 = *(v0 + 2088);
    v36 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D50F08], v36);
    *(swift_allocObject() + 16) = v37;
    v39 = v37;
    v31 = sub_20C59E5BC();
    sub_20C59EAAC();
    sub_20C4BFD68(v5, v107);
    sub_20C477B50(v35, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v33 + 8))(v32, v34);
    v40 = v37;
LABEL_20:

    goto LABEL_21;
  }

  v17 = __swift_project_boxed_opaque_existential_1((v0 + 1528), *(v0 + 1552));
  *(v0 + 1520) = v16;
  v18 = __swift_allocate_boxed_opaque_existential_1((v0 + 1496));
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1528));
  if (!*(v0 + 1520))
  {

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v19 = *(v0 + 2032);
  v20 = *(v0 + 2024);
  v21 = *(v0 + 1976);
  sub_20C59D36C();

  if ((*(v19 + 48))(v21, 1, v20) == 1)
  {
    v22 = *(v0 + 2152);
    v23 = *(v0 + 2128);
    v24 = *(v0 + 2120);
    v25 = *(v0 + 2088);
    v26 = *(v0 + 1976);

    sub_20C477B50(v26, &qword_27C7C4AC0, &unk_20C5A89B0);
    v27 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D50ED0], v27);
    *(swift_allocObject() + 16) = v28;
    v30 = v28;
    v31 = sub_20C59E5BC();
    sub_20C59EAAC();
    sub_20C4BFD68(v5, v6);
    sub_20C477B50(v25, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v23 + 8))(v22, v24);
LABEL_38:
    v40 = v28;
    goto LABEL_20;
  }

  v45 = *(*(v0 + 2032) + 32);
  v45(*(v0 + 2056), *(v0 + 1976), *(v0 + 2024));
  v46 = sub_20C59D34C();
  if (!v47)
  {
    goto LABEL_34;
  }

  if (v46 == 6581107 && v47 == 0xE300000000000000)
  {

    goto LABEL_29;
  }

  v48 = sub_20C5A0E9C();

  if ((v48 & 1) == 0)
  {
LABEL_34:
    v66 = *(v0 + 2128);
    v104 = *(v0 + 2120);
    v106 = *(v0 + 2152);
    v102 = *(v0 + 2088);
    v67 = *(v0 + 2056);
    v68 = *(v0 + 2032);
    v69 = *(v0 + 2024);

    v70 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v70 - 8) + 104))(v71, *MEMORY[0x277D50F00], v70);
    *(swift_allocObject() + 16) = v28;
    v72 = v28;
    v31 = sub_20C59E5BC();
LABEL_37:
    sub_20C59EAAC();
    sub_20C4BFD68(v5, v107);
    (*(v68 + 8))(v67, v69);
    sub_20C477B50(v102, &qword_27C7C59B0, &qword_20C5A6E88);
    (*(v66 + 8))(v106, v104);
    goto LABEL_38;
  }

LABEL_29:
  v49 = sub_20C59D33C();
  if (!v50)
  {
LABEL_36:
    v66 = *(v0 + 2128);
    v104 = *(v0 + 2120);
    v106 = *(v0 + 2152);
    v102 = *(v0 + 2088);
    v67 = *(v0 + 2056);
    v68 = *(v0 + 2032);
    v69 = *(v0 + 2024);

    v73 = sub_20C59E12C();
    sub_20C540984(&unk_27C7C5990, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    v28 = swift_allocError();
    (*(*(v73 - 8) + 104))(v74, *MEMORY[0x277D50EE8], v73);
    *(swift_allocObject() + 16) = v28;
    v75 = v28;
    v31 = sub_20C59E5BC();
    goto LABEL_37;
  }

  v51 = v50;
  v52 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v52 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {

    goto LABEL_36;
  }

  v92 = *(v0 + 2208);
  v93 = *(v0 + 2216);
  v80 = *(v0 + 2192);
  v53 = *(v0 + 2152);
  v94 = v53;
  v97 = *(v0 + 2144);
  v83 = *(v0 + 2136);
  v95 = *(v0 + 2128);
  v54 = *(v0 + 2120);
  v101 = v54;
  v105 = *(v0 + 2088);
  v100 = *(v0 + 2080);
  v86 = *(v0 + 2064);
  v88 = *(v0 + 2072);
  v103 = *(v0 + 2056);
  v99 = *(v0 + 2048);
  v85 = *(v0 + 2040);
  v96 = *(v0 + 2032);
  v98 = *(v0 + 2024);
  v55 = *(v0 + 1928);
  v90 = v49;
  v91 = v45;
  v56 = *(v0 + 1880);
  v78 = *(v0 + 1832);
  v89 = *(v0 + 1784);
  sub_20C59FEAC();
  v57 = sub_20C5268EC("AVContentKeyRequest.makeServerPlaybackContext", 45, 2, &dword_20C472000, 1, (v0 + 1336));
  (*(v56 + 8))(v55, v78, v57);
  v80(v97, v53, v54);
  sub_20C477580(v0 + 1336, v0 + 1416);
  (*(v96 + 16))(v99, v103, v98);
  sub_20C4775E4(v105, v100, &qword_27C7C59B0, &qword_20C5A6E88);
  v58 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v77 = (v83 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v84 + 47) & 0xFFFFFFFFFFFFFFF8;
  v79 = (*(v96 + 80) + v82 + 16) & ~*(v96 + 80);
  v87 = (v85 + *(v86 + 80) + v79) & ~*(v86 + 80);
  v60 = swift_allocObject();
  (*(v95 + 32))(v60 + v58, v97, v101);
  v61 = (v60 + v77);
  *v61 = v5;
  v61[1] = v6;
  *(v60 + v81) = v89;
  v62 = (v60 + v59);
  *v62 = v90;
  v62[1] = v51;
  sub_20C4780E8((v0 + 1416), v60 + v84);
  v63 = (v60 + v82);
  *v63 = v92;
  v63[1] = v93;
  v91(v60 + v79, v99, v98);
  sub_20C4F8A00(v100, v60 + v87);
  v64 = (v60 + ((v88 + v87 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v64 = v9;
  v64[1] = v11;
  v31 = sub_20C59E5BC();
  v65 = v89;

  sub_20C59EA9C();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1336));
  (*(v96 + 8))(v103, v98);
  sub_20C477B50(v105, &qword_27C7C59B0, &qword_20C5A6E88);
  (*(v95 + 8))(v94, v101);
LABEL_21:
  v41 = *(v0 + 2112);
  v42 = swift_task_alloc();
  *(v0 + 2232) = v42;
  *(v42 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v42 + 24) = 42;
  *(v42 + 32) = 2;
  *(v42 + 40) = 395;
  *(v42 + 48) = v41;
  v43 = swift_task_alloc();
  *(v0 + 2240) = v43;
  sub_20C59E5BC();
  *v43 = v0;
  v43[1] = sub_20C539B4C;
  v44 = *(v0 + 1688);

  return MEMORY[0x2822008A0](v44, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DD8, v42, v31);
}

uint64_t sub_20C539B4C()
{
  v2 = *v1;
  *(*v1 + 2248) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C539D24, 0, 0);
  }

  else
  {
    v3 = v2[264];
    v4 = v2[263];
    v5 = v2[262];

    (*(v4 + 8))(v3, v5);

    return MEMORY[0x282200920](v2 + 82, v2 + 207, sub_20C539CCC, v2 + 242);
  }
}

uint64_t sub_20C539D24()
{
  (*(v0[263] + 8))(v0[264], v0[262]);

  return MEMORY[0x282200920](v0 + 82, v0 + 207, sub_20C539DA4, v0 + 230);
}

uint64_t sub_20C539EEC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59E0, &qword_20C5A8A20);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C539FB8, 0, 0);
}

uint64_t sub_20C539FB8()
{
  v1 = v0[6];
  sub_20C528170(v1);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 386;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = sub_20C59E52C();
  *v3 = v0;
  v3[1] = sub_20C527084;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DE0, v2, v4);
}

uint64_t sub_20C53A0DC(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59D0, &qword_20C5A5370);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[5] = v3;
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_20C53A1E4;

  return sub_20C52E8BC(v3);
}

uint64_t sub_20C53A1E4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_20C540DB4;
  }

  else
  {
    v2 = sub_20C53A2F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C53A2F8()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "SeymourMedia/StreamingKeyProvisioner.swift";
  *(v2 + 24) = 42;
  *(v2 + 32) = 2;
  *(v2 + 40) = 387;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);
  *v3 = v0;
  v3[1] = sub_20C531294;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C540DDC, v2, v4);
}

void sub_20C53A41C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v52 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980, &qword_20C5A85C0);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v43 - v10;
  v51 = type metadata accessor for StreamingKeyProvisioner.State(0);
  MEMORY[0x28223BE20](v51);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v43 - v13;
  v14 = sub_20C5A01CC();
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v17 = a2;
  v18 = a1;
  v19 = sub_20C5A01BC();
  v20 = sub_20C5A089C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = a3;
    v23 = v22;
    v43 = v22;
    v44 = swift_slowAlloc();
    v57[0] = v44;
    *v21 = 138543618;
    *(v21 + 4) = v17;
    *v23 = v17;
    *(v21 + 12) = 2080;
    swift_getErrorValue();
    v46 = v5;
    v24 = v55;
    v25 = a1;
    v26 = v56;
    v27 = v17;
    v28 = v26;
    a1 = v25;
    v29 = MEMORY[0x20F2FF3F0](v24, v28);
    v31 = sub_20C479640(v29, v30, v57);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_20C472000, v19, v20, "%{public}@ Unable to fulfill key request because of %s", v21, 0x16u);
    v32 = v43;
    sub_20C477B50(v43, &qword_27C7C60F0, &unk_20C5A4220);
    MEMORY[0x20F2FFF90](v32, -1, -1);
    v33 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x20F2FFF90](v33, -1, -1);
    MEMORY[0x20F2FFF90](v21, -1, -1);
  }

  (*(v48 + 8))(v16, v49);
  v34 = OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_state;
  swift_beginAccess();
  v35 = v50;
  sub_20C53FBCC(v17 + v34, v50);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20C53FC30(v35);
  }

  else
  {
    v36 = sub_20C59E5BC();
    (*(*(v36 - 8) + 8))(v35, v36);
    v37 = v47;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_20C53FC8C(v37, v17 + v34);
    swift_endAccess();
  }

  v38 = sub_20C5A06FC();
  v39 = v53;
  (*(*(v38 - 8) + 56))(v53, 1, 1, v38);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v17;
  v40[5] = a1;
  v41 = v17;
  v42 = a1;
  sub_20C5326F8(0, 0, v39, v54, v40);

  sub_20C477B50(v39, &unk_27C7C5980, &qword_20C5A85C0);
  sub_20C4F72B0(a1);
}

uint64_t sub_20C53A8B0(char *a1, void *a2)
{
  v28 = a2;
  v3 = sub_20C5A01CC();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StreamingKeyProvisioner.State(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_20C59E5BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_state;
  swift_beginAccess();
  sub_20C53FBCC(&a1[v15], v10);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_20C53FC30(v10);
  }

  else
  {
    v16 = *(v12 + 32);
    v16(v14, v10, v11);
    v16(v7, v14, v11);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_20C53FC8C(v7, &a1[v15]);
    swift_endAccess();
  }

  v17 = v29;
  sub_20C59FE5C();
  v18 = a1;
  v19 = v28;
  v20 = sub_20C5A01BC();
  v21 = sub_20C5A08AC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138543618;
    *(v22 + 4) = v18;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v19;
    *v23 = v18;
    v23[1] = v19;
    v24 = v18;
    v25 = v19;
    _os_log_impl(&dword_20C472000, v20, v21, "%{public}@ Providing key request: %@...", v22, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v23, -1, -1);
    MEMORY[0x20F2FFF90](v22, -1, -1);
  }

  return (*(v30 + 8))(v17, v3);
}

uint64_t sub_20C53AC2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_20C4BFD7C(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B8, &qword_20C5A89F0);

  return sub_20C59EAAC();
}

uint64_t sub_20C53ACF4(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for StreamingKeyProvisioner.State(319);
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_20C53ADFC(uint64_t a1, void *a2, void *a3)
{
  v51 = a2;
  v6 = sub_20C59D37C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20C5A01CC();
  v10 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20C59D38C();
  if (!v3)
  {
    v48 = v10;
    v49 = 0;
    v50 = v12;
    v15 = v7;
    v16 = result;
    v17 = v14;
    sub_20C4BFD7C(result, v14);
    v18 = sub_20C59D3BC();
    v19 = v6;
    v20 = [objc_opt_self() contentKeyResponseWithFairPlayStreamingKeyResponseData_];

    v46 = v16;
    v47 = v17;
    v21 = v16;
    v22 = v15;
    sub_20C4A7C7C(v21, v17);
    v23 = v51;
    v45 = v20;
    v24 = v20;
    v25 = v19;
    [v51 processContentKeyResponse_];
    sub_20C59FE5C();
    v26 = *(v22 + 16);
    v44 = v9;
    v26(v9, a1, v19);
    v27 = a3;
    v28 = v23;
    v29 = sub_20C5A01BC();
    v30 = sub_20C5A08AC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53 = v51;
      *v31 = 138544130;
      *(v31 + 4) = v27;
      *(v31 + 12) = 2114;
      *(v31 + 14) = v28;
      v43 = v32;
      *v32 = v27;
      v32[1] = v28;
      *(v31 + 22) = 2160;
      *(v31 + 24) = 1752392040;
      *(v31 + 32) = 2080;
      sub_20C540984(&unk_27C7C59F0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v33 = v27;
      v34 = v28;
      v35 = v29;
      v36 = v44;
      v37 = sub_20C5A0E6C();
      v39 = v38;
      (*(v22 + 8))(v36, v25);
      v40 = sub_20C479640(v37, v39, &v53);

      *(v31 + 34) = v40;
      _os_log_impl(&dword_20C472000, v35, v30, "%{public}@ Attempted to process content key response for request: %{public}@ with local URL: %{mask.hash}s", v31, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
      v41 = v43;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v41, -1, -1);
      v42 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x20F2FFF90](v42, -1, -1);
      MEMORY[0x20F2FFF90](v31, -1, -1);

      sub_20C4A7C7C(v46, v47);
    }

    else
    {

      sub_20C4A7C7C(v46, v47);
      (*(v22 + 8))(v44, v25);
    }

    return (*(v48 + 8))(v50, v52);
  }

  return result;
}

uint64_t sub_20C53B244(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_20C59D37C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C5A01CC();
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  LODWORD(a1) = *(a1 + 8);
  if (a1 == 1)
  {
    v42 = v13;
    v43 = v12;
    v18 = v16;
    sub_20C59FE5C();
    (*(v8 + 16))(v10, a3, v7);
    sub_20C4F88FC(v16, 1);
    v19 = a2;
    v20 = sub_20C5A01BC();
    v21 = sub_20C5A08AC();

    sub_20C49B78C(v16, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = 1;
      a1 = v22;
      v38 = swift_slowAlloc();
      v39 = v15;
      v23 = a4;
      v24 = v38;
      v40 = swift_slowAlloc();
      v46 = v40;
      *a1 = 138544130;
      *(a1 + 4) = v19;
      *v24 = v19;
      a4 = v23;
      *(a1 + 12) = 2160;
      *(a1 + 14) = 1752392040;
      *(a1 + 22) = 2080;
      sub_20C540984(&unk_27C7C59F0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      LOBYTE(v23) = v21;
      v25 = v19;
      v26 = v20;
      v27 = sub_20C5A0E6C();
      v29 = v28;
      (*(v8 + 8))(v10, v7);
      v30 = sub_20C479640(v27, v29, &v46);

      *(a1 + 24) = v30;
      *(a1 + 32) = 2082;
      swift_getErrorValue();
      v31 = MEMORY[0x20F2FF3F0](v44, v45);
      v33 = sub_20C479640(v31, v32, &v46);

      *(a1 + 34) = v33;
      _os_log_impl(&dword_20C472000, v26, v23, "%{public}@ Failed to load local key data for key URL: %{mask.hash}s with error: %{public}s", a1, 0x2Au);
      v34 = v38;
      sub_20C477B50(v38, &qword_27C7C60F0, &unk_20C5A4220);
      MEMORY[0x20F2FFF90](v34, -1, -1);
      v35 = v40;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v35, -1, -1);
      v36 = a1;
      LOBYTE(a1) = v41;
      MEMORY[0x20F2FFF90](v36, -1, -1);

      sub_20C49B78C(v16, 1);
      (*(v42 + 8))(v39, v43);
    }

    else
    {

      sub_20C49B78C(v16, 1);
      (*(v8 + 8))(v10, v7);
      (*(v42 + 8))(v15, v43);
    }
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v46 = v16;
  v47 = a1;
  return sub_20C59F56C();
}

uint64_t get_enum_tag_for_layout_string_12SeymourMedia23StreamingKeyProvisionerC0D12RequestStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20C53B9F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C53BA4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_20C53BAB8(uint64_t a1)
{
  sub_20C53BB3C(319, &qword_27C7C5960);
  if (v1 <= 0x3F)
  {
    sub_20C53BB3C(319, &qword_27C7C5968);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C53BB3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_20C59E5BC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_20C53BB98(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v62 = a6;
  v60 = a4;
  v61 = a5;
  v59 = a2;
  v65 = a9;
  v66 = a8;
  v12 = sub_20C59D46C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  v22 = sub_20C5A01CC();
  v63 = *(v22 - 8);
  v64 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v58 - v26;
  if (a1)
  {
    v28 = a1;
    sub_20C59F46C();
    (*(v13 + 16))(v15, a7, v12);

    v29 = a1;
    v30 = sub_20C5A01BC();
    v31 = sub_20C5A089C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v67 = v58;
      *v32 = 136446978;
      *(v32 + 4) = sub_20C479640(v59, a3, &v67);
      *(v32 + 12) = 2082;
      v33 = sub_20C5A0C1C();
      v62 = v31;
      v35 = sub_20C479640(v33, v34, &v67);

      *(v32 + 14) = v35;
      *(v32 + 22) = 2048;
      sub_20C59D44C();
      sub_20C59D3FC();
      v37 = v36;
      v38 = *(v13 + 8);
      v38(v18, v12);
      v38(v15, v12);
      *(v32 + 24) = v37;
      *(v32 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v40 = MEMORY[0x28223BE20](ErrorValue);
      (*(v42 + 16))(&v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
      v43 = sub_20C5A041C();
      v45 = sub_20C479640(v43, v44, &v67);

      *(v32 + 34) = v45;
      _os_log_impl(&dword_20C472000, v30, v62, "[%{public}s] %{public}s ended in %fs -> %{public}s", v32, 0x2Au);
      v46 = v58;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v46, -1, -1);
      MEMORY[0x20F2FFF90](v32, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    (*(v63 + 8))(v24, v64);
  }

  else
  {
    sub_20C59F46C();
    (*(v13 + 16))(v21, a7, v12);

    v47 = sub_20C5A01BC();
    v48 = sub_20C5A08AC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v67 = v58;
      *v49 = 136446722;
      *(v49 + 4) = sub_20C479640(v59, a3, &v67);
      *(v49 + 12) = 2082;
      v50 = sub_20C5A0C1C();
      v52 = sub_20C479640(v50, v51, &v67);

      *(v49 + 14) = v52;
      *(v49 + 22) = 2048;
      sub_20C59D44C();
      sub_20C59D3FC();
      v54 = v53;
      v55 = *(v13 + 8);
      v55(v18, v12);
      v55(v21, v12);
      *(v49 + 24) = v54;
      _os_log_impl(&dword_20C472000, v47, v48, "[%{public}s] %{public}s ended in %fs", v49, 0x20u);
      v56 = v58;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v56, -1, -1);
      MEMORY[0x20F2FFF90](v49, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v21, v12);
    }

    (*(v63 + 8))(v27, v64);
  }

  sub_20C59FEFC();
  return sub_20C59F3FC();
}

uint64_t sub_20C53C270(void *a1)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49D8, &qword_20C5A9DC0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v84 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v3;
  MEMORY[0x28223BE20](v4);
  v85 = &v81 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0, &unk_20C5A89B0);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v81 - v8;
  v9 = sub_20C59D37C();
  v98 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v83 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v10;
  MEMORY[0x28223BE20](v11);
  v95 = &v81 - v12;
  v13 = sub_20C59F48C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_20C5A01CC();
  v92 = *(v94 - 1);
  MEMORY[0x28223BE20](v94);
  v93 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - v19;
  sub_20C59FE5C();
  v21 = v1;
  v22 = a1;
  v23 = sub_20C5A01BC();
  v24 = sub_20C5A08AC();

  v97 = v21;
  v25 = os_log_type_enabled(v23, v24);
  v96 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138543618;
    v28 = v97;
    *(v26 + 4) = v97;
    *(v26 + 12) = 2114;
    *(v26 + 14) = v22;
    *v27 = v28;
    v27[1] = v22;
    v29 = v28;
    v30 = v22;
    _os_log_impl(&dword_20C472000, v23, v24, "%{public}@ Got key request: %{public}@", v26, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v27, -1, -1);
    v31 = v26;
    v9 = v96;
    MEMORY[0x20F2FFF90](v31, -1, -1);
  }

  v32 = *(v92 + 8);
  v33 = v20;
  v34 = v94;
  v32(v33, v94);
  sub_20C59FEAC();
  v35 = sub_20C5268EC("contentKeySession.didProvidePersistableKeyRequest", 49, 2, &dword_20C472000, 1, v107);
  (*(v14 + 8))(v16, v13, v35);
  v36 = v22;
  if ([v22 identifier])
  {
    sub_20C5A0ABC();
    swift_unknownObjectRelease();
    v37 = *(&v102 + 1);
    v38 = __swift_project_boxed_opaque_existential_1(&v101, *(&v102 + 1));
    v100 = v37;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
    (*(*(v37 - 8) + 16))(boxed_opaque_existential_1, v38, v37);
    sub_20C4947E4(&v99, &v103);
    __swift_destroy_boxed_opaque_existential_1Tm(&v101);
  }

  else
  {
    v103 = 0u;
    v104 = 0u;
  }

  v105 = v103;
  v106 = v104;
  v40 = *(&v104 + 1);
  if (*(&v104 + 1))
  {
    v41 = __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
    *(&v102 + 1) = v40;
    v42 = __swift_allocate_boxed_opaque_existential_1(&v101);
    (*(*(v40 - 8) + 16))(v42, v41, v40);
    __swift_destroy_boxed_opaque_existential_1Tm(&v105);
    v43 = v98;
    v44 = v91;
    if (*(&v102 + 1))
    {
      swift_dynamicCast();
      goto LABEL_11;
    }
  }

  else
  {
    sub_20C477B50(&v105, &unk_27C7C59C0, &qword_20C5A89F8);
    v101 = 0u;
    v102 = 0u;
    v43 = v98;
    v44 = v91;
  }

  sub_20C477B50(&v101, &qword_27C7C44D0, &unk_20C5A35A0);
LABEL_11:
  sub_20C59D2DC();
  if ((*(v43 + 48))(v44, 1, v9) == 1)
  {
    sub_20C477B50(v44, &qword_27C7C4AC0, &unk_20C5A89B0);
    sub_20C59FE5C();
    v45 = v97;
    v46 = v22;
    v47 = sub_20C5A01BC();
    v48 = sub_20C5A08AC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138543618;
      *(v49 + 4) = v45;
      *(v49 + 12) = 2114;
      *(v49 + 14) = v46;
      *v50 = v45;
      v50[1] = v46;
      v51 = v45;
      v52 = v46;
      _os_log_impl(&dword_20C472000, v47, v48, "%{public}@ Can't get key url from key request: %{public}@", v49, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v50, -1, -1);
      MEMORY[0x20F2FFF90](v49, -1, -1);
    }

    v32(v93, v34);
    __swift_project_boxed_opaque_existential_1(v107, v107[3]);
    sub_20C59F55C();
  }

  else
  {
    v53 = *(v43 + 32);
    v93 = (v43 + 32);
    v94 = v53;
    (v53)(v95, v44, v9);
    v54 = v97;
    __swift_project_boxed_opaque_existential_1(&v97[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_assetClient], *&v97[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_assetClient + 24]);
    v55 = v85;
    sub_20C59F17C();
    v56 = swift_allocObject();
    *(v56 + 16) = v22;
    *(v56 + 24) = v54;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_20C540898;
    *(v57 + 24) = v56;
    v58 = v86;
    v59 = v84;
    v60 = v36;
    v61 = v87;
    (*(v86 + 16))(v84, v55, v87);
    v62 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v63 = (v82 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    (*(v58 + 32))(v64 + v62, v59, v61);
    v65 = (v64 + v63);
    *v65 = sub_20C5408B4;
    v65[1] = v57;
    v66 = v54;
    v67 = v60;
    v68 = v88;
    sub_20C59EA9C();
    (*(v58 + 8))(v55, v61);
    v69 = v98;
    v70 = v83;
    v71 = v95;
    v72 = v96;
    (*(v98 + 16))(v83, v95, v96);
    sub_20C477580(v107, &v101);
    v73 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v74 = (v81 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    *(v75 + 16) = v66;
    (v94)(v75 + v73, v70, v72);
    sub_20C4780E8(&v101, v75 + v74);
    v76 = v66;
    v77 = v90;
    v78 = sub_20C59EABC();
    v79 = swift_allocObject();
    *(v79 + 16) = sub_20C5408E4;
    *(v79 + 24) = v75;

    v78(sub_20C490920, v79);

    (*(v89 + 8))(v68, v77);
    (*(v69 + 8))(v71, v72);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v107);
}

uint64_t sub_20C53CE44(void *a1)
{
  v2 = v1;
  v107[5] = *MEMORY[0x277D85DE8];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v93 - v4;
  v5 = sub_20C59D37C();
  v101 = *(v5 - 1);
  v102 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_20C59F48C();
  v8 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C5A01CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v93 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = &v93 - v15;
  MEMORY[0x28223BE20](v16);
  v103 = &v93 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v93 - v19;
  sub_20C59FE5C();
  v21 = v2;
  v22 = a1;
  v23 = sub_20C5A01BC();
  v24 = sub_20C5A08AC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v94 = v12;
    v26 = v25;
    v27 = swift_slowAlloc();
    v96 = v11;
    v28 = v27;
    *v26 = 138543618;
    *(v26 + 4) = v21;
    *(v26 + 12) = 2114;
    *(v26 + 14) = v22;
    *v27 = v21;
    v27[1] = v22;
    v29 = v21;
    v30 = v22;
    _os_log_impl(&dword_20C472000, v23, v24, "%{public}@ Got key request: %{public}@", v26, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
    swift_arrayDestroy();
    v31 = v28;
    v11 = v96;
    MEMORY[0x20F2FFF90](v31, -1, -1);
    v32 = v26;
    v12 = v94;
    MEMORY[0x20F2FFF90](v32, -1, -1);
  }

  v35 = *(v12 + 8);
  v33 = v12 + 8;
  v34 = v35;
  v35(v20, v11);
  sub_20C59FEAC();
  v36 = sub_20C5268EC("contentKeySession.didProvideKeyRequest", 38, 2, &dword_20C472000, 1, v107);
  (*(v8 + 8))(v10, v100, v36);
  v37 = [*&v21[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_asset] URL];
  sub_20C59D32C();

  LOBYTE(v37) = sub_20C59D2BC();
  (v101[1].isa)(v7, v102);
  if ((v37 & 1) == 0)
  {
    v53 = v97;
    if (*&v21[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_deviceIdentificationBehavior + 8])
    {
      sub_20C535A18(v22, v97);
    }

    else
    {
      sub_20C5374F4(v22, v97);
    }

    sub_20C477580(v107, v106);
    v54 = swift_allocObject();
    sub_20C4780E8(v106, v54 + 16);
    v55 = v99;
    v56 = sub_20C59EABC();
    v57 = swift_allocObject();
    *(v57 + 16) = sub_20C540D6C;
    *(v57 + 24) = v54;

    v56(sub_20C490920, v57);

LABEL_21:
    (*(v98 + 8))(v53, v55);
    return __swift_destroy_boxed_opaque_existential_1Tm(v107);
  }

  sub_20C59FE5C();
  v38 = v21;
  v39 = v22;
  v40 = sub_20C5A01BC();
  v41 = sub_20C5A08AC();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = v33;
    v43 = swift_slowAlloc();
    v44 = v11;
    v45 = swift_slowAlloc();
    *v43 = 138543618;
    *(v43 + 4) = v38;
    *(v43 + 12) = 2114;
    *(v43 + 14) = v39;
    *v45 = v38;
    v45[1] = v39;
    v46 = v38;
    v47 = v39;
    _os_log_impl(&dword_20C472000, v40, v41, "%{public}@ initial content key request %{public}@. Requesting persistable content key.", v43, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
    swift_arrayDestroy();
    v48 = v45;
    v11 = v44;
    MEMORY[0x20F2FFF90](v48, -1, -1);
    v49 = v43;
    v33 = v42;
    MEMORY[0x20F2FFF90](v49, -1, -1);
  }

  v34(v103, v11);
  *&v106[0] = 0;
  v50 = [v39 respondByRequestingPersistableContentKeyRequestAndReturnError_];
  v51 = *&v106[0];
  if (!v50)
  {
    v96 = v11;
    v58 = *&v106[0];
    v59 = sub_20C59D29C();

    swift_willThrow();
    v60 = v95;
    sub_20C59FE5C();
    v61 = v38;
    v62 = v39;
    v63 = v59;
    v64 = sub_20C5A01BC();
    v65 = sub_20C5A08AC();

    v66 = os_log_type_enabled(v64, v65);
    v103 = v62;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *&v106[0] = v102;
      *v67 = 138543874;
      *(v67 + 4) = v61;
      *(v67 + 12) = 2114;
      *(v67 + 14) = v62;
      *v68 = v61;
      v68[1] = v62;
      *(v67 + 22) = 2082;
      swift_getErrorValue();
      v101 = v64;
      v94 = v33;
      v69 = v104;
      v70 = v59;
      v71 = v105;
      v72 = v61;
      v73 = v62;
      v74 = v71;
      v59 = v70;
      v75 = MEMORY[0x20F2FF3F0](v69, v74);
      v77 = sub_20C479640(v75, v76, v106);

      *(v67 + 24) = v77;
      v78 = v101;
      _os_log_impl(&dword_20C472000, v101, v65, "%{public}@ Error requesting persistable key for request: %{public}@ error: %{public}s", v67, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v68, -1, -1);
      v79 = v102;
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      MEMORY[0x20F2FFF90](v79, -1, -1);
      MEMORY[0x20F2FFF90](v67, -1, -1);

      v80 = v95;
    }

    else
    {

      v80 = v60;
    }

    v81 = v96;
    v34(v80, v96);
    v82 = v93;
    sub_20C59FE5C();
    v83 = v61;
    v84 = sub_20C5A01BC();
    v85 = sub_20C5A08AC();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = 138543362;
      *(v86 + 4) = v83;
      *v87 = v83;
      v88 = v83;
      _os_log_impl(&dword_20C472000, v84, v85, "%{public}@ Attempting to use streaming keys instead", v86, 0xCu);
      sub_20C477B50(v87, &qword_27C7C60F0, &unk_20C5A4220);
      MEMORY[0x20F2FFF90](v87, -1, -1);
      MEMORY[0x20F2FFF90](v86, -1, -1);
    }

    v34(v82, v81);
    v53 = v97;
    if (*&v83[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_deviceIdentificationBehavior + 8])
    {
      sub_20C535A18(v103, v97);
    }

    else
    {
      sub_20C5374F4(v103, v97);
    }

    sub_20C477580(v107, v106);
    v89 = swift_allocObject();
    sub_20C4780E8(v106, v89 + 16);
    v55 = v99;
    v90 = sub_20C59EABC();
    v91 = swift_allocObject();
    *(v91 + 16) = sub_20C540D6C;
    *(v91 + 24) = v89;

    v90(sub_20C490920, v91);

    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  v52 = v51;
  sub_20C59F55C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v107);
}

uint64_t sub_20C53DA94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970, &qword_20C5A5490);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - v4;
  v34 = sub_20C59F48C();
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C5A01CC();
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v12 = v1;
  v13 = a1;
  v14 = sub_20C5A01BC();
  v15 = sub_20C5A08AC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v5;
    v18 = v17;
    *v16 = 138543618;
    *(v16 + 4) = v12;
    *(v16 + 12) = 2114;
    *(v16 + 14) = v13;
    *v17 = v12;
    v17[1] = v13;
    v19 = v12;
    v20 = v13;
    _os_log_impl(&dword_20C472000, v14, v15, "%{public}@ Got request to renew a key request: %{public}@", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
    swift_arrayDestroy();
    v21 = v18;
    v5 = v32;
    MEMORY[0x20F2FFF90](v21, -1, -1);
    MEMORY[0x20F2FFF90](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v33);
  sub_20C59FEAC();
  v22 = sub_20C5268EC("contentKeySession.didProvideRenewingContentKeyRequest", 53, 2, &dword_20C472000, 1, v38);
  (*(v6 + 8))(v8, v34, v22);
  if (*&v12[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_deviceIdentificationBehavior + 8])
  {
    sub_20C531684(v13, v5);
    sub_20C477580(v38, v37);
    v23 = swift_allocObject();
    sub_20C4780E8(v37, v23 + 16);
    v24 = sub_20C490920;
    v25 = sub_20C53E8DC;
  }

  else
  {
    sub_20C532A14(v13, v5);
    sub_20C477580(v38, v37);
    v23 = swift_allocObject();
    sub_20C4780E8(v37, v23 + 16);
    v24 = sub_20C4907D4;
    v25 = sub_20C540D6C;
  }

  v26 = v36;
  v27 = v5;
  v28 = sub_20C59EABC();
  v29 = swift_allocObject();
  *(v29 + 16) = v25;
  *(v29 + 24) = v23;

  v28(v24, v29);

  (*(v35 + 8))(v27, v26);
  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

uint64_t sub_20C53DF28(void *a1, void *a2)
{
  v5 = sub_20C5A01CC();
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = *&v2[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests];
  v52 = a1;
  v53 = a2;
  os_unfair_lock_lock((v11 + 24));
  sub_20C53E8C0((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  swift_getErrorValue();
  if ((sub_20C545218(v59, v60) & 1) != 0 || (swift_getErrorValue(), sub_20C54557C(v58[2], v58[3])))
  {
    sub_20C59FE5C();
    v12 = v2;
    v13 = a1;
    v14 = a2;
    v15 = sub_20C5A01BC();
    v16 = sub_20C5A089C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v50 = v5;
      v19 = v18;
      v49 = swift_slowAlloc();
      v58[0] = v49;
      *v17 = 138543874;
      *(v17 + 4) = v12;
      *(v17 + 12) = 2114;
      *(v17 + 14) = v13;
      *v19 = v12;
      v19[1] = v13;
      *(v17 + 22) = 2082;
      swift_getErrorValue();
      v20 = v54;
      v21 = v55;
      v22 = v12;
      v23 = v13;
      v24 = MEMORY[0x20F2FF3F0](v20, v21);
      v26 = sub_20C479640(v24, v25, v58);

      *(v17 + 24) = v26;
      _os_log_impl(&dword_20C472000, v15, v16, "%{public}@ Content Key Request (%{public}@) failed: %{public}s", v17, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v19, -1, -1);
      v27 = v49;
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x20F2FFF90](v27, -1, -1);
      MEMORY[0x20F2FFF90](v17, -1, -1);

      return (*(v51 + 8))(v10, v50);
    }

    else
    {

      return (*(v51 + 8))(v10, v5);
    }
  }

  else
  {
    sub_20C59FE5C();
    v29 = v2;
    v30 = a1;
    v31 = a2;
    v32 = sub_20C5A01BC();
    v33 = sub_20C5A089C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v5;
      v36 = v35;
      v49 = swift_slowAlloc();
      v58[0] = v49;
      *v34 = 138543874;
      *(v34 + 4) = v29;
      *(v34 + 12) = 2114;
      *(v34 + 14) = v30;
      *v36 = v29;
      v36[1] = v30;
      *(v34 + 22) = 2082;
      swift_getErrorValue();
      v48 = v32;
      v37 = v56;
      v38 = v57;
      v39 = v29;
      v40 = v30;
      v41 = MEMORY[0x20F2FF3F0](v37, v38);
      v43 = sub_20C479640(v41, v42, v58);

      *(v34 + 24) = v43;
      v44 = v48;
      _os_log_impl(&dword_20C472000, v48, v33, "%{public}@ Content Key Request (%{public}@) unrecoverable failure: %{public}s", v34, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v36, -1, -1);
      v45 = v49;
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x20F2FFF90](v45, -1, -1);
      MEMORY[0x20F2FFF90](v34, -1, -1);

      result = (*(v51 + 8))(v7, v50);
    }

    else
    {

      result = (*(v51 + 8))(v7, v5);
    }

    v46 = *&v29[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_onUnrecoverableError];
    if (v46)
    {
      v47 = *&v29[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_onUnrecoverableError + 8];

      v46(a2);
      return sub_20C47E6BC(v46, v47);
    }
  }

  return result;
}

uint64_t sub_20C53E47C(void *a1)
{
  v3 = sub_20C5A01CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v7 = v1;
  v8 = a1;
  v9 = sub_20C5A01BC();
  v10 = sub_20C5A08AC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543618;
    *(v11 + 4) = v7;
    *(v11 + 12) = 2114;
    *(v11 + 14) = v8;
    *v12 = v7;
    v12[1] = v8;
    v13 = v7;
    v14 = v8;
    _os_log_impl(&dword_20C472000, v9, v10, "%{public}@ Content Key Request (%{public}@) succeeded!", v11, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v12, -1, -1);
    MEMORY[0x20F2FFF90](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20C53E648(void *a1, void *a2)
{
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v9 = v2;
  v10 = a1;
  v11 = a2;
  v12 = sub_20C5A01BC();
  v13 = sub_20C5A08AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v5;
    v18 = v17;
    v28 = v11;
    v29 = v17;
    *v14 = 138543874;
    *(v14 + 4) = v9;
    *(v14 + 12) = 2114;
    *(v14 + 14) = v10;
    *v16 = v9;
    v16[1] = v10;
    *(v14 + 22) = 2082;
    type metadata accessor for RetryReason(0);
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = sub_20C5A041C();
    v24 = sub_20C479640(v22, v23, &v29);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_20C472000, v12, v13, "%{public}@ Content Key Request (%{public}@) should retry: %{public}s", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0, &unk_20C5A4220);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x20F2FFF90](v18, -1, -1);
    MEMORY[0x20F2FFF90](v14, -1, -1);

    (*(v27 + 8))(v8, v26);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  return 1;
}

uint64_t sub_20C53E998(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20C53EB7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C47FCF0;

  return sub_20C53251C(a1, v4, v5, v7, v6);
}

void sub_20C53EC58(id a1)
{
  if (a1 != 2)
  {
    sub_20C4947F4(a1);
  }
}

uint64_t sub_20C53EC84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C47FCF0;

  return sub_20C531E48(a1, v4, v5, v6);
}

uint64_t sub_20C53ED50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C47FCEC;

  return sub_20C52F1C4(a1, v5, v4);
}

uint64_t sub_20C53EF08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C47FCEC;

  return sub_20C530B74(a1, v4);
}

uint64_t sub_20C53EFA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C47FCEC;

  return sub_20C530D64(a1, v4);
}

uint64_t sub_20C53F048(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20C47FCEC;

  return sub_20C530F54(a1);
}

uint64_t objectdestroy_172Tm()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_20C4A7C7C(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C53F1A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_20C4E6460(v2, v3);
}

uint64_t sub_20C53F1D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C47FCEC;

  return sub_20C52957C(a1, v4);
}

uint64_t sub_20C53F328(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C47FCEC;

  return sub_20C528A98(a1, v4);
}

uint64_t sub_20C53F464(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(v1 + 16))();
  return v3(a1);
}

uint64_t sub_20C53F4B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C47FCEC;

  return sub_20C533364(a1, v5, v4);
}

uint64_t sub_20C53F5A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C47FCEC;

  return sub_20C535720(a1, v4, v5, v7, v6);
}

uint64_t sub_20C53F664(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C47FCEC;

  return sub_20C534DEC(a1, v4);
}

uint64_t sub_20C53F704(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20C47FCEC;

  return sub_20C534FDC(a1);
}

uint64_t objectdestroy_166Tm()
{
  v1 = sub_20C59E52C();
  v2 = *(v1 - 8);
  v21 = *(v2 + 80);
  v3 = (v21 + 16) & ~v21;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_20C59D37C();
  v7 = *(v6 - 8);
  v19 = v6;
  v20 = *(v7 + 80);
  v8 = (v20 + ((v17 + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20;
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0, &qword_20C5A6E88) - 8);
  v11 = *(v10 + 80);
  v12 = (v9 + v11 + v8) & ~v11;
  v18 = *(v10 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v13 = *(v0 + v4 + 8);
  if (v13 >> 60 != 15)
  {
    sub_20C4A7C7C(*(v0 + v4), v13);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v17));

  (*(v7 + 8))(v0 + v8, v19);
  v14 = sub_20C59E0CC();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v12, 1, v14))
  {
    (*(v15 + 8))(v0 + v12, v14);
  }

  return MEMORY[0x2821FE8E8](v0, ((v18 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v21 | v20 | v11 | 7);
}

uint64_t sub_20C53FA7C(void *a1)
{
  v3 = *(sub_20C59D46C() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20C53BB98(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_20C53FBCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingKeyProvisioner.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C53FC30(uint64_t a1)
{
  v2 = type metadata accessor for StreamingKeyProvisioner.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C53FC8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingKeyProvisioner.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C53FCF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C47FCEC;

  return sub_20C537424(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_79Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20C53FDF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C47FCEC;

  return sub_20C536E50(a1, v4, v5, v6);
}

uint64_t sub_20C53FEA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C47FCEC;

  return sub_20C52BD9C(a1, v5, v4);
}

uint64_t sub_20C53FFE0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return v7(a3, v8, v5);
}

uint64_t sub_20C540058(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, unint64_t, void, void))
{
  v5 = *(sub_20C59D46C() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_20C54018C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C47FCEC;

  return sub_20C52DD34(a1, v4);
}

uint64_t sub_20C54022C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C47FCEC;

  return sub_20C52E128(a1, v4);
}

uint64_t sub_20C5402CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20C47FCEC;

  return sub_20C52E318(a1);
}

uint64_t sub_20C54036C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C47FCEC;

  return sub_20C5388AC(a1, v5, v4);
}

uint64_t objectdestroy_65Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20C5404B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20C47FCEC;

  return sub_20C537424(a1, v4, v5, v7, v6);
}