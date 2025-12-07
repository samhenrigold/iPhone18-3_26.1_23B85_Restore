uint64_t sub_26833FB84(void *a1)
{
  v2 = sub_2683CAEA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 title];
  v7 = [v6 spokenPhrase];

  v8 = sub_2683CFA78();
  v10 = v9;

  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  sub_2683B9E1C();
  v13 = v12;
  if (v11)
  {
    v33 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
    sub_2681B4DEC(&qword_28024F9C0, &qword_280253390, &qword_2683E2550);
    v14 = sub_2683CFA38();
    v16 = v15;

    v33 = v14;
    v34 = v16;
    sub_2683CAE78();
    sub_26812A1AC();
    v17 = sub_2683CFFE8();
    v19 = v18;
    (*(v3 + 8))(v5, v2);

    v20 = [a1 title];
    v21 = [v20 spokenPhrase];

    v22 = sub_2683CFA78();
    goto LABEL_9;
  }

  v23 = *(v12 + 16);
  if (v23 < 2)
  {
    if (!v23)
    {

      return 0;
    }

    v22 = *(v12 + 32);

LABEL_15:

    return v22;
  }

  v33 = sub_268343134(1uLL, v23 + 1, v12);
  v34 = v24;
  v35 = v25;
  v36 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253398, &qword_2683F1D80);
  sub_2681B4DEC(&unk_2802533A0, &qword_280253398, &qword_2683F1D80);
  v27 = sub_2683CFA38();
  v29 = v28;
  swift_unknownObjectRelease();
  v33 = v27;
  v34 = v29;
  sub_2683CAE78();
  sub_26812A1AC();
  v17 = sub_2683CFFE8();
  v19 = v30;
  (*(v3 + 8))(v5, v2);

  if (*(v13 + 16))
  {
    v22 = *(v13 + 32);

LABEL_9:
    v32 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v32 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      return v22;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_26833FF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26833FF50);
}

uint64_t sub_26833FF50()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 56);
  OUTLINED_FUNCTION_107_2();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2683D1EC0;
  *(v5 + 32) = &unk_2683F1D68;
  *(v5 + 40) = v4;
  OUTLINED_FUNCTION_68_0();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *v2 = &unk_2683F1D70;
  v2[1] = v6;
  OUTLINED_FUNCTION_40();
  v10 = v7;

  v8 = v1;

  return v10();
}

uint64_t sub_268340060(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_268340088);
}

uint64_t sub_268340088()
{
  v1 = [*(v0 + 96) groupName];
  v2 = v1;
  v3 = &unk_2683F1C80;
  v4 = MEMORY[0x277D84F90];
  if (v1)
  {
    v5 = [v1 spokenPhrase];

    v6 = sub_2683CFA78();
    v8 = v7;

    OUTLINED_FUNCTION_37_4();
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = &unk_2878FD748;
    v9[5] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    OUTLINED_FUNCTION_37_4();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2683D1EC0;
    *(v10 + 32) = &unk_2683F1CB8;
    *(v10 + 40) = v9;
    OUTLINED_FUNCTION_68_0();
    v2 = swift_allocObject();
    v2[2] = v10;
    v3 = &unk_2683F1CC0;
  }

  v33 = v3;
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);

  v14 = [v12 title];
  v15 = [v14 spokenPhrase];

  v16 = sub_2683CFA78();
  v18 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280252FB0, &qword_2683F1C00);
  OUTLINED_FUNCTION_113_0();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2683D1EC0;
  v20 = v12;

  v21 = sub_2681D2C90();
  *(v19 + 56) = &type metadata for CasinoCommands.PunchoutToNotebookItem;
  *(v19 + 64) = &off_2879030B8;
  *(v19 + 32) = v21;
  *(v19 + 40) = v22;
  *(v19 + 48) = v23;
  OUTLINED_FUNCTION_42_13();
  v24 = swift_allocObject();
  *(v24 + 16) = v16;
  *(v24 + 24) = v18;
  *(v24 + 32) = 0;
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  *(v24 + 52) = 0;
  *(v24 + 56) = 0;
  *(v24 + 64) = 1;
  *(v24 + 72) = &unk_2878FD778;
  *(v24 + 80) = v19;

  v25 = [v20 tasks];
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v26 = sub_2683CFCA8();

  sub_268343204(v11, v0 + 16);
  OUTLINED_FUNCTION_166_1();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_12_26(v27);
  OUTLINED_FUNCTION_19_11();
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = MEMORY[0x277D84F90];
  v28[4] = sub_2683446A0;
  v28[5] = 0;
  v28[6] = &unk_2683F1C98;
  v28[7] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_166_1();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2683D1ED0;
  *(v29 + 32) = v33;
  *(v29 + 40) = v2;
  *(v29 + 48) = &unk_2683D6088;
  *(v29 + 56) = v24;
  *(v29 + 64) = &unk_2683F1CA8;
  *(v29 + 72) = v28;

  OUTLINED_FUNCTION_68_0();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *v13 = &unk_2683F1CB0;
  v13[1] = v30;
  OUTLINED_FUNCTION_7_4();

  return v31();
}

uint64_t sub_268340440(uint64_t a1, void *a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a3;
  v3[15] = *a2;
  return MEMORY[0x2822009F8](sub_268340468);
}

uint64_t sub_268340468()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280252FB0, &qword_2683F1C00);
  OUTLINED_FUNCTION_113_0();
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  v3 = v1;
  OUTLINED_FUNCTION_76_4();

  OUTLINED_FUNCTION_0_0();
  v4 = sub_2681D2F90();
  OUTLINED_FUNCTION_62_3(v4, v5, v6, &type metadata for CasinoCommands.PunchoutToNotebookItem);
  v7 = [v1 title];
  v8 = [v7 spokenPhrase];

  v9 = sub_2683CFA78();
  v11 = v10;
  v0[11] = v9;
  v0[12] = v10;

  v0[17] = v11;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_58_4(v12);

  return sub_26839C830();
}

uint64_t sub_2683405B4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  OUTLINED_FUNCTION_77_2(v5, v6);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2683406B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_12_2();
  if ([*(v12 + 120) taskType] == 2)
  {
    [*(v12 + 120) status];
  }

  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_113_0();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_68_3(v14);
  *(v15 + 56) = MEMORY[0x277D84F90];
  *(v15 + 64) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2683D1EC0;
  *(v16 + 32) = &unk_2683F1CD0;
  *(v16 + 40) = v10;
  OUTLINED_FUNCTION_68_0();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *v11 = &unk_2683F1CD8;
  v11[1] = v17;
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_64_4();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_2683407D4(uint64_t a1, void *a2, uint64_t a3)
{
  v3[13] = a1;
  v3[14] = a3;
  v3[15] = *a2;
  return MEMORY[0x2822009F8](sub_2683407FC);
}

uint64_t sub_2683407FC()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280252FB0, &qword_2683F1C00);
  OUTLINED_FUNCTION_113_0();
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  v3 = v1;
  OUTLINED_FUNCTION_76_4();

  OUTLINED_FUNCTION_0_0();
  v4 = sub_2681D2F90();
  OUTLINED_FUNCTION_62_3(v4, v5, v6, &type metadata for CasinoCommands.PunchoutToNotebookItem);
  v7 = [v1 title];
  v8 = [v7 spokenPhrase];

  v9 = sub_2683CFA78();
  v11 = v10;
  v0[11] = v9;
  v0[12] = v10;

  v0[17] = v11;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_58_4(v12);

  return sub_26839C830();
}

uint64_t sub_268340948()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  OUTLINED_FUNCTION_77_2(v5, v6);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_268340A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65_4();
  OUTLINED_FUNCTION_12_2();
  if ([*(v12 + 120) taskType] == 2)
  {
    [*(v12 + 120) status];
  }

  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_113_0();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_68_3(v14);
  *(v15 + 56) = MEMORY[0x277D84F90];
  *(v15 + 64) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2683D1EC0;
  *(v16 + 32) = &unk_2683F1C10;
  *(v16 + 40) = v10;
  OUTLINED_FUNCTION_68_0();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *v11 = &unk_2683F1C18;
  v11[1] = v17;
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_64_4();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_268340B68()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_40();

  return v1();
}

void sub_268340BD8()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253300, &qword_2683F1AC0);
  OUTLINED_FUNCTION_107_2();
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  v0[5] = *(v1 + 56);
  v3 = sub_2683CF258();
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    v7 = objc_allocWithZone(MEMORY[0x277D47750]);

    v8 = [v7 init];
    sub_2683431A0(v6, v5, v8);
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[3];
  *(v2 + 32) = v8;

  v0[2] = v2;
  v10 = *(v9 + 8);
  v0[6] = v10;
  v11 = [v10 notes];
  if (v11)
  {
    v12 = v11;
    sub_268129504(0, &qword_28024D350, 0x277CD3E00);
    sub_2683CFCA8();
  }

  v13 = sub_268229348();

  v14 = sub_268185F40();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 < 1)
  {
    v0[11] = v2;
    if (sub_26833DBA4() < 1)
    {
      v0[31] = v2;
      if (sub_26833DCC4() < 1)
      {
        v26 = *(v2 + 16);
        while (1)
        {
          if (!v26)
          {

            OUTLINED_FUNCTION_37();
            OUTLINED_FUNCTION_16_17();

            __asm { BRAA            X2, X16 }
          }

          OUTLINED_FUNCTION_71_2();
          if (v27)
          {
            break;
          }

          OUTLINED_FUNCTION_70_3();
          if (v13)
          {
            v28 = swift_unknownObjectRetain();
            MEMORY[0x26D616770](v28);
            OUTLINED_FUNCTION_79_4();
            if (v27)
            {
              sub_2683CFCD8();
            }

            sub_2683CFD08();
          }
        }

        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_4_45();
        v22 = swift_task_alloc();
        v23 = OUTLINED_FUNCTION_81_3(v22);
        *v23 = v24;
        OUTLINED_FUNCTION_2_47(v23);
        OUTLINED_FUNCTION_16_17();

        sub_26839C4D4();
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_45();
      v18 = swift_task_alloc();
      v19 = OUTLINED_FUNCTION_80_3(v18);
      *v19 = v20;
      OUTLINED_FUNCTION_26_4(v19);
      OUTLINED_FUNCTION_16_17();

      sub_26839C700();
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_45();
    v16 = swift_task_alloc();
    v0[7] = v16;
    *v16 = v0;
    OUTLINED_FUNCTION_26_4(v16);
    OUTLINED_FUNCTION_16_17();

    sub_26839C208();
  }
}

uint64_t sub_268340F30()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_33();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v5[8] = v1;

  if (v1)
  {
  }

  else
  {
    v5[9] = v0;
    v5[10] = v3;
  }

  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26834103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  sub_268129504(0, &qword_280253308, 0x277D47758);
  v14 = OUTLINED_FUNCTION_41_0();
  sub_268399170(v14, v15);
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_26_21();
  if (v17)
  {
LABEL_45:
    OUTLINED_FUNCTION_43_10(v16 > 1);
  }

  v18 = *(v12 + 48);
  OUTLINED_FUNCTION_0_0();
  sub_2683CFD08();
  v19 = *(v12 + 16);
  v20 = [v18 notes];
  if (v20)
  {
    v21 = v20;
    sub_268129504(0, &qword_28024D350, 0x277CD3E00);
    OUTLINED_FUNCTION_56_1();
    v22 = sub_2683CFCA8();
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v23 = [*(v12 + 48) notes];
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v25 = v23;
    sub_268129504(0, &qword_28024D350, 0x277CD3E00);
    OUTLINED_FUNCTION_56_1();
    sub_2683CFCA8();
  }

  v26 = sub_268229348();

  v27 = sub_268185F40();
  if (v27 >= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  if (v28 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_268229354();
    sub_268229354();
    if ((v22 & 0xC000000000000001) != 0)
    {

      if (v28)
      {
        sub_268129504(0, &qword_28024D350, 0x277CD3E00);
        v29 = 0;
        do
        {
          v26 = v29 + 1;
          OUTLINED_FUNCTION_73_4();
          sub_2683D0198();
          v29 = v26;
        }

        while (v28 != v26);
      }
    }

    else
    {
    }

    if (!(v22 >> 62))
    {
      v26 = 0;
      v13 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
      goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_39_14();
  OUTLINED_FUNCTION_60_3();
  v28 = v28 >> 1;
LABEL_19:
  if (v28 != v26)
  {
    result = sub_268129504(0, &qword_280253318, 0x277D47768);
    v31 = v28 - v26;
    if (v28 <= v26)
    {
      __break(1u);
      return result;
    }

    v32 = (v13 + 8 * v26);
    do
    {
      v33 = *(v12 + 40);
      v22 = *v32;

      sub_268210CA0(v22, v33);
      MEMORY[0x26D616770]();
      v34 = *(v12 + 16);
      v13 = *(v34 + 16);
      if (v13 >= *(v34 + 24) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();

      ++v32;
      --v31;
    }

    while (v31);
    v19 = *(v12 + 16);
  }

  swift_unknownObjectRelease();
  *(v12 + 88) = v19;
  if (sub_26833DBA4() < 1)
  {
    *(v12 + 248) = v19;
    if (sub_26833DCC4() < 1)
    {
      v43 = *(v19 + 16);
      while (v43)
      {
        v16 = *(v19 + 16);
        if (!v16)
        {
          __break(1u);
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_70_3();
        if (v22)
        {
          v44 = swift_unknownObjectRetain();
          MEMORY[0x26D616770](v44);
          OUTLINED_FUNCTION_75_3();
          if (v17)
          {
            sub_2683CFCD8();
          }

          OUTLINED_FUNCTION_78();
          sub_2683CFD08();
        }
      }

      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_77();

      return v47(v45, v46, v47, v48, v49, v50, v51, v52, v24, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_4_45();
      v39 = swift_task_alloc();
      v40 = OUTLINED_FUNCTION_81_3(v39);
      *v40 = v41;
      OUTLINED_FUNCTION_2_47(v40);
      OUTLINED_FUNCTION_77();

      return sub_26839C4D4();
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_45();
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_80_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_26_4(v36);
    OUTLINED_FUNCTION_77();

    return sub_26839C700();
  }
}

uint64_t sub_26834149C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_33();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v5[13] = v1;

  if (v1)
  {
  }

  else
  {
    v5[14] = v0;
    v5[15] = v3;
  }

  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2683415A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v12[16] = sub_268129504(0, &qword_280253308, 0x277D47758);
  v16 = OUTLINED_FUNCTION_41_0();
  sub_268399170(v16, v17);
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_26_21();
  if (v19)
  {
LABEL_44:
    OUTLINED_FUNCTION_43_10(v18 > 1);
  }

  v20 = v12[6];
  OUTLINED_FUNCTION_0_0();
  sub_2683CFD08();
  v21 = v12[2];
  v22 = [v20 taskLists];
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v24 = v22;
    sub_268129504(0, &qword_280253320, 0x277CD4228);
    OUTLINED_FUNCTION_56_1();
    v25 = sub_2683CFCA8();
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v26 = v12[3];
  if ((sub_26833DBA4() & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_47_0();
    sub_268229354();
    sub_268229354();
    if ((v25 & 0xC000000000000001) != 0)
    {

      if (v26)
      {
        v13 = sub_268129504(0, &qword_280253320, 0x277CD4228);
        v27 = 0;
        do
        {
          v28 = v27 + 1;
          OUTLINED_FUNCTION_73_4();
          sub_2683D0198();
          v27 = v28;
        }

        while (v26 != v28);
      }
    }

    else
    {
    }

    v18 = v25 >> 62;
    if (!(v25 >> 62))
    {
      v14 = 0;
      v13 = v25 & 0xFFFFFFFFFFFFFF8;
      v15 = (v25 & 0xFFFFFFFFFFFFFF8) + 32;
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_39_14();
  OUTLINED_FUNCTION_60_3();
  v26 = v26 >> 1;
LABEL_14:
  v12[18] = v15;
  v12[19] = v26;
  v12[17] = v13;
  if (v14 == v26)
  {
LABEL_28:
    swift_unknownObjectRelease();
    v12[31] = v21;
    if (sub_26833DCC4() < 1)
    {
      v13 = 0;
      v14 = *(v21 + 16);
      while (v14)
      {
        v18 = *(v21 + 16);
        if (!v18)
        {
          __break(1u);
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_70_3();
        if (v25)
        {
          v53 = swift_unknownObjectRetain();
          MEMORY[0x26D616770](v53);
          OUTLINED_FUNCTION_75_3();
          if (v19)
          {
            sub_2683CFCD8();
          }

          OUTLINED_FUNCTION_78();
          sub_2683CFD08();
        }
      }

      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_77();

      return v56(v54, v55, v56, v57, v58, v59, v60, v61, v23, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_4_45();
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_81_3(v49);
      *v50 = v51;
      OUTLINED_FUNCTION_2_47(v50);
      OUTLINED_FUNCTION_77();

      return sub_26839C4D4();
    }
  }

  else
  {
    v25 = &qword_280253310;
    v13 = 0x277CD4220uLL;
    while (1)
    {
      v12[20] = v14;
      if (v14 >= v26)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v29 = *(v12[18] + 8 * v14);
      v12[21] = v29;
      v30 = v29;
      v31 = [v30 title];
      v32 = [v31 spokenPhrase];

      v33 = sub_2683CFA78();
      v35 = v34;

      sub_268399170(v33, v35);
      MEMORY[0x26D616770]();
      if (*(v12[2] + 16) >= *(v12[2] + 24) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
      v21 = v12[2];
      v36 = [v30 tasks];
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_73_4();
      sub_268129504(v37, v38, v39);
      OUTLINED_FUNCTION_56_1();
      v12[22] = sub_2683CFCA8();

      v40 = sub_2683ABE58();
      v12[23] = v40;
      v12[24] = v21;
      if (v40)
      {
        break;
      }

      v42 = v12[20];
      v41 = v12[21];
      v15 = v12[19];

      if (v42 + 1 == v15)
      {
        v23 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }

      v26 = v12[19];
      v18 = v12[20];
      v14 = v18 + 1;
    }

    v43 = v12[22] & 0xC000000000000001;
    sub_2683ABE60();
    v44 = v12[22];
    if (v43)
    {
      v45 = MEMORY[0x26D616C90](0, v44);
    }

    else
    {
      v45 = *(v44 + 32);
    }

    v12[25] = v45;
    v12[26] = 1;
    __swift_project_boxed_opaque_existential_1((v12[3] + 16), *(v12[3] + 40));
    v46 = swift_task_alloc();
    v12[27] = v46;
    *v46 = v12;
    OUTLINED_FUNCTION_26_4(v46);
    OUTLINED_FUNCTION_77();

    return sub_26839C830();
  }
}

uint64_t sub_268341A90()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_33();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v5[28] = v1;

  if (v1)
  {
  }

  else
  {
    v5[29] = v0;
    v5[30] = v3;
  }

  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v9);
}

id sub_268341BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v13 = v12[25];
  sub_268129504(0, &qword_280253318, 0x277D47768);

  OUTLINED_FUNCTION_86_5(v13);
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_26_21();
  if (v15)
  {
LABEL_31:
    OUTLINED_FUNCTION_43_10(v14 > 1);
  }

  v16 = v12[25];
  OUTLINED_FUNCTION_0_0();
  sub_2683CFD08();
  v17 = v12[2];

  v18 = v12[26];
  for (i = v12[23]; ; v12[23] = i)
  {
    v12[24] = v17;
    if (v18 != i)
    {
      v35 = v12[22] & 0xC000000000000001;
      sub_2683ABE60();
      v36 = v12[22];
      if (v35)
      {
        result = MEMORY[0x26D616C90](v18, v36);
      }

      else
      {
        result = *(v36 + 8 * v18 + 32);
      }

      v12[25] = result;
      v12[26] = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_4_45();
        v38 = swift_task_alloc();
        v12[27] = v38;
        *v38 = v12;
        v38[1] = sub_268341A90;
        OUTLINED_FUNCTION_14_19();
        OUTLINED_FUNCTION_77();

        return sub_26839C830();
      }

      return result;
    }

    v21 = v12[20];
    v20 = v12[21];
    v22 = v12[19];

    if (v21 + 1 == v22)
    {
      break;
    }

    v23 = v12[19];
    v14 = v12[20] + 1;
    v12[20] = v14;
    if (v14 >= v23)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v24 = *(v12[18] + 8 * v14);
    v12[21] = v24;
    v25 = v24;
    v26 = [v25 title];
    v27 = [v26 spokenPhrase];

    v28 = sub_2683CFA78();
    v30 = v29;

    sub_268399170(v28, v30);
    OUTLINED_FUNCTION_63_5();
    if (*(v12[2] + 16) >= *(v12[2] + 24) >> 1)
    {
      sub_2683CFCD8();
    }

    sub_2683CFD08();
    v17 = v12[2];
    v31 = [v25 tasks];
    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_55_1();
    sub_268129504(v32, v33, v34);
    OUTLINED_FUNCTION_56_1();
    v12[22] = sub_2683CFCA8();

    i = sub_2683ABE58();
    v18 = 0;
  }

  swift_unknownObjectRelease();
  v12[31] = v17;
  if (sub_26833DCC4() < 1)
  {
    v44 = 0;
    v56 = MEMORY[0x277D84F90];
    v45 = *(v17 + 16);
    while (v45 != v44)
    {
      OUTLINED_FUNCTION_71_2();
      if (v15)
      {
        goto LABEL_30;
      }

      if (*(v17 + 8 * v44++ + 32))
      {
        v47 = swift_unknownObjectRetain();
        MEMORY[0x26D616770](v47);
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        sub_2683CFD08();
      }
    }

    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_77();

    return v50(v48, v49, v50, v51, v52, v53, v54, v55, v56, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_4_45();
    v40 = swift_task_alloc();
    v41 = OUTLINED_FUNCTION_81_3(v40);
    *v41 = v42;
    OUTLINED_FUNCTION_2_47(v41);
    OUTLINED_FUNCTION_77();

    return sub_26839C4D4();
  }
}

uint64_t sub_268341F84()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 200);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268341FF4()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_33();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v5[33] = v1;

  if (v1)
  {
  }

  else
  {
    v5[34] = v0;
    v5[35] = v3;
  }

  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_268342100()
{
  OUTLINED_FUNCTION_12_2();
  sub_268129504(0, &qword_280253308, 0x277D47758);
  v1 = OUTLINED_FUNCTION_41_0();
  sub_268399170(v1, v2);
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_26_21();
  if (v4)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v5 = v0[6];
    OUTLINED_FUNCTION_0_0();
    sub_2683CFD08();
    v6 = v0[2];
    v7 = [v5 tasks];
    if (v7)
    {
      v8 = v7;
      sub_268129504(0, &qword_280253310, 0x277CD4220);
      OUTLINED_FUNCTION_56_1();
      v9 = sub_2683CFCA8();
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v10 = v0[3];
    if ((sub_26833DCC4() & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_47_0();
      sub_268229354();
      sub_268229354();
      if ((v9 & 0xC000000000000001) != 0)
      {

        if (v10)
        {
          sub_268129504(0, &qword_280253310, 0x277CD4220);
          v11 = 0;
          do
          {
            v12 = v11 + 1;
            OUTLINED_FUNCTION_73_4();
            sub_2683D0198();
            v11 = v12;
          }

          while (v10 != v12);
        }
      }

      else
      {
      }

      if (!(v9 >> 62))
      {
        v13 = 0;
        v14 = v9 & 0xFFFFFFFFFFFFFF8;
        v15 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_14;
      }
    }

    v14 = OUTLINED_FUNCTION_39_14();
    v13 = v27;
    v10 = v28 >> 1;
LABEL_14:
    v0[37] = v15;
    v0[38] = v10;
    v0[36] = v14;
    swift_unknownObjectRetain();

    v0[39] = v13;
    v0[40] = v6;
    v17 = v0[38];
    if (v13 != v17)
    {
      break;
    }

    swift_unknownObjectRelease_n();
    v18 = *(v6 + 16);
    while (1)
    {
      if (!v18)
      {

        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_16_17();

        __asm { BRAA            X2, X16 }
      }

      OUTLINED_FUNCTION_71_2();
      if (v4)
      {
        break;
      }

      OUTLINED_FUNCTION_70_3();
      if (v9)
      {
        v19 = swift_unknownObjectRetain();
        MEMORY[0x26D616770](v19);
        OUTLINED_FUNCTION_79_4();
        if (v4)
        {
          sub_2683CFCD8();
        }

        sub_2683CFD08();
      }
    }

    __break(1u);
LABEL_31:
    OUTLINED_FUNCTION_43_10(v3 > 1);
  }

  if (v13 < v17)
  {
    v20 = v0[3];
    v21 = *(v0[37] + 8 * v13);
    v0[41] = v21;
    __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));
    v22 = v21;
    OUTLINED_FUNCTION_76_4();
    v23 = swift_task_alloc();
    v0[42] = v23;
    *v23 = v0;
    OUTLINED_FUNCTION_26_4(v23);
    OUTLINED_FUNCTION_16_17();

    return sub_26839C830();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268342428()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_33();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v5[43] = v1;

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v5[44] = v0;
    v5[45] = v3;
  }

  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v9);
}

void sub_268342540()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[41];
  sub_268129504(0, &qword_280253318, 0x277D47768);
  v2 = v1;

  OUTLINED_FUNCTION_86_5(v2);
  OUTLINED_FUNCTION_63_5();
  OUTLINED_FUNCTION_26_21();
  if (v4)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v5 = v0[41];
    OUTLINED_FUNCTION_0_0();
    sub_2683CFD08();
    v6 = v0[2];

    v7 = v0[38];
    v8 = v0[39] + 1;
    v0[39] = v8;
    v0[40] = v6;
    if (v8 != v7)
    {
      break;
    }

    swift_unknownObjectRelease_n();
    v9 = 0;
    v20 = MEMORY[0x277D84F90];
    v10 = *(v6 + 16);
    while (1)
    {
      if (v10 == v9)
      {

        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_16_17();

        __asm { BRAA            X2, X16 }
      }

      OUTLINED_FUNCTION_71_2();
      if (v4)
      {
        break;
      }

      if (*(v6 + 8 * v9++ + 32))
      {
        v12 = swift_unknownObjectRetain();
        MEMORY[0x26D616770](v12);
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        sub_2683CFD08();
      }
    }

    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_43_10(v3 > 1);
  }

  if (v8 < v7)
  {
    v13 = v0[3];
    v14 = *(v0[37] + 8 * v8);
    v0[41] = v14;
    __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
    v15 = v14;
    OUTLINED_FUNCTION_76_4();
    v16 = swift_task_alloc();
    v0[42] = v16;
    *v16 = v0;
    OUTLINED_FUNCTION_26_4(v16);
    OUTLINED_FUNCTION_16_17();

    sub_26839C830();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_268342770()
{
  OUTLINED_FUNCTION_14();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_40();

  return v1();
}

void sub_2683427EC()
{
  OUTLINED_FUNCTION_80();
  v51 = v0;
  v1 = sub_2683CF258();
  if (v2)
  {
    if (v1 == 0xD000000000000015 && v2 == 0x80000002683FCFF0)
    {
    }

    else
    {
      v4 = sub_2683D0598();

      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v19 = [*(v0[13] + 8) notes];
    if (v19)
    {
      v20 = v19;
      v21 = sub_268129504(0, &qword_28024D350, 0x277CD3E00);
      OUTLINED_FUNCTION_53_5(v21);
    }

    sub_268129504(0, &qword_280253340, 0x277D47600);
    v22 = OUTLINED_FUNCTION_56_1();
    v23 = sub_26836A8AC(v22);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v24 = sub_2683CF7E8();
    __swift_project_value_buffer(v24, qword_28027C958);
    v25 = v23;
    v26 = sub_2683CF7C8();
    v27 = sub_2683CFE98();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v50 = v29;
      *v28 = 136315138;
      v0[12] = [v25 dictionary];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253338, &qword_2683F1AD0);
LABEL_29:
      v42 = sub_2683CFAD8();
      v44 = sub_2681610A0(v42, v43, &v50);

      *(v28 + 4) = v44;
      _os_log_impl(&dword_2680EB000, v26, v27, "[SFNI Snippet] Making first party reminders snippet: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

LABEL_30:

    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_10_5();

    __asm { BRAA            X2, X16 }
  }

LABEL_7:
  v5 = sub_2683CF258();
  if (!v6)
  {
    goto LABEL_13;
  }

  if (v5 == 0xD000000000000013 && v6 == 0x80000002683FA8D0)
  {
  }

  else
  {
    v8 = sub_2683D0598();

    if ((v8 & 1) == 0)
    {
LABEL_13:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v9 = v0[13];
      v10 = sub_2683CF7E8();
      __swift_project_value_buffer(v10, qword_28027C958);
      sub_268343204(v9, (v0 + 2));
      v11 = sub_2683CF7C8();
      v12 = sub_2683CFE78();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v50 = v14;
        *v13 = 136315138;
        v0[10] = v0[9];
        sub_2683CF278();
        sub_26816EC88();

        v15 = sub_2683D0568();
        v17 = v16;
        sub_2681AC044((v0 + 2));

        v18 = sub_2681610A0(v15, v17, &v50);

        *(v13 + 4) = v18;
        _os_log_impl(&dword_2680EB000, v11, v12, "[SFNI Snippet] makeFirstPartyAppSnippet called, but %s is neither reminders nor notes, falling back to casino.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {

        sub_2681AC044((v0 + 2));
      }

      OUTLINED_FUNCTION_8_14(qword_2683D80F0);
      v47 = swift_task_alloc();
      v0[14] = v47;
      *v47 = v0;
      v47[1] = sub_268342DA4;
      OUTLINED_FUNCTION_10_5();

      __asm { BR              X0 }
    }
  }

  v30 = v0[13];
  v31 = *(v30 + 8);
  v32 = *v30;
  v33 = v31;
  v34 = sub_2683CF258();
  sub_26839F6D0(v34, v35);

  OUTLINED_FUNCTION_55_1();
  v39 = sub_26833C88C(v36, v37, v38);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v40 = sub_2683CF7E8();
  __swift_project_value_buffer(v40, qword_28027C958);
  v41 = v39;
  v26 = sub_2683CF7C8();
  v27 = sub_2683CFE98();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50 = v29;
    *v28 = 136315138;
    v0[11] = [v41 dictionary];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253338, &qword_2683F1AD0);
    goto LABEL_29;
  }

  goto LABEL_30;
}

uint64_t sub_268342DA4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_268342E9C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_268342F8C;

  return v4(v1 + 16);
}

uint64_t sub_268342F8C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268343088()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  *(v1 + 16) = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(&unk_2683F1D60, v1);
}

unint64_t sub_268343134(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_2683431A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setBundleId_];
}

uint64_t sub_26834323C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_4(v1);
  v3 = OUTLINED_FUNCTION_41_0();

  return sub_26833CE14(v3, v4);
}

uint64_t sub_2683432C8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 8);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_4(v3);
  v5 = OUTLINED_FUNCTION_41_0();

  return sub_26833D1D4(v5, v6, v1);
}

uint64_t sub_268343360()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_2683433F0()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268343480(uint64_t a1, const void *a2)
{
  memcpy((v2 + 16), a2, 0x48uLL);
  v4 = swift_task_alloc();
  *(v2 + 88) = v4;
  *v4 = v2;
  v4[1] = sub_2683446A8;

  return sub_26833D32C(a1);
}

uint64_t sub_268343524(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2681B4AA0;

  return sub_26833D3DC(a1, v4, v5, v6, v7);
}

uint64_t sub_2683435E0(uint64_t a1, const void *a2)
{
  memcpy((v2 + 16), a2, 0x48uLL);
  v4 = swift_task_alloc();
  *(v2 + 88) = v4;
  *v4 = v2;
  v4[1] = sub_268343684;

  return sub_26833D4B4(a1);
}

uint64_t sub_268343684()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_26834376C(uint64_t a1, const void *a2)
{
  memcpy((v2 + 16), a2, 0x48uLL);
  v4 = swift_task_alloc();
  *(v2 + 88) = v4;
  *v4 = v2;
  v4[1] = sub_2683446A8;

  return sub_26833D564(a1);
}

uint64_t sub_268343810(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2683446AC;

  return sub_26833D614(a1, v4, v5, v6);
}

uint64_t sub_2683438C0()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268343950()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_2683439E8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_36(v1);

  return sub_2683407D4(v3, v4, v5);
}

uint64_t sub_268343A78()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268343B08(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = a2[2];
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_2681B456C;

  return sub_26833D6E0(a1);
}

uint64_t sub_268343BB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = *(a2 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_2681B43DC;

  return sub_26833D790(a1);
}

uint64_t sub_268343C60()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268343CF0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_30(v1);

  return v4(v3);
}

uint64_t sub_268343D78()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_37();

  return v4(v0);
}

uint64_t objectdestroy_76Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  OUTLINED_FUNCTION_166_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268343EB0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_36(v1);

  return sub_268340060(v3, v4, v5);
}

uint64_t sub_268343F40()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268343FD0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15_30(v1);

  return v4(v3);
}

uint64_t sub_268344058()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_36(v1);

  return sub_268340440(v3, v4, v5);
}

uint64_t sub_2683440E8()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t objectdestroy_72Tm_0()
{

  OUTLINED_FUNCTION_37_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2683441C4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_36(v1);

  return sub_26833F828(v3, v4, v5);
}

uint64_t objectdestroy_80Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  OUTLINED_FUNCTION_42_13();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2683442A8()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_268344338()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_3(v4);
  *v5 = v6;
  v5[1] = sub_268133EC8;

  return sub_26833FF2C(v2, v3, v0 + 24);
}

uint64_t sub_2683443DC()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_268344468;
  v3 = OUTLINED_FUNCTION_14_19();

  return sub_268342E9C(v3);
}

uint64_t sub_268344468()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_0_0();

  return v4(v3);
}

uint64_t objectdestroy_34Tm()
{

  OUTLINED_FUNCTION_107_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

unint64_t sub_268344620(uint64_t a1)
{
  result = sub_268344648();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268344648()
{
  result = qword_2802533B0;
  if (!qword_2802533B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802533B0);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_12_26(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v2;
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_9()
{
}

uint64_t OUTLINED_FUNCTION_38_12()
{

  return sub_2683D03B8();
}

uint64_t OUTLINED_FUNCTION_39_14()
{

  return sub_2683D03B8();
}

uint64_t OUTLINED_FUNCTION_43_10(uint64_t a1)
{

  return sub_2683CFCD8();
}

void *OUTLINED_FUNCTION_51_7(void *result)
{
  result[2] = v3;
  result[3] = v4;
  result[4] = v2;
  result[5] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_5(uint64_t a1)
{

  return sub_2683CFCA8();
}

uint64_t OUTLINED_FUNCTION_60_3()
{
}

uint64_t OUTLINED_FUNCTION_61_5()
{

  return __swift_destroy_boxed_opaque_existential_0((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_62_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;

  return sub_26813CA00(v7 + 16, v6 + 16);
}

void OUTLINED_FUNCTION_63_5()
{

  JUMPOUT(0x26D616770);
}

uint64_t OUTLINED_FUNCTION_67_5()
{
}

uint64_t OUTLINED_FUNCTION_68_3(uint64_t result)
{
  *(result + 16) = v4;
  *(result + 24) = v5;
  *(result + 32) = v2;
  *(result + 40) = v3;
  *(result + 48) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_2(uint64_t result, uint64_t a2)
{
  v2[7] = v4;
  v2[8] = result;
  v2[9] = a2;
  v2[10] = v3;
  return result;
}

id OUTLINED_FUNCTION_86_5(void *a1)
{

  return sub_2682107B4(a1, v3, v2, v1);
}

uint64_t sub_268344AD4(uint64_t a1, uint64_t a2)
{
  *&v5 = "SiriNotebook";
  *(&v5 + 1) = 12;
  v6 = 2;
  v7 = a1;
  v8 = a2;
  v9 = 2;
  OUTLINED_FUNCTION_0_61();
  return sub_268344DC4(&v5, v2, v3) & 1;
}

uint64_t NotebookFeatureManager.isSmartEnabled.getter()
{
  *&v1 = "ResponseFramework";
  *(&v1 + 1) = 17;
  v2 = 2;
  v3 = "SMART";
  v4 = 5;
  v5 = 2;
  return sub_268344DC4(&v1, &unk_28790A7D0, sub_26834520C) & 1;
}

uint64_t NotebookFeatureManager.isManaoEnabled.getter()
{
  *&v9 = "Notes";
  *(&v9 + 1) = 5;
  v10 = 2;
  v11 = "Graphite";
  v12 = 8;
  v13 = 2;
  if (sub_268344DC4(&v9, &unk_28790A850, sub_2683451B8))
  {
    *&v4 = "SiriNotebook";
    *(&v4 + 1) = 12;
    v5 = 2;
    v6 = "Manao";
    v7 = 5;
    v8 = 2;
    OUTLINED_FUNCTION_0_61();
    v2 = sub_268344DC4(&v4, v0, v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_268344DC4(_OWORD *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v27[3] = a2;
  v27[4] = a3();
  v4 = swift_allocObject();
  v27[0] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  *(v4 + 41) = *(a1 + 25);
  v6 = sub_2683CCD98();
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v7 = sub_2683CF7E8();
  __swift_project_value_buffer(v7, qword_28027C958);
  sub_26813CA00(v27, v26);
  sub_26813CA00(v27, v25);
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315650;
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v12 = sub_2683D0188();
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_0(v26);
    v15 = sub_2681610A0(v12, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v16 = sub_2683D0188();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_0(v25);
    v19 = sub_2681610A0(v16, v18, &v24);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2080;
    if (v6)
    {
      v20 = 28271;
    }

    else
    {
      v20 = 6710895;
    }

    if (v6)
    {
      v21 = 0xE200000000000000;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v22 = sub_2681610A0(v20, v21, &v24);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_2680EB000, v8, v9, "FeatureFlag: %s/%s=%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v11, -1, -1);
    MEMORY[0x26D617A40](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v26);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
  return v6 & 1;
}

_BYTE *storeEnumTagSinglePayload for NotebookFeatureManager(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2683451B8()
{
  result = qword_2802533C0;
  if (!qword_2802533C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802533C0);
  }

  return result;
}

unint64_t sub_26834520C()
{
  result = qword_2802533C8;
  if (!qword_2802533C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802533C8);
  }

  return result;
}

unint64_t sub_268345260()
{
  result = qword_2802533D0;
  if (!qword_2802533D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802533D0);
  }

  return result;
}

uint64_t sub_268345310(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268345324()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[8];
  v2 = [objc_allocWithZone(MEMORY[0x277D4C5A8]) init];
  v0[9] = v2;
  [v2 setImage_];
  [v2 setImageIsRightAligned_];
  [v2 setLeadingText_];
  [v2 setTrailingText_];
  [v2 setAttributionImage_];
  [v2 setLeadingSubtitle_];
  [v2 setTrailingSubtitle_];
  [v2 setSeparatorStyle_];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_268345478;
  v4 = v0[7];

  return sub_2683457C4(v4);
}

uint64_t sub_268345478(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_26();
  *v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_26();
  *v9 = v8;
  *(v6 + 88) = v2;

  if (v2)
  {

    v10 = sub_268345764;
  }

  else
  {
    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v10 = sub_2683455AC;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2683455AC()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  [v3 setNextCard_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2683D1EC0;
  v0[2] = v5;
  v0[3] = sub_26816B178;
  v0[4] = 0;
  v0[5] = sub_26816B19C;
  v0[6] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E840, &qword_2683D8200);
  sub_2681B4CB8();
  v7 = sub_2683CFA38();
  v9 = v8;

  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_2681B2EE4(v6, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2683D1EC0;
  v11 = sub_26839EEEC(v3, *(v4 + 88), v2);
  v13 = v12;

  *(v10 + 32) = v11;
  *(v10 + 40) = v13;

  v14 = v0[1];

  return v14(v10);
}

uint64_t sub_268345764()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2683457C4(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683457D8()
{
  v1 = v0[7];
  v2 = *(v1 + 64);
  v0[8] = v2;
  v0[9] = *(v1 + 72);
  if (v2)
  {

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_268345924;

    return v7();
  }

  else
  {
    v5 = v0[1];
    v6 = MEMORY[0x277D84F90];

    return v5(0, v6);
  }
}

uint64_t sub_268345924(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_26();
  *v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_26();
  *v9 = v8;
  v6[11] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_268345F54);
  }

  else
  {
    v6[12] = a2;
    v10 = swift_task_alloc();
    v6[13] = v10;
    *v10 = v8;
    v10[1] = sub_268345AD0;
    v11 = v6[6];

    return sub_2681AEC74(v11, a1, a2);
  }
}

uint64_t sub_268345AD0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_26();
  *v5 = v4;
  *(v7 + 112) = v6;
  *(v7 + 120) = v0;

  if (v0)
  {
    v8 = sub_268345FB4;
  }

  else
  {
    v8 = sub_268345BF8;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_268345BF8()
{
  v1 = v0 + 16;
  v2 = *(v0 + 112);
  result = sub_26839F0F8(v2);
  v27 = result;
  v4 = 0;
  v32 = v2 + 32;
  v33 = *(v2 + 16);
  v5 = MEMORY[0x277D84F90];
  v29 = v2;
  while (v4 != v33)
  {
    if (v4 >= *(v2 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return result;
    }

    v6 = *(v32 + 16 * v4 + 8);
    if (v6 >> 62)
    {
      v7 = sub_2683D00A8();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v5 >> 62;
    if (v5 >> 62)
    {
      result = sub_2683D00A8();
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = result + v7;
    if (__OFADD__(result, v7))
    {
      goto LABEL_38;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v8)
      {
LABEL_14:
        sub_2683D00A8();
      }

LABEL_15:
      result = sub_2683D01B8();
      v5 = result;
      v10 = result & 0xFFFFFFFFFFFFFF8;
      v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_16;
    }

    if (v8)
    {
      goto LABEL_14;
    }

    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v11 < v9)
    {
      goto LABEL_15;
    }

LABEL_16:
    v35 = v7;
    v12 = *(v10 + 16);
    v13 = v11 - v12;
    v14 = v10 + 8 * v12;
    v34 = v10;
    if (v6 >> 62)
    {
      v16 = sub_2683D00A8();
      if (!v16)
      {
        goto LABEL_30;
      }

      v17 = v16;
      result = sub_2683D00A8();
      if (v13 < result)
      {
        goto LABEL_42;
      }

      if (v17 < 1)
      {
        goto LABEL_43;
      }

      v30 = result;
      v31 = v5;
      v18 = v14 + 32;
      sub_26818A0C8(&qword_28024E7F0, &qword_28024E7E8, qword_2683D8128, MEMORY[0x277D83988]);
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7E8, qword_2683D8128);
        v20 = sub_2683ABDEC(v1, i, v6);
        v22 = *v21;
        (v20)(v1, 0);
        *(v18 + 8 * i) = v22;
      }

      v2 = v29;
      v15 = v30;
      v5 = v31;
LABEL_26:

      ++v4;
      if (v15 < v35)
      {
        goto LABEL_39;
      }

      if (v15 > 0)
      {
        v23 = *(v34 + 16);
        v24 = __OFADD__(v23, v15);
        v25 = v23 + v15;
        if (v24)
        {
          goto LABEL_40;
        }

        *(v34 + 16) = v25;
      }
    }

    else
    {
      v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
        if (v13 < v15)
        {
          goto LABEL_41;
        }

        sub_268346014();
        swift_arrayInitWithCopy();
        goto LABEL_26;
      }

LABEL_30:

      ++v4;
      if (v7 > 0)
      {
        goto LABEL_39;
      }
    }
  }

  sub_268128194(v28[8], v28[9]);

  v26 = v28[1];

  return v26(v27, v5);
}

uint64_t sub_268345F54()
{
  OUTLINED_FUNCTION_14();
  sub_268128194(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_268345FB4()
{
  OUTLINED_FUNCTION_14();
  sub_268128194(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

unint64_t sub_268346014()
{
  result = qword_28024E7E0;
  if (!qword_28024E7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024E7E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook11CasinoCardsO16AnyCardComponentVs5Error_pIegHozo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_268346070(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2683460B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268346118(void *a1, uint64_t a2)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_1();
  v84 = v4;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v5);
  v86 = &v83 - v6;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v7);
  v85 = &v83 - v8;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  v83 = &v83 - v10;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  sub_2683CB668();
  OUTLINED_FUNCTION_1_7();
  v89 = v15;
  v90 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_2_1();
  v87 = v19;
  OUTLINED_FUNCTION_8_0();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v83 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v83 - v24;
  type metadata accessor for NotebookReminderConcept.Builder(0);
  swift_allocObject();
  v26 = sub_268325A58();
  v27 = [a1 title];
  sub_2683CFEA8();

  v28 = 1;
  v88 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v88);
  v29 = OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_title;
  OUTLINED_FUNCTION_2_49(v26 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_title);
  sub_268163BC8(v25, v26 + v29);
  swift_endAccess();
  sub_26812C310(v25, &unk_28024E7C0, &unk_2683D6CA0);
  sub_26834AFCC(a1);
  if (v30)
  {
    sub_2683CFB38();

    v28 = 0;
  }

  __swift_storeEnumTagSinglePayload(v23, v28, 1, v88);
  v31 = OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_identifier;
  OUTLINED_FUNCTION_2_49(v26 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_identifier);
  sub_268163BC8(v23, v26 + v31);
  swift_endAccess();
  sub_26812C310(v23, &unk_28024E7C0, &unk_2683D6CA0);
  v32 = [a1 status] == 2;
  *(v26 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isCompleted) = v32;
  v33 = [a1 priority] == 2;
  *(v26 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isFlagged) = v33;
  v34 = [a1 temporalEventTrigger];
  if (v34)
  {
    v35 = v34;
    type metadata accessor for NotebookTemporalEventTriggerConcept();
    v36 = sub_2681A2C04(v35);
  }

  else
  {
    v36 = 0;
  }

  v37 = v83;
  sub_268325B4C(v36);

  v38 = [a1 spatialEventTrigger];
  if (v38)
  {
    v39 = v38;
    type metadata accessor for NotebookSpatialEventTriggerConcept(0);
    v40 = sub_268163274(v39);
  }

  else
  {
    v40 = 0;
  }

  sub_268325B58(v40);

  sub_2683CEF98();
  v41 = [a1 contactEventTrigger];
  v42 = [v41 triggerContact];

  (*(v89 + 16))(v17, v91, v90);
  v43 = sub_2683CEF78();
  sub_268325B64(v43);

  v44 = [a1 createdDateComponents];
  if (v44)
  {
    v45 = v44;
    sub_2683CAFE8();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = v86;
  v48 = sub_2683CB0D8();
  OUTLINED_FUNCTION_5_43(v37, v46);
  sub_268176BC8(v37, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v48) == 1)
  {
    sub_26812C310(v13, &qword_28024D4B0, &unk_2683D26E0);
    v49 = 0;
  }

  else
  {
    sub_2683CEFE8();
    OUTLINED_FUNCTION_1_7();
    v51 = v50;
    v53 = v85;
    (*(v52 + 16))(v85, v13, v48);
    OUTLINED_FUNCTION_5_43(v53, 0);
    v49 = sub_268216C78(v53);
    (*(v51 + 8))(v13, v48);
  }

  sub_268325B70(v49);

  v54 = [a1 modifiedDateComponents];
  if (v54)
  {
    v55 = v54;
    v56 = v84;
    sub_2683CAFE8();

    v57 = 0;
  }

  else
  {
    v57 = 1;
    v56 = v84;
  }

  OUTLINED_FUNCTION_5_43(v56, v57);
  sub_268176BC8(v56, v47);
  if (__swift_getEnumTagSinglePayload(v47, 1, v48) == 1)
  {
    sub_26812C310(v47, &qword_28024D4B0, &unk_2683D26E0);
    v58 = 0;
  }

  else
  {
    sub_2683CEFE8();
    OUTLINED_FUNCTION_1_7();
    v60 = v59;
    v62 = v85;
    (*(v61 + 16))(v85, v47, v48);
    OUTLINED_FUNCTION_5_43(v62, 0);
    v58 = sub_268216C78(v62);
    (*(v60 + 8))(v47, v48);
  }

  v63 = sub_268325B7C(v58);

  *(v63 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isTitleLong) = sub_2681A3194(a1);
  v64 = [a1 temporalEventTrigger];
  if (v64)
  {
    type metadata accessor for NotebookTemporalEventTriggerConcept();
    v65 = OUTLINED_FUNCTION_9_10();
    v64 = sub_2681A2C04(v65)[3];
  }

  v66 = sub_268325B88(v64);

  v67 = [a1 temporalEventTrigger];
  v68 = v67;
  if (v67)
  {
    type metadata accessor for NotebookTemporalEventTriggerConcept();
    v69 = OUTLINED_FUNCTION_9_10();
    v68 = *(sub_2681A2C04(v69) + 32);
  }

  *(v66 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_isAllDay) = v68;
  if ([a1 spatialEventTrigger])
  {
    type metadata accessor for NotebookSpatialEventTriggerConcept(0);
    v70 = OUTLINED_FUNCTION_9_10();
    v71 = *(sub_268163274(v70) + 24);
  }

  else
  {
    v71 = 0;
  }

  v72 = sub_268325B94(v71);

  v73 = [a1 contactEventTrigger];
  if (v73 && (v74 = v73, v75 = [v73 triggerContact], v74, v75))
  {
    v76 = [v75 displayName];

    sub_2683CFA78();
    v77 = v87;
    sub_2683CFB38();

    v78 = 0;
  }

  else
  {
    v78 = 1;
    v77 = v87;
  }

  __swift_storeEnumTagSinglePayload(v77, v78, 1, v88);
  v79 = OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_contactName;
  OUTLINED_FUNCTION_2_49(v72 + OBJC_IVAR____TtCC12SiriNotebook23NotebookReminderConcept7Builder_contactName);
  sub_268163BC8(v77, v72 + v79);
  swift_endAccess();
  sub_26812C310(v77, &unk_28024E7C0, &unk_2683D6CA0);
  type metadata accessor for NotebookReminderConcept(0);
  swift_allocObject();
  v80 = OUTLINED_FUNCTION_9_10();
  v81 = sub_268325CD4(v80);

  (*(v89 + 8))(v91, v90);
  return v81;
}

uint64_t OUTLINED_FUNCTION_2_49(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_43(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t Snippet.App.init(identifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Snippet.App.isFirstParty.getter()
{
  sub_2681E743C();
  sub_2681E7490();
  return sub_2683CFA28() & 1;
}

uint64_t Snippet.App.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Snippet.App.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static Snippet.App.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2683D0598();
  }
}

uint64_t sub_268346C4C(uint64_t a1)
{
  v2 = sub_268346DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268346C88(uint64_t a1)
{
  v2 = sub_268346DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.App.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802533D8, &qword_2683F2080);
  OUTLINED_FUNCTION_0_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268346DF0();
  sub_2683D0718();
  sub_2683D0518();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_268346DF0()
{
  result = qword_2802533E0;
  if (!qword_2802533E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802533E0);
  }

  return result;
}

uint64_t Snippet.App.hashValue.getter()
{
  sub_2683D0698();
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t Snippet.App.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802533E8, &qword_2683F2088);
  OUTLINED_FUNCTION_0_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268346DF0();
  sub_2683D06F8();
  if (!v2)
  {
    v11 = sub_2683D0478();
    v13 = v12;
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_268347038()
{
  result = qword_2802533F0;
  if (!qword_2802533F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802533F0);
  }

  return result;
}

_BYTE *_s14descr2878F8F29V3AppV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_268347150()
{
  result = qword_2802533F8;
  if (!qword_2802533F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802533F8);
  }

  return result;
}

unint64_t sub_2683471A8()
{
  result = qword_280253400;
  if (!qword_280253400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253400);
  }

  return result;
}

unint64_t sub_268347200()
{
  result = qword_280253408;
  if (!qword_280253408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253408);
  }

  return result;
}

void sub_268347254()
{
  qword_280253410 = 0xD000000000000028;
  *algn_280253418 = 0x80000002683FD670;
  qword_280253420 = 0x6C6C41656573;
  unk_280253428 = 0xE600000000000000;
}

uint64_t static SeeAllInvocation.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_28024CB48 != -1)
  {
    swift_once();
  }

  v2 = *algn_280253418;
  v3 = qword_280253420;
  v4 = unk_280253428;
  *a1 = qword_280253410;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_26834731C(uint64_t a1)
{
  v2 = sub_2683474A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268347358(uint64_t a1)
{
  v2 = sub_2683474A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SeeAllInvocation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253430, &qword_2683F2290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683474A8();
  sub_2683D0718();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2683474A8()
{
  result = qword_280253438;
  if (!qword_280253438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253438);
  }

  return result;
}

unint64_t sub_268347528(void *a1)
{
  a1[1] = sub_268347560();
  a1[2] = sub_2683475B4();
  result = sub_268347608();
  a1[3] = result;
  return result;
}

unint64_t sub_268347560()
{
  result = qword_280253440;
  if (!qword_280253440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253440);
  }

  return result;
}

unint64_t sub_2683475B4()
{
  result = qword_280253448;
  if (!qword_280253448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253448);
  }

  return result;
}

unint64_t sub_268347608()
{
  result = qword_280253450;
  if (!qword_280253450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253450);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SeeAllInvocation(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_26834774C()
{
  result = qword_280253458;
  if (!qword_280253458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253458);
  }

  return result;
}

unint64_t sub_2683477A4()
{
  result = qword_280253460;
  if (!qword_280253460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253460);
  }

  return result;
}

uint64_t sub_2683477F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268347838(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_268347894()
{
  qword_28027CC58 = 0xD000000000000028;
  unk_28027CC60 = 0x8000000268400C30;
  qword_28027CC68 = 0xD000000000000010;
  unk_28027CC70 = 0x8000000268400D30;
}

unint64_t sub_2683478D4(uint64_t a1)
{
  v1 = sub_2683D0408();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_268347924(char a1)
{
  result = 0x646E497473727562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6C646E7542707061;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

BOOL sub_2683479E4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (sub_2683D0598()) && a1[2] == *(a2 + 16) && (a1[3] == *(a2 + 24) ? (v5 = a1[4] == *(a2 + 32)) : (v5 = 0), (v5 || (sub_2683D0598()) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0))
  {
    return a1[6] == *(a2 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268347A84(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253498, &qword_2683F2528);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683483F8();
  sub_2683D0718();
  v14 = 0;
  sub_2683D0518();
  if (!v2)
  {
    v13 = *(v3 + 48);
    v12[15] = 1;
    sub_2683484A0();
    OUTLINED_FUNCTION_2_50();
    sub_2683D0548();
    v12[14] = 2;
    OUTLINED_FUNCTION_2_50();
    sub_2683D0538();
    v12[13] = 3;
    sub_2683D0518();
    v12[12] = 4;
    OUTLINED_FUNCTION_2_50();
    sub_2683D0528();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_268347C54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253480, &qword_2683F2520);
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683483F8();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_0_62();
  v6 = sub_2683D0478();
  v8 = v7;
  sub_26834844C();
  sub_2683D04A8();
  OUTLINED_FUNCTION_0_62();
  v15 = sub_2683D0498();
  OUTLINED_FUNCTION_0_62();
  v14 = sub_2683D0478();
  v16 = v9;
  OUTLINED_FUNCTION_0_62();
  v10 = sub_2683D0488();
  v11 = OUTLINED_FUNCTION_1_55();
  v12(v11);

  __swift_destroy_boxed_opaque_existential_0(a1);

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v15;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = v10 & 1;
  *(a2 + 48) = v17;
  return result;
}

unint64_t sub_268347F10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2683478D4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_268347F40@<X0>(unint64_t *a1@<X8>)
{
  result = sub_268347924(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_268347F88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2683478D4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_268347FBC(uint64_t a1)
{
  v2 = sub_2683483F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268347FF8(uint64_t a1)
{
  v2 = sub_2683483F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268348040@<X0>(void *a1@<X8>)
{
  if (qword_28024CB50 != -1)
  {
    swift_once();
  }

  v2 = unk_28027CC60;
  v3 = qword_28027CC68;
  v4 = unk_28027CC70;
  *a1 = qword_28027CC58;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

double sub_2683480C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_268347C54(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_26834812C(void *a1)
{
  a1[1] = sub_268348164();
  a1[2] = sub_2683481B8();
  result = sub_26834820C();
  a1[3] = result;
  return result;
}

unint64_t sub_268348164()
{
  result = qword_280253468;
  if (!qword_280253468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253468);
  }

  return result;
}

unint64_t sub_2683481B8()
{
  result = qword_280253470;
  if (!qword_280253470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253470);
  }

  return result;
}

unint64_t sub_26834820C()
{
  result = qword_280253478;
  if (!qword_280253478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253478);
  }

  return result;
}

void *sub_268348260(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683D06E8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_2683D05A8();
    __swift_destroy_boxed_opaque_existential_0(v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_26834831C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683D0708();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2683D05B8();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

void *sub_2683483B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_268348260(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2683483F8()
{
  result = qword_280253488;
  if (!qword_280253488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253488);
  }

  return result;
}

unint64_t sub_26834844C()
{
  result = qword_280253490;
  if (!qword_280253490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253490);
  }

  return result;
}

unint64_t sub_2683484A0()
{
  result = qword_2802534A0;
  if (!qword_2802534A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802534A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceReminderInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2683485E4()
{
  result = qword_2802534A8;
  if (!qword_2802534A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802534A8);
  }

  return result;
}

unint64_t sub_26834863C()
{
  result = qword_2802534B0;
  if (!qword_2802534B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802534B0);
  }

  return result;
}

unint64_t sub_268348694()
{
  result = qword_2802534B8;
  if (!qword_2802534B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802534B8);
  }

  return result;
}

uint64_t sub_26834871C(uint64_t a1)
{
  v48 = sub_2683CD1F8();
  v2 = *(v48 - 8);
  v3 = MEMORY[0x28223BE20](v48);
  v45 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v43 = v41 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = v41 - v7;
  if (!a1)
  {
    return 2;
  }

  result = sub_2683CD508();
  if (!result)
  {

    return 2;
  }

  v10 = result;
  v11 = 0;
  v46 = *(result + 16);
  v47 = v2 + 16;
  v41[1] = a1;
  v42 = (v2 + 32);
  v12 = (v2 + 8);
  v44 = MEMORY[0x277D84F90];
  while (v46 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      return result;
    }

    v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v14 = *(v2 + 72);
    (*(v2 + 16))(v8, v10 + v13 + v14 * v11, v48);
    v16 = sub_2683CD1E8();
    v17 = v15;
    if (qword_28024C958 == -1)
    {
      if (!v15)
      {
        goto LABEL_13;
      }

LABEL_8:
      if (v16 == qword_28027CAB8 && v17 == unk_28027CAC0)
      {
      }

      else
      {
        v19 = sub_2683D0598();

        if ((v19 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v20 = *v42;
      (*v42)(v43, v8, v48);
      v21 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v21;
      v49[0] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2683905A8(0, *(v21 + 2) + 1, 1);
        v23 = v49[0];
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v44 = v20;
        sub_2683905A8(v24 > 1, v25 + 1, 1);
        v20 = v44;
        v23 = v49[0];
      }

      ++v11;
      *(v23 + 2) = v25 + 1;
      v44 = v23;
      result = (v20)(v23 + v13 + v25 * v14, v43, v48);
    }

    else
    {
      swift_once();
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      result = (*v12)(v8, v48);
      ++v11;
    }
  }

  v26 = *(v44 + 2);
  if (v26)
  {
    v49[0] = MEMORY[0x277D84F90];
    v27 = v44;
    sub_268390600(0, v26, 0);
    v28 = v49[0];
    v29 = v27 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v46 = *(v2 + 72);
    v30 = *(v2 + 16);
    do
    {
      v31 = v45;
      v32 = v48;
      v30(v45, v29, v48);
      v33 = sub_2683CD1D8();
      v35 = v34;
      (*v12)(v31, v32);
      v49[0] = v28;
      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_268390600((v36 > 1), v37 + 1, 1);
        v28 = v49[0];
      }

      *(v28 + 16) = v37 + 1;
      v38 = v28 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      v29 += v46;
      --v26;
    }

    while (v26);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v49[0] = 0x797265636F7267;
  v49[1] = 0xE700000000000000;
  MEMORY[0x28223BE20](v39);
  v41[-2] = v49;
  v40 = sub_2681A073C(sub_2681A12C0, &v41[-4], v28);

  return v40;
}

void sub_268348BB4(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AddTriggerIntentParameters;
  *(a1 + 32) = &off_287908A58;
  v3 = v1;

  sub_268348C00(v3, a1);
}

void sub_268348C00(void *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = [a1 temporalEventTrigger];
  v5 = v4;
  if (v4)
  {
  }

  v6 = [a1 spatialEventTrigger];

  if (v6)
  {
  }

  *a2 = v5 != 0;
  a2[1] = v6 != 0;
}

uint64_t sub_268348CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a2, a3);

  return sub_268348D40(v3);
}

uint64_t sub_268348D04(char a1)
{
  if (a1)
  {
    return 0x65736963657270;
  }

  else
  {
    return 0x657372616F63;
  }
}

uint64_t sub_268348D40(char a1)
{
  if (a1 == 2)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2683CF7E8();
    __swift_project_value_buffer(v1, qword_28027C958);
    v2 = sub_2683CF7C8();
    v3 = sub_2683CFE98();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315394;
      *(v4 + 4) = sub_2681610A0(7104878, 0xE300000000000000, &v10);
      *(v4 + 12) = 1024;
      *(v4 + 14) = 1;
      _os_log_impl(&dword_2680EB000, v2, v3, "Location Permission guard skipped. { requiredPrecision: %s, supportedPlatform: %{BOOL}d }", v4, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x26D617A40](v5, -1, -1);
      MEMORY[0x26D617A40](v4, -1, -1);
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F080, &unk_2683F2760);
    v7 = sub_268348F1C();

    return MEMORY[0x2821BA320](sub_268348F14, 0, v6, v7);
  }

  else
  {
    v8 = a1 & 1;

    return MEMORY[0x2821BA2C0](v8);
  }
}

unint64_t sub_268348F1C()
{
  result = qword_28024F088;
  if (!qword_28024F088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024F080, &unk_2683F2760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F088);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationPrecision(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268349060()
{
  result = qword_2802534C0;
  if (!qword_2802534C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802534C0);
  }

  return result;
}

uint64_t static Snippet.appPunchout(to:siriLocale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2683CB668();
  OUTLINED_FUNCTION_0_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v39[-1] - v13;
  if (a1)
  {

    v15 = sub_2683CF258();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      (*(v8 + 16))(v11, a2, v6);

      sub_26816E9C8(v19, v11, v14);
      v20 = sub_2683CF2A8();
      if (__swift_getEnumTagSinglePayload(v14, 1, v20) != 1)
      {
        v33 = sub_2683CF298();
        v35 = v34;
        (*(*(v20 - 8) + 8))(v14, v20);
        v39[0] = v33;
        v39[1] = v35;
        sub_2683CB838();

        v36 = (a3 + *(type metadata accessor for Snippet.AppPunchout(0) + 20));
        *v36 = v17;
        v36[1] = v18;
        v37 = type metadata accessor for Snippet(0);
        swift_storeEnumTagMultiPayload();
        v30 = a3;
        v31 = 0;
        v29 = v37;
        return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
      }

      sub_268349CB4(v14);
    }

    else
    {
    }
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v21 = sub_2683CF7E8();
  __swift_project_value_buffer(v21, qword_28027C958);

  v22 = sub_2683CF7C8();
  v23 = sub_2683CFE78();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39[0] = v25;
    *v24 = 136315138;
    v39[2] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802534C8, &qword_2683F2818);
    v26 = sub_2683CFAD8();
    v28 = sub_2681610A0(v26, v27, v39);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2680EB000, v22, v23, "Cannot create app punchout snippet due to missing bundleId or display name for app: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D617A40](v25, -1, -1);
    MEMORY[0x26D617A40](v24, -1, -1);
  }

  v29 = type metadata accessor for Snippet(0);
  v30 = a3;
  v31 = 1;
  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
}

uint64_t Snippet.AppPunchout.name.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
  sub_2683CB858();
  return v1;
}

uint64_t sub_26834948C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Snippet.AppPunchout.name.setter(v1, v2);
}

void (*Snippet.AppPunchout.name.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
  v2[4] = sub_2683CB848();
  return sub_268146C38;
}

uint64_t Snippet.AppPunchout.bundleId.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippet.AppPunchout(0) + 20));

  return v1;
}

uint64_t Snippet.AppPunchout.bundleId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippet.AppPunchout(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_268349654(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26834971C(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_268349754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268349654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26834977C(uint64_t a1)
{
  v2 = sub_268349D68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2683497B8(uint64_t a1)
{
  v2 = sub_268349D68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.AppPunchout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802534D0, &qword_2683F2820);
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268349D68();
  sub_2683D0718();
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
  sub_268349DBC(&qword_2802534E0, MEMORY[0x277D637D0]);
  sub_2683D0548();
  if (!v1)
  {
    type metadata accessor for Snippet.AppPunchout(0);
    v10[14] = 1;
    sub_2683D0518();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t Snippet.AppPunchout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
  OUTLINED_FUNCTION_0_3();
  v28 = v5;
  v29 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802534E8, &qword_2683F2828);
  OUTLINED_FUNCTION_0_3();
  v27 = v9;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for Snippet.AppPunchout(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268349D68();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v13;
  v14 = v28;
  v32 = 0;
  sub_268349DBC(&qword_2802534F0, MEMORY[0x277D637E0]);
  v15 = v29;
  sub_2683D04A8();
  (*(v14 + 32))(v25, v8, v15);
  v31 = 1;
  v16 = sub_2683D0478();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_1_56();
  v20(v19);
  v22 = v25;
  v21 = v26;
  v23 = &v25[*(v11 + 20)];
  *v23 = v16;
  v23[1] = v18;
  sub_268349E2C(v22, v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_268349E90(v22);
}

uint64_t sub_268349CB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF28, &qword_2683D5C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Snippet.AppPunchout(uint64_t a1)
{
  result = qword_2802534F8;
  if (!qword_2802534F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_268349D68()
{
  result = qword_2802534D8;
  if (!qword_2802534D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802534D8);
  }

  return result;
}

uint64_t sub_268349DBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28024E780, &unk_2683D8DC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268349E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.AppPunchout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268349E90(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.AppPunchout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268349F54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Snippet.AppPunchout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_268349FC0(uint64_t a1)
{
  sub_26834A034();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26834A034()
{
  if (!qword_280253508)
  {
    v0 = sub_2683CB888();
    if (!v1)
    {
      atomic_store(v0, &qword_280253508);
    }
  }
}

_BYTE *_s14descr2878F8F29V11AppPunchoutV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26834A164()
{
  result = qword_280253510;
  if (!qword_280253510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253510);
  }

  return result;
}

unint64_t sub_26834A1BC()
{
  result = qword_280253518;
  if (!qword_280253518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253518);
  }

  return result;
}

unint64_t sub_26834A214()
{
  result = qword_280253520;
  if (!qword_280253520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253520);
  }

  return result;
}

uint64_t sub_26834A288@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v75 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v56 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  v10 = MEMORY[0x28223BE20](v74);
  v73 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v63 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5C8, &unk_2683D2C90);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v56 - v18);
  v65 = &v56 - v18;
  v69 = sub_26834AFCC(a1);
  v68 = v20;
  v21 = [a1 title];
  v22 = [v21 spokenPhrase];

  v62 = sub_2683CFA78();
  v61 = v23;

  v64 = [a1 status] == 2;
  v67 = [a1 taskType] != 1;
  v66 = [a1 priority] == 2;
  v70 = a1;
  sub_26834AC08([a1 spatialEventTrigger], v19);
  sub_26834AD64([a1 temporalEventTrigger], v16);
  v57 = type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  sub_2683CB588();
  sub_2683CB588();
  v28 = type metadata accessor for Snippet.Reminder(0);
  v29 = (a2 + v28[5]);
  v30 = (a2 + v28[7]);
  v31 = (a2 + v28[8]);
  OUTLINED_FUNCTION_2_51();
  v33 = *(v32 + 40);
  __dst[0] = 1;
  sub_2683CB838();
  v59 = v28[12];
  type metadata accessor for Snippet.Reminder.LocationTrigger(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v58 = v28[13];
  type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  sub_26834B030(v14, v73);
  sub_2683CB838();
  sub_2681433DC(v14, &qword_28024D5D0, &unk_2683D2CA0);
  v42 = (a2 + v28[14]);
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v60 = v28[16];
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v57);
  v46 = v72;
  (*(v75 + 24))(a2, v7, v72);
  v47 = v68;
  *v29 = v69;
  v29[1] = v47;
  v48 = (a2 + v28[6]);
  v49 = v61;
  *v48 = v62;
  v48[1] = v49;
  *v30 = 0;
  v30[1] = 0;
  memcpy(__dst, v31, 0x61uLL);
  sub_2681433DC(__dst, &qword_28024D5C0, &unk_2683D2C80);
  OUTLINED_FUNCTION_2_51();
  OUTLINED_FUNCTION_4_46();
  sub_2683CB838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
  OUTLINED_FUNCTION_0_9();
  (*(v50 + 8))(a2 + v33);
  v76 = v67;
  sub_2683CB838();
  OUTLINED_FUNCTION_4_46();
  sub_2683CB838();
  v51 = v65;
  sub_268144B2C(v65, a2 + v59);
  v52 = v63;
  sub_26834B030(v63, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
  OUTLINED_FUNCTION_0_9();
  (*(v53 + 8))(a2 + v58);
  sub_26834B030(v14, v73);
  sub_2683CB838();

  sub_2681433DC(v14, &qword_28024D5D0, &unk_2683D2CA0);
  (*(v75 + 8))(v7, v46);
  sub_2681433DC(v52, &qword_28024D5D0, &unk_2683D2CA0);
  sub_2681433DC(v51, &qword_28024D5C8, &unk_2683D2C90);
  sub_268144260(*v42, v42[1], v42[2], v42[3]);
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v54 = MEMORY[0x277D84F90];
  *(a2 + v28[15]) = MEMORY[0x277D84F90];
  result = sub_26815E4B0(v71, a2 + v60);
  *(a2 + v28[17]) = v54;
  return result;
}

uint64_t sub_26834A8F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2683CAEA8();
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2683BA54C(a1);
  v34 = v11;
  v35 = v10;
  v12 = [a1 title];
  v13 = [v12 spokenPhrase];

  v14 = sub_2683CFA78();
  v32 = v15;
  v33 = v14;

  v16 = [a1 groupName];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 spokenPhrase];

    v19 = sub_2683CFA78();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_2683B9E1C();
  v36 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2681D8BC0();
  v23 = sub_2683CFA38();
  v25 = v24;

  v36 = v23;
  v37 = v25;
  sub_2683CAE78();
  sub_26812A1AC();
  v26 = sub_2683CFFE8();
  v28 = v27;

  (*(v6 + 8))(v9, v4);

  v30 = v34;
  *a2 = v35;
  a2[1] = v30;
  v31 = v32;
  a2[2] = v33;
  a2[3] = v31;
  a2[4] = v19;
  a2[5] = v21;
  a2[6] = v26;
  a2[7] = v28;
  return result;
}

double sub_26834AB1C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_26837D6CC(v3);
    v6 = v5;
    v7 = [v3 title];
    v8 = [v7 spokenPhrase];

    v9 = sub_2683CFA78();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v4 = 0;
    v6 = 0;
    v11 = 0xE000000000000000;
  }

  sub_268151B3C(0, 0, 255);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 72) = 3;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = -1;
  return result;
}

uint64_t sub_26834AC08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = sub_26834B0A0([a1 placemark]);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v13 = [a1 placemark];
      v6 = sub_2682B2068();
      v7 = v14;
    }

    [a1 event];
    [a1 mobileSpace];
    *a2 = v6;
    a2[1] = v7;
    v15 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
    sub_2683CB838();
    sub_2683CB838();

    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v15);
  }

  else
  {
    type metadata accessor for Snippet.Reminder.LocationTrigger(0);
    OUTLINED_FUNCTION_4_0();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_26834AD64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  if (!a1)
  {
    goto LABEL_6;
  }

  v16 = [a1 dateComponentsRange];
  if (!v16)
  {

    goto LABEL_6;
  }

  v17 = v16;
  sub_26836116C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_2681433DC(v6, &qword_28024DB08, qword_2683D5760);
LABEL_6:
    v18 = 1;
    goto LABEL_7;
  }

  (*(v9 + 32))(v15, v6, v7);
  (*(v9 + 16))(v13, v15, v7);
  v21 = [v17 allDay];
  if (!v21 || (v22 = v21, v23 = [v21 BOOLValue], v22, (v23 & 1) == 0))
  {
    sub_2683614C4();
  }

  Snippet.Reminder.TemporalTrigger.init(date:isAllDay:)();

  (*(v9 + 8))(v15, v7);
  v18 = 0;
LABEL_7:
  v19 = type metadata accessor for Snippet.Reminder.TemporalTrigger(0);
  return __swift_storeEnumTagSinglePayload(a2, v18, 1, v19);
}

uint64_t sub_26834AFCC(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_26834B030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D0, &unk_2683D2CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26834B0A0(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CFA78();

  return v3;
}

double OUTLINED_FUNCTION_2_51()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  return result;
}

uint64_t type metadata accessor for AddTasksCATPatternsExecutor(uint64_t a1)
{
  result = qword_280253528;
  if (!qword_280253528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26834B1C8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834B1E0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = OUTLINED_FUNCTION_4_47();
  v3(v2);
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_25_24(v6);
  v8 = OUTLINED_FUNCTION_3_10(v7, xmmword_2683D1EC0);
  if (v4)
  {
    v8 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_29(v8);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_31_12();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_26_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_44(v10);
  OUTLINED_FUNCTION_15_31(30);
  OUTLINED_FUNCTION_20_9();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26834B2D4()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26834B3F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834B408()
{
  OUTLINED_FUNCTION_25();
  v11 = v0;
  OUTLINED_FUNCTION_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20(v1);
  v3 = OUTLINED_FUNCTION_39_15(v2);
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  OUTLINED_FUNCTION_37_10(v4);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_42_14();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_9(v6);
  v8 = OUTLINED_FUNCTION_17(35);

  return v9(v8);
}

uint64_t sub_26834B4F4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834B50C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = OUTLINED_FUNCTION_4_47();
  v3(v2);
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_25_24(v6);
  v8 = OUTLINED_FUNCTION_15_16(v7, xmmword_2683D1EC0);
  if (v4)
  {
    v8 = sub_2683CEF98();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_29(v8);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_31_12();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_26_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_44(v10);
  OUTLINED_FUNCTION_15_31(39);
  OUTLINED_FUNCTION_20_9();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26834B600(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834B614()
{
  OUTLINED_FUNCTION_25();
  v11 = v0;
  OUTLINED_FUNCTION_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20(v1);
  v3 = OUTLINED_FUNCTION_39_15(v2);
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  OUTLINED_FUNCTION_37_10(v4);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_42_14();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_9(v6);
  v8 = OUTLINED_FUNCTION_17(41);

  return v9(v8);
}

uint64_t sub_26834B700(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834B714()
{
  OUTLINED_FUNCTION_25();
  v11 = v0;
  OUTLINED_FUNCTION_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20(v1);
  v3 = OUTLINED_FUNCTION_39_15(v2);
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  OUTLINED_FUNCTION_37_10(v4);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_42_14();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_9(v6);
  v8 = OUTLINED_FUNCTION_17(40);

  return v9(v8);
}

uint64_t sub_26834B800(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834B818()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = OUTLINED_FUNCTION_4_47();
  v3(v2);
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_25_24(v6);
  v8 = OUTLINED_FUNCTION_3_10(v7, xmmword_2683D1EC0);
  if (v4)
  {
    v8 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_29(v8);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_31_12();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_26_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_44(v10);
  OUTLINED_FUNCTION_15_31(57);
  OUTLINED_FUNCTION_20_9();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26834B90C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834B924()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = OUTLINED_FUNCTION_4_47();
  v3(v2);
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_25_24(v6);
  v8 = OUTLINED_FUNCTION_3_10(v7, xmmword_2683D1EC0);
  if (v4)
  {
    v8 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_29(v8);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_31_12();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_26_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_44(v10);
  OUTLINED_FUNCTION_15_31(34);
  OUTLINED_FUNCTION_20_9();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26834BA18(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834BA30()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = OUTLINED_FUNCTION_4_47();
  v3(v2);
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_25_24(v6);
  v8 = OUTLINED_FUNCTION_3_10(v7, xmmword_2683D1EC0);
  if (v4)
  {
    v8 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_29(v8);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_31_12();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_26_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_44(v10);
  OUTLINED_FUNCTION_15_31(40);
  OUTLINED_FUNCTION_20_9();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26834BB24(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834BB3C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = OUTLINED_FUNCTION_4_47();
  v3(v2);
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_25_24(v6);
  v8 = OUTLINED_FUNCTION_3_10(v7, xmmword_2683D1EC0);
  if (v4)
  {
    v8 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_29(v8);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_31_12();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_26_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_44(v10);
  OUTLINED_FUNCTION_15_31(28);
  OUTLINED_FUNCTION_20_9();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26834BC30(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834BC48()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = OUTLINED_FUNCTION_4_47();
  v3(v2);
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_25_24(v6);
  v8 = OUTLINED_FUNCTION_15_16(v7, xmmword_2683D1EC0);
  if (v4)
  {
    v8 = sub_2683CEF98();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_29(v8);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_31_12();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_26_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_44(v10);
  OUTLINED_FUNCTION_15_31(64);
  OUTLINED_FUNCTION_20_9();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26834BD3C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26834BE5C()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_26834BEC0()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26834BF20(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834BF38()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = OUTLINED_FUNCTION_4_47();
  v3(v2);
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_25_24(v6);
  v8 = OUTLINED_FUNCTION_3_10(v7, xmmword_2683D1EC0);
  if (v4)
  {
    v8 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_29(v8);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_31_12();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_26_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_44(v10);
  OUTLINED_FUNCTION_15_31(50);
  OUTLINED_FUNCTION_20_9();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26834C02C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD00000000000003CLL, 0x8000000268400E10, v3);
}

uint64_t sub_26834C0D8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834C0F0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v2 = OUTLINED_FUNCTION_4_47();
  v3(v2);
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v6 = OUTLINED_FUNCTION_20(v5);
  v7 = OUTLINED_FUNCTION_25_24(v6);
  v8 = OUTLINED_FUNCTION_3_10(v7, xmmword_2683D1EC0);
  if (v4)
  {
    v8 = sub_2683CF138();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_16_29(v8);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_31_12();
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_26_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_5_44(v10);
  OUTLINED_FUNCTION_15_31(39);
  OUTLINED_FUNCTION_20_9();

  return v15(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_26834C1E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834C1F8()
{
  OUTLINED_FUNCTION_25();
  v11 = v0;
  OUTLINED_FUNCTION_15();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20(v1);
  v3 = OUTLINED_FUNCTION_39_15(v2);
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  OUTLINED_FUNCTION_37_10(v4);
  OUTLINED_FUNCTION_4_11(MEMORY[0x277D55BE8]);
  OUTLINED_FUNCTION_42_14();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_28_10(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_9(v6);
  v8 = OUTLINED_FUNCTION_17(31);

  return v9(v8);
}

uint64_t sub_26834C2E4()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812BEB4;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD00000000000003ALL, 0x8000000268400D80, v3);
}

uint64_t sub_26834C3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_268163208(a1);
  return v11;
}

uint64_t OUTLINED_FUNCTION_16_29(uint64_t result)
{
  *(v2 + 56) = v1;
  *(v3 + 48) = v1;
  *(v3 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_12()
{
}

uint64_t OUTLINED_FUNCTION_37_10(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_14()
{
}

_BYTE *storeEnumTagSinglePayload for SiriNotebookConstants(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook26DisambiguationResponseTaskO(uint64_t a1)
{
  if ((*(a1 + 73) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 73) & 3;
  }
}

uint64_t sub_26834C708(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 74))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 73);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26834C744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 58) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

uint64_t sub_26834C794(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 73) = a2;
  return result;
}

double sub_26834C7E0@<D0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v72 = *MEMORY[0x277D85DE8];
  sub_2683CCBD8();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_1();
  v64 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_30();
  v11 = sub_2683CCBB8();
  v13 = v12;
  if (qword_28024CB50 != -1)
  {
    swift_once();
  }

  v65 = qword_28027CC58;
  v66 = unk_28027CC60;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  v14 = OUTLINED_FUNCTION_11_37();
  v15 = MEMORY[0x26D616690](v14);
  if (v11 == v65 && v13 == v66)
  {
  }

  else
  {
    v18 = OUTLINED_FUNCTION_16_30(v15, v16, v65);

    if ((v18 & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_2_52();
      v20(v19);
LABEL_21:
      *(a2 + 48) = 0;
      result = 0.0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return result;
    }
  }

  if (!sub_2683CCBC8())
  {
    sub_2683CF9D8();
  }

  v21 = v64;
  v22 = objc_opt_self();
  v23 = sub_2683CF9B8();

  v65 = 0;
  v25 = OUTLINED_FUNCTION_15_32(v24, sel_dataWithPropertyList_format_options_error_);

  v26 = 0;
  if (!v25)
  {
    v32 = v26;
    v31 = sub_2683CB388();

    swift_willThrow();
    goto LABEL_16;
  }

  sub_2683CB468();

  sub_2683CB348();
  swift_allocObject();
  sub_2683CB338();
  v27 = sub_268348164();
  OUTLINED_FUNCTION_17_23(&type metadata for AnnounceReminderInvocation, v28, v29, v30, v27);
  if (v22)
  {
    v31 = v22;
    OUTLINED_FUNCTION_18_29();

    v21 = v64;
LABEL_16:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v33 = sub_2683CF7E8();
    __swift_project_value_buffer(v33, qword_28027C958);
    v34 = OUTLINED_FUNCTION_6_34();
    a1(v34);
    v35 = OUTLINED_FUNCTION_11_37();
    a1(v35);
    v36 = v31;
    v37 = sub_2683CF7C8();
    v38 = sub_2683CFE78();

    if (os_log_type_enabled(v37, v38))
    {
      swift_slowAlloc();
      v63 = OUTLINED_FUNCTION_10_30();
      v65 = v63;
      *v21 = 136315906;
      sub_2683CCBB8();
      OUTLINED_FUNCTION_14_28();
      v39 = *(v7 + 8);
      v40 = OUTLINED_FUNCTION_32_11();
      v42 = v41(v40);
      OUTLINED_FUNCTION_21_23(v42, v43, &v65);
      OUTLINED_FUNCTION_20_29();
      OUTLINED_FUNCTION_8_34();
      v71 = v31;
      v44 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v45 = OUTLINED_FUNCTION_22_20();
      sub_2681610A0(v45, v46, &v65);
      OUTLINED_FUNCTION_19_31();
      *(v21 + 14) = a1;
      *(v21 + 22) = v3;
      swift_getErrorValue();
      v47 = sub_2683D0638();
      sub_2681610A0(v47, v48, &v65);
      OUTLINED_FUNCTION_19_31();
      *(v21 + 24) = a1;
      *(v21 + 32) = v3;
      v71 = sub_2683CCBC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC38, &qword_2683D4408);
      OUTLINED_FUNCTION_22_20();
      OUTLINED_FUNCTION_14_28();
      v49 = OUTLINED_FUNCTION_32_11();
      v50 = v39(v49);
      OUTLINED_FUNCTION_21_23(v50, v51, &v65);
      OUTLINED_FUNCTION_20_29();
      *(v21 + 34) = v64;
      OUTLINED_FUNCTION_5_45(&dword_2680EB000, "Decode failed for DI %s with error: %s [%s]\n User data: %s", v38);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v63, -1, -1);
      OUTLINED_FUNCTION_9_34();

      v52 = OUTLINED_FUNCTION_13_34();
      v39(v52);
    }

    else
    {

      v53 = *(v7 + 8);
      v54 = OUTLINED_FUNCTION_13_34();
      v53(v54);
      (v53)(v21, v2);
      v55 = OUTLINED_FUNCTION_32_11();
      v53(v55);
    }

    goto LABEL_21;
  }

  v57 = OUTLINED_FUNCTION_2_52();
  v58(v57);

  OUTLINED_FUNCTION_18_29();
  v59 = v66;
  v60 = v68;
  v61 = v69;
  v62 = v70;
  *a2 = v65;
  *(a2 + 8) = v59;
  result = *&v67;
  *(a2 + 16) = v67;
  *(a2 + 32) = v60;
  *(a2 + 40) = v61;
  *(a2 + 48) = v62;
  return result;
}

uint64_t sub_26834CD60@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  sub_2683CCBD8();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_1();
  v61 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_30();
  v11 = sub_2683CCBB8();
  v13 = v12;
  if (qword_28024CC68 != -1)
  {
    swift_once();
  }

  v14 = qword_2802540E0;
  v15 = unk_2802540E8;
  v62 = qword_2802540D0;
  v63 = *algn_2802540D8;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v14, v15);
  if (v11 == v62 && v13 == v63)
  {
  }

  else
  {
    v17 = sub_2683D0598();

    if ((v17 & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_89();
      result = v19(v18);
LABEL_19:
      v58 = 3;
      goto LABEL_20;
    }
  }

  if (!sub_2683CCBC8())
  {
    sub_2683CF9D8();
  }

  v21 = objc_opt_self();
  v22 = sub_2683CF9B8();

  v62 = 0;
  v23 = [v21 dataWithPropertyList:v22 format:200 options:0 error:&v62];

  v24 = v62;
  if (!v23)
  {
    v28 = v24;
    v29 = sub_2683CB388();

    swift_willThrow();
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v30 = sub_2683CF7E8();
    __swift_project_value_buffer(v30, qword_28027C958);
    v31 = *(v7 + 16);
    v31(v3, a1, v2);
    v31(v61, a1, v2);
    v32 = v29;
    v33 = sub_2683CF7C8();
    v34 = sub_2683CFE78();

    if (os_log_type_enabled(v33, v34))
    {
      swift_slowAlloc();
      v60 = OUTLINED_FUNCTION_10_30();
      v62 = v60;
      *v61 = 136315906;
      v35 = sub_2683CCBB8();
      v59 = v34;
      v37 = v36;
      v38 = *(v7 + 8);
      v39 = OUTLINED_FUNCTION_32_11();
      v38(v39);
      sub_2681610A0(v35, v37, &v62);

      OUTLINED_FUNCTION_8_34();
      v40 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v41 = sub_2683CFAD8();
      v43 = sub_2681610A0(v41, v42, &v62);

      *(v61 + 14) = v43;
      *(v61 + 22) = v3;
      swift_getErrorValue();
      v44 = sub_2683D0638();
      v46 = sub_2681610A0(v44, v45, &v62);

      *(v61 + 24) = v46;
      *(v61 + 32) = v3;
      sub_2683CCBC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC38, &qword_2683D4408);
      v47 = sub_2683CFAD8();
      v49 = v48;
      v50 = OUTLINED_FUNCTION_32_11();
      v38(v50);
      v51 = sub_2681610A0(v47, v49, &v62);

      *(v61 + 34) = v51;
      OUTLINED_FUNCTION_5_45(&dword_2680EB000, "Decode failed for DI %s with error: %s [%s]\n User data: %s", v59);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v60, -1, -1);
      OUTLINED_FUNCTION_9_34();

      v52 = OUTLINED_FUNCTION_89();
      result = (v38)(v52);
    }

    else
    {

      v53 = *(v7 + 8);
      v54 = OUTLINED_FUNCTION_89();
      v53(v54);
      (v53)(v61, v2);
      v55 = OUTLINED_FUNCTION_32_11();
      result = (v53)(v55);
    }

    goto LABEL_19;
  }

  v25 = sub_2683CB468();
  v27 = v26;

  sub_2683CB348();
  swift_allocObject();
  sub_2683CB338();
  sub_26834F750();
  sub_2683CB328();
  v56 = OUTLINED_FUNCTION_89();
  v57(v56);

  result = sub_268143054(v25, v27);
  v58 = v62;
LABEL_20:
  *a2 = v58;
  return result;
}

id sub_26834D35C(char *a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = sub_2683CCBD8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - v7;
  v9 = sub_2683CCBB8();
  v11 = v10;
  if (qword_28024C890 != -1)
  {
    swift_once();
  }

  v12 = qword_28027C7D0;
  v13 = unk_28027C7D8;
  v55 = qword_28027C7C0;
  v56 = *algn_28027C7C8;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v12, v13);
  if (v9 == v55 && v11 == v56)
  {
  }

  else
  {
    v15 = sub_2683D0598();

    if ((v15 & 1) == 0)
    {
      (*(v3 + 8))(a1, v2);
      return 0;
    }
  }

  if (!sub_2683CCBC8())
  {
    sub_2683CF9D8();
  }

  v16 = objc_opt_self();
  v17 = sub_2683CF9B8();

  v55 = 0;
  v18 = [v16 dataWithPropertyList:v17 format:200 options:0 error:&v55];

  v19 = v55;
  if (v18)
  {
    v20 = sub_2683CB468();
    v22 = v21;

    sub_2683CB348();
    swift_allocObject();
    sub_2683CB338();
    sub_26818AC8C();
    sub_2683CB328();
    (*(v3 + 8))(a1, v2);

    sub_268143054(v20, v22);
    return v55;
  }

  v23 = v19;
  v24 = sub_2683CB388();

  swift_willThrow();
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v25 = sub_2683CF7E8();
  __swift_project_value_buffer(v25, qword_28027C958);
  v26 = *(v3 + 16);
  v26(v8, a1, v2);
  v26(v6, a1, v2);
  v27 = v24;
  v28 = sub_2683CF7C8();
  v29 = sub_2683CFE78();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v55 = v53;
    *v30 = 136315906;
    v52 = v29;
    v31 = sub_2683CCBB8();
    v51 = v6;
    v33 = v32;
    v34 = *(v3 + 8);
    v34(v8, v2);
    v35 = sub_2681610A0(v31, v33, &v55);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v54 = v24;
    v36 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v37 = sub_2683CFAD8();
    v39 = sub_2681610A0(v37, v38, &v55);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2080;
    swift_getErrorValue();
    v40 = sub_2683D0638();
    v42 = sub_2681610A0(v40, v41, &v55);

    *(v30 + 24) = v42;
    *(v30 + 32) = 2080;
    v43 = v51;
    v54 = sub_2683CCBC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC38, &qword_2683D4408);
    v44 = sub_2683CFAD8();
    v46 = v45;
    v34(v43, v2);
    v47 = sub_2681610A0(v44, v46, &v55);

    *(v30 + 34) = v47;
    _os_log_impl(&dword_2680EB000, v28, v52, "Decode failed for DI %s with error: %s [%s]\n User data: %s", v30, 0x2Au);
    v48 = v53;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v48, -1, -1);
    MEMORY[0x26D617A40](v30, -1, -1);

    v34(a1, v2);
  }

  else
  {

    v49 = *(v3 + 8);
    v49(a1, v2);
    v49(v6, v2);
    v49(v8, v2);
  }

  return 0;
}

uint64_t sub_26834D9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = sub_2683CCBD8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v58 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = &v54[-v8];
  v10 = sub_2683CCBB8();
  v12 = v11;
  if (qword_28024C888 != -1)
  {
    swift_once();
  }

  v13 = qword_28024DE00;
  v14 = unk_28024DE08;
  v59 = xmmword_28024DDF0;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v13, v14);
  if (v10 == v59 && v12 == *(&v59 + 1))
  {
  }

  else
  {
    v16 = sub_2683D0598();

    if ((v16 & 1) == 0)
    {
      result = (*(v5 + 8))(a1, v4);
LABEL_20:
      *a2 = 0;
      *(a2 + 8) = 0;
      v53 = -1;
      goto LABEL_21;
    }
  }

  if (!sub_2683CCBC8())
  {
    sub_2683CF9D8();
  }

  v18 = v58;
  v19 = objc_opt_self();
  v20 = sub_2683CF9B8();

  *&v59 = 0;
  v21 = [v19 dataWithPropertyList:v20 format:200 options:0 error:&v59];

  v22 = v59;
  if (!v21)
  {
    v26 = v22;
    v27 = sub_2683CB388();

    swift_willThrow();
    v57 = a2;
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v28 = sub_2683CF7E8();
    __swift_project_value_buffer(v28, qword_28027C958);
    v29 = *(v5 + 16);
    v29(v9, a1, v4);
    v29(v18, a1, v4);
    v30 = v27;
    v31 = sub_2683CF7C8();
    v32 = sub_2683CFE78();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v59 = v56;
      *v33 = 136315906;
      v34 = sub_2683CCBB8();
      v55 = v32;
      v36 = v35;
      v37 = *(v5 + 8);
      v37(v9, v4);
      v38 = sub_2681610A0(v34, v36, &v59);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      v61 = v27;
      v39 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v40 = sub_2683CFAD8();
      v42 = sub_2681610A0(v40, v41, &v59);

      *(v33 + 14) = v42;
      *(v33 + 22) = 2080;
      swift_getErrorValue();
      v43 = sub_2683D0638();
      v45 = sub_2681610A0(v43, v44, &v59);

      *(v33 + 24) = v45;
      *(v33 + 32) = 2080;
      v46 = v58;
      v61 = sub_2683CCBC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC38, &qword_2683D4408);
      v47 = sub_2683CFAD8();
      v49 = v48;
      v37(v46, v4);
      v50 = sub_2681610A0(v47, v49, &v59);

      *(v33 + 34) = v50;
      _os_log_impl(&dword_2680EB000, v31, v55, "Decode failed for DI %s with error: %s [%s]\n User data: %s", v33, 0x2Au);
      v51 = v56;
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v51, -1, -1);
      MEMORY[0x26D617A40](v33, -1, -1);

      result = v37(a1, v4);
    }

    else
    {

      v52 = *(v5 + 8);
      v52(a1, v4);
      v52(v18, v4);
      result = (v52)(v9, v4);
    }

    a2 = v57;
    goto LABEL_20;
  }

  v23 = sub_2683CB468();
  v25 = v24;

  sub_2683CB348();
  swift_allocObject();
  sub_2683CB338();
  sub_268174368();
  sub_2683CB328();
  (*(v5 + 8))(a1, v4);

  result = sub_268143054(v23, v25);
  v53 = v60;
  *a2 = v59;
LABEL_21:
  *(a2 + 16) = v53;
  return result;
}

uint64_t sub_26834E04C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v74 = *MEMORY[0x277D85DE8];
  sub_2683CCBD8();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_1();
  v66 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_30();
  v11 = sub_2683CCBB8();
  v13 = v12;
  if (qword_28024CB40 != -1)
  {
    swift_once();
  }

  v67 = qword_28027CC38;
  v68 = unk_28027CC40;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  v14 = OUTLINED_FUNCTION_11_37();
  v15 = MEMORY[0x26D616690](v14);
  if (v11 == v67 && v13 == v68)
  {
  }

  else
  {
    v18 = OUTLINED_FUNCTION_16_30(v15, v16, v67);

    if ((v18 & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_2_52();
      result = v20(v19);
      goto LABEL_21;
    }
  }

  if (!sub_2683CCBC8())
  {
    sub_2683CF9D8();
  }

  v22 = v66;
  v23 = objc_opt_self();
  v24 = sub_2683CF9B8();

  v67 = 0;
  v26 = OUTLINED_FUNCTION_15_32(v25, sel_dataWithPropertyList_format_options_error_);

  v27 = 0;
  if (v26)
  {
    sub_2683CB468();

    sub_2683CB348();
    swift_allocObject();
    sub_2683CB338();
    v28 = sub_268328824();
    OUTLINED_FUNCTION_17_23(&type metadata for ChangeReminderInvocation, v29, v30, v31, v28);
    if (!v23)
    {
      v63 = OUTLINED_FUNCTION_2_52();
      v64(v63);

      result = OUTLINED_FUNCTION_18_29();
      v57 = v67;
      v58 = v68;
      v59 = v69;
      v60 = v70;
      v61 = v71;
      v62 = v72;
      goto LABEL_22;
    }

    v32 = v23;
    OUTLINED_FUNCTION_18_29();

    v22 = v66;
  }

  else
  {
    v33 = v27;
    v32 = sub_2683CB388();

    swift_willThrow();
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v34 = sub_2683CF7E8();
  __swift_project_value_buffer(v34, qword_28027C958);
  v35 = OUTLINED_FUNCTION_6_34();
  a1(v35);
  v36 = OUTLINED_FUNCTION_11_37();
  a1(v36);
  v37 = v32;
  v38 = sub_2683CF7C8();
  v39 = sub_2683CFE78();

  if (os_log_type_enabled(v38, v39))
  {
    swift_slowAlloc();
    v65 = OUTLINED_FUNCTION_10_30();
    v67 = v65;
    *v22 = 136315906;
    sub_2683CCBB8();
    OUTLINED_FUNCTION_14_28();
    v40 = *(v7 + 8);
    v41 = OUTLINED_FUNCTION_32_11();
    v43 = v42(v41);
    OUTLINED_FUNCTION_21_23(v43, v44, &v67);
    OUTLINED_FUNCTION_20_29();
    OUTLINED_FUNCTION_8_34();
    v73 = v32;
    v45 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v46 = OUTLINED_FUNCTION_22_20();
    sub_2681610A0(v46, v47, &v67);
    OUTLINED_FUNCTION_19_31();
    *(v22 + 14) = a1;
    *(v22 + 22) = v3;
    swift_getErrorValue();
    v48 = sub_2683D0638();
    sub_2681610A0(v48, v49, &v67);
    OUTLINED_FUNCTION_19_31();
    *(v22 + 24) = a1;
    *(v22 + 32) = v3;
    v73 = sub_2683CCBC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC38, &qword_2683D4408);
    OUTLINED_FUNCTION_22_20();
    OUTLINED_FUNCTION_14_28();
    v50 = OUTLINED_FUNCTION_32_11();
    v51 = v40(v50);
    OUTLINED_FUNCTION_21_23(v51, v52, &v67);
    OUTLINED_FUNCTION_20_29();
    *(v22 + 34) = v66;
    OUTLINED_FUNCTION_5_45(&dword_2680EB000, "Decode failed for DI %s with error: %s [%s]\n User data: %s", v39);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v65, -1, -1);
    OUTLINED_FUNCTION_9_34();

    v53 = OUTLINED_FUNCTION_13_34();
    result = v40(v53);
  }

  else
  {

    v54 = *(v7 + 8);
    v55 = OUTLINED_FUNCTION_13_34();
    v54(v55);
    (v54)(v22, v2);
    v56 = OUTLINED_FUNCTION_32_11();
    result = (v54)(v56);
  }

LABEL_21:
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
LABEL_22:
  *a2 = v57;
  a2[1] = v58;
  a2[2] = v59;
  a2[3] = v60;
  a2[4] = v61;
  a2[5] = v62;
  return result;
}

void sub_26834E5C8(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a2;
  v5 = sub_2683CCC68();
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x28223BE20](v5);
  v113 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2683CCBD8();
  v119 = *(v7 - 8);
  v120 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v117 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = &v108 - v11;
  MEMORY[0x28223BE20](v10);
  v118 = &v108 - v12;
  v122 = type metadata accessor for NotebookNLv3Intent(0);
  MEMORY[0x28223BE20](v122);
  v121 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2683CCC18();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v111 = &v108 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v108 - v21;
  v23 = sub_2683CE448();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v108 - v28;
  if (sub_2682206DC(a1, 0))
  {
    *(a3 + 57) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 73) = 3;
    return;
  }

  v110 = a3;
  v30 = *(v15 + 16);
  v109 = a1;
  v30(v22);
  v31 = (*(v15 + 88))(v22, v14);
  if (v31 == *MEMORY[0x277D5C128])
  {
    (*(v15 + 96))(v22, v14);
LABEL_7:
    v32 = *(v24 + 32);
    v32(v29, v22, v23);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v33 = sub_2683CF7E8();
    __swift_project_value_buffer(v33, qword_28027C958);
    (*(v24 + 16))(v27, v29, v23);
    v34 = sub_2683CF7C8();
    v35 = sub_2683CFE58();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v120 = v32;
      v37 = v36;
      v119 = swift_slowAlloc();
      v123 = v119;
      *v37 = 136315138;
      sub_2681BA0DC(&qword_28024E980, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
      v38 = sub_2683D0568();
      v40 = v39;
      (*(v24 + 8))(v27, v23);
      v41 = sub_2681610A0(v38, v40, &v123);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2680EB000, v34, v35, "[DisambiguationResponseTask] parsing nlIntent: %s", v37, 0xCu);
      v42 = v119;
      __swift_destroy_boxed_opaque_existential_0(v119);
      MEMORY[0x26D617A40](v42, -1, -1);
      v43 = v37;
      v32 = v120;
      MEMORY[0x26D617A40](v43, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v27, v23);
    }

    v44 = v121;
    v32(v121, v29, v23);
    if (qword_28024CB80 != -1)
    {
      swift_once();
    }

    sub_2681BA0DC(&qword_28024CDA8, type metadata accessor for NotebookNLv3Intent, &unk_2683F3D78);
    sub_2683CD5C8();
    sub_2681BA080(v44);
    v45 = v124;
    v46 = v110;
    if (v124)
    {
      *v110 = v123;
      v46[1] = v45;
      if (qword_28024CC48 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for NotebookTaskParser(0);
      __swift_project_value_buffer(v47, qword_28027CE50);
      sub_268372510();
LABEL_18:
      *(v46 + 73) = 0;
      return;
    }

    v110[8] = 0;
    *(v46 + 2) = 0u;
    *(v46 + 3) = 0u;
    *v46 = 0u;
    *(v46 + 1) = 0u;
    *(v46 + 36) = -256;
    return;
  }

  if (v31 == *MEMORY[0x277D5C158])
  {
    (*(v15 + 96))(v22, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E970, &unk_2683D8990);

    goto LABEL_7;
  }

  if (v31 == *MEMORY[0x277D5C150])
  {
    (*(v15 + 96))(v22, v14);
    v49 = v118;
    v48 = v119;
    v50 = v120;
    (v119[4])(v118, v22, v120);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v51 = sub_2683CF7E8();
    __swift_project_value_buffer(v51, qword_28027C958);
    v52 = v48[2];
    v53 = v116;
    v52(v116, v49, v50);
    v54 = sub_2683CF7C8();
    v55 = sub_2683CFE58();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v123 = v57;
      *v56 = 136446210;
      v58 = sub_2683CCBB8();
      v60 = v59;
      v61 = v53;
      v62 = v119[1];
      v62(v61, v120);
      v63 = sub_2681610A0(v58, v60, &v123);
      v49 = v118;

      *(v56 + 4) = v63;
      _os_log_impl(&dword_2680EB000, v54, v55, "[DisambiguationResponseTask] parsing direct invocation with id: %{public}s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x26D617A40](v57, -1, -1);
      v64 = v56;
      v50 = v120;
      MEMORY[0x26D617A40](v64, -1, -1);
    }

    else
    {

      v76 = v53;
      v62 = v48[1];
      v62(v76, v50);
    }

    v77 = v117;
    v52(v117, v49, v50);
    v78 = sub_26834D35C(v77);
    if (v79)
    {
      v46 = v110;
      *v110 = v78;
      v46[1] = v79;
      if (qword_28024CC48 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for NotebookTaskParser(0);
      __swift_project_value_buffer(v80, qword_28027CE50);
      sub_268372510();
      v62(v49, v50);
      goto LABEL_18;
    }

    v52(v77, v49, v50);
    sub_26834D9C4(v77, &v123);
    v95 = v125;
    if (v125 == 255)
    {
      v103 = sub_2683CF7C8();
      v104 = sub_2683CFE78();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_2680EB000, v103, v104, "[DisambiguationResponseTask] unsupported DI", v105, 2u);
        MEMORY[0x26D617A40](v105, -1, -1);
      }

      v62(v49, v50);
      v106 = v110;
      v110[8] = 0;
      *(v106 + 2) = 0u;
      *(v106 + 3) = 0u;
      *v106 = 0u;
      *(v106 + 1) = 0u;
      v107 = -256;
    }

    else
    {
      v96 = v123;
      v97 = v124;
      v62(v49, v50);
      if (v95)
      {
        v98 = v110;
        *v110 = v96;
        *(v98 + 73) = 1;
        return;
      }

      v106 = v110;
      *v110 = v96;
      v106[1] = v97;
      *(v106 + 1) = 0u;
      *(v106 + 2) = 0u;
      *(v106 + 3) = 0u;
      v106[8] = 0;
      v107 = 255;
    }

    *(v106 + 36) = v107;
  }

  else if (v31 == *MEMORY[0x277D5C160])
  {
    (*(v15 + 96))(v22, v14);
    v66 = v113;
    v65 = v114;
    v67 = v115;
    (*(v114 + 32))(v113, v22, v115);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v68 = sub_2683CF7E8();
    __swift_project_value_buffer(v68, qword_28027C958);
    v69 = sub_2683CF7C8();
    v70 = sub_2683CFE58();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v110;
    if (v71)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_2680EB000, v69, v70, "[DisambiguationResponseTask] parsing USO", v73, 2u);
      MEMORY[0x26D617A40](v73, -1, -1);
    }

    v74 = sub_26834F4A0(v66, v112);
    if (v74)
    {
      *v72 = v74;
      if (qword_28024CC48 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for NotebookTaskParser(0);
      __swift_project_value_buffer(v75, qword_28027CE50);
      sub_268372510();
      (*(v65 + 8))(v66, v67);
      *(v72 + 73) = 2;
    }

    else
    {
      v100 = sub_2683CF7C8();
      v101 = sub_2683CFE58();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_2680EB000, v100, v101, "[DisambiguationResponseTask] No valid selected USO given", v102, 2u);
        MEMORY[0x26D617A40](v102, -1, -1);
      }

      (*(v65 + 8))(v66, v67);
      v72[8] = 0;
      *(v72 + 2) = 0u;
      *(v72 + 3) = 0u;
      *v72 = 0u;
      *(v72 + 1) = 0u;
      *(v72 + 36) = -256;
    }
  }

  else
  {
    v81 = v30;
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v82 = sub_2683CF7E8();
    __swift_project_value_buffer(v82, qword_28027C958);
    v83 = v111;
    (v30)(v111, v109, v14);
    v84 = sub_2683CF7C8();
    v85 = sub_2683CFE78();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v123 = v122;
      *v86 = 136315138;
      v81(v18, v83, v14);
      v87 = sub_2683CFAD8();
      v88 = v83;
      v89 = v87;
      v91 = v90;
      v92 = *(v15 + 8);
      v92(v88, v14);
      v93 = sub_2681610A0(v89, v91, &v123);

      *(v86 + 4) = v93;
      _os_log_impl(&dword_2680EB000, v84, v85, "[DisambiguationResponseTask] parse got unsupported parse type: %s", v86, 0xCu);
      v94 = v122;
      __swift_destroy_boxed_opaque_existential_0(v122);
      MEMORY[0x26D617A40](v94, -1, -1);
      MEMORY[0x26D617A40](v86, -1, -1);
    }

    else
    {

      v92 = *(v15 + 8);
      v92(v83, v14);
    }

    v99 = v110;
    v110[8] = 0;
    *(v99 + 2) = 0u;
    *(v99 + 3) = 0u;
    *v99 = 0u;
    *(v99 + 1) = 0u;
    *(v99 + 36) = -256;
    v92(v22, v14);
  }
}

uint64_t sub_26834F4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CCC68();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  sub_2682DF700(v6, OUTLINED_FUNCTION_7_1, 0, &v19);
  if (*(&v20 + 1) == 1)
  {
    v8 = &qword_280251D68;
    v9 = &unk_2683E60D0;
LABEL_7:
    sub_26812C310(&v19, v8, v9);
    return 0;
  }

  v22[0] = v19;
  v22[1] = v20;
  sub_26834F68C(a2, &v19);
  v10 = *(&v20 + 1);
  if (!*(&v20 + 1))
  {
    sub_26818F5C8(v22);
    v8 = &qword_2802513F0;
    v9 = &qword_2683E3290;
    goto LABEL_7;
  }

  v11 = v21;
  __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
  v12 = (*(*(v11 + 16) + 8))(v22, v10);
  __swift_destroy_boxed_opaque_existential_0(&v19);
  if (!v12)
  {
    sub_26818F5C8(v22);
    return 0;
  }

  v13 = sub_2683CF6C8();
  v14 = sub_2683CF6B8();
  *(&v20 + 1) = v13;
  v21 = MEMORY[0x277D5FDD8];
  *&v19 = v14;
  sub_268171184();
  v16 = v15;

  sub_26818F5C8(v22);
  sub_26834F6FC(&v19);
  return v16;
}

uint64_t sub_26834F68C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802513F0, &qword_2683E3290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26834F750()
{
  result = qword_280253538;
  if (!qword_280253538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253538);
  }

  return result;
}

void OUTLINED_FUNCTION_5_45(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x2Au);
}

void OUTLINED_FUNCTION_9_34()
{

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_10_30()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_15_32(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_16_30(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_17_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2683CB328();
}

uint64_t OUTLINED_FUNCTION_18_29()
{

  return sub_268143054(v1, v0);
}

uint64_t OUTLINED_FUNCTION_19_31()
{
}

uint64_t OUTLINED_FUNCTION_20_29()
{
}

unint64_t OUTLINED_FUNCTION_21_23(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_2681610A0(v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_22_20()
{

  return sub_2683CFAD8();
}

uint64_t sub_26834F9A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v2 = OUTLINED_FUNCTION_23(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2683DB790;
  *(v5 + 32) = 7368801;
  *(v5 + 40) = 0xE300000000000000;
  v6 = *v0;
  if (*v0)
  {
    v7 = sub_2683CF138();
    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 72) = v7;
  *(v5 + 80) = 1702129518;
  *(v5 + 88) = 0xE400000000000000;
  v9 = v0[1];
  if (v9)
  {
    v10 = type metadata accessor for NotebookNoteConcept(0);
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
  }

  *(v5 + 96) = v11;
  *(v5 + 120) = v10;
  strcpy((v5 + 128), "punchoutAction");
  *(v5 + 143) = -18;
  NoteIntentHandledResponseParameters = type metadata accessor for CreateNoteIntentHandledResponseParameters(0);
  sub_26812C2A8(v0 + *(NoteIntentHandledResponseParameters + 24), v4, &unk_28024E7C0, &unk_2683D6CA0);
  v13 = sub_2683CF168();
  if (__swift_getEnumTagSinglePayload(v4, 1, v13) == 1)
  {

    sub_26812C310(v4, &unk_28024E7C0, &unk_2683D6CA0);
    *(v5 + 144) = 0u;
    *(v5 + 160) = 0u;
  }

  else
  {
    *(v5 + 168) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 144));
    (*(*(v13 - 8) + 32))(boxed_opaque_existential_0, v4, v13);
  }

  *(v5 + 176) = 0xD000000000000014;
  *(v5 + 184) = 0x80000002683FD0D0;
  v15 = *(v0 + *(NoteIntentHandledResponseParameters + 28));
  *(v5 + 216) = MEMORY[0x277D839B0];
  *(v5 + 192) = v15;
  return v5;
}

uint64_t sub_26834FBF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834FC0C()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(30);

  return v6(v5);
}

uint64_t sub_26834FD08(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834FD1C()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(28);

  return v6(v5);
}

uint64_t sub_26834FE18(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26834FE2C()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(32);

  return v6(v5);
}

uint64_t sub_26834FF28(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 112) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v7);
  *(v6 + 56) = swift_task_alloc();
  NoteIntentHandledResponseParameters = type metadata accessor for CreateNoteIntentHandledResponseParameters(0);
  *(v6 + 64) = NoteIntentHandledResponseParameters;
  OUTLINED_FUNCTION_23(NoteIntentHandledResponseParameters);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26834FFF8);
}

uint64_t sub_26834FFF8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 112);
  v6 = *(v1 + 24);
  v7 = sub_2683CF168();
  v8 = 1;
  __swift_storeEnumTagSinglePayload(v2 + v6, 1, 1, v7);
  *v2 = 0;
  v2[1] = 0;
  *(v2 + *(v1 + 28)) = v5;
  type metadata accessor for NotebookNoteConcept(0);
  v2[1] = sub_268397584(v4);
  sub_2683CF138();

  *v2 = sub_26818F730(v9);
  if (v3)
  {
    sub_2683CFB38();
    v8 = 0;
  }

  v10 = *(v0 + 56);
  __swift_storeEnumTagSinglePayload(v10, v8, 1, v7);
  sub_2683505E8(v10, v2 + v6);
  v11 = sub_26834F9A4();
  *(v0 + 80) = v11;
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_268350198;

  return v14(0xD000000000000020, 0x8000000268401130, v11);
}

uint64_t sub_268350198()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2683502C0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22_21();

  v2 = *(v0 + 8);
  v3 = *(v0 + 104);

  return v2(v3);
}

uint64_t sub_268350354()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22_21();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_268350438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = OUTLINED_FUNCTION_23(v9);
  MEMORY[0x28223BE20](v10);
  sub_26812C2A8(a1, &v14 - v11, &qword_28024D258, &unk_2683D1F60);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v12;
}

uint64_t sub_2683505E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_268350658(uint64_t a1)
{
  NoteIntentHandledResponseParameters = type metadata accessor for CreateNoteIntentHandledResponseParameters(0);
  (*(*(NoteIntentHandledResponseParameters - 8) + 8))(a1, NoteIntentHandledResponseParameters);
  return a1;
}

void sub_2683506DC(uint64_t a1)
{
  sub_2683507D4(319, &qword_280253560, MEMORY[0x277D55C08]);
  if (v1 <= 0x3F)
  {
    sub_2683507D4(319, &qword_280253568, type metadata accessor for NotebookNoteConcept);
    if (v2 <= 0x3F)
    {
      sub_2683507D4(319, &qword_28024EF30, MEMORY[0x277D55C48]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2683507D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2683CFFA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_22_21()
{
  v2 = *(v0 + 72);

  return sub_268350658(v2);
}

uint64_t sub_268350848()
{
  OUTLINED_FUNCTION_14();
  v1 = sub_2683CB528();
  v0[8] = v1;
  OUTLINED_FUNCTION_3_1(v1);
  v0[9] = v2;
  v0[10] = swift_task_alloc();
  v3 = sub_2683CB798();
  v0[11] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v0[12] = v4;
  v0[13] = swift_task_alloc();
  v5 = sub_2683CB7A8();
  v0[14] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v0[15] = v6;
  v0[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2683509DC(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[13];
  v24 = v1[14];
  v25 = v1[17];
  v7 = v1[11];
  v6 = v1[12];
  v9 = v1[9];
  v8 = v1[10];
  v10 = v1[8];
  sub_2683CB768();
  (*(v6 + 104))(v5, *MEMORY[0x277CC9988], v7);
  sub_2683CB508();
  sub_2683CB748();
  v11 = v8;
  v12 = *(v9 + 8);
  v12(v11, v10);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v4, v24);
  v13 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  v1[19] = v13;
  sub_268350E88(v2, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v10) == 1)
  {
    v14 = 0;
  }

  else
  {
    v15 = v1[17];
    v16 = v1[8];
    v14 = sub_2683CB4A8();
    v12(v15, v16);
  }

  [v13 setStartDate_];

  v17 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v18 = [v17 Intent];
  swift_unknownObjectRelease();
  v19 = [v18 publisherWithOptions_];

  v1[6] = sub_268350EF8;
  v1[7] = 0;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_2681F8BD8;
  v1[5] = &block_descriptor_2;
  v20 = _Block_copy(v1 + 2);
  v21 = [v19 filterWithIsIncluded_];
  v1[20] = v21;
  _Block_release(v20);

  v22 = swift_task_alloc();
  v1[21] = v22;
  *v22 = v1;
  v22[1] = sub_268350CDC;

  return sub_268350FD4(v21);
}

uint64_t sub_268350CDC()
{
  OUTLINED_FUNCTION_14();
  *(*v0 + 176) = v1;

  v2 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_268350DD0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  sub_268220674(v2);

  v3 = *(v0 + 8);
  v4 = *(v0 + 176);

  return v3(v4);
}

uint64_t sub_268350E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268350EF8(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    if ([v1 donatedBySiri] && (v3 = sub_2683516B0(v2), v4))
    {
      if (v3 == 0xD000000000000010 && v4 == 0x80000002684011B0)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_2683D0598();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_268350FF4()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2683510EC;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD000000000000014, 0x8000000268401170, sub_26835148C, v2, v4);
}

uint64_t sub_2683510EC()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v0);
}

void sub_268351210(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v19 = sub_2683514FC;
  v20 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_26835159C;
  v18 = &block_descriptor_9;
  v12 = _Block_copy(&aBlock);

  v19 = sub_26835164C;
  v20 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_268351654;
  v18 = &block_descriptor_12;
  v13 = _Block_copy(&aBlock);

  v14 = [a2 sinkWithCompletion:v12 shouldContinue:v13];
  _Block_release(v13);
  _Block_release(v12);
}

uint64_t sub_268351494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  return sub_2683CFD58();
}

uint64_t sub_2683514FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_268351494(a1, v1 + v8, v9);
}

void sub_26835159C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_268351604(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = 1;
  return 0;
}

uint64_t sub_268351654(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_2683516B0(void *a1)
{
  v1 = [a1 intentClass];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_268351748()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t *sub_26835179C(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = *(a1 + 16);
  *(v1 + 24) = v3;
  *(v1 + 32) = *(a1 + 24);
  if (v3)
  {
  }

  else
  {
    v4 = sub_2683CF208();
    sub_2683CFE78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253240, &qword_2683F1440);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2683D1EC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253588, &qword_2683F3040);
    v6 = sub_2683CFAD8();
    v8 = v7;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_268327B74();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_2683CF708("Building an instance of %s without all required inputs", v10);
  }

  return v1;
}

double sub_2683518E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x65746144657564 && a2 == 0xE700000000000000;
  if (!v6 && (sub_2683D0598() & 1) == 0)
  {
    v10 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
    if (v10 || (sub_2683D0598() & 1) != 0)
    {
      v11 = *(v3 + 32);
      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = v11;
      return result;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 24);
  if (!v9)
  {
LABEL_16:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = sub_2683CEFE8();
  *a3 = v9;

  return result;
}

uint64_t sub_2683519E0(uint64_t a1)
{
  v1 = sub_2683D0408();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268351A34(char a1)
{
  if (a1)
  {
    return 0x7961446C6C417369;
  }

  else
  {
    return 0x65746144657564;
  }
}

uint64_t sub_268351A90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2683519E0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_268351AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268351A34(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268351AF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2683519E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_268351B28(uint64_t a1)
{
  v2 = sub_268352174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268351B64(uint64_t a1)
{
  v2 = sub_268352174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268351BC8()
{
  sub_268351BA0();

  return MEMORY[0x2821FE8D8](v0, 33, 7);
}

uint64_t sub_268351C20(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253580, &unk_2683F3030);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268352174();
  sub_2683D0718();
  v15 = *(v3 + 24);
  v14[7] = 0;
  sub_2683CEFE8();
  OUTLINED_FUNCTION_0_63();
  sub_2683521C8(v11, 255, v12, MEMORY[0x277D55B98]);
  sub_2683D0508();
  if (!v2)
  {
    v14[6] = 1;
    sub_2683D0528();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_268351DBC(void *a1)
{
  v2 = swift_allocObject();
  sub_268351E30(a1);
  return v2;
}

uint64_t sub_268351E30(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253570, &qword_2683F3028);
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268352174();
  sub_2683D06F8();
  if (v2)
  {

    type metadata accessor for NotebookTemporalEventTriggerConcept();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2683CEFE8();
    OUTLINED_FUNCTION_0_63();
    sub_2683521C8(v6, 255, v7, MEMORY[0x277D55BA0]);
    sub_2683D0468();
    *(v1 + 24) = v12;
    v9 = sub_2683D0488();
    v10 = OUTLINED_FUNCTION_0_53();
    v11(v10);
    *(v3 + 32) = v9 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_268352094@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268351DBC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_268352174()
{
  result = qword_280253578;
  if (!qword_280253578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253578);
  }

  return result;
}

uint64_t sub_2683521C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_BYTE *storeEnumTagSinglePayload for NotebookTemporalEventTriggerConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2683522F0()
{
  result = qword_280253590;
  if (!qword_280253590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253590);
  }

  return result;
}

unint64_t sub_268352348()
{
  result = qword_280253598;
  if (!qword_280253598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253598);
  }

  return result;
}

unint64_t sub_2683523A0()
{
  result = qword_2802535A0;
  if (!qword_2802535A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802535A0);
  }

  return result;
}

void sub_268352438()
{
  OUTLINED_FUNCTION_30_0();
  type metadata accessor for AppIntentNode(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_19_3();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024CE28, &qword_2683D1870);
  v9 = OUTLINED_FUNCTION_23(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_29_18();
  sub_268356630();
  sub_2681340E8(v0, v12, &qword_28024CE28, &qword_2683D1870);
  OUTLINED_FUNCTION_2_6(v12);
  if (!v14)
  {
    sub_268359F58(v12, v7);
    sub_268359EF4(v7, v4);
    sub_2683533F0();
    sub_2683CD078();
    sub_2683CD058();
    OUTLINED_FUNCTION_18_30();
    sub_26835844C(v15, v16, &unk_2683F3FA8);
    sub_2683CD5C8();

    sub_268359FB4(v4, type metadata accessor for AppIntentNode);
    sub_268359FB4(v7, type metadata accessor for AppIntentNode);
  }

  sub_26812D9E0(v0, &qword_28024CE28, &qword_2683D1870);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_29_0();
}

void sub_268352650()
{
  OUTLINED_FUNCTION_130();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D390, &qword_2683D22E8);
  OUTLINED_FUNCTION_23(v0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v18[-v2];
  v4 = type metadata accessor for NotebookLocationIntentNode(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  sub_268352FE8();
  v6 = OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_72(v6, v7, v4);
  if (v16)
  {
    sub_26812D9E0(v3, &qword_28024D390, &qword_2683D22E8);
    if (qword_28024CBB0 != -1)
    {
      OUTLINED_FUNCTION_23_26(&qword_28024CBB0);
    }

    type metadata accessor for NotebookNLv3Intent(0);
    OUTLINED_FUNCTION_0_64();
    sub_26835844C(v8, v9, &unk_2683F3D78);
    OUTLINED_FUNCTION_40_15();
    sub_2683CD5C8();
    switch(v18[15])
    {
      case 1:
      case 2:
      case 3:
        v17 = sub_2683D0598();

        if ((v17 & 1) == 0)
        {
          goto LABEL_19;
        }

        break;
      case 4:
LABEL_19:
        OUTLINED_FUNCTION_40_15();
        sub_2683CD5C8();
        switch(v18[14])
        {
          case 1:
            goto LABEL_20;
          case 4:
            goto LABEL_23;
          default:
            sub_2683D0598();

            break;
        }

        break;
      default:
LABEL_20:

        break;
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_0_0();
    sub_268359F58(v10, v11);
    v12 = sub_268357668();
    if (v12 != 9)
    {
      v13 = v12;
      if (qword_28024CC30 != -1)
      {
        swift_once();
      }

      if (sub_2681F6C84(v13, qword_2802535A8))
      {
        goto LABEL_11;
      }
    }

    v14 = sub_268357668();
    if (v14 == 9)
    {
LABEL_11:
      OUTLINED_FUNCTION_4_48();
    }

    else
    {
      v16 = sub_2683556FC(v14) == 0xD000000000000010 && 0x80000002683FA6A0 == v15;
      if (!v16)
      {
        sub_2683D0598();
      }

      OUTLINED_FUNCTION_4_48();
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_131();
}

void sub_268352A2C()
{
  OUTLINED_FUNCTION_30_0();
  v55 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253780, &qword_2683F3DA8);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v53[0] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0F8, &unk_2683DB2B0);
  v8 = OUTLINED_FUNCTION_23(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19_3();
  v11 = v9 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_43_11();
  MEMORY[0x28223BE20](v14);
  v54 = v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0F0, &qword_2683DB2A8);
  OUTLINED_FUNCTION_23(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v53[5] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253788, &qword_2683F3DB0);
  OUTLINED_FUNCTION_23(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  v53[4] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253790, &qword_2683F3DB8);
  OUTLINED_FUNCTION_23(v22);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_0();
  v53[3] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253798, &unk_2683F3DC0);
  v26 = OUTLINED_FUNCTION_23(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19_3();
  v53[2] = v27 - v28;
  MEMORY[0x28223BE20](v29);
  v53[1] = v53 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_23(v31);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_30_15();
  v33 = sub_2683CD358();
  OUTLINED_FUNCTION_0_3();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_56_5();
  if (qword_28024CBA0 != -1)
  {
    OUTLINED_FUNCTION_6_35(&qword_28024CBA0);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v37, v38, &unk_2683F3D78);
  sub_2683CD5C8();
  OUTLINED_FUNCTION_72(v2, 1, v33);
  if (!v46)
  {
    v41 = OUTLINED_FUNCTION_45_7();
    v42(v41);
    sub_2683CD2C8();
    sub_2683CD298();
    sub_2683CD338();
    sub_2683CD348();
    sub_2683CD2F8();
    sub_2683CD2D8();
    v43 = sub_2683CD3B8();
    v44 = OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_72(v44, v45, v43);
    if (v46)
    {
      sub_26812D9E0(v0, &qword_28024F0F8, &unk_2683DB2B0);
    }

    else
    {
      v47 = sub_2683CD3A8();
      OUTLINED_FUNCTION_23_0();
      (*(v48 + 8))(v0, v43);
      if (v47 != 2 && (v47 & 1) != 0)
      {
        sub_2683CD2D8();
        goto LABEL_13;
      }
    }

    __swift_storeEnumTagSinglePayload(v54, 1, 1, v43);
LABEL_13:
    sub_2683CD2A8();
    OUTLINED_FUNCTION_72(v11, 1, v43);
    if (v46)
    {
      sub_26812D9E0(v11, &qword_28024F0F8, &unk_2683DB2B0);
    }

    else
    {
      v49 = sub_2683CD3A8();
      OUTLINED_FUNCTION_23_0();
      (*(v50 + 8))(v11, v43);
      if (v49 != 2 && (v49 & 1) != 0)
      {
        sub_2683CD2A8();
LABEL_20:
        sub_2683CD318();
        sub_2683CD308();
        sub_2683CD328();
        v40 = v55;
        sub_2683CD2B8();
        (*(v35 + 8))(v1, v33);
        v39 = 0;
        goto LABEL_21;
      }
    }

    v51 = OUTLINED_FUNCTION_33_1();
    __swift_storeEnumTagSinglePayload(v51, v52, 1, v43);
    goto LABEL_20;
  }

  sub_26812D9E0(v2, &qword_28024D398, &qword_2683D22F0);
  v39 = 1;
  v40 = v55;
LABEL_21:
  __swift_storeEnumTagSinglePayload(v40, v39, 1, v33);
  OUTLINED_FUNCTION_29_0();
}

void sub_268352FE8()
{
  OUTLINED_FUNCTION_130();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_2();
  v6 = sub_2683CD628();
  OUTLINED_FUNCTION_0_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_56_5();
  if (qword_28024CBB8 != -1)
  {
    OUTLINED_FUNCTION_24_18(&qword_28024CBB8);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v10, v11, &unk_2683F3D78);
  OUTLINED_FUNCTION_32_3();
  sub_2683CD5A8();
  OUTLINED_FUNCTION_20_30(v0);
  if (v12)
  {
    sub_26812D9E0(v0, &qword_2802535F8, &unk_2683F32E0);
    v17 = type metadata accessor for NotebookLocationIntentNode(0);
    v15 = v3;
    v16 = 1;
  }

  else
  {
    (*(v8 + 32))(v1, v0, v6);
    (*(v8 + 16))(v3, v1, v6);
    v13 = *(v8 + 8);

    v13(v1, v6);
    v14 = type metadata accessor for NotebookLocationIntentNode(0);
    v15 = OUTLINED_FUNCTION_47_6(v14);
  }

  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  OUTLINED_FUNCTION_131();
}

void sub_2683531D0()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_15();
  v6 = sub_2683CD628();
  OUTLINED_FUNCTION_0_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_43_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_29_18();
  if (qword_28024CC38 != -1)
  {
    OUTLINED_FUNCTION_22_22(&qword_28024CC38);
  }

  type metadata accessor for NotebookLocationIntentNode(0);
  sub_26835844C(&qword_2802536A8, type metadata accessor for NotebookLocationIntentNode, &unk_2683F36F0);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_20_30(v1);
  if (v11)
  {
    sub_26812D9E0(v1, &qword_2802535F8, &unk_2683F32E0);
    v17 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_45_7();
    v13(v12);
    v14 = OUTLINED_FUNCTION_40_15();
    v15(v14);
    v16 = sub_2683CD138();
    OUTLINED_FUNCTION_42_3(v16);
    sub_2683CD128();
    sub_2683CD478();
    (*(v8 + 8))(v0, v6);
    v17 = 0;
  }

  v18 = sub_2683CD4A8();
  __swift_storeEnumTagSinglePayload(v3, v17, 1, v18);
  OUTLINED_FUNCTION_29_0();
}

void sub_2683533F0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253860, &qword_2683F3DE0);
  OUTLINED_FUNCTION_23(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v82 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253868, &qword_2683F3DE8);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v83 = v6;
  v79 = sub_2683CD278();
  OUTLINED_FUNCTION_0_3();
  v81 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v80 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253870, &qword_2683F3DF0);
  OUTLINED_FUNCTION_23(v11);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v84 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253878, &qword_2683F3DF8);
  OUTLINED_FUNCTION_23(v14);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v77 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251EE8, &unk_2683F3E00);
  OUTLINED_FUNCTION_23(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_28_2();
  v20 = sub_2683CD418();
  OUTLINED_FUNCTION_0_3();
  v85 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_3();
  v25 = v24 - v23;
  sub_2683CD078();
  sub_2683CD048();
  type metadata accessor for AppIntentNode(0);
  OUTLINED_FUNCTION_18_30();
  sub_26835844C(v26, v27, &unk_2683F3FA8);
  sub_2683CD5C8();

  if (v87)
  {
    goto LABEL_9;
  }

  v78 = v25;
  sub_2683CD058();
  sub_2683CD5B8();

  v28 = sub_2683CD548();
  OUTLINED_FUNCTION_20_30(v17);
  if (v36)
  {
    sub_26812D9E0(v17, &qword_280253878, &qword_2683F3DF8);
    v29 = OUTLINED_FUNCTION_8_8();
    __swift_storeEnumTagSinglePayload(v29, v30, 1, v20);
LABEL_7:
    v37 = &qword_280251EE8;
    v38 = &unk_2683F3E00;
    v39 = v0;
LABEL_8:
    sub_26812D9E0(v39, v37, v38);
    goto LABEL_9;
  }

  v31 = sub_2683CD538();
  OUTLINED_FUNCTION_23_0();
  (*(v32 + 8))(v17, v28);
  sub_268224B98(v31, v0);

  v33 = OUTLINED_FUNCTION_8_8();
  v34 = v20;
  OUTLINED_FUNCTION_72(v33, v35, v20);
  if (v36)
  {
    goto LABEL_7;
  }

  v40 = v85;
  (*(v85 + 32))(v78, v0, v20);
  v41 = v84;
  sub_2683CD3D8();
  sub_2683CD3C8();
  OUTLINED_FUNCTION_2_6(v41);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_16_31();
    v44(v43);
    v37 = &qword_280253870;
    v38 = &qword_2683F3DF0;
LABEL_23:
    v39 = v41;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_1_43();
  v45 = OUTLINED_FUNCTION_0_0();
  v47 = v46(v45);
  if (v47 != *MEMORY[0x277D5E5C8])
  {
    v57 = OUTLINED_FUNCTION_16_31();
    v58(v57);
LABEL_18:
    v59 = OUTLINED_FUNCTION_0_0();
    v60(v59);
    goto LABEL_9;
  }

  v48 = OUTLINED_FUNCTION_0_0();
  v49(v48);
  v50 = v82;
  sub_2683CD408();
  v51 = sub_2683CD3F8();
  OUTLINED_FUNCTION_2_6(v50);
  if (v36)
  {
    v52 = OUTLINED_FUNCTION_16_31();
    v53(v52);

    sub_26812D9E0(v50, &qword_280253860, &qword_2683F3DE0);
    sub_2683CD288();
    v41 = v83;
    v54 = OUTLINED_FUNCTION_33_1();
    __swift_storeEnumTagSinglePayload(v54, v55, 1, v56);
LABEL_22:
    v37 = &qword_280253868;
    v38 = &qword_2683F3DE8;
    goto LABEL_23;
  }

  v41 = v83;
  sub_2683CD3E8();
  OUTLINED_FUNCTION_23_0();
  (*(v61 + 8))(v50, v51);
  sub_2683CD288();
  OUTLINED_FUNCTION_2_6(v41);
  if (v62)
  {
    v63 = OUTLINED_FUNCTION_16_31();
    v64(v63);

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_1_43();
  v65 = OUTLINED_FUNCTION_0_0();
  v67 = v66(v65);
  if (v67 != *MEMORY[0x277D5E588])
  {
    v75 = OUTLINED_FUNCTION_16_31();
    v76(v75);

    goto LABEL_18;
  }

  v68 = OUTLINED_FUNCTION_0_0();
  v69(v68);
  v71 = v80;
  v70 = v81;
  v72 = v79;
  (*(v81 + 32))(v80, v41, v79);
  v73 = sub_2683CD268();
  v84 = v34;
  v86 = 0xD000000000000010;
  v87 = 0x8000000268401620;
  MEMORY[0x28223BE20](v73);
  *(&v77 - 2) = &v86;
  v74 = sub_2681A073C(sub_2681A12C0, (&v77 - 4), v73);

  (*(v70 + 8))(v71, v72);
  (*(v40 + 8))(v78, v84);
  if (!v74)
  {
  }

LABEL_9:
  OUTLINED_FUNCTION_29_0();
}

void sub_268353B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  OUTLINED_FUNCTION_23(v23);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_28_2();
  v25 = sub_2683CD628();
  OUTLINED_FUNCTION_0_3();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19_3();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  if (qword_28024CC00 != -1)
  {
    OUTLINED_FUNCTION_27_16(&qword_28024CC00);
  }

  v35 = qword_28027CD40;
  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v36, v37, &unk_2683F3D78);
  OUTLINED_FUNCTION_30_7();
  sub_2683CD5A8();
  OUTLINED_FUNCTION_2_6(v20);
  if (v38)
  {
    sub_26812D9E0(v20, &qword_2802535F8, &unk_2683F32E0);
  }

  else
  {
    v39 = *(v27 + 32);
    v39(v34, v20, v25);
    (*(v27 + 16))(v31, v34, v25);
    v40 = *(v27 + 8);

    v40(v34, v25);
    v41 = type metadata accessor for NotebookContactTriggerNode(0);
    v42 = OUTLINED_FUNCTION_42_3(v41);
    v39((v42 + OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_intentNode), v31, v25);
    *(v42 + OBJC_IVAR____TtC12SiriNotebook26NotebookContactTriggerNode_ontologyNode) = v35;
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268353D68()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_15();
  v6 = sub_2683CD628();
  OUTLINED_FUNCTION_0_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_43_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_29_18();
  if (qword_28024CC08 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_64();
  sub_26835844C(v11, v12, &unk_2683F3D78);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_20_30(v1);
  if (v13)
  {
    sub_26812D9E0(v1, &qword_2802535F8, &unk_2683F32E0);
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_45_7();
    v15(v14);
    v16 = OUTLINED_FUNCTION_40_15();
    v17(v16);
    v18 = sub_2683CD108();
    OUTLINED_FUNCTION_42_3(v18);
    sub_2683CD0F8();
    OUTLINED_FUNCTION_47_0();
    *(v3 + 24) = sub_2683CD468();
    *(v3 + 32) = sub_26835844C(&qword_280251C50, MEMORY[0x277D5E668], &unk_2683E5BA0);
    __swift_allocate_boxed_opaque_existential_0(v3);
    sub_2683CD458();
    (*(v8 + 8))(v0, v6);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268353FB8()
{
  if (qword_28024CB58 != -1)
  {
    swift_once();
  }
}

void sub_268354014()
{
  OUTLINED_FUNCTION_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683F31A0;
  if (qword_28024CB60 != -1)
  {
    OUTLINED_FUNCTION_28_18(&qword_28024CB60);
  }

  v1 = qword_28027CCA0;
  v2 = sub_2683CD078();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_28024CB80;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_28027CCC0;
  v6 = OUTLINED_FUNCTION_58_5();
  *(v0 + 96) = v6;
  OUTLINED_FUNCTION_1_57();
  v11 = OUTLINED_FUNCTION_59_5(v7, v8, v9, v10);
  *(v0 + 104) = v11;
  *(v0 + 72) = v5;
  v12 = qword_28024CB68;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_2_53(&qword_28024CB68);
  }

  v13 = qword_28027CCA8;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535E8, &qword_2683F32D0);
  OUTLINED_FUNCTION_1_57();
  *(v0 + 144) = sub_26818A0C8(v14, &qword_2802535E8, &qword_2683F32D0, v15);
  *(v0 + 112) = v13;
  v16 = qword_28024CB70;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_33(&qword_28024CB70);
  }

  v17 = qword_28027CCB0;
  v18 = OUTLINED_FUNCTION_30_7();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  *(v0 + 176) = v20;
  OUTLINED_FUNCTION_1_57();
  v23 = sub_26818A0C8(v21, &qword_28024F0D0, &qword_2683DB1C8, v22);
  *(v0 + 184) = v23;
  *(v0 + 152) = v17;
  v24 = qword_28024CB78;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_28027CCB8;
  *(v0 + 216) = v20;
  *(v0 + 224) = v23;
  *(v0 + 192) = v25;
  v26 = qword_28024CBA0;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_6_35(&qword_28024CBA0);
  }

  v27 = qword_28027CCE0;
  v28 = OUTLINED_FUNCTION_30_7();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  *(v0 + 256) = v30;
  OUTLINED_FUNCTION_1_57();
  v33 = sub_26818A0C8(v31, &qword_28024EFB8, &qword_2683DAF00, v32);
  *(v0 + 264) = v33;
  *(v0 + 232) = v27;
  v34 = qword_28024CBA8;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_28027CCE8;
  *(v0 + 296) = v30;
  *(v0 + 304) = v33;
  *(v0 + 272) = v35;
  v36 = qword_28024CBB8;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_24_18(&qword_28024CBB8);
  }

  v37 = qword_28027CCF8;
  v38 = sub_2683CCFB8();
  *(v0 + 336) = v38;
  *(v0 + 344) = v3;
  *(v0 + 312) = v37;
  v39 = qword_28024CB98;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = qword_28027CCD8;
  v41 = OUTLINED_FUNCTION_32_3();
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
  OUTLINED_FUNCTION_1_57();
  *(v0 + 384) = sub_26818A0C8(v43, &qword_28024F0A8, &qword_2683F32F0, v44);
  *(v0 + 352) = v40;
  v45 = qword_28024CBB0;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_23_26(&qword_28024CBB0);
  }

  v46 = qword_28027CCF0;
  v47 = OUTLINED_FUNCTION_32_3();
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
  OUTLINED_FUNCTION_1_57();
  *(v0 + 424) = sub_26818A0C8(v49, &qword_280253608, &qword_2683F32F8, v50);
  *(v0 + 392) = v46;
  v51 = qword_28024CBC0;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = qword_28027CD00;
  *(v0 + 456) = v6;
  *(v0 + 464) = v11;
  *(v0 + 432) = v52;
  v53 = qword_28024CBC8;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = qword_28027CD08;
  *(v0 + 496) = v6;
  *(v0 + 504) = v11;
  *(v0 + 472) = v54;
  v55 = qword_28024CBD0;

  if (v55 != -1)
  {
    swift_once();
  }

  v56 = qword_28027CD10;
  *(v0 + 536) = v6;
  *(v0 + 544) = v11;
  *(v0 + 512) = v56;
  v57 = qword_28024CBE0;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = qword_28027CD20;
  *(v0 + 576) = v6;
  *(v0 + 584) = v11;
  *(v0 + 552) = v58;
  v59 = qword_28024CBD8;

  if (v59 != -1)
  {
    swift_once();
  }

  v60 = qword_28027CD18;
  *(v0 + 616) = v6;
  *(v0 + 624) = v11;
  *(v0 + 592) = v60;
  v61 = qword_28024CC28;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = qword_28027CD68;
  *(v0 + 656) = v38;
  *(v0 + 664) = v3;
  *(v0 + 632) = v62;
  v63 = qword_28024CBE8;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = qword_28027CD28;
  *(v0 + 696) = v6;
  *(v0 + 704) = v11;
  *(v0 + 672) = v64;
  v65 = qword_28024CBF0;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = qword_28027CD30;
  *(v0 + 736) = v6;
  *(v0 + 744) = v11;
  *(v0 + 712) = v66;
  v67 = qword_28024CBF8;

  if (v67 != -1)
  {
    OUTLINED_FUNCTION_26_23(&qword_28024CBF8);
  }

  v68 = qword_28027CD38;
  *(v0 + 776) = OUTLINED_FUNCTION_58_5();
  OUTLINED_FUNCTION_1_57();
  *(v0 + 784) = OUTLINED_FUNCTION_59_5(v69, v70, v71, v72);
  *(v0 + 752) = v68;
  v73 = qword_28024CB88;

  if (v73 != -1)
  {
    OUTLINED_FUNCTION_25_25(&qword_28024CB88);
  }

  v74 = qword_28027CCC8;
  *(v0 + 816) = OUTLINED_FUNCTION_58_5();
  OUTLINED_FUNCTION_1_57();
  *(v0 + 824) = OUTLINED_FUNCTION_59_5(v75, v76, v77, v78);
  *(v0 + 792) = v74;
  v79 = qword_28024CB90;

  if (v79 != -1)
  {
    swift_once();
  }

  v80 = qword_28027CCD0;
  *(v0 + 856) = OUTLINED_FUNCTION_58_5();
  OUTLINED_FUNCTION_1_57();
  *(v0 + 864) = OUTLINED_FUNCTION_59_5(v81, v82, v83, v84);
  *(v0 + 832) = v80;
  v85 = qword_28024CC10;

  if (v85 != -1)
  {
    swift_once();
  }

  v86 = qword_28027CD50;
  *(v0 + 896) = v38;
  *(v0 + 904) = v3;
  *(v0 + 872) = v86;
  v87 = qword_28024CC00;

  if (v87 != -1)
  {
    OUTLINED_FUNCTION_27_16(&qword_28024CC00);
  }

  v88 = qword_28027CD40;
  *(v0 + 936) = v38;
  *(v0 + 944) = v3;
  *(v0 + 912) = v88;
  v89 = sub_2683CD098();
  OUTLINED_FUNCTION_42_3(v89);

  OUTLINED_FUNCTION_53_6();
  qword_28027CC98 = sub_2683CD088();
  OUTLINED_FUNCTION_131();
}

uint64_t sub_268354858()
{
  sub_2683CD078();
  swift_allocObject();
  result = sub_2683CD068();
  qword_28027CCA0 = result;
  return result;
}

uint64_t sub_2683548F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0D0, &qword_2683DB1C8);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(18);
  result = sub_2683CD148();
  qword_28027CCB8 = result;
  return result;
}

uint64_t sub_26835496C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F0, &qword_2683F32D8);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(17);
  result = sub_2683CD148();
  qword_28027CCC8 = result;
  return result;
}

uint64_t sub_2683549C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253620, &unk_2683F3300);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(21);
  result = sub_2683CD148();
  qword_28027CCD0 = result;
  return result;
}

uint64_t sub_268354A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0A8, &qword_2683F32F0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(20);
  result = sub_2683CD148();
  qword_28027CCD8 = result;
  return result;
}

uint64_t sub_268354A74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFB8, &qword_2683DAF00);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(19);
  result = sub_2683CD148();
  qword_28027CCE0 = result;
  return result;
}

uint64_t sub_268354ACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFB8, &qword_2683DAF00);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(20);
  result = sub_2683CD148();
  qword_28027CCE8 = result;
  return result;
}

uint64_t sub_268354B24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253608, &qword_2683F32F8);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(25);
  result = sub_2683CD148();
  qword_28027CCF0 = result;
  return result;
}

uint64_t sub_268354B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D1EC0;
  if (qword_28024CC38 != -1)
  {
    OUTLINED_FUNCTION_22_22(&qword_28024CC38);
  }

  v1 = qword_28027CD70;
  v2 = sub_2683CCFB8();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_42_3(v2);

  OUTLINED_FUNCTION_13_35(16);
  result = sub_2683CCF98();
  qword_28027CCF8 = result;
  return result;
}

uint64_t sub_268354C78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(19);
  result = sub_2683CD148();
  qword_28027CD08 = result;
  return result;
}

uint64_t sub_268354CFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_42_3(v6);
  OUTLINED_FUNCTION_53_6();
  result = sub_2683CD148();
  *a5 = result;
  return result;
}

uint64_t sub_268354D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  swift_allocObject();
  result = sub_2683CD148();
  qword_28027CD18 = result;
  return result;
}

uint64_t sub_268354DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(19);
  result = sub_2683CD148();
  qword_28027CD20 = result;
  return result;
}

uint64_t sub_268354E0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(25);
  result = sub_2683CD148();
  qword_28027CD28 = result;
  return result;
}

uint64_t sub_268354E64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFA8, &unk_2683F32C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(21);
  result = sub_2683CD148();
  qword_28027CD30 = result;
  return result;
}

uint64_t sub_268354EBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0C0, &qword_2683DB1C0);
  OUTLINED_FUNCTION_42_3(v0);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_13_35(18);
  result = sub_2683CD148();
  qword_28027CD38 = result;
  return result;
}

uint64_t sub_268354F14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251BF0, &unk_2683E5C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D1EC0;
  if (qword_28024CC40 != -1)
  {
    swift_once();
  }

  v1 = qword_28027CD78;
  v2 = sub_2683CCFB8();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  swift_allocObject();

  result = sub_2683CCF98();
  qword_28027CD40 = result;
  return result;
}

uint64_t sub_268355000()
{
  sub_2683CD108();
  swift_allocObject();
  result = sub_2683CD0F8();
  qword_28027CD48 = result;
  return result;
}