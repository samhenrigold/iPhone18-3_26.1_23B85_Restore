uint64_t sub_226BEC484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6D4AC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BEC548, 0, 0);
}

uint64_t sub_226BEC548()
{
  v1 = *(v0 + 32);
  *(v0 + 64) = os_transaction_create();
  sub_226D6D46C();

  return MEMORY[0x2822009F8](sub_226BEC5C8, v1, 0);
}

uint64_t sub_226BEC5C8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_226BEC6B8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v5, "backgroundDelivery/daily", 24, 2, &unk_226D76BD8, v3, v6);
}

void sub_226BEC6B8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 32);

    MEMORY[0x2822009F8](sub_226BEC7F8, v3, 0);
  }
}

uint64_t sub_226BEC7F8()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  return MEMORY[0x2822009F8](sub_226BEEE44, 0, 0);
}

uint64_t sub_226BEC870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6D4AC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BEC934, 0, 0);
}

uint64_t sub_226BEC934()
{
  v1 = *(v0 + 32);
  *(v0 + 64) = os_transaction_create();
  sub_226D6D46C();

  return MEMORY[0x2822009F8](sub_226BEC9B4, v1, 0);
}

uint64_t sub_226BEC9B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_226BEC6B8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282116CE0](v5, "backgroundDelivery/weekly", 25, 2, &unk_226D76BC8, v3, v6);
}

uint64_t sub_226BECAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_226D66F5C();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BECB64, 0, 0);
}

uint64_t sub_226BECB64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v8 = *MEMORY[0x277CC6688];
  v20 = *(v2 + 104);
  v20(v1, v8, v4);
  v9 = (*(v7 + 32))(v1, v3, v6, v7);
  v0[7] = v9;
  v10 = *(v2 + 8);
  v0[8] = v10;
  v0[9] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v4);
  if (*(v9 + 16))
  {
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];
    v14 = v13[27];
    v15 = v13[28];
    __swift_project_boxed_opaque_existential_1(v13 + 24, v14);
    v20(v11, v8, v12);
    v16 = swift_task_alloc();
    v0[10] = v16;
    *v16 = v0;
    v16[1] = sub_226BECD64;
    v17 = v0[6];

    return MEMORY[0x282119A98](v9, v17, v14, v15);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_226BECD64(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  *(*v1 + 88) = a1;

  v2(v3, v4);

  return MEMORY[0x2822009F8](sub_226BECEF0, 0, 0);
}

uint64_t sub_226BECEF0()
{
  v1 = v0[11];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v2[17];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v4);
  (*(v5 + 56))(v1, v3, v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_226BECFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = sub_226D66F5C();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BED084, 0, 0);
}

uint64_t sub_226BED084()
{
  (*(v0[7] + 104))(v0[8], *MEMORY[0x277CC6678], v0[6]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_226BEEE48;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_226BED5A8(v2, v5, v3, v4);
}

uint64_t sub_226BED144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = sub_226D66F5C();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BED208, 0, 0);
}

uint64_t sub_226BED208()
{
  (*(v0[7] + 104))(v0[8], *MEMORY[0x277CC6670], v0[6]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_226BED2C8;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_226BED5A8(v2, v5, v3, v4);
}

uint64_t sub_226BED2C8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_226BED424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = sub_226D66F5C();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BED4E8, 0, 0);
}

uint64_t sub_226BED4E8()
{
  (*(v0[7] + 104))(v0[8], *MEMORY[0x277CC6680], v0[6]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_226BEEE48;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_226BED5A8(v2, v5, v3, v4);
}

uint64_t sub_226BED5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v5[7] = swift_task_alloc();
  v6 = sub_226D6D4AC();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_226D66F5C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BED710, v4, 0);
}

uint64_t sub_226BED710()
{
  v50 = v0;
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  v6 = (*(v5 + 32))(v3, v2, v4, v5);
  *(v0 + 120) = v6;
  v7 = v1[17];
  v8 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v7);
  v9 = (*(v8 + 48))(v3, v2, v7, v8);
  *(v0 + 128) = v9;
  if (qword_27D7A5F78 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 16);
  v14 = sub_226D6E07C();
  *(v0 + 136) = __swift_project_value_buffer(v14, qword_27D7A7E60);
  v15 = *(v12 + 16);
  *(v0 + 144) = v15;
  *(v0 + 152) = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v10, v13, v11);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = sub_226D6E05C();
  v17 = sub_226D6E9EC();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 112);
  v21 = *(v0 + 88);
  v20 = *(v0 + 96);
  if (v18)
  {
    v47 = v17;
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v48;
    *v22 = 136315650;
    sub_226BEEB10(&qword_281062C38, 255, MEMORY[0x277CC6690], MEMORY[0x277CC66A8]);
    v23 = sub_226D6F1CC();
    v25 = v24;
    log = v16;
    v26 = *(v20 + 8);
    v26(v19, v21);
    v27 = sub_226AC4530(v23, v25, &v49);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2048;
    v28 = *(v6 + 16);

    *(v22 + 14) = v28;

    *(v22 + 22) = 2048;
    v29 = *(v9 + 16);

    *(v22 + 24) = v29;

    _os_log_impl(&dword_226AB4000, log, v47, "Handling %s delivery for %ld pending and %ld upcoming", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x22AA8BEE0](v48, -1, -1);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v26 = *(v20 + 8);
    v26(v19, v21);
  }

  *(v0 + 160) = v26;
  if (*(v6 + 16))
  {
    v30 = *(v0 + 48);
    v31 = v30[27];
    v32 = v30[28];
    __swift_project_boxed_opaque_existential_1(v30 + 24, v31);
    v33 = swift_task_alloc();
    *(v0 + 168) = v33;
    *v33 = v0;
    v33[1] = sub_226BEDBF8;
    v34 = *(v0 + 16);

    return MEMORY[0x282119A98](v6, v34, v31, v32);
  }

  else
  {

    v36 = *(v0 + 64);
    v37 = *(v0 + 72);
    v38 = *(v0 + 56);
    (*(v0 + 32))(v35);
    sub_226D6E58C();

    if ((*(v37 + 48))(v38, 1, v36) == 1)
    {
      sub_226AC47B0(*(v0 + 56), &qword_27D7A8BE0, &unk_226D718F0);
    }

    else
    {
      v40 = *(v0 + 72);
      v39 = *(v0 + 80);
      v41 = *(v0 + 64);
      v43 = *(v0 + 16);
      v42 = *(v0 + 24);
      (*(v40 + 32))(v39, *(v0 + 56), v41);
      sub_226BEAFF4(v39, v43, v42);
      (*(v40 + 8))(v39, v41);
    }

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_226BEDBF8(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_226BEDD2C, v2, 0);
}

uint64_t sub_226BEDD2C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = v2[17];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v4);
  (*(v5 + 56))(v1, v3, v4, v5);

  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  (*(v0 + 32))(v6);
  sub_226D6E58C();

  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_226AC47B0(*(v0 + 56), &qword_27D7A8BE0, &unk_226D718F0);
  }

  else
  {
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 64);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    (*(v11 + 32))(v10, *(v0 + 56), v12);
    sub_226BEAFF4(v10, v14, v13);
    (*(v11 + 8))(v10, v12);
  }

  v15 = *(v0 + 8);

  return v15();
}

void *BackgroundDeliveryScheduler.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t BackgroundDeliveryScheduler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226BEE170(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AD827C;

  return sub_226BE9D80(a1, a2);
}

void *sub_226BEE214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11, v10);
  type metadata accessor for BackgroundDeliveryScheduler();
  v13 = swift_allocObject();
  (*(v6 + 16))(v8, v12, a3);
  v14 = sub_226BEE35C(v8, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

void *sub_226BEE35C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_226D68D9C();
  MEMORY[0x28223BE20](v8);
  v19[3] = a3;
  v19[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_defaultActor_initialize();
  sub_226AE532C(v19, (a2 + 14));
  v10 = type metadata accessor for BackgroundDeliveryTasks();
  v11 = swift_allocObject();
  a2[22] = v10;
  a2[23] = &off_283A6E388;
  a2[19] = v11;
  sub_226D679FC();
  swift_allocObject();
  v12 = sub_226D679EC();
  v17 = sub_226D6929C();
  v18 = MEMORY[0x277CC7820];
  __swift_allocate_boxed_opaque_existential_1(&v16);
  sub_226D6928C();
  sub_226D68D8C();
  sub_226D69A8C();
  swift_allocObject();
  sub_226D69A7C();
  *&v16 = v12;
  v13 = sub_226D6A61C();
  swift_allocObject();
  v14 = sub_226D6A60C();
  v17 = v13;
  v18 = MEMORY[0x277CC7C48];
  *&v16 = v14;
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  sub_226AC484C(&v16, (a2 + 24));
  return a2;
}

uint64_t sub_226BEE564()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226AE5A84;

  return sub_226BEBB00(v0);
}

uint64_t sub_226BEE5F4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AD827C;

  return sub_226BEC030(a1, a2, v2);
}

uint64_t sub_226BEE69C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return sub_226BEC484(a1, a2, v2);
}

uint64_t sub_226BEE744(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AE5A84;

  return sub_226BEC870(a1, a2, v2);
}

uint64_t sub_226BEE7EC(uint64_t a1, uint64_t a2)
{
  result = sub_226BEEB10(&qword_27D7A7E78, a2, type metadata accessor for BackgroundDeliveryScheduler, &protocol conformance descriptor for BackgroundDeliveryScheduler);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of BackgroundDeliverySchedulerProviding.receivedData(deliveryDate:dataTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226AE5A84;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BackgroundDeliveryScheduler.receivedData(deliveryDate:dataTypes:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AD827C;

  return v8(a1, a2);
}

uint64_t sub_226BEEB10(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226BEEB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AE5A84;

  return sub_226BED424(a1, v4, v5, v7, v6);
}

uint64_t sub_226BEEC18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AE5A84;

  return sub_226BED144(a1, v4, v5, v7, v6);
}

uint64_t sub_226BEECD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226AE5A84;

  return sub_226BECFC0(a1, v4, v5, v7, v6);
}

uint64_t sub_226BEED98(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226BECAA4(a1, v5, v4);
}

void sub_226BEEE4C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v19 = a2;
  v18 = a1;
  v20 = a3;
  v21 = sub_226D6D4AC();
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6B40C();
  v17 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_226D676AC();
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_userIdentifierProvider), *(v5 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_userIdentifierProvider + 24));
  sub_226D6D46C();
  sub_226D6C00C();
  if (v4)
  {
    (*(v6 + 8))(v8, v21);
  }

  else
  {
    v12 = v17;
    v16 = v9;
    (*(v6 + 8))(v8, v21);
    v13 = sub_226AE532C(v3 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_piiProcessor, v22);
    MEMORY[0x28223BE20](v13);
    v14 = v23;
    *(&v15 - 6) = v23;
    *(&v15 - 5) = v5;
    *(&v15 - 4) = v18;
    *(&v15 - 24) = v19 & 1;
    *(&v15 - 2) = v22;
    *(&v15 - 1) = v11;
    sub_226D6C2CC();
    sub_226D6EB8C();

    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    (*(v12 + 8))(v11, v16);
  }
}

uint64_t sub_226BEF0EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a2;
  v44 = a7;
  v45 = a5;
  v46 = a4;
  v49[1] = *MEMORY[0x277D85DE8];
  v10 = sub_226D6B40C();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_226D6893C();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = sub_226D6D4AC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() currentQueryGenerationToken];
  v49[0] = 0;
  v21 = [a1 setQueryGenerationFromToken:v20 error:v49];

  v22 = v49[0];
  if (v21)
  {
    v37 = a6;
    __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_classifiableTransactionSource), *(v48 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_classifiableTransactionSource + 24));
    v23 = v22;
    sub_226D6D46C();
    v24 = v47;
    v25 = sub_226D47648(a3, 1, v46 & 1, v19, a1);
    if (v24)
    {
      return (*(v17 + 8))(v19, v16);
    }

    else
    {
      v28 = v25;
      (*(v17 + 8))(v19, v16);
      v29 = v48;
      v30 = *(v48 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_paymentPassDataSourceProvider + 24);
      v31 = *(v48 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_paymentPassDataSourceProvider + 32);
      __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_paymentPassDataSourceProvider), v30);
      (*(v31 + 8))(v49, v30, v31);
      v32 = v49[0];
      v49[0] = sub_226B23E98(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v49[0]);
      *(&v37 - 6) = v29;
      *(&v37 - 5) = v49;
      *(&v37 - 4) = v32;
      *(&v37 - 3) = a1;
      *(&v37 - 2) = v45;
      sub_226C41710(sub_226BF1B60, (&v37 - 8), v28);
      v34 = v33;

      __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_transactionsSigner), *(v29 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_transactionsSigner + 24));
      sub_226B3E484(v15, v34);
      v35 = v39;
      v36 = v41;
      (*(v39 + 16))(v38, v15, v41);
      (*(v42 + 16))(v40, v37, v43);
      sub_226D6C2BC();

      (*(v35 + 8))(v15, v36);
    }
  }

  else
  {
    v27 = v49[0];
    sub_226D6D04C();

    return swift_willThrow();
  }
}

void *sub_226BEF584@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a6;
  v54 = a4;
  v55 = a3;
  v56 = a2;
  v49 = a7;
  v9 = sub_226D6872C();
  v10 = *(v9 - 8);
  v61 = v9;
  v62 = v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_226D6D6DC();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v51 = sub_226D6D52C();
  v16 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226D6D4AC();
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_226D6882C();
  v47 = *(v22 - 8);
  v48 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v46 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = [*a1 accountObject];
  v63 = v54;
  v56 = sub_226BF0A04(v26, v55, &v63, a5);

  v27 = v25;
  sub_226D6AB3C();
  v28 = [v27 accountObject];
  sub_226D69EBC();

  v55 = v27;
  sub_226D6ABCC();
  v29 = v51;
  (*(v16 + 56))(v15, 0, 1, v51);
  v30 = v57;
  sub_226D6D6AC();
  v31 = sub_226D6C16C();
  (*(v58 + 8))(v30, v60);
  sub_226AC47B0(v15, &qword_27D7A6D68, &qword_226D75210);
  (*(v16 + 8))(v18, v29);
  (*(v52 + 8))(v21, v53);
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v59;
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_13:

    v37 = MEMORY[0x277D84F90];
LABEL_14:
    v44 = v46;
    sub_226BEFB80(v55, v37, v46);
    sub_226BF0208(v44, v56, v50, v49);

    return (*(v47 + 8))(v44, v48);
  }

  v32 = sub_226D6EDFC();
  v33 = v59;
  if (!v32)
  {
    goto LABEL_13;
  }

LABEL_3:
  v63 = MEMORY[0x277D84F90];
  result = sub_226AE27AC(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v36 = v31;
    v60 = v31 & 0xC000000000000001;
    v37 = v63;
    v38 = v31;
    do
    {
      if (v60)
      {
        v39 = MEMORY[0x22AA8AFD0](v35, v36);
      }

      else
      {
        v39 = *(v36 + 8 * v35 + 32);
      }

      v40 = v39;
      [v39 coordinate];
      [v40 coordinate];
      sub_226D6871C();

      v63 = v37;
      v41 = v33;
      v43 = v37[2];
      v42 = v37[3];
      if (v43 >= v42 >> 1)
      {
        sub_226AE27AC((v42 > 1), v43 + 1, 1);
        v37 = v63;
      }

      ++v35;
      v37[2] = v43 + 1;
      (*(v62 + 32))(v37 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v43, v41, v61);
      v33 = v41;
      v36 = v38;
    }

    while (v32 != v35);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_226BEFB80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v68 = a3;
  v4 = sub_226D67D7C();
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D684BC();
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v50 - v9;
  v10 = sub_226D6D52C();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226D6825C();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EE0, &unk_226D76CD8);
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_226D690EC();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7ED0, &qword_226D76CC8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EC8, &qword_226D76CC0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v50 - v28;
  v30 = sub_226D6AB2C();
  if (v30)
  {
    sub_226BF10E0(v30, v29);
    v31 = sub_226D6877C();
    (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
  }

  else
  {
    v32 = sub_226D6877C();
    (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
  }

  if (sub_226D6ABDC())
  {
    sub_226D686DC();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = sub_226D686CC();
  (*(*(v34 - 8) + 56))(v23, v33, 1, v34);
  sub_226D6AB5C();
  v61 = sub_226BF1B88(v17);
  v35 = sub_226D6AAEC();
  if (v35)
  {
    v36 = v35;
    v37 = v29;
    v38 = [v35 failedAttemptsCount];

    v60 = v38;
    v29 = v37;
  }

  else
  {
    v60 = 0;
  }

  v54 = v29;
  v59 = v26;
  sub_226AC40E8(v29, v26, &qword_27D7A7EC8, &qword_226D76CC0);
  v39 = sub_226D6ABFC();
  v57 = v40;
  v58 = v39;
  v41 = sub_226D6AB8C();
  v55 = v42;
  v56 = v41;
  v43 = [a1 accountObject];
  v44 = [v43 institutionId];

  v45 = sub_226D6E39C();
  v52 = v46;
  v53 = v45;

  sub_226AC40E8(v23, v20, &qword_27D7A7ED0, &qword_226D76CC8);
  v50 = sub_226D6AADC();
  v51 = v23;
  sub_226D6AA8C();
  sub_226D6ABEC();
  sub_226D684DC();
  sub_226D6ABCC();
  sub_226D6D4CC();
  (*(v62 + 8))(v12, v63);
  v47 = v64;
  sub_226D6AB3C();
  v48 = sub_226D6D4AC();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  sub_226D6AB4C();
  sub_226D684CC();
  sub_226D687AC();

  sub_226AC47B0(v51, &qword_27D7A7ED0, &qword_226D76CC8);
  return sub_226AC47B0(v54, &qword_27D7A7EC8, &qword_226D76CC0);
}

uint64_t sub_226BF0208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EC8, &qword_226D76CC0);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7ED0, &qword_226D76CC8);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7ED8, &qword_226D76CD0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v64 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v63 = &v63 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  v22 = sub_226D6882C();
  v23 = *(*(v22 - 8) + 16);
  v74 = a4;
  v23(a4, a1, v22);
  v75 = a1;
  v24 = sub_226D6878C();
  v26 = v25;
  v28 = a3[3];
  v27 = a3[4];
  v29 = __swift_project_boxed_opaque_existential_1(a3, v28);
  v78 = v24;
  v79 = v26;
  v70 = v29;
  v71 = v27;
  v72 = v28;
  sub_226D676DC();
  v30 = *(v12 + 88);
  v31 = v30(v21, v11);
  v69 = *MEMORY[0x277CC7710];
  v32 = v31 != v69;
  if (v31 == v69)
  {
    (*(v12 + 8))(v21, v11);
  }

  else
  {
    if (v31 != *MEMORY[0x277CC7718])
    {
      goto LABEL_30;
    }

    (*(v12 + 96))(v21, v11);
  }

  sub_226D6879C();
  v78 = sub_226D6880C();
  v79 = v33;
  sub_226D676DC();
  v34 = v30(v18, v11);
  if (v34 == v69)
  {
    v68 = v32;
    (*(v12 + 8))(v18, v11);
  }

  else
  {
    if (v34 != *MEMORY[0x277CC7718])
    {
      goto LABEL_30;
    }

    (*(v12 + 96))(v18, v11);
    v68 = 1;
  }

  sub_226D6881C();
  v35 = v66;
  sub_226D687FC();
  v36 = sub_226D686CC();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = v38(v35, 1, v36);
  v65 = v30;
  if (v39 == 1)
  {
    sub_226AC47B0(v35, &qword_27D7A7ED0, &qword_226D76CC8);
  }

  else
  {
    v40 = sub_226D686AC();
    v41 = v35;
    v43 = v42;
    (*(v37 + 8))(v41, v36);
    if (v43)
    {
      v44 = v40;
      v45 = sub_226D687EC();
      if (v38(v46, 1, v36))
      {

        v45(&v78, 0);
      }

      else
      {
        v76 = v44;
        v77 = v43;
        v58 = v63;
        sub_226D676DC();
        v59 = v65(v58, v11);
        if (v59 == v69)
        {
          (*(v12 + 8))(v58, v11);
        }

        else
        {
          if (v59 != *MEMORY[0x277CC7718])
          {
            goto LABEL_30;
          }

          (*(v12 + 96))(v58, v11);
          v68 = 1;
        }

        sub_226D686BC();
        v45(&v78, 0);
      }
    }
  }

  v47 = v67;
  sub_226D687DC();
  v48 = sub_226D6877C();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if (v50(v47, 1, v48) == 1)
  {
    sub_226AC47B0(v47, &qword_27D7A7EC8, &qword_226D76CC0);
    return sub_226D687BC();
  }

  v75 = v12;
  v51 = sub_226D6874C();
  v52 = v47;
  v53 = v51;
  v55 = v54;
  (*(v49 + 8))(v52, v48);
  if (!v55)
  {
    return sub_226D687BC();
  }

  v56 = sub_226D687CC();
  if (v50(v57, 1, v48))
  {

    v56(&v78, 0);
    return sub_226D687BC();
  }

  v76 = v53;
  v77 = v55;
  v60 = v64;
  sub_226D676DC();
  v61 = v65(v60, v11);
  if (v61 == v69)
  {
    (*(v75 + 8))(v60, v11);
LABEL_28:
    sub_226D6875C();
    v56(&v78, 0);
    return sub_226D687BC();
  }

  if (v61 == *MEMORY[0x277CC7718])
  {

    (*(v75 + 96))(v60, v11);
    v68 = 1;
    goto LABEL_28;
  }

LABEL_30:
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226BF0A04(void *a1, void *a2, void **a3, uint64_t a4)
{
  v7 = sub_226D6B9BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = *a3;
  sub_226D69D5C();
  v15 = *a2;
  if (*(*a2 + 16) && (v16 = sub_226C3064C(v13), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    v19 = *(v8 + 8);

    v19(v13, v7);
  }

  else
  {
    v41 = v10;
    v42 = v7;
    v20 = *(v8 + 8);
    v39 = v14;
    v40 = v20;
    v20(v13, v7);
    sub_226D6842C();
    v21 = [a1 institutionId];
    sub_226D6E39C();

    v22 = sub_226D683EC();

    v23 = v22;
    if (v22)
    {
      v24 = v23;
      v25 = [v23 piiRedactionConfiguration];

      v26 = v41;
      if (v25)
      {
        v27 = [v25 countryCodes];

        v18 = sub_226D6E89C();
      }

      else
      {
        v18 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v18 = MEMORY[0x277D84FA0];
      v26 = v41;
    }

    v44 = v18;
    v28 = [a1 externalAccountId];
    if (v28)
    {
      v29 = v28;
      v30 = [v39 passWithFPANIdentifier_];

      if (v30)
      {
        v31 = [v30 issuerCountryCode];
        if (v31)
        {
          v32 = v31;
          v33 = sub_226D6E39C();
          v35 = v34;

          sub_226C24D14(&v43, v33, v35);

          v18 = v44;
        }

        else
        {
        }
      }
    }

    sub_226D69D5C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *a2;
    sub_226BE676C(v18, v26, isUniquelyReferenced_nonNull_native);
    v40(v26, v42);

    *a2 = v43;
  }

  return v18;
}

uint64_t sub_226BF0EF8()
{
  v1 = OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_logger;
  v2 = sub_226D6E07C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_classifiableTransactionSource));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_paymentPassDataSourceProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_userIdentifierProvider));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_transactionsSigner));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC13FinanceDaemon33BankConnectInsightsRequestBuilder_piiProcessor));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for BankConnectInsightsRequestBuilder(uint64_t a1)
{
  result = qword_27D7A7EB8;
  if (!qword_27D7A7EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BF1024(uint64_t a1)
{
  result = sub_226D6E07C();
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

void sub_226BF10E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v3 - 8);
  v119 = &v86 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EE8, &qword_226D76CE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v86 - v6;
  v8 = sub_226D6A8DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v86 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EF0, &qword_226D76CF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v86 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7EF8, &unk_226D76CF8);
  MEMORY[0x28223BE20](v21 - 8);
  v121 = &v86 - v22;
  v116 = sub_226D6BE7C();
  v115 = v23;
  v24 = [a1 industryCategory];
  if (v24)
  {
    v25 = v24;
    v26 = sub_226D6E39C();
    v117 = v27;
    v118 = v26;
  }

  else
  {
    v117 = 0;
    v118 = 0;
  }

  v113 = sub_226D6BE6C();
  v114 = sub_226D6BE8C();
  sub_226D6BEAC();
  sub_226AC40E8(v20, v17, &qword_27D7A7EF0, &qword_226D76CF0);
  v28 = 1;
  if ((*(v9 + 48))(v17, 1, v8) != 1)
  {
    (*(v9 + 32))(v14, v17, v8);
    (*(v9 + 16))(v11, v14, v8);
    sub_226D6A8AC();
    sub_226D6A8BC();
    sub_226D6A8CC();
    sub_226D6871C();
    v29 = sub_226D6872C();
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
    sub_226D6A89C();
    sub_226D6A88C();
    sub_226D6852C();
    v30 = *(v9 + 8);
    v30(v11, v8);
    v30(v14, v8);
    v28 = 0;
  }

  sub_226AC47B0(v20, &qword_27D7A7EF0, &qword_226D76CF0);
  v31 = sub_226D6853C();
  (*(*(v31 - 8) + 56))(v121, v28, 1, v31);
  v32 = [a1 merchantAdditionalData];
  if (v32)
  {
    v33 = v32;
    v34 = sub_226D6E39C();
    v111 = v35;
    v112 = v34;
  }

  else
  {
    v111 = 0;
    v112 = 0;
  }

  v36 = [a1 merchantCity];
  if (v36)
  {
    v37 = v36;
    v38 = sub_226D6E39C();
    v109 = v39;
    v110 = v38;
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v106 = sub_226D6BE9C();
  v40 = [a1 merchantCountryCode];
  if (v40)
  {
    v41 = v40;
    v42 = sub_226D6E39C();
    v107 = v43;
    v108 = v42;
  }

  else
  {
    v107 = 0;
    v108 = 0;
  }

  v44 = [a1 merchantIdentifier];
  if (v44)
  {
    v45 = v44;
    v46 = sub_226D6E39C();
    v104 = v47;
    v105 = v46;
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v48 = [a1 merchantName];
  if (v48)
  {
    v49 = v48;
    v50 = sub_226D6E39C();
    v102 = v51;
    v103 = v50;
  }

  else
  {
    v102 = 0;
    v103 = 0;
  }

  v52 = [a1 merchantRawCANL];
  if (v52)
  {
    v53 = v52;
    v101 = sub_226D6E39C();
    v100 = v54;
  }

  else
  {
    v101 = 0;
    v100 = 0;
  }

  v55 = [a1 merchantRawCity];
  if (v55)
  {
    v56 = v55;
    v99 = sub_226D6E39C();
    v98 = v57;
  }

  else
  {
    v99 = 0;
    v98 = 0;
  }

  v58 = [a1 merchantRawName];
  if (v58)
  {
    v59 = v58;
    v97 = sub_226D6E39C();
    v96 = v60;
  }

  else
  {
    v97 = 0;
    v96 = 0;
  }

  v61 = [a1 merchantRawState];
  if (v61)
  {
    v62 = v61;
    v95 = sub_226D6E39C();
    v94 = v63;
  }

  else
  {
    v95 = 0;
    v94 = 0;
  }

  v64 = [a1 merchantState];
  if (v64)
  {
    v65 = v64;
    v93 = sub_226D6E39C();
    v92 = v66;
  }

  else
  {
    v93 = 0;
    v92 = 0;
  }

  v67 = [a1 merchantType];
  if (v67)
  {
    v68 = v67;
    v91 = sub_226D6E39C();
    v90 = v69;
  }

  else
  {
    v91 = 0;
    v90 = 0;
  }

  v70 = [a1 merchantZip];
  if (v70)
  {
    v71 = v70;
    v89 = sub_226D6E39C();
    v88 = v72;
  }

  else
  {
    v89 = 0;
    v88 = 0;
  }

  v73 = [a1 paymentNetwork];
  if (v73)
  {
    v74 = v73;
    v87 = sub_226D6E39C();
  }

  else
  {
    v87 = 0;
  }

  v75 = [a1 terminalIdentifier];
  if (v75)
  {
    v76 = v75;
    sub_226D6E39C();
  }

  v77 = [a1 webMerchantIdentifier];
  if (v77)
  {
    v78 = v77;
    sub_226D6E39C();
  }

  v79 = [a1 webMerchantName];
  if (v79)
  {
    v80 = v79;
    sub_226D6E39C();
  }

  v81 = v119;
  v82 = [a1 webURL];
  if (v82)
  {
    v83 = v82;
    sub_226D6D14C();

    v84 = 0;
  }

  else
  {
    v84 = 1;
  }

  v85 = sub_226D6D1AC();
  (*(*(v85 - 8) + 56))(v81, v84, 1, v85);
  sub_226D6876C();
}

uint64_t sub_226BF1B88(uint64_t a1)
{
  v2 = sub_226D690EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC7790] || v7 == *MEMORY[0x277CC7788])
  {
    v9 = v7 == *MEMORY[0x277CC7790];
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0x206E776F6E6B6E55, 0xEE002065756C6176);
    sub_226D6EFBC();
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

unint64_t sub_226BF1D54(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 2:
      result = 0xD00000000000002FLL;
      break;
    case 3:
    case 13:
      result = 0xD000000000000035;
      break;
    case 4:
    case 11:
      result = 0xD000000000000015;
      break;
    case 5:
    case 7:
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 0xD00000000000003CLL;
      break;
    case 12:
      result = 0xD000000000000023;
      break;
    case 14:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata accessor for PostInstallTaskEnvironment(uint64_t a1)
{
  result = qword_27D7A7F00;
  if (!qword_27D7A7F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BF1F28(uint64_t a1)
{
  result = sub_226D676CC();
  if (v2 <= 0x3F)
  {
    result = sub_226D6B5EC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PostInstallTaskIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PostInstallTaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PostInstallTaskVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_226BF212C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226BF2148(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_226BF217C()
{
  result = qword_27D7A7F10;
  if (!qword_27D7A7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7F10);
  }

  return result;
}

uint64_t sub_226BF21D0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_226BF1D54(*a1);
  v5 = v4;
  if (v3 == sub_226BF1D54(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_226D6F21C();
  }

  return v8 & 1;
}

unint64_t sub_226BF2258@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_226BF23CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_226BF2288@<X0>(unint64_t *a1@<X8>)
{
  result = sub_226BF1D54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_226BF22B4()
{
  v1 = *v0;
  sub_226D6F2FC();
  sub_226BF1D54(v1);
  sub_226D6E42C();

  return sub_226D6F35C();
}

uint64_t sub_226BF2318(uint64_t a1)
{
  sub_226BF1D54(*v1);
  sub_226D6E42C();
}

uint64_t sub_226BF236C(uint64_t a1)
{
  v2 = *v1;
  sub_226D6F2FC();
  sub_226BF1D54(v2);
  sub_226D6E42C();

  return sub_226D6F35C();
}

unint64_t sub_226BF23CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_226D6F13C();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_226BF2498(uint64_t a1, void *a2)
{
  v4 = sub_226D673EC();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6B9BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = sub_226D68E6C();
  v32 = a1;
  sub_226D6738C();
  v16 = v33;
  v17 = sub_226D68E2C();
  if (!v16)
  {
    v29 = v15;
    v33 = v17;
    v27 = v7;
    v20 = a2;
    v21 = *(v9 + 8);
    v21(v14, v8);
    sub_226D69F0C();
    v22 = v32;
    sub_226D6738C();
    v28 = v20;
    v24 = sub_226D69D9C();
    v25 = v28;
    v21(v11, v8);
    v18 = v33;
    if (v33)
    {
      MEMORY[0x22AA84F00](v33, v22);
      if (!v24)
      {
        return v18;
      }
    }

    else
    {
      (*(v31 + 16))(v27, v22, v30);
      v26 = v25;
      v18 = sub_226D68E7C();
      if (!v24)
      {
        return v18;
      }

      v33 = v18;
    }

    sub_226D69EDC();

    return v33;
  }

  v19 = *(v9 + 8);
  v18 = v9 + 8;
  v19(v14, v8);
  return v18;
}

uint64_t sub_226BF2778@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask(0);
  sub_226AF265C(v1 + Task[10], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AF265C(v1 + Task[8], a1);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + Task[9]);
    v13 = v12 < 1;
    v14 = v12 - 1;
    if (!v13)
    {
      exp2(v14);
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }
}

uint64_t sub_226BF2990(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_226D6764C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_226D6BE1C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_226D67B9C();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask(0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = sub_226D6D4AC();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BF2C2C, 0, 0);
}

uint64_t sub_226BF2C2C(uint64_t a1)
{
  v106 = v1;
  v2 = *(v1 + 128);
  v3 = *(v1 + 32);
  if ((*(v3 + *(v2 + 24) + 8) & 1) == 0)
  {
    v4 = *(v1 + 208);
    v5 = *(v1 + 152);
    v6 = *(v1 + 160);
    sub_226D6D3DC();
    sub_226D6D46C();
    sub_226BF62E0(&qword_27D7A66D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v7 = sub_226D6E34C();
    v8 = *(v6 + 8);
    v8(v4, v5);
    if (v7)
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v9 = *(v1 + 216);
      v10 = *(v1 + 200);
      v11 = *(v1 + 152);
      v12 = *(v1 + 160);
      v13 = *(v1 + 144);
      v14 = *(v1 + 32);
      v15 = sub_226D6E07C();
      __swift_project_value_buffer(v15, qword_28105F710);
      sub_226BF6018(v14, v13, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      (*(v12 + 16))(v10, v9, v11);
      v16 = sub_226D6E05C();
      v17 = sub_226D6E9CC();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v1 + 200);
      v21 = *(v1 + 144);
      v20 = *(v1 + 152);
      if (v18)
      {
        v22 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v105[0] = v99;
        *v22 = 136315394;
        sub_226D6B9BC();
        sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v23 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v23);

        sub_226BF6080(v21, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v24 = sub_226AC4530(0xD00000000000002FLL, 0x8000000226D82FD0, v105);

        *(v22 + 4) = v24;
        *(v22 + 12) = 2080;
        v25 = sub_226D6D48C();
        v27 = v26;
        v8(v19, v20);
        v28 = sub_226AC4530(v25, v27, v105);

        *(v22 + 14) = v28;
        _os_log_impl(&dword_226AB4000, v16, v17, "%s: Historical request cutoff date (%s) passed. Cancelling task, and removing\nfuture scheduling.", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v99, -1, -1);
        MEMORY[0x22AA8BEE0](v22, -1, -1);
      }

      else
      {

        v8(v19, v20);
        sub_226BF6080(v21, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      }

      v81 = *(v1 + 32);
      __swift_project_boxed_opaque_existential_1(*(v1 + 24), *(*(v1 + 24) + 24));
      v82 = sub_226D676AC();
      v83 = swift_task_alloc();
      *(v83 + 16) = v81;
      *(v83 + 24) = v82;
      sub_226D6EB7C();
      v8(*(v1 + 216), *(v1 + 152));

LABEL_23:

      v90 = *(v1 + 8);

      return v90();
    }

    v8(*(v1 + 216), *(v1 + 152));
    v2 = *(v1 + 128);
    v3 = *(v1 + 32);
  }

  v29 = *(v1 + 152);
  v30 = *(v1 + 160);
  v31 = *(v1 + 120);
  sub_226D6D3DC();
  v32 = *(v2 + 44);
  sub_226AF265C(v3 + v32, v31);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    sub_226AC47B0(*(v1 + 120), &qword_27D7A8BE0, &unk_226D718F0);
  }

  else
  {
    (*(*(v1 + 160) + 32))(*(v1 + 184), *(v1 + 120), *(v1 + 152));
    if (sub_226D6D3FC())
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v33 = *(v1 + 184);
      v34 = *(v1 + 192);
      v36 = *(v1 + 168);
      v35 = *(v1 + 176);
      v37 = *(v1 + 152);
      v38 = *(v1 + 160);
      v39 = *(v1 + 136);
      v40 = *(v1 + 32);
      v41 = sub_226D6E07C();
      __swift_project_value_buffer(v41, qword_28105F710);
      sub_226BF6018(v40, v39, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v42 = *(v38 + 16);
      v42(v35, v33, v37);
      v42(v36, v34, v37);
      v43 = sub_226D6E05C();
      v44 = sub_226D6E9CC();
      v45 = os_log_type_enabled(v43, v44);
      v46 = *(v1 + 168);
      v47 = *(v1 + 176);
      v49 = *(v1 + 152);
      v48 = *(v1 + 160);
      v50 = *(v1 + 136);
      if (v45)
      {
        v100 = *(v1 + 168);
        v51 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v105[0] = v102;
        *v51 = 136315650;
        sub_226D6B9BC();
        sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v97 = v44;
        v52 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v52);

        sub_226BF6080(v50, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v53 = sub_226AC4530(0xD00000000000002FLL, 0x8000000226D82FD0, v105);

        *(v51 + 4) = v53;
        *(v51 + 12) = 2080;
        v54 = sub_226D6D48C();
        v56 = v55;
        v57 = *(v48 + 8);
        v57(v47, v49);
        v58 = sub_226AC4530(v54, v56, v105);

        *(v51 + 14) = v58;
        *(v51 + 22) = 2080;
        v59 = sub_226D6D48C();
        v61 = v60;
        v57(v100, v49);
        v62 = sub_226AC4530(v59, v61, v105);

        *(v51 + 24) = v62;
        _os_log_impl(&dword_226AB4000, v43, v97, "%s: Last successfully fetched transaction timestamp (%s) is earlier than the start date (%s. Cancelling task, and removing future scheduling.", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v102, -1, -1);
        MEMORY[0x22AA8BEE0](v51, -1, -1);
      }

      else
      {

        v57 = *(v48 + 8);
        v57(v46, v49);
        v57(v47, v49);
        sub_226BF6080(v50, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      }

      v84 = *(v1 + 32);
      __swift_project_boxed_opaque_existential_1(*(v1 + 24), *(*(v1 + 24) + 24));
      v85 = sub_226D676AC();
      v86 = swift_task_alloc();
      *(v86 + 16) = v84;
      *(v86 + 24) = v85;
      sub_226D6EB7C();
      v88 = *(v1 + 184);
      v87 = *(v1 + 192);
      v89 = *(v1 + 152);

      v57(v88, v89);
      v57(v87, v89);
      goto LABEL_23;
    }

    (*(*(v1 + 160) + 8))(*(v1 + 184), *(v1 + 152));
  }

  v63 = *(v1 + 104);
  v65 = *(v1 + 24);
  v64 = *(v1 + 32);
  sub_226D67B8C();
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  v66 = sub_226D676AC();
  v67 = swift_task_alloc();
  v67[2] = v64;
  v67[3] = v66;
  v67[4] = v63;
  sub_226D6EB7C();
  v93 = *(v1 + 208);
  v94 = *(v1 + 192);
  v68 = *(v1 + 160);
  v92 = *(v1 + 152);
  v69 = *(v1 + 104);
  v95 = v32;
  v96 = *(v1 + 112);
  v71 = *(v1 + 88);
  v70 = *(v1 + 96);
  v98 = *(v1 + 48);
  v101 = *(v1 + 40);
  v103 = *(v1 + 56);
  v72 = *(v1 + 24);

  (*(v70 + 8))(v69, v71);
  v73 = __swift_project_boxed_opaque_existential_1(v72, v65[3]);
  sub_226B41FC0();
  v104 = swift_allocObject();
  sub_226B42014(v73, v104 + 16);
  v74 = sub_226D6BE3C();
  swift_allocObject();
  v75 = sub_226D6BDFC();
  *(v1 + 224) = v75;
  *(v1 + 16) = v75;
  (*(v68 + 16))(v93, v94, v92);
  sub_226AF265C(v3 + v95, v96);
  sub_226D6BE0C();
  (*(v98 + 104))(v103, *MEMORY[0x277CC6D38], v101);
  v76 = swift_task_alloc();
  *(v1 + 232) = v76;
  *v76 = v1;
  v76[1] = sub_226BF38CC;
  v77 = *(v1 + 80);
  v78 = *(v1 + 56);
  v79 = *(v1 + 32);
  v80 = MEMORY[0x277CC8178];

  return MEMORY[0x28211A680](v79, v77, v78, v74, v80);
}

uint64_t sub_226BF38CC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  (*(v2[6] + 8))(v2[7], v2[5]);
  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v6 = sub_226BF3C48;
  }

  else
  {
    v6 = sub_226BF3AB4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226BF3AB4()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = sub_226D676AC();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_226D6EB7C();
  (*(*(v0 + 160) + 8))(*(v0 + 192), *(v0 + 152));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226BF3C48()
{
  (*(v0[20] + 8))(v0[24], v0[19]);

  v1 = v0[1];

  return v1();
}

void sub_226BF3D7C(uint64_t a1, void *a2, uint64_t a3)
{
  v153 = a3;
  v161[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask(0);
  MEMORY[0x28223BE20](Task);
  v150 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v155 = (&v136 - v7);
  MEMORY[0x28223BE20](v8);
  v151 = &v136 - v9;
  MEMORY[0x28223BE20](v10);
  v148 = &v136 - v11;
  MEMORY[0x28223BE20](v12);
  v143 = &v136 - v13;
  v157 = sub_226D6D4AC();
  v154 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v152 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v146 = &v136 - v16;
  MEMORY[0x28223BE20](v17);
  v144 = &v136 - v18;
  MEMORY[0x28223BE20](v19);
  v142 = &v136 - v20;
  MEMORY[0x28223BE20](v21);
  v145 = &v136 - v22;
  MEMORY[0x28223BE20](v23);
  v149 = &v136 - v24;
  v156 = sub_226D66DFC();
  MEMORY[0x28223BE20](v156);
  v26 = (&v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v29 = &v136 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v136 - v34;
  v36 = sub_226D67B9C();
  MEMORY[0x28223BE20](v36 - 8);
  v37 = sub_226D69DEC();
  MEMORY[0x28223BE20](v37 - 8);
  sub_226D69F0C();
  v38 = v158;
  v158 = sub_226D69D9C();
  if (!v38)
  {
    v137 = v32;
    v39 = v155;
    v141 = a1;
    v138 = v35;
    v139 = a2;
    v140 = 0;
    if (!v158)
    {
      if (qword_28105F708 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_39;
    }

    sub_226D67B7C();
    sub_226D69DFC();
    sub_226D69E1C();
    v40 = v153;
    sub_226BF6018(v153, v29, MEMORY[0x277CC6528]);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_226BF6080(v29, MEMORY[0x277CC6528]);
      v43 = v154;
      v44 = v141;
      goto LABEL_10;
    }

    v41 = v138;
    sub_226B72784(v29, v138);
    v42 = v137;
    sub_226AF265C(v41, v137);
    v43 = v154;
    if (v154[6](v42, 1, v157) == 1)
    {
      sub_226AC47B0(v41, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AC47B0(v42, &qword_27D7A8BE0, &unk_226D718F0);
      v44 = v141;
      v40 = v153;
LABEL_10:
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v62 = sub_226D6E07C();
      __swift_project_value_buffer(v62, qword_28105F710);
      v63 = v44;
      v64 = v151;
      sub_226BF6018(v63, v151, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      sub_226BF6018(v40, v26, MEMORY[0x277CC6528]);
      v65 = sub_226D6E05C();
      v66 = sub_226D6E9CC();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v154 = v26;
        v68 = v67;
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v155 = v70;
        *v68 = 136315394;
        v159 = 0xD00000000000002FLL;
        v160 = 0x8000000226D82FD0;
        v161[0] = v70;
        sub_226D6B9BC();
        v71 = v64;
        sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v72 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v72);

        v73 = v159;
        v74 = v160;
        sub_226BF6080(v71, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v75 = sub_226AC4530(v73, v74, v161);

        *(v68 + 4) = v75;
        *(v68 + 12) = 2112;
        sub_226BF62E0(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
        swift_allocError();
        v76 = MEMORY[0x277CC6528];
        v77 = v154;
        sub_226BF6018(v154, v78, MEMORY[0x277CC6528]);
        v79 = _swift_stdlib_bridgeErrorToNSError();
        sub_226BF6080(v77, v76);
        *(v68 + 14) = v79;
        *v69 = v79;
        _os_log_impl(&dword_226AB4000, v65, v66, "%s: Failed with error: %@.", v68, 0x16u);
        sub_226AC47B0(v69, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v69, -1, -1);
        v80 = v155;
        __swift_destroy_boxed_opaque_existential_0Tm(v155);
        MEMORY[0x22AA8BEE0](v80, -1, -1);
        MEMORY[0x22AA8BEE0](v68, -1, -1);
      }

      else
      {

        sub_226BF6080(v26, MEMORY[0x277CC6528]);
        sub_226BF6080(v64, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      }

      v39 = v152;
      v81 = [v158 historicalTransactionsRequestAttemptCount];
      if (!__OFADD__(v81, 1))
      {
        v82 = v158;
        [v158 setHistoricalTransactionsRequestAttemptCount_];
        sub_226D6D46C();
        v83 = sub_226D6D3EC();
        (*(v43 + 8))(v39, v157);
        [v82 setLastHistoricalTransactionsRequestAttemptDate_];

        v84 = v139;
        goto LABEL_34;
      }

      __break(1u);
LABEL_39:
      swift_once();
LABEL_7:
      v45 = sub_226D6E07C();
      __swift_project_value_buffer(v45, qword_28105F710);
      v46 = v141;
      v47 = v39;
      sub_226BF6018(v141, v39, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v48 = v150;
      sub_226BF6018(v46, v150, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v49 = sub_226D6E05C();
      v50 = sub_226D6E9CC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v158 = v52;
        *v51 = 136315394;
        v159 = 0xD00000000000002FLL;
        v160 = 0x8000000226D82FD0;
        v161[0] = v52;
        sub_226D6B9BC();
        sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        LODWORD(v157) = v50;
        v53 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v53);

        v54 = v159;
        v55 = v160;
        sub_226BF6080(v47, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v56 = sub_226AC4530(v54, v55, v161);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2080;
        v57 = sub_226D6F1CC();
        v59 = v58;
        sub_226BF6080(v48, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v60 = sub_226AC4530(v57, v59, v161);

        *(v51 + 14) = v60;
        _os_log_impl(&dword_226AB4000, v49, v157, "%s: Unable to find account for %s, unable to update scheduling.", v51, 0x16u);
        v61 = v158;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v61, -1, -1);
        MEMORY[0x22AA8BEE0](v51, -1, -1);
      }

      else
      {

        sub_226BF6080(v48, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        sub_226BF6080(v47, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      }

      return;
    }

    v85 = v149;
    (*(v43 + 32))(v149, v42, v157);
    v86 = v148;
    v87 = v141;
    if ((*(v141 + *(Task + 24) + 8) & 1) == 0)
    {
      v88 = v145;
      sub_226D6D3DC();
      if (sub_226D6D3FC())
      {
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v89 = sub_226D6E07C();
        __swift_project_value_buffer(v89, qword_28105F710);
        v90 = v143;
        sub_226BF6018(v87, v143, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v91 = *(v43 + 16);
        v92 = v142;
        v93 = v157;
        v91(v142, v85, v157);
        v91(v144, v88, v93);
        v94 = sub_226D6E05C();
        v95 = sub_226D6E9CC();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v156 = v97;
          *v96 = 136315650;
          v159 = 0xD00000000000002FLL;
          v160 = 0x8000000226D82FD0;
          v161[0] = v97;
          sub_226D6B9BC();
          sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
          LODWORD(v155) = v95;
          v98 = sub_226D6F1CC();
          MEMORY[0x22AA8A510](v98);

          v99 = v159;
          v100 = v160;
          sub_226BF6080(v90, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
          v101 = sub_226AC4530(v99, v100, v161);

          *(v96 + 4) = v101;
          *(v96 + 12) = 2080;
          v102 = sub_226D6D48C();
          v104 = v103;
          v105 = *(v43 + 8);
          (v105)(v92, v93);
          v106 = sub_226AC4530(v102, v104, v161);

          *(v96 + 14) = v106;
          *(v96 + 22) = 2080;
          v107 = v144;
          v108 = sub_226D6D48C();
          v110 = v109;
          (v105)(v107, v93);
          v85 = v149;
          v111 = sub_226AC4530(v108, v110, v161);
          v88 = v145;

          *(v96 + 24) = v111;
          _os_log_impl(&dword_226AB4000, v94, v155, "%s: Retry-After date (%s) pushes the earliest start date past the historical request cutoff date (%s). Cancelling task, and removing future scheduling.", v96, 0x20u);
          v112 = v156;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v112, -1, -1);
          MEMORY[0x22AA8BEE0](v96, -1, -1);
        }

        else
        {

          v131 = v90;
          v105 = *(v43 + 8);
          (v105)(v144, v93);
          (v105)(v92, v93);
          sub_226BF6080(v131, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        }

        v128 = v138;
        v132 = v158;
        [v158 setEarliestHistoricalTransactionsRequestStartDate_];
        [v132 setOldestFetchedHistoricalTransactionTimestamp_];
        (v105)(v88, v157);
        v130 = v139;
LABEL_33:
        v133 = v158;
        [v158 setHistoricalTransactionsRequestAttemptCount_];
        [v133 setLastHistoricalTransactionsRequestAttemptDate_];
        (v105)(v85, v157);
        sub_226AC47B0(v128, &qword_27D7A8BE0, &unk_226D718F0);
        v84 = v130;
LABEL_34:
        v159 = 0;
        if ([v84 save_])
        {
          v134 = v159;
        }

        else
        {
          v135 = v159;
          sub_226D6D04C();

          swift_willThrow();
        }

        return;
      }

      (*(v43 + 8))(v88, v157);
    }

    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v113 = sub_226D6E07C();
    __swift_project_value_buffer(v113, qword_28105F710);
    sub_226BF6018(v87, v86, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
    v114 = v146;
    (*(v43 + 16))(v146, v85, v157);
    v115 = sub_226D6E05C();
    v116 = sub_226D6E9CC();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v117 = 136315394;
      v159 = 0xD00000000000002FLL;
      v160 = 0x8000000226D82FD0;
      v161[0] = v118;
      sub_226D6B9BC();
      v119 = v114;
      sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v120 = sub_226D6F1CC();
      MEMORY[0x22AA8A510](v120);

      v121 = v159;
      v122 = v160;
      sub_226BF6080(v86, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v123 = sub_226AC4530(v121, v122, v161);

      *(v117 + 4) = v123;
      *(v117 + 12) = 2080;
      v124 = sub_226D6D48C();
      v126 = v125;
      v105 = v154[1];
      (v105)(v119, v157);
      v127 = sub_226AC4530(v124, v126, v161);
      v85 = v149;

      *(v117 + 14) = v127;
      _os_log_impl(&dword_226AB4000, v115, v116, "%s: Retry-After date (%s) received, throttling the next retry until then.", v117, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v118, -1, -1);
      MEMORY[0x22AA8BEE0](v117, -1, -1);
    }

    else
    {

      v105 = *(v43 + 8);
      (v105)(v114, v157);
      sub_226BF6080(v86, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
    }

    v128 = v138;
    v129 = sub_226D6D3EC();
    [v158 setEarliestHistoricalTransactionsRequestStartDate_];

    v130 = v139;
    goto LABEL_33;
  }
}

void sub_226BF509C(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a3;
  v41[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask(0);
  MEMORY[0x28223BE20](Task - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v36 - v10;
  v12 = sub_226D67B9C();
  v37 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D69DEC();
  MEMORY[0x28223BE20](v15 - 8);
  sub_226D69F0C();
  v16 = sub_226D69D9C();
  if (!v3)
  {
    v17 = v16;
    v36[1] = 0;
    if (v16)
    {
      (*(v37 + 16))(v14, v38, v12);
      sub_226D69DFC();
      sub_226D69E1C();
      v39 = 0;
      if ([a2 save_])
      {
        v18 = v39;
      }

      else
      {
        v35 = v39;
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v19 = sub_226D6E07C();
      __swift_project_value_buffer(v19, qword_28105F710);
      v20 = v11;
      sub_226BF6018(a1, v11, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v21 = v8;
      sub_226BF6018(a1, v8, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v22 = sub_226D6E05C();
      v23 = sub_226D6E9CC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v38 = v25;
        *v24 = 136315394;
        v39 = 0xD00000000000002FLL;
        v40 = 0x8000000226D82FD0;
        v41[0] = v25;
        sub_226D6B9BC();
        sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v26 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v26);

        v27 = v39;
        v28 = v40;
        sub_226BF6080(v20, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v29 = sub_226AC4530(v27, v28, v41);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2080;
        v30 = sub_226D6F1CC();
        v32 = v31;
        sub_226BF6080(v21, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v33 = sub_226AC4530(v30, v32, v41);

        *(v24 + 14) = v33;
        _os_log_impl(&dword_226AB4000, v22, v23, "%s: Unable to find account for %s, unable to update account loading status.", v24, 0x16u);
        v34 = v38;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v34, -1, -1);
        MEMORY[0x22AA8BEE0](v24, -1, -1);
      }

      else
      {

        sub_226BF6080(v21, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        sub_226BF6080(v20, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      }
    }
  }
}

void sub_226BF5578(uint64_t a1, void *a2)
{
  v37[1] = *MEMORY[0x277D85DE8];
  Task = type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask(0);
  MEMORY[0x28223BE20](Task - 8);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-v9];
  v11 = sub_226D67B9C();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_226D69DEC();
  MEMORY[0x28223BE20](v12 - 8);
  sub_226D69F0C();
  v13 = sub_226D69D9C();
  if (!v2)
  {
    v14 = v13;
    v34 = 0;
    if (v13)
    {
      [v13 setEarliestHistoricalTransactionsRequestStartDate_];
      [v14 setHistoricalTransactionsRequestAttemptCount_];
      [v14 setLastHistoricalTransactionsRequestAttemptDate_];
      [v14 setOldestFetchedHistoricalTransactionTimestamp_];
      sub_226D67B7C();
      sub_226D69DFC();
      sub_226D69E1C();
      v35 = 0;
      if ([a2 save_])
      {
        v15 = v35;
      }

      else
      {
        v30 = v35;
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v16 = sub_226D6E07C();
      __swift_project_value_buffer(v16, qword_28105F710);
      sub_226BF6018(a1, v10, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      sub_226BF6018(a1, v7, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      v17 = sub_226D6E05C();
      v18 = sub_226D6E9CC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33 = v20;
        *v19 = 136315394;
        v35 = 0xD00000000000002FLL;
        v36 = 0x8000000226D82FD0;
        v37[0] = v20;
        sub_226D6B9BC();
        sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v32 = v18;
        v21 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v21);

        v22 = v35;
        v23 = v36;
        sub_226BF6080(v10, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v24 = sub_226AC4530(v22, v23, v37);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2080;
        v25 = sub_226D6F1CC();
        v27 = v26;
        sub_226BF6080(v7, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        v28 = sub_226AC4530(v25, v27, v37);

        *(v19 + 14) = v28;
        _os_log_impl(&dword_226AB4000, v17, v32, "%s: Unable to find account for %s, unable to update scheduling.", v19, 0x16u);
        v29 = v33;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v29, -1, -1);
        MEMORY[0x22AA8BEE0](v19, -1, -1);
      }

      else
      {

        sub_226BF6080(v7, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
        sub_226BF6080(v10, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask);
      }
    }
  }
}

uint64_t sub_226BF5A54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226BF2990(a1);
}

uint64_t sub_226BF5AE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226BF5B0C, 0, 0);
}

uint64_t sub_226BF5B0C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v3 = sub_226D676AC();
  v4 = swift_task_alloc();
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  sub_226D6EB7C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226BF5BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226D6B9BC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226BF5C6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v1 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D71840;
  v4 = sub_226D6B9BC();
  (*(*(v4 - 8) + 16))(v3 + v2, v0, v4);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v5 = sub_226B1ED68(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

unint64_t sub_226BF5DC8()
{
  sub_226D6B9BC();
  sub_226BF62E0(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
  v0 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v0);

  return 0xD00000000000002FLL;
}

uint64_t sub_226BF5EFC(uint64_t a1)
{
  result = sub_226BF62E0(&qword_27D7A7F18, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask, &unk_226D76E70);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask(uint64_t a1)
{
  result = qword_27D7A7F28;
  if (!qword_27D7A7F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BF5FA0(uint64_t a1)
{
  result = sub_226BF62E0(&qword_27D7A7F20, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask, &unk_226D76EB4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226BF6018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BF6080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226BF6144(uint64_t a1)
{
  sub_226D6B9BC();
  if (v1 <= 0x3F)
  {
    sub_226BF620C();
    if (v2 <= 0x3F)
    {
      sub_226D6D4AC();
      if (v3 <= 0x3F)
      {
        sub_226B20350(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_226BF620C()
{
  if (!qword_27D7A7F38)
  {
    v0 = sub_226D6EC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7F38);
    }
  }
}

uint64_t sub_226BF625C(uint64_t a1)
{
  *(a1 + 8) = sub_226BF62E0(&qword_27D7A6798, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask, &unk_226D76EE0);
  result = sub_226BF62E0(&qword_27D7A7F40, type metadata accessor for BankConnectHistoricalTransactionsDataFetchTask, &unk_226D76F40);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226BF62E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226BF6364()
{
  v10 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_28105F710);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_226AC4530(0xD000000000000027, 0x8000000226D80470, &v9);
    _os_log_impl(&dword_226AB4000, v2, v3, "Performing background system task: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  sub_226AE532C(*(v0 + 128), v0 + 88);
  type metadata accessor for InstitutionsRefreshSystemTask();
  inited = swift_initStackObject();
  *(v0 + 144) = inited;
  *(inited + 16) = 0xD00000000000001BLL;
  *(inited + 24) = 0x8000000226D83080;
  sub_226AC484C((v0 + 88), inited + 32);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_226BF6554;

  return sub_226BF6954();
}

uint64_t sub_226BF6554()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_226BF67D8;
  }

  else
  {
    v2 = sub_226BF6668;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226BF6668(uint64_t a1)
{
  v11 = v1;
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 144);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(0xD000000000000027, 0x8000000226D80470, &v10);
    _os_log_impl(&dword_226AB4000, v2, v3, "Completed background system task: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    swift_setDeallocating();

    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 32));
  }

  else
  {

    swift_setDeallocating();

    __swift_destroy_boxed_opaque_existential_0Tm((v5 + 32));
  }

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_226BF67D8()
{
  v1 = v0[20];
  v2 = v0[18];
  swift_setDeallocating();

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 32));
  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "Error completing institutions refresh system task. Error: %@", v8, 0xCu);
    sub_226AC47B0(v9, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_226BF6954()
{
  v1[6] = v0;
  v2 = sub_226D6B5EC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BF6A14, 0, 0);
}

uint64_t sub_226BF6A14()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_226BF6C54();
  sub_226D6B58C();
  v0[5] = sub_226D6D4AC();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_226D6D46C();
  sub_226D6B5BC();
  (*(v2 + 8))(v1, v3);
  sub_226AC47B0((v0 + 2), &unk_27D7A8BB0, &unk_226D74340);
  v5 = v4[7];
  v6 = v4[8];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v5);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_226BF6B44;

  return MEMORY[0x28211A7C0](v5, v6);
}

uint64_t sub_226BF6B44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226BF6C54()
{
  v0 = sub_226D6BC8C();
  v25 = *(v0 - 8);
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_226D6B5EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_226D6D4AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_226D6B58C();
  sub_226D6B5DC();
  (*(v4 + 8))(v6, v3);
  if (!v28)
  {
    sub_226AC47B0(v27, &unk_27D7A8BB0, &unk_226D74340);
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_226AC47B0(v9, &qword_27D7A8BE0, &unk_226D718F0);
  }

  v17 = swift_dynamicCast();
  (*(v11 + 56))(v9, v17 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_226AC47B0(v9, &qword_27D7A8BE0, &unk_226D718F0);
  }

  (*(v11 + 32))(v16, v9, v10);
  sub_226D6D46C();
  sub_226D6D43C();
  v19 = v18;
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_226D6D43C();
  if (v19 - v21 < 2588400.0)
  {
    sub_226D6BD1C();
    swift_allocObject();
    sub_226D6BD0C();
    v23 = v25;
    v22 = v26;
    (*(v25 + 104))(v2, *MEMORY[0x277CC8108], v26);
    sub_226D6BCCC();

    (*(v23 + 8))(v2, v22);
  }

  return (v20)(v16, v10);
}

uint64_t sub_226BF706C()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_226BF70D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_226BF712C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_226BF718C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 changedObjectID];
  v5 = [v4 entity];

  v6 = [v5 name];
  if (!v6)
  {
LABEL_12:
    v13 = type metadata accessor for AccountMatchMappingModel.Change(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }

  v7 = sub_226D6E39C();
  v9 = v8;

  v10 = v7 == 0x4D746E756F636341 && v9 == 0xEC00000068637461;
  if (v10 || (sub_226D6F21C() & 1) != 0 || (v7 == 0xD000000000000011 ? (v11 = 0x8000000226D830D0 == v9) : (v11 = 0), v11))
  {
  }

  else
  {
    v12 = sub_226D6F21C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v16 = a1;

  return sub_226BF7348(v16, a2);
}

uint64_t sub_226BF7348@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for AccountMatchMappingModel.Change(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v50[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 changedObjectID];
  *&v7[*(v3 + 24)] = v8;
  v9 = [v8 entityName];
  v10 = sub_226D6E39C();
  v12 = v11;

  v13 = v10 == 0x4D746E756F636341 && v12 == 0xEC00000068637461;
  if (v13 || (sub_226D6F21C() & 1) != 0)
  {

    v14 = 1;
  }

  else if (v10 == 0xD000000000000011 && 0x8000000226D830D0 == v12)
  {

    v14 = 0;
  }

  else
  {
    v29 = sub_226D6F21C();

    v14 = 0;
    if ((v29 & 1) == 0)
    {
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v30 = sub_226D6E07C();
      __swift_project_value_buffer(v30, qword_28105F628);
      v31 = sub_226D6E05C();
      v32 = sub_226D6E9CC();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_54;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Change was not for a cloud or local account match";
      goto LABEL_46;
    }
  }

  v7[*(v3 + 20)] = v14;
  v15 = [a1 changeType];
  if (!v15)
  {

    v17 = sub_226D6B9BC();
    (*(*(v17 - 8) + 56))(v7, 1, 2, v17);
    goto LABEL_11;
  }

  if (v15 == 1)
  {

    v16 = sub_226D6B9BC();
    (*(*(v16 - 8) + 56))(v7, 2, 2, v16);
LABEL_11:
    v18 = v49;
    sub_226BFB5F4(v7, v49, type metadata accessor for AccountMatchMappingModel.Change);
    (*(v4 + 56))(v18, 0, 1, v3);
    return sub_226BFB65C(v7, type metadata accessor for AccountMatchMappingModel.Change);
  }

  if (v15 == 2)
  {
    v20 = [a1 tombstone];
    if (v20)
    {
      v21 = v20;
      v22 = sub_226D6E2BC();

      if (v14)
      {
LABEL_15:
        strcpy(v50, "accountID");
        WORD1(v50[1]) = 0;
        HIDWORD(v50[1]) = -385875968;
        sub_226D6EE8C();
        if (*(v22 + 16))
        {
          v23 = sub_226C2FE4C(v51);
          if (v24)
          {
            sub_226AC4708(*(v22 + 56) + 32 * v23, &v52);
            sub_226AE5030(v51);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_55:

              goto LABEL_42;
            }

            strcpy(v50, "institutionID");
            HIWORD(v50[1]) = -4864;
            sub_226D6EE8C();
            if (*(v22 + 16))
            {
              v25 = sub_226C2FE4C(v51);
              if (v26)
              {
                sub_226AC4708(*(v22 + 56) + 32 * v25, &v52);
                sub_226AE5030(v51);

                if (swift_dynamicCast())
                {
                  sub_226D6B99C();

                  v27 = sub_226D6B9BC();
                  (*(*(v27 - 8) + 56))(v7, 0, 2, v27);
                  goto LABEL_11;
                }

                goto LABEL_55;
              }
            }
          }
        }

        sub_226AE5030(v51);
LABEL_42:
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v40 = sub_226D6E07C();
        __swift_project_value_buffer(v40, qword_28105F628);
        v31 = sub_226D6E05C();
        v32 = sub_226D6E9CC();
        if (!os_log_type_enabled(v31, v32))
        {
          goto LABEL_54;
        }

        v33 = swift_slowAlloc();
        *v33 = 0;
        v34 = "Received delete change but tombstone missing identifier";
        goto LABEL_46;
      }

      v50[0] = 0x616D656863536B63;
      v50[1] = 0xEF6E6F6973726556;
      sub_226D6EE8C();
      if (*(v22 + 16) && (v36 = sub_226C2FE4C(v51), (v37 & 1) != 0))
      {
        sub_226AC4708(*(v22 + 56) + 32 * v36, &v52);
        sub_226AE5030(v51);
        if (swift_dynamicCast())
        {
          v38 = v50[0];
          if (LOWORD(v50[0]) == 1)
          {
            goto LABEL_15;
          }

          v39 = 0;
LABEL_49:
          if (qword_28105F620 != -1)
          {
            swift_once();
          }

          v42 = sub_226D6E07C();
          __swift_project_value_buffer(v42, qword_28105F628);
          v31 = sub_226D6E05C();
          v43 = sub_226D6E9CC();
          if (!os_log_type_enabled(v31, v43))
          {
            goto LABEL_54;
          }

          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v51[0] = v45;
          *v44 = 136315138;
          v52 = v38;
          v53 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6DE8, &unk_226D731F0);
          v46 = sub_226D6E3FC();
          v48 = sub_226AC4530(v46, v47, v51);

          *(v44 + 4) = v48;
          _os_log_impl(&dword_226AB4000, v31, v43, "Deleted cloud account match has an unsupported ckSchemaVersion (%s, ignoring change.", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v45);
          MEMORY[0x22AA8BEE0](v45, -1, -1);
          v41 = v44;
          goto LABEL_53;
        }
      }

      else
      {

        sub_226AE5030(v51);
      }

      v38 = 0;
      v39 = 1;
      goto LABEL_49;
    }

    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v35 = sub_226D6E07C();
    __swift_project_value_buffer(v35, qword_28105F628);
    v31 = sub_226D6E05C();
    v32 = sub_226D6E9CC();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_54;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "Received delete change but no tombstone";
LABEL_46:
    _os_log_impl(&dword_226AB4000, v31, v32, v34, v33, 2u);
    v41 = v33;
LABEL_53:
    MEMORY[0x22AA8BEE0](v41, -1, -1);
LABEL_54:

    return (*(v4 + 56))(v49, 1, 1, v3);
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

void sub_226BF7C3C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F58, &unk_226D77078);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v9 = [a2 changedObjectID];
  v10 = type metadata accessor for AccountMatchMappingModel.Change(0);
  v11 = sub_226D6EC3C();

  if (v11)
  {
    sub_226BF7348(a2, v8);
    v12 = *(*(v10 - 8) + 48);
    if (v12(v8, 1, v10) == 1)
    {
      sub_226BFB5F4(a1, a3, type metadata accessor for AccountMatchMappingModel.Change);
      if (v12(v8, 1, v10) != 1)
      {
        sub_226AC47B0(v8, &qword_27D7A7F58, &unk_226D77078);
      }
    }

    else
    {
      sub_226BFB704(v8, a3, type metadata accessor for AccountMatchMappingModel.Change);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226BF7DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v6 = type metadata accessor for AccountMatchMappingModel.Change(0);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6CBBC();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v55 - v11;
  v68 = sub_226D6CBCC();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F50, &unk_226D77068);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v55 - v20;
  sub_226BFB584(a1, &v55 - v20);
  v22 = sub_226D6B9BC();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v21, 2, v22))
  {
    (*(v23 + 32))(a3, v21, v22);
    return (*(v23 + 56))(a3, 0, 1, v22);
  }

  v58 = v23;
  v59 = v22;
  v65 = a3;
  sub_226AC47B0(v21, &qword_27D7A7F50, &unk_226D77068);
  v24 = *(a1 + *(v6 + 20));
  v56 = a1;
  if (v24 == 1)
  {
    sub_226D68E6C();
    v25 = sub_226D68E4C();
    v26 = v68;
    if (!v3)
    {
      v27 = v25;
      sub_226D68E1C();

      (*(v58 + 56))(v18, 0, 1, v59);
      return sub_226B9DC00(v18, v65);
    }
  }

  else
  {
    sub_226D6A43C();
    v29 = sub_226D6A40C();
    v26 = v68;
    if (!v3)
    {
      v45 = v29;
      sub_226D6A3EC();

      return sub_226B9DC00(v18, v65);
    }
  }

  v71 = v3;
  v30 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v31 = swift_dynamicCast();
  v32 = v66;
  if (v31)
  {
    v68 = v6;
    v33 = v64;
    (*(v66 + 32))(v64, v15, v26);
    sub_226BFB6BC(&qword_27D7A6DD8, 255, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v34 = v60;
    sub_226D6D02C();
    v35 = v61;
    sub_226D6CBAC();
    sub_226BFB6BC(&qword_27D7A6DE0, 255, MEMORY[0x277CC8608], MEMORY[0x277CC8610]);
    v36 = v63;
    sub_226D6E53C();
    sub_226D6E53C();
    v37 = *(v62 + 8);
    v37(v35, v36);
    v37(v34, v36);
    if (v70 == v69)
    {

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v38 = sub_226D6E07C();
      __swift_project_value_buffer(v38, qword_28105F628);
      v39 = v57;
      sub_226BFB5F4(v56, v57, type metadata accessor for AccountMatchMappingModel.Change);
      v40 = sub_226D6E05C();
      v41 = sub_226D6E9CC();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = *(v39 + *(v68 + 24));
        sub_226BFB65C(v39, type metadata accessor for AccountMatchMappingModel.Change);
        *(v42 + 4) = v44;
        *v43 = v44;
        v33 = v64;
        _os_log_impl(&dword_226AB4000, v40, v41, "Object %@ does not exist. Ignoring.", v42, 0xCu);
        sub_226AC47B0(v43, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v43, -1, -1);
        MEMORY[0x22AA8BEE0](v42, -1, -1);
      }

      else
      {

        sub_226BFB65C(v39, type metadata accessor for AccountMatchMappingModel.Change);
      }

      (*(v66 + 8))(v33, v26);
      v54 = v71;
      goto LABEL_23;
    }

    (*(v32 + 8))(v33, v26);
  }

  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v46 = sub_226D6E07C();
  __swift_project_value_buffer(v46, qword_28105F628);
  v47 = v3;
  v48 = sub_226D6E05C();
  v49 = sub_226D6E9CC();

  if (!os_log_type_enabled(v48, v49))
  {

    v54 = v3;
LABEL_23:

    return (*(v58 + 56))(v65, 1, 1, v59);
  }

  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  *v50 = 138412290;
  v52 = v3;
  v53 = _swift_stdlib_bridgeErrorToNSError();
  *(v50 + 4) = v53;
  *v51 = v53;
  _os_log_impl(&dword_226AB4000, v48, v49, "Error fetching identifier: %@", v50, 0xCu);
  sub_226AC47B0(v51, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v51, -1, -1);
  MEMORY[0x22AA8BEE0](v50, -1, -1);

  return (*(v58 + 56))(v65, 1, 1, v59);
}

void sub_226BF8678(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (**a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v48 = a2;
  v6 = _s8MetadataV15CloudItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8MetadataV9CloudItemVMa_1(0);
  v47 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F50, &unk_226D77068);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - v13;
  v15 = type metadata accessor for AccountMatchMappingModel.Change(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v51;
  sub_226BF8CB8(a1, v49, a4);
  if (!v19)
  {
    v20 = v16;
    v50 = v9;
    v42[1] = 0;
    v21 = *(v48 + 16);
    if (v21)
    {
      v22 = a4;
      v23 = v15;
      v24 = v48 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v48 = v47 + 56;
      v49 = (v47 + 48);
      v51 = *(v20 + 72);
      v44 = v8;
      v45 = v22;
      v46 = v11;
      v43 = v15;
      do
      {
        sub_226BFB5F4(v24, v18, type metadata accessor for AccountMatchMappingModel.Change);
        sub_226BFB584(v18, v14);
        v25 = sub_226D6B9BC();
        if ((*(*(v25 - 8) + 48))(v14, 2, v25))
        {
          sub_226BFB65C(v18, type metadata accessor for AccountMatchMappingModel.Change);
          sub_226AC47B0(v14, &qword_27D7A7F50, &unk_226D77068);
        }

        else
        {
          sub_226AC47B0(v14, &qword_27D7A7F50, &unk_226D77068);
          if (v18[*(v23 + 20)])
          {
            sub_226BFB65C(v18, type metadata accessor for AccountMatchMappingModel.Change);
            v26 = *(_s8MetadataVMa_1(0) + 28);
            sub_226BFB65C(v22 + v26, _s8MetadataV15LocalItemStatusOMa_1);
            v27 = _s8MetadataV9LocalItemVMa_1(0);
            (*(*(v27 - 8) + 56))(v22 + v26, 1, 2, v27);
          }

          else
          {
            v28 = *(_s8MetadataVMa_1(0) + 24);
            sub_226BFB5F4(v22 + v28, v8, _s8MetadataV15CloudItemStatusOMa_1);
            v29 = v50;
            if ((*v49)(v8, 2, v50))
            {
              sub_226BFB65C(v18, type metadata accessor for AccountMatchMappingModel.Change);
              sub_226BFB65C(v8, _s8MetadataV15CloudItemStatusOMa_1);
            }

            else
            {
              v30 = v23;
              v31 = v46;
              sub_226BFB704(v8, v46, _s8MetadataV9CloudItemVMa_1);
              v32 = *(v31 + *(v29 + 20));
              v33 = *&v18[*(v30 + 24)];
              sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
              v34 = v32;
              v35 = v33;
              LOBYTE(v30) = sub_226D6EC3C();

              if ((v30 & 1) == 0)
              {
                if (qword_28105F620 != -1)
                {
                  swift_once();
                }

                v36 = sub_226D6E07C();
                __swift_project_value_buffer(v36, qword_28105F628);
                v37 = sub_226D6E05C();
                v38 = sub_226D6E9AC();
                v39 = os_log_type_enabled(v37, v38);
                v40 = v46;
                v23 = v43;
                if (v39)
                {
                  v41 = swift_slowAlloc();
                  *v41 = 0;
                  _os_log_impl(&dword_226AB4000, v37, v38, "Deleted duplicate cloud consent. Ignoring change.", v41, 2u);
                  MEMORY[0x22AA8BEE0](v41, -1, -1);
                }

                sub_226BFB65C(v40, _s8MetadataV9CloudItemVMa_1);
                sub_226BFB65C(v18, type metadata accessor for AccountMatchMappingModel.Change);
                v8 = v44;
                v22 = v45;
                goto LABEL_5;
              }

              sub_226BFB65C(v31, _s8MetadataV9CloudItemVMa_1);
              sub_226BFB65C(v18, type metadata accessor for AccountMatchMappingModel.Change);
              v8 = v44;
              v22 = v45;
              v29 = v50;
              v23 = v43;
            }

            sub_226BFB65C(v22 + v28, _s8MetadataV15CloudItemStatusOMa_1);
            (*v48)(v22 + v28, 1, 2, v29);
          }
        }

LABEL_5:
        v24 += v51;
        --v21;
      }

      while (v21);
    }
  }
}

void sub_226BF8CB8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v6 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = _s8MetadataV15CloudItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v66 = &v58 - v19;
  v20 = _s8MetadataV15LocalItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v20 - 8);
  v67 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226D68E6C();
  v22 = sub_226D68E2C();
  if (!v3)
  {
    v68 = v6;
    v23 = v65;
    v59 = v14;
    v60 = v17;
    v61 = v22;
    v62 = a2;
    v64 = 0;
    if (v22)
    {
      v24 = v22;
      v25 = [v24 objectID];
      v26 = [v24 lastUpdatedAt];
      v27 = v67;
      v28 = a1;
      v29 = v26;
      v30 = _s8MetadataV9LocalItemVMa_1(0);
      sub_226D6D45C();

      a1 = v28;
      *v27 = v25;
      (*(*(v30 - 8) + 56))(v27, 0, 2, v30);
    }

    else
    {
      v31 = _s8MetadataV9LocalItemVMa_1(0);
      (*(*(v31 - 8) + 56))(v67, 2, 2, v31);
    }

    v32 = v59;
    v33 = v60;
    v34 = v62;
    v35 = v64;
    sub_226BF9510(a1, v62);
    if (v35)
    {
      sub_226BFB65C(v67, _s8MetadataV15LocalItemStatusOMa_1);

      return;
    }

    v64 = 0;
    v65 = a1;
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v39 = v36;
      sub_226BFB5F4(v36 + v38, v32, _s8MetadataV9CloudItemV6ObjectVMa_1);
      sub_226B3871C(v39, v39 + v38, 1, (2 * v37) | 1);
      v41 = v40;

      sub_226BFB5F4(v32, v11, _s8MetadataV9CloudItemV6ObjectVMa_1);
      v60 = v41;
      v42 = *(v41 + 2);
      if (v42)
      {
        v43 = &v60[v38];
        v44 = *(v23 + 72);
        do
        {
          sub_226BFB5F4(v43, v8, _s8MetadataV9CloudItemV6ObjectVMa_1);
          if (sub_226D6D3FC())
          {
            sub_226BFB65C(v11, _s8MetadataV9CloudItemV6ObjectVMa_1);
            sub_226BFB704(v8, v11, _s8MetadataV9CloudItemV6ObjectVMa_1);
          }

          else
          {
            sub_226BFB65C(v8, _s8MetadataV9CloudItemV6ObjectVMa_1);
          }

          v43 += v44;
          --v42;
        }

        while (v42);
      }

      v45 = v11;
      v46 = v66;
      sub_226BFB704(v45, v66, _s8MetadataV9CloudItemV6ObjectVMa_1);
      v47 = _s8MetadataV9CloudItemVMa_1(0);
      sub_226BFB704(v32, v46 + *(v47 + 20), _s8MetadataV9CloudItemV6ObjectVMa_1);
      *(v46 + *(v47 + 24)) = v60;
      (*(*(v47 - 8) + 56))(v46, 0, 2, v47);
      v34 = v62;
    }

    else
    {

      v47 = _s8MetadataV9CloudItemVMa_1(0);
      (*(*(v47 - 8) + 56))(v66, 2, 2, v47);
    }

    _s8MetadataV9CloudItemVMa_1(0);
    (*(*(v47 - 8) + 56))(v33, 2, 2, v47);
    v48 = sub_226C1C084(v66, v33);
    sub_226BFB65C(v33, _s8MetadataV15CloudItemStatusOMa_1);
    v49 = v63;
    v50 = v65;
    if (v48)
    {
      v51 = sub_226D6B97C();
      v52 = v64;
      v54 = sub_226BF9BE0(v51, v53, v34);
      v64 = v52;
      if (v52)
      {

        sub_226BFB65C(v66, _s8MetadataV15CloudItemStatusOMa_1);
        sub_226BFB65C(v67, _s8MetadataV15LocalItemStatusOMa_1);
        return;
      }

      v55 = v54;
    }

    else
    {
      v55 = 1;
    }

    v56 = sub_226D6B9BC();
    (*(*(v56 - 8) + 16))(v49, v50, v56);
    v57 = _s8MetadataVMa_1(0);
    sub_226BFB704(v66, v49 + v57[6], _s8MetadataV15CloudItemStatusOMa_1);
    sub_226BFB704(v67, v49 + v57[7], _s8MetadataV15LocalItemStatusOMa_1);
    *(v49 + v57[5]) = v55 & 1;
  }
}

uint64_t sub_226BF94B8(uint64_t a1, uint64_t a2)
{
  result = sub_226BFB6BC(&qword_27D7A7F48, a2, type metadata accessor for AccountMatchMappingModel, &unk_226D7701C);
  *(a1 + 8) = result;
  return result;
}

void sub_226BF9510(uint64_t a1, unint64_t a2)
{
  v70 = a2;
  v65 = sub_226D6D52C();
  v69 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = v52 - v6;
  v68 = sub_226D6D4AC();
  v55 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = v52 - v9;
  v10 = _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v63 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6A43C();
  v13 = sub_226D6A3FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D71F40;
  *(v14 + 32) = sub_226D6A3CC();
  *(v14 + 40) = MEMORY[0x22AA86480](a1);
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v15 = sub_226D6E5CC();

  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v13 setPredicate_];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_226D71F20;
  v18 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v19 = sub_226D6E36C();
  v20 = [v18 initWithKey:v19 ascending:0];

  *(v17 + 32) = v20;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v21 = sub_226D6E5CC();

  [v13 setSortDescriptors_];

  v22 = v71;
  v23 = sub_226D6EBBC();
  v24 = v22;
  if (v22)
  {
  }

  else
  {
    v25 = v69;
    v59 = v12;
    v60 = v10;
    v26 = v23;
    if (v23 >> 62)
    {
      goto LABEL_22;
    }

    v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v55;
    if (v27)
    {
      while (1)
      {
        v52[1] = v24;
        v53 = v13;
        v72 = MEMORY[0x277D84F90];
        sub_226AE22FC(0, v27 & ~(v27 >> 63), 0);
        if (v27 < 0)
        {
          break;
        }

        v29 = 0;
        v71 = v72;
        v30 = v26;
        v61 = v26;
        v62 = v26 & 0xC000000000000001;
        v54 = v26 & 0xFFFFFFFFFFFFFF8;
        v24 = (v28 + 32);
        v56 = (v25 + 4);
        v57 = v27;
        v26 = v67;
        v13 = v68;
        v58 = v4;
        while (1)
        {
          v31 = (v29 + 1);
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v62)
          {
            v32 = MEMORY[0x22AA8AFD0](v29);
          }

          else
          {
            if (v29 >= *(v54 + 16))
            {
              goto LABEL_21;
            }

            v32 = *(v30 + 8 * v29 + 32);
          }

          v33 = v32;
          v34 = [v32 lastUpdatedAt];
          if (!v34)
          {
            goto LABEL_19;
          }

          v35 = v34;
          v70 = v29;
          sub_226D6D45C();

          v36 = *v24;
          v37 = v66;
          (*v24)(v66, v26, v13);
          v38 = [v33 id];
          if (!v38)
          {
            (*(v55 + 8))(v37, v13);
LABEL_19:
            sub_226B3E244();
            swift_allocError();
            *v51 = 2;
            swift_willThrow();

            return;
          }

          v39 = v38;
          v69 = v31;
          sub_226D6D4FC();

          v40 = *v56;
          v41 = v64;
          v42 = v4;
          v43 = v65;
          (*v56)(v64, v42, v65);
          v25 = [v33 objectID];

          v44 = v60;
          v45 = v41;
          v46 = v59;
          v40(&v59[*(v60 + 20)], v45, v43);
          v13 = v68;
          v36(&v46[*(v44 + 24)], v37, v68);
          *v46 = v25;
          v47 = v71;
          v72 = v71;
          v49 = *(v71 + 16);
          v48 = *(v71 + 24);
          if (v49 >= v48 >> 1)
          {
            v25 = v24;
            sub_226AE22FC((v48 > 1), v49 + 1, 1);
            v47 = v72;
          }

          *(v47 + 16) = v49 + 1;
          v50 = (*(v63 + 80) + 32) & ~*(v63 + 80);
          v71 = v47;
          sub_226BFB704(v46, v47 + v50 + *(v63 + 72) * v49, _s8MetadataV9CloudItemV6ObjectVMa_1);
          v29 = v70 + 1;
          v4 = v58;
          v26 = v67;
          v30 = v61;
          if (v69 == v57)
          {

            return;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v27 = sub_226D6EDFC();
        v28 = v55;
        if (!v27)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_23:
    }
  }
}

uint64_t sub_226BF9BE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_226D6B5EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B58C();
  v10 = sub_226D6B5CC();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) != 0 && (MEMORY[0x22AA83210](a1, a2) & 1) == 0)
  {
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v14 = sub_226D6E07C();
    __swift_project_value_buffer(v14, qword_28105F628);
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_226AB4000, v15, v16, "Force consent syncing override enabled, returning true.", v17, 2u);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    v11 = 1;
  }

  else
  {
    v11 = sub_226D6842C();
    v12 = sub_226D683EC();
    if (!v3)
    {
      if (v12)
      {
        v13 = v12;
        v11 = [v12 consentSyncingEnabled];
      }

      else
      {
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v18 = sub_226D6E07C();
        __swift_project_value_buffer(v18, qword_28105F628);

        v19 = sub_226D6E05C();
        v20 = sub_226D6E9DC();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v25 = v22;
          *v21 = 136315138;
          *(v21 + 4) = sub_226AC4530(a1, a2, &v25);
          _os_log_impl(&dword_226AB4000, v19, v20, "Institution for institutionID: %s missing, unable to determine if syncing is enabled. Returning default (false).", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
          MEMORY[0x22AA8BEE0](v22, -1, -1);
          MEMORY[0x22AA8BEE0](v21, -1, -1);
        }

        v11 = 0;
      }
    }
  }

  return v11 & 1;
}

char *sub_226BF9F24(uint64_t *a1)
{
  v2 = _s8MetadataV9LocalItemVMa_1(0);
  v3 = *(v2 - 8);
  v144 = v2;
  v145 = v3;
  MEMORY[0x28223BE20](v2);
  v133 = (&v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v132 = (&v127 - v6);
  v7 = _s8MetadataV15LocalItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v7 - 8);
  v131 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v143 = (&v127 - v10);
  MEMORY[0x28223BE20](v11);
  v135 = &v127 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v127 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v127 - v17;
  v19 = _s8MetadataV15CloudItemStatusOMa_1(0);
  MEMORY[0x28223BE20](v19 - 8);
  v140 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v136 = (&v127 - v22);
  MEMORY[0x28223BE20](v23);
  v130 = &v127 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v127 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v127 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v127 - v32;
  v34 = _s8MetadataV9CloudItemVMa_1(0);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v137 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v134 = (&v127 - v38);
  MEMORY[0x28223BE20](v39);
  v41 = (&v127 - v40);
  MEMORY[0x28223BE20](v42);
  v44 = (&v127 - v43);
  v45 = _s8MetadataVMa_1(0);
  if (*(a1 + *(v45 + 20)) != 1)
  {
    v54 = sub_226D6B97C();
    v56 = v55;
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v57 = sub_226D6E07C();
    __swift_project_value_buffer(v57, qword_28105F628);

    v58 = sub_226D6E05C();
    v59 = sub_226D6E9EC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v147 = v61;
      *v60 = 136315138;
      v62 = sub_226AC4530(v54, v56, &v147);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_226AB4000, v58, v59, "Syncing is disabled for institutionID: %s, no operations needed.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x22AA8BEE0](v61, -1, -1);
      MEMORY[0x22AA8BEE0](v60, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84F90];
  }

  v147 = MEMORY[0x277D84F90];
  v142 = v45;
  v139 = *(v45 + 24);
  sub_226BFB5F4(a1 + v139, v33, _s8MetadataV15CloudItemStatusOMa_1);
  v46 = *(v35 + 48);
  v129 = v35 + 48;
  v141 = v46;
  if (v46(v33, 2, v34))
  {
    v47 = _s8MetadataV15CloudItemStatusOMa_1;
    v48 = v33;
    goto LABEL_4;
  }

  sub_226BFB704(v33, v44, _s8MetadataV9CloudItemVMa_1);
  v64 = (v44 + *(v34 + 20));
  _s8MetadataV9CloudItemV6ObjectVMa_1(0);
  v49 = v34;
  if (sub_226D6D40C())
  {
    v65 = *(v142 + 28);
    (*(v145 + 56))(v18, 1, 2, v144);
    LOBYTE(v65) = sub_226C1C468(a1 + v65, v18);
    sub_226BFB65C(v18, _s8MetadataV15LocalItemStatusOMa_1);
    if ((v65 & 1) == 0)
    {
      v72 = *v64;
      v73 = *v44;
      v128 = v72;
      v74 = v73;
      v75 = sub_226BBB76C(0, 1, 1, MEMORY[0x277D84F90]);
      v77 = *(v75 + 2);
      v76 = *(v75 + 3);
      v138 = v75;
      if (v77 >= v76 >> 1)
      {
        v138 = sub_226BBB76C((v76 > 1), v77 + 1, 1, v138);
      }

      sub_226BFB65C(v44, _s8MetadataV9CloudItemVMa_1);
      v78 = v138;
      *(v138 + 2) = v77 + 1;
      v79 = &v78[24 * v77];
      *(v79 + 4) = v128;
      *(v79 + 5) = v74;
      v79[48] = 2;
      v147 = v78;
      goto LABEL_5;
    }

    v47 = _s8MetadataV9CloudItemVMa_1;
    v48 = v44;
LABEL_4:
    sub_226BFB65C(v48, v47);
    v138 = MEMORY[0x277D84F90];
LABEL_5:
    v49 = v34;
    goto LABEL_6;
  }

  sub_226BFB65C(v44, _s8MetadataV9CloudItemVMa_1);
  v138 = MEMORY[0x277D84F90];
LABEL_6:
  sub_226BFB5F4(a1 + v139, v30, _s8MetadataV15CloudItemStatusOMa_1);
  v50 = v141;
  v51 = v141(v30, 2, v49);
  v52 = v145;
  if (v51)
  {
    sub_226BFB65C(v30, _s8MetadataV15CloudItemStatusOMa_1);
    v53 = v144;
  }

  else
  {
    sub_226BFB704(v30, v41, _s8MetadataV9CloudItemVMa_1);
    sub_226BFB5F4(a1 + *(v142 + 28), v15, _s8MetadataV15LocalItemStatusOMa_1);
    v53 = v144;
    if (!(*(v52 + 48))(v15, 2, v144))
    {
      v66 = v15;
      v67 = v132;
      sub_226BFB704(v66, v132, _s8MetadataV9LocalItemVMa_1);
      _s8MetadataV9CloudItemV6ObjectVMa_1(0);
      v68 = v49;
      if (sub_226D6D3FC())
      {
        v69 = *v67;
        v70 = *(v41 + v49[5]);
        v71 = v69;
        LOBYTE(v53) = 3;
      }

      else
      {
        v69 = 0;
        LOBYTE(v53) = 0;
        v70 = *v41;
        v71 = *v41;
      }

      v49 = v70;
      v80 = v71;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_27;
      }

      goto LABEL_80;
    }

    sub_226BFB65C(v41, _s8MetadataV9CloudItemVMa_1);
    sub_226BFB65C(v15, _s8MetadataV15LocalItemStatusOMa_1);
  }

  while (1)
  {
    v85 = v139;
    sub_226BFB5F4(a1 + v139, v27, _s8MetadataV15CloudItemStatusOMa_1);
    v86 = v50(v27, 2, v49);
    v41 = v143;
    if (!v86)
    {
      v87 = _s8MetadataV15CloudItemStatusOMa_1;
      goto LABEL_34;
    }

    v27 = v135;
    sub_226BFB5F4(a1 + *(v142 + 28), v135, _s8MetadataV15LocalItemStatusOMa_1);
    if ((*(v52 + 48))(v27, 2, v53))
    {
      v87 = _s8MetadataV15LocalItemStatusOMa_1;
LABEL_34:
      sub_226BFB65C(v27, v87);
      goto LABEL_47;
    }

    v88 = v27;
    v89 = v133;
    sub_226BFB704(v88, v133, _s8MetadataV9LocalItemVMa_1);
    v90 = v130;
    sub_226BFB5F4(a1 + v85, v130, _s8MetadataV15CloudItemStatusOMa_1);
    v91 = v50(v90, 2, v49);
    sub_226BFB65C(v90, _s8MetadataV15CloudItemStatusOMa_1);
    v92 = *v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v91 == 1)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v138 = sub_226BBB76C(0, *(v138 + 2) + 1, 1, v138);
      }

      v95 = *(v138 + 2);
      v94 = *(v138 + 3);
      if (v95 >= v94 >> 1)
      {
        v138 = sub_226BBB76C((v94 > 1), v95 + 1, 1, v138);
      }

      sub_226BFB65C(v133, _s8MetadataV9LocalItemVMa_1);
      v96 = v138;
      *(v138 + 2) = v95 + 1;
      v97 = &v96[24 * v95];
      *(v97 + 4) = v92;
      *(v97 + 5) = 0;
      v98 = 4;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v138 = sub_226BBB76C(0, *(v138 + 2) + 1, 1, v138);
      }

      v100 = *(v138 + 2);
      v99 = *(v138 + 3);
      if (v100 >= v99 >> 1)
      {
        v138 = sub_226BBB76C((v99 > 1), v100 + 1, 1, v138);
      }

      sub_226BFB65C(v133, _s8MetadataV9LocalItemVMa_1);
      v96 = v138;
      *(v138 + 2) = v100 + 1;
      v97 = &v96[24 * v100];
      *(v97 + 4) = v92;
      *(v97 + 5) = 0;
      v98 = 1;
    }

    v97[48] = v98;
    v147 = v96;
    v52 = v145;
    v41 = v143;
LABEL_47:
    v101 = *(v142 + 28);
    sub_226BFB5F4(a1 + v101, v41, _s8MetadataV15LocalItemStatusOMa_1);
    v103 = *(v52 + 48);
    v52 += 48;
    v102 = v103;
    if (v103(v41, 2, v53))
    {
      v41 = v136;
      sub_226BFB5F4(a1 + v85, v136, _s8MetadataV15CloudItemStatusOMa_1);
      v104 = v50(v41, 2, v49);
      v68 = v140;
      if (v104)
      {
        sub_226BFB65C(v41, _s8MetadataV15CloudItemStatusOMa_1);
      }

      else
      {
        v105 = v41;
        v41 = v134;
        sub_226BFB704(v105, v134, _s8MetadataV9CloudItemVMa_1);
        v106 = a1 + v101;
        v107 = v131;
        sub_226BFB5F4(v106, v131, _s8MetadataV15LocalItemStatusOMa_1);
        v108 = v102(v107, 2, v53);
        sub_226BFB65C(v107, _s8MetadataV15LocalItemStatusOMa_1);
        v109 = *(v41 + v49[5]);
        v110 = swift_isUniquelyReferenced_nonNull_native();
        if (v108 == 1)
        {
          if ((v110 & 1) == 0)
          {
            v138 = sub_226BBB76C(0, *(v138 + 2) + 1, 1, v138);
          }

          v52 = *(v138 + 2);
          v111 = *(v138 + 3);
          if (v52 >= v111 >> 1)
          {
            v138 = sub_226BBB76C((v111 > 1), v52 + 1, 1, v138);
          }

          sub_226BFB65C(v134, _s8MetadataV9CloudItemVMa_1);
          v112 = v138;
          *(v138 + 2) = v52 + 1;
          v113 = &v112[24 * v52];
          *(v113 + 4) = v109;
          *(v113 + 5) = 0;
          v113[48] = 5;
          v147 = v112;
        }

        else
        {
          if ((v110 & 1) == 0)
          {
            v138 = sub_226BBB76C(0, *(v138 + 2) + 1, 1, v138);
          }

          v52 = *(v138 + 2);
          v114 = *(v138 + 3);
          if (v52 >= v114 >> 1)
          {
            v138 = sub_226BBB76C((v114 > 1), v52 + 1, 1, v138);
          }

          sub_226BFB65C(v134, _s8MetadataV9CloudItemVMa_1);
          v115 = v138;
          *(v138 + 2) = v52 + 1;
          v116 = &v115[24 * v52];
          *(v116 + 4) = v109;
          *(v116 + 5) = 0;
          v116[48] = 0;
          v147 = v115;
        }
      }
    }

    else
    {
      sub_226BFB65C(v41, _s8MetadataV15LocalItemStatusOMa_1);
      v68 = v140;
    }

    sub_226BFB5F4(a1 + v85, v68, _s8MetadataV15CloudItemStatusOMa_1);
    if (v141(v68, 2, v49))
    {
      v117 = _s8MetadataV15CloudItemStatusOMa_1;
      v118 = v68;
      goto LABEL_78;
    }

    sub_226BFB704(v68, v137, _s8MetadataV9CloudItemVMa_1);
    v119 = sub_226C1A854();
    v27 = v119;
    if (v119 >> 62)
    {
      v69 = sub_226D6EDFC();
      if (!v69)
      {
LABEL_76:

        v121 = MEMORY[0x277D84F90];
        goto LABEL_77;
      }
    }

    else
    {
      v69 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v69)
      {
        goto LABEL_76;
      }
    }

    v146 = MEMORY[0x277D84F90];
    a1 = &v146;
    sub_226AE226C(0, v69 & ~(v69 >> 63), 0);
    if ((v69 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_80:
    v138 = sub_226BBB76C(0, *(v138 + 2) + 1, 1, v138);
LABEL_27:
    v82 = *(v138 + 2);
    v81 = *(v138 + 3);
    if (v82 >= v81 >> 1)
    {
      v138 = sub_226BBB76C((v81 > 1), v82 + 1, 1, v138);
    }

    sub_226BFB4CC(v49, v69, v53);
    sub_226BFB65C(v132, _s8MetadataV9LocalItemVMa_1);
    sub_226BFB65C(v41, _s8MetadataV9CloudItemVMa_1);
    v83 = v138;
    *(v138 + 2) = v82 + 1;
    v84 = &v83[24 * v82];
    *(v84 + 4) = v49;
    *(v84 + 5) = v69;
    v84[48] = v53;
    v147 = v83;
    v49 = v68;
    v53 = v144;
    v50 = v141;
  }

  v120 = 0;
  v121 = v146;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v122 = MEMORY[0x22AA8AFD0](v120, v27);
    }

    else
    {
      v122 = *(v27 + 8 * v120 + 32);
    }

    v146 = v121;
    v124 = *(v121 + 16);
    v123 = *(v121 + 24);
    if (v124 >= v123 >> 1)
    {
      v126 = v122;
      sub_226AE226C((v123 > 1), v124 + 1, 1);
      v122 = v126;
      v121 = v146;
    }

    ++v120;
    *(v121 + 16) = v124 + 1;
    v125 = v121 + 24 * v124;
    *(v125 + 32) = v122;
    *(v125 + 40) = 0;
    *(v125 + 48) = 5;
  }

  while (v69 != v120);

LABEL_77:
  sub_226CEDF68(v121);
  v117 = _s8MetadataV9CloudItemVMa_1;
  v118 = v137;
LABEL_78:
  sub_226BFB65C(v118, v117);
  return v147;
}

uint64_t sub_226BFAF78(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_226D6BC6C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_226D6BD1C();
  swift_allocObject();
  sub_226D6BD0C();
  (*(v6 + 104))(v8, **(&unk_2785C8A38 + a4), v5);
  (*(v6 + 32))(v11, v8, v5);
  sub_226D6BC7C();

  return (*(v6 + 8))(v11, v5);
}

void sub_226BFB0EC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = a3;
  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F628);
  sub_226BFB460(a1, a2, v6);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  sub_226BFB4CC(a1, a2, v6);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    v14 = sub_226D3FC38(a1, a2, v6);
    v16 = a1;
    v17 = v6;
    v18 = a2;
    v19 = sub_226AC4530(v14, v15, &v31);

    *(v12 + 4) = v19;
    a2 = v18;
    v6 = v17;
    a1 = v16;
    _os_log_impl(&dword_226AB4000, v10, v11, "Performing %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v20 = v13;
    v5 = v4;
    MEMORY[0x22AA8BEE0](v20, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  if (v6 > 2u)
  {
    if (v6 == 3)
    {
      sub_226D406DC(a1, a2, a4);
      if (!v5)
      {
        return;
      }
    }

    else if (v6 == 4)
    {
      sub_226D40918(a1, a4);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      sub_226D40BBC(a1, a4);
      if (!v5)
      {
        return;
      }
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      sub_226D403A4(a1, a4);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      sub_226D404B8(a1, a2, a4);
      if (!v5)
      {
        return;
      }
    }
  }

  else
  {
    sub_226D4009C(a1, a4);
    if (!v5)
    {
      return;
    }
  }

  v21 = v5;
  v22 = sub_226D6E05C();
  v23 = sub_226D6E9DC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = a2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v5;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_226AB4000, v22, v23, "Error performing operation: %@.", v25, 0xCu);
    sub_226AC47B0(v26, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v26, -1, -1);
    v29 = v25;
    a2 = v24;
    MEMORY[0x22AA8BEE0](v29, -1, -1);
  }

  sub_226BFAF78(v5, a1, a2, v6);
  swift_willThrow();
}

id sub_226BFB460(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
    if (((1 << a3) & 0x33) != 0)
    {
    }

    else
    {
      v4 = result;
      result = a2;
    }

    return result;
  }

  return result;
}

void sub_226BFB4CC(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
    if (((1 << a3) & 0x33) != 0)
    {
    }

    else
    {

      a1 = a2;
    }
  }
}

uint64_t type metadata accessor for AccountMatchMappingModel.Change(uint64_t a1)
{
  result = qword_27D7A7F60;
  if (!qword_27D7A7F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BFB584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F50, &unk_226D77068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BFB5F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BFB65C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BFB6BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226BFB704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_226BFB794(uint64_t a1)
{
  sub_226BFB830(319);
  if (v1 <= 0x3F)
  {
    sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226BFB830(uint64_t a1)
{
  if (!qword_27D7A7F70)
  {
    v2 = sub_226D6B9BC();
    v3 = sub_226BFB6BC(&qword_27D7A6790, 255, MEMORY[0x277CC8058], MEMORY[0x277CC8068]);
    v5 = type metadata accessor for StoreMappingChangeType(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D7A7F70);
    }
  }
}

void sub_226BFB8C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [a1 changedObjectID];
  v6 = [v5 entity];

  v7 = [v6 name];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = sub_226D6E39C();
  v10 = v9;

  v11 = v8 == 0x726564724FLL && v10 == 0xE500000000000000;
  if (v11 || (sub_226D6F21C() & 1) != 0 || (v8 == 0x64724F64756F6C43 ? (v12 = v10 == 0xEA00000000007265) : (v12 = 0), v12))
  {
  }

  else
  {
    v13 = sub_226D6F21C();

    if ((v13 & 1) == 0)
    {
LABEL_12:
      v14 = 1;
      goto LABEL_16;
    }
  }

  sub_226BFBA68(a1, a2);
  if (v2)
  {
    return;
  }

  v14 = 0;
LABEL_16:
  v15 = type metadata accessor for OrderMappingModel.Change(0);
  (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

void sub_226BFBA68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 changedObjectID];
  v5 = type metadata accessor for OrderMappingModel.Change(0);
  *(a2 + *(v5 + 24)) = v4;
  v6 = [v4 entityName];
  v7 = sub_226D6E39C();
  v9 = v8;

  v10 = v7 == 0x726564724FLL && v9 == 0xE500000000000000;
  if (v10 || (sub_226D6F21C() & 1) != 0)
  {

    v11 = 1;
  }

  else if (v7 == 0x64724F64756F6C43 && v9 == 0xEA00000000007265)
  {

    v11 = 0;
  }

  else
  {
    v24 = sub_226D6F21C();

    v11 = 0;
    if ((v24 & 1) == 0)
    {
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v25 = sub_226D6E07C();
      __swift_project_value_buffer(v25, qword_28105F628);
      v26 = sub_226D6E05C();
      v27 = sub_226D6E9CC();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_35;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Change was not for a cloud or local order";
      goto LABEL_34;
    }
  }

  *(a2 + *(v5 + 20)) = v11;
  v12 = [a1 changeType];
  if (!v12)
  {

    v14 = sub_226D6B49C();
    (*(*(v14 - 8) + 56))(a2, 1, 2, v14);
    return;
  }

  if (v12 == 1)
  {

    v13 = sub_226D6B49C();
    (*(*(v13 - 8) + 56))(a2, 2, 2, v13);
    return;
  }

  if (v12 == 2)
  {
    v15 = [a1 tombstone];
    if (v15)
    {
      v16 = v15;
      v17 = sub_226D6E2BC();

      sub_226D6EE8C();
      if (*(v17 + 16))
      {
        v18 = sub_226C2FE4C(v32);
        if (v19)
        {
          sub_226AC4708(*(v17 + 56) + 32 * v18, v33);
          sub_226AE5030(v32);
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_37:

            goto LABEL_30;
          }

          sub_226D6EE8C();
          if (*(v17 + 16))
          {
            v20 = sub_226C2FE4C(v32);
            if (v21)
            {
              sub_226AC4708(*(v17 + 56) + 32 * v20, v33);
              sub_226AE5030(v32);

              if (swift_dynamicCast())
              {
                sub_226D6B45C();

                v22 = sub_226D6B49C();
                (*(*(v22 - 8) + 56))(a2, 0, 2, v22);
                return;
              }

              goto LABEL_37;
            }
          }
        }
      }

      sub_226AE5030(v32);
    }

LABEL_30:
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v30 = sub_226D6E07C();
    __swift_project_value_buffer(v30, qword_28105F628);
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9CC();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_35;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Received delete change but no tombstone";
LABEL_34:
    _os_log_impl(&dword_226AB4000, v26, v27, v29, v28, 2u);
    MEMORY[0x22AA8BEE0](v28, -1, -1);
LABEL_35:

    sub_226B3E244();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    return;
  }

  sub_226D6F0AC();
  __break(1u);
}

uint64_t sub_226BFC010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v79 = a2;
  v78 = a3;
  v76 = type metadata accessor for OrderMappingModel.Change(0);
  MEMORY[0x28223BE20](v76);
  v68 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6CBBC();
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v67 - v8;
  v74 = sub_226D6CBCC();
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F98, &qword_226D77100);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v67 - v13;
  v15 = sub_226D6B49C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v67 - v26;
  sub_226AC40E8(a1, v14, &qword_27D7A7F98, &qword_226D77100);
  if (!(*(v16 + 48))(v14, 2, v15))
  {
    v35 = *(v16 + 32);
    v35(v27, v14, v15);
    v36 = v78;
    v35(v78, v27, v15);
    v37 = 0;
    v34 = v16;
    return (*(v34 + 56))(v36, v37, 1, v15);
  }

  v28 = sub_226AC47B0(v14, &qword_27D7A7F98, &qword_226D77100);
  MEMORY[0x28223BE20](v28);
  v67 = a1;
  v29 = v79;
  *(&v67 - 2) = a1;
  *(&v67 - 1) = v29;
  if (v30 == 1)
  {
    v31 = v80;
    sub_226D6EB8C();
    v32 = v77;
    if (v31)
    {
      v33 = v31;
      v34 = v16;
      goto LABEL_8;
    }

    v18 = v21;
LABEL_15:
    v34 = v16;
    v57 = *(v16 + 32);
    v57(v24, v18, v15);
    v36 = v78;
    v57(v78, v24, v15);
    v37 = 0;
    return (*(v34 + 56))(v36, v37, 1, v15);
  }

  v38 = v80;
  sub_226D6EB8C();
  if (!v38)
  {
    goto LABEL_15;
  }

  v33 = v38;
  v34 = v16;
  v32 = v77;
LABEL_8:
  v83 = v33;
  v39 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  v40 = v73;
  v41 = v74;
  v42 = swift_dynamicCast();
  v43 = v75;
  if (v42)
  {
    v79 = v15;
    v80 = 0;
    (*(v32 + 32))(v75, v40, v41);
    sub_226C0060C(&qword_27D7A6DD8, 255, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v44 = v69;
    sub_226D6D02C();
    v45 = v70;
    sub_226D6CBAC();
    sub_226C0060C(&qword_27D7A6DE0, 255, MEMORY[0x277CC8608], MEMORY[0x277CC8610]);
    v46 = v72;
    sub_226D6E53C();
    sub_226D6E53C();
    v47 = *(v71 + 8);
    v47(v45, v46);
    v47(v44, v46);
    if (v82 == v81)
    {

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v48 = sub_226D6E07C();
      __swift_project_value_buffer(v48, qword_28105F628);
      v49 = v68;
      sub_226BFFCB8(v67, v68, type metadata accessor for OrderMappingModel.Change);
      v50 = sub_226D6E05C();
      v51 = sub_226D6E9CC();
      v52 = os_log_type_enabled(v50, v51);
      v15 = v79;
      if (v52)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        v55 = *(v49 + *(v76 + 24));
        sub_226BFFD20(v49, type metadata accessor for OrderMappingModel.Change);
        *(v53 + 4) = v55;
        *v54 = v55;
        _os_log_impl(&dword_226AB4000, v50, v51, "Object %@ does not exist. Ignoring.", v53, 0xCu);
        sub_226AC47B0(v54, &qword_27D7A5FB0, &qword_226D70870);
        v56 = v54;
        v41 = v74;
        MEMORY[0x22AA8BEE0](v56, -1, -1);
        MEMORY[0x22AA8BEE0](v53, -1, -1);
      }

      else
      {

        sub_226BFFD20(v49, type metadata accessor for OrderMappingModel.Change);
      }

      v36 = v78;
      (*(v77 + 8))(v75, v41);

      v37 = 1;
      return (*(v34 + 56))(v36, v37, 1, v15);
    }

    (*(v77 + 8))(v43, v41);
    v15 = v79;
  }

  if (qword_28105F620 != -1)
  {
    swift_once();
  }

  v58 = sub_226D6E07C();
  __swift_project_value_buffer(v58, qword_28105F628);
  v59 = v33;
  v60 = sub_226D6E05C();
  v61 = sub_226D6E9CC();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    v64 = v33;
    v65 = _swift_stdlib_bridgeErrorToNSError();
    *(v62 + 4) = v65;
    *v63 = v65;
    _os_log_impl(&dword_226AB4000, v60, v61, "Error fetching identifier: %@", v62, 0xCu);
    sub_226AC47B0(v63, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v63, -1, -1);
    MEMORY[0x22AA8BEE0](v62, -1, -1);
  }

  else
  {
  }

  v37 = 1;
  v36 = v78;
  return (*(v34 + 56))(v36, v37, 1, v15);
}

void sub_226BFC974(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void, uint64_t), void (*a5)(void))
{
  a3(0);
  v10 = type metadata accessor for OrderMappingModel.Change(0);
  v11 = a4(*(a1 + *(v10 + 24)), a2);
  if (!v5)
  {
    v12 = v11;
    a5();
  }
}

uint64_t sub_226BFCA14@<X0>(uint64_t a1@<X0>, unsigned int (**a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v48 = a2;
  v6 = _s8MetadataV15CloudItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8MetadataV9CloudItemVMa_2(0);
  v47 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F98, &qword_226D77100);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for OrderMappingModel.Change(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v52;
  result = sub_226BFD074(a1, v50, a4);
  if (!v19)
  {
    v21 = v47;
    v49 = v8;
    v50 = v9;
    v44 = 0;
    v22 = v48[2];
    if (v22)
    {
      v23 = v15;
      v24 = v48 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v47 += 7;
      v48 = (v21 + 6);
      v52 = *(v16 + 72);
      v51 = a4;
      v45 = v23;
      v46 = v11;
      do
      {
        sub_226BFFCB8(v24, v18, type metadata accessor for OrderMappingModel.Change);
        sub_226AC40E8(v18, v14, &qword_27D7A7F98, &qword_226D77100);
        v25 = sub_226D6B49C();
        if ((*(*(v25 - 8) + 48))(v14, 2, v25))
        {
          sub_226BFFD20(v18, type metadata accessor for OrderMappingModel.Change);
          result = sub_226AC47B0(v14, &qword_27D7A7F98, &qword_226D77100);
        }

        else
        {
          sub_226AC47B0(v14, &qword_27D7A7F98, &qword_226D77100);
          if (v18[*(v23 + 20)])
          {
            sub_226BFFD20(v18, type metadata accessor for OrderMappingModel.Change);
            v26 = *(_s8MetadataVMa_2(0) + 24);
            sub_226BFFD20(v51 + v26, _s8MetadataV15LocalItemStatusOMa_2);
            v27 = _s8MetadataV9LocalItemVMa_2(0);
            a4 = v51;
            result = (*(*(v27 - 8) + 56))(v51 + v26, 1, 2, v27);
          }

          else
          {
            v28 = *(_s8MetadataVMa_2(0) + 20);
            v29 = v49;
            sub_226BFFCB8(a4 + v28, v49, _s8MetadataV15CloudItemStatusOMa_2);
            v30 = v50;
            if ((*v48)(v29, 2, v50))
            {
              sub_226BFFD20(v18, type metadata accessor for OrderMappingModel.Change);
              sub_226BFFD20(v29, _s8MetadataV15CloudItemStatusOMa_2);
            }

            else
            {
              v31 = v23;
              v32 = v46;
              sub_226BFFDCC(v29, v46, _s8MetadataV9CloudItemVMa_2);
              v33 = v32 + *(v30 + 20);
              v34 = *(v33 + *(_s8MetadataV9CloudItemV6ObjectVMa_2(0) + 24));
              v35 = *&v18[*(v31 + 24)];
              sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
              v36 = v34;
              v37 = v35;
              LOBYTE(v33) = sub_226D6EC3C();

              if ((v33 & 1) == 0)
              {
                if (qword_28105F620 != -1)
                {
                  swift_once();
                }

                v38 = sub_226D6E07C();
                __swift_project_value_buffer(v38, qword_28105F628);
                v39 = sub_226D6E05C();
                v40 = sub_226D6E9AC();
                v41 = os_log_type_enabled(v39, v40);
                v23 = v45;
                v42 = v46;
                if (v41)
                {
                  v43 = swift_slowAlloc();
                  *v43 = 0;
                  _os_log_impl(&dword_226AB4000, v39, v40, "Deleted duplicate cloud order. Ignoring change.", v43, 2u);
                  MEMORY[0x22AA8BEE0](v43, -1, -1);
                }

                sub_226BFFD20(v42, _s8MetadataV9CloudItemVMa_2);
                result = sub_226BFFD20(v18, type metadata accessor for OrderMappingModel.Change);
                a4 = v51;
                goto LABEL_5;
              }

              sub_226BFFD20(v32, _s8MetadataV9CloudItemVMa_2);
              sub_226BFFD20(v18, type metadata accessor for OrderMappingModel.Change);
              v30 = v50;
              a4 = v51;
              v23 = v45;
            }

            sub_226BFFD20(a4 + v28, _s8MetadataV15CloudItemStatusOMa_2);
            result = (*v47)(a4 + v28, 1, 2, v30);
          }
        }

LABEL_5:
        v24 += v52;
        v22 = (v22 - 1);
      }

      while (v22);
    }
  }

  return result;
}

uint64_t sub_226BFD074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = _s8MetadataV9CloudItemVMa_2(0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = _s8MetadataV15CloudItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s8MetadataV15LocalItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  v52 = a2;
  v23 = v50;
  result = sub_226D6EB8C();
  if (!v23)
  {
    v43 = v19;
    v44 = v22;
    v50 = v16;
    MEMORY[0x28223BE20](result);
    *(&v41 - 4) = v49;
    *(&v41 - 3) = a1;
    *(&v41 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7FA0, &qword_226D77108);
    sub_226D6EB8C();
    v42 = a1;
    v49 = 0;
    v25 = v53;
    v26 = *(v53 + 16);
    v27 = v44;
    if (v26)
    {
      v28 = v45;
      v29 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v30 = v50;
      sub_226BFFCB8(v53 + v29, v50, _s8MetadataV9CloudItemV6ObjectVMa_2);
      sub_226B386F4(v25, v25 + v29, 1, (2 * v26) | 1);
      v32 = v31;

      sub_226BFFCB8(v30, v13, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v41 = v32;
      v33 = *(v32 + 16);
      v35 = v47;
      v34 = v48;
      if (v33)
      {
        v36 = v41 + v29;
        v37 = *(v28 + 72);
        do
        {
          sub_226BFFCB8(v36, v10, _s8MetadataV9CloudItemV6ObjectVMa_2);
          if (sub_226D6D3FC())
          {
            sub_226BFFD20(v13, _s8MetadataV9CloudItemV6ObjectVMa_2);
            sub_226BFFDCC(v10, v13, _s8MetadataV9CloudItemV6ObjectVMa_2);
          }

          else
          {
            sub_226BFFD20(v10, _s8MetadataV9CloudItemV6ObjectVMa_2);
          }

          v36 += v37;
          --v33;
        }

        while (v33);
      }

      sub_226BFFDCC(v13, v7, _s8MetadataV9CloudItemV6ObjectVMa_2);
      sub_226BFFDCC(v50, &v7[*(v35 + 20)], _s8MetadataV9CloudItemV6ObjectVMa_2);
      *&v7[*(v35 + 24)] = v41;
      v38 = v43;
      sub_226BFFDCC(v7, v43, _s8MetadataV9CloudItemVMa_2);
      (*(v46 + 56))(v38, 0, 2, v35);
      v27 = v44;
    }

    else
    {

      v38 = v43;
      (*(v46 + 56))(v43, 2, 2, v47);
      v34 = v48;
    }

    v39 = sub_226D6B49C();
    (*(*(v39 - 8) + 16))(v34, v42, v39);
    v40 = _s8MetadataVMa_2(0);
    sub_226BFFDCC(v38, v34 + *(v40 + 20), _s8MetadataV15CloudItemStatusOMa_2);
    return sub_226BFFDCC(v27, v34 + *(v40 + 24), _s8MetadataV15LocalItemStatusOMa_2);
  }

  return result;
}

void *sub_226BFD5F0@<X0>(char *a3@<X8>)
{
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_226D6D4AC();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D68F4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  result = sub_226D6745C();
  if (!v3)
  {
    v15 = v31;
    v29 = 0;
    if (result)
    {
      v16 = result;
      v28 = [result objectID];
      sub_226D6749C();
      sub_226D68F2C();
      (*(v11 + 8))(v13, v10);
      v17 = [v16 isMarkedAsComplete];
      v18 = v16;
      v19 = [v16 isMarkedAsCompleteModificationDate];
      if (v19)
      {
        v20 = v6;
        v21 = v19;
        sub_226D6D45C();

        v22 = 0;
        v23 = v15;
      }

      else
      {
        v22 = 1;
        v23 = v15;
        v20 = v6;
      }

      v25 = v30;
      (*(v30 + 56))(v20, v22, 1, v7);
      *v23 = v28;
      v26 = _s8MetadataV9LocalItemVMa_2(0);
      (*(v25 + 32))(&v23[v26[5]], v9, v7);
      v23[v26[6]] = v17;
      sub_226B72784(v20, &v23[v26[7]]);
      return (*(*(v26 - 1) + 56))(v23, 0, 2, v26);
    }

    else
    {
      v24 = _s8MetadataV9LocalItemVMa_2(0);
      return (*(*(v24 - 8) + 56))(v15, 2, 2, v24);
    }
  }

  return result;
}

uint64_t sub_226BFD944()
{
  v1 = _s9OperationOMa_0(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226BFFCB8(v0, v3, _s9OperationOMa_0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_226BFFD20(v3, _s9OperationOMa_0);
        return 3;
      }

      else
      {
        sub_226BFFD20(v3, _s9OperationOMa_0);
        return 4;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_226BFFD20(v3, _s9OperationOMa_0);
      return 2;
    }

    else
    {
      sub_226BFFD20(v3, _s9OperationOMa_0);
      return 1;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_226BFFD20(v3, _s9OperationOMa_0);
      return 5;
    }

    else
    {
      sub_226BFFD20(v3, _s9OperationOMa_0);
      return 6;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    sub_226BFFD20(v3, _s9OperationOMa_0);
    return 7;
  }

  else if (EnumCaseMultiPayload == 7)
  {

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8);
    sub_226AC47B0(v3 + *(v5 + 64), &qword_27D7A8BE0, &unk_226D718F0);
    return 8;
  }

  else
  {

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8);
    sub_226AC47B0(v3 + *(v7 + 64), &qword_27D7A8BE0, &unk_226D718F0);
    return 9;
  }
}

void sub_226BFDBD4(void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v5 = [a2 changedObjectID];
  type metadata accessor for OrderMappingModel.Change(0);
  v6 = sub_226D6EC3C();

  if (v6)
  {
    sub_226BFBA68(a2, a3);
  }

  else
  {
    __break(1u);
  }
}

id sub_226BFDCC4(uint64_t a1, void *a2)
{
  sub_226C02404(a2);
  if (!v2)
  {
    return [a2 refreshAllObjects];
  }

  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v5 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v5;
  v6 = sub_226BFD944();
  v7 = sub_226BFFB08(v2);
  sub_226BA2504(v6, v7);

  return swift_willThrow();
}

uint64_t sub_226BFDDFC(uint64_t a1, uint64_t a2)
{
  result = sub_226C0060C(&qword_27D7A7F80, a2, type metadata accessor for OrderMappingModel, &unk_226D770A4);
  *(a1 + 8) = result;
  return result;
}

char *sub_226BFDE54(uint64_t a1)
{
  v242 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  MEMORY[0x28223BE20](v242);
  v227 = &v215 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsMarkedAsCompleteEntryVMa = _s8MetadataV23IsMarkedAsCompleteEntryVMa(0);
  MEMORY[0x28223BE20](IsMarkedAsCompleteEntryVMa);
  v237 = &v215 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v225 = &v215 - v5;
  MEMORY[0x28223BE20](v6);
  v224 = &v215 - v7;
  MEMORY[0x28223BE20](v8);
  v239 = &v215 - v9;
  v230 = sub_226D67C7C();
  v229 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v228 = &v215 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F90, &qword_226D770F8);
  MEMORY[0x28223BE20](v11 - 8);
  v220 = &v215 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v221 = (&v215 - v14);
  v256 = _s8MetadataV9LocalItemVMa_2(0);
  v254 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v241 = (&v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v240 = (&v215 - v17);
  v246 = _s9OperationOMa_0(0);
  v18 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v20 = (&v215 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v223 = (&v215 - v22);
  MEMORY[0x28223BE20](v23);
  v236 = (&v215 - v24);
  MEMORY[0x28223BE20](v25);
  v233 = (&v215 - v26);
  MEMORY[0x28223BE20](v27);
  v232 = (&v215 - v28);
  MEMORY[0x28223BE20](v29);
  v226 = (&v215 - v30);
  MEMORY[0x28223BE20](v31);
  v222 = (&v215 - v32);
  MEMORY[0x28223BE20](v33);
  v219 = &v215 - v34;
  MEMORY[0x28223BE20](v35);
  v218 = &v215 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v215 - v38;
  v40 = _s8MetadataV15LocalItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v40 - 8);
  v234 = &v215 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v251 = &v215 - v43;
  MEMORY[0x28223BE20](v44);
  v249 = &v215 - v45;
  MEMORY[0x28223BE20](v46);
  v247 = &v215 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v215 - v49;
  v51 = _s8MetadataV15CloudItemStatusOMa_2(0);
  MEMORY[0x28223BE20](v51 - 8);
  v250 = &v215 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v243 = &v215 - v54;
  MEMORY[0x28223BE20](v55);
  v231 = &v215 - v56;
  MEMORY[0x28223BE20](v57);
  v248 = &v215 - v58;
  MEMORY[0x28223BE20](v59);
  v61 = &v215 - v60;
  MEMORY[0x28223BE20](v62);
  v64 = &v215 - v63;
  v65 = _s8MetadataV9CloudItemVMa_2(0);
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v245 = &v215 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v235 = &v215 - v69;
  MEMORY[0x28223BE20](v70);
  v244 = &v215 - v71;
  MEMORY[0x28223BE20](v72);
  v74 = &v215 - v73;
  v261 = MEMORY[0x277D84F90];
  v253 = _s8MetadataVMa_2(0);
  v259 = *(v253 + 20);
  sub_226BFFCB8(a1 + v259, v64, _s8MetadataV15CloudItemStatusOMa_2);
  v75 = *(v66 + 48);
  v252 = v66 + 48;
  v258 = v75;
  if (v75(v64, 2, v65))
  {
    v76 = v65;
    v77 = _s8MetadataV15CloudItemStatusOMa_2;
    v78 = v64;
LABEL_7:
    sub_226BFFD20(v78, v77);
    v255 = MEMORY[0x277D84F90];
    v83 = v254;
    v84 = v251;
    v82 = v247;
    goto LABEL_8;
  }

  v217 = v39;
  sub_226BFFDCC(v64, v74, _s8MetadataV9CloudItemVMa_2);
  v76 = v65;
  v79 = &v74[*(v65 + 20)];
  if ((sub_226D6D40C() & 1) == 0)
  {
    v77 = _s8MetadataV9CloudItemVMa_2;
    v78 = v74;
    goto LABEL_7;
  }

  v80 = *(v253 + 24);
  (*(v254 + 56))(v50, 1, 2, v256);
  v216 = a1;
  v81 = sub_226D35AE4(a1 + v80, v50);
  sub_226BFFD20(v50, _s8MetadataV15LocalItemStatusOMa_2);
  v82 = v247;
  if (v81)
  {
    sub_226BFFD20(v74, _s8MetadataV9CloudItemVMa_2);
    v255 = MEMORY[0x277D84F90];
    a1 = v216;
    v83 = v254;
    v84 = v251;
  }

  else
  {
    v138 = v242[6];
    v139 = *&v79[v138];
    v140 = *&v74[v138];
    v141 = v217;
    *v217 = v139;
    v141[1] = v140;
    swift_storeEnumTagMultiPayload();
    v142 = v139;
    v143 = v140;
    v144 = sub_226BBB744(0, 1, 1, MEMORY[0x277D84F90]);
    v146 = v144[2];
    v145 = v144[3];
    v255 = v144;
    v84 = v251;
    if (v146 >= v145 >> 1)
    {
      v255 = sub_226BBB744((v145 > 1), v146 + 1, 1, v255);
    }

    v83 = v254;
    sub_226BFFD20(v74, _s8MetadataV9CloudItemVMa_2);
    v147 = v255;
    v255[2] = v146 + 1;
    sub_226BFFDCC(v217, &v147[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v146], _s9OperationOMa_0);
    v261 = v147;
    a1 = v216;
  }

LABEL_8:
  sub_226BFFCB8(a1 + v259, v61, _s8MetadataV15CloudItemStatusOMa_2);
  v85 = v258(v61, 2, v76);
  v86 = v253;
  v257 = v76;
  if (v85)
  {
    v87 = _s8MetadataV15CloudItemStatusOMa_2;
    v88 = v61;
LABEL_12:
    sub_226BFFD20(v88, v87);
    goto LABEL_13;
  }

  v89 = v244;
  sub_226BFFDCC(v61, v244, _s8MetadataV9CloudItemVMa_2);
  sub_226BFFCB8(a1 + *(v86 + 24), v82, _s8MetadataV15LocalItemStatusOMa_2);
  if ((*(v83 + 48))(v82, 2, v256))
  {
    sub_226BFFD20(v89, _s8MetadataV9CloudItemVMa_2);
    v87 = _s8MetadataV15LocalItemStatusOMa_2;
    v88 = v82;
    goto LABEL_12;
  }

  v103 = v240;
  sub_226BFFDCC(v82, v240, _s8MetadataV9LocalItemVMa_2);
  sub_226D6D4AC();
  sub_226C0060C(&qword_27D7A6C38, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  if (sub_226D6E35C())
  {
    v104 = IsMarkedAsCompleteEntryVMa;
  }

  else
  {
    if (sub_226D6D3FC())
    {
      v148 = *(v89 + *(v257 + 20) + v242[6]);
      v149 = *v103;
      v150 = v221;
      *v221 = v148;
      *(v150 + 8) = v149;
      v151 = v246;
      swift_storeEnumTagMultiPayload();
      (*(v18 + 56))(v150, 0, 1, v151);
      v152 = v148;
      v153 = v149;
      v104 = IsMarkedAsCompleteEntryVMa;
      v154 = v220;
    }

    else
    {
      v159 = v228;
      sub_226D67C5C();
      v160 = v242;
      v161 = *(v89 + v242[9]);
      v162 = v89;
      v163 = sub_226D67C6C();
      (*(v229 + 8))(v159, v230);
      v164 = v161 <= v163;
      v150 = v221;
      v154 = v220;
      if (v164)
      {
        v165 = *v240;
        v166 = *(v162 + v160[6]);
        *v221 = *v240;
        *(v150 + 8) = v166;
        v151 = v246;
        swift_storeEnumTagMultiPayload();
        (*(v18 + 56))(v150, 0, 1, v151);
        v167 = v165;
        v168 = v166;
      }

      else
      {
        v151 = v246;
        (*(v18 + 56))(v221, 1, 1, v246);
      }

      v104 = IsMarkedAsCompleteEntryVMa;
    }

    sub_226AC40E8(v150, v154, &qword_27D7A7F90, &qword_226D770F8);
    if ((*(v18 + 48))(v154, 1, v151) == 1)
    {
      sub_226AC47B0(v150, &qword_27D7A7F90, &qword_226D770F8);
      sub_226AC47B0(v154, &qword_27D7A7F90, &qword_226D770F8);
    }

    else
    {
      v169 = v218;
      sub_226BFFDCC(v154, v218, _s9OperationOMa_0);
      v170 = v219;
      sub_226BFFCB8(v169, v219, _s9OperationOMa_0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v255 = sub_226BBB744(0, v255[2] + 1, 1, v255);
      }

      v172 = v255[2];
      v171 = v255[3];
      if (v172 >= v171 >> 1)
      {
        v255 = sub_226BBB744((v171 > 1), v172 + 1, 1, v255);
      }

      sub_226BFFD20(v169, _s9OperationOMa_0);
      sub_226AC47B0(v150, &qword_27D7A7F90, &qword_226D770F8);
      v173 = v255;
      v255[2] = v172 + 1;
      sub_226BFFDCC(v170, &v173[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v172], _s9OperationOMa_0);
      v261 = v173;
    }
  }

  v174 = *(v256 + 28);
  v175 = v240;
  v176 = *(v240 + *(v256 + 24));
  v177 = v224;
  sub_226AC40E8(v240 + v174, &v224[*(v104 + 20)], &qword_27D7A8BE0, &unk_226D718F0);
  *v177 = v176;
  v178 = v225;
  sub_226D330D4(v225);
  v179 = sub_226D365C4(v178, v177);
  v180 = (v179 & 1) == 0;
  if (v179)
  {
    v181 = v178;
  }

  else
  {
    v181 = v177;
  }

  if (v180)
  {
    v182 = v178;
  }

  else
  {
    v182 = v177;
  }

  v183 = v175;
  sub_226BFFD20(v181, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  v184 = v182;
  v185 = v239;
  sub_226BFFDCC(v184, v239, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  v186 = v175 + v174;
  v187 = v237;
  sub_226AC40E8(v186, &v237[*(v104 + 20)], &qword_27D7A8BE0, &unk_226D718F0);
  *v187 = v176;
  v188 = sub_226D365C4(v187, v185);
  sub_226BFFD20(v187, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  if (v188)
  {
    v189 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8) + 64);
    v190 = *v183;
    v191 = v222;
    *v222 = *v183;
    *(v191 + 8) = *v185;
    sub_226AC40E8(&v185[*(v104 + 20)], v191 + v189, &qword_27D7A8BE0, &unk_226D718F0);
    swift_storeEnumTagMultiPayload();
    v192 = v190;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v194 = v257;
    v195 = v227;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v255 = sub_226BBB744(0, v255[2] + 1, 1, v255);
    }

    v197 = v255[2];
    v196 = v255[3];
    if (v197 >= v196 >> 1)
    {
      v255 = sub_226BBB744((v196 > 1), v197 + 1, 1, v255);
    }

    v198 = v255;
    v255[2] = v197 + 1;
    sub_226BFFDCC(v191, &v198[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v197], _s9OperationOMa_0);
    v261 = v198;
  }

  else
  {
    v194 = v257;
    v195 = v227;
  }

  v199 = v244;
  sub_226BFFCB8(v244 + *(v194 + 20), v195, _s8MetadataV9CloudItemV6ObjectVMa_2);
  v200 = v242;
  v201 = *(v195 + v242[7]);
  v202 = IsMarkedAsCompleteEntryVMa;
  v203 = v237;
  sub_226AC40E8(v195 + v242[8], &v237[*(IsMarkedAsCompleteEntryVMa + 20)], &qword_27D7A8BE0, &unk_226D718F0);
  *v203 = v201;
  v204 = v239;
  v205 = sub_226D365C4(v203, v239);
  sub_226BFFD20(v203, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  if ((v205 & 1) == 0)
  {
    sub_226BFFD20(v195, _s8MetadataV9CloudItemV6ObjectVMa_2);
    sub_226BFFD20(v204, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
    sub_226BFFD20(v240, _s8MetadataV9LocalItemVMa_2);
    sub_226BFFD20(v199, _s8MetadataV9CloudItemVMa_2);
    v86 = v253;
    v83 = v254;
    v90 = v249;
    v84 = v251;
    goto LABEL_14;
  }

  v206 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8) + 64);
  v207 = v204;
  v208 = *(v195 + v200[6]);
  v209 = v226;
  *v226 = v208;
  *(v209 + 8) = *v207;
  sub_226AC40E8(&v207[*(v202 + 20)], v209 + v206, &qword_27D7A8BE0, &unk_226D718F0);
  swift_storeEnumTagMultiPayload();
  v210 = v208;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v255 = sub_226BBB744(0, v255[2] + 1, 1, v255);
  }

  v83 = v254;
  v212 = v255[2];
  v211 = v255[3];
  if (v212 >= v211 >> 1)
  {
    v255 = sub_226BBB744((v211 > 1), v212 + 1, 1, v255);
  }

  v84 = v251;
  sub_226BFFD20(v195, _s8MetadataV9CloudItemV6ObjectVMa_2);
  sub_226BFFD20(v239, _s8MetadataV23IsMarkedAsCompleteEntryVMa);
  sub_226BFFD20(v240, _s8MetadataV9LocalItemVMa_2);
  sub_226BFFD20(v244, _s8MetadataV9CloudItemVMa_2);
  v213 = v255;
  v255[2] = v212 + 1;
  sub_226BFFDCC(v226, &v213[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v212], _s9OperationOMa_0);
  v261 = v213;
  v86 = v253;
LABEL_13:
  v90 = v249;
LABEL_14:
  v91 = v248;
  sub_226BFFCB8(a1 + v259, v248, _s8MetadataV15CloudItemStatusOMa_2);
  if (!v258(v91, 2, v257))
  {
    sub_226BFFD20(v91, _s8MetadataV15CloudItemStatusOMa_2);
    goto LABEL_31;
  }

  sub_226BFFCB8(a1 + *(v86 + 24), v90, _s8MetadataV15LocalItemStatusOMa_2);
  v92 = v256;
  if (!(*(v83 + 48))(v90, 2, v256))
  {
    v93 = v241;
    sub_226BFFDCC(v90, v241, _s8MetadataV9LocalItemVMa_2);
    v94 = v231;
    sub_226BFFCB8(a1 + v259, v231, _s8MetadataV15CloudItemStatusOMa_2);
    v95 = v258(v94, 2, v257);
    sub_226BFFD20(v94, _s8MetadataV15CloudItemStatusOMa_2);
    v96 = *v93;
    if (v95 == 1)
    {
      *v232 = v96;
      swift_storeEnumTagMultiPayload();
      v97 = v96;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_20;
      }

      goto LABEL_105;
    }

    *v233 = v96;
    swift_storeEnumTagMultiPayload();
    v105 = v96;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v255 = sub_226BBB744(0, v255[2] + 1, 1, v255);
    }

    v83 = v254;
    v107 = v255[2];
    v106 = v255[3];
    if (v107 >= v106 >> 1)
    {
      v255 = sub_226BBB744((v106 > 1), v107 + 1, 1, v255);
    }

    sub_226BFFD20(v241, _s8MetadataV9LocalItemVMa_2);
    v100 = v255;
    v255[2] = v107 + 1;
    v101 = &v100[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v107];
    v102 = &v263;
    goto LABEL_30;
  }

  sub_226BFFD20(v90, _s8MetadataV15LocalItemStatusOMa_2);
  while (1)
  {
    v108 = *(v86 + 24);
    sub_226BFFCB8(a1 + v108, v84, _s8MetadataV15LocalItemStatusOMa_2);
    v109 = *(v83 + 48);
    v110 = v109(v84, 2, v92);
    v111 = v257;
    if (!v110)
    {
      v112 = _s8MetadataV15LocalItemStatusOMa_2;
      goto LABEL_36;
    }

    v84 = v243;
    sub_226BFFCB8(a1 + v259, v243, _s8MetadataV15CloudItemStatusOMa_2);
    if (v258(v84, 2, v111))
    {
      v112 = _s8MetadataV15CloudItemStatusOMa_2;
LABEL_36:
      sub_226BFFD20(v84, v112);
      v113 = v250;
      goto LABEL_37;
    }

    v124 = v235;
    sub_226BFFDCC(v84, v235, _s8MetadataV9CloudItemVMa_2);
    v84 = v234;
    sub_226BFFCB8(a1 + v108, v234, _s8MetadataV15LocalItemStatusOMa_2);
    v125 = v109(v84, 2, v92);
    sub_226BFFD20(v84, _s8MetadataV15LocalItemStatusOMa_2);
    if (v125 == 1)
    {
      v126 = *(v124 + *(v257 + 20) + v242[6]);
      *v236 = v126;
      swift_storeEnumTagMultiPayload();
      v127 = v126;
      v128 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v255 = sub_226BBB744(0, v255[2] + 1, 1, v255);
      }

      v113 = v250;
      v130 = v255[2];
      v129 = v255[3];
      v111 = v257;
      if (v130 >= v129 >> 1)
      {
        v255 = sub_226BBB744((v129 > 1), v130 + 1, 1, v255);
      }

      sub_226BFFD20(v128, _s8MetadataV9CloudItemVMa_2);
      v84 = v255;
      v255[2] = v130 + 1;
      v131 = &v84[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v130];
      v132 = &v264;
    }

    else
    {
      v133 = v228;
      sub_226D67C5C();
      v134 = v242;
      v135 = *(v124 + v242[9]);
      v136 = sub_226D67C6C();
      (*(v229 + 8))(v133, v230);
      v137 = v124;
      if (v135 > v136)
      {
        sub_226BFFD20(v124, _s8MetadataV9CloudItemVMa_2);
        v113 = v250;
        v111 = v257;
        goto LABEL_37;
      }

      v111 = v257;
      v155 = *(v137 + *(v257 + 20) + v134[6]);
      *v223 = v155;
      swift_storeEnumTagMultiPayload();
      v156 = v155;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v255 = sub_226BBB744(0, v255[2] + 1, 1, v255);
      }

      v158 = v255[2];
      v157 = v255[3];
      v113 = v250;
      if (v158 >= v157 >> 1)
      {
        v255 = sub_226BBB744((v157 > 1), v158 + 1, 1, v255);
      }

      sub_226BFFD20(v137, _s8MetadataV9CloudItemVMa_2);
      v84 = v255;
      v255[2] = v158 + 1;
      v131 = &v84[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v158];
      v132 = &v255;
    }

    sub_226BFFDCC(*(v132 - 32), v131, _s9OperationOMa_0);
    v261 = v84;
LABEL_37:
    sub_226BFFCB8(a1 + v259, v113, _s8MetadataV15CloudItemStatusOMa_2);
    if (v258(v113, 2, v111))
    {
      v114 = _s8MetadataV15CloudItemStatusOMa_2;
      v115 = v113;
      goto LABEL_103;
    }

    sub_226BFFDCC(v113, v245, _s8MetadataV9CloudItemVMa_2);
    v116 = sub_226D334E0();
    v117 = v116;
    if (v116 >> 62)
    {
      v118 = sub_226D6EDFC();
      if (!v118)
      {
LABEL_101:

        v120 = MEMORY[0x277D84F90];
        goto LABEL_102;
      }
    }

    else
    {
      v118 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v118)
      {
        goto LABEL_101;
      }
    }

    v260 = MEMORY[0x277D84F90];
    sub_226AE2228(0, v118 & ~(v118 >> 63), 0);
    if ((v118 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_105:
    v255 = sub_226BBB744(0, v255[2] + 1, 1, v255);
LABEL_20:
    v83 = v254;
    v99 = v255[2];
    v98 = v255[3];
    if (v99 >= v98 >> 1)
    {
      v255 = sub_226BBB744((v98 > 1), v99 + 1, 1, v255);
    }

    sub_226BFFD20(v241, _s8MetadataV9LocalItemVMa_2);
    v100 = v255;
    v255[2] = v99 + 1;
    v101 = &v100[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v99];
    v102 = &v262;
LABEL_30:
    sub_226BFFDCC(*(v102 - 32), v101, _s9OperationOMa_0);
    v261 = v100;
    v86 = v253;
LABEL_31:
    v92 = v256;
  }

  v119 = 0;
  v120 = v260;
  do
  {
    if ((v117 & 0xC000000000000001) != 0)
    {
      v121 = MEMORY[0x22AA8AFD0](v119, v117);
    }

    else
    {
      v121 = *(v117 + 8 * v119 + 32);
    }

    *v20 = v121;
    swift_storeEnumTagMultiPayload();
    v260 = v120;
    v123 = *(v120 + 16);
    v122 = *(v120 + 24);
    if (v123 >= v122 >> 1)
    {
      sub_226AE2228((v122 > 1), v123 + 1, 1);
      v120 = v260;
    }

    ++v119;
    *(v120 + 16) = v123 + 1;
    sub_226BFFDCC(v20, v120 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v123, _s9OperationOMa_0);
  }

  while (v118 != v119);

LABEL_102:
  sub_226CEDF3C(v120);
  v114 = _s8MetadataV9CloudItemVMa_2;
  v115 = v245;
LABEL_103:
  sub_226BFFD20(v115, v114);
  return v261;
}

unint64_t sub_226BFFB08(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6660, &qword_226D74320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D71840;
  *(inited + 32) = 0x6D6F44726F727265;
  *(inited + 40) = 0xEB000000006E6961;
  v2 = sub_226D6D03C();
  v3 = [v2 domain];

  v4 = sub_226D6E39C();
  v6 = v5;

  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 64) = 0x646F43726F727265;
  *(inited + 72) = 0xE900000000000065;
  v7 = sub_226D6D03C();
  [v7 code];

  *(inited + 80) = sub_226D6F1CC();
  *(inited + 88) = v8;
  v9 = sub_226B224FC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6668, &qword_226D71880);
  swift_arrayDestroy();
  return v9;
}

uint64_t type metadata accessor for OrderMappingModel.Change(uint64_t a1)
{
  result = qword_27D7A7FA8;
  if (!qword_27D7A7FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BFFCB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BFFD20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_226BFFD9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_226BFFE34(*(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_226BFFDCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_226BFFE34(uint64_t a1, void *a2)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v58 = sub_226D6D52C();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v63 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_226D6D4AC();
  v52 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D681CC();
  v11 = sub_226D6816C();
  v12 = MEMORY[0x22AA84200](a1);
  [v11 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_226D76640;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 32) = 25705;
  *(v13 + 40) = 0xE200000000000000;
  *(v13 + 56) = v14;
  *(v13 + 64) = 0xD000000000000013;
  *(v13 + 72) = 0x8000000226D81C60;
  *(v13 + 88) = v14;
  *(v13 + 96) = 0x656449726564726FLL;
  *(v13 + 104) = 0xEF7265696669746ELL;
  *(v13 + 120) = v14;
  strcpy((v13 + 128), "schemaVersion");
  *(v13 + 142) = -4864;
  *(v13 + 152) = v14;
  *(v13 + 160) = 0x4464657461647075;
  *(v13 + 168) = 0xEB00000000657461;
  *(v13 + 184) = v14;
  *(v13 + 192) = 0xD000000000000012;
  *(v13 + 200) = 0x8000000226D83150;
  *(v13 + 248) = v14;
  *(v13 + 216) = v14;
  *(v13 + 224) = 0xD000000000000022;
  *(v13 + 232) = 0x8000000226D83170;
  v15 = sub_226D6E5CC();

  [v11 setPropertiesToFetch_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_226D71F20;
  v17 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v18 = sub_226D6E36C();
  v19 = [v17 initWithKey:v18 ascending:0];

  *(v16 + 32) = v19;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v20 = sub_226D6E5CC();

  [v11 setSortDescriptors_];

  v21 = v62;
  v22 = sub_226D6EBBC();
  if (v21)
  {

    return v19;
  }

  v23 = v60;
  v54 = v8;
  v55 = v10;
  v24 = v22;
  if (v22 >> 62)
  {
    v25 = sub_226D6EDFC();
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v25)
  {

    return MEMORY[0x277D84F90];
  }

  v46 = 0;
  v47 = v11;
  v64 = MEMORY[0x277D84F90];
  result = sub_226AE27F0(0, v25 & ~(v25 >> 63), 0);
  v53 = v25;
  if ((v25 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v28 = v24;
    v29 = v24 & 0xC000000000000001;
    v19 = v64;
    v50 = (v52 + 56);
    v51 = v29;
    v48 = (v23 + 32);
    v49 = (v52 + 32);
    v52 = v28;
    v30 = v54;
    do
    {
      v62 = v19;
      if (v51)
      {
        v31 = MEMORY[0x22AA8AFD0](v27);
      }

      else
      {
        v31 = *(v28 + 8 * v27 + 32);
      }

      v32 = v31;
      v61 = [v31 objectID];
      v33 = [v32 updatedDate];
      sub_226D6D45C();

      v34 = [v32 id];
      sub_226D6D4FC();

      LODWORD(v60) = [v32 isMarkedAsComplete];
      v35 = [v32 isMarkedAsCompleteModificationDate];
      if (v35)
      {
        v36 = v35;
        sub_226D6D45C();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = v5;
      v39 = *v50;
      v40 = v57;
      (*v50)(v38, v37, 1, v57);
      v41 = [v32 schemaVersion];

      v42 = v30[8];
      v43 = v55;
      v39(&v55[v42], 1, 1, v40);
      *(v43 + v30[6]) = v61;
      (*v49)(v43, v59, v40);
      (*v48)(v43 + v30[5], v63, v58);
      *(v43 + v30[7]) = v60;
      sub_226B3E298(v38, v43 + v42);
      *(v43 + v30[9]) = v41;
      v19 = v62;
      v64 = v62;
      v45 = v62[2];
      v44 = v62[3];
      v5 = v38;
      if (v45 >= v44 >> 1)
      {
        sub_226AE27F0((v44 > 1), v45 + 1, 1);
        v43 = v55;
        v19 = v64;
      }

      ++v27;
      v19[2] = v45 + 1;
      sub_226BFFDCC(v43, v19 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v45, _s8MetadataV9CloudItemV6ObjectVMa_2);
      v28 = v52;
    }

    while (v53 != v27);

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_226C0060C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_226C006D4(uint64_t a1)
{
  sub_226C00770(319);
  if (v1 <= 0x3F)
  {
    sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226C00770(uint64_t a1)
{
  if (!qword_27D7A7FB8)
  {
    v2 = sub_226D6B49C();
    v3 = sub_226C0060C(&qword_27D7A7F78, 255, MEMORY[0x277CC7F28], MEMORY[0x277CC7F30]);
    v5 = type metadata accessor for StoreMappingChangeType(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D7A7FB8);
    }
  }
}

uint64_t sub_226C00808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6EB9C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C008CC, 0, 0);
}

uint64_t sub_226C008CC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[5] + 16), *(v0[5] + 40));
  sub_226D6BAAC();
  v6 = sub_226D676AC();
  v0[9] = v6;

  v7 = swift_allocObject();
  v0[10] = v7;
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v6;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);

  v6;
  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_226D6B9BC();
  *v8 = v0;
  v8[1] = sub_226C00A4C;
  v10 = v0[8];
  v11 = v0[2];

  return MEMORY[0x28210EE50](v11, v10, sub_226C00F24, v7, v9);
}

uint64_t sub_226C00A4C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_226C00C4C;
  }

  else
  {
    v5 = sub_226C00BE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226C00BE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C00C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_226C00CB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_226D69F0C();
  v6 = sub_226D69D8C();
  if (v3)
  {
  }

  else
  {
    v16 = v6;
    if (v6)
    {
      sub_226D69D5C();

      return;
    }
  }

  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_27D7A7D10);

  v8 = sub_226D6E05C();
  v9 = sub_226D6E9EC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_226AC4530(a1, a2, &v17);
    _os_log_impl(&dword_226AB4000, v8, v9, "No connected account found for primaryAccountIdentifier: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  v12 = sub_226D6A0DC();
  sub_226BD7738();
  swift_allocError();
  v14 = v13;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000034, 0x8000000226D831D0);
  MEMORY[0x22AA8A510](a1, a2);
  v15 = v18;
  *v14 = v17;
  v14[1] = v15;
  (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277CC7AC0], v12);
  swift_willThrow();
}

unint64_t sub_226C00F44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D71840;
  strcpy((inited + 32), "institutionID");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_226D6E36C();
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = sub_226D6E85C();
  v1 = sub_226B224E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_226C01048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_226C01090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_226C01160(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_226C011C8(uint64_t a1, uint64_t a2)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = sub_226C01454(a1);
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 sharedScheduler];
  v20 = v3;
  v8 = sub_226D6E36C();
  v9 = [v7 taskRequestForIdentifier_];

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;

      sub_226D6D42C();
      [v11 setScheduleAfter_];
      v12 = [v6 sharedScheduler];
      v21[0] = 0;
      v13 = [v12 updateTaskRequest:v11 error:v21];

      if (v13)
      {
        v14 = v21[0];
      }

      else
      {
        v15 = v21[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](v20, v5);
      MEMORY[0x22AA8A510](0xD00000000000002FLL, 0x8000000226D83360);
      v16 = [v9 description];
      v17 = sub_226D6E39C();
      v19 = v18;

      MEMORY[0x22AA8A510](v17, v19);

      sub_226D6F0AC();
      __break(1u);
    }
  }

  else
  {

    sub_226C016A8(a1);
  }
}

uint64_t sub_226C01454(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD00000000000002DLL;
  v5 = sub_226D66F5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277CC6688])
  {
    return 0xD000000000000030;
  }

  if (v10 == *MEMORY[0x277CC6678])
  {
    return v4;
  }

  if (v10 == *MEMORY[0x277CC6670])
  {
    return 0xD00000000000002CLL;
  }

  if (v10 == *MEMORY[0x277CC6680])
  {
    return v4;
  }

  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000019, 0x8000000226D83270);
  v12[1] = v2;
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

void sub_226C016A8(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = sub_226C01454(a1);
  v4 = v3;
  v5 = objc_opt_self();
  v6 = [v5 sharedScheduler];
  v7 = sub_226D6E36C();
  v8 = [v6 taskRequestForIdentifier_];

  if (v8)
  {

    if (qword_28105F680 != -1)
    {
      swift_once();
    }

    v9 = sub_226D6E07C();
    __swift_project_value_buffer(v9, qword_28105F688);

    v10 = sub_226D6E05C();
    v11 = sub_226D6E9EC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v12 = 136315138;
      v14 = sub_226AC4530(v2, v4, v20);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_226AB4000, v10, v11, "Background task %s already submitted, skipping", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v15 = sub_226C01984(a1);
    sub_226D6D42C();
    [v15 setScheduleAfter_];
    v16 = [v5 sharedScheduler];
    v20[0] = 0;
    v17 = [v16 submitTaskRequest:v15 error:v20];

    if (v17)
    {
      v18 = v20[0];
    }

    else
    {
      v19 = v20[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

id sub_226C01984(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D66F5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C01454(a1);
  v8 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v9 = sub_226D6E36C();

  v10 = [v8 initWithIdentifier_];

  v11 = v10;
  [v11 setPriority_];
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 != *MEMORY[0x277CC6688] && v12 != *MEMORY[0x277CC6678])
  {
    if (v12 != *MEMORY[0x277CC6670] && v12 != *MEMORY[0x277CC6680])
    {
      v16[2] = 0;
      v16[3] = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000019, 0x8000000226D83270);
      v16[1] = v2;
      sub_226D6EFBC();
      result = sub_226D6F0AC();
      __break(1u);
      return result;
    }

    [v11 setRequiresExternalPower_];
  }

  return v11;
}

void sub_226C01C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedScheduler];
  v7 = sub_226C01454(a1);
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = sub_226D6E36C();
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v9;
  v12[4] = &unk_226D77220;
  v12[5] = v10;
  v14[4] = sub_226B173EC;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_226C01160;
  v14[3] = &block_descriptor_16_0;
  v13 = _Block_copy(v14);

  [v6 registerForTaskWithIdentifier:v11 usingQueue:0 launchHandler:v13];
  _Block_release(v13);
}

uint64_t sub_226C01D94(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226AD827C;

  return v4();
}

void sub_226C01E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedScheduler];
  v7 = sub_226C01454(a1);
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = sub_226D6E36C();
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = v9;
  v12[4] = &unk_226D77210;
  v12[5] = v10;
  v14[4] = sub_226C02260;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_226C01160;
  v14[3] = &block_descriptor_12;
  v13 = _Block_copy(v14);

  [v6 registerForTaskWithIdentifier:v11 usingQueue:0 launchHandler:v13];
  _Block_release(v13);
}

uint64_t sub_226C01FFC(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226AD827C;

  return v8(a1, a2);
}

uint64_t sub_226C021B0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226AD827C;

  return sub_226C01FFC(a1, a2, v6);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226C02284()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226C01D94(v2);
}

double sub_226C02324@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_226D6E36C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    sub_226AE59B4(0, &qword_281062C88, 0x277CBEBD0);
    v5 = sub_226D6B5EC();
    v6 = MEMORY[0x277CC7F68];
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_226D6B5FC();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_226C02404(void *a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = _s9OperationOMa_0(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226C05158(v1, v12, _s9OperationOMa_0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v12;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_226C0300C(*v12, a1);
      }

      else
      {
        sub_226C03120(*v12, a1);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_226C029F4(*v12, a1);
    }

    else
    {
      sub_226C028F8(*v12, a1);
    }

    return;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v17 = v12[1];
    if (EnumCaseMultiPayload == 4)
    {
      sub_226C03DE8(*v12, v12[1], a1);
    }

    else
    {
      sub_226C04024(*v12, v12[1], a1);
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v17 = v12[1];
    sub_226C04B10(*v12, v17, a1);
LABEL_24:

    return;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v15 = *(v12 + 8);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8);
    sub_226B72784(v12 + *(v16 + 64), v9);
    sub_226C04D34(v14, v15, v9, a1);
    v6 = v9;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8);
    sub_226B72784(v12 + *(v18 + 64), v6);
    sub_226D681CC();
    v19 = sub_226D6817C();
    if (!v2)
    {
      v20 = v19;
      sub_226D6819C();
      v32[0] = 0;
      if ([a1 save_])
      {
        v21 = qword_28105F620;
        v22 = v32[0];
        if (v21 != -1)
        {
          swift_once();
        }

        v23 = sub_226D6E07C();
        __swift_project_value_buffer(v23, qword_28105F628);
        v24 = v20;
        v25 = sub_226D6E05C();
        v26 = sub_226D6E9AC();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          v29 = [v24 objectID];
          *(v27 + 4) = v29;
          *v28 = v29;
          _os_log_impl(&dword_226AB4000, v25, v26, "Updated isMarkedAsComplete for cloud order: %@", v27, 0xCu);
          sub_226AC47B0(v28, &qword_27D7A5FB0, &qword_226D70870);
          MEMORY[0x22AA8BEE0](v28, -1, -1);
          MEMORY[0x22AA8BEE0](v27, -1, -1);
          v30 = v25;
        }

        else
        {
          v30 = v24;
          v24 = v25;
        }
      }

      else
      {
        v31 = v32[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }

  sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
}

uint64_t _s9OperationOMa_0(uint64_t a1)
{
  result = qword_27D7A7FC0;
  if (!qword_27D7A7FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226C028F8(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  sub_226D681CC();
  v4 = sub_226D6817C();
  if (!v2)
  {
    v5 = v4;
    [a2 deleteObject_];
    v8[0] = 0;
    if ([a2 save_])
    {
      v6 = v8[0];
    }

    else
    {
      v7 = v8[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void *sub_226C029F4(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v44 = sub_226D6B49C();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D4AC();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManagedOrderDeleter.DeleteResult(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D67F1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  v14 = v48;
  result = sub_226D674AC();
  if (!v14)
  {
    v40 = v5;
    v41 = v4;
    v42 = v9;
    v43 = a2;
    v48 = 0;
    v16 = result;
    sub_226D67E6C();
    sub_226D67F0C();
    (*(v11 + 8))(v13, v10);
    v17 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v18 = sub_226D6E36C();

    v19 = [v17 initWithBundleIdentifier_];

    v53[3] = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
    v53[4] = MEMORY[0x277CC85E8];
    v53[0] = v19;
    memset(v54, 0, sizeof(v54));
    memset(v55, 0, sizeof(v55));
    v50 = &type metadata for WidgetRefresher;
    v51 = sub_226B31FA8();
    sub_226AFD680(v49, v54, &qword_27D7A6910, &unk_226D721C0);
    v20 = type metadata accessor for WalletMessageUpdater();
    v21 = swift_allocObject();
    v50 = v20;
    v51 = sub_226C06354(&qword_281062070, type metadata accessor for WalletMessageUpdater, &protocol conformance descriptor for WalletMessageUpdater);
    v49[0] = v21;
    sub_226AFD680(v49, &v54[40], &qword_27D7A6E50, &unk_226D73598);
    v50 = &type metadata for ClassicOrderBiomeStream;
    v51 = &off_283A6D820;
    sub_226C02324(&v52);
    sub_226AFD680(v49, v55, &qword_27D7A6FA0, &qword_226D79780);
    v22 = v45;
    sub_226D6D46C();
    v23 = [v16 orderRegistration];
    if (v23)
    {
      v24 = v23;
      v25 = sub_226D6D3EC();
      [v24 setCancellationDate_];
    }

    v26 = v41;
    sub_226D6740C();
    v27 = v43;
    [v43 deleteObject_];
    v28 = v48;
    v29 = sub_226B5AC68(v16, v27);
    v30 = v16;
    v31 = v42;
    v32 = v44;
    v33 = v40;
    if (v28)
    {

      (*(v47 + 8))(v26, v32);
      (*(v46 + 8))(v22, v33);
    }

    else
    {
      v34 = v29;
      v48 = v30;
      (*(v46 + 8))(v22, v40);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F98, &unk_226D73B60);
      v36 = v26;
      v37 = *(v35 + 48);
      (*(v47 + 32))(v31, v36, v32);
      *(v31 + v37) = v34 & 1;
      v49[0] = 0;
      if (([v27 save_] & 1) == 0)
      {
        v39 = v49[0];
        sub_226D6D04C();

        swift_willThrow();
        sub_226C062F4(v31, type metadata accessor for ManagedOrderDeleter.DeleteResult);
        return sub_226B42BE0(v53);
      }

      v38 = v49[0];
      sub_226B5AF60(v31);

      sub_226C062F4(v31, type metadata accessor for ManagedOrderDeleter.DeleteResult);
    }

    return sub_226B42BE0(v53);
  }

  return result;
}

void sub_226C0300C(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D6751C();
  v4 = sub_226D674AC();
  if (!v2)
  {
    v5 = v4;
    sub_226D681CC();
    v6 = v5;
    v7 = a2;

    v10[0] = 0;
    if ([v7 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226C03120(uint64_t a1, void *a2)
{
  v124 = *MEMORY[0x277D85DE8];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  MEMORY[0x28223BE20](v98);
  v99 = (&v86 - v3);
  v4 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  MEMORY[0x28223BE20](v4 - 8);
  v100 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v86 - v7;
  v9 = sub_226D6D1AC();
  v102 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v101 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v13 = (&v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v86 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v86 - v18;
  sub_226D681CC();
  v20 = v103;
  v21 = sub_226D6817C();
  if (!v20)
  {
    v95 = v9;
    v91 = v16;
    v92 = updated;
    v88 = v13;
    v89 = v8;
    v97 = a2;
    v93 = v19;
    v22 = v21;
    v103 = 0;
    v23 = sub_226B31FA8();
    v24 = type metadata accessor for WalletMessageUpdater();
    v25 = swift_allocObject();
    v26 = sub_226D69BFC();
    v96 = MEMORY[0x22AA85C90]();
    *(&v121 + 1) = &type metadata for ClassicOrderBiomeStream;
    *&v122[0] = &off_283A6D820;
    sub_226C02324(v122 + 8);
    v27 = sub_226D6B5EC();
    v28 = MEMORY[0x277CC7F68];
    v118 = v27;
    v119 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v117);
    sub_226D6B58C();
    v115 = v27;
    v116 = v28;
    __swift_allocate_boxed_opaque_existential_1(&v114);
    sub_226D6B5AC();
    v29 = sub_226D6827C();
    v94 = v29;
    v112 = v24;
    v113 = sub_226C06354(&qword_281062070, type metadata accessor for WalletMessageUpdater, &protocol conformance descriptor for WalletMessageUpdater);
    *&v111 = v25;
    type metadata accessor for ManagedOrderImporter();
    inited = swift_initStackObject();
    *(inited + 312) = 0xD000000000000018;
    *(inited + 320) = 0x8000000226D81BA0;
    sub_226AC484C(&v117, inited + 232);
    sub_226AC484C(&v114, inited + 272);
    v31 = MEMORY[0x277CC7238];
    *(inited + 16) = v29;
    *(inited + 24) = v31;
    *(inited + 72) = v122[4];
    *(inited + 88) = v123;
    *(inited + 96) = &type metadata for WidgetRefresher;
    *(inited + 104) = v23;
    sub_226AC484C(&v111, inited + 112);
    *(inited + 40) = v122[3];
    v32 = v120;
    *(inited + 168) = v121;
    v33 = v122[1];
    *(inited + 184) = v122[0];
    *(inited + 32) = v96;
    v34 = MEMORY[0x277CC79A8];
    *(inited + 200) = v33;
    *(inited + 216) = v122[2];
    *(inited + 56) = v26;
    *(inited + 64) = v34;
    *(inited + 152) = v32;
    v35 = [v22 orderData];
    v36 = sub_226D6D21C();
    v38 = v37;

    v96 = v22;
    v90 = sub_226D6818C();
    sub_226D6727C();
    v39 = [objc_opt_self() defaultManager];
    v40 = [v39 temporaryDirectory];

    v41 = v101;
    sub_226D6D14C();

    *(&v105 + 1) = sub_226D6920C();
    *&v106 = MEMORY[0x277CC77F0];
    __swift_allocate_boxed_opaque_existential_1(&v104);
    sub_226D691FC();
    v42 = v103;
    v43 = sub_226D6724C();
    if (v42)
    {
      sub_226B11B98(v36, v38);
      (*(v102 + 8))(v41, v95);
      __swift_destroy_boxed_opaque_existential_0Tm(&v104);
      v47 = v97;
      v103 = 0;
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v48 = sub_226D6E07C();
      __swift_project_value_buffer(v48, qword_28105F628);
      v49 = v42;
      v50 = sub_226D6E05C();
      v51 = sub_226D6E9DC();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = v42;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_226AB4000, v50, v51, "Unable to insert local order: %@", v52, 0xCu);
        sub_226AC47B0(v53, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v53, -1, -1);
        MEMORY[0x22AA8BEE0](v52, -1, -1);
      }

      [v47 reset];
    }

    else
    {
      v44 = v43;
      (*(v102 + 8))(v41, v95);
      v45 = __swift_destroy_boxed_opaque_existential_0Tm(&v104);
      v103 = &v86;
      MEMORY[0x28223BE20](v45);
      *(&v86 - 6) = inited;
      *(&v86 - 5) = v44;
      *(&v86 - 4) = v36;
      *(&v86 - 3) = v38;
      *(&v86 - 16) = v90 & 1;
      *(&v86 - 15) = 1;
      *(&v86 - 13) = 0;
      *(&v86 - 1) = v97;
      v46 = v91;
      sub_226D6721C();

      sub_226B11B98(v36, v38);
      v56 = v93;
      sub_226C051C0(v46, v93, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      v57 = v56;
      v58 = v88;
      sub_226C05158(v57, v88, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v60 = *v58;
      if (EnumCaseMultiPayload < 2)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
        sub_226AC47B0(v58 + *(v61 + 48), &qword_27D7A7798, &unk_226D75570);
      }

      v110 = 0;
      memset(v109, 0, sizeof(v109));
      v62 = v96;
      [v96 isMarkedAsComplete];
      v63 = [v62 isMarkedAsCompleteModificationDate];
      v64 = v97;
      v65 = v89;
      v87 = inited + 32;
      if (v63)
      {
        v66 = v63;
        sub_226D6D45C();

        v67 = 0;
      }

      else
      {
        v67 = 1;
      }

      v68 = sub_226D6D4AC();
      (*(*(v68 - 8) + 56))(v65, v67, 1, v68);
      sub_226D674BC();
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      sub_226B42C34(v60, v64);
      v103 = 0;
      sub_226AFD62C(&v104);
      sub_226AC47B0(v65, &qword_27D7A8BE0, &unk_226D718F0);
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v69 = sub_226D6E07C();
      __swift_project_value_buffer(v69, qword_28105F628);
      v70 = v60;
      v71 = sub_226D6E05C();
      v72 = sub_226D6E9AC();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        v75 = [v70 objectID];
        *(v73 + 4) = v75;
        *v74 = v75;
        _os_log_impl(&dword_226AB4000, v71, v72, "Inserted local order: %@", v73, 0xCu);
        sub_226AC47B0(v74, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v74, -1, -1);
        MEMORY[0x22AA8BEE0](v73, -1, -1);
      }

      sub_226AC47B0(v109, &qword_27D7A6910, &unk_226D721C0);
      *&v104 = 0;
      if ([v64 save_])
      {
        v76 = qword_281061980;
        v77 = v104;
        v78 = v76 == -1;
        v79 = v93;
        if (!v78)
        {
          swift_once();
        }

        v80 = v98;
        v81 = __swift_project_value_buffer(v98, qword_281064538);
        v82 = v99;
        sub_226AE532C(v81, v99);
        sub_226C05158(v81 + *(v80 + 48), v82 + *(v80 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
        v83 = v82 + *(v80 + 48);
        v84 = v100;
        sub_226C051C0(v83, v100, type metadata accessor for OrderNotificationCenter.Continuation);
        __swift_destroy_boxed_opaque_existential_0Tm(v82);
        sub_226BE7E54(v79, v84);

        sub_226C062F4(v84, type metadata accessor for OrderNotificationCenter.Continuation);
        sub_226C062F4(v93, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      }

      else
      {
        v85 = v104;
        sub_226D6D04C();

        swift_willThrow();
        swift_setDeallocating();
        sub_226AC47B0(v87, &qword_27D7A7790, &unk_226D79770);
        sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
        sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));

        sub_226C062F4(v93, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      }
    }
  }
}

void sub_226C03DE8(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D681CC();
  v5 = sub_226D6817C();
  if (!v3)
  {
    v6 = v5;
    sub_226D6751C();
    v7 = sub_226D674AC();
    sub_226D681AC();
    v10[0] = 0;
    if ([a3 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226C04024(uint64_t a1, void *a2, void *a3)
{
  v89 = a2;
  v105 = *MEMORY[0x277D85DE8];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  MEMORY[0x28223BE20](v86);
  v87 = (&v77 - v4);
  v5 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D1AC();
  v88 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v77 - v15;
  sub_226D6751C();
  v17 = a3;
  v18 = v90;
  v19 = sub_226D674AC();
  if (!v18)
  {
    v83 = v10;
    v84 = v8;
    v81 = updated;
    v82 = v13;
    v79 = v7;
    v80 = v16;
    v85 = v19;
    sub_226D681CC();
    v20 = sub_226D6817C();
    v90 = 0;
    v21 = a3;
    v22 = v20;
    v78 = sub_226B31FA8();
    v23 = type metadata accessor for WalletMessageUpdater();
    v77 = swift_allocObject();
    v24 = sub_226D69BFC();
    v89 = MEMORY[0x22AA85C90]();
    *(&v102 + 1) = &type metadata for ClassicOrderBiomeStream;
    *&v103[0] = &off_283A6D820;
    sub_226C02324(v103 + 8);
    v25 = sub_226D6B5EC();
    v26 = MEMORY[0x277CC7F68];
    v99 = v25;
    v100 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v98);
    sub_226D6B58C();
    v96 = v25;
    v97 = v26;
    __swift_allocate_boxed_opaque_existential_1(&v95);
    sub_226D6B5AC();
    v27 = sub_226D6827C();
    v93 = v23;
    v94 = sub_226C06354(&qword_281062070, type metadata accessor for WalletMessageUpdater, &protocol conformance descriptor for WalletMessageUpdater);
    *&v92 = v77;
    type metadata accessor for ManagedOrderImporter();
    inited = swift_initStackObject();
    *(inited + 312) = 0xD000000000000018;
    *(inited + 320) = 0x8000000226D81BA0;
    sub_226AC484C(&v98, inited + 232);
    sub_226AC484C(&v95, inited + 272);
    v29 = MEMORY[0x277CC7238];
    *(inited + 16) = v27;
    *(inited + 24) = v29;
    *(inited + 72) = v103[4];
    *(inited + 88) = v104;
    *(inited + 96) = &type metadata for WidgetRefresher;
    *(inited + 104) = v78;
    sub_226AC484C(&v92, inited + 112);
    v30 = v103[2];
    *(inited + 40) = v103[3];
    v31 = v101;
    *(inited + 168) = v102;
    v32 = v103[1];
    *(inited + 184) = v103[0];
    *(inited + 200) = v32;
    *(inited + 32) = v89;
    v33 = MEMORY[0x277CC79A8];
    *(inited + 216) = v30;
    *(inited + 56) = v24;
    *(inited + 64) = v33;
    *(inited + 152) = v31;
    v34 = [v22 orderData];
    v35 = sub_226D6D21C();
    v37 = v36;

    v89 = v22;
    v38 = v37;
    LODWORD(v77) = sub_226D6818C();
    v78 = sub_226D6727C();
    v39 = [objc_opt_self() defaultManager];
    v40 = [v39 temporaryDirectory];

    v41 = v83;
    sub_226D6D14C();

    v91[3] = sub_226D6920C();
    v91[4] = MEMORY[0x277CC77F0];
    __swift_allocate_boxed_opaque_existential_1(v91);
    sub_226D691FC();
    v42 = v90;
    v43 = sub_226D6724C();
    if (v42)
    {
      sub_226B11B98(v35, v38);
      (v88[1])(v41, v84);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v51 = sub_226D6E07C();
      __swift_project_value_buffer(v51, qword_28105F628);
      v52 = v42;
      v53 = sub_226D6E05C();
      v54 = sub_226D6E9DC();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        v57 = v42;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v58;
        *v56 = v58;
        _os_log_impl(&dword_226AB4000, v53, v54, "Unable to update order: %@", v55, 0xCu);
        sub_226AC47B0(v56, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v56, -1, -1);
        MEMORY[0x22AA8BEE0](v55, -1, -1);
      }

      [v21 reset];
    }

    else
    {
      v44 = v43;
      (v88[1])(v41, v84);
      v45 = __swift_destroy_boxed_opaque_existential_0Tm(v91);
      v88 = &v77;
      MEMORY[0x28223BE20](v45);
      v46 = v85;
      *(&v77 - 8) = inited;
      *(&v77 - 7) = v46;
      *(&v77 - 6) = v44;
      *(&v77 - 5) = v35;
      v47 = v17;
      v48 = v35;
      v49 = v38;
      *(&v77 - 4) = v38;
      *(&v77 - 24) = v77 & 1;
      *(&v77 - 23) = 1;
      *(&v77 - 21) = 0;
      *(&v77 - 2) = v17;
      v50 = v82;
      sub_226D6721C();
      v90 = 0;

      sub_226B11B98(v48, v49);
      v59 = v80;
      sub_226C051C0(v50, v80, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      v91[0] = 0;
      if ([v47 save_])
      {
        v60 = qword_281061980;
        v61 = v91[0];
        if (v60 != -1)
        {
          swift_once();
        }

        v62 = v86;
        v63 = __swift_project_value_buffer(v86, qword_281064538);
        v64 = v87;
        sub_226AE532C(v63, v87);
        sub_226C05158(v63 + *(v62 + 48), v64 + *(v62 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
        v65 = v64 + *(v62 + 48);
        v66 = v79;
        sub_226C051C0(v65, v79, type metadata accessor for OrderNotificationCenter.Continuation);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        v67 = v59;
        sub_226BE7E54(v59, v66);
        sub_226C062F4(v66, type metadata accessor for OrderNotificationCenter.Continuation);
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v68 = sub_226D6E07C();
        __swift_project_value_buffer(v68, qword_28105F628);
        v69 = v85;
        v70 = sub_226D6E05C();
        v71 = sub_226D6E9AC();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v72 = 138412290;
          v74 = [v69 objectID];
          *(v72 + 4) = v74;
          *v73 = v74;
          _os_log_impl(&dword_226AB4000, v70, v71, "Updated order: %@ with cloud order", v72, 0xCu);
          sub_226AC47B0(v73, &qword_27D7A5FB0, &qword_226D70870);
          MEMORY[0x22AA8BEE0](v73, -1, -1);
          MEMORY[0x22AA8BEE0](v72, -1, -1);
          v75 = v69;
        }

        else
        {
          v75 = v70;
          v70 = v69;
        }

        sub_226C062F4(v67, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      }

      else
      {
        v76 = v91[0];
        sub_226D6D04C();

        swift_willThrow();
        swift_setDeallocating();
        sub_226AC47B0(inited + 32, &qword_27D7A7790, &unk_226D79770);
        sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
        sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));

        sub_226C062F4(v59, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      }
    }
  }
}

void sub_226C04B10(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D681CC();
  v5 = sub_226D6817C();
  if (!v3)
  {
    v6 = v5;
    v7 = sub_226D6817C();
    sub_226D681BC();
    v10[0] = 0;
    if ([a3 save_])
    {
      v8 = v10[0];
    }

    else
    {
      v9 = v10[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

void sub_226C04D34(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = sub_226D6714C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6751C();
  v10 = sub_226D674AC();
  if (!v4)
  {
    v11 = v10;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_226D674BC();
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    sub_226B42C34(v11, a4);
    sub_226AFD62C(&v24);
    *&v24 = 0;
    v12 = [a4 save_];
    v13 = v24;
    if (v12)
    {
      sub_226AC40E8(v29, &v24, &qword_27D7A6910, &unk_226D721C0);
      if (*(&v25 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
        (*(v7 + 104))(v9, *MEMORY[0x277CC6B48], v6);
        v14 = v13;
        sub_226D680BC();
        (*(v7 + 8))(v9, v6);
        __swift_destroy_boxed_opaque_existential_0Tm(&v24);
      }

      else
      {
        v16 = v13;
        sub_226AC47B0(&v24, &qword_27D7A6910, &unk_226D721C0);
      }

      if (qword_28105F620 != -1)
      {
        swift_once();
      }

      v17 = sub_226D6E07C();
      __swift_project_value_buffer(v17, qword_28105F628);
      v18 = v11;
      v19 = sub_226D6E05C();
      v20 = sub_226D6E9AC();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = [v18 objectID];
        *(v21 + 4) = v23;
        *v22 = v23;
        _os_log_impl(&dword_226AB4000, v19, v20, "Updated isMarkedAsComplete for local order: %@", v21, 0xCu);
        sub_226AC47B0(v22, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v22, -1, -1);
        MEMORY[0x22AA8BEE0](v21, -1, -1);
      }

      sub_226AC47B0(v29, &qword_27D7A6910, &unk_226D721C0);
    }

    else
    {
      v15 = v24;
      sub_226D6D04C();

      swift_willThrow();
      sub_226AC47B0(v29, &qword_27D7A6910, &unk_226D721C0);
    }
  }
}

uint64_t sub_226C05158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C051C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_226C05228@<X0>(void *a1@<X8>)
{
  if (*(v1 + 59))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 58))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 57))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_226BBEF5C(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v4 | *(v1 + 56) | v3 | v2, *(v1 + 64), a1);
}

void sub_226C05290(uint64_t a1)
{
  sub_226AE59B4(319, &qword_27D7A6370, 0x277CBE448);
  if (v1 <= 0x3F)
  {
    sub_226B76634(319, &qword_27D7A7FD0);
    if (v2 <= 0x3F)
    {
      sub_226B76634(319, &qword_27D7A7FD8);
      if (v3 <= 0x3F)
      {
        sub_226B7668C(319, &qword_27D7A7FE0, " fromLocalOrderID ");
        if (v4 <= 0x3F)
        {
          sub_226B7668C(319, &qword_27D7A7FE8, " fromCloudOrderID ");
          if (v5 <= 0x3F)
          {
            sub_226B7668C(319, &qword_27D7A7FF0, " otherCloudOrderID ");
            if (v6 <= 0x3F)
            {
              sub_226C053B8(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_226C053B8(uint64_t a1)
{
  if (!qword_27D7A7FF8)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8BE0, &unk_226D718F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D7A7FF8);
    }
  }
}

uint64_t sub_226C05450(uint64_t a1, uint64_t a2)
{
  v136 = a1;
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v126 = v3;
  v127 = v4;
  MEMORY[0x28223BE20](v3);
  v122 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C30, &unk_226D74330);
  MEMORY[0x28223BE20](v125);
  v124 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v123 = &v119 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v9 - 8);
  v121 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v131 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v129 = &v119 - v14;
  MEMORY[0x28223BE20](v15);
  v120 = &v119 - v16;
  MEMORY[0x28223BE20](v17);
  v130 = &v119 - v18;
  MEMORY[0x28223BE20](v19);
  v128 = &v119 - v20;
  v21 = _s9OperationOMa_0(0);
  MEMORY[0x28223BE20](v21);
  v135 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v134 = &v119 - v24;
  MEMORY[0x28223BE20](v25);
  v133 = &v119 - v26;
  MEMORY[0x28223BE20](v27);
  v132 = &v119 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = (&v119 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = (&v119 - v33);
  MEMORY[0x28223BE20](v35);
  v37 = (&v119 - v36);
  MEMORY[0x28223BE20](v38);
  v40 = (&v119 - v39);
  MEMORY[0x28223BE20](v41);
  v43 = (&v119 - v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8000, &unk_226D77260);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v119 - v45;
  v48 = (&v119 + *(v47 + 56) - v45);
  sub_226C05158(v136, &v119 - v45, _s9OperationOMa_0);
  v49 = a2;
  v50 = v48;
  sub_226C05158(v49, v48, _s9OperationOMa_0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v52 = v48;
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v53 = v46;
          v54 = v134;
          sub_226C05158(v46, v134, _s9OperationOMa_0);
          v55 = *v54;
          v56 = *(v54 + 8);
          v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8) + 64);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            v58 = *v50;
            v59 = *(v50 + 8);
            v60 = v54 + v57;
            v61 = v55;
            v62 = v128;
            sub_226B72784(v60, v128);
            v63 = v52 + v57;
            v64 = v130;
            sub_226B72784(v63, v130);
            sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
            v65 = sub_226D6EC3C();

            if ((v65 & 1) == 0 || v56 != v59)
            {
              sub_226AC47B0(v64, &qword_27D7A8BE0, &unk_226D718F0);
              v66 = v62;
              v67 = &qword_27D7A8BE0;
              v68 = &unk_226D718F0;
LABEL_9:
              sub_226AC47B0(v66, v67, v68);
LABEL_10:
              sub_226C062F4(v53, _s9OperationOMa_0);
LABEL_41:
              v75 = 0;
              return v75 & 1;
            }

            v98 = *(v125 + 48);
            v99 = v123;
            sub_226AC40E8(v62, v123, &qword_27D7A8BE0, &unk_226D718F0);
            sub_226AC40E8(v64, v99 + v98, &qword_27D7A8BE0, &unk_226D718F0);
            v100 = v126;
            v101 = *(v127 + 48);
            if (v101(v99, 1, v126) == 1)
            {
              sub_226AC47B0(v64, &qword_27D7A8BE0, &unk_226D718F0);
              sub_226AC47B0(v62, &qword_27D7A8BE0, &unk_226D718F0);
              if (v101(v99 + v98, 1, v100) == 1)
              {
                sub_226AC47B0(v99, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_56:
                v113 = v53;
LABEL_59:
                sub_226C062F4(v113, _s9OperationOMa_0);
                v75 = 1;
                return v75 & 1;
              }
            }

            else
            {
              v106 = v120;
              sub_226AC40E8(v99, v120, &qword_27D7A8BE0, &unk_226D718F0);
              if (v101(v99 + v98, 1, v100) != 1)
              {
                v108 = v127;
                v109 = v99 + v98;
                v110 = v122;
                (*(v127 + 32))(v122, v109, v100);
                sub_226C06354(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
                v111 = sub_226D6E35C();
                v112 = *(v108 + 8);
                v112(v110, v100);
                sub_226AC47B0(v130, &qword_27D7A8BE0, &unk_226D718F0);
                sub_226AC47B0(v62, &qword_27D7A8BE0, &unk_226D718F0);
                v112(v106, v100);
                sub_226AC47B0(v99, &qword_27D7A8BE0, &unk_226D718F0);
                if ((v111 & 1) == 0)
                {
                  goto LABEL_10;
                }

                goto LABEL_56;
              }

              sub_226AC47B0(v130, &qword_27D7A8BE0, &unk_226D718F0);
              sub_226AC47B0(v62, &qword_27D7A8BE0, &unk_226D718F0);
              (*(v127 + 8))(v106, v100);
            }

            v67 = &qword_27D7A6C30;
            v68 = &unk_226D74330;
            v66 = v99;
            goto LABEL_9;
          }

          sub_226AC47B0(v54 + v57, &qword_27D7A8BE0, &unk_226D718F0);
          v46 = v53;
LABEL_40:

          sub_226AC47B0(v46, &qword_27D7A8000, &unk_226D77260);
          goto LABEL_41;
        }

        v71 = v46;
        v82 = v135;
        sub_226C05158(v46, v135, _s9OperationOMa_0);
        v55 = *v82;
        v83 = *(v82 + 8);
        v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7F88, &unk_226D770E8) + 64);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          sub_226AC47B0(v82 + v84, &qword_27D7A8BE0, &unk_226D718F0);
          v46 = v71;
          goto LABEL_40;
        }

        v85 = *v50;
        v86 = *(v50 + 8);
        v87 = v82 + v84;
        v88 = v55;
        v89 = v129;
        sub_226B72784(v87, v129);
        v90 = v52 + v84;
        v91 = v131;
        sub_226B72784(v90, v131);
        sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
        v92 = sub_226D6EC3C();

        if ((v92 & 1) == 0 || v83 != v86)
        {
          sub_226AC47B0(v91, &qword_27D7A8BE0, &unk_226D718F0);
          v93 = v89;
          v94 = &qword_27D7A8BE0;
          v95 = &unk_226D718F0;
LABEL_33:
          sub_226AC47B0(v93, v94, v95);
          goto LABEL_34;
        }

        v102 = v124;
        v103 = *(v125 + 48);
        sub_226AC40E8(v89, v124, &qword_27D7A8BE0, &unk_226D718F0);
        sub_226AC40E8(v91, v102 + v103, &qword_27D7A8BE0, &unk_226D718F0);
        v104 = v126;
        v105 = *(v127 + 48);
        if (v105(v102, 1, v126) == 1)
        {
          sub_226AC47B0(v91, &qword_27D7A8BE0, &unk_226D718F0);
          sub_226AC47B0(v89, &qword_27D7A8BE0, &unk_226D718F0);
          if (v105(v102 + v103, 1, v104) == 1)
          {
            sub_226AC47B0(v102, &qword_27D7A8BE0, &unk_226D718F0);
            goto LABEL_58;
          }
        }

        else
        {
          v107 = v121;
          sub_226AC40E8(v102, v121, &qword_27D7A8BE0, &unk_226D718F0);
          if (v105(v102 + v103, 1, v104) != 1)
          {
            v114 = v127;
            v115 = v102 + v103;
            v116 = v122;
            (*(v127 + 32))(v122, v115, v104);
            sub_226C06354(&qword_27D7A6C38, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
            v117 = sub_226D6E35C();
            v118 = *(v114 + 8);
            v118(v116, v104);
            sub_226AC47B0(v131, &qword_27D7A8BE0, &unk_226D718F0);
            sub_226AC47B0(v89, &qword_27D7A8BE0, &unk_226D718F0);
            v118(v107, v104);
            sub_226AC47B0(v102, &qword_27D7A8BE0, &unk_226D718F0);
            if ((v117 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_58:
            v113 = v71;
            goto LABEL_59;
          }

          sub_226AC47B0(v131, &qword_27D7A8BE0, &unk_226D718F0);
          sub_226AC47B0(v89, &qword_27D7A8BE0, &unk_226D718F0);
          (*(v127 + 8))(v107, v104);
        }

        v94 = &qword_27D7A6C30;
        v95 = &unk_226D74330;
        v93 = v102;
        goto LABEL_33;
      }

      v76 = v133;
      sub_226C05158(v46, v133, _s9OperationOMa_0);
      v77 = *v76;
      v55 = *(v76 + 8);
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_40;
      }

      v71 = v46;
      v78 = *v48;
      v72 = v52[1];
      sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
      v79 = sub_226D6EC3C();

      if ((v79 & 1) == 0)
      {
LABEL_24:

LABEL_34:
        sub_226C062F4(v71, _s9OperationOMa_0);
        goto LABEL_41;
      }

      goto LABEL_21;
    }

    v69 = v48;
    if (EnumCaseMultiPayload == 4)
    {
      sub_226C05158(v46, v31, _s9OperationOMa_0);
      v70 = *v31;
      v55 = v31[1];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v96 = v132;
      sub_226C05158(v46, v132, _s9OperationOMa_0);
      v70 = *v96;
      v55 = *(v96 + 8);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
LABEL_20:
        v71 = v46;
        v73 = *v50;
        v72 = v69[1];
        sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
        v74 = sub_226D6EC3C();

        if ((v74 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_21:
        v75 = sub_226D6EC3C();

        sub_226C062F4(v71, _s9OperationOMa_0);
        return v75 & 1;
      }
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_226C05158(v46, v37, _s9OperationOMa_0);
      v55 = *v37;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_40;
      }
    }

    else
    {
      sub_226C05158(v46, v34, _s9OperationOMa_0);
      v55 = *v34;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_40;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_226C05158(v46, v40, _s9OperationOMa_0);
    v55 = *v40;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_40;
    }
  }

  else
  {
    sub_226C05158(v46, v43, _s9OperationOMa_0);
    v55 = *v43;
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_40;
    }
  }

  v80 = *v48;
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  v81 = v46;
  v75 = sub_226D6EC3C();

  sub_226C062F4(v81, _s9OperationOMa_0);
  return v75 & 1;
}

uint64_t sub_226C062F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C06354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226C0639C@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8008, &unk_226D77290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8010, &unk_226D78490);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  *a1 = 5;
  v21 = type metadata accessor for OfflineLabDefaultLogicProvider(0);
  v8 = sub_226D6D6DC();
  v9 = *(v8 - 8);
  v19 = *(v9 + 56);
  v20 = v9 + 56;
  v17 = v8;
  v19(v7, 1, 1, v8);
  v10 = sub_226D6D71C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v4, 1, 1, v10);
  v18 = v13;
  sub_226D6CE8C();
  v16 = *(v21 + 24);
  v14 = v19;
  v19(v7, 1, 1, v8);
  v12(v4, 1, 1, v10);
  sub_226D6CE8C();
  v14(v7, 1, 1, v17);
  v12(v4, 1, 1, v10);
  return sub_226D6CE8C();
}

uint64_t type metadata accessor for OfflineLabDefaultLogicProvider(uint64_t a1)
{
  result = qword_27D7A8018;
  if (!qword_27D7A8018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226C067D0(uint64_t a1)
{
  result = sub_226D6CEAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226C06854(char *a1)
{
  v3 = sub_226C06A1C(a1);
  if (v1)
  {
    sub_226C077F8();
    swift_allocError();
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v5 = sub_226D6E07C();
    __swift_project_value_buffer(v5, qword_28105F668);
    v6 = sub_226D6E05C();
    v7 = sub_226D6E9EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Account passed core criteria. Now checking to see if account passes transaction history length test", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }

    if (sub_226C0784C(a1))
    {
      v9 = sub_226D6E05C();
      v10 = sub_226D6E9EC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_226AB4000, v9, v10, "End of filtering logic. This account will be included in the upload.", v11, 2u);
        MEMORY[0x22AA8BEE0](v11, -1, -1);
      }

      v4 = 1;
    }

    else
    {
LABEL_12:
      v4 = 0;
    }
  }

  return v4 & 1;
}

uint64_t sub_226C06A1C(void *a1)
{
  v2 = sub_226D6D61C();
  v101 = *(v2 - 8);
  v102 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D6DC();
  v103 = *(v5 - 8);
  v104 = v5;
  MEMORY[0x28223BE20](v5);
  v105 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v98 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = &v88 - v11;
  MEMORY[0x28223BE20](v12);
  v100 = &v88 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - v15;
  MEMORY[0x28223BE20](v17);
  v107 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v88 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v88 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v88 - v29;
  v31 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v109 = v30;
  sub_226CA061C(v31, v30);
  v32 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226CA0610(*v32, v27);
  v106 = v8;
  isa = v8[6].isa;
  if (isa(v27, 1, v7) == 1 && isa(v109, 1, v7) == 1)
  {
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v34 = sub_226D6E07C();
    __swift_project_value_buffer(v34, qword_28105F668);
    v35 = sub_226D6E05C();
    v36 = sub_226D6E9EC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_226AB4000, v35, v36, "This account has never been processed. Returning true from passesCoreCriteria() and proceeding to the next group of filtering logic.", v37, 2u);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
    }

    LOBYTE(v35) = 1;
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = off_283A6FFD8(&type metadata for OfflineLabCoreDataAttributeProvider);
  if (v39)
  {
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v40 = sub_226D6E07C();
    __swift_project_value_buffer(v40, qword_28105F668);
    v35 = sub_226D6E05C();
    v41 = sub_226D6E9CC();
    if (!os_log_type_enabled(v35, v41))
    {
      goto LABEL_14;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Expected non-nil failedAttemptCount";
  }

  else
  {
    if (v38)
    {
      LOBYTE(v35) = sub_226C08BC0(v38, v109);
      sub_226AC47B0(v27, &qword_27D7A8BE0, &unk_226D718F0);
      goto LABEL_18;
    }

    sub_226AF265C(v27, v24);
    if (isa(v24, 1, v7) != 1)
    {
      v46 = v106;
      v94 = v106[4].isa;
      v95 = v106 + 4;
      (v94)(v107, v24, v7);
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v47 = sub_226D6E07C();
      v48 = __swift_project_value_buffer(v47, qword_28105F668);
      v91 = v46[2].isa;
      v92 = v46 + 2;
      v91(v16, v107, v7);
      v96 = v48;
      v49 = sub_226D6E05C();
      v93 = sub_226D6E9EC();
      if (os_log_type_enabled(v49, v93))
      {
        v50 = swift_slowAlloc();
        v89 = v50;
        v90 = swift_slowAlloc();
        v110 = v90;
        *v50 = 136315138;
        sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v51 = sub_226D6F1CC();
        v88 = v49;
        v53 = v52;
        v97 = v106[1].isa;
        (v97)(v16, v7);
        v54 = sub_226AC4530(v51, v53, &v110);

        v55 = v89;
        *(v89 + 1) = v54;
        v56 = v88;
        v57 = v55;
        _os_log_impl(&dword_226AB4000, v88, v93, "Checking if last successful send date: %s was more than two years ago.", v55, 0xCu);
        v58 = v90;
        __swift_destroy_boxed_opaque_existential_0Tm(v90);
        MEMORY[0x22AA8BEE0](v58, -1, -1);
        MEMORY[0x22AA8BEE0](v57, -1, -1);
      }

      else
      {

        v97 = v106[1].isa;
        (v97)(v16, v7);
      }

      v60 = v101;
      v59 = v102;
      (*(v101 + 104))(v4, *MEMORY[0x277CC9830], v102);
      sub_226D6D62C();
      (*(v60 + 8))(v4, v59);
      type metadata accessor for OfflineLabDefaultLogicProvider(0);
      v61 = v107;
      sub_226D6D67C();
      if (isa(v21, 1, v7) == 1)
      {
        sub_226AC47B0(v21, &qword_27D7A8BE0, &unk_226D718F0);
        v35 = sub_226D6E05C();
        v62 = sub_226D6E9CC();
        if (os_log_type_enabled(v35, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_226AB4000, v35, v62, "Expecrted non-nil sendAgainAfter date", v63, 2u);
          MEMORY[0x22AA8BEE0](v63, -1, -1);
        }

        sub_226C077F8();
        swift_willThrowTypedImpl();
        (*(v103 + 8))(v105, v104);
        (v97)(v61, v7);
      }

      else
      {
        v64 = v100;
        (v94)(v100, v21, v7);
        v65 = v99;
        sub_226D6D46C();
        v66 = sub_226D6D40C();
        (v97)(v65, v7);
        if (v66)
        {
          v67 = v98;
          v91(v98, v64, v7);
          v68 = sub_226D6E05C();
          v69 = sub_226D6E9EC();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v110 = v108;
            *v70 = 136315394;
            v106 = v68;
            v71 = v99;
            sub_226D6D46C();
            sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v72 = sub_226D6F1CC();
            v74 = v73;
            LODWORD(v102) = v69;
            v75 = v97;
            (v97)(v71, v7);
            v76 = sub_226AC4530(v72, v74, &v110);

            *(v70 + 4) = v76;
            *(v70 + 12) = 2080;
            v77 = v98;
            v78 = sub_226D6F1CC();
            v80 = v79;
            v75(v77, v7);
            v81 = sub_226AC4530(v78, v80, &v110);

            *(v70 + 14) = v81;
            v82 = v106;
            _os_log_impl(&dword_226AB4000, v106, v102, "%s is after %s. Returning true", v70, 0x16u);
            v83 = v108;
            swift_arrayDestroy();
            MEMORY[0x22AA8BEE0](v83, -1, -1);
            MEMORY[0x22AA8BEE0](v70, -1, -1);

            v75(v100, v7);
            (*(v103 + 8))(v105, v104);
            v75(v107, v7);
          }

          else
          {

            v87 = v97;
            (v97)(v67, v7);
            v87(v64, v7);
            (*(v103 + 8))(v105, v104);
            v87(v107, v7);
          }

          LOBYTE(v35) = 1;
        }

        else
        {
          v84 = sub_226D6E05C();
          v85 = sub_226D6E9EC();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&dword_226AB4000, v84, v85, "Account did not meet the default logic criteria for processing", v86, 2u);
            MEMORY[0x22AA8BEE0](v86, -1, -1);
          }

          v35 = v97;
          (v97)(v64, v7);
          (*(v103 + 8))(v105, v104);
          (v35)(v61, v7);
          LOBYTE(v35) = 0;
        }
      }

      goto LABEL_15;
    }

    sub_226AC47B0(v24, &qword_27D7A8BE0, &unk_226D718F0);
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v45 = sub_226D6E07C();
    __swift_project_value_buffer(v45, qword_28105F668);
    v35 = sub_226D6E05C();
    v41 = sub_226D6E9CC();
    if (!os_log_type_enabled(v35, v41))
    {
      goto LABEL_14;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Expected non-nil lastSuccessDate";
  }

  _os_log_impl(&dword_226AB4000, v35, v41, v43, v42, 2u);
  MEMORY[0x22AA8BEE0](v42, -1, -1);
LABEL_14:

  sub_226C077F8();
  swift_willThrowTypedImpl();
LABEL_15:
  sub_226AC47B0(v27, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_18:
  sub_226AC47B0(v109, &qword_27D7A8BE0, &unk_226D718F0);
  return v35 & 1;
}

unint64_t sub_226C077F8()
{
  result = qword_27D7A8028;
  if (!qword_27D7A8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8028);
  }

  return result;
}

uint64_t sub_226C0784C(char *a1)
{
  v184 = a1;
  v181 = type metadata accessor for OfflineLabDefaultLogicProvider(0);
  MEMORY[0x28223BE20](v181);
  v173 = &v155 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v174 = &v155 - v3;
  v4 = sub_226D6D6DC();
  v178 = *(v4 - 8);
  v179 = v4;
  MEMORY[0x28223BE20](v4);
  v176 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v177 = &v155 - v7;
  v186 = sub_226D6D4AC();
  v182 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v175 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v172 = &v155 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = (&v155 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v155 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v155 - v18;
  v187 = sub_226D6CD7C();
  v183 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v21 = &v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v155 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v155 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v155 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v155 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v155 - v35;
  v37 = __swift_project_boxed_opaque_existential_1(v184, v184[3]);
  v38 = v185;
  sub_226CA07D0(*v37, v37[1], v19);
  if (!v38)
  {
    v167 = v33;
    v169 = v30;
    v171 = v36;
    v162 = v27;
    v163 = v21;
    v166 = v24;
    v184 = v13;
    v185 = 0;
    v170 = v16;
    v40 = v183;
    if ((*(v183 + 48))(v19, 1, v187) == 1)
    {
      sub_226AC47B0(v19, &qword_27D7A6558, &qword_226D7CCE0);
      if (qword_28105F660 != -1)
      {
        swift_once();
      }

      v41 = sub_226D6E07C();
      __swift_project_value_buffer(v41, qword_28105F668);
      v42 = sub_226D6E05C();
      v43 = sub_226D6E9CC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_226AB4000, v42, v43, "Obtained nil transaction history date interval. This account fails the transaction history length test", v44, 2u);
        MEMORY[0x22AA8BEE0](v44, -1, -1);
      }

      goto LABEL_8;
    }

    v46 = v171;
    (*(v40 + 32))(v171, v19, v187);
    if (qword_28105F660 != -1)
    {
      swift_once();
    }

    v47 = sub_226D6E07C();
    v48 = __swift_project_value_buffer(v47, qword_28105F668);
    v49 = *(v40 + 16);
    v50 = v167;
    v51 = v187;
    v49(v167, v46, v187);
    v52 = v169;
    v165 = v40 + 16;
    v164 = v49;
    v49(v169, v46, v51);
    v168 = v48;
    v53 = sub_226D6E05C();
    v54 = sub_226D6E9EC();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v182;
    if (v55)
    {
      v57 = swift_slowAlloc();
      v158 = v57;
      v161 = swift_slowAlloc();
      v188 = v161;
      *v57 = 136315394;
      v159 = v54;
      v58 = v170;
      v160 = v53;
      sub_226D6CD4C();
      v157 = sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v59 = v50;
      v60 = v186;
      v61 = sub_226D6F1CC();
      v63 = v62;
      v156 = *(v56 + 8);
      v156(v58, v60);
      v64 = v187;
      v65 = *(v40 + 8);
      v65(v59, v187);
      v66 = sub_226AC4530(v61, v63, &v188);

      v67 = v158;
      *(v158 + 1) = v66;
      *(v67 + 6) = 2080;
      sub_226D6CD2C();
      v68 = sub_226D6F1CC();
      v70 = v69;
      v156(v58, v186);
      v169 = v65;
      v65(v52, v64);
      v56 = v182;
      v46 = v171;
      v71 = sub_226AC4530(v68, v70, &v188);

      *(v67 + 14) = v71;
      v72 = v160;
      _os_log_impl(&dword_226AB4000, v160, v159, "Obtained transaction history date interval: %s to %s", v67, 0x16u);
      v73 = v161;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v73, -1, -1);
      MEMORY[0x22AA8BEE0](v67, -1, -1);
    }

    else
    {

      v74 = *(v40 + 8);
      v75 = v187;
      v74(v52, v187);
      v169 = v74;
      v74(v50, v75);
      v58 = v170;
    }

    v76 = v184;
    v77 = v176;
    sub_226D6D6AC();
    sub_226D6CD4C();
    v78 = v180;
    v79 = v177;
    sub_226D6D67C();
    v80 = v46;
    v81 = v186;
    v167 = *(v56 + 8);
    v176 = (v56 + 8);
    v167(v58, v186);
    (v178[1].isa)(v77, v179);
    if ((*(v56 + 48))(v79, 1, v81) == 1)
    {
      v82 = v58;
      sub_226AC47B0(v79, &qword_27D7A8BE0, &unk_226D718F0);
      v83 = v173;
      sub_226C09A10(v78, v173);
      v84 = v163;
      v164(v163, v80, v187);
      v85 = sub_226D6E05C();
      v86 = sub_226D6E9CC();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        v188 = v184;
        *v87 = 136315394;
        sub_226D6CEAC();
        sub_226C09AD0(&qword_27D7A8030, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
        v88 = sub_226D6F1CC();
        v90 = v89;
        sub_226C09A74(v83);
        v91 = sub_226AC4530(v88, v90, &v188);

        *(v87 + 4) = v91;
        *(v87 + 12) = 2080;
        sub_226D6CD4C();
        sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v92 = v186;
        v93 = sub_226D6F1CC();
        v95 = v94;
        v167(v82, v92);
        v96 = v84;
        v97 = v187;
        v98 = v169;
        v169(v96, v187);
        v99 = sub_226AC4530(v93, v95, &v188);

        *(v87 + 14) = v99;
        _os_log_impl(&dword_226AB4000, v85, v86, "Unable to compute cutoff date by adding %s to %s. This account fails the transaction history length test", v87, 0x16u);
        v100 = v184;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v100, -1, -1);
        MEMORY[0x22AA8BEE0](v87, -1, -1);

        v98(v171, v97);
      }

      else
      {

        v130 = v187;
        v131 = v169;
        v169(v84, v187);
        sub_226C09A74(v83);
        v131(v80, v130);
      }

LABEL_8:
      v39 = 0;
      return v39 & 1;
    }

    v101 = v76;
    v102 = v186;
    (*(v56 + 32))(v76, v79, v186);
    v103 = *(v56 + 16);
    v104 = v172;
    v182 = v56 + 16;
    (v103)(v172, v76, v102);
    v105 = v162;
    v164(v162, v80, v187);
    v106 = v174;
    sub_226C09A10(v78, v174);
    v107 = sub_226D6E05C();
    v108 = sub_226D6E9EC();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v188 = v179;
      *v109 = 136315650;
      sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v178 = v107;
      v110 = v186;
      v111 = sub_226D6F1CC();
      v113 = v112;
      LODWORD(v177) = v108;
      v114 = v167;
      v180 = v103;
      v167(v104, v110);
      v115 = sub_226AC4530(v111, v113, &v188);

      *(v109 + 4) = v115;
      *(v109 + 12) = 2080;
      v116 = v170;
      sub_226D6CD4C();
      v117 = sub_226D6F1CC();
      v119 = v118;
      v114(v116, v110);
      v103 = v180;
      v169(v105, v187);
      v120 = sub_226AC4530(v117, v119, &v188);

      *(v109 + 14) = v120;
      *(v109 + 22) = 2080;
      sub_226D6CEAC();
      sub_226C09AD0(&qword_27D7A8030, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v121 = v174;
      v122 = sub_226D6F1CC();
      v124 = v123;
      sub_226C09A74(v121);
      v125 = sub_226AC4530(v122, v124, &v188);
      v101 = v184;

      *(v109 + 24) = v125;
      v126 = v178;
      _os_log_impl(&dword_226AB4000, v178, v177, "Using threshold date: %s computed as: (%s + %s)", v109, 0x20u);
      v127 = v179;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v127, -1, -1);
      MEMORY[0x22AA8BEE0](v109, -1, -1);

      v128 = v175;
      v129 = v166;
    }

    else
    {

      sub_226C09A74(v106);
      v169(v105, v187);
      v167(v104, v186);
      v128 = v175;
      v129 = v166;
      v116 = v170;
    }

    v164(v129, v171, v187);
    (v103)(v128, v101, v186);
    v132 = sub_226D6E05C();
    v133 = sub_226D6E9EC();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v188 = v182;
      *v134 = 136315394;
      LODWORD(v181) = v133;
      sub_226D6CD2C();
      sub_226C09AD0(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v135 = v186;
      v136 = sub_226D6F1CC();
      v180 = v132;
      v138 = v137;
      v139 = v167;
      v167(v116, v135);
      v169(v129, v187);
      v140 = sub_226AC4530(v136, v138, &v188);

      *(v134 + 4) = v140;
      *(v134 + 12) = 2080;
      v141 = v175;
      v142 = sub_226D6F1CC();
      v144 = v143;
      v139(v141, v135);
      v145 = sub_226AC4530(v142, v144, &v188);
      v101 = v184;
      v116 = v170;

      *(v134 + 14) = v145;
      v146 = v180;
      _os_log_impl(&dword_226AB4000, v180, v181, "Testing: Is %s >= %s ?", v134, 0x16u);
      v147 = v182;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v147, -1, -1);
      MEMORY[0x22AA8BEE0](v134, -1, -1);
    }

    else
    {

      v139 = v167;
      v167(v128, v186);
      v169(v129, v187);
    }

    sub_226D6CD2C();
    sub_226C09AD0(&qword_27D7A66D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v148 = v186;
    v149 = sub_226D6E33C();
    v139(v116, v148);
    v150 = sub_226D6E05C();
    v151 = sub_226D6E9EC();
    v152 = os_log_type_enabled(v150, v151);
    if ((v149 & 1) == 0)
    {
      if (v152)
      {
        v154 = swift_slowAlloc();
        *v154 = 0;
        _os_log_impl(&dword_226AB4000, v150, v151, "Account failed transaction history length test.", v154, 2u);
        MEMORY[0x22AA8BEE0](v154, -1, -1);
      }

      v139(v101, v186);
      v169(v171, v187);
      goto LABEL_8;
    }

    if (v152)
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_226AB4000, v150, v151, "Account passed transaction history length test.", v153, 2u);
      MEMORY[0x22AA8BEE0](v153, -1, -1);
    }

    v139(v101, v186);
    v169(v171, v187);
    v39 = 1;
  }

  return v39 & 1;
}