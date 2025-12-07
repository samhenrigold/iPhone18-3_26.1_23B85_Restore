uint64_t sub_1B4E4FB94()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = *(v2 + 128);

    return MEMORY[0x1EEE6DFA0](sub_1B4E4FCD8, v4, v5);
  }

  else
  {
    (*(v2 + 136))();
    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_1B4E4FCD8()
{
  (*(v0 + 136))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ActivityRingsQuerying.makeActivityRingsObserver(streamHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v4[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5218, &qword_1B4F71468);
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v4[7] = *(v8 + 64);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[10] = v9;
  v10 = swift_task_alloc();
  v4[11] = v10;
  *v10 = v4;
  v10[1] = sub_1B4E4FEC0;

  return ActivityRingsQuerying.makeActivityRingsStream()(v9, a3, a4);
}

uint64_t sub_1B4E4FEC0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B4E4FFBC, 0, 0);
}

uint64_t sub_1B4E4FFBC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v16 = v0[2];
  v8 = *(v5 + 16);
  v8(v1, v2, v4);
  type metadata accessor for ActivityRingsObserver();
  v17 = swift_allocObject();
  v9 = sub_1B4F68324();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v8(v3, v1, v4);
  v10 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v16;
  *(v11 + 5) = v7;
  (*(v5 + 32))(&v11[v10], v3, v4);

  v12 = sub_1B4E4E620(0, 0, v6, &unk_1B4F71478, v11);
  v13 = *(v5 + 8);
  v13(v1, v4);
  v13(v2, v4);
  *(v17 + 16) = v12;

  v14 = v0[1];

  return v14(v17);
}

uint64_t ActivityRingsQuerying.makeActivityRingsStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5220, &unk_1B4F71480);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E5028C, 0, 0);
}

uint64_t sub_1B4E5028C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v4;
  sub_1B4F65184();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1B4F683A4();

  v6 = *(v0 + 8);

  return v6();
}

void sub_1B4E50384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v26 = a2;
  v24 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5228, &qword_1B4F714A8);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v24 - v12;
  (*(v9 + 16))(&v24 - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  v16 = v26;
  (*(v25 + 16))(v27, a3);
  v18 = v28;
  v17 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v19 = (*(v17 + 8))(sub_1B4E51644, v15, v18, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16, a3);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v22 = v25;
  *(v21 + 16) = a3;
  *(v21 + 24) = v22;
  (*(v6 + 32))(v21 + v20, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *(v21 + ((v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v23 = v19;
  sub_1B4F68344();
  (*(*(v22 + 8) + 8))(v23, a3);
}

void sub_1B4E50674(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5230, &qword_1B4F714B0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v30 - v5;
  v7 = sub_1B4F65184();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5238, &qword_1B4F714B8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v30 - v18);
  sub_1B4E21A90(a1, &v30 - v18, &qword_1EB8F5238, &qword_1B4F714B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1B4F67C54();
    __swift_project_value_buffer(v21, qword_1EDB6DFB0);
    v22 = v20;
    v23 = sub_1B4F67C34();
    v24 = sub_1B4F685E4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = MEMORY[0x1B8C826C0](v33, v34);
      v29 = sub_1B4DC4F88(v27, v28, &v35);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1B4DC2000, v23, v24, "HealthStore: An error occurred while loading ActivityRings: %s.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B8C831D0](v26, -1, -1);
      MEMORY[0x1B8C831D0](v25, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v8 + 32))(v15, v19, v7);
    (*(v8 + 16))(v11, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5228, &qword_1B4F714A8);
    sub_1B4F68364();
    (*(v30 + 8))(v6, v31);
    (*(v8 + 8))(v15, v7);
  }
}

void sub_1B4E50A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v26 = a2;
  v24 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5288, &qword_1B4F71560);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v24 - v12;
  (*(v9 + 16))(&v24 - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  v16 = v26;
  (*(v25 + 16))(v27, a3);
  v18 = v28;
  v17 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v19 = (*(v17 + 8))(sub_1B4E52814, v15, v18, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16, a3);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v22 = v25;
  *(v21 + 16) = a3;
  *(v21 + 24) = v22;
  (*(v6 + 32))(v21 + v20, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *(v21 + ((v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v23 = v19;
  sub_1B4F68464();
  (*(*(v22 + 8) + 8))(v23, a3);
}

uint64_t sub_1B4E50D30(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5290, &qword_1B4F71568);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v31 - v5;
  v7 = sub_1B4F65184();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5238, &qword_1B4F714B8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v31 - v18);
  sub_1B4E21A90(a1, &v31 - v18, &qword_1EB8F5238, &qword_1B4F714B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1EDB6DFA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1B4F67C54();
    __swift_project_value_buffer(v21, qword_1EDB6DFB0);
    v22 = v20;
    v23 = sub_1B4F67C34();
    v24 = sub_1B4F685C4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = MEMORY[0x1B8C826C0](v34, v35);
      v29 = sub_1B4DC4F88(v27, v28, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1B4DC2000, v23, v24, "HealthStore: An error occurred while loading ActivityRings: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1B8C831D0](v26, -1, -1);
      MEMORY[0x1B8C831D0](v25, -1, -1);
    }

    v36 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5288, &qword_1B4F71560);
    return sub_1B4F68484();
  }

  else
  {
    (*(v8 + 32))(v15, v19, v7);
    (*(v8 + 16))(v11, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5288, &qword_1B4F71560);
    sub_1B4F68474();
    (*(v31 + 8))(v6, v32);
    return (*(v8 + 8))(v15, v7);
  }
}

uint64_t sub_1B4E51110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - v9;
  sub_1B4E21A90(a1, v19 - v9, &unk_1EB8F7040, &qword_1B4F71150);
  v11 = sub_1B4F68324();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B4DD2BC4(v10, &unk_1EB8F7040, &qword_1B4F71150);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1B4F68274();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4F68314();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  sub_1B4F65184();
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1B4E51300(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5240, &qword_1B4F714D8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v21 - v15;
  v17 = sub_1B4F68324();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  (*(v9 + 32))(v19 + v18, v12, v8);

  sub_1B4E4E620(0, 0, v16, &unk_1B4F714E8, v19);
}

uint64_t sub_1B4E51514(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5218, &qword_1B4F71468) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4E5F468(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1B4E5166C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a7;
  *(v7 + 40) = a2;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E51698, 0, 0);
}

uint64_t sub_1B4E51698()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = sub_1B4F65184();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1B4E517A8;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v6, v3);
}

void sub_1B4E517A8()
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

uint64_t sub_1B4E518DC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  *(v6 + 48) = a1;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  *(v6 + 64) = swift_task_alloc();
  v7 = sub_1B4F65184();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  *(v6 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E51A24, 0, 0);
}

uint64_t sub_1B4E51A24(double a1)
{
  v2 = v1[13];
  v3 = v1[6];
  v5 = v1[4];
  v4 = v1[5];
  v6 = sub_1B4F68324();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v4;

  sub_1B4E51110(v2, &unk_1B4F71510, v8);
  sub_1B4DD2BC4(v2, &unk_1EB8F7040, &qword_1B4F71150);
  v7(v2, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  sub_1B4E51110(v2, &unk_1B4F71520, v9);
  sub_1B4DD2BC4(v2, &unk_1EB8F7040, &qword_1B4F71150);
  v10 = swift_task_alloc();
  v1[14] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5248, &qword_1B4F71528);
  *v10 = v1;
  v10[1] = sub_1B4E51C24;
  v12 = v1[8];

  return MEMORY[0x1EEE6DAC8](v12, 0, 0, v11);
}

uint64_t sub_1B4E51C24()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B4E51F38;
  }

  else
  {
    v2 = sub_1B4E51D38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E51D38()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4DD2BC4(v3, &qword_1EB8F7050, &qword_1B4F71500);
    return sub_1B4F68B24();
  }

  else
  {
    v6 = v0[11];
    v5 = v0[12];
    (*(v2 + 32))(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5240, &qword_1B4F714D8);
    sub_1B4F682B4();
    (*(v2 + 8))(v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68434();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1B4E51F38()
{
  v0[2] = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5240, &qword_1B4F714D8);
  sub_1B4F682A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68434();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4E52034(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B4DE13F0;

  return v8(a1);
}

uint64_t sub_1B4E5214C(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_1B4E52234;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B4E52234()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E52364, 0, 0);
  }
}

uint64_t sub_1B4E52364()
{
  sub_1B4F682D4();
  sub_1B4E5275C();
  swift_allocError();
  sub_1B4F67EC4();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4E523FC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5240, &qword_1B4F714D8) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B4DE13F0;

  return sub_1B4E5166C(a1, v10, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1B4E52514(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B4DE13F0;

  return sub_1B4E518DC(v8, a1, a2, v6, v7, v9);
}

uint64_t sub_1B4E525E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4E52034(a1, v4, v5, v6);
}

uint64_t sub_1B4E526A0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return sub_1B4E5212C(v2);
}

unint64_t sub_1B4E5275C()
{
  result = qword_1EDB6DBF8;
  if (!qword_1EDB6DBF8)
  {
    sub_1B4F682D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBF8);
  }

  return result;
}

unint64_t sub_1B4E527B4()
{
  result = qword_1EB8F5270;
  if (!qword_1EB8F5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5270);
  }

  return result;
}

uint64_t sub_1B4E5283C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

id static Platform.current.getter(double a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    return (deviceClassNumber == 3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Platform.systemVersion.getter(double a1)
{
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    v3 = MobileGestalt_copy_buildVersion_obj();

    if (v3)
    {
      sub_1B4F67F74();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

BOOL Platform.storeDemoMode.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  v0 = sub_1B4F67F64();
  v1 = sub_1B4F67F64();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t AudioLanguagePreferenceUpdated.preference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66754();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AudioLanguagePreferenceUpdated.init(preference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66754();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for AudioLanguagePreferenceUpdated(uint64_t a1)
{
  result = qword_1EDB70620;
  if (!qword_1EDB70620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E52CDC(uint64_t a1)
{
  result = sub_1B4F66754();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

SeymourClient::UserDefaultsKeys_optional __swiftcall UserDefaultsKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4F68D84();

  v5 = 0;
  v6 = 81;
  switch(v3)
  {
    case 0:
      goto LABEL_95;
    case 1:
      v5 = 1;
      goto LABEL_95;
    case 2:
      v5 = 2;
      goto LABEL_95;
    case 3:
      v5 = 3;
      goto LABEL_95;
    case 4:
      v5 = 4;
      goto LABEL_95;
    case 5:
      v5 = 5;
      goto LABEL_95;
    case 6:
      v5 = 6;
      goto LABEL_95;
    case 7:
      v5 = 7;
      goto LABEL_95;
    case 8:
      v5 = 8;
      goto LABEL_95;
    case 9:
      v5 = 9;
      goto LABEL_95;
    case 10:
      v5 = 10;
      goto LABEL_95;
    case 11:
      v5 = 11;
      goto LABEL_95;
    case 12:
      v5 = 12;
      goto LABEL_95;
    case 13:
      v5 = 13;
      goto LABEL_95;
    case 14:
      v5 = 14;
      goto LABEL_95;
    case 15:
      v5 = 15;
      goto LABEL_95;
    case 16:
      v5 = 16;
      goto LABEL_95;
    case 17:
      v5 = 17;
      goto LABEL_95;
    case 18:
      v5 = 18;
      goto LABEL_95;
    case 19:
      v5 = 19;
      goto LABEL_95;
    case 20:
      v5 = 20;
      goto LABEL_95;
    case 21:
      v5 = 21;
      goto LABEL_95;
    case 22:
      v5 = 22;
      goto LABEL_95;
    case 23:
      v5 = 23;
      goto LABEL_95;
    case 24:
      v5 = 24;
      goto LABEL_95;
    case 25:
      v5 = 25;
      goto LABEL_95;
    case 26:
      v5 = 26;
      goto LABEL_95;
    case 27:
      v5 = 27;
      goto LABEL_95;
    case 28:
      v5 = 28;
      goto LABEL_95;
    case 29:
      v5 = 29;
      goto LABEL_95;
    case 30:
      v5 = 30;
      goto LABEL_95;
    case 31:
      v5 = 31;
      goto LABEL_95;
    case 32:
      v5 = 32;
      goto LABEL_95;
    case 33:
      v5 = 33;
      goto LABEL_95;
    case 34:
      v5 = 34;
      goto LABEL_95;
    case 35:
      v5 = 35;
      goto LABEL_95;
    case 36:
      v5 = 36;
      goto LABEL_95;
    case 37:
      v5 = 37;
      goto LABEL_95;
    case 38:
      v5 = 38;
      goto LABEL_95;
    case 39:
      v5 = 39;
      goto LABEL_95;
    case 40:
      v5 = 40;
      goto LABEL_95;
    case 41:
      v5 = 41;
      goto LABEL_95;
    case 42:
      v5 = 42;
      goto LABEL_95;
    case 43:
      v5 = 43;
      goto LABEL_95;
    case 44:
      v5 = 44;
      goto LABEL_95;
    case 45:
      v5 = 45;
      goto LABEL_95;
    case 46:
      v5 = 46;
      goto LABEL_95;
    case 47:
      v5 = 47;
      goto LABEL_95;
    case 48:
      v5 = 48;
      goto LABEL_95;
    case 49:
      v5 = 49;
      goto LABEL_95;
    case 50:
      v5 = 50;
      goto LABEL_95;
    case 51:
      v5 = 51;
      goto LABEL_95;
    case 52:
      v5 = 52;
      goto LABEL_95;
    case 53:
      v5 = 53;
      goto LABEL_95;
    case 54:
      v5 = 54;
      goto LABEL_95;
    case 55:
      v5 = 55;
      goto LABEL_95;
    case 56:
      v5 = 56;
      goto LABEL_95;
    case 57:
      v5 = 57;
      goto LABEL_95;
    case 58:
      v5 = 58;
      goto LABEL_95;
    case 59:
      v5 = 59;
      goto LABEL_95;
    case 60:
      v5 = 60;
      goto LABEL_95;
    case 61:
      v5 = 61;
      goto LABEL_95;
    case 62:
      v5 = 62;
      goto LABEL_95;
    case 63:
      v5 = 63;
      goto LABEL_95;
    case 64:
      v5 = 64;
      goto LABEL_95;
    case 65:
      v5 = 65;
      goto LABEL_95;
    case 66:
      v5 = 66;
      goto LABEL_95;
    case 67:
      v5 = 67;
      goto LABEL_95;
    case 68:
      v5 = 68;
      goto LABEL_95;
    case 69:
      v5 = 69;
      goto LABEL_95;
    case 70:
      v5 = 70;
      goto LABEL_95;
    case 71:
      v5 = 71;
      goto LABEL_95;
    case 72:
      v5 = 72;
      goto LABEL_95;
    case 73:
      v5 = 73;
      goto LABEL_95;
    case 74:
      v5 = 74;
      goto LABEL_95;
    case 75:
      v5 = 75;
      goto LABEL_95;
    case 76:
      v5 = 76;
      goto LABEL_95;
    case 77:
      v5 = 77;
      goto LABEL_95;
    case 78:
      v5 = 78;
      goto LABEL_95;
    case 79:
      v5 = 79;
      goto LABEL_95;
    case 80:
      v5 = 80;
LABEL_95:
      v6 = v5;
      break;
    case 81:
      break;
    case 82:
      v6 = 82;
      break;
    case 83:
      v6 = 83;
      break;
    case 84:
      v6 = 84;
      break;
    case 85:
      v6 = 85;
      break;
    case 86:
      v6 = 86;
      break;
    case 87:
      v6 = 87;
      break;
    case 88:
      v6 = 88;
      break;
    case 89:
      v6 = 89;
      break;
    case 90:
      v6 = 90;
      break;
    case 91:
      v6 = 91;
      break;
    case 92:
      v6 = 92;
      break;
    case 93:
      v6 = 93;
      break;
    case 94:
      v6 = 94;
      break;
    case 95:
      v6 = 95;
      break;
    case 96:
      v6 = 96;
      break;
    case 97:
      v6 = 97;
      break;
    case 98:
      v6 = 98;
      break;
    default:
      v6 = 99;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B4E530E4()
{
  v0 = UserDefaultsKeys.rawValue.getter();
  v2 = v1;
  if (v0 == UserDefaultsKeys.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B4F68D54();
  }

  return v5 & 1;
}

unint64_t sub_1B4E53184()
{
  result = qword_1EB8F5298;
  if (!qword_1EB8F5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5298);
  }

  return result;
}

uint64_t sub_1B4E531D8()
{
  sub_1B4F68E84();
  UserDefaultsKeys.rawValue.getter();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4E53240(uint64_t a1)
{
  UserDefaultsKeys.rawValue.getter();
  sub_1B4F67FE4();
}

uint64_t sub_1B4E532A4(uint64_t a1)
{
  sub_1B4F68E84();
  UserDefaultsKeys.rawValue.getter();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

unint64_t sub_1B4E53314@<X0>(unint64_t *a1@<X8>)
{
  result = UserDefaultsKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for UserDefaultsKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x9E)
  {
    goto LABEL_17;
  }

  if (a2 + 98 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 98) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 98;
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

      return (*a1 | (v4 << 8)) - 98;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 98;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x63;
  v8 = v6 - 99;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserDefaultsKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 98 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 98) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x9E)
  {
    v4 = 0;
  }

  if (a2 > 0x9D)
  {
    v5 = ((a2 - 158) >> 8) + 1;
    *result = a2 + 98;
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
    *result = a2 + 98;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1B4E53494()
{
  v1 = v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);

  oslog = sub_1B4F67C34();
  v3 = sub_1B4F685C4();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v6 = [*(v1 + 24) serviceName];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B4F67F74();
      v10 = v9;
    }

    else
    {
      v10 = 0xEB00000000646569;
      v8 = 0x6669636570736E75;
    }

    v11 = sub_1B4DC4F88(v8, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_1B4DC2000, oslog, v3, "XPC connection (%{public}s) interrupted", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B8C831D0](v5, -1, -1);
    MEMORY[0x1B8C831D0](v4, -1, -1);
  }
}

uint64_t sub_1B4E53644(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

void sub_1B4E536A4()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock(*(v2 + 16));
  if (*(v0 + 48))
  {
    *(v0 + 48) = 0;
    TransportDispatchService.unregisterAll()();
    v3 = *(v0 + 24);
    [*(v1 + 24) setInterruptionHandler_];
    [v3 setInvalidationHandler_];
    [v3 invalidate];
  }

  os_unfair_lock_unlock(*(v2 + 16));
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB72490);

  oslog = sub_1B4F67C34();
  v5 = sub_1B4F685C4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = [*(v1 + 24) serviceName];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1B4F67F74();
      v12 = v11;
    }

    else
    {
      v12 = 0xEB00000000646569;
      v10 = 0x6669636570736E75;
    }

    v13 = sub_1B4DC4F88(v10, v12, &v15);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1B4DC2000, oslog, v5, "XPC connection (%{public}s) invalidated", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }
}

uint64_t XPCClient.deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);
  os_unfair_lock_lock(*(v2 + 16));
  if (*(v0 + 48) == 2)
  {
    *(v0 + 48) = 1;
    [*(v0 + 24) suspend];
  }

  os_unfair_lock_unlock(*(v2 + 16));
  os_unfair_lock_lock(*(v2 + 16));
  if (*(v0 + 48))
  {
    *(v0 + 48) = 0;
    TransportDispatchService.unregisterAll()();
    v3 = *(v0 + 24);
    [*(v1 + 24) setInterruptionHandler_];
    [v3 setInvalidationHandler_];
    [v3 invalidate];
  }

  os_unfair_lock_unlock(*(v2 + 16));

  v4 = *(v1 + 24);

  swift_unknownObjectRelease();

  return v1;
}

Swift::Void __swiftcall XPCClient.deactivate()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(*(v1 + 16));
  if (*(v0 + 48) == 2)
  {
    *(v0 + 48) = 1;
    [*(v0 + 24) suspend];
  }

  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

Swift::Void __swiftcall XPCClient.invalidate()()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(*(v1 + 16));
  if (*(v0 + 48))
  {
    *(v0 + 48) = 0;
    TransportDispatchService.unregisterAll()();
    v2 = *(v0 + 24);
    [v2 setInterruptionHandler_];
    [v2 setInvalidationHandler_];
    [v2 invalidate];
  }

  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1B4E53AA8(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3, char a4)
{
  v9 = sub_1B4F67D54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4F67D74();
  MEMORY[0x1EEE9AC00](v14, v15);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 40))
  {
    v20 = swift_unknownObjectRetain();
    a2(v20, 0);
    return swift_unknownObjectRelease();
  }

  else
  {
    v38 = v19;
    v39 = v17;
    v40 = v10;
    v41 = v16;
    v22 = a3;
    if (*(a1 + 48) == 2 && (v23 = *(a1 + 24), v24 = swift_allocObject(), *(v24 + 16) = a1, *(v24 + 24) = a4 & 1, *(v24 + 32) = a2, *(v24 + 40) = a3, v46 = sub_1B4E56914, v47 = v24, aBlock = MEMORY[0x1E69E9820], v43 = 1107296256, v44 = sub_1B4E54594, v45 = &block_descriptor_193, v25 = _Block_copy(&aBlock), , , , v26 = [v23 remoteObjectProxyWithErrorHandler_], _Block_release(v25), sub_1B4F68894(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818), (swift_dynamicCast() & 1) != 0))
    {
      v27 = swift_unknownObjectRetain();
      a2(v27, 0);
      return swift_unknownObjectRelease_n();
    }

    else
    {
      if (qword_1EDB724A8 != -1)
      {
        swift_once();
      }

      v37[1] = v4;
      v28 = sub_1B4F67C54();
      __swift_project_value_buffer(v28, qword_1EDB72490);
      v29 = sub_1B4F67C34();
      v30 = sub_1B4F685C4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1B4DC2000, v29, v30, "TransportServer unavailable", v31, 2u);
        MEMORY[0x1B8C831D0](v31, -1, -1);
      }

      v32 = *(*(a1 + 16) + 16);
      v33 = swift_allocObject();
      *(v33 + 16) = a2;
      *(v33 + 24) = v22;
      v46 = sub_1B4E56920;
      v47 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = sub_1B4DCA7B0;
      v45 = &block_descriptor_186;
      v34 = _Block_copy(&aBlock);

      v35 = v32;
      v36 = v38;
      sub_1B4F67D64();
      v48 = MEMORY[0x1E69E7CC0];
      sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
      sub_1B4DCBA40();
      sub_1B4F688A4();
      MEMORY[0x1B8C81F10](0, v36, v13, v34);
      _Block_release(v34);

      (*(v40 + 8))(v13, v9);
      (*(v39 + 8))(v36, v41);
    }
  }
}

void sub_1B4E53FBC(void *a1, uint64_t a2, int a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v10 = sub_1B4F67D54();
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = sub_1B4F67D74();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v13);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1B4F67C54();
  v17 = __swift_project_value_buffer(v16, qword_1EDB72490);

  v18 = a1;
  v47 = v17;
  v19 = sub_1B4F67C34();
  v20 = sub_1B4F685C4();

  if (os_log_type_enabled(v19, v20))
  {
    v43 = a3;
    v44 = a4;
    v45 = v10;
    v46 = a5;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446466;
    v23 = [*(a2 + 24) serviceName];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1B4F67F74();
      v27 = v26;
    }

    else
    {
      v27 = 0xE900000000000029;
      v25 = 0x6E776F6E6B6E7528;
    }

    v28 = sub_1B4DC4F88(v25, v27, aBlock);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2082;
    swift_getErrorValue();
    v29 = MEMORY[0x1B8C826C0](v52, v53);
    v31 = sub_1B4DC4F88(v29, v30, aBlock);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_1B4DC2000, v19, v20, "Error getting remoteObjectProxy from %{public}s: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v22, -1, -1);
    MEMORY[0x1B8C831D0](v21, -1, -1);

    a5 = v46;
    v10 = v45;
    a4 = v44;
    if ((v43 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if ((a3 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  swift_getErrorValue();
  if (sub_1B4F68DE4() != 4097)
  {
LABEL_14:
    v36 = *(*(a2 + 16) + 16);
    v37 = swift_allocObject();
    v37[2] = a4;
    v37[3] = a5;
    v37[4] = a1;
    aBlock[4] = sub_1B4E56808;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_179;
    v38 = _Block_copy(aBlock);
    v39 = a1;
    v40 = v36;

    sub_1B4F67D64();
    v54 = MEMORY[0x1E69E7CC0];
    sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    v41 = v49;
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v15, v41, v38);
    _Block_release(v38);

    (*(v51 + 8))(v41, v10);
    (*(v48 + 8))(v15, v50);

    return;
  }

  v32 = sub_1B4F67C34();
  v33 = sub_1B4F685C4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1B4DC2000, v32, v33, "Retrying remoteObjectProxy, previous connection was interrupted", v34, 2u);
    MEMORY[0x1B8C831D0](v34, -1, -1);
  }

  v35 = *(a2 + 32);
  os_unfair_lock_lock(*(v35 + 16));
  sub_1B4E53AA8(a2, a4, a5, 0);
  os_unfair_lock_unlock(*(v35 + 16));
}

void sub_1B4E54594(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1B4E545FC(void (*a1)(void *, uint64_t))
{
  v2 = sub_1B4F658F4();
  sub_1B4DE15DC(&qword_1EB8F7600, 255, MEMORY[0x1E69CB508], MEMORY[0x1E69CB510]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69CB4E0], v2);
  a1(v3, 1);
}

uint64_t XPCClient.sendRequest(_:)(__int16 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
  sub_1B4F675F4();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v1;
  (*(v4 + 16))(v7, v11, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v15, v7, v3);
  v18 = (v17 + v16);
  *v18 = sub_1B4DD9D5C;
  v18[1] = v14;

  sub_1B4F675F4();
  return (*(v4 + 8))(v11, v3);
}

uint64_t sub_1B4E54930(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1B4F64894();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1B4DD2B5C(v4, v8);
}

uint64_t sub_1B4E549DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a7;
  v31 = a5;
  v12 = sub_1B4F67D54();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B4F67D74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = v18;
    v29 = v17;
    v23 = *(result + 16);

    v24 = *(v23 + 16);

    v25 = swift_allocObject();
    v25[2] = v31;
    v25[3] = a6;
    v25[4] = a3;
    aBlock[4] = a8;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = a9;
    v26 = _Block_copy(aBlock);

    v27 = a3;
    sub_1B4F67D64();
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v21, v16, v26);
    _Block_release(v26);

    (*(v13 + 8))(v16, v12);
    (*(v28 + 8))(v21, v29);
  }

  return result;
}

void sub_1B4E54CD8(void (*a1)(void *, void), int a2, id a3)
{
  v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68EF4();
  a1(v5, v6);
  sub_1B4DDC730(v5, v6);
}

uint64_t sub_1B4E54D68(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a5;
  v37 = a8;
  v35 = a7;
  v38 = a1;
  v12 = sub_1B4F67D54();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B4F67D74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v33 = v13;
    v34 = v17;
    v23 = v12;
    v24 = a2;
    v25 = *(result + 16);

    v26 = *(v25 + 16);

    v27 = swift_allocObject();
    v28 = v36;
    v29 = v37;
    v27[2] = v35;
    v27[3] = v29;
    v27[4] = a9;
    v27[5] = v28;
    v30 = v38;
    v27[6] = a6;
    v27[7] = v30;
    v27[8] = v24;
    v27[9] = a3;
    aBlock[4] = sub_1B4E56684;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_119;
    v31 = _Block_copy(aBlock);

    sub_1B4DD3000(v30, v24);
    v32 = a3;
    sub_1B4F67D64();
    v39 = MEMORY[0x1E69E7CC0];
    sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v21, v16, v31);
    _Block_release(v31);

    (*(v33 + 8))(v16, v23);
    (*(v18 + 8))(v21, v34);
  }

  return result;
}

uint64_t sub_1B4E550B0(void (*a1)(char *), uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[1] = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v12 = sub_1B4F68F14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v19 - v15;
  sub_1B4DD3000(a3, a4);
  v17 = a5;
  sub_1B4F68ED4();
  a1(v16);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1B4E55204(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v41 = a7;
  v42 = a8;
  v43 = a5;
  v44 = a1;
  v15 = sub_1B4F67D54();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B4F67D74();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v38 = v16;
    v39 = v21;
    v40 = v20;
    v36 = a3;
    v37 = v15;
    v26 = a6;
    v27 = *(result + 16);

    v28 = *(v27 + 16);

    v29 = swift_allocObject();
    v30 = v42;
    v29[2] = v41;
    v29[3] = v30;
    v29[4] = a9;
    v29[5] = a10;
    v29[6] = a11;
    v29[7] = a12;
    v31 = v44;
    v29[8] = v43;
    v29[9] = v26;
    v29[10] = v31;
    v29[11] = a2;
    v32 = v36;
    v29[12] = v36;
    aBlock[4] = sub_1B4E565CC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B4DCA7B0;
    aBlock[3] = &block_descriptor_103;
    v33 = _Block_copy(aBlock);

    sub_1B4DD3000(v31, a2);
    v34 = v32;
    sub_1B4F67D64();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1B4DE15DC(&qword_1EDB71F90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
    sub_1B4DCBA40();
    v35 = v37;
    sub_1B4F688A4();
    MEMORY[0x1B8C81F10](0, v24, v19, v33);
    _Block_release(v33);

    (*(v38 + 8))(v19, v35);
    (*(v39 + 8))(v24, v40);
  }

  return result;
}

uint64_t sub_1B4E55560(void (*a1)(char *), uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v14 = sub_1B4F68F14();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v21 - v17;
  sub_1B4DD3000(a3, a4);
  v19 = a5;
  sub_1B4F68ED4();
  v22(v18);
  return (*(v15 + 8))(v18, v14);
}

Swift::Void __swiftcall XPCClient.broadcastEvent(_:)(SeymourClient::TransportEvent a1)
{
  v2 = v1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v14);
  v16 = &v28 - v15;
  v17 = *v3;
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
  sub_1B4F675F4();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B4E5630C;
  *(v20 + 24) = v19;
  (*(v5 + 16))(v8, v12, v4);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = (v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v21, v8, v4);
  v24 = (v23 + v22);
  *v24 = sub_1B4E56328;
  v24[1] = v20;
  sub_1B4F675F4();
  (*(v5 + 8))(v12, v4);
  v25 = v29;
  v26 = sub_1B4F67654();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  v26(sub_1B4DDA420, v27);

  (*(v13 + 8))(v16, v25);
}

uint64_t XPCClient.broadcastEvent<A>(_:payload:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v40 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v41, v12);
  v39 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v37[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v37[-v20];
  v38 = *a1;
  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  *(v22 + 24) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7610, &qword_1B4F71818);
  sub_1B4F675F4();
  (*(v8 + 16))(&v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v40, a3);
  v23 = (*(v8 + 80) + 41) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v26 = v42;
  v25 = v43;
  *(v24 + 16) = a3;
  *(v24 + 24) = v26;
  *(v24 + 32) = v25;
  *(v24 + 40) = v38;
  (*(v8 + 32))(v24 + v23, &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a3);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B4E56330;
  *(v27 + 24) = v24;
  v28 = v39;
  v29 = v41;
  (*(v10 + 16))(v39, v16, v41);
  v30 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v31 = swift_allocObject();
  (*(v10 + 32))(v31 + v30, v28, v29);
  v32 = (v31 + ((v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = sub_1B4E56918;
  v32[1] = v27;
  sub_1B4F675F4();
  (*(v10 + 8))(v16, v29);
  v33 = v44;
  v34 = sub_1B4F67654();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v34(sub_1B4E56960, v35);

  return (*(v45 + 8))(v21, v33);
}

void sub_1B4E55EA8(void **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_1B4F66E04();
  if (v5)
  {

    v10 = 0;
  }

  else
  {
    v11 = v8;
    v12 = v9;
    v10 = sub_1B4F64884();
    sub_1B4DD2B70(v11, v12);
  }

  [v7 receiveEvent:qword_1B4F72510[a2] data:v10];
}

uint64_t XPCClient.hashValue.getter()
{
  sub_1B4F68E84();
  sub_1B4F68774();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E5616C()
{
  sub_1B4F68E84();
  sub_1B4F68774();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E561DC(uint64_t a1)
{
  sub_1B4F68E84();
  sub_1B4F68774();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E56268(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  swift_unknownObjectRetain();

  return sub_1B4F675F4();
}

uint64_t getEnumTagSinglePayload for XPCClient.ConnectionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCClient.ConnectionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4E5653C()
{
  result = qword_1EB8F52A0;
  if (!qword_1EB8F52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52A0);
  }

  return result;
}

uint64_t objectdestroy_105Tm(void (*a1)(void))
{
  a1(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 64, 7);
}

uint64_t objectdestroy_128Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroy_87Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroy_169Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t HealthKitStandaloneMindfulSessionJobAdded.healthKitStandaloneMindfulSessionJob.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F674F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HealthKitStandaloneMindfulSessionJobAdded.init(healthKitStandaloneMindfulSessionJob:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F674F4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for HealthKitStandaloneMindfulSessionJobAdded(uint64_t a1)
{
  result = qword_1EDB70330;
  if (!qword_1EDB70330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E56AC0(uint64_t a1)
{
  result = sub_1B4F674F4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *RecommendationClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4E592D0(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4E56C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, a2, a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RecommendationClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RecommendationClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t RecommendationClient.deduplicateOnboardingSurveyResults()()
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB70470);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4F810C0;
  v3._object = 0x80000001B4F810F0;
  v3._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 177;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t RecommendationClient.deleteAllOnboardingSurveyResults()()
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB70470);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4F810C0;
  v3._object = 0x80000001B4F81120;
  v3._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 173;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t RecommendationClient.evaluateAllRecommendations()()
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB70470);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4F810C0;
  v3._object = 0x80000001B4F81150;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 164;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t RecommendationClient.evaluateRecommendedGuidedAudioWorkouts()()
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB70470);
  v2._object = 0x80000001B4F810C0;
  v3._object = 0x80000001B4F81170;
  v2._countAndFlagsBits = 0xD000000000000028;
  v3._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 168;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v8 = sub_1B4E2F2A0(&qword_1EDB70150, &qword_1EB8F52A8, &qword_1B4F72730);
  v9 = sub_1B4E594C8();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t RecommendationClient.fetchRemoteForYouCanvas()()
{
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB70450);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4F810C0;
  v3._object = 0x80000001B4F811A0;
  v3._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 99;
  v6 = *(v4 + 24);
  v7 = sub_1B4F664F4();
  return v6(&v9, v7, MEMORY[0x1E69CC358], MEMORY[0x1E69CC360], ObjectType, v4);
}

uint64_t RecommendationClient.fetchOnboardingDetail()()
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB70470);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4F810C0;
  v3._object = 0x80000001B4F811C0;
  v3._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 174;
  v6 = *(v4 + 24);
  v7 = sub_1B4F65DC4();
  return v6(&v9, v7, MEMORY[0x1E69CB7D0], MEMORY[0x1E69CB7D8], ObjectType, v4);
}

uint64_t RecommendationClient.fetchPersonalizationInferenceResponse(options:)(uint64_t a1)
{
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB70450);
  v4._object = 0x80000001B4F810C0;
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  v5._object = 0x80000001B4F811E0;
  v4._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 169;
  v8 = *(v6 + 32);
  v9 = sub_1B4F67574();
  v10 = sub_1B4F673B4();
  return v8(&v12, a1, v9, v10, MEMORY[0x1E69CD220], MEMORY[0x1E69CD228], MEMORY[0x1E69CD030], MEMORY[0x1E69CD038], ObjectType, v6);
}

uint64_t RecommendationClient.fetchPersonalizedWorkoutPlans(request:)(uint64_t a1)
{
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB70450);
  v4._countAndFlagsBits = 0xD000000000000028;
  v4._object = 0x80000001B4F810C0;
  v5._object = 0x80000001B4F81210;
  v5._countAndFlagsBits = 0xD000000000000027;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 178;
  v8 = *(v6 + 32);
  v9 = sub_1B4F674A4();
  v10 = sub_1B4F66A84();
  return v8(&v12, a1, v9, v10, MEMORY[0x1E69CD148], MEMORY[0x1E69CD150], MEMORY[0x1E69CC990], MEMORY[0x1E69CC998], ObjectType, v6);
}

uint64_t RecommendationClient.fetchPersonalizationAwardProgressReferences()()
{
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB70450);
  v2._object = 0x80000001B4F810C0;
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F81240;
  v2._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 175;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52B0, &qword_1B4F72738);
  v8 = sub_1B4E5954C();
  v9 = sub_1B4E595D0();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t RecommendationClient.makePersonalizationInferenceRequest(options:)(uint64_t a1)
{
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB70450);
  v4._object = 0x80000001B4F810C0;
  v5._countAndFlagsBits = 0xD00000000000002DLL;
  v5._object = 0x80000001B4F81270;
  v4._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 170;
  v8 = *(v6 + 32);
  v9 = sub_1B4F67574();
  v10 = sub_1B4F67374();
  return v8(&v12, a1, v9, v10, MEMORY[0x1E69CD220], MEMORY[0x1E69CD228], MEMORY[0x1E69CCFC8], MEMORY[0x1E69CCFD0], ObjectType, v6);
}

uint64_t RecommendationClient.queryAllRecommendations()()
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB70470);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4F810C0;
  v3._object = 0x80000001B4F812A0;
  v3._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 165;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52D0, &qword_1B4F72740);
  v8 = sub_1B4E59684();
  v9 = sub_1B4E59708();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t RecommendationClient.queryAllOnboardingSurveyResults()()
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB70470);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4F810C0;
  v3._object = 0x80000001B4F812C0;
  v3._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 176;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52F0, &qword_1B4F72748);
  v8 = sub_1B4E597BC();
  v9 = sub_1B4E59840();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t RecommendationClient.queryOnboardingSurveyResult()()
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB70470);
  v2._countAndFlagsBits = 0xD000000000000028;
  v2._object = 0x80000001B4F810C0;
  v3._object = 0x80000001B4F812F0;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 171;
  v6 = *(v4 + 24);
  v7 = sub_1B4F66604();
  return v6(&v9, v7, MEMORY[0x1E69CC510], MEMORY[0x1E69CC518], ObjectType, v4);
}

uint64_t RecommendationClient.queryRecommendations(for:)(char a1)
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB70470);
  v4._countAndFlagsBits = 0xD000000000000028;
  v4._object = 0x80000001B4F810C0;
  v5._object = 0x80000001B4F81310;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 166;
  v13 = a1;
  v8 = *(v6 + 32);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52D0, &qword_1B4F72740);
  v10 = sub_1B4E59684();
  v11 = sub_1B4E59708();
  return v8(&v14, &v13, MEMORY[0x1E69CC6E8], v9, MEMORY[0x1E69CC6D8], MEMORY[0x1E69CC6E0], v10, v11, ObjectType, v6);
}

uint64_t RecommendationClient.queryRelatedWorkouts(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4F67C54();
  __swift_project_value_buffer(v5, qword_1EDB70470);
  v6._countAndFlagsBits = 0xD000000000000028;
  v6._object = 0x80000001B4F810C0;
  v7._object = 0x80000001B4F81330;
  v7._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v6, v7);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = 167;
  v15[0] = a1;
  v15[1] = a2;
  v10 = *(v8 + 32);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5310, &qword_1B4F72750);
  v12 = sub_1B4E2F2A0(&qword_1EDB6DBC0, &qword_1EB8F5310, &qword_1B4F72750);
  v13 = sub_1B4E598F4();
  return v10(&v16, v15, MEMORY[0x1E69E6158], v11, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], v12, v13, ObjectType, v8);
}

uint64_t RecommendationClient.updateOnboardingSurveyResult(_:)(uint64_t a1)
{
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB70470);
  v4._countAndFlagsBits = 0xD000000000000028;
  v4._object = 0x80000001B4F810C0;
  v5._object = 0x80000001B4F81350;
  v5._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 172;
  v8 = *(v6 + 16);
  v9 = sub_1B4F66604();
  return v8(&v11, a1, v9, MEMORY[0x1E69CC510], MEMORY[0x1E69CC518], ObjectType, v6);
}

uint64_t sub_1B4E58034()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F810F0;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 177;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4E58120()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F81120;
  v4._countAndFlagsBits = 0xD000000000000022;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 173;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4E5820C()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F81150;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 164;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4E582F8()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F81170;
  v3._countAndFlagsBits = 0xD000000000000028;
  v4._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 168;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v9 = sub_1B4E2F2A0(&qword_1EDB70150, &qword_1EB8F52A8, &qword_1B4F72730);
  v10 = sub_1B4E594C8();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4E5844C()
{
  v1 = *v0;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70450);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F811A0;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 99;
  v7 = *(v5 + 24);
  v8 = sub_1B4F664F4();
  return v7(&v10, v8, MEMORY[0x1E69CC358], MEMORY[0x1E69CC360], ObjectType, v5);
}

uint64_t sub_1B4E58560()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F811C0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 174;
  v7 = *(v5 + 24);
  v8 = sub_1B4F65DC4();
  return v7(&v10, v8, MEMORY[0x1E69CB7D0], MEMORY[0x1E69CB7D8], ObjectType, v5);
}

uint64_t sub_1B4E58674(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70450);
  v5._object = 0x80000001B4F810C0;
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x80000001B4F811E0;
  v5._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 169;
  v9 = *(v7 + 32);
  v10 = sub_1B4F67574();
  v11 = sub_1B4F673B4();
  return v9(&v13, a1, v10, v11, MEMORY[0x1E69CD220], MEMORY[0x1E69CD228], MEMORY[0x1E69CD030], MEMORY[0x1E69CD038], ObjectType, v7);
}

uint64_t sub_1B4E587B4(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70450);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001B4F810C0;
  v6._object = 0x80000001B4F81210;
  v6._countAndFlagsBits = 0xD000000000000027;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 178;
  v9 = *(v7 + 32);
  v10 = sub_1B4F674A4();
  v11 = sub_1B4F66A84();
  return v9(&v13, a1, v10, v11, MEMORY[0x1E69CD148], MEMORY[0x1E69CD150], MEMORY[0x1E69CC990], MEMORY[0x1E69CC998], ObjectType, v7);
}

uint64_t sub_1B4E588F4()
{
  v1 = *v0;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70450);
  v3._object = 0x80000001B4F810C0;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  v4._object = 0x80000001B4F81240;
  v3._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 175;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52B0, &qword_1B4F72738);
  v9 = sub_1B4E5954C();
  v10 = sub_1B4E595D0();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4E58A28(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB70448 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70450);
  v5._object = 0x80000001B4F810C0;
  v6._countAndFlagsBits = 0xD00000000000002DLL;
  v6._object = 0x80000001B4F81270;
  v5._countAndFlagsBits = 0xD000000000000028;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v13 = 170;
  v9 = *(v7 + 32);
  v10 = sub_1B4F67574();
  v11 = sub_1B4F67374();
  return v9(&v13, a1, v10, v11, MEMORY[0x1E69CD220], MEMORY[0x1E69CD228], MEMORY[0x1E69CCFC8], MEMORY[0x1E69CCFD0], ObjectType, v7);
}

uint64_t sub_1B4E58B6C()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F812A0;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 165;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52D0, &qword_1B4F72740);
  v9 = sub_1B4E59684();
  v10 = sub_1B4E59708();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4E58C9C()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F812C0;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 176;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52F0, &qword_1B4F72748);
  v9 = sub_1B4E597BC();
  v10 = sub_1B4E59840();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4E58DCC()
{
  v1 = *v0;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB70470);
  v3._countAndFlagsBits = 0xD000000000000028;
  v3._object = 0x80000001B4F810C0;
  v4._object = 0x80000001B4F812F0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 171;
  v7 = *(v5 + 24);
  v8 = sub_1B4F66604();
  return v7(&v10, v8, MEMORY[0x1E69CC510], MEMORY[0x1E69CC518], ObjectType, v5);
}

uint64_t sub_1B4E58EE0(char a1)
{
  v3 = *v1;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70470);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001B4F810C0;
  v6._object = 0x80000001B4F81310;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 166;
  v14 = a1;
  v9 = *(v7 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52D0, &qword_1B4F72740);
  v11 = sub_1B4E59684();
  v12 = sub_1B4E59708();
  return v9(&v15, &v14, MEMORY[0x1E69CC6E8], v10, MEMORY[0x1E69CC6D8], MEMORY[0x1E69CC6E0], v11, v12, ObjectType, v7);
}

uint64_t sub_1B4E59030(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB70470);
  v7._countAndFlagsBits = 0xD000000000000028;
  v7._object = 0x80000001B4F810C0;
  v8._object = 0x80000001B4F81330;
  v8._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v7, v8);
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v17 = 167;
  v16[0] = a1;
  v16[1] = a2;
  v11 = *(v9 + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5310, &qword_1B4F72750);
  v13 = sub_1B4E2F2A0(&qword_1EDB6DBC0, &qword_1EB8F5310, &qword_1B4F72750);
  v14 = sub_1B4E598F4();
  return v11(&v17, v16, MEMORY[0x1E69E6158], v12, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], v13, v14, ObjectType, v9);
}

uint64_t sub_1B4E591AC(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB70468 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB70470);
  v5._countAndFlagsBits = 0xD000000000000028;
  v5._object = 0x80000001B4F810C0;
  v6._object = 0x80000001B4F81350;
  v6._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 172;
  v9 = *(v7 + 16);
  v10 = sub_1B4F66604();
  return v9(&v12, a1, v10, MEMORY[0x1E69CC510], MEMORY[0x1E69CC518], ObjectType, v7);
}

void *sub_1B4E592D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v11 = a1;
  v10 = 17;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v10, sub_1B4E59A98, v7, ObjectType, &protocol witness table for XPCClient);

  v11 = a1;
  v10 = 18;
  v8 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v10, sub_1B4E59A9C, v8, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E59448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC74D4(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4E594C8()
{
  result = qword_1EDB70148;
  if (!qword_1EDB70148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52A8, &qword_1B4F72730);
    sub_1B4DC53AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70148);
  }

  return result;
}

unint64_t sub_1B4E5954C()
{
  result = qword_1EB8F52B8;
  if (!qword_1EB8F52B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52B0, &qword_1B4F72738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52B8);
  }

  return result;
}

unint64_t sub_1B4E595D0()
{
  result = qword_1EB8F52C0;
  if (!qword_1EB8F52C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52B0, &qword_1B4F72738);
    sub_1B4E599A8(&qword_1EB8F52C8, MEMORY[0x1E69CD200], MEMORY[0x1E69CD1F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52C0);
  }

  return result;
}

unint64_t sub_1B4E59684()
{
  result = qword_1EB8F52D8;
  if (!qword_1EB8F52D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52D0, &qword_1B4F72740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52D8);
  }

  return result;
}

unint64_t sub_1B4E59708()
{
  result = qword_1EB8F52E0;
  if (!qword_1EB8F52E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52D0, &qword_1B4F72740);
    sub_1B4E599A8(&qword_1EB8F52E8, MEMORY[0x1E69CB4A8], MEMORY[0x1E69CB498]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52E0);
  }

  return result;
}

unint64_t sub_1B4E597BC()
{
  result = qword_1EB8F52F8;
  if (!qword_1EB8F52F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52F0, &qword_1B4F72748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F52F8);
  }

  return result;
}

unint64_t sub_1B4E59840()
{
  result = qword_1EB8F5300;
  if (!qword_1EB8F5300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52F0, &qword_1B4F72748);
    sub_1B4E599A8(&qword_1EB8F5308, MEMORY[0x1E69CC528], MEMORY[0x1E69CC520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5300);
  }

  return result;
}

unint64_t sub_1B4E598F4()
{
  result = qword_1EDB6DBB8;
  if (!qword_1EDB6DBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5310, &qword_1B4F72750);
    sub_1B4E599A8(&qword_1EDB70050, MEMORY[0x1E69CC888], MEMORY[0x1E69CC878]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBB8);
  }

  return result;
}

uint64_t sub_1B4E599A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HeartRateDeviceConnection.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F66B54();

  return sub_1B4F66B64();
}

uint64_t sub_1B4E59B08(double a1)
{
  sub_1B4F66B54();

  return sub_1B4F66B64();
}

uint64_t RemoteBrowsingJournalEntry.property.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RemoteBrowsingJournalEntry(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4E59C58(v1, v6);
  return sub_1B4E5AF18(v6, a1, type metadata accessor for RemoteBrowsingJournalProperty);
}

uint64_t type metadata accessor for RemoteBrowsingJournalEntry(uint64_t a1)
{
  result = qword_1EDB6E700;
  if (!qword_1EDB6E700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E59C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingJournalEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4E59CD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4E5BA6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4E59D08(uint64_t a1)
{
  v2 = sub_1B4E5A530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E59D44(uint64_t a1)
{
  v2 = sub_1B4E5A530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E59D80(uint64_t a1)
{
  v2 = sub_1B4E5A62C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E59DBC(uint64_t a1)
{
  v2 = sub_1B4E5A62C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E59DF8(uint64_t a1)
{
  v2 = sub_1B4E5A5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E59E34(uint64_t a1)
{
  v2 = sub_1B4E5A5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E59E70(uint64_t a1)
{
  v2 = sub_1B4E5A584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E59EAC(uint64_t a1)
{
  v2 = sub_1B4E5A584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteBrowsingJournalEntry.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5318, &qword_1B4F727C0);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v49 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5320, &qword_1B4F727C8);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v46 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5328, &qword_1B4F727D0);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v43 = &v42 - v10;
  v53 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  MEMORY[0x1EEE9AC00](v53, v11);
  v42 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for RemoteBrowsingJournalEntry(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5330, &qword_1B4F727D8);
  v25 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v26);
  v28 = &v42 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4E5A530();
  sub_1B4F68F54();
  sub_1B4E59C58(v52, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = (v25 + 8);
  if (!EnumCaseMultiPayload)
  {
    sub_1B4E5AF18(v24, v20, type metadata accessor for RemoteBrowsingJournalProperty);
    v55 = 0;
    sub_1B4E5A62C();
    v35 = v43;
    v32 = v54;
    sub_1B4F68CB4();
    sub_1B4E5B560(&qword_1EB8F5348, type metadata accessor for RemoteBrowsingJournalProperty, &protocol conformance descriptor for RemoteBrowsingJournalProperty);
    v36 = v45;
    sub_1B4F68CE4();
    (*(v44 + 8))(v35, v36);
    v34 = v20;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B4E5AF18(v24, v16, type metadata accessor for RemoteBrowsingJournalProperty);
    v56 = 1;
    sub_1B4E5A5D8();
    v31 = v46;
    v32 = v54;
    sub_1B4F68CB4();
    sub_1B4E5B560(&qword_1EB8F5348, type metadata accessor for RemoteBrowsingJournalProperty, &protocol conformance descriptor for RemoteBrowsingJournalProperty);
    v33 = v48;
    sub_1B4F68CE4();
    (*(v47 + 8))(v31, v33);
    v34 = v16;
LABEL_5:
    sub_1B4E5BBE0(v34, type metadata accessor for RemoteBrowsingJournalProperty);
    return (*v30)(v28, v32);
  }

  v38 = v42;
  sub_1B4E5AF18(v24, v42, type metadata accessor for RemoteBrowsingJournalProperty);
  v57 = 2;
  sub_1B4E5A584();
  v39 = v49;
  v40 = v54;
  sub_1B4F68CB4();
  sub_1B4E5B560(&qword_1EB8F5348, type metadata accessor for RemoteBrowsingJournalProperty, &protocol conformance descriptor for RemoteBrowsingJournalProperty);
  v41 = v51;
  sub_1B4F68CE4();
  (*(v50 + 8))(v39, v41);
  sub_1B4E5BBE0(v38, type metadata accessor for RemoteBrowsingJournalProperty);
  return (*v30)(v28, v40);
}

unint64_t sub_1B4E5A530()
{
  result = qword_1EB8F5338;
  if (!qword_1EB8F5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5338);
  }

  return result;
}

unint64_t sub_1B4E5A584()
{
  result = qword_1EB8F5340;
  if (!qword_1EB8F5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5340);
  }

  return result;
}

unint64_t sub_1B4E5A5D8()
{
  result = qword_1EB8F5350;
  if (!qword_1EB8F5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5350);
  }

  return result;
}

unint64_t sub_1B4E5A62C()
{
  result = qword_1EB8F5358;
  if (!qword_1EB8F5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5358);
  }

  return result;
}

uint64_t RemoteBrowsingJournalEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5360, &qword_1B4F727E0);
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v75 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5368, &qword_1B4F727E8);
  v8 = *(v7 - 8);
  v69 = v7;
  v70 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v74 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5370, &qword_1B4F727F0);
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v73 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5378, &unk_1B4F727F8);
  v77 = *(v14 - 8);
  v78 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v62 - v16;
  v18 = type metadata accessor for RemoteBrowsingJournalEntry(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v62 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v62 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v62 - v32;
  v34 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1B4E5A530();
  v35 = v79;
  sub_1B4F68F44();
  if (!v35)
  {
    v63 = v25;
    v64 = v29;
    v65 = v21;
    v37 = v73;
    v36 = v74;
    v79 = 0;
    v66 = v18;
    v39 = v75;
    v38 = v76;
    v40 = v78;
    v41 = sub_1B4F68CA4();
    v42 = (2 * *(v41 + 16)) | 1;
    v81 = v41;
    v82 = v41 + 32;
    v83 = 0;
    v84 = v42;
    v43 = sub_1B4E2DC08();
    if (v43 == 3 || v83 != v84 >> 1)
    {
      v47 = sub_1B4F68A04();
      swift_allocError();
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C8, &qword_1B4F6DED0);
      *v49 = v66;
      sub_1B4F68C64();
      sub_1B4F689F4();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
      swift_willThrow();
    }

    else
    {
      if (v43)
      {
        if (v43 == 1)
        {
          v85 = 1;
          sub_1B4E5A5D8();
          v44 = v79;
          sub_1B4F68C54();
          v45 = v38;
          v46 = v77;
          if (v44)
          {
            goto LABEL_9;
          }

          v79 = v33;
          type metadata accessor for RemoteBrowsingJournalProperty(0);
          sub_1B4E5B560(&qword_1EB8F5380, type metadata accessor for RemoteBrowsingJournalProperty, &protocol conformance descriptor for RemoteBrowsingJournalProperty);
          v59 = v63;
          v60 = v69;
          sub_1B4F68C94();
          (*(v70 + 8))(v36, v60);
          (*(v46 + 8))(v17, v78);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v52 = v59;
        }

        else
        {
          v85 = 2;
          sub_1B4E5A584();
          v54 = v39;
          v55 = v79;
          sub_1B4F68C54();
          v56 = v77;
          if (v55)
          {
            goto LABEL_9;
          }

          v45 = v38;
          v79 = v33;
          type metadata accessor for RemoteBrowsingJournalProperty(0);
          sub_1B4E5B560(&qword_1EB8F5380, type metadata accessor for RemoteBrowsingJournalProperty, &protocol conformance descriptor for RemoteBrowsingJournalProperty);
          v57 = v65;
          v58 = v71;
          sub_1B4F68C94();
          (*(v72 + 8))(v54, v58);
          (*(v56 + 8))(v17, v40);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v52 = v57;
        }

LABEL_17:
        v61 = v79;
        sub_1B4E5AF18(v52, v79, type metadata accessor for RemoteBrowsingJournalEntry);
        sub_1B4E5AF18(v61, v45, type metadata accessor for RemoteBrowsingJournalEntry);
        return __swift_destroy_boxed_opaque_existential_1Tm(v80);
      }

      v85 = 0;
      sub_1B4E5A62C();
      v51 = v79;
      sub_1B4F68C54();
      if (!v51)
      {
        v79 = v33;
        type metadata accessor for RemoteBrowsingJournalProperty(0);
        sub_1B4E5B560(&qword_1EB8F5380, type metadata accessor for RemoteBrowsingJournalProperty, &protocol conformance descriptor for RemoteBrowsingJournalProperty);
        v52 = v64;
        v53 = v68;
        sub_1B4F68C94();
        (*(v67 + 8))(v37, v53);
        (*(v77 + 8))(v17, v40);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v45 = v38;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v77 + 8))(v17, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v80);
}

uint64_t sub_1B4E5AF18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RemoteBrowsingJournalEntry.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RemoteBrowsingJournalEntry(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4E59C58(v2, v11);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  sub_1B4E5AF18(v11, v7, type metadata accessor for RemoteBrowsingJournalProperty);
  MEMORY[0x1B8C82740](v2);
  RemoteBrowsingJournalProperty.hash(into:)(a1);
  return sub_1B4E5BBE0(v7, type metadata accessor for RemoteBrowsingJournalProperty);
}

uint64_t RemoteBrowsingJournalEntry.hashValue.getter()
{
  sub_1B4F68E84();
  RemoteBrowsingJournalEntry.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E5B11C()
{
  sub_1B4F68E84();
  RemoteBrowsingJournalEntry.hash(into:)(v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4E5B160(uint64_t a1)
{
  sub_1B4F68E84();
  RemoteBrowsingJournalEntry.hash(into:)(v2);
  return sub_1B4F68EC4();
}

uint64_t _s13SeymourClient26RemoteBrowsingJournalEntryO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  v15 = type metadata accessor for RemoteBrowsingJournalEntry(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v39 - v21);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v39 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F53F0, &unk_1B4F72D88);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v39 - v29;
  v32 = *(v31 + 56);
  sub_1B4E59C58(a1, &v39 - v29);
  sub_1B4E59C58(a2, &v30[v32]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4E59C58(v30, v22);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B4E5AF18(&v30[v32], v10, type metadata accessor for RemoteBrowsingJournalProperty);
        v34 = _s13SeymourClient29RemoteBrowsingJournalPropertyO2eeoiySbAC_ACtFZ_0(v22, v10);
        sub_1B4E5BBE0(v10, type metadata accessor for RemoteBrowsingJournalProperty);
        v35 = v22;
LABEL_12:
        sub_1B4E5BBE0(v35, type metadata accessor for RemoteBrowsingJournalProperty);
        sub_1B4E5BBE0(v30, type metadata accessor for RemoteBrowsingJournalEntry);
        return v34 & 1;
      }

      v18 = v22;
    }

    else
    {
      sub_1B4E59C58(v30, v18);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = &v30[v32];
        v37 = v40;
        sub_1B4E5AF18(v36, v40, type metadata accessor for RemoteBrowsingJournalProperty);
        v34 = _s13SeymourClient29RemoteBrowsingJournalPropertyO2eeoiySbAC_ACtFZ_0(v18, v37);
        sub_1B4E5BBE0(v37, type metadata accessor for RemoteBrowsingJournalProperty);
        v35 = v18;
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1B4E59C58(v30, v26);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4E5AF18(&v30[v32], v14, type metadata accessor for RemoteBrowsingJournalProperty);
      v34 = _s13SeymourClient29RemoteBrowsingJournalPropertyO2eeoiySbAC_ACtFZ_0(v26, v14);
      sub_1B4E5BBE0(v14, type metadata accessor for RemoteBrowsingJournalProperty);
      v35 = v26;
      goto LABEL_12;
    }

    v18 = v26;
  }

  sub_1B4E5BBE0(v18, type metadata accessor for RemoteBrowsingJournalProperty);
  sub_1B4E5BB78(v30);
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_1B4E5B560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4E5B5A8(uint64_t a1)
{
  result = type metadata accessor for RemoteBrowsingJournalProperty(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4E5B650()
{
  result = qword_1EB8F5390;
  if (!qword_1EB8F5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5390);
  }

  return result;
}

unint64_t sub_1B4E5B6A8()
{
  result = qword_1EB8F5398;
  if (!qword_1EB8F5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5398);
  }

  return result;
}

unint64_t sub_1B4E5B700()
{
  result = qword_1EB8F53A0;
  if (!qword_1EB8F53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53A0);
  }

  return result;
}

unint64_t sub_1B4E5B758()
{
  result = qword_1EB8F53A8;
  if (!qword_1EB8F53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53A8);
  }

  return result;
}

unint64_t sub_1B4E5B7B0()
{
  result = qword_1EB8F53B0;
  if (!qword_1EB8F53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53B0);
  }

  return result;
}

unint64_t sub_1B4E5B808()
{
  result = qword_1EB8F53B8;
  if (!qword_1EB8F53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53B8);
  }

  return result;
}

unint64_t sub_1B4E5B860()
{
  result = qword_1EB8F53C0;
  if (!qword_1EB8F53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53C0);
  }

  return result;
}

unint64_t sub_1B4E5B8B8()
{
  result = qword_1EB8F53C8;
  if (!qword_1EB8F53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53C8);
  }

  return result;
}

unint64_t sub_1B4E5B910()
{
  result = qword_1EB8F53D0;
  if (!qword_1EB8F53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53D0);
  }

  return result;
}

unint64_t sub_1B4E5B968()
{
  result = qword_1EB8F53D8;
  if (!qword_1EB8F53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53D8);
  }

  return result;
}

unint64_t sub_1B4E5B9C0()
{
  result = qword_1EB8F53E0;
  if (!qword_1EB8F53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53E0);
  }

  return result;
}

unint64_t sub_1B4E5BA18()
{
  result = qword_1EB8F53E8;
  if (!qword_1EB8F53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F53E8);
  }

  return result;
}

uint64_t sub_1B4E5BA6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747265736E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B4F68D54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65766F6D6572 && a2 == 0xE600000000000000 || (sub_1B4F68D54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4F68D54();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B4E5BB78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F53F0, &unk_1B4F72D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4E5BBE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AnalyticsErrorTransformable<>.errorCode.getter(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1, v1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1B4F67F94();
}

uint64_t AnalyticsErrorTransformable<>.errorDomain.getter(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1B4F67F94();
}

uint64_t sub_1B4E5BEE0(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1, v1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1B4F67F94();
}

uint64_t PersonalizationInferenceRequestHashes.init(canvas:catalogData:userAwardData:userData:userHistoryData:userLibraryData:userOnboardingData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v108 = a7;
  v109 = a6;
  v110 = a5;
  v111 = a4;
  v107 = sub_1B4F67E24();
  v13 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v14);
  v106 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B4F664F4();
  v17 = sub_1B4F66E04();
  if (v8)
  {

LABEL_3:
    v19 = v110;
    v29 = sub_1B4F67434();
    (*(*(v29 - 8) + 8))(v108, v29);
    v30 = sub_1B4F67264();
    (*(*(v30 - 8) + 8))(v109, v30);
    v31 = sub_1B4F67254();
    (*(*(v31 - 8) + 8))(v19, v31);
    v32 = sub_1B4F668E4();
    (*(*(v32 - 8) + 8))(v111, v32);
    v33 = sub_1B4F66EA4();
    (*(*(v33 - 8) + 8))(a2, v33);
    return (*(*(v16 - 8) + 8))(a1, v16);
  }

  v20 = v17;
  v21 = v18;
  v102 = a3;
  v103 = v16;
  v99 = a8;
  v105 = a1;
  sub_1B4DD3014(v17, v18);
  v22 = v106;
  sub_1B4E5D3A0(v20, v21, v20, v21, 100000, v106);
  v112 = sub_1B4E5C9F8(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v100 = sub_1B4E5D5B8();
  v101 = v23;
  v98 = sub_1B4F67F34();
  v25 = v24;
  sub_1B4DD2B70(v20, v21);
  v26 = *(v13 + 8);
  v26(v22, v107);

  v27 = sub_1B4F66EA4();
  v104 = a2;
  v28 = sub_1B4F66E04();
  v95 = v25;
  v96 = v13 + 8;
  v35 = v28;
  v97 = v26;
  v37 = v36;
  sub_1B4DD3014(v28, v36);
  v38 = v106;
  sub_1B4E5D3A0(v35, v37, v35, v37, 100000, v106);
  v112 = sub_1B4E5C9F8(v38);
  v94 = sub_1B4F67F34();
  v40 = v39;
  v41 = v37;
  v42 = v97;
  sub_1B4DD2B70(v35, v41);
  v42(v38, v107);

  v112 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5490, &qword_1B4F730D8);
  sub_1B4E5D61C();
  v43 = sub_1B4F671D4();
  v16 = v103;
  v93 = v40;
  v44 = v43;
  v46 = v45;
  sub_1B4DD3014(v43, v45);
  v47 = v106;
  sub_1B4E5D3A0(v44, v46, v44, v46, 100000, v106);
  v48 = sub_1B4E5C9F8(v47);
  v92 = 0;
  v112 = v48;
  v91 = sub_1B4F67F34();
  v50 = v49;
  sub_1B4DD2B70(v44, v46);
  v97(v47, v107);

  v51 = sub_1B4F668E4();
  v52 = v92;
  v53 = sub_1B4F66E04();
  if (v52)
  {

    a2 = v104;
    a1 = v105;
    goto LABEL_3;
  }

  v90 = v51;
  v102 = v50;
  v92 = v27;
  v55 = v53;
  v56 = v54;
  sub_1B4DD3014(v53, v54);
  v57 = v106;
  sub_1B4E5D3A0(v55, v56, v55, v56, 100000, v106);
  v112 = sub_1B4E5C9F8(v57);
  v89 = sub_1B4F67F34();
  v59 = v58;
  sub_1B4DD2B70(v55, v56);
  v97(v57, v107);

  v60 = sub_1B4F67254();
  v61 = sub_1B4F66E04();
  v87 = v60;
  v88 = v59;
  v62 = v61;
  v64 = v63;
  sub_1B4DD3014(v61, v63);
  v65 = v106;
  sub_1B4E5D3A0(v62, v64, v62, v64, 100000, v106);
  v112 = sub_1B4E5C9F8(v65);
  v66 = sub_1B4F67F34();
  v68 = v67;
  sub_1B4DD2B70(v62, v64);
  v69 = v97;
  v97(v65, v107);

  v70 = sub_1B4F67264();
  v71 = sub_1B4F66E04();
  v83[2] = v66;
  v86 = v68;
  v84 = v70;
  v72 = v71;
  v73 = v69;
  v75 = v74;
  sub_1B4DD3014(v71, v74);
  v76 = v106;
  sub_1B4E5D3A0(v72, v75, v72, v75, 100000, v106);
  v112 = sub_1B4E5C9F8(v76);
  v83[1] = sub_1B4F67F34();
  v85 = v77;
  sub_1B4DD2B70(v72, v75);
  v73(v76, v107);

  v78 = sub_1B4F67434();
  v79 = sub_1B4F66E04();
  v81 = v80;
  sub_1B4DD3014(v79, v80);
  v82 = v106;
  sub_1B4E5D3A0(v79, v81, v79, v81, 100000, v106);
  v112 = sub_1B4E5C9F8(v82);
  v101 = sub_1B4F67F34();
  sub_1B4DD2B70(v79, v81);
  v97(v82, v107);

  sub_1B4F67554();
  (*(*(v78 - 8) + 8))(v108, v78);
  (*(*(v84 - 8) + 8))(v109);
  (*(*(v87 - 8) + 8))(v110);
  (*(*(v90 - 8) + 8))(v111);
  (*(*(v92 - 8) + 8))(v104);
  return (*(*(v16 - 8) + 8))(v105, v16);
}

void *sub_1B4E5C9F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B4F67E24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4E5D698(&qword_1EDB6DC00, MEMORY[0x1E69666B0], MEMORY[0x1E69666B8]);
  v9 = sub_1B4F680D4();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1B4E257A4(0, v9 & ~(v9 >> 63), 0);
  v10 = v39;
  (*(v5 + 16))(v8, a1, v4);
  result = sub_1B4F680C4();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = v38;
    if (v9)
    {
      v34 = v1;
      v13 = v37;
      *&v36 = *(v37 + 16);
      v35 = xmmword_1B4F6CF50;
      v14 = v38;
      while (v36 != v14)
      {
        if (v12 < 0)
        {
          goto LABEL_21;
        }

        if (v14 >= *(v13 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(v13 + 32 + v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5498, qword_1B4F730E0);
        v16 = swift_allocObject();
        *(v16 + 16) = v35;
        *(v16 + 56) = MEMORY[0x1E69E7508];
        *(v16 + 64) = MEMORY[0x1E69E7558];
        *(v16 + 32) = v15;
        result = sub_1B4F67F84();
        v39 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          v33 = result;
          v21 = v17;
          sub_1B4E257A4((v18 > 1), v19 + 1, 1);
          v17 = v21;
          result = v33;
          v10 = v39;
        }

        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = result;
        *(v20 + 40) = v17;
        ++v14;
        if (!--v9)
        {
          v38 = v14;
          v2 = v34;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v14 = v38;
LABEL_12:
      v22 = v37;
      v23 = *(v37 + 16);
      if (v14 == v23)
      {
LABEL_13:

        return v10;
      }

      v36 = xmmword_1B4F6CF50;
      while (v14 < v23)
      {
        v24 = v14 + 1;
        v25 = *(v22 + 32 + v14);
        v38 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5498, qword_1B4F730E0);
        v26 = swift_allocObject();
        *(v26 + 16) = v36;
        *(v26 + 56) = MEMORY[0x1E69E7508];
        *(v26 + 64) = MEMORY[0x1E69E7558];
        *(v26 + 32) = v25;
        result = sub_1B4F67F84();
        v39 = v10;
        v29 = *(v10 + 16);
        v28 = *(v10 + 24);
        if (v29 >= v28 >> 1)
        {
          *&v35 = result;
          v31 = v2;
          v32 = v27;
          sub_1B4E257A4((v28 > 1), v29 + 1, 1);
          v27 = v32;
          v2 = v31;
          result = v35;
          v10 = v39;
        }

        *(v10 + 16) = v29 + 1;
        v30 = v10 + 16 * v29;
        *(v30 + 32) = result;
        *(v30 + 40) = v27;
        v23 = *(v22 + 16);
        v14 = v38;
        if (v38 == v23)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4E5CDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v49 = a4;
  v47 = a2;
  v52[4] = *MEMORY[0x1E69E9840];
  v42 = sub_1B4F64854();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F67E14();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B4E5D698(qword_1EDB6DC08, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  sub_1B4F67E04();
  v48 = a1;
  if (a1)
  {
    v50 = v15;
    v51 = v16;
    v17 = a3 >> 62;
    v39 = v5;
    if ((a3 >> 62) > 1)
    {
      v20 = v42;
      v21 = a5;
      if (v17 == 2)
      {
        v23 = *(v47 + 16);
        v22 = *(v47 + 24);
        v24 = __OFSUB__(v22, v23);
        v18 = v22 - v23;
        if (v24)
        {
          goto LABEL_46;
        }

        if (v18 >= 1)
        {
LABEL_13:
          v25 = 0;
          LODWORD(v47) = *MEMORY[0x1E6969010];
          v26 = v45++;
          v46 = (v26 + 13);
          v41 = v21;
          v43 = v18;
          v44 = v12;
          while (1)
          {
            if (__OFSUB__(v18, v25))
            {
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
            }

            v27 = v18 - v25 >= v49 ? v49 : v18 - v25;
            (*v46)(v11, v47, v20);
            sub_1B4F64844();
            if (!v27)
            {
              break;
            }

            sub_1B4F64784();
            swift_allocObject();

            v28 = sub_1B4F64734();
            v29 = sub_1B4F64774();
            *v30 |= 0x8000000000000000;
            v29(v52, 0);
            v31 = sub_1B4EF9DA8(v28, v27);
            v33 = v32;

            (*v45)(v11, v20);
            v34 = v33 >> 62;
            if ((v33 >> 62) > 1)
            {
              if (v34 == 2)
              {
                v36 = *(v31 + 16);
                v37 = *(v31 + 24);

                if (sub_1B4F64744() && __OFSUB__(v36, sub_1B4F64764()))
                {
                  goto LABEL_44;
                }

                if (__OFSUB__(v37, v36))
                {
                  goto LABEL_43;
                }

LABEL_36:
                sub_1B4F64754();
                v12 = v44;
                sub_1B4F67DD4();
                sub_1B4DD2B70(v31, v33);
                sub_1B4DD2B70(v31, v33);
                v20 = v42;
                v24 = __OFADD__(v25, v27);
                v25 += v27;
                if (v24)
                {
                  goto LABEL_41;
                }

                goto LABEL_37;
              }

              goto LABEL_29;
            }

            if (v34)
            {
              if (v31 >> 32 < v31)
              {
                goto LABEL_42;
              }

              if (sub_1B4F64744() && __OFSUB__(v31, sub_1B4F64764()))
              {
                goto LABEL_45;
              }

              goto LABEL_36;
            }

            v52[0] = v31;
            LOWORD(v52[1]) = v33;
            BYTE2(v52[1]) = BYTE2(v33);
            BYTE3(v52[1]) = BYTE3(v33);
            BYTE4(v52[1]) = BYTE4(v33);
            BYTE5(v52[1]) = BYTE5(v33);
            v12 = v44;
LABEL_30:
            sub_1B4F67DD4();
            sub_1B4DD2B70(v31, v33);
            sub_1B4DD2B70(v31, v33);
            v24 = __OFADD__(v25, v27);
            v25 += v27;
            if (v24)
            {
              goto LABEL_41;
            }

LABEL_37:
            v18 = v43;
            if (v25 >= v43)
            {
              goto LABEL_38;
            }
          }

          v35 = sub_1B4F64844();
          v35(v48 + v25, 0);

          (*v45)(v11, v20);
          v31 = 0;
          v33 = 0xC000000000000000;
LABEL_29:
          v12 = v44;
          memset(v52, 0, 14);
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (v17)
      {
        if (__OFSUB__(HIDWORD(v47), v47))
        {
          goto LABEL_47;
        }

        v18 = HIDWORD(v47) - v47;
      }

      else
      {
        v18 = BYTE6(a3);
      }

      v20 = v42;
      v21 = a5;
      if (v18 >= 1)
      {
        goto LABEL_13;
      }
    }

LABEL_38:
    v19 = v50;
    sub_1B4F67DE4();
  }

  else
  {
    v19 = v15;
    sub_1B4F67DE4();
  }

  return (*(v40 + 8))(v19, v12);
}

uint64_t sub_1B4E5D3A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4;
  v7 = a3;
  v19[2] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v19, 0, 14);
      v9 = v19;
      goto LABEL_16;
    }

    v10 = a6;
    v11 = a5;
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = sub_1B4F64744();
    if (v14)
    {
      v15 = sub_1B4F64764();
      if (__OFSUB__(v13, v15))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v14 += v13 - v15;
    }

    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8)
  {
    v16 = a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a6;
      v11 = a5;
      v14 = sub_1B4F64744();
      if (!v14)
      {
LABEL_14:
        sub_1B4F64754();
        a6 = v10;
        v9 = v14;
        a3 = v7;
        a4 = v6;
        a5 = v11;
        goto LABEL_16;
      }

      v17 = sub_1B4F64764();
      if (!__OFSUB__(v16, v17))
      {
        v14 += v16 - v17;
        goto LABEL_14;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v19[0] = a1;
  LOWORD(v19[1]) = a2;
  BYTE2(v19[1]) = BYTE2(a2);
  BYTE3(v19[1]) = BYTE3(a2);
  BYTE4(v19[1]) = BYTE4(a2);
  BYTE5(v19[1]) = BYTE5(a2);
  v9 = v19;
LABEL_16:
  sub_1B4E5CDA0(v9, a3, a4, a5, a6);
  return sub_1B4DD2B70(v7, v6);
}

unint64_t sub_1B4E5D5B8()
{
  result = qword_1EDB6DB98;
  if (!qword_1EDB6DB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52A8, &qword_1B4F72730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DB98);
  }

  return result;
}

unint64_t sub_1B4E5D61C()
{
  result = qword_1EDB6DBA0;
  if (!qword_1EDB6DBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5490, &qword_1B4F730D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBA0);
  }

  return result;
}

uint64_t sub_1B4E5D698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t ServiceSubscription.dictionary()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v109 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v105 - v5;
  v7 = sub_1B4F64964();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v105 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v106 = &v105 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v105 - v16;
  v18 = sub_1B4E2BEAC(MEMORY[0x1E69E7CC0]);
  *&v114 = 0xD000000000000012;
  *(&v114 + 1) = 0x80000001B4F813B0;
  sub_1B4F68954();
  v19 = sub_1B4F66244();
  v20 = MEMORY[0x1E69E7360];
  v115 = MEMORY[0x1E69E7360];
  *&v114 = v19;
  sub_1B4E2C940(&v114, v113);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112 = v18;
  sub_1B4E5E6C8(v113, v116, isUniquelyReferenced_nonNull_native);
  sub_1B4DF4850(v116);
  v22 = v112;
  *&v114 = 0xD000000000000018;
  *(&v114 + 1) = 0x80000001B4F813D0;
  v23 = v8;
  sub_1B4F68954();
  v24 = sub_1B4F662B4();
  v115 = v20;
  *&v114 = v24;
  sub_1B4E2C940(&v114, v113);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v22;
  sub_1B4E5E6C8(v113, v116, v25);
  sub_1B4DF4850(v116);
  v26 = v112;
  sub_1B4F66234();
  v27 = *(v8 + 48);
  v111 = v7;
  v107 = v27;
  v108 = v8 + 48;
  v28 = v27(v6, 1, v7);
  v29 = MEMORY[0x1E69E63B0];
  v110 = v23;
  if (v28 == 1)
  {
    sub_1B4E5ECFC(v6);
  }

  else
  {
    v30 = v111;
    (*(v23 + 32))(v17, v6, v111);
    *&v114 = 0xD000000000000013;
    *(&v114 + 1) = 0x80000001B4F81590;
    sub_1B4F68954();
    sub_1B4F64924();
    sub_1B4F684A4();
    v115 = v29;
    *&v114 = v31;
    sub_1B4E2C940(&v114, v113);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v26;
    sub_1B4E5E6C8(v113, v116, v32);
    sub_1B4DF4850(v116);
    v26 = v112;
    (*(v23 + 8))(v17, v30);
  }

  v33 = sub_1B4F662C4();
  if ((v34 & 1) == 0)
  {
    v35 = v33;
    *&v114 = 0xD00000000000001DLL;
    *(&v114 + 1) = 0x80000001B4F81570;
    sub_1B4F68954();
    v115 = MEMORY[0x1E69E7360];
    *&v114 = v35;
    sub_1B4E2C940(&v114, v113);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v26;
    sub_1B4E5E6C8(v113, v116, v36);
    sub_1B4DF4850(v116);
    v26 = v112;
  }

  v37 = sub_1B4F662F4();
  if (v38)
  {
    v39 = v29;
  }

  else
  {
    v40 = v37;
    *&v114 = 0xD00000000000001FLL;
    *(&v114 + 1) = 0x80000001B4F81550;
    sub_1B4F68954();
    v39 = v29;
    v115 = v29;
    *&v114 = v40;
    sub_1B4E2C940(&v114, v113);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v26;
    sub_1B4E5E6C8(v113, v116, v41);
    sub_1B4DF4850(v116);
    v26 = v112;
  }

  *&v114 = 0xD00000000000001BLL;
  *(&v114 + 1) = 0x80000001B4F813F0;
  v42 = MEMORY[0x1E69E6158];
  sub_1B4F68954();
  v43 = sub_1B4F66254();
  v44 = MEMORY[0x1E69E6370];
  v115 = MEMORY[0x1E69E6370];
  LOBYTE(v114) = v43 & 1;
  sub_1B4E2C940(&v114, v113);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v26;
  sub_1B4E5E6C8(v113, v116, v45);
  sub_1B4DF4850(v116);
  v46 = v112;
  *&v114 = 0xD000000000000017;
  *(&v114 + 1) = 0x80000001B4F81410;
  sub_1B4F68954();
  v47 = sub_1B4F66334();
  v115 = v44;
  LOBYTE(v114) = v47 & 1;
  sub_1B4E2C940(&v114, v113);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v46;
  sub_1B4E5E6C8(v113, v116, v48);
  sub_1B4DF4850(v116);
  v49 = v112;
  *&v114 = 0xD000000000000018;
  *(&v114 + 1) = 0x80000001B4F81430;
  sub_1B4F68954();
  v50 = v106;
  sub_1B4F64954();
  v51 = ServiceSubscription.isSubscribed(date:)();
  v106 = *(v110 + 8);
  (v106)(v50, v111);
  v115 = v44;
  LOBYTE(v114) = v51;
  sub_1B4E2C940(&v114, v113);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v49;
  sub_1B4E5E6C8(v113, v116, v52);
  sub_1B4DF4850(v116);
  v53 = v112;
  v54 = sub_1B4F66324();
  if (v55)
  {
    v56 = v54;
    v57 = v55;
    *&v114 = 0xD000000000000014;
    *(&v114 + 1) = 0x80000001B4F81530;
    sub_1B4F68954();
    v115 = v42;
    *&v114 = v56;
    *(&v114 + 1) = v57;
    sub_1B4E2C940(&v114, v113);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v53;
    sub_1B4E5E6C8(v113, v116, v58);
    sub_1B4DF4850(v116);
    v53 = v112;
  }

  v59 = sub_1B4F66274();
  v61 = v39;
  if (v60)
  {
    v62 = v59;
    v63 = v60;
    v64 = HIBYTE(v60) & 0xF;
    if ((v60 & 0x2000000000000000) == 0)
    {
      v64 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v64)
    {
      *&v114 = 0xD000000000000017;
      *(&v114 + 1) = 0x80000001B4F81510;
      sub_1B4F68954();
      v115 = v42;
      *&v114 = v62;
      *(&v114 + 1) = v63;
      sub_1B4E2C940(&v114, v113);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v53;
      sub_1B4E5E6C8(v113, v116, v65);
      sub_1B4DF4850(v116);
      v53 = v112;
    }

    else
    {
    }
  }

  v66 = sub_1B4F662E4();
  v67 = v109;
  if ((v68 & 1) == 0)
  {
    v69 = v66;
    *&v114 = 0xD00000000000001BLL;
    *(&v114 + 1) = 0x80000001B4F814F0;
    sub_1B4F68954();
    v115 = MEMORY[0x1E69E7360];
    *&v114 = v69;
    sub_1B4E2C940(&v114, v113);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v53;
    sub_1B4E5E6C8(v113, v116, v70);
    sub_1B4DF4850(v116);
    v53 = v112;
  }

  v71 = sub_1B4F662A4();
  if ((v72 & 1) == 0)
  {
    v73 = v71;
    *&v114 = 0xD00000000000001CLL;
    *(&v114 + 1) = 0x80000001B4F814D0;
    sub_1B4F68954();
    v115 = v39;
    *&v114 = v73;
    sub_1B4E2C940(&v114, v113);
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v53;
    sub_1B4E5E6C8(v113, v116, v74);
    sub_1B4DF4850(v116);
    v53 = v112;
  }

  v75 = sub_1B4F66294();
  if ((v76 & 1) == 0)
  {
    v77 = v75;
    *&v114 = 0xD000000000000011;
    *(&v114 + 1) = 0x80000001B4F814B0;
    sub_1B4F68954();
    v115 = MEMORY[0x1E69E7360];
    *&v114 = v77;
    sub_1B4E2C940(&v114, v113);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v53;
    sub_1B4E5E6C8(v113, v116, v78);
    sub_1B4DF4850(v116);
    v53 = v112;
  }

  v79 = sub_1B4F66304();
  if ((v80 & 1) == 0)
  {
    v81 = v79;
    *&v114 = 0xD00000000000001FLL;
    *(&v114 + 1) = 0x80000001B4F81490;
    sub_1B4F68954();
    v115 = MEMORY[0x1E69E7360];
    *&v114 = v81;
    sub_1B4E2C940(&v114, v113);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v53;
    sub_1B4E5E6C8(v113, v116, v82);
    sub_1B4DF4850(v116);
    v53 = v112;
  }

  sub_1B4F66344();
  if (v107(v67, 1, v111) == 1)
  {
    sub_1B4E5ECFC(v67);
  }

  else
  {
    v83 = v111;
    v84 = v42;
    v85 = v105;
    (*(v110 + 32))(v105, v67, v111);
    *&v114 = 0xD000000000000015;
    *(&v114 + 1) = 0x80000001B4F81470;
    sub_1B4F68954();
    sub_1B4F64924();
    sub_1B4F684A4();
    v115 = v61;
    *&v114 = v86;
    sub_1B4E2C940(&v114, v113);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v53;
    sub_1B4E5E6C8(v113, v116, v87);
    sub_1B4DF4850(v116);
    v53 = v112;
    v88 = v85;
    v42 = v84;
    (v106)(v88, v83);
  }

  v89 = sub_1B4F662D4();
  if (v90)
  {
    v91 = v89;
    v92 = v90;
    v93 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v93 = v89 & 0xFFFFFFFFFFFFLL;
    }

    if (v93)
    {
      *&v114 = 0xD00000000000001ELL;
      *(&v114 + 1) = 0x80000001B4F81450;
      sub_1B4F68954();
      v115 = v42;
      *&v114 = v91;
      *(&v114 + 1) = v92;
      sub_1B4E2C940(&v114, v113);
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v53;
      sub_1B4E5E6C8(v113, v116, v94);
      sub_1B4DF4850(v116);
      v53 = v112;
    }

    else
    {
    }
  }

  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v95 = sub_1B4F67C54();
  __swift_project_value_buffer(v95, qword_1EDB703E8);
  v96 = sub_1B4F67C34();
  v97 = sub_1B4F685B4();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v116[0] = v99;
    *v98 = 136315138;

    v100 = sub_1B4F67F04();
    v102 = v101;

    v103 = sub_1B4DC4F88(v100, v102, v116);

    *(v98 + 4) = v103;
    _os_log_impl(&dword_1B4DC2000, v96, v97, "Metric subscription fields generated: %s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    MEMORY[0x1B8C831D0](v99, -1, -1);
    MEMORY[0x1B8C831D0](v98, -1, -1);
  }

  return v53;
}

uint64_t sub_1B4E5E444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B4DF4344(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1B4E281EC();
      result = v19;
      goto LABEL_8;
    }

    sub_1B4E26064(v16, a4 & 1);
    result = sub_1B4DF4344(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_1B4F0CD3C(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_1B4E5E574(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B4DF4344(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B4E28BB4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B4E26F14(v16, a4 & 1);
    v11 = sub_1B4DF4344(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1B4DC933C(a1, v22);
  }

  else
  {
    sub_1B4F0CD84(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1B4E5E6C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1B4DF4440(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1B4E28EB8();
      goto LABEL_7;
    }

    sub_1B4E271D8(v13, a3 & 1);
    v19 = sub_1B4DF4440(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1B4DF47F4(a2, v21);
      return sub_1B4F0CDF4(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1B4F68DB4();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_1B4E2C940(a1, v17);
}

uint64_t sub_1B4E5E814(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B4DF4344(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_1B4E29324();
      result = v19;
      goto LABEL_8;
    }

    sub_1B4E279C0(v16, a3 & 1);
    result = sub_1B4DF4344(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    sub_1B4F0CE70(result, a1, a2, v21, a4);
  }

  return result;
}

_OWORD *sub_1B4E5E93C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B4DF4344(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B4E29614();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B4E27F34(v16, a4 & 1);
    v11 = sub_1B4DF4344(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_1B4E2C940(a1, v22);
  }

  else
  {
    sub_1B4F0CEB8(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1B4E5EA8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B4DCE3F0(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B4E2905C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B4E27490(v16, a4 & 1);
    v11 = sub_1B4DCE3F0(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_1B4F0CF24(v11, a3, a1, a2, v21);
  }
}

unint64_t sub_1B4E5EBC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B4DC51CC(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B4E291C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B4E27728(v16, a4 & 1);
    v11 = sub_1B4DC51CC(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B4F68DB4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_1B4F0CF6C(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_1B4E5ECFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MultiUserBeginActivityRequested.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65EF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserBeginActivityRequested.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MultiUserBeginActivityRequested(uint64_t a1)
{
  result = qword_1EDB6E310;
  if (!qword_1EDB6E310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL StringProtocol.isEmptyOrWhiteSpace.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4F64634();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F64624();
  v7 = sub_1B4F68854();
  v9 = v8;
  (*(v3 + 8))(v6, v2);

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  return v10 == 0;
}

BOOL Optional<A>.isEmptyOrWhiteSpace.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64634();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 1;
  }

  v14[0] = a1;
  v14[1] = a2;
  sub_1B4F64624();
  sub_1B4DCAC7C();
  v9 = sub_1B4F68854();
  v11 = v10;
  (*(v5 + 8))(v8, v4);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v12 == 0;
}

uint64_t RemoteParticipantUpdated.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65F84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteParticipantUpdated.init(participant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for RemoteParticipantUpdated(uint64_t a1)
{
  result = qword_1EB8F54A8;
  if (!qword_1EB8F54A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E5F3FC(uint64_t a1)
{
  result = sub_1B4F65F84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4E5F468(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_1B4DE13F0;

  return v10(a6);
}

uint64_t ActivityRingsObserver.deinit()
{

  sub_1B4F683B4();

  return v0;
}

uint64_t ActivityRingsObserver.__deallocating_deinit()
{

  sub_1B4F683B4();

  return swift_deallocClassInstance();
}

unint64_t sub_1B4E5F678@<X0>(Swift::Int *a1@<X0>, SeymourClient::DataProtectionClass_optional *a2@<X8>)
{
  result = _s13SeymourClient19DataProtectionClassO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

unint64_t _s13SeymourClient19DataProtectionClassO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1B4E5F720()
{
  result = qword_1EB8F54B8;
  if (!qword_1EB8F54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F54B8);
  }

  return result;
}

uint64_t Collection<>.parallelForEach(parallelism:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4E5F8C8, 0, 0);
}

uint64_t sub_1B4E5F8C8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = *(v0 + 5);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1B4E5F9C8;
  v5 = v0[6];
  v6 = v0[5];
  v7 = v0[2];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return Collection<>.parallelMap<A>(parallelism:transform:)(v7, &unk_1B4F733D0, v3, v6, v8, v5);
}

uint64_t sub_1B4E5F9C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E5FB24, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B4E5FB24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4E5FB88(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B4DE13F0;

  return v7(a2);
}

uint64_t sub_1B4E5FC7C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4E5FB88(a1, a2, v6);
}

uint64_t Collection<>.parallelMap<A>(parallelism:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E5FD70, 0, 0);
}

uint64_t sub_1B4E5FD70()
{
  sub_1B4F68574();
  v1 = sub_1B4F68804();
  v3 = v2;
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v4 = sub_1B4F687F4();
  if (!v4)
  {
    return sub_1B4F68B24();
  }

  v5 = v4;
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v15 = *(v0 + 24);
  v14 = *(v0 + 32);
  v10 = sub_1B4F68574();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  *(v11 + 32) = v7;
  *(v11 + 40) = v6;
  *(v11 + 48) = v14;
  *(v11 + 64) = v15;
  *(v11 + 72) = v5;
  *(v11 + 80) = v10;
  *(v11 + 88) = v1;
  *(v11 + 96) = v3;
  sub_1B4F68254();
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *v12 = v0;
  v12[1] = sub_1B4E5FF7C;

  return MEMORY[0x1EEE6DD58](v0 + 16, TupleTypeMetadata2);
}

uint64_t sub_1B4E5FF7C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B4E60108;
  }

  else
  {

    v2 = sub_1B4E60098;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E60098()
{
  v1 = *(v0 + 16);
  sub_1B4F687E4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B4E60108()
{

  sub_1B4F687E4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4E6018C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v16;
  v8[16] = v17;
  v8[13] = v14;
  v8[14] = v15;
  v8[11] = a8;
  v8[12] = v13;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v8[5] = a2;
  v8[6] = a3;
  v8[4] = a1;
  v8[17] = swift_getTupleTypeMetadata2();
  v9 = sub_1B4F687D4();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  v10 = *(v16 - 8);
  v8[21] = v10;
  v8[22] = v10;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = *(v17 + 8);
  v8[26] = sub_1B4F68B74();
  v8[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E60338, 0, 0);
}

uint64_t sub_1B4E60338()
{
  v1 = v0[25];
  v2 = v0[14];
  v3 = v0[9];
  sub_1B4F68B64();
  v4 = swift_allocBox();
  v0[28] = v4;
  MEMORY[0x1B8C819A0](v2, v1);
  v5 = sub_1B4F68B44();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v0[9])
    {
      v9 = 0;
      do
      {
        v10 = v0[9];
        ++v9;
        sub_1B4E60B28(v4, v0[5], v0[7], v0[8], v0[14], v0[15], v0[16]);
      }

      while (v9 != v10);
    }

    v0[29] = 0;
    v11 = swift_task_alloc();
    v0[30] = v11;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
    v8 = sub_1B4F68444();
    *v11 = v0;
    v11[1] = sub_1B4E604BC;
    v5 = v0[20];
    v6 = 0;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DAC8](v5, v6, v7, v8);
}

uint64_t sub_1B4E604BC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1B4E60988;
  }

  else
  {
    v2 = sub_1B4E605D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E605D0()
{
  v1 = v0[20];
  v2 = v0[17];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[22];
    v20 = v0[21];
    v21 = v0[29];
    v11 = v0[15];
    v12 = v0[10];
    v13 = *v1;
    (*(v10 + 32))(v8, &v1[*(v2 + 48)], v11);
    v14 = v12 + *(v10 + 72) * v13;
    (*(v10 + 16))(v9, v8, v11);
    v3 = (*(v20 + 32))(v14, v9, v11);
    if (!__OFADD__(v21, 1))
    {
      if ((sub_1B4F683C4() & 1) == 0)
      {
        sub_1B4E60B28(v0[28], v0[5], v0[7], v0[8], v0[14], v0[15], v0[16]);
      }

      (*(v0[22] + 8))(v0[24], v0[15]);
      v0[29] = v21 + 1;
      v15 = swift_task_alloc();
      v0[30] = v15;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
      v6 = sub_1B4F68444();
      *v15 = v0;
      v15[1] = sub_1B4E604BC;
      v3 = v0[20];
      v4 = 0;
      v5 = 0;

      return MEMORY[0x1EEE6DAC8](v3, v4, v5, v6);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return MEMORY[0x1EEE6DAC8](v3, v4, v5, v6);
  }

  (*(v0[19] + 8))(v1, v0[18]);
  v3 = sub_1B4F683C4();
  if ((v3 & 1) == 0)
  {
    v16 = v0[13];
    if (v0[11] == v16)
    {
      v17 = v0[4];
      v0[2] = v0[12];
      v0[3] = v16;
      sub_1B4F68814();
      swift_getWitnessTable();
      v18 = sub_1B4F68264();

      *v17 = v18;

      v7 = v0[1];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  sub_1B4F687B4();
  sub_1B4F682D4();
  sub_1B4E5275C();
  swift_allocError();
  sub_1B4F67EC4();
  swift_willThrow();

  v7 = v0[1];
LABEL_12:

  return v7();
}

uint64_t sub_1B4E60988()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4E60A1C(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v8 = v2[8];
  v9 = v2[9];
  v10 = v2[10];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B4DE0D94;

  return sub_1B4E6018C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B4E60B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a4;
  v49 = a6;
  v46 = a3;
  v50 = a2;
  v51 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v53 = &v43 - v11;
  v47 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = sub_1B4F687D4();
  v14 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v15);
  v17 = (&v43 - v16);
  v18 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v43 - v20);
  v44 = *(AssociatedTypeWitness - 8);
  v22 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v52 = &v43 - v28;
  v45 = a5;
  sub_1B4F68B64();
  swift_projectBox();
  swift_beginAccess();
  sub_1B4F68B54();
  swift_endAccess();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v14 + 8))(v17, v43);
  }

  v30 = *(TupleTypeMetadata2 + 48);
  v31 = *(v18 + 48);
  *v21 = *v17;
  v32 = v44;
  v33 = *(v44 + 32);
  v33(v21 + v31, v17 + v30, AssociatedTypeWitness);
  v51 = *v21;
  v34 = v52;
  v33(v52, v21 + *(v18 + 48), AssociatedTypeWitness);
  v35 = sub_1B4F68324();
  (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
  (*(v32 + 16))(v25, v34, AssociatedTypeWitness);
  v36 = (*(v32 + 80) + 72) & ~*(v32 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  v38 = v48;
  v39 = v49;
  *(v37 + 4) = v45;
  *(v37 + 5) = v39;
  v40 = v46;
  *(v37 + 6) = v47;
  *(v37 + 7) = v40;
  *(v37 + 8) = v38;
  v33(&v37[v36], v25, AssociatedTypeWitness);
  *&v37[(v22 + v36 + 7) & 0xFFFFFFFFFFFFFFF8] = v51;

  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v41 = sub_1B4F68444();
  v42 = v53;
  sub_1B4E663D0(v53, &unk_1B4F73428, v37, v41);
  sub_1B4E6341C(v42);
  return (*(v32 + 8))(v52, AssociatedTypeWitness);
}

uint64_t sub_1B4E60FEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v15;
  v7[2] = a1;
  v7[5] = *(v15 - 8);
  v10 = swift_task_alloc();
  v7[6] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v7[7] = v11;
  *v11 = v7;
  v11[1] = sub_1B4E61158;

  return v13(v10, a6);
}

uint64_t sub_1B4E61158()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B4E6132C;
  }

  else
  {
    v2 = sub_1B4E6126C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E6126C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  *v5 = v4;
  (*(v2 + 32))(&v5[v6], v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B4E6132C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Collection<>.parallelCompactMap<A>(parallelism:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v12 = swift_task_alloc();
  v6[6] = v12;
  v13 = sub_1B4F687D4();
  v6[7] = v13;
  *v12 = v6;
  v12[1] = sub_1B4E61488;

  return Collection<>.parallelMap<A>(parallelism:transform:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_1B4E61488(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B4E615D8, 0, 0);
  }
}

uint64_t sub_1B4E615D8()
{
  v1 = *(v0 + 24);
  *(v0 + 16) = *(v0 + 72);
  v2 = swift_task_alloc();
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_1B4F68254();
  swift_getWitnessTable();
  v4 = sub_1B4F680E4();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t Collection<>.parallelFilter(parallelism:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B4E61788, 0, 0);
}

uint64_t sub_1B4E61788()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[8] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v3;

  v6 = swift_task_alloc();
  v0[9] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_1B4E618A8;
  v8 = v0[6];
  v9 = v0[5];
  v10 = v0[2];

  return Collection<>.parallelCompactMap<A>(parallelism:transform:)(v10, &unk_1B4F73408, v5, v9, AssociatedTypeWitness, v8);
}

uint64_t sub_1B4E618A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E5FB24, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1B4E61A00(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_1B4E61AFC;

  return v10(a2);
}

uint64_t sub_1B4E61AFC(char a1)
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
    *(v4 + 56) = a1 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1B4E61C4C, 0, 0);
  }
}

uint64_t sub_1B4E61C4C()
{
  v1 = *(v0 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  if (v1 == 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 16))(*(v0 + 16), *(v0 + 24), AssociatedTypeWitness);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  (*(v3 + 56))(*(v0 + 16), v4, 1, AssociatedTypeWitness);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B4E61D4C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4E61A00(a1, a2, v9, v8, v6, v7);
}

uint64_t Collection<>.asyncCompactMap<A>(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a4;
  v6[7] = v5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v10 = sub_1B4F687D4();
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(a4 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v6[16] = *(AssociatedTypeWitness - 8);
  v6[17] = swift_task_alloc();
  sub_1B4F687D4();
  v6[18] = swift_task_alloc();
  v6[19] = *(a3 - 8);
  v6[20] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v6[21] = v12;
  v6[22] = *(v12 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E620CC, 0, 0);
}

uint64_t sub_1B4E620CC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[7];
  v4 = v0[5];
  v0[2] = sub_1B4F67EB4();
  (*(v2 + 16))(v1, v3, v4);
  sub_1B4F680C4();
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_1B4F68834();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_1B4E62358;
    v13 = v0[17];
    v14 = v0[10];

    return v15(v14, v13);
  }
}

uint64_t sub_1B4E62358()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_1B4E627B0;
  }

  else
  {
    v2 = sub_1B4E62474;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E62474()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[8];
    v9 = v0[9];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[12];
    v10 = v0[13];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_1B4F68254();
    sub_1B4F68244();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_1B4F68834();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v15 = v0[2];

    v16 = v0[1];

    return v16(v15);
  }

  else
  {
    v18 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v22 = (v18 + *v18);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_1B4E62358;
    v20 = v0[17];
    v21 = v0[10];

    return v22(v21, v20);
  }
}

uint64_t sub_1B4E627B0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Set.asyncFilter(predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v5[13] = *(a4 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  sub_1B4F687D4();
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E629B4, 0, 0);
}

uint64_t sub_1B4E629B4()
{
  v1 = v0[10];
  v0[7] = sub_1B4F67ED4();
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B4F688E4();
    result = sub_1B4F68544();
    v1 = v0[2];
    v3 = v0[3];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[6];
  }

  else
  {
    v7 = -1 << *(v0[10] + 32);
    v8 = v0[10];
    v10 = *(v8 + 56);
    v3 = v8 + 56;
    v9 = v10;
    v5 = ~v7;
    v11 = -v7;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v6 = v12 & v9;

    v4 = 0;
  }

  v0[18] = v1;
  v0[19] = v3;
  v13 = v0[13];
  v0[21] = v4;
  v0[22] = v6;
  v0[20] = v5;
  if (v1 < 0)
  {
    if (sub_1B4F68914())
    {
      sub_1B4F68D44();
      swift_unknownObjectRelease();
LABEL_18:
      v0[23] = v4;
      v0[24] = v6;
      v17 = v0[16];
      v18 = v0[17];
      v19 = v0[13];
      v20 = v0[11];
      v21 = v0[8];
      (*(v19 + 56))(v18, 0, 1, v20);
      (*(v19 + 32))(v17, v18, v20);
      v26 = (v21 + *v21);
      v22 = swift_task_alloc();
      v0[25] = v22;
      *v22 = v0;
      v22[1] = sub_1B4E62D24;
      v23 = v0[16];

      return v26(v23);
    }

    v1 = v0[18];
    v13 = v0[13];
LABEL_22:
    (*(v13 + 56))(v0[17], 1, 1, v0[11]);
    sub_1B4E632A0(v1);
    v24 = v0[7];

    v25 = v0[1];

    return v25(v24);
  }

  else
  {
    if (v6)
    {
      v14 = v4;
LABEL_17:
      v16 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      (*(v13 + 16))(v0[17], *(v1 + 48) + *(v13 + 72) * (v16 | (v14 << 6)), v0[11]);
      goto LABEL_18;
    }

    v15 = v4;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v14 >= ((v5 + 64) >> 6))
      {
        goto LABEL_22;
      }

      v6 = *(v3 + 8 * v14);
      ++v15;
      if (v6)
      {
        v4 = v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4E62D24(char a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {

    v5 = sub_1B4E631E0;
  }

  else
  {
    *(v4 + 216) = a1 & 1;
    v5 = sub_1B4E62E58;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4E62E58()
{
  v1 = *(v0 + 128);
  if (*(v0 + 216))
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 104);
    v4 = *(v0 + 88);
    (*(v3 + 16))(*(v0 + 112), *(v0 + 128), v4);
    sub_1B4F68554();
    sub_1B4F68534();
    v5 = *(v3 + 8);
    v5(v2, v4);
    result = (v5)(v1, v4);
  }

  else
  {
    result = (*(*(v0 + 104) + 8))(*(v0 + 128), *(v0 + 88));
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 168) = v7;
  *(v0 + 176) = v8;
  v9 = *(v0 + 144);
  if (v9 < 0)
  {
    if (sub_1B4F68914())
    {
      sub_1B4F68D44();
      swift_unknownObjectRelease();
LABEL_15:
      *(v0 + 184) = v7;
      *(v0 + 192) = v8;
      v13 = *(v0 + 128);
      v14 = *(v0 + 136);
      v15 = *(v0 + 104);
      v16 = *(v0 + 88);
      v17 = *(v0 + 64);
      (*(v15 + 56))(v14, 0, 1, v16);
      (*(v15 + 32))(v13, v14, v16);
      v22 = (v17 + *v17);
      v18 = swift_task_alloc();
      *(v0 + 200) = v18;
      *v18 = v0;
      v18[1] = sub_1B4E62D24;
      v19 = *(v0 + 128);

      return v22(v19);
    }

    v9 = *(v0 + 144);
LABEL_19:
    (*(*(v0 + 104) + 56))(*(v0 + 136), 1, 1, *(v0 + 88));
    sub_1B4E632A0(v9);
    v20 = *(v0 + 56);

    v21 = *(v0 + 8);

    return v21(v20);
  }

  else
  {
    if (v8)
    {
      v10 = v7;
LABEL_14:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(*(v0 + 104) + 16))(*(v0 + 136), *(v9 + 48) + *(*(v0 + 104) + 72) * (v12 | (v10 << 6)), *(v0 + 88));
      goto LABEL_15;
    }

    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= ((*(v0 + 160) + 64) >> 6))
      {
        goto LABEL_19;
      }

      v8 = *(*(v0 + 152) + 8 * v10);
      ++v11;
      if (v8)
      {
        v7 = v10;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4E631E0()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[11];
  sub_1B4E632A0(v0[18]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4E632A8(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[7];
  v8 = v1[8];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B4DE13F0;

  return sub_1B4E60FEC(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_1B4E6341C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MultiUserSessionIdentitiesUpdated.sessionIdentities.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66E84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserSessionIdentitiesUpdated.init(sessionIdentities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66E84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MultiUserSessionIdentitiesUpdated(uint64_t a1)
{
  result = qword_1EDB70590;
  if (!qword_1EDB70590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MediaMomentEnded.mediaMoment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64D34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MediaMomentEnded.init(mediaMoment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MediaMomentEnded(uint64_t a1)
{
  result = qword_1EB8F54C0;
  if (!qword_1EB8F54C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E63824(uint64_t a1)
{
  result = sub_1B4F64D34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static ProgressDisplayPreference.default()()
{
  v0 = sub_1B4F674E4();
  v2 = MEMORY[0x1EEE9AC00](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69CD198], v2);
  return sub_1B4F66B94();
}

uint64_t ActivityMoveMode.healthKitRawValue.getter(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B4E639AC(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (a1 == 2)
  {
    return 1;
  }

  sub_1B4F689C4();
  MEMORY[0x1B8C818C0](0xD00000000000001FLL, 0x80000001B4F81780);
  type metadata accessor for HKActivityMoveMode(0);
  sub_1B4F68AD4();
  result = sub_1B4F68B24();
  __break(1u);
  return result;
}

uint64_t sub_1B4E63A84(uint64_t a1)
{
  if ((a1 - 1) < 3)
  {
    return (a1 - 1) & 1;
  }

  sub_1B4F689C4();
  MEMORY[0x1B8C818C0](0xD00000000000001ALL, 0x80000001B4F81760);
  type metadata accessor for HKFitnessMode(0);
  sub_1B4F68AD4();
  result = sub_1B4F68B24();
  __break(1u);
  return result;
}

unint64_t sub_1B4E63B88()
{
  result = qword_1EB8F54D0;
  if (!qword_1EB8F54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F54D0);
  }

  return result;
}

uint64_t AssetLoadStatus.init<A>(result:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54D8, &unk_1B4F735F0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v35 - v5;
  v7 = sub_1B4F64A54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v35 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v16 = sub_1B4F68F14();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = (v35 - v20);
  (*(v17 + 16))(v35 - v20, a1, v16, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = *(v17 + 8);
    v28(a1, v16);
    v28(v21, v16);
    return 5;
  }

  v22 = *v21;
  v35[9] = v22;
  v23 = v22;
  v24 = swift_dynamicCast();
  v25 = *(v8 + 56);
  if (v24)
  {
    v35[0] = a1;
    v25(v6, 0, 1, v7);
    v26 = *(v8 + 32);
    v26(v15, v6, v7);
    v26(v11, v15, v7);
    if ((*(v8 + 88))(v11, v7) == *MEMORY[0x1E69CAEF8])
    {
      (*(v17 + 8))(v35[0], v16);

      (*(v8 + 8))(v11, v7);
      return 4;
    }

    (*(v8 + 8))(v11, v7);
    a1 = v35[0];
  }

  else
  {
    v25(v6, 1, 1, v7);
    sub_1B4E64060(v6);
  }

  swift_getErrorValue();
  v29 = sub_1B4F68DF4();
  v31 = v30;
  if (v29 == sub_1B4F67F74() && v31 == v32)
  {
  }

  else
  {
    v33 = sub_1B4F68D54();

    if ((v33 & 1) == 0)
    {
      (*(v17 + 8))(a1, v16);

      return 6;
    }
  }

  swift_getErrorValue();
  v34 = sub_1B4F68DE4();

  (*(v17 + 8))(a1, v16);
  if (v34 == -999)
  {
    return 8;
  }

  return 6;
}

uint64_t sub_1B4E64060(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54D8, &unk_1B4F735F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4E640C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1B4E257A4(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_1B4F688B4();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_1B4F652E4();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_1B4E257A4((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1B4DF3104(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1B4DF3104(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ContentRestrictionObserver.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ContentRestrictionObserver.init(eventHub:)(a1, a2);
  return v4;
}

void *ContentRestrictionObserver.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B4DEE984();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54E0, &unk_1B4F73600);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = v7;
  v3[5] = v8;
  v3[2] = a1;
  v3[3] = a2;
  type metadata accessor for SubscriptionToken();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41F8, &qword_1B4F6CA20);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v9 + 24) = a2;
  *(v9 + 32) = v10;
  swift_unknownObjectWeakAssign();
  v3[4] = v9;
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *(a2 + 24);
  swift_unknownObjectRetain();

  v13(v15, &type metadata for ManagedProfileEffectiveSettingsChanged, v9, sub_1B4E64AC0, v12, &type metadata for ManagedProfileEffectiveSettingsChanged, &protocol witness table for ManagedProfileEffectiveSettingsChanged, ObjectType, a2);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v15);

  return v3;
}

uint64_t sub_1B4E644DC(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "[ContentRestrictionObserver] Recieved update that content restrictions were changed.", v4, 2u);
    MEMORY[0x1B8C831D0](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B4E645F0();
  }

  return result;
}

void sub_1B4E645F0()
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB72490);
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  v2._object = 0x80000001B4F81820;
  v3._object = 0x80000001B4F81850;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 40);
  os_unfair_lock_lock((v4 + 24));
  sub_1B4E64B18((v4 + 16));

  os_unfair_lock_unlock((v4 + 24));
}

void sub_1B4E646D0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B4F670E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s13SeymourClient26ContentRestrictionObserverC012queryAllowedC7RatingsShy0A4Core0C6RatingOGyF_0();
  v10 = *a1;
  if (sub_1B4EDE7B0(*a1, v9))
  {
  }

  else
  {
    v31 = v10;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v32 = v5;
    v11 = sub_1B4F67C54();
    __swift_project_value_buffer(v11, qword_1EDB72490);

    v12 = sub_1B4F67C34();
    v13 = sub_1B4F685E4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = a1;
      v28 = v15;
      v33 = v15;
      *v14 = 136446210;
      sub_1B4DCF604();
      v16 = sub_1B4F68514();
      v29 = a2;
      v18 = sub_1B4DC4F88(v16, v17, &v33);
      a2 = v29;

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1B4DC2000, v12, v13, "[ContentRestrictionObserver] Allowed content ratings changed, updating to %{public}s", v14, 0xCu);
      v19 = v28;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v20 = v19;
      a1 = v30;
      MEMORY[0x1B8C831D0](v20, -1, -1);
      MEMORY[0x1B8C831D0](v14, -1, -1);
    }

    v21 = *(a2 + 24);
    ObjectType = swift_getObjectType();

    sub_1B4F670D4();
    (*(v21 + 8))(v8, v4, &protocol witness table for AllowedContentRatingsUpdated, ObjectType, v21);
    (*(v32 + 8))(v8, v4);
    *a1 = v9;
    v23 = objc_opt_self();

    v24 = [v23 standardUserDefaults];
    sub_1B4E640C8(v9);

    v25 = sub_1B4F681B4();

    v26 = sub_1B4F67F64();
    [v24 setValue:v25 forKey:v26];
  }
}

void *ContentRestrictionObserver.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ContentRestrictionObserver.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t RemoteParticipantConnectionRejected.rejection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67524();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteParticipantConnectionRejected.init(rejection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F67524();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for RemoteParticipantConnectionRejected(uint64_t a1)
{
  result = qword_1EDB6E1F0;
  if (!qword_1EDB6E1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E64C8C(uint64_t a1)
{
  result = sub_1B4F67524();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t withTimeout<A>(seconds:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E64D38, 0, 0);
}

uint64_t sub_1B4E64D38()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1B4E64E3C;
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD00000000000001FLL, 0x80000001B4F80F40, sub_1B4E65204, v3, v6);
}

uint64_t sub_1B4E64E3C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E64F78, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4E64F78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4E64FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v10 = sub_1B4F682C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v23 - v17;
  v19 = sub_1B4F68324();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  v20 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a4;
  *(v21 + 40) = a2;
  *(v21 + 48) = a3;
  *(v21 + 56) = a5;
  (*(v11 + 32))(v21 + v20, v14, v10);

  sub_1B4E4E620(0, 0, v18, &unk_1B4F73708, v21);
}

uint64_t sub_1B4E65214(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 40) = a2;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E65240, 0, 0);
}

uint64_t sub_1B4E65240()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  sub_1B4E61390(v1, MEMORY[0x1E69E7CA8] + 8);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1B4E65358;
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v8, v7);
}

void sub_1B4E65358()
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

uint64_t sub_1B4E6548C(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v6 = *(sub_1B4F682C4() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v10 = *(v1 + 5);
  v11 = *(v1 + 6);
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B4DE13F0;

  return sub_1B4E65214(a1, v12, v8, v9, v10, v11, v1 + v7, v5);
}

uint64_t sub_1B4E655D0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 48) = a1;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a3;
  v9 = sub_1B4F687D4();
  *(v7 + 72) = v9;
  *(v7 + 80) = *(v9 - 8);
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = *(a7 - 8);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E65738, 0, 0);
}

uint64_t sub_1B4E65738(double a1)
{
  v2 = v1[15];
  v3 = v1[8];
  v4 = v1[6];
  v6 = v1[4];
  v5 = v1[5];
  v7 = sub_1B4F68324();
  v8 = *(*(v7 - 8) + 56);
  v8(v2, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v3;
  v9[5] = v6;
  v9[6] = v5;

  v1[16] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v10 = sub_1B4F68444();
  sub_1B4E663D0(v2, &unk_1B4F73728, v9, v10);
  sub_1B4E6341C(v2);
  v8(v2, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = v4;
  sub_1B4E663D0(v2, &unk_1B4F73738, v11, v10);
  sub_1B4E6341C(v2);
  v12 = swift_task_alloc();
  v1[17] = v12;
  *v12 = v1;
  v12[1] = sub_1B4E6594C;
  v13 = v1[11];

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v10);
}

uint64_t sub_1B4E6594C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1B4E65C6C;
  }

  else
  {
    v2 = sub_1B4E65A60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E65A60()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
    return sub_1B4F68B24();
  }

  else
  {
    v6 = v0[13];
    v5 = v0[14];
    (*(v2 + 32))(v5, v1, v3);
    (*(v2 + 16))(v6, v5, v3);
    sub_1B4F682C4();
    sub_1B4F682B4();
    (*(v2 + 8))(v5, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
    sub_1B4F68434();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1B4E65C6C()
{
  v0[2] = v0[18];
  sub_1B4F682C4();
  sub_1B4F682A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F68434();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4E65D74(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = *(v2 + 6);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B4DE13F0;

  return sub_1B4E655D0(v9, a1, a2, v7, v8, v10, v6);
}

uint64_t sub_1B4E65E50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4E52034(a1, v4, v5, v6);
}

uint64_t sub_1B4E65F18()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return sub_1B4E5212C(v2);
}

uint64_t AssetBundleProgressUpdated.bundleProgress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66124();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AssetBundleProgressUpdated.init(bundleProgress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66124();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for AssetBundleProgressUpdated(uint64_t a1)
{
  result = qword_1EDB71868;
  if (!qword_1EDB71868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E6616C(uint64_t a1)
{
  result = sub_1B4F66124();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NetworkEvaluator.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1B4DC9830(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t NetworkEvaluator.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t NetworkEvaluator.queryNetworkConditions()()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v1 + 16);
  v3 = *(v0 + 64);
  os_unfair_lock_unlock(v2);
  return v3;
}

uint64_t sub_1B4E662D4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(v1 + 64);
  os_unfair_lock_unlock(*(v2 + 16));
  return v3;
}

uint64_t sub_1B4E6638C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  return sub_1B4DDA8A0(v6, a2);
}

uint64_t sub_1B4E663D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v20 - v10;
  sub_1B4E6B5DC(a1, v20 - v10);
  v12 = sub_1B4F68324();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B4DD2BC4(v11, &unk_1EB8F7040, &qword_1B4F71150);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1B4F68274();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4F68314();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v5;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t static Promise.parallel(queue:maxConcurrent:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v13 = a3;
  sub_1B4F67674();
  v10 = sub_1B4F68254();
  WitnessTable = swift_getWitnessTable();
  return sub_1B4E66654(a1, a2, &v13, a4, v10, WitnessTable, x8_0);
}

uint64_t sub_1B4E66654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a6;
  v25 = a7;
  v26 = a1;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4F68254();
  v14 = sub_1B4F67674();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v23 - v18;
  (*(v10 + 16))(v12, a3, a5, v17);
  v20 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a4;
  *(v21 + 3) = a5;
  *(v21 + 4) = v24;
  (*(v10 + 32))(&v21[v20], v12, a5);
  Promise.init(_:file:line:)(&unk_1B4F738F0, v21, "SeymourClient/PromiseConcurrency.swift", 38, 2, 36, v13);
  sub_1B4F67634();
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_1B4E66874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E6689C, 0, 0);
}

uint64_t sub_1B4E6689C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v8 = *(v0 + 32);
  sub_1B4F68254();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v8;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1B4E64E3C;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v6, v5);
}

uint64_t sub_1B4E669B4(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54F8, &qword_1B4F738C0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v2[19] = *(v5 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E66B40, 0, 0);
}

uint64_t sub_1B4E66B40()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v31 = *(v3 + 16);
    v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v4 = v1 + v30;
    v28 = *(v3 + 72);
    v29 = (v3 + 32);
    v27 = (v3 + 8);
    do
    {
      v32 = v4;
      v33 = v2;
      v9 = *(v0 + 160);
      v8 = *(v0 + 168);
      v10 = *(v0 + 136);
      v11 = *(v0 + 96);
      v12 = *(v0 + 104);
      v31(v8);
      v13 = sub_1B4F68324();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v12, 1, 1, v13);
      (v31)(v9, v8, v10);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      (*v29)(v15 + v30, v9, v10);
      sub_1B4E6B5DC(v12, v11);
      v17 = (*(v14 + 48))(v11, 1, v13);
      v18 = *(v0 + 96);
      if (v17 == 1)
      {
        sub_1B4DD2BC4(*(v0 + 96), &unk_1EB8F7040, &qword_1B4F71150);
        if (*v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1B4F68314();
        (*(v14 + 8))(v18, v13);
        if (*v16)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v19 = sub_1B4F68274();
          v20 = v21;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v19 = 0;
      v20 = 0;
LABEL_9:
      v22 = **(v0 + 80);
      v23 = v20 | v19;
      if (v20 | v19)
      {
        v23 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v20;
      }

      v5 = *(v0 + 168);
      v6 = *(v0 + 136);
      v7 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v23;
      *(v0 + 64) = v22;
      swift_task_create();

      sub_1B4DD2BC4(v7, &unk_1EB8F7040, &qword_1B4F71150);
      (*v27)(v5, v6);
      v4 = v32 + v28;
      v2 = v33 - 1;
    }

    while (v33 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  sub_1B4F683F4();
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  v24 = swift_task_alloc();
  *(v0 + 184) = v24;
  *v24 = v0;
  v24[1] = sub_1B4E66F18;
  v25 = *(v0 + 112);

  return MEMORY[0x1EEE6DAD8](v0 + 192, 0, 0, v25, v0 + 72);
}

uint64_t sub_1B4E66F18()
{

  if (v0)
  {

    v1 = sub_1B4E671E0;
  }

  else
  {
    v1 = sub_1B4E67030;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B4E67030()
{
  if (*(v0 + 192))
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v1 = *(v0 + 8);
    v2 = *(v0 + 176);

    return v1(v2);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 176);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1B4DE28D8(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1B4DE28D8((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v8;
    *(v0 + 176) = v5;
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_1B4E66F18;
    v10 = *(v0 + 112);

    return MEMORY[0x1EEE6DAD8](v0 + 192, 0, 0, v10, v0 + 72);
  }
}

uint64_t sub_1B4E671E0()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4E67298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v6[10] = *(a4 - 8);
  v6[11] = swift_task_alloc();
  sub_1B4F687D4();
  v6[12] = swift_task_alloc();
  v6[13] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v7 = sub_1B4F68424();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E67410, 0, 0);
}

uint64_t sub_1B4E67410()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v2;
  v5[5] = v4;
  sub_1B4F68114();

  v0[2] = sub_1B4F67EB4();
  sub_1B4F683F4();
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1B4E6755C;
  v7 = v0[14];
  v8 = v0[12];

  return MEMORY[0x1EEE6DAD8](v8, 0, 0, v7, v0 + 3);
}

uint64_t sub_1B4E6755C()
{

  if (v0)
  {

    v1 = sub_1B4E67814;
  }

  else
  {
    v1 = sub_1B4E67674;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B4E67674()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[4];
    (*(v0[15] + 8))(v0[16], v0[14]);
    *v4 = v0[2];

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v2 + 32))(v0[11], v1, v3);
    sub_1B4F68254();
    sub_1B4F68244();
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_1B4E6755C;
    v8 = v0[14];
    v9 = v0[12];

    return MEMORY[0x1EEE6DAD8](v9, 0, 0, v8, v0 + 3);
  }
}

uint64_t sub_1B4E67814()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4E678B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v24[1] = a2;
  v10 = sub_1B4F67674();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v24 - v17;
  v19 = sub_1B4F68324();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a3;
  *(v21 + 5) = a4;
  *(v21 + 6) = a5;
  (*(v11 + 32))(&v21[v20], v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v22 = sub_1B4F68444();
  sub_1B4E663D0(v18, &unk_1B4F73910, v21, v22);
  return sub_1B4DD2BC4(v18, &unk_1EB8F7040, &qword_1B4F71150);
}

uint64_t sub_1B4E67AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B4E67B10, 0, 0);
}

uint64_t sub_1B4E67B10()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = "SeymourClient/PromiseConcurrency.swift";
  *(v2 + 24) = 38;
  *(v2 + 32) = 2;
  *(v2 + 40) = 40;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1B4E67C28;
  v4 = v0[2];
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001B4F808E0, sub_1B4E6BB10, v2, v5);
}

uint64_t sub_1B4E67C28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4E67D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  v8 = sub_1B4F67674();
  *v7 = v5;
  v7[1] = sub_1B4DE13F0;

  return Promise.resolve(file:line:)(a1, "SeymourClient/PromiseConcurrency.swift", 38, 2, 40, v8);
}

uint64_t sub_1B4E67E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F68254();
  v13 = sub_1B4F67674();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v22 - v17;
  (*(v9 + 16))(v11, a2, a4, v16);
  v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a3;
  *(v20 + 3) = a4;
  *(v20 + 4) = v23;
  (*(v9 + 32))(&v20[v19], v11, a4);
  Promise.init(_:file:line:)(&unk_1B4F738E0, v20, "SeymourClient/PromiseConcurrency.swift", 38, 2, 64, v12);
  sub_1B4F67634();
  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1B4E68028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v5[7] = *(a3 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v8 = sub_1B4F67674();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  sub_1B4F687D4();
  v5[13] = swift_task_alloc();
  v5[14] = *(a4 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[17] = AssociatedTypeWitness;
  v5[18] = *(AssociatedTypeWitness - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E68268, 0, 0);
}

uint64_t sub_1B4E68268()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[6];
  v4 = v0[4];
  v0[2] = sub_1B4F67EB4();
  (*(v2 + 16))(v1, v4, v3);
  sub_1B4F680C4();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_1B4F68834();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = v0[3];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v8 = v0[2];

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_1B4E684A0;
    v12 = v0[9];
    v13 = v0[10];

    return Promise.resolve(file:line:)(v12, "SeymourClient/PromiseConcurrency.swift", 38, 2, 67, v13);
  }
}

uint64_t sub_1B4E684A0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {

    v2 = sub_1B4E6881C;
  }

  else
  {
    v2 = sub_1B4E685BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E685BC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[5];
  (*(v5 + 16))(v0[8], v4, v6);
  sub_1B4F68254();
  sub_1B4F68244();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_1B4F68834();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = v0[3];
    (*(v0[18] + 8))(v0[19], v0[17]);
    *v10 = v0[2];

    v11 = v0[1];

    return v11();
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_1B4E684A0;
    v14 = v0[9];
    v15 = v0[10];

    return Promise.resolve(file:line:)(v14, "SeymourClient/PromiseConcurrency.swift", 38, 2, 67, v15);
  }
}

uint64_t sub_1B4E6881C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t static Promise<>.parallel<A>(queue:maxConcurrent:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26[1] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v15 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v26 - v18;
  sub_1B4E66654(a1, a2, a3, MEMORY[0x1E69E7CA8] + 8, a4, *(a5 + 8), v26 - v18);
  v20 = swift_allocObject();
  *(v20 + 16) = nullsub_1;
  *(v20 + 24) = 0;
  (*(v12 + 16))(v15, v19, v11);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v12 + 32))(v23 + v21, v15, v11);
  v24 = (v23 + v22);
  *v24 = sub_1B4E6BF78;
  v24[1] = v20;
  sub_1B4F675F4();
  return (*(v12 + 8))(v19, v11);
}

uint64_t static Promise<>.serial<A>(queue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v24 - v16;
  sub_1B4E67E10(a1, a2, MEMORY[0x1E69E7CA8] + 8, a3, a4, v24 - v16);
  v18 = swift_allocObject();
  *(v18 + 16) = nullsub_1;
  *(v18 + 24) = 0;
  (*(v10 + 16))(v13, v17, v9);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v13, v9);
  v22 = (v21 + v20);
  *v22 = sub_1B4E6BF78;
  v22[1] = v18;
  sub_1B4F675F4();
  return (*(v10 + 8))(v17, v9);
}

uint64_t Promise<>.all<A>(queue:maxConcurrent:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = *(a5 + 16);
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;
  sub_1B4F68254();
  v15 = a1;

  sub_1B4F67624();
}

uint64_t sub_1B4E68E14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unsigned int (*a5)(char *, uint64_t, uint64_t)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a3;
  v20[6] = a4;
  v15 = sub_1B4F67674();
  v21 = sub_1B4EF8E20(sub_1B4E6B760, v20, a5, v15, MEMORY[0x1E69E73E0], a7, MEMORY[0x1E69E7410], v16);
  v17 = sub_1B4F68254();
  WitnessTable = swift_getWitnessTable();
  sub_1B4E66654(a1, a2, &v21, a6, v17, *(WitnessTable + 8), a8);
}

uint64_t sub_1B4E68F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v40 = a6;
  v41 = a4;
  v9 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v39 = &v35 - v15;
  v16 = sub_1B4DE34F0(0x65uLL);
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v17 = sub_1B4F67C54();
  __swift_project_value_buffer(v17, qword_1EDB71F48);
  v18 = sub_1B4F67C34();
  v19 = sub_1B4F685E4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v37 = a1;
    v23 = v22;
    v42 = v22;
    *v21 = 134218498;
    *(v21 + 4) = v16;
    *(v21 + 12) = 2080;
    v24 = sub_1B4F689D4();
    v35 = a3;
    v26 = sub_1B4DC4F88(v24, v25, &v42);
    v27 = v40;
    a3 = v35;

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v27;
    _os_log_impl(&dword_1B4DC2000, v18, v19, "Converting from Async-Await to Promise: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    a1 = v37;
    MEMORY[0x1B8C831D0](v23, -1, -1);
    v28 = v21;
    a7 = v36;
    MEMORY[0x1B8C831D0](v28, -1, -1);
  }

  v29 = sub_1B4F68324();
  v30 = v39;
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = a7;
  *(v31 + 40) = v38;
  *(v31 + 48) = v16;
  v32 = v40;
  v33 = v41;
  *(v31 + 56) = a3;
  *(v31 + 64) = v33;
  *(v31 + 72) = v9;
  *(v31 + 80) = v32;
  *(v31 + 88) = a1;
  *(v31 + 96) = a2;

  sub_1B4E4E620(0, 0, v30, &unk_1B4F738A0, v31);
}

uint64_t sub_1B4E69258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a3;
  v48 = a7;
  v12 = a5;
  v16 = a10;
  v45 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v46 = &v40 - v19;
  v20 = sub_1B4DE34F0(0x65uLL);
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v21 = sub_1B4F67C54();
  __swift_project_value_buffer(v21, qword_1EDB71F48);
  v22 = sub_1B4F67C34();
  v23 = sub_1B4F685E4();
  v24 = os_log_type_enabled(v22, v23);
  v44 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v41 = a1;
    v26 = v25;
    v27 = swift_slowAlloc();
    v42 = a8;
    v43 = a2;
    v40 = a10;
    v28 = v27;
    v49 = v27;
    *v26 = 134218498;
    *(v26 + 4) = v20;
    *(v26 + 12) = 2080;
    v29 = v47;
    v30 = sub_1B4F689D4();
    v32 = a4;
    v33 = sub_1B4DC4F88(v30, v31, &v49);

    *(v26 + 14) = v33;
    a4 = v32;
    *(v26 + 22) = 2048;
    *(v26 + 24) = a6;
    _os_log_impl(&dword_1B4DC2000, v22, v23, "Converting from Async-Await to Promise: %ld:%s:%lu", v26, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v34 = v28;
    v16 = v40;
    a8 = v42;
    a2 = v43;
    MEMORY[0x1B8C831D0](v34, -1, -1);
    v35 = v26;
    a1 = v41;
    MEMORY[0x1B8C831D0](v35, -1, -1);
  }

  else
  {

    v29 = v47;
  }

  v36 = sub_1B4F68324();
  v37 = v46;
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v48;
  *(v38 + 40) = a8;
  *(v38 + 48) = v44;
  *(v38 + 56) = v29;
  *(v38 + 64) = a4;
  *(v38 + 72) = v12;
  *(v38 + 80) = a6;
  *(v38 + 88) = a1;
  *(v38 + 96) = a2;

  sub_1B4E6B2F0(0, 0, v37, v16, v38);
}

uint64_t sub_1B4E69534(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v15;
  *(v8 + 48) = v14;
  *(v8 + 88) = v13;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v8 + 72) = v9;
  *v9 = v8;
  v9[1] = sub_1B4E69648;

  return v11(v8 + 16);
}

uint64_t sub_1B4E69648()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B4E6993C;
  }

  else
  {
    v2 = sub_1B4E6975C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E6975C()
{
  v16 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_1B4F689D4();
    v10 = sub_1B4DC4F88(v8, v9, &v14);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  v11 = v0[7];
  v14 = v0[2];
  v15 = 0;

  v11(&v14);
  swift_bridgeObjectRelease_n();
  v12 = v0[1];

  return v12();
}

uint64_t sub_1B4E6993C()
{
  v18 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_1B4F689D4();
    v10 = sub_1B4DC4F88(v8, v9, &v16);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  v11 = v0[10];
  v12 = v0[7];
  v16 = v11;
  v17 = 1;
  v13 = v11;
  v12(&v16);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B4E69B24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v18;
  *(v8 + 40) = v17;
  *(v8 + 120) = v16;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B8, &qword_1B4F6CE70);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_1B4F64ED4();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  v11 = swift_task_alloc();
  *(v8 + 96) = v11;
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  *(v8 + 104) = v12;
  *v12 = v8;
  v12[1] = sub_1B4E69CE0;

  return v14(v11);
}

uint64_t sub_1B4E69CE0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B4E6A034;
  }

  else
  {
    v2 = sub_1B4E69DF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E69DF4()
{
  v19 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_1B4F689D4();
    v10 = sub_1B4DC4F88(v8, v9, &v18);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  v12 = v0[11];
  v11 = v0[12];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[6];
  (*(v12 + 16))(v14, v11, v13);
  swift_storeEnumTagMultiPayload();
  v15(v14);
  sub_1B4DD2BC4(v14, &qword_1EB8F45B8, &qword_1B4F6CE70);
  (*(v12 + 8))(v11, v13);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B4E6A034()
{
  v18 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_1B4F689D4();
    v10 = sub_1B4DC4F88(v8, v9, &v17);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  v11 = v0[14];
  v12 = v0[9];
  v13 = v0[6];
  *v12 = v11;
  swift_storeEnumTagMultiPayload();
  v14 = v11;
  v13(v12);

  sub_1B4DD2BC4(v12, &qword_1EB8F45B8, &qword_1B4F6CE70);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B4E6A248(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v15;
  *(v8 + 40) = v14;
  *(v8 + 80) = v13;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v8 + 64) = v9;
  *v9 = v8;
  v9[1] = sub_1B4E6A354;

  return v11();
}

uint64_t sub_1B4E6A354()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B4E6A630;
  }

  else
  {
    v2 = sub_1B4E6A468;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4E6A468()
{
  v16 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_1B4F689D4();
    v10 = sub_1B4DC4F88(v8, v9, &v14);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  v11 = v0[6];
  v14 = 0;
  v15 = 0;
  v11(&v14);
  v12 = v0[1];

  return v12();
}

uint64_t sub_1B4E6A630()
{
  v18 = v0;
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71F48);
  v2 = sub_1B4F67C34();
  v3 = sub_1B4F685E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 134218498;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2080;
    v8 = sub_1B4F689D4();
    v10 = sub_1B4DC4F88(v8, v9, &v16);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&dword_1B4DC2000, v2, v3, "Finished A->P conversion: %ld:%s:%lu", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B8C831D0](v7, -1, -1);
    MEMORY[0x1B8C831D0](v6, -1, -1);
  }

  v11 = v0[9];
  v12 = v0[6];
  v16 = v11;
  v17 = 1;
  v13 = v11;
  v12(&v16);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B4E6A818(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v7 = sub_1B4F67654();
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = a4;

  v7(sub_1B4E6B790, v8);
}

uint64_t sub_1B4E6A8DC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[1] = a3;
  v9 = sub_1B4F67D54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4F67D74();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2 &= 1u;
  v24 = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = a1;
  *(v19 + 40) = v24;
  aBlock[4] = sub_1B4E6B7B4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4DCA7B0;
  aBlock[3] = &block_descriptor_3;
  v20 = _Block_copy(aBlock);

  sub_1B4E219A8(a1, a2);
  sub_1B4F67D64();
  v22[2] = MEMORY[0x1E69E7CC0];
  sub_1B4DCD900();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6870, &qword_1B4F710C0);
  sub_1B4DCBA40();
  sub_1B4F688A4();
  MEMORY[0x1B8C81F10](0, v18, v13, v20);
  _Block_release(v20);
  (*(v10 + 8))(v13, v9);
  (*(v15 + 8))(v18, v14);
}

uint64_t sub_1B4E6AB78(uint64_t a1, void *a2)
{
  *(v2 + 24) = *a2;
  *(v2 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4E6AB9C, 0, 0);
}

uint64_t sub_1B4E6AB9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54F0, &qword_1B4F73858);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = v0 + 24;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1B4E6ACA8;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v0 + 16, v3);
}

uint64_t sub_1B4E6ACA8()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4E4D35C, 0, 0);
  }

  else
  {
    v3 = v2[4];

    *v3 = v2[2];
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B4E6ADF0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B4DE0D94;

  return sub_1B4E6AB78(a1, (v1 + 16));
}

uint64_t sub_1B4E6AEB4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B4E6A818(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroy_12Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

void sub_1B4E6B02C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  JUMPOUT(0x1B4E6A248);
}

uint64_t sub_1B4E6B140(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + 16) = a1;
  v5 = *a3;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1B4E6B1E0;

  return sub_1B4E669B4(a2, v5);
}

uint64_t sub_1B4E6B1E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1B4E6B2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v24 - v11;
  sub_1B4E6B5DC(a3, v24 - v11);
  v13 = sub_1B4F68324();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B4DD2BC4(v12, &unk_1EB8F7040, &qword_1B4F71150);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B4F68314();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1B4F68274();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1B4F67FB4() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1B4DD2BC4(a3, &unk_1EB8F7040, &qword_1B4F71150);

    return v22;
  }

LABEL_8:
  sub_1B4DD2BC4(a3, &unk_1EB8F7040, &qword_1B4F71150);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1B4E6B5DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B4E6B64C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE13F0;

  JUMPOUT(0x1B4E69B24);
}

void sub_1B4E6B7A8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B4E6B7B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

void sub_1B4E6B844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  JUMPOUT(0x1B4E69534);
}

uint64_t sub_1B4E6B958(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return sub_1B4E6B140(a1, a2, v6);
}

uint64_t sub_1B4E6BA14(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4E67AF0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1B4E6BB20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE13F0;

  return sub_1B4E68028(a1, v1 + v7, v4, v5, v6);
}

uint64_t objectdestroy_81Tm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4E6BC90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B4DE0D94;

  return sub_1B4E66874(a1, v1 + v7, v4, v5, v6);
}

uint64_t sub_1B4E6BD80(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4E67298(a1, a2, v8, v6, v7, v9);
}

uint64_t sub_1B4E6BE68(uint64_t a1, double a2)
{
  v5 = v2[4];
  v6 = *(sub_1B4F67674() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v2[2];
  v9 = v2[3];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B4DE0D94;

  return sub_1B4E67D38(a1, v8, v9, v2 + v7, v5);
}

void *SessionPreferenceClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = &protocol witness table for XPCClient;
  v12[4] = &protocol witness table for XPCClient;
  ObjectType = swift_getObjectType();
  v18 = v10;
  v17 = 35;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = sub_1B4F66754();

  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v17, sub_1B4E6CC44, v14, ObjectType, v15, &protocol witness table for XPCClient, MEMORY[0x1E69CC648], MEMORY[0x1E69CC650]);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1B4E6C1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v14 = a6(a1, a4, a5, v6, ObjectType, a2, a3);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1B4E6C224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for AudioLanguagePreferenceUpdated(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v10 = sub_1B4F66754();
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  (*(a3 + 8))(v8, v5, &protocol witness table for AudioLanguagePreferenceUpdated, ObjectType, a3);
  return sub_1B4E6CE14(v8);
}

uint64_t SessionPreferenceClient.queryAudioFocusSelection()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = 253;
  return (*(v1 + 24))(&v4, MEMORY[0x1E69CBEA0], MEMORY[0x1E69CBE90], MEMORY[0x1E69CBE98], ObjectType, v1);
}

uint64_t SessionPreferenceClient.queryAudioLanguagePreference()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v6 = 255;
  v3 = *(v1 + 24);
  v4 = sub_1B4F66754();
  return v3(&v6, v4, MEMORY[0x1E69CC648], MEMORY[0x1E69CC650], ObjectType, v1);
}

uint64_t sub_1B4E6C4EC(uint64_t a1, __int16 a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v17 = a2;
  v16[0] = sub_1B4F674D4();
  v16[1] = v11;
  v12 = *(v9 + 32);
  v13 = a3(0);
  v12(&v17, v16, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], a4, a5, ObjectType, v9);
}

uint64_t SessionPreferenceClient.updateAudioFocusSelection(_:)(char a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v7 = 254;
  v6 = a1 & 1;
  return (*(v3 + 16))(&v7, &v6, MEMORY[0x1E69CBEA0], MEMORY[0x1E69CBE90], MEMORY[0x1E69CBE98], ObjectType, v3);
}

uint64_t sub_1B4E6C718(uint64_t a1, __int16 a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = a2;
  v12 = *(v10 + 16);
  v13 = a3(0);
  return v12(&v16, a1, v13, a4, a5, ObjectType, v10);
}

uint64_t sub_1B4E6C7CC()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  v4 = 253;
  return (*(v1 + 24))(&v4, MEMORY[0x1E69CBEA0], MEMORY[0x1E69CBE90], MEMORY[0x1E69CBE98], ObjectType, v1);
}

uint64_t sub_1B4E6C850()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  v6 = 255;
  v3 = *(v1 + 24);
  v4 = sub_1B4F66754();
  return v3(&v6, v4, MEMORY[0x1E69CC648], MEMORY[0x1E69CC650], ObjectType, v1);
}

uint64_t sub_1B4E6C968(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v11 = *(*v7 + 24);
  ObjectType = swift_getObjectType();
  v19 = a4;
  v18[0] = sub_1B4F674D4();
  v18[1] = v13;
  v14 = *(v11 + 32);
  v15 = a5(0);
  v14(&v19, v18, MEMORY[0x1E69E6158], v15, MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], a6, a7, ObjectType, v11);
}

uint64_t sub_1B4E6CA4C(char a1)
{
  v3 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  v7 = 254;
  v6 = a1 & 1;
  return (*(v3 + 16))(&v7, &v6, MEMORY[0x1E69CBEA0], MEMORY[0x1E69CBE90], MEMORY[0x1E69CBE98], ObjectType, v3);
}

uint64_t sub_1B4E6CB90(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v13 = *(*v7 + 24);
  ObjectType = swift_getObjectType();
  v18 = a4;
  v15 = *(v13 + 16);
  v16 = a5(0);
  return v15(&v18, a1, v16, a6, a7, ObjectType, v13);
}

void *sub_1B4E6CC4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a7;
  ObjectType = swift_getObjectType();
  v17 = a1;
  v16 = 35;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = sub_1B4F66754();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  TransportDispatching.register<A>(event:handler:)(&v16, sub_1B4E6CE70, v13, ObjectType, v14, a7, MEMORY[0x1E69CC648], MEMORY[0x1E69CC650]);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E6CD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4E6CC4C(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4E6CE14(uint64_t a1)
{
  v2 = type metadata accessor for AudioLanguagePreferenceUpdated(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4E6CE74(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_1B4F68574();
  if (!v22)
  {
    return sub_1B4F68204();
  }

  v44 = v22;
  v48 = sub_1B4F68AB4();
  v35 = sub_1B4F68AC4();
  sub_1B4F68A64();
  result = sub_1B4F68564();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_1B4F68594();
      v26 = v14;
      v27 = v14;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1B4F68AA4();
      result = sub_1B4F68584();
      ++v24;
      v14 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.applyingRemoteBrowsingEnvironment(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[7] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v5 = sub_1B4F68254();
  WitnessTable = swift_getWitnessTable();
  return sub_1B4E6CE74(sub_1B4E6D374, v9, v5, a3, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
}

uint64_t sub_1B4E6D3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.applyingRemoteBrowsingEnvironment(_:)(a1, *v4, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t OptInPrivacyPreferenceUpdated.init(preference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66624();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t OptInPrivacyPreferenceUpdated.preference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66624();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}