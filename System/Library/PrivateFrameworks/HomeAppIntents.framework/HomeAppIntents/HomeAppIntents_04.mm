uint64_t sub_252776108()
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v12);
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0x7475626972747461, 0xEB00000000203A65);
  v0 = sub_2528BE790();
  v2 = sub_252873604(v0, v1);
  v4 = v3;
  sub_25272C15C(0, 0xE000000000000000, v13, v14, v15);
  MEMORY[0x2530A80B0](v2, v4);

  MEMORY[0x2530A80B0](0x203A61746C656420, 0xE800000000000000);
  sub_2528BE790();
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x7365636976656420, 0xEA0000000000203ALL);
  sub_2528BE790();
  v5 = type metadata accessor for DeviceEntity(0);
  v6 = MEMORY[0x2530A81A0](0, v5);
  v8 = v7;

  MEMORY[0x2530A80B0](v6, v8);

  MEMORY[0x2530A80B0](0x746E45656D6F6820, 0xED0000203A797469);
  sub_2528BE790();
  v9 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v9);

  MEMORY[0x2530A80B0](0x746E45656E6F7A20, 0xEF203A7365697469);
  sub_2528BE790();
  MEMORY[0x2530A80B0](0, 0xE000000000000000);

  MEMORY[0x2530A80B0](0x746E456D6F6F7220, 0xEF203A7365697469);
  sub_2528BE790();
  MEMORY[0x2530A80B0](0, 0xE000000000000000);

  MEMORY[0x2530A80B0](0x74756F656D697420, 0xEA0000000000203ALL);
  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE10, &unk_2528C6280);
  v10 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v10);

  return 0;
}

uint64_t sub_2527764BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_2528BECF0();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_2528BEE30();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v6[16] = swift_task_alloc();
  v9 = sub_2528BEEC0();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF60, &unk_2528C6E10);
  v6[20] = swift_task_alloc();
  v10 = sub_2528BF2B0();
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25277677C, 0, 0);
}

uint64_t sub_25277677C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 32);
  v3 = sub_2528BF400();
  *(v0 + 240) = v3;
  v4 = *(v3 - 8);
  *(v0 + 248) = v4;
  v6 = v4 + 56;
  v5 = *(v4 + 56);
  *(v0 + 256) = v5;
  *(v0 + 264) = v6 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  *(v0 + 16) = sub_25278D310(MEMORY[0x277D84F90]);
  v7 = *(v2 + 16);
  *(v0 + 272) = v7;
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 32);
    v10 = *(sub_2528BFD30() - 8);
    v11 = *(v10 + 80);
    *(v0 + 352) = v11;
    v12 = (v11 + 32) & ~v11;
    v13 = *(v10 + 72);
    *(v0 + 356) = *MEMORY[0x277D159B8];
    *(v0 + 280) = v13;
    *(v0 + 288) = 0;
    v34 = (v8 + *v8);
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = sub_252776BD8;
    v15 = *(v0 + 208);

    return v34(v15, v9 + v12);
  }

  else
  {
    v17 = *(v0 + 240);
    v18 = *(v0 + 248);
    v19 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v19, &qword_27F4FCD98, &qword_2528C6200);
    v20 = *(v18 + 48);
    v21 = v20(v19, 1, v17);
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    if (v21 == 1)
    {
      (*(v22 + 16))(v24, *(v0 + 40), *(v0 + 240));
      if (v20(v25, 1, v23) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v22 + 32))(v24, *(v0 + 216), *(v0 + 240));
    }

    v26 = *(v0 + 232);
    v27 = *(v0 + 224);
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);
    (*(v0 + 256))(v27, 0, 1, *(v0 + 240));
    v30 = *(v0 + 16);
    v31 = swift_task_alloc();
    v31[2] = v29;
    v31[3] = v30;
    v31[4] = v27;
    v32 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B21C, v31, v28);

    sub_2527213D8(v26, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v27, &qword_27F4FCD98, &qword_2528C6200);

    v33 = *(v0 + 8);

    return v33(v32);
  }
}

uint64_t sub_252776BD8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_2527770B0;
  }

  else
  {
    v2 = sub_252776CEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252776CEC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  sub_2527213D8(v1, &qword_27F4FCD98, &qword_2528C6200);
  sub_25274AA0C(v2, v1, &qword_27F4FCD98, &qword_2528C6200);
  v3 = *(v0 + 288) + 1;
  if (v3 == *(v0 + 272))
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 248);
    v6 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v6, &qword_27F4FCD98, &qword_2528C6200);
    v7 = *(v5 + 48);
    v8 = v7(v6, 1, v4);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    if (v8 == 1)
    {
      (*(v9 + 16))(v11, *(v0 + 40), *(v0 + 240));
      if (v7(v12, 1, v10) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v9 + 32))(v11, *(v0 + 216), *(v0 + 240));
    }

    v17 = *(v0 + 232);
    v18 = *(v0 + 224);
    v20 = *(v0 + 48);
    v19 = *(v0 + 56);
    (*(v0 + 256))(v18, 0, 1, *(v0 + 240));
    v21 = *(v0 + 16);
    v22 = swift_task_alloc();
    v22[2] = v20;
    v22[3] = v21;
    v22[4] = v18;
    v23 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B21C, v22, v19);

    sub_2527213D8(v17, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v18, &qword_27F4FCD98, &qword_2528C6200);

    v24 = *(v0 + 8);

    return v24(v23);
  }

  else
  {
    *(v0 + 288) = v3;
    v13 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v3;
    v25 = (*(v0 + 64) + **(v0 + 64));
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = sub_252776BD8;
    v15 = *(v0 + 208);

    return v25(v15, v13);
  }
}

uint64_t sub_2527770B0()
{
  v1 = *(v0 + 304);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 356);
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(v7 + 56))(v8, 0, 1, v6);
    (*(v7 + 32))(v4, v8, v6);
    (*(v7 + 16))(v5, v4, v6);
    if ((*(v7 + 88))(v5, v6) == v3)
    {
      v9 = *(v0 + 184);
      v10 = *(v0 + 128);
      (*(*(v0 + 176) + 96))(v9, *(v0 + 168));
      sub_25276ECEC(*v9, (v0 + 16));
      *(v0 + 312) = 0;

      v11 = sub_2528C05D0();
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
      sub_2528BEFC0();
      v12 = swift_task_alloc();
      *(v0 + 320) = v12;
      *v12 = v0;
      v12[1] = sub_25277769C;
      v13 = *(v0 + 128);

      return MEMORY[0x28216E990](v13);
    }

    v17 = *(v0 + 304);
    v18 = *(v0 + 184);
    v19 = *(v0 + 168);
    v20 = *(*(v0 + 176) + 8);
    v20(*(v0 + 192), v19);

    v20(v18, v19);
  }

  else
  {
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v16 = *(v0 + 160);

    (*(v15 + 56))(v16, 1, 1, v14);
    sub_2527213D8(v16, &qword_27F4FCF60, &unk_2528C6E10);
  }

  v21 = *(v0 + 288) + 1;
  if (v21 == *(v0 + 272))
  {
    v22 = *(v0 + 240);
    v23 = *(v0 + 248);
    v24 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v24, &qword_27F4FCD98, &qword_2528C6200);
    v25 = *(v23 + 48);
    v26 = v25(v24, 1, v22);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    if (v26 == 1)
    {
      (*(v27 + 16))(v29, *(v0 + 40), *(v0 + 240));
      if (v25(v30, 1, v28) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v27 + 32))(v29, *(v0 + 216), *(v0 + 240));
    }

    v34 = *(v0 + 232);
    v35 = *(v0 + 224);
    v37 = *(v0 + 48);
    v36 = *(v0 + 56);
    (*(v0 + 256))(v35, 0, 1, *(v0 + 240));
    v38 = *(v0 + 16);
    v39 = swift_task_alloc();
    v39[2] = v37;
    v39[3] = v38;
    v39[4] = v35;
    v40 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B21C, v39, v36);

    sub_2527213D8(v34, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v35, &qword_27F4FCD98, &qword_2528C6200);

    v41 = *(v0 + 8);

    return v41(v40);
  }

  else
  {
    *(v0 + 288) = v21;
    v31 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v21;
    v43 = (*(v0 + 64) + **(v0 + 64));
    v32 = swift_task_alloc();
    *(v0 + 296) = v32;
    *v32 = v0;
    v32[1] = sub_252776BD8;
    v33 = *(v0 + 208);

    return v43(v33, v31);
  }
}

uint64_t sub_25277769C(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 328) = a1;

  v4 = swift_task_alloc();
  *(v3 + 336) = v4;
  *v4 = v6;
  v4[1] = sub_2527777E8;

  return sub_25279D1DC(a1);
}

uint64_t sub_2527777E8(uint64_t a1)
{
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_2527778E8, 0, 0);
}

uint64_t sub_2527778E8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  (*(v5 + 8))(v2, v4);
  if (*(v1 + 16) && (v6 = sub_252785C40(*(v0 + 96)), (v7 & 1) != 0))
  {
    v8 = *(v0 + 304);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 136);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    (*(v10 + 16))(v9, *(*(v0 + 344) + 56) + *(v10 + 72) * v6, v11);
    (*(v13 + 8))(v12, v14);

    sub_2528BEE70();

    (*(v10 + 8))(v9, v11);
    v15 = 0;
  }

  else
  {
    v16 = *(v0 + 304);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 80);

    (*(v18 + 8))(v17, v19);
    v15 = 1;
  }

  v20 = *(v0 + 256);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  v23 = *(v0 + 200);
  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  sub_2527213D8(v22, &qword_27F4FCD98, &qword_2528C6200);
  v20(v23, v15, 1, v21);
  sub_25274AA0C(v23, v22, &qword_27F4FCD98, &qword_2528C6200);
  v24 = *(v0 + 288) + 1;
  if (v24 == *(v0 + 272))
  {
    v25 = *(v0 + 240);
    v26 = *(v0 + 248);
    v27 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v27, &qword_27F4FCD98, &qword_2528C6200);
    v28 = *(v26 + 48);
    v29 = v28(v27, 1, v25);
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    v33 = *(v0 + 216);
    v32 = *(v0 + 224);
    if (v29 == 1)
    {
      (*(v30 + 16))(v32, *(v0 + 40), *(v0 + 240));
      if (v28(v33, 1, v31) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v30 + 32))(v32, *(v0 + 216), *(v0 + 240));
    }

    v38 = *(v0 + 232);
    v39 = *(v0 + 224);
    v41 = *(v0 + 48);
    v40 = *(v0 + 56);
    (*(v0 + 256))(v39, 0, 1, *(v0 + 240));
    v42 = *(v0 + 16);
    v43 = swift_task_alloc();
    v43[2] = v41;
    v43[3] = v42;
    v43[4] = v39;
    v44 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B21C, v43, v40);

    sub_2527213D8(v38, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v39, &qword_27F4FCD98, &qword_2528C6200);

    v45 = *(v0 + 8);

    return v45(v44);
  }

  else
  {
    *(v0 + 288) = v24;
    v34 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v24;
    v46 = (*(v0 + 64) + **(v0 + 64));
    v35 = swift_task_alloc();
    *(v0 + 296) = v35;
    *v35 = v0;
    v35[1] = sub_252776BD8;
    v36 = *(v0 + 208);

    return v46(v36, v34);
  }
}

uint64_t sub_252777E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_2528BECF0();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_2528BEE30();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v6[16] = swift_task_alloc();
  v9 = sub_2528BEEC0();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF60, &unk_2528C6E10);
  v6[20] = swift_task_alloc();
  v10 = sub_2528BF2B0();
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527780E0, 0, 0);
}

uint64_t sub_2527780E0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 32);
  v3 = sub_2528BF400();
  *(v0 + 240) = v3;
  v4 = *(v3 - 8);
  *(v0 + 248) = v4;
  v6 = v4 + 56;
  v5 = *(v4 + 56);
  *(v0 + 256) = v5;
  *(v0 + 264) = v6 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  *(v0 + 16) = sub_25278D310(MEMORY[0x277D84F90]);
  v7 = *(v2 + 16);
  *(v0 + 272) = v7;
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 32);
    v10 = *(sub_2528BFD00() - 8);
    v11 = *(v10 + 80);
    *(v0 + 352) = v11;
    v12 = (v11 + 32) & ~v11;
    v13 = *(v10 + 72);
    *(v0 + 356) = *MEMORY[0x277D159B8];
    *(v0 + 280) = v13;
    *(v0 + 288) = 0;
    v34 = (v8 + *v8);
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = sub_25277853C;
    v15 = *(v0 + 208);

    return v34(v15, v9 + v12);
  }

  else
  {
    v17 = *(v0 + 240);
    v18 = *(v0 + 248);
    v19 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v19, &qword_27F4FCD98, &qword_2528C6200);
    v20 = *(v18 + 48);
    v21 = v20(v19, 1, v17);
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v25 = *(v0 + 216);
    v24 = *(v0 + 224);
    if (v21 == 1)
    {
      (*(v22 + 16))(v24, *(v0 + 40), *(v0 + 240));
      if (v20(v25, 1, v23) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v22 + 32))(v24, *(v0 + 216), *(v0 + 240));
    }

    v26 = *(v0 + 232);
    v27 = *(v0 + 224);
    v29 = *(v0 + 48);
    v28 = *(v0 + 56);
    (*(v0 + 256))(v27, 0, 1, *(v0 + 240));
    v30 = *(v0 + 16);
    v31 = swift_task_alloc();
    v31[2] = v29;
    v31[3] = v30;
    v31[4] = v27;
    v32 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B0A4, v31, v28);

    sub_2527213D8(v26, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v27, &qword_27F4FCD98, &qword_2528C6200);

    v33 = *(v0 + 8);

    return v33(v32);
  }
}

uint64_t sub_25277853C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_252778A14;
  }

  else
  {
    v2 = sub_252778650;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252778650()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  sub_2527213D8(v1, &qword_27F4FCD98, &qword_2528C6200);
  sub_25274AA0C(v2, v1, &qword_27F4FCD98, &qword_2528C6200);
  v3 = *(v0 + 288) + 1;
  if (v3 == *(v0 + 272))
  {
    v4 = *(v0 + 240);
    v5 = *(v0 + 248);
    v6 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v6, &qword_27F4FCD98, &qword_2528C6200);
    v7 = *(v5 + 48);
    v8 = v7(v6, 1, v4);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    if (v8 == 1)
    {
      (*(v9 + 16))(v11, *(v0 + 40), *(v0 + 240));
      if (v7(v12, 1, v10) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v9 + 32))(v11, *(v0 + 216), *(v0 + 240));
    }

    v17 = *(v0 + 232);
    v18 = *(v0 + 224);
    v20 = *(v0 + 48);
    v19 = *(v0 + 56);
    (*(v0 + 256))(v18, 0, 1, *(v0 + 240));
    v21 = *(v0 + 16);
    v22 = swift_task_alloc();
    v22[2] = v20;
    v22[3] = v21;
    v22[4] = v18;
    v23 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B0A4, v22, v19);

    sub_2527213D8(v17, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v18, &qword_27F4FCD98, &qword_2528C6200);

    v24 = *(v0 + 8);

    return v24(v23);
  }

  else
  {
    *(v0 + 288) = v3;
    v13 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v3;
    v25 = (*(v0 + 64) + **(v0 + 64));
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = sub_25277853C;
    v15 = *(v0 + 208);

    return v25(v15, v13);
  }
}

uint64_t sub_252778A14()
{
  v1 = *(v0 + 304);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 356);
    v5 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(v7 + 56))(v8, 0, 1, v6);
    (*(v7 + 32))(v4, v8, v6);
    (*(v7 + 16))(v5, v4, v6);
    if ((*(v7 + 88))(v5, v6) == v3)
    {
      v9 = *(v0 + 184);
      v10 = *(v0 + 128);
      (*(*(v0 + 176) + 96))(v9, *(v0 + 168));
      sub_25276ECEC(*v9, (v0 + 16));
      *(v0 + 312) = 0;

      v11 = sub_2528C05D0();
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
      sub_2528BEFC0();
      v12 = swift_task_alloc();
      *(v0 + 320) = v12;
      *v12 = v0;
      v12[1] = sub_252779000;
      v13 = *(v0 + 128);

      return MEMORY[0x28216E990](v13);
    }

    v17 = *(v0 + 304);
    v18 = *(v0 + 184);
    v19 = *(v0 + 168);
    v20 = *(*(v0 + 176) + 8);
    v20(*(v0 + 192), v19);

    v20(v18, v19);
  }

  else
  {
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    v16 = *(v0 + 160);

    (*(v15 + 56))(v16, 1, 1, v14);
    sub_2527213D8(v16, &qword_27F4FCF60, &unk_2528C6E10);
  }

  v21 = *(v0 + 288) + 1;
  if (v21 == *(v0 + 272))
  {
    v22 = *(v0 + 240);
    v23 = *(v0 + 248);
    v24 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v24, &qword_27F4FCD98, &qword_2528C6200);
    v25 = *(v23 + 48);
    v26 = v25(v24, 1, v22);
    v28 = *(v0 + 240);
    v27 = *(v0 + 248);
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    if (v26 == 1)
    {
      (*(v27 + 16))(v29, *(v0 + 40), *(v0 + 240));
      if (v25(v30, 1, v28) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v27 + 32))(v29, *(v0 + 216), *(v0 + 240));
    }

    v34 = *(v0 + 232);
    v35 = *(v0 + 224);
    v37 = *(v0 + 48);
    v36 = *(v0 + 56);
    (*(v0 + 256))(v35, 0, 1, *(v0 + 240));
    v38 = *(v0 + 16);
    v39 = swift_task_alloc();
    v39[2] = v37;
    v39[3] = v38;
    v39[4] = v35;
    v40 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B0A4, v39, v36);

    sub_2527213D8(v34, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v35, &qword_27F4FCD98, &qword_2528C6200);

    v41 = *(v0 + 8);

    return v41(v40);
  }

  else
  {
    *(v0 + 288) = v21;
    v31 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v21;
    v43 = (*(v0 + 64) + **(v0 + 64));
    v32 = swift_task_alloc();
    *(v0 + 296) = v32;
    *v32 = v0;
    v32[1] = sub_25277853C;
    v33 = *(v0 + 208);

    return v43(v33, v31);
  }
}

uint64_t sub_252779000(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 328) = a1;

  v4 = swift_task_alloc();
  *(v3 + 336) = v4;
  *v4 = v6;
  v4[1] = sub_25277914C;

  return sub_25279D1DC(a1);
}

uint64_t sub_25277914C(uint64_t a1)
{
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_25277924C, 0, 0);
}

uint64_t sub_25277924C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  (*(v5 + 8))(v2, v4);
  if (*(v1 + 16) && (v6 = sub_252785C40(*(v0 + 96)), (v7 & 1) != 0))
  {
    v8 = *(v0 + 304);
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v11 = *(v0 + 136);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    (*(v10 + 16))(v9, *(*(v0 + 344) + 56) + *(v10 + 72) * v6, v11);
    (*(v13 + 8))(v12, v14);

    sub_2528BEE70();

    (*(v10 + 8))(v9, v11);
    v15 = 0;
  }

  else
  {
    v16 = *(v0 + 304);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v19 = *(v0 + 80);

    (*(v18 + 8))(v17, v19);
    v15 = 1;
  }

  v20 = *(v0 + 256);
  v22 = *(v0 + 232);
  v21 = *(v0 + 240);
  v23 = *(v0 + 200);
  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  sub_2527213D8(v22, &qword_27F4FCD98, &qword_2528C6200);
  v20(v23, v15, 1, v21);
  sub_25274AA0C(v23, v22, &qword_27F4FCD98, &qword_2528C6200);
  v24 = *(v0 + 288) + 1;
  if (v24 == *(v0 + 272))
  {
    v25 = *(v0 + 240);
    v26 = *(v0 + 248);
    v27 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v27, &qword_27F4FCD98, &qword_2528C6200);
    v28 = *(v26 + 48);
    v29 = v28(v27, 1, v25);
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    v33 = *(v0 + 216);
    v32 = *(v0 + 224);
    if (v29 == 1)
    {
      (*(v30 + 16))(v32, *(v0 + 40), *(v0 + 240));
      if (v28(v33, 1, v31) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v30 + 32))(v32, *(v0 + 216), *(v0 + 240));
    }

    v38 = *(v0 + 232);
    v39 = *(v0 + 224);
    v41 = *(v0 + 48);
    v40 = *(v0 + 56);
    (*(v0 + 256))(v39, 0, 1, *(v0 + 240));
    v42 = *(v0 + 16);
    v43 = swift_task_alloc();
    v43[2] = v41;
    v43[3] = v42;
    v43[4] = v39;
    v44 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B0A4, v43, v40);

    sub_2527213D8(v38, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v39, &qword_27F4FCD98, &qword_2528C6200);

    v45 = *(v0 + 8);

    return v45(v44);
  }

  else
  {
    *(v0 + 288) = v24;
    v34 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v24;
    v46 = (*(v0 + 64) + **(v0 + 64));
    v35 = swift_task_alloc();
    *(v0 + 296) = v35;
    *v35 = v0;
    v35[1] = sub_25277853C;
    v36 = *(v0 + 208);

    return v46(v36, v34);
  }
}

uint64_t sub_252779784@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_252779AB8()
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

uint64_t sub_252779B98()
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

double sub_252779D90(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v26[0] = *a1;
  v26[1] = v4;
  v27 = *(a1 + 32);
  sub_252870158(&v25);
  if (!sub_25277B234(v25, &unk_286493C58))
  {
    sub_252760E08(a1, v26);
    v16 = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_252737E74((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v15 = &v16[40 * v18];
    goto LABEL_11;
  }

  if (a2 > 0)
  {
    v6 = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    v9 = v8 + 1;
    if (v8 >= v7 >> 1)
    {
      v6 = sub_252737E74((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v9;
    v10 = &v6[40 * v8];
    *(v10 + 4) = 1;
    *(v10 + 5) = 0;
    *(v10 + 6) = 0;
    *(v10 + 7) = 0;
    v10[64] = 88;
    v11 = v6;
    sub_252760E08(a1, v26);
    v12 = v11;
    v13 = *(v11 + 3);
    v14 = v8 + 2;
    if (v14 > (v13 >> 1))
    {
      v12 = sub_252737E74((v13 > 1), v14, 1, v11);
    }

    *(v12 + 2) = v14;
    v15 = &v12[40 * v9];
LABEL_11:
    v5 = *a1;
    v19 = a1[1];
    v15[64] = *(a1 + 32);
    *(v15 + 2) = v5;
    *(v15 + 3) = v19;
    return *&v5;
  }

  if (!a2)
  {
    v20 = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_252737E74((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    *&v5 = 0;
    *(v23 + 2) = 0u;
    *(v23 + 3) = 0u;
    v23[64] = 88;
  }

  return *&v5;
}

char *sub_252779FA0(__int128 *a1, double a2)
{
  v4 = a1[1];
  v23[0] = *a1;
  v23[1] = v4;
  v24 = *(a1 + 32);
  sub_252870158(&v22);
  if (!sub_25277B234(v22, &unk_286493C80))
  {
    sub_252760E08(a1, v23);
    result = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = *(result + 2);
    v15 = *(result + 3);
    if (v16 >= v15 >> 1)
    {
      result = sub_252737E74((v15 > 1), v16 + 1, 1, result);
    }

    *(result + 2) = v16 + 1;
    v14 = &result[40 * v16];
    goto LABEL_11;
  }

  if (a2 > 0.0)
  {
    v5 = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      v5 = sub_252737E74((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v8;
    v9 = &v5[40 * v7];
    *(v9 + 4) = 1;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *(v9 + 7) = 0;
    v9[64] = 88;
    v10 = v5;
    sub_252760E08(a1, v23);
    result = v10;
    v12 = *(v10 + 3);
    v13 = v7 + 2;
    if ((v7 + 2) > (v12 >> 1))
    {
      result = sub_252737E74((v12 > 1), v7 + 2, 1, v10);
      v13 = v7 + 2;
    }

    *(result + 2) = v13;
    v14 = &result[40 * v8];
LABEL_11:
    v17 = *a1;
    v18 = a1[1];
    v14[64] = *(a1 + 32);
    *(v14 + 2) = v17;
    *(v14 + 3) = v18;
    return result;
  }

  if (a2 != 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
  v20 = *(result + 2);
  v19 = *(result + 3);
  if (v20 >= v19 >> 1)
  {
    result = sub_252737E74((v19 > 1), v20 + 1, 1, result);
  }

  *(result + 2) = v20 + 1;
  v21 = &result[40 * v20];
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  v21[64] = 88;
  return result;
}

uint64_t sub_25277A1C0@<X0>(uint64_t *a1@<X8>)
{
  v70 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC78, &unk_2528C5B30);
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x28223BE20](v1);
  v67 = &v58 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v58 - v4;
  v83 = sub_2528BE950();
  v5 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_2528BEC40();
  v74 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF48, &qword_2528C6CC8);
  sub_2528BEC20();
  v80 = *(v17 + 56);
  v80(v15, 1, 1, v16);
  v79 = v17 + 56;
  v20 = sub_2528BE630();
  v21 = *(v20 - 8);
  v82 = *(v21 + 56);
  v78 = v21 + 56;
  v82(v12, 1, 1, v20);
  v75 = *MEMORY[0x277CBA308];
  v22 = *(v5 + 104);
  v76 = v5 + 104;
  v81 = v22;
  v23 = v83;
  (v22)(v7);
  sub_2527604A4();
  v73 = v19;
  v24 = v15;
  v66 = sub_2528BE7C0();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF50, &unk_2528C6CD0);
  sub_2528BEC20();
  v25 = v74;
  v80(v15, 1, 1, v74);
  LOBYTE(v84) = 2;
  v77 = v20;
  v26 = v82;
  v82(v12, 1, 1, v20);
  v27 = v72;
  v26(v72, 1, 1, v20);
  v58 = v7;
  v28 = v75;
  v81(v7, v75, v23);
  sub_25277AE58();
  v71 = v24;
  v29 = v27;
  v65 = sub_2528BE7D0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCD8, &qword_2528C5B68);
  sub_2528BEC20();
  v80(v24, 1, 1, v25);
  v88 = 0;
  v30 = v77;
  v31 = v82;
  v82(v12, 1, 1, v77);
  v32 = v29;
  v31(v29, 1, 1, v30);
  v33 = v58;
  v81(v58, v28, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  v62 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70, MEMORY[0x277CBA480]);
  sub_25276926C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity, &protocol conformance descriptor for DeviceEntity);
  v34 = v71;
  v63 = sub_2528BE7E0();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v35 = v34;
  v36 = v80;
  v80(v35, 1, 1, v25);
  v37 = type metadata accessor for HomeEntity(0);
  (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
  v38 = v12;
  v39 = v77;
  v40 = v82;
  v82(v12, 1, 1, v77);
  v40(v32, 1, 1, v39);
  v41 = v33;
  v42 = v75;
  v43 = v81;
  v81(v33, v75, v83);
  sub_25276926C(&qword_27F4FCC90, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
  v44 = v71;
  v59 = v38;
  v64 = sub_2528BE7F0();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC98, &unk_2528C60A0);
  sub_2528BEC20();
  v36(v44, 1, 1, v74);
  v87 = 0;
  v45 = v38;
  v46 = v77;
  v47 = v82;
  v82(v45, 1, 1, v77);
  v47(v32, 1, 1, v46);
  v43(v41, v42, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCA0, &unk_2528C5B50);
  v48 = v62;
  sub_25272275C(&qword_27F4FCCA8, &qword_27F4FCCA0, &unk_2528C5B50, v62);
  sub_25276926C(&qword_27F4FCCB0, type metadata accessor for ZoneEntity, &protocol conformance descriptor for ZoneEntity);
  v49 = v59;
  v61 = sub_2528BE7E0();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCB8, &unk_2528C60B0);
  sub_2528BEC20();
  v50 = v74;
  v80(v44, 1, 1, v74);
  v86 = 0;
  v51 = v77;
  v52 = v82;
  v82(v49, 1, 1, v77);
  v52(v32, 1, 1, v51);
  v81(v41, v75, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCC0, &qword_2528C5B60);
  sub_25272275C(&qword_27F4FCCC8, &qword_27F4FCCC0, &qword_2528C5B60, v48);
  sub_25276926C(&qword_27F4FCCD0, type metadata accessor for RoomEntity, &protocol conformance descriptor for RoomEntity);
  v53 = sub_2528BE7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF8, &unk_2528C5B80);
  sub_2528BEC20();
  v80(v44, 1, 1, v50);
  v84 = 0;
  v85 = 1;
  v82(v49, 1, 1, v77);
  (*(v68 + 104))(v67, *MEMORY[0x277CB9ED0], v69);
  v81(v41, v75, v83);
  result = sub_2528BE820();
  v55 = v70;
  v56 = v65;
  *v70 = v66;
  v55[1] = v56;
  v57 = v64;
  v55[2] = v63;
  v55[3] = v57;
  v55[4] = v61;
  v55[5] = v53;
  v55[6] = result;
  v55[7] = &unk_286493CD0;
  return result;
}

unint64_t sub_25277AE58()
{
  result = qword_27F4FCF58;
  if (!qword_27F4FCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCF58);
  }

  return result;
}

uint64_t sub_25277AEAC(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25271F3AC;

  return sub_252774DE8(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_25277AFD8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25271F3AC;

  return sub_252799C24(a1, a2, v6, v7, v8, v9);
}

double sub_25277B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (!a6)
  {
    return sub_252760C18(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_25277B120(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2527228B0;

  return sub_252775248(a1, v6, v7, v8, v1 + 40, v1 + v5);
}

BOOL sub_25277B234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v7 = AttributeKind.rawValue.getter();
    v9 = v8;
    if (v7 == AttributeKind.rawValue.getter() && v9 == v10)
    {

      return v5 != 0;
    }

    v4 = sub_2528C1060();

    ++v3;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

BOOL sub_25277B310(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_2528BECF0();
    ++v2;
    sub_2527810F4(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  }

  while ((sub_2528C0930() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_25277B41C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_2528BECF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v23 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD068, &qword_2528C7498);
  MEMORY[0x28223BE20](v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    sub_25272006C(v13, v10, &qword_27F4FC628, &qword_2528C4750);
    sub_25272006C(v29, &v10[v16], &qword_27F4FC628, &qword_2528C4750);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    sub_25272006C(v10, v30, &qword_27F4FC628, &qword_2528C4750);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    sub_2527810F4(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v26 = sub_2528C0930();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    sub_2527213D8(v10, &qword_27F4FC628, &qword_2528C4750);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    sub_2527213D8(v10, &qword_27F4FD068, &qword_2528C7498);
    goto LABEL_5;
  }

  sub_2527213D8(v10, &qword_27F4FC628, &qword_2528C4750);
  return 1;
}

uint64_t HomeEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeEntity.id.setter(uint64_t a1)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HomeEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_2528BEC40();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2528C09B0();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  type metadata accessor for HomeEntity(0);
  sub_2528BE6B0();
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_2528BE8D0();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_2528BE900();
}

uint64_t sub_25277BB6C()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FCF70);
  __swift_project_value_buffer(v0, qword_27F4FCF70);
  return sub_2528BE9D0();
}

uint64_t static HomeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB680 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCF70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HomeEntity.init(name:id:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_2528BEC40();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *(type metadata accessor for HomeEntity(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *(a4 + v7) = sub_2528BE730();
  v8 = sub_2528BECF0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a3, v8);
  sub_2528BE6C0();
  return (*(v9 + 8))(a3, v8);
}

uint64_t sub_25277BDC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB680 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCF70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25277BE70(uint64_t a1)
{
  v2 = sub_2527810F4(&qword_27F4FCC90, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25277BEF0(uint64_t a1)
{
  v2 = sub_2527810F4(&qword_27F4FCFB8, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t HomeEntityQuery.entities(for:)(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_2528C0830();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_2528C07F0();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_2528BEC40();
  v1[11] = swift_task_alloc();
  v4 = sub_2528BECF0();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for HomeEntity(0);
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25277C1BC, 0, 0);
}

uint64_t sub_25277C1BC()
{
  v21 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[21] = __swift_project_value_buffer(v1, qword_27F5025C8);

  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x2530A81A0](v5, v4);
    v10 = sub_2527389AC(v8, v9, v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_252711000, v2, v3, "Query: Searching for homes with identifiers: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  v11 = v0[12];
  v12 = v0[4];
  strcpy(v20, "identifiers: ");
  HIWORD(v20[1]) = -4864;
  v13 = MEMORY[0x2530A81A0](v12, v11);
  MEMORY[0x2530A80B0](v13);

  v14 = v20[0];
  v15 = v20[1];
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v16 = sub_2528C0820();
  v17 = __swift_project_value_buffer(v16, qword_27F5025E0);
  v0[22] = v17;

  v0[23] = sub_2528B91C4(2u, 0, v17, v14, v15);
  swift_bridgeObjectRelease_n();
  sub_2528BEFC0();
  v18 = swift_task_alloc();
  v0[24] = v18;
  *v18 = v0;
  v18[1] = sub_25277C464;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_25277C464(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_25277C564, 0, 0);
}

uint64_t sub_25277C564()
{
  sub_2528C0C20();
  *(v0 + 208) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25277C5F8, v2, v1);
}

uint64_t sub_25277C5F8()
{
  v1 = *(v0 + 200);

  *(v0 + 216) = [v1 sortedHomes];

  return MEMORY[0x2822009F8](sub_25277C680, 0, 0);
}

uint64_t sub_25277C680()
{
  v81 = v0;
  v1 = v0[27];
  sub_252760B90();
  v2 = sub_2528C0B30();

  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v2; v3; i = v2)
  {
    v4 = 0;
    v5 = v0[19];
    v61 = v0[18];
    v6 = v0[13];
    v74 = v2 & 0xFFFFFFFFFFFFFF8;
    v75 = v2 & 0xC000000000000001;
    v68 = v2 + 32;
    v71 = (v5 + 56);
    v72 = (v6 + 8);
    v62 = v5;
    v70 = (v5 + 48);
    v7 = MEMORY[0x277D84F90];
    v69 = v0[4];
    v73 = v3;
    while (1)
    {
      v77 = v7;
      if (v75)
      {
        v8 = MEMORY[0x2530A84E0](v4, i);
      }

      else
      {
        if (v4 >= *(v74 + 16))
        {
          goto LABEL_23;
        }

        v8 = *(v68 + 8 * v4);
      }

      v9 = v8;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v11 = [v8 uniqueIdentifier];
      sub_2528BECD0();

      v12 = 0;
      v13 = *(v69 + 16);
      while (v13 != v12)
      {
        v14 = v12 + 1;
        sub_2527810F4(&qword_27F4FC680, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v15 = sub_2528C0930();
        v12 = v14;
        if (v15)
        {
          v16 = v0[14];
          v65 = v0[12];
          v66 = v0[16];
          v67 = *v72;
          (*v72)(v0[15]);
          v17 = [v9 name];
          v18 = sub_2528C09F0();
          v63 = v19;
          v64 = v18;

          v20 = [v9 uniqueIdentifier];
          sub_2528BECD0();

          v21 = *(v61 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
          sub_2528BEC20();
          *(v66 + v21) = sub_2528BE730();
          (*(v6 + 16))();
          v0[2] = v64;
          v0[3] = v63;
          sub_2528BE6C0();

          v67(v16, v65);
          v22 = 0;
          goto LABEL_15;
        }
      }

      (*v72)(v0[15], v0[12]);

      v22 = 1;
LABEL_15:
      v2 = v0[17];
      v23 = v0[18];
      v24 = v0[16];
      (*v71)(v24, v22, 1, v23);
      sub_25274AA0C(v24, v2, &qword_27F4FC488, &unk_2528C3F80);
      v7 = v77;
      if ((*v70)(v2, 1, v23) == 1)
      {
        sub_2527213D8(v0[17], &qword_27F4FC488, &unk_2528C3F80);
      }

      else
      {
        sub_252782788(v0[17], v0[20], type metadata accessor for HomeEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2527382A4(0, v77[2] + 1, 1, v77);
        }

        v2 = v7[2];
        v25 = v7[3];
        if (v2 >= v25 >> 1)
        {
          v7 = sub_2527382A4((v25 > 1), v2 + 1, 1, v7);
        }

        v26 = v0[20];
        v7[2] = v2 + 1;
        sub_252782788(v26, v7 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v2, type metadata accessor for HomeEntity);
      }

      if (v4 == v73)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v3 = sub_2528C0EF0();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_26:

  v27 = sub_2528C0810();
  sub_2528C0840();
  v28 = sub_2528C0D30();
  if (sub_2528C0D90())
  {
    v30 = v0[6];
    v29 = v0[7];
    v31 = v0[5];
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v30 + 88))(v29, v31) == *MEMORY[0x277D85B00])
    {
      v32 = 0;
      v76 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[6] + 8))(v0[7], v0[5]);
      v76 = "%s: Found %s";
      v32 = 2;
    }

    v37 = v0[9];
    v36 = v0[10];
    v78 = v0[8];
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v80 = v39;
    *v38 = v32;
    *(v38 + 1) = v32;
    *(v38 + 2) = 2080;
    *(v38 + 4) = sub_2527389AC(0x69746E45656D6F68, 0xEA00000000007974, &v80);
    *(v38 + 12) = 2080;
    v40 = sub_25277DDA8(v7);
    v42 = v7;
    v43 = sub_2527389AC(v40, v41, &v80);

    *(v38 + 14) = v43;
    v7 = v42;
    v44 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v27, v28, v44, "HomeAppIntentQuery", v76, v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v39, -1, -1);
    MEMORY[0x2530A8D80](v38, -1, -1);

    (*(v37 + 8))(v36, v78);
  }

  else
  {
    v34 = v0[9];
    v33 = v0[10];
    v35 = v0[8];

    (*(v34 + 8))(v33, v35);
  }

  v45 = sub_2528C0890();
  v46 = sub_2528C0D10();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v0[18];
    v79 = v0[12];
    v48 = v0[4];
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v80 = v50;
    *v49 = 136315394;
    v51 = MEMORY[0x2530A81A0](v7, v47);
    v53 = v7;
    v54 = sub_2527389AC(v51, v52, &v80);

    *(v49 + 4) = v54;
    v7 = v53;
    *(v49 + 12) = 2080;
    v55 = MEMORY[0x2530A81A0](v48, v79);
    v57 = sub_2527389AC(v55, v56, &v80);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_252711000, v45, v46, "Query: Found homeEntities: %s for identifiers: %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v50, -1, -1);
    MEMORY[0x2530A8D80](v49, -1, -1);
  }

  v58 = v0[1];

  return v58(v7);
}

uint64_t HomeEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2528C0830();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_2528C07F0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_2528BEC40();
  v2[12] = swift_task_alloc();
  v5 = sub_2528BECF0();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for HomeEntity(0);
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25277D148, 0, 0);
}

uint64_t sub_25277D148()
{
  v18 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[21] = __swift_project_value_buffer(v1, qword_27F5025C8);

  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2527389AC(v5, v4, &v16);
    _os_log_impl(&dword_252711000, v2, v3, "Query: Searching for homes with string: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  v8 = v0[4];
  v9 = v0[5];
  v16 = 0x203A676E69727473;
  v17 = 0xE800000000000000;
  MEMORY[0x2530A80B0](v8, v9);
  v10 = v16;
  v11 = v17;
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v12 = sub_2528C0820();
  v13 = __swift_project_value_buffer(v12, qword_27F5025E0);
  v0[22] = v13;

  v0[23] = sub_2528B91C4(2u, 0, v13, v10, v11);
  swift_bridgeObjectRelease_n();
  sub_2528BEFC0();
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v14[1] = sub_25277D3B8;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_25277D3B8(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_25277D4B8, 0, 0);
}

uint64_t sub_25277D4B8()
{
  sub_2528C0C20();
  *(v0 + 208) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25277D54C, v2, v1);
}

uint64_t sub_25277D54C()
{
  v1 = *(v0 + 200);

  *(v0 + 216) = [v1 sortedHomes];

  return MEMORY[0x2822009F8](sub_25277D5D4, 0, 0);
}

uint64_t sub_25277D5D4()
{
  v82 = v0;
  v1 = v0[27];
  sub_252760B90();
  v2 = sub_2528C0B30();

  if (v2 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2528C0EF0())
  {
    v4 = 0;
    v5 = v0[19];
    v6 = v0[14];
    v73 = v2 & 0xC000000000000001;
    v72 = v2 & 0xFFFFFFFFFFFFFF8;
    v70 = (v5 + 56);
    v67 = (v6 + 16);
    v68 = v0[18];
    v65 = v5;
    v66 = (v6 + 8);
    v69 = (v5 + 48);
    v7 = MEMORY[0x277D84F90];
    v71 = i;
    while (1)
    {
      if (v73)
      {
        v8 = MEMORY[0x2530A84E0](v4, v2);
      }

      else
      {
        if (v4 >= *(v72 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v78 = v4 + 1;
      v11 = v0[4];
      v10 = v0[5];
      v12 = [v8 name];
      v13 = sub_2528C09F0();
      v15 = v14;

      if (v13 == v11 && v15 == v10)
      {

LABEL_17:
        formata = v7;
        v19 = v0[15];
        v20 = v0[16];
        v21 = v0[13];
        v22 = v2;
        v23 = [v9 name];
        v24 = sub_2528C09F0();
        v74 = v25;
        v75 = v24;

        v26 = [v9 uniqueIdentifier];
        sub_2528BECD0();

        v27 = *(v68 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
        sub_2528BEC20();
        v2 = v22;
        *(v20 + v27) = sub_2528BE730();
        v28 = v20;
        v7 = formata;
        (*v67)(v28, v19, v21);
        v0[2] = v75;
        v0[3] = v74;
        sub_2528BE6C0();

        (*v66)(v19, v21);
        v18 = 0;
        goto LABEL_18;
      }

      v17 = sub_2528C1060();

      if (v17)
      {
        goto LABEL_17;
      }

      v18 = 1;
LABEL_18:
      v29 = v0[17];
      v30 = v0[18];
      v31 = v0[16];
      (*v70)(v31, v18, 1, v30);
      sub_25274AA0C(v31, v29, &qword_27F4FC488, &unk_2528C3F80);
      if ((*v69)(v29, 1, v30) == 1)
      {
        sub_2527213D8(v0[17], &qword_27F4FC488, &unk_2528C3F80);
      }

      else
      {
        sub_252782788(v0[17], v0[20], type metadata accessor for HomeEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2527382A4(0, *(v7 + 2) + 1, 1, v7);
        }

        v33 = *(v7 + 2);
        v32 = *(v7 + 3);
        if (v33 >= v32 >> 1)
        {
          v7 = sub_2527382A4((v32 > 1), v33 + 1, 1, v7);
        }

        v34 = v0[20];
        *(v7 + 2) = v33 + 1;
        sub_252782788(v34, &v7[((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v33], type metadata accessor for HomeEntity);
      }

      ++v4;
      if (v78 == v71)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_29:

  v35 = sub_2528C0810();
  sub_2528C0840();
  v36 = sub_2528C0D30();
  if (sub_2528C0D90())
  {
    v38 = v0[7];
    v37 = v0[8];
    v39 = v0[6];
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v38 + 88))(v37, v39) == *MEMORY[0x277D85B00])
    {
      v40 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[7] + 8))(v0[8], v0[6]);
      format = "%s: Found %s";
      v40 = 2;
    }

    v45 = v0[10];
    v44 = v0[11];
    v79 = v0[9];
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v81 = v47;
    *v46 = v40;
    *(v46 + 1) = v40;
    *(v46 + 2) = 2080;
    *(v46 + 4) = sub_2527389AC(0x69746E45656D6F68, 0xEA00000000007974, &v81);
    *(v46 + 12) = 2080;
    v48 = sub_25277DDA8(v7);
    v50 = v7;
    v51 = sub_2527389AC(v48, v49, &v81);

    *(v46 + 14) = v51;
    v7 = v50;
    v52 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v35, v36, v52, "HomeAppIntentQuery", format, v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v47, -1, -1);
    MEMORY[0x2530A8D80](v46, -1, -1);

    (*(v45 + 8))(v44, v79);
  }

  else
  {
    v42 = v0[10];
    v41 = v0[11];
    v43 = v0[9];

    (*(v42 + 8))(v41, v43);
  }

  v53 = sub_2528C0890();
  v54 = sub_2528C0D10();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = v0[18];
    v56 = v0[4];
    v80 = v0[5];
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v81 = v58;
    *v57 = 136315394;
    v59 = MEMORY[0x2530A81A0](v7, v55);
    v61 = v7;
    v62 = sub_2527389AC(v59, v60, &v81);

    *(v57 + 4) = v62;
    v7 = v61;
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_2527389AC(v56, v80, &v81);
    _os_log_impl(&dword_252711000, v53, v54, "Query: Found homeEntities: %s for string: %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v58, -1, -1);
    MEMORY[0x2530A8D80](v57, -1, -1);
  }

  v63 = v0[1];

  return v63(v7);
}

uint64_t sub_25277DDA8(uint64_t a1)
{
  v17[0] = type metadata accessor for HomeEntity(0);
  v2 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0]);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2528C0880() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v18 = MEMORY[0x277D84F90];
    sub_25282EFBC(0, v5, 0);
    v6 = v18;
    v7 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v8 = *(v2 + 72);
    do
    {
      sub_252782854(v7, v4, type metadata accessor for HomeEntity);
      sub_2528BE6B0();
      MEMORY[0x2530A80B0](40, 0xE100000000000000);
      sub_2528BECF0();
      sub_2527810F4(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v9 = sub_2528C1040();
      MEMORY[0x2530A80B0](v9);

      MEMORY[0x2530A80B0](41, 0xE100000000000000);
      v11 = v17[1];
      v10 = v17[2];
      sub_2527828BC(v4, type metadata accessor for HomeEntity);
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25282EFBC((v12 > 1), v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v16 = MEMORY[0x2530A81A0](v6, MEMORY[0x277D837D0]);

  return v16;
}

uint64_t sub_25277E004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25273430C;

  return HomeEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_25277E0A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25274BC70;

  return HomeEntityQuery.entities(for:)(a1);
}

uint64_t sub_25277E138(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2527811CC();
  *v5 = v2;
  v5[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_25277E1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25271F3AC;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_25277E2A0()
{
  v1 = sub_2528C00D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_2528C1130();
  sub_2528BF400();
  sub_2527810F4(&qword_27F4FD030, MEMORY[0x277D15A58], MEMORY[0x277D15A60]);
  sub_2528C0910();
  v8 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v0 + *(v8 + 20), v7, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_2528C1150();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_2528C1150();
    sub_2527810F4(&qword_27F4FD038, MEMORY[0x277D16528], MEMORY[0x277D16530]);
    sub_2528C0910();
    (*(v2 + 8))(v4, v1);
  }

  return sub_2528C1180();
}

uint64_t sub_25277E4F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C00D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_2528BF400();
  sub_2527810F4(&qword_27F4FD030, MEMORY[0x277D15A58], MEMORY[0x277D15A60]);
  sub_2528C0910();
  sub_25272006C(v2 + *(a2 + 20), v10, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_2528C1150();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_2528C1150();
  sub_2527810F4(&qword_27F4FD038, MEMORY[0x277D16528], MEMORY[0x277D16530]);
  sub_2528C0910();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25277E734(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C00D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - v9;
  sub_2528C1130();
  sub_2528BF400();
  sub_2527810F4(&qword_27F4FD030, MEMORY[0x277D15A58], MEMORY[0x277D15A60]);
  sub_2528C0910();
  sub_25272006C(v2 + *(a2 + 20), v10, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_2528C1150();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_2528C1150();
    sub_2527810F4(&qword_27F4FD038, MEMORY[0x277D16528], MEMORY[0x277D16530]);
    sub_2528C0910();
    (*(v5 + 8))(v7, v4);
  }

  return sub_2528C1180();
}

BOOL sub_25277E990(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C00D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD040, &qword_2528C7478);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if ((MEMORY[0x2530A6A20](a1, a2) & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for HomeEntity.SnapshotPair(0) + 20);
  v15 = *(v11 + 48);
  sub_25272006C(a1 + v14, v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_25272006C(a2 + v14, &v13[v15], &qword_27F4FCDB8, &unk_2528C5CC0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_2527213D8(v13, &qword_27F4FCDB8, &unk_2528C5CC0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_25272006C(v13, v10, &qword_27F4FCDB8, &unk_2528C5CC0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_2527213D8(v13, &qword_27F4FD040, &qword_2528C7478);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_2527810F4(&qword_27F4FD048, MEMORY[0x277D16528], MEMORY[0x277D16538]);
  v19 = sub_2528C0930();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_2527213D8(v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  return (v19 & 1) != 0;
}

uint64_t sub_25277ECE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 416) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD078, &qword_2528C74A8);
  *(v4 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD080, &qword_2528C74B0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = sub_2528BEE30();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v6 = type metadata accessor for HomeEntity.SnapshotPair(0);
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v7 = sub_2528BEEC0();
  *(v4 + 184) = v7;
  *(v4 + 192) = *(v7 - 8);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v8 = type metadata accessor for DeviceEntity(0);
  *(v4 + 232) = v8;
  *(v4 + 240) = *(v8 - 8);
  *(v4 + 248) = swift_task_alloc();
  v9 = sub_2528BECF0();
  *(v4 + 256) = v9;
  *(v4 + 264) = *(v9 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v10 = type metadata accessor for HomeEntity(0);
  *(v4 + 328) = v10;
  *(v4 + 336) = *(v10 - 8);
  *(v4 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  *(v4 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25277F16C, 0, 0);
}

uint64_t sub_25277F16C()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];
  sub_25272006C(v0[2], v1, &qword_27F4FC488, &unk_2528C3F80);
  v4 = *(v3 + 48);
  v0[47] = v4;
  v0[48] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_2527213D8(v0[45], &qword_27F4FC488, &unk_2528C3F80);
    v5 = 1;
  }

  else
  {
    v6 = v0[45];
    (*(v0[33] + 16))(v0[46], v6, v0[32]);
    sub_2527828BC(v6, type metadata accessor for HomeEntity);
    v5 = 0;
  }

  (*(v0[33] + 56))(v0[46], v5, 1, v0[32]);
  v7 = swift_task_alloc();
  v0[49] = v7;
  *v7 = v0;
  v7[1] = sub_25277F2EC;
  v8 = v0[46];
  v9 = v0[4];

  return sub_25279E2F8(v9, v8);
}

uint64_t sub_25277F2EC(uint64_t a1)
{
  v2 = *(*v1 + 368);
  *(*v1 + 400) = a1;

  sub_2527213D8(v2, &qword_27F4FC628, &qword_2528C4750);

  return MEMORY[0x2822009F8](sub_25277F41C, 0, 0);
}

unint64_t sub_25277F41C()
{
  v238 = v0;
  v1 = v0;
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[41];
  sub_25272006C(*(v1 + 16), *(v1 + 352), &qword_27F4FC488, &unk_2528C3F80);
  v5 = v2(v3, 1, v4);
  v6 = v0[44];
  if (v5 == 1)
  {
    v7 = v0[3];
    sub_2527213D8(v6, &qword_27F4FC488, &unk_2528C3F80);
    if (v7)
    {
      v8 = v0[3];
      v9 = *(v8 + 16);
      v10 = MEMORY[0x277D84F90];
      if (v9)
      {
        v11 = v0[33];
        v12 = *(v1 + 240);
        v232 = *(v1 + 232);
        v236 = MEMORY[0x277D84F90];
        sub_25282EFDC(0, v9, 0);
        v10 = v236;
        v13 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v230 = *(v12 + 72);
        do
        {
          v14 = *(v1 + 320);
          v15 = v1;
          v18 = v1 + 248;
          v17 = *(v1 + 248);
          v16 = *(v18 + 8);
          sub_252782854(v13, v17, type metadata accessor for DeviceEntity);
          (*(v11 + 16))(v14, v17 + *(v232 + 48), v16);
          sub_2527828BC(v17, type metadata accessor for DeviceEntity);
          v236 = v10;
          v20 = *(v10 + 16);
          v19 = *(v10 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_25282EFDC((v19 > 1), v20 + 1, 1);
            v10 = v236;
          }

          v21 = *(v15 + 320);
          v22 = *(v15 + 256);
          *(v10 + 16) = v20 + 1;
          (*(v11 + 32))(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v21, v22);
          v13 += v230;
          --v9;
          v1 = v15;
        }

        while (v9);
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v28 = sub_252743D54(v10);
  }

  else
  {
    v23 = v0[43];
    v24 = v0[32];
    v25 = v0[33];
    sub_252782788(v6, *(v1 + 344), type metadata accessor for HomeEntity);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC828, &qword_2528C48D8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2528C3910;
    (*(v25 + 16))(v27 + v26, v23, v24);
    v28 = sub_252744890(v27);
    swift_setDeallocating();
    (*(v25 + 8))(v27 + v26, v24);
    swift_deallocClassInstance();
    sub_2527828BC(v23, type metadata accessor for HomeEntity);
  }

  v231 = v1;
  if (*(v28 + 16))
  {
    v224 = *(v1 + 400);
    v29 = *(v1 + 264);
    v30 = v28 + 56;
    v31 = -1;
    v32 = -1 << *(v28 + 32);
    if (-v32 < 64)
    {
      v31 = ~(-1 << -v32);
    }

    v33 = v31 & *(v28 + 56);
    v34 = (63 - v32) >> 6;
    v197 = *(v1 + 128);
    v198 = *(v1 + 192);
    v222 = *(v1 + 264);
    v203 = (v29 + 8);
    v205 = (v29 + 32);
    v194 = *(v1 + 136);
    v193 = (v198 + 8);

    v35 = 0;
    v233 = MEMORY[0x277D84F98];
    v36 = 0x27F4FB000uLL;
    LODWORD(v196) = 136315138;
    v215 = v34;
    v217 = v28 + 56;
    v220 = v28;
LABEL_16:
    v37 = v35;
    while (v33)
    {
      v35 = v37;
LABEL_24:
      v39 = *(v1 + 304);
      v40 = *(v1 + 312);
      v41 = *(v1 + 256);
      v42 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v43 = *(v28 + 48);
      v44 = *(v222 + 72);
      v45 = *(v222 + 16);
      v45(v40, v43 + v44 * (v42 | (v35 << 6)), v41);
      (*(v222 + 32))(v39, v40, v41);
      if (*(v224 + 16))
      {
        v46 = sub_252785C40(*(v1 + 304));
        if (v47)
        {
          v65 = v1;
          v66 = *(v1 + 304);
          v67 = v65[37];
          v68 = v65[32];
          v69 = v65[22];
          v70 = v65[21];
          (*(v198 + 16))(v65[28], *(v224 + 56) + *(v198 + 72) * v46, v65[23]);
          v45(v67, v66, v68);
          sub_2528BEE70();
          v71 = *(v197 + 20);
          sub_2528BEE80();
          v72 = sub_2528C00D0();
          (*(*(v72 - 8) + 56))(v69 + v71, 0, 1, v72);
          sub_252782788(v69, v70, type metadata accessor for HomeEntity.SnapshotPair);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v236 = v233;
          result = sub_252785C40(v67);
          v76 = *(v233 + 16);
          v77 = (v75 & 1) == 0;
          v78 = __OFADD__(v76, v77);
          v79 = v76 + v77;
          if (v78)
          {
            __break(1u);
          }

          else
          {
            v80 = v75;
            if (*(v233 + 24) >= v79)
            {
              v83 = v231;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v96 = result;
                sub_2527E0A74();
                result = v96;
                v233 = v236;
              }
            }

            else
            {
              v81 = v231[37];
              sub_2527DD2B0(v79, isUniquelyReferenced_nonNull_native);
              v82 = v81;
              v83 = v231;
              v233 = v236;
              result = sub_252785C40(v82);
              if ((v80 & 1) != (v84 & 1))
              {
LABEL_101:

                return sub_2528C10A0();
              }
            }

            v86 = v83[37];
            v85 = v83[38];
            v87 = v83[32];
            v88 = v83;
            v89 = v83[28];
            v208 = v88[23];
            v212 = v85;
            v90 = v88[21];
            if (v80)
            {
              sub_2527827F0(v90, *(v233 + 56) + *(v194 + 72) * result);
              v91 = *v203;
              (*v203)(v86, v87);
              (*v193)(v89, v208);
              v91(v212, v87);
LABEL_40:
              v1 = v231;
              v36 = 0x27F4FB000;
              v30 = v217;
              v28 = v220;
              v34 = v215;
              goto LABEL_16;
            }

            *(v233 + 8 * (result >> 6) + 64) |= 1 << result;
            v92 = result;
            v45(*(v233 + 48) + result * v44, v86, v87);
            sub_252782788(v90, *(v233 + 56) + *(v194 + 72) * v92, type metadata accessor for HomeEntity.SnapshotPair);
            v93 = *v203;
            (*v203)(v86, v87);
            (*v193)(v89, v208);
            result = (v93)(v212, v87);
            v94 = *(v233 + 16);
            v78 = __OFADD__(v94, 1);
            v95 = v94 + 1;
            if (!v78)
            {
              *(v233 + 16) = v95;
              goto LABEL_40;
            }
          }

          __break(1u);
          return result;
        }
      }

      if (*(v36 + 2880) != -1)
      {
        swift_once();
      }

      v48 = *(v1 + 304);
      v49 = *(v1 + 288);
      v50 = *(v1 + 256);
      v51 = sub_2528C08B0();
      __swift_project_value_buffer(v51, qword_27F5025C8);
      v45(v49, v48, v50);
      v1 = v231;
      v52 = sub_2528C0890();
      v53 = sub_2528C0CF0();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v231[38];
      v56 = v231[36];
      v57 = v231[32];
      if (v54)
      {
        v58 = swift_slowAlloc();
        v211 = swift_slowAlloc();
        v236 = v211;
        *v58 = 136315138;
        sub_2527810F4(&qword_27F4FD070, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v207 = v55;
        v59 = sub_2528C1040();
        v200 = v53;
        v61 = v60;
        v62 = *v203;
        (*v203)(v56, v57);
        v63 = sub_2527389AC(v59, v61, &v236);

        *(v58 + 4) = v63;
        _os_log_impl(&dword_252711000, v52, v200, "Failed to find home with ID %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v211);
        MEMORY[0x2530A8D80](v211, -1, -1);
        v64 = v58;
        v1 = v231;
        MEMORY[0x2530A8D80](v64, -1, -1);

        v62(v207, v57);
        v36 = 0x27F4FB000;
      }

      else
      {

        v38 = *v203;
        (*v203)(v56, v57);
        v38(v55, v57);
      }

      v37 = v35;
      v30 = v217;
      v28 = v220;
      v34 = v215;
    }

    while (1)
    {
      v35 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_105;
      }

      if (v35 >= v34)
      {

        v33 = v233;
        if (!*(v233 + 16))
        {
          v28 = v233;
          break;
        }

        v97 = *(v233 + 16);
        if (v97)
        {
          v201 = *(v1 + 88);
          v98 = *(v1 + 72);
          v235 = MEMORY[0x277D84F90];

          sub_25282EFBC(0, v97, 0);
          v28 = v235;
          v99 = sub_2528C0E00();
          v199 = (v98 + 8);
          v33 = v233;
          while (1)
          {
            v209 = v97;
            v221 = *(v1 + 280);
            v223 = v99;
            v100 = *(v1 + 256);
            v102 = *(v1 + 112);
            v101 = *(v1 + 120);
            v103 = *(v1 + 104);
            v216 = *(v1 + 96);
            v218 = *(v1 + 80);
            v227 = *(v1 + 64);
            v104 = *(v33 + 36);
            v105 = v33;
            v106 = *(v201 + 48);
            v213 = v104;
            sub_2527D63AC(v101, v101 + v106, v99, v104, 0, v105);
            v107 = *v205;
            (*v205)(v102, v101, v100);
            v225 = v102;
            sub_252782788(v101 + v106, v102 + *(v201 + 48), type metadata accessor for HomeEntity.SnapshotPair);
            sub_25272006C(v102, v103, &qword_27F4FCDC0, &unk_2528C5CD0);
            v108 = *(v201 + 48);
            v107(v216, v103, v100);
            sub_252782788(v103 + v108, v216 + v108, type metadata accessor for HomeEntity.SnapshotPair);
            sub_2528BF2F0();
            v236 = sub_2528BEE20();
            v237 = v109;

            MEMORY[0x2530A80B0](40, 0xE100000000000000);

            v1 = v236;
            v110 = v237;
            sub_2528BEE00();
            v111 = sub_2528BECB0();
            v113 = v112;
            (*v203)(v221, v100);
            v236 = v1;
            v237 = v110;

            MEMORY[0x2530A80B0](v111, v113);

            MEMORY[0x2530A80B0](41, 0xE100000000000000);

            v115 = v236;
            v114 = v237;
            (*v199)(v218, v227);
            sub_2527213D8(v216, &qword_27F4FCDC0, &unk_2528C5CD0);
            sub_2527213D8(v225, &qword_27F4FCDC0, &unk_2528C5CD0);
            v117 = *(v235 + 16);
            v116 = *(v235 + 24);
            if (v117 >= v116 >> 1)
            {
              sub_25282EFBC((v116 > 1), v117 + 1, 1);
            }

            *(v235 + 16) = v117 + 1;
            v118 = v235 + 16 * v117;
            *(v118 + 32) = v115;
            *(v118 + 40) = v114;
            v33 = v233;
            if (v223 < 0 || v223 >= -(-1 << *(v233 + 32)))
            {
              goto LABEL_106;
            }

            if (((*(v233 + 64 + ((v223 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v223) & 1) == 0)
            {
              goto LABEL_107;
            }

            if (v213 != *(v233 + 36))
            {
              goto LABEL_108;
            }

            v99 = sub_2528C0E20();
            --v97;
            v1 = v231;
            if (v209 == 1)
            {
              v36 = 0x27F4FB000;
              goto LABEL_93;
            }
          }
        }

        v28 = MEMORY[0x277D84F90];
LABEL_93:
        if (*(v36 + 2880) != -1)
        {
          goto LABEL_111;
        }

        goto LABEL_94;
      }

      v33 = *(v30 + 8 * v35);
      ++v37;
      if (v33)
      {
        goto LABEL_24;
      }
    }
  }

  v119 = *(v1 + 416);

  if (v119 == 1)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v120 = sub_2528C08B0();
    __swift_project_value_buffer(v120, qword_27F5025C8);
    v121 = sub_2528C0890();
    v122 = sub_2528C0D10();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_252711000, v121, v122, "Using all homeStateSnapshots for snapshot search", v123, 2u);
      MEMORY[0x2530A8D80](v123, -1, -1);
    }

    v124 = *(v1 + 400);
    v125 = *(v1 + 264);
    v126 = *(v1 + 192);
    v210 = *(v1 + 136);
    v214 = *(v1 + 128);

    v127 = sub_25278D0F4(MEMORY[0x277D84F90]);
    v33 = v127;
    v128 = 0;
    v129 = *(v124 + 64);
    v196 = v124 + 64;
    v202 = v124;
    v130 = -1;
    v131 = -1 << *(v124 + 32);
    if (-v131 < 64)
    {
      v130 = ~(-1 << -v131);
    }

    v132 = v130 & v129;
    v195 = (63 - v131) >> 6;
    v219 = v125;
    v226 = (v125 + 32);
    v204 = (v126 + 8);
    v206 = (v125 + 8);
    v234 = v127;
    if ((v130 & v129) != 0)
    {
      while (1)
      {
        v133 = v128;
LABEL_69:
        v136 = *(v1 + 280);
        v137 = *(v1 + 256);
        v138 = *(v1 + 216);
        v228 = *(v1 + 184);
        v139 = *(v1 + 48);
        v140 = __clz(__rbit64(v132));
        v132 &= v132 - 1;
        v141 = v140 | (v133 << 6);
        (*(v219 + 16))(v136, *(v202 + 48) + *(v219 + 72) * v141, v137);
        (*(v126 + 16))(v138, *(v202 + 56) + *(v126 + 72) * v141, v228);
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
        v143 = *(v142 + 48);
        (*(v219 + 32))(v139, v136, v137);
        v144 = v139 + v143;
        v1 = v231;
        (*(v126 + 32))(v144, v138, v228);
        (*(*(v142 - 8) + 56))(v139, 0, 1, v142);
        v135 = v133;
LABEL_70:
        v145 = *(v1 + 56);
        sub_25274AA0C(*(v1 + 48), v145, &qword_27F4FD080, &qword_2528C74B0);
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
        if ((*(*(v146 - 8) + 48))(v145, 1, v146) == 1)
        {
          break;
        }

        v229 = v135;
        v147 = *(v1 + 272);
        v148 = *(v1 + 256);
        v28 = *(v1 + 152);
        v149 = *(v1 + 160);
        v150 = *(v1 + 56);
        (*(v126 + 32))(*(v1 + 208), v150 + *(v146 + 48), *(v1 + 184));
        (*v226)(v147, v150, v148);
        sub_2528BEE70();
        v151 = *(v214 + 20);
        sub_2528BEE80();
        v152 = sub_2528C00D0();
        (*(*(v152 - 8) + 56))(v149 + v151, 0, 1, v152);
        sub_252782788(v149, v28, type metadata accessor for HomeEntity.SnapshotPair);
        v33 = v234;
        v153 = swift_isUniquelyReferenced_nonNull_native();
        v236 = v234;
        v154 = sub_252785C40(v147);
        v156 = *(v234 + 16);
        v157 = (v155 & 1) == 0;
        v78 = __OFADD__(v156, v157);
        v158 = v156 + v157;
        if (v78)
        {
          goto LABEL_109;
        }

        v159 = v155;
        if (*(v234 + 24) >= v158)
        {
          if ((v153 & 1) == 0)
          {
            v175 = v154;
            sub_2527E0A74();
            v154 = v175;
            v33 = v236;
          }
        }

        else
        {
          v160 = *(v1 + 272);
          sub_2527DD2B0(v158, v153);
          v161 = v160;
          v33 = v236;
          v154 = sub_252785C40(v161);
          if ((v159 & 1) != (v162 & 1))
          {
            goto LABEL_101;
          }
        }

        v28 = *(v1 + 272);
        v163 = *(v1 + 256);
        v164 = *(v1 + 208);
        v165 = *(v1 + 184);
        v166 = *(v1 + 152);
        if (v159)
        {
          sub_2527827F0(*(v1 + 152), *(v33 + 56) + *(v210 + 72) * v154);
          (*v206)(v28, v163);
          (*v204)(v164, v165);
        }

        else
        {
          *(v33 + 8 * (v154 >> 6) + 64) |= 1 << v154;
          v167 = *(v33 + 48) + *(v219 + 72) * v154;
          v168 = v33;
          v169 = v154;
          (*(v219 + 16))(v167, v28, v163);
          v170 = *(v168 + 56) + *(v210 + 72) * v169;
          v33 = v168;
          sub_252782788(v166, v170, type metadata accessor for HomeEntity.SnapshotPair);
          (*(v219 + 8))(v28, v163);
          (*v204)(v164, v165);
          v171 = *(v168 + 16);
          v78 = __OFADD__(v171, 1);
          v172 = v171 + 1;
          if (v78)
          {
            goto LABEL_110;
          }

          *(v168 + 16) = v172;
        }

        v128 = v229;
        v234 = v33;
        if (!v132)
        {
          goto LABEL_62;
        }
      }

LABEL_98:

      v192 = *(v1 + 8);

      return v192(v234);
    }

LABEL_62:
    if (v195 <= v128 + 1)
    {
      v134 = v128 + 1;
    }

    else
    {
      v134 = v195;
    }

    v135 = v134 - 1;
    while (1)
    {
      v133 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        break;
      }

      if (v133 >= v195)
      {
        v173 = *(v1 + 48);
        v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
        (*(*(v174 - 8) + 56))(v173, 1, 1, v174);
        v132 = 0;
        goto LABEL_70;
      }

      v132 = *(v196 + 8 * v133);
      ++v128;
      if (v132)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    swift_once();
LABEL_94:
    v183 = sub_2528C08B0();
    __swift_project_value_buffer(v183, qword_27F5025C8);

    v184 = sub_2528C0890();
    v185 = sub_2528C0D10();

    v234 = v33;
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v236 = v187;
      *v186 = v196;
      v188 = MEMORY[0x2530A81A0](v28, MEMORY[0x277D837D0]);
      v190 = v189;

      v191 = sub_2527389AC(v188, v190, &v236);

      *(v186 + 4) = v191;
      _os_log_impl(&dword_252711000, v184, v185, "Using snapshots for homes %s for snapshot search", v186, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v187);
      MEMORY[0x2530A8D80](v187, -1, -1);
      MEMORY[0x2530A8D80](v186, -1, -1);
    }

    else
    {
    }

    goto LABEL_98;
  }

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v176 = sub_2528C08B0();
  __swift_project_value_buffer(v176, qword_27F5025C8);
  v177 = sub_2528C0890();
  v178 = sub_2528C0D10();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    *v179 = 0;
    _os_log_impl(&dword_252711000, v177, v178, "Using current snapshot for snapshot search", v179, 2u);
    MEMORY[0x2530A8D80](v179, -1, -1);
  }

  v180 = swift_task_alloc();
  *(v1 + 408) = v180;
  *v180 = v1;
  v180[1] = sub_252780BA4;
  v182 = *(v1 + 32);
  v181 = *(v1 + 40);

  return sub_252799538(v181, v182);
}

uint64_t sub_252780BA4()
{

  return MEMORY[0x2822009F8](sub_252780CA0, 0, 0);
}

uint64_t sub_252780CA0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2527213D8(v3, &qword_27F4FD078, &qword_2528C74A8);
    v18 = sub_25278D0F4(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = v0[18];
    v5 = v0[16];
    v6 = v0[9];
    v7 = v0[10];
    v17 = v0[25];
    v19 = v0[8];
    (*(v2 + 32))(v17, v3, v1);
    sub_2528BEE70();
    v8 = *(v5 + 20);
    sub_2528BEE80();
    v9 = sub_2528C00D0();
    (*(*(v9 - 8) + 56))(v4 + v8, 0, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD088, &qword_2528C74B8);
    v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD090, &unk_2528C95C0) - 8);
    v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2528C3910;
    v13 = v12 + v11;
    v14 = v10[14];
    sub_2528BF2F0();
    sub_2528BEE00();
    (*(v6 + 8))(v7, v19);
    sub_252782854(v4, v13 + v14, type metadata accessor for HomeEntity.SnapshotPair);
    v18 = sub_25278D0F4(v12);
    swift_setDeallocating();
    sub_2527213D8(v13, &qword_27F4FD090, &unk_2528C95C0);
    swift_deallocClassInstance();
    sub_2527828BC(v4, type metadata accessor for HomeEntity.SnapshotPair);
    (*(v2 + 8))(v17, v1);
  }

  v15 = v0[1];

  return v15(v18);
}

uint64_t sub_2527810F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2527811CC()
{
  result = qword_27F4FCFA0;
  if (!qword_27F4FCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFA0);
  }

  return result;
}

unint64_t sub_2527812FC()
{
  result = qword_27F4FCFC0;
  if (!qword_27F4FCFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCFC8, &qword_2528C7198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFC0);
  }

  return result;
}

unint64_t sub_2527813AC()
{
  result = qword_27F4FCFD8;
  if (!qword_27F4FCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFD8);
  }

  return result;
}

unint64_t sub_252781404()
{
  result = qword_27F4FCFE0;
  if (!qword_27F4FCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFE0);
  }

  return result;
}

unint64_t sub_2527814A4()
{
  result = qword_27F4FCFE8;
  if (!qword_27F4FCFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFE8);
  }

  return result;
}

unint64_t sub_2527814FC()
{
  result = qword_27F4FCFF0;
  if (!qword_27F4FCFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCFF8, qword_2528C7310);
    sub_2527810F4(&qword_27F4FC4A0, type metadata accessor for HomeEntity, &protocol conformance descriptor for HomeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFF0);
  }

  return result;
}

uint64_t sub_252781688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_252781718(uint64_t a1)
{
  if (!qword_27F4FD020)
  {
    sub_2528C00D0();
    v1 = sub_2528C0DC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4FD020);
    }
  }
}

uint64_t sub_2527817B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = sub_2528BEEC0();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_2528C00D0();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for HomeEntity(0);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  v2[24] = swift_task_alloc();
  v6 = sub_2528C05D0();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252781AF0, 0, 0);
}

uint64_t sub_252781AF0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[2];
  sub_25272006C(v0[3], v0[24], &qword_27F4FC478, &unk_2528C3F70);
  sub_2528C0590();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  sub_25272006C(v8, v5, &qword_27F4FC488, &unk_2528C3F80);
  v9 = *(v7 + 48);
  v0[28] = v9;
  v0[29] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v10 = v9(v5, 1, v6);
  v11 = v0[21];
  v12 = v0[22];
  if (v10 == 1)
  {
    sub_2527213D8(v0[21], &qword_27F4FC488, &unk_2528C3F80);
    v13 = sub_2528BECF0();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  else
  {
    v14 = sub_2528BECF0();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v12, v11, v14);
    sub_2527828BC(v11, type metadata accessor for HomeEntity);
    (*(v15 + 56))(v12, 0, 1, v14);
  }

  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = sub_252781D90;
  v17 = v0[22];
  v18 = v0[23];

  return sub_25279E2F8(v18, v17);
}

uint64_t sub_252781D90(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  *(*v1 + 248) = a1;

  sub_2527213D8(v3, &qword_27F4FC628, &qword_2528C4750);
  sub_2527213D8(v2, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_252781EEC, 0, 0);
}

void sub_252781EEC()
{
  v1 = v0[28];
  v2 = v0[20];
  v3 = v0[17];
  sub_25272006C(v0[2], v2, &qword_27F4FC488, &unk_2528C3F80);
  if (v1(v2, 1, v3) == 1)
  {
    sub_2527213D8(v0[20], &qword_27F4FC488, &unk_2528C3F80);
LABEL_7:
    v20 = v0[31];
    v21 = v0[12];
    v22 = v0[9];
    v84 = v0[4];
    v85 = sub_25278DBC0(MEMORY[0x277D84F90]);
    v23 = v20 + 64;
    v24 = -1;
    v25 = -1 << *(v20 + 32);
    if (-v25 < 64)
    {
      v24 = ~(-1 << -v25);
    }

    v26 = v24 & *(v20 + 64);
    v27 = (63 - v25) >> 6;
    v70 = v22;
    v74 = (v21 + 32);
    v68 = v21;
    v71 = v20;

    v28 = 0;
    v66 = v27;
    v67 = v20 + 64;
    v69 = v0;
    while (1)
    {
      if (!v26)
      {
        while (1)
        {
          v34 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v34 >= v27)
          {
            (*(v0[26] + 8))(v0[27], v0[25]);

            goto LABEL_27;
          }

          v26 = *(v23 + 8 * v34);
          ++v28;
          if (v26)
          {
            v28 = v34;
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

LABEL_17:
      v77 = v0[14];
      v79 = v0[13];
      v81 = v0[11];
      v35 = v0[7];
      v36 = v0[8];
      v37 = v0[5];
      v38 = v0[6];
      v39 = __clz(__rbit64(v26)) | (v28 << 6);
      v40 = *(v71 + 48);
      v41 = sub_2528BECF0();
      v72 = *(*(v41 - 8) + 72);
      v75 = *(v41 - 8);
      v76 = v41;
      v73 = *(v75 + 16);
      v73(v35, v40 + v72 * v39);
      v42 = v36;
      (*(v70 + 16))(v35 + *(v84 + 48), *(v71 + 56) + *(v70 + 72) * v39, v36);
      sub_25272006C(v35, v38, &qword_27F4FD050, &qword_2528CE320);
      sub_25272006C(v35, v37, &qword_27F4FD050, &qword_2528CE320);
      v43 = *(v84 + 48);
      sub_2528BEE80();
      v44 = *(v70 + 8);
      v44(v37 + v43, v42);
      v45 = *v74;
      (*v74)(v79, v77, v81);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = sub_252785C40(v38);
      v49 = v85[2];
      v50 = (v48 & 1) == 0;
      v51 = __OFADD__(v49, v50);
      v52 = v49 + v50;
      if (v51)
      {
        goto LABEL_34;
      }

      v53 = v85;
      v54 = v48;
      if (v85[3] >= v52)
      {
        v0 = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v64 = v47;
          sub_2527E130C();
          v47 = v64;
          v53 = v85;
        }
      }

      else
      {
        v0 = v69;
        v55 = v69[6];
        sub_2527DE0B4(v52, isUniquelyReferenced_nonNull_native);
        v47 = sub_252785C40(v55);
        if ((v54 & 1) != (v56 & 1))
        {

          sub_2528C10A0();
          return;
        }

        v53 = v85;
      }

      v57 = v0[13];
      v58 = v0[11];
      v59 = v0[7];
      v85 = v53;
      if (v54)
      {
        (*(v68 + 40))(v53[7] + *(v68 + 72) * v47, v57, v58);
        sub_2527213D8(v59, &qword_27F4FD050, &qword_2528CE320);
      }

      else
      {
        v60 = v0[6];
        v53[(v47 >> 6) + 8] |= 1 << v47;
        v61 = v47;
        (v73)(v53[6] + v47 * v72, v60, v76);
        v45(v85[7] + *(v68 + 72) * v61, v57, v58);
        sub_2527213D8(v59, &qword_27F4FD050, &qword_2528CE320);
        v62 = v85[2];
        v51 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v51)
        {
          goto LABEL_35;
        }

        v85[2] = v63;
      }

      v26 &= v26 - 1;
      v29 = v0[8];
      v31 = v0[5];
      v30 = v0[6];
      v32 = *(v84 + 48);
      v33 = *(v75 + 8);
      v33(v30, v76);
      v33(v31, v76);
      v44(v30 + v32, v29);
      v27 = v66;
      v23 = v67;
    }
  }

  v4 = v0[31];
  sub_252782788(v0[20], v0[19], type metadata accessor for HomeEntity);
  if (!*(v4 + 16) || (v5 = sub_252785C40(v0[19]), (v6 & 1) == 0))
  {
    sub_2527828BC(v0[19], type metadata accessor for HomeEntity);
    goto LABEL_7;
  }

  v82 = v0[25];
  v83 = v0[27];
  v78 = v0[19];
  v80 = v0[26];
  v7 = v0[15];
  v8 = v0[16];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[8];
  (*(v11 + 16))(v12, *(v0[31] + 56) + *(v11 + 72) * v5, v13);

  sub_2528BEE80();
  (*(v11 + 8))(v12, v13);
  (*(v9 + 32))(v8, v7, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD058, &qword_2528C7488);
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD060, &qword_2528C7490) - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2528C3910;
  v17 = v16 + v15;
  v18 = v14[14];
  v19 = sub_2528BECF0();
  (*(*(v19 - 8) + 16))(v17, v78, v19);
  (*(v9 + 16))(v17 + v18, v8, v10);
  v85 = sub_25278DBC0(v16);
  swift_setDeallocating();
  sub_2527213D8(v17, &qword_27F4FD060, &qword_2528C7490);
  swift_deallocClassInstance();
  (*(v9 + 8))(v8, v10);
  sub_2527828BC(v78, type metadata accessor for HomeEntity);
  (*(v80 + 8))(v83, v82);
LABEL_27:

  v65 = v0[1];

  v65(v85);
}

uint64_t sub_252782788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527827F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity.SnapshotPair(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252782854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527828BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ValueWrapper(uint64_t a1)
{
  result = qword_27F4FD170;
  if (!qword_27F4FD170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252782A50()
{
  result = qword_27F4FD0B0;
  if (!qword_27F4FD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD0B0);
  }

  return result;
}

uint64_t sub_252782AA4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      MEMORY[0x2530A87A0](1, a2, a3);
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = 0;
      }

      return MEMORY[0x2530A87D0](v6);
    }

    else
    {
      MEMORY[0x2530A87A0](0, a2, a3);
      return sub_2528C1150();
    }
  }

  else if (a4 == 2)
  {
    MEMORY[0x2530A87A0](2, a2, a3);
    return sub_2528C1160();
  }

  else if (a4 == 3)
  {
    MEMORY[0x2530A87A0](3, a2, a3);
    return MEMORY[0x2530A87A0](a2);
  }

  else
  {
    MEMORY[0x2530A87A0](4);

    return sub_2528C0A40();
  }
}

uint64_t sub_252782B84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2528C1130();
  sub_252782AA4(v5, v1, v2, v3);
  return sub_2528C1180();
}

uint64_t sub_252782BEC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_2528C1130();
  sub_252782AA4(v6, v2, v3, v4);
  return sub_2528C1180();
}

uint64_t sub_252782C60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_2528BEC40();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = sub_2528C09B0();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  v11 = (v0 + *(type metadata accessor for ValueWrapper(0) + 20));
  v12 = *v11;
  v13 = *(v11 + 16);
  if (v13 <= 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_9;
    }

    sub_2528C09A0();
    sub_2528C0990();
    sub_2528C0970();
  }

  else
  {
    if (v13 == 2)
    {
      sub_2528C09A0();
      sub_2528C0990();
      LODWORD(v17) = v12;
LABEL_10:
      sub_2528C0960();
      goto LABEL_11;
    }

    if (v13 == 3)
    {
LABEL_9:
      sub_2528C09A0();
      sub_2528C0990();
      v17 = v12;
      goto LABEL_10;
    }

    sub_2528C09A0();
    sub_2528C0990();
    sub_2528C0970();
  }

LABEL_11:
  sub_2528C0990();
  sub_2528BEC30();
  (*(v8 + 56))(v6, 1, 1, v7);
  v14 = sub_2528BE8D0();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  return sub_2528BE900();
}

uint64_t sub_252783070()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502908);
  __swift_project_value_buffer(v0, qword_27F502908);
  return sub_2528BE9D0();
}

uint64_t sub_2527831B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB688 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F502908);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_252783260()
{
  result = qword_27F4FD0D8;
  if (!qword_27F4FD0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD0E0, &qword_2528C7608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD0D8);
  }

  return result;
}

uint64_t sub_2527832C4(uint64_t a1)
{
  v2 = sub_252783500(&qword_27F4FD100, type metadata accessor for ValueWrapper, &unk_2528C74C0);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25278338C(uint64_t a1)
{
  v2 = sub_252783500(&qword_27F4FD0D0, type metadata accessor for ValueWrapper, &unk_2528C7670);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_25278340C()
{
  result = qword_27F4FD0F0;
  if (!qword_27F4FD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD0F0);
  }

  return result;
}

unint64_t sub_252783464()
{
  result = qword_27F4FD0F8;
  if (!qword_27F4FD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD0F8);
  }

  return result;
}

uint64_t sub_252783500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25278354C()
{
  result = qword_27F4FD108;
  if (!qword_27F4FD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD108);
  }

  return result;
}

unint64_t sub_2527835A4()
{
  result = qword_27F4FD110;
  if (!qword_27F4FD110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD118, qword_2528C7748);
    sub_252783500(&qword_27F4FD0C8, type metadata accessor for ValueWrapper, &unk_2528C7610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD110);
  }

  return result;
}

uint64_t sub_252783658(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_252782A50();
  *v5 = v2;
  v5[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v6);
}

unint64_t sub_252783710()
{
  result = qword_27F4FD120;
  if (!qword_27F4FD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD120);
  }

  return result;
}

uint64_t sub_252783764(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252783788, 0, 0);
}

uint64_t sub_252783788(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  sub_2528BE550();
  v5 = type metadata accessor for ValueWrapper(0);
  v6 = v4 + *(v5 + 20);
  *v6 = v3;
  *(v6 + 8) = 0;
  *(v6 + 16) = 3;
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v7 = v2[1];

  return v7();
}

unint64_t sub_252783848()
{
  result = qword_27F4FD128;
  if (!qword_27F4FD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD128);
  }

  return result;
}

unint64_t sub_2527838A0()
{
  result = qword_27F4FD130;
  if (!qword_27F4FD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD130);
  }

  return result;
}

unint64_t sub_2527838F8()
{
  result = qword_27F4FD138;
  if (!qword_27F4FD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD138);
  }

  return result;
}

uint64_t sub_25278394C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252783970, 0, 0);
}

uint64_t sub_252783970(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  sub_2528BE550();
  v5 = type metadata accessor for ValueWrapper(0);
  v6 = v4 + *(v5 + 20);
  *v6 = v3;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v7 = v2[1];

  return v7();
}

unint64_t sub_252783A30()
{
  result = qword_27F4FD140;
  if (!qword_27F4FD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD140);
  }

  return result;
}

unint64_t sub_252783A88()
{
  result = qword_27F4FD148;
  if (!qword_27F4FD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD148);
  }

  return result;
}

unint64_t sub_252783AE0()
{
  result = qword_27F4FD150;
  if (!qword_27F4FD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD150);
  }

  return result;
}

uint64_t sub_252783B34(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_252783B5C, 0, 0);
}

uint64_t sub_252783B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  sub_2528BE550();
  v5 = type metadata accessor for ValueWrapper(0);
  v6 = v4 + *(v5 + 20);
  *v6 = v3;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v7 = *(v2 + 8);

  return v7();
}

unint64_t sub_252783C1C()
{
  result = qword_27F4FD158;
  if (!qword_27F4FD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD158);
  }

  return result;
}

unint64_t sub_252783C74()
{
  result = qword_27F4FD160;
  if (!qword_27F4FD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD160);
  }

  return result;
}

uint64_t sub_252783CC8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_252783CF0, 0, 0);
}

uint64_t sub_252783CF0(uint64_t a1, uint64_t a2)
{
  v4 = v2[3];
  v3 = v2[4];
  v5 = v2[2];
  sub_2528BE550();
  v6 = type metadata accessor for ValueWrapper(0);
  v7 = v5 + *(v6 + 20);
  *v7 = v4;
  *(v7 + 8) = v3;
  *(v7 + 16) = 4;
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v9 = v2[1];

  return v9();
}

unint64_t sub_252783DCC()
{
  result = qword_27F4FD168;
  if (!qword_27F4FD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD168);
  }

  return result;
}

uint64_t sub_252783E98(uint64_t a1)
{
  result = sub_2528BECF0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_252783F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_252783F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_252783FD4()
{
  result = qword_27F4FD180;
  if (!qword_27F4FD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD180);
  }

  return result;
}

uint64_t sub_252784028(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    v9 = a4 ^ a1 ^ 1;
    if (a6)
    {
      v9 = 0;
    }

    v10 = a6 == 1 && *&a1 == *&a4;
    if (a3)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  else if (a3 == 2)
  {
    return a6 == 2 && *&a1 == *&a4;
  }

  else if (a3 == 3)
  {
    return a6 == 3 && a1 == a4;
  }

  else if (a6 == 4)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    else
    {
      return sub_2528C1060();
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25278410C()
{
  v1 = type metadata accessor for HomeAppIntentError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252791A94(v0, v3, type metadata accessor for HomeAppIntentError);
  result = swift_getEnumCaseMultiPayload();
  if (result > 5)
  {
    if (result > 8)
    {
      if (result != 9 && result != 10)
      {
        return 11;
      }
    }

    else if (result == 6)
    {
      sub_252791BB4(v3, type metadata accessor for HomeAppIntentError);
      return 8;
    }

    else if (result == 7)
    {
      return 3;
    }

    else
    {
      return 6;
    }
  }

  else if (result > 2)
  {
    if (result == 3)
    {
      return 4;
    }

    else if (result == 4)
    {
      return 5;
    }

    else
    {
      return 7;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0);

      sub_25278E110(v3);
      return 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0);

      sub_25278E110(v3);
      return 2;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0);

    sub_25278E110(v3);
    return 0;
  }

  return result;
}

unint64_t HomeAppIntentError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HomeAppIntentError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = sub_25278DFE0(MEMORY[0x277D84F90]);
  sub_252791A94(v1, v8, type metadata accessor for HomeAppIntentError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if ((EnumCaseMultiPayload - 7) >= 5)
    {
      v19 = *(v8 + 2);
      if (*v8 != 63)
      {
        v28 = *(v8 + 1);
        v39 = *v8;
        v29 = AttributeKind.rawValue.getter();
        v30 = MEMORY[0x277D837D0];
        v41 = MEMORY[0x277D837D0];
        *&v40 = v29;
        *(&v40 + 1) = v31;
        sub_252712E3C(&v40, v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v15;
        sub_25278BE40(v38, 0x7475626972747461, 0xED0000646E694B65, isUniquelyReferenced_nonNull_native);
        v33 = v37;
        v41 = v30;
        *&v40 = v28;
        *(&v40 + 1) = v19;
        sub_252712E3C(&v40, v38);
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v37 = v33;
        v24 = 0x80000002528E5890;
        v23 = 0xD000000000000010;
        goto LABEL_14;
      }
    }
  }

  else if (EnumCaseMultiPayload >= 3)
  {
    if (*v8 != 63)
    {
      v39 = *v8;
      v20 = AttributeKind.rawValue.getter();
      v41 = MEMORY[0x277D837D0];
      *&v40 = v20;
      *(&v40 + 1) = v21;
      sub_252712E3C(&v40, v38);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v37 = v15;
      v23 = 0x7475626972747461;
      v24 = 0xED0000646E694B65;
LABEL_14:
      sub_25278BE40(v38, v23, v24, v22);
      return v37;
    }
  }

  else
  {
    v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48)];
    v18 = *(v17 + 1);
    v36 = *v17;
    sub_25274AA0C(v8, v14, &qword_27F4FC628, &qword_2528C4750);
    sub_25274AA0C(v14, v12, &qword_27F4FC628, &qword_2528C4750);
    if ((*(v3 + 48))(v12, 1, v2) == 1)
    {
      sub_25278E110(v12);
      if (!v18)
      {
        return v15;
      }

      goto LABEL_12;
    }

    (*(v3 + 32))(v5, v12, v2);
    v25 = sub_2528BECB0();
    v41 = MEMORY[0x277D837D0];
    *&v40 = v25;
    *(&v40 + 1) = v26;
    sub_252712E3C(&v40, v38);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v15;
    sub_25278BE40(v38, 25705, 0xE200000000000000, v27);
    (*(v3 + 8))(v5, v2);
    v15 = v37;
    if (v18)
    {
LABEL_12:
      v41 = MEMORY[0x277D837D0];
      *&v40 = v36;
      *(&v40 + 1) = v18;
      sub_252712E3C(&v40, v38);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v37 = v15;
      v23 = 1701667182;
      v24 = 0xE400000000000000;
      goto LABEL_14;
    }
  }

  return v15;
}

uint64_t HomeAppIntentError.init(error:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v102 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v102 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v102 - v9;
  v11 = type metadata accessor for HomeAppIntentError(0);
  v105 = *(v11 - 8);
  v106 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v102 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v102 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v102 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v102 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v102 - v28;
  MEMORY[0x28223BE20](v27);
  v103 = &v102 - v30;
  v104 = a1;
  v31 = [a1 userInfo];
  v32 = sub_2528C08D0();

  if (!*(v32 + 16) || (v33 = sub_252785B30(0xD000000000000024, 0x80000002528E58B0), (v34 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_25272BF98(*(v32 + 56) + 32 * v33, v110);

  sub_25272BFF4(0, &qword_27F4FC278, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:

    v41 = 1;
    v43 = v106;
    v42 = v107;
    v44 = v105;
    return (*(v44 + 56))(v42, v41, 1, v43);
  }

  v35 = v108;
  switch(sub_25279198C([v108 code]))
  {
    case 1u:
      sub_25278556C(v35, v8);
      v73 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48)];
      sub_25272006C(v8, v26, &qword_27F4FC628, &qword_2528C4750);
      v74 = [v35 userInfo];
      v75 = sub_2528C08D0();

      if (*(v75 + 16) && (v76 = sub_252785B30(1701667182, 0xE400000000000000), (v77 & 1) != 0))
      {
        sub_25272BF98(*(v75 + 56) + 32 * v76, v110);

        sub_25278E110(v8);

        if (swift_dynamicCast())
        {
          goto LABEL_46;
        }
      }

      else
      {

        sub_25278E110(v8);
      }

      *v73 = 0;
      *(v73 + 1) = 0;
LABEL_46:
      v52 = v107;
      v44 = v105;
      v55 = v103;
      v53 = v106;
      swift_storeEnumTagMultiPayload();
      v94 = v26;
      goto LABEL_68;
    case 2u:
      v58 = v102;
      sub_25278556C(v35, v102);
      v59 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48)];
      sub_25272006C(v58, v23, &qword_27F4FC628, &qword_2528C4750);
      v60 = [v35 userInfo];
      v61 = sub_2528C08D0();

      if (*(v61 + 16) && (v62 = sub_252785B30(1701667182, 0xE400000000000000), (v63 & 1) != 0))
      {
        sub_25272BF98(*(v61 + 56) + 32 * v62, v110);

        sub_25278E110(v58);

        if (swift_dynamicCast())
        {
          goto LABEL_40;
        }
      }

      else
      {

        sub_25278E110(v58);
      }

      *v59 = 0;
      *(v59 + 1) = 0;
LABEL_40:
      v52 = v107;
      v44 = v105;
      v55 = v103;
      v53 = v106;
      swift_storeEnumTagMultiPayload();
      v94 = v23;
      goto LABEL_68;
    case 3u:
    case 6u:
    case 9u:
    case 0xAu:
    case 0xBu:

      v55 = v103;
      v53 = v106;
      swift_storeEnumTagMultiPayload();
      v52 = v107;
      v44 = v105;
      goto LABEL_69;
    case 4u:
      v46 = [v35 userInfo];
      v47 = sub_2528C08D0();

      if (*(v47 + 16))
      {
        v48 = v35;
        v49 = sub_252785B30(0x7475626972747461, 0xED0000646E694B65);
        if (v50)
        {
          sub_25272BF98(*(v47 + 56) + 32 * v49, v110);

          v51 = swift_dynamicCast();
          v53 = v106;
          v52 = v107;
          v55 = v103;
          v54 = v104;
          if (v51)
          {
            v56 = v108;
            v57 = v109;
            v44 = v105;
            goto LABEL_59;
          }

          v44 = v105;
LABEL_58:
          v56 = 0;
          v57 = 0xE000000000000000;
LABEL_59:
          AttributeKind.init(rawValue:)(*&v56);

          *v20 = v110[0];
          swift_storeEnumTagMultiPayload();
          v94 = v20;
          goto LABEL_68;
        }
      }

      else
      {
        v48 = v35;
      }

      v53 = v106;
      v52 = v107;
      v54 = v104;
      v44 = v105;
      v55 = v103;
      goto LABEL_58;
    case 5u:
      v78 = [v35 userInfo];
      v79 = sub_2528C08D0();

      if (*(v79 + 16))
      {
        v80 = v35;
        v81 = sub_252785B30(0x7475626972747461, 0xED0000646E694B65);
        if (v82)
        {
          sub_25272BF98(*(v79 + 56) + 32 * v81, v110);

          v83 = swift_dynamicCast();
          v53 = v106;
          v52 = v107;
          v55 = v103;
          v84 = v104;
          if (v83)
          {
            v85 = v108;
            v86 = v109;
            v44 = v105;
            goto LABEL_67;
          }

          v44 = v105;
LABEL_66:
          v85 = 0;
          v86 = 0xE000000000000000;
LABEL_67:
          AttributeKind.init(rawValue:)(*&v85);

          *v17 = v110[0];
          swift_storeEnumTagMultiPayload();
          v94 = v17;
          goto LABEL_68;
        }
      }

      else
      {
        v80 = v35;
      }

      v53 = v106;
      v52 = v107;
      v84 = v104;
      v44 = v105;
      v55 = v103;
      goto LABEL_66;
    case 7u:
      v64 = [v35 userInfo];
      v65 = sub_2528C08D0();

      if (!*(v65 + 16))
      {
        v66 = v35;
        goto LABEL_61;
      }

      v66 = v35;
      v67 = sub_252785B30(0x7475626972747461, 0xED0000646E694B65);
      if ((v68 & 1) == 0)
      {
LABEL_61:

        v53 = v106;
        v52 = v107;
        v70 = v104;
        v44 = v105;
        v55 = v103;
        goto LABEL_62;
      }

      sub_25272BF98(*(v65 + 56) + 32 * v67, v110);

      v69 = swift_dynamicCast();
      v53 = v106;
      v52 = v107;
      v55 = v103;
      v70 = v104;
      if (v69)
      {
        v71 = v108;
        v72 = v109;
        v44 = v105;
        goto LABEL_63;
      }

      v44 = v105;
LABEL_62:
      v71 = 0;
      v72 = 0xE000000000000000;
LABEL_63:
      AttributeKind.init(rawValue:)(*&v71);

      *v14 = v110[0];
      swift_storeEnumTagMultiPayload();
      v94 = v14;
LABEL_68:
      sub_252791C14(v94, v55, type metadata accessor for HomeAppIntentError);
LABEL_69:
      sub_252791C14(v55, v52, type metadata accessor for HomeAppIntentError);
      v42 = v52;
      v41 = 0;
      v43 = v53;
      return (*(v44 + 56))(v42, v41, 1, v43);
    case 8u:
      v87 = [v35 userInfo];
      v88 = sub_2528C08D0();

      if (*(v88 + 16) && (v89 = sub_252785B30(0x7475626972747461, 0xED0000646E694B65), (v90 & 1) != 0))
      {
        v91 = v35;
        sub_25272BF98(*(v88 + 56) + 32 * v89, v110);

        if (swift_dynamicCast())
        {
          v92 = v108;
          v93 = v109;
          v53 = v106;
          v52 = v107;
          v44 = v105;
          v55 = v103;
          goto LABEL_49;
        }
      }

      else
      {
        v91 = v35;
      }

      v53 = v106;
      v52 = v107;
      v44 = v105;
      v55 = v103;
      v92 = 0;
      v93 = 0xE000000000000000;
LABEL_49:
      AttributeKind.init(rawValue:)(*&v92);
      v95 = v110[0];
      v96 = [v91 userInfo];
      v97 = sub_2528C08D0();

      if (*(v97 + 16) && (v98 = sub_252785B30(0xD000000000000010, 0x80000002528E5890), (v99 & 1) != 0))
      {
        sub_25272BF98(*(v97 + 56) + 32 * v98, v110);

        if (swift_dynamicCast())
        {
          v100 = v108;
          v101 = v109;

          goto LABEL_55;
        }
      }

      else
      {
      }

      v100 = 0;
      v101 = 0xE000000000000000;
LABEL_55:
      *v55 = v95;
      *(v55 + 8) = v100;
      *(v55 + 16) = v101;
      swift_storeEnumTagMultiPayload();
      goto LABEL_69;
    case 0xCu:

      goto LABEL_10;
    default:
      sub_25278556C(v35, v10);
      v36 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48)];
      sub_25272006C(v10, v29, &qword_27F4FC628, &qword_2528C4750);
      v37 = [v35 userInfo];
      v38 = sub_2528C08D0();

      if (*(v38 + 16) && (v39 = sub_252785B30(1701667182, 0xE400000000000000), (v40 & 1) != 0))
      {
        sub_25272BF98(*(v38 + 56) + 32 * v39, v110);

        sub_25278E110(v10);

        if (swift_dynamicCast())
        {
          goto LABEL_43;
        }
      }

      else
      {

        sub_25278E110(v10);
      }

      *v36 = 0;
      *(v36 + 1) = 0;
LABEL_43:
      v52 = v107;
      v44 = v105;
      v53 = v106;
      swift_storeEnumTagMultiPayload();
      v94 = v29;
      v55 = v103;
      goto LABEL_68;
  }
}

uint64_t sub_25278556C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-v5];
  v7 = [a1 userInfo];
  v8 = sub_2528C08D0();

  if (*(v8 + 16) && (v9 = sub_252785B30(25705, 0xE200000000000000), (v10 & 1) != 0))
  {
    sub_25272BF98(*(v8 + 56) + 32 * v9, v16);

    if (swift_dynamicCast())
    {
      sub_2528BECA0();

      v11 = sub_2528BECF0();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) != 1)
      {
        (*(v12 + 32))(a2, v6, v11);
        return (*(v12 + 56))(a2, 0, 1, v11);
      }

      sub_25278E110(v6);
    }
  }

  else
  {
  }

  v13 = sub_2528BECF0();
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

unint64_t sub_2527857C4(char a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_252786EFC(a1 & 1, v2);
}

unint64_t sub_252785868(char a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_252787040(a1 & 1, v2);
}

unint64_t sub_252785918(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_252787184(v1, v2);
}

unint64_t sub_252785A50(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_2527873E8(v1, v2);
}

unint64_t sub_252785B30(uint64_t a1, uint64_t a2)
{
  sub_2528C1130();
  sub_2528C0A40();
  v4 = sub_2528C1180();

  return sub_252787578(a1, a2, v4);
}

unint64_t sub_252785BD4(uint64_t a1)
{
  sub_2528C1130();
  DeviceEntity.hash(into:)(v4);
  v2 = sub_2528C1180();

  return sub_25278774C(a1, v2);
}

unint64_t sub_252785C40(uint64_t a1)
{
  sub_2528BECF0();
  v2 = MEMORY[0x277CC95F0];
  sub_252791B6C(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_2528C0900();
  return sub_2527878AC(a1, v3, MEMORY[0x277CC95F0], &qword_27F4FC680, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_252785D14(uint64_t a1)
{
  sub_2528BF9D0();
  v2 = MEMORY[0x277D15AC0];
  sub_252791B6C(&qword_27F4FD230, MEMORY[0x277D15AC0], MEMORY[0x277D15AC8]);
  v3 = sub_2528C0900();
  return sub_2527878AC(a1, v3, MEMORY[0x277D15AC0], &qword_27F4FD238, v2, MEMORY[0x277D15AD0]);
}

unint64_t sub_252785DE8(uint64_t a1)
{
  sub_2528BFB20();
  v2 = MEMORY[0x277D15C30];
  sub_252791B6C(&qword_27F4FD1E8, MEMORY[0x277D15C30], MEMORY[0x277D15C40]);
  v3 = sub_2528C0900();
  return sub_2527878AC(a1, v3, MEMORY[0x277D15C30], &qword_27F4FD1F0, v2, MEMORY[0x277D15C48]);
}

unint64_t sub_252785EBC(uint64_t a1)
{
  sub_2528BFDE0();
  v2 = MEMORY[0x277D16348];
  sub_252791B6C(&qword_27F4FC798, MEMORY[0x277D16348], MEMORY[0x277D16350]);
  v3 = sub_2528C0900();
  return sub_2527878AC(a1, v3, MEMORY[0x277D16348], &qword_27F4FC7A0, v2, MEMORY[0x277D16360]);
}

unint64_t sub_252785FBC(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_2527885B4(v1, v2);
}

unint64_t sub_252786084(char a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_252788748(a1 & 1, v2);
}

unint64_t sub_252786128(char a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_25278888C(a1 & 1, v2);
}

unint64_t sub_2527861D0(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_2527889D0(v1, v2);
}

unint64_t sub_25278628C(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_252788B58(v1, v2);
}

unint64_t sub_2527863A0(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_252788D70(v1, v2);
}

unint64_t sub_252786470(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_252788F10(v1, v2);
}

unint64_t sub_252786554(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_2527890AC(v1, v2);
}

unint64_t sub_252786654(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_252789660(v1, v2);
}

unint64_t sub_252786710(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_252789F0C(v1, v2);
}

unint64_t sub_252786804(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_25278A0E0(v1, v2);
}

unint64_t sub_2527868FC(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_25278A2B4(v1, v2);
}

unint64_t sub_252786A08(char a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_25278A4B8(a1 & 1, v2);
}

unint64_t sub_252786AB8(char a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_25278A5FC(a1 & 1, v2);
}

uint64_t sub_252786B48(uint64_t a1, uint64_t (*a2)(void *), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_2528C1130();
  a2(v5);
  sub_2528C0A40();

  v6 = sub_2528C1180();

  return a3(a1, v6);
}

unint64_t sub_252786BE8(uint64_t a1)
{
  sub_2528BF0B0();
  v2 = MEMORY[0x277D15558];
  sub_252791B6C(&qword_27F4FD1B8, MEMORY[0x277D15558], MEMORY[0x277D15570]);
  v3 = sub_2528C0900();
  return sub_2527878AC(a1, v3, MEMORY[0x277D15558], &qword_27F4FD1C0, v2, MEMORY[0x277D15588]);
}

unint64_t sub_252786CBC(uint64_t a1)
{
  v1 = a1;
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_25278AFB0(v1, v2);
}

unint64_t sub_252786DD0(char a1)
{
  sub_2528C1130();
  sub_2528C0A40();

  v2 = sub_2528C1180();

  return sub_25278B1C4(a1 & 1, v2);
}

unint64_t sub_252786E74(uint64_t a1)
{
  v2 = sub_2528C0D50();

  return sub_25278B2FC(a1, v2);
}

unint64_t sub_252786EB8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_2528BB1EC(*(v1 + 40), a1);

  return sub_25278B3D0(v2, v3);
}

unint64_t sub_252786EFC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7465736E7573;
    }

    else
    {
      v6 = 0x657369726E7573;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7465736E7573 : 0x657369726E7573;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252787040(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6F48657669727261;
    }

    else
    {
      v6 = 0x6D6F48657661656CLL;
    }

    if (a1)
    {
      v7 = 0xEA0000000000656DLL;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6F48657669727261 : 0x6D6F48657661656CLL;
      v9 = *(*(v2 + 48) + v4) ? 0xEA0000000000656DLL : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252787184(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
          v8 = 0x7065656C73;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x6966654472657375;
          }

          else
          {
            v8 = 1701736302;
          }

          if (v7 == 4)
          {
            v9 = 0xEB0000000064656ELL;
          }

          else
          {
            v9 = 0xE400000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x61706544656D6F68;
        }

        else
        {
          v8 = 0x7055656B6177;
        }

        if (v7 == 1)
        {
          v9 = 0xED00006572757472;
        }

        else
        {
          v9 = 0xE600000000000000;
        }
      }

      else
      {
        v8 = 0x69727241656D6F68;
        v9 = 0xEB000000006C6176;
      }

      v10 = 0x6966654472657375;
      if (v6 != 4)
      {
        v10 = 1701736302;
      }

      v11 = 0xEB0000000064656ELL;
      if (v6 != 4)
      {
        v11 = 0xE400000000000000;
      }

      if (v6 == 3)
      {
        v10 = 0x7065656C73;
        v11 = 0xE500000000000000;
      }

      v12 = 0x61706544656D6F68;
      if (v6 != 1)
      {
        v12 = 0x7055656B6177;
      }

      v13 = 0xED00006572757472;
      if (v6 != 1)
      {
        v13 = 0xE600000000000000;
      }

      if (!v6)
      {
        v12 = 0x69727241656D6F68;
        v13 = 0xEB000000006C6176;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_2528C1060();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2527873E8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v20 + 48) + v4) == 2 ? 0x656369746F6ELL : 0x686372616573;
      v7 = *(*(v20 + 48) + v4) ? 0x6B6E694C70656564 : 0x726577736E61;
      v8 = *(*(v20 + 48) + v4) ? 0xE800000000000000 : 0xE600000000000000;
      v9 = *(*(v20 + 48) + v4) <= 1u ? v7 : v6;
      v10 = *(*(v20 + 48) + v4) <= 1u ? v8 : 0xE600000000000000;
      v11 = v5 == 2 ? 0x656369746F6ELL : 0x686372616573;
      v12 = v5 ? 0x6B6E694C70656564 : 0x726577736E61;
      v13 = v5 ? 0xE800000000000000 : 0xE600000000000000;
      v14 = v5 <= 1 ? v12 : v11;
      v15 = v5 <= 1 ? v13 : 0xE600000000000000;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_2528C1060();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v19 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252787578(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2528C1060())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_252787630(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = AttributeKind.rawValue.getter();
      v9 = v8;
      if (v7 == AttributeKind.rawValue.getter() && v9 == v10)
      {
        break;
      }

      v12 = sub_2528C1060();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_25278774C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DeviceEntity(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_252791A94(*(v2 + 48) + v12 * v10, v8, type metadata accessor for DeviceEntity);
      v13 = _s14HomeAppIntents12DeviceEntityV2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_252791BB4(v8, type metadata accessor for DeviceEntity);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_2527878AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_252791B6C(v23, v24, v25);
      v19 = sub_2528C0930();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_252787A4C(uint64_t a1, uint64_t a2)
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

unint64_t sub_252787AB8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4850;
          break;
        case 2:
          break;
        case 3:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000002528E4870;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4890;
          break;
        case 5:
          v8 = 0xD000000000000016;
          v7 = 0x80000002528E48B0;
          break;
        case 6:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E48D0;
          break;
        case 7:
          v8 = 0xD000000000000016;
          v7 = 0x80000002528E48F0;
          break;
        case 8:
          v8 = 0xD000000000000013;
          v7 = 0x80000002528E4910;
          break;
        case 9:
          v8 = 0xD000000000000011;
          v7 = 0x80000002528E4930;
          break;
        case 0xA:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4950;
          break;
        case 0xB:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000002528E4970;
          break;
        case 0xC:
          v8 = 0xD000000000000020;
          v7 = 0x80000002528E4990;
          break;
        case 0xD:
          v8 = 0xD000000000000014;
          v7 = 0x80000002528E49C0;
          break;
        case 0xE:
          v7 = 0xEC00000064656B63;
          v8 = 0x6F4C656369766564;
          break;
        case 0xF:
          v8 = 0x6544737365636361;
          v7 = 0xEC0000006465696ELL;
          break;
        case 0x10:
          v8 = 0xD000000000000010;
          v7 = 0x80000002528E49F0;
          break;
        case 0x11:
          v8 = 0xD000000000000012;
          v7 = 0x80000002528E4A10;
          break;
        case 0x12:
          v8 = 0xD000000000000016;
          v7 = 0x80000002528E4A30;
          break;
        case 0x13:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000002528E4A50;
          break;
        default:
          v8 = 0xD000000000000014;
          v7 = 0x80000002528E4830;
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      switch(a1)
      {
        case 1:
          v9 = 0x80000002528E4850;
          if (v8 == 0xD000000000000015)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 2:
          goto LABEL_59;
        case 3:
          v9 = 0x80000002528E4870;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 4:
          v9 = 0x80000002528E4890;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 5:
          v9 = 0x80000002528E48B0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 6:
          v9 = 0x80000002528E48D0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 7:
          v9 = 0x80000002528E48F0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 8:
          v10 = 0xD000000000000013;
          v9 = 0x80000002528E4910;
LABEL_59:
          if (v8 == v10)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 9:
          v9 = 0x80000002528E4930;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 10:
          v9 = 0x80000002528E4950;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 11:
          v9 = 0x80000002528E4970;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 12:
          v9 = 0x80000002528E4990;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 13:
          v9 = 0x80000002528E49C0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 14:
          v9 = 0xEC00000064656B63;
          if (v8 != 0x6F4C656369766564)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 15:
          v9 = 0xEC0000006465696ELL;
          if (v8 != 0x6544737365636361)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 16:
          v9 = 0x80000002528E49F0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 17:
          v9 = 0x80000002528E4A10;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 18:
          v9 = 0x80000002528E4A30;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 19:
          v9 = 0x80000002528E4A50;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        default:
          v9 = 0x80000002528E4830;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_61;
          }

LABEL_60:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_61:
          v11 = sub_2528C1060();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_252788010(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000002528E4A90;
          break;
        case 2:
          break;
        case 3:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4AB0;
          break;
        case 4:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000002528E4AD0;
          break;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x6B63757453637672;
          break;
        case 6:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000002528E4B00;
          break;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x80000002528E4B20;
          break;
        case 8:
          v8 = 0x4274737544637672;
          v7 = 0xEE006C6C75466E69;
          break;
        case 9:
          v8 = 0xD000000000000013;
          v7 = 0x80000002528E4B50;
          break;
        case 0xA:
          v8 = 0xD000000000000011;
          v7 = 0x80000002528E4B70;
          break;
        case 0xB:
          v8 = 0xD000000000000013;
          v7 = 0x80000002528E4B90;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4BB0;
          break;
        case 0xD:
          v8 = 0x6574746142637672;
          v7 = 0xED0000776F4C7972;
          break;
        case 0xE:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4BE0;
          break;
        case 0xF:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4C00;
          break;
        case 0x10:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4C20;
          break;
        case 0x11:
          v8 = 0x6C65656857637672;
          v7 = 0xEF64656D6D614A73;
          break;
        case 0x12:
          v8 = 0x6873757242637672;
          v7 = 0xEE0064656D6D614ALL;
          break;
        case 0x13:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000002528E4C60;
          break;
        default:
          v8 = 0xD000000000000016;
          v7 = 0x80000002528E4A70;
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      switch(a1)
      {
        case 1:
          v9 = 0x80000002528E4A90;
          if (v8 == 0xD00000000000001DLL)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 2:
          goto LABEL_59;
        case 3:
          v9 = 0x80000002528E4AB0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 4:
          v9 = 0x80000002528E4AD0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 5:
          v9 = 0xE800000000000000;
          if (v8 != 0x6B63757453637672)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 6:
          v9 = 0x80000002528E4B00;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 7:
          v9 = 0x80000002528E4B20;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 8:
          v10 = 0x4274737544637672;
          v9 = 0xEE006C6C75466E69;
LABEL_59:
          if (v8 == v10)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 9:
          v9 = 0x80000002528E4B50;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 10:
          v9 = 0x80000002528E4B70;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 11:
          v9 = 0x80000002528E4B90;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 12:
          v9 = 0x80000002528E4BB0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 13:
          v9 = 0xED0000776F4C7972;
          if (v8 != 0x6574746142637672)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 14:
          v9 = 0x80000002528E4BE0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 15:
          v9 = 0x80000002528E4C00;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 16:
          v9 = 0x80000002528E4C20;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 17:
          v9 = 0xEF64656D6D614A73;
          if (v8 != 0x6C65656857637672)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 18:
          v9 = 0xEE0064656D6D614ALL;
          if (v8 != 0x6873757242637672)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 19:
          v9 = 0x80000002528E4C60;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        default:
          v9 = 0x80000002528E4A70;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_61;
          }

LABEL_60:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_61:
          v11 = sub_2528C1060();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2527885B4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x73656E656373;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x657469726F766166;
          v7 = 0xE900000000000073;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE700000000000000;
            if (v8 != 0x736172656D6163)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE700000000000000;
        v8 = 0x736172656D6163;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x73656E656373;
      }

      else
      {
        v10 = 0x657469726F766166;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE900000000000073;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2528C1060();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252788748(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x3031657A6973;
    }

    else
    {
      v6 = 0x355F32657A6973;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x3031657A6973 : 0x355F32657A6973;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278888C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6974616D6F747561;
    }

    else
    {
      v6 = 0x6C61756E616DLL;
    }

    if (a1)
    {
      v7 = 0xE900000000000063;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6974616D6F747561 : 0x6C61756E616DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE900000000000063 : 0xE600000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2527889D0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE400000000000000;
          v8 = 1701602409;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE600000000000000;
          v8 = 0x657669746361;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE800000000000000;
            if (v8 != 0x6576697463616E69)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x6576697463616E69;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 1701602409;
      }

      else
      {
        v10 = 0x657669746361;
      }

      if (v9 == 1)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2528C1060();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252788B58(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
          v8 = 1919508838;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x726F697265666E69;
          }

          else
          {
            v8 = 1919905648;
          }

          if (v7 == 4)
          {
            v9 = 0xE800000000000000;
          }

          else
          {
            v9 = 0xE400000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x6E656C6C65637865;
        }

        else
        {
          v8 = 1685024615;
        }

        if (v7 == 1)
        {
          v9 = 0xE900000000000074;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      else
      {
        v9 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
      }

      v10 = 0x726F697265666E69;
      if (v6 == 4)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v10 = 1919905648;
        v11 = 0xE400000000000000;
      }

      if (v6 == 3)
      {
        v10 = 1919508838;
        v11 = 0xE400000000000000;
      }

      v12 = 0x6E656C6C65637865;
      if (v6 != 1)
      {
        v12 = 1685024615;
      }

      v13 = 0xE900000000000074;
      if (v6 != 1)
      {
        v13 = 0xE400000000000000;
      }

      if (!v6)
      {
        v12 = 0x6E776F6E6B6E75;
        v13 = 0xE700000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_2528C1060();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252788D70(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x6572676F72506E69;
          v8 = 0xEA00000000007373;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x6772616843746F6ELL;
          v8 = 0xED0000656C626165;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v7 != 1701736302)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1701736302;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6572676F72506E69;
      }

      else
      {
        v10 = 0x6772616843746F6ELL;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000007373;
      }

      else
      {
        v11 = 0xED0000656C626165;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2528C1060();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252788F10(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x64656D6D616ALL : 0x6E776F6E6B6E75;
      v8 = v6 == 2 ? 0xE600000000000000 : 0xE700000000000000;
      v9 = *(*(v23 + 48) + v4) ? 0x64656B636F6CLL : 0x64656B636F6C6E75;
      v10 = *(*(v23 + 48) + v4) ? 0xE600000000000000 : 0xE800000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x64656D6D616ALL : 0x6E776F6E6B6E75;
      v14 = v5 == 2 ? 0xE600000000000000 : 0xE700000000000000;
      v15 = v5 ? 0x64656B636F6CLL : 0x64656B636F6C6E75;
      v16 = v5 ? 0xE600000000000000 : 0xE800000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_2528C1060();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2527890AC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v16 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 1)
      {
        v7 = *(*(v2 + 48) + v4) ? 0x6465736F6C63 : 1852141679;
        v8 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE400000000000000;
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x676E696E65706FLL;
      }

      else
      {
        v7 = v6 == 3 ? 0x676E69736F6C63 : 0x646570706F7473;
        v8 = 0xE700000000000000;
      }

      if (v5 == 3)
      {
        v9 = 0x676E69736F6C63;
      }

      else
      {
        v9 = 0x646570706F7473;
      }

      if (v5 == 2)
      {
        v9 = 0x676E696E65706FLL;
      }

      v10 = v5 ? 0x6465736F6C63 : 1852141679;
      v11 = v5 ? 0xE600000000000000 : 0xE400000000000000;
      v12 = v5 <= 1 ? v10 : v9;
      v13 = v5 <= 1 ? v11 : 0xE700000000000000;
      if (v7 == v12 && v8 == v13)
      {
        break;
      }

      v14 = sub_2528C1060();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v16;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252789284(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x6D7575636176;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE300000000000000;
          v8 = 7368557;
          break;
        case 2:
          v8 = 0x68546D7575636176;
          v7 = 0xED0000706F4D6E65;
          break;
        case 3:
          v8 = 0x61656C4370656564;
          v7 = 0xE90000000000006ELL;
          break;
        case 4:
          v7 = 0xE400000000000000;
          v8 = 1869903201;
          break;
        case 5:
          v7 = 0xE500000000000000;
          v8 = 0x7465697571;
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x6B63697571;
          break;
        case 7:
          v7 = 0xE800000000000000;
          v8 = 0x6573696F4E776F6CLL;
          break;
        case 8:
          v7 = 0xE900000000000079;
          v8 = 0x6772656E45776F6CLL;
          break;
        case 9:
          v7 = 0xE800000000000000;
          v8 = 0x6E6F697461636176;
          break;
        case 0xA:
          v7 = 0xE500000000000000;
          v8 = 0x746867696ELL;
          break;
        case 0xB:
          v7 = 0xE300000000000000;
          v8 = 7954788;
          break;
        case 0xC:
          v7 = 0xE300000000000000;
          v8 = 7235949;
          break;
        case 0xD:
          v7 = 0xE300000000000000;
          v8 = 7889261;
          break;
        default:
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x6D7575636176;
      switch(a1)
      {
        case 1:
          v9 = 0xE300000000000000;
          if (v8 == 7368557)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v9 = 0xED0000706F4D6E65;
          if (v8 != 0x68546D7575636176)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v9 = 0xE90000000000006ELL;
          if (v8 != 0x61656C4370656564)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v9 = 0xE400000000000000;
          if (v8 != 1869903201)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v9 = 0xE500000000000000;
          if (v8 != 0x7465697571)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          v9 = 0xE500000000000000;
          if (v8 != 0x6B63697571)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v9 = 0xE800000000000000;
          if (v8 != 0x6573696F4E776F6CLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v9 = 0xE900000000000079;
          if (v8 != 0x6772656E45776F6CLL)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v9 = 0xE800000000000000;
          if (v8 != 0x6E6F697461636176)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v9 = 0xE500000000000000;
          v10 = 0x746867696ELL;
          goto LABEL_41;
        case 11:
          v9 = 0xE300000000000000;
          if (v8 != 7954788)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v9 = 0xE300000000000000;
          if (v8 != 7235949)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v9 = 0xE300000000000000;
          if (v8 != 7889261)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v10)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_43:
          v11 = sub_2528C1060();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_252789660(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE600000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 0x656D75736572;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 0x6C65636E6163;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xE500000000000000;
            if (v8 != 0x6573756170)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x6573756170;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x656D75736572;
      }

      else
      {
        v10 = 0x6C65636E6163;
      }

      v11 = 0xE600000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = sub_2528C1060();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2527897D8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x646570706F7473;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x676E696E6E7572;
          break;
        case 2:
          v7 = 0xE600000000000000;
          v8 = 0x646573756170;
          break;
        case 3:
          v7 = 0xE500000000000000;
          v8 = 0x726F727265;
          break;
        case 4:
          v8 = 0x43676E696B656573;
          v7 = 0xEE00726567726168;
          break;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x676E696772616863;
          break;
        case 6:
          v7 = 0xE600000000000000;
          v8 = 0x64656B636F64;
          break;
        case 7:
          v8 = 0x676E697974706D65;
          v7 = 0xEF6E694274737544;
          break;
        case 8:
          v8 = 0x676E696E61656C63;
          v7 = 0xEB00000000706F4DLL;
          break;
        case 9:
          v8 = 0xD000000000000010;
          v7 = 0x80000002528E4E10;
          break;
        case 0xA:
          v8 = 0x676E697461647075;
          v7 = 0xEC0000007370614DLL;
          break;
        case 0xB:
          v7 = 0xE500000000000000;
          v8 = 0x6B63757473;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4E40;
          break;
        case 0xD:
          v8 = 0x4D6E694274737564;
          v7 = 0xEE00676E69737369;
          break;
        case 0xE:
          v8 = 0x466E694274737564;
          v7 = 0xEB000000006C6C75;
          break;
        case 0xF:
          v8 = 0xD000000000000010;
          v7 = 0x80000002528E4E80;
          break;
        case 0x10:
          v8 = 0x6E61547265746177;
          v7 = 0xEE007974706D456BLL;
          break;
        case 0x11:
          v8 = 0xD000000000000010;
          v7 = 0x80000002528E4EA0;
          break;
        case 0x12:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4EC0;
          break;
        case 0x13:
          v8 = 0x6574746142776F6CLL;
          v7 = 0xEA00000000007972;
          break;
        case 0x14:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4EE0;
          break;
        case 0x15:
          v8 = 0xD000000000000012;
          v7 = 0x80000002528E4F00;
          break;
        case 0x16:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4F20;
          break;
        case 0x17:
          v8 = 0x614A736C65656877;
          v7 = 0xEC00000064656D6DLL;
          break;
        case 0x18:
          v8 = 0x6D614A6873757262;
          v7 = 0xEB0000000064656DLL;
          break;
        case 0x19:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4F50;
          break;
        case 0x1A:
          v8 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x646570706F7473;
      switch(a1)
      {
        case 1:
          if (v8 == 0x676E696E6E7572)
          {
            goto LABEL_79;
          }

          goto LABEL_80;
        case 2:
          v9 = 0xE600000000000000;
          v15 = 1937072496;
          goto LABEL_64;
        case 3:
          v9 = 0xE500000000000000;
          if (v8 != 0x726F727265)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 4:
          v11 = 0x43676E696B656573;
          v12 = 0x726567726168;
          goto LABEL_61;
        case 5:
          v9 = 0xE800000000000000;
          if (v8 != 0x676E696772616863)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 6:
          v9 = 0xE600000000000000;
          v15 = 1801678692;
LABEL_64:
          if (v8 != (v15 & 0xFFFF0000FFFFFFFFLL | 0x646500000000))
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 7:
          v9 = 0xEF6E694274737544;
          if (v8 != 0x676E697974706D65)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 8:
          v13 = 0x676E696E61656C63;
          v14 = 7368525;
          goto LABEL_71;
        case 9:
          v9 = 0x80000002528E4E10;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 10:
          v9 = 0xEC0000007370614DLL;
          if (v8 != 0x676E697461647075)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 11:
          v9 = 0xE500000000000000;
          if (v8 != 0x6B63757473)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 12:
          v9 = 0x80000002528E4E40;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 13:
          v11 = 0x4D6E694274737564;
          v12 = 0x676E69737369;
          goto LABEL_61;
        case 14:
          v13 = 0x466E694274737564;
          v14 = 7105653;
          goto LABEL_71;
        case 15:
          v9 = 0x80000002528E4E80;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 16:
          v11 = 0x6E61547265746177;
          v12 = 0x7974706D456BLL;
LABEL_61:
          v9 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v11)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 17:
          v9 = 0x80000002528E4EA0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 18:
          v9 = 0x80000002528E4EC0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 19:
          v9 = 0xEA00000000007972;
          if (v8 != 0x6574746142776F6CLL)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 20:
          v9 = 0x80000002528E4EE0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 21:
          v9 = 0x80000002528E4F00;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 22:
          v9 = 0x80000002528E4F20;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 23:
          v10 = 0x614A736C65656877;
          v9 = 0xEC00000064656D6DLL;
          goto LABEL_78;
        case 24:
          v13 = 0x6D614A6873757262;
          v14 = 6579565;
LABEL_71:
          v9 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v13)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 25:
          v9 = 0x80000002528E4F50;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 26:
          if (v8 != 0x6E776F6E6B6E75)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        default:
LABEL_78:
          if (v8 != v10)
          {
            goto LABEL_80;
          }

LABEL_79:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_80:
          v16 = sub_2528C1060();

          if (v16)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_252789F0C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE900000000000064;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 1701670760;
        }

        else
        {
          v8 = 6710895;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE400000000000000;
        }

        else
        {
          v9 = 0xE300000000000000;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE400000000000000;
        v8 = 2036430689;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x746867696ELL;
        }

        else
        {
          v8 = 0x6572656767697274;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE900000000000064;
        }
      }

      if (v6 == 3)
      {
        v10 = 0x746867696ELL;
      }

      else
      {
        v10 = 0x6572656767697274;
      }

      if (v6 == 3)
      {
        v5 = 0xE500000000000000;
      }

      if (v6 == 2)
      {
        v10 = 2036430689;
        v5 = 0xE400000000000000;
      }

      v11 = v6 ? 1701670760 : 6710895;
      v12 = v6 ? 0xE400000000000000 : 0xE300000000000000;
      v13 = v6 <= 1 ? v11 : v10;
      v14 = v6 <= 1 ? v12 : v5;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_2528C1060();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE900000000000064;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278A0E0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
          v8 = 1952540008;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 1819242339;
          }

          else
          {
            v8 = 1869903201;
          }

          v9 = 0xE400000000000000;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 6710895;
        }

        else
        {
          v8 = 28271;
        }

        if (v7 == 1)
        {
          v9 = 0xE300000000000000;
        }

        else
        {
          v9 = 0xE200000000000000;
        }
      }

      else
      {
        v9 = 0xE400000000000000;
        v8 = 1701736302;
      }

      v10 = 1869903201;
      if (v6 == 4)
      {
        v10 = 1819242339;
      }

      if (v6 == 3)
      {
        v10 = 1952540008;
      }

      v11 = 6710895;
      if (v6 != 1)
      {
        v11 = 28271;
      }

      v12 = 0xE300000000000000;
      if (v6 != 1)
      {
        v12 = 0xE200000000000000;
      }

      if (!v6)
      {
        v11 = 1701736302;
        v12 = 0xE400000000000000;
      }

      v13 = v6 <= 2 ? v11 : v10;
      v14 = v6 <= 2 ? v12 : 0xE400000000000000;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_2528C1060();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278A2B4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x6964696D75686564;
          v9 = 0xEA00000000007966;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 1869903201;
          }

          else
          {
            v8 = 1701736302;
          }

          v9 = 0xE400000000000000;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 28271;
        }

        else
        {
          v8 = 0x79666964696D7568;
        }

        if (v7 == 1)
        {
          v9 = 0xE200000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      else
      {
        v9 = 0xE300000000000000;
        v8 = 6710895;
      }

      v10 = 1869903201;
      if (v6 != 4)
      {
        v10 = 1701736302;
      }

      v11 = 0xE400000000000000;
      if (v6 == 3)
      {
        v10 = 0x6964696D75686564;
        v11 = 0xEA00000000007966;
      }

      v12 = 0x79666964696D7568;
      if (v6 == 1)
      {
        v12 = 28271;
      }

      v13 = 0xE200000000000000;
      if (v6 != 1)
      {
        v13 = 0xE800000000000000;
      }

      if (!v6)
      {
        v12 = 6710895;
        v13 = 0xE300000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_2528C1060();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278A4B8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x7369776B636F6C63;
    }

    if (a1)
    {
      v7 = 0x80000002528E4FB0;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000010 : 0x7369776B636F6C63;
      v9 = *(*(v2 + 48) + v4) ? 0x80000002528E4FB0 : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278A5FC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6573616572636564;
    }

    else
    {
      v6 = 0x6573616572636E69;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x6573616572636564 : 0x6573616572636E69;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_2528C1060();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_25278A6F8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000726569;
      v8 = 0x6669727550726961;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000010;
          v7 = 0x80000002528E4FF0;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x5654656C707061;
          break;
        case 3:
          v7 = 0xE600000000000000;
          v8 = 0x6172656D6163;
          break;
        case 4:
          v8 = 0xD000000000000013;
          v7 = 0x80000002528E5010;
          break;
        case 5:
          v8 = 0xD000000000000014;
          v7 = 0x80000002528E5030;
          break;
        case 6:
          v8 = 0x53746361746E6F63;
          v7 = 0xED0000726F736E65;
          break;
        case 7:
          v7 = 0xE400000000000000;
          v8 = 1919905636;
          break;
        case 8:
          v7 = 0xE300000000000000;
          v8 = 7233894;
          break;
        case 9:
          v7 = 0xE600000000000000;
          v8 = 0x746563756166;
          break;
        case 0xA:
          v8 = 0x6F44656761726167;
          goto LABEL_28;
        case 0xB:
          v8 = 0x6F43726574616568;
          v7 = 0xEC00000072656C6FLL;
          break;
        case 0xC:
          v8 = 0xD000000000000016;
          v7 = 0x80000002528E5080;
          break;
        case 0xD:
          v8 = 0x79746964696D7568;
          v7 = 0xEE00726F736E6553;
          break;
        case 0xE:
          v8 = 0x736E65536B61656CLL;
LABEL_28:
          v7 = 0xEA0000000000726FLL;
          break;
        case 0xF:
          v8 = 0x6C7562746867696CLL;
          v7 = 0xE900000000000062;
          break;
        case 0x10:
          v9 = 0x53746867696CLL;
          goto LABEL_14;
        case 0x11:
          v7 = 0xE400000000000000;
          v8 = 1801678700;
          break;
        case 0x12:
          v8 = 0x65536E6F69746F6DLL;
          v7 = 0xEC000000726F736ELL;
          break;
        case 0x13:
          v8 = 0x636E61707563636FLL;
          v7 = 0xEF726F736E655379;
          break;
        case 0x14:
          v7 = 0xE600000000000000;
          v8 = 0x74656C74756FLL;
          break;
        case 0x15:
          v8 = 0xD000000000000012;
          v7 = 0x80000002528E50F0;
          break;
        case 0x16:
          v8 = 0x7974697275636573;
          v7 = 0xEE006D6574737953;
          break;
        case 0x17:
          v7 = 0xE600000000000000;
          v8 = 0x7265776F6873;
          break;
        case 0x18:
          v9 = 0x53656B6F6D73;
LABEL_14:
          v8 = v9 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
          v7 = 0xEB00000000726F73;
          break;
        case 0x19:
          v8 = 0x656C6B6E69727073;
          v7 = 0xE900000000000072;
          break;
        case 0x1A:
          v7 = 0xE600000000000000;
          v8 = 0x686374697773;
          break;
        case 0x1B:
          v8 = 0x69736976656C6574;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 0x1C:
          v8 = 0xD000000000000011;
          v7 = 0x80000002528E5150;
          break;
        case 0x1D:
          v8 = 0x74736F6D72656874;
          v7 = 0xEA00000000007461;
          break;
        case 0x1E:
          v7 = 0xE500000000000000;
          v8 = 0x65766C6176;
          break;
        case 0x1F:
          v7 = 0xE600000000000000;
          v8 = 0x776F646E6977;
          break;
        case 0x20:
          v8 = 0x6F43776F646E6977;
          v7 = 0xEE00676E69726576;
          break;
        default:
          break;
      }

      v10 = 0x6669727550726961;
      v11 = 0xEB00000000726569;
      switch(a1)
      {
        case 1:
          v11 = 0x80000002528E4FF0;
          if (v8 == 0xD000000000000010)
          {
            goto LABEL_100;
          }

          goto LABEL_101;
        case 2:
          v11 = 0xE700000000000000;
          if (v8 != 0x5654656C707061)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 3:
          v11 = 0xE600000000000000;
          if (v8 != 0x6172656D6163)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 4:
          v11 = 0x80000002528E5010;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 5:
          v11 = 0x80000002528E5030;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 6:
          v11 = 0xED0000726F736E65;
          if (v8 != 0x53746361746E6F63)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 7:
          v11 = 0xE400000000000000;
          if (v8 != 1919905636)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 8:
          v11 = 0xE300000000000000;
          if (v8 != 7233894)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 9:
          v11 = 0xE600000000000000;
          v16 = 1668637030;
          goto LABEL_69;
        case 10:
          v13 = 0x6F44656761726167;
          goto LABEL_82;
        case 11:
          v14 = 0x6F43726574616568;
          v15 = 1919249519;
          goto LABEL_79;
        case 12:
          v11 = 0x80000002528E5080;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 13:
          v17 = 0x79746964696D7568;
          v18 = 0x726F736E6553;
          goto LABEL_90;
        case 14:
          v13 = 0x736E65536B61656CLL;
LABEL_82:
          v11 = 0xEA0000000000726FLL;
          if (v8 != v13)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 15:
          v11 = 0xE900000000000062;
          if (v8 != 0x6C7562746867696CLL)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 16:
          v12 = 0x53746867696CLL;
          goto LABEL_54;
        case 17:
          v11 = 0xE400000000000000;
          if (v8 != 1801678700)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 18:
          v14 = 0x65536E6F69746F6DLL;
          v15 = 1919906670;
LABEL_79:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v14)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 19:
          v11 = 0xEF726F736E655379;
          if (v8 != 0x636E61707563636FLL)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 20:
          v11 = 0xE600000000000000;
          v16 = 1819571567;
LABEL_69:
          if (v8 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x746500000000))
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 21:
          v11 = 0x80000002528E50F0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 22:
          v17 = 0x7974697275636573;
          v18 = 0x6D6574737953;
          goto LABEL_90;
        case 23:
          v11 = 0xE600000000000000;
          if (v8 != 0x7265776F6873)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 24:
          v12 = 0x53656B6F6D73;
LABEL_54:
          v11 = 0xEB00000000726F73;
          if (v8 != (v12 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000))
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 25:
          v11 = 0xE900000000000072;
          if (v8 != 0x656C6B6E69727073)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 26:
          v11 = 0xE600000000000000;
          if (v8 != 0x686374697773)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 27:
          v11 = 0xEA00000000006E6FLL;
          if (v8 != 0x69736976656C6574)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 28:
          v11 = 0x80000002528E5150;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 29:
          v10 = 0x74736F6D72656874;
          v11 = 0xEA00000000007461;
          goto LABEL_99;
        case 30:
          v11 = 0xE500000000000000;
          if (v8 != 0x65766C6176)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 31:
          v11 = 0xE600000000000000;
          if (v8 != 0x776F646E6977)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        case 32:
          v17 = 0x6F43776F646E6977;
          v18 = 0x676E69726576;
LABEL_90:
          v11 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v17)
          {
            goto LABEL_101;
          }

          goto LABEL_100;
        default:
LABEL_99:
          if (v8 != v10)
          {
            goto LABEL_101;
          }

LABEL_100:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_101:
          v19 = sub_2528C1060();

          if (v19)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_25278AFB0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
          v8 = 1701670760;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 1836019570;
          }

          else
          {
            v8 = 1701736314;
          }

          v9 = 0xE400000000000000;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x7954656369766564;
        }

        else
        {
          v8 = 0x70756F7267;
        }

        if (v7 == 1)
        {
          v9 = 0xEA00000000006570;
        }

        else
        {
          v9 = 0xE500000000000000;
        }
      }

      else
      {
        v8 = 0x614E656369766564;
        v9 = 0xEA0000000000656DLL;
      }

      v10 = 1836019570;
      if (v6 != 4)
      {
        v10 = 1701736314;
      }

      if (v6 == 3)
      {
        v10 = 1701670760;
      }

      v11 = 0xEA00000000006570;
      v12 = 0x7954656369766564;
      if (v6 != 1)
      {
        v12 = 0x70756F7267;
        v11 = 0xE500000000000000;
      }

      if (!v6)
      {
        v12 = 0x614E656369766564;
        v11 = 0xEA0000000000656DLL;
      }

      v13 = v6 <= 2 ? v12 : v10;
      v14 = v6 <= 2 ? v11 : 0xE400000000000000;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_2528C1060();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278B1C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 6449010;
    }

    if (a1)
    {
      v7 = 0x80000002528E51C0;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000010 : 6449010;
      v9 = *(*(v2 + 48) + v4) ? 0x80000002528E51C0 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278B2FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25272BFF4(0, &qword_27F4FD298, 0x277CD1970);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2528C0D60();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25278B3D0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v19 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v9 = "17-A590-755E1AAC02AE";
          }

          else
          {
            v9 = "73-8FBD-0E8978A33403";
          }
        }

        else if (v6 == 4)
        {
          v9 = "60-AD68-D91053B75F44";
        }

        else
        {
          v9 = "7E-BE63-1D00B1500545";
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = "73-A058-C5E64BC487B2";
        }

        else
        {
          v7 = "CE-986D-63B28F62C9E3";
        }

        if (*(*(v19 + 48) + v4))
        {
          v8 = "13-AA62-01754F256DD5";
        }

        else
        {
          v8 = "ult";
        }

        if (*(*(v19 + 48) + v4) <= 1u)
        {
          v9 = v8;
        }

        else
        {
          v9 = v7;
        }
      }

      v10 = v9 | 0x8000000000000000;
      v11 = "17-A590-755E1AAC02AE";
      if (v5 != 6)
      {
        v11 = "73-8FBD-0E8978A33403";
      }

      v12 = "60-AD68-D91053B75F44";
      if (v5 != 4)
      {
        v12 = "7E-BE63-1D00B1500545";
      }

      if (v5 <= 5)
      {
        v11 = v12;
      }

      if (v5 == 2)
      {
        v13 = "73-A058-C5E64BC487B2";
      }

      else
      {
        v13 = "CE-986D-63B28F62C9E3";
      }

      if (v5)
      {
        v14 = "13-AA62-01754F256DD5";
      }

      else
      {
        v14 = "ult";
      }

      if (v5 <= 1)
      {
        v13 = v14;
      }

      if (v5 <= 3)
      {
        v11 = v13;
      }

      if (v10 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v15 = sub_2528C1060();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_25278B5E8(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_25278B62C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2528BF9D0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25278B6E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DeviceEntity(0);
  result = sub_252791C14(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DeviceEntity);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_25278B798(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_252712E3C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_25278B804(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2528BFB20();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  result = sub_25274AA0C(a3, v10 + *(*(v11 - 8) + 72) * a1, &qword_27F4FD1F8, &unk_2528CDFF0);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_25278B8FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2528BECF0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_25278B9B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_2528C0260();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_25278BA60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2528BF9D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_252785D14(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2527E1078();
      goto LABEL_7;
    }

    sub_2527DDCC4(v17, a3 & 1);
    v22 = sub_252785D14(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25278B62C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2528C10A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_25278BC84(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v27 = a5;
  v7 = v5;
  v11 = type metadata accessor for DeviceEntity(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_252785BD4(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      a4();
      goto LABEL_7;
    }

    v27();
    v24 = sub_252785BD4(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_252791A94(a2, v13, type metadata accessor for DeviceEntity);
      return sub_25278B6E4(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_2528C10A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

void sub_25278BE40(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_252785B30(a2, a3);
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
      sub_2527E1A40();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2527DEB7C(v16, a4 & 1);
    v11 = sub_252785B30(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_2528C10A0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    sub_252712E3C(a1, v22);
  }

  else
  {
    sub_25278B798(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_25278BF90(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2528BFB20();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_252785DE8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2527E1BE4();
      goto LABEL_7;
    }

    sub_2527DEE34(v17, a3 & 1);
    v24 = sub_252785DE8(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25278B804(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2528C10A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0) - 8) + 72) * v14;

  return sub_252791AFC(a1, v22);
}

void sub_25278C184(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2528BECF0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_252785C40(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2527E24A4();
      goto LABEL_7;
    }

    sub_2527DFB3C(v17, a3 & 1);
    v23 = sub_252785C40(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_25278B8FC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_2528C10A0();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_25278C350(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_252715000(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2527E2718();
      goto LABEL_7;
    }

    sub_2527DFF18(v13, a3 & 1);
    v24 = sub_252715000(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2528C10A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_2528C0260();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_25278B9B4(v10, a2, a1, v16);
}

unint64_t sub_25278C4B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_252786CBC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2527E0264(v16, a4 & 1);
      result = sub_252786CBC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2528C10A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2527E2980();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_25278C618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBEE0, &qword_2528C25A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD270, &qword_2528C7D88);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FBEE0, &qword_2528C25A8);
      v11 = *v5;
      result = sub_2527857C4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_25278C800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBED0, &qword_2528C2598);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD268, &qword_2528C7D80);
    v7 = sub_2528C0F20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_2528BEA50();
    while (1)
    {
      sub_25272006C(v9, v5, &qword_27F4FBED0, &qword_2528C2598);
      v11 = *v5;
      result = sub_252785868(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_2528BE910();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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