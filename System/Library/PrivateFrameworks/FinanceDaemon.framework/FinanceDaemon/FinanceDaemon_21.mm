uint64_t sub_226CD198C()
{
  sub_226B11B98(v0[15], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226CD1A08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_226D66E9C();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CD1AD0, 0, 0);
}

uint64_t sub_226CD1AD0()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 72);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  (*(v2 + 104))(v1, *MEMORY[0x277CC65B8], v3);
  sub_226CD0988(v1, v6);
  (*(v2 + 8))(v1, v3);
  v8 = *v7;
  v9 = sub_226D676AC();
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v5;
  *(v10 + 32) = v4;
  *(v10 + 40) = v9;
  sub_226D6EB7C();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_226CD1C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D66E9C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CD1D1C, 0, 0);
}

uint64_t sub_226CD1D1C()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[8];
  (*(v2 + 104))();
  sub_226CD0988(v4, v3);
  (*(v2 + 8))(v4, v1);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_226CD8E38;
  v6 = v0[5];

  return sub_226CDC7BC(v6);
}

uint64_t sub_226CD1E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226CD1EBC, 0, 0);
}

uint64_t sub_226CD1EBC()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = **(v0 + 24);
  v2 = swift_task_alloc();
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_226D66E6C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226CD1FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_226CD1FE4, 0, 0);
}

uint64_t sub_226CD1FE4()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_226CD20E8;
  v3 = v0[5];
  v2 = v0[6];

  return sub_226D58890(v3, v2);
}

uint64_t sub_226CD20E8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x2822009F8](sub_226CD2244, 0, 0);
  }
}

uint64_t sub_226CD226C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20[-1] - v6;
  v8 = sub_226D6D5DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_226D67DEC();

  if (!v2)
  {
    v13 = *a1;
    sub_226D6D56C();
    if (sub_226CDD218(v11, v13[65], v13[66]))
    {
      v14 = v13[28];
      v15 = v13[29];
      v16 = __swift_project_boxed_opaque_existential_1(v13 + 25, v14);
      v20[3] = v14;
      v20[4] = *(v15 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
      (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v16, v14);
      sub_226B5A79C(v7);
      (*(v9 + 8))(v11, v8);
      sub_226AFD7B8(v20);
      v18 = sub_226D6D4AC();
      LOBYTE(v16) = (*(*(v18 - 8) + 48))(v7, 1, v18) == 1;
      result = sub_226AC47B0(v7, &qword_27D7A8BE0, &unk_226D718F0);
      *a2 = v16;
    }

    else
    {
      result = (*(v9 + 8))(v11, v8);
      *a2 = 0;
    }
  }

  return result;
}

uint64_t sub_226CD24FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_226CD2528, 0, 0);
}

uint64_t sub_226CD2528()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_226CD2634;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  return sub_226D59B00(v6, v4, v5, v2, v3);
}

uint64_t sub_226CD2634(char a1)
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
    *(v4 + 88) = a1 & 1;

    return MEMORY[0x2822009F8](sub_226CD2784, 0, 0);
  }
}

uint64_t sub_226CD27A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_226CD27D0, 0, 0);
}

uint64_t sub_226CD27D0()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_226CD28D4;
  v3 = v0[5];
  v2 = v0[6];

  return sub_226D59EB0(v3, v2);
}

uint64_t sub_226CD28D4(char a1)
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
    *(v4 + 64) = a1 & 1;

    return MEMORY[0x2822009F8](sub_226CD2A24, 0, 0);
  }
}

uint64_t sub_226CD2A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_226CD2A70, 0, 0);
}

uint64_t sub_226CD2A70()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_226CD2B74;
  v3 = v0[5];
  v2 = v0[6];

  return sub_226D5A238(v3, v2);
}

uint64_t sub_226CD2B74(char a1)
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
    *(v4 + 64) = a1 & 1;

    return MEMORY[0x2822009F8](sub_226CD8E34, 0, 0);
  }
}

uint64_t sub_226CD2CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_226CD2CF0, 0, 0);
}

uint64_t sub_226CD2CF0()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_226CD2DFC;
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return sub_226D30CD8(v6, v7, v4, v5, v2, v3);
}

uint64_t sub_226CD2DFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226CD2EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v14;
  *(v8 + 80) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_226D68CEC();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA0, &qword_226D7B570);
  *(v8 + 136) = swift_task_alloc();
  v10 = sub_226D6BA8C();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CD307C, 0, 0);
}

uint64_t sub_226CD307C()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_226AC40E8(*(v0 + 32), v3, &qword_27D7A8DA0, &qword_226D7B570);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(*(v0 + 136), &qword_27D7A8DA0, &qword_226D7B570);
LABEL_5:
    sub_226D6BA5C();
    goto LABEL_6;
  }

  v4 = *(*(v0 + 152) + 32);
  v4(*(v0 + 160), *(v0 + 136), *(v0 + 144));
  if (sub_226D6BA7C())
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_226D67DEC();
  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 144);

  v4(v32, v33, v34);
LABEL_6:
  v5 = **(v0 + 40);
  if (sub_226D320D4())
  {
    v6 = sub_226D66EDC();
    sub_226CD740C();
    swift_allocError();
    v8 = v7;
    v9 = *MEMORY[0x277CC6A40];
    v10 = sub_226D66FDC();
    (*(*(v10 - 8) + 104))(v8, v9, v10);
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277CC65D0], v6);
    swift_willThrow();
    (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));

    v27 = *(v0 + 8);
LABEL_13:

    return v27();
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 112);
  v37 = *(v0 + 104);
  v35 = *(v0 + 64);
  v36 = *(v0 + 72);
  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v0 + 24);
  v17 = v5[38];
  v16 = v5[39];
  __swift_project_boxed_opaque_existential_1(v5 + 35, v17);
  (*(v16 + 8))(v14, v13, v35, v36, v15, v17, v16);
  (*(v12 + 104))(v11, *MEMORY[0x277CC75F8], v37);
  v18 = sub_226D68CDC();
  v19 = *(v12 + 8);
  *(v0 + 176) = v19;
  *(v0 + 184) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v11, v37);
  if ((v18 & 1) == 0)
  {
    v28 = *(v0 + 168);
    v29 = *(v0 + 144);
    v30 = *(v0 + 152);
    v31 = *(v0 + 16);
    (*(v0 + 176))(*(v0 + 128), *(v0 + 104));
    (*(v30 + 8))(v28, v29);
    *v31 = MEMORY[0x277D84F90];

    v27 = *(v0 + 8);
    goto LABEL_13;
  }

  v20 = sub_226D676AC();
  *(v0 + 192) = v20;
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_226CD3530;
  v22 = *(v0 + 168);
  v23 = *(v0 + 88);
  v24 = *(v0 + 96);
  v25 = *(v0 + 80);

  return static DaemonFinancialDataHistoricalQuery.fetchHistoricalTransactions(context:lastToken:entityName:auxEntitiesPredicateProvider:)(v20, v25, v23, v24, v22);
}

uint64_t sub_226CD3530(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  *(*v2 + 208) = v1;

  if (v1)
  {
    v6 = sub_226CD3760;
  }

  else
  {
    *(v4 + 216) = a1;
    v6 = sub_226CD3678;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226CD3678()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 16);
  (*(v0 + 176))(*(v0 + 128), *(v0 + 104));
  (*(v4 + 8))(v2, v3);
  *v5 = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_226CD3760()
{
  (*(v0 + 176))(*(v0 + 128), *(v0 + 104));
  (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226CD3824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v17;
  *(v8 + 104) = v18;
  *(v8 + 80) = v16;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_226D67E0C();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();
  v10 = sub_226D6A34C();
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v10 - 8);
  *(v8 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  *(v8 + 160) = swift_task_alloc();
  v11 = sub_226D67F1C();
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 - 8);
  *(v8 + 184) = swift_task_alloc();
  v12 = sub_226D68CEC();
  *(v8 + 192) = v12;
  *(v8 + 200) = *(v12 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA0, &qword_226D7B570);
  *(v8 + 224) = swift_task_alloc();
  v13 = sub_226D6BA8C();
  *(v8 + 232) = v13;
  *(v8 + 240) = *(v13 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CD3AFC, 0, 0);
}

uint64_t sub_226CD3AFC()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_226AC40E8(*(v0 + 32), v3, &qword_27D7A8DA0, &qword_226D7B570);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_226AC47B0(*(v0 + 224), &qword_27D7A8DA0, &qword_226D7B570);
LABEL_5:
    sub_226D6BA5C();
    goto LABEL_6;
  }

  v4 = *(*(v0 + 240) + 32);
  v4(*(v0 + 248), *(v0 + 224), *(v0 + 232));
  if (sub_226D6BA7C())
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_226D67DEC();
  v41 = *(v0 + 248);
  v40 = *(v0 + 256);
  v42 = *(v0 + 232);

  v4(v40, v41, v42);
LABEL_6:
  v55 = **(v0 + 40);
  if (sub_226D320D4())
  {
    v5 = sub_226D66EDC();
    sub_226CD740C();
    swift_allocError();
    v7 = v6;
    v8 = *MEMORY[0x277CC6A40];
    v9 = sub_226D66FDC();
    (*(*(v9 - 8) + 104))(v7, v8, v9);
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277CC65D0], v5);
    swift_willThrow();
    (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));

    v28 = *(v0 + 8);
    goto LABEL_18;
  }

  v10 = *(v0 + 208);
  v54 = *(v0 + 200);
  v52 = *(v0 + 192);
  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v0 + 24);
  v17 = v55[38];
  v16 = v55[39];
  __swift_project_boxed_opaque_existential_1(v55 + 35, v17);
  (*(v16 + 8))(v14, v13, v12, v11, v15, v17, v16);
  (*(v54 + 104))(v10, *MEMORY[0x277CC75F8], v52);
  LOBYTE(v11) = sub_226D68CDC();
  v18 = *(v54 + 8);
  v18(v10, v52);
  if (v11)
  {
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    v21 = *(v0 + 160);
    sub_226D67DAC();
    if ((*(v20 + 48))(v21, 1, v19) != 1)
    {
      v49 = *(v0 + 256);
      v30 = *(v0 + 208);
      v32 = *(v0 + 192);
      v31 = *(v0 + 200);
      v44 = *(v0 + 216);
      v45 = *(v0 + 184);
      v33 = *(v0 + 176);
      v43 = *(v0 + 152);
      v50 = *(v0 + 168);
      v51 = *(v0 + 144);
      v53 = *(v0 + 136);
      v35 = *(v0 + 120);
      v34 = *(v0 + 128);
      v36 = *(v0 + 112);
      v47 = *(v0 + 88);
      v48 = *(v0 + 80);
      v37 = *(v0 + 24);
      v46 = *(v0 + 96);
      (*(v33 + 32))();
      (*(v35 + 16))(v34, v37, v36);
      (*(v31 + 16))(v30, v44, v32);
      sub_226C87A98(v34, v30, v43);
      v38 = sub_226D676AC();
      v39 = swift_task_alloc();
      *(v39 + 16) = v45;
      *(v39 + 24) = v43;
      *(v39 + 32) = v47;
      *(v39 + 40) = v46;
      *(v39 + 56) = v38;
      *(v39 + 64) = v49;
      *(v39 + 72) = v48;
      *(v39 + 80) = 300;
      sub_226D6C32C();
      sub_226D6EB8C();

      v18(v44, v32);
      (*(v51 + 8))(v43, v53);
      (*(v33 + 8))(v45, v50);
      goto LABEL_16;
    }

    sub_226AC47B0(*(v0 + 160), &qword_27D7A7180, &qword_226D74600);
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v22 = sub_226D6E07C();
    __swift_project_value_buffer(v22, qword_28105F5E0);
    v23 = sub_226D6E05C();
    v24 = sub_226D6E9CC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_226AB4000, v23, v24, "Application without bundle Identifier", v25, 2u);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
    }
  }

  v26 = *(v0 + 216);
  v27 = *(v0 + 192);
  sub_226D6C31C();
  v18(v26, v27);
LABEL_16:
  (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));

  v28 = *(v0 + 8);
LABEL_18:

  return v28();
}

uint64_t sub_226CD41FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_226B98DD8;

  return sub_226D32998(a3);
}

uint64_t sub_226CD42A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226CD42CC, 0, 0);
}

uint64_t sub_226CD42CC()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_226CD8E30;
  v3 = v0[4];
  v2 = v0[5];

  return sub_226C7BA90(v3, v2);
}

uint64_t sub_226CD43D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226CD43F4, 0, 0);
}

uint64_t sub_226CD43F4()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_226CD44FC;
  v2 = v0[5];
  v3 = v0[2];

  return sub_226D31070(v3, v2);
}

uint64_t sub_226CD44FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_226CD45F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_226D67F1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67DFC();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_226AC47B0(v8, &qword_27D7A7180, &qword_226D74600);
    if (qword_28105F6E0 != -1)
    {
      swift_once();
    }

    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F6E8);
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9CC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226AB4000, v14, v15, "Connecting process has no bundle identifier", v16, 2u);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_226CCFEE0(a3, a4, v12);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_226CD4860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_226D67F1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67DFC();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A7180, &qword_226D74600);
    if (qword_28105F6E0 != -1)
    {
      swift_once();
    }

    v11 = sub_226D6E07C();
    __swift_project_value_buffer(v11, qword_28105F6E8);
    v12 = sub_226D6E05C();
    v13 = sub_226D6E9CC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226AB4000, v12, v13, "Connecting process has no bundle identifier", v14, 2u);
      MEMORY[0x22AA8BEE0](v14, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_226CD0360(a3, v10);
    (*(v8 + 8))(v10, v7);
  }
}

void sub_226CD4AC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v11 - v1;
  v3 = sub_226D67F1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67DFC();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_226AC47B0(v2, &qword_27D7A7180, &qword_226D74600);
    if (qword_28105F6E0 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F6E8);
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226AB4000, v8, v9, "Connecting process has no bundle identifier", v10, 2u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_226CD0684(v6);
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_226CD4D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226CD4D3C, 0, 0);
}

uint64_t sub_226CD4D3C()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = **(v0 + 24);
  v2 = swift_task_alloc();
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_226D66E6C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226CD4E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226CD4E60, 0, 0);
}

uint64_t sub_226CD4E60()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = *(v0 + 32);
  v2 = **(v0 + 24);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_226D66E6C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226CD4F60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226CD4F80, 0, 0);
}

uint64_t sub_226CD4F80()
{
  swift_getKeyPath();
  sub_226D67DEC();

  sub_226D66E6C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226CD505C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226CD5080, 0, 0);
}

uint64_t sub_226CD5080()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = **(v0 + 24);
  v2 = swift_task_alloc();
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_226D66E6C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226CD5180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226CD51A4, 0, 0);
}

uint64_t sub_226CD51A4()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = *(v0 + 32);
  v2 = **(v0 + 24);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_226D66E6C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226CD52A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226CD52C4, 0, 0);
}

uint64_t sub_226CD52C4()
{
  swift_getKeyPath();
  sub_226D67DEC();

  sub_226D66E6C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226CD53A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226CD53C4, 0, 0);
}

uint64_t sub_226CD53C4()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = **(v0 + 24);
  v4 = swift_task_alloc();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  sub_226D66E6C();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_226CD54CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_226CD54F0, 0, 0);
}

uint64_t sub_226CD54F0()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = *(v0 + 32);
  v2 = **(v0 + 24);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_226D66E6C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226CD55F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226CD5610, 0, 0);
}

uint64_t sub_226CD5610()
{
  swift_getKeyPath();
  sub_226D67DEC();

  sub_226D66E6C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226CD5724()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226CD55F0(v0 + v3, v0 + v4);
}

uint64_t sub_226CD5824()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_226D6D52C() - 8);
  v6 = (v4 + *(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_226AE5A84;

  return sub_226CD54CC(v0 + v3, v0 + v4, v0 + v6);
}

uint64_t sub_226CD5964()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_226D6925C() - 8);
  v6 = (v4 + *(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_226AE5A84;

  return sub_226CD53A0(v0 + v3, v0 + v4, v0 + v6, v7);
}

uint64_t sub_226CD5ADC()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226CD52A4(v0 + v3, v0 + v4);
}

uint64_t sub_226CD5BDC()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_226D6D52C() - 8);
  v6 = (v4 + *(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_226AE5A84;

  return sub_226CD5180(v0 + v3, v0 + v4, v0 + v6);
}

uint64_t sub_226CD5D1C()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_226D6AEEC() - 8);
  v6 = (v4 + *(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_226AE5A84;

  return sub_226CD505C(v0 + v3, v0 + v4, v0 + v6, v7);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 88, v3 | 7);
}

uint64_t sub_226CD5F4C()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226CD4F60(v0 + v3, v0 + v4);
}

uint64_t sub_226CD604C()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_226D6D52C() - 8);
  v6 = (v4 + *(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_226AE5A84;

  return sub_226CD4E3C(v0 + v3, v0 + v4, v0 + v6);
}

uint64_t sub_226CD618C()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_226D6AEDC() - 8);
  v6 = (v4 + *(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_226AE5A84;

  return sub_226CD4D18(v0 + v3, v0 + v4, v0 + v6, v7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  v10 = v3 | v8;
  v11 = (v5 + v8 + 88) & ~v8;
  (*(v7 + 8))(v0 + v11, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + v9, v10 | 7);
}

uint64_t sub_226CD647C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D67E0C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_226D6D52C() - 8);
  v9 = (v7 + *(v8 + 80) + 88) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226AE5A84;

  return sub_226CD43D0(a1, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_226CD65D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B924B0(a1, v5, v4);
}

uint64_t objectdestroy_16Tm(uint64_t (*a1)(void))
{
  v3 = sub_226D67E0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = a1(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  (*(v4 + 8))(v1 + v6, v3);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v7 + 8));
  if (*(v1 + v7 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + v7 + 48));
  }

  v12 = (v7 + v10 + 88) & ~v10;
  v13 = (v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v9 + 8))(v1 + v12, v8);

  return MEMORY[0x2821FE8E8](v1, v13 + 8, v5 | v10 | 7);
}

uint64_t sub_226CD6934()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_226D690CC() - 8);
  v6 = (v4 + *(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_226AE5A84;

  return sub_226CD42A8(v0 + v3, v0 + v4, v0 + v6, v7);
}

uint64_t sub_226CD6AAC(uint64_t a1)
{
  v4 = *(v1 + 104);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226CD41FC(a1, v1 + 16, v4);
}

uint64_t sub_226CD6B58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B92774(a1, v5, v4);
}

uint64_t sub_226CD6C04(uint64_t a1)
{
  v2 = *(sub_226D67E0C() - 8);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v3 = v15 + *(v2 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA0, &qword_226D7B570) - 8);
  v13 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v5 = (*(v4 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_226D66F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  v6 = (v1 + ((v5 + 91) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = swift_task_alloc();
  *(v14 + 16) = v11;
  *v11 = v14;
  v11[1] = sub_226AE5A84;

  return sub_226CD3824(a1, v1 + v15, v1 + v13, v1 + v5, v7, v8, v9, v10);
}

uint64_t sub_226CD6E8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B92924(a1, v5, v4);
}

uint64_t sub_226CD6F38(uint64_t a1)
{
  v2 = *(sub_226D67E0C() - 8);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v3 = v15 + *(v2 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA0, &qword_226D7B570) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8DA8, &unk_226D7D230);
  v7 = (v1 + ((v6 + 91) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = swift_task_alloc();
  *(v14 + 16) = v12;
  *v12 = v14;
  v12[1] = sub_226AE5A84;

  return sub_226CD2EF0(a1, v1 + v15, v1 + v5, v1 + v6, v8, v9, v10, v11);
}

uint64_t sub_226CD7178(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B92AD4(a1, v5, v4);
}

uint64_t sub_226CD7224(uint64_t a1)
{
  v4 = *(sub_226D67E0C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + ((v6 + 91) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_226AE5A84;

  return sub_226CD2CC4(a1, v1 + v5, v1 + v6, v8, v9, v10, v11);
}

uint64_t sub_226CD7360(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B92C84(a1, v5, v4);
}

unint64_t sub_226CD740C()
{
  result = qword_27D7A7DC0;
  if (!qword_27D7A7DC0)
  {
    sub_226D66EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7DC0);
  }

  return result;
}

uint64_t sub_226CD74BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D67E0C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_226D67A2C() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_226AE5A84;

  return sub_226CD2A48(a1, v1 + v6, v1 + v7, v11, v1 + v10);
}

uint64_t sub_226CD7620(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B92E34(a1, v5, v4);
}

uint64_t objectdestroy_134Tm()
{
  v1 = sub_226D67E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_226D67A2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 8));
  if (*(v0 + v5 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5 + 48));
  }

  v10 = v3 | v8;
  v11 = (((v5 + 95) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  (*(v7 + 8))(v0 + v11, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + v9, v10 | 7);
}

uint64_t sub_226CD7854(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D67E0C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_226D67A2C() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_226AE5A84;

  return sub_226CD27A8(a1, v1 + v6, v1 + v7, v11, v1 + v10);
}

uint64_t sub_226CD79B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D67E0C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 95) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_226D67A2C() - 8);
  v11 = (*(v10 + 80) + v9 + 16) & ~*(v10 + 80);
  v12 = v1 + v8;
  v13 = *(v1 + v8);
  v14 = *(v12 + 8);
  v15 = v1 + v9;
  v16 = *(v1 + v9);
  v17 = *(v15 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_226AE5A84;

  return sub_226CD24FC(a1, v1 + v6, v1 + v7, v13, v14, v16, v17, v1 + v11);
}

uint64_t sub_226CD7B9C(uint64_t a1)
{
  v4 = *(sub_226D67E0C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + ((v6 + 95) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AD827C;

  return sub_226CD1FBC(a1, v1 + v5, v1 + v6, v8, v9);
}

uint64_t sub_226CD7CC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226B92FE4(a1, v5, v4);
}

uint64_t sub_226CD7D70()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 95) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v5);
  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_226AE5A84;

  return sub_226CD1E98(v0 + v3, v0 + v4, v6, v7);
}

uint64_t sub_226CD7FCC()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_226D6D4AC() - 8);
  v7 = (v5 + *(v6 + 80) + 88) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_226AE5A84;

  return sub_226CD1C58(v0 + v3, v0 + v4, v0 + v5, v0 + v7);
}

uint64_t sub_226CD8120()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_226D6B49C() - 8);
  v7 = (v5 + *(v6 + 80) + 89) & ~*(v6 + 80);
  v8 = v0 + v5;
  v9 = *(v8 + 88);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_226AE5A84;

  return sub_226CD1A08(v0 + v3, v0 + v4, v8, v9, v0 + v7);
}

uint64_t sub_226CD82A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D67E0C() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_226D6799C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v1 + ((v10 + 91) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_226AE5A84;

  return sub_226CD157C(a1, v1 + 16, v1 + v6, v1 + v9, v1 + v10, v12, v13, v14);
}

uint64_t sub_226CD8450(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B934A8(a1, v5, v4);
}

uint64_t sub_226CD84FC()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_226D6B49C() - 8);
  v7 = (v5 + *(v6 + 80) + 88) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_226AE5A84;

  return sub_226CD1224(v0 + v3, v0 + v4, v0 + v5, v0 + v7);
}

uint64_t sub_226CD8650()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + ((v5 + 89) & 0xFFFFFFFFFFFFFFF8));
  v7 = v6[1];
  v8 = *v6;
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_226AE5A84;

  return sub_226CD0EC0(v0 + v3, v0 + v4, v0 + v5, v8, v7);
}

uint64_t objectdestroy_177Tm(uint64_t (*a1)(void))
{
  v3 = sub_226D67E0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = a1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v15 = *(v10 + 64);
  (*(v4 + 8))(v1 + v6, v3);
  if (*(v1 + v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + v7));
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v8 + 8));
  if (*(v1 + v8 + 72))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v1 + v8 + 48));
  }

  v12 = v5 | v11;
  v13 = (v8 + v11 + 88) & ~v11;
  (*(v10 + 8))(v1 + v13, v9);

  return MEMORY[0x2821FE8E8](v1, v13 + v15, v12 | 7);
}

uint64_t sub_226CD8928()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_226D6B49C() - 8);
  v7 = (v5 + *(v6 + 80) + 88) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_226AE5A84;

  return sub_226CD0C80(v0 + v3, v0 + v4, v0 + v5, v0 + v7);
}

uint64_t sub_226CD8AC0()
{
  v2 = *(sub_226D67E0C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226CD0B68(v0 + v3, v4);
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit22CoreAnalyticsProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_226CD8D84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226CD8DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_226CD8E4C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_226D6A32C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_226D676AC();
  v10 = sub_226D6EB2C();
  if (v10)
  {
    v11 = v10;
    v12 = sub_226D6E36C();
    [v9 setTransactionAuthor_];

    (*(v6 + 104))(v8, *MEMORY[0x277CC7B98], v5);
    sub_226D6EA1C();
    (*(v6 + 8))(v8, v5);
    if (v24)
    {
      v13 = swift_dynamicCast();
      if (v13)
      {
        MEMORY[0x28223BE20](v13);
        *&v23[-48] = v14;
        *&v23[-40] = v9;
        *&v23[-32] = a2;
        v23[-24] = a3 & 1;
        *&v23[-16] = v11;
        sub_226D6EB8C();

        return;
      }
    }

    else
    {
      sub_226AC47B0(v23, &unk_27D7A8BB0, &unk_226D74340);
    }

    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v19 = sub_226D6E07C();
    __swift_project_value_buffer(v19, qword_28105F628);
    v20 = sub_226D6E05C();
    v21 = sub_226D6E9CC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_226AB4000, v20, v21, "No latest migrated schema value found. Skipping migration.", v22, 2u);
      MEMORY[0x22AA8BEE0](v22, -1, -1);
    }
  }

  else
  {
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v15 = sub_226D6E07C();
    __swift_project_value_buffer(v15, qword_28105F628);
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9CC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226AB4000, v16, v17, "Cloud store not found for post install migration task", v18, 2u);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }
  }
}

void sub_226CD91F8(void *a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v55 = a5;
  LODWORD(v58) = a4;
  v63[4] = *MEMORY[0x277D85DE8];
  v54 = sub_226D6A32C();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D67C7C();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D681CC();
  v12 = [swift_getObjCClassFromMetadata() entityName];
  if (!v12)
  {
    sub_226D6E39C();
    v12 = sub_226D6E36C();
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_226D67C5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D71F40;
  v15 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_226D70840;
  v18 = a1 + 1;
  if ((a1 + 1) != v18)
  {
    __break(1u);
LABEL_26:
    v29 = sub_226D6EDFC();
    goto LABEL_8;
  }

  v59 = a3;
  v19 = MEMORY[0x277D84958];
  v20 = MEMORY[0x277D849A0];
  *(v17 + 56) = MEMORY[0x277D84958];
  *(v17 + 64) = v20;
  *(v17 + 32) = v18;
  v61 = xmmword_226D70840;
  *(v14 + 32) = sub_226D6E91C();
  v21 = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = v61;
  v23 = sub_226D67C6C();
  *(v22 + 56) = v21;
  *(v22 + 64) = MEMORY[0x277D849A0];
  *(v22 + 32) = v23;
  *(v14 + 40) = sub_226D6E91C();
  v24 = sub_226D6E5CC();

  v25 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v13 setPredicate_];
  [v13 setResultType_];
  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v26 = v62;
  v27 = sub_226D6EBBC();
  v16 = v26;
  a1 = v13;
  if (v26)
  {
    (*(v56 + 8))(v11, v57);

    return;
  }

  v15 = v27;
  v51 = v11;
  if (v27 >> 62)
  {
    goto LABEL_26;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v30 = v59;
  v50 = a1;
  if (v29)
  {
    if (v29 < 1)
    {
      __break(1u);
    }

    v31 = 0;
    v62 = v15 & 0xC000000000000001;
    LODWORD(v61) = v58 & 1;
    *&v28 = 138412290;
    v58 = v28;
    v60 = v15;
    do
    {
      if (v62)
      {
        v32 = MEMORY[0x22AA8AFD0](v31, v15);
      }

      else
      {
        v32 = *(v15 + 8 * v31 + 32);
      }

      v33 = v32;
      MEMORY[0x28223BE20](v32);
      *(&v50 - 4) = v34;
      *(&v50 - 3) = a2;
      *(&v50 - 2) = v30;
      *(&v50 - 8) = v61;
      sub_226D6EB7C();
      if (v16)
      {
        v35 = v29;
        if (qword_28105F620 != -1)
        {
          swift_once();
        }

        v36 = sub_226D6E07C();
        __swift_project_value_buffer(v36, qword_28105F628);
        v37 = v16;
        v38 = sub_226D6E05C();
        v39 = sub_226D6E9DC();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = v58;
          v42 = v16;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v43;
          *v41 = v43;
          _os_log_impl(&dword_226AB4000, v38, v39, "Failed to re-import cloud order with error: %@", v40, 0xCu);
          sub_226AC47B0(v41, &qword_27D7A5FB0, &qword_226D70870);
          MEMORY[0x22AA8BEE0](v41, -1, -1);
          v44 = v40;
          v30 = v59;
          MEMORY[0x22AA8BEE0](v44, -1, -1);
        }

        [a2 reset];
        v16 = 0;
        v29 = v35;
        v15 = v60;
      }

      else
      {
      }

      ++v31;
    }

    while (v29 != v31);
  }

  (*(v52 + 104))(v53, *MEMORY[0x277CC7B98], v54);
  v45 = v51;
  v46 = sub_226D67C6C();
  v63[3] = MEMORY[0x277D84958];
  LOWORD(v63[0]) = v46;
  sub_226D6EA2C();
  v63[0] = 0;
  if ([a2 save_])
  {
    v47 = *(v56 + 8);
    v48 = v63[0];
    v47(v45, v57);
  }

  else
  {
    v49 = v63[0];
    sub_226D6D04C();

    swift_willThrow();
    (*(v56 + 8))(v45, v57);
  }
}

void sub_226CD9940(uint64_t a1, void *a2)
{
  sub_226D681CC();
  v4 = sub_226D6817C();
  if (!v2)
  {
    v5 = v4;
    sub_226CD9A28(v5, a2);
  }
}

uint64_t sub_226CD9A28(void *a1, void *a2)
{
  v74 = a1;
  v69 = a2;
  v95 = *MEMORY[0x277D85DE8];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  MEMORY[0x28223BE20](v64);
  v63 = (&v61 - v2);
  v3 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v61 - v6;
  v7 = sub_226D6D1AC();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v66 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v68 = &v61 - v11;
  v12 = sub_226B31FA8();
  v13 = type metadata accessor for WalletMessageUpdater();
  v14 = swift_allocObject();
  v15 = sub_226D69BFC();
  v16 = MEMORY[0x22AA85C90]();
  *(&v92 + 1) = &type metadata for ClassicOrderBiomeStream;
  *&v93[0] = &off_283A6D820;
  sub_226C02324(v93 + 8);
  v17 = sub_226D6B5EC();
  v18 = MEMORY[0x277CC7F68];
  v89 = v17;
  v90 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(&v88);
  sub_226D6B58C();
  v86 = v17;
  v87 = v18;
  __swift_allocate_boxed_opaque_existential_1(&v85);
  sub_226D6B5AC();
  v19 = sub_226D6827C();
  v83 = v13;
  v84 = sub_226B1B7F0();
  *&v82 = v14;
  type metadata accessor for ManagedOrderImporter();
  inited = swift_initStackObject();
  *(inited + 312) = 0xD000000000000018;
  *(inited + 320) = 0x8000000226D81BA0;
  sub_226AC484C(&v88, inited + 232);
  sub_226AC484C(&v85, inited + 272);
  v21 = MEMORY[0x277CC7238];
  *(inited + 16) = v19;
  *(inited + 24) = v21;
  *(inited + 72) = v93[4];
  *(inited + 88) = v94;
  *(inited + 96) = &type metadata for WidgetRefresher;
  *(inited + 104) = v12;
  sub_226AC484C(&v82, inited + 112);
  *(inited + 40) = v93[3];
  v22 = v91;
  *(inited + 168) = v92;
  v23 = v93[1];
  *(inited + 184) = v93[0];
  *(inited + 32) = v16;
  v24 = MEMORY[0x277CC79A8];
  *(inited + 200) = v23;
  *(inited + 216) = v93[2];
  *(inited + 56) = v15;
  *(inited + 64) = v24;
  *(inited + 152) = v22;
  v25 = [v74 orderData];
  v26 = sub_226D6D21C();
  v28 = v27;

  sub_226D6727C();
  v29 = [objc_opt_self() defaultManager];
  v30 = [v29 temporaryDirectory];

  v31 = v70;
  sub_226D6D14C();

  *(&v76 + 1) = sub_226D6920C();
  *&v77 = MEMORY[0x277CC77F0];
  __swift_allocate_boxed_opaque_existential_1(&v75);
  v32 = v31;
  sub_226D691FC();
  v33 = v73;
  v34 = sub_226D6724C();
  if (v33)
  {

    sub_226B11B98(v26, v28);
    (*(v71 + 8))(v31, v72);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v75);
  }

  else
  {
    v36 = v34;
    v37 = v66;
    v73 = inited + 32;
    (*(v71 + 8))(v32, v72);
    v38 = __swift_destroy_boxed_opaque_existential_0Tm(&v75);
    MEMORY[0x28223BE20](v38);
    *(&v61 - 6) = inited;
    *(&v61 - 5) = v36;
    *(&v61 - 4) = v26;
    *(&v61 - 3) = v28;
    *(&v61 - 4) = 257;
    v39 = v68;
    *(&v61 - 1) = v69;
    sub_226D6721C();

    sub_226B11B98(v26, v28);
    v81 = 0;
    memset(v80, 0, sizeof(v80));
    sub_226CA934C(v39, v37, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v41 = *v37;
    if (EnumCaseMultiPayload < 2)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
      sub_226AC47B0(v37 + *(v42 + 48), &qword_27D7A7798, &unk_226D75570);
    }

    v43 = v74;
    [v74 isMarkedAsComplete];
    v44 = [v43 isMarkedAsCompleteModificationDate];
    v45 = v65;
    if (v44)
    {
      v46 = v44;
      sub_226D6D45C();

      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    v48 = v73;
    v49 = sub_226D6D4AC();
    (*(*(v49 - 8) + 56))(v45, v47, 1, v49);
    sub_226D674BC();
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v75 = 0u;
    v50 = v69;
    sub_226B42C34(v41, v69);

    sub_226AFD62C(&v75);
    sub_226AC47B0(v45, &qword_27D7A8BE0, &unk_226D718F0);
    *&v75 = 0;
    if ([v50 save_])
    {
      v51 = qword_281061980;
      v52 = v75;
      if (v51 != -1)
      {
        swift_once();
      }

      v53 = v64;
      v54 = __swift_project_value_buffer(v64, qword_281064538);
      v55 = v63;
      sub_226AE532C(v54, v63);
      sub_226CA934C(v54 + *(v53 + 48), v55 + *(v53 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
      v56 = v55 + *(v53 + 48);
      v57 = v62;
      sub_226BB36BC(v56, v62);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      v58 = v68;
      sub_226BE7E54(v68, v57);
      sub_226BB3720(v57, type metadata accessor for OrderNotificationCenter.Continuation);
      [v50 refreshAllObjects];
      swift_setDeallocating();
      sub_226AC47B0(v48, &qword_27D7A7790, &unk_226D79770);
      sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
      sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));

      sub_226AC47B0(v80, &qword_27D7A6910, &unk_226D721C0);
      v59 = v58;
    }

    else
    {
      v60 = v75;
      sub_226D6D04C();

      swift_willThrow();

      sub_226AC47B0(v80, &qword_27D7A6910, &unk_226D721C0);
      v59 = v68;
    }

    return sub_226BB3720(v59, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  }
}

void sub_226CDA428(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F5E0);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  v44 = a1;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45[0] = v9;
    *v8 = 136315138;
    v10 = ".ImportRemoteViewController";
    v11 = "com.apple.FinanceUIService";
    v12 = 0xD000000000000032;
    if (a1 != 2)
    {
      v12 = 0xD00000000000002DLL;
      v11 = "schemaVersion <= %d";
    }

    if (a1)
    {
      v13 = 0xD00000000000002BLL;
    }

    else
    {
      v13 = 0xD00000000000002CLL;
    }

    if (a1)
    {
      v10 = "moteViewController";
    }

    if (a1 <= 1u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (a1 <= 1u)
    {
      v15 = v10;
    }

    else
    {
      v15 = v11;
    }

    v16 = 0xD00000000000002BLL;
    v17 = sub_226AC4530(v14, v15 | 0x8000000000000000, v45);

    *(v8 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v6, v7, "Opening remote view %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {

    v16 = 0xD00000000000002BLL;
  }

  v18 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  if (a2)
  {
    v19 = sub_226D6E2AC();
  }

  else
  {
    v19 = 0;
  }

  [v18 setUserInfo_];

  sub_226AC40E8(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x68), v45, &unk_27D7A7B70, &qword_226D76110);
  if (v46)
  {
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v20 = sub_226D692CC();
    v21 = [v20 _endpoint];

    __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  else
  {
    sub_226AC47B0(v45, &unk_27D7A7B70, &qword_226D76110);
    v21 = 0;
  }

  [v18 setXpcEndpoint_];
  swift_unknownObjectRelease();
  v22 = objc_allocWithZone(MEMORY[0x277D66BD8]);
  v23 = sub_226D6E36C();
  v24 = sub_226D6E36C();

  v25 = [v22 initWithServiceName:v23 viewControllerClassName:v24];

  [v25 setPrefersEmbeddedDisplayPresentation_];
  v43 = v18;
  v26 = [objc_opt_self() newHandleWithDefinition:v25 configurationContext:v18];
  [v26 registerObserver_];
  v27 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  v28 = MEMORY[0x277D85000];
  v29 = *(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78));
  if (v29)
  {
    v30 = objc_opt_self();
    v31 = v29;
    v32 = [v30 predicateForProcess_];
    v33 = [objc_allocWithZone(MEMORY[0x277D66C08]) initWithTargetPredicate_];
    [v27 setPresentationTarget_];
  }

  [v26 activateWithContext_];
  v34 = sub_226D6E05C();
  v35 = sub_226D6E9EC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = "moteViewController";
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v45[0] = v38;
    *v37 = 136315138;
    if (v44 > 1u)
    {
      if (v44 == 2)
      {
        v16 = 0xD000000000000032;
        v36 = "com.apple.FinanceUIService";
      }

      else
      {
        v16 = 0xD00000000000002DLL;
        v36 = "schemaVersion <= %d";
      }
    }

    else if (!v44)
    {
      v16 = 0xD00000000000002CLL;
      v36 = ".ImportRemoteViewController";
    }

    v39 = sub_226AC4530(v16, v36 | 0x8000000000000000, v45);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_226AB4000, v34, v35, "Finished opening remote view %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x22AA8BEE0](v38, -1, -1);
    MEMORY[0x22AA8BEE0](v37, -1, -1);

    v28 = MEMORY[0x277D85000];
  }

  else
  {
  }

  v40 = *((*v28 & *v3) + 0x60);
  v41 = *(v3 + v40);
  *(v3 + v40) = v26;
}

uint64_t sub_226CDAA94(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_226CDAAB4, 0, 0);
}

uint64_t sub_226CDAAB4()
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5E0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "FinanceStore deleting an order", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = sub_226D676AC();
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v7;
  sub_226D6EB7C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_226CDAC3C(__int16 a1, __int16 a2)
{
  *(v3 + 16) = v2;
  *(v3 + 26) = a2;
  *(v3 + 24) = a1;
  return MEMORY[0x2822009F8](sub_226CDAC64, 0, 0);
}

uint64_t sub_226CDAC64()
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5E0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 26);
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    *v6 = 33554944;
    *(v6 + 4) = v5;
    *(v6 + 6) = 512;
    *(v6 + 8) = v4;
    _os_log_impl(&dword_226AB4000, v2, v3, "FinanceStore deleting orders for dashboard item %hd-%hd", v6, 0xAu);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  v9 = sub_226D676AC();
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  *(v10 + 32) = v7;
  sub_226D6EB7C();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226CDAE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5E0);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226AB4000, v4, v5, "FinanceStore saving order (sync)", v6, 2u);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v8 = [v7 aa_primaryAppleAccount];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 aa_isManagedAppleID];

    if (v10)
    {
      v12 = sub_226D66EDC();
      sub_226AC44E8(&qword_27D7A7DC0, MEMORY[0x277CC65F8], MEMORY[0x277CC6600]);
      swift_allocError();
      v14 = v13;
      v15 = *MEMORY[0x277CC6A50];
      v16 = sub_226D66FDC();
      (*(*(v16 - 8) + 104))(v14, v15, v16);
      (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277CC65D0], v12);
      return swift_willThrow();
    }
  }

  else
  {
  }

  MEMORY[0x28223BE20](v11);
  sub_226D6A76C();
  return sub_226D6EA6C();
}

uint64_t sub_226CDB0C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6D1AC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_226D6EB9C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_226D6B49C();
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v2[12] = *(v6 + 64);
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for OrderRefreshTask(0);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CDB274, 0, 0);
}

uint64_t sub_226CDB274(uint64_t a1)
{
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[8];
  v17 = v1[9];
  v7 = v1[7];
  v8 = v1[2];
  v9 = sub_226D676AC();
  v1[16] = v9;
  (*(v5 + 16))(v2, v8, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v1[17] = v11;
  (*(v5 + 32))(v11 + v10, v2, v4);
  *(v11 + ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  (*(v6 + 104))(v17, *MEMORY[0x277CBE110], v7);
  v9;
  v12 = swift_task_alloc();
  v1[18] = v12;
  *v12 = v1;
  v12[1] = sub_226CDB418;
  v14 = v1[14];
  v13 = v1[15];
  v15 = v1[9];

  return MEMORY[0x28210EE50](v13, v15, sub_226CE829C, v11, v14);
}

uint64_t sub_226CDB418()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_226CDB974;
  }

  else
  {
    v5 = sub_226CDB5AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226CDB5AC()
{
  (*(v0[5] + 16))(v0[6], v0[15] + *(v0[14] + 20), v0[4]);
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  sub_226D6827C();
  sub_226D699AC();
  swift_allocObject();
  v2 = sub_226D6999C();
  v0[20] = v2;
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_226CDB6E0;
  v4 = v0[16];

  return sub_226D39854(v4, v2);
}

uint64_t sub_226CDB6E0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_226CDB8B8;
  }

  else
  {
    v2 = sub_226CDB7F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CDB7F4()
{
  v1 = v0[15];
  v2 = v0[16];

  sub_226CE853C(v1, type metadata accessor for OrderRefreshTask);

  v3 = v0[1];

  return v3();
}

uint64_t sub_226CDB8B8()
{
  v2 = v0[15];
  v1 = v0[16];

  sub_226CE853C(v2, type metadata accessor for OrderRefreshTask);

  v3 = v0[1];

  return v3();
}

uint64_t sub_226CDB974()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226CDBA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a7;
  v8[46] = a8;
  v8[43] = a5;
  v8[44] = a6;
  v8[41] = a3;
  v8[42] = a4;
  v8[39] = a1;
  v8[40] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  v8[47] = swift_task_alloc();
  v9 = sub_226D6906C();
  v8[48] = v9;
  v8[49] = *(v9 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v10 = sub_226D6707C();
  v8[52] = v10;
  v8[53] = *(v10 - 8);
  v8[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CDBB78, 0, 0);
}

uint64_t sub_226CDBB78()
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5E0);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "FinanceStore - saving order with UI", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v57 = *(v0 + 432);
  v59 = *(v0 + 424);
  v61 = *(v0 + 416);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);

  v9 = objc_allocWithZone(MEMORY[0x277CF0B98]);
  *(v0 + 512) = v8;
  *(v0 + 520) = v7;
  *(v0 + 528) = v6;
  *(v0 + 536) = v5;
  v10 = [v9 initWithAuditToken_];
  v11 = [objc_opt_self() processHandleForAuditToken_];
  *(v0 + 440) = v11;

  sub_226D69A0C();
  swift_allocObject();
  v12 = sub_226D699FC();
  *(v0 + 448) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8FC8, &qword_226D7BAD0);

  v14 = sub_226D66DEC();

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8FD0, &qword_226D7BAD8);
  v16 = objc_allocWithZone(v15);
  v17 = MEMORY[0x277D85000];
  *(v16 + *((*MEMORY[0x277D85000] & *v16) + 0x60)) = 0;
  v18 = (v16 + *((*v17 & *v16) + 0x68));
  v18[3] = v13;
  v18[4] = sub_226AC4194(&qword_27D7A8FD8, &qword_27D7A8FC8, &qword_226D7BAD0, MEMORY[0x277CC6520]);
  *v18 = v14;
  *(v16 + *((*v17 & *v16) + 0x70)) = v12;
  *(v16 + *((*v17 & *v16) + 0x78)) = v11;
  *(v0 + 256) = v16;
  *(v0 + 264) = v15;

  v19 = v11;
  v20 = objc_msgSendSuper2((v0 + 256), sel_init);
  *(v0 + 456) = v20;
  sub_226D6703C();
  LOBYTE(v13) = sub_226D6706C();
  (*(v59 + 8))(v57, v61);
  if ((v13 & 1) != 0 && PKPassbookIsCurrentlyDeletedByUser())
  {
    sub_226CDA428(2u, 0);
    v21 = swift_task_alloc();
    *(v0 + 464) = v21;
    *(v21 + 16) = v20;
    v22 = swift_task_alloc();
    *(v0 + 472) = v22;
    v23 = sub_226D66F3C();
    *v22 = v0;
    v22[1] = sub_226CDC2EC;
    v24 = *(v0 + 312);
    v25 = sub_226CE85E4;
    v26 = v21;
  }

  else
  {
    v27 = *(v0 + 408);
    v29 = *(v0 + 384);
    v28 = *(v0 + 392);
    v60 = *(v0 + 376);
    v62 = v20;
    v56 = *(v0 + 400);
    v58 = *(v0 + 368);
    v30 = *(v0 + 320);
    v31 = *(v0 + 328);
    *(v0 + 304) = MEMORY[0x277D84F98];
    v55 = *(v28 + 104);
    v55(v27, *MEMORY[0x277CC7740], v29);
    v32 = sub_226D6905C();
    v34 = v33;
    v35 = *(v28 + 8);
    v35(v27, v29);
    *(v0 + 272) = v32;
    *(v0 + 280) = v34;
    v36 = MEMORY[0x277D837D0];
    sub_226D6EE8C();
    *(v0 + 120) = MEMORY[0x277CC9318];
    *(v0 + 96) = v30;
    *(v0 + 104) = v31;
    sub_226B24A98((v0 + 96), (v0 + 128));
    sub_226B11B44(v30, v31);
    v37 = *(v0 + 304);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_226BE64DC((v0 + 128), v0 + 16, isUniquelyReferenced_nonNull_native);
    sub_226AE5030(v0 + 16);
    *(v0 + 304) = v37;
    v55(v56, *MEMORY[0x277CC7738], v29);
    v39 = sub_226D6905C();
    v41 = v40;
    v35(v56, v29);
    v42 = v36;
    *(v0 + 288) = v39;
    *(v0 + 296) = v41;
    sub_226D6EE8C();
    sub_226AC40E8(v58, v60, &qword_27D7A7180, &qword_226D74600);
    v43 = sub_226D67F1C();
    v44 = *(v43 - 8);
    v45 = (*(v44 + 48))(v60, 1, v43);
    v46 = *(v0 + 376);
    if (v45 == 1)
    {
      sub_226AC47B0(*(v0 + 376), &qword_27D7A7180, &qword_226D74600);
      sub_226D4A15C(v0 + 56, (v0 + 192));
      sub_226AC47B0(v0 + 192, &unk_27D7A8BB0, &unk_226D74340);
      sub_226AE5030(v0 + 56);
      v47 = *(v0 + 304);
    }

    else
    {
      v48 = sub_226D67F0C();
      *(v0 + 184) = v42;
      *(v0 + 160) = v48;
      *(v0 + 168) = v49;
      (*(v44 + 8))(v46, v43);
      sub_226B24A98((v0 + 160), (v0 + 224));
      v50 = *(v0 + 304);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      sub_226BE64DC((v0 + 224), v0 + 56, v51);
      sub_226AE5030(v0 + 56);
      v47 = v50;
      *(v0 + 304) = v50;
    }

    sub_226CDA428(1u, v47);

    v52 = swift_task_alloc();
    *(v0 + 488) = v52;
    *(v52 + 16) = v62;
    v53 = swift_task_alloc();
    *(v0 + 496) = v53;
    v23 = sub_226D66F3C();
    *v53 = v0;
    v53[1] = sub_226CDC554;
    v24 = *(v0 + 312);
    v25 = sub_226CE8350;
    v26 = v52;
  }

  return MEMORY[0x2822008A0](v24, 0, 0, 0xD000000000000019, 0x8000000226D80CD0, v25, v26, v23);
}

uint64_t sub_226CDC2EC()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_226CDC4AC;
  }

  else
  {

    v2 = sub_226CDC408;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CDC408()
{
  v1 = *(v0 + 440);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226CDC4AC()
{
  v1 = v0[57];
  v2 = v0[55];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226CDC554()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_226CDC710;
  }

  else
  {

    v2 = sub_226CDC670;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CDC670()
{
  v1 = v0[57];
  v2 = v0[55];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226CDC710()
{
  v1 = v0[57];
  v2 = v0[55];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226CDC7BC(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_226CDC7DC, 0, 0);
}

uint64_t sub_226CDC7DC(uint64_t a1)
{
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  v4 = sub_226D676AC();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  sub_226B1B848(v2 + 80, v1 + 16);
  sub_226AC47B0(v1 + 56, &qword_27D7A6E50, &unk_226D73598);
  sub_226AE532C(v2 + 120, v1 + 56);
  sub_226C19328(v1 + 16, v1 + 96);
  v5 = swift_task_alloc();
  v5[2] = v1 + 96;
  v5[3] = v4;
  v5[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8050, &unk_226D775D0);
  sub_226D6EB7C();

  sub_226AFD62C(v1 + 96);
  if (*(v1 + 192) == 1)
  {
    ManagedOrderDashboardItemUpdater.postProcess(shouldRefreshWalletMessages:)(*(v1 + 193));
  }

  sub_226AFD62C(v1 + 16);
  v6 = *(v1 + 8);

  return v6();
}

void sub_226CDC96C(uint64_t a1, uint64_t a2)
{
  v3 = sub_226D6707C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_28105F5E0);
  v8 = sub_226D6E05C();
  v9 = sub_226D6E9EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v15[1] = a1;
    v11 = v10;
    *v10 = 0;
    _os_log_impl(&dword_226AB4000, v8, v9, "FinanceStore - getting order count for iCloud signout", v10, 2u);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  sub_226D68D6C();
  v12 = sub_226D6706C();
  (*(v4 + 8))(v6, v3);
  if (v12)
  {
    v13 = sub_226D676AC();
    MEMORY[0x28223BE20](v13);
    v15[-2] = v14;
    sub_226D6EB8C();
  }
}

void sub_226CDCBD0(uint64_t a1)
{
  v3 = sub_226D676AC();
  __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
  v4 = sub_226D69A3C();
  if ((v4 & 1) == 0)
  {
    v5 = MEMORY[0x277D839B0];
    while (1)
    {
      MEMORY[0x28223BE20](v4);
      v4 = sub_226D6EB7C();
      if (v2)
      {
        break;
      }

      if ((v6[0] & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
        v7 = v5;
        v6[0] = 1;
        sub_226D69A2C();

        sub_226AC47B0(v6, &unk_27D7A8BB0, &unk_226D74340);
        return;
      }
    }
  }
}

void sub_226CDCD3C(uint64_t a1)
{
  v3 = sub_226D676AC();
  __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
  v4 = sub_226D69A3C();
  if ((v4 & 1) == 0)
  {
    v5 = MEMORY[0x277D839B0];
    while (1)
    {
      MEMORY[0x28223BE20](v4);
      v4 = sub_226D6EB7C();
      if (v2)
      {
        break;
      }

      if ((v6[0] & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
        v7 = v5;
        v6[0] = 1;
        sub_226D69A2C();

        sub_226AC47B0(v6, &unk_27D7A8BB0, &unk_226D74340);
        return;
      }
    }
  }
}

uint64_t sub_226CDCEA8(uint64_t a1)
{
  v3 = sub_226D676AC();
  sub_226AC40E8(v1 + 416, v7, &unk_27D7A7660, &unk_226D7B420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8FF0, &qword_226D7BB28);
  sub_226D6EB7C();
  if (!v2 && v6)
  {
    sub_226CCAC20(v5, v6);
  }

  return sub_226AFBB78(v7);
}

uint64_t sub_226CDD008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a3;
  v18[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66C0, &unk_226D75EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  v9 = sub_226D6A1EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v18 - v15;
  (v18[0])(a1, a2, v14);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_226AC47B0(v8, &qword_27D7A66C0, &unk_226D75EC0);
    return sub_226CE7894();
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    (*(v10 + 16))(v12, v16, v9);
    sub_226D6AECC();
    return (*(v10 + 8))(v16, v9);
  }
}

uint64_t sub_226CDD218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a3;
  v5 = sub_226D6707C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D66DBC();
  v10 = *(v9 - 8);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v25 = *(v3 + 528);
  }

  (*(v10 + 104))(v13, *MEMORY[0x277CC64F0], v9, v11);
  v14 = sub_226D66D6C();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v17 = sub_226D6E07C();
    __swift_project_value_buffer(v17, qword_28105F5E0);
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9AC();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_16;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Extracted orders feature flag disabled";
    goto LABEL_15;
  }

  sub_226D68D6C();
  v15 = sub_226D6706C();
  (*(v6 + 8))(v8, v5);
  if ((v15 & 1) == 0 || (sub_226D68D7C() & 1) == 0)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v22 = sub_226D6E07C();
    __swift_project_value_buffer(v22, qword_28105F5E0);
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9AC();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_16;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Device hardware does not support extracted orders";
LABEL_15:
    _os_log_impl(&dword_226AB4000, v18, v19, v21, v20, 2u);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
LABEL_16:

    v16 = 0;
    return v16 & 1;
  }

  v16 = ExtractedOrderConfigurationProvider.isOrderExtractionSupported(forLocale:)(v24);
  return v16 & 1;
}

void sub_226CDD570(uint64_t a1, unint64_t a2)
{
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F6A8);

  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(a1, a2, &v10);
    _os_log_impl(&dword_226AB4000, v5, v6, "Fetching banners for messageID: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = sub_226D676AC();
  MEMORY[0x28223BE20](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9000, &qword_226D7BB38);
  sub_226D6EB8C();
}

uint64_t sub_226CDD758@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a4;
  v69 = a3;
  v6 = sub_226D6D4AC();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6C2EC();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v63 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = (v58 - v11);
  MEMORY[0x28223BE20](v12);
  v62 = v58 - v13;
  v14 = sub_226D6A1CC();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x28223BE20](v14);
  v60 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9010, &unk_226D7BB40);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v74 = v58 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66C0, &unk_226D75EC0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v58 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v58 - v30;
  sub_226BCAFF0(a1, a2, v58 - v30);
  sub_226AC40E8(v31, v28, &qword_27D7A66C0, &unk_226D75EC0);
  v32 = sub_226D6A1EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v28, 1, v32) == 1)
  {
    sub_226AC47B0(v28, &qword_27D7A66C0, &unk_226D75EC0);
    v59 = 0;
    v35 = 0;
  }

  else
  {
    v59 = sub_226D6A17C();
    v36 = v28;
    v35 = v37;
    (*(v33 + 8))(v36, v32);
  }

  sub_226AC40E8(v31, v25, &qword_27D7A66C0, &unk_226D75EC0);
  if (v34(v25, 1, v32) == 1)
  {
    sub_226AC47B0(v25, &qword_27D7A66C0, &unk_226D75EC0);
    v39 = v71;
    v38 = v72;
    v40 = v74;
    (*(v71 + 56))(v74, 1, 1, v72);
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_226AC47B0(v40, &qword_27D7A9010, &unk_226D7BB40);
    v42 = &qword_27D7A66C0;
    v43 = &unk_226D75EC0;
    v41 = v31;
    goto LABEL_10;
  }

  v40 = v74;
  sub_226D6A1DC();
  (*(v33 + 8))(v25, v32);
  v39 = v71;
  v38 = v72;
  if (!v35)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_226AC40E8(v40, v20, &qword_27D7A9010, &unk_226D7BB40);
  if ((*(v39 + 48))(v20, 1, v38) == 1)
  {

    sub_226AC47B0(v40, &qword_27D7A9010, &unk_226D7BB40);
    sub_226AC47B0(v31, &qword_27D7A66C0, &unk_226D75EC0);
    v41 = v20;
    v42 = &qword_27D7A9010;
    v43 = &unk_226D7BB40;
LABEL_10:
    sub_226AC47B0(v41, v42, v43);
    v44 = 1;
    v45 = v73;
LABEL_18:
    v56 = sub_226D6C2FC();
    return (*(*(v56 - 8) + 56))(v45, v44, 1, v56);
  }

  v46 = v70;
  (*(v39 + 32))(v70, v20, v38);
  v47 = v60;
  (*(v39 + 16))(v60, v46, v38);
  v48 = (*(v39 + 88))(v47, v38);
  v49 = *MEMORY[0x277CC7B08];
  v58[1] = v35;
  if (v48 == v49)
  {
    (*(v39 + 96))(v47, v38);
    v50 = *(v47 + 1);
    v51 = v61;
    *v61 = *v47;
    v51[1] = v50;
    v52 = MEMORY[0x277CC8238];
    v45 = v73;
LABEL_17:
    v54 = v64;
    v53 = v65;
    (*(v64 + 104))(v51, *v52, v65);
    v55 = v62;
    (*(v54 + 32))(v62, v51, v53);
    (*(v54 + 16))(v63, v55, v53);
    (*(v67 + 16))(v66, v69, v68);
    sub_226D6C2DC();
    (*(v54 + 8))(v55, v53);
    (*(v39 + 8))(v70, v38);
    sub_226AC47B0(v74, &qword_27D7A9010, &unk_226D7BB40);
    sub_226AC47B0(v31, &qword_27D7A66C0, &unk_226D75EC0);
    v44 = 0;
    goto LABEL_18;
  }

  v45 = v73;
  v51 = v61;
  if (v48 == *MEMORY[0x277CC7B10])
  {
    v52 = MEMORY[0x277CC8240];
    goto LABEL_17;
  }

  if (v48 == *MEMORY[0x277CC7B00])
  {
    v52 = MEMORY[0x277CC8230];
    goto LABEL_17;
  }

  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226CDDF64(uint64_t a1, uint64_t a2)
{

  sub_226D6B35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8FE0, &qword_226D7BAE0);
  sub_226AC4194(&qword_27D7A8FE8, &qword_27D7A8FE0, &qword_226D7BAE0, MEMORY[0x277CC7EC8]);
  return sub_226D66E2C();
}

uint64_t sub_226CDE00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v29 = a4;
  v30 = a2;
  v31 = a3;
  v28 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8FC0, &qword_226D7BAB8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_226D6A76C();
  v27 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D676AC();
  sub_226AE532C(a1 + 328, v39);
  v32 = v29;
  v33 = a1 + 80;
  v34 = a1 + 120;
  v35 = v39;
  v36 = v30;
  v37 = v31;
  v38 = v12;
  v13 = v40;
  sub_226D6EB7C();
  if (v13)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v14 = sub_226D6E07C();
    __swift_project_value_buffer(v14, qword_28105F5E0);
    v15 = v13;
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9CC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_226AB4000, v16, v17, "DaemonOrderImporter failed with error: %@", v18, 0xCu);
      sub_226AC47B0(v19, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v22 = v28;
    v23 = *&v8[*(v6 + 48)];
    v24 = *(v27 + 32);
    v24(v11, v8, v9);
    if (*(v23 + 16))
    {
      sub_226D6973C();
      sub_226D6971C();
      MEMORY[0x22AA857B0](v23);
    }

    v24(v22, v11, v9);
  }

  return sub_226AC47B0(v39, &qword_27D7A7790, &unk_226D79770);
}

uint64_t sub_226CDE36C(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = sub_226D6B49C();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ManagedOrderDeleter.DeleteResult(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CDE7EC(v34);
  sub_226D6D46C();
  sub_226D6751C();
  v14 = v32;
  v15 = sub_226D6745C();
  if (v14)
  {
    (*(v8 + 8))(v10, v7);
    return sub_226B42BE0(v34);
  }

  v17 = v15;
  v32 = v7;
  v29 = v13;
  if (!v15)
  {
    sub_226CE8108();
    swift_allocError();
    swift_willThrow();
    (*(v8 + 8))(v10, v32);
    return sub_226B42BE0(v34);
  }

  v30 = v4;
  v18 = [v15 orderRegistration];
  if (v18)
  {
    v19 = v18;
    v20 = sub_226D6D3EC();
    [v19 setCancellationDate_];
  }

  sub_226D6740C();
  [a3 deleteObject_];
  v21 = sub_226B5AC68(v17, a3);
  v22 = v21;

  (*(v8 + 8))(v10, v32);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F98, &unk_226D73B60);
  v24 = v6;
  v25 = *(v23 + 48);
  v26 = v29;
  (*(v31 + 32))(v29, v24, v30);
  *(v26 + v25) = v22 & 1;
  v33 = 0;
  if (([a3 save_] & 1) == 0)
  {
    v28 = v33;
    sub_226D6D04C();

    swift_willThrow();
    sub_226CE853C(v26, type metadata accessor for ManagedOrderDeleter.DeleteResult);
    return sub_226B42BE0(v34);
  }

  v27 = v33;
  sub_226B5AF60(v26);
  sub_226CE853C(v26, type metadata accessor for ManagedOrderDeleter.DeleteResult);
  return sub_226B42BE0(v34);
}

uint64_t sub_226CDE7EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_226D67F1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226D67E6C();
  sub_226D67F0C();
  (*(v5 + 8))(v7, v4);
  v8 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v9 = sub_226D6E36C();

  v10 = [v8 initWithBundleIdentifier_];

  v11 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
  v12 = MEMORY[0x277CC85E8];
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *a1 = v10;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 40) = 0u;
  sub_226B1B848(v2 + 80, a1 + 40);
  sub_226AC47B0(a1 + 80, &qword_27D7A6E50, &unk_226D73598);
  sub_226AE532C(v2 + 120, a1 + 80);
  v15 = &type metadata for ClassicOrderBiomeStream;
  v16 = &off_283A6D820;
  sub_226C02324(&v17);
  return sub_226AFD680(v14, a1 + 120, &qword_27D7A6FA0, &qword_226D79780);
}

void *sub_226CDE9DC(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v51 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v5 = sub_226D66DBC();
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D06C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6B77C();
  v12 = v52;
  result = sub_226D6B76C();
  if (!v12)
  {
    v42 = v5;
    v49 = v9;
    v14 = v51;
    v44 = v7;
    if (result)
    {
      v52 = 0;
      v15 = result;
      v16 = [result dashboardItems];

      v17 = MEMORY[0x277D84F90];
      v55[0] = MEMORY[0x277D84F90];
      v48 = v16;
      sub_226D6EBEC();
      sub_226AC44E8(&qword_27D7A8D78, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      sub_226D6ECBC();
      if (v58)
      {
        v46 = MEMORY[0x277D84F90];
        do
        {
          while (1)
          {
            sub_226B24A98(&v57, v56);
            sub_226D6A72C();
            if ((swift_dynamicCast() & 1) == 0 || !v54[0])
            {
              break;
            }

            MEMORY[0x22AA8A610]();
            if (*((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v47 = *((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_226D6E61C();
            }

            sub_226D6E65C();
            v46 = v55[0];
            sub_226D6ECBC();
            v18 = v42;
            v19 = v14;
            if (!v58)
            {
              goto LABEL_16;
            }
          }

          sub_226D6ECBC();
        }

        while (v58);
        v19 = v14;
      }

      else
      {
        v46 = v17;
        v19 = v14;
      }

      v18 = v42;
LABEL_16:

      (*(v49 + 8))(v11, v8);
      sub_226CDE7EC(&v57);
      sub_226CE8180(&v57, v56);
      sub_226AC40E8(v19 + 416, v55, &unk_27D7A7660, &unk_226D7B420);
      sub_226CE81DC(v55, v54);
      v20 = v46;
      if (v46 >> 62)
      {
        goto LABEL_43;
      }

      for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
      {
        v22 = v44;
        v23 = v50;
        if (!i)
        {
          break;
        }

        v24 = 0;
        v51 = v20 & 0xC000000000000001;
        v43 = v20 & 0xFFFFFFFFFFFFFF8;
        LODWORD(v50) = *MEMORY[0x277CC64F0];
        v48 = (v23 + 8);
        v49 = v23 + 104;
        v46 = v20;
        v47 = i;
        while (1)
        {
          if (v51)
          {
            v25 = MEMORY[0x22AA8AFD0](v24, v20);
          }

          else
          {
            if (v24 >= *(v43 + 16))
            {
              goto LABEL_42;
            }

            v25 = *(v20 + 8 * v24 + 32);
          }

          v26 = v25;
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          v28 = [v25 classicOrder];
          if (v28)
          {
            v29 = v28;
            v30 = v52;
            sub_226CDF020(v28, v56, a3);
            v52 = v30;
            if (v30)
            {

              goto LABEL_36;
            }
          }

          (*v49)(v22, v50, v18);
          v31 = sub_226D66D6C();
          (*v48)(v22, v18);
          if ((v31 & 1) != 0 && (v32 = [v26 extractedOrder]) != 0)
          {
            v33 = v18;
            v45 = v32;
            v34 = v52;
            v35 = sub_226CCAA84(v32, a3);
            v52 = v34;
            if (v34)
            {

              goto LABEL_36;
            }

            v37 = v35;
            v38 = v36;
            v53 = 0;
            if (([a3 save_] & 1) == 0)
            {
              v40 = v53;

              sub_226B42BE0(v56);
              v41 = sub_226D6D04C();

              v52 = v41;
              swift_willThrow();

              sub_226AFBB78(v54);
              sub_226AFBB78(v55);
              return sub_226B42BE0(&v57);
            }

            v39 = v53;
            sub_226CCAC20(v37, v38);

            v18 = v33;
            v22 = v44;
            v20 = v46;
          }

          else
          {
          }

          ++v24;
          if (v27 == v47)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        ;
      }

LABEL_36:

      sub_226AFBB78(v54);
      sub_226AFBB78(v55);
      sub_226B42BE0(v56);
      return sub_226B42BE0(&v57);
    }
  }

  return result;
}

uint64_t sub_226CDF020(void *a1, uint64_t a2, void *a3)
{
  v29 = a3;
  v30 = a2;
  v31[1] = *MEMORY[0x277D85DE8];
  v28 = sub_226D6B49C();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ManagedOrderDeleter.DeleteResult(0);
  MEMORY[0x28223BE20](v11 - 8);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v13 = [a1 orderRegistration];
  if (v13)
  {
    v14 = v13;
    v15 = sub_226D6D3EC();
    [v14 setCancellationDate_];
  }

  sub_226D6740C();
  v16 = v29;
  [v29 deleteObject_];
  v17 = v27;
  v18 = sub_226B5AC68(a1, v16);
  if (v17)
  {
    (*(v4 + 8))(v6, v28);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v20 = v18;
    (*(v8 + 8))(v10, v7);
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F98, &unk_226D73B60) + 48);
    v22 = v26;
    (*(v4 + 32))(v26, v6, v28);
    *(v22 + v21) = v20 & 1;
    v31[0] = 0;
    if ([v16 save_])
    {
      v23 = v31[0];
      sub_226B5AF60(v22);
    }

    else
    {
      v24 = v31[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    return sub_226CE853C(v22, type metadata accessor for ManagedOrderDeleter.DeleteResult);
  }
}

void sub_226CDF364(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v27 = a4;
  v35 = *MEMORY[0x277D85DE8];
  v8 = sub_226D6714C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AC40E8(a1 + 80, v33, &qword_27D7A6910, &unk_226D721C0);
  type metadata accessor for ManagedOrderUpdater();
  inited = swift_initStackObject();
  v13 = v34;
  v14 = v33[1];
  *(inited + 16) = v33[0];
  *(inited + 32) = v14;
  *(inited + 48) = v13;
  sub_226D6751C();
  v15 = sub_226D6745C();
  if (v5)
  {
    goto LABEL_10;
  }

  v16 = v15;
  v25 = v11;
  v26 = v9;
  if (!v15)
  {
    sub_226C7DB0C();
    swift_allocError();
LABEL_9:
    swift_willThrow();
LABEL_10:

    return;
  }

  sub_226D674BC();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  sub_226B42C34(v16, a5);
  sub_226AFD62C(&v28);

  *&v28 = 0;
  v17 = [a5 save_];
  v18 = v28;
  if ((v17 & 1) == 0)
  {
    v22 = v28;
    sub_226D6D04C();

    goto LABEL_9;
  }

  sub_226AC40E8(inited + 16, &v28, &qword_27D7A6910, &unk_226D721C0);
  if (*(&v29 + 1))
  {
    v27 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    v19 = v26;
    v20 = v25;
    (*(v26 + 104))(v25, *MEMORY[0x277CC6B48], v8);
    v21 = v18;
    sub_226D680BC();

    (*(v19 + 8))(v20, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(&v28);
  }

  else
  {
    v23 = v18;

    sub_226AC47B0(&v28, &qword_27D7A6910, &unk_226D721C0);
  }
}

uint64_t sub_226CDF6D0(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  LODWORD(v32) = a2;
  v38 = *MEMORY[0x277D85DE8];
  v7 = sub_226D6714C();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6D4AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AC40E8(a1 + 80, v36, &qword_27D7A6910, &unk_226D721C0);
  type metadata accessor for ManagedOrderUpdater();
  inited = swift_initStackObject();
  v15 = v37;
  v16 = v36[1];
  *(inited + 16) = v36[0];
  *(inited + 32) = v16;
  *(inited + 48) = v15;
  sub_226D6D46C();
  sub_226D6751C();
  v17 = sub_226D6745C();
  if (v4)
  {
    (*(v11 + 8))(v13, v10);
  }

  v19 = v17;
  v30 = v9;
  v29 = v7;
  v20 = v31;
  if (v17)
  {
    sub_226D674CC();

    (*(v11 + 8))(v13, v10);
    v33[0] = 0;
    v21 = [a4 save_];
    v22 = v33[0];
    if ((v21 & 1) == 0)
    {
      v26 = v33[0];
      sub_226D6D04C();

      swift_willThrow();
    }

    sub_226AC40E8(inited + 16, v33, &qword_27D7A6910, &unk_226D721C0);
    if (v34)
    {
      v32 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v23 = v30;
      v24 = v29;
      (*(v20 + 104))(v30, *MEMORY[0x277CC6B48], v29);
      v25 = v22;
      sub_226D680BC();

      (*(v20 + 8))(v23, v24);
      return __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    else
    {
      v27 = v22;

      return sub_226AC47B0(v33, &qword_27D7A6910, &unk_226D721C0);
    }
  }

  else
  {
    sub_226C7DB0C();
    swift_allocError();
    swift_willThrow();

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_226CDFAAC(void *a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v14[8] = *MEMORY[0x277D85DE8];
  ManagedOrderDashboardItemUpdater.updateShowsAsActive(context:now:)(a1, a2, v14);
  if (!v3)
  {
    v7 = v14[0];
    v8 = BYTE1(v14[0]);
    type metadata accessor for ManagedOrderUpdater();
    inited = swift_initStackObject();
    *(inited + 16) = 0u;
    v10 = inited + 16;
    *(inited + 32) = 0u;
    *(inited + 48) = 0;
    v11 = v7 | sub_226C7D88C(a1, a2);
    if (v11)
    {
      v14[0] = 0;
      if (![a1 save_])
      {
        v13 = v14[0];
        sub_226D6D04C();

        swift_willThrow();
        swift_setDeallocating();
        sub_226AC47B0(v10, &qword_27D7A6910, &unk_226D721C0);
        return;
      }

      v12 = v14[0];
    }

    *a3 = v11 & 1;
    a3[1] = v8;
  }
}

void sub_226CDFC34(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = sub_226D6A6BC();
  v5 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [objc_opt_self() currentQueryGenerationToken];
  *&v39[0] = 0;
  v9 = [a1 setQueryGenerationFromToken:v8 error:v39];

  v10 = *&v39[0];
  if (!v9)
  {
    v15 = *&v39[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  sub_226D6A72C();
  v11 = v10;
  v12 = sub_226D6A6EC();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v13 = sub_226D6E91C();
  [v12 setPredicate_];

  [v12 setFetchLimit_];
  v14 = sub_226D6EBBC();
  if (v2)
  {

    return;
  }

  v16 = v14;
  if (v14 >> 62)
  {
LABEL_21:
    if (sub_226D6EDFC() >= 1)
    {
      v36 = sub_226D6EDFC();
      if (v36)
      {
        goto LABEL_7;
      }

      v37 = a1;
      v29 = v12;
      v28 = a2;
LABEL_24:

      *&v39[0] = 0;
      v23 = [v37 save_];
      a2 = v28;
      if (!v23)
      {
        v26 = *&v39[0];
        sub_226D6D04C();

        swift_willThrow();
        return;
      }

      v24 = *&v39[0];
      v25 = 1;
      v12 = v29;
LABEL_27:

      *a2 = v25;
      return;
    }

LABEL_26:

    v25 = 0;
    goto LABEL_27;
  }

  v36 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_26;
  }

LABEL_7:
  v37 = a1;
  v29 = v12;
  v28 = a2;
  v17 = v5;
  v5 = 0;
  v34 = v16 & 0xFFFFFFFFFFFFFF8;
  v35 = v16 & 0xC000000000000001;
  v33 = (v17 + 88);
  v32 = *MEMORY[0x277CC7C50];
  v30 = *MEMORY[0x277CC7C58];
  v31 = (v17 + 96);
  while (1)
  {
    if (v35)
    {
      v18 = MEMORY[0x22AA8AFD0](v5, v16);
    }

    else
    {
      if (v5 >= *(v34 + 16))
      {
        goto LABEL_20;
      }

      v18 = *(v16 + 8 * v5 + 32);
    }

    v19 = v18;
    a1 = (v5 + 1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v12 = v16;
    v20 = MEMORY[0x22AA8B6A0]();
    memset(v39, 0, sizeof(v39));
    sub_226D6A6DC();
    v21 = v38;
    v22 = (*v33)(v7, v38);
    if (v22 != v32)
    {
      break;
    }

    (*v31)(v7, v21);
    a2 = *v7;
    sub_226B42C34(*v7, v37);
LABEL_16:
    v16 = v12;
    sub_226AFD62C(v39);

    objc_autoreleasePoolPop(v20);
    ++v5;
    if (a1 == v36)
    {
      goto LABEL_24;
    }
  }

  if (v22 == v30)
  {
    (*v31)(v7, v21);
    a2 = *v7;
    sub_226B42120(*v7, v37);
    goto LABEL_16;
  }

  sub_226D6F0AC();
  __break(1u);
}

void sub_226CE0138(uint64_t a3@<X8>)
{
  v55 = a3;
  v4 = sub_226D6B49C();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226D6D1AC();
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  sub_226D6751C();
  v16 = sub_226D6745C();
  if (!v3)
  {
    v17 = v16;
    v53 = v15;
    v54 = v9;
    v52 = v6;
    if (v16)
    {
      v51 = 0;
      v18 = [v16 orderWebService];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 baseURL];

        sub_226D6D14C();
        v21 = v57;
        v22 = v53;
        v23 = v7;
        (*(v57 + 32))(v53, v12, v7);
        v24 = [v17 authenticationToken];
        if (v24)
        {
          v25 = v24;
          v26 = sub_226D6E39C();
          v49 = v27;
          v50 = v26;

          v28 = v52;
          sub_226D6740C();
          v47 = *(v21 + 16);
          v48 = v21 + 16;
          v47(v54, v22, v7);
          v29 = [v17 lastModifiedValue];
          if (v29)
          {
            v30 = v29;
            v31 = sub_226D6E39C();
            v45 = v32;
            v46 = v31;
          }

          else
          {
            v45 = 0;
            v46 = 0;
          }

          v36 = v56;
          v37 = sub_226D6973C();
          v38 = sub_226D6971C();
          refreshed = type metadata accessor for OrderRefreshTask(0);
          v40 = v55;
          v41 = (v55 + *(refreshed + 28));
          v42 = MEMORY[0x277CC78A8];
          v41[3] = v37;
          v41[4] = v42;
          *v41 = v38;
          (*(v36 + 16))(v40, v28, v4);
          v47((v40 + *(refreshed + 20)), v54, v23);
          sub_226D6B46C();
          v56 = v43;
          sub_226D6B44C();
          sub_226D6B02C();

          v44 = *(v57 + 8);
          v44(v54, v23);
          (*(v36 + 8))(v28, v4);
          v44(v53, v23);
        }

        else
        {
          sub_226C5DB48();
          swift_allocError();
          *v35 = 2;
          swift_willThrow();

          (*(v21 + 8))(v22, v7);
        }
      }

      else
      {
        sub_226C5DB48();
        swift_allocError();
        *v34 = 1;
        swift_willThrow();
      }
    }

    else
    {
      sub_226C5DB48();
      swift_allocError();
      *v33 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_226CE05D8@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v58 = a3;
  v62[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D3CC();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D4AC();
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  MEMORY[0x28223BE20](v8);
  v59 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  v20 = [objc_opt_self() currentQueryGenerationToken];
  v60 = 0;
  v21 = [a1 setQueryGenerationFromToken:v20 error:&v60];

  if (v21)
  {
    v22 = v60;
    result = sub_226D6AC6C();
    if (!v3)
    {
      v52 = result;
      sub_226D6711C();
      v53 = v16;
      sub_226D6710C();
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v24 = sub_226D6E07C();
      __swift_project_value_buffer(v24, qword_28105F5E0);
      v25 = v57;
      v26 = *(v57 + 16);
      v27 = v19;
      v51 = v19;
      v28 = v56;
      v26(v13, v27, v56);
      v29 = v59;
      v26(v59, v53, v28);
      v30 = v52;

      v31 = sub_226D6E05C();
      v50 = sub_226D6E9EC();
      if (os_log_type_enabled(v31, v50))
      {
        v32 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v62[0] = v49;
        *v32 = 134218498;
        *(v32 + 4) = *(v30 + 16);
        v47 = v32;

        *(v32 + 12) = 2080;
        MEMORY[0x22AA88C80](v33);
        v46 = sub_226AC44E8(&qword_281062B88, MEMORY[0x277CC94A0], MEMORY[0x277CC9490]);
        v34 = v55;
        v48 = v31;
        sub_226D6D49C();
        v54 = *(v54 + 8);
        (v54)(v7, v34);
        v35 = *(v25 + 8);
        v35(v13, v28);
        v36 = sub_226AC4530(v60, v61, v62);

        v38 = v47;
        *(v47 + 14) = v36;
        *(v38 + 22) = 2080;
        v39 = v38;
        MEMORY[0x22AA88C80](v37);
        v40 = v59;
        sub_226D6D49C();
        (v54)(v7, v34);
        v35(v40, v28);
        v41 = sub_226AC4530(v60, v61, v62);

        *(v39 + 24) = v41;
        v42 = v48;
        _os_log_impl(&dword_226AB4000, v48, v50, "FinanceStore fetched %ld maps suggestions for window with start: %s end: %s", v39, 0x20u);
        v43 = v49;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v43, -1, -1);
        MEMORY[0x22AA8BEE0](v39, -1, -1);

        v35(v53, v28);
        result = (v35)(v51, v28);
        *v58 = v52;
      }

      else
      {

        v45 = *(v25 + 8);
        v45(v29, v28);
        v45(v13, v28);
        v45(v53, v28);
        result = (v45)(v51, v28);
        *v58 = v30;
      }
    }
  }

  else
  {
    v44 = v60;
    sub_226D6D04C();

    return swift_willThrow();
  }

  return result;
}

void sub_226CE0BA4(uint64_t *a1@<X8>)
{
  sub_226D6751C();
  v3 = sub_226D6748C();
  v4 = sub_226D6EBAC();

  if (!v1)
  {
    *a1 = v4;
  }
}

void sub_226CE0C18(void *a1@<X0>, unint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  sub_226D6751C();
  v8 = sub_226D6748C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v9 = sub_226D6E91C();
  [v8 setPredicate_];

  [v8 setFetchLimit_];
  v10 = sub_226D6EBBC();
  if (v2)
  {
  }

  else
  {
    v11 = v10;
    v30 = a1;
    if (v10 >> 62)
    {
      goto LABEL_20;
    }

    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      while (1)
      {
        v26 = a2;
        v27 = v8;
        a2 = 0;
        v28 = v11 & 0xFFFFFFFFFFFFFF8;
        v29 = v11 & 0xC000000000000001;
        while (1)
        {
          if (v29)
          {
            v13 = MEMORY[0x22AA8AFD0](a2, v11);
          }

          else
          {
            if (a2 >= *(v28 + 16))
            {
              goto LABEL_19;
            }

            v13 = *(v11 + 8 * a2 + 32);
          }

          v14 = v13;
          v8 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            break;
          }

          v15 = MEMORY[0x22AA8B6A0]();
          v16 = [v14 orderContentUpdatedDate];
          if (v16)
          {
            v17 = v16;
            sub_226D6D45C();

            v18 = sub_226D6D4AC();
            (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
            sub_226AC47B0(v7, &qword_27D7A8BE0, &unk_226D718F0);
          }

          else
          {
            v19 = sub_226D6D4AC();
            (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
            sub_226AC47B0(v7, &qword_27D7A8BE0, &unk_226D718F0);
            sub_226D6743C();
          }

          memset(v31, 0, sizeof(v31));
          sub_226B42C34(v14, v30);
          sub_226AFD62C(v31);
          objc_autoreleasePoolPop(v15);

          ++a2;
          if (v8 == v12)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        if (sub_226D6EDFC() < 1)
        {
          break;
        }

        v12 = sub_226D6EDFC();
        if (!v12)
        {
          v26 = a2;
          v27 = v8;
LABEL_15:

          *&v31[0] = 0;
          v20 = [v30 save_];
          v21 = v26;
          v22 = v27;
          if (v20)
          {
            v23 = *&v31[0];

            *v21 = 1;
          }

          else
          {
            v24 = *&v31[0];
            sub_226D6D04C();

            swift_willThrow();
          }

          return;
        }
      }
    }

    *a2 = 0;
  }
}

void sub_226CE1010(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D670CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CC2F28(a1, a2, v10);
  if (!v3)
  {
    v15[0] = 0;
    v11 = [a2 save_];
    v12 = v15[0];
    if (v11)
    {
      (*(v8 + 32))(a3, v10, v7);
      v13 = v12;
    }

    else
    {
      v14 = v15[0];
      sub_226D6D04C();

      swift_willThrow();
      (*(v8 + 8))(v10, v7);
    }
  }
}

void sub_226CE11A8(uint64_t (**a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v93 = a5;
  v94 = a7;
  v87 = a4;
  v88 = a6;
  v89 = a2;
  v90 = a3;
  v85 = a9;
  v103[1] = *MEMORY[0x277D85DE8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6898, &unk_226D75B90);
  MEMORY[0x28223BE20](v16 - 8);
  v101 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v96 = &v82 - v19;
  v102 = sub_226D670CC();
  v95 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v82 - v22;
  v99 = sub_226D6D4AC();
  v92 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v91 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68B0, qword_226D72098);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v82 - v26;
  v28 = sub_226D69CAC();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [objc_opt_self() currentQueryGenerationToken];
  v103[0] = 0;
  v97 = a1;
  v33 = [a1 setQueryGenerationFromToken:v32 error:v103];

  v34 = v103[0];
  if (!v33)
  {
    v40 = v103[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v35 = sub_226D69D0C();
  v36 = v34;
  v84 = v35;
  v37 = sub_226D69CBC();
  v103[0] = MEMORY[0x277D84F90];
  sub_226AC40E8(v89, v27, &qword_27D7A68B0, qword_226D72098);
  v38 = (*(v29 + 48))(v27, 1, v28);
  v86 = v37;
  v83 = a8;
  if (v38 == 1)
  {
    sub_226AC47B0(v27, &qword_27D7A68B0, qword_226D72098);
    v39 = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = MEMORY[0x277D837D0];
    (*(v29 + 32))(v31, v27, v28);
    v89 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_226D70840;
    v43 = sub_226D69C9C();
    v45 = v44;
    *(v42 + 56) = v41;
    *(v42 + 64) = sub_226B16404();
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    sub_226D6E91C();
    MEMORY[0x22AA8A610]();
    if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
    }

    sub_226D6E65C();
    (*(v29 + 8))(v31, v28);
    v39 = v103[0];
    v37 = v86;
  }

  v46 = v99;
  v48 = v91;
  v47 = v92;
  sub_226AC40E8(v90, v23, &qword_27D7A8BE0, &unk_226D718F0);
  v49 = (*(v47 + 48))(v23, 1, v46);
  v50 = v96;
  v51 = v94;
  if (v49 == 1)
  {
    v52 = v39;
    sub_226AC47B0(v23, &qword_27D7A8BE0, &unk_226D718F0);
    v53 = &loc_226D70000;
    v54 = v93;
    if (!v93)
    {
      goto LABEL_16;
    }

LABEL_14:
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v59 = swift_allocObject();
    *(v59 + 16) = *(v53 + 132);
    *(v59 + 56) = MEMORY[0x277D837D0];
    *(v59 + 64) = sub_226B16404();
    *(v59 + 32) = v87;
    *(v59 + 40) = v54;

    sub_226D6E91C();
    MEMORY[0x22AA8A610]();
    if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_50;
    }

    goto LABEL_15;
  }

  (*(v47 + 32))(v48, v23, v46);
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v55 = v47;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_226D70840;
  v57 = sub_226D6D3EC();
  *(v56 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v56 + 64) = sub_226C19454();
  *(v56 + 32) = v57;
  sub_226D6E91C();
  MEMORY[0x22AA8A610]();
  v58 = v48;
  v54 = v93;
  if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_226D6E61C();
  }

  sub_226D6E65C();
  (*(v55 + 8))(v58, v99);
  v52 = v103[0];
  v53 = &loc_226D70000;
  if (v54)
  {
    goto LABEL_14;
  }

LABEL_16:
  if (v51)
  {
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v60 = swift_allocObject();
    *(v60 + 16) = *(v53 + 132);
    *(v60 + 56) = MEMORY[0x277D837D0];
    *(v60 + 64) = sub_226B16404();
    *(v60 + 32) = v88;
    *(v60 + 40) = v51;

    sub_226D6E91C();
    MEMORY[0x22AA8A610]();
    if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
    }

    sub_226D6E65C();
    v52 = v103[0];
  }

  if (a10)
  {
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v61 = swift_allocObject();
    *(v61 + 16) = *(v53 + 132);
    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 64) = sub_226B16404();
    *(v61 + 32) = v83;
    *(v61 + 40) = a10;

    sub_226D6E91C();
    MEMORY[0x22AA8A610]();
    if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
    }

    sub_226D6E65C();
    v52 = v103[0];
    v37 = v86;
  }

  if (a12)
  {
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v62 = swift_allocObject();
    *(v62 + 16) = *(v53 + 132);
    *(v62 + 56) = MEMORY[0x277D837D0];
    *(v62 + 64) = sub_226B16404();
    *(v62 + 32) = a11;
    *(v62 + 40) = a12;

    sub_226D6E91C();
    MEMORY[0x22AA8A610]();
    if (*((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
    }

    sub_226D6E65C();
    v52 = v103[0];
  }

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v63 = sub_226D6E5CC();
  v64 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v37 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_226D71F20;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  *(v65 + 32) = sub_226D6E9FC();
  v66 = sub_226D6E5CC();

  [v37 setSortDescriptors_];

  if ((a14 & 1) == 0)
  {
    [v37 setFetchLimit_];
  }

  v67 = v98;
  v68 = sub_226D6EBBC();
  if (v67)
  {

    return;
  }

  v69 = v68;
  if (!(v68 >> 62))
  {
    v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v93 = 0;
    v94 = v52;
    if (!v70)
    {
      goto LABEL_52;
    }

    goto LABEL_34;
  }

  v70 = sub_226D6EDFC();
  v93 = 0;
  v94 = v52;
  if (v70)
  {
LABEL_34:
    v37 = 0;
    v98 = v69 & 0xFFFFFFFFFFFFFF8;
    v99 = v69 & 0xC000000000000001;
    v71 = (v95 + 48);
    v97 = (v95 + 32);
    v53 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v99)
      {
        v73 = MEMORY[0x22AA8AFD0](v37, v69);
        v51 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v37 >= *(v98 + 16))
        {
          goto LABEL_49;
        }

        v73 = *(v69 + 8 * v37 + 32);
        v51 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          sub_226D6E61C();
LABEL_15:
          sub_226D6E65C();
          v52 = v103[0];
          goto LABEL_16;
        }
      }

      v74 = v69;
      v75 = v70;
      v76 = v73;
      v77 = v101;
      sub_226D69C8C();
      sub_226CE83FC(v77, v50);

      v78 = v102;
      if ((*v71)(v50, 1, v102) == 1)
      {
        sub_226AC47B0(v50, &qword_27D7A6898, &unk_226D75B90);
      }

      else
      {
        v79 = *v97;
        (*v97)(v100, v50, v78);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_226BBBE38(0, v53[2] + 1, 1, v53);
        }

        v81 = v53[2];
        v80 = v53[3];
        if (v81 >= v80 >> 1)
        {
          v53 = sub_226BBBE38((v80 > 1), v81 + 1, 1, v53);
        }

        v53[2] = v81 + 1;
        v79(v53 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v81, v100, v102);
        v50 = v96;
      }

      ++v37;
      v70 = v75;
      v72 = v51 == v75;
      v69 = v74;
      if (v72)
      {
        goto LABEL_53;
      }
    }
  }

LABEL_52:
  v53 = MEMORY[0x277D84F90];
LABEL_53:

  *v85 = v53;
}

void sub_226CE1FB4(void *a1, uint64_t a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D52C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() currentQueryGenerationToken];
  v29[0] = 0;
  v10 = [a1 setQueryGenerationFromToken:v9 error:v29];

  v11 = v29[0];
  if (v10)
  {
    sub_226D69D0C();
    v12 = v11;
    v13 = sub_226D69C7C();
    if (!v2)
    {
      v14 = v13;
      if (v13)
      {
        [a1 deleteObject_];
        v29[0] = 0;
        if ([a1 save_])
        {
          v15 = v29[0];
        }

        else
        {
          v26 = v29[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
        if (qword_28105F5D8 != -1)
        {
          swift_once();
        }

        v17 = sub_226D6E07C();
        __swift_project_value_buffer(v17, qword_28105F5E0);
        (*(v6 + 16))(v8, a2, v5);
        v18 = sub_226D6E05C();
        v19 = sub_226D6E9CC();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v29[0] = v28;
          *v20 = 136315138;
          sub_226AC44E8(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v21 = sub_226D6F1CC();
          v23 = v22;
          (*(v6 + 8))(v8, v5);
          v24 = sub_226AC4530(v21, v23, v29);

          *(v20 + 4) = v24;
          _os_log_impl(&dword_226AB4000, v18, v19, "Extracted order user event with id not found: %s", v20, 0xCu);
          v25 = v28;
          __swift_destroy_boxed_opaque_existential_0Tm(v28);
          MEMORY[0x22AA8BEE0](v25, -1, -1);
          MEMORY[0x22AA8BEE0](v20, -1, -1);
        }

        else
        {

          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  else
  {
    v16 = v29[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void *sub_226CE2368@<X0>(uint64_t a6@<X8>)
{
  v22 = a6;
  v7 = sub_226D6B49C();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6990C();
  result = sub_226D6984C();
  if (!v6)
  {
    v11 = v23;
    v21 = 0;
    if (result)
    {
      v12 = result;
      v13 = [result trackedOrderIdentifier];
      sub_226D6E39C();

      v14 = v22;
      sub_226D66DAC();

      v15 = sub_226D6D1AC();
      return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    }

    else
    {
      sub_226D6751C();
      v16 = v21;
      result = sub_226D6744C();
      if (!v16)
      {
        v17 = result;
        if (result)
        {
          sub_226D6740C();
          v18 = v22;
          sub_226D66D7C();

          (*(v11 + 8))(v9, v7);
          v19 = sub_226D6D1AC();
          return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
        }

        else
        {
          v20 = sub_226D6D1AC();
          return (*(*(v20 - 8) + 56))(v22, 1, 1, v20);
        }
      }
    }
  }

  return result;
}

void *sub_226CE25FC(void *a1, void *a2, int *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v313 = a7;
  v350 = a6;
  v366 = a3;
  v367 = a4;
  v374[5] = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v10 - 8);
  v307 = &v295 - v11;
  v312 = sub_226D6708C();
  v314 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v304 = (&v295 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v306 = (&v295 - v14);
  MEMORY[0x28223BE20](v15);
  v311 = (&v295 - v16);
  v308 = sub_226D670CC();
  v309 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v303 = &v295 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v305 = &v295 - v19;
  MEMORY[0x28223BE20](v20);
  v310 = &v295 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6670, &qword_226D71888);
  MEMORY[0x28223BE20](v22 - 8);
  v341 = &v295 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6678, &unk_226D71890);
  MEMORY[0x28223BE20](v24 - 8);
  v340 = &v295 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6680, &unk_226D74710);
  MEMORY[0x28223BE20](v26 - 8);
  v339 = &v295 - v27;
  v347 = _s7ChangesV11FulfillmentVMa(0);
  v327 = *(v347 - 1);
  MEMORY[0x28223BE20](v347);
  v325 = &v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v342 = &v295 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6688, &unk_226D718A0);
  MEMORY[0x28223BE20](v31 - 8);
  v326 = &v295 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v338 = &v295 - v34;
  v345 = sub_226D677FC();
  v344 = *(v345 - 8);
  MEMORY[0x28223BE20](v345);
  v346 = &v295 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v319 = &v295 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6690, &qword_226D74720);
  MEMORY[0x28223BE20](v38 - 8);
  v343 = &v295 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v317 = &v295 - v41;
  v42 = _s7ChangesVMa(0);
  MEMORY[0x28223BE20](v42 - 8);
  v315 = &v295 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v316 = &v295 - v45;
  v324 = sub_226D6A6BC();
  v322 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v323 = (&v295 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v337 = sub_226D6D71C();
  v336 = *(v337 - 8);
  MEMORY[0x28223BE20](v337);
  v333 = &v295 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = sub_226D6D6DC();
  v334 = *(v335 - 1);
  MEMORY[0x28223BE20](v335);
  v330 = &v295 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = sub_226D6D4AC();
  v331 = *(v332 - 1);
  MEMORY[0x28223BE20](v332);
  v329 = &v295 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = type metadata accessor for ManagedExtractedOrderTracker.TrackingResult(0);
  MEMORY[0x28223BE20](v318);
  v320 = (&v295 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v51);
  v321 = (&v295 - v52);
  v365 = type metadata accessor for ManagedExtractedOrderTracker(0);
  MEMORY[0x28223BE20](v365);
  v351 = &v295 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = _s21NotificationSchedulerVMa(0);
  v348 = *(v349 - 8);
  MEMORY[0x28223BE20](v349);
  v353 = &v295 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = sub_226D6785C();
  v360 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v328 = &v295 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v355 = &v295 - v57;
  v358 = sub_226D67B3C();
  v359 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v354 = &v295 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v356 = (&v295 - v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66B0, &qword_226D718C8);
  MEMORY[0x28223BE20](v61 - 8);
  v352 = &v295 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v363 = &v295 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6640, &qword_226D75B50);
  MEMORY[0x28223BE20](v65 - 8);
  v357 = &v295 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v362 = &v295 - v68;
  v69 = sub_226D696EC();
  v364 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v71 = &v295 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v74 = &v295 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7980, &qword_226D75B58);
  MEMORY[0x28223BE20](v75 - 8);
  v77 = (&v295 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v78);
  v80 = &v295 - v79;
  sub_226D6B1CC();
  v81 = a1;
  v82 = a2;
  v83 = v368;
  result = sub_226D6B17C();
  if (!v83)
  {
    v366 = v77;
    v298 = v71;
    v302 = v69;
    v85 = v364;
    v367 = v81;
    v368 = v82;
    v297 = a5;
    v301 = v80;
    v300 = v74;
    if (result)
    {
      v299 = 0;
      v86 = result;
      v87 = v301;
      sub_226D696FC();
      v88 = v366;
      sub_226AC40E8(v87, v366, &qword_27D7A7980, &qword_226D75B58);
      v89 = v85;
      v90 = v302;
      if ((*(v85 + 48))(v88, 1, v302) == 1)
      {
        v91 = &qword_27D7A7980;
        v92 = &qword_226D75B58;
        sub_226AC47B0(v87, &qword_27D7A7980, &qword_226D75B58);

        v93 = v88;
LABEL_22:
        v115 = v91;
        v116 = v92;
        return sub_226AC47B0(v93, v115, v116);
      }

      v296 = v86;
      v94 = v300;
      (*(v85 + 32))(v300, v88, v90);
      sub_226D693FC();
      v95 = sub_226D67B0C();

      (*(v85 + 16))(v298, v94, v90);
      v96 = v362;
      sub_226D677CC();
      v97 = v95[2];
      if (v97)
      {
        v98 = 0;
        v99 = v359;
        v366 = (v359 + 16);
        v100 = (v359 + 8);
        v101 = v358;
        v102 = v356;
        while (v98 < v95[2])
        {
          v103 = v95;
          v77 = v101;
          (*(v99 + 16))(v102, v95 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v98, v101);
          if (sub_226D67B2C() == v367 && v104 == v368)
          {

LABEL_15:
            (*(v99 + 32))(v363, v102, v101);
            v106 = 0;
            v89 = v364;
            v96 = v362;
            v95 = v103;
            goto LABEL_16;
          }

          v105 = sub_226D6F21C();

          if (v105)
          {
            goto LABEL_15;
          }

          ++v98;
          (*v100)(v102, v101);
          v95 = v103;
          v86 = v365;
          if (v97 == v98)
          {
            v106 = 1;
            v89 = v364;
            v96 = v362;
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_75;
      }

      v106 = 1;
      v99 = v359;
      v101 = v358;
LABEL_16:
      v86 = v365;
LABEL_17:
      (*(v99 + 56))(v363, v106, 1, v101);
      v107 = v357;
      sub_226AC40E8(v96, v357, &qword_27D7A6640, &qword_226D75B50);
      v108 = v101;
      v109 = v360;
      v110 = v361;
      if ((*(v360 + 48))(v107, 1, v361) == 1)
      {
        v111 = v296;

        sub_226AC47B0(v363, &qword_27D7A66B0, &qword_226D718C8);
        v91 = &qword_27D7A6640;
        v92 = &qword_226D75B50;
        v112 = v96;
      }

      else
      {
        v368 = v95;
        v113 = v355;
        (*(v109 + 32))(v355, v107, v110);
        v107 = v352;
        sub_226AC40E8(v363, v352, &qword_27D7A66B0, &qword_226D718C8);
        if ((*(v99 + 48))(v107, 1, v108) != 1)
        {
          v117 = v108;
          (*(v99 + 32))(v354, v107, v108);
          v118 = v350;
          sub_226AE532C((v350 + 25), &v369);
          sub_226AE532C((v118 + 30), v374);
          v119 = v353;
          sub_226B836E0(&v369, v374);
          v120 = v351;
          sub_226AC40E8((v118 + 52), v351, &unk_27D7A7660, &unk_226D7B420);
          v121 = v113;
          v122 = v86[5];
          sub_226CE84D4(v119, v120 + v122, _s21NotificationSchedulerVMa);
          (*(v348 + 56))(v120 + v122, 0, 1, v349);
          v123 = v296;
          sub_226D677DC();
          sub_226D6990C();
          v124 = v297;
          v125 = v299;
          v126 = sub_226D6986C();
          v299 = v125;
          if (v125)
          {

            sub_226CE853C(v120, type metadata accessor for ManagedExtractedOrderTracker);
            sub_226CE853C(v353, _s21NotificationSchedulerVMa);
            (*(v99 + 8))(v354, v117);
            (*(v360 + 8))(v121, v361);
            sub_226AC47B0(v363, &qword_27D7A66B0, &qword_226D718C8);
            v127 = v362;
          }

          else
          {
            v128 = v126;
            v366 = v123;

            sub_226D6B31C();
            (*(v360 + 16))(v328, v121, v361);
            v129 = v124;
            v130 = sub_226D6B2CC();
            v372 = 0u;
            v373 = 0u;
            v370 = 0u;
            v371 = 0u;
            v369 = 0u;
            if (v128)
            {
              v131 = v128;
              v367 = [v131 orderContent];
              v132 = v329;
              sub_226D6D46C();
              v133 = v330;
              sub_226D6D66C();
              v134 = v333;
              sub_226D6D70C();
              sub_226D6982C();
              (*(v336 + 8))(v134, v337);
              (v334)[1](v133, v335);
              (*(v331 + 8))(v132, v332);
              sub_226D677DC();
              v135 = sub_226D6E36C();

              [v131 &off_2785C8838 + 3];

              v136 = v366;
              [v366 setExtractedOrder_];
              v137 = v130;
              v138 = v351;
              v139 = v299;
              sub_226B4EFDC(v131, v368, v129);
              if (v139)
              {

                sub_226AFD62C(&v369);
                sub_226CE853C(v138, type metadata accessor for ManagedExtractedOrderTracker);
                sub_226CE853C(v353, _s21NotificationSchedulerVMa);
                (*(v359 + 8))(v354, v358);
                (*(v360 + 8))(v121, v361);
                sub_226AC47B0(v363, &qword_27D7A66B0, &qword_226D718C8);
                sub_226AC47B0(v362, &qword_27D7A6640, &qword_226D75B50);
                (*(v364 + 8))(v300, v302);
                return sub_226AC47B0(v301, &qword_27D7A7980, &qword_226D75B58);
              }

              v153 = v367;

              sub_226B42120(v131, v129);
              v299 = 0;
              v154 = v363;
              v155 = v153;
              v156 = v317;
              sub_226D6B2EC();
              (*(v344 + 56))(v156, 0, 1, v345);
              v157 = v137;
              v158 = v319;
              sub_226D6B2EC();
              v159 = v316;
              sub_226D1F888(v153, 1, v156, v157, 1, v158, v316);
              v335 = v129;
              [v129 deleteObject_];

              v160 = v366;
              sub_226AFD62C(&v369);
              v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
              v162 = v321;
              *v321 = v131;
              sub_226CE846C(v159, v162 + v161, _s7ChangesVMa);
              v99 = v359;
            }

            else
            {
              v140 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
              v141 = v329;
              sub_226D6D46C();
              v142 = v330;
              sub_226D6D66C();
              v143 = v333;
              sub_226D6D70C();
              sub_226D6982C();
              (*(v336 + 8))(v143, v337);
              (v334)[1](v142, v335);
              (*(v331 + 8))(v141, v332);
              sub_226D677DC();
              v144 = sub_226D6E36C();

              [v140 setTrackedOrderIdentifier_];

              sub_226D6A72C();
              v145 = v323;
              *v323 = v140;
              (*(v322 + 104))(v145, *MEMORY[0x277CC7C58], v324);
              v146 = v129;
              v147 = v140;
              v148 = sub_226D6A6CC();
              [v147 setDashboardItem_];

              v149 = v366;
              [v366 setExtractedOrder_];
              v150 = v351;
              v151 = v299;
              sub_226B4EFDC(v147, v368, v146);
              if (v151)
              {

                sub_226AFD62C(&v369);
                v152 = v150;
LABEL_34:
                sub_226CE853C(v152, type metadata accessor for ManagedExtractedOrderTracker);
                sub_226CE853C(v353, _s21NotificationSchedulerVMa);
                (*(v359 + 8))(v354, v358);
                (*(v360 + 8))(v355, v361);
                sub_226AC47B0(v363, &qword_27D7A66B0, &qword_226D718C8);
                sub_226AC47B0(v362, &qword_27D7A6640, &qword_226D75B50);
                (*(v364 + 8))(v300, v302);
                return sub_226AC47B0(v301, &qword_27D7A7980, &qword_226D75B58);
              }

              sub_226B42120(v147, v146);
              v299 = 0;
              v333 = v147;
              v163 = v130;
              v164 = v344;
              v165 = v345;
              (*(v344 + 56))(v343, 1, 1, v345);
              v166 = v346;
              sub_226D6B2EC();
              v167 = MEMORY[0x277D84F90];
              v332 = sub_226B22808(MEMORY[0x277D84F90]);
              v334 = v163;
              v168 = sub_226D6B30C();
              v357 = sub_226B22808(v167);
              if (v168 >> 62)
              {
                v169 = sub_226D6EDFC();
              }

              else
              {
                v169 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v99 = v359;
              v335 = v129;
              v170 = v343;
              if (v169)
              {
                v171 = 0;
                v352 = v168 & 0xC000000000000001;
                v349 = v168 & 0xFFFFFFFFFFFFFF8;
                v356 = (v327 + 56);
                v348 = v327 + 48;
                v337 = v168;
                v336 = v169;
                do
                {
                  if (v352)
                  {
                    v176 = MEMORY[0x22AA8AFD0](v171, v168);
                    v174 = v347;
                    v175 = v342;
                    v177 = v171 + 1;
                    if (__OFADD__(v171, 1))
                    {
                      goto LABEL_96;
                    }
                  }

                  else
                  {
                    v174 = v347;
                    v175 = v342;
                    if (v171 >= *(v349 + 16))
                    {
                      goto LABEL_97;
                    }

                    v176 = *(v168 + 8 * v171 + 32);
                    v177 = v171 + 1;
                    if (__OFADD__(v171, 1))
                    {
LABEL_96:
                      __break(1u);
LABEL_97:
                      __break(1u);
LABEL_98:
                      __break(1u);
LABEL_99:
                      __break(1u);
LABEL_100:
                      __break(1u);
LABEL_101:
                      __break(1u);
                    }
                  }

                  v178 = [v176 trackingNumber];
                  v365 = v177;
                  if (v178)
                  {
                    v179 = v178;
                    v367 = sub_226D6E39C();
                    v368 = v180;
                  }

                  else
                  {
                    v367 = 0;
                    v368 = 0;
                  }

                  v181 = v174[5];
                  v182 = sub_226D6763C();
                  (*(*(v182 - 8) + 56))(v175 + v181, 1, 1, v182);
                  v183 = v174[6];
                  v184 = sub_226D6760C();
                  (*(*(v184 - 8) + 56))(v175 + v183, 1, 1, v184);
                  v185 = v174[7];
                  v186 = sub_226D6762C();
                  (*(*(v186 - 8) + 56))(v175 + v185, 1, 1, v186);
                  v187 = v176;
                  sub_226D6C6AC();
                  v188 = v339;
                  sub_226D6C68C();
                  sub_226AFD680(v188, v175 + v181, &qword_27D7A6680, &unk_226D74710);
                  v189 = v340;
                  sub_226D6C66C();
                  sub_226AFD680(v189, v175 + v183, &qword_27D7A6678, &unk_226D71890);
                  v190 = v341;
                  sub_226D6C67C();

                  sub_226AFD680(v190, v175 + v185, &qword_27D7A6670, &qword_226D71888);
                  v191 = v338;
                  sub_226CE84D4(v175, v338, _s7ChangesV11FulfillmentVMa);
                  v192 = *v356;
                  (*v356)(v191, 0, 1, v174);
                  sub_226CE853C(v175, _s7ChangesV11FulfillmentVMa);
                  if ((*v348)(v191, 1, v174) == 1)
                  {
                    sub_226AC47B0(v191, &qword_27D7A6688, &unk_226D718A0);
                    v193 = v357;
                    v194 = sub_226C2FD40(v367, v368);
                    v196 = v195;

                    v166 = v346;
                    if (v196)
                    {
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v374[0] = v193;
                      v198 = v193;
                      v168 = v337;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v217 = v337;
                        sub_226C3788C();
                        v168 = v217;
                        v198 = v374[0];
                      }

                      v173 = v326;
                      sub_226CE846C(*(v198 + 7) + *(v327 + 72) * v194, v326, _s7ChangesV11FulfillmentVMa);
                      v357 = v198;
                      sub_226D4A50C(v194, v198);

                      v172 = 0;
                      v166 = v346;
                    }

                    else
                    {

                      v172 = 1;
                      v173 = v326;
                      v168 = v337;
                    }

                    v192(v173, v172, 1, v347);
                    sub_226AC47B0(v173, &qword_27D7A6688, &unk_226D718A0);
                    v99 = v359;
                    v165 = v345;
                    v164 = v344;
                    v170 = v343;
                  }

                  else
                  {
                    v199 = v325;
                    sub_226CE846C(v191, v325, _s7ChangesV11FulfillmentVMa);
                    v200 = v357;
                    v201 = swift_isUniquelyReferenced_nonNull_native();
                    v374[0] = v200;
                    v203 = sub_226C2FD40(v367, v368);
                    v204 = v200[2];
                    v205 = (v202 & 1) == 0;
                    v206 = v204 + v205;
                    v207 = v327;
                    v166 = v346;
                    if (__OFADD__(v204, v205))
                    {
                      goto LABEL_98;
                    }

                    v208 = v202;
                    if (v200[3] >= v206)
                    {
                      v168 = v337;
                      if ((v201 & 1) == 0)
                      {
                        v218 = v337;
                        sub_226C3788C();
                        v168 = v218;
                      }

                      v170 = v343;
                    }

                    else
                    {
                      sub_226C30E60(v206, v201);
                      v209 = sub_226C2FD40(v367, v368);
                      if ((v208 & 1) != (v210 & 1))
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6698, &unk_226D718B0);
                        result = sub_226D6F25C();
                        __break(1u);
                        return result;
                      }

                      v203 = v209;
                      v170 = v343;
                      v168 = v337;
                    }

                    if (v208)
                    {

                      v357 = v374[0];
                      sub_226AFD6E8(v199, *(v374[0] + 7) + *(v207 + 72) * v203);
                    }

                    else
                    {
                      v211 = v374[0];
                      *(v374[0] + (v203 >> 6) + 8) |= 1 << v203;
                      v212 = (*(v211 + 6) + 16 * v203);
                      v213 = v368;
                      *v212 = v367;
                      v212[1] = v213;
                      sub_226CE846C(v199, *(v211 + 7) + *(v207 + 72) * v203, _s7ChangesV11FulfillmentVMa);

                      v214 = *(v211 + 2);
                      v215 = __OFADD__(v214, 1);
                      v216 = v214 + 1;
                      if (v215)
                      {
                        goto LABEL_99;
                      }

                      v357 = v211;
                      *(v211 + 2) = v216;
                    }

                    v99 = v359;
                    v165 = v345;
                    v164 = v344;
                  }

                  ++v171;
                }

                while (v365 != v336);
              }

              v219 = v170;
              v220 = v170;
              v221 = v317;
              sub_226AC40E8(v219, v317, &qword_27D7A6690, &qword_226D74720);
              v222 = v319;
              (*(v164 + 16))(v319, v166, v165);
              v223 = v315;
              sub_226D20CB0(v332, 0, v221, v357, 1, v222, v315);

              (*(v164 + 8))(v166, v165);
              sub_226AC47B0(v220, &qword_27D7A6690, &qword_226D74720);
              v160 = v366;

              sub_226AFD62C(&v369);
              v224 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840) + 48);
              v162 = v321;
              *v321 = v333;
              sub_226CE846C(v223, v162 + v224, _s7ChangesVMa);
              v154 = v363;
            }

            v225 = v351;
            swift_storeEnumTagMultiPayload();
            v226 = v320;
            sub_226CE84D4(v162, v320, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
            if (swift_getEnumCaseMultiPayload() == 1)
            {

              sub_226CE853C(v162, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
              sub_226CE853C(v225, type metadata accessor for ManagedExtractedOrderTracker);
              sub_226CE853C(v353, _s21NotificationSchedulerVMa);
              (*(v99 + 8))(v354, v358);
              (*(v360 + 8))(v355, v361);
              sub_226AC47B0(v154, &qword_27D7A66B0, &qword_226D718C8);
              sub_226AC47B0(v362, &qword_27D7A6640, &qword_226D75B50);
              (*(v364 + 8))(v300, v302);
              sub_226AC47B0(v301, &qword_27D7A7980, &qword_226D75B58);
              return sub_226CE853C(v226, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
            }

            v97 = *v226;
            v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66A0, &qword_226D73840);
            sub_226CE853C(v226 + *(v227 + 48), _s7ChangesVMa);
            v95 = [v97 orderContent];
            v228 = [v95 sanitizedOrderNumber];
            v77 = sub_226D6E39C();
            v98 = v229;

            v86 = v335;
            v230 = v299;
            sub_226B20478(v97, v335);
            v299 = v230;
            if (!v230)
            {
LABEL_75:
              v368 = v95;
              v233 = sub_226D67ADC();
              v234 = v311;
              *v311 = v233;
              v234[1] = v235;
              v365 = v77;
              v234[2] = v77;
              v234[3] = v98;
              v236 = *MEMORY[0x277CC6AC8];
              v237 = v314;
              v238 = v314 + 104;
              v239 = v312;
              v357 = *(v314 + 104);
              (v357)(v234, v236, v312);

              v367 = v98;
              v240 = v310;
              v241 = v299;
              sub_226CC2F28(v234, v86, v310);
              v299 = v241;
              v242 = v302;
              if (v241)
              {
                v243 = v366;

                (*(v237 + 8))(v234, v239);
                sub_226CE853C(v321, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
                sub_226CE853C(v351, type metadata accessor for ManagedExtractedOrderTracker);
                sub_226CE853C(v353, _s21NotificationSchedulerVMa);
                (*(v99 + 8))(v354, v358);
                (*(v360 + 8))(v355, v361);
                sub_226AC47B0(v363, &qword_27D7A66B0, &qword_226D718C8);
                sub_226AC47B0(v362, &qword_27D7A6640, &qword_226D75B50);
                (*(v364 + 8))(v300, v242);
                goto LABEL_28;
              }

              v348 = v238;
              v244 = *(v237 + 8);
              v314 = v237 + 8;
              v349 = v244;
              v244(v234, v239);
              v245 = *(v309 + 8);
              v309 += 8;
              v347 = v245;
              (v245)(v240, v308);
              v356 = v97;
              v246 = sub_226D698EC();
              v247 = v246;
              v248 = v246 & 0xFFFFFFFFFFFFFF8;
              if (v246 >> 62)
              {
                v249 = sub_226D6EDFC();
                if (v249)
                {
LABEL_79:
                  v250 = 0;
                  v251 = MEMORY[0x277D84F90];
                  do
                  {
                    v252 = v250;
                    while (1)
                    {
                      if ((v247 & 0xC000000000000001) != 0)
                      {
                        v253 = MEMORY[0x22AA8AFD0](v252, v247);
                        v250 = v252 + 1;
                        if (__OFADD__(v252, 1))
                        {
                          goto LABEL_100;
                        }
                      }

                      else
                      {
                        if (v252 >= *(v248 + 16))
                        {
                          goto LABEL_101;
                        }

                        v253 = *(v247 + 8 * v252 + 32);
                        v250 = v252 + 1;
                        if (__OFADD__(v252, 1))
                        {
                          goto LABEL_100;
                        }
                      }

                      v254 = v253;
                      v255 = [v254 messageIDHash];
                      if (v255)
                      {
                        break;
                      }

                      ++v252;
                      if (v250 == v249)
                      {
                        goto LABEL_105;
                      }
                    }

                    v256 = v255;
                    v257 = sub_226D6E39C();
                    v352 = v258;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v251 = sub_226BBAB0C(0, *(v251 + 2) + 1, 1, v251);
                    }

                    v260 = *(v251 + 2);
                    v259 = *(v251 + 3);
                    if (v260 >= v259 >> 1)
                    {
                      v251 = sub_226BBAB0C((v259 > 1), v260 + 1, 1, v251);
                    }

                    *(v251 + 2) = v260 + 1;
                    v261 = &v251[16 * v260];
                    v262 = v352;
                    *(v261 + 4) = v257;
                    *(v261 + 5) = v262;
                  }

                  while (v250 != v249);
LABEL_105:

                  v263 = sub_226AE3C28(v251);

                  v264 = v335;
                  v265 = v299;
                  sub_226CC3218(v263, v365, v367, v335);
                  if (v265)
                  {
                    v266 = v366;

                    sub_226CE853C(v321, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
                    v152 = v351;
                    goto LABEL_34;
                  }

                  *&v369 = 0;
                  if (![v264 save_])
                  {
                    v278 = v369;
                    sub_226D6D04C();

                    swift_willThrow();
                    v279 = v366;

                    sub_226CE853C(v321, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
                    sub_226CE853C(v351, type metadata accessor for ManagedExtractedOrderTracker);
                    sub_226CE853C(v353, _s21NotificationSchedulerVMa);
                    (*(v359 + 8))(v354, v358);
                    (*(v360 + 8))(v355, v361);
                    sub_226AC47B0(v363, &qword_27D7A66B0, &qword_226D718C8);
                    sub_226AC47B0(v362, &qword_27D7A6640, &qword_226D75B50);
                    (*(v364 + 8))(v300, v302);
                    return sub_226AC47B0(v301, &qword_27D7A7980, &qword_226D75B58);
                  }

                  v267 = v369;
                  sub_226B4E744(v321);
                  v268 = v350[28];
                  v269 = v350[29];
                  v270 = __swift_project_boxed_opaque_existential_1(v350 + 25, v268);
                  *(&v370 + 1) = v268;
                  *&v371 = *(v269 + 8);
                  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v369);
                  (*(*(v268 - 8) + 16))(boxed_opaque_existential_1, v270, v268);
                  v272 = v307;
                  LOBYTE(v268) = sub_226B5A79C(v307);
                  sub_226AC47B0(v272, &qword_27D7A8BE0, &unk_226D718F0);
                  if (v268)
                  {
                    v273 = [v356 merchantEmailAddress];
                    if (v273)
                    {
                      v274 = v273;
                      v275 = sub_226D6E39C();
                      v277 = v276;
                    }

                    else
                    {
                      v275 = 0;
                      v277 = 0;
                    }

                    v280 = [v356 merchantEmailDisplayName];
                    if (!v280 || (v281 = v280, v282 = sub_226D6E39C(), v284 = v283, v281, !v277) || !v284)
                    {
                      v287 = v366;

LABEL_128:

                      sub_226CE853C(v321, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
                      sub_226CE853C(v351, type metadata accessor for ManagedExtractedOrderTracker);
                      sub_226CE853C(v353, _s21NotificationSchedulerVMa);
                      (*(v359 + 8))(v354, v358);
                      (*(v360 + 8))(v355, v361);
                      sub_226AC47B0(v363, &qword_27D7A66B0, &qword_226D718C8);
                      sub_226AC47B0(v362, &qword_27D7A6640, &qword_226D75B50);
                      (*(v364 + 8))(v300, v302);
                      sub_226AC47B0(v301, &qword_27D7A7980, &qword_226D75B58);
                      return sub_226AFD7B8(&v369);
                    }

                    v285 = sub_226B13DBC();
                    sub_226D69D0C();
                    v286 = sub_226B11DCC(v285, v335);
                    v288 = v286;

                    if (v288)
                    {
                      v289 = v306;
                      *v306 = v275;
                      v289[1] = v277;
                      v289[2] = v282;
                      v289[3] = v284;
                      (v357)(v289, *MEMORY[0x277CC6AF8], v312);

                      sub_226CC2F28(v289, v335, v305);
                      (v349)(v306, v312);
                      (v347)(v305, v308);
                    }

                    if (sub_226B16018(v275, v277, v282, v284, v335))
                    {
                    }

                    else
                    {
                      v290 = v304;
                      *v304 = v275;
                      v290[1] = v277;
                      v290[2] = v282;
                      v290[3] = v284;
                      (v357)(v290, *MEMORY[0x277CC6B00], v312);
                      sub_226CC2F28(v290, v335, v303);
                      (v349)(v304, v312);
                      (v347)(v303, v308);
                    }

                    if ([v335 hasChanges])
                    {
                      v374[0] = 0;
                      if (![v335 save_])
                      {
                        v293 = v374[0];
                        sub_226D6D04C();

                        swift_willThrow();
                        v294 = v366;

                        sub_226CE853C(v321, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
                        sub_226CE853C(v351, type metadata accessor for ManagedExtractedOrderTracker);
                        sub_226CE853C(v353, _s21NotificationSchedulerVMa);
                        (*(v359 + 8))(v354, v358);
                        (*(v360 + 8))(v355, v361);
                        sub_226AC47B0(v363, &qword_27D7A66B0, &qword_226D718C8);
                        sub_226AC47B0(v362, &qword_27D7A6640, &qword_226D75B50);
                        (*(v364 + 8))(v300, v302);
                        sub_226AC47B0(v301, &qword_27D7A7980, &qword_226D75B58);
                        return sub_226AFD7B8(&v369);
                      }

                      v291 = v374[0];
                    }
                  }

                  v292 = v366;

                  goto LABEL_128;
                }
              }

              else
              {
                v249 = *((v246 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v249)
                {
                  goto LABEL_79;
                }
              }

              v251 = MEMORY[0x277D84F90];
              goto LABEL_105;
            }

            v231 = v366;
            v232 = v362;

            sub_226CE853C(v162, type metadata accessor for ManagedExtractedOrderTracker.TrackingResult);
            sub_226CE853C(v225, type metadata accessor for ManagedExtractedOrderTracker);
            sub_226CE853C(v353, _s21NotificationSchedulerVMa);
            (*(v99 + 8))(v354, v358);
            (*(v360 + 8))(v355, v361);
            sub_226AC47B0(v363, &qword_27D7A66B0, &qword_226D718C8);
            v127 = v232;
          }

          sub_226AC47B0(v127, &qword_27D7A6640, &qword_226D75B50);
          (*(v364 + 8))(v300, v302);
LABEL_28:
          v115 = &qword_27D7A7980;
          v116 = &qword_226D75B58;
          v93 = v301;
          return sub_226AC47B0(v93, v115, v116);
        }

        v114 = v296;

        (*(v109 + 8))(v113, v110);
        v91 = &qword_27D7A66B0;
        v92 = &qword_226D718C8;
        sub_226AC47B0(v363, &qword_27D7A66B0, &qword_226D718C8);
        v112 = v96;
      }

      sub_226AC47B0(v112, &qword_27D7A6640, &qword_226D75B50);
      (*(v89 + 8))(v300, v302);
      sub_226AC47B0(v301, &qword_27D7A7980, &qword_226D75B58);
      v93 = v107;
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_226CE5D50(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = a4;
  v29 = a5;
  v33[5] = *MEMORY[0x277D85DE8];
  v8 = sub_226D670CC();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6708C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[28];
  v15 = a1[29];
  v17 = __swift_project_boxed_opaque_existential_1(a1 + 25, v16);
  v33[3] = v16;
  v33[4] = *(v15 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);
  v19 = a3;
  v20 = v29;
  sub_226B5A9C8(a2, v19);
  v21 = MEMORY[0x277CC6B10];
  if ((a2 & 1) == 0)
  {
    v21 = MEMORY[0x277CC6B18];
  }

  (*(v12 + 104))(v14, *v21, v11);
  v22 = v31;
  sub_226CC2F28(v14, v20, v10);
  if (v22)
  {
    goto LABEL_7;
  }

  (*(v27 + 8))(v10, v28);
  v32 = 0;
  if (([v20 save_] & 1) == 0)
  {
    v25 = v32;
    sub_226D6D04C();

    swift_willThrow();
LABEL_7:
    (*(v12 + 8))(v14, v11);
    return sub_226AFD7B8(v33);
  }

  v23 = *(v12 + 8);
  v24 = v32;
  v23(v14, v11);
  return sub_226AFD7B8(v33);
}

void sub_226CE601C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_226BE07D4(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

void sub_226CE6048(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_226BDFE04(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

void sub_226CE6074(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v68 = a7;
  v65 = a6;
  v69 = a5;
  v70 = a8;
  v71 = a4;
  v73[1] = *MEMORY[0x277D85DE8];
  v12 = sub_226D6708C();
  v72 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_226D670CC();
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() currentQueryGenerationToken];
  v73[0] = 0;
  v19 = [a1 setQueryGenerationFromToken:v18 error:v73];

  v20 = v73[0];
  if (!v19)
  {
    v35 = v73[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  sub_226D6990C();
  v21 = v20;
  v22 = sub_226D6986C();
  if (v8)
  {
    return;
  }

  v64 = a2;
  if (v22)
  {
    v62 = a3;
    v23 = v22;
    v24 = [v23 orderContent];
    v25 = [v24 sanitizedOrderNumber];

    v63 = sub_226D6E39C();
    v27 = v26;

    v28 = v23;
    v29 = [v23 merchantEmailMessageIDHash];
    if (v29)
    {
      v30 = v29;
LABEL_6:
      v64 = v28;
      v31 = sub_226D6E39C();
      v33 = v32;

      *v14 = v31;
      v14[1] = v33;
      v14[2] = v63;
      v14[3] = v27;
      v34 = v72;
      (*(v72 + 104))(v14, *MEMORY[0x277CC6AC0], v12);
      sub_226CC2F28(v14, a1, v17);
      (*(v34 + 8))(v14, v12);
      (*(v66 + 8))(v17, v67);
      v28 = v64;
      if ((v69 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v44 = sub_226D698EC();
    v45 = v44;
    if (v44 >> 62)
    {
      v49 = sub_226D6EDFC();
      v46 = v62;
      if (v49)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v46 = v62;
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:
        if ((v45 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x22AA8AFD0](0, v45);
        }

        else
        {
          if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_35:
            swift_once();
LABEL_26:
            v50 = sub_226D6E07C();
            __swift_project_value_buffer(v50, qword_28105F5E0);

            v51 = sub_226D6E05C();
            v52 = sub_226D6E9CC();

            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v73[0] = v54;
              *v53 = 136315138;
              *(v53 + 4) = sub_226AC4530(v64, v46, v73);
              _os_log_impl(&dword_226AB4000, v51, v52, "There are no emails associated with extracted order with trackingID %s, skipping donating user event to delete the order", v53, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v54);
              MEMORY[0x22AA8BEE0](v54, -1, -1);
              MEMORY[0x22AA8BEE0](v53, -1, -1);
            }

            if ((v69 & 1) == 0)
            {
              goto LABEL_30;
            }

LABEL_29:
            sub_226CE6788(v28, a1);
LABEL_30:
            v55 = sub_226CCAA84(v28, a1);
            v57 = v56;

            v73[0] = 0;
            if ([a1 save_])
            {
              v58 = v73[0];

              v59 = v70;
              *v70 = v55;
              v59[1] = v57;
            }

            else
            {
              v60 = v73[0];

              sub_226D6D04C();

              swift_willThrow();
            }

            return;
          }

          v47 = *(v45 + 32);
        }

        v48 = v47;

        v30 = [v48 messageIDHash];

        if (v30)
        {
          goto LABEL_6;
        }

        v46 = v62;
LABEL_25:

        if (qword_28105F5D8 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_25;
  }

  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v36 = sub_226D6E07C();
  __swift_project_value_buffer(v36, qword_28105F5E0);

  v37 = sub_226D6E05C();
  v38 = sub_226D6E9CC();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v64;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v73[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_226AC4530(v40, a3, v73);
    _os_log_impl(&dword_226AB4000, v37, v38, "Extracted order with id not found: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x22AA8BEE0](v42, -1, -1);
    MEMORY[0x22AA8BEE0](v41, -1, -1);
  }

  v43 = v70;
  *v70 = 0;
  v43[1] = 0;
}

void sub_226CE6788(void *a1, void *a2)
{
  v6 = sub_226D670CC();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6708C();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = *(v2 + 408);
  v12 = [a1 trackedOrderIdentifier];
  v43 = sub_226D6E39C();
  v14 = v13;

  v15 = [a1 merchantEmailAddress];
  v16 = a2;
  if (v15)
  {
    v17 = v15;
    v38 = sub_226D6E39C();
    v19 = v18;
  }

  else
  {
    v38 = 0;
    v19 = 0;
  }

  v20 = [a1 merchantEmailDisplayName];
  if (v20 && (v21 = v20, v36 = v6, v22 = sub_226D6E39C(), v24 = v23, v21, v19) && v24)
  {
    v43 = v22;

    v25 = sub_226B13DBC();
    v26 = v16;
    sub_226CC3898(v25, v16);

    if (v3)
    {
    }

    else
    {
      *v11 = v38;
      v11[1] = v19;
      v11[2] = v43;
      v11[3] = v24;
      v34 = v40;
      v33 = v41;
      (*(v40 + 104))(v11, *MEMORY[0x277CC6AE8], v41);
      v35 = v39;
      sub_226CC2F28(v11, v26, v39);
      (*(v37 + 8))(v35, v36);
      (*(v34 + 8))(v11, v33);
    }
  }

  else
  {

    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v27 = sub_226D6E07C();
    __swift_project_value_buffer(v27, qword_28105F5E0);

    v28 = sub_226D6E05C();
    v29 = sub_226D6E9CC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v44 = v31;
      *v30 = 136315138;
      v32 = sub_226AC4530(v43, v14, &v44);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_226AB4000, v28, v29, "Merchant email address and display name missing: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
      MEMORY[0x22AA8BEE0](v30, -1, -1);
    }

    else
    {
    }
  }
}

void sub_226CE6BB0(void *a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  v89 = a6;
  v98 = a5;
  v95 = a4;
  v101 = *MEMORY[0x277D85DE8];
  v10 = sub_226D6D52C();
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v80 - v13;
  v14 = sub_226D6D4AC();
  v96 = *(v14 - 8);
  v97 = v14;
  MEMORY[0x28223BE20](v14);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_226D670CC();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v88 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = &v80 - v18;
  v99 = sub_226D6708C();
  v19 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v86 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v80 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v80 - v25;
  v27 = [objc_opt_self() currentQueryGenerationToken];
  *&v100[0] = 0;
  v28 = [a1 setQueryGenerationFromToken:v27 error:v100];

  v29 = *&v100[0];
  if (!v28)
  {
    v60 = *&v100[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  sub_226D6990C();
  v30 = v29;
  v31 = sub_226D6986C();
  if (v6)
  {
    return;
  }

  v32 = v31;
  v83 = a2;
  v84 = a3;
  v85 = a1;
  if (v31)
  {
    v33 = [v31 isMarkedAsComplete];
    v34 = v95;
    if (v33 != (v95 & 1))
    {
      v35 = v96;
      v36 = v97;
      (*(v96 + 16))(v26, v98, v97);
      (*(v35 + 56))(v26, 0, 1, v36);
      sub_226D698BC();
      sub_226AC47B0(v26, &qword_27D7A8BE0, &unk_226D718F0);
      memset(v100, 0, sizeof(v100));
      sub_226B42120(v32, v85);
      sub_226AFD62C(v100);
    }

    v37 = v19;
    v38 = [v32 orderContent];
    v82 = v32;
    v39 = v38;
    v40 = [v38 sanitizedOrderNumber];

    v41 = v82;
    v81 = sub_226D6E39C();
    v43 = v42;

    v44 = [v41 merchantEmailMessageIDHash];
    if (v44)
    {
      v45 = v44;
      v46 = v43;
LABEL_8:
      v47 = sub_226D6E39C();
      v49 = v48;

      *v23 = v47;
      v23[1] = v49;
      v23[2] = v81;
      v23[3] = v46;
      v50 = MEMORY[0x277CC6AB0];
      if ((v34 & 1) == 0)
      {
        v50 = MEMORY[0x277CC6AA8];
      }

      v51 = v99;
      (*(v37 + 104))(v23, *v50, v99);
      (*(v37 + 16))(v86, v23, v51);
      (*(v96 + 16))(v87, v98, v97);
      v52 = *(v89 + 16);
      v53 = (*(*v52 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v52 + v53));
      sub_226CC4EC4(v91);
      v54 = v37;
      os_unfair_lock_unlock((v52 + v53));
      sub_226D6D51C();
      v55 = v90;
      sub_226D6709C();
      sub_226D69D0C();
      v56 = v92;
      v57 = v94;
      (*(v92 + 16))(v88, v55, v94);
      v58 = v85;
      v59 = v85;

      (*(v56 + 8))(v55, v57);
      (*(v54 + 8))(v23, v99);
LABEL_31:
      *&v100[0] = 0;
      if ([v58 save_])
      {
        v78 = *&v100[0];
      }

      else
      {
        v79 = *&v100[0];
        sub_226D6D04C();

        swift_willThrow();
      }

      return;
    }

    v69 = sub_226D698EC();
    v70 = v69;
    if (v69 >> 62)
    {
      if (sub_226D6EDFC())
      {
        goto LABEL_20;
      }
    }

    else if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      if ((v70 & 0xC000000000000001) != 0)
      {
        v46 = v43;
        v71 = MEMORY[0x22AA8AFD0](0, v70);
      }

      else
      {
        if (!*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_37;
        }

        v46 = v43;
        v71 = *(v70 + 32);
      }

      v72 = v71;

      v45 = [v72 messageIDHash];

      if (v45)
      {
        goto LABEL_8;
      }

LABEL_27:

      v23 = v84;
      if (qword_28105F5D8 == -1)
      {
LABEL_28:
        v73 = sub_226D6E07C();
        __swift_project_value_buffer(v73, qword_28105F5E0);

        v74 = sub_226D6E05C();
        v75 = sub_226D6E9CC();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&v100[0] = v77;
          *v76 = 136315138;
          *(v76 + 4) = sub_226AC4530(v83, v23, v100);
          _os_log_impl(&dword_226AB4000, v74, v75, "There are no emails associated with extracted order with trackingID %s, skipping donating user event to set order marked as complete", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v77);
          MEMORY[0x22AA8BEE0](v77, -1, -1);
          MEMORY[0x22AA8BEE0](v76, -1, -1);
        }

        v58 = v85;
        goto LABEL_31;
      }

LABEL_37:
      swift_once();
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v61 = sub_226D6E07C();
  __swift_project_value_buffer(v61, qword_28105F5E0);
  v62 = v84;

  v63 = sub_226D6E05C();
  v64 = sub_226D6E9CC();

  v65 = os_log_type_enabled(v63, v64);
  v66 = v83;
  if (v65)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v100[0] = v68;
    *v67 = 136315138;
    *(v67 + 4) = sub_226AC4530(v66, v62, v100);
    _os_log_impl(&dword_226AB4000, v63, v64, "Extracted order with id not found: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    MEMORY[0x22AA8BEE0](v68, -1, -1);
    MEMORY[0x22AA8BEE0](v67, -1, -1);
  }
}

void sub_226CE7600(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = [objc_opt_self() currentQueryGenerationToken];
  v22[0] = 0;
  v10 = [a1 setQueryGenerationFromToken:v9 error:v22];

  v11 = v22[0];
  if (v10)
  {
    sub_226D6990C();
    v12 = v11;
    v13 = sub_226D6986C();
    if (!v5)
    {
      v14 = v13;
      if (v13)
      {
        sub_226D698CC();
        v22[0] = 0;
        if ([a1 save_])
        {
          v15 = v22[0];
        }

        else
        {
          v21 = v22[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
        if (qword_28105F5D8 != -1)
        {
          swift_once();
        }

        v17 = sub_226D6E07C();
        __swift_project_value_buffer(v17, qword_28105F5E0);

        v14 = sub_226D6E05C();
        v18 = sub_226D6E9CC();

        if (os_log_type_enabled(v14, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v22[0] = v20;
          *v19 = 136315138;
          *(v19 + 4) = sub_226AC4530(a2, a3, v22);
          _os_log_impl(&dword_226AB4000, v14, v18, "Extracted order with id not found: %s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v20);
          MEMORY[0x22AA8BEE0](v20, -1, -1);
          MEMORY[0x22AA8BEE0](v19, -1, -1);
        }
      }
    }
  }

  else
  {
    v16 = v22[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226CE7894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8FF8, &qword_226D7BB30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_226D6A15C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  ExtractedOrderConfigurationProvider.defaultBehavior.getter();
  (*(v4 + 16))(v6, v9, v3);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 == *MEMORY[0x277CC7AE8] || v10 == *MEMORY[0x277CC7AF0] || v10 == *MEMORY[0x277CC7AF8])
  {
    v11 = sub_226D6AEBC();
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
    sub_226D6AEAC();
    return (*(v4 + 8))(v9, v3);
  }

  else
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

void sub_226CE7B94(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v8 = sub_226D6C62C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentQueryGenerationToken];
  v41[0] = 0;
  v13 = [a1 setQueryGenerationFromToken:v12 error:v41];

  v14 = v41[0];
  if (v13)
  {
    v38 = v8;
    v39 = v11;
    v36 = a4;
    v37 = v9;
    sub_226D6B1CC();
    v15 = v14;
    v16 = sub_226D6B1AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_226D71F30;
    *(v17 + 32) = sub_226D6B16C();
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v18 = a2;
    v19 = a3;
    *(v17 + 40) = sub_226D6E91C();
    *(v17 + 48) = sub_226D6E91C();
    v20 = sub_226D6E5CC();

    v21 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v16 setPredicate_];
    sub_226D6A72C();
    v22 = sub_226D6A6EC();
    v23 = sub_226D6A6FC();
    [v22 setPredicate_];

    v24 = v40;
    sub_226D6EBBC();
    if (v24)
    {
    }

    else
    {
      v40 = v18;
      sub_226D6EBBC();
      v26 = sub_226D6B95C();
      v39 = v16;

      if (qword_28105F6A0 != -1)
      {
        swift_once();
      }

      v27 = sub_226D6E07C();
      __swift_project_value_buffer(v27, qword_28105F6A8);

      v28 = v19;

      v29 = sub_226D6E05C();
      v30 = sub_226D6E9EC();

      v31 = os_log_type_enabled(v29, v30);
      v32 = v36;
      if (v31)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v41[0] = v34;
        *v33 = 134218242;
        *(v33 + 4) = *(v26 + 16);

        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_226AC4530(v40, v28, v41);
        _os_log_impl(&dword_226AB4000, v29, v30, "Found %ld banners for messageID: %s", v33, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x22AA8BEE0](v34, -1, -1);
        MEMORY[0x22AA8BEE0](v33, -1, -1);
      }

      else
      {
      }

      *v32 = v26;
    }
  }

  else
  {
    v25 = v41[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

unint64_t sub_226CE8108()
{
  result = qword_27D7A8FB8;
  if (!qword_27D7A8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8FB8);
  }

  return result;
}

uint64_t sub_226CE83FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6898, &unk_226D75B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CE846C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CE84D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CE853C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226CE85E8()
{
  v1 = v0;
  v2 = sub_226D67F1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(v0 + OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_walletInfo + 8) + 24))(v4))
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    v27[1] = __swift_project_value_buffer(v7, qword_28105F5E0);
    v8 = sub_226D6E05C();
    v9 = sub_226D6E9EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226AB4000, v8, v9, "Wallet has been deleted, deleting all local Bank Connect data.", v10, 2u);
      MEMORY[0x22AA8BEE0](v10, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_contextProvider), *(v1 + OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_contextProvider + 24));
    v11 = sub_226D676AC();
    v12 = sub_226D6E36C();
    v28 = v11;
    [v11 setTransactionAuthor:v12];

    v48 = 0;
    memset(v47, 0, sizeof(v47));
    sub_226AE532C(v1 + OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_walletMessageUpdater, v46);
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_226AE532C(v1 + OBJC_IVAR____TtC13FinanceDaemon22BankConnectDataDeleter_deletedAccountsApplicationRemover, v43);
    v13 = sub_226D6B5EC();
    v14 = MEMORY[0x277CC7F68];
    *(&v35 + 1) = v13;
    *&v36[0] = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v34);
    sub_226D6B5AC();
    v15 = sub_226D6A92C();
    v16 = objc_allocWithZone(v15);
    v17 = sub_226D6A91C();
    v42[3] = v15;
    v42[4] = MEMORY[0x277CC7CC8];
    v41[4] = v14;
    v42[0] = v17;
    v41[3] = v13;
    __swift_allocate_boxed_opaque_existential_1(v41);
    sub_226D6B58C();
    *&v36[0] = 0;
    v34 = 0u;
    v35 = 0u;
    sub_226B1B848(v47, &v34);
    sub_226AE532C(v46, v36 + 8);
    sub_226AE532C(v42, v37);
    sub_226AE532C(v41, v38 + 8);
    sub_226B1B8B8(v44, &v29);
    if (v30)
    {
      sub_226AC47B0(v44, &qword_27D7A6918, &unk_226D7BBC0);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      sub_226AC47B0(v47, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      sub_226AC484C(&v29, &v31);
    }

    else
    {
      sub_226D67E6C();
      sub_226D67F0C();
      (*(v3 + 8))(v6, v2);
      v22 = objc_allocWithZone(MEMORY[0x277CE2028]);
      v23 = sub_226D6E36C();

      v24 = [v22 initWithBundleIdentifier_];

      v32 = sub_226B42B94();
      v33 = MEMORY[0x277CC85E8];
      *&v31 = v24;
      sub_226AC47B0(v44, &qword_27D7A6918, &unk_226D7BBC0);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      sub_226AC47B0(v47, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      if (v30)
      {
        sub_226AC47B0(&v29, &qword_27D7A6918, &unk_226D7BBC0);
      }
    }

    sub_226AC484C(&v31, v39);
    v25 = sub_226AC484C(v43, v40 + 8);
    v49[12] = v40[0];
    v49[13] = v40[1];
    v49[14] = v40[2];
    v49[8] = v38[1];
    v49[9] = v38[2];
    v49[10] = v39[0];
    v49[11] = v39[1];
    v49[4] = v36[2];
    v49[5] = v37[0];
    v49[6] = v37[1];
    v49[7] = v38[0];
    v49[0] = v34;
    v49[1] = v35;
    v49[2] = v36[0];
    v49[3] = v36[1];
    MEMORY[0x28223BE20](v25);
    v26 = v28;
    v27[-2] = v28;
    v27[-1] = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6920, &unk_226D721D0);
    sub_226D6EB7C();
    ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(*(&v34 + 8), v34);

    sub_226B1B944(v49);
  }

  else
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v18 = sub_226D6E07C();
    __swift_project_value_buffer(v18, qword_28105F5E0);
    v28 = sub_226D6E05C();
    v19 = sub_226D6E9AC();
    if (os_log_type_enabled(v28, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226AB4000, v28, v19, "Wallet is not deleted. Skip Finance data cleanup.", v20, 2u);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }

    v21 = v28;
  }
}

void sub_226CE8D10(char *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v57 = a2;
  v49 = a3;
  v66 = *MEMORY[0x277D85DE8];
  v61 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  MEMORY[0x28223BE20](v61);
  v63 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D682FC();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = sub_226D6A6AC();
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x277D84F90];
  sub_226D6794C();
  v15 = sub_226D678BC();
  v16 = sub_226D6EBBC();

  if (!v3)
  {
    v48 = v8;
    v46 = v14;
    v55 = v12;
    v62 = v11;
    if (v16 >> 62)
    {
      goto LABEL_27;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v18 = v55;
    v19 = v58;
    v20 = v60;
    v56 = v16;
    if (v17)
    {
      v21 = 0;
      LODWORD(v60) = 0;
      v53 = v16 & 0xFFFFFFFFFFFFFF8;
      v54 = v16 & 0xC000000000000001;
      v47 = (v20 + 16);
      v51 = (v20 + 8);
      v52 = v6;
      v16 = v62;
      v50 = v17;
      while (1)
      {
        if (v54)
        {
          v22 = MEMORY[0x22AA8AFD0](v21, v56);
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_20:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v21 >= *(v53 + 16))
          {
            __break(1u);
LABEL_27:
            v17 = sub_226D6EDFC();
            goto LABEL_4;
          }

          v22 = *(v56 + 8 * v21 + 32);
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_20;
          }
        }

        v59 = v23;
        v24 = v22;
        sub_226D6830C();
        v25 = [v24 institutionID];
        v26 = sub_226D6E39C();
        v28 = v27;

        v29 = [v24 consentID];
        v30 = sub_226D6E39C();
        v32 = v31;

        MEMORY[0x28223BE20](v33);
        *(&v46 - 6) = v30;
        *(&v46 - 5) = v32;
        v34 = v57;
        *(&v46 - 4) = a1;
        *(&v46 - 3) = v34;
        *(&v46 - 16) = 0;
        sub_226D6EB8C();

        if (v60)
        {
          LODWORD(v60) = 1;
        }

        else
        {
          LODWORD(v60) = *(v63 + *(v61 + 24));
        }

        sub_226CED28C(v35);
        sub_226D6996C();
        sub_226D682EC();
        v36 = sub_226D6991C();

        if (v36)
        {

          v6 = v52;
        }

        else
        {
          v37 = MEMORY[0x22AA83210](v26, v28);
          v6 = v52;
          if (v37)
          {
          }

          else
          {
            (*v47)(v48, v62, v52);
            v38 = a1;
            v39 = sub_226D6997C();
          }
        }

        sub_226B1B9BC(v63);
        v16 = v62;
        (*v51)(v62, v6);
        ++v21;
        v19 = v58;
        v18 = v55;
        if (v59 == v50)
        {
          goto LABEL_22;
        }
      }
    }

    LODWORD(v60) = 0;
LABEL_22:

    v40 = v46;
    sub_226D6A69C();
    sub_226D6A68C();
    (*(v19 + 8))(v40, v18);
    v64 = 0;
    v41 = [a1 save_];
    v42 = v64;
    if (v41)
    {
      v43 = v49;
      *v49 = v60;
      *(v43 + 1) = v65;
      v44 = v42;
    }

    else
    {
      v45 = v64;

      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

uint64_t sub_226CE942C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_226D6F21C();
  }

  return 1;
}

uint64_t sub_226CE9490(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  v3[5] = swift_task_alloc();
  v4 = sub_226D67C0C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_226D6B9BC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CE95F4, 0, 0);
}

uint64_t sub_226CE95F4()
{
  v46 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[3];
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v12 = v0[9];
  v11 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v13 = 136315138;
    sub_226CEB100(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
    v14 = v6;
    v15 = sub_226D6F1CC();
    v17 = v16;
    v44 = *(v11 + 8);
    v44(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_226AC4530(v18, v17, &v45);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_226AB4000, v7, v8, "Validating account connection %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x22AA8BEE0](v43, -1, -1);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  else
  {

    v44 = *(v11 + 8);
    v44(v10, v12);
  }

  v21 = v0[6];
  v20 = v0[7];
  v22 = v0[5];
  sub_226CE9CA4(v0[3]);
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    v23 = v0[11];
    v24 = v0[9];
    v25 = v0[3];
    sub_226AC47B0(v0[5], &qword_27D7A6D50, &unk_226D75230);
    v6(v23, v25, v24);
    v26 = sub_226D6E05C();
    v27 = sub_226D6E9CC();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[11];
    v30 = v0[9];
    if (v28)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45 = v32;
      *v31 = 136315138;
      sub_226CEB100(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
      v33 = sub_226D6F1CC();
      v35 = v34;
      v44(v29, v30);
      v36 = sub_226AC4530(v33, v35, &v45);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_226AB4000, v26, v27, "Failed to find account with fqaid: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x22AA8BEE0](v32, -1, -1);
      MEMORY[0x22AA8BEE0](v31, -1, -1);
    }

    else
    {

      v44(v29, v30);
    }

    v41 = v0[2];
    type metadata accessor for BankConnectAccountConnectionValidationResult(0);
    *v41 = 0;
    v41[1] = 0;
    swift_storeEnumTagMultiPayload();

    v42 = v0[1];

    return v42();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    v37 = swift_task_alloc();
    v0[13] = v37;
    *v37 = v0;
    v37[1] = sub_226CE9AF4;
    v38 = v0[8];
    v39 = v0[2];

    return sub_226CE9EBC(v39, v38);
  }
}

uint64_t sub_226CE9AF4()
{

  return MEMORY[0x2822009F8](sub_226CE9BF0, 0, 0);
}

uint64_t sub_226CE9BF0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_226CEB148(*(v0 + 16), v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

void sub_226CE9CA4(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v2 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  sub_226D6EB8C();
}

uint64_t sub_226CE9EBC(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_226D6B66C();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = sub_226D6B9BC();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = type metadata accessor for AccountMatchResult(0);
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CEA018, 0, 0);
}

uint64_t sub_226CEA018()
{
  v21 = v0;
  v1 = v0[24];
  v2 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226AE532C((v2 + 16), (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 8))(&v20, v3, v4);
  v5 = v20;
  v0[34] = v20;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_226D67B5C();
  if (v6 && (v7 = sub_226D6E36C(), , v8 = [v5 passWithFPANIdentifier_], v0[35] = v8, v7, v8))
  {
    v9 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_226AE532C((v9 + 21), (v0 + 12));
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    if (qword_27D7A5EB8 != -1)
    {
      swift_once();
    }

    v10 = v0[23];
    sub_226AE5DE8(qword_27D7B61C0, byte_27D7B61C8, v0 + 7);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6208, &unk_226D7BDB0);
    v11 = sub_226D67C0C();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    v0[36] = v14;
    *(v14 + 16) = xmmword_226D70840;
    (*(v12 + 16))(v14 + v13, v10, v11);
    v15 = swift_task_alloc();
    v0[37] = v15;
    *v15 = v0;
    v15[1] = sub_226CEA34C;
    v16 = v0[33];

    return sub_226AE6274(v16, v8, v14);
  }

  else
  {
    v18 = v0[22];

    *v18 = xmmword_226D7BBD0;
    type metadata accessor for BankConnectAccountConnectionValidationResult(0);
    swift_storeEnumTagMultiPayload();

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_226CEA34C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_226CEA664;
  }

  else
  {
    v2 = sub_226CEA47C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CEA47C(uint64_t a1)
{
  v3 = v1[34];
  v2 = v1[35];
  v5 = v1[30];
  v4 = v1[31];
  v6 = v1[28];
  v7 = v1[29];
  sub_226D67B4C();
  sub_226D67B4C();
  LOBYTE(v4) = MEMORY[0x22AA87A30](v4, v5);

  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = v1[33];
  if (v4)
  {
    v10 = v1[32];
    v11 = v1[22];
    v8(v1[31], v1[28]);
    v12 = *(v10 + 20);
    v13 = sub_226D68CBC();
    (*(*(v13 - 8) + 16))(v11, v9 + v12, v13);
    sub_226CEC5C4(v9, type metadata accessor for AccountMatchResult);
  }

  else
  {
    v14 = v1[31];
    v15 = v1[28];
    v16 = v1[29];
    v17 = v1[22];
    sub_226CEC5C4(v1[33], type metadata accessor for AccountMatchResult);
    (*(v16 + 32))(v17, v14, v15);
  }

  type metadata accessor for BankConnectAccountConnectionValidationResult(0);
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 7);

  v18 = v1[1];

  return v18();
}

uint64_t sub_226CEA664()
{
  v1 = *(v0 + 304);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  *(v0 + 160) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 208) + 88))(*(v0 + 216), *(v0 + 200));
    if (v3 == *MEMORY[0x277CC7F88] || v3 == *MEMORY[0x277CC7F98])
    {
      v4 = *(v0 + 304);
      v5 = *(v0 + 272);

      type metadata accessor for BankConnectAccountConnectionValidationResult(0);
      swift_storeEnumTagMultiPayload();

      goto LABEL_7;
    }

    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  }

  v6 = *(v0 + 304);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  v9 = *(v0 + 176);

  swift_getErrorValue();
  v10 = sub_226D6F26C();
  v12 = v11;

  *v9 = v10;
  v9[1] = v12;
  type metadata accessor for BankConnectAccountConnectionValidationResult(0);
  swift_storeEnumTagMultiPayload();
LABEL_7:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_226CEA87C@<X0>(uint64_t a3@<X8>)
{
  sub_226D69F0C();
  result = sub_226D69D9C();
  if (!v3)
  {
    if (result)
    {
      sub_226D67C1C();
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = sub_226D67C0C();
    return (*(*(v7 - 8) + 56))(a3, v6, 1, v7);
  }

  return result;
}

uint64_t type metadata accessor for BankConnectAccountConnectionValidationResult(uint64_t a1)
{
  result = qword_27D7A9038;
  if (!qword_27D7A9038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226CEA9A4(uint64_t a1)
{
  result = sub_226D68CBC();
  if (v2 <= 0x3F)
  {
    result = sub_226D6B9BC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon43BankConnectAccountConnectionValidationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226CEAA38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_226CEAA8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_226CEAAE8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_226CEAB18(uint64_t a1, char *a2)
{
  v41 = a1;
  v42 = a2;
  v2 = sub_226D6B9BC();
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D68CBC();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BankConnectAccountConnectionValidationResult(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9048, &qword_226D7BD90);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - v18;
  v21 = (&v39 + *(v20 + 56) - v18);
  sub_226CEB09C(v41, &v39 - v18);
  sub_226CEB09C(v42, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v42 = v7;
    v23 = v4;
    v24 = v39;
    v25 = v40;
    if (EnumCaseMultiPayload)
    {
      sub_226CEB09C(v19, v13);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v25 + 8))(v13, v2);
        goto LABEL_20;
      }

      (*(v25 + 32))(v23, v21, v2);
      v30 = MEMORY[0x22AA87A30](v13, v23);
      v31 = *(v25 + 8);
      v31(v23, v2);
      v31(v13, v2);
    }

    else
    {
      sub_226CEB09C(v19, v16);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v24 + 8))(v16, v5);
        goto LABEL_20;
      }

      v32 = v42;
      (*(v24 + 32))(v42, v21, v5);
      sub_226CEB100(&qword_27D7A6570, MEMORY[0x277CC75E0], MEMORY[0x277CC75F0]);
      sub_226D6E53C();
      sub_226D6E53C();
      v33 = *(v24 + 8);
      v33(v32, v5);
      v30 = v44 == v43;
      v33(v16, v5);
    }

    sub_226CEC5C4(v19, type metadata accessor for BankConnectAccountConnectionValidationResult);
    return v30 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_15;
    }

LABEL_20:
    sub_226AC47B0(v19, &qword_27D7A9048, &qword_226D7BD90);
LABEL_21:
    v30 = 0;
    return v30 & 1;
  }

  sub_226CEB09C(v19, v10);
  v27 = *v10;
  v26 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_226B3E1C8(v27, v26);
    goto LABEL_20;
  }

  v28 = *v21;
  v29 = v21[1];
  if (!v26)
  {
    if (!v29)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  if (v26 == 1)
  {
    if (v29 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  if (v29 < 2)
  {
    sub_226B3E1C8(v28, v29);
    v28 = v27;
    v29 = v26;
LABEL_29:
    sub_226B3E1C8(v28, v29);
    goto LABEL_30;
  }

  if (v27 == v28 && v26 == v29)
  {
    sub_226B3E1C8(v27, v26);
    sub_226B3E1C8(v27, v26);
    goto LABEL_15;
  }

  v36 = *v21;
  v37 = v21[1];
  v38 = sub_226D6F21C();
  sub_226B3E1C8(v36, v37);
  sub_226B3E1C8(v27, v26);
  if ((v38 & 1) == 0)
  {
LABEL_30:
    sub_226CEC5C4(v19, type metadata accessor for BankConnectAccountConnectionValidationResult);
    goto LABEL_21;
  }

LABEL_15:
  sub_226CEC5C4(v19, type metadata accessor for BankConnectAccountConnectionValidationResult);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_226CEB09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAccountConnectionValidationResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CEB100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226CEB148(NSObject *a1, NSObject *a2)
{
  v179 = a1;
  v3 = sub_226D6B9BC();
  v4 = *(v3 - 8);
  v177 = v3;
  v178 = v4;
  MEMORY[0x28223BE20](v3);
  v174 = (&v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v168 - v7;
  MEMORY[0x28223BE20](v9);
  v176 = &v168 - v10;
  v182 = sub_226D67C0C();
  v180 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v171 = (&v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v170 = &v168 - v13;
  MEMORY[0x28223BE20](v14);
  v169 = &v168 - v15;
  MEMORY[0x28223BE20](v16);
  v173 = (&v168 - v17);
  MEMORY[0x28223BE20](v18);
  v172 = &v168 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v168 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v168 - v24;
  v26 = sub_226D68CBC();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v168 - v31;
  v33 = type metadata accessor for BankConnectAccountConnectionValidationResult(0);
  MEMORY[0x28223BE20](v33);
  v35 = (&v168 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = a2;
  v36 = sub_226D67B5C();
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  v175 = v38;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  sub_226CEB09C(v179, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v110 = v177;
      v111 = v178;
      (*(v178 + 32))(v8, v35, v177);
      v112 = v180;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v113 = sub_226D6E07C();
      __swift_project_value_buffer(v113, qword_28105F710);
      v114 = v22;
      v115 = v182;
      (*(v112 + 16))(v22, v181, v182);
      v116 = v174;
      (*(v111 + 16))(v174, v8, v110);
      v117 = v39;

      v118 = sub_226D6E05C();
      v119 = sub_226D6E9EC();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        v179 = v8;
        v121 = v120;
        v173 = swift_slowAlloc();
        v183 = v173;
        *v121 = 136315650;
        v181 = v117;
        v122 = v176;
        LODWORD(v172) = v119;
        sub_226D67B4C();
        sub_226CEB100(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v123 = sub_226D6F1CC();
        v125 = v124;
        v171 = v118;
        v178 = *(v111 + 8);
        (v178)(v122, v110);
        (*(v112 + 8))(v114, v182);
        v126 = sub_226AC4530(v123, v125, &v183);

        *(v121 + 4) = v126;
        v128 = v174;
        v127 = v175;
        *(v121 + 12) = 2080;
        v129 = sub_226AC4530(v127, v181, &v183);

        *(v121 + 14) = v129;
        *(v121 + 22) = 2080;
        v130 = sub_226D6F1CC();
        v132 = v131;
        v133 = v128;
        v134 = v178;
        (v178)(v133, v110);
        v135 = sub_226AC4530(v130, v132, &v183);

        *(v121 + 24) = v135;
        v136 = v171;
        _os_log_impl(&dword_226AB4000, v171, v172, "Failed to validate account (%s) and payment pass (%s) connection. The pass belongs to another account(%s).", v121, 0x20u);
        v137 = v173;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v137, -1, -1);
        MEMORY[0x22AA8BEE0](v121, -1, -1);

        v134(v179, v110);
      }

      else
      {

        v140 = *(v111 + 8);
        v140(v116, v110);
        (*(v112 + 8))(v114, v115);
        v140(v8, v110);
      }
    }

    else
    {
      v56 = v27;
      v57 = v27[4];
      v58 = v32;
      v179 = v26;
      v57(v32, v35, v26);
      v59 = v180;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v60 = sub_226D6E07C();
      __swift_project_value_buffer(v60, qword_28105F710);
      v61 = v25;
      (*(v59 + 16))(v25, v181, v182);
      v62 = v29;
      v56[2](v29, v32, v179);
      v63 = v39;

      v64 = sub_226D6E05C();
      v65 = sub_226D6E9EC();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v173 = v56;
        v67 = v66;
        v174 = swift_slowAlloc();
        v183 = v174;
        *v67 = 136315650;
        v181 = v58;
        v68 = v176;
        sub_226D67B4C();
        sub_226CEB100(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v69 = v61;
        v70 = v177;
        v71 = sub_226D6F1CC();
        LODWORD(v172) = v65;
        v72 = v62;
        v74 = v73;
        (*(v178 + 8))(v68, v70);
        (*(v59 + 8))(v69, v182);
        v75 = sub_226AC4530(v71, v74, &v183);

        *(v67 + 4) = v75;
        *(v67 + 12) = 2080;
        v76 = sub_226AC4530(v175, v63, &v183);

        *(v67 + 14) = v76;
        *(v67 + 22) = 2048;
        v77 = sub_226D68CAC();
        v78 = v179;
        v79 = v64;
        isa = v173[1].isa;
        isa(v72, v179);
        *(v67 + 24) = v77;
        _os_log_impl(&dword_226AB4000, v79, v172, "Successfully validated account (%s) and payment pass (%s) connection. Matching type: %ld.", v67, 0x20u);
        v81 = v174;
        swift_arrayDestroy();
        MEMORY[0x22AA8BEE0](v81, -1, -1);
        MEMORY[0x22AA8BEE0](v67, -1, -1);

        isa(v181, v78);
      }

      else
      {
        v138 = v56[1];
        v139 = v179;
        (v138)(v29, v179);

        (*(v59 + 8))(v61, v182);
        (v138)(v58, v139);
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v82 = v35[1];
    v83 = v180;
    v84 = v39;
    if (v82)
    {
      if (v82 == 1)
      {

        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v85 = sub_226D6E07C();
        __swift_project_value_buffer(v85, qword_28105F710);
        v86 = v170;
        v87 = v182;
        (*(v83 + 16))(v170, v181, v182);
        v88 = sub_226D6E05C();
        v89 = sub_226D6E9EC();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v183 = v181;
          *v90 = 136315138;
          v91 = v176;
          sub_226D67B4C();
          sub_226CEB100(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
          v92 = v177;
          v93 = sub_226D6F1CC();
          v95 = v94;
          (*(v178 + 8))(v91, v92);
          (*(v83 + 8))(v86, v87);
          v96 = sub_226AC4530(v93, v95, &v183);

          *(v90 + 4) = v96;
          _os_log_impl(&dword_226AB4000, v88, v89, "Failed to validate account (%s) connection. Account isn't connected to a payment pass.", v90, 0xCu);
          v97 = v181;
          __swift_destroy_boxed_opaque_existential_0Tm(v181);
          MEMORY[0x22AA8BEE0](v97, -1, -1);
          MEMORY[0x22AA8BEE0](v90, -1, -1);
        }

        else
        {

          (*(v83 + 8))(v86, v87);
        }
      }

      else
      {
        v151 = *v35;
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v152 = sub_226D6E07C();
        __swift_project_value_buffer(v152, qword_28105F710);
        v153 = v171;
        v154 = v182;
        (*(v83 + 16))(v171, v181, v182);

        sub_226B3E1B4(v151, v82);
        v155 = sub_226D6E05C();
        v156 = sub_226D6E9EC();

        sub_226B3E1C8(v151, v82);
        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v183 = v179;
          *v157 = 136315650;
          v181 = v84;
          v158 = v176;
          v174 = v155;
          sub_226D67B4C();
          sub_226CEB100(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
          v159 = v177;
          v160 = sub_226D6F1CC();
          LODWORD(v173) = v156;
          v161 = v153;
          v163 = v162;
          (*(v178 + 8))(v158, v159);
          (*(v83 + 8))(v161, v154);
          v164 = sub_226AC4530(v160, v163, &v183);

          *(v157 + 4) = v164;
          *(v157 + 12) = 2080;
          v165 = sub_226AC4530(v175, v181, &v183);

          *(v157 + 14) = v165;
          *(v157 + 22) = 2080;
          v166 = sub_226AC4530(v151, v82, &v183);
          sub_226B3E1C8(v151, v82);
          *(v157 + 24) = v166;
          v45 = v174;
          _os_log_impl(&dword_226AB4000, v174, v173, "Failed to validate account (%s) and payment pass (%s) connection with error: %s", v157, 0x20u);
          v167 = v179;
          swift_arrayDestroy();
          MEMORY[0x22AA8BEE0](v167, -1, -1);
          v109 = v157;
          goto LABEL_31;
        }

        sub_226B3E1C8(v151, v82);

        (*(v83 + 8))(v153, v154);
      }
    }

    else
    {

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v141 = sub_226D6E07C();
      __swift_project_value_buffer(v141, qword_28105F710);
      v142 = v169;
      v143 = v182;
      (*(v83 + 16))(v169, v181, v182);
      v45 = sub_226D6E05C();
      v144 = sub_226D6E9CC();
      if (os_log_type_enabled(v45, v144))
      {
        v47 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v183 = v181;
        *v47 = 136315138;
        v145 = v176;
        sub_226D67B4C();
        sub_226CEB100(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v146 = v177;
        v147 = sub_226D6F1CC();
        v149 = v148;
        (*(v178 + 8))(v145, v146);
        (*(v83 + 8))(v142, v143);
        v150 = sub_226AC4530(v147, v149, &v183);

        *(v47 + 4) = v150;
        _os_log_impl(&dword_226AB4000, v45, v144, "Failed to find account (%s)", v47, 0xCu);
        v108 = v181;
        __swift_destroy_boxed_opaque_existential_0Tm(v181);
        goto LABEL_30;
      }

      (*(v83 + 8))(v142, v143);
    }
  }

  else
  {
    v41 = v180;
    if (EnumCaseMultiPayload == 3)
    {
      v42 = v182;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v43 = sub_226D6E07C();
      __swift_project_value_buffer(v43, qword_28105F710);
      v44 = v172;
      (*(v41 + 16))(v172, v181, v42);

      v45 = sub_226D6E05C();
      v46 = sub_226D6E9EC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v183 = v179;
        *v47 = 136315394;
        v181 = v39;
        v48 = v176;
        sub_226D67B4C();
        sub_226CEB100(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v49 = v177;
        v50 = sub_226D6F1CC();
        v52 = v51;
        (*(v178 + 8))(v48, v49);
        (*(v41 + 8))(v44, v42);
        v53 = sub_226AC4530(v50, v52, &v183);

        *(v47 + 4) = v53;
        *(v47 + 12) = 2080;
        v54 = sub_226AC4530(v175, v181, &v183);

        *(v47 + 14) = v54;
        v55 = "Failed to validate account (%s) and payment pass (%s) connection. The pass belongs to another account.";
LABEL_29:
        _os_log_impl(&dword_226AB4000, v45, v46, v55, v47, 0x16u);
        v108 = v179;
        swift_arrayDestroy();
LABEL_30:
        MEMORY[0x22AA8BEE0](v108, -1, -1);
        v109 = v47;
LABEL_31:
        MEMORY[0x22AA8BEE0](v109, -1, -1);

        return;
      }

      (*(v41 + 8))(v44, v42);
    }

    else
    {
      v98 = v182;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v99 = sub_226D6E07C();
      __swift_project_value_buffer(v99, qword_28105F710);
      v100 = v173;
      (*(v41 + 16))(v173, v181, v98);

      v45 = sub_226D6E05C();
      v46 = sub_226D6E9EC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v183 = v179;
        *v47 = 136315394;
        v181 = v39;
        v101 = v176;
        sub_226D67B4C();
        sub_226CEB100(&qword_27D7A6E40, MEMORY[0x277CC8058], MEMORY[0x277CC8080]);
        v102 = v177;
        v103 = sub_226D6F1CC();
        v105 = v104;
        (*(v178 + 8))(v101, v102);
        (*(v41 + 8))(v100, v98);
        v106 = sub_226AC4530(v103, v105, &v183);

        *(v47 + 4) = v106;
        *(v47 + 12) = 2080;
        v107 = sub_226AC4530(v175, v181, &v183);

        *(v47 + 14) = v107;
        v55 = "Failed to validate account (%s) and payment pass (%s) connection. The types of the account and payment pass don't match.";
        goto LABEL_29;
      }

      (*(v41 + 8))(v100, v98);
    }
  }
}

uint64_t sub_226CEC5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226CEC640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (**a7)(char *, void, void)@<X6>, uint64_t a8@<X8>)
{
  v116 = a6;
  v110 = a7;
  v115 = a5;
  v113 = a4;
  v103 = a8;
  v133 = *MEMORY[0x277D85DE8];
  v93 = sub_226D6B55C();
  v104 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v102 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = &v93 - v13;
  v14 = sub_226D6B49C();
  MEMORY[0x28223BE20](v14 - 8);
  v100 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  MEMORY[0x28223BE20](v96);
  v95 = (&v93 - v16);
  v17 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  MEMORY[0x28223BE20](v17 - 8);
  v94 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_226D6D1AC();
  v19 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v99 = (&v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v97 = (&v93 - v24);
  MEMORY[0x28223BE20](v25);
  v105 = (&v93 - v26);
  MEMORY[0x28223BE20](v27);
  v112 = &v93 - v28;
  v29 = sub_226D6ACCC();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v30 + 16);
  v98 = a1;
  v34(v33, a1, v29, v31);
  v109 = sub_226D6AC9C();
  v108 = sub_226D6ACAC();
  v107 = sub_226D6AC7C();
  v106 = sub_226D6AC8C();
  (*(v30 + 8))(v33, v29);
  v35 = type metadata accessor for ManagedOrderImporter();
  sub_226AC40E8(a2, v132, &qword_27D7A6910, &unk_226D721C0);
  sub_226AE532C(a3, v129);
  sub_226AC40E8(v113, v128, &qword_27D7A7790, &unk_226D79770);
  v125 = &type metadata for ClassicOrderBiomeStream;
  v126 = &off_283A6D820;
  sub_226C02324(&v127);
  v36 = sub_226D6B5EC();
  v37 = MEMORY[0x277CC7F68];
  v122 = v36;
  v123 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(&v121);
  sub_226D6B58C();
  v119 = v36;
  v120 = v37;
  __swift_allocate_boxed_opaque_existential_1(&v118);
  sub_226D6B5AC();
  v38 = sub_226D6827C();
  v39 = v130;
  v40 = v131;
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v129, v130);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v93 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44, v42);
  v46 = sub_226BBF0BC(&v121, &v118, v38, MEMORY[0x277CC7238], v132, v44, v128, &v124, v35, v39, v40);
  __swift_destroy_boxed_opaque_existential_0Tm(v129);
  sub_226D6727C();
  v47 = [objc_opt_self() defaultManager];
  v48 = [v47 temporaryDirectory];

  sub_226D6D14C();
  v125 = sub_226D6920C();
  v126 = MEMORY[0x277CC77F0];
  __swift_allocate_boxed_opaque_existential_1(&v124);
  sub_226D691FC();
  v49 = v115;
  v50 = v116;
  v51 = v117;
  v52 = sub_226D6724C();
  if (v51)
  {

    (*(v19 + 8))(v21, v114);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v124);
  }

  v54 = v52;
  (*(v19 + 8))(v21, v114);
  v55 = __swift_destroy_boxed_opaque_existential_0Tm(&v124);
  MEMORY[0x28223BE20](v55);
  *(&v93 - 6) = v46;
  *(&v93 - 5) = v54;
  v86 = v49;
  v87 = v50;
  v88 = v109 & 1;
  v89 = v108 & 1;
  v90 = v107 & 1;
  v91 = v106 & 1;
  v56 = v110;
  v92 = v110;
  v57 = v112;
  sub_226D6721C();

  v58 = v57;
  v59 = v105;
  sub_226CA934C(v58, v105, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  v60 = v56;
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    sub_226BB3720(v59, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  }

  else
  {
    v61 = *v59;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    sub_226CED1E8(v59 + *(v62 + 48));
    v63 = [v61 updateSequenceNumber];
    if (__OFADD__(v63, 1))
    {
      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_9;
    }

    [v61 setUpdateSequenceNumber_];
    [v61 setRequestAttemptCount_];
    [v61 setLastRequestAttemptDate_];
  }

  v56 = v104;
  *&v124 = 0;
  if (![v60 save_])
  {
    v73 = v124;
    sub_226D6D04C();

    swift_willThrow();

    return sub_226BB3720(v112, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  }

  v49 = v46;
  v64 = qword_281061980;
  v65 = v124;
  if (v64 != -1)
  {
    goto LABEL_23;
  }

LABEL_9:
  v66 = v96;
  v67 = __swift_project_value_buffer(v96, qword_281064538);
  v68 = v95;
  sub_226AE532C(v67, v95);
  sub_226CA934C(v67 + *(v66 + 48), v68 + *(v66 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
  v69 = v94;
  sub_226BB36BC(v68 + *(v66 + 48), v94);
  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  v70 = v112;
  sub_226BE7E54(v112, v69);
  sub_226BB3720(v69, type metadata accessor for OrderNotificationCenter.Continuation);
  if (sub_226D6ACBC())
  {
    type metadata accessor for OrderImportAnalyticsEventsBuilder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 3;
    v72 = sub_226BB3780(v70);
  }

  else
  {
    v72 = MEMORY[0x277D84F90];
  }

  v74 = v70;
  v75 = v97;
  sub_226CA934C(v74, v97, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v77 = *v75;
  v117 = v49;
  if (EnumCaseMultiPayload <= 1)
  {
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    sub_226CED1E8(v75 + *(v78 + 48));
  }

  sub_226D6740C();

  v79 = v99;
  sub_226CA934C(v112, v99, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  v80 = swift_getEnumCaseMultiPayload();
  v81 = v93;
  if (v80)
  {
    if (v80 != 1)
    {
      sub_226BB3720(v79, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      v84 = v102;
      v56[13](v102, *MEMORY[0x277CC7F48], v81);
      goto LABEL_21;
    }

    v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580) + 48);
    v83 = MEMORY[0x277CC7F50];
  }

  else
  {

    v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580) + 48);
    v83 = MEMORY[0x277CC7F58];
  }

  v84 = v102;
  v56[13](v102, *v83, v81);
  sub_226CED1E8(v79 + v82);
LABEL_21:
  v85 = v103;
  (v56)[4](v101, v84, v81);
  sub_226D6A75C();

  sub_226BB3720(v112, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8FC0, &qword_226D7BAB8);
  *(v85 + *(result + 48)) = v72;
  return result;
}

uint64_t sub_226CED1E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226CED2B8(uint64_t a1)
{
  v62 = _s8MetadataV9CloudItemV6ObjectVMa_0(0);
  v3 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8148, &qword_226D77DE8);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = v55 - v8;
  MEMORY[0x28223BE20](v9);
  v63 = v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C40, &qword_226D72C08);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8150, &unk_226D77DF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v55 - v15);
  v64 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = v17[3] >> 1, v20 <= v18))
  {
    v17 = sub_226BBB658(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v17);
    v20 = v17[3] >> 1;
  }

  v21 = v17[2];
  v22 = v3;
  v23 = *(v3 + 72);
  v24 = v20 - v21;
  v58 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v60 = v23;
  v25 = v17 + v58 + v23 * v21;
  v26 = &qword_27D7A6C40;
  sub_226AC40E8(a1, v13, &qword_27D7A6C40, &qword_226D72C08);
  v27 = sub_226C3ACD0(v16, v25, v24);
  sub_226AC47B0(a1, &qword_27D7A6C40, &qword_226D72C08);
  if (v27 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v28 = v17[2];
  v26 = (v28 + v27);
  if (__OFADD__(v28, v27))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17[2] = v26;
  if (v27 != v24)
  {
    v29 = &qword_27D7A8150;
    v30 = &unk_226D77DF0;
    v31 = v16;
    goto LABEL_8;
  }

LABEL_11:
  v33 = v63;
  sub_226AFD80C(v16, v63, &qword_27D7A8148, &qword_226D77DE8);
  v34 = v22;
  v35 = v22 + 56;
  v36 = *(v22 + 56);
  v37 = v62;
  v55[0] = v36;
  v55[1] = v35;
  v36(v16, 1, 1, v62);
  v38 = v59;
  sub_226AC40E8(v33, v59, &qword_27D7A8148, &qword_226D77DE8);
  v40 = *(v34 + 48);
  v39 = v34 + 48;
  v56 = v40;
  if (v40(v38, 1, v37) != 1)
  {
    v41 = v57;
    v55[2] = v39;
    do
    {
      sub_226AC47B0(v38, &qword_27D7A8148, &qword_226D77DE8);
      v42 = v17[3];
      v43 = v42 >> 1;
      if ((v42 >> 1) < v26 + 1)
      {
        v17 = sub_226BBB658((v42 > 1), v26 + 1, 1, v17);
        v43 = v17[3] >> 1;
      }

      v44 = v61;
      sub_226AC40E8(v63, v61, &qword_27D7A8148, &qword_226D77DE8);
      if (v56(v44, 1, v62) == 1)
      {
        v45 = v61;
LABEL_26:
        sub_226AC47B0(v45, &qword_27D7A8148, &qword_226D77DE8);
        v46 = v26;
      }

      else
      {
        if (v26 <= v43)
        {
          v46 = v43;
        }

        else
        {
          v46 = v26;
        }

        v45 = v61;
        v47 = v17 + v58 + v60 * v26;
        while (1)
        {
          sub_226CF055C(v45, v41, _s8MetadataV9CloudItemV6ObjectVMa_0);
          if (v46 == v26)
          {
            break;
          }

          v48 = v63;
          sub_226AC47B0(v63, &qword_27D7A8148, &qword_226D77DE8);
          sub_226CF055C(v41, v47, _s8MetadataV9CloudItemV6ObjectVMa_0);
          v26 = (v26 + 1);
          sub_226AFD80C(v16, v48, &qword_27D7A8148, &qword_226D77DE8);
          v49 = v46;
          v50 = v41;
          v51 = v62;
          (v55[0])(v16, 1, 1, v62);
          v52 = v48;
          v45 = v61;
          sub_226AC40E8(v52, v61, &qword_27D7A8148, &qword_226D77DE8);
          v53 = v51;
          v41 = v50;
          v46 = v49;
          v54 = v56(v45, 1, v53);
          v47 += v60;
          if (v54 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_226CF05C4(v41, _s8MetadataV9CloudItemV6ObjectVMa_0);
        v26 = v46;
      }

      v17[2] = v46;
      v38 = v59;
      sub_226AC40E8(v63, v59, &qword_27D7A8148, &qword_226D77DE8);
    }

    while (v56(v38, 1, v62) != 1);
  }

  sub_226AC47B0(v63, &qword_27D7A8148, &qword_226D77DE8);
  sub_226AC47B0(v16, &qword_27D7A8150, &unk_226D77DF0);
  v31 = v38;
  v29 = &qword_27D7A8148;
  v30 = &qword_226D77DE8;
LABEL_8:
  result = sub_226AC47B0(v31, v29, v30);
  *v64 = v17;
  return result;
}

uint64_t sub_226CED91C(uint64_t a1)
{
  v62 = _s8MetadataV9CloudItemV6ObjectVMa_2(0);
  v3 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8170, &qword_226D77E28);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = v55 - v8;
  MEMORY[0x28223BE20](v9);
  v63 = v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A9090, &qword_226D7D610);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8178, &qword_226D77E30);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v55 - v15);
  v64 = v1;
  v17 = *v1;
  v18 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v20 = v17[3] >> 1, v20 <= v18))
  {
    v17 = sub_226BBB71C(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v17);
    v20 = v17[3] >> 1;
  }

  v21 = v17[2];
  v22 = v3;
  v23 = *(v3 + 72);
  v24 = v20 - v21;
  v58 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v60 = v23;
  v25 = v17 + v58 + v23 * v21;
  v26 = &qword_27D7A9090;
  sub_226AC40E8(a1, v13, &qword_27D7A9090, &qword_226D7D610);
  v27 = sub_226C3B000(v16, v25, v24);
  sub_226AC47B0(a1, &qword_27D7A9090, &qword_226D7D610);
  if (v27 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v28 = v17[2];
  v26 = (v28 + v27);
  if (__OFADD__(v28, v27))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17[2] = v26;
  if (v27 != v24)
  {
    v29 = &qword_27D7A8178;
    v30 = &qword_226D77E30;
    v31 = v16;
    goto LABEL_8;
  }

LABEL_11:
  v33 = v63;
  sub_226AFD80C(v16, v63, &qword_27D7A8170, &qword_226D77E28);
  v34 = v22;
  v35 = v22 + 56;
  v36 = *(v22 + 56);
  v37 = v62;
  v55[0] = v36;
  v55[1] = v35;
  v36(v16, 1, 1, v62);
  v38 = v59;
  sub_226AC40E8(v33, v59, &qword_27D7A8170, &qword_226D77E28);
  v40 = *(v34 + 48);
  v39 = v34 + 48;
  v56 = v40;
  if (v40(v38, 1, v37) != 1)
  {
    v41 = v57;
    v55[2] = v39;
    do
    {
      sub_226AC47B0(v38, &qword_27D7A8170, &qword_226D77E28);
      v42 = v17[3];
      v43 = v42 >> 1;
      if ((v42 >> 1) < v26 + 1)
      {
        v17 = sub_226BBB71C((v42 > 1), v26 + 1, 1, v17);
        v43 = v17[3] >> 1;
      }

      v44 = v61;
      sub_226AC40E8(v63, v61, &qword_27D7A8170, &qword_226D77E28);
      if (v56(v44, 1, v62) == 1)
      {
        v45 = v61;
LABEL_26:
        sub_226AC47B0(v45, &qword_27D7A8170, &qword_226D77E28);
        v46 = v26;
      }

      else
      {
        if (v26 <= v43)
        {
          v46 = v43;
        }

        else
        {
          v46 = v26;
        }

        v45 = v61;
        v47 = v17 + v58 + v60 * v26;
        while (1)
        {
          sub_226CF055C(v45, v41, _s8MetadataV9CloudItemV6ObjectVMa_2);
          if (v46 == v26)
          {
            break;
          }

          v48 = v63;
          sub_226AC47B0(v63, &qword_27D7A8170, &qword_226D77E28);
          sub_226CF055C(v41, v47, _s8MetadataV9CloudItemV6ObjectVMa_2);
          v26 = (v26 + 1);
          sub_226AFD80C(v16, v48, &qword_27D7A8170, &qword_226D77E28);
          v49 = v46;
          v50 = v41;
          v51 = v62;
          (v55[0])(v16, 1, 1, v62);
          v52 = v48;
          v45 = v61;
          sub_226AC40E8(v52, v61, &qword_27D7A8170, &qword_226D77E28);
          v53 = v51;
          v41 = v50;
          v46 = v49;
          v54 = v56(v45, 1, v53);
          v47 += v60;
          if (v54 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_226CF05C4(v41, _s8MetadataV9CloudItemV6ObjectVMa_2);
        v26 = v46;
      }

      v17[2] = v46;
      v38 = v59;
      sub_226AC40E8(v63, v59, &qword_27D7A8170, &qword_226D77E28);
    }

    while (v56(v38, 1, v62) != 1);
  }

  sub_226AC47B0(v63, &qword_27D7A8170, &qword_226D77E28);
  sub_226AC47B0(v16, &qword_27D7A8178, &qword_226D77E30);
  v31 = v38;
  v29 = &qword_27D7A8170;
  v30 = &qword_226D77E28;
LABEL_8:
  result = sub_226AC47B0(v31, v29, v30);
  *v64 = v17;
  return result;
}

uint64_t sub_226CEDFA8(uint64_t result, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v8 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v8 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, v4);
  v11 = v9 + v4;
  if (!v10)
  {
    *(v5 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_226CEE1B8(unint64_t a1, void (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_226D6EDFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_226D6EDFC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_226CEFCAC(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_226CEE2B0(uint64_t result)
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

  result = sub_226BBBBA0(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_226CEE3C4(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
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

uint64_t sub_226CEE510(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t BankConnectServiceImplementation.connectAccounts(primaryAccountIdentifier:primaryPassAccountFQAI:institution:shouldConnectSecondaryAccounts:ignoreConnectedAccounts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 257) = a7;
  *(v8 + 256) = a6;
  *(v8 + 96) = a5;
  *(v8 + 104) = v7;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
  v9 = sub_226D6B66C();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();
  v10 = sub_226D67C0C();
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v10 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v11 = sub_226D6764C();
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 - 8);
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CEE7E8, 0, 0);
}

uint64_t sub_226CEE7E8()
{
  v29 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  sub_226D1F120((v0 + 16));
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  (*(v2 + 104))(v1, *MEMORY[0x277CC6D38], v3);
  v5 = *v4;
  *(v0 + 192) = *v4;
  v6 = v5[16];
  v7 = v5[17];
  __swift_project_boxed_opaque_existential_1(v5 + 13, v6);
  (*(v7 + 8))(v28, v6, v7);
  v8 = v28[0];
  v9 = sub_226D6E36C();
  v10 = [v8 passWithFPANIdentifier_];
  *(v0 + 200) = v10;

  if (v10)
  {
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_226CEEB90;
    v12 = *(v0 + 184);
    v13 = *(v0 + 152);
    v14 = *(v0 + 257);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);

    return sub_226D10190(v13, v10, v15, v16, v14, v12);
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v18 = sub_226D6E07C();
    __swift_project_value_buffer(v18, qword_28105F710);

    v19 = sub_226D6E05C();
    v20 = sub_226D6E9CC();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 72);
      v21 = *(v0 + 80);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_226AC4530(v22, v21, v28);
      _os_log_impl(&dword_226AB4000, v19, v20, "Cannot find a pass with %s to link an account.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
      MEMORY[0x22AA8BEE0](v23, -1, -1);
    }

    v25 = sub_226D6C63C();
    sub_226B9E270();
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277CC82C0], v25);
    swift_willThrow();
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v27 = *(v0 + 8);

    return v27();
  }
}