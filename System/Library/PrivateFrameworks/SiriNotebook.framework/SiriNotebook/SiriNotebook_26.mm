unint64_t sub_268381C70()
{
  result = qword_280253EE0;
  if (!qword_280253EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253EE0);
  }

  return result;
}

uint64_t sub_268381CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F08, &qword_2683F5C48);
  swift_allocObject();
  sub_268380670(v8, a5, a6, &qword_280253F18, &qword_2683F5C50);
  sub_26818A0C8(&qword_280253F10, &qword_280253F08, &qword_2683F5C48, &unk_2683F1068);

  v9 = sub_2683CBF38();

  return v9;
}

unint64_t sub_268381DC0()
{
  result = qword_280253F00;
  if (!qword_280253F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253F00);
  }

  return result;
}

uint64_t sub_268381E14()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26818C8B4;

  return sub_26838078C(v3, v0 + 16);
}

uint64_t sub_268381EA8()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26813D0C0;

  return sub_268380AE0(v2, v3, v4);
}

unint64_t sub_268381F4C()
{
  result = qword_280253F48;
  if (!qword_280253F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253F48);
  }

  return result;
}

unint64_t sub_268381FA0()
{
  result = qword_280253F50;
  if (!qword_280253F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253F50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SetTaskAttribute.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2683820E4()
{
  result = qword_280253F58;
  if (!qword_280253F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253F58);
  }

  return result;
}

void OUTLINED_FUNCTION_3_54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_11_43(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_12_31()
{

  JUMPOUT(0x26D617A40);
}

BOOL OUTLINED_FUNCTION_13_37(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return sub_2683CF228();
}

uint64_t sub_268382244(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_268382284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2683822E4()
{
  v1 = sub_2683CCC18();
  OUTLINED_FUNCTION_0_3();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 56);
  sub_2683CCB88();
  v7(v48, v6, 1);
  (*(v3 + 8))(v6, v1);
  sub_2681340E8(v48, v47, &qword_28024D460, &qword_2683D5050);
  if (v47[56] == 255)
  {
    goto LABEL_6;
  }

  sub_2681340E8(v47, v43, &qword_28024D460, &qword_2683D5050);
  if (v46 != 2)
  {
    if (v46 == 7)
    {
      v8 = vorrq_s8(v44, v45);
      if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v43[2] | v43[1] | v43[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v36 = sub_2683CF7E8();
        __swift_project_value_buffer(v36, qword_28027C958);
        v37 = sub_2683CF7C8();
        v38 = sub_2683CFE98();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_2680EB000, v37, v38, "[CreateNote NeedsValueStrategy] Returning .cancel().", v39, 2u);
          OUTLINED_FUNCTION_38();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v43);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    sub_2681340E8(v48, v43, &qword_28024D460, &qword_2683D5050);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_49();
      v13 = OUTLINED_FUNCTION_53();
      v40[0] = v13;
      *v12 = 136315138;
      sub_2681340E8(v43, v42, &qword_28024D460, &qword_2683D5050);
      v14 = OUTLINED_FUNCTION_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
      v16 = sub_2683CFAD8();
      v18 = v17;
      sub_2681433DC(v43, &qword_28024D460, &qword_2683D5050);
      v19 = sub_2681610A0(v16, v18, v40);

      *(v12 + 4) = v19;
      OUTLINED_FUNCTION_65(&dword_2680EB000, v20, v21, "[CreateNote NeedsValueStrategy] Returning .ignore() for task: %s.");
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_2681433DC(v43, &qword_28024D460, &qword_2683D5050);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_2681433DC(v48, &qword_28024D460, &qword_2683D5050);
    return sub_2681433DC(v47, &qword_28024D460, &qword_2683D5050);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v22 = sub_2683CF7E8();
  __swift_project_value_buffer(v22, qword_28027C958);
  sub_2681340E8(v48, v42, &qword_28024D460, &qword_2683D5050);
  v23 = sub_2683CF7C8();
  v24 = sub_2683CFE98();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_49();
    v26 = OUTLINED_FUNCTION_53();
    v41 = v26;
    *v25 = 136315138;
    sub_2681340E8(v42, v40, &qword_28024D460, &qword_2683D5050);
    v27 = OUTLINED_FUNCTION_44();
    __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    v29 = sub_2683CFAD8();
    v31 = v30;
    sub_2681433DC(v42, &qword_28024D460, &qword_2683D5050);
    v32 = sub_2681610A0(v29, v31, &v41);

    *(v25 + 4) = v32;
    OUTLINED_FUNCTION_65(&dword_2680EB000, v33, v34, "[CreateNote NeedsValueStrategy] Returning .handle() for task: %s.");
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    sub_2681433DC(v42, &qword_28024D460, &qword_2683D5050);
  }

  sub_2683CC2A8();
  sub_2681433DC(v48, &qword_28024D460, &qword_2683D5050);
  sub_26813A1A0(v43);
  return sub_2681433DC(v47, &qword_28024D460, &qword_2683D5050);
}

uint64_t sub_268382828()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2683CCC18();
  v1[19] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_15_1();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2683828D0(uint64_t a1)
{
  v32 = v1;
  v3 = *(v1 + 160);
  v2 = *(v1 + 168);
  v4 = *(v1 + 152);
  v5 = *(*(v1 + 144) + 56);
  sub_2683CCB88();
  v5(v2, 0);
  (*(v3 + 8))(v2, v4);
  v6 = *(v1 + 72);
  if (v6 == 2)
  {
    sub_268128148((v1 + 16), v1 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
    v7 = sub_2683CC9C8();
    v8 = *(v1 + 104);
    v9 = *(v1 + 112);
    __swift_project_boxed_opaque_existential_1((v1 + 80), v8);
    v10 = (*(v9 + 16))(1, v8, v9);
    v11 = sub_2682F0120(v10);

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);
    v13 = v11;
    v14 = sub_2683CF7C8();
    v15 = sub_2683CFE98();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_49();
      v30 = OUTLINED_FUNCTION_53();
      v31[0] = v30;
      *v16 = 136315138;
      v17 = v13;
      v18 = [v17 description];
      v19 = sub_2683CFA78();
      v21 = v20;

      v22 = sub_2681610A0(v19, v21, v31);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_2680EB000, v14, v15, "[CreateNote NeedsValueStrategy] Parsed response and updated intent: %s.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v23 = *(v1 + 120);
    v24 = sub_2683CC9D8();
    v25 = [v24 resolvedValue];

    sub_2683D0038();
    swift_unknownObjectRelease();
    sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
    sub_2683CC618();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F68, &qword_2683F5F18);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v26);
    __swift_destroy_boxed_opaque_existential_0((v1 + 80));

    OUTLINED_FUNCTION_7_4();
  }

  else
  {
    if (v6 == 255)
    {
      sub_2681433DC(v1 + 16, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v1 + 16);
    }

    sub_26812C6B8();
    swift_allocError();
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 4;
    swift_willThrow();

    OUTLINED_FUNCTION_40();
  }

  return v27();
}

uint64_t sub_268382C60()
{
  OUTLINED_FUNCTION_14();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[30] = v4;
  OUTLINED_FUNCTION_23(v4);
  v1[31] = OUTLINED_FUNCTION_55();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v5 = sub_2683CC9A8();
  v1[35] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[36] = v6;
  v1[37] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CC138();
  v1[38] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[39] = v8;
  v1[40] = OUTLINED_FUNCTION_55();
  v1[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v9);
  v1[42] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v10);
  v1[43] = OUTLINED_FUNCTION_15_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v11);
  v1[44] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v12);
  v1[45] = v13;
  v1[46] = *(v14 + 64);
  v1[47] = OUTLINED_FUNCTION_55();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v15 = sub_2683CC748();
  v1[55] = v15;
  OUTLINED_FUNCTION_3_1(v15);
  v1[56] = v16;
  v1[57] = OUTLINED_FUNCTION_55();
  v1[58] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  v1[59] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[60] = v18;
  v1[61] = OUTLINED_FUNCTION_15_1();
  v19 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_268382F8C()
{
  v39 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 224);
  v5 = sub_2683CF7E8();
  __swift_project_value_buffer(v5, qword_28027C958);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2683CF7C8();
  v7 = sub_2683CFE98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 464);
    v9 = *(v0 + 448);
    v35 = *(v0 + 440);
    v10 = OUTLINED_FUNCTION_49();
    v37 = OUTLINED_FUNCTION_53();
    v38[0] = v37;
    *v10 = 136315138;
    v36 = v7;
    sub_2683CC9E8();
    v11 = sub_2683CC738();
    v13 = v12;
    (*(v9 + 8))(v8, v35);
    v14 = OUTLINED_FUNCTION_44();
    v15(v14);
    v16 = sub_2681610A0(v11, v13, v38);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v6, v36, "[CreateNote NeedsValueStrategy] Making prompt for %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v17 = OUTLINED_FUNCTION_44();
    v18(v17);
  }

  v20 = *(v0 + 448);
  v19 = *(v0 + 456);
  v21 = *(v0 + 440);
  sub_2683CC9E8();
  v22 = sub_2683CC738();
  v24 = v23;
  (*(v20 + 8))(v19, v21);

  v25 = sub_2683B48FC(v22);
  *(v0 + 576) = v25;
  if (v25 == 3)
  {
    sub_26812C6B8();
    swift_allocError();
    *v26 = v22;
    *(v26 + 8) = v24;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_12_32();

    OUTLINED_FUNCTION_40();
LABEL_8:

    return v27();
  }

  v29 = v25;

  sub_2683CC9B8();
  LOBYTE(v38[0]) = 1;
  v30 = sub_26812A998(v38);

  if (v30)
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 232), *(*(v0 + 232) + 24));
    if (sub_2683CC0B8())
    {
      sub_268384890(*(v0 + 216));

      OUTLINED_FUNCTION_7_4();
      goto LABEL_8;
    }
  }

  v32 = *(v0 + 424);
  v31 = *(v0 + 432);
  v33 = *(v0 + 240);
  *(v0 + 496) = *(*(v0 + 232) + 48);
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v33);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  v34 = swift_task_alloc();
  *(v0 + 504) = v34;
  *v34 = v0;
  v34[1] = sub_2683834EC;

  return sub_268384BB4(v29);
}

uint64_t sub_2683834EC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  *v4 = *v1;
  v3[64] = v5;
  v3[65] = v0;

  if (v0)
  {
    v6 = v3[54];
    sub_2681433DC(v3[53], &qword_28024E770, &qword_2683D80D0);
    sub_2681433DC(v6, &qword_28024E770, &qword_2683D80D0);
    v7 = sub_26838476C;
  }

  else
  {
    v7 = sub_268383634;
  }

  return MEMORY[0x2822009F8](v7);
}

void sub_268383634()
{
  *(v0 + 16) = *(v0 + 576);
  v1 = *(v0 + 512);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  *(v0 + 40) = &type metadata for CreateNote.Parameter;
  *(v0 + 48) = &off_28790DD70;
  sub_268168B1C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v4 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  sub_2683CED08();
  v5 = OUTLINED_FUNCTION_33_1();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  v8 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v9 = swift_allocObject();
  *(v0 + 528) = v9;
  *(v9 + 16) = xmmword_2683D2250;
  *(v9 + 32) = v1;
  v10 = v1;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26D616C90](0, v9);
    }

    else
    {
      v11 = *(v9 + 32);
    }

    v12 = v11;
    v13 = [v11 catId];

    v74 = sub_2683CFA78();
    v77 = v14;
  }

  else
  {
    v74 = 0;
    v77 = 0;
  }

  v15 = *(v0 + 496);
  v16 = *(v0 + 432);
  v73 = v16;
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v20 = *(v0 + 360);
  v19 = *(v0 + 368);
  v70 = *(v0 + 352);
  v71 = *(v0 + 344);
  v21 = *(v0 + 312);
  v67 = *(v0 + 320);
  v68 = *(v0 + 304);
  v69 = *(v0 + 328);
  v72 = *(v0 + 336);
  v75 = *(v0 + 240);
  v76 = *(v0 + 400);
  sub_2681340E8(*(v0 + 424), v17, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v16, v18, &qword_28024E770, &qword_2683D80D0);
  v22 = *(v20 + 80);
  v23 = (v22 + 24) & ~v22;
  v24 = (v19 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  *(v0 + 536) = v25;
  *(v25 + 16) = v15;
  sub_2681430AC(v17, v25 + v23);
  sub_2681430AC(v18, v25 + v24);
  (*(v21 + 16))(v67, v69, v68);
  v26 = swift_task_alloc();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 40) = v74;
  *(v26 + 48) = v77;
  *(v26 + 56) = v70;
  *(v26 + 64) = 513;
  *(v26 + 72) = sub_26814311C;
  *(v26 + 80) = v25;
  *(v26 + 88) = 0;
  *(v26 + 96) = v71;
  *(v26 + 104) = 2;
  *(v26 + 112) = v72;

  sub_2683CC8E8();

  sub_2681340E8(v73, v76, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v76, 1, v75) == 1)
  {
    v27 = (v0 + 400);
  }

  else
  {
    v28 = *(v0 + 424);
    v29 = *(v0 + 392);
    v30 = *(v0 + 240);
    sub_26814320C(*(v0 + 400), *(v0 + 272));
    sub_2681340E8(v28, v29, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v29, 1, v30) != 1)
    {
      v50 = *(v0 + 264);
      v51 = *(v0 + 272);
      v52 = *(v0 + 240);
      sub_26814320C(*(v0 + 392), v50);
      *(v0 + 160) = v52;
      v53 = sub_268143270();
      *(v0 + 168) = v53;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
      sub_2681432C8(v51, boxed_opaque_existential_0);
      *(v0 + 200) = v52;
      *(v0 + 208) = v53;
      v55 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
      sub_2681432C8(v50, v55);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 544) = v56;
      *v56 = v57;
      OUTLINED_FUNCTION_35_17(v56);
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v27 = (v0 + 392);
    sub_26814332C(*(v0 + 272));
  }

  v31 = *v27;
  v32 = *(v0 + 432);
  v33 = *(v0 + 384);
  v34 = *(v0 + 240);
  sub_2681433DC(v31, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v32, v33, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v34);
  v36 = *(v0 + 384);
  v37 = *(v0 + 240);
  if (EnumTagSinglePayload == 1)
  {
    v38 = *(v0 + 424);
    v39 = *(v0 + 376);
    sub_2681433DC(v36, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v38, v39, &qword_28024E770, &qword_2683D80D0);
    v40 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v40, v41, v37) == 1)
    {
      sub_2681433DC(*(v0 + 376), &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 568) = v42;
      *v42 = v43;
      OUTLINED_FUNCTION_35_17(v42);
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v60 = *(v0 + 240);
    v61 = *(v0 + 248);
    sub_26814320C(*(v0 + 376), v61);
    *(v0 + 80) = v60;
    *(v0 + 88) = sub_268143270();
    v62 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    sub_2681432C8(v61, v62);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 560) = v63;
    *v63 = v64;
    OUTLINED_FUNCTION_35_17(v63);
  }

  else
  {
    v46 = *(v0 + 256);
    sub_26814320C(v36, v46);
    *(v0 + 120) = v37;
    *(v0 + 128) = sub_268143270();
    v47 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
    sub_2681432C8(v46, v47);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 552) = v48;
    *v48 = v49;
    OUTLINED_FUNCTION_35_17(v48);
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_268383CFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_268383E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v25 = v22[64];
  v26 = v22[33];
  v27 = v22[34];

  sub_26814332C(v26);
  sub_26814332C(v27);
  v28 = OUTLINED_FUNCTION_4_53();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_35();
  v31(v30);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_21_25();
  sub_2681433DC(v24, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25, &qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_2_60();

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_268383FA8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2683840AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v26 = *(v23 + 512);
  v27 = *(v23 + 256);

  sub_26814332C(v27);
  v28 = OUTLINED_FUNCTION_4_53();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_35();
  v31(v30);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_21_25();
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_2_60();

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_268384244()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_268384348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v26 = *(v23 + 512);
  v27 = *(v23 + 248);

  sub_26814332C(v27);
  v28 = OUTLINED_FUNCTION_4_53();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_35();
  v31(v30);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_21_25();
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_2_60();

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2683844E0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2683845E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v26 = *(v23 + 512);

  v27 = OUTLINED_FUNCTION_4_53();
  v28(v27);
  v29 = OUTLINED_FUNCTION_18_35();
  v30(v29);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_21_25();
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_2_60();

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_26838476C()
{
  OUTLINED_FUNCTION_12_32();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  __asm { BRAA            X1, X16 }
}

void sub_268384890(uint64_t *a1@<X8>)
{
  v2 = sub_2683CB438();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  sub_268129504(0, &qword_28024E778, 0x277D479F0);
  if (qword_28024CC60 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_28027CEB8);
  (*(v4 + 16))(v10, v11, v2);
  v12 = sub_26816B2DC(v10);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v13 = sub_2683CF7E8();
  __swift_project_value_buffer(v13, qword_28027C958);
  v14 = v12;
  v15 = sub_2683CF7C8();
  v16 = sub_2683CFE98();
  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_9;
  }

  v28 = a1;
  v17 = OUTLINED_FUNCTION_49();
  v18 = OUTLINED_FUNCTION_53();
  *&v29[0] = v18;
  *v17 = 136315138;
  v19 = [v14 punchOutUri];

  if (v19)
  {
    sub_2683CB3E8();

    v20 = sub_2683CB3A8();
    v22 = v21;
    (*(v4 + 8))(v8, v2);
    v23 = sub_2681610A0(v20, v22, v29);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_2680EB000, v15, v16, "[CreateNote NeedsValueStrategy] skipping prompt for 1p notes and punching out to %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    a1 = v28;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2683D2250;
    *(v24 + 32) = v14;
    v25 = sub_2683CCC98();
    memset(v29, 0, sizeof(v29));
    v30 = 0;
    v26 = MEMORY[0x277D5C1D8];
    a1[3] = v25;
    a1[4] = v26;
    __swift_allocate_boxed_opaque_existential_0(a1);
    sub_2683CCC88();
    return;
  }

  __break(1u);
}

uint64_t sub_268384BB4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_268384BE0()
{
  OUTLINED_FUNCTION_14();
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      v1 = swift_task_alloc();
      *(v0 + 32) = v1;
      *v1 = v0;
      v1[1] = sub_26813C350;

      return sub_26812BCA4();
    }

    else
    {
      v4 = swift_task_alloc();
      *(v0 + 40) = v4;
      *v4 = v0;
      v4[1] = sub_268384E38;

      return sub_26812BD54();
    }
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *v3 = v0;
    v3[1] = sub_268384D48;

    return sub_26812BE04();
  }
}

uint64_t sub_268384D48()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_268384E38()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_268384F2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_268382828();
}

uint64_t sub_268384FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_268382C60();
}

unint64_t sub_268385088()
{
  result = qword_280253F60;
  if (!qword_280253F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253F60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_60()
{
}

uint64_t OUTLINED_FUNCTION_12_32()
{
}

uint64_t OUTLINED_FUNCTION_21_25()
{

  return sub_2681433DC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_22_24()
{

  return sub_2681433DC(v0, v1, v2);
}

uint64_t sub_2683851F4@<X0>(char a2@<W1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, a4);
  }

  else
  {
    sub_2683CFD28();
    swift_getWitnessTable();
    sub_2683CFDC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F70, &unk_2683F5F20);
    if (sub_2683CFE38())
    {
      sub_2683CFD38();
      v8 = a5;
      v9 = 0;
    }

    else
    {
      v8 = a5;
      v9 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v8, v9, 1, a4);
  }
}

uint64_t sub_268385338()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253798, &unk_2683F3DC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  sub_2681340E8(v1, v4, &qword_28024D398, &qword_2683D22F0);
  v8 = sub_2683CD358();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_26812D9E0(v4, &qword_28024D398, &qword_2683D22F0);
    v9 = sub_2683CD398();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  }

  else
  {
    sub_2683CD2C8();
    (*(*(v8 - 8) + 8))(v4, v8);
    v10 = sub_2683CD398();
    if (__swift_getEnumTagSinglePayload(v7, 1, v10) != 1)
    {
      sub_26812D9E0(v7, &qword_280253798, &unk_2683F3DC0);
      goto LABEL_7;
    }
  }

  sub_26812D9E0(v7, &qword_280253798, &unk_2683F3DC0);
  if ((sub_2681E6E54() & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  v11 = sub_2681E6E90() ^ 1;
  return v11 & 1;
}

uint64_t sub_268385528()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253798, &unk_2683F3DC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  sub_2681340E8(v1, v4, &qword_28024D398, &qword_2683D22F0);
  v8 = sub_2683CD358();
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_26812D9E0(v4, &qword_28024D398, &qword_2683D22F0);
    v9 = sub_2683CD398();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
LABEL_4:
    sub_26812D9E0(v7, &qword_280253798, &unk_2683F3DC0);
    goto LABEL_5;
  }

  sub_2683CD2C8();
  (*(*(v8 - 8) + 8))(v4, v8);
  v10 = sub_2683CD398();
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  sub_26812D9E0(v7, &qword_280253798, &unk_2683F3DC0);
  if ((sub_2681E6E54() & 1) == 0)
  {
    v11 = sub_2681E6E90() ^ 1;
    return v11 & 1;
  }

LABEL_5:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_26838573C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v64 = a3;
  v65 = a4;
  v8 = v5;
  v10 = sub_2683CC768();
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v66 = (v12 - v11);
  v63[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FA8, &qword_2683F6128);
  OUTLINED_FUNCTION_1();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v63 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v63 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v63 - v23;
  *(v8 + *a2) = 1;
  sub_26813CC6C(a1, v70);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FB0, &qword_2683F6130);
  v26 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v24, v26 ^ 1u, 1, v25);
  sub_2681340E8(v24, v22, &qword_280253FA8, &qword_2683F6128);
  if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
  {
    sub_26812D9E0(v22, &qword_280253FA8, &qword_2683F6128);
LABEL_10:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v46 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v46, qword_28027C958);
    sub_2681340E8(v24, v19, &qword_280253FA8, &qword_2683F6128);

    v47 = sub_2683CF7C8();
    v48 = sub_2683CFE98();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v63[0] = v50;
      *v49 = 136315394;
      v69 = *v8;
      v70[0] = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
      v51 = sub_2683CFAD8();
      v53 = sub_2681610A0(v51, v52, v70);
      v65 = v8;
      v54 = v53;

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      sub_2681340E8(v19, v16, &qword_280253FA8, &qword_2683F6128);
      v55 = sub_2683CFAD8();
      v56 = a5;
      v58 = v57;
      sub_26812D9E0(v19, &qword_280253FA8, &qword_2683F6128);
      v59 = sub_2681610A0(v55, v58, v70);
      a5 = v56;

      *(v49 + 14) = v59;
      v8 = v65;
      _os_log_impl(&dword_2680EB000, v47, v48, "[%s] RCHFlow did not exit with complete value. ExitValue: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26812D9E0(v19, &qword_280253FA8, &qword_2683F6128);
    }

    v45 = v66;
    v44 = v67;
    *v66 = 0xD000000000000028;
    v45[1] = 0x8000000268401A40;
    v43 = *MEMORY[0x277D5BF08];
    goto LABEL_16;
  }

  v27 = a5;
  v28 = *(v25 - 8);
  v29 = (*(v28 + 88))(v22, v25);
  v30 = v8;
  v31 = *MEMORY[0x277D5BCA0];
  (*(v28 + 8))(v22, v25);
  a5 = v27;
  v32 = v29 == v31;
  v8 = v30;
  if (!v32)
  {
    goto LABEL_10;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v33 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v33, qword_28027C958);

  v34 = sub_2683CF7C8();
  v35 = sub_2683CFE98();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_49();
    v37 = OUTLINED_FUNCTION_53();
    *v36 = 136315138;
    v69 = *v30;
    v70[0] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
    v38 = sub_2683CFAD8();
    v40 = sub_2681610A0(v38, v39, v70);

    *(v36 + 4) = v40;
    OUTLINED_FUNCTION_13_4(&dword_2680EB000, v41, v42, "[%s] Correction successful");
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_38();
  }

  v43 = *MEMORY[0x277D5BF10];
  v45 = v66;
  v44 = v67;
LABEL_16:
  v60 = v68;
  (*(v44 + 104))(v45, v43, v68);
  v61 = *a5;
  swift_beginAccess();
  (*(v44 + 40))(v8 + v61, v45, v60);
  swift_endAccess();
  return sub_26812D9E0(v24, &qword_280253FA8, &qword_2683F6128);
}

BOOL sub_268385DA8(uint64_t a1)
{
  sub_26813A144(a1, v5);
  v2 = v6;
  sub_26813A1A0(v5);
  if (!v2)
  {
    return 1;
  }

  sub_26813A144(a1, v5);
  v3 = v6 == 4;
  sub_26813A1A0(v5);
  return v3;
}

uint64_t sub_268385E14()
{
  type metadata accessor for CorrectingAddTasksFlow(0);
  sub_2683882A4(&qword_280253F88, &unk_2683F6058);
  OUTLINED_FUNCTION_0_0();
  return sub_2683CBF48();
}

uint64_t sub_268385E8C()
{
  OUTLINED_FUNCTION_14();
  v1[32] = v2;
  v1[33] = v0;
  v3 = sub_2683CC768();
  v1[34] = v3;
  v1[35] = *(v3 - 8);
  v1[36] = OUTLINED_FUNCTION_15_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F88, &qword_2683F5C90);
  v1[37] = v4;
  v1[38] = *(v4 - 8);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_268385F98(uint64_t a1)
{
  v42 = v1;
  v3 = *(v1 + 264);
  if (*(v3 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_state))
  {
    sub_2683CC3F8();
    goto LABEL_30;
  }

  v4 = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask;
  *(v1 + 320) = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask;
  swift_beginAccess();
  sub_2681340E8(v3 + v4, v1 + 16, &qword_28024D460, &qword_2683D5050);
  v5 = *(v1 + 72);
  sub_26812D9E0(v1 + 16, &qword_28024D460, &qword_2683D5050);
  if (v5 == 255 || (v6 = *(*(v1 + 264) + 16), sub_268229348() != 1) || !sub_2683ABE58())
  {
    OUTLINED_FUNCTION_34_18(*(v1 + 320));
    v12 = OUTLINED_FUNCTION_38_14();
    if (v5 == 255 && (sub_2681E73A0(v12) & 1) != 0)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v13 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v13, qword_28027C958);
      v14 = sub_2683CF7C8();
      v15 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_43(v15))
      {
        v16 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_32_5(v16);
        OUTLINED_FUNCTION_11_17(&dword_2680EB000, v17, v18, "[CorrectingAddTasksFlow.execute] handling an undo task");
        OUTLINED_FUNCTION_36();
      }

      v19 = *(v1 + 264);

      __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator), *(v19 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator + 24));
      sub_268191B5C();
      *(v1 + 232) = v20;
      sub_2683CBC28();

      OUTLINED_FUNCTION_4_54();
    }

    else
    {
      sub_268229348();
      OUTLINED_FUNCTION_28_21();
      v26 = v25 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
      if (v22 ^ v23 | v21)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0x7420656C62616E55;
      }

      if (v22 ^ v23 | v21)
      {
        v28 = v24;
      }

      else
      {
        v28 = 0xEE006F646E75206FLL;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v29 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v29, qword_28027C958);

      v30 = sub_2683CF7C8();
      v31 = sub_2683CFE78();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_49();
        v41 = OUTLINED_FUNCTION_53();
        *v32 = 136315138;
        *(v32 + 4) = sub_2681610A0(v27, v28, &v41);
        OUTLINED_FUNCTION_16_9(&dword_2680EB000, v33, v34, "[CorrectingAddTasksFlow.execute] %s");
        OUTLINED_FUNCTION_7_36();
        OUTLINED_FUNCTION_12_31();
      }

      OUTLINED_FUNCTION_31_16();
      v35 = OUTLINED_FUNCTION_30_20();
      v36(v35);
      OUTLINED_FUNCTION_37_11();
      v37 = OUTLINED_FUNCTION_29_21();
      v38(v37);
      swift_endAccess();
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator), *(v2 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator + 24));
      OUTLINED_FUNCTION_35_18(&type metadata for UnsupportedIntentWrapper);
      sub_26812D9E0(v1 + 144, &qword_28024E3C0, &qword_2683D6990);
      sub_2683CC3E8();
    }

LABEL_30:

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_12_0();

    __asm { BRAA            X1, X16 }
  }

  sub_2683ABE60();
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26D616C90](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  *(v1 + 328) = v7;
  v8 = swift_task_alloc();
  *(v1 + 336) = v8;
  *v8 = v1;
  v8[1] = sub_2683863E8;
  OUTLINED_FUNCTION_12_0();

  return sub_2683868F0(v9);
}

uint64_t sub_2683863E8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = v3;

  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2683864D4()
{
  v39 = v1;
  v3 = *(v1 + 344);
  if (v3)
  {
    v37 = *(v1 + 328);
    v5 = *(v1 + 304);
    v4 = *(v1 + 312);
    v6 = *(v1 + 296);
    sub_26837F580(*(*(v1 + 264) + 24), v4);
    *(v1 + 240) = sub_2683CC2D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F90, &qword_2683F5CB0);
    sub_2683209A8();
    v7 = sub_2683CBF28();

    (*(v5 + 8))(v4, v6);
    *(v1 + 248) = v7;
    sub_2683CBC28();

    sub_2683CC398();

LABEL_3:

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_34_18(*(v1 + 320));
  v8 = OUTLINED_FUNCTION_38_14();
  if (v0 == 255 && (sub_2681E73A0(v8) & 1) != 0)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v9 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v9, qword_28027C958);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v11))
    {
      v12 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v12);
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v13, v14, "[CorrectingAddTasksFlow.execute] handling an undo task");
      OUTLINED_FUNCTION_36();
    }

    v15 = *(v1 + 264);

    __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator), *(v15 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator + 24));
    sub_268191B5C();
    *(v1 + 232) = v16;
    sub_2683CBC28();

    OUTLINED_FUNCTION_4_54();
    goto LABEL_3;
  }

  sub_268229348();
  OUTLINED_FUNCTION_28_21();
  v22 = v21 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  if (v18 ^ v19 | v17)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0x7420656C62616E55;
  }

  if (v18 ^ v19 | v17)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0xEE006F646E75206FLL;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v25 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v25, qword_28027C958);

  v26 = sub_2683CF7C8();
  v27 = sub_2683CFE78();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_49();
    v38 = OUTLINED_FUNCTION_53();
    *v28 = 136315138;
    *(v28 + 4) = sub_2681610A0(v23, v24, &v38);
    OUTLINED_FUNCTION_16_9(&dword_2680EB000, v29, v30, "[CorrectingAddTasksFlow.execute] %s");
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_12_31();
  }

  OUTLINED_FUNCTION_31_16();
  v31 = OUTLINED_FUNCTION_30_20();
  v32(v31);
  OUTLINED_FUNCTION_37_11();
  v33 = OUTLINED_FUNCTION_29_21();
  v34(v33);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator), *(v2 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator + 24));
  OUTLINED_FUNCTION_35_18(&type metadata for UnsupportedIntentWrapper);
  sub_26812D9E0(v1 + 144, &qword_28024E3C0, &qword_2683D6990);
  sub_2683CC3E8();
LABEL_22:

  OUTLINED_FUNCTION_40();

  return v35();
}

uint64_t sub_2683868F0(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_268386918()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 296);
  v2 = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask;
  swift_beginAccess();
  sub_2681340E8(v1 + v2, v0 + 16, &qword_28024D460, &qword_2683D5050);
  if (*(v0 + 72) == 255)
  {
LABEL_19:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v21 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v21, qword_28027C958);
    v22 = sub_2683CF7C8();
    v23 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_43(v23))
    {
      v24 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v24);
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v25, v26, "[CorrectingAddTasksFlow.execute] unexpected task type.");
      OUTLINED_FUNCTION_36();
    }

    sub_26812D9E0(v0 + 16, &qword_28024D460, &qword_2683D5050);
    OUTLINED_FUNCTION_37();

    return v27(0);
  }

  sub_2681340E8(v0 + 16, v0 + 80, &qword_28024D460, &qword_2683D5050);
  v3 = (v0 + 80);
  if (*(v0 + 136) != 4)
  {
    if (!*(v0 + 136))
    {
      sub_268128148(v3, v0 + 184);
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v4 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v4, qword_28027C958);
      v5 = sub_2683CF7C8();
      v6 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_43(v6))
      {
        v7 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_32_5(v7);
        OUTLINED_FUNCTION_11_17(&dword_2680EB000, v8, v9, "[CorrectingAddTasksFlow.execute] handling add task steering intent");
        OUTLINED_FUNCTION_36();
      }

      v10 = swift_task_alloc();
      *(v0 + 304) = v10;
      *v10 = v0;
      v10[1] = sub_268386C48;

      return sub_26838742C();
    }

    sub_26813A1A0(v3);
    goto LABEL_19;
  }

  sub_268128148(v3, v0 + 144);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v12 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v12, qword_28027C958);
  v13 = sub_2683CF7C8();
  v14 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_43(v14))
  {
    v15 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_32_5(v15);
    OUTLINED_FUNCTION_11_17(&dword_2680EB000, v16, v17, "[CorrectingAddTasksFlow.execute] handling set task attribute steering intent");
    OUTLINED_FUNCTION_36();
  }

  __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
  v18 = swift_task_alloc();
  *(v0 + 328) = v18;
  *v18 = v0;
  v19 = OUTLINED_FUNCTION_19_35(v18);

  return sub_26822A1A0(v19, v20);
}

uint64_t sub_268386C48()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_26();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_26();
  *v8 = v7;
  *(v5 + 312) = v0;

  if (v0)
  {
    v9 = sub_2683870F4;
  }

  else
  {
    *(v5 + 320) = v3;
    v9 = sub_268386D60;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_268386D60()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  sub_26812D9E0(v0 + 16, &qword_28024D460, &qword_2683D5050);
  OUTLINED_FUNCTION_37();

  return v2(v1);
}

uint64_t sub_268386DD8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v4;
  *(v2 + 344) = v0;

  if (v0)
  {
    v5 = sub_268387290;
  }

  else
  {
    v5 = sub_268386EE0;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_268386EE0()
{
  v21 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 288);
  v3 = sub_268129504(0, &qword_280253310, 0x277CD4220);
  *(v0 + 224) = v2;
  *(v0 + 248) = v3;
  v4 = v2;
  v5 = sub_2681DFC70(0, (v0 + 224));

  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  v6 = (v0 + 144);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
    sub_26812D9E0(v0 + 16, &qword_28024D460, &qword_2683D5050);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v7 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v7, qword_28027C958);
    v8 = v1;
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE78();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_49();
      v20 = OUTLINED_FUNCTION_53();
      *v11 = 136315138;
      *(v0 + 280) = v1;
      v12 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v13 = sub_2683CFAD8();
      v15 = sub_2681610A0(v13, v14, &v20);

      *(v11 + 4) = v15;
      OUTLINED_FUNCTION_16_9(&dword_2680EB000, v16, v17, "[CorrectingAddTasksFlow] failed create steering intent: %s");
      OUTLINED_FUNCTION_7_36();
      OUTLINED_FUNCTION_12_31();
    }

    else
    {
    }

    v5 = 0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
    sub_26812D9E0(v0 + 16, &qword_28024D460, &qword_2683D5050);
  }

  OUTLINED_FUNCTION_37();

  return v18(v5);
}

void sub_2683870F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  v1 = v0[39];
  sub_26812D9E0((v0 + 2), &qword_28024D460, &qword_2683D5050);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v2 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v2, qword_28027C958);
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_49();
    v7 = OUTLINED_FUNCTION_53();
    v16 = v7;
    *v6 = 136315138;
    v0[35] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v9 = sub_2683CFAD8();
    v11 = sub_2681610A0(v9, v10, &v16);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_13_4(&dword_2680EB000, v12, v13, "[CorrectingAddTasksFlow] failed create steering intent: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();

  __asm { BRAA            X2, X16 }
}

void sub_268387290()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v1 = v0[43];
  sub_26812D9E0((v0 + 2), &qword_28024D460, &qword_2683D5050);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v2 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v2, qword_28027C958);
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_49();
    v7 = OUTLINED_FUNCTION_53();
    v16 = v7;
    *v6 = 136315138;
    v0[35] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v9 = sub_2683CFAD8();
    v11 = sub_2681610A0(v9, v10, &v16);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_13_4(&dword_2680EB000, v12, v13, "[CorrectingAddTasksFlow] failed create steering intent: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_26838742C()
{
  OUTLINED_FUNCTION_14();
  v0[12] = v1;
  v0[13] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F90, &qword_2683F6110);
  OUTLINED_FUNCTION_23(v3);
  v0[14] = OUTLINED_FUNCTION_15_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F98, &qword_2683F6118);
  OUTLINED_FUNCTION_23(v4);
  v0[15] = OUTLINED_FUNCTION_15_1();
  v5 = type metadata accessor for IntentTriggerModel(0);
  v0[16] = v5;
  OUTLINED_FUNCTION_23(v5);
  v0[17] = OUTLINED_FUNCTION_15_1();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_268387500()
{
  OUTLINED_FUNCTION_7();
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_19_35(v1);

  return sub_2681DD9F8(v2, v3);
}

uint64_t sub_2683875A0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_40();

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2683876EC);
  }
}

uint64_t sub_2683876EC()
{
  v1 = *(v0 + 96);
  v2 = [*(v0 + 152) temporalEventTrigger];
  sub_26813CA00(v1, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FA0, &qword_2683F6120);
  v3 = type metadata accessor for AddTasksIntentWrapper(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v3);
    sub_26813CA00(v6, v0 + 56);
    sub_2683886B8(v6, type metadata accessor for AddTasksIntentWrapper);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v7);
    (*(v8 + 40))(v7, v8);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v4);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    if (__swift_getEnumTagSinglePayload(v5, 1, v4) != 1)
    {
      v9 = *(v0 + 136);
      v10 = *(v0 + 104);
      sub_2683883D4(*(v0 + 120), v9);
      v11 = [v10 temporalEventTrigger];
      v12 = sub_268388438(v11, v2, v9);

      OUTLINED_FUNCTION_1_63();
      sub_2683886B8(v9, v13);
      v2 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v3);
    sub_26812D9E0(v16, &qword_280253F90, &qword_2683F6110);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v14);
  }

  sub_26812D9E0(*(v0 + 120), &qword_280253F98, &qword_2683F6118);
LABEL_6:
  v17 = sub_268388364(*(v0 + 152));
  if (v17)
  {
    v18 = v17;
    if (sub_2683ABE58())
    {
      sub_2683ABE60();
      if ((v18 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D616C90](0, v18);
      }

      else
      {
        v19 = *(v18 + 32);
      }

      v20 = v19;
      v21 = v2;

      goto LABEL_14;
    }

    v21 = v2;
  }

  else
  {
    v21 = v2;
  }

  v20 = 0;
LABEL_14:
  v22 = *(v0 + 152);
  v23 = *(v0 + 104);
  v24 = [v22 priority];
  v25 = [v22 spatialEventTrigger];
  v26 = objc_allocWithZone(MEMORY[0x277CD4108]);
  v27 = v21;
  v28 = v23;
  v29 = sub_2683882E8(v23, v20, 0, v24, v25, v21);
  v30 = [v22 contactEventTrigger];
  [v29 setContactEventTrigger_];

  OUTLINED_FUNCTION_37();

  return v31(v29);
}

uint64_t sub_268387A84()
{

  v1 = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_correctionsExitValue;
  sub_2683CC768();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v0 + v1);
  sub_26812D9E0(v0 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask, &qword_28024D460, &qword_2683D5050);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator));

  return v0;
}

uint64_t sub_268387B30()
{
  sub_268387A84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CorrectingAddTasksFlow(uint64_t a1)
{
  result = qword_280253F78;
  if (!qword_280253F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268387BDC(uint64_t a1)
{
  result = sub_2683CC768();
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

uint64_t sub_268387CB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_taskParser);

  return v1;
}

uint64_t sub_268387CF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask;
  swift_beginAccess();
  sub_268320938(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_268387D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_correctionsExitValue;
  swift_beginAccess();
  v5 = sub_2683CC768();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_268387EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_268387F60;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268387F60()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v3 = *v0;
  OUTLINED_FUNCTION_26();
  *v4 = v3;

  OUTLINED_FUNCTION_37();

  return v5(v2);
}

uint64_t sub_268388070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26838810C;

  return sub_268385E8C();
}

uint64_t sub_26838810C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_26();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2683881F0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CorrectingAddTasksFlow(0);

  return sub_2683CBF88();
}

uint64_t sub_268388260(uint64_t a1)
{
  result = sub_2683882A4(&qword_28024F988, &unk_2683F60B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2683882A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CorrectingAddTasksFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2683882E8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = [v6 initWithTargetTask:a1 taskTitle:a2 status:a3 priority:a4 spatialEventTrigger:a5 temporalEventTrigger:a6];

  return v11;
}

uint64_t sub_268388364(void *a1)
{
  v1 = [a1 taskTitles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t sub_2683883D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentTriggerModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_268388438(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for IntentTriggerModel(0);
  v6 = OUTLINED_FUNCTION_23(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v9 = (v8 - v7);
  sub_268388658(a3, v8 - v7, type metadata accessor for IntentTriggerModel);
  if (!*v9)
  {
    goto LABEL_8;
  }

  if (sub_2683CEB58())
  {
LABEL_3:

    goto LABEL_4;
  }

  if (sub_2683CEB68())
  {

    if (!sub_2683CEB28())
    {
      OUTLINED_FUNCTION_1_63();
      sub_2683886B8(v9, v13);
      v14 = OUTLINED_FUNCTION_0_0();
      return sub_2681DB21C(v14, v15);
    }

    goto LABEL_3;
  }

LABEL_4:
  if (sub_2683CEB58())
  {

    if (sub_2683CEB68() || sub_2683CEB28())
    {

      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_63();
    sub_2683886B8(v9, v17);
    v18 = OUTLINED_FUNCTION_0_0();
    return sub_2681DB404(v18, v19);
  }

LABEL_8:
  OUTLINED_FUNCTION_1_63();
  sub_2683886B8(v9, v10);
  v11 = a2;
  return a2;
}

id sub_26838858C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for IntentTriggerTemporalModelNLv3(0);
  v6 = OUTLINED_FUNCTION_23(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  sub_268388658(a3, v8 - v7, type metadata accessor for IntentTriggerTemporalModelNLv3);
  if (sub_268385338())
  {
    OUTLINED_FUNCTION_5_51();
    v9 = OUTLINED_FUNCTION_0_0();
    return sub_2681DB21C(v9, v10);
  }

  else
  {
    v12 = sub_268385528();
    OUTLINED_FUNCTION_5_51();
    if ((v12 & 1) == 0)
    {
      v15 = a2;
      return a2;
    }

    v13 = OUTLINED_FUNCTION_0_0();
    return sub_2681DB404(v13, v14);
  }
}

uint64_t sub_268388658(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2683886B8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_54()
{

  return MEMORY[0x2821BB0A8](v1 + 232, sub_268388554, v0, v2);
}

uint64_t OUTLINED_FUNCTION_5_51()
{

  return sub_2683886B8(v0, type metadata accessor for IntentTriggerTemporalModelNLv3);
}

void OUTLINED_FUNCTION_7_36()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D617A40);
}

void OUTLINED_FUNCTION_31_16()
{
  v3 = *(v2 + 288);
  *v3 = v0;
  v3[1] = v1;
}

uint64_t OUTLINED_FUNCTION_34_18@<X0>(uint64_t a1@<X8>)
{

  return sub_2681340E8(v1 + a1, v4 + 80, v3, v2);
}

void OUTLINED_FUNCTION_35_18(uint64_t a1@<X8>)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  *(v2 + 144) = 10;

  sub_2681913CC();
}

uint64_t OUTLINED_FUNCTION_37_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_38_14()
{

  return sub_26812D9E0(v2 + 80, v1, v0);
}

uint64_t INTaskPriority.description.getter(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E752ELL;
    case 1:
      return 0x67616C46746F6E2ELL;
    case 2:
      return 0x64656767616C662ELL;
  }

  sub_2683D0178();

  v3 = sub_2683D0568();
  MEMORY[0x26D616690](v3);

  MEMORY[0x26D616690](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_2683889B8(uint64_t a1)
{
  v1 = sub_2683CF258();
  if (v2)
  {
    if (v1 == 0xD000000000000015 && v2 == 0x80000002683FCFF0)
    {

      return 1;
    }

    v4 = sub_2683D0598();

    if (v4)
    {

      return 1;
    }
  }

  v5 = sub_2683CF258();
  if (!v6)
  {

    return 2;
  }

  if (v5 == 0xD000000000000013 && v6 == 0x80000002683FA8D0)
  {

    return 0;
  }

  v8 = sub_2683D0598();

  result = 0;
  if ((v8 & 1) == 0)
  {
    return 2;
  }

  return result;
}

uint64_t sub_268388ADC(uint64_t a1, char a2)
{
  *(v2 + 96) = a2;
  *(v2 + 64) = a1;
  v3 = sub_2683CB668();
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268388BA0);
}

id sub_268388BA0()
{
  v1 = 0xD000000000000020;
  v2 = *(v0 + 96);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24));
  if (!v2)
  {
    v1 = 0xD000000000000024;
    v4 = "REMINDERS_ACTIVITY_NOTIFICATION_BODY";
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v4 = "NOTES_ACTIVITY_NOTIFICATION_BODY";
LABEL_5:
    v5 = (v4 - 32);
    goto LABEL_7;
  }

  v5 = "exit with complete value";
  v1 = 0xD000000000000022;
LABEL_7:
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  sub_2683CB628();
  *(v0 + 16) = sub_2683CB5A8();
  *(v0 + 24) = v9;
  *(v0 + 32) = 45;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 95;
  *(v0 + 56) = 0xE100000000000000;
  v24 = sub_26812A1AC();
  v23 = MEMORY[0x277D837D0];
  v10 = sub_2683CFFF8();
  v12 = v11;
  (*(v7 + 8))(v6, v8);

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v14 = result;
    v15 = v5 | 0x8000000000000000;
    v16 = type metadata accessor for StringLocalizer(0);
    v17 = sub_2681E59E0(v1, v5 | 0x8000000000000000, 0x617A696C61636F4CLL, 0xEB00000000656C62, *(v3 + *(v16 + 20)), v10, v12, v14);
    v19 = v18;

    if (v19)
    {

      v20 = *(v0 + 8);

      return v20(v17, v19);
    }

    else
    {
      sub_2681E6004();
      swift_allocError();
      *v21 = v1;
      v21[1] = v15;
      v21[2] = 0x617A696C61636F4CLL;
      v21[3] = 0xEB00000000656C62;
      v21[4] = v10;
      v21[5] = v12;
      swift_willThrow();

      v22 = *(v0 + 8);

      return v22();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268388E40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_268388E80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268388F00()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2683CC528();
  v1[5] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F28, &unk_2683E6AB0);
  v1[8] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26838901C()
{
  v63 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[3];
  v5 = sub_2683CF7E8();
  __swift_project_value_buffer(v5, qword_28027C958);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2683CF7C8();
  v8 = sub_2683CFE98();
  v9 = OUTLINED_FUNCTION_43(v8);
  v10 = v0[11];
  if (v9)
  {
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62[0] = v61;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2683CFAD8();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_2681610A0(v15, v17, v62);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v7, v2, "[CreateNote HandleIntentStrategy] Creating intent handled response for: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v19 = v0[8];
    v20 = v0[9];

    (*(v20 + 8))(v10, v19);
  }

  v21 = sub_2683CC818();
  v22 = [v21 createdNote];
  v0[12] = v22;

  if (!v22)
  {
    v41 = sub_2683CF7C8();
    v42 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_43(v42))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v43, v44, "[CreateNote HandleIntentStrategy] Created Note is nil in the intent response");
      OUTLINED_FUNCTION_38();
    }

    sub_26812C6B8();
    swift_allocError();
    *v45 = 0u;
    *(v45 + 16) = 0u;
    *(v45 + 32) = 4;
    swift_willThrow();
    OUTLINED_FUNCTION_57_8();

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X1, X16 }
  }

  if (*(v0[4] + 136))
  {
    v23 = sub_2683CC848();
    sub_2682176E4(v23);
  }

  sub_2682EBF74(v0[3]);
  sub_2683CC828();
  LOBYTE(v62[0]) = 1;
  v24 = sub_26812A998(v62);

  if (v24 & 1) != 0 && (__swift_project_boxed_opaque_existential_1((v0[4] + 96), *(v0[4] + 120)), OUTLINED_FUNCTION_74_0(), (sub_2683CC0B8()))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[13] = v25;
    *v25 = v26;
    v25[1] = sub_2683895A0;
    OUTLINED_FUNCTION_64();

    return sub_268389C28(v27, v28, v29);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[4] + 144), *(v0[4] + 168));
    v32 = OUTLINED_FUNCTION_74_0();
    if (v33(v32))
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[14] = v34;
      *v34 = v35;
      v34[1] = sub_268389724;
      OUTLINED_FUNCTION_64();

      return sub_26838B1E4(v36, v37, v38, v39);
    }

    else
    {
      v48 = sub_2683CC828();
      v49 = sub_2681E73A0(v48);

      v0[16] = sub_2683CC828();
      v0[17] = sub_2683CC848();
      if (v49)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_10_2();
        v0[18] = v50;
        *v50 = v51;
        OUTLINED_FUNCTION_27_18(v50);
        OUTLINED_FUNCTION_64();

        return sub_26838CA1C(v52, v53, v54, v55, v56);
      }

      else
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_10_2();
        v0[20] = v58;
        *v58 = v59;
        OUTLINED_FUNCTION_27_18(v58);
        OUTLINED_FUNCTION_64();

        return sub_26838D0CC();
      }
    }
  }
}

uint64_t sub_2683895A0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_268389684()
{
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_74_0();
  v2(v1);

  OUTLINED_FUNCTION_7_4();

  return v3();
}

uint64_t sub_268389724()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268389820()
{
  OUTLINED_FUNCTION_7();
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

uint64_t sub_268389958()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_268389A90()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_44_14();
  v0 = OUTLINED_FUNCTION_41_0();
  v1(v0);
  OUTLINED_FUNCTION_57_8();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268389B18()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_44_14();
  v0 = OUTLINED_FUNCTION_41_0();
  v1(v0);
  OUTLINED_FUNCTION_57_8();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268389BA0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_44_14();
  v0 = OUTLINED_FUNCTION_41_0();
  v1(v0);
  OUTLINED_FUNCTION_57_8();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268389C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[26] = type metadata accessor for Snippet(0);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v5 = sub_2683CC9A8();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v6 = sub_2683CC138();
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  v4[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  v4[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v4[40] = swift_task_alloc();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v4[41] = v7;
  v4[42] = *(v7 + 64);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v8 = sub_2683CB438();
  v4[51] = v8;
  v4[52] = *(v8 - 8);
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268389F78);
}

uint64_t sub_26838A7B0()
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

uint64_t sub_26838A89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v43 = v24[50];
  v25 = v24[35];
  v26 = v24[32];
  v28 = v24[30];
  v27 = v24[31];
  v29 = v24[29];

  sub_26814332C(v29);
  sub_26814332C(v28);
  v30 = OUTLINED_FUNCTION_32_3();
  v31(v30);
  v32 = OUTLINED_FUNCTION_74_0();
  v33(v32);
  OUTLINED_FUNCTION_23_10();
  sub_2681433DC(v43, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_1_64();
  sub_2681433DC(v29, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v26 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v43, a22, a23, a24);
}

uint64_t sub_26838AA64()
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

uint64_t sub_26838AB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_38_15();
  v29 = *(v25 + 224);

  sub_26814332C(v29);
  v30 = OUTLINED_FUNCTION_40_14();
  v31(v30);
  v32 = OUTLINED_FUNCTION_74_0();
  v33(v32);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_1_64();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26838ACE0()
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

uint64_t sub_26838ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_38_15();
  v29 = *(v25 + 216);

  sub_26814332C(v29);
  v30 = OUTLINED_FUNCTION_40_14();
  v31(v30);
  v32 = OUTLINED_FUNCTION_74_0();
  v33(v32);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_1_64();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26838AF5C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26838B040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v26 = v24[50];
  v27 = v24[32];
  v28 = v24[31];

  v29 = OUTLINED_FUNCTION_32_3();
  v30(v29);
  v31 = OUTLINED_FUNCTION_74_0();
  v32(v31);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_1_64();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v26, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26838B1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v5[27] = type metadata accessor for Snippet(0);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v6 = sub_2683CC9A8();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  v7 = sub_2683CC138();
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  v5[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  v5[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v5[41] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v5[42] = v8;
  v5[43] = *(v8 + 64);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26838B4D0);
}

uint64_t sub_26838B4D0()
{
  OUTLINED_FUNCTION_15();
  sub_2683CF138();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F28, &unk_2683E6AB0);
  v1 = sub_2683CC828();
  v2 = sub_26818F730(v1);
  v0[52] = v2;
  v3 = sub_2683CC848();
  v4 = [v3 groupName];

  if (v4)
  {
  }

  v5 = v4 != 0;
  v6 = v0[23];
  type metadata accessor for NotebookNoteConcept(0);
  v7 = sub_268397584(v6);
  v0[53] = v7;
  v8 = swift_task_alloc();
  v0[54] = v8;
  *v8 = v0;
  v8[1] = sub_26838B61C;

  return sub_26812B948(v2, v5, v7);
}

uint64_t sub_26838B61C()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 440) = v7;
  *(v3 + 448) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_40();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v10);
  }
}

uint64_t sub_26838BFB8()
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

uint64_t sub_26838C0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v40 = v22[51];
  v23 = v22[36];
  v24 = v22[33];
  v25 = v22[31];
  v26 = v22[30];

  sub_26814332C(v26);
  sub_26814332C(v25);
  v27 = OUTLINED_FUNCTION_32_3();
  v28(v27);
  v29 = OUTLINED_FUNCTION_74_0();
  v30(v29);
  OUTLINED_FUNCTION_23_10();
  sub_2681433DC(v40, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_2_61();
  sub_2681433DC(v26, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v40, a20, a21, a22);
}

uint64_t sub_26838C278()
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

uint64_t sub_26838C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_35_19();
  v26 = *(v23 + 232);

  sub_26814332C(v26);
  v27 = OUTLINED_FUNCTION_40_14();
  v28(v27);
  v29 = OUTLINED_FUNCTION_74_0();
  v30(v29);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_2_61();
  sub_2681433DC(v24 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26838C500()
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

uint64_t sub_26838C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_35_19();
  v26 = *(v23 + 224);

  sub_26814332C(v26);
  v27 = OUTLINED_FUNCTION_40_14();
  v28(v27);
  v29 = OUTLINED_FUNCTION_74_0();
  v30(v29);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_2_61();
  sub_2681433DC(v24 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26838C788()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26838C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v24 = *(v22 + 408);
  v25 = *(v22 + 264);

  v26 = OUTLINED_FUNCTION_32_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_74_0();
  v29(v28);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_2_61();
  sub_2681433DC(v25 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26838CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v6[18] = swift_task_alloc();
  v7 = sub_2683CC598();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26838CB1C);
}

uint64_t sub_26838CB1C()
{
  OUTLINED_FUNCTION_15();
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = sub_2683CF7E8();
  __swift_project_value_buffer(v1, qword_28027C958);
  v2 = sub_2683CF7C8();
  v3 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_43(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11_17(&dword_2680EB000, v4, v5, "[CreateNote HandleIntentStrategy] Creating response for  first party");
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 112);

  sub_268129504(0, &qword_280253340, 0x277D47600);
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D2250;
  *(inited + 32) = v6;
  v8 = v6;
  *(v0 + 184) = sub_26836A8AC(inited);
  v9 = sub_2683CF258();
  v11 = v10;
  if (v10)
  {
    v12 = v9;
    sub_2683CF138();
    v11 = sub_26818FE4C(v12, v11);
  }

  *(v0 + 192) = v11;
  v13 = [*(v0 + 120) groupName];
  v14 = v13;
  if (v13)
  {
  }

  v15 = v14 != 0;
  v16 = *(v0 + 112);
  type metadata accessor for NotebookNoteConcept(0);
  v17 = sub_268397584(v16);
  *(v0 + 200) = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 208) = v18;
  *v18 = v19;
  v18[1] = sub_26838CD38;
  v20 = *(v0 + 168);

  return sub_2683B6F78(v20, v11, v15, v17);
}

uint64_t sub_26838CD38()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

void sub_26838CE74()
{
  v1 = *(v0 + 184);
  v16 = *(v0 + 168);
  v17 = *(v0 + 160);
  v2 = *(v0 + 144);
  v18 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((*(v0 + 136) + 96), *(*(v0 + 136) + 120));
  sub_2683CC0A8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2683D2250;
  *(v5 + 32) = v1;
  v6 = sub_2683CC528();
  OUTLINED_FUNCTION_1();
  (*(v7 + 16))(v2, v3, v6);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_11_23(v8, v9, v10, v6);
  v11 = sub_2683CCC98();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v12 = MEMORY[0x277D5C1D8];
  v4[3] = v11;
  v4[4] = v12;
  __swift_allocate_boxed_opaque_existential_0(v4);
  v13 = v1;
  sub_2683CC328();

  sub_2681433DC(v0 + 56, &qword_28024D408, &qword_2683D2470);
  sub_2681433DC(v2, &qword_28024D400, &qword_2683D2460);
  (*(v17 + 8))(v16, v18);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26838D058()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26838D0CC()
{
  OUTLINED_FUNCTION_14();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  sub_2683CC138();
  v1[13] = swift_task_alloc();
  v7 = sub_2683CC9A8();
  v1[14] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[15] = v8;
  v1[16] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26838D1AC()
{
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = sub_2683CF7E8();
  __swift_project_value_buffer(v1, qword_28027C958);
  v2 = sub_2683CF7C8();
  v3 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_43(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11_17(&dword_2680EB000, v4, v5, "[CreateNote HandleIntentStrategy] Creating response for third party");
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 72);

  v7 = v6;

  OUTLINED_FUNCTION_41_0();
  v8 = sub_2681D2F90();
  v10 = v9;
  sub_268129504(0, &qword_28024D340, 0x277CD4058);

  OUTLINED_FUNCTION_24();
  v14 = sub_268175270(v11, v12, v13, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8, v10);
  v15 = [v14 _metadata];
  if (v15)
  {
    v16 = v15;
    [v15 setBackgroundLaunch_];
  }

  v17 = [v14 _metadata];

  if (v17)
  {
    sub_2683CF258();
    if (v18)
    {
      v19 = sub_2683CFA68();
    }

    else
    {
      v19 = 0;
    }

    [v17 setLaunchId_];
  }

  v20 = *(v0 + 96);
  v21 = *(v0 + 80);
  sub_268129504(0, &unk_28024F9B0, 0x277D473F0);
  v22 = sub_2683CFF28();

  v23 = sub_2683CFF78();
  v25 = v24;

  *(v0 + 136) = v25;
  sub_26813CA00(v20, v0 + 16);
  v26 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v27 = [v21 groupName];
  v28 = v27;
  if (v27)
  {
  }

  v29 = *v26;
  v30 = *(v0 + 72);

  v31 = swift_task_alloc();
  *(v0 + 144) = v31;
  *v31 = v0;
  v31[1] = sub_26838D4E0;
  v33 = *(v0 + 64);
  v32 = *(v0 + 72);

  return sub_26834FF28(v28 != 0, v29, v32, v33, v23, v25);
}

uint64_t sub_26838D4E0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v7 + 152) = v6;
  *(v7 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26838D5FC()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[12];
  v2 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2683CC108();
  *(swift_task_alloc() + 16) = v2;
  sub_2683CC8E8();

  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[21] = v5;
  *v5 = v6;
  v5[1] = sub_26838D718;
  v7 = v0[19];
  v8 = v0[16];
  v9 = v0[7];

  return MEMORY[0x2821BB480](v9, v7, v8, v3, v4);
}

uint64_t sub_26838D718()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26838D814()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26838D884()
{
  OUTLINED_FUNCTION_7();

  v1 = OUTLINED_FUNCTION_41_0();
  v2(v1);

  OUTLINED_FUNCTION_7_4();

  return v3();
}

uint64_t sub_26838D910()
{
  OUTLINED_FUNCTION_7();

  v1 = OUTLINED_FUNCTION_41_0();
  v2(v1);

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26838D9A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F28, &unk_2683E6AB0);
  sub_2683CC828();
  v11 = 1;
  v6 = sub_26812A998(&v11);

  if ((v6 & 1) == 0)
  {
    return static Snippet.createNote3p(note:record:)(a1, a2, a3);
  }

  v7 = sub_2683BA54C(a1);
  if (v8)
  {
    *a3 = v7;
    *(a3 + 8) = v8;
    type metadata accessor for Snippet(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_26812C6B8();
    swift_allocError();
    *v10 = 0xD000000000000017;
    *(v10 + 8) = 0x8000000268401B00;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 3;
    return swift_willThrow();
  }
}

uint64_t sub_26838DABC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_2683CC528();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_2683CC938();
}

uint64_t sub_26838DB94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_268388F00();
}

uint64_t sub_26838DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26813F058;

  return MEMORY[0x2821BBB48](a1, a2, a3, a4);
}

unint64_t sub_26838DD00()
{
  result = qword_280253FC8;
  if (!qword_280253FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253FC8);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;

  v10 = v0 + v8;
  v11 = type metadata accessor for Snippet(0);
  v12 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v12, v13, v11))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v19 + 8))(v10);
        v20 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_37;
      case 1u:
      case 9u:

        goto LABEL_37;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v58 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v59 = OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading(v59);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v111 + 8))(v1);
            break;
          case 1u:

            if (*(v1 + 96) != 255)
            {
              sub_26814304C(*(v1 + 80), *(v1 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v112 = *(v58 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v113 + 8))(v10 + v112);
        v105 = *(v58 + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_85;
      case 4u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v39 + 8))(v10);
        v40 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v40);

        OUTLINED_FUNCTION_11_5(v40[6]);

        OUTLINED_FUNCTION_11_5(v40[7]);

        v41 = v10 + v40[8];
        if (*(v41 + 24))
        {

          if (*(v41 + 96) != 255)
          {
            sub_26814304C(*(v41 + 80), *(v41 + 88));
          }
        }

        v42 = v40[9];
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v45 = *(v44 + 8);
        v7 = v44 + 8;
        v45(v10 + v42, v43);
        v46 = OUTLINED_FUNCTION_43_0(v40[10]);
        (v45)(v46);
        v47 = OUTLINED_FUNCTION_43_0(v40[11]);
        (v45)(v47);
        v48 = v10 + v40[12];
        v49 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v49))
        {

          v128 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v50 + 8))(v48 + v128);
          v45(v48 + *(v2 + 24), v43);
        }

        v51 = v40[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v52 + 8))(v10 + v51);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v53 = OUTLINED_FUNCTION_31_1();
        v54 = type metadata accessor for Snippet.Reminder.AppLink(v53);
        if (!OUTLINED_FUNCTION_16_4(v54))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v51, *(v51 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v116 + 8))(v51);
          }
        }

        goto LABEL_99;
      case 5u:

        if (*(v10 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v61 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_72;
      case 6u:
        v132 = v9;
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v80 + 8))(v10);
        v81 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v81);

        OUTLINED_FUNCTION_11_5(v81[6]);

        OUTLINED_FUNCTION_11_5(v81[7]);

        v82 = v10 + v81[8];
        if (*(v82 + 24))
        {

          if (*(v82 + 96) != 255)
          {
            sub_26814304C(*(v82 + 80), *(v82 + 88));
          }
        }

        v83 = v81[9];
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v86 = *(v85 + 8);
        v7 = v85 + 8;
        v86(v10 + v83, v84);
        v87 = OUTLINED_FUNCTION_43_0(v81[10]);
        (v86)(v87);
        v88 = OUTLINED_FUNCTION_43_0(v81[11]);
        (v86)(v88);
        v89 = v10 + v81[12];
        v90 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v90))
        {

          v129 = *(v2 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          (*(v91 + 8))(v89 + v129);
          v86(v89 + *(v2 + 24), v84);
        }

        v92 = v81[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v93 + 8))(v10 + v92);
        if (OUTLINED_FUNCTION_39_0())
        {
        }

        v94 = OUTLINED_FUNCTION_31_1();
        v95 = type metadata accessor for Snippet.Reminder.AppLink(v94);
        if (!OUTLINED_FUNCTION_16_4(v95))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v92, *(v92 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v121 + 8))(v92);
          }
        }

        v122 = v10 + *(type metadata accessor for Snippet.SetTaskAttribute3p(0) + 20);

        v123 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v124 + 8))(v122 + v123);
LABEL_99:
        v9 = v132;
        break;
      case 7u:
LABEL_37:

        break;
      case 8u:

        v61 = *(type metadata accessor for Snippet.CreateNote3p(0) + 20);
        goto LABEL_72;
      case 0xAu:
        v100 = type metadata accessor for Snippet.SectionHeading(0);
        v101 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v101, v102, v100))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v126 + 8))(v10);
              break;
            case 1u:

              if (*(v10 + 96) != 255)
              {
                sub_26814304C(*(v10 + 80), *(v10 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v103 = type metadata accessor for Snippet.SearchResult3p(0);

        v61 = *(v103 + 32);
LABEL_72:
        v10 += v61;

        v105 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
LABEL_85:
        OUTLINED_FUNCTION_0_9();
        (*(v114 + 8))(v10 + v105);
        break;
      default:
        break;
    }
  }

  v14 = v0 + v9;
  v15 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v15, v16, v11))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9();
        (*(v17 + 8))(v0 + v9);
        v18 = type metadata accessor for Snippet.AppPunchout(0);
        OUTLINED_FUNCTION_8_5(v18);
        goto LABEL_87;
      case 1u:
      case 9u:

        goto LABEL_87;
      case 2u:

        OUTLINED_FUNCTION_38_0();
        if (!v55)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:

        v56 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v57 = v14 + v56[5];
        type metadata accessor for Snippet.SectionHeading(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            sub_2683CB528();
            OUTLINED_FUNCTION_0_9();
            (*(v106 + 8))(v57);
            break;
          case 1u:

            if (*(v57 + 96) != 255)
            {
              sub_26814304C(*(v57 + 80), *(v57 + 88));
            }

            break;
          case 2u:
          case 3u:

            break;
          default:
            break;
        }

        v107 = v56[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9();
        (*(v108 + 8))(v14 + v107);
        v109 = v56[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9();
        (*(v110 + 8))(v14 + v109);
        break;
      case 4u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v21 + 8))(v0 + v9);
        v22 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v22);

        OUTLINED_FUNCTION_11_5(v22[6]);

        OUTLINED_FUNCTION_11_5(v22[7]);

        v23 = v14 + v22[8];
        if (*(v23 + 24))
        {

          if (*(v23 + 96) != 255)
          {
            sub_26814304C(*(v23 + 80), *(v23 + 88));
          }
        }

        v24 = v22[9];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v27 = *(v26 + 8);
        v27(v14 + v24, v25);
        v28 = OUTLINED_FUNCTION_44_0(v22[10]);
        (v27)(v28);
        v29 = OUTLINED_FUNCTION_44_0(v22[11]);
        (v27)(v29);
        v30 = OUTLINED_FUNCTION_31_1();
        v31 = type metadata accessor for Snippet.Reminder.LocationTrigger(v30);
        if (!OUTLINED_FUNCTION_16_4(v31))
        {

          v130 = v7;
          v32 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v34 = v24 + v32;
          v7 = v130;
          (*(v33 + 8))(v34);
          v27(v24 + *(v9 + 24), v25);
        }

        v35 = v22[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v36 + 8))(v14 + v35);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v37 = v14 + v22[16];
        v38 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v38))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v37, *(v37 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v115 + 8))(v37);
          }
        }

        goto LABEL_87;
      case 5u:

        if (*(v14 + 32))
        {

          OUTLINED_FUNCTION_38_0();
          if (!v55)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v60 = *(type metadata accessor for Snippet.AddTasks3p(0) + 24);
        goto LABEL_93;
      case 6u:
        sub_2683CB598();
        OUTLINED_FUNCTION_0_9();
        (*(v62 + 8))(v0 + v9);
        v63 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v63);

        OUTLINED_FUNCTION_11_5(v63[6]);

        OUTLINED_FUNCTION_11_5(v63[7]);

        v64 = v14 + v63[8];
        if (*(v64 + 24))
        {

          if (*(v64 + 96) != 255)
          {
            sub_26814304C(*(v64 + 80), *(v64 + 88));
          }
        }

        v65 = v63[9];
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1();
        v68 = *(v67 + 8);
        v68(v14 + v65, v66);
        v69 = OUTLINED_FUNCTION_44_0(v63[10]);
        (v68)(v69);
        v70 = OUTLINED_FUNCTION_44_0(v63[11]);
        (v68)(v70);
        v71 = OUTLINED_FUNCTION_31_1();
        v72 = type metadata accessor for Snippet.Reminder.LocationTrigger(v71);
        if (!OUTLINED_FUNCTION_16_4(v72))
        {

          v131 = v7;
          v73 = *(v9 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9();
          v75 = v65 + v73;
          v7 = v131;
          (*(v74 + 8))(v75);
          v68(v65 + *(v9 + 24), v66);
        }

        v76 = v63[13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9();
        (*(v77 + 8))(v14 + v76);
        if (OUTLINED_FUNCTION_42_0())
        {
        }

        v78 = v14 + v63[16];
        v79 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v79))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v78, *(v78 + 8));
          }

          else
          {
            sub_2683CB438();
            OUTLINED_FUNCTION_0_9();
            (*(v117 + 8))(v78);
          }
        }

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p(0);
        goto LABEL_92;
      case 7u:
LABEL_87:

        break;
      case 8u:

        Note3p = type metadata accessor for Snippet.CreateNote3p(0);
LABEL_92:
        v60 = *(Note3p + 20);
        goto LABEL_93;
      case 0xAu:
        v96 = type metadata accessor for Snippet.SectionHeading(0);
        v97 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v97, v98, v96))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              sub_2683CB528();
              OUTLINED_FUNCTION_0_9();
              (*(v125 + 8))(v0 + v9);
              break;
            case 1u:

              if (*(v14 + 96) != 255)
              {
                sub_26814304C(*(v14 + 80), *(v14 + 88));
              }

              break;
            case 2u:
            case 3u:

              break;
            default:
              break;
          }
        }

        v99 = type metadata accessor for Snippet.SearchResult3p(0);

        v60 = *(v99 + 32);
LABEL_93:
        v118 = v14 + v60;

        v119 = *(type metadata accessor for Snippet.Interaction(0) + 20);
        sub_2683CB828();
        OUTLINED_FUNCTION_0_9();
        (*(v120 + 8))(v118 + v119);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}

uint64_t OUTLINED_FUNCTION_24_21()
{

  return sub_2681433DC(v0, v1, v2);
}

void OUTLINED_FUNCTION_44_14()
{
  v2 = *(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_53_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(result + 104) = 2;
  *(result + 112) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(result + 56) = a10;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_8()
{
}

uint64_t sub_26838F0B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = result;
  v5 = 0;
  v18 = *(a3 + 16);
  v6 = (a3 + 56);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v18 == v5)
    {

      return v7;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v6 - 3);
    v8 = *(v6 - 2);
    v10 = *(v6 - 1);
    v11 = *v6;
    v19[0] = v9;
    v19[1] = v8;
    v19[2] = v10;
    v19[3] = v11;

    v12 = v17(v19);
    if (v3)
    {

      return v7;
    }

    if (v12)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v20 = v7;
      if ((result & 1) == 0)
      {
        result = sub_268390920(0, *(v7 + 16) + 1, 1);
        v7 = v20;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      v3 = 0;
      if (v14 >= v13 >> 1)
      {
        result = sub_268390920((v13 > 1), v14 + 1, 1);
        v3 = 0;
        v7 = v20;
      }

      *(v7 + 16) = v14 + 1;
      v15 = (v7 + 32 * v14);
      v15[4] = v9;
      v15[5] = v8;
      v15[6] = v10;
      v15[7] = v11;
      v4 = a3;
    }

    else
    {

      v3 = 0;
    }

    v6 += 4;
    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_26838F274(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  v12 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_13;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    v9 = *(a3 + v6 + 32);
    v13 = v9;
    result = v5(&v13);
    if (v3)
    {

LABEL_13:

      return v8;
    }

    if (result)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v14 = v8;
      if ((result & 1) == 0)
      {
        result = sub_268390BD0(0, *(v8 + 16) + 1, 1);
        v8 = v14;
      }

      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_268390BD0((v10 > 1), v11 + 1, 1);
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      *(v8 + v11 + 32) = v9;
      v5 = v12;
    }

    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_26838F3A8(uint64_t (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x277D84F90];
  v14 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_2681EFE4C(v8, __src);
    v10 = v5(__src);
    if (v3)
    {
      sub_2681EFEA8(__src);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      memcpy(__dst, __src, sizeof(__dst));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268390C10(0, *(v9 + 16) + 1, 1);
        v9 = v17;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_268390C10((v12 > 1), v13 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v13 + 1;
      result = memcpy((v9 + 168 * v13 + 32), __dst, 0xA8uLL);
      v5 = v14;
    }

    else
    {
      result = sub_2681EFEA8(__src);
    }

    v8 += 168;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_26838F518@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for NotebookSuggestion.SignalDefinition(0) + 20);
  v4 = sub_2683CF518();

  return __swift_storeEnumTagSinglePayload(a2 + v3, 1, 1, v4);
}

uint64_t sub_26838F570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FE0, &qword_2683F63B0);
  MEMORY[0x28223BE20](v8 - 8);
  swift_bridgeObjectRetain_n();
  sub_2683CF508();
  sub_26813CA00(a3, v12);
  sub_2683CF4B8();
  swift_allocObject();
  v9 = sub_2683CF4A8();
  a4[5] = &type metadata for TrueResolver;
  v10 = sub_268391F84();
  a4[2] = a1;
  a4[3] = a2;
  *a4 = a1;
  a4[1] = a2;
  a4[6] = v10;
  a4[7] = v9;
  return sub_268128148(a3, (a4 + 8));
}

uint64_t sub_26838F684(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26838F698()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = [v2 targetTaskList];
    v5 = *(v0 + 24);
    if (v4)
    {
      v6 = v4;
      v7 = *(v0 + 16);
      v8 = [v4 title];

      v9 = [v8 description];
      v10 = sub_2683CFA78();
      v12 = v11;

      v7[3] = MEMORY[0x277D837D0];
      *v7 = v10;
      v7[1] = v12;
      v13 = MEMORY[0x277D60C38];
      goto LABEL_6;
    }
  }

  v7 = *(v0 + 16);
  v13 = MEMORY[0x277D60C40];
LABEL_6:
  v14 = *v13;
  sub_2683CF448();
  OUTLINED_FUNCTION_1();
  (*(v15 + 104))(v7, v14);
  OUTLINED_FUNCTION_7_4();

  return v16();
}

uint64_t sub_26838F808(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26838F81C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = [v2 targetTaskList];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 tasks];

      sub_268186108();
      v7 = sub_2683CFCA8();

      if (sub_2683ABE58())
      {
        sub_2683ABE60();
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x26D616C90](0, v7);
        }

        else
        {
          v8 = *(v7 + 32);
        }

        v9 = v8;
        v10 = *(v0 + 16);
        v11 = *(v0 + 24);

        v12 = [v9 title];

        v13 = [v12 description];
        v14 = sub_2683CFA78();
        v16 = v15;

        v10[3] = MEMORY[0x277D837D0];
        *v10 = v14;
        v10[1] = v16;
        v17 = MEMORY[0x277D60C38];
        goto LABEL_11;
      }

      v18 = *(v0 + 24);
    }

    else
    {
      v18 = *(v0 + 24);
    }
  }

  v10 = *(v0 + 16);
  v17 = MEMORY[0x277D60C40];
LABEL_11:
  v19 = *v17;
  sub_2683CF448();
  OUTLINED_FUNCTION_1();
  (*(v20 + 104))(v10, v19);
  OUTLINED_FUNCTION_7_4();

  return v21();
}

uint64_t sub_26838FA20(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2683CF408();
  v2[4] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v2[5] = v4;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26838FAD8);
}

uint64_t sub_26838FAD8()
{
  v1 = OUTLINED_FUNCTION_13_38();
  v2(v1);
  sub_2682DFCE0();
  *(v0 + 24) = MEMORY[0x277D839B0];
  *v0 = v7;
  v3 = *MEMORY[0x277D60C38];
  sub_2683CF448();
  OUTLINED_FUNCTION_1();
  (*(v4 + 104))(v0, v3);

  OUTLINED_FUNCTION_7_4();

  return v5();
}

uint64_t sub_26838FBAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2683CF408();
  v2[4] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v2[5] = v4;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26838FC64);
}

uint64_t sub_26838FC64()
{
  v1 = OUTLINED_FUNCTION_13_38();
  v2(v1);
  sub_2682DFCE0();
  *(v0 + 24) = MEMORY[0x277D839B0];
  *v0 = v7;
  v3 = *MEMORY[0x277D60C38];
  sub_2683CF448();
  OUTLINED_FUNCTION_1();
  (*(v4 + 104))(v0, v3);

  OUTLINED_FUNCTION_7_4();

  return v5();
}

uint64_t sub_26838FD38(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FD0, &qword_2683F6390);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - v7;
  sub_2681EBBD8();
  v10 = v9;
  sub_2681EC754();
  v31[0] = v10;
  sub_2682C0648(v11);
  v30[2] = a2;
  v12 = sub_26838F3A8(sub_2683901D4, v30, v31[0]);
  sub_2682B2D1C(v12, v31);

  if (v31[1])
  {
    memcpy(v32, v31, 0xA8uLL);
    v13 = v32[20];
    *v8 = v32[19];
    *(v8 + 1) = v13;
    v14 = *MEMORY[0x277D61238];
    v15 = sub_2683CF528();
    OUTLINED_FUNCTION_1();
    (*(v16 + 104))(v8, v14, v15);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v15);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);

    sub_2683CF538();
    return sub_2681EFEA8(v32);
  }

  else
  {
    sub_2683901F4(v31);
    if (qword_28024CC50 != -1)
    {
      swift_once();
    }

    v18 = sub_2683CF7E8();
    __swift_project_value_buffer(v18, qword_28027CE90);
    sub_26813CA00(a2, v32);
    v19 = sub_2683CF7C8();
    v20 = sub_2683CFE78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v21 = 136315138;
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      v23 = sub_2683CF488();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v32);
      v26 = sub_2681610A0(v23, v25, v31);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2680EB000, v19, v20, "[NotebookSuggestionsAssetProvider] Cannot get matching NotebookSuggestion for candidate '%s', default to Siri icon", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26D617A40](v22, -1, -1);
      MEMORY[0x26D617A40](v21, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    strcpy(v8, "com.apple.siri");
    v8[15] = -18;
    v27 = *MEMORY[0x277D61238];
    v28 = sub_2683CF528();
    OUTLINED_FUNCTION_1();
    (*(v29 + 104))(v8, v27, v28);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v28);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v28);
    return sub_2683CF538();
  }
}

uint64_t sub_2683900FC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v2 == sub_2683CF488() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_2683D0598();
  }

  return v6 & 1;
}

uint64_t sub_2683901F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FD8, &unk_2683F6398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_26839025C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_73(a3, result);
  }

  return result;
}

char *sub_2683902D8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_73(a3, result);
  }

  return result;
}

char *sub_268390360(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_73(a3, result);
  }

  return result;
}

void sub_2683903B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16_32();
  if (v8 && (a4(0), OUTLINED_FUNCTION_1(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_2_62();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_2_62();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_26839047C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_73(a3, result);
  }

  return result;
}

char *sub_2683904A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[168 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_73(a3, result);
  }

  return result;
}

void sub_2683904E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_16_32();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_1(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_2_62();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_2_62();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_268390600(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268390C30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_268390728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_36();
  sub_268390D38(v4, v5, v6, v7, v8, v9, v10, type metadata accessor for Snippet.Reminder);
  *v3 = v11;
}

char *sub_268390808(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268390EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268390828(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268390FF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390888(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268391290(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268390900(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268391398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390920(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2683914C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268390940(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2683915D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390A50(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268391848(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268390AB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268391A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390BD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268391C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390BF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268391D64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390C10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268391E6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390C30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268390D38(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_44();
    if (v14 != v15)
    {
      OUTLINED_FUNCTION_15_24();
      if (v14)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_55();
    }
  }

  OUTLINED_FUNCTION_15_37();
  if (v14 ^ v15 | v29)
  {
    v23 = v8;
  }

  else
  {
    v23 = v22;
  }

  if (!v23)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19_36(v16, v17, v18, v19, v20, v21);
  v24 = a7(0);
  OUTLINED_FUNCTION_3_1(v24);
  v26 = *(v25 + 72);
  v27 = OUTLINED_FUNCTION_12_33();
  v28 = _swift_stdlib_malloc_size_0(v27);
  if (!v26)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28 - v9 == 0x8000000000000000 && v26 == -1;
  if (v29)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_11_44(v28 - v9);
LABEL_17:
  v30 = *(a7(0) - 8);
  if (a1)
  {
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    sub_2683903B4(a4 + v31, v8, v27 + v31, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_36();
  }
}

char *sub_268390EE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FF8, &qword_2683F63D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[104 * v8] <= v12)
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_268390FF8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254000, &unk_2683F63E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[14 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB30, &unk_2683D4240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268391130()
{
  OUTLINED_FUNCTION_8_41();
  if (v6)
  {
    OUTLINED_FUNCTION_1_44();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_24();
      if (v7)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_55();
    }
  }

  OUTLINED_FUNCTION_15_37();
  if (v7 ^ v8 | v24)
  {
    v16 = v4;
  }

  else
  {
    v16 = v15;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19_36(v9, v10, v11, v12, v13, v14);
  v17 = OUTLINED_FUNCTION_9_39();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_3_1(v19);
  v21 = *(v20 + 72);
  v22 = OUTLINED_FUNCTION_12_33();
  v23 = _swift_stdlib_malloc_size_0(v22);
  if (!v21)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23 - v5 == 0x8000000000000000 && v21 == -1;
  if (v24)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_11_44(v23 - v5);
LABEL_17:
  v25 = OUTLINED_FUNCTION_9_39();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v25, v26) - 8);
  if (v3)
  {
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    sub_2683904E0(v0 + v28, v4, v22 + v28, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_36();
  }
}

char *sub_268391290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E20, &qword_2683E6580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_268391398(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DD0, &qword_2683E6310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515E8, &unk_2683E6530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2683914C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB30, &unk_2683D92F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2683915D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254088, &qword_2683F6638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253CF0, &unk_2683F6640);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268391724(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_44();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_24();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_55();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E30, &unk_2683F6600);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_0(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 112);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[14 * v9 + 4] <= v11 + 4)
    {
      memmove(v11 + 4, a4 + 4, 112 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251640, &qword_2683E3D80);
    swift_arrayInitWithCopy();
  }
}

char *sub_268391848(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254078, &qword_2683F6618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268391950()
{
  OUTLINED_FUNCTION_8_41();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_15_24();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_55();
    }
  }

  OUTLINED_FUNCTION_15_37();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_19_36(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_0(v15);
    OUTLINED_FUNCTION_11_44(v16 - 32);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v15 != v0 || &v0[40 * v2 + 32] <= v15 + 32)
    {
      v18 = OUTLINED_FUNCTION_44();
      memmove(v18, v19, v20);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_44();
    swift_arrayInitWithCopy();
  }
}

void *sub_268391A48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515D0, &unk_2683E3D00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268391B78()
{
  OUTLINED_FUNCTION_8_41();
  if (v3)
  {
    OUTLINED_FUNCTION_1_44();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_15_24();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_55();
    }
  }

  OUTLINED_FUNCTION_15_37();
  if (v4 ^ v5 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_19_36(v6, v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_0(v15);
    v15[2] = v2;
    v15[3] = 2 * ((v16 - 32) / 8);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v15 != v0 || &v0[v2 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_44();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_9_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_44();
    swift_arrayInitWithCopy();
  }
}

char *sub_268391C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254060, &unk_2683F65E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_268391D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254030, &unk_2683F6430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_268391E6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F200, &qword_2683E64F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[168 * v8] <= v12)
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_268391F84()
{
  result = qword_280253FE8;
  if (!qword_280253FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253FE8);
  }

  return result;
}

uint64_t type metadata accessor for NotebookSuggestion.SignalDefinition(uint64_t a1)
{
  result = qword_280254040;
  if (!qword_280254040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26839204C(uint64_t a1)
{
  sub_268392130(319, &qword_280254050, MEMORY[0x277D612D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_268392130(319, &qword_280254058, MEMORY[0x277D61068], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268392130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26839219C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2683921DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268392244(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_268392284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_33()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_36()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_19_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t sub_268392410()
{
  v0 = sub_2683CF7E8();
  __swift_allocate_value_buffer(v0, qword_28027CE90);
  __swift_project_value_buffer(v0, qword_28027CE90);
  return sub_2683CF7D8();
}

uint64_t sub_268392494@<X0>(uint64_t *a2@<X8>)
{
  sub_2683CD6F8();
  v3 = v14;
  if (!v14)
  {
    v11 = 0;
    v5 = 0;
    v4 = 0;
    goto LABEL_17;
  }

  v4 = sub_2683CD7C8();

  v5 = sub_2683CD7D8();

  if (!v5)
  {
LABEL_15:
    v11 = sub_2683CD4E8();

LABEL_17:

    *a2 = v3;
    a2[1] = v5;
    a2[2] = v4;
    a2[3] = 0;
    a2[4] = v11;
    return result;
  }

  swift_getKeyPath();
  v12 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  result = sub_2683ABE58();
  v7 = result;
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      v5 = v12;
      goto LABEL_15;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }
    }

    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v8;
    if (v13)
    {
      MEMORY[0x26D616770](result);
      v10 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v10);
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v12 = v15;
      v8 = v9;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_26839268C@<X0>(void *a2@<X8>)
{
  sub_2683CDDD8();
  v3 = v18;
  sub_2683CDDE8();
  v4 = v18;
  if (v18 && (v5 = sub_2683CD4E8()) != 0)
  {
    v6 = v5;
    v16 = v18;
  }

  else
  {
    if (!v18)
    {

      v14 = 0;
      v10 = 0;
LABEL_24:
      *a2 = v3;
      a2[1] = v4;
      a2[2] = 0;
      a2[3] = v14;
      a2[4] = 0;
      a2[5] = v10;
      return result;
    }

    v16 = v18;
    v6 = sub_2683CD4E8();
  }

  v17 = v6;

  v7 = sub_268161E50();
  swift_getKeyPath();
  v8 = sub_2683ABE58();
  v9 = v7 & 0xC000000000000001;
  v10 = v7 & 0xFFFFFFFFFFFFFF8;
  swift_retain_n();
  v11 = 0;
  while (1)
  {
    if (v8 == v11)
    {
      goto LABEL_17;
    }

    if (v9)
    {
      MEMORY[0x26D616C90](v11, v7);
    }

    else
    {
      if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v12 = sub_2683CD7C8();

    if (v12)
    {
      break;
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_26;
    }
  }

  v8 = v11;
LABEL_17:

  v10 = v17;
  if (v8 == sub_268394E6C())
  {

    v14 = 0;
LABEL_22:

    v4 = v16;
    v3 = v18;
    goto LABEL_24;
  }

  sub_2683ABE60();
  if (!v9)
  {

    goto LABEL_21;
  }

LABEL_27:
  MEMORY[0x26D616C90](v8, v7);
LABEL_21:

  v14 = sub_2683CD7C8();

  if (v14)
  {
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_268392938@<X0>(void *a2@<X8>)
{
  sub_2683CD6F8();
  if (v5)
  {

    v3 = sub_2683CD4E8();
  }

  else
  {
    v3 = 0;
  }

  *a2 = v5;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v3;
  return result;
}

uint64_t sub_2683929B4@<X0>(uint64_t *a1@<X8>)
{

  return sub_2681C326C(v2, 0, a1);
}

uint64_t sub_2683929F4()
{
  v1 = *(v0 + 16);
  if (sub_2683970D4(0, v1))
  {
    return 2;
  }

  if (sub_2683970D4(1, v1))
  {
    return 2;
  }

  return 0;
}

uint64_t sub_268392A44()
{
  v1 = sub_2683CDB98();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  MEMORY[0x28223BE20](v44);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v32 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = sub_268393A2C();
  v23 = v15;
  if (!v15)
  {
LABEL_21:
    sub_268393BA0(v15, v16, v17, v18, v19, v20, v21, v22, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    return (v23 | v31) & 1;
  }

  v33 = v0;
  result = sub_2683ABE58();
  v25 = 0;
  v42 = v23 & 0xC000000000000001;
  v43 = result;
  v45 = v23;
  v41 = v23 & 0xFFFFFFFFFFFFFF8;
  HIDWORD(v40) = *MEMORY[0x277D5EE50];
  v34 = (v2 + 32);
  v38 = (v2 + 8);
  v39 = (v2 + 104);
  v26 = &qword_2683F6940;
  v37 = v14;
  while (1)
  {
    LOBYTE(v23) = v43 != v25;
    if (v43 == v25)
    {
      goto LABEL_20;
    }

    if (v42)
    {
      result = MEMORY[0x26D616C90](v25, v45);
    }

    else
    {
      if (v25 >= *(v41 + 16))
      {
        goto LABEL_23;
      }
    }

    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (sub_2683CD4F8())
    {
      sub_2683CDB88();
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v1);
    }

    (*v39)(v12, HIDWORD(v40), v1);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v1);
    v27 = *(v44 + 48);
    sub_26822A08C(v14, v5);
    sub_26822A08C(v12, &v5[v27]);
    if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
    {

      sub_26812D9E0(v12, &qword_28024FD48, v26);
      sub_26812D9E0(v14, &qword_28024FD48, v26);
      if (__swift_getEnumTagSinglePayload(&v5[v27], 1, v1) == 1)
      {
        sub_26812D9E0(v5, &qword_28024FD48, &qword_2683F6940);
LABEL_20:

        goto LABEL_21;
      }

      goto LABEL_16;
    }

    sub_26822A08C(v5, v9);
    if (__swift_getEnumTagSinglePayload(&v5[v27], 1, v1) == 1)
    {

      sub_26812D9E0(v12, &qword_28024FD48, v26);
      sub_26812D9E0(v14, &qword_28024FD48, v26);
      (*v38)(v9, v1);
LABEL_16:
      result = sub_26812D9E0(v5, &qword_28024FD40, &unk_2683DE830);
      goto LABEL_18;
    }

    v28 = v26;
    v29 = v35;
    (*v34)(v35, &v5[v27], v1);
    sub_26822A0FC();
    HIDWORD(v36) = sub_2683CFA58();

    v30 = *v38;
    (*v38)(v29, v1);
    sub_26812D9E0(v12, &qword_28024FD48, v28);
    sub_26812D9E0(v37, &qword_28024FD48, v28);
    v30(v9, v1);
    v26 = v28;
    v14 = v37;
    result = sub_26812D9E0(v5, &qword_28024FD48, v26);
    if ((v36 & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

LABEL_18:
    ++v25;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_268392F2C()
{
  v1 = sub_2683CDB98();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  MEMORY[0x28223BE20](v38);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v26 = v0;
  v15 = *(v0 + 24);
  if (v15)
  {
    result = sub_2683ABE58();
    v17 = 0;
    v36 = v15 & 0xC000000000000001;
    v37 = result;
    v35 = v15 & 0xFFFFFFFFFFFFFF8;
    v34 = *MEMORY[0x277D5EE50];
    v32 = v15;
    v33 = (v2 + 104);
    v27 = (v2 + 32);
    v30 = v14;
    v31 = (v2 + 8);
    v18 = &qword_2683F6940;
    while (1)
    {
      v19 = v37 != v17;
      if (v37 == v17)
      {
        goto LABEL_21;
      }

      if (v36)
      {
        result = MEMORY[0x26D616C90](v17, v15);
      }

      else
      {
        if (v17 >= *(v35 + 16))
        {
          goto LABEL_23;
        }
      }

      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      if (sub_2683CD4F8())
      {
        sub_2683CDB88();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v14, 1, 1, v1);
      }

      (*v33)(v12, v34, v1);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v1);
      v20 = *(v38 + 48);
      sub_26822A08C(v14, v5);
      sub_26822A08C(v12, &v5[v20]);
      if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
      {
        break;
      }

      sub_26822A08C(v5, v9);
      if (__swift_getEnumTagSinglePayload(&v5[v20], 1, v1) == 1)
      {

        sub_26812D9E0(v12, &qword_28024FD48, v18);
        sub_26812D9E0(v14, &qword_28024FD48, v18);
        (*v31)(v9, v1);
LABEL_16:
        result = sub_26812D9E0(v5, &qword_28024FD40, &unk_2683DE830);
        goto LABEL_18;
      }

      v21 = v18;
      v22 = v28;
      (*v27)(v28, &v5[v20], v1);
      sub_26822A0FC();
      v29 = sub_2683CFA58();

      v23 = *v31;
      (*v31)(v22, v1);
      sub_26812D9E0(v12, &qword_28024FD48, v21);
      sub_26812D9E0(v30, &qword_28024FD48, v21);
      v23(v9, v1);
      v18 = v21;
      v14 = v30;
      result = sub_26812D9E0(v5, &qword_28024FD48, v18);
      if (v29)
      {
        goto LABEL_21;
      }

LABEL_18:
      ++v17;
      v15 = v32;
    }

    sub_26812D9E0(v12, &qword_28024FD48, v18);
    sub_26812D9E0(v14, &qword_28024FD48, v18);
    if (__swift_getEnumTagSinglePayload(&v5[v20], 1, v1) == 1)
    {
      sub_26812D9E0(v5, &qword_28024FD48, &qword_2683F6940);
      v19 = 1;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v19 = 0;
LABEL_21:
  sub_268394A28();
  return (v19 | v24) & 1;
}

uint64_t sub_268393410()
{
  v1 = sub_2683CDB98();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  MEMORY[0x28223BE20](v38);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v26 = v0;
  v15 = *(v0 + 32);
  if (v15)
  {
    result = sub_2683ABE58();
    v17 = 0;
    v36 = v15 & 0xC000000000000001;
    v37 = result;
    v35 = v15 & 0xFFFFFFFFFFFFFF8;
    v34 = *MEMORY[0x277D5EE50];
    v32 = v15;
    v33 = (v2 + 104);
    v27 = (v2 + 32);
    v30 = v14;
    v31 = (v2 + 8);
    v18 = &qword_2683F6940;
    while (1)
    {
      v19 = v37 != v17;
      if (v37 == v17)
      {
        goto LABEL_21;
      }

      if (v36)
      {
        result = MEMORY[0x26D616C90](v17, v15);
      }

      else
      {
        if (v17 >= *(v35 + 16))
        {
          goto LABEL_23;
        }
      }

      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      if (sub_2683CD4F8())
      {
        sub_2683CDB88();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v14, 1, 1, v1);
      }

      (*v33)(v12, v34, v1);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v1);
      v20 = *(v38 + 48);
      sub_26822A08C(v14, v5);
      sub_26822A08C(v12, &v5[v20]);
      if (__swift_getEnumTagSinglePayload(v5, 1, v1) == 1)
      {
        break;
      }

      sub_26822A08C(v5, v9);
      if (__swift_getEnumTagSinglePayload(&v5[v20], 1, v1) == 1)
      {

        sub_26812D9E0(v12, &qword_28024FD48, v18);
        sub_26812D9E0(v14, &qword_28024FD48, v18);
        (*v31)(v9, v1);
LABEL_16:
        result = sub_26812D9E0(v5, &qword_28024FD40, &unk_2683DE830);
        goto LABEL_18;
      }

      v21 = v18;
      v22 = v28;
      (*v27)(v28, &v5[v20], v1);
      sub_26822A0FC();
      v29 = sub_2683CFA58();

      v23 = *v31;
      (*v31)(v22, v1);
      sub_26812D9E0(v12, &qword_28024FD48, v21);
      sub_26812D9E0(v30, &qword_28024FD48, v21);
      v23(v9, v1);
      v18 = v21;
      v14 = v30;
      result = sub_26812D9E0(v5, &qword_28024FD48, v18);
      if (v29)
      {
        goto LABEL_21;
      }

LABEL_18:
      ++v17;
      v15 = v32;
    }

    sub_26812D9E0(v12, &qword_28024FD48, v18);
    sub_26812D9E0(v14, &qword_28024FD48, v18);
    if (__swift_getEnumTagSinglePayload(&v5[v20], 1, v1) == 1)
    {
      sub_26812D9E0(v5, &qword_28024FD48, &qword_2683F6940);
      v19 = 1;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v19 = 0;
LABEL_21:
  sub_2683942C4();
  return (v19 | v24) & 1;
}

uint64_t sub_2683938F4(uint64_t a1)
{
  if (!*v1)
  {
    return 0;
  }

  if (!sub_2683CD7A8())
  {
    return 0;
  }

  v2 = sub_2683CDA98();

  return v2;
}

uint64_t sub_268393960(uint64_t a1)
{
  if (*v1 && sub_2683CD7A8())
  {
    v2 = sub_2683CDAA8();
  }

  else
  {
    v2 = 0;
  }

  return sub_26834871C(v2);
}

uint64_t sub_2683939BC(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_2683CD7B8();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v2;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  result = swift_allocObject();
  *(result + 16) = xmmword_2683D1EC0;
  *(result + 32) = v4;
  *(result + 40) = v5;
  return result;
}

uint64_t sub_268393A2C()
{
  v1 = *v0;
  if (!v1)
  {
    return v1;
  }

  v2 = sub_2683CD768();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_getKeyPath();
  v1 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  result = sub_2683ABE58();
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return v1;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = OUTLINED_FUNCTION_7_37();
      result = MEMORY[0x26D616C90](v9);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }
    }

    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v6;
    if (v10)
    {
      MEMORY[0x26D616770](result);
      v8 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8 >> 1)
      {
        OUTLINED_FUNCTION_22_2(v8);
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v1 = v11;
      v6 = v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_268393BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v23;
  a20 = v24;
  sub_2683CDB98();
  OUTLINED_FUNCTION_2_31();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = &a9 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_29();
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  if (*v21 && sub_2683CD4F8())
  {
    sub_2683CDB88();
  }

  else
  {
    OUTLINED_FUNCTION_23_24(v40);
  }

  (*(v26 + 104))(v22, *MEMORY[0x277D5EE50], v20);
  OUTLINED_FUNCTION_4_28();
  v41 = *(v30 + 48);
  sub_26822A08C(v40, v33);
  sub_26822A08C(v22, &v33[v41]);
  OUTLINED_FUNCTION_2_6(v33);
  if (!v42)
  {
    sub_26822A08C(v33, v37);
    OUTLINED_FUNCTION_2_6(&v33[v41]);
    if (!v42)
    {
      (*(v26 + 32))(v29, &v33[v41], v20);
      sub_26822A0FC();
      sub_2683CFA58();
      v45 = *(v26 + 8);
      v45(v29, v20);
      sub_26812D9E0(v22, &qword_28024FD48, &qword_2683F6940);
      sub_26812D9E0(v40, &qword_28024FD48, &qword_2683F6940);
      v46 = OUTLINED_FUNCTION_7_37();
      (v45)(v46);
      sub_26812D9E0(v33, &qword_28024FD48, &qword_2683F6940);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_9_12(v22);
    OUTLINED_FUNCTION_9_12(v40);
    v43 = OUTLINED_FUNCTION_7_37();
    v44(v43);
LABEL_13:
    sub_26812D9E0(v33, &qword_28024FD40, &unk_2683DE830);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_9_12(v22);
  OUTLINED_FUNCTION_9_12(v40);
  OUTLINED_FUNCTION_2_6(&v33[v41]);
  if (!v42)
  {
    goto LABEL_13;
  }

  sub_26812D9E0(v33, &qword_28024FD48, &qword_2683F6940);
LABEL_14:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268393F20()
{

  swift_getAtKeyPath();
}

uint64_t sub_268393F7C(uint64_t a1)
{
  if (!*(v2 + 8))
  {
    return 0;
  }

  sub_2683CDA98();
  if (!v3)
  {
    if (sub_2683CDAA8())
    {
      sub_2683CDE18();
      OUTLINED_FUNCTION_24_22();

      return v1;
    }

    return 0;
  }

  OUTLINED_FUNCTION_24_22();
  return v1;
}

void sub_268393FE8()
{
  OUTLINED_FUNCTION_30_0();
  if (*v0)
  {
    sub_268161E50();
    sub_2683ABE58();
    OUTLINED_FUNCTION_26_26();
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1 == v2)
      {

        goto LABEL_16;
      }

      if (v4)
      {
        v9 = OUTLINED_FUNCTION_7_37();
        MEMORY[0x26D616C90](v9);
      }

      else
      {
        if (v2 >= *(v5 + 16))
        {
          goto LABEL_18;
        }
      }

      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_2683CD7B8();
      OUTLINED_FUNCTION_30_21();
      ++v2;
      if (v3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_1_65();
          sub_2682E4728(v10, v11, v12, v13);
          v6 = v14;
        }

        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        v2 = v8 + 1;
        if (v8 >= v7 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v7);
          OUTLINED_FUNCTION_5_52();
          sub_2682E4728(v15, v16, v17, v18);
          v6 = v19;
        }

        OUTLINED_FUNCTION_27_19();
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_29_0();
  }
}

uint64_t sub_2683940FC()
{
  if (*(v0 + 8) && (v4 = sub_2683CDA78()) != 0)
  {
    v5 = v4;
    swift_getKeyPath();
    sub_2683ABE58();
    result = OUTLINED_FUNCTION_31_17();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1 == v7)
      {

        return v8;
      }

      if (v2)
      {
        v22 = OUTLINED_FUNCTION_7_37();
        result = MEMORY[0x26D616C90](v22);
        v9 = result;
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_25;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      *&v31[0] = v9;

      swift_getAtKeyPath();

      if (v24)
      {
        v10 = sub_2683CD6E8();
        OUTLINED_FUNCTION_34_19(v10, v11, v12);
      }

      else
      {
        v32 = 0;
        memset(v31, 0, sizeof(v31));
      }

      OUTLINED_FUNCTION_21_26();
      if (v30)
      {
        sub_268128148(&v29, v31);
        sub_268128148(v31, &v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_1_65();
          sub_2682E4DD8();
          v8 = isUniquelyReferenced_nonNull_native;
        }

        v21 = *(v8 + 24);
        if (*(v8 + 16) >= v21 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v21);
          OUTLINED_FUNCTION_5_52();
          sub_2682E4DD8();
          v8 = isUniquelyReferenced_nonNull_native;
        }

        result = OUTLINED_FUNCTION_20_37(isUniquelyReferenced_nonNull_native, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26, v27, v28, v29);
      }

      else
      {
        result = sub_26812D9E0(&v29, &qword_28024FD78, &qword_2683F5370);
      }

      ++v7;
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_2683942C4()
{
  OUTLINED_FUNCTION_30_0();
  sub_2683CDB98();
  OUTLINED_FUNCTION_2_31();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_45(v8, v28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_12_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_29_22();
  if (!v0)
  {
LABEL_25:
    OUTLINED_FUNCTION_29_0();
    return;
  }

  sub_268161E50();
  v15 = sub_2683ABE58();
  OUTLINED_FUNCTION_10_37(v15);
  OUTLINED_FUNCTION_13_39(*MEMORY[0x277D5EE50]);
  v30 = v3;
  while (1)
  {
    if (v33 == v1)
    {
      goto LABEL_24;
    }

    if (v32)
    {
      v6 = MEMORY[0x26D616C90](v1, v35);
    }

    else
    {
      if (v1 >= *(v31 + 16))
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_33_21();
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    v16 = v6;
    v17 = sub_2683CD4F8();
    if (v17)
    {
      v16 = v17;
      sub_2683CDB88();
    }

    else
    {
      OUTLINED_FUNCTION_23_24(v3);
    }

    v18 = OUTLINED_FUNCTION_14_32();
    v19(v18);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_32_19();
    sub_26822A08C(v2, &v11[v16]);
    OUTLINED_FUNCTION_2_6(v11);
    if (v20)
    {

      v6 = &qword_28024FD48;
      OUTLINED_FUNCTION_37_12(v2);
      OUTLINED_FUNCTION_37_12(v3);
      OUTLINED_FUNCTION_2_6(&v11[v16]);
      if (v20)
      {
        sub_26812D9E0(v11, &qword_28024FD48, &qword_2683F6940);
LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_19;
    }

    sub_26822A08C(v11, v4);
    OUTLINED_FUNCTION_2_6(&v11[v16]);
    if (v20)
    {

      OUTLINED_FUNCTION_35_20(v2);
      OUTLINED_FUNCTION_35_20(v3);
      v21 = OUTLINED_FUNCTION_25_29();
      v22(v21);
LABEL_19:
      sub_26812D9E0(v11, &qword_28024FD40, &unk_2683DE830);
      goto LABEL_21;
    }

    v23 = OUTLINED_FUNCTION_6_40();
    v24(v23);
    v25 = sub_26822A0FC();
    v29 = OUTLINED_FUNCTION_16_33(v25);

    v26 = OUTLINED_FUNCTION_28_22();
    (v6)(v26);
    OUTLINED_FUNCTION_38_16(v2);
    OUTLINED_FUNCTION_38_16(v30);
    v27 = OUTLINED_FUNCTION_25_29();
    (v6)(v27);
    OUTLINED_FUNCTION_19_37();
    if (v29)
    {
      goto LABEL_24;
    }

LABEL_21:
    ++v1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_2683946E0(uint64_t a1)
{
  if (!*v2)
  {
    return 0;
  }

  sub_2683CDA98();
  if (!v3)
  {
    if (sub_2683CDAA8())
    {
      sub_2683CDE18();
      OUTLINED_FUNCTION_24_22();

      return v1;
    }

    return 0;
  }

  OUTLINED_FUNCTION_24_22();
  return v1;
}

void sub_26839474C()
{
  OUTLINED_FUNCTION_30_0();
  if (*v0)
  {
    sub_268161CE4();
    sub_2683ABE58();
    OUTLINED_FUNCTION_26_26();
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1 == v2)
      {

        goto LABEL_16;
      }

      if (v4)
      {
        v9 = OUTLINED_FUNCTION_7_37();
        MEMORY[0x26D616C90](v9);
      }

      else
      {
        if (v2 >= *(v5 + 16))
        {
          goto LABEL_18;
        }
      }

      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_2683CD7B8();
      OUTLINED_FUNCTION_30_21();
      ++v2;
      if (v3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_1_65();
          sub_2682E4728(v10, v11, v12, v13);
          v6 = v14;
        }

        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        v2 = v8 + 1;
        if (v8 >= v7 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v7);
          OUTLINED_FUNCTION_5_52();
          sub_2682E4728(v15, v16, v17, v18);
          v6 = v19;
        }

        OUTLINED_FUNCTION_27_19();
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_29_0();
  }
}

uint64_t sub_268394860()
{
  if (*v0 && (v4 = sub_2683CDA78()) != 0)
  {
    v5 = v4;
    swift_getKeyPath();
    sub_2683ABE58();
    result = OUTLINED_FUNCTION_31_17();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v1 == v7)
      {

        return v8;
      }

      if (v2)
      {
        v22 = OUTLINED_FUNCTION_7_37();
        result = MEMORY[0x26D616C90](v22);
        v9 = result;
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_25;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      if (__OFADD__(v7, 1))
      {
        break;
      }

      *&v31[0] = v9;

      swift_getAtKeyPath();

      if (v24)
      {
        v10 = sub_2683CD6E8();
        OUTLINED_FUNCTION_34_19(v10, v11, v12);
      }

      else
      {
        v32 = 0;
        memset(v31, 0, sizeof(v31));
      }

      OUTLINED_FUNCTION_21_26();
      if (v30)
      {
        sub_268128148(&v29, v31);
        sub_268128148(v31, &v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_1_65();
          sub_2682E4DD8();
          v8 = isUniquelyReferenced_nonNull_native;
        }

        v21 = *(v8 + 24);
        if (*(v8 + 16) >= v21 >> 1)
        {
          OUTLINED_FUNCTION_22_2(v21);
          OUTLINED_FUNCTION_5_52();
          sub_2682E4DD8();
          v8 = isUniquelyReferenced_nonNull_native;
        }

        result = OUTLINED_FUNCTION_20_37(isUniquelyReferenced_nonNull_native, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26, v27, v28, v29);
      }

      else
      {
        result = sub_26812D9E0(&v29, &qword_28024FD78, &qword_2683F5370);
      }

      ++v7;
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_268394A28()
{
  OUTLINED_FUNCTION_30_0();
  sub_2683CDB98();
  OUTLINED_FUNCTION_2_31();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11_45(v8, v28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_12_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_29_22();
  if (!v0)
  {
LABEL_25:
    OUTLINED_FUNCTION_29_0();
    return;
  }

  sub_268161CE4();
  v15 = sub_2683ABE58();
  OUTLINED_FUNCTION_10_37(v15);
  OUTLINED_FUNCTION_13_39(*MEMORY[0x277D5EE50]);
  v30 = v3;
  while (1)
  {
    if (v33 == v1)
    {
      goto LABEL_24;
    }

    if (v32)
    {
      v6 = MEMORY[0x26D616C90](v1, v35);
    }

    else
    {
      if (v1 >= *(v31 + 16))
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_33_21();
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    v16 = v6;
    v17 = sub_2683CD4F8();
    if (v17)
    {
      v16 = v17;
      sub_2683CDB88();
    }

    else
    {
      OUTLINED_FUNCTION_23_24(v3);
    }

    v18 = OUTLINED_FUNCTION_14_32();
    v19(v18);
    OUTLINED_FUNCTION_4_28();
    OUTLINED_FUNCTION_32_19();
    sub_26822A08C(v2, &v11[v16]);
    OUTLINED_FUNCTION_2_6(v11);
    if (v20)
    {

      v6 = &qword_28024FD48;
      OUTLINED_FUNCTION_37_12(v2);
      OUTLINED_FUNCTION_37_12(v3);
      OUTLINED_FUNCTION_2_6(&v11[v16]);
      if (v20)
      {
        sub_26812D9E0(v11, &qword_28024FD48, &qword_2683F6940);
LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_19;
    }

    sub_26822A08C(v11, v4);
    OUTLINED_FUNCTION_2_6(&v11[v16]);
    if (v20)
    {

      OUTLINED_FUNCTION_35_20(v2);
      OUTLINED_FUNCTION_35_20(v3);
      v21 = OUTLINED_FUNCTION_25_29();
      v22(v21);
LABEL_19:
      sub_26812D9E0(v11, &qword_28024FD40, &unk_2683DE830);
      goto LABEL_21;
    }

    v23 = OUTLINED_FUNCTION_6_40();
    v24(v23);
    v25 = sub_26822A0FC();
    v29 = OUTLINED_FUNCTION_16_33(v25);

    v26 = OUTLINED_FUNCTION_28_22();
    (v6)(v26);
    OUTLINED_FUNCTION_38_16(v2);
    OUTLINED_FUNCTION_38_16(v30);
    v27 = OUTLINED_FUNCTION_25_29();
    (v6)(v27);
    OUTLINED_FUNCTION_19_37();
    if (v29)
    {
      goto LABEL_24;
    }

LABEL_21:
    ++v1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

BOOL sub_268394D7C()
{
  sub_26839474C();
  v1 = *(v0 + 16);

  return v1 == 0;
}

uint64_t sub_268394E24(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268394E60(uint64_t result)
{
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_268394E6C()
{
  if (*v0 >> 62)
  {
    return sub_2683D00A8();
  }

  else
  {
    return *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_268394E9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268394E60(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_268394EDC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268394F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_268394F9C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268394FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_37(uint64_t result)
{
  *(v2 - 112) = v1 & 0xC000000000000001;
  *(v2 - 104) = result;
  *(v2 - 88) = v1;
  *(v2 - 120) = v1 & 0xFFFFFFFFFFFFFF8;
  return result;
}

void OUTLINED_FUNCTION_13_39(int a1@<W8>)
{
  *(v2 - 124) = a1;
  *(v2 - 176) = v1 + 32;
  *(v2 - 144) = v1 + 8;
  *(v2 - 136) = v1 + 104;
}

uint64_t OUTLINED_FUNCTION_16_33(uint64_t a1)
{

  return sub_2683CFA58();
}

uint64_t OUTLINED_FUNCTION_19_37()
{

  return sub_26812D9E0(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{
  *(v15 + 16) = v17;

  return sub_268128148(&a15, v15 + 40 * v16 + 32);
}

uint64_t OUTLINED_FUNCTION_21_26()
{
}

void OUTLINED_FUNCTION_27_19()
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_30_21()
{
}

uint64_t OUTLINED_FUNCTION_31_17()
{
}

uint64_t OUTLINED_FUNCTION_32_19()
{

  return sub_26822A08C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_33_21()
{
}

uint64_t OUTLINED_FUNCTION_34_19(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  va_arg(va1, void);
  *(&v7 + 1) = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_arg(va1, void);
  va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v10 = a1;
  v11 = v4;
  *&v7 = v3;

  return sub_268128148(va, va1);
}

uint64_t OUTLINED_FUNCTION_35_20(uint64_t a1)
{

  return sub_26812D9E0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_37_12(uint64_t a1)
{

  return sub_26812D9E0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_38_16(uint64_t a1)
{

  return sub_26812D9E0(a1, v1, v2);
}

uint64_t type metadata accessor for NotebookReadingCATsSimple(uint64_t a1)
{
  result = qword_280254098;
  if (!qword_280254098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683953C8()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812C3D8;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000019, 0x8000000268401C60, v2);
}

uint64_t sub_268395478()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812BEB4;
  v2 = OUTLINED_FUNCTION_7_38();

  return v3(v2);
}

uint64_t sub_268395518()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812C3D8;
  v2 = OUTLINED_FUNCTION_7_38();

  return v3(v2);
}

uint64_t sub_2683955B8()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268395658);
}

uint64_t sub_268395658()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_2683D2890;
  *(v3 + 32) = 0x6C7469547473696CLL;
  *(v3 + 40) = 0xE900000000000065;
  sub_26812C2A8(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = *(v0 + 40);
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(*(v0 + 40), &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v6, v4);
  }

  v8 = *(v0 + 72);
  *(v3 + 80) = 0x6E756F436B736174;
  *(v3 + 88) = 0xE900000000000074;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = MEMORY[0x277D839F8];
  }

  *(v3 + 96) = v9;
  *(v3 + 120) = v10;
  v11 = OUTLINED_FUNCTION_6();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_268395854;

  return v13(0xD000000000000024, 0x8000000268401BD0, v3);
}

uint64_t sub_268395854()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268183D9C);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(v1);
  }
}

uint64_t sub_268395994(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683959A8()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 1702129518;
  *(v2 + 40) = 0xE400000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for NotebookNoteConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_5_5();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_11_46(v4);

  return v6(0xD000000000000018);
}

uint64_t sub_268395AC8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26812C3D4);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_5();

    return v8(v7);
  }
}

uint64_t sub_268395BF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268395C0C()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 1802723700;
  *(v2 + 40) = 0xE400000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for NotebookReminderConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_5_5();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_11_46(v4);

  return v6(0xD00000000000001CLL);
}

uint64_t sub_268395D2C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26812B8E8);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_5();

    return v8(v7);
  }
}

uint64_t sub_268395EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v11 - 8);
  sub_26812C2A8(a1, &v15 - v12, &qword_28024D258, &unk_2683D1F60);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_2683CF178();
  (*(v7 + 8))(a2, v3);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v13;
}

uint64_t sub_26839602C(uint64_t a1, uint64_t a2)
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

uint64_t type metadata accessor for NotebookSuggestionsCATs(uint64_t a1)
{
  result = qword_2814B1D50;
  if (!qword_2814B1D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268396240(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2683963B4@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v51) = a3;
  v49 = a4;
  v6 = sub_2683CAEE8();
  OUTLINED_FUNCTION_0_3();
  v52 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F340, &qword_2683DB820);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = sub_2683CB438();
  OUTLINED_FUNCTION_0_3();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024CC58 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v18, qword_2802540A8);
  v46 = v23;
  v47 = v20;
  v25 = *(v20 + 16);
  v48 = v18;
  v25(v23, v24, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802540C0, &qword_2683F6A40);
  v26 = *(v12 + 72);
  v27 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2683D2890;
  v45 = v28;
  v29 = v28 + v27;
  sub_268396AA4(a1, a2);
  if (v30)
  {
    sub_2683CAEB8();
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v6);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v6);
  }

  if (v51 == 2)
  {
    v31 = 1;
  }

  else
  {
    sub_2683CAEB8();

    v31 = 0;
  }

  __swift_storeEnumTagSinglePayload(v29 + v26, v31, 1, v6);
  v32 = 0;
  v33 = 0;
  v34 = (v52 + 32);
  v35 = MEMORY[0x277D84F90];
  v50 = v29;
  v51 = v10;
  do
  {
    v36 = v32;
    sub_268396FF4(v29 + v33 * v26, v17);
    sub_268397064(v17, v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v6) == 1)
    {
      sub_26812C310(v15, &qword_28024F340, &qword_2683DB820);
    }

    else
    {
      v37 = v26;
      v38 = *v34;
      (*v34)(v10, v15, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E53DC();
        v35 = v41;
      }

      v39 = *(v35 + 16);
      if (v39 >= *(v35 + 24) >> 1)
      {
        sub_2682E53DC();
        v35 = v42;
      }

      *(v35 + 16) = v39 + 1;
      v40 = v35 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v39;
      v10 = v51;
      v38(v40, v51, v6);
      v26 = v37;
      v29 = v50;
    }

    v32 = 1;
    v33 = 1;
  }

  while ((v36 & 1) == 0);
  swift_setDeallocating();
  sub_2681F5654();
  v43 = v46;
  sub_2683CB428();

  return (*(v47 + 8))(v43, v48);
}

uint64_t sub_268396884()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_2683CB438();
  __swift_allocate_value_buffer(v3, qword_2802540A8);
  v4 = __swift_project_value_buffer(v3, qword_2802540A8);
  sub_2683CB418();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_268396994()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_2683CB438();
  __swift_allocate_value_buffer(v3, qword_28027CEB8);
  v4 = __swift_project_value_buffer(v3, qword_28027CEB8);
  sub_2683CB418();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void (**sub_268396AA4(void (**a1)(char *, uint64_t), uint64_t a2))(char *, uint64_t)
{
  v4 = sub_2683CAEE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v49 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802540C8, &qword_2683F6A48);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_2683CAF48();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_29;
  }

  sub_2683CAF38();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {

    sub_26812C310(v15, &qword_2802540C8, &qword_2683F6A48);
LABEL_29:

    return a1;
  }

  v44 = v12;
  v45 = v17;
  (*(v17 + 32))(v19, v15, v16);
  v46 = v19;
  v20 = sub_2683CAF28();
  v22 = v21;
  if (qword_28024CC58 != -1)
  {
LABEL_36:
    swift_once();
  }

  v23 = sub_2683CB438();
  __swift_project_value_buffer(v23, qword_2802540A8);
  v24 = sub_2683CB408();
  if (!v22)
  {
    if (!v25)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (!v25)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v20 == v24 && v22 == v25)
  {

    goto LABEL_17;
  }

  v27 = sub_2683D0598();

  if ((v27 & 1) == 0)
  {
LABEL_15:

    (*(v45 + 8))(v46, v16);
    goto LABEL_29;
  }

LABEL_17:
  v28 = v46;
  v29 = sub_2683CAF18();
  if (!v29)
  {
    (*(v45 + 8))(v28, v16);

    goto LABEL_29;
  }

  v20 = v29;
  v42 = a1;
  v43 = v16;
  v16 = 0;
  v22 = 0x696669746E656469;
  v30 = *(v29 + 16);
  v47 = v5 + 16;
  v48 = v30;
  a1 = (v5 + 8);
  while (1)
  {
    if (v48 == v16)
    {

      (*(v45 + 8))(v46, v43);
      a1 = v42;
      goto LABEL_29;
    }

    if (v16 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    (*(v5 + 16))(v8, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, v4);
    if (sub_2683CAEC8() == v22 && v31 == 0xEA00000000007265)
    {
      break;
    }

    v33 = v22;
    v34 = sub_2683D0598();

    if (v34)
    {
      goto LABEL_32;
    }

    (*a1)(v8, v4);
    ++v16;
    v22 = v33;
  }

LABEL_32:

  v36 = *(v5 + 32);
  v37 = v49;
  v36(v49, v8, v4);
  v38 = v44;
  v36(v44, v37, v4);
  v39 = sub_2683CAED8();
  v41 = v40;
  (*(v5 + 8))(v38, v4);
  (*(v45 + 8))(v46, v43);
  if (!v41)
  {
    return v42;
  }

  return v39;
}

uint64_t sub_268396FF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F340, &qword_2683DB820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268397064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F340, &qword_2683DB820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2683970D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = sub_2683ABE58();

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
LABEL_13:

      return v4 != i;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](i, v3);
      v7 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = v7;
    v8 = sub_2683971D8(&v9, a1);

    if (v8)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2683971D8(uint64_t *a1, uint64_t a2)
{
  v45 = sub_2683CD1F8();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_2683CD508();
  if (v9)
  {
    v37 = a2;
    v10 = *(v9 + 16);
    if (v10)
    {
      v36[2] = v8;
      v36[3] = v2;
      v12 = *(v5 + 16);
      v11 = v5 + 16;
      v13 = *(v11 + 64);
      v36[1] = v9;
      v14 = v9 + ((v13 + 32) & ~v13);
      v38 = *(v11 + 56);
      v39 = v12;
      v40 = v11;
      v15 = (v11 - 8);
      v16 = MEMORY[0x277D84F90];
      do
      {
        v17 = v45;
        v39(v7, v14, v45);
        v18 = sub_2683CD1D8();
        v20 = v19;
        (*v15)(v7, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2682E4728(0, *(v16 + 16) + 1, 1, v16);
          v16 = v24;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2682E4728(v21 > 1, v22 + 1, 1, v16);
          v16 = v25;
        }

        *(v16 + 16) = v22 + 1;
        v23 = v16 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v14 += v38;
        --v10;
      }

      while (v10);
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    v28 = 0xE400000000000000;
    v29 = 1734437990;
    LOBYTE(a2) = v37;
    switch(v37)
    {
      case 1:
        v28 = 0xE700000000000000;
        v29 = 0x64656767616C66;
        break;
      case 2:
        v28 = 0xE300000000000000;
        v29 = 7105633;
        break;
      case 3:
        v28 = 0xE500000000000000;
        v29 = 0x6C6562616CLL;
        break;
      default:
        break;
    }

    v43 = v29;
    v44 = v28;
    MEMORY[0x28223BE20](v26);
    v36[-2] = &v43;
    v27 = sub_2681A073C(sub_2681A12C0, &v36[-4], v16);
  }

  else
  {
    v27 = 0;
  }

  v30 = sub_2683CD708();
  if (v31)
  {
    v43 = v30;
    v44 = v31;
    v32 = 0xE400000000000000;
    v33 = 1734437990;
    switch(a2)
    {
      case 0:
        break;
      case 1:
        v32 = 0xE700000000000000;
        v33 = 0x64656767616C66;
        break;
      case 2:
        v32 = 0xE300000000000000;
        v33 = 7105633;
        break;
      case 3:
        v32 = 0xE500000000000000;
        v33 = 0x6C6562616CLL;
        break;
      default:
        JUMPOUT(0);
    }

    v41 = v33;
    v42 = v32;
    sub_26812A1AC();
    v34 = sub_2683D0008();

    v27 |= v34 == 0;
  }

  return v27 & 1;
}

uint64_t sub_268397584(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v4);
  v74 = &v71 - v5;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  v73 = &v71 - v7;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v8);
  v71 = &v71 - v9;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v71 - v20;
  sub_2683B9E1C();
  v78 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2681D8BC0();
  v23 = sub_2683CFA38();
  v25 = v24;

  type metadata accessor for NotebookNoteConcept.Builder(0);
  swift_allocObject();
  v26 = sub_26835A848();
  v77 = a1;
  v27 = [a1 title];
  sub_2683CFEA8();

  v28 = sub_2683CF168();
  v29 = 1;
  v30 = OUTLINED_FUNCTION_0_74();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);
  v33 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_title;
  OUTLINED_FUNCTION_2_63(v26 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_title);
  sub_268163BC8(v21, v26 + v33);
  swift_endAccess();
  sub_26812C310(v21, &unk_28024E7C0, &unk_2683D6CA0);
  v75 = v23;
  v76 = v25;
  if (sub_26812A050(v23, v25))
  {
    sub_2683CFB38();
    v29 = 0;
  }

  v34 = 1;
  __swift_storeEnumTagSinglePayload(v19, v29, 1, v28);
  v35 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_textContent;
  OUTLINED_FUNCTION_2_63(v26 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_textContent);
  sub_268163BC8(v19, v26 + v35);
  swift_endAccess();
  sub_26812C310(v19, &unk_28024E7C0, &unk_2683D6CA0);
  v36 = v77;
  v37 = [v77 groupName];
  if (v37)
  {
    v38 = v37;
    sub_2683CFEA8();

    v34 = 0;
  }

  v39 = v74;
  v40 = 1;
  __swift_storeEnumTagSinglePayload(v16, v34, 1, v28);
  v41 = OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_groupName;
  OUTLINED_FUNCTION_2_63(v26 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_groupName);
  sub_268163BC8(v16, v26 + v41);
  swift_endAccess();
  sub_26812C310(v16, &unk_28024E7C0, &unk_2683D6CA0);
  v42 = [v36 createdDateComponents];
  if (v42)
  {
    v43 = v42;
    v44 = v71;
    sub_2683CAFE8();

    v40 = 0;
  }

  else
  {
    v44 = v71;
  }

  v45 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v44, v40, 1, v45);
  sub_268176BC8(v44, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v45) == 1)
  {
    sub_26812C310(v12, &qword_28024D4B0, &unk_2683D26E0);
    v46 = 0;
  }

  else
  {
    sub_2683CEFE8();
    OUTLINED_FUNCTION_1_66();
    v48 = v47;
    v50 = v73;
    (*(v49 + 16))(v73, v12, v45);
    v51 = OUTLINED_FUNCTION_0_74();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v45);
    v46 = sub_268216C78(v50);
    (*(v48 + 8))(v12, v45);
  }

  v54 = v72;
  sub_26835A8DC(v46);

  v55 = [v36 modifiedDateComponents];
  if (v55)
  {
    v56 = v55;
    sub_2683CAFE8();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  __swift_storeEnumTagSinglePayload(v54, v57, 1, v45);
  sub_268176BC8(v54, v39);
  if (__swift_getEnumTagSinglePayload(v39, 1, v45) == 1)
  {
    sub_26812C310(v39, &qword_28024D4B0, &unk_2683D26E0);
    v58 = 0;
  }

  else
  {
    sub_2683CEFE8();
    OUTLINED_FUNCTION_1_66();
    v60 = v59;
    v62 = v73;
    (*(v61 + 16))(v73, v39, v45);
    v63 = OUTLINED_FUNCTION_0_74();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v45);
    v58 = sub_268216C78(v62);
    (*(v60 + 8))(v39, v45);
  }

  v66 = sub_26835A8E8(v58);

  v67 = sub_268397C30(v75, v76);

  v68 = v66 + OBJC_IVAR____TtCC12SiriNotebook19NotebookNoteConcept7Builder_attachmentCount;
  *v68 = v67;
  *(v68 + 8) = 0;
  type metadata accessor for NotebookNoteConcept(0);
  swift_allocObject();
  v69 = sub_26835A990(v66);

  return v69;
}

double sub_268397C30(uint64_t a1, uint64_t a2)
{

  v2 = 0.0;
  while (1)
  {
    v3 = sub_2683CFBB8();
    if (!v4)
    {
      break;
    }

    if (v3 == 12369903 && v4 == 0xA300000000000000)
    {

      goto LABEL_10;
    }

    v6 = sub_2683D0598();

    if (v6)
    {
LABEL_10:
      v2 = v2 + 1.0;
    }
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_2_63(uint64_t a1)
{

  return swift_beginAccess();
}

void sub_268397D54()
{
  qword_2802540D0 = 0xD000000000000028;
  *algn_2802540D8 = 0x80000002683FD670;
  qword_2802540E0 = 0xD000000000000014;
  unk_2802540E8 = 0x8000000268401CF0;
}

uint64_t static DIConfirmationResponse.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_28024CC68 != -1)
  {
    swift_once();
  }

  v2 = *algn_2802540D8;
  v3 = qword_2802540E0;
  v4 = unk_2802540E8;
  *a1 = qword_2802540D0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_268397E14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_2683D0598();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_268397F34(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x64657463656A6572;
  }

  return 0x656C6C65636E6163;
}

uint64_t sub_268397F8C(uint64_t a1)
{
  v2 = sub_2683984EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268397FC8(uint64_t a1)
{
  v2 = sub_2683984EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26839800C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268397E14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268398034(uint64_t a1)
{
  v2 = sub_268398498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268398070(uint64_t a1)
{
  v2 = sub_268398498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2683980AC(uint64_t a1)
{
  v2 = sub_268398594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2683980E8(uint64_t a1)
{
  v2 = sub_268398594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268398124(uint64_t a1)
{
  v2 = sub_268398540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268398160(uint64_t a1)
{
  v2 = sub_268398540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DIConfirmationResponse.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802540F0, &qword_2683F6A60);
  OUTLINED_FUNCTION_0_3();
  v33 = v4;
  v34 = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v32 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802540F8, &qword_2683F6A68);
  OUTLINED_FUNCTION_0_3();
  v30 = v8;
  v31 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  v29 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254100, &qword_2683F6A70);
  OUTLINED_FUNCTION_0_3();
  v27 = v12;
  v28 = v11;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254108, &qword_2683F6A78);
  OUTLINED_FUNCTION_0_3();
  v18 = v17;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v26 - v20;
  v22 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268398498();
  sub_2683D0718();
  if (v22)
  {
    if (v22 == 1)
    {
      v36 = 1;
      sub_268398540();
      v15 = v29;
      OUTLINED_FUNCTION_2_64(&type metadata for DIConfirmationResponse.RejectedCodingKeys);
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v37 = 2;
      sub_2683984EC();
      v15 = v32;
      OUTLINED_FUNCTION_2_64(&type metadata for DIConfirmationResponse.CancelledCodingKeys);
      v24 = v33;
      v23 = v34;
    }
  }

  else
  {
    v35 = 0;
    sub_268398594();
    OUTLINED_FUNCTION_2_64(&type metadata for DIConfirmationResponse.ConfirmedCodingKeys);
    v24 = v27;
    v23 = v28;
  }

  (*(v24 + 8))(v15, v23);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_268398498()
{
  result = qword_280254110;
  if (!qword_280254110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254110);
  }

  return result;
}

unint64_t sub_2683984EC()
{
  result = qword_280254118;
  if (!qword_280254118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254118);
  }

  return result;
}

unint64_t sub_268398540()
{
  result = qword_280254120;
  if (!qword_280254120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254120);
  }

  return result;
}

unint64_t sub_268398594()
{
  result = qword_280254128;
  if (!qword_280254128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254128);
  }

  return result;
}

uint64_t DIConfirmationResponse.hashValue.getter()
{
  v1 = *v0;
  sub_2683D0698();
  MEMORY[0x26D617190](v1);
  return sub_2683D06D8();
}

uint64_t DIConfirmationResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254130, &qword_2683F6A80);
  OUTLINED_FUNCTION_0_3();
  v56 = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  v58 = &v47 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254138, &qword_2683F6A88);
  OUTLINED_FUNCTION_0_3();
  v53 = v7;
  v54 = v6;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254140, &qword_2683F6A90);
  OUTLINED_FUNCTION_0_3();
  v52 = v12;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254148, &unk_2683F6A98);
  OUTLINED_FUNCTION_0_3();
  v57 = v17;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268398498();
  v21 = v60;
  sub_2683D06F8();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v49 = v11;
  v50 = v15;
  v51 = v10;
  v23 = v58;
  v22 = v59;
  v60 = a1;
  sub_2683D04B8();
  result = sub_268151B7C();
  if (v26 == v27 >> 1)
  {
    goto LABEL_9;
  }

  v48 = 0;
  if (v26 >= (v27 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v28) = *(v25 + v26);
    sub_268151B68();
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    v33 = v30 == v32 >> 1;
    v34 = v56;
    if (!v33)
    {
LABEL_9:
      v39 = sub_2683D01D8();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0);
      *v41 = &type metadata for DIConfirmationResponse;
      sub_2683D0428();
      sub_2683D01C8();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v57 + 8))(v20, v16);
      a1 = v60;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    if (v28)
    {
      if (v28 == 1)
      {
        v62 = 1;
        sub_268398540();
        v35 = v51;
        OUTLINED_FUNCTION_4_55(&type metadata for DIConfirmationResponse.RejectedCodingKeys);
        v36 = v55;
        v37 = v16;
        v38 = v57;
        swift_unknownObjectRelease();
        (*(v53 + 8))(v35, v54);
        (*(v38 + 8))(v20, v37);
      }

      else
      {
        LODWORD(v54) = v28;
        v63 = 2;
        sub_2683984EC();
        v43 = v48;
        sub_2683D0418();
        v36 = v55;
        v28 = v16;
        v44 = v57;
        if (v43)
        {
          (*(v57 + 8))(v20, v28);
          swift_unknownObjectRelease();
          a1 = v60;
          return __swift_destroy_boxed_opaque_existential_0(a1);
        }

        swift_unknownObjectRelease();
        (*(v34 + 8))(v23, v22);
        (*(v44 + 8))(v20, v28);
        LOBYTE(v28) = v54;
      }
    }

    else
    {
      v61 = 0;
      sub_268398594();
      v42 = v50;
      OUTLINED_FUNCTION_4_55(&type metadata for DIConfirmationResponse.ConfirmedCodingKeys);
      swift_unknownObjectRelease();
      (*(v52 + 8))(v42, v49);
      v45 = OUTLINED_FUNCTION_3_55();
      v46(v45);
      v36 = v55;
    }

    *v36 = v28;
    return __swift_destroy_boxed_opaque_existential_0(v60);
  }

  return result;
}

unint64_t sub_268398C54()
{
  result = qword_280254150;
  if (!qword_280254150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254150);
  }

  return result;
}

unint64_t sub_268398CA8(void *a1)
{
  a1[1] = sub_26834F750();
  a1[2] = sub_26837E490();
  result = sub_268398C54();
  a1[3] = result;
  return result;
}

_BYTE *sub_268398CF0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268398E00()
{
  result = qword_280254158;
  if (!qword_280254158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254158);
  }

  return result;
}

unint64_t sub_268398E58()
{
  result = qword_280254160;
  if (!qword_280254160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254160);
  }

  return result;
}

unint64_t sub_268398EB0()
{
  result = qword_280254168;
  if (!qword_280254168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254168);
  }

  return result;
}

unint64_t sub_268398F08()
{
  result = qword_280254170;
  if (!qword_280254170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254170);
  }

  return result;
}

unint64_t sub_268398F60()
{
  result = qword_280254178;
  if (!qword_280254178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254178);
  }

  return result;
}

unint64_t sub_268398FB8()
{
  result = qword_280254180;
  if (!qword_280254180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254180);
  }

  return result;
}

unint64_t sub_268399010()
{
  result = qword_280254188;
  if (!qword_280254188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254188);
  }

  return result;
}

unint64_t sub_268399068()
{
  result = qword_280254190;
  if (!qword_280254190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254190);
  }

  return result;
}

unint64_t sub_2683990C0()
{
  result = qword_280254198;
  if (!qword_280254198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254198);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_64(uint64_t a1)
{

  return sub_2683D04C8();
}

uint64_t OUTLINED_FUNCTION_4_55(uint64_t a1)
{

  return sub_2683D0418();
}

id sub_268399170(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = objc_allocWithZone(MEMORY[0x277D47250]);
  v6 = v4;
  v7 = [v5 init];
  sub_2681C3150(a1, a2, v7);
  v8 = v7;
  [v6 setDecoratedBodyText_];

  return v6;
}

void sub_268399224()
{
  OUTLINED_FUNCTION_30_0();
  v93 = v4;
  v6 = v5;
  v84 = v8;
  v85 = v7;
  v89 = v9;
  v11 = v10;
  v90 = sub_2683CEDC8();
  OUTLINED_FUNCTION_0_3();
  v92 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_18();
  v91 = v14;
  OUTLINED_FUNCTION_3_8();
  v86 = sub_2683CEDA8();
  OUTLINED_FUNCTION_0_3();
  v88 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_18();
  v87 = v17;
  OUTLINED_FUNCTION_3_8();
  sub_2683CF948();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_3();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_56_3();
  v83 = v24;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_27_20();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_20_38();
  v29 = sub_2683B2A68(v11);
  sub_2682DFB6C(v29, v30, v6);
  OUTLINED_FUNCTION_53_8();
  if (v6)
  {
    sub_2682B2AF0(v6);
  }

  else
  {
    v31 = sub_2683CEDD8();
    OUTLINED_FUNCTION_19_38(v31);
  }

  OUTLINED_FUNCTION_52_8();
  v32 = sub_2683CEDD8();
  OUTLINED_FUNCTION_35_21(v32);
  if (!v33)
  {
    OUTLINED_FUNCTION_51_9();
    OUTLINED_FUNCTION_1_7();
    v34 = OUTLINED_FUNCTION_18_37();
    v36 = v35(v34);
    if (v36 == *MEMORY[0x277D1C680])
    {
      v37 = OUTLINED_FUNCTION_5_53();
      v38(v37);
      v39 = OUTLINED_FUNCTION_6_41();
      v40(v39);
      v94 = v93(v21);
      v95 = v41;
      v42 = OUTLINED_FUNCTION_40_16();
LABEL_10:
      v43(v42);
LABEL_14:
      sub_26839B7DC(v1);
      goto LABEL_15;
    }

    if (v36 == *MEMORY[0x277D1C670])
    {
      v44 = OUTLINED_FUNCTION_5_53();
      v45(v44);
      v46 = OUTLINED_FUNCTION_6_41();
      v47(v46);
      if (v89)
      {

        v48 = sub_2683CEDB8();
        v89(&v94, v48);
        OUTLINED_FUNCTION_54_7();
        v49 = OUTLINED_FUNCTION_12_35();
        v50(v49);
        goto LABEL_14;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v57 = sub_2683CF7E8();
      v58 = OUTLINED_FUNCTION_14_33(v57, qword_28027C958);
      sub_26839B76C(v58, v3);
      v59 = sub_2683CF7C8();
      v60 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v60))
      {
        OUTLINED_FUNCTION_35_8();
        v94 = OUTLINED_FUNCTION_21_27();
        *v2 = 136315394;
        v61 = sub_2683B2A68(v11);
        sub_2681610A0(v61, v62, &v94);
        OUTLINED_FUNCTION_50_12();
        OUTLINED_FUNCTION_15_39();
        sub_26839B76C(v3, v83);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_42_15();
        sub_26839B7DC(v3);
        v63 = OUTLINED_FUNCTION_11_37();
        v66 = sub_2681610A0(v63, v64, v65);

        *(v2 + 14) = v66;
        OUTLINED_FUNCTION_22_25(&dword_2680EB000, v67, v60, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_47_7();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_3_16();

        (*(v92 + 8))(v91, v90);
      }

      else
      {

        sub_26839B7DC(v3);
        v79 = OUTLINED_FUNCTION_12_35();
        v80(v79);
      }
    }

    else
    {
      if (v36 != *MEMORY[0x277D1C668])
      {
        sub_26839B7DC(v1);
        v55 = OUTLINED_FUNCTION_18_37();
        v56(v55);
        goto LABEL_7;
      }

      v51 = OUTLINED_FUNCTION_5_53();
      v52(v51);
      v53 = OUTLINED_FUNCTION_17_27();
      v54(v53);
      if (v85)
      {

        v85(&v94, v87);
        sub_268128194(v85, v84);
        v42 = OUTLINED_FUNCTION_9_40();
        goto LABEL_10;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v68 = sub_2683CF7E8();
      v69 = OUTLINED_FUNCTION_14_33(v68, qword_28027C958);
      sub_26839B76C(v69, v2);
      v70 = sub_2683CF7C8();
      v71 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v71))
      {
        OUTLINED_FUNCTION_35_8();
        v94 = OUTLINED_FUNCTION_43_12();
        *v88 = 136315394;
        v72 = sub_2683B2A68(v11);
        v74 = sub_2681610A0(v72, v73, &v94);

        v75 = OUTLINED_FUNCTION_29_23();
        sub_26839B76C(v75, v83);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_44_15();
        v76 = sub_2681610A0(v83, v74, &v94);

        *(v88 + 14) = v76;
        OUTLINED_FUNCTION_36_17(&dword_2680EB000, v77, v78, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_46_10();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_25_0();

        (*(v88 + 8))(v87, v86);
      }

      else
      {

        sub_26839B7DC(v2);
        v81 = OUTLINED_FUNCTION_9_40();
        v82(v81);
      }
    }
  }

  sub_26839B7DC(v1);
LABEL_7:
  v94 = 0;
  v95 = 0;
LABEL_15:
  sub_26839B7DC(v0);
  OUTLINED_FUNCTION_29_0();
}

void sub_268399904()
{
  OUTLINED_FUNCTION_30_0();
  v92 = v4;
  v6 = v5;
  v83 = v8;
  v84 = v7;
  v88 = v9;
  v11 = v10;
  v89 = sub_2683CEDC8();
  OUTLINED_FUNCTION_0_3();
  v91 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_18();
  v90 = v14;
  OUTLINED_FUNCTION_3_8();
  v85 = sub_2683CEDA8();
  OUTLINED_FUNCTION_0_3();
  v87 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_18();
  v86 = v17;
  OUTLINED_FUNCTION_3_8();
  sub_2683CF948();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_3();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_56_3();
  v82 = v24;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_27_20();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_20_38();
  v29 = sub_2683B2A68(v11);
  sub_2682DFB6C(v29, v30, v6);
  OUTLINED_FUNCTION_53_8();
  if (v6)
  {
    sub_2682B2AF0(v6);
  }

  else
  {
    v31 = sub_2683CEDD8();
    OUTLINED_FUNCTION_19_38(v31);
  }

  OUTLINED_FUNCTION_52_8();
  v32 = sub_2683CEDD8();
  OUTLINED_FUNCTION_35_21(v32);
  if (!v33)
  {
    OUTLINED_FUNCTION_51_9();
    OUTLINED_FUNCTION_1_7();
    v34 = OUTLINED_FUNCTION_18_37();
    v36 = v35(v34);
    if (v36 == *MEMORY[0x277D1C680])
    {
      v37 = OUTLINED_FUNCTION_5_53();
      v38(v37);
      v39 = OUTLINED_FUNCTION_6_41();
      v40(v39);
      LOBYTE(v93) = v92(v21);
      v41 = OUTLINED_FUNCTION_40_16();
LABEL_10:
      v42(v41);
LABEL_14:
      sub_26839B7DC(v1);
      goto LABEL_15;
    }

    if (v36 == *MEMORY[0x277D1C670])
    {
      v43 = OUTLINED_FUNCTION_5_53();
      v44(v43);
      v45 = OUTLINED_FUNCTION_6_41();
      v46(v45);
      if (v88)
      {

        v47 = sub_2683CEDB8();
        v88(&v93, v47);
        OUTLINED_FUNCTION_54_7();
        v48 = OUTLINED_FUNCTION_12_35();
        v49(v48);
        goto LABEL_14;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v56 = sub_2683CF7E8();
      v57 = OUTLINED_FUNCTION_14_33(v56, qword_28027C958);
      sub_26839B76C(v57, v3);
      v58 = sub_2683CF7C8();
      v59 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v59))
      {
        OUTLINED_FUNCTION_35_8();
        v93 = OUTLINED_FUNCTION_21_27();
        *v2 = 136315394;
        v60 = sub_2683B2A68(v11);
        sub_2681610A0(v60, v61, &v93);
        OUTLINED_FUNCTION_50_12();
        OUTLINED_FUNCTION_15_39();
        sub_26839B76C(v3, v82);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_42_15();
        sub_26839B7DC(v3);
        v62 = OUTLINED_FUNCTION_11_37();
        v65 = sub_2681610A0(v62, v63, v64);

        *(v2 + 14) = v65;
        OUTLINED_FUNCTION_22_25(&dword_2680EB000, v66, v59, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_47_7();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_3_16();

        (*(v91 + 8))(v90, v89);
      }

      else
      {

        sub_26839B7DC(v3);
        v78 = OUTLINED_FUNCTION_12_35();
        v79(v78);
      }
    }

    else
    {
      if (v36 != *MEMORY[0x277D1C668])
      {
        sub_26839B7DC(v1);
        v54 = OUTLINED_FUNCTION_18_37();
        v55(v54);
        goto LABEL_7;
      }

      v50 = OUTLINED_FUNCTION_5_53();
      v51(v50);
      v52 = OUTLINED_FUNCTION_17_27();
      v53(v52);
      if (v84)
      {

        v84(&v93, v86);
        sub_268128194(v84, v83);
        v41 = OUTLINED_FUNCTION_9_40();
        goto LABEL_10;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v67 = sub_2683CF7E8();
      v68 = OUTLINED_FUNCTION_14_33(v67, qword_28027C958);
      sub_26839B76C(v68, v2);
      v69 = sub_2683CF7C8();
      v70 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v70))
      {
        OUTLINED_FUNCTION_35_8();
        v93 = OUTLINED_FUNCTION_43_12();
        *v87 = 136315394;
        v71 = sub_2683B2A68(v11);
        v73 = sub_2681610A0(v71, v72, &v93);

        v74 = OUTLINED_FUNCTION_29_23();
        sub_26839B76C(v74, v82);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_44_15();
        v75 = sub_2681610A0(v82, v73, &v93);

        *(v87 + 14) = v75;
        OUTLINED_FUNCTION_36_17(&dword_2680EB000, v76, v77, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_46_10();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_25_0();

        (*(v87 + 8))(v86, v85);
      }

      else
      {

        sub_26839B7DC(v2);
        v80 = OUTLINED_FUNCTION_9_40();
        v81(v80);
      }
    }
  }

  sub_26839B7DC(v1);
LABEL_7:
  LOBYTE(v93) = 2;
LABEL_15:
  sub_26839B7DC(v0);
  OUTLINED_FUNCTION_29_0();
}

void sub_268399FE8()
{
  OUTLINED_FUNCTION_30_0();
  v100 = v4;
  v6 = v5;
  v89 = v8;
  v90 = v7;
  v95 = v10;
  v96 = v9;
  v97 = OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_0_3();
  v99 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_18();
  v98 = v13;
  OUTLINED_FUNCTION_3_8();
  sub_2683CEDA8();
  OUTLINED_FUNCTION_0_3();
  v91 = v15;
  v92 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_18();
  v94 = v16;
  OUTLINED_FUNCTION_3_8();
  v17 = sub_2683CF948();
  OUTLINED_FUNCTION_0_3();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_3();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_1();
  v93 = v25;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_56_3();
  v88 = v27;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_56_3();
  v87 = v29;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_39();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_20_38();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_41_12();
      break;
    case 2:
      OUTLINED_FUNCTION_55_5();
      break;
    default:
      break;
  }

  v33 = OUTLINED_FUNCTION_11_37();
  v35 = sub_2682DFB6C(v33, v34, v6);

  if (v35)
  {
    sub_2682B2AF0(v35);
  }

  else
  {
    v36 = sub_2683CEDD8();
    OUTLINED_FUNCTION_19_38(v36);
  }

  OUTLINED_FUNCTION_52_8();
  v37 = sub_2683CEDD8();
  if (__swift_getEnumTagSinglePayload(v0, 1, v37) == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_51_9();
  OUTLINED_FUNCTION_1_7();
  v38 = OUTLINED_FUNCTION_41_6();
  v40 = v39(v38);
  if (v40 == *MEMORY[0x277D1C680])
  {
    v41 = OUTLINED_FUNCTION_10_38();
    v42(v41);
    v43 = OUTLINED_FUNCTION_17_27();
    v44(v43);
    *&v101 = v100(v23);
    *(&v101 + 1) = v45;
    v102 = v46;
    v103 = v47;
    (*(v19 + 8))(v23, v17);
LABEL_18:
    sub_26839B7DC(v2);
    goto LABEL_19;
  }

  if (v40 == *MEMORY[0x277D1C670])
  {
    v48 = OUTLINED_FUNCTION_10_38();
    v49(v48);
    v50 = OUTLINED_FUNCTION_6_41();
    v51(v50);
    if (v96)
    {

      v52 = sub_2683CEDB8();
      v96(&v101, v52);
      sub_268128194(v96, v95);

      v53 = OUTLINED_FUNCTION_30_22();
      v54(v53);
      goto LABEL_18;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v61 = sub_2683CF7E8();
    v62 = OUTLINED_FUNCTION_14_33(v61, qword_28027C958);
    sub_26839B76C(v62, v93);
    v63 = sub_2683CF7C8();
    v64 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_13_37(v64))
    {
      OUTLINED_FUNCTION_35_8();
      *&v101 = OUTLINED_FUNCTION_21_27();
      *v93 = 136315394;
      v65 = 0xE500000000000000;
      v66 = 0x656C746974;
      switch(v3)
      {
        case 1:
          v65 = 0xE700000000000000;
          v66 = OUTLINED_FUNCTION_5_1();
          break;
        case 2:
          v65 = 0xE600000000000000;
          v66 = OUTLINED_FUNCTION_28_23();
          break;
        case 3:
          v65 = 0xE300000000000000;
          v66 = OUTLINED_FUNCTION_57_9();
          break;
        default:
          break;
      }

      sub_2681610A0(v66, v65, &v101);
      OUTLINED_FUNCTION_50_12();
      OUTLINED_FUNCTION_15_39();
      sub_26839B76C(v93, v88);
      sub_2683CFAD8();
      OUTLINED_FUNCTION_42_15();
      sub_26839B7DC(v93);
      v77 = OUTLINED_FUNCTION_11_37();
      sub_2681610A0(v77, v78, v79);
      OUTLINED_FUNCTION_53_8();
      *(v93 + 14) = v88;
      OUTLINED_FUNCTION_22_25(&dword_2680EB000, v80, v17, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
      OUTLINED_FUNCTION_59_6();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_3_16();

      (*(v99 + 8))(v98, v97);
    }

    else
    {

      sub_26839B7DC(v93);
      v73 = OUTLINED_FUNCTION_30_22();
      v74(v73);
    }
  }

  else
  {
    if (v40 != *MEMORY[0x277D1C668])
    {
      sub_26839B7DC(v2);
      v59 = OUTLINED_FUNCTION_41_6();
      v60(v59);
      goto LABEL_9;
    }

    v55 = OUTLINED_FUNCTION_10_38();
    v56(v55);
    (*(v91 + 32))(v94, v1, v92);
    if (v90)
    {

      v90(&v101, v94);
      sub_268128194(v90, v89);
      v57 = OUTLINED_FUNCTION_58_7();
      v58(v57, v92);
      goto LABEL_18;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v67 = sub_2683CF7E8();
    v68 = OUTLINED_FUNCTION_14_33(v67, qword_28027C958);
    sub_26839B76C(v68, v87);
    v69 = sub_2683CF7C8();
    v70 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_13_37(v70))
    {
      OUTLINED_FUNCTION_35_8();
      *&v101 = OUTLINED_FUNCTION_21_27();
      *v94 = 136315394;
      v71 = 0xE500000000000000;
      v72 = 0x656C746974;
      switch(v3)
      {
        case 1:
          v71 = 0xE700000000000000;
          v72 = OUTLINED_FUNCTION_5_1();
          break;
        case 2:
          v71 = 0xE600000000000000;
          v72 = OUTLINED_FUNCTION_28_23();
          break;
        case 3:
          v71 = 0xE300000000000000;
          v72 = OUTLINED_FUNCTION_57_9();
          break;
        default:
          break;
      }

      v81 = sub_2681610A0(v72, v71, &v101);

      *(v94 + 4) = v81;
      *(v94 + 12) = 2080;
      sub_26839B76C(v87, v88);
      v82 = sub_2683CFAD8();
      v84 = v83;
      sub_26839B7DC(v87);
      v85 = sub_2681610A0(v82, v84, &v101);

      *(v94 + 14) = v85;
      OUTLINED_FUNCTION_22_25(&dword_2680EB000, v86, OS_LOG_TYPE_DEFAULT, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
      OUTLINED_FUNCTION_59_6();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_3_16();

      v76 = *(v91 + 8);
      v75 = v94;
    }

    else
    {

      sub_26839B7DC(v87);
      v75 = OUTLINED_FUNCTION_58_7();
    }

    v76(v75, v92);
  }

LABEL_8:
  sub_26839B7DC(v2);
LABEL_9:
  v101 = xmmword_2683D4200;
  v102 = 0;
  v103 = 0;
LABEL_19:
  sub_26839B7DC(v0);
  OUTLINED_FUNCTION_29_0();
}

void sub_26839A824()
{
  OUTLINED_FUNCTION_30_0();
  v95 = v4;
  v6 = v5;
  v86 = v8;
  v87 = v7;
  v91 = v9;
  v11 = v10;
  v92 = sub_2683CEDC8();
  OUTLINED_FUNCTION_0_3();
  v94 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_18();
  v93 = v14;
  OUTLINED_FUNCTION_3_8();
  v88 = sub_2683CEDA8();
  OUTLINED_FUNCTION_0_3();
  v90 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_18();
  v89 = v17;
  OUTLINED_FUNCTION_3_8();
  sub_2683CF948();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_3();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_56_3();
  v85 = v24;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_27_20();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_39();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_20_38();
  v29 = sub_2683B2A68(v11);
  sub_2682DFB6C(v29, v30, v6);
  OUTLINED_FUNCTION_53_8();
  if (v6)
  {
    sub_2682B2AF0(v6);
  }

  else
  {
    v31 = sub_2683CEDD8();
    OUTLINED_FUNCTION_19_38(v31);
  }

  OUTLINED_FUNCTION_52_8();
  v32 = sub_2683CEDD8();
  OUTLINED_FUNCTION_35_21(v32);
  if (!v33)
  {
    OUTLINED_FUNCTION_51_9();
    OUTLINED_FUNCTION_1_7();
    v34 = OUTLINED_FUNCTION_18_37();
    v36 = v35(v34);
    if (v36 == *MEMORY[0x277D1C680])
    {
      v37 = OUTLINED_FUNCTION_5_53();
      v38(v37);
      v39 = OUTLINED_FUNCTION_6_41();
      v40(v39);
      *&v96 = v95(v21);
      *(&v96 + 1) = v41;
      v97 = v42;
      v98 = v43;
      v44 = OUTLINED_FUNCTION_40_16();
LABEL_10:
      v45(v44);
LABEL_14:
      sub_26839B7DC(v1);
      goto LABEL_15;
    }

    if (v36 == *MEMORY[0x277D1C670])
    {
      v46 = OUTLINED_FUNCTION_5_53();
      v47(v46);
      v48 = OUTLINED_FUNCTION_6_41();
      v49(v48);
      if (v91)
      {

        v50 = sub_2683CEDB8();
        v91(&v96, v50);
        OUTLINED_FUNCTION_54_7();
        v51 = OUTLINED_FUNCTION_12_35();
        v52(v51);
        goto LABEL_14;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v59 = sub_2683CF7E8();
      v60 = OUTLINED_FUNCTION_14_33(v59, qword_28027C958);
      sub_26839B76C(v60, v3);
      v61 = sub_2683CF7C8();
      v62 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v62))
      {
        OUTLINED_FUNCTION_35_8();
        *&v96 = OUTLINED_FUNCTION_21_27();
        *v2 = 136315394;
        v63 = sub_2683B2A68(v11);
        sub_2681610A0(v63, v64, &v96);
        OUTLINED_FUNCTION_50_12();
        OUTLINED_FUNCTION_15_39();
        sub_26839B76C(v3, v85);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_42_15();
        sub_26839B7DC(v3);
        v65 = OUTLINED_FUNCTION_11_37();
        v68 = sub_2681610A0(v65, v66, v67);

        *(v2 + 14) = v68;
        OUTLINED_FUNCTION_22_25(&dword_2680EB000, v69, v62, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_47_7();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_3_16();

        (*(v94 + 8))(v93, v92);
      }

      else
      {

        sub_26839B7DC(v3);
        v81 = OUTLINED_FUNCTION_12_35();
        v82(v81);
      }
    }

    else
    {
      if (v36 != *MEMORY[0x277D1C668])
      {
        sub_26839B7DC(v1);
        v57 = OUTLINED_FUNCTION_18_37();
        v58(v57);
        goto LABEL_7;
      }

      v53 = OUTLINED_FUNCTION_5_53();
      v54(v53);
      v55 = OUTLINED_FUNCTION_17_27();
      v56(v55);
      if (v87)
      {

        v87(&v96, v89);
        sub_268128194(v87, v86);
        v44 = OUTLINED_FUNCTION_9_40();
        goto LABEL_10;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v70 = sub_2683CF7E8();
      v71 = OUTLINED_FUNCTION_14_33(v70, qword_28027C958);
      sub_26839B76C(v71, v2);
      v72 = sub_2683CF7C8();
      v73 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v73))
      {
        OUTLINED_FUNCTION_35_8();
        *&v96 = OUTLINED_FUNCTION_43_12();
        *v90 = 136315394;
        v74 = sub_2683B2A68(v11);
        v76 = sub_2681610A0(v74, v75, &v96);

        v77 = OUTLINED_FUNCTION_29_23();
        sub_26839B76C(v77, v85);
        sub_2683CFAD8();
        OUTLINED_FUNCTION_44_15();
        v78 = sub_2681610A0(v85, v76, &v96);

        *(v90 + 14) = v78;
        OUTLINED_FUNCTION_36_17(&dword_2680EB000, v79, v80, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
        OUTLINED_FUNCTION_46_10();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_25_0();

        (*(v90 + 8))(v89, v88);
      }

      else
      {

        sub_26839B7DC(v2);
        v83 = OUTLINED_FUNCTION_9_40();
        v84(v83);
      }
    }
  }

  sub_26839B7DC(v1);
LABEL_7:
  v96 = xmmword_2683D4200;
  v97 = 0;
  v98 = 0;
LABEL_15:
  sub_26839B7DC(v0);
  OUTLINED_FUNCTION_29_0();
}

void sub_26839AF18()
{
  OUTLINED_FUNCTION_30_0();
  v98 = v4;
  v6 = v5;
  v87 = v8;
  v88 = v7;
  v93 = v10;
  v94 = v9;
  v95 = OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_0_3();
  v97 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_18();
  v96 = v13;
  OUTLINED_FUNCTION_3_8();
  sub_2683CEDA8();
  OUTLINED_FUNCTION_0_3();
  v89 = v15;
  v90 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_18();
  v92 = v16;
  OUTLINED_FUNCTION_3_8();
  v17 = sub_2683CF948();
  OUTLINED_FUNCTION_0_3();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_3();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_1();
  v91 = v25;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_56_3();
  v86 = v27;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_56_3();
  v85 = v29;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_20_31();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_39();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_20_38();
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_41_12();
      break;
    case 2:
      OUTLINED_FUNCTION_55_5();
      break;
    default:
      break;
  }

  v33 = OUTLINED_FUNCTION_11_37();
  v35 = sub_2682DFB6C(v33, v34, v6);

  if (v35)
  {
    sub_2682B2AF0(v35);
  }

  else
  {
    v36 = sub_2683CEDD8();
    OUTLINED_FUNCTION_19_38(v36);
  }

  OUTLINED_FUNCTION_52_8();
  v37 = sub_2683CEDD8();
  if (__swift_getEnumTagSinglePayload(v0, 1, v37) == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_51_9();
  OUTLINED_FUNCTION_1_7();
  v38 = OUTLINED_FUNCTION_41_6();
  v40 = v39(v38);
  if (v40 == *MEMORY[0x277D1C680])
  {
    v41 = OUTLINED_FUNCTION_10_38();
    v42(v41);
    v43 = OUTLINED_FUNCTION_17_27();
    v44(v43);
    v99 = v98(v23);
    v100 = v45;
    (*(v19 + 8))(v23, v17);
LABEL_18:
    sub_26839B7DC(v2);
    goto LABEL_19;
  }

  if (v40 == *MEMORY[0x277D1C670])
  {
    v46 = OUTLINED_FUNCTION_10_38();
    v47(v46);
    v48 = OUTLINED_FUNCTION_6_41();
    v49(v48);
    if (v94)
    {

      v50 = sub_2683CEDB8();
      v94(&v99, v50);
      sub_268128194(v94, v93);

      v51 = OUTLINED_FUNCTION_30_22();
      v52(v51);
      goto LABEL_18;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v59 = sub_2683CF7E8();
    v60 = OUTLINED_FUNCTION_14_33(v59, qword_28027C958);
    sub_26839B76C(v60, v91);
    v61 = sub_2683CF7C8();
    v62 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_13_37(v62))
    {
      OUTLINED_FUNCTION_35_8();
      v99 = OUTLINED_FUNCTION_21_27();
      *v91 = 136315394;
      v63 = 0xE500000000000000;
      v64 = 0x656C746974;
      switch(v3)
      {
        case 1:
          v63 = 0xE700000000000000;
          v64 = OUTLINED_FUNCTION_5_1();
          break;
        case 2:
          v63 = 0xE600000000000000;
          v64 = OUTLINED_FUNCTION_28_23();
          break;
        case 3:
          v63 = 0xE300000000000000;
          v64 = OUTLINED_FUNCTION_57_9();
          break;
        default:
          break;
      }

      sub_2681610A0(v64, v63, &v99);
      OUTLINED_FUNCTION_50_12();
      OUTLINED_FUNCTION_15_39();
      sub_26839B76C(v91, v86);
      sub_2683CFAD8();
      OUTLINED_FUNCTION_42_15();
      sub_26839B7DC(v91);
      v75 = OUTLINED_FUNCTION_11_37();
      sub_2681610A0(v75, v76, v77);
      OUTLINED_FUNCTION_53_8();
      *(v91 + 14) = v86;
      OUTLINED_FUNCTION_22_25(&dword_2680EB000, v78, v17, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
      OUTLINED_FUNCTION_60_4();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_3_16();

      (*(v97 + 8))(v96, v95);
    }

    else
    {

      sub_26839B7DC(v91);
      v71 = OUTLINED_FUNCTION_30_22();
      v72(v71);
    }
  }

  else
  {
    if (v40 != *MEMORY[0x277D1C668])
    {
      sub_26839B7DC(v2);
      v57 = OUTLINED_FUNCTION_41_6();
      v58(v57);
      goto LABEL_9;
    }

    v53 = OUTLINED_FUNCTION_10_38();
    v54(v53);
    (*(v89 + 32))(v92, v1, v90);
    if (v88)
    {

      v88(&v99, v92);
      sub_268128194(v88, v87);
      v55 = OUTLINED_FUNCTION_58_7();
      v56(v55, v90);
      goto LABEL_18;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v65 = sub_2683CF7E8();
    v66 = OUTLINED_FUNCTION_14_33(v65, qword_28027C958);
    sub_26839B76C(v66, v85);
    v67 = sub_2683CF7C8();
    v68 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_13_37(v68))
    {
      OUTLINED_FUNCTION_35_8();
      v99 = OUTLINED_FUNCTION_21_27();
      *v92 = 136315394;
      v69 = 0xE500000000000000;
      v70 = 0x656C746974;
      switch(v3)
      {
        case 1:
          v69 = 0xE700000000000000;
          v70 = OUTLINED_FUNCTION_5_1();
          break;
        case 2:
          v69 = 0xE600000000000000;
          v70 = OUTLINED_FUNCTION_28_23();
          break;
        case 3:
          v69 = 0xE300000000000000;
          v70 = OUTLINED_FUNCTION_57_9();
          break;
        default:
          break;
      }

      v79 = sub_2681610A0(v70, v69, &v99);

      *(v92 + 4) = v79;
      *(v92 + 12) = 2080;
      sub_26839B76C(v85, v86);
      v80 = sub_2683CFAD8();
      v82 = v81;
      sub_26839B7DC(v85);
      v83 = sub_2681610A0(v80, v82, &v99);

      *(v92 + 14) = v83;
      OUTLINED_FUNCTION_22_25(&dword_2680EB000, v84, OS_LOG_TYPE_DEFAULT, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s");
      OUTLINED_FUNCTION_60_4();
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_3_16();

      v74 = *(v89 + 8);
      v73 = v92;
    }

    else
    {

      sub_26839B7DC(v85);
      v73 = OUTLINED_FUNCTION_58_7();
    }

    v74(v73, v90);
  }

LABEL_8:
  sub_26839B7DC(v2);
LABEL_9:
  v99 = 0;
  v100 = 0;
LABEL_19:
  sub_26839B7DC(v0);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26839B76C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26839B7DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26839B844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_19_38(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_27()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_22_25(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_29_23()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2080;
  return v0;
}

void OUTLINED_FUNCTION_36_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_43_12()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_44_15()
{

  return sub_26839B7DC(v0);
}

uint64_t OUTLINED_FUNCTION_45_8()
{

  return sub_2683CEDC8();
}

uint64_t OUTLINED_FUNCTION_46_10()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_47_7()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_50_12()
{
}

uint64_t OUTLINED_FUNCTION_51_9()
{

  return sub_26839B76C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_52_8()
{

  return sub_26839B76C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_53_8()
{
}

uint64_t OUTLINED_FUNCTION_54_7()
{
  sub_268128194(v1, v0);
}

uint64_t OUTLINED_FUNCTION_59_6()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_60_4()
{

  return swift_arrayDestroy();
}

uint64_t sub_26839BC14(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Snippet(0);
  if (__swift_getEnumTagSinglePayload(a2, 1, v3) != 1)
  {
    return 2;
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v4 = sub_2683CF7E8();
  __swift_project_value_buffer(v4, qword_28027C958);
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    MEMORY[0x26D617A40](v7, -1, -1);
  }

  return 1;
}

uint64_t sub_26839BD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  v51 = a7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  MEMORY[0x28223BE20](v17 - 8);
  v52 = &v44 - v18;
  v53 = sub_2683CC1D8();
  OUTLINED_FUNCTION_0_3();
  v49 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_1();
  v48 = v21;
  MEMORY[0x28223BE20](v22);
  v47 = &v44 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v44 - v25;
  v27 = sub_2683CED08();
  OUTLINED_FUNCTION_0_3();
  v46 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_1();
  v45 = v30;
  MEMORY[0x28223BE20](v31);
  v44 = &v44 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v44 - v34;
  sub_2683CC928();
  if (!a4)
  {
  }

  v50 = a13;

  sub_2683CC918();
  sub_26812C2A8(v51, v35, &qword_28024D400, &qword_2683D2460);
  sub_2683CC938();
  if (a8 == 2)
  {
    sub_2683CC958();
  }

  v36 = sub_2683CC968();
  if (a9 == 2 && a10(v36) == 2)
  {
    sub_2683CC988();
  }

  sub_2683CC998();

  sub_2683CC948();
  sub_26812C2A8(v50, v26, &qword_28024D588, &unk_2683D8DB0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_26812C310(v26, &qword_28024D588, &unk_2683D8DB0);
  }

  else
  {
    v37 = v46;
    v38 = v44;
    (*(v46 + 32))(v44, v26, v27);
    (*(v37 + 16))(v45, v38, v27);
    sub_2683CC8F8();
    (*(v37 + 8))(v38, v27);
  }

  v39 = v53;
  if (a14 != 2)
  {
    sub_2683CC978();
  }

  v40 = v52;
  sub_26812C2A8(a15, v52, &unk_28024E760, &unk_2683D2BF0);
  if (__swift_getEnumTagSinglePayload(v40, 1, v39) == 1)
  {
    return sub_26812C310(v40, &unk_28024E760, &unk_2683D2BF0);
  }

  v42 = v49;
  v43 = v47;
  (*(v49 + 32))(v47, v40, v39);
  (*(v42 + 16))(v48, v43, v39);
  sub_2683CC908();
  return (*(v42 + 8))(v43, v39);
}

uint64_t sub_26839C208()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v0;
  v2 = sub_2683CC598();
  v1[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_15_1();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26839C2AC()
{
  OUTLINED_FUNCTION_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 48) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_16_34(v1);

  return sub_268195ED4();
}

uint64_t sub_26839C338()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_26832FE78;
  }

  else
  {
    v7 = sub_26839C434;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26839C434()
{
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2681A1544();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_18_38();

  return v7(v4, v6);
}

uint64_t sub_26839C4D4()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v0;
  v2 = sub_2683CC598();
  v1[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_15_1();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26839C578()
{
  OUTLINED_FUNCTION_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 48) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_16_34(v1);

  return sub_26819642C();
}

uint64_t sub_26839C604()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_26839E544;
  }

  else
  {
    v7 = sub_26839E540;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26839C700()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v0;
  v2 = sub_2683CC598();
  v1[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_15_1();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26839C7A4()
{
  OUTLINED_FUNCTION_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 48) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_16_34(v1);

  return sub_268196380();
}

uint64_t sub_26839C830()
{
  OUTLINED_FUNCTION_14();
  v1[199] = v0;
  v1[193] = v2;
  v1[187] = v3;
  v4 = type metadata accessor for SnippetFormatter(0);
  OUTLINED_FUNCTION_3_1(v4);
  v1[205] = v5;
  v1[211] = *(v6 + 64);
  v1[217] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26839C8F4()
{
  v1 = v0[223];
  v2 = v0[217];
  v3 = v0[211];
  v4 = v0[205];
  v5 = v0[199];
  v6 = v0[193];
  v7 = v0[187];
  v8 = [v7 temporalEventTrigger];
  v9 = sub_26839D0D0(v8);
  v20 = v10;
  v21 = v9;
  v11 = v10;

  v0[224] = v11;
  sub_268203294(v5, v1);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = (v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v0[225] = v14;
  sub_26839DA30(v1, v14 + v12);
  *(v14 + v13) = v7;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
  swift_asyncLet_begin();
  sub_268203294(v5, v2);
  v16 = swift_allocObject();
  v0[226] = v16;
  sub_26839DA30(v2, v16 + v12);
  *(v16 + v13) = v6;
  v17 = v6;
  swift_asyncLet_begin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F318, &unk_2683DB7F0);
  inited = swift_initStackObject();
  v0[227] = inited;
  *(inited + 16) = xmmword_2683D1ED0;
  *(inited + 32) = v21;
  *(inited + 40) = v20;

  return MEMORY[0x282200930](v0 + 2);
}

uint64_t sub_26839CAFC()
{
  *(v1 + 1824) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_1(sub_26839CE60);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_26839CB28);
  }
}

uint64_t sub_26839CB28()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[227];
  v2 = v0[177];
  v3 = v0[178];
  v0[229] = v3;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;

  v4 = OUTLINED_FUNCTION_8_42();

  return MEMORY[0x282200930](v4);
}

uint64_t sub_26839CB98()
{
  *(v1 + 1840) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_1(sub_26839CF94);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_26839CBC4);
  }
}

uint64_t sub_26839CBC4()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[227];
  v2 = v0[180];
  *(v1 + 64) = v0[179];
  *(v1 + 72) = v2;

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v4 - 1;
  v7 = 16 * v4;
  while (v6 != 2)
  {
    if (++v6 > 2)
    {
      __break(1u);
      return MEMORY[0x282200920](isUniquelyReferenced_nonNull_native);
    }

    v8 = v7 + 16;
    v9 = v0[227];
    v10 = *(v9 + v7 + 40);
    v7 += 16;
    if (v10)
    {
      v11 = *(v9 + v8 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2682E4728(0, *(v5 + 16) + 1, 1, v5);
        v5 = isUniquelyReferenced_nonNull_native;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2682E4728(v12 > 1, v13 + 1, 1, v5);
        v5 = isUniquelyReferenced_nonNull_native;
      }

      v4 = v6 + 1;
      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_2681F55E4();
  v0[181] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2681D8BC0();
  v15 = sub_2683CFA38();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    v15 = 0;
    v17 = 0;
  }

  v0[232] = v17;
  v0[231] = v15;
  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_8_42();

  return MEMORY[0x282200920](isUniquelyReferenced_nonNull_native);
}

uint64_t sub_26839CDD0()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_18_38();
  v2 = *(v0 + 1856);
  v3 = *(v0 + 1848);

  return v1(v3, v2);
}

uint64_t sub_26839CE60()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 1816);

  *(v1 + 16) = 0;
  swift_setDeallocating();
  sub_2681F55E4();
  v2 = OUTLINED_FUNCTION_8_42();

  return MEMORY[0x282200920](v2);
}

uint64_t sub_26839CF1C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22_26();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_26839CF94()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 1816);

  *(v1 + 16) = 0;
  swift_setDeallocating();
  sub_2681F55E4();
  v2 = OUTLINED_FUNCTION_8_42();

  return MEMORY[0x282200920](v2);
}

uint64_t sub_26839D058()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22_26();

  OUTLINED_FUNCTION_40();

  return v0();
}

void *sub_26839D0D0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_2683CB528();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    v12 = [v11 dateComponentsRange];
    sub_26836116C();
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {

      sub_2681433DC(v6, &qword_28024DB08, qword_2683D5760);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v13 = *(v2 + *(type metadata accessor for SnippetFormatter(0) + 32));
      v14 = sub_2683CB5D8();
      [v13 setLocale_];

      if (sub_2683CB688() & 1) != 0 || (sub_2683CB6F8() & 1) != 0 || (v15 = sub_2683CB708(), (v15))
      {
        v23 = [v13 setDateStyle_];
        sub_2683623F0(v23, v24, v25, v26, v27, v28, v29, v30, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
        [v13 setTimeStyle_];
        [v13 setDoesRelativeDateFormatting_];
      }

      else
      {
        sub_2683623F0(v15, v16, v17, v18, v19, v20, v21, v22, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
        v36 = (v35 & 1) == 0;
        if (v35)
        {
          v37 = 0x61206D6D3A6820;
        }

        else
        {
          v37 = 0;
        }

        if (v36)
        {
          v38 = 0xE000000000000000;
        }

        else
        {
          v38 = 0xE700000000000000;
        }

        v40 = 0x64642F4D4DLL;
        v41 = 0xE500000000000000;
        MEMORY[0x26D616690](v37, v38);

        v39 = sub_2683CFA68();

        [v13 setLocalizedDateFormatFromTemplate_];
      }

      v32 = sub_2683CB4A8();
      v33 = [v13 stringFromDate_];

      a1 = sub_2683CFA78();
      (*(v8 + 8))(v10, v7);
    }
  }

  return a1;
}

uint64_t type metadata accessor for SnippetFormatter(uint64_t a1)
{
  result = qword_280254228;
  if (!qword_280254228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26839D48C(uint64_t a1)
{
  type metadata accessor for NotebookBaseCATs(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NotebookLabelsV2CATs(319);
    if (v2 <= 0x3F)
    {
      sub_26839D570(319);
      if (v3 <= 0x3F)
      {
        sub_2683CB668();
        if (v4 <= 0x3F)
        {
          sub_26839D5C8();
          if (v5 <= 0x3F)
          {
            sub_2683CB7A8();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26839D570(uint64_t a1)
{
  if (!qword_280254238)
  {
    sub_2683CF098();
    v1 = sub_2683CFFA8();
    if (!v2)
    {
      atomic_store(v1, &qword_280254238);
    }
  }
}

unint64_t sub_26839D5C8()
{
  result = qword_280254240;
  if (!qword_280254240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280254240);
  }

  return result;
}

uint64_t sub_26839D60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2683CC598();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26839D6D0);
}

uint64_t sub_26839D6D0()
{
  OUTLINED_FUNCTION_7();
  v1 = [*(v0 + 32) spatialEventTrigger];
  *(v0 + 64) = v1;
  if (v1)
  {
    type metadata accessor for NotebookSpatialEventTriggerConcept(0);
    v2 = sub_268163274(v1);
    *(v0 + 72) = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 80) = v3;
    *v3 = v4;
    v3[1] = sub_26839D7F8;
    v5 = *(v0 + 56);

    return sub_26815F788(v5, v2);
  }

  else
  {
    v7 = *(v0 + 16);
    *v7 = 0;
    v7[1] = 0;

    OUTLINED_FUNCTION_40();

    return v8();
  }
}

uint64_t sub_26839D7F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_26839D9B4;
  }

  else
  {
    v7 = sub_26839D8F4;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26839D8F4()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_2681A1544();
  v7 = v6;

  (*(v3 + 8))(v2, v4);
  v8 = v0[2];
  *v8 = v5;
  v8[1] = v7;

  OUTLINED_FUNCTION_40();

  return v9();
}

uint64_t sub_26839D9B4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26839DA30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetFormatter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26839DA94()
{
  OUTLINED_FUNCTION_7();
  v0 = type metadata accessor for SnippetFormatter(0);
  OUTLINED_FUNCTION_3_1(v0);
  OUTLINED_FUNCTION_21_28();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_6_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_39(v2);

  return sub_26839D60C(v4, v5, v6);
}

uint64_t sub_26839DB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_26839DC14;

  return sub_26839DFB0();
}

uint64_t sub_26839DC14()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_42();
  v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;

  if (v0)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;

    return MEMORY[0x2822009F8](sub_26839DD60);
  }
}

uint64_t sub_26839DD60()
{
  *v0[1].i64[0] = vextq_s8(v0[2], v0[2], 8uLL);
  OUTLINED_FUNCTION_40();
  return v1();
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for SnippetFormatter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[9];
  sub_2683CB668();
  OUTLINED_FUNCTION_0_9();
  (*(v7 + 8))(v5 + v6);

  v8 = v1[11];
  sub_2683CB7A8();
  OUTLINED_FUNCTION_0_9();
  (*(v9 + 8))(v5 + v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_26839DED0()
{
  OUTLINED_FUNCTION_7();
  v0 = type metadata accessor for SnippetFormatter(0);
  OUTLINED_FUNCTION_3_1(v0);
  OUTLINED_FUNCTION_21_28();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_6_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_39(v2);

  return sub_26839DB74(v4, v5, v6);
}

uint64_t sub_26839DFB0()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2683CC598();
  v1[4] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_15_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v1[7] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CB668();
  v1[8] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_15_1();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26839E0D0()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[2];
  if (v1 && (v2 = [v1 triggerContact], (v0[11] = v2) != 0))
  {
    v3 = v2;
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    v7 = v0[3];
    sub_2683CEF98();
    v8 = type metadata accessor for SnippetFormatter(0);
    (*(v5 + 16))(v4, v7 + *(v8 + 28), v6);
    v9 = v3;
    v10 = sub_2683CEF78();
    v0[12] = v10;
    v11 = v0[7];
    if (v10)
    {
      v12 = *(v0[3] + 16);

      sub_2683CEF68();

      sub_2683CEF88();
    }

    else
    {
      v15 = sub_2683CF168();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[13] = v16;
    *v16 = v17;
    v16[1] = sub_26839E2B8;

    return sub_26815F10C();
  }

  else
  {

    OUTLINED_FUNCTION_18_38();

    return v13(0, 0);
  }
}

uint64_t sub_26839E2B8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  if (v0)
  {
    v7 = sub_26839E49C;
  }

  else
  {
    v7 = sub_26839E3B4;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26839E3B4()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = sub_2681A1544();
  v8 = v7;

  (*(v5 + 8))(v2, v4);
  sub_2681433DC(v3, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_18_38();

  return v9(v6, v8);
}

uint64_t sub_26839E49C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 56);

  sub_2681433DC(v1, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t OUTLINED_FUNCTION_22_26()
{
}

void sub_26839E5C0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v10 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v10 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v21 = sub_2683CF7E8();
      __swift_project_value_buffer(v21, qword_28027C958);
      v17 = sub_2683CF7C8();
      v18 = sub_2683CFE78();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_24;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "[SetTaskAttributeDirectInvocationIntentWrapper] Need either task title or task ID! Returning nil";
      goto LABEL_23;
    }
  }

  v11 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v16 = sub_2683CF7E8();
    __swift_project_value_buffer(v16, qword_28027C958);
    v17 = sub_2683CF7C8();
    v18 = sub_2683CFE78();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_24;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "[SetTaskAttributeDirectInvocationIntentWrapper] No appId! Returning nil";
LABEL_23:
    _os_log_impl(&dword_2680EB000, v17, v18, v20, v19, 2u);
    OUTLINED_FUNCTION_38();
LABEL_24:

    v4 = 0;
    v6 = 0;
    v5 = 0;
    v8 = 0;
    v7 = 0;
    v3 = 1;
    goto LABEL_25;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v12 = sub_2683CF7E8();
  __swift_project_value_buffer(v12, qword_28027C958);
  v13 = sub_2683CF7C8();
  v14 = sub_2683CFE58();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2680EB000, v13, v14, "[SetTaskAttributeDirectInvocationIntentWrapper] Created", v15, 2u);
    OUTLINED_FUNCTION_38();
  }

  v23[0] = v4;
  v23[1] = v3;
  v23[2] = v6;
  v23[3] = v5;
  v23[4] = v8;
  v23[5] = v7;
  v23[6] = 0;
  v23[7] = 0;
  v24[0] = v4;
  v24[1] = v3;
  v24[2] = v6;
  v24[3] = v5;
  v24[4] = v8;
  v24[5] = v7;
  v24[6] = 0;
  v24[7] = 0;
  sub_26839E898(v23, v22);
  sub_26839E8D0(v24);
LABEL_25:
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v8;
  a2[5] = v7;
  a2[6] = 0;
  a2[7] = 0;
}

uint64_t sub_26839E900()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26839E9A8);
}

uint64_t sub_26839E9A8()
{
  v37 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v4 = *v3;
  v5 = v3[1];

  sub_2681BABB8(v4, v5);
  v6 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
  v7 = v3[2];

  v8 = OUTLINED_FUNCTION_1_67();
  sub_26835E66C(v8, v9, v10, v11, v12, v1, v2, v7, v35, 0, 0, 0, 0, 0);
  v13 = objc_allocWithZone(MEMORY[0x277CD4108]);
  v14 = OUTLINED_FUNCTION_1_67();
  v19 = sub_2683882E8(v14, v15, v16, v17, v18, 0);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v20 = sub_2683CF7E8();
  __swift_project_value_buffer(v20, qword_28027C958);
  v21 = v19;
  v22 = sub_2683CF7C8();
  v23 = sub_2683CFE58();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 136315138;
    v26 = v21;
    v27 = [v26 description];
    v28 = sub_2683CFA78();
    v30 = v29;

    v31 = sub_2681610A0(v28, v30, &v36);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_2680EB000, v22, v23, "[SetTaskAttributeDirectInvocationIntentWrapper] Intent: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v32 = sub_26821AD1C();

  v33 = v0[1];

  return v33(v32);
}

uint64_t sub_26839EC64()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  v3 = v0[3];
  *(v1 + 48) = v0[2];
  *(v1 + 64) = v3;
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v4[1] = sub_26839ED08;

  return sub_26839E900();
}

uint64_t sub_26839ED08(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_26839EE08()
{
  v1 = v0[4];
  sub_26839EE8C(v1, v0[5], v0[6], v0[7]);
  return v1;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook5NLAppVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_26839EE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void *sub_26839EEEC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v7 = a2 + 32;
    do
    {
      sub_26813CA00(v7, v18);
      v8 = v19;
      v9 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      (*(v9 + 8))(v8, v9);
      __swift_destroy_boxed_opaque_existential_0(v18);
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v7 += 40;
      --v4;
    }

    while (v4);
    v5 = v21;
  }

  v10 = sub_268229348();
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
LABEL_15:
    sub_26839F748(v11, a1, &qword_280254268, 0x277D4C1A0, &selRef_setCommands_);
    v18[0] = v5;

    sub_2682C01E0(v16);
    v17 = a1;
    return a1;
  }

  v18[0] = MEMORY[0x277D84F90];
  result = sub_2683D0228();
  if (v10 < 0)
  {
    goto LABEL_18;
  }

  v13 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D616C90](v13, v5);
      goto LABEL_13;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v14 = *(v5 + 8 * v13 + 32);
LABEL_13:
    v15 = v14;
    ++v13;
    sub_2683CC218();

    sub_2683D01F8();
    sub_2683D0238();
    sub_2683D0248();
    result = sub_2683D0208();
    if (v10 == v13)
    {
      v11 = v18[0];
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

id sub_26839F0F8(uint64_t a1)
{
  v2 = sub_2683CB598();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);

  v7 = sub_2683CF7C8();
  v8 = sub_2683CFE98();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v27 = v10;
    *v9 = 136315138;
    v11 = MEMORY[0x26D6167A0](a1, &type metadata for CasinoCards.SectionData);
    v13 = sub_2681610A0(v11, v12, &v27);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2680EB000, v7, v8, "Making casino card with sections: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D617A40](v10, -1, -1);
    MEMORY[0x26D617A40](v9, -1, -1);
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    *&v27 = MEMORY[0x277D84F90];
    sub_2683D0228();
    v17 = (a1 + 32);
    do
    {
      v18 = *v17;
      v17 += 2;
      v19 = v18;
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      --v15;
    }

    while (v15);
    v16 = v27;
  }

  sub_26839F748(v16, v14, &qword_280254260, 0x277D4C238, &selRef_setCardSections_);
  sub_2683CB588();
  v20 = sub_2683CB548();
  v22 = v21;
  (*(v3 + 8))(v5, v2);
  sub_26839F7CC(v20, v22, v14);
  v26[1] = &type metadata for CasinoCards;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254248, &qword_2683F7160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254250, &qword_2683F7168);
  if (swift_dynamicCast())
  {
    v23 = *(&v28 + 1);
    v24 = v29;
    __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    sub_26839F45C(v14, v23, v24);
    __swift_destroy_boxed_opaque_existential_0(&v27);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_26839F830(&v27);
  }

  return v14;
}

void sub_26839F45C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v7 = v6(a2, a3);
  v8 = [v7 backingStore];

  v9 = [v8 data];
  if (v9)
  {
    v10 = sub_2683CB468();
    v12 = v11;

    v9 = sub_2683CB448();
    sub_268143054(v10, v12);
  }

  [a1 setIntentMessageData_];

  v13 = v6(a2, a3);
  v14 = [v13 typeName];

  if (!v14)
  {
    sub_2683CFA78();
    v14 = sub_2683CFA68();
  }

  [a1 setIntentMessageName_];

  v15 = *(a3 + 40);
  v16 = v15(a2, a3);
  v17 = [v16 backingStore];

  if (v17)
  {
    v18 = [v17 data];

    if (v18)
    {
      v19 = sub_2683CB468();
      v21 = v20;

      v22 = sub_2683CB448();
      sub_268143054(v19, v21);
    }

    else
    {
      v22 = 0;
    }

    [a1 setIntentResponseMessageData_];

    v23 = v15(a2, a3);
    v24 = [v23 _payloadResponseTypeName];

    [a1 setIntentResponseMessageName_];
  }

  else
  {
    __break(1u);
  }
}

id sub_26839F6D0(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  if (a2)
  {
    a2 = sub_2683CFA68();
  }

  [v3 setApplicationBundleIdentifier_];

  return v3;
}

void sub_26839F748(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_268129504(0, a3, a4);
  v7 = sub_2683CFC98();

  [a2 *a5];
}

void sub_26839F7CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setCardId_];
}

uint64_t sub_26839F830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254258, &qword_2683F7170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ViewCreationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_26839F968()
{
  result = qword_280254270;
  if (!qword_280254270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254270);
  }

  return result;
}

void Entity<A>.init(_:)()
{
  OUTLINED_FUNCTION_30_0();
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v12 = OUTLINED_FUNCTION_23(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_8_0();
  v14 = MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_78_3(v14, v15, v16, v17, v18, v19, v20, v21, v427);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252BB0, &qword_2683EBA68);
  v23 = OUTLINED_FUNCTION_23(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_156_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_157_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v26 = OUTLINED_FUNCTION_23(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_29_18();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v29 = OUTLINED_FUNCTION_23(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_20_38();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v32 = OUTLINED_FUNCTION_23(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_106_4();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A68, &qword_2683E9B98);
  v35 = OUTLINED_FUNCTION_23(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_1();
  v455 = v36;
  OUTLINED_FUNCTION_8_0();
  v38 = MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_67_6(v38, v39, v40, v41, v42, v43, v44, v45, v428);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252978, &qword_2683E8A08);
  v47 = OUTLINED_FUNCTION_23(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_1();
  v452 = v48;
  OUTLINED_FUNCTION_8_0();
  v50 = MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_37_13(v50, v51, v52, v53, v54, v55, v56, v57, v429);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529F0, &qword_2683E91D8);
  v59 = OUTLINED_FUNCTION_23(v58);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_1();
  v449 = v60;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_105_2();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v63 = OUTLINED_FUNCTION_23(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_2_1();
  v446 = v64;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_98_5();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v67 = OUTLINED_FUNCTION_23(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_1();
  v442 = v68;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_128_2();
  v460 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E430, &qword_2683D6CB8);
  OUTLINED_FUNCTION_0_3();
  v457 = v70;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_5_0();
  v458 = v72;
  v73 = [v8 temporalEventTrigger];
  v463 = v0;
  v459 = v3;
  v456 = v6;
  v461 = v4;
  v439 = v8;
  if (v73)
  {
    v74 = v73;
    Entity<A>.init(_:)(v74, v75, v76, v77, v78, v79, v80, v81, v430, v431, v432, v74, v2, v5, v8, v442, v446, v449, v452, v455);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
    v82 = OUTLINED_FUNCTION_52_9();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    v86 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529F8, &qword_2683E9208);
    v90 = OUTLINED_FUNCTION_0_51();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252980, &qword_2683E8A38);
    v94 = OUTLINED_FUNCTION_35_22();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
    v98 = [v8 title];
    v99 = [v98 spokenPhrase];

    v433 = sub_2683CFA78();
    v101 = v100;

    (*(v457 + 16))(v465, v458, v460);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    v105 = v1;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v110 = OUTLINED_FUNCTION_47_8();
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    v114 = OUTLINED_FUNCTION_43_13();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v117);
    v118 = v6;
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE8, &qword_2683E6520);
    v120 = OUTLINED_FUNCTION_40_17();
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v123 = OUTLINED_FUNCTION_34_20();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
    if (qword_28024CAD8 != -1)
    {
      OUTLINED_FUNCTION_242_0(&qword_28024CAD8);
    }

    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252668, &qword_2683E6E40);
    OUTLINED_FUNCTION_72_3(v127, qword_280252380);
    v128 = OUTLINED_FUNCTION_256_0();
    type metadata accessor for Common.Reminder(v128);
    OUTLINED_FUNCTION_164_1();
    swift_getKeyPath();
    sub_26831A8D8(v2, v443, &qword_280252718, &qword_2683E71B0);
    OUTLINED_FUNCTION_8_43();
    sub_2683ABDA4(v129, v130, &protocol conformance descriptor for Common.Reminder);
    OUTLINED_FUNCTION_5_54();
    sub_2683ABDA4(v131, v132, &protocol conformance descriptor for Common.Person);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v118, v447, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_4_56();
    sub_2683ABDA4(v133, v134, &protocol conformance descriptor for Common.DateTime);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_34();
    sub_2683ABDA4(v135, v136, &protocol conformance descriptor for Common.Attachment);
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2D8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2D8();
    swift_getKeyPath();
    sub_26831A8D8(v461, v450, &qword_2802529F0, &qword_2683E91D8);
    OUTLINED_FUNCTION_59_7();
    sub_2683ABDA4(v137, v138, &protocol conformance descriptor for Common.CompletionStatus);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v464, v453, &qword_280252978, &qword_2683E8A08);
    OUTLINED_FUNCTION_13_40();
    sub_2683ABDA4(v139, v140, &protocol conformance descriptor for Common.ReminderList);
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_185_1(v433, v101, KeyPath);
    swift_getKeyPath();
    v142 = OUTLINED_FUNCTION_28_24();
    OUTLINED_FUNCTION_185_1(v142, v143, v144);
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_40();
    sub_2683ABDA4(v145, v146, &protocol conformance descriptor for Common.EventTrigger);
    OUTLINED_FUNCTION_151_2();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2D8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_120_4();
    sub_26831A8D8(v147, v148, v149, v150);
    OUTLINED_FUNCTION_27_21();
    sub_2683CE2B8();
    swift_getKeyPath();
    v151 = OUTLINED_FUNCTION_87_5();
    sub_26831A8D8(v151, v152, v153, v154);
    OUTLINED_FUNCTION_3_56();
    sub_2683ABDA4(v155, v156, &protocol conformance descriptor for Common.App);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_69_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_123_3();
    sub_26831A8D8(v157, v158, v159, v160);
    OUTLINED_FUNCTION_2_65();
    sub_2683ABDA4(v161, v162, &protocol conformance descriptor for Common.ListPosition);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_69_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_183_1(v3, v163, &qword_280252690, &qword_2683E6E68);
    OUTLINED_FUNCTION_1_68();
    sub_2683ABDA4(v164, v165, &protocol conformance descriptor for Common.Quantifier);
    OUTLINED_FUNCTION_36_14();
    OUTLINED_FUNCTION_69_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_182_1(v437, v166, &qword_280252BB0, &qword_2683EBA68);
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_149_1();
    sub_26831A8D8(v167, v168, v169, &qword_2683E6E58);
    OUTLINED_FUNCTION_0_75();
    sub_2683ABDA4(v170, v171, &protocol conformance descriptor for Common.SearchQualifier);
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();

    OUTLINED_FUNCTION_102_2();
    sub_26812C310(v172, v173, v174);
    sub_26812C310(v437, &qword_280252BB0, &qword_2683EBA68);
    sub_26812C310(v3, &qword_280252690, &qword_2683E6E68);
    v175 = v105;
    goto LABEL_14;
  }

  v176 = [v8 spatialEventTrigger];
  if (v176)
  {
    v177 = v176;
    Entity<A>.init(_:)(v177, v178, v179, v180, v181, v182, v183, v184, v430, v1, v177, v10, v2, v5, v8, v442, v446, v449, v452, v455);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
    v185 = OUTLINED_FUNCTION_52_9();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    v189 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v189, v190, v191, v192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529F8, &qword_2683E9208);
    v193 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v193, v194, v195, v196);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252980, &qword_2683E8A38);
    v197 = OUTLINED_FUNCTION_53_9();
    __swift_storeEnumTagSinglePayload(v197, v198, v199, v200);
    v201 = [v8 title];
    v202 = [v201 spokenPhrase];

    v203 = sub_2683CFA78();
    v205 = v204;

    v206 = OUTLINED_FUNCTION_137_2();
    v207(v206);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v208, v209, v210, v202);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    v211 = OUTLINED_FUNCTION_52_9();
    __swift_storeEnumTagSinglePayload(v211, v212, v213, v214);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v215 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v215, v216, v217, v218);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v219, v220, v221, v222);
    v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE8, &qword_2683E6520);
    v224 = OUTLINED_FUNCTION_40_17();
    __swift_storeEnumTagSinglePayload(v224, v225, v226, v223);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v227 = OUTLINED_FUNCTION_34_20();
    __swift_storeEnumTagSinglePayload(v227, v228, v229, v230);
    if (qword_28024CAD8 != -1)
    {
      OUTLINED_FUNCTION_242_0(&qword_28024CAD8);
    }

    v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252668, &qword_2683E6E40);
    OUTLINED_FUNCTION_72_3(v231, qword_280252380);
    v232 = OUTLINED_FUNCTION_256_0();
    type metadata accessor for Common.Reminder(v232);
    OUTLINED_FUNCTION_172_2();
    OUTLINED_FUNCTION_150_2();
    sub_2683CE298();
    swift_getKeyPath();
    sub_26831A8D8(v2, v444, &qword_280252718, &qword_2683E71B0);
    OUTLINED_FUNCTION_8_43();
    sub_2683ABDA4(v233, v234, &protocol conformance descriptor for Common.Reminder);
    OUTLINED_FUNCTION_5_54();
    sub_2683ABDA4(v235, v236, &protocol conformance descriptor for Common.Person);
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    v237 = v456;
LABEL_13:
    sub_26831A8D8(v237, v448, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_4_56();
    sub_2683ABDA4(v298, v299, &protocol conformance descriptor for Common.DateTime);
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_34();
    sub_2683ABDA4(v300, v301, &protocol conformance descriptor for Common.Attachment);
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2D8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2D8();
    swift_getKeyPath();
    sub_26831A8D8(v461, v451, &qword_2802529F0, &qword_2683E91D8);
    OUTLINED_FUNCTION_59_7();
    sub_2683ABDA4(v302, v303, &protocol conformance descriptor for Common.CompletionStatus);
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v464, v454, &qword_280252978, &qword_2683E8A08);
    OUTLINED_FUNCTION_13_40();
    sub_2683ABDA4(v304, v305, &protocol conformance descriptor for Common.ReminderList);
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    v306 = swift_getKeyPath();
    OUTLINED_FUNCTION_185_1(v203, v205, v306);
    swift_getKeyPath();
    v307 = OUTLINED_FUNCTION_28_24();
    OUTLINED_FUNCTION_185_1(v307, v308, v309);
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_40();
    sub_2683ABDA4(v310, v311, &protocol conformance descriptor for Common.EventTrigger);
    OUTLINED_FUNCTION_151_2();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2D8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_120_4();
    sub_26831A8D8(v312, v313, v314, v315);
    OUTLINED_FUNCTION_27_21();
    sub_2683CE2B8();
    swift_getKeyPath();
    v316 = OUTLINED_FUNCTION_87_5();
    sub_26831A8D8(v316, v317, v318, v319);
    OUTLINED_FUNCTION_3_56();
    sub_2683ABDA4(v320, v321, &protocol conformance descriptor for Common.App);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2B8();
    v322 = swift_getKeyPath();
    OUTLINED_FUNCTION_134_1();
    OUTLINED_FUNCTION_123_3();
    sub_26831A8D8(v323, v324, v325, v326);
    OUTLINED_FUNCTION_2_65();
    sub_2683ABDA4(v327, v328, &protocol conformance descriptor for Common.ListPosition);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_92_5();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_169_1();
    OUTLINED_FUNCTION_163_2();
    sub_26831A8D8(v329, v330, v331, v332);
    OUTLINED_FUNCTION_1_68();
    sub_2683ABDA4(v333, v334, &protocol conformance descriptor for Common.Quantifier);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_182_1(v438, v335, &qword_280252BB0, &qword_2683EBA68);
    OUTLINED_FUNCTION_39_17();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_149_1();
    sub_26831A8D8(v336, v337, v338, &qword_2683E6E58);
    OUTLINED_FUNCTION_0_75();
    sub_2683ABDA4(v339, v340, &protocol conformance descriptor for Common.SearchQualifier);
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();

    OUTLINED_FUNCTION_102_2();
    sub_26812C310(v341, v342, v343);
    sub_26812C310(v438, &qword_280252BB0, &qword_2683EBA68);
    sub_26812C310(v322, &qword_280252690, &qword_2683E6E68);
    v175 = OUTLINED_FUNCTION_134_1();
LABEL_14:
    sub_26812C310(v175, &qword_280252698, &qword_2683E6E70);
    sub_26812C310(v463, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v465, &qword_280252A68, &qword_2683E9B98);
    sub_26812C310(v464, &qword_280252978, &qword_2683E8A08);
    sub_26812C310(v461, &qword_2802529F0, &qword_2683E91D8);
    sub_26812C310(v456, &qword_280252838, &qword_2683E7D00);
    sub_26812C310(v436, &qword_280252718, &qword_2683E71B0);
    (*(v457 + 8))(v458, v460);
    goto LABEL_15;
  }

  v238 = [v8 contactEventTrigger];
  if (v238)
  {
    v239 = v238;
    Entity<A>.init(_:)(v239, v240, v241, v242, v243, v244, v245, v246, v430, v1, v239, v10, v2, v5, v8, v442, v446, v449, v452, v455);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
    v247 = OUTLINED_FUNCTION_52_9();
    __swift_storeEnumTagSinglePayload(v247, v248, v249, v250);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    v251 = v6;
    v252 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v252, v253, v254, v255);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529F8, &qword_2683E9208);
    v256 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v256, v257, v258, v259);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252980, &qword_2683E8A38);
    v260 = OUTLINED_FUNCTION_53_9();
    __swift_storeEnumTagSinglePayload(v260, v261, v262, v263);
    v264 = [v8 title];
    v265 = [v264 spokenPhrase];

    v203 = sub_2683CFA78();
    v205 = v266;

    v267 = OUTLINED_FUNCTION_137_2();
    v268(v267);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v269, v270, v271, v265);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    v272 = OUTLINED_FUNCTION_48_12();
    __swift_storeEnumTagSinglePayload(v272, v273, v274, v275);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v276 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v276, v277, v278, v279);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v280, v281, v282, v283);
    v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE8, &qword_2683E6520);
    v285 = OUTLINED_FUNCTION_40_17();
    __swift_storeEnumTagSinglePayload(v285, v286, v287, v284);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v288 = OUTLINED_FUNCTION_34_20();
    __swift_storeEnumTagSinglePayload(v288, v289, v290, v291);
    if (qword_28024CAD8 != -1)
    {
      OUTLINED_FUNCTION_242_0(&qword_28024CAD8);
    }

    v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252668, &qword_2683E6E40);
    OUTLINED_FUNCTION_72_3(v292, qword_280252380);
    v293 = OUTLINED_FUNCTION_256_0();
    type metadata accessor for Common.Reminder(v293);
    OUTLINED_FUNCTION_172_2();
    OUTLINED_FUNCTION_150_2();
    sub_2683CE298();
    swift_getKeyPath();
    sub_26831A8D8(v2, v445, &qword_280252718, &qword_2683E71B0);
    OUTLINED_FUNCTION_8_43();
    sub_2683ABDA4(v294, v295, &protocol conformance descriptor for Common.Reminder);
    OUTLINED_FUNCTION_5_54();
    sub_2683ABDA4(v296, v297, &protocol conformance descriptor for Common.Person);
    OUTLINED_FUNCTION_33_22();
    sub_2683CE2B8();
    swift_getKeyPath();
    v237 = v251;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  v344 = OUTLINED_FUNCTION_52_9();
  __swift_storeEnumTagSinglePayload(v344, v345, v346, v347);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  v348 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v348, v349, v350, v351);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529F8, &qword_2683E9208);
  v352 = OUTLINED_FUNCTION_30_23();
  __swift_storeEnumTagSinglePayload(v352, v353, v354, v355);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252980, &qword_2683E8A38);
  v356 = OUTLINED_FUNCTION_53_9();
  __swift_storeEnumTagSinglePayload(v356, v357, v358, v359);
  v360 = [v8 title];
  v361 = [v360 spokenPhrase];

  sub_2683CFA78();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v362, v363, v364, v460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v365 = OUTLINED_FUNCTION_48_12();
  __swift_storeEnumTagSinglePayload(v365, v366, v367, v368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  v369 = OUTLINED_FUNCTION_47_8();
  __swift_storeEnumTagSinglePayload(v369, v370, v371, v372);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  v373 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v373, v374, v375, v376);
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE8, &qword_2683E6520);
  v378 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v378, v379, v380, v377);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v381 = OUTLINED_FUNCTION_34_20();
  __swift_storeEnumTagSinglePayload(v381, v382, v383, v384);
  if (qword_28024CAD8 != -1)
  {
    OUTLINED_FUNCTION_242_0(&qword_28024CAD8);
  }

  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252668, &qword_2683E6E40);
  OUTLINED_FUNCTION_72_3(v385, qword_280252380);
  v386 = OUTLINED_FUNCTION_155_2();
  type metadata accessor for Common.Reminder(v386);
  OUTLINED_FUNCTION_172_2();
  sub_2683CE298();
  swift_getKeyPath();
  sub_26831A8D8(v2, v442, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_8_43();
  sub_2683ABDA4(v387, v388, &protocol conformance descriptor for Common.Reminder);
  OUTLINED_FUNCTION_5_54();
  sub_2683ABDA4(v389, v390, &protocol conformance descriptor for Common.Person);
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v6, v446, &qword_280252838, &qword_2683E7D00);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v391, v392, &protocol conformance descriptor for Common.DateTime);
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_34();
  sub_2683ABDA4(v393, v394, &protocol conformance descriptor for Common.Attachment);
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_108_3();
  sub_2683CE2D8();
  swift_getKeyPath();
  sub_26831A8D8(v4, v449, &qword_2802529F0, &qword_2683E91D8);
  OUTLINED_FUNCTION_59_7();
  sub_2683ABDA4(v395, v396, &protocol conformance descriptor for Common.CompletionStatus);
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v464, v452, &qword_280252978, &qword_2683E8A08);
  OUTLINED_FUNCTION_13_40();
  sub_2683ABDA4(v397, v398, &protocol conformance descriptor for Common.ReminderList);
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  sub_2683CE2C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_40();
  sub_2683ABDA4(v399, v400, &protocol conformance descriptor for Common.EventTrigger);
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_108_3();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_120_4();
  sub_26831A8D8(v401, v402, v403, v404);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_108_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  v405 = OUTLINED_FUNCTION_87_5();
  sub_26831A8D8(v405, v406, v407, v408);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v409, v410, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_123_3();
  sub_26831A8D8(v411, v412, v413, v414);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v415, v416, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_70_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_183_1(v459, v417, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v418, v419, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_70_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_182_1(v5, v420, &qword_280252BB0, &qword_2683EBA68);
  OUTLINED_FUNCTION_9_39();
  OUTLINED_FUNCTION_108_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_149_1();
  sub_26831A8D8(v421, v422, v423, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v424, v425, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_46_11();
  sub_2683CE2B8();

  sub_26812C310(v462, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v5, &qword_280252BB0, &qword_2683EBA68);
  sub_26812C310(v459, &qword_280252690, &qword_2683E6E68);
  v426 = OUTLINED_FUNCTION_134_1();
  sub_26812C310(v426, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v463, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v465, &qword_280252A68, &qword_2683E9B98);
  sub_26812C310(v464, &qword_280252978, &qword_2683E8A08);
  sub_26812C310(v4, &qword_2802529F0, &qword_2683E91D8);
  sub_26812C310(v6, &qword_280252838, &qword_2683E7D00);
  sub_26812C310(v2, &qword_280252718, &qword_2683E71B0);
LABEL_15:
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v127 = v3;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DE8, &qword_2683E6520);
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = v117 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v10 = OUTLINED_FUNCTION_23(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_1();
  v126 = v11;
  OUTLINED_FUNCTION_8_0();
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_67_6(v13, v14, v15, v16, v17, v18, v19, v20, v117[0]);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252978, &qword_2683E8A08);
  v22 = OUTLINED_FUNCTION_23(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_1();
  v122 = v23;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_17();
  v125 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v27 = OUTLINED_FUNCTION_23(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_1();
  v121 = v28;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_15_17();
  v124 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v32 = OUTLINED_FUNCTION_23(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_1();
  v120 = v33;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15_17();
  v123 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v37 = OUTLINED_FUNCTION_23(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_1();
  v119 = v38;
  OUTLINED_FUNCTION_8_0();
  v40 = MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_37_13(v40, v41, v42, v43, v44, v45, v46, v47, v117[0]);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v49 = OUTLINED_FUNCTION_23(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_1();
  v118 = v50;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_159_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  v129 = v0;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  v56 = [v2 title];
  v57 = [v56 spokenPhrase];

  v58 = sub_2683CFA78();
  v117[1] = v59;
  v117[2] = v58;

  v128 = v2;
  v60 = [v2 tasks];
  sub_268186108();
  v61 = sub_2683CFCA8();

  v62 = sub_2682228F8(v61);
  v63 = 0;
  v64 = v61 & 0xC000000000000001;
  v65 = MEMORY[0x277D84F90];
  while (v62 != v63)
  {
    sub_2683ABC70(v63, v64 == 0, v61);
    if (v64)
    {
      MEMORY[0x26D616C90](v63, v61);
    }

    else
    {
      v66 = *(v61 + 8 * v63 + 32);
    }

    if (__OFADD__(v63, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    Entity<A>.init(_:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E465C();
      v65 = v68;
    }

    v67 = *(v65 + 16);
    if (v67 >= *(v65 + 24) >> 1)
    {
      sub_2682E465C();
      v65 = v69;
    }

    *(v65 + 16) = v67 + 1;
    (*(v5 + 32))(v65 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v67, v8, v132);
    ++v63;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v70 = OUTLINED_FUNCTION_30_23();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  v61 = v123;
  v74 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  v64 = v124;
  v78 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252980, &qword_2683E8A38);
  v63 = v125;
  v83 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  if (qword_28024CAE0 == -1)
  {
    goto LABEL_13;
  }

LABEL_15:
  swift_once();
LABEL_13:
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252550, &qword_2683E6D28);
  OUTLINED_FUNCTION_133_1(v90, qword_280252398);
  type metadata accessor for Common.ReminderList(0);
  sub_2683CE298();
  swift_getKeyPath();
  sub_26831A8D8(v129, v118, &qword_280252838, &qword_2683E7D00);
  OUTLINED_FUNCTION_13_40();
  sub_2683ABDA4(v91, v92, &protocol conformance descriptor for Common.ReminderList);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v93, v94, &protocol conformance descriptor for Common.DateTime);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_8_43();
  sub_2683ABDA4(v95, v96, &protocol conformance descriptor for Common.Reminder);
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_110_3();
  sub_2683ABDA4(v97, v98, &protocol conformance descriptor for Common.Tag);
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_163_2();
  sub_26831A8D8(v99, v100, v101, v102);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v103, v104, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_182_1(v61, v105, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v106, v107, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v64, v121, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v108, v109, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_94_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_179_2();
  sub_26831A8D8(v110, v111, v112, v113);
  OUTLINED_FUNCTION_102_2();
  sub_2683CE2B8();
  swift_getKeyPath();
  v114 = v131;
  sub_26831A8D8(v131, v126, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v115, v116, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_102_2();
  sub_2683CE2B8();

  sub_26812C310(v114, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v63, &qword_280252978, &qword_2683E8A08);
  sub_26812C310(v64, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v61, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v130, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v129, &qword_280252838, &qword_2683E7D00);
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252828, &qword_2683E7CF0);
  v9 = OUTLINED_FUNCTION_23(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_1();
  v154 = v10;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_29_18();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v13 = OUTLINED_FUNCTION_23(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_1();
  v161 = v14;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_98_5();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v17 = OUTLINED_FUNCTION_23(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_1();
  v160 = v18;
  OUTLINED_FUNCTION_8_0();
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_67_6(v20, v21, v22, v23, v24, v25, v26, v27, v152);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v29 = OUTLINED_FUNCTION_23(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_1();
  v158 = v30;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_158_2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v33 = OUTLINED_FUNCTION_23(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_1();
  v157 = v34;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15_17();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v39 = OUTLINED_FUNCTION_23(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_1();
  v164 = v40;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_56_3();
  v153 = v42;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7_30();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252830, &qword_2683E7CF8);
  v45 = OUTLINED_FUNCTION_23(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_1();
  v163 = v46;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_178_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_80_4();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_56_3();
  v156 = v50;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_105_2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B80, &qword_2683EB1A0);
  v53 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
  v162 = v7;
  v56 = [v7 groupName];
  v159 = v2;
  if (v56)
  {
    v57 = v56;
    v58 = [v56 spokenPhrase];

    sub_2683CFA78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    v59 = OUTLINED_FUNCTION_53_9();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v67 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v78 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
    if (qword_28024CA70 != -1)
    {
      swift_once();
    }

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252638, &qword_2683E6E10);
    OUTLINED_FUNCTION_72_3(v82, qword_280252248);
    type metadata accessor for Common.NoteFolder(0);
    sub_2683CE298();
    swift_getKeyPath();
    sub_26831A8D8(v3, v153, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_118_3();
    sub_2683ABDA4(v83, v84, &protocol conformance descriptor for Common.NoteFolder);
    OUTLINED_FUNCTION_4_56();
    sub_2683ABDA4(v85, v86, &protocol conformance descriptor for Common.DateTime);
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_2683CE2C8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_117_4();
    sub_2683ABDA4(v87, v88, &protocol conformance descriptor for Common.Note);
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2D8();
    swift_getKeyPath();
    sub_26831A8D8(v37, v157, &qword_2802526A0, &qword_2683E6E78);
    OUTLINED_FUNCTION_3_56();
    sub_2683ABDA4(v89, v90, &protocol conformance descriptor for Common.App);
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v5, v158, &qword_280252698, &qword_2683E6E70);
    OUTLINED_FUNCTION_2_65();
    sub_2683ABDA4(v91, v92, &protocol conformance descriptor for Common.ListPosition);
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v165, v160, &qword_280252690, &qword_2683E6E68);
    OUTLINED_FUNCTION_1_68();
    sub_2683ABDA4(v93, v94, &protocol conformance descriptor for Common.Quantifier);
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v155, v0, &qword_280252830, &qword_2683E7CF8);
    OUTLINED_FUNCTION_61_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v4, v161, &qword_280252680, &qword_2683E6E58);
    OUTLINED_FUNCTION_0_75();
    sub_2683ABDA4(v95, v96, &protocol conformance descriptor for Common.SearchQualifier);
    sub_2683CE2B8();
    sub_26812C310(v4, &qword_280252680, &qword_2683E6E58);
    sub_26812C310(v155, &qword_280252830, &qword_2683E7CF8);
    sub_26812C310(v165, &qword_280252690, &qword_2683E6E68);
    sub_26812C310(v5, &qword_280252698, &qword_2683E6E70);
    sub_26812C310(v37, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v3, &qword_280252838, &qword_2683E7D00);
    v2 = v159;
    sub_26812C310(v159, &qword_280252830, &qword_2683E7CF8);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v52);
    sub_2683ABD34(v156, v159);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  v100 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
  sub_26831A8D8(v2, v163, &qword_280252830, &qword_2683E7CF8);
  v104 = [v162 title];
  v105 = [v104 spokenPhrase];

  sub_2683CFA78();
  sub_2683B9E1C();
  if (*(v106 + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  v111 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  v115 = OUTLINED_FUNCTION_30_23();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252840, &qword_2683E7D30);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v119);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v123 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
  if (qword_28024CA68 != -1)
  {
    swift_once();
  }

  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252510, &qword_2683E6CE8);
  OUTLINED_FUNCTION_72_3(v127, qword_280252230);
  v128 = OUTLINED_FUNCTION_256_0();
  type metadata accessor for Common.Note(v128);
  OUTLINED_FUNCTION_164_1();
  swift_getKeyPath();
  sub_26831A8D8(v164, v3, &qword_280252838, &qword_2683E7D00);
  OUTLINED_FUNCTION_117_4();
  sub_2683ABDA4(v129, v130, &protocol conformance descriptor for Common.Note);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v131, v132, &protocol conformance descriptor for Common.DateTime);
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_34();
  sub_2683ABDA4(v133, v134, &protocol conformance descriptor for Common.Attachment);
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_183_1(v163, v135, &qword_280252830, &qword_2683E7CF8);
  OUTLINED_FUNCTION_118_3();
  sub_2683ABDA4(v136, v137, &protocol conformance descriptor for Common.NoteFolder);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_110_3();
  sub_2683ABDA4(v138, v139, &protocol conformance descriptor for Common.Tag);
  OUTLINED_FUNCTION_36_13();
  sub_2683CE2D8();
  swift_getKeyPath();
  sub_26831A8D8(v37, v157, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v140, v141, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_145_2();
  sub_26831A8D8(v142, v143, v144, v145);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v146, v147, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v165, v160, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v148, v149, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v1, v154, &qword_280252828, &qword_2683E7CF0);
  OUTLINED_FUNCTION_9_39();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v4, v161, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v150, v151, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_9_39();
  OUTLINED_FUNCTION_86_6();
  sub_2683CE2B8();

  sub_26812C310(v4, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v1, &qword_280252828, &qword_2683E7CF0);
  sub_26812C310(v165, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v5, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v37, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v163, &qword_280252830, &qword_2683E7CF8);
  sub_26812C310(v164, &qword_280252838, &qword_2683E7D00);
  OUTLINED_FUNCTION_7_13(v159);
  OUTLINED_FUNCTION_29_0();
}

void Entity<A>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_30_0();
  a19 = v29;
  a20 = v30;
  v242 = v31;
  v235 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v34 = OUTLINED_FUNCTION_23(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_1();
  v236 = v35;
  OUTLINED_FUNCTION_8_0();
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_78_3(v37, v38, v39, v40, v41, v42, v43, v44, v215);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A68, &qword_2683E9B98);
  v46 = OUTLINED_FUNCTION_23(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_1();
  v233 = v47;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_175_2(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v51 = OUTLINED_FUNCTION_23(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2_1();
  v231 = v52;
  OUTLINED_FUNCTION_8_0();
  v54 = MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_77_3(v54, v55, v56, v57, v58, v59, v60, v61, v216);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v63 = OUTLINED_FUNCTION_23(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_2_1();
  v229 = v64;
  OUTLINED_FUNCTION_8_0();
  v66 = MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_67_6(v66, v67, v68, v69, v70, v71, v72, v73, v217);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v75 = OUTLINED_FUNCTION_23(v74);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_2_1();
  v227 = v76;
  OUTLINED_FUNCTION_8_0();
  v78 = MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_37_13(v78, v79, v80, v81, v82, v83, v84, v85, v218);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252900, &qword_2683E8538);
  v87 = OUTLINED_FUNCTION_23(v86);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_2_1();
  v225 = v88;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_29_18();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252708, &qword_2683E71A0);
  v91 = OUTLINED_FUNCTION_23(v90);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_128_2();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v94 = OUTLINED_FUNCTION_23(v93);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_23_14();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_20_38();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252710, &qword_2683E71A8);
  v98 = OUTLINED_FUNCTION_23(v97);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_106_4();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v101 = OUTLINED_FUNCTION_23(v100);
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_158_2();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252880, &qword_2683E7ED8);
  v104 = OUTLINED_FUNCTION_23(v103);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_98_5();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527D8, &qword_2683E7978);
  v107 = OUTLINED_FUNCTION_23(v106);
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_159_2();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A70, &qword_2683E9BA0);
  v110 = OUTLINED_FUNCTION_23(v109);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_19_3();
  v113 = v111 - v112;
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_157_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AC8, &qword_2683EA1E8);
  v115 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527E0, &qword_2683E79A8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802528B8, &qword_2683E8120);
  v123 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
  v127 = [v242 dateComponentsRange];
  Entity<A>.init(_:)(v127, v128, v129, v130, v131, v132, v133, v134, v219, v220, v221, v222, v223, v224, v225, v227, v229, v231, v233, v235);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527A0, &qword_2683E76B0);
  v237 = v21;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  v238 = v22;
  v144 = v25;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252728, &qword_2683E71E8);
  v148 = OUTLINED_FUNCTION_52_9();
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v151);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529E8, &qword_2683E8FF0);
  v152 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v155);
  v156 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v159 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v162);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E430, &qword_2683D6CB8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v172, v173, v174, v171);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v175 = OUTLINED_FUNCTION_34_20();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v178);
  if (qword_28024CA30 != -1)
  {
    OUTLINED_FUNCTION_75_4(&qword_28024CA30);
  }

  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525B8, &qword_2683E6D90);
  OUTLINED_FUNCTION_72_3(v179, qword_280252188);
  v180 = OUTLINED_FUNCTION_155_2();
  type metadata accessor for Common.EventTrigger(v180);
  sub_2683CE298();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_40();
  sub_2683ABDA4(v181, v182, &protocol conformance descriptor for Common.EventTrigger);
  OUTLINED_FUNCTION_64_5();
  sub_2683ABDA4(v183, v184, &protocol conformance descriptor for CommonEventTrigger.Attribute);
  OUTLINED_FUNCTION_32_20();
  sub_2683CE2D8();
  swift_getKeyPath();
  sub_26831A8D8(v26, v113, &qword_280252A70, &qword_2683E9BA0);
  OUTLINED_FUNCTION_63_6();
  sub_2683ABDA4(v185, v186, &protocol conformance descriptor for Common.CommunicationTrigger);
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_32_20();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v20, &qword_2802527D8, &qword_2683E7978, &a13);
  OUTLINED_FUNCTION_19_40();
  sub_2683ABDA4(v187, v188, &protocol conformance descriptor for Common.ContactAddress);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v27, &qword_280252880, &qword_2683E7ED8, &a14);
  OUTLINED_FUNCTION_9_41();
  sub_2683ABDA4(v189, v190, &protocol conformance descriptor for Common.DateTimeRange);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v28, &qword_280252838, &qword_2683E7D00, &a15);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v191, v192, &protocol conformance descriptor for Common.DateTime);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v237, &qword_280252710, &qword_2683E71A8, &a16);
  OUTLINED_FUNCTION_18_39();
  sub_2683ABDA4(v193, v194, &protocol conformance descriptor for Common.GeographicArea);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_162_2();
  sub_26831A8D8(v195, v196, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_5_54();
  sub_2683ABDA4(v197, v198, &protocol conformance descriptor for Common.Person);
  OUTLINED_FUNCTION_31_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_174_1();
  sub_26831A8D8(v199, v200, v201, v202);
  OUTLINED_FUNCTION_17_28();
  sub_2683ABDA4(v203, v204, &protocol conformance descriptor for Common.PointOfInterest);
  OUTLINED_FUNCTION_32_20();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v24, v226, &qword_280252900, &qword_2683E8538);
  OUTLINED_FUNCTION_16_35();
  sub_2683ABDA4(v205, v206, &protocol conformance descriptor for Common.RecurringDateTime);
  OUTLINED_FUNCTION_32_20();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v144, v24, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_31_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v243, v228, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v207, v208, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v244, v230, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v209, v210, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v239, v232, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v211, v212, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_57_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v240, v234, &qword_280252A68, &qword_2683E9B98);
  OUTLINED_FUNCTION_31_10();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v241, v236, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v213, v214, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_32_20();
  sub_2683CE2B8();

  sub_26812C310(v241, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v240, &qword_280252A68, &qword_2683E9B98);
  sub_26812C310(v239, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v244, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v243, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v144, &qword_280252718, &qword_2683E71B0);
  sub_26812C310(v24, &qword_280252900, &qword_2683E8538);
  sub_26812C310(v23, &qword_280252708, &qword_2683E71A0);
  OUTLINED_FUNCTION_7_13(v238);
  sub_26812C310(v237, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v28, &qword_280252838, &qword_2683E7D00);
  sub_26812C310(v27, &qword_280252880, &qword_2683E7ED8);
  sub_26812C310(v20, &qword_2802527D8, &qword_2683E7978);
  sub_26812C310(v26, &qword_280252A70, &qword_2683E9BA0);
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  a19 = v27;
  a20 = v28;
  v239 = v29;
  v227 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v32 = OUTLINED_FUNCTION_23(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_1();
  v228 = v33;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_175_2(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A68, &qword_2683E9B98);
  v37 = OUTLINED_FUNCTION_23(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_1();
  v226 = v38;
  OUTLINED_FUNCTION_8_0();
  v40 = MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77_3(v40, v41, v42, v43, v44, v45, v46, v47, v217[0]);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v49 = OUTLINED_FUNCTION_23(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_1();
  v225 = v50;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_15_17();
  v237 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v54 = OUTLINED_FUNCTION_23(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_1();
  v224 = v55;
  OUTLINED_FUNCTION_8_0();
  v57 = MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_67_6(v57, v58, v59, v60, v61, v62, v63, v64, v217[0]);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v66 = OUTLINED_FUNCTION_23(v65);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_2_1();
  v223 = v67;
  OUTLINED_FUNCTION_8_0();
  v69 = MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_37_13(v69, v70, v71, v72, v73, v74, v75, v76, v217[0]);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252900, &qword_2683E8538);
  v78 = OUTLINED_FUNCTION_23(v77);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  v80 = MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_79_5(v80, v81, v82, v83, v84, v85, v86, v87, v217[0]);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252708, &qword_2683E71A0);
  v89 = OUTLINED_FUNCTION_23(v88);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_7_30();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v92 = OUTLINED_FUNCTION_23(v91);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_56_3();
  v229 = v94;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_105_2();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252710, &qword_2683E71A8);
  v97 = OUTLINED_FUNCTION_23(v96);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_106_4();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v100 = OUTLINED_FUNCTION_23(v99);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_159_2();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252880, &qword_2683E7ED8);
  v103 = OUTLINED_FUNCTION_23(v102);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_157_2();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527D8, &qword_2683E7978);
  v106 = OUTLINED_FUNCTION_23(v105);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_20_38();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A70, &qword_2683E9BA0);
  v109 = OUTLINED_FUNCTION_23(v108);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_29_18();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252728, &qword_2683E71E8);
  OUTLINED_FUNCTION_0_3();
  v113 = v112;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v114);
  v116 = v217 - v115;
  v117 = [v239 placemark];
  Entity<A>.init(_:)(v117, v118, v119, v120, v121, v122, v123, v124, v217[0], v217[1], v217[2], v217[3], v217[4], v217[5], v217[6], v218, v219, v220, v221, v222);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AC8, &qword_2683EA1E8);
  v230 = v23;
  v125 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527E0, &qword_2683E79A8);
  v231 = v22;
  v129 = OUTLINED_FUNCTION_47_8();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802528B8, &qword_2683E8120);
  v232 = v26;
  v133 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  v233 = v20;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527A0, &qword_2683E76B0);
  v234 = v21;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  v235 = v24;
  v146 = v229;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v145);
  v221 = v113;
  v150 = *(v113 + 16);
  v220 = v116;
  v150(v25, v116, v111);
  v236 = v25;
  OUTLINED_FUNCTION_10_0();
  v222 = v111;
  __swift_storeEnumTagSinglePayload(v151, v152, v153, v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529E8, &qword_2683E8FF0);
  v154 = OUTLINED_FUNCTION_48_12();
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
  v158 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v161 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E430, &qword_2683D6CB8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v173);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
  if (qword_28024CA30 != -1)
  {
    OUTLINED_FUNCTION_75_4(&qword_28024CA30);
  }

  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525B8, &qword_2683E6D90);
  OUTLINED_FUNCTION_72_3(v181, qword_280252188);
  v182 = OUTLINED_FUNCTION_256_0();
  type metadata accessor for Common.EventTrigger(v182);
  OUTLINED_FUNCTION_164_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_40();
  sub_2683ABDA4(v183, v184, &protocol conformance descriptor for Common.EventTrigger);
  OUTLINED_FUNCTION_64_5();
  sub_2683ABDA4(v185, v186, &protocol conformance descriptor for CommonEventTrigger.Attribute);
  OUTLINED_FUNCTION_25_30();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v230, &qword_280252A70, &qword_2683E9BA0, &v243);
  OUTLINED_FUNCTION_63_6();
  sub_2683ABDA4(v187, v188, &protocol conformance descriptor for Common.CommunicationTrigger);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v231, &qword_2802527D8, &qword_2683E7978, &a9);
  OUTLINED_FUNCTION_19_40();
  sub_2683ABDA4(v189, v190, &protocol conformance descriptor for Common.ContactAddress);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v232, &qword_280252880, &qword_2683E7ED8, &a10);
  OUTLINED_FUNCTION_9_41();
  sub_2683ABDA4(v191, v192, &protocol conformance descriptor for Common.DateTimeRange);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v233, &qword_280252838, &qword_2683E7D00, &a11);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v193, v194, &protocol conformance descriptor for Common.DateTime);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v234, &qword_280252710, &qword_2683E71A8, &a12);
  OUTLINED_FUNCTION_18_39();
  sub_2683ABDA4(v195, v196, &protocol conformance descriptor for Common.GeographicArea);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  v197 = v218;
  sub_26831A8D8(v235, v218, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_5_54();
  sub_2683ABDA4(v198, v199, &protocol conformance descriptor for Common.Person);
  OUTLINED_FUNCTION_54_8();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_142_2(v236, &qword_280252708, &qword_2683E71A0, &a13);
  OUTLINED_FUNCTION_17_28();
  sub_2683ABDA4(v200, v201, &protocol conformance descriptor for Common.PointOfInterest);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_25_30();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_142_2(v240, &qword_280252900, &qword_2683E8538, &a15);
  OUTLINED_FUNCTION_16_35();
  sub_2683ABDA4(v202, v203, &protocol conformance descriptor for Common.RecurringDateTime);
  OUTLINED_FUNCTION_125_1();
  OUTLINED_FUNCTION_25_30();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v146, v197, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_54_8();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v241, v223, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v204, v205, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v242, v224, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v206, v207, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  swift_getKeyPath();
  v208 = v237;
  sub_26831A8D8(v237, v225, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v209, v210, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_56_6();
  sub_2683CE2B8();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_181_2(KeyPath, v212, &qword_280252A68, &qword_2683E9B98);
  OUTLINED_FUNCTION_54_8();
  sub_2683CE2B8();
  swift_getKeyPath();
  v213 = v238;
  sub_26831A8D8(v238, v228, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v214, v215, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_25_30();
  sub_2683CE2B8();

  sub_26812C310(v213, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v22, &qword_280252A68, &qword_2683E9B98);
  sub_26812C310(v208, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v242, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v241, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v229, &qword_280252718, &qword_2683E71B0);
  sub_26812C310(v240, &qword_280252900, &qword_2683E8538);
  sub_26812C310(v236, &qword_280252708, &qword_2683E71A0);
  OUTLINED_FUNCTION_7_13(v235);
  sub_26812C310(v234, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v233, &qword_280252838, &qword_2683E7D00);
  sub_26812C310(v232, &qword_280252880, &qword_2683E7ED8);
  sub_26812C310(v231, &qword_2802527D8, &qword_2683E7978);
  sub_26812C310(v230, &qword_280252A70, &qword_2683E9BA0);
  OUTLINED_FUNCTION_12_15();
  v216(v220, v222);
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  a19 = v27;
  a20 = v28;
  v242 = v29;
  v233 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v32 = OUTLINED_FUNCTION_23(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_1();
  v234 = v33;
  OUTLINED_FUNCTION_8_0();
  v35 = MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_78_3(v35, v36, v37, v38, v39, v40, v41, v42, v225[0]);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A68, &qword_2683E9B98);
  v44 = OUTLINED_FUNCTION_23(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_1();
  v232 = v45;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_175_2(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v49 = OUTLINED_FUNCTION_23(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_1();
  v231 = v50;
  OUTLINED_FUNCTION_8_0();
  v52 = MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_77_3(v52, v53, v54, v55, v56, v57, v58, v59, v225[0]);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v61 = OUTLINED_FUNCTION_23(v60);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_2_1();
  v230 = v62;
  OUTLINED_FUNCTION_8_0();
  v64 = MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_67_6(v64, v65, v66, v67, v68, v69, v70, v71, v225[0]);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v73 = OUTLINED_FUNCTION_23(v72);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_2_1();
  v229 = v74;
  OUTLINED_FUNCTION_8_0();
  v76 = MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_37_13(v76, v77, v78, v79, v80, v81, v82, v83, v225[0]);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252900, &qword_2683E8538);
  v85 = OUTLINED_FUNCTION_23(v84);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  v87 = MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_79_5(v87, v88, v89, v90, v91, v92, v93, v94, v225[0]);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252708, &qword_2683E71A0);
  v96 = OUTLINED_FUNCTION_23(v95);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_98_5();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v99 = OUTLINED_FUNCTION_23(v98);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_80_4();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_158_2();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252710, &qword_2683E71A8);
  v103 = OUTLINED_FUNCTION_23(v102);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_29_18();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v106 = OUTLINED_FUNCTION_23(v105);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_20_38();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252880, &qword_2683E7ED8);
  v109 = OUTLINED_FUNCTION_23(v108);
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_7_30();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527D8, &qword_2683E7978);
  v112 = OUTLINED_FUNCTION_23(v111);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_128_2();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A70, &qword_2683E9BA0);
  v115 = OUTLINED_FUNCTION_23(v114);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_106_4();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  OUTLINED_FUNCTION_0_3();
  v119 = v118;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v120);
  v122 = v225 - v121;
  v123 = v242;
  Entity<A>.init(_:)(v123, v124, v125, v126, v127, v128, v129, v130, v225[0], v225[1], v225[2], v225[3], v225[4], v225[5], v225[6], v123, v225[8], v225[9], v226, v227);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AC8, &qword_2683EA1E8);
  v236 = v20;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527E0, &qword_2683E79A8);
  v237 = v22;
  v135 = OUTLINED_FUNCTION_52_9();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802528B8, &qword_2683E8120);
  v238 = v24;
  v139 = OUTLINED_FUNCTION_53_9();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
  v239 = v21;
  v143 = OUTLINED_FUNCTION_47_8();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527A0, &qword_2683E76B0);
  v240 = v23;
  v147 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
  v227 = v119;
  v151 = *(v119 + 16);
  v226 = v122;
  v151(v26, v122, v117);
  v241 = v26;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252728, &qword_2683E71E8);
  v242 = v25;
  v155 = v235;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v156, v157, v158, v159);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529E8, &qword_2683E8FF0);
  v160 = OUTLINED_FUNCTION_48_12();
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
  v164 = OUTLINED_FUNCTION_31_18();
  v228 = v117;
  __swift_storeEnumTagSinglePayload(v164, v165, v166, v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v167 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v178);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E430, &qword_2683D6CB8);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v179);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v183 = OUTLINED_FUNCTION_34_20();
  __swift_storeEnumTagSinglePayload(v183, v184, v185, v186);
  if (qword_28024CA30 != -1)
  {
    OUTLINED_FUNCTION_75_4(&qword_28024CA30);
  }

  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525B8, &qword_2683E6D90);
  OUTLINED_FUNCTION_72_3(v187, qword_280252188);
  v188 = OUTLINED_FUNCTION_155_2();
  type metadata accessor for Common.EventTrigger(v188);
  sub_2683CE298();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_40();
  sub_2683ABDA4(v189, v190, &protocol conformance descriptor for Common.EventTrigger);
  OUTLINED_FUNCTION_64_5();
  sub_2683ABDA4(v191, v192, &protocol conformance descriptor for CommonEventTrigger.Attribute);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v236, &qword_280252A70, &qword_2683E9BA0, &v248);
  OUTLINED_FUNCTION_63_6();
  sub_2683ABDA4(v193, v194, &protocol conformance descriptor for Common.CommunicationTrigger);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v237, &qword_2802527D8, &qword_2683E7978, &a9);
  OUTLINED_FUNCTION_19_40();
  sub_2683ABDA4(v195, v196, &protocol conformance descriptor for Common.ContactAddress);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v238, &qword_280252880, &qword_2683E7ED8, &a10);
  OUTLINED_FUNCTION_9_41();
  sub_2683ABDA4(v197, v198, &protocol conformance descriptor for Common.DateTimeRange);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v239, &qword_280252838, &qword_2683E7D00, &a11);
  OUTLINED_FUNCTION_4_56();
  sub_2683ABDA4(v199, v200, &protocol conformance descriptor for Common.DateTime);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v240, &qword_280252710, &qword_2683E71A8, &a12);
  OUTLINED_FUNCTION_18_39();
  sub_2683ABDA4(v201, v202, &protocol conformance descriptor for Common.GeographicArea);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_174_1();
  sub_26831A8D8(v203, v204, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_5_54();
  v207 = sub_2683ABDA4(v205, v206, &protocol conformance descriptor for Common.Person);
  OUTLINED_FUNCTION_42_16();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v242, &qword_280252708, &qword_2683E71A0, &a13);
  OUTLINED_FUNCTION_17_28();
  sub_2683ABDA4(v208, v209, &protocol conformance descriptor for Common.PointOfInterest);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_147_1(v245, &qword_280252900, &qword_2683E8538, &a16);
  OUTLINED_FUNCTION_16_35();
  sub_2683ABDA4(v210, v211, &protocol conformance descriptor for Common.RecurringDateTime);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v155, v22, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_42_16();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v246, v229, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v212, v213, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v247, v230, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v214, v215, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_181_2(KeyPath, v217, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v218, v219, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();
  swift_getKeyPath();
  v220 = v243;
  sub_26831A8D8(v243, v232, &qword_280252A68, &qword_2683E9B98);
  OUTLINED_FUNCTION_42_16();
  sub_2683CE2B8();
  swift_getKeyPath();
  v221 = v244;
  sub_26831A8D8(v244, v234, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v222, v223, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_12_36();
  sub_2683CE2B8();

  sub_26812C310(v221, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v220, &qword_280252A68, &qword_2683E9B98);
  sub_26812C310(v207, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v247, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v246, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v235, &qword_280252718, &qword_2683E71B0);
  sub_26812C310(v245, &qword_280252900, &qword_2683E8538);
  sub_26812C310(v242, &qword_280252708, &qword_2683E71A0);
  OUTLINED_FUNCTION_7_13(v241);
  sub_26812C310(v240, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v239, &qword_280252838, &qword_2683E7D00);
  sub_26812C310(v238, &qword_280252880, &qword_2683E7ED8);
  sub_26812C310(v237, &qword_2802527D8, &qword_2683E7978);
  sub_26812C310(v236, &qword_280252A70, &qword_2683E9BA0);
  OUTLINED_FUNCTION_12_15();
  v224(v226, v228);
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v691 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A48, &qword_2683E98B0);
  v31 = OUTLINED_FUNCTION_23(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v33);
  v706 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A50, &qword_2683E98E0);
  OUTLINED_FUNCTION_0_3();
  v689 = v34;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_175_2(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252900, &qword_2683E8538);
  v38 = OUTLINED_FUNCTION_23(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252908, &qword_2683E8540);
  v42 = OUTLINED_FUNCTION_23(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252910, &qword_2683E8548);
  v47 = OUTLINED_FUNCTION_23(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252768, &qword_2683E7458);
  v51 = OUTLINED_FUNCTION_23(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_56_3();
  v715 = v53;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_56_3();
  v713 = v55;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252918, &qword_2683E8550);
  v59 = OUTLINED_FUNCTION_23(v58);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_1();
  v716 = v60;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_98_5();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252920, &qword_2683E8558);
  v63 = OUTLINED_FUNCTION_23(v62);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252928, &qword_2683E8588);
  OUTLINED_FUNCTION_0_3();
  v688 = v67;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v71 = OUTLINED_FUNCTION_23(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2_1();
  v712 = v72;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_20_38();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v75 = OUTLINED_FUNCTION_23(v74);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_2_1();
  v711 = v76;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_29_18();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v79 = OUTLINED_FUNCTION_23(v78);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_2_1();
  v710 = v80;
  OUTLINED_FUNCTION_8_0();
  v82 = MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_79_5(v82, v83, v84, v85, v86, v87, v88, v89, v675);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v91 = OUTLINED_FUNCTION_23(v90);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_2_1();
  v709 = v92;
  OUTLINED_FUNCTION_8_0();
  v94 = MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_37_13(v94, v95, v96, v97, v98, v99, v100, v101, v675);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252870, &qword_2683E7EC8);
  v103 = OUTLINED_FUNCTION_23(v102);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_7_30();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252878, &qword_2683E7ED0);
  v106 = OUTLINED_FUNCTION_23(v105);
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_15_17();
  v708 = v108;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252838, &qword_2683E7D00);
  v110 = OUTLINED_FUNCTION_23(v109);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_105_2();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252880, &qword_2683E7ED8);
  v114 = OUTLINED_FUNCTION_23(v113);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  v116 = MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_78_3(v116, v117, v118, v119, v120, v121, v122, v123, v675);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252750, &qword_2683E7358);
  v125 = OUTLINED_FUNCTION_23(v124);
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_15_17();
  v707 = v127;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252888, &qword_2683E7EE0);
  v129 = OUTLINED_FUNCTION_23(v128);
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  v131 = MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_77_3(v131, v132, v133, v134, v135, v136, v137, v138, v675);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  OUTLINED_FUNCTION_23(v139);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v140);
  v142 = &v675 - v141;
  v143 = sub_2683CB0D8();
  OUTLINED_FUNCTION_0_3();
  v145 = v144;
  MEMORY[0x28223BE20](v146);
  v705 = &v675 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v692 = v28;
  sub_2683615B0(v142);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v142, 1, v143);
  v717 = v20;
  v718 = v21;
  v714 = v23;
  v704 = v22;
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(v142, &qword_28024D4B0, &unk_2683D26E0);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v149, v150, v151, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252758, &qword_2683E7388);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v155);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802528B8, &qword_2683E8120);
    v156 = v721;
    v157 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    v162 = OUTLINED_FUNCTION_0_51();
    __swift_storeEnumTagSinglePayload(v162, v163, v164, v161);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A08, &qword_2683E9300);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
    v169 = OUTLINED_FUNCTION_53_9();
    __swift_storeEnumTagSinglePayload(v169, v170, v171, v706);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    v172 = OUTLINED_FUNCTION_35_22();
    __swift_storeEnumTagSinglePayload(v172, v173, v174, v175);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v176 = v722;
    v177 = OUTLINED_FUNCTION_30_23();
    __swift_storeEnumTagSinglePayload(v177, v178, v179, v180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    v181 = OUTLINED_FUNCTION_43_13();
    __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
    v185 = OUTLINED_FUNCTION_73_5(&a18);
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v161);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v188 = OUTLINED_FUNCTION_47_8();
    __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
    if (qword_28024C9F8 != -1)
    {
      OUTLINED_FUNCTION_229_0(&qword_28024C9F8);
    }

    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252518, &qword_2683E6CF0);
    OUTLINED_FUNCTION_72_3(v192, qword_2802520E0);
    v193 = OUTLINED_FUNCTION_92_3();
    type metadata accessor for Common.DateTime(v193);
    sub_2683CE298();
    swift_getKeyPath();
    v728 = 1;
    OUTLINED_FUNCTION_4_56();
    sub_2683ABDA4(v194, v195, &protocol conformance descriptor for Common.DateTime);
    OUTLINED_FUNCTION_55_6();
    sub_2683CE2A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v719, &qword_280252888, &qword_2683E7EE0, &a12);
    OUTLINED_FUNCTION_62_4();
    sub_2683ABDA4(v196, v197, &protocol conformance descriptor for Common.Date);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v707, &qword_280252750, &qword_2683E7358, &v711);
    OUTLINED_FUNCTION_115_4();
    sub_2683ABDA4(v198, v199, &protocol conformance descriptor for Common.OffsetDirection);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    sub_2683CE2C8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v156, &qword_280252880, &qword_2683E7ED8, &a17);
    OUTLINED_FUNCTION_9_41();
    sub_2683ABDA4(v200, v201, &protocol conformance descriptor for Common.DateTimeRange);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_174_1();
    sub_26831A8D8(v202, v203, v204, v205);
    OUTLINED_FUNCTION_55_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v708, &qword_280252878, &qword_2683E7ED0, &v713);
    OUTLINED_FUNCTION_114_3();
    sub_2683ABDA4(v206, v207, &protocol conformance descriptor for Common.Duration);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v23, &qword_280252870, &qword_2683E7EC8, &a13);
    OUTLINED_FUNCTION_113_5();
    sub_2683ABDA4(v208, v209, &protocol conformance descriptor for Common.Time);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v723, v709, &qword_2802526A0, &qword_2683E6E78);
    OUTLINED_FUNCTION_3_56();
    sub_2683ABDA4(v210, v211, &protocol conformance descriptor for Common.App);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v176, v710, &qword_280252698, &qword_2683E6E70);
    OUTLINED_FUNCTION_2_65();
    sub_2683ABDA4(v212, v213, &protocol conformance descriptor for Common.ListPosition);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    v214 = v718;
    sub_26831A8D8(v718, v711, &qword_280252690, &qword_2683E6E68);
    OUTLINED_FUNCTION_1_68();
    sub_2683ABDA4(v215, v216, &protocol conformance descriptor for Common.Quantifier);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    v217 = v703;
    sub_26831A8D8(v703, 1, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_55_6();
    sub_2683CE2B8();
    swift_getKeyPath();
    v218 = v717;
    OUTLINED_FUNCTION_163_2();
    sub_26831A8D8(v219, v220, &qword_280252680, &qword_2683E6E58);
    OUTLINED_FUNCTION_0_75();
    sub_2683ABDA4(v221, v222, &protocol conformance descriptor for Common.SearchQualifier);
    OUTLINED_FUNCTION_15_40();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();

    sub_26812C310(v218, &qword_280252680, &qword_2683E6E58);
    sub_26812C310(v217, &qword_280252838, &qword_2683E7D00);
    sub_26812C310(v214, &qword_280252690, &qword_2683E6E68);
    sub_26812C310(v722, &qword_280252698, &qword_2683E6E70);
    sub_26812C310(v723, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v714, &qword_280252870, &qword_2683E7EC8);
    sub_26812C310(v708, &qword_280252878, &qword_2683E7ED0);
    OUTLINED_FUNCTION_7_13(v704);
    sub_26812C310(v721, &qword_280252880, &qword_2683E7ED8);
    sub_26812C310(v707, &qword_280252750, &qword_2683E7358);
    sub_26812C310(v719, &qword_280252888, &qword_2683E7EE0);
  }

  else
  {
    v679 = v145;
    v223 = *(v145 + 32);
    v680 = v143;
    v223(v705, v142, v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A40, &qword_2683E97E0);
    v224 = v686;
    v225 = OUTLINED_FUNCTION_0_51();
    __swift_storeEnumTagSinglePayload(v225, v226, v227, v228);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A90, &qword_2683E9E28);
    v229 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v229, v230, v231, v232);
    v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252770, &qword_2683E7488);
    v234 = v702;
    v235 = OUTLINED_FUNCTION_53_9();
    __swift_storeEnumTagSinglePayload(v235, v236, v237, v233);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B10, &qword_2683EA810);
    v238 = OUTLINED_FUNCTION_73_5(&a9);
    __swift_storeEnumTagSinglePayload(v238, v239, v240, v241);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B08, &qword_2683EA6F0);
    v242 = OUTLINED_FUNCTION_73_5(&a14);
    v677 = v243;
    __swift_storeEnumTagSinglePayload(v242, v244, v245, v243);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802528B8, &qword_2683E8120);
    v246 = OUTLINED_FUNCTION_34_20();
    v682 = v247;
    __swift_storeEnumTagSinglePayload(v246, v248, v249, v247);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802529E8, &qword_2683E8FF0);
    v250 = OUTLINED_FUNCTION_73_5(&a10);
    __swift_storeEnumTagSinglePayload(v250, v251, v252, v253);
    v254 = v713;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v255, v256, v257, v233);
    OUTLINED_FUNCTION_4_0();
    v683 = v233;
    __swift_storeEnumTagSinglePayload(v258, v259, v260, v233);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
    v261 = OUTLINED_FUNCTION_35_22();
    v696 = v262;
    __swift_storeEnumTagSinglePayload(v261, v263, v264, v262);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
    v265 = OUTLINED_FUNCTION_48_12();
    v695 = v266;
    __swift_storeEnumTagSinglePayload(v265, v267, v268, v266);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
    v269 = OUTLINED_FUNCTION_43_13();
    v694 = v270;
    __swift_storeEnumTagSinglePayload(v269, v271, v272, v270);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v273, v274, v275, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
    v276 = OUTLINED_FUNCTION_47_8();
    v693 = v277;
    __swift_storeEnumTagSinglePayload(v276, v278, v279, v277);
    if (qword_28024C9F0 != -1)
    {
      swift_once();
    }

    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252538, &qword_2683E6D10);
    OUTLINED_FUNCTION_133_1(v280, qword_2802520C8);
    v281 = OUTLINED_FUNCTION_61_3();
    type metadata accessor for Common.Date(v281);
    OUTLINED_FUNCTION_9_0();
    sub_2683CE298();
    swift_getKeyPath();
    v727 = 5;
    OUTLINED_FUNCTION_62_4();
    v284 = sub_2683ABDA4(v282, v283, &protocol conformance descriptor for Common.Date);
    OUTLINED_FUNCTION_45_9();
    sub_2683CE2A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v224, &qword_280252920, &qword_2683E8558, &v719);
    sub_2683ABDA4(&qword_280252930, type metadata accessor for Common.CalendarEra, &protocol conformance descriptor for Common.CalendarEra);
    OUTLINED_FUNCTION_10_39();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v24, v716, &qword_280252918, &qword_2683E8550);
    sub_2683ABDA4(&qword_280252938, type metadata accessor for Common.CalendarSystem, &protocol conformance descriptor for Common.CalendarSystem);
    OUTLINED_FUNCTION_10_39();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_2683ABDA4(&qword_2802527C8, type metadata accessor for Common.DateType, &protocol conformance descriptor for Common.DateType);
    OUTLINED_FUNCTION_45_9();
    sub_2683CE2D8();
    swift_getKeyPath();
    v285 = v687;
    sub_26831A8D8(v234, v687, &qword_280252768, &qword_2683E7458);
    v286 = sub_2683ABDA4(&qword_280252778, type metadata accessor for Common.Integer, &protocol conformance descriptor for Common.Integer);
    v678 = v24;
    v287 = v286;
    OUTLINED_FUNCTION_45_9();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v697, &qword_280252910, &qword_2683E8548, &v720);
    sub_2683ABDA4(&qword_280252940, type metadata accessor for Common.DayOfWeek, &protocol conformance descriptor for Common.DayOfWeek);
    OUTLINED_FUNCTION_10_39();
    sub_2683CE2B8();
    swift_getKeyPath();
    v288 = OUTLINED_FUNCTION_134_1();
    OUTLINED_FUNCTION_139_1(v288, v289, v290, &v707);
    sub_2683ABDA4(&qword_280252948, type metadata accessor for Common.MonthOfYear, &protocol conformance descriptor for Common.MonthOfYear);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_166_2(v291, &v699);
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    sub_2683CE2C8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v721, &qword_280252880, &qword_2683E7ED8, &a17);
    OUTLINED_FUNCTION_9_41();
    sub_2683ABDA4(v292, v293, &protocol conformance descriptor for Common.DateTimeRange);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_166_2(v294, &v704);
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v698, &qword_280252900, &qword_2683E8538, &v721);
    OUTLINED_FUNCTION_16_35();
    sub_2683ABDA4(v295, v296, &protocol conformance descriptor for Common.RecurringDateTime);
    OUTLINED_FUNCTION_10_39();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v254, v285, &qword_280252768, &qword_2683E7458);
    OUTLINED_FUNCTION_45_9();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v715, v285, &qword_280252768, &qword_2683E7458);
    OUTLINED_FUNCTION_45_9();
    v716 = v287;
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_120_4();
    sub_26831A8D8(v297, v298, v299, v300);
    OUTLINED_FUNCTION_3_56();
    sub_2683ABDA4(v301, v302, &protocol conformance descriptor for Common.App);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_166_2(v303, &v721);
    swift_getKeyPath();
    v304 = v66;
    v305 = OUTLINED_FUNCTION_87_5();
    sub_26831A8D8(v305, v306, v307, v308);
    OUTLINED_FUNCTION_2_65();
    sub_2683ABDA4(v309, v310, &protocol conformance descriptor for Common.ListPosition);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_166_2(v311, &v720);
    KeyPath = swift_getKeyPath();
    v313 = v718;
    OUTLINED_FUNCTION_123_3();
    sub_26831A8D8(v314, v315, v316, v317);
    OUTLINED_FUNCTION_1_68();
    sub_2683ABDA4(v318, v319, &protocol conformance descriptor for Common.Quantifier);
    OUTLINED_FUNCTION_10_39();
    OUTLINED_FUNCTION_166_2(v320, &v719);
    swift_getKeyPath();
    v321 = v719;
    OUTLINED_FUNCTION_142_2(v719, &qword_280252888, &qword_2683E7EE0, &a12);
    OUTLINED_FUNCTION_9_39();
    sub_2683CE2B8();
    swift_getKeyPath();
    v322 = OUTLINED_FUNCTION_171_2();
    sub_26831A8D8(v322, v323, &qword_280252680, &qword_2683E6E58);
    OUTLINED_FUNCTION_0_75();
    sub_2683ABDA4(v324, v325, &protocol conformance descriptor for Common.SearchQualifier);
    OUTLINED_FUNCTION_119_1();
    v326 = v722;
    v685 = v304;
    v681 = v284;
    OUTLINED_FUNCTION_166_2(v327, &v718);
    sub_26812C310(KeyPath, &qword_280252680, &qword_2683E6E58);
    v328 = v702;
    sub_26812C310(v321, &qword_280252888, &qword_2683E7EE0);
    sub_26812C310(v313, &qword_280252690, &qword_2683E6E68);
    sub_26812C310(v326, &qword_280252698, &qword_2683E6E70);
    v329 = v723;
    sub_26812C310(v723, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v715, &qword_280252768, &qword_2683E7458);
    OUTLINED_FUNCTION_107_3();
    sub_26812C310(v330, v331, v332);
    sub_26812C310(v698, &qword_280252900, &qword_2683E8538);
    v333 = v721;
    sub_26812C310(v721, &qword_280252880, &qword_2683E7ED8);
    v334 = OUTLINED_FUNCTION_134_1();
    sub_26812C310(v334, &qword_280252908, &qword_2683E8540);
    sub_26812C310(v697, &qword_280252910, &qword_2683E8548);
    OUTLINED_FUNCTION_107_3();
    sub_26812C310(v335, v336, v337);
    sub_26812C310(v678, &qword_280252918, &qword_2683E8550);
    sub_26812C310(v686, &qword_280252920, &qword_2683E8558);
    sub_2683CAFF8();
    v338 = KeyPath;
    if ((v339 & 1) == 0)
    {
      v340 = sub_2683CB048();
      if ((v341 & 1) == 0)
      {
        v342 = v340;
        v343 = sub_2683CB038();
        if ((v344 & 1) == 0)
        {
          v675 = v342;
          v678 = v343;
          v676 = swift_getKeyPath();
          OUTLINED_FUNCTION_23_30(v329);
          v345 = OUTLINED_FUNCTION_40_17();
          OUTLINED_FUNCTION_153_2(v345, v346, v347);
          v348 = v713;
          v349 = OUTLINED_FUNCTION_30_23();
          OUTLINED_FUNCTION_167_1(v349, v350, v351);
          v352 = OUTLINED_FUNCTION_43_13();
          OUTLINED_FUNCTION_146_1(v352, v353, v354);
          if (qword_28024CA48 != -1)
          {
            OUTLINED_FUNCTION_243_0(&qword_28024CA48);
          }

          v698 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524D8, &qword_2683E6CB0);
          v697 = __swift_project_value_buffer(v698, qword_2802521D0);
          sub_2683CD188();
          v355 = OUTLINED_FUNCTION_92_3();
          v686 = type metadata accessor for Common.Integer(v355);
          sub_2683CE298();
          swift_getKeyPath();
          sub_2683CE2F8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_28_24();
          sub_2683CE2C8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_120_4();
          sub_26831A8D8(v356, v357, v358, v359);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_111_5();
          sub_2683CE2B8();
          swift_getKeyPath();
          v360 = OUTLINED_FUNCTION_87_5();
          sub_26831A8D8(v360, v361, v362, v363);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_126_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_123_3();
          sub_26831A8D8(v364, v365, v366, v367);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_127_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_145_2();
          sub_26831A8D8(v368, v369, v370, v371);
          OUTLINED_FUNCTION_21_29();
          sub_2683CE2B8();
          swift_getKeyPath();
          v372 = v338;
          v373 = v328;
          OUTLINED_FUNCTION_135_2();
          v375 = v374;
          sub_26831A8D8(v376, v377, v374, &qword_2683E6E58);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_124_4();
          sub_2683CE2B8();
          sub_26812C310(v372, v375, &qword_2683E6E58);
          sub_26812C310(v348, &qword_280252768, &qword_2683E7458);
          sub_26812C310(v313, &qword_280252690, &qword_2683E6E68);
          sub_26812C310(v722, &qword_280252698, &qword_2683E6E70);
          sub_26812C310(v723, &qword_2802526A0, &qword_2683E6E78);
          v378 = OUTLINED_FUNCTION_48_9();
          __swift_storeEnumTagSinglePayload(v378, v379, v380, v333);
          OUTLINED_FUNCTION_125_3();
          sub_2683CE2B8();
          v676 = swift_getKeyPath();
          v381 = OUTLINED_FUNCTION_50_13();
          __swift_storeEnumTagSinglePayload(v381, v382, v383, v696);
          v384 = OUTLINED_FUNCTION_58_8();
          __swift_storeEnumTagSinglePayload(v384, v385, v386, v695);
          v387 = v372;
          OUTLINED_FUNCTION_4_0();
          OUTLINED_FUNCTION_153_2(v388, v389, v390);
          v391 = OUTLINED_FUNCTION_30_23();
          __swift_storeEnumTagSinglePayload(v391, v392, v393, v333);
          v394 = OUTLINED_FUNCTION_47_8();
          OUTLINED_FUNCTION_100_4(v394, v395, v396);
          sub_2683CE298();
          swift_getKeyPath();
          v397 = v710;
          sub_2683CE2F8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_28_24();
          sub_2683CE2C8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_120_4();
          sub_26831A8D8(v398, v399, &qword_2802526A0, &qword_2683E6E78);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_111_5();
          sub_2683CE2B8();
          swift_getKeyPath();
          sub_26831A8D8(v722, v397, &qword_280252698, &qword_2683E6E70);
          OUTLINED_FUNCTION_126_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_123_3();
          sub_26831A8D8(v400, v401, &qword_280252690, &qword_2683E6E68);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_127_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_145_2();
          sub_26831A8D8(v402, v403, &qword_280252768, &qword_2683E7458);
          OUTLINED_FUNCTION_21_29();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_135_2();
          sub_26831A8D8(v404, v405, &qword_280252680, &qword_2683E6E58);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_124_4();
          sub_2683CE2B8();
          v407 = v722;
          v406 = v723;
          sub_26812C310(v387, &qword_280252680, &qword_2683E6E58);
          sub_26812C310(v348, &qword_280252768, &qword_2683E7458);
          sub_26812C310(v718, &qword_280252690, &qword_2683E6E68);
          sub_26812C310(v407, &qword_280252698, &qword_2683E6E70);
          sub_26812C310(v406, &qword_2802526A0, &qword_2683E6E78);
          v408 = OUTLINED_FUNCTION_48_9();
          __swift_storeEnumTagSinglePayload(v408, v409, v410, v333);
          v411 = OUTLINED_FUNCTION_47_8();
          __swift_storeEnumTagSinglePayload(v411, v412, v413, v696);
          v414 = OUTLINED_FUNCTION_53_9();
          __swift_storeEnumTagSinglePayload(v414, v415, v416, v695);
          v417 = OUTLINED_FUNCTION_0_51();
          OUTLINED_FUNCTION_153_2(v417, v418, v419);
          v420 = OUTLINED_FUNCTION_73_5(&v707);
          v421 = v677;
          __swift_storeEnumTagSinglePayload(v420, v422, v423, v677);
          v424 = OUTLINED_FUNCTION_40_17();
          OUTLINED_FUNCTION_146_1(v424, v425, v426);
          if (qword_28024CA60 != -1)
          {
            swift_once();
          }

          v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525F0, &qword_2683E6DC8);
          OUTLINED_FUNCTION_133_1(v427, qword_280252218);
          v428 = OUTLINED_FUNCTION_61_3();
          type metadata accessor for Common.MonthOfYear(v428);
          OUTLINED_FUNCTION_9_0();
          sub_2683CE298();
          swift_getKeyPath();
          v724 = 12;
          sub_2683CE2A8();
          swift_getKeyPath();
          sub_26831A8D8(v373, v713, &qword_280252768, &qword_2683E7458);
          OUTLINED_FUNCTION_44_16();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_120_4();
          sub_26831A8D8(v429, v430, v431, v432);
          OUTLINED_FUNCTION_44_16();
          OUTLINED_FUNCTION_111_5();
          sub_2683CE2B8();
          swift_getKeyPath();
          sub_26831A8D8(v407, v710, &qword_280252698, &qword_2683E6E70);
          OUTLINED_FUNCTION_44_16();
          OUTLINED_FUNCTION_126_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_123_3();
          sub_26831A8D8(v433, v434, v435, v436);
          OUTLINED_FUNCTION_44_16();
          OUTLINED_FUNCTION_127_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          v437 = v684;
          OUTLINED_FUNCTION_139_1(v684, &qword_280252908, &qword_2683E8540, &v702);
          OUTLINED_FUNCTION_44_16();
          sub_2683CE2B8();
          swift_getKeyPath();
          v438 = v717;
          OUTLINED_FUNCTION_107_3();
          sub_26831A8D8(v439, v440, v441, &qword_2683E6E58);
          OUTLINED_FUNCTION_44_16();
          OUTLINED_FUNCTION_124_4();
          sub_2683CE2B8();
          sub_26812C310(v438, &qword_280252680, &qword_2683E6E58);
          sub_26812C310(v437, &qword_280252908, &qword_2683E8540);
          v442 = OUTLINED_FUNCTION_169_1();
          sub_26812C310(v442, &qword_280252690, &qword_2683E6E68);
          sub_26812C310(v722, &qword_280252698, &qword_2683E6E70);
          sub_26812C310(v723, &qword_2802526A0, &qword_2683E6E78);
          sub_26812C310(v373, &qword_280252768, &qword_2683E7458);
          OUTLINED_FUNCTION_10_0();
          __swift_storeEnumTagSinglePayload(v443, v444, v445, v421);
          OUTLINED_FUNCTION_125_3();
          sub_2683CE2B8();
          v700 = swift_getKeyPath();
          v446 = OUTLINED_FUNCTION_50_13();
          __swift_storeEnumTagSinglePayload(v446, v447, v448, v696);
          v449 = OUTLINED_FUNCTION_58_8();
          __swift_storeEnumTagSinglePayload(v449, v450, v451, v695);
          OUTLINED_FUNCTION_4_0();
          OUTLINED_FUNCTION_153_2(v452, v453, v454);
          v455 = v713;
          v456 = OUTLINED_FUNCTION_47_8();
          OUTLINED_FUNCTION_167_1(v456, v457, v458);
          v459 = v717;
          v460 = OUTLINED_FUNCTION_40_17();
          OUTLINED_FUNCTION_100_4(v460, v461, v462);
          sub_2683CE298();
          swift_getKeyPath();
          sub_2683CE2F8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_28_24();
          sub_2683CE2C8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_120_4();
          sub_26831A8D8(v463, v464, &qword_2802526A0, &qword_2683E6E78);
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_111_5();
          sub_2683CE2B8();
          swift_getKeyPath();
          v465 = OUTLINED_FUNCTION_87_5();
          sub_26831A8D8(v465, v466, &qword_280252698, &qword_2683E6E70);
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_126_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_123_3();
          sub_26831A8D8(v467, v468, &qword_280252690, &qword_2683E6E68);
          OUTLINED_FUNCTION_27_21();
          OUTLINED_FUNCTION_127_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          sub_26831A8D8(v455, v715, &qword_280252768, &qword_2683E7458);
          OUTLINED_FUNCTION_136_2();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_135_2();
          sub_26831A8D8(v469, v470, &qword_280252680, &qword_2683E6E58);
          OUTLINED_FUNCTION_21_29();
          OUTLINED_FUNCTION_124_4();
          sub_2683CE2B8();
          v329 = v723;
          sub_26812C310(v459, &qword_280252680, &qword_2683E6E58);
          sub_26812C310(v455, &qword_280252768, &qword_2683E7458);
          v471 = OUTLINED_FUNCTION_169_1();
          sub_26812C310(v471, &qword_280252690, &qword_2683E6E68);
          sub_26812C310(v722, &qword_280252698, &qword_2683E6E70);
          sub_26812C310(v329, &qword_2802526A0, &qword_2683E6E78);
          v472 = OUTLINED_FUNCTION_48_9();
          __swift_storeEnumTagSinglePayload(v472, v473, v474, v438);
          OUTLINED_FUNCTION_125_3();
          sub_2683CE2B8();
        }
      }
    }

    v475 = OUTLINED_FUNCTION_0_51();
    v476 = v683;
    __swift_storeEnumTagSinglePayload(v475, v477, v478, v683);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v479, v480, v481, v476);
    v482 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v482, v483, v484, v682);
    v485 = OUTLINED_FUNCTION_47_8();
    __swift_storeEnumTagSinglePayload(v485, v486, v487, v476);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B58, &qword_2683EADC0);
    v488 = OUTLINED_FUNCTION_73_5(&a11);
    __swift_storeEnumTagSinglePayload(v488, v489, v490, v491);
    OUTLINED_FUNCTION_23_30(v329);
    v492 = OUTLINED_FUNCTION_40_17();
    OUTLINED_FUNCTION_153_2(v492, v493, v494);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v495, v496, v497, v706);
    v498 = OUTLINED_FUNCTION_43_13();
    OUTLINED_FUNCTION_146_1(v498, v499, v500);
    if (qword_28024CB18 != -1)
    {
      swift_once();
    }

    v501 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525A8, &qword_2683E6D80);
    OUTLINED_FUNCTION_133_1(v501, qword_280252440);
    v502 = OUTLINED_FUNCTION_61_3();
    type metadata accessor for Common.Time(v502);
    OUTLINED_FUNCTION_9_0();
    sub_2683CE298();
    swift_getKeyPath();
    v726 = 5;
    OUTLINED_FUNCTION_113_5();
    v505 = sub_2683ABDA4(v503, v504, &protocol conformance descriptor for Common.Time);
    OUTLINED_FUNCTION_72_4();
    sub_2683CE2A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_136_2();
    sub_26831A8D8(v506, v507, v508, v509);
    OUTLINED_FUNCTION_72_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_136_2();
    sub_26831A8D8(v510, v511, v512, v513);
    OUTLINED_FUNCTION_72_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    sub_2683CE2C8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v721, &qword_280252880, &qword_2683E7ED8, &a17);
    OUTLINED_FUNCTION_72_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_136_2();
    sub_26831A8D8(v514, v515, v516, v517);
    OUTLINED_FUNCTION_72_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_139_1(v699, &qword_280252A48, &qword_2683E98B0, &v703);
    sub_2683ABDA4(&qword_280252A58, type metadata accessor for Common.TimeZone, &protocol conformance descriptor for Common.TimeZone);
    OUTLINED_FUNCTION_71_1();
    OUTLINED_FUNCTION_109_4();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_120_4();
    sub_26831A8D8(v518, v519, v520, v521);
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_111_5();
    sub_2683CE2B8();
    v522 = swift_getKeyPath();
    v523 = OUTLINED_FUNCTION_87_5();
    sub_26831A8D8(v523, v524, v525, v526);
    OUTLINED_FUNCTION_72_4();
    OUTLINED_FUNCTION_126_3();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v718, v711, &qword_280252690, &qword_2683E6E68);
    OUTLINED_FUNCTION_93_4();
    OUTLINED_FUNCTION_127_3();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_162_2();
    sub_26831A8D8(v527, v528, &qword_280252870, &qword_2683E7EC8);
    OUTLINED_FUNCTION_107_3();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_171_2();
    OUTLINED_FUNCTION_119_3();
    sub_26831A8D8(v529, v530, v531, v532);
    v533 = v722;
    OUTLINED_FUNCTION_107_3();
    v700 = v505;
    OUTLINED_FUNCTION_124_4();
    sub_2683CE2B8();
    v534 = v714;
    sub_26812C310(v522, &qword_280252680, &qword_2683E6E58);
    v535 = v718;
    sub_26812C310(v534, &qword_280252870, &qword_2683E7EC8);
    sub_26812C310(v535, &qword_280252690, &qword_2683E6E68);
    v536 = v720;
    sub_26812C310(v533, &qword_280252698, &qword_2683E6E70);
    sub_26812C310(v723, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v699, &qword_280252A48, &qword_2683E98B0);
    sub_26812C310(v715, &qword_280252768, &qword_2683E7458);
    sub_26812C310(v721, &qword_280252880, &qword_2683E7ED8);
    v537 = OUTLINED_FUNCTION_93_4();
    sub_26812C310(v537, v538, &qword_2683E7458);
    OUTLINED_FUNCTION_107_3();
    sub_26812C310(v539, v540, v541);
    sub_2683CB028();
    if ((v542 & 1) == 0)
    {
      v699 = swift_getKeyPath();
      v543 = v723;
      OUTLINED_FUNCTION_23_30(v723);
      v544 = OUTLINED_FUNCTION_0_51();
      OUTLINED_FUNCTION_153_2(v544, v545, v546);
      v547 = OUTLINED_FUNCTION_52_9();
      v548 = v683;
      __swift_storeEnumTagSinglePayload(v547, v549, v550, v683);
      OUTLINED_FUNCTION_51_10();
      __swift_storeEnumTagSinglePayload(v552, v553, v554, *(v551 - 256));
      if (qword_28024CA48 != -1)
      {
        OUTLINED_FUNCTION_243_0(&qword_28024CA48);
      }

      v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524D8, &qword_2683E6CB0);
      v556 = __swift_project_value_buffer(v555, qword_2802521D0);
      v698 = v555;
      v697 = v556;
      sub_2683CD188();
      type metadata accessor for Common.Integer(0);
      OUTLINED_FUNCTION_172_2();
      v687 = v557;
      sub_2683CE298();
      swift_getKeyPath();
      OUTLINED_FUNCTION_152_1();
      sub_2683CE2F8();
      swift_getKeyPath();
      OUTLINED_FUNCTION_28_24();
      sub_2683CE2C8();
      swift_getKeyPath();
      sub_26831A8D8(v543, v709, &qword_2802526A0, &qword_2683E6E78);
      OUTLINED_FUNCTION_49_10();
      OUTLINED_FUNCTION_111_5();
      sub_2683CE2B8();
      swift_getKeyPath();
      sub_26831A8D8(v533, v710, &qword_280252698, &qword_2683E6E70);
      OUTLINED_FUNCTION_49_10();
      OUTLINED_FUNCTION_126_3();
      sub_2683CE2B8();
      swift_getKeyPath();
      sub_26831A8D8(v535, v711, &qword_280252690, &qword_2683E6E68);
      OUTLINED_FUNCTION_49_10();
      OUTLINED_FUNCTION_127_3();
      sub_2683CE2B8();
      swift_getKeyPath();
      v558 = v713;
      OUTLINED_FUNCTION_179_2();
      sub_26831A8D8(v559, v560, v561, &qword_2683E7458);
      OUTLINED_FUNCTION_49_10();
      sub_2683CE2B8();
      swift_getKeyPath();
      v562 = v717;
      sub_26831A8D8(v717, v712, &qword_280252680, &qword_2683E6E58);
      OUTLINED_FUNCTION_93_4();
      OUTLINED_FUNCTION_124_4();
      sub_2683CE2B8();
      sub_26812C310(v562, &qword_280252680, &qword_2683E6E58);
      v563 = v722;
      sub_26812C310(v558, &qword_280252768, &qword_2683E7458);
      sub_26812C310(v535, &qword_280252690, &qword_2683E6E68);
      sub_26812C310(v563, &qword_280252698, &qword_2683E6E70);
      sub_26812C310(v723, &qword_2802526A0, &qword_2683E6E78);
      v564 = OUTLINED_FUNCTION_48_9();
      __swift_storeEnumTagSinglePayload(v564, v565, v566, v548);
      OUTLINED_FUNCTION_96_4();
      v536 = v720;
      sub_2683CE2B8();
      sub_2683CB068();
      v534 = v714;
      if ((v567 & 1) == 0)
      {
        v699 = swift_getKeyPath();
        OUTLINED_FUNCTION_23_30(v723);
        v568 = OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_153_2(v568, v569, v570);
        v571 = OUTLINED_FUNCTION_31_18();
        OUTLINED_FUNCTION_167_1(v571, v572, v573);
        v574 = v717;
        OUTLINED_FUNCTION_51_10();
        __swift_storeEnumTagSinglePayload(v576, v577, v578, *(v575 - 256));
        sub_2683CD188();
        sub_2683CE298();
        swift_getKeyPath();
        OUTLINED_FUNCTION_152_1();
        sub_2683CE2F8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_28_24();
        sub_2683CE2C8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_120_4();
        sub_26831A8D8(v579, v580, v581, v582);
        OUTLINED_FUNCTION_27_21();
        OUTLINED_FUNCTION_111_5();
        sub_2683CE2B8();
        swift_getKeyPath();
        sub_26831A8D8(v563, v710, &qword_280252698, &qword_2683E6E70);
        OUTLINED_FUNCTION_27_21();
        OUTLINED_FUNCTION_126_3();
        sub_2683CE2B8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_123_3();
        sub_26831A8D8(v583, v584, v585, v586);
        OUTLINED_FUNCTION_27_21();
        OUTLINED_FUNCTION_127_3();
        sub_2683CE2B8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_145_2();
        sub_26831A8D8(v587, v588, &qword_280252768, &qword_2683E7458);
        OUTLINED_FUNCTION_27_21();
        sub_2683CE2B8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_107_3();
        sub_26831A8D8(v589, v590, v591, &qword_2683E6E58);
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_124_4();
        sub_2683CE2B8();
        sub_26812C310(v574, &qword_280252680, &qword_2683E6E58);
        v592 = v722;
        sub_26812C310(v558, &qword_280252768, &qword_2683E7458);
        v534 = v714;
        v536 = v720;
        sub_26812C310(v718, &qword_280252690, &qword_2683E6E68);
        sub_26812C310(v592, &qword_280252698, &qword_2683E6E70);
        sub_26812C310(v723, &qword_2802526A0, &qword_2683E6E78);
        v593 = OUTLINED_FUNCTION_48_9();
        __swift_storeEnumTagSinglePayload(v593, v594, v595, v558);
        v596 = OUTLINED_FUNCTION_96_4();
        OUTLINED_FUNCTION_165_1(v596);
        sub_2683CB078();
        if ((v597 & 1) == 0)
        {
          v699 = swift_getKeyPath();
          v598 = v723;
          OUTLINED_FUNCTION_23_30(v723);
          v599 = OUTLINED_FUNCTION_0_51();
          OUTLINED_FUNCTION_153_2(v599, v600, v601);
          v602 = OUTLINED_FUNCTION_52_9();
          v603 = v683;
          __swift_storeEnumTagSinglePayload(v602, v604, v605, v683);
          v606 = v717;
          v607 = OUTLINED_FUNCTION_0_51();
          OUTLINED_FUNCTION_100_4(v607, v608, v609);
          sub_2683CE298();
          swift_getKeyPath();
          OUTLINED_FUNCTION_152_1();
          sub_2683CE2F8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_28_24();
          sub_2683CE2C8();
          swift_getKeyPath();
          sub_26831A8D8(v598, v709, &qword_2802526A0, &qword_2683E6E78);
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_111_5();
          sub_2683CE2B8();
          swift_getKeyPath();
          sub_26831A8D8(v592, v710, &qword_280252698, &qword_2683E6E70);
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_126_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          sub_26831A8D8(v718, v711, &qword_280252690, &qword_2683E6E68);
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_127_3();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_179_2();
          sub_26831A8D8(v610, v611, &qword_280252768, v612);
          OUTLINED_FUNCTION_61_6();
          sub_2683CE2B8();
          swift_getKeyPath();
          OUTLINED_FUNCTION_163_2();
          sub_26831A8D8(v613, v614, &qword_280252680, &qword_2683E6E58);
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_124_4();
          sub_2683CE2B8();
          v615 = v722;
          sub_26812C310(v606, &qword_280252680, &qword_2683E6E58);
          v536 = v720;
          sub_26812C310(v558, &qword_280252768, &qword_2683E7458);
          v534 = v714;
          sub_26812C310(v718, &qword_280252690, &qword_2683E6E68);
          sub_26812C310(v615, &qword_280252698, &qword_2683E6E70);
          sub_26812C310(v723, &qword_2802526A0, &qword_2683E6E78);
          v616 = OUTLINED_FUNCTION_48_9();
          __swift_storeEnumTagSinglePayload(v616, v617, v618, v603);
          OUTLINED_FUNCTION_96_4();
          sub_2683CE2B8();
        }
      }
    }

    v619 = v719;
    v620 = v685;
    (*(v688 + 16))(v719, v701, v685);
    v621 = v619;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v622, v623, v624, v620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252758, &qword_2683E7388);
    v625 = v707;
    v626 = OUTLINED_FUNCTION_31_18();
    __swift_storeEnumTagSinglePayload(v626, v627, v628, v629);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v630, v631, v632, v682);
    v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252890, &qword_2683E7F10);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v634, v635, v636, v633);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A08, &qword_2683E9300);
    v637 = v708;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v638, v639, v640, v641);
    v642 = v706;
    (*(v689 + 16))(v534, v536, v706);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v643, v644, v645, v642);
    OUTLINED_FUNCTION_23_30(v723);
    v646 = OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_153_2(v646, v647, v648);
    v649 = OUTLINED_FUNCTION_73_5(&a18);
    __swift_storeEnumTagSinglePayload(v649, v650, v651, v633);
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v653, v654, v655, *(v652 - 256));
    if (qword_28024C9F8 != -1)
    {
      OUTLINED_FUNCTION_229_0(&qword_28024C9F8);
    }

    v656 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252518, &qword_2683E6CF0);
    OUTLINED_FUNCTION_72_3(v656, qword_2802520E0);
    v657 = OUTLINED_FUNCTION_92_3();
    type metadata accessor for Common.DateTime(v657);
    OUTLINED_FUNCTION_150_2();
    sub_2683CE298();
    swift_getKeyPath();
    v725 = 1;
    OUTLINED_FUNCTION_4_56();
    sub_2683ABDA4(v658, v659, &protocol conformance descriptor for Common.DateTime);
    OUTLINED_FUNCTION_29_24();
    sub_2683CE2A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v621, &qword_280252888, &qword_2683E7EE0, &a12);
    OUTLINED_FUNCTION_26_27();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v625, &qword_280252750, &qword_2683E7358, &v711);
    OUTLINED_FUNCTION_115_4();
    sub_2683ABDA4(v660, v661, &protocol conformance descriptor for Common.OffsetDirection);
    OUTLINED_FUNCTION_15_40();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_28_24();
    sub_2683CE2C8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v721, &qword_280252880, &qword_2683E7ED8, &a17);
    OUTLINED_FUNCTION_26_27();
    sub_2683CE2B8();
    swift_getKeyPath();
    v662 = v690;
    sub_26831A8D8(v704, v690, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_29_24();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v637, &qword_280252878, &qword_2683E7ED0, &v713);
    OUTLINED_FUNCTION_114_3();
    sub_2683ABDA4(v663, v664, &protocol conformance descriptor for Common.Duration);
    OUTLINED_FUNCTION_15_40();
    sub_2683CE2B8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_142_2(v534, &qword_280252870, &qword_2683E7EC8, &a13);
    OUTLINED_FUNCTION_26_27();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v723, v709, &qword_2802526A0, &qword_2683E6E78);
    OUTLINED_FUNCTION_26_27();
    OUTLINED_FUNCTION_111_5();
    sub_2683CE2B8();
    swift_getKeyPath();
    sub_26831A8D8(v722, v710, &qword_280252698, &qword_2683E6E70);
    OUTLINED_FUNCTION_26_27();
    OUTLINED_FUNCTION_126_3();
    sub_2683CE2B8();
    swift_getKeyPath();
    v665 = v718;
    sub_26831A8D8(v718, v711, &qword_280252690, &qword_2683E6E68);
    OUTLINED_FUNCTION_26_27();
    OUTLINED_FUNCTION_127_3();
    sub_2683CE2B8();
    swift_getKeyPath();
    v666 = v703;
    sub_26831A8D8(v703, v662, &qword_280252838, &qword_2683E7D00);
    OUTLINED_FUNCTION_29_24();
    sub_2683CE2B8();
    swift_getKeyPath();
    v667 = v717;
    OUTLINED_FUNCTION_163_2();
    OUTLINED_FUNCTION_92_5();
    sub_26831A8D8(v668, v669, v670, v671);
    OUTLINED_FUNCTION_26_27();
    OUTLINED_FUNCTION_124_4();
    sub_2683CE2B8();

    sub_26812C310(v667, &qword_280252680, &qword_2683E6E58);
    sub_26812C310(v666, &qword_280252838, &qword_2683E7D00);
    sub_26812C310(v665, &qword_280252690, &qword_2683E6E68);
    sub_26812C310(v722, &qword_280252698, &qword_2683E6E70);
    sub_26812C310(v723, &qword_2802526A0, &qword_2683E6E78);
    sub_26812C310(v714, &qword_280252870, &qword_2683E7EC8);
    sub_26812C310(v708, &qword_280252878, &qword_2683E7ED0);
    OUTLINED_FUNCTION_7_13(v704);
    sub_26812C310(v721, &qword_280252880, &qword_2683E7ED8);
    sub_26812C310(v707, &qword_280252750, &qword_2683E7358);
    sub_26812C310(v719, &qword_280252888, &qword_2683E7EE0);
    OUTLINED_FUNCTION_12_15();
    v672(v720, v706);
    OUTLINED_FUNCTION_12_15();
    v673(v701, v685);
    OUTLINED_FUNCTION_12_15();
    v674(v705, v680);
  }

  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  a19 = v27;
  a20 = v28;
  v220 = v29;
  v203 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v32 = OUTLINED_FUNCTION_23(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_1();
  v210 = v33;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_20_38();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v36 = OUTLINED_FUNCTION_23(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2_1();
  v209 = v37;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_15_17();
  v219 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v41 = OUTLINED_FUNCTION_23(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_1();
  v208 = v42;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_15_17();
  v218 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v46 = OUTLINED_FUNCTION_23(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_1();
  v207 = v47;
  OUTLINED_FUNCTION_8_0();
  v49 = MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_37_13(v49, v50, v51, v52, v53, v54, v55, v56, v199);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v58 = OUTLINED_FUNCTION_23(v57);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_2_1();
  v206 = v59;
  OUTLINED_FUNCTION_8_0();
  v61 = MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_79_5(v61, v62, v63, v64, v65, v66, v67, v68, v199);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527D8, &qword_2683E7978);
  v70 = OUTLINED_FUNCTION_23(v69);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_2_1();
  v205 = v71;
  OUTLINED_FUNCTION_8_0();
  v73 = MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_78_3(v73, v74, v75, v76, v77, v78, v79, v80, v199);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A98, &qword_2683E9EF8);
  v82 = OUTLINED_FUNCTION_23(v81);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_56_3();
  v221 = v84;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_15_17();
  v216 = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252798, &qword_2683E7680);
  v88 = OUTLINED_FUNCTION_23(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_29_18();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A10, &qword_2683E9420);
  v91 = OUTLINED_FUNCTION_23(v90);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_105_2();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AE0, &qword_2683EA3B8);
  v94 = OUTLINED_FUNCTION_23(v93);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_156_2();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_7_30();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252888, &qword_2683E7EE0);
  v97 = OUTLINED_FUNCTION_23(v96);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_19_3();
  v99 = MEMORY[0x28223BE20](v98);
  v101 = &v199 - v100;
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_128_2();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AE8, &qword_2683EA3C0);
  v103 = OUTLINED_FUNCTION_23(v102);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_19_3();
  v106 = v104 - v105;
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_106_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252BA8, &qword_2683EB920);
  v211 = v20;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252928, &qword_2683E8588);
  v213 = v22;
  v113 = OUTLINED_FUNCTION_52_9();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B50, &qword_2683EAC78);
  v214 = v25;
  v116 = OUTLINED_FUNCTION_53_9();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
  v212 = v101;
  v120 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252A18, &qword_2683E9450);
  v215 = v24;
  v123 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B98, &qword_2683EB6E0);
  v217 = v23;
  v127 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
  v131 = [v220 triggerContact];
  if (v131)
  {
    v132 = v131;
    v133 = [v131 displayName];

    v201 = sub_2683CFA78();
    v200 = v134;
  }

  else
  {
    v201 = 0;
    v200 = 0;
  }

  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AA0, &qword_2683E9F28);
  v136 = v216;
  v137 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v135);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527E0, &qword_2683E79A8);
  v140 = OUTLINED_FUNCTION_34_20();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v143);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v135);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v147 = OUTLINED_FUNCTION_48_12();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  v151 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v151, v152, v153, v154);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v155, v156, v157, v158);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v160, v161, v162, v159);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v163 = OUTLINED_FUNCTION_47_8();
  __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);
  v202 = v21;
  if (qword_28024CA98 != -1)
  {
    swift_once();
  }

  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802525E8, &qword_2683E6DC0);
  OUTLINED_FUNCTION_72_3(v167, qword_2802522C0);
  type metadata accessor for Common.Person(0);
  sub_2683CE298();
  swift_getKeyPath();
  v225 = 1;
  OUTLINED_FUNCTION_5_54();
  sub_2683ABDA4(v168, v169, &protocol conformance descriptor for Common.Person);
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2A8();
  swift_getKeyPath();
  sub_26831A8D8(v211, v106, &qword_280252AE8, &qword_2683EA3C0);
  sub_2683ABDA4(&qword_280252AF8, type metadata accessor for Common.Age, &protocol conformance descriptor for Common.Age);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_5();
  sub_26831A8D8(v170, v171, v172, v173);
  OUTLINED_FUNCTION_62_4();
  sub_2683ABDA4(v174, v175, &protocol conformance descriptor for Common.Date);
  OUTLINED_FUNCTION_65_2();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v214, v26, &qword_280252AE0, &qword_2683EA3B8);
  sub_2683ABDA4(&qword_280252B00, type metadata accessor for Common.Organization, &protocol conformance descriptor for Common.Organization);
  OUTLINED_FUNCTION_119_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683ABDA4(&qword_2802526B0, type metadata accessor for CommonContact.Attribute, &protocol conformance descriptor for CommonContact.Attribute);
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2D8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_5();
  sub_26831A8D8(v176, v177, v178, v179);
  OUTLINED_FUNCTION_65_2();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v215, &qword_280252A10, &qword_2683E9420, &a15);
  sub_2683ABDA4(&qword_280252A20, type metadata accessor for Common.PersonRelationship, &protocol conformance descriptor for Common.PersonRelationship);
  OUTLINED_FUNCTION_71_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_139_1(v217, &qword_280252798, &qword_2683E7680, &a16);
  OUTLINED_FUNCTION_116_4();
  sub_2683ABDA4(v180, v181, &protocol conformance descriptor for Common.Geolocation);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_28_24();
  sub_2683CE2C8();
  swift_getKeyPath();
  v182 = v204;
  sub_26831A8D8(v136, v204, &qword_280252A98, &qword_2683E9EF8);
  sub_2683ABDA4(&qword_280252AA8, type metadata accessor for Common.PersonName, &protocol conformance descriptor for Common.PersonName);
  OUTLINED_FUNCTION_71_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2D8();
  swift_getKeyPath();
  sub_26831A8D8(v222, v205, &qword_2802527D8, &qword_2683E7978);
  OUTLINED_FUNCTION_19_40();
  sub_2683ABDA4(v183, v184, &protocol conformance descriptor for Common.ContactAddress);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v221, v182, &qword_280252A98, &qword_2683E9EF8);
  OUTLINED_FUNCTION_71_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v223, v206, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v185, v186, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v224, v207, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v187, v188, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  KeyPath = swift_getKeyPath();
  v190 = v218;
  sub_26831A8D8(v218, v208, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v191, v192, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_71_1();
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();
  swift_getKeyPath();
  v193 = OUTLINED_FUNCTION_169_1();
  sub_26831A8D8(v193, v209, v194, v195);
  OUTLINED_FUNCTION_65_2();
  sub_2683CE2B8();
  swift_getKeyPath();
  v196 = v202;
  sub_26831A8D8(v202, v210, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v197, v198, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_68_4();
  sub_2683CE2B8();

  sub_26812C310(v196, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(KeyPath, &qword_280252718, &qword_2683E71B0);
  sub_26812C310(v190, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v224, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v223, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v221, &qword_280252A98, &qword_2683E9EF8);
  sub_26812C310(v222, &qword_2802527D8, &qword_2683E7978);
  OUTLINED_FUNCTION_7_13(v216);
  sub_26812C310(v217, &qword_280252798, &qword_2683E7680);
  sub_26812C310(v215, &qword_280252A10, &qword_2683E9420);
  sub_26812C310(v212, &qword_280252888, &qword_2683E7EE0);
  sub_26812C310(v214, &qword_280252AE0, &qword_2683EA3B8);
  OUTLINED_FUNCTION_7_13(v213);
  sub_26812C310(v211, &qword_280252AE8, &qword_2683EA3C0);
  OUTLINED_FUNCTION_29_0();
}

{
  OUTLINED_FUNCTION_30_0();
  a19 = v25;
  a20 = v26;
  v403 = v27;
  v386 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252708, &qword_2683E71A0);
  v30 = OUTLINED_FUNCTION_23(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_6_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252798, &qword_2683E7680);
  v34 = OUTLINED_FUNCTION_23(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15_17();
  v401 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252718, &qword_2683E71B0);
  v38 = OUTLINED_FUNCTION_23(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_1();
  v397 = v39;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15_17();
  v400 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252680, &qword_2683E6E58);
  v43 = OUTLINED_FUNCTION_23(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_1();
  v409 = v44;
  OUTLINED_FUNCTION_8_0();
  v46 = MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_79_5(v46, v47, v48, v49, v50, v51, v52, v53, v376);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252720, &qword_2683E71B8);
  v55 = OUTLINED_FUNCTION_23(v54);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_15_17();
  v402 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252690, &qword_2683E6E68);
  v59 = OUTLINED_FUNCTION_23(v58);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_1();
  v404 = v60;
  OUTLINED_FUNCTION_8_0();
  v62 = MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_37_13(v62, v63, v64, v65, v66, v67, v68, v69, v376);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252698, &qword_2683E6E70);
  v71 = OUTLINED_FUNCTION_23(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2_1();
  v407 = v72;
  OUTLINED_FUNCTION_8_0();
  v74 = MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_77_3(v74, v75, v76, v77, v78, v79, v80, v81, v376);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802526A0, &qword_2683E6E78);
  v83 = OUTLINED_FUNCTION_23(v82);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_2_1();
  v406 = v84;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_98_5();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252710, &qword_2683E71A8);
  v87 = OUTLINED_FUNCTION_23(v86);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_178_2();
  v90 = MEMORY[0x28223BE20](v89);
  v92 = &v376 - v91;
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_23_14();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_156_2();
  v95 = MEMORY[0x28223BE20](v94);
  v97 = &v376 - v96;
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_29_18();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B90, &qword_2683EB458);
  OUTLINED_FUNCTION_0_3();
  v391 = v99;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_5_0();
  v405 = v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527A0, &qword_2683E76B0);
  v103 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v102);
  v413 = v97;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v102);
  v410 = v24;
  v109 = OUTLINED_FUNCTION_30_23();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v102);
  v399 = v22;
  v112 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v102);
  v387 = v92;
  v115 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v102);
  v388 = v20;
  v118 = OUTLINED_FUNCTION_47_8();
  v384 = v102;
  v119 = v415;
  __swift_storeEnumTagSinglePayload(v118, v120, v121, v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B70, &qword_2683EB008);
  v412 = v23;
  v122 = OUTLINED_FUNCTION_31_18();
  v396 = v123;
  __swift_storeEnumTagSinglePayload(v122, v124, v125, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252998, &qword_2683E8BA8);
  OUTLINED_FUNCTION_4_0();
  v395 = v126;
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B18, &qword_2683EA908);
  v130 = OUTLINED_FUNCTION_30_23();
  v394 = v131;
  __swift_storeEnumTagSinglePayload(v130, v132, v133, v131);
  OUTLINED_FUNCTION_4_0();
  v408 = v98;
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802527F8, &qword_2683E7AD0);
  v137 = OUTLINED_FUNCTION_48_12();
  v393 = v138;
  __swift_storeEnumTagSinglePayload(v137, v139, v140, v138);
  if (qword_28024CAB8 != -1)
  {
    swift_once();
  }

  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252648, &qword_2683E6E20);
  OUTLINED_FUNCTION_133_1(v141, qword_280252320);
  v142 = OUTLINED_FUNCTION_61_3();
  type metadata accessor for Common.PostalAddress(v142);
  OUTLINED_FUNCTION_9_0();
  sub_2683CE298();
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v21);
  v143 = sub_2683ABDA4(&qword_280252738, type metadata accessor for Common.PostalAddress, &protocol conformance descriptor for Common.PostalAddress);
  OUTLINED_FUNCTION_18_39();
  v146 = sub_2683ABDA4(v144, v145, &protocol conformance descriptor for Common.GeographicArea);
  v398 = v21;
  v147 = v146;
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_165_1(v148);
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v413);
  v149 = OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_165_1(v149);
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v410);
  v150 = OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_165_1(v150);
  swift_getKeyPath();
  v151 = OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_168_2(v151, v152, v153);
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v399);
  v154 = OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_165_1(v154);
  swift_getKeyPath();
  v155 = OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_168_2(v155, v156, v157);
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v387);
  v158 = OUTLINED_FUNCTION_66_3();
  OUTLINED_FUNCTION_165_1(v158);
  swift_getKeyPath();
  OUTLINED_FUNCTION_122_4(v388);
  v159 = OUTLINED_FUNCTION_66_3();
  v390 = v147;
  OUTLINED_FUNCTION_165_1(v159);
  swift_getKeyPath();
  v160 = OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_168_2(v160, v161, v162);
  swift_getKeyPath();
  v163 = OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_168_2(v163, v164, v165);
  swift_getKeyPath();
  v166 = OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_168_2(v166, v167, v168);
  swift_getKeyPath();
  sub_26831A8D8(v412, v406, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_3_56();
  sub_2683ABDA4(v169, v170, &protocol conformance descriptor for Common.App);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_184_2(v171, &a15);
  swift_getKeyPath();
  v172 = v411;
  OUTLINED_FUNCTION_179_2();
  sub_26831A8D8(v173, v174, v175, v176);
  OUTLINED_FUNCTION_2_65();
  sub_2683ABDA4(v177, v178, &protocol conformance descriptor for Common.ListPosition);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_184_2(v179, &a14);
  swift_getKeyPath();
  OUTLINED_FUNCTION_183_1(v119, v180, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_1_68();
  sub_2683ABDA4(v181, v182, &protocol conformance descriptor for Common.Quantifier);
  OUTLINED_FUNCTION_36_14();
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_184_2(v183, &a13);
  swift_getKeyPath();
  v184 = v402;
  OUTLINED_FUNCTION_174_1();
  sub_26831A8D8(v185, v186, v187, v188);
  OUTLINED_FUNCTION_66_3();
  sub_2683CE2B8();
  swift_getKeyPath();
  v189 = v119;
  v190 = v414;
  v191 = v172;
  sub_26831A8D8(v414, v409, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_0_75();
  sub_2683ABDA4(v192, v193, &protocol conformance descriptor for Common.SearchQualifier);
  OUTLINED_FUNCTION_136_0();
  v389 = v143;
  OUTLINED_FUNCTION_184_2(v194, &a12);
  sub_26812C310(v190, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v184, &qword_280252720, &qword_2683E71B8);
  sub_26812C310(v189, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v172, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v412, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v388, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_107_3();
  sub_26812C310(v195, v196, v197);
  OUTLINED_FUNCTION_107_3();
  sub_26812C310(v198, v199, v200);
  v201 = OUTLINED_FUNCTION_93_4();
  sub_26812C310(v201, v202, &qword_2683E71A8);
  v203 = v413;
  OUTLINED_FUNCTION_107_3();
  sub_26812C310(v204, v205, v206);
  OUTLINED_FUNCTION_107_3();
  sub_26812C310(v207, v208, v209);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252AF0, &qword_2683EA3F0);
  v210 = v400;
  v211 = OUTLINED_FUNCTION_47_8();
  v388 = v212;
  __swift_storeEnumTagSinglePayload(v211, v213, v214, v212);
  v215 = OUTLINED_FUNCTION_43_13();
  v216 = v384;
  __swift_storeEnumTagSinglePayload(v215, v217, v218, v384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252B98, &qword_2683EB6E0);
  v219 = OUTLINED_FUNCTION_53_9();
  v383 = v220;
  __swift_storeEnumTagSinglePayload(v219, v221, v222, v220);
  v377 = sub_26815E30C(v403, &selRef_thoroughfare);
  v376 = v223;
  v224 = OUTLINED_FUNCTION_40_17();
  __swift_storeEnumTagSinglePayload(v224, v225, v226, v396);
  v227 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v227, v228, v229, v395);
  v230 = OUTLINED_FUNCTION_0_51();
  __swift_storeEnumTagSinglePayload(v230, v231, v232, v394);
  v233 = OUTLINED_FUNCTION_52_9();
  __swift_storeEnumTagSinglePayload(v233, v234, v235, v216);
  v236 = OUTLINED_FUNCTION_30_23();
  __swift_storeEnumTagSinglePayload(v236, v237, v238, v393);
  v239 = v203;
  v240 = v216;
  if (qword_28024CA38 != -1)
  {
    swift_once();
  }

  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524E8, &qword_2683E6CC0);
  v380 = __swift_project_value_buffer(v381, qword_2802521A0);
  sub_2683CD188();
  v241 = OUTLINED_FUNCTION_256_0();
  v379 = type metadata accessor for Common.GeographicArea(v241);
  OUTLINED_FUNCTION_164_1();
  swift_getKeyPath();
  v417 = 2;
  sub_2683CE2A8();
  swift_getKeyPath();
  v242 = OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_186_1(v242, v243, v244);
  swift_getKeyPath();
  sub_26831A8D8(v210, v397, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_5_54();
  v387 = sub_2683ABDA4(v245, v246, &protocol conformance descriptor for Common.Person);
  OUTLINED_FUNCTION_95_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  v247 = v399;
  sub_26831A8D8(v239, v399, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_95_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_162_2();
  sub_26831A8D8(v248, v249, v250, v251);
  OUTLINED_FUNCTION_116_4();
  v378 = sub_2683ABDA4(v252, v253, &protocol conformance descriptor for Common.Geolocation);
  OUTLINED_FUNCTION_95_5();
  sub_2683CE2B8();
  v254 = swift_getKeyPath();
  OUTLINED_FUNCTION_186_1(v377, v376, v254);
  swift_getKeyPath();
  sub_26831A8D8(v412, v406, &qword_2802526A0, &qword_2683E6E78);
  v255 = OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(v255);
  swift_getKeyPath();
  OUTLINED_FUNCTION_145_2();
  sub_26831A8D8(v256, v257, v258, v259);
  v260 = OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(v260);
  swift_getKeyPath();
  OUTLINED_FUNCTION_135_2();
  sub_26831A8D8(v261, v262, v263, v264);
  v265 = OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(v265);
  swift_getKeyPath();
  v266 = v410;
  sub_26831A8D8(v410, v247, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_180_1(v247);
  swift_getKeyPath();
  v267 = OUTLINED_FUNCTION_173_2();
  sub_26831A8D8(v267, v268, &qword_280252680, &qword_2683E6E58);
  v269 = OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(v269);
  sub_26812C310(v247, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v266, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v415, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v191, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v412, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v401, &qword_280252798, &qword_2683E7680);
  OUTLINED_FUNCTION_7_13(v413);
  v270 = v400;
  sub_26812C310(v400, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v271, v272, v273, v216);
  sub_2683CE2B8();
  swift_getKeyPath();
  v274 = v403;
  sub_26815E30C(v403, &selRef_subThoroughfare);
  sub_2683CE2C8();
  KeyPath = swift_getKeyPath();
  v275 = v270;
  OUTLINED_FUNCTION_51_10();
  __swift_storeEnumTagSinglePayload(v277, v278, v279, *(v276 - 256));
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v280, v281, v282, v216);
  v283 = v401;
  v284 = OUTLINED_FUNCTION_43_13();
  __swift_storeEnumTagSinglePayload(v284, v285, v286, v383);
  v287 = sub_26815E30C(v274, &selRef_locality);
  v383 = v288;
  v289 = v412;
  v290 = OUTLINED_FUNCTION_53_9();
  __swift_storeEnumTagSinglePayload(v290, v291, v292, v396);
  v293 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v293, v294, v295, v395);
  v296 = OUTLINED_FUNCTION_50_13();
  __swift_storeEnumTagSinglePayload(v296, v297, v298, v394);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v299, v300, v301, v216);
  v302 = OUTLINED_FUNCTION_58_8();
  __swift_storeEnumTagSinglePayload(v302, v303, v304, v393);
  sub_2683CD188();
  sub_2683CE298();
  swift_getKeyPath();
  v416 = 2;
  sub_2683CE2A8();
  swift_getKeyPath();
  v305 = OUTLINED_FUNCTION_28_24();
  OUTLINED_FUNCTION_186_1(v305, v306, v307);
  swift_getKeyPath();
  sub_26831A8D8(v275, v397, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_95_5();
  OUTLINED_FUNCTION_111_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  v308 = v399;
  sub_26831A8D8(v413, v399, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_95_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_162_2();
  sub_26831A8D8(v309, v310, &qword_280252798, &qword_2683E7680);
  OUTLINED_FUNCTION_95_5();
  OUTLINED_FUNCTION_138_2(v311);
  v312 = swift_getKeyPath();
  OUTLINED_FUNCTION_186_1(v287, v383, v312);
  swift_getKeyPath();
  sub_26831A8D8(v289, v406, &qword_2802526A0, &qword_2683E6E78);
  v313 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_138_2(v313);
  swift_getKeyPath();
  OUTLINED_FUNCTION_145_2();
  sub_26831A8D8(v314, v315, &qword_280252698, &qword_2683E6E70);
  v316 = OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(v316);
  swift_getKeyPath();
  v317 = v415;
  OUTLINED_FUNCTION_135_2();
  sub_26831A8D8(v318, v319, &qword_280252690, &qword_2683E6E68);
  v320 = OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_138_2(v320);
  swift_getKeyPath();
  v321 = v410;
  sub_26831A8D8(v410, v308, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_180_1(v308);
  swift_getKeyPath();
  v322 = OUTLINED_FUNCTION_173_2();
  sub_26831A8D8(v322, v323, &qword_280252680, &qword_2683E6E58);
  v324 = OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_138_2(v324);
  sub_26812C310(v283, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v321, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v317, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v411, &qword_280252698, &qword_2683E6E70);
  v325 = v412;
  sub_26812C310(v412, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v401, &qword_280252798, &qword_2683E7680);
  OUTLINED_FUNCTION_7_13(v413);
  v326 = v400;
  sub_26812C310(v400, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v327, v328, v329, v216);
  v330 = v408;
  v331 = v405;
  sub_2683CE2B8();
  swift_getKeyPath();
  v332 = v403;
  sub_26815E30C(v403, &selRef_postalCode);
  sub_2683CE2C8();
  (*(v391 + 16))(v402, v331, v330);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v333, v334, v335, v330);
  v336 = OUTLINED_FUNCTION_43_13();
  OUTLINED_FUNCTION_146_1(v336, v337, v338);
  v339 = OUTLINED_FUNCTION_47_8();
  __swift_storeEnumTagSinglePayload(v339, v340, v341, v240);
  v410 = sub_26815E30C(v332, &selRef_name);
  v401 = v342;
  v343 = OUTLINED_FUNCTION_31_18();
  __swift_storeEnumTagSinglePayload(v343, v344, v345, v396);
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v346, v347, v348, v395);
  v349 = OUTLINED_FUNCTION_50_13();
  __swift_storeEnumTagSinglePayload(v349, v350, v351, v394);
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252728, &qword_2683E71E8);
  v353 = OUTLINED_FUNCTION_73_5(&a11);
  __swift_storeEnumTagSinglePayload(v353, v354, v355, v352);
  v356 = OUTLINED_FUNCTION_58_8();
  __swift_storeEnumTagSinglePayload(v356, v357, v358, v393);
  if (qword_28024CAB0 != -1)
  {
    swift_once();
  }

  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802524C8, &qword_2683E6CA0);
  OUTLINED_FUNCTION_72_3(v359, qword_280252308);
  v360 = OUTLINED_FUNCTION_256_0();
  type metadata accessor for Common.PointOfInterest(v360);
  OUTLINED_FUNCTION_164_1();
  swift_getKeyPath();
  OUTLINED_FUNCTION_162_2();
  sub_26831A8D8(v361, v362, v363, v364);
  OUTLINED_FUNCTION_17_28();
  sub_2683ABDA4(v365, v366, &protocol conformance descriptor for Common.PointOfInterest);
  OUTLINED_FUNCTION_29_24();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_26831A8D8(v326, v397, &qword_280252718, &qword_2683E71B0);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_111_5();
  sub_2683CE2B8();
  swift_getKeyPath();
  sub_2683CE2E8();
  swift_getKeyPath();
  sub_26831A8D8(v398, v413, &qword_280252710, &qword_2683E71A8);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_138_2(v367);
  swift_getKeyPath();
  sub_2683CE2C8();
  swift_getKeyPath();
  sub_26831A8D8(v325, v406, &qword_2802526A0, &qword_2683E6E78);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_138_2(v368);
  swift_getKeyPath();
  v369 = v411;
  sub_26831A8D8(v411, v407, &qword_280252698, &qword_2683E6E70);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_138_2(v370);
  swift_getKeyPath();
  sub_26831A8D8(v415, v404, &qword_280252690, &qword_2683E6E68);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_138_2(v371);
  swift_getKeyPath();
  v372 = v392;
  sub_26831A8D8(v392, v385, &qword_280252708, &qword_2683E71A0);
  OUTLINED_FUNCTION_29_24();
  sub_2683CE2B8();
  swift_getKeyPath();
  v373 = v414;
  sub_26831A8D8(v414, v409, &qword_280252680, &qword_2683E6E58);
  OUTLINED_FUNCTION_29_24();
  OUTLINED_FUNCTION_138_2(v374);

  sub_26812C310(v373, &qword_280252680, &qword_2683E6E58);
  sub_26812C310(v372, &qword_280252708, &qword_2683E71A0);
  sub_26812C310(v415, &qword_280252690, &qword_2683E6E68);
  sub_26812C310(v369, &qword_280252698, &qword_2683E6E70);
  sub_26812C310(v412, &qword_2802526A0, &qword_2683E6E78);
  sub_26812C310(v398, &qword_280252710, &qword_2683E71A8);
  sub_26812C310(v400, &qword_280252718, &qword_2683E71B0);
  sub_26812C310(v402, &qword_280252720, &qword_2683E71B8);
  OUTLINED_FUNCTION_12_15();
  v375(v405, v408);
  OUTLINED_FUNCTION_29_0();
}

unint64_t sub_2683ABC70(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void (*sub_2683ABCD0(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_103_4(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9_39();
    v7 = MEMORY[0x26D616C90](v9);
  }

  *v3 = v7;
  return sub_2683ABE5C;
}

uint64_t sub_2683ABD34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252830, &qword_2683E7CF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2683ABDA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*sub_2683ABDEC(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_103_4(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9_39();
    v7 = MEMORY[0x26D616C90](v9);
  }

  *v3 = v7;
  return sub_2683ABE50;
}

uint64_t OUTLINED_FUNCTION_23_30(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, *(v2 - 344));
  v3 = *(v2 - 352);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_75_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, *(v3 - 368));

  return sub_2683CD188();
}

unint64_t OUTLINED_FUNCTION_103_4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2681238C4(a3);

  return sub_2683ABC70(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_122_4(uint64_t a1)
{

  return sub_26831A8D8(a1, v1, v3, v2);
}

uint64_t OUTLINED_FUNCTION_138_2(uint64_t a1)
{

  return sub_2683CE2B8();
}

uint64_t OUTLINED_FUNCTION_139_1@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_26831A8D8(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_142_2@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_26831A8D8(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_146_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 368);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_147_1@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return sub_26831A8D8(a1, v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_153_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 360);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_164_1()
{

  return sub_2683CE298();
}

uint64_t OUTLINED_FUNCTION_165_1(uint64_t a1)
{

  return sub_2683CE2B8();
}

uint64_t OUTLINED_FUNCTION_166_2@<X0>(uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a2;

  return sub_2683CE2B8();
}

uint64_t OUTLINED_FUNCTION_167_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 496);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_168_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2683CE2C8();
}

uint64_t OUTLINED_FUNCTION_180_1(uint64_t a1)
{

  return sub_2683CE2B8();
}

uint64_t OUTLINED_FUNCTION_181_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 136);
  v7 = *(v4 - 232);

  return sub_26831A8D8(v6, v7, a3, a4);
}

uint64_t OUTLINED_FUNCTION_182_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 184);

  return sub_26831A8D8(a1, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_183_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 192);

  return sub_26831A8D8(a1, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_184_2@<X0>(uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  *(a3 - 256) = a2;

  return sub_2683CE2B8();
}

uint64_t OUTLINED_FUNCTION_185_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2683CE2C8();
}

uint64_t OUTLINED_FUNCTION_186_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2683CE2C8();
}

uint64_t sub_2683AC9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2683AC9F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2683ACA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2683ACAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268195F80;

  return MEMORY[0x2821B9F10](a1, a2, a3, a4);
}

uint64_t sub_2683ACB94()
{
  v0 = sub_2683CED28();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_2683CEC88();
  sub_2683CEC78();
  sub_2683CEC68();

  sub_2683CED38();

  (*(v1 + 104))(v4, *MEMORY[0x277D61DD0], v0);
  v7 = sub_2683CED18();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_2683ACD20(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_2683ACDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v35 = *(a3 - 8);
  v36 = a2;
  MEMORY[0x28223BE20](a1);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeatureSupportState(0, v7, v7, v8);
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_3();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v31 - v20;
  v22 = *(v19 + 48);
  v34 = v11;
  v23 = *(v11 + 16);
  v23(&v31 - v20, a1, v9);
  v23(&v21[v22], v36, v9);
  OUTLINED_FUNCTION_4_6(v21);
  if (v25)
  {
    v24 = 1;
    OUTLINED_FUNCTION_4_6(&v21[v22]);
    if (v25)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v23(v14, v21, v9);
    OUTLINED_FUNCTION_4_6(&v21[v22]);
    if (!v25)
    {
      v26 = v35;
      v27 = &v21[v22];
      v28 = v32;
      (*(v35 + 32))(v32, v27, a3);
      v24 = sub_2683CFA58();
      v29 = *(v26 + 8);
      v29(v28, a3);
      v29(v14, a3);
LABEL_10:
      v17 = v34;
      goto LABEL_11;
    }

    (*(v35 + 8))(v14, a3);
  }

  v24 = 0;
  v9 = TupleTypeMetadata2;
LABEL_11:
  (*(v17 + 8))(v21, v9);
  return v24 & 1;
}

uint64_t sub_2683AD0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    return MEMORY[0x26D617190](0);
  }

  (*(v4 + 32))(v7, v9, v3);
  MEMORY[0x26D617190](1);
  sub_2683CFA08();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2683AD24C(uint64_t a1, uint64_t a2)
{
  sub_2683D0698();
  sub_2683AD0A0(v5, a1, a2);
  return sub_2683D06D8();
}

uint64_t sub_2683AD2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2683D0698();
  sub_2683AD0A0(v6, a2, v4);
  return sub_2683D06D8();
}

uint64_t sub_2683AD314()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  OUTLINED_FUNCTION_21_16();
  v1[10] = *(v3 + 88);
  OUTLINED_FUNCTION_21_16();
  v1[11] = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[12] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_0_3();
  v1[13] = v6;
  v1[14] = *(v7 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  type metadata accessor for FeatureSupportState(0, AssociatedTypeWitness, v8, v9);
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683AD454);
}

uint64_t sub_2683AD454()
{
  v55 = v0;
  v1 = v0[9].i64[0];
  v2 = v0[6].i64[0];
  (*(v0[5].i64[0] + 24))(v0[5].i64[1]);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v3 = sub_2683CF7E8();
    __swift_project_value_buffer(v3, qword_28027C958);

    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[5].i64[0];
      v6 = v0[5].i64[1];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v54 = v9;
      *v8 = 136315138;
      v10 = (*(v7 + 16))(v6, v7);
      v12 = sub_2681610A0(v10, v11, &v54);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2680EB000, v4, v5, "[FeatureSupportGuardFlow] %s is supported.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    *(v0[4].i64[1] + 16) = 0;
    sub_2683CC3F8();
  }

  else
  {
    v52 = (v0[6].i64[1] + 32);
    v51 = *v52;
    (*v52)(v0[8].i64[1], v0[9].i64[0], v0[6].i64[0]);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v13 = v0[8].i64[0];
    v14 = v0[8].i64[1];
    v15 = v0[6].i64[0];
    v16 = v0[6].i64[1];
    v17 = sub_2683CF7E8();
    __swift_project_value_buffer(v17, qword_28027C958);
    v53 = *(v16 + 16);
    v53(v13, v14, v15);

    v18 = sub_2683CF7C8();
    v19 = sub_2683CFE98();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[8].i64[0];
    if (v20)
    {
      v22 = v0[6].i64[0];
      v23 = v0[5].i64[0];
      v46 = v0[5].i64[1];
      v47 = v0[7].i64[1];
      v24 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v24 = 136315394;
      v48 = v19;
      v25 = (*(v23 + 16))(v46, v23);
      v27 = sub_2681610A0(v25, v26, &v54);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v53(v47, v21, v22);
      v28 = sub_2683CFAD8();
      v30 = v29;
      v31 = OUTLINED_FUNCTION_5_55();
      v50 = v32;
      v32(v31, v22);
      v33 = sub_2681610A0(v28, v30, &v54);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_2680EB000, v18, v48, "[FeatureSupportGuardFlow] %s is unsupported with reason: %s.", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v34 = v0[6].i64[0];

      v35 = OUTLINED_FUNCTION_5_55();
      v50 = v36;
      v36(v35, v34);
    }

    v37 = v0[8].i64[1];
    v38 = v0[7].i64[1];
    v39 = v0[6].i64[0];
    v40 = v0[6].i64[1];
    v41 = v0[4].i64[1];
    v49 = v0[5];
    sub_26813CA00(v41 + *(*v41 + 112), v0[1].i64);
    v53(v38, v37, v39);
    v42 = (*(v40 + 80) + 40) & ~*(v40 + 80);
    v43 = swift_allocObject();
    v43[1] = vextq_s8(v49, v49, 8uLL);
    v43[2].i64[0] = v41;
    v51(v43->i64 + v42, v38, v39);
    sub_2683CB948();
    swift_allocObject();

    v0[3].i64[1] = sub_2683CB938();
    sub_2683CC3D8();
    v50(v37, v39);
  }

  OUTLINED_FUNCTION_40();

  return v44();
}

uint64_t sub_2683AD9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  v10 = (*(v6 + 32) + **(v6 + 32));
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_268133EC8;

  return v10(a1, a3, v7, v6);
}

uint64_t sub_2683ADB3C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_16();
  OUTLINED_FUNCTION_21_16();
  type metadata accessor for FeatureSupportGuardFlow(0, v3, *(v2 + 88), v4);
  swift_getWitnessTable();
  return sub_2683CBF48();
}

uint64_t sub_2683ADBD8()
{
  OUTLINED_FUNCTION_21_16();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 104));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 112)));
  return v0;
}

uint64_t sub_2683ADC60()
{
  sub_2683ADBD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2683ADCF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2683AD314();
}

uint64_t sub_2683ADE00(uint64_t a1)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_268133EC8;

  return sub_2683AD9C0(a1, v6, v1 + v5);
}

uint64_t sub_2683ADF00(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2683ADF5C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2683AE0D4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t static Snippet.Contact.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2683D0598(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_9_0();

      return sub_2683D0598();
    }
  }

  return result;
}

uint64_t Snippet.Contact.init(identifier:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Snippet.Contact.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippet.Contact.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2683AE4BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_2683AE58C(char a1)
{
  if (a1)
  {
    return 1701667182;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2683AE5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2683AE4BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2683AE5F0(uint64_t a1)
{
  v2 = sub_2683AE7C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2683AE62C(uint64_t a1)
{
  v2 = sub_2683AE7C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Contact.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254400, &qword_2683F9040);
  OUTLINED_FUNCTION_0_3();
  v11 = v5;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = v10 - v7;
  v9 = *(v0 + 16);
  v10[1] = *(v0 + 24);
  v10[2] = v9;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2683AE7C4();
  sub_2683D0718();
  sub_2683D0518();
  if (!v1)
  {
    sub_2683D0518();
  }

  (*(v11 + 8))(v8, v4);
  OUTLINED_FUNCTION_62();
}

unint64_t sub_2683AE7C4()
{
  result = qword_280254408;
  if (!qword_280254408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254408);
  }

  return result;
}

uint64_t Snippet.Contact.hash(into:)(uint64_t a1)
{
  sub_2683CFB48();

  return sub_2683CFB48();
}

uint64_t Snippet.Contact.hashValue.getter()
{
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683CFB48();
  return sub_2683D06D8();
}

void Snippet.Contact.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_63_0();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254410, &qword_2683F9048);
  OUTLINED_FUNCTION_0_3();
  v30 = v29;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v41 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2683AE7C4();
  sub_2683D06F8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v34 = sub_2683D0478();
    v36 = v35;
    v37 = sub_2683D0478();
    v39 = v38;
    v40 = *(v30 + 8);
    v42 = v37;
    v40(v33, v28);
    *v27 = v34;
    v27[1] = v36;
    v27[2] = v42;
    v27[3] = v39;

    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  OUTLINED_FUNCTION_62();
}

unint64_t sub_2683AEAEC()
{
  result = qword_280254418;
  if (!qword_280254418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254418);
  }

  return result;
}

unint64_t sub_2683AEB64()
{
  result = qword_280254420;
  if (!qword_280254420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254420);
  }

  return result;
}

unint64_t sub_2683AEBBC()
{
  result = qword_280254428;
  if (!qword_280254428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254428);
  }

  return result;
}

unint64_t sub_2683AEC14()
{
  result = qword_280254430;
  if (!qword_280254430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254430);
  }

  return result;
}

uint64_t sub_2683AEC68(uint64_t a1, uint64_t a2)
{
  sub_2683AECC8(a1);
  if (!v3 && *(a2 + 16))
  {
  }

  return OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2683AECC8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = objc_allocWithZone(MEMORY[0x277CBDB70]);

  v2 = sub_2683CFA68();
  v3 = [v1 initWithStringValue_];

  v4 = v3;
  v5 = [v4 formattedStringValue];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2683CFA78();
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

uint64_t sub_2683AEDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_26814BEB4(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_26814BEB4(a2, a4);
}

uint64_t sub_2683AEE08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656E6F6870 && a2 == 0xE600000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000)
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

uint64_t sub_2683AEED0(char a1)
{
  if (a1)
  {
    return 0x736C69616D65;
  }

  else
  {
    return 0x73656E6F6870;
  }
}

void sub_2683AEEF8()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254478, &qword_2683F93D0);
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v9 - v7;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2683AFC50();
  sub_2683D0718();
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  sub_2682DECB8(&qword_280254480, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_3_57();
  if (!v0)
  {
    v10 = 1;
    OUTLINED_FUNCTION_3_57();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_62();
}

void sub_2683AF06C()
{
  sub_26814E9C0();

  sub_26814E9C0();
}

uint64_t sub_2683AF0AC()
{
  sub_2683D0698();
  sub_26814E9C0();
  sub_26814E9C0();
  return sub_2683D06D8();
}

void sub_2683AF104()
{
  OUTLINED_FUNCTION_63_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254458, &unk_2683F93C0);
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v8 - v6;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2683AFC50();
  sub_2683D06F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
  v9 = 0;
  sub_2682DECB8(&qword_280254470, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_2_66();
  v9 = 1;
  OUTLINED_FUNCTION_2_66();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_2683AF2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2683AEE08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2683AF2F8(uint64_t a1)
{
  v2 = sub_2683AFC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2683AF334(uint64_t a1)
{
  v2 = sub_2683AFC50();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2683AF370(void *a1@<X8>)
{
  sub_2683AF104();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_2683AF3C8(uint64_t a1)
{
  sub_2683D0698();
  sub_26814E9C0();
  sub_26814E9C0();
  return sub_2683D06D8();
}

id sub_2683AF42C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2683D2250;
  result = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v0 + 32) = result;
  qword_28027CED0 = v0;
  return result;
}

double sub_2683AF4A8@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v62[1] = *MEMORY[0x277D85DE8];
  v8 = objc_opt_self();
  v60 = a2;

  sub_2682BFDDC(v9);
  v10 = sub_2683CFC98();

  v11 = [v8 predicateForContactsMatchingHandleStrings_];

  if (qword_28024CC70 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F2C0, &unk_2683F9280);
  v12 = sub_2683CFC98();
  v60 = 0;
  v13 = [a3 unifiedContactsMatchingPredicate:v11 keysToFetch:v12 error:&v60];

  v14 = v60;
  if (!v13)
  {
    v37 = v60;
    v38 = sub_2683CB388();

    swift_willThrow();
LABEL_17:
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
    }

    v39 = sub_2683CF7E8();
    __swift_project_value_buffer(v39, qword_28027C988);

    v40 = sub_2683CF7C8();
    v41 = sub_2683CFE78();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v61 = a2;
      v62[0] = v43;
      *v42 = 136315138;
      v60 = a1;

      v44 = sub_2683CFAD8();
      v46 = sub_2681610A0(v44, v45, v62);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_2680EB000, v40, v41, "[Snippet.ContactResolver] Could not find contact matching handles: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    goto LABEL_21;
  }

  sub_2683AFB9C();
  v15 = sub_2683CFCA8();
  v16 = v14;

  if (!sub_2683ABE58())
  {

    goto LABEL_17;
  }

  sub_2683ABE60();
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x26D616C90](0, v15);
  }

  else
  {
    v17 = *(v15 + 32);
  }

  v18 = v17;
  v19 = sub_268229348();

  if (v19 >= 2)
  {
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
    }

    v20 = sub_2683CF7E8();
    __swift_project_value_buffer(v20, qword_28027C988);

    v21 = sub_2683CF7C8();
    v22 = sub_2683CFE78();

    if (os_log_type_enabled(v21, v22))
    {
      v59 = a4;
      v23 = swift_slowAlloc();
      v58 = v11;
      v24 = swift_slowAlloc();
      v61 = a2;
      v62[0] = v24;
      *v23 = 136315138;
      v60 = a1;

      v25 = sub_2683CFAD8();
      v27 = sub_2681610A0(v25, v26, v62);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2680EB000, v21, v22, "[Snippet.ContactResolver] Found multiple contacts when expecting only one. Taking first result matching: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v11 = v58;
      OUTLINED_FUNCTION_38();
      a4 = v59;
      OUTLINED_FUNCTION_38();
    }
  }

  v28 = sub_2683AFAE4(v18, a1, a2);
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    v32 = [v18 identifier];
    v33 = sub_2683CFA78();
    v35 = v34;

    *a4 = v33;
    a4[1] = v35;
    a4[2] = v30;
    a4[3] = v31;
    return result;
  }

  if (qword_28024C8F0 != -1)
  {
    OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
  }

  v47 = sub_2683CF7E8();
  __swift_project_value_buffer(v47, qword_28027C988);
  v48 = v18;
  v40 = sub_2683CF7C8();
  v49 = sub_2683CFE78();

  if (os_log_type_enabled(v40, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v60 = v51;
    *v50 = 136315138;
    v52 = v48;
    v53 = [v52 description];
    v54 = sub_2683CFA78();
    v56 = v55;

    v57 = sub_2681610A0(v54, v56, &v60);

    *(v50 + 4) = v57;
    _os_log_impl(&dword_2680EB000, v40, v49, "[Snippet.ContactResolver] Could not get name from contact %s)", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    goto LABEL_22;
  }

LABEL_21:
LABEL_22:
  result = 0.0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  return result;
}

uint64_t sub_2683AFAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v6 setStyle_];
  v7 = [v6 stringFromContact_];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2683CFA78();
  }

  else
  {
    v9 = sub_2683AEC68(a2, a3);
  }

  return v9;
}

unint64_t sub_2683AFB9C()
{
  result = qword_280254440;
  if (!qword_280254440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280254440);
  }

  return result;
}

unint64_t sub_2683AFBFC()
{
  result = qword_280254450;
  if (!qword_280254450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254450);
  }

  return result;
}

unint64_t sub_2683AFC50()
{
  result = qword_280254460;
  if (!qword_280254460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254460);
  }

  return result;
}

_BYTE *sub_2683AFCA4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2683AFD84()
{
  result = qword_280254488;
  if (!qword_280254488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254488);
  }

  return result;
}

unint64_t sub_2683AFDDC()
{
  result = qword_280254490;
  if (!qword_280254490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254490);
  }

  return result;
}

unint64_t sub_2683AFE34()
{
  result = qword_280254498;
  if (!qword_280254498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254498);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_66()
{

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_3_57()
{

  return sub_2683D0548();
}

uint64_t type metadata accessor for CreateReminderShim.Wrapper(uint64_t a1)
{
  result = qword_2802544A0;
  if (!qword_2802544A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683AFF60(uint64_t a1)
{
  result = sub_2683CB668();
  if (v2 <= 0x3F)
  {
    result = sub_2683AFFF4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2683AFFF4()
{
  result = qword_28024F1C0;
  if (!qword_28024F1C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28024F1C0);
  }

  return result;
}

uint64_t sub_2683B0060@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v5 = type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_2681340E8(v2, &v15 - v11, &qword_28024DBC8, &qword_2683E3D30);
  v13 = 1;
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a2, v13, 1, v5);
  }

  sub_26821F2C8(v12, v9);
  v16(v9);
  if (!v3)
  {
    sub_26815E454(v9);
    v13 = 0;
    return __swift_storeEnumTagSinglePayload(a2, v13, 1, v5);
  }

  result = sub_26815E454(v9);
  __break(1u);
  return result;
}

uint64_t sub_2683B01D0(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_2683CF918();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544B0, &qword_2683F9578);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_2681340E8(v1, &v11 - v8, &qword_2802544B0, &qword_2683F9578);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v13, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v13;
  }

  return result;
}

uint64_t sub_2683B03A0(void (*a1)(uint64_t *__return_ptr, uint64_t))
{
  v15 = a1;
  v3 = sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - v11;
  sub_2681340E8(v1, &v14 - v11, &qword_28024DB08, qword_2683D5760);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    return 2;
  }

  (*(v5 + 32))(v9, v12, v3);
  v15(&v16, v9);
  if (v2)
  {
    result = (*(v5 + 8))(v9, v3);
    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v9, v3);
    return v16;
  }

  return result;
}

uint64_t sub_2683B055C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(void (*)(uint64_t), uint64_t), void (*a11)(void (*)(uint64_t), uint64_t), void (*a12)(void))
{
  v107 = a7;
  v108 = a6;
  v112 = a5;
  v113 = a4;
  v117 = a3;
  v118 = a2;
  v13 = a1;
  v120 = a9;
  v119 = a12;
  v114 = sub_2683CEDC8();
  OUTLINED_FUNCTION_0_3();
  v116 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_3();
  v115 = v17 - v16;
  OUTLINED_FUNCTION_3_8();
  sub_2683CEDA8();
  OUTLINED_FUNCTION_0_3();
  v110 = v19;
  v111 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_3();
  v109 = v21 - v20;
  OUTLINED_FUNCTION_3_8();
  v22 = sub_2683CF948();
  OUTLINED_FUNCTION_0_3();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_3();
  v28 = v27 - v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802541A0, &qword_2683F6EF0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19_3();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_56_3();
  v104 = v34;
  OUTLINED_FUNCTION_8_0();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v103 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v103 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v103 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v103 - v45;
  v106 = v13;
  v47 = sub_2683B2A68(v13);
  v49 = sub_2682DFB6C(v47, v48, a8);

  if (v49)
  {
    sub_2682B2AF0(v49);
  }

  else
  {
    v50 = sub_2683CEDD8();
    __swift_storeEnumTagSinglePayload(v46, 1, 1, v50);
  }

  v51 = OUTLINED_FUNCTION_69();
  sub_2681340E8(v51, v52, v53, v54);
  v55 = sub_2683CEDD8();
  if (__swift_getEnumTagSinglePayload(v44, 1, v55) != 1)
  {
    sub_2681340E8(v44, v41, qword_2802541A0, &qword_2683F6EF0);
    v61 = *(v55 - 8);
    v62 = (*(v61 + 88))(v41, v55);
    if (v62 == *MEMORY[0x277D1C680])
    {
      v63 = OUTLINED_FUNCTION_9_42();
      v64(v63);
      (*(v24 + 32))(v28, v41, v22);
      v118(v28);
      (*(v24 + 8))(v28, v22);
LABEL_16:
      sub_26812D9E0(v46, qword_2802541A0, &qword_2683F6EF0);
      return sub_26812D9E0(v44, qword_2802541A0, &qword_2683F6EF0);
    }

    if (v62 == *MEMORY[0x277D1C670])
    {
      v65 = OUTLINED_FUNCTION_9_42();
      v66(v65);
      v68 = v115;
      v67 = v116;
      v69 = v114;
      (*(v116 + 32))(v115, v41, v114);
      if (v113)
      {
        v70 = v112;
        v71 = v113;

        v72 = sub_2683CEDB8();
        v71(v72);
        a11(v71, v70);

        (*(v67 + 8))(v68, v69);
        goto LABEL_16;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v81 = sub_2683CF7E8();
      __swift_project_value_buffer(v81, qword_28027C958);
      sub_2681340E8(v46, v32, qword_2802541A0, &qword_2683F6EF0);
      v82 = sub_2683CF7C8();
      v83 = sub_2683CFE78();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v121[0] = v118;
        *v84 = 136315394;
        v85 = sub_2683B2A68(v106);
        v87 = sub_2681610A0(v85, v86, v121);

        *(v84 + 4) = v87;
        *(v84 + 12) = 2080;
        sub_2681340E8(v32, v104, qword_2802541A0, &qword_2683F6EF0);
        v88 = sub_2683CFAD8();
        v90 = v89;
        sub_26812D9E0(v32, qword_2802541A0, &qword_2683F6EF0);
        v91 = sub_2681610A0(v88, v90, v121);

        *(v84 + 14) = v91;
        _os_log_impl(&dword_2680EB000, v82, v83, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s", v84, 0x16u);
        OUTLINED_FUNCTION_8_44();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_36();
        OUTLINED_FUNCTION_38();

        (*(v116 + 8))(v115, v69);
        v56 = v46;
        goto LABEL_6;
      }

      sub_26812D9E0(v32, qword_2802541A0, &qword_2683F6EF0);
      (*(v67 + 8))(v68, v69);
    }

    else
    {
      if (v62 != *MEMORY[0x277D1C668])
      {
        sub_26812D9E0(v46, qword_2802541A0, &qword_2683F6EF0);
        (*(v61 + 8))(v41, v55);
        goto LABEL_7;
      }

      v73 = OUTLINED_FUNCTION_9_42();
      v74(v73);
      v76 = v109;
      v75 = v110;
      v77 = v111;
      (*(v110 + 32))(v109, v41, v111);
      v78 = v108;
      if (v108)
      {
        v79 = v107;

        v78(v76);
        a10(v78, v79);
        (*(v75 + 8))(v76, v77);
        goto LABEL_16;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v92 = sub_2683CF7E8();
      __swift_project_value_buffer(v92, qword_28027C958);
      sub_2681340E8(v46, v38, qword_2802541A0, &qword_2683F6EF0);
      v93 = sub_2683CF7C8();
      v94 = sub_2683CFE78();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v121[0] = v118;
        *v95 = 136315394;
        v96 = sub_2683B2A68(v106);
        v98 = sub_2681610A0(v96, v97, v121);

        *(v95 + 4) = v98;
        *(v95 + 12) = 2080;
        sub_2681340E8(v38, v104, qword_2802541A0, &qword_2683F6EF0);
        v99 = sub_2683CFAD8();
        v101 = v100;
        sub_26812D9E0(v38, qword_2802541A0, &qword_2683F6EF0);
        v102 = sub_2681610A0(v99, v101, v121);

        *(v95 + 14) = v102;
        _os_log_impl(&dword_2680EB000, v93, v94, "[ShimParameterWrapper] Got unresolved parameter value for %s: %s", v95, 0x16u);
        OUTLINED_FUNCTION_8_44();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_15_36();
        OUTLINED_FUNCTION_38();

        (*(v110 + 8))(v109, v111);
        v56 = v46;
        goto LABEL_6;
      }

      sub_26812D9E0(v38, qword_2802541A0, &qword_2683F6EF0);
      (*(v75 + 8))(v76, v77);
    }

    v56 = v46;
    goto LABEL_6;
  }

  v56 = v46;
LABEL_6:
  sub_26812D9E0(v56, qword_2802541A0, &qword_2683F6EF0);
LABEL_7:
  v119(0);
  v57 = OUTLINED_FUNCTION_35_22();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  return sub_26812D9E0(v44, qword_2802541A0, &qword_2683F6EF0);
}

uint64_t sub_2683B0F0C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v48 = sub_2683CF958();
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2683CF928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2683CF948();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v43 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = *(v9 + 16);
  v19(&v43 - v17, a1, v8);
  if ((*(v9 + 88))(v18, v8) == *MEMORY[0x277D72A58])
  {
    (*(v9 + 96))(v18, v8);
    v20 = swift_projectBox();
    (*(v5 + 16))(v7, v20, v4);
    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D72988])
    {
      (*(v5 + 96))(v7, v4);
      v21 = *v7;

      return v21;
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v9 + 8))(v18, v8);
  }

  v22 = v49;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v23 = sub_2683CF7E8();
  __swift_project_value_buffer(v23, qword_28027C958);
  v19(v16, a1, v8);
  v19(v22, a1, v8);
  v24 = sub_2683CF7C8();
  v25 = sub_2683CFE78();
  if (os_log_type_enabled(v24, v25))
  {
    v44 = v25;
    v26 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v26 = 136315650;
    v27 = 0xE300000000000000;
    v28 = 7368801;
    switch(v45)
    {
      case 1:
        v27 = 0xE500000000000000;
        v28 = 0x656C746974;
        break;
      case 2:
        v27 = 0xE900000000000065;
        v28 = 0x6C7469547473696CLL;
        break;
      case 3:
        v27 = 0xEE00726569666974;
        v28 = 0x6E6564497473696CLL;
        break;
      case 4:
        v27 = 0xED0000797265636FLL;
        v28 = 0x724773497473696CLL;
        break;
      case 5:
        v27 = 0xE400000000000000;
        v28 = 1701669236;
        break;
      case 6:
        v27 = 0xE800000000000000;
        v28 = 0x6E6F697461636F6CLL;
        break;
      case 7:
        v27 = 0x80000002683FCFB0;
        v28 = 0xD00000000000001ALL;
        break;
      default:
        break;
    }

    v30 = sub_2681610A0(v28, v27, &v50);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    sub_2683CF938();
    v31 = sub_2683CFAD8();
    v33 = v32;
    v34 = *(v9 + 8);
    v34(v16, v8);
    v35 = sub_2681610A0(v31, v33, &v50);

    *(v26 + 14) = v35;
    *(v26 + 22) = 2080;
    v36 = v49;
    v19(v46, v49, v8);
    v37 = sub_2683CFAD8();
    v39 = v38;
    v34(v36, v8);
    v40 = sub_2681610A0(v37, v39, &v50);

    *(v26 + 24) = v40;
    _os_log_impl(&dword_2680EB000, v24, v44, "Shim parameter %s type mismatch. Expected BOOL, got: %s - %s", v26, 0x20u);
    v41 = v43;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v41, -1, -1);
    MEMORY[0x26D617A40](v26, -1, -1);
  }

  else
  {

    v29 = *(v9 + 8);
    v29(v22, v8);
    v29(v16, v8);
  }

  return 2;
}

uint64_t sub_2683B1584(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v77 = sub_2683CF958();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v76 = v5 - v4;
  OUTLINED_FUNCTION_3_8();
  v6 = sub_2683CF928();
  OUTLINED_FUNCTION_0_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_3();
  v12 = v11 - v10;
  v13 = sub_2683CF948();
  OUTLINED_FUNCTION_0_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19_3();
  v75 = v17 - v18;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_56_3();
  v81 = v20;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_56_3();
  v80 = v22;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v71 - v24;
  sub_2683CF8F8();
  OUTLINED_FUNCTION_0_3();
  v72 = v27;
  v73 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19_3();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v71 - v32;
  v34 = *(v15 + 16);
  v78 = a1;
  v79 = v34;
  v34(v25, a1, v13);
  v35 = OUTLINED_FUNCTION_10_40();
  if (v36(v35) == *MEMORY[0x277D72A58])
  {
    v37 = OUTLINED_FUNCTION_10_40();
    v38(v37);
    v39 = swift_projectBox();
    (*(v8 + 16))(v12, v39, v6);
    if ((*(v8 + 88))(v12, v6) == *MEMORY[0x277D72970])
    {
      (*(v8 + 96))(v12, v6);
      v41 = v72;
      v40 = v73;
      (*(v72 + 32))(v33, v12, v73);

      (*(v41 + 16))(v30, v33, v40);
      v42 = sub_2681E6B5C(v30);
      (*(v41 + 8))(v33, v40);
      return v42;
    }

    (*(v8 + 8))(v12, v6);
  }

  else
  {
    v43 = OUTLINED_FUNCTION_10_40();
    v44(v43);
  }

  v46 = v80;
  v45 = v81;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v47 = sub_2683CF7E8();
  v48 = __swift_project_value_buffer(v47, qword_28027C958);
  v50 = v78;
  v49 = v79;
  v79(v46, v78, v13);
  v49(v45, v50, v13);
  v51 = v48;
  v52 = sub_2683CF7C8();
  v53 = sub_2683CFE78();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82 = v78;
    *v54 = 136315650;
    v55 = OUTLINED_FUNCTION_11_47();
    switch(v74)
    {
      case 1:
        v51 = 0xE700000000000000;
        v55 = 0x746E65746E6F63;
        break;
      case 2:
        v51 = 0xE600000000000000;
        v55 = 0x7265646C6F66;
        break;
      case 3:
        v51 = 0xE300000000000000;
        v55 = 7368801;
        break;
      default:
        break;
    }

    v58 = sub_2681610A0(v55, v51, &v82);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v59 = v80;
    sub_2683CF938();
    v60 = sub_2683CFAD8();
    v62 = v61;
    v63 = *(v15 + 8);
    v63(v59, v13);
    v64 = sub_2681610A0(v60, v62, &v82);

    *(v54 + 14) = v64;
    *(v54 + 22) = 2080;
    v79(v75, v81, v13);
    v65 = sub_2683CFAD8();
    v67 = v66;
    v68 = OUTLINED_FUNCTION_10_40();
    (v63)(v68);
    v69 = sub_2681610A0(v65, v67, &v82);

    *(v54 + 24) = v69;
    _os_log_impl(&dword_2680EB000, v52, v53, "Shim parameter %s type mismatch. Expected app, got: %s - %s", v54, 0x20u);
    OUTLINED_FUNCTION_8_44();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_15_36();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v56 = *(v15 + 8);
    v56(v45, v13);
    v57 = OUTLINED_FUNCTION_10_40();
    (v56)(v57);
  }

  return 0;
}

uint64_t sub_2683B1BF4(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v62 = sub_2683CF958();
  MEMORY[0x28223BE20](v62);
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2683CF928();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2683CF948();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v56 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v65 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v18 = sub_2683CF8F8();
  v57 = *(v18 - 8);
  v58 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  v24 = *(v9 + 16);
  v63 = a1;
  v64 = v24;
  v24(v17, a1, v8);
  if ((*(v9 + 88))(v17, v8) == *MEMORY[0x277D72A58])
  {
    (*(v9 + 96))(v17, v8);
    v25 = swift_projectBox();
    (*(v5 + 16))(v7, v25, v4);
    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D72970])
    {
      (*(v5 + 96))(v7, v4);
      v27 = v57;
      v26 = v58;
      (*(v57 + 32))(v23, v7, v58);

      (*(v27 + 16))(v21, v23, v26);
      v28 = sub_2681E6B5C(v21);
      (*(v27 + 8))(v23, v26);
      return v28;
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v9 + 8))(v17, v8);
  }

  v29 = v9;
  v31 = v65;
  v30 = v66;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v32 = sub_2683CF7E8();
  __swift_project_value_buffer(v32, qword_28027C958);
  v34 = v63;
  v33 = v64;
  v64(v31, v63, v8);
  v33(v30, v34, v8);
  v35 = sub_2683CF7C8();
  v36 = sub_2683CFE78();
  if (os_log_type_enabled(v35, v36))
  {
    LODWORD(v63) = v36;
    v37 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v67 = v58;
    *v37 = 136315650;
    v38 = 0xE300000000000000;
    v39 = 7368801;
    v40 = v29;
    switch(v59)
    {
      case 1:
        v38 = 0xE500000000000000;
        v39 = 0x656C746974;
        break;
      case 2:
        v38 = 0xE900000000000065;
        v39 = 0x6C7469547473696CLL;
        break;
      case 3:
        v38 = 0xEE00726569666974;
        v39 = 0x6E6564497473696CLL;
        break;
      case 4:
        v38 = 0xED0000797265636FLL;
        v39 = 0x724773497473696CLL;
        break;
      case 5:
        v38 = 0xE400000000000000;
        v39 = 1701669236;
        break;
      case 6:
        v38 = 0xE800000000000000;
        v39 = 0x6E6F697461636F6CLL;
        break;
      case 7:
        v38 = 0x80000002683FCFB0;
        v39 = 0xD00000000000001ALL;
        break;
      default:
        break;
    }

    v42 = sub_2681610A0(v39, v38, &v67);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = v65;
    sub_2683CF938();
    v44 = sub_2683CFAD8();
    v46 = v45;
    v47 = *(v40 + 8);
    v47(v43, v8);
    v48 = sub_2681610A0(v44, v46, &v67);

    *(v37 + 14) = v48;
    *(v37 + 22) = 2080;
    v49 = v66;
    v64(v60, v66, v8);
    v50 = sub_2683CFAD8();
    v52 = v51;
    v47(v49, v8);
    v53 = sub_2681610A0(v50, v52, &v67);

    *(v37 + 24) = v53;
    _os_log_impl(&dword_2680EB000, v35, v63, "Shim parameter %s type mismatch. Expected app, got: %s - %s", v37, 0x20u);
    v54 = v58;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v54, -1, -1);
    MEMORY[0x26D617A40](v37, -1, -1);
  }

  else
  {

    v41 = *(v29 + 8);
    v41(v30, v8);
    v41(v31, v8);
  }

  return 0;
}

uint64_t sub_2683B239C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26839B730(a1, a2);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

uint64_t sub_2683B23C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t (*a4)(void)@<X3>, const char *a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a5;
  v74 = a3;
  v75 = a4;
  v76 = a6;
  v69 = a2;
  v72 = sub_2683CF958();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v71 = v9 - v8;
  OUTLINED_FUNCTION_3_8();
  v10 = sub_2683CF928();
  OUTLINED_FUNCTION_0_3();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  v16 = v15 - v14;
  v17 = sub_2683CF948();
  OUTLINED_FUNCTION_0_3();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19_3();
  v70 = (v21 - v22);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_56_3();
  v77 = v24;
  OUTLINED_FUNCTION_8_0();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v67 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v67 - v29;
  v31 = *(v19 + 16);
  v31(&v67 - v29, a1, v17);
  if ((*(v19 + 88))(v30, v17) == *MEMORY[0x277D72A58])
  {
    (*(v19 + 96))(v30, v17);
    v32 = swift_projectBox();
    (*(v12 + 16))(v16, v32, v10);
    v33 = OUTLINED_FUNCTION_69();
    v35 = v34(v33);
    if (v35 == *v74)
    {
      v36 = OUTLINED_FUNCTION_69();
      v37(v36);
      v38 = v75(0);
      OUTLINED_FUNCTION_1();
      v40 = v76;
      (*(v39 + 32))(v76, v16, v38);

      v41 = v40;
      v42 = 0;
      v43 = 1;
      v44 = v38;
      return __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    }

    v45 = OUTLINED_FUNCTION_69();
    v46(v45);
  }

  else
  {
    (*(v19 + 8))(v30, v17);
  }

  v47 = v77;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v48 = sub_2683CF7E8();
  __swift_project_value_buffer(v48, qword_28027C958);
  v31(v28, a1, v17);
  v31(v47, a1, v17);
  v49 = sub_2683CF7C8();
  v50 = sub_2683CFE78();
  if (os_log_type_enabled(v49, v50))
  {
    LODWORD(v74) = v50;
    v51 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v78 = v68;
    *v51 = 136315650;
    v52 = 0xE300000000000000;
    v53 = 7368801;
    switch(v69)
    {
      case 1:
        v53 = OUTLINED_FUNCTION_11_47();
        break;
      case 2:
        v52 = 0xE900000000000065;
        v53 = 0x6C7469547473696CLL;
        break;
      case 3:
        v52 = 0xEE00726569666974;
        v53 = 0x6E6564497473696CLL;
        break;
      case 4:
        v52 = 0xED0000797265636FLL;
        v53 = 0x724773497473696CLL;
        break;
      case 5:
        v52 = 0xE400000000000000;
        v53 = 1701669236;
        break;
      case 6:
        v52 = 0xE800000000000000;
        v53 = 0x6E6F697461636F6CLL;
        break;
      case 7:
        v52 = 0x80000002683FCFB0;
        v53 = 0xD00000000000001ALL;
        break;
      default:
        break;
    }

    v55 = sub_2681610A0(v53, v52, &v78);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    sub_2683CF938();
    v56 = sub_2683CFAD8();
    v58 = v57;
    v59 = *(v19 + 8);
    v59(v28, v17);
    v60 = sub_2681610A0(v56, v58, &v78);

    *(v51 + 14) = v60;
    *(v51 + 22) = 2080;
    v61 = v77;
    v31(v70, v77, v17);
    v62 = sub_2683CFAD8();
    v64 = v63;
    v59(v61, v17);
    v65 = sub_2681610A0(v62, v64, &v78);

    *(v51 + 24) = v65;
    _os_log_impl(&dword_2680EB000, v49, v74, v73, v51, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_15_36();
  }

  else
  {

    v54 = *(v19 + 8);
    v54(v47, v17);
    v54(v28, v17);
  }

  v75(0);
  v41 = OUTLINED_FUNCTION_35_22();
  return __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
}

unint64_t sub_2683B2A1C(uint64_t a1)
{
  v1 = sub_2683D0408();

  if (v1 >= 8)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2683B2A68(char a1)
{
  result = 7368801;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x6C7469547473696CLL;
      break;
    case 3:
      result = 0x6E6564497473696CLL;
      break;
    case 4:
      result = 0x724773497473696CLL;
      break;
    case 5:
      result = 1701669236;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2683B2B7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2683B2A1C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2683B2BAC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2683B2A68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2683B2C44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544B0, &qword_2683F9578);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  v4 = *v0;
  v11 = 6;
  v10 = &v11;
  sub_2683B055C(6, sub_2683B3A84, v9, 0, 0, 0, 0, v4, &v7[-v2], sub_2683B3C10, sub_2683B3C10, MEMORY[0x277D72930]);
  v8 = v0;
  v5 = sub_2683B01D0(sub_2683B3A8C);
  sub_26812D9E0(v3, &qword_2802544B0, &qword_2683F9578);
  return v5;
}

void sub_2683B2D98(void *a1@<X8>)
{
  v2 = sub_2683CF908();
  sub_268399904();
  if (v3 == 2 || (v3 & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CD4178]) initWithPlacemark:v2 event:v4];

  *a1 = v5;
}

uint64_t sub_2683B2E6C()
{
  v1 = sub_2683CB528();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  v11 = *v0;
  LOBYTE(v15) = 5;
  v14 = &v15;
  sub_2683B055C(5, sub_2683B3A7C, v13, 0, 0, 0, 0, v11, &v13[-v9], sub_2683B3C10, sub_2683B3C10, MEMORY[0x277CC9578]);
  sub_2681340E8(v10, v8, &qword_28024DB08, qword_2683D5760);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    sub_26812D9E0(v10, &qword_28024DB08, qword_2683D5760);
    return 0;
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    sub_2683B30F4(v4, &v15);
    (*(v2 + 8))(v4, v1);
    sub_26812D9E0(v10, &qword_28024DB08, qword_2683D5760);
    return v15;
  }
}

uint64_t sub_2683B30F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v23[1] = a1;
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v24 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - v5;
  v23[0] = sub_2683CB7D8();
  v7 = *(v23[0] - 8);
  MEMORY[0x28223BE20](v23[0]);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2683CB7A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2683CB0D8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CB768();
  sub_2683CB7C8();
  sub_2683CB6A8();
  (*(v7 + 8))(v9, v23[0]);
  (*(v11 + 8))(v13, v10);
  (*(v15 + 16))(v6, v17, v14);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v14);
  v18 = v24;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v14);
  v19 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v20 = sub_2681D2B74(v6, v18);
  v21 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];

  result = (*(v15 + 8))(v17, v14);
  *v25 = v21;
  return result;
}

uint64_t sub_2683B3424()
{
  sub_268399224();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2683D2250;
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);

  *(v1 + 32) = sub_26835E5F8();

  return v1;
}

id sub_2683B3520()
{
  sub_268399224();
  v3 = v2;
  if (v2)
  {
    v4 = v1;
    v1 = sub_26812A050(v1, v2);
    if ((v1 & 1) == 0)
    {

      v4 = 0;
      v3 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x28223BE20](v1);
  sub_268399904();
  v6 = v5 != 2 && (v5 & 1) != 0;
  Reminder = type metadata accessor for CreateReminderShim.Wrapper(0);
  v8 = *(Reminder + 20);
  v9 = (v0 + *(Reminder + 24));
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v12 = (*(v11 + 32))(v10, v11);
  v13 = sub_2681DB5EC(v4, v3, v6, v0 + v8, v12 & 1);

  return v13;
}

id sub_2683B36BC()
{
  sub_268399224();
  v1 = v0;
  v3 = v2;
  v4 = sub_2683B3520();
  if (!v4)
  {
    if (!v3)
    {
      return 0;
    }

    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v4 = sub_26835E5F8();
  }

  v5 = v4;
  sub_268129504(0, &qword_280253320, 0x277CD4228);
  return sub_268177814(v5, MEMORY[0x277D84F90], 0, 0, v1, v3);
}

id sub_2683B37B4()
{
  v0 = sub_2683B36BC();
  v1 = sub_2683B3424();
  v2 = sub_2683B2C44();
  v3 = sub_2683B2E6C();
  v4 = objc_allocWithZone(MEMORY[0x277CD3A18]);
  v5 = sub_268213240(v0, v1, v2, v3, 0);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = v5;
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = v7;
    v13 = [v12 description];
    v14 = sub_2683CFA78();
    v16 = v15;

    v17 = sub_2681610A0(v14, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_2680EB000, v8, v9, "⚙️ [CreateReminderShimWrapper] made intent: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v18 = sub_26821AD1C();
  return v18;
}

uint64_t sub_2683B3984()
{
  v1 = sub_2683B37B4();
  v2 = *(v0 + 8);

  return v2(v1);
}

_BYTE *storeEnumTagSinglePayload for CreateReminderShim.Parameters.ParameterName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2683B3BBC()
{
  result = qword_2802544B8;
  if (!qword_2802544B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802544B8);
  }

  return result;
}

uint64_t sub_2683B3C5C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_2683CE448();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544C0, &qword_2683F9630);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544C8, &qword_2683F9638);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = (v44 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v44 - v13;
  v15 = sub_2683CD628();
  OUTLINED_FUNCTION_0_3();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CE438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEC0, &qword_2683E6550);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
    v54 = v20;
    v55 = v17;
    (*(v17 + 32))(v20, v14, v15);
    v62 = v15;
    v63 = MEMORY[0x277D5E728];
    __swift_allocate_boxed_opaque_existential_0(v61);
    sub_268174A2C();
    v53 = sub_2683CE3E8();
    v50 = v21;
    v22 = sub_2683CE368();
    v51 = v23;
    v52 = v22;
    v49 = sub_2683CE378();
    v48 = sub_2683CE408();
    v47 = sub_2683CE3A8();
    v46 = sub_2683CE348();
    v44[2] = v24;
    v44[3] = sub_2683CE388();
    v45 = sub_2683CE418();
    sub_2683CE3F8();
    sub_2683CE3D8();
    sub_2683CE3B8();
    sub_2683CE3C8();
    sub_2683CE358();
    sub_2683CE398();
    sub_2683CE428();
    return (*(v55 + 8))(v54, v15);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
    sub_2683B4234(v14);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v26 = sub_2683CF7E8();
    __swift_project_value_buffer(v26, qword_28027C958);
    v27 = *(v5 + 16);
    v27(v8, v1, v3);
    v28 = v3;
    v29 = sub_2683CF7C8();
    v30 = sub_2683CFE88();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v27;
      v33 = v32;
      v60 = v32;
      *v31 = 136315138;
      v55 = v28;
      sub_2683CE438();
      __swift_project_boxed_opaque_existential_1(v61, v62);
      DynamicType = swift_getDynamicType();
      v35 = v63;
      __swift_destroy_boxed_opaque_existential_0(v61);
      v58 = DynamicType;
      v59 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEC8, &qword_2683D5758);
      v36 = sub_2683CFAD8();
      v38 = v37;
      v39 = v8;
      v40 = v55;
      (*(v5 + 8))(v39, v55);
      v41 = sub_2681610A0(v36, v38, &v60);

      *(v31 + 4) = v41;
      _os_log_impl(&dword_2680EB000, v29, v30, "Root node of intent was not a NonTerminalIntentNode, was: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      v42 = v33;
      v43 = v56;
      MEMORY[0x26D617A40](v42, -1, -1);
      MEMORY[0x26D617A40](v31, -1, -1);

      return v43(v57, v2, v40);
    }

    else
    {

      (*(v5 + 8))(v8, v28);
      return (v27)(v57, v2, v28);
    }
  }
}

uint64_t sub_2683B4234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802535F8, &unk_2683F32E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2683B429C@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a3;
  v46 = sub_2683CB668();
  OUTLINED_FUNCTION_1_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2683CCBA8();
  OUTLINED_FUNCTION_1_7();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_1();
  v50 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  type metadata accessor for AppSelectionTrainingLogger(0);
  v18 = sub_26821714C();
  v51 = v17;
  v52 = v12;
  v19 = *(v12 + 16);
  v53 = v10;
  v48 = v19;
  v49 = v12 + 16;
  v19(v17, a1, v10);
  sub_268134034(a2, v73);
  OUTLINED_FUNCTION_19_11();
  v20 = swift_allocObject();
  sub_268128148(v73, v20 + 16);
  v47 = v20;
  *(v20 + 56) = v18;
  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  v72[3] = v21;
  v72[4] = *(v22 + 8);
  __swift_allocate_boxed_opaque_existential_0(v72);
  OUTLINED_FUNCTION_23_0();
  (*(v23 + 16))();
  *&v67 = sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
  v54 = v18;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544D0, &qword_2683F9698);
  v24 = sub_2683CFAD8();
  v45 = v25;
  v26 = sub_2683CF6C8();
  v27 = sub_2683CF6B8();
  v71[3] = v26;
  v71[4] = MEMORY[0x277D5FDD8];
  v71[0] = v27;
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v57, v58);
  sub_2683CC088();
  sub_2681840DC(v71, &v67, &qword_28024E2C0, &unk_2683D66D0);
  if (*(&v68 + 1))
  {
    OUTLINED_FUNCTION_20_2();
    v28 = swift_allocObject();
    v29 = v68;
    *(v28 + 16) = v67;
    *(v28 + 32) = v29;
    *(v28 + 48) = v69;
    v30 = &off_287900140;
    v31 = &type metadata for NotebookReferenceResolver;
  }

  else
  {
    sub_268184140(&v67, &qword_28024E2C0, &unk_2683D66D0);
    v28 = 0;
    v31 = 0;
    v30 = 0;
    v56[1] = 0;
    v56[2] = 0;
  }

  v56[0] = v28;
  v56[3] = v31;
  v56[4] = v30;
  v32 = type metadata accessor for InstalledAppProvider(0);
  v66[3] = v32;
  v66[4] = &off_2879042B8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v66);
  v34 = *(v6 + 16);
  v35 = v46;
  v34(boxed_opaque_existential_0 + *(v32 + 20), v9, v46);
  *boxed_opaque_existential_0 = 0;
  v36 = type metadata accessor for RegexAppSearcher(0);
  v70[3] = v36;
  v70[4] = &off_28790BB20;
  v37 = __swift_allocate_boxed_opaque_existential_0(v70);
  sub_268134034(v66, v37);
  v34(v37 + *(v36 + 20), v9, v35);
  v70[8] = &type metadata for InferredAppResolver;
  v70[9] = &off_287902D60;
  v38 = swift_allocObject();
  v70[5] = v38;
  sub_268134034(v66, v38 + 32);
  sub_2681840DC(v56, v38 + 72, &qword_28024E2C8, &unk_2683D6950);
  *(v38 + 16) = 0xD000000000000015;
  *(v38 + 24) = 0x80000002683FCFF0;
  (*(v6 + 8))(v9, v35);
  sub_268134034(v66, &v67);
  sub_268184140(v56, &qword_28024E2C8, &unk_2683D6950);
  __swift_destroy_boxed_opaque_existential_0(v66);
  v70[10] = v54;
  __swift_destroy_boxed_opaque_existential_0(v57);
  v58 = &type metadata for AppResolver;
  v59 = &off_28790B8A0;
  v57[0] = swift_allocObject();
  sub_26818CE54(&v67, v57[0] + 16);
  sub_2681840DC(v72, &v65, &qword_28024E2D0, &qword_2683D66E0);
  v60 = v24;
  v61 = v45;
  v62 = 1;
  v63 = &unk_2683F9680;
  v64 = 0;
  sub_26818CEB0(v57, v56);
  v39 = v50;
  v40 = v51;
  v41 = v53;
  v48(v50, v51, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544D8, &qword_2683F96A0);
  swift_allocObject();
  v42 = sub_2681E518C(v56, v39, &unk_2683F9690, v47);
  (*(v52 + 8))(v40, v41);
  sub_268184140(v72, &qword_28024E2D0, &qword_2683D66E0);
  sub_26818DAA0(v57);
  sub_26818DAF4(&v67);
  sub_268184140(v71, &qword_28024E2C0, &unk_2683D66D0);
  *&v67 = v42;
  sub_26818A0C8(&qword_2802544E0, &qword_2802544D8, &qword_2683F96A0, &unk_2683FA170);
  v43 = sub_2683CBF28();

  *v55 = v43;
  return result;
}

unint64_t sub_2683B48FC(uint64_t a1)
{
  v1 = sub_2683D0408();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2683B4948(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x746E65746E6F63;
  }

  return 0x6D614E70756F7267;
}

unint64_t sub_2683B49C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2683B48FC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2683B49F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2683B4948(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2683B4A20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a3;
  v39 = a2;
  v40 = a1;
  v42 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544F8, &qword_2683F96B0);
  OUTLINED_FUNCTION_1_7();
  v41 = v5;
  MEMORY[0x28223BE20](v6);
  v45 = &v31 - v7;
  v8 = sub_2683CF238();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254500, &qword_2683F96B8);
  OUTLINED_FUNCTION_1_7();
  v44 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_1();
  v38 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  sub_2683CCC48();
  type metadata accessor for CreateNoteCATPatternsExecutor(0);
  OUTLINED_FUNCTION_8_45();
  OUTLINED_FUNCTION_6_42();
  v16 = sub_2683CF0B8();
  v84 = v4;
  v85 = &off_28790B0A0;
  v83[0] = v16;
  type metadata accessor for NotebookLabelsV2CATs(0);
  OUTLINED_FUNCTION_8_45();
  OUTLINED_FUNCTION_6_42();
  v17 = sub_2683CF0B8();
  v82[3] = &type metadata for TCCTemplateProvider;
  v82[4] = &off_287902CB8;
  v18 = sub_2683CC548();
  swift_allocObject();
  v19 = sub_2683CC538();
  v81[3] = v18;
  v81[4] = MEMORY[0x277D5BD58];
  v81[0] = v19;
  type metadata accessor for CreateNoteCATs(0);
  OUTLINED_FUNCTION_8_45();
  OUTLINED_FUNCTION_6_42();
  v20 = sub_2683CF0B8();
  type metadata accessor for CreateNoteCATsSimple(0);
  OUTLINED_FUNCTION_8_45();
  OUTLINED_FUNCTION_6_42();
  v21 = sub_2683CF198();
  v80[3] = &type metadata for NotebookFeatureManager;
  v80[4] = &protocol witness table for NotebookFeatureManager;
  v43 = sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
  v35 = sub_268129504(0, &qword_280251F30, 0x277CD3B38);
  sub_2683CBEB8();
  sub_268134034(v86, v78);
  sub_268134034(v82, &v79);
  v78[5] = v17;
  swift_allocObject();
  v22 = sub_2683CC538();
  v23 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v77[5] = &off_28790DB88;
  v77[4] = &unk_28790DB70;
  v77[1] = v23;
  v77[0] = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  sub_268134034(v86, v76);
  v76[5] = v21;
  v76[6] = v22;
  v36 = sub_268372484;
  v76[7] = sub_268372484;
  v76[8] = 0;
  sub_2683B5D94();

  sub_2683CBD98();
  sub_2683CBE38();
  v65 = v21;
  v66 = v22;
  v34 = sub_2681B86A4;
  v67[0] = sub_2681B86A4;
  v67[1] = 0;
  sub_2683B5DE8();

  sub_2683CBDD8();
  sub_2683CBE88();
  sub_268134034(v83, v67);
  v67[5] = v22;
  v68 = 1;
  sub_268134034(v86, &v69);
  v71 = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  v72 = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v70 = swift_allocObject();
  sub_26818EE34(v77, v70 + 16);
  v74 = &type metadata for NotebookDisambiguationFlowProducer;
  v75 = &off_28790CD48;
  OUTLINED_FUNCTION_20_2();
  v73 = swift_allocObject();
  sub_268134034(v86, v73 + 16);
  v65 = v20;
  v66 = v21;
  sub_26813C83C(&v65, v64);
  v24 = swift_allocObject();
  memcpy((v24 + 16), v64, 0xE0uLL);

  sub_2683CBE98();
  sub_268134034(v83, v64);
  sub_268134034(v81, &v64[5]);
  sub_268134034(v86, &v64[12]);
  sub_268134034(v80, &v64[18]);
  v64[10] = v20;
  v64[11] = v21;
  v64[17] = v37;
  v64[23] = v22;
  sub_2683B5E44();

  sub_2683CBDA8();
  sub_2683CBE48();
  sub_268134034(v86, v56);
  sub_268134034(v82, &v57);
  v59 = &type metadata for NotebookButtonProvider;
  v60 = &off_287902C78;
  v58 = swift_allocObject();
  sub_26818EE98(v78, v58 + 16);
  v61 = v43;
  v62 = v34;
  v63 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254520, &qword_2683F96C0);
  sub_26818A0C8(&qword_280254528, &qword_280254520, &qword_2683F96C0, &unk_2683E6708);
  sub_2683CBDF8();
  sub_2683CBEA8();
  sub_268134034(v86, v47);
  v49 = &type metadata for NotebookButtonProvider;
  v50 = &off_287902C78;
  v48 = swift_allocObject();
  sub_26818EE98(v78, v48 + 16);
  v52 = &type metadata for CommonResponseGenerator;
  v53 = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v51 = swift_allocObject();
  sub_268134034(v86, v51 + 16);
  v54 = &type metadata for CommonLabelGenerator;
  v55 = &off_28790E058;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254530, &qword_2683F96C8);
  sub_26818A0C8(&qword_280254538, &qword_280254530, &qword_2683F96C8, &unk_2683F8DD0);
  sub_2683CBDC8();
  sub_268184140(v47, &qword_280254530, &qword_2683F96C8);
  sub_2683CBE68();

  sub_2683B5E98(v64);
  sub_2683B5EEC(v76);
  sub_26818F000(v78);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v80);
  __swift_destroy_boxed_opaque_existential_0(v81);
  __swift_destroy_boxed_opaque_existential_0(v82);
  __swift_destroy_boxed_opaque_existential_0(v83);
  sub_268184140(v56, &qword_280254520, &qword_2683F96C0);
  sub_2683B5F40(&v65);
  sub_26818F1A8(v77);
  v25 = v39;
  sub_2683CBDB8();
  v32 = v9;
  v33 = v15;
  sub_2683CBE58();
  (*(v44 + 16))(v38, v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254540, &qword_2683F96D0);
  swift_allocObject();
  v43 = sub_2683CBEC8();
  v65 = v36;
  v66 = 0;
  sub_2683B5F94();

  sub_2683CC2E8();
  v26 = v40[3];
  v27 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v26);
  v40 = sub_268344A8C(v26, v27);
  v65 = sub_2683CC2D8();
  v64[0] = sub_26818FF98(v25, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254550, &qword_2683F96D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
  v28 = MEMORY[0x277D5B820];
  sub_26818A0C8(&qword_280254558, &qword_280254550, &qword_2683F96D8, MEMORY[0x277D5B820]);
  sub_26818A0C8(&qword_28024E2F8, &qword_28024DF18, &unk_2683D5B80, v28);
  v29 = sub_2683CBF68();

  (*(v41 + 8))(v45, v46);
  result = (*(v44 + 8))(v33, v32);
  *v42 = v29;
  return result;
}

uint64_t sub_2683B5434()
{
  *(v0 + 56) = type metadata accessor for StringLocalizer(0);
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683B54C4);
}

uint64_t sub_2683B54C4(uint64_t a1)
{
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  if (qword_28024C8D0 != -1)
  {
    swift_once();
  }

  v2 = qword_28027C938;
  *(v1[8] + *(v1[7] + 20)) = qword_28027C938;
  v3 = v2;
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_2683B55FC;

  return sub_2681E5AB8();
}

uint64_t sub_2683B55FC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 64);
  v8 = *v2;

  sub_2683B5FE8(v5);

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_2683B5730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2683B5754);
}

uint64_t sub_2683B5754()
{
  v5 = v0;
  sub_2683B4A20(*(v0 + 32), *(v0 + 24), *(v0 + 40), &v4);
  *(v0 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802544E8, &qword_2683F96A8);
  sub_26818A0C8(&qword_2802544F0, &qword_2802544E8, &qword_2683F96A8, MEMORY[0x277D5B380]);
  v1 = sub_2683CBF28();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2683B583C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  if (!a1)
  {
    if (qword_28024CBD0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_28024CBC0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_28024CBE8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  *(v2 + 32) = sub_2681E1F9C();
  *(v2 + 40) = v3;
  return v2;
}

uint64_t sub_2683B5960(uint64_t a1, char a2)
{
  v3 = OUTLINED_FUNCTION_10_10();
  sub_2681840DC(v3, v4, v5, v6);
  if (v34)
  {
    v7 = sub_2683CD8B8();
    if (OUTLINED_FUNCTION_0_33(v7, v8))
    {

      sub_2683CD6F8();

      if (v33[0])
      {
LABEL_9:

        v15 = sub_2683CD1A8();

        return v15;
      }
    }
  }

  else
  {
    sub_268184140(v33, &qword_28024E370, &unk_2683D9AA0);
  }

  v9 = OUTLINED_FUNCTION_10_10();
  sub_2681840DC(v9, v10, v11, v12);
  if (v34)
  {
    v13 = sub_2683CD938();
    if (OUTLINED_FUNCTION_0_33(v13, v14))
    {

      sub_2683CCFF8();

      if (v33[0])
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_268184140(v33, &qword_28024E370, &unk_2683D9AA0);
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v16 = sub_2683CF7E8();
  __swift_project_value_buffer(v16, qword_28027C958);
  v17 = OUTLINED_FUNCTION_10_10();
  sub_26818F56C(v17, v18);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE78();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315394;
    if (a2)
    {
      if (a2 == 1)
      {
        v23 = 0x746E65746E6F63;
      }

      else
      {
        v23 = 0x6D614E70756F7267;
      }

      if (a2 == 1)
      {
        v24 = 0xE700000000000000;
      }

      else
      {
        v24 = 0xE900000000000065;
      }
    }

    else
    {
      v24 = 0xE500000000000000;
      v23 = 0x656C746974;
    }

    v25 = sub_2681610A0(v23, v24, &v32);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    sub_2681840DC(v33, v31, &qword_28024E370, &unk_2683D9AA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
    v26 = sub_2683CFAD8();
    v28 = v27;
    sub_26818F5C8(v33);
    v29 = sub_2681610A0(v26, v28, &v32);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2680EB000, v19, v20, "[CreateNote resolveSelectedEntity] Unable to resolve entity for %s from intent %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v22, -1, -1);
    MEMORY[0x26D617A40](v21, -1, -1);
  }

  else
  {

    sub_26818F5C8(v33);
  }

  return 0;
}

uint64_t sub_2683B5CEC(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681B7480;

  return sub_2683B5730(a1, v1 + 16, v4);
}

unint64_t sub_2683B5D94()
{
  result = qword_280254508;
  if (!qword_280254508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254508);
  }

  return result;
}

unint64_t sub_2683B5DE8()
{
  result = qword_280254510;
  if (!qword_280254510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254510);
  }

  return result;
}

unint64_t sub_2683B5E44()
{
  result = qword_280254518;
  if (!qword_280254518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254518);
  }

  return result;
}

unint64_t sub_2683B5F94()
{
  result = qword_280254548;
  if (!qword_280254548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254548);
  }

  return result;
}

uint64_t sub_2683B5FE8(uint64_t a1)
{
  v2 = type metadata accessor for StringLocalizer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for CreateNote.Errors(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for CreateNote.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2683B61E0()
{
  result = qword_280254560;
  if (!qword_280254560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254560);
  }

  return result;
}

unint64_t sub_2683B6238()
{
  result = qword_280254568;
  if (!qword_280254568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254568);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_45()
{

  return sub_2683CF228();
}

uint64_t sub_2683B62B0(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    goto LABEL_34;
  }

  sub_26820316C(a1, v36);
  sub_2683CDBB8();
  if (!swift_dynamicCast())
  {
    v3 = sub_2683CDC78();
    if (OUTLINED_FUNCTION_0_76(v3, v4))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 18;
      goto LABEL_35;
    }

    v5 = sub_2683CE118();
    if (OUTLINED_FUNCTION_0_76(v5, v6))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 19;
      goto LABEL_35;
    }

    v7 = sub_2683CDF08();
    if (OUTLINED_FUNCTION_0_76(v7, v8))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 16;
      goto LABEL_35;
    }

    v9 = sub_2683CDEF8();
    if (OUTLINED_FUNCTION_0_76(v9, v10))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 13;
      goto LABEL_35;
    }

    v11 = sub_2683CDF18();
    if (OUTLINED_FUNCTION_0_76(v11, v12))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 8;
      goto LABEL_35;
    }

    v13 = sub_2683CDE48();
    if (OUTLINED_FUNCTION_0_76(v13, v14))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 7;
      goto LABEL_35;
    }

    v15 = sub_2683CD738();
    if (OUTLINED_FUNCTION_0_76(v15, v16))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 21;
      goto LABEL_35;
    }

    v17 = sub_2683CD8E8();
    if (OUTLINED_FUNCTION_0_76(v17, v18))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 6;
      goto LABEL_35;
    }

    v19 = sub_2683CD8C8();
    if (OUTLINED_FUNCTION_0_76(v19, v20))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 9;
      goto LABEL_35;
    }

    v21 = sub_2683CE1D8();
    if (OUTLINED_FUNCTION_0_76(v21, v22) || (v23 = sub_2683CDD88(), OUTLINED_FUNCTION_0_76(v23, v24)) || (v25 = sub_2683CDE58(), OUTLINED_FUNCTION_0_76(v25, v26)) || (v27 = sub_2683CDF58(), OUTLINED_FUNCTION_0_76(v27, v28)))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 1;
      goto LABEL_35;
    }

    v29 = sub_2683CDD68();
    if (OUTLINED_FUNCTION_0_76(v29, v30))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 2;
      goto LABEL_35;
    }

    v31 = sub_2683CDD78();
    if (OUTLINED_FUNCTION_0_76(v31, v32))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 4;
      goto LABEL_35;
    }

    v33 = sub_2683CDDB8();
    if (OUTLINED_FUNCTION_0_76(v33, v34))
    {

      __swift_destroy_boxed_opaque_existential_0(v36);
      v2 = 3;
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_0(v36);
LABEL_34:
    v2 = 24;
    goto LABEL_35;
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
  v2 = 10;
LABEL_35:
  sub_2682DF06C(a1);
  return v2;
}

uint64_t OUTLINED_FUNCTION_0_76(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

id sub_2683B65A4()
{
  result = [objc_allocWithZone(type metadata accessor for LocationManager()) init];
  qword_28027CED8 = result;
  return result;
}

uint64_t sub_2683B65D4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12SiriNotebook15LocationManager__authorizationStatus;
  if (!*(v0 + OBJC_IVAR____TtC12SiriNotebook15LocationManager__authorizationStatus))
  {
    if (qword_28024CC50 != -1)
    {
      swift_once();
    }

    v3 = sub_2683CF7E8();
    __swift_project_value_buffer(v3, qword_28027CE90);
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE88();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2680EB000, v4, v5, "[LocationManager] Failed to determine location services authorization for reminders.", v6, 2u);
      MEMORY[0x26D617A40](v6, -1, -1);
    }
  }

  return *(v1 + v2);
}

id sub_2683B66CC()
{
  v10 = sub_2683CFEC8();
  v1 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2683CFEB8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2683CF998();
  MEMORY[0x28223BE20](v5 - 8);
  *&v0[OBJC_IVAR____TtC12SiriNotebook15LocationManager_locationManager] = 0;
  *&v0[OBJC_IVAR____TtC12SiriNotebook15LocationManager__authorizationStatus] = 0;
  v9 = OBJC_IVAR____TtC12SiriNotebook15LocationManager_locationQueue;
  sub_2683B6A70();
  sub_2683CF988();
  v12 = MEMORY[0x277D84F90];
  sub_2683B6AB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254600, &unk_2683F9860);
  sub_2683B6B0C();
  sub_2683D0058();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v10);
  *&v0[v9] = sub_2683CFED8();
  v6 = type metadata accessor for LocationManager();
  v11.receiver = v0;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_2683B6938(void *a1)
{
  result = [a1 authorizationStatus];
  *(v1 + OBJC_IVAR____TtC12SiriNotebook15LocationManager__authorizationStatus) = result;
  return result;
}

id sub_2683B69CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2683B6A70()
{
  result = qword_2802545F0;
  if (!qword_2802545F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802545F0);
  }

  return result;
}

unint64_t sub_2683B6AB4()
{
  result = qword_2802545F8;
  if (!qword_2802545F8)
  {
    sub_2683CFEB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802545F8);
  }

  return result;
}

unint64_t sub_2683B6B0C()
{
  result = qword_280254608;
  if (!qword_280254608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280254600, &unk_2683F9860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254608);
  }

  return result;
}

uint64_t type metadata accessor for CreateNoteCATs(uint64_t a1)
{
  result = qword_280254610;
  if (!qword_280254610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683B6C0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683B6C24()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_5_13();

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_8(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_12(v4);
  OUTLINED_FUNCTION_6_12();

  return v6();
}

uint64_t sub_2683B6D30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683B6D48()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_5_13();

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_8(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_12(v4);
  OUTLINED_FUNCTION_6_12();

  return v6();
}

uint64_t sub_2683B6E54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683B6E6C()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_5_13();

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_8(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2_12(v4);
  OUTLINED_FUNCTION_6_12();

  return v6();
}

uint64_t sub_2683B6F78(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2683B6F94()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_2683D1ED0;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  if (v1)
  {
    v3 = sub_2683CF138();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 32);
  v6 = *(v0 + 72);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = 0x80000002683FD0D0;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  *(v2 + 128) = 1702129518;
  *(v2 + 136) = 0xE400000000000000;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for NotebookNoteConcept(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  OUTLINED_FUNCTION_5_13();

  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_2683B7148;
  v10 = *(v0 + 16);

  return v12(v10, 0xD000000000000027, 0x80000002683FD0F0, v2);
}

uint64_t sub_2683B7148()
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

    return MEMORY[0x2822009F8](sub_26837BF74);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v7();
  }
}

uint64_t sub_2683B72BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2683B7440()
{
  OUTLINED_FUNCTION_14();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[25] = v4;
  OUTLINED_FUNCTION_23(v4);
  v1[26] = OUTLINED_FUNCTION_55();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = sub_2683CC9A8();
  v1[30] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[31] = v6;
  v1[32] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CC138();
  v1[33] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_55();
  v1[36] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v9);
  v1[37] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v10);
  v1[38] = OUTLINED_FUNCTION_15_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v11);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v12);
  v1[40] = v13;
  v1[41] = *(v14 + 64);
  v1[42] = OUTLINED_FUNCTION_55();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v15);
  v1[50] = OUTLINED_FUNCTION_15_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F9A0, &qword_2683DD888);
  v1[51] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v1[52] = v17;
  v1[53] = OUTLINED_FUNCTION_55();
  v1[54] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v18);
}

uint64_t sub_2683B774C()
{
  v37 = v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[52];
  v4 = v0[23];
  v5 = sub_2683CF7E8();
  __swift_project_value_buffer(v5, qword_28027C958);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2683CF7C8();
  v8 = sub_2683CFE98();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[54];
  if (v9)
  {
    v11 = v0[52];
    v12 = v0[53];
    v13 = v0[51];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2683CFAD8();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_2681610A0(v15, v17, &v36);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v7, v8, "[SnoozeTasks HandleIntentStrategy] Making intent handled response for: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x26D617A40](v35, -1, -1);
    MEMORY[0x26D617A40](v14, -1, -1);
  }

  else
  {
    v19 = v0[51];
    v20 = v0[52];

    (*(v20 + 8))(v10, v19);
  }

  v21 = sub_2683CC818();
  v22 = sub_2683B9A40(v21);
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = v22;
  if (sub_268229348() != 1 || !sub_2683ABE58())
  {

LABEL_13:
    v27 = 1;
    goto LABEL_14;
  }

  sub_2683ABE60();
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x26D616C90](0, v23);
  }

  else
  {
    v24 = *(v23 + 32);
  }

  v25 = v24;

  v26 = [v25 title];

  sub_2683CFEA8();
  v27 = 0;
LABEL_14:
  v28 = v0[50];
  v29 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v28, v27, 1, v29);
  v30 = sub_2683CC848();
  v31 = [v30 nextTriggerTime];

  if (v31)
  {
    v32 = sub_268360738();
  }

  else
  {
    v32 = 0;
  }

  v0[55] = v32;
  v33 = swift_task_alloc();
  v0[56] = v33;
  *v33 = v0;
  v33[1] = sub_2683B7AD0;

  return sub_2681839DC();
}

uint64_t sub_2683B7AD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 400);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v9 + 456) = v8;
  *(v9 + 464) = v0;

  sub_2681433DC(v5, &unk_28024E7C0, &unk_2683D6CA0);

  if (v0)
  {
    v10 = sub_2683B8EB0;
  }

  else
  {
    v10 = sub_2683B7C28;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2683B7C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v25 = *(v24 + 464);
  v26 = *(*(v24 + 192) + 48);
  sub_2683B9004(*(v24 + 184), *(v24 + 392));
  v27 = *(v24 + 456);
  if (v25)
  {

    v123 = *(v24 + 344);
    v125 = *(v24 + 336);
    v127 = *(v24 + 312);
    v129 = *(v24 + 304);
    v131 = *(v24 + 296);
    v133 = *(v24 + 288);
    v135 = *(v24 + 280);
    v137 = *(v24 + 256);
    v139 = *(v24 + 232);
    v141 = *(v24 + 224);
    v143 = *(v24 + 216);
    v145 = *(v24 + 208);

    OUTLINED_FUNCTION_24_3();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, v123, v125, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, a21, a22, a23, a24);
  }

  v37 = *(v24 + 312);
  v38 = *(v24 + 296);
  __swift_storeEnumTagSinglePayload(*(v24 + 384), 1, 1, *(v24 + 200));
  v39 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v39);
  sub_2683CED08();
  v40 = OUTLINED_FUNCTION_33_1();
  __swift_storeEnumTagSinglePayload(v40, v41, 1, v42);
  v43 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v43);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v44 = swift_allocObject();
  *(v24 + 472) = v44;
  *(v44 + 16) = xmmword_2683D2250;
  *(v44 + 32) = v27;
  v45 = v27;
  v144 = v44;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v44 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x26D616C90](0, v44);
    }

    else
    {
      v46 = *(v44 + 32);
    }

    v47 = v46;
    v48 = [v46 catId];

    v136 = sub_2683CFA78();
    v142 = v49;
  }

  else
  {
    v136 = 0;
    v142 = 0;
  }

  v50 = *(v24 + 392);
  v52 = *(v24 + 368);
  v51 = *(v24 + 376);
  v53 = *(v24 + 320);
  v54 = *(v24 + 328);
  v126 = *(v24 + 312);
  v128 = *(v24 + 304);
  v130 = *(v24 + 296);
  v124 = *(v24 + 288);
  v55 = *(v24 + 272);
  v56 = *(v24 + 280);
  v57 = *(v24 + 264);
  v132 = *(v24 + 256);
  v134 = v50;
  v138 = *(v24 + 200);
  v140 = *(v24 + 360);
  sub_2681BED1C(*(v24 + 384), v51);
  sub_2681BED1C(v50, v52);
  v58 = *(v53 + 80);
  v59 = (v58 + 24) & ~v58;
  v60 = (v54 + v58 + v59) & ~v58;
  v61 = swift_allocObject();
  *(v24 + 480) = v61;
  *(v61 + 16) = v26;
  sub_2681430AC(v51, v61 + v59);
  sub_2681430AC(v52, v61 + v60);
  (*(v55 + 16))(v56, v124, v57);
  v62 = swift_task_alloc();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = 0;
  *(v62 + 40) = v136;
  *(v62 + 48) = v142;
  *(v62 + 56) = v126;
  *(v62 + 64) = 514;
  *(v62 + 72) = sub_26814311C;
  *(v62 + 80) = v61;
  *(v62 + 88) = 0;
  *(v62 + 96) = v128;
  *(v62 + 104) = 2;
  *(v62 + 112) = v130;

  sub_2683CC8E8();

  sub_2681BED1C(v134, v140);
  if (__swift_getEnumTagSinglePayload(v140, 1, v138) == 1)
  {
    v63 = (v24 + 360);
  }

  else
  {
    v64 = *(v24 + 384);
    v65 = *(v24 + 352);
    sub_26814320C(*(v24 + 360), *(v24 + 232));
    sub_2681BED1C(v64, v65);
    if (OUTLINED_FUNCTION_88_0() != 1)
    {
      v91 = *(v24 + 224);
      v92 = *(v24 + 232);
      v93 = *(v24 + 200);
      sub_26814320C(*(v24 + 352), v91);
      *(v24 + 120) = v93;
      v94 = sub_268143270();
      *(v24 + 128) = v94;
      __swift_allocate_boxed_opaque_existential_0((v24 + 96));
      OUTLINED_FUNCTION_3_58();
      v96 = v95;
      sub_2683B9AA8(v92, v97, v95);
      *(v24 + 160) = v93;
      *(v24 + 168) = v94;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v24 + 136));
      sub_2683B9AA8(v91, boxed_opaque_existential_0, v96);
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_10_2();
      *(v24 + 488) = v99;
      *v99 = v100;
      v99[1] = sub_2683B839C;
      OUTLINED_FUNCTION_24_3();

      return v106(v101, v102, v103, v104, v105, v106, v107, v108, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v26, a21, a22, a23, a24);
    }

    v63 = (v24 + 352);
    OUTLINED_FUNCTION_3_42();
    sub_2682EF7D4(v66, v67);
  }

  v68 = *v63;
  v69 = *(v24 + 392);
  v70 = *(v24 + 344);
  sub_2681433DC(v68, &qword_28024E770, &qword_2683D80D0);
  sub_2681BED1C(v69, v70);
  v71 = OUTLINED_FUNCTION_88_0();
  v72 = *(v24 + 344);
  v73 = *(v24 + 200);
  if (v71 == 1)
  {
    v74 = *(v24 + 384);
    v75 = *(v24 + 336);
    sub_2681433DC(v72, &qword_28024E770, &qword_2683D80D0);
    sub_2681BED1C(v74, v75);
    if (OUTLINED_FUNCTION_88_0() == 1)
    {
      sub_2681433DC(*(v24 + 336), &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_10_2();
      *(v24 + 512) = v76;
      *v76 = v77;
      v76[1] = sub_2683B8BFC;
      OUTLINED_FUNCTION_24_3();

      return v81(v78, v79, v80, v81, v82, v83, v84, v85, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v26, a21, a22, a23, a24);
    }

    v109 = *(v24 + 200);
    v110 = *(v24 + 208);
    sub_26814320C(*(v24 + 336), v110);
    *(v24 + 40) = v109;
    *(v24 + 48) = sub_268143270();
    __swift_allocate_boxed_opaque_existential_0((v24 + 16));
    OUTLINED_FUNCTION_3_58();
    sub_2683B9AA8(v110, v111, v112);
    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_10_2();
    *(v24 + 504) = v113;
    *v113 = v114;
    v113[1] = sub_2683B8948;
  }

  else
  {
    v86 = *(v24 + 216);
    sub_26814320C(v72, v86);
    *(v24 + 80) = v73;
    *(v24 + 88) = sub_268143270();
    __swift_allocate_boxed_opaque_existential_0((v24 + 56));
    OUTLINED_FUNCTION_3_58();
    sub_2683B9AA8(v86, v87, v88);
    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_10_2();
    *(v24 + 496) = v89;
    *v89 = v90;
    v89[1] = sub_2683B8694;
  }

  OUTLINED_FUNCTION_24_3();

  return v119(v115, v116, v117, v118, v119, v120, v121, v122, v124, v126, v128, v130, v132, v134, v136, v138, v140, v142, v144, v26, a21, a22, a23, a24);
}

uint64_t sub_2683B839C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2683B84A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v42 = v24[49];
  v41 = v24[48];
  v25 = v24[34];
  v26 = v24[29];
  v27 = v24[28];

  sub_2682EF7D4(v27, type metadata accessor for Snippet);
  sub_2682EF7D4(v26, type metadata accessor for Snippet);
  v28 = OUTLINED_FUNCTION_32_3();
  v29(v28);
  v30 = OUTLINED_FUNCTION_74_0();
  v31(v30);
  OUTLINED_FUNCTION_33_6(v41);
  OUTLINED_FUNCTION_33_6(v42);
  OUTLINED_FUNCTION_1_69();
  sub_2681433DC(v27, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(type metadata accessor for Snippet, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v41, v42, a22, a23, a24);
}

uint64_t sub_2683B8694()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2683B8798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_19_41();
  v29 = *(v26 + 216);

  OUTLINED_FUNCTION_3_42();
  sub_2682EF7D4(v29, v30);
  v31 = OUTLINED_FUNCTION_32_3();
  v32(v31);
  v33 = OUTLINED_FUNCTION_74_0();
  v34(v33);
  OUTLINED_FUNCTION_33_6(v24);
  OUTLINED_FUNCTION_33_6(v25);
  OUTLINED_FUNCTION_1_69();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2683B8948()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2683B8A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_19_41();
  v29 = *(v26 + 208);

  OUTLINED_FUNCTION_3_42();
  sub_2682EF7D4(v29, v30);
  v31 = OUTLINED_FUNCTION_32_3();
  v32(v31);
  v33 = OUTLINED_FUNCTION_74_0();
  v34(v33);
  OUTLINED_FUNCTION_33_6(v24);
  OUTLINED_FUNCTION_33_6(v25);
  OUTLINED_FUNCTION_1_69();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v25, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2683B8BFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2683B8CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v26 = v24[48];
  v27 = v24[49];
  v28 = v24[34];
  v29 = v24[31];

  v30 = OUTLINED_FUNCTION_32_3();
  v31(v30);
  v32 = OUTLINED_FUNCTION_74_0();
  v33(v32);
  OUTLINED_FUNCTION_33_6(v26);
  OUTLINED_FUNCTION_33_6(v27);
  OUTLINED_FUNCTION_1_69();
  sub_2681433DC(v29 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v27, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2683B8EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v45 = v24[58];
  v34 = v24[42];
  v35 = v24[39];
  v36 = v24[38];
  v37 = v24[37];
  v38 = v24[36];
  v39 = v24[35];
  v40 = v24[32];
  v41 = v24[29];
  v42 = v24[28];
  v43 = v24[27];
  v44 = v24[26];

  OUTLINED_FUNCTION_24_3();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, a22, a23, a24);
}

uint64_t sub_2683B9004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Snippet.Reminder(0);
  v33 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &__dst[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v11 = &__dst[-v10 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F9A0, &qword_2683DD888);
  v12 = sub_2683CC818();
  v13 = sub_2683B9A40(v12);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (sub_2683ABE58())
  {
    v30 = a2;
    sub_2683ABE60();
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D616C90](0, v14);
    }

    else
    {
      v15 = *(v14 + 32);
    }

    v16 = v15;

    __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
    v17 = v16;
    sub_26834A288(v17, v9);
    sub_268154F90();
    sub_2682EF7D4(v9, type metadata accessor for Snippet.Reminder);
    memcpy(__dst, __src, 0x61uLL);
    v18 = sub_2683CC828();
    v19 = sub_2681E73A0(v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251608, &unk_2683E3D40);
    v20 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2683D1EC0;
    sub_2683B9AA8(v11, v21 + v20, type metadata accessor for Snippet.Reminder);
    if (v19)
    {

      sub_2682EF7D4(v11, type metadata accessor for Snippet.Reminder);
      v22 = v30;
      v23 = v30;
      *v30 = v21;
      memcpy(v23 + 1, __dst, 0x61uLL);
      v24 = type metadata accessor for Snippet(0);
      swift_storeEnumTagMultiPayload();
      v25 = v22;
      v26 = 0;
      v27 = v24;
    }

    else
    {
      memcpy(__src, __dst, 0x61uLL);
      v28 = v30;
      sub_26820FD00(v21, __src, a1, v30);

      sub_26814F740(__dst);

      sub_2682EF7D4(v11, type metadata accessor for Snippet.Reminder);
      v27 = type metadata accessor for Snippet(0);
      v25 = v28;
      v26 = 0;
    }
  }

  else
  {

    v27 = type metadata accessor for Snippet(0);
    v25 = a2;
    v26 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v25, v26, 1, v27);
}

uint64_t sub_2683B935C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2683B9388()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v2 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[4] + 8), *(v0[4] + 32));
  v3 = sub_2682B28A0(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2683B9404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268193F14;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_2683B94C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268193F14;

  return MEMORY[0x2821B9C70](a1, a2, a3, a4);
}

uint64_t sub_2683B958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268193F14;

  return MEMORY[0x2821B9C48](a1, a2, a3, a4);
}

uint64_t sub_2683B9650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268193F14;

  return sub_2683B7440();
}

uint64_t sub_2683B96F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268193F14;

  return MEMORY[0x2821B9C60](a1, a2, a3, a4);
}

uint64_t sub_2683B97BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268193F14;

  return MEMORY[0x2821B9C58](a1, a2, a3, a4);
}

uint64_t sub_2683B9880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268193D88;

  return MEMORY[0x2821B9C38](a1, a2, a3, a4);
}

uint64_t sub_2683B9944(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26813F058;

  return sub_2683B935C(a1, a2);
}

unint64_t sub_2683B99EC()
{
  result = qword_280254620;
  if (!qword_280254620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254620);
  }

  return result;
}

uint64_t sub_2683B9A40(void *a1)
{
  v2 = [a1 snoozedTasks];

  if (!v2)
  {
    return 0;
  }

  sub_268186108();
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t sub_2683B9AA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

id sub_2683B9B90(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  if (a1)
  {
    v15 = a1;
  }

  else
  {
    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v15 = sub_26835E5F8();
  }

  sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
  v16 = a1;
  v17 = sub_2683CFC98();

  v24 = a4;
  sub_268176AE4(a4, v14);
  v18 = sub_2683CB0D8();
  v19 = 0;
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) != 1)
  {
    v19 = sub_2683CAFD8();
    (*(*(v18 - 8) + 8))(v14, v18);
  }

  sub_268176AE4(a5, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v18) == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_2683CAFD8();
    (*(*(v18 - 8) + 8))(v12, v18);
  }

  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v15 contents:v17 groupName:a3 createdDateComponents:v19 modifiedDateComponents:v20 identifier:0];

  sub_2681D9984(a5);
  sub_2681D9984(v24);
  return v21;
}

void sub_2683B9E1C()
{
  v1 = [v0 contents];
  sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
  v2 = sub_2683CFCA8();

  v3 = sub_2683ABE58();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D616C90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = sub_2683BA16C(v9);
      if (!v11)
      {
        goto LABEL_15;
      }

      v12 = v10;
      v13 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4728(0, *(v5 + 16) + 1, 1, v5);
        v5 = v18;
      }

      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        sub_2682E4728(v14 > 1, v15 + 1, 1, v5);
        v16 = v15 + 1;
        v5 = v19;
      }

      *(v5 + 16) = v16;
      v17 = v5 + 16 * v15;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      v4 = v8;
    }

    else
    {

LABEL_15:
      ++v4;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_2683B9FCC()
{
  v1 = [v0 contents];
  sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
  v2 = sub_2683CFCA8();

  v9 = MEMORY[0x277D84F90];
  v3 = sub_2683ABE58();
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D616C90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 image];

      if (!v8)
      {
        goto LABEL_13;
      }

      MEMORY[0x26D616770]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
      ++v4;
    }

    else
    {

LABEL_13:
      ++v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_2683BA16C(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CFA78();

  return v3;
}

void INTask.asDynamicEntity.getter()
{
  v1 = v0;

  Entity<A>.init(_:)();
}

void INTaskList.asDynamicEntity.getter()
{
  v1 = v0;

  Entity<A>.init(_:)();
}

void INNote.asDynamicEntity.getter()
{
  v1 = v0;

  Entity<A>.init(_:)();
}

void INSpatialEventTrigger.asDynamicEntity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;

  Entity<A>.init(_:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void INTemporalEventTrigger.asDynamicEntity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;

  Entity<A>.init(_:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void INContactEventTrigger.asDynamicEntity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;

  Entity<A>.init(_:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void INDateComponentsRange.asDynamicEntity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = v20;

  Entity<A>.init(_:)(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2683BA500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2683BA558()
{
  OUTLINED_FUNCTION_14();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[25] = v4;
  OUTLINED_FUNCTION_23(v4);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = sub_2683CC9A8();
  v1[30] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[31] = v6;
  v1[32] = OUTLINED_FUNCTION_15_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v7);
  v1[33] = OUTLINED_FUNCTION_15_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v8);
  v1[34] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CC138();
  v1[35] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[36] = v10;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v11);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v12);
  v1[40] = v13;
  v1[41] = *(v14 + 64);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_2683BA7EC()
{
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v6 = type metadata accessor for DefaultUnsupportedIntentStrategy(0);
  v0[50] = *(v4 + *(v6 + 24));
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  static Snippet.appPunchout(to:siriLocale:)(v5, v4 + *(v6 + 20), v1);
  v7 = swift_task_alloc();
  v0[51] = v7;
  *v7 = v0;
  v7[1] = sub_2683BA8D8;

  return sub_2683BBC48();
}

uint64_t sub_2683BA8D8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  *v4 = *v1;
  v3[52] = v5;
  v3[53] = v0;

  if (v0)
  {
    v6 = v3[49];
    sub_2681433DC(v3[48], &qword_28024E770, &qword_2683D80D0);
    sub_2681433DC(v6, &qword_28024E770, &qword_2683D80D0);
    v7 = sub_2683BBAD8;
  }

  else
  {
    v7 = sub_2683BAA1C;
  }

  return MEMORY[0x2822009F8](v7);
}

void sub_2683BAA1C()
{
  v1 = v0[52];
  v2 = v0[39];
  v3 = v0[33];
  v4 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  sub_2683CC108();
  sub_2683CED08();
  v5 = OUTLINED_FUNCTION_33_1();
  __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  v8 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v9 = swift_allocObject();
  v0[54] = v9;
  *(v9 + 16) = xmmword_2683D2250;
  *(v9 + 32) = v1;
  v10 = v1;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26D616C90](0, v9);
    }

    else
    {
      v11 = *(v9 + 32);
    }

    v12 = v11;
    v13 = [v11 catId];

    v74 = sub_2683CFA78();
    v77 = v14;
  }

  else
  {
    v74 = 0;
    v77 = 0;
  }

  v15 = v0[49];
  v16 = v0[50];
  v17 = v0[47];
  v18 = v0[46];
  v20 = v0[40];
  v19 = v0[41];
  v69 = v0[38];
  v70 = v0[39];
  v21 = v0[36];
  v22 = v0[37];
  v23 = v0[35];
  v71 = v0[34];
  v72 = v0[33];
  v73 = v15;
  v75 = v0[25];
  v76 = v0[45];
  sub_2681BED1C(v0[48], v17);
  sub_2681BED1C(v15, v18);
  v24 = *(v20 + 80);
  v25 = (v24 + 24) & ~v24;
  v26 = (v19 + v24 + v25) & ~v24;
  v27 = swift_allocObject();
  v0[55] = v27;
  *(v27 + 16) = v16;
  sub_2681430AC(v17, v27 + v25);
  sub_2681430AC(v18, v27 + v26);
  (*(v21 + 16))(v22, v69, v23);
  v28 = swift_task_alloc();
  *(v28 + 16) = 1;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = v74;
  *(v28 + 48) = v77;
  *(v28 + 56) = v70;
  *(v28 + 64) = 258;
  *(v28 + 72) = sub_26814311C;
  *(v28 + 80) = v27;
  *(v28 + 88) = 0;
  *(v28 + 96) = v71;
  *(v28 + 104) = 2;
  *(v28 + 112) = v72;

  sub_2683CC8E8();

  sub_2681BED1C(v73, v76);
  if (__swift_getEnumTagSinglePayload(v76, 1, v75) == 1)
  {
    v29 = v0 + 45;
  }

  else
  {
    v30 = v0[48];
    v31 = v0[44];
    v32 = v0[25];
    sub_26814320C(v0[45], v0[29]);
    sub_2681BED1C(v30, v31);
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
    {
      v52 = v0[28];
      v53 = v0[29];
      v54 = v0[25];
      sub_26814320C(v0[44], v52);
      v0[15] = v54;
      v55 = sub_268143270();
      v0[16] = v55;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
      sub_2681432C8(v53, boxed_opaque_existential_0);
      v0[20] = v54;
      v0[21] = v55;
      v57 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v52, v57);
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_10_2();
      v0[56] = v58;
      *v58 = v59;
      OUTLINED_FUNCTION_28_25(v58);
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X5 }
    }

    v29 = v0 + 44;
    sub_26814332C(v0[29]);
  }

  v33 = *v29;
  v34 = v0[49];
  v35 = v0[43];
  v36 = v0[25];
  sub_2681433DC(v33, &qword_28024E770, &qword_2683D80D0);
  sub_2681BED1C(v34, v35);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v36);
  v38 = v0[43];
  v39 = v0[25];
  if (EnumTagSinglePayload == 1)
  {
    v40 = v0[48];
    v41 = v0[42];
    sub_2681433DC(v38, &qword_28024E770, &qword_2683D80D0);
    sub_2681BED1C(v40, v41);
    v42 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v42, v43, v39) == 1)
    {
      sub_2681433DC(v0[42], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_8_15();
      OUTLINED_FUNCTION_10_2();
      v0[59] = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_28_25(v44);
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X3 }
    }

    v62 = v0[25];
    v63 = v0[26];
    sub_26814320C(v0[42], v63);
    v0[5] = v62;
    v0[6] = sub_268143270();
    v64 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    sub_2681432C8(v63, v64);
    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_10_2();
    v0[58] = v65;
    *v65 = v66;
    OUTLINED_FUNCTION_28_25(v65);
  }

  else
  {
    v48 = v0[27];
    sub_26814320C(v38, v48);
    v0[10] = v39;
    v0[11] = sub_268143270();
    v49 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v48, v49);
    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_10_2();
    v0[57] = v50;
    *v50 = v51;
    OUTLINED_FUNCTION_28_25(v50);
  }

  OUTLINED_FUNCTION_48_3();

  __asm { BR              X4 }
}

uint64_t sub_2683BB044()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2683BB150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v21 = v20[52];
  v39 = v20[48];
  v40 = v20[49];
  v22 = v20[36];
  v24 = v20[29];
  v23 = v20[30];
  v25 = v20[28];

  sub_26814332C(v25);
  sub_26814332C(v24);
  v26 = OUTLINED_FUNCTION_32_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_74_0();
  v29(v28);
  OUTLINED_FUNCTION_33_6(v39);
  OUTLINED_FUNCTION_33_6(v40);
  OUTLINED_FUNCTION_1_70();
  sub_2681433DC(v23, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, v39, v40, a18, a19, a20);
}

uint64_t sub_2683BB308()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2683BB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_14_35();
  v25 = *(v22 + 216);

  sub_26814332C(v25);
  v26 = OUTLINED_FUNCTION_32_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_74_0();
  v29(v28);
  OUTLINED_FUNCTION_33_6(v20);
  OUTLINED_FUNCTION_33_6(a17);
  OUTLINED_FUNCTION_1_70();
  sub_2681433DC(v23, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v21 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2683BB5A0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2683BB6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  OUTLINED_FUNCTION_14_35();
  v25 = *(v22 + 208);

  sub_26814332C(v25);
  v26 = OUTLINED_FUNCTION_32_3();
  v27(v26);
  v28 = OUTLINED_FUNCTION_74_0();
  v29(v28);
  OUTLINED_FUNCTION_33_6(v20);
  OUTLINED_FUNCTION_33_6(a17);
  OUTLINED_FUNCTION_1_70();
  sub_2681433DC(v23, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v21 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2683BB838()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2683BB938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v21 = v20[52];
  v22 = v20[48];
  v23 = v20[49];
  v24 = v20[30];

  v25 = OUTLINED_FUNCTION_32_3();
  v26(v25);
  v27 = OUTLINED_FUNCTION_74_0();
  v28(v27);
  OUTLINED_FUNCTION_33_6(v22);
  OUTLINED_FUNCTION_33_6(v23);
  OUTLINED_FUNCTION_1_70();
  sub_2681433DC(v24, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v21, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v23, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_26_18();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2683BBAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_27_13();
  OUTLINED_FUNCTION_40_12();
  v30 = v20[37];
  v31 = v20[34];
  v32 = v20[33];
  v33 = v20[32];
  v34 = v20[29];
  v35 = v20[28];
  v36 = v20[27];
  v37 = v20[26];

  OUTLINED_FUNCTION_26_18();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, v36, v37, a18, a19, a20);
}

uint64_t type metadata accessor for DefaultUnsupportedIntentStrategy(uint64_t a1)
{
  result = qword_280254628;
  if (!qword_280254628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683BBC48()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2683BBC70()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[2];
  v2 = *(v1 + *(type metadata accessor for DefaultUnsupportedIntentStrategy(0) + 28));
  if (v2 == 23)
  {
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_26813C350;

    return sub_268367D74();
  }

  else if (v2 == 20)
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_268384D48;

    return sub_268367E18();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_268384E38;

    return sub_268367B88();
  }
}

uint64_t sub_2683BBE10(uint64_t a1)
{
  result = type metadata accessor for NotebookCommonCATsSimple(319);
  if (v2 <= 0x3F)
  {
    result = sub_2683CB668();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2683BBF2C()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  sub_2683CCB88();
  v5(v46, v4, 1);
  (*(v2 + 8))(v4, v1);
  sub_268167C34(v46, v45);
  if (v45[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v45, v41);
  if (v44 != 3)
  {
    if (v44 == 7)
    {
      v6 = vorrq_s8(v42, v43);
      if (!(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v41[2] | v41[1] | v41[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v34 = sub_2683CF7E8();
        __swift_project_value_buffer(v34, qword_28027C958);
        v35 = sub_2683CF7C8();
        v36 = sub_2683CFE98();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_2680EB000, v35, v36, "[SFNI.NeedsValueStrategy] Returning .cancel().", v37, 2u);
          OUTLINED_FUNCTION_38();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v41);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v7 = sub_2683CF7E8();
    __swift_project_value_buffer(v7, qword_28027C958);
    sub_268167C34(v46, v41);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_49();
      v11 = OUTLINED_FUNCTION_53();
      v38[0] = v11;
      *v10 = 136315138;
      sub_268167C34(v41, v40);
      v12 = OUTLINED_FUNCTION_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      v14 = sub_2683CFAD8();
      v16 = v15;
      sub_26812C310(v41, &qword_28024D460, &qword_2683D5050);
      v17 = sub_2681610A0(v14, v16, v38);

      *(v10 + 4) = v17;
      OUTLINED_FUNCTION_65(&dword_2680EB000, v18, v19, "[SFNI.NeedsValueStrategy] Returning .ignore() for task: %s.");
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26812C310(v41, &qword_28024D460, &qword_2683D5050);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_26812C310(v46, &qword_28024D460, &qword_2683D5050);
    return sub_26812C310(v45, &qword_28024D460, &qword_2683D5050);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v20 = sub_2683CF7E8();
  __swift_project_value_buffer(v20, qword_28027C958);
  sub_268167C34(v46, v40);
  v21 = sub_2683CF7C8();
  v22 = sub_2683CFE98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_49();
    v24 = OUTLINED_FUNCTION_53();
    v39 = v24;
    *v23 = 136315138;
    sub_268167C34(v40, v38);
    v25 = OUTLINED_FUNCTION_44();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    v27 = sub_2683CFAD8();
    v29 = v28;
    sub_26812C310(v40, &qword_28024D460, &qword_2683D5050);
    v30 = sub_2681610A0(v27, v29, &v39);

    *(v23 + 4) = v30;
    OUTLINED_FUNCTION_65(&dword_2680EB000, v31, v32, "[SFNI.NeedsValueStrategy] Returning .handle() for task: %s.");
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    sub_26812C310(v40, &qword_28024D460, &qword_2683D5050);
  }

  sub_2683CC2A8();
  sub_26812C310(v46, &qword_28024D460, &qword_2683D5050);
  sub_26813A1A0(v41);
  return sub_26812C310(v45, &qword_28024D460, &qword_2683D5050);
}

uint64_t sub_2683BC42C()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2683CCC18();
  v1[19] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_2683BC4DC);
}

uint64_t sub_2683BC4DC(uint64_t a1)
{
  v3 = *(v1 + 160);
  v2 = *(v1 + 168);
  v4 = *(v1 + 152);
  v5 = *(*(v1 + 144) + 48);
  sub_2683CCB88();
  v5(v2, 0);
  (*(v3 + 8))(v2, v4);
  v6 = *(v1 + 72);
  if (v6 == 3)
  {
    sub_268128148((v1 + 16), v1 + 80);
    v7 = *(v1 + 104);
    v8 = *(v1 + 112);
    __swift_project_boxed_opaque_existential_1((v1 + 80), v7);
    v14 = (*(v8 + 40) + **(v8 + 40));
    v9 = swift_task_alloc();
    *(v1 + 176) = v9;
    *v9 = v1;
    v9[1] = sub_2683BC700;

    return v14(1, v7, v8);
  }

  else
  {
    if (v6 == 255)
    {
      sub_26812C310(v1 + 16, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v1 + 16);
    }

    sub_26812C6B8();
    v11 = swift_allocError();
    OUTLINED_FUNCTION_29_9(v11, v12);

    OUTLINED_FUNCTION_40();

    return v13();
  }
}

uint64_t sub_2683BC700()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v2 + 184) = v1;
  *(v2 + 192) = v0;

  if (v0)
  {
    v3 = sub_2682E9600;
  }

  else
  {
    v3 = sub_2683BC80C;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2683BC80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_41();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v28 = sub_2683CC9C8();
  v29 = sub_268175B40(v27);

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v30 = sub_2683CF7E8();
  __swift_project_value_buffer(v30, qword_28027C958);
  v31 = v29;
  v32 = sub_2683CF7C8();
  v33 = sub_2683CFE98();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_49();
    a9 = OUTLINED_FUNCTION_53();
    a10 = a9;
    *v34 = 136315138;
    v35 = v31;
    v36 = [v35 description];
    v37 = sub_2683CFA78();
    v39 = v38;

    v40 = sub_2681610A0(v37, v39, &a10);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_2680EB000, v32, v33, "[SFNI.NeedsValueStrategy] Parsed response and updated intent: %s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a9);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v41 = v24[23];
  v42 = v24[15];
  v43 = sub_2683CC9D8();
  [v43 resolvedValue];

  sub_2683D0038();
  swift_unknownObjectRelease();
  sub_2683BDBE8();
  sub_2683CC618();

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254640, &unk_2683F9D80);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v44);
  __swift_destroy_boxed_opaque_existential_0(v24 + 10);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_64();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2683BCA78()
{
  OUTLINED_FUNCTION_14();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[15] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC598();
  v1[16] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[17] = v5;
  v1[18] = OUTLINED_FUNCTION_15_1();
  v6 = sub_2683CC748();
  v1[19] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[20] = v7;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v1[23] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[24] = v9;
  v1[25] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_2683BCC10);
}

uint64_t sub_2683BCC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_13_41();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v28 = *(v24 + 192);
  v27 = *(v24 + 200);
  v29 = *(v24 + 184);
  v30 = *(v24 + 104);
  v31 = sub_2683CF7E8();
  __swift_project_value_buffer(v31, qword_28027C958);
  (*(v28 + 16))(v27, v30, v29);
  v32 = sub_2683CF7C8();
  v33 = sub_2683CFE98();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v24 + 176);
    v35 = *(v24 + 160);
    a9 = *(v24 + 152);
    v36 = OUTLINED_FUNCTION_49();
    a11 = OUTLINED_FUNCTION_53();
    a12 = a11;
    *v36 = 136315138;
    HIDWORD(a10) = v33;
    sub_2683CC9E8();
    v37 = sub_2683CC738();
    v39 = v38;
    (*(v35 + 8))(v34, a9);
    v40 = OUTLINED_FUNCTION_44();
    v41(v40);
    v42 = sub_2681610A0(v37, v39, &a12);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2680EB000, v32, BYTE4(a10), "[SFNI.NeedsValueStrategy] Making prompt for %s.", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v43 = OUTLINED_FUNCTION_44();
    v44(v43);
  }

  v46 = *(v24 + 160);
  v45 = *(v24 + 168);
  v47 = *(v24 + 152);
  sub_2683CC9E8();
  v48 = sub_2683CC738();
  v50 = v49;
  (*(v46 + 8))(v45, v47);

  v51 = sub_26818CD7C(v48, v50);
  *(v24 + 224) = v51;
  if (v51 == 10)
  {
    sub_26812C6B8();
    swift_allocError();
    *v52 = v48;
    *(v52 + 8) = v50;
    *(v52 + 16) = 0;
    *(v52 + 24) = 0;
    *(v52 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_64();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    *(v24 + 208) = v62;
    *v62 = v63;
    v62[1] = sub_2683BCF48;
    OUTLINED_FUNCTION_64();

    return sub_2683BD2B0(v64, v65);
  }
}

uint64_t sub_2683BCF48()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 216) = v0;

  if (v0)
  {
    v5 = sub_2683BD214;
  }

  else
  {
    v5 = sub_2683BD04C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2683BD04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_13_41();
  v17 = *(v16 + 224);
  v35 = *(v16 + 200);
  v36 = *(v16 + 176);
  v37 = *(v16 + 168);
  v19 = *(v16 + 136);
  v18 = *(v16 + 144);
  v20 = *(v16 + 120);
  v34 = *(v16 + 128);
  v21 = *(v16 + 96);
  __swift_project_boxed_opaque_existential_1((*(v16 + 112) + 8), *(*(v16 + 112) + 32));
  sub_2683CC0A8();
  *(v16 + 40) = &type metadata for SearchForNotebookItems.Parameter;
  *(v16 + 48) = &off_287900F98;
  *(v16 + 16) = v17;
  sub_2681687C8();
  __swift_destroy_boxed_opaque_existential_0((v16 + 16));
  v22 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
  v23 = sub_2683CCC98();
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0;
  *(v16 + 56) = 0u;
  v24 = MEMORY[0x277D5C1D8];
  v21[3] = v23;
  v21[4] = v24;
  __swift_allocate_boxed_opaque_existential_0(v21);
  sub_2683CC348();
  sub_26812C310(v16 + 56, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v20, &qword_28024D400, &qword_2683D2460);
  (*(v19 + 8))(v18, v34);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_64();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v16 + 56, v34, v35, v36, v37, a14, a15, a16);
}

uint64_t sub_2683BD214()
{

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2683BD2B0(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2683BD2D4);
}

uint64_t sub_2683BD2D4()
{
  switch(*(v0 + 96))
  {
    case 1:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 40) = v14;
      *v14 = v15;
      OUTLINED_FUNCTION_2_67(v14);

      result = sub_26819F62C();
      break;
    case 2:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 48) = v6;
      *v6 = v7;
      OUTLINED_FUNCTION_2_67(v6);

      result = sub_26819F178();
      break;
    case 3:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 56) = v10;
      *v10 = v11;
      OUTLINED_FUNCTION_2_67(v10);

      result = sub_26819F4D4();
      break;
    case 4:
    case 5:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 64) = v1;
      *v1 = v2;
      OUTLINED_FUNCTION_2_67(v1);

      result = sub_26819F428();
      break;
    case 6:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 72) = v16;
      *v16 = v17;
      OUTLINED_FUNCTION_2_67(v16);

      result = sub_26819F2D0();
      break;
    case 7:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 80) = v8;
      *v8 = v9;
      OUTLINED_FUNCTION_2_67(v8);

      result = sub_26819F224();
      break;
    case 8:
      sub_26812C6B8();
      v18 = swift_allocError();
      OUTLINED_FUNCTION_29_9(v18, v19);
      OUTLINED_FUNCTION_40();

      result = v20();
      break;
    case 9:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 88) = v4;
      *v4 = v5;
      OUTLINED_FUNCTION_2_67(v4);

      result = sub_26819F580();
      break;
    default:
      OUTLINED_FUNCTION_8_46();
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      *(v0 + 32) = v12;
      *v12 = v13;
      OUTLINED_FUNCTION_2_67(v12);

      result = sub_26819F37C();
      break;
  }

  return result;
}

uint64_t sub_2683BD6B4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2683BD794()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2683BD874()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2683BD954()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2683BDA38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2683BC42C();
}

uint64_t sub_2683BDAE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2683BCA78();
}

unint64_t sub_2683BDB94()
{
  result = qword_280254638;
  if (!qword_280254638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254638);
  }

  return result;
}

unint64_t sub_2683BDBE8()
{
  result = qword_28024D340;
  if (!qword_28024D340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024D340);
  }

  return result;
}

uint64_t sub_2683BDC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2683BDC8C);
}

uint64_t sub_2683BDC8C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = [objc_allocWithZone(MEMORY[0x277D47618]) init];
  v0[8] = v6;
  sub_2683BE394(v5, v4, v6);
  sub_2683BE3EC(v3, v1, v6);
  sub_268129504(0, &qword_28024F970, 0x277CCABB0);
  v7 = sub_2683CFF48();
  [v6 setSupportsSpokenNotifications_];

  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  v10 = swift_task_alloc();
  v0[9] = v10;
  v11 = sub_268129504(0, &qword_280254648, 0x277D47620);
  *v10 = v0;
  v10[1] = sub_2683BDDFC;

  return MEMORY[0x2821BB670](v6, 1, v11, v8, v9);
}

uint64_t sub_2683BDDFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_2683BE1E0;
  }

  else
  {
    v4 = sub_2683BDF10;
  }

  return MEMORY[0x2822009F8](v4);
}

char *sub_2683BDF10()
{
  if (qword_28024C8E0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v1 = v0[10];
    v2 = sub_2683CF7E8();
    __swift_project_value_buffer(v2, qword_28027C958);
    v3 = v1;
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[10];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = [v6 dictionary];
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&dword_2680EB000, v4, v5, "[NotificationProvider] Notification search completed: %@", v7, 0xCu);
      sub_2683BE4B4(v8);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v10 = v0[10];

    v11 = sub_2683BE444(v10);
    v12 = MEMORY[0x277D84F90];
    v13 = v11 ? v11 : MEMORY[0x277D84F90];
    v14 = sub_268229348();
    if (!v14)
    {
      break;
    }

    v15 = v14;
    result = sub_268390600(0, v14 & ~(v14 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    v33 = v0;
    v17 = 0;
    v0 = &selRef_setIntentResponse_;
    while (1)
    {
      v18 = (v13 & 0xC000000000000001) != 0 ? MEMORY[0x26D616C90](v17, v13) : *(v13 + 8 * v17 + 32);
      v19 = v18;
      v20 = [v19 notificationId];
      if (v20)
      {
        v21 = v20;
        v22 = sub_2683CFA78();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      if (!v24)
      {
        break;
      }

      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_268390600((v25 > 1), v26 + 1, 1);
      }

      ++v17;
      *(v12 + 16) = v26 + 1;
      v27 = v12 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      if (v15 == v17)
      {
        v0 = v33;
        v28 = v33[10];
        v29 = v33[8];

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v30 = v0[10];
  v31 = v0[8];

  v12 = MEMORY[0x277D84F90];
LABEL_22:
  v32 = v0[1];

  return (v32)(v12);
}

uint64_t sub_2683BE1E0()
{
  v18 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = *(v0 + 88);
  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v0 + 16) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v10 = sub_2683CFAD8();
    v12 = sub_2681610A0(v10, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2680EB000, v4, v5, "[NotificationProvider] Got error when searching notifications: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 8);
  v15 = MEMORY[0x277D84F90];

  return v14(v15);
}

void sub_2683BE394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();
  [a3 setSourceAppId_];
}

void sub_2683BE3EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();
  [a3 setAfterNotificationId_];
}

uint64_t sub_2683BE444(void *a1)
{
  v1 = [a1 notifications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268129504(0, &qword_280254650, 0x277D47608);
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t sub_2683BE4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCD8, &qword_2683D5060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2683BE52C()
{
  OUTLINED_FUNCTION_47_0();
  v1 = sub_2683CF688();
  OUTLINED_FUNCTION_0_3();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  v7 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v3 + 16);
  v9 = *(v3 + 16);
  v9(v7, v0, v1);
  (*(v3 + 88))(v7, v1);
  if (MEMORY[0x277D45C08])
  {
    OUTLINED_FUNCTION_3_59();
    if (v10)
    {
      v11 = OUTLINED_FUNCTION_2_68();
      v12(v11);
      v13 = *v7;
      v14 = *(v7 + 1);
      v16 = *(v7 + 2);
      v15 = *(v7 + 3);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
      v17 = OUTLINED_FUNCTION_47_0();
      _s14descr2878F8F29V11ListContentOMa(v17);
      OUTLINED_FUNCTION_0_77();
      OUTLINED_FUNCTION_9_43();
      v20 = v19 & ~v18;
      v23 = OUTLINED_FUNCTION_14_36(v22, v20 + v21);
      *(v23 + 16) = xmmword_2683D1EC0;
      v24 = (v23 + v20);
      v25 = sub_2683BF58C(v15);

      *v24 = v14;
      v24[1] = v16;
      v24[2] = v25;
      OUTLINED_FUNCTION_69();
      goto LABEL_5;
    }
  }

  if (MEMORY[0x277D45BD0])
  {
    OUTLINED_FUNCTION_3_59();
    if (v10)
    {
      v26 = OUTLINED_FUNCTION_2_68();
      v27(v26);
      v28 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254670, &qword_2683F9E48) + 48)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
      v29 = OUTLINED_FUNCTION_47_0();
      _s14descr2878F8F29V11ListContentOMa(v29);
      OUTLINED_FUNCTION_0_77();
      OUTLINED_FUNCTION_9_43();
      v32 = v31 & ~v30;
      v23 = OUTLINED_FUNCTION_14_36(v34, v32 + v33);
      *(v23 + 16) = xmmword_2683D1EC0;
      v35 = sub_2683BF58C(v28);

      *(v23 + v32) = v35;
      swift_storeEnumTagMultiPayload();
      v36 = sub_2683CB398();
      (*(*(v36 - 8) + 8))(v7, v36);
      return v23;
    }
  }

  if (MEMORY[0x277D45BE8])
  {
    OUTLINED_FUNCTION_3_59();
    if (v10)
    {
      v37 = OUTLINED_FUNCTION_2_68();
      v38(v37);
      v39 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254668, &qword_2683F9E40) + 48)];
      v40 = sub_2683CF628();
      v41 = *(v40 - 8);
      (*(v41 + 88))(v7, v40);
      if (!MEMORY[0x277D45BB0] || (OUTLINED_FUNCTION_3_59(), !v10))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
        v111 = OUTLINED_FUNCTION_47_0();
        _s14descr2878F8F29V11ListContentOMa(v111);
        OUTLINED_FUNCTION_0_77();
        OUTLINED_FUNCTION_9_43();
        v114 = v113 & ~v112;
        v23 = OUTLINED_FUNCTION_14_36(v116, v114 + v115);
        *(v23 + 16) = xmmword_2683D1EC0;
        v117 = sub_2683BF58C(v39);

        *(v23 + v114) = v117;
        swift_storeEnumTagMultiPayload();
        (*(v41 + 8))(v7, v40);
        return v23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
      _s14descr2878F8F29V11ListContentOMa(0);
      OUTLINED_FUNCTION_0_77();
      OUTLINED_FUNCTION_9_43();
      v23 = OUTLINED_FUNCTION_12_37();
      *(v23 + 16) = xmmword_2683D1EC0;
      v42 = sub_2683BF58C(v39);

      *(v23 + v0) = v42;
      goto LABEL_5;
    }
  }

  if (MEMORY[0x277D45C00])
  {
    OUTLINED_FUNCTION_3_59();
    if (v10)
    {
      v43 = OUTLINED_FUNCTION_2_68();
      v44(v43);
      sub_2683CF618();
      OUTLINED_FUNCTION_0_3();
      MEMORY[0x28223BE20](v45);
      OUTLINED_FUNCTION_14_3();
      v48 = v47 - v46;
      v49 = OUTLINED_FUNCTION_93_2();
      v50(v49);
      v23 = sub_2683BFA18(v48);
      v51 = OUTLINED_FUNCTION_69();
      v52(v51);
      return v23;
    }
  }

  if (MEMORY[0x277D45BF8])
  {
    OUTLINED_FUNCTION_3_59();
    if (v10)
    {
      v53 = OUTLINED_FUNCTION_2_68();
      v54(v53);
      sub_2683CF608();
      OUTLINED_FUNCTION_0_3();
      MEMORY[0x28223BE20](v55);
      OUTLINED_FUNCTION_14_3();
      v58 = (v57 - v56);
      v59 = OUTLINED_FUNCTION_93_2();
      v60(v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
      _s14descr2878F8F29V11ListContentOMa(0);
      OUTLINED_FUNCTION_0_77();
      OUTLINED_FUNCTION_9_43();
      v23 = OUTLINED_FUNCTION_12_37();
      *(v23 + 16) = xmmword_2683D1EC0;
      v61 = sub_2683C07D4(v58);
      v62 = sub_2683BF58C(v61);

      *(v23 + v0) = v62;
      swift_storeEnumTagMultiPayload();
      v63 = OUTLINED_FUNCTION_69();
      v64(v63);
      return v23;
    }
  }

  if (!MEMORY[0x277D45BF0] || (OUTLINED_FUNCTION_3_59(), !v10))
  {
    if (MEMORY[0x277D45BD8])
    {
      OUTLINED_FUNCTION_3_59();
      if (v10)
      {
        v91 = OUTLINED_FUNCTION_2_68();
        v92(v91);
        v158 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254658, &qword_2683F9E30) + 48)];
        v93 = sub_2683CF678();
        v159 = &v144;
        v94 = *(v93 - 8);
        v95 = *(v94 + 64);
        MEMORY[0x28223BE20](v93);
        v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
        v156 = &v144 - v96;
        v98 = v97;
        (*(v94 + 32))();
        v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
        v157 = _s14descr2878F8F29V11ListContentOMa(0);
        OUTLINED_FUNCTION_0_77();
        v100 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v23 = swift_allocObject();
        v154 = xmmword_2683D1EC0;
        *(v23 + 16) = xmmword_2683D1EC0;
        v101 = v23 + v100;
        MEMORY[0x28223BE20](v23);
        v102 = &v144 - v96;
        v103 = &v144 - v96;
        v104 = v156;
        (*(v94 + 16))(v103, v156, v98);
        v105 = sub_2683C01E0(v102);
        v153 = v106;
        LODWORD(v152) = v107;
        v108 = swift_allocObject();
        *(v108 + 16) = v154;
        v109 = sub_2683BF58C(v158);

        *(v108 + v100) = v109;
        swift_storeEnumTagMultiPayload();
        v110 = v153;
        *v101 = v105;
        *(v101 + 8) = v110;
        *(v101 + 16) = v152;
        *(v101 + 24) = v108;
        swift_storeEnumTagMultiPayload();
        (*(v94 + 8))(v104, v98);
        return v23;
      }
    }

    if (!MEMORY[0x277D45BE0] || (OUTLINED_FUNCTION_3_59(), !v10))
    {
      if (qword_28024C8F0 == -1)
      {
LABEL_52:
        v128 = sub_2683CF7E8();
        v129 = __swift_project_value_buffer(v128, qword_28027C988);
        v159 = &v144;
        MEMORY[0x28223BE20](v129);
        v130 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
        v9(&v144 - v130, v0, v1);
        v131 = sub_2683CF7C8();
        v132 = sub_2683CFE88();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          LODWORD(v157) = v132;
          v134 = v133;
          v135 = swift_slowAlloc();
          v158 = v135;
          v156 = &v144;
          v160 = v135;
          *v134 = 136315138;
          MEMORY[0x28223BE20](v135);
          v9(&v144 - v130, &v144 - v130, v1);
          OUTLINED_FUNCTION_69();
          v136 = sub_2683CFAD8();
          v138 = v137;
          v139 = OUTLINED_FUNCTION_11_48();
          v8(v139);
          v140 = sub_2681610A0(v136, v138, &v160);

          *(v134 + 4) = v140;
          _os_log_impl(&dword_2680EB000, v131, v157, "Unknown ListGrouping type: %s", v134, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v158);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();
        }

        else
        {

          v141 = OUTLINED_FUNCTION_11_48();
          v8(v141);
        }

        (v8)(v7, v1);
        return MEMORY[0x277D84F90];
      }

LABEL_63:
      OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
      goto LABEL_52;
    }

    v118 = OUTLINED_FUNCTION_2_68();
    v119(v118);
    v120 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
    v121 = OUTLINED_FUNCTION_47_0();
    _s14descr2878F8F29V11ListContentOMa(v121);
    OUTLINED_FUNCTION_0_77();
    OUTLINED_FUNCTION_9_43();
    v124 = v123 & ~v122;
    v23 = OUTLINED_FUNCTION_14_36(v126, v124 + v125);
    *(v23 + 16) = xmmword_2683D1EC0;
    v127 = sub_2683BF58C(v120);

    *(v23 + v124) = v127;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return v23;
  }

  v158 = v9;
  v159 = (v3 + 16);
  (*(v3 + 96))(&v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v153 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254660, &qword_2683F9E38) + 48)];
  v65 = sub_2683CF678();
  v152 = &v144;
  OUTLINED_FUNCTION_0_3();
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v157 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = &v144 - v157;
  (*(v67 + 32))(&v144 - v157, &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
  v72 = OUTLINED_FUNCTION_47_0();
  v156 = _s14descr2878F8F29V11ListContentOMa(v72);
  OUTLINED_FUNCTION_0_77();
  v74 = *(v73 + 72);
  v155 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  *&v154 = v74;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2683D1EC0;
  MEMORY[0x28223BE20](v23);
  v76 = &v144 - v157;
  v149 = v71;
  v150 = v67;
  v77 = *(v67 + 16);
  v151 = v65;
  v77(&v144 - v157, v71, v65);
  v78 = sub_2683C01E0(v76);
  v80 = v79;
  v82 = v81;
  MEMORY[0x28223BE20](v78);
  v83 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v153 + 16);
  if (v7)
  {
    v144 = &v144;
    v145 = v82;
    v146 = v80;
    v147 = v78;
    v148 = v23;
    v9 = (v153 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
    v157 = *(v3 + 72);
    v84 = (v3 + 8);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v158(v83, v9, v1);
      v85 = sub_2683BE52C();
      (*v84)(v83, v1);
      v86 = *(v85 + 16);
      v0 = *(v5 + 16);
      v8 = (v0 + v86);
      if (__OFADD__(v0, v86))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v8 > *(v5 + 24) >> 1)
      {
        sub_2682E4C00();
        v5 = v87;
      }

      if (*(v85 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v86)
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        if (v86)
        {
          v88 = *(v5 + 16);
          v89 = __OFADD__(v88, v86);
          v90 = v88 + v86;
          if (v89)
          {
            goto LABEL_62;
          }

          *(v5 + 16) = v90;
        }
      }

      else
      {

        if (v86)
        {
          goto LABEL_60;
        }
      }

      v9 = (v9 + v157);
      if (!--v7)
      {

        v78 = v147;
        v23 = v148;
        v80 = v146;
        LOBYTE(v82) = v145;
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_57:
  v142 = v23 + v155;
  *v142 = v78;
  *(v142 + 8) = v80;
  *(v142 + 16) = v82;
  *(v142 + 24) = v5;
  swift_storeEnumTagMultiPayload();
  (*(v150 + 8))(v149, v151);
  return v23;
}

uint64_t sub_2683BF510@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2683CF5F8();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279C3A548 + a1);

  return v5(a2, v6, v4);
}

uint64_t sub_2683BF58C(uint64_t a1)
{
  v57 = sub_2683CB598();
  v2 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
  v5 = sub_2683CF5E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = v7;
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v55 = v12;
    v41 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v46 = a1 + v41;
    v13 = *(v11 + 56);
    v53 = (v2 + 8);
    v54 = v13;
    v52 = (v11 - 8);
    v45 = xmmword_2683D1EC0;
    v49 = v11;
    v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v9;
    do
    {
      v55(v8, v46 + v54 * v10, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E20, &qword_2683E6580);
      inited = swift_initStackObject();
      *(inited + 16) = v45;
      v15 = sub_2683CF5C8();
      v16 = [v15 uuid];
      v17 = v56;
      sub_2683CB578();

      v18 = sub_2683CB548();
      v20 = v19;

      v51 = *v53;
      v51(v17, v57);
      *(inited + 32) = v18;
      *(inited + 40) = v20;
      v21 = sub_2683CF5D8();
      if (v21)
      {
        v47 = v10;
        v22 = *(v21 + 16);
        v23 = v48;
        if (v22)
        {
          v44 = inited;
          v59 = v4;
          v24 = v21;
          v25 = sub_268390888(0, v22, 0);
          v26 = v59;
          v43 = v24;
          v27 = v24 + v41;
          do
          {
            v58 = &v41;
            MEMORY[0x28223BE20](v25);
            v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
            v55(v29, v27, v5);
            v30 = v5;
            v31 = sub_2683CF5C8();
            v32 = [v31 uuid];
            v33 = v56;
            sub_2683CB578();

            v34 = sub_2683CB548();
            v36 = v35;

            v5 = v30;
            v51(v33, v57);
            v25 = (*v52)(v29, v30);
            v59 = v26;
            v38 = *(v26 + 16);
            v37 = *(v26 + 24);
            if (v38 >= v37 >> 1)
            {
              v25 = sub_268390888((v37 > 1), v38 + 1, 1);
              v26 = v59;
            }

            *(v26 + 16) = v38 + 1;
            v39 = v26 + 16 * v38;
            *(v39 + 32) = v34;
            *(v39 + 40) = v36;
            v27 += v54;
            --v22;
          }

          while (v22);

          v4 = MEMORY[0x277D84F90];
          v8 = v42;
          v10 = v47;
          v23 = v48;
          inited = v44;
        }

        else
        {

          v26 = v4;
          v10 = v47;
        }
      }

      else
      {
        v26 = v4;
        v23 = v48;
      }

      ++v10;
      v59 = inited;
      sub_2682C0138(v26);
      (*v52)(v8, v5);
      sub_2682C0138(v59);
    }

    while (v10 != v23);
    return v60;
  }

  return v4;
}

uint64_t sub_2683BFA18(uint64_t a1)
{
  v2 = _s14descr2878F8F29V11ListContentOMa(0);
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF618();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v6 + 16);
  v9(v8, a1, v5);
  v10 = (*(v6 + 88))(v8, v5);
  if (MEMORY[0x277D45BA8] && v10 == *MEMORY[0x277D45BA8])
  {
    (*(v6 + 96))(&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v11 = *v8;
  }

  else
  {
    if (!MEMORY[0x277D45B88] || v10 != *MEMORY[0x277D45B88])
    {
      if (MEMORY[0x277D45B90] && v10 == *MEMORY[0x277D45B90])
      {
        (*(v6 + 96))(&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
        v12 = sub_2683CF668();
        v13 = *(v12 - 8);
        MEMORY[0x28223BE20](v12);
        v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 32))(v15, v8, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E10, &qword_2683E6570);
        v16 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_2683D1EC0;
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515F8, &qword_2683F9E50) + 48);
        sub_2683CF648();
        v19 = sub_2683CF658();
        v20 = sub_2683BF58C(v19);

        *(v17 + v16 + v18) = v20;
        swift_storeEnumTagMultiPayload();
        (*(v13 + 8))(v15, v12);
        return v17;
      }

      if ((!MEMORY[0x277D45BA0] || v10 != *MEMORY[0x277D45BA0]) && (!MEMORY[0x277D45B98] || v10 != *MEMORY[0x277D45B98]))
      {
        if (qword_28024C8F0 != -1)
        {
          swift_once();
        }

        v37 = sub_2683CF7E8();
        v38 = __swift_project_value_buffer(v37, qword_28027C988);
        v63 = &v55;
        MEMORY[0x28223BE20](v38);
        v39 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
        v9((&v55 - v39), a1, v5);
        v40 = sub_2683CF7C8();
        v41 = sub_2683CFE78();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v61 = v40;
          v43 = v42;
          v44 = swift_slowAlloc();
          v62 = v44;
          v60 = &v55;
          v64 = v44;
          *v43 = 136315138;
          MEMORY[0x28223BE20](v44);
          v9((&v55 - v39), &v55 - v39, v5);
          v45 = sub_2683CFAD8();
          v47 = v46;
          v48 = *(v6 + 8);
          v48(&v55 - v39, v5);
          v49 = sub_2681610A0(v45, v47, &v64);

          v50 = v43;
          *(v43 + 4) = v49;
          v51 = v61;
          v52 = v50;
          _os_log_impl(&dword_2680EB000, v61, v41, "Unknown ScheduledGroup type: %s", v50, 0xCu);
          v53 = v62;
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x26D617A40](v53, -1, -1);
          MEMORY[0x26D617A40](v52, -1, -1);
        }

        else
        {

          v48 = *(v6 + 8);
          v48(&v55 - v39, v5);
        }

        v48(v8, v5);
        return MEMORY[0x277D84F90];
      }
    }

    (*(v6 + 96))(&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254678, &unk_2683F9E58) + 48));
    v21 = sub_2683CB528();
    (*(*(v21 - 8) + 8))(&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  }

  v22 = *(v11 + 16);
  if (!v22)
  {

    return MEMORY[0x277D84F90];
  }

  v64 = MEMORY[0x277D84F90];
  sub_2683908A8(0, v22, 0);
  v17 = v64;
  v23 = sub_2683CF668();
  v61 = v23;
  isa = v23[-1].isa;
  v25 = *(isa + 2);
  v59 = isa + 16;
  v60 = v25;
  v26 = v11 + ((*(isa + 80) + 32) & ~*(isa + 80));
  v27 = *(isa + 8);
  v57 = *(isa + 9);
  v58 = v27;
  v55 = v11;
  v56 = (isa + 8);
  do
  {
    MEMORY[0x28223BE20](v23);
    v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30 = v61;
    v60(v29, v26, v61);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515F8, &qword_2683F9E50) + 48);
    sub_2683CF648();
    v32 = sub_2683CF658();
    v33 = v4;
    v34 = sub_2683BF58C(v32);

    (*v56)(v29, v30);
    *(v33 + v31) = v34;
    swift_storeEnumTagMultiPayload();
    v64 = v17;
    v36 = *(v17 + 16);
    v35 = *(v17 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_2683908A8(v35 > 1, v36 + 1, 1);
      v17 = v64;
    }

    *(v17 + 16) = v36 + 1;
    v23 = sub_2683C0F1C(v33, v17 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + v62[9] * v36);
    v26 += v57;
    --v22;
    v4 = v33;
  }

  while (v22);

  return v17;
}

uint64_t sub_2683C01E0(char *a1)
{
  v2 = sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v9 = sub_2683CF678();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v11 + 16);
  v17 = OUTLINED_FUNCTION_69();
  v16(v17);
  v18 = OUTLINED_FUNCTION_93_2();
  v19(v18);
  if (MEMORY[0x277D45BC8] && (OUTLINED_FUNCTION_3_59(), v20) || MEMORY[0x277D45BB8] && (OUTLINED_FUNCTION_3_59(), v20))
  {
    v21 = OUTLINED_FUNCTION_93_2();
    v22(v21);
    v23 = *v15;
    v24 = [v23 uuid];

    sub_2683CB578();
    v25 = sub_2683CB548();
    (*(v11 + 8))(a1, v9);
    (*(v4 + 8))(v8, v2);
  }

  else if (MEMORY[0x277D45BC0] && (OUTLINED_FUNCTION_3_59(), v20))
  {
    (*(v11 + 8))(a1, v9);
    v26 = OUTLINED_FUNCTION_93_2();
    v27(v26);
    v28 = sub_2683CF5F8();
    OUTLINED_FUNCTION_0_3();
    v30 = v29;
    MEMORY[0x28223BE20](v31);
    OUTLINED_FUNCTION_14_3();
    v34 = v33 - v32;
    (*(v30 + 32))(v33 - v32, v15, v28);
    (*(v30 + 88))(v34, v28);
    if (MEMORY[0x277D45B38] && (OUTLINED_FUNCTION_3_59(), v20))
    {
      OUTLINED_FUNCTION_6_43();
      return 4;
    }

    else
    {
      if (!MEMORY[0x277D45B58] || (OUTLINED_FUNCTION_3_59(), !v20))
      {
        if (!MEMORY[0x277D45B30] || (OUTLINED_FUNCTION_3_59(), !v20))
        {
          if (MEMORY[0x277D45B40])
          {
            OUTLINED_FUNCTION_3_59();
            if (v20)
            {
              OUTLINED_FUNCTION_6_43();
              return 2;
            }
          }

          if (MEMORY[0x277D45B48])
          {
            OUTLINED_FUNCTION_3_59();
            if (v20)
            {
              OUTLINED_FUNCTION_6_43();
              return 5;
            }
          }

          if (MEMORY[0x277D45B50])
          {
            OUTLINED_FUNCTION_3_59();
            if (v20)
            {
              return 1;
            }
          }

          (*(v30 + 8))(v34, v28);
        }

        return 0;
      }

      OUTLINED_FUNCTION_6_43();
      return 3;
    }
  }

  else
  {
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
    }

    v35 = sub_2683CF7E8();
    v36 = __swift_project_value_buffer(v35, qword_28027C988);
    v55 = &v51;
    MEMORY[0x28223BE20](v36);
    v37 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    (v16)(&v51 - v37, a1, v9);
    v38 = sub_2683CF7C8();
    v53 = sub_2683CFE78();
    v54 = v38;
    if (os_log_type_enabled(v38, v53))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51 = &v51;
      v52 = v40;
      v56 = v40;
      *v39 = 136315138;
      MEMORY[0x28223BE20](v40);
      (v16)(&v51 - v37, &v51 - v37, v9);
      v41 = sub_2683CFAD8();
      v43 = v42;
      v44 = *(v11 + 8);
      v44(&v51 - v37, v9);
      v45 = sub_2681610A0(v41, v43, &v56);

      v46 = v39;
      *(v39 + 4) = v45;
      v47 = v54;
      _os_log_impl(&dword_2680EB000, v54, v53, "Unsupported RemSiriUtils.ListID: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v48 = a1;
    }

    else
    {

      v44 = *(v11 + 8);
      v44(a1, v9);
      v48 = &v51 - v37;
    }

    v44(v48, v9);
    v49 = OUTLINED_FUNCTION_93_2();
    (v44)(v49);
    return 0;
  }

  return v25;
}

uint64_t sub_2683C07D4(char *a1)
{
  v2 = sub_2683CF608();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  (v6)(v5, a1, v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (MEMORY[0x277D45B70] && v7 == *MEMORY[0x277D45B70])
  {
    (*(v3 + 96))(&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v8 = sub_2683CF668();
    v9 = *(v8 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 32))(v11, &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v4 = sub_2683CF658();
    (*(v9 + 8))(v11, v8);
    return v4;
  }

  if (MEMORY[0x277D45B60] && v7 == *MEMORY[0x277D45B60] || MEMORY[0x277D45B68] && v7 == *MEMORY[0x277D45B68] || MEMORY[0x277D45B80] && v7 == *MEMORY[0x277D45B80] || MEMORY[0x277D45B78] && v7 == *MEMORY[0x277D45B78])
  {
    (*(v3 + 96))(&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v12 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254678, &unk_2683F9E58) + 48)];
    v13 = sub_2683CB528();
    (*(*(v13 - 8) + 8))(&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    v49 = sub_2683CF668();
    MEMORY[0x28223BE20](v49);
    a1 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v3 = v12[2];
    if (!v3)
    {

      return MEMORY[0x277D84F90];
    }

    v45 = &v45;
    v46 = v12;
    v17 = *(v14 + 16);
    v16 = (v14 + 16);
    v18 = v12 + ((v16[64] + 32) & ~v16[64]);
    v47 = *(v16 + 7);
    v48 = v17;
    v6 = v16 - 8;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v19 = v49;
      v5 = v16;
      v48(a1, v18, v49);
      v20 = sub_2683CF658();
      (*v6)(a1, v19);
      v21 = *(v20 + 16);
      v22 = *(v4 + 16);
      v2 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v2 > *(v4 + 24) >> 1)
      {
        sub_2682E4CF8();
        v4 = v23;
      }

      if (*(v20 + 16))
      {
        v2 = (*(v4 + 24) >> 1) - *(v4 + 16);
        sub_2683CF5E8();
        if (v2 < v21)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v21)
        {
          v24 = *(v4 + 16);
          v25 = __OFADD__(v24, v21);
          v26 = v24 + v21;
          if (v25)
          {
            goto LABEL_36;
          }

          *(v4 + 16) = v26;
        }
      }

      else
      {

        if (v21)
        {
          goto LABEL_34;
        }
      }

      v18 = v47 + v18;
      --v3;
      v16 = v5;
      if (!v3)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (qword_28024C8F0 != -1)
  {
LABEL_37:
    swift_once();
  }

  v28 = sub_2683CF7E8();
  v29 = __swift_project_value_buffer(v28, qword_28027C988);
  v49 = &v45;
  MEMORY[0x28223BE20](v29);
  v30 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  (v6)(&v45 - v30, a1, v2);
  v31 = sub_2683CF7C8();
  v32 = sub_2683CFE78();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v47 = v31;
    v34 = v33;
    v35 = swift_slowAlloc();
    v48 = v35;
    v46 = &v45;
    v50 = v35;
    *v34 = 136315138;
    MEMORY[0x28223BE20](v35);
    (v6)(&v45 - v30, &v45 - v30, v2);
    v36 = sub_2683CFAD8();
    v38 = v37;
    v39 = *(v3 + 8);
    v39(&v45 - v30, v2);
    v40 = sub_2681610A0(v36, v38, &v50);

    v41 = v34;
    *(v34 + 4) = v40;
    v42 = v47;
    v43 = v41;
    _os_log_impl(&dword_2680EB000, v47, v32, "Unknown CompletedGroup type: %s", v41, 0xCu);
    v44 = v48;
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x26D617A40](v44, -1, -1);
    MEMORY[0x26D617A40](v43, -1, -1);
  }

  else
  {

    v39 = *(v3 + 8);
    v39(&v45 - v30, v2);
  }

  v39(v5, v2);
  return MEMORY[0x277D84F90];
}

uint64_t _s14descr2878F8F29V11ListContentOMa(uint64_t a1)
{
  result = qword_280254680;
  if (!qword_280254680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683C0F1C(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2878F8F29V11ListContentOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2683C0F90(uint64_t a1)
{
  sub_2683C1044();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2683C1094(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2683C110C(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2683C1198(319);
      v2 = v7;
      if (v8 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_2683C1044()
{
  if (!qword_280254690)
  {
    v0 = sub_2683CFD28();
    if (!v1)
    {
      atomic_store(v0, &qword_280254690);
    }
  }
}

void sub_2683C1094(uint64_t a1)
{
  if (!qword_280254698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802546A0, &qword_2683F9EA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280254698);
    }
  }
}

void sub_2683C110C(uint64_t a1)
{
  if (!qword_2802546A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802546B0, &qword_2683F9EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802546B8, &qword_2683F9EB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2802546A8);
    }
  }
}

void sub_2683C1198(uint64_t a1)
{
  if (!qword_2802546C0)
  {
    sub_2683CB528();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802546A0, &qword_2683F9EA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2802546C0);
    }
  }
}

_BYTE *_s14descr2878F8F29V19SystemSmartListTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2683C1310()
{
  result = qword_2802546C8;
  if (!qword_2802546C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802546C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_37()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_36(uint64_t a1, uint64_t a2)
{

  return swift_allocObject();
}

uint64_t type metadata accessor for SetTaskAttributeNLv3IntentWrapper(uint64_t a1)
{
  result = qword_2802546D0;
  if (!qword_2802546D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683C1474()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_23(v4);
  v1[5] = OUTLINED_FUNCTION_15_1();
  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2683C14FC()
{
  v1 = v0[5];
  sub_2681340E8(v0[2], v1, &qword_28024D398, &qword_2683D22F0);
  v2 = sub_2683CD358();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[5];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812D9E0(v0[5], &qword_28024D398, &qword_2683D22F0);
    v5 = 0;
  }

  else
  {
    v5 = sub_2683CD2E8();
    (*(*(v2 - 8) + 8))(v4, v2);
  }

  v0[6] = v5;
  v6 = OUTLINED_FUNCTION_6();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2683C164C;
  v7 = v0[3];

  return v9(v5, v7, 0);
}

uint64_t sub_2683C164C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v4 + 64) = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2683C1754()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2683C17E8()
{
  v0 = type metadata accessor for AppIntentNode(0);
  OUTLINED_FUNCTION_1();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024CE28, &qword_2683D1870);
  v8 = OUTLINED_FUNCTION_23(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_268356630();
  sub_2681340E8(v13, v11, &qword_28024CE28, &qword_2683D1870);
  if (__swift_getEnumTagSinglePayload(v11, 1, v0) == 1)
  {
    sub_26812D9E0(v13, &qword_28024CE28, &qword_2683D1870);
    return 0;
  }

  else
  {
    sub_2683C32A8(v11, v6);
    sub_2683C3304(v6, v4);
    sub_2683533F0();
    v14 = v15;
    sub_2683CD078();
    sub_2683CD058();
    sub_2681C18A0(&qword_28024CE30, type metadata accessor for AppIntentNode, &unk_2683F3FA8);
    sub_2683CD5C8();

    sub_2683C3360(v4, type metadata accessor for AppIntentNode);
    sub_2683C3360(v6, type metadata accessor for AppIntentNode);
    sub_26812D9E0(v13, &qword_28024CE28, &qword_2683D1870);
  }

  return v14;
}

uint64_t sub_2683C1A5C()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 864) = v0;
  *(v1 + 1080) = v2;
  v3 = type metadata accessor for SetTaskAttributeNLv3IntentWrapper(0);
  *(v1 + 872) = v3;
  OUTLINED_FUNCTION_3_1(v3);
  *(v1 + 880) = v4;
  *(v1 + 888) = *(v5 + 64);
  *(v1 + 896) = OUTLINED_FUNCTION_15_1();
  v6 = type metadata accessor for IntentTriggerTemporalModelNLv3(0);
  OUTLINED_FUNCTION_23(v6);
  *(v1 + 904) = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CB668();
  *(v1 + 912) = v7;
  OUTLINED_FUNCTION_3_1(v7);
  *(v1 + 920) = v8;
  *(v1 + 928) = OUTLINED_FUNCTION_15_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_23(v9);
  *(v1 + 936) = OUTLINED_FUNCTION_15_1();
  v10 = type metadata accessor for NotebookNLv3Intent(0);
  *(v1 + 944) = v10;
  OUTLINED_FUNCTION_3_1(v10);
  *(v1 + 952) = v11;
  *(v1 + 960) = *(v12 + 64);
  *(v1 + 968) = swift_task_alloc();
  *(v1 + 976) = swift_task_alloc();
  *(v1 + 984) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_2683C1C18()
{
  OUTLINED_FUNCTION_80();
  v26 = v0;
  if (*(v0 + 1080) == 1)
  {
    sub_2683B3C5C(*(v0 + 984));
  }

  else
  {
    sub_2683C3304(*(v0 + 864), *(v0 + 984));
  }

  if (qword_28024C8D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 984);
  v2 = *(v0 + 976);
  v3 = sub_2683CF7E8();
  *(v0 + 992) = v3;
  __swift_project_value_buffer(v3, qword_28027C940);
  sub_2683C3304(v1, v2);
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE68();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 976);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    OUTLINED_FUNCTION_0_29();
    sub_2681C18A0(v10, v11, &unk_2683F3404);
    v12 = sub_2683D0568();
    v14 = v13;
    OUTLINED_FUNCTION_0_78();
    sub_2683C3360(v7, v15);
    v16 = sub_2681610A0(v12, v14, &v25);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v4, v5, "[SetTaskAttributeNLv3IntentWrapper] attempting to parse %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    OUTLINED_FUNCTION_0_78();
    sub_2683C3360(v7, v17);
  }

  v18 = (*(v0 + 864) + *(*(v0 + 872) + 20));
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_268352A2C();
  if (qword_28024C960 != -1)
  {
    swift_once();
  }

  v19 = sub_2683CE918();
  v20 = __swift_project_value_buffer(v19, qword_28027CAC8);
  v21 = OUTLINED_FUNCTION_6();
  *(v0 + 1000) = v21;
  *v21 = v0;
  v21[1] = sub_2683C1F04;
  v22 = *(v0 + 936);

  return v24(v22, v20);
}

uint64_t sub_2683C1F04()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 936);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v6 + 1008) = v5;

  sub_26812D9E0(v2, &qword_28024D398, &qword_2683D22F0);
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2683C201C()
{
  v1 = *(v0 + 1080);
  (*(*(v0 + 920) + 16))(*(v0 + 928), *(v0 + 864) + *(*(v0 + 872) + 36), *(v0 + 912));
  if (v1 == 1)
  {
    *(v0 + 728) = 0;
    *(v0 + 696) = 0u;
    *(v0 + 712) = 0u;
  }

  else
  {
    sub_26813CA00(*(v0 + 864) + *(*(v0 + 872) + 32), v0 + 696);
  }

  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = sub_26836C418(*(v0 + 984), v2, v0 + 696);
  *(v0 + 1016) = v5;
  sub_26812D9E0(v0 + 696, &qword_28024E2C8, &unk_2683D6950);
  (*(v3 + 8))(v2, v4);
  v6 = [v5 temporalEventTrigger];
  if (qword_28024CBA0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1008);
  v8 = *(v0 + 984);
  v9 = *(v0 + 968);
  v37 = *(v0 + 952);
  v38 = *(v0 + 960);
  v10 = *(v0 + 904);
  v11 = *(v0 + 896);
  v36 = *(v0 + 880);
  v12 = *(v0 + 864);
  OUTLINED_FUNCTION_0_29();
  sub_2681C18A0(v13, v14, &unk_2683F3D78);
  sub_2683CD5C8();
  *(v0 + 1024) = sub_26838858C(v6, v7, v10);

  sub_2683C3360(v10, type metadata accessor for IntentTriggerTemporalModelNLv3);
  sub_2683C3304(v8, v9);
  sub_2683C3304(v12, v11);
  v15 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v16 = (v38 + *(v36 + 80) + v15) & ~*(v36 + 80);
  v17 = swift_allocObject();
  *(v0 + 1032) = v17;
  sub_2683C32A8(v9, v17 + v15);
  sub_2683C32A8(v11, v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F9F8, qword_2683FA040);
  swift_asyncLet_begin();
  *(v0 + 1040) = sub_26836D6B8();
  if (qword_28024CBF8 != -1)
  {
    swift_once();
  }

  v18 = sub_2683CD5D8();
  v19 = *(v18 + 16);
  v20 = (v18 + 32);
  v21 = 2;
  v22 = (v18 + 32);
  while (v19)
  {
    switch(*v22)
    {
      case 1:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        v21 = 2;
        goto LABEL_108;
      case 5:
        OUTLINED_FUNCTION_24_10();
        break;
      case 6:
        OUTLINED_FUNCTION_17_14();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        OUTLINED_FUNCTION_20_17();
        break;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    v23 = sub_2683D0598();

    ++v22;
    --v19;
    if (v23)
    {
      goto LABEL_54;
    }
  }

  v24 = *(v18 + 16);
  v21 = 1;
  while (2)
  {
    if (v24)
    {
      switch(*v20)
      {
        case 1:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_7_0();
          goto LABEL_51;
        case 2:
          OUTLINED_FUNCTION_4_1();
          goto LABEL_51;
        case 3:
          OUTLINED_FUNCTION_10_1();
          goto LABEL_51;
        case 5:
          v21 = 1;
LABEL_108:

          goto LABEL_54;
        case 6:
          OUTLINED_FUNCTION_17_14();
          goto LABEL_51;
        case 7:
          OUTLINED_FUNCTION_9_1();
          goto LABEL_51;
        case 8:
          OUTLINED_FUNCTION_11_1();
          goto LABEL_51;
        case 9:
          OUTLINED_FUNCTION_14_0();
          goto LABEL_51;
        case 0xB:
          OUTLINED_FUNCTION_17_0();
          goto LABEL_51;
        case 0xC:
          OUTLINED_FUNCTION_6_1();
          goto LABEL_51;
        case 0xD:
          OUTLINED_FUNCTION_22_0();
          goto LABEL_51;
        case 0xE:
          OUTLINED_FUNCTION_5_1();
          goto LABEL_51;
        case 0xF:
          OUTLINED_FUNCTION_20_0();
          goto LABEL_51;
        case 0x10:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_13_0();
          goto LABEL_51;
        case 0x11:
          OUTLINED_FUNCTION_8_1();
          goto LABEL_51;
        case 0x12:
          OUTLINED_FUNCTION_20_17();
          goto LABEL_51;
        case 0x13:
          OUTLINED_FUNCTION_18_0();
          goto LABEL_51;
        default:
LABEL_51:
          v25 = sub_2683D0598();

          ++v20;
          --v24;
          if (v25)
          {
            goto LABEL_54;
          }

          continue;
      }
    }

    break;
  }

  v21 = 0;
LABEL_54:
  *(v0 + 1048) = v21;

  v26 = sub_2683CD5D8();
  v27 = *(v26 + 16);
  v28 = (v26 + 32);
  v29 = 2;
  v30 = (v26 + 32);
  while (v27)
  {
    switch(*v30)
    {
      case 1:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 5:
        OUTLINED_FUNCTION_24_10();
        break;
      case 6:
        OUTLINED_FUNCTION_17_14();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xA:
        v29 = 2;
        goto LABEL_106;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        OUTLINED_FUNCTION_20_17();
        break;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    v31 = sub_2683D0598();

    ++v30;
    --v27;
    if (v31)
    {
      goto LABEL_100;
    }
  }

  v32 = *(v26 + 16);
  v29 = 1;
  while (2)
  {
    if (v32)
    {
      switch(*v28)
      {
        case 1:
          OUTLINED_FUNCTION_7_0();
          goto LABEL_97;
        case 2:
          OUTLINED_FUNCTION_4_1();
          goto LABEL_97;
        case 3:
          OUTLINED_FUNCTION_10_1();
          goto LABEL_97;
        case 5:
          OUTLINED_FUNCTION_24_10();
          goto LABEL_97;
        case 6:
          OUTLINED_FUNCTION_17_14();
          goto LABEL_97;
        case 7:
          OUTLINED_FUNCTION_9_1();
          goto LABEL_97;
        case 8:
          OUTLINED_FUNCTION_11_1();
          goto LABEL_97;
        case 9:
          v29 = 1;
LABEL_106:

          goto LABEL_100;
        case 0xB:
          OUTLINED_FUNCTION_17_0();
          goto LABEL_97;
        case 0xC:
          OUTLINED_FUNCTION_6_1();
          goto LABEL_97;
        case 0xD:
          OUTLINED_FUNCTION_22_0();
          goto LABEL_97;
        case 0xE:
          OUTLINED_FUNCTION_5_1();
          goto LABEL_97;
        case 0xF:
          OUTLINED_FUNCTION_20_0();
          goto LABEL_97;
        case 0x10:
          OUTLINED_FUNCTION_13_0();
          goto LABEL_97;
        case 0x11:
          OUTLINED_FUNCTION_8_1();
          goto LABEL_97;
        case 0x12:
          OUTLINED_FUNCTION_20_17();
          goto LABEL_97;
        case 0x13:
          OUTLINED_FUNCTION_18_0();
          goto LABEL_97;
        default:
LABEL_97:
          v33 = sub_2683D0598();

          ++v28;
          --v32;
          if (v33)
          {
            goto LABEL_100;
          }

          continue;
      }
    }

    break;
  }

  v29 = 0;
LABEL_100:
  *(v0 + 1056) = v29;

  v34 = OUTLINED_FUNCTION_26_28();

  return MEMORY[0x282200930](v34);
}

uint64_t sub_2683C29D0()
{
  *(v1 + 1064) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_1_1(sub_2683C2DB0);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_2683C29FC);
  }
}

uint64_t sub_2683C2CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v15 = *(v13 + 1016);
  OUTLINED_FUNCTION_24_23(*(v13 + 1024));

  OUTLINED_FUNCTION_0_78();
  sub_2683C3360(v12, v16);

  OUTLINED_FUNCTION_77();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_2683C2DB0()
{
  OUTLINED_FUNCTION_14();

  v1 = OUTLINED_FUNCTION_26_28();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_2683C2E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v15 = *(v13 + 1024);
  OUTLINED_FUNCTION_24_23(*(v13 + 1016));

  OUTLINED_FUNCTION_0_78();
  sub_2683C3360(v12, v16);

  OUTLINED_FUNCTION_77();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_2683C2EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = *(type metadata accessor for SetTaskAttributeNLv3IntentWrapper(0) + 24);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_2683C2F9C;

  return sub_26836C788(a2, a3 + v6);
}

uint64_t sub_2683C2F9C(uint64_t a1)
{
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 32) = a1;

    return MEMORY[0x2822009F8](sub_268212F2C);
  }
}

uint64_t sub_2683C30DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_2683C1A5C();
}

uint64_t sub_2683C3178(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for SetTaskAttributeNLv3IntentWrapper(0);
  OUTLINED_FUNCTION_23(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_268193D88;

  return sub_2683C2EE8(a1, v1 + v7, v1 + v12);
}

uint64_t sub_2683C32A8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_0();
  v5(v4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_2683C3304(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_47_0();
  v5(v4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2683C3360(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_24_23(void *a1@<X8>)
{
}

uint64_t sub_2683C3468(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x2822009F8](sub_2683C34B0);
}

uint64_t sub_2683C34B0()
{
  v52 = v0;
  v1 = *(v0 + 48);
  v2 = *(v1 + 48);
  *(v0 + 64) = v2;
  v3 = *(v1 + 56);
  *(v0 + 88) = v3;
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      v4 = v2;
      if (v3)
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v5 = sub_2683CF7E8();
        __swift_project_value_buffer(v5, qword_28027C958);
        v6 = v2;
        v7 = sub_2683CF7C8();
        v8 = sub_2683CFE98();
        if (!OUTLINED_FUNCTION_6_44(v8))
        {
          goto LABEL_30;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v51 = v10;
        *v9 = 136446210;
        *(v0 + 24) = v2;
        v11 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
        v12 = sub_2683CFAD8();
        v14 = sub_2681610A0(v12, v13, &v51);

        *(v9 + 4) = v14;
        v15 = "[AppResolutionFlow] App resolution resulted in a handled error of %{public}s";
      }

      else
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v31 = sub_2683CF7E8();
        __swift_project_value_buffer(v31, qword_28027C958);
        v32 = v2;
        v7 = sub_2683CF7C8();
        v33 = sub_2683CFE78();
        if (!OUTLINED_FUNCTION_6_44(v33))
        {
          goto LABEL_30;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v51 = v10;
        *v9 = 136446210;
        *(v0 + 16) = v2;
        v34 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
        v35 = sub_2683CFAD8();
        v37 = sub_2681610A0(v35, v36, &v51);

        *(v9 + 4) = v37;
        v15 = "[AppResolutionFlow] App resolution resulted in an unhandled error of %{public}s";
      }

      _os_log_impl(&dword_2680EB000, v7, v1, v15, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
LABEL_30:

      sub_2683CC3F8();
      sub_2683C4324(v2, v3);
LABEL_42:
      v49 = *(v0 + 8);

      return v49();
    }

    if (!(v2 | v3 ^ 0x80))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v38 = sub_2683CF7E8();
      __swift_project_value_buffer(v38, qword_28027C958);
      v39 = sub_2683CF7C8();
      v40 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_43(v40))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_11_17(&dword_2680EB000, v41, v42, "[AppResolutionFlow] Starting app resolution.");
        OUTLINED_FUNCTION_38();
      }

      v43 = *(v0 + 48);

      v44 = (*(v43 + 16))();
      v45 = *(v1 + 48);
      *(v1 + 48) = 8;
      v46 = *(v1 + 56);
      *(v1 + 56) = 0x80;
      sub_2683C4324(v45, v46);
      *(v0 + 32) = v44;
      sub_2683C3C74();
      sub_2683CB9C8();
      swift_getWitnessTable();
      sub_2683CC398();

      goto LABEL_42;
    }

    if (v3 == 128 && v2 == 8)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v25 = sub_2683CF7E8();
      __swift_project_value_buffer(v25, qword_28027C958);
      v26 = sub_2683CF7C8();
      v27 = sub_2683CFE88();
      if (!OUTLINED_FUNCTION_43(v27))
      {
        goto LABEL_41;
      }

      *OUTLINED_FUNCTION_21_5() = 0;
      v30 = "[AppResolutionFlow] Execute called durning app resolution flow";
    }

    else
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v47 = sub_2683CF7E8();
      __swift_project_value_buffer(v47, qword_28027C958);
      v26 = sub_2683CF7C8();
      v48 = sub_2683CFE98();
      if (!OUTLINED_FUNCTION_43(v48))
      {
        goto LABEL_41;
      }

      *OUTLINED_FUNCTION_21_5() = 0;
      v30 = "[AppResolutionFlow] User cancelled app resolution.";
    }

    OUTLINED_FUNCTION_11_17(&dword_2680EB000, v28, v29, v30);
    OUTLINED_FUNCTION_38();
LABEL_41:

    sub_2683CC3F8();
    goto LABEL_42;
  }

  v16 = qword_28024C8E0;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v17 = sub_2683CF7E8();
  __swift_project_value_buffer(v17, qword_28027C958);
  v18 = sub_2683CF7C8();
  v19 = sub_2683CFE98();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_21_5();
    *v20 = 0;
    _os_log_impl(&dword_2680EB000, v18, v19, "[AppResolutionFlow] App resolution completed successfully, pushing the main flow", v20, 2u);
    OUTLINED_FUNCTION_38();
  }

  v21 = *(v0 + 48);

  v50 = (*(v21 + 32) + **(v21 + 32));
  v22 = swift_task_alloc();
  *(v0 + 72) = v22;
  *v22 = v0;
  v22[1] = sub_2683C3AE8;

  return v50(v2);
}

uint64_t sub_2683C3AE8(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_2683C3BE8);
}

uint64_t sub_2683C3BE8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 88);
  sub_2683CC3E8();

  sub_2683C4324(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2683C3CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NotebookAppResolutionFlow(0, *(*v4 + 80), a3, a4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  return sub_2683CBF48();
}

void sub_2683C3D3C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2683CB978();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, a1, v4);
  v8 = OUTLINED_FUNCTION_0_0();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D5B410])
  {
    v13 = OUTLINED_FUNCTION_0_0();
    v14(v13);
    v15 = v1[6];
    v1[6] = *v7;
LABEL_5:
    v19 = *(v1 + 56);
    *(v1 + 56) = 0;
    goto LABEL_6;
  }

  if (v10 == *MEMORY[0x277D5B400])
  {
    v16 = OUTLINED_FUNCTION_0_0();
    v17(v16);
    v18 = *v7;

    v15 = v1[6];
    v1[6] = v18;
    goto LABEL_5;
  }

  if (v10 == *MEMORY[0x277D5B408])
  {
    v20 = OUTLINED_FUNCTION_0_0();
    v21(v20);
    v22 = *(v7 + 8) | 0x40;
    v15 = v1[6];
    v1[6] = *v7;
    v19 = *(v1 + 56);
    *(v1 + 56) = v22;
  }

  else
  {
    if (v10 != *MEMORY[0x277D5B418])
    {
      type metadata accessor for NotebookAppResolutionFlow.Errors(0, *(v3 + 80), v11, v12);
      swift_getWitnessTable();
      v23 = swift_allocError();
      v24 = v1[6];
      v1[6] = v23;
      v25 = *(v1 + 56);
      *(v1 + 56) = 64;
      sub_2683C4324(v24, v25);
      v26 = OUTLINED_FUNCTION_0_0();
      v27(v26);
      return;
    }

    v15 = v1[6];
    v1[6] = 16;
    v19 = *(v1 + 56);
    *(v1 + 56) = 0x80;
  }

LABEL_6:
  sub_2683C4324(v15, v19);
}

uint64_t sub_2683C3FB0(uint64_t a1)
{
  sub_2683D0698();
  sub_26812816C();
  return sub_2683D06D8();
}

uint64_t sub_2683C3FEC()
{

  sub_2683C4324(*(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t sub_2683C4020()
{
  sub_2683C3FEC();

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_2683C406C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook0B17AppResolutionFlowC5State33_365B6DD027163EB04DF6B546BCFF474ALLOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2683C40CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 9))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 8) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2683C4138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 8) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_2683C41B8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 8) & 1 | (a2 << 6);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 8) = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_2683C4230(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268195F80;

  return sub_2683C3468(a1);
}

uint64_t sub_2683C42CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NotebookAppResolutionFlow(0, *(a1 + 80), a3, a4);

  return sub_2683CBF88();
}

void sub_2683C4324(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
  }

  else if (!(a2 >> 6))
  {
  }
}

_BYTE *sub_2683C4344(_BYTE *result, int a2, int a3)
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

BOOL OUTLINED_FUNCTION_6_44(os_log_type_t a1)
{
  sub_2683C4324(v1, v3);

  return os_log_type_enabled(v2, a1);
}

uint64_t sub_2683C4444@<X0>(void (*a1)(void *__return_ptr, char *, uint64_t, uint64_t)@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a1;
  v21 = a3;
  v3 = sub_2683CCC18();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  sub_2683CC9E8();
  v15 = sub_2683CC738();
  v17 = v16;
  (*(v11 + 8))(v14, v9);
  sub_2683CCB88();
  v20(v22, v8, v15, v17);

  (*(v5 + 8))(v8, v3);
  sub_268139D80(v22);
  return sub_2681433DC(v22, &qword_28024D458, &unk_2683D2C60);
}

uint64_t sub_2683C4620()
{
  OUTLINED_FUNCTION_14();
  v0[48] = v1;
  v0[49] = v2;
  v0[46] = v3;
  v0[47] = v4;
  v0[45] = v5;
  v6 = sub_2683CCBA8();
  v0[50] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[51] = v7;
  v0[52] = OUTLINED_FUNCTION_15_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  OUTLINED_FUNCTION_23(v8);
  v0[53] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CCC18();
  v0[54] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v0[55] = v10;
  v0[56] = OUTLINED_FUNCTION_15_1();
  v11 = sub_2683CC748();
  v0[57] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v0[58] = v12;
  v0[59] = OUTLINED_FUNCTION_55();
  v0[60] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_2683C479C()
{
  v75 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v72 = *(v0 + 432);
  v71 = *(v0 + 384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  sub_2683CC9E8();
  v6 = sub_2683CC738();
  v8 = v7;
  v70 = *(v3 + 8);
  v70(v1, v2);
  sub_2683CCB88();
  v71(v4, v6, v8);

  (*(v5 + 8))(v4, v72);
  sub_2681340E8(v0 + 16, v0 + 88, &qword_28024D458, &unk_2683D2C60);
  v9 = *(v0 + 88);
  *(v0 + 488) = v9;
  if (v9 == 2)
  {
    sub_268143388(v0 + 88);
    goto LABEL_5;
  }

  if (v9 == 3)
  {
    sub_2681433DC(v0 + 88, &qword_28024D458, &unk_2683D2C60);
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    v11 = OUTLINED_FUNCTION_32_1();
    v12(v11);
    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE78();
    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 408);
      v15 = *(v0 + 416);
      v17 = *(v0 + 400);
      swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_34_1();
      v74[0] = v18;
      *v2 = 136315138;
      sub_2683CCB88();
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      (*(v16 + 8))(v15, v17);
      v19 = OUTLINED_FUNCTION_44();
      v22 = sub_2681610A0(v19, v20, v21);

      *(v2 + 4) = v22;
      _os_log_impl(&dword_2680EB000, v13, v14, "[SFNI NeedsConfirmation] Did not get ConfirmationTask from parse: %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v24 = *(v0 + 408);
      v23 = *(v0 + 416);
      v25 = *(v0 + 400);

      (*(v24 + 8))(v23, v25);
    }

    v26 = sub_26812C6B8();
    v27 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v26);
    OUTLINED_FUNCTION_29_9(v27, v28);
    goto LABEL_16;
  }

  v29 = *(v0 + 472);
  v30 = *(v0 + 456);
  v31 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v31;
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 201) = *(v0 + 137);
  sub_2683CC9E8();
  v32 = sub_2683CC738();
  v34 = v33;
  v70(v29, v30);

  v35 = sub_26818CD7C(v32, v34);
  if (v35 == 10)
  {
    v36 = sub_26812C6B8();
    v37 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v36);
    *v38 = v32;
    v38[1] = v34;
    OUTLINED_FUNCTION_16_1(v37, v38);
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
LABEL_16:
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_40();
LABEL_17:

    return v44();
  }

  v39 = v35;

  v40 = sub_2683CC9C8();
  if (v9)
  {
    v41 = sub_2681753A0(v39);
  }

  else
  {
    v42 = sub_2683CC9D8();
    v43 = [v42 itemToConfirm];

    sub_2683D0038();
    swift_unknownObjectRelease();
    v41 = sub_2681758A8(v39, (v0 + 328));
    __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  }

  *(v0 + 496) = v41;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v46 = sub_2683CF7E8();
  *(v0 + 504) = __swift_project_value_buffer(v46, qword_28027C958);
  v47 = sub_2683CF7C8();
  v48 = sub_2683CFE98();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v49 = 136315394;
    *(v0 + 81) = v9 & 1;
    v50 = sub_2683CFAD8();
    v52 = sub_2681610A0(v50, v51, v74);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2080;
    v53 = v41;
    v54 = [v53 description];
    v55 = sub_2683CFA78();
    v57 = v56;

    v58 = sub_2681610A0(v55, v57, v74);

    *(v49 + 14) = v58;
    _os_log_impl(&dword_2680EB000, v47, v48, "[SFNI NeedsConfirmation] Parsed response as %s. Updated intent: %s", v49, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  sub_2681340E8(v0 + 160, v0 + 224, &qword_28024D460, &qword_2683D5050);
  v59 = *(v0 + 280);
  if (v59 != 3)
  {
    if (v59 == 255)
    {
      sub_2681433DC(v0 + 224, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 224);
    }

    v63 = OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_1();
    v64 = OUTLINED_FUNCTION_36_8();
    v65(v64);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v63);
    sub_2683BDBE8();
    v69 = v41;
    OUTLINED_FUNCTION_0_0();
    sub_2683CC8D8();
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_7_4();
    goto LABEL_17;
  }

  sub_268128148((v0 + 224), v0 + 288);
  v60 = *(v0 + 312);
  v61 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v60);
  v73 = (*(v61 + 40) + **(v61 + 40));
  v62 = swift_task_alloc();
  *(v0 + 512) = v62;
  *v62 = v0;
  v62[1] = sub_2683C5000;

  return v73(1, v60, v61);
}

uint64_t sub_2683C5000()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 520) = v4;
  *(v2 + 528) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2683C5104()
{
  v27 = v0;
  v2 = *(v0 + 520);
  v3 = *(v0 + 496);
  v4 = sub_268175B40(v2);

  v5 = v4;
  v6 = v5;
  v7 = sub_2683CF7C8();
  v8 = sub_2683CFE98();

  if (os_log_type_enabled(v7, v8))
  {
    v25 = *(v0 + 520);
    swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_34_1();
    v26 = v9;
    *v1 = 136315138;
    v10 = v6;
    v11 = [v10 description];
    v12 = sub_2683CFA78();
    v14 = v13;

    v15 = sub_2681610A0(v12, v14, &v26);

    *(v1 + 4) = v15;
    _os_log_impl(&dword_2680EB000, v7, v8, "[SFNI NeedsConfirmation] Merged intent from secondary task: %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  v16 = OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_1();
  v17 = OUTLINED_FUNCTION_36_8();
  v18(v17);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
  sub_2683BDBE8();
  v22 = v6;
  OUTLINED_FUNCTION_0_0();
  sub_2683CC8D8();
  sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
  sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

  OUTLINED_FUNCTION_7_4();

  return v23();
}

uint64_t sub_2683C5388()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 496);
  sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
  sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2683C5454()
{
  OUTLINED_FUNCTION_14();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  v0[27] = v7;
  v8 = type metadata accessor for Snippet(0);
  v0[34] = v8;
  OUTLINED_FUNCTION_23(v8);
  v0[35] = OUTLINED_FUNCTION_55();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v9 = sub_2683CC9A8();
  v0[39] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v0[40] = v10;
  v0[41] = OUTLINED_FUNCTION_15_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v11);
  v0[42] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v12);
  v0[43] = OUTLINED_FUNCTION_15_1();
  v13 = sub_2683CC138();
  v0[44] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v0[45] = v14;
  v0[46] = OUTLINED_FUNCTION_55();
  v0[47] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v15);
  v0[48] = OUTLINED_FUNCTION_15_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v16);
  v0[49] = v17;
  v0[50] = *(v18 + 64);
  v0[51] = OUTLINED_FUNCTION_55();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v19 = sub_2683CC528();
  v0[59] = v19;
  OUTLINED_FUNCTION_3_1(v19);
  v0[60] = v20;
  v0[61] = OUTLINED_FUNCTION_15_1();
  v21 = sub_2683CC748();
  v0[62] = v21;
  OUTLINED_FUNCTION_3_1(v21);
  v0[63] = v22;
  v0[64] = OUTLINED_FUNCTION_55();
  v0[65] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF20, &qword_2683FA3F0);
  v0[66] = v23;
  OUTLINED_FUNCTION_3_1(v23);
  v0[67] = v24;
  v0[68] = OUTLINED_FUNCTION_15_1();
  v25 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v25);
}

uint64_t sub_2683C57D4()
{
  v39 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  v3 = OUTLINED_FUNCTION_32_1();
  v4(v3);
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[65];
    v8 = v0[63];
    v34 = v0[62];
    swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_34_1();
    v38 = v36;
    *v1 = 136315138;
    v35 = v6;
    sub_2683CC9E8();
    v9 = sub_2683CC738();
    v11 = v10;
    (*(v8 + 8))(v7, v34);
    v12 = OUTLINED_FUNCTION_44();
    v13(v12);
    v14 = sub_2681610A0(v9, v11, &v38);

    *(v1 + 4) = v14;
    _os_log_impl(&dword_2680EB000, v5, v35, "[SFNI NeedsConfirmation] making prompt for confirming %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v15 = OUTLINED_FUNCTION_44();
    v16(v15);
  }

  v18 = v0[63];
  v17 = v0[64];
  v19 = v0[62];
  sub_2683CC9E8();
  v20 = sub_2683CC738();
  v22 = v21;
  (*(v18 + 8))(v17, v19);

  v23 = sub_26818CD7C(v20, v22);
  if (v23 == 10)
  {
    v24 = sub_26812C6B8();
    v37 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v24);
    *v25 = v20;
    v25[1] = v22;
    OUTLINED_FUNCTION_16_1(v37, v25);
    OUTLINED_FUNCTION_13_5();

    OUTLINED_FUNCTION_40();

    return v26();
  }

  else
  {
    v28 = v23;

    v0[5] = &type metadata for SearchForNotebookItems.Parameter;
    v0[6] = &off_287900F98;
    *(v0 + 16) = v28;
    sub_2681686A4(v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v29 = sub_2683CC9D8();
    v30 = [v29 confirmationReason];

    v31 = swift_task_alloc();
    v0[69] = v31;
    *v31 = v0;
    v31[1] = sub_2683C5C10;
    v32 = v0[30];
    v33 = v0[28];

    return sub_2683C63F4(v33, v28, v30, v32);
  }
}

uint64_t sub_2683C5C10()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 560) = v4;
  *(v2 + 568) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5);
}

void sub_2683C5D14()
{
  v1 = v0[70];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v5 = v0[57];
  v6 = v0[48];
  v7 = v0[43];
  v86 = v0[42];
  v8 = v0[34];
  __swift_storeEnumTagSinglePayload(v0[58], 1, 1, v8);
  *v5 = 1541;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  (*(v3 + 16))(v6, v2, v4);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  sub_2683CC118();
  v15 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
  v16 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v17 = swift_allocObject();
  v0[72] = v17;
  *(v17 + 16) = xmmword_2683D2250;
  *(v17 + 32) = v1;
  v18 = v1;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26D616C90](0, v17);
    }

    else
    {
      v19 = *(v17 + 32);
    }

    v20 = v19;
    v21 = [v19 catId];

    v82 = sub_2683CFA78();
    v85 = v22;
  }

  else
  {
    v82 = 0;
    v85 = 0;
  }

  v23 = v0[58];
  v81 = v23;
  v25 = v0[55];
  v24 = v0[56];
  v27 = v0[49];
  v26 = v0[50];
  v77 = v0[47];
  v78 = v0[48];
  v28 = v0[45];
  v75 = v0[46];
  v76 = v0[44];
  v79 = v0[43];
  v80 = v0[42];
  v83 = v0[34];
  v84 = v0[54];
  v29 = v0[31];
  sub_2681340E8(v0[57], v24, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v23, v25, &qword_28024E770, &qword_2683D80D0);
  v30 = *(v27 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = (v26 + v30 + v31) & ~v30;
  v33 = swift_allocObject();
  v0[73] = v33;
  *(v33 + 16) = v29;
  sub_2681430AC(v24, v33 + v31);
  sub_2681430AC(v25, v33 + v32);
  (*(v28 + 16))(v75, v77, v76);
  v34 = swift_task_alloc();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 40) = v82;
  *(v34 + 48) = v85;
  *(v34 + 56) = v78;
  *(v34 + 64) = 257;
  *(v34 + 72) = sub_26814311C;
  *(v34 + 80) = v33;
  *(v34 + 88) = 0;
  *(v34 + 96) = v79;
  *(v34 + 104) = 2;
  *(v34 + 112) = v80;

  sub_2683CC8E8();

  sub_2681340E8(v81, v84, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v84, 1, v83) == 1)
  {
    v35 = v0 + 54;
  }

  else
  {
    v36 = v0[57];
    v37 = v0[53];
    v38 = v0[34];
    sub_26814320C(v0[54], v0[38]);
    sub_2681340E8(v36, v37, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
    {
      v58 = v0[37];
      v59 = v0[38];
      v60 = v0[34];
      sub_26814320C(v0[53], v58);
      v0[20] = v60;
      v61 = sub_268143270();
      v0[21] = v61;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v59, boxed_opaque_existential_0);
      v0[25] = v60;
      v0[26] = v61;
      v63 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      sub_2681432C8(v58, v63);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      v0[74] = v64;
      *v64 = v65;
      v64[1] = sub_2682154B8;
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v35 = v0 + 53;
    sub_26814332C(v0[38]);
  }

  v39 = *v35;
  v40 = v0[58];
  v41 = v0[52];
  v42 = v0[34];
  sub_2681433DC(v39, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v40, v41, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v42);
  v44 = v0[52];
  v45 = v0[34];
  if (EnumTagSinglePayload == 1)
  {
    v46 = v0[57];
    v47 = v0[51];
    sub_2681433DC(v44, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v46, v47, &qword_28024E770, &qword_2683D80D0);
    v48 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v48, v49, v45) == 1)
    {
      sub_2681433DC(v0[51], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      v0[77] = v50;
      *v50 = v51;
      v50[1] = sub_268141D90;
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v68 = v0[34];
    v69 = v0[35];
    sub_26814320C(v0[51], v69);
    v0[10] = v68;
    v0[11] = sub_268143270();
    v70 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v69, v70);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    v0[76] = v71;
    *v71 = v72;
    OUTLINED_FUNCTION_40_0(v71);
  }

  else
  {
    v54 = v0[36];
    sub_26814320C(v44, v54);
    v0[15] = v45;
    v0[16] = sub_268143270();
    v55 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2681432C8(v54, v55);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    v0[75] = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_40_0(v56);
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_2683C63F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 296) = a2;
  *(v4 + 88) = a1;
  *(v4 + 96) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683C64C4);
}

uint64_t sub_2683C64C4()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  switch(*(v1 + 296))
  {
    case 1:
      v33 = OUTLINED_FUNCTION_25_31();
      *(v1 + 160) = sub_2681DF4C8(v33);
      if (v0)
      {
        goto LABEL_28;
      }

      sub_2683CFEA8();
      sub_2683CF168();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
      v38 = swift_task_alloc();
      *(v1 + 168) = v38;
      *v38 = v1;
      v38[1] = sub_2683C6AE4;
      OUTLINED_FUNCTION_22_27(*(v1 + 128));
      OUTLINED_FUNCTION_20_9();

      return sub_2681FF07C();
    case 2:
      v13 = OUTLINED_FUNCTION_25_31();
      sub_2681DF800(v13);
      if (v0)
      {
        goto LABEL_28;
      }

      sub_2683CFB38();

      sub_2683CF168();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
      v18 = swift_task_alloc();
      *(v1 + 184) = v18;
      *v18 = v1;
      v18[1] = sub_2683C6C98;
      OUTLINED_FUNCTION_22_27(*(v1 + 120));
      OUTLINED_FUNCTION_20_9();

      return sub_2681FE764();
    case 3:
      v24 = OUTLINED_FUNCTION_25_31();
      v26 = sub_2681DF7D4(v24, v25);
      if (v0)
      {
        goto LABEL_28;
      }

      sub_2681BA96C(v26, *(v1 + 112));
      v27 = swift_task_alloc();
      *(v1 + 200) = v27;
      *v27 = v1;
      v27[1] = sub_2683C6E0C;
      OUTLINED_FUNCTION_22_27(*(v1 + 112));
      OUTLINED_FUNCTION_20_9();

      return sub_2681FEEC4();
    case 4:
      v5 = OUTLINED_FUNCTION_25_31();
      v6 = sub_2681DF79C(v5);
      *(v1 + 216) = v6;
      if (v0)
      {
        goto LABEL_28;
      }

      v7 = v6;
      sub_2683CF088();
      v8 = v7;
      *(v1 + 224) = sub_26812E314(v7);
      v9 = swift_task_alloc();
      *(v1 + 232) = v9;
      *v9 = v1;
      OUTLINED_FUNCTION_52_10(v9);
      OUTLINED_FUNCTION_20_9();

      return sub_2681FEDA8(v10);
    case 5:
    case 8:
    case 9:
      v2 = sub_26812C6B8();
      v3 = OUTLINED_FUNCTION_59_1(&type metadata for CommonErrors, v2);
      OUTLINED_FUNCTION_29_9(v3, v4);
      goto LABEL_28;
    case 6:
      v40 = OUTLINED_FUNCTION_25_31();
      *(v1 + 248) = sub_2681DF614(v40);
      if (v0)
      {
        goto LABEL_28;
      }

      *(v1 + 256) = sub_2683608FC();
      v49 = swift_task_alloc();
      *(v1 + 264) = v49;
      *v49 = v1;
      OUTLINED_FUNCTION_52_10(v49);
      OUTLINED_FUNCTION_20_9();

      result = sub_2681FEAD4(v50);
      break;
    case 7:
      v20 = OUTLINED_FUNCTION_25_31();
      v21 = sub_2681DF724(v20);
      if (v0)
      {
        goto LABEL_28;
      }

      sub_26831EE18(v21, *(v1 + 104));
      v22 = swift_task_alloc();
      *(v1 + 280) = v22;
      *v22 = v1;
      v22[1] = sub_2683C72A0;
      OUTLINED_FUNCTION_20_9();

      result = sub_2681FE91C();
      break;
    default:
      v29 = OUTLINED_FUNCTION_25_31();
      v30 = sub_2681DF8FC(v29);
      if (v0)
      {
LABEL_28:
        OUTLINED_FUNCTION_12_38();

        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_20_9();

        result = v42(v41, v42, v43, v44, v45, v46, v47, v48);
      }

      else
      {
        sub_268320CB0(v30, *(v1 + 136));
        v31 = swift_task_alloc();
        *(v1 + 144) = v31;
        *v31 = v1;
        v31[1] = sub_2683C6970;
        OUTLINED_FUNCTION_22_27(*(v1 + 136));
        OUTLINED_FUNCTION_20_9();

        result = sub_2681FEBF0();
      }

      break;
  }

  return result;
}

uint64_t sub_2683C6970()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 152) = v0;

  sub_2681433DC(v6, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20_9();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {
    OUTLINED_FUNCTION_29_25();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_20_9();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_2683C6AE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 176) = v0;

  sub_2681433DC(v6, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2683C6C10()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_20_9();

  return v3(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2683C6C98()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 192) = v0;

  sub_2681433DC(v6, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20_9();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {
    OUTLINED_FUNCTION_29_25();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_20_9();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_2683C6E0C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 208) = v0;

  sub_2681433DC(v6, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20_9();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {
    OUTLINED_FUNCTION_29_25();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_20_9();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_2683C6F80()
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
  v3[30] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2683C7088()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_20_9();

  return v3(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2683C7110()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  v3[34] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2683C7218()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_20_9();

  return v3(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2683C72A0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 288) = v0;

  sub_2681433DC(v6, &unk_28024E7C0, &unk_2683D6CA0);
  if (v0)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20_9();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {
    OUTLINED_FUNCTION_29_25();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_20_9();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_2683C7414()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_2683C7494()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2683C751C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_2683C759C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_2683C761C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2683C76AC()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();

  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2683C773C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_12_38();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_2683C77C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2683C4620();
}

uint64_t sub_2683C7888()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2683C5454();
}

uint64_t sub_2683C7960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268133EC8;

  return MEMORY[0x2821B9E30](a1, a2, a3, a4);
}

unint64_t sub_2683C7A28()
{
  result = qword_280254860;
  if (!qword_280254860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254860);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_38()
{
}

uint64_t OUTLINED_FUNCTION_29_25()
{
}

uint64_t sub_2683C7AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 2 || a1 == 1)
    {
      sub_2683CFB38();
      v4 = 0;
      goto LABEL_11;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v5 = sub_2683CF7E8();
    __swift_project_value_buffer(v5, qword_28027C958);
    v6 = sub_2683CF7C8();
    v7 = sub_2683CFE78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v11 = INSpatialEvent.description.getter(a1, v10);
      v13 = sub_2681610A0(v11, v12, &v16);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_2680EB000, v6, v7, "[INSpatialEvent catEnumValue] Got unknown value: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x26D617A40](v9, -1, -1);
      MEMORY[0x26D617A40](v8, -1, -1);
    }
  }

  v4 = 1;
LABEL_11:
  v14 = sub_2683CF168();

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v14);
}

uint64_t sub_2683C7C94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA20, &unk_2683D9198);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_2683CD038();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_2683C810C(a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2683C817C(a1);
    sub_2683C817C(v4);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v9, v11, v5);
  v13 = (*(v6 + 88))(v9, v5);
  if (v13 == *MEMORY[0x277D5E3B8])
  {
    goto LABEL_5;
  }

  if (v13 != *MEMORY[0x277D5E3C0])
  {
    if (v13 == *MEMORY[0x277D5E3C8])
    {
LABEL_5:
      sub_2683C817C(a1);
      (*(v6 + 8))(v11, v5);
      return 1;
    }

    if (v13 != *MEMORY[0x277D5E3D0])
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v14 = sub_2683CF7E8();
      __swift_project_value_buffer(v14, qword_28027C958);
      v15 = sub_2683CF7C8();
      v16 = sub_2683CFE78();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2680EB000, v15, v16, "[INSpatialEvent] Got unknown eventTriggerAttribute value", v17, 2u);
        MEMORY[0x26D617A40](v17, -1, -1);
      }

      sub_2683C817C(a1);
      v18 = *(v6 + 8);
      v18(v11, v5);
      v18(v9, v5);
      return 0;
    }
  }

  sub_2683C817C(a1);
  (*(v6 + 8))(v11, v5);
  return 2;
}

uint64_t sub_2683C7FD0(char a1)
{
  if (a1 == 4)
  {
    return 0;
  }

  else
  {
    return qword_2683FA438[a1];
  }
}

uint64_t INSpatialEvent.description.getter(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E752ELL;
    case 2:
      return 0x7472617065642ELL;
    case 1:
      return 0x6576697272612ELL;
  }

  sub_2683D0178();

  v3 = sub_2683D0568();
  MEMORY[0x26D616690](v3);

  MEMORY[0x26D616690](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_2683C810C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA20, &unk_2683D9198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2683C817C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA20, &unk_2683D9198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2683C81F4(uint64_t a1, void (*a2)(void *__return_ptr, char *, void))
{
  v3 = sub_2683CBCE8();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CCC18();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CCB88();
  a2(v18, v14, 0);
  (*(v11 + 8))(v14, v9);
  if (v19 == 255)
  {
    sub_268167CA4(v18);
    return 0;
  }

  v15 = sub_2683723D4();
  sub_26813A1A0(v18);
  if (v15 == 2)
  {
    return 0;
  }

  sub_268348D40(v15);
  v16 = sub_2683CBC98();
  (*(v5 + 8))(v8, v3);
  return v16;
}

void sub_2683C83CC()
{
  qword_280254868 = 0xD000000000000028;
  unk_280254870 = 0x80000002683FD670;
  qword_280254878 = 0x656761507478656ELL;
  unk_280254880 = 0xE800000000000000;
}

uint64_t static NextPageInvocation.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_28024CC80 != -1)
  {
    swift_once();
  }

  v2 = unk_280254870;
  v3 = qword_280254878;
  v4 = unk_280254880;
  *a1 = qword_280254868;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_2683C8498(uint64_t a1)
{
  v2 = sub_2683C8624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2683C84D4(uint64_t a1)
{
  v2 = sub_2683C8624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NextPageInvocation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254888, &qword_2683FA4C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2683C8624();
  sub_2683D0718();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2683C8624()
{
  result = qword_280254890;
  if (!qword_280254890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254890);
  }

  return result;
}

unint64_t sub_2683C86A4(void *a1)
{
  a1[1] = sub_2683C86DC();
  a1[2] = sub_2683C8730();
  result = sub_2683C8784();
  a1[3] = result;
  return result;
}

unint64_t sub_2683C86DC()
{
  result = qword_280254898;
  if (!qword_280254898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280254898);
  }

  return result;
}

unint64_t sub_2683C8730()
{
  result = qword_2802548A0;
  if (!qword_2802548A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802548A0);
  }

  return result;
}

unint64_t sub_2683C8784()
{
  result = qword_2802548A8;
  if (!qword_2802548A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802548A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NextPageInvocation(_BYTE *result, int a2, int a3)
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

unint64_t sub_2683C88C8()
{
  result = qword_2802548B0;
  if (!qword_2802548B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802548B0);
  }

  return result;
}

unint64_t sub_2683C8920()
{
  result = qword_2802548B8;
  if (!qword_2802548B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802548B8);
  }

  return result;
}

uint64_t type metadata accessor for SnoozeTasksCATs(uint64_t a1)
{
  result = qword_2802548C0;
  if (!qword_2802548C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2683C8A00(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2683C8A24);
}

uint64_t sub_2683C8A24()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x736D657469;
  *(v2 + 40) = 0xE500000000000000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  *(v2 + 48) = v1;
  v6 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2683C8B70;
  v4 = v0[2];

  return v6(v4, 0xD00000000000001DLL, 0x80000002683FD900, v2);
}

uint64_t sub_2683C8B70()
{
  OUTLINED_FUNCTION_14();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v2 = v5;
  *(v5 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FA00);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v3();
  }
}

uint64_t sub_2683C8C9C()
{
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681D99FC;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD000000000000024);
}

uint64_t sub_2683C8D50()
{
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681D933C;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD00000000000001ALL);
}

uint64_t sub_2683C8E04()
{
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681D99FC;
  v3 = OUTLINED_FUNCTION_18_9();

  return v5(v3, 0xD000000000000026);
}

uint64_t sub_2683C8EB8()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2683C8F54);
}

uint64_t sub_2683C8F54()
{
  v1 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_2683D2890;
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x80000002683FDA70;
  sub_26812C2A8(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(v0[6], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v6, v4);
  }

  v8 = v0[4];
  *(v3 + 80) = 7368801;
  *(v3 + 88) = 0xE300000000000000;
  v9 = 0;
  if (v8)
  {
    v9 = sub_2683CF138();
  }

  else
  {
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  *(v3 + 96) = v8;
  *(v3 + 120) = v9;
  v13 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_2683C9164;
  v11 = v0[2];

  return v13(v11, 0xD000000000000028, 0x8000000268401EB0, v3);
}

uint64_t sub_2683C9164()
{
  OUTLINED_FUNCTION_14();
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v2 = v5;
  *(v5 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2683C929C);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v3();
  }
}

uint64_t sub_2683C929C()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2683C9354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_26812C2A8(a1, &v13 - v10, &qword_28024D258, &unk_2683D1F60);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v11;
}

uint64_t sub_2683C94E8@<X0>(uint64_t a1@<X8>)
{
  v293 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D280, &qword_2683D20F8);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v292 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D288, &qword_2683D2100);
  OUTLINED_FUNCTION_23(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v291 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D290, &qword_2683D2108);
  OUTLINED_FUNCTION_23(v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v298 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D298, &qword_2683D2110);
  OUTLINED_FUNCTION_23(v12);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v297 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2A0, &qword_2683D2118);
  OUTLINED_FUNCTION_23(v15);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v290 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2A8, &qword_2683D2120);
  OUTLINED_FUNCTION_23(v18);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_0();
  v289 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2B0, &qword_2683D2128);
  OUTLINED_FUNCTION_23(v21);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_0();
  v288 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2B8, &qword_2683D2130);
  OUTLINED_FUNCTION_23(v24);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_0();
  v287 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2C0, &qword_2683D2138);
  OUTLINED_FUNCTION_23(v27);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_0();
  v294 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2C8, &qword_2683D2140);
  OUTLINED_FUNCTION_23(v30);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_0();
  v302 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2D0, &qword_2683D2148);
  OUTLINED_FUNCTION_23(v33);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_0();
  v301 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2D8, &qword_2683D2150);
  OUTLINED_FUNCTION_23(v36);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_0();
  v286 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D328, &qword_2683D2198);
  OUTLINED_FUNCTION_23(v39);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E0, &qword_2683D2158);
  OUTLINED_FUNCTION_23(v42);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2F0, &qword_2683D2160);
  OUTLINED_FUNCTION_23(v45);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2F8, &qword_2683D2168);
  OUTLINED_FUNCTION_23(v48);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D300, &qword_2683D2170);
  OUTLINED_FUNCTION_23(v51);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D308, &qword_2683D2178);
  OUTLINED_FUNCTION_23(v54);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D310, &qword_2683D2180);
  OUTLINED_FUNCTION_23(v57);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v59);
  v277 = sub_2683CE528();
  OUTLINED_FUNCTION_0_3();
  v276 = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v62);
  v273 = sub_2683CE768();
  OUTLINED_FUNCTION_0_3();
  v272 = v63;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v65);
  v66 = sub_2683CDC48();
  OUTLINED_FUNCTION_0_3();
  v303 = v67;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_6_0(v69);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802548D0, &qword_2683FA678);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v71);
  v73 = &v265[-v72];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802548D8, &unk_2683FA680);
  v75 = OUTLINED_FUNCTION_23(v74);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_56_3();
  v283 = v79;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_20_39();
  MEMORY[0x28223BE20](v81);
  v83 = &v265[-v82];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D320, &qword_2683D2190);
  OUTLINED_FUNCTION_23(v84);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D330, &qword_2683D21A0);
  v87 = OUTLINED_FUNCTION_23(v86);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_2_1();
  v300 = v88;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_2_33();
  MEMORY[0x28223BE20](v90);
  v92 = &v265[-v91];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D338, &qword_2683D21A8);
  v94 = OUTLINED_FUNCTION_23(v93);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_2_1();
  v284 = v95;
  OUTLINED_FUNCTION_8_0();
  v97 = MEMORY[0x28223BE20](v96);
  MEMORY[0x28223BE20](v97);
  v99 = &v265[-v98];
  v100 = sub_2683CE658();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v100);
  sub_2683CEA48();
  v296 = v92;
  OUTLINED_FUNCTION_4_0();
  v269 = v104;
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
  v299 = v1;
  sub_2683CDC68();
  if (v108)
  {
    sub_2683CE648();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
    sub_2683CE638();
    OUTLINED_FUNCTION_17_29(v99);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v100);
    OUTLINED_FUNCTION_10_16();
    sub_2683CADC0(v116, v117, v118, v119);
  }

  v285 = v99;
  sub_2683CDC38();
  v120 = *(v303 + 104);
  v120(v2, *MEMORY[0x277D5EFA0], v66);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v66);
  v124 = *(v295 + 48);
  OUTLINED_FUNCTION_10_16();
  sub_2683CAD70(v125, v126, v127, v128);
  OUTLINED_FUNCTION_10_16();
  sub_2683CAD70(v129, v130, v131, v132);
  OUTLINED_FUNCTION_3_5(v73);
  if (v137)
  {
    v133 = OUTLINED_FUNCTION_7_37();
    sub_26812D9E0(v133, v134, &unk_2683FA680);
    OUTLINED_FUNCTION_17_29(v83);
    OUTLINED_FUNCTION_3_5(&v73[v124]);
    v135 = v294;
    if (v137)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v136 = v283;
    sub_2683CAD70(v73, v283, &qword_2802548D8, &unk_2683FA680);
    OUTLINED_FUNCTION_3_5(&v73[v124]);
    v135 = v294;
    if (!v137)
    {
      v167 = v303;
      v168 = &v73[v124];
      v169 = v268;
      (*(v303 + 32))(v268, v168, v66);
      sub_2683CAD18();
      v266 = sub_2683CFA58();
      v170 = *(v167 + 8);
      v170(v169, v66);
      sub_26812D9E0(v2, &qword_2802548D8, &unk_2683FA680);
      sub_26812D9E0(v83, &qword_2802548D8, &unk_2683FA680);
      v170(v283, v66);
      v135 = v294;
      v171 = OUTLINED_FUNCTION_93_4();
      sub_26812D9E0(v171, v172, &unk_2683FA680);
      if (v266)
      {
        goto LABEL_26;
      }

      goto LABEL_12;
    }

    v138 = OUTLINED_FUNCTION_7_37();
    sub_26812D9E0(v138, v139, &unk_2683FA680);
    OUTLINED_FUNCTION_17_29(v83);
    (*(v303 + 8))(v136, v66);
  }

  sub_26812D9E0(v73, &qword_2802548D0, &qword_2683FA678);
LABEL_12:
  v140 = v281;
  sub_2683CDC38();
  v141 = v280;
  v120(v280, *MEMORY[0x277D5EFA8], v66);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v66);
  v145 = *(v295 + 48);
  v146 = v282;
  OUTLINED_FUNCTION_10_16();
  sub_2683CAD70(v147, v148, v149, v150);
  OUTLINED_FUNCTION_10_16();
  sub_2683CAD70(v151, v152, v153, v154);
  OUTLINED_FUNCTION_3_5(v146);
  if (!v137)
  {
    v160 = v267;
    sub_2683CAD70(v146, v267, &qword_2802548D8, &unk_2683FA680);
    OUTLINED_FUNCTION_3_5(v146 + v145);
    if (!v161)
    {
      v173 = v141;
      v174 = v303;
      v175 = v146 + v145;
      v176 = v268;
      (*(v303 + 32))(v268, v175, v66);
      sub_2683CAD18();
      v177 = sub_2683CFA58();
      v178 = *(v174 + 8);
      v178(v176, v66);
      v179 = v173;
      v135 = v294;
      sub_26812D9E0(v179, &qword_2802548D8, &unk_2683FA680);
      sub_26812D9E0(v140, &qword_2802548D8, &unk_2683FA680);
      v178(v160, v66);
      sub_26812D9E0(v146, &qword_2802548D8, &unk_2683FA680);
      if (v177)
      {
        goto LABEL_26;
      }

      v295 = 0;
      v303 = 0;
      v165 = v286;
      v164 = v287;
      v158 = v301;
      v157 = v302;
      v159 = v300;
LABEL_22:
      v166 = v296;
      goto LABEL_27;
    }

    v162 = OUTLINED_FUNCTION_7_37();
    sub_26812D9E0(v162, v163, &unk_2683FA680);
    OUTLINED_FUNCTION_17_29(v140);
    (*(v303 + 8))(v160, v66);
    v158 = v301;
    v157 = v302;
    v159 = v300;
LABEL_21:
    sub_26812D9E0(v146, &qword_2802548D0, &qword_2683FA678);
    v295 = 0;
    v303 = 0;
    v165 = v286;
    v164 = v287;
    goto LABEL_22;
  }

  v155 = OUTLINED_FUNCTION_7_37();
  sub_26812D9E0(v155, v156, &unk_2683FA680);
  OUTLINED_FUNCTION_17_29(v140);
  OUTLINED_FUNCTION_3_5(v146 + v145);
  v158 = v301;
  v157 = v302;
  v159 = v300;
  if (!v137)
  {
    goto LABEL_21;
  }

  v73 = v146;
LABEL_17:
  sub_26812D9E0(v73, &qword_2802548D8, &unk_2683FA680);
LABEL_26:
  v180 = *MEMORY[0x277D560C8];
  v181 = v272;
  v182 = *(v272 + 104);
  v183 = v271;
  v184 = v273;
  v182(v271, v180, v273);
  v295 = sub_2683CE758();
  v303 = v185;
  v186 = *(v181 + 8);
  v187 = OUTLINED_FUNCTION_21_30();
  v186(v187);
  v182(v183, v180, v184);
  sub_2683CE758();
  v188 = OUTLINED_FUNCTION_21_30();
  v186(v188);
  v189 = sub_2683CE798();
  OUTLINED_FUNCTION_0_2(v274, v190, v191, v189);
  sub_2683CE788();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v195);
  sub_2683CE778();
  sub_2683CE7A8();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v199);
  v200 = sub_2683CE518();
  OUTLINED_FUNCTION_0_2(v278, v201, v202, v200);
  sub_2683CEBF8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
  v207 = v275;
  OUTLINED_FUNCTION_93_4();
  sub_2683CE508();
  sub_2683CE8D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v208, v209, v210, v211);
  v212 = v276;
  v213 = v277;
  (*(v276 + 16))(v279, v207, v277);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v214, v215, v216, v213);
  v217 = v270;
  sub_2683CEA38();
  (*(v212 + 8))(v207, v213);
  v166 = v296;
  v218 = OUTLINED_FUNCTION_93_4();
  sub_26812D9E0(v218, v219, &qword_2683D21A0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v220, v221, v222, v269);
  sub_2683CADC0(v217, v166, &qword_28024D330, &qword_2683D21A0);
  v165 = v286;
  v164 = v287;
  v158 = v301;
  v157 = v302;
  v159 = v300;
LABEL_27:
  v223 = sub_2683CEA78();
  OUTLINED_FUNCTION_0_2(v165, v224, v225, v223);
  v226 = sub_2683CEA88();
  OUTLINED_FUNCTION_0_2(v158, v227, v228, v226);
  v229 = sub_2683CEAB8();
  OUTLINED_FUNCTION_0_2(v157, v230, v231, v229);
  v232 = sub_2683CEA58();
  OUTLINED_FUNCTION_0_2(v135, v233, v234, v232);
  v235 = sub_2683CEA28();
  OUTLINED_FUNCTION_0_2(v164, v236, v237, v235);
  sub_2683CEAC8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v238, v239, v240, v241);
  sub_2683CAD70(v166, v159, &qword_28024D330, &qword_2683D21A0);
  v242 = sub_2683CEC08();
  OUTLINED_FUNCTION_0_2(v289, v243, v244, v242);
  v245 = sub_2683CEB88();
  OUTLINED_FUNCTION_0_2(v290, v246, v247, v245);
  v248 = sub_2683CE708();
  OUTLINED_FUNCTION_0_2(v297, v249, v250, v248);
  v251 = sub_2683CE6D8();
  OUTLINED_FUNCTION_0_2(v298, v252, v253, v251);
  sub_2683CE7C8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v254, v255, v256, v257);
  v258 = v285;
  sub_2683CAD70(v285, v284, &qword_28024D338, &qword_2683D21A8);
  if (!v303)
  {
    v295 = sub_2683CDC68();
    v303 = v259;
  }

  sub_2683CEA68();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v260, v261, v262, v263);
  sub_2683CEBC8();
  sub_26812D9E0(v296, &qword_28024D330, &qword_2683D21A0);
  return sub_26812D9E0(v258, &qword_28024D338, &qword_2683D21A8);
}

BOOL sub_2683CA724()
{
  v2 = sub_2683CDC48();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_18();
  v63 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802548D0, &qword_2683FA678);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_1();
  v69 = v9;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v60[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802548D8, &unk_2683FA680);
  v14 = OUTLINED_FUNCTION_23(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_1();
  v62 = v15;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_56_3();
  v67 = v17;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_56_3();
  v68 = v19;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_20_39();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v60[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v60[-v25];
  v66 = v0;
  sub_2683CDC38();
  v27 = *MEMORY[0x277D5EFA0];
  v70 = v4;
  v64 = *(v4 + 104);
  v64(v24, v27, v2);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v2);
  v65 = v7;
  v31 = *(v7 + 48);
  sub_2683CAD70(v26, v12, &qword_2802548D8, &unk_2683FA680);
  sub_2683CAD70(v24, &v12[v31], &qword_2802548D8, &unk_2683FA680);
  OUTLINED_FUNCTION_2_6(v12);
  if (v35)
  {
    v32 = OUTLINED_FUNCTION_93_4();
    sub_26812D9E0(v32, v33, &unk_2683FA680);
    sub_26812D9E0(v26, &qword_2802548D8, &unk_2683FA680);
    OUTLINED_FUNCTION_2_6(&v12[v31]);
    if (v35)
    {
      v34 = v12;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2683CAD70(v12, v1, &qword_2802548D8, &unk_2683FA680);
    OUTLINED_FUNCTION_2_6(&v12[v31]);
    if (!v35)
    {
      v51 = v70;
      v52 = v63;
      (*(v70 + 32))(v63, &v12[v31], v2);
      sub_2683CAD18();
      v61 = sub_2683CFA58();
      v53 = *(v51 + 8);
      v53(v52, v2);
      sub_26812D9E0(v24, &qword_2802548D8, &unk_2683FA680);
      sub_26812D9E0(v26, &qword_2802548D8, &unk_2683FA680);
      v54 = OUTLINED_FUNCTION_7_37();
      (v53)(v54);
      sub_26812D9E0(v12, &qword_2802548D8, &unk_2683FA680);
      if (v61)
      {
        return 1;
      }

      goto LABEL_10;
    }

    v36 = OUTLINED_FUNCTION_93_4();
    sub_26812D9E0(v36, v37, &unk_2683FA680);
    sub_26812D9E0(v26, &qword_2802548D8, &unk_2683FA680);
    v38 = OUTLINED_FUNCTION_7_37();
    v39(v38);
  }

  sub_26812D9E0(v12, &qword_2802548D0, &qword_2683FA678);
LABEL_10:
  v40 = v68;
  sub_2683CDC38();
  v41 = v67;
  v64(v67, *MEMORY[0x277D5EFA8], v2);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v2);
  v45 = *(v65 + 48);
  v46 = v69;
  sub_2683CAD70(v40, v69, &qword_2802548D8, &unk_2683FA680);
  sub_2683CAD70(v41, v46 + v45, &qword_2802548D8, &unk_2683FA680);
  OUTLINED_FUNCTION_2_6(v46);
  if (!v35)
  {
    sub_2683CAD70(v46, v62, &qword_2802548D8, &unk_2683FA680);
    OUTLINED_FUNCTION_2_6(v46 + v45);
    if (!v47)
    {
      v55 = v70;
      v56 = v63;
      (*(v70 + 32))(v63, v46 + v45, v2);
      sub_2683CAD18();
      v57 = sub_2683CFA58();
      v58 = *(v55 + 8);
      v58(v56, v2);
      sub_26812D9E0(v41, &qword_2802548D8, &unk_2683FA680);
      sub_26812D9E0(v40, &qword_2802548D8, &unk_2683FA680);
      v59 = OUTLINED_FUNCTION_21_30();
      (v58)(v59);
      sub_26812D9E0(v46, &qword_2802548D8, &unk_2683FA680);
      return (v57 & 1) != 0;
    }

    OUTLINED_FUNCTION_9_12(v41);
    OUTLINED_FUNCTION_9_12(v40);
    v48 = OUTLINED_FUNCTION_21_30();
    v49(v48);
LABEL_19:
    sub_26812D9E0(v46, &qword_2802548D0, &qword_2683FA678);
    return 0;
  }

  OUTLINED_FUNCTION_9_12(v41);
  OUTLINED_FUNCTION_9_12(v40);
  OUTLINED_FUNCTION_2_6(v46 + v45);
  if (!v35)
  {
    goto LABEL_19;
  }

  v34 = v46;
LABEL_15:
  sub_26812D9E0(v34, &qword_2802548D8, &unk_2683FA680);
  return 1;
}

unint64_t sub_2683CAD18()
{
  result = qword_2802548E0;
  if (!qword_2802548E0)
  {
    sub_2683CDC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802548E0);
  }

  return result;
}

uint64_t sub_2683CAD70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2683CADC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_17_29(uint64_t a1)
{

  return sub_26812D9E0(a1, v1, v2);
}