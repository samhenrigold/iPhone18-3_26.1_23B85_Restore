uint64_t sub_25275A0A0()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  sub_2527213D8(v0[61], &qword_27F4FCDB8, &unk_2528C5CC0);
  v6 = *(v4 + 8);
  v6(v2, v3);
  sub_2527213D8(v5, &qword_27F4FCDB8, &unk_2528C5CC0);
  v6(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25275A2E0()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  sub_2527213D8(v0[61], &qword_27F4FCDB8, &unk_2528C5CC0);
  v6 = *(v4 + 8);
  v6(v2, v3);
  sub_2527213D8(v5, &qword_27F4FCDB8, &unk_2528C5CC0);
  v6(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25275A520(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v3[5] = swift_task_alloc();
  v4 = sub_2528BF400();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275A61C, 0, 0);
}

uint64_t sub_25275A61C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  (*(v0[7] + 16))(v1, v5, v0[6]);
  sub_25272006C(v3, v2, &qword_27F4FCDB8, &unk_2528C5CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = v4;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = v5;
  v6[6] = v3;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_25275A778;

  return MEMORY[0x282200740]();
}

uint64_t sub_25275A778()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_25275A940;
  }

  else
  {

    v2 = sub_25275A894;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25275A894()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_2527213D8(v0[5], &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25275A940()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  sub_2527213D8(v4, &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25275A9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v8 = sub_2528C00D0();
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v7[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE50, &qword_2528C6208);
  v7[29] = v9;
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8);
  v7[32] = v10;
  v7[33] = *(v10 + 64);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v11 = sub_2528BF400();
  v7[36] = v11;
  v12 = *(v11 - 8);
  v7[37] = v12;
  v7[38] = *(v12 + 64);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v7[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275AC7C, 0, 0);
}

uint64_t sub_25275AC7C()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[37];
  v18 = v1;
  v19 = v0[36];
  v23 = v0[35];
  v24 = v0[32];
  v4 = v0[21];
  v5 = v0[20];
  v22 = v0[22];
  v21 = sub_2528C0C40();
  v20 = *(*(v21 - 8) + 56);
  v20(v2, 1, 1, v21);
  (*(v3 + 16))(v1, v4, v19);
  v6 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = *v5;
  v9 = v5[2];
  *(v7 + 48) = v5[1];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  v10 = *(v3 + 32);
  v0[42] = v10;
  v0[43] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v7 + v6, v18, v19);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_25275BDD4(v2, &unk_2528C6218, v7);
  sub_2527213D8(v2, &qword_27F4FCDA0, &unk_2528C6AC0);
  v20(v2, 1, 1, v21);
  sub_25272006C(v22, v23, &qword_27F4FCDB8, &unk_2528C5CC0);
  v11 = (*(v24 + 80) + 80) & ~*(v24 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = *v5;
  v14 = v5[2];
  *(v12 + 48) = v5[1];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  sub_25274AA0C(v23, v12 + v11, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_25275BDD4(v2, &unk_2528C6228, v12);
  sub_2527213D8(v2, &qword_27F4FCDA0, &unk_2528C6AC0);
  v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  sub_2528C0C50();
  v15 = swift_task_alloc();
  v0[45] = v15;
  *v15 = v0;
  v15[1] = sub_25275B034;
  v16 = v0[29];

  return MEMORY[0x2822004E8](v0 + 2, 0, 0, v16, v0 + 18);
}

uint64_t sub_25275B034()
{

  if (v0)
  {
    v1 = sub_25275B498;
  }

  else
  {
    v1 = sub_25275B144;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25275B144()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 296);
    sub_25272C298((v0 + 16), (v0 + 48));
    sub_25272BF98(v0 + 48, v0 + 80);
    v2 = swift_dynamicCast();
    v3 = *(v1 + 56);
    if (v2)
    {
      v4 = *(v0 + 336);
      v5 = *(v0 + 312);
      v6 = *(v0 + 288);
      v7 = *(v0 + 296);
      v8 = *(v0 + 224);
      v9 = *(v0 + 184);
      v3(v8, 0, 1, v6);
      v4(v5, v8, v6);
      (*(v7 + 40))(v9, v5, v6);
    }

    else
    {
      v12 = *(v0 + 224);
      v3(v12, 1, 1, *(v0 + 288));
      sub_2527213D8(v12, &qword_27F4FCD98, &qword_2528C6200);
    }

    v13 = *(v0 + 208);
    sub_25272C298((v0 + 48), (v0 + 112));
    v14 = swift_dynamicCast();
    v15 = *(v13 + 56);
    v16 = *(v0 + 272);
    if (v14)
    {
      v18 = *(v0 + 208);
      v17 = *(v0 + 216);
      v20 = *(v0 + 192);
      v19 = *(v0 + 200);
      v15(*(v0 + 272), 0, 1, v19);
      v21 = *(v18 + 32);
      v21(v17, v16, v19);
      sub_2527213D8(v20, &qword_27F4FCDB8, &unk_2528C5CC0);
      v21(v20, v17, v19);
      v15(v20, 0, 1, v19);
    }

    else
    {
      v15(*(v0 + 272), 1, 1, *(v0 + 200));
      sub_2527213D8(v16, &qword_27F4FCDB8, &unk_2528C5CC0);
    }

    v22 = swift_task_alloc();
    *(v0 + 360) = v22;
    *v22 = v0;
    v22[1] = sub_25275B034;
    v23 = *(v0 + 232);

    return MEMORY[0x2822004E8](v0 + 16, 0, 0, v23, v0 + 144);
  }

  else
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_25275B498()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25275B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25275B5A4, 0, 0);
}

uint64_t sub_25275B5A4()
{
  v1 = v0[2];
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_25275B664;
  v4 = v0[4];

  return sub_25275B798(boxed_opaque_existential_0Tm, v4);
}

uint64_t sub_25275B664()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252760E64, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25275B798(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2528BEE30();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275B85C, 0, 0);
}

uint64_t sub_25275B85C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_2528BE790();
  v3 = v0[2];
  v4 = sub_25278D334(MEMORY[0x277D84F90]);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = sub_2527F2ADC(v4, sub_252760C64, v5, v3);
  v0[9] = v6;

  if (*(v6 + 16))
  {
    sub_2528BF2F0();
    sub_2528BEFC0();
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_25275BA20;

    return MEMORY[0x28216EA40]();
  }

  else
  {
    v8 = v0[3];
    v9 = sub_2528BF400();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_25275BA20(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[11] = a1;

  v4 = swift_task_alloc();
  v2[12] = v4;
  *v4 = v3;
  v4[1] = sub_25275BBA4;
  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[3];

  return MEMORY[0x28216EA10](v7, v6, v5, 0, 1, 0);
}

uint64_t sub_25275BBA4()
{
  v2 = *v1;
  v3 = *v1;
  v2[13] = v0;

  v4 = v2[11];
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25275BD54, 0, 0);
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25275BD54()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25275BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_25272006C(a1, v18 - v8, &qword_27F4FCDA0, &unk_2528C6AC0);
  v10 = sub_2528C0C40();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2527213D8(v9, &qword_27F4FCDA0, &unk_2528C6AC0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_2528C0BD0();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2528C0C30();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC228, &qword_2528D4320);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_25275BFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25275BFF4, 0, 0);
}

uint64_t sub_25275BFF4()
{
  v1 = v0[2];
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_25275C0B4;
  v4 = v0[4];

  return sub_25275C24C(boxed_opaque_existential_0Tm, v4);
}

uint64_t sub_25275C0B4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25275C1E8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25275C1E8()
{
  __swift_deallocate_boxed_opaque_existential_0(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25275C24C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for DeviceEntity(0);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_2528BECF0();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v3[20] = swift_task_alloc();
  v6 = sub_2528C0060();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v3[24] = swift_task_alloc();
  v7 = sub_2528C00D0();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275C4CC, 0, 0);
}

uint64_t sub_25275C4CC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  sub_25272006C(v0[11], v3, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[25];
    v5 = v0[26];
    v6 = v0[10];
    sub_2527213D8(v0[24], &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v5 + 56))(v6, 1, 1, v4);

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
    v0[28] = sub_2528BEFC0();
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_25275C6A0;

    return MEMORY[0x28216EA40]();
  }
}

uint64_t sub_25275C6A0(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_25275C7A0, 0, 0);
}

uint64_t sub_25275C7A0()
{
  *(v0 + 248) = sub_2528C0C20();
  *(v0 + 256) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25275C838, v2, v1);
}

uint64_t sub_25275C838()
{
  v1 = *(v0 + 240);

  *(v0 + 264) = [v1 sortedHomes];

  return MEMORY[0x2822009F8](sub_25275C8C4, 0, 0);
}

uint64_t sub_25275C8C4()
{
  v1 = v0[33];
  v2 = v0[27];
  sub_252760B90();
  v3 = sub_2528C0B30();

  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_2527AAE00(sub_252760BDC, v4, v3);
  v0[34] = v5;

  if (v5)
  {
    v6 = v0[27];
    sub_2528BE790();
    v7 = v0[8];
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    v9 = sub_25275D4B4(MEMORY[0x277D84FA0], sub_252760BFC, v8, v7);
    v0[35] = v9;

    if (*(v9 + 16))
    {
      v0[36] = sub_2528C0C10();
      v11 = sub_2528C0BD0();

      return MEMORY[0x2822009F8](sub_25275CB6C, v11, v10);
    }

    v16 = v0[26];
    v15 = v0[27];
    v17 = v0[25];
    (*(v16 + 56))(v0[10], 1, 1, v17);

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    v13 = v0[26];
    v12 = v0[27];
    v14 = v0[25];
    (*(v13 + 56))(v0[10], 1, 1, v14);
    (*(v13 + 8))(v12, v14);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_25275CB6C()
{

  *(v0 + 296) = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_25275CBE0, 0, 0);
}

uint64_t sub_25275CBE0()
{
  v1 = v0[34];
  v3 = v0[22];
  v2 = v0[23];
  *v2 = v0[35];
  v2[1] = v1;
  (*(v3 + 104))();
  v4 = v1;
  sub_2528BE790();
  v5 = v0[9];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v0[18];
    v8 = v0[15];
    v33 = MEMORY[0x277D84F90];
    sub_25282EFDC(0, v6, 0);
    v9 = v33;
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v32 = *(v8 + 72);
    v11 = (v7 + 32);
    while (1)
    {
      v12 = v0[17];
      v13 = v0[13];
      sub_2527606B0(v10, v0[16], type metadata accessor for DeviceEntity);
      sub_2528BE6B0();
      sub_2528BECA0();

      v14 = (*(v7 + 48))(v13, 1, v12);
      v15 = v0[16];
      if (v14 == 1)
      {
        break;
      }

      v16 = *v11;
      (*v11)(v0[19], v0[13], v0[17]);
      sub_252760650(v15, type metadata accessor for DeviceEntity);
      v18 = *(v33 + 16);
      v17 = *(v33 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_25282EFDC((v17 > 1), v18 + 1, 1);
      }

      v19 = v0[19];
      v20 = v0[17];
      *(v33 + 16) = v18 + 1;
      v16(v33 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v19, v20);
      v10 += v32;
      if (!--v6)
      {

        goto LABEL_10;
      }
    }

    sub_2527213D8(v0[13], &qword_27F4FC628, &qword_2528C4750);
    sub_2528C0E70();
    v0[4] = 0;
    v0[5] = 0xE000000000000000;
    MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
    sub_2528C0ED0();
    MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
    sub_2528BE6B0();
    MEMORY[0x2530A80B0](v0[6], v0[7]);

    MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
    return sub_2528C0EE0();
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
LABEL_10:
    v22 = v0[34];
    v23 = v0[20];
    v24 = sub_252743D54(v9);

    *v23 = v24;
    v25 = *MEMORY[0x277D16518];
    v26 = sub_2528C00B0();
    v27 = *(v26 - 8);
    (*(v27 + 104))(v23, v25, v26);
    (*(v27 + 56))(v23, 0, 1, v26);
    v28 = swift_task_alloc();
    v0[38] = v28;
    *v28 = v0;
    v28[1] = sub_25275D048;
    v29 = v0[23];
    v30 = v0[20];
    v31 = v0[10];

    return MEMORY[0x282170970](v31, v29, v22, v30);
  }
}

uint64_t sub_25275D048()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);

  sub_2527213D8(v4, &qword_27F4FC478, &unk_2528C3F70);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_25275D1F0, 0, 0);
}

uint64_t sub_25275D1F0()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 80);

  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25275D2F4(id *a1)
{
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = [*a1 uniqueIdentifier];
  sub_2528BECD0();

  sub_2528C00C0();
  v10 = sub_2528BECC0();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v8, v2);
  return v10 & 1;
}

uint64_t sub_25275D444@<X0>(uint64_t *a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = *a1;

  sub_25284C9B4();
  result = sub_25281A1D8(v6, v5);
  *a4 = result;
  return result;
}

uint64_t sub_25275D4B4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *, double), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a1;
  v23 = a1;
  v9 = *(a4 + 16);

  if (v9)
  {
    v10 = (a4 + 64);
    while (1)
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *(v10 - 3);
      v14 = *v10;
      v18 = *(v10 - 4);
      v19 = v13;
      v20 = v11;
      v21 = v12;
      v22 = v14;
      v15 = sub_252760C18(v18, v13, v11, v12, v14);
      a2(&v17, &v23, &v18, v15);
      if (v5)
      {
        break;
      }

      v10 += 40;
      sub_25272C15C(v18, v19, v20, v21, v22);

      v8 = v17;
      v23 = v17;
      if (!--v9)
      {
        return v8;
      }
    }

    sub_25272C15C(v18, v19, v20, v21, v22);
  }

  return v8;
}

uint64_t sub_25275D59C(uint64_t *a1, uint64_t a2, void (**a3)(unint64_t, uint64_t), uint64_t a4)
{
  v33[1] = a4;
  v36 = a1;
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2528BF9D0();
  v37 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (v33 - v14);
  v35 = a3;
  v16 = sub_2528BF370();
  v34 = a2;
  sub_252819FA8(v9);
  if (*(v16 + 16) && (v17 = sub_252785C40(v9), (v18 & 1) != 0))
  {
    v19 = v37;
    (*(v37 + 16))(v13, *(v16 + 56) + *(v37 + 72) * v17, v10);
    (*(v7 + 8))(v9, v6);

    (*(v19 + 32))(v15, v13, v10);
    v20 = sub_2528BE790();
    v21 = v40;
    MEMORY[0x28223BE20](v20);
    v33[-2] = v34;
    v22 = v38;
    sub_2528534E8(sub_252760C80, &v33[-4], v21);
    v24 = v23;

    v25 = sub_252744064(v24);

    if (*(v25 + 16))
    {
      v26 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = *v26;
      sub_25278BA60(v25, v15, isUniquelyReferenced_nonNull_native);
      v28 = v40;
      *v26 = v40;
    }

    else
    {

      v26 = v36;
      v28 = *v36;
    }

    sub_2528BE6B0();
    v39 = v40;
    v30 = sub_2527E6564(&v39, v15, v35);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v40 = v28;
    sub_25275F614(v30, sub_25275F560, 0, v31, &v40);
    if (v22)
    {

      __break(1u);
    }

    else
    {

      v32 = v40;
      result = (*(v37 + 8))(v15, v10);
      *v26 = v32;
    }
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void *sub_25275D958@<X0>(uint64_t *a1@<X8>)
{
  sub_2528BE6B0();
  v3[0] = v3[1];
  result = sub_2527E5624(v3);
  *a1 = result;
  return result;
}

uint64_t sub_25275D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2822009F8](sub_25275D9E4, 0, 0);
}

uint64_t sub_25275D9E4()
{
  v5 = *(v0 + 24);
  sub_2528BE790();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v2 + 16) = v5;
  sub_2527E5018(sub_252760C9C, v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25275DAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DeviceEntity(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v10;
  v21 = *(a1 + 32);
  sub_2528BE790();
  v11 = v22;
  v22 = MEMORY[0x277D84FA0];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    do
    {
      sub_2527606B0(v13, v9, type metadata accessor for DeviceEntity);
      sub_2528BE6B0();
      sub_25273A214(&v19, v18[6]);
      sub_252760650(v9, type metadata accessor for DeviceEntity);
      v13 += v14;
      --v12;
    }

    while (v12);

    v16 = v22;
  }

  else
  {

    v16 = MEMORY[0x277D84FA0];
  }

  MEMORY[0x28223BE20](v15);
  *&v18[-16] = v20;
  *&v18[-12] = a3;
  *&v18[-8] = a2;
  sub_2527E4D64(sub_252760CB8, &v18[-24], v16);
}

uint64_t sub_25275DC9C(unsigned __int16 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_2528BF400();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26[-v13];
  v27 = *a1;
  v15 = sub_2528C0C40();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a3, v8);
  v16 = a4[1];
  v28 = *a4;
  v29 = v16;
  v17 = a4[3];
  v30 = a4[2];
  v31 = v17;
  v18 = a4[5];
  v32 = a4[4];
  v33 = v18;
  v19 = (*(v9 + 80) + 73) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v27;
  v22 = *(a2 + 16);
  *(v21 + 40) = *a2;
  *(v21 + 56) = v22;
  *(v21 + 72) = *(a2 + 32);
  (*(v9 + 32))(v21 + v19, v11, v8);
  v23 = (v21 + v20);
  v24 = *(a4 + 1);
  *v23 = *a4;
  v23[1] = v24;
  v23[2] = *(a4 + 2);
  sub_252760E08(a2, v34);
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3E74(0, 0, v14, &unk_2528C6270, v21);
}

uint64_t sub_25275DF24(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 296) = a6;
  *(v7 + 304) = a7;
  *(v7 + 90) = a4;
  *(v7 + 280) = a1;
  *(v7 + 288) = a5;
  v8 = sub_2528BEC90();
  *(v7 + 312) = v8;
  *(v7 + 320) = *(v8 - 8);
  *(v7 + 328) = swift_task_alloc();
  v9 = sub_2528BEEC0();
  *(v7 + 336) = v9;
  *(v7 + 344) = *(v9 - 8);
  *(v7 + 352) = swift_task_alloc();
  v10 = sub_2528BF400();
  *(v7 + 360) = v10;
  *(v7 + 368) = *(v10 - 8);
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  v11 = sub_2528BE8B0();
  *(v7 + 408) = v11;
  *(v7 + 416) = *(v11 - 8);
  *(v7 + 424) = swift_task_alloc();
  v12 = sub_2528BECF0();
  *(v7 + 432) = v12;
  *(v7 + 440) = *(v12 - 8);
  *(v7 + 448) = swift_task_alloc();
  v13 = sub_2528BEE30();
  *(v7 + 456) = v13;
  *(v7 + 464) = *(v13 - 8);
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25275E214, 0, 0);
}

uint64_t sub_25275E214(uint64_t a1)
{
  v2 = *(v1 + 480);
  v4 = *(v1 + 456);
  v3 = *(v1 + 464);
  v6 = *(v1 + 416);
  v5 = *(v1 + 424);
  v16 = *(v1 + 408);
  v7 = *(v1 + 304);
  v8 = *(v1 + 288);
  v9 = *(v8 + 32);
  v10 = *(v8 + 16);
  *(v1 + 224) = *v8;
  *(v1 + 240) = v10;
  *(v1 + 256) = v9;
  sub_252870158((v1 + 89));
  *(v1 + 92) = *(v1 + 89);
  sub_2528BF2F0();
  sub_2528BEE00();
  v11 = *(v3 + 8);
  *(v1 + 488) = v11;
  *(v1 + 496) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v2, v4);
  v12 = *v7;
  v13 = v7[2];
  *(v1 + 192) = v7[1];
  *(v1 + 208) = v13;
  *(v1 + 176) = v12;
  sub_252756BE0();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v6 + 8))(v5, v16);
  sub_2528BE790();
  *(v1 + 504) = *(v1 + 264);
  *(v1 + 93) = *(v1 + 272);
  sub_2528BEFC0();
  v14 = swift_task_alloc();
  *(v1 + 512) = v14;
  *v14 = v1;
  v14[1] = sub_25275E3BC;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_25275E3BC(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 520) = a1;

  v4 = swift_task_alloc();
  *(v3 + 528) = v4;
  *v4 = v6;
  v4[1] = sub_25275E508;

  return sub_25279D1DC(a1);
}

uint64_t sub_25275E508(uint64_t a1)
{
  *(*v1 + 536) = a1;

  return MEMORY[0x2822009F8](sub_25275E608, 0, 0);
}

uint64_t sub_25275E608()
{
  v1 = *(v0 + 536);

  if (*(v1 + 16) && (v2 = sub_252785C40(*(v0 + 448)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 392);
    v50 = *(v0 + 400);
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v7 = *(v0 + 360);
    v8 = *(v0 + 368);
    v9 = *(v0 + 344);
    v10 = *(v0 + 352);
    v11 = *(v0 + 336);
    (*(v9 + 16))(v10, *(*(v0 + 536) + 56) + *(v9 + 72) * v2, v11);

    sub_2528BEE70();
    (*(v9 + 8))(v10, v11);
    (*(v8 + 32))(v5, v6, v7);
    sub_25272006C(v50, v4, &qword_27F4FCE00, &qword_2528C5D20);
    v12 = sub_2528BE890();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v4, 1, v12);
    v15 = *(v0 + 392);
    if (v14 == 1)
    {
      sub_2527213D8(*(v0 + 392), &qword_27F4FCE00, &qword_2528C5D20);
      v51 = 0;
    }

    else
    {
      v51 = sub_2528BE880();
      (*(v13 + 8))(v15, v12);
    }

    v21 = v14 == 1;
    v45 = *(v0 + 488);
    v22 = *(v0 + 472);
    v44 = *(v0 + 456);
    v48 = *(v0 + 448);
    v49 = *(v0 + 92);
    v23 = *(v0 + 440);
    v46 = *(v0 + 400);
    v47 = *(v0 + 432);
    v24 = *(v0 + 384);
    v26 = *(v0 + 360);
    v25 = *(v0 + 368);
    v28 = *(v0 + 320);
    v27 = *(v0 + 328);
    v29 = *(v0 + 312);
    v30 = *(v0 + 90);
    *(v0 + 544) = v21;
    sub_2528BEC80();
    sub_2528BEC60();
    v32 = v31;
    (*(v28 + 8))(v27, v29);
    sub_2528BF2F0();
    v33 = sub_2528BEDD0();
    v45(v22, v44);
    (*(v25 + 8))(v24, v26);
    sub_2527213D8(v46, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v23 + 8))(v48, v47);
    v34 = qword_2528C6290[v49];
    v35 = *(v0 + 504);
    if ((v30 & 0xC000) == 0x4000)
    {
      v36 = HIBYTE(v30) & 0x3F;
    }

    else
    {
      v36 = v30;
    }

    v37 = *(v0 + 280);
    *(v0 + 552) = *(v0 + 93);
    v38 = *(v0 + 544);
    v39 = *(v0 + 552);
    *(v0 + 96) = 0xD000000000000026;
    *(v0 + 104) = 0x80000002528E5780;
    *(v0 + 112) = v51;
    *(v0 + 120) = v38;
    *(v0 + 128) = v32;
    *(v0 + 136) = v33 & 1;
    *(v0 + 144) = v36 + 1;
    *(v0 + 152) = v34;
    *(v0 + 160) = v35;
    *(v0 + 168) = v39;
    sub_2527569B0();
    sub_2528BFA10();
    v40 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v40;
    *(v0 + 73) = *(v0 + 153);
    v41 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v41;
    sub_252756A04(v0 + 16);
    *v37 = 0;
  }

  else
  {
    v17 = *(v0 + 440);
    v16 = *(v0 + 448);
    v18 = *(v0 + 432);
    v19 = *(v0 + 400);
    v20 = *(v0 + 280);

    sub_2527213D8(v19, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v17 + 8))(v16, v18);
    *v20 = 1;
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_25275EA4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB658 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F5028A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25275EAF4(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v1[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_252754864;

  return sub_252756D78(a1);
}

double sub_25275EBA0@<D0>(_OWORD *a1@<X8>)
{
  sub_25275F958(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_25275EBE0(uint64_t a1)
{
  v2 = sub_252756BE0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_25275EC2C()
{
  v0 = 7104878;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v1);
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0x69746E45656D6F68, 0xEC000000203A7974);
  sub_2528BE790();
  v2 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v2);

  MEMORY[0x2530A80B0](0x203A73656E6F7A20, 0xE800000000000000);
  sub_2528BE790();
  if (v19)
  {
    v3 = type metadata accessor for ZoneEntity(0);
    v4 = MEMORY[0x2530A81C0](v19, v3);
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x2530A80B0](v4, v6);

  MEMORY[0x2530A80B0](0x203A736D6F6F7220, 0xE800000000000000);
  sub_2528BE790();
  if (v19)
  {
    v7 = type metadata accessor for RoomEntity(0);
    v0 = MEMORY[0x2530A81C0](v19, v7);
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  MEMORY[0x2530A80B0](v0, v9);

  MEMORY[0x2530A80B0](0x7365636976656420, 0xEA0000000000203ALL);
  sub_2528BE790();
  v10 = type metadata accessor for DeviceEntity(0);
  v11 = MEMORY[0x2530A81A0](v19, v10);
  v13 = v12;

  MEMORY[0x2530A80B0](v11, v13);

  MEMORY[0x2530A80B0](0x7562697274746120, 0xED0000203A736574);
  sub_2528BE790();
  v14 = MEMORY[0x2530A81A0](v19, &type metadata for Attribute);
  v16 = v15;

  MEMORY[0x2530A80B0](v14, v16);

  MEMORY[0x2530A80B0](0x74756F656D697420, 0xEA0000000000203ALL);
  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE10, &unk_2528C6280);
  v17 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v17);

  return 0;
}

uint64_t sub_25275EF54@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  sub_2527FECD0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v6 = sub_252755F54();
  MEMORY[0x2530A60E0](&v31, &v45, v5, &type metadata for DeviceEntityFromAccessoryTypeResolver, v6);
  v38[4] = v49;
  v38[5] = v50;
  v38[6] = v51;
  v38[0] = v45;
  v38[1] = v46;
  v38[2] = v47;
  v38[3] = v48;
  sub_252755FA8(v38);
  sub_2527FECD0();
  v7 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v24, &v45, v5, &type metadata for DeviceEntityFromInputTypeResolver, v7);
  v39[4] = v49;
  v39[5] = v50;
  v39[6] = v51;
  v39[0] = v45;
  v39[1] = v46;
  v39[2] = v47;
  v39[3] = v48;
  sub_252756050(v39);
  v40[4] = v35;
  v40[5] = v36;
  v40[6] = v37;
  v40[0] = v31;
  v40[1] = v32;
  v40[2] = v33;
  v40[3] = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  sub_2527560A4(v40, &v45);
  sub_252756100();
  sub_2528BEAA0();
  v41[4] = v21;
  v41[5] = v22;
  v41[6] = v23;
  v41[0] = v17;
  v41[1] = v18;
  v41[2] = v19;
  v41[3] = v20;
  sub_252755FA8(v41);
  v42[4] = v28;
  v42[5] = v29;
  v42[6] = v30;
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = v26;
  v42[3] = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  sub_2527561B4(v42, &v45);
  v9[2] = v6;
  v9[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v43[4] = v14;
  v43[5] = v15;
  v43[6] = v16;
  v43[0] = v10;
  v43[1] = v11;
  v43[3] = v13;
  v43[2] = v12;
  sub_252756050(v43);
  (*(v2 + 8))(v4, v1);
  v44[4] = v28;
  v44[5] = v29;
  v44[6] = v30;
  v44[0] = v24;
  v44[1] = v25;
  v44[3] = v27;
  v44[2] = v26;
  sub_252756050(v44);
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  return sub_252755FA8(&v45);
}

uint64_t sub_25275F288()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD78, &qword_2528C5C90);
  v1 = sub_252756318();
  MEMORY[0x2530A60E0](&v4, &v3, v0, &type metadata for ZoneEntityFromNameResolver, v1);

  v3 = v4;
  sub_25275636C();
  sub_2528BEAA0();
}

uint64_t sub_25275F368()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v0 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  v1 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  v2 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  swift_getKeyPath();
  v7 = v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = sub_2528BE9C0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD58, &qword_2528C5C88);
  v5 = sub_252756210();
  MEMORY[0x2530A60E0](v12, &v7, v4, &type metadata for RoomEntityFromNameResolver, v5);

  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];
  v11 = v12[4];
  sub_252756264();
  sub_2528BEAA0();
}

double sub_25275F560@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE70, &qword_2528C6260) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE68, &unk_2528CE030) + 48);
  v6 = *(a1 + v4);
  v7 = sub_2528BF9D0();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;

  return result;
}

uint64_t sub_25275F614(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = sub_2528BF9D0();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE60, &unk_2528C6250);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;
  sub_2528BEA50();
  while (1)
  {
    sub_2527E2E0C(v14);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE68, &unk_2528CE030);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_25271A648(v43);
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v42);
    v24 = *&v14[v22];
    v25 = *v50;
    v27 = sub_252785D14(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_2527E1078();
      }
    }

    else
    {
      sub_2527DDCC4(v30, a4 & 1);
      v32 = sub_252785D14(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v50;
    if (v31)
    {
      (*v40)(v11, v42);
      *(v34[7] + 8 * v27) = v24;

      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v41 + 72) * v27), v11, v42);
      *(v34[7] + 8 * v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_25275F958@<X0>(uint64_t *a1@<X8>)
{
  v66 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC78, &unk_2528C5B30);
  v64 = *(v1 - 8);
  v65 = v1;
  MEMORY[0x28223BE20](v1);
  v63 = &v53 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v53 - v4;
  v75 = sub_2528BE950();
  v5 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v53 - v14;
  v16 = sub_2528BEC40();
  v77 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE30, &unk_2528C6090);
  sub_2528BEC20();
  v20 = *(v17 + 56);
  v76 = v17 + 56;
  v78 = v20;
  v20(v15, 1, 1, v16);
  v21 = sub_2528BE630();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v23(v12, 1, 1, v21);
  v74 = *MEMORY[0x277CBA308];
  v71 = *(v5 + 104);
  v71(v7);
  v72 = v5 + 104;
  sub_2527604A4();
  v68 = v15;
  v55 = v12;
  v62 = sub_2528BE7C0();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCD8, &qword_2528C5B68);
  sub_2528BEC20();
  v78(v15, 1, 1, v77);
  v83 = 0;
  v73 = v24;
  v23(v12, 1, 1, v21);
  v25 = v58;
  v23(v58, 1, 1, v21);
  (v71)(v7, v74, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  v67 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70, MEMORY[0x277CBA480]);
  sub_2527605EC(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v26 = v19;
  v27 = v68;
  v28 = v55;
  v29 = v25;
  v61 = sub_2528BE7E0();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v30 = v77;
  v78(v27, 1, 1, v77);
  v31 = type metadata accessor for HomeEntity(0);
  (*(*(v31 - 8) + 56))(v60, 1, 1, v31);
  v32 = v28;
  v69 = v21;
  v70 = v23;
  v23(v28, 1, 1, v21);
  v23(v25, 1, 1, v21);
  v54 = v7;
  v33 = v75;
  v34 = v71;
  (v71)(v7, v74, v75);
  sub_2527605EC(&qword_27F4FCC90, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
  v56 = v26;
  v35 = v68;
  v60 = sub_2528BE7F0();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC98, &unk_2528C60A0);
  sub_2528BEC20();
  v78(v35, 1, 1, v30);
  v82 = 0;
  v36 = v32;
  v37 = v32;
  v38 = v69;
  v39 = v70;
  v70(v36, 1, 1, v69);
  v39(v29, 1, 1, v38);
  v40 = v54;
  v41 = v74;
  (v34)(v54, v74, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCA0, &unk_2528C5B50);
  sub_25272275C(&qword_27F4FCCA8, &qword_27F4FCCA0, &unk_2528C5B50, v67);
  sub_2527605EC(&qword_27F4FCCB0, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
  v42 = v68;
  v59 = sub_2528BE7E0();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCB8, &unk_2528C60B0);
  sub_2528BEC20();
  v78(v42, 1, 1, v77);
  v81 = 0;
  v43 = v69;
  v44 = v70;
  v70(v37, 1, 1, v69);
  v44(v29, 1, 1, v43);
  v45 = v41;
  v46 = v75;
  v47 = v71;
  (v71)(v40, v45, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCC0, &qword_2528C5B60);
  sub_25272275C(&qword_27F4FCCC8, &qword_27F4FCCC0, &qword_2528C5B60, v67);
  sub_2527605EC(&qword_27F4FCCD0, type metadata accessor for RoomEntity, &protocol conformance descriptor for RoomEntity);
  v48 = sub_2528BE7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF8, &unk_2528C5B80);
  sub_2528BEC20();
  v78(v42, 1, 1, v77);
  v79 = 0;
  v80 = 1;
  v70(v37, 1, 1, v69);
  (*(v64 + 104))(v63, *MEMORY[0x277CB9ED0], v65);
  (v47)(v40, v74, v46);
  result = sub_2528BE820();
  v50 = v66;
  v51 = v61;
  *v66 = v62;
  v50[1] = v51;
  v52 = v59;
  v50[2] = v60;
  v50[3] = v52;
  v50[4] = v48;
  v50[5] = result;
  return result;
}

unint64_t sub_2527604A4()
{
  result = qword_27F4FCE38;
  if (!qword_27F4FCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE38);
  }

  return result;
}

uint64_t sub_2527604F8(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25271F3AC;

  return sub_25275D9C4(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_2527605EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_252760650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2527606B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_252760718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252760780(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25271F3AC;

  return sub_25275A9F4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_2528BF400();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25276094C(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2527228B0;

  return sub_25275B580(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_252760A40(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2527228B0;

  return sub_25275BFD0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2530A8D80);
  }

  return result;
}

unint64_t sub_252760B90()
{
  result = qword_27F4FCE58;
  if (!qword_27F4FCE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4FCE58);
  }

  return result;
}

double sub_252760C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0xFE) == 0x62)
  {
  }

  return result;
}

uint64_t sub_252760CD8(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 73) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2527228B0;

  return sub_25275DF24(a1, v7, v8, v9, v1 + 40, v1 + v5, v1 + v6);
}

unint64_t sub_252760E6C()
{
  result = qword_27F4FCE78;
  if (!qword_27F4FCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE78);
  }

  return result;
}

unint64_t sub_252760EC4()
{
  result = qword_27F4FCE80;
  if (!qword_27F4FCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE80);
  }

  return result;
}

unint64_t sub_252760F9C()
{
  result = qword_27F4FCE88;
  if (!qword_27F4FCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCE88);
  }

  return result;
}

uint64_t sub_252760FF0()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F5028C0);
  __swift_project_value_buffer(v0, qword_27F5028C0);
  return sub_2528BEC20();
}

uint64_t sub_252761054(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252761128, 0, 0);
}

uint64_t sub_252761128()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v0[8] = __swift_project_value_buffer(v2, qword_27F5025C8);
  sub_2527BBD58(v1);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v4 = sub_2528C0820();
  v0[9] = __swift_project_value_buffer(v4, qword_27F5025E0);
  v0[10] = sub_2528B7F30(v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_252761270;
  v6 = v0[2];

  return sub_25276156C(v6);
}

uint64_t sub_252761270()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_2527614BC;
  }

  else
  {
    v2 = sub_252761384;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252761384()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  (*(v3 + 16))(v2, v0[2], v4);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v2, v4);
  sub_2527BCC8C(v5, v1, sub_252756420, v7);

  sub_2527BE1B4(v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2527614BC()
{
  v1 = v0[12];
  v2 = v0[3];
  sub_2527BEE38(v2, v0[10], v1);
  sub_2527C0430(v2, v1);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_25276156C(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v2[47] = type metadata accessor for ShowDeviceResultIntent(0);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v4 = sub_2528BECF0();
  v2[51] = v4;
  v2[52] = *(v4 - 8);
  v2[53] = swift_task_alloc();
  v5 = sub_2528BEEC0();
  v2[54] = v5;
  v2[55] = *(v5 - 8);
  v2[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = *(type metadata accessor for DeviceEntity(0) - 8);
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v2[63] = swift_task_alloc();
  v6 = sub_2528C0060();
  v2[64] = v6;
  v2[65] = *(v6 - 8);
  v2[66] = swift_task_alloc();
  v7 = sub_2528BEE30();
  v2[67] = v7;
  v2[68] = *(v7 - 8);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v8 = sub_2528C00D0();
  v2[72] = v8;
  v2[73] = *(v8 - 8);
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v9 = sub_2528BE8B0();
  v2[76] = v9;
  v2[77] = *(v9 - 8);
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v2[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  v2[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0);
  v2[82] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v10 = sub_2528BF400();
  v2[87] = v10;
  v11 = *(v10 - 8);
  v2[88] = v11;
  v2[89] = *(v11 + 64);
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[92] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252761BCC, 0, 0);
}

uint64_t sub_252761BCC()
{
  v0[98] = *(v0[43] + 8);
  sub_2528BE790();
  v1 = *(v0[29] + 16);

  if (v1)
  {
    v2 = v0[43];
    v0[99] = *v2;
    result = sub_2528BE790();
    v4 = 0;
    v5 = v0[30];
    v6 = *(v5 + 16);
    while (v6 != v4)
    {
      if (v4 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      result = sub_25277B234(*(v5 + v4 + 32), v2[6]);
      v4 = v7;
      if ((result & 1) == 0)
      {

        goto LABEL_7;
      }
    }

    v9 = v0[92];
    v10 = v0[43];

    v0[100] = *(v10 + 16);
    sub_2528BE790();
    sub_2528BE790();
    v11 = v0[31];
    v0[101] = v11;
    v12 = sub_2528C05D0();
    v0[102] = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    v0[103] = v14;
    v0[104] = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v9, 1, 1, v12);
    v15 = swift_task_alloc();
    v0[105] = v15;
    *v15 = v0;
    v15[1] = sub_252762034;
    v16 = v0[97];
    v17 = v0[92];

    return sub_25277ECE4(v16, v11, 0, v17);
  }

  else
  {
LABEL_7:
    type metadata accessor for HomeAppIntentError(0);
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_252762034(uint64_t a1)
{
  v2 = *(*v1 + 776);
  v3 = *(*v1 + 736);
  *(*v1 + 848) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527621B4, 0, 0);
}

uint64_t sub_2527621B4()
{
  v1 = *(v0 + 648);
  sub_2527D38F8(*(v0 + 848), v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 656);
    sub_2527213D8(*(v0 + 648), &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    v17 = *(v0 + 752);
    v18 = *(v0 + 352);
    v19 = *(v0 + 360);
    sub_2527213D8(*(v0 + 656), &qword_27F4FCDB0, &qword_2528D2DB0);
    type metadata accessor for HomeAppIntentError(0);
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v21 = v20;
    sub_2528BE790();
    v22 = *(v19 + 48);
    v23 = 1;
    if (!v22(v17, 1, v18))
    {
      (*(*(v0 + 416) + 16))(v21, *(v0 + 752), *(v0 + 408));
      v23 = 0;
    }

    v24 = *(v0 + 744);
    v26 = *(v0 + 408);
    v25 = *(v0 + 416);
    v27 = *(v0 + 352);
    sub_2527213D8(*(v0 + 752), &qword_27F4FC488, &unk_2528C3F80);
    (*(v25 + 56))(v21, v23, 1, v26);
    v28 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    v29 = v22(v24, 1, v27);
    v30 = *(v0 + 744);
    if (v29)
    {
      sub_2527213D8(v30, &qword_27F4FC488, &unk_2528C3F80);
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v33 = *(v0 + 368);
      v34 = *(v0 + 744);
      sub_2527691F4(v30, v33, type metadata accessor for HomeEntity);
      sub_2527213D8(v34, &qword_27F4FC488, &unk_2528C3F80);
      sub_2528BE6B0();
      v31 = *(v0 + 184);
      v32 = *(v0 + 192);
      sub_2527567C0(v33, type metadata accessor for HomeEntity);
    }

    *v28 = v31;
    v28[1] = v32;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = *(v0 + 656);
  v8 = *(v0 + 648);
  v9 = *(v0 + 408);
  v10 = *(v0 + 416);
  v11 = v8 + *(v2 + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v13 = *(v12 + 48);
  v95 = *(v5 + 16);
  v95(v7, v11, v6);
  v14 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v11 + *(v14 + 20), v7 + v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527567C0(v11, type metadata accessor for HomeEntity.SnapshotPair);
  v15 = *(v12 - 8);
  (*(v15 + 56))(v7, 0, 1, v12);
  v16 = *(v10 + 8);
  *(v0 + 856) = v16;
  *(v0 + 864) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v8, v9);
  if ((*(v15 + 48))(v7, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v37 = *(v0 + 728);
  v92 = *(v0 + 720);
  v38 = *(v0 + 704);
  v39 = *(v0 + 696);
  v40 = *(v0 + 688);
  v41 = *(v0 + 656);
  v91 = *(v0 + 640);
  v42 = *(v0 + 344);
  v43 = *(v12 + 48);
  v44 = *(v38 + 32);
  v44(v37, v41, v39);
  sub_25274AA0C(v41 + v43, v40, &qword_27F4FCDB8, &unk_2528C5CC0);
  v45 = sub_2528C0C40();
  (*(*(v45 - 8) + 56))(v91, 1, 1, v45);
  v95(v92, v37, v39);
  v46 = (*(v38 + 80) + 88) & ~*(v38 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  v48 = *v42;
  v49 = *(v42 + 16);
  v50 = *(v42 + 32);
  *(v47 + 80) = *(v42 + 48);
  *(v47 + 48) = v49;
  *(v47 + 64) = v50;
  *(v47 + 32) = v48;
  v44(v47 + v46, v92, v39);
  sub_2527691BC(v42, v0 + 16);
  sub_2527D3B74(0, 0, v91, &unk_2528C6710, v47);

  sub_2528BE790();
  v51 = *(v0 + 256);
  *(v0 + 872) = v51;
  sub_2528BE790();
  *(v0 + 880) = *(v0 + 264);
  sub_2528BE790();
  *(v0 + 888) = *(v42 + 40);
  sub_2528BE790();
  *(v0 + 896) = *(v0 + 200);
  *(v0 + 213) = *(v0 + 208);
  v52 = *(v42 + 48);
  v54 = *(v42 + 16);
  v53 = *(v42 + 32);
  *(v0 + 72) = *v42;
  *(v0 + 88) = v54;
  *(v0 + 104) = v53;
  *(v0 + 120) = v52;
  *(v0 + 904) = sub_252760F9C();
  sub_2528BE5B0();
  v55 = *(v51 + 16);
  *(v0 + 912) = v55;
  if (!v55)
  {
    v79 = *(v0 + 768);
    v80 = *(v0 + 704);
    v93 = *(v0 + 696);
    v94 = *(v0 + 728);
    v81 = *(v0 + 688);
    v82 = *(v0 + 632);
    v83 = *(v0 + 616);
    v84 = *(v0 + 608);

    type metadata accessor for HomeAppIntentError(0);
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v83 + 8))(v82, v84);
    sub_2527213D8(v79, &qword_27F4FC488, &unk_2528C3F80);
    sub_2527213D8(v81, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v80 + 8))(v94, v93);
LABEL_10:

    v35 = *(v0 + 8);

    return v35();
  }

  v56 = *(v0 + 680);
  v57 = *(v0 + 584);
  v58 = *(v0 + 576);
  sub_25272006C(*(v0 + 688), v56, &qword_27F4FCDB8, &unk_2528C5CC0);
  v59 = *(v57 + 48);
  *(v0 + 920) = v59;
  *(v0 + 928) = (v57 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v59(v56, 1, v58) == 1)
  {
    sub_2527213D8(*(v0 + 680), &qword_27F4FCDB8, &unk_2528C5CC0);
    v60 = 0;
    v61 = MEMORY[0x277D84F90];
    *(v0 + 1016) = MEMORY[0x277D84F90];
    v62 = *(v0 + 480);
    v96 = v61;
    v63 = *(v0 + 872) + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v64 = *(v62 + 72);
    do
    {
      v65 = *(v0 + 912);
      v66 = *(v0 + 880);
      v67 = *(v0 + 496);
      sub_2527691F4(v63, v67, type metadata accessor for DeviceEntity);
      ++v60;
      v68 = swift_task_alloc();
      *(v68 + 16) = v67;
      v69 = sub_2527A3118(sub_2527565E8, v68, v66);
      *(v0 + 1192) = 0;

      sub_2527567C0(v67, type metadata accessor for DeviceEntity);
      sub_252735C48(v69);
      v63 += v64;
    }

    while (v60 != v65);
    v70 = *(v0 + 213);
    v71 = *(v0 + 896);
    v72 = *(v0 + 872);
    v73 = *(v0 + 728);
    *(v0 + 1024) = v96;
    v74 = swift_task_alloc();
    *(v0 + 1032) = v74;
    *(v74 + 16) = v73;
    *(v74 + 24) = v72;
    *(v74 + 32) = v71;
    *(v74 + 40) = v70;
    v75 = swift_task_alloc();
    *(v0 + 1040) = v75;
    *v75 = v0;
    v75[1] = sub_252763960;
    v76 = *(v0 + 880);
    v77 = *(v0 + 872);
    v78 = *(v0 + 728);

    return sub_2527764BC(v96, v78, v76, v77, &unk_2528C6DF0, v74);
  }

  else
  {
    v85 = *(v0 + 680);
    v86 = *(v0 + 600);
    v87 = *(v0 + 584);
    v88 = *(v0 + 576);
    v89 = *(v87 + 32);
    *(v0 + 936) = v89;
    *(v0 + 944) = (v87 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v89(v86, v85, v88);
    sub_2528BF2F0();
    v90 = swift_task_alloc();
    *(v0 + 952) = v90;
    *v90 = v0;
    v90[1] = sub_252762E18;

    return MEMORY[0x28216E680]();
  }
}

uint64_t sub_252762E18(uint64_t a1)
{
  v2 = *(*v1 + 568);
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 536);
  *(*v1 + 960) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_252762F78, 0, 0);
}

uint64_t sub_252762F78()
{
  if (*(v0 + 960))
  {
    v1 = *(v0 + 872);
    v2 = *(v0 + 600);
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v0 + 968) = sub_2527A2F84(sub_252756820, v3, v1);
    *(v0 + 976) = 0;

    *(v0 + 984) = sub_2528BEFC0();
    sub_2528C0C20();
    *(v0 + 992) = sub_2528C0C10();
    v5 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_252763264, v5, v4);
  }

  else
  {
    (*(*(v0 + 584) + 8))(*(v0 + 600), *(v0 + 576));
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    *(v0 + 1016) = MEMORY[0x277D84F90];
    v8 = *(v0 + 480);
    v26 = v7;
    v9 = *(v0 + 872) + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v11 = *(v0 + 912);
      v12 = *(v0 + 880);
      v13 = *(v0 + 496);
      sub_2527691F4(v9, v13, type metadata accessor for DeviceEntity);
      ++v6;
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      v15 = sub_2527A3118(sub_2527565E8, v14, v12);
      *(v0 + 1192) = 0;

      sub_2527567C0(v13, type metadata accessor for DeviceEntity);
      sub_252735C48(v15);
      v9 += v10;
    }

    while (v6 != v11);
    v16 = *(v0 + 213);
    v17 = *(v0 + 896);
    v18 = *(v0 + 872);
    v19 = *(v0 + 728);
    *(v0 + 1024) = v26;
    v20 = swift_task_alloc();
    *(v0 + 1032) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    *(v20 + 32) = v17;
    *(v20 + 40) = v16;
    v21 = swift_task_alloc();
    *(v0 + 1040) = v21;
    *v21 = v0;
    v21[1] = sub_252763960;
    v22 = *(v0 + 880);
    v23 = *(v0 + 872);
    v24 = *(v0 + 728);

    return sub_2527764BC(v26, v24, v22, v23, &unk_2528C6DF0, v20);
  }
}

uint64_t sub_252763264()
{

  *(v0 + 1000) = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_2527632D8, 0, 0);
}

uint64_t sub_2527632D8()
{
  v1 = v0[120];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v6 = sub_252743EF0(v0[121]);

  *v2 = v6;
  v2[1] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D16508], v4);
  v7 = sub_2528C00B0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[126] = v9;
  *v9 = v0;
  v9[1] = sub_252763434;
  v10 = v0[84];
  v11 = v0[66];
  v12 = v0[63];

  return MEMORY[0x282170970](v10, v11, v8, v12);
}

uint64_t sub_252763434()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 512);
  v4 = *(*v0 + 504);

  sub_2527213D8(v4, &qword_27F4FC478, &unk_2528C3F70);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_2527635DC, 0, 0);
}

uint64_t sub_2527635DC()
{
  v1 = *(v0 + 920);
  v2 = *(v0 + 672);
  v3 = *(v0 + 664);
  v4 = *(v0 + 576);
  (*(*(v0 + 584) + 56))(v2, 0, 1, v4);
  sub_25272006C(v2, v3, &qword_27F4FCDB8, &unk_2528C5CC0);
  v5 = v1(v3, 1, v4);
  v6 = MEMORY[0x277D84F90];
  if (v5 == 1)
  {
    v7 = *(v0 + 960);
    v8 = *(v0 + 672);
    v9 = *(v0 + 584);
    sub_2527213D8(*(v0 + 664), &qword_27F4FCDB8, &unk_2528C5CC0);

    sub_2527213D8(v8, &qword_27F4FCDB8, &unk_2528C5CC0);
    v10 = *(v0 + 976);
    v11 = MEMORY[0x277D84F90];
    (*(v9 + 8))(*(v0 + 600), *(v0 + 576));
  }

  else
  {
    v10 = *(v0 + 976);
    v12 = *(v0 + 960);
    v13 = *(v0 + 880);
    v14 = *(v0 + 872);
    v15 = *(v0 + 672);
    v16 = *(v0 + 592);
    v17 = *(v0 + 584);
    v18 = *(v0 + 576);
    (*(v0 + 936))(v16, *(v0 + 664), v18);
    v19 = swift_task_alloc();
    *(v19 + 16) = v13;
    v6 = MEMORY[0x277D84F90];
    *(v19 + 24) = v16;
    v11 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25275683C, v19, v14);

    sub_2527213D8(v15, &qword_27F4FCDB8, &unk_2528C5CC0);
    v20 = *(v17 + 8);
    v20(v16, v18);
    v20(*(v0 + 600), *(v0 + 576));
  }

  v21 = 0;
  *(v0 + 1016) = v11;
  v22 = *(v0 + 480);
  v40 = v6;
  v23 = *(v0 + 872) + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v24 = *(v22 + 72);
  do
  {
    v25 = *(v0 + 912);
    v26 = *(v0 + 880);
    v27 = *(v0 + 496);
    sub_2527691F4(v23, v27, type metadata accessor for DeviceEntity);
    ++v21;
    v28 = swift_task_alloc();
    *(v28 + 16) = v27;
    v29 = sub_2527A3118(sub_2527565E8, v28, v26);
    *(v0 + 1192) = v10;

    sub_2527567C0(v27, type metadata accessor for DeviceEntity);
    sub_252735C48(v29);
    v23 += v24;
  }

  while (v21 != v25);
  v30 = *(v0 + 213);
  v31 = *(v0 + 896);
  v32 = *(v0 + 872);
  v33 = *(v0 + 728);
  *(v0 + 1024) = v40;
  v34 = swift_task_alloc();
  *(v0 + 1032) = v34;
  *(v34 + 16) = v33;
  *(v34 + 24) = v32;
  *(v34 + 32) = v31;
  *(v34 + 40) = v30;
  v35 = swift_task_alloc();
  *(v0 + 1040) = v35;
  *v35 = v0;
  v35[1] = sub_252763960;
  v36 = *(v0 + 880);
  v37 = *(v0 + 872);
  v38 = *(v0 + 728);

  return sub_2527764BC(v40, v38, v36, v37, &unk_2528C6DF0, v34);
}

uint64_t sub_252763960(uint64_t a1)
{
  *(*v1 + 1048) = a1;

  return MEMORY[0x2822009F8](sub_252763A9C, 0, 0);
}

uint64_t sub_252763A9C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 728);
  v4 = MEMORY[0x277D84F90];
  v5 = sub_25278D334(MEMORY[0x277D84F90]);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  v7 = sub_2527F2ADC(v5, sub_252756604, v6, v2);
  *(v0 + 1056) = v7;

  if (*(v7 + 16))
  {
    v8 = *(v0 + 704);
    v9 = *(v0 + 696);
    v10 = *(v0 + 472);
    v11 = *(v8 + 56);
    *(v0 + 1064) = v11;
    *(v0 + 1072) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v10, 1, 1, v9);
    sub_2528BF2F0();
    *(v0 + 1080) = sub_2528BEFC0();
    v12 = swift_task_alloc();
    *(v0 + 1088) = v12;
    *v12 = v0;
    v12[1] = sub_252763F3C;

    return MEMORY[0x28216EA40]();
  }

  else
  {
    v13 = *(v0 + 1048);
    v14 = *(v0 + 1016);
    v15 = *(v0 + 768);
    v16 = *(v0 + 632);
    v17 = *(v0 + 616);
    v18 = *(v0 + 608);

    sub_252735C2C(v13);
    sub_252735C2C(v14);
    v19 = sub_25280D9C4(v4);

    v20 = *(v17 + 8);
    *(v0 + 1168) = v20;
    *(v0 + 1176) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v16, v18);
    sub_2527213D8(v15, &qword_27F4FC488, &unk_2528C3F80);
    v21 = sub_252767DF0(v19);
    *(v0 + 1184) = v21;

    v22 = v21 + 8;
    v23 = -1;
    v24 = -1 << *(v21 + 32);
    if (-v24 < 64)
    {
      v23 = ~(-1 << -v24);
    }

    v25 = v23 & v21[8];
    v26 = (63 - v24) >> 6;
    v49 = v21;
    swift_bridgeObjectRetain_n();
    v27 = 0;
    while (1)
    {
      *(v0 + 1200) = v4;
      if (!v25)
      {
        break;
      }

LABEL_14:
      v29 = *(*(v49 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v25)))));
      v30 = *(v29 + 16);
      v31 = *(v4 + 2);
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return MEMORY[0x28216EA40]();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v32 > *(v4 + 3) >> 1)
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v4 = sub_252737E74(isUniquelyReferenced_nonNull_native, v34, 1, v4);
      }

      v25 &= v25 - 1;
      if (*(v29 + 16))
      {
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v30)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v35 = *(v4 + 2);
          v36 = __OFADD__(v35, v30);
          v37 = v35 + v30;
          if (v36)
          {
            goto LABEL_33;
          }

          *(v4 + 2) = v37;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v28 >= v26)
      {
        break;
      }

      v25 = v22[v28];
      ++v27;
      if (v25)
      {
        v27 = v28;
        goto LABEL_14;
      }
    }

    v38 = *(v0 + 344);

    sub_2528BE790();
    sub_2528BE790();
    v39 = *(v0 + 216);
    v40 = *(v0 + 224);
    v42 = v38[1];
    v41 = v38[2];
    v43 = *v38;
    *(v0 + 176) = *(v38 + 6);
    *(v0 + 144) = v42;
    *(v0 + 160) = v41;
    *(v0 + 128) = v43;
    sub_2528BE5B0();
    v44 = swift_task_alloc();
    *(v0 + 1208) = v44;
    *v44 = v0;
    v44[1] = sub_252764EF4;
    v45 = *(v0 + 760);
    v46 = *(v0 + 728);
    v47 = *(v0 + 688);

    return sub_252791C80(v49, v45, v39, v40, v46, v47);
  }
}

uint64_t sub_252763F3C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 213);
  v5 = *v1;
  v3[137] = a1;

  v6 = swift_task_alloc();
  v3[138] = v6;
  *v6 = v5;
  v6[1] = sub_2527640DC;
  v7 = v2[132];
  v8 = v2[112];
  v9 = v2[70];
  v10 = v2[58];

  return MEMORY[0x28216EA10](v10, v9, v7, v8, v4, 0);
}

uint64_t sub_2527640DC()
{
  v2 = *v1;
  v2[139] = v0;

  v3 = v2[137];
  if (v0)
  {

    v4 = sub_252764630;
  }

  else
  {
    (*(v2[68] + 8))(v2[70], v2[67]);

    v4 = sub_252764230;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

char *sub_252764230()
{
  sub_2527213D8(*(v0 + 472), &qword_27F4FCD98, &qword_2528C6200);
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 472);
  sub_25274AA0C(*(v0 + 464), v3, &qword_27F4FCD98, &qword_2528C6200);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = MEMORY[0x277D84F90];
  v6 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v4, v2);

  sub_2527213D8(v3, &qword_27F4FCD98, &qword_2528C6200);
  v7 = *(v0 + 1048);
  v8 = *(v0 + 1016);
  v41 = *(v0 + 768);
  v9 = *(v0 + 632);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);

  sub_252735C2C(v7);
  sub_252735C2C(v8);
  v12 = sub_25280D9C4(v6);

  v13 = *(v10 + 8);
  *(v0 + 1168) = v13;
  *(v0 + 1176) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v11);
  sub_2527213D8(v41, &qword_27F4FC488, &unk_2528C3F80);
  v14 = sub_252767DF0(v12);
  *(v0 + 1184) = v14;

  v15 = v14 + 8;
  v16 = -1;
  v17 = -1 << *(v14 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & v14[8];
  v19 = (63 - v17) >> 6;
  v42 = v14;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  while (1)
  {
    *(v0 + 1200) = v5;
    if (!v18)
    {
      break;
    }

LABEL_10:
    v23 = *(*(v42 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(v18)))));
    v24 = *(v23 + 16);
    v25 = *(v5 + 2);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v26 > *(v5 + 3) >> 1)
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_252737E74(result, v27, 1, v5);
      v5 = result;
    }

    v18 &= v18 - 1;
    if (*(v23 + 16))
    {
      if ((*(v5 + 3) >> 1) - *(v5 + 2) < v24)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v28 = *(v5 + 2);
        v29 = __OFADD__(v28, v24);
        v30 = v28 + v24;
        if (v29)
        {
          goto LABEL_29;
        }

        *(v5 + 2) = v30;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_27;
      }
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = v15[v22];
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_10;
    }
  }

  v31 = *(v0 + 344);

  sub_2528BE790();
  sub_2528BE790();
  v32 = *(v0 + 216);
  v33 = *(v0 + 224);
  v35 = v31[1];
  v34 = v31[2];
  v36 = *v31;
  *(v0 + 176) = *(v31 + 6);
  *(v0 + 144) = v35;
  *(v0 + 160) = v34;
  *(v0 + 128) = v36;
  sub_2528BE5B0();
  v37 = swift_task_alloc();
  *(v0 + 1208) = v37;
  *v37 = v0;
  v37[1] = sub_252764EF4;
  v38 = *(v0 + 760);
  v39 = *(v0 + 728);
  v40 = *(v0 + 688);

  return sub_252791C80(v42, v38, v32, v33, v39, v40);
}

uint64_t sub_252764630()
{
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[92];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[67];
  v7 = *(v5 + 8);
  v0[140] = v7;
  v0[141] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  v1(v3, 1, 1, v2);
  v8 = swift_task_alloc();
  v0[142] = v8;
  *v8 = v0;
  v8[1] = sub_252764724;
  v9 = v0[92];

  return MEMORY[0x28216E990](v9);
}

uint64_t sub_252764724(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 1144) = a1;

  v4 = swift_task_alloc();
  *(v3 + 1152) = v4;
  *v4 = v6;
  v4[1] = sub_252764870;

  return sub_25279D1DC(a1);
}

uint64_t sub_252764870(uint64_t a1)
{
  *(*v1 + 1160) = a1;

  return MEMORY[0x2822009F8](sub_252764970, 0, 0);
}

char *sub_252764970()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 736);
  v4 = *(v0 + 552);
  v5 = *(v0 + 536);

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  v2(v4, v5);
  if (*(v1 + 16) && (v6 = sub_252785C40(*(v0 + 424)), (v7 & 1) != 0))
  {
    v8 = *(v0 + 856);
    v59 = *(v0 + 1112);
    v60 = *(v0 + 472);
    v9 = *(v0 + 448);
    v11 = *(v0 + 432);
    v10 = *(v0 + 440);
    v12 = *(v0 + 424);
    v13 = *(v0 + 408);
    (*(v10 + 16))(v9, *(*(v0 + 1160) + 56) + *(v10 + 72) * v6, v11);
    v8(v12, v13);

    sub_2528BEE70();

    sub_2527213D8(v60, &qword_27F4FCD98, &qword_2528C6200);
    (*(v10 + 8))(v9, v11);
    v14 = 0;
  }

  else
  {
    v15 = *(v0 + 856);
    v16 = *(v0 + 472);
    v17 = *(v0 + 424);
    v18 = *(v0 + 408);

    v15(v17, v18);
    sub_2527213D8(v16, &qword_27F4FCD98, &qword_2528C6200);
    v14 = 1;
  }

  (*(v0 + 1064))(*(v0 + 456), v14, 1, *(v0 + 696));
  v19 = *(v0 + 880);
  v20 = *(v0 + 872);
  v21 = *(v0 + 472);
  sub_25274AA0C(*(v0 + 456), v21, &qword_27F4FCD98, &qword_2528C6200);
  v22 = swift_task_alloc();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  v23 = MEMORY[0x277D84F90];
  v24 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v22, v20);

  sub_2527213D8(v21, &qword_27F4FCD98, &qword_2528C6200);
  v25 = *(v0 + 1048);
  v26 = *(v0 + 1016);
  v61 = *(v0 + 768);
  v27 = *(v0 + 632);
  v28 = *(v0 + 616);
  v29 = *(v0 + 608);

  sub_252735C2C(v25);
  sub_252735C2C(v26);
  v30 = sub_25280D9C4(v24);

  v31 = *(v28 + 8);
  *(v0 + 1168) = v31;
  *(v0 + 1176) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v27, v29);
  sub_2527213D8(v61, &qword_27F4FC488, &unk_2528C3F80);
  v32 = sub_252767DF0(v30);
  *(v0 + 1184) = v32;

  v33 = v32 + 8;
  v34 = -1;
  v35 = -1 << *(v32 + 32);
  if (-v35 < 64)
  {
    v34 = ~(-1 << -v35);
  }

  v36 = v34 & v32[8];
  v37 = (63 - v35) >> 6;
  v62 = v32;
  result = swift_bridgeObjectRetain_n();
  v39 = 0;
  while (1)
  {
    *(v0 + 1200) = v23;
    if (!v36)
    {
      break;
    }

LABEL_14:
    v41 = *(*(v62 + 56) + ((v39 << 9) | (8 * __clz(__rbit64(v36)))));
    v42 = *(v41 + 16);
    v43 = *(v23 + 2);
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v44 > *(v23 + 3) >> 1)
    {
      if (v43 <= v44)
      {
        v45 = v43 + v42;
      }

      else
      {
        v45 = v43;
      }

      result = sub_252737E74(result, v45, 1, v23);
      v23 = result;
    }

    v36 &= v36 - 1;
    if (*(v41 + 16))
    {
      if ((*(v23 + 3) >> 1) - *(v23 + 2) < v42)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v42)
      {
        v46 = *(v23 + 2);
        v47 = __OFADD__(v46, v42);
        v48 = v46 + v42;
        if (v47)
        {
          goto LABEL_33;
        }

        *(v23 + 2) = v48;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v40 >= v37)
    {
      break;
    }

    v36 = v33[v40];
    ++v39;
    if (v36)
    {
      v39 = v40;
      goto LABEL_14;
    }
  }

  v49 = *(v0 + 344);

  sub_2528BE790();
  sub_2528BE790();
  v50 = *(v0 + 216);
  v51 = *(v0 + 224);
  v53 = v49[1];
  v52 = v49[2];
  v54 = *v49;
  *(v0 + 176) = *(v49 + 6);
  *(v0 + 144) = v53;
  *(v0 + 160) = v52;
  *(v0 + 128) = v54;
  sub_2528BE5B0();
  v55 = swift_task_alloc();
  *(v0 + 1208) = v55;
  *v55 = v0;
  v55[1] = sub_252764EF4;
  v56 = *(v0 + 760);
  v57 = *(v0 + 728);
  v58 = *(v0 + 688);

  return sub_252791C80(v62, v56, v50, v51, v57, v58);
}

uint64_t sub_252764EF4(uint64_t a1)
{
  v3 = *v2;
  v3[152] = a1;
  v3[153] = v1;

  if (v1)
  {
    v4 = v3[146];
    v5 = v3[95];
    v6 = v3[78];
    v7 = v3[76];

    v4(v6, v7);
    sub_2527213D8(v5, &qword_27F4FC488, &unk_2528C3F80);
    v8 = sub_252765E7C;
  }

  else
  {
    v9 = v3[146];
    v10 = v3[95];
    v11 = v3[78];
    v12 = v3[76];

    v9(v11, v12);
    sub_2527213D8(v10, &qword_27F4FC488, &unk_2528C3F80);
    v8 = sub_2527650A8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void *sub_2527650A8(uint64_t a1)
{
  v106 = v1;
  v101 = v1;
  if (sub_2528C0880())
  {
    v2 = *(v1 + 1216);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v2 + 40;
      do
      {
        v15 = qword_27F4FBB40;
        sub_2528BEA50();
        sub_2528BEA50();
        if (v15 != -1)
        {
          swift_once();
        }

        v16 = sub_2528C08B0();
        __swift_project_value_buffer(v16, qword_27F5025C8);
        sub_2528BEA50();
        sub_2528BEA50();
        v17 = sub_2528C0890();
        v18 = sub_2528C0D10();

        if (os_log_type_enabled(v17, v18))
        {
          v5 = *(v101 + 488);
          v6 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *&v103[0] = v99;
          *v6 = 136315394;
          v98 = v18;
          sub_2528BE6B0();
          v7 = DeviceEntity.debugDescription.getter();
          v9 = v8;
          sub_2527567C0(v5, type metadata accessor for DeviceEntity);
          v10 = sub_2527389AC(v7, v9, v103);

          *(v6 + 4) = v10;
          *(v6 + 12) = 2080;
          sub_2528BE6B0();
          v11 = MEMORY[0x2530A81A0](*(v101 + 328), &type metadata for AttributeResult);
          v13 = v12;

          v14 = sub_2527389AC(v11, v13, v103);

          *(v6 + 14) = v14;
          _os_log_impl(&dword_252711000, v17, v98, "ToggleAttributeIntent: %s resulted in %s", v6, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v99, -1, -1);
          MEMORY[0x2530A8D80](v6, -1, -1);
        }

        else
        {
        }

        v4 += 16;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v19 = sub_2528C08B0();
    __swift_project_value_buffer(v19, qword_27F5025C8);

    v20 = sub_2528C0890();
    v21 = sub_2528C0D10();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v1 + 1216);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      v105[0] = v24;
      *v23 = 136446210;
      v26 = *(v22 + 16);
      v27 = MEMORY[0x277D84F90];
      if (v26)
      {
        v100 = v24;
        v28 = *(v1 + 1216);
        *&v103[0] = MEMORY[0x277D84F90];
        sub_25282F0CC(0, v26, 0);
        v27 = *&v103[0];
        v29 = v28 + 40;
        do
        {
          sub_2528BEA50();
          sub_2528BEA50();
          sub_2528BE6B0();

          v30 = *(v101 + 320);
          *&v103[0] = v27;
          v32 = *(v27 + 16);
          v31 = *(v27 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_25282F0CC((v31 > 1), v32 + 1, 1);
            v27 = *&v103[0];
          }

          *(v27 + 16) = v32 + 1;
          *(v27 + 8 * v32 + 32) = v30;
          v29 += 16;
          --v26;
        }

        while (v26);
        v25 = v100;
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDF8, &qword_2528C5D08);
      v34 = MEMORY[0x2530A81A0](v27, v33);
      v36 = v35;

      v37 = sub_2527389AC(v34, v36, v105);

      *(v23 + 4) = v37;
      _os_log_impl(&dword_252711000, v20, v21, "ToggleAttributeIntent completed with results: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x2530A8D80](v25, -1, -1);
      MEMORY[0x2530A8D80](v23, -1, -1);
    }
  }

  v38 = *(v101 + 1200);
  v39 = *(v38 + 16);
  if (v39)
  {
    v105[0] = MEMORY[0x277D84F90];
    sub_25282F064(0, v39, 0);
    v40 = v105[0];
    v41 = (v38 + 64);
    do
    {
      v42 = *v41;
      v43 = *(v41 - 1);
      v103[0] = *(v41 - 2);
      v103[1] = v43;
      v104 = v42;
      sub_252870158(&v102);
      v44 = v102;
      v105[0] = v40;
      v46 = *(v40 + 16);
      v45 = *(v40 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_25282F064((v45 > 1), v46 + 1, 1);
        v40 = v105[0];
      }

      *(v40 + 16) = v46 + 1;
      *(v40 + v46 + 32) = v44;
      v41 += 40;
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v47 = *(v101 + 1216);
  v48 = *(v101 + 728);
  v49 = *(v101 + 688);
  v50 = *(v101 + 392);
  sub_2528BE790();
  v51 = *(v101 + 272);
  ShowDeviceResultIntent.init()(v50);
  sub_252859C3C(v47, v48, v49, v103);
  *(v101 + 209) = v103[0];
  sub_2528BE7A0();
  sub_2528BE790();
  v52 = *(v101 + 210);
  if (v52 == 4 || (sub_252852964(v52, 1u) & 1) == 0)
  {
  }

  else
  {
    v53 = *(v101 + 1216);
    v54 = *(v101 + 728);
    v55 = swift_task_alloc();
    *(v55 + 16) = v54;
    *(v55 + 24) = v51;
    v56 = sub_252853180(sub_252760634, v55, v53);

    *(v101 + 304) = v56;
    sub_2528BE7A0();
    *(v101 + 312) = v53;

    sub_2528BE7A0();
  }

  sub_25285A33C(v40, v103);

  v57 = v103[0];
  if (LOBYTE(v103[0]) != 2)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v58 = sub_2528C08B0();
    __swift_project_value_buffer(v58, qword_27F5025C8);
    v59 = sub_2528C0890();
    v60 = sub_2528C0D10();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v103[0] = v62;
      *v61 = 136315138;
      if (v57)
      {
        v63 = 0xD000000000000010;
      }

      else
      {
        v63 = 6449010;
      }

      if (v57)
      {
        v64 = 0x80000002528E51C0;
      }

      else
      {
        v64 = 0xE300000000000000;
      }

      v65 = sub_2527389AC(v63, v64, v103);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_252711000, v59, v60, "Setting SecondaryAccessoryControlDestinationin in ShowDeviceResultIntent: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x2530A8D80](v62, -1, -1);
      MEMORY[0x2530A8D80](v61, -1, -1);
    }

    *(v101 + 212) = v57 & 1;
    sub_2528BE7A0();
  }

  v66 = _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(*(v101 + 1216));
  v67 = v66;
  v69 = v68;
  v70 = *(v66 + 16);
  if (v70)
  {
    v71 = sub_252865988(*(v66 + 16), 0);
    v72 = sub_252868828(v103, v71 + 4, v70, v67);
    sub_25271A648(*&v103[0]);
    if (v72 == v70)
    {
      goto LABEL_48;
    }

    __break(1u);
  }

  v71 = MEMORY[0x277D84F90];
LABEL_48:
  *(v101 + 280) = v71;
  sub_2528BE7A0();
  v73 = *(v69 + 16);
  if (v73)
  {
    v74 = sub_252865988(*(v69 + 16), 0);
    v75 = sub_252868828(v103, v74 + 4, v73, v69);
    sub_25271A648(*&v103[0]);
    if (v75 == v73)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  v74 = MEMORY[0x277D84F90];
LABEL_52:
  v77 = *(v101 + 392);
  v76 = *(v101 + 400);
  *(v101 + 288) = v74;
  sub_2528BE7A0();
  sub_25275663C(v77, v76);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v78 = *(v101 + 400);
  v79 = *(v101 + 384);
  v80 = sub_2528C08B0();
  __swift_project_value_buffer(v80, qword_27F5025C8);
  sub_2527691F4(v78, v79, type metadata accessor for ShowDeviceResultIntent);
  v81 = sub_2528C0890();
  v82 = sub_2528C0D10();
  v83 = os_log_type_enabled(v81, v82);
  v84 = *(v101 + 384);
  if (v83)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v103[0] = v86;
    *v85 = 136315138;
    result = sub_2528BE790();
    v88 = *(v101 + 211);
    if (v88 <= 1)
    {
      if (*(v101 + 211))
      {
        v90 = 0x6B6E694C70656564;
      }

      else
      {
        v90 = 0x726577736E61;
      }

      if (*(v101 + 211))
      {
        v89 = 0xE800000000000000;
      }

      else
      {
        v89 = 0xE600000000000000;
      }
    }

    else if (v88 == 2)
    {
      v89 = 0xE600000000000000;
      v90 = 0x656369746F6ELL;
    }

    else
    {
      if (v88 != 3)
      {
        __break(1u);
        return result;
      }

      v89 = 0xE600000000000000;
      v90 = 0x686372616573;
    }

    sub_2527567C0(*(v101 + 384), type metadata accessor for ShowDeviceResultIntent);
    v91 = sub_2527389AC(v90, v89, v103);

    *(v85 + 4) = v91;
    _os_log_impl(&dword_252711000, v81, v82, "ToggleAttributeValueIntent returning ShowDeviceResultIntent for %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v86);
    MEMORY[0x2530A8D80](v86, -1, -1);
    MEMORY[0x2530A8D80](v85, -1, -1);
  }

  else
  {

    sub_2527567C0(v84, type metadata accessor for ShowDeviceResultIntent);
  }

  v92 = *(v101 + 728);
  v93 = *(v101 + 704);
  v97 = *(v101 + 696);
  v94 = *(v101 + 688);
  *(v101 + 296) = *(v101 + 1216);
  v95 = *(v101 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD8, &qword_2528C5D00);
  sub_2527566A0();
  sub_25276926C(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent, &protocol conformance descriptor for ShowDeviceResultIntent);
  sub_2528BE650();
  sub_2527567C0(v95, type metadata accessor for ShowDeviceResultIntent);
  sub_2527213D8(v94, &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v93 + 8))(v92, v97);

  v96 = *(v101 + 8);

  return v96();
}

uint64_t sub_252765E7C()
{
  v1 = v0[91];
  v2 = v0[88];
  v3 = v0[87];
  sub_2527213D8(v0[86], &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252766100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = *(type metadata accessor for DeviceEntity(0) - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527661BC, 0, 0);
}

void *sub_2527661BC()
{
  v22 = v0;
  result = sub_2528BE790();
  v2 = *(v0 + 16);
  v18 = *(v2 + 16);
  if (v18)
  {
    v3 = 0;
    v15 = *(v0 + 48);
    v17 = v2 + 32;
    v4 = MEMORY[0x277D84FA0];
    v16 = *(v0 + 16);
    while (v3 < *(v2 + 16))
    {
      v8 = *(v17 + v3);
      sub_2528BE790();
      v9 = *(v0 + 24);
      v20 = v4;
      v10 = *(v9 + 16);
      if (v10)
      {
        v19 = v8;
        v11 = v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v12 = *(v15 + 72);
        do
        {
          v13 = *(v0 + 56);
          sub_2527691F4(v11, v13, type metadata accessor for DeviceEntity);
          sub_2528BE6B0();
          sub_25273A214(v21, *(v0 + 64));
          sub_2527567C0(v13, type metadata accessor for DeviceEntity);
          v11 += v12;
          --v10;
        }

        while (v10);

        v5 = v20;
        v2 = v16;
        v4 = MEMORY[0x277D84FA0];
        v8 = v19;
      }

      else
      {

        v5 = v4;
      }

      ++v3;
      v6 = swift_task_alloc();
      v7 = *(v0 + 32);
      *(v6 + 16) = v8;
      *(v6 + 24) = vextq_s8(v7, v7, 8uLL);
      sub_2527E4D64(sub_2527692B4, v6, v5);

      if (v3 == v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v14 = *(v0 + 8);

    return v14();
  }

  return result;
}

uint64_t sub_2527663D0(_WORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v7 = sub_2528BF400();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19[-v11];
  LOWORD(a1) = *a1;
  v13 = sub_2528C0C40();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v7);
  v14 = (*(v8 + 80) + 35) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  *(v15 + 34) = v20;
  (*(v8 + 32))(v15 + v14, &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v7);
  v16 = v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = *(a4 + 16);
  *v16 = *a4;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(a4 + 32);
  *(v16 + 48) = *(a4 + 48);
  sub_2527691BC(a4, v21);
  sub_2527D3E74(0, 0, v12, &unk_2528C6730, v15);
}

uint64_t sub_252766604(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 256) = a6;
  *(v7 + 264) = a7;
  *(v7 + 89) = a5;
  *(v7 + 90) = a4;
  *(v7 + 248) = a1;
  v8 = sub_2528BEC90();
  *(v7 + 272) = v8;
  *(v7 + 280) = *(v8 - 8);
  *(v7 + 288) = swift_task_alloc();
  v9 = sub_2528BEEC0();
  *(v7 + 296) = v9;
  *(v7 + 304) = *(v9 - 8);
  *(v7 + 312) = swift_task_alloc();
  v10 = sub_2528BF400();
  *(v7 + 320) = v10;
  *(v7 + 328) = *(v10 - 8);
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 360) = swift_task_alloc();
  v11 = sub_2528BE8B0();
  *(v7 + 368) = v11;
  *(v7 + 376) = *(v11 - 8);
  *(v7 + 384) = swift_task_alloc();
  v12 = sub_2528BECF0();
  *(v7 + 392) = v12;
  *(v7 + 400) = *(v12 - 8);
  *(v7 + 408) = swift_task_alloc();
  v13 = sub_2528BEE30();
  *(v7 + 416) = v13;
  *(v7 + 424) = *(v13 - 8);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527668F8, 0, 0);
}

uint64_t sub_2527668F8(uint64_t a1)
{
  v2 = *(v1 + 440);
  v4 = *(v1 + 416);
  v3 = *(v1 + 424);
  v6 = *(v1 + 376);
  v5 = *(v1 + 384);
  v14 = *(v1 + 368);
  v7 = *(v1 + 264);
  sub_2528BF2F0();
  sub_2528BEE00();
  v8 = *(v3 + 8);
  *(v1 + 448) = v8;
  *(v1 + 456) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v4);
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[2];
  *(v1 + 224) = *(v7 + 6);
  *(v1 + 192) = v10;
  *(v1 + 208) = v11;
  *(v1 + 176) = v9;
  sub_252760F9C();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v6 + 8))(v5, v14);
  sub_2528BE790();
  *(v1 + 464) = *(v1 + 232);
  *(v1 + 92) = *(v1 + 240);
  sub_2528BEFC0();
  v12 = swift_task_alloc();
  *(v1 + 472) = v12;
  *v12 = v1;
  v12[1] = sub_252766A7C;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_252766A7C(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 480) = a1;

  v4 = swift_task_alloc();
  *(v3 + 488) = v4;
  *v4 = v6;
  v4[1] = sub_252766BC8;

  return sub_25279D1DC(a1);
}

uint64_t sub_252766BC8(uint64_t a1)
{
  *(*v1 + 496) = a1;

  return MEMORY[0x2822009F8](sub_252766CC8, 0, 0);
}

uint64_t sub_252766CC8()
{
  v1 = *(v0 + 496);

  if (*(v1 + 16) && (v2 = sub_252785C40(*(v0 + 408)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 352);
    v50 = *(v0 + 360);
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    v9 = *(v0 + 304);
    v10 = *(v0 + 312);
    v11 = *(v0 + 296);
    (*(v9 + 16))(v10, *(*(v0 + 496) + 56) + *(v9 + 72) * v2, v11);

    sub_2528BEE70();
    (*(v9 + 8))(v10, v11);
    (*(v8 + 32))(v5, v6, v7);
    sub_25272006C(v50, v4, &qword_27F4FCE00, &qword_2528C5D20);
    v12 = sub_2528BE890();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v4, 1, v12);
    v15 = *(v0 + 352);
    if (v14 == 1)
    {
      sub_2527213D8(*(v0 + 352), &qword_27F4FCE00, &qword_2528C5D20);
      v51 = 0;
    }

    else
    {
      v51 = sub_2528BE880();
      (*(v13 + 8))(v15, v12);
    }

    v21 = v14 == 1;
    v45 = *(v0 + 448);
    v22 = *(v0 + 432);
    v44 = *(v0 + 416);
    v23 = *(v0 + 400);
    v47 = *(v0 + 392);
    v48 = *(v0 + 408);
    v46 = *(v0 + 360);
    v24 = *(v0 + 344);
    v26 = *(v0 + 320);
    v25 = *(v0 + 328);
    v28 = *(v0 + 280);
    v27 = *(v0 + 288);
    v29 = *(v0 + 272);
    v49 = *(v0 + 89);
    v30 = *(v0 + 90);
    *(v0 + 504) = v21;
    sub_2528BEC80();
    sub_2528BEC60();
    v32 = v31;
    (*(v28 + 8))(v27, v29);
    sub_2528BF2F0();
    v33 = sub_2528BEDD0();
    v45(v22, v44);
    (*(v25 + 8))(v24, v26);
    sub_2527213D8(v46, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v23 + 8))(v48, v47);
    v34 = qword_2528C6740[v49];
    v35 = *(v0 + 464);
    if ((v30 & 0xC000) == 0x4000)
    {
      v36 = HIBYTE(v30) & 0x3F;
    }

    else
    {
      v36 = v30;
    }

    v37 = *(v0 + 248);
    *(v0 + 512) = *(v0 + 92);
    v38 = *(v0 + 504);
    v39 = *(v0 + 512);
    *(v0 + 96) = 0xD000000000000024;
    *(v0 + 104) = 0x80000002528E57B0;
    *(v0 + 112) = v51;
    *(v0 + 120) = v38;
    *(v0 + 128) = v32;
    *(v0 + 136) = v33 & 1;
    *(v0 + 144) = v36 + 1;
    *(v0 + 152) = v34;
    *(v0 + 160) = v35;
    *(v0 + 168) = v39;
    sub_25276940C();
    sub_2528BFA10();
    v40 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v40;
    *(v0 + 73) = *(v0 + 153);
    v41 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v41;
    sub_252769460(v0 + 16);
    *v37 = 0;
  }

  else
  {
    v17 = *(v0 + 400);
    v16 = *(v0 + 408);
    v18 = *(v0 + 392);
    v19 = *(v0 + 360);
    v20 = *(v0 + 248);

    sub_2527213D8(v19, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v17 + 8))(v16, v18);
    *v20 = 1;
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_252767110@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB660 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F5028C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527671B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_25276726C;

  return sub_252761054(a1);
}

uint64_t sub_25276726C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_252767360@<D0>(uint64_t a1@<X8>)
{
  sub_252768530(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_2527673AC(uint64_t a1)
{
  v2 = sub_252760F9C();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_252767404(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25276744C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2527674A8()
{
  v0 = 7104878;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v1);
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0xD000000000000010, 0x80000002528E57E0);
  sub_2528BE790();
  v2 = MEMORY[0x2530A81A0](v19, &type metadata for AttributeKind);
  v4 = v3;

  MEMORY[0x2530A80B0](v2, v4);

  MEMORY[0x2530A80B0](0x7365636976656420, 0xEA0000000000203ALL);
  sub_2528BE790();
  v5 = type metadata accessor for DeviceEntity(0);
  v6 = MEMORY[0x2530A81A0](v19, v5);
  v8 = v7;

  MEMORY[0x2530A80B0](v6, v8);

  MEMORY[0x2530A80B0](0x746E45656D6F6820, 0xED0000203A797469);
  sub_2528BE790();
  v9 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v9);

  MEMORY[0x2530A80B0](0x746E45656E6F7A20, 0xEF203A7365697469);
  sub_2528BE790();
  if (v19)
  {
    v10 = type metadata accessor for ZoneEntity(0);
    v11 = MEMORY[0x2530A81C0](v19, v10);
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x2530A80B0](v11, v13);

  MEMORY[0x2530A80B0](0x746E456D6F6F7220, 0xEF203A7365697469);
  sub_2528BE790();
  if (v19)
  {
    v14 = type metadata accessor for RoomEntity(0);
    v0 = MEMORY[0x2530A81C0](v19, v14);
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x2530A80B0](v0, v16);

  MEMORY[0x2530A80B0](0x74756F656D697420, 0xEA0000000000203ALL);
  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE10, &unk_2528C6280);
  v17 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v17);

  return 0;
}

uint64_t sub_2527677E4@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  sub_2527FECD0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v6 = sub_252755F54();
  MEMORY[0x2530A60E0](&v31, &v45, v5, &type metadata for DeviceEntityFromAccessoryTypeResolver, v6);
  v38[4] = v49;
  v38[5] = v50;
  v38[6] = v51;
  v38[0] = v45;
  v38[1] = v46;
  v38[2] = v47;
  v38[3] = v48;
  sub_252755FA8(v38);
  sub_2527FECD0();
  v7 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v24, &v45, v5, &type metadata for DeviceEntityFromInputTypeResolver, v7);
  v39[4] = v49;
  v39[5] = v50;
  v39[6] = v51;
  v39[0] = v45;
  v39[1] = v46;
  v39[2] = v47;
  v39[3] = v48;
  sub_252756050(v39);
  v40[4] = v35;
  v40[5] = v36;
  v40[6] = v37;
  v40[0] = v31;
  v40[1] = v32;
  v40[2] = v33;
  v40[3] = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  sub_2527560A4(v40, &v45);
  sub_252756100();
  sub_2528BEAA0();
  v41[4] = v21;
  v41[5] = v22;
  v41[6] = v23;
  v41[0] = v17;
  v41[1] = v18;
  v41[2] = v19;
  v41[3] = v20;
  sub_252755FA8(v41);
  v42[4] = v28;
  v42[5] = v29;
  v42[6] = v30;
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = v26;
  v42[3] = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  sub_2527561B4(v42, &v45);
  v9[2] = v6;
  v9[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v43[4] = v14;
  v43[5] = v15;
  v43[6] = v16;
  v43[0] = v10;
  v43[1] = v11;
  v43[3] = v13;
  v43[2] = v12;
  sub_252756050(v43);
  (*(v2 + 8))(v4, v1);
  v44[4] = v28;
  v44[5] = v29;
  v44[6] = v30;
  v44[0] = v24;
  v44[1] = v25;
  v44[3] = v27;
  v44[2] = v26;
  sub_252756050(v44);
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  return sub_252755FA8(&v45);
}

uint64_t sub_252767B18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD78, &qword_2528C5C90);
  v1 = sub_252756318();
  MEMORY[0x2530A60E0](&v4, &v3, v0, &type metadata for ZoneEntityFromNameResolver, v1);

  v3 = v4;
  sub_25275636C();
  sub_2528BEAA0();
}

uint64_t sub_252767BF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v0 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  v1 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  v2 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  swift_getKeyPath();
  v7 = v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = sub_2528BE9C0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD58, &qword_2528C5C88);
  v5 = sub_252756210();
  MEMORY[0x2530A60E0](v12, &v7, v4, &type metadata for RoomEntityFromNameResolver, v5);

  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];
  v11 = v12[4];
  sub_252756264();
  sub_2528BEAA0();
}

void *sub_252767DF0(uint64_t a1)
{
  v2 = type metadata accessor for DeviceEntity(0);
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  MEMORY[0x28223BE20](v2);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25278D51C(MEMORY[0x277D84F90]);
  v64 = *(a1 + 16);
  if (!v64)
  {
LABEL_48:
    if (qword_27F4FBB40 != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  v6 = 0;
  v62 = 0x80000002528E4FB0;
  v63 = a1 + 32;
  while (1)
  {
    v69 = v6;
    v7 = (v63 + 16 * v6);
    v8 = v7[1];
    v71 = *v7;
    v72 = v5;
    sub_2528BEA50();
    sub_2528BEA50();
    v68 = v8;
    sub_2528BE6B0();
    v9 = *(v74 + 16);
    v70 = v74;
    if (v9)
    {
      v10 = v74 + 40;
      v73 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_2528BEA50();
        sub_2528BEA50();
        sub_2528BE6B0();
        v11 = v74;
        v12 = v75;
        v13 = v76;
        v14 = v77;
        v15 = v78;
        v16 = v79;
        if (!v79)
        {
          sub_25276925C(v74, v75, v76, v77, v78, 0);
          sub_2528BE6B0();
          v17 = v74;
          v18 = v75;
          v5 = v76;
          v19 = v77;
          v20 = v78;
          v21 = v79;
          if (v79)
          {

            sub_25276925C(v17, v18, v5, v19, v20, v21);
            goto LABEL_9;
          }

          if (v78 >> 1 == 46)
          {
            if (v74)
            {
              v26 = v62;
            }

            else
            {
              v26 = 0xE900000000000065;
            }

            if (v26 == 0xE900000000000065 && (v74 & 1) == 0)
            {

              goto LABEL_27;
            }

            LODWORD(v66) = sub_2528C1060();

            if (v66)
            {
LABEL_27:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v28 = 1;
              if (isUniquelyReferenced_nonNull_native)
              {
                v28 = 1;
                goto LABEL_30;
              }

LABEL_34:
              v66 = v28;
              v73 = sub_252737E74(0, *(v73 + 2) + 1, 1, v73);
            }

            else
            {
              v29 = swift_isUniquelyReferenced_nonNull_native();
              v28 = 0;
              if ((v29 & 1) == 0)
              {
                goto LABEL_34;
              }

LABEL_30:
              v66 = v28;
            }

            v31 = *(v73 + 2);
            v30 = *(v73 + 3);
            v65 = v31 + 1;
            if (v31 >= v30 >> 1)
            {
              v73 = sub_252737E74((v30 > 1), v31 + 1, 1, v73);
            }

            sub_25276925C(v17, v18, v5, v19, v20, 0);

            v32 = v73;
            *(v73 + 2) = v65;
            v33 = &v32[40 * v31];
            *(v33 + 4) = v66;
            *(v33 + 5) = 0;
            *(v33 + 6) = 0;
            *(v33 + 7) = 0;
            v33[64] = 92;
            goto LABEL_9;
          }

          if (v78 >> 1 == 44)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_252737E74(0, *(v73 + 2) + 1, 1, v73);
            }

            v23 = *(v73 + 2);
            v22 = *(v73 + 3);
            if (v23 >= v22 >> 1)
            {
              v73 = sub_252737E74((v22 > 1), v23 + 1, 1, v73);
            }

            v24 = v73;
            *(v73 + 2) = v23 + 1;
            v25 = &v24[40 * v23];
            *(v25 + 4) = (v17 & 1) == 0;
            *(v25 + 5) = 0;
            *(v25 + 6) = 0;
            *(v25 + 7) = 0;
            v25[64] = 88;
            goto LABEL_9;
          }

          v11 = v74;
          v12 = v75;
          v13 = v76;
          v14 = v77;
          v15 = v78;
          v16 = 0;
        }

        sub_25276925C(v11, v12, v13, v14, v15, v16);

LABEL_9:
        v10 += 16;
        if (!--v9)
        {
          goto LABEL_36;
        }
      }
    }

    v73 = MEMORY[0x277D84F90];
LABEL_36:

    v34 = v73;
    if (*(v73 + 2))
    {
      break;
    }

    v5 = v72;
LABEL_4:
    v6 = v69 + 1;
    if (v69 + 1 == v64)
    {
      goto LABEL_48;
    }
  }

  v35 = v67;
  sub_2528BE6B0();
  v36 = v72;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v36;
  v38 = sub_252785BD4(v35);
  v40 = *(v36 + 16);
  v41 = (v39 & 1) == 0;
  v42 = __OFADD__(v40, v41);
  v43 = v40 + v41;
  if (!v42)
  {
    v44 = v39;
    if (*(v36 + 24) >= v43)
    {
      if ((v37 & 1) == 0)
      {
        v46 = v38;
        sub_2527E12F8();
        v38 = v46;
        v5 = v74;
        if (v44)
        {
          goto LABEL_43;
        }

        goto LABEL_45;
      }
    }

    else
    {
      sub_2527DE0A0(v43, v37);
      v38 = sub_252785BD4(v67);
      if ((v44 & 1) != (v45 & 1))
      {
        result = sub_2528C10A0();
        __break(1u);
        return result;
      }
    }

    v5 = v74;
    if (v44)
    {
LABEL_43:
      *(v5[7] + 8 * v38) = v34;

LABEL_47:
      sub_2527567C0(v67, type metadata accessor for DeviceEntity);

      goto LABEL_4;
    }

LABEL_45:
    v5[(v38 >> 6) + 8] |= 1 << v38;
    v47 = v38;
    sub_2527691F4(v67, v5[6] + *(v61 + 72) * v38, type metadata accessor for DeviceEntity);
    *(v5[7] + 8 * v47) = v34;
    v48 = v5[2];
    v42 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v42)
    {
      goto LABEL_53;
    }

    v5[2] = v49;
    goto LABEL_47;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  swift_once();
LABEL_49:
  v50 = sub_2528C08B0();
  __swift_project_value_buffer(v50, qword_27F5025C8);
  v51 = sub_2528C0890();
  v52 = sub_2528C0D10();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v74 = v54;
    *v53 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE90, &qword_2528C6720);
    sub_25276926C(&qword_27F4FCE98, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
    v55 = sub_2528C08E0();
    v57 = v56;

    v58 = sub_2527389AC(v55, v57, &v74);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_252711000, v51, v52, "Created toggle dictionary %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x2530A8D80](v54, -1, -1);
    MEMORY[0x2530A8D80](v53, -1, -1);
  }

  return v5;
}

uint64_t sub_252768530@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC78, &unk_2528C5B30);
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x28223BE20](v1);
  v61 = &v54 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v54 - v4;
  v77 = sub_2528BE950();
  v5 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - v15;
  v17 = sub_2528BEC40();
  v76 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF0, &unk_2528C6600);
  sub_2528BEC20();
  v21 = *(v18 + 56);
  v75 = v18 + 56;
  v71 = v21;
  v21(v16, 1, 1, v17);
  v78 = 0;
  v22 = sub_2528BE630();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v24(v13, 1, 1, v22);
  v24(v11, 1, 1, v22);
  v74 = *MEMORY[0x277CBA308];
  v68 = *(v5 + 104);
  v68(v7);
  v70 = v5 + 104;
  sub_25272E944();
  v66 = v20;
  v60 = sub_2528BE7D0();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCD8, &qword_2528C5B68);
  sub_2528BEC20();
  v71(v16, 1, 1, v76);
  v82 = 0;
  v72 = v24;
  v73 = v25;
  v24(v13, 1, 1, v22);
  v26 = v22;
  v24(v11, 1, 1, v22);
  (v68)(v7, v74, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  v69 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70, MEMORY[0x277CBA480]);
  sub_25276926C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v65 = v16;
  v54 = v13;
  v27 = v11;
  v59 = sub_2528BE7E0();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v28 = v76;
  v71(v16, 1, 1, v76);
  v29 = type metadata accessor for HomeEntity(0);
  (*(*(v29 - 8) + 56))(v58, 1, 1, v29);
  v67 = v26;
  v30 = v72;
  v72(v13, 1, 1, v26);
  v30(v27, 1, 1, v26);
  v55 = v7;
  v31 = v77;
  v32 = v68;
  (v68)(v7, v74, v77);
  sub_25276926C(&qword_27F4FCC90, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
  v33 = v65;
  v34 = v54;
  v58 = sub_2528BE7F0();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC98, &unk_2528C60A0);
  sub_2528BEC20();
  v35 = v71;
  v71(v33, 1, 1, v28);
  v36 = v35;
  v81 = 0;
  v37 = v34;
  v38 = v67;
  v39 = v72;
  v72(v34, 1, 1, v67);
  v39(v27, 1, 1, v38);
  v40 = v55;
  (v32)(v55, v74, v31);
  v41 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCA0, &unk_2528C5B50);
  sub_25272275C(&qword_27F4FCCA8, &qword_27F4FCCA0, &unk_2528C5B50, v69);
  sub_25276926C(&qword_27F4FCCB0, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
  v42 = v65;
  v43 = v37;
  v44 = v27;
  v57 = sub_2528BE7E0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCB8, &unk_2528C60B0);
  sub_2528BEC20();
  v36(v42, 1, 1, v76);
  v80 = 0;
  v45 = v37;
  v46 = v67;
  v47 = v72;
  v72(v45, 1, 1, v67);
  v47(v44, 1, 1, v46);
  v48 = v74;
  (v41)(v40, v74, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCC0, &qword_2528C5B60);
  sub_25272275C(&qword_27F4FCCC8, &qword_27F4FCCC0, &qword_2528C5B60, v69);
  sub_25276926C(&qword_27F4FCCD0, type metadata accessor for RoomEntity, &protocol conformance descriptor for RoomEntity);
  v49 = sub_2528BE7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF8, &unk_2528C5B80);
  sub_2528BEC20();
  v71(v42, 1, 1, v76);
  v78 = 0;
  v79 = 1;
  v72(v43, 1, 1, v46);
  (*(v62 + 104))(v61, *MEMORY[0x277CB9ED0], v63);
  (v41)(v40, v48, v77);
  result = sub_2528BE820();
  v51 = v64;
  v52 = v59;
  *v64 = v60;
  v51[1] = v52;
  v53 = v57;
  v51[2] = v58;
  v51[3] = v53;
  v51[4] = v49;
  v51[5] = result;
  v51[6] = &unk_286493B98;
  return result;
}

uint64_t sub_2527690C8(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25271F3AC;

  return sub_252766100(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_2527691F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_25276925C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (!a6)
  {
    sub_25272C15C(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_25276926C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2527692D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2528BF400() - 8);
  v6 = (*(v5 + 80) + 35) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 34);
  v11 = *(v1 + 32);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2527228B0;

  return sub_252766604(a1, v8, v9, v11, v10, v1 + v6, v1 + v7);
}

unint64_t sub_25276940C()
{
  result = qword_27F4FCEA0;
  if (!qword_27F4FCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCEA0);
  }

  return result;
}

unint64_t sub_2527694B8()
{
  result = qword_27F4FCEC0;
  if (!qword_27F4FCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCEC0);
  }

  return result;
}

unint64_t sub_252769510()
{
  result = qword_27F4FCEC8;
  if (!qword_27F4FCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCEC8);
  }

  return result;
}

unint64_t sub_2527695E8()
{
  result = qword_27F4FCED0;
  if (!qword_27F4FCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCED0);
  }

  return result;
}

uint64_t sub_25276963C()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F5028D8);
  __swift_project_value_buffer(v0, qword_27F5028D8);
  return sub_2528BEC20();
}

uint64_t sub_2527696F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE0, &qword_2528C6A78);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527697CC, 0, 0);
}

uint64_t sub_2527697CC()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_2528C08B0();
  v0[9] = __swift_project_value_buffer(v3, qword_27F5025C8);
  sub_2527BBF9C(v1, v2);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v5 = v0[4];
  v6 = sub_2528C0820();
  v0[10] = __swift_project_value_buffer(v6, qword_27F5025E0);
  v0[11] = sub_2528B82F8(v4, v5);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_252769920;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_252769C38(v10, v8, v9);
}

uint64_t sub_252769920()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_252769B78;
  }

  else
  {
    v2 = sub_252769A34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252769A34()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  (*(v3 + 16))(v2, v0[2], v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v4);
  sub_2527BD068(v6, v5, v1, sub_25276E7BC, v8);

  sub_2527BE360(v6, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_252769B78()
{
  v1 = v0[13];
  v3 = v0[3];
  v2 = v0[4];
  sub_2527BF228(v3, v2, v0[11], v1);
  sub_2527C0650(v3, v2, v1);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_252769C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v6 = type metadata accessor for HomeEntity(0);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  v3[22] = swift_task_alloc();
  v7 = sub_2528BFB20();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  v8 = sub_2528C00D0();
  v3[26] = v8;
  v3[27] = *(v8 - 8);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v9 = sub_2528BECF0();
  v3[31] = v9;
  v3[32] = *(v9 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v10 = type metadata accessor for DeviceEntity(0);
  v3[35] = v10;
  v3[36] = *(v10 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[45] = v11;
  *v11 = v3;
  v11[1] = sub_25276A010;

  return sub_25276B430(a2, a3);
}

uint64_t sub_25276A010(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25276A228, 0, 0);
  }
}

uint64_t sub_25276A228()
{
  v1 = *(v0[46] + 16);
  v0[47] = v1;
  if (v1)
  {
    v2 = v0[41];
    sub_2528BE790();
    v3 = sub_2528C00B0();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_task_alloc();
    v0[48] = v4;
    *v4 = v0;
    v4[1] = sub_25276A48C;
    v5 = v0[44];
    v6 = v0[41];

    return sub_2527817B8(v5, v6);
  }

  else
  {

    v0[15] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF08, &unk_2528C6B30);
    sub_25276E9C8();
    sub_2528BE660();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_25276A48C(uint64_t a1)
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 328);
  *(*v1 + 392) = a1;

  sub_2527213D8(v3, &qword_27F4FC478, &unk_2528C3F70);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_25276A5E8, 0, 0);
}

uint64_t sub_25276A5E8()
{
  v113 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 320);
  v106 = *(v0 + 288);
  v4 = *(v0 + 256);
  v103 = *(v0 + 216);
  v5 = *(v0 + 192);
  v110 = *(v0 + 160);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF8, &qword_2528C6AD8);
  v8 = sub_25272275C(&qword_27F4FCF00, &qword_27F4FCEF8, &qword_2528C6AD8, MEMORY[0x277D834C8]);
  *(v0 + 16) = v1;
  *(v0 + 48) = v8;
  v9 = sub_2528C0C40();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_25276E828(v0 + 16, v0 + 56);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  sub_25271A650((v0 + 56), (v10 + 5));
  v10[10] = v7;
  v10[11] = v6;
  v109 = v1;

  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3E74(0, 0, v3, &unk_2528C6B20, v10);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v102 = sub_25278DDE0(MEMORY[0x277D84F90]);
  v11 = 0;
  v101 = v2 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v104 = (v110 + 48);
  v105 = (v4 + 56);
  v12 = (v4 + 48);
  v93 = (v4 + 16);
  v107 = (v4 + 32);
  v13 = (v4 + 8);
  v99 = (v5 + 48);
  v94 = (v5 + 8);
  v95 = (v5 + 32);
  v98 = (v103 + 8);
  v100 = v13;
  v111 = v12;
  do
  {
    if (v11 >= *(*(v0 + 368) + 16))
    {
      __break(1u);
      goto LABEL_33;
    }

    v24 = *(v0 + 344);
    v25 = *(v0 + 152);
    v108 = v11;
    sub_25276E960(v101 + *(v106 + 72) * v11, *(v0 + 312), type metadata accessor for DeviceEntity);
    sub_2528BE790();
    v26 = *v104;
    if ((*v104)(v24, 1, v25))
    {
      v27 = *(v0 + 392);
      v29 = *(v0 + 240);
      v28 = *(v0 + 248);
      v30 = *(v0 + 232);
      sub_2527213D8(*(v0 + 344), &qword_27F4FC488, &unk_2528C3F80);
      v31 = *v105;
      (*v105)(v30, 1, 1, v28);
      sub_25281A8C0(v27, v29);
      v32 = *v111;
      if ((*v111)(v30, 1, v28) != 1)
      {
        sub_2527213D8(*(v0 + 232), &qword_27F4FC628, &qword_2528C4750);
      }
    }

    else
    {
      v33 = *(v0 + 344);
      v35 = *(v0 + 240);
      v34 = *(v0 + 248);
      v36 = *(v0 + 232);
      (*v93)(v36, v33, v34);
      sub_2527213D8(v33, &qword_27F4FC488, &unk_2528C3F80);
      v31 = *v105;
      (*v105)(v36, 0, 1, v34);
      (*v107)(v35, v36, v34);
      v31(v35, 0, 1, v34);
      v32 = *v12;
    }

    v37 = *(v0 + 240);
    v38 = *(v0 + 248);
    if (v32(v37, 1, v38) == 1)
    {
      v63 = *(v0 + 312);

      sub_2527213D8(v37, &qword_27F4FC628, &qword_2528C4750);
      type metadata accessor for HomeAppIntentError(0);
      sub_25276EA4C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_28:
      sub_25276EA94(v63, type metadata accessor for DeviceEntity);

      v83 = *(v0 + 8);
      goto LABEL_29;
    }

    (*v107)(*(v0 + 272), v37, v38);
    if (!*(v109 + 16) || (v39 = sub_252785C40(*(v0 + 272)), (v40 & 1) == 0))
    {

      v64 = *(v0 + 336);
      v65 = *(v0 + 272);
      v66 = *(v0 + 248);
      v67 = *(v0 + 152);

      type metadata accessor for HomeAppIntentError(0);
      sub_25276EA4C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      v69 = v68;
      v70 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
      (*v93)(v69, v65, v66);
      v31(v69, 0, 1, v66);
      sub_2528BE790();
      v71 = v26(v64, 1, v67);
      v72 = *(v0 + 336);
      if (v71)
      {
        sub_2527213D8(v72, &qword_27F4FC488, &unk_2528C3F80);
        v73 = 0;
        v74 = 0;
      }

      else
      {
        v84 = *(v0 + 168);
        v85 = *(v0 + 336);
        sub_25276E960(v72, v84, type metadata accessor for HomeEntity);
        sub_2527213D8(v85, &qword_27F4FC488, &unk_2528C3F80);
        sub_2528BE6B0();
        v73 = *(v0 + 96);
        v74 = *(v0 + 104);
        sub_25276EA94(v84, type metadata accessor for HomeEntity);
      }

      v63 = *(v0 + 312);
      v86 = *(v0 + 272);
      v87 = *(v0 + 248);
      *v70 = v73;
      v70[1] = v74;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*v100)(v86, v87);
      goto LABEL_28;
    }

    v41 = *(v0 + 264);
    v42 = *(v0 + 248);
    v44 = *(v0 + 176);
    v43 = *(v0 + 184);
    (*(v103 + 16))(*(v0 + 224), *(v109 + 56) + *(v103 + 72) * v39, *(v0 + 208));
    sub_252819FA8(v41);
    sub_2528C0080();
    v45 = *v13;
    (*v13)(v41, v42);
    if ((*v99)(v44, 1, v43) == 1)
    {
      sub_2527213D8(*(v0 + 176), &qword_27F4FCEF0, &unk_2528C6AB0);
      if (qword_27F4FBB40 != -1)
      {
        swift_once();
      }

      v46 = *(v0 + 304);
      v47 = *(v0 + 312);
      v48 = sub_2528C08B0();
      __swift_project_value_buffer(v48, qword_27F5025C8);
      sub_25276E960(v47, v46, type metadata accessor for DeviceEntity);
      v49 = sub_2528C0890();
      v10 = sub_2528C0D10();
      v50 = os_log_type_enabled(v49, v10);
      v52 = *(v0 + 304);
      v51 = *(v0 + 312);
      if (v50)
      {
        v53 = *(v0 + 296);
        v97 = v45;
        v91 = *(v0 + 248);
        v92 = *(v0 + 272);
        v89 = *(v0 + 208);
        v90 = *(v0 + 224);
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v112[0] = v55;
        *v54 = 136315138;
        sub_25276E960(v52, v53, type metadata accessor for DeviceEntity);
        v56 = sub_2528C0A10();
        v58 = v57;
        sub_25276EA94(v52, type metadata accessor for DeviceEntity);
        v59 = sub_2527389AC(v56, v58, v112);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_252711000, v49, v10, "No endpoint found for %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        MEMORY[0x2530A8D80](v55, -1, -1);
        MEMORY[0x2530A8D80](v54, -1, -1);

        (*v98)(v90, v89);
        v13 = v100;
        v97(v92, v91);
      }

      else
      {
        v10 = *(v0 + 272);
        v60 = *(v0 + 248);
        v61 = *(v0 + 224);
        v62 = *(v0 + 208);

        sub_25276EA94(v52, type metadata accessor for DeviceEntity);
        (*v98)(v61, v62);
        v13 = v100;
        v45(v10, v60);
      }

      v23 = v51;
    }

    else
    {
      v10 = *(v0 + 312);
      v96 = *(v0 + 272);
      v14 = *(v0 + 248);
      v15 = *(v0 + 224);
      v17 = *(v0 + 200);
      v16 = *(v0 + 208);
      v18 = *(v0 + 184);
      (*v95)(v17, *(v0 + 176), v18);
      v19 = v45;
      v20 = sub_25276E0C8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112[0] = v102;
      sub_25278BC58(v20, v10, isUniquelyReferenced_nonNull_native);
      v102 = v112[0];
      v22 = v18;
      v13 = v100;
      (*v94)(v17, v22);
      (*v98)(v15, v16);
      v19(v96, v14);
      v23 = v10;
    }

    sub_25276EA94(v23, type metadata accessor for DeviceEntity);
    v11 = v108 + 1;
    v12 = v111;
  }

  while (v108 + 1 != *(v0 + 376));

  v10 = sub_25272E628(v102);

  if (qword_27F4FBB40 == -1)
  {
    goto LABEL_23;
  }

LABEL_33:
  swift_once();
LABEL_23:
  v75 = sub_2528C08B0();
  __swift_project_value_buffer(v75, qword_27F5025C8);

  v76 = sub_2528C0890();
  v77 = sub_2528C0D10();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v112[0] = v79;
    *v78 = 136315138;
    v80 = MEMORY[0x2530A81A0](v10, &type metadata for DeviceInfoResult);
    v82 = sub_2527389AC(v80, v81, v112);

    *(v78 + 4) = v82;
    _os_log_impl(&dword_252711000, v76, v77, "GetDeviceInfoIntent finished with results %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    MEMORY[0x2530A8D80](v79, -1, -1);
    MEMORY[0x2530A8D80](v78, -1, -1);
  }

  *(v0 + 112) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF08, &unk_2528C6B30);
  sub_25276E9C8();
  sub_2528BE660();

  v83 = *(v0 + 8);
LABEL_29:

  return v83();
}

uint64_t sub_25276B430(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25276B510, 0, 0);
}

uint64_t sub_25276B510()
{
  sub_2528BE790();
  v1 = v0[2];
  if (v1)
  {

    v2 = v0[1];
    v3 = v1;
  }

  else
  {
    if (qword_27F4FB650 != -1)
    {
      swift_once();
    }

    if (dword_27F5028A0 == 7)
    {
      if (qword_27F4FB670 != -1)
      {
        swift_once();
      }

      v5 = v0[6];
      v6 = sub_2528C00B0();
      v7 = __swift_project_value_buffer(v6, qword_27F4FCEA8);
      v8 = *(v6 - 8);
      (*(v8 + 16))(v5, v7, v6);
      (*(v8 + 56))(v5, 0, 1, v6);
    }

    else
    {
      v9 = v0[6];
      v10 = sub_2528C00B0();
      (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    }

    sub_25276EAF4(v0[6], v0[7]);
    sub_2528BE790();
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = sub_25276B780;
    v3 = v0[5];
    v2 = sub_2528354DC;
  }

  return v2(v3);
}

uint64_t sub_25276B780(uint64_t a1)
{
  v4 = *v2;
  v4[9] = v1;

  v5 = v4[5];
  if (v1)
  {
    sub_2527213D8(v5, &qword_27F4FC488, &unk_2528C3F80);
    v6 = sub_25276B988;
  }

  else
  {
    v4[10] = a1;
    sub_2527213D8(v5, &qword_27F4FC488, &unk_2528C3F80);
    v6 = sub_25276B8E8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_25276B8E8()
{
  sub_2527213D8(v0[7], &qword_27F4FC478, &unk_2528C3F70);
  v1 = v0[10];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_25276B988()
{
  sub_2527213D8(*(v0 + 56), &qword_27F4FC478, &unk_2528C3F70);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25276BA24()
{
  v0 = sub_2528C00B0();
  __swift_allocate_value_buffer(v0, qword_27F4FCEA8);
  v1 = __swift_project_value_buffer(v0, qword_27F4FCEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC658, &qword_2528C4770);
  v2 = sub_2528BFCF0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2528C3910;
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D15EE0], v2);
  v6 = sub_252749AA8(v5);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  *v1 = v6;
  v7 = *MEMORY[0x277D16510];
  v8 = *(*(v0 - 8) + 104);

  return v8(v1, v7, v0);
}

uint64_t sub_25276BBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  v7[14] = swift_task_alloc();
  v8 = sub_2528BE8B0();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF18, &unk_2528C6B48);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25276BD00, 0, 0);
}

uint64_t sub_25276BD00()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v9 = *(v0 + 96);
  sub_25276E828(*(v0 + 88), v0 + 16);
  *(v0 + 56) = v9;
  sub_2527695E8();

  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_25276BE28;
  v5 = *(v0 + 144);
  v6 = *(v0 + 112);
  v7 = *(v0 + 80);

  return sub_2527F6070(v5, v7, v0 + 16, v6);
}

uint64_t sub_25276BE28()
{

  return MEMORY[0x2822009F8](sub_25276BF24, 0, 0);
}

uint64_t sub_25276BF24()
{
  v1 = *(v0 + 144);
  DeviceInfoEvent = type metadata accessor for GetDeviceInfoEvent(0);
  v3 = (*(*(DeviceInfoEvent - 8) + 48))(v1, 1, DeviceInfoEvent);
  if (v3 == 1)
  {
    sub_2527213D8(v1, &qword_27F4FCF18, &unk_2528C6B48);
  }

  else
  {
    sub_25276EA4C(&qword_27F4FCF20, type metadata accessor for GetDeviceInfoEvent, &unk_2528CE5D4);
    sub_2528BFA10();
    sub_25276EA94(v1, type metadata accessor for GetDeviceInfoEvent);
  }

  **(v0 + 72) = v3 == 1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25276C078@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB668 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F5028D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25276C120(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25271F3AC;

  return sub_2527696F4(a1, v5, v4);
}

uint64_t sub_25276C1CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25276E268();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25276C1F4(uint64_t a1)
{
  v2 = sub_2527695E8();

  return MEMORY[0x28210B538](a1, v2);
}

void sub_25276C240(unint64_t a1@<X0>, void *a2@<X8>)
{
  v123 = a2;
  v127 = sub_2528C04E0();
  v125 = *(v127 - 8);
  v3 = MEMORY[0x28223BE20](v127);
  v128 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v124 = &v92 - v6;
  MEMORY[0x28223BE20](v5);
  v121 = (&v92 - v7);
  v8 = sub_2528C0550();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v118 = &v92 - v12;
  v120 = sub_2528C0540();
  v126 = *(v120 - 8);
  v13 = MEMORY[0x28223BE20](v120);
  v117 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v119 = &v92 - v15;
  v16 = sub_2528C0570();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v135 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v134 = &v92 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v92 - v22;
  v24 = sub_2528C04C0();
  v25 = *MEMORY[0x277D16A78];
  v131 = v9;
  v26 = *(v9 + 104);
  v113 = v25;
  v122 = v8;
  v130 = v26;
  v26(v23);
  v27 = *MEMORY[0x277D16AA8];
  v129 = *(v17 + 104);
  v129(v23, v27, v16);
  v28 = sub_2528191A4(v23, v24);

  v133 = v17;
  v30 = *(v17 + 8);
  v29 = (v17 + 8);
  v132 = v30;
  v30(v23, v16);
  v115 = v27;
  v136 = v16;
  if (v28)
  {
    v114 = *MEMORY[0x277D16A88];
  }

  else
  {
    v31 = MEMORY[0x277D16A88];
    v32 = sub_2528C04C0();
    v114 = *v31;
    v130(v23);
    v129(v23, v27, v16);
    LOBYTE(v31) = sub_2528191A4(v23, v32);

    v132(v23, v16);
    if ((v31 & 1) == 0)
    {
      if (qword_27F4FBB40 != -1)
      {
        goto LABEL_60;
      }

      goto LABEL_54;
    }
  }

  v130 = v29;
  v33 = sub_2528C04C0();
  v35 = v33 + 56;
  v34 = *(v33 + 56);
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  LODWORD(v129) = *MEMORY[0x277D16A60];
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  a1 = v37 & v34;
  LODWORD(v125) = *MEMORY[0x277D16A68];
  v38 = (v36 + 63) >> 6;
  v128 = (v133 + 16);
  v107 = *MEMORY[0x277D16A98];
  v127 = v133 + 88;
  v121 = (v133 + 96);
  v106 = (v131 + 32);
  v99 = *MEMORY[0x277D16A70];
  v105 = (v131 + 16);
  v104 = (v131 + 88);
  v112 = *MEMORY[0x277D16A28];
  v103 = (v131 + 8);
  v111 = (v126 + 32);
  v110 = (v126 + 16);
  v109 = (v126 + 88);
  v102 = *MEMORY[0x277D16A38];
  v101 = *MEMORY[0x277D16A40];
  v100 = *MEMORY[0x277D16A48];
  v98 = *MEMORY[0x277D16A58];
  v97 = *MEMORY[0x277D16A50];
  v96 = *MEMORY[0x277D16A20];
  v95 = *MEMORY[0x277D16A18];
  v94 = *MEMORY[0x277D16A30];
  v108 = (v126 + 8);
  v93 = *MEMORY[0x277D16A10];
  v131 = v33;

  v39 = 0;
  v124 = MEMORY[0x277D84F90];
  v126 = v35;
LABEL_7:
  v40 = v39;
  if (!a1)
  {
    goto LABEL_9;
  }

  do
  {
    v39 = v40;
LABEL_12:
    v41 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v42 = v133;
    v43 = v134;
    v44 = *(v133 + 16);
    v45 = v136;
    v44(v134, *(v131 + 48) + *(v133 + 72) * (v41 | (v39 << 6)), v136);
    v46 = v135;
    v44(v135, v43, v45);
    v47 = (*(v42 + 88))(v46, v45);
    if (v47 == v129)
    {
      v50 = v135;
      (*v121)(v135, v136);
      v51 = v119;
      v52 = v50;
      v53 = v120;
      (*v111)(v119, v52, v120);
      v54 = v117;
      (*v110)(v117, v51, v53);
      v55 = (*v109)(v54, v53);
      if (v55 == v112)
      {
        v56 = 4;
      }

      else if (v55 == v102)
      {
        v56 = 6;
      }

      else if (v55 == v101)
      {
        v56 = 5;
      }

      else if (v55 == v100)
      {
        v56 = 7;
      }

      else if (v55 == v98)
      {
        v56 = 8;
      }

      else if (v55 == v97)
      {
        v56 = 9;
      }

      else if (v55 == v96)
      {
        v56 = 12;
      }

      else if (v55 == v95)
      {
        v56 = 13;
      }

      else if (v55 == v94)
      {
        v56 = 10;
      }

      else
      {
        if (v55 != v93)
        {
          goto LABEL_63;
        }

        v56 = 11;
      }

      (*v108)(v119, v120);
LABEL_47:
      v132(v134, v136);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = sub_2527381A4(0, *(v124 + 2) + 1, 1, v124);
      }

      v65 = *(v124 + 2);
      v64 = *(v124 + 3);
      if (v65 >= v64 >> 1)
      {
        v124 = sub_2527381A4((v64 > 1), v65 + 1, 1, v124);
      }

      v66 = v124;
      *(v124 + 2) = v65 + 1;
      v66[v65 + 32] = v56;
      v35 = v126;
      goto LABEL_7;
    }

    if (v47 != v125)
    {
      if (v47 != v115)
      {
        goto LABEL_63;
      }

      v57 = v135;
      (*v121)(v135, v136);
      v58 = v118;
      v59 = v57;
      v60 = v122;
      (*v106)(v118, v59, v122);
      v61 = v116;
      (*v105)(v116, v58, v60);
      v62 = (*v104)(v61, v60);
      if (v62 == v107)
      {
        v56 = 3;
        v63 = v122;
      }

      else
      {
        v63 = v122;
        if (v62 == v114)
        {
          v56 = 0;
        }

        else if (v62 == v113)
        {
          v56 = 1;
        }

        else
        {
          if (v62 != v99)
          {
            sub_2528C1050();
            __break(1u);
LABEL_63:
            sub_2528C1050();
            __break(1u);
            return;
          }

          v56 = 2;
        }
      }

      (*v103)(v118, v63);
      goto LABEL_47;
    }

    v48 = v136;
    v49 = v132;
    v132(v135, v136);
    v49(v134, v48);
    v40 = v39;
    v35 = v126;
  }

  while (a1);
LABEL_9:
  while (1)
  {
    v39 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v39 >= v38)
    {

      goto LABEL_58;
    }

    a1 = *(v35 + 8 * v39);
    ++v40;
    if (a1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_60:
  swift_once();
LABEL_54:
  v67 = sub_2528C08B0();
  __swift_project_value_buffer(v67, qword_27F5025C8);
  v68 = v125;
  v69 = *(v125 + 16);
  v70 = v121;
  v71 = v127;
  v69(v121, a1, v127);
  v72 = v124;
  v69(v124, a1, v71);
  v73 = v128;
  v69(v128, a1, v71);
  v74 = sub_2528C0890();
  v75 = sub_2528C0CF0();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v137 = v135;
    *v76 = 134218498;
    v77 = sub_2528C04B0();
    LODWORD(v134) = v75;
    v78 = v77;
    v79 = *(v68 + 8);
    v79(v70, v71);
    *(v76 + 4) = v78;
    *(v76 + 12) = 2080;
    v80 = sub_2528C04D0();
    v82 = v81;
    v79(v72, v71);
    v83 = sub_2527389AC(v80, v82, &v137);

    *(v76 + 14) = v83;
    *(v76 + 22) = 2080;
    v84 = v128;
    sub_2528C04C0();
    sub_25276EA4C(&qword_27F4FC6C8, MEMORY[0x277D16AB0], MEMORY[0x277D16AC8]);
    v85 = sub_2528C0C80();
    v86 = v71;
    v88 = v87;

    v79(v84, v86);
    v89 = sub_2527389AC(v85, v88, &v137);

    *(v76 + 24) = v89;
    _os_log_impl(&dword_252711000, v74, v134, "Unexpectedly found clean mode (id: %lu, label: %s) without mop or vacuum tags: %s", v76, 0x20u);
    v90 = v135;
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v90, -1, -1);
    MEMORY[0x2530A8D80](v76, -1, -1);
  }

  else
  {
    v91 = *(v68 + 8);
    v91(v70, v71);

    v91(v73, v71);
    v91(v72, v71);
  }

  v124 = 0;
LABEL_58:
  *v123 = v124;
}

uint64_t sub_25276CFF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v0);
  sub_2528C0E70();

  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF28, &qword_2528D2DA0);
  v1 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v1);

  MEMORY[0x2530A80B0](0x6E45656D6F68202CLL, 0xEE00203A79746974);
  sub_2528BE790();
  v2 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v2);

  return 0x3A73656369766564;
}

uint64_t sub_25276D150@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - v3;
  sub_2527FECD0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v6 = sub_252755F54();
  MEMORY[0x2530A60E0](&v31, &v45, v5, &type metadata for DeviceEntityFromAccessoryTypeResolver, v6);
  v38[4] = v49;
  v38[5] = v50;
  v38[6] = v51;
  v38[0] = v45;
  v38[1] = v46;
  v38[2] = v47;
  v38[3] = v48;
  sub_252755FA8(v38);
  sub_2527FECD0();
  v7 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v24, &v45, v5, &type metadata for DeviceEntityFromInputTypeResolver, v7);
  v39[4] = v49;
  v39[5] = v50;
  v39[6] = v51;
  v39[0] = v45;
  v39[1] = v46;
  v39[2] = v47;
  v39[3] = v48;
  sub_252756050(v39);
  v40[4] = v35;
  v40[5] = v36;
  v40[6] = v37;
  v40[0] = v31;
  v40[1] = v32;
  v40[2] = v33;
  v40[3] = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  sub_2527560A4(v40, &v45);
  sub_252756100();
  sub_2528BEAA0();
  v41[4] = v21;
  v41[5] = v22;
  v41[6] = v23;
  v41[0] = v17;
  v41[1] = v18;
  v41[2] = v19;
  v41[3] = v20;
  sub_252755FA8(v41);
  v42[4] = v28;
  v42[5] = v29;
  v42[6] = v30;
  v42[0] = v24;
  v42[1] = v25;
  v42[2] = v26;
  v42[3] = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  sub_2527561B4(v42, &v45);
  v9[2] = v6;
  v9[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v43[4] = v14;
  v43[5] = v15;
  v43[6] = v16;
  v43[0] = v10;
  v43[1] = v11;
  v43[3] = v13;
  v43[2] = v12;
  sub_252756050(v43);
  (*(v2 + 8))(v4, v1);
  v44[4] = v28;
  v44[5] = v29;
  v44[6] = v30;
  v44[0] = v24;
  v44[1] = v25;
  v44[3] = v27;
  v44[2] = v26;
  sub_252756050(v44);
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  return sub_252755FA8(&v45);
}

unint64_t sub_25276D484()
{
  v121 = *MEMORY[0x277D85DE8];
  v0 = sub_2528BF1D0();
  v1 = *(v0 - 8);
  v110 = v0;
  v111 = v1;
  MEMORY[0x28223BE20](v0);
  v109 = v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2528BF130();
  v4 = *(v3 - 8);
  v115 = v3;
  v116 = v4;
  MEMORY[0x28223BE20](v3);
  v114 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC2A8, &qword_2528C3958);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v113 = v98 - v10;
  v11 = sub_2528C04E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC208, &qword_2528C6B40);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v98 - v16;
  v18 = sub_2528C04F0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2528BFB20();
  sub_2528BFA40();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_2527213D8(v17, &qword_27F4FC208, &qword_2528C6B40);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7C8, &qword_2528C4880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2528C17D0;
    *(inited + 32) = 258;
    *(inited + 34) = 0;
    if (sub_2528C0290())
    {
      v24 = sub_252738190(1, 4, 1, inited);
      *(v24 + 2) = 4;
      v107 = v24;
      v24[35] = 6;
    }

    else
    {
      v107 = inited;
    }

    v25 = sub_2528C0320();
    v105 = v19;
    v106 = v21;
    v108 = v9;
    v104 = v18;
    if (v25)
    {
      v26 = v25;
      v27 = *(v25 + 16);
      if (v27)
      {
        v28 = 0;
        v112 = (v27 - 1);
        v117 = MEMORY[0x277D84F90];
        do
        {
          v29 = v28;
          while (1)
          {
            if (v29 >= *(v26 + 16))
            {
              __break(1u);
            }

            (*(v12 + 16))(v14, v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v11);
            sub_25276C240(v14, &v120);
            (*(v12 + 8))(v14, v11);
            v30 = v120;
            if (v120)
            {
              break;
            }

            if (v27 == ++v29)
            {
              goto LABEL_22;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_252738038(0, v117[2] + 1, 1, v117);
          }

          v32 = v117[2];
          v31 = v117[3];
          v33 = v32 + 1;
          if (v32 >= v31 >> 1)
          {
            v103 = v32 + 1;
            v102 = v32;
            v35 = sub_252738038((v31 > 1), v32 + 1, 1, v117);
            v33 = v103;
            v32 = v102;
            v117 = v35;
          }

          v28 = (v29 + 1);
          v34 = v117;
          v117[2] = v33;
          v34[v32 + 4] = v30;
        }

        while (v112 != v29);
      }

      else
      {
        v117 = MEMORY[0x277D84F90];
      }

LABEL_22:

      v19 = v105;
      v21 = v106;
      v9 = v108;
    }

    else
    {
      v117 = MEMORY[0x277D84F90];
    }

    v36 = v107;
    v37 = *(v107 + 16);
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      v120 = MEMORY[0x277D84F90];
      sub_25282F154(0, v37, 0);
      v39 = v120;
      v40 = (v36 + 32);
      v41 = *(v120 + 16);
      v42 = 40 * v41;
      do
      {
        v44 = *v40++;
        v43 = v44;
        v120 = v39;
        v45 = *(v39 + 24);
        v46 = v41 + 1;
        if (v41 >= v45 >> 1)
        {
          sub_25282F154((v45 > 1), v41 + 1, 1);
          v39 = v120;
        }

        *(v39 + 16) = v46;
        v47 = v39 + v42;
        *(v47 + 32) = v43;
        *(v47 + 40) = v38;
        *(v47 + 48) = 0;
        *(v47 + 56) = 0;
        v42 += 40;
        v41 = v46;
        *(v47 + 64) = 0;
        --v37;
      }

      while (v37);
      v9 = v108;
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v103 = v39;
    v48 = v117;
    v49 = v117[2];
    v50 = v113;
    if (v49)
    {
      v120 = v38;
      sub_25282F154(0, v49, 0);
      v51 = 4;
      v52 = v120;
      do
      {
        v53 = v48[v51];
        v120 = v52;
        v55 = *(v52 + 16);
        v54 = *(v52 + 24);

        if (v55 >= v54 >> 1)
        {
          sub_25282F154((v54 > 1), v55 + 1, 1);
          v52 = v120;
        }

        *(v52 + 16) = v55 + 1;
        v56 = v52 + 40 * v55;
        *(v56 + 32) = 1;
        *(v56 + 40) = v53;
        *(v56 + 48) = 0;
        *(v56 + 56) = 0;
        *(v56 + 64) = 0;
        ++v51;
        --v49;
        v48 = v117;
      }

      while (v49);
      v102 = v52;

      v19 = v105;
      v21 = v106;
      v9 = v108;
      v50 = v113;
    }

    else
    {

      v102 = MEMORY[0x277D84F90];
    }

    sub_2528C02A0();
    v57 = sub_2528BF1E0();
    v58 = *(v57 - 8);
    v59 = *(v58 + 48);
    v60 = v59(v50, 1, v57);
    v101 = v59;
    if (v60 == 1)
    {
      sub_2527213D8(v50, &qword_27F4FC2A8, &qword_2528C3958);
      v61 = 0;
    }

    else
    {
      v62 = sub_2528BF190();
      (*(v58 + 8))(v50, v57);
      v63 = *(v62 + 16);
      if (v63)
      {
        v98[1] = v58 + 48;
        v99 = v58;
        v100 = v57;
        v117 = *(v116 + 16);
        v64 = (*(v116 + 80) + 32) & ~*(v116 + 80);
        v98[0] = v62;
        v65 = v62 + v64;
        v66 = *(v116 + 72);
        v116 += 16;
        v112 = (v116 - 8);
        v113 = v66;
        v61 = MEMORY[0x277D84F90];
        do
        {
          v67 = v114;
          v68 = v115;
          (v117)(v114, v65, v115);
          v69 = sub_2528BF110();
          v70 = sub_2528BF120();
          v71 = BYTE4(v70) & 1;
          if ((v70 & 0x100000000) != 0)
          {
            v72 = 0;
          }

          else
          {
            v72 = v70;
          }

          v73 = sub_2528BF100();
          v75 = v74;
          (*v112)(v67, v68);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_252737A78(0, *(v61 + 2) + 1, 1, v61);
          }

          v77 = *(v61 + 2);
          v76 = *(v61 + 3);
          v78 = v61;
          if (v77 >= v76 >> 1)
          {
            v78 = sub_252737A78((v76 > 1), v77 + 1, 1, v61);
          }

          *(v78 + 2) = v77 + 1;
          v61 = v78;
          v79 = &v78[40 * v77];
          *(v79 + 4) = v69;
          *(v79 + 5) = v73;
          *(v79 + 6) = v75;
          *(v79 + 7) = v72;
          v79[64] = v71 | 0x40;
          v65 += v113;
          --v63;
        }

        while (v63);

        v19 = v105;
        v21 = v106;
        v9 = v108;
        v38 = MEMORY[0x277D84F90];
        v57 = v100;
        v58 = v99;
      }

      else
      {

        v61 = MEMORY[0x277D84F90];
        v21 = v106;
      }
    }

    sub_2528C02A0();
    if (v101(v9, 1, v57) == 1)
    {

      sub_2527213D8(v9, &qword_27F4FC2A8, &qword_2528C3958);
      v80 = 0;
    }

    else
    {
      v81 = sub_2528BF170();
      (*(v58 + 8))(v9, v57);
      if (v81)
      {
        v115 = v61;
        v82 = *(v81 + 16);
        if (v82)
        {
          v120 = v38;
          sub_25282F154(0, v82, 0);
          v80 = v120;
          v83 = *(v111 + 16);
          v84 = *(v111 + 80);
          v114 = v81;
          v85 = v81 + ((v84 + 32) & ~v84);
          v116 = *(v111 + 72);
          v117 = v83;
          v111 += 16;
          v86 = (v111 - 8);
          do
          {
            v87 = v109;
            v88 = v110;
            (v117)(v109, v85, v110);
            v89 = sub_2528BF1B0();
            v90 = sub_2528BF1C0();
            v92 = v91;
            (*v86)(v87, v88);
            v120 = v80;
            v94 = *(v80 + 16);
            v93 = *(v80 + 24);
            if (v94 >= v93 >> 1)
            {
              sub_25282F154((v93 > 1), v94 + 1, 1);
              v80 = v120;
            }

            *(v80 + 16) = v94 + 1;
            v95 = v80 + 40 * v94;
            *(v95 + 32) = v89;
            *(v95 + 40) = v90;
            *(v95 + 48) = v92;
            *(v95 + 56) = 0;
            *(v95 + 64) = 0x80;
            v85 += v116;
            --v82;
          }

          while (v82);

          v19 = v105;
          v21 = v106;
          v38 = MEMORY[0x277D84F90];
        }

        else
        {

          v80 = MEMORY[0x277D84F90];
        }

        v61 = v115;
      }

      else
      {

        v80 = 0;
      }
    }

    v119 = v103;
    sub_252735FA8(v102);
    if (v61)
    {
      v96 = v61;
    }

    else
    {
      v96 = v38;
    }

    sub_252735FA8(v96);
    if (v80)
    {
      v97 = v80;
    }

    else
    {
      v97 = v38;
    }

    v118 = v119;
    sub_252735FA8(v97);
    sub_252735FA8(&unk_286493BC0);
    (*(v19 + 8))(v21, v104);
    return v118;
  }
}

unint64_t sub_25276E0C8()
{
  sub_2528BE6B0();
  v0 = v13 >> 14;
  v1 = HIBYTE(v13) & 0x3F;
  if (v0 != 1)
  {
    v1 = v13;
  }

  if (v0)
  {
    v2 = v1;
  }

  else
  {
    v2 = v13;
  }

  if (v2 == 21)
  {
    return sub_25276D484();
  }

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v4 = sub_2528C08B0();
  __swift_project_value_buffer(v4, qword_27F5025C8);
  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_2528C0A10();
    v11 = sub_2527389AC(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_252711000, v5, v6, "DeviceType %s is not yet supported for PossibleValuesForAttribute", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25276E268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v23 - v1;
  v32 = sub_2528BE950();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v7;
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v25 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_2528BEC40();
  v29 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE8, &qword_2528D2D50);
  sub_2528BEC20();
  v28 = *(v14 + 56);
  v28(v12, 1, 1, v13);
  v36 = 0;
  v15 = sub_2528BE630();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v7, 1, 1, v15);
  v30 = *MEMORY[0x277CBA308];
  v17 = *(v2 + 104);
  v31 = v2 + 104;
  v33 = v17;
  v18 = v34;
  v17(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70, MEMORY[0x277CBA480]);
  sub_25276EA4C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v19 = v24;
  v20 = v25;
  v27 = sub_2528BE7E0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v28(v12, 1, 1, v29);
  v21 = type metadata accessor for HomeEntity(0);
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  v16(v20, 1, 1, v15);
  v16(v19, 1, 1, v15);
  v33(v18, v30, v32);
  sub_25276EA4C(&qword_27F4FCC90, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
  sub_2528BE7F0();
  return v27;
}

uint64_t sub_25276E7BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEE0, &qword_2528C6A78);

  return sub_2527BB4C0();
}

uint64_t sub_25276E828(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25276E88C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25271F3AC;

  return sub_25276BBC8(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_25276E960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25276E9C8()
{
  result = qword_27F4FCF10;
  if (!qword_27F4FCF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCF08, &unk_2528C6B30);
    sub_25272CD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCF10);
  }

  return result;
}

uint64_t sub_25276EA4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25276EA94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25276EAF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25276EB68()
{
  result = qword_27F4FCF30;
  if (!qword_27F4FCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCF30);
  }

  return result;
}

unint64_t sub_25276EBC0()
{
  result = qword_27F4FCF38;
  if (!qword_27F4FCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCF38);
  }

  return result;
}

unint64_t sub_25276EC98()
{
  result = qword_27F4FCF40;
  if (!qword_27F4FCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCF40);
  }

  return result;
}

uint64_t sub_25276ECEC(uint64_t a1, void *a2)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF68, &unk_2528C6E20);
  v4 = MEMORY[0x28223BE20](v55);
  v61 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v56 = a1;

  v16 = 0;
  v52 = v15;
  v53 = a1 + 64;
  v62 = a2;
  v54 = v10;
  while (v14)
  {
LABEL_11:
    v23 = __clz(__rbit64(v14)) | (v16 << 6);
    v24 = v56;
    v25 = *(v56 + 48);
    v26 = sub_2528BECF0();
    v60 = *(v26 - 8);
    v58 = v60[9];
    v27 = v60[2];
    v63 = v26;
    v59 = v27;
    v57 = v60 + 2;
    (v27)(v10, v25 + v58 * v23);
    v28 = *(*(v24 + 56) + 8 * v23);
    v29 = v55;
    *&v10[*(v55 + 48)] = v28;
    v30 = v8;
    sub_25272006C(v10, v8, &qword_27F4FCF68, &unk_2528C6E20);
    v31 = *&v8[*(v29 + 48)];
    v32 = v28;

    v33 = v61;
    sub_25272006C(v10, v61, &qword_27F4FCF68, &unk_2528C6E20);
    v34 = *(v33 + *(v29 + 48));
    v35 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *v35;
    v37 = v64;
    *v35 = 0x8000000000000000;
    v39 = sub_252785C40(v30);
    v40 = v37[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_23;
    }

    v43 = v38;
    if (v37[3] >= v42)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2527E2224();
      }

      v8 = v30;
    }

    else
    {
      sub_2527DF760(v42, isUniquelyReferenced_nonNull_native);
      v8 = v30;
      v44 = sub_252785C40(v30);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_25;
      }

      v39 = v44;
    }

    v10 = v54;
    v46 = v64;
    if (v43)
    {
      v17 = v64[7];
      v18 = *(v17 + 8 * v39);
      *(v17 + 8 * v39) = v34;
    }

    else
    {
      v64[(v39 >> 6) + 8] |= 1 << v39;
      v59(v46[6] + v39 * v58, v8, v63);
      *(v46[7] + 8 * v39) = v34;
      v47 = v46[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_24;
      }

      v46[2] = v49;
    }

    v14 &= v14 - 1;
    v19 = v60[1];
    v20 = v63;
    v19(v8, v63);
    v21 = v61;
    *v62 = v46;
    v19(v21, v20);
    sub_2527213D8(v10, &qword_27F4FCF68, &unk_2528C6E20);
    v15 = v52;
    v11 = v53;
  }

  while (1)
  {
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v22 >= v15)
    {
    }

    v14 = *(v11 + 8 * v22);
    ++v16;
    if (v14)
    {
      v16 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_25276F0F4()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F5028F0);
  __swift_project_value_buffer(v0, qword_27F5028F0);
  return sub_2528BEC20();
}

uint64_t sub_25276F1E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25276F2B4, 0, 0);
}

uint64_t sub_25276F2B4()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v0[8] = __swift_project_value_buffer(v2, qword_27F5025C8);
  sub_2527BC198(v1);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v4 = sub_2528C0820();
  v0[9] = __swift_project_value_buffer(v4, qword_27F5025E0);
  v0[10] = sub_2528B867C(v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_25276F3FC;
  v6 = v0[2];

  return sub_25276F6F8(v6);
}

uint64_t sub_25276F3FC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_25276F648;
  }

  else
  {
    v2 = sub_25276F510;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25276F510()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  (*(v3 + 16))(v2, v0[2], v4);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v2, v4);
  sub_2527BD42C(v5, v1, sub_252756420, v7);

  sub_2527BE4E8(v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25276F648()
{
  v1 = v0[12];
  v2 = v0[3];
  sub_2527BF5FC(v2, v0[10], v1);
  sub_2527C084C(v2, v1);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_25276F6F8(uint64_t a1)
{
  v2[56] = a1;
  v2[57] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[58] = v3;
  v2[59] = *(v3 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = type metadata accessor for ShowDeviceResultIntent(0);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v4 = sub_2528BECF0();
  v2[65] = v4;
  v2[66] = *(v4 - 8);
  v2[67] = swift_task_alloc();
  v5 = sub_2528BEEC0();
  v2[68] = v5;
  v2[69] = *(v5 - 8);
  v2[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = *(type metadata accessor for DeviceEntity(0) - 8);
  v2[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v2[76] = swift_task_alloc();
  v6 = sub_2528C0060();
  v2[77] = v6;
  v2[78] = *(v6 - 8);
  v2[79] = swift_task_alloc();
  v7 = sub_2528BEE30();
  v2[80] = v7;
  v2[81] = *(v7 - 8);
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v8 = sub_2528C00D0();
  v2[85] = v8;
  v2[86] = *(v8 - 8);
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v9 = sub_2528BE8B0();
  v2[89] = v9;
  v2[90] = *(v9 - 8);
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v2[93] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0);
  v2[94] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0);
  v2[95] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v10 = sub_2528BF400();
  v2[102] = v10;
  v11 = *(v10 - 8);
  v2[103] = v11;
  v2[104] = *(v11 + 64);
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[107] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25276FD64, 0, 0);
}

uint64_t sub_25276FD64()
{
  v20 = v0;
  *(v0 + 904) = *(*(v0 + 456) + 16);
  sub_2528BE790();
  v1 = *(*(v0 + 376) + 16);

  if (v1 && (v2 = *(v0 + 456), v3 = v2[7], *(v0 + 912) = *v2, sub_2528BE790(), v4 = *(v0 + 208), v5 = *(v0 + 216), v6 = *(v0 + 224), v7 = *(v0 + 232), v8 = *(v0 + 240), sub_252870158(&v19), sub_25272C15C(v4, v5, v6, v7, v8), sub_25277B234(v19, v3)))
  {
    v9 = *(v0 + 856);
    *(v0 + 920) = *(*(v0 + 456) + 24);
    sub_2528BE790();
    sub_2528BE790();
    v10 = *(v0 + 384);
    *(v0 + 928) = v10;
    v11 = sub_2528C05D0();
    *(v0 + 936) = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    *(v0 + 944) = v13;
    *(v0 + 952) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v9, 1, 1, v11);
    v14 = swift_task_alloc();
    *(v0 + 960) = v14;
    *v14 = v0;
    v14[1] = sub_2527701E0;
    v15 = *(v0 + 896);
    v16 = *(v0 + 856);

    return sub_25277ECE4(v15, v10, 0, v16);
  }

  else
  {
    type metadata accessor for HomeAppIntentError(0);
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_2527701E0(uint64_t a1)
{
  v2 = *(*v1 + 896);
  v3 = *(*v1 + 856);
  *(*v1 + 968) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v2, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252770360, 0, 0);
}

uint64_t sub_252770360()
{
  v1 = *(v0 + 752);
  sub_2527D38F8(*(v0 + 968), v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 760);
    sub_2527213D8(*(v0 + 752), &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    v17 = *(v0 + 872);
    v18 = *(v0 + 464);
    v19 = *(v0 + 472);
    sub_2527213D8(*(v0 + 760), &qword_27F4FCDB0, &qword_2528D2DB0);
    type metadata accessor for HomeAppIntentError(0);
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v21 = v20;
    sub_2528BE790();
    v22 = *(v19 + 48);
    v23 = 1;
    if (!v22(v17, 1, v18))
    {
      (*(*(v0 + 528) + 16))(v21, *(v0 + 872), *(v0 + 520));
      v23 = 0;
    }

    v24 = *(v0 + 864);
    v25 = *(v0 + 528);
    v26 = *(v0 + 520);
    v27 = *(v0 + 464);
    sub_2527213D8(*(v0 + 872), &qword_27F4FC488, &unk_2528C3F80);
    (*(v25 + 56))(v21, v23, 1, v26);
    v28 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    v29 = v22(v24, 1, v27);
    v30 = *(v0 + 864);
    if (v29)
    {
      sub_2527213D8(v30, &qword_27F4FC488, &unk_2528C3F80);
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v33 = *(v0 + 480);
      v34 = *(v0 + 864);
      sub_2527691F4(v30, v33, type metadata accessor for HomeEntity);
      sub_2527213D8(v34, &qword_27F4FC488, &unk_2528C3F80);
      sub_2528BE6B0();
      v31 = *(v0 + 328);
      v32 = *(v0 + 336);
      sub_2527567C0(v33, type metadata accessor for HomeEntity);
    }

    *v28 = v31;
    v28[1] = v32;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  v11 = v8 + *(v2 + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v13 = *(v12 + 48);
  v105 = *(v5 + 16);
  v105(v7, v11, v6);
  v14 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v11 + *(v14 + 20), v7 + v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527567C0(v11, type metadata accessor for HomeEntity.SnapshotPair);
  v15 = *(v12 - 8);
  (*(v15 + 56))(v7, 0, 1, v12);
  v16 = *(v9 + 8);
  *(v0 + 976) = v16;
  *(v0 + 984) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v8, v10);
  if ((*(v15 + 48))(v7, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v37 = *(v0 + 848);
  v38 = *(v0 + 840);
  v39 = *(v0 + 824);
  v40 = *(v0 + 816);
  v41 = *(v0 + 808);
  v101 = *(v0 + 800);
  v42 = *(v0 + 760);
  v98 = *(v0 + 744);
  v99 = *(v0 + 688);
  v100 = *(v0 + 680);
  v43 = *(v0 + 456);
  v44 = *(v12 + 48);
  v45 = *(v39 + 32);
  v45(v37, v42, v40);
  sub_25274AA0C(v42 + v44, v41, &qword_27F4FCDB8, &unk_2528C5CC0);
  v46 = sub_2528C0C40();
  (*(*(v46 - 8) + 56))(v98, 1, 1, v46);
  v105(v38, v37, v40);
  v47 = (*(v39 + 80) + 96) & ~*(v39 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  v49 = *v43;
  v50 = v43[1];
  v51 = v43[3];
  *(v48 + 64) = v43[2];
  *(v48 + 80) = v51;
  *(v48 + 32) = v49;
  *(v48 + 48) = v50;
  v45(v48 + v47, v38, v40);
  sub_25277AFA0(v43, v0 + 16);
  sub_2527D3B74(0, 0, v98, &unk_2528C6DE0, v48);

  sub_2528BE790();
  v52 = *(v0 + 392);
  *(v0 + 992) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC780, &unk_2528D4C50);
  inited = swift_initStackObject();
  *(v0 + 1000) = inited;
  *(inited + 16) = xmmword_2528C3910;
  sub_2528BE790();
  v54 = *(v0 + 288);
  v55 = *(v0 + 296);
  v56 = *(v0 + 304);
  v57 = *(v0 + 312);
  LOBYTE(v42) = *(v0 + 320);
  sub_252870158((inited + 32));
  sub_25272C15C(v54, v55, v56, v57, v42);
  sub_2528BE790();
  v58 = *(v99 + 56);
  *(v0 + 1008) = v58;
  *(v0 + 1016) = (v99 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v58(v101, 1, 1, v100);
  *(v0 + 1024) = *(v43 + 6);
  sub_2528BE790();
  *(v0 + 1032) = *(v0 + 344);
  *(v0 + 245) = *(v0 + 352);
  v60 = v43[2];
  v59 = v43[3];
  v61 = v43[1];
  *(v0 + 80) = *v43;
  *(v0 + 96) = v61;
  *(v0 + 112) = v60;
  *(v0 + 128) = v59;
  *(v0 + 1040) = sub_25276EC98();
  sub_2528BE5B0();
  v62 = *(v52 + 16);
  *(v0 + 1048) = v62;
  if (!v62)
  {
    v86 = *(v0 + 888);
    v87 = *(v0 + 824);
    v103 = *(v0 + 816);
    v104 = *(v0 + 848);
    v102 = *(v0 + 808);
    v88 = *(v0 + 800);
    v89 = *(v0 + 736);
    v90 = *(v0 + 720);
    v91 = *(v0 + 712);
    swift_setDeallocating();

    type metadata accessor for HomeAppIntentError(0);
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v90 + 8))(v89, v91);
    sub_2527213D8(v88, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2527213D8(v86, &qword_27F4FC488, &unk_2528C3F80);
    sub_2527213D8(v102, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v87 + 8))(v104, v103);
LABEL_10:

    v35 = *(v0 + 8);

    return v35();
  }

  v63 = *(v0 + 792);
  v64 = *(v0 + 688);
  v65 = *(v0 + 680);
  sub_25272006C(*(v0 + 800), v63, &qword_27F4FCDB8, &unk_2528C5CC0);
  v66 = *(v64 + 48);
  *(v0 + 1056) = v66;
  *(v0 + 1064) = (v64 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v66(v63, 1, v65) == 1)
  {
    sub_2527213D8(*(v0 + 792), &qword_27F4FCDB8, &unk_2528C5CC0);
    v67 = 0;
    v68 = MEMORY[0x277D84F90];
    *(v0 + 1152) = MEMORY[0x277D84F90];
    v69 = *(v0 + 592);
    v106 = v68;
    v70 = *(v0 + 992) + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v71 = *(v69 + 72);
    do
    {
      v72 = *(v0 + 1048);
      v73 = *(v0 + 1000);
      v74 = *(v0 + 600);
      sub_2527691F4(v70, v74, type metadata accessor for DeviceEntity);
      ++v67;
      v75 = swift_task_alloc();
      *(v75 + 16) = v74;
      v76 = sub_2527A3118(sub_2527565E8, v75, v73);
      *(v0 + 1328) = 0;

      sub_2527567C0(v74, type metadata accessor for DeviceEntity);
      sub_252735C48(v76);
      v70 += v71;
    }

    while (v67 != v72);
    v77 = *(v0 + 245);
    v78 = *(v0 + 1032);
    v79 = *(v0 + 992);
    v80 = *(v0 + 848);
    *(v0 + 1160) = v106;
    v81 = swift_task_alloc();
    *(v0 + 1168) = v81;
    *(v81 + 16) = v80;
    *(v81 + 24) = v79;
    *(v81 + 32) = v78;
    *(v81 + 40) = v77;
    v82 = swift_task_alloc();
    *(v0 + 1176) = v82;
    *v82 = v0;
    v82[1] = sub_252771BEC;
    v83 = *(v0 + 1000);
    v84 = *(v0 + 992);
    v85 = *(v0 + 848);

    return sub_2527764BC(v106, v85, v83, v84, &unk_2528C6DF0, v81);
  }

  else
  {
    v92 = *(v0 + 792);
    v93 = *(v0 + 704);
    v94 = *(v0 + 688);
    v95 = *(v0 + 680);
    v96 = *(v94 + 32);
    *(v0 + 1072) = v96;
    *(v0 + 1080) = (v94 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v96(v93, v92, v95);
    sub_2528BF2F0();
    v97 = swift_task_alloc();
    *(v0 + 1088) = v97;
    *v97 = v0;
    v97[1] = sub_2527710A8;

    return MEMORY[0x28216E680]();
  }
}

uint64_t sub_2527710A8(uint64_t a1)
{
  v2 = *(*v1 + 672);
  v3 = *(*v1 + 648);
  v4 = *(*v1 + 640);
  *(*v1 + 1096) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_252771208, 0, 0);
}

uint64_t sub_252771208()
{
  if (*(v0 + 1096))
  {
    v1 = *(v0 + 992);
    v2 = *(v0 + 704);
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v0 + 1104) = sub_2527A2F84(sub_252756820, v3, v1);
    *(v0 + 1112) = 0;

    *(v0 + 1120) = sub_2528BEFC0();
    sub_2528C0C20();
    *(v0 + 1128) = sub_2528C0C10();
    v5 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_2527714F4, v5, v4);
  }

  else
  {
    (*(*(v0 + 688) + 8))(*(v0 + 704), *(v0 + 680));
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    *(v0 + 1152) = MEMORY[0x277D84F90];
    v8 = *(v0 + 592);
    v26 = v7;
    v9 = *(v0 + 992) + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v11 = *(v0 + 1048);
      v12 = *(v0 + 1000);
      v13 = *(v0 + 600);
      sub_2527691F4(v9, v13, type metadata accessor for DeviceEntity);
      ++v6;
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      v15 = sub_2527A3118(sub_2527565E8, v14, v12);
      *(v0 + 1328) = 0;

      sub_2527567C0(v13, type metadata accessor for DeviceEntity);
      sub_252735C48(v15);
      v9 += v10;
    }

    while (v6 != v11);
    v16 = *(v0 + 245);
    v17 = *(v0 + 1032);
    v18 = *(v0 + 992);
    v19 = *(v0 + 848);
    *(v0 + 1160) = v26;
    v20 = swift_task_alloc();
    *(v0 + 1168) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    *(v20 + 32) = v17;
    *(v20 + 40) = v16;
    v21 = swift_task_alloc();
    *(v0 + 1176) = v21;
    *v21 = v0;
    v21[1] = sub_252771BEC;
    v22 = *(v0 + 1000);
    v23 = *(v0 + 992);
    v24 = *(v0 + 848);

    return sub_2527764BC(v26, v24, v22, v23, &unk_2528C6DF0, v20);
  }
}

uint64_t sub_2527714F4()
{

  *(v0 + 1136) = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_252771568, 0, 0);
}

uint64_t sub_252771568()
{
  v1 = v0[137];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = sub_252743EF0(v0[138]);

  *v2 = v6;
  v2[1] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D16508], v4);
  v7 = sub_2528C00B0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[143] = v9;
  *v9 = v0;
  v9[1] = sub_2527716C8;
  v10 = v0[98];
  v11 = v0[79];
  v12 = v0[76];

  return MEMORY[0x282170970](v10, v11, v8, v12);
}

uint64_t sub_2527716C8()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 616);
  v4 = *(*v0 + 608);

  sub_2527213D8(v4, &qword_27F4FC478, &unk_2528C3F70);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_252771870, 0, 0);
}

uint64_t sub_252771870()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 680);
  (*(v0 + 1008))(v2, 0, 1, v4);
  sub_25272006C(v2, v3, &qword_27F4FCDB8, &unk_2528C5CC0);
  v5 = v1(v3, 1, v4);
  v6 = MEMORY[0x277D84F90];
  if (v5 == 1)
  {
    v7 = *(v0 + 1096);
    v8 = *(v0 + 784);
    v9 = *(v0 + 688);
    sub_2527213D8(*(v0 + 776), &qword_27F4FCDB8, &unk_2528C5CC0);

    sub_2527213D8(v8, &qword_27F4FCDB8, &unk_2528C5CC0);
    v10 = *(v0 + 1112);
    v11 = MEMORY[0x277D84F90];
    (*(v9 + 8))(*(v0 + 704), *(v0 + 680));
  }

  else
  {
    v10 = *(v0 + 1112);
    v12 = *(v0 + 1096);
    v13 = *(v0 + 1000);
    v14 = *(v0 + 992);
    v15 = *(v0 + 784);
    v16 = *(v0 + 696);
    v17 = *(v0 + 688);
    v18 = *(v0 + 680);
    (*(v0 + 1072))(v16, *(v0 + 776), v18);
    v19 = swift_task_alloc();
    *(v19 + 16) = v13;
    v6 = MEMORY[0x277D84F90];
    *(v19 + 24) = v16;
    v11 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25275683C, v19, v14);

    sub_2527213D8(v15, &qword_27F4FCDB8, &unk_2528C5CC0);
    v20 = *(v17 + 8);
    v20(v16, v18);
    v20(*(v0 + 704), *(v0 + 680));
  }

  v21 = 0;
  *(v0 + 1152) = v11;
  v22 = *(v0 + 592);
  v40 = v6;
  v23 = *(v0 + 992) + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v24 = *(v22 + 72);
  do
  {
    v25 = *(v0 + 1048);
    v26 = *(v0 + 1000);
    v27 = *(v0 + 600);
    sub_2527691F4(v23, v27, type metadata accessor for DeviceEntity);
    ++v21;
    v28 = swift_task_alloc();
    *(v28 + 16) = v27;
    v29 = sub_2527A3118(sub_2527565E8, v28, v26);
    *(v0 + 1328) = v10;

    sub_2527567C0(v27, type metadata accessor for DeviceEntity);
    sub_252735C48(v29);
    v23 += v24;
  }

  while (v21 != v25);
  v30 = *(v0 + 245);
  v31 = *(v0 + 1032);
  v32 = *(v0 + 992);
  v33 = *(v0 + 848);
  *(v0 + 1160) = v40;
  v34 = swift_task_alloc();
  *(v0 + 1168) = v34;
  *(v34 + 16) = v33;
  *(v34 + 24) = v32;
  *(v34 + 32) = v31;
  *(v34 + 40) = v30;
  v35 = swift_task_alloc();
  *(v0 + 1176) = v35;
  *v35 = v0;
  v35[1] = sub_252771BEC;
  v36 = *(v0 + 1000);
  v37 = *(v0 + 992);
  v38 = *(v0 + 848);

  return sub_2527764BC(v40, v38, v36, v37, &unk_2528C6DF0, v34);
}

uint64_t sub_252771BEC(uint64_t a1)
{
  *(*v1 + 1184) = a1;

  return MEMORY[0x2822009F8](sub_252771D28, 0, 0);
}

uint64_t sub_252771D28()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 848);
  v4 = MEMORY[0x277D84F90];
  v5 = sub_25278D334(MEMORY[0x277D84F90]);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  v7 = sub_2527F2ADC(v5, sub_252756604, v6, v2);
  *(v0 + 1192) = v7;

  if (*(v7 + 16))
  {
    v8 = *(v0 + 824);
    v9 = *(v0 + 816);
    v10 = *(v0 + 584);
    v11 = *(v8 + 56);
    *(v0 + 1200) = v11;
    *(v0 + 1208) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v10, 1, 1, v9);
    sub_2528BF2F0();
    *(v0 + 1216) = sub_2528BEFC0();
    v12 = swift_task_alloc();
    *(v0 + 1224) = v12;
    *v12 = v0;
    v12[1] = sub_25277220C;

    return MEMORY[0x28216EA40]();
  }

  else
  {
    v13 = *(v0 + 1184);
    v14 = *(v0 + 1152);
    v52 = *(v0 + 888);
    v15 = *(v0 + 800);
    v16 = *(v0 + 736);
    v17 = *(v0 + 720);
    v18 = *(v0 + 712);

    sub_252735C2C(v13);
    sub_252735C2C(v14);
    v19 = sub_25280D9C4(v4);

    v20 = *(v17 + 8);
    *(v0 + 1304) = v20;
    *(v0 + 1312) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v16, v18);
    sub_2527213D8(v15, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2527213D8(v52, &qword_27F4FC488, &unk_2528C3F80);
    v21 = sub_25277405C(v19);
    *(v0 + 1320) = v21;

    v22 = v21 + 8;
    v23 = -1;
    v24 = -1 << LOBYTE(v21[4].isa);
    if (-v24 < 64)
    {
      v23 = ~(-1 << -v24);
    }

    isa = v23 & v21[8].isa;
    v26 = (63 - v24) >> 6;
    v53 = v21;
    swift_bridgeObjectRetain_n();
    v27 = 0;
    while (1)
    {
      *(v0 + 1336) = v4;
      if (!isa)
      {
        break;
      }

LABEL_14:
      v29 = *(*(v53 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(isa)))));
      v30 = *(v29 + 16);
      v31 = *(v4 + 2);
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return MEMORY[0x28216EA40]();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v32 > *(v4 + 3) >> 1)
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        v4 = sub_252737E74(isUniquelyReferenced_nonNull_native, v34, 1, v4);
      }

      isa &= isa - 1;
      if (*(v29 + 16))
      {
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v30)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v35 = *(v4 + 2);
          v36 = __OFADD__(v35, v30);
          v37 = v35 + v30;
          if (v36)
          {
            goto LABEL_33;
          }

          *(v4 + 2) = v37;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v28 >= v26)
      {
        break;
      }

      isa = v22[v28].isa;
      ++v27;
      if (isa)
      {
        v27 = v28;
        goto LABEL_14;
      }
    }

    v38 = *(v0 + 1008);
    v39 = *(v0 + 768);
    v40 = *(v0 + 680);
    v41 = *(v0 + 456);

    sub_2528BE790();
    sub_2528BE790();
    v42 = *(v0 + 360);
    v43 = *(v0 + 368);
    v38(v39, 1, 1, v40);
    v44 = *v41;
    v45 = v41[1];
    v46 = v41[3];
    *(v0 + 176) = v41[2];
    *(v0 + 192) = v46;
    *(v0 + 144) = v44;
    *(v0 + 160) = v45;
    sub_2528BE5B0();
    v47 = swift_task_alloc();
    *(v0 + 1344) = v47;
    *v47 = v0;
    v47[1] = sub_252773258;
    v48 = *(v0 + 880);
    v49 = *(v0 + 848);
    v50 = *(v0 + 768);

    return sub_252791C80(v53, v48, v42, v43, v49, v50);
  }
}

uint64_t sub_25277220C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 245);
  v5 = *v1;
  v3[154] = a1;

  v6 = swift_task_alloc();
  v3[155] = v6;
  *v6 = v5;
  v6[1] = sub_2527723AC;
  v7 = v2[149];
  v8 = v2[129];
  v9 = v2[83];
  v10 = v2[72];

  return MEMORY[0x28216EA10](v10, v9, v7, v8, v4, 0);
}

uint64_t sub_2527723AC()
{
  v2 = *v1;
  v2[156] = v0;

  v3 = v2[154];
  if (v0)
  {

    v4 = sub_252772948;
  }

  else
  {
    (*(v2[81] + 8))(v2[83], v2[80]);

    v4 = sub_252772500;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

char *sub_252772500()
{
  sub_2527213D8(*(v0 + 584), &qword_27F4FCD98, &qword_2528C6200);
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 584);
  sub_25274AA0C(*(v0 + 576), v3, &qword_27F4FCD98, &qword_2528C6200);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = MEMORY[0x277D84F90];
  v6 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v4, v2);

  sub_2527213D8(v3, &qword_27F4FCD98, &qword_2528C6200);
  v7 = *(v0 + 1184);
  v8 = *(v0 + 1152);
  v44 = *(v0 + 800);
  v45 = *(v0 + 888);
  v9 = *(v0 + 736);
  v10 = *(v0 + 720);
  v11 = *(v0 + 712);

  sub_252735C2C(v7);
  sub_252735C2C(v8);
  v12 = sub_25280D9C4(v6);

  v13 = *(v10 + 8);
  *(v0 + 1304) = v13;
  *(v0 + 1312) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v9, v11);
  sub_2527213D8(v44, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527213D8(v45, &qword_27F4FC488, &unk_2528C3F80);
  v14 = sub_25277405C(v12);
  *(v0 + 1320) = v14;

  v15 = v14 + 8;
  v16 = -1;
  v17 = -1 << LOBYTE(v14[4].isa);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  isa = v16 & v14[8].isa;
  v19 = (63 - v17) >> 6;
  v46 = v14;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  while (1)
  {
    *(v0 + 1336) = v5;
    if (!isa)
    {
      break;
    }

LABEL_10:
    v23 = *(*(v46 + 56) + ((v21 << 9) | (8 * __clz(__rbit64(isa)))));
    v24 = *(v23 + 16);
    v25 = *(v5 + 2);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v26 > *(v5 + 3) >> 1)
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_252737E74(result, v27, 1, v5);
      v5 = result;
    }

    isa &= isa - 1;
    if (*(v23 + 16))
    {
      if ((*(v5 + 3) >> 1) - *(v5 + 2) < v24)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v28 = *(v5 + 2);
        v29 = __OFADD__(v28, v24);
        v30 = v28 + v24;
        if (v29)
        {
          goto LABEL_29;
        }

        *(v5 + 2) = v30;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_27;
      }
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v22 >= v19)
    {
      break;
    }

    isa = v15[v22].isa;
    ++v21;
    if (isa)
    {
      v21 = v22;
      goto LABEL_10;
    }
  }

  v31 = *(v0 + 1008);
  v32 = *(v0 + 768);
  v33 = *(v0 + 680);
  v34 = *(v0 + 456);

  sub_2528BE790();
  sub_2528BE790();
  v35 = *(v0 + 360);
  v36 = *(v0 + 368);
  v31(v32, 1, 1, v33);
  v37 = *v34;
  v38 = v34[1];
  v39 = v34[3];
  *(v0 + 176) = v34[2];
  *(v0 + 192) = v39;
  *(v0 + 144) = v37;
  *(v0 + 160) = v38;
  sub_2528BE5B0();
  v40 = swift_task_alloc();
  *(v0 + 1344) = v40;
  *v40 = v0;
  v40[1] = sub_252773258;
  v41 = *(v0 + 880);
  v42 = *(v0 + 848);
  v43 = *(v0 + 768);

  return sub_252791C80(v46, v41, v35, v36, v42, v43);
}

uint64_t sub_252772948()
{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[107];
  v4 = v0[83];
  v5 = v0[81];
  v6 = v0[80];
  v7 = *(v5 + 8);
  v0[157] = v7;
  v0[158] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  v1(v3, 1, 1, v2);
  v8 = swift_task_alloc();
  v0[159] = v8;
  *v8 = v0;
  v8[1] = sub_252772A3C;
  v9 = v0[107];

  return MEMORY[0x28216E990](v9);
}

uint64_t sub_252772A3C(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 1280) = a1;

  v4 = swift_task_alloc();
  *(v3 + 1288) = v4;
  *v4 = v6;
  v4[1] = sub_252772B88;

  return sub_25279D1DC(a1);
}

uint64_t sub_252772B88(uint64_t a1)
{
  *(*v1 + 1296) = a1;

  return MEMORY[0x2822009F8](sub_252772C88, 0, 0);
}

char *sub_252772C88()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 856);
  v4 = *(v0 + 656);
  v5 = *(v0 + 640);

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  v2(v4, v5);
  if (*(v1 + 16) && (v6 = sub_252785C40(*(v0 + 536)), (v7 & 1) != 0))
  {
    v8 = *(v0 + 976);
    v63 = *(v0 + 1248);
    v65 = *(v0 + 584);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    v12 = *(v0 + 536);
    v13 = *(v0 + 520);
    (*(v10 + 16))(v9, *(*(v0 + 1296) + 56) + *(v10 + 72) * v6, v11);
    v8(v12, v13);

    sub_2528BEE70();

    sub_2527213D8(v65, &qword_27F4FCD98, &qword_2528C6200);
    (*(v10 + 8))(v9, v11);
    v14 = 0;
  }

  else
  {
    v15 = *(v0 + 976);
    v16 = *(v0 + 584);
    v17 = *(v0 + 536);
    v18 = *(v0 + 520);

    v15(v17, v18);
    sub_2527213D8(v16, &qword_27F4FCD98, &qword_2528C6200);
    v14 = 1;
  }

  (*(v0 + 1200))(*(v0 + 568), v14, 1, *(v0 + 816));
  v19 = *(v0 + 1000);
  v20 = *(v0 + 992);
  v21 = *(v0 + 584);
  sub_25274AA0C(*(v0 + 568), v21, &qword_27F4FCD98, &qword_2528C6200);
  v22 = swift_task_alloc();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  v23 = MEMORY[0x277D84F90];
  v24 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v22, v20);

  sub_2527213D8(v21, &qword_27F4FCD98, &qword_2528C6200);
  v25 = *(v0 + 1184);
  v26 = *(v0 + 1152);
  v62 = *(v0 + 800);
  v64 = *(v0 + 888);
  v27 = *(v0 + 736);
  v28 = *(v0 + 720);
  v29 = *(v0 + 712);

  sub_252735C2C(v25);
  sub_252735C2C(v26);
  v30 = sub_25280D9C4(v24);

  v31 = *(v28 + 8);
  *(v0 + 1304) = v31;
  *(v0 + 1312) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v27, v29);
  sub_2527213D8(v62, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527213D8(v64, &qword_27F4FC488, &unk_2528C3F80);
  v32 = sub_25277405C(v30);
  *(v0 + 1320) = v32;

  v33 = v32 + 8;
  v34 = -1;
  v35 = -1 << LOBYTE(v32[4].isa);
  if (-v35 < 64)
  {
    v34 = ~(-1 << -v35);
  }

  isa = v34 & v32[8].isa;
  v37 = (63 - v35) >> 6;
  v66 = v32;
  result = swift_bridgeObjectRetain_n();
  v39 = 0;
  while (1)
  {
    *(v0 + 1336) = v23;
    if (!isa)
    {
      break;
    }

LABEL_14:
    v41 = *(*(v66 + 56) + ((v39 << 9) | (8 * __clz(__rbit64(isa)))));
    v42 = *(v41 + 16);
    v43 = *(v23 + 2);
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v44 > *(v23 + 3) >> 1)
    {
      if (v43 <= v44)
      {
        v45 = v43 + v42;
      }

      else
      {
        v45 = v43;
      }

      result = sub_252737E74(result, v45, 1, v23);
      v23 = result;
    }

    isa &= isa - 1;
    if (*(v41 + 16))
    {
      if ((*(v23 + 3) >> 1) - *(v23 + 2) < v42)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v42)
      {
        v46 = *(v23 + 2);
        v47 = __OFADD__(v46, v42);
        v48 = v46 + v42;
        if (v47)
        {
          goto LABEL_33;
        }

        *(v23 + 2) = v48;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v40 >= v37)
    {
      break;
    }

    isa = v33[v40].isa;
    ++v39;
    if (isa)
    {
      v39 = v40;
      goto LABEL_14;
    }
  }

  v49 = *(v0 + 1008);
  v50 = *(v0 + 768);
  v51 = *(v0 + 680);
  v52 = *(v0 + 456);

  sub_2528BE790();
  sub_2528BE790();
  v53 = *(v0 + 360);
  v54 = *(v0 + 368);
  v49(v50, 1, 1, v51);
  v55 = *v52;
  v56 = v52[1];
  v57 = v52[3];
  *(v0 + 176) = v52[2];
  *(v0 + 192) = v57;
  *(v0 + 144) = v55;
  *(v0 + 160) = v56;
  sub_2528BE5B0();
  v58 = swift_task_alloc();
  *(v0 + 1344) = v58;
  *v58 = v0;
  v58[1] = sub_252773258;
  v59 = *(v0 + 880);
  v60 = *(v0 + 848);
  v61 = *(v0 + 768);

  return sub_252791C80(v66, v59, v53, v54, v60, v61);
}

uint64_t sub_252773258(uint64_t a1)
{
  v3 = *v2;
  v3[169] = a1;
  v3[170] = v1;

  if (v1)
  {
    v4 = v3[163];
    v5 = v3[110];
    v6 = v3[96];
    v7 = v3[91];
    v8 = v3[89];

    v4(v7, v8);
    sub_2527213D8(v6, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2527213D8(v5, &qword_27F4FC488, &unk_2528C3F80);
    v9 = sub_252773DBC;
  }

  else
  {
    v10 = v3[163];
    v11 = v3[110];
    v12 = v3[96];
    v13 = v3[91];
    v14 = v3[89];

    v10(v13, v14);
    sub_2527213D8(v12, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2527213D8(v11, &qword_27F4FC488, &unk_2528C3F80);
    v9 = sub_25277344C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void *sub_25277344C()
{
  v65 = v0;
  v1 = *(v0 + 1336);
  v2 = *(v1 + 16);
  if (v2)
  {
    v61 = MEMORY[0x277D84F90];
    sub_25282F064(0, v2, 0);
    v3 = v61;
    v4 = (v1 + 64);
    do
    {
      v5 = *v4;
      v6 = *(v4 - 1);
      v63[0] = *(v4 - 2);
      v63[1] = v6;
      v64 = v5;
      sub_252870158(&v62);
      v7 = v62;
      v9 = *(v61 + 16);
      v8 = *(v61 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_25282F064((v8 > 1), v9 + 1, 1);
      }

      *(v61 + 16) = v9 + 1;
      *(v61 + v9 + 32) = v7;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v10 = *(v0 + 1352);
  v11 = *(v0 + 848);
  v12 = *(v0 + 808);
  v13 = *(v0 + 504);
  sub_2528BE790();
  v14 = *(v0 + 400);
  ShowDeviceResultIntent.init()(v13);
  sub_252859C3C(v10, v11, v12, v63);
  *(v0 + 241) = v63[0];
  sub_2528BE7A0();
  sub_2528BE790();
  v15 = *(v0 + 242);
  if (v15 == 4 || (sub_252852964(v15, 1u) & 1) == 0)
  {
  }

  else
  {
    v16 = *(v0 + 1352);
    v17 = *(v0 + 848);
    v18 = swift_task_alloc();
    *(v18 + 16) = v17;
    *(v18 + 24) = v14;
    v19 = sub_252853180(sub_252760634, v18, v16);

    *(v0 + 432) = v19;
    sub_2528BE7A0();
    *(v0 + 440) = v16;

    sub_2528BE7A0();
  }

  sub_25285A33C(v3, v63);

  v20 = v63[0];
  if (LOBYTE(v63[0]) != 2)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v21 = sub_2528C08B0();
    __swift_project_value_buffer(v21, qword_27F5025C8);
    v22 = sub_2528C0890();
    v23 = sub_2528C0D10();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v63[0] = v25;
      *v24 = 136315138;
      if (v20)
      {
        v26 = 0xD000000000000010;
      }

      else
      {
        v26 = 6449010;
      }

      if (v20)
      {
        v27 = 0x80000002528E51C0;
      }

      else
      {
        v27 = 0xE300000000000000;
      }

      v28 = sub_2527389AC(v26, v27, v63);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_252711000, v22, v23, "Setting SecondaryAccessoryControlDestinationin in ShowDeviceResultIntent: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x2530A8D80](v25, -1, -1);
      MEMORY[0x2530A8D80](v24, -1, -1);
    }

    *(v0 + 244) = v20 & 1;
    sub_2528BE7A0();
  }

  v29 = _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(*(v0 + 1352));
  v30 = v29;
  v32 = v31;
  v33 = *(v29 + 16);
  if (v33)
  {
    v34 = sub_252865988(*(v29 + 16), 0);
    v35 = sub_252868828(v63, v34 + 4, v33, v30);
    sub_25271A648(*&v63[0]);
    if (v35 == v33)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  v34 = MEMORY[0x277D84F90];
LABEL_28:
  *(v0 + 408) = v34;
  sub_2528BE7A0();
  v36 = *(v32 + 16);
  if (v36)
  {
    v37 = sub_252865988(*(v32 + 16), 0);
    v38 = sub_252868828(v63, v37 + 4, v36, v32);
    sub_25271A648(*&v63[0]);
    if (v38 == v36)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v37 = MEMORY[0x277D84F90];
LABEL_32:
  v40 = *(v0 + 504);
  v39 = *(v0 + 512);
  *(v0 + 416) = v37;
  sub_2528BE7A0();
  sub_25275663C(v40, v39);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 512);
  v42 = *(v0 + 496);
  v43 = sub_2528C08B0();
  __swift_project_value_buffer(v43, qword_27F5025C8);
  sub_2527691F4(v41, v42, type metadata accessor for ShowDeviceResultIntent);
  v44 = sub_2528C0890();
  v45 = sub_2528C0D10();
  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v0 + 496);
  if (v46)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v63[0] = v49;
    *v48 = 136315138;
    result = sub_2528BE790();
    v51 = *(v0 + 243);
    if (v51 <= 1)
    {
      if (*(v0 + 243))
      {
        v53 = 0x6B6E694C70656564;
      }

      else
      {
        v53 = 0x726577736E61;
      }

      if (*(v0 + 243))
      {
        v52 = 0xE800000000000000;
      }

      else
      {
        v52 = 0xE600000000000000;
      }
    }

    else if (v51 == 2)
    {
      v52 = 0xE600000000000000;
      v53 = 0x656369746F6ELL;
    }

    else
    {
      if (v51 != 3)
      {
        __break(1u);
        return result;
      }

      v52 = 0xE600000000000000;
      v53 = 0x686372616573;
    }

    sub_2527567C0(*(v0 + 496), type metadata accessor for ShowDeviceResultIntent);
    v54 = sub_2527389AC(v53, v52, v63);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_252711000, v44, v45, "DeltaAttributeValueIntent returning ShowDeviceResultIntent for %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x2530A8D80](v49, -1, -1);
    MEMORY[0x2530A8D80](v48, -1, -1);
  }

  else
  {

    sub_2527567C0(v47, type metadata accessor for ShowDeviceResultIntent);
  }

  v55 = *(v0 + 848);
  v56 = *(v0 + 824);
  v60 = *(v0 + 816);
  v57 = *(v0 + 808);
  *(v0 + 424) = *(v0 + 1352);
  v58 = *(v0 + 512);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD8, &qword_2528C5D00);
  sub_2527566A0();
  sub_25276926C(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent, &protocol conformance descriptor for ShowDeviceResultIntent);
  sub_2528BE650();
  sub_2527567C0(v58, type metadata accessor for ShowDeviceResultIntent);
  sub_2527213D8(v57, &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v56 + 8))(v55, v60);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_252773DBC()
{
  v1 = v0[106];
  v2 = v0[103];
  v3 = v0[102];
  sub_2527213D8(v0[101], &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

NSObject *sub_25277405C(uint64_t a1)
{
  v85 = type metadata accessor for DeviceEntity(0);
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v91 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25278D51C(MEMORY[0x277D84F90]);
  v89 = *(a1 + 16);
  if (!v89)
  {
LABEL_67:
    if (qword_27F4FBB40 != -1)
    {
      goto LABEL_77;
    }

    goto LABEL_68;
  }

  v5 = 0;
  v88 = a1 + 32;
  *&v4 = 136315394;
  v87 = v4;
  while (1)
  {
    v96 = v3;
    v93 = v5;
    v6 = (v88 + 16 * v5);
    v7 = v6[1];
    v95 = *v6;
    sub_2528BEA50();
    sub_2528BEA50();
    v92 = v7;
    sub_2528BE6B0();
    v8 = *(*&v107 + 16);
    v94 = *&v107;
    if (v8)
    {
      v9 = *&v107 + 40;
      v99 = MEMORY[0x277D84F90];
      while (1)
      {
        v3 = *(v9 - 8);
        sub_2528BEA50();
        sub_2528BEA50();
        sub_2528BE6B0();
        if (v112)
        {
          break;
        }

        sub_25276925C(*&v107, v108, v109, v110, v111, 0);
        sub_2528BE6B0();
        v10 = *&v107;
        v11 = v108;
        v12 = v109;
        v13 = v110;
        v14 = v111;
        v15 = v112;
        if (!v112)
        {
          v16 = *v101;
          v104 = v107;
          v103 = v108;
          v17 = v109;
          v18 = v110;
          sub_252760C18(*&v107, v108, v109, v110, v111);
          v98 = v16;
          sub_2528BE790();
          v102 = *&v113;
          v100 = v114;
          v19 = v115;
          v105 = v14;
          v20 = v14 >> 1;
          v21 = v117;
          if (v14 >> 1 == 4)
          {
            if ((v117 & 0xFE) == 8)
            {
              LODWORD(v97) = v117;
              v98 = v116;

              sub_2528BE790();
              if (LOBYTE(v107))
              {
                v31 = sub_2528C1060();

                v25 = v18;
                if ((v31 & 1) == 0)
                {
                  v28 = *&v102;
                  v29 = v105;
                  if (__OFSUB__(*&v104, *&v102))
                  {
                    goto LABEL_76;
                  }

                  v32 = (*&v104 - *&v102) & ~((*&v104 - *&v102) >> 63);
LABEL_48:
                  v118 = v32;
                  v119 = 0;
                  v120 = 0;
                  v121 = 8;
                  sub_252779D90(&v118, v32);
                  goto LABEL_53;
                }
              }

              else
              {

                v25 = v18;
              }

              v28 = *&v102;
              v29 = v105;
              if (__OFADD__(*&v104, *&v102))
              {
                goto LABEL_73;
              }

              if ((*&v104 + *&v102) >= 100)
              {
                v32 = 100;
              }

              else
              {
                v32 = *&v104 + *&v102;
              }

              goto LABEL_48;
            }
          }

          else if (v20 == 59)
          {
            if ((v117 & 0xFE) == 0x76)
            {
              LODWORD(v97) = v117;
              v98 = v116;

              sub_2528BE790();
              if (LOBYTE(v107))
              {
                v27 = sub_2528C1060();

                v25 = v18;
                if ((v27 & 1) == 0)
                {
                  v28 = *&v102;
                  v29 = v105;
                  if (__OFSUB__(*&v104, *&v102))
                  {
                    goto LABEL_75;
                  }

                  v30 = (*&v104 - *&v102) & ~((*&v104 - *&v102) >> 63);
LABEL_42:
                  v126 = v30;
                  v127 = 0;
                  v128 = 0;
                  v129 = 118;
                  sub_252779D90(&v126, v30);
                  goto LABEL_53;
                }
              }

              else
              {

                v25 = v18;
              }

              v28 = *&v102;
              v29 = v105;
              if (__OFADD__(*&v104, *&v102))
              {
                goto LABEL_74;
              }

              if ((*&v104 + *&v102) >= 100)
              {
                v30 = 100;
              }

              else
              {
                v30 = *&v104 + *&v102;
              }

              goto LABEL_42;
            }
          }

          else if (v20 == 47 && (v117 & 0xFE) == 0x5E)
          {
            LODWORD(v97) = v117;
            v98 = v116;
            v22 = v104;

            v23 = v102;
            sub_2528BE790();
            if (LOBYTE(v107))
            {
              v24 = sub_2528C1060();

              v25 = v18;
              if ((v24 & 1) == 0)
              {
                v26 = v22 - v23;
                if (v22 - v23 < 0.0)
                {
                  v26 = 0.0;
                }

                goto LABEL_52;
              }
            }

            else
            {

              v25 = v18;
            }

            v26 = v22 + v23;
            if (v22 + v23 > 100.0)
            {
              v26 = 100.0;
            }

LABEL_52:
            v29 = v105;
            v28 = *&v102;
            v122 = *&v26;
            v123 = 0;
            v124 = 0;
            v125 = 94;
            v58 = sub_252779FA0(&v122, v26);
LABEL_53:
            v99 = v58;

            sub_25272C15C(*&v104, v103, v17, v25, v29);
            sub_25272C15C(v28, v100, v19, v98, v97);
            goto LABEL_9;
          }

          v97 = v3;
          v33 = *&v104;
          v34 = v103;
          v35 = v116;
          sub_25272C15C(*&v104, v103, v17, v18, v105);
          sub_25272C15C(*&v102, v100, v19, v35, v21);
          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v36 = sub_2528C08B0();
          v102 = COERCE_DOUBLE(__swift_project_value_buffer(v36, qword_27F5025C8));
          sub_25277B0C4(v33, v34, v17, v18, v105, 0);
          v37 = v34;
          v38 = v33;
          v39 = v101;
          sub_25277AFA0(v101, &v107);
          v3 = sub_2528C0890();
          v40 = sub_2528C0CF0();
          v41 = v38;
          v100 = v17;
          v102 = *&v18;
          v42 = v105;
          sub_25276925C(v41, v37, v17, v18, v105, 0);
          sub_25277B0D4(v39);
          v43 = v40;
          if (!os_log_type_enabled(v3, v40))
          {

            sub_25276925C(*&v104, v103, v100, *&v102, v42, 0);
            goto LABEL_9;
          }

          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v90 = v45;
          v106 = v45;
          *v44 = v87;
          v107 = v104;
          v108 = v103;
          v109 = v100;
          v110 = *&v102;
          v111 = v42;
          v47 = sub_252873604(v45, v46);
          v49 = v48;
          sub_25272C15C(*&v107, v108, v109, v110, v111);
          v50 = sub_2527389AC(v47, v49, &v106);

          *(v44 + 4) = v50;
          *(v44 + 12) = 2080;
          v51 = sub_2528BE790();
          v53 = sub_252873604(v51, v52);
          v55 = v54;
          sub_25272C15C(*&v107, v108, v109, v110, v111);
          v56 = sub_2527389AC(v53, v55, &v106);

          *(v44 + 14) = v56;
          _os_log_impl(&dword_252711000, v3, v43, "Unexpected attribute result for incoming attribute. %s, %s", v44, 0x16u);
          v57 = v90;
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v57, -1, -1);
          MEMORY[0x2530A8D80](v44, -1, -1);

          goto LABEL_12;
        }

        sub_25276925C(v10, v11, v12, v13, v14, v15);
LABEL_9:
        v9 += 16;
        if (!--v8)
        {
          goto LABEL_55;
        }
      }

      sub_25276925C(*&v107, v108, v109, v110, v111, v112);

LABEL_12:

      goto LABEL_9;
    }

    v99 = MEMORY[0x277D84F90];
LABEL_55:

    v59 = v99;
    if (!*(v99 + 2))
    {

      v3 = v96;
      goto LABEL_4;
    }

    v60 = v91;
    sub_2528BE6B0();
    v61 = v96;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = *&v61;
    v63 = sub_252785BD4(v60);
    v65 = *(v61 + 16);
    v66 = (v64 & 1) == 0;
    v67 = __OFADD__(v65, v66);
    v68 = v65 + v66;
    if (v67)
    {
      break;
    }

    v69 = v64;
    if (*(v61 + 24) >= v68)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = v63;
        sub_2527E12F8();
        v63 = v74;
      }
    }

    else
    {
      sub_2527DE0A0(v68, isUniquelyReferenced_nonNull_native);
      v63 = sub_252785BD4(v91);
      if ((v69 & 1) != (v70 & 1))
      {
        result = sub_2528C10A0();
        __break(1u);
        return result;
      }
    }

    v3 = *&v107;
    if (v69)
    {
      *(*(*&v107 + 56) + 8 * v63) = v59;
    }

    else
    {
      *(*&v107 + 8 * (v63 >> 6) + 64) |= 1 << v63;
      v71 = v63;
      sub_2527691F4(v91, v3[6].isa + *(v86 + 72) * v63, type metadata accessor for DeviceEntity);
      *(v3[7].isa + v71) = v59;
      isa = v3[2].isa;
      v67 = __OFADD__(isa, 1);
      v73 = (isa + 1);
      if (v67)
      {
        goto LABEL_72;
      }

      v3[2].isa = v73;
    }

    sub_2527567C0(v91, type metadata accessor for DeviceEntity);

LABEL_4:
    v5 = v93 + 1;
    if (v93 + 1 == v89)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  swift_once();
LABEL_68:
  v75 = sub_2528C08B0();
  __swift_project_value_buffer(v75, qword_27F5025C8);
  v76 = sub_2528C0890();
  v77 = sub_2528C0D10();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v107 = *&v79;
    *v78 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE90, &qword_2528C6720);
    sub_25276926C(&qword_27F4FCE98, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
    v80 = sub_2528C08E0();
    v82 = v81;

    v83 = sub_2527389AC(v80, v82, &v107);

    *(v78 + 4) = v83;
    _os_log_impl(&dword_252711000, v76, v77, "Created delta dicctionary %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    MEMORY[0x2530A8D80](v79, -1, -1);
    MEMORY[0x2530A8D80](v78, -1, -1);
  }

  return v3;
}

uint64_t sub_252774DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = *(type metadata accessor for DeviceEntity(0) - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252774EA4, 0, 0);
}

uint64_t sub_252774EA4()
{
  v13 = v0;
  sub_2528BE790();
  v1 = *(v0 + 16);
  v11 = MEMORY[0x277D84FA0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 40);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    do
    {
      v6 = *(v0 + 48);
      sub_2527691F4(v4, v6, type metadata accessor for DeviceEntity);
      sub_2528BE6B0();
      sub_25273A214(v12, *(v0 + 56));
      sub_2527567C0(v6, type metadata accessor for DeviceEntity);
      v4 += v5;
      --v2;
    }

    while (v2);

    v7 = v11;
  }

  else
  {

    v7 = MEMORY[0x277D84FA0];
  }

  v8 = swift_task_alloc();
  *(v8 + 16) = *(v0 + 24);
  sub_2527E4D64(sub_25277B104, v8, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252775030(_WORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18[-v10];
  LOWORD(a1) = *a1;
  v12 = sub_2528C0C40();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v6);
  v13 = (*(v7 + 80) + 104) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a1;
  v15 = a2[1];
  *(v14 + 40) = *a2;
  *(v14 + 56) = v15;
  v16 = a2[3];
  *(v14 + 72) = a2[2];
  *(v14 + 88) = v16;
  (*(v7 + 32))(v14 + v13, &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  sub_25277AFA0(a2, v18);
  sub_2527D4188(0, 0, v11, &unk_2528C6E38, v14);
}

uint64_t sub_252775248(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 184) = a5;
  *(v6 + 192) = a6;
  *(v6 + 114) = a4;
  *(v6 + 176) = a1;
  v7 = sub_2528BEC90();
  *(v6 + 200) = v7;
  *(v6 + 208) = *(v7 - 8);
  *(v6 + 216) = swift_task_alloc();
  v8 = sub_2528BEEC0();
  *(v6 + 224) = v8;
  *(v6 + 232) = *(v8 - 8);
  *(v6 + 240) = swift_task_alloc();
  v9 = sub_2528BF400();
  *(v6 + 248) = v9;
  *(v6 + 256) = *(v9 - 8);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  v10 = sub_2528BE8B0();
  *(v6 + 296) = v10;
  *(v6 + 304) = *(v10 - 8);
  *(v6 + 312) = swift_task_alloc();
  v11 = sub_2528BECF0();
  *(v6 + 320) = v11;
  *(v6 + 328) = *(v11 - 8);
  *(v6 + 336) = swift_task_alloc();
  v12 = sub_2528BEE30();
  *(v6 + 344) = v12;
  *(v6 + 352) = *(v12 - 8);
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252775538, 0, 0);
}

uint64_t sub_252775538()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v15 = *(v0 + 344);
  v17 = *(v0 + 304);
  v18 = *(v0 + 296);
  v16 = *(v0 + 312);
  v3 = *(v0 + 184);
  sub_2528BE790();
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 120) = v5;
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  *(v0 + 128) = v4;
  *(v0 + 136) = v6;
  *(v0 + 144) = v7;
  v8 = *(v0 + 112);
  *(v0 + 152) = v8;
  sub_252870158((v0 + 113));
  sub_25272C15C(v5, v4, v6, v7, v8);
  *(v0 + 116) = *(v0 + 113);
  sub_2528BF2F0();
  sub_2528BEE00();
  v9 = *(v2 + 8);
  *(v0 + 376) = v9;
  *(v0 + 384) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v15);
  v10 = *v3;
  v11 = v3[1];
  v12 = v3[3];
  *(v0 + 48) = v3[2];
  *(v0 + 64) = v12;
  *(v0 + 16) = v10;
  *(v0 + 32) = v11;
  sub_25276EC98();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v17 + 8))(v16, v18);
  sub_2528BE790();
  *(v0 + 392) = *(v0 + 160);
  *(v0 + 117) = *(v0 + 168);
  sub_2528BEFC0();
  v13 = swift_task_alloc();
  *(v0 + 400) = v13;
  *v13 = v0;
  v13[1] = sub_25277571C;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_25277571C(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 408) = a1;

  v4 = swift_task_alloc();
  *(v3 + 416) = v4;
  *v4 = v6;
  v4[1] = sub_252775868;

  return sub_25279D1DC(a1);
}

uint64_t sub_252775868(uint64_t a1)
{
  *(*v1 + 424) = a1;

  return MEMORY[0x2822009F8](sub_252775968, 0, 0);
}

uint64_t sub_252775968()
{
  v1 = *(v0 + 424);

  if (*(v1 + 16) && (v2 = sub_252785C40(*(v0 + 336)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 280);
    v52 = *(v0 + 288);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    v11 = *(v0 + 224);
    (*(v9 + 16))(v10, *(*(v0 + 424) + 56) + *(v9 + 72) * v2, v11);

    sub_2528BEE70();
    (*(v9 + 8))(v10, v11);
    (*(v8 + 32))(v5, v6, v7);
    sub_25272006C(v52, v4, &qword_27F4FCE00, &qword_2528C5D20);
    v12 = sub_2528BE890();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v4, 1, v12);
    v15 = *(v0 + 280);
    if (v14 == 1)
    {
      sub_2527213D8(*(v0 + 280), &qword_27F4FCE00, &qword_2528C5D20);
      v53 = 0;
    }

    else
    {
      v53 = sub_2528BE880();
      (*(v13 + 8))(v15, v12);
    }

    v30 = v14 == 1;
    v47 = *(v0 + 376);
    v31 = *(v0 + 360);
    v46 = *(v0 + 344);
    v50 = *(v0 + 336);
    v51 = *(v0 + 116);
    v32 = *(v0 + 328);
    v48 = *(v0 + 288);
    v49 = *(v0 + 320);
    v33 = *(v0 + 272);
    v35 = *(v0 + 248);
    v34 = *(v0 + 256);
    v37 = *(v0 + 208);
    v36 = *(v0 + 216);
    v38 = *(v0 + 200);
    v39 = *(v0 + 114);
    *(v0 + 432) = v30;
    sub_2528BEC80();
    sub_2528BEC60();
    v29 = v40;
    (*(v37 + 8))(v36, v38);
    sub_2528BF2F0();
    v41 = sub_2528BEDD0();
    v47(v31, v46);
    (*(v34 + 8))(v33, v35);
    sub_2527213D8(v48, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v32 + 8))(v50, v49);
    if ((v39 & 0xC000) == 0x4000)
    {
      v42 = HIBYTE(v39) & 0x3F;
    }

    else
    {
      v42 = v39;
    }

    v23 = v42 + 1;
    v22 = v53;
    v24 = qword_2528C6E48[v51];
    v26 = *(v0 + 117);
    *(v0 + 440) = v26;
    v28 = *(v0 + 432);
    v27 = v41 & 1;
    v25 = *(v0 + 392);
    v20 = 0xD000000000000028;
    v21 = 0x80000002528E5820;
  }

  else
  {
    v17 = *(v0 + 328);
    v16 = *(v0 + 336);
    v18 = *(v0 + 320);
    v19 = *(v0 + 288);

    sub_2527213D8(v19, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v17 + 8))(v16, v18);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  v43 = *(v0 + 176);
  *v43 = v20;
  *(v43 + 8) = v21;
  *(v43 + 16) = v22;
  *(v43 + 24) = v28;
  *(v43 + 32) = v29;
  *(v43 + 40) = v27;
  *(v43 + 48) = v23;
  *(v43 + 56) = v24;
  *(v43 + 64) = v25;
  *(v43 + 72) = v26;

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_252775D88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB678 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F5028F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252775E30(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_252775EDC;

  return sub_25276F1E0(a1);
}

uint64_t sub_252775EDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_252775FD0@<D0>(_OWORD *a1@<X8>)
{
  sub_25277A1C0(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_252776010(uint64_t a1)
{
  v2 = sub_25276EC98();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252776060(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2527760A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}