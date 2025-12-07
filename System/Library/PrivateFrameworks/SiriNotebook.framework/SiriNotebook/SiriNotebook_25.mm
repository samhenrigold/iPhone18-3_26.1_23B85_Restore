uint64_t sub_268369F6C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_268369F8C);
}

uint64_t sub_268369F8C()
{
  OUTLINED_FUNCTION_14();
  v4 = (*(v0[3] + 32) + **(v0[3] + 32));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26836A07C;
  v2 = v0[2];

  return v4(v2);
}

uint64_t sub_26836A07C()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_26836A168()
{
  sub_2683CC868();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCF0, &qword_2683DE630);
  swift_allocObject();
  type metadata accessor for NotebookContinueReadingPromptStrategy();
  sub_26836A854();

  return sub_2683CBB88();
}

uint64_t sub_26836A1F0()
{

  return v0;
}

uint64_t sub_26836A218()
{
  sub_26836A1F0();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_26836A274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26836A8A8;

  return sub_268369ACC();
}

uint64_t sub_26836A31C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26836A8A8;

  return sub_268369F6C(a1);
}

uint64_t sub_26836A3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for NotebookContinueReadingPromptStrategy();
  *v8 = v4;
  v8[1] = sub_26836A8A8;

  return MEMORY[0x2821BA040](a1, a2, v9, a4);
}

uint64_t sub_26836A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for NotebookContinueReadingPromptStrategy();
  *v8 = v4;
  v8[1] = sub_26836A8A8;

  return MEMORY[0x2821BA048](a1, a2, v9, a4);
}

uint64_t sub_26836A53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26836A8A8;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_26836A5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26836A6A4;

  return MEMORY[0x2821BA028](a1, a2, a3);
}

uint64_t sub_26836A6A4()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_26836A790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26836A8A8;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

unint64_t sub_26836A854()
{
  result = qword_280253A98;
  if (!qword_280253A98)
  {
    type metadata accessor for NotebookContinueReadingPromptStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253A98);
  }

  return result;
}

id sub_26836A8AC(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_268229348();
  if (!v3)
  {
    v10 = v2;

    v9 = MEMORY[0x277D84F90];
LABEL_10:
    sub_26836AC3C(v9, v2);

    return v2;
  }

  v4 = v3;
  v11 = MEMORY[0x277D84F90];
  v5 = v2;
  result = sub_2683D0228();
  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_26836ACB0();
    v7 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D616C90](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      ++v7;
      sub_26836A9F8(v8);
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
    }

    while (v4 != v7);

    v9 = v11;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_26836A9F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2683B9E1C();
  v20[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2681D8BC0();
  v7 = sub_2683CFA38();
  v9 = v8;

  sub_26813F2FC(v7, v9, v5, &selRef_setContents_);
  v10 = [a1 title];
  v11 = [v10 spokenPhrase];

  v12 = sub_2683CFA78();
  v14 = v13;

  sub_26813F2FC(v12, v14, v5, &selRef_setTitle_);
  sub_2683BA54C(a1);
  v16 = v15;
  if (v15)
  {
    sub_2683CB418();

    v17 = sub_2683CB438();
    v16 = 0;
    if (__swift_getEnumTagSinglePayload(v4, 1, v17) != 1)
    {
      v16 = sub_2683CB3C8();
      (*(*(v17 - 8) + 8))(v4, v17);
    }
  }

  else
  {
    v18 = sub_2683CB438();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v18);
  }

  [v5 setIdentifier_];

  return v5;
}

void sub_26836AC3C(uint64_t a1, void *a2)
{
  sub_26836ACB0();
  v3 = sub_2683CFC98();

  [a2 setNotes_];
}

unint64_t sub_26836ACB0()
{
  result = qword_280253AA0;
  if (!qword_280253AA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280253AA0);
  }

  return result;
}

uint64_t sub_26836ACF4()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[10] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC598();
  v1[11] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_15_1();
  v6 = sub_2683CC748();
  v1[14] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_15_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  v1[17] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[18] = v9;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_26836AE84()
{
  v33 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[8];
  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  v12 = v0[20];
  v14 = v0[17];
  v13 = v0[18];
  if (v10)
  {
    log = v8;
    v15 = v0[15];
    v16 = v0[16];
    v28 = v0[14];
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v17 = 136315394;
    v29 = v9;
    sub_2683CC9E8();
    v18 = sub_2683CC738();
    v20 = v19;
    (*(v15 + 8))(v16, v28);
    v21 = *(v13 + 8);
    v21(v12, v14);
    v22 = sub_2681610A0(v18, v20, &v32);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    v23 = sub_2683CC9D8();
    v24 = [v23 unsupportedReason];

    v21(v11, v14);
    *(v17 + 14) = v24;
    _os_log_impl(&dword_2680EB000, log, v29, "[SnoozeTasks UnsupportedValue] Making unsupported dialog for %s with reason: %ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v25 = *(v13 + 8);
    v25(v0[19], v0[17]);

    v25(v12, v14);
  }

  v26 = swift_task_alloc();
  v0[21] = v26;
  *v26 = v0;
  v26[1] = sub_26836B158;

  return sub_26836B2F0();
}

uint64_t sub_26836B158()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 176) = v0;

  if (v0)
  {
    v5 = sub_26836B25C;
  }

  else
  {
    v5 = sub_268135978;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26836B25C()
{

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_26836B2F0()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v1[5] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC748();
  v1[6] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26836B3C8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = sub_268201068(v4, v6);
  if (v7 == 2)
  {
    sub_26812C6B8();
    v8 = swift_allocError();
    *v9 = v4;
    v9[1] = v6;
    OUTLINED_FUNCTION_16_1(v8, v9);

    OUTLINED_FUNCTION_40();

    return v10();
  }

  v12 = v7;

  if (v12)
  {
    v13 = sub_2683CC9C8();
    v14 = sub_26836C06C(v13);
    if (v14)
    {
      v15 = v14;
      if (sub_2683ABE58())
      {
        sub_2683ABE60();
        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x26D616C90](0, v15);
        }

        else
        {
          v16 = *(v15 + 32);
        }

        v17 = v16;

        v18 = [v17 title];

        sub_2683CFEA8();
        v19 = 0;
        goto LABEL_16;
      }
    }

    v19 = 1;
LABEL_16:
    v21 = v0[5];
    v22 = sub_2683CF168();
    __swift_storeEnumTagSinglePayload(v21, v19, 1, v22);
    sub_2683CF138();
    v23 = sub_2683CC9B8();
    v0[9] = sub_26818F730(v23);
    v24 = swift_task_alloc();
    v0[10] = v24;
    *v24 = v0;
    v24[1] = sub_26836B6E8;

    return sub_2683C8EB8();
  }

  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_26836B890;

  return sub_2683C8E04();
}

uint64_t sub_26836B6E8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 40);
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  sub_26812C310(v4, &unk_28024E7C0, &unk_2683D6CA0);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26836B9BC);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_26836B890()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_26836B9BC()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_26836BA24()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_2683CC748();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_15_1();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26836BAC8()
{
  v31 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = sub_268201068(v4, v6);
  if (v7 == 2)
  {
    sub_26812C6B8();
    v8 = swift_allocError();
    *v9 = v4;
    v9[1] = v6;
    OUTLINED_FUNCTION_16_1(v8, v9);

    OUTLINED_FUNCTION_40();

    return v10();
  }

  else
  {
    v12 = v7;

    v13 = sub_2683CC9C8();
    v14 = sub_2682DD8C4(v12 & 1, 0, 1);

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    v16 = v14;
    v17 = sub_2683CF7C8();
    v18 = sub_2683CFE98();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v19 = 136315394;
      if (v12)
      {
        v20 = 0x736B736174;
      }

      else
      {
        v20 = 0x676972547478656ELL;
      }

      if (v12)
      {
        v21 = 0xE500000000000000;
      }

      else
      {
        v21 = 0xEF656D6954726567;
      }

      v22 = sub_2681610A0(v20, v21, v30);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = v16;
      v24 = [v23 description];
      v25 = sub_2683CFA78();
      v27 = v26;

      v28 = sub_2681610A0(v25, v27, v30);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_2680EB000, v17, v18, "[SnoozeTasks UnsupportedValue] Unsupported Parameter: %s. New Intent: %s", v19, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v29 = v0[1];

    return v29(v16);
  }
}

BOOL sub_26836BE08()
{
  v0 = sub_2683CC748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_268201068(v4, v6);
  return v7 == 2 || (v7 & 1) == 0;
}

uint64_t sub_26836BF30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_26836ACF4();
}

uint64_t sub_26836BFD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_26836BA24();
}

uint64_t sub_26836C06C(void *a1)
{
  v2 = [a1 tasks];

  if (!v2)
  {
    return 0;
  }

  sub_268186108();
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t type metadata accessor for NotebookSuggestionsCATsSimple(uint64_t a1)
{
  result = qword_280253AA8;
  if (!qword_280253AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26836C1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v11 - 8);
  sub_268163198(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_2683CF178();
  (*(v7 + 8))(a2, v3);
  sub_268163208(a1);
  return v13;
}

uint64_t sub_26836C310(uint64_t a1, uint64_t a2)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2683CF188();
  (*(v5 + 8))(a2, v2);
  return v9;
}

id sub_26836C418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v6 = OUTLINED_FUNCTION_23(v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  if (qword_28024CB78 != -1)
  {
    OUTLINED_FUNCTION_34(&qword_28024CB78);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  if (v28 == 7)
  {
    goto LABEL_4;
  }

  v12 = sub_268355614(v28);
  if (v12 == 1953720684 && v13 == 0xE400000000000000)
  {

    goto LABEL_15;
  }

  v15 = OUTLINED_FUNCTION_1_62(v12, v13);

  if ((v15 & 1) == 0)
  {
LABEL_4:
    if (qword_28024CBE0 != -1)
    {
      OUTLINED_FUNCTION_2_57(&qword_28024CBE0);
    }

    sub_2683CD5C8();
    if (v29)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  if (qword_28024CBF0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v29)
  {
LABEL_18:
    sub_268129D44(a2, v28, v29);

    sub_268129504(0, &qword_280253310, 0x277CD4220);
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    sub_26835E5F8();
    sub_2683CB0D8();
    OUTLINED_FUNCTION_4_50(v11);
    OUTLINED_FUNCTION_4_50(v9);
    v16 = OUTLINED_FUNCTION_0_71();
    return sub_26835E66C(v16, v17, v18, v19, v20, v21, v22, v23, v27, v28, v29, v30, v31, v32);
  }

  sub_2681C6CD0(a3, &v28);
  if (v31)
  {
    __swift_project_boxed_opaque_existential_1(&v28, v31);
    sub_268170280();
    v24 = v26;
    __swift_destroy_boxed_opaque_existential_0(&v28);
  }

  else
  {
    sub_26812C310(&v28, &qword_28024E2C8, &unk_2683D6950);
    return 0;
  }

  return v24;
}

uint64_t sub_26836C788(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B0, &qword_2683D2328);
  OUTLINED_FUNCTION_23(v3);
  v2[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B8, &qword_2683D2330);
  OUTLINED_FUNCTION_23(v4);
  v2[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D390, &qword_2683D22E8);
  OUTLINED_FUNCTION_23(v5);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26836C894);
}

uint64_t sub_26836C894()
{
  if (qword_28024CBB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  OUTLINED_FUNCTION_6_37();
  v2 = sub_2683C7FD0(*(v0 + 96));
  v4 = v3;
  *(v0 + 64) = v2;
  *(v0 + 99) = v3;
  sub_268352FE8();
  v5 = type metadata accessor for NotebookLocationIntentNode(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v5);
  v7 = *(v0 + 56);
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(*(v0 + 56), &qword_28024D390, &qword_2683D22E8);
    goto LABEL_6;
  }

  v8 = sub_268357668();
  sub_26836D988(v7);
  if (v8 != 9)
  {
    if (sub_2683556FC(v8) == 0xD000000000000010 && 0x80000002683FA6F0 == v9)
    {
LABEL_15:
    }

    else
    {
      v11 = sub_2683D0598();

      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_17:
    if (v4)
    {
      v14 = 1;
    }

    else
    {
      v14 = v2;
    }

    [objc_allocWithZone(MEMORY[0x277CD4178]) initWithMobileSpace:1 event:v14];

    v15 = OUTLINED_FUNCTION_37_0();

    return v16(v15);
  }

LABEL_6:
  OUTLINED_FUNCTION_6_37();
  switch(*(v0 + 97))
  {
    case 2:
      goto LABEL_15;
    case 4:
      break;
    default:
      v12 = sub_2683D0598();

      if (v12)
      {
        goto LABEL_17;
      }

      break;
  }

  OUTLINED_FUNCTION_6_37();
  switch(*(v0 + 98))
  {
    case 3:
      goto LABEL_15;
    case 4:
      break;
    default:
      v13 = sub_2683D0598();

      if (v13)
      {
        goto LABEL_17;
      }

      break;
  }

  v18 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_268352FE8();
  v19 = __swift_getEnumTagSinglePayload(v18, 1, v5);
  v20 = *(v0 + 48);
  if (v19 == 1)
  {
    v21 = &qword_28024D390;
    v22 = &qword_2683D22E8;
    v23 = *(v0 + 48);
  }

  else
  {
    v24 = *(v0 + 32);
    sub_2683531D0();
    sub_26836D988(v20);
    v25 = sub_2683CD4A8();
    if (__swift_getEnumTagSinglePayload(v24, 1, v25) != 1)
    {
      v28 = *(v0 + 32);
      sub_2683CD488();
      (*(*(v25 - 8) + 8))(v28, v25);
      goto LABEL_29;
    }

    v23 = *(v0 + 32);
    v21 = &qword_28024D3B0;
    v22 = &qword_2683D2328;
  }

  sub_26812C310(v23, v21, v22);
  v26 = *(v0 + 40);
  v27 = sub_2683CEBD8();
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
LABEL_29:
  v29 = swift_task_alloc();
  *(v0 + 72) = v29;
  *v29 = v0;
  v29[1] = sub_26836CDC0;

  return sub_268131CEC();
}

uint64_t sub_26836CDC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  sub_26812C310(v4, &qword_28024D3B8, &qword_2683D2330);
  if (v1)
  {
    v5 = sub_26836D0C0;
  }

  else
  {
    v5 = sub_26836CF04;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26836CF04()
{
  v1 = sub_2683ABE58();
  v2 = *(v0 + 80);
  if (v1)
  {
    sub_2683ABE60();
    v3 = *(v0 + 80);
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D616C90](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = objc_allocWithZone(MEMORY[0x277CD4178]);
    v6 = OUTLINED_FUNCTION_5_48();
    sub_26836D8DC(v6, v7, v8, 0);
  }

  else
  {

    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2680EB000, v10, v11, "[NotebookNLv3Helpers.resolveSpatialEventTrigger] LocationResolver did not return any placemarks, spatial event trigger is nil.", v12, 2u);
      MEMORY[0x26D617A40](v12, -1, -1);
    }
  }

  v13 = OUTLINED_FUNCTION_37_0();

  return v14(v13);
}

uint64_t sub_26836D0C0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_26836D148(uint64_t a1, uint64_t a2)
{
  if (qword_28024CB78 != -1)
  {
    OUTLINED_FUNCTION_34(&qword_28024CB78);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  if (v27 != 7)
  {
    v4 = sub_268355614(v27);
    if (v4 == 1953720684 && v5 == 0xE400000000000000)
    {
    }

    else
    {
      v7 = OUTLINED_FUNCTION_1_62(v4, v5);

      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (qword_28024CBE0 != -1)
    {
      OUTLINED_FUNCTION_2_57(&qword_28024CBE0);
    }

    OUTLINED_FUNCTION_7_32(qword_28027CD20, v3);
    if (v28)
    {
      sub_268129504(0, &qword_280253320, 0x277CD4228);
      sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
      v8 = OUTLINED_FUNCTION_9_0();
      sub_268129D44(v8, v9, v28);

      OUTLINED_FUNCTION_9_0();
      sub_26835E5F8();
      OUTLINED_FUNCTION_9_35();
      return sub_268177814(v10, v11, v12, v13, v14, v15);
    }
  }

LABEL_15:
  if (qword_28024CC18 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_7_32(qword_28027CD58, v3);
  if (v27 == 7)
  {
    goto LABEL_30;
  }

  v16 = sub_268355614(v27);
  if (v16 == 1953720684 && v17 == 0xE400000000000000)
  {

    goto LABEL_25;
  }

  v19 = OUTLINED_FUNCTION_1_62(v16, v17);

  if (v19)
  {
LABEL_25:
    if (qword_28024CC20 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_32(qword_28027CD60, v20);
    if (!v28)
    {
      goto LABEL_30;
    }

    sub_268129504(0, &qword_280253320, 0x277CD4228);
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v21 = OUTLINED_FUNCTION_5_48();
    sub_268129D44(v21, v22, v23);

    sub_26835E5F8();
    OUTLINED_FUNCTION_9_35();
    return sub_268177814(v10, v11, v12, v13, v14, v15);
  }

LABEL_30:
  sub_2681C6CD0(a2, &v27);
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    sub_268170B28();
    v24 = v25;
    __swift_destroy_boxed_opaque_existential_0(&v27);
  }

  else
  {
    sub_26812C310(&v27, &qword_28024E2C8, &unk_2683D6950);
    return 0;
  }

  return v24;
}

uint64_t sub_26836D480(uint64_t a1, uint64_t a2)
{
  if (qword_28024CBC8 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  v3 = sub_2683CD5D8();
  v4 = v3;
  if (*(v3 + 16))
  {
    MEMORY[0x28223BE20](v3);
    v10[2] = a2;
    v5 = sub_268152EA8(sub_26836D9E4, v10, v4);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253AB8, &unk_2683F5290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2683D1EC0;
    *(inited + 32) = sub_26836D6B8();
    v5 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    v7 = *(inited + 32);
    if (v7)
    {
      v8 = v7;
      MEMORY[0x26D616770]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
      v5 = v11;
    }

    swift_setDeallocating();
    sub_2681F5580();
  }

  return v5;
}

id sub_26836D640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  sub_268129D44(a2, v5, v6);
  result = sub_26835E5F8();
  *a3 = result;
  return result;
}

id sub_26836D6B8()
{
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  if (v8)
  {
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v0 = OUTLINED_FUNCTION_9_0();
    sub_268129D44(v0, v1, v8);

    OUTLINED_FUNCTION_9_0();
    return sub_26835E5F8();
  }

  if (qword_28024CB70 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  if (v7 == 7)
  {
    goto LABEL_8;
  }

  v3 = sub_268355614(v7);
  if (v3 == 1953720684 && v4 == 0xE400000000000000)
  {
  }

  else
  {
    v6 = OUTLINED_FUNCTION_1_62(v3, v4);

    if ((v6 & 1) == 0)
    {
LABEL_8:
      if (qword_28024CBD0 != -1)
      {
        swift_once();
      }

      sub_2683CD5C8();
    }
  }

  return 0;
}

id sub_26836D8DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    sub_268129504(0, &qword_28024EEF8, 0x277CBFC40);
    v9 = sub_2683CFC98();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithPlacemark:a1 event:a2 suggestedValues:v9 mobileSpace:a4];

  return v10;
}

uint64_t sub_26836D988(uint64_t a1)
{
  v2 = type metadata accessor for NotebookLocationIntentNode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_62(uint64_t a1, uint64_t a2)
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_2_57(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_50(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

void *OUTLINED_FUNCTION_6_37()
{

  return sub_2683CD5C8();
}

void *OUTLINED_FUNCTION_7_32(uint64_t a1, uint64_t a2, ...)
{

  return sub_2683CD5C8();
}

uint64_t type metadata accessor for SearchForNotebookItemsIntentWrapper(uint64_t a1)
{
  result = qword_280253AC0;
  if (!qword_280253AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26836DB64(uint64_t a1)
{
  result = sub_26812EB34(319, &qword_280253AD0, &protocol descriptor for SFNIIntentModel);
  if (v2 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D380, &protocol descriptor for NotebookDateTimeResolving);
    if (v3 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024D388, &protocol descriptor for NotebookLocationResolving);
      if (v4 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024F1C0, &protocol descriptor for NotebookFeatureManaging);
        if (v5 <= 0x3F)
        {
          result = sub_2683CB668();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26836DC70()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_9_10();
  return v2(v1);
}

uint64_t sub_26836DCB8()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_9_10();
  return v3(v2, v1) & 1;
}

BOOL sub_26836DD0C()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_9_10();
  return v3(v2, v1) == 1;
}

uint64_t sub_26836DD64()
{
  v1 = type metadata accessor for IntentTriggerModel(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  v6 = OUTLINED_FUNCTION_23(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = v0[3];
  v10 = v0[4];
  v11 = __swift_project_boxed_opaque_existential_1(v0, v9);
  (*(v10 + 32))(v9, v10);
  sub_26836F26C(&v4[*(v2 + 28)], v8);
  OUTLINED_FUNCTION_0_46();
  sub_26836F344(v4, v12);
  type metadata accessor for LocationQuery(0);
  v13 = OUTLINED_FUNCTION_9_10();
  if (__swift_getEnumTagSinglePayload(v13, 1, v11) == 1)
  {
    sub_26836F2DC(v8);
    return 2;
  }

  else
  {
    v14 = v8[*(v11 + 6)];
    OUTLINED_FUNCTION_1_37();
    sub_26836F344(v8, v15);
  }

  return v14;
}

uint64_t sub_26836DEBC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 184) = a1;
  v3 = sub_2683CEBD8();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = OUTLINED_FUNCTION_15_1();
  Type = type metadata accessor for LocationQuery.QueryType(0);
  OUTLINED_FUNCTION_23(Type);
  *(v2 + 48) = OUTLINED_FUNCTION_15_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_23(v5);
  *(v2 + 56) = OUTLINED_FUNCTION_15_1();
  v6 = type metadata accessor for LocationQuery(0);
  *(v2 + 64) = v6;
  OUTLINED_FUNCTION_23(v6);
  *(v2 + 72) = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CE918();
  *(v2 + 80) = v7;
  *(v2 + 88) = *(v7 - 8);
  *(v2 + 96) = OUTLINED_FUNCTION_15_1();
  v8 = type metadata accessor for IntentTriggerModel(0);
  *(v2 + 104) = v8;
  OUTLINED_FUNCTION_23(v8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26836E074);
}

uint64_t sub_26836E650()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v7 + 144) = v6;

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_26836E7C4);
}

uint64_t sub_26836EC40(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v4 + 168) = v1;

  if (v1)
  {
    v7 = sub_26836F0D0;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_26836ED60;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26836F0D0()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_1_37();
  sub_26836F344(v1, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26836F1D0(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26822F724;

  return sub_26836DEBC(a1);
}

uint64_t sub_26836F26C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26836F2DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26836F344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_50()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_4_51()
{
  v1 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 120), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_5_49()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_6_38()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_7_33()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_9_36()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

id OUTLINED_FUNCTION_13_36(char a1)
{

  return sub_2681DB5EC(v2, v3, v4, v1 + v5, a1 & 1);
}

uint64_t OUTLINED_FUNCTION_15_34()
{
}

void OUTLINED_FUNCTION_19_33(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_32_17()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 72);

  return sub_26822F820(v2, v3);
}

uint64_t OUTLINED_FUNCTION_33_18(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t type metadata accessor for AddTasksIntentWrapper(uint64_t a1)
{
  result = qword_280253AD8;
  if (!qword_280253AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26836F70C(uint64_t a1)
{
  result = sub_26812EB34(319, &qword_280253AE8, &protocol descriptor for AddTasksIntentModel);
  if (v2 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024CDA0, &protocol descriptor for NotebookReferenceResolving);
    if (v3 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024D380, &protocol descriptor for NotebookDateTimeResolving);
      if (v4 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024D388, &protocol descriptor for NotebookLocationResolving);
        if (v5 <= 0x3F)
        {
          result = sub_26812EB34(319, &qword_28024F9E8, &protocol descriptor for SiriKitContactResolving);
          if (v6 <= 0x3F)
          {
            result = sub_2683CB668();
            if (v7 <= 0x3F)
            {
              result = sub_26812EB34(319, &qword_28024F1C0, &protocol descriptor for NotebookFeatureManaging);
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26836F868(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 56);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v5 - 2);
      v20[0] = *(v5 - 3);
      v20[1] = v9;
      v20[2] = v7;
      v20[3] = v8;

      v21(v18, v20);
      if (v3)
      {
        break;
      }

      v10 = v18[0];
      if (v18[0])
      {
        v11 = v18[1];
        v17 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_22_23();
          sub_2682E49B0();
          v6 = v14;
        }

        v12 = *(v6 + 16);
        if (v12 >= *(v6 + 24) >> 1)
        {
          sub_2682E49B0();
          v6 = v15;
        }

        *(v6 + 16) = v12 + 1;
        v13 = v6 + 32 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = v11;
        *(v13 + 48) = v17;
      }

      v5 += 4;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_26836F9E0(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253AF0, &qword_2683F5378);
  v7 = OUTLINED_FUNCTION_23(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC18, &unk_2683F5380);
  OUTLINED_FUNCTION_0_3();
  v31 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_1();
  v32 = v13;
  MEMORY[0x28223BE20](v14);
  v30 = &v27 - v15;
  v16 = 0;
  v17 = *(a3 + 16);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v17 == v16)
    {
      return v33;
    }

    v18 = *(type metadata accessor for Snippet.Reminder(0) - 8);
    a1(a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_26812D9E0(v9, &qword_280253AF0, &qword_2683F5378);
      ++v16;
    }

    else
    {
      v19 = v30;
      sub_268371EE8(v9, v30);
      sub_268371EE8(v19, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_22_23();
        sub_2682E4A6C();
        v33 = v23;
      }

      v20 = *(v33 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v33 + 24) >> 1)
      {
        v28 = *(v33 + 16);
        v29 = v20 + 1;
        sub_2682E4A6C();
        v20 = v28;
        v21 = v29;
        v33 = v24;
      }

      ++v16;
      v22 = v33;
      *(v33 + 16) = v21;
      sub_268371EE8(v32, v22 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v20);
    }
  }

  v25 = v33;

  return v25;
}

id sub_26836FCA8(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  v6 = OUTLINED_FUNCTION_23(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v29 = type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_0_3();
  v26 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_1();
  v28 = v11;
  MEMORY[0x28223BE20](v12);
  v25 = &v24 - v13;
  result = sub_2683ABE58();
  v15 = result;
  v16 = 0;
  v31 = a3 & 0xC000000000000001;
  v17 = a3 & 0xFFFFFFFFFFFFFF8;
  v18 = MEMORY[0x277D84F90];
  v27 = a3;
  while (1)
  {
    if (v15 == v16)
    {
      return v18;
    }

    if (v31)
    {
      result = MEMORY[0x26D616C90](v16, a3);
    }

    else
    {
      if (v16 >= *(v17 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v16 + 32);
    }

    v19 = result;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v32 = result;
    v30(&v32);
    if (v3)
    {

      return v18;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v29) == 1)
    {
      result = sub_26812D9E0(v8, &qword_28024DBC8, &qword_2683E3D30);
    }

    else
    {
      v20 = v25;
      sub_268371E88(v8, v25, type metadata accessor for Snippet.Reminder);
      sub_268371E88(v20, v28, type metadata accessor for Snippet.Reminder);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_22_23();
        sub_2682E4B38();
        v18 = v22;
      }

      v21 = *(v18 + 16);
      if (v21 >= *(v18 + 24) >> 1)
      {
        sub_2682E4B38();
        v18 = v23;
      }

      *(v18 + 16) = v21 + 1;
      result = sub_268371E88(v28, v18 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, type metadata accessor for Snippet.Reminder);
      a3 = v27;
    }

    ++v16;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_26836FF84(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  v11 = a3 + 32;
LABEL_2:
  v8 = v7 + 40 * v5;
  while (1)
  {
    if (v6 == v5)
    {
      return v12;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    result = (v4)(&v13, v8);
    if (v3)
    {
      v10 = v12;

      return v10;
    }

    ++v5;
    v8 += 40;
    if (v13)
    {
      MEMORY[0x26D616770](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v12 = v14;
      v5 = v9;
      v7 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2683700C8(char a1, uint64_t a2)
{
  *(v3 + 96) = a2;
  *(v3 + 104) = v2;
  *(v3 + 288) = a1;
  v4 = sub_2683CEBD8();
  *(v3 + 112) = v4;
  *(v3 + 120) = *(v4 - 8);
  *(v3 + 128) = OUTLINED_FUNCTION_15_1();
  Type = type metadata accessor for LocationQuery.QueryType(0);
  OUTLINED_FUNCTION_23(Type);
  *(v3 + 136) = OUTLINED_FUNCTION_15_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_23(v6);
  *(v3 + 144) = OUTLINED_FUNCTION_15_1();
  v7 = type metadata accessor for LocationQuery(0);
  *(v3 + 152) = v7;
  OUTLINED_FUNCTION_23(v7);
  *(v3 + 160) = OUTLINED_FUNCTION_15_1();
  v8 = type metadata accessor for IntentTriggerModel(0);
  *(v3 + 168) = v8;
  OUTLINED_FUNCTION_23(v8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268370244);
}

uint64_t sub_268370244()
{
  v107 = v0;
  v1 = *(v0 + 104);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v6 = v5;
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  LOBYTE(v7) = (*(v8 + 24))(v7, v8);
  v9 = type metadata accessor for AddTasksIntentWrapper(0);
  v10 = *(v9 + 36);
  v11 = (v1 + *(v9 + 40));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = (*(v13 + 4))(v12, v13);
  v15 = sub_2681DB5EC(v4, v6, v7, v1 + v10, v14 & 1);

  if (v15)
  {
    sub_268129504(0, &qword_280253320, 0x277CD4228);
    v16 = sub_268177814(v15, MEMORY[0x277D84F90], 0, 0, 0, 0);
  }

  else
  {
    v16 = 0;
  }

  *(v0 + 208) = v16;
  v17 = *(v0 + 200);
  v18 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1(v18, v1[3]);
  v19 = OUTLINED_FUNCTION_114();
  v21 = v20(v19);
  v22 = swift_task_alloc();
  *(v22 + 16) = v18;
  *(v0 + 216) = sub_268152EA8(sub_268371E48, v22, v21);
  *(v0 + 224) = 0;

  v23 = v1[4];
  v24 = __swift_project_boxed_opaque_existential_1(v18, v1[3]);
  v25 = OUTLINED_FUNCTION_114();
  v26(v25);
  v27 = *v17;
  *(v0 + 232) = *v17;

  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(v17, v28);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 80), *(*(v0 + 104) + 104));
    v29 = qword_28024C960;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 192);
    v31 = *(v0 + 104);
    v32 = sub_2683CE918();
    __swift_project_value_buffer(v32, qword_28027CAC8);
    v34 = v1[3];
    v33 = v1[4];
    __swift_project_boxed_opaque_existential_1(v31, v34);
    (*(v33 + 40))(v34, v33);
    OUTLINED_FUNCTION_0_46();
    sub_26822F8E8(v30, v35);
    v36 = swift_task_alloc();
    *(v0 + 240) = v36;
    *v36 = v0;
    v36[1] = sub_268370B60;
    OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_26_18();

    __asm { BR              X3 }
  }

  *(v0 + 256) = 0;
  v39 = OUTLINED_FUNCTION_17_25();
  v40(v39);
  sub_2681340E8(v1 + v13[5], v17, &qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(v1, v41);
  if (OUTLINED_FUNCTION_33_18(v17) == 1)
  {
    sub_26812D9E0(*(v0 + 144), &qword_28024EA58, &unk_2683DEB50);
    v101 = 0;
LABEL_14:
    OUTLINED_FUNCTION_35_14();
    if (!v13 && (*(v0 + 288) & 1) == 0)
    {
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_25_26();
      if (!v45)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v46 = sub_2683CF7E8();
      __swift_project_value_buffer(v46, qword_28027C958);
      v47 = sub_2683CF7C8();
      v48 = sub_2683CFE58();
      if (OUTLINED_FUNCTION_43(v48))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18_33(&dword_2680EB000, v49, v50, "[AddTasksIntentWrapper] resolving targetTaskList from context");
        OUTLINED_FUNCTION_38();
      }
    }

    v51 = OUTLINED_FUNCTION_23_28();
    v100 = v52;
    v105 = OUTLINED_FUNCTION_15_35(v51);

    v104 = v13;
    v103 = v101;
    MEMORY[0](v1, v23);
    v53 = objc_allocWithZone(MEMORY[0x277CD3A18]);
    v54 = OUTLINED_FUNCTION_5_50();
    if (!v100)
    {
      goto LABEL_34;
    }

    v55 = sub_2683CF258();
    if (v56)
    {
      v13 = v56;
    }

    else
    {

      OUTLINED_FUNCTION_14_30();
    }

    if (sub_2681E73A0(v55))
    {
      v66 = OUTLINED_FUNCTION_4_52();
      v67(v66);
      sub_2681340E8(v1 + MEMORY[0x18], v0 + 56, &qword_28024FD78, &qword_2683F5370);
      OUTLINED_FUNCTION_0_46();
      sub_26822F8E8(v1, v68);
      if (*(v0 + 80))
      {
        OUTLINED_FUNCTION_9_37();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
        v69 = swift_allocObject();
        OUTLINED_FUNCTION_28_19(v69, xmmword_2683D1EC0);
        v70 = OUTLINED_FUNCTION_11_40();

        if (v70)
        {
          v71 = objc_allocWithZone(MEMORY[0x277CD3B08]);
          v72 = v70;
          v70 = [v71 initWithTriggerContact_];
        }

        [v54 setContactEventTrigger_];

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {

        sub_26812D9E0(v0 + 56, &qword_28024FD78, &qword_2683F5370);
      }

      v92 = OUTLINED_FUNCTION_7_34();
      if (v93(v92))
      {
        v94 = OUTLINED_FUNCTION_31_14();
        v95 = OUTLINED_FUNCTION_3_51(v94);
        sub_26836FF84(v95, v96, v97);

        v98 = OUTLINED_FUNCTION_114();
        sub_268213304(v98, v99);
LABEL_36:
        v73 = OUTLINED_FUNCTION_8_39();
        v75 = v74(v73);
        if ((v76 & 1) == 0)
        {
          [v54 setTaskReference_];
        }

        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v77 = sub_2683CF7E8();
        __swift_project_value_buffer(v77, qword_28027C958);
        v78 = v54;
        v79 = sub_2683CF7C8();
        v80 = sub_2683CFE98();

        v102 = v78;
        if (os_log_type_enabled(v79, v80))
        {
          swift_slowAlloc();
          v81 = OUTLINED_FUNCTION_30_16();
          v106 = v81;
          *v13 = 136315138;
          v82 = v78;
          v83 = [v82 description];
          v84 = sub_2683CFA78();
          v86 = v85;

          v87 = sub_2681610A0(v84, v86, &v106);

          *(v13 + 1) = v87;
          OUTLINED_FUNCTION_20_33(&dword_2680EB000, v88, v89, "⚙️ [AddTasksIntentWrapper] made intent: %s");
          __swift_destroy_boxed_opaque_existential_0(v81);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();
        }

        OUTLINED_FUNCTION_10_33();
        sub_26821AD1C();

        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_26_18();

        __asm { BRAA            X2, X16 }
      }
    }

    else
    {
LABEL_34:
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_12_30();
  sub_26822F884(v24 + *(v17 + 20), v1);
  v42 = OUTLINED_FUNCTION_33_18(v1);
  v43 = *(v0 + 160);
  if (v42 == 1)
  {
    OUTLINED_FUNCTION_22_13();
    v101 = [objc_allocWithZone(MEMORY[0x277CD4178]) initWithMobileSpace:1 event:v1];
    OUTLINED_FUNCTION_1_37();
    sub_26822F8E8(v43, v44);
    goto LABEL_14;
  }

  v57 = OUTLINED_FUNCTION_36_16();
  v58(v57);
  v59 = swift_task_alloc();
  *(v0 + 264) = v59;
  *v59 = v0;
  OUTLINED_FUNCTION_6_39(v59);
  OUTLINED_FUNCTION_26_18();

  return sub_2681DAB90(v60, v61, v62, v63);
}

uint64_t sub_268370B60()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v4 + 248) = v3;

  return MEMORY[0x2822009F8](sub_268370C78);
}

uint64_t sub_268370C78()
{
  v75 = v0;
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  if (v4)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];
  }

  else
  {

    v6 = 0;
  }

  *(v0 + 256) = v6;
  v7 = OUTLINED_FUNCTION_17_25();
  v8(v7);
  sub_2681340E8(v4 + v3[5], v1, &qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(v4, v9);
  if (OUTLINED_FUNCTION_33_18(v1) == 1)
  {
    sub_26812D9E0(*(v0 + 144), &qword_28024EA58, &unk_2683DEB50);
    v69 = 0;
LABEL_8:
    OUTLINED_FUNCTION_35_14();
    if (!v3 && (*(v0 + 288) & 1) == 0)
    {
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_25_26();
      if (!v13)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v14 = sub_2683CF7E8();
      __swift_project_value_buffer(v14, qword_28027C958);
      v15 = sub_2683CF7C8();
      v16 = sub_2683CFE58();
      if (OUTLINED_FUNCTION_43(v16))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_18_33(&dword_2680EB000, v17, v18, "[AddTasksIntentWrapper] resolving targetTaskList from context");
        OUTLINED_FUNCTION_38();
      }
    }

    v19 = OUTLINED_FUNCTION_23_28();
    v68 = v20;
    v73 = OUTLINED_FUNCTION_15_35(v19);

    v72 = v3;
    v71 = v69;
    v6(v4, v2);
    v21 = objc_allocWithZone(MEMORY[0x277CD3A18]);
    v22 = OUTLINED_FUNCTION_5_50();
    if (!v68)
    {
      goto LABEL_28;
    }

    v23 = sub_2683CF258();
    if (v24)
    {
      v3 = v24;
    }

    else
    {

      OUTLINED_FUNCTION_14_30();
    }

    if (sub_2681E73A0(v23))
    {
      v34 = OUTLINED_FUNCTION_4_52();
      v35(v34);
      sub_2681340E8(v4 + *(v6 + 6), v0 + 56, &qword_28024FD78, &qword_2683F5370);
      OUTLINED_FUNCTION_0_46();
      sub_26822F8E8(v4, v36);
      if (*(v0 + 80))
      {
        OUTLINED_FUNCTION_9_37();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
        v37 = swift_allocObject();
        OUTLINED_FUNCTION_28_19(v37, xmmword_2683D1EC0);
        v38 = OUTLINED_FUNCTION_11_40();

        if (v38)
        {
          v39 = objc_allocWithZone(MEMORY[0x277CD3B08]);
          v40 = v38;
          v38 = [v39 initWithTriggerContact_];
        }

        [v22 setContactEventTrigger_];

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      }

      else
      {

        sub_26812D9E0(v0 + 56, &qword_28024FD78, &qword_2683F5370);
      }

      v60 = OUTLINED_FUNCTION_7_34();
      if (v61(v60))
      {
        v62 = OUTLINED_FUNCTION_31_14();
        v63 = OUTLINED_FUNCTION_3_51(v62);
        sub_26836FF84(v63, v64, v65);

        v66 = OUTLINED_FUNCTION_114();
        sub_268213304(v66, v67);
LABEL_30:
        v41 = OUTLINED_FUNCTION_8_39();
        v43 = v42(v41);
        if ((v44 & 1) == 0)
        {
          [v22 setTaskReference_];
        }

        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v45 = sub_2683CF7E8();
        __swift_project_value_buffer(v45, qword_28027C958);
        v46 = v22;
        v47 = sub_2683CF7C8();
        v48 = sub_2683CFE98();

        v70 = v46;
        if (os_log_type_enabled(v47, v48))
        {
          swift_slowAlloc();
          v49 = OUTLINED_FUNCTION_30_16();
          v74 = v49;
          *v3 = 136315138;
          v50 = v46;
          v51 = [v50 description];
          v52 = sub_2683CFA78();
          v54 = v53;

          v55 = sub_2681610A0(v52, v54, &v74);

          *(v3 + 1) = v55;
          OUTLINED_FUNCTION_20_33(&dword_2680EB000, v56, v57, "⚙️ [AddTasksIntentWrapper] made intent: %s");
          __swift_destroy_boxed_opaque_existential_0(v49);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();
        }

        OUTLINED_FUNCTION_10_33();
        sub_26821AD1C();

        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_26_18();

        __asm { BRAA            X2, X16 }
      }
    }

    else
    {
LABEL_28:
    }

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_12_30();
  sub_26822F884(v5 + *(v1 + 20), v4);
  v10 = OUTLINED_FUNCTION_33_18(v4);
  v11 = *(v0 + 160);
  if (v10 == 1)
  {
    OUTLINED_FUNCTION_22_13();
    v69 = [objc_allocWithZone(MEMORY[0x277CD4178]) initWithMobileSpace:1 event:v4];
    OUTLINED_FUNCTION_1_37();
    sub_26822F8E8(v11, v12);
    goto LABEL_8;
  }

  v25 = OUTLINED_FUNCTION_36_16();
  v26(v25);
  v27 = swift_task_alloc();
  *(v0 + 264) = v27;
  *v27 = v0;
  OUTLINED_FUNCTION_6_39(v27);
  OUTLINED_FUNCTION_26_18();

  return sub_2681DAB90(v28, v29, v30, v31);
}

uint64_t sub_2683712AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v4 + 272) = v1;

  if (v1)
  {

    v7 = sub_2683718C8;
  }

  else
  {
    *(v4 + 280) = a1;
    v7 = sub_2683713D4;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2683713D4()
{
  v60 = v1;
  v3 = *(v1 + 160);
  (*(*(v1 + 120) + 8))(*(v1 + 128), *(v1 + 112));
  OUTLINED_FUNCTION_1_37();
  sub_26822F8E8(v3, v4);
  v5 = *(v1 + 280);
  v6 = *(v1 + 208);
  if (!v6 && (*(v1 + 288) & 1) == 0)
  {
    OUTLINED_FUNCTION_26_24();
    OUTLINED_FUNCTION_25_26();
    if (!v7)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE58();
    if (OUTLINED_FUNCTION_43(v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18_33(&dword_2680EB000, v11, v12, "[AddTasksIntentWrapper] resolving targetTaskList from context");
      OUTLINED_FUNCTION_38();
    }
  }

  v13 = OUTLINED_FUNCTION_23_28();
  v54 = v14;
  v58 = OUTLINED_FUNCTION_15_35(v13);

  v57 = v6;
  v56 = v5;
  (v0)(0x28024C000, v2);
  v15 = objc_allocWithZone(MEMORY[0x277CD3A18]);
  v16 = OUTLINED_FUNCTION_5_50();
  if (!v54)
  {
    goto LABEL_18;
  }

  v17 = sub_2683CF258();
  if (v18)
  {
    v6 = v18;
  }

  else
  {

    OUTLINED_FUNCTION_14_30();
  }

  if ((sub_2681E73A0(v17) & 1) == 0)
  {
LABEL_18:

LABEL_19:

    goto LABEL_20;
  }

  v19 = OUTLINED_FUNCTION_4_52();
  v20(v19);
  sub_2681340E8(*(v0 + 24) + 0x28024C000, v1 + 56, &qword_28024FD78, &qword_2683F5370);
  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(0x28024C000, v21);
  if (*(v1 + 80))
  {
    OUTLINED_FUNCTION_9_37();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_28_19(v22, xmmword_2683D1EC0);
    v23 = OUTLINED_FUNCTION_11_40();

    if (v23)
    {
      v24 = objc_allocWithZone(MEMORY[0x277CD3B08]);
      v25 = v23;
      v23 = [v24 initWithTriggerContact_];
    }

    [v16 setContactEventTrigger_];

    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  else
  {

    sub_26812D9E0(v1 + 56, &qword_28024FD78, &qword_2683F5370);
  }

  v45 = OUTLINED_FUNCTION_7_34();
  if (!v46(v45))
  {
    goto LABEL_19;
  }

  v47 = OUTLINED_FUNCTION_31_14();
  v48 = OUTLINED_FUNCTION_3_51(v47);
  sub_26836FF84(v48, v49, v50);

  v51 = OUTLINED_FUNCTION_114();
  sub_268213304(v51, v52);
LABEL_20:
  v26 = OUTLINED_FUNCTION_8_39();
  v28 = v27(v26);
  if ((v29 & 1) == 0)
  {
    [v16 setTaskReference_];
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v30 = sub_2683CF7E8();
  __swift_project_value_buffer(v30, qword_28027C958);
  v31 = v16;
  v32 = sub_2683CF7C8();
  v33 = sub_2683CFE98();

  v55 = v31;
  if (os_log_type_enabled(v32, v33))
  {
    swift_slowAlloc();
    v34 = OUTLINED_FUNCTION_30_16();
    v59 = v34;
    *v6 = 136315138;
    v35 = v31;
    v36 = [v35 description];
    v37 = sub_2683CFA78();
    v39 = v38;

    v40 = sub_2681610A0(v37, v39, &v59);

    *(v6 + 1) = v40;
    OUTLINED_FUNCTION_20_33(&dword_2680EB000, v41, v42, "⚙️ [AddTasksIntentWrapper] made intent: %s");
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  OUTLINED_FUNCTION_10_33();
  v53 = sub_26821AD1C();

  OUTLINED_FUNCTION_37();

  return v43(v53);
}

uint64_t sub_2683718C8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 160);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);

  (*(v3 + 8))(v4, v5);
  OUTLINED_FUNCTION_1_37();
  sub_26822F8E8(v2, v6);

  v7 = *(v0 + 8);

  return v7();
}

id sub_2683719D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v7 = type metadata accessor for AddTasksIntentWrapper(0);
  sub_268129D44(a2 + *(v7 + 36), v5, v6);
  result = sub_26835E5F8();
  *a3 = result;
  return result;
}

uint64_t sub_268371A58@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D1EC0;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;

  v14 = sub_268176D1C(a2, (a3 + 160), v13, v11, v12);

  *a6 = v14;
  return result;
}

uint64_t sub_268371B28()
{
  v1 = type metadata accessor for IntentTriggerModel(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  v6 = OUTLINED_FUNCTION_23(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = v0[3];
  v10 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v9);
  (*(v10 + 40))(v9, v10);
  sub_2681340E8(&v4[*(v2 + 28)], v8, &qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(v4, v11);
  v12 = type metadata accessor for LocationQuery(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_26812D9E0(v8, &qword_28024EA58, &unk_2683DEB50);
    return 2;
  }

  else
  {
    v13 = v8[*(v12 + 24)];
    OUTLINED_FUNCTION_1_37();
    sub_26822F8E8(v8, v14);
  }

  return v13;
}

uint64_t sub_268371CAC(char a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268371D50;

  return sub_2683700C8(a1, a2);
}

uint64_t sub_268371D50(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_268371E88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_268371EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC18, &unk_2683F5380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*OUTLINED_FUNCTION_3_51(void *a1))@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v4;
  a1[5] = v3;
  return sub_268371E68;
}

uint64_t OUTLINED_FUNCTION_4_52()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

id OUTLINED_FUNCTION_5_50()
{

  return sub_268213240(v2, v4, v1, v3, v0);
}

uint64_t OUTLINED_FUNCTION_7_34()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_8_39()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

id OUTLINED_FUNCTION_11_40()
{

  return sub_268176D1C(v3, (v2 + 160), v4, v1, v0);
}

uint64_t OUTLINED_FUNCTION_12_30()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 160);

  return sub_268371E88(v2, v3, type metadata accessor for LocationQuery);
}

id OUTLINED_FUNCTION_15_35(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return v1;
}

uint64_t OUTLINED_FUNCTION_17_25()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

void OUTLINED_FUNCTION_18_33(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_20_33(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_26_24()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 40), *(*(v0 + 104) + 64));

  sub_268170B28();
}

uint64_t OUTLINED_FUNCTION_28_19(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
}

uint64_t OUTLINED_FUNCTION_30_16()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_14()
{

  return swift_task_alloc();
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26837230C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 57))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 56);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268372348(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_268372398(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_2683723D4()
{
  sub_26813A144(v0, v8);
  v1 = 2;
  switch(v9)
  {
    case 1:
    case 2:
    case 5:
    case 6:
      sub_26813A1A0(v8);
      break;
    case 7:
      return v1;
    default:
      sub_268128148(v8, v5);
      v2 = v6;
      v3 = v7;
      __swift_project_boxed_opaque_existential_1(v5, v6);
      v1 = (*(*(v3 + 8) + 8))(v2);
      __swift_destroy_boxed_opaque_existential_0(v5);
      break;
  }

  return v1;
}

void sub_268372484(uint64_t a1, char a2)
{
  if (qword_28024CC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for NotebookTaskParser(0);
  __swift_project_value_buffer(v2, qword_28027CE50);
  sub_268372510();
}

void sub_268372510()
{
  OUTLINED_FUNCTION_30_0();
  v84 = v0;
  LODWORD(v85) = v1;
  v3 = v2;
  v5 = v4;
  sub_2683CC718();
  OUTLINED_FUNCTION_0_3();
  v76 = v7;
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_18();
  v75 = v8;
  OUTLINED_FUNCTION_3_8();
  sub_2683CCC68();
  OUTLINED_FUNCTION_0_3();
  v80 = v10;
  v81 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_18();
  v79 = v11;
  OUTLINED_FUNCTION_3_8();
  sub_2683CCBD8();
  OUTLINED_FUNCTION_0_3();
  v82 = v13;
  v83 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  v16 = v15 - v14;
  v17 = sub_2683CE448();
  OUTLINED_FUNCTION_0_3();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_3();
  v23 = v22 - v21;
  v24 = sub_2683CCC18();
  OUTLINED_FUNCTION_0_3();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_1();
  v72 = v28;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v29);
  v74 = &v71 - v30;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v71 - v32;
  v73 = *(v26 + 16);
  v73(&v71 - v32, v3, v24);
  v78 = v3;
  if (sub_2682206DC(v3, v85))
  {
    *(v5 + 48) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
    *(v5 + 56) = 7;
    v34 = OUTLINED_FUNCTION_69();
    v35(v34);
    goto LABEL_18;
  }

  v85 = v5;
  v36 = OUTLINED_FUNCTION_69();
  v38 = v37(v36);
  if (v38 == *MEMORY[0x277D5C128])
  {
    v39 = OUTLINED_FUNCTION_11_41();
    v40(v39);
    (*(v19 + 32))(v23, v33, v17);
    sub_268372DA0();
    (*(v19 + 8))(v23, v17);
    goto LABEL_18;
  }

  if (v38 == *MEMORY[0x277D5C150])
  {
    v41 = OUTLINED_FUNCTION_11_41();
    v42(v41);
    v44 = v82;
    v43 = v83;
    (*(v82 + 32))(v16, v33, v83);
    sub_268373A08();
    (*(v44 + 8))(v16, v43);
    goto LABEL_18;
  }

  if (v38 == *MEMORY[0x277D5C160])
  {
    v45 = OUTLINED_FUNCTION_11_41();
    v46(v45);
    v48 = v79;
    v47 = v80;
    v49 = OUTLINED_FUNCTION_32_18();
    v50 = v81;
    v51(v49);
    sub_268373D68();
LABEL_11:
    (*(v47 + 8))(v48, v50);
    goto LABEL_18;
  }

  v52 = v85;
  if (v38 == *MEMORY[0x277D5C138])
  {
    v53 = OUTLINED_FUNCTION_11_41();
    v54(v53);
    v48 = v75;
    v47 = v76;
    v55 = OUTLINED_FUNCTION_32_18();
    v50 = v77;
    v56(v55);
    sub_2683740A4();
    goto LABEL_11;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v57 = sub_2683CF7E8();
  __swift_project_value_buffer(v57, qword_28027C958);
  v58 = v73;
  v59 = v74;
  v73(v74, v78, v24);
  v60 = sub_2683CF7C8();
  v61 = sub_2683CFE78();
  if (OUTLINED_FUNCTION_45(v61))
  {
    v62 = OUTLINED_FUNCTION_49();
    v84 = OUTLINED_FUNCTION_53();
    v86 = v84;
    *v62 = 136315138;
    v58(v72, v59, v24);
    v63 = sub_2683CFAD8();
    v64 = v59;
    v66 = v65;
    v67 = *(v26 + 8);
    v67(v64, v24);
    v68 = sub_2681610A0(v63, v66, &v86);

    *(v62 + 4) = v68;
    v52 = v85;
    _os_log_impl(&dword_2680EB000, v60, v61, "[NotebookTask] got unsupported parse type: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    OUTLINED_FUNCTION_15_36();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v67 = *(v26 + 8);
    v67(v59, v24);
  }

  OUTLINED_FUNCTION_26_25();
  *(v52 + 56) = v69;
  v70 = OUTLINED_FUNCTION_69();
  (v67)(v70);
LABEL_18:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268372B10()
{
  v0 = type metadata accessor for NotebookTaskParser(0);
  __swift_allocate_value_buffer(v0, qword_28027CE50);
  v1 = __swift_project_value_buffer(v0, qword_28027CE50);
  return sub_268372B5C(v1);
}

uint64_t sub_268372B5C@<X0>(char *a2@<X8>)
{
  sub_2683CC078();
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v3 = *(type metadata accessor for NotebookTaskParser(0) + 36);
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v18);
  v4 = type metadata accessor for NotebookDateTimeResolver(0);
  *(a2 + 3) = v4;
  *(a2 + 4) = &off_287904258;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  boxed_opaque_existential_0[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_0[4] = &off_28790C920;
  v6 = swift_allocObject();
  *boxed_opaque_existential_0 = v6;
  sub_268376270(v19, v6 + 16);
  v7 = *(v4 + 20);
  v8 = sub_2683CB668();
  v9 = *(*(v8 - 8) + 16);
  v9(boxed_opaque_existential_0 + v7, &a2[v3], v8);
  sub_2683CE7E8();
  v10 = type metadata accessor for NotebookLocationResolver(0);
  *(a2 + 8) = v10;
  *(a2 + 9) = &off_28790BB08;
  v11 = __swift_allocate_boxed_opaque_existential_0(a2 + 5);
  v11[3] = &type metadata for AceUserLocationProvider;
  v11[4] = &off_28790C920;
  v12 = swift_allocObject();
  *v11 = v12;
  sub_268376270(v19, v12 + 16);
  v9(v11 + *(v10 + 20), &a2[v3], v8);
  *(a2 + 13) = &type metadata for NotebookReferenceResolver;
  *(a2 + 14) = &off_287900140;
  v13 = swift_allocObject();
  *(a2 + 10) = v13;
  v14 = sub_2683CF6C8();
  v15 = sub_2683CF6B8();
  v16 = MEMORY[0x277D5FDD8];
  v13[5] = v14;
  v13[6] = v16;
  v13[2] = v15;
  *(a2 + 18) = sub_2683CE4A8();
  *(a2 + 19) = &off_287902390;
  __swift_allocate_boxed_opaque_existential_0(a2 + 15);
  sub_2683CE498();
  result = sub_2683762CC(v19);
  *(a2 + 23) = &type metadata for NotebookFeatureManager;
  *(a2 + 24) = &protocol witness table for NotebookFeatureManager;
  return result;
}

void sub_268372DA0()
{
  OUTLINED_FUNCTION_30_0();
  v142 = v0;
  v2 = v1;
  v4 = v3;
  v134 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_18();
  v133 = v6;
  v7 = OUTLINED_FUNCTION_3_8();
  v136 = type metadata accessor for SnoozeTasksNLv3IntentWrapper(v7);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_18();
  v135 = v9;
  v10 = OUTLINED_FUNCTION_3_8();
  v138 = type metadata accessor for SetTaskAttributeNLv3IntentWrapper(v10);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_18();
  v137 = v12;
  v13 = OUTLINED_FUNCTION_3_8();
  v140 = type metadata accessor for AddTasksNLv3IntentWrapper(v13);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_18();
  v139 = v15;
  v16 = OUTLINED_FUNCTION_3_8();
  NoteNLv3IntentWrapper = type metadata accessor for CreateNoteNLv3IntentWrapper(v16);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_18();
  v141 = v19;
  v20 = OUTLINED_FUNCTION_3_8();
  v21 = type metadata accessor for NotebookNLv3Intent(v20);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_2_1();
  v132 = v22;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v23);
  v145 = &v128 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v128 - v26;
  v28 = sub_2683CE448();
  OUTLINED_FUNCTION_0_3();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_1();
  v131 = v32;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v128 - v34;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v36 = sub_2683CF7E8();
  v37 = __swift_project_value_buffer(v36, qword_28027C958);
  v38 = *(v30 + 16);
  v148 = v2;
  v143 = v38;
  v144 = v30 + 16;
  v38(v35, v2, v28);
  v146 = v37;
  v39 = sub_2683CF7C8();
  v40 = sub_2683CFE98();
  v41 = os_log_type_enabled(v39, v40);
  v147 = v30;
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_49();
    v129 = v4;
    v43 = v42;
    v44 = OUTLINED_FUNCTION_53();
    v128 = NoteNLv3IntentWrapper;
    v45 = v44;
    v150[0] = v44;
    *v43 = 136315138;
    sub_268375F78();
    v46 = sub_2683D0568();
    v48 = v47;
    v49 = OUTLINED_FUNCTION_20_34();
    v50(v49);
    v51 = sub_2681610A0(v46, v48, v150);

    *(v43 + 4) = v51;
    _os_log_impl(&dword_2680EB000, v39, v40, "[NotebookTask] parsing nlv3 intent: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    NoteNLv3IntentWrapper = v128;
    OUTLINED_FUNCTION_38();
    v4 = v129;
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v52 = OUTLINED_FUNCTION_20_34();
    v53(v52);
  }

  v54 = v148;
  sub_2683CE338();
  v55 = sub_2683CD628();
  if (__swift_getEnumTagSinglePayload(v27, 1, v55) == 1)
  {
    sub_26812D9E0(v27, &qword_2802535F8, &unk_2683F32E0);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v56 = sub_2683CD5E8();
    v57 = v58;
    v59 = OUTLINED_FUNCTION_69();
    v60(v59);
  }

  if (qword_28024CB58 != -1)
  {
    swift_once();
  }

  v61 = sub_2683CCFA8();
  if (!v57)
  {

    goto LABEL_19;
  }

  if (v56 != v61 || v57 != v62)
  {
    v64 = sub_2683D0598();

    if (v64)
    {
      goto LABEL_24;
    }

LABEL_19:
    v65 = sub_2683CF7C8();
    v66 = sub_2683CFE98();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2680EB000, v65, v66, "[NotebookTask] NLIntent is not a notebook domain intent", v67, 2u);
      OUTLINED_FUNCTION_38();
    }

    goto LABEL_22;
  }

LABEL_24:
  v69 = v145;
  v70 = v143;
  v143(v145, v54, v30);
  if (sub_268356B84())
  {
    v71 = v141;
    sub_268375FD0(v69, v141);
    v72 = v142;
    sub_26813CA00(v142 + 80, v71 + *(NoteNLv3IntentWrapper + 20));
    v73 = *(type metadata accessor for NotebookTaskParser(0) + 36);
    v74 = *(NoteNLv3IntentWrapper + 24);
    sub_2683CB668();
    OUTLINED_FUNCTION_1();
    (*(v75 + 16))(v71 + v74, v72 + v73);
    *(v4 + 24) = NoteNLv3IntentWrapper;
    *(v4 + 32) = &off_2878FE6C8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
    sub_268376210(v71, boxed_opaque_existential_0, type metadata accessor for CreateNoteNLv3IntentWrapper);
    OUTLINED_FUNCTION_0_72();
    sub_2683761B8(v69, v77);
    v68 = 2;
    goto LABEL_26;
  }

  if (sub_268357170())
  {
    v78 = v139;
    sub_268375FD0(v69, v139);
    v79 = v140;
    OUTLINED_FUNCTION_18_34();
    sub_26813CA00(v30 + 40, v78 + v79[6]);
    sub_26813CA00(v30 + 120, v78 + v79[7]);
    sub_26813CA00(v30 + 80, v78 + v79[8]);
    v80 = *(type metadata accessor for NotebookTaskParser(0) + 36);
    v81 = v79[9];
    sub_2683CB668();
    OUTLINED_FUNCTION_1();
    (*(v82 + 16))(v78 + v81, v30 + v80);
    *(v4 + 24) = v79;
    *(v4 + 32) = &off_2879051B0;
    v83 = __swift_allocate_boxed_opaque_existential_0(v4);
    sub_268376210(v78, v83, type metadata accessor for AddTasksNLv3IntentWrapper);
    OUTLINED_FUNCTION_0_72();
    sub_2683761B8(v69, v84);
    *(v4 + 56) = 0;
    goto LABEL_27;
  }

  sub_268357270();
  if (v85)
  {
    v86 = v137;
    sub_268375FD0(v69, v137);
    v87 = v138;
    OUTLINED_FUNCTION_18_34();
    sub_26813CA00(v30 + 40, v86 + v87[6]);
    sub_26813CA00(v30 + 120, v86 + v87[7]);
    sub_26813CA00(v30 + 80, v86 + v87[8]);
    v88 = *(type metadata accessor for NotebookTaskParser(0) + 36);
    v89 = v87[9];
    sub_2683CB668();
    OUTLINED_FUNCTION_1();
    (*(v90 + 16))(v86 + v89, v30 + v88);
    *(v4 + 24) = v87;
    *(v4 + 32) = &off_28790E430;
    v91 = __swift_allocate_boxed_opaque_existential_0(v4);
    sub_268376210(v86, v91, type metadata accessor for SetTaskAttributeNLv3IntentWrapper);
    OUTLINED_FUNCTION_0_72();
    sub_2683761B8(v69, v92);
    v68 = 4;
    goto LABEL_26;
  }

  if (sub_268357548())
  {
    v93 = v135;
    sub_268375FD0(v69, v135);
    v94 = v136;
    OUTLINED_FUNCTION_18_34();
    sub_26813CA00(v30 + 80, v93 + *(v94 + 24));
    v95 = *(type metadata accessor for NotebookTaskParser(0) + 36);
    v96 = *(v94 + 28);
    sub_2683CB668();
    OUTLINED_FUNCTION_1();
    (*(v97 + 16))(v93 + v96, v30 + v95);
    *(v4 + 24) = v94;
    *(v4 + 32) = &off_287902AF0;
    v98 = __swift_allocate_boxed_opaque_existential_0(v4);
    sub_268376210(v93, v98, type metadata accessor for SnoozeTasksNLv3IntentWrapper);
    OUTLINED_FUNCTION_0_72();
    sub_2683761B8(v69, v99);
    v68 = 1;
    goto LABEL_26;
  }

  if (sub_268356870())
  {
    v100 = v133;
    sub_268375FD0(v69, v133);
    v101 = v134;
    v102 = v142;
    sub_26813CA00(v142, v100 + *(v134 + 20));
    sub_26813CA00(v102 + 40, v100 + *(v101 + 24));
    *(v4 + 24) = v101;
    *(v4 + 32) = &off_2878FEAA8;
    v103 = __swift_allocate_boxed_opaque_existential_0(v4);
    sub_268376210(v100, v103, type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper);
    OUTLINED_FUNCTION_0_72();
    sub_2683761B8(v69, v104);
    v68 = 3;
    goto LABEL_26;
  }

  v105 = sub_2683569FC();
  switch(v105)
  {
    case 24:
      v108 = v131;
      v70(v131, v54, v30);
      v109 = sub_2683CF7C8();
      v110 = sub_2683CFE78();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = OUTLINED_FUNCTION_49();
        v112 = v108;
        v113 = OUTLINED_FUNCTION_53();
        v150[0] = v113;
        *v111 = 136315138;
        sub_268375F78();
        v114 = sub_2683D0568();
        v116 = v115;
        v130(v112, v30);
        sub_2681610A0(v114, v116, v150);
        OUTLINED_FUNCTION_33_19();

        *(v111 + 4) = v112;
        _os_log_impl(&dword_2680EB000, v109, v110, "[NotebookTask] unsupported nl intent: %s", v111, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v113);
        OUTLINED_FUNCTION_15_36();
        OUTLINED_FUNCTION_38();

        OUTLINED_FUNCTION_0_72();
        v118 = v145;
      }

      else
      {

        v130(v108, v30);
        OUTLINED_FUNCTION_0_72();
        v118 = v69;
      }

      break;
    case 10:
      *(v4 + 24) = &type metadata for UnsupportedIntentWrapper;
      *(v4 + 32) = &off_2878FE8B8;
      v106 = 10;
      goto LABEL_41;
    case 9:
      *(v4 + 24) = &type metadata for UnsupportedIntentWrapper;
      *(v4 + 32) = &off_2878FE8B8;
      v106 = 9;
LABEL_41:
      *v4 = v106;
      OUTLINED_FUNCTION_0_72();
      sub_2683761B8(v69, v107);
      v68 = 6;
      goto LABEL_26;
    default:
      v119 = v132;
      sub_268375FD0(v69, v132);
      v120 = sub_2683CF7C8();
      v121 = sub_2683CFE78();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = OUTLINED_FUNCTION_49();
        v123 = OUTLINED_FUNCTION_53();
        v150[0] = v123;
        *v122 = 136315138;
        v149 = sub_2683569FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253AF8, &unk_2683F54D0);
        v124 = sub_2683CFAD8();
        v125 = v69;
        v127 = v126;
        sub_2683761B8(v119, type metadata accessor for NotebookNLv3Intent);
        sub_2681610A0(v124, v127, v150);
        OUTLINED_FUNCTION_33_19();

        *(v122 + 4) = v124;
        _os_log_impl(&dword_2680EB000, v120, v121, "[NotebookTask] Un-implemented unsupported handler for: %s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v123);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();

        v118 = v125;
      }

      else
      {

        sub_2683761B8(v119, type metadata accessor for NotebookNLv3Intent);
        v118 = v69;
      }

      v117 = type metadata accessor for NotebookNLv3Intent;
      break;
  }

  sub_2683761B8(v118, v117);
LABEL_22:
  OUTLINED_FUNCTION_26_25();
LABEL_26:
  *(v4 + 56) = v68;
LABEL_27:
  OUTLINED_FUNCTION_29_0();
}

void sub_268373A08()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2683CCBD8();
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v13 = sub_2683CF7E8();
  __swift_project_value_buffer(v13, qword_28027C958);
  v40 = *(v6 + 16);
  v40(v12, v1, v4);
  v14 = sub_2683CF7C8();
  v15 = sub_2683CFE98();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_49();
    v38 = v1;
    v17 = v16;
    v18 = OUTLINED_FUNCTION_53();
    v37 = v10;
    v19 = v18;
    v45 = v18;
    *v17 = 136315138;
    v20 = sub_2683CCBB8();
    v39 = v3;
    v22 = v21;
    (*(v6 + 8))(v12, v4);
    v23 = sub_2681610A0(v20, v22, &v45);
    v3 = v39;

    *(v17 + 4) = v23;
    _os_log_impl(&dword_2680EB000, v14, v15, "[NotebookTask] parsing direct invocation with id: %s ", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v10 = v37;
    OUTLINED_FUNCTION_38();
    v1 = v38;
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v6 + 8))(v12, v4);
  }

  v24 = v40;
  v40(v10, v1, v4);
  v25 = sub_26834C7E0(v10, &v45);
  v26 = v46;
  if (v46)
  {
    v27 = v49;
    v28 = BYTE8(v48);
    v29 = v48;
    v30 = v47;
    *v3 = v45;
    *(v3 + 8) = v26;
    *(v3 + 16) = v30;
    *(v3 + 32) = v29;
    *(v3 + 40) = v28 & 1;
    *(v3 + 48) = v27;
    v31 = 5;
  }

  else
  {
    v24(v10, v1, v4, v25);
    sub_26834E04C(v10, &v41);
    if (v42 && (v50[0] = v41, v50[1] = v42, v51 = v43, v52 = v44, sub_26839E5C0(v50, &v45), v32 = v46, v46 != 1))
    {
      v33 = v45;
      *(v3 + 24) = &type metadata for SetTaskAttributeDirectInvocationIntentWrapper;
      *(v3 + 32) = &off_28790D6C0;
      OUTLINED_FUNCTION_166_1();
      v34 = swift_allocObject();
      *v3 = v34;
      *(v34 + 16) = v33;
      *(v34 + 24) = v32;
      v35 = v48;
      *(v34 + 32) = v47;
      *(v34 + 48) = v35;
      *(v34 + 64) = v49;
      v31 = 4;
    }

    else
    {
      *(v3 + 48) = 0;
      *(v3 + 16) = 0u;
      *(v3 + 32) = 0u;
      *v3 = 0u;
      v31 = -1;
    }
  }

  *(v3 + 56) = v31;
  OUTLINED_FUNCTION_29_0();
}

void sub_268373D68()
{
  OUTLINED_FUNCTION_30_0();
  v32 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_2683CCC68();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_1();
  v10 = v9;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v14 = sub_2683CF7E8();
  v15 = __swift_project_value_buffer(v14, qword_28027C958);
  v33 = *(v7 + 16);
  v33(v13, v2, v5);
  v31 = v15;
  v16 = sub_2683CF7C8();
  v17 = sub_2683CFE98();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_49();
    v29 = v2;
    v19 = v18;
    v28 = OUTLINED_FUNCTION_53();
    *&v36[0] = v28;
    *v19 = 136315138;
    v20 = v10;
    v33(v10, v13, v5);
    v21 = sub_2683CFAD8();
    v30 = v4;
    v23 = v22;
    (*(v7 + 8))(v13, v5);
    v24 = sub_2681610A0(v21, v23, v36);
    v4 = v30;

    *(v19 + 4) = v24;
    _os_log_impl(&dword_2680EB000, v16, v17, "[NotebookTask] parsing USO parse: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_15_36();
    v2 = v29;
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v7 + 8))(v13, v5);
    v20 = v10;
  }

  v33(v20, v2, v5);
  sub_2682DF700(v20, sub_268374770, 0, &v34);
  if (*(&v35 + 1) == 1)
  {
    sub_26812D9E0(&v34, &qword_280251D68, &unk_2683E60D0);
    v25 = sub_2683CF7C8();
    v26 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2680EB000, v25, v26, "[NotebookTask] USO invalid parse", v27, 2u);
      OUTLINED_FUNCTION_15_36();
    }

    *(v4 + 48) = 0;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    *(v4 + 56) = -1;
  }

  else
  {
    v36[0] = v34;
    v36[1] = v35;
    sub_2683747A0();
    sub_26818F5C8(v36);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_2683740A4()
{
  OUTLINED_FUNCTION_30_0();
  v88 = v0;
  v2 = v1;
  v92 = v3;
  Note = type metadata accessor for CreateNoteShim.Wrapper(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_18();
  v86 = v5;
  OUTLINED_FUNCTION_3_8();
  v93 = sub_2683CEE08();
  OUTLINED_FUNCTION_0_3();
  v89 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_1();
  v91 = v8;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v79 - v10;
  v12 = sub_2683CC718();
  OUTLINED_FUNCTION_0_3();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_1();
  v83 = v16;
  OUTLINED_FUNCTION_8_0();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v79 - v21;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v23 = sub_2683CF7E8();
  v24 = __swift_project_value_buffer(v23, qword_28027C958);
  v25 = *(v14 + 16);
  v90 = v2;
  v26 = v25;
  v25(v22, v2, v12);
  v82 = v24;
  v27 = sub_2683CF7C8();
  v28 = sub_2683CFE98();
  v29 = OUTLINED_FUNCTION_45(v28);
  v84 = v14;
  v85 = v12;
  v81 = v14 + 16;
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_49();
    v31 = OUTLINED_FUNCTION_53();
    v80 = v11;
    v32 = v31;
    v94 = v31;
    *v30 = 136315138;
    v26(v20, v22, v12);
    v33 = v26;
    v34 = sub_2683CFAD8();
    v36 = v35;
    v37 = OUTLINED_FUNCTION_31_15();
    (v14)(v37);
    v38 = sub_2681610A0(v34, v36, &v94);

    *(v30 + 4) = v38;
    _os_log_impl(&dword_2680EB000, v27, v28, "[NotebookTask] parsing client action: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v11 = v80;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    v26 = v33;
  }

  else
  {

    v39 = OUTLINED_FUNCTION_31_15();
    (v14)(v39);
  }

  v40 = v90;
  sub_2683CC708();
  v41 = sub_2683CEDF8();
  v43 = v42;
  v44 = *(v89 + 8);
  v44(v11, v93);
  v45 = v41 == 0x725F657461657263 && v43 == 0xEF7265646E696D65;
  if (v45 || (sub_2683D0598() & 1) != 0)
  {

    v46 = v91;
    sub_2683CC708();
    v47 = sub_2683CEDE8();
    v44(v46, v93);
    v48 = *(type metadata accessor for NotebookTaskParser(0) + 36);
    Reminder = type metadata accessor for CreateReminderShim.Wrapper(0);
    v50 = v92;
    *(v92 + 24) = Reminder;
    *(v50 + 32) = &off_28790DC70;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v50);
    v52 = *(Reminder + 20);
    sub_2683CB668();
    OUTLINED_FUNCTION_1();
    v54 = boxed_opaque_existential_0 + v52;
    v55 = v88;
    (*(v53 + 16))(v54, v88 + v48);
    sub_26813CA00(v55 + 160, boxed_opaque_existential_0 + *(Reminder + 24));
    *boxed_opaque_existential_0 = v47;
    *(v50 + 56) = 0;
    goto LABEL_12;
  }

  if (v41 == 0x6E5F657461657263 && v43 == 0xEB0000000065746FLL)
  {

    goto LABEL_21;
  }

  v57 = sub_2683D0598();

  if (v57)
  {
LABEL_21:
    v70 = *(type metadata accessor for NotebookTaskParser(0) + 36);
    sub_2683CB668();
    OUTLINED_FUNCTION_1();
    v72 = v86;
    (*(v71 + 16))(v86, v88 + v70);
    v73 = v91;
    sub_2683CC708();
    v74 = sub_2683CEDE8();
    v44(v73, v93);
    v75 = Note;
    *(v72 + *(Note + 20)) = v74;
    v76 = v92;
    *(v92 + 24) = v75;
    *(v76 + 32) = &off_287905458;
    v77 = __swift_allocate_boxed_opaque_existential_0(v76);
    sub_268376210(v72, v77, type metadata accessor for CreateNoteShim.Wrapper);
    *(v76 + 56) = 2;
    goto LABEL_12;
  }

  v89 = v14;
  v58 = v40;
  v59 = v91;
  v60 = v83;
  v61 = v85;
  v26(v83, v58, v85);
  v62 = sub_2683CF7C8();
  v63 = sub_2683CFE58();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = OUTLINED_FUNCTION_49();
    v65 = OUTLINED_FUNCTION_53();
    v94 = v65;
    *v64 = 136315138;
    sub_2683CC708();
    v90 = sub_2683CEDF8();
    v66 = v61;
    v68 = v67;
    v44(v59, v93);
    (v89)(v60, v66);
    v69 = sub_2681610A0(v90, v68, &v94);

    *(v64 + 4) = v69;
    _os_log_impl(&dword_2680EB000, v62, v63, "[NotebookTask] got unsupported client action with tool id: %s, ignoring.", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_15_36();
  }

  else
  {

    (v89)(v60, v61);
  }

  v78 = v92;
  *(v92 + 48) = 0;
  *(v78 + 16) = 0u;
  *(v78 + 32) = 0u;
  *v78 = 0u;
  *(v78 + 56) = -1;
LABEL_12:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268374770(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
  {
    return 1;
  }

  else
  {
    return sub_2683D0598();
  }
}

void sub_2683747A0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2683CB668();
  OUTLINED_FUNCTION_0_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v12 = v11 - v10;
  sub_26820316C(v3, v123);
  if (v123[3])
  {
    sub_26820316C(v123, v122);
    v13 = sub_2683CDBA8();
    if (OUTLINED_FUNCTION_8_40(&v121, v14, v15, v13))
    {
      OUTLINED_FUNCTION_19_34();
      sub_268392494(&v124);
      *(&v119 + 1) = &unk_28790D068;
      v120 = &off_28790D2D0;
LABEL_4:
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_9_38(v16);
      *(v17 + 48) = *&v125[16];
LABEL_12:
      sub_268375254(&v118, v5);
LABEL_13:

LABEL_14:
      v23 = &v118;
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v23);
      goto LABEL_16;
    }

    v18 = sub_2683CDF38();
    if (OUTLINED_FUNCTION_3_52(v18))
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_28_20();
      sub_2683CDDD8();

      if (v124)
      {
        v19 = sub_268161EA4();

        if (v19)
        {
          *(v5 + 24) = &type metadata for UnsupportedIntentWrapper;
          *(v5 + 32) = &off_2878FE8B8;

          *v5 = 10;
          *(v5 + 56) = 6;
LABEL_16:
          __swift_destroy_boxed_opaque_existential_0(v122);
          goto LABEL_79;
        }
      }

      sub_26839268C(&v124);
      *(&v119 + 1) = &unk_28790D0F8;
      v120 = &off_28790D320;
      v21 = swift_allocObject();
      OUTLINED_FUNCTION_9_38(v21);
      *(v22 + 48) = *&v125[16];
      goto LABEL_12;
    }

    v20 = sub_2683CDEF8();
    if (OUTLINED_FUNCTION_3_52(v20))
    {
      OUTLINED_FUNCTION_19_34();
      sub_268392938(&v124);
      *(&v119 + 1) = &unk_28790D188;
      v120 = &off_28790D370;
      goto LABEL_4;
    }

    v24 = sub_2683CE0C8();
    if (OUTLINED_FUNCTION_8_40(&v118, v25, v26, v24))
    {
      type metadata accessor for NotebookTaskParser(0);
      v27 = OUTLINED_FUNCTION_24_20();
      v28(v27);
      *&v125[8] = type metadata accessor for SetTaskAttributeIntentModelNLv4(0);
      *&v125[16] = &off_2879013D8;
      __swift_allocate_boxed_opaque_existential_0(&v124);
      OUTLINED_FUNCTION_33_19();

      sub_26819675C(v29, v12, v3);
LABEL_21:
      v35 = OUTLINED_FUNCTION_10_34();
      sub_268375714(v35, v36);
LABEL_22:

LABEL_23:
      v23 = &v124;
      goto LABEL_15;
    }

    v30 = sub_2683CDBE8();
    if (OUTLINED_FUNCTION_8_40(&v118, v31, v32, v30))
    {
      type metadata accessor for NotebookTaskParser(0);
      v33 = OUTLINED_FUNCTION_24_20();
      v34(v33);
      *&v125[8] = type metadata accessor for SetTaskAttributeIntentModelNLv4(0);
      *&v125[16] = &off_2879013D8;
      __swift_allocate_boxed_opaque_existential_0(&v124);
      OUTLINED_FUNCTION_33_19();

      sub_268196A78(v12, v3);
      goto LABEL_21;
    }

    v37 = sub_2683CD958();
    if (OUTLINED_FUNCTION_8_40(&v118, v38, v39, v37))
    {

      v40 = *(type metadata accessor for NotebookTaskParser(0) + 36);
      v41 = type metadata accessor for SetTaskAttributeIntentModelNLv4(0);
      *&v125[8] = v41;
      *&v125[16] = &off_2879013D8;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v124);
      (*(v8 + 16))(boxed_opaque_existential_0 + *(v41 + 32), v1 + v40, v6);
      *boxed_opaque_existential_0 = 0u;
      *(boxed_opaque_existential_0 + 1) = 0u;
      *(boxed_opaque_existential_0 + *(v41 + 36)) = 0;
      v43 = OUTLINED_FUNCTION_10_34();
      sub_268375714(v43, v44);
      goto LABEL_23;
    }

    v45 = sub_2683CDBD8();
    if (OUTLINED_FUNCTION_8_40(&v118, v46, v47, v45))
    {

      v49 = sub_26816201C(v48);
      v51 = v50;
      v53 = v52;
      v55 = v54;
      *&v125[8] = &type metadata for SnoozeTasksIntentModelNLv4;
      *&v125[16] = &off_2878FFB38;
      v56 = swift_allocObject();
      *&v124 = v56;
      v56[2] = v49;
      v56[3] = v51;
      v56[4] = v53;
      v56[5] = v55;
      v57 = OUTLINED_FUNCTION_10_34();
      sub_268375B64(v57, v58);
      goto LABEL_22;
    }

    v59 = sub_2683CD8B8();
    if (OUTLINED_FUNCTION_3_52(v59))
    {

      sub_268229538(&v124);
      *(&v119 + 1) = &type metadata for CreateNoteIntentModelNLv4;
      v120 = &off_287905A30;
      OUTLINED_FUNCTION_166_1();
      v60 = swift_allocObject();
      *&v118 = v60;

      v61 = *v125;
      v60[1] = v124;
      v60[2] = v61;
      v62 = v126;
      v60[3] = *&v125[16];
      v60[4] = v62;
      NoteIntentWrapper = type metadata accessor for CreateNoteIntentWrapper(0);
      *(v5 + 24) = NoteIntentWrapper;
      *(v5 + 32) = &off_287904088;
      v64 = __swift_allocate_boxed_opaque_existential_0(v5);
      sub_26813CA00(&v118, v64);
      sub_26813CA00(v1 + 80, (v64 + 5));
      v65 = type metadata accessor for NotebookTaskParser(0);
      (*(v8 + 16))(v64 + *(NoteIntentWrapper + 24), v1 + *(v65 + 36), v6);
      sub_26813CA00(v1 + 160, v64 + *(NoteIntentWrapper + 28));
      *(v5 + 56) = 2;
      goto LABEL_14;
    }

    v66 = sub_2683CDE68();
    if (OUTLINED_FUNCTION_3_52(v66))
    {
      goto LABEL_31;
    }

    v72 = sub_2683CDAD8();
    if (OUTLINED_FUNCTION_3_52(v72))
    {
      goto LABEL_35;
    }

    v78 = sub_2683CE0D8();
    if (OUTLINED_FUNCTION_3_52(v78))
    {
      goto LABEL_40;
    }

    v85 = sub_2683CD9D8();
    if (OUTLINED_FUNCTION_3_52(v85))
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CD8F8();

      v67 = OUTLINED_FUNCTION_30_17();
      v69 = 1;
      goto LABEL_33;
    }

    v86 = sub_2683CD728();
    if (OUTLINED_FUNCTION_3_52(v86))
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CD8F8();

      v73 = OUTLINED_FUNCTION_30_17();
      v75 = 1;
      goto LABEL_37;
    }

    v87 = sub_2683CDD98();
    if (OUTLINED_FUNCTION_3_52(v87))
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_28_20();
      sub_2683CD8F8();

      v79 = v124;
      v80 = 1;
      goto LABEL_42;
    }

    v88 = sub_2683CDEE8();
    if (OUTLINED_FUNCTION_3_52(v88))
    {
LABEL_35:
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CD8F8();
LABEL_36:

      v73 = OUTLINED_FUNCTION_30_17();
      v75 = 0;
LABEL_37:
      sub_2683664F8(v73, v75, v74);
      *(&v119 + 1) = &unk_28790BCB8;
      v120 = &off_28790BF28;
      v76 = swift_allocObject();
      OUTLINED_FUNCTION_9_38(v76);
      *(v77 + 41) = *&v125[9];
      goto LABEL_38;
    }

    v89 = sub_2683CE108();
    if (OUTLINED_FUNCTION_3_52(v89))
    {
LABEL_31:
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CD8F8();
LABEL_32:

      v67 = OUTLINED_FUNCTION_30_17();
      v69 = 0;
LABEL_33:
      sub_268365D00(v67, v69, v68);
      *(&v119 + 1) = &unk_28790BD48;
      v120 = &off_28790BF88;
      v70 = swift_allocObject();
      OUTLINED_FUNCTION_9_38(v70);
      *(v71 + 48) = *&v125[16];
      *(v71 + 64) = v126;
LABEL_38:
      sub_268375C90(&v118, v5);
      goto LABEL_13;
    }

    v90 = sub_2683CE208();
    if (OUTLINED_FUNCTION_3_52(v90))
    {
LABEL_40:
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_28_20();
      sub_2683CD8F8();
LABEL_41:

      v79 = v124;
      v80 = 0;
LABEL_42:
      sub_268366228(v79, v80, &v118);
      *&v125[8] = &unk_28790BDE0;
      *&v125[16] = &off_28790BFE8;
      v81 = swift_allocObject();
      *&v124 = v81;
      v82 = v119;
      *(v81 + 16) = v118;
      *(v81 + 32) = v82;
      *(v81 + 48) = v120;
      v83 = OUTLINED_FUNCTION_10_34();
      sub_268375C90(v83, v84);
      goto LABEL_22;
    }

    v91 = sub_2683CD948();
    if (OUTLINED_FUNCTION_3_52(v91))
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CDDC8();
      goto LABEL_36;
    }

    v92 = sub_2683CDC88();
    if (OUTLINED_FUNCTION_3_52(v92))
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CDDC8();
      goto LABEL_32;
    }

    v93 = sub_2683CDF48();
    if (OUTLINED_FUNCTION_3_52(v93))
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_28_20();
      sub_2683CDDC8();
      goto LABEL_41;
    }

    v94 = sub_2683CD8D8();
    if (OUTLINED_FUNCTION_3_52(v94))
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CCFF8();
      goto LABEL_36;
    }

    v95 = sub_2683CDBC8();
    if (OUTLINED_FUNCTION_3_52(v95))
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_14_31();
      sub_2683CCFF8();
      goto LABEL_32;
    }

    v96 = sub_2683CDF28();
    if (OUTLINED_FUNCTION_3_52(v96))
    {
      OUTLINED_FUNCTION_19_34();
      OUTLINED_FUNCTION_28_20();
      sub_2683CCFF8();
      goto LABEL_41;
    }

    __swift_destroy_boxed_opaque_existential_0(v122);
  }

  sub_26820316C(v3, &v124);
  v97 = sub_2683B62B0(&v124);
  if (v97 == 24)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v98 = sub_2683CF7E8();
    __swift_project_value_buffer(v98, qword_28027C958);
    sub_26818F56C(v3, &v124);
    v99 = sub_2683CF7C8();
    v100 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v100))
    {
      v101 = OUTLINED_FUNCTION_49();
      v102 = OUTLINED_FUNCTION_53();
      v122[0] = v102;
      *v101 = 136315138;
      sub_26818F56C(&v124, &v118);
      v103 = sub_2683CFAD8();
      v105 = v104;
      sub_26818F5C8(&v124);
      v106 = sub_2681610A0(v103, v105, v122);

      *(v101 + 4) = v106;
      _os_log_impl(&dword_2680EB000, v99, v100, "[NotebookTask] NLv4 intent unsupported and not handled: %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26818F5C8(&v124);
    }

    *(v5 + 48) = 0;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *v5 = 0u;
    v117 = -1;
  }

  else
  {
    v107 = v97;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v108 = sub_2683CF7E8();
    __swift_project_value_buffer(v108, qword_28027C958);
    sub_26818F56C(v3, &v124);
    v109 = sub_2683CF7C8();
    v110 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v110))
    {
      v111 = OUTLINED_FUNCTION_49();
      v112 = OUTLINED_FUNCTION_53();
      v122[0] = v112;
      *v111 = 136315138;
      sub_26818F56C(&v124, &v118);
      v113 = sub_2683CFAD8();
      v115 = v114;
      sub_26818F5C8(&v124);
      v116 = sub_2681610A0(v113, v115, v122);

      *(v111 + 4) = v116;
      _os_log_impl(&dword_2680EB000, v109, v110, "[NotebookTask] NLv4 intent recognized as unsupported: %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26818F5C8(&v124);
    }

    *(v5 + 24) = &type metadata for UnsupportedIntentWrapper;
    *(v5 + 32) = &off_2878FE8B8;
    *v5 = v107;
    v117 = 6;
  }

  *(v5 + 56) = v117;
LABEL_79:
  sub_26812D9E0(v123, &qword_28024E370, &unk_2683D9AA0);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268375254@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for AddTasksIntentWrapper(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2683CB668();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntentTriggerModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 40))(v13, v14);
  if (*&v12[*(v10 + 36)] && (sub_2683CDA18() || sub_2683CDA08()))
  {

    __swift_project_boxed_opaque_existential_1(&v12[*(v10 + 32)], *&v12[*(v10 + 32) + 24]);
    v15 = sub_2683ACB94();
    result = sub_2683761B8(v12, type metadata accessor for IntentTriggerModel);
    if (v15)
    {
      *(a2 + 24) = &type metadata for UnsupportedIntentWrapper;
      *(a2 + 32) = &off_2878FE8B8;
      v17 = 23;
LABEL_9:
      *a2 = v17;
      v20 = 6;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2683761B8(v12, type metadata accessor for IntentTriggerModel);
  }

  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  result = (*(v19 + 72))(v18, v19);
  if (result)
  {
    *(a2 + 24) = &type metadata for UnsupportedIntentWrapper;
    *(a2 + 32) = &off_2878FE8B8;
    v17 = 13;
    goto LABEL_9;
  }

  sub_26813CA00(a1, v39);
  sub_26813CA00(v3 + 80, v38);
  sub_26813CA00(v3, v37);
  sub_26813CA00(v3 + 40, v36);
  sub_26813CA00(v3 + 120, v35);
  sub_26813CA00(v3 + 160, v34);
  v21 = type metadata accessor for NotebookTaskParser(0);
  v22 = v32;
  v23 = *(v32 + 16);
  v24 = v31;
  v25 = v33;
  v23(v31, v3 + *(v21 + 36), v33);
  *(a2 + 24) = v6;
  *(a2 + 32) = &off_28790C1C8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_26813CA00(v39, v8);
  sub_26813CA00(v38, (v8 + 40));
  sub_26813CA00(v37, (v8 + 80));
  sub_26813CA00(v36, (v8 + 120));
  sub_26813CA00(v35, (v8 + 160));
  v23(&v8[*(v6 + 36)], v24, v25);
  sub_26813CA00(v34, &v8[*(v6 + 40)]);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v27 = sub_2683CF7E8();
  __swift_project_value_buffer(v27, qword_28027C958);
  v28 = sub_2683CF7C8();
  v29 = sub_2683CFE58();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2680EB000, v28, v29, "[AddTasksIntentWrapper] Created", v30, 2u);
    MEMORY[0x26D617A40](v30, -1, -1);
  }

  (*(v22 + 8))(v24, v25);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v39);
  result = sub_268376210(v8, boxed_opaque_existential_0, type metadata accessor for AddTasksIntentWrapper);
  v20 = 0;
LABEL_15:
  *(a2 + 56) = v20;
  return result;
}

uint64_t sub_268375714@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SetTaskAttributeIntentWrapper(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CB668();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IntentTriggerModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_2681C326C(v15, 0, v14);
  if (*(v14 + *(v12 + 36)) && (sub_2683CDA18() || sub_2683CDA08()))
  {

    __swift_project_boxed_opaque_existential_1((v14 + *(v12 + 32)), *(v14 + *(v12 + 32) + 24));
    v16 = sub_2683ACB94();
    result = sub_2683761B8(v14, type metadata accessor for IntentTriggerModel);
    if (v16)
    {
      *(a2 + 24) = &type metadata for UnsupportedIntentWrapper;
      *(a2 + 32) = &off_2878FE8B8;
      v18 = 23;
LABEL_9:
      *a2 = v18;
      v19 = 6;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2683761B8(v14, type metadata accessor for IntentTriggerModel);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_268196F5C();
  if (result)
  {
    *(a2 + 24) = &type metadata for UnsupportedIntentWrapper;
    *(a2 + 32) = &off_2878FE8B8;
    v18 = 20;
    goto LABEL_9;
  }

  sub_26813CA00(a1, v34);
  sub_26813CA00(v3 + 80, v33);
  sub_26813CA00(v3, v32);
  sub_26813CA00(v3 + 40, v31);
  sub_26813CA00(v3 + 120, v30);
  v20 = type metadata accessor for NotebookTaskParser(0);
  v21 = v29;
  v22 = *(v29 + 16);
  v22(v11, v3 + *(v20 + 36), v9);
  *(a2 + 24) = v6;
  *(a2 + 32) = &off_287905B30;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_26813CA00(v34, v8);
  sub_26813CA00(v33, (v8 + 40));
  sub_26813CA00(v32, (v8 + 80));
  sub_26813CA00(v31, (v8 + 120));
  sub_26813CA00(v30, (v8 + 160));
  v22(&v8[*(v6 + 36)], v11, v9);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v24 = sub_2683CF7E8();
  __swift_project_value_buffer(v24, qword_28027C958);
  v25 = sub_2683CF7C8();
  v26 = sub_2683CFE58();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2680EB000, v25, v26, "[SetTaskAttributeIntentWrapper] Created", v27, 2u);
    MEMORY[0x26D617A40](v27, -1, -1);
  }

  (*(v21 + 8))(v11, v9);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v34);
  result = sub_268376210(v8, boxed_opaque_existential_0, type metadata accessor for SetTaskAttributeIntentWrapper);
  v19 = 4;
LABEL_15:
  *(a2 + 56) = v19;
  return result;
}

uint64_t sub_268375B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2683CB668();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26813CA00(a1, v13);
  sub_26813CA00(v2, v12);
  v9 = type metadata accessor for NotebookTaskParser(0);
  (*(v6 + 16))(v8, v2 + *(v9 + 36), v5);
  *(a2 + 24) = type metadata accessor for SnoozeTasksIntentWrapper(0);
  *(a2 + 32) = &off_2879024C0;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  result = sub_2681B6AB0(v13, v12, v8, boxed_opaque_existential_0);
  *(a2 + 56) = 1;
  return result;
}

uint64_t sub_268375C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SearchForNotebookItemsIntentWrapper(0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CB668();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26813CA00(a1, v24);
  sub_26813CA00(v3, v23);
  sub_26813CA00(v3 + 40, v22);
  sub_26813CA00(v3 + 160, v21);
  v13 = type metadata accessor for NotebookTaskParser(0);
  v14 = *(v10 + 16);
  v14(v12, v3 + *(v13 + 36), v9);
  *(a2 + 24) = v6;
  *(a2 + 32) = &off_28790C178;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_26813CA00(v24, v8);
  sub_26813CA00(v23, (v8 + 40));
  sub_26813CA00(v22, (v8 + 80));
  v14(&v8[*(v6 + 32)], v12, v9);
  sub_26813CA00(v21, (v8 + 120));
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v16 = sub_2683CF7E8();
  __swift_project_value_buffer(v16, qword_28027C958);
  v17 = sub_2683CF7C8();
  v18 = sub_2683CFE58();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2680EB000, v17, v18, "[SearchForNotebookItemsIntentWrapper] Created", v19, 2u);
    MEMORY[0x26D617A40](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  result = sub_268376210(v8, boxed_opaque_existential_0, type metadata accessor for SearchForNotebookItemsIntentWrapper);
  *(a2 + 56) = 3;
  return result;
}

unint64_t sub_268375F78()
{
  result = qword_28024E980;
  if (!qword_28024E980)
  {
    sub_2683CE448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E980);
  }

  return result;
}

uint64_t sub_268375FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotebookNLv3Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NotebookTaskParser(uint64_t a1)
{
  result = qword_280253B00;
  if (!qword_280253B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  OUTLINED_FUNCTION_35_15();
  v2(*(v0 + 24));
  v1(*(v0 + 32));

  v3 = OUTLINED_FUNCTION_23_29();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t objectdestroy_11Tm_0()
{
  OUTLINED_FUNCTION_35_15();

  v2(v0[4]);
  v1(v0[5]);
  v2(v0[6]);

  v3 = OUTLINED_FUNCTION_23_29();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t objectdestroy_14Tm(void (*a1)(void))
{

  a1(*(v1 + 40));

  v3 = OUTLINED_FUNCTION_23_29();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2683761B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_268376210(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_268376348(uint64_t a1)
{
  result = sub_26812EB34(319, &qword_28024D380, &protocol descriptor for NotebookDateTimeResolving);
  if (v2 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D388, &protocol descriptor for NotebookLocationResolving);
    if (v3 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024CDA0, &protocol descriptor for NotebookReferenceResolving);
      if (v4 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024F9E8, &protocol descriptor for SiriKitContactResolving);
        if (v5 <= 0x3F)
        {
          result = sub_26812EB34(319, &qword_28024F1C0, &protocol descriptor for NotebookFeatureManaging);
          if (v6 <= 0x3F)
          {
            result = sub_2683CB668();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_52(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_8_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_9_38(uint64_t a1)
{
  *(v1 - 256) = a1;
  result = *(v1 - 144);
  v3 = *(v1 - 128);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void OUTLINED_FUNCTION_15_36()
{

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_18_34()
{
  v4 = v1 + *(v0 + 20);
  v5 = *(v2 - 160);

  return sub_26813CA00(v5, v4);
}

uint64_t OUTLINED_FUNCTION_19_34()
{
}

uint64_t OUTLINED_FUNCTION_20_34()
{
  result = v0;
  *(v2 - 256) = *(v1 + 8);
  return result;
}

double OUTLINED_FUNCTION_26_25()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_15()
{
}

uint64_t sub_26837662C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2683766AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_26837682C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v21 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_268376A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for IdentifiableItem(0, a4, a3, a4);
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

uint64_t sub_268376B58()
{
  v0 = qword_28024CB80;

  if (v0 != -1)
  {
    swift_once();
  }

  sub_2683CD158();

  return sub_2683CC258();
}

uint64_t sub_268376BF0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_268376C40(char a1)
{
  v34[4] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(MEMORY[0x277D5C220]);
  if (qword_28024CC68 != -1)
  {
    swift_once();
  }

  v2 = qword_2802540E0;
  v3 = unk_2802540E8;
  v34[1] = *algn_2802540D8;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v2, v3);
  v4 = sub_2683CFA68();

  v5 = [v1 initWithIdentifier_];

  sub_2683CB378();
  swift_allocObject();
  sub_2683CB368();
  sub_26837E490();
  sub_2683CB358();

  v21 = objc_opt_self();
  OUTLINED_FUNCTION_44_13();
  v22 = sub_2683CB448();
  v34[0] = 0;
  v23 = [v21 propertyListWithData:v22 options:0 format:0 error:v34];

  if (v23)
  {
    v24 = v34[0];
    sub_2683D0038();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC48, &qword_2683D4410);
    if (swift_dynamicCast())
    {
      sub_268160CEC(v33);

      v25 = sub_2683CF9B8();
    }

    else
    {
      v25 = 0;
    }

    [v5 setUserData_];
    v30 = OUTLINED_FUNCTION_44_13();
    sub_268143054(v30, v31);
  }

  else
  {
    v26 = v34[0];
    v27 = sub_2683CB388();

    swift_willThrow();
    v28 = OUTLINED_FUNCTION_44_13();
    sub_268143054(v28, v29);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v6 = sub_2683CF7E8();
    __swift_project_value_buffer(v6, qword_28027C958);
    v7 = v27;
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE78();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v10 = 136315650;
      v11 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v12 = sub_2683CFAD8();
      v14 = sub_2681610A0(v12, v13, v34);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_2683D0638();
      v17 = sub_2681610A0(v15, v16, v34);

      *(v10 + 14) = v17;
      *(v10 + 22) = 2080;
      v18 = sub_2683CFAD8();
      v20 = sub_2681610A0(v18, v19, v34);

      *(v10 + 24) = v20;
      _os_log_impl(&dword_2680EB000, v8, v9, "Failed to serialize DirectInvocation with error: %s - %s. Object: %s", v10, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  return v5;
}

id sub_2683770B4(void *a1, uint64_t a2)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277D5C220]);
  if (qword_28024C890 != -1)
  {
    swift_once();
  }

  v5 = qword_28027C7D0;
  v6 = unk_28027C7D8;
  v37 = *algn_28027C7C8;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v5, v6);
  v7 = sub_2683CFA68();

  v8 = [v4 initWithIdentifier_];

  sub_2683CB378();
  swift_allocObject();
  sub_2683CB368();
  sub_26818ACE0();
  v25 = sub_2683CB358();
  v27 = v26;

  v28 = objc_opt_self();
  v29 = sub_2683CB448();
  v36 = 0;
  v30 = [v28 propertyListWithData:v29 options:0 format:0 error:&v36];

  v31 = v36;
  if (v30)
  {

    sub_2683D0038();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC48, &qword_2683D4410);
    if (swift_dynamicCast())
    {
      sub_268160CEC(v38[0]);

      v32 = sub_2683CF9B8();
    }

    else
    {
      v32 = 0;
    }

    [v8 setUserData_];
    sub_268143054(v25, v27);
  }

  else
  {
    v33 = v31;
    v34 = sub_2683CB388();

    swift_willThrow();
    sub_268143054(v25, v27);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    v10 = v34;

    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE78();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v38[0] = v14;
      *v13 = 136315650;
      v36 = v34;
      v15 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v16 = sub_2683CFAD8();
      v18 = sub_2681610A0(v16, v17, v38);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      v19 = sub_2683D0638();
      v21 = sub_2681610A0(v19, v20, v38);

      *(v13 + 14) = v21;
      *(v13 + 22) = 2080;
      v36 = a1;
      v37 = a2;
      v22 = sub_2683CFAD8();
      v24 = sub_2681610A0(v22, v23, v38);

      *(v13 + 24) = v24;
      _os_log_impl(&dword_2680EB000, v11, v12, "Failed to serialize DirectInvocation with error: %s - %s. Object: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v14, -1, -1);
      MEMORY[0x26D617A40](v13, -1, -1);
    }

    else
    {
    }
  }

  return v8;
}

uint64_t sub_26837757C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X3>)
{
  sub_2683CF168();
  OUTLINED_FUNCTION_1();
  (*(v12 + 32))(a5, a1);
  v15 = type metadata accessor for SimpleDisambiguationItem(0, a4, v13, v14);
  (*(*(a4 - 8) + 32))(a5 + v15[7], a2, a4);
  *(a5 + v15[8]) = a3;
  return sub_26812DA84(a6, a5 + v15[9], &qword_28024DD28, &qword_2683D4CF0);
}

uint64_t sub_268377670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253B90, &qword_2683F55B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v14 = a2;
    v15 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_26812DA38(v10, v7, &qword_280253B90, &qword_2683F55B0);
      v12 = *&v7[*(v4 + 28) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253B98, &qword_2683F55B8) + 28)];
      sub_2681433DC(v7, &qword_280253B90, &qword_2683F55B0);
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v10 += v11;
      --v8;
    }

    while (v8);
    a2 = v14;
    v9 = v15;
  }

  sub_26837D2BC(v9, a2);
}

uint64_t sub_26837781C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253BC0, &qword_2683F55E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v14 = a2;
    v15 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_26812DA38(v10, v7, &qword_280253BC0, &qword_2683F55E0);
      v12 = *&v7[*(v4 + 28) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253BC8, &qword_2683F55E8) + 28)];
      sub_2681433DC(v7, &qword_280253BC0, &qword_2683F55E0);
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v10 += v11;
      --v8;
    }

    while (v8);
    a2 = v14;
    v9 = v15;
  }

  sub_26837D0B0(v9, a2);
}

uint64_t sub_268377A30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2683CF258();
  sub_268377C40(a1, a3, a4, &v16);
  OUTLINED_FUNCTION_25_27();
  v7 = sub_2681E7490();
  if (OUTLINED_FUNCTION_58_6(v7, MEMORY[0x277D837D0], v8, v9, v7, v10, v11, v12, v15))
  {
    switch(a4)
    {
      case 1uLL:
      case 3uLL:
        break;
      case 2uLL:
        OUTLINED_FUNCTION_17_26();
        sub_268154220();
        goto LABEL_5;
      default:
        v13 = OUTLINED_FUNCTION_17_26();
        sub_268155728(v13);
LABEL_5:

        break;
    }
  }

  OUTLINED_FUNCTION_57_7();
  OUTLINED_FUNCTION_92_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_268377B54(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t))
{
  sub_2683CF258();
  a3(&v14, a1);
  OUTLINED_FUNCTION_25_27();
  v5 = sub_2681E7490();
  if (OUTLINED_FUNCTION_58_6(v5, MEMORY[0x277D837D0], v6, v7, v5, v8, v9, v10, v13))
  {
    switch(a3)
    {
      case 1uLL:
      case 3uLL:
        break;
      case 2uLL:
        OUTLINED_FUNCTION_17_26();
        sub_268154220();
        goto LABEL_5;
      default:
        v11 = OUTLINED_FUNCTION_17_26();
        sub_268155728(v11);
LABEL_5:

        break;
    }
  }

  OUTLINED_FUNCTION_57_7();
  OUTLINED_FUNCTION_92_0();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_268377C40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v24 - 8);
  result = MEMORY[0x28223BE20](v24);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22 = a4;
    v26 = MEMORY[0x277D84F90];
    sub_268390600(0, v11, 0);
    v12 = v26;
    v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v23 = *(v7 + 72);
    do
    {
      v14 = v25;
      sub_26812DA38(v13, v10, a2, v25);
      v15 = sub_2683CF158();
      v17 = v16;
      result = sub_2681433DC(v10, a2, v14);
      v26 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_268390600((v18 > 1), v19 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v13 += v23;
      --v11;
    }

    while (v11);
    a4 = v22;
  }

  *a4 = v12;
  *(a4 + 8) = 1;
  return result;
}

uint64_t sub_268377DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return OUTLINED_FUNCTION_1_1(sub_268377E18);
}

uint64_t sub_268377E18()
{
  OUTLINED_FUNCTION_7();
  v1 = sub_26813C7E0(*(v0 + 120) + 40, v0 + 16);
  if (*(v0 + 56))
  {
    if (*(v0 + 56) == 1)
    {
      v4 = *(v0 + 128);
      v5 = *(v0 + 16);
      *(v0 + 216) = v5;
      OUTLINED_FUNCTION_30_18(v1, *(v4 + 16), v2, v3);
      OUTLINED_FUNCTION_47_3();
      sub_2683CC888();
      v6 = sub_2683CC878();
      *(v0 + 224) = v6;
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 232) = v7;
      *v7 = v8;
      v7[1] = sub_268378518;
      v9 = *(v0 + 128);
      v10 = *(v0 + 120);
      v11 = *(v0 + 104);

      return sub_2683799A8(v11, v6, v5, v10, v9);
    }

    OUTLINED_FUNCTION_30_18(v1, *(*(v0 + 128) + 16), v2, v3);
    OUTLINED_FUNCTION_47_3();
    sub_2683CC888();
    v25 = sub_2683CC878();
    *(v0 + 144) = v25;
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 152) = v26;
    *v26 = v29;
    v28 = sub_268378170;
    goto LABEL_13;
  }

  v13 = *(v0 + 120);
  sub_268128148((v0 + 16), v0 + 64);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  OUTLINED_FUNCTION_55_0();
  v14 = sub_2683CC0C8();
  if (v14)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v17 = sub_2683CF7E8();
    __swift_project_value_buffer(v17, qword_28027C958);
    v18 = sub_2683CF7C8();
    v19 = sub_2683CFE98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2680EB000, v18, v19, "[SimpleParameterDisambiguationStrategy] using non-RF prompt for CarPlay regardless of feature flag due to rdar://91635513", v20, 2u);
      OUTLINED_FUNCTION_38();
    }

    v21 = *(v0 + 128);

    OUTLINED_FUNCTION_30_18(v22, *(v21 + 16), v23, v24);
    OUTLINED_FUNCTION_47_3();
    sub_2683CC888();
    v25 = sub_2683CC878();
    *(v0 + 192) = v25;
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 200) = v26;
    *v26 = v27;
    v28 = sub_268378400;
LABEL_13:
    v26[1] = v28;
    v30 = *(v0 + 128);
    v31 = *(v0 + 120);
    v32 = *(v0 + 104);

    return sub_2683787E8(v32, v25, v31, v30);
  }

  OUTLINED_FUNCTION_30_18(v14, *(*(v0 + 128) + 16), v15, v16);
  OUTLINED_FUNCTION_47_3();
  sub_2683CC888();
  v33 = sub_2683CC878();
  *(v0 + 168) = v33;
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 176) = v34;
  *v34 = v35;
  v34[1] = sub_268378290;
  v36 = *(v0 + 128);
  v37 = *(v0 + 104);

  return sub_2683792F8(v37, v33, v0 + 64, v36);
}

uint64_t sub_268378170()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268378290()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2683783A8()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  OUTLINED_FUNCTION_7_4();

  return v1();
}

uint64_t sub_268378400()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268378518()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268378618()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_7_4();

  return v0();
}

uint64_t sub_268378670()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2683786CC()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_268378728()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_268378784()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2683787E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[245] = v4;
  v5[244] = a4;
  v5[243] = a3;
  v5[237] = a2;
  v5[231] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v5[246] = swift_task_alloc();
  v6 = sub_2683CC598();
  v5[247] = v6;
  v5[248] = *(v6 - 8);
  v5[249] = swift_task_alloc();
  v5[250] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683788FC);
}

uint64_t sub_2683788FC()
{
  v1 = *(v0 + 1960);
  v2 = *(v0 + 1952);
  v3 = *(v0 + 1944);
  v4 = *(v0 + 1896);
  v5 = swift_allocObject();
  *(v0 + 2008) = v5;
  v6 = *(v2 + 16);
  *(v0 + 2016) = v6;
  v5[2] = v6;
  memcpy(v5 + 3, v1, 0xB0uLL);
  v5[25] = v4;
  (*(*(v2 - 8) + 16))(v0 + 1336, v1, v2);

  swift_asyncLet_begin();
  *(v0 + 1752) = v4;
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  v10 = type metadata accessor for SimpleDisambiguationItem(255, v6, v8, v9);
  type metadata accessor for IdentifiableItem(255, v10, v11, v12);
  OUTLINED_FUNCTION_47_3();
  v13 = sub_2683CFD28();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253CF0, &unk_2683F6640);
  v15 = OUTLINED_FUNCTION_20_35();
  v17 = sub_268167FAC(sub_26837E314, v7, v13, v14, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);
  *(v0 + 2024) = v17;

  v18 = *(v3 + 24);
  v19 = *(v3 + 32);
  v20 = OUTLINED_FUNCTION_9_0();
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v22 = sub_268129C00(v18, v19);
  *(v0 + 2032) = v22;
  sub_26813CA00(v3, v0 + 1512);
  v23 = swift_allocObject();
  *(v0 + 2040) = v23;
  *(v23 + 16) = v17;
  *(v23 + 24) = v22;
  sub_268128148((v0 + 1512), v23 + 32);

  v24 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E450, &qword_2683D6CF0);
  swift_asyncLet_begin();
  v25 = OUTLINED_FUNCTION_21_24();

  return MEMORY[0x282200930](v25);
}

uint64_t sub_268378B84()
{
  *(v1 + 2048) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_268378BC0);
  }
}

uint64_t sub_268378BC0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 1944);
  (*(*(v0 + 1984) + 16))(*(v0 + 1992), *(v0 + 2000), *(v0 + 1976));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_55_0();
  *(v0 + 2072) = sub_2683CC0A8() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E740, &qword_2683D80B0);
  inited = swift_initStackObject();
  *(v0 + 2056) = inited;
  *(inited + 16) = xmmword_2683D1EC0;
  v3 = OUTLINED_FUNCTION_33_20();

  return MEMORY[0x282200930](v3);
}

uint64_t sub_268378C94()
{
  OUTLINED_FUNCTION_14();
  v1[258] = v0;
  if (v0)
  {
    (*(v1[248] + 8))(v1[249], v1[247]);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_268378D20()
{
  v1 = *(v0 + 1800);
  *(*(v0 + 2056) + 32) = v1;
  v19 = MEMORY[0x277D84F90];
  v2 = v1;
  for (i = 0; (i & 1) == 0; i = 1)
  {
    v4 = *(*(v0 + 2056) + 32);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    MEMORY[0x26D616770]();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2683CFCD8();
    }

    OUTLINED_FUNCTION_0_0();
    sub_2683CFD08();
  }

  v6 = *(v0 + 1984);
  v18 = *(v0 + 1976);
  v7 = *(v0 + 1968);
  v17 = *(v0 + 1992);
  v8 = *(v0 + 1848);
  swift_setDeallocating();
  sub_2681F5544();
  sub_26816954C();
  sub_2683CC528();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = sub_2683CCC98();
  *(v0 + 1672) = 0u;
  *(v0 + 1688) = 0u;
  *(v0 + 1704) = 0;
  v14 = MEMORY[0x277D5C1D8];
  v8[3] = v13;
  v8[4] = v14;
  __swift_allocate_boxed_opaque_existential_0(v8);
  sub_2683CC348();

  sub_2681433DC(v0 + 1672, &qword_28024D408, &qword_2683D2470);
  sub_2681433DC(v7, &qword_28024D400, &qword_2683D2460);
  (*(v6 + 8))(v17, v18);
  v15 = OUTLINED_FUNCTION_33_20();

  return MEMORY[0x282200920](v15);
}

uint64_t sub_268378F50()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 2032);

  v2 = OUTLINED_FUNCTION_21_24();

  return MEMORY[0x282200920](v2);
}

uint64_t sub_268378FCC()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_7_4();

  return v0();
}

uint64_t sub_268379070()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 2032);

  v2 = OUTLINED_FUNCTION_21_24();

  return MEMORY[0x282200920](v2);
}

uint64_t sub_2683790EC()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_38_13();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268379174()
{
  OUTLINED_FUNCTION_14();
  *(*(v0 + 2056) + 16) = 0;
  swift_setDeallocating();
  sub_2681F5544();
  v1 = OUTLINED_FUNCTION_33_20();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_2683791F4()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 2032);

  v2 = OUTLINED_FUNCTION_21_24();

  return MEMORY[0x282200920](v2);
}

uint64_t sub_268379270()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_38_13();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2683792F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_2683CC138();
  v5[7] = swift_task_alloc();
  v6 = sub_2683CC9A8();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683793EC);
}

uint64_t sub_2683793EC(uint64_t a1)
{
  v2 = v1[6];
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[3];
  sub_2683CC118();
  v6 = swift_task_alloc();
  v6[2] = *(v3 + 16);
  v6[3] = v5;
  v6[4] = v2;
  sub_2683CC8E8();

  v7 = v4[3];
  v1[11] = v7;
  v1[12] = v4[4];
  v1[13] = __swift_project_boxed_opaque_existential_1(v4, v7);
  v8 = *(v2 + 24);
  v11 = sub_26837B9C0(v5, v3, v9, v10);
  v1[14] = v11;
  v14 = (v8 + *v8);
  v12 = swift_task_alloc();
  v1[15] = v12;
  *v12 = v1;
  v12[1] = sub_268379580;

  return v14(v11);
}

uint64_t sub_268379580()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v5[16] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {
    v5[17] = v3;
    v10 = swift_task_alloc();
    v5[18] = v10;
    *v10 = v7;
    v10[1] = sub_268379720;
    v11 = v5[12];
    v12 = v5[10];
    v13 = v5[11];
    v14 = v5[2];

    return MEMORY[0x2821BB480](v14, v3, v12, v13, v11);
  }
}

uint64_t sub_268379720()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_268379834()
{
  OUTLINED_FUNCTION_14();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_7_4();

  return v1();
}

uint64_t sub_2683798B0()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_49_9();
  v1(v0);

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26837992C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_49_9();
  v1(v0);

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2683799A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  v9 = sub_2683CC9A8();
  v6[28] = v9;
  v6[29] = *(v9 - 8);
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  v6[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  v6[32] = swift_task_alloc();
  v10 = sub_2683CC138();
  v6[33] = v10;
  v6[34] = *(v10 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v6[37] = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v6[38] = v11;
  v6[39] = *(v11 + 64);
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = type metadata accessor for Snippet(0);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[54] = v12;
  *v12 = v6;
  v12[1] = sub_268379CE4;

  return sub_26837B124(a2, a5);
}

uint64_t sub_268379CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_42();
  v25 = v24;
  OUTLINED_FUNCTION_2_0();
  *v26 = v25;
  *v26 = *v23;
  v25[55] = v27;

  if (v22)
  {
    v39 = v25[43];
    v40 = v25[42];
    v41 = v25[41];
    v42 = v25[40];
    v43 = v25[37];
    v44 = v25[36];
    v45 = v25[35];
    v46 = v25[32];
    v47 = v25[31];

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48_3();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v39, v40, v41, v42, v43, v44, v45, v46, v47, v22, a20, a21, a22);
  }

  else
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_48_3();

    return MEMORY[0x2822009F8](v37);
  }
}

void sub_268379EE8()
{
  v1 = v0[53];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v109 = v0[32];
  v111 = v0[55];
  v113 = v0[31];
  (*(v0[27] + 144))(v0[23], v0[25]);
  sub_2681432C8(v1, v3);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v2);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v2);
  sub_26816954C();
  sub_2683CC528();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_2683CC118();
  v12 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v109, 1, 1, v12);
  v13 = *MEMORY[0x277D5BC50];
  v14 = sub_2683CC1D8();
  OUTLINED_FUNCTION_1();
  (*(v15 + 104))(v113, v13, v14);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v19 = swift_allocObject();
  v0[56] = v19;
  *(v19 + 16) = xmmword_2683D2250;
  *(v19 + 32) = v111;
  v20 = v111;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v19 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x26D616C90](0, v19);
    }

    else
    {
      v21 = *(v19 + 32);
    }

    v22 = v21;
    v23 = [v21 catId];

    v107 = sub_2683CFA78();
    v110 = v24;
  }

  else
  {
    v107 = 0;
    v110 = 0;
  }

  v112 = v0[48];
  v106 = v0[47];
  v108 = v0[43];
  v102 = v0[36];
  v103 = v0[37];
  v25 = v0[34];
  v100 = v0[35];
  v101 = v0[33];
  v104 = v0[32];
  v105 = v0[31];
  v26 = v0[24];
  OUTLINED_FUNCTION_48_11();
  sub_26812DA38(v27, v28, v29, v30);
  OUTLINED_FUNCTION_48_11();
  sub_26812DA38(v31, v32, v33, v34);
  v35 = swift_allocObject();
  v0[57] = v35;
  *(v35 + 16) = v26;
  OUTLINED_FUNCTION_48_11();
  sub_26812DA84(v36, v37, v38, v39);
  OUTLINED_FUNCTION_48_11();
  sub_26812DA84(v40, v41, v42, v43);
  (*(v25 + 16))(v100, v102, v101);
  v44 = swift_task_alloc();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 40) = v107;
  *(v44 + 48) = v110;
  *(v44 + 56) = v103;
  *(v44 + 64) = 1;
  *(v44 + 72) = sub_26814311C;
  *(v44 + 80) = v35;
  *(v44 + 88) = 0;
  *(v44 + 96) = v104;
  *(v44 + 104) = 2;
  *(v44 + 112) = v105;

  sub_2683CC8E8();

  sub_26812DA38(v106, v108, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v108, 1, v112) == 1)
  {
    v45 = v0 + 43;
  }

  else
  {
    v46 = v0[48];
    OUTLINED_FUNCTION_3_53();
    sub_26837E408(v47, v48, v49);
    v50 = OUTLINED_FUNCTION_55_0();
    sub_26812DA38(v50, v51, v52, v53);
    v54 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v54, v55, v46) != 1)
    {
      v78 = v0[51];
      v79 = v0[52];
      v80 = v0[48];
      OUTLINED_FUNCTION_3_53();
      sub_26837E408(v81, v78, v82);
      v0[15] = v80;
      v83 = sub_268143270();
      v0[16] = v83;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
      sub_2681432C8(v79, boxed_opaque_existential_0);
      v0[20] = v80;
      v0[21] = v83;
      __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      v85 = OUTLINED_FUNCTION_92_0();
      sub_2681432C8(v85, v86);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      v0[58] = v87;
      *v87 = v88;
      v87[1] = sub_26837A61C;
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v45 = v0 + 42;
    sub_26814332C(v0[52]);
  }

  v56 = *v45;
  v57 = v0[48];
  sub_2681433DC(v56, &qword_28024E770, &qword_2683D80D0);
  v58 = OUTLINED_FUNCTION_55_0();
  sub_26812DA38(v58, v59, &qword_28024E770, &qword_2683D80D0);
  v60 = OUTLINED_FUNCTION_33_1();
  if (__swift_getEnumTagSinglePayload(v60, v61, v57) == 1)
  {
    v62 = v0[48];
    sub_2681433DC(v0[41], &qword_28024E770, &qword_2683D80D0);
    v63 = OUTLINED_FUNCTION_55_0();
    sub_26812DA38(v63, v64, &qword_28024E770, &qword_2683D80D0);
    v65 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v65, v66, v62) == 1)
    {
      sub_2681433DC(v0[40], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      v0[61] = v67;
      *v67 = v68;
      v67[1] = sub_26837AE64;
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v91 = v0[48];
    v92 = v0[49];
    OUTLINED_FUNCTION_3_53();
    sub_26837E408(v93, v92, v94);
    v0[5] = v91;
    v0[6] = sub_268143270();
    v95 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    sub_2681432C8(v92, v95);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    v0[60] = v96;
    *v96 = v97;
    OUTLINED_FUNCTION_50_11(v96);
  }

  else
  {
    v71 = v0[50];
    v72 = v0[48];
    OUTLINED_FUNCTION_3_53();
    sub_26837E408(v73, v71, v74);
    v0[10] = v72;
    v0[11] = sub_268143270();
    v75 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v71, v75);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    v0[59] = v76;
    *v76 = v77;
    OUTLINED_FUNCTION_50_11(v76);
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_26837A61C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26837A724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v23 = v22[51];
  v24 = v22[52];
  v25 = v22[46];
  v43 = v22[47];
  v26 = v22[36];
  v27 = v22[33];
  v28 = v22[34];
  v29 = v22[29];
  v30 = v22[30];
  v31 = v22[28];

  sub_26814332C(v23);
  sub_26814332C(v24);
  (*(v29 + 8))(v30, v31);
  (*(v28 + 8))(v26, v27);
  v32 = OUTLINED_FUNCTION_44_13();
  sub_2681433DC(v32, v33, &qword_2683D80D0);
  sub_2681433DC(v43, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_2_58();
  sub_2681433DC(&qword_2683D80D0, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v29 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v27, &qword_28024D400, &qword_2683D2460);

  sub_26814332C(v25);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v43, a20, a21, a22);
}

uint64_t sub_26837A8FC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26837A9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v29 = *(v24 + 400);
  OUTLINED_FUNCTION_39_16();
  sub_26814332C(v29);
  (*(v28 + 8))(v25, v26);
  v30 = OUTLINED_FUNCTION_19_2();
  v31(v30);
  sub_2681433DC(v23, &qword_28024E770, &qword_2683D80D0);
  v32 = OUTLINED_FUNCTION_9_0();
  sub_2681433DC(v32, v33, &qword_2683D80D0);
  OUTLINED_FUNCTION_2_58();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25, &qword_28024D400, &qword_2683D2460);

  sub_26814332C(&qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26837ABB0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26837ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v29 = *(v24 + 392);
  OUTLINED_FUNCTION_39_16();
  sub_26814332C(v29);
  (*(v28 + 8))(v25, v26);
  v30 = OUTLINED_FUNCTION_19_2();
  v31(v30);
  sub_2681433DC(v23, &qword_28024E770, &qword_2683D80D0);
  v32 = OUTLINED_FUNCTION_9_0();
  sub_2681433DC(v32, v33, &qword_2683D80D0);
  OUTLINED_FUNCTION_2_58();
  sub_2681433DC(v22, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25, &qword_28024D400, &qword_2683D2460);

  sub_26814332C(&qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26837AE64()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26837AF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v23 = v22[46];
  v24 = v22[47];
  v25 = v22[36];
  v26 = v22[33];
  v27 = v22[34];
  v29 = v22[29];
  v28 = v22[30];
  v30 = v22[28];

  (*(v29 + 8))(v28, v30);
  (*(v27 + 8))(v25, v26);
  v31 = OUTLINED_FUNCTION_55_0();
  sub_2681433DC(v31, v32, &qword_2683D80D0);
  sub_2681433DC(v24, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_2_58();
  sub_2681433DC(v23, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(&qword_28024E770, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v30, &qword_28024D400, &qword_2683D2460);

  sub_26814332C(&qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26837B124(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_26837B148);
}

uint64_t sub_26837B148()
{
  v1 = v0[14];
  v2 = *(v1 + 120);
  v0[15] = v2;
  v0[16] = *(v1 + 128);
  if (!*(v1 + 136))
  {
    v11 = v0[13];
    v0[11] = v0[12];
    v12 = swift_task_alloc();
    v13 = *(v11 + 16);
    *v12 = v13;
    KeyPath = swift_getKeyPath();

    v17 = type metadata accessor for SimpleDisambiguationItem(255, v13, v15, v16);
    type metadata accessor for IdentifiableItem(255, v17, v18, v19);
    OUTLINED_FUNCTION_47_3();
    v20 = sub_2683CFD28();

    v21 = OUTLINED_FUNCTION_20_35();
    v7 = sub_268167FAC(sub_26837E464, KeyPath, v20, v13, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);
    v0[17] = v7;

    OUTLINED_FUNCTION_11_42();
    v26 = v23;
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v10 = sub_26837B454;
    goto LABEL_5;
  }

  if (*(v1 + 136) == 1)
  {
    v4 = v0[12];
    v3 = v0[13];

    v7 = sub_26837B9C0(v4, v3, v5, v6);
    v0[20] = v7;
    OUTLINED_FUNCTION_11_42();
    v26 = v8;
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v10 = sub_26837B55C;
LABEL_5:
    v9[1] = v10;

    return v26(v7);
  }

  v27 = (v2 + *v2);
  v25 = swift_task_alloc();
  v0[23] = v25;
  *v25 = v0;
  v25[1] = sub_26837B664;

  return v27();
}

uint64_t sub_26837B454()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  v3[19] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26837B55C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  v3[22] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26837B664()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26837B768()
{
  OUTLINED_FUNCTION_14();
  sub_26837E250(*(v0 + 120), *(v0 + 128), 0);
  OUTLINED_FUNCTION_35_16();

  return v1();
}

uint64_t sub_26837B7C8()
{
  OUTLINED_FUNCTION_14();
  sub_26837E250(*(v0 + 120), *(v0 + 128), 1u);
  OUTLINED_FUNCTION_35_16();

  return v1();
}

uint64_t sub_26837B828()
{
  OUTLINED_FUNCTION_14();
  sub_26837E250(*(v0 + 120), *(v0 + 128), 2u);
  OUTLINED_FUNCTION_35_16();

  return v1();
}

uint64_t sub_26837B888()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_9_0();
  sub_26837E250(v0, v1, 0);
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26837B8F4()
{
  OUTLINED_FUNCTION_14();

  v0 = OUTLINED_FUNCTION_9_0();
  sub_26837E250(v0, v1, 1u);
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26837B960()
{
  OUTLINED_FUNCTION_14();
  sub_26837E250(*(v0 + 120), *(v0 + 128), 2u);
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26837B9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v13 = *(a2 + 16);
  v4 = type metadata accessor for SimpleDisambiguationItem(255, v13, a3, a4);
  type metadata accessor for IdentifiableItem(255, v4, v5, v6);
  v7 = sub_2683CFD28();
  v8 = sub_2683CEE68();
  WitnessTable = swift_getWitnessTable();
  return sub_268167FAC(sub_26837E3DC, &v12, v7, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);
}

uint64_t sub_26837BA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  sub_2683CEE58();
  swift_allocObject();
  sub_2683CEE48();
  v13 = type metadata accessor for SimpleDisambiguationItem(255, a2, v11, v12);
  v16 = *(type metadata accessor for IdentifiableItem(0, v13, v14, v15) + 28);
  v17 = sub_2683CF168();
  (*(*(v17 - 8) + 16))(v10, a1 + v16, v17);
  v18 = 1;
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v17);
  sub_2683CEE38();

  sub_2681433DC(v10, &unk_28024E7C0, &unk_2683D6CA0);
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = objc_allocWithZone(MEMORY[0x277D5C218]);

  v22 = [v21 init];
  v23 = objc_opt_self();
  v24 = sub_2683770B4(v19, v20);
  v25 = [v23 runSiriKitExecutorCommandWithContext:v22 payload:v24];

  sub_2683CFF78();
  v27 = v26;

  if (v27)
  {
    sub_2683CFB38();

    v18 = 0;
  }

  __swift_storeEnumTagSinglePayload(v8, v18, 1, v17);
  sub_2683CEE18();

  sub_2681433DC(v8, &unk_28024E7C0, &unk_2683D6CA0);
  v28 = sub_2683CEE28();

  *v31 = v28;
  return result;
}

uint64_t sub_26837BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26837BD3C);
}

uint64_t sub_26837BD3C()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0[3] + 40);
  type metadata accessor for SimpleParameterDisambiguationStrategy(0, v0[5], v2, v3);
  v4 = OUTLINED_FUNCTION_92_0();
  v8 = sub_26837B9C0(v4, v5, v6, v7);
  v0[6] = v8;
  v13 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[7] = v9;
  *v9 = v10;
  v9[1] = sub_26837BE58;
  v11 = v0[2];

  return v13(v11, v8);
}

uint64_t sub_26837BE58()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v8();
  }
}

uint64_t sub_26837BF74()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_26837BFD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = type metadata accessor for SimpleDisambiguationItem(255, a2, a4, a5);
  type metadata accessor for IdentifiableItem(0, v8, v9, v10);

  result = sub_2683CF158();
  *a3 = v7;
  a3[1] = v6;
  a3[2] = result;
  a3[3] = v12;
  return result;
}

uint64_t sub_26837C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_26837C108;

  return sub_2681A542C(0, a4, a2, a3);
}

uint64_t sub_26837C108()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_26837C238()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_7_4();
  return v1();
}

uint64_t sub_26837C264()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_2683CC968();
  sub_26816954C();
  v3 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_2683CC938();
}

uint64_t sub_26837C330()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v1[10] = v4;
  v1[11] = v0;
  v1[8] = v5;
  v1[9] = v6;
  v1[6] = v7;
  v1[7] = v8;
  v1[4] = v9;
  v1[5] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v11 = sub_2683CF168();
  v1[15] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[16] = v12;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v13 = *(v3 + 16);
  v1[19] = v13;
  v1[20] = *(v13 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v14);
}

void sub_26837C4F0()
{
  sub_2681A3020(*(v0 + 40), *(v0 + 152), *(v0 + 192));
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 200) = v1;
  *v1 = v2;
  v1[1] = sub_26837C6A0;
  OUTLINED_FUNCTION_2_16();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_26837C6A0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26837C79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_51_2();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_52_1();
  a28 = v30;
  v33 = *(v30[11] + 72);
  if (!v33)
  {
    (*(v30[20] + 16))(v30[23], v30[24], v30[19]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F320, &qword_2683DB800);
    if (!swift_dynamicCast() || !v30[2])
    {
      goto LABEL_14;
    }

LABEL_6:
    v36 = v30[12];
    v37 = v30[10];
    v90 = v30[6];
    v92 = v30[7];
    v94 = v30[3];
    v96 = v30[14];
    if (v37)
    {
      v38 = v30[9];
    }

    else
    {
      v38 = 0xD000000000000013;
    }

    if (v37)
    {
      v39 = v30[10];
    }

    else
    {
      v39 = 0x80000002683FA8D0;
    }

    ObjectType = swift_getObjectType();

    sub_2683CF818();
    sub_2683CF828();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    sub_26816A834(v38, v39, v90, v92, v36, ObjectType, v94, v96);
    swift_unknownObjectRelease();

    sub_2681433DC(v36, &qword_28024DD70, &unk_2683D4E80);
    v45 = sub_2683CF8B8();
    if (__swift_getEnumTagSinglePayload(v96, 1, v45) != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v34 = v33(v30[24]);
  v30[2] = v34;
  v30[3] = v35;
  if (v34)
  {
    goto LABEL_6;
  }

LABEL_14:
  v46 = v30[14];
  v47 = sub_2683CF8B8();
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v47);
LABEL_15:
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v48 = v30[20];
  v49 = sub_2683CF7E8();
  __swift_project_value_buffer(v49, qword_28027C958);
  v50 = *(v48 + 16);
  v51 = OUTLINED_FUNCTION_9_0();
  v50(v51);
  v52 = sub_2683CF7C8();
  v53 = sub_2683CFE78();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v30[22];
  if (v54)
  {
    v56 = v30[20];
    v57 = v30[21];
    v58 = v30[19];
    v59 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    a18 = v97;
    *v59 = 136315138;
    (v50)(v57, v55, v58);
    v60 = sub_2683CFAD8();
    v62 = v61;
    (*(v56 + 8))(v55, v58);
    v63 = sub_2681610A0(v60, v62, &a18);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_2680EB000, v52, v53, "[SimpleParameterDisambiguationStrategy] Unable to create RR entity for item: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v64 = v30[19];
    v65 = v30[20];

    (*(v65 + 8))(v55, v64);
  }

LABEL_20:
  v66 = v30[24];
  v67 = v30[21];
  v93 = v30[23];
  v95 = v30[22];
  v69 = v30[19];
  v68 = v30[20];
  v70 = v30[18];
  v86 = v67;
  v87 = v30[17];
  v71 = v30[16];
  v72 = v30[14];
  v88 = v30[13];
  v73 = v30[11];
  v98 = v30[12];
  v89 = v30[4];
  v91 = v30[15];
  (*(v71 + 16))();
  (*(v68 + 16))(v67, v66, v69);
  v74 = *v73;
  v75 = swift_task_alloc();
  *(v75 + 16) = v70;
  v76 = sub_2681527AC(sub_26837E230, v75, v74);

  (*(v68 + 8))(v66, v69);
  sub_26812DA38(v72, v88, &qword_28024DD28, &qword_2683D4CF0);
  sub_26837757C(v87, v86, v76, v69, v89, v88);
  sub_2681433DC(v72, &qword_28024DD28, &qword_2683D4CF0);
  (*(v71 + 8))(v70, v91);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, v66, v86, v87, v88, v89, v91, v93, v95, v98, a18, a19, a20, a21, a22);
}

uint64_t sub_26837CCA0()
{
  (*(v0[20] + 8))(v0[24], v0[19]);

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26837CD88(uint64_t *a1)
{
  sub_2683CF158();

  return sub_2683CC258();
}

uint64_t sub_26837CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy((v5 + 16), v4, 0xB0uLL);
  v10 = swift_task_alloc();
  *(v5 + 192) = v10;
  *v10 = v5;
  v10[1] = sub_26837CEC8;

  return sub_268377DF8(a1, a2, a3, a4);
}

uint64_t sub_26837CEC8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26837CFA8()
{
  memcpy((v1 + 16), v0, 0xB0uLL);
  v2 = swift_task_alloc();
  *(v1 + 192) = v2;
  *v2 = v1;
  v2[1] = sub_26837E664;

  return sub_26837C330();
}

unint64_t sub_26837D0B0@<X0>(unint64_t result@<X0>, unint64_t a2@<X8>)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    result = sub_268390808(0, v4 & ~(v4 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v22 = v2;
      v23 = v2 & 0xC000000000000001;
      v5 = v25;
      v20 = a2;
      v21 = v2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v23)
        {
          v7 = MEMORY[0x26D616C90](v6, v2);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            result = sub_2683D00A8();
            v4 = result;
            goto LABEL_3;
          }

          if (v6 >= *(v21 + 16))
          {
            goto LABEL_17;
          }

          v7 = *(v2 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = sub_26837D6D8(v8, &selRef_identifier);
        v11 = v10;
        v12 = [v8 title];
        v13 = [v12 spokenPhrase];

        v14 = sub_2683CFA78();
        v16 = v15;

        result = sub_268151B3C(0, 0, 255);
        v18 = *(v25 + 16);
        v17 = *(v25 + 24);
        a2 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          result = sub_268390808((v17 > 1), v18 + 1, 1);
        }

        ++v6;
        *(v25 + 16) = a2;
        v19 = v25 + 104 * v18;
        *(v19 + 32) = v9;
        *(v19 + 40) = v11;
        *(v19 + 48) = v14;
        *(v19 + 56) = v16;
        *(v19 + 64) = 0u;
        *(v19 + 80) = 0u;
        *(v19 + 96) = 0;
        *(v19 + 104) = 3;
        *(v19 + 108) = *&v24[3];
        *(v19 + 105) = *v24;
        *(v19 + 112) = 0;
        *(v19 + 120) = 0;
        *(v19 + 128) = -1;
        v2 = v22;
        if (v4 == v6)
        {
          a2 = v20;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    *a2 = v5;
    *(a2 + 8) = 0;
  }

  return result;
}

void sub_26837D2BC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Snippet.Reminder(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v8 = sub_2683D00A8();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
LABEL_12:
    *a2 = v9;
    *(a2 + 8) = 2;
    return;
  }

  v15 = MEMORY[0x277D84F90];
  sub_268390728(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v9 = v15;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D616C90](v10, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v10 + 32);
      }

      sub_26834A288(v11, v7);
      v15 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_268390728(v12 > 1, v13 + 1, 1);
        v9 = v15;
      }

      ++v10;
      *(v9 + 16) = v13 + 1;
      sub_26837E408(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, type metadata accessor for Snippet.Reminder);
    }

    while (v8 != v10);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_26837D488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253BB0, &qword_2683F55D0);
  v4 = *(v24 - 8);
  result = MEMORY[0x28223BE20](v24);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v21 = a2;
    v26 = MEMORY[0x277D84F90];
    sub_268390BF0(0, v8, 0);
    v9 = v26;
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v22 = *(v4 + 72);
    v23 = v7;
    do
    {
      sub_26812DA38(v10, v7, &qword_280253BB0, &qword_2683F55D0);
      v11 = [*&v7[*(v24 + 28) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253BB8 &qword_2683F55D8) + 28)]];
      if (v11 && (v12 = sub_26837D6D8(v11, &selRef_contactIdentifier), v13))
      {
        v14 = v13;
        v25 = v12;
      }

      else
      {

        v25 = 0;
        v14 = 0xE000000000000000;
      }

      v15 = sub_2683CF158();
      v17 = v16;
      result = sub_2681433DC(v7, &qword_280253BB0, &qword_2683F55D0);
      v26 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_268390BF0((v18 > 1), v19 + 1, 1);
        v9 = v26;
      }

      *(v9 + 16) = v19 + 1;
      v20 = (v9 + 32 * v19);
      v20[4] = v25;
      v20[5] = v14;
      v20[6] = v15;
      v20[7] = v17;
      v7 = v23;
      v10 += v22;
      --v8;
    }

    while (v8);
    a2 = v21;
  }

  *a2 = v9;
  *(a2 + 8) = 3;
  return result;
}

uint64_t sub_26837D6D8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2683CFA78();

  return v4;
}

uint64_t sub_26837D74C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26837D78C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26837D7FC(uint64_t a1)
{
  sub_2683CF168();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_26837E000(319, &qword_280253C60, MEMORY[0x277D5BCB0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_26837E000(319, qword_280253C68, MEMORY[0x277D5FEB0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26837D914(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_2683CF168();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v38 = *(a3 + 16);
  v39 = v6;
  v9 = *(v38 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = sub_2683CF8B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v11 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v9 + 80);
  v19 = *(v13 + 80);
  if (v14)
  {
    v20 = *(*(v12 - 8) + 64);
  }

  else
  {
    v20 = *(*(v12 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v7 + 64) + v18;
  v22 = *(v9 + 64) + 7;
  v23 = v19 + 8;
  if (a2 <= v17)
  {
    goto LABEL_36;
  }

  v24 = v20 + ((v23 + ((v22 + (v21 & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v19);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v17 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        switch(v30)
        {
          case 2:
            v31 = *a1;
            break;
          case 3:
            v31 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v31 = *a1;
            break;
          default:
            v31 = *a1;
            break;
        }
      }

      else
      {
        v31 = 0;
      }

      return v17 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  if (v8 == v17)
  {
    v32 = a1;
    v33 = v8;
    v34 = v39;
LABEL_40:

    return __swift_getEnumTagSinglePayload(v32, v33, v34);
  }

  v32 = ((a1 + v21) & ~v18);
  if (v10 == v17)
  {
    v33 = v10;
    v34 = v38;
    goto LABEL_40;
  }

  v35 = ((v32 + v22) & 0xFFFFFFFFFFFFFFF8);
  if ((v16 & 0x80000000) != 0)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v35 + v23) & ~v19, v14, v12);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v36 = *v35;
    if (*v35 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    return (v36 + 1);
  }
}

void sub_26837DC3C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = sub_2683CF168();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v39 = *(a4 + 16);
  v40 = v7;
  v10 = *(v39 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = sub_2683CF8B8();
  v14 = 0;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v10 + 80);
  v20 = *(v8 + 64) + v19;
  v21 = *(v10 + 64) + 7;
  v22 = *(v15 + 80);
  v23 = (v22 + 8 + ((v21 + (v20 & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v22;
  v24 = *(*(v13 - 8) + 64);
  if (!v16)
  {
    ++v24;
  }

  v25 = v23 + v24;
  v26 = 8 * (v23 + v24);
  if (a3 > v18)
  {
    if (v25 <= 3)
    {
      v27 = ((a3 - v18 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v27))
      {
        v14 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v14 = v28;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  if (v18 >= a2)
  {
    v32 = ~v19;
    v33 = a1;
    switch(v14)
    {
      case 1:
        a1[v25] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        return;
      case 2:
        *&a1[v25] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        return;
      case 3:
LABEL_58:
        __break(1u);
        return;
      case 4:
        *&a1[v25] = 0;
        goto LABEL_35;
      default:
LABEL_35:
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v9 == v18)
        {
          v36 = a2;
          v16 = v9;
          v13 = v40;
        }

        else
        {
          v33 = (&a1[v20] & v32);
          if (v11 == v18)
          {
            v36 = a2;
            v16 = v11;
            v13 = v39;
          }

          else
          {
            v37 = (&v33[v21] & 0xFFFFFFFFFFFFFFF8);
            if ((v17 & 0x80000000) == 0)
            {
              if ((a2 & 0x80000000) != 0)
              {
                v38 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v38 = (a2 - 1);
              }

              *v37 = v38;
              return;
            }

            v33 = ((v37 + v22 + 8) & ~v22);
            v36 = (a2 + 1);
          }
        }

        __swift_storeEnumTagSinglePayload(v33, v36, v16, v13);
        break;
    }
  }

  else
  {
    v29 = ~v18 + a2;
    if (v25 < 4)
    {
      v31 = (v29 >> v26) + 1;
      if (v25)
      {
        v34 = v14;
        v35 = v29 & ~(-1 << v26);
        bzero(a1, v25);
        if (v25 == 3)
        {
          *a1 = v35;
          a1[2] = BYTE2(v35);
          v14 = v34;
        }

        else
        {
          v14 = v34;
          if (v25 == 2)
          {
            *a1 = v35;
          }

          else
          {
            *a1 = v29;
          }
        }
      }
    }

    else
    {
      v30 = v14;
      bzero(a1, v25);
      v14 = v30;
      *a1 = v29;
      v31 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v25] = v31;
        break;
      case 2:
        *&a1[v25] = v31;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v25] = v31;
        break;
      default:
        return;
    }
  }
}

void sub_26837E000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26837E064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26837E0AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26837E0EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26837E170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26837E1AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_26837E1F8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_26837E250(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_26837E268()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 200);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2681342AC;

  return sub_26837BD18(v3, v0 + 24, v5, v4);
}

uint64_t sub_26837E334()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2681342AC;

  return sub_26837C040(v3, v4, v5, v0 + 32);
}

uint64_t sub_26837E408(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  v4 = OUTLINED_FUNCTION_9_0();
  v5(v4);
  return a2;
}

unint64_t sub_26837E490()
{
  result = qword_280253CF8[0];
  if (!qword_280253CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280253CF8);
  }

  return result;
}

uint64_t sub_26837E4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26837E538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26837E58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26837E5C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26837E608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t OUTLINED_FUNCTION_20_35()
{

  return swift_getWitnessTable();
}

unint64_t OUTLINED_FUNCTION_25_27()
{

  return sub_2681E743C();
}

uint64_t OUTLINED_FUNCTION_30_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SimpleDisambiguationItem(255, a2, a3, a4);

  return type metadata accessor for IdentifiableItem(255, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_38_13()
{
}

uint64_t OUTLINED_FUNCTION_39_16()
{
}

uint64_t OUTLINED_FUNCTION_57_7()
{
  *v0 = v2;
  *(v0 + 8) = v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;

  return type metadata accessor for Snippet(0);
}

uint64_t OUTLINED_FUNCTION_58_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2683CFA28();
}

uint64_t sub_26837E8D8()
{
  v1 = v0[2];
  sub_268129504(0, &qword_280253E80, 0x277D47310);
  v2 = sub_2681E7238(4, 300.0, 0.5);
  v0[3] = v2;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = sub_268129504(0, &qword_280253E88, 0x277D477E8);
  *v5 = v0;
  v5[1] = sub_26837E9F8;

  return MEMORY[0x2821BB6A0](v2, v3, v6, v4);
}

uint64_t sub_26837E9F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_26837EDF4;
  }

  else
  {
    v4 = sub_26837EB0C;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26837EB0C()
{
  v35 = v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 134284035;
    [v6 latitude];
    *(v7 + 4) = v9;
    *(v7 + 12) = 2049;
    [v6 longitude];
    *(v7 + 14) = v10;
    *(v7 + 22) = 2080;
    v11 = sub_26837EE58(v6);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 0x3E6C696E3CLL;
      v13 = 0xE500000000000000;
    }

    v14 = sub_2681610A0(v11, v13, &v34);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_2680EB000, v4, v5, "[AceUserLocationProvider] SAGetRequestOrigin returned lat:%{private}f long:%{private}f status: %s", v7, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D617A40](v8, -1, -1);
    MEMORY[0x26D617A40](v7, -1, -1);
  }

  [*(v0 + 40) latitude];
  if (v15 == 0.0 && ([*(v0 + 40) longitude], v16 == 0.0))
  {
    v17 = sub_2683CF7C8();
    v18 = sub_2683CFE78();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 40);
    v21 = *(v0 + 24);
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2680EB000, v17, v18, "[AceUserLocationProvider] Lat and Long are both zero returning nil", v22, 2u);
      MEMORY[0x26D617A40](v22, -1, -1);
    }

    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  else
  {
    v26 = *(v0 + 40);
    v27 = *(v0 + 24);
    [v26 latitude];
    v29 = v28;
    [v26 longitude];
    v31 = v30;

    v25 = 0;
    v23 = v29;
    v24 = v31;
  }

  v32 = *(v0 + 8);

  return v32(v23, v24, v25);
}

uint64_t sub_26837EDF4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26837EE58(void *a1)
{
  v1 = [a1 status];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_26837EED0()
{
  OUTLINED_FUNCTION_14();
  v0[86] = v1;
  v0[85] = v2;
  v3 = sub_2683CB668();
  v0[87] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v0[88] = v4;
  v0[89] = swift_task_alloc();
  v5 = sub_2683CCBA8();
  v0[90] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v0[91] = v6;
  v0[92] = swift_task_alloc();
  v0[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26837EFE8);
}

uint64_t sub_26837EFE8()
{
  v1 = *(v0 + 688);
  v37 = (*(v0 + 728) + 16);
  v35 = *v37;
  (*v37)(*(v0 + 744), *(v0 + 680), *(v0 + 720));
  sub_26813CA00(v1, v0 + 384);
  OUTLINED_FUNCTION_20_2();
  v36 = swift_allocObject();
  sub_268193F18((v0 + 384), v36 + 16);
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v2);
  *(v0 + 448) = v2;
  *(v0 + 456) = *(v3 + 16);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 424));
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v4, v2);
  *(v0 + 664) = sub_268129504(0, &qword_28024F098, 0x277CD4108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F20, &unk_2683F5C78);
  v6 = sub_2683CFAD8();
  v33 = v7;
  v34 = v6;
  v8 = sub_2683CF6C8();
  v9 = sub_2683CF6B8();
  v10 = MEMORY[0x277D5FDD8];
  *(v0 + 488) = v8;
  *(v0 + 496) = v10;
  *(v0 + 464) = v9;
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  sub_2681340E8(v0 + 464, v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
  if (*(v0 + 608))
  {
    OUTLINED_FUNCTION_20_2();
    v11 = swift_allocObject();
    v12 = *(v0 + 600);
    *(v11 + 16) = *(v0 + 584);
    *(v11 + 32) = v12;
    *(v11 + 48) = *(v0 + 616);
    v13 = &off_287900140;
    v14 = &type metadata for NotebookReferenceResolver;
  }

  else
  {
    sub_26812D9E0(v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
    v11 = 0;
    v14 = 0;
    v13 = 0;
    *(v0 + 552) = 0u;
  }

  v31 = *(v0 + 736);
  v32 = *(v0 + 744);
  v15 = *(v0 + 728);
  v30 = *(v0 + 720);
  v16 = *(v0 + 712);
  v17 = *(v0 + 704);
  v18 = *(v0 + 696);
  *(v0 + 544) = v11;
  *(v0 + 568) = v14;
  *(v0 + 576) = v13;
  v19 = type metadata accessor for InstalledAppProvider(0);
  *(v0 + 648) = v19;
  *(v0 + 656) = &off_2879042B8;
  v20 = __swift_allocate_boxed_opaque_existential_0((v0 + 624));
  v21 = *(v17 + 16);
  v21(v20 + *(v19 + 20), v16, v18);
  *v20 = 0;
  v22 = type metadata accessor for RegexAppSearcher(0);
  *(v0 + 80) = v22;
  *(v0 + 88) = &off_28790BB20;
  v23 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_26813CA00(v0 + 624, v23);
  v21(v23 + *(v22 + 20), v16, v18);
  *(v0 + 120) = &type metadata for InferredAppResolver;
  *(v0 + 128) = &off_287902D60;
  v24 = swift_allocObject();
  *(v0 + 96) = v24;
  sub_26813CA00(v0 + 624, v24 + 32);
  sub_2681340E8(v0 + 544, v24 + 72, &qword_28024E2C8, &unk_2683D6950);
  *(v24 + 16) = 0xD000000000000013;
  *(v24 + 24) = 0x80000002683FA8D0;
  (*(v17 + 8))(v16, v18);
  sub_26813CA00(v0 + 624, v0 + 16);
  sub_26812D9E0(v0 + 544, &qword_28024E2C8, &unk_2683D6950);
  __swift_destroy_boxed_opaque_existential_0((v0 + 624));
  *(v0 + 136) = 0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 504));
  *(v0 + 168) = &type metadata for AppResolver;
  *(v0 + 176) = &off_28790B8A0;
  v25 = swift_allocObject();
  *(v0 + 144) = v25;
  sub_26818CE54(v0 + 16, v25 + 16);
  sub_2681340E8(v0 + 424, v0 + 224, &qword_28024E2D0, &qword_2683D66E0);
  *(v0 + 184) = v34;
  *(v0 + 192) = v33;
  *(v0 + 200) = 1;
  *(v0 + 208) = &unk_2683F5C60;
  *(v0 + 216) = 0;
  sub_26818CEB0(v0 + 144, v0 + 264);
  v35(v31, v32, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F28, &qword_2683F5C88);
  swift_allocObject();
  v26 = sub_2681E51AC((v0 + 264), v31, &unk_2683F5C70, v36);
  (*(v15 + 8))(v32, v30);
  sub_26812D9E0(v0 + 424, &qword_28024E2D0, &qword_2683D66E0);
  sub_26818DAA0(v0 + 144);
  sub_26818DAF4(v0 + 16);
  sub_26812D9E0(v0 + 464, &qword_28024E2C0, &unk_2683D66D0);
  *(v0 + 672) = v26;
  sub_26818A0C8(&qword_280253F30, &qword_280253F28, &qword_2683F5C88, &unk_2683FA170);
  sub_2683CBF28();

  v27 = OUTLINED_FUNCTION_1_16();

  return v28(v27);
}

uint64_t sub_26837F580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v48 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253E90, &unk_2683F5C10);
  v49 = *(v43 - 8);
  v3 = MEMORY[0x28223BE20](v43);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v39 = &v38 - v6;
  MEMORY[0x28223BE20](v5);
  v47 = &v38 - v7;
  v8 = type metadata accessor for SnippetFormatter(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2683CF238();
  MEMORY[0x28223BE20](v12 - 8);
  sub_2683CCC48();
  type metadata accessor for SetTaskAttributeV2CATs(0);
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_25_28();
  v54 = sub_2683CF0B8();
  type metadata accessor for SetTaskAttributeV2CATsSimple(0);
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_25_28();
  v38 = sub_2683CF198();
  type metadata accessor for NotebookBaseCATs(0);
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_25_28();
  v13 = sub_2683CF0B8();
  type metadata accessor for NotebookLabelsV2CATs(0);
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_25_28();
  v14 = sub_2683CF0B8();
  type metadata accessor for SetTaskAttributeCATPatternsExecutor(0);
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_25_28();
  v41 = v2;
  v53 = sub_2683CF0B8();
  sub_2683CC548();
  swift_allocObject();
  v52 = sub_2683CC538();
  __swift_project_boxed_opaque_existential_1(v103, v103[3]);

  sub_2683CC088();
  v42 = v13;
  *v11 = v13;
  v11[1] = v14;
  v11[2] = 0;
  v15 = *(v8 + 32);
  *(v11 + v15) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_2683CB768();
  sub_26813CA00(v103, v99);
  v101 = &type metadata for TCCTemplateProvider;
  v102 = &off_287902CB8;
  v100 = v14;
  v98[3] = &type metadata for SiriKitExecutionProvider;
  v98[4] = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v16 = swift_allocObject();
  v98[0] = v16;
  *(v16 + 40) = &type metadata for NotebookFeatureManager;
  *(v16 + 48) = &protocol witness table for NotebookFeatureManager;
  v98[5] = sub_268372484;
  v98[6] = 0;
  sub_26813CA00(v103, v97);
  v96[3] = &type metadata for TCCTemplateProvider;
  v96[4] = &off_287902CB8;
  v95[3] = v8;
  v95[4] = &off_28790D590;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v95);
  v46 = v11;
  sub_268203294(v11, boxed_opaque_existential_0);
  v94[3] = &type metadata for NotebookButtonProvider;
  v94[4] = &off_287902C78;
  v94[0] = swift_allocObject();
  sub_26818EE98(v99, v94[0] + 16);
  v93[3] = &type metadata for NotebookFeatureManager;
  v93[4] = &protocol witness table for NotebookFeatureManager;
  v18 = sub_268129504(0, &qword_28024F098, 0x277CD4108);
  v19 = sub_268129504(0, &qword_280251F18, 0x277CD4110);

  v20 = v38;

  v21 = v39;
  v50 = v19;
  v51 = v18;
  sub_2683CBEB8();
  sub_2683CEC88();
  if (sub_2683CEC58())
  {
    sub_2683CEC18();

    sub_2683CBEE8();
  }

  else
  {
    v92 = 0;
    memset(v91, 0, sizeof(v91));
  }

  swift_allocObject();
  v22 = sub_2683CC538();
  v23 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v90[5] = &off_28790DB88;
  v90[4] = &unk_28790DB70;
  v90[1] = v23;
  v90[0] = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v40 = sub_2683CEC78();
  sub_26813CA00(v97, v81);
  sub_2681340E8(v91, v82, &qword_28024F020, &unk_2683E6AA0);
  v82[8] = &type metadata for NotebookFlowCreator;
  v82[9] = &off_287900FD8;
  v84 = &type metadata for SiriKitExecutionProvider;
  v85 = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v83 = swift_allocObject();
  sub_26813CA00(v93, v83 + 16);
  v87 = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  v88 = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v86 = swift_allocObject();
  sub_26818EE34(v90, v86 + 16);
  v24 = v20;
  v81[5] = v20;
  v89 = v22;
  sub_2683806E4();

  sub_2683CBDA8();
  v25 = v43;
  OUTLINED_FUNCTION_10_35();
  sub_2683CBE48();
  v76 = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  v77 = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v75 = swift_allocObject();
  sub_26818EE34(v90, v75 + 16);

  v26 = sub_2683CEC48();
  v74[0] = v24;
  v74[1] = v22;
  v78 = v26;
  v79 = sub_268372484;
  v80 = 0;
  sub_268380738();
  v27 = sub_2683CBD98();
  v29 = v28;
  OUTLINED_FUNCTION_37_4();
  v30 = swift_allocObject();
  v30[2] = v27;
  v30[3] = v29;
  v30[4] = sub_268372484;
  v30[5] = 0;
  OUTLINED_FUNCTION_10_35();
  sub_2683CBE38();
  *&v59 = v24;
  *(&v59 + 1) = v22;
  *&v60 = sub_2681B86A4;
  *(&v60 + 1) = 0;
  sub_26838196C();

  sub_2683CBDD8();
  OUTLINED_FUNCTION_10_35();
  sub_2683CBE88();
  sub_26813CA00(v97, v73);
  v31 = v54;
  v73[5] = v54;
  sub_2683819C0(v73, &v59);
  OUTLINED_FUNCTION_19_11();
  v32 = swift_allocObject();
  v33 = v60;
  v32[1] = v59;
  v32[2] = v33;
  v32[3] = v61;

  OUTLINED_FUNCTION_10_35();
  sub_2683CBE78();
  sub_26813CA00(v95, &v59);
  v63 = &off_2878FFB60;
  v62 = v41;
  *(&v61 + 1) = v53;
  sub_26813CA00(v97, v64);
  v64[8] = v22;
  v65 = 1;
  v67 = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  v68 = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v66 = swift_allocObject();
  sub_26818EE34(v90, v66 + 16);
  v70 = &type metadata for NotebookDisambiguationFlowProducer;
  v71 = &off_28790CD48;
  OUTLINED_FUNCTION_20_2();
  v69 = swift_allocObject();
  sub_26813CA00(v97, v69 + 16);
  v64[5] = v31;
  v64[6] = v24;
  v64[7] = v42;
  v72 = 0;
  sub_268189954(&v59, v58);
  v34 = swift_allocObject();
  memcpy((v34 + 16), v58, 0x118uLL);
  OUTLINED_FUNCTION_10_35();
  sub_2683CBE98();
  sub_26813CA00(v97, v55);
  sub_26813CA00(v96, &v56);
  sub_26813CA00(v94, v57);
  v57[5] = v51;
  v57[6] = sub_2681B86A4;
  v57[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253EB0, &qword_2683F5C20);
  sub_26818A0C8(&qword_280253EB8, &qword_280253EB0, &qword_2683F5C20, &unk_2683E6708);
  sub_2683CBDF8();
  OUTLINED_FUNCTION_10_35();
  sub_2683CBEA8();
  sub_26813CA00(v97, v58);
  sub_26813CA00(v94, &v58[5]);
  v58[13] = &type metadata for CommonResponseGenerator;
  v58[14] = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v58[10] = swift_allocObject();
  sub_26813CA00(v97, v58[10] + 16);
  v58[18] = &type metadata for CommonLabelGenerator;
  v58[19] = &off_28790E058;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253EC0, &qword_2683F5C28);
  sub_26818A0C8(&qword_280253EC8, &qword_280253EC0, &qword_2683F5C28, &unk_2683F8DD0);
  sub_2683CBDC8();
  sub_26812D9E0(v58, &qword_280253EC0, &qword_2683F5C28);
  OUTLINED_FUNCTION_10_35();
  sub_2683CBE68();

  sub_26812D9E0(v55, &qword_280253EB0, &qword_2683F5C20);
  sub_268381A70(v73);
  sub_26812D9E0(v91, &qword_28024F020, &unk_2683E6AA0);
  __swift_destroy_boxed_opaque_existential_0(v97);
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  __swift_destroy_boxed_opaque_existential_0(v95);
  __swift_destroy_boxed_opaque_existential_0(v96);
  sub_268381AC4(&v59);
  sub_268381B18(v74);
  sub_2682EF8BC(v81);
  sub_26818F1A8(v90);
  v35 = v49;
  v36 = v47;
  (*(v49 + 32))(v47, v21, v25);
  sub_2683CBDB8();
  sub_2683CBE58();
  (*(v35 + 16))(v45, v36, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253ED0, &qword_2683F5C30);
  swift_allocObject();
  sub_2683CBEC8();
  sub_268381B6C(v98, &v59);
  sub_268381BC8();
  sub_2683CC2E8();

  (*(v35 + 8))(v36, v25);
  sub_268381C1C(v98);
  sub_26818F000(v99);
  sub_2681E5F4C(v46, type metadata accessor for SnippetFormatter);
  return __swift_destroy_boxed_opaque_existential_0(v103);
}

uint64_t sub_268380174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v3 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v3, qword_28027C958);
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_13_37(v5))
  {
    v6 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_29_20(v6);
    OUTLINED_FUNCTION_3_54(&dword_2680EB000, v7, v8, "[UnsupportedValueBehaviorStrategy] Making Punchout flow.");
    OUTLINED_FUNCTION_12_31();
  }

  sub_268381FA0();
  sub_2683CBE08();
  v9 = OUTLINED_FUNCTION_7_35();
  v11 = v10(v9);

  return v11;
}

uint64_t sub_26838024C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_30_19(a1, a2);
  v3 = sub_2681D1E3C();
  if (v3)
  {
    if (v3)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v4 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v4, qword_28027C958);
      v5 = sub_2683CF7C8();
      v6 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_13_37(v6))
      {
        v7 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_29_20(v7);
        OUTLINED_FUNCTION_3_54(&dword_2680EB000, v8, v9, "[UnsupportedValueBehaviorStrategy] Making Prompt for New Value flow.");
        OUTLINED_FUNCTION_12_31();
      }

      sub_268381DC0();
      sub_2683CBE28();
    }

    else
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v16 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v16, qword_28027C958);
      v17 = sub_2683CF7C8();
      v18 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_13_37(v18))
      {
        v19 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_29_20(v19);
        OUTLINED_FUNCTION_3_54(&dword_2680EB000, v20, v21, "[UnsupportedValueBehaviorStrategy] Making Punchout flow.");
        OUTLINED_FUNCTION_12_31();
      }

      sub_268381DC0();
      sub_2683CBE08();
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v10 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v10, qword_28027C958);
    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_13_37(v12))
    {
      v13 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_29_20(v13);
      OUTLINED_FUNCTION_3_54(&dword_2680EB000, v14, v15, "[UnsupportedValueBehaviorStrategy] Making Dialog and Cancel flow.");
      OUTLINED_FUNCTION_12_31();
    }

    sub_268381DC0();
    sub_2683CBE18();
  }

  v22 = OUTLINED_FUNCTION_7_35();
  v24 = v23(v22);

  return v24;
}

uint64_t sub_268380468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = OUTLINED_FUNCTION_30_19(a1, a2);
  v8 = v7(v6);
  if (v8)
  {
    if (v8 == 1)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v9 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v9, qword_28027C958);
      v10 = sub_2683CF7C8();
      v11 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_45(v11))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_11_43(&dword_2680EB000, v12, v13, "[UnsupportedValueBehaviorStrategy] Making Prompt for New Value flow.");
        OUTLINED_FUNCTION_38();
      }

      a5();
      OUTLINED_FUNCTION_20_36();
      sub_2683CBE28();
    }

    else
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v19 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v19, qword_28027C958);
      v20 = sub_2683CF7C8();
      v21 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_45(v21))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_11_43(&dword_2680EB000, v22, v23, "[UnsupportedValueBehaviorStrategy] Making Punchout flow.");
        OUTLINED_FUNCTION_38();
      }

      a5();
      OUTLINED_FUNCTION_20_36();
      sub_2683CBE08();
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v14 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v14, qword_28027C958);
    v15 = sub_2683CF7C8();
    v16 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v16))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_11_43(&dword_2680EB000, v17, v18, "[UnsupportedValueBehaviorStrategy] Making Dialog and Cancel flow.");
      OUTLINED_FUNCTION_38();
    }

    a5();
    OUTLINED_FUNCTION_20_36();
    sub_2683CBE18();
  }

  v24 = OUTLINED_FUNCTION_7_35();
  v26 = v25(v24);

  return v26;
}

void *sub_268380670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  swift_storeEnumTagMultiPayload();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  return v5;
}

unint64_t sub_2683806E4()
{
  result = qword_280253E98;
  if (!qword_280253E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253E98);
  }

  return result;
}

unint64_t sub_268380738()
{
  result = qword_280253EA0;
  if (!qword_280253EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253EA0);
  }

  return result;
}

uint64_t sub_26838078C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F88, &qword_2683F5C90);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268380858);
}

uint64_t sub_268380858()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_26837F580(v2, v1);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26838092C;

  return sub_2681347D4(dword_2683F5CA0);
}

uint64_t sub_26838092C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v4 + 80) = v3;

  return MEMORY[0x2822009F8](sub_268380A3C);
}

uint64_t sub_268380A3C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v0[2] = v1;
  sub_2683CBC28();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  v2 = OUTLINED_FUNCTION_1_16();

  return v3(v2);
}

uint64_t sub_268380AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_268380B04);
}

uint64_t sub_268380B04()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 88);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_268380BB4;

  return sub_26822A1A0(v3, v2);
}

uint64_t sub_268380BB4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  *(v4 + 120) = v3;

  if (v0)
  {
    v5 = *(v2 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_268380CE0);
  }
}

uint64_t sub_268380CE0()
{
  v1 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F88, &qword_2683F5C90);
  v2 = sub_2683CC2D8();
  v3 = [v1 targetTask];
  if (v3 && (sub_2681B2FCC(v3), v4))
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v5 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v5, qword_28027C958);
    v6 = sub_2683CF7C8();
    v7 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v7))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_13_10(&dword_2680EB000, v8, v9, "[SetTaskAttribute] initial intent has fully resolved task. Skipping unlock.");
      OUTLINED_FUNCTION_38();
    }

    v10 = v0[15];

    v0[10] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F90, &qword_2683F5CB0);
    OUTLINED_FUNCTION_2_59();
    sub_26818A0C8(v11, v12, &qword_2683F5CB0, v13);
    sub_2683CBF28();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v14 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v14, qword_28027C958);
    v15 = sub_2683CF7C8();
    v16 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v16))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_13_10(&dword_2680EB000, v17, v18, "[SetTaskAttribute] initial intent does not have a fully resolved task. Requiring unlock.");
      OUTLINED_FUNCTION_38();
    }

    v10 = v0[15];

    v0[7] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E380, &qword_2683D68F0);
    v19 = sub_2683CBCE8();
    OUTLINED_FUNCTION_3_1(v19);
    *(swift_allocObject() + 16) = xmmword_2683D1EC0;
    v0[5] = &type metadata for NotebookUnlockDeviceStrategy;
    v0[6] = sub_26818DBD4();
    sub_2683CBCD8();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v20 = sub_2683CB8B8();

    v0[8] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F90, &qword_2683F5CB0);
    sub_2683CBC78();
    OUTLINED_FUNCTION_2_59();
    sub_26818A0C8(v21, v22, &qword_2683F5CB0, v23);
    v24 = sub_2683CBF68();

    v0[9] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F38, &qword_2683F5CB8);
    sub_26818A0C8(&qword_280253F40, &qword_280253F38, &qword_2683F5CB8, MEMORY[0x277D5B380]);
    sub_2683CBF28();
    OUTLINED_FUNCTION_9_10();
  }

  v25 = OUTLINED_FUNCTION_1_16();

  return v26(v25);
}

unint64_t sub_26838109C(char a1)
{
  result = 0x6154746567726174;
  switch(a1)
  {
    case 1:
      result = 0x6C7469546B736174;
      break;
    case 2:
      result = 0x737574617473;
      break;
    case 3:
      result = 0x797469726F697270;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268381174(uint64_t a1)
{
  sub_2683D0408();
  OUTLINED_FUNCTION_9_10();

  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2683811BC(char a1)
{
  v1 = MEMORY[0x277D84F90];
  switch(a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBD0 != -1)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBF8 != -1)
      {
        swift_once();
      }

      v2 = sub_2681E20E4();
      goto LABEL_15;
    case 3:
    case 6:
      return v1;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBA0 != -1)
      {
        swift_once();
      }

      v2 = sub_2681E20C8();
      goto LABEL_15;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v4 = swift_allocObject();
      v1 = v4;
      *(v4 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBB8 != -1)
      {
        v4 = swift_once();
      }

      v2 = sub_2681E1FB8(v4, v5);
      goto LABEL_15;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBE0 != -1)
      {
LABEL_17:
        swift_once();
      }

LABEL_5:
      v2 = sub_2681E1F9C();
LABEL_15:
      *(v1 + 32) = v2;
      *(v1 + 40) = v3;
      return v1;
  }
}

uint64_t sub_268381424(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 0:
      v18 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v18, v19, v20, v21);
      if (!v79)
      {
        goto LABEL_15;
      }

      v22 = sub_2683CDBE8();
      v24 = OUTLINED_FUNCTION_0_33(v22, v23);
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_22_8(v24, v25, v26, v27, v28, v29, v30, v31, v75, v76[0]);
      OUTLINED_FUNCTION_18_16();
      sub_2683CDDE8();
      goto LABEL_13;
    case 1:
      v32 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v32, v33, v34, v35);
      if (!v79)
      {
        goto LABEL_15;
      }

      v36 = sub_2683CDBE8();
      v38 = OUTLINED_FUNCTION_0_33(v36, v37);
      if ((v38 & 1) == 0)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_22_8(v38, v39, v40, v41, v42, v43, v44, v45, v75, v76[0]);
      OUTLINED_FUNCTION_18_16();
      sub_2683CDDD8();
LABEL_13:

      if (!v78[0])
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    case 4:
    case 5:
      v3 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v3, v4, v5, v6);
      if (v79)
      {
        v7 = sub_2683CDBE8();
        v9 = OUTLINED_FUNCTION_0_33(v7, v8);
        if (v9)
        {
          OUTLINED_FUNCTION_22_8(v9, v10, v11, v12, v13, v14, v15, v16, v75, v76[0]);
          OUTLINED_FUNCTION_18_16();
          sub_2683CDDD8();

          if (v78[0])
          {
            v17 = sub_2683CD7C8();

            if (v17)
            {
              goto LABEL_19;
            }
          }

LABEL_14:
        }
      }

      else
      {
LABEL_15:
        sub_26812D9E0(v78, &qword_28024E370, &unk_2683D9AA0);
      }

LABEL_16:
      v46 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v46, v47, v48, v49);
      if (v79)
      {
        v50 = sub_2683CD938();
        v52 = OUTLINED_FUNCTION_0_33(v50, v51);
        if (v52)
        {
          OUTLINED_FUNCTION_22_8(v52, v53, v54, v55, v56, v57, v58, v59, v75, v76[0]);
          OUTLINED_FUNCTION_18_16();
          sub_2683CCFF8();

          if (v78[0])
          {
LABEL_19:

            v60 = sub_2683CD1A8();

            return v60;
          }
        }
      }

      else
      {
        sub_26812D9E0(v78, &qword_28024E370, &unk_2683D9AA0);
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v61 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v61, qword_28027C958);
      v62 = OUTLINED_FUNCTION_10_10();
      sub_26818F56C(v62, v63);
      v64 = sub_2683CF7C8();
      v65 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v65))
      {
        v66 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v66 = 136315394;
        v67 = sub_26838109C(a2);
        v69 = sub_2681610A0(v67, v68, &v77);

        *(v66 + 4) = v69;
        *(v66 + 12) = 2080;
        sub_2681340E8(v78, v76, &qword_28024E370, &unk_2683D9AA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
        v70 = sub_2683CFAD8();
        v72 = v71;
        sub_26818F5C8(v78);
        v73 = sub_2681610A0(v70, v72, &v77);

        *(v66 + 14) = v73;
        _os_log_impl(&dword_2680EB000, v64, v65, "[SetTask resolveSelectedEntity] Unable to resolve entity for %s from intent %s", v66, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {

        sub_26818F5C8(v78);
      }

      return 0;
    default:
      goto LABEL_16;
  }
}

unint64_t sub_2683817F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268381174(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_268381820@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26838109C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268381864(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253EE8, &qword_2683F5C38);
  swift_allocObject();
  sub_268380670(v8, a5, a6, &qword_280253EF8, &qword_2683F5C40);
  sub_26818A0C8(&qword_280253EF0, &qword_280253EE8, &qword_2683F5C38, &unk_2683F1068);

  v9 = sub_2683CBF38();

  return v9;
}

unint64_t sub_26838196C()
{
  result = qword_280253EA8;
  if (!qword_280253EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253EA8);
  }

  return result;
}

unint64_t sub_268381BC8()
{
  result = qword_280253ED8;
  if (!qword_280253ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253ED8);
  }

  return result;
}